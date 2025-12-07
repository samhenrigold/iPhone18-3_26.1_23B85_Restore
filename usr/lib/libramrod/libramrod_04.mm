uint64_t sub_451F4(const char *a1, uint64_t a2, CFStringRef *a3, _BYTE *a4)
{
  if (!strcmp(a1, "unit_test_baseline"))
  {
    if (a2 == 2)
    {
      result = 0;
      *a4 = 0;
    }

    else if (a2 == 1)
    {
      result = 0;
      *a4 = 1;
    }

    else
    {
      *a3 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"sample_test #%d: invalid test number", a2);
      return 2;
    }
  }

  else
  {
    *a3 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"sample_test #%d: invalid category: %s", a2, a1);
    return 1;
  }

  return result;
}

void *sub_452C8(size_t __size)
{
  __memptr = 0;
  if (posix_memalign(&__memptr, 0x10uLL, __size))
  {
    ramrod_log_msg("Failed to allocate aligned crypto buffer\n");
  }

  else
  {
    bzero(__memptr, __size);
  }

  return __memptr;
}

uint64_t unit_test_checkpoint(uint64_t a1, uint64_t a2, CFStringRef *a3, _BYTE *a4)
{
  if ((byte_1C6BE8 & 1) == 0)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : pre_fork_delay...\n", "unit_test_checkpoint");
    sleep(5u);
    ramrod_log_msg("\nUNIT TEST(%s) : ...pre_fork_delay\n", "unit_test_checkpoint");
    byte_1C6BE8 = 1;
  }

  if (!sub_45F1C(a2))
  {
    *a3 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"checkpoint test #%d: invalid", a2);
    v13 = 1;
    goto LABEL_125;
  }

  v51 = a4;
  byte_1C6C14 = 0;
  byte_1C6C15 = 0;
  byte_1C6C16 = 0;
  qword_1C6C18 = 0;
  dword_1C6BFC = 0;
  if (dword_1C6BF8 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  dword_1C6C20 = v7;
  v8 = &qword_1ADB20[9 * dword_1C6BEC];
  qword_1C6BF0 = *v8;
  sub_4601C();
  v9 = v8[1];
  if (v9 && *(v9 + 8))
  {
    byte_1C6C16 = 1;
  }

  qword_1C6C18 = v8[8];
  ramrod_log_msg("\nUNIT TEST(%s) : ------------------------------------------------------------------------------------------------------------------------\n", "unit_test_setup_config");
  ramrod_log_msg("\nUNIT TEST(%s) : #%d: %s\n", "unit_test_setup_config", a2, qword_1C6C08);
  ramrod_log_msg("\nUNIT TEST(%s) : ------------------------------------------------------------------------------------------------------------------------\n", "unit_test_setup_config");
  v10 = &qword_1ADB20[9 * dword_1C6BEC];
  qword_1C6BF0 = *v10;
  sub_4601C();
  sub_460CC();
  sub_461B4(0x19u, @"AAAAAAAA-1111-BBBB-2222-CCCCCCCCCCCC");
  v11 = dword_1C6BF8;
  if (dword_1C6BF8 >= 6)
  {
    sub_461B4(4u, @"true");
    v11 = dword_1C6BF8;
  }

  if (v11 != 1)
  {
    if (v11 == 3)
    {
      v12 = @"true";
      goto LABEL_19;
    }

    if (v11 != 2)
    {
      goto LABEL_20;
    }

    sub_461B4(2u, @"upgrade");
  }

  v12 = @"false";
LABEL_19:
  sub_461B4(1u, v12);
LABEL_20:
  v14 = *(v10 + 10);
  if (dword_1C6BFC < v14)
  {
    while (1)
    {
      if (byte_1C6C00 == 1)
      {
        sub_461B4(0x20u, @"true");
      }

      v15 = v10[2];
      if (v15 && (readwrite_ramdisk = v15(), readwrite_ramdisk) || (readwrite_ramdisk = ramrod_create_readwrite_ramdisk(), readwrite_ramdisk))
      {
        v13 = readwrite_ramdisk;
        goto LABEL_116;
      }

      v13 = (v10[3])(a3, v10[7]);
      if (!v13)
      {
        *&v84 = 0;
        LODWORD(cf[0]) = 0;
        if (dword_1C6C20 == 1)
        {
          v17 = "restore";
        }

        else
        {
          v17 = "ota";
        }

        asprintf(&v84, "%s/%s/%s_%s.%s", "/mnt5", "checkpoint", v17, "monitor", "txt");
        if (v84)
        {
          v18 = open(v84, 0);
          if (v18 == -1)
          {
            ramrod_log_msg("\nUNIT TEST(%s) : %s failed to open %s\n", "utest_verify_readwrite_ramdisk", qword_1C6C08, v84);
            LODWORD(cf[0]) = 65;
          }

          else
          {
            v19 = v18;
            sub_4E014(v84, v18, 1, cf);
            close(v19);
          }

          free(v84);
        }

        if ((byte_1C6C16 & 1) == 0)
        {
          if (dword_1C6C20 == 1)
          {
            v20 = "restore";
          }

          else
          {
            v20 = "ota";
          }

          v21 = "patch";
          if (dword_1C6BF8 == 1)
          {
            v21 = "perform";
          }

          asprintf(&v84, "%s/%s/%s_%s.%s", "/mnt5", "checkpoint", v20, v21, "txt");
          if (v84)
          {
            v22 = open(v84, 0);
            if (v22 == -1)
            {
              ramrod_log_msg("\nUNIT TEST(%s) : %s failed to open %s\n", "utest_verify_readwrite_ramdisk", qword_1C6C08, v84);
              LODWORD(cf[0]) = 65;
            }

            else
            {
              v23 = v22;
              sub_4E014(v84, v22, 0, cf);
              close(v23);
            }

            free(v84);
          }
        }

        v13 = LODWORD(cf[0]);
      }

      ramrod_unmount_filesystem("/mnt5");
      ramrod_eject_readwrite_ramdisk();
      if (v13)
      {
        goto LABEL_116;
      }

      cf[0] = 0;
      if (dword_1C6C20 == 1)
      {
        v25 = &off_1A9BC8;
      }

      else
      {
        v24 = @"checkpoint-nvram-unknown";
        if (dword_1C6C20 != 2)
        {
          goto LABEL_53;
        }

        v25 = &off_1A9CD0;
      }

      v24 = *(v25 + 3);
LABEL_53:
      v26 = ramrod_copy_NVRAM_variable(v24);
      if (v26)
      {
        v27 = v26;
        v28 = CFGetTypeID(v26);
        if (v28 == CFDataGetTypeID())
        {
          v29 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v27, 0x8000100u);
          if (v29)
          {
            v30 = v29;
            v114 = 0u;
            v115 = 0u;
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v108 = 0u;
            v109 = 0u;
            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            v96 = 0u;
            v97 = 0u;
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            v84 = 0u;
            v85 = 0u;
            CFStringGetCString(v29, &v84, 512, 0x8000100u);
            if (CFStringCompare(v30, @"success", 0) && CFStringCompare(v30, @"success_on_reboot_retry", 0) && CFStringCompare(v30, @"back_to_original_os", 0) && CFStringCompare(v30, @"back_to_original_os_on_reboot_retry", 0) && CFStringCompare(v30, @"fail_forward", 0) && CFStringCompare(v30, @"fail_forward_on_reboot_retry", 0) && CFStringCompare(v30, @"recovery_mode", 0))
            {
              v31 = CFStringCompare(v30, @"recovery_mode_on_reboot_retry", 0);
              v32 = v31 != kCFCompareEqualTo;
              if (v31)
              {
                ramrod_log_msg("\nUNIT TEST(%s) : %s outcome (%s) continuing\n");
                goto LABEL_70;
              }
            }

            else
            {
              v32 = 0;
            }

            ramrod_log_msg("\nUNIT TEST(%s) : %s outcome (%s) triggering end of test\n");
LABEL_70:
            CFRelease(v30);
LABEL_73:
            CFRelease(v27);
            goto LABEL_74;
          }

          ramrod_log_msg("\nUNIT TEST(%s) : %s checkpoint NVRAM [outcome] unable to create string from CFData\n");
        }

        else
        {
          ramrod_log_msg("\nUNIT TEST(%s) : %s checkpoint NVRAM [outcome] is not CFData type\n");
        }

        v32 = 1;
        goto LABEL_73;
      }

      v32 = 1;
LABEL_74:
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      if (v32)
      {
        v33 = dword_1C6BFC + 1;
        dword_1C6BFC = v33;
        if (v33 <= v14)
        {
          sub_4601C();
          ramrod_log_msg("\nUNIT TEST(%s) : %s >>> Just advanced the test phase [%s] <<<\n", "utest_update_test_phase", qword_1C6C08, "unit_test_checkpoint");
          v33 = dword_1C6BFC;
        }

        if (v33 < v14)
        {
          if ((dword_1C6BF8 - 6) > 2)
          {
            ramrod_log_msg("\nUNIT TEST(%s) : %s TEST ANOMALY: set reboot-retry control when not testing retry mode\n", "utest_set_retry_boot_control", qword_1C6C08);
          }

          else if (byte_1C6C74 == 1)
          {
            sub_461B4(2u, @"recover");
            sub_461B4(1u, @"true");
            byte_1C6C74 = 0;
          }

          else
          {
            sub_461B4(1u, @"false");
            byte_1C6C74 = 1;
          }
        }

        if (dword_1C6BFC < v14)
        {
          continue;
        }
      }

      break;
    }
  }

  v34 = v10[6];
  if (!v34)
  {
    v13 = 0;
LABEL_97:
    a4 = v51;
    goto LABEL_125;
  }

  v35 = *(v34 + 8 * dword_1C6BF8);
  a4 = v51;
  if (!v35)
  {
LABEL_100:
    v13 = 0;
    goto LABEL_125;
  }

  for (i = *v35; i != 3 && *(v35 + 1); i = v37)
  {
    v37 = v35[4];
    v35 += 4;
  }

  v38 = *(v35 + 1);
  if (!v38)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s NO EXPECTED FINAL OUTCOME\n", "unit_test_checkpoint", qword_1C6C08);
    goto LABEL_100;
  }

  if (dword_1C6C20 == 1)
  {
    v39 = &off_1A9BC8;
    goto LABEL_102;
  }

  if (dword_1C6C20 == 2)
  {
    v39 = &off_1A9CD0;
LABEL_102:
    v40 = *(v39 + 3);
    goto LABEL_104;
  }

  v40 = @"checkpoint-nvram-unknown";
LABEL_104:
  v41 = ramrod_copy_NVRAM_variable(v40);
  if (v41)
  {
    v42 = v41;
    v43 = CFGetTypeID(v41);
    if (v43 == CFDataGetTypeID())
    {
      v44 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v42, 0x8000100u);
      if (v44)
      {
        v45 = v44;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
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
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        *cf = 0u;
        v53 = 0u;
        CFStringGetCString(v38, &v84, 512, 0x8000100u);
        CFStringGetCString(v45, cf, 512, 0x8000100u);
        if (!strncmp(cf, &v84, 0x200uLL))
        {
          ramrod_log_msg("\nUNIT TEST(%s) : %s FINAL OUTCOME: %s\n", "nvram_check_final_outcome", qword_1C6C08, cf);
          v13 = 0;
        }

        else
        {
          ramrod_log_msg("\nUNIT TEST(%s) : %s FINAL OUTCOME: %s DOES NOT MATCH EXPECTED %s\n", "nvram_check_final_outcome", qword_1C6C08, cf, &v84);
          v13 = 70;
        }

        CFRelease(v45);
      }

      else
      {
        ramrod_log_msg("\nUNIT TEST(%s) : %s checkpoint NVRAM [outcome] unable to create string from CFData\n", "nvram_check_final_outcome", qword_1C6C08);
        v13 = 0;
      }
    }

    else
    {
      ramrod_log_msg("\nUNIT TEST(%s) : %s checkpoint NVRAM [outcome] is not CFData type\n", "nvram_check_final_outcome", qword_1C6C08);
      v13 = 70;
    }

    CFRelease(v42);
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    goto LABEL_97;
  }

LABEL_116:
  if (dword_1C6C20 == 1)
  {
    v46 = &off_1A9BC8;
  }

  else
  {
    if (dword_1C6C20 != 2)
    {
      v47 = @"checkpoint-nvram-unknown";
      a4 = v51;
      goto LABEL_122;
    }

    v46 = &off_1A9CD0;
  }

  a4 = v51;
  v47 = *v46;
LABEL_122:
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
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
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  *cf = 0u;
  v53 = 0u;
  CFStringGetCString(v47, &v84, 512, 0x8000100u);
  CFStringGetCString(@"BOOM", cf, 512, 0x8000100u);
  v48 = ramrod_set_NVRAM_variable_sync(v47, @"BOOM", 0, 1);
  v49 = "FAIL";
  if (v48)
  {
    v49 = "SUCCESS";
  }

  ramrod_log_msg("\nUNIT TEST(%s) : %s NVRAM set %s=%s (%s) [sync=true]\n", "nvram_set_test_fail", qword_1C6C08, &v84, cf, v49);
LABEL_125:
  if (sub_45F1C(a2 + 1))
  {
    *a4 = 1;
  }

  else
  {
    *a4 = 0;
    if (!v13)
    {
      sub_460CC();
      ramrod_sync_NVRAM(0);
    }
  }

  return v13;
}

uint64_t sub_45F1C(int a1)
{
  dword_1C6C10 = 0;
  dword_1C6BEC = 0;
  dword_1C6BF8 = 0;
  byte_1C6C00 = 0;
  if (a1 < 1)
  {
    return 0;
  }

  v1 = 0;
  v2 = 1;
  v3 = 1;
  v4 = a1;
  while (1)
  {
    if (!v3)
    {
      goto LABEL_26;
    }

    v5 = qword_1ADB20[9 * v3 + 1];
    v6 = *(v5 + 9) == 0;
    v7 = *(v5 + 9) != 0;
    if (v2 <= 4)
    {
      v6 = 0;
    }

    if (v2 != 3)
    {
      v7 = 0;
    }

    v8 = v7 || v6;
    if ((*v5 & (1 << v2)) == 0)
    {
      v8 = 1;
    }

    if (((v1 & 1) == 0 || *(v5 + 10)) && (v8 & 1) == 0)
    {
LABEL_26:
      if (!--v4)
      {
        break;
      }
    }

    if (v2 >= 8)
    {
      if (v3 < 20)
      {
        ++v3;
      }

      else
      {
        if (v1)
        {
          return 0;
        }

        v1 = 1;
        byte_1C6C00 = 1;
        v3 = 1;
      }

      v2 = 1;
    }

    else
    {
      ++v2;
    }

    if (v4 <= 0)
    {
      return 0;
    }
  }

  dword_1C6C10 = a1;
  dword_1C6BEC = v3;
  result = 1;
  dword_1C6BF8 = v2;
  return result;
}

uint64_t sub_4601C()
{
  if (qword_1C6C08)
  {
    free(qword_1C6C08);
    qword_1C6C08 = 0;
  }

  if (byte_1C6C00)
  {
    v0 = "-LATE-NVRAM";
  }

  else
  {
    v0 = "";
  }

  return asprintf(&qword_1C6C08, "{test #%d: %s%s(%s)[%s]}", dword_1C6C10, qword_1C6BF0, v0, off_1A9DD8[dword_1C6BF8], off_1A9E20[dword_1C6BFC]);
}

void sub_460CC()
{
  v0 = dword_1C6C20;
  ramrod_log_msg("\nUNIT TEST(%s) : %s clearing NVRAM from previous test\n", "nvram_clear", qword_1C6C08);
  for (i = 1; i != 33; ++i)
  {
    for (j = 1; j != 4; ++j)
    {
      dword_1C6C20 = j;
      if (i < 3)
      {
        continue;
      }

      cf = 0;
      if (j == 1)
      {
        v4 = &off_1A9BC8;
      }

      else
      {
        v3 = @"checkpoint-nvram-unknown";
        if (j != 2)
        {
          goto LABEL_9;
        }

        v4 = &off_1A9CD0;
      }

      v3 = v4[i];
LABEL_9:
      ramrod_delete_NVRAM_variable(v3, &cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  dword_1C6C20 = v0;
}

void sub_461B4(unsigned int a1, const __CFString *a2)
{
  if (dword_1C6C20 == 1)
  {
    v3 = &off_1A9BC8;
    goto LABEL_5;
  }

  if (dword_1C6C20 == 2)
  {
    v3 = &off_1A9CD0;
LABEL_5:
    v4 = v3[a1];
    goto LABEL_7;
  }

  v4 = @"checkpoint-nvram-unknown";
LABEL_7:
  v70 = 0u;
  v69 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  *buffer = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
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
  CFStringGetCString(v4, buffer, 512, 0x8000100u);
  CFStringGetCString(a2, v7, 512, 0x8000100u);
  v5 = ramrod_set_NVRAM_variable(v4, a2, 0);
  v6 = "FAIL";
  if (v5)
  {
    v6 = "SUCCESS";
  }

  ramrod_log_msg("\nUNIT TEST(%s) : %s NVRAM set %s=%s (%s)\n", "nvram_set", qword_1C6C08, buffer, v7, v6);
}

uint64_t sub_46374()
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = "var_char";
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 287454020;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  ramrod_log_msg("\nUNIT TEST(%s) : %s initializing engine A\n", "utest_engines_in_sequence", qword_1C6C08);
  v0 = checkpoint_engine_init(dword_1C6C20, 3, 1);
  if (!v0)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context A\n", "utest_engines_in_sequence", qword_1C6C08);
    v3 = 1;
LABEL_8:
    *(v18 + 6) = v3;
    goto LABEL_9;
  }

  checkpoint_engine_notice(3, 17, "A OK");
  checkpoint_engine_recorder_path("/mnt5");
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3254779904;
  v11[2] = sub_4AD68;
  v11[3] = &unk_1AE108;
  v11[4] = v23;
  v11[5] = &v17;
  v11[6] = v21;
  v11[7] = &v24;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3254779904;
  v10[2] = sub_4AF20;
  v10[3] = &unk_1AE108;
  v10[4] = v14;
  v10[5] = &v24;
  v10[6] = v23;
  v10[7] = v21;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3254779904;
  v9[2] = sub_4AFF0;
  v9[3] = &unk_1AE138;
  v9[4] = v23;
  v9[5] = &v17;
  v9[6] = v21;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3254779904;
  v8[2] = sub_4B16C;
  v8[3] = &unk_1AE108;
  v8[4] = v12;
  v8[5] = &v24;
  v8[6] = v23;
  v8[7] = v21;
  v6[5] = v21;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3254779904;
  v7[2] = sub_4B240;
  v7[3] = &unk_1AE138;
  v7[4] = v23;
  v7[5] = &v17;
  v7[6] = v21;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3254779904;
  v6[2] = sub_4B30C;
  v6[3] = &unk_1AD6E8;
  v6[4] = v23;
  bzero(&v28, 0x2A0uLL);
  v28 = 768;
  v29 = "sequence_step_1";
  v30 = v11;
  v31 = 1;
  v32 = 769;
  v33 = "sequence_step_2";
  v34 = v10;
  v35 = 1;
  v36 = 770;
  v37 = "sequence_step_3";
  v38 = v9;
  v39 = 1;
  v40 = 771;
  v41 = "sequence_step_4";
  v42 = v8;
  v43 = 1;
  v44 = 772;
  v45 = "sequence_step_5";
  v46 = v7;
  v47 = 1;
  v48 = 773;
  v49 = "sequence_step_6";
  v50 = v6;
  v51 = 1;
  ramrod_log_msg("\nUNIT TEST(%s) : %s sequence A\n", "utest_engines_in_sequence", qword_1C6C08);
  v25[3] = v0;
  checkpoint_engine_perform(v0, &v28, v18 + 6, &v16);
  checkpoint_engine_free(v0);
  if (*(v18 + 6))
  {
    goto LABEL_9;
  }

  ramrod_log_msg("\nUNIT TEST(%s) : %s initializing engine B\n", "utest_engines_in_sequence", qword_1C6C08);
  v1 = checkpoint_engine_init(dword_1C6C20, 3, 2);
  if (!v1)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context B\n", "utest_engines_in_sequence", qword_1C6C08);
    v3 = 8;
    goto LABEL_8;
  }

  v2 = checkpoint_engine_init(dword_1C6C20, 3, 3);
  if (v2)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence B\n", "utest_engines_in_sequence", qword_1C6C08);
    v25[3] = v1;
    checkpoint_engine_perform(v1, &v28, v18 + 6, &v16);
    if (!*(v18 + 6))
    {
      ramrod_log_msg("\nUNIT TEST(%s) : %s sequence C\n", "utest_engines_in_sequence", qword_1C6C08);
      v25[3] = v2;
      checkpoint_engine_perform(v2, &v28, v18 + 6, &v16);
    }
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context C\n", "utest_engines_in_sequence", qword_1C6C08);
    *(v18 + 6) = 9;
  }

  checkpoint_engine_free(v1);
  if (v2)
  {
    checkpoint_engine_free(v2);
  }

LABEL_9:
  v4 = *(v18 + 6);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v24, 8);
  return v4;
}

void sub_468E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_46984()
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12 = 0;
  v0 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  v22[3] = v0;
  if (!v0)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context\n", "utest_closure_api", qword_1C6C08);
    v3 = 1;
    goto LABEL_6;
  }

  checkpoint_engine_recorder_path("/mnt5");
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3254779904;
  v11[2] = sub_4B37C;
  v11[3] = &unk_1AE138;
  v11[4] = &v17;
  v11[5] = &v13;
  v11[6] = &v21;
  v9[4] = &v17;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3254779904;
  v10[2] = sub_4B420;
  v10[3] = &unk_1AE138;
  v10[4] = &v21;
  v10[5] = &v17;
  v10[6] = &v13;
  v8[6] = &v13;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3254779904;
  v9[2] = sub_4B4D0;
  v9[3] = &unk_1AD618;
  v7[5] = &v13;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3254779904;
  v8[2] = sub_4B528;
  v8[3] = &unk_1AE138;
  v8[4] = &v21;
  v8[5] = &v17;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3254779904;
  v7[2] = sub_4B61C;
  v7[3] = &unk_1AD6E8;
  v7[4] = &v17;
  bzero(&v25, 0x240uLL);
  v25 = 774;
  v26 = "closure_step_1";
  v27 = v11;
  v28 = 1;
  v29 = 775;
  v30 = "closure_step_2";
  v31 = v10;
  v32 = 1;
  v33 = 776;
  v34 = "closure_step_3";
  v35 = v9;
  v36 = 1;
  v37 = 790;
  v38 = "closure_step_4";
  v39 = v8;
  v40 = 1;
  v41 = 791;
  v42 = "closure_step_5";
  v43 = v7;
  v44 = 1;
  checkpoint_engine_perform(v22[3], &v25, v14 + 6, &v12);
  checkpoint_engine_free(v22[3]);
  v22[3] = 0;
  v1 = v14;
  if (!v14[6])
  {
    v2 = *(v18 + 6);
    if (v2 != 4)
    {
      ramrod_log_msg("\nUNIT TEST(%s) : %s last_step(%d) != 4\n", "utest_closure_api", qword_1C6C08, v2);
      v3 = 6;
LABEL_6:
      v1 = v14;
      v14[6] = v3;
    }
  }

  v4 = v22[3];
  if (v4)
  {
    checkpoint_engine_free(v4);
    v1 = v14;
  }

  v5 = v1[6];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v5;
}

void sub_46D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, ...)
{
  va_start(va, a53);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_46D4C()
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10 = 0;
  v0 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  v24[3] = v0;
  if (v0)
  {
    checkpoint_engine_recorder_path("/mnt5");
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3254779904;
    v9[2] = sub_4B680;
    v9[3] = &unk_1AD6E8;
    v9[4] = &v23;
    v9[5] = &v19;
    v7[5] = &v19;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3254779904;
    v8[2] = sub_4B71C;
    v8[3] = &unk_1AD618;
    v8[4] = &v19;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3254779904;
    v7[2] = sub_4B774;
    v7[3] = &unk_1AD6E8;
    v7[4] = &v23;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3254779904;
    v6[2] = sub_4B820;
    v6[3] = &unk_1AE138;
    v6[4] = &v19;
    v6[5] = &v11;
    v6[6] = &v15;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3254779904;
    v5[2] = sub_4B8C0;
    v5[3] = &unk_1AD618;
    v5[4] = &v19;
    bzero(&v27, 0x240uLL);
    v27 = 774;
    v28 = "closure_step_1";
    v29 = v9;
    v30 = 1;
    v31 = 775;
    v32 = "closure_step_2";
    v33 = v8;
    v34 = 1;
    v35 = 776;
    v36 = "closure_step_3";
    v37 = v7;
    v38 = 1;
    v39 = 790;
    v40 = "closure_step_4";
    v41 = v6;
    v42 = 1;
    v43 = 791;
    v44 = "closure_step_5";
    v45 = v5;
    v46 = 1;
    checkpoint_engine_perform(v24[3], &v27, v12 + 6, &v10);
    checkpoint_engine_free(v24[3]);
    v24[3] = 0;
    if (v12[6])
    {
      v1 = *(v16 + 6);
      if (*(v20 + 6) == v1)
      {
        v12[6] = 41;
      }

      else
      {
        ramrod_log_msg("\nUNIT TEST(%s) : %s last_step(%d) != expected_last_step(%d)\n", "utest_checkpoint_fail", qword_1C6C08, *(v20 + 6), v1);
        v12[6] = 0;
      }
    }
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context\n", "utest_checkpoint_fail", qword_1C6C08);
  }

  v2 = v24[3];
  if (v2)
  {
    checkpoint_engine_free(v2);
  }

  v3 = v12[6];
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  return v3;
}

void sub_47108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, ...)
{
  va_start(va, a55);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_47144()
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 7;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v0 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  v30[3] = v0;
  if (v0)
  {
    checkpoint_engine_recorder_path("/mnt5");
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3254779904;
    v12[2] = sub_4B918;
    v12[3] = &unk_1AD618;
    v12[4] = &v25;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3254779904;
    v11[2] = sub_4B970;
    v11[3] = &unk_1AD618;
    v11[4] = &v25;
    v9[5] = &v25;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3254779904;
    v10[2] = sub_4B9C8;
    v10[3] = &unk_1AD6E8;
    v10[4] = &v25;
    v10[5] = &v29;
    v8[4] = &v25;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3254779904;
    v9[2] = sub_4BA3C;
    v9[3] = &unk_1AD6E8;
    v9[4] = &v29;
    v7[5] = &v25;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3254779904;
    v8[2] = sub_4BADC;
    v8[3] = &unk_1AD618;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3254779904;
    v7[2] = sub_4BB34;
    v7[3] = &unk_1AD6E8;
    v7[4] = &v29;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3254779904;
    v6[2] = sub_4BBF0;
    v6[3] = &unk_1AE108;
    v6[4] = &v25;
    v6[5] = &v13;
    v6[6] = &v17;
    v6[7] = &v21;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3254779904;
    v5[2] = sub_4BD70;
    v5[3] = &unk_1AD618;
    v5[4] = &v25;
    bzero(&v33, 0x360uLL);
    v33 = 768;
    v34 = "sequence_step_1";
    v35 = v12;
    v36 = 1;
    v37 = 769;
    v38 = "sequence_step_2";
    v39 = v11;
    v40 = 1;
    v41 = 770;
    v42 = "sequence_step_3";
    v43 = v10;
    v44 = 1;
    v45 = 771;
    v46 = "sequence_step_4";
    v47 = v9;
    v48 = 1;
    v49 = 772;
    v50 = "sequence_step_5";
    v51 = v8;
    v52 = 1;
    v53 = 773;
    v54 = "sequence_step_6";
    v55 = v7;
    v56 = 1;
    v57 = 788;
    v58 = "sequence_step_7";
    v59 = v6;
    v60 = 1;
    v61 = 789;
    v62 = "sequence_step_8";
    v63 = v5;
    v64 = 1;
    checkpoint_engine_perform(v30[3], &v33, v18 + 6, v14 + 3);
    checkpoint_engine_free(v30[3]);
    v30[3] = 0;
    if (v18[6])
    {
      v1 = *(v22 + 6);
      if (*(v26 + 6) == v1)
      {
        v18[6] = 41;
      }

      else
      {
        ramrod_log_msg("\nUNIT TEST(%s) : %s last_step(%d) != expected_last_step(%d)\n", "utest_checkpoint_fail_error", qword_1C6C08, *(v26 + 6), v1);
        v18[6] = 0;
      }
    }
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context\n", "utest_checkpoint_fail_error", qword_1C6C08);
  }

  v2 = v30[3];
  if (v2)
  {
    checkpoint_engine_free(v2);
  }

  v3 = v18[6];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  return v3;
}

void sub_47630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_47678()
{
  v0 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  if (v0)
  {
    v1 = v0;
    v12 = 0u;
    v13 = 0u;
    *v10 = 0u;
    v11 = 0u;
    memset(v9, 0, sizeof(v9));
    checkpoint_engine_recorder_path("/mnt5");
    dword_1C6C70 = 0;
    v2 = v10;
    v3 = v9;
    v4 = -8;
    v5 = v9;
    do
    {
      *v5++ = v4 + 9;
      pthread_create(v2++, 0, sub_4BDC8, v3);
      v3 = v5;
    }

    while (!__CFADD__(v4++, 1));
    for (i = 0; i != 8; ++i)
    {
      pthread_join(v10[i], 0);
    }

    checkpoint_engine_free(v1);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create outer engine context\n", "utest_concurrent_engines", qword_1C6C08);
    dword_1C6C70 = 1;
  }

  return dword_1C6C70;
}

uint64_t sub_477B4()
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7 = 0;
  v0 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  if (!v0)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create outer engine\n", "utest_nested_engines", qword_1C6C08);
    v1 = 1;
    goto LABEL_7;
  }

  checkpoint_engine_recorder_path("/mnt5");
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3254779904;
  v6[2] = sub_4C678;
  v6[3] = &unk_1AD6E8;
  v6[4] = &v12;
  v6[5] = &v8;
  v4[5] = &v8;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3254779904;
  v5[2] = sub_4C6E8;
  v5[3] = &unk_1AD6E8;
  v5[4] = &v12;
  v5[5] = &v8;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3254779904;
  v4[2] = sub_4C75C;
  v4[3] = &unk_1AD6E8;
  v4[4] = &v12;
  v16[1] = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 775;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 776;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v16[0] = 774;
  v17 = "outer_step_1";
  *&v18 = v6;
  BYTE8(v18) = 1;
  v24 = "outer_step_2";
  *&v25 = v5;
  BYTE8(v25) = 1;
  v31 = "outer_step_3";
  *&v32 = v4;
  BYTE8(v32) = 1;
  checkpoint_engine_perform(v0, v16, v9 + 6, &v7);
  checkpoint_engine_free(v0);
  v1 = v9[6];
  if (!v1)
  {
    v2 = *(v13 + 6);
    if (v2 == 3)
    {
      v1 = 0;
      goto LABEL_8;
    }

    ramrod_log_msg("\nUNIT TEST(%s) : %s (outer) last_step(%d) != 3\n", "utest_nested_engines", qword_1C6C08, v2);
    v1 = 5;
LABEL_7:
    v9[6] = v1;
  }

LABEL_8:
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v1;
}

void sub_47A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_47A88()
{
  ramrod_log_msg("\nUNIT TEST(%s) : ++++++++++\n%s not running any engine; so expecting:\nCHECKPOINT_INTERNAL_ERROR(checkpoint_engine_finished_result): checkpoint chassis not initialized\n++++++++++\n\n", "utest_no_engine", qword_1C6C08);
  ramrod_log_msg("\nUNIT TEST(%s) : ++++++++++\n%s not running any engine; so expecting:\nCHECKPOINT ANOMALY: outcome=initial_monitor_no_return(pre_existing_set_by_monitor)\n++++++++++\n\n", "utest_no_engine", qword_1C6C08);
  return 193;
}

uint64_t sub_47AF4()
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7 = 0;
  v6 = 0;
  v0 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  v9[3] = v0;
  if (v0)
  {
    checkpoint_engine_recorder_path("/mnt5");
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3254779904;
    v5[2] = sub_4CBC4;
    v5[3] = &unk_1AD618;
    v5[4] = &v8;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3254779904;
    v4[2] = sub_4CCD8;
    v4[3] = &unk_1AD618;
    v4[4] = &v8;
    v12[3] = 1;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v12[0] = 774;
    v12[1] = "closure_step_1";
    v12[2] = v5;
    v17 = 775;
    v18 = "closure_step_2";
    v19 = &stru_1AE168;
    v20 = 1;
    v25 = 776;
    v26 = "closure_step_3";
    v27 = v4;
    v28 = 1;
    checkpoint_engine_perform(v9[3], v12, &v7, &v6);
    checkpoint_engine_free(v9[3]);
    v9[3] = 0;
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context\n", "utest_closure_shutdown", qword_1C6C08);
    v7 = 1;
    v1 = v9[3];
    if (v1)
    {
      checkpoint_engine_free(v1);
    }
  }

  v2 = v7;
  _Block_object_dispose(&v8, 8);
  return v2;
}

void sub_47D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_47D30()
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11 = 0;
  v0 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  v21[3] = v0;
  if (!v0)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context\n", "utest_immed_retry", qword_1C6C08);
    v3 = 1;
    goto LABEL_6;
  }

  checkpoint_engine_recorder_path("/mnt5");
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3254779904;
  v10[2] = sub_4CD8C;
  v10[3] = &unk_1AD6E8;
  v10[4] = &v20;
  v10[5] = &v16;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3254779904;
  v9[2] = sub_4CE64;
  v9[3] = &unk_1AD618;
  v9[4] = &v20;
  v7[4] = &v16;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3254779904;
  v8[2] = sub_4CF0C;
  v8[3] = &unk_1AD6E8;
  v8[4] = &v16;
  v8[5] = &v12;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3254779904;
  v7[2] = sub_4CF88;
  v7[3] = &unk_1AD618;
  bzero(&v24, 0x240uLL);
  v24 = 774;
  v25 = "closure_step_1";
  v26 = v10;
  v28 = 775;
  v27 = 1;
  v29 = "closure_step_2";
  v30 = &stru_1AE188;
  v31 = 1;
  v32 = 776;
  v33 = "closure_step_3";
  v34 = v9;
  v35 = 1;
  v36 = 790;
  v37 = "closure_step_4";
  v38 = v8;
  v39 = 1;
  v40 = 5;
  v41 = 791;
  v42 = "closure_step_5";
  v43 = v7;
  v44 = 1;
  checkpoint_engine_perform(v21[3], &v24, v13 + 6, &v11);
  checkpoint_engine_free(v21[3]);
  v21[3] = 0;
  v1 = v13;
  if (!v13[6])
  {
    v2 = *(v17 + 6);
    if (v2 != 5)
    {
      ramrod_log_msg("\nUNIT TEST(%s) : %s last_step(%d) != 5\n", "utest_immed_retry", qword_1C6C08, v2);
      v3 = 2;
LABEL_6:
      v1 = v13;
      v13[6] = v3;
    }
  }

  v4 = v21[3];
  if (v4)
  {
    checkpoint_engine_free(v4);
    v1 = v13;
  }

  v5 = v1[6];
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  return v5;
}

void sub_48080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_480B0()
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11 = 0;
  ramrod_log_msg("\nUNIT TEST(%s) : ++++++++++\n%s trying more times than supported; so expecting:\nCHECKPOINT_INTERNAL_ERROR(checkpoint_nvram_store_lost): {checkpoint_nvram_store_by_id_try_int} tracking information lost on store [dest_store == NULL]\n++++++++++\n\n", "utest_excessive_retries", qword_1C6C08);
  v0 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  v23[3] = v0;
  if (!v0)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context\n", "utest_excessive_retries", qword_1C6C08);
    v3 = 1;
    goto LABEL_6;
  }

  checkpoint_engine_recorder_path("/mnt5");
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3254779904;
  v10[2] = sub_4CFE0;
  v10[3] = &unk_1AD6E8;
  v10[4] = &v22;
  v10[5] = &v18;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3254779904;
  v9[2] = sub_4D0B8;
  v9[3] = &unk_1AD618;
  v9[4] = &v22;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3254779904;
  v8[2] = sub_4D160;
  v8[3] = &unk_1AE108;
  v8[4] = &v18;
  v8[5] = v16;
  v8[6] = &v22;
  v8[7] = &v12;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3254779904;
  v7[2] = sub_4D224;
  v7[3] = &unk_1AD618;
  v7[4] = &v18;
  bzero(&v26, 0x240uLL);
  v26 = 774;
  v27 = "closure_step_1";
  v28 = v10;
  v30 = 775;
  v29 = 1;
  v31 = "closure_step_2";
  v32 = &stru_1AE1A8;
  v33 = 1;
  v34 = 776;
  v35 = "closure_step_3";
  v36 = v9;
  v37 = 1;
  v38 = 790;
  v39 = "closure_step_4";
  v40 = v8;
  v41 = 1;
  v42 = 10;
  v43 = 791;
  v44 = "closure_step_5";
  v45 = v7;
  v46 = 1;
  checkpoint_engine_perform(v23[3], &v26, v13 + 6, &v11);
  checkpoint_engine_free(v23[3]);
  v23[3] = 0;
  v1 = v13;
  if (!v13[6])
  {
    v2 = *(v19 + 6);
    if (v2 != 5)
    {
      ramrod_log_msg("\nUNIT TEST(%s) : %s last_step(%d) != 5\n", "utest_excessive_retries", qword_1C6C08, v2);
      v3 = 2;
LABEL_6:
      v1 = v13;
      v13[6] = v3;
    }
  }

  v4 = v23[3];
  if (v4)
  {
    checkpoint_engine_free(v4);
    v1 = v13;
  }

  v5 = v1[6];
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v5;
}

void sub_48440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_4847C()
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 1;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15 = 0;
  ramrod_log_msg("\nUNIT TEST(%s) : ++++++++++\n%s trying more times than supported; so expecting:\nCHECKPOINT_INTERNAL_ERROR(checkpoint_nvram_store_lost): {checkpoint_nvram_store_by_id_try_int} tracking information lost on store [dest_store == NULL]\n++++++++++\n\n", "utest_many_retry_steps", qword_1C6C08);
  v0 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  v25[3] = v0;
  if (v0)
  {
    checkpoint_engine_recorder_path("/mnt5");
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3254779904;
    v14[2] = sub_4D27C;
    v14[3] = &unk_1AE108;
    v14[4] = v20;
    v14[5] = &v24;
    v14[6] = v22;
    v14[7] = &v16;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3254779904;
    v13[2] = sub_4D368;
    v13[3] = &unk_1AE138;
    v13[4] = v20;
    v13[5] = v22;
    v13[6] = &v16;
    v11[6] = &v16;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3254779904;
    v12[2] = sub_4D3B8;
    v12[3] = &unk_1AD618;
    v12[4] = &v24;
    v10[6] = &v16;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3254779904;
    v11[2] = sub_4D460;
    v11[3] = &unk_1AE138;
    v11[4] = v20;
    v11[5] = v22;
    v9[6] = &v16;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3254779904;
    v10[2] = sub_4D4B0;
    v10[3] = &unk_1AE138;
    v10[4] = v20;
    v10[5] = v22;
    v8[6] = &v16;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3254779904;
    v9[2] = sub_4D500;
    v9[3] = &unk_1AE138;
    v9[4] = v20;
    v9[5] = v22;
    v7[6] = &v16;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3254779904;
    v8[2] = sub_4D550;
    v8[3] = &unk_1AE138;
    v8[4] = v20;
    v8[5] = v22;
    v6[6] = &v16;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3254779904;
    v7[2] = sub_4D5A0;
    v7[3] = &unk_1AE138;
    v7[4] = v20;
    v7[5] = v22;
    v5[6] = &v16;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3254779904;
    v6[2] = sub_4D5F0;
    v6[3] = &unk_1AE138;
    v6[4] = v20;
    v6[5] = v22;
    v4[6] = &v16;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3254779904;
    v5[2] = sub_4D640;
    v5[3] = &unk_1AE138;
    v5[4] = v20;
    v5[5] = v22;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3254779904;
    v4[2] = sub_4D690;
    v4[3] = &unk_1AE138;
    v4[4] = v20;
    v4[5] = v22;
    bzero(&v28, 0x480uLL);
    v28 = 774;
    v29 = "closure_step_1";
    v30 = v14;
    v32 = 1;
    v33 = 775;
    v31 = 1;
    v34 = "closure_step_2";
    v35 = v13;
    v36 = 1;
    v37 = 2;
    v38 = 776;
    v39 = "closure_step_3";
    v40 = v12;
    v41 = 1;
    v42 = 3;
    v43 = 790;
    v44 = "closure_step_4";
    v45 = v11;
    v46 = 1;
    v47 = 4;
    v48 = 791;
    v49 = "closure_step_5";
    v50 = v10;
    v51 = 1;
    v52 = 5;
    v53 = 768;
    v54 = "sequence_step_1";
    v55 = v9;
    v56 = 1;
    v57 = 6;
    v58 = 769;
    v59 = "sequence_step_2";
    v60 = v8;
    v61 = 1;
    v62 = 7;
    v63 = 770;
    v64 = "sequence_step_3";
    v65 = v7;
    v66 = 1;
    v67 = 8;
    v68 = 771;
    v69 = "sequence_step_4";
    v70 = v6;
    v71 = 1;
    v72 = 9;
    v73 = 772;
    v74 = "sequence_step_5";
    v75 = v5;
    v76 = 1;
    v77 = 10;
    v78 = 773;
    v79 = "sequence_step_6";
    v80 = v4;
    v81 = 1;
    v82 = 11;
    checkpoint_engine_perform(v25[3], &v28, v17 + 6, &v15);
    checkpoint_engine_free(v25[3]);
    v25[3] = 0;
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context\n", "utest_many_retry_steps", qword_1C6C08);
    v17[6] = 1;
    v1 = v25[3];
    if (v1)
    {
      checkpoint_engine_free(v1);
    }
  }

  v2 = v17[6];
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v24, 8);
  return v2;
}

void sub_48A88(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_48AC4()
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 4;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10 = 0;
  v0 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  v26[3] = v0;
  if (v0)
  {
    checkpoint_engine_recorder_path("/mnt5");
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3254779904;
    v9[2] = sub_4D6E0;
    v9[3] = &unk_1AD6E8;
    v9[4] = &v25;
    v9[5] = &v21;
    v7[5] = &v21;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3254779904;
    v8[2] = sub_4D774;
    v8[3] = &unk_1AD618;
    v8[4] = &v21;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3254779904;
    v7[2] = sub_4D7CC;
    v7[3] = &unk_1AD6E8;
    v7[4] = &v25;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3254779904;
    v6[2] = sub_4D87C;
    v6[3] = &unk_1AE108;
    v6[4] = &v21;
    v6[5] = v15;
    v6[6] = &v11;
    v6[7] = &v17;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3254779904;
    v5[2] = sub_4D940;
    v5[3] = &unk_1AD618;
    v5[4] = &v21;
    bzero(&v29, 0x240uLL);
    v29 = 774;
    v30 = "closure_step_1";
    v31 = v9;
    v33 = 775;
    v32 = 1;
    v34 = "closure_step_2";
    v35 = v8;
    v36 = 1;
    v37 = 776;
    v38 = "closure_step_3";
    v39 = v7;
    v40 = 1;
    v41 = 790;
    v42 = "closure_step_4";
    v43 = v6;
    v44 = 1;
    v45 = 5;
    v46 = 791;
    v47 = "closure_step_5";
    v48 = v5;
    v49 = 1;
    checkpoint_engine_perform(v26[3], &v29, v12 + 6, &v10);
    checkpoint_engine_free(v26[3]);
    v26[3] = 0;
    if (v12[6])
    {
      v1 = *(v18 + 6);
      if (*(v22 + 6) == v1)
      {
        v12[6] = 41;
      }

      else
      {
        ramrod_log_msg("\nUNIT TEST(%s) : %s last_step(%d) != expected_last_step(%d)\n", "utest_immed_no_use", qword_1C6C08, *(v22 + 6), v1);
        v12[6] = 0;
      }
    }
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context\n", "utest_immed_no_use", qword_1C6C08);
  }

  v2 = v26[3];
  if (v2)
  {
    checkpoint_engine_free(v2);
  }

  v3 = v12[6];
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  return v3;
}

void sub_48EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, ...)
{
  va_start(va, a59);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_48F18()
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12 = 0;
  v11 = 0;
  if (dword_1C6BFC)
  {
    v0 = dword_1C6BF8 <= 7;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  v2 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  v18[3] = v2;
  if (!v2)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context\n", "utest_sim_failure", qword_1C6C08);
    goto LABEL_12;
  }

  checkpoint_engine_recorder_path("/mnt5");
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3254779904;
  v10[2] = sub_4DA18;
  v10[3] = &unk_1AD618;
  v10[4] = &v17;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3254779904;
  v9[2] = sub_4DA64;
  v9[3] = &unk_1AD618;
  v9[4] = &v17;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3254779904;
  v8[2] = sub_4DB3C;
  v8[3] = &unk_1AD6E8;
  v8[4] = &v17;
  v8[5] = &v13;
  v6[4] = &v13;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3254779904;
  v7[2] = sub_4DBEC;
  v7[3] = &unk_1AD618;
  v7[4] = &v13;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3254779904;
  v6[2] = sub_4DC44;
  v6[3] = &unk_1AD618;
  bzero(&v21, 0x2A0uLL);
  v21 = 768;
  v22 = "seqence_step_1";
  v23 = v10;
  v25 = 769;
  v24 = 1;
  v26 = "seqence_step_2";
  v27 = v9;
  v28 = 1;
  v29 = 770;
  v30 = "seqence_step_3";
  v31 = &stru_1AE1C8;
  v32 = 1;
  v33 = 774;
  v34 = "closure_step_1";
  v35 = v8;
  v36 = 1;
  v37 = 775;
  v38 = "closure_step_2";
  v39 = v7;
  v40 = 1;
  v41 = 776;
  v42 = "closure_step_3";
  v43 = v6;
  v44 = 1;
  checkpoint_engine_perform(v18[3], &v21, &v12, &v11);
  checkpoint_engine_free(v18[3]);
  v18[3] = 0;
  if (!v12)
  {
LABEL_12:
    v3 = 0;
    goto LABEL_14;
  }

  if (*(v14 + 6) == v1)
  {
    v3 = 41;
    v12 = 41;
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s last_step(%d) != expected_last_step(%d)\n", "utest_sim_failure", qword_1C6C08, *(v14 + 6), v1);
    v3 = 0;
    v12 = 0;
  }

LABEL_14:
  v4 = v18[3];
  if (v4)
  {
    checkpoint_engine_free(v4);
    v3 = v12;
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return v3;
}

void sub_492BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, ...)
{
  va_start(va, a45);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_493BC()
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v11 = 0;
  if (dword_1C6BFC)
  {
    v0 = dword_1C6BF8 <= 7;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  v2 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  v23[3] = v2;
  if (v2)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : ++++++++++\n%s trying more times than supported; so expecting:\nCHECKPOINT_INTERNAL_ERROR(checkpoint_nvram_store_lost): {checkpoint_nvram_store_by_id_try_int} tracking information lost on store [dest_store == NULL]\n++++++++++\n\n", "utest_sim_failure_exercise", qword_1C6C08);
    checkpoint_engine_recorder_path("/mnt5");
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3254779904;
    v10[2] = sub_4DC9C;
    v10[3] = &unk_1AD618;
    v10[4] = &v22;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3254779904;
    v9[2] = sub_4DD00;
    v9[3] = &unk_1AD618;
    v9[4] = &v22;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3254779904;
    v8[2] = sub_4DDD8;
    v8[3] = &unk_1AD6E8;
    v8[4] = &v22;
    v8[5] = &v18;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3254779904;
    v7[2] = sub_4DE88;
    v7[3] = &unk_1AE138;
    v7[4] = v12;
    v7[5] = &v14;
    v7[6] = &v18;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3254779904;
    v6[2] = sub_4DF4C;
    v6[3] = &unk_1AD618;
    v6[4] = &v18;
    bzero(&v26, 0x2A0uLL);
    v26 = 768;
    v27 = "seqence_step_1";
    v28 = v10;
    v29 = 1;
    v30 = 769;
    v31 = "seqence_step_2";
    v32 = v9;
    v33 = 1;
    v34 = 770;
    v35 = "seqence_step_3";
    v36 = &stru_1AE1E8;
    v37 = 1;
    v38 = 774;
    v39 = "closure_step_1";
    v40 = v8;
    v41 = 1;
    v42 = 775;
    v43 = "closure_step_2";
    v44 = v7;
    v45 = 1;
    v46 = 776;
    v47 = "closure_step_3";
    v48 = v6;
    v49 = 1;
    checkpoint_engine_perform(v23[3], &v26, v15 + 6, &v11);
    checkpoint_engine_free(v23[3]);
    v23[3] = 0;
    if (v15[6])
    {
      if (*(v19 + 6) == v1)
      {
        v15[6] = 41;
      }

      else
      {
        ramrod_log_msg("\nUNIT TEST(%s) : %s last_step(%d) != expected_last_step(%d)\n", "utest_sim_failure_exercise", qword_1C6C08, *(v19 + 6), v1);
        v15[6] = 0;
      }
    }
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context\n", "utest_sim_failure_exercise", qword_1C6C08);
  }

  v3 = v23[3];
  if (v3)
  {
    checkpoint_engine_free(v3);
  }

  v4 = v15[6];
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v4;
}

void sub_497C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, ...)
{
  va_start(va, a53);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_49804()
{
  off_1AD4D0();
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9 = 0;
  v8 = 0;
  v0 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  v15[3] = v0;
  if (v0)
  {
    checkpoint_engine_recorder_path("/mnt5");
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3254779904;
    v6[2] = sub_4DF60;
    v6[3] = &unk_1AE208;
    v7 = 0;
    v6[4] = &v10;
    v6[5] = &v14;
    bzero(&v18, 0x3060uLL);
    v1 = 0;
    v181 = 1;
    v185 = 1;
    v189 = 1;
    v18 = 777;
    v19 = "closure_step_512";
    v20 = v6;
    v21 = 1;
    v22 = 777;
    v23 = "closure_step_512";
    v24 = v6;
    v25 = 1;
    v26 = 777;
    v27 = "closure_step_512";
    v28 = v6;
    v29 = 1;
    v30 = 777;
    v31 = "closure_step_512";
    v32 = v6;
    v33 = 1;
    v34 = 777;
    v35 = "closure_step_512";
    v36 = v6;
    v37 = 1;
    v38 = 777;
    v39 = "closure_step_512";
    v40 = v6;
    v41 = 1;
    v42 = 777;
    v43 = "closure_step_512";
    v44 = v6;
    v45 = 1;
    v46 = 777;
    v47 = "closure_step_512";
    v48 = v6;
    v49 = 1;
    v50 = 777;
    v51 = "closure_step_512";
    v52 = v6;
    v53 = 1;
    v54 = 777;
    v55 = "closure_step_512";
    v56 = v6;
    v57 = 1;
    v58 = 777;
    v59 = "closure_step_512";
    v60 = v6;
    v61 = 1;
    v62 = 777;
    v63 = "closure_step_512";
    v64 = v6;
    v65 = 1;
    v66 = 777;
    v67 = "closure_step_512";
    v68 = v6;
    v69 = 1;
    v70 = 777;
    v71 = "closure_step_512";
    v72 = v6;
    v73 = 1;
    v74 = 777;
    v75 = "closure_step_512";
    v76 = v6;
    v77 = 1;
    v78 = 777;
    v79 = "closure_step_512";
    v80 = v6;
    v81 = 1;
    v82 = 777;
    v83 = "closure_step_512";
    v84 = v6;
    v85 = 1;
    v86 = 777;
    v87 = "closure_step_512";
    v88 = v6;
    v89 = 1;
    v90 = 777;
    v91 = "closure_step_512";
    v92 = v6;
    v93 = 1;
    v94 = 777;
    v95 = "closure_step_512";
    v96 = v6;
    v97 = 1;
    v98 = 777;
    v99 = "closure_step_512";
    v100 = v6;
    v101 = 1;
    v102 = 777;
    v103 = "closure_step_512";
    v104 = v6;
    v105 = 1;
    v106 = 777;
    v107 = "closure_step_512";
    v108 = v6;
    v109 = 1;
    v110 = 777;
    v111 = "closure_step_512";
    v112 = v6;
    v113 = 1;
    v114 = 777;
    v115 = "closure_step_512";
    v116 = v6;
    v117 = 1;
    v118 = 777;
    v119 = "closure_step_512";
    v120 = v6;
    v121 = 1;
    v122 = 777;
    v123 = "closure_step_512";
    v124 = v6;
    v125 = 1;
    v126 = 777;
    v127 = "closure_step_512";
    v128 = v6;
    v129 = 1;
    v130 = 777;
    v131 = "closure_step_512";
    v132 = v6;
    v133 = 1;
    v134 = 777;
    v135 = "closure_step_512";
    v136 = v6;
    v137 = 1;
    v138 = 777;
    v139 = "closure_step_512";
    v140 = v6;
    v141 = 1;
    v142 = 777;
    v143 = "closure_step_512";
    v144 = v6;
    v145 = 1;
    v146 = 777;
    v147 = "closure_step_512";
    v148 = v6;
    v149 = 1;
    v150 = 777;
    v151 = "closure_step_512";
    v152 = v6;
    v153 = 1;
    v154 = 777;
    v155 = "closure_step_512";
    v156 = v6;
    v157 = 1;
    v158 = 777;
    v159 = "closure_step_512";
    v160 = v6;
    v161 = 1;
    v162 = 777;
    v163 = "closure_step_512";
    v164 = v6;
    v165 = 1;
    v166 = 777;
    v167 = "closure_step_512";
    v168 = v6;
    v169 = 1;
    v170 = 777;
    v171 = "closure_step_512";
    v172 = v6;
    v173 = 1;
    v174 = 777;
    v175 = "closure_step_512";
    v176 = v6;
    v177 = 1;
    v178 = 777;
    v179 = "closure_step_512";
    v180 = v6;
    v182 = 777;
    v183 = "closure_step_512";
    v184 = v6;
    v186 = 777;
    v187 = "closure_step_512";
    v188 = v6;
    v190 = 777;
    v191 = "closure_step_512";
    v192 = v6;
    v193 = 1;
    v194 = 777;
    v195 = "closure_step_512";
    v196 = v6;
    v197 = 1;
    v198 = 777;
    v199 = "closure_step_512";
    v200 = v6;
    v201 = 1;
    v202 = 777;
    v203 = "closure_step_512";
    v204 = v6;
    v205 = 1;
    v206 = 777;
    v207 = "closure_step_512";
    v208 = v6;
    v209 = 1;
    v210 = 777;
    v211 = "closure_step_512";
    v212 = v6;
    v213 = 1;
    v214 = 777;
    v215 = "closure_step_512";
    v216 = v6;
    v217 = 1;
    v218 = 777;
    v219 = "closure_step_512";
    v220 = v6;
    v221 = 1;
    v222 = 777;
    v223 = "closure_step_512";
    v224 = v6;
    v225 = 1;
    v226 = 777;
    v227 = "closure_step_512";
    v228 = v6;
    v229 = 1;
    v230 = 777;
    v231 = "closure_step_512";
    v232 = v6;
    v233 = 1;
    v234 = 777;
    v235 = "closure_step_512";
    v236 = v6;
    v237 = 1;
    v238 = 777;
    v239 = "closure_step_512";
    v240 = v6;
    v241 = 1;
    v242 = 777;
    v243 = "closure_step_512";
    v244 = v6;
    v245 = 1;
    v246 = 777;
    v247 = "closure_step_512";
    v248 = v6;
    v249 = 1;
    v250 = 777;
    v251 = "closure_step_512";
    v252 = v6;
    v253 = 1;
    v254 = 777;
    v255 = "closure_step_512";
    v256 = v6;
    v257 = 1;
    v258 = 777;
    v259 = "closure_step_512";
    v260 = v6;
    v261 = 1;
    v262 = 777;
    v263 = "closure_step_512";
    v264 = v6;
    v265 = 1;
    v266 = 777;
    v267 = "closure_step_512";
    v270 = 777;
    v271 = "closure_step_512";
    v272 = v6;
    v273 = 1;
    v274 = 777;
    v268 = v6;
    v269 = 1;
    v275 = "closure_step_512";
    v276 = v6;
    v277 = 1;
    v278 = 777;
    v279 = "closure_step_512";
    v280 = v6;
    v281 = 1;
    v282 = 777;
    v283 = "closure_step_512";
    v284 = v6;
    v285 = 1;
    v286 = 777;
    v287 = "closure_step_512";
    v288 = v6;
    v289 = 1;
    v290 = 777;
    v291 = "closure_step_512";
    v292 = v6;
    v293 = 1;
    v294 = 777;
    v295 = "closure_step_512";
    v296 = v6;
    v297 = 1;
    v298 = 777;
    v299 = "closure_step_512";
    v300 = v6;
    v301 = 1;
    v302 = 777;
    v303 = "closure_step_512";
    v304 = v6;
    v305 = 1;
    v306 = 777;
    v307 = "closure_step_512";
    v308 = v6;
    v309 = 1;
    v310 = 777;
    v311 = "closure_step_512";
    v312 = v6;
    v313 = 1;
    v314 = 777;
    v315 = "closure_step_512";
    v316 = v6;
    v317 = 1;
    v318 = 777;
    v319 = "closure_step_512";
    v320 = v6;
    v321 = 1;
    v322 = 777;
    v323 = "closure_step_512";
    v324 = v6;
    v325 = 1;
    v326 = 777;
    v327 = "closure_step_512";
    v328 = v6;
    v329 = 1;
    v330 = 777;
    v331 = "closure_step_512";
    v332 = v6;
    v333 = 1;
    v334 = 777;
    v335 = "closure_step_512";
    v336 = v6;
    v337 = 1;
    v338 = 777;
    v339 = "closure_step_512";
    v340 = v6;
    v341 = 1;
    v342 = 777;
    v343 = "closure_step_512";
    v344 = v6;
    v345 = 1;
    v346 = 777;
    v347 = "closure_step_512";
    v348 = v6;
    v349 = 1;
    v350 = 777;
    v351 = "closure_step_512";
    v352 = v6;
    v353 = 1;
    v354 = 777;
    v355 = "closure_step_512";
    v356 = v6;
    v357 = 1;
    v358 = 777;
    v359 = "closure_step_512";
    v360 = v6;
    v361 = 1;
    v362 = 777;
    v363 = "closure_step_512";
    v364 = v6;
    v365 = 1;
    v366 = 777;
    v367 = "closure_step_512";
    v368 = v6;
    v369 = 1;
    v370 = 777;
    v371 = "closure_step_512";
    v372 = v6;
    v373 = 1;
    v374 = 777;
    v375 = "closure_step_512";
    v376 = v6;
    v377 = 1;
    v378 = 777;
    v379 = "closure_step_512";
    v380 = v6;
    v381 = 1;
    v382 = 777;
    v383 = "closure_step_512";
    v384 = v6;
    v385 = 1;
    v386 = 777;
    v387 = "closure_step_512";
    v388 = v6;
    v389 = 1;
    v390 = 777;
    v391 = "closure_step_512";
    v392 = v6;
    v393 = 1;
    v394 = 777;
    v395 = "closure_step_512";
    v396 = v6;
    v397 = 1;
    v398 = 777;
    v399 = "closure_step_512";
    v400 = v6;
    v401 = 1;
    v402 = 777;
    v403 = "closure_step_512";
    v404 = v6;
    v405 = 1;
    v406 = 777;
    v407 = "closure_step_512";
    v408 = v6;
    v409 = 1;
    v410 = 777;
    v411 = "closure_step_512";
    v412 = v6;
    v413 = 1;
    v414 = 777;
    v415 = "closure_step_512";
    v416 = v6;
    v417 = 1;
    v418 = 777;
    v419 = "closure_step_512";
    v420 = v6;
    v421 = 1;
    v422 = 777;
    v423 = "closure_step_512";
    v424 = v6;
    v425 = 1;
    v426 = 777;
    v427 = "closure_step_512";
    v428 = v6;
    v429 = 1;
    v430 = 777;
    v431 = "closure_step_512";
    v432 = v6;
    v433 = 1;
    v434 = 777;
    v435 = "closure_step_512";
    v436 = v6;
    v437 = 1;
    v438 = 777;
    v439 = "closure_step_512";
    v440 = v6;
    v441 = 1;
    v442 = 777;
    v443 = "closure_step_512";
    v444 = v6;
    v445 = 1;
    v446 = 777;
    v447 = "closure_step_512";
    v448 = v6;
    v449 = 1;
    v450 = 777;
    v451 = "closure_step_512";
    v452 = v6;
    v453 = 1;
    v454 = 777;
    v455 = "closure_step_512";
    v456 = v6;
    v457 = 1;
    v458 = 777;
    v459 = "closure_step_512";
    v460 = v6;
    v461 = 1;
    v462 = 777;
    v463 = "closure_step_512";
    v464 = v6;
    v465 = 1;
    v466 = 777;
    v467 = "closure_step_512";
    v468 = v6;
    v469 = 1;
    v470 = 777;
    v471 = "closure_step_512";
    v472 = v6;
    v473 = 1;
    v474 = 777;
    v475 = "closure_step_512";
    v476 = v6;
    v477 = 1;
    v478 = 777;
    v479 = "closure_step_512";
    v480 = v6;
    v481 = 1;
    v482 = 777;
    v483 = "closure_step_512";
    v484 = v6;
    v485 = 1;
    v486 = 777;
    v487 = "closure_step_512";
    v488 = v6;
    v489 = 1;
    v490 = 777;
    v491 = "closure_step_512";
    v492 = v6;
    v493 = 1;
    v494 = 777;
    v495 = "closure_step_512";
    v496 = v6;
    v497 = 1;
    v498 = 777;
    v499 = "closure_step_512";
    v500 = v6;
    v501 = 1;
    v502 = 777;
    v503 = "closure_step_512";
    v504 = v6;
    v505 = 1;
    v506 = 777;
    v507 = "closure_step_512";
    v508 = v6;
    v509 = 1;
    v510 = 777;
    v511 = "closure_step_512";
    v512 = v6;
    v513 = 1;
    v514 = 777;
    v515 = "closure_step_512";
    v516 = v6;
    v517 = 1;
    v518 = 777;
    v519 = "closure_step_512";
    v520 = v6;
    v521 = 1;
    v522 = 777;
    v523 = "closure_step_512";
    v524 = v6;
    v525 = 1;
    v526 = 777;
    v527 = "closure_step_512";
    v528 = v6;
    v529 = 1;
    v530 = 0;
    while (!v9 && v1 <= 3)
    {
      ++v1;
      checkpoint_engine_perform(v15[3], &v18, &v9, &v8);
    }

    checkpoint_engine_free(v15[3]);
    v15[3] = 0;
    if (*(v11 + 6) != 512)
    {
      v9 = 3;
    }
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context\n", "utest_512_checkpoint_steps", qword_1C6C08);
    v9 = 1;
    v3 = v15[3];
    if (v3)
    {
      checkpoint_engine_free(v3);
    }
  }

  v4 = v9;
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  return v4;
}

void sub_4A210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_4A238(CFStringRef *a1, char a2, char a3, uint64_t a4)
{
  byte_1C6C14 = a2;
  byte_1C6C15 = a3;
  ramrod_log_msg("\nUNIT TEST(%s) : %s unit test process forking checkpoint monitor process\n", "spawn_monitor", qword_1C6C08);
  v6 = fork();
  v7 = v6;
  if (v6 < 1)
  {
    if (v6)
    {
      ramrod_log_msg("\nUNIT TEST(%s) : %s unit test process failed to fork monitor process\n", "spawn_monitor", qword_1C6C08);
      *a1 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"checkpoint_test #%d: fork of monitor failed (pid=%d)", dword_1C6C10, v7);
      return 55;
    }

    ramrod_log_msg("\nUNIT TEST(%s) : %s monitor process starting\n", "spawn_monitor", qword_1C6C08);
    ramrod_log_msg("\nUNIT TEST(%s) : %s monitor process starting\n", "monitor_process_begin_test", qword_1C6C08);
    ramrod_log_msg("\nUNIT TEST(%s) : ########################################################################################################################\n", "monitor_process");
    ramrod_log_msg("\nUNIT TEST(%s) : %s\n", "monitor_process", qword_1C6C08);
    ramrod_log_msg("\nUNIT TEST(%s) : ########################################################################################################################\n", "monitor_process");
    checkpoint_monitor_init(dword_1C6C20);
    checkpoint_monitor_step(787, "unit_test_monitor_start", 0, 0);
    checkpoint_monitor_recorder_path("/mnt5");
    ramrod_log_msg("\nUNIT TEST(%s) : %s monitor process forking checkpoint engine process\n", "monitor_process", qword_1C6C08);
    v11 = fork();
    v12 = v11;
    if (v11 < 1)
    {
      if (!v11)
      {
        ramrod_log_msg("\nUNIT TEST(%s) : %s engine process starting\n", "engine_process", qword_1C6C08);
        v14 = dword_1C6BEC;
        if ((dword_1C6BEC - 21) <= 0xFFFFFFEB)
        {
          ramrod_log_msg("\nUNIT TEST(%s) : CHILD ERROR: invalid unit_test_number: %d\n", "engine_process", dword_1C6C10);
          exit(56);
        }

        ramrod_log_msg("\nUNIT TEST(%s) : %s CHILD: performing unit test\n", "engine_process", qword_1C6C08);
        v17 = (qword_1ADB20[9 * v14 + 4])();
        v18 = v17;
        if (v17)
        {
          ramrod_log_msg("\nUNIT TEST(%s) : %s CHILD ERROR: child return: %d(0x%X)\n", "engine_process", qword_1C6C08, v17, v17);
        }

        v19 = checkpoint_engine_finished_result(v18);
        exit(v19);
      }

      ramrod_log_msg("\nUNIT TEST(%s) : %s engine process failed to fork monitor process\n", "monitor_process", qword_1C6C08);
      checkpoint_monitor_engine_failure(1u, v12);
      ramrod_log_msg("\nUNIT TEST(%s) : %s MONITOR: return\n", "monitor_process", qword_1C6C08);
      v13 = 39;
      goto LABEL_44;
    }

    v47 = 0;
    ramrod_log_msg("\nUNIT TEST(%s) : %s monitor process waiting until engine process terminates\n", "monitor_process", qword_1C6C08);
    if (waitpid(v12, &v47, 0) == -1)
    {
      ramrod_log_msg("\nUNIT TEST(%s) : %s monitor process unable to wait for engine process\n", "monitor_process", qword_1C6C08);
      checkpoint_monitor_engine_failure(2u, v47);
      ramrod_log_msg("\nUNIT TEST(%s) : %s MONITOR: return\n", "monitor_process", qword_1C6C08);
      v13 = 33;
LABEL_44:
      v46 = v13;
      goto LABEL_45;
    }

    v15 = v47;
    ramrod_log_msg("\nUNIT TEST(%s) : %s monitor process executing (engine process has terminated)\n", "monitor_after_child_terminated", qword_1C6C08);
    if ((v15 & 0x7F) == 0x7F)
    {
      if (!v15)
      {
        if (byte_1C6C14)
        {
          checkpoint_monitor_engine_failure(5u, 0);
          v16 = 38;
          goto LABEL_131;
        }

        goto LABEL_51;
      }

      checkpoint_monitor_engine_failure(5u, v15);
      if (!byte_1C6C14)
      {
        ramrod_log_msg("\nUNIT TEST(%s) : %s unexpected failure\n", "monitor_after_child_terminated", qword_1C6C08);
        v16 = 36;
        goto LABEL_131;
      }
    }

    else
    {
      if ((v15 & 0x7F) == 0)
      {
        if (BYTE1(v15))
        {
          checkpoint_monitor_engine_failure(4u, BYTE1(v15));
          if (!byte_1C6C14 || (v46 = 41, dword_1C6BF8 >= 8) && dword_1C6BFC)
          {
            v16 = 34;
LABEL_131:
            v46 = v16;
            goto LABEL_132;
          }

          goto LABEL_62;
        }

LABEL_51:
        v20 = checkpoint_monitor_success();
        if (byte_1C6C15)
        {
          if (!v20)
          {
            ramrod_log_msg("\nUNIT TEST(%s) : %s expecting indication to shutdown instead of reboot\n", "monitor_after_child_terminated", qword_1C6C08);
            v16 = 47;
            goto LABEL_131;
          }
        }

        else if (v20)
        {
          ramrod_log_msg("\nUNIT TEST(%s) : %s expecting indication to reboot instead of shutdown\n", "monitor_after_child_terminated", qword_1C6C08);
          v16 = 48;
          goto LABEL_131;
        }

        v46 = 0;
        goto LABEL_62;
      }

      checkpoint_monitor_engine_failure(3u, v15 & 0x7F);
      if (!byte_1C6C14)
      {
        v16 = 35;
        goto LABEL_131;
      }
    }

    v46 = 41;
LABEL_62:
    ramrod_log_msg("\nUNIT TEST(%s) : %s checking NVRAM after phase completed\n", "nvram_check_phase_completed", qword_1C6C08);
    v21 = 1;
    while (dword_1C6C20 != 1)
    {
      v22 = @"checkpoint-nvram-unknown";
      if (dword_1C6C20 == 2)
      {
        v23 = &off_1A9CD0;
LABEL_67:
        v22 = v23[v21];
      }

      cf = 0;
      v51 = 0u;
      v52 = 0u;
      *buffer = 0u;
      v50 = 0u;
      CFStringGetCString(v22, buffer, 64, 0x8000100u);
      v24 = ramrod_copy_NVRAM_variable(v22);
      v25 = v24;
      if (!a4 || (v26 = *(a4 + 8 * dword_1C6BFC)) == 0 || (v27 = *(v26 + 8 * dword_1C6BF8)) == 0)
      {
        if (v24)
        {
          goto LABEL_125;
        }

        goto LABEL_126;
      }

      if ((v21 - 2) > 0x1E)
      {
        v28 = 0;
      }

      else
      {
        v28 = *&aAptk_0[4 * v21 + 4];
      }

      v29 = *v27;
      if (v29 == 33)
      {
LABEL_77:
        if (v25)
        {
          ramrod_log_msg("\nUNIT TEST(%s) : %s checkpoint NVRAM [%s] (exists when not expected)\n");
          goto LABEL_125;
        }

        goto LABEL_126;
      }

      do
      {
        if (dword_1C6C20 == 1)
        {
          v31 = &off_1A9BC8;
        }

        else
        {
          v30 = @"checkpoint-nvram-unknown";
          if (dword_1C6C20 != 2)
          {
            goto LABEL_84;
          }

          v31 = &off_1A9CD0;
        }

        v30 = v31[v21];
LABEL_84:
        if (dword_1C6C20 == 1)
        {
          v33 = &off_1A9BC8;
        }

        else
        {
          v32 = @"checkpoint-nvram-unknown";
          if (dword_1C6C20 != 2)
          {
            goto LABEL_89;
          }

          v33 = &off_1A9CD0;
        }

        v32 = v33[v29];
LABEL_89:
        if (CFStringCompare(v30, v32, 0) == kCFCompareEqualTo)
        {
          v34 = v27;
          goto LABEL_110;
        }

        v34 = 0;
        if (dword_1C6BFC >= 2 && v28 != v21)
        {
          if (dword_1C6C20 == 1)
          {
            v36 = &off_1A9BC8;
LABEL_96:
            v35 = v36[v28];
          }

          else
          {
            v35 = @"checkpoint-nvram-unknown";
            if (dword_1C6C20 == 2)
            {
              v36 = &off_1A9CD0;
              goto LABEL_96;
            }
          }

          if (dword_1C6C20 == 1)
          {
            v38 = &off_1A9BC8;
LABEL_101:
            v37 = v38[*v27];
          }

          else
          {
            v37 = @"checkpoint-nvram-unknown";
            if (dword_1C6C20 == 2)
            {
              v38 = &off_1A9CD0;
              goto LABEL_101;
            }
          }

          if (CFStringCompare(v35, v37, 0))
          {
            v34 = 0;
          }

          else
          {
            v34 = v27;
          }
        }

        if (v34)
        {
          break;
        }

        v39 = v27[4];
        v27 += 4;
        v29 = v39;
      }

      while (v39 != 33);
      if (!v34)
      {
        goto LABEL_77;
      }

LABEL_110:
      if (v25)
      {
        if (dword_1C6C20 == 1)
        {
          v41 = &off_1A9BC8;
LABEL_116:
          v40 = v41[v21];
        }

        else
        {
          v40 = @"checkpoint-nvram-unknown";
          if (dword_1C6C20 == 2)
          {
            v41 = &off_1A9CD0;
            goto LABEL_116;
          }
        }

        v42 = *(v34 + 1);
        memset(v85, 0, sizeof(v85));
        CFStringGetCString(v40, v85, 64, 0x8000100u);
        v43 = CFGetTypeID(v25);
        if (v43 == CFDataGetTypeID())
        {
          v44 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v25, 0x8000100u);
          if (v44)
          {
            v45 = v44;
            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            *v53 = 0u;
            v54 = 0u;
            CFStringGetCString(v44, v53, 512, 0x8000100u);
            if (CFStringCompare(v45, v42, 0))
            {
              ramrod_log_msg("\nUNIT TEST(%s) : %s ERROR: checkpoint NVRAM [%s] unexpected value [%s]\n");
            }

            else
            {
              ramrod_log_msg("\nUNIT TEST(%s) : %s checkpoint NVRAM [%s] expected value [%s]\n");
            }

            CFRelease(v45);
          }

          else
          {
            ramrod_log_msg("\nUNIT TEST(%s) : %s checkpoint NVRAM [%s] unable to create string from CFData\n");
          }
        }

        else
        {
          ramrod_log_msg("\nUNIT TEST(%s) : %s checkpoint NVRAM [%s] is not CFData type\n");
        }

LABEL_125:
        CFRelease(v25);
      }

      else
      {
        ramrod_log_msg("\nUNIT TEST(%s) : %s checkpoint NVRAM [%s] (required but doesn't exist)\n", "nvram_check_expected", qword_1C6C08, buffer);
      }

LABEL_126:
      if (cf)
      {
        CFRelease(cf);
      }

      if (++v21 == 33)
      {
LABEL_132:
        checkpoint_monitor_final_result();
        ramrod_log_msg("\nUNIT TEST(%s) : %s MONITOR: return\n", "monitor_process", qword_1C6C08);
        if (!v46)
        {
          exit(0);
        }

LABEL_45:
        ramrod_log_msg("\nUNIT TEST(%s) : %s MONITOR ERROR: monitor return: %d(0x%X)\n", "monitor_process_begin_test", qword_1C6C08, v46, v46);
        exit(v46);
      }
    }

    v23 = &off_1A9BC8;
    goto LABEL_67;
  }

  *v53 = 0;
  ramrod_log_msg("\nUNIT TEST(%s) : %s unit test process waiting until monitor process terminates\n", "spawn_monitor", qword_1C6C08);
  if (waitpid(v7, v53, 0) == -1)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unit test process unable to wait for monitor process\n", "spawn_monitor", qword_1C6C08);
    *a1 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s failed waiting monitor termination", qword_1C6C08);
    return 49;
  }

  v8 = *v53;
  ramrod_log_msg("\nUNIT TEST(%s) : %s unit test process executing (monitor process has terminated)\n", "after_monitor_terminated", qword_1C6C08);
  if ((v8 & 0x7F) != 0x7F)
  {
    if ((v8 & 0x7F) != 0)
    {
      *a1 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s monitor terminated by signal %d", qword_1C6C08, v8 & 0x7F);
      if (!byte_1C6C14)
      {
        ramrod_log_msg("\nUNIT TEST(%s) : %s terminated with signal(%d)\n", "after_monitor_terminated", qword_1C6C08, v8 & 0x7F);
        return 51;
      }

      ramrod_log_msg("\nUNIT TEST(%s) : %s SUCCESS (expected failure [WIFSIGNALED])\n");
      return 0;
    }

    v9 = BYTE1(v8);
    *a1 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s monitor exited with status %d(0x%X)", qword_1C6C08, v9, v9);
    if (!byte_1C6C14 || dword_1C6BF8 >= 8 && dword_1C6BFC)
    {
      if (v9)
      {
        ramrod_log_msg("\nUNIT TEST(%s) : %s returned status(%d,0x%X) when not expecting failure\n", "after_monitor_terminated", qword_1C6C08, v9, v9);
        return 52;
      }

      return 0;
    }

    if (v9 == 41)
    {
      ramrod_log_msg("\nUNIT TEST(%s) : %s SUCCESS (expected failure [WIFEXITED])\n");
      return 0;
    }

    ramrod_log_msg("\nUNIT TEST(%s) : %s returned status(%d,0x%X) when expected: EXPECTED_FAILURE(0x%X)\n");
    return 53;
  }

  if (!v8)
  {
    *a1 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s monitor returned SUCCESS", qword_1C6C08);
    if (byte_1C6C14)
    {
      ramrod_log_msg("\nUNIT TEST(%s) : %s SUCCESS (expected failure [monitor terminated SUCCESS])\n", "after_monitor_terminated", qword_1C6C08);
      return 54;
    }

    ramrod_log_msg("\nUNIT TEST(%s) : %s SUCCESS\n");
    return 0;
  }

  *a1 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s monitor returned status %d(0x%X)", qword_1C6C08, v8, v8);
  if (!byte_1C6C14)
  {
    return 52;
  }

  if (v8 != 41)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s exit status(%d,0x%X) when expected: EXPECTED_FAILURE(0x%X)\n");
    return 53;
  }

  ramrod_log_msg("\nUNIT TEST(%s) : %s SUCCESS (expected failure [exit status])\n");
  return 0;
}

void sub_4AD68(void *a1)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_1\n", "utest_engines_in_sequence_block_invoke", qword_1C6C08);
  if (strcmp(*(*(a1[4] + 8) + 24), "var_char"))
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_1: var_char mismatch\n", "utest_engines_in_sequence_block_invoke", qword_1C6C08);
    *(*(a1[5] + 8) + 24) = 2;
  }

  if (*(*(a1[6] + 8) + 24) != 287454020)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_1: var_uint32 mismatch\n", "utest_engines_in_sequence_block_invoke", qword_1C6C08);
    *(*(a1[5] + 8) + 24) = 3;
  }

  v2 = *(*(a1[7] + 8) + 24);

  checkpoint_closure_nvram_available(v2);
}

void sub_4AE54(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  _Block_object_assign((a1 + 48), *(a2 + 48), 8);
  v4 = *(a2 + 56);

  _Block_object_assign((a1 + 56), v4, 8);
}

void sub_4AEC4(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

void sub_4AF20(void *result)
{
  if (dword_1C6BF8 < 3)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_2\n", "utest_engines_in_sequence_block_invoke", qword_1C6C08);
  }

  else if (!*(*(result[4] + 8) + 24))
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_2 [point-of-no-return]\n", "utest_engines_in_sequence_block_invoke", qword_1C6C08);
    checkpoint_closure_point_of_no_return(*(*(result[5] + 8) + 24));
    *(*(result[4] + 8) + 24) = 1;
  }

  *(*(result[6] + 8) + 24) = "step2_name";
  *(*(result[7] + 8) + 24) = 572662306;
}

void sub_4AFF0(void *a1)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_3\n", "utest_engines_in_sequence_block_invoke_2", qword_1C6C08);
  if (strcmp(*(*(a1[4] + 8) + 24), "step2_name"))
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_3: var_char mismatch\n", "utest_engines_in_sequence_block_invoke_2", qword_1C6C08);
    *(*(a1[5] + 8) + 24) = 4;
  }

  if (*(*(a1[6] + 8) + 24) != 572662306)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_3: var_uint32 mismatch\n", "utest_engines_in_sequence_block_invoke_2", qword_1C6C08);
    *(*(a1[5] + 8) + 24) = 5;
  }
}

void sub_4B0BC(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  v4 = *(a2 + 48);

  _Block_object_assign((a1 + 48), v4, 8);
}

void sub_4B11C(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

void sub_4B16C(void *result)
{
  if (dword_1C6BF8 == 7 || dword_1C6BF8 == 4)
  {
    if (!*(*(result[4] + 8) + 24))
    {
      ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_4 [point-of-fail-forward]\n", "utest_engines_in_sequence_block_invoke", qword_1C6C08);
      checkpoint_closure_point_of_fail_forward(*(*(result[5] + 8) + 24));
      *(*(result[4] + 8) + 24) = 1;
    }
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_4\n", "utest_engines_in_sequence_block_invoke", qword_1C6C08);
  }

  *(*(result[6] + 8) + 24) = "step4_name";
  *(*(result[7] + 8) + 24) = 1145324612;
}

void sub_4B240(void *a1)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_5\n", "utest_engines_in_sequence_block_invoke_2", qword_1C6C08);
  if (strcmp(*(*(a1[4] + 8) + 24), "step4_name"))
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_4: var_char mismatch\n", "utest_engines_in_sequence_block_invoke_2", qword_1C6C08);
    *(*(a1[5] + 8) + 24) = 6;
  }

  if (*(*(a1[6] + 8) + 24) != 1145324612)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_4: var_uint32 mismatch\n", "utest_engines_in_sequence_block_invoke_2", qword_1C6C08);
    *(*(a1[5] + 8) + 24) = 7;
  }
}

void sub_4B30C(uint64_t a1)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_6\n", "utest_engines_in_sequence_block_invoke_3", qword_1C6C08);
  *(*(*(a1 + 32) + 8) + 24) = "var_char";
  *(*(*(a1 + 40) + 8) + 24) = 287454020;
}

void sub_4B37C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1\n", "utest_closure_api_block_invoke", qword_1C6C08);
  v16 = *(a1[4] + 8);
  if (*(v16 + 24))
  {
    *(*(a1[5] + 8) + 24) = 2;
  }

  else
  {
    *(v16 + 24) = 1;
    v17 = *(*(a1[6] + 8) + 24);

    checkpoint_closure_warning(v17, "warning from closure_step_1", v10, v11, v12, v13, v14, v15);
  }
}

void sub_4B420(void *a1)
{
  if (dword_1C6BF8 < 3)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_2\n", "utest_closure_api_block_invoke_2", qword_1C6C08);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_2 [point-of-no-return]\n", "utest_closure_api_block_invoke_2", qword_1C6C08);
    checkpoint_closure_point_of_no_return(*(*(a1[4] + 8) + 24));
  }

  v2 = *(a1[5] + 8);
  if (*(v2 + 24) == 1)
  {
    v3 = 2;
  }

  else
  {
    v2 = *(a1[6] + 8);
    v3 = 3;
  }

  *(v2 + 24) = v3;
}

void sub_4B528(void *a1)
{
  if (dword_1C6BF8 < 3)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_4\n", "utest_closure_api_block_invoke", qword_1C6C08);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_4 [point-of-fail-forward]\n", "utest_closure_api_block_invoke", qword_1C6C08);
    checkpoint_closure_point_of_fail_forward(*(*(a1[4] + 8) + 24));
  }

  v8 = *(a1[5] + 8);
  if (*(v8 + 24) == 3)
  {
    *(v8 + 24) = 4;
    checkpoint_closure_warning(*(*(a1[4] + 8) + 24), "closure_step_4 terminating", v2, v3, v4, v5, v6, v7);
    v9 = *(*(a1[4] + 8) + 24);

    checkpoint_closure_terminate(v9);
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 4;
  }
}

void sub_4B61C(uint64_t a1)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_5\n", "utest_closure_api_block_invoke_2", qword_1C6C08);
  *(*(*(a1 + 32) + 8) + 24) = 5;
  *(*(*(a1 + 40) + 8) + 24) = 5;
}

void sub_4B680(uint64_t a1)
{
  if (dword_1C6BF8 < 3)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1\n", "utest_checkpoint_fail_block_invoke", qword_1C6C08);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1 [point-of-no-return]\n", "utest_checkpoint_fail_block_invoke", qword_1C6C08);
    checkpoint_closure_point_of_no_return(*(*(*(a1 + 32) + 8) + 24));
  }

  v2 = *(*(a1 + 40) + 8);
  if (!*(v2 + 24))
  {
    *(v2 + 24) = 1;
  }
}

void sub_4B774(uint64_t a1)
{
  if (dword_1C6BF8 == 7 || dword_1C6BF8 == 4)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3 [point-of-fail-forward]\n", "utest_checkpoint_fail_block_invoke_3", qword_1C6C08);
    checkpoint_closure_point_of_fail_forward(*(*(*(a1 + 32) + 8) + 24));
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3\n", "utest_checkpoint_fail_block_invoke_3", qword_1C6C08);
  }

  v3 = *(*(a1 + 40) + 8);
  if (*(v3 + 24) == 2)
  {
    *(v3 + 24) = 3;
  }
}

void sub_4B820(uint64_t a1)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_4\n", "utest_checkpoint_fail_block_invoke_4", qword_1C6C08);
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24) == 3)
  {
    *(v2 + 24) = 4;
    v3 = dword_1C6BF8 < 8 || dword_1C6BFC == 0;
    v4 = 48;
    if (v3)
    {
      v4 = 40;
      v5 = 192;
    }

    else
    {
      v5 = 5;
    }

    *(*(*(a1 + v4) + 8) + 24) = v5;
  }
}

void sub_4B9C8(uint64_t a1)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_3\n", "utest_checkpoint_fail_error_block_invoke_3", qword_1C6C08);
  *(*(*(a1 + 32) + 8) + 24) = 3;
  v2 = *(*(*(a1 + 40) + 8) + 24);

  checkpoint_closure_nvram_available(v2);
}

void sub_4BA3C(uint64_t a1)
{
  if (dword_1C6BF8 < 3)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_4\n", "utest_checkpoint_fail_error_block_invoke_4", qword_1C6C08);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_4 [point-of-no-return]\n", "utest_checkpoint_fail_error_block_invoke_4", qword_1C6C08);
    checkpoint_closure_point_of_no_return(*(*(*(a1 + 32) + 8) + 24));
  }

  v2 = *(*(a1 + 40) + 8);
  if (*(v2 + 24) == 3)
  {
    *(v2 + 24) = 4;
  }
}

void sub_4BB34(uint64_t a1)
{
  if (dword_1C6BF8 != 4 && (dword_1C6BF8 >= 7 ? (v2 = dword_1C6BFC == 0) : (v2 = 1), v2))
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_6\n", "utest_checkpoint_fail_error_block_invoke_6", qword_1C6C08);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_6 [point-of-fail-forward]\n", "utest_checkpoint_fail_error_block_invoke_6", qword_1C6C08);
    checkpoint_closure_point_of_fail_forward(*(*(*(a1 + 32) + 8) + 24));
  }

  v3 = *(*(a1 + 40) + 8);
  if (*(v3 + 24) == 5)
  {
    *(v3 + 24) = 6;
  }
}

void sub_4BBF0(uint64_t a1)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_7\n", "utest_checkpoint_fail_error_block_invoke_7", qword_1C6C08);
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24) == 6)
  {
    *(v2 + 24) = 7;
    if (dword_1C6BF8 >= 8 && dword_1C6BFC != 0)
    {
      v7 = 8;
      v8 = 56;
LABEL_11:
      *(*(*(a1 + v8) + 8) + 24) = v7;
      return;
    }

    v4 = *(*(a1 + 40) + 8);
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v6 = Mutable;
      CFDictionaryAddValue(Mutable, kCFErrorDescriptionKey, @"closure error message");
      CFDictionaryAddValue(v6, kCFErrorLocalizedRecoverySuggestionKey, @"recovery");
      CFDictionaryAddValue(v6, kCFErrorLocalizedDescriptionKey, @"localized");
      CFDictionaryAddValue(v6, kCFErrorLocalizedFailureReasonKey, @"reason");
      *(v4 + 24) = CFErrorCreate(kCFAllocatorDefault, @"CheckpointUnitTestErrorDomain", 191, v6);
      CFRelease(v6);
    }

    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v7 = 192;
      v8 = 48;
      goto LABEL_11;
    }
  }
}

uint64_t sub_4BDC8()
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12 = 0;
  v10 = off_1AD4D0();
  v11 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 0;
  v0 = checkpoint_engine_init(dword_1C6C20, 3, *v10);
  v14[3] = v0;
  if (v0)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3254779904;
    v4[2] = sub_4C5D4;
    v4[3] = &unk_1AE138;
    v4[4] = v5;
    v4[5] = &v13;
    v4[6] = &v7;
    v1 = &v273;
    bzero(&v273, 0x360uLL);
    v273 = 779;
    v274 = "multi_thread_1_step";
    v275 = v4;
    v276 = 1;
    v277 = 779;
    v278 = "multi_thread_1_step";
    v279 = v4;
    v280 = 1;
    v281 = 779;
    v282 = "multi_thread_1_step";
    v283 = v4;
    v284 = 1;
    v285 = 779;
    v286 = "multi_thread_1_step";
    v287 = v4;
    v288 = 1;
    v289 = 779;
    v290 = "multi_thread_1_step";
    v291 = v4;
    v292 = 1;
    v293 = 779;
    v294 = "multi_thread_1_step";
    v295 = v4;
    v296 = 1;
    v297 = 779;
    v298 = "multi_thread_1_step";
    v299 = v4;
    v300 = 1;
    v301 = 779;
    v302 = "multi_thread_1_step";
    v303 = v4;
    v304 = 1;
    bzero(&v241, 0x360uLL);
    v241 = 780;
    v242 = "multi_thread_2_step";
    v243 = v4;
    v244 = 1;
    v245 = 780;
    v246 = "multi_thread_2_step";
    v247 = v4;
    v248 = 1;
    v249 = 780;
    v250 = "multi_thread_2_step";
    v251 = v4;
    v252 = 1;
    v253 = 780;
    v254 = "multi_thread_2_step";
    v255 = v4;
    v256 = 1;
    v257 = 780;
    v258 = "multi_thread_2_step";
    v259 = v4;
    v260 = 1;
    v261 = 780;
    v262 = "multi_thread_2_step";
    v263 = v4;
    v264 = 1;
    v265 = 780;
    v266 = "multi_thread_2_step";
    v267 = v4;
    v268 = 1;
    v269 = 780;
    v270 = "multi_thread_2_step";
    v271 = v4;
    v272 = 1;
    bzero(&v209, 0x360uLL);
    v209 = 781;
    v210 = "multi_thread_3_step";
    v211 = v4;
    v212 = 1;
    v213 = 781;
    v214 = "multi_thread_3_step";
    v215 = v4;
    v216 = 1;
    v217 = 781;
    v218 = "multi_thread_3_step";
    v219 = v4;
    v220 = 1;
    v221 = 781;
    v222 = "multi_thread_3_step";
    v223 = v4;
    v224 = 1;
    v225 = 781;
    v226 = "multi_thread_3_step";
    v227 = v4;
    v228 = 1;
    v229 = 781;
    v230 = "multi_thread_3_step";
    v231 = v4;
    v232 = 1;
    v233 = 781;
    v234 = "multi_thread_3_step";
    v235 = v4;
    v236 = 1;
    v237 = 781;
    v238 = "multi_thread_3_step";
    v239 = v4;
    v240 = 1;
    bzero(&v177, 0x360uLL);
    v177 = 782;
    v178 = "multi_thread_4_step";
    v179 = v4;
    v180 = 1;
    v181 = 782;
    v182 = "multi_thread_4_step";
    v183 = v4;
    v184 = 1;
    v185 = 782;
    v186 = "multi_thread_4_step";
    v187 = v4;
    v188 = 1;
    v189 = 782;
    v190 = "multi_thread_4_step";
    v191 = v4;
    v192 = 1;
    v193 = 782;
    v194 = "multi_thread_4_step";
    v195 = v4;
    v196 = 1;
    v197 = 782;
    v198 = "multi_thread_4_step";
    v199 = v4;
    v200 = 1;
    v201 = 782;
    v202 = "multi_thread_4_step";
    v203 = v4;
    v204 = 1;
    v205 = 782;
    v206 = "multi_thread_4_step";
    v207 = v4;
    v208 = 1;
    bzero(&v145, 0x360uLL);
    v145 = 783;
    v146 = "multi_thread_5_step";
    v147 = v4;
    v148 = 1;
    v149 = 783;
    v150 = "multi_thread_5_step";
    v151 = v4;
    v152 = 1;
    v153 = 783;
    v154 = "multi_thread_5_step";
    v155 = v4;
    v156 = 1;
    v157 = 783;
    v158 = "multi_thread_5_step";
    v159 = v4;
    v160 = 1;
    v161 = 783;
    v162 = "multi_thread_5_step";
    v163 = v4;
    v164 = 1;
    v165 = 783;
    v166 = "multi_thread_5_step";
    v167 = v4;
    v168 = 1;
    v169 = 783;
    v170 = "multi_thread_5_step";
    v171 = v4;
    v172 = 1;
    v173 = 783;
    v174 = "multi_thread_5_step";
    v175 = v4;
    v176 = 1;
    bzero(&v113, 0x360uLL);
    v113 = 784;
    v114 = "multi_thread_6_step";
    v115 = v4;
    v116 = 1;
    v117 = 784;
    v118 = "multi_thread_6_step";
    v119 = v4;
    v120 = 1;
    v121 = 784;
    v122 = "multi_thread_6_step";
    v123 = v4;
    v124 = 1;
    v125 = 784;
    v126 = "multi_thread_6_step";
    v127 = v4;
    v128 = 1;
    v129 = 784;
    v130 = "multi_thread_6_step";
    v131 = v4;
    v132 = 1;
    v133 = 784;
    v134 = "multi_thread_6_step";
    v135 = v4;
    v136 = 1;
    v137 = 784;
    v138 = "multi_thread_6_step";
    v139 = v4;
    v140 = 1;
    v141 = 784;
    v142 = "multi_thread_6_step";
    v143 = v4;
    v144 = 1;
    bzero(&v81, 0x360uLL);
    v81 = 785;
    v82 = "multi_thread_7_step";
    v83 = v4;
    v84 = 1;
    v85 = 785;
    v86 = "multi_thread_7_step";
    v87 = v4;
    v88 = 1;
    v89 = 785;
    v90 = "multi_thread_7_step";
    v91 = v4;
    v92 = 1;
    v93 = 785;
    v94 = "multi_thread_7_step";
    v95 = v4;
    v96 = 1;
    v97 = 785;
    v98 = "multi_thread_7_step";
    v99 = v4;
    v100 = 1;
    v101 = 785;
    v102 = "multi_thread_7_step";
    v103 = v4;
    v104 = 1;
    v105 = 785;
    v106 = "multi_thread_7_step";
    v107 = v4;
    v108 = 1;
    v109 = 785;
    v110 = "multi_thread_7_step";
    v111 = v4;
    v112 = 1;
    bzero(&v49, 0x360uLL);
    v49 = 786;
    v50 = "multi_thread_8_step";
    v51 = v4;
    v52 = 1;
    v53 = 786;
    v54 = "multi_thread_8_step";
    v55 = v4;
    v56 = 1;
    v57 = 786;
    v58 = "multi_thread_8_step";
    v59 = v4;
    v60 = 1;
    v61 = 786;
    v62 = "multi_thread_8_step";
    v63 = v4;
    v64 = 1;
    v65 = 786;
    v66 = "multi_thread_8_step";
    v67 = v4;
    v68 = 1;
    v69 = 786;
    v70 = "multi_thread_8_step";
    v71 = v4;
    v72 = 1;
    v73 = 786;
    v74 = "multi_thread_8_step";
    v75 = v4;
    v76 = 1;
    v77 = 786;
    v78 = "multi_thread_8_step";
    v79 = v4;
    v80 = 1;
    bzero(&v17, 0x360uLL);
    v17 = 778;
    v18 = "multi_thread_step";
    v19 = v4;
    v20 = 1;
    v21 = 778;
    v22 = "multi_thread_step";
    v23 = v4;
    v24 = 1;
    v25 = 778;
    v26 = "multi_thread_step";
    v27 = v4;
    v28 = 1;
    v29 = 778;
    v30 = "multi_thread_step";
    v31 = v4;
    v32 = 1;
    v33 = 778;
    v34 = "multi_thread_step";
    v35 = v4;
    v36 = 1;
    v37 = 778;
    v38 = "multi_thread_step";
    v39 = v4;
    v40 = 1;
    v41 = 778;
    v42 = "multi_thread_step";
    v43 = v4;
    v44 = 1;
    v45 = 778;
    v46 = "multi_thread_step";
    v47 = v4;
    v48 = 1;
    v2 = *v8[3];
    if (v2 > 4)
    {
      if (v2 <= 6)
      {
        if (v2 == 5)
        {
          v1 = &v145;
        }

        else
        {
          v1 = &v113;
        }

        goto LABEL_20;
      }

      if (v2 == 7)
      {
        v1 = &v81;
        goto LABEL_20;
      }

      if (v2 == 8)
      {
        v1 = &v49;
        goto LABEL_20;
      }
    }

    else
    {
      if (v2 > 2)
      {
        if (v2 == 3)
        {
          v1 = &v209;
        }

        else
        {
          v1 = &v177;
        }

        goto LABEL_20;
      }

      if (v2 == 1)
      {
LABEL_20:
        checkpoint_engine_perform(v14[3], v1, &v12, &v11);
        checkpoint_engine_free(v14[3]);
        v14[3] = 0;
        goto LABEL_21;
      }

      if (v2 == 2)
      {
        v1 = &v241;
        goto LABEL_20;
      }
    }

    v1 = &v17;
    goto LABEL_20;
  }

  ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create engine context for thread %d\n", "utest_thread_engine", qword_1C6C08, *v8[3]);
  v12 = 2;
LABEL_21:
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v13, 8);
  return 0;
}

void sub_4C5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_4C678(uint64_t a1)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s outer_step_1\n", "utest_nested_engines_block_invoke", qword_1C6C08);
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24))
  {
    v2 = *(*(a1 + 40) + 8);
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  *(v2 + 24) = v3;
}

void sub_4C6E8(uint64_t a1)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s outer_step_2\n", "utest_nested_engines_block_invoke_2", qword_1C6C08);
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24) == 1)
  {
    v3 = 2;
  }

  else
  {
    v2 = *(*(a1 + 40) + 8);
    v3 = 3;
  }

  *(v2 + 24) = v3;
}

void sub_4C75C(uint64_t a1)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s outer_step_3\n", "utest_nested_engines_block_invoke_3", qword_1C6C08);
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24) == 2)
  {
    *(v2 + 24) = 3;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 100;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v10 = 0;
    v3 = checkpoint_engine_init(dword_1C6C20, 3, 0);
    v4 = v3;
    if (v3)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3254779904;
      v9[2] = sub_4CA68;
      v9[3] = &unk_1AD6E8;
      v9[4] = &v15;
      v9[5] = &v11;
      v7[5] = &v11;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3254779904;
      v8[2] = sub_4CADC;
      v8[3] = &unk_1AD6E8;
      v8[4] = &v15;
      v8[5] = &v11;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3254779904;
      v7[2] = sub_4CB50;
      v7[3] = &unk_1AD6E8;
      v7[4] = &v15;
      v19[1] = 0;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 769;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 770;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v19[0] = 768;
      v20 = "inner_step_1";
      *&v21 = v9;
      BYTE8(v21) = 1;
      v27 = "inner_step_2";
      *&v28 = v8;
      BYTE8(v28) = 1;
      v34 = "inner_step_3";
      *&v35 = v7;
      BYTE8(v35) = 1;
      checkpoint_engine_perform(v3, v19, v12 + 6, &v10);
      checkpoint_engine_free(v4);
      v5 = v12[6];
      if (v5)
      {
LABEL_10:
        _Block_object_dispose(&v11, 8);
        _Block_object_dispose(&v15, 8);
        goto LABEL_11;
      }

      v6 = *(v16 + 6);
      if (v6 == 103)
      {
        v5 = 0;
        goto LABEL_10;
      }

      ramrod_log_msg("\nUNIT TEST(%s) : %s (inner) last_step(%d) != 103\n", "utest_nested_inner_engine", qword_1C6C08, v6);
      v5 = 5;
    }

    else
    {
      ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create inner engine\n", "utest_nested_inner_engine", qword_1C6C08);
      v5 = 1;
    }

    v12[6] = v5;
    goto LABEL_10;
  }

  v5 = 4;
LABEL_11:
  *(*(*(a1 + 40) + 8) + 24) = v5;
}

void sub_4CA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_4CA68(uint64_t a1)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s inner_step_1\n", "utest_nested_inner_engine_block_invoke", qword_1C6C08);
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24) == 100)
  {
    v3 = 101;
  }

  else
  {
    v2 = *(*(a1 + 40) + 8);
    v3 = 2;
  }

  *(v2 + 24) = v3;
}

void sub_4CADC(uint64_t a1)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s inner_step_2\n", "utest_nested_inner_engine_block_invoke_2", qword_1C6C08);
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24) == 101)
  {
    v3 = 102;
  }

  else
  {
    v2 = *(*(a1 + 40) + 8);
    v3 = 3;
  }

  *(v2 + 24) = v3;
}

void sub_4CB50(uint64_t a1)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s inner_step_3\n", "utest_nested_inner_engine_block_invoke_3", qword_1C6C08);
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24) == 102)
  {
    v3 = 103;
  }

  else
  {
    v2 = *(*(a1 + 40) + 8);
    v3 = 4;
  }

  *(v2 + 24) = v3;
}

void sub_4CBC4(uint64_t a1)
{
  if (dword_1C6BF8 < 3 || dword_1C6BF8 == 4 || dword_1C6BF8 == 7)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1\n", "utest_closure_shutdown_block_invoke", qword_1C6C08);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1 [point-of-no-return]\n", "utest_closure_shutdown_block_invoke", qword_1C6C08);
    checkpoint_closure_point_of_no_return(*(*(*(a1 + 32) + 8) + 24));
  }

  if (dword_1C6BF8 != 4 && dword_1C6BF8 != 7)
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);

    checkpoint_closure_shutdown(v5, "utest_closure_shutdown: child triggered shutdown");
  }
}

void sub_4CCD8(uint64_t a1)
{
  if (dword_1C6BF8 == 7 || dword_1C6BF8 == 4)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3 [point-of-fail-forward]\n", "utest_closure_shutdown_block_invoke_3", qword_1C6C08);
    checkpoint_closure_point_of_fail_forward(*(*(*(a1 + 32) + 8) + 24));
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3\n", "utest_closure_shutdown_block_invoke_3", qword_1C6C08);
  }

  v3 = *(*(*(a1 + 32) + 8) + 24);

  checkpoint_closure_shutdown(v3, "utest_closure_shutdown: child triggered shutdown");
}

void sub_4CD8C(uint64_t a1)
{
  if (dword_1C6BF8 < 3)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1\n", "utest_immed_retry_block_invoke", qword_1C6C08);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1 [point-of-no-return]\n", "utest_immed_retry_block_invoke", qword_1C6C08);
    checkpoint_closure_point_of_no_return(*(*(*(a1 + 32) + 8) + 24));
  }

  v2 = *(*(a1 + 40) + 8);
  if (!*(v2 + 24))
  {
    *(v2 + 24) = 1;
  }
}

void sub_4CE64(uint64_t a1)
{
  if (dword_1C6BF8 == 7 || dword_1C6BF8 == 4)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3 [point-of-fail-forward]\n", "utest_immed_retry_block_invoke_3", qword_1C6C08);
    v3 = *(*(*(a1 + 32) + 8) + 24);

    checkpoint_closure_point_of_fail_forward(v3);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3\n", "utest_immed_retry_block_invoke_3", qword_1C6C08);
  }
}

void sub_4CF0C(uint64_t a1)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_4\n", "utest_immed_retry_block_invoke_4", qword_1C6C08);
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24) == 3)
  {
    *(v2 + 24) = 4;
    v3 = 192;
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

void sub_4CFE0(uint64_t a1)
{
  if (dword_1C6BF8 < 3)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1\n", "utest_excessive_retries_block_invoke", qword_1C6C08);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1 [point-of-no-return]\n", "utest_excessive_retries_block_invoke", qword_1C6C08);
    checkpoint_closure_point_of_no_return(*(*(*(a1 + 32) + 8) + 24));
  }

  v2 = *(*(a1 + 40) + 8);
  if (!*(v2 + 24))
  {
    *(v2 + 24) = 1;
  }
}

void sub_4D0B8(uint64_t a1)
{
  if (dword_1C6BF8 == 7 || dword_1C6BF8 == 4)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3 [point-of-fail-forward]\n", "utest_excessive_retries_block_invoke_3", qword_1C6C08);
    v3 = *(*(*(a1 + 32) + 8) + 24);

    checkpoint_closure_point_of_fail_forward(v3);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3\n", "utest_excessive_retries_block_invoke_3", qword_1C6C08);
  }
}

void sub_4D160(void *a1)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_4\n", "utest_excessive_retries_block_invoke_4", qword_1C6C08);
  v8 = *(a1[4] + 8);
  v9 = *(v8 + 24);
  if (v9 == 3)
  {
    *(v8 + 24) = 4;
    v9 = *(*(a1[4] + 8) + 24);
  }

  if (v9 == 4)
  {
    v10 = *(a1[5] + 8);
    v11 = *(v10 + 24);
    if (v11 > 8)
    {
      v12 = 0;
    }

    else
    {
      *(v10 + 24) = v11 + 1;
      checkpoint_closure_warning(*(*(a1[6] + 8) + 24), "warn", v2, v3, v4, v5, v6, v7);
      v12 = 192;
    }

    *(*(a1[7] + 8) + 24) = v12;
  }
}

void sub_4D27C(void *a1)
{
  if (dword_1C6BF8 < 3 || *(*(a1[4] + 8) + 24))
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1\n", "utest_many_retry_steps_block_invoke", qword_1C6C08);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1 [point-of-no-return]\n", "utest_many_retry_steps_block_invoke", qword_1C6C08);
    checkpoint_closure_point_of_no_return(*(*(a1[5] + 8) + 24));
  }

  v2 = *(a1[4] + 8);
  v3 = *(v2 + 24);
  if (v3 >= *(*(a1[6] + 8) + 24))
  {
    *(v2 + 24) = 0;
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 24) + 1;
  }

  else
  {
    *(v2 + 24) = v3 + 1;
    v4 = *(a1[7] + 8);
    v5 = 192;
  }

  *(v4 + 24) = v5;
}

void *sub_4D368(void *result)
{
  v1 = *(result[4] + 8);
  v2 = *(v1 + 24);
  if (v2 >= *(*(result[5] + 8) + 24))
  {
    *(v1 + 24) = 0;
    v3 = *(result[5] + 8);
    v4 = *(v3 + 24) + 1;
  }

  else
  {
    *(v1 + 24) = v2 + 1;
    v3 = *(result[6] + 8);
    v4 = 192;
  }

  *(v3 + 24) = v4;
  return result;
}

void sub_4D3B8(uint64_t a1)
{
  if (dword_1C6BF8 == 7 || dword_1C6BF8 == 4)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3 [point-of-fail-forward]\n", "utest_many_retry_steps_block_invoke_3", qword_1C6C08);
    v3 = *(*(*(a1 + 32) + 8) + 24);

    checkpoint_closure_point_of_fail_forward(v3);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3\n", "utest_many_retry_steps_block_invoke_3", qword_1C6C08);
  }
}

void *sub_4D460(void *result)
{
  v1 = *(result[4] + 8);
  v2 = *(v1 + 24);
  if (v2 >= *(*(result[5] + 8) + 24))
  {
    *(v1 + 24) = 0;
    v3 = *(result[5] + 8);
    v4 = *(v3 + 24) + 1;
  }

  else
  {
    *(v1 + 24) = v2 + 1;
    v3 = *(result[6] + 8);
    v4 = 192;
  }

  *(v3 + 24) = v4;
  return result;
}

void *sub_4D4B0(void *result)
{
  v1 = *(result[4] + 8);
  v2 = *(v1 + 24);
  if (v2 >= *(*(result[5] + 8) + 24))
  {
    *(v1 + 24) = 0;
    v3 = *(result[5] + 8);
    v4 = *(v3 + 24) + 1;
  }

  else
  {
    *(v1 + 24) = v2 + 1;
    v3 = *(result[6] + 8);
    v4 = 192;
  }

  *(v3 + 24) = v4;
  return result;
}

void *sub_4D500(void *result)
{
  v1 = *(result[4] + 8);
  v2 = *(v1 + 24);
  if (v2 >= *(*(result[5] + 8) + 24))
  {
    *(v1 + 24) = 0;
    v3 = *(result[5] + 8);
    v4 = *(v3 + 24) + 1;
  }

  else
  {
    *(v1 + 24) = v2 + 1;
    v3 = *(result[6] + 8);
    v4 = 192;
  }

  *(v3 + 24) = v4;
  return result;
}

void *sub_4D550(void *result)
{
  v1 = *(result[4] + 8);
  v2 = *(v1 + 24);
  if (v2 >= *(*(result[5] + 8) + 24))
  {
    *(v1 + 24) = 0;
    v3 = *(result[5] + 8);
    v4 = *(v3 + 24) + 1;
  }

  else
  {
    *(v1 + 24) = v2 + 1;
    v3 = *(result[6] + 8);
    v4 = 192;
  }

  *(v3 + 24) = v4;
  return result;
}

void *sub_4D5A0(void *result)
{
  v1 = *(result[4] + 8);
  v2 = *(v1 + 24);
  if (v2 >= *(*(result[5] + 8) + 24))
  {
    *(v1 + 24) = 0;
    v3 = *(result[5] + 8);
    v4 = *(v3 + 24) + 1;
  }

  else
  {
    *(v1 + 24) = v2 + 1;
    v3 = *(result[6] + 8);
    v4 = 192;
  }

  *(v3 + 24) = v4;
  return result;
}

void *sub_4D5F0(void *result)
{
  v1 = *(result[4] + 8);
  v2 = *(v1 + 24);
  if (v2 >= *(*(result[5] + 8) + 24))
  {
    *(v1 + 24) = 0;
    v3 = *(result[5] + 8);
    v4 = *(v3 + 24) + 1;
  }

  else
  {
    *(v1 + 24) = v2 + 1;
    v3 = *(result[6] + 8);
    v4 = 192;
  }

  *(v3 + 24) = v4;
  return result;
}

void *sub_4D640(void *result)
{
  v1 = *(result[4] + 8);
  v2 = *(v1 + 24);
  if (v2 >= *(*(result[5] + 8) + 24))
  {
    *(v1 + 24) = 0;
    v3 = *(result[5] + 8);
    v4 = *(v3 + 24) + 1;
  }

  else
  {
    *(v1 + 24) = v2 + 1;
    v3 = *(result[6] + 8);
    v4 = 192;
  }

  *(v3 + 24) = v4;
  return result;
}

void *sub_4D690(void *result)
{
  v1 = *(result[4] + 8);
  v2 = *(v1 + 24);
  if (v2 >= *(*(result[5] + 8) + 24))
  {
    *(v1 + 24) = 0;
    v3 = *(result[5] + 8);
    v4 = *(v3 + 24) + 1;
  }

  else
  {
    *(v1 + 24) = v2 + 1;
    v3 = *(result[6] + 8);
    v4 = 192;
  }

  *(v3 + 24) = v4;
  return result;
}

void sub_4D6E0(uint64_t a1)
{
  if (dword_1C6BF8 < 3)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1\n", "utest_immed_no_use_block_invoke", qword_1C6C08);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1 [point-of-no-return]\n", "utest_immed_no_use_block_invoke", qword_1C6C08);
    checkpoint_closure_point_of_no_return(*(*(*(a1 + 32) + 8) + 24));
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void sub_4D7CC(uint64_t a1)
{
  if (dword_1C6BF8 != 4 && (dword_1C6BF8 >= 7 ? (v2 = dword_1C6BFC == 0) : (v2 = 1), v2))
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3\n", "utest_immed_no_use_block_invoke_3", qword_1C6C08);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3 [point-of-fail-forward]\n", "utest_immed_no_use_block_invoke_3", qword_1C6C08);
    checkpoint_closure_point_of_fail_forward(*(*(*(a1 + 32) + 8) + 24));
  }

  *(*(*(a1 + 40) + 8) + 24) = 3;
}

void sub_4D87C(uint64_t a1)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_4\n", "utest_immed_no_use_block_invoke_4", qword_1C6C08);
  *(*(*(a1 + 32) + 8) + 24) = 4;
  ++*(*(*(a1 + 40) + 8) + 24);
  v2 = 192;
  if (dword_1C6BF8 < 8 || dword_1C6BFC == 0)
  {
    v4 = 48;
  }

  else
  {
    v4 = 56;
    if (*(*(*(a1 + 40) + 8) + 24) >= 5)
    {
      v2 = 5;
    }

    else
    {
      v4 = 48;
      v2 = 192;
    }
  }

  *(*(*(a1 + v4) + 8) + 24) = v2;
}

void sub_4D998(const __CFString *result, const __CFString *a2)
{
  if (dword_1C6BF8 < 8 || dword_1C6BFC == 0)
  {
    sub_461B4(0x1Au, result);
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = @"0";
    }

    sub_461B4(0x1Bu, v5);

    sub_461B4(0x1Cu, @"closure_step_2");
  }
}

void sub_4DA64(uint64_t a1)
{
  if (dword_1C6BF8 < 3)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_2\n", "utest_sim_failure_block_invoke_2", qword_1C6C08);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_2 [point-of-no-return]\n", "utest_sim_failure_block_invoke_2", qword_1C6C08);
    v2 = *(*(*(a1 + 32) + 8) + 24);

    checkpoint_closure_point_of_no_return(v2);
  }
}

void sub_4DB3C(uint64_t a1)
{
  if (dword_1C6BF8 != 4 && (dword_1C6BF8 >= 7 ? (v2 = dword_1C6BFC == 0) : (v2 = 1), v2))
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1\n", "utest_sim_failure_block_invoke_4", qword_1C6C08);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1 [point-of-fail-forward]\n", "utest_sim_failure_block_invoke_4", qword_1C6C08);
    checkpoint_closure_point_of_fail_forward(*(*(*(a1 + 32) + 8) + 24));
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void sub_4DC9C(uint64_t a1)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_1\n", "utest_sim_failure_exercise_block_invoke", qword_1C6C08);
  v2 = *(*(*(a1 + 32) + 8) + 24);

  checkpoint_closure_nvram_available(v2);
}

void sub_4DD00(uint64_t a1)
{
  if (dword_1C6BF8 < 3)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_2\n", "utest_sim_failure_exercise_block_invoke_2", qword_1C6C08);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_2 [point-of-no-return]\n", "utest_sim_failure_exercise_block_invoke_2", qword_1C6C08);
    v2 = *(*(*(a1 + 32) + 8) + 24);

    checkpoint_closure_point_of_no_return(v2);
  }
}

void sub_4DDD8(uint64_t a1)
{
  if (dword_1C6BF8 != 4 && (dword_1C6BF8 >= 7 ? (v2 = dword_1C6BFC == 0) : (v2 = 1), v2))
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1\n", "utest_sim_failure_exercise_block_invoke_4", qword_1C6C08);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1 [point-of-fail-forward]\n", "utest_sim_failure_exercise_block_invoke_4", qword_1C6C08);
    checkpoint_closure_point_of_fail_forward(*(*(*(a1 + 32) + 8) + 24));
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void sub_4DE88(void *a1)
{
  if (++*(*(a1[4] + 8) + 24) < 0x29u)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_2 (exercised count = %u)\n");
  }

  else
  {
    *(*(a1[5] + 8) + 24) = 57;
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_2 (failing at exercise count = %u)\n");
  }

  *(*(a1[6] + 8) + 24) = 2;
}

void sub_4DF60(uint64_t result)
{
  ++*(*(*(result + 32) + 8) + 24);
  if (dword_1C6BF8 >= 3 && *(result + 48) == 1)
  {
    *(*(*(result + 32) + 8) + 24) = 137;
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_512 (step 37) [point-of-no-return]\n", "utest_512_checkpoint_steps_block_invoke", qword_1C6C08);
    v2 = *(*(*(result + 40) + 8) + 24);

    checkpoint_closure_point_of_no_return(v2);
  }
}

void sub_4E014(const char *a1, uint64_t a2, int a3, int *a4)
{
  v34 = a4;
  v32 = 0;
  v5 = 0;
  v30 = 0;
LABEL_2:
  while (2)
  {
    bzero(v35, 0x800uLL);
    v6 = read(a2, &v35[v5], 2048 - v5);
    v7 = v6;
    if (v6)
    {
      if (v6 == -1)
      {
        v29 = __error();
        v26 = a1;
        ramrod_log_msg("\nUNIT TEST(%s) : %s %s read failed: %d\n", "utest_verify_history_file", qword_1C6C08, a1, *v29);
        v27 = 1;
        v28 = 66;
        goto LABEL_55;
      }

      v7 = v6 + v5;
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    v9 = 0;
LABEL_7:
    if (v7)
    {
      v10 = ~v9;
      v11 = 1 - v7;
      v12 = &v35[v9];
      while (*v12 != 10)
      {
        --v10;
        ++v11;
        ++v12;
        if (v11 == 1)
        {
          goto LABEL_48;
        }
      }

      v13 = 0;
      *v12 = 0;
      v14 = &v35[v9];
      do
      {
        v15 = aGmt[v13];
        v16 = v14[v13];
        if (v15 == 32)
        {
          if ((v16 - 48) >= 0xA)
          {
            goto LABEL_34;
          }
        }

        else if (v15 != v16)
        {
LABEL_34:
          ramrod_log_msg("\nUNIT TEST(%s) : %s history line with bad fixed_of_hdr >>> %s\n");
LABEL_35:
          *v34 = 68;
          goto LABEL_37;
        }

        ++v13;
      }

      while (v13 != 20);
      v17 = a2;
      v18 = 0;
      v20 = v14 + 20;
      v19 = v14[20];
      v21 = 1;
      while (1)
      {
        if (v18)
        {
          if (v19 != 125)
          {
            goto LABEL_24;
          }

          v22 = 0;
        }

        else
        {
          if (v19 != 62)
          {
LABEL_24:
            if ((v19 - 48) >= 0xA)
            {
              ramrod_log_msg("\nUNIT TEST(%s) : %s history line with bad pids >>> %s\n", "utest_verify_history_line", qword_1C6C08, v14);
              v21 = 0;
              *v34 = 68;
            }

            v22 = 1;
            goto LABEL_27;
          }

          v22 = 1;
          v18 = 1;
        }

LABEL_27:
        v19 = v20[1];
        if (!v19)
        {
          ramrod_log_msg("\nUNIT TEST(%s) : %s history line missing pid(s) >>> %s\n", "utest_verify_history_line", qword_1C6C08, v14);
          *v34 = 68;
          a2 = v17;
          goto LABEL_37;
        }

        if (!v21)
        {
          v22 = 0;
        }

        ++v20;
        if ((v22 & 1) == 0)
        {
          a2 = v17;
          if (!v21)
          {
            goto LABEL_37;
          }

          if (strncmp(v20, " CHECKPOINT ", 0xCuLL))
          {
            ramrod_log_msg("\nUNIT TEST(%s) : %s history line missing CHECKPOINT >>> %s\n");
            goto LABEL_35;
          }

          if (!strncmp(v20 + 12, "NOTICE: Pre-existing NVRAM variable: ota-uuid=AAAAAAAA-1111-BBBB-2222-CCCCCCCCCCCC", 0x52uLL) || !strncmp(v20 + 12, "NOTICE: Post-engines NVRAM variable: ota-uuid=AAAAAAAA-1111-BBBB-2222-CCCCCCCCCCCC", 0x52uLL))
          {
            v32 = 1;
          }

          if (a3)
          {
            v23 = v20 + 12;
            v24 = "FINAL-MONITOR";
            v25 = 13;
LABEL_46:
            if (!strncmp(v23, v24, v25))
            {
              ramrod_log_msg("\nUNIT TEST(%s) : %s history end found >>> %s\n", "utest_verify_history_line", qword_1C6C08, v14);
              v30 = 1;
            }
          }

          else if (qword_1C6C18)
          {
            v25 = strlen(qword_1C6C18);
            v23 = v20 + 12;
            v24 = qword_1C6C18;
            goto LABEL_46;
          }

LABEL_37:
          v9 = -v10;
          v7 = -v11;
          if (!v11)
          {
            if ((v8 & 1) == 0)
            {
LABEL_57:
              v26 = a1;
              goto LABEL_58;
            }

            goto LABEL_2;
          }

          goto LABEL_7;
        }
      }
    }

LABEL_48:
    __memcpy_chk();
    if (v8)
    {
      v5 = v7;
      continue;
    }

    break;
  }

  if (!v7)
  {
    goto LABEL_57;
  }

  v26 = a1;
  ramrod_log_msg("\nUNIT TEST(%s) : %s %s partial last line\n", "utest_verify_history_file", qword_1C6C08, a1);
  v27 = 0;
  v28 = 67;
LABEL_55:
  *v34 = v28;
  if ((v27 & 1) == 0)
  {
LABEL_58:
    if (!v32 && qword_1C6C18)
    {
      ramrod_log_msg("\nUNIT TEST(%s) : %s %s file with no ota-uuid\n", "utest_verify_history_file", qword_1C6C08, v26);
      *v34 = 69;
    }

    if (a3)
    {
      if (v30)
      {
        return;
      }

      ramrod_log_msg("\nUNIT TEST(%s) : %s %s monitor file with no FINAL\n");
    }

    else
    {
      if ((byte_1C6C16 & 1) != 0 || !qword_1C6C18 || v30)
      {
        return;
      }

      ramrod_log_msg("\nUNIT TEST(%s) : %s %s engines file with no FINISHED\n");
    }

    *v34 = 69;
  }
}

void sub_4E50C(CFErrorRef *a1, const __CFString *a2, CFIndex a3, const void *a4, const __CFString *a5, va_list a6)
{
  if (a1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v13 = Mutable;
      v14 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, a5, a6);
      if (v14)
      {
        v15 = v14;
        CFDictionaryAddValue(v13, kCFErrorDescriptionKey, v14);
        CFRelease(v15);
      }

      if (a4)
      {
        CFDictionaryAddValue(v13, kCFErrorUnderlyingErrorKey, a4);
      }

      *a1 = CFErrorCreate(kCFAllocatorDefault, a2, a3, v13);

      CFRelease(v13);
    }
  }
}

void ramrod_create_error_internal(CFErrorRef *a1, const __CFString *a2, CFIndex a3, const void *a4, char *cStr, ...)
{
  va_start(va, cStr);
  v9 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  sub_4E50C(a1, a2, a3, a4, v9, va);
  CFRelease(v9);
}

uint64_t sub_4ED94(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      sub_D9BC4(&v2, v3);
    }
  }

  return result;
}

uint64_t sub_4EF1C(char *a1, const __CFString *a2)
{
  v4 = sub_4F81C(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 != CFDataGetTypeID() || (BytePtr = CFDataGetBytePtr(v5), (Length = CFDataGetLength(v5)) != 0) && (Length > 4 || !memcmp(BytePtr, &unk_10AE0C, Length)))
    {
      v9 = 0;
      v10 = "NO";
    }

    else
    {
      v9 = 1;
      v10 = "YES";
    }

    ramrod_log_msg_cf(@"Boot Firmware Updater: property_is_nonzero(%s, %@) = %s (%@)\n", a1, a2, v10, v5);
    CFRelease(v5);
  }

  else
  {
    ramrod_log_msg_cf(@"Boot Firmware Updater: property_is_nonzero(%s, %@) = %s (%@)\n", a1, a2, "NO", 0);
    return 0;
  }

  return v9;
}

BOOL sub_4F06C(const __CFString *a1)
{
  v2 = sub_4F81C("IODeviceTree:/defaults", a1);
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  ramrod_log_msg_cf(@"Boot Firmware Updater: property_exists(%s, %@) = %s\n", "IODeviceTree:/defaults", a1, v4);
  return v3 != 0;
}

void sub_4F64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_4F680(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

CFTypeRef sub_4F81C(char *path, const __CFString *a2)
{
  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, path);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  CFProperty = IORegistryEntryCreateCFProperty(v3, a2, kCFAllocatorDefault, 0);
  IOObjectRelease(v4);
  return CFProperty;
}

uint64_t MSUBootFirmwareFindNamespace(io_registry_entry_t a1, uint64_t a2)
{
  entryID = 0;
  IORegistryEntryGetRegistryEntryID(a1, &entryID);
  IOServiceWaitQuiet(a1, 0);
  v11[0] = @"IOParentMatch";
  v4 = IORegistryEntryIDMatching(entryID);
  v11[1] = @"IOPropertyMatch";
  v12[0] = v4;
  v9 = a2;
  v10 = [NSNumber numberWithBool:1];
  v12[1] = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (v5)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  return IOServiceGetMatchingService(kIOMasterPortDefault, v6);
}

void sub_513C0(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{

  ramrod_create_error_cf(a1, a2, 2, 0, a3, a4, a5, a6, a7);
}

uint64_t ramrod_filemanger_path_exists(const char *a1, BOOL *a2)
{
  memset(&v5, 0, sizeof(v5));
  if (lstat(a1, &v5))
  {
    v3 = __error();
    ramrod_log_msg("%s: Failed to stat file with error: %d\n", "Boolean ramrod_filemanger_path_exists(const char *, Boolean *)", *v3);
    return 0;
  }

  else
  {
    if (a2)
    {
      *a2 = (v5.st_mode & 0x4000) != 0;
    }

    return 1;
  }
}

uint64_t ramrod_filemanger_path_exists_cf(const __CFString *a1, BOOL *a2)
{
  bzero(buffer, 0x400uLL);
  CFStringGetCString(a1, buffer, 1024, 0x8000100u);
  return ramrod_filemanger_path_exists(buffer, a2);
}

uint64_t ramrod_filemanger_create_directory(const char *a1, int a2, uint64_t a3, int *a4)
{
  if (a2)
  {

    return _ramrod_filemanger_create_directory_recursive(a1, a3, a4);
  }

  else if (mkdir(a1, a3))
  {
    if (a4)
    {
      v6 = __error();
      result = 0;
      *a4 = *v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t _ramrod_filemanger_create_directory_recursive(const char *a1, uint64_t a2, int *a3)
{
  bzero(v8, 0x400uLL);
  if (!dirname_r(a1, v8))
  {
    return 1;
  }

  if (ramrod_filemanger_path_exists(v8, 0) || (result = _ramrod_filemanger_create_directory_recursive(v8, a2, a3), result))
  {
    if (mkdir(a1, a2))
    {
      if (!a3)
      {
        return 0;
      }

      v7 = __error();
      result = 0;
      *a3 = *v7;
      return result;
    }

    return 1;
  }

  return result;
}

uint64_t ramrod_filemanger_create_directory_cf(const __CFString *a1, int a2, uint64_t a3, CFErrorRef *a4)
{
  bzero(code_4, 0x400uLL);
  code = 0;
  CFStringGetCString(a1, code_4, 1024, 0x8000100u);
  v8 = ramrod_filemanger_create_directory(code_4, a2, a3, &code);
  v9 = v8;
  if (a4 && !v8)
  {
    *a4 = CFErrorCreate(0, kCFErrorDomainPOSIX, code, 0);
  }

  return v9;
}

uint64_t ramrod_load_png(const char *a1, void *a2, unint64_t *a3, void *a4)
{
  memset(&v28, 0, sizeof(v28));
  v26 = 0;
  v27 = 0;
  __p = 0;
  v24 = 0;
  v25 = 0;
  v8 = open(a1, 0, 0);
  v9 = v8;
  if (v8 < 0)
  {
    v12 = __error();
    v13 = strerror(*v12);
    ramrod_log_msg("unable to open image '%s': %s\n", a1, v13);
    return 0;
  }

  if (fstat(v8, &v28))
  {
    v10 = __error();
    strerror(*v10);
    ramrod_log_msg("unable to stat image '%s': %s\n");
LABEL_4:
    v11 = 0;
    goto LABEL_14;
  }

  st_size = v28.st_size;
  v15 = mmap(0, v28.st_size, 1, 2, v9, 0);
  if (v15 == -1)
  {
    v16 = __error();
    strerror(*v16);
    ramrod_log_msg("unable to mmap image '%s': %s\n");
    goto LABEL_4;
  }

  if (picoPNG::decodePNG(&__p, &v27, &v26, v15, st_size, 1))
  {
    ramrod_log_msg("unable to decode image '%s'\n", a1);
  }

  else
  {
    v17 = __p;
    v18 = v24 - __p;
    v19 = malloc(v24 - __p);
    if (v19)
    {
      v20 = v19;
      memcpy(v19, v17, v18);
      v21 = v26;
      *a2 = v27;
      *a3 = v21;
      *a4 = v20;
      v11 = 1;
      goto LABEL_13;
    }

    ramrod_log_msg("unable to malloc destination image buffer\n");
  }

  v11 = 0;
LABEL_13:
  munmap(v15, st_size);
LABEL_14:
  close(v9);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  return v11;
}

void sub_51900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ramrod_ticket_sprint_hex(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 <= 2 * a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v4 = result;
    LODWORD(result) = 0;
    v5 = 1;
    do
    {
      v6 = *v4++;
      v7 = result + 1;
      *(a3 + result) = a0123456789abcd_0[v6 >> 4];
      result = (result + 2);
      *(a3 + v7) = a0123456789abcd_0[v6 & 0xF];
      v8 = v5++;
    }

    while (v8 < a2);
  }

  else
  {
    result = 0;
  }

  *(a3 + result) = 0;
  return result;
}

const __CFString *ramrod_ticket_copy_hash_data(const void *a1, CFErrorRef *a2)
{
  ramrod_log_msg("entering %s\n", "ramrod_ticket_copy_hash_data");
  if (a1)
  {
    v7 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
    if (v7)
    {
      v11 = v7;
      v12 = sub_51A6C(a1, v7, a2);
      IOObjectRelease(v11);
      return v12;
    }

    ramrod_create_error_cf(a2, kCFErrorDomainMach, -536870911, 0, @"%s: uanble to find chosen node", v8, v9, v10, "ramrod_ticket_copy_hash_data");
  }

  else
  {
    ramrod_create_error_cf(a2, @"RamrodErrorDomain", 8, 0, @"%s: no ticket available", v4, v5, v6, "ramrod_ticket_copy_hash_data");
  }

  return 0;
}

const __CFString *sub_51A6C(const void *a1, io_registry_entry_t a2, CFErrorRef *a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 != CFDataGetTypeID())
  {
    ramrod_create_error_cf(a3, @"RamrodErrorDomain", 3, 0, @"%s: root ticket type mismatch", v7, v8, v9, "_ticket_copy_hash_data_internal");
    return 0;
  }

  v35 = 0u;
  v36 = 0u;
  *md = 0u;
  *buffer = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  CFProperty = IORegistryEntryCreateCFProperty(a2, @"crypto-hash-method", kCFAllocatorDefault, 0);
  v11 = CFProperty;
  if (CFProperty)
  {
    if (*CFDataGetBytePtr(CFProperty) != 828467315)
    {
      if (*CFDataGetBytePtr(v11) != 0x3438332D32616873)
      {
        v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"img4CryptoHashMethodData not recognized: %@", v11);
        if (CFStringGetCString(v12, buffer, 128, 0x8000100u))
        {
          ramrod_log_msg("%s\n", buffer);
          v16 = @"%s: %s";
        }

        else
        {
          v16 = @"%s: img4CryptoHashMethodData not recognized (unable to convert to c string)";
        }

        ramrod_create_error_cf(a3, @"RamrodErrorDomain", 4, 0, v16, v13, v14, v15, "_ticket_copy_hash_data_internal");
        if (v12)
        {
          CFRelease(v12);
          v12 = 0;
        }

LABEL_19:
        CFRelease(v11);
        return v12;
      }

      ramrod_log_msg("crypto-hash-method found. Using SHA2-384\n");
      BytePtr = CFDataGetBytePtr(a1);
      Length = CFDataGetLength(a1);
      CC_SHA384(BytePtr, Length, md);
      v19 = 48;
      goto LABEL_11;
    }

    ramrod_log_msg("crypto-hash-method found. Using SHA1\n");
  }

  else
  {
    ramrod_log_msg("crypto-hash-method not found, defaulting to SHA1\n");
  }

  v17 = CFDataGetBytePtr(a1);
  v18 = CFDataGetLength(a1);
  CC_SHA1(v17, v18, md);
  v19 = 20;
LABEL_11:
  v12 = CFDataCreate(kCFAllocatorDefault, md, v19);
  if (!v12)
  {
    ramrod_create_error_cf(a3, @"RamrodErrorDomain", 6, 0, @"%s: unable to create CFData of ticket hash", v20, v21, v22, "_ticket_copy_hash_data_internal");
  }

  if (v11)
  {
    goto LABEL_19;
  }

  return v12;
}

const __CFString *ramrod_ticket_copy_hash_string(const void *a1, CFErrorRef *a2)
{
  result = ramrod_ticket_copy_hash_data(a1, a2);
  if (result)
  {
    v4 = result;
    v5 = sub_51D6C(result, a2);
    CFRelease(v4);
    return v5;
  }

  return result;
}

CFStringRef sub_51D6C(const __CFData *a1, CFErrorRef *a2)
{
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *cStr = 0u;
  v12 = 0u;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  ramrod_ticket_sprint_hex(BytePtr, Length, cStr, 0x80uLL);
  v9 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (!v9)
  {
    ramrod_create_error_cf(a2, @"RamrodErrorDomain", 6, 0, @"%s: unable to create CFString of ticket hash", v6, v7, v8, "_ticket_copy_hash_hex_string_internal");
  }

  return v9;
}

uint64_t ramrod_ticket_update_verify(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, CFErrorRef *a4, int a5)
{
  ramrod_log_msg("entering %s\n", "ramrod_ticket_update_verify");
  if (qword_1C6C78)
  {
    v12 = a5 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: attempt to update ticket more than once", v9, v10, v11, "ramrod_ticket_update_verify");
    return 0;
  }

  v13 = a2(a3);
  if (!v13)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 8, 0, @"%s: no ticket available", v14, v15, v16, "ramrod_ticket_update_verify");
    return 0;
  }

  v17 = v13;
  v18 = CFGetTypeID(v13);
  if (v18 != CFDataGetTypeID())
  {
    CFRelease(v17);
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, @"%s: root ticket type mismatch", v47, v48, v49, "ramrod_ticket_update_verify");
    return 0;
  }

  v19 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  if (!v19)
  {
    ramrod_create_error_cf(a4, kCFErrorDomainMach, -536870911, 0, @"%s: uanble to find chosen node", v20, v21, v22, "ramrod_ticket_update_verify");
    CFRelease(v17);
    return 0;
  }

  v23 = v19;
  ramrod_log_msg("looking up boot manifest hash\n");
  CFProperty = IORegistryEntryCreateCFProperty(v23, @"boot-manifest-hash", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, @"%s: missing root ticket hash", v25, v26, v27, "ramrod_ticket_update_verify");
    CFRelease(v17);
    IOObjectRelease(v23);
    return 0;
  }

  v28 = CFProperty;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  *buffer = 0u;
  v59 = 0u;
  v29 = CFGetTypeID(CFProperty);
  if (v29 != CFDataGetTypeID())
  {
    v52 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", v28);
    if (CFStringGetCString(v52, buffer, 128, 0x8000100u))
    {
      ramrod_log_msg("device tree ticket-hash type mismatch: %s\n", buffer);
    }

    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, @"%s: device tree ticket-hash type mismatch: %s", v53, v54, v55, "ramrod_ticket_update_verify");
    CFRelease(v52);
    v50 = 0;
    v33 = 0;
    goto LABEL_27;
  }

  BytePtr = CFDataGetBytePtr(v28);
  Length = CFDataGetLength(v28);
  ramrod_ticket_sprint_hex(BytePtr, Length, buffer, 0x80uLL);
  ramrod_log_msg("device tree ticket_hash: %s\n", buffer);
  v32 = sub_51A6C(v17, v23, a4);
  v33 = v32;
  if (!v32)
  {
    v50 = 0;
LABEL_27:
    v35 = 0;
    goto LABEL_35;
  }

  v57 = CFDataGetLength(v32);
  v34 = sub_51D6C(v33, a4);
  v35 = v34;
  if (v34)
  {
    if (CFStringGetCString(v34, buffer, 128, 0x8000100u))
    {
      ramrod_log_msg("computed ticket_hash   : %s\n", buffer);
      v39 = CFDataGetLength(v28);
      if (v39 == v57)
      {
        if (!a5 || (v43 = v39, v44 = CFDataGetBytePtr(v28), v45 = CFDataGetBytePtr(v33), !memcmp(v44, v45, v43)))
        {
          v56 = CFDataGetLength(v17);
          ramrod_log_msg("received valid ticket (%lu bytes)\n", v56);
          if (qword_1C6C78)
          {
            CFRelease(qword_1C6C78);
          }

          qword_1C6C78 = CFRetain(v17);
          v50 = 1;
          goto LABEL_35;
        }

        v46 = @"%s: invalid ticket";
      }

      else
      {
        v46 = @"%s: root ticket hash of unexpected length";
      }

      ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, v46, v40, v41, v42, "ramrod_ticket_update_verify");
    }

    else
    {
      ramrod_create_error_cf(a4, @"RamrodErrorDomain", 5, 0, @"%s: (unable to convert ticket hash to c string)", v36, v37, v38, "ramrod_ticket_update_verify");
    }
  }

  v50 = 0;
LABEL_35:
  CFRelease(v17);
  CFRelease(v28);
  IOObjectRelease(v23);
  if (v33)
  {
    CFRelease(v33);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  return v50;
}

uint64_t ramrod_recovery_os_ticket_update_verify(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, CFErrorRef *a4, int a5)
{
  ramrod_log_msg("entering %s\n", "ramrod_recovery_os_ticket_update_verify");
  if (qword_1C6C80)
  {
    v12 = a5 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: attempt to update ticket more than once", v9, v10, v11, "ramrod_recovery_os_ticket_update_verify");
    return 0;
  }

  v13 = a2(a3);
  if (!v13)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 8, 0, @"%s: no ticket available", v14, v15, v16, "ramrod_recovery_os_ticket_update_verify");
    return 0;
  }

  v17 = v13;
  v18 = CFGetTypeID(v13);
  if (v18 != CFDataGetTypeID())
  {
    CFRelease(v17);
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, @"%s: root ticket type mismatch", v47, v48, v49, "ramrod_recovery_os_ticket_update_verify");
    return 0;
  }

  v19 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  if (!v19)
  {
    ramrod_create_error_cf(a4, kCFErrorDomainMach, -536870911, 0, @"%s: uanble to find chosen node", v20, v21, v22, "ramrod_recovery_os_ticket_update_verify");
    CFRelease(v17);
    return 0;
  }

  v23 = v19;
  ramrod_log_msg("looking up boot manifest hash\n");
  CFProperty = IORegistryEntryCreateCFProperty(v23, @"boot-manifest-hash", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, @"%s: missing root ticket hash", v25, v26, v27, "ramrod_recovery_os_ticket_update_verify");
    CFRelease(v17);
    IOObjectRelease(v23);
    return 0;
  }

  v28 = CFProperty;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  *buffer = 0u;
  v59 = 0u;
  v29 = CFGetTypeID(CFProperty);
  if (v29 != CFDataGetTypeID())
  {
    v52 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", v28);
    if (CFStringGetCString(v52, buffer, 128, 0x8000100u))
    {
      ramrod_log_msg("device tree ticket-hash type mismatch: %s\n", buffer);
    }

    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, @"%s: device tree ticket-hash type mismatch: %s", v53, v54, v55, "ramrod_recovery_os_ticket_update_verify");
    CFRelease(v52);
    v50 = 0;
    v33 = 0;
    goto LABEL_27;
  }

  BytePtr = CFDataGetBytePtr(v28);
  Length = CFDataGetLength(v28);
  ramrod_ticket_sprint_hex(BytePtr, Length, buffer, 0x80uLL);
  ramrod_log_msg("device tree ticket_hash: %s\n", buffer);
  v32 = sub_51A6C(v17, v23, a4);
  v33 = v32;
  if (!v32)
  {
    v50 = 0;
LABEL_27:
    v35 = 0;
    goto LABEL_35;
  }

  v57 = CFDataGetLength(v32);
  v34 = sub_51D6C(v33, a4);
  v35 = v34;
  if (v34)
  {
    if (CFStringGetCString(v34, buffer, 128, 0x8000100u))
    {
      ramrod_log_msg("computed ticket_hash   : %s\n", buffer);
      v39 = CFDataGetLength(v28);
      if (v39 == v57)
      {
        if (!a5 || (v43 = v39, v44 = CFDataGetBytePtr(v28), v45 = CFDataGetBytePtr(v33), !memcmp(v44, v45, v43)))
        {
          v56 = CFDataGetLength(v17);
          ramrod_log_msg("received valid ticket (%lu bytes)\n", v56);
          if (qword_1C6C80)
          {
            CFRelease(qword_1C6C80);
          }

          qword_1C6C80 = CFRetain(v17);
          v50 = 1;
          goto LABEL_35;
        }

        v46 = @"%s: invalid ticket";
      }

      else
      {
        v46 = @"%s: root ticket hash of unexpected length";
      }

      ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, v46, v40, v41, v42, "ramrod_recovery_os_ticket_update_verify");
    }

    else
    {
      ramrod_create_error_cf(a4, @"RamrodErrorDomain", 5, 0, @"%s: (unable to convert ticket hash to c string)", v36, v37, v38, "ramrod_recovery_os_ticket_update_verify");
    }
  }

  v50 = 0;
LABEL_35:
  CFRelease(v17);
  CFRelease(v28);
  IOObjectRelease(v23);
  if (v33)
  {
    CFRelease(v33);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  return v50;
}

uint64_t ramrod_ticket_write_explicit(uint64_t a1, const __CFData *a2, CFErrorRef *a3)
{
  ramrod_log_msg("entering %s\n", "ramrod_ticket_write_explicit");
  if (!a2)
  {
    ramrod_log_msg("AP ticket not found, exiting");
    return 1;
  }

  bzero(v23, 0x400uLL);
  memset(&v22, 0, sizeof(v22));
  __strlcpy_chk();
  __strlcat_chk();
  if (stat(v23, &v22) == -1)
  {
    ramrod_log_msg("%s does not exist, skipping ticket installation\n");
    return 1;
  }

  __strlcat_chk();
  if (!lstat(v23, &v22))
  {
    unlink(v23);
  }

  v5 = open(v23, 1537, 420);
  if (v5 == -1)
  {
    v11 = __error();
    v12 = strerror(*v11);
    ramrod_log_msg("open error: %s\n", v12);
    ramrod_create_error_cf(a3, @"RamrodErrorDomain", 11, 0, @"%s: failed to open file for writing", v13, v14, v15, "ramrod_ticket_write_explicit");
    return 0;
  }

  else
  {
    v6 = v5;
    ramrod_log_msg("writing ticket to %s\n", v23);
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    v9 = write(v6, BytePtr, Length);
    if (v9 == -1)
    {
      v16 = __error();
      v17 = strerror(*v16);
      ramrod_log_msg("write error: %s\n", v17);
      ramrod_create_error_cf(a3, @"RamrodErrorDomain", 7, 0, @"%s: failed to write ticket", v18, v19, v20, "ramrod_ticket_write_explicit");
      v10 = 0;
    }

    else
    {
      ramrod_log_msg("Wrote %zu bytes to %s\n", v9, v23);
      v10 = 1;
    }

    close(v6);
  }

  return v10;
}

uint64_t ramrod_recovery_os_ticket_write(const char *a1, CFErrorRef *a2)
{
  ramrod_log_msg("entering %s\n", "ramrod_recovery_os_ticket_write");
  if (qword_1C6C80)
  {
    bzero(__str, 0x400uLL);
    snprintf(__str, 0x400uLL, "%s/%s", a1, "apticket.der");
    v4 = open(__str, 1537, 420);
    if (v4 == -1)
    {
      v10 = __error();
      v11 = strerror(*v10);
      ramrod_log_msg("open error: %s\n", v11);
      ramrod_create_error_cf(a2, @"RamrodErrorDomain", 11, 0, @"%s: failed to open file for writing", v12, v13, v14, "ramrod_recovery_os_ticket_write");
      return 0;
    }

    else
    {
      v5 = v4;
      ramrod_log_msg("writing recovery OS ticket to %s\n", __str);
      BytePtr = CFDataGetBytePtr(qword_1C6C80);
      Length = CFDataGetLength(qword_1C6C80);
      v8 = write(v5, BytePtr, Length);
      if (v8 == -1)
      {
        v15 = __error();
        v16 = strerror(*v15);
        ramrod_log_msg("write error: %s\n", v16);
        ramrod_create_error_cf(a2, @"RamrodErrorDomain", 7, 0, @"%s: failed to write ticket", v17, v18, v19, "ramrod_recovery_os_ticket_write");
        v9 = 0;
      }

      else
      {
        ramrod_log_msg("Wrote %zu bytes to %s\n", v8, __str);
        v9 = 1;
      }

      close(v5);
    }
  }

  else
  {
    ramrod_log_msg("AP recovery OS ticket not found, exiting");
    return 1;
  }

  return v9;
}

CFTypeRef ramrod_ticket_copy()
{
  result = qword_1C6C78;
  if (qword_1C6C78)
  {
    return CFRetain(qword_1C6C78);
  }

  return result;
}

CFTypeRef ramrod_recovery_os_ticket_copy()
{
  result = qword_1C6C80;
  if (qword_1C6C80)
  {
    return CFRetain(qword_1C6C80);
  }

  return result;
}

const __CFString *ramrod_ticket_copy_nsih(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  if (a2)
  {
    v2 = a1(a2);
LABEL_5:
    v3 = v2;
    v4 = ramrod_ticket_copy_hash_string(v2, 0);
    if (v3)
    {
      CFRelease(v3);
    }

    return v4;
  }

  if (qword_1C6C78)
  {
    v2 = CFRetain(qword_1C6C78);
    goto LABEL_5;
  }

  return ramrod_ticket_copy_hash_string(0, 0);
}

uint64_t ramrod_ticket_has_BOOLean_entitlement(unsigned int a1)
{
  if (qword_1C6C78)
  {
    CFDataGetBytePtr(qword_1C6C78);
    CFDataGetLength(qword_1C6C78);
    if (Img4DecodeInitManifest())
    {
      ramrod_log_msg("%s: failed to parse AP ticket as Img4 manifest\n");
    }

    else
    {
      Img4DecodeGetBooleanFromSection();
    }
  }

  else
  {
    ramrod_log_msg("%s: no ticket\n");
  }

  return 0;
}

CFDataRef ramrod_copy_manifest_digest_data_from_img4(const void *a1)
{
  if (!a1)
  {
    ramrod_log_msg("%s: no img4Data\n");
    return 0;
  }

  TypeID = CFDataGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    ramrod_log_msg("img4Data not CFData\n");
    return 0;
  }

  v3 = MGCopyAnswer();
  if (v3)
  {
    v4 = v3;
    if (CFStringCompare(v3, @"sha1", 1uLL))
    {
      v5 = 48;
    }

    else
    {
      v5 = 20;
    }

    CFRelease(v4);
  }

  else
  {
    ramrod_log_msg("%s: unable to get img4 hash method, assuming SHA-384\n", "ramrod_copy_manifest_digest_data_from_img4");
    v5 = 48;
  }

  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *bytes = 0u;
  CFDataGetBytePtr(a1);
  CFDataGetLength(a1);
  if (Img4DecodeInit())
  {
    ramrod_log_msg("%s: failed to parse img4Data as Img4\n");
    return 0;
  }

  if (Img4DecodeCopyManifestDigest())
  {
    ramrod_log_msg("%s: failed to get manifest from Img4 derstat=%d\n");
    return 0;
  }

  result = CFDataCreate(kCFAllocatorDefault, bytes, v5);
  if (!result)
  {
    ramrod_log_msg("%s: failed to allocated property data\n");
    return 0;
  }

  return result;
}

uint64_t sub_53004(const void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    ramrod_log_msg("data is NULL\n", a2, a3, a4, a5);
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    ramrod_log_msg("length is 0\n", 0, a3, a4, a5);
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    ramrod_log_msg("digestBuffer is NULL\n", a2, 0, a4, a5);
    return 0xFFFFFFFFLL;
  }

  if (!a5)
  {
    ramrod_log_msg("implementation is NULL\n", a2, a3, a4, 0);
    return 0xFFFFFFFFLL;
  }

  if (a4 != 48)
  {
    ramrod_log_msg("digestBufferLength != CC_SHA384_DIGEST_LENGTH\n", a2, a3, a4, a5);
    return 0xFFFFFFFFLL;
  }

  CC_SHA384(a1, a2, a3);
  return 0;
}

uint64_t sub_5307C(const void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    ramrod_log_msg("data is NULL\n", a2, a3, a4, a5);
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    ramrod_log_msg("length is 0\n", 0, a3, a4, a5);
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    ramrod_log_msg("digestBuffer is NULL\n", a2, 0, a4, a5);
    return 0xFFFFFFFFLL;
  }

  if (!a5)
  {
    ramrod_log_msg("implementation is NULL\n", a2, a3, a4, 0);
    return 0xFFFFFFFFLL;
  }

  if (a4 != 20)
  {
    ramrod_log_msg("digestBufferLength != CC_SHA1_DIGEST_LENGTH\n", a2, a3, a4, a5);
    return 0xFFFFFFFFLL;
  }

  CC_SHA1(a1, a2, a3);
  return 0;
}

const __CFData *ramrod_copy_manifest_digest_from_img4(const void *a1)
{
  result = ramrod_copy_manifest_digest_data_from_img4(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_51D6C(result, 0);
    CFRelease(v2);
    return v3;
  }

  return result;
}

CFDataRef ramrod_ticket_copy_data_object_property_from_ticket_data(const __CFData *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    ramrod_log_msg("%s: no ticket\n");
    return 0;
  }

  CFDataGetBytePtr(a1);
  CFDataGetLength(a1);
  if (Img4DecodeInitManifest())
  {
    ramrod_log_msg("%s: failed to parse AP ticket as Img4 manifest\n");
    return 0;
  }

  if (Img4DecodeGetObjectPropertyData())
  {
    ramrod_log_msg("%s: failed to get data property from Img4 manifest\n");
    return 0;
  }

  result = CFDataCreate(kCFAllocatorDefault, 0, 0);
  if (!result)
  {
    ramrod_log_msg("%s: failed to allocated digest data\n");
    return 0;
  }

  return result;
}

CFDataRef ramrod_recovery_os_ticket_copy_data_object_property(uint64_t a1, uint64_t a2)
{
  if (!qword_1C6C80)
  {
    ramrod_log_msg("%s: no ticket\n");
    return 0;
  }

  CFDataGetBytePtr(qword_1C6C80);
  CFDataGetLength(qword_1C6C80);
  if (Img4DecodeInitManifest())
  {
    ramrod_log_msg("%s: failed to parse AP ticket as Img4 manifest\n");
    return 0;
  }

  if (Img4DecodeGetObjectPropertyData())
  {
    ramrod_log_msg("%s: failed to get data property from Img4 manifest\n");
    return 0;
  }

  result = CFDataCreate(kCFAllocatorDefault, 0, 0);
  if (!result)
  {
    ramrod_log_msg("%s: failed to allocated digest data\n");
    return 0;
  }

  return result;
}

uint64_t ramrod_ticket_copy_BOOLean_object_property(uint64_t a1, uint64_t a2)
{
  if (qword_1C6C78)
  {
    CFDataGetBytePtr(qword_1C6C78);
    CFDataGetLength(qword_1C6C78);
    if (Img4DecodeInitManifest())
    {
      ramrod_log_msg("%s: failed to parse AP ticket as Img4 manifest\n");
    }

    else if (Img4DecodeGetObjectPropertyBoolean())
    {
      ramrod_log_msg("%s: failed to get data property from Img4 manifest\n");
    }
  }

  else
  {
    ramrod_log_msg("%s: no ticket\n");
  }

  return 0;
}

CFDataRef ramrod_ticket_copy_data_manifest_property(unsigned int a1)
{
  if (!qword_1C6C78)
  {
    ramrod_log_msg("%s: no ticket\n");
    return 0;
  }

  CFDataGetBytePtr(qword_1C6C78);
  CFDataGetLength(qword_1C6C78);
  if (Img4DecodeInitManifest())
  {
    ramrod_log_msg("%s: failed to parse AP ticket as Img4 manifest\n");
    return 0;
  }

  if (Img4DecodeGetDataFromSection())
  {
    ramrod_log_msg("%s: failed to get data manifest property from Img4 manifest\n");
    return 0;
  }

  result = CFDataCreate(kCFAllocatorDefault, 0, 0);
  if (!result)
  {
    ramrod_log_msg("%s: failed to allocated digest data\n");
    return 0;
  }

  return result;
}

CFDataRef ramrod_ticket_copy_manifest_signature_certificate()
{
  if (!qword_1C6C78)
  {
    ramrod_log_msg("%s: no ticket\n");
    return 0;
  }

  CFDataGetBytePtr(qword_1C6C78);
  CFDataGetLength(qword_1C6C78);
  if (Img4DecodeInitManifest())
  {
    ramrod_log_msg("%s: failed to parse AP ticket as Img4 manifest\n");
    return 0;
  }

  BytePtr = CFDataGetBytePtr(qword_1C6C78);
  Length = CFDataGetLength(qword_1C6C78);
  result = CFDataCreate(kCFAllocatorDefault, 0, &BytePtr[Length]);
  if (!result)
  {
    ramrod_log_msg("%s: failed to create sigCertData\n");
    return 0;
  }

  return result;
}

uint64_t ramrod_clear_ap_nonce(CFErrorRef *a1)
{
  *mainPort = 0;
  ramrod_log_msg("entering %s\n", "ramrod_clear_ap_nonce");
  v2 = IOMasterPort(0, &mainPort[1]);
  if (v2)
  {
    v6 = v2;
    ramrod_create_error_cf(a1, @"RamrodErrorDomain", 9, 0, @"%s: IOMasterPort failed: 0x%X", v3, v4, v5, "ramrod_clear_ap_nonce");
  }

  else
  {
    v7 = IOServiceMatching("AppleMobileApNonce");
    if (v7)
    {
      MatchingService = IOServiceGetMatchingService(mainPort[1], v7);
      if (MatchingService)
      {
        v15 = MatchingService;
        v16 = IOServiceOpen(MatchingService, mach_task_self_, 0, mainPort);
        if (v16)
        {
          v6 = v16;
          ramrod_create_error_cf(a1, @"RamrodErrorDomain", 11, 0, @"%s: IOServiceOpen for class %s failed: 0x%X", v17, v18, v19, "ramrod_clear_ap_nonce");
        }

        else
        {
          v6 = IOConnectCallStructMethod(mainPort[0], 0xC9u, 0, 0, 0, 0);
          if (v6)
          {
            ramrod_create_error_cf(a1, @"RamrodErrorDomain", 12, 0, @"%s: Clear Nonce failed: 0x%X", v20, v21, v22, "ramrod_clear_ap_nonce");
          }

          v23 = IOServiceClose(mainPort[0]);
          if (v23)
          {
            ramrod_log_msg("IOServiceClose for class %s failed: 0x%X\n", "AppleMobileApNonce", v23);
          }
        }

        IOObjectRelease(v15);
      }

      else
      {
        v6 = 3758097136;
        ramrod_create_error_cf(a1, @"RamrodErrorDomain", 4, 0, @"%s: IOServiceGetMatchingService for class %s failed", v12, v13, v14, "ramrod_clear_ap_nonce");
      }
    }

    else
    {
      v6 = 3758097136;
      ramrod_create_error_cf(a1, @"RamrodErrorDomain", 10, 0, @"%s: IOServiceMatching(%s) failed", v8, v9, v10, "ramrod_clear_ap_nonce");
    }

    mach_port_deallocate(mach_task_self_, mainPort[1]);
  }

  return v6;
}

RamrodOSMessagePlist *ramrod_message_plist_create(uint64_t a1, void *a2, void *a3)
{
  v8 = 0;
  v5 = [[RamrodOSMessagePlist alloc] initWithPropertyList:a1 error:&v8];
  v6 = v8;
  if (a2 && v5)
  {
    *a2 = [(RamrodOSMessagePlist *)v5 length];
  }

  if (a3 && v6)
  {
    *a3 = v6;
  }

  return v5;
}

uint64_t debugserver_status()
{
  result = access(DEBUGSERVER_PATH, 1);
  if (result)
  {
    return *__error();
  }

  return result;
}

void debugserver_wait_for_attach(int a1)
{
  *v5 = 0xE00000001;
  v6 = 1;
  v7 = a1;
  ramrod_log_msg("waiting for debugger (PID %d)...\n", a1);
  bzero(v3, 0x288uLL);
  v2 = 648;
  sysctl(v5, 4u, v3, &v2, 0, 0);
  while ((v4 & 8) == 0)
  {
    usleep(0x186A0u);
    bzero(v3, 0x288uLL);
    v2 = 648;
    sysctl(v5, 4u, v3, &v2, 0, 0);
  }

  ramrod_log_msg("debugger attached to PID %d, continuing\n", a1);
}

void debugserver_start_listener(unsigned __int16 a1, int a2, NSObject *a3)
{
  v6 = DEBUGSERVER_PATH;
  v7 = strrchr(DEBUGSERVER_PATH, 47);
  if (v7)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v6;
  }

  v17 = a1;
  v9 = create_listen_socket_sigpipe(&v17, 1);
  if (v9 == -1)
  {
    ramrod_log_msg("%s could not listen on port %hd\n", v8, v17);
  }

  else
  {
    v10 = v9;
    v11 = dispatch_source_create(&_dispatch_source_type_read, v9, 0, a3);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3254779904;
    handler[2] = sub_54090;
    handler[3] = &unk_1AE268;
    v16 = v10;
    handler[4] = v11;
    dispatch_source_set_cancel_handler(v11, handler);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3254779904;
    v12[2] = sub_540CC;
    v12[3] = &unk_1AE2C8;
    v13 = v10;
    v14 = a2;
    v12[4] = a3;
    v12[5] = v6;
    v12[6] = v8;
    dispatch_source_set_event_handler(v11, v12);
    ramrod_log_msg("%s listening on port %hd (PID %d)\n", v8, v17, a2);
    dispatch_activate(v11);
  }
}

void sub_54090(uint64_t a1)
{
  close(*(a1 + 40));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void sub_540CC(uint64_t a1)
{
  v2 = accept_socket_connection(*(a1 + 56), 2, 0);
  if (v2 != -1)
  {
    v3 = v2;
    *__str = 0u;
    v24 = 0u;
    snprintf(__str, 0x20uLL, "--attach=%d", *(a1 + 60));
    __argv[0] = *(a1 + 40);
    __argv[1] = "--fd=0";
    if (*(a1 + 60) <= 0)
    {
      v4 = 0;
    }

    else
    {
      v4 = __str;
    }

    __argv[2] = v4;
    __argv[3] = 0;
    v19 = 0;
    posix_spawn_file_actions_init(&v19);
    posix_spawn_file_actions_adddup2(&v19, v3, 0);
    posix_spawn_file_actions_addinherit_np(&v19, 1);
    posix_spawn_file_actions_addinherit_np(&v19, 2);
    v18 = 0;
    posix_spawnattr_init(&v18);
    posix_spawnattr_setflags(&v18, 16518);
    if (sub_D5200(2, 16, 0, 0))
    {
      posix_spawnattr_set_crash_behavior_np();
    }

    v5 = *(a1 + 40);
    v21 = -1;
    v6 = mmap(0, 8uLL, 3, 4097, -1, 0);
    if (v6)
    {
      v7 = v6;
      v8 = fork();
      if (v8 == -1)
      {
        v11 = *__error();
        v10 = -1;
      }

      else
      {
        v9 = v8;
        if (!v8)
        {
          *v7 = posix_spawn(&v21, v5, &v19, &v18, __argv, 0);
          v7[1] = v21;
          _exit(0);
        }

        v20 = -1;
          ;
        }

        if (v20)
        {
          v10 = -1;
          v11 = -1;
        }

        else
        {
          v11 = *v7;
          v10 = v7[1];
        }
      }

      munmap(v7, 8uLL);
      if (v11)
      {
        close_socket_with_result(v3, 0, v11);
        goto LABEL_21;
      }

      close_socket_with_result(v3, 0, 0);
    }

    else
    {
      v11 = *__error();
      close_socket_with_result(v3, 0, v11);
      if (v11)
      {
LABEL_21:
        v12 = *(a1 + 40);
        v13 = strerror(v11);
        ramrod_log_msg("failed to spawn %s: %s (%d)\n", v12, v13, v11);
        return;
      }

      v10 = 0;
    }

    v14 = dispatch_source_create(&_dispatch_source_type_proc, v10, 0x80000000uLL, *(a1 + 32));
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3254779904;
    handler[2] = sub_543DC;
    handler[3] = &unk_1AE298;
    v15 = *(a1 + 48);
    v17 = v10;
    handler[4] = v14;
    handler[5] = v15;
    dispatch_source_set_event_handler(v14, handler);
    dispatch_activate(v14);
    ramrod_log_msg("%s[%d] started\n", *(a1 + 48), v10);
    kill(v10, 19);
  }
}

void sub_543DC(uint64_t a1)
{
  ramrod_log_msg("%s[%d] exited\n", *(a1 + 40), *(a1 + 48));
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

uint64_t ramrod_sync_readwrite_ramdisk()
{
  v0 = off_1AD4D8();
  v1 = objc_autoreleasePoolPush();
  memset(v372, 0, sizeof(v372));
  bzero(v371, 0x400uLL);
  bzero(&v370, 0x878uLL);
  v356 = 0;
  v2 = ramrod_wait_for_internal_media();
  if (!v2)
  {
    sub_2A03C(@"Data volume access is restricted..Checking for path on update volume to sync read/write ramdisk\n\n", v3, v4, v5, v6, v7, v8, v9, v322);
    if (!ramrod_get_update_partition_device_node(v372, 0x20uLL))
    {
      v10 = @"Unable to find update partition and data volume access is restricted. Nothing to sync the ramdisk to!!\n\n";
      goto LABEL_3;
    }

    sub_2A03C(@"Read/Write ramdisk will be synced to the Update partition\n\n", v3, v4, v5, v6, v7, v8, v9, v323);
    if (ramrod_get_mount_path(v372, v371, 0x400uLL))
    {
      sub_2A03C(@"Update partition is not mounted..Attempting to mount\n\n", v13, v14, v15, v16, v17, v18, v19, v324);
      cf[0] = 0;
      if (ramrod_mount_filesystem_no_fsck_opt_err(v372, "/mnt4", 0, cf))
      {
        sub_2A03C(@"Failed to mount update partition and data volume access is restricted. Nothing to sync the ramdisk to!!\n\n", v20, v21, v22, v23, v24, v25, v26, v325);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        goto LABEL_4;
      }

      v27 = @"/mnt4";
      sub_2A03C(@"Successfully found/mounted Update partition at %@!\n\n", v20, v21, v22, v23, v24, v25, v26, @"/mnt4");
    }

    else
    {
      sub_2A03C(@"Update partition(%s) is already mounted at %s.\n\n", v13, v14, v15, v16, v17, v18, v19, v372);
      v27 = [NSString stringWithCString:v371 encoding:4];
    }

    if (statfs(v0, &v370) || (v370.f_flags & 0x4000) != 0)
    {
      sub_2A03C(@"Notice: There is no ram disk mounted at %s\n", v28, v29, v30, v31, v32, v33, v34, v0);
    }

    v35 = [NSString stringWithCString:v0 encoding:4];
    v36 = +[NSFileManager defaultManager];
    v343 = v35;
    obj = [(NSFileManager *)v36 contentsOfDirectoryAtPath:v35 error:&v356];
    v37 = [(__CFString *)v27 stringByAppendingPathComponent:@"/mobile/Library/Logs/CrashReporter"];
    if (ramrod_get_update_partition_device_node(v372, 0x20uLL) == 1)
    {
      if (ramrod_get_mount_path(v372, v371, 0x400uLL))
      {
        sub_2A03C(@"Update partition is not yet mounted..Attempting to mount\n", v45, v46, v47, v48, v49, v50, v51, v326);
        err = 0;
        if (ramrod_mount_filesystem_no_fsck_opt_err(v372, "/mnt4", 0, &err))
        {
          bzero(cf, 0x400uLL);
          if (err)
          {
            v59 = CFErrorCopyDescription(err);
            if (v59)
            {
              v60 = v59;
              CFStringGetCString(v59, cf, 1024, 0x8000100u);
              Code = CFErrorGetCode(err);
              sub_2A03C(@"unable to mount update partition: %ld, %s..Skipping sync of lastOTA contents\n\n", v62, v63, v64, v65, v66, v67, v68, Code);
              CFRelease(v60);
            }

            else
            {
              v314 = CFErrorGetCode(err);
              sub_2A03C(@"unable to mount update partition: %ld..Skipping sync of lastOTA contents\n\n", v315, v316, v317, v318, v319, v320, v321, v314);
            }

            CFRelease(err);
            goto LABEL_25;
          }

          v69 = @"Failed to mount update partition..Skipping sync of lastOTA dir contents\n\n";
LABEL_24:
          sub_2A03C(v69, v38, v39, v40, v41, v42, v43, v44, v326);
LABEL_25:
          v70 = 0;
          goto LABEL_29;
        }

        sub_2A03C(@"Update partition successfully mounted\n\n", v52, v53, v54, v55, v56, v57, v58, v326);
        v71 = "/mnt4";
      }

      else
      {
        sub_2A03C(@"Update Partition(%s) is mounted at %s.\n", v45, v46, v47, v48, v49, v50, v51, v372);
        v71 = v371;
      }

      v70 = [[NSString stringWithCString:4 encoding:?], "stringByAppendingPathComponent:", @"/lastOTA"];
LABEL_29:
      v354 = 0;
      if ([(NSFileManager *)v36 fileExistsAtPath:v37 isDirectory:&v354]&& (v354 & 1) != 0)
      {
        sub_2A03C(@"CrashReporter folder already exists at %@\n\n", v72, v73, v74, v75, v76, v77, v78, v37);
      }

      else
      {
        v367[0] = NSFileOwnerAccountName;
        v367[1] = NSFileGroupOwnerAccountName;
        v368[0] = @"mobile";
        v368[1] = @"mobile";
        v367[2] = NSFilePosixPermissions;
        v368[2] = [NSNumber numberWithInt:493];
        if ([(NSFileManager *)v36 createDirectoryAtPath:v37 withIntermediateDirectories:1 attributes:[NSDictionary error:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:v368 forKeys:v367 count:3], &v356])
        {
          sub_2A03C(@"Successfully created CrashReporter folder at %@\n\n", v86, v87, v88, v89, v90, v91, v92, v37);
        }

        else
        {
          sub_2A03C(@"Failed to create CrashReporter folder at %@\n\n", v86, v87, v88, v89, v90, v91, v92, v37);
        }
      }

      if (v70)
      {
        sub_2A03C(@"lastOTA log dir will be saved to %@\n\n", v79, v80, v81, v82, v83, v84, v85, v70);
        if (![(NSFileManager *)v36 fileExistsAtPath:v70])
        {
          v365[0] = NSFileOwnerAccountName;
          v365[1] = NSFileGroupOwnerAccountName;
          v366[0] = @"mobile";
          v366[1] = @"mobile";
          v365[2] = NSFilePosixPermissions;
          v366[2] = [NSNumber numberWithInt:493];
          if (![(NSFileManager *)v36 createDirectoryAtPath:v70 withIntermediateDirectories:1 attributes:[NSDictionary error:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:v366 forKeys:v365 count:3], &v356])
          {
            sub_2A03C(@"%@ does not exist and could not be created: %@\n", v93, v94, v95, v96, v97, v98, v99, v70);
          }
        }
      }

      v340 = v37;
      v333 = v1;
      v332 = objc_alloc_init(RamrodFileManagerDelegate);
      [(NSFileManager *)v36 setDelegate:?];
      sub_2A03C(@"Searching %@ for crash logs\n", v100, v101, v102, v103, v104, v105, v106, v343);
      v352 = 0u;
      v353 = 0u;
      v350 = 0u;
      v351 = 0u;
      v107 = [(NSArray *)obj countByEnumeratingWithState:&v350 objects:v364 count:16];
      v345 = v70;
      if (v107)
      {
        v115 = v107;
        v116 = 0;
        v117 = 0;
        v118 = *v351;
        LODWORD(v119) = 0;
        v336 = *v351;
        do
        {
          v334 = v119;
          v120 = 0;
          v338 = v115;
          do
          {
            if (*v351 != v118)
            {
              objc_enumerationMutation(obj);
            }

            v121 = *(*(&v350 + 1) + 8 * v120);
            if ([objc_msgSend(v121 "pathExtension")])
            {
              v122 = [(NSString *)v343 stringByAppendingPathComponent:v121];
              v123 = [v340 stringByAppendingPathComponent:{objc_msgSend(v121, "lastPathComponent")}];
              [NSString stringWithContentsOfFile:v122 usedEncoding:0 error:&v356];
              v124 = -[NSString stringByAppendingPathComponent:](v70, "stringByAppendingPathComponent:", [v121 lastPathComponent]);
              sub_2A03C(@"Copying %@ to %@ and %@\n", v125, v126, v127, v128, v129, v130, v131, v121);
              sub_2A03C(@"------- %@ -------\n%@------- END LOG -------\n\n", v132, v133, v134, v135, v136, v137, v138, v122);
              v362[0] = NSFileOwnerAccountName;
              v362[1] = NSFileGroupOwnerAccountName;
              v363[0] = @"mobile";
              v363[1] = @"mobile";
              v362[2] = NSFilePosixPermissions;
              v363[2] = [NSNumber numberWithInt:420];
              v139 = [NSDictionary dictionaryWithObjects:v363 forKeys:v362 count:3];
              if ([(NSString *)v124 isEqualToString:v123])
              {
                v140 = 0;
                v70 = v345;
              }

              else if ([(NSFileManager *)v36 copyItemAtPath:v122 toPath:v124 error:&v356])
              {
                if (![(NSFileManager *)v36 setAttributes:v139 ofItemAtPath:v124 error:&v356])
                {
                  sub_2A03C(@"Setting posix attributes on %@ failed : %@\n\n", v163, v164, v165, v166, v167, v168, v169, v123);
                }

                v140 = 1;
                v70 = v345;
              }

              else
              {
                sub_2A03C(@"Unable to copy crash log to lastOTA dir : %@\n\n", v156, v157, v158, v159, v160, v161, v162, v356);
                v140 = 0;
                v70 = v345;
              }

              v118 = v336;
              v192 = [(NSFileManager *)v36 copyItemAtPath:v122 toPath:v123 error:&v356];
              if (v192)
              {
                if (![(NSFileManager *)v36 setAttributes:v139 ofItemAtPath:v123 error:&v356])
                {
                  sub_2A03C(@"Setting posix attributes on %@ failed : %@\n", v193, v194, v195, v196, v197, v198, v199, v123);
                }
              }

              else
              {
                sub_2A03C(@"Copy failed: %@\n", v185, v186, v187, v188, v189, v190, v191, v356);
              }

              v116 = v116 + (v140 | v192);
              v117 = (v117 + 1);
              v115 = v338;
            }

            else if ([objc_msgSend(v121 "lastPathComponent")])
            {
              v141 = [(NSString *)v343 stringByAppendingPathComponent:v121];
              v329 = [(NSString *)v70 stringByAppendingPathComponent:@"mtree_remap.xml"];
              sub_2A03C(@"Copying %@ to %@\n", v142, v143, v144, v145, v146, v147, v148, v121);
              if (![(NSFileManager *)v36 copyItemAtPath:v141 toPath:v329 error:&v356])
              {
                sub_2A03C(@"Unable to copy mtree output to lastOTA dir : %@\n\n", v149, v150, v151, v152, v153, v154, v155, v356);
              }
            }

            else if ([objc_msgSend(v121 "lastPathComponent")])
            {
              v170 = [(NSString *)v343 stringByAppendingPathComponent:v121];
              v330 = -[NSString stringByAppendingPathComponent:](v70, "stringByAppendingPathComponent:", [v121 lastPathComponent]);
              sub_2A03C(@"Copying %@ to %@\n", v171, v172, v173, v174, v175, v176, v177, v121);
              if (![(NSFileManager *)v36 copyItemAtPath:v170 toPath:v330 error:&v356])
              {
                v327 = [v121 lastPathComponent];
                sub_2A03C(@"Unable to copy apfs migrator log %@ to lastOTA dir : %@\n\n", v178, v179, v180, v181, v182, v183, v184, v327);
              }
            }

            else if ([objc_msgSend(v121 "lastPathComponent")])
            {
              v207 = [(NSString *)v343 stringByAppendingPathComponent:v121];
              v331 = -[NSString stringByAppendingPathComponent:](v70, "stringByAppendingPathComponent:", [v121 lastPathComponent]);
              sub_2A03C(@"Copying %@ to %@\n", v208, v209, v210, v211, v212, v213, v214, v121);
              if (![(NSFileManager *)v36 copyItemAtPath:v207 toPath:v331 error:&v356])
              {
                v328 = [v121 lastPathComponent];
                sub_2A03C(@"Unable to copy apfs converter log %@ to lastOTA dir : %@\n\n", v215, v216, v217, v218, v219, v220, v221, v328);
              }
            }

            else
            {
              sub_2A03C(@"Skipping unrecognized file %@\n", v200, v201, v202, v203, v204, v205, v206, v121);
            }

            v120 = v120 + 1;
          }

          while (v115 != v120);
          v119 = (v334 + v115);
          v222 = [(NSArray *)obj countByEnumeratingWithState:&v350 objects:v364 count:16];
          v115 = v222;
        }

        while (v222);
      }

      else
      {
        v116 = 0;
        v117 = 0;
        v119 = 0;
      }

      sub_2A03C(@"Total files: %4d Crash logs: %4d Files copied: %4d\n", v108, v109, v110, v111, v112, v113, v114, v119);
      v223 = [NSString stringWithFormat:@"%@/checkpoint", v343, v117, v116];
      v224 = [(NSFileManager *)v36 contentsOfDirectoryAtPath:v223 error:&v356];
      v339 = v223;
      sub_2A03C(@"Searching %@ for checkpoint history and tolerated files\n", v225, v226, v227, v228, v229, v230, v231, v223);
      v348 = 0u;
      v349 = 0u;
      v346 = 0u;
      v347 = 0u;
      v337 = v224;
      v344 = [(NSArray *)v224 countByEnumeratingWithState:&v346 objects:v361 count:16];
      if (!v344)
      {
        v239 = 0;
        goto LABEL_108;
      }

      v335 = 0;
      v239 = 0;
      v240 = 0;
      v241 = 0;
      obja = *v347;
      while (1)
      {
        for (i = 0; i != v344; i = i + 1)
        {
          if (*v347 != obja)
          {
            objc_enumerationMutation(v337);
          }

          v243 = *(*(&v346 + 1) + 8 * i);
          if (([objc_msgSend(v243 "pathExtension")] & 1) != 0 || objc_msgSend(objc_msgSend(v243, "pathExtension"), "isEqualToString:", @"plist"))
          {
            v251 = [(NSString *)v339 stringByAppendingPathComponent:v243];
            v259 = [objc_msgSend(v243 "pathExtension")];
            if (v259)
            {
              if (!v70)
              {
                sub_2A03C(@"Skipping save of %@ since dstOTALogDir is not set\n\n", v252, v253, v254, v255, v256, v257, v258, v243);
                continue;
              }

              v260 = [v243 lastPathComponent];
              v261 = v70;
            }

            else
            {
              v260 = [v243 lastPathComponent];
              v261 = v340;
            }

            v262 = [(NSString *)v261 stringByAppendingPathComponent:v260];
            if ([(NSFileManager *)v36 fileExistsAtPath:v262])
            {
              if ([(NSFileManager *)v36 removeItemAtPath:v262 error:&v356])
              {
                sub_2A03C(@"Removed old file %@\n", v270, v271, v272, v273, v274, v275, v276, v262);
                goto LABEL_86;
              }

              sub_2A03C(@"Unable to remove %@: %@\n", v270, v271, v272, v273, v274, v275, v276, v262);
            }

            else
            {
LABEL_86:
              sub_2A03C(@"Copying %@ to %@\n", v263, v264, v265, v266, v267, v268, v269, v243);
              if ([(NSFileManager *)v36 copyItemAtPath:v251 toPath:v262 error:&v356])
              {
                v359[0] = NSFileOwnerAccountName;
                v359[1] = NSFileGroupOwnerAccountName;
                v360[0] = @"mobile";
                v360[1] = @"mobile";
                v359[2] = NSFilePosixPermissions;
                v360[2] = [NSNumber numberWithInt:420];
                if (![(NSFileManager *)v36 setAttributes:[NSDictionary dictionaryWithObjects:v359 forKeys:3 count:?], v262, &v356])
                {
                  sub_2A03C(@"Setting posix attributes on %@ failed : %@\n", v284, v285, v286, v287, v288, v289, v290, v262);
                }

                ++v335;
              }

              else
              {
                sub_2A03C(@"Copy failed: %@\n", v277, v278, v279, v280, v281, v282, v283, v356);
              }
            }

            v291 = -[NSString stringByAppendingPathComponent:](v70, "stringByAppendingPathComponent:", [v243 lastPathComponent]);
            if (v291)
            {
              v292 = v291;
              if (![(NSString *)v291 isEqualToString:v262])
              {
                if ([(NSFileManager *)v36 fileExistsAtPath:v292])
                {
                  [(NSFileManager *)v36 removeItemAtPath:v292 error:&v356];
                }

                sub_2A03C(@"Copying %@ to %@\n", v293, v294, v295, v296, v297, v298, v299, v243);
                if ([(NSFileManager *)v36 copyItemAtPath:v251 toPath:v292 error:&v356])
                {
                  v357[0] = NSFileOwnerAccountName;
                  v357[1] = NSFileGroupOwnerAccountName;
                  v358[0] = @"mobile";
                  v358[1] = @"mobile";
                  v357[2] = NSFilePosixPermissions;
                  v358[2] = [NSNumber numberWithInt:420];
                  if (![(NSFileManager *)v36 setAttributes:[NSDictionary dictionaryWithObjects:v357 forKeys:3 count:?], v292, &v356])
                  {
                    sub_2A03C(@"Setting posix attributes on %@ failed : %@\n", v307, v308, v309, v310, v311, v312, v313, v292);
                  }
                }

                else
                {
                  sub_2A03C(@"Copy failed: %@\n", v300, v301, v302, v303, v304, v305, v306, v356);
                }
              }
            }

            v240 += v259 ^ 1;
            v241 += v259;
            v70 = v345;
            goto LABEL_103;
          }

          sub_2A03C(@"Skipping unrecognized file|directory %@\n", v244, v245, v246, v247, v248, v249, v250, v243);
LABEL_103:
          v239 = (v239 + 1);
        }

        v344 = [(NSArray *)v337 countByEnumeratingWithState:&v346 objects:v361 count:16];
        if (!v344)
        {
LABEL_108:
          sub_2A03C(@"Total files|directories: %4d History files: %4d Status files: %4d Files copied: %4d\n", v232, v233, v234, v235, v236, v237, v238, v239);
          [(NSFileManager *)v36 setDelegate:0];

          v11 = 0;
          v1 = v333;
          goto LABEL_5;
        }
      }
    }

    v69 = @"Permanent update partition in use but dev node not found..Skipping sync of lastOTA dir contents\n\n";
    goto LABEL_24;
  }

  v323 = v2;
  v10 = @"error %d waiting for internal media\n";
LABEL_3:
  sub_2A03C(v10, v3, v4, v5, v6, v7, v8, v9, v323);
LABEL_4:
  v11 = 1;
LABEL_5:
  objc_autoreleasePoolPop(v1);
  return v11;
}

CFStringRef ramrod_copy_data_volume_path()
{
  v0 = objc_autoreleasePoolPush();
  memset(v13, 0, sizeof(v13));
  bzero(cStr, 0x400uLL);
  if (sub_55394() && !ramrod_get_data_partition_device_node(v13, 0x20uLL))
  {
    v8 = @"unable to find data volume dev node to get its mount path\n\n";
    goto LABEL_7;
  }

  sub_2A03C(@"Located data volume dev node(%s). Attempting to locate mount point\n\n", v1, v2, v3, v4, v5, v6, v7, v13);
  if (ramrod_get_mount_path(v13, cStr, 0x400uLL))
  {
    v8 = @"Unable to get mount path for data volume or it is not mounted\n\n";
LABEL_7:
    sub_2A03C(v8, v1, v2, v3, v4, v5, v6, v7, v11);
    v9 = 0;
    goto LABEL_8;
  }

  sub_2A03C(@"Data volume(%s) is mounted at %s.\n\n", v1, v2, v3, v4, v5, v6, v7, v13);
  v9 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
LABEL_8:
  objc_autoreleasePoolPop(v0);
  return v9;
}

BOOL sub_55394()
{
  if (!ramrod_device_has_sep())
  {
    return 1;
  }

  v11 = *off_1A9E40;
  v12 = 0;
  v0 = ramrod_execute_command(&v11);
  v8 = v0 == 0;
  if (v0)
  {
    v9 = @"SEP OS is not booted\n";
  }

  else
  {
    v9 = @"SEP OS is booted\n";
  }

  sub_2A03C(v9, v1, v2, v3, v4, v5, v6, v7, v11);
  return v8;
}

CFStringRef ramrod_copy_user_volume_path()
{
  v0 = objc_autoreleasePoolPush();
  memset(v13, 0, sizeof(v13));
  bzero(cStr, 0x400uLL);
  if (sub_55394() && !ramrod_get_user_partition_device_node(v13, 0x20uLL))
  {
    v8 = @"unable to find data volume dev node to get its mount path\n\n";
    goto LABEL_7;
  }

  sub_2A03C(@"Located user volume dev node(%s). Attempting to locate mount point\n\n", v1, v2, v3, v4, v5, v6, v7, v13);
  if (ramrod_get_mount_path(v13, cStr, 0x400uLL))
  {
    v8 = @"Unable to get mount path for user volume or it is not mounted\n\n";
LABEL_7:
    sub_2A03C(v8, v1, v2, v3, v4, v5, v6, v7, v11);
    v9 = 0;
    goto LABEL_8;
  }

  sub_2A03C(@"User volume(%s) is mounted at %s.\n\n", v1, v2, v3, v4, v5, v6, v7, v13);
  v9 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
LABEL_8:
  objc_autoreleasePoolPop(v0);
  return v9;
}

CFStringRef ramrod_copy_mobile_dir_path()
{
  v0 = objc_autoreleasePoolPush();
  v1 = ramrod_copy_user_volume_path();
  if (!v1)
  {
    v2 = ramrod_copy_data_volume_path();
    if (v2)
    {
      v3 = v2;
      v1 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/mobile", v2);
      CFRelease(v3);
    }

    else
    {
      v1 = 0;
    }
  }

  objc_autoreleasePoolPop(v0);
  return v1;
}

CFStringRef ramrod_copy_update_volume_path()
{
  v0 = objc_autoreleasePoolPush();
  memset(v13, 0, sizeof(v13));
  bzero(cStr, 0x400uLL);
  if (ramrod_get_update_partition_device_node(v13, 0x20uLL))
  {
    sub_2A03C(@"Located update volume dev node(%s). Attempting to locate mount point\n\n", v1, v2, v3, v4, v5, v6, v7, v13);
    if (!ramrod_get_mount_path(v13, cStr, 0x400uLL))
    {
      sub_2A03C(@"%s is mounted at %s.\n", v1, v2, v3, v4, v5, v6, v7, v13);
      v9 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
      goto LABEL_7;
    }

    v8 = @"Unable to get mount path for update volume or it is not mounted\n\n";
  }

  else
  {
    v8 = @"Unable to find update volume dev node to get it's mount path\n\n";
  }

  sub_2A03C(v8, v1, v2, v3, v4, v5, v6, v7, v11);
  v9 = 0;
LABEL_7:
  objc_autoreleasePoolPop(v0);
  return v9;
}

CFStringRef ramrod_copy_log_storage_dir_path()
{
  v0 = objc_autoreleasePoolPush();
  updated = ramrod_copy_update_volume_path();
  if (updated)
  {
    v9 = @"Log storage dir found on update volume\n\n";
  }

  else
  {
    v9 = @"Permanent update volume in use but no mounted update partition found..\n\n";
  }

  sub_2A03C(v9, v1, v2, v3, v4, v5, v6, v7, v11);
  objc_autoreleasePoolPop(v0);
  return updated;
}

uint64_t ramrod_write_ota_log_from_patchd_logs_to_log_dir(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ramrod_log_msg("entering %s\n", "ramrod_write_ota_log_from_patchd_logs_to_log_dir");
  context = objc_autoreleasePoolPush();
  v232 = 0;
  if (!a2 || !a3)
  {
    sub_2A03C(@"Null value passed for source/destination patchd log directory..returning\n", v8, v9, v10, v11, v12, v13, v14, v201);
LABEL_18:
    v45 = 1;
    goto LABEL_19;
  }

  if (a4)
  {
    v15 = [NSString stringWithCString:a4 encoding:4];
  }

  else
  {
    v15 = @"/mobile/Library/Logs/CrashReporter";
  }

  v208 = v15;
  if (a1)
  {
    if (CFDictionaryContainsKey(a1, @"SaveLogToAbsolutePath"))
    {
      sub_2A03C(@"Patchd logs will be saved to absolute path: %s\n", v16, v17, v18, v19, v20, v21, v22, a3);
      v214 = 1;
    }

    else
    {
      v214 = 0;
    }

    if (CFDictionaryContainsKey(a1, @"SaveLogUnconditionally"))
    {
      sub_2A03C(@"Saving all patchd logs\n", v23, v24, v25, v26, v27, v28, v29, v201);
      v213 = 0;
      v210 = 1;
      goto LABEL_16;
    }

    v210 = 0;
  }

  else
  {
    v210 = 0;
    v214 = 0;
  }

  v213 = 1;
LABEL_16:
  v30 = [NSString stringWithCString:a2 encoding:4];
  v209 = [NSString stringWithCString:a3 encoding:4];
  v218 = +[NSFileManager defaultManager];
  obj = [(NSArray *)[(NSFileManager *)v218 contentsOfDirectoryAtPath:v30 error:&v232] sortedArrayUsingSelector:"compare:"];
  sub_2A03C(@"Searching %@ for patchd logs\n", v31, v32, v33, v34, v35, v36, v37, v30);
  v217 = [NSRegularExpression regularExpressionWithPattern:@"patchd-([[:digit:]]+)\\.log" options:0 error:&v232];
  if (v232)
  {
    sub_2A03C(@"Error %@ constructing patchd.log regex\n", v38, v39, v40, v41, v42, v43, v44, v202);
    goto LABEL_18;
  }

  v211 = [NSMutableString stringWithCapacity:0];
  if (!v211)
  {
    sub_2A03C(@"Could not allocate mutable string for log concatenation\n", v47, v48, v49, v50, v51, v52, v53, v202);
    goto LABEL_18;
  }

  v54 = [NSMutableDictionary dictionaryWithCapacity:0];
  v55 = MGCopyAnswer();
  if (v55)
  {
    v56 = v55;
  }

  else
  {
    v56 = @"Unknown";
  }

  [(NSMutableDictionary *)v54 setObject:v56 forKey:@"itunes_version"];
  [(NSMutableDictionary *)v54 setObject:@"Unknown" forKey:@"restore_payload_version"];
  [(NSMutableDictionary *)v54 setObject:@"OTAUpdate" forKey:@"restore_type"];
  [(NSMutableDictionary *)v54 setObject:@"iPhoneRestore" forKey:@"name"];
  [(NSMutableDictionary *)v54 setObject:v56 forKey:@"os_version"];
  [(NSMutableDictionary *)v54 setObject:@"183" forKey:@"bug_type"];
  v57 = [NSJSONSerialization dataWithJSONObject:v54 options:0 error:&v232];
  if (v232)
  {
    sub_2A03C(@"Error %@ serializing JSON data for ips header for dictionary %@\n", v58, v59, v60, v61, v62, v63, v64, v232);
    goto LABEL_18;
  }

  if (!v57)
  {
    v200 = @"Error serializing JSON data for ips header - nil data\n";
LABEL_88:
    sub_2A03C(v200, v58, v59, v60, v61, v62, v63, v64, v202);
    goto LABEL_18;
  }

  v59 = [[NSString alloc] initWithData:v57 encoding:4];
  if (!v59)
  {
    v200 = @"Error converting JSON data to UTF8 string - nil string\n";
    goto LABEL_88;
  }

  [(NSMutableString *)v211 appendString:v59];
  [(NSMutableString *)v211 appendFormat:@"\n\n"];
  v207 = [NSMutableArray arrayWithCapacity:[(NSArray *)obj count]];
  v206 = [NSMutableArray arrayWithCapacity:[(NSArray *)obj count]];
  v230 = 0u;
  v231 = 0u;
  v228 = 0u;
  v229 = 0u;
  v72 = [(NSArray *)obj countByEnumeratingWithState:&v228 objects:v250 count:16];
  if (!v72)
  {
    goto LABEL_90;
  }

  v73 = 0;
  LODWORD(v74) = 0;
  v212 = 0;
  v75 = *v229;
  v205 = @"recently";
  while (2)
  {
    for (i = 0; i != v72; i = i + 1)
    {
      if (*v229 != v75)
      {
        objc_enumerationMutation(obj);
      }

      v77 = *(*(&v228 + 1) + 8 * i);
      v85 = -[NSRegularExpression firstMatchInString:options:range:](v217, "firstMatchInString:options:range:", v77, 0, 0, [v77 length]);
      if (v85)
      {
        sub_2A03C(@"Found %@\n", v78, v79, v80, v81, v82, v83, v84, v77);
        v86 = [(NSTextCheckingResult *)v85 rangeAtIndex:1];
        v88 = [v77 substringWithRange:{v86, v87}];
        v89 = -[NSString stringByAppendingPathComponent:](v30, "stringByAppendingPathComponent:", [@".patchd-saved-" stringByAppendingString:v88]);
        if (![(NSFileManager *)v218 fileExistsAtPath:v89]|| (sub_2A03C(@"File is tagged saved\n", v90, v91, v92, v93, v94, v95, v96, v203), v212 = 1, (v213 & 1) == 0))
        {
          v97 = -[NSString stringByAppendingPathComponent:](v30, "stringByAppendingPathComponent:", [@".patchd-dirty-" stringByAppendingString:v88]);
          if ([(NSFileManager *)v218 fileExistsAtPath:v97])
          {
            sub_2A03C(@"File is tagged dirty\n", v98, v99, v100, v101, v102, v103, v104, v203);
            v212 = 1;
          }

          if (!v214)
          {
            [(NSMutableArray *)v207 addObject:v89];
            [(NSMutableArray *)v206 addObject:v97];
          }

          if (v73)
          {
            sub_2A03C(@"bootTimeDate is not nil\n", v98, v99, v100, v101, v102, v103, v104, v203);
          }

          else
          {
            v112 = objc_alloc_init(NSNumberFormatter);
            if (!v112)
            {
              sub_2A03C(@"Could not allocate number formatter for boottime in patchd log file name\n", v105, v106, v107, v108, v109, v110, v111, v203);
              goto LABEL_18;
            }

            [v112 setFormatterBehavior:{+[NSNumberFormatter defaultFormatterBehavior](NSNumberFormatter, "defaultFormatterBehavior")}];
            v113 = [v112 numberFromString:v88];
            if (![(NSNumber *)v113 longValue])
            {
              sub_2A03C(@"Converting bootTimeString=%@ directly\n", v114, v115, v116, v117, v118, v119, v120, v88);
              v113 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", strtol([v88 UTF8String], 0, 0));
            }

            sub_2A03C(@"bootTimeNumber=%@\n", v114, v115, v116, v117, v118, v119, v120, v113);
            [(NSNumber *)v113 doubleValue];
            v73 = [NSDate dateWithTimeIntervalSince1970:?];
            v249 = 0;
            v247 = 0u;
            v248 = 0u;
            v245 = 0u;
            v246 = 0u;
            v243 = 0u;
            v244 = 0u;
            v241 = 0u;
            v242 = 0u;
            v239 = 0u;
            v240 = 0u;
            *v237 = 0u;
            v238 = 0u;
            v227 = 0;
            v227 = [(NSNumber *)v113 longValue];
            v128 = localtime(&v227);
            if (!v128)
            {
              sub_2A03C(@"localtime failed\n", v121, v122, v123, v124, v125, v126, v127, v204);
            }

            if (strftime(v237, 0xC8uLL, "%F-%H-%M-%S", v128))
            {
              v205 = [NSString stringWithUTF8String:v237];
              sub_2A03C(@"t=%ld formattedBootTimeDateString=%@\n", v136, v137, v138, v139, v140, v141, v142, v227);
            }

            else
            {
              sub_2A03C(@"strftime failed\n", v129, v130, v131, v132, v133, v134, v135, v204);
            }
          }

          v143 = [NSString stringWithContentsOfFile:[(NSString *)v30 stringByAppendingPathComponent:v77] encoding:4 error:&v232];
          v74 = (v74 + 1);
          if (v232)
          {
            sub_2A03C(@"Eror %@ creating string with contents of %@\n", v144, v145, v146, v147, v148, v149, v150, v77);
          }

          else
          {
            [(NSMutableString *)v211 appendFormat:@"------- patchd boot attempt %d -------\n%@", v74, v143];
          }
        }
      }
    }

    v72 = [(NSArray *)obj countByEnumeratingWithState:&v228 objects:v250 count:16];
    if (v72)
    {
      continue;
    }

    break;
  }

  if (v74 < 1)
  {
LABEL_90:
    sub_2A03C(@"No patchd logs were found on %@\n", v65, v66, v67, v68, v69, v70, v71, v30);
LABEL_91:
    v45 = 0;
    goto LABEL_19;
  }

  v158 = [NSString stringWithFormat:@"OTAUpdate-%@.ips"];
  if (v212)
  {
    v159 = 1;
  }

  else
  {
    v159 = v210;
  }

  if ((v159 & 1) == 0 && ![(NSFileManager *)v218 fileExistsAtPath:[(NSString *)v30 stringByAppendingPathComponent:@".patchd-dirty"]])
  {
    sub_2A03C(@"------- patchd exited cleanly but patchd logs were left -------\n%@------- END LOG -------\n\n", v151, v152, v153, v154, v155, v156, v157, v211);
    goto LABEL_91;
  }

  if (v210)
  {
    v160 = @"Unconditionally saving patchd logs\n";
  }

  else
  {
    v160 = @"Patchd logs were not properly saved\n";
  }

  sub_2A03C(v160, v151, v152, v153, v154, v155, v156, v157, v205);
  v161 = sub_56234(v211);
  if (v214 != 1)
  {
    v209 = [(NSString *)v209 stringByAppendingPathComponent:v208];
  }

  v162 = [(NSString *)v209 stringByAppendingPathComponent:v158];
  if (![v161 writeToFile:v162 atomically:1 encoding:4 error:&v232])
  {
    sub_2A03C(@"------- Error %@ saving %@ -------\n%@------- END LOG -------\n\n", v163, v164, v165, v166, v167, v168, v169, v232);
    goto LABEL_91;
  }

  sub_2A03C(@"Successfully saved %@\n", v163, v164, v165, v166, v167, v168, v169, v162);
  v235[0] = NSFileOwnerAccountName;
  v235[1] = NSFileGroupOwnerAccountName;
  v236[0] = @"mobile";
  v236[1] = @"mobile";
  v235[2] = NSFilePosixPermissions;
  v236[2] = [NSNumber numberWithInt:420];
  v170 = [NSDictionary dictionaryWithObjects:v236 forKeys:v235 count:3];
  if (![(NSFileManager *)v218 setAttributes:v170 ofItemAtPath:v162 error:&v232])
  {
    sub_2A03C(@"Setting posix attributes on %@ failed : %@\n", v171, v172, v173, v174, v175, v176, v177, v162);
    goto LABEL_91;
  }

  v225 = 0u;
  v226 = 0u;
  v223 = 0u;
  v224 = 0u;
  v178 = [(NSMutableArray *)v207 countByEnumeratingWithState:&v223 objects:v234 count:16];
  if (v178)
  {
    v179 = *v224;
    do
    {
      for (j = 0; j != v178; j = j + 1)
      {
        if (*v224 != v179)
        {
          objc_enumerationMutation(v207);
        }

        v181 = *(*(&v223 + 1) + 8 * j);
        [(NSFileManager *)v218 createFileAtPath:v181 contents:0 attributes:v170];
        sub_2A03C(@"Creating saved file tag %@\n", v182, v183, v184, v185, v186, v187, v188, v181);
      }

      v178 = [(NSMutableArray *)v207 countByEnumeratingWithState:&v223 objects:v234 count:16];
    }

    while (v178);
  }

  v221 = 0u;
  v222 = 0u;
  v219 = 0u;
  v220 = 0u;
  v189 = [(NSMutableArray *)v206 countByEnumeratingWithState:&v219 objects:v233 count:16];
  if (!v189)
  {
    goto LABEL_91;
  }

  v190 = *v220;
  do
  {
    for (k = 0; k != v189; k = k + 1)
    {
      if (*v220 != v190)
      {
        objc_enumerationMutation(v206);
      }

      v192 = *(*(&v219 + 1) + 8 * k);
      if ([(NSFileManager *)v218 fileExistsAtPath:v192])
      {
        sub_2A03C(@"Removing dirty file tag %@\n", v193, v194, v195, v196, v197, v198, v199, v192);
        [(NSFileManager *)v218 removeItemAtPath:v192 error:0];
      }
    }

    v189 = [(NSMutableArray *)v206 countByEnumeratingWithState:&v219 objects:v233 count:16];
    v45 = 0;
  }

  while (v189);
LABEL_19:
  objc_autoreleasePoolPop(context);
  ramrod_log_msg("%s complete\n", "ramrod_write_ota_log_from_patchd_logs_to_log_dir");
  return v45;
}

id sub_56234(void *a1)
{
  v50 = @"MEID";
  v51 = @"IMEI";
  v67 = @"[0-9a-fA-F]{14}";
  v68 = @"[0-9]{15}";
  v52 = @"UDID";
  v53 = @"ICCID19";
  v69 = @"[0-9a-fA-F]{40}";
  v70 = @"[0-9a-fA-F]{19}";
  v54 = @"ICCID20";
  v55 = @"UNEXPECTED_FILE";
  v71 = @"[0-9a-fA-F]{20}";
  v72 = @"'[^\n]*' has been added";
  v56 = @"VERIFY_FAILED";
  v57 = @"VERIFY_EXCEPTION";
  v73 = @"verify_callback: '[^\n]*' did not verify and is not on the exception list.";
  v74 = @"'[^\n]*' is on the exception list";
  v58 = @"BBCHIPID";
  v59 = @"ECID";
  v75 = @"ChipSerialNo[^\n]*bytes = 0x[0-9a-fA-F]*\\}";
  v76 = @"ecid=0x[0-9a-fA-F]*,";
  v60 = @"ECID2";
  v61 = @"BBSNUM";
  v77 = @"ApECID[^\n]*value = [+-][0-9<>IMEI]*";
  v78 = @"snum=0x[0-9a-fA-F]*,";
  v62 = @"BBSNUM2";
  v63 = @"FDR_KEY_1A";
  v79 = @"BbSNUM[^\n]*";
  v80 = @"[:-][0-9a-fA-F]{8}";
  v64 = @"FDR_KEY_1B";
  v65 = @"FDR_KEY_2";
  v81 = @"[:-] [0-9a-fA-F]{8}";
  v82 = @"[:-] [a-zA-Z0-9]{18}\\b";
  v66 = @"FDR_KEY_3";
  v83 = @"[:-][a-zA-Z0-9]{8}[:-][a-zA-Z0-9]{16}";
  v1 = [+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary mutableCopy:&v67];
  v50 = @"MEID";
  v51 = @"IMEI";
  v67 = @"<<<<<MEID>>>>>";
  v68 = @"<<<<<IMEI>>>>>>";
  v52 = @"UDID";
  v53 = @"ICCID19";
  v69 = @"<<<<<<<<<<<<<<<<<<UDID>>>>>>>>>>>>>>>>>>";
  v70 = @"<<<<<<<ICCID>>>>>>>";
  v54 = @"ICCID20";
  v55 = @"UNEXPECTED_FILE";
  v71 = @"<<<<<<<<ICCID>>>>>>>";
  v72 = @"'<<File name>>' has been added ";
  v56 = @"VERIFY_FAILED";
  v57 = @"VERIFY_EXCEPTION";
  v73 = @"verify_callback: '<<File name>>' did not verify and is not on the exception list.";
  v74 = @"''<<File name>>' is on the exception list";
  v58 = @"BBCHIPID";
  v59 = @"ECID";
  v75 = @"ChipSerialNo ";
  v76 = @"ecid=0xXXXXXXXXXXX";
  v60 = @"ECID2";
  v61 = @"BBSNUM";
  v77 = @"ApECID} = X {X";
  v78 = @"snum=0xXXXXXXXX";
  v62 = @"BBSNUM2";
  v63 = @"FDR_KEY_1A";
  v79 = @"BbSNUM} = 0xXXXXXXXX }";
  v80 = @"XXXX";
  v64 = @"FDR_KEY_1B";
  v65 = @"FDR_KEY_2";
  v81 = @"XXXX";
  v82 = @"XXXX";
  v66 = @"FDR_KEY_3";
  v83 = @"XXXX";
  v42 = [+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary mutableCopy:&v67];
  v44 = [a1 mutableCopy];
  v67 = @"UNEXPECTED_FILE";
  v68 = @"VERIFY_FAILED";
  v69 = @"VERIFY_EXCEPTION";
  v70 = @"FDR_KEY_1A";
  v71 = @"FDR_KEY_1B";
  v72 = @"FDR_KEY_2";
  v73 = @"FDR_KEY_3";
  v74 = @"UDID";
  v75 = @"ICCID19";
  v76 = @"ICCID20";
  v77 = @"IMEI";
  v78 = @"ECID";
  v79 = @"ECID2";
  v80 = @"MEID";
  v81 = @"BBCHIPID";
  v82 = @"BBSNUM";
  v83 = @"BBSNUM2";
  v2 = [NSArray arrayWithObjects:&v67 count:17];
  if (!v2)
  {
    v2 = [v1 allKeys];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v46;
    v6 = &classRef_NSError;
    v41 = *v46;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v46 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v45 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v67 = 0;
        v17 = [v1 objectForKey:v8];
        if (!v17)
        {
          sub_2A03C(@"Skipping replacement of %@.  No corresponding regex found in PII pattern dictionary.\n", v10, v11, v12, v13, v14, v15, v16, v8);
        }

        v18 = [v6[29] regularExpressionWithPattern:v17 options:1 error:&v67];
        if (v67)
        {
          sub_2A03C(@"Error %@ constructing regular expression for %@\n", v19, v20, v21, v22, v23, v24, v25, v67);
        }

        else
        {
          v26 = v18;
          v27 = [v42 objectForKey:v8];
          v28 = v1;
          v29 = v6;
          v30 = v2;
          if (v27)
          {
            v31 = v27;
          }

          else
          {
            v31 = @"<<<<PII>>>>";
          }

          v32 = [v26 replaceMatchesInString:v44 options:0 range:0 withTemplate:{objc_msgSend(v44, "length"), v31}];
          v2 = v30;
          v6 = v29;
          v1 = v28;
          v5 = v41;
          sub_2A03C(@"Replaced %lu occurrences of %@ with %@\n", v33, v34, v35, v36, v37, v38, v39, v32);
        }

        objc_autoreleasePoolPop(v9);
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v4);
  }

  return v44;
}

NSDictionary *_copy_network_device_matching_dict()
{
  v6 = @"IOPropertyExistsMatch";
  v4 = @"if-restore-bringup";
  v0 = [NSNumber numberWithBool:1];
  v5 = v0;
  v1 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v7 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v2;
}

NSDictionary *_copy_network_interface_matching_dict(uint64_t a1)
{
  v1 = [NSNumber numberWithUnsignedLongLong:a1];
  v6 = v1;
  v7[0] = @"IOParentMatch";
  v5 = @"IORegistryEntryID";
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v7[1] = @"IOProviderClass";
  v8[0] = v2;
  v8[1] = @"IONetworkInterface";
  v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v3;
}

BOOL restored_enable_network_interfaces()
{
  mainPort[0] = 0;
  existing[1] = 0;
  if (sub_D5200(2, 15, 0, 0))
  {
    v0 = IOMainPort(bootstrap_port, mainPort);
  }

  else
  {
    v0 = IOMasterPort(bootstrap_port, mainPort);
  }

  if (v0)
  {
    ramrod_log_msg("failed to create mach port to IOKit: 0x%x\n", v0);
LABEL_16:
    v9 = 0;
    network_config_succeeded = 0;
    goto LABEL_17;
  }

  v1 = mainPort[0];
  LODWORD(v57[0]) = 0;
  connect[0] = 0;
  v2 = IOServiceMatching("IONetworkStack");
  MatchingService = IOServiceGetMatchingService(v1, v2);
  v4 = MatchingService;
  LODWORD(v57[0]) = MatchingService;
  if (!MatchingService)
  {
    ramrod_log_msg("unable to find IONetworkStack service\n");
LABEL_15:
    ramrod_log_msg("failed to copy network stack service\n");
    goto LABEL_16;
  }

  v5 = IOServiceOpen(MatchingService, mach_task_self_, 0, connect);
  if (v5)
  {
    ramrod_log_msg("unable to open IONetworkStack service: 0x%x\n", v5);
  }

  v48 = connect[0];
  v6 = IOObjectRelease(v4);
  if (v6)
  {
    v56[0] = 0;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    *connect = 0u;
    v59 = 0u;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    *v54 = 67109120;
    *&v54[4] = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    sub_D9E64();
  }

  if (!v48)
  {
    goto LABEL_15;
  }

  v7 = _copy_network_device_matching_dict();
  if (v7)
  {
    MatchingServices = IOServiceGetMatchingServices(mainPort[0], v7, &existing[1]);
    if (MatchingServices)
    {
      ramrod_log_msg("IOServiceGetMatchingServices IONetworkInterface returned 0x%x\n", MatchingServices);
      goto LABEL_21;
    }

    v12 = 0;
LABEL_23:
    v13 = IOIteratorNext(existing[1]);
    v14 = v13;
    v9 = v13 == 0;
    if (!v13)
    {
      if ((v12 & 1) == 0)
      {
        ramrod_log_msg("no device required to enable network interface, skipping\n");
      }

      goto LABEL_71;
    }

    v15 = mainPort[0];
    object = 0;
    entryID = 0;
    RegistryEntryID = IORegistryEntryGetRegistryEntryID(v13, &entryID);
    v17 = "failed to get device registry id: 0x%x";
    if (RegistryEntryID || (v18 = _copy_network_interface_matching_dict(entryID), RegistryEntryID = IOServiceGetMatchingServices(v15, v18, &object), v17 = "failed to get matching services: 0x%x", RegistryEntryID))
    {
      ramrod_log_msg(v17, RegistryEntryID);
      goto LABEL_27;
    }

    v23 = 0;
    while (1)
    {
      v24 = IOIteratorNext(object);
      v25 = v24;
      if (!v24)
      {
        if (v23)
        {
          v19 = 1;
          goto LABEL_28;
        }

        ramrod_log_msg("failed to find any IONetworkInterface for device\n");
LABEL_27:
        v19 = 0;
LABEL_28:
        if (object)
        {
          v20 = IOObjectRelease(object);
          if (v20)
          {
            v56[0] = 0;
            v61 = 0u;
            v62 = 0u;
            v60 = 0u;
            *connect = 0u;
            v59 = 0u;
            os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
            *v54 = 67109120;
            *&v54[4] = v20;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            sub_D9E64();
          }
        }

        if ((v19 & 1) == 0)
        {
          v21 = sub_57554(v14);
          ramrod_log_msg("failed to enable network interface for device: %s\n", v21);
          free(v21);
        }

        v22 = IOObjectRelease(v14);
        if (v22)
        {
          v56[0] = 0;
          v61 = 0u;
          v62 = 0u;
          v60 = 0u;
          *connect = 0u;
          v59 = 0u;
          os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          *v54 = 67109120;
          *&v54[4] = v22;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          sub_D9E64();
        }

        v12 = 1;
        if ((v19 & 1) == 0)
        {
LABEL_71:
          v11 = v14 == 0;
          goto LABEL_72;
        }

        goto LABEL_23;
      }

      mainPort[1] = v24;
      *v54 = 0;
      v55 = 0;
      v53 = -1;
      v57[0] = 0;
      if (IORegistryEntryGetRegistryEntryID(v24, v57))
      {
        ramrod_log_msg("IORegistryEntryGetRegistryEntryID interface failed\n");
LABEL_39:
        v26 = 0;
        v27 = 0;
        v28 = 0;
LABEL_40:

        ramrod_log_msg("failed to name network interface\n");
        goto LABEL_41;
      }

      CFProperty = IORegistryEntryCreateCFProperty(v25, @"IOInterfaceUnit", kCFAllocatorDefault, 0);
      if (CFProperty)
      {
        ramrod_log_msg("interface has already been named, skipping\n");
        v33 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
      }

      else
      {
        v27 = IORegistryEntryCreateCFProperty(v25, @"IOInterfaceNamePrefix", kCFAllocatorDefault, 0);
        if (!v27)
        {
          ramrod_log_msg("can't get interface prefix\n");
          goto LABEL_39;
        }

        v28 = [[NSData alloc] initWithBytes:v57 length:8];
        v56[0] = @"IONetworkStackUserCommand";
        v40 = [NSNumber numberWithInt:1];
        *connect = v40;
        *&connect[2] = v28;
        v56[1] = @"IORegistryEntryID";
        v56[2] = @"IOInterfaceUnit";
        v41 = [NSNumber numberWithInt:0];
        *&v59 = v41;
        v42 = [NSDictionary dictionaryWithObjects:connect forKeys:v56 count:3];

        v43 = IOConnectSetCFProperties(v48, v42);
        if (v43)
        {
          ramrod_log_msg("IOConnectSetCFProperties failed: 0x%x\n", v43);
          v26 = 0;
          goto LABEL_40;
        }

        v26 = IORegistryEntryCreateCFProperty(v25, @"IOInterfaceUnit", kCFAllocatorDefault, 0);
        if (!v26)
        {
          ramrod_log_msg("can't get new interface unit\n");
          goto LABEL_40;
        }

        v44 = v27;
        if (__snprintf_chk(v54, 0x10uLL, 0, 0x10uLL, "%s%lu", [v27 UTF8String], objc_msgSend(v26, "unsignedLongValue")) >= 16)
        {
          v45 = v27;
          ramrod_log_msg("interface name [%s%lu] too long\n", [v27 UTF8String], objc_msgSend(v26, "unsignedLongValue"));
          goto LABEL_40;
        }

        v33 = sub_57554(v25);
        ramrod_log_msg("named interface for service %s as %s\n", v33, v54);
      }

      free(v33);

      v34 = sub_57A60();
      v35 = v34;
      v53 = v34;
      if (v34 < 0)
      {
        ramrod_log_msg("failed to create dgram socket\n");
        if (v35 == -1)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v36 = sub_57BC4(v34, v54);
        v37 = "failed to configure link local address for %s\n";
        if (v36)
        {
          v38 = sub_57AB8(v35, v54);
          v37 = "failed to bring up %s\n";
          if (v38)
          {
            v39 = 1;
            goto LABEL_57;
          }
        }

        ramrod_log_msg(v37, v54);
      }

      v39 = 0;
LABEL_57:
      if (close(v35) == -1)
      {
        v56[0] = 0;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        *connect = 0u;
        v59 = 0u;
        os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        v47 = *__error();
        LODWORD(v57[0]) = 67109120;
        HIDWORD(v57[0]) = v47;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        sub_D9E64();
      }

      if (v39)
      {
        v30 = 1;
        goto LABEL_42;
      }

LABEL_41:
      v29 = sub_57554(v25);
      ramrod_log_msg("failed to enable network interface for service %s\n", v29);
      free(v29);
      v30 = 0;
LABEL_42:
      v31 = IOObjectRelease(v25);
      if (v31)
      {
        v56[0] = 0;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        *connect = 0u;
        v59 = 0u;
        os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        *v54 = 67109120;
        *&v54[4] = v31;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        sub_D9E64();
      }

      v23 = 1;
      if ((v30 & 1) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  ramrod_log_msg("failed to copy network device matching dict\n");
LABEL_21:
  v11 = 0;
  v9 = 0;
LABEL_72:
  network_config_succeeded = v11;
  v46 = IOServiceClose(v48);
  if (v46)
  {
    v56[0] = 0;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    *connect = 0u;
    v59 = 0u;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    *v54 = 67109120;
    *&v54[4] = v46;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    sub_D9E64();
  }

LABEL_17:
  if (existing[1] && IOObjectRelease(existing[1]))
  {
    sub_D9E68(v56, connect);
  }

  return v9;
}

void sub_57390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, unsigned int a15, char a17)
{
  sub_57484(&a13);
  sub_574EC(&a15);
  sub_57484(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_57484(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      sub_D9F00(&v2, v3);
    }
  }

  return result;
}

uint64_t sub_574EC(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOServiceClose(result);
    if (result)
    {
      sub_D9F84(&v2, v3);
    }
  }

  return result;
}

char *sub_57554(io_registry_entry_t a1)
{
  memset(path, 0, 512);
  v1 = IORegistryEntryGetPath(a1, "IOService", path);
  if (v1)
  {
    ramrod_log_msg("failed to get path for service: 0x%x\n", v1);
    return 0;
  }

  else if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = strdup(path);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = strdup(path);
    if (!result)
    {
      sub_DA008(path, &v3, v5);
    }
  }

  return result;
}

BOOL restored_create_vlan(const char *a1, uint64_t a2, char **a3)
{
  *__s1 = 0;
  v19 = 0;
  if (!a3)
  {
    ramrod_log_msg("invalid argument: vlan_ifname_out\n", a2);
    return 0;
  }

  v4 = a2;
  v6 = sub_57A60();
  if (v6 < 0)
  {
    ramrod_log_msg("failed to create dgram socket\n");
    goto LABEL_7;
  }

  v23 = 0u;
  v24 = 0u;
  __strlcpy_chk();
  if (!ioctl(v6, 0xC0206978uLL, &v23))
  {
    __strlcpy_chk();
    ramrod_log_msg("created interface %s\n", __s1);
    if (!sub_57AB8(v6, __s1))
    {
      ramrod_log_msg("failed to bring up %s\n");
      goto LABEL_13;
    }

    v23 = 0u;
    v24 = 0u;
    memset(v20, 0, 18);
    __strlcpy_chk();
    *&v24 = v20;
    __strlcpy_chk();
    *&v20[16] = v4;
    if (ioctl(v6, 0x8020697EuLL, &v23))
    {
      v9 = __error();
      ramrod_log_msg("ioctl(SIOCSIFVLAN): %d\n", *v9);
      ramrod_log_msg("failed to setup vlan %s\n");
      goto LABEL_13;
    }

    ramrod_log_msg("succeeded setting vlan %s with [parent = %s, tag = %d]\n", __s1, a1, v4);
    if (!sub_57BC4(v6, __s1))
    {
      ramrod_log_msg("failed to configure link local address for %s\n");
      goto LABEL_13;
    }

    if (_dispatch_is_multithreaded())
    {
      while (1)
      {
        v11 = strdup(__s1);
        if (v11)
        {
          break;
        }

        __os_temporary_resource_shortage();
      }

      v12 = v11;
    }

    else
    {
      v12 = strdup(__s1);
      v13 = strlen(__s1);
      if (!v12)
      {
        v14 = v13;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        v15 = &_os_log_default;
        os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        v16 = __error();
        v17 = strerror(*v16);
        *v20 = 136315650;
        *&v20[4] = "known-constant allocation";
        *&v20[12] = 2048;
        *&v20[14] = v14;
        v21 = 2080;
        v22 = v17;
        _os_log_send_and_compose_impl();

        _os_crash_msg();
        sub_D9E64();
      }
    }

    *a3 = v12;
LABEL_7:
    v8 = v6 >= 0;
    if (v6 == -1)
    {
      return v8;
    }

    goto LABEL_14;
  }

  v7 = __error();
  ramrod_log_msg("ioctl(SIOCIFCREATE): %d\n", *v7);
  ramrod_log_msg("failed to create vlan interface\n");
LABEL_13:
  v8 = 0;
LABEL_14:
  if (close(v6) == -1)
  {
    sub_DA0D8(v20, &v23);
  }

  return v8;
}

uint64_t sub_579F4(unsigned int *a1)
{
  result = *a1;
  if (result != -1)
  {
    result = close(result);
    if (result == -1)
    {
      sub_DA19C(&v2, v3);
    }
  }

  return result;
}

uint64_t sub_57A60()
{
  v0 = socket(30, 2, 0);
  if ((v0 & 0x80000000) != 0)
  {
    v1 = __error();
    ramrod_log_msg("failed to create socket: %d\n", *v1);
  }

  return v0;
}

uint64_t sub_57AB8(int a1, const char *a2)
{
  v5 = 0u;
  v6 = 0u;
  __strlcpy_chk();
  if (ioctl(a1, 0xC0206911uLL, &v5))
  {
    __error();
    ramrod_log_msg("ioctl(SIOCGIFFLAGS): %d\n");
    return 0;
  }

  if ((v6 & 1) == 0)
  {
    LOWORD(v6) = v6 | 1;
    if (ioctl(a1, 0x80206910uLL, &v5))
    {
      __error();
      ramrod_log_msg("ioctl(SIOCSIFFLAGS): %d\n");
      return 0;
    }
  }

  ramrod_log_msg("enabled %s\n", a2);
  return 1;
}

BOOL sub_57BC4(int a1, uint64_t a2)
{
  memset(v5, 0, sizeof(v5));
  __strlcpy_chk();
  v3 = ioctl(a1, 0xC0806982uLL, v5);
  if (v3)
  {
    __error();
    ramrod_log_msg("ioctl(SIOCLL_START): %d\n");
  }

  else
  {
    ramrod_log_msg("configured link local address for %s\n");
  }

  return v3 == 0;
}

uint64_t sub_57C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return _os_log_send_and_compose_impl();
}

uint64_t ramrod_load_tga(const char *a1, void *a2, unint64_t *a3, void *a4)
{
  memset(&v51, 0, sizeof(v51));
  v8 = open(a1, 0, 0);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = v8;
    if (fstat(v8, &v51))
    {
      v10 = __error();
      strerror(*v10);
      ramrod_log_msg("unable to stat image '%s': %s\n");
LABEL_4:
      v11 = 0;
LABEL_25:
      close(v9);
      return v11;
    }

    st_size = v51.st_size;
    v15 = mmap(0, v51.st_size, 1, 2, v9, 0);
    if (v15 == -1)
    {
      v21 = __error();
      strerror(*v21);
      ramrod_log_msg("unable to mmap image '%s': %s\n");
      goto LABEL_4;
    }

    v16 = v15;
    if (st_size >= 0x13 && v15[1] <= 1u && ((v17 = v15[2], v17 <= 0xB) ? (v18 = ((1 << v17) & 0xE0E) == 0) : (v18 = 1), !v18 && v15[7] <= 0x20u && (v15[12] || v15[13]) && (v15[14] || v15[15]) && (v19 = v15[16], (((v19 - 8) >> 3) | (32 * (v19 - 8))) <= 3u) && v15[17] < 0x40u))
    {
      if (!v15[1] && v17 >= 0xA)
      {
        v22 = *(v15 + 6);
        if (*(v15 + 6))
        {
          if (*(v15 + 7) && (v19 == 24 || v19 == 32))
          {
            v23 = 4 * v22;
            v24 = *(v15 + 7);
            v50 = v15[17];
            v49 = *v15;
            v25 = malloc((4 * v22) * v24);
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = v24 - 1;
            if (v50 >= 0x20)
            {
              v33 = 0;
            }

            v34 = &v25[v33 * v23];
            v35 = st_size - v49 - 18;
            v36 = &v16[v49 + 18];
            v37 = v22 - 1;
            while (1)
            {
              if (!v35)
              {
LABEL_69:
                if (v25)
                {
                  free(v25);
                }

                goto LABEL_23;
              }

              v39 = *v36++;
              v38 = v39;
              v40 = v39;
              --v35;
              v41 = v39 - 127;
              if (v39 >= 0)
              {
                v42 = v38 + 1;
              }

              else
              {
                v42 = v41;
              }

              if (v19 == 24)
              {
                if (v42)
                {
                  v46 = 0;
                  v47 = &v34[4 * v32 + 1];
                  do
                  {
                    if ((v40 & 0x80000000) == 0 || !v46)
                    {
                      v45 = v35 >= 3;
                      v35 -= 3;
                      if (!v45)
                      {
                        goto LABEL_69;
                      }

                      v28 = *v36;
                      v29 = v36[1];
                      v30 = v36[2];
                      v36 += 3;
                    }

                    *(v47 - 1) = v28;
                    *v47 = v29;
                    v47[1] = v30;
                    v47[2] = -1;
                    if (v37 == v32)
                    {
                      goto LABEL_64;
                    }

                    ++v46;
                    v47 += 4;
                    ++v32;
                  }

                  while (v42 > v46);
                }
              }

              else if (v42)
              {
                v43 = 0;
                v44 = &v34[4 * v32 + 1];
                while (1)
                {
                  if ((v40 & 0x80000000) == 0 || !v43)
                  {
                    v45 = v35 >= 4;
                    v35 -= 4;
                    if (!v45)
                    {
                      goto LABEL_69;
                    }

                    v27 = v36[3];
                    if (v27)
                    {
                      v28 = *v36;
                      v29 = v36[1];
                      v30 = v36[2];
                    }

                    else
                    {
                      v30 = 0;
                      v29 = 0;
                      v28 = 0;
                    }

                    v36 += 4;
                  }

                  *(v44 - 1) = v30;
                  *v44 = v29;
                  v44[1] = v28;
                  v44[2] = v27;
                  if (v37 == v32)
                  {
                    break;
                  }

                  ++v43;
                  v44 += 4;
                  ++v32;
                  if (v42 <= v43)
                  {
                    goto LABEL_67;
                  }
                }

LABEL_64:
                v32 = 0;
                v48 = v24 - 2 + v26;
                if (v50 >= 0x20)
                {
                  v48 = v31 + 1;
                }

                ++v31;
                v34 = &v25[v48 * v23];
              }

LABEL_67:
              v26 = -v31;
              if (v31 >= v24)
              {
                *a2 = v22;
                *a3 = v24;
                v11 = 1;
                *a4 = v25;
                goto LABEL_24;
              }
            }
          }
        }
      }

      ramrod_log_msg("image '%s' is an unsupported TGA\n");
    }

    else
    {
      ramrod_log_msg("image '%s' is not a TGA\n");
    }

LABEL_23:
    v11 = 0;
LABEL_24:
    munmap(v16, st_size);
    goto LABEL_25;
  }

  v12 = __error();
  v13 = strerror(*v12);
  ramrod_log_msg("unable to open image '%s': %s\n", a1, v13);
  return 0;
}

uint64_t wait_for_io_service_matching_dict(CFTypeRef cf, unsigned int a2)
{
  v4 = 0;
  do
  {
    CFRetain(cf);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, cf);
    if (MatchingService)
    {
      break;
    }

    v6 = a2 - v4 >= 3 ? 3 : a2 - v4;
    v7 = CFCopyDescription(cf);
    CStringPtr = CFStringGetCStringPtr(v7, 0);
    ramrod_log_msg("waiting for matching IOKit service: %s\n", CStringPtr);
    sleep(v6);
    v4 += v6;
    CFRelease(v7);
  }

  while (v4 < a2);
  CFRelease(cf);
  return MatchingService;
}

uint64_t wait_for_io_service_matching_resource_with_timeout(const char *a1, unsigned int a2)
{
  v4 = IOServiceMatching("IOResources");
  if (!v4)
  {
    ramrod_log_msg("unable to create matching dictionary for resource '%s'\n");
    return 0;
  }

  v5 = v4;
  v6 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x8000100u);
  if (!v6)
  {
    ramrod_log_msg("unable to convert resource name to CFString\n");
    return 0;
  }

  v7 = v6;
  CFDictionarySetValue(v5, @"IOResourceMatch", v6);
  CFRelease(v7);

  return wait_for_io_service_matching_dict(v5, a2);
}

uint64_t wait_for_io_service_matching_class_with_timeout(const char *a1, unsigned int a2)
{
  v4 = IOServiceMatching(a1);
  if (v4)
  {

    return wait_for_io_service_matching_dict(v4, a2);
  }

  else
  {
    ramrod_log_msg("unable to create matching dictionary for class '%s'\n", a1);
    return 0;
  }
}

uint64_t wait_for_io_service_matching_name(const char *a1)
{
  v2 = IOServiceNameMatching(a1);
  if (v2)
  {

    return wait_for_io_service_matching_dict(v2, 0xFFFFFFFF);
  }

  else
  {
    ramrod_log_msg("unable to create matching dictionary for service '%s'\n", a1);
    return 0;
  }
}

__CFDictionary *create_embedded_storage_service_query_dict(char *cStr)
{
  v1 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v4 = Mutable;
    CFDictionaryAddValue(Mutable, v2, kCFBooleanTrue);
    v5 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v6 = v5;
    if (v5)
    {
      CFDictionaryAddValue(v5, @"IOPropertyMatch", v4);
    }

    CFRelease(v2);
  }

  else
  {
    v6 = 0;
    v4 = v2;
  }

  CFRelease(v4);
  return v6;
}

uint64_t sub_59624(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 65))
  {
    *(v2 + 65) = v1;
    *(*(result + 32) + 64) = 1;
  }

  return result;
}

void sub_59C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_59C88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_59CA0(uint64_t a1)
{
  v2 = [*(*(*(a1 + 88) + 8) + 40) recordCount];
  if (*(*(*(a1 + 96) + 8) + 24))
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v26 = v2;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v37;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v37 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(*(a1 + 88) + 8) + 40) encodeCNAME:*(*(&v36 + 1) + 8 * i) target:*(a1 + 40)];
        }

        v6 = [v4 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v6);
    }

    v25 = [*(a1 + 48) count];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = *(a1 + 48);
    v9 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v9)
    {
      v10 = v9;
      v28 = *v33;
      do
      {
        for (j = 0; j != v10; j = j + 1)
        {
          if (*v33 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v32 + 1) + 8 * j);
          v13 = [*(a1 + 48) objectForKeyedSubscript:v12];
          v14 = [*(a1 + 56) objectForKeyedSubscript:v12];
          v15 = v14;
          if (!v14)
          {
            v14 = *(a1 + 64);
          }

          v16 = v14;

          v17 = [*(a1 + 72) objectForKeyedSubscript:v12];
          v18 = [v13 unsignedShortValue];
          v19 = [NSString stringWithFormat:@"%@.%@.", v12, *(a1 + 80)];
          v20 = [NSString stringWithFormat:@"%@.%@.%@.", v16, v12, *(a1 + 80)];
          [*(*(*(a1 + 88) + 8) + 40) encodePTR:v19 target:v20];
          [*(*(*(a1 + 88) + 8) + 40) encodeTXT:v20 strings:v17];
          [*(*(*(a1 + 88) + 8) + 40) encodeSRV:v20 priority:0 weight:0 port:v18 target:*(a1 + 40)];
        }

        v10 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v10);
    }

    v30 = 0xFB00000000000000;
    v29 = xmmword_10AE34;
    v21 = *(a1 + 88);
    v31 = *(*(*(a1 + 96) + 8) + 24);
    if (sendto(*(a1 + 120), [*(*(v21 + 8) + 40) bytes], objc_msgSend(*(*(*(a1 + 88) + 8) + 40), "length"), 0, &v29, 0x1Cu) == -1)
    {
      v22 = *__error();
      v23 = *(*(*(a1 + 104) + 8) + 24);
      v24 = strerror(v22);
      ramrod_log_msg("mDNS [%-6s]: %lu addresses + %lu services failed: %s (%d)\n", v23, v26, v25, v24, v22);
    }

    else
    {
      *(*(*(a1 + 112) + 8) + 24) = 1;
    }
  }
}

void sub_5A074(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  _Block_object_assign((a1 + 88), *(a2 + 88), 8);
  _Block_object_assign((a1 + 96), *(a2 + 96), 8);
  _Block_object_assign((a1 + 104), *(a2 + 104), 8);
  v11 = *(a2 + 112);

  _Block_object_assign((a1 + 112), v11, 8);
}

void sub_5A11C(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 112), 8);
  _Block_object_dispose(*(a1 + 104), 8);
  _Block_object_dispose(*(a1 + 96), 8);
  _Block_object_dispose(*(a1 + 88), 8);

  v2 = *(a1 + 32);
}

id sub_5A334(uint64_t a1)
{
  v2 = [NSNumber numberWithUnsignedShort:*(a1 + 64)];
  [*(*(a1 + 32) + 16) setObject:v2 forKeyedSubscript:*(a1 + 40)];

  v3 = [*(a1 + 48) copy];
  [*(*(a1 + 32) + 32) setObject:v3 forKeyedSubscript:*(a1 + 40)];

  v4 = [NSArray arrayWithArray:*(a1 + 56)];
  [*(*(a1 + 32) + 24) setObject:v4 forKeyedSubscript:*(a1 + 40)];

  v5 = *(a1 + 32);

  return [v5 _resetTimerAndFire:1];
}

id sub_5A3F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  v6 = *(a2 + 56);

  return v6;
}

void sub_5A444(uint64_t a1)
{
  v2 = *(a1 + 32);
}

id sub_5A530(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setObject:0 forKeyedSubscript:*(a1 + 40)];
  [*(*(a1 + 32) + 32) setObject:0 forKeyedSubscript:*(a1 + 40)];
  [*(*(a1 + 32) + 24) setObject:0 forKeyedSubscript:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _resetTimerAndFire:1];
}

id sub_5A598(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);

  return v4;
}

void sub_5A5D4(uint64_t a1)
{
  v2 = *(a1 + 32);
}

id sub_5A6B0(uint64_t a1)
{
  [*(*(a1 + 32) + 8) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _resetTimerAndFire:1];
}

id sub_5A794(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _resetTimerAndFire:1];
}

void sub_5AB0C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v7 length])
  {
    v8 = [v6 stringByAppendingFormat:@"=%@", v7];
    [v5 addObject:v8];
  }
}

void sub_5ABC0(void *a1, id a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    v10 = 0;
    v7 = a2;
    v8 = a1;
    [a3 getBytes:&v10 length:4];
    v9 = sub_5ACC4(v7, v10, a4);

    [v8 addObject:v9];
  }
}

id sub_5ACC4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = __ROR8__(a3, 1);
  if (v6 >= 9 || ((0x131u >> v6) & 1) == 0)
  {
    abort();
  }

  v7 = v5;
  v8 = [v5 stringByAppendingFormat:off_1A9E58[v6], a2];

  return v8;
}

_DWORD *DEREncoderCreate(int a1)
{
  result = calloc(1uLL, 0x10uLL);
  if (result)
  {
    result[3] = a1;
  }

  return result;
}

void DEREncoderDestroy(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      do
      {
        v3 = *v2;
        sub_5BA90(v2);
        v2 = v3;
      }

      while (v3);
    }

    free(a1);
  }
}

uint64_t DEREncoderAddData(uint64_t *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_5AFA8(a2, a3, a4, a5, a6, 3);

  return sub_5AE34(a1, v7);
}

uint64_t sub_5AE34(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  if (!a1)
  {
    v22 = 1;
    if (!a2)
    {
      return v22;
    }

    goto LABEL_30;
  }

  if (!a2)
  {
    return 2;
  }

  v4 = *(a1 + 2);
  v5 = a2;
  do
  {
    v6 = *(v5 + 5);
    v7 = __CFADD__(v4, v6);
    v8 = v4 + v6;
    if (v7 || (v9 = *(v5 + 6), v4 = v8 + v9, __CFADD__(v8, v9)))
    {
      v22 = 2;
      do
      {
LABEL_30:
        v23 = *v2;
        sub_5BA90(v2);
        v2 = v23;
      }

      while (v23);
      return v22;
    }

    v5 = *v5;
  }

  while (v5);
  v10 = *a1;
  v11 = a1;
  if (!*a1)
  {
    goto LABEL_26;
  }

  v12 = *(a1 + 3);
  v11 = a1;
  while (2)
  {
    v13 = v11;
    v11 = v10;
    if (!v12)
    {
      goto LABEL_20;
    }

    v14 = bswap64(*(v2 + 28));
    v15 = bswap64(*(v11 + 28));
    if (v14 != v15 || (v14 = bswap64(*(v2 + 36)), v15 = bswap64(*(v11 + 36)), v14 != v15))
    {
      if (v14 < v15)
      {
        v16 = -1;
      }

      else
      {
        v16 = 1;
      }

LABEL_19:
      if (v16 < 0)
      {
        break;
      }

      goto LABEL_20;
    }

    v17 = *(v2 + 6);
    v18 = *(v11 + 6);
    if (v17 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    v16 = memcmp(v2[1], v11[1], v19);
    if (v16)
    {
      goto LABEL_19;
    }

    if (v17 >= v18)
    {
LABEL_20:
      v10 = *v11;
      if (!*v11)
      {
        goto LABEL_26;
      }

      continue;
    }

    break;
  }

  v20 = v2;
  do
  {
    v21 = v20;
    v20 = *v20;
  }

  while (v20);
  *v21 = v11;
  v11 = v13;
LABEL_26:
  v22 = 0;
  *v11 = v2;
  *(a1 + 2) = v4;
  return v22;
}

char *sub_5AFA8(unsigned int a1, unsigned int a2, const void *a3, unsigned int a4, int a5, int a6)
{
  if (!a3 && a4 && a6)
  {
    return 0;
  }

  v12 = calloc(1uLL, 0x38uLL);
  v13 = v12;
  if (v12)
  {
    *(v12 + 4) = 1;
    v14 = v12 + 28;
    if (a1 == 259)
    {
      v15 = 0;
    }

    else
    {
      if (a1 > 3)
      {
        goto LABEL_41;
      }

      if (a2 > 0x1E)
      {
        v17 = 0;
        v28 = 0;
        do
        {
          *(&v28 + v17++) = a2 & 0x7F;
          v18 = a2 > 0x7F;
          a2 >>= 7;
        }

        while (v18);
        v19 = v17 - 1;
        v16 = v13 + 28;
        if ((v17 - 1) <= 0xE)
        {
          v13[28] = (a1 << 6) | (32 * (a5 != 0)) | 0x1F;
          v20 = v13 + 29;
          if (v17 != 1)
          {
            do
            {
              *v20++ = *(&v28 + v19--) | 0x80;
            }

            while (v19);
          }

          *v20 = v28;
          v16 = v20 + 1;
        }
      }

      else
      {
        v13[28] = (a1 << 6) | (32 * (a5 != 0)) | a2;
        v16 = v13 + 29;
      }

      v21 = v16 - v14;
      if (!v21)
      {
        goto LABEL_41;
      }

      v22 = &v14[v21];
      if (a4 > 0x7F)
      {
        v24 = 0;
        v28 = 0;
        v25 = a4;
        do
        {
          *(&v28 + v24++) = v25;
          v18 = v25 > 0xFF;
          v25 >>= 8;
        }

        while (v18);
        if (16 - v21 <= v24)
        {
          LODWORD(v23) = v14 + v21;
        }

        else
        {
          *v22 = v24 | 0x80;
          v23 = v22 + 1;
          do
          {
            *v23++ = *(&v28 + --v24);
          }

          while (v24);
        }
      }

      else
      {
        LODWORD(v23) = v14 + v21;
        if (v21 != 16)
        {
          *v22 = a4;
          LODWORD(v23) = v22 + 1;
        }
      }

      v26 = v23 - v22;
      if (v23 == v22)
      {
        goto LABEL_41;
      }

      v14 = &v22[v26];
      v15 = v21 + v26;
    }

    *(v13 + 5) = v15;
    if (a6 <= 1)
    {
      if (!a6)
      {
        *(v13 + 1) = 0;
        *(v13 + 6) = 0;
        *(v13 + 6) = 0;
        return v13;
      }

      *(v13 + 1) = a3;
      *(v13 + 6) = 0;
LABEL_16:
      *(v13 + 6) = a4;
      return v13;
    }

    if (a6 == 2)
    {
      *(v13 + 1) = a3;
      *(v13 + 6) = v13;
      goto LABEL_16;
    }

    if (v13 + 56 - v14 >= a4)
    {
      *(v13 + 1) = v14;
      *(v13 + 6) = a4;
    }

    else
    {
      v14 = malloc(a4);
      *(v13 + 1) = v14;
      *(v13 + 6) = v13;
      *(v13 + 6) = a4;
      if (!v14)
      {
LABEL_41:
        free(v13);
        return 0;
      }
    }

    memcpy(v14, a3, a4);
  }

  return v13;
}
void sub_1000011E0(char a1)
{
  if (a1)
  {
    if ((a1 & 2) != 0)
    {
      dispatch_sync(qword_10003D2A8, &stru_100035A60);
    }

    block = _NSConcreteStackBlock;
    v3 = 0x40000000;
    v4 = sub_1000012F0;
    v5 = &unk_100035A80;
    v6 = 0;
    dispatch_sync(qword_10003D2A8, &block);
    sub_10001FD3C();
    if ((a1 & 4) == 0)
    {
LABEL_3:
      if ((a1 & 8) == 0)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_3;
  }

  sub_100012FF4(0, 0);
  if ((a1 & 8) == 0)
  {
    return;
  }

LABEL_4:
  block = _NSConcreteStackBlock;
  v3 = 0x40000000;
  v4 = sub_1000012F0;
  v5 = &unk_100035A80;
  v6 = 1;
  dispatch_sync(qword_10003D2A8, &block);
}

void sub_1000012F0(uint64_t a1)
{
  v2 = sub_100001398();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 == 1)
  {
    v14 = time(0);
    v15 = sub_10001CF80(v3, v14);
    if (v15)
    {
      sub_1000213B4(v15, v16, v17, v18, v19, v20, v21, v22, v23);
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v4)
  {
    abort();
  }

  v5 = time(0);
  v6 = sub_100001A28(v3, v5);
  if (!v6)
  {
LABEL_7:
    sub_100001D24(v3);
    goto LABEL_8;
  }

  sub_1000213C8(v6, v7, v8, v9, v10, v11, v12, v13, v23);
LABEL_8:

  CFRelease(v3);
}

const __CFDictionary *sub_100001398()
{
  v0 = sub_100001778("/var/root/.mkb_seshat_health");
  if (v0)
  {
    Mutable = v0;
    valuePtr = 0;
    Value = CFDictionaryGetValue(v0, @"_DVERS");
    if (!Value)
    {
      sub_10001D660(0, v9, v10, v11, v12, v13, v14, v15, v167);
      goto LABEL_34;
    }

    v16 = Value;
    v17 = CFGetTypeID(Value);
    TypeID = CFNumberGetTypeID();
    if (v17 == TypeID)
    {
      v169 = 0;
      v26 = CFNumberGetValue(v16, kCFNumberSInt32Type, &valuePtr);
      if (v26)
      {
        if (valuePtr == 7)
        {
          v34 = CFDictionaryGetValue(Mutable, @"_DTIME");
          if (v34)
          {
            v35 = v34;
            v36 = CFGetTypeID(v34);
            v37 = CFNumberGetTypeID();
            if (v36 != v37)
            {
              sub_10001D480(v37, v38, v39, v40, v41, v42, v43, v44);
              goto LABEL_34;
            }

            v45 = CFNumberGetValue(v35, kCFNumberLongType, &v169);
            if (!v45)
            {
              sub_10001D4A8(v45, v46, v47, v48, v49, v50, v51, v52);
              goto LABEL_34;
            }
          }

          v53 = CFDictionaryGetValue(Mutable, @"_DDATA");
          MutableCopy = v53;
          if (!v53)
          {
            goto LABEL_17;
          }

          v55 = CFGetTypeID(v53);
          v56 = CFArrayGetTypeID();
          if (v55 == v56)
          {
            if (CFArrayGetCount(MutableCopy) >= 1)
            {
              v64 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v64);
                if (!ValueAtIndex)
                {
                  break;
                }

                v73 = CFGetTypeID(ValueAtIndex);
                ValueAtIndex = CFNumberGetTypeID();
                if (v73 != ValueAtIndex)
                {
                  break;
                }

                if (CFArrayGetCount(MutableCopy) <= ++v64)
                {
                  goto LABEL_16;
                }
              }

              sub_10001D4F8(ValueAtIndex, v66, v67, v68, v69, v70, v71, v72);
              goto LABEL_34;
            }

LABEL_16:
            MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, MutableCopy);
            CFDictionarySetValue(Mutable, @"_DDATA", MutableCopy);
LABEL_17:
            v74 = CFDictionaryGetValue(Mutable, @"_DFAIL");
            if (!v74)
            {
              goto LABEL_20;
            }

            v75 = v74;
            v168 = 0;
            v76 = CFGetTypeID(v74);
            if (v76 == CFNumberGetTypeID())
            {
              if (CFNumberGetValue(v75, kCFNumberLongType, &v168))
              {
LABEL_20:
                v83 = CFDictionaryGetValue(Mutable, @"_DSEUN");
                if (v83)
                {
                  v84 = CFGetTypeID(v83);
                  v85 = CFStringGetTypeID();
                  if (v84 != v85)
                  {
                    sub_10001D520(v85, v86, v87, v88, v89, v90, v91, v92);
                    goto LABEL_57;
                  }
                }

                v93 = CFDictionaryGetValue(Mutable, @"_DTTR");
                if (!v93)
                {
                  goto LABEL_25;
                }

                v94 = v93;
                v95 = CFGetTypeID(v93);
                v96 = CFNumberGetTypeID();
                if (v95 != v96)
                {
                  sub_10001D548(v96, v97, v98, v99, v100, v101, v102, v103);
                  goto LABEL_57;
                }

                v104 = CFNumberGetValue(v94, kCFNumberSInt64Type, &v169);
                if (!v104)
                {
                  sub_10001D570(v104, v105, v106, v107, v108, v109, v110, v111);
                }

                else
                {
LABEL_25:
                  v112 = CFDictionaryGetValue(Mutable, @"_DLD");
                  if (!v112)
                  {
                    goto LABEL_28;
                  }

                  v113 = v112;
                  v114 = CFGetTypeID(v112);
                  v115 = CFNumberGetTypeID();
                  if (v114 != v115)
                  {
                    sub_10001D598(v115, v116, v117, v118, v119, v120, v121, v122);
                    goto LABEL_57;
                  }

                  v123 = CFNumberGetValue(v113, kCFNumberSInt64Type, &v169);
                  if (!v123)
                  {
                    sub_10001D5C0(v123, v124, v125, v126, v127, v128, v129, v130);
                  }

                  else
                  {
LABEL_28:
                    v131 = CFDictionaryGetValue(Mutable, @"_DLD");
                    if (!v131)
                    {
                      goto LABEL_31;
                    }

                    v132 = v131;
                    v133 = CFGetTypeID(v131);
                    v134 = CFNumberGetTypeID();
                    if (v133 == v134)
                    {
                      v142 = CFNumberGetValue(v132, kCFNumberSInt64Type, &v169);
                      if (v142)
                      {
LABEL_31:
                        v150 = 1;
                        if (!MutableCopy)
                        {
                          goto LABEL_33;
                        }

                        goto LABEL_32;
                      }

                      sub_10001D610(v142, v143, v144, v145, v146, v147, v148, v149);
                    }

                    else
                    {
                      sub_10001D5E8(v134, v135, v136, v137, v138, v139, v140, v141);
                    }
                  }
                }

LABEL_57:
                v150 = 0;
                if (!MutableCopy)
                {
LABEL_33:
                  if (v150)
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_34;
                }

LABEL_32:
                CFRelease(MutableCopy);
                goto LABEL_33;
              }

              v166 = @"invalid fail indicator";
            }

            else
            {
              v166 = @"fail indicator is of wrong type";
            }

            sub_100011BE0("validate_health_plist", v166, v77, v78, v79, v80, v81, v82);
            goto LABEL_57;
          }

          sub_10001D4D0(v56, v57, v58, v59, v60, v61, v62, v63);
        }

        else
        {
          sub_100011BE0("validate_health_plist", @"non-current version %d", v28, v29, v30, v31, v32, v33, valuePtr);
        }
      }

      else
      {
        sub_10001D638(v26, v27, v28, v29, v30, v31, v32, v33);
      }
    }

    else
    {
      sub_10001D46C(TypeID, v19, v20, v21, v22, v23, v24, v25, v167);
    }

LABEL_34:
    CFRelease(Mutable);
  }

  sub_100011BE0("HealthPlistCopyOrCreateNew", @"health plist doesnt exist or wrong version, creating new one", v1, v2, v3, v4, v5, v6);
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    sub_10001D6B0(0, v151, v152, v153, v154, v155, v156, v157);
    return Mutable;
  }

LABEL_36:
  if (sub_10000199C(Mutable, 7))
  {
    sub_10001D674(Mutable, v158, v159, v160, v161, v162, v163, v164);
    return 0;
  }

  return Mutable;
}

const void *sub_100001778(const char *a1)
{
  memset(&v15.st_size, 0, 48);
  v2 = open(a1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v2 == -1)
  {
    sub_10001CC48(a1);
    v11 = 0;
    v13 = 0;
    goto LABEL_7;
  }

  v3 = v2;
  if (fstat(v2, &v15))
  {
    sub_10001CB88(a1);
    v13 = 0;
    v11 = 0;
    goto LABEL_6;
  }

  v11 = malloc_type_malloc(LODWORD(v15.st_size), 0x13CE63AEuLL);
  if (!v11)
  {
    sub_10001CC20(0, v4, v5, v6, v7, v8, v9, v10);
LABEL_12:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = read(v3, v11, v15.st_size);
  if (v12 != v15.st_size)
  {
    sub_10001CBD4(a1);
    goto LABEL_12;
  }

  v13 = sub_100001878(v11, v12);
LABEL_6:
  close(v3);
LABEL_7:
  free(v11);
  return v13;
}

const void *sub_100001878(UInt8 *bytes, CFIndex length)
{
  v2 = 0;
  format = kCFPropertyListBinaryFormat_v1_0;
  if (bytes && length)
  {
    v4 = CFReadStreamCreateWithBytesNoCopy(kCFAllocatorDefault, bytes, length, kCFAllocatorNull);
    if (!v4)
    {
      sub_100011BE0("load_binary_dict_from_buffer", @"Could not create stream from serialized data", v5, v6, v7, v8, v9, v10);
      return 0;
    }

    v11 = v4;
    if (CFReadStreamOpen(v4))
    {
      v18 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v11, length, 2uLL, &format, 0);
      v2 = v18;
      if (!v18)
      {
        sub_100011BE0("load_binary_dict_from_buffer", @"Could not create dictionary from stream", v19, v20, v21, v22, v23, v24);
        goto LABEL_9;
      }

      v25 = CFGetTypeID(v18);
      if (v25 == CFDictionaryGetTypeID())
      {
LABEL_9:
        CFReadStreamClose(v11);
        CFRelease(v11);
        return v2;
      }

      CFRelease(v2);
    }

    else
    {
      sub_100011BE0("load_binary_dict_from_buffer", @"Could not open the stream", v12, v13, v14, v15, v16, v17);
    }

    v2 = 0;
    goto LABEL_9;
  }

  return v2;
}

uint64_t sub_10000199C(__CFDictionary *a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  valuePtr = a2;
  v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (v3)
  {
    CFDictionarySetValue(a1, @"_DVERS", v3);
    return 0;
  }

  else
  {
    sub_100011BE0("HealthPlistSetVersion", @"cant allocate mem", v4, v5, v6, v7, v8, v9);
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100001A28(CFMutableDictionaryRef theDict, uint64_t a2)
{
  if (theDict)
  {
    if (a2 < 1)
    {
      CFDictionaryRemoveValue(theDict, @"_DULD");
      return 0;
    }

    sub_100001AE8();
    v6 = CFNumberCreate(v3, v4, v5);
    if (v6)
    {
      v13 = v6;
      CFDictionarySetValue(theDict, @"_DULD", v6);
      CFRelease(v13);
      return 0;
    }

    sub_100011BE0("HealthPlistSetUnlockDate", @"unable to allocate", v7, v8, v9, v10, v11, v12);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100001B30(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

uint64_t sub_100001B60(const void *a1, const char *a2, int *a3)
{
  v5 = sub_100001C74(a1);
  if (!v5)
  {
    sub_10001CB74(0, v6, v7, v8, v9, v10, v11, v12, v21);
    return 0xFFFFFFFFLL;
  }

  v13 = v5;
  v14 = open_dprotected_np(a2, 1537, 4, 0, 420);
  if (v14 == -1)
  {
    sub_10001CB28(a2);
    v18 = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  v15 = v14;
  BytePtr = CFDataGetBytePtr(v13);
  Length = CFDataGetLength(v13);
  if (sub_100001D4C(v15, BytePtr, Length) == -1)
  {
    v19 = @"Could not write to %s: %s";
LABEL_12:
    sub_10001CADC(v19, a2);
    v18 = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

  if (fcntl(v15, 51))
  {
    v19 = @"Unable to fsync %s: %s";
    goto LABEL_12;
  }

  v18 = 0;
  if (!a3)
  {
LABEL_13:
    CFRelease(v13);
    close(v15);
    return v18;
  }

  *a3 = v15;
LABEL_7:
  CFRelease(v13);
  return v18;
}

CFTypeRef sub_100001C74(const void *a1)
{
  v2 = CFWriteStreamCreateWithAllocatedBuffers(kCFAllocatorDefault, kCFAllocatorDefault);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFWriteStreamOpen(v2))
  {
    if (CFPropertyListWrite(a1, v3, kCFPropertyListBinaryFormat_v1_0, 0, 0) < 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = CFWriteStreamCopyProperty(v3, kCFStreamPropertyDataWritten);
    }

    CFWriteStreamClose(v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

uint64_t sub_100001D24(const void *a1)
{
  if (sub_100001D1C(a1, "/var/root/.mkb_seshat_health"))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

size_t sub_100001D4C(int __fd, char *__buf, size_t __nbyte)
{
  v3 = __nbyte;
  if (__nbyte)
  {
    v6 = __nbyte;
    do
    {
      v7 = write(__fd, __buf, v6);
      if (v7 == -1)
      {
        if (*__error() != 4)
        {
          return -1;
        }

        v7 = 0;
      }

      __buf += v7;
      v6 -= v7;
    }

    while (v6);
  }

  return v3;
}

void sub_100001DC8(id a1)
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  memset(msg, 0, sizeof(msg));
  v1 = mach_msg(msg, 2, 0, 0x64u, dword_10003D400, 0, 0);
  if (v1)
  {
LABEL_2:
    sub_100011BE0("serverPort_block_invoke_2", @"mach_msg error: %x", v2, v3, v4, v5, v6, v7, v1);
    return;
  }

  if (*&msg[20] == 44)
  {
    sub_100011BE0("serverPort_block_invoke_2", @"aks notification for recovery completion %d", v2, v3, v4, v5, v6, v7, *&msg[28]);
    sub_100012C88(*&msg[28]);
    return;
  }

  if (*&msg[20] != 43)
  {
    if (*&msg[20] == 42)
    {
      sub_100001ED0();
      return;
    }

    goto LABEL_2;
  }

  if (!*&msg[24])
  {
    sub_100012B80(0, *&msg[28] == 0);
  }
}

void sub_100001ED0()
{
  xpc_transaction_begin();
  v0 = qword_10003D388;

  dispatch_async(v0, &stru_100035458);
}

void sub_100001F08(id a1)
{
  sub_100001F30();

  xpc_transaction_end();
}

uint64_t sub_100001F30()
{
  if ((byte_10003D378 & 1) == 0)
  {
    v0 = sub_100002288("/private/var//keybags/backup/backup_keys_cache.sql3", 0, 0, 0);
    if (v0)
    {
      v1 = v0;
      v2 = sub_10000B954(v0);
      sub_1000028E4(v1);
      if (v2)
      {
        sub_100011BE0("db_check_once", @"%s is corrupted, discarding", v3, v4, v5, v6, v7, v8, "/private/var//keybags/backup/backup_keys_cache.sql3");
        unlink("/private/var//keybags/backup/backup_keys_cache.sql3");
      }

      else
      {
        sub_100011BE0("db_check_once", @"%s is ok", v3, v4, v5, v6, v7, v8, "/private/var//keybags/backup/backup_keys_cache.sql3");
      }

      byte_10003D378 = 1;
    }
  }

  aks_drain_backup_keys_info();
  return 0;
}

uint64_t sub_100002230()
{
  if ((byte_10003D368 & 1) == 0)
  {
    sub_100011F00();
    aks_get_lock_state();
  }

  return byte_10003D368;
}

sqlite3 *sub_100002288(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  ppDb = 0;
  memset(&v55, 0, sizeof(v55));
  if (a2 && a3)
  {
    if (!a4)
    {
      return 0;
    }

    v49 = 1;
LABEL_49:
    result = 0;
    *(v4 + 20) = v49;
    return result;
  }

  if (a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (a2)
  {
    v7 |= 4u;
  }

  v53 = v7;
  if (!sub_100002230())
  {
    if (!v4)
    {
      return 0;
    }

    v49 = 2;
    goto LABEL_49;
  }

  v8 = 0;
  v52 = 0;
  v9 = 0;
  v10 = 1;
  v50 = v4;
  while (1)
  {
    v11 = v10;
    v12 = stat(a1, &v55);
    v51 = v12 == 0;
    v13 = sqlite3_open_v2(a1, &ppDb, v53 | 0x300000, 0);
    if (v13)
    {
      v20 = v13;
      if (v4)
      {
        *(v4 + 24) = v13;
      }

      v21 = 4;
      goto LABEL_23;
    }

    factor = _sqlite3_maintain_load_factor();
    v20 = factor;
    if (factor)
    {
      sub_100011BE0("db_open_mode_with_stats", @"_sqlite3_maintain_load_factor for %s failed: %d", v14, v15, v16, v17, v18, v19, a1, factor);
    }

    result = ppDb;
    if (v12)
    {
      break;
    }

    if (sub_10000258C(ppDb) != 2)
    {
      goto LABEL_21;
    }

    v31 = ppDb;
    errmsg = 0;
    sub_100011BE0("db_migrate_from_v2", @"Migrating backup db from v2", v25, v26, v27, v28, v29, v30);
    if (!sqlite3_exec(v31, "ALTER TABLE WrappedKeys ADD COLUMN AddTime TIMESTAMP DEFAULT 0;ALTER TABLE WrappedKeys ADD COLUMN AccessTime TIMESTAMP DEFAULT 0;ALTER TABLE WrappedKeys ADD COLUMN ClearTime TIMESTAMP DEFAULT 0;PRAGMA user_version = 3;", 0, 0, &errmsg))
    {
      v4 = v50;
LABEL_21:
      v38 = sub_10000258C(ppDb);
      if (v38 == 3)
      {
        v47 = 1;
        goto LABEL_37;
      }

      v9 = v38;
      v21 = 6;
LABEL_23:
      v52 = v21;
      goto LABEL_24;
    }

    sub_100011BE0("db_migrate_from_v2", @"sqlite error: %s", v32, v33, v34, v35, v36, v37, errmsg);
    sqlite3_free(errmsg);
    v9 = 2;
    v52 = 7;
    v4 = v50;
LABEL_24:
    sub_100011BE0("db_open_mode_with_stats", @"db(%d) @ %s has a problem, rc=%d, version=%d, existed=%d, create=%d, readonly=%d", v14, v15, v16, v17, v18, v19, v8, a1, v20, v9, v12 == 0, a2, a3);
    if (ppDb)
    {
      if (a3)
      {
        sqlite3_close(ppDb);
        ppDb = 0;
      }

      else
      {
        v39 = sub_10000B9E8(ppDb);
        if (v4)
        {
          *(v4 + 28) = 1;
        }

        sqlite3_close(ppDb);
        ppDb = 0;
        if (v39)
        {
          v40 = unlink(a1);
          sub_100011BE0("db_open_mode_with_stats", @"db(%d) @ %s has a problem, unlink rc=%d", v41, v42, v43, v44, v45, v46, v8, a1, v40);
          if (v4)
          {
            *(v4 + 29) = 1;
          }
        }
      }
    }

    v10 = 0;
    v8 = 1;
    if ((v11 & 1) == 0)
    {
      v47 = v51;
LABEL_37:
      result = ppDb;
      if (!ppDb)
      {
        goto LABEL_45;
      }

      if (v47)
      {
        return result;
      }

      goto LABEL_39;
    }
  }

  if (!ppDb)
  {
LABEL_45:
    v49 = v52;
    if (v4)
    {
      goto LABEL_49;
    }

    return 0;
  }

LABEL_39:
  v48 = sub_10000BA54(result, v23, v14, v15, v16, v17, v18, v19);
  result = ppDb;
  if (v48)
  {
    return result;
  }

  sqlite3_close(ppDb);
  if (v4)
  {
    v49 = 3;
    goto LABEL_49;
  }

  return 0;
}

uint64_t sub_10000258C(sqlite3 *a1)
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(a1, "PRAGMA user_version;", -1, &ppStmt, 0) || sqlite3_step(ppStmt) != 100)
  {
    v1 = 0;
  }

  else
  {
    v1 = sqlite3_column_int(ppStmt, 0);
  }

  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v1;
}

uint64_t sub_100002608(sqlite3 *a1, int a2)
{
  errmsg = 0;
  if (a2)
  {
    v2 = "BEGIN TRANSACTION";
  }

  else
  {
    v2 = "END TRANSACTION";
  }

  v3 = sqlite3_exec(a1, v2, 0, 0, &errmsg);
  if (errmsg)
  {
    sqlite3_free(errmsg);
  }

  return v3;
}

uint64_t sub_10000266C(sqlite3 *a1, sqlite3_int64 *a2, const void *a3, int *a4)
{
  ppStmt = 0;
  v8 = sqlite3_prepare_v2(a1, "REPLACE INTO WrappedKeys (Inode, Uuid, Key, AddTime) VALUES(?, ?, ?, datetime('now', 'subsec'))", -1, &ppStmt, 0);
  if (v8)
  {
    v22 = v8;
    v23 = sqlite3_errmsg(a1);
    sub_100011BE0("db_add_item_with_error", @"Cannot prepare statement: %s", v24, v25, v26, v27, v28, v29, v23);
    v20 = 2;
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

  v9 = sqlite3_bind_int64(ppStmt, 1, *a2);
  if (v9)
  {
    v22 = v9;
    v30 = sqlite3_errmsg(a1);
    sub_100011BE0("db_add_item_with_error", @"Cannot bind inode int64 %s", v31, v32, v33, v34, v35, v36, v30);
    v20 = 3;
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

  v10 = sqlite3_bind_blob(ppStmt, 2, a2 + 1, 16, 0);
  if (v10)
  {
    v22 = v10;
    v37 = sqlite3_errmsg(a1);
    sub_100011BE0("db_add_item_with_error", @"Cannot bind uuid blob %s", v38, v39, v40, v41, v42, v43, v37);
    v20 = 4;
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

  v11 = sqlite3_bind_blob(ppStmt, 3, a3, 108, 0);
  if (v11)
  {
    v22 = v11;
    v44 = sqlite3_errmsg(a1);
    sub_100011BE0("db_add_item_with_error", @"Cannot bind key blob %s", v45, v46, v47, v48, v49, v50, v44);
    v20 = 5;
    if (!a4)
    {
      goto LABEL_7;
    }

LABEL_19:
    *a4 = v22;
    goto LABEL_7;
  }

  v12 = sqlite3_step(ppStmt);
  if (v12 == 101)
  {
    v20 = 0;
    goto LABEL_7;
  }

  v22 = v12;
  v51 = sqlite3_errmsg(a1);
  sub_100011BE0("db_add_item_with_error", @"step failed: %s", v52, v53, v54, v55, v56, v57, v51);
  v20 = 6;
  if (a4)
  {
    goto LABEL_19;
  }

LABEL_7:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  v58 = v20;
  sub_100002844(&v58, v13, v14, v15, v16, v17, v18, v19);
  return v20;
}

void sub_100002844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (&_analytics_send_event_lazy)
  {
    analytics_send_event_lazy();
  }

  else
  {

    sub_100011BE0("analytics_send_db_add", @"CA fwk missing, not sending event", a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_1000028E4(sqlite3 *a1)
{
  v1 = sqlite3_close(a1);
  v8 = v1;
  if (v1)
  {
    sub_100011BE0("db_close", @"failed to close sqlite with %d", v2, v3, v4, v5, v6, v7, v1);
  }

  return v8;
}

void sub_100002930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (&_analytics_send_event_lazy)
  {
    analytics_send_event_lazy();
  }

  else
  {

    sub_100011BE0("analytics_send_backup_key_drain", @"CA fwk missing, not sending event", a3, a4, a5, a6, a7, a8);
  }
}

xpc_object_t sub_1000029D0(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "filekey_count", **(a1 + 32));
  xpc_dictionary_set_uint64(v2, "fault", *(*(a1 + 32) + 8));
  xpc_dictionary_set_BOOL(v2, "first_unlocked", *(*(a1 + 32) + 12));
  xpc_dictionary_set_uint64(v2, "add_error", *(*(a1 + 32) + 16));
  xpc_dictionary_set_uint64(v2, "open_error", *(*(a1 + 32) + 20));
  xpc_dictionary_set_uint64(v2, "sqlite_error", *(*(a1 + 32) + 24));
  xpc_dictionary_set_BOOL(v2, "truncated", *(*(a1 + 32) + 28));
  xpc_dictionary_set_BOOL(v2, "unlinked", *(*(a1 + 32) + 29));
  return v2;
}

uint64_t sub_100002AC4(unsigned int a1, const void *a2, size_t a3)
{
  connect = 0;
  input = a1;
  v5 = IOServiceMatching("AppleEffaceableStorage");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
  v14 = MatchingService;
  if (MatchingService)
  {
    v15 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
    if (v15)
    {
      v29 = v15;
      sub_100011BE0("storeBlastableBytes", @"Unable to open service: 0x%08x", v16, v17, v18, v19, v20, v21, v15);
    }

    else
    {
      v22 = IOConnectCallMethod(connect, 6u, &input, 1u, a2, a3, 0, 0, 0, 0);
      v29 = v22;
      if (v22)
      {
        sub_100011BE0("storeBlastableBytes", @"Can't store blastable bytes: %08x", v23, v24, v25, v26, v27, v28, v22);
      }
    }
  }

  else
  {
    sub_10001B338(MatchingService, v7, v8, v9, v10, v11, v12, v13, outputStruct);
    v29 = 3758097084;
  }

  if (connect)
  {
    IOServiceClose(connect);
  }

  if (v14)
  {
    IOObjectRelease(v14);
  }

  return v29;
}

uint64_t sub_100002BE8(unsigned int a1, void *a2, size_t *a3)
{
  connect = 0;
  input = a1;
  output = 0;
  outputCnt = 1;
  v5 = IOServiceMatching("AppleEffaceableStorage");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
  v14 = MatchingService;
  if (MatchingService)
  {
    v15 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
    if (v15)
    {
      v29 = v15;
      sub_100011BE0("loadBlastableBytes", @"Unable to open service: 0x%08x", v16, v17, v18, v19, v20, v21, v15);
    }

    else
    {
      v22 = IOConnectCallMethod(connect, 5u, &input, 1u, 0, 0, &output, &outputCnt, a2, a3);
      v29 = v22;
      if (v22)
      {
        sub_100011BE0("loadBlastableBytes", @"Can't load blastable bytes: %08x", v23, v24, v25, v26, v27, v28, v22);
      }
    }
  }

  else
  {
    sub_10001B34C(MatchingService, v7, v8, v9, v10, v11, v12, v13, outputStruct);
    v29 = 3758097084;
  }

  if (connect)
  {
    IOServiceClose(connect);
  }

  if (v14)
  {
    IOObjectRelease(v14);
  }

  return v29;
}

uint64_t sub_100002D14(unsigned int a1)
{
  bzero(v34, 0x400uLL);
  v33 = 1024;
  connect = 0;
  input = a1;
  output = 0;
  outputCnt = 1;
  v2 = IOServiceMatching("AppleEffaceableStorage");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  v11 = MatchingService;
  if (MatchingService)
  {
    v12 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
    if (v12)
    {
      v19 = v12;
      sub_100011BE0("effaceBlastableBytes", @"Unable to open service: 0x%08x", v13, v14, v15, v16, v17, v18, v12);
    }

    else
    {
      v19 = IOConnectCallMethod(connect, 5u, &input, 1u, 0, 0, &output, &outputCnt, v34, &v33);
      if (!v19)
      {
        v20 = IOConnectCallMethod(connect, 7u, &input, 1u, 0, 0, &output, &outputCnt, 0, 0);
        v19 = v20;
        if (v20)
        {
          sub_100011BE0("effaceBlastableBytes", @"efface failed: 0x%x", v21, v22, v23, v24, v25, v26, v20);
        }
      }
    }
  }

  else
  {
    sub_10001B360(MatchingService, v4, v5, v6, v7, v8, v9, v10, outputStruct);
    v19 = 3758097084;
  }

  if (connect)
  {
    IOServiceClose(connect);
  }

  if (v11)
  {
    IOObjectRelease(v11);
  }

  return v19;
}

id sub_100002F40(uint64_t a1)
{
  if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
  {
    [+[NSFileManager defaultManager](NSFileManager moveItemAtPath:"moveItemAtPath:toPath:error:" toPath:@"/private/var/root/Library/Preferences/spaced_repetition.plist" error:@"/private/var/root/Library/Preferences/com.apple.spaced_repetition.plist", 0];
  }

  result = [objc_alloc(*(a1 + 32)) initialize];
  qword_10003D2B8 = result;
  return result;
}

void sub_10000366C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000037B8(uint64_t a1)
{
  NSLog(@"setting next verification timer[%d] for %lu seconds", ++dword_10003D284, *(a1 + 40));
  v2 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"repetitionPeriodTimer:" selector:[NSNumber numberWithInt:dword_10003D284] userInfo:0 repeats:*(a1 + 40)];
  v3 = +[NSRunLoop currentRunLoop];

  return [(NSRunLoop *)v3 addTimer:v2 forMode:NSRunLoopCommonModes];
}

uint64_t sub_100003A20()
{
  if (sub_10000C768() || ![+[SpacedRepetitionManager beginNewRepetitionPeriod] sharedInstance]
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003A60()
{
  if (sub_10000C768() || ![+[SpacedRepetitionManager continueRepetitionPeriod] sharedInstance]
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

Class sub_100003ABC(uint64_t a1)
{
  sub_100003B14();
  result = objc_getClass("BKDeviceManager");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10001B374();
  }

  qword_10003D2C0 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void sub_100003B14()
{
  v0[0] = 0;
  if (!qword_10003D2C8)
  {
    v0[1] = _NSConcreteStackBlock;
    v0[2] = 3221225472;
    v0[3] = sub_100003C08;
    v0[4] = &unk_100034D08;
    v0[5] = v0;
    v1 = off_100034CF0;
    v2 = 0;
    qword_10003D2C8 = _sl_dlopen();
  }

  if (!qword_10003D2C8)
  {
    sub_10001B3DC(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t sub_100003C08(uint64_t a1)
{
  result = _sl_dlopen();
  qword_10003D2C8 = result;
  return result;
}

Class sub_100003C7C(uint64_t a1)
{
  sub_100003B14();
  result = objc_getClass("BKDevice");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10001B444();
  }

  qword_10003D2D0 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

const void *sub_100003CD4()
{
  v14 = 0;
  snprintf(__str, 0x401uLL, "%s%s", "/private/var/", "keybags");
  v6 = 0;
  if (!sub_100003DD0(__str, "systembag", &v14))
  {
    v6 = v14;
    if (v14)
    {
      if (!sub_10000C40C(v14, @"KeyBagKeys"))
      {
        sub_100011BE0("KBLoadSystemKeyBag", @"Keybag %s doesn't actually contain keys", v8, v9, v10, v11, v12, v13, __str);
        CFRelease(v6);
        return 0;
      }
    }

    else
    {
      sub_100011BE0("KBLoadSystemKeyBag", @" Empty Keybag returned from KBLoadLoadKeyBagFile", v0, v1, v2, v3, v4, v5);
    }
  }

  return v6;
}

uint64_t sub_100003DD0(const char *a1, const char *a2, CFPropertyListRef *a3)
{
  snprintf(__str, 0x401uLL, "%s/%s.kb", a1, a2);
  v4 = sub_100001778(__str);
  v5 = v4;
  if (v4)
  {
    v6 = CFDictionaryGetValue(v4, @"KeybagxART") != 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_10001C744(":/defaults", @"no-effaceable-storage");
  if (v6 || v7)
  {
    *a3 = 0;
    v16 = sub_100001778(__str);
    *a3 = v16;
    if (!v16)
    {
      snprintf(v26, 0x401uLL, "%s.writing", __str);
      v17 = sub_100001778(v26);
      *a3 = v17;
      if (!v17)
      {
        v15 = 4294967289;
        sub_100011BE0("KBLoadLoadKeyBagFile", @"Unable to load keybag with No Crypto: %d", v18, v19, v20, v21, v22, v23, 4294967289);
        if (!v5)
        {
          return v15;
        }

        goto LABEL_13;
      }
    }

    v15 = 0;
  }

  else
  {
    v8 = sub_100004D74(__str, a3);
    v15 = v8;
    if (v8)
    {
      sub_100011BE0("KBLoadLoadKeyBagFile", @"Unable to load keybag with Crypto: %d", v9, v10, v11, v12, v13, v14, v8);
      if (!v5)
      {
        return v15;
      }

      goto LABEL_13;
    }
  }

  if (v5)
  {
LABEL_13:
    CFRelease(v5);
  }

  return v15;
}

CFMutableDictionaryRef sub_100003F3C(uint64_t a1)
{
  v16 = 0;
  snprintf(__str, 0x401uLL, "%s%s", "/private/var/", "keybags");
  v2 = sub_100003DD0(__str, "userbag", &v16);
  v3 = v16;
  if (!v2 && v16)
  {
    v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", a1);
    if (!v4)
    {
      MutableCopy = 0;
      goto LABEL_10;
    }

    v5 = v4;
    Value = CFDictionaryGetValue(v3, v4);
    if (Value)
    {
      v7 = Value;
      if (sub_10000C40C(Value, @"KeyBagKeys"))
      {
        MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v7);
LABEL_9:
        CFRelease(v3);
        v3 = v5;
LABEL_10:
        CFRelease(v3);
        return MutableCopy;
      }

      sub_100011BE0("KBLoadUserKeybag", @"Keybag %s doesn't actually contain keys", v8, v9, v10, v11, v12, v13, __str);
    }

    MutableCopy = 0;
    goto LABEL_9;
  }

  MutableCopy = 0;
  result = 0;
  if (v16)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1000040A4(const void *a1)
{
  snprintf(__str, 0x401uLL, "%s/%s", "/private/var/", "keybags");
  v2 = sub_100003CD4();
  if (!v2)
  {
    return 0;
  }

  v5 = v2;
  if (a1)
  {
    CFDictionarySetValue(v2, @"BackupKeyBagKeys", a1);
  }

  else
  {
    CFDictionaryRemoveValue(v2, @"BackupKeyBagKeys");
  }

  if (sub_10001B578(v5, __str, 1111574321, "systembag", 0, v6, v7, v8))
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = 0;
  }

  CFRelease(v5);
  return v3;
}

uint64_t sub_100004190()
{
  if ((byte_10003D2D8 & 1) == 0)
  {
    v1 = sub_10001C744(":/filesystems", @"e-apfs");
    __len = 1023;
    bzero(__big, 0x400uLL);
    if ((byte_10003D2DA & 1) == 0)
    {
      if (!sysctlbyname("kern.bootargs", __big, &__len, 0, 0) && strnstr(__big, "-apfs_shared_datavolume", __len))
      {
        byte_10003D2DB = 1;
      }

      byte_10003D2DA = 1;
    }

    if (v1 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = byte_10003D2DB;
    }

    byte_10003D2D9 = v8;
    sub_100011BE0("MKBDeviceSupportsEnhancedAPFS", @"dt = %d, bootarg = %d", v2, v3, v4, v5, v6, v7, v1, byte_10003D2DB);
    byte_10003D2D8 = 1;
  }

  return byte_10003D2D9;
}

uint64_t sub_1000042BC(char *cStr, _DWORD *a2, char **a3)
{
  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v6 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (v6)
  {
    v13 = v6;
    CFProperty = IORegistryEntryCreateCFProperty(v6, v5, 0, 0);
    if (CFProperty)
    {
      v21 = CFProperty;
      if (a2)
      {
        *a2 = 1;
      }

      if (a3)
      {
        v22 = CFGetTypeID(CFProperty);
        if (v22 == CFStringGetTypeID())
        {
          if (CFStringGetCString(v21, buffer, 1024, 0x8000100u))
          {
            *a3 = strdup(buffer);
          }
        }

        else
        {
          v24 = CFGetTypeID(v21);
          if (v24 == CFDataGetTypeID())
          {
            Length = CFDataGetLength(v21);
            v26 = malloc_type_calloc(1uLL, Length + 1, 0xB4CFF7A4uLL);
            *a3 = v26;
            if (v26)
            {
              v27 = v26;
              BytePtr = CFDataGetBytePtr(v21);
              memcpy(v27, BytePtr, Length);
            }
          }

          else
          {
            *a3 = 0;
          }
        }
      }

      CFRelease(v21);
    }

    else
    {
      sub_100011BE0("getNVRam", @"Could not create string for value", v15, v16, v17, v18, v19, v20);
      if (a2)
      {
        *a2 = 0;
      }
    }

    IOObjectRelease(v13);
    v23 = 0;
  }

  else
  {
    sub_100011BE0("getNVRam", @"Could not get options entry from the device tree", v7, v8, v9, v10, v11, v12);
    v23 = 0xFFFFFFFFLL;
  }

  CFRelease(v5);
  return v23;
}

uint64_t sub_100004490(char *cStr, const char *a2)
{
  v3 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v4 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (v4)
  {
    v11 = v4;
    v12 = CFStringCreateWithCString(0, a2, 0x8000100u);
    if (v12)
    {
      v19 = v12;
      v20 = IORegistryEntrySetCFProperty(v11, v3, v12);
      if (v20)
      {
        sub_100011BE0("setNVRam", @"Could not save value:%08x", v21, v22, v23, v24, v25, v26, v20);
        v27 = 0xFFFFFFFFLL;
      }

      else
      {
        v27 = 0;
      }

      CFRelease(v19);
    }

    else
    {
      sub_100011BE0("setNVRam", @"Could not create string for value", v13, v14, v15, v16, v17, v18);
      v27 = 0xFFFFFFFFLL;
    }

    IOObjectRelease(v11);
  }

  else
  {
    sub_100011BE0("setNVRam", @"Could not get options entry from the device tree", v5, v6, v7, v8, v9, v10);
    v27 = 0xFFFFFFFFLL;
  }

  CFRelease(v3);
  return v27;
}

uint64_t sub_1000045B0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = sub_100003F3C(-a1);
  }

  else
  {
    v4 = sub_100003CD4();
  }

  v11 = v4;
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, @"OpaqueStuff");
    v13 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    CFRelease(v11);
    sub_100011BE0("KBUpdateKeyBag", @"Got opaqueStuff from ondisk keybag", v14, v15, v16, v17, v18, v19);
    if (aks_get_system())
    {
      v27 = 0xFFFFFFFFLL;
      if (!v13)
      {
        return v27;
      }

      goto LABEL_13;
    }

    if (a1)
    {
      v20 = sub_10001C00C(0, -a1, v13, a2);
    }

    else
    {
      v20 = sub_10001BDB8(0, "/private/var/", v13, 1, a2);
    }

    v27 = v20;
    sub_100011BE0("KBUpdateKeyBag", @"Saved new keybag for handle %d with result %d", v21, v22, v23, v24, v25, v26, a1, v20);
    if (v13)
    {
LABEL_13:
      CFRelease(v13);
    }
  }

  else
  {
    sub_100011BE0("KBUpdateKeyBag", @"failed to open ondisk keybag, failing UpdateKeyBag", v5, v6, v7, v8, v9, v10);
    return 0xFFFFFFFFLL;
  }

  return v27;
}

void sub_1000046D8(uint64_t a1, uint64_t a2, void **a3, void *a4, int a5, uint64_t a6)
{
  v10 = dlopen("/System/Library/PrivateFrameworks/APFS.framework/APFS", 2);
  if (!v10)
  {
    v25 = @"Failed to open APFS framework";
    goto LABEL_8;
  }

  v17 = dlsym(v10, "APFSVolumePayloadSet");
  if (!v17)
  {
    v25 = @"Failed to resolve gAPFSVolumePayloadSet";
LABEL_8:
    sub_100011BE0("KBSetCookie", v25, v11, v12, v13, v14, v15, v16);
    v17 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (a5)
  {
LABEL_4:
    v18 = aks_copy_volume_cookie_persona();
    if (v18)
    {
      sub_100011BE0("KBSetCookie", @"Failed to get keybag persona Cookiefrom AKS:0x%x", v19, v20, v21, v22, v23, v24, v18);
      goto LABEL_17;
    }

    v27 = @"Retrieved keybag persona Cookie from AKS, setting in APFS volume";
    goto LABEL_13;
  }

LABEL_9:
  v26 = aks_copy_volume_cookie();
  if (v26)
  {
    sub_100011BE0("KBSetCookie", @"Failed to get keybag Cookie from AKS:0x%x", v19, v20, v21, v22, v23, v24, v26);
    goto LABEL_17;
  }

  v27 = @"Retrieved keybag Cookie from AKS, setting in APFS volume";
LABEL_13:
  sub_100011BE0("KBSetCookie", v27, v19, v20, v21, v22, v23, v24);
  if (v17)
  {
    v28 = (v17)(a2, 0, 0, 0);
    if (v28)
    {
      sub_100011BE0("KBSetCookie", @"APFSVolumePayloadSet failed with %d", v29, v30, v31, v32, v33, v34, v28);
    }

    else
    {
      sub_100011BE0("KBSetCookie", @"APFSVolumePayloadSet succeeded", v29, v30, v31, v32, v33, v34);
    }
  }

LABEL_17:
  if (a3)
  {
    if (a4)
    {
      *a3 = 0;
      *a4 = 0;
    }
  }
}

uint64_t sub_100004868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  size = 0;
  v67 = 0;
  v10 = dlopen("/System/Library/PrivateFrameworks/APFS.framework/APFS", 2);
  if (!v10)
  {
    v45 = @"Failed to open APFS framework";
    goto LABEL_11;
  }

  v17 = v10;
  v24 = dlsym(v10, "APFSVolumePayloadGet");
  if (!v24)
  {
    sub_100011BE0("KBMapVolume", @"Failed to resolve gAPFSVolumePayloadGet", v18, v19, v20, v21, v22, v23);
  }

  if (!dlsym(v17, "APFSVolumePayloadSet"))
  {
    sub_100011BE0("KBMapVolume", @"Failed to resolve gAPFSVolumePayloadSet", v25, v26, v27, v28, v29, v30);
  }

  if (v24)
  {
    v31 = (v24)(a3, 0, 0, &size);
    if (v31)
    {
      v38 = v31;
      sub_100011BE0("KBMapVolume", @"APFSVolumePayloadGet failed with %d", v32, v33, v34, v35, v36, v37, v31);
      if (v38 == 49154)
      {
        sub_100011BE0("KBMapVolume", @"Not cookie in this volume, attempting to write it", v39, v40, v41, v42, v43, v44);
        sub_1000046D8(a1, a3, &v67, &size, a5, a6);
      }

      goto LABEL_12;
    }

    sub_100011BE0("KBMapVolume", @"APFSVolumePayloadGet len reveived to be %zd", v32, v33, v34, v35, v36, v37, size);
    v57 = malloc_type_malloc(size, 0x8FC181C0uLL);
    v67 = v57;
    if (v57)
    {
      v58 = (v24)(a3, 0, v57, &size);
      if (v58)
      {
        sub_100011BE0("KBMapVolume", @"Failed to  obtain cookie from the volume with error %d", v59, v60, v61, v62, v63, v64, v58);
      }

      else
      {
        sub_100011BE0("KBMapVolume", @"Successfully obtained the cookie for the volume with length:%zd", v59, v60, v61, v62, v63, v64, size);
      }

      goto LABEL_12;
    }

    v45 = @"Failed to allocate Cookie malloc space";
LABEL_11:
    sub_100011BE0("KBMapVolume", v45, v11, v12, v13, v14, v15, v16, v65);
  }

LABEL_12:
  if (a5)
  {
    v46 = aks_set_keybag_for_volume_with_cookie_persona();
    v53 = v46;
    if (v46)
    {
      sub_100011BE0("KBMapVolume", @"aks_set_keybag_for_volume_with_cookie_persona FAIL with 0x%x", v47, v48, v49, v50, v51, v52, v46);
      goto LABEL_20;
    }

    v55 = @"aks_set_keybag_for_volume_with_cookie_persona SUCCESS";
  }

  else
  {
    v54 = aks_set_keybag_for_volume_with_cookie();
    v53 = v54;
    if (v54)
    {
      sub_100011BE0("KBMapVolume", @"aks_set_keybag_for_volume_with_cookie FAIL with 0x%x", v47, v48, v49, v50, v51, v52, v54);
      goto LABEL_20;
    }

    v55 = @"aks_set_keybag_for_volume_with_cookie SUCCESS";
  }

  sub_100011BE0("KBMapVolume", v55, v47, v48, v49, v50, v51, v52, v65);
LABEL_20:
  if (v67)
  {
    free(v67);
  }

  return v53;
}

uint64_t sub_100004AE4(const char *a1, int a2, uint64_t a3)
{
  v49 = 0;
  v50 = 0;
  v51 = 0;
  memset(v52, 0, 512);
  memset(&v54, 0, 512);
  if (statfs(a1, &v54))
  {
    v12 = __error();
    v47 = strerror(*v12);
    sub_100011BE0("has_data_protection", @"Statfs failed due to:%s on  (%s)", v13, v14, v15, v16, v17, v18, v47, a1);
LABEL_5:
    sub_100011BE0("has_data_protection", @"mount point (%s) does not support Data Protection", v19, v20, v21, v22, v23, v24, a1);
    return 0;
  }

  if ((v54.f_flags & 0x80) == 0)
  {
    sub_100011BE0("has_data_protection", @"mount is with NO CPROTECT:0x%x on  (%s)", v6, v7, v8, v9, v10, v11, v54.f_flags, a1);
    goto LABEL_5;
  }

  LOWORD(v49) = 5;
  LODWORD(v50) = -2147188736;
  if (getattrlist(a1, &v49, v52, 0x41CuLL, 0))
  {
    v48 = *__error();
    sub_100011BE0("KBMapDeviceBag", @"Could not get %s volume attributes (errno=%d)", v33, v34, v35, v36, v37, v38, a1, v48);
    return 4294967290;
  }

  if (SDWORD1(v52[0]) > 1047 || (v27 = v52 + SDWORD1(v52[0]) + 4, &v27[DWORD2(v52[0])] >= &v53))
  {
    sub_100011BE0("KBMapDeviceBag", @"Attribute buffer too small. offset=%d, lenght=%u", v27, v28, v29, v30, v31, v32, SDWORD1(v52[0]), DWORD2(v52[0]));
    return 4294967290;
  }

  v39 = sub_100004868(0, 0, v27, v52 | 0xC, a2, a3);
  v40 = sub_10000C7A0(v39);
  v25 = v40;
  if (v40)
  {
    sub_100011BE0("KBMapDeviceBag", @"Could not map %s volume (ret=%d)", v41, v42, v43, v44, v45, v46, a1, v40);
  }

  return v25;
}

uint64_t sub_100004D74(const std::__fs::filesystem::path *a1, CFPropertyListRef *a2)
{
  theData = 0;
  v73 = 0;
  v70 = 0;
  cryptorRef = 0;
  dataOutMoved = 0;
  *a2 = 0;
  bzero(__str, 0x401uLL);
  v74 = 0;
  v4 = sub_100005070(a1, &v74, &v73, &theData);
  if (v4)
  {
    sub_100011BE0("KBSecureLoadObject", @"Failed to validate keybag file: %d, %d", v5, v6, v7, v8, v9, v10, v4, v74 != 0);
    snprintf(__str, 0x401uLL, "%s.writing", a1);
    v11 = sub_100005070(__str, &v74, &v73, &theData);
    if (v11 || !v74)
    {
      sub_100011BE0("KBSecureLoadObject", @"Failed to validate keybag file: %d", v12, v13, v14, v15, v16, v17, v11);
    }

    else
    {
      rename(__str, a1, v12);
      if (!v18)
      {
        goto LABEL_5;
      }

      sub_10001C82C(__str, a1);
    }

    v61 = 4294967288;
    sub_100011BE0("KBSecureLoadObjectWithCrypto", @"Can't load secure keybag Object: %d", v63, v64, v65, v66, v67, v68, 4294967288);
    v19 = 0;
    goto LABEL_12;
  }

LABEL_5:
  v19 = v74;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v22 = CFDataGetBytePtr(v73);
  v23 = CCCryptorCreate(1u, 0, 1u, BytePtr, Length, v22, &cryptorRef);
  if (v23)
  {
    sub_100011BE0("KBSecureLoadObjectWithCrypto", @"Can't create decryptor: %d", v24, v25, v26, v27, v28, v29, v23);
    v61 = 4294967289;
    goto LABEL_12;
  }

  v30 = CFDataGetBytePtr(v19);
  v31 = CFDataGetLength(v19);
  v32 = malloc_type_malloc(v31, 0xBD7A87D1uLL);
  if (!v32)
  {
    sub_10001C880(0, v33, v34, v35, v36, v37, v38, v39);
    v61 = 4294967291;
    goto LABEL_12;
  }

  v40 = v32;
  v41 = cryptorRef;
  v42 = CFDataGetLength(v19);
  v43 = CFDataGetLength(v19);
  v44 = CCCryptorUpdate(v41, v30, v42, v40, v43, &dataOutMoved);
  if (v44)
  {
    sub_100011BE0("KBSecureLoadObjectWithCrypto", @"Unable to decrypt: %d", v45, v46, v47, v48, v49, v50, v44);
  }

  else
  {
    v51 = cryptorRef;
    v52 = dataOutMoved;
    v53 = CFDataGetLength(v19);
    v54 = CCCryptorFinal(v51, &v40[v52], v53 - dataOutMoved, &v70);
    if (!v54)
    {
      v61 = 0;
      *a2 = sub_10000C59C(v40, (v70 + dataOutMoved));
      goto LABEL_10;
    }

    sub_100011BE0("KBSecureLoadObjectWithCrypto", @"Unable to finalize: %d", v55, v56, v57, v58, v59, v60, v54);
  }

  v61 = 4294967289;
LABEL_10:
  if (v40 != v30)
  {
    free(v40);
  }

LABEL_12:
  if (v73)
  {
    CFRelease(v73);
    v73 = 0;
  }

  if (theData)
  {
    CFRelease(theData);
    theData = 0;
  }

  if (v19)
  {
    CFRelease(v19);
  }

  CCCryptorRelease(cryptorRef);
  return v61;
}

uint64_t sub_100005070(const char *a1, void *a2, CFTypeRef *a3, CFTypeRef *a4)
{
  v8 = sub_100001778(a1);
  if (!v8)
  {
    sub_100011BE0("validateSecureFile", @"Unable to load %s", v9, v10, v11, v12, v13, v14, a1);
    return 0xFFFFFFFFLL;
  }

  v15 = v8;
  valuePtr = 0;
  Value = CFDictionaryGetValue(v8, @"_MKBWIPEID");
  if (!Value || (v23 = Value, v24 = CFGetTypeID(Value), v24 != CFNumberGetTypeID()))
  {
    sub_100011BE0("validateSecureFile", @"%s missing wipeID", v17, v18, v19, v20, v21, v22, a1);
LABEL_35:
    CFRelease(v15);
    return 0xFFFFFFFFLL;
  }

  v25 = CFDictionaryGetValue(v15, @"_MKBIV");
  if (!v25 || (v32 = v25, v33 = CFGetTypeID(v25), v33 != CFDataGetTypeID()))
  {
    sub_100011BE0("validateSecureFile", @"%s missing IV", v26, v27, v28, v29, v30, v31, a1);
    goto LABEL_35;
  }

  v34 = CFDictionaryGetValue(v15, @"_MKBPAYLOAD");
  if (!v34 || (v41 = v34, v42 = CFGetTypeID(v34), v42 != CFDataGetTypeID()))
  {
    sub_100011BE0("validateSecureFile", @"%s missing payload", v35, v36, v37, v38, v39, v40, a1);
    goto LABEL_35;
  }

  CFNumberGetValue(v23, kCFNumberIntType, &valuePtr);
  v43 = valuePtr;
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  v85 = 52;
  v44 = sub_100002BE8(valuePtr, v86, &v85);
  if (v44)
  {
    sub_100011BE0("loadWipeIDInfo", @"Unable to load wipe info: %08x", v45, v46, v47, v48, v49, v50, v44);
LABEL_34:
    sub_100011BE0("validateSecureFile", @"Can't load wipe info for ID:%08x", v78, v79, v80, v81, v82, v83, valuePtr);
    goto LABEL_35;
  }

  if (LODWORD(v86[0]) != v43)
  {
    sub_100011BE0("loadWipeIDInfo", @"Wipe Info ID is wrong: %d", v45, v46, v47, v48, v49, v50, LODWORD(v86[0]));
    goto LABEL_34;
  }

  v51 = CFDataCreate(0, v86 + 4, 16);
  if (!v51)
  {
    sub_10001C8E4(0, v52, v53, v54, v55, v56, v57, v58);
    goto LABEL_34;
  }

  v59 = v51;
  v60 = CFDataCreate(0, &v86[1] + 4, 32);
  if (!v60)
  {
    sub_10001C8A8(v59, v61, v62, v63, v64, v65, v66, v67);
    goto LABEL_34;
  }

  v68 = v60;
  if (CFEqual(v32, v59))
  {
    if (a3)
    {
      *a3 = CFRetain(v59);
    }

    if (a4)
    {
      *a4 = CFRetain(v68);
    }

    if (!a2)
    {
      v76 = 0;
      goto LABEL_23;
    }

    v75 = CFRetain(v41);
    v76 = 0;
    goto LABEL_21;
  }

  sub_100011BE0("validateSecureFile", @"fileIV to wipeIV mismatch, no payload returned", v69, v70, v71, v72, v73, v74);
  CFShow(v32);
  CFShow(v59);
  v76 = 4294967287;
  if (a2)
  {
    v75 = 0;
LABEL_21:
    *a2 = v75;
  }

LABEL_23:
  CFRelease(v15);
  CFRelease(v59);
  CFRelease(v68);
  return v76;
}

uint64_t sub_100005434(uint64_t a1)
{
  objc_opt_class();
  qword_10003D2F0 = objc_opt_new();

  return _objc_release_x1();
}

void sub_100005A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005A78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100005A90(uint64_t a1)
{
  v2 = qword_10003D2A8;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100005B50;
  v3[3] = &unk_100034D30;
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 80);
  v4 = *(a1 + 32);
  v9 = *(a1 + 88);
  v5 = *(a1 + 40);
  dispatch_sync(v2, v3);
}

void sub_100005B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = "NULL";
  if (*(a1 + 56) && *(a1 + 64))
  {
    v9 = "SECRET";
  }

  v10 = "NULL";
  if (*(a1 + 72) && *(a1 + 80))
  {
    v10 = "SECRET";
  }

  v11 = "has blob";
  if (!*(a1 + 32))
  {
    v11 = "no blob";
  }

  sub_100011BE0("[KBXPCService changeSystemSecretfromOldSecret:oldSize:toNewSecret:newSize:opaqueData:withParams:reply:]_block_invoke_2", @"oldSecret=%s newSecret=%s %s (params:%d)", a3, a4, a5, a6, a7, a8, v9, v10, v11, *(a1 + 88));
  v12 = sub_100011BDC();
  v13 = sub_100011F00();
  v14 = *(a1 + 64);
  if (v14)
  {
    v15 = *(a1 + 56);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 80);
  if (v16)
  {
    v17 = *(a1 + 72);
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_10001E34C(v13, v12, v15, v14, v17, v16, *(a1 + 32), *(a1 + 88));
  if (v18)
  {
    v25 = v18;
    sub_100011BE0("[KBXPCService changeSystemSecretfromOldSecret:oldSize:toNewSecret:newSize:opaqueData:withParams:reply:]_block_invoke_2", @"Can't change passcode: 0x%08x", v19, v20, v21, v22, v23, v24, v18);
    *(*(*(a1 + 40) + 8) + 40) = [NSError errorWithDomain:NSPOSIXErrorDomain code:v25 userInfo:0];

    _objc_release_x1();
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;

    sub_100011BE0("[KBXPCService changeSystemSecretfromOldSecret:oldSize:toNewSecret:newSize:opaqueData:withParams:reply:]_block_invoke_2", @"change passcode success", v19, v20, v21, v22, v23, v24);
  }
}

void sub_100006350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_100006378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = "NULL";
  if (*(a1 + 64) && *(a1 + 72))
  {
    v9 = "SECRET";
  }

  v10 = "NULL";
  if (*(a1 + 80) && *(a1 + 88))
  {
    v10 = "SECRET";
  }

  v11 = "has blob";
  if (!*(a1 + 32))
  {
    v11 = "no blob";
  }

  sub_100011BE0("[KBXPCService changeSystemSecretWithEscrow:fromOldSecret:oldSize:toNewSecret:newSize:opaqueData:keepstate:withACM:reply:]_block_invoke", @"oldpass=%s newpass=%s %s (acm:%d)", a3, a4, a5, a6, a7, a8, v9, v10, v11, *(a1 + 96));
  v12 = *(a1 + 72);
  if (v12)
  {
    v13 = *(a1 + 64);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 88);
  if (v14)
  {
    v15 = *(a1 + 80);
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_10001C63C(*(a1 + 40), v13, v12, v15, v14, *(a1 + 97), *(a1 + 96));
  if (v16)
  {
    v23 = v16;
    sub_100011BE0("[KBXPCService changeSystemSecretWithEscrow:fromOldSecret:oldSize:toNewSecret:newSize:opaqueData:keepstate:withACM:reply:]_block_invoke", @"Can't change passcode: 0x%08x", v17, v18, v19, v20, v21, v22, v16);
    *(*(*(a1 + 48) + 8) + 40) = [NSError errorWithDomain:NSPOSIXErrorDomain code:v23 userInfo:0];

    _objc_release_x1();
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;

    sub_100011BE0("[KBXPCService changeSystemSecretWithEscrow:fromOldSecret:oldSize:toNewSecret:newSize:opaqueData:keepstate:withACM:reply:]_block_invoke", @"change passcode success", v17, v18, v19, v20, v21, v22);
  }
}

void sub_1000086C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000086EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = *(a1 + 72);
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_100010A10(v2, *(a1 + 80), v4, v3, *(a1 + 84), *(a1 + 40));
  if (v5)
  {
    v12 = v5;
    sub_100011BE0("[KBXPCService createKeybagForUserSession:withSessionUID:WithSecret:secretSize:withGracePeriod:withOpaqeStuff:withReply:]_block_invoke", @"Can't createKeybag for usersession(uid=%d): 0x%08x", v6, v7, v8, v9, v10, v11, *(a1 + 80), v5);
    *(*(*(a1 + 48) + 8) + 40) = [NSError errorWithDomain:NSPOSIXErrorDomain code:v12 userInfo:0];

    _objc_release_x1();
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    sub_100011BE0("[KBXPCService createKeybagForUserSession:withSessionUID:WithSecret:secretSize:withGracePeriod:withOpaqeStuff:withReply:]_block_invoke", @"Created keybag for user:%d success", v6, v7, v8, v9, v10, v11, *(a1 + 80));
  }
}

void sub_100008B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008B90(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = *(a1 + 64);
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_10001033C(v2, *(a1 + 72), v4, v3, *(a1 + 80), *(a1 + 76), *(a1 + 81));
  if (v5)
  {
    v12 = v5;
    sub_100011BE0("[KBXPCService loadKeybagForUserSession:withSessionID:withSecret:secretSize:shouldSetGracePeriod:withGracePeriod:isInEarlyStar:withReply:]_block_invoke", @"Can't loadkeybag for usersession(uid=%d): 0x%08x", v6, v7, v8, v9, v10, v11, *(a1 + 72), v5);
    *(*(*(a1 + 40) + 8) + 40) = [NSError errorWithDomain:NSPOSIXErrorDomain code:v12 userInfo:0];

    _objc_release_x1();
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;

    sub_100011BE0("[KBXPCService loadKeybagForUserSession:withSessionID:withSecret:secretSize:shouldSetGracePeriod:withGracePeriod:isInEarlyStar:withReply:]_block_invoke", @"loadUserKeybag successful", v6, v7, v8, v9, v10, v11);
  }
}

void sub_100008DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_100010D48(*(a1 + 40), a2, a3, a4, a5, a6, a7, a8);
  if (v9)
  {
    v16 = v9;
    sub_100011BE0("[KBXPCService unloadKeybagForUserSession:withReply:]_block_invoke", @"Can't unloadkeybag for usersession(uid=%d): 0x%08x", v10, v11, v12, v13, v14, v15, *(a1 + 40), v9);
    *(*(*(a1 + 32) + 8) + 40) = [NSError errorWithDomain:NSPOSIXErrorDomain code:v16 userInfo:0];

    _objc_release_x1();
  }

  else
  {

    sub_100011BE0("[KBXPCService unloadKeybagForUserSession:withReply:]_block_invoke", @"unloadUserKeybag successful", v10, v11, v12, v13, v14, v15);
  }
}

void sub_100009040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009058(uint64_t a1)
{
  v2 = sub_10001C00C(0xFFFFFFFFLL, *(a1 + 40), 0, 0);
  if (v2)
  {
    v9 = v2;
    sub_100011BE0("[KBXPCService deleteKeybagForUserSession:withReply:]_block_invoke", @"Can't invalidate keybag for usersession(uid=%d): 0x%08x", v3, v4, v5, v6, v7, v8, *(a1 + 40), v2);
    *(*(*(a1 + 32) + 8) + 40) = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:0];

    _objc_release_x1();
  }

  else
  {

    sub_100011BE0("[KBXPCService deleteKeybagForUserSession:withReply:]_block_invoke", @"deleteUserKeybag successful", v3, v4, v5, v6, v7, v8);
  }
}

void sub_1000092D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000092EC(uint64_t a1)
{
  memset(uu, 0, sizeof(uu));
  bzero(buffer, 0x400uLL);
  v44 = 0u;
  v45 = 0u;
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
  *in = 0u;
  v31 = 0u;
  if (CFStringGetCString(*(a1 + 32), buffer, 1024, 0x8000100u))
  {
    if (CFStringGetCString(*(a1 + 40), in, 256, 0x8000100u))
    {
      if (uuid_parse(in, uu))
      {
        v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        v8 = *(*(a1 + 56) + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;

        v16 = @"failed to parse unique string to uuid_t";
      }

      else
      {
        v24 = sub_100010CBC(0, buffer, uu, v2, v3, v4, v5, v6);
        if (v24)
        {
          v25 = v24;
          sub_100011BE0("[KBXPCService setVolumeToPersona:withPersonaString:withReply:]_block_invoke", @"Can't map volumepath:%s to uuid with error: 0x%08x", v10, v11, v12, v13, v14, v15, buffer, v24, *uu, *&uu[8], *in, *&in[8], v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
          v26 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v25 userInfo:0];
          v27 = *(*(a1 + 56) + 8);
          v28 = *(v27 + 40);
          *(v27 + 40) = v26;

          return (*(*(a1 + 48) + 16))();
        }

        v16 = @"setupKeybagForPersona successful";
      }
    }

    else
    {
      v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v21 = *(*(a1 + 56) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      v16 = @"Failed to get cstring from uuid string";
    }
  }

  else
  {
    v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v18 = *(*(a1 + 56) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v16 = @"Failed to get volume path";
  }

  sub_100011BE0("[KBXPCService setVolumeToPersona:withPersonaString:withReply:]_block_invoke", v16, v10, v11, v12, v13, v14, v15);
  return (*(*(a1 + 48) + 16))();
}

void sub_1000096D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000096F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_100010E18(*(a1 + 32), *(a1 + 48), a3, a4, a5, a6, a7, a8);
  if (v9)
  {
    v16 = v9;
    sub_100011BE0("[KBXPCService createSyncBagForUserSession:withSessionUID:withReply:]_block_invoke", @"Can't unloadkeybag for usersession(uid=%d): 0x%08x", v10, v11, v12, v13, v14, v15, *(a1 + 48), v9);
    *(*(*(a1 + 40) + 8) + 40) = [NSError errorWithDomain:NSPOSIXErrorDomain code:v16 userInfo:0];

    _objc_release_x1();
  }

  else
  {

    sub_100011BE0("[KBXPCService createSyncBagForUserSession:withSessionUID:withReply:]_block_invoke", @"createSyncbag successful", v10, v11, v12, v13, v14, v15);
  }
}

void sub_100009950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_1000110AC(*(a1 + 32), *(a1 + 48), a3, a4, a5, a6, a7, a8);
  if (v9)
  {
    v16 = v9;
    sub_100011BE0("[KBXPCService loadSyncBagForUserSession:withSessionUID:withReply:]_block_invoke", @"Can't unloadkeybag for usersession(uid=%d): 0x%08x", v10, v11, v12, v13, v14, v15, *(a1 + 48), v9);
    *(*(*(a1 + 40) + 8) + 40) = [NSError errorWithDomain:NSPOSIXErrorDomain code:v16 userInfo:0];

    _objc_release_x1();
  }

  else
  {

    sub_100011BE0("[KBXPCService loadSyncBagForUserSession:withSessionUID:withReply:]_block_invoke", @"loadSyncbag successful", v10, v11, v12, v13, v14, v15);
  }
}

void sub_100009BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009BE0(uint64_t a1)
{
  v2 = sub_10001162C(*(a1 + 32), *(a1 + 48));
  if (v2)
  {
    v9 = v2;
    sub_100011BE0("[KBXPCService verifySyncBagForUserSession:withSessionUID:withReply:]_block_invoke", @"Can't unloadkeybag for usersession(uid=%d): 0x%08x", v3, v4, v5, v6, v7, v8, *(a1 + 48), v2);
    *(*(*(a1 + 40) + 8) + 40) = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:0];

    _objc_release_x1();
  }

  else
  {

    sub_100011BE0("[KBXPCService verifySyncBagForUserSession:withSessionUID:withReply:]_block_invoke", @"verifySyncbag successful", v3, v4, v5, v6, v7, v8);
  }
}

void sub_100009E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009E58(uint64_t a1)
{
  v2 = sub_100011BDC();
  v3 = v2;
  sub_100011BE0("[KBXPCService unloadSyncBagForUserSession:withSessionUID:withReply:]_block_invoke", @"currentFGID:%d, session uid:%d", v4, v5, v6, v7, v8, v9, v2, *(a1 + 48));
  if (*(a1 + 48) == v3)
  {
    v16 = @"No need to unload syncbag for current user, skip..";
LABEL_8:

    sub_100011BE0("[KBXPCService unloadSyncBagForUserSession:withSessionUID:withReply:]_block_invoke", v16, v10, v11, v12, v13, v14, v15);
    return;
  }

  sub_100011BE0("[KBXPCService unloadSyncBagForUserSession:withSessionUID:withReply:]_block_invoke", @"Unloading the bag", v10, v11, v12, v13, v14, v15);
  v23 = sub_100011704(*(a1 + 32), *(a1 + 48), v17, v18, v19, v20, v21, v22);
  if (!v23)
  {
    v16 = @"unloadSyncbag successful";
    goto LABEL_8;
  }

  v24 = v23;
  sub_100011BE0("[KBXPCService unloadSyncBagForUserSession:withSessionUID:withReply:]_block_invoke", @"Can't unloadkeybag for usersession(uid=%d): 0x%08x", v10, v11, v12, v13, v14, v15, *(a1 + 48), v23);
  *(*(*(a1 + 40) + 8) + 40) = [NSError errorWithDomain:NSPOSIXErrorDomain code:v24 userInfo:0];

  _objc_release_x1();
}

void sub_10000A108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A120(uint64_t a1)
{
  v2 = sub_100011BDC();
  v3 = v2;
  sub_100011BE0("[KBXPCService removeSyncBagForUserSession:withSessionUID:withReply:]_block_invoke", @"currentFGID:%d, session uid:%d", v4, v5, v6, v7, v8, v9, v2, *(a1 + 48));
  v16 = *(a1 + 48);
  v17 = v16 == v3;
  v18 = v16 != v3;
  if (v17)
  {
    v19 = @"removing syncbag for current user, only sync bag will be cleared";
  }

  else
  {
    v19 = @"Syncbag removal for non foreground user, unloading session bag as well";
  }

  sub_100011BE0("[KBXPCService removeSyncBagForUserSession:withSessionUID:withReply:]_block_invoke", v19, v10, v11, v12, v13, v14, v15);
  v25 = sub_100011394(*(a1 + 32), *(a1 + 48), v18, v20, v21, v22, v23, v24);
  if (v25)
  {
    v32 = v25;
    sub_100011BE0("[KBXPCService removeSyncBagForUserSession:withSessionUID:withReply:]_block_invoke", @"Can't unloadkeybag for usersession(uid=%d): 0x%08x", v26, v27, v28, v29, v30, v31, *(a1 + 48), v25);
    *(*(*(a1 + 40) + 8) + 40) = [NSError errorWithDomain:NSPOSIXErrorDomain code:v32 userInfo:0];

    _objc_release_x1();
  }

  else
  {

    sub_100011BE0("[KBXPCService removeSyncBagForUserSession:withSessionUID:withReply:]_block_invoke", @"removeSyncbag successful", v26, v27, v28, v29, v30, v31);
  }
}

void sub_10000A5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A60C(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = *(a1 + 72);
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_1000117D8(v2, *(a1 + 32), *(a1 + 40), v4, v3, *(a1 + 84));
  if (v5)
  {
    v12 = v5;
    sub_100011BE0("[KBXPCService createPersonaKeyForUserSession:forPath:withUID:WithSecret:secretSize:secretIsACM:withReply:]_block_invoke", @"Can't create persona key for user with error: 0x%08x", v6, v7, v8, v9, v10, v11, v5);
    *(*(*(a1 + 48) + 8) + 40) = [NSError errorWithDomain:NSPOSIXErrorDomain code:v12 userInfo:0];

    _objc_release_x1();
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;

    sub_100011BE0("[KBXPCService createPersonaKeyForUserSession:forPath:withUID:WithSecret:secretSize:secretIsACM:withReply:]_block_invoke", @"createPersonaKey successful", v6, v7, v8, v9, v10, v11);
  }
}

void sub_10000A8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A8CC(uint64_t a1)
{
  v2 = sub_1000119DC(*(a1 + 56), *(a1 + 32), *(a1 + 40));
  if (v2)
  {
    v9 = v2;
    sub_100011BE0("[KBXPCService removePersonaKeyForUserSession:withUID:withVolumeUUIDString:withReply:]_block_invoke", @"Can't delete persona key for user: 0x%08x", v3, v4, v5, v6, v7, v8, v2);
    *(*(*(a1 + 48) + 8) + 40) = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:0];

    _objc_release_x1();
  }

  else
  {

    sub_100011BE0("[KBXPCService removePersonaKeyForUserSession:withUID:withVolumeUUIDString:withReply:]_block_invoke", @"removePersonaKey successful", v3, v4, v5, v6, v7, v8);
  }
}

id sub_10000A994()
{
  v0 = objc_opt_new();
  v1 = qword_10003D308;
  qword_10003D308 = v0;

  v2 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.mobile.keybagd.xpc"];
  v3 = qword_10003D300;
  qword_10003D300 = v2;

  [qword_10003D300 setDelegate:qword_10003D308];
  v4 = qword_10003D300;

  return [v4 resume];
}

double sub_10000AFFC(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

NSDictionary *sub_10000B74C(uint64_t a1)
{
  v1 = [MKBDeviceLockModelEducationalMode sharedLockModelWithUID:a1];
  [v1 timeUntilUnblockedSinceReferenceDate];
  v3 = v2;
  [+[NSDate date](NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = 0.0;
  if (v3 > v5)
  {
    [[NSDate dateWithTimeIntervalSinceReferenceDate:?]];
  }

  v8[0] = @"TimeUntilUnblockedSinceReferenceDate";
  v9[0] = [NSNumber numberWithDouble:v6];
  v8[1] = @"FailedPasscodeAttempts";
  v9[1] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v1 failedPasscodeAttempts]);
  v8[2] = @"IsPermanentlyBlocked";
  v9[2] = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 isPermanentlyBlocked]);
  v8[3] = @"IsWipePending";
  v9[3] = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 isWipePending]);
  return [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4];
}

id sub_10000B8B8(uint64_t a1)
{
  v1 = [MKBDeviceLockModelEducationalMode sharedLockModelWithUID:a1];

  return [v1 notePasscodeEntryBegan];
}

id sub_10000B8EC(uint64_t a1)
{
  v1 = [MKBDeviceLockModelEducationalMode sharedLockModelWithUID:a1];

  return [v1 notePasscodeUnlockSucceeded];
}

id sub_10000B920(uint64_t a1)
{
  v1 = [MKBDeviceLockModelEducationalMode sharedLockModelWithUID:a1];

  return [v1 notePasscodeUnlockFailed];
}

BOOL sub_10000B954(sqlite3 *a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(a1, "PRAGMA integrity_check;", -1, &ppStmt, 0) || sqlite3_step(ppStmt) != 100 || (v1 = sqlite3_column_text(ppStmt, 0)) == 0 || strncasecmp(v1, "ok", 3uLL) != 0;
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v2;
}

uint64_t sub_10000B9E8(sqlite3 *a1)
{
  v2 = sqlite3_file_control(a1, 0, 101, 0);
  if (!v2)
  {
    return (sub_10000BA54(a1, v3, v4, v5, v6, v7, v8, v9) - 1);
  }

  v10 = v2;
  sub_100011BE0("db_truncate", @"unable to truncate (rc=%d)", v4, v5, v6, v7, v8, v9, v2);
  return v10;
}

BOOL sub_10000BA54(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  errmsg = 0;
  sub_100011BE0("init_db", @"initializing sqlite db", a3, a4, a5, a6, a7, a8);
  v15 = sqlite3_exec(a1, "DROP TABLE IF EXISTS WrappedKeys;CREATE TABLE WrappedKeys(Inode INT, Uuid BLOB, Key BLOB, Flagged BOOLEAN DEFAULT 0, AddTime TIMESTAMP DEFAULT 0, ClearTime TIMESTAMP DEFAULT 0, AccessTime TIMESTAMP DEFAULT 0, unique(Inode, Uuid));CREATE INDEX Inode ON WrappedKeys(Inode);CREATE INDEX InodeUuid ON WrappedKeys(Inode, Uuid);PRAGMA user_version = 3;", 0, 0, &errmsg);
  if (v15)
  {
    sub_100011BE0("init_db", @"sqlite error: %s", v9, v10, v11, v12, v13, v14, errmsg);
    sqlite3_free(errmsg);
  }

  return v15 == 0;
}

uint64_t sub_10000BAEC(sqlite3 *a1, sqlite3_int64 *a2, _OWORD *a3, CFErrorRef *a4)
{
  ppStmt = 0;
  v8 = sqlite3_prepare_v2(a1, "UPDATE WrappedKeys SET AccessTime = (CASE WHEN Key NOT NULL THEN datetime('now', 'subsec') END) WHERE Inode = ? AND Uuid = ? RETURNING Key, AddTime, AccessTime, ClearTime", -1, &ppStmt, 0);
  if (v8)
  {
    LODWORD(v38) = v8;
    sub_10001C98C(a1);
    v13 = 0;
    v37 = 0;
    v14 = 0;
    v30 = 2;
  }

  else
  {
    v9 = sqlite3_bind_int64(ppStmt, 1, *a2);
    if (v9)
    {
      LODWORD(v38) = v9;
      sub_10001C9C4(a1);
      v13 = 0;
      v37 = 0;
      v14 = 0;
      v30 = 3;
    }

    else
    {
      v10 = sqlite3_bind_blob(ppStmt, 2, a2 + 1, 16, 0);
      if (v10)
      {
        LODWORD(v38) = v10;
        sub_10001C9FC(a1);
        v13 = 0;
        v37 = 0;
        v14 = 0;
        v30 = 4;
      }

      else
      {
        v11 = sqlite3_step(ppStmt);
        if (v11 == 100)
        {
          v12 = sqlite3_column_bytes(ppStmt, 0);
          v13 = sqlite3_column_text(ppStmt, 1);
          v14 = sqlite3_column_text(ppStmt, 2);
          v15 = sqlite3_column_text(ppStmt, 3);
          if (v12 == 108)
          {
            v22 = sqlite3_column_blob(ppStmt, 0);
            v30 = 0;
            v32 = v22[1];
            v31 = v22[2];
            *a3 = *v22;
            a3[1] = v32;
            a3[2] = v31;
            v34 = v22[4];
            v33 = v22[5];
            v35 = v22[3];
            *(a3 + 92) = *(v22 + 92);
            a3[4] = v34;
            a3[5] = v33;
            a3[3] = v35;
            goto LABEL_7;
          }

          v37 = v15;
          if (v12)
          {
            sub_100011BE0("db_get_item", @"Invalid Key", v16, v17, v18, v19, v20, v21);
            v30 = 8;
          }

          else
          {
            sub_100011BE0("db_get_item", @"Cleared Key", v16, v17, v18, v19, v20, v21);
            v30 = 7;
          }

          LODWORD(v38) = 100;
        }

        else
        {
          v38 = v11;
          v39 = sqlite3_errmsg(a1);
          sub_100011BE0("db_get_item", @"Step failed rc=%d, %s", v40, v41, v42, v43, v44, v45, v38, v39);
          v13 = 0;
          v37 = 0;
          v14 = 0;
          v30 = 6;
        }
      }
    }
  }

  if (a4)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    valuePtr = v38;
    v47 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v47)
    {
      v54 = v47;
      CFDictionaryAddValue(Mutable, @"sqlError", v47);
      CFRelease(v54);
    }

    else
    {
      sub_100011BE0("CFDictionaryAddInt", @"Internal error: could not create CFNumber from int", v48, v49, v50, v51, v52, v53);
    }

    sub_10000BDF8(Mutable, @"added", v13);
    sub_10000BDF8(Mutable, @"accessed", v14);
    sub_10000BDF8(Mutable, @"cleared", v37);
    if (*a4)
    {
      CFRelease(*a4);
    }

    *a4 = CFErrorCreate(kCFAllocatorDefault, @"MobileKeyBagError.DbGetError", v30, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

LABEL_7:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  v55 = v30;
  sub_10000F430(&v55, v23, v24, v25, v26, v27, v28, v29);
  return v30;
}

void sub_10000BDF8(__CFDictionary *a1, const void *a2, char *cStr)
{
  if (cStr)
  {
    v6 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
    if (v6)
    {
      v13 = v6;
      CFDictionaryAddValue(a1, a2, v6);

      CFRelease(v13);
    }

    else
    {
      sub_100011BE0("CFDictionaryAddSQLStringIfNotNull", @"Internal error: could not create CFString from C string %s", v7, v8, v9, v10, v11, v12, cStr);
    }
  }
}

uint64_t sub_10000BEA8(sqlite3 *a1, const void *a2)
{
  ppStmt = 0;
  v4 = 0xFFFFFFFFLL;
  if (sqlite3_prepare_v2(a1, "DELETE FROM WrappedKeys WHERE Uuid = ?", -1, &ppStmt, 0))
  {
    v6 = @"Failed to execute get statement: %s\n";
  }

  else if (sqlite3_bind_blob(ppStmt, 1, a2, 16, 0))
  {
    v4 = 5;
    v6 = @"Cannot bind uuid blob %s";
  }

  else
  {
    if (sqlite3_step(ppStmt) == 101)
    {
      v4 = 0;
      goto LABEL_5;
    }

    v6 = @"step failed: %s";
  }

  v7 = sqlite3_errmsg(a1);
  sub_100011BE0("db_delete_volume", v6, v8, v9, v10, v11, v12, v13, v7);
LABEL_5:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v4;
}

uint64_t sub_10000BF84(sqlite3 *a1, const void *a2)
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(a1, "UPDATE WrappedKeys SET Flagged = 1 WHERE Uuid = ?", -1, &ppStmt, 0))
  {
    sub_10001CA34(a1);
    v4 = 0xFFFFFFFFLL;
  }

  else if (sqlite3_bind_blob(ppStmt, 1, a2, 16, 0))
  {
    sub_10001CA6C(a1);
    v4 = 5;
  }

  else if (sqlite3_step(ppStmt) == 101)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v4;
}

uint64_t sub_10000C02C(sqlite3 *a1)
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(a1, "UPDATE WrappedKeys SET Flagged = 1", -1, &ppStmt, 0))
  {
    sub_10001CAA4(a1);
    v2 = 0xFFFFFFFFLL;
  }

  else if (sqlite3_step(ppStmt) == 101)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0xFFFFFFFFLL;
  }

  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v2;
}

uint64_t sub_10000C0A4(sqlite3 *a1, const void *a2)
{
  ppStmt = 0;
  v4 = 0xFFFFFFFFLL;
  if (sqlite3_prepare_v2(a1, "UPDATE WrappedKeys SET Key = NULL, Flagged = 0, ClearTime = datetime('now', 'subsec') WHERE Flagged = 1 AND Key NOT NULL AND Uuid = ?", -1, &ppStmt, 0))
  {
    v6 = @"Failed to execute get statement: %s\n";
  }

  else if (sqlite3_bind_blob(ppStmt, 1, a2, 16, 0))
  {
    v4 = 5;
    v6 = @"Cannot bind uuid blob %s";
  }

  else
  {
    if (sqlite3_step(ppStmt) == 101)
    {
      v4 = 0;
      goto LABEL_5;
    }

    v4 = 6;
    v6 = @"step failed: %s";
  }

  v7 = sqlite3_errmsg(a1);
  sub_100011BE0("db_clear_flagged_volume", v6, v8, v9, v10, v11, v12, v13, v7);
LABEL_5:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v4;
}

uint64_t sub_10000C184(sqlite3 *a1)
{
  ppStmt = 0;
  v2 = 0xFFFFFFFFLL;
  if (sqlite3_prepare_v2(a1, "UPDATE WrappedKeys SET Key = NULL, ClearTime = datetime('now', 'subsec') WHERE Flagged = 1 AND Key NOT NULL;", -1, &ppStmt, 0))
  {
    v4 = @"Failed to execute get statement: %s\n";
  }

  else
  {
    if (sqlite3_step(ppStmt) == 101)
    {
      v2 = 0;
      goto LABEL_4;
    }

    v2 = 6;
    v4 = @"step failed: %s";
  }

  v5 = sqlite3_errmsg(a1);
  sub_100011BE0("db_clear_flagged", v4, v6, v7, v8, v9, v10, v11, v5);
LABEL_4:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v2;
}

uint64_t sub_10000C234(sqlite3 *a1, sqlite3_int64 a2)
{
  ppStmt = 0;
  v4 = 0xFFFFFFFFLL;
  if (sqlite3_prepare_v2(a1, "DELETE FROM WrappedKeys WHERE Flagged = 1 AND Key IS NULL AND unixepoch('now') - unixepoch(ClearTime) > ? ;", -1, &ppStmt, 0))
  {
    v6 = @"Failed to prepare get statement: %s\n";
  }

  else if (sqlite3_bind_int64(ppStmt, 1, a2))
  {
    v6 = @"Cannot bind age: %s\n";
  }

  else
  {
    if (sqlite3_step(ppStmt) == 101)
    {
      v4 = 0;
      goto LABEL_5;
    }

    v4 = 6;
    v6 = @"step failed: %s";
  }

  v7 = sqlite3_errmsg(a1);
  sub_100011BE0("db_delete_flagged_old", v6, v8, v9, v10, v11, v12, v13, v7);
LABEL_5:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v4;
}

BOOL sub_10000C308(const char *a1, int a2, int a3)
{
  if (a3)
  {
    v5 = opendir(a1);
    if (v5)
    {
      v6 = v5;
      v7 = dirfd(v5);
      if (v7 == -1)
      {
        v10 = 1;
        goto LABEL_16;
      }

      v8 = v7;
LABEL_7:
      if (fcntl(v8, 63) == 3)
      {
        v10 = 1;
      }

      else
      {
        v11 = fcntl(v8, 64, 3);
        v10 = v11 == 0;
        if (v11 && a2)
        {
          v12 = __error();
          sub_100011BE0("db_move_to_class_c", @"Failed to set class C on file:%s with error %d", v13, v14, v15, v16, v17, v18, a1, *v12);
          v10 = 0;
        }
      }

      if (!v6)
      {
        close(v8);
        return v10;
      }

LABEL_16:
      closedir(v6);
      return v10;
    }
  }

  else
  {
    v9 = open(a1, 2);
    if (v9 != -1)
    {
      v8 = v9;
      v6 = 0;
      goto LABEL_7;
    }
  }

  return 1;
}

const void *sub_10000C40C(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFDataGetTypeID())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000C448(const __CFDictionary *a1, const void *a2)
{
  v2 = -1;
  valuePtr = -1;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberLongLongType, &valuePtr);
      return valuePtr;
    }

    else
    {
      return -1;
    }
  }

  return v2;
}

const __CFBoolean *sub_10000C4B4(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFBooleanGetTypeID())
    {
      return (CFBooleanGetValue(v3) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *sub_10000C508(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFStringGetTypeID())
  {
    return 0;
  }

  return v3;
}

CFPropertyListRef sub_10000C59C(UInt8 *bytes, CFIndex length)
{
  format = kCFPropertyListBinaryFormat_v1_0;
  v2 = CFReadStreamCreateWithBytesNoCopy(kCFAllocatorDefault, bytes, length, kCFAllocatorNull);
  if (v2)
  {
    v9 = v2;
    if (CFReadStreamOpen(v2))
    {
      v22 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v9, 0, 2uLL, &format, 0);
      if (!v22)
      {
        sub_100011BE0("convertBinaryToObject", @"Could not create object from stream", v16, v17, v18, v19, v20, v21);
      }

      CFReadStreamClose(v9);
    }

    else
    {
      sub_100011BE0("convertBinaryToObject", @"Could not open the stream", v10, v11, v12, v13, v14, v15);
      v22 = 0;
    }

    CFRelease(v9);
  }

  else
  {
    sub_100011BE0("convertBinaryToObject", @"Could not create stream for serialized data", v3, v4, v5, v6, v7, v8);
    return 0;
  }

  return v22;
}

CFMutableDictionaryRef sub_10000C688()
{
  result = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!result)
  {
    sub_100011BE0("create_dict", @"Out of Memory!!! Dying!...so...cold....", v1, v2, v3, v4, v5, v6);
    exit(-1);
  }

  return result;
}

uint64_t sub_10000C6E0(uint32_t *a1)
{
  multiuser_flags = 0;
  v2 = mach_host_self();
  result = host_get_multiuser_config_flags(v2, &multiuser_flags);
  if (a1)
  {
    if (!result)
    {
      *a1 = multiuser_flags;
    }
  }

  return result;
}

uint64_t sub_10000C728()
{
  v3 = 0;
  v0 = sub_10000C6E0(&v3);
  if (v3 >= 0)
  {
    v1 = -1;
  }

  else
  {
    v1 = v3 & 0x3FFFFFFF;
  }

  if (v0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10000C7A0(uint64_t a1)
{
  v1 = a1;
  if (a1 <= -536363001)
  {
    v2 = 4294967294;
    if (a1 <= -536870195)
    {
      if (a1 != -536870207)
      {
        if (a1 == -536870206)
        {
          return 4294967279;
        }

        if (a1 != -536870199)
        {
          goto LABEL_25;
        }

        return 4294967287;
      }
    }

    else
    {
      if (a1 <= -536870175)
      {
        if (a1 == -536870194)
        {
          return 4294967293;
        }

        if (a1 != -536870184)
        {
          goto LABEL_25;
        }

        return 4294967283;
      }

      if (a1 != -536870174)
      {
        if (a1 == -536870160)
        {
          return 4294967288;
        }

LABEL_25:
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v4[0] = 67109120;
          v4[1] = v1;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unexpected AppleKeyStore error: %d\n", v4, 8u);
        }

        return 0xFFFFFFFFLL;
      }
    }

    return v2;
  }

  if (a1 <= -536362989)
  {
    if (a1 != -536363000)
    {
      if (a1 == -536362994)
      {
        return 4294967283;
      }

      if (a1 != -536362989)
      {
        goto LABEL_25;
      }

      return 4294967276;
    }

    return 4294967282;
  }

  if (a1 <= -536362985)
  {
    if (a1 == -536362988)
    {
      return 0;
    }

    if (a1 != -536362987)
    {
      goto LABEL_25;
    }

    return 4294967282;
  }

  if (a1 == -536362984)
  {
    return 4294967277;
  }

  if (a1)
  {
    goto LABEL_25;
  }

  return v1;
}

unint64_t sub_10000C9C4(unint64_t result)
{
  for (i = 0x8AC7230489E80000; i >= result; i /= 0xAuLL)
  {
    if (i <= 0x3E7)
    {
      return result;
    }
  }

  return (5 * (i / 0x64) + result) / (i / 0xA) * (i / 0xA);
}

void *sub_10000CA3C(void *result)
{
  if (result)
  {
    v1 = result;
    result = mach_absolute_time();
    *v1 = result;
  }

  return result;
}

double sub_10000CA6C(uint64_t a1, void *a2)
{
  v4 = mach_absolute_time();
  if (!qword_10003D320)
  {
    v6 = mach_absolute_time();
    qword_10003D320 = mach_absolute_time() - v6;
    info = 0;
    mach_timebase_info(&info);
    LODWORD(v8) = info.denom;
    LODWORD(v7) = info.numer;
    result = v7 / v8;
    qword_10003D328 = *&result;
  }

  if (a2)
  {
    result = *&qword_10003D328 * (v4 - a1 - qword_10003D320) / 1000.0;
    *a2 = result;
  }

  return result;
}

uint64_t sub_10000CB24()
{
  v2 = -1;
  result = sub_10000CF38(0);
  if (result)
  {
    result = sub_10000CBB0();
    if (result)
    {
      v1 = [objc_msgSend(sub_10000CBB0() "sharedConnection")];
      if (v1 == 2)
      {
        return 4;
      }

      else if (v1 == 1)
      {
        return 3;
      }

      else if (v1)
      {
        return 0;
      }

      else if (v2 == 1)
      {
        return 2;
      }

      else
      {
        return v2 == 0;
      }
    }
  }

  return result;
}

uint64_t sub_10000CBB0()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_10000D07C;
  v0 = qword_10003D338;
  v7 = sub_10000D08C;
  v8 = qword_10003D338;
  if (!qword_10003D338)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10000D098;
    v2[3] = &unk_100034CD0;
    v2[4] = &v3;
    sub_10000D098(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_10000CC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000CC9C(_BYTE *a1)
{
  if (!a1 || !sub_10000D11C(0))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_10003D348;
  v9 = off_10003D348;
  if (!off_10003D348)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000D260;
    v5[3] = &unk_100034CD0;
    v5[4] = &v6;
    sub_10000D260(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    sub_10001CC94();
  }

  v3 = v2();
  result = 0;
  *a1 = v3;
  return result;
}

void sub_10000CD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000CD9C(BOOL *a1)
{
  if (!sub_10000CF38(0) || !sub_10000CBB0())
  {
    return 0xFFFFFFFFLL;
  }

  v2 = [objc_msgSend(sub_10000CBB0() "sharedConnection")];
  result = 0;
  *a1 = v2 != 0;
  return result;
}

uint64_t sub_10000CDF8(unsigned __int8 *a1)
{
  if (!sub_10000D2E4(0) || !sub_10000CE4C())
  {
    return 0xFFFFFFFFLL;
  }

  v2 = [objc_msgSend(sub_10000CE4C() "sharedConfiguration")];
  result = 0;
  *a1 = v2;
  return result;
}

uint64_t sub_10000CE4C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_10000D07C;
  v0 = qword_10003D358;
  v7 = sub_10000D08C;
  v8 = qword_10003D358;
  if (!qword_10003D358)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10000D428;
    v2[3] = &unk_100034CD0;
    v2[4] = &v3;
    sub_10000D428(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_10000CF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000CF38(uint64_t a1)
{
  if (!qword_10003D330)
  {
    qword_10003D330 = _sl_dlopen();
  }

  return qword_10003D330;
}

uint64_t sub_10000D008(uint64_t a1)
{
  result = _sl_dlopen();
  qword_10003D330 = result;
  return result;
}

Class sub_10000D098(uint64_t a1)
{
  v3 = 0;
  if (!sub_10000CF38(&v3))
  {
    sub_10001CD64(&v3);
  }

  if (v3)
  {
    free(v3);
  }

  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10001CCFC();
  }

  qword_10003D338 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t sub_10000D11C(uint64_t a1)
{
  if (!qword_10003D340)
  {
    qword_10003D340 = _sl_dlopen();
  }

  return qword_10003D340;
}

uint64_t sub_10000D1EC(uint64_t a1)
{
  result = _sl_dlopen();
  qword_10003D340 = result;
  return result;
}

void *sub_10000D260(uint64_t a1)
{
  v5 = 0;
  v2 = sub_10000D11C(&v5);
  if (!v2)
  {
    sub_10001CDCC(&v5);
  }

  v3 = v2;
  if (v5)
  {
    free(v5);
  }

  result = dlsym(v3, "MAGetActivationState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10003D348 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000D2E4(uint64_t a1)
{
  if (!qword_10003D350)
  {
    qword_10003D350 = _sl_dlopen();
  }

  return qword_10003D350;
}

uint64_t sub_10000D3B4(uint64_t a1)
{
  result = _sl_dlopen();
  qword_10003D350 = result;
  return result;
}

Class sub_10000D428(uint64_t a1)
{
  v3 = 0;
  if (!sub_10000D2E4(&v3))
  {
    sub_10001CE9C(&v3);
  }

  if (v3)
  {
    free(v3);
  }

  result = objc_getClass("MDMCloudConfiguration");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10001CE34();
  }

  qword_10003D358 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t sub_10000D4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v12 = 0;
  sub_100019734(a2, a3, &v12);
  v3 = aks_se_set_nonce();
  v10 = 0;
  if (v3)
  {
    sub_100011BE0("seshat_arm_nonce", @"failed to set nonce 0x%x", v4, v5, v6, v7, v8, v9, v3);
    return 0xFFFFFFFFLL;
  }

  return v10;
}

uint64_t sub_10000D548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, CFDataRef *a6, int *a7)
{
  if (a3)
  {
    reset_token_for_memento_secret_with_opts = aks_se_get_reset_token_for_memento_secret_with_opts();
  }

  else
  {
    reset_token_for_memento_secret_with_opts = aks_se_get_reset_token();
  }

  v18 = reset_token_for_memento_secret_with_opts;
  if (reset_token_for_memento_secret_with_opts)
  {
    sub_100011BE0("KBGetSEStuffForMementoPasscode", @"aks_se_get_reset_token(memento:%d) -> 0x%x", v12, v13, v14, v15, v16, v17, a3 != 0, reset_token_for_memento_secret_with_opts);
  }

  else
  {
    if (a5)
    {
      *a5 = 0;
    }

    if (a7)
    {
      *a7 = 1;
    }

    if (a6)
    {
      sub_10001F2EC(reset_token_for_memento_secret_with_opts, 0, v12, v13, v14, v15, v16, v17);
      return 4294967283;
    }

    else
    {
      return 0;
    }
  }

  return v18;
}

uint64_t sub_10000D664()
{
  v7 = 0;
  __str = 0;
  v0 = sub_1000042BC("seshat-count", &v7, &__str);
  v1 = __str;
  if (v0)
  {
    v2 = 1;
  }

  else
  {
    v2 = __str == 0;
  }

  if (v2 || (__endptr = 0, *__error() = 0, LODWORD(v3) = strtol(__str, &__endptr, 10), v1 = __str, !*__str) || *__endptr)
  {
    v3 = 0;
    if (v1)
    {
LABEL_8:
      free(v1);
    }
  }

  else
  {
    if (*__error() == 34)
    {
      v3 = 0;
    }

    else
    {
      v3 = v3;
    }

    v1 = __str;
    if (__str)
    {
      goto LABEL_8;
    }
  }

  return v3;
}

CFDataRef sub_10000D71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (aks_se_get_passcode_derivation())
  {
    v15 = @"failed to get se derivation";
LABEL_6:
    sub_10001F314(v15, v6, v7, v8, v9, v10, v11, v12);
    v13 = 0;
    goto LABEL_3;
  }

  v13 = CFDataCreate(0, 0, 0);
  if (!v13)
  {
    v15 = @"failed to derive SE passcode";
    goto LABEL_6;
  }

LABEL_3:
  memset_s(0, 0, 0, 0);
  free(0);
  return v13;
}

void sub_10000D7A4()
{
  if (sub_100002230())
  {
    v0 = time(0);

    sub_1000188A0(v0);
    return;
  }

  v1 = sub_100001398();
  if (!v1)
  {
    sub_10001F348(0, v2, v3, v4, v5, v6, v7, v8, v19);
    return;
  }

  v9 = v1;
  v10 = time(0);
  if (sub_10001D110(v9, v10))
  {
    v18 = @"failed to set TTR";
LABEL_14:
    sub_10001F338(v18, v11, v12, v13, v14, v15, v16, v17, v19);
    goto LABEL_8;
  }

  if (sub_100001D24(v9))
  {
    v18 = @"failed to serialize plist";
    goto LABEL_14;
  }

LABEL_8:

  CFRelease(v9);
}

BOOL sub_10000D85C(id a1, void *a2)
{
  if (!aks_get_lock_state())
  {
    return 1;
  }

  sub_10001F35C(@"no lock state", v2, v3, v4, v5, v6, v7, v8);
  return 0;
}

void sub_10000D8E0()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 161) = -1;
}

unint64_t sub_10000D900(id *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);

  return sub_1000190FC(a1, v30, v31, a4, v32 - 156, va);
}

uint64_t sub_10000D920(uint64_t a1, const void *a2)
{
  if (CFEqual(*(a1 + 40), a2))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return 0;
}

void sub_10000DA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (&_analytics_send_event_lazy)
  {
    analytics_send_event_lazy();
  }

  else
  {

    sub_100011BE0("analytics_send_nfc_hardware_state", @"CA fwk missing, not sending event", a3, a4, a5, a6, a7, a8);
  }
}

xpc_object_t sub_10000DAA0(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, "timedout", **(a1 + 32));
  xpc_dictionary_set_uint64(v2, "duration", *(*(a1 + 32) + 4));
  xpc_dictionary_set_uint64(v2, "state", *(*(a1 + 32) + 8));
  return v2;
}

void sub_10000DB1C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100011BE0("analytics_send_passcode_status", @"AnalyticsEvent: is_set: %llu, type: %llu, activation_status: %llu, inactivity_reboot: %llu, hours_since_locked: %llu, is_mdm_profile_installed: %llu, is_supervised: %llu, version: %llu", a3, a4, a5, a6, a7, a8, *a1, *(a1 + 1), *(a1 + 2), a1[12], *(a1 + 4), *(a1 + 5), *(a1 + 6), a1[28]);
  if (&_analytics_send_event_lazy)
  {
    analytics_send_event_lazy();
  }

  else
  {

    sub_100011BE0("analytics_send_passcode_status", @"CA fwk missing, not sending event", v8, v9, v10, v11, v12, v13);
  }
}

xpc_object_t sub_10000DC14(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, "is_set", **(a1 + 32));
  xpc_dictionary_set_uint64(v2, "type", *(*(a1 + 32) + 4));
  xpc_dictionary_set_uint64(v2, "activation_status", *(*(a1 + 32) + 8));
  xpc_dictionary_set_BOOL(v2, "inactivity_reboot", *(*(a1 + 32) + 12));
  xpc_dictionary_set_uint64(v2, "hours_since_locked", *(*(a1 + 32) + 16));
  xpc_dictionary_set_uint64(v2, "is_mdm_profile_installed", *(*(a1 + 32) + 20));
  xpc_dictionary_set_uint64(v2, "is_supervised", *(*(a1 + 32) + 24));
  xpc_dictionary_set_uint64(v2, "version", *(*(a1 + 32) + 28));
  return v2;
}

void sub_10000DD08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100011BE0("analytics_send_seshat_debug", @"AnalyticsEvent: debug: %llu", a3, a4, a5, a6, a7, a8, *a1);
  if (&_analytics_send_event_lazy)
  {
    analytics_send_event_lazy();
  }

  else
  {

    sub_100011BE0("analytics_send_seshat_debug", @"CA fwk missing, not sending event", v8, v9, v10, v11, v12, v13);
  }
}

xpc_object_t sub_10000DDE0(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "debug", **(a1 + 32));
  return v2;
}

void sub_10000DE2C(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  *a1 = *a1 & 0xFC3F | 0x80;
  v25 = v8 & 1;
  sub_100011BE0("analytics_send_seshat_enroll", @"AnalyticsEvent: X: %llu, Sampling: %llu, Vslot: %llu, version: %llu, WCProtected: %llu, SEPRMProtected: %llu, AKPUProtected: %llu, PSProtected: %llu, SeshatRM: %llu, unhealthy: %llu", a3, a4, a5, a6, a7, a8);
  v17 = sub_100019678(v9, v10, v11, v12, v13, v14, v15, v16);
  if (v17)
  {
    if (&_analytics_send_event_lazy)
    {
      analytics_send_event_lazy();
    }

    else
    {

      sub_100011BE0("analytics_send_seshat_enroll", @"CA fwk missing, not sending event", v19, v20, v21, v22, v23, v24);
    }
  }

  else
  {
    sub_10001FDF0(v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

xpc_object_t sub_10000DF58(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "X", **(a1 + 32) & 1);
  xpc_dictionary_set_uint64(v2, "Sampling", (**(a1 + 32) >> 1) & 1);
  xpc_dictionary_set_uint64(v2, "Vslot", (**(a1 + 32) >> 2) & 0xF);
  xpc_dictionary_set_uint64(v2, "version", (**(a1 + 32) >> 6) & 0xF);
  xpc_dictionary_set_uint64(v2, "WCProtected", (**(a1 + 32) >> 10) & 1);
  xpc_dictionary_set_uint64(v2, "SEPRMProtected", (**(a1 + 32) >> 11) & 1);
  xpc_dictionary_set_uint64(v2, "AKPUProtected", (**(a1 + 32) >> 12) & 1);
  xpc_dictionary_set_uint64(v2, "PSProtected", (**(a1 + 32) >> 13) & 1);
  xpc_dictionary_set_uint64(v2, "SeshatRM", (**(a1 + 32) >> 14) & 1);
  xpc_dictionary_set_uint64(v2, "unhealthy", **(a1 + 32) >> 15);
  return v2;
}

void sub_10000E0A4(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  *a1 = *a1 & 0xFC3F | 0x80;
  v25 = v8 & 1;
  sub_100011BE0("analytics_send_seshat_unenroll", @"AnalyticsEvent: X: %llu, Sampling: %llu, Vslot: %llu, version: %llu, WCProtected: %llu, SEPRMProtected: %llu, AKPUProtected: %llu, PSProtected: %llu, SeshatRM: %llu, unhealthy: %llu", a3, a4, a5, a6, a7, a8);
  v17 = sub_100019678(v9, v10, v11, v12, v13, v14, v15, v16);
  if (v17)
  {
    if (&_analytics_send_event_lazy)
    {
      analytics_send_event_lazy();
    }

    else
    {

      sub_100011BE0("analytics_send_seshat_unenroll", @"CA fwk missing, not sending event", v19, v20, v21, v22, v23, v24);
    }
  }

  else
  {
    sub_10001FE04(v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

xpc_object_t sub_10000E1D0(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "X", **(a1 + 32) & 1);
  xpc_dictionary_set_uint64(v2, "Sampling", (**(a1 + 32) >> 1) & 1);
  xpc_dictionary_set_uint64(v2, "Vslot", (**(a1 + 32) >> 2) & 0xF);
  xpc_dictionary_set_uint64(v2, "version", (**(a1 + 32) >> 6) & 0xF);
  xpc_dictionary_set_uint64(v2, "WCProtected", (**(a1 + 32) >> 10) & 1);
  xpc_dictionary_set_uint64(v2, "SEPRMProtected", (**(a1 + 32) >> 11) & 1);
  xpc_dictionary_set_uint64(v2, "AKPUProtected", (**(a1 + 32) >> 12) & 1);
  xpc_dictionary_set_uint64(v2, "PSProtected", (**(a1 + 32) >> 13) & 1);
  xpc_dictionary_set_uint64(v2, "SeshatRM", (**(a1 + 32) >> 14) & 1);
  xpc_dictionary_set_uint64(v2, "unhealthy", **(a1 + 32) >> 15);
  return v2;
}

void sub_10000E31C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = *a1 & 1;
  sub_100011BE0("analytics_send_seshat_eol", @"AnalyticsEvent: occured: %llu", a3, a4, a5, a6, a7, a8);
  v16 = sub_100019678(v8, v9, v10, v11, v12, v13, v14, v15);
  if (v16)
  {
    if (&_analytics_send_event_lazy)
    {
      analytics_send_event_lazy();
    }

    else
    {

      sub_100011BE0("analytics_send_seshat_eol", @"CA fwk missing, not sending event", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    sub_10001FE18(v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

xpc_object_t sub_10000E408(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "occured", **(a1 + 32) & 1);
  return v2;
}

void sub_10000E458(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  *a1 = *a1 & 0xFFFFFF1F | 0x60;
  v25 = v8 & 0x1F;
  sub_100011BE0("analytics_send_preflight_result", @"AnalyticsEvent: reason: %llu, version: %llu, nf_result: %llu, applet_result: %llu, num_fails: %llu, num_preflights: %llu, failed: %llu, calling_ctx: %llu, jcop_seq_gen: %llu, jcop_seq_gen2: %llu", a3, a4, a5, a6, a7, a8);
  v17 = sub_100019678(v9, v10, v11, v12, v13, v14, v15, v16);
  if (v17)
  {
    if (&_analytics_send_event_lazy)
    {
      analytics_send_event_lazy();
    }

    else
    {

      sub_100011BE0("analytics_send_preflight_result", @"CA fwk missing, not sending event", v19, v20, v21, v22, v23, v24);
    }
  }

  else
  {
    sub_10001FE2C(v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

xpc_object_t sub_10000E58C(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "reason", **(a1 + 32) & 0x1FLL);
  xpc_dictionary_set_uint64(v2, "version", **(a1 + 32) >> 5);
  xpc_dictionary_set_uint64(v2, "nf_result", *(*(a1 + 32) + 1));
  xpc_dictionary_set_uint64(v2, "applet_result", *(*(a1 + 32) + 2));
  xpc_dictionary_set_uint64(v2, "num_fails", *(*(a1 + 32) + 4));
  xpc_dictionary_set_uint64(v2, "num_preflights", *(*(a1 + 32) + 5));
  xpc_dictionary_set_uint64(v2, "failed", *(*(a1 + 32) + 6) & 1);
  xpc_dictionary_set_uint64(v2, "calling_ctx", (*(*(a1 + 32) + 6) >> 1) & 3);
  xpc_dictionary_set_uint64(v2, "jcop_seq_gen", (*(*(a1 + 32) + 6) >> 3) & 1);
  xpc_dictionary_set_uint64(v2, "jcop_seq_gen2", (*(*(a1 + 32) + 6) >> 4) & 1);
  return v2;
}

void sub_10000E6C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = *a1 & 0xFFFFFFFFFFFFFFF8 | 5;
  sub_100011BE0("analytics_send_seshat_recovery_required", @"AnalyticsEvent: version: %llu, context: %llu, timedout: %llu, padding: %llu, nf_result: %llu, applet_result: %llu, reason: %llu", a3, a4, a5, a6, a7, a8);
  v16 = sub_100019678(v8, v9, v10, v11, v12, v13, v14, v15);
  if (v16)
  {
    if (&_analytics_send_event_lazy)
    {
      analytics_send_event_lazy();
    }

    else
    {

      sub_100011BE0("analytics_send_seshat_recovery_required", @"CA fwk missing, not sending event", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    sub_10001FE40(v16, v17, v18, v19, v20, v21, v22, v23, 5);
  }
}

xpc_object_t sub_10000E7E4(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "version", **(a1 + 32) & 7);
  xpc_dictionary_set_uint64(v2, "context", (**(a1 + 32) >> 3) & 7);
  xpc_dictionary_set_uint64(v2, "timedout", (**(a1 + 32) >> 6) & 1);
  xpc_dictionary_set_uint64(v2, "padding", (**(a1 + 32) >> 7) & 1);
  xpc_dictionary_set_uint64(v2, "nf_result", *(*(a1 + 32) + 1));
  xpc_dictionary_set_uint64(v2, "applet_result", *(*(a1 + 32) + 5));
  xpc_dictionary_set_uint64(v2, "reason", *(*(a1 + 32) + 7));
  return v2;
}

void sub_10000E8D0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = *a1 & 1;
  sub_100011BE0("analytics_send_seshat_recovery_success", @"AnalyticsEvent: occured: %llu", a3, a4, a5, a6, a7, a8);
  v16 = sub_100019678(v8, v9, v10, v11, v12, v13, v14, v15);
  if (v16)
  {
    if (&_analytics_send_event_lazy)
    {
      analytics_send_event_lazy();
    }

    else
    {

      sub_100011BE0("analytics_send_seshat_recovery_success", @"CA fwk missing, not sending event", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    sub_10001FE54(v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

xpc_object_t sub_10000E9BC(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "occured", **(a1 + 32) & 1);
  return v2;
}

void sub_10000EA0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = *a1;
  sub_100011BE0("analytics_send_seshat_unexpected_sentinel", @"AnalyticsEvent: occured: %llu", a3, a4, a5, a6, a7, a8);
  v16 = sub_100019678(v8, v9, v10, v11, v12, v13, v14, v15);
  if (v16)
  {
    if (&_analytics_send_event_lazy)
    {
      analytics_send_event_lazy();
    }

    else
    {

      sub_100011BE0("analytics_send_seshat_unexpected_sentinel", @"CA fwk missing, not sending event", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    sub_10001FE68(v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

xpc_object_t sub_10000EAF4(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "occured", **(a1 + 32));
  return v2;
}

void sub_10000EB40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = *a1;
  sub_100011BE0("analytics_send_seshat_write_count", @"AnalyticsEvent: writes: %llu", a3, a4, a5, a6, a7, a8);
  v16 = sub_100019678(v8, v9, v10, v11, v12, v13, v14, v15);
  if (v16)
  {
    v24 = arc4random();
    HIDWORD(v32) = -858993459 * v24;
    LODWORD(v32) = -858993459 * v24;
    if ((v32 >> 1) >= 0x1999999A)
    {
      sub_10001FE90(v24, v25, v26, v27, v28, v29, v30, v31, v33);
    }

    else if (&_analytics_send_event_lazy)
    {
      analytics_send_event_lazy();
    }

    else
    {

      sub_100011BE0("analytics_send_seshat_write_count", @"CA fwk missing, not sending event", v26, v27, v28, v29, v30, v31);
    }
  }

  else
  {
    sub_10001FE7C(v16, v17, v18, v19, v20, v21, v22, v23, v33);
  }
}

xpc_object_t sub_10000EC54(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "writes", **(a1 + 32));
  return v2;
}

void sub_10000ECA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = *a1;
  sub_100011BE0("analytics_send_seshat_report", @"AnalyticsEvent: key: %llu, value: %llu", a3, a4, a5, a6, a7, a8);
  v16 = sub_100019678(v8, v9, v10, v11, v12, v13, v14, v15);
  if (v16)
  {
    if (&_analytics_send_event_lazy)
    {
      analytics_send_event_lazy();
    }

    else
    {

      sub_100011BE0("analytics_send_seshat_report", @"CA fwk missing, not sending event", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    sub_10001FEA4(v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

xpc_object_t sub_10000ED90(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "key", **(a1 + 32));
  xpc_dictionary_set_uint64(v2, "value", *(*(a1 + 32) + 4));
  return v2;
}

void sub_10000EDF4(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  *a1 = v8 & 0xFFF0 | 1;
  sub_100011BE0("analytics_send_sidp_recovery", @"AnalyticsEvent: version: %llu, type: %llu, event: %llu, recoverable: %llu, recovery_required: %llu, se_entangled: %llu, se_recovery_required: %llu, smdk_entalgned: %llu", a3, a4, a5, a6, a7, a8, 1, (v8 >> 4) & 3, v8 >> 6, (v8 >> 8) & 1, (v8 >> 9) & 1, (v8 >> 10) & 1, (v8 >> 11) & 1, (v8 >> 12) & 1);
  if (&_analytics_send_event_lazy)
  {
    analytics_send_event_lazy();
  }

  else
  {

    sub_100011BE0("analytics_send_sidp_recovery", @"CA fwk missing, not sending event", v9, v10, v11, v12, v13, v14);
  }
}

xpc_object_t sub_10000EF04(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "version", **(a1 + 32) & 0xFLL);
  xpc_dictionary_set_uint64(v2, "type", (**(a1 + 32) >> 4) & 3);
  xpc_dictionary_set_uint64(v2, "event", **(a1 + 32) >> 6);
  xpc_dictionary_set_uint64(v2, "recoverable", (**(a1 + 32) >> 8) & 1);
  xpc_dictionary_set_uint64(v2, "recovery_required", (**(a1 + 32) >> 9) & 1);
  xpc_dictionary_set_uint64(v2, "se_entangled", (**(a1 + 32) >> 10) & 1);
  xpc_dictionary_set_uint64(v2, "se_recovery_required", (**(a1 + 32) >> 11) & 1);
  xpc_dictionary_set_uint64(v2, "smdk_entalgned", (**(a1 + 32) >> 12) & 1);
  return v2;
}

void sub_10000F018(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 &= 0xE0u;
  sub_100011BE0("analytics_send_first_unlock", @"AnalyticsEvent: version: %llu, se_entangled: %llu, smdk_entalgned: %llu", a3, a4, a5, a6, a7, a8);
  v16 = sub_100019678(v8, v9, v10, v11, v12, v13, v14, v15);
  if (v16)
  {
    if (&_analytics_send_event_lazy)
    {
      analytics_send_event_lazy();
    }

    else
    {

      sub_100011BE0("analytics_send_first_unlock", @"CA fwk missing, not sending event", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    sub_10001FEB8(v16, v17, v18, v19, v20, v21, v22, v23, 0);
  }
}

xpc_object_t sub_10000F114(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "version", **(a1 + 32) & 0x1F);
  xpc_dictionary_set_uint64(v2, "se_entangled", (**(a1 + 32) >> 5) & 1);
  xpc_dictionary_set_uint64(v2, "smdk_entalgned", (**(a1 + 32) >> 6) & 1);
  return v2;
}

void sub_10000F19C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100011BE0("analytics_send_db_filekey_found", @"AnalyticsEvent: filekey_count: %llu", a3, a4, a5, a6, a7, a8, *a1);
  if (&_analytics_send_event_lazy)
  {
    analytics_send_event_lazy();
  }

  else
  {

    sub_100011BE0("analytics_send_db_filekey_found", @"CA fwk missing, not sending event", v8, v9, v10, v11, v12, v13);
  }
}

xpc_object_t sub_10000F274(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "filekey_count", **(a1 + 32));
  return v2;
}

void sub_10000F2C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100011BE0("analytics_send_db_filekey_not_found", @"AnalyticsEvent: filekey_count: %llu", a3, a4, a5, a6, a7, a8, *a1);
  if (&_analytics_send_event_lazy)
  {
    analytics_send_event_lazy();
  }

  else
  {

    sub_100011BE0("analytics_send_db_filekey_not_found", @"CA fwk missing, not sending event", v8, v9, v10, v11, v12, v13);
  }
}

xpc_object_t sub_10000F398(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "filekey_count", **(a1 + 32));
  return v2;
}

xpc_object_t sub_10000F3E4(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "status", **(a1 + 32));
  return v2;
}

void sub_10000F430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (&_analytics_send_event_lazy)
  {
    analytics_send_event_lazy();
  }

  else
  {

    sub_100011BE0("analytics_send_db_get", @"CA fwk missing, not sending event", a3, a4, a5, a6, a7, a8);
  }
}

xpc_object_t sub_10000F4D0(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "status", **(a1 + 32));
  return v2;
}

void sub_10000F51C(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100011BE0("analytics_send_forgotten_passcode_event", @"AnalyticsEvent: days_since_passcode_change: %llu, passcode_reset_expired: %llu, passcode_reset_exists: %llu, days_since_lock: %llu, days_since_unlock: %llu", a3, a4, a5, a6, a7, a8, *a1, a1[1] & 1, (*(a1 + 2) >> 1) & 1, (*(a1 + 2) >> 2), ((*(a1 + 2) | (*(a1 + 6) << 16)) >> 10));
  if (&_analytics_send_event_lazy)
  {
    analytics_send_event_lazy();
  }

  else
  {

    sub_100011BE0("analytics_send_forgotten_passcode_event", @"CA fwk missing, not sending event", v8, v9, v10, v11, v12, v13);
  }
}

xpc_object_t sub_10000F618(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "days_since_passcode_change", **(a1 + 32));
  xpc_dictionary_set_uint64(v2, "passcode_reset_expired", *(*(a1 + 32) + 4) & 1);
  xpc_dictionary_set_uint64(v2, "passcode_reset_exists", (*(*(a1 + 32) + 4) >> 1) & 1);
  xpc_dictionary_set_uint64(v2, "days_since_lock", (*(*(a1 + 32) + 4) >> 2));
  xpc_dictionary_set_uint64(v2, "days_since_unlock", ((*(*(a1 + 32) + 4) | (*(*(a1 + 32) + 6) << 16)) >> 10));
  return v2;
}

void sub_10000F6DC(__int128 *a1)
{
  v1 = *a1;
  v2 = *(a1 + 111);
  v3 = *(a1 + 112);
  v4 = *(a1 + 113);
  v5 = *(a1 + 114);
  v7 = *(a1 + 29);
  v6 = *(a1 + 30);
  v20 = *(a1 + 110);
  v18 = *(a1 + 108);
  v19 = *(a1 + 109);
  v16 = *(a1 + 106);
  v17 = *(a1 + 107);
  v14 = *(a1 + 104);
  v15 = *(a1 + 105);
  sub_100011BE0("analytics_send_user_keybag", @"AnalyticsEvent: report_version: %llu, grace_period: %llu, failed_unlock_attempts: %llu, max_unlock_attempts: %llu, recovery_iterations: %llu, recovery_target_iterations: %llu, recovery_wc_protected: %llu, recovery_restricted: %llu, recovery_ps_protected: %llu, recovery_akpu_protected: %llu, recovery_auto: %llu, memento_supported: %llu, memento_exists: %llu, memento_passcode_generation: %llu, passcode_generation: %llu, inactivity_reboot_enabled: %llu, oneness_automatic_mode: %llu, user_uuid_mismatch: %llu, zero_user_uuid: %llu, group_uuid_mismatch: %llu, zero_group_uuid: %llu, keybag_state_no_pin: %llu, keybag_state_been_unlocked: %llu, keybag_state_passcode_threshold: %llu, keybag_state_mesa_token: %llu, keybag_state_recovery_required: %llu, keybag_state_not_recoverable: %llu, keybag_state_stash_unlocked: %llu, keybag_state_escrow_unwrap_required: %llu, keybag_state_smdk_entangled: %llu, keybag_state_staged_manifest: %llu, keybag_state_se_unrecoverable: %llu, keybag_state_se_recovery_required: %llu, keybag_state_se_entangled: %llu, keybag_state_se_healthy: %llu, keybag_state_se_been_unlocked: %llu, keybag_state_art_loaded: %llu, keybag_state_xart_unlock_policy: %llu, keybag_state_xart_policy_cached: %llu, keybag_state_xart_policy_dirty: %llu, keybag_state_xart_policy_enforced: %llu, keybag_state_ps_entangled: %llu, keybag_state_from_xart: %llu, keybag_state_allow_test_keys: %llu, keybag_state_remote_session_unlocked: %llu, keybag_state_has_group_seed: %llu, keybag_state_been_passcode_unlocked: %llu, keybag_state_has_auto_recovery: %llu, keybag_state_has_lkgp_recovery: %llu, keybag_state_has_fv_recovery: %llu, keybag_state_has_memento_blob: %llu, keybag_more_state_cx_expiring: %llu, keybag_more_state_cx_expired: %llu, keybag_more_state_recovery_ps_fua_cached: %llu, keybag_more_state_unlocked_with_escrow: %llu, keybag_more_state_oneness_assert: %llu, keybag_more_state_peer_records_dirty: %llu, keybag_more_state_peer_records_flush: %llu, hours_since_locked: %llu, cx_hours_remaining: %llu, days_since_passcode_change: %llu, memento_flags_blob_exists: %llu, memento_flags_se: %llu, memento_flags_ps: %llu, memento_flags_se_reset_token: %llu, memento_flags_tombstone: %llu, memento_failed_unlock_attempts: %llu, memento_se_slot: %llu, aks_get_extended_device_state_failure: %llu, AKSIdentityGetSessionTimeWindowsFailure: %llu, aks_get_seconds_since_passcode_change_failure: %llu, aks_memento_get_state_failure: %llu", v6, v7, v5, v4, v3, v2, v1, a1[1], *(a1 + 4), *(a1 + 5), *(a1 + 48), *(a1 + 49), *(a1 + 50), *(a1 + 51), *(a1 + 52), *(a1 + 53), *(a1 + 54), *(a1 + 7), *(a1 + 8), *(a1 + 72), *(a1 + 73), *(a1 + 74), *(a1 + 75), *(a1 + 76), *(a1 + 77), *(a1 + 78), *(a1 + 79), *(a1 + 80), *(a1 + 81), *(a1 + 82), *(a1 + 83), *(a1 + 84), *(a1 + 85), *(a1 + 86), *(a1 + 87), *(a1 + 88), *(a1 + 89), *(a1 + 90), *(a1 + 91), *(a1 + 92), *(a1 + 93), *(a1 + 94), *(a1 + 95), *(a1 + 96), *(a1 + 97), *(a1 + 98), *(a1 + 99), *(a1 + 100), *(a1 + 101), *(a1 + 102), *(a1 + 103), v14, v15, v16, v17, v18, v19, v20, v2);
  if (&_analytics_send_event_lazy)
  {
    analytics_send_event_lazy();
  }

  else
  {

    sub_100011BE0("analytics_send_user_keybag", @"CA fwk missing, not sending event", v8, v9, v10, v11, v12, v13);
  }
}

xpc_object_t sub_10000FAD4(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "report_version", **(a1 + 32));
  xpc_dictionary_set_uint64(v2, "grace_period", *(*(a1 + 32) + 8));
  xpc_dictionary_set_uint64(v2, "failed_unlock_attempts", *(*(a1 + 32) + 16));
  xpc_dictionary_set_uint64(v2, "max_unlock_attempts", *(*(a1 + 32) + 24));
  xpc_dictionary_set_uint64(v2, "recovery_iterations", *(*(a1 + 32) + 32));
  xpc_dictionary_set_uint64(v2, "recovery_target_iterations", *(*(a1 + 32) + 40));
  xpc_dictionary_set_BOOL(v2, "recovery_wc_protected", *(*(a1 + 32) + 48));
  xpc_dictionary_set_BOOL(v2, "recovery_restricted", *(*(a1 + 32) + 49));
  xpc_dictionary_set_BOOL(v2, "recovery_ps_protected", *(*(a1 + 32) + 50));
  xpc_dictionary_set_BOOL(v2, "recovery_akpu_protected", *(*(a1 + 32) + 51));
  xpc_dictionary_set_BOOL(v2, "recovery_auto", *(*(a1 + 32) + 52));
  xpc_dictionary_set_BOOL(v2, "memento_supported", *(*(a1 + 32) + 53));
  xpc_dictionary_set_BOOL(v2, "memento_exists", *(*(a1 + 32) + 54));
  xpc_dictionary_set_uint64(v2, "memento_passcode_generation", *(*(a1 + 32) + 56));
  xpc_dictionary_set_uint64(v2, "passcode_generation", *(*(a1 + 32) + 64));
  xpc_dictionary_set_BOOL(v2, "inactivity_reboot_enabled", *(*(a1 + 32) + 72));
  xpc_dictionary_set_BOOL(v2, "oneness_automatic_mode", *(*(a1 + 32) + 73));
  xpc_dictionary_set_BOOL(v2, "user_uuid_mismatch", *(*(a1 + 32) + 74));
  xpc_dictionary_set_BOOL(v2, "zero_user_uuid", *(*(a1 + 32) + 75));
  xpc_dictionary_set_BOOL(v2, "group_uuid_mismatch", *(*(a1 + 32) + 76));
  xpc_dictionary_set_BOOL(v2, "zero_group_uuid", *(*(a1 + 32) + 77));
  xpc_dictionary_set_BOOL(v2, "keybag_state_no_pin", *(*(a1 + 32) + 78));
  xpc_dictionary_set_BOOL(v2, "keybag_state_been_unlocked", *(*(a1 + 32) + 79));
  xpc_dictionary_set_BOOL(v2, "keybag_state_passcode_threshold", *(*(a1 + 32) + 80));
  xpc_dictionary_set_BOOL(v2, "keybag_state_mesa_token", *(*(a1 + 32) + 81));
  xpc_dictionary_set_BOOL(v2, "keybag_state_recovery_required", *(*(a1 + 32) + 82));
  xpc_dictionary_set_BOOL(v2, "keybag_state_not_recoverable", *(*(a1 + 32) + 83));
  xpc_dictionary_set_BOOL(v2, "keybag_state_stash_unlocked", *(*(a1 + 32) + 84));
  xpc_dictionary_set_BOOL(v2, "keybag_state_escrow_unwrap_required", *(*(a1 + 32) + 85));
  xpc_dictionary_set_BOOL(v2, "keybag_state_smdk_entangled", *(*(a1 + 32) + 86));
  xpc_dictionary_set_BOOL(v2, "keybag_state_staged_manifest", *(*(a1 + 32) + 87));
  xpc_dictionary_set_BOOL(v2, "keybag_state_se_unrecoverable", *(*(a1 + 32) + 88));
  xpc_dictionary_set_BOOL(v2, "keybag_state_se_recovery_required", *(*(a1 + 32) + 89));
  xpc_dictionary_set_BOOL(v2, "keybag_state_se_entangled", *(*(a1 + 32) + 90));
  xpc_dictionary_set_BOOL(v2, "keybag_state_se_healthy", *(*(a1 + 32) + 91));
  xpc_dictionary_set_BOOL(v2, "keybag_state_se_been_unlocked", *(*(a1 + 32) + 92));
  xpc_dictionary_set_BOOL(v2, "keybag_state_art_loaded", *(*(a1 + 32) + 93));
  xpc_dictionary_set_BOOL(v2, "keybag_state_xart_unlock_policy", *(*(a1 + 32) + 94));
  xpc_dictionary_set_BOOL(v2, "keybag_state_xart_policy_cached", *(*(a1 + 32) + 95));
  xpc_dictionary_set_BOOL(v2, "keybag_state_xart_policy_dirty", *(*(a1 + 32) + 96));
  xpc_dictionary_set_BOOL(v2, "keybag_state_xart_policy_enforced", *(*(a1 + 32) + 97));
  xpc_dictionary_set_BOOL(v2, "keybag_state_ps_entangled", *(*(a1 + 32) + 98));
  xpc_dictionary_set_BOOL(v2, "keybag_state_from_xart", *(*(a1 + 32) + 99));
  xpc_dictionary_set_BOOL(v2, "keybag_state_allow_test_keys", *(*(a1 + 32) + 100));
  xpc_dictionary_set_BOOL(v2, "keybag_state_remote_session_unlocked", *(*(a1 + 32) + 101));
  xpc_dictionary_set_BOOL(v2, "keybag_state_has_group_seed", *(*(a1 + 32) + 102));
  xpc_dictionary_set_BOOL(v2, "keybag_state_been_passcode_unlocked", *(*(a1 + 32) + 103));
  xpc_dictionary_set_BOOL(v2, "keybag_state_has_auto_recovery", *(*(a1 + 32) + 104));
  xpc_dictionary_set_BOOL(v2, "keybag_state_has_lkgp_recovery", *(*(a1 + 32) + 105));
  xpc_dictionary_set_BOOL(v2, "keybag_state_has_fv_recovery", *(*(a1 + 32) + 106));
  xpc_dictionary_set_BOOL(v2, "keybag_state_has_memento_blob", *(*(a1 + 32) + 107));
  xpc_dictionary_set_BOOL(v2, "keybag_more_state_cx_expiring", *(*(a1 + 32) + 108));
  xpc_dictionary_set_BOOL(v2, "keybag_more_state_cx_expired", *(*(a1 + 32) + 109));
  xpc_dictionary_set_BOOL(v2, "keybag_more_state_recovery_ps_fua_cached", *(*(a1 + 32) + 110));
  xpc_dictionary_set_BOOL(v2, "keybag_more_state_unlocked_with_escrow", *(*(a1 + 32) + 111));
  xpc_dictionary_set_BOOL(v2, "keybag_more_state_oneness_assert", *(*(a1 + 32) + 112));
  xpc_dictionary_set_BOOL(v2, "keybag_more_state_peer_records_dirty", *(*(a1 + 32) + 113));
  xpc_dictionary_set_BOOL(v2, "keybag_more_state_peer_records_flush", *(*(a1 + 32) + 114));
  xpc_dictionary_set_uint64(v2, "hours_since_locked", *(*(a1 + 32) + 116));
  xpc_dictionary_set_uint64(v2, "cx_hours_remaining", *(*(a1 + 32) + 120));
  xpc_dictionary_set_uint64(v2, "days_since_passcode_change", *(*(a1 + 32) + 124));
  xpc_dictionary_set_BOOL(v2, "memento_flags_blob_exists", *(*(a1 + 32) + 128));
  xpc_dictionary_set_BOOL(v2, "memento_flags_se", *(*(a1 + 32) + 129));
  xpc_dictionary_set_BOOL(v2, "memento_flags_ps", *(*(a1 + 32) + 130));
  xpc_dictionary_set_BOOL(v2, "memento_flags_se_reset_token", *(*(a1 + 32) + 131));
  xpc_dictionary_set_BOOL(v2, "memento_flags_tombstone", *(*(a1 + 32) + 132));
  xpc_dictionary_set_uint64(v2, "memento_failed_unlock_attempts", *(*(a1 + 32) + 136));
  xpc_dictionary_set_uint64(v2, "memento_se_slot", *(*(a1 + 32) + 140));
  xpc_dictionary_set_BOOL(v2, "aks_get_extended_device_state_failure", *(*(a1 + 32) + 144));
  xpc_dictionary_set_BOOL(v2, "AKSIdentityGetSessionTimeWindowsFailure", *(*(a1 + 32) + 145));
  xpc_dictionary_set_BOOL(v2, "aks_get_seconds_since_passcode_change_failure", *(*(a1 + 32) + 146));
  xpc_dictionary_set_BOOL(v2, "aks_memento_get_state_failure", *(*(a1 + 32) + 147));
  return v2;
}

void sub_1000101C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100011BE0("analytics_send_stash_presence", @"AnalyticsEvent: present_for_minutes_while_unlocked: %llu, present_for_minutes_while_locked: %llu, automatic_su_enabled: %llu, analytics_failure: %llu", a3, a4, a5, a6, a7, a8, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 20));
  if (&_analytics_send_event_lazy)
  {
    analytics_send_event_lazy();
  }

  else
  {

    sub_100011BE0("analytics_send_stash_presence", @"CA fwk missing, not sending event", v8, v9, v10, v11, v12, v13);
  }
}

xpc_object_t sub_1000102A8(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "present_for_minutes_while_unlocked", **(a1 + 32));
  xpc_dictionary_set_uint64(v2, "present_for_minutes_while_locked", *(*(a1 + 32) + 8));
  xpc_dictionary_set_uint64(v2, "automatic_su_enabled", *(*(a1 + 32) + 16));
  xpc_dictionary_set_uint64(v2, "analytics_failure", *(*(a1 + 32) + 20));
  return v2;
}

uint64_t sub_10001033C(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v96 = -1;
  v97 = -1;
  system = aks_get_system();
  if (system == -536870160)
  {
    if (a7)
    {
      sub_100011BE0("loadKeybagForUserSession", @"From EARLYSTART skip check switch between users", v14, v15, v16, v17, v18, v19);
    }

    else if (sub_10000C728() == a2)
    {
      sub_100011BE0("loadKeybagForUserSession", @"LOADING FOREGROUND USER, SKIP loading Keybag and head to Unlock", v31, v32, v33, v34, v35, v36);
      v21 = 0;
      v20 = 3758097136;
      goto LABEL_4;
    }

    v37 = sub_100003F3C(a2);
    if (!v37)
    {
      sub_100011BE0("loadKeybagForUserSession", @"no user bag found for UID %d", v38, v39, v40, v41, v42, v43, a2);
      v20 = 4294967288;
      goto LABEL_42;
    }

    v21 = v37;
    Value = CFDictionaryGetValue(v37, @"KeyBagKeys");
    if (Value)
    {
      v51 = Value;
      CFDataGetBytePtr(Value);
      CFDataGetLength(v51);
      bag = aks_load_bag();
      if (bag)
      {
        v20 = bag;
        sub_100011BE0("loadKeybagForUserSession", @"failed to load bag for user %d: 0x%x", v53, v54, v55, v56, v57, v58, a2, bag);
      }

      else
      {
        v74 = aks_set_system();
        if (v74)
        {
          v20 = v74;
          sub_100011BE0("loadKeybagForUserSession", @"failed to set bag handle %d as session bag for UID %d: 0x%x", v75, v76, v77, v78, v79, v80, v96, a2, v74);
        }

        else
        {
          if (a2 != 502)
          {
            sub_100011BE0("loadKeybagForUserSession", @"seting APFSVolumeID For KeyBag", v75, v76, v77, v78, v79, v80);
            sub_100010754(v96, a2, a1, 0);
          }

          v87 = aks_get_system();
          v20 = v87;
          if (!v87)
          {
            goto LABEL_4;
          }

          sub_100011BE0("loadKeybagForUserSession", @"loaded bag handle %ld as session bag for %d, but got no session handle back: 0x%x", v88, v89, v90, v91, v92, v93, v96, a2, v87);
        }
      }

      v20 = sub_10000C7A0(v20);
    }

    else
    {
      sub_100011BE0("loadKeybagForUserSession", @"no keybag in user bag plist", v45, v46, v47, v48, v49, v50);
      v20 = 4294966296;
    }

LABEL_41:
    CFRelease(v21);
    goto LABEL_42;
  }

  v20 = system;
  if (system)
  {
    v20 = sub_10000C7A0(system);
    goto LABEL_42;
  }

  v21 = 0;
LABEL_4:
  if (a3)
  {
    v22 = [MKBDeviceLockModelEducationalMode sharedLockModelWithUID:a2];
    [v22 notePasscodeEntryBegan];
    v23 = aks_unlock_device();
    if (v23)
    {
      v30 = v23;
      sub_100011BE0("loadKeybagForUserSession", @"failed to unlock session bag handle %ld: 0x%x", v24, v25, v26, v27, v28, v29, v97, v23);
      v20 = sub_10000C7A0(v30);
      [v22 notePasscodeUnlockFailed];
      if ([v22 isWipePending])
      {
        v20 = 4294967281;
      }

      else if (([v22 isTemporarilyBlocked] & 1) != 0 || objc_msgSend(v22, "isPermanentlyBlocked"))
      {
        v20 = 4294967282;
      }
    }

    else
    {
      [v22 notePasscodeUnlockSucceeded];
      if (a5)
      {
        sub_100011BE0("loadKeybagForUserSession", @"TRYING TO UPDATE GRACE PERIOD FOR USER:%d with %d secs", v59, v60, v61, v62, v63, v64, a2, a6);
        v65 = sub_10000C688();
        valuePtr = a6;
        v66 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
        if (v66)
        {
          v67 = v66;
          CFDictionarySetValue(v65, kAKSConfigGracePeriod, v66);
          CFRelease(v67);
        }

        v20 = aks_set_configuration();
        if (v65)
        {
          CFRelease(v65);
        }

        if (v20)
        {
          sub_100011BE0("loadKeybagForUserSession", @"FAILED TO AKS update Graceperiod of %d secs FOR USER:%d with error:%d", v68, v69, v70, v71, v72, v73, a6, a2, v20);
        }

        else
        {
          sub_100011BE0("loadKeybagForUserSession", @"SUCCESSFUL AKS update of Graceperiod FOR USER:%d with %d secs", v68, v69, v70, v71, v72, v73, a2, a6);
          v20 = sub_10001C00C(v97, a2, 0, 0);
          if (v20)
          {
            sub_100011BE0("loadKeybagForUserSession", @"FAILED to save Keybag FOR USER:%d with Graceperiod of %d secs", v81, v82, v83, v84, v85, v86, a2, a6);
          }

          else
          {
            sub_100011BE0("loadKeybagForUserSession", @"SUCCESSFUL  saving of Keybag FOR USER:%d with Graceperiod of %d secs", v81, v82, v83, v84, v85, v86, a2, a6);
          }
        }
      }

      else
      {
        v20 = 0;
      }
    }
  }

  if (v21)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (v96 != -1)
  {
    aks_unload_bag();
  }

  return v20;
}

void sub_100010754(uint64_t a1, uint64_t a2, const __CFDictionary *a3, int a4)
{
  bzero(v32, 0x3FBuLL);
  qmemcpy(v31, "/dev/", sizeof(v31));
  if (!a3)
  {
    v28 = @"PASSED in NULL Session";
LABEL_12:

    sub_100011BE0("setAPFSVolumeIDForKeyBag", v28, v8, v9, v10, v11, v12, v13);
    return;
  }

  memset(v33, 0, sizeof(v33));
  sub_100011BE0("setAPFSVolumeIDForKeyBag", @"Passed in session is %@", v8, v9, v10, v11, v12, v13, a3);
  if (!CFDictionaryContainsKey(a3, kMKBUserSessionVolumeDeviceNodeKey))
  {
    v28 = @"NO device node key to map.., returning";
    goto LABEL_12;
  }

  sub_10000C54C(a3, kMKBUserSessionVolumeDeviceNodeKey, v33, 256);
  if (LODWORD(v33[0]) == 1802725732)
  {
    __strlcat_chk();
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    sub_1000046D8(a1, v31, 0, 0, 0, 0);
  }

LABEL_6:
  if (CFDictionaryContainsKey(a3, kMKBUserSessionVolumeUUIDKey))
  {
    v20 = sub_10000C508(a3, kMKBUserSessionVolumeUUIDKey);
    if (!v20)
    {
      return;
    }

    memset(uu, 0, sizeof(uu));
    sub_100011BE0("setAPFSVolumeIDForKeyBag", @"Updating VolumeUUID %@", v21, v22, v23, v24, v25, v26, v20);
    bzero(in, 0x400uLL);
    sub_10000C54C(a3, kMKBUserSessionVolumeUUIDKey, in, 1024);
    if (!uuid_parse(in, uu))
    {
      sub_100011BE0("setAPFSVolumeIDForKeyBag", @"uuid_parse SUCCESS", v14, v15, v16, v17, v18, v19);
      sub_100004868(a1, a2, v31, uu, 0, 0);
      return;
    }

    v27 = @"uuid_parse failed";
  }

  else
  {
    v27 = @"No VolumeUUID key present in the session";
  }

  sub_100011BE0("setAPFSVolumeIDForKeyBag", v27, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_100010A10(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6)
{
  v58 = -1;
  v10 = sub_100003F3C(a2);
  if (v10)
  {
    CFRelease(v10);
    return 0;
  }

  else
  {
    bag = aks_create_bag();
    if (bag)
    {
      v19 = bag;
      sub_100011BE0("createKeybagForUserSession", @"Failed to create bag with aks error:0x%x", v13, v14, v15, v16, v17, v18, bag);
      v11 = sub_10000C7A0(v19);
    }

    else
    {
      sub_100011BE0("createKeybagForUserSession", @"Created keybag for uid:%d", v13, v14, v15, v16, v17, v18, a2);
      if (a5 >= 1)
      {
        sub_100011BE0("createKeybagForUserSession", @"TRYING TO SET GRACE PERIOD FOR USER with %d secs", v20, v21, v22, v23, v24, v25, a5);
        v26 = sub_10000C688();
        valuePtr = a5;
        v27 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
        if (v27)
        {
          v28 = v27;
          CFDictionarySetValue(v26, kAKSConfigGracePeriod, v27);
          CFRelease(v28);
        }

        v35 = aks_set_configuration();
        if (v26)
        {
          CFRelease(v26);
        }

        if (v35)
        {
          sub_100011BE0("createKeybagForUserSession", @"FAILED TO SET  Graceperiod of %d secs with error:%d", v29, v30, v31, v32, v33, v34, a5, v35);
        }

        else
        {
          sub_100011BE0("createKeybagForUserSession", @"SUCCESSFUL Setting of Graceperiod of %d secs", v29, v30, v31, v32, v33, v34, a5);
        }
      }

      sub_100011BE0("createKeybagForUserSession", @"Saving keybag for uid:%d", v20, v21, v22, v23, v24, v25, a2);
      v11 = sub_10001C00C(v58, a2, a6, 0);
      if (!v11)
      {
        sub_100011BE0("createKeybagForUserSession", @"Setting it to  System for user:%d", v36, v37, v38, v39, v40, v41, a2);
        v43 = aks_set_system_with_passcode();
        if (v43)
        {
          v50 = v43;
          sub_100011BE0("createKeybagForUserSession", @"Failed to setsystem for the bag with aks error:0x%x", v44, v45, v46, v47, v48, v49, v43);
          v11 = sub_10000C7A0(v50);
          if (sub_10001C00C(0xFFFFFFFFLL, a2, 0, 0))
          {
            sub_100011BE0("createKeybagForUserSession", @"Failed to remove user bag for session %d: %d", v51, v52, v53, v54, v55, v56, a2, a2);
          }
        }

        else
        {
          if (a2 != 502)
          {
            sub_100011BE0("createKeybagForUserSession", @"seting APFSVolumeID For KeyBag ", v44, v45, v46, v47, v48, v49);
            sub_100010754(v58, a2, a1, 1);
          }

          v11 = 0;
        }
      }
    }

    if (v58 != -1)
    {
      aks_unload_bag();
    }
  }

  return v11;
}

uint64_t sub_100010CBC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100011BE0("setupKeybagForPersona", @"CAlling KBMapDeviceBag with volume %s", a3, a4, a5, a6, a7, a8, a2);
  v10 = sub_100004AE4(a2, 1, a3);
  v17 = v10;
  if (v10)
  {
    sub_100011BE0("setupKeybagForPersona", @"KBMapDeviceBag failed with error %d", v11, v12, v13, v14, v15, v16, v10);
  }

  else
  {
    sub_100011BE0("setupKeybagForPersona", @"KBMapDeviceBag Success", v11, v12, v13, v14, v15, v16, v19);
  }

  return v17;
}

uint64_t sub_100010D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100011BE0("unloadUserSessionUserBag", @"Unloading UserKeyBag for User:%d", a3, a4, a5, a6, a7, a8, a1);
  system = aks_get_system();
  if (system)
  {
    sub_100011BE0("unloadUserSessionUserBag", @"no Userbag found for UID %d with error:0x%x", v10, v11, v12, v13, v14, v15, a1, system);
    return 0;
  }

  else
  {
    sub_100011BE0("unloadUserSessionUserBag", @"Found loaded SyncBag and unloading the bag", v10, v11, v12, v13, v14, v15);
    v17 = aks_unload_bag();
    v16 = v17;
    if (v17)
    {
      sub_100011BE0("unloadUserSessionUserBag", @"failed to unload SyncBag for UID:%d with error:0x%x", v18, v19, v20, v21, v22, v23, a1, v17);
    }

    else
    {
      sub_100011BE0("unloadUserSessionUserBag", @"Unloaded of SyncBag for UID:%d , Successful", v18, v19, v20, v21, v22, v23, a1);
    }
  }

  return v16;
}

uint64_t sub_100010E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v65 = -1;
  v66 = -1;
  v64 = 0;
  v63 = 0;
  sub_100011BE0("createSyncBagForSyncBubble", @"Creating a new SyncBag for User %d", a3, a4, a5, a6, a7, a8, a2);
  system = aks_get_system();
  if (system)
  {
    v16 = system;
    sub_100011BE0("createSyncBagForSyncBubble", @"Unable to find user session_handle for user %d with error:0x%x", v10, v11, v12, v13, v14, v15, a2, system);
LABEL_7:
    v31 = sub_10000C7A0(v16);
    goto LABEL_8;
  }

  sync_bag = aks_create_sync_bag();
  if (sync_bag)
  {
    v16 = sync_bag;
    sub_100011BE0("createSyncBagForSyncBubble", @"failed to create SyncBag for uid %d: with error: 0x%x", v18, v19, v20, v21, v22, v23, a2, sync_bag);
    goto LABEL_7;
  }

  sub_100011BE0("createSyncBagForSyncBubble", @"Saving content in usersyncbag for User %d", v18, v19, v20, v21, v22, v23, a2);
  v24 = aks_save_bag();
  if (v24)
  {
    v16 = v24;
    sub_100011BE0("createSyncBagForSyncBubble", @"failed to retrive SyncBag content from keybag for uid %d: with error: 0x%x", v25, v26, v27, v28, v29, v30, a2, v24);
    goto LABEL_7;
  }

  v33 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v64, v63, kCFAllocatorDefault);
  if (!v33)
  {
    sub_100011BE0("createSyncBagForSyncBubble", @"failed to retrive SyncBag content from keybag for uid %d: with error: 0x%x", v34, v35, v36, v37, v38, v39, a2, 0);
    v16 = 5;
    goto LABEL_7;
  }

  v40 = v33;
  memset(&v62, 0, sizeof(v62));
  if (stat("/private/var//keybags/usersyncbag.kb", &v62) || (sub_100011BE0("createSyncBagForSyncBubble", @"Existing SyncBag needs update", v41, v42, v43, v44, v45, v46), (v47 = sub_100001778("/private/var//keybags/usersyncbag.kb")) == 0))
  {
    v47 = sub_10000C688();
  }

  v48 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", a2);
  if (CFDictionaryContainsKey(v47, v48))
  {
    CFDictionaryReplaceValue(v47, v48, v40);
  }

  else
  {
    CFDictionaryAddValue(v47, v48, v40);
  }

  if (sub_100001D1C(v47, "/private/var//keybags/usersyncbag.kb"))
  {
    v55 = @"Failed to save UserSyncBag";
  }

  else
  {
    v55 = @"Saved UserSyncBag";
  }

  sub_100011BE0("createSyncBagForSyncBubble", v55, v49, v50, v51, v52, v53, v54);
  sub_100011BE0("createSyncBagForSyncBubble", @"SyncBag Creation completed", v56, v57, v58, v59, v60, v61);
  CFRelease(v40);
  if (v48)
  {
    CFRelease(v48);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  v31 = 0;
LABEL_8:
  if (v66 != -1)
  {
    aks_unload_bag();
  }

  return v31;
}

uint64_t sub_1000110AC(__CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100011BE0("loadSyncBagForSyncBubble", @"Loading SyncBag for the User:%d", a3, a4, a5, a6, a7, a8, a2);
  v10 = sub_10001033C(a1, a2, 0, 0, 0, 0, 0);
  if (!v10)
  {
    sub_100011BE0("loadSyncBagForSyncBubble", @"LOAD SyncBag for uid %d", v11, v12, v13, v14, v15, v16, a2);
    system = aks_get_system();
    if (system != -536870160)
    {
      v25 = system;
      if (system)
      {
        sub_100011BE0("loadSyncBagForSyncBubble", @"error with user session_handle for user %d with error:0x%x", v19, v20, v21, v22, v23, v24, a2, system);
        goto LABEL_22;
      }

      sub_100011BE0("loadSyncBagForSyncBubble", @"KeyBag for uid %d loaded and ready for syncbag", v19, v20, v21, v22, v23, v24, a2);
    }

    v26 = sub_100001778("/private/var//keybags/usersyncbag.kb");
    if (!v26)
    {
      sub_100011BE0("loadSyncBagForSyncBubble", @"Failed to load userSyncBagDict file", v27, v28, v29, v30, v31, v32);
      v25 = 5;
      return sub_10000C7A0(v25);
    }

    v33 = v26;
    v34 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", a2);
    if (CFDictionaryContainsKey(v33, v34))
    {
      Value = CFDictionaryGetValue(v33, v34);
      if (Value)
      {
        v48 = Value;
        sub_100011BE0("loadSyncBagForSyncBubble", @"SyncBagContent is being loaded to keybag %d", v42, v43, v44, v45, v46, v47, a2);
        CFDataGetBytePtr(v48);
        CFDataGetLength(v48);
        v49 = aks_unlock_with_sync_bag();
        v25 = v49;
        if (v49)
        {
          sub_100011BE0("loadSyncBagForSyncBubble", @"Failed to load SyncBag data with error 0x%x, clearing syncBag for user:%d", v50, v51, v52, v53, v54, v55, v49, a2);
          if (sub_100011394(a1, a2, 0, v56, v57, v58, v59, v60))
          {
            sub_100011BE0("loadSyncBagForSyncBubble", @"Failed to clear SyncBag content for User:%d", v50, v51, v52, v53, v54, v55, a2);
            goto LABEL_20;
          }

          v63 = a2;
          v61 = @"Cleared SyncBag content for User:%d";
        }

        else
        {
          v61 = @"SyncBag loaded and unlocked";
        }

        sub_100011BE0("loadSyncBagForSyncBubble", v61, v50, v51, v52, v53, v54, v55, v63);
LABEL_20:
        CFRelease(v33);
        if (v34)
        {
          CFRelease(v34);
        }

LABEL_22:
        if (!v25)
        {
          return 0;
        }

        return sub_10000C7A0(v25);
      }

      sub_100011BE0("loadSyncBagForSyncBubble", @"No SyncBagContent in userSyncBagDict for User %d", v42, v43, v44, v45, v46, v47, a2);
    }

    else
    {
      sub_100011BE0("loadSyncBagForSyncBubble", @"No syncbag uidkey for the user:%d in userSyncBagDict", v35, v36, v37, v38, v39, v40, a2);
      CFDictionarySetValue(a1, @"MKBUserSessionHasSyncBag", kCFBooleanFalse);
    }

    v25 = 5;
    goto LABEL_20;
  }

  v17 = v10;
  sub_100011BE0("loadSyncBagForSyncBubble", @"Failed to load User keybag for user:%d", v11, v12, v13, v14, v15, v16, a2);
  return v17;
}

uint64_t sub_100011394(__CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v10 = sub_100011704(a1, a2, a3, a4, a5, a6, a7, a8);
    if (!v10)
    {
      v11 = @"Unload of SyncBag successful";
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 5;
  }

  v65 = v10;
  v11 = @"Unload of SyncBag failed with error:%d";
LABEL_6:
  sub_100011BE0("removeSyncBagForSyncBubble", v11, a3, a4, a5, a6, a7, a8, v65);
  v12 = sub_100001778("/private/var//keybags/usersyncbag.kb");
  if (v12)
  {
    v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", a2);
    if (!CFDictionaryContainsKey(v12, v13))
    {
      sub_100011BE0("removeSyncBagForSyncBubble", @"No syncbag uidkey for the user:%d in userSyncBagDict, removing hasSyncKey", v14, v15, v16, v17, v18, v19, a2);
      CFDictionarySetValue(a1, @"MKBUserSessionHasSyncBag", kCFBooleanFalse);
LABEL_14:
      CFRelease(v12);
      if (v13)
      {
        CFRelease(v13);
      }

      return sub_10000C7A0(5);
    }

    CFDictionaryRemoveValue(v12, v13);
    sub_100011BE0("removeSyncBagForSyncBubble", @"Removed SyncBag coontent from UserSyncBag for user :%d", v20, v21, v22, v23, v24, v25, a2);
    if (CFDictionaryGetCount(v12))
    {
      if (sub_100001D1C(v12, "/private/var//keybags/usersyncbag.kb"))
      {
        sub_100011BE0("removeSyncBagForSyncBubble", @"Failed to save Updated UserSyncBag", v32, v33, v34, v35, v36, v37);
        goto LABEL_14;
      }

      sub_100011BE0("removeSyncBagForSyncBubble", @"Saved UserSyncBag and removal of user:%d syncbag completed", v32, v33, v34, v35, v36, v37, a2);
    }

    else
    {
      sub_100011BE0("removeSyncBagForSyncBubble", @"NO SyncBag for any Users, removing file..", v26, v27, v28, v29, v30, v31);
      unlink("/private/var//keybags/usersyncbag.kb");
      sub_100011BE0("removeSyncBagForSyncBubble", @"Invalidate all SyncBags", v52, v53, v54, v55, v56, v57);
      v58 = aks_invalidate_sync_bags();
      if (v58)
      {
        sub_100011BE0("removeSyncBagForSyncBubble", @"Failed to invalidate all syncbags with error:0x%x", v59, v60, v61, v62, v63, v64, v58);
      }

      else
      {
        sub_100011BE0("removeSyncBagForSyncBubble", @"XXXXXXXXXXXXXXXX INVALIDATED ALL SYNCBAGS XXXXXXXXXXXXXXXX", v59, v60, v61, v62, v63, v64, v66);
      }
    }
  }

  else
  {
    memset(&v67, 0, sizeof(v67));
    v38 = stat("/private/var//keybags/usersyncbag.kb", &v67);
    sub_100011BE0("removeSyncBagForSyncBubble", @"Failed to load userSyncBagDict file", v39, v40, v41, v42, v43, v44);
    if (!v38)
    {
      return sub_10000C7A0(5);
    }

    v13 = 0;
  }

  sub_100011BE0("removeSyncBagForSyncBubble", @"RESET kMKBUserSessionHasSyncBagKey", v45, v46, v47, v48, v49, v50);
  CFDictionarySetValue(a1, @"MKBUserSessionHasSyncBag", kCFBooleanFalse);
  if (!v12)
  {
    if (!v13)
    {
      return 0;
    }

    goto LABEL_23;
  }

  CFRelease(v12);
  if (v13)
  {
LABEL_23:
    CFRelease(v13);
  }

  return 0;
}

uint64_t sub_10001162C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100001778("/private/var//keybags/usersyncbag.kb");
  if (v3)
  {
    v10 = v3;
    v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", a2);
    v12 = CFDictionaryContainsKey(v10, v11);
    if (v12)
    {
      v19 = @"Bag exists in UserSyncBag for user :%d";
    }

    else
    {
      v19 = @"No syncbag uidkey for the user:%d in userSyncBagDict, removing hasSyncKey";
    }

    if (v12)
    {
      v20 = 0;
    }

    else
    {
      v20 = 5;
    }

    sub_100011BE0("verifySyncBagForSyncBubbleExists", v19, v13, v14, v15, v16, v17, v18, a2);
    CFRelease(v10);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  else
  {
    sub_100011BE0("verifySyncBagForSyncBubbleExists", @"Failed to load userSyncBagDict file", v4, v5, v6, v7, v8, v9);
    return 5;
  }

  return v20;
}

uint64_t sub_100011704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100011BE0("unloadSyncBagForSyncBubble", @"Unloading UserKeyBag for User:%d", a3, a4, a5, a6, a7, a8, a2);
  system = aks_get_system();
  if (system)
  {
    sub_100011BE0("unloadSyncBagForSyncBubble", @"no SyncBag found for UID %d with error:0x%x", v10, v11, v12, v13, v14, v15, a2, system);
    return 0;
  }

  sub_100011BE0("unloadSyncBagForSyncBubble", @"Found loaded SyncBag and unloading the bag", v10, v11, v12, v13, v14, v15);
  v17 = aks_unload_bag();
  if (!v17)
  {
    sub_100011BE0("unloadSyncBagForSyncBubble", @"Unloaded of SyncBag for UID:%d , Successful", v18, v19, v20, v21, v22, v23, a2);
    return 0;
  }

  v24 = v17;
  sub_100011BE0("unloadSyncBagForSyncBubble", @"failed to unload SyncBag for UID:%d with error:0x%x", v18, v19, v20, v21, v22, v23, a2, v17);
  return sub_10000C7A0(v24);
}

uint64_t sub_1000117D8(uint64_t a1, const __CFString *a2, const __CFString *a3, uint64_t a4, uint64_t a5, int a6)
{
  memset(uu, 0, sizeof(uu));
  bzero(buffer, 0x400uLL);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  *in = 0u;
  v35 = 0u;
  if (!CFStringGetCString(a2, buffer, 1024, 0x8000100u))
  {
    v15 = @"Failed to get volume path";
    goto LABEL_10;
  }

  if (!CFStringGetCString(a3, in, 256, 0x8000100u))
  {
    v15 = @"Failed to get cstring from uuid string";
    goto LABEL_10;
  }

  if (uuid_parse(in, uu))
  {
    v15 = @"failed to parse unique string to uuid_t";
    goto LABEL_10;
  }

  if (a6)
  {
    v16 = aks_keybag_persona_create_with_flags();
    if (v16)
    {
LABEL_9:
      v32 = v16;
      v15 = @"Failed to create persona key with error:0x%x";
      goto LABEL_10;
    }
  }

  else
  {
    v16 = aks_keybag_persona_create();
    if (v16)
    {
      goto LABEL_9;
    }
  }

  sub_100011BE0("createPersonaKeyForUser", @"Created persona key in the keybag", v9, v10, v11, v12, v13, v14);
  v24 = sub_100010CBC(v18, buffer, uu, v19, v20, v21, v22, v23);
  if (!v24)
  {
    sub_100011BE0("createPersonaKeyForUser", @" Successful Setup of keybag with persona key", v25, v26, v27, v28, v29, v30);
    return 0;
  }

  sub_100011BE0("createPersonaKeyForUser", @"failed to Setup keybag with persona key:%d", v25, v26, v27, v28, v29, v30, v24);
  v31 = aks_keybag_persona_delete();
  if (v31)
  {
    sub_100011BE0("createPersonaKeyForUser", @"Failed to delete persona key with error:0x%x", v9, v10, v11, v12, v13, v14, v31);
    return 22;
  }

  v15 = @"Successful deleted persona key";
LABEL_10:
  sub_100011BE0("createPersonaKeyForUser", v15, v9, v10, v11, v12, v13, v14, v32);
  return 22;
}

uint64_t sub_1000119DC(int a1, CFStringRef theString, const __CFString *a3)
{
  memset(uu, 0, sizeof(uu));
  *buffer = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  if (!CFStringGetCString(theString, buffer, 256, 0x8000100u))
  {
    v10 = @"Failed to get cstring from uuid string";
    goto LABEL_5;
  }

  if (uuid_parse(buffer, uu))
  {
    v10 = @"failed to parse unique string to uuid_t";
LABEL_5:
    sub_100011BE0("deletePersonaKeyForUser", v10, v4, v5, v6, v7, v8, v9);
    return 22;
  }

  v13 = aks_keybag_persona_delete();
  v11 = v13;
  if (!a3 || v13)
  {
    if (v13)
    {
      sub_100011BE0("deletePersonaKeyForUser", @"persona key delete failed with 0x%x", v14, v15, v16, v17, v18, v19, v13);
    }
  }

  else
  {
    memset(v34, 0, sizeof(v34));
    sub_100011BE0("deletePersonaKeyForUser", @"Non Null VolumeID, parsing the uuid", v14, v15, v16, v17, v18, v19);
    bzero(in, 0x400uLL);
    if (!CFStringGetCString(a3, in, 1024, 0x8000100u))
    {
      v26 = @"failed to convert to CString";
      goto LABEL_16;
    }

    if (uuid_parse(in, v34))
    {
      v26 = @"volume uuid_parse failed";
LABEL_16:
      sub_100011BE0("deletePersonaKeyForUser", v26, v20, v21, v22, v23, v24, v25);
      return 0;
    }

    sub_100011BE0("deletePersonaKeyForUser", @"uuid_parse SUCCESS, Unmaping the Persona Volume", v20, v21, v22, v23, v24, v25);
    v27 = aks_set_keybag_for_volume();
    v11 = v27;
    if (v27)
    {
      sub_100011BE0("deletePersonaKeyForUser", @"persona volume unmap failed with 0x%x", v28, v29, v30, v31, v32, v33, v27);
    }
  }

  return v11;
}

void sub_100011BE0(void *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (!a1)
  {
    a1 = &unk_10002CC4D;
  }

  sub_100011C1C(a1, a2, va);
}

void sub_100011C1C(uint64_t a1, CFStringRef format, va_list arguments)
{
  if (dword_10003D298)
  {
    if (&_MOLogWriteV)
    {
      if (qword_10003D370)
      {
        MOLogWriteV();
      }
    }
  }

  else
  {
    v3 = CFStringCreateWithFormatAndArguments(0, 0, format, arguments);
    if (v3)
    {
      v4 = v3;
      if (CFStringGetCString(v3, buffer, 1024, 0x8000100u))
      {
        v5 = strlen(buffer);
        if (v5)
        {
          v6 = v5;
          if (v5 <= 0x3FF)
          {
            buffer[v5] = 10;
            v6 = v5 + 1;
          }

          fprintf(__stdoutp, "MKB_INIT: %s", buffer);
          if (dword_10003D1F0 != -1)
          {
            sub_100001D4C(dword_10003D1F0, buffer, v6);
          }
        }
      }

      CFRelease(v4);
    }
  }
}

void sub_100011D50(const char *a1)
{
  v18 = 0;
  time(&v18);
  v2 = localtime(&v18);
  v3 = asctime(v2);
  snprintf(__str, 0x50uLL, "%s-%s", a1, v3);
  __str[strlen(__str) - 1] = 0;
  sub_100011BE0("fatality", @"FATAL KEYBAG ERROR: %s", v4, v5, v6, v7, v8, v9, a1);
  sub_100004490("keybagd", __str);
  sub_100004490("auto-boot", "false");
  sub_100011BE0("fatality", @"Rebooting...", v10, v11, v12, v13, v14, v15);
  v16 = fopen("/dev/console", "a");
  if (v16)
  {
    v17 = v16;
    fprintf(v16, "FATAL KEYBAG ERROR: %s\n", a1);
    fwrite("REBOOTING INTO RECOVERY MODE.\n", 0x1EuLL, 1uLL, v17);
    fclose(v17);
  }

  reboot(0);
  exit(71);
}

BOOL sub_100011E58()
{
  __len = 1023;
  bzero(__big, 0x400uLL);
  return !sysctlbyname("kern.bootargs", __big, &__len, 0, 0) && strnstr(__big, "keybag_initlog", __len) != 0;
}

uint64_t sub_100011F00()
{
  v0 = sub_100011BDC();
  v1 = 4294967293;
  if ((sub_100004190() & 1) == 0)
  {
    current_persona_proximate_info = voucher_get_current_persona_proximate_info();
    v3 = 0;
    if (current_persona_proximate_info)
    {
      v3 = -1;
    }

    if (v3 != v0 || v0 == -1)
    {
      return 0;
    }

    else
    {
      return 4294967293;
    }
  }

  return v1;
}

sqlite3 *sub_100011F94(uint64_t a1)
{
  result = sub_10000BAE4("/private/var//keybags/backup/backup_keys_cache.sql3", 0, 0);
  if (result)
  {
    v3 = result;
    v4 = sub_10000BEA8(result, *(a1 + 32));
    if (v4)
    {
      v5 = v4;
      memset(out, 0, 37);
      uuid_unparse(*(a1 + 32), out);
      sub_100011BE0("clear_volume_backup_keys_block_invoke", @"Failed to delete cached keys for volume %s (err=%d)", v6, v7, v8, v9, v10, v11, out, v5);
    }

    return sub_1000028E4(v3);
  }

  return result;
}

uint64_t sub_100012060()
{
  v0 = aks_clear_backup_bag();
  if (v0)
  {
    sub_100011BE0("unregister_backup_bag", @"Can't unregister OTA Backup bag with AppleKeyStore: %x.", v1, v2, v3, v4, v5, v6, v0);
    return 0xFFFFFFFFLL;
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100011F94;
    block[3] = &unk_1000352F8;
    block[4] = &unk_10003D390;
    dispatch_sync(qword_10003D388, block);
    return 0;
  }
}

void sub_100012108()
{
  if (aks_se_support_in_rm_is_set())
  {
    v6 = @"cant fetch state";
LABEL_3:
    sub_100011BE0("seshat_sep_rm_init", v6, v0, v1, v2, v3, v4, v5);
    return;
  }

  v7 = sub_10001D880();
  if (v7)
  {
    v15 = sub_10001D978(v7, v8, v9, v10, v11, v12, v13, v14);
    v22 = v15;
    if (v15)
    {
      v15 = aks_set_jcop_supports_updated_kud_policy();
    }

    sub_100011BE0("seshat_sep_rm_init", @"JCOP kud support: %d, %d", v16, v17, v18, v19, v20, v21, v22, v15);
    v23 = sub_10002212C();
    sub_100011BE0("seshat_sep_rm_init", @"SERM support: %d", v24, v25, v26, v27, v28, v29, v23);
    if (aks_se_support_in_rm())
    {
      v6 = @"failed to indicate se rm support (expected on devices where feature is disabled)";
      goto LABEL_3;
    }
  }
}

void sub_1000121C4()
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (AKSGetStashStats())
  {
    HIDWORD(v11) = 1;
  }

  else
  {
    v10 = sub_10000C9C4(0);
    v9 = sub_10000C9C4(0);
  }

  v0 = sub_10000CD94();
  v8 = 0;
  if (v0)
  {
    v8 = 2;
  }

  LODWORD(v11) = v8;
  sub_1000101C8(&v9, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t start(int a1, uint64_t a2)
{
  v4 = setiopolicy_np(9, 0, 1);
  if (v4)
  {
    sub_100011BE0("main", @"Error setting io policy: %d", v5, v6, v7, v8, v9, v10, v4);
  }

  if (a1 == 2 && !strcmp(*(a2 + 8), "--init"))
  {
    if (sub_10001C744(":/product", @"boot-ios-diagnostics") == 1)
    {
      v39 = __stdoutp;
      v40 = "****** DIAGNOSTICS MODE ENABLED, SKIP INIT ****\n";
      v41 = 48;
    }

    else if (os_variant_uses_ephemeral_storage())
    {
      v39 = __stdoutp;
      v40 = "****** DEVICE HAS EPHEMERAL DATA VOLUME, SKIP INIT ****\n";
      v41 = 56;
    }

    else
    {
      if (sub_100011E58())
      {
        dword_10003D1F0 = open("/var/logs/keybagd_init.log", 522, 448);
        if (dword_10003D1F0 == -1)
        {
          fwrite("****** FAILED TO OPEN LOGFILE ****\n", 0x23uLL, 1uLL, __stdoutp);
        }
      }

      sub_100005388(sub_100011BE0);
      sub_100005394(sub_100011C1C);
      fwrite("****** IN MKB_INIT ****\n", 0x18uLL, 1uLL, __stdoutp);
      qword_10003D388 = dispatch_queue_create("com.apple.mobile.keybagd.db", 0);
      sub_100012798();
      sub_100012A48();
      if (dword_10003D1F0 != -1)
      {
        close(dword_10003D1F0);
      }

      v39 = __stdoutp;
      v40 = "****** DONE MKB_INIT ****\n";
      v41 = 26;
    }

    fwrite(v40, v41, 1uLL, v39);
    exit(0);
  }

  sub_100005388(sub_100011BE0);
  sub_100005394(sub_100011C1C);
  v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v12 = sub_10000C768();
  v13 = 0;
  v14 = 0;
  if (v12)
  {
    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v13 = v11;
  }

  qword_10003D2A0 = dispatch_queue_create("com.apple.mobile.keybagd.passcode", v13);
  qword_10003D388 = dispatch_queue_create("com.apple.mobile.keybagd.db", v14);
  qword_10003D2A8 = dispatch_queue_create("com.apple.mobile.keybagd.seshat", v11);
  if (!qword_10003D2A0 || !qword_10003D388)
  {
    sub_100011BE0("main", @"Can't create dispatch resources.", v15, v16, v17, v18, v19, v20);
    return 71;
  }

  if (sub_100019E20())
  {
    sub_100011BE0("main", @"Can't register for notifications with AppleKeyStore", v21, v22, v23, v24, v25, v26);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", global_queue, &stru_100035338);
  sub_10000A994();
  openlog("keybagd", 1, 24);
  v28 = getenv("__OSINSTALL_ENVIRONMENT");
  v29 = v28;
  if (!&_MOLogOpen || !&_MOLogEnableDiskLogging || v28)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 67109120;
    v43 = v29 == 0;
    v31 = "MOLog* unavailable, disabling MOLog*() based logging (enable: %d).";
    v32 = 8;
LABEL_21:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v31, buf, v32);
    goto LABEL_22;
  }

  qword_10003D370 = MOLogOpen();
  if (!qword_10003D370)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v31 = "MOLogOpen() failed, disabling MOLog*() based logging.";
    v32 = 2;
    goto LABEL_21;
  }

  MOLogEnableDiskLogging();
LABEL_22:
  sub_100005388(sub_100011BE0);
  sub_100005394(sub_100011C1C);
  dword_10003D298 = 1;
  if (sub_100004190())
  {
    sub_100011BE0("main", @"enhanced apfs mode", v33, v34, v35, v36, v37, v38);
  }

  dispatch_sync(qword_10003D2A8, &stru_1000357F8);
  dispatch_async(qword_10003D2A8, &stru_100035838);
  dispatch_async(qword_10003D2A8, &stru_100035878);
  xpc_activity_register("com.apple.mobile.keybagd.data-analytics", XPC_ACTIVITY_CHECK_IN, &stru_1000358B8);
  dispatch_async(qword_10003D2A0, &stru_100035958);
  xpc_activity_register("com.apple.mobile.keybagd.space_repetition", XPC_ACTIVITY_CHECK_IN, &stru_100035998);
  fsctl("/private/var/", 0x40104A60uLL, &unk_10003D390, 0);
  sub_100003A60();
  CFRunLoopRun();
  return 0;
}

uint64_t sub_100012798()
{
  v6 = sub_100003CD4();
  if (!v6)
  {
    if (aks_get_system() != -536870160)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  sub_100011BE0("load_devicebag", @"Found system keybag plist on filesystem.", v0, v1, v2, v3, v4, v5);
  v13 = sub_10000C40C(v6, @"KeyBagKeys");
  if (!v13)
  {
    sub_100011BE0("load_devicebag", @"No valid keybag data found in plist.", v7, v8, v9, v10, v11, v12);
  }

  Value = CFDictionaryGetValue(v6, @"KeybagxART");
  if (aks_get_system() == -536870160)
  {
    if (v13)
    {
      sub_100011BE0("load_devicebag", @"Try to load filesystem bag as handle 0.", v15, v16, v17, v18, v19, v20);
      if (Value)
      {
        v21 = sub_100004190();
        Length = CFDataGetLength(v13);
        if (v21)
        {
          sub_100011BE0("load_devicebag", @"xART based bag should have been loaded at startup, let's ignore it (eAPFS, len=%d)", v23, v24, v25, v26, v27, v28, Length);
          goto LABEL_18;
        }

        sub_100011BE0("load_devicebag", @"xART based bag should have been loaded at startup, let's try to load it anyway (NOT eAPFS, len=%d)", v23, v24, v25, v26, v27, v28, Length);
      }

      CFDataGetBytePtr(v13);
      CFDataGetLength(v13);
      bag = aks_load_bag();
      if (bag)
      {
        sub_100011BE0("load_devicebag", @"Uh Oh! Kernel doesn't like this keybag: 0x%08x.", v31, v32, v33, v34, v35, v36, bag);
        goto LABEL_18;
      }

      v37 = aks_set_system();
      aks_unload_bag();
      if (v37)
      {
        sub_100011BE0("load_devicebag", @"Uh Oh! Can't set system keybag:0x%08x.", v15, v16, v17, v18, v19, v20, v37);
        goto LABEL_18;
      }

      v29 = @"Handle 0 loaded.";
      goto LABEL_17;
    }

LABEL_10:
    v29 = @"No system keybag found on filesystem.";
LABEL_17:
    sub_100011BE0("load_devicebag", v29, v15, v16, v17, v18, v19, v20, v60);
  }

LABEL_18:
  v38 = sub_100004190();
  system = aks_get_system();
  if (v38)
  {
    if (system)
    {
      sub_100011BE0("load_devicebag", @"No system keybag loaded.", v40, v41, v42, v43, v44, v45);
      if (!v6)
      {
        goto LABEL_26;
      }

LABEL_25:
      CFRelease(v6);
      goto LABEL_26;
    }

    sub_100011BE0("load_devicebag", @"Update system keybag on disk after load.", v40, v41, v42, v43, v44, v45);
    sub_1000045B0(0, 0);
    if (v6)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (system)
    {
      sub_100011D50("failed to load system bag");
    }

    if (sub_100004AE4("/private/var/", 0, 0))
    {
      sub_100011D50("data volume mapping");
    }

    if (v6)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  sub_100011BE0("load_devicebag", @"Setup allow list:", v46, v47, v48, v49, v50, v51);
  v52 = aks_setupallowlist_fs();
  if (v52)
  {
    sub_100011BE0("load_devicebag", @"aks_setupallowlist_fs completed with %d", v53, v54, v55, v56, v57, v58, v52);
  }

  unlink("/private/var//keybags/backup/backup_keys_cache.db");
  return unlink("/private/var//keybags/backup/backup_keys_cache_old.db");
}

BOOL sub_100012A48()
{
  memset(&v1, 0, sizeof(v1));
  if (stat("/private/var//keybags/backup", &v1) < 0 && *__error() == 2)
  {
    mkdir("/private/var//keybags/backup", 0x1C0u);
  }

  return sub_10000C308("/private/var//keybags/backup", 0, 1);
}

void sub_100012AC4(id a1, void *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (!strcmp(string, "com.apple.mobile.keybagd.first_unlock"))
  {
    byte_10003D368 = 1;
    sub_100011F00();
    v12 = 0;
    v11 = 0;
    lock_state = aks_get_lock_state();
    if (lock_state)
    {
      sub_100011BE0("report_first_unlock", @"get_lock_state() -> 0x%x", v5, v6, v7, v8, v9, v10, lock_state);
    }

    else
    {
      LOBYTE(v11) = BYTE1(v12) & 0x20 | (v12 >> 3) & 0x40;
      sub_10000F018(&v11, v4, v5, v6, v7, v8, v9, v10);
    }

    dispatch_async(qword_10003D2A8, &stru_100035378);
  }
}

void sub_100012B80(int a1, char a2)
{
  xpc_transaction_begin();
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100012C0C;
  block[3] = &unk_100035398;
  v5 = a1;
  v6 = a2;
  dispatch_async(qword_10003D2A0, block);
}

void sub_100012C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 36))
  {
    v9 = "NO EFFACEABLE ROLL";
  }

  else
  {
    v9 = "EFFACEABLE ROLL";
  }

  sub_100011BE0("update_system_keybag_block_invoke", @"Updating Keybag handle %ld with %s", a3, a4, a5, a6, a7, a8, *(a1 + 32), v9);
  sub_1000045B0(*(a1 + 32), *(a1 + 36));

  xpc_transaction_end();
}

void sub_100012C88(int a1)
{
  if (a1 == 1)
  {
    v2 = sub_100011F00();
    sub_100012DD4(v2);
  }

  else if (!a1)
  {
    dispatch_async(qword_10003D2A8, &stru_1000353D8);
    unlink("/var/root/.mkb_seshat_health");
    v1 = 1;
    goto LABEL_6;
  }

  v1 = 2;
LABEL_6:
  dispatch_async(qword_10003D2A8, &stru_100035418);

  sub_100012FF4(1, v1);
}

void sub_100012D0C(id a1)
{
  *__str = 0;
  v19 = 0;
  v1 = sub_10000D664();
  snprintf(__str, 0x10uLL, "%u", v1 + 1);
  if (sub_100004490("seshat-count", __str))
  {
    v8 = @"failed to update nvram";
  }

  else
  {
    v16 = __str;
    v8 = @"success setting to '%s'";
  }

  sub_100011BE0("handle_recovery_completion_block_invoke", v8, v2, v3, v4, v5, v6, v7, v16);
  v17 = 1;
  sub_10000E8D0(&v17, v9, v10, v11, v12, v13, v14, v15);
}

void sub_100012DD4(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = -1;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2000000000;
  v13[3] = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v12[3] = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2000000000;
  v11[3] = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v10 = 0;
  lock_state = aks_get_lock_state();
  if (lock_state)
  {
    v8 = lock_state;
    sub_100011BE0("seshat_reset_count_after_wc_recovery", @"get_lock_state() -> 0x%x", v2, v3, v4, v5, v6, v7, lock_state);
    *(v15 + 6) = v8;
  }

  else
  {
    *(v15 + 6) = 0;
  }

  if (*(v15 + 6))
  {
    sub_100011BE0("seshat_reset_count_after_wc_recovery", @"failed to reset SEshat: %x", v2, v3, v4, v5, v6, v7, *(v15 + 6));
  }

  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v14, 8);
}

void sub_100012FC4(id a1)
{
  v1 = sub_100011F00();

  sub_10001DA48(0, v1);
}

void sub_100012FF4(int a1, char a2)
{
  v12 = 1;
  v11 = 0;
  sub_100011F00();
  if (!aks_get_lock_state())
  {
    LOWORD(v11) = ((4 * v12) & 0x100 | (((v12 >> 5) & 1) << 9) & 0xEFFF | (v12 >> 3) & 0x400 | (v12 >> 1) & 0x800 | (((v12 >> 9) & 1) << 12) | ((16 * (a2 & 3)) | (a1 << 6)) | 1) ^ 0x100;
    if (a1 == 1)
    {
      sub_10000EDF4(&v11, v4, v5, v6, v7, v8, v9, v10);
    }

    else
    {
      sub_10001F380(@"com.apple.mobile.keybagd.sidp.recovery", 0, v11);
    }
  }
}

uint64_t sub_1000130B4(char a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_100013168;
  v3[3] = &unk_100035480;
  v4 = a1;
  v3[4] = &v5;
  dispatch_sync(qword_10003D2A0, v3);
  v1 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v1;
}

void sub_100013168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (sub_100011F00())
  {
    v10 = sub_100011BDC();
    v11 = sub_100003F3C(v10);
  }

  else
  {
    v11 = sub_100003CD4();
  }

  v18 = v11;
  if (v11)
  {
    if (*(a1 + 40))
    {
      v19 = @"BackupKeyBagKeys";
    }

    else
    {
      v19 = @"OpaqueStuff";
    }

    *(*(*(a1 + 32) + 8) + 24) = CFDictionaryGetValue(v11, v19);
    v20 = *(*(*(a1 + 32) + 8) + 24);
    if (v20)
    {
      CFRetain(v20);
    }

    CFRelease(v18);
  }

  else
  {

    sub_100011BE0("keybagd_getpasscodeblob_block_invoke", @"Huh? can't load the bag. That makes no sense", v12, v13, v14, v15, v16, v17);
  }
}

uint64_t sub_10001322C(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = -1;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_1000132E0;
  v3[3] = &unk_1000354A8;
  v3[4] = &v4;
  v3[5] = a1;
  dispatch_sync(qword_10003D2A0, v3);
  v1 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t sub_1000132E0(uint64_t a1)
{
  v2 = sub_100011F00();
  if (v2)
  {
    v3 = sub_100011F00();
    v4 = sub_100011BDC();
    result = sub_10001C00C(v3, v4, *(a1 + 40), 0);
  }

  else
  {
    result = sub_10001BDB8(v2, "/private/var/", *(a1 + 40), 1, 0);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_100013350(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = -1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10001340C;
  block[3] = &unk_1000354D0;
  block[4] = &v8;
  block[5] = a1;
  block[6] = a2;
  block[7] = a3;
  v7 = a4;
  dispatch_sync(qword_10003D2A0, block);
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

void sub_10001340C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100011BE0("keybagd_registerbackup_block_invoke", @"handle_registerbackupbag", a3, a4, a5, a6, a7, a8);
  v9 = *(a1 + 40);
  if (v9)
  {
    sub_100020CB4(a1, v9);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = sub_100012060();

    sub_1000040A4(0);
  }
}

uint64_t sub_100013480(uint64_t a1)
{
  memset(dst, 0, sizeof(dst));
  BytePtr = CFDataGetBytePtr(*(a1 + 40));
  uuid_copy(dst, BytePtr);
  result = sub_100013534(dst, *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = sub_100001F30();
    if (result)
    {
      result = sub_100013534(dst, *(a1 + 48), *(a1 + 56));
      *(*(*(a1 + 32) + 8) + 24) = result;
    }
  }

  return result;
}

CFDataRef sub_100013534(unsigned __int8 *src, unint64_t a2, CFErrorRef *a3)
{
  v14[0] = 0;
  v14[1] = 0;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  v9 = 0u;
  v10 = 0u;
  memset(v8, 0, sizeof(v8));
  v13 = bswap64(a2);
  uuid_copy(v14, src);
  v4 = sub_10000BAE4("/private/var//keybags/backup/backup_keys_cache.sql3", 0, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (sub_10000BAEC(v4, &v13, v8, a3))
  {
    v6 = 0;
  }

  else
  {
    v6 = CFDataCreate(kCFAllocatorDefault, v8, bswap32(v9) + 36);
  }

  sub_1000028E4(v5);
  return v6;
}

uint64_t sub_100013634(CFDataRef theData, char a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = -1;
  if (theData && CFDataGetLength(theData) != 16)
  {
    v4 = 4294966296;
    *(v9 + 6) = -1000;
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_10001371C;
    block[3] = &unk_100035520;
    v7 = a2;
    block[4] = &v8;
    block[5] = theData;
    dispatch_sync(qword_10003D388, block);
    v4 = *(v9 + 6);
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

void sub_10001371C(uint64_t a1)
{
  memset(dst, 0, sizeof(dst));
  memset(out, 0, 37);
  v2 = *(a1 + 40);
  if (v2)
  {
    BytePtr = CFDataGetBytePtr(v2);
    uuid_copy(dst, BytePtr);
    uuid_unparse(dst, out);
  }

  v4 = sub_10000BAE4("/private/var//keybags/backup/backup_keys_cache.sql3", 0, 0);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 40);
    if (*(a1 + 48) == 1)
    {
      if (v6)
      {
        v7 = sub_10000BF84(v4, dst);
      }

      else
      {
        v7 = sub_10000C02C(v4);
      }

      *(*(*(a1 + 32) + 8) + 24) = v7;
    }

    else
    {
      if (v6)
      {
        v8 = sub_10000C0A4(v4, dst);
      }

      else
      {
        v8 = sub_10000C184(v4);
      }

      *(*(*(a1 + 32) + 8) + 24) = v8;
      sub_10000C234(v5, 259200);
    }

    sub_1000028E4(v5);
    v15 = "End";
    if (*(a1 + 48))
    {
      v15 = "Start";
    }

    v16 = "all";
    if (*(a1 + 40))
    {
      v16 = out;
    }

    sub_100011BE0("keybagd_startstopBackup_block_invoke", @"%s backup session (volume: %s - rc: %d)", v9, v10, v11, v12, v13, v14, v15, v16, *(*(*(a1 + 32) + 8) + 24));
  }

  if (*(*(*(a1 + 32) + 8) + 24) == -1 && *__error() == 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

uint64_t sub_1000138CC(const __CFData *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = -1;
  if (CFDataGetLength(a1) == 16)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 0x40000000;
    v12[2] = sub_1000139C8;
    v12[3] = &unk_100035548;
    v13 = a4;
    v12[6] = a2;
    v12[7] = a3;
    v12[8] = a5;
    v12[4] = &v14;
    v12[5] = a1;
    dispatch_sync(qword_10003D2A0, v12);
    v10 = *(v15 + 6);
  }

  else
  {
    v10 = 4294966296;
    *(v15 + 6) = -1000;
  }

  _Block_object_dispose(&v14, 8);
  return v10;
}

uint64_t sub_1000139C8(uint64_t a1)
{
  memset(dst, 0, sizeof(dst));
  memset(out, 0, 37);
  BytePtr = CFDataGetBytePtr(*(a1 + 40));
  uuid_copy(dst, BytePtr);
  uuid_unparse(dst, out);
  sub_100011BE0("keybagd_enablebackup_block_invoke", @"Enabling backup for volume %s", v3, v4, v5, v6, v7, v8, out);
  if (*(a1 + 72) == 1)
  {
    v9 = aks_backup_enable_volume_with_acm();
  }

  else
  {
    v9 = aks_backup_enable_volume();
  }

  v16 = v9;
  if (v9)
  {
    sub_100011BE0("keybagd_enablebackup_block_invoke", @"Could not enable backup for volume %s, err=%x", v10, v11, v12, v13, v14, v15, out, v9);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100011F94;
    block[3] = &unk_1000352F8;
    block[4] = dst;
    dispatch_sync(qword_10003D388, block);
    **(a1 + 64) = CFDataCreate(kCFAllocatorDefault, 0, 0);
  }

  result = sub_10000C7A0(v16);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_100013B48(uint64_t a1)
{
  memset(dst, 0, sizeof(dst));
  memset(out, 0, 37);
  BytePtr = CFDataGetBytePtr(*(a1 + 40));
  uuid_copy(dst, BytePtr);
  uuid_unparse(dst, out);
  sub_100011BE0("keybagd_disablebackup_block_invoke", @"Disabling backup for volume %s", v3, v4, v5, v6, v7, v8, out);
  v9 = aks_backup_disable_volume();
  v16 = v9;
  if (v9)
  {
    sub_100011BE0("keybagd_disablebackup_block_invoke", @"Could not disable backup for volume %s, err=%x", v10, v11, v12, v13, v14, v15, out, v9);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100011F94;
    block[3] = &unk_1000352F8;
    block[4] = dst;
    dispatch_sync(qword_10003D388, block);
  }

  result = sub_10000C7A0(v16);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_100013C8C(uint64_t a1, uint64_t a2, int a3, char a4, int a5)
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = -1;
  v37 = 1;
  v10 = sub_100011F00();
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2800000000;
  v36[3] = 0;
  v36[4] = 0;
  if ((a4 & 2) != 0)
  {
    v11 = -a5;
  }

  else
  {
    v11 = v10;
  }

  lock_state = aks_get_lock_state();
  *(v39 + 6) = lock_state;
  if (lock_state)
  {
    sub_100011BE0("keybagd_stashcreate", @"get_lock_state() -> 0x%x", v13, v14, v15, v16, v17, v18, lock_state);
    goto LABEL_25;
  }

  v19 = a4 & 4;
  if ((a3 - 1) >= 2)
  {
    v35 = -1;
    if (sub_100013F60(0, 0, &v35))
    {
      v21 = 0;
    }

    else
    {
      v21 = v35 == 1;
    }

    v20 = v21;
    if ((a4 & 4) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v20 = 0;
    if ((a4 & 4) == 0)
    {
      goto LABEL_16;
    }
  }

  sub_100011BE0("keybagd_stashcreate", @"Skipping SE KUD", v13, v14, v15, v16, v17, v18);
LABEL_16:
  v22 = a4 & 1;
  if (v20)
  {
    sub_100011BE0("keybagd_stashcreate", @"WA: Preserving SE KUD since stash is committed", v13, v14, v15, v16, v17, v18);
  }

  if (!v19 && (a3 - 1) <= 1 && (v37 & 0x2000) != 0)
  {
    sub_100012DD4(v11);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100014090;
    block[3] = &unk_100035590;
    v34 = v11;
    dispatch_sync(qword_10003D2A8, block);
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 0x40000000;
  v29[2] = sub_1000141F4;
  v29[3] = &unk_1000355B8;
  v29[6] = a1;
  v29[7] = a2;
  v30 = v11;
  v31 = a3;
  v32 = v22;
  v29[4] = &v38;
  v29[5] = v36;
  dispatch_sync(qword_10003D2A0, v29);
  if (!(*(v39 + 6) | v19) && (v37 & 0x2000) != 0)
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 0x40000000;
    v25[2] = sub_1000142D8;
    v25[3] = &unk_1000355E0;
    v27 = (a3 - 1) < 2;
    v28 = v20;
    v26 = v11;
    v25[4] = &v38;
    v25[5] = a1;
    v25[6] = a2;
    dispatch_sync(qword_10003D2A8, v25);
  }

LABEL_25:
  v23 = *(v39 + 6);
  _Block_object_dispose(v36, 8);
  _Block_object_dispose(&v38, 8);
  return v23;
}

uint64_t sub_100013F60(int a1, char a2, _DWORD *a3)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = -1;
  if ((a2 & 2) != 0)
  {
    v4 = -a1;
  }

  else
  {
    v4 = sub_100011F00();
  }

  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2000000000;
  v15 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_100014998;
  v8[3] = &unk_100035658;
  v9 = v4;
  v8[4] = v14;
  v8[5] = &v16;
  v8[6] = &v10;
  dispatch_sync(qword_10003D2A0, v8);
  v5 = v17;
  v6 = *(v17 + 6);
  if (a3 && !v6)
  {
    *a3 = *(v11 + 6);
    v6 = *(v5 + 6);
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v16, 8);
  return v6;
}

void sub_100014090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = 0;
  v46 = 0;
  v45 = 0;
  theData = 0;
  v43 = -1;
  v47 = sub_100018E64(65000, a2, a3, a4, a5, a6, a7, a8);
  if (v47)
  {
    v16 = sub_100019440(&v47, &theData, &v43, &v45, &v46);
    if (v16 || HIDWORD(v16) != 36864)
    {
      sub_100011BE0("keybagd_stashcreate_block_invoke", @"getData() -> 0x%x:0x%x", v17, v18, v19, v20, v21, v22, v16, HIDWORD(v16));
    }

    else
    {
      v23 = sub_10000D52C(*(a1 + 32), &v48, 0, 0);
      if (v23)
      {
        sub_100020D2C(v23, v24, v25, v26, v27, v28, v29, v30);
      }

      else
      {
        v41 = v48;
        v42 = v46;
        sub_100011BE0("keybagd_stashcreate_block_invoke", @"got slot = %d, gwc = %d", v25, v26, v27, v28, v29, v30);
        BytePtr = CFDataGetBytePtr(theData);
        if (BytePtr[v48] != 238)
        {
          v39 = CFDataGetBytePtr(theData);
          if (v39[v48] < 0)
          {
            sub_100011BE0("keybagd_stashcreate_block_invoke", @"slot is v2", v33, v34, v35, v36, v37, v38);
            v40 = sub_10000D4AC(*(a1 + 32), 3, v46);
            if (v40)
            {
              sub_100011BE0("keybagd_stashcreate_block_invoke", @"arming of nonce failed %x", v33, v34, v35, v36, v37, v38, v40, v42);
            }
          }
        }
      }
    }

    if (v47)
    {
      sub_1000213DC(&v47, v32, v33, v34, v35, v36, v37, v38, v41);
    }
  }

  else
  {
    sub_100020D54(0, v9, v10, v11, v12, v13, v14, v15, v41);
  }

  if (theData)
  {
    CFRelease(theData);
  }
}

void sub_1000141F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = "NULL";
  if (a1[6] && a1[7])
  {
    v10 = "SECRET";
  }

  sub_100011BE0("keybagd_stashcreate_block_invoke_2", @"passcode=%s", a3, a4, a5, a6, a7, a8, v10);
  *(*(a1[4] + 8) + 24) = aks_stash_create_for_bag_and_kek();
  if (*(*(a1[4] + 8) + 24))
  {
    sub_100011BE0("keybagd_stashcreate_block_invoke_2", @"aks_stash_create_for_bag_and_kek failed %x", v11, v12, v13, v14, v15, v16, *(*(a1[4] + 8) + 24));
  }

  else
  {

    sub_100011BE0("keybagd_stashcreate_block_invoke_2", @"aks_stash_create_for_bag_and_kek success", v11, v12, v13, v14, v15, v16);
  }
}

void sub_1000142D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v117 = 0;
  v118 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  theData = 0;
  v111 = -1;
  v110 = 0;
  v108 = 0;
  v109 = 0;
  *(*(*(a1 + 32) + 8) + 24) = -1;
  if (*(a1 + 60))
  {
    v9 = &unk_10002CC4D;
  }

  else if (*(a1 + 61))
  {
    v9 = "not de-";
  }

  else
  {
    v9 = "de-";
  }

  sub_100011BE0("keybagd_stashcreate_block_invoke_3", @"%sauthorizing SE update", a3, a4, a5, a6, a7, a8, v9);
  v118 = sub_100018A0C(65000, &v110, &v108, v10, v11, v12, v13, v14);
  if (!v118)
  {
    sub_100020DE0(0, v15, v16, v17, v18, v19, v20, v21);
    v64 = 0;
    v37 = 0;
    v63 = 0x200000000000000;
    goto LABEL_25;
  }

  if (*(a1 + 60) == 1)
  {
    v22 = sub_10000D52C(*(a1 + 56), &v113, 0, 0);
    if (v22)
    {
      sub_100020D68(v22, v23, v24, v25, v26, v27, v28, v29);
      v63 = 0;
      v37 = 0;
      goto LABEL_24;
    }

    v30 = sub_100019440(&v118, &theData, &v111, &v114, &v115);
    v37 = HIDWORD(v30);
    if (v30 || v37 != 36864)
    {
      sub_100011BE0("keybagd_stashcreate_block_invoke_3", @"getData() -> 0x%x:0x%x", v31, v32, v33, v34, v35, v36, v30, HIDWORD(v30));
      v64 = 0;
      v63 = 0x300000000000000;
      goto LABEL_25;
    }

    v106 = v113;
    sub_100011BE0("keybagd_stashcreate_block_invoke_3", @"got slot = %d, gwc = %d", v31, v32, v33, v34, v35, v36);
    BytePtr = CFDataGetBytePtr(theData);
    if (BytePtr[v113] != 238 && (v45 = CFDataGetBytePtr(theData), v45[v113] < 0))
    {
      sub_100011BE0("keybagd_stashcreate_block_invoke_3", @"slot is v2", v39, v40, v41, v42, v43, v44);
      if (!sub_10001E1DC(*(a1 + 56), &v117, &v116) && (sub_10001974C(3, v115, v116, v85, v86, v87, v88, v89) & 1) != 0)
      {
        goto LABEL_14;
      }

      sub_100011BE0("keybagd_stashcreate_block_invoke_3", @"no nonce, or is out of date", v84, v85, v86, v87, v88, v89);
      if (v117)
      {
        CFRelease(v117);
        v117 = 0;
      }

      if (v116)
      {
        CFRelease(v116);
        v116 = 0;
      }

      if (sub_10000D4AC(*(a1 + 56), 3, v115))
      {
        v63 = 0;
        *(*(*(a1 + 32) + 8) + 24) = -1000;
        goto LABEL_53;
      }

      v90 = aks_verify_password();
      if (v90)
      {
        sub_100020D90(v90, v91, v92, v93, v94, v95, v96, v97);
      }

      else
      {
        v98 = sub_10001E1DC(*(a1 + 56), &v117, &v116);
        if (!v98)
        {
LABEL_14:
          v54 = sub_1000217EC(&v118);
          v37 = HIDWORD(v54);
          if (!v54 && v37 == 36864)
          {
            v61 = @"authorized SE update";
LABEL_22:
            sub_100011BE0("keybagd_stashcreate_block_invoke_3", v61, v55, v56, v57, v58, v59, v60);
            v37 = 36864;
            goto LABEL_23;
          }

          sub_100011BE0("keybagd_stashcreate_block_invoke_3", @"resetCounter() -> 0x%x:0x%x", v55, v56, v57, v58, v59, v60, v54, HIDWORD(v54));
          v64 = 0;
          v63 = 0xA00000000000000;
          goto LABEL_25;
        }

        sub_100020DB8(v98, v99, v100, v101, v102, v103, v104, v105);
      }
    }

    else
    {
      sub_100011BE0("keybagd_stashcreate_block_invoke_3", @"slot is v1", v39, v40, v41, v42, v43, v44);
      v46 = sub_10000D52C(*(a1 + 56), &v113, &v117, 0);
      if (!v46)
      {
        goto LABEL_14;
      }

      sub_100020D68(v46, v47, v48, v49, v50, v51, v52, v53);
    }

    v63 = 0;
LABEL_53:
    v37 = 36864;
    goto LABEL_24;
  }

  if (*(a1 + 61))
  {
    v37 = 0;
LABEL_23:
    v63 = 0;
    *(*(*(a1 + 32) + 8) + 24) = 0;
LABEL_24:
    v64 = 1;
    goto LABEL_25;
  }

  v62 = sub_1000217EC(&v118);
  v37 = HIDWORD(v62);
  if (!v62 && v37 == 36864)
  {
    v61 = @"de-authorized SE update";
    goto LABEL_22;
  }

  sub_100011BE0("keybagd_stashcreate_block_invoke_3", @"resetCounter() -> 0x%x:0x%x", v55, v56, v57, v58, v59, v60, v62, HIDWORD(v62));
  v63 = 0;
  v64 = 1;
LABEL_25:
  if (v118)
  {
    sub_1000213DC(&v118, v15, v16, v17, v18, v19, v20, v21, v106);
  }

  if (v116)
  {
    CFRelease(v116);
    v116 = 0;
  }

  if (v117)
  {
    CFRelease(v117);
    v117 = 0;
  }

  if (theData)
  {
    CFRelease(theData);
    theData = 0;
  }

  if ((v64 & 1) == 0)
  {
    sub_1000196BC(v37, v15, v16, v17, v18, v19, v20, v21);
    v107 = (v109 << 8) | (v110 << 6) | (v37 << 40) | v63 | 0x10;
    sub_10000E6C8(&v107, v65, v66, v67, v68, v69, v70, v71);
    sub_100011BE0("keybagd_stashcreate_block_invoke_3", @"SE failed, trying soft recovery", v72, v73, v74, v75, v76, v77);
    if (!aks_se_recover())
    {
      sub_100011BE0("keybagd_stashcreate_block_invoke_3", @"SE soft recovery success", v78, v79, v80, v81, v82, v83);
      sub_10001DA48(0, *(a1 + 56));
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }
}

uint64_t sub_100014740(int a1, char a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = -1;
  if ((a2 & 2) != 0)
  {
    v2 = -a1;
  }

  else
  {
    v2 = sub_100011F00();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10001480C;
  v5[3] = &unk_100035608;
  v5[4] = &v7;
  v6 = v2;
  dispatch_sync(qword_10003D2A0, v5);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

void sub_10001480C(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = aks_stash_commit();
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100011BE0("keybagd_stashcommit_block_invoke", @"aks_stash_commit failed %x (handle:%d)", v2, v3, v4, v5, v6, v7, *(*(*(a1 + 32) + 8) + 24), *(a1 + 40));
  }

  else
  {
    sub_100011BE0("keybagd_stashcommit_block_invoke", @"success (handle:%d)", v2, v3, v4, v5, v6, v7, *(a1 + 40));
  }
}

uint64_t sub_10001488C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = -1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10001493C;
  block[3] = &unk_100035630;
  block[4] = &v3;
  dispatch_sync(qword_10003D2A0, block);
  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100014998(uint64_t a1)
{
  v2 = aks_stash_verify();
  if (v2)
  {
    sub_100011BE0("keybagd_stashverify_block_invoke", @"aks_stash_verify failed %x (handle:%d)", v3, v4, v5, v6, v7, v8, v2, *(a1 + 56));
    v9 = -1;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24);
    sub_100011BE0("keybagd_stashverify_block_invoke", @"AKS STASH VERIFY success (handle:%d, result:%d)", v3, v4, v5, v6, v7, v8, *(a1 + 56), *(*(*(a1 + 48) + 8) + 24));
    v9 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v9;
}

uint64_t sub_100014A4C(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = -1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100014B0C;
  v6[3] = &unk_100035680;
  v6[4] = &v9;
  v6[5] = a1;
  v6[6] = a2;
  v7 = a4;
  v8 = a3;
  dispatch_sync(qword_10003D2A0, v6);
  v4 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v4;
}

void sub_100014B0C(uint64_t a1)
{
  v37 = 0;
  sub_100011F00();
  if (!aks_get_system())
  {
    if (*(a1 + 60))
    {
      v2 = 4;
    }

    else
    {
      v2 = 0;
    }

    LODWORD(v36) = *(a1 + 56);
    HIDWORD(v36) = v2;
    *(*(*(a1 + 32) + 8) + 24) = aks_change_secret_opts();
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      if (sub_100011F00())
      {
        v3 = sub_100011BDC();
        v4 = sub_100003F3C(v3);
      }

      else
      {
        v4 = sub_100003CD4();
      }

      v11 = v4;
      sub_100011BE0("keybagd_changegeneration_block_invoke", @"Starting transition to new system bag at handle %d", v5, v6, v7, v8, v9, v10, v37, v36, &v37);
      if (!v11)
      {
        sub_100011BE0("keybagd_changegeneration_block_invoke", @"Failed to load system keybag", v12, v13, v14, v15, v16, v17);
        v26 = -1;
LABEL_17:
        *(*(*(a1 + 32) + 8) + 24) = v26;
        goto LABEL_18;
      }

      Value = CFDictionaryGetValue(v11, @"OpaqueStuff");
      if (Value)
      {
        v19 = Value;
        CFRetain(Value);
        CFRelease(v11);
        sub_100011BE0("keybagd_changegeneration_block_invoke", @"Got opaqueStuff from ondisk keybag", v20, v21, v22, v23, v24, v25);
        *(*(*(a1 + 32) + 8) + 24) = sub_10001BDB8(v37, "/private/var/", v19, 1, 0);
        CFRelease(v19);
      }

      else
      {
        CFRelease(v11);
        sub_100011BE0("keybagd_changegeneration_block_invoke", @"Got opaqueStuff from ondisk keybag", v27, v28, v29, v30, v31, v32);
        *(*(*(a1 + 32) + 8) + 24) = sub_10001BDB8(v37, "/private/var/", 0, 1, 0);
      }

      if (!*(*(*(a1 + 32) + 8) + 24) && *(a1 + 56))
      {
        sub_100011F00();
        v26 = aks_set_system_with_opts();
        goto LABEL_17;
      }
    }

LABEL_18:
    v33 = *(*(a1 + 32) + 8);
    v34 = *(v33 + 24);
    if (v34 > -536870175)
    {
      if (!v34)
      {
        return;
      }

      if (v34 != -536870174)
      {
        goto LABEL_25;
      }
    }

    else if (v34 != -536870194)
    {
      if (v34 == -536870184)
      {
        v35 = -13;
LABEL_26:
        *(v33 + 24) = v35;
        return;
      }

LABEL_25:
      v35 = -1000;
      goto LABEL_26;
    }

    v35 = -3;
    goto LABEL_26;
  }
}

uint64_t sub_100014D70(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 2;
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2000000000;
  v5 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100014E44;
  block[3] = &unk_1000356A8;
  block[4] = v4;
  block[5] = &v6;
  block[6] = a1;
  dispatch_sync(qword_10003D2A0, block);
  v1 = *(v7 + 6);
  _Block_object_dispose(v4, 8);
  _Block_object_dispose(&v6, 8);
  return v1;
}

void sub_100014E44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (sub_1000042BC("enable-rolld-dev1", (*(a1[4] + 8) + 24), 0))
  {

    sub_100011BE0("keybagd_iskeyrolling_block_invoke", @"nvram keyroll check failed", v10, v11, v12, v13, v14, v15);
  }

  else
  {
    *(*(a1[5] + 8) + 24) = 0;
    *(*(a1[5] + 8) + 24) = *(*(a1[4] + 8) + 24) != 0;
    sub_100011BE0("keybagd_iskeyrolling_block_invoke", @"nvram keyroll check success", v10, v11, v12, v13, v14, v15);
    v16 = a1[6];
    if (v16)
    {
      *v16 = *(*(a1[4] + 8) + 24);
    }
  }
}

uint64_t sub_100014F04(int a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_100014FB8;
  v3[3] = &unk_1000356D0;
  v4 = a1;
  v3[4] = &v5;
  dispatch_sync(qword_10003D2A0, v3);
  v1 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v1;
}

uint64_t sub_100014FB8(uint64_t a1)
{
  result = sub_100011F00();
  if (result)
  {
    v3 = *(a1 + 40);
    if (!v3)
    {
      v3 = sub_100011BDC();
    }

    result = sub_10000B74C(v3);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

void sub_100014FFC()
{
  v1 = 0;
  v2 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000180D4;
  block[3] = &unk_1000359B8;
  block[4] = &v1;
  block[5] = &v2;
  dispatch_sync(qword_10003D2A8, block);
  v0[0] = _NSConcreteStackBlock;
  v0[1] = 0x40000000;
  v0[2] = sub_1000202EC;
  v0[3] = &unk_1000356F0;
  v0[4] = v2;
  v0[5] = v1;
  dispatch_async(qword_10003D2A0, v0);
}

void sub_1000150D8(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  v24 = 0;
  *bytes = 0;
  v23 = 0;
  v22 = 0u;
  memset(v21, 0, sizeof(v21));
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  v6 = CFDataCreateWithBytesNoCopy(0, bytes, 16, kCFAllocatorNull);
  *&v17 = 2;
  if (!aks_get_configuration())
  {
    v7 = kAKSConfigGracePeriod;
    *(&v17 + 1) = sub_10000C448(v24, kAKSConfigGracePeriod);
    v8 = sub_10000C40C(v24, kAKSConfigUserUUID);
    v9 = sub_10000C40C(v24, kAKSConfigGroupUUID);
    if (v8)
    {
      if (a3)
      {
        BYTE10(v21[0]) = CFEqual(v8, a3) != 0;
      }

      BYTE11(v21[0]) = CFEqual(v8, v6) != 0;
    }

    if (v9)
    {
      if (a4)
      {
        BYTE12(v21[0]) = CFEqual(v9, a4) != 0;
      }

      BYTE13(v21[0]) = CFEqual(v9, v6) != 0;
    }

    *(&v17 + 1) = sub_10000C448(v24, v7);
    *(&v18 + 1) = sub_10000C448(v24, kAKSConfigMaxUnlockAttempts);
    *&v19 = sub_10000C448(v24, kAKSConfigRecoveryIterations);
    *(&v19 + 1) = sub_10000C448(v24, kAKSConfigRecoveryTargetIterations);
    v10 = sub_10000C448(v24, kAKSConfigRecoveryFlags);
    LOBYTE(v20) = (v10 & 8) != 0;
    BYTE1(v20) = v10 & 1;
    BYTE2(v20) = (v10 & 4) != 0;
    BYTE3(v20) = (v10 & 2) != 0;
    BYTE4(v20) = (v10 & 0x10) != 0;
    BYTE5(v20) = sub_10000C4B4(v24, kAKSConfigMementoSupported) != 0;
    BYTE6(v20) = sub_10000C4B4(v24, kAKSConfigMementoBlobExists) != 0;
    *(&v20 + 1) = sub_10000C448(v24, kAKSConfigMementoPasscodeGeneration);
    *&v21[0] = sub_10000C448(v24, kAKSConfigPasscodeGeneration);
    BYTE8(v21[0]) = sub_10000C4B4(v24, kAKSConfigInactivityRebootEnabled) != 0;
    BYTE9(v21[0]) = sub_10000C4B4(v24, kAKSConfigOnenessAutomaticMode) != 0;
    if (aks_get_extended_device_state())
    {
      LOBYTE(v23) = 1;
    }

    else
    {
      v11 = *&vshl_u16((*&vdup_n_s16(v27) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
      *(v21 + 14) = vuzp1_s8(v11, v11).u32[0];
      BYTE2(v21[1]) = (v27 & 0x20) != 0;
      BYTE3(v21[1]) = (v27 & 0x40) != 0;
      BYTE4(v21[1]) = (v27 & 0x80) != 0;
      v12 = vdupq_n_s32(v27);
      BYTE9(v21[2]) = (v27 & 0x10000000) != 0;
      BYTE10(v21[2]) = (v27 & 0x20000000) != 0;
      BYTE11(v21[2]) = (v27 & 0x40000000) != 0;
      BYTE12(v21[2]) = BYTE2(v29) & 1;
      v13.i64[0] = 0x101010101010101;
      v13.i64[1] = 0x101010101010101;
      *(&v21[1] + 5) = vandq_s8(vuzp1q_s8(vuzp1q_s16(vshlq_u32(v12, xmmword_10002F370), vshlq_u32(v12, xmmword_10002F360)), vuzp1q_s16(vshlq_u32(v12, xmmword_10002F390), vshlq_u32(v12, xmmword_10002F380))), v13);
      v14 = *&vmovn_s32(vshlq_u32(v12, xmmword_10002F3A0)) & 0xFF01FF01FF01FF01;
      *(&v21[2] + 5) = vuzp1_s8(v14, v14).u32[0];
      v15 = *&vshl_u16(vdup_n_s16(BYTE2(v29)), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
      *(&v21[2] + 13) = vuzp1_s8(v15, v15).u32[0];
      BYTE1(v21[3]) = (BYTE2(v29) & 0x20) != 0;
      BYTE2(v21[3]) = (BYTE2(v29) & 0x40) != 0;
      *&v18 = v28;
    }

    if (AKSIdentityGetSessionTimeWindows())
    {
      *(&v21[3] + 4) = 0;
    }

    else
    {
      BYTE1(v23) = 1;
    }

    if (aks_get_seconds_since_passcode_change())
    {
      BYTE2(v23) = 1;
    }

    else
    {
      HIDWORD(v21[3]) = 0;
    }

    if (aks_memento_get_state())
    {
      BYTE3(v23) = 1;
    }

    else
    {
      v16 = *&vshl_u16((*&vdup_n_s16(0) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
      LODWORD(v22) = vuzp1_s8(v16, v16).u32[0];
      BYTE4(v22) = 0;
      *(&v22 + 1) = 0;
    }

    sub_10000F6DC(&v17);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v24)
  {
    CFRelease(v24);
  }
}

BOOL sub_100015600(int a1, int a2, _DWORD *a3)
{
  sub_100011F00();
  if (a2)
  {
    extended_device_state = aks_get_extended_device_state();
  }

  else
  {
    extended_device_state = aks_get_device_state();
  }

  v12 = extended_device_state;
  if (extended_device_state)
  {
    sub_100011BE0("keybagd_getDeviceLockState", @"aks_get_device_state/aks_get_extended_device_state failed with %d", v6, v7, v8, v9, v10, v11, extended_device_state);
  }

  else if (a3)
  {
    *a3 = 0;
  }

  return v12 == 0;
}

BOOL sub_1000156CC(int a1, _DWORD *a2)
{
  sub_100011F00();
  extended_device_state = aks_get_extended_device_state();
  v10 = extended_device_state;
  if (extended_device_state)
  {
    sub_100011BE0("keybagd_getDeviceExtendedState", @"aks_get_extended_device_state failed with %d", v4, v5, v6, v7, v8, v9, extended_device_state);
  }

  else
  {
    *a2 = 0;
  }

  return v10 == 0;
}

void sub_10001577C(uint64_t a1, const UInt8 *a2, CFIndex capacity)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = CFDataCreateMutable(kCFAllocatorDefault, capacity);
    v6 = *(*(*(a1 + 32) + 8) + 24);

    CFDataAppendBytes(v6, a2, capacity);
  }
}

void sub_1000157F8(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 0x40000000;
  v1[2] = sub_100015884;
  v1[3] = &unk_100035740;
  v4 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  dispatch_sync(qword_10003D2A8, v1);
}

void sub_100015884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v176 = 0;
  cf = 0;
  theData = 0;
  v172 = 0;
  v173 = 0;
  v171[0] = 0;
  v171[1] = 0;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100020EBC(a1, a2, a3, a4, a5, a6, a7, a8, v163);
    goto LABEL_75;
  }

  sub_100012108();
  v9 = sub_1000196F8();
  if ((v9 & 1) == 0)
  {
    sub_100020E08(v9, v10, v11, v12, v13, v14, v15, v16, v163);
    goto LABEL_75;
  }

  sleep(5u);
  v17 = sub_100021A88(1, &stru_1000359F8, &v172);
  sub_10001D6D8(v17, 1);
  v19 = v18;
  v165 = v18;
  v167 = *(a1 + 56);
  v164 = v17;
  sub_100011BE0("keybagd_SeshatEnroll_block_invoke_3", @"Seshat preflight = %llx (%llx) (acm: %d)", v20, v21, v22, v23, v24, v25);
  v170 = v19;
  sub_10000E458(&v170, v26, v27, v28, v29, v30, v31, v32);
  if ((v172 & 1) == 0)
  {
    sub_100011BE0("keybagd_SeshatEnroll_block_invoke_3", @"v1 preflight failed %llx", v33, v34, v35, v36, v37, v38, v17, v165);
    goto LABEL_75;
  }

  if (MGGetBoolAnswer())
  {
    v39 = (sub_10001966C() >> 11) & 1;
  }

  else
  {
    LOBYTE(v39) = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v39;
  v40 = *(*(*(a1 + 40) + 8) + 24);
  v41 = sub_10000D664();
  if (v40 == 1)
  {
    if (v41 >= 2)
    {
      sub_100011BE0("keybagd_SeshatEnroll_block_invoke_3", @"bad user experience = %u", v43, v44, v45, v46, v47, v48, v41, v165);
LABEL_75:
      v82 = 0;
      goto LABEL_54;
    }
  }

  else
  {
    v164 = v41;
    sub_100011BE0("keybagd_SeshatEnroll_block_invoke_3", @"ignoring recovery count (%d)", v43, v44, v45, v46, v47, v48);
  }

  v173 = sub_100018E64(65000, v42, v43, v44, v45, v46, v47, v48);
  if (!v173)
  {
    sub_100020E94(0, v56, v57, v58, v59, v60, v61, v62);
    goto LABEL_75;
  }

  v63 = sub_100018F5C(&v173, 0, 238, 0, &v176, &v172 + 4);
  if (v63 || HIDWORD(v63) != 36864)
  {
    sub_100011BE0("keybagd_SeshatEnroll_block_invoke_3", @"allocateSlot() -> 0x%x:0x%x", v64, v65, v66, v67, v68, v69, v63, HIDWORD(v63));
    goto LABEL_75;
  }

  v70 = sub_100011F00();
  v71 = *(*(*(a1 + 32) + 8) + 24);
  if (v71)
  {
    BytePtr = CFDataGetBytePtr(v71);
    v73 = *(*(*(a1 + 32) + 8) + 24);
    if (v73)
    {
      Length = CFDataGetLength(v73);
      goto LABEL_19;
    }
  }

  else
  {
    BytePtr = 0;
  }

  Length = 0;
LABEL_19:
  v82 = sub_10000D71C(v70, BytePtr, Length, *(a1 + 56), 0, 1);
  if (!v82)
  {
    sub_100020E6C(0, v75, v76, v77, v78, v79, v80, v81);
    goto LABEL_54;
  }

  v83 = sub_1000190FC(&v173, 0, v82, &theData, &v172 + 4, v171);
  if (v83 || HIDWORD(v83) != 36864)
  {
    sub_100011BE0("keybagd_SeshatEnroll_block_invoke_3", @"derive() -> 0x%x:0x%x", v84, v85, v86, v87, v88, v89, v83, HIDWORD(v83), v167);
    goto LABEL_54;
  }

  v90 = sub_1000190FC(&v173, 0, v82, &cf, &v172 + 4, v171);
  if (v90 || HIDWORD(v90) != 36864)
  {
    sub_100011BE0("keybagd_SeshatEnroll_block_invoke_3", @"derive2() -> 0x%x:0x%x", v91, v92, v93, v94, v95, v96, v90, HIDWORD(v90), v167);
    goto LABEL_54;
  }

  v97 = CFEqual(theData, cf);
  if (!v97)
  {
    sub_100020E44(v97, v98, v99, v100, v101, v102, v103, v104);
    goto LABEL_54;
  }

  v105 = sub_1000216C8(&v173);
  if (v105 || HIDWORD(v105) != 36864)
  {
    sub_100011BE0("keybagd_SeshatEnroll_block_invoke_3", @"resetCounter() -> 0x%x:0x%x", v106, v107, v108, v109, v110, v111, v105, HIDWORD(v105), v167);
    goto LABEL_54;
  }

  sub_100011F00();
  v112 = *(*(*(a1 + 32) + 8) + 24);
  if (v112)
  {
    CFDataGetBytePtr(v112);
    v113 = *(*(*(a1 + 32) + 8) + 24);
    if (v113)
    {
      CFDataGetLength(v113);
      v114 = *(*(*(a1 + 32) + 8) + 24);
      if (v114)
      {
        CFDataGetBytePtr(v114);
        v115 = *(*(*(a1 + 32) + 8) + 24);
        if (v115)
        {
          CFDataGetLength(v115);
        }
      }
    }
  }

  if (theData)
  {
    CFDataGetBytePtr(theData);
    if (theData)
    {
      CFDataGetLength(theData);
    }
  }

  v116 = v176;
  if (v176)
  {
    CFDataGetBytePtr(v176);
    v116 = v176;
    if (v176)
    {
      v116 = CFDataGetLength(v176);
    }
  }

  if (*(a1 + 56))
  {
    v117 = 4;
  }

  else
  {
    v117 = 0;
  }

  LODWORD(v166) = 0;
  HIDWORD(v166) = v117;
  BYTE4(v164) = 0;
  LODWORD(v164) = v116;
  v118 = aks_change_secret_opts();
  sub_100011BE0("keybagd_SeshatEnroll_block_invoke_3", @"attempting upgrade to v2", v119, v120, v121, v122, v123, v124);
  v169 = 0;
  v125 = sub_100011F00();
  v126 = v176;
  v127 = *(*(*(a1 + 32) + 8) + 24);
  if (!v127)
  {
    v128 = 0;
    goto LABEL_45;
  }

  v128 = CFDataGetBytePtr(v127);
  v129 = *(*(*(a1 + 32) + 8) + 24);
  if (!v129)
  {
LABEL_45:
    v130 = 0;
    goto LABEL_46;
  }

  v130 = CFDataGetLength(v129);
LABEL_46:
  v131 = sub_10001DCB0(v125, 0, v126, &v173, v128, v130, *(a1 + 56), &v169);
  if (v131)
  {
    sub_10001D6D8(v169, 1);
    v168 = v139;
    sub_10000E458(&v168, v140, v141, v142, v143, v144, v145, v146);
  }

  if (v118)
  {
    sub_100020E1C(v131, v132, v133, v134, v135, v136, v137, v138);
  }

  else
  {
    sub_100011F00();
    v147 = *(*(*(a1 + 32) + 8) + 24);
    if (v147)
    {
      CFDataGetBytePtr(v147);
      v148 = *(*(*(a1 + 32) + 8) + 24);
      if (v148)
      {
        CFDataGetLength(v148);
      }
    }

    v149 = aks_change_secret_epilogue_with_opts();
    if (v149)
    {
      sub_100011BE0("keybagd_SeshatEnroll_block_invoke_3", @"aks_change_secret_epilogue() failed %x", v150, v151, v152, v153, v154, v155, v149, v166, 0);
    }

    else
    {
      sub_100011BE0("keybagd_SeshatEnroll_block_invoke_3", @"success enroll", v150, v151, v152, v153, v154, v155, v164, v166, 0);
    }
  }

LABEL_54:
  if (v176)
  {
    CFRelease(v176);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v82)
  {
    v156 = CFDataGetBytePtr(v82);
    v157 = CFDataGetLength(v82);
    v158 = CFDataGetLength(v82);
    memset_s(v156, v157, 0, v158);
    CFRelease(v82);
  }

  if (*(a1 + 56) == 1)
  {
    ACMContextDelete(*(a1 + 48), 1);
  }

  v159 = *(*(*(a1 + 32) + 8) + 24);
  if (v159)
  {
    v160 = CFDataGetBytePtr(v159);
    v161 = CFDataGetLength(*(*(*(a1 + 32) + 8) + 24));
    v162 = CFDataGetLength(*(*(*(a1 + 32) + 8) + 24));
    memset_s(v160, v161, 0, v162);
    CFRelease(*(*(*(a1 + 32) + 8) + 24));
  }

  if (v173)
  {
    sub_1000213DC(&v173, v49, v50, v51, v52, v53, v54, v55, v164);
  }
}

uint64_t sub_100015EE4(int a1, const UInt8 *a2, CFIndex a3, int a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2000000000;
  v53 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2000000000;
  v51 = -536870194;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2000000000;
  v47[3] = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2000000000;
  v46[3] = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2000000000;
  v45[3] = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2000000000;
  v44 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = 1;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = CFDataCreate(kCFAllocatorDefault, a2, a3);
  v14 = v36[3];
  if (v14 && CFDataGetLength(v14) > 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v55 = a1;
      v56 = 1024;
      v57 = a4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "unlock(handle:%d, acm:%d)", buf, 0xEu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100016230;
    block[3] = &unk_100035790;
    v32 = a5;
    v31 = a1;
    v33 = a4;
    block[6] = &v48;
    block[7] = &v35;
    block[8] = v46;
    block[9] = v47;
    block[10] = v45;
    block[11] = v43;
    v34 = a6;
    block[12] = v52;
    block[13] = a7;
    block[4] = a8;
    block[5] = &v39;
    dispatch_sync(qword_10003D2A8, block);
    if (*(v49 + 6))
    {
      sub_100011BE0("keybagd_SeshatUnlock", @"seshat unlock failed %d", v15, v16, v17, v18, v19, v20, *(v40 + 24));
    }
  }

  else
  {
    (*(a8 + 16))(a8, 4294967279);
  }

  v21 = v36;
  v22 = v36[3];
  if (v22)
  {
    Length = CFDataGetLength(v22);
    v21 = v36;
    if (Length >= 1)
    {
      BytePtr = CFDataGetBytePtr(v36[3]);
      v25 = CFDataGetLength(v36[3]);
      v26 = CFDataGetLength(v36[3]);
      memset_s(BytePtr, v25, 0, v26);
      v21 = v36;
    }
  }

  v27 = v21[3];
  if (v27)
  {
    CFRelease(v27);
    v36[3] = 0;
  }

  v28 = *(v49 + 6);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);
  _Block_object_dispose(v46, 8);
  _Block_object_dispose(v47, 8);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(v52, 8);
  return v28;
}

void sub_100016230(uint64_t a1)
{
  theData = 0;
  v244 = 1;
  v245 = 0;
  v243 = 0;
  v242 = 0;
  v240 = 0;
  v241 = 0;
  if ((*(a1 + 116) & 1) == 0)
  {
    aks_get_lock_state();
  }

  sub_100012108();
  sub_10000CA3C((*(*(a1 + 64) + 8) + 24));
  *(*(*(a1 + 72) + 8) + 24) = sub_100018A0C(9000, &v242, &v240, v2, v3, v4, v5, v6);
  sub_10000CA6C(*(*(*(a1 + 64) + 8) + 24), (*(*(a1 + 80) + 8) + 24));
  if (!*(*(*(a1 + 72) + 8) + 24))
  {
    sub_100020FAC(v7, v8, v9, v10, v11, v12, v13, v14);
    LODWORD(v27) = 0;
    v49 = 0;
    v51 = 0;
    v52 = 2;
    goto LABEL_67;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(*(*(a1 + 80) + 8) + 24);
    *buf = 134217984;
    *&buf[4] = v15;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SeshatCreateSessionWithTimeout() -> %llu us", buf, 0xCu);
  }

  v16 = *(a1 + 112);
  v17 = *(*(*(a1 + 56) + 8) + 24);
  if (!v17)
  {
    BytePtr = 0;
    goto LABEL_10;
  }

  BytePtr = CFDataGetBytePtr(v17);
  v19 = *(*(*(a1 + 56) + 8) + 24);
  if (!v19)
  {
LABEL_10:
    Length = 0;
    goto LABEL_11;
  }

  Length = CFDataGetLength(v19);
LABEL_11:
  v27 = sub_10000D71C(v16, BytePtr, Length, *(a1 + 117), *(a1 + 116), 0);
  if (v27)
  {
    v28 = *(a1 + 112);
    v29 = (*(*(a1 + 88) + 8) + 24);
    if (*(a1 + 116) == 1)
    {
      v30 = sub_10001DC48(v28, v29, &v244);
      if (v30)
      {
        sub_100020EF8(v30, v31, v32, v33, v34, v35, v36, v37);
LABEL_132:
        v51 = 0;
        v52 = 0;
        v49 = 0;
        v48 = 0;
LABEL_66:
        CFRelease(v27);
        LODWORD(v27) = v48 << 8;
        goto LABEL_67;
      }
    }

    else
    {
      v38 = sub_10000D52C(v28, v29, 0, &v244);
      if (v38)
      {
        sub_100020ED0(v38, v39, v40, v41, v42, v43, v44, v45);
        goto LABEL_132;
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v46 = *(*(*(a1 + 88) + 8) + 24);
      *buf = 67109376;
      *&buf[4] = v46;
      *&buf[8] = 1024;
      *&buf[10] = v244;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "got slot = %d, ver = %d", buf, 0xEu);
    }

    v47 = sub_1000190FC((*(*(a1 + 72) + 8) + 24), *(*(*(a1 + 88) + 8) + 24), v27, &theData, &v245, &v240);
    v48 = v47;
    v49 = HIDWORD(v47);
    if (v47)
    {
      v50 = 0;
    }

    else
    {
      v50 = v49 == 36864;
    }

    v51 = !v50;
    if (!v50)
    {
      if ((*(a1 + 116) & 1) != 0 || aks_se_stage_stash())
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100020F20(v48, v49);
        }

        v51 = 0;
        v52 = 7;
        goto LABEL_66;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_50:
        v64 = *(*(*(a1 + 56) + 8) + 24);
        if (*(a1 + 118) & 1) != 0 || (*(a1 + 116))
        {
          if (v64)
          {
            CFDataGetBytePtr(v64);
            v66 = *(*(*(a1 + 56) + 8) + 24);
            if (v66)
            {
              CFDataGetLength(v66);
            }
          }

          v67 = *(a1 + 104);
          if (v67)
          {
            CFDataGetBytePtr(v67);
            v68 = *(a1 + 104);
            if (v68)
            {
              CFDataGetLength(v68);
            }
          }

          v69 = aks_verify_password_with_opts();
        }

        else
        {
          if (v64)
          {
            CFDataGetBytePtr(v64);
            v65 = *(*(*(a1 + 56) + 8) + 24);
            if (v65)
            {
              CFDataGetLength(v65);
            }
          }

          v69 = aks_unlock_device_with_opts();
        }

        *(*(*(a1 + 48) + 8) + 24) = v69;
        if (*(*(*(a1 + 48) + 8) + 24))
        {
          LOBYTE(v239) = *(a1 + 116);
          sub_100011BE0("keybagd_SeshatUnlock_block_invoke", @"(memento:%d, verify_only:%d, acm:%d) -> %d", v70, v71, v72, v73, v74, v75);
        }

        v52 = 0;
        goto LABEL_66;
      }

      *buf = 0;
      v53 = "staged SE stash";
      v54 = 2;
LABEL_49:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v53, buf, v54);
      goto LABEL_50;
    }

    if (*(a1 + 116))
    {
      if (theData)
      {
        CFDataGetBytePtr(theData);
        if (theData)
        {
          CFDataGetLength(theData);
        }
      }

      v55 = aks_se_set_secret_memento();
    }

    else
    {
      if (theData)
      {
        CFDataGetBytePtr(theData);
        if (theData)
        {
          CFDataGetLength(theData);
        }
      }

      v55 = aks_se_set_secret();
    }

    *(*(*(a1 + 48) + 8) + 24) = v55;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v239 = *(*(*(a1 + 48) + 8) + 24);
      sub_100011BE0("keybagd_SeshatUnlock_block_invoke", @"aks_se_set_secret() -> %d", v56, v57, v58, v59, v60, v61);
      v51 = 0;
      v52 = 0;
      v48 = 0;
    }

    else
    {
      v62 = v244;
      v63 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (v62 < 2)
      {
        if (!v63)
        {
          goto LABEL_50;
        }

        *buf = 67109120;
        *&buf[4] = v62;
        v53 = "NOT prearming nonce %d";
        v54 = 8;
        goto LABEL_49;
      }

      if (v63)
      {
        *buf = 67109376;
        *&buf[4] = v62;
        *&buf[8] = 1024;
        *&buf[10] = v245;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "prearming nonce %d,%u", buf, 0xEu);
      }

      if (!sub_10000D4AC(*(a1 + 112), 2, v245))
      {
        goto LABEL_50;
      }

      v51 = 0;
      v52 = 0;
      v48 = 0;
      *(*(*(a1 + 48) + 8) + 24) = -1000;
    }

    v49 = 36864;
    goto LABEL_66;
  }

  LOBYTE(v239) = *(a1 + 117);
  sub_100011BE0("keybagd_SeshatUnlock_block_invoke", @"failed to derive SE passcode %d", v21, v22, v23, v24, v25, v26);
  v49 = 0;
  v52 = 0;
  v51 = 0;
LABEL_67:
  if (theData)
  {
    CFRelease(theData);
  }

  if (v51)
  {
    v83 = *(*(*(a1 + 56) + 8) + 24);
    if (v83)
    {
      CFDataGetBytePtr(v83);
      v84 = *(*(*(a1 + 56) + 8) + 24);
      if (v84)
      {
        CFDataGetLength(v84);
      }
    }

    *(*(*(a1 + 96) + 8) + 24) = aks_se_recover_with_opts();
    LOBYTE(v239) = *(a1 + 117);
    sub_100011BE0("keybagd_SeshatUnlock_block_invoke", @"stash driven unbind from Seshat (acm: %d)(0x%x -> 0x%x)", v120, v121, v122, v123, v124, v125);
    if (!*(*(*(a1 + 96) + 8) + 24))
    {
      sub_10001DA48((*(*(a1 + 72) + 8) + 24), *(a1 + 112));
    }
  }

  else if (v52)
  {
    *buf = 3;
    *buf = ((v27 & 0xFF00 | (8 * sub_100017044()) | (32 * v52) | (v49 << 16) | 2) << 32) | 3;
    sub_10001F380(@"com.apple.mobile.keybagd.seshat.report", 0, *buf);
    sub_10000ECA0(buf, v85, v86, v87, v88, v89, v90, v91);
    sub_1000196BC(v49, v92, v93, v94, v95, v96, v97, v98);
    v255 = ((v242 << 6) | (v241 << 8) | (v49 << 40) | (v52 << 56));
    sub_10000E6C8(&v255, v99, v100, v101, v102, v103, v104, v105);
    v252 = v240;
    sub_10000EA0C(&v252, v106, v107, v108, v109, v110, v111, v112);
    if ((*(a1 + 116) & 1) == 0)
    {
      v239 = *(*(*(a1 + 48) + 8) + 24);
      sub_100011BE0("keybagd_SeshatUnlock_block_invoke", @"Unable to unlock SE bound keybag -- requesting recovery 0x%x (0x%x)", v113, v114, v115, v116, v117, v118);
      aks_se_fail();
      if (!aks_get_lock_state() && (v243 & 0x800) != 0)
      {
        v119 = sub_100017044();
        sub_10001F380(@"com.apple.mobile.keybagd.seshat.report", 0, (((32 * v52) | (v49 << 16) | (v27 | (16 * v119)) & 0xFF10 | 2) << 32) | 5);
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = -536362987;
  }

  else if (!*(*(*(a1 + 48) + 8) + 24))
  {
    *buf = 6;
    sub_10000ECA0(buf, v76, v77, v78, v79, v80, v81, v82);
  }

  v126 = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1 && !*(*(*(a1 + 48) + 8) + 24))
  {
    v134 = *(*(a1 + 72) + 8);
    v135 = *(*(*(a1 + 88) + 8) + 24);
    v136 = *(a1 + 112);
    v137 = *(*(*(a1 + 56) + 8) + 24);
    v138 = *(a1 + 117);
    v139 = *(a1 + 116);
    v255 = 0;
    *buf = 0;
    v254 = 0;
    v253 = -1;
    v251 = 0;
    v252 = 0;
    v141 = *(v134 + 24);
    v140 = (v134 + 24);
    v250 = 0;
    if (!v141)
    {
      sub_100021074(v126, v127, v128, v129, v130, v131, v132, v133);
      goto LABEL_139;
    }

    if (!v137)
    {
      sub_10002104C(v126, v127, v128, v129, v130, v131, v132, v133);
      goto LABEL_139;
    }

    v142 = sub_100019440(v140, &v252, &v253, &v254, &v254 + 4);
    if (v142 || HIDWORD(v142) != 36864)
    {
      sub_100011BE0("seshat_reset", @"getData() -> 0x%x:0x%x", v144, v145, v146, v147, v148, v149, v142, HIDWORD(v142));
      goto LABEL_139;
    }

    v249 = 1000 * ((HIDWORD(v254) + 999) / 0x3E8u);
    sub_10000EB40(&v249, v143, v144, v145, v146, v147, v148, v149);
    if (CFDataGetBytePtr(v252)[v135] != 238 && CFDataGetBytePtr(v252)[v135] < 0)
    {
      LOBYTE(v239) = 2;
      sub_100011BE0("seshat_reset", @"slot is v%d", v150, v151, v152, v153, v154, v155);
      sleep(1u);
      if (sub_10001E1DC(v136, buf, &v255) || (sub_10001974C(2, HIDWORD(v254), v255, v213, v214, v215, v216, v217) & 1) == 0)
      {
        sub_100011BE0("seshat_reset", @"cant fetch async sig or is invalid", v212, v213, v214, v215, v216, v217);
        if (v255)
        {
          CFRelease(v255);
          v255 = 0;
        }

        if (*buf)
        {
          CFRelease(*buf);
          *buf = 0;
        }

        v251 = 0x100000001;
        sub_10000ECA0(&v251, v218, v219, v220, v221, v222, v223, v224);
        if (sub_10000D4AC(v136, 2, HIDWORD(v254)))
        {
          goto LABEL_139;
        }

        CFDataGetBytePtr(v137);
        CFDataGetLength(v137);
        if (aks_verify_password_with_opts())
        {
          sub_100011BE0("seshat_reset", @"cant verify passcode acm:%d memento:%d", v225, v226, v227, v228, v229, v230, v138, v139);
          goto LABEL_139;
        }

        v231 = sub_10001E1DC(v136, buf, 0);
        if (v231)
        {
          sub_100020FD4(v231, v232, v233, v234, v235, v236, v237, v238);
          goto LABEL_139;
        }
      }

      v181 = 1;
    }

    else
    {
      sub_100011BE0("seshat_reset", @"slot is v%d", v150, v151, v152, v153, v154, v155, 1);
      if (v139)
      {
        v156 = CFDataGetBytePtr(v137);
        v157 = CFDataGetLength(v137);
        v158 = sub_10000D548(v136, v156, v157, v138, 0, buf, 0);
        if (v158)
        {
          sub_100021024(v158, v159, v160, v161, v162, v163, v164, v165);
          goto LABEL_139;
        }
      }

      else
      {
        v173 = sub_10000D52C(v136, &v250, buf, 0);
        if (v173)
        {
          sub_100020FFC(v173, v174, v175, v176, v177, v178, v179, v180);
          goto LABEL_139;
        }
      }

      v181 = 0;
    }

    v182 = sub_1000216C8(v140);
    if (!v182 && HIDWORD(v182) == 36864)
    {
      v189 = sub_1000217EC(v140);
      v190 = HIDWORD(v189);
      if (v189 || v190 != 36864)
      {
        sub_100011BE0("seshat_reset", @"DeAuthorizeUpdate() -> 0x%x:0x%x", v128, v129, v130, v131, v132, v133, v189, HIDWORD(v189));
      }

      if ((v139 & 1) == 0)
      {
        if ((sub_100019700() & 1) != 0 || v254 >= 0x65 && (v254 - 100) < HIDWORD(v254))
        {
          v248 = (v190 << 40) | 0x500000000000018;
          sub_10000E6C8(&v248, v127, v128, v129, v130, v131, v132, v133);
          CFDataGetBytePtr(v137);
          CFDataGetLength(v137);
          v191 = aks_se_recover_with_opts();
          LOBYTE(v239) = BYTE4(v254);
          sub_100011BE0("seshat_reset", @"pre-emptive unbind from Seshat (0x%x:0x%x -> 0x%x)", v192, v193, v194, v195, v196, v197);
          if (!v191)
          {
            sub_10001DA48(v140, v136);
          }
        }

        if ((v181 & 1) == 0)
        {
          sub_100011BE0("seshat_reset", @"attempting upgrade to v2", v128, v129, v130, v131, v132, v133);
          v248 = 0;
          v198 = *buf;
          v199 = CFDataGetBytePtr(v137);
          v200 = CFDataGetLength(v137);
          if (sub_10001DCB0(v136, v135, v198, v140, v199, v200, v138, &v248))
          {
            sub_10001D6D8(v248, 1);
            v247 = v201;
            sub_10000E458(&v247, v202, v203, v204, v205, v206, v207, v208);
          }
        }
      }

      goto LABEL_110;
    }

    sub_100011BE0("seshat_reset", @"resetCounter() -> 0x%x:0x%x", v183, v184, v185, v186, v187, v188, v182, HIDWORD(v182));
LABEL_139:
    v251 = 0x100000002;
    sub_10000ECA0(&v251, v166, v167, v168, v169, v170, v171, v172);
LABEL_110:
    if (*buf)
    {
      CFRelease(*buf);
      *buf = 0;
    }

    if (v255)
    {
      CFRelease(v255);
      v255 = 0;
    }

    if (v252)
    {
      CFRelease(v252);
    }
  }

  v209 = *(*(a1 + 72) + 8);
  v211 = *(v209 + 24);
  v210 = (v209 + 24);
  if (v211)
  {
    sub_1000213DC(v210, v127, v128, v129, v130, v131, v132, v133, v239);
  }
}

uint64_t sub_100017044()
{
  v0 = sub_100001398();
  if (v0)
  {
    sub_10002109C(v0, &v10);
    return v10;
  }

  else
  {
    sub_10002112C(0, v1, v2, v3, v4, v5, v6, v7, v9);
    return 0;
  }
}

uint64_t sub_100017080(UInt8 *bytes, CFIndex length, char a3)
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = -536870194;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2000000000;
  v31[3] = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2000000000;
  v30[3] = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2000000000;
  v29[3] = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2000000000;
  v28 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = CFDataCreate(kCFAllocatorDefault, bytes, length);
  v11 = v24[3];
  if (v11 && (v11 = CFDataGetLength(v11), v11 > 0))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100017298;
    block[3] = &unk_1000357B8;
    block[4] = v30;
    block[5] = v31;
    block[6] = v29;
    block[7] = &v23;
    v22 = a3;
    block[8] = v27;
    block[9] = &v32;
    dispatch_sync(qword_10003D2A8, block);
  }

  else
  {
    sub_100021140(v11, v4, v5, v6, v7, v8, v9, v10);
  }

  v12 = v24;
  v13 = v24[3];
  if (v13)
  {
    v14 = CFDataGetLength(v13);
    v12 = v24;
    if (v14 >= 1)
    {
      BytePtr = CFDataGetBytePtr(v24[3]);
      v16 = CFDataGetLength(v24[3]);
      v17 = CFDataGetLength(v24[3]);
      memset_s(BytePtr, v16, 0, v17);
      v12 = v24;
    }
  }

  v18 = v12[3];
  if (v18)
  {
    CFRelease(v18);
    v24[3] = 0;
  }

  v19 = *(v33 + 6);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v31, 8);
  _Block_object_dispose(&v32, 8);
  return v19;
}

void sub_100017298(uint64_t a1)
{
  theData = 0;
  v86 = 0;
  v85[0] = 0;
  v85[1] = 0;
  v84 = 1;
  sub_10000CA3C((*(*(a1 + 32) + 8) + 24));
  *(*(*(a1 + 40) + 8) + 24) = sub_100018E64(65000, v2, v3, v4, v5, v6, v7, v8);
  v17 = sub_10000CA6C(*(*(*(a1 + 32) + 8) + 24), (*(*(a1 + 48) + 8) + 24));
  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    sub_1000211A4(v9, v10, v11, v12, v13, v14, v15, v16, v81);
    v56 = 0;
    v57 = 0;
    v30 = 0;
    v59 = 64;
    goto LABEL_42;
  }

  v82 = *(*(*(a1 + 48) + 8) + 24);
  sub_100011BE0("keybagd_SeshatRecover_block_invoke", @"SeshatCreateSessionWithTimeout() -> %llu us", v11, v12, v13, v14, v15, v16, v17);
  v18 = sub_100011F00();
  v19 = *(*(*(a1 + 56) + 8) + 24);
  if (!v19)
  {
    BytePtr = 0;
    goto LABEL_6;
  }

  BytePtr = CFDataGetBytePtr(v19);
  v21 = *(*(*(a1 + 56) + 8) + 24);
  if (!v21)
  {
LABEL_6:
    Length = 0;
    goto LABEL_7;
  }

  Length = CFDataGetLength(v21);
LABEL_7:
  v30 = sub_10000D71C(v18, BytePtr, Length, *(a1 + 80), 0, 0);
  if (v30)
  {
    v31 = sub_100011F00();
    v32 = sub_10000D52C(v31, (*(*(a1 + 64) + 8) + 24), 0, &v84);
    if (!v32)
    {
      sub_100011BE0("keybagd_SeshatRecover_block_invoke", @"got slot = %d, ver = %d", v34, v35, v36, v37, v38, v39, *(*(*(a1 + 64) + 8) + 24), v84);
      v40 = sub_1000190FC((*(*(a1 + 40) + 8) + 24), *(*(*(a1 + 64) + 8) + 24), v30, &theData, &v86, v85);
      v47 = v40;
      v48 = HIDWORD(v40);
      if (v40 || v48 != 36864)
      {
        sub_100011BE0("keybagd_SeshatRecover_block_invoke", @"SE slot is not available. fail. derive() -> 0x%x:0x%x", v41, v42, v43, v44, v45, v46, v40, HIDWORD(v40));
        sub_100011F00();
        aks_se_fail();
        v56 = 0;
        v57 = v47 << 8;
        v58 = (v48 << 16) | 2;
        v59 = 224;
        goto LABEL_28;
      }

      sub_100011F00();
      if (theData)
      {
        CFDataGetBytePtr(theData);
        if (theData)
        {
          CFDataGetLength(theData);
        }
      }

      *(*(*(a1 + 72) + 8) + 24) = aks_se_set_secret();
      if (*(*(*(a1 + 72) + 8) + 24))
      {
        v58 = -1879048190;
        sub_100011BE0("keybagd_SeshatRecover_block_invoke", @"aks_se_set_secret() -> %d", v60, v61, v62, v63, v64, v65, *(*(*(a1 + 72) + 8) + 24), v83);
      }

      else
      {
        if (v84 < 2)
        {
          sub_100011BE0("keybagd_SeshatRecover_block_invoke", @"NOT prearming nonce %d", v60, v61, v62, v63, v64, v65, v84);
        }

        else
        {
          LOBYTE(v82) = v84;
          sub_100011BE0("keybagd_SeshatRecover_block_invoke", @"prearming nonce %d", v60, v61, v62, v63, v64, v65);
          v66 = sub_100011F00();
          if (sub_10000D4AC(v66, 2, v86))
          {
            v59 = 0;
            v57 = 0;
            v58 = -1879048190;
            *(*(*(a1 + 72) + 8) + 24) = -1000;
LABEL_27:
            v56 = 1;
            goto LABEL_28;
          }
        }

        sub_100011F00();
        v67 = *(*(*(a1 + 56) + 8) + 24);
        if (v67)
        {
          CFDataGetBytePtr(v67);
          v68 = *(*(*(a1 + 56) + 8) + 24);
          if (v68)
          {
            CFDataGetLength(v68);
            v69 = *(*(*(a1 + 56) + 8) + 24);
            if (v69)
            {
              CFDataGetBytePtr(v69);
              v70 = *(*(*(a1 + 56) + 8) + 24);
              if (v70)
              {
                CFDataGetLength(v70);
              }
            }
          }
        }

        v58 = -1879048190;
        *(*(*(a1 + 72) + 8) + 24) = aks_change_secret_opts();
        sub_100011BE0("keybagd_SeshatRecover_block_invoke", @"recovery start -> 0x%x", v71, v72, v73, v74, v75, v76, *(*(*(a1 + 72) + 8) + 24), 0x400000000, 0);
      }

      v59 = 0;
      v57 = 0;
      goto LABEL_27;
    }

    sub_100021168(v32, v33, v34, v35, v36, v37, v38, v39);
  }

  else
  {
    sub_100021190(0, v23, v24, v25, v26, v27, v28, v29, v82);
  }

  v59 = 0;
  v57 = 0;
  v56 = 1;
LABEL_42:
  v58 = 2;
LABEL_28:
  v77 = *(*(a1 + 40) + 8);
  v79 = *(v77 + 24);
  v78 = (v77 + 24);
  if (v79)
  {
    sub_1000213DC(v78, v49, v50, v51, v52, v53, v54, v55, v82);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  if ((v56 & 1) == 0)
  {
    v80 = sub_100017044();
    sub_10001F380(@"com.apple.mobile.keybagd.seshat.report", 0, ((v58 | v59 | v57 | (16 * (v80 & 1u))) << 32) | 5);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (theData)
  {
    CFRelease(theData);
  }
}

uint64_t sub_100017718(int a1)
{
  v1 = a1;
  v2 = sub_100019658(a1);
  sub_100011BE0("keybagd_SeshatDebug", @"Posting analyitcs", v3, v4, v5, v6, v7, v8);
  v23 = v1;
  sub_10000DD08(&v23, v9, v10, v11, v12, v13, v14, v15);
  sub_100011BE0("keybagd_SeshatDebug", @"Seshat Debug changed from 0x%llx to 0x%llx", v16, v17, v18, v19, v20, v21, v2, v1);
  return 0;
}

void sub_100017790(id a1)
{
  v8 = 0;
  sub_100011F00();
  aks_get_lock_state();
  sub_100011BE0("seshat_init_block_invoke_2", @"not se entangled or been unlocked or unsupported, not prewarming state: 0x%x", v1, v2, v3, v4, v5, v6, v7, 0);
  sub_1000208D0(0);
}

void sub_100017864(id a1)
{
  v1 = sub_100011F00();
  v21 = 0;
  v22 = 0;
  v20 = -1;
  v19 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  if (aks_get_lock_state())
  {
    sub_100011BE0("seshat_validate_sanity_block_invoke", @"unable to fetch state for handle %d", v2, v3, v4, v5, v6, v7, v1);
  }

  sub_100011BE0("seshat_validate_sanity_block_invoke", @"slot %d needs no recovery", v2, v3, v4, v5, v6, v7, v19);
  if (v22)
  {
    CFRelease(v22);
    v22 = 0;
  }

  if (v18)
  {
    sub_1000213DC(&v18, v8, v9, v10, v11, v12, v13, v14, v15);
  }
}

void sub_100017A5C(id a1, _xpc_activity_s *a2)
{
  state = xpc_activity_get_state(a2);
  if (state == 2)
  {
    sub_100011BE0("data_analytics_init_block_invoke", @"data analytics activity", v4, v5, v6, v7, v8, v9);
    v51 = 0;
    v18 = sub_100011F00();
    lock_state = aks_get_lock_state();
    if (lock_state)
    {
      sub_100011BE0("data_analytics_init_block_invoke", @"get_lock_state() -> 0x%x", v20, v21, v22, v23, v24, v25, lock_state);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_100017D94;
      block[3] = &unk_1000358D8;
      v49 = v18;
      v50 = v51;
      dispatch_sync(qword_10003D2A8, block);
      if ((v51 & 0x2000) != 0)
      {
        sub_100011BE0("data_analytics_init_block_invoke", @"Keybag is bound to SE - not collecting health data", v28, v29, v30, v31, v32, v33);
      }

      else
      {
        dispatch_sync(qword_10003D2A8, &stru_100035918);
      }

      v56 = xmmword_10002F3B0;
      v57 = unk_10002F3C0;
      v55 = 0;
      v54 = 0;
      LOBYTE(v56) = (v51 & 2) == 0;
      if ((v51 & 2) == 0)
      {
        DWORD1(v56) = sub_10000CB24();
      }

      v34 = sub_10000CC9C(&v55 + 1);
      if ((v55 & 0x100) != 0)
      {
        v35 = 1;
      }

      else
      {
        v35 = 2;
      }

      if (v34)
      {
        v35 = 0;
      }

      DWORD2(v56) = v35;
      v53 = 0;
      if (!sub_1000042BC("aks-inactivity", &v53, 0) && v53 == 1)
      {
        sub_1000045A0("aks-inactivity");
        BYTE12(v56) = 1;
      }

      v52 = 0;
      if (AKSIdentityGetSessionTimeWindows() && v52 != -1)
      {
        LODWORD(v57) = v52 / 0xE10;
      }

      v36 = sub_10000CD9C(&v55);
      if (v55)
      {
        v37 = 1;
      }

      else
      {
        v37 = 2;
      }

      if (v36)
      {
        v37 = 0;
      }

      DWORD1(v57) = v37;
      v38 = sub_10000CDF8(&v54);
      if (v54)
      {
        v46 = 1;
      }

      else
      {
        v46 = 2;
      }

      if (v38)
      {
        v46 = 0;
      }

      DWORD2(v57) = v46;
      sub_10000DB1C(&v56, v39, v40, v41, v42, v43, v44, v45);
      sub_1000150D8(v18, v47, 0, 0);
      sub_1000121C4();
    }
  }

  else if (!state)
  {
    sub_100011BE0("data_analytics_init_block_invoke", @"Checking in for data analytics", v4, v5, v6, v7, v8, v9);
    v10 = xpc_activity_copy_criteria(a2);
    if (v10)
    {
      xpc_release(v10);
      v17 = @"activity criteria already set";
    }

    else
    {
      v26 = xpc_dictionary_create(0, 0, 0);
      if ((sub_10001966C() & 0x80) != 0)
      {
        v27 = 30;
      }

      else
      {
        v27 = 86400;
      }

      xpc_dictionary_set_int64(v26, XPC_ACTIVITY_INTERVAL, v27);
      xpc_dictionary_set_string(v26, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
      xpc_dictionary_set_BOOL(v26, XPC_ACTIVITY_ALLOW_BATTERY, 1);
      xpc_activity_set_criteria(a2, v26);
      xpc_release(v26);
      v17 = @"set activity criteria";
    }

    sub_100011BE0("data_analytics_init_block_invoke", v17, v11, v12, v13, v14, v15, v16);
  }
}

void sub_100017D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 36);
  v64 = 0;
  if ((v8 & 2) != 0)
  {
    sub_100021250(a1, a2, a3, a4, a5, a6, a7, a8, v63);
    return;
  }

  if (sub_10002212C())
  {
    v9 = 16387;
  }

  else
  {
    v9 = 3;
  }

  v10 = sub_100001398();
  v18 = v10;
  if (v10)
  {
    v9 |= (sub_10001D024(v10) != 0) << 15;
  }

  LOWORD(v64) = v9;
  if ((v8 & 0x2000) == 0)
  {
    sub_10000E0A4(&v64, v11, v12, v13, v14, v15, v16, v17);
    if (!v18)
    {
      return;
    }

    goto LABEL_27;
  }

  v19 = sub_100011F00();
  v68 = 0;
  v69 = 0;
  v67 = 0;
  theData = 0;
  v65 = -1;
  v20 = sub_10000D52C(v19, &v67, 0, 0);
  if (v20)
  {
    sub_100021264(v20, v21, v22, v23, v24, v25, v26, v27);
LABEL_35:
    LOWORD(v50) = 0;
    v52 = 0;
    goto LABEL_18;
  }

  v69 = sub_100018E64(65000, v21, v22, v23, v24, v25, v26, v27);
  if (!v69)
  {
    sub_10002128C(0, v28, v29, v30, v31, v32, v33, v34);
    goto LABEL_35;
  }

  v35 = sub_100019440(&v69, &theData, &v65, &v68, &v68 + 4);
  if (v35 || HIDWORD(v35) != 36864)
  {
    sub_100011BE0("is_slot_v2", @"getData() -> 0x%x:0x%x", v36, v37, v38, v39, v40, v41, v35, HIDWORD(v35));
    goto LABEL_35;
  }

  BytePtr = CFDataGetBytePtr(theData);
  if (BytePtr[v67] == 238)
  {
    LOWORD(v50) = 0;
  }

  else
  {
    v51 = CFDataGetBytePtr(theData);
    v50 = (v51[v67] >> 5) & 4;
  }

  v52 = 1;
LABEL_18:
  if (v69)
  {
    sub_1000213DC(&v69, v43, v44, v45, v46, v47, v48, v49, v63);
  }

  v53 = theData;
  if (theData)
  {
    CFRelease(theData);
  }

  if (v52)
  {
    if (aks_get_configuration())
    {
      LOWORD(v61) = v64;
    }

    else
    {
      v62 = sub_10000C448(0, kAKSConfigRecoveryFlags);
      v61 = v64 & 0xC3FF | (((v62 >> 3) & 1) << 10) & 0xFFFFC7FF | ((v62 & 1) << 11) & 0xCFFF | (((v62 >> 2) & 1) << 13) | (((v62 >> 1) & 1) << 12);
    }

    LOWORD(v64) = v61 & 0xFFC3 | v50;
    sub_10000DE2C(&v64, v54, v55, v56, v57, v58, v59, v60);
    if (v18)
    {
      goto LABEL_27;
    }
  }

  else
  {
    sub_1000212B4(v53, v43, v44, v45, v46, v47, v48, v49);
    if (v18)
    {
LABEL_27:
      CFRelease(v18);
    }
  }
}

void sub_100017FDC(id a1, _xpc_activity_s *a2)
{
  if (!xpc_activity_get_state(a2))
  {
    sub_100011BE0("space_repetition_kick_block_invoke", @"space_repetition Check in", v3, v4, v5, v6, v7, v8);
    v9 = xpc_activity_copy_criteria(a2);
    if (v9)
    {
      xpc_release(v9);
      v16 = @"space_repetition activity criteria already set";
    }

    else
    {
      v17 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v17, XPC_ACTIVITY_INTERVAL, 3600);
      xpc_dictionary_set_string(v17, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
      xpc_dictionary_set_BOOL(v17, XPC_ACTIVITY_ALLOW_BATTERY, 1);
      xpc_activity_set_criteria(a2, v17);
      xpc_release(v17);
      v16 = @"space_repetition set activity criteria";
    }

    sub_100011BE0("space_repetition_kick_block_invoke", v16, v10, v11, v12, v13, v14, v15);
  }
}

void sub_1000180D4(uint64_t a1)
{
  valuePtr = 0;
  v2 = sub_100001398();
  if (v2)
  {
    v10 = v2;
    v11 = sub_10001CF58(v2);
    if (v11 && CFNumberGetValue(v11, kCFNumberSInt64Type, &valuePtr))
    {
      **(a1 + 32) = valuePtr;
    }

    v12 = sub_10001CF6C(v10);
    if (v12)
    {
      if (CFNumberGetValue(v12, kCFNumberSInt64Type, &valuePtr))
      {
        **(a1 + 40) = valuePtr;
      }
    }

    CFRelease(v10);
  }

  else
  {
    sub_1000212DC(0, v3, v4, v5, v6, v7, v8, v9, v13);
  }
}

BOOL sub_100018168(id a1, void *a2)
{
  sub_100011F00();
  if (!aks_get_lock_state())
  {
    return 1;
  }

  sub_1000212F0(@"no lock state", v2, v3, v4, v5, v6, v7, v8);
  return 0;
}

void sub_1000181C4(uint64_t a1)
{
  v94 = 0;
  v95 = 0;
  *v92 = 0;
  theData = 0;
  v91 = -1;
  v2 = sub_10000D52C(*(a1 + 72), (*(*(a1 + 32) + 8) + 24), 0, 0);
  if (v2)
  {
    sub_100021314(v2, v3, v4, v5, v6, v7, v8, v9, v88);
    goto LABEL_11;
  }

  sub_10000CA3C((*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 48) + 8) + 24) = sub_100018E64(65000, v10, v11, v12, v13, v14, v15, v16);
  sub_10000CA6C(*(*(*(a1 + 40) + 8) + 24), (*(*(a1 + 56) + 8) + 24));
  v24 = *(*(a1 + 48) + 8);
  v26 = *(v24 + 24);
  v25 = (v24 + 24);
  if (!v26)
  {
    sub_1000213A0(v25, v17, v18, v19, v20, v21, v22, v23, v88);
    goto LABEL_11;
  }

  v27 = sub_100019440(v25, &theData, &v91, v92, &v92[1]);
  if (v27 || HIDWORD(v27) != 36864)
  {
    sub_100011BE0("seshat_reset_count_after_wc_recovery_block_invoke", @"getData() -> 0x%x:0x%x", v28, v29, v30, v31, v32, v33, v27, HIDWORD(v27));
    goto LABEL_11;
  }

  v89 = *(*(*(a1 + 32) + 8) + 24);
  sub_100011BE0("seshat_reset_count_after_wc_recovery_block_invoke", @"got slot = %d, gwc = %d", v28, v29, v30, v31, v32, v33);
  v90 = 1000 * ((v92[1] + 999) / 0x3E8u);
  sub_10000EB40(&v90, v34, v35, v36, v37, v38, v39, v40);
  if (CFDataGetBytePtr(theData)[*(*(*(a1 + 32) + 8) + 24)] != 238 && CFDataGetBytePtr(theData)[*(*(*(a1 + 32) + 8) + 24)] < 0)
  {
    sub_100011BE0("seshat_reset_count_after_wc_recovery_block_invoke", @"slot is v2", v41, v42, v43, v44, v45, v46);
    v72 = sub_10001E1DC(*(a1 + 72), &v95, &v94);
    if (v72)
    {
      sub_100021328(v72, v73, v74, v75, v76, v77, v78, v79);
      goto LABEL_11;
    }

    v80 = sub_10001974C(2, v92[1], v94, v75, v76, v77, v78, v79);
    if ((v80 & 1) == 0)
    {
      sub_100021350(v80, v81, v82, v83, v84, v85, v86, v87);
      goto LABEL_11;
    }
  }

  else
  {
    sub_100011BE0("seshat_reset_count_after_wc_recovery_block_invoke", @"slot is v1", v41, v42, v43, v44, v45, v46);
    v47 = sub_10000D52C(*(a1 + 72), (*(*(a1 + 32) + 8) + 24), &v95, 0);
    if (v47)
    {
      sub_100021378(v47, v48, v49, v50, v51, v52, v53, v54);
      goto LABEL_11;
    }
  }

  v55 = sub_1000216C8(*(*(a1 + 48) + 8) + 24);
  if (v55 || HIDWORD(v55) != 36864)
  {
    sub_100011BE0("seshat_reset_count_after_wc_recovery_block_invoke", @"resetCounter() -> 0x%x:0x%x", v56, v57, v58, v59, v60, v61, v55, HIDWORD(v55));
  }

  else
  {
    sub_100011BE0("seshat_reset_count_after_wc_recovery_block_invoke", @"reset SEshat", v56, v57, v58, v59, v60, v61);
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

LABEL_11:
  if (v95)
  {
    CFRelease(v95);
    v95 = 0;
  }

  if (v94)
  {
    CFRelease(v94);
    v94 = 0;
  }

  if (theData)
  {
    CFRelease(theData);
    theData = 0;
  }

  v69 = *(*(a1 + 48) + 8);
  v71 = *(v69 + 24);
  v70 = (v69 + 24);
  if (v71)
  {
    sub_1000213DC(v70, v62, v63, v64, v65, v66, v67, v68, v89);
  }
}

uint64_t sub_1000185D0(uint64_t a1)
{
  v24 = 0;
  v23 = 0;
  if ((byte_10003D3A1 & 1) == 0)
  {
    v21 = 0;
    v22 = 0;
    sub_10000CA3C(&v22);
    v2 = objc_alloc_init(NFHWMonitor);
    [objc_msgSend(sub_100018730() "sharedHardwareManager")];
    v3 = [objc_msgSend(sub_100018730() "sharedHardwareManager")];
    v4 = v3;
    if ((v3 & 0xFFFFFFFD) == 1)
    {
      v5 = [(NFHWMonitor *)v2 waitForNotificationOrTimeout:a1]!= 0;
      LOBYTE(v23) = v5;
      v6 = [objc_msgSend(sub_100018730() "sharedHardwareManager")];
    }

    else
    {
      v5 = 0;
      v6 = v3;
    }

    [objc_msgSend(sub_100018730() "sharedHardwareManager")];

    if (v6 == 5 || v6 == 2)
    {
      byte_10003D3A0 = 1;
    }

    else
    {
      sub_100011BE0("SeshatHWAvailable", @"getHwSupport=%d, prev=%d. timedout=%d, intepreting as unsupported.", v7, v8, v9, v10, v11, v12, v6, v4, v5);
      byte_10003D3A0 = 0;
      byte_10003D3A1 = 1;
      sub_10000D7A4();
    }

    sub_10000CA6C(v22, &v21);
    HIDWORD(v23) = v21 / 0xF4240;
    v24 = v6;
    sub_10000DA00(&v23, v13, v14, v15, v16, v17, v18, v19);
  }

  return byte_10003D3A0;
}

uint64_t sub_100018730()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_1000190C0;
  v0 = qword_10003D3B0;
  v7 = sub_1000190D0;
  v8 = qword_10003D3B0;
  if (!qword_10003D3B0)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10001981C;
    v2[3] = &unk_100034CD0;
    v2[4] = &v3;
    sub_10001981C(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100018804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001881C()
{
  result = sub_100018854();
  if (result)
  {

    return sub_1000185D0(20);
  }

  return result;
}

uint64_t sub_100018854()
{
  if (byte_10003D3C0)
  {
    return 1;
  }

  result = sub_1000198B8(0);
  if (result)
  {
    result = sub_100018730() != 0;
  }

  byte_10003D3C0 = result;
  return result;
}

void sub_1000188A0(time_t a1)
{
  v15 = a1;
  v1 = objc_autoreleasePoolPush();
  if (sub_100018854())
  {
    sub_100011BE0("SeshatTTR", @"requesting NF TTR", v2, v3, v4, v5, v6, v7);
    v17 = 0;
    v18 = &v17;
    v19 = 0x3052000000;
    v20 = sub_1000190C0;
    v8 = qword_10003D3C8;
    v21 = sub_1000190D0;
    v22 = qword_10003D3C8;
    if (!qword_10003D3C8)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000199FC;
      v16[3] = &unk_100034CD0;
      v16[4] = &v17;
      sub_1000199FC(v16);
      v8 = v18[5];
    }

    _Block_object_dispose(&v17, 8);
    [v8 requestTapToRadar:+[NSString stringWithFormat:](NSString preferences:{"stringWithFormat:", @"SesHat session failure on %s", ctime(&v15)), @"com.apple.keybagd.ttr"}];
    sub_100011BE0("SeshatTTR", @"requested NF TTR", v9, v10, v11, v12, v13, v14);
  }

  objc_autoreleasePoolPop(v1);
}

void sub_1000189F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100018A0C(int a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100018D78(1, a2, a3, a4, a5, a6, a7, a8, v27);
  v17 = 0;
  v18 = 1000000 * a1;
  do
  {
    if (v17)
    {
      __rqtp = xmmword_10002F3D0;
      nanosleep(&__rqtp, 0);
    }

    sub_100011BE0("SeshatCreateSessionWithTimeoutVerbose", @"asking for session with timeout of %lld nsec (attempt: %d)", v11, v12, v13, v14, v15, v16, v18, v17);
    if (a3)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
    }

    if (a2)
    {
      *a2 = 0;
    }

    v45 = 0;
    v46 = &v45;
    v47 = 0x3052000000;
    v48 = sub_1000190C0;
    v49 = sub_1000190D0;
    v50 = 0;
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x2020000000;
    v44 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x3052000000;
    v40 = sub_1000190C0;
    v41 = sub_1000190D0;
    v42 = 0;
    if (sub_100018854())
    {
      if (sub_1000185D0(20))
      {
        dispatch_assert_queue_V2(qword_10003D2A8);
        if ((qword_10003D3A8 & 0x100) == 0)
        {
          if (a2)
          {
            *a2 = 0;
          }

          if (qword_10003D3E0 != -1)
          {
            sub_10002245C();
          }

          v19 = dispatch_semaphore_create(0);
          dispatch_retain(v19);
          v20 = [sub_100018730() sharedHardwareManager];
          __rqtp.tv_sec = _NSConcreteStackBlock;
          __rqtp.tv_nsec = 3221225472;
          v31 = sub_100019A80;
          v32 = &unk_100035BE0;
          v33 = v19;
          v34 = v43;
          v35 = &v37;
          v36 = &v45;
          v21 = [v20 startSesHatSession:&__rqtp];
          v22 = dispatch_time(0, v18);
          dispatch_semaphore_wait(v19, v22);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100019BE8;
          block[3] = &unk_100035C08;
          block[4] = v21;
          block[5] = v43;
          block[6] = a2;
          dispatch_sync(qword_10003D3D8, block);
          dispatch_release(v19);
        }
      }
    }

    v23 = v38[5];
    if (a3 && v23)
    {
      *(a3 + 8) = [sub_100019308() smallCrumbsFromError:v38[5]];
      *a3 = [sub_100019308() largeCrumbsFromError:v38[5]];
      v23 = v38[5];
    }

    if (v23)
    {
    }

    v24 = v46[5];
    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(v43, 8);
    _Block_object_dispose(&v45, 8);
    if (v17 > 3)
    {
      break;
    }

    v17 = (v17 + 1);
  }

  while (!v24);
  if (!v24)
  {
    sub_100018D78(0, v25, v11, v12, v13, v14, v15, v16, v28);
    sub_10000D7A4();
  }

  return v24;
}
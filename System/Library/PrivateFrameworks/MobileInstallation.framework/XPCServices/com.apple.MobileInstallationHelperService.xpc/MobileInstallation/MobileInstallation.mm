id MobileInstallationHelperServiceProtocolInterface()
{
  os_unfair_lock_lock(&unk_10002DEF0);
  WeakRetained = objc_loadWeakRetained(&qword_10002DEF8);
  if (!WeakRetained)
  {
    WeakRetained = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MobileInstallationHelperServiceProtocol];
    v1 = objc_opt_class();
    v2 = objc_opt_class();
    v3 = objc_opt_class();
    v4 = [NSSet setWithObjects:v1, v2, v3, objc_opt_class(), 0];
    [WeakRetained setClasses:v4 forSelector:"stagingLocationForInstallLocation:withinStagingSubsytem:usingUniqueName:completion:" argumentIndex:0 ofReply:0];

    v5 = [NSSet setWithObjects:objc_opt_class(), 0];
    [WeakRetained setClasses:v5 forSelector:"stagingLocationForSystemContentWithinSubsystem:completion:" argumentIndex:0 ofReply:1];

    v6 = [NSSet setWithObjects:objc_opt_class(), 0];
    [WeakRetained setClasses:v6 forSelector:"stagingLocationForUserContentWithinSubsystem:completion:" argumentIndex:0 ofReply:1];

    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
    [WeakRetained setClasses:v8 forSelector:"allStagingLocationsWithinSubsystem:completion:" argumentIndex:0 ofReply:1];

    v9 = [NSSet setWithObjects:objc_opt_class(), 0];
    [WeakRetained setClasses:v9 forSelector:"stagingLocationForURL:withinStagingSubsytem:usingUniqueName:completion:" argumentIndex:0 ofReply:1];

    objc_storeWeak(&qword_10002DEF8, WeakRetained);
  }

  os_unfair_lock_unlock(&unk_10002DEF0);

  return WeakRetained;
}

uint64_t sub_100001A44(uint64_t a1)
{
  qword_10002DF00 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100002300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002330(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002348(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = [objc_opt_class() _relativeStagingPathForExternalVolumeWithinStagingSubsystem:*(a1 + 56)];
  v9 = [v7 URLByAppendingPathComponent:v8 isDirectory:1];

  if ([*(*(*(a1 + 48) + 8) + 40) itemExistsAtURL:v9])
  {
    v10 = [[MIStagingRootVolumeUUID alloc] initWithVolumeUUID:v12 stagingSubsystem:*(a1 + 56)];
    v11 = [[MIStagingLocation alloc] initWithStagingRoot:v10 relativeStagingBaseDirectory:0];
    [*(a1 + 40) addObject:v11];
  }

  *a4 = 0;
}

void sub_100003AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003AE4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003AFC(uint64_t a1, uint64_t a2)
{
  v4 = [NSString stringWithFileSystemRepresentation:*(a2 + 24)];
  if ([v4 hasPrefix:@"/private/"])
  {
    v5 = [v4 substringFromIndex:{objc_msgSend(@"/private", "length")}];

    v4 = v5;
  }

  if (*(a1 + 32) && ([v4 hasPrefix:?] & 1) != 0 || (v6 = *(a1 + 40), objc_msgSend(v4, "lastPathComponent"), v7 = objc_claimAutoreleasedReturnValue(), LOBYTE(v6) = objc_msgSend(v6, "containsObject:", v7), v7, (v6 & 1) != 0))
  {
    v8 = 1;
  }

  else
  {
    v9 = [*(a1 + 48) objectForKeyedSubscript:v4];
    v11 = v9;
    if (v9)
    {
      v12 = [v9 objectForKeyedSubscript:@"MIBOMFileModeKey"];
      v13 = [v12 unsignedShortValue];
      v14 = *(a2 + 60) - 1;
      if (v14 > 4)
      {
        v15 = &NSFileTypeUnknown;
      }

      else
      {
        v15 = *(&off_1000248D8 + v14);
      }

      v19 = *v15;
      v20 = [v11 objectForKeyedSubscript:NSFileType];
      if ([v19 isEqual:v20])
      {
        [*(a1 + 48) removeObjectForKey:v4];
        if (*(a1 + 80))
        {
          v22 = 4;
        }

        else
        {
          v22 = 0xFFFFFFFFLL;
        }

        if ((*(a2 + 56) & 0x20) != 0)
        {
          if (gLogHandle && *(gLogHandle + 44) >= 7)
          {
            v35 = *(a2 + 24);
            MOLogWrite();
          }

          v23 = 32;
        }

        else
        {
          v23 = 0;
        }

        v27 = *(a1 + 56);
        v28 = *(a2 + 24);
        v29 = *(a1 + 72);
        v30 = *(a1 + 76);
        v31 = *(a1 + 81);
        v36 = 0;
        LOBYTE(v35) = v31;
        v8 = [v27 bulkSetPropertiesForPath:v28 UID:v29 GID:v30 mode:v13 flags:v23 dataProtectionClass:v22 removeACL:v35 error:&v36];
        v32 = v36;
        v33 = v36;
        if ((v8 & 1) == 0)
        {
          objc_storeStrong((*(*(a1 + 64) + 8) + 40), v32);
        }
      }

      else
      {
        v24 = _CreateAndLogError("+[MIHelperBomVerifier applyAndVerifyBOMPropertiesForURL:toUID:GID:removeACLs:setProtectionClass:setFileAttributes:excludePathsAtURL:error:]_block_invoke", 104, MIInstallerErrorDomain, 231, 0, 0, @"Item type in Bom entry, %@, does not match type on disk, %@, for %@", v21, v20);
        v25 = *(*(a1 + 64) + 8);
        v26 = *(v25 + 40);
        *(v25 + 40) = v24;

        v8 = 0;
      }
    }

    else
    {
      v16 = _CreateAndLogError("+[MIHelperBomVerifier applyAndVerifyBOMPropertiesForURL:toUID:GID:removeACLs:setProtectionClass:setFileAttributes:excludePathsAtURL:error:]_block_invoke", 94, MIInstallerErrorDomain, 230, 0, 0, @"Found item in app that did not exist in Bom: %@", v10, v4);
      v17 = *(*(a1 + 64) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      v8 = 0;
    }
  }

  return v8;
}

uint64_t MIHelperServiceTestModeIsEnabledWithData(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = atomic_load(byte_10002DF10);
  if (v6)
  {
    if (qword_10002DF28 != -1)
    {
      sub_100015F74();
    }

    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_1000040C8;
    v19 = sub_1000040D8;
    v20 = 0;
    v7 = qword_10002DF18;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000040E0;
    v10[3] = &unk_100024980;
    v11 = v5;
    v12 = &v15;
    v13 = &v21;
    v14 = a2;
    dispatch_sync(v7, v10);
    v8 = *(v22 + 24);
    if (a3 && (v22[3] & 1) != 0)
    {
      *a3 = v16[5];
      v8 = *(v22 + 24);
    }

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1000040C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000040E0(uint64_t a1)
{
  v2 = qword_10002DF20;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100004184;
  v3[3] = &unk_100024958;
  v4 = *(a1 + 32);
  v6 = *(a1 + 56);
  v5 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_100004184(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([*(a1 + 32) hasPrefix:a2])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          if ([v13 mode] == *(a1 + 56))
          {
            v14 = [v13 testSpecificValidationData];
            v15 = v14;
            if (v14)
            {
              v16 = [v14 copy];
              v17 = *(*(a1 + 40) + 8);
              v18 = *(v17 + 40);
              *(v17 + 40) = v16;
            }

            *(*(*(a1 + 48) + 8) + 24) = 1;
            *a4 = 1;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }
  }
}

void MIHelperServiceSetTestMode(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (qword_10002DF28 != -1)
  {
    sub_100015F74();
  }

  v7 = qword_10002DF18;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000043E8;
  block[3] = &unk_1000249A8;
  v12 = v5;
  v13 = a2;
  v11 = v6;
  v8 = v5;
  v9 = v6;
  dispatch_sync(v7, block);
}

void sub_1000043E8(void *a1)
{
  v3 = [[TestModeMetadata alloc] initWithMode:a1[6] testSpecificValidationData:a1[4]];
  v2 = [qword_10002DF20 objectForKeyedSubscript:a1[5]];
  if (!v2)
  {
    v2 = [NSMutableArray arrayWithCapacity:0];
    [qword_10002DF20 setObject:v2 forKeyedSubscript:a1[5]];
  }

  [v2 addObject:v3];
}

void MIHelperServiceDisableTestModes(uint64_t a1)
{
  atomic_store(0, byte_10002DF10);
  if (qword_10002DF28 != -1)
  {
    sub_100015F74();
  }

  v2 = qword_10002DF18;

  dispatch_sync(v2, &stru_1000249E8);
}

void sub_100004514(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.MobileInstallationHelperService.TestMode", v1);
  v3 = qword_10002DF18;
  qword_10002DF18 = v2;

  qword_10002DF20 = [NSMutableDictionary dictionaryWithCapacity:0];

  _objc_release_x1();
}

uint64_t MIMachOUnhideArchsSavingOriginalHeader(const char *a1)
{
  size = 0;
  v15 = 0;
  v2 = open(a1, 256);
  if ((v2 & 0x80000000) != 0)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v6 = __error();
      strerror(*v6);
      MOLogWrite();
    }

    v4 = 0;
    goto LABEL_12;
  }

  v3 = v2;
  if (fgetxattr(v2, "com.apple.installd.hidden_archs_fat_header", 0, 0, 0, 0) != -1)
  {
    if (gLogHandle && *(gLogHandle + 44) < 5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (sub_100015BE4(v3, &v15, &size))
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v7 = __error();
      strerror(*v7);
      MOLogWrite();
    }

    v5 = 0;
    v4 = 0;
    goto LABEL_32;
  }

  if (size)
  {
    v4 = malloc_type_malloc(size, 0x47D90AE5uLL);
    *__error() = 0;
    v8 = size;
    if (v8 != pread(v3, v4, size, 0))
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    close(v3);
    v9 = open(a1, 258);
    if ((v9 & 0x80000000) == 0)
    {
      LODWORD(v3) = v9;
      if (fsetxattr(v9, "com.apple.installd.hidden_archs_fat_header", v4, size, 0, 2))
      {
        if (gLogHandle && *(gLogHandle + 44) < 3)
        {
          goto LABEL_31;
        }
      }

      else
      {
        *__error() = 0;
        v13 = size;
        if (v13 == pwrite(v3, v15, size, 0))
        {
          if (gLogHandle && *(gLogHandle + 44) >= 7)
          {
            MOLogWrite();
          }

          goto LABEL_7;
        }

        if (gLogHandle && *(gLogHandle + 44) < 3)
        {
LABEL_31:
          v5 = 0;
          goto LABEL_32;
        }
      }

LABEL_30:
      v10 = __error();
      strerror(*v10);
      MOLogWrite();
      goto LABEL_31;
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v12 = __error();
      strerror(*v12);
      MOLogWrite();
    }

LABEL_12:
    v5 = 0;
    goto LABEL_33;
  }

  if (!gLogHandle || *(gLogHandle + 44) < 7)
  {
    goto LABEL_6;
  }

LABEL_5:
  MOLogWrite();
LABEL_6:
  v4 = 0;
LABEL_7:
  v5 = 1;
LABEL_32:
  close(v3);
LABEL_33:
  if (v15)
  {
    free(v15);
  }

  if (v4)
  {
    free(v4);
  }

  return v5;
}

uint64_t MIMachOCreateHiddenArchsExecutableIfNeeded(const char *a1, char *a2, _BYTE *a3)
{
  *a3 = 0;
  v5 = open(a1, 256);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = v5;
    v7 = fgetxattr(v5, "com.apple.installd.hidden_archs_fat_header", 0, 0, 0, 0);
    if (v7 < 0)
    {
      if (*__error() == 93)
      {
        v9 = 0;
        goto LABEL_17;
      }

      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v16 = __error();
        strerror(*v16);
        MOLogWrite();
      }

LABEL_32:
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        MOLogWrite();
      }

      v9 = 0;
LABEL_36:
      v14 = 0;
LABEL_37:
      v12 = v6;
      goto LABEL_38;
    }

    v8 = v7;
    v9 = malloc_type_malloc(v7, 0xD8332BFBuLL);
    v10 = fgetxattr(v6, "com.apple.installd.hidden_archs_fat_header", v9, v8, 0, 0);
    if (v10 < 0)
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
LABEL_27:
        if (v9)
        {
          free(v9);
        }

        goto LABEL_32;
      }

      v15 = __error();
      strerror(*v15);
    }

    else
    {
      if (v8 == v10)
      {
        if (v8)
        {
          v11 = mkstemp(a2);
          if (v11 != -1)
          {
            v12 = v11;
            if (fcopyfile(v6, v11, 0, 0xAu))
            {
              if (gLogHandle && *(gLogHandle + 44) < 3)
              {
                goto LABEL_53;
              }
            }

            else
            {
              *__error() = 0;
              if (v8 == pwrite(v12, v9, v8, 0))
              {
                if (gLogHandle && *(gLogHandle + 44) >= 7)
                {
                  MOLogWrite();
                }

                v14 = 1;
                *a3 = 1;
LABEL_54:
                close(v6);
                if (v12 < 0)
                {
LABEL_39:
                  if (v9)
                  {
                    free(v9);
                  }

                  return v14;
                }

LABEL_38:
                close(v12);
                goto LABEL_39;
              }

              if (gLogHandle && *(gLogHandle + 44) < 3)
              {
LABEL_53:
                v14 = 0;
                goto LABEL_54;
              }
            }

            v19 = __error();
            strerror(*v19);
            MOLogWrite();
            goto LABEL_53;
          }

          if (!gLogHandle || *(gLogHandle + 44) >= 3)
          {
            v18 = __error();
            strerror(*v18);
            MOLogWrite();
          }

          goto LABEL_36;
        }

LABEL_17:
        if (gLogHandle && *(gLogHandle + 44) >= 7)
        {
          MOLogWrite();
        }

        v14 = 1;
        goto LABEL_37;
      }

      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_27;
      }
    }

    MOLogWrite();
    goto LABEL_27;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v13 = __error();
    strerror(*v13);
    MOLogWrite();
  }

  return 0;
}

uint64_t hardlink_copy_hierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, CFErrorRef *a10)
{
  v10 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v10;
  bzero(to, 0x400uLL);
  bzero(v300, 0x400uLL);
  bzero(&v298, 0x410uLL);
  v297[0] = v25;
  v297[1] = 0;
  v26 = fts_open_b(v297, 85, &stru_100024A48);
  if (!v26)
  {
    v41 = __error();
    v42 = strerror(*v41);
    v47 = sub_100006460("hardlink_copy_hierarchy", 746, v43, v44, 0, v45, @"fts_open of %s failed: %s", v46, v25, v42);
    goto LABEL_24;
  }

  v27 = v26;
  if (!v22)
  {
    bzero(cf, 0x400uLL);
    if (__strlcpy_chk() < 0x400)
    {
      LOWORD(v262.st_dev) = 0;
      *__str = 0;
      if ((sub_10000685C(cf, v300, &v262, __str) & 1) == 0)
      {
        v47 = sub_100006460("hardlink_copy_hierarchy", 786, v56, v57, *__str, v58, @"Failed to realpath parent of %s", v59, cf);
        v66 = *__str;
        if (!*__str)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (!LOWORD(v262.st_dev) || (v262.st_dev & 0xF000) == 0x4000)
      {
        v85 = 0;
        v86 = 0;
        goto LABEL_41;
      }

      v55 = sub_100006460("hardlink_copy_hierarchy", 792, v56, v57, 0, v58, @"Entity exists at %s but it's not a directory", v59, v300);
      goto LABEL_14;
    }

    v52 = @"Destination path was too long";
    v53 = 779;
LABEL_13:
    v55 = sub_100006460("hardlink_copy_hierarchy", v53, v48, v49, 0, v50, v52, v51, v245, st_mode, v254);
LABEL_14:
    v47 = v55;
    goto LABEL_23;
  }

  if (!realpath_DARWIN_EXTSN(v24, v300))
  {
    v54 = __error();
    st_mode = v300;
    v254 = strerror(*v54);
    v245 = v24;
    v52 = @"realpath of '%s' failed at element '%s': %s";
    v53 = 752;
    goto LABEL_13;
  }

  memset(&v262, 0, sizeof(v262));
  v28 = open(v22, 256);
  if (v28 < 0)
  {
    v60 = __error();
    v61 = strerror(*v60);
    v36 = sub_100006460("open_delta_manifest", 416, v62, v63, 0, v64, @"Could not open %s: %s", v65, v22, v61);
LABEL_20:
    v47 = sub_100006460("hardlink_copy_hierarchy", 758, v37, v38, v36, v39, @"Failed to open manifest %s", v40, v22);
    if (v36)
    {
      v66 = v36;
LABEL_22:
      CFRelease(v66);
    }

LABEL_23:
    fts_close(v27);
    goto LABEL_24;
  }

  v29 = v28;
  if (fstat(v28, &v262))
  {
    v30 = __error();
    v247 = strerror(*v30);
    v35 = sub_100006460("open_delta_manifest", 421, v31, v32, 0, v33, @"Could not stat %s: %s", v34, v22, v247);
LABEL_7:
    v36 = v35;
LABEL_8:
    close(v29);
    goto LABEL_20;
  }

  v68 = mmap(0, v262.st_size, 1, 1026, v29, 0);
  if (v68 == -1)
  {
    v164 = __error();
    v249 = strerror(*v164);
    v35 = sub_100006460("open_delta_manifest", 435, v165, v166, 0, v167, @"Failed to map file at %s; error %s", v168, v22, v249);
    goto LABEL_7;
  }

  v260 = v68;
  if (madvise(v68, v262.st_size, 2) && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v69 = __error();
    v245 = strerror(*v69);
    MOLogWrite();
  }

  v70 = malloc_type_calloc(1uLL, 0x18uLL, 0x1010040113C0ABBuLL);
  if (!v70)
  {
    v36 = sub_100006460("open_delta_manifest", 446, v71, v72, 0, v73, @"Failed to allocate command stream object", v74);
    munmap(v260, v262.st_size);
    goto LABEL_8;
  }

  v75 = v70;
  *v70 = v260;
  v70[1] = v262.st_size;
  v70[2] = 0;
  v340 = 0u;
  v339 = 0u;
  v338 = 0u;
  v337 = 0u;
  v336 = 0u;
  v335 = 0u;
  v334 = 0u;
  v333 = 0u;
  v332 = 0u;
  v331 = 0u;
  v330 = 0u;
  v329 = 0u;
  v328 = 0u;
  v327 = 0u;
  v326 = 0u;
  v325 = 0u;
  v324 = 0u;
  v323 = 0u;
  v322 = 0u;
  v321 = 0u;
  v320 = 0u;
  v319 = 0u;
  v318 = 0u;
  v317 = 0u;
  v316 = 0u;
  v315 = 0u;
  v314 = 0u;
  v313 = 0u;
  v312 = 0u;
  v311 = 0u;
  v310 = 0u;
  *cf = 0u;
  v295 = 0u;
  v296 = 0u;
  v293 = 0u;
  v294 = 0u;
  v291 = 0u;
  v292 = 0u;
  v289 = 0u;
  v290 = 0u;
  v287 = 0u;
  v288 = 0u;
  v285 = 0u;
  v286 = 0u;
  v283 = 0u;
  v284 = 0u;
  v281 = 0u;
  v282 = 0u;
  v279 = 0u;
  v280 = 0u;
  v277 = 0u;
  v278 = 0u;
  v275 = 0u;
  v276 = 0u;
  v273 = 0u;
  v274 = 0u;
  v271 = 0u;
  v272 = 0u;
  v269 = 0u;
  v270 = 0u;
  v267 = 0u;
  v268 = 0u;
  *__str = 0u;
  v266 = 0u;
  v264 = 0;
  v263 = 0;
  v308 = 0;
  v307 = 0;
  if ((sub_100006B98(v70, 0, &v263, 6uLL) & 1) == 0)
  {
    v169 = @"Failed to read magic";
    v170 = 299;
LABEL_168:
    v80 = sub_100006460("validate_stream", v170, v76, v77, 0, v78, v169, v79, v245);
    goto LABEL_169;
  }

  if (v263 ^ 0x44617069 | v264)
  {
    v80 = sub_100006460("validate_stream", 305, v76, v77, 0, v78, @"Stream had invalid magic: %s", v79, &v263);
LABEL_169:
    v171 = v80;
LABEL_170:
    v36 = sub_100006460("open_delta_manifest", 456, v81, v82, v171, v83, @"Invalid manifest file at %s", v84, v22);
    if (v171)
    {
      CFRelease(v171);
    }

    munmap(v260, v262.st_size);
    free(v75);
    goto LABEL_8;
  }

  if ((sub_100006B98(v75, 0, &v307, 0xAuLL) & 1) == 0)
  {
    v169 = @"Failed to read version from manifest header";
    v170 = 310;
    goto LABEL_168;
  }

  v172 = strtol(&v307, 0, 10);
  if ((v172 - 4) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v80 = sub_100006460("validate_stream", 318, v173, v174, 0, v175, @"Manifest had invalid version: %ld; expected 1, 2, or 3", v176, v172);
    goto LABEL_169;
  }

  v259 = v172;
  if ((sub_100006B98(v75, 0, cf, 0x200uLL) & 1) == 0)
  {
    v169 = @"Failed to read manifest source version";
    v170 = 323;
    goto LABEL_168;
  }

  v258 = v75;
  if (v20)
  {
    v181 = v18;
  }

  else
  {
    v181 = &unk_10001E1F7;
  }

  if (v20)
  {
    v182 = v20;
  }

  else
  {
    v182 = "0";
  }

  if (v20)
  {
    v183 = " ";
  }

  else
  {
    v183 = &unk_10001E1F7;
  }

  if (v181)
  {
    v184 = v181;
  }

  else
  {
    v184 = &unk_10001E1F7;
  }

  if (snprintf(__str, 0x200uLL, "%s%s%s", v182, v183, v184) > 0x1FF)
  {
    v189 = sub_100006460("validate_stream", 350, v185, v186, 0, v187, @"Incoming expected source version string %s%s%s was too long", v188, v182, v183, v184);
LABEL_240:
    v171 = v189;
LABEL_241:
    v75 = v258;
    goto LABEL_170;
  }

  for (i = __str; *i == 10; ++i)
  {
    *i = 32;
LABEL_236:
    ;
  }

  if (*i)
  {
    goto LABEL_236;
  }

  if (strcmp(__str, cf))
  {
    v245 = cf;
    st_mode = __str;
    v212 = @"Got manifest for version %s, but expected version %s";
    v213 = 357;
    goto LABEL_239;
  }

  if (v259 < 2)
  {
    goto LABEL_262;
  }

  v306 = 0;
  v305 = 0u;
  v304 = 0u;
  v303 = 0u;
  *v302 = 0u;
  if (!sub_100006B98(v258, 0, v302, 0x41uLL))
  {
    v212 = @"Failed to read stream";
    v213 = 375;
LABEL_239:
    v189 = sub_100006460("validate_stream", v213, v208, v209, 0, v210, v212, v211, v245, st_mode, v254);
    goto LABEL_240;
  }

  if (!v16)
  {
    v212 = @"expected_infoplisthash is NULL";
    v213 = 371;
    goto LABEL_239;
  }

  if (memcmp(v16, v302, 0x41uLL))
  {
    v212 = @"Compare of info plist hash failed";
    v213 = 367;
    goto LABEL_239;
  }

  if (v259 != 2)
  {
    v302[0] = 0;
    if ((sub_100006C10(v258, v12, v302) & 1) == 0)
    {
      v171 = sub_100006460("validate_stream", 384, v232, v233, v302[0], v234, @"Failed to validate supported devices", v235);
      if (v302[0])
      {
        CFRelease(v302[0]);
      }

      goto LABEL_241;
    }
  }

LABEL_262:
  close(v29);
  cf[0] = 0;
  if ((sub_1000065F0(v258, &v298, cf, v236, v237, v238, v239, v240) & 1) == 0)
  {
    v47 = sub_100006460("hardlink_copy_hierarchy", 765, v241, v242, cf[0], v243, @"Failed to read first manifest command", v244);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    v178 = 0;
    v124 = -1;
    v85 = v258;
    goto LABEL_248;
  }

  v86 = v298 != 120;
  v85 = v258;
LABEL_41:
  v261 = strlen(v25);
  v87 = fts_read(v27);
  if (!v87)
  {
    v177 = 0;
LABEL_177:
    if (v22 && v298 != 120)
    {
      v220 = sub_100006460("hardlink_copy_hierarchy", 1110, v88, v89, 0, v91, @"Got done processing bundle but there were still commands remaining in manifest.", v93, v245, st_mode, v254);
      goto LABEL_246;
    }

    v47 = 0;
    if (a9)
    {
      *a9 = v177;
    }

    v124 = -1;
    v178 = 1;
    if (v85)
    {
      goto LABEL_248;
    }

    goto LABEL_249;
  }

  v94 = v87;
  v95 = 0;
  v257 = v85;
  while (2)
  {
    to[0].__pn_.__r_.__value_.__s.__data_[0] = 0;
    fts_info = v94->fts_info;
    if (fts_info > 0xD || ((1 << fts_info) & 0x314A) == 0)
    {
      v101 = 0;
      v102 = 0;
    }

    else
    {
      v98 = &v94->fts_path[v261];
      v100 = *v98;
      v99 = v98 + 1;
      if (v100 == 47)
      {
        v101 = v99;
      }

      else
      {
        v101 = &v94->fts_path[v261];
      }

      if (((fts_info != 6) & v86) == 1 && !sub_100006350(v299, v101))
      {
        if (gLogHandle && *(gLogHandle + 44) >= 7)
        {
          st_mode = v299;
          v254 = v101;
          v245 = v298;
          MOLogWrite();
        }

        v102 = 1;
      }

      else
      {
        v102 = 0;
      }

      fts_info = v94->fts_info;
    }

    if (fts_info > 7)
    {
      if ((fts_info - 12) < 2)
      {
        if (v102 && (v298 == 43 || v298 == 45))
        {
          goto LABEL_150;
        }

        LOWORD(v262.st_dev) = 0;
        *__str = 0;
        if (sub_100006A24(v300, v101, to, &v262, __str))
        {
          if (LOWORD(v262.st_dev))
          {
            v220 = sub_100006460("hardlink_copy_hierarchy", 855, v103, v104, 0, v105, @"Entity with mode 0%o exists at symlink location in dest path %s", v106, LOWORD(v262.st_dev), to, v254);
            goto LABEL_246;
          }

          v107 = v86;
          v108 = v95;
          v109 = gLogHandle;
          if (gLogHandle)
          {
            p_fts_path = &v94->fts_path;
            fts_path = v94->fts_path;
            if (*(gLogHandle + 44) <= 6 || (v245 = v94->fts_path, st_mode = to, MOLogWrite(), v109 = gLogHandle, fts_path = *p_fts_path, gLogHandle))
            {
              if (*(v109 + 44) >= 7)
              {
                v245 = fts_path;
                st_mode = to;
                MOLogWrite();
              }
            }
          }

          else
          {
            p_fts_path = &v94->fts_path;
            fts_path = v94->fts_path;
          }

          v139 = readlink(fts_path, cf, 0x400uLL);
          if (v139 < 0)
          {
            if (!gLogHandle || *(gLogHandle + 44) >= 3)
            {
LABEL_211:
              v190 = __error();
              strerror(*v190);
              MOLogWrite();
            }

LABEL_212:
            v220 = sub_100006460("hardlink_copy_hierarchy", 862, v140, v89, 0, v91, @"Failed to copy symlink %s to %s", v93, *p_fts_path, to, v254);
            goto LABEL_246;
          }

          *(cf + v139) = 0;
          if (symlink(cf, to))
          {
            if (!gLogHandle || *(gLogHandle + 44) >= 3)
            {
              goto LABEL_211;
            }

            goto LABEL_212;
          }

          v95 = v108;
LABEL_131:
          v86 = v107;
LABEL_150:
          v95 += v94->fts_statp->st_blocks;
          goto LABEL_151;
        }

        v47 = sub_100006460("hardlink_copy_hierarchy", 848, v103, v104, *__str, v105, @"Failed to make dest path for symlink %s", v106, v101);
        v180 = *__str;
        if (!*__str)
        {
          goto LABEL_247;
        }

        goto LABEL_214;
      }

      if (fts_info == 8)
      {
        goto LABEL_71;
      }

      if (fts_info == 10)
      {
        goto LABEL_187;
      }

      goto LABEL_151;
    }

    if (fts_info > 3)
    {
      if (fts_info == 6)
      {
        LOWORD(cf[0]) = 0;
        if (sub_100006A24(v300, v101, to, cf, 0))
        {
          if ((cf[0] & 0xF000) == 0x4000 && (v127 = v94->fts_statp->st_mode, v127 != LOWORD(cf[0])))
          {
            if (gLogHandle && *(gLogHandle + 44) >= 7)
            {
              v245 = to;
              st_mode = v94->fts_statp->st_mode;
              MOLogWrite();
              LOWORD(v127) = v94->fts_statp->st_mode;
            }

            if (chmod(to, v127))
            {
              v159 = __error();
              v248 = strerror(*v159);
              v220 = sub_100006460("hardlink_copy_hierarchy", 1060, v160, v161, 0, v162, @"chmod of '%s' failed: %s", v163, to, v248, v254);
              goto LABEL_246;
            }
          }

          else if (gLogHandle && *(gLogHandle + 44) >= 7)
          {
            v245 = LOWORD(cf[0]);
            st_mode = v101;
            MOLogWrite();
          }
        }
      }

      else if (fts_info == 4 || fts_info == 7)
      {
LABEL_187:
        v220 = sub_100006460("hardlink_copy_hierarchy", 1078, v88, v89, 0, v91, @"FTS in %s returned an error %d for path '%s'", v93, "hardlink_copy_hierarchy", v94->fts_errno, v94->fts_path);
        goto LABEL_246;
      }

      goto LABEL_151;
    }

    if (fts_info == 1)
    {
      if (v102 && (v298 == 45 || v298 == 43))
      {
        if (fts_set(v27, v94, 4))
        {
          v221 = __error();
          v251 = strerror(*v221);
          v220 = sub_100006460("hardlink_copy_hierarchy", 1012, v222, v223, 0, v224, @"Failed to skip directory %s: %s", v225, v101, v251, v254);
          goto LABEL_246;
        }

        if (gLogHandle && *(gLogHandle + 44) >= 7)
        {
          v245 = v101;
          MOLogWrite();
        }

LABEL_152:
        cf[0] = 0;
        if (sub_1000065F0(v85, &v298, cf, v89, v90, v91, v92, v93))
        {
          if (v298 == 120)
          {
            if (gLogHandle && *(gLogHandle + 44) >= 7)
            {
              MOLogWrite();
            }

            v86 = 0;
          }

LABEL_158:
          v94 = fts_read(v27);
          if (!v94)
          {
            v177 = v95 << 9;
            goto LABEL_177;
          }

          continue;
        }

        v179 = sub_100006460("hardlink_copy_hierarchy", 1094, v155, v156, cf[0], v157, @"Failed to read next manifest command", v158, v245, st_mode, v254);
LABEL_184:
        v47 = v179;
        v180 = cf[0];
        if (!cf[0])
        {
          goto LABEL_247;
        }

LABEL_214:
        CFRelease(v180);
        goto LABEL_247;
      }

      *__str = 0;
      cf[0] = 0;
      if ((sub_100006A24(v300, v101, to, __str, cf) & 1) == 0)
      {
        v179 = sub_100006460("hardlink_copy_hierarchy", 1023, v134, v89, cf[0], v91, @"Failed to make dest path for directory %s", v93, v101, st_mode, v254);
        goto LABEL_184;
      }

      if (*__str && (*__str & 0xF000) != 0x4000)
      {
        v220 = sub_100006460("hardlink_copy_hierarchy", 1030, v134, v89, 0, v91, @"Non-directory entity with mode 0%o exists at directory location in dest path %s", v93, *__str, to, v254);
        goto LABEL_246;
      }

      if (*__str)
      {
        if (*__str != (v94->fts_statp->st_mode | 0x80) && chmod(to, v94->fts_statp->st_mode | 0x80))
        {
          v231 = __error();
          v253 = strerror(*v231);
          v220 = sub_100006460("hardlink_copy_hierarchy", 1043, v135, v136, 0, v137, @"Failed to make destination directory %s writable: %s", v138, to, v253, v254);
          goto LABEL_246;
        }
      }

      else
      {
        if (gLogHandle && *(gLogHandle + 44) >= 7)
        {
          v245 = to;
          MOLogWrite();
        }

        if (mkdir(to, v94->fts_statp->st_mode | 0x80))
        {
          v226 = __error();
          v252 = strerror(*v226);
          v220 = sub_100006460("hardlink_copy_hierarchy", 1038, v227, v228, 0, v229, @"mkdir of '%s' failed: %s", v230, to, v252, v254);
          goto LABEL_246;
        }
      }

LABEL_151:
      if (!v102)
      {
        goto LABEL_158;
      }

      goto LABEL_152;
    }

    break;
  }

  if (fts_info != 3)
  {
    goto LABEL_151;
  }

LABEL_71:
  if (v298 == 94)
  {
    v112 = v102;
  }

  else
  {
    v112 = 0;
  }

  if (v112 != 1)
  {
    if (v102 && (v298 == 45 || v298 == 43))
    {
      if (gLogHandle && *(gLogHandle + 44) >= 7)
      {
        v245 = v101;
        MOLogWrite();
      }

      goto LABEL_150;
    }

    *__str = 0;
    cf[0] = 0;
    if ((sub_100006A24(v300, v101, to, __str, cf) & 1) == 0)
    {
      v179 = sub_100006460("hardlink_copy_hierarchy", 975, v128, v129, cf[0], v130, @"Failed to make dest path for file %s", v131, v101, st_mode, v254);
      goto LABEL_184;
    }

    if (*__str)
    {
      v220 = sub_100006460("hardlink_copy_hierarchy", 982, v128, v129, 0, v130, @"Entity with mode 0%o exists at file location in dest path %s", v131, *__str, to, v254);
      goto LABEL_246;
    }

    v107 = v86;
    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      v245 = v94->fts_path;
      st_mode = to;
      MOLogWrite();
    }

    if (link(v94->fts_path, to))
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v132 = v94->fts_path;
        v133 = __error();
        st_mode = to;
        v254 = strerror(*v133);
        v245 = v132;
        v85 = v257;
        MOLogWrite();
      }

      if (copyfile(v94->fts_path, to, 0, 0xC000Fu))
      {
        v214 = v94->fts_path;
        v215 = __error();
        v255 = strerror(*v215);
        v220 = sub_100006460("hardlink_copy_hierarchy", 991, v216, v217, 0, v218, @"copyfile of %s to %s failed: %s", v219, v214, to, v255);
        goto LABEL_246;
      }
    }

    goto LABEL_131;
  }

  LOWORD(v302[0]) = 0;
  bzero(cf, 0x400uLL);
  *&v262.st_dev = 0;
  if ((sub_100006A24(v300, v101, to, v302, &v262) & 1) == 0)
  {
    v47 = sub_100006460("hardlink_copy_hierarchy", 882, v113, v114, *&v262.st_dev, v115, @"Failed to make dest path for file %s", v116, v101);
    v180 = *&v262.st_dev;
    if (!*&v262.st_dev)
    {
      goto LABEL_247;
    }

    goto LABEL_214;
  }

  v117 = v95;
  v118 = v302[0];
  if (LOWORD(v302[0]))
  {
    if (snprintf(cf, 0x400uLL, "%s.XXXXXX", to) >= 0x400)
    {
      v220 = sub_100006460("hardlink_copy_hierarchy", 894, v119, v120, 0, v121, @"failed to make newfile path: %s.XXXXXXX", v122, to, st_mode, v254);
      goto LABEL_246;
    }

    v123 = mkstemp(cf);
    if (v123 == -1)
    {
      v191 = __error();
      v250 = strerror(*v191);
      v220 = sub_100006460("hardlink_copy_hierarchy", 899, v192, v193, 0, v194, @"mktemp failed for %s : %s", v195, cf, v250, v254);
      goto LABEL_246;
    }

    v124 = v123;
    v256 = v86;
    v125 = v94->fts_path;
    bzero(__str, 0x400uLL);
    if (!v14 || sub_100006350(v125, v14))
    {
      v126 = 0;
      goto LABEL_144;
    }

    if (snprintf(__str, 0x400uLL, "%s.XXXXXX", to) >= 0x400)
    {
      v47 = sub_100006460("hardlink_copy_hierarchy", 914, v141, v142, 0, v143, @"failed to make newfile path: %s.XXXXXXX", v144, to);
      goto LABEL_225;
    }

    LOBYTE(v307) = 0;
    if (MIMachOCreateHiddenArchsExecutableIfNeeded(v14, __str, &v307))
    {
      v126 = v307;
      if (v307)
      {
        v125 = __str;
      }

LABEL_144:
      if (patch_file(v125, to, v124))
      {
        v196 = sub_100006460("hardlink_copy_hierarchy", 934, v149, v150, 0, v151, @"patch_file failed for:\n\t%s\n\t%s\n\t%s", v152, v125, cf, to);
      }

      else
      {
        if (!fchmod(v124, v118))
        {
          close(v124);
          rename(cf, to, v153);
          if (!v154)
          {
            if (v126)
            {
              unlink(v125);
            }

            v95 = v117;
            v85 = v257;
            v86 = v256;
            goto LABEL_150;
          }

          v200 = __error();
          v201 = strerror(*v200);
          v47 = sub_100006460("hardlink_copy_hierarchy", 948, v202, v203, 0, v204, @"rename of %s to %s failed: %s", v205, cf, to, v201);
          v124 = -1;
LABEL_224:
          v85 = v257;
LABEL_225:
          v178 = 0;
          if (v85)
          {
            goto LABEL_248;
          }

          goto LABEL_249;
        }

        v197 = __error();
        v245 = cf;
        st_mode = strerror(*v197);
        v198 = @"chmod failed for %s : %s";
        v199 = 939;
LABEL_220:
        v196 = sub_100006460("hardlink_copy_hierarchy", v199, v145, v146, 0, v147, v198, v148, v245, st_mode, v254);
      }

      v47 = v196;
      goto LABEL_224;
    }

    v198 = @"Failed to create hidden archs executable";
    v199 = 920;
    goto LABEL_220;
  }

  v220 = sub_100006460("hardlink_copy_hierarchy", 889, v113, v114, 0, v115, @"Entity does not exist at file location in dest path %s", v116, to, st_mode, v254);
LABEL_246:
  v47 = v220;
LABEL_247:
  v178 = 0;
  v124 = -1;
  if (v85)
  {
LABEL_248:
    munmap(*v85, v85[1]);
    free(v85);
  }

LABEL_249:
  fts_close(v27);
  if ((v124 & 0x80000000) == 0)
  {
    close(v124);
  }

  if (v178)
  {
    return 1;
  }

LABEL_24:
  if (a10)
  {
    result = 0;
    *a10 = v47;
  }

  else
  {
    if (v47)
    {
      CFRelease(v47);
    }

    return 0;
  }

  return result;
}

uint64_t sub_100006350(char *cStr, const char *a2)
{
  v3 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  v4 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  bzero(buffer, 0x400uLL);
  bzero(__s2, 0x400uLL);
  if (!CFStringGetFileSystemRepresentation(v3, buffer, 1024) || !CFStringGetFileSystemRepresentation(v4, __s2, 1024))
  {
    v5 = 0xFFFFFFFFLL;
    if (!v3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = strcmp(buffer, __s2);
  if (v3)
  {
LABEL_6:
    CFRelease(v3);
  }

LABEL_7:
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

CFErrorRef sub_100006460(const char *a1, int a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, const __CFString *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  valuePtr = a2;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v12 = CFStringCreateWithCString(0, a1, 0x8000100u);
  CFDictionaryAddValue(Mutable, @"FunctionName", v12);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"SourceFileLine", v13);
  if (v13)
  {
    CFRelease(v13);
  }

  if (a5)
  {
    CFDictionaryAddValue(Mutable, kCFErrorUnderlyingErrorKey, a5);
  }

  v14 = CFStringCreateWithFormatAndArguments(0, 0, a7, va);
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  CFDictionaryAddValue(Mutable, kCFErrorLocalizedDescriptionKey, v14);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = CFErrorCreate(0, @"MIInstallerDeltaErrorDomain", 1, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v15;
}

uint64_t sub_1000065F0(void *a1, char *a2, CFErrorRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[1];
  v8 = a1[2];
  if (v8 >= v9)
  {
    sub_100015F88();
  }

  if (v8 + 1 >= v9)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v28 = 1;
      MOLogWrite();
    }

    v24 = @"Failed to read command from manifest";
    v25 = 508;
  }

  else
  {
    v13 = *(*a1 + v8);
    *a2 = v13;
    ++a1[2];
    v14 = (v13 - 43) > 0x33 || ((1 << (v13 - 43)) & 0x8000000040005) == 0;
    if (v14 && v13 != 120)
    {
      v26 = sub_100006460("read_next_manifest_command", 514, a3, a4, 0, a6, @"Stream had invalid command: %hhu", a8, v13);
      goto LABEL_28;
    }

    v15 = a2 + 1;
    v16 = sub_100006B98(a1, 1, a2 + 1, 0x400uLL);
    v17 = *a2;
    if ((v16 & 1) == 0)
    {
      v26 = sub_100006460("read_next_manifest_command", 520, a3, a4, 0, a6, @"Failed to read arg1 of command %hhu", a8, *a2);
      goto LABEL_28;
    }

    if (v17 != 61)
    {
      goto LABEL_12;
    }

    *__str = 0;
    v31 = 0;
    v33 = 0;
    v32 = 0;
    if ((sub_100006B98(a1, 1, __str, 0x19uLL) & 1) == 0)
    {
      v26 = sub_100006460("read_next_manifest_command", 528, v18, v19, 0, v20, @"Failed to read arg2 of command %hhu", v21, *a2);
      goto LABEL_28;
    }

    v22 = strtoll(__str, 0, 10);
    *(a2 + 129) = v22;
    if (v22)
    {
      v17 = *a2;
LABEL_12:
      if (v17 != 120 || *v15 == 69 && a2[2] == 79 && a2[3] == 70)
      {
        return 1;
      }

      v24 = @"Got malformed EOF marker";
      v25 = 542;
      goto LABEL_27;
    }

    v28 = __str;
    v29 = a2 + 1;
    v24 = @"Invalid touch time %s found for path %s";
    v25 = 535;
  }

LABEL_27:
  v26 = sub_100006460("read_next_manifest_command", v25, a3, a4, 0, a6, v24, a8, v28, v29);
LABEL_28:
  if (a3)
  {
    v23 = 0;
    *a3 = v26;
  }

  else
  {
    if (v26)
    {
      CFRelease(v26);
    }

    return 0;
  }

  return v23;
}

uint64_t sub_10000685C(const char *a1, char *a2, mode_t *a3, CFErrorRef *a4)
{
  v8 = strlen(a1);
  v13 = v8;
  if (a1[v8 - 1] == 47)
  {
    a1[v8 - 1] = 0;
    v13 = v8 - 1;
  }

  do
  {
    v14 = &a1[v13 - 1];
    if (v14 < a1)
    {
      v31 = a1;
      v15 = @"Failed to find parent of '%s'";
      v16 = 588;
LABEL_10:
      v17 = sub_100006460("realpath_parent_no_symlink", v16, v9, v10, 0, v11, v15, v12, v31);
LABEL_11:
      if (!a4)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

    --v13;
  }

  while (*v14 != 47);
  if (!v13)
  {
    strlcpy(a2, a1, 0x400uLL);
    goto LABEL_14;
  }

  a1[v13] = 0;
  if (!realpath_DARWIN_EXTSN(a1, a2))
  {
    v24 = __error();
    v25 = strerror(*v24);
    v17 = sub_100006460("realpath_parent_no_symlink", 599, v26, v27, 0, v28, @"realpath of '%s' failed at element '%s': %s", v29, a1, a2, v25);
    a1[v13] = 47;
    if (!a4)
    {
LABEL_17:
      if (v17)
      {
        CFRelease(v17);
      }

      return 0;
    }

LABEL_12:
    v18 = 0;
    *a4 = v17;
    return v18;
  }

  a1[v13] = 47;
  if (strlcat(a2, &a1[v13], 0x400uLL) >= 0x400)
  {
    v15 = @"Path was too long";
    v16 = 608;
    goto LABEL_10;
  }

LABEL_14:
  memset(&v32, 0, sizeof(v32));
  if (lstat(a2, &v32))
  {
    st_mode = 0;
    goto LABEL_22;
  }

  st_mode = v32.st_mode;
  if ((v32.st_mode & 0xF000) == 0xA000)
  {
    v17 = sub_100006460("realpath_parent_no_symlink", 618, v19, v20, 0, v21, @"Found symlink at destination path %s; this is not allowed.", v22, a2);
    goto LABEL_11;
  }

LABEL_22:
  *a3 = st_mode;
  return 1;
}

uint64_t sub_100006A24(const char *a1, const char *a2, char *a3, mode_t *a4, CFErrorRef *a5)
{
  bzero(__str, 0x400uLL);
  if (snprintf(__str, 0x400uLL, "%s/%s", a1, a2) < 0x400)
  {
    cf = 0;
    if ((sub_10000685C(__str, a3, a4, &cf) & 1) == 0)
    {
      v23 = sub_100006460("make_and_check_dest_path", 701, v15, v16, cf, v17, @"Failed to realpath parent of %s", v18, __str);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      goto LABEL_7;
    }

    if (!sub_100006350(__str, a3))
    {
      return 1;
    }

    v14 = sub_100006460("make_and_check_dest_path", 709, v19, v20, 0, v21, @"realpath'd destpath '%s' is different from non-realpath '%s'", v22, a3, __str);
  }

  else
  {
    v14 = sub_100006460("make_and_check_dest_path", 695, v10, v11, 0, v12, @"Dest path '%s/%s' was too long", v13, a1, a2);
  }

  v23 = v14;
LABEL_7:
  if (a5)
  {
    result = 0;
    *a5 = v23;
  }

  else
  {
    if (v23)
    {
      CFRelease(v23);
    }

    return 0;
  }

  return result;
}

uint64_t sub_100006B98(void *a1, int a2, _BYTE *a3, unint64_t a4)
{
  v4 = a1[2];
  if (v4 >= a1[1])
  {
    sub_100015FB4();
  }

  if (!a4)
  {
    return 0;
  }

  for (i = 1; ; ++i)
  {
    v6 = *(*a1 + v4);
    a1[2] = v4 + 1;
    v7 = v6 == 9 ? a2 : 0;
    if (v6 == 10 || v7 != 0)
    {
      break;
    }

    *a3++ = v6;
    v4 = a1[2];
    if (v4 >= a1[1] || i >= a4)
    {
      return 0;
    }
  }

  *a3 = 0;
  return 1;
}

uint64_t sub_100006C10(void *a1, const __CFArray *a2, CFErrorRef *a3)
{
  v10 = malloc_type_calloc(1uLL, 0x800uLL, 0x9CD77285uLL);
  if (!v10)
  {
    v33 = @"Failed to malloc buffer for line";
    v34 = 200;
LABEL_23:
    v31 = sub_100006460("validate_supported_devices", v34, v6, v7, 0, v8, v33, v9);
    free(v10);
    goto LABEL_24;
  }

  if ((sub_100006B98(a1, 0, v10, 0x800uLL) & 1) == 0)
  {
    v33 = @"Failed to read supported devices from stream";
    v34 = 205;
    goto LABEL_23;
  }

  if (!*v10)
  {
    if (!a2)
    {
      free(v10);
      return 1;
    }

    v33 = @"Existing app lists supported devices but there were none in the manifest";
    v34 = 211;
    goto LABEL_23;
  }

  v11 = CFStringCreateWithCString(kCFAllocatorDefault, v10, 0x8000100u);
  if (!v11)
  {
    v33 = @"Failed to create patch supported devices string";
    v34 = 222;
    goto LABEL_23;
  }

  v12 = v11;
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, v11, @" ");
  v18 = ArrayBySeparatingStrings;
  if (!ArrayBySeparatingStrings || !CFArrayGetCount(ArrayBySeparatingStrings))
  {
    v36 = sub_100006460("validate_supported_devices", 228, v14, v15, 0, v16, @"Failed to split patch supported devices string", v17);
LABEL_32:
    v31 = v36;
    free(v10);
    v32 = 0;
    Mutable = 0;
    v20 = 0;
    goto LABEL_41;
  }

  if (!a2)
  {
    v36 = sub_100006460("validate_supported_devices", 234, v14, v15, 0, v16, @"Target app had no supported devices but patch did: %@", v17, v18);
    goto LABEL_32;
  }

  v41 = v12;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v20 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  Count = CFArrayGetCount(a2);
  v22 = CFArrayGetCount(v18);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      v42.location = 0;
      v42.length = v22;
      if (!CFArrayContainsValue(v18, v42, ValueAtIndex))
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }
  }

  if (v22 >= 1)
  {
    for (j = 0; j != v22; ++j)
    {
      v26 = CFArrayGetValueAtIndex(v18, j);
      v43.location = 0;
      v43.length = Count;
      if (!CFArrayContainsValue(a2, v43, v26))
      {
        CFArrayAppendValue(v20, v26);
      }
    }
  }

  if (Mutable && CFArrayGetCount(Mutable))
  {
    v31 = sub_100006460("validate_supported_devices", 242, v27, v28, 0, v29, @"Expected supported devices had devices that were not in patch: %@", v30, Mutable);
    v32 = 0;
    v12 = v41;
  }

  else
  {
    v12 = v41;
    if (v20 && CFArrayGetCount(v20))
    {
      v31 = sub_100006460("validate_supported_devices", 247, v37, v38, 0, v39, @"Patch listed devices that were not in expected supported devices: %@", v40, v20);
      v32 = 0;
    }

    else
    {
      v31 = 0;
      v32 = 1;
    }
  }

  free(v10);
LABEL_41:
  CFRelease(v12);
  if (v18)
  {
    CFRelease(v18);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v32)
  {
    return 1;
  }

LABEL_24:
  if (a3)
  {
    result = 0;
    *a3 = v31;
  }

  else
  {
    if (v31)
    {
      CFRelease(v31);
    }

    return 0;
  }

  return result;
}

id _CreateErrorV(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v17)
  {
    v19 = [v17 mutableCopy];
  }

  else
  {
    v19 = objc_opt_new();
  }

  v20 = v19;
  if (v18)
  {
    v21 = [[NSString alloc] initWithFormat:v18 arguments:a8];
    [v20 setObject:v21 forKeyedSubscript:NSLocalizedDescriptionKey];
  }

  if (v16)
  {
    [v20 setObject:v16 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  v22 = [NSString stringWithUTF8String:a1];
  [v20 setObject:v22 forKeyedSubscript:MIFunctionNameErrorKey];

  v23 = [NSNumber numberWithInt:a2];
  [v20 setObject:v23 forKeyedSubscript:MISourceFileLineErrorKey];

  v24 = [NSError errorWithDomain:v15 code:a4 userInfo:v20];

  return v24;
}

id _CreateError(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v9 = _CreateErrorV(a1, a2, a3, a4, a5, a6, a7, &a9);

  return v9;
}

id _CreateAndLogError(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v9 = _CreateAndLogErrorV(a1, a2, a3, a4, a5, a6, a7, &a9);

  return v9;
}

id _CreateAndLogErrorV(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v15 = a5;
  v16 = _CreateErrorV(a1, a2, a3, a4, v15, a6, a7, a8);
  v17 = [v16 userInfo];
  v18 = [v17 objectForKeyedSubscript:NSLocalizedDescriptionKey];

  if (v15)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v19 = [v15 domain];
      [v15 code];
      v20 = [v15 userInfo];
      v22 = [v20 objectForKeyedSubscript:NSLocalizedDescriptionKey];
      MOLogWrite();
    }
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  return v16;
}

BOOL _IsMalformedBundleError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = MIInstallerErrorDomain;
  if ([v2 isEqualToString:MIInstallerErrorDomain] && objc_msgSend(v1, "code") == 12)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v1 domain];
    if ([v5 isEqualToString:v3] && objc_msgSend(v1, "code") == 11)
    {
      v4 = 1;
    }

    else
    {
      v6 = [v1 domain];
      if ([v6 isEqualToString:v3])
      {
        v4 = [v1 code] == 35;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

__CFString *MICopyUnlocalizedDescriptionForContainerExtendedError()
{
  v0 = container_error_copy_unlocalized_description();
  if (v0)
  {
    v1 = v0;
    v2 = [NSString stringWithUTF8String:v0];
    free(v1);
  }

  else
  {
    v2 = @"(container_error_copy_unlocalized_description returned NULL)";
  }

  return v2;
}

__CFString *MICopyProcessNameForPid()
{
  v0 = __chkstk_darwin();
  v1 = proc_pidpath(v0, buffer, 0x1000u);
  if (v1 < 1)
  {
    v3 = @"Unknown Process Name";
  }

  else
  {
    v2 = [[NSString alloc] initWithBytes:buffer length:v1 encoding:4];
    v3 = [v2 lastPathComponent];
  }

  return v3;
}

id MIFetchInfoForUsername(const char *a1, uid_t *a2, gid_t *a3, void *a4)
{
  if (sysconf(71) == -1)
  {
    sub_100016090(&v16, v21);
  }

  v8 = __chkstk_darwin();
  memset(&v16, 0, sizeof(v16));
  v15 = 0;
  result = getpwnam_r(a1, &v16, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v9, &v15);
  if (result)
  {
    v14 = 0;
    memset(v21, 0, sizeof(v21));
    v11 = result;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v13 = strerror(v11);
    v17 = 136315394;
    v18 = a1;
    v19 = 2080;
    v20 = v13;
    _os_log_send_and_compose_impl(v12, &v14, v21, 80, &_mh_execute_header, &_os_log_default, 16, "getpwnam_r failed for user %s : %s", &v17, 22);
    _os_crash_msg();
    __break(1u);
LABEL_16:
    sub_100015FE0(&v17, v21, a1);
  }

  if (!v15)
  {
    goto LABEL_16;
  }

  if (a2)
  {
    *a2 = v16.pw_uid;
  }

  if (a3)
  {
    *a3 = v16.pw_gid;
  }

  if (a4)
  {
    result = [NSURL fileURLWithFileSystemRepresentation:v16.pw_dir isDirectory:1 relativeToURL:0];
    *a4 = result;
  }

  return result;
}

uint64_t MIFetchInfoForUID(uint64_t a1, void *a2, gid_t *a3, void *a4, void *a5)
{
  if (sysconf(71) == -1)
  {
    v18 = *__error();
    v19 = v18;
    v20 = strerror(v18);
    v16 = _CreateError("MIFetchInfoForUID", 140, NSPOSIXErrorDomain, v19, 0, 0, @"Failed to get home dir path size: %s", v21, v20);
    v17 = 0;
    if (!a5)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v10 = __chkstk_darwin();
  memset(&v27, 0, sizeof(v27));
  v26 = 0;
  v12 = getpwuid_r(a1, &v27, &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11, &v26);
  if (v12)
  {
    v14 = v12;
    strerror(v12);
    _CreateError("MIFetchInfoForUID", 150, NSPOSIXErrorDomain, v14, 0, 0, @"getpwuid_r failed for uid %d : %s", v15, a1);
    v16 = LABEL_4:;
    v17 = 0;
    goto LABEL_5;
  }

  if (!v26)
  {
    _CreateError("MIFetchInfoForUID", 155, NSPOSIXErrorDomain, 2, 0, 0, @"getpwuid_r succeeded but no user was found with uid %d", v13, a1);
    goto LABEL_4;
  }

  if (a2)
  {
    *a2 = [NSString stringWithUTF8String:v27.pw_name];
  }

  if (a3)
  {
    *a3 = v27.pw_gid;
  }

  if (a4)
  {
    v17 = 1;
    v23 = [NSURL fileURLWithFileSystemRepresentation:v27.pw_dir isDirectory:1 relativeToURL:0];
    v24 = v23;
    v16 = 0;
    *a4 = v23;
  }

  else
  {
    v16 = 0;
    v17 = 1;
  }

LABEL_5:
  if (!a5)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((v17 & 1) == 0)
  {
    v16 = v16;
    *a5 = v16;
  }

LABEL_10:

  return v17;
}

void MIGetCurrentMobileUserInfo(_DWORD *result, _DWORD *a2)
{
  if (qword_10002DF38 != -1)
  {
    sub_100016154();
  }

  *result = dword_10002DF30;
  *a2 = dword_10002DF34;
}

uint64_t MIAssumeIdentityOfUsername(const char *a1, void *a2)
{
  v4 = 0;
  MIFetchInfoForUsername(a1, &v4 + 1, &v4, 0);
  return MIAssumeIdentity(HIDWORD(v4), v4, a2);
}

uint64_t MIAssumeIdentity(uint64_t a1, gid_t a2, void *a3)
{
  if (!(a2 | a1))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100016168();
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  v18 = 0;
  v19 = 0;
  v6 = MIFetchInfoForUID(a1, &v19, 0, 0, &v18);
  v7 = v19;
  v8 = v18;
  if (v6)
  {
    if (pthread_setugid_np(a1, a2))
    {
      v9 = __error();
      v17 = *v9;
      strerror(*v9);
      _CreateAndLogError("MIAssumeIdentity", 228, NSPOSIXErrorDomain, v17, 0, 0, @"pthread_setugid_np failed for uid %d gid %d; error %d (%s)", v10, a1);
    }

    else
    {
      if (!initgroups([v7 UTF8String], a2))
      {
        v15 = 1;
        goto LABEL_16;
      }

      v11 = *__error();
      MIRestoreIdentity();
      strerror(v11);
      _CreateAndLogError("MIAssumeIdentity", 238, NSPOSIXErrorDomain, v11, 0, 0, @"SYS_initgroups failed; error %d (%s)", v12, v11);
    }
    v13 = ;

    v8 = v13;
  }

  if (a3)
  {
    v14 = v8;
    v15 = 0;
    *a3 = v8;
  }

  else
  {
    v15 = 0;
  }

LABEL_16:

  return v15;
}

uint64_t MIRestoreIdentity()
{
  v0 = getuid();
  v1 = getgid();
  if (!(v0 | v1))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_1000161F0();
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  result = pthread_setugid_np(0xFFFFFF9B, 0xFFFFFF9B);
  if (result)
  {
    v3 = *__error();
    v6 = 0;
    memset(v14, 0, sizeof(v14));
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    v7[0] = 67109890;
    v7[1] = v0;
    v8 = 1024;
    v9 = v1;
    v10 = 1024;
    v11 = v3;
    v12 = 2080;
    v13 = strerror(v3);
    _os_log_send_and_compose_impl(v4, &v6, v14, 80, &_mh_execute_header, &_os_log_default, 16, "pthread_setugid_np failed to restore root privs from %u/%u; error %d (%s); aborting because this thread is in a bad state.", v7, 30, v5);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

uint64_t MIAssumeMobileIdentity(void *a1)
{
  if (qword_10002DF38 != -1)
  {
    sub_100016154();
  }

  v2 = dword_10002DF30;
  v3 = dword_10002DF34;

  return MIAssumeIdentity(v2, v3, a1);
}

const void *MICreateCFBundleEnforcingInfoPlistSize(void *a1, off_t a2, void *a3, void *a4)
{
  v7 = a1;
  memset(&v29, 0, sizeof(v29));
  Unique = _CFBundleCreateUnique();
  if (!Unique)
  {
    v15 = MIInstallerErrorDomain;
    v16 = [v7 path];
    v18 = _CreateAndLogError("MICreateCFBundleEnforcingInfoPlistSize", 302, v15, 3, 0, 0, @"Failed to create CFBundle for %@", v17, v16);

    v10 = 0;
    if (a4)
    {
LABEL_19:
      v25 = v18;
      v9 = 0;
      *a4 = v18;
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  v9 = Unique;
  v10 = _CFBundleCopyInfoPlistURL();
  if (!v10)
  {
    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      v28 = v9;
      MOLogWrite();
    }

    v10 = [v7 URLByAppendingPathComponent:@"Info.plist" isDirectory:{0, v28}];
  }

  if (lstat([v10 fileSystemRepresentation], &v29))
  {
    v11 = *__error();
    v12 = [v10 path];
    v14 = v12;
    if (v11 != 2)
    {
      v21 = _CreateError("MICreateCFBundleEnforcingInfoPlistSize", 321, NSPOSIXErrorDomain, v11, 0, 0, @"lstat of %@ failed", v13, v12);
      v18 = _CreateAndLogError("MICreateCFBundleEnforcingInfoPlistSize", 322, MIInstallerErrorDomain, 3, v21, 0, @"Error when introspecting %@", v22, v14);

      goto LABEL_18;
    }

    _CreateAndLogError("MICreateCFBundleEnforcingInfoPlistSize", 319, MIInstallerErrorDomain, 35, 0, 0, @"Info.plist missing at %@", v13, v12);
    v18 = LABEL_17:;
LABEL_18:

    CFRelease(v9);
    if (a4)
    {
      goto LABEL_19;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_20;
  }

  if ((v29.st_mode & 0xF000) != 0x8000)
  {
    v23 = MIInstallerErrorDomain;
    v14 = [v10 path];
    _CreateAndLogError("MICreateCFBundleEnforcingInfoPlistSize", 330, v23, 3, 0, 0, @"Expected Info.plist file at %@ but found something that was not a file (found mode 0%o).", v24, v14);
    goto LABEL_17;
  }

  if (v29.st_size > a2)
  {
    v19 = MIInstallerErrorDomain;
    v14 = [v10 path];
    _CreateAndLogError("MICreateCFBundleEnforcingInfoPlistSize", 336, v19, 236, 0, 0, @"The Info.plist at %@ is too large. Found %lld bytes on disk, but maximum allowed size is %lld bytes.", v20, v14);
    goto LABEL_17;
  }

  if (a3)
  {
    v27 = v10;
    v18 = 0;
    *a3 = v10;
  }

  else
  {
    v18 = 0;
  }

LABEL_20:

  return v9;
}

id MILoadInfoPlistWithError(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v14 = 0;
  v6 = MICreateCFBundleEnforcingInfoPlistSize(a1, 0x7FFFFFFFFFFFFFFFLL, 0, &v14);
  v7 = v14;
  v8 = v7;
  if (v6)
  {
    v13 = v7;
    v9 = MILoadInfoPlistFromBundleWithError(v6, v5, &v13);
    v10 = v13;

    CFRelease(v6);
    v8 = v10;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (!v9)
  {
    v11 = v8;
    *a3 = v8;
  }

LABEL_7:

  return v9;
}

id MILoadInfoPlistFromBundleWithError(__CFBundle *a1, void *a2, void *a3)
{
  v5 = a2;
  if (v5)
  {
    FilteredInfoPlist = _CFBundleCreateFilteredInfoPlist();
    if (FilteredInfoPlist)
    {
      v8 = FilteredInfoPlist;
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(v8))
      {
        v10 = [NSMutableDictionary dictionaryWithDictionary:v8];
        CFRelease(v8);
        goto LABEL_8;
      }

      v14 = CFGetTypeID(v8);
      v15 = CFCopyTypeIDDescription(v14);
      v13 = _CreateAndLogError("MILoadInfoPlistFromBundleWithError", 403, MIInstallerErrorDomain, 3, 0, 0, @"Object returned from _CFBundleCreateFilteredInfoPlist was not a dictionary, was type %@", v16, v15);
      if (v15)
      {
        CFRelease(v15);
      }

      CFRelease(v8);
    }

    else
    {
      v13 = _CreateAndLogError("MILoadInfoPlistFromBundleWithError", 397, MIInstallerErrorDomain, 3, 0, 0, @"Failed to get filtered Info.plist with keys %@ from bundle %@", v7, v5);
    }
  }

  else
  {
    InfoDictionary = CFBundleGetInfoDictionary(a1);
    if (InfoDictionary)
    {
      v12 = [NSMutableDictionary dictionaryWithDictionary:InfoDictionary];
      v10 = v12;
      if (v12)
      {
        [v12 removeObjectForKey:@"CFBundleInfoPlistURL"];
        v13 = 0;
        goto LABEL_18;
      }

LABEL_8:
      v13 = 0;
      if (!a3)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v17 = CFBundleCopyBundleURL(a1);
    v18 = MIInstallerErrorDomain;
    v19 = [(__CFURL *)v17 path];
    v13 = _CreateAndLogError("MILoadInfoPlistFromBundleWithError", 419, v18, 35, 0, 0, @"CFBundleGetInfoDictionary failed for bundle at %@", v20, v19);
  }

  v10 = 0;
  if (!a3)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (!v10)
  {
    v21 = v13;
    *a3 = v13;
  }

LABEL_18:

  return v10;
}

id MILoadRawInfoPlist(void *a1, void *a2)
{
  v12 = 0;
  v13 = 0;
  v3 = MICreateCFBundleEnforcingInfoPlistSize(a1, 0x7FFFFFFFFFFFFFFFLL, &v13, &v12);
  v4 = v13;
  v5 = v12;
  if (v3)
  {
    v11 = v5;
    v6 = [NSDictionary MI_dictionaryWithContentsOfURL:v4 options:0 error:&v11];
    v7 = v11;

    v8 = [v6 mutableCopy];
    CFRelease(v3);
    v5 = v7;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v9 = v5;
    *a2 = v5;
  }

LABEL_7:

  return v8;
}

void MIRecordCurrentBuildVersion(void *a1)
{
  v1 = a1;
  v2 = _CFCopySystemVersionDictionary();
  v7 = 0;
  v3 = [v2 MI_writeToURL:v1 format:200 options:268435457 error:&v7];
  v4 = v7;
  if (v3)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      v5 = [v2 objectForKeyedSubscript:_kCFSystemVersionBuildVersionKey];
      v6 = [v2 objectForKeyedSubscript:@"ReleaseType"];
      MOLogWrite();

LABEL_8:
    }
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v5 = [v1 path];
    MOLogWrite();
    goto LABEL_8;
  }
}

uint64_t MIIsBuildUpgrade(uint64_t a1, void *a2)
{
  v3 = [NSDictionary dictionaryWithContentsOfURL:a1];
  v4 = v3;
  if (!v3)
  {
    if (gLogHandle && *(gLogHandle + 44) < 5)
    {
      goto LABEL_16;
    }

LABEL_15:
    MOLogWrite();
LABEL_16:
    v12 = 0;
    v13 = 0;
    v9 = 0;
    v11 = 0;
    v7 = 0;
    goto LABEL_26;
  }

  v5 = _kCFSystemVersionBuildVersionKey;
  v6 = [v3 objectForKeyedSubscript:_kCFSystemVersionBuildVersionKey];
  if (!v6)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v7 = v6;
  v8 = _CFCopySystemVersionDictionary();
  if (!v8)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v12 = 0;
    v13 = 0;
    v9 = 0;
    goto LABEL_25;
  }

  v9 = v8;
  v10 = [v8 objectForKeyedSubscript:v5];
  if (!v10)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v12 = 0;
    v13 = 0;
LABEL_25:
    v11 = 0;
    goto LABEL_26;
  }

  v11 = v10;
  v12 = [v4 objectForKeyedSubscript:@"ReleaseType"];
  v13 = [v9 objectForKeyedSubscript:@"ReleaseType"];
  if ([v7 isEqual:v11])
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      MOLogWrite();
    }

    v14 = 0;
    goto LABEL_29;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    MOLogWrite();
  }

LABEL_26:
  if (a2)
  {
    v15 = v7;
    *a2 = v7;
  }

  v14 = 1;
LABEL_29:

  return v14;
}

id MILoadFilteredPlist(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v30 = 0;
  cf = 0;
  v29 = 0;
  v7 = [NSData dataWithContentsOfURL:v5 options:3 error:&v29];
  v8 = v29;
  if (!v7)
  {
    v16 = MIInstallerErrorDomain;
    v12 = [v5 path];
    v18 = _CreateAndLogError("MILoadFilteredPlist", 541, v16, 4, v8, 0, @"Failed to read plist from %@", v17, v12);
    goto LABEL_21;
  }

  if (!v6)
  {
    v28 = 0;
    v10 = [NSPropertyListSerialization propertyListWithData:v7 options:0 format:0 error:&v28];
    v14 = v28;

    if (!v10)
    {
      v23 = MIInstallerErrorDomain;
      v12 = [v5 path];
      v18 = _CreateAndLogError("MILoadFilteredPlist", 559, v23, 4, v14, 0, @"Failed to decode plist from %@", v24, v12);
      goto LABEL_20;
    }

    v8 = v14;
    goto LABEL_12;
  }

  Filtered = _CFPropertyListCreateFiltered();
  v10 = v30;
  if (Filtered)
  {
    v11 = v30 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v30 = 0;
LABEL_12:
    objc_opt_class();
    v12 = v10;
    if (objc_opt_isKindOfClass())
    {
      v19 = v12;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v18 = v8;
      goto LABEL_24;
    }

    v20 = MIInstallerErrorDomain;
    v21 = objc_opt_class();
    v14 = NSStringFromClass(v21);
    _CreateAndLogError("MILoadFilteredPlist", 565, v20, 4, 0, 0, @"Object returned from _CFPropertyListCreateFiltered was not a dictionary, was type %@", v22, v14);
    goto LABEL_18;
  }

  v12 = cf;
  cf = 0;
  v13 = MIInstallerErrorDomain;
  v14 = [v5 path];
  _CreateAndLogError("MILoadFilteredPlist", 550, v13, 4, v12, 0, @"Failed to decode plist from %@", v15, v14);
  v18 = LABEL_18:;

LABEL_20:
  v8 = v14;
LABEL_21:

  if (a3)
  {
    v25 = v18;
    v12 = 0;
    *a3 = v18;
  }

  else
  {
    v12 = 0;
  }

LABEL_24:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v30)
  {
    CFRelease(v30);
    v30 = 0;
  }

  v26 = v12;

  return v26;
}

id MICopyCurrentBuildVersion(uint64_t a1)
{
  if (qword_10002DF48 != -1)
  {
    sub_100016278();
  }

  v2 = qword_10002DF40;

  return v2;
}

void sub_100008CA4(id a1)
{
  v1 = _CFCopySystemVersionDictionaryValue();
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = qword_10002DF40;
  qword_10002DF40 = v3;

  if (!qword_10002DF40 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {

    MOLogWrite();
  }
}

void MIAssertHighResourceUsage()
{
  if (!atomic_fetch_add(dword_10002DF50, 1u))
  {
    v1 = getpid();

    _proc_disable_cpumon(v1);
  }
}

void MIClearResourceAssertion()
{
  if (atomic_fetch_add(dword_10002DF50, 0xFFFFFFFF) == 1)
  {
    v1 = getpid();

    _proc_set_cpumon_defaults(v1);
  }
}

uint64_t sub_100009AA0(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 == 4)
  {
    v7 = [v5 pathExtension];
    v8 = [v7 isEqualToString:@"lproj"];

    if (v8)
    {
      v9 = [v6 URLByAppendingPathComponent:@"InfoPlist.strings" isDirectory:0];
      v10 = +[MIFileManager defaultManager];
      v11 = [v10 itemExistsAtURL:v9];

      if (v11)
      {
        v12 = *(a1 + 32);
        v13 = [v6 lastPathComponent];
        v14 = [v12 URLByAppendingPathComponent:v13 isDirectory:1];

        v15 = +[MIFileManager defaultManager];
        v24 = 0;
        v16 = [v15 createDirectoryAtURL:v14 withIntermediateDirectories:0 mode:493 error:&v24];
        v17 = v24;

        if (v16)
        {
          v18 = [v14 URLByAppendingPathComponent:@"InfoPlist.strings" isDirectory:0];
          v19 = +[MIFileManager defaultManager];
          v23 = v17;
          v20 = [v19 copyItemAtURL:v9 toURL:v18 error:&v23];
          v21 = v23;

          if ((v20 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
          {
            MOLogWrite();
          }
        }

        else
        {
          if (!gLogHandle || *(gLogHandle + 44) >= 3)
          {
            MOLogWrite();
          }

          v21 = v17;
        }
      }
    }
  }

  return 1;
}

uint64_t sub_10000ACD0(uint64_t a1)
{
  qword_10002DF58 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

uint64_t sub_10000B5F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000B60C(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [v5 lastPathComponent];
  if (*(a1 + 72) == 1)
  {
    if (a3 == 4)
    {
      if ([*(a1 + 40) containsObject:v6])
      {
        goto LABEL_4;
      }

      if (gLogHandle && *(gLogHandle + 44) < 5)
      {
        goto LABEL_29;
      }
    }

    else if (gLogHandle && *(gLogHandle + 44) < 5)
    {
      goto LABEL_29;
    }

LABEL_28:
    v24 = [v5 path];
    MOLogWrite();

LABEL_29:
    v13 = 1;
    goto LABEL_30;
  }

LABEL_4:
  if ([v6 isEqualToString:@".com.apple.mobile_container_manager.metadata.plist"])
  {
    if (gLogHandle && *(gLogHandle + 44) < 5)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v7 = [*(a1 + 48) URLByAppendingPathComponent:v6 isDirectory:1];
  v8 = *(a1 + 56);
  v36 = 0;
  v9 = [v8 removeItemAtURL:v7 error:&v36];
  v10 = v36;
  if ((v9 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v11 = *(a1 + 32);
    v29 = [v7 path];
    v32 = v10;
    v26 = v11;
    MOLogWrite();
  }

  v12 = *(a1 + 56);
  v35 = v10;
  v13 = [v12 moveItemIfExistsAtURL:v5 toURL:v7 error:{&v35, v26, v29, v32}];
  v14 = v35;

  if ((v13 & 1) == 0)
  {
    v15 = gLogHandle;
    if ((!gLogHandle || *(gLogHandle + 44) >= 5) && (v16 = getuid(), v17 = getgid(), v33 = geteuid(), v34 = getegid(), v30 = v17, v27 = v16, MOLogWrite(), (v15 = gLogHandle) == 0) || *(v15 + 44) >= 5)
    {
      v27 = [v5 path];
      MOLogWrite();
    }

    [*(a1 + 56) logAccessPermissionsForURL:{v5, v27}];
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      v28 = [v7 path];
      MOLogWrite();
    }

    [*(a1 + 56) logAccessPermissionsForURL:{v7, v28}];
    v18 = MIInstallerErrorDomain;
    v19 = [v5 path];
    v31 = [v7 path];
    v21 = _CreateAndLogError("[MISafeHarborManager fromMIH_createSafeHarborWithIdentifier:forPersona:containerType:andMigrateDataFrom:containsOneOrMoreSymlinks:withError:]_block_invoke", 183, v18, 21, v14, 0, @"Failed to move %@ to %@ : %@", v20, v19);
    v22 = *(*(a1 + 64) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;
  }

LABEL_30:
  return v13;
}

void sub_10000C2D8(id *a1)
{
  v2 = [a1[4] block];
  v2[2]();

  v3 = [a1[5] internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C3B0;
  block[3] = &unk_100024B70;
  v7 = a1[6];
  v4 = a1[4];
  v5 = a1[5];
  v8 = v4;
  v9 = v5;
  dispatch_async(v3, block);
}

id sub_10000C3B0(uint64_t a1)
{
  if (gLogHandle && *(gLogHandle + 44) >= 7)
  {
    v2 = *(a1 + 32);
    [*(a1 + 40) descString];
    v7 = v6 = v2;
    MOLogWrite();
  }

  v3 = [*(a1 + 48) activeIdentifiers];
  [v3 removeObject:*(a1 + 32)];

  v4 = *(a1 + 48);

  return [v4 _onQueue_deQueueIfNeeded];
}

uint64_t patchFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = 0u;
  v38 = 0u;
  buf = 0;
  v35 = 0;
  v36 = 0;
  if ((*(a3 + 16))(a3, 3, &v37, 32, 0) != 32)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      return 0;
    }

LABEL_34:
    v27 = __error();
    strerror(*v27);
LABEL_37:
    MOLogWrite();
    return 0;
  }

  if (v37 != 0x3034464649445342)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      return 0;
    }

    goto LABEL_37;
  }

  v9 = sub_10000D1E4(a3, 4, a4, 32);
  if (!v9)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      return 0;
    }

    goto LABEL_34;
  }

  v10 = v9;
  v11 = sub_10000D1E4(a3, 5, a4, *(&v37 + 1) + 32);
  if (!v11)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v29 = __error();
      strerror(*v29);
      MOLogWrite();
    }

    v26 = 0;
    goto LABEL_84;
  }

  v12 = v11;
  v13 = sub_10000D1E4(a3, 6, a4, *(&v37 + 1) + v38 + 32);
  if (!v13)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v30 = __error();
      strerror(*v30);
      MOLogWrite();
    }

    v26 = 0;
    goto LABEL_83;
  }

  v14 = v13;
  v15 = malloc_type_malloc(0x10000uLL, 0x2779B443uLL);
  if (!v15)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v31 = __error();
      strerror(*v31);
      MOLogWrite();
    }

    v26 = 0;
    goto LABEL_82;
  }

  v16 = v15;
  v17 = malloc_type_malloc(0x10000uLL, 0x8F9F5CCDuLL);
  if (!v17)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v32 = __error();
      strerror(*v32);
      MOLogWrite();
    }

    v26 = 0;
    goto LABEL_81;
  }

  v18 = v17;
  if (!*(&v38 + 1))
  {
    v26 = 1;
    goto LABEL_80;
  }

  v19 = 0;
  v20 = 0;
  v33 = v12;
  while (1)
  {
    if (sub_10000D37C(v10, &buf, 24) != 24)
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_79;
      }

      goto LABEL_78;
    }

    if (v36 < 0)
    {
      v36 = -(v36 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v21 = buf;
    if (buf)
    {
      break;
    }

LABEL_23:
    v24 = v35;
    if (v35)
    {
      while (1)
      {
        v25 = v24 >= 0x10000 ? 0x10000 : v24;
        if (v25 != sub_10000D37C(v14, v18, v25))
        {
          break;
        }

        if ((*(a5 + 16))(a5, 2, v18, v25, v19) != v25)
        {
          v12 = v33;
          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
            goto LABEL_79;
          }

          goto LABEL_78;
        }

        v19 += v25;
        v24 -= v25;
        if (!v24)
        {
          goto LABEL_30;
        }
      }

      v12 = v33;
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_79;
      }

LABEL_78:
      MOLogWrite();
LABEL_79:
      v26 = 0;
      goto LABEL_80;
    }

LABEL_30:
    v20 += v36;
    v26 = 1;
    v12 = v33;
    if (v19 >= *(&v38 + 1))
    {
      goto LABEL_80;
    }
  }

  while (1)
  {
    if (v21 >= 0x10000)
    {
      v22 = 0x10000;
    }

    else
    {
      v22 = v21;
    }

    if ((*(a1 + 16))(a1, 1, v16, v22, v20) != v22)
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        goto LABEL_68;
      }

      goto LABEL_69;
    }

    if (v22 != sub_10000D37C(v33, v18, v22))
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        goto LABEL_68;
      }

      goto LABEL_69;
    }

    v23 = 0;
    do
    {
      *(v18 + v23) += v16[v23];
      ++v23;
    }

    while (v22 != v23);
    if ((*(a5 + 16))(a5, 2, v18, v22, v19) != v22)
    {
      break;
    }

    v20 += v22;
    v19 += v22;
    v21 -= v22;
    if (!v21)
    {
      goto LABEL_23;
    }
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
LABEL_68:
    MOLogWrite();
  }

LABEL_69:
  v26 = 0;
  v12 = v33;
LABEL_80:
  free(v18);
LABEL_81:
  free(v16);
LABEL_82:
  sub_10000D3F8(v14);
LABEL_83:
  sub_10000D3F8(v12);
LABEL_84:
  sub_10000D3F8(v10);
  return v26;
}

void *sub_10000D1E4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  bzerror = 0;
  v8 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040A4FBEE0AuLL);
  v9 = v8;
  if (!v8)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_14;
    }

LABEL_12:
    v12 = __error();
    strerror(*v12);
LABEL_13:
    MOLogWrite();
LABEL_14:
    sub_10000D3F8(v9);
    return 0;
  }

  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a1;
  v10 = funopen(v8, sub_10000D7A0, 0, 0, 0);
  v9[4] = v10;
  if (!v10)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v11 = BZ2_bzReadOpen(&bzerror, v10, 0, 0, 0, 0);
  v9[5] = v11;
  if (!v11)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return v9;
}

uint64_t sub_10000D37C(uint64_t a1, void *buf, int len)
{
  bzerror = 0;
  result = BZ2_bzRead(&bzerror, *(a1 + 40), buf, len);
  if ((bzerror & 0xFFFFFFFB) != 0)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void sub_10000D3F8(void *a1)
{
  bzerror = 0;
  if (a1)
  {
    v2 = a1[5];
    if (v2)
    {
      BZ2_bzReadClose(&bzerror, v2);
    }

    v3 = a1[4];
    if (v3)
    {
      fclose(v3);
    }

    free(a1);
  }
}

uint64_t patch_file(const char *a1, const char *a2, int a3)
{
  memset(&v22, 0, sizeof(v22));
  memset(&v21, 0, sizeof(v21));
  v5 = open(a1, 256);
  if (v5 != -1)
  {
    v6 = v5;
    if (fstat(v5, &v22) == -1)
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v7 = open(a2, 256);
      if (v7 != -1)
      {
        v8 = v7;
        if (fstat(v7, &v21) == -1)
        {
          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
            goto LABEL_24;
          }

          v13 = __error();
          strerror(*v13);
        }

        else
        {
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 0x40000000;
          v19[2] = sub_10000D764;
          v19[3] = &unk_100024B90;
          v20 = v6;
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 0x40000000;
          v17[2] = sub_10000D778;
          v17[3] = &unk_100024BB0;
          v18 = v8;
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 0x40000000;
          v15[2] = sub_10000D78C;
          v15[3] = &unk_100024BD0;
          v16 = a3;
          if (patchFile(v19, v9, v17, v21.st_size, v15))
          {
            v10 = 0;
LABEL_25:
            close(v8);
            goto LABEL_26;
          }

          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
LABEL_24:
            v10 = 0xFFFFFFFFLL;
            goto LABEL_25;
          }
        }

        MOLogWrite();
        goto LABEL_24;
      }

      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
LABEL_17:
        v10 = 0xFFFFFFFFLL;
LABEL_26:
        close(v6);
        return v10;
      }
    }

    v12 = __error();
    strerror(*v12);
    MOLogWrite();
    goto LABEL_17;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v11 = __error();
    strerror(*v11);
    MOLogWrite();
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000D7A0(uint64_t a1)
{
  result = (*(*(a1 + 24) + 16))();
  if (result == -1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 16) += result;
  return result;
}

id MIGetBooleanEntitlement(void *a1, void *a2, id a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = [a1 objectForKeyedSubscript:v5];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        a3 = [v6 BOOLValue];
      }

      else if (gLogHandle && *(gLogHandle + 44) >= 7)
      {
        MOLogWrite();
      }
    }

    else
    {
      a3 = 0;
    }
  }

  else
  {
    a3 = 0;
  }

  return a3;
}

uint64_t MIGetFirstTrueBooleanEntitlement(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = a2;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (MIGetBooleanEntitlement(v5, *(*(&v13 + 1) + 8 * v10), a3))
        {
          v11 = 1;
          goto LABEL_11;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

BOOL MIHasSeatbeltProfilesEntitlement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"seatbelt-profiles"];
  v2 = v1 != 0;

  return v2;
}

id MICopyPlaceholderEntitlements(void *a1, uint64_t a2)
{
  v3 = [a1 URLByAppendingPathComponent:@"PlaceholderEntitlements.plist" isDirectory:0];
  v4 = [NSDictionary dictionaryWithContentsOfURL:v3 error:a2];

  return v4;
}

id MIWritePlaceholderEntitlements(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [a1 URLByAppendingPathComponent:@"PlaceholderEntitlements.plist" isDirectory:0];
  v7 = [v5 MI_writeToURL:v6 format:200 options:268435457 error:a3];

  return v7;
}

id sub_10000DBEC(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 objectForKeyedSubscript:v3];
  if (!v4)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = objc_opt_class();
  if (isKindOfClass)
  {
    if (MIArrayContainsOnlyClass(v4, v6))
    {
      v7 = v4;
LABEL_7:
      v8 = [NSSet setWithArray:v7];
      v9 = [v8 allObjects];

      goto LABEL_16;
    }

    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_14;
    }

LABEL_13:
    MOLogWrite();
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v11 = v4;
  v7 = [NSArray arrayWithObjects:&v11 count:1];
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_15:
  v9 = 0;
LABEL_16:

  return v9;
}

BOOL MIHasAnyApplicationGroupEntitlements(void *a1)
{
  v1 = sub_10000DBEC(a1, @"com.apple.security.application-groups");
  v2 = v1 != 0;

  return v2;
}

id MICopySystemGroupEntitlement(void *a1)
{
  v1 = a1;
  v2 = sub_10000DBEC(v1, @"com.apple.security.system-groups");
  v3 = v2;
  if (!v2 || ![v2 count])
  {
    v4 = sub_10000DBEC(v1, @"com.apple.security.system-group-containers");

    v3 = v4;
  }

  return v3;
}

BOOL MIHasAnySystemGroupEntitlements(void *a1)
{
  v1 = MICopySystemGroupEntitlement(a1);
  v2 = v1 != 0;

  return v2;
}

id MICopyParentIdentifiersEntitlement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"com.apple.developer.parent-application-identifiers"];
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = objc_opt_class(), MIArrayContainsOnlyClass(v3, v4)))
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id MICopyApplicationIdentifierEntitlement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"application-identifier"];
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id MICopyPreviousApplicationIdentifiersEntitlement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"previous-application-identifiers"];
  v2 = objc_opt_class();
  v3 = MIArrayifyThing(v1, v2);

  return v3;
}

id MICopyKeychainAccessGroupEntitlement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"keychain-access-groups"];
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = objc_opt_class(), MIArrayContainsOnlyClass(v3, v4)))
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id MICopyAppManagementDomainEntitlement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"com.apple.developer.app-management-domain"];
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t MIClassifyAppManagementDomainValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 hasPrefix:@"swift-playgrounds"])
    {
      v3 = 2;
    }

    else if ([v2 isEqualToString:@"com.apple.WebKit.PushBundles"])
    {
      v3 = 3;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

uint64_t MIClassifyAppManagementDomainEntitlement(void *a1)
{
  v1 = MICopyAppManagementDomainEntitlement(a1);
  v2 = MIClassifyAppManagementDomainValue(v1);

  return v2;
}

id MICopyNetworkExtensionEntitlement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"com.apple.developer.networking.networkextension"];
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = objc_opt_class(), MIArrayContainsOnlyClass(v3, v4)))
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id MICopyAssociatedAppClipsEntitlement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"com.apple.developer.associated-appclip-app-identifiers"];
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = objc_opt_class(), MIArrayContainsOnlyClass(v3, v4)))
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id MICopyDataProtectionClassEntitlement(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"com.apple.developer.default-data-protection"];
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v5 = [v1 objectForKeyedSubscript:@"data-protection-class"];
    objc_opt_class();
    v6 = v5;
    v4 = (objc_opt_isKindOfClass() & 1) != 0 ? v6 : 0;

    if (!v4)
    {
      v7 = [v1 objectForKeyedSubscript:@"DataProtectionClass"];
      objc_opt_class();
      v8 = v7;
      if (objc_opt_isKindOfClass())
      {
        v4 = v8;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

id MICopyDataProtectionIfAvailableEntitlement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"com.apple.developer.default-data-protection-if-available"];
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v2;
  }

  else
  {
    objc_opt_class();
    v5 = v2;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v7 = v5;
      v8 = objc_opt_class();
      v4 = MIArrayFilteredToContainOnlyClass(v7, v8);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

id MICopyMemoryTransferAcceptEntitlement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"com.apple.developer.memory.transfer-accept"];
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id MICopyMemoryTransferSendEntitlement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"com.apple.developer.memory.transfer-send"];
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id MIBooleanValue(void *a1, id a2)
{
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a2 = [v3 BOOLValue];
  }

  return a2;
}

uint64_t MIArrayContainsOnlyClass(void *a1, uint64_t a2)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = a1;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = 0;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

id MIArrayFilteredToContainOnlyClass(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:{v9, v12}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

uint64_t MIDictionaryContainsOnlyClasses(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000EB3C;
  v8[3] = &unk_100024BF8;
  v8[4] = &v9;
  v8[5] = a2;
  v8[6] = a3;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_10000EB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000EB3C(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  if (a1[5] && (objc_opt_isKindOfClass() & 1) == 0 || a1[6] && (objc_opt_isKindOfClass() & 1) == 0)
  {
    *(*(a1[4] + 8) + 24) = 0;
    *a4 = 1;
  }
}

id MIStringifyObject(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      v2 = [NSString stringWithFormat:@"%@", v1];
    }

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id MIArrayifyThing(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (MIArrayContainsOnlyClass(v3, a2))
      {
        v4 = v3;
LABEL_7:
        v5 = v4;
        goto LABEL_12;
      }
    }

    else
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v3;
        v4 = [NSArray arrayWithObjects:&v8 count:1];
        goto LABEL_7;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v3 allObjects];
        if (MIArrayContainsOnlyClass(v6, a2))
        {
          v5 = v6;
        }

        else
        {
          v5 = 0;
        }

        goto LABEL_12;
      }
    }
  }

  v5 = 0;
LABEL_12:

  return v5;
}

BOOL MICompareObjects(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = (v3 != 0) == (v4 != 0) && (!v3 || !v4 || [v3 isEqual:v4]);

  return v6;
}

int main(int argc, const char **argv, const char **envp)
{
  [NSError _setFileNameLocalizationEnabled:0];
  v3 = +[MIFileManager defaultManager];
  context = objc_autoreleasePoolPush();
  v28 = os_transaction_create();
  v4 = &audit_token_to_egid_ptr;
  v5 = +[MIDaemonConfiguration sharedInstance];
  v6 = [v5 helperLogDirectory];
  v27 = [v6 URLByAppendingPathComponent:@"mobile_installation_helper.log" isDirectory:0];

  v7 = +[MIDaemonConfiguration sharedInstance];
  LODWORD(v6) = [v7 allowsInternalSecurityPolicy];

  v8 = 0;
  v9 = 0;
  if (v6)
  {
    v10 = 4;
  }

  else
  {
    v10 = 1;
  }

  v30 = v10 + 1;
  do
  {
    v11 = v9;
    v12 = [NSString stringWithFormat:@"%s.%u", "mobile_installation_helper.log", v8, v26];
    v13 = [v4[203] sharedInstance];
    v14 = [v13 logDirectory];
    v15 = [v14 URLByAppendingPathComponent:v12 isDirectory:0];

    v16 = [v4[203] sharedInstance];
    v17 = [v16 helperLogDirectory];
    v18 = [v17 URLByAppendingPathComponent:v12 isDirectory:0];

    v31 = v11;
    LOBYTE(v17) = [v3 moveItemIfExistsAtURL:v15 toURL:v18 error:&v31];
    v9 = v31;

    if ((v17 & 1) == 0)
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v19 = [v15 path];
        v25 = [v18 path];
        v26 = v9;
        MOLogWrite();

        v4 = &audit_token_to_egid_ptr;
      }

      v9 = 0;
    }

    v8 = (v8 + 1);
  }

  while (v30 != v8);
  gLogHandle = MOLogOpen();
  if (!gLogHandle)
  {
    syslog(3, "Failed to set up rotating logs at path %s", [v27 fileSystemRepresentation]);
  }

  [v27 fileSystemRepresentation];
  MOLogEnableDiskLogging();
  ICLSetLoggingHandle();
  if (gLogHandle && *(gLogHandle + 44) >= 7)
  {
    MOLogWrite();
  }

  signal(15, 1);
  v20 = dispatch_get_global_queue(21, 0);
  v21 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v20);
  dispatch_source_set_event_handler(v21, &stru_100024C58);
  dispatch_activate(v21);
  v22 = +[NSXPCListener serviceListener];
  v23 = objc_opt_new();
  [v22 setDelegate:v23];

  objc_autoreleasePoolPop(context);
  [v22 resume];

  return 0;
}

void sub_10000F500(id a1)
{
  v2 = gLogHandle;
  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    v2 = MOLogWrite();
  }

  _xpc_transaction_exit_clean(v2);
}

void sub_10000F598(id a1)
{
  v1 = [MILimitedConcurrencyQueue alloc];
  v4 = +[MIDaemonConfiguration sharedInstance];
  v2 = -[MILimitedConcurrencyQueue initWithName:width:](v1, "initWithName:width:", @"com.apple.MobileInstallationHelperService.LimitedConcurrencyQueue", [v4 nSimultaneousInstallations]);
  v3 = qword_10002DF70;
  qword_10002DF70 = v2;
}

void sub_1000105E0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x100010560);
  }

  JUMPOUT(0x1000105F4);
}

void sub_1000111AC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x100011128);
  }

  JUMPOUT(0x1000111C0);
}

void sub_100011DC0(id a1)
{
  v4 = [NSString stringWithFormat:@"com.apple.MobileInstallation.%s", "[MobileInstallationHelperService makeSymlinkFromAppDataContainerToBundleForIdentifier:forPersona:completion:]_block_invoke"];
  v1 = v4;
  v2 = dispatch_workloop_create([v4 UTF8String]);
  v3 = qword_10002DF80;
  qword_10002DF80 = v2;
}

void sub_1000126B8(id a1)
{
  v4 = [NSString stringWithFormat:@"com.apple.MobileInstallation.%s", "[MobileInstallationHelperService createSafeHarborWithIdentifier:forPersona:containerType:andMigrateDataFrom:completion:]_block_invoke"];
  v1 = v4;
  v2 = dispatch_workloop_create([v4 UTF8String]);
  v3 = qword_10002DF90;
  qword_10002DF90 = v2;
}

void sub_100012A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100012A98(uint64_t a1, void *a2, int a3, _BYTE *a4)
{
  v7 = [a2 path];
  v8 = [v7 substringFromIndex:*(a1 + 56)];

  v9 = [*(a1 + 32) containsObject:v8];
  if (v9)
  {
    if (a3 == 4)
    {
      *a4 = 1;
    }
  }

  else
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v11 = [*(a1 + 40) path];
      MOLogWrite();
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return v9;
}

void sub_100013054(id a1)
{
  v4 = [NSString stringWithFormat:@"com.apple.MobileInstallation.%s", "[MobileInstallationHelperService createAppSnapshotWithBundleID:snapshotToURL:onlyV1AppIfPresent:placeholderOnly:completion:]_block_invoke"];
  v1 = v4;
  v2 = dispatch_workloop_create([v4 UTF8String]);
  v3 = qword_10002DFA0;
  qword_10002DFA0 = v2;
}

uint64_t sub_10001399C(void *a1, _OWORD *a2, void *a3)
{
  v5 = [a1 fileSystemRepresentation];
  v6 = a2[1];
  *&atoken.st_dev = *a2;
  *&atoken.st_uid = v6;
  v7 = audit_token_to_euid(&atoken);
  v8 = a2[1];
  *&atoken.st_dev = *a2;
  *&atoken.st_uid = v8;
  v9 = audit_token_to_egid(&atoken);
  memset(&atoken, 0, sizeof(atoken));
  if (lstat(v5, &atoken))
  {
    v10 = *__error();
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      strerror(v10);
LABEL_7:
      MOLogWrite();
    }
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    goto LABEL_7;
  }

  if (!v7)
  {
    v12 = 0;
    if (!access(v5, 2))
    {
      v17 = 1;
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  v20 = 0;
  v11 = MIAssumeIdentity(v7, v9, &v20);
  v12 = v20;
  if ((v11 & 1) == 0)
  {
    v17 = 0;
    if (!a3)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (access(v5, 2))
  {
LABEL_13:
    v14 = __error();
    v16 = _CreateError("_VerifyWriteAccessToURLWithToken", 1208, NSPOSIXErrorDomain, *v14, 0, 0, @"access failed for uid %u path %s", v15, v7);

    v13 = 0;
    v17 = 0;
    v12 = v16;
    if (!v7)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v13 = 1;
LABEL_14:
  MIRestoreIdentity();
  v17 = v13;
LABEL_15:
  if (!a3)
  {
    goto LABEL_21;
  }

LABEL_18:
  if ((v17 & 1) == 0)
  {
    v18 = v12;
    v17 = 0;
    *a3 = v12;
  }

LABEL_21:

  return v17;
}

id sub_100013E2C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 88);
  v8[0] = *(a1 + 72);
  v8[1] = v6;
  return [v2 _onQueue_moveItemInStagingLocation:v1 atRelativePath:v3 toDestinationURL:v4 onBehalfOf:v8 completion:v5];
}

id sub_100014710(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 80);
  v7[0] = *(a1 + 64);
  v7[1] = v5;
  return [v2 _onQueue_cloneItemAtURL:v1 toURL:v3 onBehalfOf:v7 completion:v4];
}

uint64_t sub_100015594@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W8>)
{
  *(a3 + 14) = v4;
  *(a3 + 22) = 2112;
  *(a3 + 24) = result;
  *(a3 + 32) = a4;
  *(a3 + 34) = a2;
  return result;
}

void sub_1000155B0(uint64_t a1@<X2>, uint64_t a2@<X8>, float a3@<S0>)
{
  *a1 = a3;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2080;
}

uint64_t sub_1000155C4(uint64_t a1, void *a2, size_t *a3, int a4)
{
  v9 = 0;
  v10 = 0;
  if (!a2 || !a3)
  {
LABEL_7:
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  *a2 = 0;
  *a3 = 0;
  if (!sub_1000156B8(a1, &v9))
  {
    if ((v9 & 0x3E) != 0x2E)
    {
      return 0;
    }

    if (v10 < 2)
    {
      if (HIDWORD(v10) == HIDWORD(v9) - 1)
      {
        return sub_100015B60(HIDWORD(v10), a2, a3);
      }

      if (a4)
      {
        return sub_100015A50(a1, a2, a3, HIDWORD(v9), HIDWORD(v10));
      }

      syslog(3, "arm64 slice at index %u, not last (nfat_arch = %u)\n");
    }

    else
    {
      syslog(3, "too many (%u) arm64 slices\n");
    }

    goto LABEL_7;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000156B8(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  fat_header = 0;
  memset(&v21, 0, sizeof(v21));
  memset(&v20, 0, sizeof(v20));
  *a2 = 0;
  *(a2 + 8) = 0;
  result = fstat(a1, &v20);
  if (result != -1)
  {
    if (sub_100015E80(v3, &fat_header, 8uLL, 0))
    {
      if (fat_header.magic != -1095041334)
      {
        return 0;
      }

      swap_fat_header(&fat_header, NX_LittleEndian);
      nfat_arch = fat_header.nfat_arch;
      *(a2 + 4) = fat_header.nfat_arch;
      if (sub_100015ECC(v3, nfat_arch, &v21))
      {
        if (v21.cputype == 16777228)
        {
          v18 = 0u;
          v19 = 0u;
          if (v20.st_size > v21.offset && v21.size >= 0x1C && v20.st_size >= (v21.size + v21.offset) && v21.align <= 0x40)
          {
            if (v21.size + v21.offset > 0x1F)
            {
              if (sub_100015E80(v3, &v18, 0x20uLL, v21.offset) && v18 == -17958193 && HIDWORD(v18) == 2)
              {
                *a2 |= 0x10u;
                ++fat_header.nfat_arch;
              }
            }

            else
            {
              *__error() = 34;
            }
          }
        }

        if (fat_header.nfat_arch)
        {
          v6 = 0;
          while (1)
          {
            if (!sub_100015ECC(v3, v6, &v21))
            {
              return 0xFFFFFFFFLL;
            }

            if (v21.cputype == 12)
            {
              *a2 |= 2u;
              v7 = 1;
            }

            else
            {
              v7 = 0;
              if (v21.cputype == 16777228)
              {
                *a2 |= 4u;
                ++*(a2 + 8);
                *(a2 + 12) = v6;
              }
            }

            v18 = 0u;
            v19 = 0u;
            if (v21.size + v21.offset <= 0x1F)
            {
              *__error() = 34;
              return 0xFFFFFFFFLL;
            }

            if (!sub_100015E80(v3, &v18, 0x20uLL, v21.offset))
            {
              return 0xFFFFFFFFLL;
            }

            if (v18 == -17958193)
            {
              break;
            }

            if (v18 == -17958194)
            {
              v8 = HIDWORD(v18);
              v9 = v19;
              v10 = 28;
              v11 = 28;
              goto LABEL_29;
            }

            syslog(5, "ignoring slice with magic %08x\n", v18);
LABEL_47:
            if (++v6 >= fat_header.nfat_arch)
            {
              return 0;
            }
          }

          v8 = HIDWORD(v18);
          v9 = v19;
          v10 = 32;
          v11 = 32;
LABEL_29:
          if (v8 == 2)
          {
            *a2 |= 0x20u;
            v11 = v10;
          }

          if (v7)
          {
            if (v9)
            {
              while (1)
              {
                v17 = 0;
                v12 = sub_100015F20(v3, &v17, 8uLL, v11, v21.offset, v21.size);
                v13 = v12;
                if (!v12)
                {
                  goto LABEL_42;
                }

                if (v17 == 37)
                {
                  break;
                }

                v11 += HIDWORD(v17);
                if (!--v9)
                {
                  goto LABEL_36;
                }
              }

              v15 = 0;
              v16 = 0;
              if (!sub_100015F20(v3, &v15, 0x10uLL, v11, v21.offset, v21.size))
              {
LABEL_42:
                v14 = 1;
                goto LABEL_43;
              }

              if (WORD1(v16) <= 6u)
              {
                *a2 |= 8u;
              }
            }

            else
            {
LABEL_36:
              v13 = 0;
            }

            v14 = 6;
LABEL_43:
            if (v14 != 6 || v13)
            {
              if (v14 != 6)
              {
                return 0xFFFFFFFFLL;
              }
            }

            else
            {
              *a2 |= 8u;
            }
          }

          goto LABEL_47;
        }

        return 0;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100015A50(uint64_t a1, void *a2, size_t *a3, unsigned int a4, unsigned int a5)
{
  if (a4 >= 0x401)
  {
    v5 = __error();
    v6 = 22;
LABEL_7:
    *v5 = v6;
    return 0xFFFFFFFFLL;
  }

  v11 = a1;
  v12 = 20 * a4 + 8;
  v13 = malloc_type_malloc(v12, 0x6C149251uLL);
  if (!v13)
  {
    v5 = __error();
    v6 = 12;
    goto LABEL_7;
  }

  v14 = v13;
  if (sub_100015E80(v11, v13, v12, 0))
  {
    result = 0;
    v16 = &v14[5 * a4 - 5];
    v17 = v16[6];
    v18 = &v14[5 * a5];
    v19 = *(v18 + 2);
    v16[6] = v18[6];
    v20 = *(v16 + 2);
    *(v16 + 2) = v19;
    *(v18 + 2) = v20;
    v18[6] = v17;
    v14[1] = bswap32(a4 - 1);
    *a2 = v14;
    *a3 = v12;
    return result;
  }

  free(v14);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100015B60(unsigned int a1, void *a2, void *a3)
{
  v6 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  if (v6)
  {
    v7 = v6;
    result = 0;
    *v7 = -1095041334;
    v7[1] = bswap32(a1);
    *a2 = v7;
    *a3 = 8;
  }

  else
  {
    *__error() = 12;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100015BE4(uint64_t a1, void *a2, void *a3)
{
  v6 = 0;
  v7 = 0;
  if (!a2 || !a3)
  {
LABEL_11:
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  *a2 = 0;
  *a3 = 0;
  if (!sub_1000156B8(a1, &v6))
  {
    if ((~v6 & 0x3E) != 0)
    {
      return 0;
    }

    if (v7 < 2)
    {
      if (HIDWORD(v7) == HIDWORD(v6))
      {
        return sub_100015B60(HIDWORD(v7) + 1, a2, a3);
      }

      syslog(3, "arm64 slice at index %u, not last (nfat_arch = %u)\n");
    }

    else
    {
      syslog(3, "too many (%u) arm64 slices\n");
    }

    goto LABEL_11;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100015CBC(char *a1, int a2, int a3, _BYTE *a4)
{
  v20 = 0;
  v21 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  v8 = open(a1, 256);
  v9 = v8;
  if (v8 == -1)
  {
    v10 = __error();
    v11 = strerror(*v10);
    syslog(3, "Could not open %s for reading: %s", a1, v11);
    goto LABEL_11;
  }

  if (a2)
  {
    if (!sub_1000155C4(v8, &v21, &v20, a3))
    {
      goto LABEL_12;
    }

LABEL_11:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

  if (a3)
  {
    syslog(4, "allow_reorder not allowed for unhiding");
  }

  if (sub_100015BE4(v9, &v21, &v20))
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v20)
  {
    close(v9);
    v13 = open(a1, 258);
    LODWORD(v9) = v13;
    if (v13 == -1)
    {
      v17 = __error();
      strerror(*v17);
      syslog(3, "Could not open %s for writing: %s");
    }

    else
    {
      v14 = v20;
      v15 = pwrite(v13, v21, v20, 0);
      v16 = v15;
      if (v15 != v14 && v15 != -1)
      {
        *__error() = 5;
      }

      if (v16 == v14)
      {
        if (a4)
        {
          v12 = 0;
          *a4 = 1;
          goto LABEL_23;
        }
      }

      else
      {
        v18 = __error();
        strerror(*v18);
        syslog(3, "Could not write new header to executable: %s");
      }
    }
  }

  v12 = 0;
LABEL_23:
  if (v21)
  {
    free(v21);
  }

  if (v9 != -1)
  {
    close(v9);
  }

  return v12;
}

BOOL sub_100015E80(int a1, void *a2, size_t a3, off_t a4)
{
  v5 = pread(a1, a2, a3, a4);
  v6 = v5;
  if (v5 != a3 && v5 != -1)
  {
    *__error() = 5;
  }

  return v6 == a3;
}

BOOL sub_100015ECC(int a1, int a2, fat_arch *a3)
{
  v4 = sub_100015E80(a1, a3, 0x14uLL, 20 * a2 + 8);
  if (v4)
  {
    swap_fat_arch(a3, 1u, NX_LittleEndian);
  }

  return v4;
}

BOOL sub_100015F20(int a1, void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 < 0 || (a4 + a3) > a6 + a5)
  {
    *__error() = 34;
    return 0;
  }

  else
  {
    v7 = a5 + a4;

    return sub_100015E80(a1, a2, a3, v7);
  }
}

void sub_100015FE0(void *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v7 = 136315138;
  v8 = a3;
  _os_log_send_and_compose_impl(v6, a1, a2, 80, &_mh_execute_header, &_os_log_default, 16, "getpwnam_r succeeded but no user was found with name %s", &v7);
  _os_crash_msg();
  __break(1u);
}

void sub_100016090(void *a1, _OWORD *a2)
{
  v4 = *__error();
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = 136315138;
  v7 = strerror(v4);
  _os_log_send_and_compose_impl(v5, a1, a2, 80, &_mh_execute_header, &_os_log_default, 16, "Failed to get home dir path size: %s", &v6);
  _os_crash_msg();
  __break(1u);
}

void sub_100016168()
{
  v0 = 136315138;
  v1 = "MIAssumeIdentity";
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Attempting to assume an identity of 0/0, which should be the default for the helper service", &v0, 0xCu);
}

void sub_1000161F0()
{
  v0 = 136315138;
  v1 = "MIRestoreIdentity";
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Attempting to restore an identity without having first assumed an identity", &v0, 0xCu);
}

void sub_1000162A0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000155B0(a3, "[MobileInstallationHelperService wipeStagingRootAndSetUpPerUserDataDirWithCompletion:]", 4.8153e-34);
  sub_100015594(v4, v5, v6, v7);
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: User %s is unable to traverse past %@ but lstat of that path failed: %s", v8, 0x2Au);
}

void sub_10001630C(void *a1, uint64_t a2, uint8_t *buf)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 20);
  v6 = *(a2 + 4);
  *(buf + 4) = "[MobileInstallationHelperService wipeStagingRootAndSetUpPerUserDataDirWithCompletion:]";
  *(buf + 6) = 2080;
  *buf = 136316418;
  *(buf + 14) = "_installd";
  *(buf + 11) = 2112;
  *(buf + 3) = a1;
  *(buf + 16) = 1024;
  *(buf + 34) = v4;
  *(buf + 19) = 1024;
  *(buf + 10) = v5;
  *(buf + 22) = 1024;
  *(buf + 46) = v6;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: User %s is unable to traverse past %@ %u/%u 0%o", buf, 0x32u);
}

void sub_1000163B4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000155B0(a3, "[MobileInstallationHelperService wipeStagingRootAndSetUpPerUserDataDirWithCompletion:]", 4.8153e-34);
  sub_100015594(v4, v5, v6, v7);
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: User %s does not have read/write but does have execute access to %@ : %s", v8, 0x2Au);
}
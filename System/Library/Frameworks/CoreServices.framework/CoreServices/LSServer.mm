@interface LSServer
@end

@implementation LSServer

void ___LSServer_PerformOpenOperation_block_invoke(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v7 = _LSDefaultLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "LaunchServices: [Perform] not launching application - result = %{public}@", &v9, 0xCu);
    }
  }

  v8 = (*(*(a1 + 32) + 16))();
  MEMORY[0x1865D7C50](v8);
}

void ___LSServer_PerformOpenOperation_block_invoke_81(uint64_t a1)
{
  v149[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v114 = v2 != 0;
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v5 = v3;
  v6 = [v5 objectForKeyedSubscript:getFBSOpenApplicationOptionKeyPayloadURL()];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 isEqual:v4];
    if (v8)
    {
      v117 = [v5 mutableCopy];
      [v117 removeObjectForKey:getFBSOpenApplicationOptionKeyPayloadURL()];

      v9 = 0;
      v119 = 1;
      goto LABEL_9;
    }

    v10 = _LSDefaultLog(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      ___LSServer_PerformOpenOperation_block_invoke_81_cold_1();
    }

    *&v141 = *MEMORY[0x1E696A278];
    *buf = @"FBSOpenApplicationOptionKeyPayloadURL did not match input URL, making the open request ambiguous";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v141 count:1];
    v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v11, "_LSOpenOperationMassageOpenOptionsOrFail", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 231);
    v12 = v9;

    v119 = 0;
  }

  else
  {
    v9 = 0;
    v119 = 1;
  }

  v117 = v5;
LABEL_9:

  v13 = v9;
  v14 = v13;
  if (!v119)
  {
    v21 = v13;
    goto LABEL_86;
  }

  v15 = *(a1 + 48);
  v16 = *(a1 + 40);
  v110 = *(a1 + 136);
  v17 = *(a1 + 56);
  v18 = v16;
  v113 = v15;
  v19 = v17;
  v118 = v18;
  v20 = v2;
  v115 = v14;
  v116 = v19;
  if (v19)
  {
    objc_msgSend_auditToken(v19);
  }

  else
  {
    v147 = 0u;
    v148 = 0u;
  }

  v22 = [LSBundleRecord bundleRecordForAuditToken:&v147 error:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_42;
  }

  v23 = v22;
  v24 = [v23 extensionPointRecord];
  v25 = [v24 identifier];
  if (![v25 isEqualToString:@"com.apple.keyboard-service"])
  {

LABEL_41:
LABEL_42:

    goto LABEL_43;
  }

  v26 = v19;
  if (v19)
  {
    v28 = v26;
    v26 = objc_msgSend_auditToken(v26);
  }

  else
  {
    v28 = v26;
    v147 = 0u;
    v148 = 0u;
  }

  v29 = [__LSDefaultsGetSharedInstance(v26 v27)];
  v30 = v29;
  v102 = [v29 UTF8String];
  v31 = sandbox_check_by_audit_token();

  if (v31 != 1)
  {
    goto LABEL_41;
  }

  v106 = v20 == 0;
  if (v20)
  {
    v33 = _LSOpenLog(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      ___LSServer_PerformOpenOperation_block_invoke_81_cold_2(v146, [v28 processIdentifier]);
    }
  }

  v34 = [v118 scheme];
  v35 = [v34 caseInsensitiveCompare:@"file"] == 0;

  if (v35)
  {
    v37 = _LSOpenLog(v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      ___LSServer_PerformOpenOperation_block_invoke_81_cold_3(v145, [v28 processIdentifier]);
    }

    v106 = 0;
  }

  v38 = [LSClaimBinding claimBindingsWithURL:v118 error:0];
  v108 = v28;
  if (![v38 count])
  {
    v104 = v38;
    v95 = _LSOpenLog(0);
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      v96 = [v28 processIdentifier];
      v97 = [v118 scheme];
      ___LSServer_PerformOpenOperation_block_invoke_81_cold_5(v97, &v147, v96);
    }

LABEL_115:

LABEL_116:
    v52 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "_LSIsRequestAllowed", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 835);
    v101 = v52;

    v50 = 0;
    v51 = v20;
    goto LABEL_82;
  }

  if ([v38 count])
  {
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v104 = v38;
    v39 = v38;
    v40 = [v39 countByEnumeratingWithState:&v141 objects:buf count:16];
    if (v40)
    {
      v41 = *v142;
      obj = v39;
      while (2)
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v142 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v43 = *(*(&v141 + 1) + 8 * i);
          v44 = [v43 bundleRecord];
          if ([v44 developerType] != 1)
          {

LABEL_112:
            v98 = _LSOpenLog(v47);
            if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
            {
              v99 = [v108 processIdentifier];
              v100 = [v118 scheme];
              ___LSServer_PerformOpenOperation_block_invoke_81_cold_4(v100, &v147, v99);
            }

            v95 = obj;
            goto LABEL_115;
          }

          v45 = [v43 bundleRecord];
          v46 = _LSBundleIdentifierIsPlatformWebBrowser([v45 bundleIdentifier]) == 0;

          if (!v46)
          {
            goto LABEL_112;
          }
        }

        v39 = obj;
        v40 = [obj countByEnumeratingWithState:&v141 objects:buf count:16];
        if (v40)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
  }

  if (!v106)
  {
    goto LABEL_116;
  }

LABEL_43:
  if ([v118 isFileURL])
  {
    v48 = [v113 objectForKey:@"LSOneTapOpenBehaviorKey"];
    if (v48 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v49 = [v48 BOOLValue];
    }

    else
    {
      v49 = 0;
    }

    v105 = v116;
    v53 = v118;
    v54 = *(a1 + 120);
    *buf = *(a1 + 104);
    v136 = v54;
    v107 = v53;
    v55 = [v53 path];
    obja = [v55 lastPathComponent];

    v109 = [LSDocumentProxy documentProxyForURL:v107 isContentManaged:v110 sourceAuditToken:buf];
    if ((v49 & ([v20 length] == 0)) != 0)
    {
      v56 = 3;
    }

    else
    {
      v56 = 2;
    }

    *&v141 = 0;
    v103 = v56;
    v57 = [v109 applicationsAvailableForOpeningWithStyle:? limit:? XPCConnection:? error:?];
    v58 = v141;
    if ([v20 length] && (objc_msgSend(v105, "_xpcConnection"), v59 = objc_claimAutoreleasedReturnValue(), v60 = _LSXPCConnectionMayMapDatabase(v59) == 0, v59, v60))
    {

      v149[0] = *MEMORY[0x1E696A278];
      v64 = @"com.apple.private.coreservices.canmaplsdatabase";
      if (!@"com.apple.private.coreservices.canmaplsdatabase")
      {
        v64 = @"unknown entitlement";
      }

      *&v147 = v64;
      v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:v149 count:1];
      v66 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v65, "_LSIsDocumentOpenRequestValid", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 882);

      v61 = 0;
      v57 = 0;
      v51 = v20;
      v58 = v66;
    }

    else
    {
      if (v20 && [v20 length])
      {
        [LSApplicationProxy applicationProxyForIdentifier:v20];
        v61 = v51 = v20;
        if (!v57)
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (!v57 || ![v57 count])
        {
          v61 = 0;
          v51 = v20;
          goto LABEL_68;
        }

        v62 = [v57 objectAtIndex:0];
        v51 = [v62 bundleIdentifier];
        v63 = v51;
        v61 = v62;
      }

      if (v61 && ([v57 containsObject:v61] & 1) != 0)
      {
        goto LABEL_120;
      }
    }

LABEL_68:
    v67 = [obja pathExtension];
    v68 = v67;
    if (v67 && ([v67 isEqualToString:@"zip"] & 1) != 0)
    {
      v69 = [obja stringByDeletingPathExtension];
      v70 = [v69 pathExtension];
      v71 = [v70 length] == 0;

      if (!v71)
      {
        v72 = v69;

        obja = v72;
        v73 = [LSDocumentProxy documentProxyForName:v72 type:0 MIMEType:0 isContentManaged:v110 sourceAuditToken:buf];

        v134 = v58;
        v109 = v73;
        v74 = [v73 applicationsAvailableForOpeningWithStyle:v103 limit:-1 XPCConnection:0 error:&v134];
        v75 = v134;

        v57 = v74;
        v58 = v75;
        if (v61 || !v74)
        {
          if (!v74)
          {
LABEL_121:
            v69 = obja;
            goto LABEL_76;
          }
        }

        else if ([v74 count])
        {
          v76 = [v74 objectAtIndex:0];
          v51 = [v76 bundleIdentifier];
          v77 = v51;
          v61 = v76;
        }

        else
        {
          v61 = 0;
        }

        if ([v57 containsObject:v61])
        {

LABEL_120:
          v50 = 1;
          v52 = v115;
LABEL_81:

          goto LABEL_82;
        }

        goto LABEL_121;
      }
    }

    else
    {
      v69 = 0;
    }

LABEL_76:

    if (v58)
    {
      v78 = v58;
      v52 = v58;
    }

    else
    {
      v79 = *MEMORY[0x1E696A768];
      v52 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "_LSIsDocumentOpenRequestValid", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 939);
      v80 = v52;
      if (!v52)
      {
        v52 = _LSMakeNSErrorImpl(v79, -10814, 0, "_LSIsDocumentOpenRequestValid", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 947);
      }
    }

    v81 = v52;
    v50 = 0;
    v58 = v52;
    goto LABEL_81;
  }

  v50 = 1;
  v51 = v20;
  v52 = v115;
LABEL_82:

  v82 = v51;
  v21 = v52;

  if (v50)
  {
    v83 = *(a1 + 40);
    v84 = *(a1 + 56);
    v120[0] = MEMORY[0x1E69E9820];
    v120[1] = 3321888768;
    v121 = ___LSServer_PerformOpenOperation_block_invoke_2;
    v122 = &unk_1EEF63A88;
    v130 = *(a1 + 96);
    v123 = *(a1 + 40);
    v124 = *(a1 + 64);
    v2 = v82;
    v125 = v2;
    v133 = v114;
    v126 = *(a1 + 72);
    v127 = *(a1 + 80);
    v131 = v117;
    v132 = 1;
    v128 = *(a1 + 88);
    v129 = *(a1 + 56);
    v85 = v83;
    v86 = v131;
    v87 = v84;
    v88 = v120;
    v89 = v88;
    if (v2)
    {
      v121(v88, 0);
LABEL_99:

      if (v132 == 1)
      {
      }

LABEL_102:
      goto LABEL_103;
    }

    v91 = objc_opt_class();
    v92 = [v86 objectForKey:@"NoOverrides"];
    v93 = v92;
    if (v91 && v92)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v93 = 0;
        goto LABEL_97;
      }
    }

    else if (!v92)
    {
      goto LABEL_97;
    }

    if ([v93 BOOLValue])
    {
      v121(v89, 0);
LABEL_98:

      goto LABEL_99;
    }

LABEL_97:
    v94 = +[LSAppLink _dispatchQueue];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&v136 = ___ZL19_LSTryUniversalLinkP5NSURLP8NSStringP12NSDictionaryIS2_P11objc_objectEP15NSXPCConnectionU13block_pointerFvbE_block_invoke;
    *(&v136 + 1) = &unk_1E6A1D538;
    v137 = v85;
    v138 = v87;
    v139 = v86;
    v140 = v89;
    dispatch_async(v94, buf);

    goto LABEL_98;
  }

  v2 = v82;
LABEL_86:
  v90 = _LSDefaultLog(v13);
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v21;
    _os_log_impl(&dword_18162D000, v90, OS_LOG_TYPE_DEFAULT, "Invalid LSOpenOperation request: %{public}@", buf, 0xCu);
  }

  (*(*(a1 + 96) + 16))();
  if (v119)
  {
    goto LABEL_102;
  }

LABEL_103:
}

void ___LSServer_PerformOpenOperation_block_invoke_2(uint64_t a1, int a2)
{
  v95 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if ((*(a1 + 104) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:nn200100]();
      exception_objecta = v67;

      if (v69)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v69);
      }

      _Unwind_Resume(exception_objecta);
    }

    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = *(a1 + 112);
    v17 = *(a1 + 88);
    v16 = *(a1 + 96);
    v18 = *(a1 + 64);
    v19 = *(a1 + 72);
    v20 = *(a1 + 80);
    v21 = *(a1 + 32);
    v22 = v12;
    v23 = v13;
    v24 = v14;
    v25 = v18;
    v26 = v16;
    v27 = v19;
    v28 = v20;
    v29 = v17;
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = ___ZL23_LSOpenOperationPerformP5NSURLP12NSFileHandleP8NSStringbS4_P12NSDictionaryIS4_P11objc_objectES9_PU42objcproto31LSOpenResourceOperationDelegate11objc_objectP15NSXPCConnectionU13block_pointerFvbP7NSErrorE_block_invoke;
    v82[3] = &unk_1E6A1D470;
    v30 = v21;
    v83 = v30;
    v31 = v22;
    v84 = v31;
    v80 = v23;
    v85 = v80;
    exception_object = v15;
    v92 = v15;
    v78 = v24;
    v86 = v78;
    v32 = v25;
    v87 = v32;
    v33 = v26;
    v88 = v33;
    v34 = v27;
    v89 = v34;
    v35 = v28;
    v90 = v35;
    v36 = v29;
    v91 = v36;
    v37 = MEMORY[0x1865D71B0](v82);
    v38 = [v30 isFileURL] ^ 1;
    if (!v31)
    {
      LOBYTE(v38) = 1;
    }

    if ((v38 & 1) == 0)
    {
      v39 = [v33 objectForKey:@"LSOneTapOpenBehaviorKey"];
      if (v39 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v40 = [v39 BOOLValue];

        if (v40)
        {
          v41 = objc_opt_class();
          v42 = [v33 objectForKey:@"FileProviderString"];
          v43 = v42;
          if (v41 && v42)
          {
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v45 = v42 == 0;

            if (v45)
            {
LABEL_20:
              v74 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v80 allowPlaceholder:0 error:0];
              v46 = [(LSApplicationRecord *)v74 supportsOpenInPlace];
              if (!v46 || (+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace, "defaultWorkspace"), v47 = objc_claimAutoreleasedReturnValue(), v48 = [v47 isApplicationEligibleForReadOnlyDocumentOpenBehavior:v74], v47, !v48))
              {
                v56 = _LSOpenLog(v46);
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf[0]) = 138477827;
                  *(buf + 4) = v80;
                  _os_log_impl(&dword_18162D000, v56, OS_LOG_TYPE_DEFAULT, "target of one-tap open %{private}@ does not support one-tap-open of readonly document", buf, 0xCu);
                }

                v37[2](v37);
                v57 = v74;
                goto LABEL_32;
              }

              v49 = objc_opt_class();
              v50 = [v33 objectForKey:@"LSFPSandboxExtensionKey"];
              v51 = v50;
              if (v49 && v50 && (objc_opt_isKindOfClass() & 1) == 0)
              {

                v51 = 0;
              }

              v72 = v51;
              v52 = v51;
              v53 = [v51 UTF8String];
              if (v53)
              {
                v81 = 0;
                LaunchServices::LSSandboxExtension::consume_shared(v53, &v81, buf);
                v54 = v81;
                v55 = v54;
                v70 = *(&buf[0] + 1);
                if (*&buf[0])
                {
                  v68 = *&buf[0];
                }

                else
                {
                  v58 = _LSOpenLog(v54);
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                  {
                    ___LSServer_PerformOpenOperation_block_invoke_2_cold_1();
                  }

                  v68 = 0;
                }
              }

              else
              {
                v55 = _LSOpenLog(0);
                if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                {
                  ___LSServer_PerformOpenOperation_block_invoke_2_cold_2(v55);
                }

                v68 = 0;
                v70 = 0;
              }

              if (fcntl([v31 fileDescriptor], 50, buf) == -1)
              {
                v62 = __error();
                v60 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], *v62, 0, "_LSOpenOperationPerform", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 732);
              }

              else
              {
                if (fstat([v31 fileDescriptor], &v93) != -1)
                {
                  v59 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:buf isDirectory:(v93.st_mode & 0xF000) == 0x4000 relativeToURL:0];

                  v30 = v59;
                  v61 = 0;
LABEL_45:
                  if (v61)
                  {
                    tv_sec = _LSOpenLog(v60);
                    if (os_log_type_enabled(tv_sec, OS_LOG_TYPE_ERROR))
                    {
                      ___LSServer_PerformOpenOperation_block_invoke_2_cold_3();
                    }
                  }

                  else
                  {
                    v65 = _LSOpenLog(v60);
                    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                    {
                      v93.st_dev = 138478083;
                      *&v93.st_mode = v30;
                      WORD2(v93.st_ino) = 2112;
                      *(&v93.st_ino + 6) = v80;
                      _os_log_impl(&dword_18162D000, v65, OS_LOG_TYPE_DEFAULT, "will extend bookmark and get FP string for %{private}@ to %@", &v93, 0x16u);
                    }

                    *&v93.st_dev = MEMORY[0x1E69E9820];
                    v93.st_ino = 3321888768;
                    *&v93.st_uid = ___ZL23_LSOpenOperationPerformP5NSURLP12NSFileHandleP8NSStringbS4_P12NSDictionaryIS4_P11objc_objectES9_PU42objcproto31LSOpenResourceOperationDelegate11objc_objectP15NSXPCConnectionU13block_pointerFvbP7NSErrorE_block_invoke_116;
                    *&v93.st_rdev = &unk_1EEF63AE0;
                    v93.st_atimespec.tv_sec = v33;
                    v93.st_atimespec.tv_nsec = v30;
                    v93.st_mtimespec.tv_sec = v31;
                    v93.st_mtimespec.tv_nsec = v80;
                    LOBYTE(v93.st_qspare[0]) = exception_object;
                    v93.st_ctimespec.tv_sec = v78;
                    v93.st_ctimespec.tv_nsec = v32;
                    v93.st_birthtimespec.tv_sec = v34;
                    v93.st_birthtimespec.tv_nsec = v35;
                    v93.st_size = v36;
                    v93.st_blocks = v37;
                    *&v93.st_blksize = v68;
                    *&v93.st_gen = v70;
                    if (v70)
                    {
                      atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    FPExtendBookmarkForDocumentURL_delayInitStub(v66);
                    if (*&v93.st_gen)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](*&v93.st_gen);
                    }

                    tv_sec = v93.st_atimespec.tv_sec;
                  }

                  v57 = v74;
                  if (v70)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v70);
                  }

LABEL_32:

                  goto LABEL_18;
                }

                v63 = __error();
                v60 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], *v63, 0, "_LSOpenOperationPerform", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 729);
              }

              v61 = v60;
              goto LABEL_45;
            }
          }
        }
      }

      else
      {
      }
    }

    v37[2](v37);
LABEL_18:

    return;
  }

  v11 = *(*(a1 + 88) + 16);

  v11();
}

void ___LSServer_RefreshContentInFrameworkAtURL_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v25 = a2;
  v26 = a3;
  v27 = a1;
  v5 = _LSUnregisterPluginsInDirectory(*(a1 + 32));
  if (v5)
  {
    v28 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v5, 0, "_LSServer_RefreshContentInFrameworkAtURL_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 467);
    oslog = _LSInstallLog(v28);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      ___LSServer_RefreshContentInFrameworkAtURL_block_invoke_cold_1();
    }
  }

  else
  {
    oslog = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v40 = 0;
    v41 = 0;
    inited = _LSContextInitReturningError(&v41, &v40);
    v7 = v40;
    v28 = v7;
    if (inited)
    {
      [(_LSDatabase *)v41 store];
      [(_LSDatabase *)v41 schema];
      v34 = MEMORY[0x1E69E9820];
      v35 = 3254779904;
      v36 = ___LSServer_RefreshContentInFrameworkAtURL_block_invoke_2;
      v37 = &unk_1EEF61FE8;
      v39 = v41;
      v38 = oslog;
      _CSStoreEnumerateUnits();
      v8 = _LSExtensionPointUnregisterUnderFrameworkURL(v41, *(a1 + 32));
      if (v8)
      {
        v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v8, 0, "_LSServer_RefreshContentInFrameworkAtURL_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 451);

        v28 = v9;
      }

      v10 = v39;
    }

    else
    {
      v10 = _LSInstallLog(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        ___LSServer_RefreshContentInFrameworkAtURL_block_invoke_cold_2();
      }
    }

    if (!v28)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v11 = *(a1 + 40);
      v12 = [v11 countByEnumeratingWithState:&v30 objects:v44 count:{16, v25, v26}];
      if (v12)
      {
        v13 = *v31;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v31 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v30 + 1) + 8 * i);
            v16 = [v15 objectForKey:@"ApplicationType"];
            if ([v16 isEqualToString:@"Framework"])
            {
              v17 = MEMORY[0x1E695DFF8];
              v18 = v15;
              v19 = [v17 alloc];
              v20 = [v18 objectForKey:@"Path"];

              v21 = [v19 initFileURLWithPath:v20 isDirectory:1];
              v22 = CFBundleCopyInfoDictionaryForURL(v21);
              v23 = v22;
              if (v22)
              {
                v24 = [(__CFDictionary *)v22 objectForKeyedSubscript:@"NSExtensionSDK"];
                v42[0] = MEMORY[0x1E69E9820];
                v42[1] = 3221225472;
                v42[2] = ___registerExtensionPointsFromMIFrameworkDictionary_block_invoke;
                v42[3] = &unk_1E6A1A3A0;
                v43 = v21;
                [v24 enumerateKeysAndObjectsUsingBlock:v42];
              }
            }

            else if ([v16 isEqualToString:@"PluginKitPlugin"])
            {
              _registerMIPluginDictionary(v15, oslog);
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v30 objects:v44 count:16];
        }

        while (v12);
      }
    }
  }

  (*(*(v27 + 48) + 16))();
}

void ___LSServer_RefreshContentInFrameworkAtURL_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 168) & 4) != 0)
  {
    [(_LSDatabase *)*(a1 + 40) store];
    v5 = _CSStringCopyCFString();
    [*(a1 + 32) addObject:v5];
  }
}

void ___LSServer_LSEnumerateAndRegisterAllCryptexContent_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LSServer_DatabaseExecutionContext();
  [(LSDBExecutionContext *)v4 assertNotActiveForThisThread];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___LSServer_LSEnumerateAndRegisterAllCryptexContent_block_invoke_2;
  v8[3] = &unk_1E6A195B8;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v7 = v3;
  [(LSRebuildStatisticsGatherer *)v6 performCryptexContentScan:v8];
}

void ___LSServer_LSEnumerateAndRegisterAllCryptexContent_block_invoke_2(uint64_t a1)
{
  v2 = _LSInstallLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "calling into InstalledContentLibrary to register cryptex content", v3, 2u);
  }

  _LSServer_LSEnumerateAndRegisterAllCryptexContentWithContext(*(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2;
  v5[3] = &unk_1E6A1A168;
  v3 = v2;
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  [LSDatabaseRebuildContext withStatsGatherer:v3 runWithRebuildContext:v5];
}

void ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LSServer_DatabaseExecutionContext();
  [(LSDBExecutionContext *)v4 assertNotActiveForThisThread];

  v6 = _LSInstallLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "calling into InstalledContentLibrary to register all content", buf, 2u);
  }

  *buf = 0;
  v44 = buf;
  v45 = 0x2020000000;
  v46 = 1;
  v7 = *(a1 + 32);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_943;
  v40[3] = &unk_1E6A195B8;
  v42 = buf;
  v8 = v3;
  v41 = v8;
  v9 = [(LSRebuildStatisticsGatherer *)v7 performSystemContentScan:v40];
  v10 = _LSInstallLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v36 = 0;
    _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEFAULT, "finished enumerating system content.", v36, 2u);
  }

  *v36 = 0;
  v37 = v36;
  v38 = 0x2020000000;
  v39 = 0;
  v11 = *(a1 + 32);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_947;
  v35[3] = &unk_1E6A19988;
  v35[4] = v36;
  [(LSRebuildStatisticsGatherer *)v11 performSystemContentSave:v35];
  v12 = *(a1 + 32);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_949;
  v33[3] = &unk_1E6A195E0;
  v13 = v8;
  v34 = v13;
  v14 = [(LSRebuildStatisticsGatherer *)v12 performCryptexContentScan:v33];
  v15 = _LSInstallLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEFAULT, "Performing upcall to register containerized content.", v29, 2u);
  }

  *v29 = 0;
  v30 = v29;
  v31 = 0x2020000000;
  v32 = 1;
  v17 = _LSInstallLog(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v28 = 0;
    _os_log_impl(&dword_18162D000, v17, OS_LOG_TYPE_DEFAULT, "finished enumerating system content. Performing upcall to register containerized content", v28, 2u);
  }

  v18 = *(a1 + 32);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_950;
  v25[3] = &unk_1E6A195B8;
  v27 = v29;
  v19 = v13;
  v26 = v19;
  [(LSRebuildStatisticsGatherer *)v18 performContainerizedContentScan:v25];
  v20 = [(LSDatabaseRebuildContext *)v19 finishAndArmSaveTimer];
  v21 = v20;
  if (v30[24] == 1 && (v44[24] & 1) != 0)
  {
    v22 = 1;
  }

  else
  {
    if (v20)
    {
      v23 = _LSInstallLog(v20);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2_cold_1();
      }
    }

    v24 = _LSInstallLog(v20);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2_cold_2();
    }

    v22 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v22;

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v36, 8);

  _Block_object_dispose(buf, 8);
}

void ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_943(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A8D60] defaultWorkspace];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2_945;
  v8[3] = &unk_1E6A1A190;
  v9 = *(a1 + 32);
  v7 = 0;
  v3 = [v2 enumerateBuiltInSystemContentWithBlock:v8 error:&v7];
  v4 = v7;
  *(*(*(a1 + 40) + 8) + 24) = v3;

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v6 = _LSInstallLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_943_cold_1();
    }

    [(LSDatabaseRebuildContext *)*(a1 + 32) noteRebuildError:v4];
  }
}

void ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_947(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__4;
  v10[4] = __Block_byref_object_dispose__4;
  v11 = 0;
  v2 = _LSServer_DatabaseExecutionContext();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2_948;
  v9[3] = &unk_1E6A1A1B8;
  v3 = *(a1 + 32);
  v9[4] = v10;
  v9[5] = v3;
  [(LSDBExecutionContext *)v2 syncRead:v9];

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v5 = _LSInstallLog(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      v8 = [__LSDefaultsGetSharedInstance(v6 v7)];
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "Saved system content database to %@", buf, 0xCu);
    }
  }

  else
  {
    v5 = _LSInstallLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_947_cold_1();
    }
  }

  _Block_object_dispose(v10, 8);
}

void ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2_948(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  obj = *(v7 + 40);
  v13 = 0;
  inited = _LSContextInitReturningError(&v13, &obj);
  objc_storeStrong((v7 + 40), obj);
  if (inited)
  {
    v9 = *(*(a1 + 32) + 8);
    v11 = *(v9 + 40);
    v10 = _LSDatabaseSaveSystemContentDatabase(v13, &v11);
    objc_storeStrong((v9 + 40), v11);
    *(*(*(a1 + 40) + 8) + 24) = v10;
  }
}

void ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_950(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = [objc_alloc(MEMORY[0x1E69A8D50]) initWithTargetUID:_CFGetEUID()];
  v4 = [MEMORY[0x1E69A8D60] defaultWorkspace];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2_952;
  v7[3] = &unk_1E6A1A1E0;
  v5 = *(a1 + 32);
  v10 = *(a1 + 40);
  v8 = v5;
  v9 = v2;
  v6 = v2;
  [v4 triggerRegistrationForContainerizedContentWithOptions:v3 completion:v7];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2_952(uint64_t a1, void *a2)
{
  if (a2)
  {
    ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2_952_cold_1(a1, a2);
  }

  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

void ___LSServer_RebuildApplicationDatabases_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _LSDatabaseGetSeedingGroup(a1, a2);
  dispatch_group_enter(v3);

  v4 = _LSServer_CopyLocalDatabase(0);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(a1 + 56) || (v7 = *(*(*(a1 + 40) + 8) + 40)) == 0 || ([(_LSDatabase *)v7 isSeeded]& 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___LSServer_RebuildApplicationDatabases_block_invoke_2;
    v15[3] = &unk_1E6A1A230;
    v16 = *(a1 + 32);
    enumeratePlaceholderAndInstalledApplicationRecords(v15);
    v8 = +[_LSInstallProgressService sharedInstance];
    v9 = allAppexRecords();
    [v8 detachAndSendNotification:@"com.apple.LaunchServices.pluginswillberemoved" forApplicationExtensionRecords:v9];

    _LSResetServer(v10, v11);
    v12 = _LSServer_CopyLocalDatabase(0);
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    _LSDatabaseSessionSetSeedingInProgress(1);
    _LSDatabaseSessionSetSeedingDueToManualRebuild(*(a1 + 57) != 0);
  }
}

void ___LSServer_RebuildApplicationDatabases_block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 compatibilityObject];
  v3 = [_LSBundleIdentifierAndType createRepresentingProxy:?];
  if (v3)
  {
    [*(a1 + 32) setObject:v4 forKey:v3];
  }
}

void ___LSServer_RebuildApplicationDatabases_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v35 = a2;
  v34 = a3;
  _LSDatabaseSessionSetSeedingDueToManualRebuild(0);
  _LSDatabaseSessionSetSeedingInProgress(0);
  [(_LSDatabase *)*(*(*(a1 + 72) + 8) + 40) setSeeded:?];
  [(_LSDatabase *)*(*(*(a1 + 72) + 8) + 40) setSeedingComplete:?];
  _LSSaveImmediately(1);
  context = objc_autoreleasePoolPush();
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = +[_LSInstallProgressService sharedInstance];
  v7 = allAppexRecords();
  [v6 detachAndSendNotification:@"com.apple.LaunchServices.pluginsregistered" forApplicationExtensionRecords:v7];

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = ___LSServer_RebuildApplicationDatabases_block_invoke_4;
  v48[3] = &unk_1E6A1A280;
  v8 = v5;
  v49 = v8;
  v50 = *(a1 + 32);
  v51 = *(a1 + 40);
  v52 = *(a1 + 48);
  enumeratePlaceholderAndInstalledApplicationRecords(v48);
  if ([*(a1 + 40) count])
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v9 = *(a1 + 40);
    v10 = [v9 countByEnumeratingWithState:&v44 objects:v55 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v45;
      do
      {
        v13 = 0;
        do
        {
          if (*v45 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v44 + 1) + 8 * v13++) plugInKitPlugins];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v44 objects:v55 count:16];
      }

      while (v11);
    }

    v15 = +[_LSInstallProgressService sharedInstance];
    [v15 sendNotification:7 forAppProxies:*(a1 + 40) Plugins:0 completion:0];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = *(a1 + 32);
  v17 = [v16 countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v41;
    do
    {
      v20 = 0;
      do
      {
        if (*v41 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v40 + 1) + 8 * v20);
        if (v21 && ([v8 containsObject:*(*(&v40 + 1) + 8 * v20)] & 1) == 0)
        {
          v22 = [*(a1 + 32) objectForKey:v21];
          [*(a1 + 56) addObject:v22];
          v23 = *(a1 + 64);
          v24 = [v22 bundleIdentifier];
          [v23 addObject:v24];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v40 objects:v54 count:16];
    }

    while (v18);
  }

  if ([*(a1 + 56) count])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v25 = *(a1 + 56);
    v26 = [v25 countByEnumeratingWithState:&v36 objects:v53 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v37;
      do
      {
        v29 = 0;
        do
        {
          if (*v37 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [*(*(&v36 + 1) + 8 * v29++) plugInKitPlugins];
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v36 objects:v53 count:16];
      }

      while (v27);
    }

    v31 = +[_LSInstallProgressService sharedInstance];
    [v31 sendNotification:8 forAppProxies:*(a1 + 56) Plugins:0 completion:0];
  }

  objc_autoreleasePoolPop(context);
  v32 = +[_LSInstallProgressService sharedInstance];
  [v32 sendDatabaseRebuiltNotification];
}

void ___LSServer_RebuildApplicationDatabases_block_invoke_4(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [_LSBundleIdentifierAndType createRepresentingRecord:v3];
  [*(a1 + 32) addObject:v4];
  v5 = [*(a1 + 40) objectForKey:v4];
  v6 = v5;
  if (!v5)
  {
LABEL_5:
    v8 = *(a1 + 48);
    v9 = [v3 compatibilityObject];
    [v8 addObject:v9];

    v10 = *(a1 + 56);
    v11 = [v3 bundleIdentifier];
    [v10 addObject:v11];

    goto LABEL_6;
  }

  v7 = [v5 bundleModTime];
  if (v7 != [v3 _bundleModTime])
  {
    if ([v3 isPlaceholder] && (objc_msgSend(v6, "isPlaceholder") & 1) == 0)
    {
      v12 = +[_LSInstallProgressService sharedInstance];
      v13 = [v3 compatibilityObject];
      v15[0] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      [v12 sendNotification:1 forAppProxies:v14 Plugins:0 completion:0];

      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_6:
}

void ___LSServer_SyncWithMobileInstallation_block_invoke(uint64_t a1)
{
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__4;
  v24[4] = __Block_byref_object_dispose__4;
  v25 = [MEMORY[0x1E695DFA8] set];
  v4 = [__LSDefaultsGetSharedInstance(v25 v3)];
  _LSDatabaseCreateRecoveryFile(v4);

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v6 = _LSInstallLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "Will begin MobileInstallation item enumeration now", buf, 2u);
  }

  if (!MobileInstallationLibrary_frameworkLibrary)
  {
    MobileInstallationLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/MobileInstallation.framework/MobileInstallation", 2);
    if (!MobileInstallationLibrary_frameworkLibrary)
    {
      v14 = _LSInstallLog(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        ___LSServer_SyncWithMobileInstallation_block_invoke_cold_1();
      }

      v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 78, 0, "_LSServer_SyncWithMobileInstallation_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 6529);
      if (v8)
      {
        v9 = 0;
        goto LABEL_7;
      }
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = ___LSServer_SyncWithMobileInstallation_block_invoke_2;
  v17[3] = &unk_1E6A1A348;
  v18[1] = &v20;
  v18[2] = v24;
  v18[0] = *(a1 + 32);
  v1 = v18;
  v7 = softLinkMobileInstallationEnumerateAllInstalledItemDictionaries(0, v17);
  if (v7)
  {
    v8 = v7;
    v9 = 1;
LABEL_7:
    *(v21 + 24) = 0;
    goto LABEL_11;
  }

  if (*(v21 + 24))
  {
    v10 = _LSServer_DatabaseExecutionContext();
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___LSServer_SyncWithMobileInstallation_block_invoke_5;
    v16[3] = &unk_1E6A1A320;
    v16[4] = v24;
    [(LSDBExecutionContext *)v10 syncWrite:v16];
  }

  v8 = 0;
  v9 = 1;
LABEL_11:
  v11 = _LSServer_DatabaseExecutionContext();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___LSServer_SyncWithMobileInstallation_block_invoke_6;
  v15[3] = &unk_1E6A1A320;
  v15[4] = &v20;
  [(LSDBExecutionContext *)v11 syncWrite:v15];

  _LSDatabaseClearSyncInterrupted(v12, v13);
  MEMORY[0x1865D7C50]();
  atomic_fetch_and(&sMISyncFlag, 0x7Fu);
  if (v9)
  {
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(v24, 8);
}

void ___LSServer_SyncWithMobileInstallation_block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    *(*(a1[5] + 8) + 24) = 0;
  }

  v7 = [v5 objectForKey:@"ApplicationType"];
  v8 = [v5 objectForKey:*MEMORY[0x1E695E4F0]];
  if (([v7 isEqualToString:@"User"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"System") & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"VPNPlugin"))
  {
    v37 = v6;
    v9 = [v5 objectForKey:@"IsPlaceholder"];
    v10 = [v9 BOOLValue];

    v11 = *(*(a1[6] + 8) + 40);
    v12 = [[_LSEnumeratedBundleInfo alloc] initWithBundleID:v8 isPlaceholder:v10];
    [v11 addObject:v12];

    v13 = objc_alloc(MEMORY[0x1E695DFF8]);
    v14 = [v5 objectForKey:@"Path"];
    v15 = [v13 initFileURLWithPath:v14 isDirectory:1];

    v16 = [v5 objectForKey:@"ParallelPlaceholderPath"];
    if (v16)
    {
      v17 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v16 isDirectory:1];
    }

    else
    {
      v17 = 0;
    }

    v18 = a1[4];
    if (v18)
    {
      if (v15)
      {
        (*(v18 + 16))(v18, v15);
      }

      if (v17)
      {
        (*(a1[4] + 16))();
      }
    }

    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__1015;
    v62 = __Block_byref_object_dispose__1016;
    v63 = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__1015;
    v56 = __Block_byref_object_dispose__1016;
    v57 = 0;
    v19 = _LSServer_DatabaseExecutionContext();
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = ___LSServer_SyncWithMobileInstallation_block_invoke_1017;
    v45[3] = &unk_1E6A1A2D0;
    v46 = v5;
    v49 = &v58;
    v20 = v15;
    v47 = v20;
    v21 = v17;
    v22 = a1[6];
    v48 = v21;
    v50 = v22;
    v51 = &v52;
    [(LSDBExecutionContext *)v19 syncRead:v45];

    if (v59[5] || v53[5])
    {
      v23 = _LSServer_DatabaseExecutionContext();
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = ___LSServer_SyncWithMobileInstallation_block_invoke_2_1018;
      v44[3] = &unk_1E6A1A1B8;
      v44[4] = &v58;
      v44[5] = &v52;
      [(LSDBExecutionContext *)v23 syncWrite:v44];
    }

    _Block_object_dispose(&v52, 8);
    _Block_object_dispose(&v58, 8);

    v6 = v37;
  }

  else if (([v7 isEqualToString:@"CoreServices"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"Internal"))
  {
    v24 = *(*(a1[6] + 8) + 40);
    v25 = [[_LSEnumeratedBundleInfo alloc] initWithBundleID:v8 isPlaceholder:0];
    [v24 addObject:v25];

    v26 = objc_alloc(MEMORY[0x1E695DFF8]);
    v27 = [v5 objectForKey:@"Path"];
    v28 = [v26 initFileURLWithPath:v27 isDirectory:1];

    v29 = a1[4];
    if (v29 && v28)
    {
      (*(v29 + 16))(v29, v28);
    }
  }

  else if ([v7 isEqualToString:@"PluginKitPlugin"])
  {
    v30 = objc_alloc(MEMORY[0x1E695DFF8]);
    v31 = [v5 objectForKey:@"Path"];
    v32 = [v30 initFileURLWithPath:v31 isDirectory:1];

    v33 = a1[4];
    if (v33 && v32)
    {
      (*(v33 + 16))(v33, v32);
    }

    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__1015;
    v62 = __Block_byref_object_dispose__1016;
    v63 = 0;
    v34 = _LSServer_DatabaseExecutionContext();
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = ___LSServer_SyncWithMobileInstallation_block_invoke_3;
    v39[3] = &unk_1E6A1A2F8;
    v43 = &v58;
    v40 = v8;
    v35 = v32;
    v41 = v35;
    v42 = v5;
    [(LSDBExecutionContext *)v34 syncRead:v39];

    if (v59[5])
    {
      v36 = _LSServer_DatabaseExecutionContext();
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = ___LSServer_SyncWithMobileInstallation_block_invoke_4;
      v38[3] = &unk_1E6A1A320;
      v38[4] = &v58;
      [(LSDBExecutionContext *)v36 syncWrite:v38];
    }

    _Block_object_dispose(&v58, 8);
  }
}

void ___LSServer_SyncWithMobileInstallation_block_invoke_1017(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v19.db = 0;
  if (!_LSContextInit(&v19.db))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [*(a1 + 32) objectForKey:*MEMORY[0x1E695E4F0]];
    v9 = _getBlockToUpdateBundleRecordFromMIAndNotifyIfChanged(&v19, v8, *(a1 + 40), *(a1 + 32));
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (*(a1 + 48))
    {
      v12 = *(*(*(a1 + 64) + 8) + 40);
      v13 = [[_LSEnumeratedBundleInfo alloc] initWithBundleID:v8 isPlaceholder:1];
      [v12 addObject:v13];

      v14 = [*(a1 + 32) mutableCopy];
      [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsPlaceholder"];
      v15 = [*(a1 + 48) path];
      [v14 setObject:v15 forKeyedSubscript:@"Path"];

      [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsParallelPlaceholder"];
      v16 = _getBlockToUpdateBundleRecordFromMIAndNotifyIfChanged(&v19, v8, *(a1 + 48), v14);
      v17 = *(*(a1 + 72) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }

    objc_autoreleasePoolPop(v7);
    _LSContextDestroy(&v19.db);
  }
}

void ___LSServer_SyncWithMobileInstallation_block_invoke_2_1018(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(*(*(a1 + 32) + 8) + 40);
  if (v6)
  {
    (*(v6 + 16))();
  }

  v7 = *(*(*(a1 + 40) + 8) + 40);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

void ___LSServer_SyncWithMobileInstallation_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v27 = 0;
  if (!_LSContextInit(&v27))
  {
    context = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 32);
    v10 = v7;
    v11 = v8;
    v12 = _LSDefaultLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "Checking if %@ needs to be registered at %@", buf, 0x16u);
    }

    v29 = 0;
    v13 = [[FSNode alloc] initWithURL:v10 flags:0 error:0];
    if (v13)
    {
      v14 = _LSPluginFindWithInfo(v27, 0, 0, 0, v13, &v29, 0);
      v15 = v14;
      if (v14)
      {
        *buf = 0;
        v28 = 0;
        v16 = [(FSNode *)v13 getContentModificationDate:buf error:&v28, context];
        v14 = v28;
        v17 = v14;
        if (v16)
        {
          if (v15[6] >= *buf)
          {
            v22 = 0;
LABEL_20:
            v23 = MEMORY[0x1865D71B0](v22);

            v24 = *(*(a1 + 56) + 8);
            v25 = *(v24 + 40);
            *(v24 + 40) = v23;

            objc_autoreleasePoolPop(context);
            _LSContextDestroy(&v27);
            goto LABEL_21;
          }

          v18 = @"stale";
LABEL_17:
          v21 = _LSDefaultLog(v14);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            *&buf[4] = v10;
            *&buf[12] = 2112;
            *&buf[14] = v9;
            *&buf[22] = 2112;
            v31 = v18;
            _os_log_impl(&dword_18162D000, v21, OS_LOG_TYPE_DEFAULT, "Registering %@ (%@) because its record is %@", buf, 0x20u);
          }

          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = ___getBlockToUpdatePluginRecordFromMIAndNotifyIfChanged_block_invoke;
          v31 = &unk_1E6A1A3C8;
          v32 = v10;
          v33 = v9;
          v34 = v11;
          v22 = MEMORY[0x1865D71B0](buf);

          goto LABEL_20;
        }

        v20 = _LSDefaultLog(v14);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          ___LSServer_SyncWithMobileInstallation_block_invoke_3_cold_1();
        }

LABEL_16:
        v18 = @"missing";
        goto LABEL_17;
      }
    }

    else
    {
      v19 = _LSDefaultLog(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        ___LSServer_SyncWithMobileInstallation_block_invoke_3_cold_2();
      }
    }

    v17 = 0;
    goto LABEL_16;
  }

LABEL_21:
}

void ___LSServer_SyncWithMobileInstallation_block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v32 = a2;
  v33 = a3;
  v34 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [MEMORY[0x1E695DF70] array];
  v48 = 0;
  v49 = &v48;
  v50 = 0x3812000000;
  v51 = __Block_byref_object_copy__1197;
  v52 = __Block_byref_object_dispose__1198;
  v53 = 256;
  v54 = 0;
  if (!_LSContextInit(&v54))
  {
    [(_LSDatabase *)v49[6] store];
    [(_LSDatabase *)v49[6] schema];
    v41 = MEMORY[0x1E69E9820];
    v42 = 3221225472;
    v43 = ___uninstallMIBundlesNotInSet_block_invoke;
    v44 = &unk_1E6A1A4D0;
    v47 = &v48;
    v45 = v34;
    v46 = v5;
    _CSStoreEnumerateUnits();
    _LSContextDestroy(v49 + 6);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v5;
  v10 = [obj countByEnumeratingWithState:&v37 objects:v60 count:16];
  if (v10)
  {
    v11 = *v38;
    do
    {
      v12 = 0;
      do
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v37 + 1) + 8 * v12);
        v36 = 0;
        if (v13)
        {
          v14 = *(v13 + 24);
          v15 = *(v13 + 16);
          if (v14)
          {
            v16 = 1;
          }

          else
          {
            v16 = 2;
          }
        }

        else
        {
          v15 = 0;
          v16 = 2;
        }

        v17 = _LSUnregisterAppWithBundleID(0, v15, v16, &v36, v6, v7, v8, v9) == 0;

        if (v17)
        {
          v19 = _LSDefaultLog(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            if (v13)
            {
              v23 = *(v13 + 16);
              v24 = v23;
              if (*(v13 + 24))
              {
                v25 = @" (placeholder)";
              }

              else
              {
                v25 = &stru_1EEF65710;
              }
            }

            else
            {
              v24 = 0;
              v25 = &stru_1EEF65710;
            }

            *buf = 138412546;
            v57 = v24;
            v58 = 2112;
            v59 = v25;
            _os_log_impl(&dword_18162D000, v19, OS_LOG_TYPE_DEFAULT, "Unregistered %@%@", buf, 0x16u);
          }
        }

        else
        {
          v19 = _LSDefaultLog(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            if (v13)
            {
              v20 = *(v13 + 16);
              v21 = v20;
              if (*(v13 + 24))
              {
                v22 = @" (placeholder)";
              }

              else
              {
                v22 = &stru_1EEF65710;
              }
            }

            else
            {
              v21 = 0;
              v22 = &stru_1EEF65710;
            }

            *buf = 138412546;
            v57 = v21;
            v58 = 2112;
            v59 = v22;
            _os_log_error_impl(&dword_18162D000, v19, OS_LOG_TYPE_ERROR, "Failed to unregister %@%@", buf, 0x16u);
          }
        }

        v26 = +[_LSInstallProgressService sharedInstance];
        if (v13)
        {
          v27 = *(v13 + 8);
        }

        else
        {
          v27 = 0;
        }

        v28 = v36;
        v29 = v27;
        v55 = v29;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
        [v26 sendNotification:v28 forAppProxies:v30 Plugins:0 completion:0];

        ++v12;
      }

      while (v10 != v12);
      v31 = [obj countByEnumeratingWithState:&v37 objects:v60 count:16];
      v10 = v31;
    }

    while (v31);
  }

  _Block_object_dispose(&v48, 8);
}

void ___LSServer_SyncWithMobileInstallation_block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v8 = _LSDefaultLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "MobileInstallation reported PartialResultsReturned = YES, setting incomplete seed flag", buf, 2u);
    }

    v12 = 0;
    if (!_LSContextInit(&v12))
    {
      [(_LSDatabase *)v12 setSeedingComplete:?];
    }
  }

  _LSSaveImmediately(1);
  v11 = [__LSDefaultsGetSharedInstance(v9 v10)];
  _LSDatabaseDeleteRecoveryFile(v11);
}

void ___LSServer_ExecuteSyncWithQuiescedInstallationActivity_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _LSDatabaseGetInstallingGroup(a1, a2);
  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);

  v4 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v4);
}

void ___LSServer_DisplayRemovedAppPrompt_block_invoke(uint64_t a1, int a2, void *a3)
{
  v89 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 88);
    v9 = *(*(*(a1 + 80) + 8) + 24);
    v10 = *(a1 + 32);
    v11 = v6;
    v12 = v7;
    v71 = v11;
    v72 = v12;
    if (v8)
    {
      responseFlags = *MEMORY[0x1E695EE58];
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*(v8 + 16)];
      v14 = _LSGetAppRemovalPromptStringForKey(&cfstr_ApplicationNot.isa, v13);
      *buf = v14;
      v81 = *MEMORY[0x1E695EE60];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*(v8 + 24)];
      v16 = _LSGetAppRemovalPromptStringForKey(&cfstr_ToDoThisYouNee.isa, v15);
      v17 = *MEMORY[0x1E695EE68];
      *&buf[8] = v16;
      *&buf[16] = MEMORY[0x1E695E110];
      v82 = v17;
      v83 = @"SBUserNotificationDontDismissOnUnlock";
      v85 = MEMORY[0x1E695E118];
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&responseFlags count:4];

      error[0] = -1;
      v19 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 0, error, v18);
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v29 = error[0];
        v76 = *MEMORY[0x1E696A278];
        v78 = @"CFUserNotificationCreate() failed.";
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v76 count:1];
        v20 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A5A0], v29, v30, "_LSCreateVagueRemovedAppPrompt", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppRemovalPrompt.mm", 235);
        v31 = v20;
      }

      goto LABEL_35;
    }

    v21 = v12;
    v69 = v10;
    v70 = v11;
    v65 = v21;
    v22 = _LSDefaultLog(v65);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *&buf[4] = v69;
      *&buf[12] = 2112;
      *&buf[14] = v70;
      *&buf[22] = 2048;
      v85 = v9;
      _os_log_impl(&dword_18162D000, v22, OS_LOG_TYPE_DEFAULT, "Showing removed app prompt for %@ (%@), restore source %ld", buf, 0x20u);
    }

    v67 = _LSGetAppRemovalPromptStringForKey(&cfstr_Restore_1.isa, &cfstr_AppRemovalProm.isa);
    if (v9 == 1)
    {
      v68 = v65;
      v23 = [v70 isEqual:@"com.apple.AppStore"];
      v24 = v23 == 0;
      if (v23)
      {
        v25 = @"“App Store” was deleted and needs to be restored.";
      }

      else
      {
        v25 = @"“App Store” was deleted and needs to be restored before you can download this app.";
      }

      if (v24)
      {
        v26 = @"APP_REMOVAL_PROMPT_DETAIL_APP_STORE_DELETED";
      }

      else
      {
        v26 = @"APP_REMOVAL_PROMPT_DETAIL_APP_STORE_DELETED_SELF";
      }

      v27 = _LSGetAppRemovalPromptStringForKey(&v25->isa, &v26->isa);
      if (![__LSDefaultsGetSharedInstance(v27 v28)] || (_os_feature_enabled_impl() & 1) != 0)
      {
        v66 = v27;
        goto LABEL_22;
      }

      v66 = [v27 stringByAppendingString:@"\n\n[Apple Internal Engineering Note]\nFeature flags configuration indicates 135298349 is not complete. Therefore you will be brought to Settings instead of automatically kicking off the restore."];
    }

    else
    {
      v68 = v69;
      v27 = _LSGetAppRemovalPromptStringForKey(&cfstr_ToContinueDown.isa, &cfstr_AppRemovalProm_2.isa);
      v66 = [MEMORY[0x1E696AEC0] stringWithFormat:v27, v68, v65];
    }

LABEL_22:
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:v67, v68];
    v33 = *MEMORY[0x1E695EE60];
    responseFlags = *MEMORY[0x1E695EE58];
    v81 = v33;
    *buf = v32;
    *&buf[8] = v66;
    v82 = *MEMORY[0x1E695EE68];
    v83 = @"SBUserNotificationDontDismissOnUnlock";
    *&buf[16] = MEMORY[0x1E695E110];
    v85 = MEMORY[0x1E695E118];
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&responseFlags count:4];
    v35 = _LSGetAppRemovalPromptStringForKey(&cfstr_Cancel.isa, &cfstr_CancelButton.isa);
    if (v9 == 1)
    {
      v36 = _LSGetAppRemovalPromptStringForKey(&cfstr_RestoreNow.isa, &cfstr_RestoreAppButt.isa);
      v37 = [v34 mutableCopy];
      v38 = *MEMORY[0x1E695EE70];
      v76 = *MEMORY[0x1E695EE78];
      v77 = v38;
      v78 = v36;
      v79 = v35;
      v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v76 count:2];
      [v37 addEntriesFromDictionary:v39];
    }

    else
    {
      if (v9)
      {
        goto LABEL_27;
      }

      v36 = _LSGetAppRemovalPromptStringForKey(&cfstr_ShowInAppStore.isa, &cfstr_ShowInStoreBut.isa);
      v37 = [v34 mutableCopy];
      v40 = *MEMORY[0x1E695EE70];
      v76 = *MEMORY[0x1E695EE78];
      v77 = v40;
      v78 = v36;
      v79 = v35;
      v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v76 count:2];
      [v37 addEntriesFromDictionary:v39];
    }

    v34 = v37;
LABEL_27:
    v73 = -1;
    v41 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 0, &v73, v34);
    v42 = v41;
    if (v41)
    {
      if (!v73)
      {
        v19 = CFRetain(v41);
        v20 = 0;
        v46 = 0;
        goto LABEL_32;
      }

      CFRelease(v41);
    }

    v43 = v73;
    v74 = *MEMORY[0x1E696A278];
    *error = @"CFUserNotificationCreate() failed.";
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:error forKeys:&v74 count:1];
    v20 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A5A0], v43, v44, "_LSCreateStandardRemovedAppPrompt", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppRemovalPrompt.mm", 303);
    v45 = v20;

    v42 = 0;
    v19 = 0;
    v46 = 1;
LABEL_32:

    if ((v46 & 1) == 0)
    {
      CFRelease(v42);
    }

LABEL_35:
    _LSCreateRemovedAppPrompt(NSString *,NSString *,NSString *,LSVagueRemovedAppPromptData const*,LSAppRestoreSource,NSError * {__autoreleasing}*)::result = v19;

    v47 = v20;
    if (!v19)
    {
      (*(*(a1 + 72) + 16))();
LABEL_45:

      goto LABEL_46;
    }

    v48 = *(a1 + 72);
    v49 = *(*(*(a1 + 80) + 8) + 24);
    v50 = *(a1 + 56);
    v51 = v48;
    responseFlags = 0;
    v52 = _LSServer_DatabaseExecutionContext();
    [(LSDBExecutionContext *)v52 assertNotActiveForThisThread];

    v53 = CFUserNotificationReceiveResponse(v19, 0.0, &responseFlags);
    v54 = v53;
    if (v53)
    {
      v78 = *MEMORY[0x1E696A278];
      *buf = @"CFUserNotificationReceiveResponse() failed.";
      v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v78 count:1];
      v56 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A5A0], v54, v55, "_LSDisplayRemovedAppPrompt", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppRemovalPrompt.mm", 394);
      v51[2](v51, 0, v56);
    }

    else
    {
      if ((responseFlags & 3) != 0)
      {
        v57 = _LSDefaultLog(v53);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          *&buf[4] = v50;
          _os_log_impl(&dword_18162D000, v57, OS_LOG_TYPE_DEFAULT, "User cancelled restoring system app %{private}@", buf, 0xCu);
        }

        v51[2](v51, 1, 0);
        goto LABEL_44;
      }

      if (v49 == 1)
      {
        if (_os_feature_enabled_impl())
        {
          v63 = [MEMORY[0x1E695DFF8] URLWithString:@"appstore-ui://restoreAppStore"];
          v62 = @"com.apple.ios.StoreKitUIService";
        }

        else
        {
          v63 = [MEMORY[0x1E695DFF8] URLWithString:@"settings-navigation://com.apple.Settings.AppInstallation/#ADRestoreAppStore"];
          v62 = @"com.apple.Preferences";
        }

        v61 = v63;
      }

      else
      {
        if (v49)
        {
          goto LABEL_44;
        }

        v58 = objc_alloc_init(MEMORY[0x1E696AF20]);
        [v58 setScheme:@"itms-apps"];
        [v58 setHost:&stru_1EEF65710];
        v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v60 = [MEMORY[0x1E696AF60] queryItemWithName:@"bundleIdentifier" value:v50];
        [v59 addObject:v60];

        [v58 setQueryItems:v59];
        v61 = [v58 URL];

        v62 = @"com.apple.AppStore";
      }

      if (!v61)
      {
        goto LABEL_44;
      }

      v64 = _LSServer_DatabaseExecutionContext();
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL26_LSDisplayRemovedAppPromptP20__CFUserNotificationP8NSStringP5NSURL18LSAppRestoreSourceU13block_pointerFvbP7NSErrorE_block_invoke;
      v85 = &unk_1E6A1A740;
      v86 = v62;
      v87 = v61;
      v88 = v51;
      v55 = v61;
      [(LSDBExecutionContext *)v64 syncRead:buf];

      v56 = v86;
    }

LABEL_44:
    CFRelease(v19);
    goto LABEL_45;
  }

  (*(*(a1 + 72) + 16))();
LABEL_46:
}

void ___LSServer_LSDatabaseRemoveNonexistentCryptexBundlesForReboot_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a2;
  if ((*(a3 + 192) & 2) != 0)
  {
    v3 = a2;
    v10 = 0;
    v5 = _LSBundleCopyNode(**(a1 + 48), a2, 0, 0, &v10);
    if (v5)
    {
      v6 = _LSDefaultLog(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        ___LSServer_LSDatabaseRemoveNonexistentCryptexBundlesForReboot_block_invoke_cold_1();
      }

      std::vector<unsigned int>::push_back[abi:nn200100]((*(*(a1 + 40) + 8) + 48), &v11);
    }

    else
    {
      v7 = *(*(a1 + 32) + 8);
      v8 = v7[7];
      if (v8 >= v7[8])
      {
        v9 = std::vector<std::pair<unsigned int,FSNode * {__strong}>>::__emplace_back_slow_path<unsigned int &,FSNode * {__strong}&>(v7 + 6, &v11, &v10);
      }

      else
      {
        *v8 = v3;
        *(v8 + 8) = v10;
        v9 = v8 + 16;
      }

      v7[7] = v9;
    }
  }
}

void ___LSServer_BeginProvidingVisualizationArchives_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.lsd.internal.store-visualizations", v2);
  v1 = _LSServer_BeginProvidingVisualizationArchives::visualizationQueue;
  _LSServer_BeginProvidingVisualizationArchives::visualizationQueue = v0;
}

id ___LSServer_BeginProvidingVisualizationArchives_block_invoke_2()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__52;
  v8 = __Block_byref_object_dispose__53;
  v9 = 0;
  v0 = _LSServer_DatabaseExecutionContext();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___LSServer_BeginProvidingVisualizationArchives_block_invoke_54;
  v3[3] = &unk_1E6A1BB18;
  v3[4] = &v4;
  [(LSDBExecutionContext *)v0 syncRead:v3];

  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void ___LSServer_BeginProvidingVisualizationArchives_block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v6 = +[_LSDServiceDomain defaultServiceDomain];
  v7 = LaunchServices::Database::Context::_get(&v15, v6, 0);

  if (v7)
  {
    [(_LSDatabase *)*v7 store];
    MutableCopy = CSStoreCreateMutableCopy();
    if (MutableCopy)
    {
      v9 = _LSDatabaseGetNode(*v7);
      SessionKey = _LSDatabaseGetSessionKey(*v7);
      v11 = _LSDatabaseCreateWithAccessContext(v9, SessionKey, MutableCopy, 0, 0);

      if (v11)
      {
        v14 = v11;
        _LSContextCreateVisualizer(&v14);
      }

      CFRelease(MutableCopy);
    }
  }

  if (v15 && v17 == 1)
  {
    _LSContextDestroy(v15);
  }

  v12 = v16;
  v15 = 0;
  v16 = 0;

  v17 = 0;
  v13 = v18;
  v18 = 0;
}

void ___LSServer_GetServerStoreForConnectionWithCompletionHandler_block_invoke(uint64_t a1)
{
  v2 = _LSDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    ___LSServer_GetServerStoreForConnectionWithCompletionHandler_block_invoke_cold_1(v2);
  }

  _LSServer_RebuildApplicationDatabases(1, 1, 1, 1, 0);
  v3 = _LSServer_DatabaseExecutionContext();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___LSServer_GetServerStoreForConnectionWithCompletionHandler_block_invoke_3;
  v4[3] = &unk_1E6A18EB0;
  v5 = *(a1 + 32);
  [(LSDBExecutionContext *)v3 syncWrite:v4];
}

void ___LSServer_OpenApplication_block_invoke(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v7 = _LSOpenLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) processIdentifier];
      v10 = 138412802;
      v11 = v8;
      v12 = 1024;
      v13 = v9;
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&dword_18162D000, v7, OS_LOG_TYPE_ERROR, "error opening %@ is being swallowed for pid %d because it cannot map the LS database and provided the launch option FBSOpenApplicationOptionKeyActivateSuspended: %@", &v10, 0x1Cu);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void ___LSServer_OpenUserActivity_block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) != 0)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      if (*(a1 + 56))
      {
        v3 = *(a1 + 40);
        v4 = *(a1 + 32);
        v5 = v3;
        v6 = v2;
        if (UIKitLibrary(void)::frameworkLibrary || (UIKitLibrary(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2)) != 0)
        {
          if (!(v4 | v5))
          {
            v22 = *MEMORY[0x1E696A278];
            v23[0] = @"invalid input parameters";
            v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
            v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v12, "_LSGetBSActionForUserActivity", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 1513);

            goto LABEL_20;
          }

          v7 = [MEMORY[0x1E695DF90] dictionary];
          v8 = v7;
          if (v7)
          {
            if (v5)
            {
              [v7 setObject:v5 forKeyedSubscript:&unk_1EEF8F020];
            }

            else
            {
              v15 = [v4 UUIDString];
              [v8 setObject:v15 forKeyedSubscript:&unk_1EEF8F038];
            }

            [v8 setObject:v6 forKeyedSubscript:&unk_1EEF8F050];
            [v8 setObject:v6 forKeyedSubscript:&unk_1EEF8F068];
            v16 = [MEMORY[0x1E695DF00] date];
            [v8 setObject:v16 forKeyedSubscript:&unk_1EEF8F080];

            v11 = [objc_alloc(getUIActivityContinuationActionClass()) initWithSettings:v8];
            if (v11)
            {

              v17 = 0;
              v13 = 0;
              goto LABEL_21;
            }

            v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10810, 0, "_LSGetBSActionForUserActivity", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 1505);

LABEL_20:
            v18 = v13;

            v11 = 0;
            v17 = 1;
LABEL_21:

            v10 = v13;
            if (v17)
            {
              v19 = *(a1 + 96);
              if (v19)
              {
                (*(v19 + 16))(v19, 0, v10);
              }
            }

            else
            {
              _LSServer_OpenApplicationCommon(*(a1 + 56), v11, *(a1 + 104), *(a1 + 64), *(a1 + 72), *(a1 + 80), 5uLL, *(a1 + 88), *(a1 + 96));
            }

            goto LABEL_25;
          }

          v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -41, 0, "_LSGetBSActionForUserActivity", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 1509);
        }

        else
        {
          v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "_LSGetBSActionForUserActivity", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 1517);
        }

        v13 = v14;
        goto LABEL_20;
      }
    }
  }

  v9 = *(a1 + 96);
  if (!v9)
  {
    return;
  }

  v20 = *MEMORY[0x1E696A278];
  v21 = @"invalid input parameters";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v10, "_LSServer_OpenUserActivity_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 349);
  (*(v9 + 16))(v9, 0, v11);
LABEL_25:
}

void ___LSServer_GetIOQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.lsd.registrationIO", v2);
  v1 = _LSServer_GetIOQueue::result;
  _LSServer_GetIOQueue::result = v0;
}

void ___LSServer_GetAsyncWorkQueue_block_invoke(uint64_t a1, uint64_t a2)
{
  if ([__LSDefaultsGetSharedInstance(a1 a2)])
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2 = dispatch_queue_create("com.apple.lsd.server.asyncwork", v4);
    v3 = _LSServer_GetAsyncWorkQueue::result;
    _LSServer_GetAsyncWorkQueue::result = v2;
  }
}

void ___LSServer_RegisterItemInfo_block_invoke(uint64_t a1)
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  name = [*(a1 + 32) name];
  v3 = [*(a1 + 32) userInfo];
  CFNotificationCenterPostNotification(DistributedCenter, name, 0, v3, 1u);
}

void ___LSServer_RefreshContentInFrameworkAtURL_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ___LSServer_RefreshContentInFrameworkAtURL_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_17(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_943_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_947_cold_1()
{
  OUTLINED_FUNCTION_17(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7_0(&dword_18162D000, v0, v1, "could not write out system content database! %@", v2, v3, v4, v5);
}

void ___LSServer_SyncWithMobileInstallation_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___LSServer_SyncWithMobileInstallation_block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void ___LSServer_SyncWithMobileInstallation_block_invoke_3_cold_2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void ___LSServer_LSDatabaseRemoveNonexistentCryptexBundlesForReboot_block_invoke_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&dword_18162D000, v1, OS_LOG_TYPE_ERROR, "couldn't copy node for unit %llx on cryptex, assuming it is gone: %d", v2, 0x12u);
}

void ___LSServer_PerformOpenOperation_block_invoke_81_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void ___LSServer_PerformOpenOperation_block_invoke_81_cold_2(_DWORD *a1, int a2)
{
  *a1 = 67109120;
  a1[1] = a2;
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void ___LSServer_PerformOpenOperation_block_invoke_81_cold_3(_DWORD *a1, int a2)
{
  *a1 = 67109120;
  a1[1] = a2;
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void ___LSServer_PerformOpenOperation_block_invoke_81_cold_4(void *a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_2_10(a1, a2, a3, 1.5047e-36);
  _os_log_error_impl(&dword_18162D000, v5, OS_LOG_TYPE_ERROR, "pid %d cannot open URL with scheme %@", v4, 0x12u);
}

void ___LSServer_PerformOpenOperation_block_invoke_81_cold_5(void *a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_2_10(a1, a2, a3, 1.5047e-36);
  _os_log_error_impl(&dword_18162D000, v5, OS_LOG_TYPE_ERROR, "pid %d cannot open URL with scheme %@ (no claimants)", v4, 0x12u);
}

@end
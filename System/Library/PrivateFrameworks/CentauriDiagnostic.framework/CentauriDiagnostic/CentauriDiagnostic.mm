id collectSubsystemLogsForClient(unint64_t a1, char a2, void *a3, unint64_t *a4, uint64_t a5)
{
  v5 = a5;
  v98[3] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (a1 >= 5)
  {
    if (!v10)
    {
LABEL_17:
      v19 = MEMORY[0x277CBEBF8];
      goto LABEL_18;
    }

    *buf = 136315394;
    v95 = "collectSubsystemLogsForClient";
    v96 = 2050;
    v97 = a1;
    v11 = MEMORY[0x277D86220];
    v12 = "CDF: %s: unsupported client %{public}lu";
    v13 = 22;
LABEL_4:
    _os_log_impl(&dword_2433AC000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, v13);
    goto LABEL_17;
  }

  if (v10)
  {
    v14 = kCDFClientName[a1];
    *buf = 136315394;
    v95 = "collectSubsystemLogsForClient";
    v96 = 2082;
    v97 = v14;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: invoked by %{public}s", buf, 0x16u);
  }

  if (!+[CDFSubsystemDiagnostics isCentauriPlatform])
  {
    goto LABEL_17;
  }

  if (![v9 length])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 136315138;
    v95 = "collectSubsystemLogsForClient";
    v11 = MEMORY[0x277D86220];
    v12 = "CDF: %s: invalid dir";
    v13 = 12;
    goto LABEL_4;
  }

  v70 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9 isDirectory:1];
  if (!v70)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v95 = "collectSubsystemLogsForClient";
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: fileURLWithPath:dir failed", buf, 0xCu);
    }

    v19 = MEMORY[0x277CBEBF8];
    goto LABEL_84;
  }

  pauseCrashMover(1);
  if (kClientNeedsNonFatalDump[a1] == 1)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-triggered", kCDFClientName[a1]];
    CENCollectLogs();

    LODWORD(v16) = kWaitForLogsDuration[a1];
    [MEMORY[0x277CCACC8] sleepForTimeInterval:v16];
  }

  v17 = [MEMORY[0x277CBEB18] array];
  v69 = v17;
  if ((a2 & 2) == 0)
  {
LABEL_13:
    v18 = 0;
    if ((a2 & 4) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v21 = v17;
  v22 = collectFoldersForSubsystem(0, v70, a1, v5, a4);
  [v21 addObjectsFromArray:v22];

  v18 = [v21 count];
  if (!v18)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      if (a4)
      {
        v26 = *a4;
      }

      else
      {
        v26 = 0;
      }

      *buf = 136315394;
      v95 = "collectSubsystemLogsForClient";
      v96 = 2114;
      v97 = v26;
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to get Control subsystem attachments: %{public}@", buf, 0x16u);
    }

    goto LABEL_13;
  }

  if ((a2 & 4) != 0)
  {
LABEL_28:
    v23 = v9;
    v24 = collectFoldersForSubsystem(1, v70, a1, v5, a4);
    [v69 addObjectsFromArray:v24];

    if ([v69 count] <= v18 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      if (a4)
      {
        v25 = *a4;
      }

      else
      {
        v25 = 0;
      }

      *buf = 136315394;
      v95 = "collectSubsystemLogsForClient";
      v96 = 2114;
      v97 = v25;
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to get Alpha subsystem attachments: %{public}@", buf, 0x16u);
    }

    v18 = [v69 count];
    v9 = v23;
    if ((a2 & 8) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

LABEL_26:
  if ((a2 & 8) != 0)
  {
LABEL_38:
    v27 = collectFoldersForSubsystem(2, v70, a1, v5, a4);
    [v69 addObjectsFromArray:v27];

    if ([v69 count] <= v18 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      if (a4)
      {
        v28 = *a4;
      }

      else
      {
        v28 = 0;
      }

      *buf = 136315394;
      v95 = "collectSubsystemLogsForClient";
      v96 = 2114;
      v97 = v28;
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to get Beta subsystem attachments: %{public}@", buf, 0x16u);
    }
  }

LABEL_44:
  if ((a1 & 5) != 0)
  {
    goto LABEL_83;
  }

  v29 = v70;
  v66 = [MEMORY[0x277CBEB18] array];
  v30 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/private/var/dextcores" isDirectory:1];
  v31 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  v64 = v9;
  v65 = v30;
  if (!v30)
  {
    collectSubsystemLogsForClient_cold_2(v31);
    goto LABEL_82;
  }

  if (v31)
  {
    *buf = 136315394;
    v95 = "collectDextCoresWithMaxCount";
    v96 = 2114;
    v97 = v30;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: enumerating directory %{public}@", buf, 0x16u);
  }

  v32 = [MEMORY[0x277CCAA00] defaultManager];
  v33 = *MEMORY[0x277CBE7C0];
  v98[0] = *MEMORY[0x277CBE8E8];
  v98[1] = v33;
  v74 = v33;
  v73 = *MEMORY[0x277CBE838];
  v98[2] = *MEMORY[0x277CBE838];
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:3];
  v35 = [v32 enumeratorAtURL:v65 includingPropertiesForKeys:v34 options:0 errorHandler:&__block_literal_global_112];

  if (!v35)
  {
    collectSubsystemLogsForClient_cold_1(v65);
    goto LABEL_82;
  }

  v63 = v35;
  v36 = [v35 allObjects];
  v37 = [v36 sortedArrayUsingComparator:&__block_literal_global_107];

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v37;
  v75 = [obj countByEnumeratingWithState:&v80 objects:buf count:16];
  if (!v75)
  {
    goto LABEL_81;
  }

  v68 = 0;
  v72 = *v81;
  v38 = MEMORY[0x277D86220];
  v67 = v29;
  while (2)
  {
    for (i = 0; i != v75; ++i)
    {
      if (*v81 != v72)
      {
        objc_enumerationMutation(obj);
      }

      v40 = *(*(&v80 + 1) + 8 * i);
      v79 = 0;
      [v40 getResourceValue:&v79 forKey:v74 error:a4];
      v41 = v79;
      v78 = 0;
      [v40 getResourceValue:&v78 forKey:v73 error:0];
      v42 = v78;
      if (v41)
      {
        v43 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
        v44 = [v41 compare:v43];
        v45 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
        if (v44 == -1)
        {
          if (v45)
          {
            *v84 = 136315394;
            v85 = "collectDextCoresWithMaxCount";
            v86 = 2114;
            v87 = v43;
            _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Skipping collection of files created before %{public}@", v84, 0x16u);
          }

          goto LABEL_80;
        }

        v76 = v43;
        if (v45)
        {
          v46 = [v42 unsignedLongLongValue];
          *v84 = 136316162;
          v85 = "collectDextCoresWithMaxCount";
          v86 = 2114;
          v87 = v40;
          v88 = 2114;
          v89 = v29;
          v90 = 2050;
          v91 = v46;
          v92 = 2114;
          v93 = v41;
          _os_log_impl(&dword_2433AC000, v38, OS_LOG_TYPE_DEFAULT, "CDF: %s: copying %{public}@ to %{public}@, size %{public}llu date %{public}@", v84, 0x34u);
        }

        v77 = v42;
        v47 = v38;
        v48 = [MEMORY[0x277CCAA00] defaultManager];
        v49 = [v40 lastPathComponent];
        v50 = [v29 URLByAppendingPathComponent:v49];
        v51 = a4;
        v52 = [v48 copyItemAtURL:v40 toURL:v50 error:a4];
        v53 = v29;
        v54 = v52;

        if (v54)
        {
          v55 = [v40 lastPathComponent];
          v56 = [v53 URLByAppendingPathComponent:v55];
          v42 = v77;
          v57 = [CDFCollectionItem itemWithPathURL:v56 date:v41 fileSize:v77];

          if (v57)
          {
            [v66 addObject:v57];
            ++v68;
            v29 = v67;
            a4 = v51;
            v38 = v47;
            v43 = v76;
            if (v68 == 10)
            {

LABEL_80:
              goto LABEL_81;
            }
          }

          else
          {
            v38 = v47;
            a4 = v51;
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              v62 = [v40 lastPathComponent];
              *v84 = 136315394;
              v85 = "collectDextCoresWithMaxCount";
              v86 = 2114;
              v87 = v62;
              _os_log_impl(&dword_2433AC000, v47, OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to create attachment for file %{public}@", v84, 0x16u);

              v42 = v77;
            }

            v29 = v67;
            v43 = v76;
          }
        }

        else
        {
          v38 = v47;
          v58 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
          v29 = v53;
          a4 = v51;
          v43 = v76;
          v42 = v77;
          if (v58)
          {
            v59 = [v40 lastPathComponent];
            v60 = v59;
            if (v51)
            {
              v61 = *v51;
            }

            else
            {
              v61 = 0;
            }

            *v84 = 136315650;
            v85 = "collectDextCoresWithMaxCount";
            v86 = 2114;
            v87 = v59;
            v88 = 2114;
            v89 = v61;
            _os_log_impl(&dword_2433AC000, v38, OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to copy %{public}@: %{public}@", v84, 0x20u);
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *v84 = 136315394;
          v85 = "collectDextCoresWithMaxCount";
          v86 = 2114;
          v87 = v40;
          _os_log_impl(&dword_2433AC000, v38, OS_LOG_TYPE_DEFAULT, "CDF: %s: Invalid date, skipping collection %{public}@", v84, 0x16u);
        }

        v41 = v42;
      }
    }

    v75 = [obj countByEnumeratingWithState:&v80 objects:buf count:16];
    if (v75)
    {
      continue;
    }

    break;
  }

LABEL_81:

LABEL_82:
  [v69 addObjectsFromArray:v66];

  v9 = v64;
LABEL_83:
  [MEMORY[0x277D36B60] removeObjectForKey:@"crash_moverDisabledSince"];
  v19 = v69;
LABEL_84:

LABEL_18:

  return v19;
}

void pauseCrashMover(int a1)
{
  v1 = MEMORY[0x277D36B60];
  if (a1)
  {
    v3 = [MEMORY[0x277CBEAA8] now];
    [v1 setObject:v3 forKey:@"crash_moverDisabledSince"];
  }

  else
  {
    v2 = MEMORY[0x277D36B60];

    [v2 removeObjectForKey:@"crash_moverDisabledSince"];
  }
}

id collectFoldersForSubsystem(uint64_t a1, void *a2, uint64_t a3, __int16 a4, void **a5)
{
  v172 = *MEMORY[0x277D85DE8];
  v121 = a2;
  v114 = [MEMORY[0x277CBEB18] array];
  v131 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v6 = [&unk_28561CD10 countByEnumeratingWithState:&v150 objects:v164 count:16];
  v7 = 0x277CCA000uLL;
  v115 = a1;
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = *v151;
    v138 = &kSubsystemParams[14 * a1];
    v134 = *MEMORY[0x277CBE8E8];
    v11 = MEMORY[0x277D86220];
    do
    {
      v12 = 0;
      v136 = v8;
      do
      {
        if (*v151 != v10)
        {
          objc_enumerationMutation(&unk_28561CD10);
        }

        v13 = *(*(&v150 + 1) + 8 * v12);
        v14 = [*(v7 + 2560) defaultManager];
        v15 = [v14 fileExistsAtPath:v13];

        if (v15)
        {
          v16 = *v138;
          v17 = [v13 stringByAppendingPathComponent:*v138];
          v18 = [MEMORY[0x277CBEBC0] fileURLWithPath:v17 isDirectory:1];
          v19 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
          if (v18)
          {
            v20 = v10;
            if (v19)
            {
              *buf = 136315394;
              v158 = "getSortedFolderURLsForSubsystem";
              v159 = 2114;
              v160 = v18;
              _os_log_impl(&dword_2433AC000, v11, OS_LOG_TYPE_DEFAULT, "CDF: %s: enumerating directory %{public}@", buf, 0x16u);
            }

            v21 = v11;
            v22 = [*(v7 + 2560) defaultManager];
            v163 = v134;
            v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v163 count:1];
            v149 = v9;
            v24 = [v22 contentsOfDirectoryAtURL:v18 includingPropertiesForKeys:v23 options:1 error:&v149];
            v25 = v149;

            if (v24)
            {
              [v131 addObjectsFromArray:v24];
              v11 = v21;
            }

            else
            {
              v11 = v21;
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v26 = [(__CFString *)v18 path];
                *buf = 136315650;
                v158 = "getSortedFolderURLsForSubsystem";
                v159 = 2114;
                v160 = v26;
                v161 = 2114;
                v162 = v25;
                _os_log_impl(&dword_2433AC000, v21, OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to get %{public}@ contents:error %{public}@", buf, 0x20u);
              }
            }

            v7 = 0x277CCA000;
            v10 = v20;
            v8 = v136;
          }

          else
          {
            if (v19)
            {
              *buf = 136315394;
              v158 = "getSortedFolderURLsForSubsystem";
              v159 = 2114;
              v160 = v16;
              _os_log_impl(&dword_2433AC000, v11, OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to create path URL for subsystem:%{public}@", buf, 0x16u);
            }

            v25 = v9;
          }

          v9 = v25;
        }

        ++v12;
      }

      while (v8 != v12);
      v8 = [&unk_28561CD10 countByEnumeratingWithState:&v150 objects:v164 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if ([v131 count])
  {
    v27 = [v131 sortedArrayUsingComparator:&__block_literal_global_99];
  }

  else
  {
    v27 = 0;
  }

  v28 = v114;

  if (![v27 count])
  {
    v102 = v114;
    v29 = 0;
    v30 = 0;
    goto LABEL_152;
  }

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  obj = v27;
  v132 = [obj countByEnumeratingWithState:&v145 objects:v156 count:16];
  if (!v132)
  {
    v118 = 0;
    v29 = 0;
    v30 = 0;
    goto LABEL_151;
  }

  v128 = 0;
  v106 = 0;
  v112 = 0;
  v118 = 0;
  v29 = 0;
  v30 = 0;
  v130 = *v146;
  v133 = *MEMORY[0x277CBE7C0];
  v31 = &kSubsystemParams[14 * v115];
  v124 = *MEMORY[0x277CBE8E8];
  v113 = v31 + 10;
  v108 = v31 + 5;
  v120 = v31;
  v105 = v31 + 2;
  v32 = MEMORY[0x277D86220];
  v122 = a3 == 1;
  v117 = a3 == 1;
  v135 = a3 == 1;
  v33 = a5;
  v107 = v27;
  do
  {
    v34 = 0;
    do
    {
      if (*v146 != v130)
      {
        objc_enumerationMutation(obj);
      }

      v35 = *(*(&v145 + 1) + 8 * v34);
      v144 = 0;
      [v35 getResourceValue:&v144 forKey:v133 error:v33];
      v36 = v144;
      v37 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
      if (v36)
      {
        if ([v36 compare:v37] == -1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *v164 = 136315394;
            v165 = "collectFoldersForSubsystem";
            v166 = 2114;
            v167 = v37;
            _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Skipping collection of files created before %{public}@", v164, 0x16u);
          }

          v27 = v107;
          goto LABEL_149;
        }

        v137 = v37;
        v143 = 0;
        [v35 getResourceValue:&v143 forKey:v124 error:0];
        v38 = v143;
        v39 = ([v38 containsString:@"BluetoothDebug~AMFM~sysdiag"] & 1) != 0 || (objc_msgSend(v38, "containsString:", @"WiFiDebug~sysdiag") & 1) != 0 || (objc_msgSend(v38, "containsString:", @"WiFiDebug~ttr") & 1) != 0 || objc_msgSend(v38, "containsString:", @"BluetoothDebug~sysdiag");
        v40 = v138;
        if (v135)
        {
          v125 = getCDFClientFolderName(0);
          if ([v38 containsString:?])
          {
            v41 = 1;
            goto LABEL_63;
          }
        }

        if (v128)
        {
          v40 = getCDFClientFolderName(1);
          if ([v38 containsString:v40])
          {
            v138 = v40;

            v41 = 1;
            goto LABEL_62;
          }
        }

        v138 = v40;
        if (v122)
        {
          v42 = getCDFClientFolderName(3);
          v116 = v42;
          if ([v38 containsString:v42])
          {

            v41 = 1;
            v40 = v138;
            if ((v128 & 1) == 0)
            {
LABEL_62:
              if (v135)
              {
LABEL_63:
              }

              v44 = v39 | v41;
              if (a3 == 1)
              {
                if ((([v38 containsString:@"FLRLimit"] | v44) & 1) == 0)
                {
                  goto LABEL_66;
                }

LABEL_70:
                v32 = MEMORY[0x277D86220];
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *v164 = 136315394;
                  v165 = "collectFoldersForSubsystem";
                  v166 = 2114;
                  v167 = v38;
                  v53 = v32;
                  v54 = "CDF: %s: Skipping collecting %{public}@ ";
LABEL_72:
                  v55 = 22;
LABEL_73:
                  _os_log_impl(&dword_2433AC000, v53, OS_LOG_TYPE_DEFAULT, v54, v164, v55);
                }

                goto LABEL_138;
              }

              if (v44)
              {
                goto LABEL_70;
              }

LABEL_66:
              v45 = MEMORY[0x277CCACA8];
              v46 = v120[13];
              v47 = [v35 lastPathComponent];
              v48 = [v45 stringWithFormat:@"%@-%@", v46, v47];
              v49 = [v121 URLByAppendingPathComponent:v48];

              v50 = [MEMORY[0x277CCAA00] defaultManager];
              v127 = v49;
              v51 = [v49 path];
              v52 = [v50 fileExistsAtPath:v51];

              if (v52)
              {
                v32 = MEMORY[0x277D86220];
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *v164 = 136315394;
                  v165 = "collectFoldersForSubsystem";
                  v166 = 2114;
                  v29 = v127;
                  v167 = v127;
                  v53 = v32;
                  v54 = "CDF: %s: folder already exists: %{public}@ - abandon copying";
                  goto LABEL_72;
                }

LABEL_116:
                v29 = v127;
                goto LABEL_138;
              }

              if (kClientNeedsSelectiveLogging[a3] != 1)
              {
                v62 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                v29 = v49;
                if (v62)
                {
                  *v164 = 136315650;
                  v165 = "collectFoldersForSubsystem";
                  v166 = 2114;
                  v167 = v49;
                  v168 = 2114;
                  v169 = v36;
                  _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: copying to %{public}@, date %{public}@", v164, 0x20u);
                }

                v63 = [MEMORY[0x277CCAA00] defaultManager];
                v64 = [v63 copyItemAtURL:v35 toURL:v49 error:v33];

                if ((v64 & 1) == 0)
                {
                  v32 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    if (v33)
                    {
                      v65 = *v33;
                    }

                    else
                    {
                      v65 = 0;
                    }

                    *v164 = 136315906;
                    v165 = "collectFoldersForSubsystem";
                    v166 = 2114;
                    v167 = v65;
                    v168 = 2114;
                    v169 = v35;
                    v170 = 2114;
                    v171 = v127;
                    v53 = v32;
                    v54 = "CDF: %s: copying error: %{public}@, from %{public}@ to %{public}@";
                    v55 = 42;
                    goto LABEL_73;
                  }

LABEL_138:

                  goto LABEL_139;
                }

                goto LABEL_93;
              }

              v56 = objc_alloc_init(*off_278DB0D40[v115]);
              v29 = v49;
              if (!v56)
              {
                v32 = MEMORY[0x277D86220];
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  v66 = [v35 lastPathComponent];
                  *v164 = 136315394;
                  v165 = "collectFoldersForSubsystem";
                  v166 = 2114;
                  v167 = v66;
                  _os_log_impl(&dword_2433AC000, v32, OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to create diagObg for folder %{public}@", v164, 0x16u);
                }

                goto LABEL_138;
              }

              v57 = v56;
              v58 = [v56 collectLogsFrom:v35 to:v49 runtimeFlags:a4 & 0x103];
              v59 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v58)
              {
                if (v59)
                {
                  *v164 = 136315394;
                  v165 = "collectFoldersForSubsystem";
                  v166 = 2114;
                  v167 = v35;
                  v60 = MEMORY[0x277D86220];
                  v61 = "CDF: %s: Collected from %{public}@ succesfully";
                  goto LABEL_91;
                }
              }

              else if (v59)
              {
                *v164 = 136315394;
                v165 = "collectFoldersForSubsystem";
                v166 = 2114;
                v167 = v35;
                v60 = MEMORY[0x277D86220];
                v61 = "CDF: %s: Failed to collect logs from %{public}@";
LABEL_91:
                _os_log_impl(&dword_2433AC000, v60, OS_LOG_TYPE_DEFAULT, v61, v164, 0x16u);
              }

LABEL_93:
              v67 = [MEMORY[0x277CCAA00] defaultManager];
              v68 = [v29 URLByAppendingPathComponent:v120[1]];
              v155 = v133;
              v69 = [MEMORY[0x277CBEA60] arrayWithObjects:&v155 count:1];
              v70 = [v67 enumeratorAtURL:v68 includingPropertiesForKeys:v69 options:1 errorHandler:&__block_literal_global];

              v71 = [v70 allObjects];
              v72 = [v71 count];
              v73 = *(v113 + a3);

              if (v72 > v73)
              {
                v74 = [v70 allObjects];
                v75 = [v74 sortedArrayUsingComparator:&__block_literal_global_107];

                v110 = v70;
                v76 = [v70 allObjects];
                v77 = [v76 count];

                v141 = 0u;
                v142 = 0u;
                v139 = 0u;
                v140 = 0u;
                v109 = v75;
                v119 = [v75 reverseObjectEnumerator];
                v78 = [v119 countByEnumeratingWithState:&v139 objects:v154 count:16];
                if (v78)
                {
                  v79 = v78;
                  v80 = (v77 - v73);
                  v81 = *v140;
LABEL_96:
                  v82 = 0;
                  while (1)
                  {
                    if (*v140 != v81)
                    {
                      objc_enumerationMutation(v119);
                    }

                    if (!v80)
                    {
                      break;
                    }

                    v83 = *(*(&v139 + 1) + 8 * v82);
                    v80 = (v80 - 1);
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      v84 = [v83 lastPathComponent];
                      *v164 = 136315650;
                      v165 = "collectFoldersForSubsystem";
                      v166 = 2050;
                      v167 = v80;
                      v168 = 2114;
                      v169 = v84;
                      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Overflow:%{public}lu Dropping %{public}@", v164, 0x20u);
                    }

                    v85 = [MEMORY[0x277CCAA00] defaultManager];
                    v86 = [v85 removeItemAtURL:v83 error:a5];

                    if ((v86 & 1) == 0)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        v87 = a5;
                        if (a5)
                        {
                          v87 = *a5;
                        }

                        *v164 = 136315394;
                        v165 = "collectFoldersForSubsystem";
                        v166 = 2114;
                        v167 = v87;
                        _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to remove extra log: %{public}@", v164, 0x16u);
                      }

                      break;
                    }

                    if (v79 == ++v82)
                    {
                      v79 = [v119 countByEnumeratingWithState:&v139 objects:v154 count:16];
                      if (v79)
                      {
                        goto LABEL_96;
                      }

                      break;
                    }
                  }
                }

                v70 = v110;
                v118 = v109;
              }

              v29 = v127;
              TotalSizeForPath = getTotalSizeForPath(v127);
              if (!TotalSizeForPath)
              {
                v32 = MEMORY[0x277D86220];
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  v93 = [v35 lastPathComponent];
                  *v164 = 136315394;
                  v165 = "collectFoldersForSubsystem";
                  v166 = 2114;
                  v167 = v93;
                  _os_log_impl(&dword_2433AC000, v32, OS_LOG_TYPE_DEFAULT, "CDF: %s: skipping folder with zero size: %{public}@", v164, 0x16u);
                }

                v30 = v70;
                v33 = a5;
                goto LABEL_138;
              }

              v89 = TotalSizeForPath;
              v30 = v70;
              v90 = &v112[TotalSizeForPath];
              v91 = v108[a3];
              if (&v112[TotalSizeForPath] <= v91)
              {
                v94 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:TotalSizeForPath];
                v95 = [CDFCollectionItem itemWithPathURL:v127 date:v36 fileSize:v94];

                v33 = a5;
                v32 = MEMORY[0x277D86220];
                if (v95)
                {
                  if (v135)
                  {
                    v135 = 1;
                  }

                  else
                  {
                    v97 = getCDFClientFolderName(0);
                    v135 = [v38 containsString:v97];
                  }

                  if (v128)
                  {
                    v128 = 1;
                  }

                  else
                  {
                    v98 = getCDFClientFolderName(1);
                    v128 = [v38 containsString:v98];
                  }

                  if (v122)
                  {
                    v122 = 1;
                  }

                  else
                  {
                    v99 = getCDFClientFolderName(3);
                    v122 = [v38 containsString:v99];
                  }

                  if (v117)
                  {
                    v117 = 1;
                  }

                  else
                  {
                    v100 = getCDFClientFolderName(4);
                    v117 = [v38 containsString:v100];
                  }

                  [v114 addObject:v95];
                  if (v106 + 1 == *(v105 + a3))
                  {

                    v29 = v127;
                    v27 = v107;
                    v37 = v137;
LABEL_149:

                    goto LABEL_151;
                  }

                  ++v106;
                  v112 = v90;
                }

                else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  v96 = [v35 lastPathComponent];
                  *v164 = 136315394;
                  v165 = "collectFoldersForSubsystem";
                  v166 = 2114;
                  v167 = v96;
                  _os_log_impl(&dword_2433AC000, v32, OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to create attachment for folder %{public}@", v164, 0x16u);
                }

                v29 = v127;

                goto LABEL_138;
              }

              v92 = MEMORY[0x277D86220];
              v33 = a5;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *v164 = 136315906;
                v165 = "collectFoldersForSubsystem";
                v166 = 2048;
                v167 = v89;
                v168 = 2050;
                v169 = v91;
                v170 = 2050;
                v171 = v112;
                _os_log_impl(&dword_2433AC000, v92, OS_LOG_TYPE_DEFAULT, "CDF: %s: folder size %llu would exceed maximum bytes %{public}llu, currently %{public}llu", v164, 0x2Au);
              }

              v32 = v92;
              goto LABEL_116;
            }

LABEL_61:

            goto LABEL_62;
          }

          if (v117)
          {
            v40 = v138;
LABEL_56:
            v43 = getCDFClientFolderName(4);
            v41 = [v38 containsString:v43];

            v33 = a5;
            if ((v122 & 1) == 0)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v41 = 0;
            v40 = v138;
          }

          goto LABEL_60;
        }

        if (v117)
        {
          goto LABEL_56;
        }

        v41 = 0;
LABEL_60:
        if ((v128 & 1) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *v164 = 136315394;
        v165 = "collectFoldersForSubsystem";
        v166 = 2114;
        v167 = v35;
        _os_log_impl(&dword_2433AC000, v32, OS_LOG_TYPE_DEFAULT, "CDF: %s: Invalid date, skipping collection %{public}@", v164, 0x16u);
      }

      v36 = v37;
LABEL_139:

      ++v34;
    }

    while (v34 != v132);
    v101 = [obj countByEnumeratingWithState:&v145 objects:v156 count:16];
    v27 = v107;
    v132 = v101;
  }

  while (v101);
LABEL_151:

  v28 = v114;
  v103 = v114;

LABEL_152:

  return v28;
}

BOOL collectClientLogsWithSizeAndOverride(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  if (a1 != 1 || (v9 = [v7 length], !a3) || !v9)
  {
    v14 = 0;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136316162;
    v20 = "collectClientLogsWithSizeAndOverride";
    v21 = 2050;
    v22 = a1;
    v23 = 2114;
    v24 = v8;
    v25 = 2050;
    v26 = a3;
    v27 = 2050;
    v28 = a4;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: invalid arguments client:%{public}lu, dir:%{public}@, size:%{public}luMB flags:%{public}lu", buf, 0x34u);
LABEL_14:
    v14 = 0;
    goto LABEL_16;
  }

  if (!+[CDFSubsystemDiagnostics isCentauriPlatform])
  {
    v14 = 1;
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v20 = "collectClientLogsWithSizeAndOverride";
    v21 = 2050;
    v22 = 1;
    v23 = 2114;
    v24 = v8;
    v25 = 2050;
    v26 = a3;
    v27 = 2050;
    v28 = a4;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: client:%{public}lu, dir:%{public}@, size:%{public}luMB flags:%{public}lu", buf, 0x34u);
  }

  v18 = 0;
  v10 = collectSubsystemLogsForClient(1uLL, 14, v8, &v18, a4);
  v11 = v18;
  if (![v10 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v11 localizedFailureReason];
      v17 = [v11 domain];
      *buf = 136315650;
      v20 = "collectClientLogsWithSizeAndOverride";
      v21 = 2114;
      v22 = v16;
      v23 = 2114;
      v24 = v17;
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to copy items to dir %{public}@ %{public}@", buf, 0x20u);
    }

    goto LABEL_14;
  }

  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8 isDirectory:1];
  v13 = getTotalSizeForPath(v12) >> 20;
  v14 = v13 <= a3;
  if (v13 > a3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v20 = "collectClientLogsWithSizeAndOverride";
    v21 = 2050;
    v22 = v13;
    v23 = 2050;
    v24 = a3;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Warning: potential file drops - copied size %{public}lluMB exceeds client limit %{public}luMB", buf, 0x20u);
  }

LABEL_16:
  return v14;
}

uint64_t getTotalSizeForPath(void *a1)
{
  v40[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = *MEMORY[0x277CBE868];
  v4 = *MEMORY[0x277CBE838];
  v40[0] = *MEMORY[0x277CBE868];
  v40[1] = v4;
  v24 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  v6 = [v2 enumeratorAtURL:v1 includingPropertiesForKeys:v5 options:0 errorHandler:&__block_literal_global_114];

  if (v6)
  {
    v22 = v6;
    v23 = v1;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [v6 allObjects];
    v7 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = *v30;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          v15 = v11;
          if (*v30 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          v28 = 0;
          [v16 getResourceValue:&v28 forKey:v3 error:0];
          v11 = v28;

          if (v11 && ([v11 BOOLValue] & 1) == 0)
          {
            v26 = 0;
            v27 = 0;
            [v16 getResourceValue:&v27 forKey:v24 error:&v26];
            v17 = v27;

            v18 = v26;
            v19 = v9;
            v9 = v18;

            if (!v17)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                v21 = [v9 code];
                *buf = 136315650;
                v34 = "getTotalSizeForPath";
                v35 = 2114;
                v36 = v16;
                v37 = 2050;
                v38 = v21;
                _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to retrieve size for file %{public}@ error: %{public}ld", buf, 0x20u);
              }

              v10 = 0;
              goto LABEL_15;
            }

            v12 += [v17 unsignedLongLongValue];
            v10 = v17;
          }
        }

        v8 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
LABEL_15:
      v12 = 0;
    }

    v6 = v22;
    v1 = v23;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v34 = "getTotalSizeForPath";
      v35 = 2114;
      v36 = v1;
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to enumerate directory %{public}@", buf, 0x16u);
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  return v12;
}

id getCDFClientFolderName(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-triggered", kCDFClientName[a1]];
  v3 = [v1 stringWithFormat:@"ClientRequested-%@", v2];

  return v3;
}

uint64_t __collectFoldersForSubsystem_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "collectFoldersForSubsystem_block_invoke";
    v8 = 2114;
    v9 = a2;
    v10 = 2114;
    v11 = a3;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to enumerate log file %{public}@: %{public}@", &v6, 0x20u);
  }

  return 1;
}

uint64_t __getSortedFolderURLsForSubsystem_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 lastPathComponent];
  v6 = [v4 lastPathComponent];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

uint64_t __sortURLsByDateDescending_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = 0;
  v4 = *MEMORY[0x277CBE7C0];
  v5 = a3;
  [a2 getResourceValue:&v10 forKey:v4 error:0];
  v9 = 0;
  v6 = v10;
  [v5 getResourceValue:&v9 forKey:v4 error:0];

  v7 = [v9 compare:v6];
  return v7;
}

uint64_t __collectDextCoresWithMaxCount_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "collectDextCoresWithMaxCount_block_invoke";
    v8 = 2114;
    v9 = a2;
    v10 = 2114;
    v11 = a3;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to enumerate file %{public}@: %{public}@", &v6, 0x20u);
  }

  return 1;
}

uint64_t __getTotalSizeForPath_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "getTotalSizeForPath_block_invoke";
    v8 = 2114;
    v9 = a2;
    v10 = 2114;
    v11 = a3;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to enumerate file %{public}@: %{public}@", &v6, 0x20u);
  }

  return 0;
}

void collectSubsystemLogsForClient_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315394;
    v3 = "collectDextCoresWithMaxCount";
    v4 = 2114;
    v5 = a1;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to enumerate directory %{public}@", &v2, 0x16u);
  }
}

void collectSubsystemLogsForClient_cold_2(char a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = 136315394;
    v2 = "collectDextCoresWithMaxCount";
    v3 = 2114;
    v4 = @"/private/var/dextcores";
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to get dext core path %{public}@", &v1, 0x16u);
  }
}
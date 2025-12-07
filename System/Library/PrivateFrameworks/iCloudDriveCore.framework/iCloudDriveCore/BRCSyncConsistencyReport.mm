@interface BRCSyncConsistencyReport
+ (void)_finishReport:(id)report session:(id)session temporaryDBURL:(id)l mountFD:(int)d completionHandler:(id)handler;
+ (void)cleanupApfsSnapshotWithMountFD:(int)d;
+ (void)cleanupApfsSnapshotWithMountPath:(id)path;
+ (void)generateReportWithSession:(id)session mangledIDs:(id)ds completion:(id)completion;
@end

@implementation BRCSyncConsistencyReport

+ (void)_finishReport:(id)report session:(id)session temporaryDBURL:(id)l mountFD:(int)d completionHandler:(id)handler
{
  v8 = *&d;
  reportCopy = report;
  sessionCopy = session;
  lCopy = l;
  handlerCopy = handler;
  if ((v8 & 0x80000000) == 0)
  {
    [self cleanupApfsSnapshotWithMountFD:v8];
    close(v8);
  }

  if (lCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtURL:lCopy error:0];
  }

  clientTruthWorkloop = [sessionCopy clientTruthWorkloop];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __91__BRCSyncConsistencyReport__finishReport_session_temporaryDBURL_mountFD_completionHandler___block_invoke;
  v20[3] = &unk_278500048;
  v21 = reportCopy;
  v22 = handlerCopy;
  v18 = handlerCopy;
  v19 = reportCopy;
  dispatch_async(clientTruthWorkloop, v20);
}

uint64_t __91__BRCSyncConsistencyReport__finishReport_session_temporaryDBURL_mountFD_completionHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) wasAbleToRun])
  {
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __91__BRCSyncConsistencyReport__finishReport_session_temporaryDBURL_mountFD_completionHandler___block_invoke_cold_1();
    }
  }

  else
  {
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEFAULT, "[WARNING] Telemetry sync consistency report did not run%@", &v5, 0xCu);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

+ (void)cleanupApfsSnapshotWithMountPath:(id)path
{
  pathCopy = path;
  v6 = open([path fileSystemRepresentation], 0);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v6;
    [self cleanupApfsSnapshotWithMountFD:v6];

    close(v7);
  }
}

+ (void)cleanupApfsSnapshotWithMountFD:(int)d
{
  v14 = 0;
  v4 = BRCUnmountAPFSSnapshot(@"iCloudDriveSyncConsistency", &v14);
  v5 = v14;
  v6 = v5;
  if ((v4 & 1) == 0 && ([v5 br_isPOSIXErrorCode:2] & 1) == 0)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      +[BRCSyncConsistencyReport cleanupApfsSnapshotWithMountFD:];
    }
  }

  v13 = v6;
  v9 = BRCDeleteAPFSSnapshot(d, @"iCloudDriveSyncConsistency", &v13);
  v10 = v13;

  if ((v9 & 1) == 0 && ([v10 br_isPOSIXErrorCode:2] & 1) == 0)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, 0x90u))
    {
      +[BRCSyncConsistencyReport cleanupApfsSnapshotWithMountFD:];
    }
  }
}

+ (void)generateReportWithSession:(id)session mangledIDs:(id)ds completion:(id)completion
{
  v135 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dsCopy = ds;
  completionCopy = completion;
  v11 = objc_alloc_init(BRCSyncConsistencyReport);
  v12 = [BRCUserDefaults defaultsForMangledID:0];
  v13 = +[BRCSystemResourcesManager manager];
  volume = [sessionCopy volume];
  v15 = [v13 hasEnoughSpaceForDevice:{objc_msgSend(volume, "deviceID")}];

  if (v15)
  {
    v92 = completionCopy;
    selfCopy = self;
    v90 = v12;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v17 = MEMORY[0x277CBEBC0];
    sessionDirPath = [sessionCopy sessionDirPath];
    v19 = [sessionDirPath stringByAppendingPathComponent:@"telemetry-db"];
    v20 = [v17 fileURLWithPath:v19];

    if ([v20 checkResourceIsReachableAndReturnError:0])
    {
      [defaultManager removeItemAtURL:v20 error:0];
    }

    v89 = defaultManager;
    [defaultManager createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:0];
    serverTruthWorkloop = [sessionCopy serverTruthWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__BRCSyncConsistencyReport_generateReportWithSession_mangledIDs_completion___block_invoke;
    block[3] = &unk_2784FF478;
    v22 = sessionCopy;
    v125 = v22;
    v23 = v20;
    v126 = v23;
    dispatch_async_and_wait(serverTruthWorkloop, block);

    clientTruthWorkloop = [v22 clientTruthWorkloop];
    v121[0] = MEMORY[0x277D85DD0];
    v121[1] = 3221225472;
    v121[2] = __76__BRCSyncConsistencyReport_generateReportWithSession_mangledIDs_completion___block_invoke_2;
    v121[3] = &unk_2784FF478;
    v25 = v22;
    v122 = v25;
    v91 = v23;
    v123 = v91;
    dispatch_async_and_wait(clientTruthWorkloop, v121);

    volume2 = [v25 volume];
    mountPath = [volume2 mountPath];

    v28 = [BRCUserDefaults defaultsForMangledID:0];
    LODWORD(v23) = [v28 syncConsistencyCheckerSnapshotting];

    if (!v23)
    {
      v34 = @"/";
      v36 = -1;
LABEL_11:
      BRDiskCheckerServiceConnection();
      v83 = v82 = v34;
      v39 = [MEMORY[0x277CBEBC0] fileURLWithPath:v34];
      mobileDocumentsURL = [MEMORY[0x277CFAE38] mobileDocumentsURL];
      path = [mobileDocumentsURL path];
      v81 = v39;
      v42 = [v39 URLByAppendingPathComponent:path];

      v84 = dsCopy;
      v85 = mountPath;
      v88 = v36;
      v80 = v42;
      if (dsCopy && [dsCopy count])
      {
        v117[0] = MEMORY[0x277D85DD0];
        v117[1] = 3221225472;
        v117[2] = __76__BRCSyncConsistencyReport_generateReportWithSession_mangledIDs_completion___block_invoke_738;
        v117[3] = &unk_278500428;
        v118 = v42;
        v43 = [dsCopy br_transform:v117];
      }

      else
      {
        v128 = v42;
        v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v128 count:1];
      }

      v44 = objc_opt_new();
      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      v116 = 0u;
      v45 = v43;
      v46 = [v45 countByEnumeratingWithState:&v113 objects:v127 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v114;
        while (2)
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v114 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v50 = *(*(&v113 + 1) + 8 * i);
            v112 = 0;
            v51 = [MEMORY[0x277CC6438] wrapperWithURL:v50 readonly:1 error:&v112];
            v52 = v112;
            if (v52)
            {
              lastError = v11->_lastError;
              v11->_lastError = v52;
              v59 = v52;

              completionCopy = v92;
              v33 = v91;
              [selfCopy _finishReport:v11 session:v25 temporaryDBURL:v91 mountFD:v88 completionHandler:v92];

              v60 = v45;
              goto LABEL_32;
            }

            [v44 addObject:v51];
          }

          v47 = [v45 countByEnumeratingWithState:&v113 objects:v127 count:16];
          if (v47)
          {
            continue;
          }

          break;
        }
      }

      v110[0] = MEMORY[0x277D85DD0];
      v110[1] = 3221225472;
      v110[2] = __76__BRCSyncConsistencyReport_generateReportWithSession_mangledIDs_completion___block_invoke_2_740;
      v110[3] = &unk_278500450;
      v53 = v25;
      v111 = v53;
      v54 = [dsCopy br_transform:v110];
      v109 = 0;
      v33 = v91;
      v55 = [MEMORY[0x277CC6438] wrapperWithURL:v91 readonly:0 error:&v109];
      v56 = v109;
      v57 = v109;
      if (v57)
      {
        objc_storeStrong(&v11->_lastError, v56);
        [selfCopy _finishReport:v11 session:v53 temporaryDBURL:v91 mountFD:v88 completionHandler:v92];
      }

      else
      {
        v102[0] = MEMORY[0x277D85DD0];
        v102[1] = 3221225472;
        v102[2] = __76__BRCSyncConsistencyReport_generateReportWithSession_mangledIDs_completion___block_invoke_3;
        v102[3] = &unk_278500478;
        v76 = v11;
        v103 = v76;
        v107 = selfCopy;
        v68 = v53;
        v104 = v68;
        v75 = v91;
        v105 = v75;
        v108 = v88;
        v74 = v92;
        v106 = v74;
        v79 = [v83 remoteObjectProxyWithErrorHandler:v102];
        syncConsistencyFileChecksumRate = [v90 syncConsistencyFileChecksumRate];
        syncConsistencyPackageChecksumRate = [v90 syncConsistencyPackageChecksumRate];
        syncConsistencyMaxEventsCount = [v90 syncConsistencyMaxEventsCount];
        v94[0] = MEMORY[0x277D85DD0];
        v94[1] = 3221225472;
        v94[2] = __76__BRCSyncConsistencyReport_generateReportWithSession_mangledIDs_completion___block_invoke_742;
        v94[3] = &unk_2785004A0;
        v95 = v76;
        v100 = selfCopy;
        v96 = v68;
        v97 = v75;
        v101 = v88;
        v99 = v74;
        v98 = v83;
        [v79 checkTreeConsistencyWithDatabaseURL:v55 rootURLWrappers:v44 fileChecksumRatePerThousand:syncConsistencyFileChecksumRate packageChecksumRatePerThousand:syncConsistencyPackageChecksumRate maxEventsCount:syncConsistencyMaxEventsCount forZoneRowIDs:v54 reply:v94];
      }

      v60 = v111;
      dsCopy = v84;
      completionCopy = v92;
LABEL_32:
      mountPath = v85;

      v67 = v89;
      v12 = v90;
      v62 = v82;
      goto LABEL_37;
    }

    v29 = open([mountPath fileSystemRepresentation], 0);
    if ((v29 & 0x80000000) != 0)
    {
      v61 = v11->_lastError;
      v11->_lastError = 0;

      completionCopy = v92;
      v33 = v91;
      [selfCopy _finishReport:v11 session:v25 temporaryDBURL:v91 mountFD:v29 completionHandler:v92];
      v62 = @"/";
    }

    else
    {
      [selfCopy cleanupApfsSnapshotWithMountFD:v29];
      v120 = 0;
      v30 = BRCGenerateAPFSSnapshot(v29, @"iCloudDriveSyncConsistency", &v120);
      v31 = v120;
      v32 = v31;
      v33 = v91;
      if (!v30)
      {
        v86 = mountPath;
        v63 = brc_bread_crumbs();
        v64 = brc_default_log();
        if (os_log_type_enabled(v64, 0x90u))
        {
          *buf = 138412802;
          v130 = v86;
          v131 = 2112;
          v132 = v32;
          v133 = 2112;
          v134 = v63;
          _os_log_error_impl(&dword_223E7A000, v64, 0x90u, "[ERROR] Failed to generate snapshot at %@ - %@%@", buf, 0x20u);
        }

        v65 = v11->_lastError;
        v11->_lastError = v32;
        v66 = v32;

        completionCopy = v92;
        [selfCopy _finishReport:v11 session:v25 temporaryDBURL:v91 mountFD:v29 completionHandler:v92];

        v62 = @"/";
        v67 = v89;
        v12 = v90;
        mountPath = v86;
        goto LABEL_37;
      }

      v119 = v31;
      v87 = v29;
      v34 = BRCMountAPFSSnapshot(v29, @"iCloudDriveSyncConsistency", &v119);
      v35 = v119;

      if (v34)
      {

        v36 = v87;
        goto LABEL_11;
      }

      v69 = brc_bread_crumbs();
      v70 = brc_default_log();
      if (os_log_type_enabled(v70, 0x90u))
      {
        *buf = 138412802;
        v130 = mountPath;
        v131 = 2112;
        v132 = v35;
        v133 = 2112;
        v134 = v69;
        _os_log_error_impl(&dword_223E7A000, v70, 0x90u, "[ERROR] Failed to mount snapshot at %@ - %@%@", buf, 0x20u);
      }

      v71 = v11->_lastError;
      v11->_lastError = v35;
      v72 = v35;

      completionCopy = v92;
      [selfCopy _finishReport:v11 session:v25 temporaryDBURL:v91 mountFD:v87 completionHandler:v92];

      v62 = 0;
    }

    v67 = v89;
    v12 = v90;
LABEL_37:

    goto LABEL_38;
  }

  v37 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:28];
  v38 = v11->_lastError;
  v11->_lastError = v37;

  [self _finishReport:v11 session:sessionCopy temporaryDBURL:0 mountFD:0xFFFFFFFFLL completionHandler:completionCopy];
LABEL_38:
}

void __76__BRCSyncConsistencyReport_generateReportWithSession_mangledIDs_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serverDB];
  [v2 flush];

  v4 = [*(a1 + 32) serverDB];
  v3 = [*(a1 + 40) URLByAppendingPathComponent:@"server.db"];
  [v4 backupToURL:v3 progress:0];
}

void __76__BRCSyncConsistencyReport_generateReportWithSession_mangledIDs_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) clientDB];
  [v2 flush];

  v4 = [*(a1 + 32) clientDB];
  v3 = [*(a1 + 40) URLByAppendingPathComponent:@"client.db"];
  [v4 backupToURL:v3 progress:0];
}

id __76__BRCSyncConsistencyReport_generateReportWithSession_mangledIDs_completion___block_invoke_2_740(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CFAE60];
  v4 = a2;
  v5 = [[v3 alloc] initWithMangledString:v4];

  v6 = [v2 appLibraryByMangledID:v5];
  v7 = [v6 zoneRowID];

  return v7;
}

void __76__BRCSyncConsistencyReport_generateReportWithSession_mangledIDs_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, 0x90u))
    {
      __81__BRCAnalyticsReporter__resumePausedTreeConsistencyCheckOperationWithSystemTask___block_invoke_cold_1();
    }

    objc_storeStrong((*(a1 + 32) + 32), a2);
    [*(a1 + 64) _finishReport:*(a1 + 32) session:*(a1 + 40) temporaryDBURL:*(a1 + 48) mountFD:*(a1 + 72) completionHandler:*(a1 + 56)];
  }
}

void __76__BRCSyncConsistencyReport_generateReportWithSession_mangledIDs_completion___block_invoke_742(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    objc_storeStrong((*(a1 + 32) + 32), a4);
  }

  else
  {
    [*(a1 + 56) invalidate];
    *(*(a1 + 32) + 8) = 1;
    v28 = v7;
    if (v7)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v11 = v7;
      v12 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v34;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v34 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [[AppTelemetryTimeSeriesEvent alloc] initWithData:*(*(&v33 + 1) + 8 * i)];
            [v10 addObject:v16];
          }

          v13 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v13);
      }

      v17 = *(a1 + 32);
      v18 = *(v17 + 16);
      *(v17 + 16) = v10;

      v7 = v28;
    }

    if (v8)
    {
      v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v20 = v8;
      v21 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v30;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v30 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = [[AppTelemetryTimeSeriesEvent alloc] initWithData:*(*(&v29 + 1) + 8 * j)];
            [v19 addObject:v25];
          }

          v22 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v22);
      }

      v26 = *(a1 + 32);
      v27 = *(v26 + 24);
      *(v26 + 24) = v19;

      v7 = v28;
    }
  }

  [*(a1 + 72) _finishReport:*(a1 + 32) session:*(a1 + 40) temporaryDBURL:*(a1 + 48) mountFD:*(a1 + 80) completionHandler:*(a1 + 64)];
}

void __91__BRCSyncConsistencyReport__finishReport_session_temporaryDBURL_mountFD_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v2 = [*v0 telemetryErrorEvents];
  [v2 count];
  v3 = [*v1 telemetryWarningEvents];
  [v3 count];
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

@end
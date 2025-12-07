@interface FSKitDiskArbHelper
+ (id)waitForPreviousTasksToComplete:(id)complete client:(id)client;
+ (int)DAMountFSKitVolume:(id)volume deviceName:(id)name mountPoint:(id)point volumeName:(id)volumeName auditToken:(id *)token mountOptions:(id)options;
+ (int)DAMountUserFSVolume:(id)volume deviceName:(id)name mountPoint:(id)point volumeName:(id)volumeName auditToken:(id *)token mountOptions:(id)options;
+ (int)DAMountUserFSVolume:(id)volume deviceName:(id)name mountPoint:(id)point volumeName:(id)volumeName mountOptions:(id)options;
@end

@implementation FSKitDiskArbHelper

+ (id)waitForPreviousTasksToComplete:(id)complete client:(id)client
{
  completeCopy = complete;
  clientCopy = client;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__5;
  v36 = __Block_byref_object_dispose__5;
  v37 = objc_opt_new();
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__5;
  v30 = __Block_byref_object_dispose__5;
  v31 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke;
  v21[3] = &unk_278FED228;
  v7 = completeCopy;
  v22 = v7;
  v23 = &v32;
  [clientCopy currentTasksSync:v21];
  if ([v33[5] count])
  {
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke_3;
    aBlock[3] = &unk_278FEE038;
    v17 = v7;
    v19 = &v32;
    v20 = v24;
    v9 = v8;
    v18 = v9;
    v10 = _Block_copy(aBlock);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke_5;
    v15[3] = &unk_278FECF30;
    v15[4] = &v26;
    [clientCopy setTaskUpdateHandler:v10 replyHandler:v15];
    v11 = dispatch_time(0, 5000000000);
    dispatch_group_wait(v9, v11);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke_6;
    v14[3] = &unk_278FECF30;
    v14[4] = &v26;
    [clientCopy setTaskUpdateHandler:0 replyHandler:v14];
    v12 = v27[5];
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);

  return v12;
}

void __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke_2;
  v6[3] = &unk_278FEE010;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [a2 enumerateObjectsUsingBlock:v6];
}

void __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 taskResource];
  v4 = [v3 getResourceID];
  v5 = [*(a1 + 32) getResourceID];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v7];
  }
}

void __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 taskState] == 3)
  {
    v7 = [v5 taskResource];
    v8 = [v7 getResourceID];
    v9 = [*(a1 + 32) getResourceID];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = __Block_byref_object_copy__5;
      v23 = __Block_byref_object_dispose__5;
      v24 = 0;
      v11 = *(*(*(a1 + 48) + 8) + 40);
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke_4;
      v16 = &unk_278FEE010;
      v17 = v5;
      v18 = &v19;
      [v11 enumerateObjectsUsingBlock:&v13];
      if (v20[5])
      {
        [*(*(*(a1 + 48) + 8) + 40) removeObject:{v13, v14, v15, v16}];
      }

      _Block_object_dispose(&v19, 8);
    }
  }

  v12 = *(*(*(a1 + 48) + 8) + 40);
  objc_sync_enter(v12);
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && ![*(*(*(a1 + 48) + 8) + 40) count])
  {
    dispatch_group_leave(*(a1 + 40));
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  objc_sync_exit(v12);
}

void __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 taskID];
  v8 = [*(a1 + 32) taskID];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v6 = v4;
    v5 = [v4 description];
    NSLog(&cfstr_ErrorSettingUp.isa, [v5 UTF8String]);

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v6;
  }
}

void __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke_6(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v6 = v4;
    v5 = [v4 description];
    NSLog(&cfstr_ErrorSettingUp.isa, [v5 UTF8String]);

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v6;
  }
}

+ (int)DAMountFSKitVolume:(id)volume deviceName:(id)name mountPoint:(id)point volumeName:(id)volumeName auditToken:(id *)token mountOptions:(id)options
{
  v98 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  nameCopy = name;
  pointCopy = point;
  volumeNameCopy = volumeName;
  optionsCopy = options;
  v17 = fskit_std_log(optionsCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    *&buf[4] = "+[FSKitDiskArbHelper DAMountFSKitVolume:deviceName:mountPoint:volumeName:auditToken:mountOptions:]";
    *&buf[12] = 2112;
    *&buf[14] = volumeCopy;
    *&buf[22] = 2112;
    v94 = nameCopy;
    *v95 = 2112;
    *&v95[2] = pointCopy;
    *&v95[10] = 2112;
    *&v95[12] = volumeNameCopy;
    v96 = 2112;
    v97 = optionsCopy;
    _os_log_debug_impl(&dword_24A929000, v17, OS_LOG_TYPE_DEBUG, "%s:start:fsShortName(%@):deviceName(%@):mountPoint(%@):volumeName(%@):mountOptionString(%@)", buf, 0x3Eu);
  }

  v18 = +[FSClient sharedInstance];
  v59 = objc_opt_new();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v94 = __Block_byref_object_copy__5;
  *v95 = __Block_byref_object_dispose__5;
  *&v95[8] = 0;
  v19 = [optionsCopy containsString:@"rdonly"];
  if ([volumeCopy isEqualToString:@"passthroughfs"])
  {
    v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:nameCopy];
    v21 = [FSPathURLResource secureResourceWithURL:v20 readonly:v19];
  }

  else
  {
    v21 = [FSBlockDeviceResource proxyResourceForBSDName:nameCopy isWritable:v19 ^ 1];
  }

  v22 = [FSKitDiskArbHelper waitForPreviousTasksToComplete:v21 client:v18];
  v23 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v22;

  v24 = *(*&buf[8] + 40);
  if (v24)
  {
    code = [v24 code];
  }

  else
  {
    v84 = 0;
    v85 = &v84;
    v86 = 0x3032000000;
    v87 = __Block_byref_object_copy__5;
    v88 = __Block_byref_object_dispose__5;
    v89 = 0;
    getFileProviderID = [self getFileProviderID];
    v56 = [MEMORY[0x277D23DA8] newClientForProvider:?];
    v26 = dispatch_group_create();
    dispatch_group_enter(v26);
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke;
    v80[3] = &unk_278FEE060;
    v82 = buf;
    v83 = &v84;
    v27 = v26;
    v81 = v27;
    v28 = *&token->var0[4];
    *v90 = *token->var0;
    *&v90[16] = v28;
    [v18 loadResource:v21 shortName:volumeCopy options:v59 auditToken:v90 replyHandler:v80];
    v29 = dispatch_time(0, 20000000000);
    if (dispatch_group_wait(v27, v29))
    {
      v30 = fs_errorForPOSIXError(60);
      v31 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v30;

      v33 = fskit_std_log(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        +[FSKitDiskArbHelper DAMountFSKitVolume:deviceName:mountPoint:volumeName:auditToken:mountOptions:];
      }
    }

    v34 = *(*&buf[8] + 40);
    if (v34)
    {
      code = [v34 code];
    }

    else
    {
      v76 = 0;
      v77 = &v76;
      v78 = 0x2020000000;
      v79 = 0;
      v35 = v85[5];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_24;
      v62[3] = &unk_278FEE0B0;
      v63 = optionsCopy;
      v54 = v18;
      v64 = v54;
      v36 = volumeCopy;
      v37 = *&token->var0[4];
      v73 = *token->var0;
      v74 = v37;
      v65 = v36;
      v71 = buf;
      v38 = nameCopy;
      v66 = v38;
      v67 = v56;
      v68 = getFileProviderID;
      v69 = 0;
      v75 = 4096;
      v70 = pointCopy;
      v72 = &v76;
      [v35 enumerateObjectsUsingBlock:v62];
      if (!v77[3])
      {
        v53 = v38;
        v39 = objc_opt_new();
        v40 = dispatch_group_create();
        dispatch_group_enter(v40);
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_32;
        v60[3] = &unk_278FECF08;
        v61 = v40;
        v41 = *token->var0;
        v42 = *&token->var0[4];
        v43 = v61;
        *v90 = v41;
        *&v90[16] = v42;
        [v54 unloadResource:v21 shortName:v36 options:v39 auditToken:v90 replyHandler:v60];
        v44 = dispatch_time(0, 20000000000);
        if (dispatch_group_wait(v43, v44))
        {
          v45 = fs_errorForPOSIXError(60);
          v46 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v45;

          v48 = fskit_std_log(v47);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            getResourceID = [v21 getResourceID];
            v52 = *(*&buf[8] + 40);
            *v90 = 136315906;
            *&v90[4] = "+[FSKitDiskArbHelper DAMountFSKitVolume:deviceName:mountPoint:volumeName:auditToken:mountOptions:]";
            *&v90[12] = 2112;
            *&v90[14] = v53;
            *&v90[22] = 2112;
            *&v90[24] = getResourceID;
            v91 = 2112;
            v92 = v52;
            _os_log_error_impl(&dword_24A929000, v48, OS_LOG_TYPE_ERROR, "%s: %@ failed to unloadResource (%@) error (%@)", v90, 0x2Au);
          }
        }
      }

      v49 = *(*&buf[8] + 40);
      if (v49)
      {
        code = [v49 code];
      }

      else
      {
        code = 0;
      }

      _Block_object_dispose(&v76, 8);
    }

    _Block_object_dispose(&v84, 8);
  }

  _Block_object_dispose(buf, 8);
  return code;
}

void __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (v7)
  {
    v9 = fskit_std_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_24(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v76 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = objc_opt_new();
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = [v8 length];
    if (v8)
    {
      v9 = [FSTaskOption option:@"o" value:*(a1 + 32)];
      [v7 addOption:v9];
    }
  }

  v10 = fskit_std_log(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_24_cold_1(v6);
  }

  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v12 = *(a1 + 40);
  v13 = [v6 volumeID];
  v15 = a1 + 96;
  v14 = *(a1 + 96);
  v16 = *(a1 + 48);
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_29;
  v69[3] = &unk_278FEE088;
  v72 = v14;
  v17 = v6;
  v70 = v17;
  v18 = v11;
  v71 = v18;
  v19 = *(a1 + 128);
  *buf = *(a1 + 112);
  *&buf[16] = v19;
  [v12 activateVolume:v13 shortName:v16 options:v7 auditToken:buf replyHandler:v69];

  v20 = dispatch_time(0, 20000000000);
  v21 = dispatch_group_wait(v18, v20);
  if (v21)
  {
    v22 = fs_errorForPOSIXError(60);
    v23 = *(*v15 + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;
  }

  if (*(*(*v15 + 8) + 40))
  {
    v25 = fskit_std_log(v21);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_24_cold_2();
    }

    *a4 = 1;
  }

  else
  {
    v64 = v7;
    v26 = a4;
    v27 = [v17 volumeID];
    v28 = [v27 description];

    v29 = *(a1 + 64);
    v30 = *(a1 + 48);
    v31 = [v17 volumeName];
    v32 = [v31 string];
    v33 = *(a1 + 72);
    v34 = *(a1 + 80);
    v35 = *(a1 + 88);
    v36 = *(a1 + 144);
    v37 = *(a1 + 32);
    v38 = *(a1 + 128);
    *buf = *(a1 + 112);
    *&buf[16] = v38;
    v65 = v28;
    v39 = [v29 mountVolume:v28 fileSystem:v30 displayName:v32 provider:v33 domainError:v34 on:v35 how:v36 options:v37 auditToken:buf];
    v40 = *(*(a1 + 96) + 8);
    v41 = *(v40 + 40);
    *(v40 + 40) = v39;

    if (*(*(*(a1 + 96) + 8) + 40))
    {
      v63 = v26;
      v43 = fskit_std_log(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_24_cold_3();
      }

      dispatch_group_enter(v18);
      v44 = *(a1 + 40);
      v45 = [v17 volumeID];
      v46 = *(a1 + 48);
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_30;
      v66[3] = &unk_278FECEE0;
      v47 = v17;
      v67 = v47;
      v48 = v18;
      v68 = v48;
      v49 = *(a1 + 128);
      *buf = *(a1 + 112);
      *&buf[16] = v49;
      [v44 deactivateVolume:v45 shortName:v46 numericOptions:2 auditToken:buf replyHandler:v66];

      v50 = dispatch_time(0, 20000000000);
      v51 = dispatch_group_wait(v48, v50);
      v52 = v26;
      v7 = v64;
      if (v51)
      {
        v53 = fs_errorForPOSIXError(60);
        v54 = *(*v15 + 8);
        v55 = *(v54 + 40);
        *(v54 + 40) = v53;

        v57 = fskit_std_log(v56);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v60 = *(a1 + 56);
          v61 = [v47 volumeID];
          v62 = *(*(*(a1 + 96) + 8) + 40);
          *buf = 136315906;
          *&buf[4] = "+[FSKitDiskArbHelper DAMountFSKitVolume:deviceName:mountPoint:volumeName:auditToken:mountOptions:]_block_invoke";
          *&buf[12] = 2112;
          *&buf[14] = v60;
          *&buf[22] = 2112;
          *&buf[24] = v61;
          v74 = 2112;
          v75 = v62;
          _os_log_error_impl(&dword_24A929000, v57, OS_LOG_TYPE_ERROR, "%s: %@ failed to deactivateVolume (%@) error (%@)", buf, 0x2Au);

          v52 = v63;
        }
      }

      *v52 = 1;

      v58 = v67;
      v59 = v65;
    }

    else
    {
      ++*(*(*(a1 + 104) + 8) + 24);
      v58 = fskit_std_log(v42);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "+[FSKitDiskArbHelper DAMountFSKitVolume:deviceName:mountPoint:volumeName:auditToken:mountOptions:]_block_invoke";
        *&buf[12] = 2112;
        v59 = v65;
        *&buf[14] = v65;
        _os_log_impl(&dword_24A929000, v58, OS_LOG_TYPE_INFO, "%s: Mounted %@ successfully.", buf, 0x16u);
      }

      else
      {
        v59 = v65;
      }

      v7 = v64;
    }
  }
}

void __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_29(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v6 = fskit_std_log(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v7)
    {
      __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_cold_1();
    }
  }

  else if (v7)
  {
    __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_29_cold_2(a1);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_cold_1();
    }
  }

  else if (v5)
  {
    __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_30_cold_2(a1);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_32(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = fskit_std_log(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_cold_1();
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

+ (int)DAMountUserFSVolume:(id)volume deviceName:(id)name mountPoint:(id)point volumeName:(id)volumeName mountOptions:(id)options
{
  volumeCopy = volume;
  nameCopy = name;
  pointCopy = point;
  volumeNameCopy = volumeName;
  optionsCopy = options;
  v17 = +[FSAuditToken token];
  v18 = v17;
  if (v17)
  {
    objc_msgSend_audit_token(v17);
  }

  else
  {
    memset(v21, 0, sizeof(v21));
  }

  v19 = [self DAMountUserFSVolume:volumeCopy deviceName:nameCopy mountPoint:pointCopy volumeName:volumeNameCopy auditToken:v21 mountOptions:optionsCopy];

  return v19;
}

+ (int)DAMountUserFSVolume:(id)volume deviceName:(id)name mountPoint:(id)point volumeName:(id)volumeName auditToken:(id *)token mountOptions:(id)options
{
  v76 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  nameCopy = name;
  pointCopy = point;
  volumeNameCopy = volumeName;
  optionsCopy = options;
  if (![volumeCopy hasSuffix:@"_fskit"])
  {
    v57 = objc_autoreleasePoolPush();
    v22 = +[stolenUSBLocalStorageClient newManager];
    v66 = [MEMORY[0x277D23DA8] newClientForProvider:@"com.apple.filesystems.UserFS.FileProvider"];
    v71 = 0;
    v60 = v22;
    self = [v22 loadVolumes:nameCopy ofType:volumeCopy withError:&v71];
    v23 = v71;
    selfCopy = self;
    if (v23)
    {
      v24 = v23;
      v25 = fskit_std_log(v23);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        +[FSKitDiskArbHelper DAMountUserFSVolume:deviceName:mountPoint:volumeName:auditToken:mountOptions:];
      }

      v26 = v57;
    }

    else
    {
      if (!self)
      {
        v26 = v57;
        goto LABEL_8;
      }

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      obj = self;
      v65 = [obj countByEnumeratingWithState:&v67 objects:v75 count:16];
      if (v65)
      {
        v63 = pointCopy;
        v64 = optionsCopy;
        v62 = volumeCopy;
        v55 = nameCopy;
        v28 = 0;
        v24 = 0;
        v61 = *v68;
        v59 = *MEMORY[0x277CCA5B8];
        while (2)
        {
          for (i = 0; i != v65; ++i)
          {
            v30 = v24;
            v31 = v28;
            if (*v68 != v61)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v67 + 1) + 8 * i);

            v32 = [v28 objectForKey:@"UUID"];
            v33 = [v28 objectForKey:@"name"];
            if (volumeNameCopy)
            {
              v34 = [volumeNameCopy isEqual:v33];
              if ((v34 & 1) == 0)
              {
                v35 = fskit_std_log(v34);
                if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412802;
                  *&buf[4] = v55;
                  *&buf[12] = 2112;
                  *&buf[14] = volumeNameCopy;
                  *&buf[22] = 2112;
                  *&buf[24] = v33;
                  _os_log_impl(&dword_24A929000, v35, OS_LOG_TYPE_INFO, "%@: got 2 different names from probe and userfs: p->%@  u->%@", buf, 0x20u);
                }

                if ([v33 isEqual:@"Untitled"])
                {
                  v36 = volumeNameCopy;

                  v33 = v36;
                }
              }
            }

            v37 = [v28 objectForKeyedSubscript:@"how"];
            intValue = [v37 intValue];

            if ([v64 containsString:@"rdonly"])
            {
              v39 = intValue | 0x800;
            }

            else
            {
              v39 = intValue;
            }

            v40 = [v28 objectForKeyedSubscript:@"errorForDomain"];

            if (v40)
            {
              v42 = [v28 objectForKeyedSubscript:@"errorForDomain"];
              integerValue = [v42 integerValue];

              if (integerValue != -1000)
              {
                v54 = fskit_std_log(v44);
                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134217984;
                  *&buf[4] = integerValue;
                  _os_log_error_impl(&dword_24A929000, v54, OS_LOG_TYPE_ERROR, "unsupported error code for domain: %ld", buf, 0xCu);
                }

                v24 = [MEMORY[0x277CCA9B8] errorWithDomain:v59 code:22 userInfo:0];

                v53 = obj;
                obj = v28;
                goto LABEL_47;
              }

              v41 = [MEMORY[0x277CCA9B8] errorWithDomain:v59 code:80 userInfo:0];
              v45 = v41;
            }

            else
            {
              v45 = 0;
            }

            v46 = fskit_std_log(v41);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              *buf = 138413058;
              *&buf[4] = v32;
              *&buf[12] = 2112;
              *&buf[14] = v33;
              *&buf[22] = 2112;
              *&buf[24] = v45;
              v73 = 1024;
              v74 = v39;
              _os_log_impl(&dword_24A929000, v46, OS_LOG_TYPE_INFO, "%@ mounting with name %@, error %@, and how 0x%x.", buf, 0x26u);
            }

            v47 = *&token->var0[4];
            *buf = *token->var0;
            *&buf[16] = v47;
            v24 = [v66 mountVolume:v32 fileSystem:v62 displayName:v33 provider:@"com.apple.filesystems.UserFS.FileProvider" domainError:v45 on:v63 how:v39 options:0 auditToken:buf];

            v49 = fskit_std_log(v48);
            v50 = v49;
            if (v24)
            {
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                *&buf[4] = v55;
                *&buf[12] = 2112;
                *&buf[14] = v24;
                _os_log_error_impl(&dword_24A929000, v50, OS_LOG_TYPE_ERROR, "%@ mount failed with %@", buf, 0x16u);
              }

              v51 = [v60 forgetVolume:v32 withFlags:0];
              v50 = v51;
              if (v51)
              {
                v52 = fskit_std_log(v51);
                if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  *&buf[4] = v33;
                  *&buf[12] = 2112;
                  *&buf[14] = v50;
                  _os_log_error_impl(&dword_24A929000, v52, OS_LOG_TYPE_ERROR, "unload for volume %@ failed with %@", buf, 0x16u);
                }
              }
            }

            else if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v32;
              _os_log_impl(&dword_24A929000, v50, OS_LOG_TYPE_INFO, "Mounted %@ successfully.", buf, 0xCu);
            }
          }

          v65 = [obj countByEnumeratingWithState:&v67 objects:v75 count:16];
          if (v65)
          {
            continue;
          }

          break;
        }

        v53 = v28;
LABEL_47:
        nameCopy = v55;
        v26 = v57;

        volumeCopy = v62;
        pointCopy = v63;
        optionsCopy = v64;
      }

      else
      {
        v24 = 0;
        v26 = v57;
      }

      if (!v24)
      {
        LODWORD(self) = 0;
        goto LABEL_8;
      }
    }

    LODWORD(self) = [v24 code];

LABEL_8:
    objc_autoreleasePoolPop(v26);

    goto LABEL_9;
  }

  v19 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"_"];
  v20 = [volumeCopy substringToIndex:{objc_msgSend(volumeCopy, "rangeOfCharacterFromSet:", v19)}];

  v21 = *&token->var0[4];
  *buf = *token->var0;
  *&buf[16] = v21;
  LODWORD(self) = [self DAMountFSKitVolume:v20 deviceName:nameCopy mountPoint:pointCopy volumeName:volumeNameCopy auditToken:buf mountOptions:optionsCopy];
  volumeCopy = v20;
LABEL_9:

  return self;
}

void __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_24A929000, v0, v1, "%s:error:%@", v2, v3, v4, v5, v6);
}

void __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_24_cold_1(void *a1)
{
  v2 = [a1 volumeName];
  v3 = [v2 string];
  v9 = [a1 volumeID];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_24_cold_2()
{
  OUTLINED_FUNCTION_5_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_24_cold_3()
{
  OUTLINED_FUNCTION_5_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_29_cold_2(uint64_t a1)
{
  v1 = [*(a1 + 32) volumeID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_30_cold_2(uint64_t a1)
{
  v1 = [*(a1 + 32) volumeID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end
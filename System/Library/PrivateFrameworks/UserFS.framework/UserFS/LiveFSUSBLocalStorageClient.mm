@interface LiveFSUSBLocalStorageClient
- (id)getConnectionForVolume:(id)volume withError:(id *)error;
- (id)getVolumeName:(id)name withError:(id *)error;
- (id)loadVolumes:(id)volumes ofType:(id)type withError:(id *)error;
- (id)removeAllVirtualDisks;
- (void)loadVolume:(id)volume ofType:(id)type withReply:(id)reply;
@end

@implementation LiveFSUSBLocalStorageClient

- (id)getConnectionForVolume:(id)volume withError:(id *)error
{
  volumeCopy = volume;
  if (error)
  {
    *error = 0;
  }

  v15 = 0;
  v7 = [(LiveFSClient *)self listenerForVolume:volumeCopy error:&v15];
  v8 = v15;
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [LiveFSUSBLocalStorageClient getConnectionForVolume:withError:];
      if (error)
      {
        goto LABEL_6;
      }
    }

    else if (error)
    {
LABEL_6:
      v9 = v8;
      v10 = 0;
      *error = v8;
      goto LABEL_10;
    }

    v10 = 0;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v7];
    interfaceForListeners = [MEMORY[0x277D23D78] interfaceForListeners];
    [v10 setRemoteObjectInterface:interfaceForListeners];

    exportedClientInterface = [MEMORY[0x277D23DC0] exportedClientInterface];
    [v10 setExportedInterface:exportedClientInterface];

    v13 = objc_opt_new();
    [v10 setExportedObject:v13];

    [v10 resume];
  }

LABEL_10:

  return v10;
}

- (id)getVolumeName:(id)name withError:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy_;
  v46 = __Block_byref_object_dispose_;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v41 = 0;
  v5 = dispatch_semaphore_create(0);
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __55__LiveFSUSBLocalStorageClient_getVolumeName_withError___block_invoke;
  v29[3] = &unk_279E0D048;
  v29[4] = &v42;
  v6 = [nameCopy remoteObjectProxyWithErrorHandler:v29];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __55__LiveFSUSBLocalStorageClient_getVolumeName_withError___block_invoke_4;
  v25[3] = &unk_279E0D070;
  v27 = &v42;
  v28 = &v36;
  v7 = v5;
  v26 = v7;
  [v6 getRootFileHandleWithError:v25];
  v8 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [LiveFSUSBLocalStorageClient getVolumeName:withError:];
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
    v10 = v43[5];
    v43[5] = v9;
  }

  if (v43[5])
  {
    v11 = v31[5];
    v31[5] = @"Untitled";

    v12 = v31[5];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = v37[5];
      *buf = 136315394;
      v49 = "[LiveFSUSBLocalStorageClient getVolumeName:withError:]";
      v50 = 2112;
      v51 = v13;
      _os_log_impl(&dword_270A2D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: got rootFH(%@), about to get volume name", buf, 0x16u);
    }

    v14 = v37[5];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __55__LiveFSUSBLocalStorageClient_getVolumeName_withError___block_invoke_13;
    v21[3] = &unk_279E0D098;
    v23 = &v42;
    v24 = &v30;
    v15 = v7;
    v22 = v15;
    [v6 otherAttributeOf:v14 named:@"_S_f_vol_name" requestID:-1 reply:v21];
    v16 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v15, v16))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [LiveFSUSBLocalStorageClient getVolumeName:withError:];
      }

      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
      v18 = v43[5];
      v43[5] = v17;
    }

    if (v43[5])
    {
      v19 = v31[5];
      v31[5] = @"Untitled";
    }

    v12 = v31[5];
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);

  return v12;
}

void __55__LiveFSUSBLocalStorageClient_getVolumeName_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __55__LiveFSUSBLocalStorageClient_getVolumeName_withError___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __55__LiveFSUSBLocalStorageClient_getVolumeName_withError___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (!v6 || v8)
  {
    if (!(v6 | v8))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        __55__LiveFSUSBLocalStorageClient_getVolumeName_withError___block_invoke_4_cold_1();
      }

      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __55__LiveFSUSBLocalStorageClient_getVolumeName_withError___block_invoke_13(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  v6 = v5;
  if (!v3 && v5 && [v5 bytes])
  {
    v7 = [v6 bytes];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;

    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v7];
    v11 = *(a1 + 48);
LABEL_9:
    v14 = *(v11 + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v10;

    goto LABEL_10;
  }

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = @"Untitled";

  if (v3 != 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __55__LiveFSUSBLocalStorageClient_getVolumeName_withError___block_invoke_13_cold_1();
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v3 userInfo:0];
    v11 = *(a1 + 40);
    goto LABEL_9;
  }

LABEL_10:
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)loadVolumes:(id)volumes ofType:(id)type withError:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  volumesCopy = volumes;
  typeCopy = type;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v10 = livefs_std_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSUSBLocalStorageClient loadVolumes:ofType:withError:];
  }

  v11 = *(&self->super.super.isa + *MEMORY[0x277D23DC8]);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__LiveFSUSBLocalStorageClient_loadVolumes_ofType_withError___block_invoke;
  v21[3] = &unk_279E0D048;
  v21[4] = &v28;
  v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v21];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __60__LiveFSUSBLocalStorageClient_loadVolumes_ofType_withError___block_invoke_2;
  v20[3] = &unk_279E0D0C0;
  v20[4] = &v28;
  v20[5] = &v22;
  [v12 addDisk:volumesCopy fileSystemType:typeCopy reply:v20];
  if (error && v29[5])
  {
    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [LiveFSUSBLocalStorageClient loadVolumes:ofType:withError:];
    }

    *error = v29[5];
    v14 = v23[5];
    v23[5] = 0;
  }

  else if (![v23[5] count])
  {
    v15 = livefs_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [LiveFSUSBLocalStorageClient loadVolumes:ofType:withError:];
    }

    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
  }

  v16 = livefs_std_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v19 = v23[5];
    *buf = 136315906;
    v35 = "[LiveFSUSBLocalStorageClient loadVolumes:ofType:withError:]";
    v36 = 2112;
    v37 = volumesCopy;
    v38 = 2112;
    v39 = typeCopy;
    v40 = 2112;
    v41 = v19;
    _os_log_debug_impl(&dword_270A2D000, v16, OS_LOG_TYPE_DEBUG, "%s:finish:%@:%@:%@", buf, 0x2Au);
  }

  v17 = v23[5];
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);

  return v17;
}

void __60__LiveFSUSBLocalStorageClient_loadVolumes_ofType_withError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)loadVolume:(id)volume ofType:(id)type withReply:(id)reply
{
  replyCopy = reply;
  v9 = *(&self->super.super.isa + *MEMORY[0x277D23DC8]);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__LiveFSUSBLocalStorageClient_loadVolume_ofType_withReply___block_invoke;
  v14[3] = &unk_279E0D0E8;
  v15 = replyCopy;
  v10 = replyCopy;
  typeCopy = type;
  volumeCopy = volume;
  v13 = [v9 remoteObjectProxyWithErrorHandler:v14];
  [v13 addDisk:volumeCopy fileSystemType:typeCopy reply:v10];
}

- (id)removeAllVirtualDisks
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v2 = *(&self->super.super.isa + *MEMORY[0x277D23DC8]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__LiveFSUSBLocalStorageClient_removeAllVirtualDisks__block_invoke;
  v12[3] = &unk_279E0D048;
  v12[4] = &v19;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__LiveFSUSBLocalStorageClient_removeAllVirtualDisks__block_invoke_2;
  v11[3] = &unk_279E0D110;
  v11[4] = &v13;
  [v3 listVolumes:v11];
  v4 = v20[5];
  if (!v4)
  {
    v5 = v14[5];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__LiveFSUSBLocalStorageClient_removeAllVirtualDisks__block_invoke_3;
    v8[3] = &unk_279E0D160;
    v9 = v3;
    v10 = &v19;
    [v5 enumerateKeysAndObjectsUsingBlock:v8];

    v4 = v20[5];
  }

  v6 = v4;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v6;
}

void __52__LiveFSUSBLocalStorageClient_removeAllVirtualDisks__block_invoke_3(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    if ([v7 containsString:@"/var/mobile/"])
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __52__LiveFSUSBLocalStorageClient_removeAllVirtualDisks__block_invoke_4;
      v9[3] = &unk_279E0D138;
      v8 = *(a1 + 32);
      v9[4] = *(a1 + 40);
      v9[5] = a4;
      [v8 ejectDisk:v7 usingFlags:1 reply:v9];
    }
  }
}

void __52__LiveFSUSBLocalStorageClient_removeAllVirtualDisks__block_invoke_4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[LiveFSUSBLocalStorageClient removeAllVirtualDisks]_block_invoke_4";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_270A2D000, v5, OS_LOG_TYPE_DEFAULT, "%s: eject got %@", &v6, 0x16u);
  }

  if (v4)
  {
    **(a1 + 40) = 1;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (void)getConnectionForVolume:withError:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __55__LiveFSUSBLocalStorageClient_getVolumeName_withError___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __55__LiveFSUSBLocalStorageClient_getVolumeName_withError___block_invoke_4_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136315138;
  v1 = "[LiveFSUSBLocalStorageClient getVolumeName:withError:]_block_invoke";
  _os_log_fault_impl(&dword_270A2D000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s: no error but also no fh", &v0, 0xCu);
}

- (void)loadVolumes:ofType:withError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&dword_270A2D000, v2, OS_LOG_TYPE_DEBUG, "%s:start:%@:%@", v3, 0x20u);
}

@end
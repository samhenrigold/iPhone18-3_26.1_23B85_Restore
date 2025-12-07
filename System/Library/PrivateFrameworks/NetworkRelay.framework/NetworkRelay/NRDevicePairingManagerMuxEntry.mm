@interface NRDevicePairingManagerMuxEntry
- (void)initWithPairingManager:(void *)manager;
@end

@implementation NRDevicePairingManagerMuxEntry

- (void)initWithPairingManager:(void *)manager
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (manager)
  {
    v22.receiver = manager;
    v22.super_class = NRDevicePairingManagerMuxEntry;
    v5 = objc_msgSendSuper2(&v22, sel_init);
    if (v5)
    {
      manager = v5;
      objc_storeStrong(v5 + 1, a2);
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v7 = manager[2];
      manager[2] = v6;

      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = manager[5];
      manager[5] = v8;

      goto LABEL_4;
    }

    v11 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v12 = v11;
      v13 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

      if (!v13)
      {
        goto LABEL_9;
      }
    }

    v14 = nrCopyLogObj_1710();
    _NRLogWithArgs(v14, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRDevicePairingManagerMuxEntry initWithPairingManager:]"", 39);

LABEL_9:
    v15 = _os_log_pack_size();
    v17 = &v21 - ((MEMORY[0x28223BE20](v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __error();
    v19 = _os_log_pack_fill(v17, v15, *v18, &dword_25B98C000, "%{public}s [super init] failed");
    *v19 = 136446210;
    *(v19 + 4) = "[NRDevicePairingManagerMuxEntry initWithPairingManager:]";
    v20 = nrCopyLogObj_1710();
    _NRLogAbortWithPack(v20, v17);
  }

LABEL_4:

  return manager;
}

@end
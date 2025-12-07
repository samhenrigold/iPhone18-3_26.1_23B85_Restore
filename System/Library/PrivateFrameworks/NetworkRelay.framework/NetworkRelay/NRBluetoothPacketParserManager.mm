@interface NRBluetoothPacketParserManager
- (NRBluetoothPacketParserManager)init;
@end

@implementation NRBluetoothPacketParserManager

- (NRBluetoothPacketParserManager)init
{
  v19 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = NRBluetoothPacketParserManager;
  v2 = [(NRBluetoothPacketParserManager *)&v18 init];
  if (!v2)
  {
    v7 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v8 = v7;
      v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v10 = nrCopyLogObj_560();
    _NRLogWithArgs(v10, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRBluetoothPacketParserManager init]"", 244);

LABEL_7:
    v11 = _os_log_pack_size();
    v13 = &v17 - ((MEMORY[0x28223BE20](v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = __error();
    v15 = _os_log_pack_fill(v13, v11, *v14, &dword_25B98C000, "%{public}s [super init] failed");
    *v15 = 136446210;
    *(v15 + 4) = "[NRBluetoothPacketParserManager init]";
    v16 = nrCopyLogObj_560();
    _NRLogAbortWithPack(v16, v13);
  }

  v3 = v2;
  v2->_lock._os_unfair_lock_opaque = 0;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  parserDictionary = v3->_parserDictionary;
  v3->_parserDictionary = v4;

  return v3;
}

uint64_t __51__NRBluetoothPacketParserManager_copySharedManager__block_invoke()
{
  v0 = objc_alloc_init(NRBluetoothPacketParserManager);
  v1 = copySharedManager_manager;
  copySharedManager_manager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end
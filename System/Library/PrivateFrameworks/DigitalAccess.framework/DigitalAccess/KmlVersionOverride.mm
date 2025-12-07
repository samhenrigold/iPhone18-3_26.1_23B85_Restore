@interface KmlVersionOverride
+ (id)sharedVersionsOverrides;
- (KmlVersionOverride)init;
@end

@implementation KmlVersionOverride

+ (id)sharedVersionsOverrides
{
  if (sharedVersionsOverrides_onceToken != -1)
  {
    +[KmlVersionOverride sharedVersionsOverrides];
  }

  v3 = sharedVersionsOverrides__versionOverride;

  return v3;
}

uint64_t __45__KmlVersionOverride_sharedVersionsOverrides__block_invoke()
{
  sharedVersionsOverrides__versionOverride = objc_alloc_init(KmlVersionOverride);

  return MEMORY[0x2821F96F8]();
}

- (KmlVersionOverride)init
{
  v19 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = KmlVersionOverride;
  v2 = [(KmlVersionOverride *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_kmlOverrideVersion = 768;
    v4 = objc_opt_new();
    kmlVersionOverride = [v4 kmlVersionOverride];
    v6 = [kmlVersionOverride isEqualToString:@"SharingInChainTest"];
    if (v6)
    {
      v7 = KmlLogger(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v14 = "[KmlVersionOverride init]";
        v15 = 1024;
        v16 = 51;
        v17 = 2112;
        v18 = kmlVersionOverride;
        _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_DEBUG, "%s : %i : KmlVersionOverride = %@", buf, 0x1Cu);
      }

      v3->_kmlOverrideVersion = 256;
    }

    v3->_keyRoleToShare = -1;
    keyRoleToShareOverride = [v4 keyRoleToShareOverride];
    v9 = keyRoleToShareOverride;
    if (keyRoleToShareOverride)
    {
      v10 = KmlLogger(keyRoleToShareOverride);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v14 = "[KmlVersionOverride init]";
        v15 = 1024;
        v16 = 58;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_DEBUG, "%s : %i : keyRoleToShareOverride: %@", buf, 0x1Cu);
      }

      v3->_keyRoleToShare = [v9 unsignedShortValue];
    }
  }

  return v3;
}

@end
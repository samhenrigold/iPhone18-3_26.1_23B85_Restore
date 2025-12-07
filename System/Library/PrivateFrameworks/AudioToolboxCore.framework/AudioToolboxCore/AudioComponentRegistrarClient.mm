@interface AudioComponentRegistrarClient
- (void)registrationsChanged:(id)changed includesExtensions:(BOOL)extensions fsHash:(id)hash;
@end

@implementation AudioComponentRegistrarClient

- (void)registrationsChanged:(id)changed includesExtensions:(BOOL)extensions fsHash:(id)hash
{
  v12 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  hashCopy = hash;
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v9 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 136315394;
    *&v11[4] = "AudioComponentPluginMgr.mm";
    *&v11[12] = 1024;
    *&v11[14] = 114;
    _os_log_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d registrationsChanged", v11, 0x12u);
  }

  GlobalComponentPluginMgr(v11);
  AudioComponentMgr_RegistrarService::mergeServerRegistrations(*&v11[8], changedCopy, !extensions, hashCopy, 0);
  if (*v11)
  {
    std::recursive_mutex::unlock(*v11);
  }
}

@end
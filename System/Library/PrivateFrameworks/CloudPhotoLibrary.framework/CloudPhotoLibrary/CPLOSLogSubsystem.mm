@interface CPLOSLogSubsystem
@end

@implementation CPLOSLogSubsystem

void ___CPLOSLogSubsystem_block_invoke()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = os_log_create("com.apple.photos.cpl", "cpl");
  v1 = _CPLGenericLog;
  _CPLGenericLog = v0;

  v2 = MGCopyAnswer();
  v3 = MGCopyAnswer();
  v4 = MGCopyAnswer();
  v5 = _CPLGenericLog;
  if (os_log_type_enabled(_CPLGenericLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138413058;
    v7 = @"CloudPhotoLibrary-812.40.117";
    v8 = 2112;
    v9 = v2;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Running %@ on %@ (%@ %@)", &v6, 0x2Au);
  }
}

@end
@interface TI
@end

@implementation TI

void __TI_USER_DIRECTORY_block_invoke()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCPSharedResourcesDirectorySymbolLoc_ptr;
  v9 = getCPSharedResourcesDirectorySymbolLoc_ptr;
  if (!getCPSharedResourcesDirectorySymbolLoc_ptr)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getCPSharedResourcesDirectorySymbolLoc_block_invoke;
    v5[3] = &unk_1E6F4D960;
    v5[4] = &v6;
    __getCPSharedResourcesDirectorySymbolLoc_block_invoke(v5);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v1 = v0();
    v2 = [v1 stringByAppendingPathComponent:@"/Library"];

    TI_USER_DIRECTORY_default_user_directory = v2;
  }

  else
  {
    v3 = dlerror();
    v4 = abort_report_np("%s", v3);
    __getCPSharedResourcesDirectorySymbolLoc_block_invoke(v4);
  }
}

@end
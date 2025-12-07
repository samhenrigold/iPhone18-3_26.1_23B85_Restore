@interface NSURL(QLTExtensions)
- (BOOL)qlt_getDeviceIdentifier:()QLTExtensions;
- (BOOL)qlt_getVolumeUUID:()QLTExtensions;
- (uint64_t)qlt_getDocumentIdentifier:()QLTExtensions;
@end

@implementation NSURL(QLTExtensions)

- (uint64_t)qlt_getDocumentIdentifier:()QLTExtensions
{
  v12 = 0;
  v5 = *MEMORY[0x277CBE7C8];
  v11 = 0;
  v6 = [self getResourceValue:&v12 forKey:v5 error:&v11];
  v7 = v12;
  v8 = v11;
  if (v6)
  {
    if (a3)
    {
      *a3 = [v7 unsignedIntegerValue];
    }
  }

  else
  {
    v9 = _log_2();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(NSURL(QLTExtensions) *)v8 qlt_getDocumentIdentifier:self, v9];
    }
  }

  return v6;
}

- (BOOL)qlt_getDeviceIdentifier:()QLTExtensions
{
  memset(&v6, 0, sizeof(v6));
  v4 = stat([self fileSystemRepresentation], &v6);
  if (a3 && !v4)
  {
    *a3 = v6.st_dev;
  }

  return v4 == 0;
}

- (BOOL)qlt_getVolumeUUID:()QLTExtensions
{
  v15 = *MEMORY[0x277D85DE8];
  memset(&v14, 0, 512);
  if (statfs([self fileSystemRepresentation], &v14))
  {
    v5 = _log_2();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(NSURL(QLTExtensions) *)self qlt_getVolumeUUID:v5];
    }

    return 0;
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v11 = xmmword_2616305C0;
    v12 = 0;
    v7 = getattrlist(v14.f_mntonname, &v11, v13, 0x14uLL, 0);
    v6 = v7 == 0;
    if (v7)
    {
      v8 = v7;
      v9 = _log_2();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(NSURL(QLTExtensions) *)v8 qlt_getVolumeUUID:v9];
      }
    }

    else
    {
      *a3 = *&v13[4];
    }
  }

  return v6;
}

- (void)qlt_getDocumentIdentifier:()QLTExtensions .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_2615D3000, log, OS_LOG_TYPE_ERROR, "Got error %@ trying to find docid for %@", &v3, 0x16u);
}

- (void)qlt_getVolumeUUID:()QLTExtensions .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2615D3000, a2, OS_LOG_TYPE_ERROR, "statfs on %@ failed", &v2, 0xCu);
}

- (void)qlt_getVolumeUUID:()QLTExtensions .cold.2(int a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *__error();
  v5[0] = 67109376;
  v5[1] = a1;
  v6 = 1024;
  v7 = v4;
  _os_log_error_impl(&dword_2615D3000, a2, OS_LOG_TYPE_ERROR, "getattrlist returned %d %{errno}d", v5, 0xEu);
}

@end
@interface NSMutableURLRequest(iTunes)
- (void)fam_addiTunesHeadersWithAccount:()iTunes;
@end

@implementation NSMutableURLRequest(iTunes)

- (void)fam_addiTunesHeadersWithAccount:()iTunes
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    ams_DSID = [v4 ams_DSID];
    v7 = ams_DSID;
    if (ams_DSID)
    {
      stringValue = [ams_DSID stringValue];
      [self setValue:stringValue forHTTPHeaderField:@"X-iTunes-DSID"];
    }

    ams_cookies = [v5 ams_cookies];
    v10 = [MEMORY[0x1E696AC58] requestHeaderFieldsWithCookies:ams_cookies];
    if (v10)
    {
      v19 = 0;
      v11 = [MEMORY[0x1E696AE40] dataWithPropertyList:v10 format:100 options:0 error:&v19];
      v12 = v19;
      v13 = v12;
      if (v11)
      {
        v14 = [v11 base64EncodedStringWithOptions:0];
        if (v14)
        {
          [self setValue:v14 forHTTPHeaderField:@"X-iTunes-LoggedIn-Data"];
        }
      }

      else
      {
        v14 = _FALogSystem(v12);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v21 = v13;
          v22 = 2112;
          v23 = v10;
          _os_log_impl(&dword_1B70B0000, v14, OS_LOG_TYPE_DEFAULT, "Couldn't serialize iTunes cookies with error: %@, cookies: %@", buf, 0x16u);
        }
      }
    }

    username = [v5 username];
    if (username)
    {
      [self setValue:username forHTTPHeaderField:@"X-iTunes-AppleId"];
    }

    v16 = MEMORY[0x1E698CBB8];
    currentProcess = [MEMORY[0x1E698CAC8] currentProcess];
    v18 = [v16 userAgentForProcessInfo:currentProcess];
    [self setValue:v18 forHTTPHeaderField:@"X-iTunes-User-Agent"];
  }
}

@end
@interface ShowUserNotice
@end

@implementation ShowUserNotice

void ___ShowUserNotice_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  error = 0;
  v2 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 2uLL, &error, *(a1 + 32));
  if (v2)
  {
    v3 = v2;
    v13 = 0;
    if (CFUserNotificationReceiveResponse(v2, 0.0, &v13))
    {
      v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        *buf = 136315650;
        v16 = "_ShowUserNotice_block_invoke";
        v17 = 2112;
        v18 = v5;
        v19 = 1024;
        v20 = error;
        v6 = "%s: Failed to recieve notification response for error presentation alert for app with bundle ID %@, error code %d";
        v7 = v4;
        v8 = 28;
LABEL_5:
        _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }

    else
    {
      if (v13 != 2)
      {
        if (v13 == 1)
        {
          v11 = *(a1 + 56);
          if (!v11)
          {
            goto LABEL_7;
          }
        }

        else
        {
          if (v13)
          {
            goto LABEL_7;
          }

          v11 = *(a1 + 48);
          if (!v11)
          {
            goto LABEL_7;
          }
        }

        (*(v11 + 16))();
        goto LABEL_7;
      }

      v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        *buf = 136315394;
        v16 = "_ShowUserNotice_block_invoke";
        v17 = 2112;
        v18 = v12;
        v6 = "%s: Received an invalid response (kCFUserNotificationOtherResponse) from the error presentation alert for app with bundleID %@";
        v7 = v4;
        v8 = 22;
        goto LABEL_5;
      }
    }

LABEL_7:
    CFRelease(v3);
    return;
  }

  v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 40);
    *buf = 136315650;
    v16 = "_ShowUserNotice_block_invoke";
    v17 = 2112;
    v18 = v10;
    v19 = 1024;
    v20 = error;
    _os_log_impl(&dword_1DA47A000, v9, OS_LOG_TYPE_DEFAULT, "%s: Failed to create error presentation alert for app with bundle ID %@, error code %d", buf, 0x1Cu);
  }
}

@end
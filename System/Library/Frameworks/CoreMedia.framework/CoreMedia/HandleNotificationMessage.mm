@interface HandleNotificationMessage
@end

@implementation HandleNotificationMessage

void __figXPCConnection_HandleNotificationMessage_block_invoke(void *a1)
{
  v10 = 0;
  cf = 0;
  FigXPCMessageCopyCFDictionary(a1[4], ".payload", &cf);
  v2 = a1[5];
  if (v2)
  {
    v3 = v2(a1[6], a1[7], a1[4], cf, &v10);
    if (v3 == 1)
    {
      goto LABEL_8;
    }

    if (v3 == 4)
    {
      if (cf)
      {
        CFRelease(cf);
      }

      cf = v10;
    }
  }

  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification(DefaultLocalCenter, a1[7], a1[6], cf, 0, v5, v6, v7, v10);
LABEL_8:
  v8 = a1[6];
  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease(a1[4]);
  v9 = a1[7];
  if (v9)
  {
    CFRelease(v9);
  }
}

void __figXPCConnection_HandleNotificationMessage_block_invoke_2(uint64_t a1)
{
  v3 = 0;
  cf = 0;
  FigXPCMessageCopyCFDictionary(*(a1 + 32), ".payload", &cf);
  (*(a1 + 40))(0, *(a1 + 48), *(a1 + 32), cf, &v3);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  FigXPCRelease(*(a1 + 32));
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }
}

@end
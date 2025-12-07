@interface QueryDevice
@end

@implementation QueryDevice

void __queryManagerGetInfo_QueryDevice_block_invoke(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  v3 = a1[6];
  v5 = a1[7];
  v4 = a1[8];
  v6 = a1[9];
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  *buffer = 0u;
  if (v3)
  {
    if (v5)
    {
      if (v4)
      {
        v8 = DerivedStorage;
        if (*(DerivedStorage + 16))
        {
          v14 = -72233;
        }

        else
        {
          v9 = CFGetInt64();
          buffer[0] = 0;
          if (CFStringGetCString(v5, buffer, 128, 0x8000100u))
          {
            v10 = HTTPClientCreate();
            v14 = v10;
            if (v10)
            {
              __queryManagerGetInfo_QueryDevice_block_invoke_cold_2(v10);
            }

            else
            {
              if (CFDictionaryGetValue(*(v8 + 24), v3))
              {
                if (gLogCategory_APBrowserDeviceQueryManagerGetInfo <= 20 && (gLogCategory_APBrowserDeviceQueryManagerGetInfo != -1 || _LogCategory_Initialize()))
                {
                  __queryManagerGetInfo_QueryDevice_block_invoke_cold_3(v3);
                }

                HTTPClientInvalidate();
                CFDictionaryRemoveValue(*(v8 + 24), v3);
              }

              CFDictionarySetValue(*(v8 + 24), v3, 0);
              if (gLogCategory_APBrowserDeviceQueryManagerGetInfo <= 50 && (gLogCategory_APBrowserDeviceQueryManagerGetInfo != -1 || _LogCategory_Initialize()))
              {
                ClientID = HTTPClientGetClientID();
                LogPrintF(&gLogCategory_APBrowserDeviceQueryManagerGetInfo, "OSStatus queryManagerGetInfo_queryDeviceInternal(APBrowserDeviceQueryManagerRef, CFStringRef, CFStringRef, CFNumberRef, CFStringRef, APBrowserDeviceQueryManagerCompletionHandler, void *)", 33554482, "HTTPClient for %@ connecting to %@:%d with CID 0x%08X\n", v3, v5, v9, ClientID);
              }

              HTTPClientSetDispatchQueue();
              APSLogUtilsGetHTTPClientCoreLogCategory();
              HTTPClientSetLogging();
              APSLogUtilsGetAsyncCnxLogCategory();
              HTTPClientSetConnectionLogging();
              HTTPClientSetFlags();
              HTTPClientSetTimeout();
              v12 = HTTPClientSetDestination();
              v14 = v12;
              if (v12)
              {
                __queryManagerGetInfo_QueryDevice_block_invoke_cold_4(v12);
              }

              else
              {
                v13 = HTTPMessageCreate();
                v14 = v13;
                if (v13)
                {
                  __queryManagerGetInfo_QueryDevice_block_invoke_cold_5(v13);
                }

                else
                {
                  HTTPMessageSetCompletionBlock();
                  buffer[0] = 0;
                  snprintf(buffer, 0x80uLL, "/info?%s&%s", "txtAirPlay", "txtRAOP");
                  HTTPHeader_InitRequest();
                  if (v6)
                  {
                    HTTPHeader_SetField(24, "X-Apple-QR", "%@", v6);
                  }

                  CFRetain(v2);
                  CFRetain(0);
                  CFRetain(v5);
                  CFRetain(v4);
                  CFRetain(v3);
                  v14 = HTTPClientSendMessage();
                  if (v14)
                  {
                    APSLogErrorAt();
                    CFDictionaryRemoveValue(*(v8 + 24), v3);
                    CFRelease(v5);
                    CFRelease(v4);
                    CFRelease(v3);
                    CFRelease(0);
                    CFRelease(v2);
                  }
                }
              }
            }
          }

          else
          {
            __queryManagerGetInfo_QueryDevice_block_invoke_cold_6(&v14);
          }
        }
      }

      else
      {
        __queryManagerGetInfo_QueryDevice_block_invoke_cold_7();
      }
    }

    else
    {
      __queryManagerGetInfo_QueryDevice_block_invoke_cold_8();
    }
  }

  else
  {
    __queryManagerGetInfo_QueryDevice_block_invoke_cold_9();
  }

  *(*(a1[4] + 8) + 24) = v14;
}

uint64_t __queryManagerGetInfo_QueryDevice_block_invoke_cold_6(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72232;
  return result;
}

@end
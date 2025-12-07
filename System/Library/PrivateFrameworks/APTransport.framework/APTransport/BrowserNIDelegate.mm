@interface BrowserNIDelegate
- (BrowserNIDelegate)initWithBrowser:(OpaqueAPBrowser *)browser;
- (void)dealloc;
- (void)session:(id)session didInvalidateWithError:(id)error;
- (void)session:(id)session didRemoveNearbyObjects:(id)objects withReason:(int64_t)reason;
- (void)session:(id)session didUpdateNearbyObjects:(id)objects;
@end

@implementation BrowserNIDelegate

- (BrowserNIDelegate)initWithBrowser:(OpaqueAPBrowser *)browser
{
  v6.receiver = self;
  v6.super_class = BrowserNIDelegate;
  v3 = [(BrowserNIDelegate *)&v6 init];
  if (v3)
  {
    v4 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v3->_browserWeak = v4;
    if (!v4)
    {
      [BrowserNIDelegate initWithBrowser:v3];
      return 0;
    }
  }

  return v3;
}

- (void)dealloc
{
  browserWeak = self->_browserWeak;
  if (browserWeak)
  {
    CFRelease(browserWeak);
    self->_browserWeak = 0;
  }

  v4.receiver = self;
  v4.super_class = BrowserNIDelegate;
  [(BrowserNIDelegate *)&v4 dealloc];
}

- (void)session:(id)session didUpdateNearbyObjects:(id)objects
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = *DerivedStorage;
    v8 = **DerivedStorage;
    if (v8 <= 30)
    {
      if (v8 == -1)
      {
        v9 = DerivedStorage;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        v7 = *v9;
      }

      LogPrintF(v7, "-[BrowserNIDelegate session:didUpdateNearbyObjects:]", 33554462, "NearbyObjects updated: %d\n", [objects count]);
    }

LABEL_6:
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = [objects countByEnumeratingWithState:&v31 objects:v44 count:16];
    if (!v10)
    {
      goto LABEL_37;
    }

    v11 = *v32;
    v29 = v38;
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(objects);
        }

        v13 = *(*(&v31 + 1) + 8 * v12);
        v14 = CMBaseObjectGetDerivedStorage();
        key = 0;
        v15 = *v14;
        v16 = **v14;
        if (v16 <= 30)
        {
          if (v16 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_15;
            }

            v15 = *v14;
          }

          LogPrintF(v15, "OSStatus browser_updateProximityForProximityData(APBrowserRef, NINearbyObject *)", 33554462, "NearbyObject received. Token: %@, Object: %@\n", [v13 discoveryToken], v13, v29);
        }

LABEL_15:
        if (APSRotatingKeyMapperIsInitialized())
        {
          [v13 distance];
          v18 = v17;
          v40 = 0;
          v41 = &v40;
          v42 = 0x2020000000;
          v19 = getNINearbyObjectDistanceNotAvailableSymbolLoc_ptr;
          v43 = getNINearbyObjectDistanceNotAvailableSymbolLoc_ptr;
          if (!getNINearbyObjectDistanceNotAvailableSymbolLoc_ptr)
          {
            v36 = MEMORY[0x277D85DD0];
            v37 = 3221225472;
            v38[0] = __getNINearbyObjectDistanceNotAvailableSymbolLoc_block_invoke;
            v38[1] = &unk_278BC7CE0;
            v39 = &v40;
            v20 = NearbyInteractionLibrary_0();
            v21 = dlsym(v20, "NINearbyObjectDistanceNotAvailable");
            *(v39[1] + 24) = v21;
            getNINearbyObjectDistanceNotAvailableSymbolLoc_ptr = *(v39[1] + 24);
            v19 = v41[3];
          }

          _Block_object_dispose(&v40, 8);
          if (!v19)
          {
            [BrowserNIDelegate session:didUpdateNearbyObjects:];
          }

          if (v18 != *v19 && [v13 deviceIdentifier])
          {
            v22 = APSRotatingKeyMapperSetDataForKey();
            if (v22)
            {
              [BrowserNIDelegate session:v22 didUpdateNearbyObjects:?];
            }

            else
            {
              if (!key)
              {
                goto LABEL_31;
              }

              Value = CFDictionaryGetValue(*(v14 + 216), key);
              if (Value)
              {
                v24 = CFDictionaryGetValue(Value, @"LastEventInfo");
                if (v24)
                {
                  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v24);
                  v26 = MutableCopy;
                  if (MutableCopy)
                  {
                    CFDictionarySetValue(MutableCopy, @"proximityData", v13);
                    v27 = browser_setEventInfoForDevice(v5, key, v26);
                    if (v27)
                    {
                      [BrowserNIDelegate session:v27 didUpdateNearbyObjects:?];
                    }

                    CFRelease(v26);
                  }
                }
              }

              else
              {
                [BrowserNIDelegate session:didUpdateNearbyObjects:];
              }
            }
          }
        }

        if (key)
        {
          CFRelease(key);
        }

LABEL_31:
        ++v12;
      }

      while (v10 != v12);
      v28 = [objects countByEnumeratingWithState:&v31 objects:v44 count:16];
      v10 = v28;
      if (!v28)
      {
LABEL_37:
        CFRelease(v5);
        return;
      }
    }
  }
}

- (void)session:(id)session didRemoveNearbyObjects:(id)objects withReason:(int64_t)reason
{
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v7)
  {
    v8 = v7;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v13 = DerivedStorage;
    v14 = **DerivedStorage;
    if (v14 <= 30)
    {
      if (v14 != -1 || (DerivedStorage = OUTLINED_FUNCTION_8_0(*DerivedStorage), DerivedStorage))
      {
        v31 = [objects count];
        OUTLINED_FUNCTION_1();
        DerivedStorage = LogPrintF(v15, v16, v17, v18, v31, reason);
      }
    }

    v19 = OUTLINED_FUNCTION_19_1(DerivedStorage, v10, v11, v12);
    if (v19)
    {
      v23 = v19;
      v24 = MEMORY[0];
      do
      {
        v25 = 0;
        do
        {
          if (MEMORY[0] != v24)
          {
            objc_enumerationMutation(objects);
          }

          v26 = **v13;
          if (v26 <= 30)
          {
            v27 = *(8 * v25);
            if (v26 != -1 || (v19 = OUTLINED_FUNCTION_8_0(*v13), v19))
            {
              discoveryToken = [v27 discoveryToken];
              OUTLINED_FUNCTION_1();
              v19 = LogPrintF(v28, v29, v30, "NearbyObject removed. Token: %@, Object: %@\n", discoveryToken, v27);
            }
          }

          ++v25;
        }

        while (v23 != v25);
        v19 = OUTLINED_FUNCTION_19_1(v19, v20, v21, v22);
        v23 = v19;
      }

      while (v19);
    }

    CFRelease(v8);
  }
}

- (void)session:(id)session didInvalidateWithError:(id)error
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  NSErrorToOSStatus();
  v8 = *DerivedStorage;
  v9 = **DerivedStorage;
  if (v9 <= 50)
  {
    if (v9 == -1)
    {
      if (!OUTLINED_FUNCTION_8(v8))
      {
        goto LABEL_6;
      }

      v8 = *DerivedStorage;
    }

    OUTLINED_FUNCTION_9(v8, "[BrowserNIDelegate session:didInvalidateWithError:]", v7, "NISession invalidated with error %@\n");
  }

LABEL_6:

  CFRelease(v5);
}

- (void)session:didUpdateNearbyObjects:.cold.4()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"float getNINearbyObjectDistanceNotAvailable(void)") description:{@"APSoftLinking_NearbyInteraction.h", 37, @"%s", dlerror()}];
  __break(1u);
}

@end
@interface DYGLCaptureSessionInfo
+ (DYGLCaptureSessionInfo)captureSessionInfoWithCaptureStore:(id)store;
- (BOOL)canPlaybackOnDeviceWithInfo:(id)info limitBackwardsCompatibility:(BOOL)compatibility isInternal:(BOOL)internal;
- (DYGLCaptureSessionInfo)initWithCaptureStore:(id)store;
- (id)contextInfoForContext:(unint64_t)context;
- (void)dealloc;
- (void)deleteContexts:(const void *)contexts;
@end

@implementation DYGLCaptureSessionInfo

+ (DYGLCaptureSessionInfo)captureSessionInfoWithCaptureStore:(id)store
{
  v3 = [[self alloc] initWithCaptureStore:store];

  return v3;
}

- (DYGLCaptureSessionInfo)initWithCaptureStore:(id)store
{
  v6.receiver = self;
  v6.super_class = DYGLCaptureSessionInfo;
  v4 = [(DYCaptureSessionInfo *)&v6 initWithCaptureStore:?];
  if (v4)
  {
    v4->_wasCheckingGLErrors = [objc_msgSend(store metadataValueForKey:{*MEMORY[0x277D0B0C0]), "BOOLValue"}];
    v4->_contextsInfo = [objc_msgSend(store openFileWithFilename:*MEMORY[0x277D0AF38] error:{0), "decodeArchivedObject"}];
    v4->_requiredExtensions = [objc_msgSend(store openFileWithFilename:*MEMORY[0x277D0AF40] error:{0), "decodeSerializedPropertyListWithOptions:error:", 0, 0}];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYGLCaptureSessionInfo;
  [(DYCaptureSessionInfo *)&v3 dealloc];
}

- (id)contextInfoForContext:(unint64_t)context
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  contextsInfo = self->_contextsInfo;
  v5 = [(NSArray *)contextsInfo countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(contextsInfo);
      }

      v9 = *(*(&v11 + 1) + 8 * v8);
      if ([v9 identifier] == context)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSArray *)contextsInfo countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  return v9;
}

- (BOOL)canPlaybackOnDeviceWithInfo:(id)info limitBackwardsCompatibility:(BOOL)compatibility isInternal:(BOOL)internal
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __93__DYGLCaptureSessionInfo_canPlaybackOnDeviceWithInfo_limitBackwardsCompatibility_isInternal___block_invoke;
  v7[3] = &unk_27916E738;
  v7[4] = self;
  v7[5] = info;
  v6.receiver = self;
  v6.super_class = DYGLCaptureSessionInfo;
  return [(DYCaptureSessionInfo *)&v6 canPlaybackOnDeviceWithInfo:info limitBackwardsCompatibility:compatibility isInternal:internal withBlock:v7];
}

uint64_t __93__DYGLCaptureSessionInfo_canPlaybackOnDeviceWithInfo_limitBackwardsCompatibility_isInternal___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) contextsInfo];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = *v9;
LABEL_3:
  v6 = 0;
  while (1)
  {
    if (*v9 != v5)
    {
      objc_enumerationMutation(v2);
    }

    result = [*(a1 + 40) supportsCapabilitiesOfGraphicsAPI:*(*(&v8 + 1) + 8 * v6) allowedClass:objc_opt_class()];
    if (!result)
    {
      return result;
    }

    if (v4 == ++v6)
    {
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        goto LABEL_3;
      }

      return 1;
    }
  }
}

- (void)deleteContexts:(const void *)contexts
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_contextsInfo)
  {
    v5 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    contextsInfo = self->_contextsInfo;
    v7 = [(NSArray *)contextsInfo countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(contextsInfo);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if (*contexts == *(contexts + 1))
          {
            goto LABEL_15;
          }

          v12 = *contexts + 8;
          do
          {
            identifier = [v11 identifier];
            v14 = *(v12 - 8);
            v15 = v12 == *(contexts + 1);
            v12 += 8;
            v15 = v15 || identifier == v14;
          }

          while (!v15);
          if (identifier != v14)
          {
LABEL_15:
            [(NSArray *)v5 addObject:v11];
          }
        }

        v8 = [(NSArray *)contextsInfo countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    if (![(NSArray *)v5 count])
    {

      v5 = 0;
    }

    self->_contextsInfo = v5;
  }
}

@end
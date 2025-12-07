@interface SRDatastore
+ (void)initialize;
- (BOOL)writeSampleBytes:(NSUInteger)bytes length:(SRError *)length timestamp:(double)timestamp error:;
- (void)dealloc;
- (void)initWithSampleFile:(void *)file metadataFile:(void *)metadataFile configurationFile:(uint64_t)configurationFile permission:(uint64_t)permission defaults:(uint64_t)defaults writingStats:;
- (void)syncMappedFiles;
@end

@implementation SRDatastore

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogDatastore = os_log_create("com.apple.SensorKit", "Datastore");
  }
}

- (void)initWithSampleFile:(void *)file metadataFile:(void *)metadataFile configurationFile:(uint64_t)configurationFile permission:(uint64_t)permission defaults:(uint64_t)defaults writingStats:
{
  v43 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  v36.receiver = self;
  v36.super_class = SRDatastore;
  v13 = objc_msgSendSuper2(&v36, sel_init);
  v14 = v13;
  if (v13)
  {
    v13[1] = configurationFile;
    if (permission)
    {
      v15 = *(permission + 16);
      if (defaults)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v15 = 0;
      if (defaults)
      {
LABEL_5:
        v16 = *(defaults + 64);
        if (v16)
        {
          if (permission)
          {
            v17 = *(permission + 64);
          }

          else
          {
            v17 = 0.0;
          }

          v18 = *(defaults + 8);
          if (v18)
          {
            v19 = *(defaults + 16) / v18;
          }

          else
          {
            v19 = NAN;
          }

          v20 = (exp2((v17 - v19) / v17) * v16);
          if (permission)
          {
            v21 = *(permission + 72);
          }

          else
          {
            v21 = 0.0;
          }

          v22 = v21 * v15;
          if (v22 <= v20)
          {
            v15 = v20;
          }

          else
          {
            v15 = v22;
          }
        }
      }
    }

    if (a2)
    {
      lastPathComponent = [-[NSFileHandle pathname](a2) lastPathComponent];
    }

    else
    {
      lastPathComponent = 0;
    }

    [lastPathComponent doubleValue];
    [(SRWritingStats *)defaults updateSegmentCreationTime:v15 rateAdjustedSize:v24];
    if (defaults)
    {
      v25 = SRLogDatastore;
      if (os_log_type_enabled(SRLogDatastore, OS_LOG_TYPE_INFO))
      {
        if (permission)
        {
          v26 = *(permission + 64);
          v27 = *(permission + 16);
        }

        else
        {
          v27 = 0;
          v26 = 0;
        }

        *buf = 138412802;
        defaultsCopy = defaults;
        v39 = 2050;
        v40 = v26;
        v41 = 2048;
        v42 = v27;
        _os_log_impl(&dword_26561F000, v25, OS_LOG_TYPE_INFO, "Writing Stats: %@\nExpected segment lifetime: %{public}f\nDefault segment size: %lu", buf, 0x20u);
      }
    }

    if (permission)
    {
      v28 = *(permission + 44);
    }

    else
    {
      v28 = 0.0;
    }

    v29 = (v28 * v15) / NSPageSize();
    if (permission)
    {
      v30 = *(permission + 32);
    }

    else
    {
      v30 = 0;
    }

    if (v30 < v29)
    {
      v29 = v30;
    }

    if (v29 <= 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = v29;
    }

    v32 = v31 * NSPageSize();
    if (permission)
    {
      v14[2] = *(permission + 32);
      v33 = *(permission + 40);
      v34 = *(permission + 24);
    }

    else
    {
      v34 = 0;
      v14[2] = 0;
      v33 = 0;
    }

    *(v14 + 6) = v33;
    v14[4] = permission;
    v14[5] = [[SRFrameStore alloc] initWithFileHandle:a2 maxSize:v32 permission:v14[1] defaults:permission];
    if (file)
    {
      v14[6] = [[SRFrameStore alloc] initWithFileHandle:file maxSize:v34 permission:v14[1] defaults:permission];
    }

    if (metadataFile)
    {
      v14[7] = [[SRFrameStore alloc] initWithFileHandle:metadataFile maxSize:v34 permission:v14[1] defaults:permission];
    }
  }

  return v14;
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, 0, 40);
    objc_setProperty_atomic(self, v3, 0, 48);
    objc_setProperty_atomic(self, v4, 0, 56);
  }

  self->_defaults = 0;
  v5.receiver = self;
  v5.super_class = SRDatastore;
  [(SRDatastore *)&v5 dealloc];
}

- (BOOL)writeSampleBytes:(NSUInteger)bytes length:(SRError *)length timestamp:(double)timestamp error:
{
  v45 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    return result;
  }

  v9 = result;
  Property = objc_getProperty(result, a2, 40, 1);
  if (!Property)
  {
    v20 = SRLogDatastore;
    if (!os_log_type_enabled(SRLogDatastore, OS_LOG_TYPE_INFO))
    {
      goto LABEL_43;
    }

    LOWORD(v41) = 0;
    v21 = "No disk space available, dropping data";
    v22 = v20;
    v23 = OS_LOG_TYPE_INFO;
    v24 = 2;
LABEL_42:
    _os_log_impl(&dword_26561F000, v22, v23, v21, &v41, v24);
    goto LABEL_43;
  }

  v11 = Property;
  v12 = Property[2];
  if (v12)
  {
    v13 = v12[6] - v12[3] + v12[2];
  }

  else
  {
    v13 = 0;
  }

  if (v13 >= bytes + 20)
  {
    goto LABEL_21;
  }

  v14 = SRLogDatastore;
  if (os_log_type_enabled(SRLogDatastore, OS_LOG_TYPE_INFO))
  {
    if (v12)
    {
      v15 = v12[6] - v12[3] + v12[2];
    }

    else
    {
      v15 = 0;
    }

    v41 = 134349312;
    bytesCopy = v15;
    v43 = 2050;
    v44 = bytes + 20;
    _os_log_impl(&dword_26561F000, v14, OS_LOG_TYPE_INFO, "Not enough free space (%{public}zu) to write %{public}zu. Attempting to expand the mapped region", &v41, 0x16u);
  }

  v16 = *(v9 + 16) * NSPageSize();
  v17 = *(v11 + 24);
  if (v17 && (v18 = *(v17 + 16)) != 0)
  {
    v19 = *(v18 + 4);
  }

  else
  {
    v25 = *(v11 + 16);
    if (v25)
    {
      v19 = *(v25 + 24) - *(v25 + 16) + 56;
    }

    else
    {
      v19 = 56;
    }
  }

  v26 = ((v19 + bytes) * *(v9 + 24));
  v27 = SRLogDatastore;
  if (v16 <= v26)
  {
    if (!os_log_type_enabled(SRLogDatastore, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_43;
    }

    if (v17 && (v31 = *(v17 + 16)) != 0)
    {
      v32 = *(v31 + 4);
    }

    else
    {
      v39 = *(v11 + 16);
      if (v39)
      {
        v32 = *(v39 + 24) - *(v39 + 16) + 56;
      }

      else
      {
        v32 = 56;
      }
    }

    v41 = 134349312;
    bytesCopy = bytes;
    v43 = 2050;
    v44 = v16 - v32;
    v21 = "Trying to write %{public}zd but only have %{public}llul available. Dropping the data.";
    v22 = v27;
    v23 = OS_LOG_TYPE_DEFAULT;
    v24 = 22;
    goto LABEL_42;
  }

  if (os_log_type_enabled(SRLogDatastore, OS_LOG_TYPE_INFO))
  {
    v41 = 134217984;
    bytesCopy = v26;
    _os_log_impl(&dword_26561F000, v27, OS_LOG_TYPE_INFO, "Expanding the mapped region to %llu bytes while a new segment is fetched", &v41, 0xCu);
  }

  if (([(SRFrameStore *)v11 resizeMappedRegionTo:v26]& 1) == 0)
  {
LABEL_43:
    if (length)
    {
      v40 = [SRError errorWithCode:12291];
      result = 0;
      *length = v40;
      return result;
    }

    return 0;
  }

LABEL_21:
  v28 = *(v11 + 24);
  if (v28 && (v29 = *(v28 + 16)) != 0)
  {
    v30 = *(v29 + 4);
  }

  else
  {
    v33 = *(v11 + 16);
    if (v33)
    {
      v30 = *(v33 + 24) - *(v33 + 16) + 56;
    }

    else
    {
      v30 = 56;
    }
  }

  [(SRFrameStore *)v11 writeFrameForBytes:a2 length:bytes timestamp:length error:timestamp];
  v34 = *(v11 + 24);
  if (v34 && (v35 = *(v34 + 16)) != 0)
  {
    v36 = *(v35 + 4);
  }

  else
  {
    v37 = *(v11 + 16);
    if (v37)
    {
      v36 = *(v37 + 24) - *(v37 + 16) + 56;
    }

    else
    {
      v36 = 56;
    }
  }

  if (v36 >= v30 + bytes)
  {
    return 1;
  }

  v38 = SRLogDatastore;
  result = os_log_type_enabled(SRLogDatastore, OS_LOG_TYPE_INFO);
  if (result)
  {
    LOWORD(v41) = 0;
    _os_log_impl(&dword_26561F000, v38, OS_LOG_TYPE_INFO, "Failed to write frames", &v41, 2u);
    return 0;
  }

  return result;
}

- (void)syncMappedFiles
{
  if (result)
  {
    Property = objc_getProperty(result, a2, 40, 1);
    [(SRFrameStore *)Property sync];
    v5 = objc_getProperty(result, v4, 48, 1);
    [(SRFrameStore *)v5 sync];
    v7 = objc_getProperty(result, v6, 56, 1);

    [(SRFrameStore *)v7 sync];
  }
}

@end
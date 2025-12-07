@interface _SFRequestDesktopSiteQuirksSnapshot
- (_SFRequestDesktopSiteQuirksSnapshot)initWithSnapshotData:(id)data error:(id *)error;
- (id)snapshotData;
@end

@implementation _SFRequestDesktopSiteQuirksSnapshot

- (_SFRequestDesktopSiteQuirksSnapshot)initWithSnapshotData:(id)data error:(id *)error
{
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = _SFRequestDesktopSiteQuirksSnapshot;
  v7 = [(_SFRequestDesktopSiteQuirksSnapshot *)&v29 init];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DF20] safari_dictionaryWithPropertyListData:dataCopy options:0];
    v10 = v8;
    if (v8)
    {
      v11 = [v8 safari_dictionaryForKey:@"RequestDesktopSiteQuirks"];
      v13 = v11;
      if (v11)
      {
        v25 = 0;
        v26 = &v25;
        v27 = 0x2020000000;
        v28 = 1;
        v19 = 0;
        v20 = &v19;
        v21 = 0x3032000000;
        v22 = __Block_byref_object_copy__5;
        v23 = __Block_byref_object_dispose__5;
        v24 = 0;
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __66___SFRequestDesktopSiteQuirksSnapshot_initWithSnapshotData_error___block_invoke;
        v18[3] = &unk_1E84944D8;
        v18[4] = &v19;
        v18[5] = &v25;
        [v11 enumerateKeysAndObjectsUsingBlock:v18];
        if (v26[3])
        {
          objc_storeStrong(&v7->_requestDesktopSiteQuirks, v13);
          v14 = v7;
        }

        else
        {
          v14 = 0;
          if (error)
          {
            *error = v20[5];
          }
        }

        _Block_object_dispose(&v19, 8);

        _Block_object_dispose(&v25, 8);
        goto LABEL_16;
      }

      v16 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences(0, v12);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [_SFRequestDesktopSiteQuirksSnapshot initWithSnapshotData:v16 error:?];
        if (error)
        {
          goto LABEL_12;
        }
      }

      else if (error)
      {
LABEL_12:
        [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
        *error = v14 = 0;
LABEL_16:

        goto LABEL_17;
      }

      v14 = 0;
      goto LABEL_16;
    }

    v15 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences(0, v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [_SFRequestDesktopSiteQuirksSnapshot initWithSnapshotData:v15 error:?];
      if (error)
      {
        goto LABEL_9;
      }
    }

    else if (error)
    {
LABEL_9:
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
      *error = v14 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v14 = 0;
    goto LABEL_17;
  }

  v14 = 0;
LABEL_18:

  return v14;
}

- (id)snapshotData
{
  v7[2] = *MEMORY[0x1E69E9840];
  requestDesktopSiteQuirks = self->_requestDesktopSiteQuirks;
  v6[0] = @"RequestDesktopSiteQuirks";
  v6[1] = @"Version";
  v7[0] = requestDesktopSiteQuirks;
  v7[1] = &unk_1F50232F0;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:0];

  return v4;
}

@end
@interface GEOPurgableFile
- (id)_readData;
- (id)contentsAsProtocolBuffer;
@end

@implementation GEOPurgableFile

- (id)contentsAsProtocolBuffer
{
  if (self->_pbType)
  {
    [(GEOCoalescingTimer *)self->_purgeTimer scheduleRun];
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__165367;
    v27 = __Block_byref_object_dispose__165368;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__165367;
    v21 = __Block_byref_object_dispose__165368;
    v22 = 0;
    geo_isolate_sync_data();
    if (!v18[5])
    {
      if (v24[5] || ([(GEOPurgableFile *)self _readData], v3 = objc_claimAutoreleasedReturnValue(), v4 = v24[5], v24[5] = v3, v4, v24[5]))
      {
        v5 = objc_alloc(self->_pbType);
        v6 = [v5 initWithData:v24[5]];
        v7 = v18[5];
        v18[5] = v6;

        if (v18[5])
        {
          v8 = 0;
        }

        else
        {
          v9 = MEMORY[0x1E696AEC0];
          url = self->_url;
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          v13 = [v9 stringWithFormat:@"Unable to parse %@ as %@", url, v12];

          v8 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-13 reason:v13];
        }

        v16 = v8;
        geo_isolate_sync_data();
      }
    }

    v14 = v18[5];
    _Block_object_dispose(&v17, 8);

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __43__GEOPurgableFile_contentsAsProtocolBuffer__block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 56));
  v2 = *(a1[4] + 72);
  v3 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (id)_readData
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__165367;
  v20 = __Block_byref_object_dispose__165368;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__165367;
  v14 = __Block_byref_object_dispose__165368;
  v15 = 0;
  obj[1] = MEMORY[0x1E69E9820];
  obj[2] = 3221225472;
  obj[3] = __28__GEOPurgableFile__readData__block_invoke;
  obj[4] = &unk_1E7070130;
  obj[5] = self;
  obj[6] = &v16;
  obj[7] = &v10;
  geo_isolate_sync_data();
  if (!v17[5])
  {
    v3 = (v11 + 5);
    if (!v11[5])
    {
      url = self->_url;
      obj[0] = 0;
      v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:url options:0 error:obj];
      objc_storeStrong(v3, obj[0]);
      v6 = v17[5];
      v17[5] = v5;
    }
  }

  geo_isolate_sync_data();
  v7 = v17[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

void __28__GEOPurgableFile__readData__block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 56));
  v2 = *(a1[4] + 48);
  v3 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v3, v2);
}

void __28__GEOPurgableFile__readData__block_invoke_2(void *a1)
{
  objc_storeStrong((a1[4] + 56), *(*(a1[5] + 8) + 40));
  v2 = *(*(a1[6] + 8) + 40);
  v3 = (a1[4] + 48);

  objc_storeStrong(v3, v2);
}

@end
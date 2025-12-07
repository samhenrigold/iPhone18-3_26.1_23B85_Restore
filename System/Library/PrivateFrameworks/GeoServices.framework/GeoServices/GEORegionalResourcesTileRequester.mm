@interface GEORegionalResourcesTileRequester
- (void)start;
@end

@implementation GEORegionalResourcesTileRequester

- (void)start
{
  v72 = *MEMORY[0x1E69E9840];
  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x2020000000;
  tileRequest = [(GEOTileRequester *)self tileRequest];
  keyList = [tileRequest keyList];
  v5 = [keyList count];

  v69[3] = v5;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  keyList2 = [(GEOTileRequest *)self->super._tileRequest keyList];
  v7 = [keyList2 countByEnumeratingWithState:&v65 objects:v71 count:16];
  if (v7)
  {
    v8 = *v66;
    obj = keyList2;
    do
    {
      v9 = 0;
      do
      {
        if (*v66 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v65 + 1) + 8 * v9);
        v59 = 0;
        v60 = &v59;
        v61 = 0x3032000000;
        v62 = __Block_byref_object_copy__147037;
        v63 = __Block_byref_object_dispose__147038;
        v64 = 0;
        v52 = MEMORY[0x1E69E9820];
        v53 = 3221225472;
        v54 = __42__GEORegionalResourcesTileRequester_start__block_invoke;
        v55 = &unk_1E7071928;
        selfCopy = self;
        v57 = &v59;
        v58 = v10;
        geo_isolate_sync_data();
        v11 = v60[5];
        if (v11)
        {
          unsignedLongLongValue = [v11 unsignedLongLongValue];
          v13 = GEOGetTileLoadingLog();
          v14 = v13;
          if (unsignedLongLongValue - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
          {
            LOWORD(buf) = 0;
            _os_signpost_emit_with_name_impl(&dword_18660C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, unsignedLongLongValue, "SubmittedToRequester", "Type=RegionalResource", &buf, 2u);
          }
        }

        _Block_object_dispose(&v59, 8);

        ++v9;
      }

      while (v7 != v9);
      keyList2 = obj;
      v7 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
    }

    while (v7);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  tileRequest2 = [(GEOTileRequester *)self tileRequest];
  keyList3 = [tileRequest2 keyList];

  v16 = [keyList3 countByEnumeratingWithState:&v48 objects:v70 count:16];
  if (v16)
  {
    obja = *v49;
    do
    {
      v17 = 0;
      do
      {
        if (*v49 != obja)
        {
          objc_enumerationMutation(keyList3);
        }

        v18 = *(*(&v48 + 1) + 8 * v17);
        buf = *v18;
        v59 = 0;
        v60 = &v59;
        v61 = 0x3032000000;
        v62 = __Block_byref_object_copy__147037;
        v63 = __Block_byref_object_dispose__147038;
        v64 = 0;
        v40 = MEMORY[0x1E69E9820];
        v41 = 3221225472;
        v42 = __42__GEORegionalResourcesTileRequester_start__block_invoke_6;
        v43 = &unk_1E7071928;
        selfCopy2 = self;
        v45 = &v59;
        v46 = v18;
        geo_isolate_sync_data();
        v19 = v60[5];
        if (v19)
        {
          unsignedLongLongValue2 = [v19 unsignedLongLongValue];
        }

        else
        {
          unsignedLongLongValue2 = 0;
        }

        v21 = objc_alloc_init(_GEORegionalResourcesTileLoader);
        v34 = MEMORY[0x1E69E9820];
        v35 = 3221225472;
        v36 = __42__GEORegionalResourcesTileRequester_start__block_invoke_2;
        v37 = &unk_1E70713F8;
        selfCopy3 = self;
        v22 = v21;
        v39 = v22;
        geo_isolate_sync();
        tileRequest3 = [(GEOTileRequester *)self tileRequest];
        manifestConfiguration = [tileRequest3 manifestConfiguration];
        tileRequest4 = [(GEOTileRequester *)self tileRequest];
        v26 = objc_msgSend_auditToken(tileRequest4);
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __42__GEORegionalResourcesTileRequester_start__block_invoke_3;
        v32[3] = &unk_1E70623D0;
        v33 = buf;
        v32[4] = self;
        v32[5] = v69;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __42__GEORegionalResourcesTileRequester_start__block_invoke_5;
        v30[3] = &unk_1E70623F8;
        v31 = buf;
        v30[4] = self;
        v30[5] = v69;
        [(_GEORegionalResourcesTileLoader *)v22 loadResourcesForTileKey:v18 manifestConfiguration:manifestConfiguration auditToken:v26 signpostID:unsignedLongLongValue2 finished:v32 error:v30];

        _Block_object_dispose(&v59, 8);
        ++v17;
      }

      while (v16 != v17);
      v16 = [keyList3 countByEnumeratingWithState:&v48 objects:v70 count:16];
    }

    while (v16);
  }

  _Block_object_dispose(v69, 8);
}

void __42__GEORegionalResourcesTileRequester_start__block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKey:a1[6]];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __42__GEORegionalResourcesTileRequester_start__block_invoke_4(uint64_t a1)
{
  --*(*(*(a1 + 48) + 8) + 24);
  v2 = [*(a1 + 32) resourceManifestManager];
  v3 = [v2 activeTileGroup];
  v4 = [v3 identifier];

  v5 = [*(a1 + 32) delegate];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = [v6 tileSetForKey:a1 + 56];
  v9 = [*(a1 + 32) activeTileSetForKey:a1 + 56];
  [v5 tileRequester:v6 receivedData:v7 tileEdition:v4 tileSetDB:v8 tileSet:v9 etag:0 forKey:*(a1 + 56) userInfo:{*(a1 + 64), 0}];

  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    v10 = [*(a1 + 32) delegate];
    [v10 tileRequesterFinished:*(a1 + 32)];
  }
}

void __42__GEORegionalResourcesTileRequester_start__block_invoke_6(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKey:a1[6]];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __42__GEORegionalResourcesTileRequester_start__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [GEOTileData alloc];
  v5 = [v3 data];

  v6 = [(GEOTileData *)v4 initWithData:v5];
  [*(a1 + 32) _generateEndSignpostEventIfNecessary:{*(a1 + 48), *(a1 + 56)}];
  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__GEORegionalResourcesTileRequester_start__block_invoke_4;
  block[3] = &unk_1E70623A8;
  v9 = *(a1 + 40);
  v12 = v6;
  v13 = v9;
  block[4] = v7;
  v14 = *(a1 + 48);
  v10 = v6;
  dispatch_async(v8, block);
}

@end
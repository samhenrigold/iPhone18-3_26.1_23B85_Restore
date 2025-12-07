@interface AFAddNowPlayingItemInfoToQueue
@end

@implementation AFAddNowPlayingItemInfoToQueue

void ___AFAddNowPlayingItemInfoToQueue_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v74 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 domain];
    isEqualToString = objc_msgSend_isEqualToString_(v10);

    if (isEqualToString && ((v12 = [v9 code], v12 == 35) || v12 == 4))
    {
      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 32);
        *buf = 136315394;
        v67 = "_AFAddNowPlayingItemInfoToQueue_block_invoke";
        v68 = 2048;
        v69 = v14;
        _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s group=%p No NowPlaying info because nothing is playing right now.", buf, 0x16u);
      }
    }

    else
    {
      v15 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v46 = *(a1 + 32);
        *buf = 136315650;
        v67 = "_AFAddNowPlayingItemInfoToQueue_block_invoke";
        v68 = 2048;
        v69 = v46;
        v70 = 2112;
        v71 = v9;
        _os_log_error_impl(&dword_1912FE000, v15, OS_LOG_TYPE_ERROR, "%s group=%p Error getting NowPlaying queue %@", buf, 0x20u);
      }
    }
  }

  v16 = [v7 count];
  v17 = AFSiriLogContextDaemon;
  v47 = v9;
  if (!v16 && os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v18 = *(a1 + 32);
    *buf = 136315394;
    v67 = "_AFAddNowPlayingItemInfoToQueue_block_invoke";
    v68 = 2048;
    v69 = v18;
    _os_log_impl(&dword_1912FE000, v17, OS_LOG_TYPE_INFO, "%s group=%p no contentItems", buf, 0x16u);
    v17 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v19 = *(a1 + 32);
    *buf = 136315906;
    v67 = "_AFAddNowPlayingItemInfoToQueue_block_invoke";
    v68 = 2048;
    v69 = v19;
    v70 = 2048;
    v71 = v16;
    v72 = 2048;
    v73 = a3;
    _os_log_impl(&dword_1912FE000, v17, OS_LOG_TYPE_INFO, "%s group=%p contentItems has %lu items location %ld", buf, 0x2Au);
  }

  if (v16 >= 1)
  {
    v20 = 0;
    v48 = a1;
    v49 = v7;
    v51 = v16;
    do
    {
      v21 = v20 + a3;
      v22 = [v7 objectAtIndex:v20];
      if (v20 + a3)
      {
        v23 = [MEMORY[0x1E69C78D8] _af_mediaItemWithMRContentItemRef:v22];
        if (v21 == 1)
        {
          v42 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v43 = *(a1 + 32);
            v44 = v42;
            v45 = [v23 title];
            *buf = 136315650;
            v67 = "_AFAddNowPlayingItemInfoToQueue_block_invoke";
            v68 = 2048;
            v69 = v43;
            v16 = v51;
            v70 = 2112;
            v71 = v45;
            _os_log_impl(&dword_1912FE000, v44, OS_LOG_TYPE_INFO, "%s group=%p next: %@", buf, 0x20u);
          }

          [*(a1 + 40) setNextListeningToItem:v23];
        }

        else if (v21 == -1)
        {
          v24 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v25 = *(a1 + 32);
            v26 = v24;
            v27 = [v23 title];
            *buf = 136315650;
            v67 = "_AFAddNowPlayingItemInfoToQueue_block_invoke";
            v68 = 2048;
            v69 = v25;
            v16 = v51;
            v70 = 2112;
            v71 = v27;
            _os_log_impl(&dword_1912FE000, v26, OS_LOG_TYPE_INFO, "%s group=%p previous: %@", buf, 0x20u);
          }

          [*(a1 + 40) setPreviousListenedToItem:v23];
        }
      }

      else
      {
        v52 = v20;
        v28 = MRContentItemCopyNowPlayingInfo();
        v29 = *(a1 + 32);
        v23 = v28;
        v30 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v31 = MEMORY[0x1E696AD98];
          v32 = v30;
          v33 = [v31 numberWithUnsignedInteger:{objc_msgSend(v23, "count")}];
          *buf = 136315650;
          v67 = "_LogNowPlayingInfo";
          v68 = 2048;
          v69 = v29;
          v70 = 2112;
          v71 = v33;
          _os_log_impl(&dword_1912FE000, v32, OS_LOG_TYPE_INFO, "%s group=%p got NowPlaying info with %@ keys:", buf, 0x20u);
        }

        if (AFIsInternalInstall_onceToken != -1)
        {
          dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
        }

        if (AFIsInternalInstall_isInternal == 1)
        {
          v50 = v23;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v34 = v23;
          v35 = [v34 countByEnumeratingWithState:&v54 objects:buf count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v55;
            do
            {
              for (i = 0; i != v36; ++i)
              {
                if (*v55 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v54 + 1) + 8 * i);
                v40 = [v34 objectForKey:v39];
                v41 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                {
                  *v58 = 136315906;
                  v59 = "_LogNowPlayingInfo";
                  v60 = 2048;
                  v61 = v29;
                  v62 = 2112;
                  v63 = v39;
                  v64 = 2112;
                  v65 = v40;
                  _os_log_impl(&dword_1912FE000, v41, OS_LOG_TYPE_INFO, "%s %p         %@ -> %@:", v58, 0x2Au);
                }
              }

              v36 = [v34 countByEnumeratingWithState:&v54 objects:buf count:16];
            }

            while (v36);
          }

          a1 = v48;
          v7 = v49;
          v16 = v51;
          v23 = v50;
        }

        [*(a1 + 40) _af_setNowPlayingInfo:v23 mediaType:MRContentItemGetMediaType()];
        v20 = v52;
      }

      ++v20;
    }

    while (v20 != v16);
  }

  dispatch_group_leave(*(a1 + 32));
}

@end
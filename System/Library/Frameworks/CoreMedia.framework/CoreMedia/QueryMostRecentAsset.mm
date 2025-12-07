@interface QueryMostRecentAsset
@end

@implementation QueryMostRecentAsset

void __figMobileAsset_QueryMostRecentAsset_block_invoke(uint64_t a1, uint64_t a2)
{
  v45[16] = *MEMORY[0x1E69E9840];
  if (!a2 || a2 == 2 && *(a1 + 80))
  {
    v3 = [*(a1 + 32) results];
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 72);
      v6 = *(a1 + 80);
      v8 = *(a1 + 40);
      v7 = *(a1 + 48);
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 0x1E696A000;
      if (v5 >= 1)
      {
        if (dword_1EAF1CCC8)
        {
          v12 = *(a1 + 40);
          v35 = *(a1 + 48);
          v38 = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CCC0, 1, &v38, type);
          v14 = v38;
          v15 = type[0];
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
          {
            v16 = v14;
          }

          else
          {
            v16 = v14 & 0xFFFFFFFE;
          }

          if (v16)
          {
            *v42 = 136315650;
            *&v42[4] = "figMobileAsset_HandleSuccessfulQueryResult";
            *&v42[12] = 2114;
            *&v42[14] = v12;
            *&v42[22] = 1024;
            LODWORD(v43) = v5;
            v17 = _os_log_send_and_compose_impl(v16, 0, v45, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v15, "-FigMobileAsset- %s: FigMobileAsset: Asset type %{public}@ has a supported compatibility version of %d", v42, 28);
            LOBYTE(v14) = v38;
          }

          else
          {
            v17 = 0;
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CCC0, 1, 1, v17, v17 != v45, v14);
          v7 = v35;
          v8 = v12;
          v11 = 0x1E696A000uLL;
        }

        v18 = *(v11 + 3608);
        *v42 = MEMORY[0x1E69E9820];
        *&v42[8] = 3221225472;
        *&v42[16] = __figMobileAsset_HandleSuccessfulQueryResult_block_invoke;
        v43 = &__block_descriptor_36_e34_B24__0__MAAsset_8__NSDictionary_16l;
        v44 = v5;
        v4 = [v4 filteredArrayUsingPredicate:{objc_msgSend(v18, "predicateWithBlock:", v42)}];
      }

      if (v6)
      {
        v4 = [v4 filteredArrayUsingPredicate:{objc_msgSend(*(v11 + 3608), "predicateWithBlock:", &__block_literal_global_30)}];
      }

      if (v4)
      {
        v19 = [v4 sortedArrayUsingComparator:&__block_literal_global_34];
        if (v19)
        {
          v20 = [v19 lastObject];
          if (v20)
          {
            v21 = v20;
            if ([v20 state] == 2 || objc_msgSend(v21, "state") == 5)
            {
              figMobileAsset_UpdateLastUpdatedTime(v8);
              figMobileAsset_ExtractPlistFromAssetForCallback(v21, v10, v9);
            }

            else if (!v6)
            {
              if (v8)
              {
                CFRetain(v8);
              }

              if (v7)
              {
                CFRetain(v7);
              }

              if (v10)
              {
                CFRetain(v10);
              }

              if (v9)
              {
                CFRetain(v9);
              }

              if (dword_1EAF1CCC8)
              {
                v26 = v8;
                v27 = v7;
                *type = 0;
                v36 = OS_LOG_TYPE_DEFAULT;
                v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CCC0, 1, type, &v36);
                v29 = *type;
                v30 = v36;
                if (os_log_type_enabled(v28, v36))
                {
                  v31 = v29;
                }

                else
                {
                  v31 = v29 & 0xFFFFFFFE;
                }

                if (v31)
                {
                  v32 = [v21 assetId];
                  v38 = 136315395;
                  v39 = "figMobileAsset_HandleSuccessfulQueryResult";
                  v40 = 2113;
                  v41 = v32;
                  LODWORD(v34) = 22;
                  v33 = _os_log_send_and_compose_impl(v31, 0, v45, 128, &dword_196FA7000, v28, v30, "-FigMobileAsset- %s: FigMobileAsset: Downloading AssetID %{private}@", &v38, v34);
                  LOBYTE(v29) = type[0];
                }

                else
                {
                  v33 = 0;
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CCC0, 1, 1, v33, v33 != v45, v29);
                v7 = v27;
                v8 = v26;
              }

              v45[0] = MEMORY[0x1E69E9820];
              v45[1] = 3221225472;
              v45[2] = __figMobileAsset_HandleSuccessfulQueryResult_block_invoke_31;
              v45[3] = &unk_1E749DB48;
              v45[4] = v21;
              v45[5] = v8;
              v45[6] = v10;
              v45[7] = v9;
              v45[8] = v7;
              [v21 startDownload:v45];
            }
          }
        }
      }
    }
  }

  else if (a2 == 2 && !*(a1 + 80))
  {
    figMobileAsset_DownloadCatalogAndRequery(*(a1 + 40), *(a1 + 76));
  }

  v22 = *(a1 + 40);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(a1 + 48);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(a1 + 56);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(a1 + 64);
  if (v25)
  {
    CFRelease(v25);
  }
}

@end
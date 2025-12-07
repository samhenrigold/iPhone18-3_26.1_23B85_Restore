@interface MSASProtocol
- (BOOL)responseDict:(id)dict containsLimitErrorCode:(id)code outMaxAllowed:(id *)allowed;
- (MSASProtocol)initWithPersonID:(id)d;
- (id)HTTPErrorWithStatusCode:(int64_t)code;
- (id)_albumStateURL;
- (id)_couldNotReauthorizeError;
- (id)_createAlbumURL;
- (id)_getAlbumURL;
- (id)_getChangesURL;
- (id)_reportSpamURL;
- (id)_serverSideConfigURL;
- (id)_setAlbumStateURL;
- (id)_setAssetStateURL;
- (id)_setCommentPositionURL;
- (id)_shareURL;
- (id)_subscribeURL;
- (id)_unshareURL;
- (id)_unsubscribeURL;
- (id)_validateInvitationURL;
- (id)errorFromStandardProcessingOnResponse:(id)response responseObject:(id)object checkServerSideConfigVersion:(BOOL)version error:(id)error body:(id)body;
- (id)shutDownError;
- (id)stopHandlerBlock;
- (id)stoppingError;
- (void)_fetchClientOrgKeyAndPersistLocallyForResponseDict:(id)dict isOwned:(BOOL)owned completionHandler:(id)handler;
- (void)_prepareHeadersForRequest:(id)request;
- (void)_sendOneURLRequest:(id)request checkServerSideConfigVersion:(BOOL)version retryCount:(unint64_t)count completionBlock:(id)block;
- (void)_setClientOrgKeyForRequestBody:(id)body clientOrgKey:(id)key;
- (void)acceptInvitationWithToken:(id)token completionBlock:(id)block;
- (void)addComment:(id)comment toAssetCollection:(id)collection inAlbum:(id)album albumURLString:(id)string completionBlock:(id)block;
- (void)addSharingRelationships:(id)relationships toAlbum:(id)album completionBlock:(id)block;
- (void)albumSummaryAlbum:(id)album albumURLString:(id)string resetSync:(BOOL)sync completionBlock:(id)block;
- (void)createAlbum:(id)album completionBlock:(id)block;
- (void)deleteAlbum:(id)album completionBlock:(id)block;
- (void)deleteAssetCollections:(id)collections inAlbum:(id)album completionBlock:(id)block;
- (void)deleteComment:(id)comment fromAssetCollection:(id)collection inAlbum:(id)album albumURLString:(id)string completionBlock:(id)block;
- (void)getAlbumSyncedStateForAlbum:(id)album assetCollectionStateBlock:(id)block completionBlock:(id)completionBlock;
- (void)getAlbumURLForAlbumWithGUID:(id)d completionBlock:(id)block;
- (void)getAssetCollections:(id)collections inAlbum:(id)album albumURLString:(id)string completionBlock:(id)block;
- (void)getChangesRootCtag:(id)ctag migrationCtag:(id)migrationCtag completionBlock:(id)block;
- (void)getCommentChanges:(id)changes inAlbumWithGUID:(id)d withClientOrgKey:(id)key albumURLString:(id)string completionBlock:(id)block;
- (void)getServerSideConfigCompletionBlock:(id)block;
- (void)getSharingInfoForAlbum:(id)album albumURLString:(id)string completionBlock:(id)block;
- (void)getTokensForAssets:(id)assets inAlbum:(id)album albumURLString:(id)string completionBlock:(id)block;
- (void)getUploadTokens:(id)tokens forAssetCollectionWithGUID:(id)d inAlbumWithGUID:(id)iD albumURLString:(id)string completionBlock:(id)block;
- (void)getVideoURL:(id)l forAssetCollectionWithGUID:(id)d inAlbumWithGUID:(id)iD albumURLString:(id)string withClientOrgKey:(id)key completionBlock:(id)block;
- (void)markAsSpamInvitationForAlbum:(id)album completionBlock:(id)block;
- (void)markAsSpamInvitationForToken:(id)token completionBlock:(id)block;
- (void)putAssetCollections:(id)collections intoAlbum:(id)album albumURLString:(id)string completionBlock:(id)block;
- (void)removeSharingRelationships:(id)relationships fromAlbum:(id)album completionBlock:(id)block;
- (void)sendURLRequest:(id)request method:(id)method bodyObj:(id)obj checkServerSideConfigVersion:(BOOL)version completionBlock:(id)block;
- (void)sendUploadCompleteSuccessfulAssetCollections:(id)collections failedAssetCollections:(id)assetCollections album:(id)album completionBlock:(id)block;
- (void)setAlbumSyncedState:(id)state forAlbum:(id)album albumStateCtag:(id)ctag completionBlock:(id)block;
- (void)setAssetCollectionSyncedState:(id)state forAssetCollection:(id)collection inAlbum:(id)album assetCollectionStateCtag:(id)ctag completionBlock:(id)block;
- (void)setMultipleContributorsEnabled:(BOOL)enabled forAlbum:(id)album completionBlock:(id)block;
- (void)setPublicAccessEnabled:(BOOL)enabled forAlbum:(id)album completionBlock:(id)block;
- (void)shutDownCompletionBlock:(id)block;
- (void)stopCompletionBlock:(id)block;
- (void)subscribeToAlbum:(id)album completionBlock:(id)block;
- (void)unsubscribeFromAlbum:(id)album completionBlock:(id)block;
- (void)updateAlbum:(id)album albumURLString:(id)string completionBlock:(id)block;
- (void)validateInvitationForAlbum:(id)album completionBlock:(id)block;
@end

@implementation MSASProtocol

- (void)_setClientOrgKeyForRequestBody:(id)body clientOrgKey:(id)key
{
  bodyCopy = body;
  keyCopy = key;
  v6 = _os_feature_enabled_impl();
  if (keyCopy && v6)
  {
    [bodyCopy setObject:keyCopy forKey:@"clientOrgKey"];
  }
}

- (void)_fetchClientOrgKeyAndPersistLocallyForResponseDict:(id)dict isOwned:(BOOL)owned completionHandler:(id)handler
{
  ownedCopy = owned;
  v31 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  handlerCopy = handler;
  v9 = [dictCopy objectForKey:@"dbrMetadataInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [dictCopy objectForKey:@"dbrMetadataInfo"];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 objectForKey:@"zoneName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v10 objectForKey:@"zoneName"];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v10 objectForKey:@"recordId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v10 objectForKey:@"recordId"];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v10 objectForKey:@"fieldName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v10 objectForKey:@"fieldName"];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v10 objectForKey:@"ownerCkUserId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v10 objectForKey:@"ownerCkUserId"];
  }

  else
  {
    v18 = 0;
  }

  if (v12 && v14 && v16)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __93__MSASProtocol__fetchClientOrgKeyAndPersistLocallyForResponseDict_isOwned_completionHandler___block_invoke;
    v20[3] = &unk_278E92510;
    v20[4] = self;
    v21 = v12;
    v22 = handlerCopy;
    [MSASCloudKitPlugin fetchClientOrgKeyForRecordID:v14 zoneName:v21 fieldName:v16 ownerUserID:v18 isOwned:ownedCopy completionHandler:v20];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 138544130;
      selfCopy = self;
      v25 = 2114;
      v26 = v12;
      v27 = 2114;
      v28 = v14;
      v29 = 2114;
      v30 = v16;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Missing one of zoneName: %{public}@ recordId: %{public}@ fieldName:%{public}@. Account may not be in DBR.", buf, 0x2Au);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __93__MSASProtocol__fetchClientOrgKeyAndPersistLocallyForResponseDict_isOwned_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = 138543874;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Finished retrieving clientOrgKey for zoneName %{public}@. Account is in DBR. Error: %{public}@", &v9, 0x20u);
  }

  (*(a1[6] + 16))();
}

- (void)getAlbumURLForAlbumWithGUID:(id)d completionBlock:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  blockCopy = block;
  v8 = MEMORY[0x277CBAB50];
  _getAlbumURL = [(MSASProtocol *)self _getAlbumURL];
  v10 = [v8 requestWithURL:_getAlbumURL];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v18 = 2114;
    v19 = dCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Retrieving new album URL for album with GUID %{public}@.", buf, 0x16u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v12 = dictionary;
  if (dCopy)
  {
    [dictionary setObject:dCopy forKey:@"albumguid"];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__MSASProtocol_getAlbumURLForAlbumWithGUID_completionBlock___block_invoke;
  v14[3] = &unk_278E92430;
  v15 = blockCopy;
  v13 = blockCopy;
  [(MSASProtocol *)self sendURLRequest:v10 bodyObj:v12 completionBlock:v14];
}

void __60__MSASProtocol_getAlbumURLForAlbumWithGUID_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  v6 = a4;
  if (v11)
  {
    v7 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = [v9 objectForKey:@"albumlocation"];
    objc_opt_class();
    v7 = 0;
    if (objc_opt_isKindOfClass())
    {
      v7 = [v9 objectForKey:@"albumlocation"];
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getServerSideConfigCompletionBlock:(id)block
{
  v13 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = MEMORY[0x277CBAB50];
  _serverSideConfigURL = [(MSASProtocol *)self _serverSideConfigURL];
  v7 = [v5 requestWithURL:_serverSideConfigURL];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Refreshing server-side configuration.", buf, 0xCu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__MSASProtocol_getServerSideConfigCompletionBlock___block_invoke;
  v9[3] = &unk_278E92430;
  v10 = blockCopy;
  v8 = blockCopy;
  [(MSASProtocol *)self sendURLRequest:v7 method:@"GET" bodyObj:0 checkServerSideConfigVersion:0 completionBlock:v9];
}

void __51__MSASProtocol_getServerSideConfigCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    v7 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v7 = v8;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)setAlbumSyncedState:(id)state forAlbum:(id)album albumStateCtag:(id)ctag completionBlock:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  albumCopy = album;
  ctagCopy = ctag;
  blockCopy = block;
  _setAlbumStateURL = [(MSASProtocol *)self _setAlbumStateURL];
  v15 = [MEMORY[0x277CBAB50] requestWithURL:_setAlbumStateURL];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  gUID = [albumCopy GUID];

  if (gUID)
  {
    gUID2 = [albumCopy GUID];
    [dictionary setObject:gUID2 forKey:@"albumguid"];
  }

  if (ctagCopy)
  {
    [dictionary setObject:ctagCopy forKey:@"albumstatectag"];
  }

  if (stateCopy)
  {
    [dictionary setObject:stateCopy forKey:@"state"];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v24 = 2114;
    v25 = albumCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Setting synced state for album %{public}@", buf, 0x16u);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __76__MSASProtocol_setAlbumSyncedState_forAlbum_albumStateCtag_completionBlock___block_invoke;
  v20[3] = &unk_278E92430;
  v21 = blockCopy;
  v19 = blockCopy;
  [(MSASProtocol *)self sendURLRequest:v15 bodyObj:dictionary completionBlock:v20];
}

void __76__MSASProtocol_setAlbumSyncedState_forAlbum_albumStateCtag_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  v6 = a4;
  if (v11)
  {
    v7 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = [v9 objectForKey:@"albumstatectag"];
    objc_opt_class();
    v7 = 0;
    if (objc_opt_isKindOfClass())
    {
      v7 = [v9 objectForKey:@"albumstatectag"];
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)setAssetCollectionSyncedState:(id)state forAssetCollection:(id)collection inAlbum:(id)album assetCollectionStateCtag:(id)ctag completionBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  collectionCopy = collection;
  albumCopy = album;
  ctagCopy = ctag;
  blockCopy = block;
  _setAssetStateURL = [(MSASProtocol *)self _setAssetStateURL];
  v18 = [MEMORY[0x277CBAB50] requestWithURL:_setAssetStateURL];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  gUID = [albumCopy GUID];

  if (gUID)
  {
    gUID2 = [albumCopy GUID];
    [dictionary setObject:gUID2 forKey:@"albumguid"];
  }

  gUID3 = [collectionCopy GUID];

  if (gUID3)
  {
    gUID4 = [collectionCopy GUID];
    [dictionary setObject:gUID4 forKey:@"assetguid"];
  }

  if (ctagCopy)
  {
    v24 = ctagCopy;
  }

  else
  {
    v24 = &stru_2858BC598;
  }

  [dictionary setObject:v24 forKey:@"assetstatectag"];
  if (stateCopy)
  {
    [dictionary setObject:stateCopy forKey:@"state"];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    selfCopy = self;
    v30 = 2114;
    v31 = collectionCopy;
    v32 = 2114;
    v33 = albumCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Setting synced state for asset collection %{public}@ in album %{public}@", buf, 0x20u);
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __114__MSASProtocol_setAssetCollectionSyncedState_forAssetCollection_inAlbum_assetCollectionStateCtag_completionBlock___block_invoke;
  v26[3] = &unk_278E92430;
  v27 = blockCopy;
  v25 = blockCopy;
  [(MSASProtocol *)self sendURLRequest:v18 bodyObj:dictionary completionBlock:v26];
}

void __114__MSASProtocol_setAssetCollectionSyncedState_forAssetCollection_inAlbum_assetCollectionStateCtag_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a4;
  v6 = a3;
  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) == 0;
  v8 = v10;
  if (v7)
  {
    v8 = 0;
  }

  v9 = [v8 objectForKey:@"assetstatectag"];
  (*(*(a1 + 32) + 16))();
}

- (void)getAlbumSyncedStateForAlbum:(id)album assetCollectionStateBlock:(id)block completionBlock:(id)completionBlock
{
  v25 = *MEMORY[0x277D85DE8];
  albumCopy = album;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  _albumStateURL = [(MSASProtocol *)self _albumStateURL];
  v12 = [MEMORY[0x277CBAB50] requestWithURL:_albumStateURL];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  gUID = [albumCopy GUID];

  if (gUID)
  {
    gUID2 = [albumCopy GUID];
    [dictionary setObject:gUID2 forKey:@"albumguid"];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v23 = 2114;
    v24 = albumCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Getting synced state for album %{public}@.", buf, 0x16u);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __86__MSASProtocol_getAlbumSyncedStateForAlbum_assetCollectionStateBlock_completionBlock___block_invoke;
  v18[3] = &unk_278E924E8;
  v19 = blockCopy;
  v20 = completionBlockCopy;
  v16 = completionBlockCopy;
  v17 = blockCopy;
  [(MSASProtocol *)self sendURLRequest:v12 bodyObj:dictionary completionBlock:v18];
}

void __86__MSASProtocol_getAlbumSyncedStateForAlbum_assetCollectionStateBlock_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_30;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = [v10 objectForKey:@"assetstates"];
  objc_opt_class();
  v12 = 0;
  if (objc_opt_isKindOfClass())
  {
    v12 = [v10 objectForKey:@"assetstates"];
  }

  v23 = v10;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = [v17 objectForKey:@"assetstatectag"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = [v17 objectForKey:@"assetstatectag"];
          }

          else
          {
            v19 = 0;
          }

          v20 = [v17 objectForKey:@"assetguid"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [v17 objectForKey:@"assetguid"];

            if (v19 && v21)
            {
              v20 = [v17 mutableCopy];
              [v20 removeObjectForKey:@"assetstatectag"];
              [v20 removeObjectForKey:@"assetguid"];
              (*(*(a1 + 32) + 16))();
              goto LABEL_22;
            }
          }

          else
          {
            v21 = 0;
LABEL_22:
          }

          continue;
        }
      }

      v14 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  v22 = [v23 objectForKey:@"albumstatectag"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v23 objectForKey:@"albumstatectag"];
  }

  else
  {
    v7 = 0;
  }

  v5 = 0;

  v8 = [v23 mutableCopy];
  [v8 removeObjectForKey:@"assetstates"];
  [v8 removeObjectForKey:@"albumguid"];
  [v8 removeObjectForKey:@"albumstatectag"];

LABEL_30:
  (*(*(a1 + 40) + 16))();
}

- (void)getCommentChanges:(id)changes inAlbumWithGUID:(id)d withClientOrgKey:(id)key albumURLString:(id)string completionBlock:(id)block
{
  v35 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  dCopy = d;
  keyCopy = key;
  stringCopy = string;
  blockCopy = block;
  if (stringCopy)
  {
    [MEMORY[0x277CBEBC0] URLWithString:stringCopy];
  }

  else
  {
    [(MSASProtocol *)self baseURL];
  }
  v17 = ;
  v18 = [(MSASProtocol *)self _getCommentsURLWithBaseURL:v17];

  v19 = [MEMORY[0x277CBAB50] requestWithURL:v18];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v21 = dictionary;
  if (dCopy)
  {
    [dictionary setObject:dCopy forKey:@"albumguid"];
  }

  [(MSASProtocol *)self _setClientOrgKeyForRequestBody:v21 clientOrgKey:keyCopy];
  v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(changesCopy, "count")}];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __98__MSASProtocol_getCommentChanges_inAlbumWithGUID_withClientOrgKey_albumURLString_completionBlock___block_invoke;
  v27[3] = &unk_278E92328;
  v23 = v22;
  v28 = v23;
  [changesCopy enumerateKeysAndObjectsUsingBlock:v27];
  if ([v23 count])
  {
    [v21 setObject:v23 forKey:@"assets"];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    selfCopy = self;
    v31 = 2114;
    v32 = changesCopy;
    v33 = 2114;
    v34 = dCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Retrieving comments for asset collections %{public}@ in album %{public}@", buf, 0x20u);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __98__MSASProtocol_getCommentChanges_inAlbumWithGUID_withClientOrgKey_albumURLString_completionBlock___block_invoke_592;
  v25[3] = &unk_278E924C0;
  v25[4] = self;
  v26 = blockCopy;
  v24 = blockCopy;
  [(MSASProtocol *)self sendURLRequest:v19 bodyObj:v21 completionBlock:v25];
}

void __98__MSASProtocol_getCommentChanges_inAlbumWithGUID_withClientOrgKey_albumURLString_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 intValue];
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  [v8 setObject:v5 forKey:@"assetguid"];

  if ((v6 & 0x80000000) == 0)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v6];
    [v8 setObject:v7 forKey:@"commentposition"];
  }

  [*(a1 + 32) addObject:v8];
}

void __98__MSASProtocol_getCommentChanges_inAlbumWithGUID_withClientOrgKey_albumURLString_completionBlock___block_invoke_592(uint64_t a1, void *a2, void *a3, void *a4)
{
  v69 = *MEMORY[0x277D85DE8];
  v44 = a2;
  v7 = a3;
  v8 = a4;
  v43 = v8;
  if (!v7)
  {
    v9 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v42 = v10;
    v11 = [v42 objectForKey:@"assets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v42 objectForKey:@"assets"];
    }

    v46 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v7;
    v12 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (!v12)
    {
LABEL_59:

      (*(*(a1 + 40) + 16))();
      v7 = 0;
      goto LABEL_60;
    }

    v13 = v12;
    v14 = *v60;
    v50 = a1;
    v45 = *v60;
LABEL_10:
    v15 = 0;
    v47 = v13;
    while (1)
    {
      if (*v60 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v59 + 1) + 8 * v15);
      v17 = [v16 objectForKey:@"assetguid"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_56;
      }

      v18 = [v16 objectForKey:@"assetguid"];

      v51 = v18;
      if (v18)
      {
        break;
      }

LABEL_57:
      if (++v15 == v13)
      {
        v13 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
        if (!v13)
        {
          goto LABEL_59;
        }

        goto LABEL_10;
      }
    }

    v19 = [v16 objectForKey:@"comments"];
    objc_opt_class();
    v49 = v15;
    if (objc_opt_isKindOfClass())
    {
      v20 = [v16 objectForKey:@"comments"];
    }

    else
    {
      v20 = 0;
    }

    v54 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v20, "count")}];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v55 objects:v67 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v56;
      do
      {
        v25 = 0;
        do
        {
          if (*v56 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v55 + 1) + 8 * v25);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = [v26 objectForKey:@"commenttype"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = [v26 objectForKey:@"commenttype"];
            }

            else
            {
              v28 = 0;
            }

            if (([v28 isEqualToString:@"0"] & 1) != 0 || objc_msgSend(v28, "isEqualToString:", @"1"))
            {
              v29 = [MSASComment MSASPCommentFromProtocolDictionary:v26];
              if (v29)
              {
                v30 = objc_alloc_init(MSASCommentChange);
                [(MSASCommentChange *)v30 setComment:v29];
                [v54 addObject:v30];
              }
            }

            else if ([v28 isEqualToString:@"99"])
            {
              v31 = objc_alloc_init(MSASCommentChange);
              [(MSASCommentChange *)v31 setType:1];
              v32 = [v26 objectForKey:@"commentposition"];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              if (isKindOfClass)
              {
                v34 = [v26 objectForKey:@"commentposition"];
                v53 = v34;
              }

              else
              {
                v34 = 0;
              }

              -[MSASCommentChange setDeletionIndex:](v31, "setDeletionIndex:", [v34 intValue]);
              if (isKindOfClass)
              {
              }

              [v54 addObject:v31];
            }

            else if ([v28 isEqualToString:@"89"])
            {
              v35 = [MSASComment MSASPCommentFromProtocolDictionary:v26];
              if (v35)
              {
                v36 = objc_alloc_init(MSASCommentChange);
                [(MSASCommentChange *)v36 setComment:v35];
                [(MSASCommentChange *)v36 setType:2];
                v37 = [v26 objectForKey:@"deletedcommentposition"];
                objc_opt_class();
                v38 = objc_opt_isKindOfClass();
                if (v38)
                {
                  v39 = [v26 objectForKey:@"deletedcommentposition"];
                  v52 = v39;
                }

                else
                {
                  v39 = 0;
                }

                -[MSASCommentChange setDeletionIndex:](v36, "setDeletionIndex:", [v39 intValue]);
                if (v38)
                {
                }

                [v54 addObject:v36];
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v40 = *(v50 + 32);
              *buf = 138543618;
              v64 = v40;
              v65 = 2114;
              v66 = v28;
              _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unknown comment type: %{public}@. Ignoring", buf, 0x16u);
            }
          }

          ++v25;
        }

        while (v23 != v25);
        v41 = [v21 countByEnumeratingWithState:&v55 objects:v67 count:16];
        v23 = v41;
      }

      while (v41);
    }

    v17 = v51;
    [v46 setObject:v54 forKey:v51];

    v15 = v49;
    a1 = v50;
    v14 = v45;
    v13 = v47;
LABEL_56:

    goto LABEL_57;
  }

  (*(*(a1 + 40) + 16))();
LABEL_60:
}

- (void)validateInvitationForAlbum:(id)album completionBlock:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  albumCopy = album;
  blockCopy = block;
  v8 = MEMORY[0x277CBAB50];
  _validateInvitationURL = [(MSASProtocol *)self _validateInvitationURL];
  v10 = [v8 requestWithURL:_validateInvitationURL];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v12 = [albumCopy metadataValueForKey:@"phoneInvitationToken"];
  if (v12)
  {
    [dictionary setObject:v12 forKey:@"invitationtoken"];
  }

  v13 = [albumCopy metadataValueForKey:@"name"];
  if (v13)
  {
    [dictionary setObject:v13 forKey:@"albumname"];
  }

  v14 = [albumCopy metadataValueForKey:@"inviterAddress"];
  if (v14)
  {
    [dictionary setObject:v14 forKey:@"idsfromid"];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    selfCopy = self;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Validating invitation token %@ for album %@.", buf, 0x20u);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__MSASProtocol_validateInvitationForAlbum_completionBlock___block_invoke;
  v17[3] = &unk_278E924C0;
  v18 = v12;
  v19 = blockCopy;
  v15 = v12;
  v16 = blockCopy;
  [(MSASProtocol *)self sendURLRequest:v10 bodyObj:dictionary completionBlock:v17];
}

void __59__MSASProtocol_validateInvitationForAlbum_completionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = a4;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v13;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = [v7 objectForKey:@"isvalid"];
    [v8 BOOLValue];

    v9 = [v7 objectForKey:@"invitationtoken"];

    if ([*(a1 + 32) isEqualToString:v9])
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = MSCFCopyLocalizedString(@"ERROR_MODEL_INVALID_INVITATION");
      v12 = [v10 MSErrorWithDomain:@"MSASModelErrorDomain" code:5 description:v11 underlyingError:0];

      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)acceptInvitationWithToken:(id)token completionBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  blockCopy = block;
  v8 = MEMORY[0x277CBAB50];
  _subscribeURL = [(MSASProtocol *)self _subscribeURL];
  v10 = [v8 requestWithURL:_subscribeURL];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v12 = dictionary;
  if (tokenCopy)
  {
    [dictionary setObject:tokenCopy forKey:@"invitationtoken"];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Accepting invitation using token.", buf, 0xCu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__MSASProtocol_acceptInvitationWithToken_completionBlock___block_invoke;
  v14[3] = &unk_278E92430;
  v15 = blockCopy;
  v13 = blockCopy;
  [(MSASProtocol *)self sendURLRequest:v10 bodyObj:v12 completionBlock:v14];
}

- (void)markAsSpamInvitationForToken:(id)token completionBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  blockCopy = block;
  v8 = MEMORY[0x277CBAB50];
  _reportSpamURL = [(MSASProtocol *)self _reportSpamURL];
  v10 = [v8 requestWithURL:_reportSpamURL];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:tokenCopy forKeyedSubscript:@"invitationtoken"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v17 = 2114;
    v18 = tokenCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Marking as spam invitation with token %{public}@", buf, 0x16u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__MSASProtocol_markAsSpamInvitationForToken_completionBlock___block_invoke;
  v13[3] = &unk_278E92430;
  v14 = blockCopy;
  v12 = blockCopy;
  [(MSASProtocol *)self sendURLRequest:v10 bodyObj:dictionary completionBlock:v13];
}

- (void)markAsSpamInvitationForAlbum:(id)album completionBlock:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  albumCopy = album;
  blockCopy = block;
  v8 = MEMORY[0x277CBAB50];
  _reportSpamURL = [(MSASProtocol *)self _reportSpamURL];
  v10 = [v8 requestWithURL:_reportSpamURL];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  gUID = [albumCopy GUID];
  [dictionary setObject:gUID forKeyedSubscript:@"albumguid"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v18 = 2114;
    v19 = albumCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Marking as spam invitation for album %{public}@", buf, 0x16u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__MSASProtocol_markAsSpamInvitationForAlbum_completionBlock___block_invoke;
  v14[3] = &unk_278E92430;
  v15 = blockCopy;
  v13 = blockCopy;
  [(MSASProtocol *)self sendURLRequest:v10 bodyObj:dictionary completionBlock:v14];
}

- (void)unsubscribeFromAlbum:(id)album completionBlock:(id)block
{
  v24 = *MEMORY[0x277D85DE8];
  albumCopy = album;
  blockCopy = block;
  v8 = MEMORY[0x277CBAB50];
  _unsubscribeURL = [(MSASProtocol *)self _unsubscribeURL];
  v10 = [v8 requestWithURL:_unsubscribeURL];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  gUID = [albumCopy GUID];

  if (gUID)
  {
    gUID2 = [albumCopy GUID];
    [dictionary setObject:gUID2 forKey:@"albumguid"];
  }

  clientOrgKey = [albumCopy clientOrgKey];
  [(MSASProtocol *)self _setClientOrgKeyForRequestBody:dictionary clientOrgKey:clientOrgKey];

  ctag = [albumCopy ctag];

  if (ctag)
  {
    ctag2 = [albumCopy ctag];
    [dictionary setObject:ctag2 forKey:@"albumctag"];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v22 = 2114;
    v23 = albumCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Unsubscribing from album %{public}@", buf, 0x16u);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __53__MSASProtocol_unsubscribeFromAlbum_completionBlock___block_invoke;
  v18[3] = &unk_278E92430;
  v19 = blockCopy;
  v17 = blockCopy;
  [(MSASProtocol *)self sendURLRequest:v10 bodyObj:dictionary completionBlock:v18];
}

- (void)subscribeToAlbum:(id)album completionBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  albumCopy = album;
  blockCopy = block;
  v8 = MEMORY[0x277CBAB50];
  _subscribeURL = [(MSASProtocol *)self _subscribeURL];
  v10 = [v8 requestWithURL:_subscribeURL];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  gUID = [albumCopy GUID];

  if (gUID)
  {
    gUID2 = [albumCopy GUID];
    [dictionary setObject:gUID2 forKey:@"albumguid"];
  }

  ctag = [albumCopy ctag];

  if (ctag)
  {
    ctag2 = [albumCopy ctag];
    [dictionary setObject:ctag2 forKey:@"albumctag"];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v21 = 2114;
    v22 = albumCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Subscribing to album %{public}@", buf, 0x16u);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __49__MSASProtocol_subscribeToAlbum_completionBlock___block_invoke;
  v17[3] = &unk_278E924C0;
  v17[4] = self;
  v18 = blockCopy;
  v16 = blockCopy;
  [(MSASProtocol *)self sendURLRequest:v10 bodyObj:dictionary completionBlock:v17];
}

void __49__MSASProtocol_subscribeToAlbum_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = *(a1 + 32);
  v16 = 0;
  v8 = [v7 responseDict:a4 containsLimitErrorCode:@"4033" outMaxAllowed:&v16];
  v9 = v16;
  v10 = v6;
  if (v8)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = MEMORY[0x277CCACA8];
    v13 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_LIMIT_SUBSCRIPTIONS_P_COUNT");
    v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "intValue")}];
    v15 = [v12 stringWithFormat:v13, v14];
    v10 = [v11 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:15 description:v15 underlyingError:v6];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getTokensForAssets:(id)assets inAlbum:(id)album albumURLString:(id)string completionBlock:(id)block
{
  v52 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  albumCopy = album;
  stringCopy = string;
  blockCopy = block;
  if (stringCopy)
  {
    [MEMORY[0x277CBEBC0] URLWithString:stringCopy];
  }

  else
  {
    [(MSASProtocol *)self baseURL];
  }
  v13 = ;
  v35 = stringCopy;
  v14 = [(MSASProtocol *)self _getTokensURLWithBaseURL:v13];

  v34 = v14;
  v33 = [MEMORY[0x277CBAB50] requestWithURL:v14];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (albumCopy)
  {
    gUID = [albumCopy GUID];
    [dictionary setObject:gUID forKey:@"albumguid"];
  }

  clientOrgKey = [albumCopy clientOrgKey];
  [(MSASProtocol *)self _setClientOrgKeyForRequestBody:dictionary clientOrgKey:clientOrgKey];

  v31 = [assetsCopy mutableCopy];
  v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(assetsCopy, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v19 = assetsCopy;
  v20 = [v19 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v42;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v41 + 1) + 8 * i);
        assetCollectionGUID = [v24 assetCollectionGUID];

        if (assetCollectionGUID)
        {
          assetCollectionGUID2 = [v24 assetCollectionGUID];
          [v18 addObject:assetCollectionGUID2];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v21);
  }

  [dictionary setObject:v18 forKey:@"assets"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v27 = [v19 count];
    *buf = 138543874;
    selfCopy = self;
    v47 = 2048;
    v48 = v27;
    v49 = 2114;
    v50 = albumCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Getting tokens for %ld assets from album %{public}@", buf, 0x20u);
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __74__MSASProtocol_getTokensForAssets_inAlbum_albumURLString_completionBlock___block_invoke;
  v36[3] = &unk_278E92380;
  v37 = v31;
  selfCopy2 = self;
  v39 = albumCopy;
  v40 = blockCopy;
  v28 = blockCopy;
  v29 = albumCopy;
  v30 = v31;
  [(MSASProtocol *)self sendURLRequest:v33 bodyObj:dictionary completionBlock:v36];
}

void __74__MSASProtocol_getTokensForAssets_inAlbum_albumURLString_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v69 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEB38] dictionary];
  if (v6)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v10 = *(a1 + 32);
    v11 = [v10 countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v57;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v57 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v9 setObject:v6 forKey:*(*(&v56 + 1) + 8 * i)];
        }

        v12 = [v10 countByEnumeratingWithState:&v56 objects:v68 count:16];
      }

      while (v12);
    }

    goto LABEL_45;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v7;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = [v16 objectForKey:@"contenturl"];
  objc_opt_class();
  v43 = v7;
  if (objc_opt_isKindOfClass())
  {
    v18 = [v16 objectForKey:@"contenturl"];

    if (v18)
    {
      v19 = [MEMORY[0x277CBEBC0] URLWithString:v18];
      v42 = v18;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v20 = *(a1 + 40);
        v21 = *(a1 + 48);
        *buf = 138543874;
        v63 = v20;
        v64 = 2114;
        v65 = v19;
        v66 = 2114;
        v67 = v21;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Using contentURL %{public}@ for album %{public}@", buf, 0x20u);
      }

      goto LABEL_19;
    }
  }

  else
  {
  }

  v42 = 0;
  v19 = 0;
LABEL_19:
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v22 = v16;
  v23 = [v22 countByEnumeratingWithState:&v52 objects:v61 count:16];
  v46 = v22;
  if (v23)
  {
    v24 = v23;
    v25 = *v53;
    v44 = *v53;
    v45 = v9;
    do
    {
      v26 = 0;
      v47 = v24;
      do
      {
        if (*v53 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v52 + 1) + 8 * v26);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = [v22 objectForKey:v27];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = [v22 objectForKey:v27];
          }

          else
          {
            v29 = 0;
          }

          v30 = [v27 MSHexData];
          v31 = [*(a1 + 32) count];
          if (v31 - 1 >= 0)
          {
            do
            {
              v32 = [*(a1 + 32) objectAtIndex:--v31];
              v33 = [v32 MMCSHash];
              v34 = [v33 isEqualToData:v30];

              if (v34)
              {
                [v32 setMMCSAccessHeader:v29];
                if (v19)
                {
                  [v32 setMMCSURL:v19];
                }

                [v8 addObject:v32];
                [*(a1 + 32) removeObjectAtIndex:v31];
              }
            }

            while (v31 > 0);
          }

          v9 = v45;
          v22 = v46;
          v25 = v44;
          v24 = v47;
        }

        ++v26;
      }

      while (v26 != v24);
      v24 = [v22 countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v24);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v35 = *(a1 + 32);
  v36 = [v35 countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v49;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v49 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v48 + 1) + 8 * j);
        v41 = [*(a1 + 40) _couldNotReauthorizeError];
        [v9 setObject:v41 forKey:v40];
      }

      v37 = [v35 countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v37);
  }

  v7 = v43;
  v6 = 0;
  v10 = v46;
LABEL_45:

  (*(*(a1 + 56) + 16))();
}

- (id)_couldNotReauthorizeError
{
  if (_couldNotReauthorizeError_onceToken != -1)
  {
    dispatch_once(&_couldNotReauthorizeError_onceToken, &__block_literal_global_573);
  }

  v3 = _couldNotReauthorizeError_error;

  return v3;
}

void __41__MSASProtocol__couldNotReauthorizeError__block_invoke()
{
  v0 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_NOT_REAUTHED");
  v1 = [v0 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:11 description:v3];
  v2 = _couldNotReauthorizeError_error;
  _couldNotReauthorizeError_error = v1;
}

- (void)getAssetCollections:(id)collections inAlbum:(id)album albumURLString:(id)string completionBlock:(id)block
{
  v55 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  albumCopy = album;
  stringCopy = string;
  blockCopy = block;
  v37 = stringCopy;
  if (stringCopy)
  {
    [MEMORY[0x277CBEBC0] URLWithString:stringCopy];
  }

  else
  {
    [(MSASProtocol *)self baseURL];
  }
  v13 = ;
  v14 = [(MSASProtocol *)self _getAssetsURLWithBaseURL:v13];

  v36 = v14;
  v35 = [MEMORY[0x277CBAB50] requestWithURL:v14];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  gUID = [albumCopy GUID];

  if (gUID)
  {
    gUID2 = [albumCopy GUID];
    [dictionary setObject:gUID2 forKey:@"albumguid"];
  }

  clientOrgKey = [albumCopy clientOrgKey];
  [(MSASProtocol *)self _setClientOrgKeyForRequestBody:dictionary clientOrgKey:clientOrgKey];

  v19 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(collectionsCopy, "count")}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v20 = collectionsCopy;
  v21 = [v20 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v45;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v45 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v44 + 1) + 8 * i);
        gUID3 = [v25 GUID];

        if (gUID3)
        {
          gUID4 = [v25 GUID];
          [v19 setObject:v25 forKey:gUID4];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v22);
  }

  allKeys = [v19 allKeys];
  [dictionary setObject:allKeys forKey:@"assets"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v29 = [v20 count];
    *buf = 138543874;
    selfCopy = self;
    v50 = 2048;
    v51 = v29;
    v52 = 2114;
    v53 = albumCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Requesting metadata for %ld photos in album %{public}@.", buf, 0x20u);
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __75__MSASProtocol_getAssetCollections_inAlbum_albumURLString_completionBlock___block_invoke;
  v38[3] = &unk_278E92480;
  v39 = v20;
  v40 = v19;
  selfCopy2 = self;
  v42 = albumCopy;
  v43 = blockCopy;
  v30 = blockCopy;
  v31 = albumCopy;
  v32 = v19;
  v33 = v20;
  [(MSASProtocol *)self sendURLRequest:v35 bodyObj:dictionary completionBlock:v38];
}

void __75__MSASProtocol_getAssetCollections_inAlbum_albumURLString_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v93 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v61 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v59 = a1;
  v58 = [*(a1 + 32) mutableCopy];
  v10 = 0;
  if (!v6)
  {
    v11 = [v9 objectForKey:@"albumctag"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v9 objectForKey:@"albumctag"];
    }

    else
    {
      v12 = 0;
    }

    v13 = [v9 objectForKey:@"contenturl"];
    objc_opt_class();
    v55 = v12;
    if (objc_opt_isKindOfClass())
    {
      v14 = [v9 objectForKey:@"contenturl"];
    }

    else
    {
      v14 = 0;
    }

    v15 = [MEMORY[0x277CBEBC0] URLWithString:v14];
    v16 = [v9 objectForKey:@"contenttokens"];
    objc_opt_class();
    v57 = v7;
    v54 = v14;
    if (objc_opt_isKindOfClass())
    {
      v17 = [v9 objectForKey:@"contenttokens"];
    }

    else
    {
      v17 = 0;
    }

    v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v17, "count")}];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = v17;
    v19 = [obj countByEnumeratingWithState:&v76 objects:v92 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v77;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v77 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v76 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [obj objectForKey:v23];
            v25 = [v23 MSHexData];
            [v18 setObject:v24 forKey:v25];
          }
        }

        v20 = [obj countByEnumeratingWithState:&v76 objects:v92 count:16];
      }

      while (v20);
    }

    v26 = [v9 objectForKey:@"assets"];
    objc_opt_class();
    v56 = v9;
    if (objc_opt_isKindOfClass())
    {
      v27 = [v9 objectForKey:@"assets"];
    }

    else
    {
      v27 = 0;
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v63 = v27;
    v28 = [v63 countByEnumeratingWithState:&v72 objects:v91 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v73;
      v60 = *v73;
      do
      {
        v31 = 0;
        v62 = v29;
        do
        {
          if (*v73 != v30)
          {
            objc_enumerationMutation(v63);
          }

          v32 = *(*(&v72 + 1) + 8 * v31);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = [v32 objectForKey:@"assetctag"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v67 = [v32 objectForKey:@"assetctag"];
            }

            else
            {
              v67 = 0;
            }

            v34 = [MSASAssetCollection MSASPAssetCollectionFromProtocolDictionary:v32];
            v35 = v34;
            if (v34)
            {
              v66 = v34;
              [v34 setCtag:v67];
              v36 = [v32 objectForKey:@"hascomments"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v37 = [v32 objectForKey:@"hascomments"];
              }

              else
              {
                v37 = 0;
              }

              v64 = v37;
              [v66 setHasComments:{objc_msgSend(v37, "intValue") > 0}];
              [v61 addObject:v66];
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              v38 = [v66 assets];
              v39 = [v38 countByEnumeratingWithState:&v68 objects:v90 count:16];
              if (v39)
              {
                v40 = v39;
                v41 = *v69;
                do
                {
                  for (j = 0; j != v40; ++j)
                  {
                    if (*v69 != v41)
                    {
                      objc_enumerationMutation(v38);
                    }

                    v43 = *(*(&v68 + 1) + 8 * j);
                    [v43 setMMCSURL:v15];
                    v44 = [v43 MMCSHash];
                    v45 = [v18 objectForKey:v44];
                    [v43 setMMCSAccessHeader:v45];
                  }

                  v40 = [v38 countByEnumeratingWithState:&v68 objects:v90 count:16];
                }

                while (v40);
              }

              v35 = v66;
              v46 = [v66 GUID];

              v30 = v60;
              if (v46)
              {
                v47 = v59[5];
                v48 = [v66 GUID];
                v49 = [v47 objectForKey:v48];

                if (v49)
                {
                  [v58 removeObject:v49];
                }

                v35 = v66;
              }
            }

            v29 = v62;
          }

          ++v31;
        }

        while (v31 != v29);
        v29 = [v63 countByEnumeratingWithState:&v72 objects:v91 count:16];
      }

      while (v29);
    }

    v7 = v57;
    v6 = 0;
    v10 = v55;
    v9 = v56;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v50 = v59[6];
    v51 = [v61 count];
    v52 = [v58 count];
    v53 = v59[7];
    *buf = 138544386;
    v81 = v50;
    v82 = 2048;
    v83 = v51;
    v84 = 2048;
    v85 = v52;
    v86 = 2114;
    v87 = v53;
    v88 = 2114;
    v89 = v6;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Finished receiving metadata for %ld assets and skipped %ld assets, in album %{public}@. Error: %{public}@", buf, 0x34u);
  }

  (*(v59[8] + 16))();
}

- (void)albumSummaryAlbum:(id)album albumURLString:(id)string resetSync:(BOOL)sync completionBlock:(id)block
{
  v33 = *MEMORY[0x277D85DE8];
  albumCopy = album;
  stringCopy = string;
  blockCopy = block;
  if (stringCopy)
  {
    [MEMORY[0x277CBEBC0] URLWithString:stringCopy];
  }

  else
  {
    [(MSASProtocol *)self baseURL];
  }
  v13 = ;
  v14 = [(MSASProtocol *)self _albumSummaryURLWithBaseURL:v13];

  v15 = [MEMORY[0x277CBAB50] requestWithURL:v14];
  if (sync)
  {
    v16 = 0;
  }

  else
  {
    if ([albumCopy useForeignCtag])
    {
      [albumCopy foreignCtag];
    }

    else
    {
      [albumCopy ctag];
    }
    v16 = ;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  gUID = [albumCopy GUID];

  if (gUID)
  {
    gUID2 = [albumCopy GUID];
    [dictionary setObject:gUID2 forKey:@"albumguid"];
  }

  if (v16)
  {
    [dictionary setObject:v16 forKey:@"albumctag"];
  }

  clientOrgKey = [albumCopy clientOrgKey];
  [(MSASProtocol *)self _setClientOrgKeyForRequestBody:dictionary clientOrgKey:clientOrgKey];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v31 = 2114;
    v32 = albumCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Requesting summary of changes for album %{public}@.", buf, 0x16u);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __75__MSASProtocol_albumSummaryAlbum_albumURLString_resetSync_completionBlock___block_invoke;
  v24[3] = &unk_278E92380;
  v25 = albumCopy;
  v26 = v16;
  selfCopy2 = self;
  v28 = blockCopy;
  v21 = blockCopy;
  v22 = v16;
  v23 = albumCopy;
  [(MSASProtocol *)self sendURLRequest:v15 bodyObj:dictionary completionBlock:v24];
}

void __75__MSASProtocol_albumSummaryAlbum_albumURLString_resetSync_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v78 = *MEMORY[0x277D85DE8];
  v59 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  v60 = v8;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v64 = v9;
  if (v7)
  {
    v62 = 0;
    v63 = 0;
    v66 = 0;
    goto LABEL_73;
  }

  v61 = a1;
  v63 = [MSASAlbum albumWithAlbum:*(a1 + 32)];
  v10 = [v64 objectForKey:@"albumctag"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v62 = [v64 objectForKey:@"albumctag"];
  }

  else
  {
    v62 = 0;
  }

  v58 = [MEMORY[0x277CBEB38] dictionary];
  v11 = [*(a1 + 32) metadata];

  if (v11)
  {
    v12 = [*(a1 + 32) metadata];
    [v58 addEntriesFromDictionary:v12];
  }

  v13 = [v64 objectForKey:@"attributes"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v64 objectForKey:@"attributes"];
    v15 = v58;
    [v58 addEntriesFromDictionary:v14];
  }

  else
  {
    v15 = v58;
    [v58 addEntriesFromDictionary:0];
  }

  [v63 setMetadata:v15];
  v16 = [v64 objectForKey:@"publicurl"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v64 objectForKey:@"publicurl"];
  }

  else
  {
    v17 = 0;
  }

  v55 = v17;
  if ([v17 length])
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  [v63 setPublicURLString:v18];
  if (!_os_feature_enabled_impl())
  {
    HIDWORD(v53) = 0;
    goto LABEL_29;
  }

  v19 = [v64 objectForKey:@"requiresretrywithclientorgkey"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v20 = 0;
LABEL_27:
    v21 = 0;
    goto LABEL_28;
  }

  v20 = [v64 objectForKey:@"requiresretrywithclientorgkey"];

  if (!v20 || ([v20 isEqualToString:@"1"] & 1) == 0)
  {
    goto LABEL_27;
  }

  v21 = 1;
LABEL_28:
  HIDWORD(v53) = v21;

LABEL_29:
  v22 = [v64 objectForKey:@"isfamilysharealbum"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v23 = 0;
LABEL_34:
    v57 = v23;
    v24 = 0;
    goto LABEL_35;
  }

  v57 = [v64 objectForKey:@"isfamilysharealbum"];

  v23 = v57;
  if (!v57 || ([v57 isEqualToString:@"1"] & 1) == 0)
  {
    goto LABEL_34;
  }

  v24 = 1;
LABEL_35:
  [v63 setIsFamilySharedAlbum:v24];
  v25 = [v64 objectForKey:@"ctagrespected"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [v64 objectForKey:@"ctagrespected"];
  }

  else
  {
    v26 = 0;
  }

  v54 = v26;
  v27 = ([v26 isEqualToString:@"0"] & 1) != 0 || *(v61 + 40) == 0;
  LODWORD(v53) = v27;
  v28 = [v64 objectForKey:{@"assets", v53}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = [v64 objectForKey:@"assets"];
  }

  else
  {
    v29 = 0;
  }

  v56 = v29;
  if ([v29 count])
  {
    v66 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v29, "count")}];
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = v29;
    v30 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
    if (v30)
    {
      v31 = *v71;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v71 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v70 + 1) + 8 * i);
          v34 = objc_alloc_init(MSASAssetCollectionChange);
          v35 = [v33 objectForKey:@"assetguid"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v36 = [v33 objectForKey:@"assetguid"];
            [(MSASAssetCollectionChange *)v34 setGUID:v36];
          }

          else
          {
            [(MSASAssetCollectionChange *)v34 setGUID:0];
          }

          v37 = [v33 objectForKey:@"assetctag"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v38 = [v33 objectForKey:@"assetctag"];
            [(MSASAssetCollectionChange *)v34 setCtag:v38];
          }

          else
          {
            [(MSASAssetCollectionChange *)v34 setCtag:0];
          }

          v39 = [v33 objectForKey:@"delete"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v41 = [v33 objectForKey:@"delete"];
            v29 = v41;
          }

          else
          {
            v41 = 0;
          }

          -[MSASAssetCollectionChange setWasDeleted:](v34, "setWasDeleted:", [v41 BOOLValue]);
          if (isKindOfClass)
          {
          }

          [v66 addObject:v34];
        }

        v30 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
      }

      while (v30);
    }
  }

  else
  {
    v66 = 0;
  }

  v42 = [v64 objectForKey:@"sharinginfochanged"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = [v64 objectForKey:@"sharinginfochanged"];

    if (v43)
    {
      [v43 isEqualToString:@"1"];
    }
  }

  else
  {

    v43 = 0;
  }

  if (_os_feature_enabled_impl() && ([*(v61 + 32) clientOrgKey], v44 = objc_claimAutoreleasedReturnValue(), v45 = v44 == 0, v44, v45))
  {
    v50 = [*(v61 + 32) useForeignCtag];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v75 = __Block_byref_object_copy__7575;
    *&v76 = __Block_byref_object_dispose__7576;
    *(&v76 + 1) = 0;
    v51 = *(v61 + 48);
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __75__MSASProtocol_albumSummaryAlbum_albumURLString_resetSync_completionBlock___block_invoke_2;
    v67[3] = &unk_278E92458;
    v69 = buf;
    v68 = v63;
    [v51 _fetchClientOrgKeyAndPersistLocallyForResponseDict:v64 isOwned:v50 ^ 1u completionHandler:v67];
    v7 = *(*&buf[8] + 40);
    if (v7)
    {
      v52 = v7;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v7 = 0;
  }

  a1 = v61;
LABEL_73:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v46 = *(a1 + 48);
    v47 = a1;
    v48 = *(a1 + 32);
    v49 = [v7 MSVerboseDescription];
    *buf = 138544131;
    *&buf[4] = v46;
    *&buf[12] = 2114;
    *&buf[14] = v48;
    *&buf[22] = 2114;
    v75 = v49;
    LOWORD(v76) = 2113;
    *(&v76 + 2) = v64;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Finished retrieving album summary for album %{public}@. Error: %{public}@ Response: %{private}@", buf, 0x2Au);

    a1 = v47;
  }

  (*(*(a1 + 56) + 16))();
}

void __75__MSASProtocol_albumSummaryAlbum_albumURLString_resetSync_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  [*(a1 + 32) setClientOrgKey:v6];
}

- (void)getSharingInfoForAlbum:(id)album albumURLString:(id)string completionBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  albumCopy = album;
  stringCopy = string;
  blockCopy = block;
  if (stringCopy)
  {
    [MEMORY[0x277CBEBC0] URLWithString:stringCopy];
  }

  else
  {
    [(MSASProtocol *)self baseURL];
  }
  v11 = ;
  v12 = [(MSASProtocol *)self _sharingInfoURLWithBaseURL:v11];

  v13 = [MEMORY[0x277CBAB50] requestWithURL:v12];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  gUID = [albumCopy GUID];

  if (gUID)
  {
    gUID2 = [albumCopy GUID];
    [dictionary setObject:gUID2 forKey:@"albumguid"];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v25 = 2114;
    v26 = albumCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Requesting sharing relationships for album %{public}@", buf, 0x16u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__MSASProtocol_getSharingInfoForAlbum_albumURLString_completionBlock___block_invoke;
  v19[3] = &unk_278E923B8;
  v20 = albumCopy;
  selfCopy2 = self;
  v22 = blockCopy;
  v17 = blockCopy;
  v18 = albumCopy;
  [(MSASProtocol *)self sendURLRequest:v13 bodyObj:dictionary completionBlock:v19];
}

void __70__MSASProtocol_getSharingInfoForAlbum_albumURLString_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = v8;
  if (!v6)
  {
    v31 = v8;
    objc_opt_class();
    v30 = v7;
    if (objc_opt_isKindOfClass())
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [v11 objectForKey:@"sharinginfo"];
    objc_opt_class();
    v13 = 0;
    if (objc_opt_isKindOfClass())
    {
      v13 = [v11 objectForKey:@"sharinginfo"];
    }

    v29 = v11;

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v46 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      v18 = MEMORY[0x277D86220];
      do
      {
        v19 = 0;
        do
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v32 + 1) + 8 * v19);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = v20;
          }

          else
          {
            v21 = 0;
          }

          v22 = v21;
          v23 = [MSASSharingRelationship MSASPSharingRelationshipFromProtocolDictionary:v22];
          if (v23)
          {
            v24 = [*(a1 + 32) GUID];
            [v23 setAlbumGUID:v24];

            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v37 = v23;
              _os_log_debug_impl(&dword_245B99000, v18, OS_LOG_TYPE_DEBUG, "Found sharing relationship: %@", buf, 0xCu);
            }

            [v31 addObject:v23];
          }

          ++v19;
        }

        while (v16 != v19);
        v16 = [v14 countByEnumeratingWithState:&v32 objects:v46 count:16];
      }

      while (v16);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 32);
      v25 = *(a1 + 40);
      v27 = [v14 count];
      v28 = [0 MSVerboseDescription];
      *buf = 138544387;
      v37 = v25;
      v38 = 2114;
      v39 = v26;
      v40 = 2048;
      v41 = v27;
      v42 = 2114;
      v43 = v28;
      v44 = 2113;
      v45 = v29;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Finished retrieving sharing info for album %{public}@. SharingInfo count: %ld Error: %{public}@ Response: %{private}@", buf, 0x34u);
    }

    v7 = v30;
    v6 = 0;
    v9 = v31;
  }

  (*(*(a1 + 48) + 16))();
}

- (void)getChangesRootCtag:(id)ctag migrationCtag:(id)migrationCtag completionBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  ctagCopy = ctag;
  migrationCtagCopy = migrationCtag;
  blockCopy = block;
  v11 = MEMORY[0x277CBAB50];
  _getChangesURL = [(MSASProtocol *)self _getChangesURL];
  v13 = [v11 requestWithURL:_getChangesURL];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v15 = dictionary;
  if (ctagCopy)
  {
    [dictionary setObject:ctagCopy forKey:@"rootctag"];
  }

  v16 = _os_feature_enabled_impl();
  if (migrationCtagCopy && v16)
  {
    [v15 setObject:migrationCtagCopy forKey:@"migrationctag"];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v25 = 2114;
    v26 = ctagCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Requesting changes since root ctag %{public}@", buf, 0x16u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65__MSASProtocol_getChangesRootCtag_migrationCtag_completionBlock___block_invoke;
  v19[3] = &unk_278E923B8;
  v20 = ctagCopy;
  selfCopy2 = self;
  v22 = blockCopy;
  v17 = blockCopy;
  v18 = ctagCopy;
  [(MSASProtocol *)self sendURLRequest:v13 bodyObj:v15 completionBlock:v19];
}

void __65__MSASProtocol_getChangesRootCtag_migrationCtag_completionBlock___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v125 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = 0;
    v92 = 0;
    obj = 0;
    v88 = 0;
    goto LABEL_115;
  }

  v84 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = [v12 objectForKey:@"rootctag"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v15 = 0;
  if (isKindOfClass)
  {
    v15 = [v12 objectForKey:@"rootctag"];
  }

  v88 = v15;

  v16 = [v12 objectForKey:@"ctagrespected"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v12 objectForKey:@"ctagrespected"];
  }

  else
  {
    v17 = 0;
  }

  v18 = ([v17 isEqualToString:@"0"] & 1) != 0 || a1[4] == 0;
  v89 = v18;
  v19 = [v12 objectForKey:@"albums"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [v12 objectForKey:@"albums"];
  }

  else
  {
    v20 = 0;
  }

  v85 = a1;
  v86 = v20;
  v87 = v12;
  v83 = v17;
  if ([v20 count])
  {
    v92 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v20, "count")}];
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    obja = v20;
    v21 = [obja countByEnumeratingWithState:&v107 objects:v124 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v108;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v108 != v23)
          {
            objc_enumerationMutation(obja);
          }

          v25 = *(*(&v107 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = objc_alloc_init(MSASAlbumChange);
            v27 = [v25 objectForKey:@"albumguid"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = [v25 objectForKey:@"albumguid"];
              [(MSASAlbumChange *)v26 setGUID:v28];
            }

            else
            {
              [(MSASAlbumChange *)v26 setGUID:0];
            }

            v29 = [v25 objectForKey:@"delete"];
            objc_opt_class();
            v30 = objc_opt_isKindOfClass();
            if (v30)
            {
              v31 = [v25 objectForKey:@"delete"];
              v91 = v31;
            }

            else
            {
              v31 = 0;
            }

            -[MSASAlbumChange setWasDeleted:](v26, "setWasDeleted:", [v31 intValue] != 0);
            if (v30)
            {
            }

            v32 = [v25 objectForKey:@"albumlocation"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = [v25 objectForKey:@"albumlocation"];
              [(MSASAlbumChange *)v26 setURLString:v33];
            }

            else
            {
              [(MSASAlbumChange *)v26 setURLString:0];
            }

            v34 = [v25 objectForKey:@"name"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = [v25 objectForKey:@"name"];
              [(MSASAlbumChange *)v26 setName:v35];
            }

            else
            {
              [(MSASAlbumChange *)v26 setName:0];
            }

            v36 = [v25 objectForKey:@"email"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v37 = [v25 objectForKey:@"email"];
              [(MSASAlbumChange *)v26 setOwnerEmail:v37];
            }

            else
            {
              [(MSASAlbumChange *)v26 setOwnerEmail:0];
            }

            v38 = [v25 objectForKey:@"personid"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v39 = [v25 objectForKey:@"personid"];
              [(MSASAlbumChange *)v26 setOwnerPersonID:v39];
            }

            else
            {
              [(MSASAlbumChange *)v26 setOwnerPersonID:0];
            }

            v40 = [v25 objectForKey:@"firstname"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v41 = [v25 objectForKey:@"firstname"];
              [(MSASAlbumChange *)v26 setOwnerFirstName:v41];
            }

            else
            {
              [(MSASAlbumChange *)v26 setOwnerFirstName:0];
            }

            v42 = [v25 objectForKey:@"lastname"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v43 = [v25 objectForKey:@"lastname"];
              [(MSASAlbumChange *)v26 setOwnerLastName:v43];
            }

            else
            {
              [(MSASAlbumChange *)v26 setOwnerLastName:0];
            }

            v44 = [v25 objectForKey:@"fullname"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v45 = [v25 objectForKey:@"fullname"];
              [(MSASAlbumChange *)v26 setOwnerFullName:v45];
            }

            else
            {
              [(MSASAlbumChange *)v26 setOwnerFullName:0];
            }

            v46 = [MSASInvitation MSASPInvitationFromProtocolDictionary:v25];
            [(MSASAlbumChange *)v26 setInvitation:v46];

            [v92 addObject:v26];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v112 = v26;
              _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Album change received: %{public}@", buf, 0xCu);
            }
          }
        }

        v22 = [obja countByEnumeratingWithState:&v107 objects:v124 count:16];
      }

      while (v22);
    }

    a1 = v85;
  }

  else
  {
    v92 = 0;
  }

  v47 = [v12 objectForKey:@"sharinginfochanges"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v48 = [v12 objectForKey:@"sharinginfochanges"];
  }

  else
  {
    v48 = 0;
  }

  v90 = v48;
  if ([v48 count])
  {
    obj = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v48, "count")}];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v49 = v48;
    v50 = [v49 countByEnumeratingWithState:&v103 objects:v123 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v104;
      v53 = MEMORY[0x277D86220];
      do
      {
        for (j = 0; j != v51; ++j)
        {
          if (*v104 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v55 = *(*(&v103 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v56 = v55;
          }

          else
          {
            v56 = 0;
          }

          v57 = v56;
          if (v57)
          {
            [obj addObject:v57];
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v112 = v55;
              _os_log_debug_impl(&dword_245B99000, v53, OS_LOG_TYPE_DEBUG, "Sharing info changed for album GUID: %{public}@", buf, 0xCu);
            }
          }
        }

        v51 = [v49 countByEnumeratingWithState:&v103 objects:v123 count:16];
      }

      while (v51);
    }

    a1 = v85;
    v12 = v87;
  }

  else
  {
    obj = 0;
  }

  v58 = [v12 objectForKey:@"albumstatechanges"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v59 = [v12 objectForKey:@"albumstatechanges"];
  }

  else
  {
    v59 = 0;
  }

  if ([v59 count])
  {
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v59, "count")}];
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v60 = v59;
    v61 = [v60 countByEnumeratingWithState:&v99 objects:v122 count:16];
    if (v61)
    {
      v62 = v61;
      v82 = v59;
      v63 = *v100;
      v64 = MEMORY[0x277D86220];
      do
      {
        for (k = 0; k != v62; ++k)
        {
          if (*v100 != v63)
          {
            objc_enumerationMutation(v60);
          }

          v66 = *(*(&v99 + 1) + 8 * k);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v67 = v66;
          }

          else
          {
            v67 = 0;
          }

          v68 = v67;
          if (v68)
          {
            [v10 addObject:v68];
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v112 = v66;
              _os_log_debug_impl(&dword_245B99000, v64, OS_LOG_TYPE_DEBUG, "Key-Value info changed for album GUID: %{public}@", buf, 0xCu);
            }
          }
        }

        v62 = [v60 countByEnumeratingWithState:&v99 objects:v122 count:16];
      }

      while (v62);
LABEL_112:
      a1 = v85;
      v59 = v82;
    }

    goto LABEL_113;
  }

  if (!v89)
  {
    v10 = 0;
    goto LABEL_114;
  }

  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v59, "count")}];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v60 = v86;
  v69 = [v60 countByEnumeratingWithState:&v95 objects:v121 count:16];
  if (v69)
  {
    v70 = v69;
    v82 = v59;
    v71 = *v96;
    v72 = MEMORY[0x277D86220];
    while (1)
    {
      for (m = 0; m != v70; ++m)
      {
        if (*v96 != v71)
        {
          objc_enumerationMutation(v60);
        }

        v74 = *(*(&v95 + 1) + 8 * m);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v75 = [v74 objectForKey:@"albumguid"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v76 = [v74 objectForKey:@"albumguid"];

            if (!v76)
            {
              continue;
            }

            [v10 addObject:v76];
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v112 = v76;
              _os_log_debug_impl(&dword_245B99000, v72, OS_LOG_TYPE_DEBUG, "Key-Value info changed for album GUID: %{public}@", buf, 0xCu);
            }
          }

          else
          {
            v76 = v75;
          }
        }
      }

      v70 = [v60 countByEnumeratingWithState:&v95 objects:v121 count:16];
      if (!v70)
      {
        goto LABEL_112;
      }
    }
  }

LABEL_113:

LABEL_114:
  v8 = 0;
  v7 = v84;

LABEL_115:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v77 = a1[5];
    v78 = [v92 count];
    v79 = [obj count];
    v80 = [v10 count];
    v81 = [v8 MSVerboseDescription];
    *buf = 138544386;
    v112 = v77;
    v113 = 2048;
    v114 = v78;
    v115 = 2048;
    v116 = v79;
    v117 = 2048;
    v118 = v80;
    v119 = 2114;
    v120 = v81;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Received changes for %ld albums, sharing info changes for %ld albums, KV changes for %ld albums. Error: %{public}@", buf, 0x34u);
  }

  (*(a1[6] + 16))();
}

- (void)deleteComment:(id)comment fromAssetCollection:(id)collection inAlbum:(id)album albumURLString:(id)string completionBlock:(id)block
{
  v39 = *MEMORY[0x277D85DE8];
  commentCopy = comment;
  collectionCopy = collection;
  albumCopy = album;
  stringCopy = string;
  blockCopy = block;
  if (stringCopy)
  {
    [MEMORY[0x277CBEBC0] URLWithString:stringCopy];
  }

  else
  {
    [(MSASProtocol *)self baseURL];
  }
  v17 = ;
  v18 = [(MSASProtocol *)self _deleteCommentURLWithBaseURL:v17];

  v32 = v18;
  v19 = [MEMORY[0x277CBAB50] requestWithURL:v18];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  gUID = [albumCopy GUID];

  if (gUID)
  {
    gUID2 = [albumCopy GUID];
    [dictionary setObject:gUID2 forKey:@"albumguid"];
  }

  clientOrgKey = [albumCopy clientOrgKey];
  [(MSASProtocol *)self _setClientOrgKeyForRequestBody:dictionary clientOrgKey:clientOrgKey];

  gUID3 = [collectionCopy GUID];

  if (gUID3)
  {
    gUID4 = [collectionCopy GUID];
    [dictionary setObject:gUID4 forKey:@"assetguid"];
  }

  if (([commentCopy ID] & 0x80000000) != 0)
  {
    timestamp = [commentCopy timestamp];

    if (!timestamp)
    {
      goto LABEL_13;
    }

    v28 = MEMORY[0x277CCACA8];
    timestamp2 = [commentCopy timestamp];
    [timestamp2 timeIntervalSinceReferenceDate];
    v30 = [v28 stringWithFormat:@"%f", v29];
    [dictionary setObject:v30 forKey:@"commenttimestamp"];
  }

  else
  {
    timestamp2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(commentCopy, "ID")];
    [dictionary setObject:timestamp2 forKey:@"commentposition"];
  }

LABEL_13:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v37 = 2114;
    v38 = commentCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Sending request to delete comment %{public}@", buf, 0x16u);
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __89__MSASProtocol_deleteComment_fromAssetCollection_inAlbum_albumURLString_completionBlock___block_invoke;
  v33[3] = &unk_278E92430;
  v34 = blockCopy;
  v31 = blockCopy;
  [(MSASProtocol *)self sendURLRequest:v19 bodyObj:dictionary completionBlock:v33];
}

- (void)deleteAssetCollections:(id)collections inAlbum:(id)album completionBlock:(id)block
{
  v44 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  albumCopy = album;
  blockCopy = block;
  uRLString = [albumCopy URLString];
  if (uRLString)
  {
    v11 = MEMORY[0x277CBEBC0];
    uRLString2 = [albumCopy URLString];
    baseURL = [v11 URLWithString:uRLString2];
  }

  else
  {
    baseURL = [(MSASProtocol *)self baseURL];
  }

  v14 = MEMORY[0x277CBAB50];
  v32 = baseURL;
  v15 = [(MSASProtocol *)self _deleteAssetsURLWithBaseURL:baseURL];
  v16 = [v14 requestWithURL:v15];

  array = [MEMORY[0x277CBEB18] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v18 = collectionsCopy;
  v19 = [v18 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v36;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v35 + 1) + 8 * i);
        gUID = [v23 GUID];

        if (gUID)
        {
          gUID2 = [v23 GUID];
          [array addObject:gUID2];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v20);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:array forKey:@"assets"];
  gUID3 = [albumCopy GUID];

  if (gUID3)
  {
    gUID4 = [albumCopy GUID];
    [dictionary setObject:gUID4 forKey:@"albumguid"];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v29 = [array count];
    *buf = 138543618;
    selfCopy = self;
    v41 = 2048;
    v42 = v29;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Sending request to delete %ld photos.", buf, 0x16u);
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __63__MSASProtocol_deleteAssetCollections_inAlbum_completionBlock___block_invoke;
  v33[3] = &unk_278E92430;
  v34 = blockCopy;
  v30 = blockCopy;
  [(MSASProtocol *)self sendURLRequest:v16 bodyObj:dictionary completionBlock:v33];
}

- (void)deleteAlbum:(id)album completionBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  albumCopy = album;
  blockCopy = block;
  uRLString = [albumCopy URLString];
  if (uRLString)
  {
    v9 = MEMORY[0x277CBEBC0];
    uRLString2 = [albumCopy URLString];
    baseURL = [v9 URLWithString:uRLString2];
  }

  else
  {
    baseURL = [(MSASProtocol *)self baseURL];
  }

  v12 = MEMORY[0x277CBAB50];
  v13 = [(MSASProtocol *)self _deleteURLWithBaseURL:baseURL];
  v14 = [v12 requestWithURL:v13];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  gUID = [albumCopy GUID];

  if (gUID)
  {
    gUID2 = [albumCopy GUID];
    [dictionary setObject:gUID2 forKey:@"albumguid"];
  }

  ctag = [albumCopy ctag];

  if (ctag)
  {
    ctag2 = [albumCopy ctag];
    [dictionary setObject:ctag2 forKey:@"albumctag"];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v25 = 2114;
    v26 = albumCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Sending request to delete album %{public}@", buf, 0x16u);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __44__MSASProtocol_deleteAlbum_completionBlock___block_invoke;
  v21[3] = &unk_278E92430;
  v22 = blockCopy;
  v20 = blockCopy;
  [(MSASProtocol *)self sendURLRequest:v14 bodyObj:dictionary completionBlock:v21];
}

- (void)setMultipleContributorsEnabled:(BOOL)enabled forAlbum:(id)album completionBlock:(id)block
{
  enabledCopy = enabled;
  albumCopy = album;
  blockCopy = block;
  uRLString = [albumCopy URLString];
  if (uRLString)
  {
    v11 = MEMORY[0x277CBEBC0];
    uRLString2 = [albumCopy URLString];
    baseURL = [v11 URLWithString:uRLString2];
  }

  else
  {
    baseURL = [(MSASProtocol *)self baseURL];
  }

  v14 = MEMORY[0x277CBAB50];
  v15 = [(MSASProtocol *)self _enableMultipleContributorsURLWithBaseURL:baseURL];
  v16 = [v14 requestWithURL:v15];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  gUID = [albumCopy GUID];

  if (gUID)
  {
    gUID2 = [albumCopy GUID];
    [dictionary setObject:gUID2 forKey:@"albumguid"];
  }

  clientOrgKey = [albumCopy clientOrgKey];
  [(MSASProtocol *)self _setClientOrgKeyForRequestBody:dictionary clientOrgKey:clientOrgKey];

  if (enabledCopy)
  {
    v21 = @"1";
  }

  else
  {
    v21 = @"0";
  }

  [dictionary setObject:v21 forKey:@"allowcontributions"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __72__MSASProtocol_setMultipleContributorsEnabled_forAlbum_completionBlock___block_invoke;
  v23[3] = &unk_278E92430;
  v24 = blockCopy;
  v22 = blockCopy;
  [(MSASProtocol *)self sendURLRequest:v16 bodyObj:dictionary completionBlock:v23];
}

- (void)setPublicAccessEnabled:(BOOL)enabled forAlbum:(id)album completionBlock:(id)block
{
  enabledCopy = enabled;
  albumCopy = album;
  blockCopy = block;
  uRLString = [albumCopy URLString];
  if (uRLString)
  {
    v11 = MEMORY[0x277CBEBC0];
    uRLString2 = [albumCopy URLString];
    baseURL = [v11 URLWithString:uRLString2];
  }

  else
  {
    baseURL = [(MSASProtocol *)self baseURL];
  }

  v14 = MEMORY[0x277CBAB50];
  v15 = [(MSASProtocol *)self _enablePublicAccessURLWithBaseURL:baseURL];
  v16 = [v14 requestWithURL:v15];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  gUID = [albumCopy GUID];

  if (gUID)
  {
    gUID2 = [albumCopy GUID];
    [dictionary setObject:gUID2 forKey:@"albumguid"];
  }

  clientOrgKey = [albumCopy clientOrgKey];
  [(MSASProtocol *)self _setClientOrgKeyForRequestBody:dictionary clientOrgKey:clientOrgKey];

  if (enabledCopy)
  {
    v21 = @"1";
  }

  else
  {
    v21 = @"0";
  }

  [dictionary setObject:v21 forKey:@"ispublic"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __64__MSASProtocol_setPublicAccessEnabled_forAlbum_completionBlock___block_invoke;
  v23[3] = &unk_278E92430;
  v24 = blockCopy;
  v22 = blockCopy;
  [(MSASProtocol *)self sendURLRequest:v16 bodyObj:dictionary completionBlock:v23];
}

- (void)addComment:(id)comment toAssetCollection:(id)collection inAlbum:(id)album albumURLString:(id)string completionBlock:(id)block
{
  commentCopy = comment;
  collectionCopy = collection;
  albumCopy = album;
  stringCopy = string;
  blockCopy = block;
  if (stringCopy)
  {
    [MEMORY[0x277CBEBC0] URLWithString:stringCopy];
  }

  else
  {
    [(MSASProtocol *)self baseURL];
  }
  v17 = ;
  v18 = MEMORY[0x277CBAB50];
  v38 = v17;
  v19 = [(MSASProtocol *)self _addCommentURLWithBaseURL:v17];
  v20 = [v18 requestWithURL:v19];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  gUID = [albumCopy GUID];

  if (gUID)
  {
    gUID2 = [albumCopy GUID];
    [dictionary setObject:gUID2 forKey:@"albumguid"];
  }

  clientOrgKey = [albumCopy clientOrgKey];
  [(MSASProtocol *)self _setClientOrgKeyForRequestBody:dictionary clientOrgKey:clientOrgKey];

  gUID3 = [collectionCopy GUID];

  if (gUID3)
  {
    gUID4 = [collectionCopy GUID];
    [dictionary setObject:gUID4 forKey:@"assetguid"];
  }

  timestamp = [commentCopy timestamp];

  if (timestamp)
  {
    v28 = MEMORY[0x277CCACA8];
    timestamp2 = [commentCopy timestamp];
    [timestamp2 timeIntervalSinceReferenceDate];
    v31 = [v28 stringWithFormat:@"%f", v30];
    [dictionary setObject:v31 forKey:@"commenttimestamp"];
  }

  if ([commentCopy isBatchComment])
  {
    v32 = @"1";
  }

  else
  {
    v32 = @"0";
  }

  [dictionary setObject:v32 forKey:@"isbatchcomment"];
  if ([commentCopy isLike])
  {
    [dictionary setObject:@"1" forKey:@"commenttype"];
  }

  else
  {
    [dictionary setObject:@"0" forKey:@"commenttype"];
    content = [commentCopy content];

    if (content)
    {
      content2 = [commentCopy content];
      [dictionary setObject:content2 forKey:@"comment"];
    }
  }

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __84__MSASProtocol_addComment_toAssetCollection_inAlbum_albumURLString_completionBlock___block_invoke;
  v39[3] = &unk_278E92380;
  v39[4] = self;
  v40 = albumCopy;
  v41 = collectionCopy;
  v42 = blockCopy;
  v35 = blockCopy;
  v36 = collectionCopy;
  v37 = albumCopy;
  [(MSASProtocol *)self sendURLRequest:v20 bodyObj:dictionary completionBlock:v39];
}

void __84__MSASProtocol_addComment_toAssetCollection_inAlbum_albumURLString_completionBlock___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v25 = [v9 objectForKey:@"commentposition"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 objectForKey:@"commentposition"];

      if (v11)
      {
        (*(a1[7] + 16))(a1[7], 0, [v11 intValue]);
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
    }

    v26 = a1[7];
    v27 = MEMORY[0x277CCA9B8];
    v11 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_COMMENT_NO_INDEX");
    v28 = [v27 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:12 description:v11 underlyingError:0];
    (*(v26 + 16))(v26, v28, 0);

    goto LABEL_23;
  }

  if ([v8 MSContainsErrorWithDomain:*MEMORY[0x277CBACE8] code:403])
  {
    v11 = v8;
    v12 = a1[4];
    v38 = 0;
    v13 = [v12 responseDict:v10 containsLimitErrorCode:@"4034" outMaxAllowed:&v38];
    v14 = v38;
    if (v13)
    {
      v15 = [MEMORY[0x277CBEB38] dictionary];
      v16 = v15;
      v17 = a1[5];
      if (v17)
      {
        [v15 setObject:v17 forKey:@"album"];
      }

      v36 = v7;
      v18 = a1[6];
      if (v18)
      {
        [v16 setObject:v18 forKey:@"assetCollection"];
      }

      v35 = MEMORY[0x277CCA9B8];
      v19 = MEMORY[0x277CCACA8];
      v20 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_LIMIT_COMMENTS_P_COUNT");
      v21 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v14, "intValue")}];
      v22 = [v19 stringWithFormat:v20, v21];
      v23 = [v35 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:16 description:v22 underlyingError:v11 additionalUserInfo:v16];

      v11 = v21;
      v24 = v14;
    }

    else
    {
      v29 = a1[4];
      v37 = v14;
      v30 = [v29 responseDict:v10 containsLimitErrorCode:@"4035" outMaxAllowed:&v37];
      v24 = v37;

      if (!v30)
      {
LABEL_22:
        (*(a1[7] + 16))();

        goto LABEL_23;
      }

      v31 = [MEMORY[0x277CBEB38] dictionary];
      v16 = v31;
      v32 = a1[5];
      if (v32)
      {
        [v31 setObject:v32 forKey:@"album"];
      }

      v36 = v7;
      v33 = a1[6];
      if (v33)
      {
        [v16 setObject:v33 forKey:@"assetCollection"];
      }

      v34 = MEMORY[0x277CCA9B8];
      v20 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_LIMIT_COMMENT_LENGTH");
      v23 = [v34 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:17 description:v20 underlyingError:v11 additionalUserInfo:v16];
    }

    v11 = v23;
    v7 = v36;
    goto LABEL_22;
  }

  (*(a1[7] + 16))();
LABEL_24:
}

- (void)removeSharingRelationships:(id)relationships fromAlbum:(id)album completionBlock:(id)block
{
  v37 = *MEMORY[0x277D85DE8];
  relationshipsCopy = relationships;
  albumCopy = album;
  blockCopy = block;
  v10 = MEMORY[0x277CBAB50];
  _unshareURL = [(MSASProtocol *)self _unshareURL];
  v29 = [v10 requestWithURL:_unshareURL];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  gUID = [albumCopy GUID];

  if (gUID)
  {
    gUID2 = [albumCopy GUID];
    [dictionary setObject:gUID2 forKey:@"albumguid"];
  }

  clientOrgKey = [albumCopy clientOrgKey];
  [(MSASProtocol *)self _setClientOrgKeyForRequestBody:dictionary clientOrgKey:clientOrgKey];

  ctag = [albumCopy ctag];

  if (ctag)
  {
    ctag2 = [albumCopy ctag];
    [dictionary setObject:ctag2 forKey:@"albumctag"];
  }

  v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(relationshipsCopy, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = relationshipsCopy;
  v20 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v32 + 1) + 8 * i);
        gUID3 = [v24 GUID];

        if (gUID3)
        {
          gUID4 = [v24 GUID];
          [v18 addObject:gUID4];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v21);
  }

  [dictionary setObject:v18 forKey:@"invitations"];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __69__MSASProtocol_removeSharingRelationships_fromAlbum_completionBlock___block_invoke;
  v30[3] = &unk_278E92430;
  v31 = blockCopy;
  v27 = blockCopy;
  [(MSASProtocol *)self sendURLRequest:v29 bodyObj:dictionary completionBlock:v30];
}

- (void)addSharingRelationships:(id)relationships toAlbum:(id)album completionBlock:(id)block
{
  v55 = *MEMORY[0x277D85DE8];
  relationshipsCopy = relationships;
  albumCopy = album;
  blockCopy = block;
  v10 = MEMORY[0x277CBAB50];
  _shareURL = [(MSASProtocol *)self _shareURL];
  v40 = [v10 requestWithURL:_shareURL];

  v12 = 0x277CBE000uLL;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  gUID = [albumCopy GUID];

  if (gUID)
  {
    gUID2 = [albumCopy GUID];
    [dictionary setObject:gUID2 forKey:@"albumguid"];
  }

  clientOrgKey = [albumCopy clientOrgKey];
  selfCopy = self;
  [(MSASProtocol *)self _setClientOrgKeyForRequestBody:dictionary clientOrgKey:clientOrgKey];

  ctag = [albumCopy ctag];

  if (ctag)
  {
    ctag2 = [albumCopy ctag];
    [dictionary setObject:ctag2 forKey:@"albumctag"];
  }

  v37 = albumCopy;
  v38 = dictionary;
  v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(relationshipsCopy, "count")}];
  v43 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(relationshipsCopy, "count")}];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = relationshipsCopy;
  v45 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v45)
  {
    v44 = *v51;
    v41 = v19;
    do
    {
      v20 = 0;
      do
      {
        if (*v51 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v50 + 1) + 8 * v20);
        dictionary2 = [*(v12 + 2872) dictionary];
        gUID3 = [v21 GUID];
        if (gUID3)
        {
          [dictionary2 setObject:gUID3 forKey:@"invitationguid"];
          [v43 addObject:gUID3];
        }

        phones = [v21 phones];
        emails = [v21 emails];
        if (phones && [phones count])
        {
          [dictionary2 setObject:phones forKey:@"phonenumbers"];
        }

        if (emails && [emails count])
        {
          email = [emails objectAtIndex:0];
          [dictionary2 setObject:email forKey:@"email"];
          if ([emails count] >= 2)
          {
            v27 = [MEMORY[0x277CBEB58] setWithArray:emails];
            [v27 removeObject:email];
            if ([v27 count])
            {
              [v27 allObjects];
              v29 = v28 = v12;
              [dictionary2 setObject:v29 forKey:@"alternateemails"];

              v12 = v28;
              v19 = v41;
            }
          }
        }

        else
        {
          email = [v21 email];
          if (email)
          {
            [dictionary2 setObject:email forKey:@"email"];
          }
        }

        firstName = [v21 firstName];
        if (firstName)
        {
          [dictionary2 setObject:firstName forKey:@"firstname"];
        }

        lastName = [v21 lastName];
        if (lastName)
        {
          [dictionary2 setObject:lastName forKey:@"lastname"];
        }

        fullName = [v21 fullName];
        if (fullName)
        {
          [dictionary2 setObject:fullName forKey:@"fullname"];
        }

        [v19 addObject:dictionary2];

        ++v20;
      }

      while (v45 != v20);
      v45 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v45);
  }

  [v38 setObject:v19 forKey:@"invitations"];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __64__MSASProtocol_addSharingRelationships_toAlbum_completionBlock___block_invoke;
  v46[3] = &unk_278E92380;
  v46[4] = selfCopy;
  v47 = v37;
  v48 = v43;
  v49 = blockCopy;
  v33 = blockCopy;
  v34 = v43;
  v35 = v37;
  [(MSASProtocol *)selfCopy sendURLRequest:v40 bodyObj:v38 completionBlock:v46];
}

void __64__MSASProtocol_addSharingRelationships_toAlbum_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__7575;
  v38[4] = __Block_byref_object_dispose__7576;
  v39 = [MEMORY[0x277CBEB38] dictionary];
  if (!v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v9;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v16 = v21;
    if (!v21)
    {
      v13 = 0;
      v19 = 0;
LABEL_19:

      v23 = v13;
      goto LABEL_20;
    }

    v22 = [(__CFString *)v21 objectForKey:@"sharinginfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [(__CFString *)v16 objectForKey:@"sharinginfo"];
    }

    else
    {
      v17 = 0;
    }

    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x3032000000;
    v34[3] = __Block_byref_object_copy__7575;
    v34[4] = __Block_byref_object_dispose__7576;
    v35 = 0;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __64__MSASProtocol_addSharingRelationships_toAlbum_completionBlock___block_invoke_2;
    v29[3] = &unk_278E92408;
    v32 = v34;
    v30 = *(a1 + 40);
    v31 = *(a1 + 48);
    v33 = v38;
    [v17 enumerateObjectsUsingBlock:v29];

    _Block_object_dispose(v34, 8);
    v13 = 0;
    v19 = 0;
LABEL_18:

    goto LABEL_19;
  }

  if ([v10 MSContainsErrorWithDomain:*MEMORY[0x277CBACE8] code:403])
  {
    v11 = *(a1 + 32);
    v37 = 0;
    v12 = [v11 responseDict:v9 containsLimitErrorCode:@"4031" outMaxAllowed:&v37];
    v13 = v37;
    if (v12)
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = MEMORY[0x277CCACA8];
      v16 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_LIMIT_SUBSCRIBERS_P_COUNT");
      v17 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "intValue")}];
      v18 = [v15 stringWithFormat:v16, v17];
      v19 = [v14 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:19 description:v18 underlyingError:v10];

      goto LABEL_18;
    }

    v24 = *(a1 + 32);
    v36 = v13;
    v25 = [v24 responseDict:v9 containsLimitErrorCode:@"4033" outMaxAllowed:&v36];
    v23 = v36;

    if (v25)
    {
      v26 = MEMORY[0x277CCA9B8];
      v27 = MEMORY[0x277CCACA8];
      v16 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_LIMIT_INVITATIONS_P_COUNT");
      v17 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v23, "intValue")}];
      v28 = [v27 stringWithFormat:v16, v17];
      v19 = [v26 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:20 description:v28 underlyingError:v10];

      v13 = v23;
      goto LABEL_18;
    }
  }

  else
  {
    v23 = 0;
  }

  v19 = v10;
LABEL_20:
  (*(*(a1 + 56) + 16))();
  _Block_object_dispose(v38, 8);
}

void __64__MSASProtocol_addSharingRelationships_toAlbum_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 objectForKey:@"sharingtype"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 objectForKey:@"sharingtype"];

    if (v7 && [v7 isEqualToString:@"owned"])
    {
      v8 = [MSASInvitation MSASPInvitationFromProtocolDictionary:v5];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = [*(*(*(a1 + 48) + 8) + 40) fullName];
      if (v11)
      {
        [*(a1 + 32) setOwnerFullName:v11];
      }

      v12 = [*(*(*(a1 + 48) + 8) + 40) email];
      if (v12)
      {
        [*(a1 + 32) setOwnerEmail:v12];
      }

      goto LABEL_33;
    }
  }

  else
  {

    v7 = 0;
  }

  v13 = [v5 objectForKey:@"invitationguid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v5 objectForKey:@"invitationguid"];

    if (v14 && [*(a1 + 40) containsObject:v14])
    {
      v15 = [v5 objectForKey:@"phonenumbers"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v5 objectForKey:@"phonenumbers"];

        if (v16)
        {
          v27 = v14;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v17 = v16;
          v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v29;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v29 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v28 + 1) + 8 * i);
                v23 = [v22 objectForKey:@"phonenumber"];
                v24 = [v22 objectForKey:@"invitationtoken"];
                v25 = v24;
                if (v23)
                {
                  v26 = v24 == 0;
                }

                else
                {
                  v26 = 1;
                }

                if (!v26)
                {
                  [*(*(*(a1 + 56) + 8) + 40) setObject:v24 forKey:v23];
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
            }

            while (v19);
          }

          v14 = v27;
        }
      }

      else
      {
      }
    }
  }

  else
  {

    v14 = 0;
  }

LABEL_33:
}

- (void)sendUploadCompleteSuccessfulAssetCollections:(id)collections failedAssetCollections:(id)assetCollections album:(id)album completionBlock:(id)block
{
  v95 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  assetCollectionsCopy = assetCollections;
  albumCopy = album;
  blockCopy = block;
  uRLString = [albumCopy URLString];
  if (uRLString)
  {
    v13 = MEMORY[0x277CBEBC0];
    uRLString2 = [albumCopy URLString];
    baseURL = [v13 URLWithString:uRLString2];
  }

  else
  {
    baseURL = [(MSASProtocol *)self baseURL];
  }

  v60 = albumCopy;

  v16 = MEMORY[0x277CBAB50];
  v59 = baseURL;
  v17 = [(MSASProtocol *)self _uploadCompleteURLWithBaseURL:baseURL];
  v57 = [v16 requestWithURL:v17];

  array = [MEMORY[0x277CBEB18] array];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = collectionsCopy;
  v64 = [obj countByEnumeratingWithState:&v82 objects:v94 count:16];
  if (v64)
  {
    v62 = *v83;
    do
    {
      for (i = 0; i != v64; i = i + 1)
      {
        if (*v83 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v82 + 1) + 8 * i);
        metadata = [v19 metadata];
        v21 = [metadata objectForKey:@"pendingUploadGUID"];

        if (v21)
        {
          [dictionary setObject:v19 forKey:v21];
          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          [dictionary2 setObject:v21 forKey:@"pendinguploadid"];
          [dictionary2 setObject:@"1" forKey:@"promote"];
          v23 = MEMORY[0x277CBEB18];
          assets = [v19 assets];
          v25 = [v23 arrayWithCapacity:{objc_msgSend(assets, "count")}];

          if ([v19 isVideo])
          {
            [dictionary2 setObject:@"video" forKey:@"mediaAssetType"];
          }

          v66 = v21;
          v67 = i;
          if ([v19 isPhotoIris])
          {
            [dictionary2 setObject:@"videoCompl" forKey:@"mediaAssetType"];
          }

          v65 = dictionary2;
          v80 = 0u;
          v81 = 0u;
          v79 = 0u;
          v78 = 0u;
          assets2 = [v19 assets];
          v27 = [assets2 countByEnumeratingWithState:&v78 objects:v93 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v79;
            do
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v79 != v29)
                {
                  objc_enumerationMutation(assets2);
                }

                v31 = *(*(&v78 + 1) + 8 * j);
                mMCSReceipt = [v31 MMCSReceipt];

                if (mMCSReceipt)
                {
                  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
                  v34 = [v31 metadataValueForKey:@"MSAssetMetadataFileSize"];
                  mMCSReceipt2 = [v31 MMCSReceipt];
                  [dictionary3 setObject:mMCSReceipt2 forKey:@"receipt"];

                  if (v34)
                  {
                    assetCollectionsCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", objc_msgSend(v34, "unsignedLongLongValue"), assetCollectionsCopy];
                    [dictionary3 setObject:assetCollectionsCopy forKey:@"size"];
                  }

                  mMCSHash = [v31 MMCSHash];

                  if (mMCSHash)
                  {
                    mMCSHash2 = [v31 MMCSHash];
                    mSHexString = [mMCSHash2 MSHexString];
                    [dictionary3 setObject:mSHexString forKey:@"checksum"];
                  }

                  [v25 addObject:dictionary3];
                }
              }

              v28 = [assets2 countByEnumeratingWithState:&v78 objects:v93 count:16];
            }

            while (v28);
          }

          if ([v25 count])
          {
            [v65 setObject:v25 forKey:@"files"];
            [array addObject:v65];
          }

          v21 = v66;
          i = v67;
        }
      }

      v64 = [obj countByEnumeratingWithState:&v82 objects:v94 count:16];
    }

    while (v64);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v68 = assetCollectionsCopy;
  v40 = [v68 countByEnumeratingWithState:&v74 objects:v92 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v75;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v75 != v42)
        {
          objc_enumerationMutation(v68);
        }

        v44 = *(*(&v74 + 1) + 8 * k);
        metadata2 = [v44 metadata];
        v46 = [metadata2 objectForKey:@"pendingUploadGUID"];

        if (v46)
        {
          [dictionary setObject:v44 forKey:v46];
          dictionary4 = [MEMORY[0x277CBEB38] dictionary];
          [dictionary4 setObject:v46 forKey:@"pendinguploadid"];
          [dictionary4 setObject:@"0" forKey:@"promote"];
          [array addObject:dictionary4];
        }
      }

      v41 = [v68 countByEnumeratingWithState:&v74 objects:v92 count:16];
    }

    while (v41);
  }

  dictionary5 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary5 setObject:array forKey:@"assets"];
  gUID = [v60 GUID];

  if (gUID)
  {
    gUID2 = [v60 GUID];
    [dictionary5 setObject:gUID2 forKey:@"albumguid"];
  }

  clientOrgKey = [v60 clientOrgKey];
  [(MSASProtocol *)self _setClientOrgKeyForRequestBody:dictionary5 clientOrgKey:clientOrgKey];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v52 = [obj count];
    v53 = [v68 count];
    *buf = 138543874;
    selfCopy = self;
    v88 = 2048;
    v89 = v52;
    v90 = 2048;
    v91 = v53;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Sending upload complete with %ld successful uploads and %ld failed uploads.", buf, 0x20u);
  }

  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __106__MSASProtocol_sendUploadCompleteSuccessfulAssetCollections_failedAssetCollections_album_completionBlock___block_invoke;
  v70[3] = &unk_278E923B8;
  v71 = dictionary;
  selfCopy2 = self;
  v73 = blockCopy;
  v54 = blockCopy;
  v55 = dictionary;
  [(MSASProtocol *)self sendURLRequest:v57 bodyObj:dictionary5 completionBlock:v70];
}

void __106__MSASProtocol_sendUploadCompleteSuccessfulAssetCollections_failedAssetCollections_album_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v89 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v68 = [MEMORY[0x277CBEB18] array];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  if (!v6)
  {
    if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v65 = v7;
      v9 = v7;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v79 objects:v88 count:16];
      if (!v10)
      {
        goto LABEL_53;
      }

      v11 = v10;
      v74 = *v80;
      v12 = 0x277CCA000uLL;
      v71 = v9;
      v72 = a1;
      while (1)
      {
        v13 = 0;
        v73 = v11;
        do
        {
          if (*v80 != v74)
          {
            objc_enumerationMutation(v9);
          }

          v14 = v8;
          v15 = *(*(&v79 + 1) + 8 * v13);
          if (v15)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v23 = MEMORY[0x277CCA9B8];
              v24 = *(v12 + 3240);
              v17 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_BAD_FIELD_P_FIELD");
              v25 = [v24 stringWithFormat:v17, @"pending upload ID"];
              v26 = [v23 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:10 description:v25];

              goto LABEL_47;
            }
          }

          v16 = [*(a1 + 32) objectForKey:v15];
          if (v16)
          {
            v17 = v16;
            v18 = [v9 objectForKey:v15];
            if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v19 = [v18 objectForKey:@"assetguid"];
              if (v19)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v30 = v12;
                  v31 = MEMORY[0x277CCA9B8];
                  v32 = *(v30 + 3240);
                  v20 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_BAD_FIELD_P_FIELD");
                  v21 = [v32 stringWithFormat:v20, @"assetguid"];
                  v26 = [v31 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:10 description:v21];
                  goto LABEL_42;
                }
              }

              v20 = [v18 objectForKey:@"assetctag"];
              if (v20)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v33 = v12;
                  v34 = MEMORY[0x277CCA9B8];
                  v35 = *(v33 + 3240);
                  v21 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_BAD_FIELD_P_FIELD");
                  v36 = [v35 stringWithFormat:v21, @"assetctag"];
                  v26 = [v34 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:10 description:v36];
                  v37 = v36;
                  goto LABEL_41;
                }
              }

              v21 = [v18 objectForKey:@"success"];
              if (v21)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v67 = MEMORY[0x277CCA9B8];
                  v44 = *(v12 + 3240);
                  v70 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_BAD_FIELD_P_FIELD");
                  v45 = [v44 stringWithFormat:v70, @"success"];
                  v26 = [v67 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:10 description:v45];

                  v37 = v70;
                  goto LABEL_41;
                }
              }

              v66 = [v21 intValue];
              v22 = [v18 objectForKey:@"assetnumber"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v69 = [v18 objectForKey:@"assetnumber"];
              }

              else
              {
                v69 = 0;
              }

              v38 = [(__CFString *)v17 GUID];
              v39 = [v38 isEqualToString:v19];

              if (v39)
              {
                if (v66)
                {
                  if (v20)
                  {
                    [(__CFString *)v17 setCtag:v20];
                  }

                  v37 = v69;
                  if (v69)
                  {
                    -[__CFString setPhotoNumber:](v17, "setPhotoNumber:", [v69 longLongValue]);
                    v37 = v69;
                  }

                  v26 = 0;
LABEL_41:

LABEL_42:
LABEL_43:

                  if (v26)
                  {
                    [v14 setObject:v26 forKey:v17];
                  }

                  else
                  {
                    [v68 addObject:v17];
                  }

                  v9 = v71;
                  a1 = v72;
                  v11 = v73;
                  [*(v72 + 32) removeObjectForKey:v15];
LABEL_47:

                  if (v26)
                  {
                    v8 = v14;
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      v47 = *(a1 + 40);
                      *buf = 138543618;
                      v85 = v47;
                      v86 = 2114;
                      v87 = v26;
                      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Skipping asset collection in response. Error: %{public}@", buf, 0x16u);
                    }
                  }

                  else
                  {
                    v8 = v14;
                  }

                  goto LABEL_51;
                }

                v46 = MEMORY[0x277CCA9B8];
                v41 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_COLL_REJECTED");
                v42 = v46;
                v43 = 8;
              }

              else
              {
                v40 = MEMORY[0x277CCA9B8];
                v41 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_MISMATCHED_COLLECTION");
                v42 = v40;
                v43 = 6;
              }

              v26 = [v42 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:v43 description:v41];

              v37 = v69;
              goto LABEL_41;
            }

            v27 = v12;
            v28 = MEMORY[0x277CCA9B8];
            v29 = *(v27 + 3240);
            v19 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_BAD_FIELD_P_FIELD");
            v20 = [v29 stringWithFormat:v19, v15];
            v26 = [v28 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:10 description:v20];
            goto LABEL_43;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v48 = *(a1 + 40);
            *buf = 138543618;
            v85 = v48;
            v86 = 2114;
            v87 = v15;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Ignoring unknown pending upload ID %{public}@", buf, 0x16u);
          }

          v26 = 0;
LABEL_51:

          ++v13;
          v12 = 0x277CCA000;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v79 objects:v88 count:16];
        if (!v11)
        {
LABEL_53:

          v6 = 0;
          v7 = v65;
          goto LABEL_55;
        }
      }
    }

    v49 = MEMORY[0x277CCA9B8];
    v50 = MEMORY[0x277CCACA8];
    v51 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_BAD_FIELD_P_FIELD");
    v52 = [v50 stringWithFormat:v51, @"response body"];
    v6 = [v49 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:10 description:v52];
  }

LABEL_55:
  if ([*(a1 + 32) count])
  {
    v53 = v7;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v63 = *(a1 + 40);
      v64 = [*(a1 + 32) count];
      *buf = 138543618;
      v85 = v63;
      v86 = 2048;
      v87 = v64;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Found %ld orphaned asset collections.", buf, 0x16u);
    }

    v54 = MEMORY[0x277CCA9B8];
    v55 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_COLL_IGNORED");
    v56 = [v54 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:9 description:v55];

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v57 = *(a1 + 32);
    v58 = [v57 countByEnumeratingWithState:&v75 objects:v83 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v76;
      do
      {
        for (i = 0; i != v59; ++i)
        {
          if (*v76 != v60)
          {
            objc_enumerationMutation(v57);
          }

          v62 = [*(a1 + 32) objectForKey:*(*(&v75 + 1) + 8 * i)];
          [v8 setObject:v56 forKey:v62];
        }

        v59 = [v57 countByEnumeratingWithState:&v75 objects:v83 count:16];
      }

      while (v59);
    }

    v7 = v53;
  }

  (*(*(a1 + 48) + 16))();
}

- (BOOL)responseDict:(id)dict containsLimitErrorCode:(id)code outMaxAllowed:(id *)allowed
{
  dictCopy = dict;
  codeCopy = code;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = dictCopy;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = v10;
  if (v10)
  {
    v12 = [v10 objectForKey:@"code"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v14 = [v11 objectForKey:@"code"];

      if (!v14 || ![v14 isEqualToString:codeCopy])
      {
        isKindOfClass = 0;
        goto LABEL_16;
      }

      v15 = [v11 objectForKey:@"maxallowed"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v11 objectForKey:@"maxallowed"];

        if (allowed && v12)
        {
          v16 = v12;
          *allowed = v12;
        }
      }

      else
      {

        v12 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_16:
    goto LABEL_17;
  }

  isKindOfClass = 0;
LABEL_17:

  return isKindOfClass & 1;
}

- (void)getVideoURL:(id)l forAssetCollectionWithGUID:(id)d inAlbumWithGUID:(id)iD albumURLString:(id)string withClientOrgKey:(id)key completionBlock:(id)block
{
  v40 = *MEMORY[0x277D85DE8];
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  stringCopy = string;
  keyCopy = key;
  blockCopy = block;
  if (stringCopy)
  {
    [MEMORY[0x277CBEBC0] URLWithString:stringCopy];
  }

  else
  {
    [(MSASProtocol *)self baseURL];
  }
  v20 = ;
  v21 = MEMORY[0x277CBAB50];
  v22 = [(MSASProtocol *)self _getVideoURLWithBaseURL:v20];
  v23 = [v21 requestWithURL:v22];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v31 = iDCopy;
  [dictionary setObject:iDCopy forKey:@"albumguid"];
  v30 = keyCopy;
  [(MSASProtocol *)self _setClientOrgKeyForRequestBody:dictionary clientOrgKey:keyCopy];
  [dictionary setObject:dCopy forKey:@"assetguid"];
  mMCSHash = [lCopy MMCSHash];
  mSHexString = [mMCSHash MSHexString];
  [dictionary setObject:mSHexString forKey:@"checksum"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v38 = 2114;
    v39 = lCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Getting video URL for asset %{public}@.", buf, 0x16u);
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __119__MSASProtocol_getVideoURL_forAssetCollectionWithGUID_inAlbumWithGUID_albumURLString_withClientOrgKey_completionBlock___block_invoke;
  v32[3] = &unk_278E92380;
  v32[4] = self;
  v33 = dCopy;
  v34 = lCopy;
  v35 = blockCopy;
  v27 = blockCopy;
  v28 = lCopy;
  v29 = dCopy;
  [(MSASProtocol *)self sendURLRequest:v23 bodyObj:dictionary completionBlock:v32];
}

void __119__MSASProtocol_getVideoURL_forAssetCollectionWithGUID_inAlbumWithGUID_albumURLString_withClientOrgKey_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v77 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__7575;
  v71 = __Block_byref_object_dispose__7576;
  v11 = v8;
  v72 = v11;
  if (v11)
  {
    if ([v7 statusCode] == 400)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 32);
        *buf = 138543618;
        v74 = v12;
        v75 = 2114;
        v76 = v11;
        v13 = MEMORY[0x277D86220];
        v14 = "%{public}@: Bad request to server. Error: %{public}@";
LABEL_18:
        v28 = 22;
LABEL_19:
        _os_log_error_impl(&dword_245B99000, v13, OS_LOG_TYPE_ERROR, v14, buf, v28);
      }
    }

    else if ([v7 statusCode] == 404)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        *buf = 138543618;
        v74 = v16;
        v75 = 2114;
        v76 = v11;
        v13 = MEMORY[0x277D86220];
        v14 = "%{public}@: Album does not exist on server. Error: %{public}@";
        goto LABEL_18;
      }
    }

    else if ([v7 statusCode] == 412)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v27 = *(a1 + 32);
        *buf = 138543618;
        v74 = v27;
        v75 = 2114;
        v76 = v11;
        v13 = MEMORY[0x277D86220];
        v14 = "%{public}@: Precondition failed. Error: %{public}@";
        goto LABEL_18;
      }
    }

    else
    {
      v30 = [v7 statusCode];
      v31 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v30 == 509)
      {
        if (v31)
        {
          v57 = *(a1 + 32);
          *buf = 138543362;
          v74 = v57;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Bandwidth Limit Exceeded", buf, 0xCu);
        }

        v32 = MEMORY[0x277CCA9B8];
        v33 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_LIMIT_BANDWIDTH");
        v34 = [v32 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:21 description:v33 underlyingError:v11];
        v35 = v68[5];
        v68[5] = v34;

        goto LABEL_34;
      }

      if (v31)
      {
        *buf = 138543362;
        v74 = v11;
        v13 = MEMORY[0x277D86220];
        v14 = "Unknown server error response %{public}@";
        v28 = 12;
        goto LABEL_19;
      }
    }

LABEL_34:
    v25 = 0;
    goto LABEL_49;
  }

  v15 = [v9 objectForKey:@"assetguid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v60 = [v9 objectForKey:@"assetguid"];
  }

  else
  {
    v60 = 0;
  }

  if (([*(a1 + 40) isEqualToString:v60] & 1) == 0)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_MISMATCHED_COLLECTION");
    v24 = [v22 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:6 description:v23];
    v59 = v23;
    v25 = 0;
    v26 = v68[5];
    v68[5] = v24;
    goto LABEL_48;
  }

  v17 = [*(a1 + 48) MMCSHash];
  v18 = [v17 MSHexString];
  v19 = [v9 objectForKey:v18];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [*(a1 + 48) MMCSHash];
    v21 = [v20 MSHexString];
    v59 = [v9 objectForKey:v21];
  }

  else
  {
    v59 = 0;
  }

  if (v59)
  {
    v29 = [MEMORY[0x277CBEBC0] URLWithString:?];
    if (v29)
    {
      [v10 addObject:v29];
      goto LABEL_38;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v56 = *(a1 + 32);
      *buf = 138543618;
      v74 = v56;
      v75 = 2114;
      v76 = v59;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unable to create URL with server url string %{public}@", buf, 0x16u);
    }

    v40 = MEMORY[0x277CCA9B8];
    v41 = MEMORY[0x277CCACA8];
    v42 = MSCFCopyLocalizedString(@"RROR_SHARING_BAD_FIELD_P_FIELD");
    v43 = [v41 stringWithFormat:v42, v59];
    v44 = [*(a1 + 32) HTTPErrorWithStatusCode:{objc_msgSend(v7, "statusCode")}];
    v45 = [v40 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:4 description:v43 underlyingError:v44];
    v46 = v68[5];
    v68[5] = v45;

    v29 = 0;
  }

  else
  {
    v58 = [*(a1 + 48) MMCSHash];
    v36 = [v58 MSHexString];
    v37 = [v9 objectForKey:v36];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [*(a1 + 48) MMCSHash];
      v39 = [v38 MSHexString];
      v29 = [v9 objectForKey:v39];
    }

    else
    {
      v29 = 0;
    }

    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __119__MSASProtocol_getVideoURL_forAssetCollectionWithGUID_inAlbumWithGUID_albumURLString_withClientOrgKey_completionBlock___block_invoke_422;
    v61[3] = &unk_278E923E0;
    v47 = v10;
    v48 = *(a1 + 32);
    v62 = v47;
    v63 = v48;
    v64 = 0;
    v66 = &v67;
    v65 = v7;
    [v29 enumerateObjectsUsingBlock:v61];

    v42 = v62;
  }

LABEL_38:
  v49 = [v9 objectForKey:@"url_expiry"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_43;
  }

  v26 = [v9 objectForKey:@"url_expiry"];

  if (!v26)
  {
LABEL_43:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v55 = *(a1 + 32);
      *buf = 138543618;
      v74 = v55;
      v75 = 2114;
      v76 = v10;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Server does not return expiry for URLs %{public}@.", buf, 0x16u);
    }

    v26 = 0;
    goto LABEL_46;
  }

  v50 = objc_alloc_init(MEMORY[0x277CCA968]);
  v51 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US"];
  [v50 setLocale:v51];
  [v50 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
  v52 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v50 setTimeZone:v52];

  v25 = [v50 dateFromString:v26];

  if (!v25)
  {
LABEL_46:
    v25 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1200.0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v54 = *(a1 + 32);
      *buf = 138543362;
      v74 = v54;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Setting to expire in 20 minutes.", buf, 0xCu);
    }
  }

LABEL_48:

LABEL_49:
  v53 = *(a1 + 56);
  if (v53)
  {
    (*(v53 + 16))(v53, v68[5], v10, v25);
  }

  _Block_object_dispose(&v67, 8);
}

void __119__MSASProtocol_getVideoURL_forAssetCollectionWithGUID_inAlbumWithGUID_albumURLString_withClientOrgKey_completionBlock___block_invoke_422(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:a2];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      *buf = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = v13;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unable to create URL with server url string %{public}@", buf, 0x16u);
    }

    v4 = MEMORY[0x277CCA9B8];
    v5 = MEMORY[0x277CCACA8];
    v6 = MSCFCopyLocalizedString(@"RROR_SHARING_BAD_FIELD_P_FIELD");
    v7 = [v5 stringWithFormat:v6, *(a1 + 48)];
    v8 = [*(a1 + 40) HTTPErrorWithStatusCode:{objc_msgSend(*(a1 + 56), "statusCode")}];
    v9 = [v4 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:4 description:v7 underlyingError:v8];
    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

- (void)getUploadTokens:(id)tokens forAssetCollectionWithGUID:(id)d inAlbumWithGUID:(id)iD albumURLString:(id)string completionBlock:(id)block
{
  v55 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  dCopy = d;
  iDCopy = iD;
  stringCopy = string;
  blockCopy = block;
  v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(tokensCopy, "count")}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v13 = tokensCopy;
  v14 = [v13 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = MEMORY[0x277D86220];
    v17 = *v45;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v45 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v44 + 1) + 8 * i);
        mMCSAccessHeader = [v19 MMCSAccessHeader];

        if (mMCSAccessHeader)
        {
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            continue;
          }

          mMCSAccessHeader2 = [v19 MMCSAccessHeader];
          *buf = 138543874;
          selfCopy5 = self;
          v50 = 2114;
          v51 = v19;
          v52 = 2114;
          v53 = mMCSAccessHeader2;
          _os_log_error_impl(&dword_245B99000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Requesting MMCS upload token for asset %{public}@ that already has token %{public}@. Ignoring the request.", buf, 0x20u);
          goto LABEL_11;
        }

        mMCSHash = [v19 MMCSHash];

        if (mMCSHash)
        {
          mMCSAccessHeader2 = [v19 MMCSHash];
          mSHexString = [mMCSAccessHeader2 MSHexString];
          [v12 setObject:v19 forKey:mSHexString];

LABEL_11:
          continue;
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy5 = self;
          v50 = 2114;
          v51 = v19;
          _os_log_error_impl(&dword_245B99000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Empty MMCS hash for asset %{public}@ requesting upload token. Ignoring the request.", buf, 0x16u);
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v15);
  }

  if ([v12 count])
  {
    v24 = dCopy;
    v25 = stringCopy;
    if (stringCopy)
    {
      [MEMORY[0x277CBEBC0] URLWithString:stringCopy];
    }

    else
    {
      [(MSASProtocol *)self baseURL];
    }
    v28 = ;
    v27 = iDCopy;
    v29 = MEMORY[0x277CBAB50];
    v30 = [(MSASProtocol *)self _getUploadTokensURLWithBaseURL:v28];
    v31 = [v29 requestWithURL:v30];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:iDCopy forKey:@"albumguid"];
    [dictionary setObject:dCopy forKey:@"assetguid"];
    allKeys = [v12 allKeys];
    [dictionary setObject:allKeys forKey:@"checksums"];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v34 = [v13 count];
      *buf = 138543874;
      selfCopy5 = self;
      v50 = 2048;
      v51 = v34;
      v52 = 2114;
      v53 = dCopy;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Getting upload tokens for %ld assets of asset collection with GUID %{public}@.", buf, 0x20u);
    }

    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __106__MSASProtocol_getUploadTokens_forAssetCollectionWithGUID_inAlbumWithGUID_albumURLString_completionBlock___block_invoke;
    v40[3] = &unk_278E923B8;
    v41 = v12;
    selfCopy4 = self;
    v26 = blockCopy;
    v43 = blockCopy;
    [(MSASProtocol *)self sendURLRequest:v31 bodyObj:dictionary completionBlock:v40];
  }

  else
  {
    v24 = dCopy;
    v26 = blockCopy;
    v25 = stringCopy;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy5 = self;
      v50 = 2114;
      v51 = v13;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Assets %{public}@ already have upload tokens. Ignoring the request.", buf, 0x16u);
    }

    (*(blockCopy + 2))(blockCopy, 0);
    v27 = iDCopy;
  }
}

void __106__MSASProtocol_getUploadTokens_forAssetCollectionWithGUID_inAlbumWithGUID_albumURLString_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    goto LABEL_28;
  }

  v9 = [v7 objectForKey:@"contenturl"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v10 = 0;
    goto LABEL_6;
  }

  v10 = [v8 objectForKey:@"contenturl"];

  if (!v10)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v11 = [MEMORY[0x277CBEBC0] URLWithString:v10];
LABEL_7:
  v12 = [v8 objectForKey:@"assetguid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v8 objectForKey:@"assetguid"];

    if (v13)
    {
      v14 = [v8 objectForKey:@"contenttokens"];
      objc_opt_class();
      v29 = v8;
      v27 = v13;
      v28 = v10;
      if (objc_opt_isKindOfClass())
      {
        v15 = [v8 objectForKey:{@"contenttokens", v13}];
      }

      else
      {
        v15 = 0;
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v30 objects:v40 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = MEMORY[0x277D86220];
        v20 = *v31;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v31 != v20)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v30 + 1) + 8 * i);
            v23 = [*(a1 + 32) objectForKey:{v22, v27}];
            if (v23)
            {
              v24 = [v16 objectForKey:v22];
              [v23 setMMCSAccessHeader:v24];
              [v23 setMMCSURL:v11];
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                v25 = *(a1 + 40);
                *buf = 138543874;
                v35 = v25;
                v36 = 2114;
                v37 = v24;
                v38 = 2114;
                v39 = v23;
                _os_log_error_impl(&dword_245B99000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Obtained upload token %{public}@ for asset %{public}@.", buf, 0x20u);
              }
            }

            else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v26 = *(a1 + 40);
              *buf = 138543618;
              v35 = v26;
              v36 = 2114;
              v37 = v22;
              _os_log_error_impl(&dword_245B99000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Did not find asset matching hash %{public}@ when requesting upload token.", buf, 0x16u);
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v30 objects:v40 count:16];
        }

        while (v18);
      }

      v8 = v29;
      v6 = 0;
      v10 = v28;
    }
  }

  else
  {
  }

LABEL_28:
  (*(*(a1 + 48) + 16))();
}

- (void)putAssetCollections:(id)collections intoAlbum:(id)album albumURLString:(id)string completionBlock:(id)block
{
  v50 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  albumCopy = album;
  stringCopy = string;
  blockCopy = block;
  v33 = stringCopy;
  if (stringCopy)
  {
    [MEMORY[0x277CBEBC0] URLWithString:stringCopy];
  }

  else
  {
    [(MSASProtocol *)self baseURL];
  }
  v14 = ;
  v15 = MEMORY[0x277CBAB50];
  v32 = v14;
  v16 = [(MSASProtocol *)self _putAssetsURLWithBaseURL:v14];
  v31 = [v15 requestWithURL:v16];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  gUID = [albumCopy GUID];
  [dictionary setObject:gUID forKey:@"albumguid"];

  clientOrgKey = [albumCopy clientOrgKey];
  [(MSASProtocol *)self _setClientOrgKeyForRequestBody:dictionary clientOrgKey:clientOrgKey];

  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(collectionsCopy, "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v21 = collectionsCopy;
  v22 = [v21 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v40;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(v21);
        }

        mSASPProtocolDictionary = [*(*(&v39 + 1) + 8 * i) MSASPProtocolDictionary];
        [v20 addObject:mSASPProtocolDictionary];
      }

      v23 = [v21 countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v23);
  }

  [dictionary setObject:v20 forKey:@"assets"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v27 = [v21 count];
    *buf = 138543874;
    selfCopy = self;
    v45 = 2048;
    v46 = v27;
    v47 = 2114;
    v48 = albumCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Sending metadata for %ld photos into album %{public}@.", buf, 0x20u);
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __77__MSASProtocol_putAssetCollections_intoAlbum_albumURLString_completionBlock___block_invoke;
  v34[3] = &unk_278E92380;
  v35 = v21;
  selfCopy2 = self;
  v37 = albumCopy;
  v38 = blockCopy;
  v28 = blockCopy;
  v29 = albumCopy;
  v30 = v21;
  [(MSASProtocol *)self sendURLRequest:v31 bodyObj:dictionary completionBlock:v34];
}

void __77__MSASProtocol_putAssetCollections_intoAlbum_albumURLString_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v163 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = v7;
  v10 = v6;
  v11 = [*(a1 + 32) mutableCopy];
  v104 = [MEMORY[0x277CBEB18] array];
  [MEMORY[0x277CBEB38] dictionary];
  v112 = v111 = a1;
  v101 = v10;
  v102 = v11;
  if (!v10)
  {
    v25 = [v9 objectForKey:@"contenturl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [v9 objectForKey:@"contenturl"];

      if (v26)
      {
        v100 = v26;
        v103 = [MEMORY[0x277CBEBC0] URLWithString:v26];
        goto LABEL_18;
      }
    }

    else
    {
    }

    v100 = 0;
    v103 = 0;
LABEL_18:
    v35 = [v9 objectForKey:@"assets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = [v9 objectForKey:@"assets"];

      if (v36)
      {
        v99 = v9;
        v110 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
        v144 = 0u;
        v145 = 0u;
        v146 = 0u;
        v147 = 0u;
        v37 = *(a1 + 32);
        v38 = [v37 countByEnumeratingWithState:&v144 objects:v162 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v145;
          do
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v145 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = *(*(&v144 + 1) + 8 * i);
              v43 = [v42 GUID];
              [v110 setObject:v42 forKey:v43];
            }

            v39 = [v37 countByEnumeratingWithState:&v144 objects:v162 count:16];
          }

          while (v39);
        }

        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        obj = v36;
        v108 = [obj countByEnumeratingWithState:&v140 objects:v161 count:16];
        if (v108)
        {
          v107 = *v141;
          do
          {
            for (j = 0; j != v108; ++j)
            {
              if (*v141 != v107)
              {
                objc_enumerationMutation(obj);
              }

              v45 = *(*(&v140 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v109 = j;
                v46 = [v45 objectForKey:@"assetguid"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v52 = v46;
                  j = v109;
                  goto LABEL_86;
                }

                v47 = [v45 objectForKey:@"assetguid"];

                j = v109;
                if (!v47)
                {
                  continue;
                }

                v105 = v47;
                v48 = [v110 objectForKey:v47];
                if (!v48)
                {
                  goto LABEL_85;
                }

                v49 = [v45 objectForKey:@"success"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v50 = [v45 objectForKey:@"success"];
                  v51 = [v50 intValue];
                }

                else
                {
                  v51 = [0 intValue];
                }

                v114 = v48;
                if (v51)
                {
                  v53 = [v45 objectForKey:@"pendinguploadid"];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v54 = [v45 objectForKey:@"pendinguploadid"];

                    v55 = v103;
                    if (v54)
                    {
                      [v48 setMetadataValue:v54 forKey:@"pendingUploadGUID"];
                      v53 = v54;
                      goto LABEL_48;
                    }
                  }

                  else
                  {
                    v55 = v103;
LABEL_48:
                  }

                  v138 = 0u;
                  v139 = 0u;
                  v136 = 0u;
                  v137 = 0u;
                  v61 = [v48 assets];
                  v62 = [v61 countByEnumeratingWithState:&v136 objects:v160 count:16];
                  if (v62)
                  {
                    v63 = v62;
                    v64 = *v137;
                    do
                    {
                      for (k = 0; k != v63; ++k)
                      {
                        if (*v137 != v64)
                        {
                          objc_enumerationMutation(v61);
                        }

                        [*(*(&v136 + 1) + 8 * k) setMMCSURL:v55];
                      }

                      v63 = [v61 countByEnumeratingWithState:&v136 objects:v160 count:16];
                    }

                    while (v63);
                  }

                  v66 = [v45 objectForKey:@"contenttokens"];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v67 = [v45 objectForKey:@"contenttokens"];
                  }

                  else
                  {
                    v67 = 0;
                  }

                  v134 = 0u;
                  v135 = 0u;
                  v132 = 0u;
                  v133 = 0u;
                  v68 = v67;
                  v48 = v114;
                  v116 = [v68 countByEnumeratingWithState:&v132 objects:v159 count:16];
                  if (v116)
                  {
                    v115 = *v133;
                    v113 = v68;
                    do
                    {
                      for (m = 0; m != v116; ++m)
                      {
                        if (*v133 != v115)
                        {
                          objc_enumerationMutation(v68);
                        }

                        v70 = *(*(&v132 + 1) + 8 * m);
                        v71 = [v68 objectForKey:v70];
                        v117 = v70;
                        v72 = [v70 MSHexData];
                        v128 = 0u;
                        v129 = 0u;
                        v130 = 0u;
                        v131 = 0u;
                        v73 = [v48 assets];
                        v74 = [v73 countByEnumeratingWithState:&v128 objects:v158 count:16];
                        if (!v74)
                        {

LABEL_76:
                          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                          {
                            v82 = *(v111 + 40);
                            *buf = 138543618;
                            v151 = v82;
                            v152 = 2114;
                            v153 = v117;
                            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not find matching asset for MMCS hash %{public}@.", buf, 0x16u);
                          }

                          goto LABEL_78;
                        }

                        v75 = v74;
                        v118 = m;
                        v76 = 0;
                        v77 = *v129;
                        do
                        {
                          for (n = 0; n != v75; ++n)
                          {
                            if (*v129 != v77)
                            {
                              objc_enumerationMutation(v73);
                            }

                            v79 = *(*(&v128 + 1) + 8 * n);
                            v80 = [v79 MMCSHash];
                            v81 = [v80 isEqualToData:v72];

                            if (v81)
                            {
                              [v79 setMMCSAccessHeader:v71];
                              v76 = 1;
                            }
                          }

                          v75 = [v73 countByEnumeratingWithState:&v128 objects:v158 count:16];
                        }

                        while (v75);

                        v68 = v113;
                        v48 = v114;
                        m = v118;
                        if ((v76 & 1) == 0)
                        {
                          goto LABEL_76;
                        }

LABEL_78:
                      }

                      v116 = [v68 countByEnumeratingWithState:&v132 objects:v159 count:16];
                    }

                    while (v116);
                  }

                  [v104 addObject:v48];
                  v11 = v102;
LABEL_84:

                  [v11 removeObject:v48];
                  j = v109;
LABEL_85:

                  v52 = v105;
LABEL_86:

                  continue;
                }

                v56 = [v45 objectForKey:@"reason"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v57 = [v45 objectForKey:@"reason"];
                  v58 = [v57 isEqual:@"ASSET_ALREADY_EXISTS"];

                  if (v58)
                  {
                    goto LABEL_46;
                  }

LABEL_82:
                  v59 = @"ERROR_MSAS_PROT_COLL_REJECTED";
                  v60 = 8;
                }

                else
                {
                  v83 = [0 isEqual:@"ASSET_ALREADY_EXISTS"];

                  if ((v83 & 1) == 0)
                  {
                    goto LABEL_82;
                  }

LABEL_46:
                  v59 = @"ERROR_MSAS_PROT_COLL_ALREADY_EXISTS";
                  v60 = 7;
                }

                v84 = MEMORY[0x277CCA9B8];
                v85 = MSCFCopyLocalizedString(v59);
                v68 = [v84 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:v60 description:v85];

                v48 = v114;
                [v112 setObject:v68 forKey:v114];
                goto LABEL_84;
              }
            }

            v108 = [obj countByEnumeratingWithState:&v140 objects:v161 count:16];
          }

          while (v108);
        }

        v9 = v99;
      }
    }

    else
    {
    }

    if (![v11 count])
    {
      v24 = 0;
      goto LABEL_104;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v94 = *(v111 + 40);
      v95 = [v11 count];
      v96 = [*(v111 + 32) count];
      v97 = *(v111 + 48);
      *buf = 138544130;
      v151 = v94;
      v152 = 2048;
      v153 = v95;
      v154 = 2048;
      v155 = v96;
      v156 = 2114;
      v157 = v97;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Server did not respond to %ld assets out of %ld in a putasset request into album %{public}@.", buf, 0x2Au);
    }

    v86 = MEMORY[0x277CCA9B8];
    v87 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_COLL_IGNORED");
    v18 = [v86 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:9 description:v87];

    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v19 = v11;
    v24 = [v19 countByEnumeratingWithState:&v124 objects:v149 count:16];
    if (v24)
    {
      v88 = *v125;
      do
      {
        for (ii = 0; ii != v24; ii = ii + 1)
        {
          if (*v125 != v88)
          {
            objc_enumerationMutation(v19);
          }

          [v112 setObject:v18 forKey:*(*(&v124 + 1) + 8 * ii)];
        }

        v24 = [v19 countByEnumeratingWithState:&v124 objects:v149 count:16];
      }

      while (v24);
    }

LABEL_101:

LABEL_104:
    v15 = v100;
    v10 = v101;
LABEL_105:
    v8 = v111;
    goto LABEL_106;
  }

  if ([v10 MSContainsErrorWithDomain:*MEMORY[0x277CBACE8] code:403])
  {
    v12 = *(a1 + 40);
    v123 = 0;
    v13 = a1;
    v14 = [v12 responseDict:v9 containsLimitErrorCode:@"4036" outMaxAllowed:&v123];
    v15 = v123;
    if (!v14)
    {
      v103 = 0;
      v24 = v10;
      v8 = v13;
      goto LABEL_106;
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = MEMORY[0x277CCACA8];
    v18 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_LIMIT_PHOTOS_P_COUNT");
    v100 = v15;
    v19 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v15, "intValue")}];
    v20 = [v17 stringWithFormat:v18, v19];
    v21 = MEMORY[0x277CBEAC0];
    v22 = [*(v13 + 48) GUID];
    v23 = [v21 dictionaryWithObjectsAndKeys:{v22, @"albumGUID", 0}];
    v24 = [v16 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:14 description:v20 underlyingError:v10 additionalUserInfo:v23];

    v103 = 0;
    goto LABEL_101;
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v15 = v11;
  v27 = [v15 countByEnumeratingWithState:&v119 objects:v148 count:16];
  if (v27)
  {
    v28 = v27;
    v98 = v9;
    v29 = *v120;
    do
    {
      for (jj = 0; jj != v28; ++jj)
      {
        if (*v120 != v29)
        {
          objc_enumerationMutation(v15);
        }

        v31 = *(*(&v119 + 1) + 8 * jj);
        v32 = MEMORY[0x277CCA9B8];
        v33 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_COLL_REJECTED");
        v34 = [v32 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:8 description:v33];

        [v112 setObject:v34 forKey:v31];
      }

      v28 = [v15 countByEnumeratingWithState:&v119 objects:v148 count:16];
    }

    while (v28);
    v103 = 0;
    v11 = v102;
    v24 = v10;
    v9 = v98;
    goto LABEL_105;
  }

  v103 = 0;
  v24 = v10;
LABEL_106:

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v90 = *(v8 + 40);
    v91 = [*(v8 + 32) count];
    v92 = *(v111 + 48);
    v93 = [v24 MSVerboseDescription];
    *buf = 138544130;
    v151 = v90;
    v152 = 2048;
    v153 = v91;
    v8 = v111;
    v154 = 2114;
    v155 = v92;
    v156 = 2114;
    v157 = v93;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Finished sending metadata for %ld photos into album %{public}@. Error: %{public}@", buf, 0x2Au);

    v10 = v101;
  }

  (*(*(v8 + 56) + 16))();
}

- (void)updateAlbum:(id)album albumURLString:(id)string completionBlock:(id)block
{
  v29 = *MEMORY[0x277D85DE8];
  albumCopy = album;
  stringCopy = string;
  blockCopy = block;
  if (stringCopy)
  {
    [MEMORY[0x277CBEBC0] URLWithString:stringCopy];
  }

  else
  {
    [(MSASProtocol *)self baseURL];
  }
  v11 = ;
  v12 = MEMORY[0x277CBAB50];
  v13 = [(MSASProtocol *)self _updateAlbumURLWithBaseURL:v11];
  v14 = [v12 requestWithURL:v13];

  metadata = [albumCopy metadata];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  gUID = [albumCopy GUID];

  if (gUID)
  {
    gUID2 = [albumCopy GUID];
    [dictionary setObject:gUID2 forKey:@"albumguid"];
  }

  clientOrgKey = [albumCopy clientOrgKey];
  [(MSASProtocol *)self _setClientOrgKeyForRequestBody:dictionary clientOrgKey:clientOrgKey];

  ctag = [albumCopy ctag];

  if (ctag)
  {
    ctag2 = [albumCopy ctag];
    [dictionary setObject:ctag2 forKey:@"albumctag"];
  }

  if (metadata)
  {
    [dictionary setValue:metadata forKey:@"attributes"];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v27 = 2114;
    v28 = albumCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Updating album %{public}@", buf, 0x16u);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __59__MSASProtocol_updateAlbum_albumURLString_completionBlock___block_invoke;
  v23[3] = &unk_278E924C0;
  v23[4] = self;
  v24 = blockCopy;
  v22 = blockCopy;
  [(MSASProtocol *)self sendURLRequest:v14 bodyObj:dictionary completionBlock:v23];
}

void __59__MSASProtocol_updateAlbum_albumURLString_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = [v4 MSVerboseDescription];
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Finished updating album. Error: %{public}@", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)createAlbum:(id)album completionBlock:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  albumCopy = album;
  blockCopy = block;
  v8 = MEMORY[0x277CBAB50];
  _createAlbumURL = [(MSASProtocol *)self _createAlbumURL];
  v10 = [v8 requestWithURL:_createAlbumURL];

  metadata = [albumCopy metadata];
  v12 = [metadata objectForKey:@"name"];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  gUID = [albumCopy GUID];

  if (gUID)
  {
    gUID2 = [albumCopy GUID];
    [dictionary setObject:gUID2 forKey:@"albumguid"];
  }

  if (metadata)
  {
    [dictionary setValue:metadata forKey:@"attributes"];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v26 = 2114;
    v27 = albumCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Creating album %{public}@", buf, 0x16u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__MSASProtocol_createAlbum_completionBlock___block_invoke;
  v19[3] = &unk_278E92380;
  v20 = albumCopy;
  v21 = v12;
  selfCopy2 = self;
  v23 = blockCopy;
  v16 = blockCopy;
  v17 = v12;
  v18 = albumCopy;
  [(MSASProtocol *)self sendURLRequest:v10 bodyObj:dictionary completionBlock:v19];
}

void __44__MSASProtocol_createAlbum_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__7575;
  v42[4] = __Block_byref_object_dispose__7576;
  v43 = 0;
  v10 = v8;
  if (v10)
  {
    v11 = v10;
    if (![v10 MSContainsErrorWithDomain:*MEMORY[0x277CBACE8] code:403])
    {
      v21 = 0;
      v22 = v11;
      goto LABEL_20;
    }

    v12 = *(a1 + 48);
    v40 = 0;
    v13 = [v12 responseDict:v9 containsLimitErrorCode:@"4032" outMaxAllowed:&v40];
    v14 = v40;
    if (!v13)
    {
      v21 = 0;
      v22 = v11;
      goto LABEL_19;
    }

    v15 = MEMORY[0x277CCA9B8];
    v16 = MEMORY[0x277CCACA8];
    v17 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_LIMIT_ALBUMS_P_COUNT");
    v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v14, "intValue")}];
    v19 = [v16 stringWithFormat:v17, v18];
    v20 = [v15 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:13 description:v19 underlyingError:v11];

    v21 = 0;
    v22 = v11;
  }

  else
  {
    v23 = [v9 objectForKey:@"albumguid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v9 objectForKey:@"albumguid"];
    }

    else
    {
      v14 = 0;
    }

    v24 = [*(a1 + 32) GUID];
    v25 = [v14 isEqualToString:v24];

    if (v25)
    {
      v26 = [v9 objectForKey:@"albumctag"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [v9 objectForKey:@"albumctag"];
      }

      else
      {
        v21 = 0;
      }

      if (!_os_feature_enabled_impl() || ([*(a1 + 32) clientOrgKey], v30 = objc_claimAutoreleasedReturnValue(), v31 = v30 == 0, v30, !v31))
      {
        v11 = 0;
        v22 = 0;
        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v36 = v9;
      }

      else
      {
        v36 = 0;
      }

      v17 = v36;
      v37 = [*(a1 + 32) useForeignCtag];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v45 = __Block_byref_object_copy__7575;
      v46 = __Block_byref_object_dispose__7576;
      v47 = 0;
      v38 = *(a1 + 48);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __44__MSASProtocol_createAlbum_completionBlock___block_invoke_2;
      v41[3] = &unk_278E92358;
      v41[4] = buf;
      v41[5] = v42;
      [v38 _fetchClientOrgKeyAndPersistLocallyForResponseDict:v17 isOwned:v37 ^ 1u completionHandler:v41];
      v20 = *(*&buf[8] + 40);
      if (v20)
      {
        v39 = v20;
      }

      _Block_object_dispose(buf, 8);

      v22 = 0;
    }

    else
    {
      v27 = MEMORY[0x277CCA9B8];
      v28 = MEMORY[0x277CCACA8];
      v17 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_CANNOT_CREATE_ALBUM");
      v29 = [v28 stringWithFormat:v17, *(a1 + 40)];
      v22 = [v27 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:5 description:v29];

      v20 = 0;
      v21 = 0;
    }
  }

  v11 = v20;
LABEL_19:

LABEL_20:
  v32 = MEMORY[0x277D86220];
  v33 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v34 = *(a1 + 48);
    v35 = [v22 MSVerboseDescription];
    *buf = 138543618;
    *&buf[4] = v34;
    *&buf[12] = 2114;
    *&buf[14] = v35;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Finished creating album. Error: %{public}@", buf, 0x16u);
  }

  (*(*(a1 + 56) + 16))();
  _Block_object_dispose(v42, 8);
}

void __44__MSASProtocol_createAlbum_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_getAlbumURL
{
  baseURL = [(MSASProtocol *)self baseURL];
  v3 = [baseURL URLByAppendingPathComponent:@"albumurl"];

  return v3;
}

- (id)_serverSideConfigURL
{
  baseURL = [(MSASProtocol *)self baseURL];
  v3 = [baseURL URLByAppendingPathComponent:@"configuration"];

  return v3;
}

- (id)_setAlbumStateURL
{
  baseURL = [(MSASProtocol *)self baseURL];
  v3 = [baseURL URLByAppendingPathComponent:@"setalbumstate"];

  return v3;
}

- (id)_setAssetStateURL
{
  baseURL = [(MSASProtocol *)self baseURL];
  v3 = [baseURL URLByAppendingPathComponent:@"setassetstate"];

  return v3;
}

- (id)_albumStateURL
{
  baseURL = [(MSASProtocol *)self baseURL];
  v3 = [baseURL URLByAppendingPathComponent:@"albumstate"];

  return v3;
}

- (id)_setCommentPositionURL
{
  baseURL = [(MSASProtocol *)self baseURL];
  v3 = [baseURL URLByAppendingPathComponent:@"setcommentposition"];

  return v3;
}

- (id)_reportSpamURL
{
  baseURL = [(MSASProtocol *)self baseURL];
  v3 = [baseURL URLByAppendingPathComponent:@"reportspam"];

  return v3;
}

- (id)_unsubscribeURL
{
  baseURL = [(MSASProtocol *)self baseURL];
  v3 = [baseURL URLByAppendingPathComponent:@"unsubscribe"];

  return v3;
}

- (id)_subscribeURL
{
  baseURL = [(MSASProtocol *)self baseURL];
  v3 = [baseURL URLByAppendingPathComponent:@"subscribe"];

  return v3;
}

- (id)_validateInvitationURL
{
  baseURL = [(MSASProtocol *)self baseURL];
  v3 = [baseURL URLByAppendingPathComponent:@"validateinvitation"];

  return v3;
}

- (id)_getChangesURL
{
  baseURL = [(MSASProtocol *)self baseURL];
  v3 = [baseURL URLByAppendingPathComponent:@"getchanges"];

  return v3;
}

- (id)_unshareURL
{
  baseURL = [(MSASProtocol *)self baseURL];
  v3 = [baseURL URLByAppendingPathComponent:@"unshare"];

  return v3;
}

- (id)_shareURL
{
  baseURL = [(MSASProtocol *)self baseURL];
  v3 = [baseURL URLByAppendingPathComponent:@"share"];

  return v3;
}

- (id)_createAlbumURL
{
  baseURL = [(MSASProtocol *)self baseURL];
  v3 = [baseURL URLByAppendingPathComponent:@"createalbum"];

  return v3;
}

- (id)errorFromStandardProcessingOnResponse:(id)response responseObject:(id)object checkServerSideConfigVersion:(BOOL)version error:(id)error body:(id)body
{
  versionCopy = version;
  v75 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  objectCopy = object;
  errorCopy = error;
  bodyCopy = body;
  v15 = bodyCopy;
  if (!responseCopy)
  {
    v24 = errorCopy;
    goto LABEL_61;
  }

  v57 = bodyCopy;
  [responseCopy allHeaderFields];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v16 = v66 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v63 objects:v74 count:16];
  if (v17)
  {
    v18 = *v64;
    while (2)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v64 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v63 + 1) + 8 * i);
        if (![v20 caseInsensitiveCompare:@"Retry-After"])
        {
          v21 = [v16 objectForKey:v20];
          v17 = [MSProtocolUtilities retryAfterDateBasedOnRetryAfterHeaderString:v21];

          goto LABEL_12;
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v63 objects:v74 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  selfCopy11 = self;
  if ([responseCopy statusCode] != 200 && objc_msgSend(responseCopy, "statusCode") != 207)
  {
    v56 = v17;
    if ([responseCopy statusCode] == 403)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = [objectCopy objectForKey:@"code"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = [objectCopy objectForKey:@"code"];
        }

        else
        {
          v23 = 0;
        }

        if ([v23 length] >= 4)
        {
          v38 = [v23 substringToIndex:3];
          v39 = [v38 isEqualToString:@"401"];

          if (v39)
          {
            selfCopy11 = self;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              selfCopy10 = self;
              _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Visitor authentication has failed. Client must reauth.", buf, 0xCu);
            }

            v40 = MEMORY[0x277CCA9B8];
            v29 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_VISITOR_AUTH_FAILURE");
            v41 = -[MSASProtocol HTTPErrorWithStatusCode:](self, "HTTPErrorWithStatusCode:", [responseCopy statusCode]);
            v24 = [v40 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:18 description:v29 underlyingError:v41];

LABEL_52:
            v17 = v56;
LABEL_53:

            goto LABEL_54;
          }
        }
      }
    }

    else if ([responseCopy statusCode] == 426 && _os_feature_enabled_impl())
    {
      selfCopy11 = self;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy10 = self;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Invalid/missing clientOrgKey in request. Client must fetch new clientOrgKey for album.", buf, 0xCu);
      }

      v37 = MEMORY[0x277CCA9B8];
      v23 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_INVALID_CLIENTORGKEY");
      v29 = -[MSASProtocol HTTPErrorWithStatusCode:](self, "HTTPErrorWithStatusCode:", [responseCopy statusCode]);
      v24 = [v37 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:22 description:v23 underlyingError:v29];
      goto LABEL_52;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      statusCode = [responseCopy statusCode];
      *buf = 138543618;
      selfCopy10 = self;
      v69 = 2048;
      v70 = statusCode;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Rejecting response code %ld", buf, 0x16u);
    }

    v42 = MEMORY[0x277CCA9B8];
    v43 = MEMORY[0x277CCACA8];
    v44 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_HTTP_ERROR_P_CODE");
    v45 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(responseCopy, "statusCode")}];
    v46 = [v43 stringWithFormat:v44, v45];
    v47 = -[MSASProtocol HTTPErrorWithStatusCode:](self, "HTTPErrorWithStatusCode:", [responseCopy statusCode]);
    v23 = [v42 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:4 description:v46 underlyingError:v47];

    selfCopy11 = self;
    v48 = MEMORY[0x277CCA9B8];
    v29 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_CANNOT_CONTINUE");
    v24 = [v48 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:3 description:v29 underlyingError:v23];
    goto LABEL_52;
  }

  if (versionCopy)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v23 = v16;
    v24 = [v23 countByEnumeratingWithState:&v59 objects:v73 count:16];
    if (v24)
    {
      v56 = v17;
      v25 = *v60;
      while (2)
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v60 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v59 + 1) + 8 * j);
          if (![v27 caseInsensitiveCompare:@"x-apple-mme-sharedstreams-config-version"])
          {
            v29 = [v23 objectForKey:v27];
            selfCopy11 = self;
            serverSideConfigVersion = [(MSASProtocol *)self serverSideConfigVersion];
            v31 = [serverSideConfigVersion isEqualToString:v29];

            if ((v31 & 1) == 0)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                selfCopy10 = self;
                _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Server side config version has changed.", buf, 0xCu);
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                serverSideConfigVersion2 = [(MSASProtocol *)self serverSideConfigVersion];
                *buf = 138543874;
                selfCopy10 = self;
                v69 = 2114;
                v70 = serverSideConfigVersion2;
                v71 = 2114;
                v72 = v29;
                _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Our version string: %{public}@, server’s version string: %{public}@", buf, 0x20u);
              }

              defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
              v34 = MEMORY[0x277CBEAC0];
              personID = [(MSASProtocol *)self personID];
              v36 = [v34 dictionaryWithObjectsAndKeys:{personID, @"personID", 0}];
              [defaultCenter postNotificationName:@"MSASPServerSideConfigurationDidChangeNotification" object:self userInfo:v36];
            }

            v24 = 0;
            goto LABEL_52;
          }
        }

        v24 = [v23 countByEnumeratingWithState:&v59 objects:v73 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }

      selfCopy11 = self;
    }

    goto LABEL_53;
  }

  v24 = 0;
LABEL_54:

  if (v17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      personID2 = [(MSASProtocol *)selfCopy11 personID];
      *buf = 138543874;
      selfCopy10 = selfCopy11;
      v69 = 2114;
      v70 = v17;
      v71 = 2112;
      v72 = personID2;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Posting retry-after date of %{public}@ for person ID %@.", buf, 0x20u);
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    personID3 = [(MSASProtocol *)selfCopy11 personID];

    if (personID3)
    {
      personID4 = [(MSASProtocol *)selfCopy11 personID];
      [dictionary setObject:personID4 forKey:@"personID"];
    }

    [dictionary setObject:v17 forKey:@"retryAfterDate"];
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 postNotificationName:@"MSASPDidReceiveRetryAfterNotification" object:selfCopy11 userInfo:dictionary];
  }

  v15 = v57;
LABEL_61:

  return v24;
}

- (id)HTTPErrorWithStatusCode:(int64_t)code
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CBACE8];
  v6 = MEMORY[0x277CCACA8];
  v7 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_HTTP_ERROR_P_CODE");
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:code];
  v9 = [v6 stringWithFormat:v7, v8];
  v10 = [v4 MSErrorWithDomain:v5 code:code description:v9];

  return v10;
}

- (void)_prepareHeadersForRequest:(id)request
{
  v52 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = [MSProtocolUtilities deviceInfoDictForPersonID:self->_personID];
  [dictionary setObject:self->_headerVersion forKey:@"x-apple-mme-sharedstreams-version"];
  v7 = [v6 objectForKey:@"pushToken"];
  v8 = v7;
  if (v7)
  {
    mSHexString = [v7 MSHexString];
    [dictionary setObject:mSHexString forKey:@"x-apple-mme-sharedstreams-client-token"];
  }

  v10 = [v6 objectForKey:@"authToken"];
  if (v10)
  {
    v11 = v8;
    v12 = v10;
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", self->_personID, v10];
    v14 = [v13 dataUsingEncoding:4];
    v15 = MSPCUCreateBase64StringFromData(v14);
    if (v15)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"X-MobileMe-AuthToken %@", v15];
      [dictionary setObject:v16 forKey:@"authorization"];
    }

    v8 = v11;
    v10 = v12;
  }

  v17 = [v6 objectForKey:@"clientInfo"];
  if (v17)
  {
    [dictionary setObject:v17 forKey:@"x-mme-client-info"];
  }

  [dictionary setObject:@"text/plist" forKey:@"Content-Type"];
  v18 = +[MSProtocolUtilities appleIDSession];
  v19 = [v18 appleIDHeadersForRequest:requestCopy];

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __42__MSASProtocol__prepareHeadersForRequest___block_invoke;
  v45[3] = &unk_278E92328;
  v20 = dictionary;
  v46 = v20;
  [v19 enumerateKeysAndObjectsUsingBlock:v45];
  [requestCopy setAllHTTPHeaderFields:v20];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v21 = [requestCopy URL];
    *buf = 138543618;
    selfCopy = self;
    v50 = 2114;
    v51 = v21;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Sending request to %{public}@.", buf, 0x16u);
  }

  v22 = MSASPlatform();
  v23 = [v22 shouldLogAtLevel:7];

  if (v23)
  {
    v36 = v19;
    v37 = v17;
    v38 = v10;
    v39 = v8;
    v40 = requestCopy;
    allHTTPHeaderFields = [requestCopy allHTTPHeaderFields];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v26 = allHTTPHeaderFields;
    v27 = [v26 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v42;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v42 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v41 + 1) + 8 * i);
          if ([v31 compare:@"x-apple-mme-sharedstreams-client-token" options:1] && objc_msgSend(v31, "compare:options:", @"x-apple-mme-streams-client-udid", 1) && objc_msgSend(v31, "compare:options:", @"authorization", 1))
          {
            v32 = [v26 objectForKey:v31];
          }

          else
          {
            v32 = @"[present]";
          }

          [(MSASProtocol *)dictionary2 setObject:v32 forKey:v31];
        }

        v28 = [v26 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v28);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      selfCopy = dictionary2;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Headers: %{public}@", buf, 0xCu);
    }

    v33 = objc_alloc(MEMORY[0x277CCACA8]);
    requestCopy = v40;
    hTTPBody = [v40 HTTPBody];
    v35 = [v33 initWithData:hTTPBody encoding:4];

    v17 = v37;
    v10 = v38;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      selfCopy = v35;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    v8 = v39;
    v19 = v36;
  }
}

- (void)_sendOneURLRequest:(id)request checkServerSideConfigVersion:(BOOL)version retryCount:(unint64_t)count completionBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  memberQueue = [(MSASProtocol *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__MSASProtocol__sendOneURLRequest_checkServerSideConfigVersion_retryCount_completionBlock___block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_barrier_sync(memberQueue, block);

  [(MSASProtocol *)self _prepareHeadersForRequest:requestCopy];
  v13 = MEMORY[0x277CBAB78];
  v14 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __91__MSASProtocol__sendOneURLRequest_checkServerSideConfigVersion_retryCount_completionBlock___block_invoke_2;
  v17[3] = &unk_278E922E8;
  v17[4] = self;
  v18 = requestCopy;
  v19 = blockCopy;
  countCopy = count;
  versionCopy = version;
  v15 = requestCopy;
  v16 = blockCopy;
  [v13 sendAsynchronousRequest:v15 queue:v14 completionHandler:v17];
}

void __91__MSASProtocol__sendOneURLRequest_checkServerSideConfigVersion_retryCount_completionBlock___block_invoke(uint64_t a1)
{
  v2 = +[MSASPConnectionGate gate];
  [*(a1 + 32) setGate:v2];
}

void __91__MSASProtocol__sendOneURLRequest_checkServerSideConfigVersion_retryCount_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v80 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v7;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__7575;
  v72 = __Block_byref_object_dispose__7576;
  v73 = 0;
  v11 = [*(a1 + 32) memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__MSASProtocol__sendOneURLRequest_checkServerSideConfigVersion_retryCount_completionBlock___block_invoke_211;
  block[3] = &unk_278E92700;
  block[4] = *(a1 + 32);
  block[5] = &v68;
  dispatch_barrier_sync(v11, block);

  v12 = [v69[5] error];

  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v46 = *(a1 + 32);
      *buf = 138543618;
      v75 = v46;
      v76 = 2114;
      v77 = v9;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Transaction terminated with error: %{public}@", buf, 0x16u);
    }

    v13 = [*(a1 + 32) workQueue];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __91__MSASProtocol__sendOneURLRequest_checkServerSideConfigVersion_retryCount_completionBlock___block_invoke_212;
    v64[3] = &unk_278E92298;
    v65 = *(a1 + 48);
    v66 = &v68;
    dispatch_async(v13, v64);
  }

  else
  {
    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v47 = *(a1 + 32);
      v48 = [v10 statusCode];
      *buf = 138543618;
      v75 = v47;
      v76 = 2048;
      v77 = v48;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Received response code %ld", buf, 0x16u);
    }

    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v49 = *(a1 + 32);
      v50 = [v10 allHeaderFields];
      *buf = 138543618;
      v75 = v49;
      v76 = 2112;
      v77 = v50;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Headers: %@", buf, 0x16u);
    }

    if ([v8 length])
    {
      v18 = MSASPlatform();
      v19 = [v18 shouldLogAtLevel:7];

      if (v19)
      {
        v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v75 = v20;
          _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v63 = 0;
    v21 = +[MSProtocolUtilities appleIDSession];
    [v21 handleResponse:v10 forRequest:*(a1 + 40) shouldRetry:&v63];

    if (v63 == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = *(a1 + 32);
      v23 = *(a1 + 40);
      *buf = 138543874;
      v75 = v22;
      v76 = 2112;
      v77 = v23;
      v78 = 2112;
      v79 = v10;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Will retry request %@ with response %@ due to AuthKit error", buf, 0x20u);
    }

    if ([v10 statusCode] == 330)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v24 = *(a1 + 32);
        v25 = *(a1 + 40);
        *buf = 138543874;
        v75 = v24;
        v76 = 2112;
        v77 = v25;
        v78 = 2112;
        v79 = v10;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Will retry request %@ with response %@ due to partition move", buf, 0x20u);
      }

      v26 = [v10 allHeaderFields];
      v27 = [v26 objectForKey:@"X-Apple-MMe-Host"];
      v28 = v27;
      if (v27 && [v27 length])
      {
        v54 = [*(a1 + 40) URL];
        v29 = objc_alloc(MEMORY[0x277CBEBC0]);
        v30 = [v54 scheme];
        v31 = [v54 path];
        v53 = [v29 initWithScheme:v30 host:v28 path:v31];

        [*(a1 + 40) setURL:v53];
        v32 = objc_alloc(MEMORY[0x277CBEBC0]);
        v33 = [v54 scheme];
        v34 = [v32 initWithScheme:v33 host:v28 path:@"/"];

        v35 = [*(a1 + 32) personID];
        v36 = [v34 URLByAppendingPathComponent:v35];
        v37 = [v36 URLByAppendingPathComponent:@"sharedstreams"];

        if (v37)
        {
          [*(a1 + 32) setBaseURL:v37];
        }

        v63 = 1;
      }
    }

    if (v63 == 1)
    {
      v38 = *(a1 + 56);
      if (v38 > 9)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v51 = *(a1 + 32);
          v52 = *(a1 + 40);
          *buf = 138543618;
          v75 = v51;
          v76 = 2112;
          v77 = v52;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Exceeded max retry attempts for request %@, giving up", buf, 0x16u);
        }

        (*(*(a1 + 48) + 16))();
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v39 = *(a1 + 32);
          v40 = *(a1 + 40);
          *buf = 138543618;
          v75 = v39;
          v76 = 2112;
          v77 = v40;
          _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Retrying request %@", buf, 0x16u);
          v38 = *(a1 + 56);
        }

        [*(a1 + 32) _sendOneURLRequest:*(a1 + 40) checkServerSideConfigVersion:*(a1 + 64) retryCount:v38 + 1 completionBlock:*(a1 + 48)];
      }
    }

    else
    {
      if (v8)
      {
        v62 = 0;
        v41 = [MEMORY[0x277CCAC58] propertyListWithData:v8 options:0 format:0 error:&v62];
        v42 = v62;
        if (v42 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v43 = *(a1 + 32);
          *buf = 138543618;
          v75 = v43;
          v76 = 2114;
          v77 = v42;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Cannot unserialize server's response. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v42 = 0;
        v41 = 0;
      }

      v44 = [*(a1 + 32) workQueue];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __91__MSASProtocol__sendOneURLRequest_checkServerSideConfigVersion_retryCount_completionBlock___block_invoke_221;
      v55[3] = &unk_278E922C0;
      v55[4] = *(a1 + 32);
      v56 = v10;
      v57 = v41;
      v61 = *(a1 + 64);
      v58 = v9;
      v60 = *(a1 + 48);
      v59 = v56;
      v45 = v41;
      dispatch_async(v44, v55);
    }
  }

  _Block_object_dispose(&v68, 8);
}

uint64_t __91__MSASProtocol__sendOneURLRequest_checkServerSideConfigVersion_retryCount_completionBlock___block_invoke_211(uint64_t a1)
{
  v2 = [*(a1 + 32) gate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  return [v5 setGate:0];
}

void __91__MSASProtocol__sendOneURLRequest_checkServerSideConfigVersion_retryCount_completionBlock___block_invoke_212(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(*(a1 + 40) + 8) + 40) error];
  (*(v1 + 16))(v1, 0, v2, 0);
}

void __91__MSASProtocol__sendOneURLRequest_checkServerSideConfigVersion_retryCount_completionBlock___block_invoke_221(uint64_t a1)
{
  v2 = [*(a1 + 32) errorFromStandardProcessingOnResponse:*(a1 + 40) responseObject:*(a1 + 48) checkServerSideConfigVersion:*(a1 + 80) error:*(a1 + 56) body:*(a1 + 48)];
  (*(*(a1 + 72) + 16))();
  dispatch_resume(*(*(a1 + 32) + 24));
}

- (void)sendURLRequest:(id)request method:(id)method bodyObj:(id)obj checkServerSideConfigVersion:(BOOL)version completionBlock:(id)block
{
  requestCopy = request;
  methodCopy = method;
  objCopy = obj;
  blockCopy = block;
  pendingConnectionsQueue = self->_pendingConnectionsQueue;
  pendingConnectionsGroup = self->_pendingConnectionsGroup;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __91__MSASProtocol_sendURLRequest_method_bodyObj_checkServerSideConfigVersion_completionBlock___block_invoke;
  v22[3] = &unk_278E92270;
  v25 = methodCopy;
  v26 = blockCopy;
  v22[4] = self;
  v23 = objCopy;
  v24 = requestCopy;
  versionCopy = version;
  v18 = methodCopy;
  v19 = requestCopy;
  v20 = objCopy;
  v21 = blockCopy;
  dispatch_group_async(pendingConnectionsGroup, pendingConnectionsQueue, v22);
}

void __91__MSASProtocol_sendURLRequest_method_bodyObj_checkServerSideConfigVersion_completionBlock___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  dispatch_suspend(*(*(a1 + 32) + 24));
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v2 = [*(a1 + 32) memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__MSASProtocol_sendURLRequest_method_bodyObj_checkServerSideConfigVersion_completionBlock___block_invoke_2;
  block[3] = &unk_278E92700;
  block[4] = *(a1 + 32);
  block[5] = &v24;
  dispatch_sync(v2, block);

  if (*(v25 + 24) != 1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v20 = 0;
      v6 = [MEMORY[0x277CCAC58] dataWithPropertyList:v7 format:100 options:0 error:&v20];
      v8 = v20;
      if (v8)
      {
        v9 = v8;
        v10 = MEMORY[0x277D86220];
        v11 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v15 = *(a1 + 32);
          v16 = [v9 MSVerboseDescription];
          *buf = 138543618;
          v29 = v15;
          v30 = 2114;
          v31 = v16;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Cannot encode object to send to server. Error: %{public}@", buf, 0x16u);
        }

        v12 = [*(a1 + 32) workQueue];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __91__MSASProtocol_sendURLRequest_method_bodyObj_checkServerSideConfigVersion_completionBlock___block_invoke_205;
        v17[3] = &unk_278E927A0;
        v13 = *(a1 + 64);
        v18 = v9;
        v19 = v13;
        v14 = v9;
        dispatch_async(v12, v17);

        goto LABEL_10;
      }

      [*(a1 + 48) setHTTPBody:v6];
    }

    [*(a1 + 48) setHTTPMethod:*(a1 + 56)];
    [*(a1 + 32) _sendOneURLRequest:*(a1 + 48) checkServerSideConfigVersion:*(a1 + 72) retryCount:0 completionBlock:*(a1 + 64)];
    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v29 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Not making request because we're shutting down.", buf, 0xCu);
  }

  v4 = [*(a1 + 32) workQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __91__MSASProtocol_sendURLRequest_method_bodyObj_checkServerSideConfigVersion_completionBlock___block_invoke_203;
  v21[3] = &unk_278E927A0;
  v5 = *(a1 + 64);
  v21[4] = *(a1 + 32);
  v22 = v5;
  dispatch_async(v4, v21);

  v6 = v22;
LABEL_10:

LABEL_13:
  _Block_object_dispose(&v24, 8);
}

void *__91__MSASProtocol_sendURLRequest_method_bodyObj_checkServerSideConfigVersion_completionBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) gate];
  if (objc_claimAutoreleasedReturnValue())
  {
    __assert_rtn("[MSASProtocol sendURLRequest:method:bodyObj:checkServerSideConfigVersion:completionBlock:]_block_invoke_2", "MSASProtocol.m", 676, "!self.gate");
  }

  result = [*(a1 + 32) isShuttingDown];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __91__MSASProtocol_sendURLRequest_method_bodyObj_checkServerSideConfigVersion_completionBlock___block_invoke_203(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) shutDownError];
  (*(v1 + 16))(v1, 0, v2, 0);
}

void __91__MSASProtocol_sendURLRequest_method_bodyObj_checkServerSideConfigVersion_completionBlock___block_invoke_205(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = MEMORY[0x277CCA9B8];
  v5 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_CANNOT_ENCODE");
  v4 = [v3 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:2 description:v5 underlyingError:*(a1 + 32)];
  (*(v2 + 16))(v2, 0, v4, 0);
}

- (id)stopHandlerBlock
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__MSASProtocol_stopHandlerBlock__block_invoke;
  v4[3] = &unk_278E92248;
  v4[4] = self;
  v2 = MEMORY[0x245D7BA50](v4, a2);

  return v2;
}

void __32__MSASProtocol_stopHandlerBlock__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__MSASProtocol_stopHandlerBlock__block_invoke_2;
  v6[3] = &unk_278E927C8;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_barrier_async(v4, v6);
}

void __32__MSASProtocol_stopHandlerBlock__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) gate];
  [v2 setError:v1];
}

- (void)stopCompletionBlock:(id)block
{
  blockCopy = block;
  memberQueue = [(MSASProtocol *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__MSASProtocol_stopCompletionBlock___block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_barrier_async(memberQueue, block);

  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__MSASProtocol_stopCompletionBlock___block_invoke_2;
  v8[3] = &unk_278E927A0;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  dispatch_async(v6, v8);
}

void __36__MSASProtocol_stopCompletionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsShuttingDown:1];
  v3 = [*(a1 + 32) stoppingError];
  v2 = [*(a1 + 32) gate];
  [v2 setError:v3];
}

uint64_t __36__MSASProtocol_stopCompletionBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v2, v3);
  [*(a1 + 32) setIsShuttingDown:0];
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)shutDownCompletionBlock:(id)block
{
  blockCopy = block;
  memberQueue = [(MSASProtocol *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__MSASProtocol_shutDownCompletionBlock___block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_barrier_async(memberQueue, block);

  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__MSASProtocol_shutDownCompletionBlock___block_invoke_2;
  v8[3] = &unk_278E927A0;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  dispatch_async(v6, v8);
}

void __40__MSASProtocol_shutDownCompletionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsShuttingDown:1];
  v3 = [*(a1 + 32) shutDownError];
  v2 = [*(a1 + 32) gate];
  [v2 setError:v3];
}

uint64_t __40__MSASProtocol_shutDownCompletionBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v2, v3);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (id)stoppingError
{
  if (stoppingError_onceToken != -1)
  {
    dispatch_once(&stoppingError_onceToken, &__block_literal_global_193);
  }

  v3 = stoppingError_error;

  return v3;
}

void __29__MSASProtocol_stoppingError__block_invoke()
{
  v0 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_STOPPING");
  v1 = [v0 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:1 description:v3];
  v2 = stoppingError_error;
  stoppingError_error = v1;
}

- (id)shutDownError
{
  if (shutDownError_onceToken != -1)
  {
    dispatch_once(&shutDownError_onceToken, &__block_literal_global_7902);
  }

  v3 = shutDownError_error;

  return v3;
}

void __29__MSASProtocol_shutDownError__block_invoke()
{
  v0 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_MSAS_PROT_SHUTTING_DOWN");
  v1 = [v0 MSErrorWithDomain:@"MSASProtocolErrorDomain" code:0 description:v3];
  v2 = shutDownError_error;
  shutDownError_error = v1;
}

- (MSASProtocol)initWithPersonID:(id)d
{
  dCopy = d;
  v25.receiver = self;
  v25.super_class = MSASProtocol;
  v6 = [(MSASProtocol *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_personID, d);
    v8 = MSASPlatform();
    v9 = [v8 baseSharingURLForPersonID:dCopy];
    baseURL = v7->_baseURL;
    v7->_baseURL = v9;

    v11 = dispatch_queue_create("MSASProtocol connections queue", 0);
    pendingConnectionsQueue = v7->_pendingConnectionsQueue;
    v7->_pendingConnectionsQueue = v11;

    dispatch_set_target_queue(v7->_pendingConnectionsQueue, MEMORY[0x277D85CD0]);
    v13 = dispatch_queue_create("MSASProtocol work queue", 0);
    workQueue = v7->_workQueue;
    v7->_workQueue = v13;

    v15 = dispatch_queue_create("MSASProtocol member queue", MEMORY[0x277D85CD8]);
    memberQueue = v7->_memberQueue;
    v7->_memberQueue = v15;

    v17 = dispatch_group_create();
    pendingConnectionsGroup = v7->_pendingConnectionsGroup;
    v7->_pendingConnectionsGroup = v17;

    v19 = MSASPlatform();
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = MSASPlatform();
      sharedStreamsProtocolVersionString = [v21 sharedStreamsProtocolVersionString];
      headerVersion = v7->_headerVersion;
      v7->_headerVersion = sharedStreamsProtocolVersionString;
    }

    if (!v7->_headerVersion)
    {
      v7->_headerVersion = @"6oWcrYvjLx0f";
    }
  }

  return v7;
}

@end
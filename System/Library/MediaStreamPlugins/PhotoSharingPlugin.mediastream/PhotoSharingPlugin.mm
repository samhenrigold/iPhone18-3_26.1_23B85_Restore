void sub_1254(uint64_t a1)
{
  v2 = [*(a1 + 32) GUID];
  v26 = v2;
  v3 = [NSArray arrayWithObjects:&v26 count:1];
  v4 = [PLManagedAsset cloudSharedAssetsWithGUIDs:v3 inLibrary:*(a1 + 40)];
  v5 = [v4 lastObject];

  v6 = [v5 cloudLastViewedCommentDate];
  v7 = v6;
  if (v5)
  {
    [v6 timeIntervalSinceDate:*(a1 + 48)];
    if (fabs(v8) > 1.0)
    {
      v9 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = *(a1 + 48);
        v12 = *(a1 + 32);
        v13 = v10;
        v14 = [v12 GUID];
        v15 = [*(a1 + 56) albumTitleAndGUID:*(a1 + 64)];
        v16 = 138413314;
        v17 = v10;
        v18 = 2112;
        v19 = v7;
        v20 = 2112;
        v21 = v11;
        v22 = 2112;
        v23 = v14;
        v24 = 2112;
        v25 = v15;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%@(Last-viewed management): currentLastViewedCommentDate %@ didFindLastViewedCommentDate %@ forAssetCollection:%@ inAlbum:%@", &v16, 0x34u);
      }

      [PLCloudSharingViewedStateChangeJob setLastViewedCommentDate:*(a1 + 48) forAssetCollection:*(a1 + 32) inAlbum:*(a1 + 64)];
    }
  }
}

void sub_1534(uint64_t a1)
{
  v2 = [*(a1 + 32) GUID];
  v21 = v2;
  v3 = [NSArray arrayWithObjects:&v21 count:1];
  v4 = [PLManagedAsset cloudSharedAssetsWithGUIDs:v3 inLibrary:*(a1 + 40)];
  v5 = [v4 lastObject];

  if (v5 && *(a1 + 64) != [v5 cloudHasUnseenComments])
  {
    v6 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 GUID];
      v11 = *(a1 + 64);
      v12 = [*(a1 + 48) albumTitleAndGUID:*(a1 + 56)];
      v13 = 138413058;
      v14 = v7;
      v15 = 2112;
      v16 = v10;
      v17 = 1024;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@(Last-viewed management): didMarkAssetCollection %@ asHavingUnreadComments:%i inAlbum:%@", &v13, 0x26u);
    }

    [PLCloudSharingViewedStateChangeJob markAssetCollection:*(a1 + 32) asHavingUnreadComments:*(a1 + 64) inAlbum:*(a1 + 56)];
  }
}

void sub_17C8(uint64_t a1)
{
  v2 = [*(a1 + 32) GUID];
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [PLCollectionShare shareWithScopeIdentifier:v2 includeTrashed:0 inManagedObjectContext:v3];

  if (v4 && *(a1 + 56) != [v4 unseenAssetsCount])
  {
    v5 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = *(a1 + 56);
      v8 = *(a1 + 48);
      v9 = *(a1 + 32);
      v10 = v6;
      v11 = [v8 albumTitleAndGUID:v9];
      v12 = 138412802;
      v13 = v6;
      v14 = 1024;
      v15 = v7;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@(Last-viewed management): didUpdateUnviewedAssetCollectionCount %i forAlbum:%@", &v12, 0x1Cu);
    }

    [PLCloudSharingViewedStateChangeJob updateUnviewedAssetCollectionCount:*(a1 + 56) forAlbum:*(a1 + 32)];
  }
}

void sub_1A28(uint64_t a1)
{
  v2 = [*(a1 + 32) GUID];
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [PLCollectionShare shareWithScopeIdentifier:v2 includeTrashed:0 inManagedObjectContext:v3];

  if (v4 && *(a1 + 56) != ([v4 unseenContentState] == 2))
  {
    v5 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = *(a1 + 48);
      v8 = *(a1 + 32);
      v9 = v6;
      v10 = [v7 albumTitleAndGUID:v8];
      v11 = *(a1 + 56);
      v12 = 138412802;
      v13 = v6;
      v14 = 2112;
      v15 = v10;
      v16 = 1024;
      v17 = v11;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@(Last-viewed management): didMarkAlbum %@ asHavingUnreadContent:%i", &v12, 0x1Cu);
    }

    [PLCloudSharingViewedStateChangeJob markAlbum:*(a1 + 32) asHavingUnseenContent:*(a1 + 56)];
  }
}

void sub_2EE4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
LABEL_5:
    [v4 addObject:v3];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 40);
    goto LABEL_5;
  }

  v5 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Unknown derivative specification: %@", &v6, 0xCu);
  }

LABEL_9:
}
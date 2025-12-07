@interface MKPhotoLibraryAlbumMigrator
- (MKPhotoLibraryAlbumMigrator)initWithReuseDatabase:(BOOL)database;
- (void)setCollections;
- (void)setIdentifier:(id)identifier forAsset:(id)asset;
@end

@implementation MKPhotoLibraryAlbumMigrator

- (MKPhotoLibraryAlbumMigrator)initWithReuseDatabase:(BOOL)database
{
  databaseCopy = database;
  v8.receiver = self;
  v8.super_class = MKPhotoLibraryAlbumMigrator;
  v4 = [(MKMigrator *)&v8 init];
  if (v4)
  {
    v5 = [[MKPhotoLibraryAssetDatabase alloc] initWithType:2 reuse:databaseCopy];
    db = v4->_db;
    v4->_db = v5;

    [(MKMigrator *)v4 setType:13];
  }

  return v4;
}

- (void)setIdentifier:(id)identifier forAsset:(id)asset
{
  identifierCopy = identifier;
  assetCopy = asset;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MKPhotoLibraryAssetDatabase *)selfCopy->_db setIdentifier:identifierCopy forAsset:assetCopy];
  objc_sync_exit(selfCopy);
}

- (void)setCollections
{
  v41 = *MEMORY[0x277D85DE8];
  v28 = [[MKPhotoLibrary alloc] initWithContentType:0];
  v3 = 80;
  [(MKPhotoLibraryAssetDatabase *)self->_db collections];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v33 = 0u;
  v4 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    v25 = *v31;
    do
    {
      v7 = 0;
      v26 = v5;
      do
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * v7);
        v29 = 0;
        v9 = [(MKPhotoLibrary *)v28 countForCollection:v8 error:&v29, v25];
        v10 = v29;
        v11 = v10;
        if (v9 >> 3 < 0x271)
        {
          if (v10)
          {
            [(MKMigrator *)self migratorDidFailWithImportError:v10];
            [*(&self->super.super.isa + v3) removeCollection:v8];
          }

          else
          {
            v14 = [*(&self->super.super.isa + v3) countForCollection:v8];
            if (v14 >= 5000 - v9)
            {
              v15 = 5000 - v9;
            }

            else
            {
              v15 = v14;
            }

            if (v15 >= 0x64)
            {
              v16 = 100;
            }

            else
            {
              v16 = v15;
            }

            if (v14 <= 5000 - v9)
            {
              if (v15)
              {
                v18 = 0;
                do
                {
                  v19 = objc_autoreleasePoolPush();
                  v20 = v3;
                  v21 = [*(&self->super.super.isa + v3) identifiersForCollection:v8 offset:v18 limit:v16];
                  v22 = +[MKLog log];
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412802;
                    v35 = v8;
                    v36 = 2048;
                    v37 = v18;
                    v38 = 2048;
                    v39 = v16;
                    _os_log_impl(&dword_2592D2000, v22, OS_LOG_TYPE_INFO, "will set collections. collection=%@, offset=%ld, limit=%ld", buf, 0x20u);
                  }

                  [(MKMigrator *)self migratorWillMeasureImport];
                  [(MKPhotoLibrary *)v28 setCollection:v8 forLocalIdentifiers:v21];
                  [(MKMigrator *)self migratorDidMeasureImport];
                  v23 = +[MKLog log];
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412802;
                    v35 = v8;
                    v36 = 2048;
                    v37 = v18;
                    v38 = 2048;
                    v39 = v16;
                    _os_log_impl(&dword_2592D2000, v23, OS_LOG_TYPE_INFO, "did set collections. collection=%@, offset=%ld, limit=%ld", buf, 0x20u);
                  }

                  v18 += v16;
                  v15 -= v16;
                  if (v15 >= 0x64)
                  {
                    v16 = 100;
                  }

                  else
                  {
                    v16 = v15;
                  }

                  objc_autoreleasePoolPop(v19);
                  v3 = v20;
                }

                while (v15);
              }

              [(MKMigrator *)self migratorDidImport];
              [*(&self->super.super.isa + v3) removeCollection:v8];
              v6 = v25;
              v11 = 0;
            }

            else
            {
              v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MKPhotoLibraryAlbumError" code:1 userInfo:0];
              [(MKMigrator *)self migratorDidFailWithImportError:v17];
              [*(&self->super.super.isa + v3) removeCollection:v8];
            }

            v5 = v26;
          }
        }

        else
        {
          v12 = +[MKLog log];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v35 = v8;
            v36 = 2048;
            v37 = 5000;
            v38 = 2048;
            v39 = v9;
            _os_log_impl(&dword_2592D2000, v12, OS_LOG_TYPE_INFO, "will skip a collection. collection=%@, capacity=%ld, assets=%ld", buf, 0x20u);
          }

          v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MKPhotoLibraryAlbumError" code:1 userInfo:0];
          [(MKMigrator *)self migratorDidFailWithImportError:v13];
          [*(&self->super.super.isa + v3) removeCollection:v8];
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v5);
  }

  v24 = *(&self->super.super.isa + v3);
  *(&self->super.super.isa + v3) = 0;
}

@end
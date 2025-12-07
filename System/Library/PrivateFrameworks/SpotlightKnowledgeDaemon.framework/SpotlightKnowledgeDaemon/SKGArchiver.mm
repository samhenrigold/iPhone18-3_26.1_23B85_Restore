@interface SKGArchiver
- (BOOL)enumerateArchivePathsUsingBlock:(id)block;
- (BOOL)removeArchivePath:(id)path error:(id *)error;
- (BOOL)writeArchive:(id)archive name:(id)name error:(id *)error;
- (SKGArchiver)initWithResourceDirectoryPath:(id)path;
- (id)archivePaths;
@end

@implementation SKGArchiver

- (SKGArchiver)initWithResourceDirectoryPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = SKGArchiver;
  v6 = [(SKGArchiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resourcePath, path);
  }

  return v7;
}

- (id)archivePaths
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v2 = MEMORY[0x277CBEBC0];
  archiverResourcePath = [(SKGArchiver *)self archiverResourcePath];
  v18 = [v2 fileURLWithPath:archiverResourcePath isDirectory:1];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = *MEMORY[0x277CBE7C0];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277CBE8E8], *MEMORY[0x277CBE7C0], 0}];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __27__SKGArchiver_archivePaths__block_invoke;
  v24[3] = &unk_27893D8D8;
  v24[4] = &v25;
  v17 = [defaultManager enumeratorAtURL:v18 includingPropertiesForKeys:v6 options:4 errorHandler:v24];

  if (*(v26 + 24) == 1)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v17;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v29 count:16];
    if (v9)
    {
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          lastPathComponent = [v12 lastPathComponent];
          v14 = [lastPathComponent hasPrefix:@"skg_archive"];

          if (v14)
          {
            v19 = 0;
            [v12 getResourceValue:&v19 forKey:v5 error:0];
            v15 = v19;
            [v7 setObject:v15 forKey:v12];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v20 objects:v29 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v25, 8);

  return v7;
}

BOOL __27__SKGArchiver_archivePaths__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return a3 != 0;
}

- (BOOL)enumerateArchivePathsUsingBlock:(id)block
{
  v31 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v5 = MEMORY[0x277CBEBC0];
  archiverResourcePath = [(SKGArchiver *)self archiverResourcePath];
  v19 = [v5 fileURLWithPath:archiverResourcePath isDirectory:1];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277CBE8E8], 0}];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __47__SKGArchiver_enumerateArchivePathsUsingBlock___block_invoke;
  v25[3] = &unk_27893D8D8;
  v25[4] = &v26;
  v18 = [defaultManager enumeratorAtURL:v19 includingPropertiesForKeys:v8 options:4 errorHandler:v25];

  if (*(v27 + 24) == 1)
  {
    v24 = 0;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v18;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v10)
    {
      v11 = *v21;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        lastPathComponent = [v13 lastPathComponent];
        v15 = [lastPathComponent hasPrefix:@"skg_archive"];

        if (v15)
        {
          blockCopy[2](blockCopy, v13, &v24);
          if (v24)
          {
            break;
          }
        }

        if (v10 == ++v12)
        {
          v10 = [v9 countByEnumeratingWithState:&v20 objects:v30 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v16 = *(v27 + 24);
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v26, 8);
  return v16 & 1;
}

BOOL __47__SKGArchiver_enumerateArchivePathsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return a3 != 0;
}

- (BOOL)writeArchive:(id)archive name:(id)name error:(id *)error
{
  v8 = MEMORY[0x277CBEBC0];
  nameCopy = name;
  archiveCopy = archive;
  archiverResourcePath = [(SKGArchiver *)self archiverResourcePath];
  v12 = [v8 fileURLWithPath:archiverResourcePath isDirectory:1];

  v13 = MEMORY[0x277CCACA8];
  path = [v12 path];
  nameCopy = [v13 stringWithFormat:@"%@/skg_%@", path, nameCopy];

  v20 = 0;
  v16 = [archiveCopy writeToFile:nameCopy options:1 error:&v20];

  v17 = v20;
  if (error)
  {
    v18 = v17;
    *error = v17;
  }

  return v16;
}

- (BOOL)removeArchivePath:(id)path error:(id *)error
{
  v5 = MEMORY[0x277CCAA00];
  pathCopy = path;
  defaultManager = [v5 defaultManager];
  v11 = 0;
  [defaultManager removeItemAtURL:pathCopy error:&v11];

  v8 = v11;
  if (error && v8)
  {
    v9 = v8;
    *error = v8;
  }

  return v8 == 0;
}

@end
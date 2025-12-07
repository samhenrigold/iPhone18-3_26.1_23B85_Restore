@interface CRKFileBackedMarker
- (BOOL)createWithError:(id *)error;
- (BOOL)deleteWithError:(id *)error;
- (BOOL)exists;
- (CRKFileBackedMarker)init;
- (CRKFileBackedMarker)initWithFileURL:(id)l;
@end

@implementation CRKFileBackedMarker

- (CRKFileBackedMarker)init
{
  crk_uniqueTemporaryFileURL = [MEMORY[0x277CBEBC0] crk_uniqueTemporaryFileURL];
  v4 = [(CRKFileBackedMarker *)self initWithFileURL:crk_uniqueTemporaryFileURL];

  return v4;
}

- (CRKFileBackedMarker)initWithFileURL:(id)l
{
  lCopy = l;
  if (([lCopy isFileURL] & 1) == 0)
  {
    [(CRKFileBackedMarker *)a2 initWithFileURL:?];
  }

  v10.receiver = self;
  v10.super_class = CRKFileBackedMarker;
  v7 = [(CRKFileBackedMarker *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->mFileURL, l);
  }

  return v8;
}

- (BOOL)exists
{
  v16 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(NSURL *)self->mFileURL path];
  v5 = [defaultManager fileExistsAtPath:path isDirectory:0];

  v7 = _CRKLogGeneral_21(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    lastPathComponent = [(NSURL *)self->mFileURL lastPathComponent];
    v9 = lastPathComponent;
    v10 = @"does not exist";
    if (v5)
    {
      v10 = @"exists";
    }

    v12 = 138543618;
    v13 = lastPathComponent;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_243550000, v7, OS_LOG_TYPE_DEFAULT, "Marker '%{public}@' %{public}@", &v12, 0x16u);
  }

  return v5;
}

- (BOOL)createWithError:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  if ([(CRKFileBackedMarker *)self exists])
  {
    return 1;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  mFileURL = self->mFileURL;
  p_mFileURL = &self->mFileURL;
  uRLByDeletingLastPathComponent = [(NSURL *)mFileURL URLByDeletingLastPathComponent];
  v26 = 0;
  v10 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v26];
  v11 = v26;

  if (v10)
  {
    v13 = objc_opt_new();
    v14 = *p_mFileURL;
    v25 = v11;
    v15 = [v13 writeToURL:v14 options:1 error:&v25];
    v16 = v25;

    v18 = _CRKLogGeneral_21(v17);
    v19 = v18;
    if (v15)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent = [*p_mFileURL lastPathComponent];
        *buf = 138543362;
        v28 = lastPathComponent;
        _os_log_impl(&dword_243550000, v19, OS_LOG_TYPE_DEFAULT, "Created marker '%{public}@'", buf, 0xCu);
      }

      v5 = 1;
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CRKFileBackedMarker createWithError:?];
      }

      if (error)
      {
        v23 = v16;
        v5 = 0;
        *error = v16;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v21 = _CRKLogGeneral_21(v12);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CRKFileBackedMarker createWithError:?];
    }

    if (error)
    {
      v22 = v11;
      v5 = 0;
      *error = v11;
    }

    else
    {
      v5 = 0;
    }

    v16 = v11;
  }

  return v5;
}

- (BOOL)deleteWithError:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  mFileURL = self->mFileURL;
  p_mFileURL = &self->mFileURL;
  v16 = 0;
  v8 = [defaultManager crk_safeRemoveItemAtURL:mFileURL error:&v16];
  v9 = v16;

  v11 = _CRKLogGeneral_21(v10);
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      lastPathComponent = [(NSURL *)*p_mFileURL lastPathComponent];
      *buf = 138543362;
      v18 = lastPathComponent;
      _os_log_impl(&dword_243550000, v12, OS_LOG_TYPE_DEFAULT, "Deleted marker '%{public}@'", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CRKFileBackedMarker deleteWithError:?];
    }

    if (error)
    {
      v14 = v9;
      *error = v9;
    }
  }

  return v8;
}

- (void)initWithFileURL:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKFileBackedMarker.m" lineNumber:28 description:@"File URL must point to a file"];
}

- (void)createWithError:(id *)a1 .cold.1(id *a1)
{
  v1 = [*a1 lastPathComponent];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_2(&dword_243550000, v2, v3, "Failed to create directory for '%{public}@' with error: %{public}@", v4, v5, v6, v7);
}

- (void)createWithError:(id *)a1 .cold.2(id *a1)
{
  v1 = [*a1 lastPathComponent];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_2(&dword_243550000, v2, v3, "Failed to create '%{public}@' with error: %{public}@", v4, v5, v6, v7);
}

- (void)deleteWithError:(id *)a1 .cold.1(id *a1)
{
  v1 = [*a1 lastPathComponent];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_2(&dword_243550000, v2, v3, "Failed to delete '%{public}@' with error: %{public}@", v4, v5, v6, v7);
}

@end
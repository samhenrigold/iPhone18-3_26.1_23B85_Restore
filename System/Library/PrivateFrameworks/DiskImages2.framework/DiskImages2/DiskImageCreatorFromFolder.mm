@interface DiskImageCreatorFromFolder
+ (BOOL)allowParallelModeWithURL:(id)l outMode:(BOOL *)mode error:(id *)error;
- (BOOL)compactAndEjectWithCreateParams:(id)params error:(id *)error;
- (BOOL)createImageWithSrcFolder:(id)folder progress:(id)progress createParams:(id)params convertParams:(id *)convertParams error:(id *)error;
- (BOOL)resizeDataPartitionWithError:(id *)error;
- (BOOL)updatePartitionMapWithError:(id *)error;
- (DiskImageCreatorFromFolder)initWithURL:(id)l error:(id *)error;
- (id)createImageWithSrcFolder:(id)folder completionBlock:(id)block;
- (void)updateNumBlocksWithCopier:(id)copier;
@end

@implementation DiskImageCreatorFromFolder

- (DiskImageCreatorFromFolder)initWithURL:(id)l error:(id *)error
{
  v5.receiver = self;
  v5.super_class = DiskImageCreatorFromFolder;
  return [(BaseDiskImageCreator *)&v5 initWithURL:l defaultFormat:4 error:error];
}

- (void)updateNumBlocksWithCopier:(id)copier
{
  copierCopy = copier;
  v5 = 0xA00000 / [(BaseDiskImageCreator *)self blockSize];
  v6 = vcvtpd_u64_f64(4096.0 / [(BaseDiskImageCreator *)self blockSize]);
  blockSize = [(BaseDiskImageCreator *)self blockSize];
  v8 = 0x80000000 / [(BaseDiskImageCreator *)self blockSize];
  folderSize = [copierCopy folderSize];
  v10 = folderSize / [(BaseDiskImageCreator *)self blockSize];
  numFiles = [copierCopy numFiles];

  v12 = vcvtpd_u64_f64((v10 + numFiles * v6) * 1.1) + v5;
  if (v12 >= v8)
  {
    v13 = v12 + 0xC800000 / blockSize;
  }

  else
  {
    v13 = v12;
  }

  [(BaseDiskImageCreator *)self setNumBlocks:v13];
}

- (BOOL)updatePartitionMapWithError:(id *)error
{
  v4 = [(BaseDiskImageCreator *)self newMKDIDeviceWithError:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 updatePartitionMapWithError:error];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)resizeDataPartitionWithError:(id *)error
{
  v5 = [(BaseDiskImageCreator *)self newMKDIDeviceWithError:?];
  if (v5)
  {
    dataPartition = [(BaseDiskImageCreator *)self dataPartition];
    ioMediaUUID = [dataPartition ioMediaUUID];
    dataPartition2 = [(BaseDiskImageCreator *)self dataPartition];
    v9 = [v5 resizeDataPartitionWithPartitionUUID:ioMediaUUID partitionNumBlocks:objc_msgSend(dataPartition2 error:{"numBlocks"), error}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)compactAndEjectWithCreateParams:(id)params error:(id *)error
{
  paramsCopy = params;
  dataPartition = [(BaseDiskImageCreator *)self dataPartition];
  numBlocks = [dataPartition numBlocks];

  numBlocks2 = [(BaseDiskImageCreator *)self numBlocks];
  dataPartition2 = [(BaseDiskImageCreator *)self dataPartition];
  v11 = [dataPartition2 resizeFileSystemToMinimumWithError:error];
  v14 = v11 && ((-[BaseDiskImageCreator dataPartition](self, "dataPartition"), v12 = ;
  return v14;
}

+ (BOOL)allowParallelModeWithURL:(id)l outMode:(BOOL *)mode error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  lCopy = l;
  LOBYTE(v8) = 1;
  *mode = 1;
  if ([lCopy isFileURL])
  {
    memset(&v37, 0, 512);
    if (statfs([lCopy fileSystemRepresentation], &v37) < 0)
    {
      v8 = *__error();
      v22 = MEMORY[0x277CCACA8];
      path = [lCopy path];
      v12 = [v22 stringWithFormat:@"Failed to access folder: %@", path];
      LOBYTE(v8) = [DIError failWithPOSIXCode:v8 verboseInfo:v12 error:error];
    }

    else
    {
      v9 = [DIHelpers copyDevicePathWithStatfs:&v37];
      path = v9;
      if ((v37.f_flags & 0x1000) == 0 || ![v9 hasPrefix:@"/dev/disk"])
      {
        goto LABEL_28;
      }

      v11 = [[DIIOMedia alloc] initWithDevName:path error:error];
      v12 = v11;
      if (v11)
      {
        v13 = [(DIIOMedia *)v11 copyBlockDeviceWithError:error];
        v8 = v13;
        if (v13)
        {
          v14 = [v13 copyRootBlockDeviceWithError:error];

          if (v14)
          {
            v15 = *__error();
            v16 = DIForwardLogs();
            if (v16)
            {
              v28 = 0;
              v18 = getDIOSLog(v16, v17);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = 3;
              }

              else
              {
                v19 = 2;
              }

              path2 = [lCopy path];
              *buf = 68158466;
              v30 = 69;
              v31 = 2080;
              v32 = "+[DiskImageCreatorFromFolder allowParallelModeWithURL:outMode:error:]";
              v33 = 2112;
              v34 = path2;
              v35 = 2112;
              v36 = v14;
              v21 = _os_log_send_and_compose_impl(v19, &v28, 0, 0, &dword_248DE0000, v18, 0, "%.*s: Block device class for %@: %@", buf, 38);

              if (v21)
              {
                fprintf(*MEMORY[0x277D85DF8], "%s\n", v21);
                free(v21);
              }
            }

            else
            {
              v23 = getDIOSLog(v16, v17);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                path3 = [lCopy path];
                *buf = 68158466;
                v30 = 69;
                v31 = 2080;
                v32 = "+[DiskImageCreatorFromFolder allowParallelModeWithURL:outMode:error:]";
                v33 = 2112;
                v34 = path3;
                v35 = 2112;
                v36 = v14;
                _os_log_impl(&dword_248DE0000, v23, OS_LOG_TYPE_DEFAULT, "%.*s: Block device class for %@: %@", buf, 0x26u);
              }
            }

            *__error() = v15;
            if (([v14 diskImageDevice] & 1) == 0)
            {
              mediumType = [v14 mediumType];
              v26 = mediumType;
              if (mediumType)
              {
                LOBYTE(mediumType) = [mediumType isEqual:@"Solid State"];
              }

              *mode = mediumType;
            }

            LOBYTE(v8) = 1;
          }

          else
          {
            LOBYTE(v8) = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }

LABEL_28:
  }

  return v8;
}

- (id)createImageWithSrcFolder:(id)folder completionBlock:(id)block
{
  folderCopy = folder;
  blockCopy = block;
  v8 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:100];
  v9 = dispatch_queue_create("DiskImageCreatorFromFolder", 0);
  volumeName = [(BaseDiskImageCreator *)self volumeName];

  if (!volumeName)
  {
    lastPathComponent = [folderCopy lastPathComponent];
    [(BaseDiskImageCreator *)self setVolumeName:lastPathComponent];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__DiskImageCreatorFromFolder_createImageWithSrcFolder_completionBlock___block_invoke;
  v19[3] = &unk_278F812E0;
  v19[4] = self;
  v23 = blockCopy;
  v12 = v9;
  v20 = v12;
  v21 = folderCopy;
  v13 = v8;
  v22 = v13;
  v14 = folderCopy;
  v15 = blockCopy;
  v16 = MEMORY[0x24C1EE2F0](v19);
  if (hasTTY())
  {
    v16[2](v16);
  }

  else
  {
    dispatch_async(v12, v16);
  }

  v17 = v13;

  return v13;
}

void __71__DiskImageCreatorFromFolder_createImageWithSrcFolder_completionBlock___block_invoke(uint64_t a1)
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__6;
  v12[4] = __Block_byref_object_dispose__6;
  v13 = 0;
  v2 = *(a1 + 32);
  obj = 0;
  v3 = [v2 createEmptyImageWithError:&obj];
  objc_storeStrong(&v13, obj);
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__DiskImageCreatorFromFolder_createImageWithSrcFolder_completionBlock___block_invoke_13;
    block[3] = &unk_278F812B8;
    v4 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = v3;
    v10 = v12;
    v9 = *(a1 + 64);
    dispatch_async(v4, block);
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }

  _Block_object_dispose(v12, 8);
}

void __71__DiskImageCreatorFromFolder_createImageWithSrcFolder_completionBlock___block_invoke_13(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(*(a1 + 72) + 8);
  v13 = *(v6 + 40);
  v14 = 0;
  v7 = [v2 createImageWithSrcFolder:v3 progress:v4 createParams:v5 convertParams:&v14 error:&v13];
  v8 = v14;
  objc_storeStrong((v6 + 40), v13);
  if (v7 && v8)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__DiskImageCreatorFromFolder_createImageWithSrcFolder_completionBlock___block_invoke_2;
    v10[3] = &unk_278F81290;
    v10[4] = *(a1 + 32);
    v11 = *(a1 + 48);
    v12 = *(a1 + 64);
    v9 = [DiskImages2 convertWithParams:v8 completionBlock:v10];
    [*(a1 + 48) addChild:v9 withPendingUnitCount:20];
  }

  else
  {
    [*(a1 + 48) setCompletedUnitCount:100];
    (*(*(a1 + 64) + 16))();
  }
}

void __71__DiskImageCreatorFromFolder_createImageWithSrcFolder_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = a2;
    v5 = *__error();
    v6 = DIForwardLogs();
    if (v6)
    {
      v20 = 0;
      v8 = getDIOSLog(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v10 = [*(a1 + 32) URL];
      v11 = [v10 path];
      *buf = 68158211;
      v22 = 84;
      v23 = 2080;
      v24 = "[DiskImageCreatorFromFolder createImageWithSrcFolder:completionBlock:]_block_invoke_2";
      v25 = 2113;
      v26 = v11;
      v12 = _os_log_send_and_compose_impl(v9, &v20, 0, 0, &dword_248DE0000, v8, 0, "%.*s: Convert in place failed, erasing %{private}@", buf, 28);

      if (v12)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v12);
        free(v12);
      }
    }

    else
    {
      v15 = getDIOSLog(v6, v7);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [*(a1 + 32) URL];
        v17 = [v16 path];
        *buf = 68158211;
        v22 = 84;
        v23 = 2080;
        v24 = "[DiskImageCreatorFromFolder createImageWithSrcFolder:completionBlock:]_block_invoke";
        v25 = 2113;
        v26 = v17;
        _os_log_impl(&dword_248DE0000, v15, OS_LOG_TYPE_DEFAULT, "%.*s: Convert in place failed, erasing %{private}@", buf, 0x1Cu);
      }
    }

    *__error() = v5;
    v18 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = [*(a1 + 32) URL];
    [v18 removeItemAtURL:v19 error:0];
  }

  else
  {
    v13 = *(a1 + 40);
    v14 = 0;
    [v13 setCompletedUnitCount:100];
  }

  (*(*(a1 + 48) + 16))();
}

- (BOOL)createImageWithSrcFolder:(id)folder progress:(id)progress createParams:(id)params convertParams:(id *)convertParams error:(id *)error
{
  v59 = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  progressCopy = progress;
  paramsCopy = params;
  v50 = 1;
  v49 = 1;
  if ([DiskImageCreatorFromFolder allowParallelModeWithURL:folderCopy outMode:&v50 error:error])
  {
    v15 = [(BaseDiskImageCreator *)self URL];
    isFileURL = [v15 isFileURL];

    if (!isFileURL || (-[BaseDiskImageCreator URL](self, "URL"), v17 = objc_claimAutoreleasedReturnValue(), [v17 URLByDeletingLastPathComponent], v18 = objc_claimAutoreleasedReturnValue(), v19 = +[DiskImageCreatorFromFolder allowParallelModeWithURL:outMode:error:](DiskImageCreatorFromFolder, "allowParallelModeWithURL:outMode:error:", v18, &v49, error), v18, v17, v19))
    {
      v20 = *__error();
      v21 = DIForwardLogs();
      if (v21)
      {
        v48 = 0;
        v23 = getDIOSLog(v21, v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        *buf = 68158466;
        v52 = 97;
        v53 = 2080;
        v54 = "[DiskImageCreatorFromFolder createImageWithSrcFolder:progress:createParams:convertParams:error:]";
        v55 = 1024;
        v56 = v50;
        v57 = 1024;
        v58 = v49;
        LODWORD(v42) = 30;
        v25 = _os_log_send_and_compose_impl(v24, &v48, 0, 0, &dword_248DE0000, v23, 0, "%.*s: Allow parallel copy: Source=%d, Target=%d", buf, v42, v43, v45);

        if (v25)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v25);
          free(v25);
        }
      }

      else
      {
        v27 = getDIOSLog(v21, v22);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68158466;
          v52 = 97;
          v53 = 2080;
          v54 = "[DiskImageCreatorFromFolder createImageWithSrcFolder:progress:createParams:convertParams:error:]";
          v55 = 1024;
          v56 = v50;
          v57 = 1024;
          v58 = v49;
          _os_log_impl(&dword_248DE0000, v27, OS_LOG_TYPE_DEFAULT, "%.*s: Allow parallel copy: Source=%d, Target=%d", buf, 0x1Eu);
        }
      }

      *__error() = v20;
      imageFormat = [(BaseDiskImageCreator *)self imageFormat];
      if ((imageFormat - 3) > 5)
      {
        v29 = 100;
      }

      else
      {
        v29 = qword_248FA7570[imageFormat - 3];
      }

      v30 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:100 parent:progressCopy pendingUnitCount:v29];
      v31 = [FastFolderCopierWrapper alloc];
      v32 = [(FastFolderCopierWrapper *)v31 initWithSrcFolder:folderCopy parallelMode:v50 & v49 & 1 progress:v30];
      v33 = v32;
      if (v32)
      {
        if ([(FastFolderCopierWrapper *)v32 traverseSrcFolderWithError:error])
        {
          [(DiskImageCreatorFromFolder *)self updateNumBlocksWithCopier:v33];
          if ([paramsCopy resizeWithNumBlocks:-[BaseDiskImageCreator numBlocks](self error:{"numBlocks"), error}])
          {
            v46 = [(BaseDiskImageCreator *)self formatImageWithCreateParams:paramsCopy error:error];
            if (v46)
            {
              v34 = [DIDiskArb diskArbWithError:error];
              v47 = v34;
              if (!v34)
              {
                v36 = 0;
                goto LABEL_36;
              }

              if ([v34 waitForDAIdleWithError:error])
              {
                dataPartition = [(BaseDiskImageCreator *)self dataPartition];
                v44 = [dataPartition newMountVolumeWithDiskArb:v47 error:error];

                v36 = v44;
                if (v44)
                {
                  if (![v33 copyWithDstFolder:v44 error:error])
                  {

                    [v47 unmountWithMountPoint:v44 error:0];
                    goto LABEL_37;
                  }

                  if ([v47 unmountWithMountPoint:v44 error:error] && -[DiskImageCreatorFromFolder compactAndEjectWithCreateParams:error:](self, "compactAndEjectWithCreateParams:error:", paramsCopy, error))
                  {
                    imageFormat2 = [(BaseDiskImageCreator *)self imageFormat];
                    if ((imageFormat2 - 3) >= 4 && imageFormat2 != 8)
                    {
                      v39 = 0;
LABEL_47:
                      v26 = 1;
                      goto LABEL_40;
                    }

                    v38 = [[DIConvertParams alloc] initForInplaceWithExistingParams:paramsCopy error:error];
                    if (v38)
                    {
                      v39 = v38;
                      [v38 setOutputFormat:-[BaseDiskImageCreator imageFormat](self, "imageFormat")];
                      if (convertParams)
                      {
                        v40 = v39;
                        *convertParams = v39;
                      }

                      goto LABEL_47;
                    }
                  }

                  v36 = v44;
                }

LABEL_36:

LABEL_37:
                [paramsCopy onErrorCleanup];
                v26 = 0;
                v39 = v47;
LABEL_41:

                v30 = v36;
                v33 = v39;
                goto LABEL_42;
              }

              v44 = 0;
            }

            else
            {
              v44 = 0;
              v47 = 0;
            }

            v39 = 0;
            v26 = 0;
LABEL_40:

            v36 = v47;
            v33 = v44;
            goto LABEL_41;
          }
        }

        v26 = 0;
      }

      else
      {
        v26 = [DIError failWithEnumValue:154 verboseInfo:@"Failed to initialize folder copier" error:error];
      }

LABEL_42:

      goto LABEL_43;
    }
  }

  v26 = 0;
LABEL_43:

  return v26;
}

@end
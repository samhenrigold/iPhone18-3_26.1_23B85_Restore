@interface HMCameraClipFetchVideoAssetContextOperation
+ (id)logCategory;
- (HMCameraClipFetchVideoAssetContextOperation)initWithClipManager:(id)manager clip:(id)clip;
- (HMCameraClipFetchVideoAssetContextOperation)initWithClipManager:(id)manager clip:(id)clip dataSource:(id)source;
- (_NSRange)videoDataSegmentsRange;
- (id)decryptData:(id)data;
- (id)description;
- (id)downloadVideoAssetForContext:(id)context;
- (id)downloadVideoSegments:(id)segments forDataTask:(id)task andAppendToOutputStream:(id)stream;
- (id)fetchVideoAssetContext;
- (id)logIdentifier;
- (id)videoSegmentsToDownloadForContext:(id)context;
- (id)writeHLSPlaylistForVideoAssetContext:(id)context;
- (void)cancelWithError:(id)error;
- (void)finishWithVideoAssetContext:(id)context;
- (void)main;
- (void)updateDownloadProgressToPercentageComplete:(unint64_t)complete;
@end

@implementation HMCameraClipFetchVideoAssetContextOperation

- (_NSRange)videoDataSegmentsRange
{
  objc_copyStruct(v4, &self->_videoDataSegmentsRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(HMCameraClipFetchVideoAssetContextOperation *)self name];
  clip = [(HMCameraClipFetchVideoAssetContextOperation *)self clip];
  uniqueIdentifier = [clip uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v8 = [v3 stringWithFormat:@"%@/%@", name, uUIDString];

  return v8;
}

- (id)writeHLSPlaylistForVideoAssetContext:(id)context
{
  v35 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if ([(HMCameraClipFetchVideoAssetContextOperation *)self isCancelled])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Skipping HLS playlist write because we are cancelled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = MEMORY[0x1E69B3780];
    hlsPlaylistDestinationFileURL = [MEMORY[0x1E696ABC0] hmfErrorWithCode:12];
    futureWithNoResult2 = [v9 futureWithError:hlsPlaylistDestinationFileURL];
  }

  else
  {
    hlsPlaylistDestinationFileURL = [(HMCameraClipFetchVideoAssetContextOperation *)self hlsPlaylistDestinationFileURL];
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    v15 = v14;
    if (hlsPlaylistDestinationFileURL)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v16;
        v31 = 2112;
        v32 = hlsPlaylistDestinationFileURL;
        _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Saving video HLS playlist to %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      dataSource = [(HMCameraClipFetchVideoAssetContextOperation *)selfCopy2 dataSource];
      hlsPlaylist = [contextCopy hlsPlaylist];
      v28 = 0;
      v19 = [dataSource writeData:hlsPlaylist toFileURL:hlsPlaylistDestinationFileURL error:&v28];
      v20 = v28;

      if (v19)
      {
        futureWithNoResult = [MEMORY[0x1E69B3780] futureWithNoResult];
      }

      else
      {
        v23 = objc_autoreleasePoolPush();
        v24 = selfCopy2;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 138543874;
          v30 = v26;
          v31 = 2112;
          v32 = hlsPlaylistDestinationFileURL;
          v33 = 2112;
          v34 = v20;
          _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to save video HLS playlist to %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v23);
        futureWithNoResult = [MEMORY[0x1E69B3780] futureWithError:v20];
      }

      futureWithNoResult2 = futureWithNoResult;
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v22;
        _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Skipping HLS playlist write because no destination file URL was specified", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      futureWithNoResult2 = [MEMORY[0x1E69B3780] futureWithNoResult];
      hlsPlaylistDestinationFileURL = 0;
    }
  }

  return futureWithNoResult2;
}

- (id)decryptData:(id)data
{
  v23 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = [[HMCameraClipEncryptedDataContext alloc] initWithDataRepresentation:dataCopy];
  v6 = [HMCameraClipDecryptionManager alloc];
  clip = [(HMCameraClipFetchVideoAssetContextOperation *)self clip];
  encryptionKey = [clip encryptionKey];
  v9 = [(HMCameraClipDecryptionManager *)v6 initWithKey:encryptionKey];

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v17 = 138543874;
    v18 = v13;
    v19 = 2048;
    v20 = [dataCopy length];
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Decrypting video segment data of length %lu using encrypted data context %@", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  dataSource = [(HMCameraClipFetchVideoAssetContextOperation *)selfCopy dataSource];
  v15 = [dataSource dataFromEncryptedDataContext:v5 usingDecryptionManager:v9];

  return v15;
}

- (id)downloadVideoSegments:(id)segments forDataTask:(id)task andAppendToOutputStream:(id)stream
{
  v51 = *MEMORY[0x1E69E9840];
  segmentsCopy = segments;
  taskCopy = task;
  streamCopy = stream;
  isCancelled = [(HMCameraClipFetchVideoAssetContextOperation *)self isCancelled];
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (isCancelled)
  {
    if (v15)
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v16;
      v49 = 2112;
      v50 = segmentsCopy;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Skipping video data download for segments because we are cancelled: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = MEMORY[0x1E69B3780];
    firstObject = [MEMORY[0x1E696ABC0] hmfErrorWithCode:12];
    v19 = [v17 futureWithError:firstObject];
  }

  else
  {
    v37 = taskCopy;
    if (v15)
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v20;
      v49 = 2112;
      v50 = segmentsCopy;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Downloading video segments: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    firstObject = [segmentsCopy firstObject];
    byteOffset = [firstObject byteOffset];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v22 = segmentsCopy;
    v23 = [v22 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v43;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v43 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v42 + 1) + 8 * i);
          if ([v27 byteOffset] != byteOffset)
          {
            _HMFPreconditionFailure();
          }

          byteOffset2 = [v27 byteOffset];
          byteOffset = [v27 byteLength] + byteOffset2;
        }

        v24 = [v22 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v24);
    }

    byteOffset3 = [firstObject byteOffset];
    lastObject = [v22 lastObject];
    byteOffset4 = [lastObject byteOffset];
    lastObject2 = [v22 lastObject];
    byteLength = [lastObject2 byteLength];

    v34 = byteOffset4 - byteOffset3 + byteLength;
    taskCopy = v37;
    v35 = [v37 downloadDataForByteRange:{byteOffset3, v34}];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __105__HMCameraClipFetchVideoAssetContextOperation_downloadVideoSegments_forDataTask_andAppendToOutputStream___block_invoke;
    v38[3] = &unk_1E7548C18;
    v38[4] = selfCopy;
    v39 = v22;
    v41 = byteOffset3;
    v40 = streamCopy;
    v19 = [v35 flatMap:v38];
  }

  return v19;
}

id __105__HMCameraClipFetchVideoAssetContextOperation_downloadVideoSegments_forDataTask_andAppendToOutputStream___block_invoke(uint64_t a1, void *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v57 = v7;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Skipping video segment data decryption because we are cancelled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = MEMORY[0x1E69B3780];
    v9 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:12];
    v10 = [v8 futureWithError:v9];

    goto LABEL_29;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = *(a1 + 40);
  v11 = [obj countByEnumeratingWithState:&v52 objects:v66 count:16];
  if (!v11)
  {
    goto LABEL_17;
  }

  v13 = v11;
  v50 = *v53;
  *&v12 = 138543874;
  v48 = v12;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v53 != v50)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v52 + 1) + 8 * i);
      v16 = [v15 byteOffset] - *(a1 + 56);
      v17 = [v15 byteLength];
      if (v16 + v17 > [v3 length])
      {
        v29 = objc_autoreleasePoolPush();
        v30 = *(a1 + 32);
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          v69.location = v16;
          v69.length = v17;
          v33 = NSStringFromRange(v69);
          *buf = v48;
          v57 = v32;
          v58 = 2112;
          v59 = v33;
          v60 = 2112;
          v61 = v3;
          _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@Expected video segment range %@ in downloaded data %@ was not found.", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v29);
        v34 = MEMORY[0x1E69B3780];
        v19 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:11];
        v10 = [v34 futureWithError:v19];
        goto LABEL_28;
      }

      v18 = v3;
      v19 = [v3 subdataWithRange:{v16, v17}];
      v20 = [*(a1 + 32) decryptData:v19];
      v21 = objc_autoreleasePoolPush();
      v22 = *(a1 + 32);
      v23 = HMFGetOSLogHandle();
      v24 = v23;
      if (!v20)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543618;
          v57 = v35;
          v58 = 2112;
          v59 = v15;
          _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to decrypt video segment: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v36 = MEMORY[0x1E69B3780];
        v37 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:11];
        v10 = [v36 futureWithError:v37];
        v20 = 0;
LABEL_27:
        v3 = v18;

LABEL_28:
        goto LABEL_29;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [v20 length];
        v27 = *(a1 + 48);
        *buf = v48;
        v57 = v25;
        v58 = 2048;
        v59 = v26;
        v60 = 2112;
        v61 = v27;
        _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_INFO, "%{public}@Appending video segment data of length %lu to output stream: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      v28 = [*(a1 + 48) write:objc_msgSend(v20 maxLength:{"bytes"), objc_msgSend(v20, "length")}];
      if (v28 != [v20 length])
      {
        v38 = objc_autoreleasePoolPush();
        v39 = *(a1 + 32);
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v41 = v51 = v38;
          v42 = [v20 length];
          v43 = *(a1 + 48);
          v44 = [v43 streamError];
          *buf = 138544386;
          v57 = v41;
          v58 = 2048;
          v59 = v42;
          v60 = 2112;
          v61 = v43;
          v62 = 2048;
          v63 = v28;
          v64 = 2112;
          v65 = v44;
          v45 = v44;
          _os_log_impl(&dword_19BB39000, v40, OS_LOG_TYPE_ERROR, "%{public}@Expected to append %lu bytes to %@ but only wrote %lu: %@", buf, 0x34u);

          v38 = v51;
        }

        objc_autoreleasePoolPop(v38);
        v46 = MEMORY[0x1E69B3780];
        v37 = [*(a1 + 48) streamError];
        v10 = [v46 futureWithError:v37];
        goto LABEL_27;
      }

      v3 = v18;
    }

    v13 = [obj countByEnumeratingWithState:&v52 objects:v66 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_17:

  v10 = [MEMORY[0x1E69B3780] futureWithNoResult];
LABEL_29:

  return v10;
}

- (id)downloadVideoAssetForContext:(id)context
{
  v105 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if ([(HMCameraClipFetchVideoAssetContextOperation *)self isCancelled])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v98 = v7;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Skipping video data download because we are cancelled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = MEMORY[0x1E69B3780];
    v76 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:12];
    futureWithNoResult = [v8 futureWithError:v76];
  }

  else
  {
    clipDestinationFileURL = [(HMCameraClipFetchVideoAssetContextOperation *)self clipDestinationFileURL];
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (clipDestinationFileURL)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v107.location = [(HMCameraClipFetchVideoAssetContextOperation *)selfCopy2 videoDataSegmentsRange];
        v15 = NSStringFromRange(v107);
        videoSegments = [contextCopy videoSegments];
        *buf = 138543874;
        v98 = v14;
        v99 = 2112;
        v100 = v15;
        v101 = 2048;
        v102 = [videoSegments count];
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Downloading range of %@ from all %lu video data segments", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      v69 = [(HMCameraClipFetchVideoAssetContextOperation *)selfCopy2 videoSegmentsToDownloadForContext:contextCopy];
      if ([v69 count])
      {
        dataSource = [(HMCameraClipFetchVideoAssetContextOperation *)selfCopy2 dataSource];
        v95 = 0;
        v72 = [dataSource createTemporaryDirectoryAppropriateForURL:clipDestinationFileURL error:&v95];
        v67 = v95;

        v18 = objc_autoreleasePoolPush();
        v78 = selfCopy2;
        v19 = HMFGetOSLogHandle();
        v20 = v19;
        if (v72)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            v22 = [v69 count];
            v23 = [contextCopy url];
            *buf = 138544130;
            v98 = v21;
            v99 = 2048;
            v100 = v22;
            v101 = 2112;
            v102 = v23;
            v103 = 2112;
            v104 = v72;
            _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Downloading %lu video segment(s) from %@ to directory at URL %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v18);
          dataSource2 = [(HMCameraClipFetchVideoAssetContextOperation *)v78 dataSource];
          v25 = [contextCopy url];
          requiredHTTPHeaders = [contextCopy requiredHTTPHeaders];
          v27 = [dataSource2 dataTaskWithURL:v25 httpHeaderFields:requiredHTTPHeaders];

          v94[0] = 0;
          v94[1] = v94;
          v94[2] = 0x2020000000;
          v94[3] = 0;
          array = [MEMORY[0x1E695DF70] array];
          v28 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v69, "count")}];
          array2 = [MEMORY[0x1E695DF70] array];
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __76__HMCameraClipFetchVideoAssetContextOperation_downloadVideoAssetForContext___block_invoke;
          aBlock[3] = &unk_1E7548B78;
          aBlock[4] = v78;
          v68 = v27;
          v90 = v68;
          v93 = v94;
          v30 = v69;
          v91 = v30;
          v66 = v28;
          v92 = v66;
          v31 = _Block_copy(aBlock);
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          obj = v30;
          v32 = [obj countByEnumeratingWithState:&v85 objects:v96 count:16];
          if (v32)
          {
            v33 = 0;
            v73 = v32;
            v74 = *v86;
            while (2)
            {
              for (i = 0; i != v73; ++i)
              {
                if (*v86 != v74)
                {
                  objc_enumerationMutation(obj);
                }

                v35 = *(*(&v85 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if ([array2 count])
                  {
                    if (!v33)
                    {
                      _HMFPreconditionFailure();
                      __break(1u);
                    }

                    v31[2](v31, array2, v33);
                    [array2 removeAllObjects];
                  }

                  uUID = [MEMORY[0x1E696AFB0] UUID];
                  uUIDString = [uUID UUIDString];
                  v38 = [v72 URLByAppendingPathComponent:uUIDString];
                  v39 = [v38 URLByAppendingPathExtension:@"mp4"];

                  [array addObject:v39];
                  dataSource3 = [(HMCameraClipFetchVideoAssetContextOperation *)v78 dataSource];
                  v41 = [dataSource3 outputStreamToFileAtURL:v39 shouldAppend:0];

                  [v41 open];
                  v42 = objc_autoreleasePoolPush();
                  v43 = v78;
                  v44 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                  {
                    v45 = HMFGetLogIdentifier();
                    *buf = 138544130;
                    v98 = v45;
                    v99 = 2112;
                    v100 = v41;
                    v101 = 2112;
                    v102 = v39;
                    v103 = 2112;
                    v104 = v35;
                    _os_log_impl(&dword_19BB39000, v44, OS_LOG_TYPE_INFO, "%{public}@Opened video file output stream %@ at %@ for init segment %@", buf, 0x2Au);
                  }

                  objc_autoreleasePoolPop(v42);
                  v33 = v41;
                }

                if (!v33)
                {
                  v56 = objc_autoreleasePoolPush();
                  v57 = v78;
                  v58 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                  {
                    v59 = HMFGetLogIdentifier();
                    *buf = 138543618;
                    v98 = v59;
                    v99 = 2112;
                    v100 = v35;
                    _os_log_impl(&dword_19BB39000, v58, OS_LOG_TYPE_ERROR, "%{public}@Cannot download video segment that exists before any init segment: %@", buf, 0x16u);
                  }

                  objc_autoreleasePoolPop(v56);
                  v60 = MEMORY[0x1E69B3780];
                  v61 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:15];
                  futureWithNoResult = [v60 futureWithError:v61];
                  v33 = 0;
                  goto LABEL_49;
                }

                lastObject = [array2 lastObject];
                v47 = lastObject;
                if (lastObject)
                {
                  byteOffset = [lastObject byteOffset];
                  byteLength = [v47 byteLength];
                  if (byteLength + byteOffset != [v35 byteOffset])
                  {
                    v31[2](v31, array2, v33);
                    [array2 removeAllObjects];
                  }
                }

                [array2 addObject:v35];
                v50 = [array2 count];
                if (v50 >= [(HMCameraClipFetchVideoAssetContextOperation *)v78 videoSegmentsDownloadBatchSize])
                {
                  v31[2](v31, array2, v33);
                  [array2 removeAllObjects];
                }
              }

              v73 = [obj countByEnumeratingWithState:&v85 objects:v96 count:16];
              if (v73)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v33 = 0;
          }

          if ([array2 count])
          {
            v31[2](v31, array2, v33);
          }

          obj = [MEMORY[0x1E69B3780] chainFutures:v66];
          v81[0] = MEMORY[0x1E69E9820];
          v81[1] = 3221225472;
          v81[2] = __76__HMCameraClipFetchVideoAssetContextOperation_downloadVideoAssetForContext___block_invoke_46;
          v81[3] = &unk_1E7548BC8;
          v82 = array;
          v83 = v78;
          v84 = clipDestinationFileURL;
          v64 = [obj flatMap:v81];
          v79[0] = MEMORY[0x1E69E9820];
          v79[1] = 3221225472;
          v79[2] = __76__HMCameraClipFetchVideoAssetContextOperation_downloadVideoAssetForContext___block_invoke_2_49;
          v79[3] = &unk_1E7548BF0;
          v79[4] = v78;
          v80 = v72;
          futureWithNoResult = [v64 addCompletionBlock:v79];

          v61 = v82;
LABEL_49:

          _Block_object_dispose(v94, 8);
        }

        else
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v62 = HMFGetLogIdentifier();
            *buf = 138543618;
            v98 = v62;
            v99 = 2112;
            v100 = v67;
            _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to create video files directory: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v18);
          v63 = MEMORY[0x1E69B3780];
          v68 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:15];
          futureWithNoResult = [v63 futureWithError:v68];
        }
      }

      else
      {
        v52 = objc_autoreleasePoolPush();
        v53 = selfCopy2;
        v54 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v55 = HMFGetLogIdentifier();
          *buf = 138543362;
          v98 = v55;
          _os_log_impl(&dword_19BB39000, v54, OS_LOG_TYPE_INFO, "%{public}@Skipping video data download as no video segments need to be downloaded", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v52);
        [(HMCameraClipFetchVideoAssetContextOperation *)v53 updateDownloadProgressToPercentageComplete:100];
        futureWithNoResult = [MEMORY[0x1E69B3780] futureWithNoResult];
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v51 = HMFGetLogIdentifier();
        *buf = 138543362;
        v98 = v51;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Skipping video data download because no destination file URL was specified", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      [(HMCameraClipFetchVideoAssetContextOperation *)selfCopy2 updateDownloadProgressToPercentageComplete:100];
      futureWithNoResult = [MEMORY[0x1E69B3780] futureWithNoResult];
    }
  }

  return futureWithNoResult;
}

void __76__HMCameraClipFetchVideoAssetContextOperation_downloadVideoAssetForContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 copy];
  v7 = MEMORY[0x1E69B3780];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__HMCameraClipFetchVideoAssetContextOperation_downloadVideoAssetForContext___block_invoke_2;
  v14[3] = &unk_1E7548B50;
  v8 = *(a1 + 40);
  v15 = *(a1 + 32);
  v16 = v6;
  v17 = v8;
  v18 = v5;
  v20 = *(a1 + 64);
  v19 = *(a1 + 48);
  v9 = MEMORY[0x1E69B3790];
  v10 = v5;
  v11 = v6;
  v12 = [v9 immediateScheduler];
  v13 = [v7 lazyFutureWithBlock:v14 scheduler:v12];

  [*(a1 + 56) addObject:v13];
}

id __76__HMCameraClipFetchVideoAssetContextOperation_downloadVideoAssetForContext___block_invoke_46(id *a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([a1[4] count] == 1)
  {
    v4 = [a1[4] firstObject];
    v5 = objc_autoreleasePoolPush();
    v6 = a1[5];
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = a1[6];
      *buf = 138543874;
      v42 = v8;
      v43 = 2112;
      v44 = v4;
      v45 = 2112;
      v46 = v9;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Finished downloading clip data. Copying single video file at %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [a1[5] dataSource];
    [v10 removeItemAtURL:a1[6] error:0];

    v11 = [a1[5] dataSource];
    v12 = [a1[4] firstObject];
    v13 = a1[6];
    v40 = 0;
    v14 = [v11 copyItemAtURL:v12 toURL:v13 error:&v40];
    v15 = v40;

    if (v14)
    {
      v16 = [MEMORY[0x1E69B3780] futureWithNoResult];
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = a1[5];
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [a1[4] firstObject];
        v33 = a1[6];
        *buf = 138544130;
        v42 = v31;
        v43 = 2112;
        v44 = v32;
        v45 = 2112;
        v46 = v33;
        v47 = 2112;
        v48 = v15;
        _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to copy video file at %@ to %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v28);
      v34 = MEMORY[0x1E69B3780];
      v35 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
      v16 = [v34 futureWithError:v35];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = a1[5];
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [a1[4] count];
      v22 = a1[6];
      *buf = 138543874;
      v42 = v20;
      v43 = 2048;
      v44 = v21;
      v45 = 2112;
      v46 = v22;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Finished downloading clip data. Combining %ld video file(s) to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v23 = [a1[5] dataSource];
    v24 = a1[4];
    v25 = [a1[5] underlyingQueue];
    v26 = [v23 createVideoFileCombinerWithVideoFileURLs:v24 queue:v25];

    v27 = MEMORY[0x1E69B3780];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __76__HMCameraClipFetchVideoAssetContextOperation_downloadVideoAssetForContext___block_invoke_47;
    v37[3] = &unk_1E7548BA0;
    v38 = v26;
    v39 = a1[6];
    v4 = v26;
    v16 = [v27 futureWithErrorOnlyHandlerAdapterBlock:v37];

    v15 = v38;
  }

  return v16;
}

void __76__HMCameraClipFetchVideoAssetContextOperation_downloadVideoAssetForContext___block_invoke_2_49(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v22 = v10;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Finished copying/combining video files", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [*(a1 + 32) dataSource];
  v12 = *(a1 + 40);
  v20 = 0;
  v13 = [v11 removeItemAtURL:v12 error:&v20];
  v14 = v20;

  if ((v13 & 1) == 0)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 40);
      *buf = 138543874;
      v22 = v18;
      v23 = 2112;
      v24 = v19;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove video files directory at URL %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
  }
}

void __76__HMCameraClipFetchVideoAssetContextOperation_downloadVideoAssetForContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = a2;
  v8 = [v3 downloadVideoSegments:v4 forDataTask:v5 andAppendToOutputStream:v6];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __76__HMCameraClipFetchVideoAssetContextOperation_downloadVideoAssetForContext___block_invoke_3;
  v17 = &unk_1E7548B28;
  v21 = *(a1 + 72);
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v18 = v9;
  v19 = v10;
  v20 = *(a1 + 64);
  v11 = [v8 addSuccessBlock:&v14];
  v12 = [v7 completionHandlerAdapter];

  v13 = [v11 addCompletionBlock:v12];
}

uint64_t __76__HMCameraClipFetchVideoAssetContextOperation_downloadVideoAssetForContext___block_invoke_3(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 24) += [*(a1 + 32) count];
  v2 = 100 * *(*(*(a1 + 56) + 8) + 24);
  v3 = *(a1 + 40);
  v4 = v2 / [*(a1 + 48) count];

  return [v3 updateDownloadProgressToPercentageComplete:v4];
}

- (id)videoSegmentsToDownloadForContext:(id)context
{
  v48 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    videoSegments = [contextCopy videoSegments];
    *buf = 138543618;
    v45 = v8;
    v46 = 2112;
    v47 = videoSegments;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Determining video segments to download from all video segments: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  array = [MEMORY[0x1E695DF70] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v36 = contextCopy;
  obj = [contextCopy videoSegments];
  v11 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v11)
  {
    v13 = 0;
    goto LABEL_33;
  }

  v12 = v11;
  v13 = 0;
  v14 = 0;
  v15 = *v40;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v40 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v39 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      if (!v19)
      {
        v38 = v13;
        v23 = v12;
        v24 = selfCopy;
        v25 = v17;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        v22 = v26;

        if (!v22)
        {
          selfCopy = v24;
          v12 = v23;
          v13 = v38;
          goto LABEL_29;
        }

        selfCopy = v24;
        videoDataSegmentsRange = [(HMCameraClipFetchVideoAssetContextOperation *)v24 videoDataSegmentsRange];
        if (v14 < videoDataSegmentsRange)
        {
          v12 = v23;
        }

        else
        {
          v12 = v23;
          if (v14 - videoDataSegmentsRange < v28)
          {
            if (v38)
            {
              [array addObject:v38];
            }

            [array addObject:v22];
            v13 = 0;
            goto LABEL_28;
          }
        }

        v13 = v38;
LABEL_28:
        ++v14;
        goto LABEL_29;
      }

      videoDataSegmentsRange2 = [(HMCameraClipFetchVideoAssetContextOperation *)selfCopy videoDataSegmentsRange];
      if (v14 < videoDataSegmentsRange2 || v14 - videoDataSegmentsRange2 >= v21)
      {
        v29 = v17;
        v22 = v13;
        v13 = v29;
      }

      else
      {
        [array addObject:v19];
        v22 = v13;
        v13 = 0;
      }

LABEL_29:
    }

    v12 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  }

  while (v12);
LABEL_33:

  v30 = objc_autoreleasePoolPush();
  v31 = selfCopy;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    v33 = HMFGetLogIdentifier();
    *buf = 138543618;
    v45 = v33;
    v46 = 2112;
    v47 = array;
    _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_DEBUG, "%{public}@Determined video segments to download: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v30);
  v34 = [array copy];

  return v34;
}

- (void)updateDownloadProgressToPercentageComplete:(unint64_t)complete
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2048;
    completeCopy = complete;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Updating download progress to %lu", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  downloadProgressHandler = [(HMCameraClipFetchVideoAssetContextOperation *)selfCopy downloadProgressHandler];

  if (downloadProgressHandler)
  {
    downloadProgressHandler2 = [(HMCameraClipFetchVideoAssetContextOperation *)selfCopy downloadProgressHandler];
    downloadProgressHandler2[2](downloadProgressHandler2, complete);
  }
}

- (id)fetchVideoAssetContext
{
  v3 = objc_alloc_init(MEMORY[0x1E69B3780]);
  clipManager = [(HMCameraClipFetchVideoAssetContextOperation *)self clipManager];
  clip = [(HMCameraClipFetchVideoAssetContextOperation *)self clip];
  completionHandlerAdapter = [v3 completionHandlerAdapter];
  [clipManager fetchVideoSegmentsAssetContextForClip:clip completion:completionHandlerAdapter];

  return v3;
}

- (void)main
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = selfCopy;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting fetch video asset context operation: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v15 = __Block_byref_object_copy__24684;
  v16 = __Block_byref_object_dispose__24685;
  v17 = 0;
  fetchVideoAssetContext = [(HMCameraClipFetchVideoAssetContextOperation *)selfCopy fetchVideoAssetContext];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__HMCameraClipFetchVideoAssetContextOperation_main__block_invoke;
  v13[3] = &unk_1E7548AB0;
  v13[4] = selfCopy;
  v13[5] = buf;
  v8 = [fetchVideoAssetContext flatMap:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__HMCameraClipFetchVideoAssetContextOperation_main__block_invoke_2;
  v12[3] = &unk_1E7548AD8;
  v12[4] = selfCopy;
  v12[5] = buf;
  v9 = [v8 flatMap:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__HMCameraClipFetchVideoAssetContextOperation_main__block_invoke_3;
  v11[3] = &unk_1E7548B00;
  v11[4] = selfCopy;
  v11[5] = buf;
  v10 = [v9 addCompletionBlock:v11];

  _Block_object_dispose(buf, 8);
}

id __51__HMCameraClipFetchVideoAssetContextOperation_main__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  v5 = [*(a1 + 32) downloadVideoAssetForContext:*(*(*(a1 + 40) + 8) + 40)];

  return v5;
}

uint64_t __51__HMCameraClipFetchVideoAssetContextOperation_main__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return [v3 finishWithVideoAssetContext:*(*(*(a1 + 40) + 8) + 40)];
  }

  else
  {
    return [v3 cancelWithError:?];
  }
}

- (void)finishWithVideoAssetContext:(id)context
{
  contextCopy = context;
  if (![(HMFOperation *)self isFinished])
  {
    fetchVideoAssetContextCompletionBlock = [(HMCameraClipFetchVideoAssetContextOperation *)self fetchVideoAssetContextCompletionBlock];

    if (fetchVideoAssetContextCompletionBlock)
    {
      fetchVideoAssetContextCompletionBlock2 = [(HMCameraClipFetchVideoAssetContextOperation *)self fetchVideoAssetContextCompletionBlock];
      (fetchVideoAssetContextCompletionBlock2)[2](fetchVideoAssetContextCompletionBlock2, contextCopy, 0);
    }
  }

  v7.receiver = self;
  v7.super_class = HMCameraClipFetchVideoAssetContextOperation;
  [(HMFOperation *)&v7 finish];
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  if (([(HMCameraClipFetchVideoAssetContextOperation *)self isCancelled]& 1) == 0)
  {
    fetchVideoAssetContextCompletionBlock = [(HMCameraClipFetchVideoAssetContextOperation *)self fetchVideoAssetContextCompletionBlock];

    if (fetchVideoAssetContextCompletionBlock)
    {
      fetchVideoAssetContextCompletionBlock2 = [(HMCameraClipFetchVideoAssetContextOperation *)self fetchVideoAssetContextCompletionBlock];
      (fetchVideoAssetContextCompletionBlock2)[2](fetchVideoAssetContextCompletionBlock2, 0, errorCopy);
    }
  }

  v7.receiver = self;
  v7.super_class = HMCameraClipFetchVideoAssetContextOperation;
  [(HMFOperation *)&v7 cancelWithError:errorCopy];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  clip = [(HMCameraClipFetchVideoAssetContextOperation *)self clip];
  [v3 appendFormat:@" clip: %@", clip];

  clipDestinationFileURL = [(HMCameraClipFetchVideoAssetContextOperation *)self clipDestinationFileURL];
  [v3 appendFormat:@" clipDestinationFileURL: %@", clipDestinationFileURL];

  hlsPlaylistDestinationFileURL = [(HMCameraClipFetchVideoAssetContextOperation *)self hlsPlaylistDestinationFileURL];
  [v3 appendFormat:@" hlsPlaylistDestinationFileURL: %@", hlsPlaylistDestinationFileURL];

  [v3 appendString:@">"];
  v7 = [v3 copy];

  return v7;
}

- (HMCameraClipFetchVideoAssetContextOperation)initWithClipManager:(id)manager clip:(id)clip dataSource:(id)source
{
  managerCopy = manager;
  clipCopy = clip;
  sourceCopy = source;
  if (!managerCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!clipCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = sourceCopy;
  if (!sourceCopy)
  {
LABEL_9:
    v16 = _HMFPreconditionFailure();
    return [(HMCameraClipFetchVideoAssetContextOperation *)v16 initWithClipManager:v17 clip:v18, v19];
  }

  v20.receiver = self;
  v20.super_class = HMCameraClipFetchVideoAssetContextOperation;
  v13 = [(HMFOperation *)&v20 initWithTimeout:0.0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_clipManager, manager);
    objc_storeStrong(&v14->_clip, clip);
    objc_storeStrong(&v14->_dataSource, source);
    v14->_videoDataSegmentsRange = xmmword_19BE37670;
    v14->_videoSegmentsDownloadBatchSize = 8;
  }

  return v14;
}

- (HMCameraClipFetchVideoAssetContextOperation)initWithClipManager:(id)manager clip:(id)clip
{
  clipCopy = clip;
  managerCopy = manager;
  v8 = objc_alloc_init(HMCameraClipFetchAssetContextOperationDataSource);
  v9 = [(HMCameraClipFetchVideoAssetContextOperation *)self initWithClipManager:managerCopy clip:clipCopy dataSource:v8];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t31_24721 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t31_24721, &__block_literal_global_24722);
  }

  v3 = logCategory__hmf_once_v32_24723;

  return v3;
}

uint64_t __58__HMCameraClipFetchVideoAssetContextOperation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v32_24723;
  logCategory__hmf_once_v32_24723 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
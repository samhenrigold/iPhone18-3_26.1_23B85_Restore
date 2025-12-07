@interface SSDownloadManagerAppShim
- (SSDownloadManagerAppShim)initWithManagerOptions:(id)options;
- (id)__app_convertOptions:(id)options;
- (id)__app_downloadsForJobs:(id)jobs;
- (id)__app_extractJobIDsFromSoftwareDownloads:(id)downloads;
- (id)__app_getAllDownloads;
- (id)__app_newActivityWithDownload:(id)download;
- (id)__app_newAssetWithDownloadAsset:(id)asset assetType:(id)type;
- (id)__app_newManifestWithType:(int64_t)type;
- (id)_copyDownloadsForMessage:(int64_t)message downloadIDs:(id)ds;
- (void)__app_cancelDownloads:(id)downloads completionBlock:(id)block;
- (void)__app_dispatchBlock:(id)block withError:(id)error;
- (void)__app_filterDownloads:(id)downloads withResult:(id)result;
- (void)__app_finishDownloads:(id)downloads;
- (void)__app_insertDownloads:(id)downloads before:(id)before after:(id)after completionBlock:(id)block;
- (void)__app_installManifest:(id)manifest completionBlock:(id)block;
- (void)__app_pauseDownloads:(id)downloads completionBlock:(id)block;
- (void)__app_resumeDownloads:(id)downloads completionBlock:(id)block;
- (void)__app_sendDownloadsChanged:(id)changed filterSoftware:(BOOL)software;
- (void)__app_setPropertiesForActivity:(id)activity withDownload:(id)download;
- (void)_insertDownloads:(id)downloads before:(id)before after:(id)after completionBlock:(id)block;
- (void)_pauseDownloads:(id)downloads forced:(BOOL)forced completionBlock:(id)block;
- (void)_sendDownloadsChanged:(id)changed;
- (void)cancelAllDownloadsWithCompletionBlock:(id)block;
- (void)cancelDownloads:(id)downloads completionBlock:(id)block;
- (void)finishDownloads:(id)downloads;
- (void)jobManager:(id)manager changedJobs:(id)jobs;
- (void)jobManager:(id)manager updatedProgressOfJobs:(id)jobs;
- (void)jobManager:(id)manager updatedStateOfJobs:(id)jobs;
- (void)moveDownload:(id)download afterDownload:(id)afterDownload completionBlock:(id)block;
- (void)moveDownload:(id)download beforeDownload:(id)beforeDownload completionBlock:(id)block;
- (void)restartDownloads:(id)downloads completionBlock:(id)block;
- (void)resumeDownloads:(id)downloads completionBlock:(id)block;
- (void)setDownloads:(id)downloads forKinds:(id)kinds completionBlock:(id)block;
@end

@implementation SSDownloadManagerAppShim

- (SSDownloadManagerAppShim)initWithManagerOptions:(id)options
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = SSDownloadManagerAppShim;
  v5 = [(SSDownloadManager *)&v13 initWithManagerOptions:optionsCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [(SSDownloadManagerAppShim *)v5 __app_convertOptions:optionsCopy];
    v9 = SSVAppstoreDaemonFramework(v7, v8);
    v10 = [objc_alloc(SSVWeakLinkedClassForString(&cfstr_Asdjobmanager.isa v9))];
    jobManager = v6->_jobManager;
    v6->_jobManager = v10;

    [(ASDJobManager *)v6->_jobManager addJobObserver:v6];
  }

  return v6;
}

- (void)jobManager:(id)manager changedJobs:(id)jobs
{
  v5 = [(SSDownloadManagerAppShim *)self __app_downloadsForJobs:jobs];
  if ([v5 count])
  {
    accessQueue = self->super._accessQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__SSDownloadManagerAppShim_jobManager_changedJobs___block_invoke;
    v7[3] = &unk_1E84AC028;
    v7[4] = self;
    v8 = v5;
    dispatch_async(accessQueue, v7);
  }
}

void __51__SSDownloadManagerAppShim_jobManager_changedJobs___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 40)];
  [v1 __app_sendDownloadsChanged:v2 filterSoftware:0];
}

- (void)jobManager:(id)manager updatedProgressOfJobs:(id)jobs
{
  v5 = [(SSDownloadManagerAppShim *)self __app_downloadsForJobs:jobs];
  if ([v5 count])
  {
    accessQueue = self->super._accessQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__SSDownloadManagerAppShim_jobManager_updatedProgressOfJobs___block_invoke;
    v7[3] = &unk_1E84AC028;
    v7[4] = self;
    v8 = v5;
    dispatch_async(accessQueue, v7);
  }
}

void __61__SSDownloadManagerAppShim_jobManager_updatedProgressOfJobs___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 40)];
  [v1 __app_sendDownloadsChanged:v2 filterSoftware:0];
}

- (void)jobManager:(id)manager updatedStateOfJobs:(id)jobs
{
  v5 = [(SSDownloadManagerAppShim *)self __app_downloadsForJobs:jobs];
  if ([v5 count])
  {
    accessQueue = self->super._accessQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__SSDownloadManagerAppShim_jobManager_updatedStateOfJobs___block_invoke;
    v7[3] = &unk_1E84AC028;
    v7[4] = self;
    v8 = v5;
    dispatch_async(accessQueue, v7);
  }
}

void __58__SSDownloadManagerAppShim_jobManager_updatedStateOfJobs___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 40)];
  [v1 __app_sendDownloadsChanged:v2 filterSoftware:0];
}

- (void)cancelAllDownloadsWithCompletionBlock:(id)block
{
  v3.receiver = self;
  v3.super_class = SSDownloadManagerAppShim;
  [(SSDownloadManager *)&v3 cancelAllDownloadsWithCompletionBlock:block];
}

- (void)cancelDownloads:(id)downloads completionBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__SSDownloadManagerAppShim_cancelDownloads_completionBlock___block_invoke;
  v8[3] = &unk_1E84B32E0;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [(SSDownloadManagerAppShim *)self __app_filterDownloads:downloads withResult:v8];
}

void __60__SSDownloadManagerAppShim_cancelDownloads_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    objc_initWeak(&location, *(a1 + 32));
    v7 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__SSDownloadManagerAppShim_cancelDownloads_completionBlock___block_invoke_2;
    v11[3] = &unk_1E84B3CC0;
    objc_copyWeak(&v14, &location);
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v13 = v8;
    v11[4] = v9;
    v12 = v5;
    v10.receiver = v7;
    v10.super_class = SSDownloadManagerAppShim;
    objc_msgSendSuper2(&v10, sel_cancelDownloads_completionBlock_, v6, v11);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    [*(a1 + 32) __app_cancelDownloads:v5 completionBlock:*(a1 + 40)];
  }
}

void __60__SSDownloadManagerAppShim_cancelDownloads_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (v5)
  {
    [WeakRetained __app_dispatchBlock:*(a1 + 48) withError:v5];
  }

  else
  {
    [*(a1 + 32) __app_cancelDownloads:*(a1 + 40) completionBlock:*(a1 + 48)];
  }
}

- (void)finishDownloads:(id)downloads
{
  v6.receiver = self;
  v6.super_class = SSDownloadManagerAppShim;
  downloadsCopy = downloads;
  [(SSDownloadManager *)&v6 _willFinishDownloads:downloadsCopy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__SSDownloadManagerAppShim_finishDownloads___block_invoke;
  v5[3] = &unk_1E84B3CE8;
  v5[4] = self;
  [(SSDownloadManagerAppShim *)self __app_filterDownloads:downloadsCopy withResult:v5];
}

void __44__SSDownloadManagerAppShim_finishDownloads___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v7.receiver = *(a1 + 32);
    v7.super_class = SSDownloadManagerAppShim;
    objc_msgSendSuper2(&v7, sel__finishDownloads_, v6);
  }

  [*(a1 + 32) __app_finishDownloads:v5];
}

- (void)moveDownload:(id)download afterDownload:(id)afterDownload completionBlock:(id)block
{
  downloadCopy = download;
  afterDownloadCopy = afterDownload;
  blockCopy = block;
  v11 = [downloadCopy valueForProperty:@"1"];
  v12 = [v11 isEqualToString:@"software"];

  v13 = [afterDownloadCopy valueForProperty:@"1"];
  v14 = [v13 isEqualToString:@"software"];

  if ((v12 & 1) == 0 && (v14 & 1) == 0)
  {
    v15.receiver = self;
    v15.super_class = SSDownloadManagerAppShim;
    [(SSDownloadManager *)&v15 moveDownload:downloadCopy afterDownload:afterDownloadCopy completionBlock:blockCopy];
  }
}

- (void)moveDownload:(id)download beforeDownload:(id)beforeDownload completionBlock:(id)block
{
  downloadCopy = download;
  beforeDownloadCopy = beforeDownload;
  blockCopy = block;
  v11 = [downloadCopy valueForProperty:@"1"];
  v12 = [v11 isEqualToString:@"software"];

  v13 = [beforeDownloadCopy valueForProperty:@"1"];
  v14 = [v13 isEqualToString:@"software"];

  if ((v12 & 1) == 0 && (v14 & 1) == 0)
  {
    v15.receiver = self;
    v15.super_class = SSDownloadManagerAppShim;
    [(SSDownloadManager *)&v15 moveDownload:downloadCopy beforeDownload:beforeDownloadCopy completionBlock:blockCopy];
  }
}

- (void)resumeDownloads:(id)downloads completionBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__SSDownloadManagerAppShim_resumeDownloads_completionBlock___block_invoke;
  v8[3] = &unk_1E84B32E0;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [(SSDownloadManagerAppShim *)self __app_filterDownloads:downloads withResult:v8];
}

void __60__SSDownloadManagerAppShim_resumeDownloads_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    objc_initWeak(&location, *(a1 + 32));
    v7 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__SSDownloadManagerAppShim_resumeDownloads_completionBlock___block_invoke_2;
    v11[3] = &unk_1E84B3CC0;
    objc_copyWeak(&v14, &location);
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v13 = v8;
    v11[4] = v9;
    v12 = v5;
    v10.receiver = v7;
    v10.super_class = SSDownloadManagerAppShim;
    objc_msgSendSuper2(&v10, sel_resumeDownloads_completionBlock_, v6, v11);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    [*(a1 + 32) __app_resumeDownloads:v5 completionBlock:*(a1 + 40)];
  }
}

void __60__SSDownloadManagerAppShim_resumeDownloads_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (v5)
  {
    [WeakRetained __app_dispatchBlock:*(a1 + 48) withError:v5];
  }

  else
  {
    [*(a1 + 32) __app_resumeDownloads:*(a1 + 40) completionBlock:*(a1 + 48)];
  }
}

- (void)restartDownloads:(id)downloads completionBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__SSDownloadManagerAppShim_restartDownloads_completionBlock___block_invoke;
  v8[3] = &unk_1E84B32E0;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [(SSDownloadManagerAppShim *)self __app_filterDownloads:downloads withResult:v8];
}

void __61__SSDownloadManagerAppShim_restartDownloads_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    objc_initWeak(&location, *(a1 + 32));
    v7 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__SSDownloadManagerAppShim_restartDownloads_completionBlock___block_invoke_2;
    v9[3] = &unk_1E84AE478;
    objc_copyWeak(&v11, &location);
    v10 = *(a1 + 40);
    v8.receiver = v7;
    v8.super_class = SSDownloadManagerAppShim;
    objc_msgSendSuper2(&v8, sel_restartDownloads_completionBlock_, v6, v9);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __61__SSDownloadManagerAppShim_restartDownloads_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained __app_dispatchBlock:*(a1 + 32) withError:v3];
}

- (void)setDownloads:(id)downloads forKinds:(id)kinds completionBlock:(id)block
{
  downloadsCopy = downloads;
  kindsCopy = kinds;
  blockCopy = block;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__SSDownloadManagerAppShim_setDownloads_forKinds_completionBlock___block_invoke;
  v14[3] = &unk_1E84B3D10;
  v14[4] = self;
  v15 = downloadsCopy;
  v16 = kindsCopy;
  v17 = blockCopy;
  v11 = kindsCopy;
  v12 = downloadsCopy;
  v13 = blockCopy;
  [(SSDownloadManagerAppShim *)self __app_filterDownloads:v12 withResult:v14];
}

void __66__SSDownloadManagerAppShim_setDownloads_forKinds_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    objc_initWeak(&location, *(a1 + 32));
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__SSDownloadManagerAppShim_setDownloads_forKinds_completionBlock___block_invoke_2;
    v11[3] = &unk_1E84B32B8;
    objc_copyWeak(&v14, &location);
    v13 = *(a1 + 56);
    v12 = v5;
    v10.receiver = v8;
    v10.super_class = SSDownloadManagerAppShim;
    objc_msgSendSuper2(&v10, sel_setDownloads_forKinds_completionBlock_, v7, v9, v11);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    [*(a1 + 32) __app_insertDownloads:v5 before:0 after:0 completionBlock:*(a1 + 56)];
  }
}

void __66__SSDownloadManagerAppShim_setDownloads_forKinds_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (v5)
  {
    [WeakRetained __app_dispatchBlock:*(a1 + 40) withError:v5];
  }

  else
  {
    [WeakRetained __app_insertDownloads:*(a1 + 32) before:0 after:0 completionBlock:*(a1 + 40)];
  }
}

- (id)_copyDownloadsForMessage:(int64_t)message downloadIDs:(id)ds
{
  v9.receiver = self;
  v9.super_class = SSDownloadManagerAppShim;
  v5 = [(SSDownloadManager *)&v9 _copyDownloadsForMessage:message downloadIDs:ds];
  v6 = [v5 indexesOfObjectsPassingTest:&__block_literal_global_46];
  [v5 removeObjectsAtIndexes:v6];
  __app_getAllDownloads = [(SSDownloadManagerAppShim *)self __app_getAllDownloads];
  [v5 addObjectsFromArray:__app_getAllDownloads];

  return v5;
}

uint64_t __65__SSDownloadManagerAppShim__copyDownloadsForMessage_downloadIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 valueForProperty:@"1"];
  v3 = [v2 isEqualToString:@"software"];

  return v3;
}

- (void)_insertDownloads:(id)downloads before:(id)before after:(id)after completionBlock:(id)block
{
  beforeCopy = before;
  afterCopy = after;
  blockCopy = block;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__SSDownloadManagerAppShim__insertDownloads_before_after_completionBlock___block_invoke;
  v16[3] = &unk_1E84B3D80;
  v16[4] = self;
  v17 = beforeCopy;
  v18 = afterCopy;
  v19 = blockCopy;
  v13 = blockCopy;
  v14 = afterCopy;
  v15 = beforeCopy;
  [(SSDownloadManagerAppShim *)self __app_filterDownloads:downloads withResult:v16];
}

void __74__SSDownloadManagerAppShim__insertDownloads_before_after_completionBlock___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    objc_initWeak(&location, a1[4]);
    v8 = a1[4];
    v7 = a1[5];
    v9 = a1[6];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__SSDownloadManagerAppShim__insertDownloads_before_after_completionBlock___block_invoke_2;
    v11[3] = &unk_1E84B3D58;
    objc_copyWeak(&v16, &location);
    v15 = a1[7];
    v12 = v5;
    v13 = a1[5];
    v14 = a1[6];
    v10.receiver = v8;
    v10.super_class = SSDownloadManagerAppShim;
    objc_msgSendSuper2(&v10, sel__insertDownloads_before_after_completionBlock_, v6, v7, v9, v11);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    [a1[4] __app_insertDownloads:v5 before:a1[5] after:a1[6] completionBlock:a1[7]];
  }
}

void __74__SSDownloadManagerAppShim__insertDownloads_before_after_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = WeakRetained;
  if (v5)
  {
    [WeakRetained __app_dispatchBlock:*(a1 + 56) withError:v5];
  }

  else
  {
    [WeakRetained __app_insertDownloads:*(a1 + 32) before:*(a1 + 40) after:*(a1 + 48) completionBlock:*(a1 + 56)];
  }
}

- (void)_pauseDownloads:(id)downloads forced:(BOOL)forced completionBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__SSDownloadManagerAppShim__pauseDownloads_forced_completionBlock___block_invoke;
  v10[3] = &unk_1E84B3308;
  v10[4] = self;
  v11 = blockCopy;
  forcedCopy = forced;
  v9 = blockCopy;
  [(SSDownloadManagerAppShim *)self __app_filterDownloads:downloads withResult:v10];
}

void __67__SSDownloadManagerAppShim__pauseDownloads_forced_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    objc_initWeak(&location, *(a1 + 32));
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__SSDownloadManagerAppShim__pauseDownloads_forced_completionBlock___block_invoke_2;
    v12[3] = &unk_1E84B3CC0;
    objc_copyWeak(&v15, &location);
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v14 = v9;
    v12[4] = v10;
    v13 = v5;
    v11.receiver = v7;
    v11.super_class = SSDownloadManagerAppShim;
    objc_msgSendSuper2(&v11, sel__pauseDownloads_forced_completionBlock_, v6, v8, v12);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    [*(a1 + 32) __app_pauseDownloads:v5 completionBlock:*(a1 + 40)];
  }
}

void __67__SSDownloadManagerAppShim__pauseDownloads_forced_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (v5)
  {
    [WeakRetained __app_dispatchBlock:*(a1 + 48) withError:v5];
  }

  else
  {
    [*(a1 + 32) __app_pauseDownloads:*(a1 + 40) completionBlock:*(a1 + 48)];
  }
}

- (void)_sendDownloadsChanged:(id)changed
{
  accessQueue = self->super._accessQueue;
  changedCopy = changed;
  dispatch_assert_queue_V2(accessQueue);
  [(SSDownloadManagerAppShim *)self __app_sendDownloadsChanged:changedCopy filterSoftware:1];
}

- (void)__app_cancelDownloads:(id)downloads completionBlock:(id)block
{
  downloadsCopy = downloads;
  blockCopy = block;
  if ([downloadsCopy count])
  {
    v8 = [(SSDownloadManagerAppShim *)self __app_extractJobIDsFromSoftwareDownloads:downloadsCopy];
    jobManager = self->_jobManager;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__SSDownloadManagerAppShim___app_cancelDownloads_completionBlock___block_invoke;
    v10[3] = &unk_1E84B3DA8;
    v10[4] = self;
    v11 = blockCopy;
    [(ASDJobManager *)jobManager cancelJobsWithIDs:v8 completionBlock:v10];
  }

  else
  {
    [(SSDownloadManagerAppShim *)self __app_dispatchBlock:blockCopy withError:0];
  }
}

- (id)__app_convertOptions:(id)options
{
  optionsCopy = options;
  v5 = SSVAppstoreDaemonFramework(optionsCopy, v4);
  SSVWeakLinkedClassForString(&cfstr_Asdjobmanagero.isa, v5);
  v6 = objc_opt_new();
  [v6 setShouldFilterExternalOriginatedDownloads:{objc_msgSend(optionsCopy, "shouldFilterExternalOriginatedDownloads")}];
  persistenceIdentifier = [optionsCopy persistenceIdentifier];

  [v6 setPersistenceIdentifier:persistenceIdentifier];

  return v6;
}

- (id)__app_downloadsForJobs:(id)jobs
{
  v20 = *MEMORY[0x1E69E9840];
  jobsCopy = jobs;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(jobsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = jobsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [SSSoftwareDownload alloc];
        v12 = [(SSSoftwareDownload *)v11 initWithJob:v10, v15];
        if (v12)
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

- (void)__app_dispatchBlock:(id)block withError:(id)error
{
  blockCopy = block;
  errorCopy = error;
  if (blockCopy)
  {
    v7 = dispatch_get_global_queue(21, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__SSDownloadManagerAppShim___app_dispatchBlock_withError___block_invoke;
    v8[3] = &unk_1E84AC338;
    v10 = blockCopy;
    v9 = errorCopy;
    dispatch_async(v7, v8);
  }
}

- (id)__app_extractJobIDsFromSoftwareDownloads:(id)downloads
{
  v18 = *MEMORY[0x1E69E9840];
  downloadsCopy = downloads;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(downloadsCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = downloadsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "persistentIdentifier", v13)}];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (void)__app_filterDownloads:(id)downloads withResult:(id)result
{
  v24 = *MEMORY[0x1E69E9840];
  downloadsCopy = downloads;
  resultCopy = result;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(downloadsCopy, "count")}];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(downloadsCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = downloadsCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 valueForProperty:@"1"];
        if ([v14 isEqualToString:@"software"])
        {
          v15 = v6;
        }

        else
        {
          v15 = v7;
        }

        [v15 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [v6 copy];
  v17 = [v7 copy];
  resultCopy[2](resultCopy, v16, v17);
}

- (void)__app_finishDownloads:(id)downloads
{
  v17 = *MEMORY[0x1E69E9840];
  downloadsCopy = downloads;
  if ([downloadsCopy count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(downloadsCopy, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = downloadsCopy;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v12 + 1) + 8 * v10) job];
          [v5 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [(ASDJobManager *)self->_jobManager finishJobs:v5];
  }
}

- (id)__app_getAllDownloads
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__87;
  v15 = __Block_byref_object_dispose__87;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  jobManager = self->_jobManager;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__SSDownloadManagerAppShim___app_getAllDownloads__block_invoke;
  v8[3] = &unk_1E84B3DD0;
  v10 = &v11;
  v8[4] = self;
  v5 = v3;
  v9 = v5;
  [(ASDJobManager *)jobManager getJobsUsingBlock:v8];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

intptr_t __49__SSDownloadManagerAppShim___app_getAllDownloads__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) __app_downloadsForJobs:a2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 40);

  return dispatch_semaphore_signal(v6);
}

- (void)__app_insertDownloads:(id)downloads before:(id)before after:(id)after completionBlock:(id)block
{
  downloadsCopy = downloads;
  blockCopy = block;
  if ([downloadsCopy count])
  {
    v10 = [(SSDownloadManagerAppShim *)self __app_newManifestWithType:0];
    v11 = [(SSDownloadManagerAppShim *)self __app_newManifestWithType:2];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __79__SSDownloadManagerAppShim___app_insertDownloads_before_after_completionBlock___block_invoke;
    v14[3] = &unk_1E84B3DF8;
    v14[4] = self;
    v12 = v11;
    v15 = v12;
    v13 = v10;
    v16 = v13;
    [downloadsCopy enumerateObjectsUsingBlock:v14];
    if ([v13 count])
    {
      [(SSDownloadManagerAppShim *)self __app_installManifest:v13 completionBlock:blockCopy];
    }

    if ([v12 count])
    {
      [(SSDownloadManagerAppShim *)self __app_installManifest:v12 completionBlock:blockCopy];
    }
  }

  else
  {
    [(SSDownloadManagerAppShim *)self __app_dispatchBlock:blockCopy withError:0];
  }
}

void __79__SSDownloadManagerAppShim___app_insertDownloads_before_after_completionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v14 = [v5 __app_newActivityWithDownload:v6];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v14 setExternalOrderKey:v7];

  v8 = [v6 valueForProperty:@"V"];
  LODWORD(v5) = [v8 BOOLValue];

  v9 = MEMORY[0x1E696AD98];
  v10 = 48;
  if (v5)
  {
    v10 = 40;
  }

  v11 = *(a1 + v10);
  v12 = [v6 persistentIdentifier];

  v13 = [v9 numberWithLongLong:v12];
  [v11 addActivity:v14 withIdentifier:v13];
}

- (void)__app_installManifest:(id)manifest completionBlock:(id)block
{
  blockCopy = block;
  manifestCopy = manifest;
  v9 = SSVAppstoreDaemonFramework(manifestCopy, v8);
  v10 = [objc_alloc(SSVWeakLinkedClassForString(&cfstr_Asdinstallmani.isa v9))];

  v13 = SSVAppstoreDaemonFramework(v11, v12);
  v14 = [objc_alloc(SSVWeakLinkedClassForString(&cfstr_Asdinstallmani_0.isa v13))];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__SSDownloadManagerAppShim___app_installManifest_completionBlock___block_invoke;
  v16[3] = &unk_1E84B3E20;
  v16[4] = self;
  v17 = blockCopy;
  v15 = blockCopy;
  [v14 startWithCompletionBlock:v16];
}

- (id)__app_newAssetWithDownloadAsset:(id)asset assetType:(id)type
{
  assetCopy = asset;
  typeCopy = type;
  _localValues = [assetCopy _localValues];
  v9 = SSVAppstoreDaemonFramework(_localValues, v8);
  v10 = objc_alloc_init(SSVWeakLinkedClassForString(&cfstr_Asdjobasset.isa, v9));
  v11 = [_localValues objectForKeyedSubscript:@"e"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = v11;
  if ((isKindOfClass & 1) != 0 || ([v10 assetType], v14 = objc_claimAutoreleasedReturnValue(), v14, v13 = typeCopy, !v14))
  {
    [v10 setAssetType:v13];
  }

  v15 = [_localValues objectForKeyedSubscript:@"c"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setAssetURL:v15];
  }

  v16 = [_localValues objectForKeyedSubscript:@"3"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setBytesTotal:v16];
  }

  v17 = [_localValues objectForKeyedSubscript:@"m"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setExpectedDiskspace:v17];
  }

  v18 = [_localValues objectForKeyedSubscript:@"0"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setHashArrayData:v18];
  }

  v19 = [_localValues objectForKeyedSubscript:@"o"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setHashType:v19];
  }

  v20 = [_localValues objectForKeyedSubscript:@"1"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setNumberOfBytesToHash:v20];
  }

  v21 = [_localValues objectForKeyedSubscript:@"B"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setSinfs:v21];
  }

  v22 = [_localValues objectForKeyedSubscript:@"q"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setDPInfo:v22];
  }

  v23 = [_localValues objectForKeyedSubscript:@"x"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setInitialODRSize:v23];
  }

  v24 = [_localValues objectForKeyedSubscript:@"l"];

  if (objc_opt_respondsToSelector())
  {
    [v10 setIsLocallyCacheable:{objc_msgSend(v24, "BOOLValue")}];
  }

  v25 = [_localValues objectForKeyedSubscript:@"9"];

  if (objc_opt_respondsToSelector())
  {
    [v10 setIsExternal:{objc_msgSend(v25, "BOOLValue")}];
  }

  v26 = [_localValues objectForKeyedSubscript:@"k"];

  if (objc_opt_respondsToSelector())
  {
    [v10 setIsZipStreamable:{objc_msgSend(v26, "BOOLValue")}];
  }

  _localProperties = [assetCopy _localProperties];
  v28 = _localProperties;
  if (_localProperties)
  {
    v29 = [_localProperties URL];
    absoluteString = [v29 absoluteString];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 setAssetURL:absoluteString];
    }
  }

  else
  {
    absoluteString = v26;
  }

  return v10;
}

- (id)__app_newActivityWithDownload:(id)download
{
  downloadCopy = download;
  v6 = SSVAppstoreDaemonFramework(downloadCopy, v5);
  v7 = objc_alloc_init(SSVWeakLinkedClassForString(&cfstr_Asdjobactivity.isa, v6));
  [(SSDownloadManagerAppShim *)self __app_setPropertiesForActivity:v7 withDownload:downloadCopy];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _localAssets = [downloadCopy _localAssets];

  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __58__SSDownloadManagerAppShim___app_newActivityWithDownload___block_invoke;
  v15 = &unk_1E84B3E48;
  selfCopy = self;
  v17 = v8;
  v10 = v8;
  [_localAssets enumerateKeysAndObjectsUsingBlock:&v12];

  [v7 setAssets:{v10, v12, v13, v14, v15, selfCopy}];

  return v7;
}

void __58__SSDownloadManagerAppShim___app_newActivityWithDownload___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(a1 + 32) __app_newAssetWithDownloadAsset:*(*(&v12 + 1) + 8 * v10) assetType:v5];
        if (v11)
        {
          [*(a1 + 40) addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (id)__app_newManifestWithType:(int64_t)type
{
  v4 = SSVAppstoreDaemonFramework(self, a2);
  v5 = [objc_alloc(SSVWeakLinkedClassForString(&cfstr_Asdjobmanifest.isa v4))];

  return v5;
}

- (void)__app_pauseDownloads:(id)downloads completionBlock:(id)block
{
  downloadsCopy = downloads;
  blockCopy = block;
  if ([downloadsCopy count])
  {
    v8 = [(SSDownloadManagerAppShim *)self __app_extractJobIDsFromSoftwareDownloads:downloadsCopy];
    jobManager = self->_jobManager;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__SSDownloadManagerAppShim___app_pauseDownloads_completionBlock___block_invoke;
    v10[3] = &unk_1E84B3DA8;
    v10[4] = self;
    v11 = blockCopy;
    [(ASDJobManager *)jobManager pauseJobsWithIDs:v8 completionBlock:v10];
  }

  else
  {
    [(SSDownloadManagerAppShim *)self __app_dispatchBlock:blockCopy withError:0];
  }
}

- (void)__app_resumeDownloads:(id)downloads completionBlock:(id)block
{
  downloadsCopy = downloads;
  blockCopy = block;
  if ([downloadsCopy count])
  {
    v8 = [(SSDownloadManagerAppShim *)self __app_extractJobIDsFromSoftwareDownloads:downloadsCopy];
    jobManager = self->_jobManager;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__SSDownloadManagerAppShim___app_resumeDownloads_completionBlock___block_invoke;
    v10[3] = &unk_1E84B3DA8;
    v10[4] = self;
    v11 = blockCopy;
    [(ASDJobManager *)jobManager resumeJobsWithIDs:v8 completionBlock:v10];
  }

  else
  {
    [(SSDownloadManagerAppShim *)self __app_dispatchBlock:blockCopy withError:0];
  }
}

- (void)__app_setPropertiesForActivity:(id)activity withDownload:(id)download
{
  activityCopy = activity;
  downloadCopy = download;
  _localValues = [downloadCopy _localValues];
  v7 = [_localValues objectForKeyedSubscript:@"3"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setArtistID:v7];
  }

  v8 = [_localValues objectForKeyedSubscript:@"d"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setArtistName:v8];
  }

  v9 = [_localValues objectForKeyedSubscript:@"27"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setBetaExternalVersionIdentifier:v9];
  }

  v10 = [_localValues objectForKeyedSubscript:@"c"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setBundleID:v10];
  }

  v11 = [_localValues objectForKeyedSubscript:@"20"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setBundleVersion:v11];
  }

  v12 = [_localValues objectForKeyedSubscript:@"04"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setBuyParams:v12];
  }

  v13 = [_localValues objectForKeyedSubscript:@"P"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setCancelDownloadURL:v13];
  }

  v14 = [_localValues objectForKeyedSubscript:@"10"];

  if (objc_opt_respondsToSelector())
  {
    [activityCopy setCancelIfDuplicate:{objc_msgSend(v14, "BOOLValue")}];
  }

  v15 = [_localValues objectForKeyedSubscript:@"17"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setClientID:v15];
  }

  v16 = [_localValues objectForKeyedSubscript:@"f"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setCollectionName:v16];
  }

  v17 = [_localValues objectForKeyedSubscript:@"EE"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setEnableExtensions:v17];
  }

  v18 = [_localValues objectForKeyedSubscript:@"i"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setGenre:v18];
  }

  v19 = [_localValues objectForKeyedSubscript:@"6"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setGenreID:v19];
  }

  v20 = [_localValues objectForKeyedSubscript:@"HM"];

  if (objc_opt_respondsToSelector())
  {
    [activityCopy setHasMessagesExtension:{objc_msgSend(v20, "BOOLValue")}];
  }

  v21 = [_localValues objectForKeyedSubscript:@"12"];

  if (objc_opt_respondsToSelector())
  {
    [activityCopy setExplicitContent:{objc_msgSend(v21, "BOOLValue")}];
  }

  v22 = [_localValues objectForKeyedSubscript:@"D"];

  if (objc_opt_respondsToSelector())
  {
    [activityCopy setIsAutomatic:{objc_msgSend(v22, "integerValue") != 0}];
    [activityCopy setIsUpdate:{objc_msgSend(v22, "integerValue") == 2}];
  }

  v23 = [_localValues objectForKeyedSubscript:@"vp"];

  if (objc_opt_respondsToSelector())
  {
    [activityCopy setIsDeviceBasedVPP:{objc_msgSend(v23, "BOOLValue")}];
  }

  v24 = [_localValues objectForKeyedSubscript:@"03"];

  if (objc_opt_respondsToSelector())
  {
    [activityCopy setIsInQueue:{objc_msgSend(v24, "BOOLValue")}];
  }

  v25 = [_localValues objectForKeyedSubscript:@"21"];

  if (objc_opt_respondsToSelector())
  {
    [activityCopy setIsPurchasedRedownload:{objc_msgSend(v25, "BOOLValue")}];
  }

  v26 = [_localValues objectForKeyedSubscript:@"V"];

  if (objc_opt_respondsToSelector())
  {
    [activityCopy setIsRestore:{objc_msgSend(v26, "BOOLValue")}];
  }

  v27 = [_localValues objectForKeyedSubscript:@"7"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setItemID:v27];
  }

  v28 = [_localValues objectForKeyedSubscript:@"1"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setKind:v28];
  }

  v29 = [_localValues objectForKeyedSubscript:@"LP"];

  if (objc_opt_respondsToSelector())
  {
    [activityCopy setLaunchProhibited:{objc_msgSend(v29, "BOOLValue")}];
  }

  v30 = [_localValues objectForKeyedSubscript:@"MA"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setMessagesArtworkURL:v30];
  }

  v31 = [_localValues objectForKeyedSubscript:@"8"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setPurchaseDate:v31];
  }

  v32 = [_localValues objectForKeyedSubscript:@"q"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setReleaseDate:v32];
  }

  v33 = [_localValues objectForKeyedSubscript:@"U"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setStoreAccountID:v33];
  }

  v34 = [_localValues objectForKeyedSubscript:@"Z"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setStoreAccountName:v34];
  }

  v35 = [_localValues objectForKeyedSubscript:@"F"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setStoreDownloadKey:v35];
  }

  v36 = [_localValues objectForKeyedSubscript:@"9"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setStoreTransactionID:v36];
  }

  v37 = [_localValues objectForKeyedSubscript:@"b"];

  if (objc_opt_respondsToSelector())
  {
    [activityCopy setSoftwareIconNeedsShine:{objc_msgSend(v37, "BOOLValue") ^ 1}];
  }

  v38 = [_localValues objectForKeyedSubscript:@"G"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setThumbnailURL:v38];
  }

  v39 = [_localValues objectForKeyedSubscript:@"2"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setTitle:v39];
  }

  v40 = [_localValues objectForKeyedSubscript:@"T"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setStorefront:v40];
  }

  else if (objc_opt_respondsToSelector())
  {
    stringValue = [v40 stringValue];
    [activityCopy setStorefront:stringValue];
  }

  v42 = [_localValues objectForKeyedSubscript:@"R"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setSoftwareVersionExternalIdentifier:v42];
  }

  v43 = [_localValues objectForKeyedSubscript:@"22"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setStoreCohort:v43];
  }

  v44 = [_localValues objectForKeyedSubscript:@"26"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityCopy setVariantID:v44];
  }
}

- (void)__app_sendDownloadsChanged:(id)changed filterSoftware:(BOOL)software
{
  softwareCopy = software;
  accessQueue = self->super._accessQueue;
  changedCopy = changed;
  dispatch_assert_queue_V2(accessQueue);
  [(SSDownloadManager *)self _resetAllDownloads];
  if (softwareCopy)
  {
    v8 = [changedCopy objectsPassingTest:&__block_literal_global_66];

    v10.receiver = self;
    v10.super_class = SSDownloadManagerAppShim;
    [(SSDownloadManager *)&v10 _sendDownloadsChanged:v8];
    changedCopy = v8;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SSDownloadManagerAppShim;
    [(SSDownloadManager *)&v9 _sendDownloadsChanged:changedCopy];
  }
}

uint64_t __70__SSDownloadManagerAppShim___app_sendDownloadsChanged_filterSoftware___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 valueForProperty:@"1"];
  v3 = [v2 isEqualToString:@"software"];

  return v3 ^ 1u;
}

@end
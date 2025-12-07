@interface QLDownloadingItemViewController
- (BOOL)shouldAutoDownloadInNetworkState:(unint64_t)state downloadSize:(id)size forceIfPossible:(BOOL)possible;
- (QLDownloadingItemViewControllerDelegate)downloadingDelegate;
- (void)_presentConnectivityAlert;
- (void)_setDownloading:(BOOL)downloading animated:(BOOL)animated;
- (void)_startDownload:(BOOL)download;
- (void)_startDownloadOperation;
- (void)_stopDownload:(BOOL)download;
- (void)_toggleDownload:(BOOL)download;
- (void)_updateFileSizeWithProgress:(double)progress animated:(BOOL)animated;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)previewDidAppear:(BOOL)appear;
- (void)setAppearance:(id)appearance animated:(BOOL)animated;
- (void)setShowsLoadingPreviewSpinner:(BOOL)spinner;
- (void)startDownload:(BOOL)download;
- (void)startDownloadIfNeeded;
- (void)viewDidLoad;
@end

@implementation QLDownloadingItemViewController

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = QLDownloadingItemViewController;
  [(QLDetailItemViewController *)&v25 viewDidLoad];
  self->_didDisappear = 1;
  v3 = MEMORY[0x277D755B8];
  v4 = QLFrameworkBundle();
  v5 = [v3 imageNamed:@"Cloudload" inBundle:v4 compatibleWithTraitCollection:0];
  cloudImage = self->_cloudImage;
  self->_cloudImage = v5;

  v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{0.0, 0.0, 32.0, 32.0}];
  downloadImageView = self->_downloadImageView;
  self->_downloadImageView = v7;

  [(UIImageView *)self->_downloadImageView setImage:self->_cloudImage];
  [(QLItem *)self->_previewItem canBePreviewed];
  v9 = QLLocalizedString();
  v10 = [QLDetailItemViewControllerState detailItemViewControllerStateWithActionButtonTitle:v9 actionButtonView:self->_downloadImageView informationVisible:1];
  readyForDownloadState = self->_readyForDownloadState;
  self->_readyForDownloadState = v10;

  v12 = [[QLRoundProgressView alloc] initWithFrame:0.0, 0.0, 32.0, 32.0];
  progressView = self->_progressView;
  self->_progressView = v12;

  v14 = QLLocalizedStringWithDefaultValue();
  v15 = [QLDetailItemViewControllerState detailItemViewControllerStateWithActionButtonTitle:v14 actionButtonView:self->_progressView informationVisible:1];
  cancelableDownloadingState = self->_cancelableDownloadingState;
  self->_cancelableDownloadingState = v15;

  v17 = [QLDetailItemViewControllerState detailItemViewControllerStateWithActionButtonTitle:0 actionButtonView:self->_progressView informationVisible:1];
  nonCancelableDownloadingState = self->_nonCancelableDownloadingState;
  self->_nonCancelableDownloadingState = v17;

  v19 = [QLDetailItemViewControllerState detailItemViewControllerStateWithActionButtonTitle:0 actionButtonView:0 informationVisible:0];
  completedDownloadState = self->_completedDownloadState;
  self->_completedDownloadState = v19;

  v21 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:9];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v21 setColor:secondaryLabelColor];

  [v21 startAnimating];
  v23 = [QLDetailItemViewControllerState detailItemViewControllerStateWithActionButtonTitle:0 actionButtonView:v21 informationVisible:0];
  previewLoadingState = self->_previewLoadingState;
  self->_previewLoadingState = v23;

  [(QLDetailItemViewController *)self setState:self->_readyForDownloadState animated:0];
}

- (void)setAppearance:(id)appearance animated:(BOOL)animated
{
  animatedCopy = animated;
  appearanceCopy = appearance;
  v7.receiver = self;
  v7.super_class = QLDownloadingItemViewController;
  [(QLDetailItemViewController *)&v7 setAppearance:appearanceCopy animated:animatedCopy];
  [(QLDownloadingItemViewController *)self loadViewIfNeeded];
  if (!self->_downloading && !self->_downloaded)
  {
    if ([appearanceCopy presentationMode] == 4)
    {
      [(QLDownloadingItemViewController *)self _startDownload:0];
    }

    else
    {
      [(QLDownloadingItemViewController *)self startDownloadIfNeeded];
    }
  }
}

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  contentsCopy = contents;
  handlerCopy = handler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __95__QLDownloadingItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke;
  v13[3] = &unk_278B58DB8;
  v13[4] = self;
  v14 = contentsCopy;
  v15 = handlerCopy;
  v12.receiver = self;
  v12.super_class = QLDownloadingItemViewController;
  v10 = handlerCopy;
  v11 = contentsCopy;
  [(QLDetailItemViewController *)&v12 loadPreviewControllerWithContents:v11 context:context completionHandler:v13];
}

uint64_t __95__QLDownloadingItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 1280), *(a1 + 40));
  [*(a1 + 32) _updateFileSizeWithProgress:0 animated:0.0];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (BOOL)shouldAutoDownloadInNetworkState:(unint64_t)state downloadSize:(id)size forceIfPossible:(BOOL)possible
{
  v27 = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  v8 = sizeCopy;
  if (state > 2)
  {
    if (possible)
    {
      v13 = 1;
    }

    else
    {
      integerValue = [sizeCopy integerValue];
      v15 = integerValue;
      if (state == 3)
      {
        v16 = 6291456;
      }

      else
      {
        v16 = 102400;
      }

      v13 = integerValue < v16;
      v17 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        v22 = MEMORY[0x277D43EF8];
        QLSInitLogging();
        v17 = *v22;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        if (v15 >= v16)
        {
          v18 = @"NO";
        }

        else
        {
          v18 = @"YES";
        }

        v19 = v17;
        v20 = NSStringFromQLNetworkState();
        v23 = 138412546;
        v24 = v18;
        v25 = 2112;
        v26 = v20;
        _os_log_impl(&dword_23A714000, v19, OS_LOG_TYPE_INFO, "Should auto-download: '%@', state is %@ #Downloading", &v23, 0x16u);
      }
    }
  }

  else
  {
    v9 = MEMORY[0x277D43EF8];
    v10 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      v12 = NSStringFromQLNetworkState();
      v23 = 138412290;
      v24 = v12;
      _os_log_impl(&dword_23A714000, v11, OS_LOG_TYPE_INFO, "Avoid auto-download, since state is %@ #Downloading", &v23, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

- (void)_updateFileSizeWithProgress:(double)progress animated:(BOOL)animated
{
  animatedCopy = animated;
  v19[1] = *MEMORY[0x277D85DE8];
  fetcher = [(QLItem *)self->_previewItem fetcher];
  itemSize = [fetcher itemSize];

  v9 = [MEMORY[0x277CCA8E8] stringFromByteCount:objc_msgSend(itemSize countStyle:{"longLongValue"), 0}];
  if (v9 && [itemSize integerValue] >= 1)
  {
    if (self->_downloading)
    {
      v10 = v9;
      longLongValue = [itemSize longLongValue];
      v12 = [MEMORY[0x277CCA8E8] stringFromByteCount:(longLongValue * progress) countStyle:0];
      v13 = MEMORY[0x277CCACA8];
      v14 = QLLocalizedString();
      v15 = [v13 stringWithFormat:v14, v12, v10];

      v19[0] = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];

      [(QLDetailItemViewController *)self setInformation:v16];
    }

    else
    {
      v18 = v9;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
      [(QLDetailItemViewController *)self setInformation:v17];
    }
  }

  else
  {
    [(QLDetailItemViewController *)self setInformation:&unk_284D731A8];
  }

  [(QLRoundProgressView *)self->_progressView setProgress:animatedCopy animated:progress];
}

- (void)previewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = QLDownloadingItemViewController;
  [(QLItemViewController *)&v3 previewDidAppear:appear];
}

- (void)setShowsLoadingPreviewSpinner:(BOOL)spinner
{
  if (self->_showsLoadingPreviewSpinner != spinner)
  {
    self->_showsLoadingPreviewSpinner = spinner;
    v3 = &OBJC_IVAR___QLDownloadingItemViewController__completedDownloadState;
    if (spinner)
    {
      v3 = &OBJC_IVAR___QLDownloadingItemViewController__previewLoadingState;
    }

    [(QLDetailItemViewController *)self setState:*(&self->super.super.super.super.super.isa + *v3) animated:1];
  }
}

- (void)_toggleDownload:(BOOL)download
{
  if (self->_downloading)
  {
    [(QLDownloadingItemViewController *)self _stopDownload:download];
  }

  else
  {
    [(QLDownloadingItemViewController *)self _startDownload:download];
  }
}

- (void)startDownload:(BOOL)download
{
  mEMORY[0x277D43F88] = [MEMORY[0x277D43F88] sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__QLDownloadingItemViewController_startDownload___block_invoke;
  v6[3] = &unk_278B58F50;
  v6[4] = self;
  downloadCopy = download;
  [mEMORY[0x277D43F88] networkStateWithCompletionBlock:v6];
}

void __49__QLDownloadingItemViewController_startDownload___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [v4[160] fetcher];
  v6 = [v5 itemSize];
  LODWORD(a2) = [v4 shouldAutoDownloadInNetworkState:a2 downloadSize:v6 forceIfPossible:*(a1 + 40)];

  if (a2)
  {
    v7 = *(a1 + 32);
    if ((*(v7 + 1200) & 1) == 0 && *(v7 + 1202) == 1)
    {
      QLRunInMainThread();
    }
  }
}

- (void)startDownloadIfNeeded
{
  downloadingDelegate = [(QLDownloadingItemViewController *)self downloadingDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    downloadingDelegate2 = [(QLDownloadingItemViewController *)self downloadingDelegate];
    v6 = [downloadingDelegate2 downloadingItemViewControllerShouldForceAutodownloadFile:self];
  }

  else
  {
    v6 = 0;
  }

  [(QLDownloadingItemViewController *)self startDownload:v6];
}

- (void)_startDownload:(BOOL)download
{
  downloadCopy = download;
  mEMORY[0x277D43F88] = [MEMORY[0x277D43F88] sharedInstance];
  isConnected = [mEMORY[0x277D43F88] isConnected];

  if (isConnected)
  {
    if (!self->_downloading)
    {
      [(QLDownloadingItemViewController *)self _startDownloadOperation];

      [(QLDownloadingItemViewController *)self _setDownloading:1 animated:downloadCopy];
    }
  }

  else
  {
    [(QLDownloadingItemViewController *)self _setDownloading:0 animated:downloadCopy];
    appearance = [(QLItemViewController *)self appearance];
    presentationMode = [appearance presentationMode];

    if (presentationMode != 4)
    {

      [(QLDownloadingItemViewController *)self _presentConnectivityAlert];
    }
  }
}

- (void)_stopDownload:(BOOL)download
{
  if (self->_downloading)
  {
    downloadCopy = download;
    fetcher = [(QLItem *)self->_previewItem fetcher];
    canBeCanceled = [fetcher canBeCanceled];

    if (canBeCanceled)
    {
      fetcher2 = [(QLItem *)self->_previewItem fetcher];
      [fetcher2 cancelFetch];

      [(QLDownloadingItemViewController *)self _setDownloading:0 animated:downloadCopy];
    }
  }
}

- (void)_setDownloading:(BOOL)downloading animated:(BOOL)animated
{
  if (self->_downloading != downloading)
  {
    v17 = v6;
    v18 = v5;
    v19 = v4;
    animatedCopy = animated;
    self->_downloading = downloading;
    if (downloading)
    {
      fetcher = [(QLItem *)self->_previewItem fetcher];
      canBeCanceled = [fetcher canBeCanceled];
      v14 = &OBJC_IVAR___QLDownloadingItemViewController__nonCancelableDownloadingState;
      if (canBeCanceled)
      {
        v14 = &OBJC_IVAR___QLDownloadingItemViewController__cancelableDownloadingState;
      }

      [(QLDetailItemViewController *)self setState:*(&self->super.super.super.super.super.isa + *v14) animated:animatedCopy, v7, v17, v18, v19, v8];
    }

    else
    {
      if (self->_downloaded)
      {
        v15 = 1248;
      }

      else
      {
        v15 = 1224;
      }

      [(QLDetailItemViewController *)self setState:*(&self->super.super.super.super.super.isa + v15) animated:animated, v7, v6, v18, v19, v8];
    }

    v16 = 0.0;
    if (self->_downloaded)
    {
      v16 = 1.0;
    }

    [(QLDownloadingItemViewController *)self _updateFileSizeWithProgress:0 animated:v16];
  }
}

- (void)_presentConnectivityAlert
{
  delegate = [(QLItemViewController *)self delegate];
  [delegate previewItemViewControllerWantsToShowNoInternetConnectivityAlert:self];
}

- (void)_startDownloadOperation
{
  v3 = objc_opt_new();
  [(QLItem *)self->_previewItem transformerClass];
  v4 = objc_opt_new();
  if (objc_opt_respondsToSelector())
  {
    [v3 addObject:objc_opt_class()];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 addObject:objc_opt_class()];
  }

  objc_initWeak(&location, self);
  fetcher = [(QLItem *)self->_previewItem fetcher];
  v6 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__QLDownloadingItemViewController__startDownloadOperation__block_invoke;
  v9[3] = &unk_278B58F78;
  objc_copyWeak(&v10, &location);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__QLDownloadingItemViewController__startDownloadOperation__block_invoke_3;
  v7[3] = &unk_278B58FC8;
  v7[4] = self;
  objc_copyWeak(&v8, &location);
  [fetcher fetchContentWithAllowedOutputClasses:v3 inQueue:v6 updateBlock:v9 completionBlock:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __58__QLDownloadingItemViewController__startDownloadOperation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  QLRunInMainThread();

  objc_destroyWeak(&v5);
}

void __58__QLDownloadingItemViewController__startDownloadOperation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) floatValue];
  [WeakRetained _updateFileSizeWithProgress:1 animated:v2];
}

void __58__QLDownloadingItemViewController__startDownloadOperation__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  objc_copyWeak(&v9, (a1 + 40));
  QLRunInMainThread();
  objc_destroyWeak(&v9);
}

void __58__QLDownloadingItemViewController__startDownloadOperation__block_invoke_4(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32) || *(a1 + 40))
  {
    v2 = MEMORY[0x277D43EF8];
    v3 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v3 = *v2;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v20 = 138412290;
      v21 = v4;
      _os_log_impl(&dword_23A714000, v3, OS_LOG_TYPE_ERROR, "Error during downloading operation: %@ #Downloading", &v20, 0xCu);
    }

    v5 = [*(a1 + 40) domain];
    v6 = *MEMORY[0x277CCA050];
    if ([v5 isEqualToString:*MEMORY[0x277CCA050]])
    {
      v7 = [*(a1 + 40) code] == 3072;
    }

    else
    {
      v7 = 0;
    }

    v8 = [*(a1 + 40) userInfo];
    v9 = [v8 objectForKey:*MEMORY[0x277CCA7E8]];

    v10 = [v9 domain];
    if ([v10 isEqualToString:v6])
    {
      v11 = [v9 code];

      if (v7)
      {
LABEL_15:
        [*(a1 + 48) _setDownloading:0 animated:1];
LABEL_17:

        return;
      }

      if (v11 == 4355)
      {
        [*(a1 + 48) _presentConnectivityAlert];
        goto LABEL_15;
      }
    }

    else
    {

      if (v7)
      {
        goto LABEL_15;
      }
    }

    [*(a1 + 48) notifyDelegatesDidFailWithError:*(a1 + 40)];
    goto LABEL_17;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setDownloaded:1];

  v13 = objc_loadWeakRetained((a1 + 56));
  v14 = [v13 downloadingDelegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = objc_loadWeakRetained((a1 + 56));
    v17 = [v16 downloadingDelegate];
    v18 = objc_loadWeakRetained((a1 + 56));
    [v17 downloadingItemViewControllerDidFinishLoadingPreviewItem:v18 withContents:*(a1 + 32)];
  }

  v19 = *(a1 + 48);

  [v19 _setDownloading:0 animated:1];
}

- (QLDownloadingItemViewControllerDelegate)downloadingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadingDelegate);

  return WeakRetained;
}

@end
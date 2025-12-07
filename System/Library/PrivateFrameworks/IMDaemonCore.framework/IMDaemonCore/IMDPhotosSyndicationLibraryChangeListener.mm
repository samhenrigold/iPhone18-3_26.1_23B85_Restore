@interface IMDPhotosSyndicationLibraryChangeListener
+ (id)sharedInstance;
- (IMDPhotosSyndicationLibraryChangeListener)init;
- (PHFetchOptions)analysisFetchOptions;
- (void)dealloc;
- (void)photoLibraryDidChange:(id)change;
- (void)startListening;
- (void)stopListening;
@end

@implementation IMDPhotosSyndicationLibraryChangeListener

+ (id)sharedInstance
{
  if (qword_281421160 != -1)
  {
    sub_22B7D5FE4();
  }

  v3 = qword_281420FE0;

  return v3;
}

- (IMDPhotosSyndicationLibraryChangeListener)init
{
  v12.receiver = self;
  v12.super_class = IMDPhotosSyndicationLibraryChangeListener;
  v2 = [(IMDPhotosSyndicationLibraryChangeListener *)&v12 init];
  if (v2)
  {
    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    photoAnalysisInSpotlightEnabled = [mEMORY[0x277D1A9B8] photoAnalysisInSpotlightEnabled];

    if (photoAnalysisInSpotlightEnabled)
    {
      v5 = [MEMORY[0x277CD9948] wellKnownPhotoLibraryURLForIdentifier:3];
      v6 = [objc_alloc(MEMORY[0x277CD9948]) initWithPhotoLibraryURL:v5];
      syndicationLibrary = v2->_syndicationLibrary;
      v2->_syndicationLibrary = v6;

      v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v9 = dispatch_queue_create("com.apple.imagent.SyndicationLibraryChangeObserver", v8);
      changeObservationQueue = v2->_changeObservationQueue;
      v2->_changeObservationQueue = v9;
    }
  }

  return v2;
}

- (void)dealloc
{
  [(IMDPhotosSyndicationLibraryChangeListener *)self stopListening];
  v3.receiver = self;
  v3.super_class = IMDPhotosSyndicationLibraryChangeListener;
  [(IMDPhotosSyndicationLibraryChangeListener *)&v3 dealloc];
}

- (void)startListening
{
  v9 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  photoAnalysisInSpotlightEnabled = [mEMORY[0x277D1A9B8] photoAnalysisInSpotlightEnabled];

  if (photoAnalysisInSpotlightEnabled)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        syndicationLibrary = self->_syndicationLibrary;
        v7 = 138412290;
        v8 = syndicationLibrary;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Started listening for changes to the syndication library. syndicationLibrary: %@", &v7, 0xCu);
      }
    }

    [(PHPhotoLibrary *)self->_syndicationLibrary registerChangeObserver:self];
  }
}

- (void)stopListening
{
  v9 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  photoAnalysisInSpotlightEnabled = [mEMORY[0x277D1A9B8] photoAnalysisInSpotlightEnabled];

  if (photoAnalysisInSpotlightEnabled)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        syndicationLibrary = self->_syndicationLibrary;
        v7 = 138412290;
        v8 = syndicationLibrary;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Stopped listening to changes to the syndication library. syndicationLibrary: %@", &v7, 0xCu);
      }
    }

    [(PHPhotoLibrary *)self->_syndicationLibrary unregisterChangeObserver:self];
  }
}

- (PHFetchOptions)analysisFetchOptions
{
  v15[1] = *MEMORY[0x277D85DE8];
  analysisFetchOptions = self->_analysisFetchOptions;
  if (!analysisFetchOptions)
  {
    objc_initWeak(&v13, self->_syndicationLibrary);
    v4 = objc_alloc_init(MEMORY[0x277CD9880]);
    v5 = objc_loadWeakRetained(&v13);
    [(PHFetchOptions *)v4 setPhotoLibrary:v5];

    v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
    v15[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [(PHFetchOptions *)v4 setSortDescriptors:v7];

    v8 = *MEMORY[0x277CD9B10];
    v14[0] = *MEMORY[0x277CD9A80];
    v14[1] = v8;
    v14[2] = *MEMORY[0x277CD9AD0];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
    [(PHFetchOptions *)v4 setFetchPropertySets:v9];

    v11 = self->_analysisFetchOptions;
    p_analysisFetchOptions = &self->_analysisFetchOptions;
    *p_analysisFetchOptions = v4;

    objc_destroyWeak(&v13);
    analysisFetchOptions = *p_analysisFetchOptions;
  }

  return analysisFetchOptions;
}

- (void)photoLibraryDidChange:(id)change
{
  v14 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = changeCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Syndication library changed. Ingesting new analysis data. change: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      totalChangeCount = [changeCopy totalChangeCount];
      *buf = 134217984;
      v13 = totalChangeCount;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Total change count: %lu.", buf, 0xCu);
    }
  }

  changeObservationQueue = [(IMDPhotosSyndicationLibraryChangeListener *)self changeObservationQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22B5EE804;
  v10[3] = &unk_278702FA0;
  v10[4] = self;
  v11 = changeCopy;
  v9 = changeCopy;
  dispatch_async(changeObservationQueue, v10);
}

@end
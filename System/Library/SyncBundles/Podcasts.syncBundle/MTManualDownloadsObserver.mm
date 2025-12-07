@interface MTManualDownloadsObserver
- (MTManualDownloadsObserver)initWithDelegate:(id)delegate;
- (MTManualDownloadsObserverDelegate)delegate;
- (void)_createFRC;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controller:(id)controller didChangeSection:(id)section atIndex:(unint64_t)index forChangeType:(unint64_t)type;
- (void)controllerDidChangeContent:(id)content;
- (void)extensionAccessDidChange;
@end

@implementation MTManualDownloadsObserver

- (MTManualDownloadsObserver)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = MTManualDownloadsObserver;
  v5 = [(MTManualDownloadsObserver *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(MTManualDownloadsObserver *)v5 setDelegate:delegateCopy];
    v11 = [sub_123C(v7 v8];
    [v11 addObserver:v6];

    [(MTManualDownloadsObserver *)v6 _createFRC];
  }

  return v6;
}

- (void)controller:(id)controller didChangeSection:(id)section atIndex:(unint64_t)index forChangeType:(unint64_t)type
{
  if (type - 1 <= 1)
  {
    [(MTManualDownloadsObserver *)self setHasChanges:1, section, index];
  }
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  if (type - 1 <= 2)
  {
    [(MTManualDownloadsObserver *)self setHasChanges:1, object, path];
  }
}

- (void)controllerDidChangeContent:(id)content
{
  if ([(MTManualDownloadsObserver *)self hasChanges])
  {
    delegate = [(MTManualDownloadsObserver *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "MTManualDownloadsObserver manual downloads did change", v8, 2u);
      }

      delegate2 = [(MTManualDownloadsObserver *)self delegate];
      [delegate2 manualDownloadsDidChange];
    }
  }
}

- (void)extensionAccessDidChange
{
  v5 = [sub_123C(self a2];
  isReady = [v5 isReady];

  if (isReady)
  {
    v7 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "MTManualDownloadsObserver extension access did change. Will create FRC.", v8, 2u);
    }

    [(MTManualDownloadsObserver *)self _createFRC];
  }
}

- (void)_createFRC
{
  v3 = [(MTManualDownloadsObserver *)self frc];

  if (!v3)
  {
    v8 = [sub_123C(v4 v5];
    isReady = [v8 isReady];

    if (isReady)
    {
      v10 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v43) = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "MTManualDownloadsObserver creating fetched results controller", &v43, 2u);
      }

      v48 = 0;
      v49 = &v48;
      v50 = 0x2020000000;
      v11 = qword_19A68;
      v51 = qword_19A68;
      if (!qword_19A68)
      {
        v43 = _NSConcreteStackBlock;
        v44 = 3221225472;
        v45 = sub_1DFC;
        v46 = &unk_14348;
        v47 = &v48;
        v12 = sub_1C88();
        v13 = dlsym(v12, "kMTEpisodeEntityName");
        *(v47[1] + 24) = v13;
        qword_19A68 = *(v47[1] + 24);
        v11 = v49[3];
      }

      _Block_object_dispose(&v48, 8);
      if (!v11)
      {
        sub_AA9C();
      }

      v14 = [NSFetchRequest fetchRequestWithEntityName:*v11];
      v15 = [sub_19AC() predicateForDownloadBehavior:2];
      v16 = [sub_19AC() predicateForDownloadBehavior:3];
      v17 = [v15 OR:v16];
      [v14 setPredicate:v17];

      v22 = sub_1A8C(v18, v19, v20, v21);
      v23 = [NSSortDescriptor sortDescriptorWithKey:v22 ascending:1];
      v48 = 0;
      v49 = &v48;
      v50 = 0x2020000000;
      v24 = qword_19A80;
      v51 = qword_19A80;
      v52[0] = v23;
      if (!qword_19A80)
      {
        v43 = _NSConcreteStackBlock;
        v44 = 3221225472;
        v45 = sub_1EF4;
        v46 = &unk_14348;
        v47 = &v48;
        v25 = sub_1C88();
        v26 = dlsym(v25, "kEpisodeUuid");
        *(v47[1] + 24) = v26;
        qword_19A80 = *(v47[1] + 24);
        v24 = v49[3];
      }

      _Block_object_dispose(&v48, 8);
      if (!v24)
      {
        sub_AA9C();
      }

      v27 = *v24;
      v28 = [NSSortDescriptor sortDescriptorWithKey:v27 ascending:1];
      v52[1] = v28;
      v29 = [NSArray arrayWithObjects:v52 count:2];
      [v14 setSortDescriptors:v29];

      v30 = [NSFetchedResultsController alloc];
      v48 = 0;
      v49 = &v48;
      v50 = 0x2050000000;
      v31 = qword_19A88;
      v51 = qword_19A88;
      if (!qword_19A88)
      {
        v43 = _NSConcreteStackBlock;
        v44 = 3221225472;
        v45 = sub_1F44;
        v46 = &unk_14348;
        v47 = &v48;
        sub_1F44(&v43);
        v31 = v49[3];
      }

      v32 = v31;
      _Block_object_dispose(&v48, 8);
      sharedInstance = [v31 sharedInstance];
      privateQueueContext = [sharedInstance privateQueueContext];
      v38 = sub_1A8C(privateQueueContext, v35, v36, v37);
      v39 = [v30 initWithFetchRequest:v14 managedObjectContext:privateQueueContext sectionNameKeyPath:v38 cacheName:0];
      [(MTManualDownloadsObserver *)self setFrc:v39];

      v40 = [(MTManualDownloadsObserver *)self frc];
      [v40 setDelegate:self];

      v41 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v43) = 0;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "MTManualDownloadsObserver performing first fetch", &v43, 2u);
      }

      v42 = [(MTManualDownloadsObserver *)self frc];
      [v42 performFetch:0];
    }
  }
}

- (MTManualDownloadsObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface MSDCellularHelper
+ (id)sharedInstance;
- (BOOL)embeddedSIMInstalled;
- (BOOL)hasObserver:(id)observer;
- (MSDCellularHelper)init;
- (NSDictionary)cellularInfo;
- (id)getCellularSimInfo;
- (void)_fetchCellularPlanItems;
- (void)_handleCellularPlanInfoDidChange:(id)change;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation MSDCellularHelper

+ (id)sharedInstance
{
  if (qword_1001A5760 != -1)
  {
    sub_1000D1B7C();
  }

  v3 = qword_1001A5758;

  return v3;
}

- (MSDCellularHelper)init
{
  v9.receiver = self;
  v9.super_class = MSDCellularHelper;
  v2 = [(MSDCellularHelper *)&v9 init];
  if (v2)
  {
    v3 = +[NSArray array];
    [(MSDCellularHelper *)v2 setCellularSlotsInfo:v3];

    v4 = dispatch_queue_create("com.apple.msd.cellular", 0);
    [(MSDCellularHelper *)v2 setCellularQueue:v4];

    v5 = MGCopyAnswer();
    [(MSDCellularHelper *)v2 setCellularCapable:CFBooleanGetValue(v5) != 0];
    v6 = objc_opt_new();
    [(MSDCellularHelper *)v2 setObservers:v6];

    if ([(MSDCellularHelper *)v2 cellularCapable])
    {
      v7 = +[NSNotificationCenter defaultCenter];
      [v7 addObserver:v2 selector:"_handleCellularPlanInfoDidChange:" name:CTCellularPlanInfoDidChangeNotification object:0];

      [(MSDCellularHelper *)v2 _fetchCellularPlanItems];
    }
  }

  return v2;
}

- (NSDictionary)cellularInfo
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000445C0;
  v11 = sub_1000445D0;
  v12 = 0;
  if ([(MSDCellularHelper *)self cellularCapable])
  {
    cellularQueue = [(MSDCellularHelper *)self cellularQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000445D8;
    v6[3] = &unk_10016A948;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(cellularQueue, v6);

    v4 = v8[5];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)getCellularSimInfo
{
  cellularInfo = [(MSDCellularHelper *)self cellularInfo];
  v3 = [cellularInfo objectForKey:@"Slots"];

  return v3;
}

- (BOOL)embeddedSIMInstalled
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if ([(MSDCellularHelper *)self cellularCapable])
  {
    cellularQueue = [(MSDCellularHelper *)self cellularQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000447A8;
    v6[3] = &unk_10016ACE8;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(cellularQueue, v6);

    v4 = *(v8 + 24);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4 & 1;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  observers = [(MSDCellularHelper *)selfCopy observers];
  v7 = [observers containsObject:observerCopy];

  if ((v7 & 1) == 0)
  {
    v9 = sub_100063A54(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = observerCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Adding cellular oberver: %{public}@", &v11, 0xCu);
    }

    observers2 = [(MSDCellularHelper *)selfCopy observers];
    [observers2 addObject:observerCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  observers = [(MSDCellularHelper *)selfCopy observers];
  v7 = [observers containsObject:observerCopy];

  if (v7)
  {
    v9 = sub_100063A54(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = observerCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Removing cellular oberver: %{public}@", &v11, 0xCu);
    }

    observers2 = [(MSDCellularHelper *)selfCopy observers];
    [observers2 removeObject:observerCopy];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)hasObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  observers = [(MSDCellularHelper *)selfCopy observers];
  v7 = [observers containsObject:observerCopy];

  objc_sync_exit(selfCopy);
  return v7;
}

- (void)_fetchCellularPlanItems
{
  v2 = [NSMutableArray arrayWithCapacity:0];
  v3 = sub_100063A54(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Fetching cellular plan items...", buf, 2u);
  }

  v4 = +[CTCellularPlanManager sharedManager];
  v25 = [v4 planItemsShouldUpdate:0];

  v5 = v25;
  if (v25 && (v5 = [v25 count]) != 0)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = v25;
    v7 = [v6 countByEnumeratingWithState:&v30 objects:v37 count:16];
    v8 = v7;
    if (v7)
    {
      v9 = *v31;
      do
      {
        v10 = 0;
        do
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v30 + 1) + 8 * v10);
          v12 = sub_100063A54(v7);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v36 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found cellular plan item: %{public}@", buf, 0xCu);
          }

          if (![v11 type] || (v7 = objc_msgSend(v11, "type"), v7 == 2))
          {
            v13 = objc_alloc_init(NSMutableDictionary);
            if ([v11 type])
            {
              v14 = &off_10017AFF0;
            }

            else
            {
              v14 = &off_10017B008;
            }

            [v13 setObject:v14 forKey:@"SimType"];
            carrierName = [v11 carrierName];
            v16 = carrierName;
            if (carrierName && [carrierName length])
            {
              [v13 setObject:v16 forKey:@"Provider"];
            }

            else
            {
              v17 = +[NSNull null];
              [v13 setObject:v17 forKey:@"Provider"];
            }

            [v2 addObject:v13];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v7 = [v6 countByEnumeratingWithState:&v30 objects:v37 count:16];
        v8 = v7;
      }

      while (v7);
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    observers = [(MSDCellularHelper *)selfCopy observers];
    v20 = [observers countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v20)
    {
      v21 = *v27;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(observers);
          }

          [*(*(&v26 + 1) + 8 * i) cellularPlanDidChange:v2];
        }

        v20 = [observers countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v20);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = sub_100063A54(v5);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &selfCopy->super, OS_LOG_TYPE_DEFAULT, "No cellular plan items found.", buf, 2u);
    }
  }

  v23 = [NSArray arrayWithArray:v2];
  [(MSDCellularHelper *)self setCellularSlotsInfo:v23];
}

- (void)_handleCellularPlanInfoDidChange:(id)change
{
  v4 = sub_100063A54(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received notification for cellular plan info change!", buf, 2u);
  }

  cellularQueue = [(MSDCellularHelper *)self cellularQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000450D4;
  block[3] = &unk_100169B70;
  block[4] = self;
  dispatch_async(cellularQueue, block);
}

@end
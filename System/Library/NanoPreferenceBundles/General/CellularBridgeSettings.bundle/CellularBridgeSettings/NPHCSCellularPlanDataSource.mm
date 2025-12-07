@interface NPHCSCellularPlanDataSource
- (NPHCSCellularPlanDataSource)initWithDelegate:(id)delegate;
- (void)_cellularPlanInfoDidChange:(id)change;
- (void)simStatusDidChange:(id)change status:(id)status;
@end

@implementation NPHCSCellularPlanDataSource

- (NPHCSCellularPlanDataSource)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = NPHCSCellularPlanDataSource;
  v5 = [(NPHCSCellularPlanDataSource *)&v17 init];
  v6 = v5;
  if (v5)
  {
    [(NPHCSCellularPlanDataSource *)v5 setDelegate:delegateCopy];
    v7 = [CoreTelephonyClient alloc];
    v8 = dispatch_get_global_queue(0, 0);
    v9 = [v7 initWithQueue:v8];
    [(NPHCSCellularPlanDataSource *)v6 setCoreTelephonyClient:v9];

    coreTelephonyClient = [(NPHCSCellularPlanDataSource *)v6 coreTelephonyClient];
    [coreTelephonyClient setDelegate:v6];

    v11 = +[NPHCellularBridgeUIManager sharedInstance];
    [v11 startRemoteProvisioning];

    v12 = +[NPHCellularBridgeUIManager sharedInstance];
    [v12 updateCellularPlansWithFetch:1];

    v13 = +[NSNotificationCenter defaultCenter];
    v14 = NPHCellularPlanInfoDidChangeNotification;
    v15 = +[NPHCellularBridgeUIManager sharedInstance];
    [v13 addObserver:v6 selector:"_cellularPlanInfoDidChange:" name:v14 object:v15];
  }

  return v6;
}

- (void)simStatusDidChange:(id)change status:(id)status
{
  changeCopy = change;
  statusCopy = status;
  v8 = nph_general_log(statusCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[NPHCSCellularPlanDataSource simStatusDidChange:status:]";
    v13 = 2112;
    v14 = changeCopy;
    v15 = 2112;
    v16 = statusCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%s context:%@ status:%@", &v11, 0x20u);
  }

  delegate = [(NPHCSCellularPlanDataSource *)self delegate];
  cellularPlansDictionary = [(NPHCSCellularPlanDataSource *)self cellularPlansDictionary];
  [delegate cellularPlansUpdated:cellularPlansDictionary error:0];
}

- (void)_cellularPlanInfoDidChange:(id)change
{
  changeCopy = change;
  v5 = nph_general_log(changeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v34 = "[NPHCSCellularPlanDataSource _cellularPlanInfoDidChange:]";
    v35 = 2112;
    v36 = changeCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s - notification:%@", buf, 0x16u);
  }

  v6 = +[NPHCellularBridgeUIManager sharedInstance];
  cellularPlans = [v6 cellularPlans];

  v9 = nph_general_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v34 = "[NPHCSCellularPlanDataSource _cellularPlanInfoDidChange:]";
    v35 = 2112;
    v36 = cellularPlans;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%s -- cellularPlans:%@", buf, 0x16u);
  }

  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [cellularPlans count]);
  v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [cellularPlans count]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = cellularPlans;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        if ([v17 shouldDisplay])
        {
          if ([v17 isSelectable])
          {
            v18 = v10;
          }

          else
          {
            v18 = v11;
          }

          [v18 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v14);
  }

  v30[0] = kActiveCellularPlans;
  v19 = [v10 copy];
  v30[1] = kInactiveCellularPlans;
  v31[0] = v19;
  v20 = [v11 copy];
  v31[1] = v20;
  v21 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
  [(NPHCSCellularPlanDataSource *)self setCellularPlansDictionary:v21];

  delegate = [(NPHCSCellularPlanDataSource *)self delegate];
  cellularPlansDictionary = [(NPHCSCellularPlanDataSource *)self cellularPlansDictionary];
  userInfo = [changeCopy userInfo];
  v25 = [userInfo objectForKeyedSubscript:NPHCellularPlanInfoError];
  [delegate cellularPlansUpdated:cellularPlansDictionary error:v25];
}

@end
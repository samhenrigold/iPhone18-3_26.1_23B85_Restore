@interface SSCellularSetupMultiSIMConnectingViewController
- (BOOL)_areAllPlansInTerminalState;
- (SSCellularSetupMultiSIMConnectingViewController)initWithPlanInfos:(id)infos userEnablePlans:(id)plans skip:(BOOL)skip;
- (id)accessoryViewForStatus:(id)status;
- (void)prepare:(id)prepare;
@end

@implementation SSCellularSetupMultiSIMConnectingViewController

- (SSCellularSetupMultiSIMConnectingViewController)initWithPlanInfos:(id)infos userEnablePlans:(id)plans skip:(BOOL)skip
{
  v7 = [infos arrayByAddingObjectsFromArray:plans];
  self->_skip = skip;
  v10.receiver = self;
  v10.super_class = SSCellularSetupMultiSIMConnectingViewController;
  v8 = [(SSCellularSetupMultiSIMActivatingViewController *)&v10 initWithPlanInfos:v7];

  return v8;
}

- (void)prepare:(id)prepare
{
  v15 = *MEMORY[0x277D85DE8];
  prepareCopy = prepare;
  plans = [(SSCellularSetupMultiSIMActivatingViewController *)self plans];
  v6 = [plans count];

  if (v6 <= 1)
  {
    v8 = _TSLogDomain(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      plans2 = [(SSCellularSetupMultiSIMActivatingViewController *)self plans];
      v13 = 134218242;
      *v14 = [plans2 count];
      *&v14[8] = 2080;
      *&v14[10] = "[SSCellularSetupMultiSIMConnectingViewController(TSSetupFlowItem) prepare:]";
      _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "skip - count : %lu @%s", &v13, 0x16u);
    }

    goto LABEL_6;
  }

  if (self->_skip)
  {
LABEL_6:
    prepareCopy[2](prepareCopy, 0);
    goto LABEL_10;
  }

  _areAllPlansInTerminalState = [(SSCellularSetupMultiSIMConnectingViewController *)self _areAllPlansInTerminalState];
  v11 = _areAllPlansInTerminalState;
  v12 = _TSLogDomain(_areAllPlansInTerminalState);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 67109378;
    *v14 = v11;
    *&v14[4] = 2080;
    *&v14[6] = "[SSCellularSetupMultiSIMConnectingViewController(TSSetupFlowItem) prepare:]";
    _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "all done ? %{BOOL}d @%s", &v13, 0x12u);
  }

  prepareCopy[2](prepareCopy, v11 ^ 1u);
LABEL_10:
}

- (id)accessoryViewForStatus:(id)status
{
  statusCopy = status;
  status = [statusCopy status];
  planItem = [statusCopy planItem];
  LOBYTE(status) = [(SSCellularSetupMultiSIMActivatingViewController *)self isPlanInstalledAndNotEnabled:status item:planItem];

  if (status)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SSCellularSetupMultiSIMConnectingViewController;
    v7 = [(SSCellularSetupMultiSIMActivatingViewController *)&v9 accessoryViewForStatus:statusCopy];
  }

  return v7;
}

- (BOOL)_areAllPlansInTerminalState
{
  v27 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  plans = [(SSCellularSetupMultiSIMActivatingViewController *)self plans];
  v3 = [plans countByEnumeratingWithState:&v14 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(plans);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        if (![v7 activatingState])
        {
          v9 = _TSLogDomain(0);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [v7 identifier];
            v11 = SSPlanTransferStatusAsString([v7 status]);
            phoneNumber = [v7 phoneNumber];
            *buf = 138413058;
            v19 = identifier;
            v20 = 2080;
            v21 = v11;
            v22 = 2112;
            v23 = phoneNumber;
            v24 = 2080;
            v25 = "[SSCellularSetupMultiSIMConnectingViewController(TSSetupFlowItem) _areAllPlansInTerminalState]";
            _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "not all plans with a completed state. %@ state: %s, mdn:%@ @%s", buf, 0x2Au);
          }

          v8 = 0;
          goto LABEL_13;
        }
      }

      v4 = [plans countByEnumeratingWithState:&v14 objects:v26 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_13:

  return v8;
}

@end
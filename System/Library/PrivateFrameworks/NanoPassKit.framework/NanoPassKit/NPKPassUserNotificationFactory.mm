@interface NPKPassUserNotificationFactory
- (NPKPassUserNotificationFactory)initWithDataSource:(id)source;
- (NPKPassUserNotificationFactoryDataSource)dataSource;
- (id)passNotificationWithType:(unint64_t)type passUniqueID:(id)d;
@end

@implementation NPKPassUserNotificationFactory

- (NPKPassUserNotificationFactory)initWithDataSource:(id)source
{
  sourceCopy = source;
  v8.receiver = self;
  v8.super_class = NPKPassUserNotificationFactory;
  v5 = [(NPKPassUserNotificationFactory *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
  }

  return v6;
}

- (id)passNotificationWithType:(unint64_t)type passUniqueID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataSource = [(NPKPassUserNotificationFactory *)self dataSource];
  v8 = [(NPKUserNotificationExpressModeEnabled *)dataSource passWithUniqueID:dCopy];

  if (v8)
  {
    if (type < 2)
    {
      v10 = [NPKUserNotificationExpressModeEnabled alloc];
      v11 = v8;
      v12 = 0;
    }

    else if (type == 2)
    {
      v10 = [NPKUserNotificationExpressModeEnabled alloc];
      v11 = v8;
      v12 = 1;
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_14;
      }

      v10 = [NPKUserNotificationExpressModeEnabled alloc];
      v11 = v8;
      v12 = 2;
    }

    dataSource = [(NPKUserNotificationExpressModeEnabled *)v10 initWithPass:v11 expressNotificationType:v12];
  }

  else
  {
    v13 = pk_General_log(v9);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v16 = pk_General_log(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = dCopy;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Warning: Fail to find pass for notification with uniqueID:%@", &v18, 0xCu);
      }
    }

    dataSource = 0;
  }

LABEL_14:

  return dataSource;
}

- (NPKPassUserNotificationFactoryDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    mEMORY[0x277D37FC0] = WeakRetained;
  }

  else
  {
    mEMORY[0x277D37FC0] = [MEMORY[0x277D37FC0] sharedInstance];
  }

  v5 = mEMORY[0x277D37FC0];

  return v5;
}

@end
@interface W5PeerDatabaseListener
- (BOOL)handleClientRequest:(id)request;
- (W5PeerDatabaseListener)initWithDatabaseAccessManager:(id)manager;
@end

@implementation W5PeerDatabaseListener

- (W5PeerDatabaseListener)initWithDatabaseAccessManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = W5PeerDatabaseListener;
  v6 = [(W5PeerDatabaseListener *)&v12 init];
  v7 = v6;
  if (!v6 || (objc_storeStrong(&v6->_databaseManager, manager), !v7->_databaseManager))
  {

    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 0;
      v10 = 2;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v8, 0, "[wifivelocity] init error!", v11, v10);
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)handleClientRequest:(id)request
{
  requestCopy = request;
  payload = [requestCopy payload];
  v6 = payload;
  if (payload)
  {
    version = [payload version];
    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 136315906;
      *&v20[4] = "[W5PeerDatabaseListener handleClientRequest:]";
      *&v20[12] = 2112;
      *&v20[14] = requestCopy;
      *&v20[22] = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = version;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v8, 0, "[wifivelocity] %s: incoming request='%@', payload='%@' version='%@'", v20, 42);
    }

    v9 = objc_alloc_init(W5PeerDatabaseResponsePayload);
    v10 = [NSNumber numberWithInteger:[(W5PeerDatabaseListener *)self currentVersion]];
    [(W5PeerDatabaseResponsePayload *)v9 setVersion:v10];

    [(W5PeerDatabaseResponsePayload *)v9 setStatus:1];
    if ([version integerValue] == 1 || objc_msgSend(version, "integerValue") == 2)
    {
      fetchRequest = [v6 fetchRequest];

      if (fetchRequest)
      {
        fetchRequest2 = [v6 fetchRequest];
        [fetchRequest2 setResultType:2];

        databaseManager = self->_databaseManager;
        fetchRequest3 = [v6 fetchRequest];
        v15 = [(W5DatabaseManager *)databaseManager performFetch:fetchRequest3];
        [(W5PeerDatabaseResponsePayload *)v9 setFetchedResults:v15];

        [(W5DatabaseManager *)self->_databaseManager releaseMoc];
LABEL_13:
        handler = [requestCopy handler];
        (handler)[2](handler, v9, 0);

        goto LABEL_14;
      }

      v16 = sub_100098A04();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 136315394;
        *&v20[4] = "[W5PeerDatabaseListener handleClientRequest:]";
        *&v20[12] = 2112;
        *&v20[14] = requestCopy;
        LODWORD(v19) = 22;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v16, 0, "[wifivelocity] %s: invalid fetchRequest %@", v20, v19, *v20, *&v20[8]);
      }
    }

    else
    {
      v16 = sub_100098A04();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 136315394;
        *&v20[4] = "[W5PeerDatabaseListener handleClientRequest:]";
        *&v20[12] = 2112;
        *&v20[14] = version;
        LODWORD(v19) = 22;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v16, 0, "[wifivelocity] %s: Unsupported W5PeerDatabaseRequestVersion %@", v20, v19, *v20, *&v20[8]);
      }
    }

    goto LABEL_13;
  }

LABEL_14:

  return 1;
}

@end
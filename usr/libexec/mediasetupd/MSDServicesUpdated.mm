@interface MSDServicesUpdated
+ (id)servicesUpdated:(id)updated cachedData:(id)data;
- (MSDServicesUpdated)initWithUpdatedData:(id)data cachedData:(id)cachedData;
- (void)_handleDefaultServiceChanged:(id)changed;
- (void)_handleServiceAdded:(id)added cachedDataIDS:(id)s;
- (void)_handleServiceRemoved:(id)removed cachedDataIDS:(id)s;
- (void)processChangesInServices;
@end

@implementation MSDServicesUpdated

- (MSDServicesUpdated)initWithUpdatedData:(id)data cachedData:(id)cachedData
{
  dataCopy = data;
  cachedDataCopy = cachedData;
  v12.receiver = self;
  v12.super_class = MSDServicesUpdated;
  v9 = [(MSDServicesUpdated *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cachedData, cachedData);
    objc_storeStrong(&v10->_updatedData, data);
  }

  return v10;
}

+ (id)servicesUpdated:(id)updated cachedData:(id)data
{
  dataCopy = data;
  updatedCopy = updated;
  v8 = [[self alloc] initWithUpdatedData:updatedCopy cachedData:dataCopy];

  return v8;
}

- (void)processChangesInServices
{
  v3 = [(NSArray *)self->_cachedData na_map:&stru_100050A50];
  v4 = [v3 mutableCopy];

  v5 = [(NSArray *)self->_updatedData na_map:&stru_100050A70];
  v6 = [v5 mutableCopy];

  v7 = [v6 count];
  if (v7 != [v4 count])
  {
    v8 = [v6 count];
    v9 = [v4 count];
    v10 = sub_100030FE4(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v8 <= v9)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "A service was deleted on device", buf, 2u);
      }

      v12 = [v6 copy];
      v13 = [v4 copy];
      [(MSDServicesUpdated *)self _handleServiceRemoved:v12 cachedDataIDS:v13];
    }

    else
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "A service was added on device", buf, 2u);
      }

      v12 = [v6 copy];
      v13 = [v4 copy];
      [(MSDServicesUpdated *)self _handleServiceAdded:v12 cachedDataIDS:v13];
    }
  }

  v28 = v6;
  v29 = v4;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = self->_updatedData;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v33;
    v18 = MSDefaultServiceRecordType;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v32 + 1) + 8 * i);
        recordType = [v20 recordType];
        v22 = [recordType isEqualToString:v18];

        if (v22)
        {
          [(MSDServicesUpdated *)self _handleDefaultServiceChanged:v20];
        }

        else
        {
          cachedData = self->_cachedData;
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_1000051CC;
          v31[3] = &unk_100050A98;
          v31[4] = v20;
          v24 = [(NSArray *)cachedData na_firstObjectPassingTest:v31];
          v25 = v24;
          if (v24)
          {
            v26 = sub_100030FE4(v24);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "A service was updated on device", buf, 2u);
            }

            v27 = dispatch_time(0, 500000000);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000052E0;
            block[3] = &unk_100050AC0;
            block[4] = v20;
            dispatch_after(v27, &_dispatch_main_q, block);
          }
        }
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v16);
  }
}

- (void)_handleServiceAdded:(id)added cachedDataIDS:(id)s
{
  sCopy = s;
  v7 = [added mutableCopy];
  [v7 removeObjectsInArray:sCopy];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000054C0;
  v8[3] = &unk_100050AE8;
  v8[4] = self;
  [v7 enumerateObjectsUsingBlock:v8];
}

- (void)_handleServiceRemoved:(id)removed cachedDataIDS:(id)s
{
  removedCopy = removed;
  v7 = [s mutableCopy];
  [v7 removeObjectsInArray:removedCopy];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000586C;
  v8[3] = &unk_100050AE8;
  v8[4] = self;
  [v7 enumerateObjectsUsingBlock:v8];
}

- (void)_handleDefaultServiceChanged:(id)changed
{
  changedCopy = changed;
  service = [changedCopy service];
  serviceID = [service serviceID];

  homeUserID = [changedCopy homeUserID];

  cachedData = self->_cachedData;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100005DCC;
  v25[3] = &unk_100050A98;
  v9 = homeUserID;
  v26 = v9;
  v10 = [(NSArray *)cachedData na_firstObjectPassingTest:v25];
  service2 = [v10 service];
  serviceID2 = [service2 serviceID];
  v13 = [serviceID2 isEqual:serviceID];

  if ((v13 & 1) == 0)
  {
    updatedData = self->_updatedData;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100005E50;
    v22[3] = &unk_100050B10;
    v23 = v9;
    v24 = serviceID;
    v15 = [(NSArray *)updatedData na_firstObjectPassingTest:v22];
    v16 = v15;
    if (v15)
    {
      v17 = sub_100030FE4(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "DefaultService was updated on device", buf, 2u);
      }

      v18 = dispatch_time(0, 500000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100005F14;
      block[3] = &unk_100050AC0;
      v20 = v16;
      dispatch_after(v18, &_dispatch_main_q, block);
    }
  }
}

@end
@interface CLSiloHeartbeatRecord
- (id)initTrackingServiceClass:(Class)class name:(id)name;
@end

@implementation CLSiloHeartbeatRecord

- (id)initTrackingServiceClass:(Class)class name:(id)name
{
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = CLSiloHeartbeatRecord;
  v8 = [(CLSiloHeartbeatRecord *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_svcClass, class);
    objc_storeStrong(&v9->_svcName, name);
    v12 = objc_msgSend_getSilo(class, v10, v11);
    silo = v9->_silo;
    v9->_silo = v12;

    v9->_residentCount = 1;
    v14 = v9;
  }

  return v9;
}

@end
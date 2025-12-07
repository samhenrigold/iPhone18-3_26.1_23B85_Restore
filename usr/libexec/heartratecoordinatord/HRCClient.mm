@interface HRCClient
- (HRCClient)initWithDelegate:(id)delegate remoteObjectProxy:(id)proxy onQueue:(id)queue;
- (HRCClientDelegate)delegate;
- (void)_handleHeartRate:(id)rate;
- (void)_requestOpportunisticUpdates:(BOOL)updates;
- (void)_requestStreamingMode:(unint64_t)mode;
- (void)_setUserWorkoutActivityType:(unint64_t)type locationType:(int64_t)locationType;
- (void)_updateProcessName:(id)name;
- (void)dealloc;
- (void)handleHeartRate:(id)rate;
- (void)reportClientConnectionUpdate:(BOOL)update;
- (void)reportClientSnapshot;
- (void)requestOpportunisticUpdates:(BOOL)updates;
- (void)requestStreamingMode:(unint64_t)mode;
- (void)setUserWorkoutActivityType:(unint64_t)type locationType:(int64_t)locationType;
- (void)updateProcessName:(id)name;
@end

@implementation HRCClient

- (HRCClient)initWithDelegate:(id)delegate remoteObjectProxy:(id)proxy onQueue:(id)queue
{
  delegateCopy = delegate;
  proxyCopy = proxy;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = HRCClient;
  v11 = [(HRCClient *)&v15 init];
  objc_storeWeak(&v11->_delegate, delegateCopy);
  objc_storeStrong(&v11->_queue, queue);
  objc_storeStrong(&v11->_remoteObjectProxy, proxy);
  v12 = +[NSUUID UUID];
  clientIdentifier = v11->_clientIdentifier;
  v11->_clientIdentifier = v12;

  return v11;
}

- (void)dealloc
{
  v3 = sub_10000132C([(HRCClient *)self reportClientConnectionUpdate:0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    processName = self->_processName;
    *buf = 138543362;
    v7 = processName;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HRCClient dealloc called for client : %{public}@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = HRCClient;
  [(HRCClient *)&v5 dealloc];
}

- (void)requestOpportunisticUpdates:(BOOL)updates
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000102B8;
  v4[3] = &unk_100040868;
  v4[4] = self;
  updatesCopy = updates;
  dispatch_async(queue, v4);
}

- (void)requestStreamingMode:(unint64_t)mode
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001033C;
  v4[3] = &unk_100040840;
  v4[4] = self;
  v4[5] = mode;
  dispatch_async(queue, v4);
}

- (void)updateProcessName:(id)name
{
  nameCopy = name;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000103E0;
  v7[3] = &unk_100040BC8;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
  dispatch_async(queue, v7);
}

- (void)setUserWorkoutActivityType:(unint64_t)type locationType:(int64_t)locationType
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010464;
  block[3] = &unk_100040BF0;
  block[4] = self;
  block[5] = type;
  block[6] = locationType;
  dispatch_async(queue, block);
}

- (void)handleHeartRate:(id)rate
{
  rateCopy = rate;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001050C;
  v7[3] = &unk_100040BC8;
  v7[4] = self;
  v8 = rateCopy;
  v6 = rateCopy;
  dispatch_async(queue, v7);
}

- (void)_requestOpportunisticUpdates:(BOOL)updates
{
  updatesCopy = updates;
  dispatch_assert_queue_V2(self->_queue);
  v6 = sub_10000132C(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    processName = [(HRCClient *)self processName];
    clientIdentifier = self->_clientIdentifier;
    v10 = 138543874;
    v11 = processName;
    v12 = 2114;
    v13 = clientIdentifier;
    v14 = 1024;
    v15 = updatesCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ with uuid : %{public}@ requested opportunistic updates enabled : %d", &v10, 0x1Cu);
  }

  [(HRCClient *)self setOpportunisticMode:updatesCopy];
  [(HRCClient *)self reportClientSnapshot];
  delegate = [(HRCClient *)self delegate];
  [delegate clientOpportunisticModeRequestUpdated];
}

- (void)_requestStreamingMode:(unint64_t)mode
{
  dispatch_assert_queue_V2(self->_queue);
  v6 = sub_10000132C(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    processName = [(HRCClient *)self processName];
    clientIdentifier = self->_clientIdentifier;
    v10 = 138543874;
    v11 = processName;
    v12 = 2114;
    v13 = clientIdentifier;
    v14 = 2048;
    modeCopy = mode;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ with uuid : %{public}@ requested streaming mode : %lu", &v10, 0x20u);
  }

  [(HRCClient *)self setStreamingMode:mode];
  [(HRCClient *)self reportClientSnapshot];
  delegate = [(HRCClient *)self delegate];
  [delegate clientStreamingModeRequestUpdated];
}

- (void)_updateProcessName:(id)name
{
  nameCopy = name;
  dispatch_assert_queue_V2(self->_queue);
  v5 = sub_10000132C([(HRCClient *)self setProcessName:nameCopy]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    processName = self->_processName;
    v7 = 138543362;
    v8 = processName;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client updated processName : %{public}@", &v7, 0xCu);
  }

  [(HRCClient *)self reportClientConnectionUpdate:1];
}

- (void)_setUserWorkoutActivityType:(unint64_t)type locationType:(int64_t)locationType
{
  dispatch_assert_queue_V2(self->_queue);
  v8 = sub_10000132C(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    processName = self->_processName;
    clientIdentifier = self->_clientIdentifier;
    v12 = 138544130;
    v13 = processName;
    v14 = 2114;
    v15 = clientIdentifier;
    v16 = 2048;
    typeCopy = type;
    v18 = 2048;
    locationTypeCopy = locationType;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ with uuid : %{public}@ updated workoutActivityType : %lu, locationType : %lu", &v12, 0x2Au);
  }

  delegate = [(HRCClient *)self delegate];
  [delegate clientUpdatedWorkoutActivityType:type withLocationType:locationType client:self];
}

- (void)_handleHeartRate:(id)rate
{
  rateCopy = rate;
  dispatch_assert_queue_V2(self->_queue);
  v6 = sub_10000132C(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    processName = [(HRCClient *)self processName];
    v8 = 138543362;
    v9 = processName;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "received heart rate data to be sent to %{public}@ process", &v8, 0xCu);
  }

  [(HRCFrontEndClient *)self->_remoteObjectProxy handleHeartRateData:rateCopy];
}

- (void)reportClientSnapshot
{
  v20[0] = @"process-name";
  processName = [(HRCClient *)self processName];
  v21[0] = processName;
  v20[1] = @"connection-identifier";
  uUIDString = [(NSUUID *)self->_clientIdentifier UUIDString];
  v21[1] = uUIDString;
  v20[2] = @"streaming-mode";
  v5 = [NSNumber numberWithUnsignedInteger:[(HRCClient *)self streamingMode]];
  v21[2] = v5;
  v20[3] = @"opportunistic-mode";
  v6 = [NSNumber numberWithBool:[(HRCClient *)self opportunisticMode]];
  v21[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];

  v9 = sub_10000132C(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    processName2 = [(HRCClient *)self processName];
    uUIDString2 = [(NSUUID *)self->_clientIdentifier UUIDString];
    v12 = 138544130;
    v13 = processName2;
    v14 = 2114;
    v15 = uUIDString2;
    v16 = 2050;
    streamingMode = [(HRCClient *)self streamingMode];
    v18 = 1026;
    opportunisticMode = [(HRCClient *)self opportunisticMode];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "power telemetry :: client snapshot with name : %{public}@ , uuid : %{public}@, streaming-mode : %{public}lu , opportunistic-mode : %{public}d", &v12, 0x26u);
  }

  if (qword_1000488D8 != -1)
  {
    sub_10001104C();
  }

  PPSSendTelemetry();
}

- (void)reportClientConnectionUpdate:(BOOL)update
{
  updateCopy = update;
  v19[0] = self->_processName;
  v18[0] = @"process-name";
  v18[1] = @"connection-identifier";
  uUIDString = [(NSUUID *)self->_clientIdentifier UUIDString];
  v19[1] = uUIDString;
  v18[2] = @"process-connected";
  v6 = [NSNumber numberWithBool:updateCopy];
  v19[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];

  v9 = sub_10000132C(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    processName = [(HRCClient *)self processName];
    uUIDString2 = [(NSUUID *)self->_clientIdentifier UUIDString];
    v12 = 138543874;
    v13 = processName;
    v14 = 2114;
    v15 = uUIDString2;
    v16 = 1026;
    v17 = updateCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "power telemetry :: client connection with name : %{public}@ , uuid : %{public}@, process-connected : %{public}d", &v12, 0x1Cu);
  }

  if (qword_1000488E8 != -1)
  {
    sub_100011074();
  }

  PPSSendTelemetry();
}

- (HRCClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
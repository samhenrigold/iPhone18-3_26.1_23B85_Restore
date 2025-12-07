@interface BKHumanPresenceHIDEventProcessor
- (BKHumanPresenceHIDEventProcessor)init;
- (NSString)description;
- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher;
- (void)_setPresence:(BOOL)presence forDisplayUUID:(id)d;
- (void)_setProximityInCentimeters:(double)centimeters forDisplayUUID:(id)d;
- (void)dealloc;
- (void)getStatus:(unint64_t *)status presence:(BOOL *)presence proximityInCentimeters:(double *)centimeters forDisplayUUID:(id)d;
- (void)matcher:(id)matcher servicesDidMatch:(id)match;
- (void)serviceDidDisappear:(id)disappear;
@end

@implementation BKHumanPresenceHIDEventProcessor

- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher
{
  senderCopy = sender;
  IntegerValue = IOHIDEventGetIntegerValue();
  if (!IntegerValue)
  {
    IOHIDEventGetFloatValue();
    v15 = v14;
    v16 = BKLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v20 = 138543618;
      *&v20[4] = objc_opt_class();
      *&v20[12] = 2048;
      *&v20[14] = v15;
      v17 = *&v20[4];
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%{public}@: human proximity event %g", v20, 0x16u);
    }

    displayUUID = [senderCopy displayUUID];
    v13 = sub_10000A9C8(displayUUID);

    [(BKHumanPresenceHIDEventProcessor *)self _setProximityInCentimeters:v13 forDisplayUUID:v15];
    goto LABEL_9;
  }

  if (IntegerValue == 3)
  {
    IOHIDEventGetFloatValue();
    v9 = v8;
    v10 = BKLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v20 = 138543618;
      *&v20[4] = objc_opt_class();
      *&v20[12] = 2048;
      *&v20[14] = v9;
      v11 = *&v20[4];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@: human presence event %g", v20, 0x16u);
    }

    displayUUID2 = [senderCopy displayUUID];
    v13 = sub_10000A9C8(displayUUID2);

    [(BKHumanPresenceHIDEventProcessor *)self _setPresence:v9 > 0.0 forDisplayUUID:v13, *v20, *&v20[8]];
LABEL_9:
  }

  return 0;
}

- (void)getStatus:(unint64_t *)status presence:(BOOL *)presence proximityInCentimeters:(double *)centimeters forDisplayUUID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040290;
  block[3] = &unk_1000FAFD8;
  block[4] = self;
  v14 = dCopy;
  presenceCopy = presence;
  centimetersCopy = centimeters;
  statusCopy = status;
  v12 = dCopy;
  dispatch_sync(queue, block);
}

- (void)_setPresence:(BOOL)presence forDisplayUUID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004041C;
  block[3] = &unk_1000FB5B8;
  block[4] = self;
  v10 = dCopy;
  presenceCopy = presence;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)_setProximityInCentimeters:(double)centimeters forDisplayUUID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000405C0;
  block[3] = &unk_1000FCA90;
  block[4] = self;
  v10 = dCopy;
  centimetersCopy = centimeters;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)serviceDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  dispatch_assert_queue_V2(self->_queue);
  v5 = BKLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = disappearCopy;
    v6 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@: removing %{public}@", &v12, 0x16u);
  }

  displayUUID = [disappearCopy displayUUID];
  v8 = sub_10000A9C8(displayUUID);

  v9 = [(NSMutableDictionary *)self->_queue_displayUUIDToSensorRecords objectForKey:v8];
  [v9 removeService:disappearCopy];
  services = [v9 services];
  v11 = [services count];

  if (!v11)
  {
    [(NSMutableDictionary *)self->_queue_displayUUIDToSensorRecords removeObjectForKey:v8];
  }
}

- (void)matcher:(id)matcher servicesDidMatch:(id)match
{
  matchCopy = match;
  dispatch_assert_queue_V2(self->_queue);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = matchCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v21;
    *&v8 = 138543618;
    v19 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = BKLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = objc_opt_class();
          *buf = v19;
          v25 = v14;
          v26 = 2114;
          v27 = v12;
          v15 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}@: found %{public}@", buf, 0x16u);
        }

        displayUUID = [v12 displayUUID];
        v17 = sub_10000A9C8(displayUUID);

        v18 = [(NSMutableDictionary *)self->_queue_displayUUIDToSensorRecords objectForKey:v17];
        if (!v18)
        {
          v18 = objc_alloc_init(_BKHIDHumanPresenceSensorRecord);
          [(NSMutableDictionary *)self->_queue_displayUUIDToSensorRecords setObject:v18 forKey:v17];
        }

        [(_BKHIDHumanPresenceSensorRecord *)v18 addService:v12, v19, v20];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v9);
  }
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_queue_displayUUIDToSensorRecords withName:@"sensors"];
  build = [v3 build];

  return build;
}

- (void)dealloc
{
  [(BKIOHIDServiceMatcher *)self->_proximityServiceMatcher invalidate];
  [(BKIOHIDServiceMatcher *)self->_presenceServiceMatcher invalidate];
  v3.receiver = self;
  v3.super_class = BKHumanPresenceHIDEventProcessor;
  [(BKHumanPresenceHIDEventProcessor *)&v3 dealloc];
}

- (BKHumanPresenceHIDEventProcessor)init
{
  v13.receiver = self;
  v13.super_class = BKHumanPresenceHIDEventProcessor;
  v2 = [(BKHumanPresenceHIDEventProcessor *)&v13 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    queue = v2->_queue;
    v2->_queue = Serial;

    v5 = objc_alloc_init(NSMutableDictionary);
    queue_displayUUIDToSensorRecords = v2->_queue_displayUUIDToSensorRecords;
    v2->_queue_displayUUIDToSensorRecords = v5;

    v7 = +[BKHIDSystemInterface sharedInstance];
    v8 = [[BKIOHIDServiceMatcher alloc] initWithUsagePage:32 usage:17 builtIn:0 dataProvider:v7];
    presenceServiceMatcher = v2->_presenceServiceMatcher;
    v2->_presenceServiceMatcher = v8;

    [(BKIOHIDServiceMatcher *)v2->_presenceServiceMatcher startObserving:v2 queue:v2->_queue];
    v10 = [[BKIOHIDServiceMatcher alloc] initWithUsagePage:32 usage:18 builtIn:0 dataProvider:v7];
    proximityServiceMatcher = v2->_proximityServiceMatcher;
    v2->_proximityServiceMatcher = v10;

    [(BKIOHIDServiceMatcher *)v2->_proximityServiceMatcher startObserving:v2 queue:v2->_queue];
  }

  return v2;
}

@end
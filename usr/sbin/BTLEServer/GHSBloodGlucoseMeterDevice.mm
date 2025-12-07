@interface GHSBloodGlucoseMeterDevice
- (BOOL)extractHealthObservationBloodGlucoseWithStream:(id)stream observationType:(unsigned int)type timestamp:(id)timestamp isLive:(BOOL)live;
- (BOOL)handleLiveHealthObservationsData:(id)data observationClassType:(unsigned __int8)type observationType:(unsigned int)observationType userID:(unsigned __int8)d observationID:(unsigned int)iD timestamp:(id)timestamp;
- (BOOL)handleStoredHealthObservationsData:(id)data observationClassType:(unsigned __int8)type observationType:(unsigned int)observationType userID:(unsigned __int8)d observationID:(unsigned int)iD timestamp:(id)timestamp;
- (GHSBloodGlucoseMeterDevice)initWithProperties:(id)properties healthStore:(id)store;
- (void)healthDataSyncBloodGlucose:(double)glucose unit:(id)unit startTime:(id)time endTime:(id)endTime;
@end

@implementation GHSBloodGlucoseMeterDevice

- (GHSBloodGlucoseMeterDevice)initWithProperties:(id)properties healthStore:(id)store
{
  storeCopy = store;
  propertiesCopy = properties;
  v8 = [HKSampleType quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodGlucose];
  v9 = [NSSet setWithObjects:v8, 0];

  v13.receiver = self;
  v13.super_class = GHSBloodGlucoseMeterDevice;
  v10 = [(GHSBluetoothDevice *)&v13 initWithProperties:propertiesCopy healthStore:storeCopy healthSampleTypes:v9];

  if (v10)
  {
    v11 = v10;
  }

  return v10;
}

- (BOOL)handleLiveHealthObservationsData:(id)data observationClassType:(unsigned __int8)type observationType:(unsigned int)observationType userID:(unsigned __int8)d observationID:(unsigned int)iD timestamp:(id)timestamp
{
  dCopy = d;
  v11 = *&observationType;
  typeCopy = type;
  dataCopy = data;
  timestampCopy = timestamp;
  v16 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    peripheral = [(GHSBluetoothDevice *)self peripheral];
    name = [peripheral name];
    v22 = 141559299;
    v23 = 1752392040;
    v24 = 2113;
    v25 = name;
    v26 = 1024;
    v27 = typeCopy;
    v28 = 1024;
    v29 = v11;
    v30 = 1024;
    v31 = dCopy;
    v32 = 1024;
    iDCopy = iD;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Handle live health observation for peripheral %{private, mask.hash}@: classType %u, observationType %u, userId %u, observationId %u", &v22, 0x2Eu);
  }

  if (typeCopy != 1 || ![(GHSBloodGlucoseMeterDevice *)self extractHealthObservationBloodGlucoseWithStream:dataCopy observationType:v11 timestamp:timestampCopy isLive:1])
  {
    v20 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100072018(v20, self);
    }

    LOBYTE(typeCopy) = 0;
  }

  return typeCopy;
}

- (BOOL)handleStoredHealthObservationsData:(id)data observationClassType:(unsigned __int8)type observationType:(unsigned int)observationType userID:(unsigned __int8)d observationID:(unsigned int)iD timestamp:(id)timestamp
{
  v9 = *&observationType;
  typeCopy = type;
  dataCopy = data;
  timestampCopy = timestamp;
  v14 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    peripheral = [(GHSBluetoothDevice *)self peripheral];
    name = [peripheral name];
    v21 = 141558275;
    v22 = 1752392040;
    v23 = 2113;
    v24 = name;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Handle stored health observation for peripheral %{private, mask.hash}@", &v21, 0x16u);
  }

  if (typeCopy == 1 && [(GHSBloodGlucoseMeterDevice *)self extractHealthObservationBloodGlucoseWithStream:dataCopy observationType:v9 timestamp:timestampCopy isLive:0])
  {
    v18 = 1;
  }

  else
  {
    v19 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000720C8(v19, self);
    }

    v18 = 0;
  }

  return v18;
}

- (void)healthDataSyncBloodGlucose:(double)glucose unit:(id)unit startTime:(id)time endTime:(id)endTime
{
  unitCopy = unit;
  timeCopy = time;
  endTimeCopy = endTime;
  debugLoggingEnabled = [(GHSBluetoothDevice *)self debugLoggingEnabled];
  bOOLValue = [debugLoggingEnabled BOOLValue];

  if (bOOLValue)
  {
    v15 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      glucoseCopy = glucose;
      v31 = 2112;
      v32 = unitCopy;
      v33 = 2112;
      v34 = timeCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "GHSS HealthDataSync bloodGlucose=%f, unit=%@, date=%@", buf, 0x20u);
    }
  }

  peripheral = [(GHSBluetoothDevice *)self peripheral];
  v17 = [peripheral customProperty:@"UpdateHealth"];
  v18 = [v17 isEqualToString:@"1"];

  if (v18)
  {
    v19 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodGlucose];
    v20 = [HKUnit unitFromString:unitCopy];
    v21 = [HKQuantity quantityWithUnit:v20 doubleValue:glucose];

    hkDevice = [(GHSBluetoothDevice *)self hkDevice];
    v23 = [HKQuantitySample quantitySampleWithType:v19 quantity:v21 startDate:timeCopy endDate:endTimeCopy device:hkDevice metadata:0];

    hkStore = [(GHSBluetoothDevice *)self hkStore];
    v28 = v23;
    v25 = [NSArray arrayWithObjects:&v28 count:1];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000130E4;
    v27[3] = &unk_1000BD528;
    v27[4] = self;
    [hkStore saveObjects:v25 withCompletion:v27];
  }

  else
  {
    v26 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "GHSS HealthDataSync Skipped due to user configuration", buf, 2u);
    }
  }
}

- (BOOL)extractHealthObservationBloodGlucoseWithStream:(id)stream observationType:(unsigned int)type timestamp:(id)timestamp isLive:(BOOL)live
{
  streamCopy = stream;
  timestampCopy = timestamp;
  if (type == 160184)
  {
    v21 = 0;
    v20 = 0.0;
    if ([streamCopy readUint16:&v21])
    {
      if (v21 == 2130)
      {
        v11 = 1;
        v12 = @"mg/dL";
      }

      else if (v21 == 4722)
      {
        v11 = 1;
        v12 = @"mmol/L";
      }

      else
      {
        v13 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_10007225C(v13, self, &v21);
        }

        v12 = 0;
        v11 = 0;
      }
    }

    else
    {
      v12 = 0;
      v11 = 1;
    }

    if (([streamCopy readIEEEFloat:&v20] & 1) == 0)
    {
      v14 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100072344(v14, self);
      }
    }

    if (v20 == 0.0)
    {
      v15 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        peripheral = [(GHSBluetoothDevice *)self peripheral];
        name = [peripheral name];
        *buf = 141558275;
        v23 = 1752392040;
        v24 = 2113;
        v25 = name;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Peripheral %{private, mask.hash}@ observation value not saved due to invalid value", buf, 0x16u);
      }
    }

    else
    {
      [(GHSBloodGlucoseMeterDevice *)self healthDataSyncBloodGlucose:v12 unit:timestampCopy startTime:timestampCopy endTime:v20];
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

@end
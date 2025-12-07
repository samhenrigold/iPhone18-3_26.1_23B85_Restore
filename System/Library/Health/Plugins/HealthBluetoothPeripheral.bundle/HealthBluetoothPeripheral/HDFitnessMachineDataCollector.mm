@interface HDFitnessMachineDataCollector
- (HDFitnessMachineDataCollector)initWithFitnessMachineType:(unint64_t)type profile:(id)profile;
- (void)addObserver:(id)observer;
- (void)dataAggregator:(id)aggregator wantsCollectionWithConfiguration:(id)configuration;
- (void)handleDataCharacteristic:(id)characteristic;
- (void)removeObserver:(id)observer;
- (void)setMachineBrand:(id)brand;
- (void)setMachinePreferredUntilDate:(id)date;
- (void)setMachineStartDate:(id)date;
- (void)tearDown;
- (void)unitTest_processDatumsByMetric:(id)metric completion:(id)completion;
@end

@implementation HDFitnessMachineDataCollector

- (HDFitnessMachineDataCollector)initWithFitnessMachineType:(unint64_t)type profile:(id)profile
{
  profileCopy = profile;
  v34.receiver = self;
  v34.super_class = HDFitnessMachineDataCollector;
  v7 = [(HDFitnessMachineDataCollector *)&v34 init];
  v8 = v7;
  if (v7)
  {
    v7->_fitnessMachineType = type;
    objc_storeWeak(&v7->_profile, profileCopy);
    v10 = +[NSMapTable strongToWeakObjectsMapTable];
    aggregators = v8->_aggregators;
    v8->_aggregators = v10;

    v12 = HKCreateSerialDispatchQueue();
    queue = v8->_queue;
    v8->_queue = v12;

    v14 = objc_alloc_init(NSMutableDictionary);
    previousDatums = v8->_previousDatums;
    v8->_previousDatums = v14;

    v16 = objc_alloc_init(NSMutableDictionary);
    previousWorkoutMetrics = v8->_previousWorkoutMetrics;
    v8->_previousWorkoutMetrics = v16;

    approximatedStartDate = v8->_approximatedStartDate;
    v8->_approximatedStartDate = 0;

    lastDatumsDate = v8->_lastDatumsDate;
    v8->_lastDatumsDate = 0;

    v20 = objc_alloc_init(NSMutableArray);
    bufferedCharacteristics = v8->_bufferedCharacteristics;
    v8->_bufferedCharacteristics = v20;

    sub_38D6C(v8, v22);
    v23 = objc_alloc_init(NSMutableDictionary);
    bufferedMetrics = v8->_bufferedMetrics;
    v8->_bufferedMetrics = v23;

    if (+[CMFitnessMachine isAvailable])
    {
      v25 = objc_alloc_init(CMFitnessMachine);
      cmFitnessMachine = v8->_cmFitnessMachine;
      v8->_cmFitnessMachine = v25;
    }

    v27 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierActiveEnergyBurned];
    v28 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierAppleExerciseTime];
    v29 = [NSSet setWithObjects:v27, v28, 0];
    localDevicePreferredObjectTypes = v8->_localDevicePreferredObjectTypes;
    v8->_localDevicePreferredObjectTypes = v29;

    v31 = [HKObserverSet alloc];
    v32 = [v31 initWithName:@"fitness-machine-metrics-observer" loggingCategory:HKLogDataCollection];
    metricsCollectorObservers = v8->_metricsCollectorObservers;
    v8->_metricsCollectorObservers = v32;
  }

  return v8;
}

- (void)setMachineBrand:(id)brand
{
  brandCopy = brand;
  v5 = [brandCopy copy];
  machineBrand = self->_machineBrand;
  self->_machineBrand = v5;

  v7 = [HKDevice alloc];
  v8 = [v7 initWithName:brandCopy manufacturer:brandCopy model:0 hardwareVersion:0 firmwareVersion:0 softwareVersion:0 localIdentifier:HKDeviceConnectedGymIdentifier UDIDeviceIdentifier:0];

  device = self->_device;
  self->_device = v8;

  v10 = self->_device;
  fitnessMachineType = self->_fitnessMachineType;

  [(HKDevice *)v10 _setFitnessMachineType:fitnessMachineType];
}

- (void)setMachineStartDate:(id)date
{
  dateCopy = date;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_24F78;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  dispatch_async(queue, v7);
}

- (void)setMachinePreferredUntilDate:(id)date
{
  dateCopy = date;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_25064;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  dispatch_async(queue, v7);
}

- (void)tearDown
{
  v3 = HKSupportedMetricsForMachineType();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMapTable *)self->_aggregators objectForKey:*(*(&v9 + 1) + 8 * v7)];
        [v8 unregisterDataCollector:self];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)handleDataCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_2521C;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = characteristicCopy;
  v6 = characteristicCopy;
  dispatch_async(queue, v7);
}

- (void)dataAggregator:(id)aggregator wantsCollectionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_25DB0;
  v8[3] = &unk_5C8C8;
  v8[4] = self;
  v9 = configurationCopy;
  v7 = configurationCopy;
  dispatch_async(queue, v8);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_25E84;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
  sub_39C64(self);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_25F28;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)unitTest_processDatumsByMetric:(id)metric completion:(id)completion
{
  metricCopy = metric;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_39E34;
  block[3] = &unk_5D740;
  block[4] = self;
  v12 = metricCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = metricCopy;
  dispatch_async(queue, block);
}

@end
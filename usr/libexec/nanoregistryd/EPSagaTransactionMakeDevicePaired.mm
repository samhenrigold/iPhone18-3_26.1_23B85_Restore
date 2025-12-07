@interface EPSagaTransactionMakeDevicePaired
- (EPTransactionDelegate)delegate;
- (id)_makeIsPairedDeviceCollection:(id)collection diffWithPairingID:(id)d pair:(BOOL)pair;
- (id)_makeIsSetupNoDeviceCollection:(id)collection diffWithPairingID:(id)d;
- (id)registry;
- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
@end

@implementation EPSagaTransactionMakeDevicePaired

- (id)registry
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (id)_makeIsPairedDeviceCollection:(id)collection diffWithPairingID:(id)d pair:(BOOL)pair
{
  pairCopy = pair;
  v6 = [NRDevicePropertyDiffType alloc];
  v7 = [NRDevicePropertyDiff alloc];
  v8 = [NSNumber numberWithBool:pairCopy];
  v9 = [v7 initWithValue:v8];
  v10 = [v6 initWithDiff:v9 andChangeType:1];

  if (pairCopy)
  {
    v11 = +[NSDate date];
    v12 = [NRDevicePropertyDiffType alloc];
    v13 = [[NRDevicePropertyDiff alloc] initWithValue:v11];
    v14 = [v12 initWithDiff:v13 andChangeType:1];

    v15 = [NRDeviceDiff alloc];
    v22[0] = NRDevicePropertyIsPaired;
    v22[1] = NRDevicePropertyPairedDate;
    v23[0] = v10;
    v23[1] = v14;
    v16 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
    v17 = [v15 initWithDiffPropertyDiffs:v16];
  }

  else
  {
    v18 = [NRDeviceDiff alloc];
    v20 = NRDevicePropertyIsPaired;
    v21 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v17 = [v18 initWithDiffPropertyDiffs:v11];
  }

  return v17;
}

- (id)_makeIsSetupNoDeviceCollection:(id)collection diffWithPairingID:(id)d
{
  v4 = [NRDevicePropertyDiffType alloc];
  v5 = [[NRDevicePropertyDiff alloc] initWithValue:&__kCFBooleanFalse];
  v6 = [v4 initWithDiff:v5 andChangeType:1];

  v7 = [NRDeviceDiff alloc];
  v11 = NRDevicePropertyIsSetup;
  v12 = v6;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v9 = [v7 initWithDiffPropertyDiffs:v8];

  return v9;
}

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  objc_storeStrong(&self->_serviceRegistry, registry);
  registryCopy = registry;
  v8 = [entryCopy objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v9 = [entryCopy objectForKeyedSubscript:@"isPaired"];
  bOOLValue = [v9 BOOLValue];
  registry = [(EPSagaTransactionMakeDevicePaired *)self registry];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10006C3A4;
  v14[3] = &unk_100177F38;
  v15 = v8;
  selfCopy = self;
  v18 = bOOLValue;
  v17 = entryCopy;
  v12 = entryCopy;
  v13 = v8;
  [registry grabRegistryWithWriteBlockAsync:v14];
}

- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  v8 = [entryCopy objectForKeyedSubscript:@"shouldRollBack"];
  if ([v8 BOOLValue])
  {
    objc_storeStrong(&self->_serviceRegistry, registry);
    v9 = [entryCopy objectForKeyedSubscript:@"nrDeviceIdentifier"];
    delegate = [entryCopy objectForKeyedSubscript:@"isPaired"];
    bOOLValue = [delegate BOOLValue];
    registry = [(EPSagaTransactionMakeDevicePaired *)self registry];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10006C69C;
    v14[3] = &unk_100177F38;
    v15 = v9;
    selfCopy = self;
    v18 = bOOLValue;
    v17 = entryCopy;
    v13 = v9;
    [registry grabRegistryWithWriteBlockAsync:v14];
  }

  else
  {
    delegate = [(EPSagaTransactionMakeDevicePaired *)self delegate];
    [delegate transactionDidComplete:self];
  }
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
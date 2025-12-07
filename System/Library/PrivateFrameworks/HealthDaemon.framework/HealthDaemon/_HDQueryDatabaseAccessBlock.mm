@interface _HDQueryDatabaseAccessBlock
- (id)description;
@end

@implementation _HDQueryDatabaseAccessBlock

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  WeakRetained = objc_loadWeakRetained(&self->_queryServer);
  queryUUID = [WeakRetained queryUUID];
  v8 = HKStringFromQoS();
  processBundleIdentifier = self->_processBundleIdentifier;
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_creationTime];
  v11 = HKDiagnosticStringFromDate();
  v12 = [v3 stringWithFormat:@"<%@ query:%@ QoS:%@ process:%@ timestamp:%@>", v5, queryUUID, v8, processBundleIdentifier, v11, 0];

  return v12;
}

@end
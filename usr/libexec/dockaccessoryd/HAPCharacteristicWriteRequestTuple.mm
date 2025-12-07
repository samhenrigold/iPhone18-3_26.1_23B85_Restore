@interface HAPCharacteristicWriteRequestTuple
+ (id)writeRequestTupleForCharacteristic:(id)characteristic value:(id)value authorizationData:(id)data timedWrite:(BOOL)write responseValue:(BOOL)responseValue type:(unint64_t)type contextData:(id)contextData;
@end

@implementation HAPCharacteristicWriteRequestTuple

+ (id)writeRequestTupleForCharacteristic:(id)characteristic value:(id)value authorizationData:(id)data timedWrite:(BOOL)write responseValue:(BOOL)responseValue type:(unint64_t)type contextData:(id)contextData
{
  responseValueCopy = responseValue;
  writeCopy = write;
  characteristicCopy = characteristic;
  valueCopy = value;
  dataCopy = data;
  contextDataCopy = contextData;
  v18 = objc_alloc_init(HAPCharacteristicWriteRequestTuple);
  v19 = v18;
  if (v18)
  {
    [(HAPCharacteristicWriteRequestTuple *)v18 setCharacteristic:characteristicCopy];
    [(HAPCharacteristicWriteRequestTuple *)v19 setValue:valueCopy];
    [(HAPCharacteristicWriteRequestTuple *)v19 setAuthorizationData:dataCopy];
    [(HAPCharacteristicWriteRequestTuple *)v19 setTimedWrite:writeCopy];
    [(HAPCharacteristicWriteRequestTuple *)v19 setIncludeResponseValue:responseValueCopy];
    [(HAPCharacteristicWriteRequestTuple *)v19 setWriteType:type];
    [(HAPCharacteristicWriteRequestTuple *)v19 setContextData:contextDataCopy];
  }

  return v19;
}

@end
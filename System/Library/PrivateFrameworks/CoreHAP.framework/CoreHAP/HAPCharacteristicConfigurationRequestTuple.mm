@interface HAPCharacteristicConfigurationRequestTuple
+ (id)configurationTupleForCharacteristic:(id)characteristic broadcastEnable:(BOOL)enable broadcastInterval:(unint64_t)interval;
@end

@implementation HAPCharacteristicConfigurationRequestTuple

+ (id)configurationTupleForCharacteristic:(id)characteristic broadcastEnable:(BOOL)enable broadcastInterval:(unint64_t)interval
{
  enableCopy = enable;
  characteristicCopy = characteristic;
  v8 = objc_alloc_init(HAPCharacteristicConfigurationRequestTuple);
  v9 = v8;
  if (v8)
  {
    [(HAPCharacteristicConfigurationRequestTuple *)v8 setCharacteristic:characteristicCopy];
    [(HAPCharacteristicConfigurationRequestTuple *)v9 setBroadcastEnable:enableCopy];
    [(HAPCharacteristicConfigurationRequestTuple *)v9 setBroadcastInterval:interval];
  }

  return v9;
}

@end
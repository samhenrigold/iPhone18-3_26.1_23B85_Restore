@interface ULWiFiMeasurementMO
+ (id)createFromDO:(const void *)o withScanningEventMO:(id)mO inManagedObjectContext:(id)context;
- (optional<ULWiFiMeasurementDO>)convertToDO;
@end

@implementation ULWiFiMeasurementMO

+ (id)createFromDO:(const void *)o withScanningEventMO:(id)mO inManagedObjectContext:(id)context
{
  mOCopy = mO;
  contextCopy = context;
  v9 = [[ULWiFiMeasurementMO alloc] initWithContext:contextCopy];
  [(ULWiFiMeasurementMO *)v9 setScanningEvent:mOCopy];
  [(ULWiFiMeasurementMO *)v9 setChannel:*(o + 12)];
  [(ULWiFiMeasurementMO *)v9 setFlags:*(o + 7)];
  [(ULWiFiMeasurementMO *)v9 setRssi:*(o + 2)];
  [(ULWiFiMeasurementMO *)v9 setSourceBSSID:CLMacAddress::toUint64(o + 2)];
  [(ULWiFiMeasurementMO *)v9 setTimestamp:*o];
  [(ULWiFiMeasurementMO *)v9 setBand:*(o + 26)];

  return v9;
}

- (optional<ULWiFiMeasurementDO>)convertToDO
{
  v3 = v1;
  [(ULWiFiMeasurementMO *)self timestamp];
  v12 = v4;
  ULHomeSlamModel::getTrajectoryPointCloud([(ULWiFiMeasurementMO *)self sourceBSSID]);
  v11 = v5;
  rssi = [(ULWiFiMeasurementMO *)self rssi];
  channel = [(ULWiFiMeasurementMO *)self channel];
  band = [(ULWiFiMeasurementMO *)self band];
  ULWiFiMeasurementDO::ULWiFiMeasurementDO(v10, &v12, rssi, &v11, channel, &band, [(ULWiFiMeasurementMO *)self flags]);
  v8 = ULWiFiMeasurementDO::ULWiFiMeasurementDO(v3, v10);
  *(v3 + 32) = 1;
  return v8;
}

@end
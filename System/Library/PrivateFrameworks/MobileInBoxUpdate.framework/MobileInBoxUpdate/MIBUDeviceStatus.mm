@interface MIBUDeviceStatus
- (BOOL)isEqual:(id)equal;
- (MIBUDeviceStatus)init;
@end

@implementation MIBUDeviceStatus

- (MIBUDeviceStatus)init
{
  v5.receiver = self;
  v5.super_class = MIBUDeviceStatus;
  v2 = [(MIBUDeviceStatus *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUDeviceStatus *)v2 setState:0];
    [(MIBUDeviceStatus *)v3 setOperation:0];
    [(MIBUDeviceStatus *)v3 setOperationDetails:0];
    [(MIBUDeviceStatus *)v3 setOperationError:0];
    [(MIBUDeviceStatus *)v3 setBatteryLevel:0];
    [(MIBUDeviceStatus *)v3 setThermalDetails:0];
    [(MIBUDeviceStatus *)v3 setBatteryDetails:0];
    [(MIBUDeviceStatus *)v3 setUpdateSummary:0];
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [equalCopy state], v5 == -[MIBUDeviceStatus state](self, "state")) && (v6 = objc_msgSend(equalCopy, "operation"), v6 == -[MIBUDeviceStatus operation](self, "operation")) && (objc_msgSend(equalCopy, "operationError"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "domain"), v8 = objc_claimAutoreleasedReturnValue(), -[MIBUDeviceStatus operationError](self, "operationError"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "domain"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "isEqualToString:", v10), v10, v9, v8, v7, v11) && (objc_msgSend(equalCopy, "operationError"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "code"), -[MIBUDeviceStatus operationError](self, "operationError"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "code"), v14, v12, v13 == v15) && (objc_msgSend(equalCopy, "batteryLevel"), v16 = objc_claimAutoreleasedReturnValue(), -[MIBUDeviceStatus batteryLevel](self, "batteryLevel"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqualToNumber:", v17), v17, v16, v18) && (objc_msgSend(equalCopy, "operationDetails"), v19 = objc_claimAutoreleasedReturnValue(), -[MIBUDeviceStatus operationDetails](self, "operationDetails"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "isEqualToDictionary:", v20), v20, v19, v21) && (objc_msgSend(equalCopy, "thermalDetails"), v22 = objc_claimAutoreleasedReturnValue(), -[MIBUDeviceStatus thermalDetails](self, "thermalDetails"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v22, "isEqualToDictionary:", v23), v23, v22, v24) && (objc_msgSend(equalCopy, "batteryDetails"), v25 = objc_claimAutoreleasedReturnValue(), -[MIBUDeviceStatus batteryDetails](self, "batteryDetails"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v25, "isEqualToDictionary:", v26), v26, v25, v27))
  {
    updateSummary = [equalCopy updateSummary];
    updateSummary2 = [(MIBUDeviceStatus *)self updateSummary];
    v30 = [updateSummary isEqualToDictionary:updateSummary2];
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

@end
@interface CROutstandingVehiclePairingAlert
- (id)alertDeclineButtonTitle;
- (id)alertMessage;
- (id)alertTitle;
@end

@implementation CROutstandingVehiclePairingAlert

- (id)alertTitle
{
  messagingVehicle = [(CRMessagingVehicleAlert *)self messagingVehicle];
  vehicleName = [messagingVehicle vehicleName];

  CRLocalizedStringForKey();
  if (vehicleName)
    v4 = {;
    v5 = [NSString stringWithFormat:v4, vehicleName];
  }

  else
    v5 = {;
  }

  return v5;
}

- (id)alertMessage
{
  [(CROutstandingVehiclePairingAlert *)self shouldEnableBluetooth];

  return CRLocalizedStringForKey();
}

- (id)alertDeclineButtonTitle
{
  if ([(CROutstandingVehiclePairingAlert *)self declineType]> 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = CRLocalizedStringForKey();
  }

  return v2;
}

@end
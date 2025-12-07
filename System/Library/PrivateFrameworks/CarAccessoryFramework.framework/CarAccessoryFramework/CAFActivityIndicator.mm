@interface CAFActivityIndicator
+ (void)load;
- (BOOL)cameraActive;
- (BOOL)hasCameraActive;
- (BOOL)hasMicrophoneActive;
- (BOOL)microphoneActive;
- (BOOL)registeredForCameraActive;
- (BOOL)registeredForMicrophoneActive;
- (CAFBoolCharacteristic)cameraActiveCharacteristic;
- (CAFBoolCharacteristic)microphoneActiveCharacteristic;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFActivityIndicator

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFActivityIndicator;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_28468B230])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFActivityIndicator;
  [(CAFService *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_28468B230])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFActivityIndicator;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFBoolCharacteristic)cameraActiveCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036100004"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036100004"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)cameraActive
{
  cameraActiveCharacteristic = [(CAFActivityIndicator *)self cameraActiveCharacteristic];
  bOOLValue = [cameraActiveCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasCameraActive
{
  cameraActiveCharacteristic = [(CAFActivityIndicator *)self cameraActiveCharacteristic];
  v3 = cameraActiveCharacteristic != 0;

  return v3;
}

- (CAFBoolCharacteristic)microphoneActiveCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036100005"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036100005"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)microphoneActive
{
  microphoneActiveCharacteristic = [(CAFActivityIndicator *)self microphoneActiveCharacteristic];
  bOOLValue = [microphoneActiveCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasMicrophoneActive
{
  microphoneActiveCharacteristic = [(CAFActivityIndicator *)self microphoneActiveCharacteristic];
  v3 = microphoneActiveCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000036100004"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    cameraActiveCharacteristic = [(CAFActivityIndicator *)self cameraActiveCharacteristic];
    uniqueIdentifier2 = [cameraActiveCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers activityIndicatorService:self didUpdateCameraActive:{-[CAFActivityIndicator cameraActive](self, "cameraActive")}];
LABEL_8:

      goto LABEL_9;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000036100005"])
  {
    goto LABEL_8;
  }

  uniqueIdentifier3 = [updateCopy uniqueIdentifier];
  microphoneActiveCharacteristic = [(CAFActivityIndicator *)self microphoneActiveCharacteristic];
  uniqueIdentifier4 = [microphoneActiveCharacteristic uniqueIdentifier];
  v16 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

  if (v16)
  {
    observers = [(CAFService *)self observers];
    [observers activityIndicatorService:self didUpdateMicrophoneActive:{-[CAFActivityIndicator microphoneActive](self, "microphoneActive")}];
    goto LABEL_8;
  }

LABEL_9:
  v17.receiver = self;
  v17.super_class = CAFActivityIndicator;
  [(CAFService *)&v17 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForCameraActive
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036100004"];

  return v10;
}

- (BOOL)registeredForMicrophoneActive
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036100005"];

  return v10;
}

@end
@interface CAFCurrentUserStatus
+ (void)load;
- (BOOL)hasContentURLAction;
- (BOOL)hasHidden;
- (BOOL)hasImage;
- (BOOL)hasUserVisibleLabel;
- (BOOL)hidden;
- (BOOL)registeredForContentURLAction;
- (BOOL)registeredForHidden;
- (BOOL)registeredForImage;
- (BOOL)registeredForUserVisibleLabel;
- (CAFBoolCharacteristic)hiddenCharacteristic;
- (CAFDataCharacteristic)imageCharacteristic;
- (CAFStringCharacteristic)contentURLActionCharacteristic;
- (CAFStringCharacteristic)userVisibleLabelCharacteristic;
- (NSData)image;
- (NSString)contentURLAction;
- (NSString)userVisibleLabel;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFCurrentUserStatus

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFCurrentUserStatus;
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
  v6.super_class = CAFCurrentUserStatus;
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
  v6.super_class = CAFCurrentUserStatus;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFDataCharacteristic)imageCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000068"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000068"];
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

- (NSData)image
{
  imageCharacteristic = [(CAFCurrentUserStatus *)self imageCharacteristic];
  dataValue = [imageCharacteristic dataValue];

  return dataValue;
}

- (BOOL)hasImage
{
  imageCharacteristic = [(CAFCurrentUserStatus *)self imageCharacteristic];
  v3 = imageCharacteristic != 0;

  return v3;
}

- (CAFStringCharacteristic)userVisibleLabelCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000001"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000001"];
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

- (NSString)userVisibleLabel
{
  userVisibleLabelCharacteristic = [(CAFCurrentUserStatus *)self userVisibleLabelCharacteristic];
  stringValue = [userVisibleLabelCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasUserVisibleLabel
{
  userVisibleLabelCharacteristic = [(CAFCurrentUserStatus *)self userVisibleLabelCharacteristic];
  v3 = userVisibleLabelCharacteristic != 0;

  return v3;
}

- (CAFStringCharacteristic)contentURLActionCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000066"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000066"];
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

- (NSString)contentURLAction
{
  contentURLActionCharacteristic = [(CAFCurrentUserStatus *)self contentURLActionCharacteristic];
  stringValue = [contentURLActionCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasContentURLAction
{
  contentURLActionCharacteristic = [(CAFCurrentUserStatus *)self contentURLActionCharacteristic];
  v3 = contentURLActionCharacteristic != 0;

  return v3;
}

- (CAFBoolCharacteristic)hiddenCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000023"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000023"];
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

- (BOOL)hidden
{
  hiddenCharacteristic = [(CAFCurrentUserStatus *)self hiddenCharacteristic];
  bOOLValue = [hiddenCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasHidden
{
  hiddenCharacteristic = [(CAFCurrentUserStatus *)self hiddenCharacteristic];
  v3 = hiddenCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000036000068"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    imageCharacteristic = [(CAFCurrentUserStatus *)self imageCharacteristic];
    uniqueIdentifier2 = [imageCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      image = [(CAFCurrentUserStatus *)self image];
      [observers currentUserStatusService:self didUpdateImage:image];
LABEL_12:

LABEL_17:
      goto LABEL_18;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000030000001"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    userVisibleLabelCharacteristic = [(CAFCurrentUserStatus *)self userVisibleLabelCharacteristic];
    uniqueIdentifier4 = [userVisibleLabelCharacteristic uniqueIdentifier];
    v18 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v18)
    {
      observers = [(CAFService *)self observers];
      image = [(CAFCurrentUserStatus *)self userVisibleLabel];
      [observers currentUserStatusService:self didUpdateUserVisibleLabel:image];
      goto LABEL_12;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x0000000036000066"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    contentURLActionCharacteristic = [(CAFCurrentUserStatus *)self contentURLActionCharacteristic];
    uniqueIdentifier6 = [contentURLActionCharacteristic uniqueIdentifier];
    v23 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v23)
    {
      observers = [(CAFService *)self observers];
      image = [(CAFCurrentUserStatus *)self contentURLAction];
      [observers currentUserStatusService:self didUpdateContentURLAction:image];
      goto LABEL_12;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000036000023"])
  {
    goto LABEL_17;
  }

  uniqueIdentifier7 = [updateCopy uniqueIdentifier];
  hiddenCharacteristic = [(CAFCurrentUserStatus *)self hiddenCharacteristic];
  uniqueIdentifier8 = [hiddenCharacteristic uniqueIdentifier];
  v27 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

  if (v27)
  {
    observers = [(CAFService *)self observers];
    [observers currentUserStatusService:self didUpdateHidden:{-[CAFCurrentUserStatus hidden](self, "hidden")}];
    goto LABEL_17;
  }

LABEL_18:
  v28.receiver = self;
  v28.super_class = CAFCurrentUserStatus;
  [(CAFService *)&v28 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForImage
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000068"];

  return v10;
}

- (BOOL)registeredForUserVisibleLabel
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000001"];

  return v10;
}

- (BOOL)registeredForContentURLAction
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000066"];

  return v10;
}

- (BOOL)registeredForHidden
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000023"];

  return v10;
}

@end
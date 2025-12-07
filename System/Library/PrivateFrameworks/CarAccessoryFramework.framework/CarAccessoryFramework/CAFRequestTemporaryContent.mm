@interface CAFRequestTemporaryContent
+ (void)load;
- (BOOL)on;
- (BOOL)registeredForDisplayPanelIdentifier;
- (BOOL)registeredForDisplayZoneIdentifier;
- (BOOL)registeredForOn;
- (BOOL)registeredForTemporaryContentURL;
- (CAFBoolCharacteristic)onCharacteristic;
- (CAFStringCharacteristic)displayPanelIdentifierCharacteristic;
- (CAFStringCharacteristic)displayZoneIdentifierCharacteristic;
- (CAFStringCharacteristic)temporaryContentURLCharacteristic;
- (NSString)displayPanelIdentifier;
- (NSString)displayZoneIdentifier;
- (NSString)temporaryContentURL;
- (id)name;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setOn:(BOOL)on;
- (void)setTemporaryContentURL:(id)l;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFRequestTemporaryContent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFRequestTemporaryContent;
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
  v6.super_class = CAFRequestTemporaryContent;
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
  v6.super_class = CAFRequestTemporaryContent;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  displayPanelIdentifierCharacteristic = [(CAFRequestTemporaryContent *)self displayPanelIdentifierCharacteristic];
  formattedValue = [displayPanelIdentifierCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  displayZoneIdentifierCharacteristic = [(CAFRequestTemporaryContent *)self displayZoneIdentifierCharacteristic];
  formattedValue2 = [displayZoneIdentifierCharacteristic formattedValue];

  if ([formattedValue2 length])
  {
    v9 = [typeName stringByAppendingFormat:@"-%@", formattedValue2];

    typeName = v9;
  }

  return typeName;
}

- (CAFBoolCharacteristic)onCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000002"];
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

- (BOOL)on
{
  onCharacteristic = [(CAFRequestTemporaryContent *)self onCharacteristic];
  bOOLValue = [onCharacteristic BOOLValue];

  return bOOLValue;
}

- (void)setOn:(BOOL)on
{
  onCopy = on;
  onCharacteristic = [(CAFRequestTemporaryContent *)self onCharacteristic];
  [onCharacteristic setBoolValue:onCopy];
}

- (CAFStringCharacteristic)temporaryContentURLCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000069"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000069"];
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

- (NSString)temporaryContentURL
{
  temporaryContentURLCharacteristic = [(CAFRequestTemporaryContent *)self temporaryContentURLCharacteristic];
  stringValue = [temporaryContentURLCharacteristic stringValue];

  return stringValue;
}

- (void)setTemporaryContentURL:(id)l
{
  lCopy = l;
  temporaryContentURLCharacteristic = [(CAFRequestTemporaryContent *)self temporaryContentURLCharacteristic];
  [temporaryContentURLCharacteristic setStringValue:lCopy];
}

- (CAFStringCharacteristic)displayPanelIdentifierCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000037000007"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000037000007"];
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

- (NSString)displayPanelIdentifier
{
  displayPanelIdentifierCharacteristic = [(CAFRequestTemporaryContent *)self displayPanelIdentifierCharacteristic];
  stringValue = [displayPanelIdentifierCharacteristic stringValue];

  return stringValue;
}

- (CAFStringCharacteristic)displayZoneIdentifierCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003700000B"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003700000B"];
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

- (NSString)displayZoneIdentifier
{
  displayZoneIdentifierCharacteristic = [(CAFRequestTemporaryContent *)self displayZoneIdentifierCharacteristic];
  stringValue = [displayZoneIdentifierCharacteristic stringValue];

  return stringValue;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000030000002"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    onCharacteristic = [(CAFRequestTemporaryContent *)self onCharacteristic];
    uniqueIdentifier2 = [onCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers requestTemporaryContentService:self didUpdateOn:{-[CAFRequestTemporaryContent on](self, "on")}];
LABEL_18:

      goto LABEL_19;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000036000069"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    temporaryContentURLCharacteristic = [(CAFRequestTemporaryContent *)self temporaryContentURLCharacteristic];
    uniqueIdentifier4 = [temporaryContentURLCharacteristic uniqueIdentifier];
    v17 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v17)
    {
      observers = [(CAFService *)self observers];
      temporaryContentURL = [(CAFRequestTemporaryContent *)self temporaryContentURL];
      [observers requestTemporaryContentService:self didUpdateTemporaryContentURL:temporaryContentURL];
LABEL_17:

      goto LABEL_18;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x0000000037000007"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    displayPanelIdentifierCharacteristic = [(CAFRequestTemporaryContent *)self displayPanelIdentifierCharacteristic];
    uniqueIdentifier6 = [displayPanelIdentifierCharacteristic uniqueIdentifier];
    v23 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v23)
    {
      observers2 = [(CAFService *)self observers];
      displayPanelIdentifier = [(CAFRequestTemporaryContent *)self displayPanelIdentifier];
      [observers2 requestTemporaryContentService:self didUpdateDisplayPanelIdentifier:displayPanelIdentifier];
LABEL_16:

      observers = [(CAFService *)self observers];
      temporaryContentURL = [(CAFRequestTemporaryContent *)self name];
      [observers requestTemporaryContentService:self didUpdateName:temporaryContentURL];
      goto LABEL_17;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x000000003700000B"])
  {
    goto LABEL_18;
  }

  uniqueIdentifier7 = [updateCopy uniqueIdentifier];
  displayZoneIdentifierCharacteristic = [(CAFRequestTemporaryContent *)self displayZoneIdentifierCharacteristic];
  uniqueIdentifier8 = [displayZoneIdentifierCharacteristic uniqueIdentifier];
  v29 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

  if (v29)
  {
    observers2 = [(CAFService *)self observers];
    displayPanelIdentifier = [(CAFRequestTemporaryContent *)self displayZoneIdentifier];
    [observers2 requestTemporaryContentService:self didUpdateDisplayZoneIdentifier:displayPanelIdentifier];
    goto LABEL_16;
  }

LABEL_19:
  v30.receiver = self;
  v30.super_class = CAFRequestTemporaryContent;
  [(CAFService *)&v30 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForOn
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000002"];

  return v10;
}

- (BOOL)registeredForTemporaryContentURL
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000069"];

  return v10;
}

- (BOOL)registeredForDisplayPanelIdentifier
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000037000007"];

  return v10;
}

- (BOOL)registeredForDisplayZoneIdentifier
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003700000B"];

  return v10;
}

@end
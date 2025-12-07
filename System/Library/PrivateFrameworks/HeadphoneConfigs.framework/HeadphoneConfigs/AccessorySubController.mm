@interface AccessorySubController
- (AccessorySubController)init;
- (id)specifiers;
- (void)dealloc;
- (void)listItemSelected:(id)selected;
- (void)specifiers;
@end

@implementation AccessorySubController

- (AccessorySubController)init
{
  v3.receiver = self;
  v3.super_class = AccessorySubController;
  result = [(AccessorySubController *)&v3 init];
  if (result)
  {
    *(&result->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC28]) = 0;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AccessorySubController;
  [(PSListItemsController *)&v2 dealloc];
}

- (id)specifiers
{
  v3 = MEMORY[0x277CBEB18];
  v38.receiver = self;
  v38.super_class = AccessorySubController;
  specifiers = [(PSListItemsController *)&v38 specifiers];
  v5 = [v3 arrayWithArray:specifiers];

  v6 = *MEMORY[0x277D3FD20];
  userInfo = [*(&self->super.super.super.super.super.super.isa + v6) userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"bt-device"];
  currentDevice = self->_currentDevice;
  self->_currentDevice = v8;

  v10 = objc_opt_respondsToSelector();
  if (v10)
  {
    classicDevice = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(AccessorySubController *)&self->_currentDevice specifiers];
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      [AccessorySubController specifiers];
    }

    classicDevice = self->_currentDevice;
  }

  v13 = classicDevice;
  v14 = MEMORY[0x277D3FAD8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:&stru_286339F58 value:&stru_286339F58 table:@"DeviceConfig"];
  v17 = [v14 preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:0 edit:0];

  v37 = 0;
  [(BluetoothDeviceProtocol *)v13 clickHoldMode:&v37 + 4 rightAction:&v37];
  identifier = [*(&self->super.super.super.super.super.super.isa + v6) identifier];
  LODWORD(v16) = [identifier isEqualToString:@"LEFT_ID"];

  v19 = MEMORY[0x277D3FF88];
  if (v16)
  {
    if (HIDWORD(v37) == 7)
    {
      [(BluetoothDeviceProtocol *)v13 setClickHoldMode:7 rightMode:6];
      v20 = @"FOOTER_VOLUME_UP_RIGHT_BUD";
    }

    else
    {
      if (HIDWORD(v37) != 6)
      {
        goto LABEL_18;
      }

      [(BluetoothDeviceProtocol *)v13 setClickHoldMode:6 rightMode:7];
      v20 = @"FOOTER_VOLUME_DOWN_RIGHT_BUD";
    }
  }

  else
  {
    identifier2 = [*(&self->super.super.super.super.super.super.isa + v6) identifier];
    v22 = [identifier2 isEqualToString:@"RIGHT_ID"];

    if (!v22)
    {
      goto LABEL_18;
    }

    if (v37 == 7)
    {
      [(BluetoothDeviceProtocol *)v13 setClickHoldMode:6 rightMode:7];
      v20 = @"FOOTER_VOLUME_UP_LEFT_BUD";
    }

    else
    {
      if (v37 != 6)
      {
        goto LABEL_18;
      }

      [(BluetoothDeviceProtocol *)v13 setClickHoldMode:7 rightMode:6];
      v20 = @"FOOTER_VOLUME_DOWN_LEFT_BUD";
    }
  }

  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:v20 value:&stru_286339F58 table:@"DeviceConfig-B494"];
  [v17 setProperty:v24 forKey:*v19];

LABEL_18:
  identifier3 = [*(&self->super.super.super.super.super.super.isa + v6) identifier];
  v26 = [identifier3 isEqualToString:@"LEFT_ID"];

  if (v26)
  {
    if (HIDWORD(v37) == 7)
    {
      [(BluetoothDeviceProtocol *)v13 setClickHoldMode:7 rightMode:6];
      v27 = @"FOOTER_VOLUME_UP_RIGHT_BUD";
    }

    else
    {
      if (HIDWORD(v37) != 6)
      {
        goto LABEL_29;
      }

      [(BluetoothDeviceProtocol *)v13 setClickHoldMode:6 rightMode:7];
      v27 = @"FOOTER_VOLUME_DOWN_RIGHT_BUD";
    }
  }

  else
  {
    identifier4 = [*(&self->super.super.super.super.super.super.isa + v6) identifier];
    v29 = [identifier4 isEqualToString:@"RIGHT_ID"];

    if (!v29)
    {
      goto LABEL_29;
    }

    if (v37 == 7)
    {
      [(BluetoothDeviceProtocol *)v13 setClickHoldMode:6 rightMode:7];
      v27 = @"FOOTER_VOLUME_UP_LEFT_BUD";
    }

    else
    {
      if (v37 != 6)
      {
        goto LABEL_29;
      }

      [(BluetoothDeviceProtocol *)v13 setClickHoldMode:7 rightMode:6];
      v27 = @"FOOTER_VOLUME_DOWN_LEFT_BUD";
    }
  }

  v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v31 = [v30 localizedStringForKey:v27 value:&stru_286339F58 table:@"DeviceConfig-B494b"];
  [v17 setProperty:v31 forKey:*v19];

LABEL_29:
  [v5 addObject:v17];
  v32 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
  v33 = *MEMORY[0x277D3FC48];
  v34 = *(&self->super.super.super.super.super.super.isa + v33);
  *(&self->super.super.super.super.super.super.isa + v33) = v32;

  v35 = *(&self->super.super.super.super.super.super.isa + v33);

  return v35;
}

- (void)listItemSelected:(id)selected
{
  selectedCopy = selected;
  if (![selectedCopy section])
  {
    v5.receiver = self;
    v5.super_class = AccessorySubController;
    [(PSListItemsController *)&v5 listItemSelected:selectedCopy];
    [(AccessorySubController *)self reloadSpecifiers];
  }
}

- (void)specifiers
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_251143000, a2, OS_LOG_TYPE_ERROR, " AccessorySubController does not respond to classicDevice, currentDevice is %@", &v5, 0xCu);
}

@end
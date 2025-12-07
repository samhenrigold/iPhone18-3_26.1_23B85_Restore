@interface UIDevice(DOCDeviceSymbol)
- (__CFString)doc_symbolName;
- (void)doc_symbolName;
@end

@implementation UIDevice(DOCDeviceSymbol)

- (__CFString)doc_symbolName
{
  _typeOfCurrentDevice = [MEMORY[0x1E6982C38] _typeOfCurrentDevice];
  identifier = [_typeOfCurrentDevice identifier];
  v20 = 0;
  v2 = [MEMORY[0x1E69A8A40] symbolForTypeIdentifier:identifier error:&v20];
  v3 = v20;
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v6 = MEMORY[0x1E699A450];
    v7 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(UIDevice(DOCDeviceSymbol) *)identifier doc_symbolName];
    }
  }

  name = [v2 name];

  if (!name)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    model = [currentDevice model];

    HasHomeButton = DOCDeviceHasHomeButton(v11, v12);
    if (([model isEqualToString:@"iPhone"] & 1) != 0 || objc_msgSend(model, "isEqualToString:", @"iPod touch"))
    {
      v14 = @"iphone.homebutton";
      if (!HasHomeButton)
      {
        v14 = @"iphone";
      }
    }

    else
    {
      if (![model isEqualToString:@"iPad"])
      {
        if ([model isEqualToString:@"Apple Vision"])
        {
          v15 = @"visionpro";
        }

        else
        {
          v18 = MEMORY[0x1E699A450];
          v19 = *MEMORY[0x1E699A450];
          if (!*MEMORY[0x1E699A450])
          {
            DOCInitLogging();
            v19 = *v18;
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [(UIDevice(DOCDeviceSymbol) *)model doc_symbolName];
          }

          v15 = 0;
        }

        goto LABEL_15;
      }

      v14 = @"ipad";
      if (HasHomeButton)
      {
        v14 = @"ipad.homebutton";
      }
    }

    v15 = v14;
LABEL_15:
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = @"iphone";
    }

    name = v16;
  }

  return name;
}

- (void)doc_symbolName
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1E57D8000, a2, OS_LOG_TYPE_ERROR, "Unexpected device model: %@. Unable to return symbol name", &v2, 0xCu);
}

@end
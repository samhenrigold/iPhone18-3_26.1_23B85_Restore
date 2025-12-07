@interface KSHardwareKeyboardKeyboardTypeRemapController
- (id)keyboardTypeSectionSpecifiers;
- (id)keyboardsSectionSpecifiers;
- (id)newSpecifiers;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)dealloc;
- (void)loadKeyboards;
- (void)reloadSpecifiersWithAnimation;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation KSHardwareKeyboardKeyboardTypeRemapController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    newSpecifiers = [(KSHardwareKeyboardKeyboardTypeRemapController *)self newSpecifiers];
    v6 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = newSpecifiers;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)dealloc
{
  eventSystemClient = self->_eventSystemClient;
  if (eventSystemClient)
  {
    CFRelease(eventSystemClient);
  }

  v4.receiver = self;
  v4.super_class = KSHardwareKeyboardKeyboardTypeRemapController;
  [(KSHardwareKeyboardKeyboardTypeRemapController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = KSHardwareKeyboardKeyboardTypeRemapController;
  [(KSHardwareKeyboardKeyboardTypeRemapController *)&v2 viewDidLoad];
}

- (void)reloadSpecifiersWithAnimation
{
  specifiers = [(KSHardwareKeyboardKeyboardTypeRemapController *)self specifiers];
  newSpecifiers = [(KSHardwareKeyboardKeyboardTypeRemapController *)self newSpecifiers];
  -[KSHardwareKeyboardKeyboardTypeRemapController updateSpecifiersInRange:withSpecifiers:](self, "updateSpecifiersInRange:withSpecifiers:", 0, [specifiers count], newSpecifiers);
}

- (void)loadKeyboards
{
  v66[2] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  selfCopy2 = self;
  if (!self->_eventSystemClient)
  {
    v3 = IOHIDEventSystemClientCreateWithType();
    self->_eventSystemClient = v3;
    if (v3)
    {
      CFRunLoopGetCurrent();
      IOHIDEventSystemClientScheduleWithRunLoop();
      v65[0] = @"DeviceUsagePage";
      v65[1] = @"DeviceUsage";
      v66[0] = &unk_2867A4E18;
      v66[1] = &unk_2867A4E30;
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
      IOHIDEventSystemClientSetMatching();
      v56 = MEMORY[0x277D85DD0];
      v57 = 3221225472;
      v58 = __62__KSHardwareKeyboardKeyboardTypeRemapController_loadKeyboards__block_invoke;
      v59 = &unk_2797F9EF0;
      objc_copyWeak(&v60, &location);
      IOHIDEventSystemClientRegisterDeviceMatchingBlock();
      objc_destroyWeak(&v60);

      selfCopy2 = self;
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  v5 = IOHIDEventSystemClientCopyServices(selfCopy2->_eventSystemClient);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v5;
  v34 = [(__CFArray *)obj countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v34)
  {
    v33 = *v53;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v53 != v33)
        {
          objc_enumerationMutation(obj);
        }

        service = *(*(&v52 + 1) + 8 * i);
        v37 = IOHIDServiceClientCopyProperty(service, @"DeviceUsagePairs");
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v6 = v37;
          v7 = [v6 countByEnumeratingWithState:&v48 objects:v63 count:16];
          if (v7)
          {
            v8 = *v49;
            while (2)
            {
              for (j = 0; j != v7; ++j)
              {
                if (*v49 != v8)
                {
                  objc_enumerationMutation(v6);
                }

                v10 = *(*(&v48 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v11 = [v10 objectForKey:@"DeviceUsagePage"];
                  v12 = [v10 objectForKey:@"DeviceUsage"];
                  if ([v11 isEqual:&unk_2867A4E18] && objc_msgSend(v12, "isEqual:", &unk_2867A4E30))
                  {
                    v13 = IOHIDServiceClientGetRegistryID(service);
                    [v13 unsignedLongLongValue];
                    if ((BKSHIDKeyboardWantsStandardTypeOverride() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"KeyboardTypeCustomization", @"com.apple.keyboard.preferences", 0))
                    {
                      [(NSMutableArray *)array addObject:service];
                    }

                    v43 = MEMORY[0x277D85DD0];
                    v44 = 3221225472;
                    v45 = __62__KSHardwareKeyboardKeyboardTypeRemapController_loadKeyboards__block_invoke_3;
                    v46 = &unk_2797F9EF0;
                    objc_copyWeak(&v47, &location);
                    IOHIDServiceClientRegisterRemovalBlock();
                    objc_destroyWeak(&v47);

                    goto LABEL_26;
                  }
                }
              }

              v7 = [v6 countByEnumeratingWithState:&v48 objects:v63 count:16];
              if (v7)
              {
                continue;
              }

              break;
            }
          }

LABEL_26:
        }
      }

      v34 = [(__CFArray *)obj countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v34);
  }

  selfCopy5 = self;
  if ([(NSMutableArray *)array count])
  {
    if (!self->_currentKeyboard || ([(NSMutableArray *)array containsObject:?]& 1) == 0)
    {
      v38 = BKSHIDKeyboardGetDeviceProperties();
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v15 = array;
      v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v39 objects:v62 count:16];
      if (v16)
      {
        v17 = *v40;
        while (2)
        {
          for (k = 0; k != v16; ++k)
          {
            if (*v40 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v39 + 1) + 8 * k);
            v20 = IOHIDServiceClientCopyProperty(v19, @"StandardType");
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              standardType = [v38 standardType];
              if (standardType == [v20 intValue])
              {
                self->_currentKeyboard = v19;

                goto LABEL_46;
              }
            }
          }

          v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v39 objects:v62 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

LABEL_46:

      if (self->_currentKeyboard)
      {
        goto LABEL_49;
      }

      firstObject = [(NSMutableArray *)v15 firstObject];
      self->_currentKeyboard = firstObject;
LABEL_48:

LABEL_49:
      selfCopy5 = self;
    }
  }

  else
  {
    self->_currentKeyboard = 0;
    navigationController = [(KSHardwareKeyboardKeyboardTypeRemapController *)self navigationController];
    viewControllers = [navigationController viewControllers];
    v24 = [viewControllers indexOfObject:self];

    selfCopy5 = self;
    if (v24 && v24 != 0x7FFFFFFFFFFFFFFFLL)
    {
      navigationController2 = [(KSHardwareKeyboardKeyboardTypeRemapController *)self navigationController];
      viewControllers2 = [navigationController2 viewControllers];
      v38 = [viewControllers2 objectAtIndex:v24 - 1];

      firstObject = [(KSHardwareKeyboardKeyboardTypeRemapController *)self navigationController];
      v28 = [(__IOHIDServiceClient *)firstObject popToViewController:v38 animated:1];
      goto LABEL_48;
    }
  }

  keyboards = selfCopy5->_keyboards;
  selfCopy5->_keyboards = array;

  objc_destroyWeak(&location);
}

void __62__KSHardwareKeyboardKeyboardTypeRemapController_loadKeyboards__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__KSHardwareKeyboardKeyboardTypeRemapController_loadKeyboards__block_invoke_2;
    block[3] = &unk_2797F9EC8;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __62__KSHardwareKeyboardKeyboardTypeRemapController_loadKeyboards__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__KSHardwareKeyboardKeyboardTypeRemapController_loadKeyboards__block_invoke_4;
    block[3] = &unk_2797F9EC8;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (id)newSpecifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  keyboards = self->_keyboards;
  if (!keyboards)
  {
    [(KSHardwareKeyboardKeyboardTypeRemapController *)self loadKeyboards];
    keyboards = self->_keyboards;
  }

  if ([(NSMutableArray *)keyboards count])
  {
    keyboardsSectionSpecifiers = [(KSHardwareKeyboardKeyboardTypeRemapController *)self keyboardsSectionSpecifiers];
    [v3 addObjectsFromArray:keyboardsSectionSpecifiers];

    keyboardTypeSectionSpecifiers = [(KSHardwareKeyboardKeyboardTypeRemapController *)self keyboardTypeSectionSpecifiers];
    [v3 addObjectsFromArray:keyboardTypeSectionSpecifiers];
  }

  return v3;
}

- (id)keyboardsSectionSpecifiers
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(NSMutableArray *)self->_keyboards count]< 2)
  {
    self->_keysSectionStart = 0;
  }

  else
  {
    v4 = MEMORY[0x277D3FAD8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"SELECT_KEYBOARD" value:&stru_28679E3A8 table:@"Keyboard"];
    v7 = [v4 groupSpecifierWithName:v6];

    [v7 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    v41 = v3;
    v36 = v7;
    [v3 addObject:v7];
    v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v8 = self->_keyboards;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v47;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v47 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = IOHIDServiceClientCopyProperty(*(*(&v46 + 1) + 8 * i), @"Product");
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v40 objectForKey:v13];
            integerValue = [v14 integerValue];

            v16 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue + 1];
            [v40 setObject:v16 forKey:v13];
          }
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v10);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = self->_keyboards;
    v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v38 = *MEMORY[0x277D3FFB8];
      v39 = *v43;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v43 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v42 + 1) + 8 * j);
          v22 = IOHIDServiceClientCopyProperty(v21, @"Product");
          v23 = IOHIDServiceClientCopyProperty(v21, @"ProductID");
          v24 = IOHIDServiceClientCopyProperty(v21, @"Transport");
          v25 = v22;
          objc_opt_class();
          v26 = v25;
          if (objc_opt_isKindOfClass())
          {
            v27 = [v40 objectForKey:v25];
            integerValue2 = [v27 integerValue];

            v26 = v25;
            if (integerValue2 >= 2)
            {
              v29 = @"%@ (Smart Connector)";
              if ([v24 isEqual:@"AID"] & 1) != 0 || (v29 = @"%@ (Bluetooth)", (objc_msgSend(v24, "isEqual:", @"Bluetooth")) || (v29 = @"%@ (USB)", v26 = v25, objc_msgSend(v24, "isEqual:", @"USB")))
              {
                v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v31 = [v30 localizedStringForKey:v29 value:&stru_28679E3A8 table:@"Keyboard"];

                v26 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v31, v25];
              }
            }
          }

          if (self->_currentKeyboard)
          {
            v32 = v19 == [(NSMutableArray *)self->_keyboards indexOfObject:?];
          }

          else
          {
            v32 = 0;
          }

          v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:%d", v25, v23, v32];
          v34 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v26 target:self set:0 get:0 detail:0 cell:3 edit:0];
          [v34 setProperty:v33 forKey:v38];
          [v41 addObject:v34];
          ++v19;
        }

        v18 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v18);
    }

    self->_keysSectionStart = 1;
    v3 = v41;
  }

  return v3;
}

- (id)keyboardTypeSectionSpecifiers
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_currentKeyboard)
  {
    v15 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"Keys"];
    [v3 addObject:?];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [&unk_2867A4B90 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      v7 = *MEMORY[0x277D3FFB8];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(&unk_2867A4B90);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = MEMORY[0x277D3FAD8];
          v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v12 = [v11 localizedStringForKey:v9 value:&stru_28679E3A8 table:@"Keyboard"];
          v13 = [v10 preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:3 edit:0];

          [v13 setProperty:v9 forKey:v7];
          [v3 addObject:v13];
        }

        v5 = [&unk_2867A4B90 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }
  }

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = KSHardwareKeyboardKeyboardTypeRemapController;
  v7 = [(KSHardwareKeyboardKeyboardTypeRemapController *)&v12 tableView:view cellForRowAtIndexPath:pathCopy];
  if ([pathCopy section] == self->_keysSectionStart - 1)
  {
    if (self->_currentKeyboard)
    {
      [v7 setChecked:{-[NSMutableArray indexOfObject:](self->_keyboards, "indexOfObject:") == objc_msgSend(pathCopy, "row")}];
    }
  }

  else if ([pathCopy section] == self->_keysSectionStart)
  {
    v8 = IOHIDServiceClientGetRegistryID(self->_currentKeyboard);
    [v8 unsignedLongLongValue];
    v9 = BKSHIDKeyboardGetDeviceProperties();
    standardType = [v9 standardType];
    if (standardType == -1)
    {
      standardType = 2 * ([v9 countryCode] == 15);
    }

    [v7 setChecked:{objc_msgSend(pathCopy, "row") == standardType}];
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  v8 = self->_keysSectionStart - 1;
  v9 = [pathCopy row];
  if (section == v8)
  {
    if (v9 < [(NSMutableArray *)self->_keyboards count])
    {
      v10 = -[NSMutableArray objectAtIndexedSubscript:](self->_keyboards, "objectAtIndexedSubscript:", [pathCopy row]);
      self->_currentKeyboard = v10;

      [(KSHardwareKeyboardKeyboardTypeRemapController *)self reloadSpecifiers];
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    }
  }

  else
  {
    v11 = IOHIDServiceClientGetRegistryID(self->_currentKeyboard);
    [v11 unsignedLongLongValue];
    BKSHIDServicesSetStandardType();
    [(KSHardwareKeyboardKeyboardTypeRemapController *)self reloadSpecifiers];
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }
}

@end
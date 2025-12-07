@interface KSHardwareKeyboardModifierRemapController
- (id)keyboardsSectionSpecifiers;
- (id)keysSectionSpecifiers;
- (id)newSpecifiers;
- (id)specifiers;
- (id)subtitleForSpecifier:(id)specifier;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)valueForRemappingKey:(id)key;
- (void)dealloc;
- (void)loadKeyboards;
- (void)loadRemapping;
- (void)reloadSpecifiersWithAnimation;
- (void)resetRemapping;
- (void)saveRemapping;
- (void)setRemappingFromKey:(id)key toValue:(id)value;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation KSHardwareKeyboardModifierRemapController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    newSpecifiers = [(KSHardwareKeyboardModifierRemapController *)self newSpecifiers];
    v6 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = newSpecifiers;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)subtitleForSpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:*MEMORY[0x277D3FFB8]];
  v5 = [(KSHardwareKeyboardModifierRemapController *)self valueForRemappingKey:v4];
  v6 = attributedTitleForKey(v5, self->_currentKeyboard, 0, 1);

  return v6;
}

- (void)dealloc
{
  eventSystemClient = self->_eventSystemClient;
  if (eventSystemClient)
  {
    CFRelease(eventSystemClient);
  }

  v4.receiver = self;
  v4.super_class = KSHardwareKeyboardModifierRemapController;
  [(KSHardwareKeyboardModifierRemapController *)&v4 dealloc];
}

- (void)reloadSpecifiersWithAnimation
{
  specifiers = [(KSHardwareKeyboardModifierRemapController *)self specifiers];
  newSpecifiers = [(KSHardwareKeyboardModifierRemapController *)self newSpecifiers];
  -[KSHardwareKeyboardModifierRemapController updateSpecifiersInRange:withSpecifiers:](self, "updateSpecifiersInRange:withSpecifiers:", 0, [specifiers count], newSpecifiers);
}

- (void)loadKeyboards
{
  v50[2] = *MEMORY[0x277D85DE8];
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
      v49[0] = @"DeviceUsagePage";
      v49[1] = @"DeviceUsage";
      v50[0] = &unk_2867A4E90;
      v50[1] = &unk_2867A4EA8;
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
      IOHIDEventSystemClientSetMatching();
      v41 = MEMORY[0x277D85DD0];
      v42 = 3221225472;
      v43 = __58__KSHardwareKeyboardModifierRemapController_loadKeyboards__block_invoke;
      v44 = &unk_2797F9EF0;
      objc_copyWeak(&v45, &location);
      IOHIDEventSystemClientRegisterDeviceMatchingBlock();
      objc_destroyWeak(&v45);

      selfCopy2 = self;
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  v5 = IOHIDEventSystemClientCopyServices(selfCopy2->_eventSystemClient);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v5;
  v28 = [(__CFArray *)obj countByEnumeratingWithState:&v37 objects:v48 count:16];
  if (v28)
  {
    v27 = *v38;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v37 + 1) + 8 * i);
        v31 = IOHIDServiceClientCopyProperty(v6, @"DeviceUsagePairs");
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v6;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v7 = v31;
          v8 = [v7 countByEnumeratingWithState:&v33 objects:v47 count:16];
          if (v8)
          {
            v9 = *v34;
            while (2)
            {
              for (j = 0; j != v8; ++j)
              {
                if (*v34 != v9)
                {
                  objc_enumerationMutation(v7);
                }

                v11 = *(*(&v33 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v12 = [v11 objectForKey:@"DeviceUsagePage"];
                  v13 = [v11 objectForKey:@"DeviceUsage"];
                  if ([v12 isEqual:&unk_2867A4E90] && objc_msgSend(v13, "isEqual:", &unk_2867A4EA8))
                  {
                    [array addObject:v29];
                    objc_copyWeak(&v32, &location);
                    IOHIDServiceClientRegisterRemovalBlock();
                    objc_destroyWeak(&v32);

                    goto LABEL_23;
                  }
                }
              }

              v8 = [v7 countByEnumeratingWithState:&v33 objects:v47 count:16];
              if (v8)
              {
                continue;
              }

              break;
            }
          }

LABEL_23:
        }
      }

      v28 = [(__CFArray *)obj countByEnumeratingWithState:&v37 objects:v48 count:16];
    }

    while (v28);
  }

  if ([array count])
  {
    if (!v24[185] || ([array containsObject:?] & 1) == 0)
    {
      firstObject = [array firstObject];
      v24[185] = firstObject;
LABEL_33:
    }
  }

  else
  {
    v24[185] = 0;
    navigationController = [v24 navigationController];
    viewControllers = [navigationController viewControllers];
    v17 = [viewControllers indexOfObject:v24];

    if (v17 && v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      navigationController2 = [v24 navigationController];
      viewControllers2 = [navigationController2 viewControllers];
      firstObject = [viewControllers2 objectAtIndex:v17 - 1];

      navigationController3 = [v24 navigationController];
      v21 = [navigationController3 popToViewController:firstObject animated:1];

      goto LABEL_33;
    }
  }

  v22 = v24[183];
  v24[183] = array;

  objc_destroyWeak(&location);
}

void __58__KSHardwareKeyboardModifierRemapController_loadKeyboards__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__KSHardwareKeyboardModifierRemapController_loadKeyboards__block_invoke_2;
    block[3] = &unk_2797F9EC8;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __58__KSHardwareKeyboardModifierRemapController_loadKeyboards__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__KSHardwareKeyboardModifierRemapController_loadKeyboards__block_invoke_4;
    block[3] = &unk_2797F9EC8;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)resetRemapping
{
  [(NSMutableDictionary *)self->_remapping removeAllObjects];
  [(KSHardwareKeyboardModifierRemapController *)self saveRemapping];

  [(KSHardwareKeyboardModifierRemapController *)self reloadSpecifiers];
}

- (void)loadRemapping
{
  v25 = *MEMORY[0x277D85DE8];
  if (initializeDictionaries_onceToken != -1)
  {
    [KSHardwareKeyboardModifierRemapController loadRemapping];
  }

  [(KSHardwareKeyboardModifierRemapController *)self loadKeyboards];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  remapping = self->_remapping;
  self->_remapping = dictionary;

  currentKeyboard = self->_currentKeyboard;
  if (currentKeyboard)
  {
    v5 = IOHIDServiceClientCopyProperty(currentKeyboard, @"HIDKeyboardModifierMappingPairs");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v21;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v21 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v20 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = _keyCodeToKey;
              v13 = [v11 objectForKeyedSubscript:@"HIDKeyboardModifierMappingSrc"];
              v14 = [v12 objectForKeyedSubscript:v13];

              v15 = _keyCodeToKey;
              v16 = [v11 objectForKeyedSubscript:@"HIDKeyboardModifierMappingDst"];
              v17 = [v15 objectForKeyedSubscript:v16];

              if (v14)
              {
                v18 = v17 == 0;
              }

              else
              {
                v18 = 1;
              }

              if (!v18)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [(NSMutableDictionary *)self->_remapping setObject:v17 forKeyedSubscript:v14];
                  }
                }
              }
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v8);
      }
    }
  }
}

- (void)saveRemapping
{
  v70 = *MEMORY[0x277D85DE8];
  if (self->_currentKeyboard)
  {
    selfCopy = self;
    array = [MEMORY[0x277CBEB18] array];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = selfCopy->_remapping;
    v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v62 objects:v69 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v63;
      v6 = @"HIDKeyboardModifierMappingSrc";
      v7 = @"HIDKeyboardModifierMappingDst";
      v8 = 0x277CBE000uLL;
      v48 = selfCopy;
      v45 = *v63;
      do
      {
        v9 = 0;
        v50 = v4;
        do
        {
          if (*v63 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v62 + 1) + 8 * v9);
          v11 = [(NSMutableDictionary *)selfCopy->_remapping objectForKeyedSubscript:v10];
          if (([v10 isEqualToString:v11] & 1) == 0)
          {
            v56 = v9;
            v12 = [_keyToKeyCode objectForKeyedSubscript:v10];
            property = v11;
            v13 = [_keyToKeyCode objectForKeyedSubscript:v11];
            v14 = v8;
            v15 = v7;
            v16 = v6;
            if ([v12 count])
            {
              v17 = 0;
              do
              {
                v18 = [v12 objectAtIndexedSubscript:v17];
                v19 = [v13 count];
                if (v17 >= v19 - 1)
                {
                  v20 = v19 - 1;
                }

                else
                {
                  v20 = v17;
                }

                v21 = [v13 objectAtIndexedSubscript:v20];
                v67[0] = v16;
                v67[1] = v15;
                v68[0] = v18;
                v68[1] = v21;
                v22 = [*(v14 + 2752) dictionaryWithObjects:v68 forKeys:v67 count:2];
                [array addObject:v22];

                ++v17;
              }

              while (v17 < [v12 count]);
            }

            selfCopy = v48;
            v5 = v45;
            v4 = v50;
            v6 = v16;
            v7 = v15;
            v8 = v14;
            v11 = property;
            v9 = v56;
          }

          v9 = v9 + 1;
        }

        while (v9 != v4);
        v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v62 objects:v69 count:16];
      }

      while (v4);
    }

    v23 = IOHIDServiceClientCopyProperty(selfCopy->_currentKeyboard, @"ProductID");
    v24 = IOHIDServiceClientCopyProperty(selfCopy->_currentKeyboard, @"VendorID");
    v25 = IOHIDServiceClientCopyProperty(selfCopy->_currentKeyboard, @"HIDVirtualDevice");
    v26 = BKSHIDServicesProductIdentifierFromServiceProperties();
    v27 = v26;
    if (v26)
    {
      v47 = v25;
      v51 = v24;
      obja = v23;
      v28 = v26;
      v29 = array;
      v30 = *MEMORY[0x277CF05A8];
      v31 = CFPreferencesCopyAppValue(*MEMORY[0x277CF05A8], @"com.apple.keyboard.preferences");
      if (v31)
      {
        v32 = v31;
        dictionary = [v31 mutableCopy];
      }

      else
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
      }

      v46 = v27;
      if ([v29 count])
      {
        [dictionary setObject:v29 forKeyedSubscript:v28];
      }

      else
      {
        [dictionary removeObjectForKey:v28];
      }

      v35 = [dictionary copy];

      CFPreferencesSetAppValue(v30, v35, @"com.apple.keyboard.preferences");
      propertya = v29;

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v57 = selfCopy->_keyboards;
      v36 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v58 objects:v66 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v59;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v59 != v38)
            {
              objc_enumerationMutation(v57);
            }

            v40 = *(*(&v58 + 1) + 8 * i);
            v41 = IOHIDServiceClientCopyProperty(v40, @"ProductID");
            v42 = IOHIDServiceClientCopyProperty(v40, @"VendorID");
            v43 = IOHIDServiceClientCopyProperty(v40, @"HIDVirtualDevice");
            v44 = BKSHIDServicesProductIdentifierFromServiceProperties();
            if ([v28 isEqual:v44])
            {
              if (!IOHIDServiceClientSetProperty(v40, @"HIDKeyboardModifierMappingPairs", propertya))
              {
                NSLog(&cfstr_ErrorCanNotSav.isa);
              }
            }
          }

          v37 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v58 objects:v66 count:16];
        }

        while (v37);
      }

      v34 = array;
      v24 = v51;
      v23 = obja;
      v27 = v46;
      v25 = v47;
    }

    else
    {
      NSLog(&cfstr_CanNotSaveRema.isa);
      v34 = array;
    }
  }
}

- (id)valueForRemappingKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_remapping objectForKeyedSubscript:keyCopy];
  if (!v5)
  {
    v5 = keyCopy;
  }

  return v5;
}

- (void)setRemappingFromKey:(id)key toValue:(id)value
{
  [(NSMutableDictionary *)self->_remapping setObject:value forKeyedSubscript:key];
  [(KSHardwareKeyboardModifierRemapController *)self saveRemapping];

  [(KSHardwareKeyboardModifierRemapController *)self reloadSpecifiers];
}

- (id)newSpecifiers
{
  [(KSHardwareKeyboardModifierRemapController *)self loadRemapping];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(NSMutableArray *)self->_keyboards count])
  {
    keyboardsSectionSpecifiers = [(KSHardwareKeyboardModifierRemapController *)self keyboardsSectionSpecifiers];
    [v3 addObjectsFromArray:keyboardsSectionSpecifiers];

    keysSectionSpecifiers = [(KSHardwareKeyboardModifierRemapController *)self keysSectionSpecifiers];
    [v3 addObjectsFromArray:keysSectionSpecifiers];

    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"Restore Defaults"];
    [v3 addObject:v6];
    v7 = MEMORY[0x277D3FAD8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"MODIFIER_KEYS_RESTORE_DEFAULTS" value:&stru_28679E3A8 table:@"Keyboard"];
    v10 = [v7 preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v10 setButtonAction:sel_resetRemapping];
    [v3 addObject:v10];
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
          v34 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v26 target:self set:0 get:0 detail:objc_opt_class() cell:3 edit:0];
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

- (id)keysSectionSpecifiers
{
  v49 = *MEMORY[0x277D85DE8];
  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_currentKeyboard)
  {
    v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"Keys"];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"MODIFIER_KEYS_FOOTER_TEXT" value:&stru_28679E3A8 table:@"Keyboard"];
    [v3 setProperty:v5 forKey:*MEMORY[0x277D3FF88]];

    v36 = v3;
    [v38 addObject:v3];
    currentKeyboard = self->_currentKeyboard;
    v7 = [MEMORY[0x277CBEB58] set];
    if (currentKeyboard)
    {
      v8 = IOHIDServiceClientCopyProperty(currentKeyboard, @"Keyboard");
      v9 = 0x277CBE000uLL;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v8 objectForKeyedSubscript:@"Elements"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v34 = v10;
          v35 = v8;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v43 objects:v48 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v44;
            v37 = v11;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v44 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v43 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v17 = [v16 objectForKeyedSubscript:@"Usage"];
                  v18 = [v16 objectForKeyedSubscript:@"UsagePage"];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v19 = v9;
                      unsignedLongLongValue = [v17 unsignedLongLongValue];
                      v21 = unsignedLongLongValue | ([v18 unsignedLongLongValue] << 32);
                      v22 = _keyCodeToKey;
                      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];
                      v24 = [v22 objectForKeyedSubscript:v23];

                      if (v24)
                      {
                        [v7 addObject:v24];
                      }

                      v9 = v19;
                      v11 = v37;
                    }
                  }
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v43 objects:v48 count:16];
            }

            while (v13);
          }

          v10 = v34;
          v8 = v35;
        }
      }
    }

    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v25 = _srcKeys;
    v26 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v40;
      v29 = *MEMORY[0x277D3FFB8];
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v40 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v39 + 1) + 8 * j);
          if ([v7 containsObject:v31])
          {
            v32 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
            [v32 setProperty:v31 forKey:v29];
            [v38 addObject:v32];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v27);
    }
  }

  return v38;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = KSHardwareKeyboardModifierRemapController;
  v7 = [(KSHardwareKeyboardModifierRemapController *)&v15 tableView:view cellForRowAtIndexPath:pathCopy];
  if ([pathCopy section] == self->_keysSectionStart - 1)
  {
    if (self->_currentKeyboard)
    {
      [v7 setChecked:{-[NSMutableArray indexOfObject:](self->_keyboards, "indexOfObject:") == objc_msgSend(pathCopy, "row")}];
    }
  }

  else if ([pathCopy section] == self->_keysSectionStart)
  {
    v8 = [(KSHardwareKeyboardModifierRemapController *)self specifierAtIndexPath:pathCopy];
    v9 = [v8 propertyForKey:*MEMORY[0x277D3FFB8]];
    v10 = attributedTitleForKey(v9, self->_currentKeyboard, @" Key", 1);
    titleLabel = [v7 titleLabel];
    [titleLabel setAttributedText:v10];

    v12 = [(KSHardwareKeyboardModifierRemapController *)self subtitleForSpecifier:v8];
    valueLabel = [v7 valueLabel];
    [valueLabel setAttributedText:v12];
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] == self->_keysSectionStart - 1)
  {
    v8 = [pathCopy row];
    if (v8 < [(NSMutableArray *)self->_keyboards count])
    {
      v9 = -[NSMutableArray objectAtIndexedSubscript:](self->_keyboards, "objectAtIndexedSubscript:", [pathCopy row]);
      self->_currentKeyboard = v9;

      [(KSHardwareKeyboardModifierRemapController *)self reloadSpecifiers];
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = KSHardwareKeyboardModifierRemapController;
    [(KSHardwareKeyboardModifierRemapController *)&v10 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

@end
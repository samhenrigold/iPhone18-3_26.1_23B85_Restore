@interface AccessoryControlListItemsController
- (AccessoryControlListItemsController)init;
- (BOOL)allowOffListeningMode;
- (id)listeningModeCombinations;
- (id)specifiers;
- (void)dealloc;
- (void)listItemSelected:(id)selected;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation AccessoryControlListItemsController

- (AccessoryControlListItemsController)init
{
  v6.receiver = self;
  v6.super_class = AccessoryControlListItemsController;
  v2 = [(AccessoryControlListItemsController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(&v2->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC28]) = 0;
    v2->_autoANCSupported = 0;
    v2->_listeningModeConfigs = 0;
    currentSelectedSpecifier = v2->_currentSelectedSpecifier;
    v2->_currentSelectedSpecifier = @"Left";
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AccessoryControlListItemsController;
  [(PSListItemsController *)&v2 dealloc];
}

- (id)listeningModeCombinations
{
  p_listeningModeConfigs = &self->_listeningModeConfigs;
  anc = self->_listeningModeConfigs.anc;
  if (anc)
  {
    if (self->_listeningModeConfigs.transparency)
    {
      if (p_listeningModeConfigs->normal && self->_listeningModeConfigs.autoANC)
      {
        return @"NC&Off&T&Auto";
      }

      if (p_listeningModeConfigs->normal)
      {
        return @"NC&Off&T";
      }

      if (self->_listeningModeConfigs.autoANC)
      {
        return @"NC&T&Auto";
      }
    }

    else if (self->_listeningModeConfigs.autoANC && p_listeningModeConfigs->normal)
    {
      return @"NC&Off&Auto";
    }
  }

  if (p_listeningModeConfigs->normal && self->_listeningModeConfigs.transparency && self->_listeningModeConfigs.autoANC)
  {
    return @"Off&T&Auto";
  }

  if (self->_listeningModeConfigs.anc)
  {
    if (self->_listeningModeConfigs.transparency)
    {
      return @"NC&T";
    }

    if (self->_listeningModeConfigs.autoANC)
    {
      return @"NC&Auto";
    }
  }

  if (p_listeningModeConfigs->normal && self->_listeningModeConfigs.autoANC)
  {
    return @"Off&Auto";
  }

  if (self->_listeningModeConfigs.transparency)
  {
    if (self->_listeningModeConfigs.autoANC)
    {
      return @"T&Auto";
    }
  }

  else if (anc)
  {
    return @"NC&Off";
  }

  return @"Off&T";
}

- (id)specifiers
{
  v108[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v107.receiver = self;
  v107.super_class = AccessoryControlListItemsController;
  specifiers = [(PSListItemsController *)&v107 specifiers];
  v5 = [v3 arrayWithArray:specifiers];

  v6 = *MEMORY[0x277D3FD20];
  userInfo = [*(&self->super.super.super.super.super.super.isa + v6) userInfo];
  v8 = +[HPSDevice deviceKey];
  v9 = [userInfo objectForKeyedSubscript:v8];
  currentDevice = self->_currentDevice;
  self->_currentDevice = v9;

  self->_autoANCSupported = [(BluetoothDeviceProtocol *)self->_currentDevice getAutoANCSupport];
  productId = [(BluetoothDeviceProtocol *)self->_currentDevice productId];
  v106 = 0;
  v105 = 0;
  v104 = v5;
  if (productId != 8230)
  {
    v12 = productId;
    v13 = &v106;
    [(BluetoothDeviceProtocol *)self->_currentDevice clickHoldMode:&v106 rightAction:&v105];
    identifier = [*(&self->super.super.super.super.super.super.isa + v6) identifier];
    v15 = [identifier isEqualToString:@"LEFT_ID"];

    v16 = 0x277CBE000;
    if ((v15 & 1) == 0)
    {
      identifier2 = [*(&self->super.super.super.super.super.super.isa + v6) identifier];
      v18 = [identifier2 isEqualToString:@"RIGHT_ID"];

      if (!v18)
      {
        goto LABEL_40;
      }

      v13 = &v105;
    }

    if (*v13 == 5 && (![HPSProductUtils isBeatsNonWx:self->_currentDevice]|| ![(BluetoothDeviceProtocol *)self->_currentDevice featureCapability:30]|| [(BluetoothDeviceProtocol *)self->_currentDevice getAACPCapabilityBit:12]))
    {
      listeningModeConfigs = [(BluetoothDeviceProtocol *)self->_currentDevice listeningModeConfigs];
      self->_listeningModeConfigs.anc = (listeningModeConfigs & 2) != 0;
      self->_listeningModeConfigs.transparency = (listeningModeConfigs & 4) != 0;
      self->_listeningModeConfigs.normal = listeningModeConfigs & 1;
      self->_listeningModeConfigs.autoANC = (listeningModeConfigs & 8) != 0;
      autoANCSupported = self->_autoANCSupported;
      identifier3 = [*(&self->super.super.super.super.super.super.isa + v6) identifier];
      v22 = [identifier3 isEqualToString:@"LEFT_ID"];

      if (autoANCSupported)
      {
        if (v22)
        {
          v23 = @"CycleBetweenV2LeftBudValue";
          v24 = @"cycleBetweenV2LeftBudValue";
LABEL_14:
          v25 = @"Left";
LABEL_20:
          currentSelectedSpecifier = self->_currentSelectedSpecifier;
          self->_currentSelectedSpecifier = &v25->isa;

          listeningModeCombinations = [(AccessoryControlListItemsController *)self listeningModeCombinations];
          v32 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{listeningModeCombinations, v24, 0}];
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter postNotificationName:v23 object:0 userInfo:v32];

LABEL_21:
          v34 = MEMORY[0x277D3FAD8];
          v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v36 = [v35 localizedStringForKey:@"NOISE_CONTROL_HEADER" value:&stru_286339F58 table:@"DeviceConfig"];
          v37 = [v34 preferenceSpecifierNamed:v36 target:self set:0 get:0 detail:0 cell:0 edit:0];

          v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v39 = [v38 localizedStringForKey:@"NOISE_CONTROL_FOOTER" value:&stru_286339F58 table:@"DeviceConfig"];

          if (v12 <= 8213)
          {
            if (v12 == 8209)
            {
              v40 = @"DeviceConfig-B507";
              goto LABEL_32;
            }

            if (v12 == 8210)
            {
              v40 = @"DeviceConfig-B494";
              goto LABEL_32;
            }
          }

          else
          {
            switch(v12)
            {
              case 8214:
                v40 = @"DeviceConfig-B607";
                goto LABEL_32;
              case 8221:
                v40 = @"DeviceConfig-B498-v2";
                goto LABEL_32;
              case 8239:
                v40 = @"DeviceConfig-B494b";
LABEL_32:
                v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v42 = [v41 localizedStringForKey:@"NOISE_CONTROL_FOOTER" value:&stru_286339F58 table:v40];

                v39 = v42;
                break;
            }
          }

          v97 = v39;
          [v37 setProperty:v39 forKey:*MEMORY[0x277D3FF88]];
          v98 = v37;
          [v5 addObject:v37];
          v103 = [MEMORY[0x277D755D0] configurationWithPointSize:25.0];
          v43 = MEMORY[0x277D3FAD8];
          v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v45 = [v44 localizedStringForKey:@"ACTIVE_NOISE_CANCELLATION" value:&stru_286339F58 table:@"DeviceConfig"];
          v46 = [v43 preferenceSpecifierNamed:v45 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          v102 = *MEMORY[0x277D3FFB8];
          [v46 setProperty:@"ANC" forKey:?];
          v47 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v48 = [v47 localizedStringForKey:@"ACTIVE_NOISE_CANCELLATION_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
          v100 = *MEMORY[0x277D40160];
          [v46 setProperty:v48 forKey:?];

          v49 = [MEMORY[0x277D755B8] _systemImageNamed:@"person.closed.fill"];
          v50 = [v49 imageByApplyingSymbolConfiguration:v103];

          systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
          v95 = v50;
          v52 = [v50 imageWithTintColor:systemBlueColor];
          v101 = *MEMORY[0x277D3FFC0];
          [v46 setProperty:v52 forKey:?];

          v53 = objc_opt_class();
          v54 = *MEMORY[0x277D3FE58];
          v96 = v46;
          v99 = *MEMORY[0x277D3FE58];
          [v46 setProperty:v53 forKey:*MEMORY[0x277D3FE58]];
          v55 = MEMORY[0x277D3FAD8];
          v56 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v57 = [v56 localizedStringForKey:@"ACTIVE_PASS_THROUGH" value:&stru_286339F58 table:@"DeviceConfig"];
          v58 = [v55 preferenceSpecifierNamed:v57 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          [v58 setProperty:@"Passthrough" forKey:v102];
          v59 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v60 = [v59 localizedStringForKey:@"ACTIVE_PASS_THROUGH_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
          [v58 setProperty:v60 forKey:v100];

          v61 = [MEMORY[0x277D755B8] _systemImageNamed:@"person.open.fill"];
          v62 = [v61 imageByApplyingSymbolConfiguration:v103];

          v93 = v62;
          [v58 setProperty:v62 forKey:v101];
          v94 = v58;
          [v58 setProperty:objc_opt_class() forKey:v54];
          v63 = MEMORY[0x277D3FAD8];
          v64 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v65 = [v64 localizedStringForKey:@"BYPASS" value:&stru_286339F58 table:@"DeviceConfig"];
          v66 = [v63 preferenceSpecifierNamed:v65 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          [v66 setProperty:@"Off" forKey:v102];
          v67 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v68 = [v67 localizedStringForKey:@"BYPASS_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
          [v66 setProperty:v68 forKey:v100];

          v69 = [MEMORY[0x277D755B8] _systemImageNamed:@"person.closed.fill"];
          v70 = MEMORY[0x277D755D0];
          systemBlueColor2 = [MEMORY[0x277D75348] systemBlueColor];
          v72 = [systemBlueColor2 colorWithAlphaComponent:0.5];
          v108[0] = v72;
          systemBlueColor3 = [MEMORY[0x277D75348] systemBlueColor];
          v108[1] = systemBlueColor3;
          v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:2];
          v75 = [v70 configurationWithPaletteColors:v74];
          v76 = [v69 imageByApplyingSymbolConfiguration:v75];
          v77 = [v76 imageByApplyingSymbolConfiguration:v103];

          [v66 setProperty:v77 forKey:v101];
          [v66 setProperty:objc_opt_class() forKey:v99];
          v78 = 0;
          if (self->_autoANCSupported)
          {
            v79 = MEMORY[0x277D3FAD8];
            v80 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v81 = [v80 localizedStringForKey:@"AUTO_ANC" value:&stru_286339F58 table:@"DeviceConfig-B698"];
            v78 = [v79 preferenceSpecifierNamed:v81 target:0 set:0 get:0 detail:0 cell:3 edit:0];

            [v78 setProperty:@"AutoANC" forKey:v102];
            v82 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v83 = [v82 localizedStringForKey:@"AUTO_ANC_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B698"];
            [v78 setProperty:v83 forKey:v100];

            v84 = [MEMORY[0x277D755B8] _systemImageNamed:@"person.and.sparkles.fill"];
            v85 = [v84 imageByApplyingSymbolConfiguration:v103];

            systemBlueColor4 = [MEMORY[0x277D75348] systemBlueColor];
            v87 = [v85 imageWithTintColor:systemBlueColor4];
            [v78 setProperty:v87 forKey:v101];

            [v78 setProperty:objc_opt_class() forKey:v99];
          }

          if ([(AccessoryControlListItemsController *)self allowOffListeningMode])
          {
            [v104 addObject:v66];
          }

          [v104 addObject:v94];
          if (self->_autoANCSupported)
          {
            [v104 addObject:v78];
          }

          [v104 addObject:v96];

          v16 = 0x277CBE000uLL;
          goto LABEL_40;
        }

        identifier4 = [*(&self->super.super.super.super.super.super.isa + v6) identifier];
        v27 = [identifier4 isEqualToString:@"RIGHT_ID"];

        if ((v27 & 1) == 0)
        {
          goto LABEL_21;
        }

        v23 = @"CycleBetweenV2RightBudValue";
        v24 = @"cycleBetweenV2RightBudValue";
      }

      else
      {
        if (v22)
        {
          v23 = @"CycleBetweenLeftBudValue";
          v24 = @"cycleBetweenLeftBudValue";
          goto LABEL_14;
        }

        identifier5 = [*(&self->super.super.super.super.super.super.isa + v6) identifier];
        v29 = [identifier5 isEqualToString:@"RIGHT_ID"];

        if (!v29)
        {
          goto LABEL_21;
        }

        v23 = @"CycleBetweenRightBudValue";
        v24 = @"cycleBetweenRightBudValue";
      }

      v25 = @"Right";
      goto LABEL_20;
    }

LABEL_40:
    v88 = [*(v16 + 2656) arrayWithArray:v104];
    v89 = *MEMORY[0x277D3FC48];
    v90 = *(&self->super.super.super.super.super.super.isa + v89);
    *(&self->super.super.super.super.super.super.isa + v89) = v88;

    v5 = *(&self->super.super.super.super.super.super.isa + v89);
  }

  v91 = v5;

  return v91;
}

- (void)listItemSelected:(id)selected
{
  selectedCopy = selected;
  if ([selectedCopy section])
  {
    v5 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) cellForRowAtIndexPath:selectedCopy];
    v6 = [(AccessoryControlListItemsController *)self specifierAtIndexPath:selectedCopy];
    v7 = v6;
    p_listeningModeConfigs = &self->_listeningModeConfigs;
    p_anc = &self->_listeningModeConfigs.anc;
    v10 = self->_listeningModeConfigs.transparency + self->_listeningModeConfigs.anc + self->_listeningModeConfigs.normal;
    if (self->_autoANCSupported)
    {
      v10 += self->_listeningModeConfigs.autoANC;
    }

    if (v10 == 2)
    {
      identifier = [v6 identifier];
      v43 = v5;
      if ([identifier isEqualToString:@"ANC"] && p_anc->normal)
      {
        goto LABEL_10;
      }

      identifier2 = [v7 identifier];
      if ([identifier2 isEqualToString:@"Passthrough"] && self->_listeningModeConfigs.transparency)
      {

LABEL_10:
LABEL_14:
        v16 = sharedBluetoothSettingsLogComponent(v13);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [AccessoryControlListItemsController listItemSelected:v16];
        }

        v5 = v43;
LABEL_17:

LABEL_49:
        goto LABEL_50;
      }

      v14 = v7;
      identifier3 = [v7 identifier];
      if ([identifier3 isEqualToString:@"Off"])
      {
        normal = p_listeningModeConfigs->normal;

        v7 = v14;
        if (normal)
        {
          goto LABEL_14;
        }
      }

      else
      {

        v7 = v14;
      }

      v5 = v43;
      if (self->_autoANCSupported)
      {
        identifier4 = [v7 identifier];
        if ([identifier4 isEqualToString:@"AutoANC"])
        {
          autoANC = self->_listeningModeConfigs.autoANC;

          v20 = autoANC;
          v5 = v43;
          if (v20)
          {
            v16 = sharedBluetoothSettingsLogComponent(v19);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              [AccessoryControlListItemsController listItemSelected:v16];
            }

            goto LABEL_17;
          }
        }

        else
        {
        }
      }
    }

    [v5 setChecked:{objc_msgSend(v5, "isChecked") ^ 1}];
    identifier5 = [v7 identifier];
    v22 = [identifier5 isEqualToString:@"ANC"];

    if (v22)
    {
      isChecked = [v5 isChecked];
    }

    else
    {
      identifier6 = [v7 identifier];
      v25 = [identifier6 isEqualToString:@"Passthrough"];

      if (v25)
      {
        isChecked = [v5 isChecked];
        p_anc = &self->_listeningModeConfigs.transparency;
      }

      else
      {
        identifier7 = [v7 identifier];
        v27 = [identifier7 isEqualToString:@"Off"];

        if (v27)
        {
          isChecked = [v5 isChecked];
          p_anc = &self->_listeningModeConfigs;
        }

        else
        {
          if (!self->_autoANCSupported || ([v7 identifier], v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "isEqualToString:", @"AutoANC"), v40, !v41))
          {
LABEL_33:
            v28 = v7;
            if (self->_listeningModeConfigs.anc)
            {
              v29 = 2;
            }

            else
            {
              v29 = 0;
            }

            if (self->_listeningModeConfigs.transparency)
            {
              v29 |= 4u;
            }

            v30 = v29 | p_listeningModeConfigs->normal;
            if (self->_autoANCSupported)
            {
              if (self->_listeningModeConfigs.autoANC)
              {
                v30 = v30 | 8;
              }

              else
              {
                v30 = v30;
              }

              v31 = [(NSString *)self->_currentSelectedSpecifier isEqualToString:@"Left"];
              listeningModeCombinations = [(AccessoryControlListItemsController *)self listeningModeCombinations];
              v33 = objc_alloc(MEMORY[0x277CBEAC0]);
              if (v31)
              {
                v34 = [v33 initWithObjectsAndKeys:{listeningModeCombinations, @"cycleBetweenV2LeftBudValue", 0}];
                defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
                v36 = defaultCenter;
                v37 = @"CycleBetweenV2LeftBudValue";
              }

              else
              {
                v34 = [v33 initWithObjectsAndKeys:{listeningModeCombinations, @"cycleBetweenV2RightBudValue", 0}];
                defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
                v36 = defaultCenter;
                v37 = @"CycleBetweenV2RightBudValue";
              }
            }

            else
            {
              v38 = [(NSString *)self->_currentSelectedSpecifier isEqualToString:@"Left"];
              listeningModeCombinations = [(AccessoryControlListItemsController *)self listeningModeCombinations];
              v39 = objc_alloc(MEMORY[0x277CBEAC0]);
              if (v38)
              {
                v34 = [v39 initWithObjectsAndKeys:{listeningModeCombinations, @"cycleBetweenLeftBudValue", 0}];
                defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
                v36 = defaultCenter;
                v37 = @"CycleBetweenLeftBudValue";
              }

              else
              {
                v34 = [v39 initWithObjectsAndKeys:{listeningModeCombinations, @"cycleBetweenRightBudValue", 0}];
                defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
                v36 = defaultCenter;
                v37 = @"CycleBetweenRightBudValue";
              }
            }

            [defaultCenter postNotificationName:v37 object:0 userInfo:v34];

            [(BluetoothDeviceProtocol *)self->_currentDevice setListeningModeConfigs:v30];
            goto LABEL_49;
          }

          isChecked = [v5 isChecked];
          p_anc = &self->_listeningModeConfigs.autoANC;
        }
      }
    }

    p_anc->normal = isChecked;
    goto LABEL_33;
  }

  v44.receiver = self;
  v44.super_class = AccessoryControlListItemsController;
  [(PSListItemsController *)&v44 listItemSelected:selectedCopy];
  [(AccessoryControlListItemsController *)self reloadSpecifiers];
LABEL_50:
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = cellCopy;
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = cellCopy;
  valueLabel = [v8 valueLabel];
  [valueLabel setLineBreakMode:0];

  valueLabel2 = [v8 valueLabel];
  [valueLabel2 setNumberOfLines:0];

  specifier = [v8 specifier];
  identifier = [specifier identifier];
  v13 = [identifier isEqualToString:@"ANC"];

  if (v13)
  {
    p_anc = &self->_listeningModeConfigs.anc;
  }

  else
  {
    specifier2 = [v8 specifier];
    identifier2 = [specifier2 identifier];
    v17 = [identifier2 isEqualToString:@"Passthrough"];

    if (v17)
    {
      p_anc = &self->_listeningModeConfigs.transparency;
    }

    else
    {
      specifier3 = [v8 specifier];
      identifier3 = [specifier3 identifier];
      v20 = [identifier3 isEqualToString:@"Off"];

      if (!v20)
      {
        goto LABEL_9;
      }

      p_anc = &self->_listeningModeConfigs;
    }
  }

  [v8 setChecked:p_anc->normal];
LABEL_9:
  if (self->_autoANCSupported)
  {
    specifier4 = [v8 specifier];
    identifier4 = [specifier4 identifier];
    v23 = [identifier4 isEqualToString:@"AutoANC"];

    if (v23)
    {
      [v8 setChecked:self->_listeningModeConfigs.autoANC];
    }
  }

  v7 = cellCopy;
LABEL_13:

  MEMORY[0x2821F96F8](isKindOfClass, v7);
}

- (BOOL)allowOffListeningMode
{
  selfCopy = self;
  v3 = sub_2511E9234();

  return v3;
}

@end
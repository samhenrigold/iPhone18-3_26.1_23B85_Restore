@interface STStatusBarData
+ (NSDateFormatter)dateFormatter;
+ (NSDateFormatter)shortTimeFormatter;
+ (NSDateFormatter)timeFormatter;
+ (NSSet)entryKeys;
+ (STStatusBarData)staticDisplayData;
+ (void)dateFormatterForDate:(id *)date time:(id *)time shortTime:(id *)shortTime;
- (BOOL)dateFromEntriesIncludesDate;
- (BOOL)dateFromEntriesIncludesTime;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (NSDate)dateFromEntries;
- (NSSet)existingEntryKeys;
- (STStatusBarData)initWithCoder:(id)coder;
- (STStatusBarData)initWithDate:(id)date;
- (STStatusBarData)initWithEntry:(id)entry forKey:(id)key;
- (STStatusBarData)initWithKeysAndEntries:(id)entries;
- (STStatusBarDataPersonNameEntry)avatarEntry;
- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug;
- (id)dataByApplyingOverlay:(id)overlay;
- (id)dataByApplyingUpdate:(id)update keys:(id)keys;
- (id)dataByRemovingEntriesForKeys:(id)keys;
- (id)dataByReplacingEntry:(id)entry forKey:(id)key;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)entryForKey:(id)key;
- (id)mutableCopy;
- (id)succinctDescription;
- (id)updateFromData:(id)data;
- (unint64_t)hash;
- (void)_internal_setValue:(id)value forKey:(id)key;
- (void)encodeWithCoder:(id)coder;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation STStatusBarData

- (id)mutableCopy
{
  v3 = objc_alloc_init(STMutableStatusBarData);
  _copyValuesFromDataToData(&self->super.isa, &v3->super.super.isa);
  return v3;
}

+ (NSSet)entryKeys
{
  if (qword_1ED7F5C68 != -1)
  {
    dispatch_once(&qword_1ED7F5C68, &__block_literal_global_872);
  }

  v3 = qword_1ED7F5C60;

  return v3;
}

- (NSSet)existingEntryKeys
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  entryKeys = [objc_opt_class() entryKeys];
  v5 = [entryKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(entryKeys);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(STStatusBarData *)self valueForKey:v9];
        if (v10)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [entryKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)isEmpty
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  entryKeys = [objc_opt_class() entryKeys];
  v4 = [entryKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(entryKeys);
        }

        v8 = [(STStatusBarData *)self valueForKey:*(*(&v11 + 1) + 8 * i)];

        if (v8)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v5 = [entryKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

+ (void)dateFormatterForDate:(id *)date time:(id *)time shortTime:(id *)shortTime
{
  if (_MergedGlobals_9 == -1)
  {
    if (!date)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&_MergedGlobals_9, &__block_literal_global_10);
  if (date)
  {
LABEL_3:
    *date = qword_1ED7F5CE8;
  }

LABEL_4:
  if (time)
  {
    *time = qword_1ED7F5CF0;
  }

  if (shortTime)
  {
    *shortTime = qword_1ED7F5CF8;
  }
}

void __63__STStatusBarData_NSDate__dateFormatterForDate_time_shortTime___block_invoke()
{
  v0 = MEMORY[0x1E696AB78];
  v1 = [MEMORY[0x1E695DF58] currentLocale];
  v2 = [v0 dateFormatFromTemplate:@"EEEMMMd" options:0 locale:v1];
  v3 = v2;
  v4 = @"EEE MMM d";
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  v7 = [(__CFString *)v5 rangeOfCharacterFromSet:v6];
  v9 = v8;

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = v5;
  }

  else
  {
    do
    {
      v30 = [(__CFString *)v5 stringByReplacingCharactersInRange:v7 withString:v9, &stru_1F5665198];

      v10 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
      v7 = [(__CFString *)v30 rangeOfCharacterFromSet:v10];
      v9 = v11;

      v5 = v30;
    }

    while (v7 != 0x7FFFFFFFFFFFFFFFLL);
  }

  v12 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v13 = qword_1ED7F5CE8;
  qword_1ED7F5CE8 = v12;

  v14 = qword_1ED7F5CE8;
  v15 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v14 setTimeZone:v15];

  v16 = qword_1ED7F5CE8;
  v17 = [MEMORY[0x1E695DF58] currentLocale];
  [v16 setLocale:v17];

  [qword_1ED7F5CE8 setDateFormat:v30];
  v18 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v19 = qword_1ED7F5CF0;
  qword_1ED7F5CF0 = v18;

  v20 = qword_1ED7F5CF0;
  v21 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v20 setTimeZone:v21];

  v22 = qword_1ED7F5CF0;
  v23 = [MEMORY[0x1E695DF58] currentLocale];
  [v22 setLocale:v23];

  [qword_1ED7F5CF0 setDateStyle:0];
  [qword_1ED7F5CF0 setTimeStyle:1];
  v24 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v25 = qword_1ED7F5CF8;
  qword_1ED7F5CF8 = v24;

  v26 = qword_1ED7F5CF8;
  v27 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v26 setTimeZone:v27];

  v28 = qword_1ED7F5CF8;
  v29 = [MEMORY[0x1E695DF58] currentLocale];
  [v28 setLocale:v29];

  [qword_1ED7F5CF8 setDateStyle:0];
  [qword_1ED7F5CF8 setTimeStyle:1];
  [qword_1ED7F5CF8 setAMSymbol:&stru_1F5665198];
  [qword_1ED7F5CF8 setPMSymbol:&stru_1F5665198];
}

- (STStatusBarData)initWithDate:(id)date
{
  v12[3] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v5 = [STStatusBarDataDateTimeEntry entryForDateWithDateValue:dateCopy];
  v6 = [STStatusBarDataDateTimeEntry entryForTimeWithDateValue:dateCopy];
  v7 = [STStatusBarDataDateTimeEntry entryForShortTimeWithDateValue:dateCopy];

  v11[0] = @"dateEntry";
  v11[1] = @"timeEntry";
  v12[0] = v5;
  v12[1] = v6;
  v11[2] = @"shortTimeEntry";
  v12[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v9 = [(STStatusBarData *)self initWithKeysAndEntries:v8];

  return v9;
}

- (NSDate)dateFromEntries
{
  dateEntry = [(STStatusBarData *)self dateEntry];
  timeEntry = [(STStatusBarData *)self timeEntry];
  shortTimeEntry = [(STStatusBarData *)self shortTimeEntry];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = dateEntry;
LABEL_7:
    dateValue = [v6 dateValue];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = timeEntry;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = shortTimeEntry;
    goto LABEL_7;
  }

  v28 = 0;
  v29 = 0;
  v27 = 0;
  [objc_opt_class() dateFormatterForDate:&v29 time:&v28 shortTime:&v27];
  v26 = v29;
  v25 = v28;
  v24 = v27;
  stringValue = [dateEntry stringValue];
  stringValue2 = [timeEntry stringValue];
  stringValue3 = [shortTimeEntry stringValue];
  v12 = [stringValue length];
  v13 = [stringValue2 length];
  v14 = [stringValue3 length];
  v15 = v14;
  if (v12 || v13 || (dateValue = 0, v14))
  {
    if (v12)
    {
      v12 = [v26 dateFromString:stringValue];
    }

    if (v13)
    {
      v16 = v25;
      v17 = stringValue2;
    }

    else
    {
      if (!v15)
      {
        dateValue = 0;
        goto LABEL_24;
      }

      v16 = v24;
      v17 = stringValue3;
    }

    v18 = [v16 dateFromString:v17];
    dateValue = v18;
    if (v12 && v18)
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      [currentCalendar startOfDayForDate:v12];
      v19 = v22 = v12;
      v20 = [currentCalendar startOfDayForDate:dateValue];
      [dateValue timeIntervalSinceDate:v20];
      v21 = [v19 dateByAddingTimeInterval:?];

      v12 = v22;
      goto LABEL_26;
    }

LABEL_24:
    if (!v12)
    {
LABEL_27:

      goto LABEL_28;
    }

    v21 = v12;
LABEL_26:

    dateValue = v21;
    goto LABEL_27;
  }

LABEL_28:

LABEL_8:

  return dateValue;
}

- (BOOL)dateFromEntriesIncludesDate
{
  dateEntry = [(STStatusBarData *)self dateEntry];
  stringValue = [dateEntry stringValue];

  LOBYTE(dateEntry) = [stringValue length] != 0;
  return dateEntry;
}

- (BOOL)dateFromEntriesIncludesTime
{
  timeEntry = [(STStatusBarData *)self timeEntry];
  stringValue = [timeEntry stringValue];

  shortTimeEntry = [(STStatusBarData *)self shortTimeEntry];
  stringValue2 = [shortTimeEntry stringValue];

  v7 = [stringValue length];
  LOBYTE(v7) = (v7 | [stringValue2 length]) != 0;

  return v7;
}

+ (NSDateFormatter)timeFormatter
{
  v4 = 0;
  [self dateFormatterForDate:0 time:&v4 shortTime:0];
  v2 = v4;

  return v2;
}

+ (NSDateFormatter)shortTimeFormatter
{
  v4 = 0;
  [self dateFormatterForDate:0 time:0 shortTime:&v4];
  v2 = v4;

  return v2;
}

+ (NSDateFormatter)dateFormatter
{
  v4 = 0;
  [self dateFormatterForDate:&v4 time:0 shortTime:0];
  v2 = v4;

  return v2;
}

+ (STStatusBarData)staticDisplayData
{
  if (qword_1ED7F5C58 != -1)
  {
    dispatch_once(&qword_1ED7F5C58, &__block_literal_global_12);
  }

  v3 = _MergedGlobals_1;

  return v3;
}

void __36__STStatusBarData_staticDisplayData__block_invoke()
{
  v12 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v12 setMonth:1];
  [v12 setDay:9];
  [v12 setYear:2007];
  [v12 setHour:9];
  [v12 setMinute:41];
  v0 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v1 = [v0 dateFromComponents:v12];

  v2 = [(STStatusBarData *)[STMutableStatusBarData alloc] initWithDate:v1];
  LOBYTE(v11) = 0;
  LOBYTE(v10) = 0;
  BYTE2(v9) = 0;
  LOWORD(v9) = 0;
  v3 = [STStatusBarDataCellularEntry entryWithType:"entryWithType:stringValue:crossfadeStringValue:badgeStringValue:wifiCalling:callForwarding:showsSOSWhenDisabled:sosAvailable:isBootstrapCellular:status:lowDataMode:rawValue:displayValue:displayRawValue:" stringValue:5 crossfadeStringValue:@"Carrier" badgeStringValue:0 wifiCalling:0 callForwarding:0 showsSOSWhenDisabled:0 sosAvailable:v9 isBootstrapCellular:5 status:v10 lowDataMode:0 rawValue:4 displayValue:v11 displayRawValue:?];
  [(STMutableStatusBarData *)v2 setCellularEntry:v3];

  v4 = [STStatusBarDataWifiEntry entryWithType:0 status:5 lowDataMode:0 rawValue:0 displayValue:3 displayRawValue:0];
  [(STMutableStatusBarData *)v2 setWifiEntry:v4];

  v5 = [MEMORY[0x1E696ADA0] localizedStringFromNumber:&unk_1F5678618 numberStyle:3];
  v6 = [STStatusBarDataBatteryEntry entryWithCapacity:100 state:0 saverMode:0 prominentlyShowsDetailString:0 detailString:v5];
  [(STMutableStatusBarData *)v2 setMainBatteryEntry:v6];

  v7 = [(STMutableStatusBarData *)v2 immutableCopy];
  v8 = _MergedGlobals_1;
  _MergedGlobals_1 = v7;
}

uint64_t __28__STStatusBarData_entryKeys__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"timeEntry", @"shortTimeEntry", @"dateEntry", @"personNameEntry", @"deviceNameEntry", @"cellularEntry", @"secondaryCellularEntry", @"wifiEntry", @"mainBatteryEntry", @"bluetoothEntry", @"externalCellularEntry", @"externalWifiEntry", @"externalBluetoothEntry", @"externalPrivacyEntry", @"thermalEntry", @"activityEntry", @"tetheringEntry", @"lockEntry", @"quietModeEntry", @"electronicTollCollectionEntry", @"rotationLockEntry", @"locationEntry", @"airplaneModeEntry", @"ttyEntry", @"assistantEntry", @"studentEntry", @"vpnEntry", @"liquidDetectionEntry", @"displayWarningEntry", @"voiceControlEntry", @"airPlayEntry", @"carPlayEntry", @"alarmEntry", @"satelliteEntry", @"sensorActivityEntry", @"radarEntry", @"announceNotificationsEntry", @"volumeEntry", @"backgroundActivityEntry", @"backNavigationEntry", @"forwardNavigationEntry", @"controlCenterEntry", @"ringerSilenceEntry", @"weatherEntry", @"additionalEntries", 0}];
  v1 = qword_1ED7F5C60;
  qword_1ED7F5C60 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (unint64_t)hash
{
  v18 = *MEMORY[0x1E69E9840];
  builder = [MEMORY[0x1E698E6B8] builder];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  entryKeys = [objc_opt_class() entryKeys];
  v5 = [entryKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(entryKeys);
        }

        v9 = [(STStatusBarData *)self valueForKey:*(*(&v13 + 1) + 8 * v8)];
        if (v9)
        {
          v10 = [builder appendObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [entryKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [builder hash];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v17 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  entryKeys = [objc_opt_class() entryKeys];
  v6 = [entryKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(entryKeys);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [(STStatusBarData *)self valueForKey:v10];
        if (v11)
        {
          [coderCopy encodeObject:v11 forKey:v10];
        }
      }

      v7 = [entryKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (STStatusBarData)initWithCoder:(id)coder
{
  v26 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = STStatusBarData;
  v5 = [(STStatusBarData *)&v24 init];
  v6 = objc_alloc_init(STMutableStatusBarData);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [objc_opt_class() entryKeys];
  v7 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    v10 = @"satelliteEntry";
    v18 = coderCopy;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v12];
        if (v13)
        {
          v14 = v13;
          if ([(__CFString *)v10 isEqualToString:v12])
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v15 = v10;
              if ([v14 isEnabled])
              {
                [STStatusBarDataSatelliteEntry entryWithConnectionStatus:1];
              }

              else
              {
                +[(STStatusBarDataEntry *)STStatusBarDataSatelliteEntry];
              }
              v16 = ;

              v14 = v16;
              v10 = v15;
              coderCopy = v18;
            }
          }

          [(STMutableStatusBarData *)v6 setEntry:v14 forKey:v12];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  _copyValuesFromDataToData(&v6->super.super.isa, &v5->super.isa);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v24 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  if ((isKindOfClass ^ objc_opt_isKindOfClass()))
  {
    v6 = 0;
  }

  else
  {
    v7 = equalCopy;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    entryKeys = [objc_opt_class() entryKeys];
    v9 = [entryKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(entryKeys);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [(STStatusBarData *)self valueForKey:v13];
          v15 = [v7 valueForKey:v13];
          v16 = v15;
          if (v14 | v15)
          {
            v17 = !v14 || v15 == 0;
            if (v17 || (([v14 isEnabled] & 1) != 0 || objc_msgSend(v16, "isEnabled")) && (BSEqualObjects() & 1) == 0)
            {

              v6 = 0;
              goto LABEL_20;
            }
          }
        }

        v10 = [entryKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v6 = 1;
LABEL_20:
  }

  return v6;
}

- (STStatusBarData)initWithEntry:(id)entry forKey:(id)key
{
  v10.receiver = self;
  v10.super_class = STStatusBarData;
  keyCopy = key;
  entryCopy = entry;
  v7 = [(STStatusBarData *)&v10 init];
  v8 = objc_alloc_init(STMutableStatusBarData);
  [(STMutableStatusBarData *)v8 setEntry:entryCopy forKey:keyCopy, v10.receiver, v10.super_class];

  _copyValuesFromDataToData(&v8->super.super.isa, &v7->super.isa);
  return v7;
}

- (STStatusBarData)initWithKeysAndEntries:(id)entries
{
  v21 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  v19.receiver = self;
  v19.super_class = STStatusBarData;
  v5 = [(STStatusBarData *)&v19 init];
  v6 = objc_alloc_init(STMutableStatusBarData);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = entriesCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:{v12, v15}];
        if (v13)
        {
          [(STMutableStatusBarData *)v6 setEntry:v13 forKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v9);
  }

  _copyValuesFromDataToData(&v6->super.super.isa, &v5->super.isa);
  return v5;
}

- (id)dataByApplyingOverlay:(id)overlay
{
  v22 = *MEMORY[0x1E69E9840];
  overlayCopy = overlay;
  v5 = overlayCopy;
  if (overlayCopy && overlayCopy != self)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    existingEntryKeys = [(STStatusBarData *)overlayCopy existingEntryKeys];
    v7 = [existingEntryKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(existingEntryKeys);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [(STStatusBarData *)self valueForKey:v12];

          if (v13)
          {
            if (!v9)
            {
              v9 = [(STStatusBarData *)self mutableCopy];
            }

            v14 = [(STStatusBarData *)v5 valueForKey:v12];
            [v9 setEntry:v14 forKey:v12];
          }
        }

        v8 = [existingEntryKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);

      if (v9)
      {
        selfCopy = _STStatusBarDataMatchingMutabilityOfData(v9, self);

        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (id)dataByApplyingUpdate:(id)update keys:(id)keys
{
  v24 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  keysCopy = keys;
  v8 = objc_alloc_init(STMutableStatusBarData);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = keysCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [updateCopy valueForKey:{v14, v19}];
        if (!v15)
        {
          v15 = [(STStatusBarData *)self valueForKey:v14];
          if (!v15)
          {
            continue;
          }
        }

        v16 = v15;
        [(STMutableStatusBarData *)v8 setEntry:v15 forKey:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v17 = _STStatusBarDataMatchingMutabilityOfData(v8, self);

  return v17;
}

- (id)updateFromData:(id)data
{
  dataCopy = data;
  v5 = [(STStatusBarData *)self mutableCopy];
  [v5 makeUpdateFromData:dataCopy];

  v6 = _STStatusBarDataMatchingMutabilityOfData(v5, self);

  return v6;
}

- (id)dataByRemovingEntriesForKeys:(id)keys
{
  v18 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v5 = [(STStatusBarData *)self mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = keysCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 setEntry:0 forKey:{*(*(&v13 + 1) + 8 * i), v13}];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = _STStatusBarDataMatchingMutabilityOfData(v5, self);

  return v11;
}

- (id)dataByReplacingEntry:(id)entry forKey:(id)key
{
  keyCopy = key;
  entryCopy = entry;
  v8 = [(STStatusBarData *)self mutableCopy];
  [v8 setEntry:entryCopy forKey:keyCopy];

  v9 = _STStatusBarDataMatchingMutabilityOfData(v8, self);

  return v9;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STStatusBarData *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusBarData *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusBarData *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug
{
  debugCopy = debug;
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(STStatusBarData *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder setUseDebugDescription:debugCopy];
  [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];

  activeMultilinePrefix = [succinctDescriptionBuilder activeMultilinePrefix];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__STStatusBarData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
  v13[3] = &unk_1E85DDD00;
  v13[4] = self;
  v9 = succinctDescriptionBuilder;
  v14 = v9;
  [v9 appendBodySectionWithName:@"entries" multilinePrefix:activeMultilinePrefix block:v13];

  v10 = v14;
  v11 = v9;

  return v9;
}

void __67__STStatusBarData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [objc_opt_class() entryKeys];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [*(a1 + 32) valueForKey:v7];
        if (v8)
        {
          v9 = [*(a1 + 40) appendObject:v8 withName:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)_internal_setValue:(id)value forKey:(id)key
{
  v4.receiver = self;
  v4.super_class = STStatusBarData;
  [(STStatusBarData *)&v4 setValue:value forKey:key];
}

- (void)setValue:(id)value forKey:(id)key
{
  v4.receiver = self;
  v4.super_class = STStatusBarData;
  [(STStatusBarData *)&v4 setValue:value forKey:key];
}

- (id)entryForKey:(id)key
{
  v5.receiver = self;
  v5.super_class = STStatusBarData;
  v3 = [(STStatusBarData *)&v5 valueForKey:key];

  return v3;
}

- (STStatusBarDataPersonNameEntry)avatarEntry
{
  if (objc_opt_respondsToSelector())
  {
    v3 = self->_personNameEntry;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end
@interface ASProtocolCapabilities
- (ASProtocolCapabilities)initWithProtocolVersionString:(id)string;
- (id)_abConstraintsPlistPath;
- (id)_calConstraintsPlistPath;
- (id)addressBookConstraintsPath;
- (id)calendarConstraintsPath;
@end

@implementation ASProtocolCapabilities

- (ASProtocolCapabilities)initWithProtocolVersionString:(id)string
{
  v12 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (([stringCopy isEqualToString:@"16.1"] & 1) == 0 && (objc_msgSend(stringCopy, "isEqualToString:", @"16.0") & 1) == 0 && (objc_msgSend(stringCopy, "isEqualToString:", @"14.1") & 1) == 0 && (objc_msgSend(stringCopy, "isEqualToString:", @"14.0") & 1) == 0)
  {
    [stringCopy isEqualToString:@"12.1"];
  }

  v5 = objc_opt_class();
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_24A0AC000, v6, v7, "Capabilities set to %@", &v10, 0xCu);
  }

  v8 = objc_opt_new();
  return v8;
}

- (id)_calConstraintsPlistPath
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"EAS25CalendarConstraints" ofType:@"plist"];

  return v3;
}

- (id)calendarConstraintsPath
{
  calConstraintsPlistPath = self->_calConstraintsPlistPath;
  if (!calConstraintsPlistPath)
  {
    _calConstraintsPlistPath = [(ASProtocolCapabilities *)self _calConstraintsPlistPath];
    v5 = [_calConstraintsPlistPath copy];
    v6 = self->_calConstraintsPlistPath;
    self->_calConstraintsPlistPath = v5;

    calConstraintsPlistPath = self->_calConstraintsPlistPath;
  }

  return calConstraintsPlistPath;
}

- (id)_abConstraintsPlistPath
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"EASContactsConstraints" ofType:@"plist"];

  return v3;
}

- (id)addressBookConstraintsPath
{
  abConstraintsPlistPath = self->_abConstraintsPlistPath;
  if (!abConstraintsPlistPath)
  {
    _abConstraintsPlistPath = [(ASProtocolCapabilities *)self _abConstraintsPlistPath];
    v5 = [_abConstraintsPlistPath copy];
    v6 = self->_abConstraintsPlistPath;
    self->_abConstraintsPlistPath = v5;

    abConstraintsPlistPath = self->_abConstraintsPlistPath;
  }

  return abConstraintsPlistPath;
}

@end
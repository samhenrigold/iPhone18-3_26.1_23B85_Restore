@interface CLFBaseCommunicationLimitSettings
- (BOOL)requiresMoreRestrictiveOutgoingCommunicationLimit;
- (NSString)legacyIncomingCommunicationLimit;
- (NSString)legacyOutgoingCommunicationLimit;
- (id)outgoingCommunicationLimit;
- (void)migrateCommunicationLimitsIfNecessary;
- (void)setIncomingCommunicationLimit:(id)limit;
- (void)setLegacyIncomingCommunicationLimit:(id)limit;
- (void)setOutgoingCommunicationLimit:(id)limit;
@end

@implementation CLFBaseCommunicationLimitSettings

- (void)setIncomingCommunicationLimit:(id)limit
{
  v14 = *MEMORY[0x1E69E9840];
  limitCopy = limit;
  v9.receiver = self;
  v9.super_class = CLFBaseCommunicationLimitSettings;
  [(CLFBaseCommunicationLimitSettings_GeneratedCode *)&v9 setIncomingCommunicationLimit:limitCopy];
  if ([(CLFBaseCommunicationLimitSettings *)self requiresMoreRestrictiveOutgoingCommunicationLimit])
  {
    outgoingCommunicationLimit = [(CLFBaseCommunicationLimitSettings *)self outgoingCommunicationLimit];
    v6 = [outgoingCommunicationLimit isLessRestrictiveThanCommunicationLimit:limitCopy];

    if (v6)
    {
      v7 = +[CLFLog commonLog];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        outgoingCommunicationLimit2 = [(CLFBaseCommunicationLimitSettings *)self outgoingCommunicationLimit];
        *buf = 138412546;
        v11 = outgoingCommunicationLimit2;
        v12 = 2112;
        v13 = limitCopy;
        _os_log_impl(&dword_1E115B000, v7, OS_LOG_TYPE_DEFAULT, "Updating outgoing communication limit %@ to be at least as restrictive as incoming communication limit %@.", buf, 0x16u);
      }

      [(CLFBaseCommunicationLimitSettings *)self setOutgoingCommunicationLimit:limitCopy];
    }
  }
}

- (id)outgoingCommunicationLimit
{
  [(CLFBaseCommunicationLimitSettings *)self migrateCommunicationLimitsIfNecessary];
  v5.receiver = self;
  v5.super_class = CLFBaseCommunicationLimitSettings;
  outgoingCommunicationLimit = [(CLFBaseCommunicationLimitSettings_GeneratedCode *)&v5 outgoingCommunicationLimit];

  return outgoingCommunicationLimit;
}

- (void)setOutgoingCommunicationLimit:(id)limit
{
  limitCopy = limit;
  if (-[CLFBaseCommunicationLimitSettings requiresMoreRestrictiveOutgoingCommunicationLimit](self, "requiresMoreRestrictiveOutgoingCommunicationLimit") && (-[CLFBaseCommunicationLimitSettings_GeneratedCode incomingCommunicationLimit](self, "incomingCommunicationLimit"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [limitCopy isLessRestrictiveThanCommunicationLimit:v5], v5, v6))
  {
    v7 = +[CLFLog commonLog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(CLFBaseCommunicationLimitSettings(Additions) *)limitCopy setOutgoingCommunicationLimit:v7];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CLFBaseCommunicationLimitSettings;
    [(CLFBaseCommunicationLimitSettings_GeneratedCode *)&v8 setOutgoingCommunicationLimit:limitCopy];
  }
}

- (NSString)legacyIncomingCommunicationLimit
{
  v4.receiver = self;
  v4.super_class = CLFBaseCommunicationLimitSettings;
  incomingCommunicationLimit = [(CLFBaseCommunicationLimitSettings_GeneratedCode *)&v4 incomingCommunicationLimit];

  return incomingCommunicationLimit;
}

- (void)setLegacyIncomingCommunicationLimit:(id)limit
{
  v3.receiver = self;
  v3.super_class = CLFBaseCommunicationLimitSettings;
  [(CLFBaseCommunicationLimitSettings_GeneratedCode *)&v3 setIncomingCommunicationLimit:limit];
}

- (void)migrateCommunicationLimitsIfNecessary
{
  if ([(CLFBaseCommunicationLimitSettings_GeneratedCode *)self needsMigrationFor117558856])
  {
    legacyOutgoingCommunicationLimit = [(CLFBaseCommunicationLimitSettings *)self legacyOutgoingCommunicationLimit];
    [(CLFBaseCommunicationLimitSettings *)self setOutgoingCommunicationLimit:legacyOutgoingCommunicationLimit];
    [(CLFBaseCommunicationLimitSettings_GeneratedCode *)self setNeedsMigrationFor117558856:0];
  }
}

- (BOOL)requiresMoreRestrictiveOutgoingCommunicationLimit
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 1;
}

- (NSString)legacyOutgoingCommunicationLimit
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return @"selectedContacts";
}

@end
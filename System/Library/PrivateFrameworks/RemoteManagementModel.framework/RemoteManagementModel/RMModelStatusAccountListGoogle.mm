@interface RMModelStatusAccountListGoogle
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier;
+ (id)buildWithIdentifier:(id)identifier removed:(id)removed declarationIdentifier:(id)declarationIdentifier visibleName:(id)name username:(id)username isMailEnabled:(id)enabled areCalendarsEnabled:(id)calendarsEnabled areContactsEnabled:(id)self0 areNotesEnabled:(id)self1;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelStatusAccountListGoogle

+ (NSSet)allowedStatusKeys
{
  v6[9] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"identifier";
  v6[1] = @"_removed";
  v6[2] = @"declaration-identifier";
  v6[3] = @"visible-name";
  v6[4] = @"username";
  v6[5] = @"is-mail-enabled";
  v6[6] = @"are-calendars-enabled";
  v6[7] = @"are-contacts-enabled";
  v6[8] = @"are-notes-enabled";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:9];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)buildWithIdentifier:(id)identifier removed:(id)removed declarationIdentifier:(id)declarationIdentifier visibleName:(id)name username:(id)username isMailEnabled:(id)enabled areCalendarsEnabled:(id)calendarsEnabled areContactsEnabled:(id)self0 areNotesEnabled:(id)self1
{
  notesEnabledCopy = notesEnabled;
  contactsEnabledCopy = contactsEnabled;
  calendarsEnabledCopy = calendarsEnabled;
  enabledCopy = enabled;
  usernameCopy = username;
  nameCopy = name;
  declarationIdentifierCopy = declarationIdentifier;
  removedCopy = removed;
  identifierCopy = identifier;
  v25 = objc_opt_new();
  [v25 setStatusIdentifier:identifierCopy];

  if (removedCopy)
  {
    v26 = removedCopy;
  }

  else
  {
    v26 = MEMORY[0x277CBEC28];
  }

  [v25 setStatusRemoved:v26];

  [v25 setStatusDeclarationIdentifier:declarationIdentifierCopy];
  [v25 setStatusVisibleName:nameCopy];

  [v25 setStatusUsername:usernameCopy];
  [v25 setStatusIsMailEnabled:enabledCopy];

  [v25 setStatusAreCalendarsEnabled:calendarsEnabledCopy];
  [v25 setStatusAreContactsEnabled:contactsEnabledCopy];

  [v25 setStatusAreNotesEnabled:notesEnabledCopy];

  return v25;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_new();
  [v4 setStatusIdentifier:identifierCopy];

  return v4;
}

+ (id)supportedOS
{
  v21[4] = *MEMORY[0x277D85DE8];
  v20[0] = &unk_28746BE40;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468210];
  v19[0] = v15;
  v14 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468228];
  v19[1] = v14;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v21[0] = v13;
  v20[1] = &unk_28746BE88;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468240];
  v18[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468258];
  v18[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v21[1] = v4;
  v20[2] = &unk_28746BE58;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468270];
  v17[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468288];
  v17[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v21[2] = v7;
  v20[3] = &unk_28746BEA0;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874682A0];
  v16[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874682B8];
  v16[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v21[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelStatusAccountListGoogle allowedStatusKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"identifier" forKeyPath:@"statusIdentifier" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"_removed" forKeyPath:@"statusRemoved" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"declaration-identifier" forKeyPath:@"statusDeclarationIdentifier" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"visible-name" forKeyPath:@"statusVisibleName" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"username" forKeyPath:@"statusUsername" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"is-mail-enabled" forKeyPath:@"statusIsMailEnabled" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"are-calendars-enabled" forKeyPath:@"statusAreCalendarsEnabled" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"are-contacts-enabled" forKeyPath:@"statusAreContactsEnabled" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"are-notes-enabled" forKeyPath:@"statusAreNotesEnabled" isRequired:0 defaultValue:0 error:error];
  return v13;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  statusIdentifier = [(RMModelStatusAccountListGoogle *)self statusIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"identifier" value:statusIdentifier isRequired:1 defaultValue:0];

  statusRemoved = [(RMModelStatusAccountListGoogle *)self statusRemoved];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"_removed" value:statusRemoved isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  statusDeclarationIdentifier = [(RMModelStatusAccountListGoogle *)self statusDeclarationIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"declaration-identifier" value:statusDeclarationIdentifier isRequired:0 defaultValue:0];

  statusVisibleName = [(RMModelStatusAccountListGoogle *)self statusVisibleName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"visible-name" value:statusVisibleName isRequired:0 defaultValue:0];

  statusUsername = [(RMModelStatusAccountListGoogle *)self statusUsername];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"username" value:statusUsername isRequired:0 defaultValue:0];

  statusIsMailEnabled = [(RMModelStatusAccountListGoogle *)self statusIsMailEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"is-mail-enabled" value:statusIsMailEnabled isRequired:0 defaultValue:0];

  statusAreCalendarsEnabled = [(RMModelStatusAccountListGoogle *)self statusAreCalendarsEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"are-calendars-enabled" value:statusAreCalendarsEnabled isRequired:0 defaultValue:0];

  statusAreContactsEnabled = [(RMModelStatusAccountListGoogle *)self statusAreContactsEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"are-contacts-enabled" value:statusAreContactsEnabled isRequired:0 defaultValue:0];

  statusAreNotesEnabled = [(RMModelStatusAccountListGoogle *)self statusAreNotesEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"are-notes-enabled" value:statusAreNotesEnabled isRequired:0 defaultValue:0];

  v14 = [v4 copy];

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24.receiver = self;
  v24.super_class = RMModelStatusAccountListGoogle;
  v4 = [(RMModelPayloadBase *)&v24 copyWithZone:zone];
  v5 = [(NSString *)self->_statusIdentifier copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSNumber *)self->_statusRemoved copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_statusDeclarationIdentifier copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_statusVisibleName copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSString *)self->_statusUsername copy];
  v14 = v4[6];
  v4[6] = v13;

  v15 = [(NSNumber *)self->_statusIsMailEnabled copy];
  v16 = v4[7];
  v4[7] = v15;

  v17 = [(NSNumber *)self->_statusAreCalendarsEnabled copy];
  v18 = v4[8];
  v4[8] = v17;

  v19 = [(NSNumber *)self->_statusAreContactsEnabled copy];
  v20 = v4[9];
  v4[9] = v19;

  v21 = [(NSNumber *)self->_statusAreNotesEnabled copy];
  v22 = v4[10];
  v4[10] = v21;

  return v4;
}

@end
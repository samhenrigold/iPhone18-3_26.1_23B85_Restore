@interface DNDMutableSenderConfiguration
- (void)removeAllowedContactMatchingContact:(id)contact;
- (void)removeDeniedContactMatchingContact:(id)contact;
- (void)setAllowedContactGroups:(id)groups;
- (void)setAllowedContactTypes:(id)types;
- (void)setAllowedContacts:(id)contacts;
- (void)setDeniedContactGroups:(id)groups;
- (void)setDeniedContactTypes:(id)types;
- (void)setDeniedContacts:(id)contacts;
- (void)setPhoneCallBypassSettings:(id)settings;
@end

@implementation DNDMutableSenderConfiguration

- (void)setAllowedContactTypes:(id)types
{
  v4 = [types mutableCopy];
  allowedContactTypes = self->super._allowedContactTypes;
  self->super._allowedContactTypes = v4;

  MEMORY[0x2821F96F8](v4, allowedContactTypes);
}

- (void)setDeniedContactTypes:(id)types
{
  v4 = [types mutableCopy];
  deniedContactTypes = self->super._deniedContactTypes;
  self->super._deniedContactTypes = v4;

  MEMORY[0x2821F96F8](v4, deniedContactTypes);
}

- (void)setAllowedContactGroups:(id)groups
{
  v4 = [groups mutableCopy];
  allowedContactGroups = self->super._allowedContactGroups;
  self->super._allowedContactGroups = v4;

  MEMORY[0x2821F96F8](v4, allowedContactGroups);
}

- (void)setDeniedContactGroups:(id)groups
{
  v4 = [groups mutableCopy];
  deniedContactGroups = self->super._deniedContactGroups;
  self->super._deniedContactGroups = v4;

  MEMORY[0x2821F96F8](v4, deniedContactGroups);
}

- (void)setAllowedContacts:(id)contacts
{
  v4 = [contacts mutableCopy];
  allowedContacts = self->super._allowedContacts;
  self->super._allowedContacts = v4;

  MEMORY[0x2821F96F8](v4, allowedContacts);
}

- (void)setDeniedContacts:(id)contacts
{
  v4 = [contacts mutableCopy];
  deniedContacts = self->super._deniedContacts;
  self->super._deniedContacts = v4;

  MEMORY[0x2821F96F8](v4, deniedContacts);
}

- (void)setPhoneCallBypassSettings:(id)settings
{
  v4 = [settings copy];
  phoneCallBypassSettings = self->super._phoneCallBypassSettings;
  self->super._phoneCallBypassSettings = v4;

  MEMORY[0x2821F96F8](v4, phoneCallBypassSettings);
}

- (void)removeAllowedContactMatchingContact:(id)contact
{
  v17 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->super._allowedContacts;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      if ([contactCopy matchesContact:{v10, v12}])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v11 = v10;

    if (!v11)
    {
      goto LABEL_13;
    }

    [(NSMutableSet *)self->super._allowedContacts removeObject:v11];
    v5 = v11;
  }

LABEL_12:

LABEL_13:
}

- (void)removeDeniedContactMatchingContact:(id)contact
{
  v17 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->super._deniedContacts;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      if ([contactCopy matchesContact:{v10, v12}])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v11 = v10;

    if (!v11)
    {
      goto LABEL_13;
    }

    [(NSMutableSet *)self->super._deniedContacts removeObject:v11];
    v5 = v11;
  }

LABEL_12:

LABEL_13:
}

@end
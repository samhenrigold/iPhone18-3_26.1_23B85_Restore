@interface MediaSession
- (BOOL)isRegisteredForAttributeID:(unsigned __int8)d entityID:(unsigned __int8)iD;
- (MediaSession)init;
- (id)lastKnownAttributeValueForAttributeID:(unsigned __int8)d entityID:(unsigned __int8)iD;
- (id)notifiableAttributeIDs:(id)ds entityID:(unsigned __int8)d;
- (id)registrationForAttributeID:(unsigned __int8)d entityID:(unsigned __int8)iD;
- (void)setLastKnownAttributeValue:(id)value attributeID:(unsigned __int8)d entityID:(unsigned __int8)iD;
- (void)setRegisteredAttributeIDs:(id)ds entityID:(unsigned __int8)d;
@end

@implementation MediaSession

- (MediaSession)init
{
  v6.receiver = self;
  v6.super_class = MediaSession;
  v2 = [(MediaSession *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    registrations = v2->_registrations;
    v2->_registrations = v3;

    v2->_loadedEntityID = -1;
    v2->_loadedAttributeID = -1;
  }

  return v2;
}

- (void)setRegisteredAttributeIDs:(id)ds entityID:(unsigned __int8)d
{
  dCopy = d;
  dsCopy = ds;
  v7 = [dsCopy count];
  registrations = [(MediaSession *)self registrations];
  v9 = [NSNumber numberWithUnsignedChar:dCopy];
  if (v7)
  {
    v24 = dCopy;
    v10 = [registrations objectForKeyedSubscript:v9];

    v11 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [dsCopy count]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = dsCopy;
    v12 = dsCopy;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          v18 = [v10 objectForKeyedSubscript:v17];
          v19 = v18;
          if (v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = objc_alloc_init(MediaRegistration);
          }

          v21 = v20;

          [v11 setObject:v21 forKeyedSubscript:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v14);
    }

    registrations2 = [(MediaSession *)self registrations];
    v23 = [NSNumber numberWithUnsignedChar:v24];
    [registrations2 setObject:v11 forKeyedSubscript:v23];

    dsCopy = v25;
  }

  else
  {
    [registrations removeObjectForKey:v9];
  }
}

- (id)notifiableAttributeIDs:(id)ds entityID:(unsigned __int8)d
{
  dCopy = d;
  dsCopy = ds;
  registrations = [(MediaSession *)self registrations];
  v8 = [NSNumber numberWithUnsignedChar:dCopy];
  v9 = [registrations objectForKeyedSubscript:v8];

  v10 = +[NSMutableSet set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = dsCopy;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        v17 = [v9 objectForKeyedSubscript:{v16, v19}];
        if (v17)
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  return v10;
}

- (BOOL)isRegisteredForAttributeID:(unsigned __int8)d entityID:(unsigned __int8)iD
{
  v4 = [(MediaSession *)self registrationForAttributeID:d entityID:iD];
  v5 = v4 != 0;

  return v5;
}

- (void)setLastKnownAttributeValue:(id)value attributeID:(unsigned __int8)d entityID:(unsigned __int8)iD
{
  iDCopy = iD;
  dCopy = d;
  valueCopy = value;
  v9 = [(MediaSession *)self registrationForAttributeID:dCopy entityID:iDCopy];
  [v9 setLastKnownAttributeValue:valueCopy];
}

- (id)lastKnownAttributeValueForAttributeID:(unsigned __int8)d entityID:(unsigned __int8)iD
{
  v4 = [(MediaSession *)self registrationForAttributeID:d entityID:iD];
  lastKnownAttributeValue = [v4 lastKnownAttributeValue];

  return lastKnownAttributeValue;
}

- (id)registrationForAttributeID:(unsigned __int8)d entityID:(unsigned __int8)iD
{
  iDCopy = iD;
  dCopy = d;
  registrations = [(MediaSession *)self registrations];
  v7 = [NSNumber numberWithUnsignedChar:iDCopy];
  v8 = [registrations objectForKeyedSubscript:v7];
  v9 = [NSNumber numberWithUnsignedChar:dCopy];
  v10 = [v8 objectForKeyedSubscript:v9];

  return v10;
}

@end
@interface TMLAspectsRegistration
+ (id)keyForClassNamed:(id)named signalName:(id)name advice:(int)advice;
+ (id)keyForProtocolNamed:(id)named signalName:(id)name advice:(int)advice;
+ (id)keysForObject:(id)object withMetaObjects:(id)objects signalName:(id)name advice:(int)advice;
+ (id)shared;
- (TMLAspectsRegistration)init;
- (id)aspectsForObject:(id)object signalName:(id)name advice:(int)advice;
- (id)aspectsWithKeys:(id)keys;
- (id)storageForKey:(id)key createIfMissing:(BOOL)missing;
- (id)strongAspectsFromArray:(id)array;
- (void)registerAspect:(id)aspect withKey:(id)key;
- (void)unregisterAspect:(id)aspect withKey:(id)key;
@end

@implementation TMLAspectsRegistration

+ (id)shared
{
  if (qword_2806D9060 != -1)
  {
    sub_26F200B78();
  }

  v3 = qword_2806D9058;

  return v3;
}

- (TMLAspectsRegistration)init
{
  v6.receiver = self;
  v6.super_class = TMLAspectsRegistration;
  v2 = [(TMLAspectsRegistration *)&v6 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    registeredAspects = v2->_registeredAspects;
    v2->_registeredAspects = strongToStrongObjectsMapTable;
  }

  return v2;
}

- (id)storageForKey:(id)key createIfMissing:(BOOL)missing
{
  missingCopy = missing;
  keyCopy = key;
  v7 = [(NSMapTable *)self->_registeredAspects objectForKey:keyCopy];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !missingCopy;
  }

  if (!v8)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    [(NSMapTable *)self->_registeredAspects setObject:v7 forKey:keyCopy];
  }

  return v7;
}

- (void)registerAspect:(id)aspect withKey:(id)key
{
  aspectCopy = aspect;
  v8 = [(TMLAspectsRegistration *)self storageForKey:key createIfMissing:1];
  v7 = [TMLWeakReferenceObject weakReferenceWithObject:aspectCopy];

  [v8 addObject:v7];
}

- (void)unregisterAspect:(id)aspect withKey:(id)key
{
  v24 = *MEMORY[0x277D85DE8];
  aspectCopy = aspect;
  keyCopy = key;
  v8 = [(TMLAspectsRegistration *)self storageForKey:keyCopy createIfMissing:0];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  selfCopy = self;
  v11 = 0;
  v12 = *v20;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v19 + 1) + 8 * i);
      object = [v14 object];
      v16 = object;
      if (object)
      {
        v17 = object == aspectCopy;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        if (!v11)
        {
          v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
        }

        [v11 addObject:v14];
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v10);
  self = selfCopy;
  if (v11)
  {
    [(NSMapTable *)selfCopy->_registeredAspects setObject:v11 forKey:keyCopy];
  }

  else
  {
LABEL_17:
    [(NSMapTable *)self->_registeredAspects removeObjectForKey:keyCopy];
  }
}

- (id)strongAspectsFromArray:(id)array
{
  arrayCopy = array;
  if ([arrayCopy count])
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(arrayCopy, "count")}];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_26F1972A0;
    v8[3] = &unk_279DC5758;
    v9 = v4;
    v5 = v4;
    [arrayCopy enumerateObjectsUsingBlock:v8];
    v6 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
  }

  else
  {
    v6 = arrayCopy;
  }

  return v6;
}

- (id)aspectsWithKeys:(id)keys
{
  v18 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [keysCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(keysCopy);
        }

        v10 = [(TMLAspectsRegistration *)self aspectsWithKey:*(*(&v13 + 1) + 8 * i)];
        if ([v10 count])
        {
          if (!v7)
          {
            v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
          }

          [v7 addObjectsFromArray:v10];
        }
      }

      v6 = [keysCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if ([v7 count])
  {
    v11 = [(TMLAspectsRegistration *)self strongAspectsFromArray:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)aspectsForObject:(id)object signalName:(id)name advice:(int)advice
{
  v5 = *&advice;
  objectCopy = object;
  nameCopy = name;
  if ([(NSMapTable *)self->_registeredAspects count])
  {
    metaObjects = [objectCopy metaObjects];
    v11 = [TMLAspectsRegistration keysForObject:objectCopy withMetaObjects:metaObjects signalName:nameCopy advice:v5];
    v12 = [(TMLAspectsRegistration *)self aspectsWithKeys:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)keyForProtocolNamed:(id)named signalName:(id)name advice:(int)advice
{
  v7 = MEMORY[0x277CCAB68];
  nameCopy = name;
  namedCopy = named;
  v10 = [v7 stringWithString:@"P"];
  [v10 appendString:namedCopy];

  [v10 appendString:@"."];
  [v10 appendString:nameCopy];

  [v10 appendString:@":"];
  if (advice)
  {
    v11 = @"A";
  }

  else
  {
    v11 = @"B";
  }

  [v10 appendString:v11];
  v12 = [MEMORY[0x277CCACA8] stringWithString:v10];

  return v12;
}

+ (id)keyForClassNamed:(id)named signalName:(id)name advice:(int)advice
{
  v7 = MEMORY[0x277CCAB68];
  nameCopy = name;
  namedCopy = named;
  v10 = [v7 stringWithString:@"C"];
  [v10 appendString:namedCopy];

  [v10 appendString:@"."];
  [v10 appendString:nameCopy];

  [v10 appendString:@":"];
  if (advice)
  {
    v11 = @"A";
  }

  else
  {
    v11 = @"B";
  }

  [v10 appendString:v11];
  v12 = [MEMORY[0x277CCACA8] stringWithString:v10];

  return v12;
}

+ (id)keysForObject:(id)object withMetaObjects:(id)objects signalName:(id)name advice:(int)advice
{
  v6 = *&advice;
  v48 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objectsCopy = objects;
  nameCopy = name;
  v12 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:4];
  v13 = 0x282042000uLL;
  v14 = [TMLAspectsRegistration keyForClassNamed:@"*" signalName:nameCopy advice:v6];
  [v12 addObject:v14];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v15 = objectsCopy;
  v37 = [v15 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (!v37)
  {

LABEL_20:
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = [v13 + 3656 keyForClassNamed:v29 signalName:nameCopy advice:v6];
    [v12 addObject:v30];

    goto LABEL_21;
  }

  v33 = objectCopy;
  obj = v15;
  v35 = 0;
  v36 = *v43;
  do
  {
    for (i = 0; i != v37; ++i)
    {
      if (*v43 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v42 + 1) + 8 * i);
      type = [v17 type];

      if (type)
      {
        v19 = objc_opt_class();
        type2 = [v17 type];
        v21 = [v19 keyForClassNamed:type2 signalName:nameCopy advice:v6];
        [v12 addObject:v21];

        v35 = 1;
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      implements = [v17 implements];
      v23 = [implements countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v39;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v39 != v25)
            {
              objc_enumerationMutation(implements);
            }

            v27 = [objc_opt_class() keyForProtocolNamed:*(*(&v38 + 1) + 8 * j) signalName:nameCopy advice:v6];
            [v12 addObject:v27];
          }

          v24 = [implements countByEnumeratingWithState:&v38 objects:v46 count:16];
        }

        while (v24);
      }
    }

    v15 = obj;
    v37 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  }

  while (v37);

  objectCopy = v33;
  v13 = 0x282042000;
  if ((v35 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  array = [v12 array];

  return array;
}

@end
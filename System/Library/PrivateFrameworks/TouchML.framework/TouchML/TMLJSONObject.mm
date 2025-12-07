@interface TMLJSONObject
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
+ (id)tmlPropertyWithKeyPath:(id)path;
- (BOOL)internalSetJSON:(id)n;
- (TMLJSONObject)initWithSchema:(id)schema json:(id)json;
- (id)copyWithZone:(_NSZone *)zone;
- (id)rawValueForKeyPath:(id)path dictionary:(id)dictionary;
- (id)valueForKey:(id)key;
- (id)valueForKeyPath:(id)path;
- (void)internalValidateJSON:(id)n completion:(id)completion;
- (void)notifyAllObservers;
- (void)setDATA:(id)a;
- (void)setSTRING:(id)g;
- (void)tmlAddObserver:(id)observer forKeyPath:(id)path callback:(id)callback;
- (void)tmlRemoveObserver:(id)observer forKeyPath:(id)path;
- (void)validateJSON:(id)n completion:(id)completion;
@end

@implementation TMLJSONObject

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"rawJSON"])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [keyCopy isEqualToString:@"SCHEMA"] ^ 1;
  }

  return v4;
}

+ (id)tmlPropertyWithKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"rawJSON"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"SCHEMA") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"DATA") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"STRING"))
  {
    v4 = 0;
  }

  else
  {
    v6 = [TMLPropertyDescriptor alloc];
    v7 = [pathCopy stringByReplacingOccurrencesOfString:@"." withString:@"/"];
    lastPathComponent = [v7 lastPathComponent];
    v4 = [(TMLPropertyDescriptor *)v6 initWithName:lastPathComponent type:16 attributes:0];
  }

  return v4;
}

- (TMLJSONObject)initWithSchema:(id)schema json:(id)json
{
  schemaCopy = schema;
  jsonCopy = json;
  v14.receiver = self;
  v14.super_class = TMLJSONObject;
  v9 = [(TMLJSONObject *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_SCHEMA, schema);
    objc_storeStrong(&v10->_rawJSON, json);
    if (v10->_SCHEMA)
    {
      v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:16];
    }

    else
    {
      v11 = 0;
    }

    derived = v10->_derived;
    v10->_derived = v11;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TMLJSONObject allocWithZone:zone];
  SCHEMA = self->_SCHEMA;
  rawJSON = [(TMLJSONObject *)self rawJSON];
  v7 = [(TMLJSONObject *)v4 initWithSchema:SCHEMA json:rawJSON];

  return v7;
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  keyCopy = key;
  if (([keyCopy isEqualToString:@"rawJSON"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"SCHEMA") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"DATA") & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"STRING"))
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    if (qword_2806D91F0 != -1)
    {
      sub_26F201618();
    }

    v4 = qword_2806D91E8;
  }

  v5 = v4;

  return v5;
}

- (BOOL)internalSetJSON:(id)n
{
  nCopy = n;
  rawJSON = self->_rawJSON;
  if (rawJSON == nCopy || [(NSDictionary *)rawJSON isEqualToDictionary:nCopy])
  {
    v7 = 0;
  }

  else
  {
    [(TMLJSONObject *)self willChangeValueForKey:@"rawJSON"];
    objc_storeStrong(&self->_rawJSON, n);
    [(TMLJSONObject *)self didChangeValueForKey:@"rawJSON"];
    allValues = [(NSMutableDictionary *)self->_derived allValues];
    [allValues makeObjectsPerformSelector:sel_setRawJSON_ withObject:0];

    [(TMLJSONObject *)self notifyAllObservers];
    [self emitTMLSignal:@"modified" withArguments:0];
    v7 = 1;
  }

  return v7;
}

- (void)validateJSON:(id)n completion:(id)completion
{
  nCopy = n;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_26F1BDF68;
    block[3] = &unk_279DC5888;
    block[4] = self;
    v10 = nCopy;
    v11 = completionCopy;
    dispatch_async(v8, block);
  }

  else
  {
    [(TMLJSONObject *)self internalValidateJSON:nCopy completion:0];
  }
}

- (void)internalValidateJSON:(id)n completion:(id)completion
{
  nCopy = n;
  completionCopy = completion;
  v8 = nCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([MEMORY[0x277CCAAA0] isValidJSONObject:v8])
    {
      v9 = v8;
      goto LABEL_8;
    }

    v19 = 0;
    v10 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v8 options:0 error:&v19];
    v11 = v19;
    v12 = v11;
    if (v10)
    {
      v18 = v11;
      v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v10 options:0 error:&v18];
      v13 = v18;

      goto LABEL_8;
    }
  }

  v9 = 0;
LABEL_8:

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v14 = [(TMLJSONObject *)self internalSetJSON:v9];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v14);
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_26F1BE190;
    block[3] = &unk_279DC5888;
    block[4] = self;
    v16 = v9;
    v17 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)setDATA:(id)a
{
  aCopy = a;
  DATA = self->_DATA;
  if (DATA != aCopy && ![(NSData *)DATA isEqualToData:aCopy])
  {
    v6 = [(NSData *)aCopy copy];
    v7 = self->_DATA;
    self->_DATA = v6;

    if (aCopy)
    {
      v8 = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_26F1BE318;
      block[3] = &unk_279DC7C60;
      block[4] = self;
      dispatch_async(v8, block);
    }

    else
    {
      [(TMLJSONObject *)self internalSetJSON:0];
    }
  }
}

- (void)setSTRING:(id)g
{
  gCopy = g;
  STRING = self->_STRING;
  if (STRING != gCopy)
  {
    v9 = gCopy;
    STRING = [(NSString *)STRING isEqualToString:gCopy];
    gCopy = v9;
    if ((STRING & 1) == 0)
    {
      v6 = [(NSString *)v9 copy];
      v7 = self->_STRING;
      self->_STRING = v6;

      v8 = [(NSString *)v9 dataUsingEncoding:4];
      [(TMLJSONObject *)self setDATA:v8];

      gCopy = v9;
    }
  }

  MEMORY[0x2821F96F8](STRING, gCopy);
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  if (([keyCopy isEqualToString:@"rawJSON"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"SCHEMA") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"DATA") & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"STRING"))
  {
    v14.receiver = self;
    v14.super_class = TMLJSONObject;
    v5 = [(TMLJSONObject *)&v14 valueForKey:keyCopy];
  }

  else
  {
    v7 = [(NSDictionary *)self->_rawJSON valueForKey:keyCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSMutableDictionary *)self->_derived objectForKeyedSubscript:keyCopy];
      if (!v5)
      {
        v5 = [[TMLJSONObjectDerived alloc] initWithParent:self keyPath:keyCopy];
        [(NSMutableDictionary *)self->_derived setObject:v5 forKey:keyCopy];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v7 mutableCopy];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = sub_26F1BE62C;
        v10[3] = &unk_279DC7C88;
        v9 = v8;
        v11 = v9;
        v12 = keyCopy;
        selfCopy = self;
        [v9 enumerateObjectsUsingBlock:v10];
        v5 = v9;
      }

      else
      {
        v5 = v7;
      }
    }
  }

  return v5;
}

- (id)valueForKeyPath:(id)path
{
  pathCopy = path;
  if (([pathCopy isEqualToString:@"rawJSON"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"SCHEMA") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"DATA") & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"STRING"))
  {
    v17.receiver = self;
    v17.super_class = TMLJSONObject;
    v5 = [(TMLJSONObject *)&v17 valueForKeyPath:pathCopy];
  }

  else if ([pathCopy hasSuffix:@".rawJSON"])
  {
    v7 = [pathCopy substringToIndex:{objc_msgSend(pathCopy, "length") - 8}];
    v8 = [(TMLJSONObject *)self rawValueForKeyPath:v7 dictionary:self->_rawJSON];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v5 = v9;
  }

  else
  {
    v10 = [(TMLJSONObject *)self rawValueForKeyPath:pathCopy dictionary:self->_rawJSON];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSMutableDictionary *)self->_derived objectForKeyedSubscript:pathCopy];
      if (!v5)
      {
        v5 = [[TMLJSONObjectDerived alloc] initWithParent:self keyPath:pathCopy];
        [(NSMutableDictionary *)self->_derived setObject:v5 forKey:pathCopy];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 mutableCopy];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = sub_26F1BE9C0;
        v13[3] = &unk_279DC7C88;
        v12 = v11;
        v14 = v12;
        v15 = pathCopy;
        selfCopy = self;
        [v10 enumerateObjectsUsingBlock:v13];
        v5 = v12;
      }

      else
      {
        v5 = v10;
      }
    }
  }

  return v5;
}

- (id)rawValueForKeyPath:(id)path dictionary:(id)dictionary
{
  pathCopy = path;
  dictionaryCopy = dictionary;
  if (qword_2806D9208 != -1)
  {
    sub_26F20162C();
  }

  v8 = [pathCopy rangeOfCharacterFromSet:qword_2806D91F8];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [dictionaryCopy tmlValueForKeyPath:pathCopy];
  }

  else
  {
    v10 = v8;
    v11 = [pathCopy substringToIndex:v8 - 1];
    v12 = [dictionaryCopy tmlValueForKeyPath:v11];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [pathCopy rangeOfCharacterFromSet:qword_2806D9200 options:0 range:{v10 + 1, objc_msgSend(pathCopy, "length") - v10 - 2}];
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = [pathCopy length];
      }

      v14 = [pathCopy substringWithRange:{v10 + 1, v13 + ~v10}];
      integerValue = [v14 integerValue];
      if (integerValue >= [v12 count])
      {
        v9 = 0;
      }

      else
      {
        v16 = [v12 objectAtIndex:integerValue];
        if (v13 >= [pathCopy length])
        {
          v9 = v16;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [pathCopy substringFromIndex:v13 + 1];
            v9 = [(TMLJSONObject *)self rawValueForKeyPath:v17 dictionary:v16];
          }

          else
          {
            v9 = 0;
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)tmlAddObserver:(id)observer forKeyPath:(id)path callback:(id)callback
{
  observerCopy = observer;
  pathCopy = path;
  callbackCopy = callback;
  observers = self->_observers;
  if (!observers)
  {
    v11 = [MEMORY[0x277CBEB58] set];
    v12 = self->_observers;
    self->_observers = v11;

    observers = self->_observers;
  }

  v13 = [[TMLJSONObserverInfo alloc] initWithObserver:observerCopy keyPath:pathCopy callback:callbackCopy];
  [(NSMutableSet *)observers addObject:v13];

  v14 = [(TMLJSONObject *)self valueForKeyPath:pathCopy];
  callbackCopy[2](callbackCopy, observerCopy, pathCopy, v14);
}

- (void)tmlRemoveObserver:(id)observer forKeyPath:(id)path
{
  observerCopy = observer;
  pathCopy = path;
  observers = self->_observers;
  if (observers)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_26F1BEFB8;
    v17 = sub_26F1BEFC8;
    v18 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_26F1BEFD0;
    v9[3] = &unk_279DC7CB0;
    v10 = observerCopy;
    v11 = pathCopy;
    v12 = &v13;
    [(NSMutableSet *)observers enumerateObjectsUsingBlock:v9];
    if (v14[5])
    {
      [(NSMutableSet *)self->_observers removeObject:?];
    }

    _Block_object_dispose(&v13, 8);
  }
}

- (void)notifyAllObservers
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(NSMutableSet *)self->_observers count])
  {
    v3 = [(NSMutableSet *)self->_observers copy];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          keyPath = [v9 keyPath];
          v11 = [(TMLJSONObject *)self valueForKeyPath:keyPath];
          [v9 notify:v11];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

@end
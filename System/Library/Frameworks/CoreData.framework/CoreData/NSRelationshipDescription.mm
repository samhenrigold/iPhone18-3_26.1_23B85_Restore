@interface NSRelationshipDescription
- (BOOL)_isSchemaEqual:(id)equal;
- (BOOL)_nonPredicateValidateValue:(id *)value forKey:(id)key inObject:(id)object error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSData)versionHash;
- (NSEntityDescription)destinationEntity;
- (NSRelationshipDescription)initWithCoder:(id)coder;
- (NSRelationshipDescription)inverseRelationship;
- (id)_initWithName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_createCachesAndOptimizeState;
- (void)_versionHash:(char *)hash inStyle:(unint64_t)style proxyContext:(id)context;
- (void)_writeIntoData:(id)data propertiesDict:(id)dict uniquedPropertyNames:(id)names uniquedStrings:(id)strings uniquedData:(id)uniquedData entitiesSlots:(id)slots fetchRequests:(id)requests;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setDestinationEntity:(NSEntityDescription *)destinationEntity;
- (void)setInverseRelationship:(NSRelationshipDescription *)inverseRelationship;
- (void)setMaxCount:(NSUInteger)maxCount;
- (void)setMinCount:(NSUInteger)minCount;
@end

@implementation NSRelationshipDescription

- (NSEntityDescription)destinationEntity
{
  result = self->_destinationEntity;
  if (!result)
  {
    if (self->_lazyDestinationEntityName)
    {
      result = [(NSEntityDescription *)[(NSPropertyDescription *)self entity] managedObjectModel];
      if (result)
      {
        lazyDestinationEntityName = self->_lazyDestinationEntityName;
        versionHash = result->_versionHash;

        return [versionHash objectForKey:lazyDestinationEntityName];
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (NSRelationshipDescription)inverseRelationship
{
  result = self->_inverseRelationship;
  if (!result)
  {
    if (self->_lazyInverseRelationshipName)
    {
      destinationEntity = [(NSRelationshipDescription *)self destinationEntity];
      lazyInverseRelationshipName = self->_lazyInverseRelationshipName;

      return [(NSEntityDescription *)destinationEntity _relationshipNamed:?];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)dealloc
{
  self->_destinationEntity = 0;

  self->_lazyDestinationEntityName = 0;
  self->_inverseRelationship = 0;

  self->_lazyInverseRelationshipName = 0;
  v3.receiver = self;
  v3.super_class = NSRelationshipDescription;
  [(NSPropertyDescription *)&v3 dealloc];
}

- (void)_createCachesAndOptimizeState
{
  v22[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = NSRelationshipDescription;
  [(NSPropertyDescription *)&v14 _createCachesAndOptimizeState];
  if (!self->_destinationEntity)
  {
    [(NSRelationshipDescription *)self setDestinationEntity:[(NSRelationshipDescription *)self destinationEntity]];
  }

  if (!self->_inverseRelationship)
  {
    [(NSRelationshipDescription *)self setInverseRelationship:[(NSRelationshipDescription *)self inverseRelationship]];
  }

  if ([-[NSDictionary objectForKey:](-[NSPropertyDescription userInfo](self "userInfo")])
  {
    if ([(NSRelationshipDescription *)self isToMany])
    {
      if ([(NSRelationshipDescription *)self isOrdered])
      {
        return;
      }

      v11 = *MEMORY[0x1E696A250];
      v17 = *MEMORY[0x1E696A588];
      v18 = @"Relationship is not ordered";
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:v11 code:1591 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v18, &v17, 1)}];
      v5 = MEMORY[0x1E695DF30];
      v6 = *MEMORY[0x1E695D940];
      v13 = *MEMORY[0x1E696AA08];
      v15[0] = @"unsupported relationship";
      v15[1] = v13;
      v16[0] = self;
      v16[1] = v12;
      v8 = MEMORY[0x1E695DF20];
      v9 = v16;
      v10 = v15;
    }

    else
    {
      v3 = *MEMORY[0x1E696A250];
      v21 = *MEMORY[0x1E696A588];
      v22[0] = @"Relationship is not a toMany";
      v4 = [MEMORY[0x1E696ABC0] errorWithDomain:v3 code:1591 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v22, &v21, 1)}];
      v5 = MEMORY[0x1E695DF30];
      v6 = *MEMORY[0x1E695D940];
      v7 = *MEMORY[0x1E696AA08];
      v19[0] = @"unsupported relationship";
      v19[1] = v7;
      v20[0] = self;
      v20[1] = v4;
      v8 = MEMORY[0x1E695DF20];
      v9 = v20;
      v10 = v19;
    }

    objc_exception_throw([v5 exceptionWithName:v6 reason:@"Unsupported relationship type for ordered index" userInfo:{objc_msgSend(v8, "dictionaryWithObjects:forKeys:count:", v9, v10, 2)}]);
  }
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = NSRelationshipDescription;
  [(NSPropertyDescription *)&v8 encodeWithCoder:?];
  v5 = objc_autoreleasePoolPush();
  [coder encodeInt:-[NSRelationshipDescription maxCount](self forKey:{"maxCount"), @"NSMaxCount"}];
  [coder encodeInt:-[NSRelationshipDescription minCount](self forKey:{"minCount"), @"NSMinCount"}];
  [coder encodeInt:-[NSRelationshipDescription deleteRule](self forKey:{"deleteRule"), @"NSDeleteRule"}];
  [coder encodeConditionalObject:-[NSRelationshipDescription destinationEntity](self forKey:{"destinationEntity"), @"NSDestinationEntity"}];
  if ([(NSRelationshipDescription *)self destinationEntity])
  {
    lazyDestinationEntityName = [(NSEntityDescription *)[(NSRelationshipDescription *)self destinationEntity] name];
  }

  else
  {
    lazyDestinationEntityName = self->_lazyDestinationEntityName;
  }

  [coder encodeObject:lazyDestinationEntityName forKey:@"_NSDestinationEntityName"];
  [coder encodeConditionalObject:-[NSRelationshipDescription inverseRelationship](self forKey:{"inverseRelationship"), @"NSInverseRelationship"}];
  if ([(NSRelationshipDescription *)self inverseRelationship])
  {
    lazyInverseRelationshipName = [(NSPropertyDescription *)[(NSRelationshipDescription *)self inverseRelationship] name];
  }

  else
  {
    lazyInverseRelationshipName = self->_lazyInverseRelationshipName;
  }

  [coder encodeObject:lazyInverseRelationshipName forKey:@"_NSInverseRelationshipName"];
  objc_autoreleasePoolPop(v5);
}

- (NSRelationshipDescription)initWithCoder:(id)coder
{
  v19.receiver = self;
  v19.super_class = NSRelationshipDescription;
  v4 = [(NSPropertyDescription *)&v19 initWithCoder:?];
  if (v4)
  {
    v5 = +[PFModelDecoderContext retainedContext];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = __43__NSRelationshipDescription_initWithCoder___block_invoke;
    v17 = &unk_1E6EC16F0;
    v18 = v5;
    v4->_maxCount = [coder decodeIntForKey:@"NSMaxCount"];
    v4->_minCount = [coder decodeIntForKey:@"NSMinCount"];
    v4->_deleteRule = [coder decodeIntForKey:@"NSDeleteRule"];
    v4->_destinationEntity = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSDestinationEntity"];
    v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"_NSDestinationEntityName"];
    if (!v4->_destinationEntity)
    {
      v10 = v6;
      if (v6 && ([v6 isNSString] & 1) == 0)
      {
        v9 = &unk_1EF435530;
        goto LABEL_30;
      }

      v4->_lazyDestinationEntityName = [v10 copy];
      goto LABEL_14;
    }

    if (v5)
    {
      v7 = v5[3];
    }

    else
    {
      v7 = 0;
    }

    [v7 addObject:?];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = &unk_1EF435558;
      goto LABEL_30;
    }

    if (v5)
    {
      if (v5[1])
      {
        goto LABEL_14;
      }

      v8 = v5[2];
    }

    else
    {
      v8 = 0;
    }

    if (v4->_destinationEntity != v8)
    {
      v9 = &unk_1EF435580;
      goto LABEL_30;
    }

LABEL_14:
    v4->_inverseRelationship = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSInverseRelationship"];
    v11 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"_NSInverseRelationshipName"];
    if (v4->_inverseRelationship)
    {
      if (v5)
      {
        v12 = v5[3];
      }

      else
      {
        v12 = 0;
      }

      [v12 addObject:?];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v5 && (v5[1] || v5[2]) || v4->_inverseRelationship == v4)
        {
          goto LABEL_31;
        }

        v9 = &unk_1EF4355F8;
      }

      else
      {
        v9 = &unk_1EF4355D0;
      }
    }

    else
    {
      v13 = v11;
      if (!v11 || ([v11 isNSString] & 1) != 0)
      {
        v4->_lazyInverseRelationshipName = [v13 copy];
LABEL_31:
        v16(v15);
        return v4;
      }

      v9 = &unk_1EF4355A8;
    }

LABEL_30:
    [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, v9)}];

    v4 = 0;
    goto LABEL_31;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = NSRelationshipDescription;
  v4 = [(NSPropertyDescription *)&v11 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    v4[16] = self->_maxCount;
    v4[17] = self->_minCount;
    v4[18] = self->_deleteRule;
    destinationEntity = self->_destinationEntity;
    if (destinationEntity)
    {
      v7 = [(NSString *)[(NSEntityDescription *)destinationEntity name] copy];
    }

    else
    {
      v7 = [(NSString *)self->_lazyDestinationEntityName copy];
    }

    v5[13] = v7;
    inverseRelationship = self->_inverseRelationship;
    if (inverseRelationship)
    {
      v9 = [(NSString *)[(NSPropertyDescription *)inverseRelationship name] copy];
    }

    else
    {
      v9 = [(NSString *)self->_lazyInverseRelationshipName copy];
    }

    v5[15] = v9;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(name) = 1;
  }

  else
  {
    v20 = v3;
    v21 = v4;
    v19.receiver = self;
    v19.super_class = NSRelationshipDescription;
    LODWORD(name) = [(NSPropertyDescription *)&v19 isEqual:?];
    if (name)
    {
      maxCount = [(NSRelationshipDescription *)self maxCount];
      if (maxCount == [equal maxCount] && (v9 = -[NSRelationshipDescription minCount](self, "minCount"), v9 == objc_msgSend(equal, "minCount")) && (v10 = -[NSRelationshipDescription deleteRule](self, "deleteRule"), v10 == objc_msgSend(equal, "deleteRule")) && (v11 = -[NSRelationshipDescription isOrdered](self, "isOrdered"), v11 == objc_msgSend(equal, "isOrdered")))
      {
        v12 = [objc_msgSend(equal "destinationEntity")];
        name = [(NSEntityDescription *)[(NSRelationshipDescription *)self destinationEntity] name];
        if (v12 == name || (v13 = name, LOBYTE(name) = 0, v12) && v13 && (LODWORD(name) = [(NSString *)v12 isEqual:?], name))
        {
          inverseRelationship = [(NSRelationshipDescription *)self inverseRelationship];
          inverseRelationship2 = [equal inverseRelationship];
          name2 = [(NSPropertyDescription *)inverseRelationship name];
          name = [inverseRelationship2 name];
          if (name2 == name)
          {
            LOBYTE(name) = 1;
          }

          else
          {
            v17 = name;
            LOBYTE(name) = 0;
            if (name2 && v17)
            {
              LOBYTE(name) = [(NSString *)name2 isEqual:?];
            }
          }
        }
      }

      else
      {
        LOBYTE(name) = 0;
      }
    }
  }

  return name;
}

- (BOOL)_isSchemaEqual:(id)equal
{
  v13.receiver = self;
  v13.super_class = NSRelationshipDescription;
  LODWORD(name) = [(NSPropertyDescription *)&v13 isEqual:?];
  if (name)
  {
    maxCount = [(NSRelationshipDescription *)self maxCount];
    if (maxCount == [equal maxCount] && (v7 = -[NSRelationshipDescription minCount](self, "minCount"), v7 == objc_msgSend(equal, "minCount")) && (v8 = -[NSRelationshipDescription deleteRule](self, "deleteRule"), v8 == objc_msgSend(equal, "deleteRule")) && (v9 = -[NSRelationshipDescription isOrdered](self, "isOrdered"), v9 == objc_msgSend(equal, "isOrdered")))
    {
      v10 = [objc_msgSend(equal "destinationEntity")];
      name = [(NSEntityDescription *)[(NSRelationshipDescription *)self destinationEntity] name];
      if (v10 == name)
      {
        LOBYTE(name) = 1;
      }

      else
      {
        v11 = name;
        LOBYTE(name) = 0;
        if (v10 && v11)
        {
          LOBYTE(name) = [(NSString *)v10 isEqual:?];
        }
      }
    }

    else
    {
      LOBYTE(name) = 0;
    }
  }

  return name;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSRelationshipDescription;
  v5 = [(NSPropertyDescription *)&v8 description];
  v6 = objc_msgSend_stringWithFormat_(v4, v5, [(NSEntityDescription *)[(NSRelationshipDescription *)self destinationEntity] name], [(NSPropertyDescription *)[(NSRelationshipDescription *)self inverseRelationship] name], [(NSRelationshipDescription *)self minCount], [(NSRelationshipDescription *)self maxCount], [(NSRelationshipDescription *)self isOrdered], [(NSRelationshipDescription *)self deleteRule]);
  objc_autoreleasePoolPop(v3);
  return v6;
}

- (void)setMaxCount:(NSUInteger)maxCount
{
  v3 = maxCount;
  [(NSPropertyDescription *)self _throwIfNotEditable];
  self->_maxCount = v3;
}

- (void)setMinCount:(NSUInteger)minCount
{
  v3 = minCount;
  [(NSPropertyDescription *)self _throwIfNotEditable];
  self->_minCount = v3;
}

- (void)setDestinationEntity:(NSEntityDescription *)destinationEntity
{
  [(NSPropertyDescription *)self _throwIfNotEditable];
  self->_destinationEntity = destinationEntity;

  self->_lazyDestinationEntityName = 0;
}

- (void)setInverseRelationship:(NSRelationshipDescription *)inverseRelationship
{
  [(NSPropertyDescription *)self _throwIfNotEditable];
  self->_inverseRelationship = inverseRelationship;

  self->_lazyInverseRelationshipName = 0;
}

- (NSData)versionHash
{
  v3.receiver = self;
  v3.super_class = NSRelationshipDescription;
  return [(NSPropertyDescription *)&v3 versionHash];
}

- (id)_initWithName:(id)name
{
  v4.receiver = self;
  v4.super_class = NSRelationshipDescription;
  result = [(NSPropertyDescription *)&v4 _initWithName:name];
  if (result)
  {
    *(result + 17) = 0;
    *(result + 16) = 0;
    *(result + 18) = 1;
  }

  return result;
}

- (void)_versionHash:(char *)hash inStyle:(unint64_t)style proxyContext:(id)context
{
  v33 = *MEMORY[0x1E69E9840];
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  destinationEntity = [(NSRelationshipDescription *)self destinationEntity];
  v30.receiver = self;
  v30.super_class = NSRelationshipDescription;
  [(NSPropertyDescription *)&v30 _versionHash:data inStyle:style];
  CC_SHA256_Update(&c, data, 0x20u);
  if (destinationEntity)
  {
    name = [(NSEntityDescription *)destinationEntity name];
    if (name)
    {
      v11 = name;
      CStringPtr = CFStringGetCStringPtr(name, 0x8000100u);
      if (!CStringPtr)
      {
        CStringPtr = [(__CFString *)v11 UTF8String];
      }

      v13 = strlen(CStringPtr);
      CC_SHA256_Update(&c, CStringPtr, v13);
    }
  }

  inverseRelationship = [(NSRelationshipDescription *)self inverseRelationship];
  if (inverseRelationship)
  {
    v15 = inverseRelationship;
    if (inverseRelationship != self || style == 1 && context)
    {
      superentity = [(NSEntityDescription *)[(NSPropertyDescription *)self entity] superentity];
      name2 = [(NSPropertyDescription *)self name];
      if (!superentity)
      {
        goto LABEL_19;
      }

      v18 = name2;
      v19 = 0;
      do
      {
        v20 = [(NSEntityDescription *)superentity _relationshipNamed:v18];
        if (v20)
        {
          v19 = v20;
        }

        superentity = [(NSEntityDescription *)superentity superentity];
      }

      while (superentity);
      if (context || !v19 || (v21 = [v19 inverseRelationship], style) || v19 != v21)
      {
LABEL_19:
        name3 = [(NSPropertyDescription *)v15 name];
        v23 = name3;
        if (name3 && (v24 = CFStringGetCStringPtr(name3, 0x8000100u)) != 0 || (v24 = [(__CFString *)v23 UTF8String]) != 0)
        {
          v25 = v24;
          v26 = strlen(v24);
          CC_SHA256_Update(&c, v25, v26);
        }
      }
    }
  }

  maxCount = self->_maxCount;
  CC_SHA256_Update(&c, &maxCount, 4u);
  maxCount = self->_minCount;
  CC_SHA256_Update(&c, &maxCount, 4u);
  isOrdered = [(NSRelationshipDescription *)self isOrdered];
  v28 = isOrdered;
  if (isOrdered)
  {
    CC_SHA256_Update(&c, &v28, 2u);
  }

  CC_SHA256_Final(hash, &c);
}

- (BOOL)_nonPredicateValidateValue:(id *)value forKey:(id)key inObject:(id)object error:(id *)error
{
  v116 = *MEMORY[0x1E69E9840];
  v101.receiver = self;
  v101.super_class = NSRelationshipDescription;
  v11 = [NSPropertyDescription _nonPredicateValidateValue:sel__nonPredicateValidateValue_forKey_inObject_error_ forKey:? inObject:? error:?];
  if (!v11)
  {
    return v11;
  }

  if (!*value)
  {
LABEL_97:
    LOBYTE(v11) = 1;
    return v11;
  }

  isInserted = [object isInserted];
  isFault = [*value isFault];
  managedObjectContext = [object managedObjectContext];
  _isSwiftBound = [managedObjectContext _isSwiftBound];
  if (z9dsptsiQ80etb9782fsrs98bfdle88 == 1 && ![(NSRelationshipDescription *)self isToMany])
  {
    v15 = *value;
    if (*value)
    {
      if ((v15[16] & 0x24) != 0)
      {
        LODWORD(v99) = isFault;
        LODWORD(errorCopy2) = isInserted;
        v93 = managedObjectContext;
        errorCopy = error;
        v17 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              objectID = [object objectID];
              objectID2 = [v15 objectID];
              *buf = 138413314;
              keyCopy6 = key;
              v108 = 2048;
              objectCopy6 = object;
              v110 = 2112;
              v111 = objectID;
              v112 = 2048;
              v113 = v15;
              v114 = 2112;
              v115 = objectID2;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: repairing missing delete propagation for to-one relationship %@ on object %p (%@) with bad fault %p (%@)\n", buf, 0x34u);
            }
          }

          else
          {
            v30 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              objectID3 = [object objectID];
              objectID4 = [v15 objectID];
              *buf = 138413314;
              keyCopy6 = key;
              v108 = 2048;
              objectCopy6 = object;
              v110 = 2112;
              v111 = objectID3;
              v112 = 2048;
              v113 = v15;
              v114 = 2112;
              v115 = objectID4;
              _os_log_impl(&dword_18565F000, v30, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: repairing missing delete propagation for to-one relationship %@ on object %p (%@) with bad fault %p (%@)\n", buf, 0x34u);
            }
          }
        }

        v33 = _pflogging_catastrophic_mode;
        objectID5 = [object objectID];
        objectID6 = [v15 objectID];
        v36 = 4;
        if (v33)
        {
          v36 = 1;
        }

        _NSCoreDataLog_console(v36, "repairing missing delete propagation for to-one relationship %@ on object %p (%@) with bad fault %p (%@)", key, object, objectID5, v15, objectID6);
        objc_autoreleasePoolPop(v17);
        error = errorCopy;
        managedObjectContext = v93;
        isInserted = errorCopy2;
        isFault = v99;
        if ([[(NSRelationshipDescription *)self inverseRelationship] deleteRule]== NSCascadeDeleteRule)
        {
          if (![object managedObjectContext])
          {
            -[NSManagedObjectContext _forceRegisterLostFault:]([object managedObjectContext], object);
          }

          [objc_msgSend(object "managedObjectContext")];
        }

        [object setValue:0 forKey:key];
      }

      else
      {
        if (_isSwiftBound && ![*value managedObjectContext])
        {
          [managedObjectContext insertObject:v15];
        }

        if (([(NSManagedObject *)v15 _isValidRelationshipDestination__]& 1) == 0)
        {
          if (error)
          {
            v21 = *value;
            v22 = MEMORY[0x1E695DF20];
            v23 = [MEMORY[0x1E695DEC8] arrayWithObject:v15];
            null = [MEMORY[0x1E695DFB0] null];
            v25 = [v22 dictionaryWithObjectsAndKeys:{v23, @"NSAffectedObjectsErrorKey", null, @"Dangling reference to an invalid object.", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", 1), @"NSValidationErrorShouldAttemptRecoveryKey", 0}];
            objectCopy8 = object;
            v27 = 1550;
            keyCopy4 = key;
            v29 = v21;
LABEL_57:
            v55 = [(NSManagedObject *)objectCopy8 _generateErrorWithCode:v27 andMessage:0 forKey:keyCopy4 andValue:v29 additionalDetail:v25];
            LOBYTE(v11) = 0;
            *error = v55;
            return v11;
          }

          goto LABEL_106;
        }
      }
    }
  }

  if (![(NSRelationshipDescription *)self isToMany])
  {
    v53 = *value;
    destinationEntity = [(NSRelationshipDescription *)self destinationEntity];
    if (!v53 || !destinationEntity || ![(NSEntityDescription *)destinationEntity _subentitiesIncludes:_PFEntityForManagedObject(v53)])
    {
      if (error)
      {
LABEL_55:
        v29 = *value;
        objectCopy8 = object;
        v27 = 1550;
LABEL_56:
        keyCopy4 = key;
        v25 = 0;
        goto LABEL_57;
      }

LABEL_106:
      LOBYTE(v11) = 0;
      return v11;
    }

    goto LABEL_97;
  }

  errorCopy2 = error;
  if (!-[NSRelationshipDescription isOrdered](self, "isOrdered") && ([*value isNSSet] & 1) == 0 || (v37 = isFault, v93 = managedObjectContext, -[NSRelationshipDescription isOrdered](self, "isOrdered")) && (objc_msgSend(*value, "isNSOrderedSet") & 1) == 0)
  {
    v86 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{*value, key), objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", *value, key)}];
    objc_exception_throw(v86);
  }

  isOptional = [(NSPropertyDescription *)self isOptional];
  if (!self)
  {
    goto LABEL_58;
  }

  v38 = *value;
  destinationEntity2 = [(NSRelationshipDescription *)self destinationEntity];
  if (([v38 isFault] & 1) == 0)
  {
    if ([v38 count])
    {
      v104 = 0u;
      v105 = 0u;
      v103 = 0u;
      v102 = 0u;
      v40 = [v38 countByEnumeratingWithState:&v102 objects:buf count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v103;
        v99 = *v103;
LABEL_37:
        v43 = 0;
        while (1)
        {
          if (*v103 != v42)
          {
            objc_enumerationMutation(v38);
          }

          if (!destinationEntity2)
          {
            break;
          }

          v44 = *(*(&v102 + 1) + 8 * v43);
          if (!v44 || ![(NSEntityDescription *)destinationEntity2 _subentitiesIncludes:_PFEntityForManagedObject(v44)])
          {
            break;
          }

          ++v43;
          v42 = v99;
          if (v41 == v43)
          {
            v41 = [v38 countByEnumeratingWithState:&v102 objects:buf count:16];
            v42 = v99;
            if (v41)
            {
              goto LABEL_37;
            }

            goto LABEL_45;
          }
        }

LABEL_58:
        error = errorCopy2;
        if (!errorCopy2)
        {
          goto LABEL_106;
        }

        goto LABEL_55;
      }
    }
  }

LABEL_45:
  v45 = isOptional;
  LOBYTE(v11) = 1;
  if (isOptional & v37 & 1) == 0 && ((isInserted | v37 ^ 1))
  {
    error = errorCopy2;
    if (z9dsptsiQ80etb9782fsrs98bfdle88 == 1)
    {
      v46 = *value;
      v47 = [*value count];
      if (v47)
      {
        v48 = v47;
        deleteRule = [[(NSRelationshipDescription *)self inverseRelationship] deleteRule];
        isOrdered = [(NSRelationshipDescription *)self isOrdered];
        v92 = isOrdered;
        MEMORY[0x1EEE9AC00](isOrdered);
        v51 = v89 - v50;
        v89[1] = v52;
        if (v48 > 0x200)
        {
          v51 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(v51, 8 * v48);
        }

        [v46 getObjects:v51];
        v56 = 0;
        v57 = 0;
        v99 = 1;
        v91 = @"NSAffectedObjectsErrorKey";
        *&v58 = 138413314;
        v90 = v58;
        v97 = v48;
        v96 = v51;
        do
        {
          v59 = *&v51[8 * v57];
          if (v59 && (v59[16] & 0x24) != 0)
          {
            v60 = objc_autoreleasePoolPush();
            _pflogInitialize(4);
            if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                v61 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                {
                  objectID7 = [object objectID];
                  objectID8 = [v59 objectID];
                  *buf = v90;
                  keyCopy6 = key;
                  v108 = 2048;
                  objectCopy6 = object;
                  v110 = 2112;
                  v111 = objectID7;
                  v112 = 2048;
                  v113 = v59;
                  v114 = 2112;
                  v115 = objectID8;
                  _os_log_error_impl(&dword_18565F000, v61, OS_LOG_TYPE_ERROR, "CoreData: error: repairing missing delete propagation for to-many relationship %@ on object %p (%@) with bad fault %p (%@)\n", buf, 0x34u);
                }
              }

              else
              {
                v73 = _PFLogGetLogStream(4);
                if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                {
                  objectID9 = [object objectID];
                  objectID10 = [v59 objectID];
                  *buf = v90;
                  keyCopy6 = key;
                  v108 = 2048;
                  objectCopy6 = object;
                  v110 = 2112;
                  v111 = objectID9;
                  v112 = 2048;
                  v113 = v59;
                  v114 = 2112;
                  v115 = objectID10;
                  _os_log_impl(&dword_18565F000, v73, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: repairing missing delete propagation for to-many relationship %@ on object %p (%@) with bad fault %p (%@)\n", buf, 0x34u);
                }
              }
            }

            v76 = _pflogging_catastrophic_mode;
            objectID11 = [object objectID];
            objectID12 = [v59 objectID];
            v79 = 4;
            if (v76)
            {
              v79 = 1;
            }

            _NSCoreDataLog_console(v79, "repairing missing delete propagation for to-many relationship %@ on object %p (%@) with bad fault %p (%@)", key, object, objectID11, v59, objectID12);
            objc_autoreleasePoolPop(v60);
            v48 = v97;
            v51 = v96;
            if (deleteRule == NSCascadeDeleteRule)
            {
              if (![object managedObjectContext])
              {
                -[NSManagedObjectContext _forceRegisterLostFault:]([object managedObjectContext], object);
              }

              [objc_msgSend(object "managedObjectContext")];
            }

            if (!v56)
            {
              if (v92)
              {
                v80 = [object mutableOrderedSetValueForKey:key];
              }

              else
              {
                v80 = [object mutableSetValueForKey:key];
              }

              v56 = v80;
            }

            [v56 removeObject:v59];
          }

          else
          {
            if (_isSwiftBound && ![*&v51[8 * v57] managedObjectContext])
            {
              [v93 insertObject:v59];
            }

            isValidRelationshipDestination = [(NSManagedObject *)v59 _isValidRelationshipDestination__];
            v99 = isValidRelationshipDestination & v99;
            if (errorCopy2 && (isValidRelationshipDestination & 1) == 0)
            {
              v65 = *value;
              v66 = MEMORY[0x1E695DF20];
              v67 = [MEMORY[0x1E695DEC8] arrayWithObject:v59];
              null2 = [MEMORY[0x1E695DFB0] null];
              v69 = [MEMORY[0x1E696AD98] numberWithBool:1];
              v88 = null2;
              v51 = v96;
              v70 = [v66 dictionaryWithObjectsAndKeys:{v67, v91, v88, @"Dangling reference to an invalid object.", v69, @"NSValidationErrorShouldAttemptRecoveryKey", 0}];
              v71 = v65;
              v48 = v97;
              v72 = [(NSManagedObject *)object _generateErrorWithCode:0 andMessage:key forKey:v71 andValue:v70 additionalDetail:?];
              v99 = 0;
              *errorCopy2 = v72;
            }
          }

          ++v57;
        }

        while (v48 != v57);
        if (v48 >= 0x201)
        {
          NSZoneFree(0, v51);
        }

        error = errorCopy2;
        v45 = isOptional;
        if ((v99 & 1) == 0)
        {
          goto LABEL_106;
        }
      }
    }

    minCount = [(NSRelationshipDescription *)self minCount];
    maxCount = [(NSRelationshipDescription *)self maxCount];
    v83 = [*value count];
    if (v83)
    {
      v84 = 0;
    }

    else
    {
      v84 = v45;
    }

    if (v84)
    {
      goto LABEL_97;
    }

    v85 = v83;
    if (minCount && v83 < minCount)
    {
      if (error)
      {
        v29 = *value;
        objectCopy8 = object;
        v27 = 1580;
        goto LABEL_56;
      }

      goto LABEL_106;
    }

    LOBYTE(v11) = 1;
    if (maxCount && v85 > maxCount)
    {
      error = errorCopy2;
      if (errorCopy2)
      {
        v29 = *value;
        objectCopy8 = object;
        v27 = 1590;
        goto LABEL_56;
      }

      goto LABEL_106;
    }
  }

  return v11;
}

- (void)_writeIntoData:(id)data propertiesDict:(id)dict uniquedPropertyNames:(id)names uniquedStrings:(id)strings uniquedData:(id)uniquedData entitiesSlots:(id)slots fetchRequests:(id)requests
{
  _writeInt32IntoData(data, 0);
  v16 = [data length];
  v22.receiver = self;
  v22.super_class = NSRelationshipDescription;
  [(NSPropertyDescription *)&v22 _appendPropertyFieldsToData:data propertiesDict:dict uniquedPropertyNames:names uniquedStrings:strings uniquedData:uniquedData entitiesSlots:slots];
  _writeInt32IntoData(data, [slots indexForKey:{-[NSEntityDescription name](-[NSRelationshipDescription destinationEntity](self, "destinationEntity"), "name")}]);
  inverseRelationship = [(NSRelationshipDescription *)self inverseRelationship];
  if (inverseRelationship)
  {
    v18 = inverseRelationship;
    _writeInt32IntoData(data, 1u);
    v19 = [objc_msgSend(dict objectForKey:{v18), "unsignedIntegerValue"}];
  }

  else
  {
    v19 = 0;
  }

  _writeInt32IntoData(data, v19);
  v20 = v16 - 4;
  _writeInt32IntoData(data, self->_maxCount);
  _writeInt32IntoData(data, self->_minCount);
  _writeInt32IntoData(data, self->_deleteRule);
  v21 = bswap32([data length] - v20);
  [data replaceBytesInRange:v20 withBytes:{4, &v21}];
}

@end
@interface EKObjectID
+ (EKObjectID)objectIDWithCADObjectID:(id)d;
+ (EKObjectID)objectIDWithEntityType:(int)type rowID:(int)d;
+ (EKObjectID)objectIDWithEntityType:(int)type rowID:(int)d databaseID:(int)iD;
+ (EKObjectID)objectIDWithURL:(id)l;
+ (id)CADObjectIDsFromEKObjectIDs:(id)ds withGeneration:(int)generation;
+ (id)EKObjectIDsFromCADObjectIDs:(id)ds;
+ (id)EKObjectIDsFromData:(id)data;
+ (id)EKObjectIDsFromData:(id)data databaseID:(int)d;
+ (id)EKObjectIDsFromData:(id)data range:(_NSRange)range databaseID:(int)d;
+ (id)temporaryObjectIDWithEntityType:(int)type;
+ (id)virtualObjectIDWithEntityType:(int)type;
- (BOOL)isEqual:(id)equal;
- (EKObjectID)initWithCoder:(id)coder;
- (EKObjectID)initWithDictionaryRepresentation:(id)representation;
- (EKObjectID)initWithEntityType:(int)type rowID:(int)d databaseID:(int)iD temporary:(BOOL)temporary;
- (NSDictionary)dictionaryRepresentation;
- (NSString)stringRepresentation;
- (NSURL)URIRepresentation;
- (id)CADObjectIDWithGeneration:(int)generation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EKObjectID

+ (EKObjectID)objectIDWithCADObjectID:(id)d
{
  if (d)
  {
    dCopy = d;
    v6 = [self alloc];
    entityType = [dCopy entityType];
    entityID = [dCopy entityID];
    if (entityID >= 0)
    {
      v9 = entityID;
    }

    else
    {
      v9 = -entityID;
    }

    databaseID = [dCopy databaseID];
    isTemporary = [dCopy isTemporary];

    v12 = [v6 initWithEntityType:entityType rowID:v9 databaseID:databaseID temporary:isTemporary];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (EKObjectID)objectIDWithEntityType:(int)type rowID:(int)d
{
  v5 = *&type;
  v6 = [self alloc];
  if (d >= 0)
  {
    dCopy = d;
  }

  else
  {
    dCopy = -d;
  }

  v8 = [v6 initWithEntityType:v5 rowID:dCopy databaseID:0 temporary:d >> 31];

  return v8;
}

+ (EKObjectID)objectIDWithEntityType:(int)type rowID:(int)d databaseID:(int)iD
{
  v5 = *&iD;
  v7 = *&type;
  v8 = [self alloc];
  if (d >= 0)
  {
    dCopy = d;
  }

  else
  {
    dCopy = -d;
  }

  v10 = [v8 initWithEntityType:v7 rowID:dCopy databaseID:v5 temporary:d >> 31];

  return v10;
}

+ (id)temporaryObjectIDWithEntityType:(int)type
{
  v3 = [[self alloc] initWithEntityType:*&type rowID:atomic_fetch_add_explicit(temporaryObjectIDWithEntityType__sNextTempID databaseID:1u temporary:{memory_order_relaxed), 0, 1}];

  return v3;
}

+ (id)virtualObjectIDWithEntityType:(int)type
{
  v3 = *&type;
  v4 = [self alloc];
  v5 = [v4 initWithEntityType:v3 rowID:0x7FFFFFFFLL databaseID:*MEMORY[0x1E6992E18] temporary:0];

  return v5;
}

+ (EKObjectID)objectIDWithURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  v6 = [scheme isEqualToString:@"x-apple-eventkit"];

  if (v6)
  {
    host = [lCopy host];
    if ([host length])
    {
      intValue = [host intValue];
      if (intValue)
      {
        goto LABEL_7;
      }

      v9 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [(EKObjectID *)lCopy objectIDWithURL:v9, host];
      }
    }

    intValue = 0;
LABEL_7:
    path = [lCopy path];
    lastPathComponent = [path lastPathComponent];
    if (![lastPathComponent length])
    {
      v17 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [EKObjectID objectIDWithURL:v17];
      }

      v16 = 0;
      goto LABEL_33;
    }

    v12 = [lastPathComponent characterAtIndex:0];
    if (v12 != 112)
    {
      v13 = v12;
      if (v12 == 116)
      {
        v14 = 1;
LABEL_20:
        v19 = [lastPathComponent substringFromIndex:1];
        intValue2 = [v19 intValue];

        pathComponents = [path pathComponents];
        if ([pathComponents count] > 1)
        {
          v23 = [pathComponents objectAtIndex:1];
          v27 = v14;
          if (objectIDWithURL__onceToken != -1)
          {
            +[EKObjectID objectIDWithURL:];
          }

          v24 = [objectIDWithURL__entityNameToEntityTypeMap objectForKeyedSubscript:v23];
          if (v24)
          {
            v16 = [[self alloc] initWithEntityType:objc_msgSend(v24 rowID:"intValue") databaseID:intValue2 temporary:{intValue, v27}];
          }

          else
          {
            v25 = EKLogHandle;
            if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
            {
              [(EKObjectID *)v23 objectIDWithURL:v25, lCopy];
            }

            v16 = 0;
          }
        }

        else
        {
          v22 = EKLogHandle;
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
          {
            [EKObjectID objectIDWithURL:v22];
          }

          v16 = 0;
        }

LABEL_33:
        goto LABEL_34;
      }

      v18 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [(EKObjectID *)v13 objectIDWithURL:v18];
      }
    }

    v14 = 0;
    goto LABEL_20;
  }

  v15 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [(EKObjectID *)v15 objectIDWithURL:lCopy];
  }

  v16 = 0;
LABEL_34:

  return v16;
}

void __30__EKObjectID_objectIDWithURL___block_invoke()
{
  v0 = objectIDWithURL__entityNameToEntityTypeMap;
  objectIDWithURL__entityNameToEntityTypeMap = &unk_1F1B6B300;
}

- (EKObjectID)initWithEntityType:(int)type rowID:(int)d databaseID:(int)iD temporary:(BOOL)temporary
{
  v11.receiver = self;
  v11.super_class = EKObjectID;
  result = [(EKObjectID *)&v11 init];
  if (result)
  {
    result->_entityType = type;
    result->_rowID = d;
    result->_databaseID = iD;
    result->_temporary = temporary;
  }

  return result;
}

- (EKObjectID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = EKObjectID;
  v5 = [(EKObjectID *)&v7 init];
  if (v5)
  {
    v5->_entityType = [coderCopy decodeIntForKey:@"entityType"];
    v5->_rowID = [coderCopy decodeIntForKey:@"rowID"];
    v5->_databaseID = [coderCopy decodeIntForKey:@"dbID"];
    v5->_temporary = [coderCopy decodeBoolForKey:@"temporary"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:self->_entityType forKey:@"entityType"];
  [coderCopy encodeInt:self->_rowID forKey:@"rowID"];
  databaseID = self->_databaseID;
  if (databaseID)
  {
    [coderCopy encodeInt:databaseID forKey:@"dbID"];
  }

  [coderCopy encodeBool:self->_temporary forKey:@"temporary"];
}

- (EKObjectID)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v11.receiver = self;
  v11.super_class = EKObjectID;
  v5 = [(EKObjectID *)&v11 init];
  if (v5)
  {
    v6 = [representationCopy objectForKey:@"entityType"];
    v5->_entityType = [v6 intValue];

    v7 = [representationCopy objectForKey:@"rowID"];
    v5->_rowID = [v7 intValue];

    v8 = [representationCopy objectForKey:@"dbID"];
    v5->_databaseID = [v8 intValue];

    v9 = [representationCopy objectForKey:@"temporary"];
    v5->_temporary = [v9 BOOLValue];
  }

  return v5;
}

- (NSDictionary)dictionaryRepresentation
{
  v10[4] = *MEMORY[0x1E69E9840];
  v9[0] = @"entityType";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:self->_entityType];
  v10[0] = v3;
  v9[1] = @"rowID";
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_rowID];
  v10[1] = v4;
  v9[2] = @"dbID";
  v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_databaseID];
  v10[2] = v5;
  v9[3] = @"temporary";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_temporary];
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

- (id)CADObjectIDWithGeneration:(int)generation
{
  v3 = *&generation;
  if ([(EKObjectID *)self isVirtual])
  {
    v5 = 0x7FFFFFFFLL;
  }

  else
  {
    rowID = self->_rowID;
    if (self->_temporary)
    {
      v5 = -rowID;
    }

    else
    {
      v5 = rowID;
    }
  }

  v7 = [objc_alloc(MEMORY[0x1E6992360]) initWithEntityType:self->_entityType entityID:v5 databaseID:self->_databaseID generation:v3];

  return v7;
}

- (NSString)stringRepresentation
{
  databaseID = self->_databaseID;
  v4 = MEMORY[0x1E696AEC0];
  entityName = [(EKObjectID *)self entityName];
  v6 = entityName;
  v7 = @"p";
  if (self->_temporary)
  {
    v7 = @"t";
  }

  rowID = self->_rowID;
  if (databaseID)
  {
    [v4 stringWithFormat:@"%@://%d/%@/%@%d", @"x-apple-eventkit", databaseID, entityName, v7, rowID];
  }

  else
  {
    [v4 stringWithFormat:@"%@:///%@/%@%d", @"x-apple-eventkit", entityName, v7, rowID, v11];
  }
  v9 = ;

  return v9;
}

- (NSURL)URIRepresentation
{
  v2 = MEMORY[0x1E695DFF8];
  stringRepresentation = [(EKObjectID *)self stringRepresentation];
  v4 = [v2 URLWithString:stringRepresentation];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else if (equalCopy && (Class = object_getClass(self), Class == object_getClass(v5)))
  {
    v8 = v5;
    v7 = self->_entityType == v8->_entityType && self->_rowID == v8->_rowID && self->_temporary == v8->_temporary && self->_databaseID == v8->_databaseID;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)CADObjectIDsFromEKObjectIDs:(id)ds withGeneration:(int)generation
{
  v4 = *&generation;
  v19 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (dsCopy)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = dsCopy;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v14 + 1) + 8 * i) CADObjectIDWithGeneration:{v4, v14}];
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)EKObjectIDsFromCADObjectIDs:(id)ds
{
  v17 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (dsCopy)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = dsCopy;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = [EKObjectID objectIDWithCADObjectID:*(*(&v12 + 1) + 8 * i), v12];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)EKObjectIDsFromData:(id)data
{
  v19 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [dataCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(dataCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [dataCopy objectForKeyedSubscript:v10];
        v12 = +[EKObjectID EKObjectIDsFromData:databaseID:](EKObjectID, "EKObjectIDsFromData:databaseID:", v11, [v10 intValue]);
        if ([v12 count])
        {
          if (v7)
          {
            if (!v6)
            {
              v6 = [v7 mutableCopy];

              v7 = v6;
            }

            [v6 addObjectsFromArray:v12];
          }

          else
          {
            v7 = v12;
          }
        }
      }

      v5 = [dataCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v7;
}

+ (id)EKObjectIDsFromData:(id)data databaseID:(int)d
{
  v4 = *&d;
  dataCopy = data;
  v7 = [self EKObjectIDsFromData:dataCopy range:0 databaseID:{objc_msgSend(dataCopy, "length") >> 3, v4}];

  return v7;
}

+ (id)EKObjectIDsFromData:(id)data range:(_NSRange)range databaseID:(int)d
{
  v5 = *&d;
  length = range.length;
  location = range.location;
  dataCopy = data;
  if (8 * (location + length) <= [dataCopy length])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:length];
    bytes = [dataCopy bytes];
    if (location < location + length)
    {
      v12 = (bytes + 8 * location + 4);
      do
      {
        v13 = [EKObjectID objectIDWithEntityType:*(v12 - 1) rowID:*v12 databaseID:v5];
        [v10 addObject:v13];

        v12 += 2;
        --length;
      }

      while (length);
    }
  }

  else
  {
    v9 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKObjectID EKObjectIDsFromData:v9 range:dataCopy databaseID:8 * (location + length)];
    }

    v10 = 0;
  }

  return v10;
}

+ (void)objectIDWithURL:(void *)a1 .cold.1(void *a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 scheme];
  v5 = 138412546;
  v6 = v4;
  v7 = 2112;
  v8 = @"x-apple-eventkit";
  _os_log_error_impl(&dword_1A805E000, v3, OS_LOG_TYPE_ERROR, "Wrong scheme for EKObjectID URL; got %@, expected %@; will return nil for objectIDWithURL:", &v5, 0x16u);
}

+ (void)objectIDWithURL:(void *)a3 .cold.2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  *v12 = 138412546;
  *&v12[4] = a1;
  *&v12[12] = 2048;
  *&v12[14] = [a3 length];
  OUTLINED_FUNCTION_2_2(&dword_1A805E000, v6, v7, "Redundant specification of database ID 0 (URL %@ has host length %lu)", v8, v9, v10, v11, *v12, *&v12[8], *&v12[16]);
}

+ (void)objectIDWithURL:(int)a1 .cold.3(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "URL with unrecognized ID type %c", v2, 8u);
}

+ (void)objectIDWithURL:(void *)a3 .cold.5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 path];
  *v13 = 138412546;
  *&v13[4] = a1;
  *&v13[12] = 2112;
  *&v13[14] = v6;
  OUTLINED_FUNCTION_2_2(&dword_1A805E000, v7, v8, "Unknown entity name %@ with URI %@", v9, v10, v11, v12, *v13, *&v13[8], *&v13[16]);
}

+ (void)EKObjectIDsFromData:(void *)a1 range:(void *)a2 databaseID:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  *v12 = 134218240;
  *&v12[4] = a3;
  *&v12[12] = 2048;
  *&v12[14] = [a2 length];
  OUTLINED_FUNCTION_2_2(&dword_1A805E000, v6, v7, "Invalid range passed to +[EKObjectIDsFromData:range:]. Need at least %lu bytes, but only have %lu", v8, v9, v10, v11, *v12, *&v12[8], *&v12[16]);
}

@end
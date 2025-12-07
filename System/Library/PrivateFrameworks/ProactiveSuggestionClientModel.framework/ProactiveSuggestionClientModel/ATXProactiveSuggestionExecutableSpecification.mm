@interface ATXProactiveSuggestionExecutableSpecification
+ (id)stringForExecutableType:(int64_t)type;
- (ATXProactiveSuggestionExecutableSpecification)initWithCoder:(id)coder;
- (ATXProactiveSuggestionExecutableSpecification)initWithExecutable:(id)executable executableObjectHash:(unint64_t)hash expectedExecutableClassString:(id)string executableDescription:(id)description executableIdentifier:(id)identifier suggestionExecutableType:(int64_t)type;
- (ATXProactiveSuggestionExecutableSpecification)initWithExecutable:(id)executable expectedExecutableClassString:(id)string executableDescription:(id)description executableIdentifier:(id)identifier suggestionExecutableType:(int64_t)type;
- (ATXProactiveSuggestionExecutableSpecification)initWithExecutableObject:(id)object executableDescription:(id)description executableIdentifier:(id)identifier suggestionExecutableType:(int64_t)type;
- (ATXProactiveSuggestionExecutableSpecification)initWithProto:(id)proto;
- (ATXProactiveSuggestionExecutableSpecification)initWithProtoData:(id)data;
- (ATXSuggestionExecutableProtocol)executableObject;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSUInteger:(unint64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)fuzzyIsEqualToExecutableSpecification:(id)specification;
- (BOOL)isEqual:(id)equal;
- (id)allowedExecutableClasses;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)encodeAsProto;
- (id)executableDataFromExecutableObject:(id)object executableClassStringFromObject:(id)fromObject;
- (id)executableObjectFromData:(id)data executableClassString:(id)string;
- (id)jsonRawData;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXProactiveSuggestionExecutableSpecification

- (ATXSuggestionExecutableProtocol)executableObject
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  executableObject = selfCopy->_executableObject;
  if (!executableObject)
  {
    v4 = [(ATXProactiveSuggestionExecutableSpecification *)selfCopy executableObjectFromData:selfCopy->_executable executableClassString:selfCopy->_executableClassString];
    v5 = selfCopy->_executableObject;
    selfCopy->_executableObject = v4;

    executableObject = selfCopy->_executableObject;
  }

  v6 = executableObject;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)allowedExecutableClasses
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ATXAction", @"NSString", @"ATXHeroData", @"ATXInfoSuggestion", @"_PSSuggestion", @"CAXContextualAction", @"ATXSpotlightAction", @"ATXShortcutsAction", @"ATXLinkActionContainer", 0}];
  objc_autoreleasePoolPop(v2);

  return v3;
}

- (id)proto
{
  v3 = objc_opt_new();
  [(ATXPBProactiveSuggestionExecutableSpecification *)v3 setExecutable:?];
  [(ATXPBProactiveSuggestionExecutableSpecification *)v3 setExecutableObjectHash:?];
  [(ATXPBProactiveSuggestionExecutableSpecification *)v3 setExecutableClassString:?];
  [(ATXPBProactiveSuggestionExecutableSpecification *)v3 setExecutableDescription:?];
  [(ATXPBProactiveSuggestionExecutableSpecification *)v3 setExecutableIdentifier:?];
  executableType = self->_executableType;
  if (executableType >= 0xC)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %li)", self->_executableType];
  }

  else
  {
    v5 = off_1E86A48A8[executableType];
  }

  v6 = v5;
  if (([(__CFString *)v6 isEqualToString:@"Unknown"]& 1) != 0)
  {
    v7 = 0;
  }

  else if (([(__CFString *)v6 isEqualToString:@"App"]& 1) != 0)
  {
    v7 = 1;
  }

  else if (([(__CFString *)v6 isEqualToString:@"Action"]& 1) != 0)
  {
    v7 = 2;
  }

  else if (([(__CFString *)v6 isEqualToString:@"Widget"]& 1) != 0)
  {
    v7 = 3;
  }

  else if (([(__CFString *)v6 isEqualToString:@"Tip"]& 1) != 0)
  {
    v7 = 4;
  }

  else if (([(__CFString *)v6 isEqualToString:@"AppClip"]& 1) != 0)
  {
    v7 = 5;
  }

  else if (([(__CFString *)v6 isEqualToString:@"Interaction"]& 1) != 0)
  {
    v7 = 6;
  }

  else if (([(__CFString *)v6 isEqualToString:@"ContextualAction"]& 1) != 0)
  {
    v7 = 7;
  }

  else if (([(__CFString *)v6 isEqualToString:@"SpotlightAction"]& 1) != 0)
  {
    v7 = 8;
  }

  else if (([(__CFString *)v6 isEqualToString:@"ShortcutsAction"]& 1) != 0)
  {
    v7 = 9;
  }

  else if ([(__CFString *)v6 isEqualToString:@"LinkAction"])
  {
    v7 = 10;
  }

  else
  {
    v7 = 0;
  }

  [(ATXPBProactiveSuggestionExecutableSpecification *)v3 setExecutableType:v7];

  return v3;
}

- (unint64_t)hash
{
  executableObjectHash = self->_executableObjectHash;
  v4 = [(NSString *)self->_executableClassString hash]- executableObjectHash + 32 * executableObjectHash;
  v5 = [(NSString *)self->_executableIdentifier hash];
  return self->_executableType - (v5 - v4 + 32 * v4) + 32 * (v5 - v4 + 32 * v4);
}

+ (id)stringForExecutableType:(int64_t)type
{
  if (type >= 0xC)
  {
    type = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %li)", type];
  }

  else
  {
    type = off_1E86A48A8[type];
  }

  return type;
}

- (ATXProactiveSuggestionExecutableSpecification)initWithExecutable:(id)executable expectedExecutableClassString:(id)string executableDescription:(id)description executableIdentifier:(id)identifier suggestionExecutableType:(int64_t)type
{
  executableCopy = executable;
  stringCopy = string;
  descriptionCopy = description;
  identifierCopy = identifier;
  allowedExecutableClasses = [(ATXProactiveSuggestionExecutableSpecification *)self allowedExecutableClasses];
  v17 = [allowedExecutableClasses containsObject:stringCopy];

  if (v17)
  {
    self = [(ATXProactiveSuggestionExecutableSpecification *)self initWithExecutable:executableCopy executableObjectHash:0 expectedExecutableClassString:stringCopy executableDescription:descriptionCopy executableIdentifier:identifierCopy suggestionExecutableType:type];
    selfCopy = self;
  }

  else
  {
    v20 = __atxlog_handle_blending(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ATXProactiveSuggestionExecutableSpecification initWithExecutable:expectedExecutableClassString:executableDescription:executableIdentifier:suggestionExecutableType:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXProactiveSuggestionExecutableSpecification)initWithExecutableObject:(id)object executableDescription:(id)description executableIdentifier:(id)identifier suggestionExecutableType:(int64_t)type
{
  objectCopy = object;
  descriptionCopy = description;
  identifierCopy = identifier;
  objc_opt_class();
  objc_opt_isKindOfClass();
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  allowedExecutableClasses = [(ATXProactiveSuggestionExecutableSpecification *)self allowedExecutableClasses];
  v16 = [allowedExecutableClasses containsObject:v14];

  if (v16)
  {
    v17 = [(ATXProactiveSuggestionExecutableSpecification *)self executableDataFromExecutableObject:objectCopy executableClassStringFromObject:v14];
    self = -[ATXProactiveSuggestionExecutableSpecification initWithExecutable:executableObjectHash:expectedExecutableClassString:executableDescription:executableIdentifier:suggestionExecutableType:](self, "initWithExecutable:executableObjectHash:expectedExecutableClassString:executableDescription:executableIdentifier:suggestionExecutableType:", v17, [objectCopy hash], v14, descriptionCopy, identifierCopy, type);

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXProactiveSuggestionExecutableSpecification)initWithExecutable:(id)executable executableObjectHash:(unint64_t)hash expectedExecutableClassString:(id)string executableDescription:(id)description executableIdentifier:(id)identifier suggestionExecutableType:(int64_t)type
{
  executableCopy = executable;
  stringCopy = string;
  descriptionCopy = description;
  identifierCopy = identifier;
  v28.receiver = self;
  v28.super_class = ATXProactiveSuggestionExecutableSpecification;
  v18 = [(ATXProactiveSuggestionExecutableSpecification *)&v28 init];
  if (v18)
  {
    v19 = [executableCopy copy];
    executable = v18->_executable;
    v18->_executable = v19;

    v18->_executableObjectHash = hash;
    v21 = [stringCopy copy];
    executableClassString = v18->_executableClassString;
    v18->_executableClassString = v21;

    v23 = [descriptionCopy copy];
    executableDescription = v18->_executableDescription;
    v18->_executableDescription = v23;

    v25 = [identifierCopy copy];
    executableIdentifier = v18->_executableIdentifier;
    v18->_executableIdentifier = v25;

    v18->_executableType = type;
  }

  return v18;
}

- (id)executableDataFromExecutableObject:(id)object executableClassStringFromObject:(id)fromObject
{
  objectCopy = object;
  fromObjectCopy = fromObject;
  if ([fromObjectCopy isEqualToString:@"NSString"])
  {
    v7 = [objectCopy dataUsingEncoding:4];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v13 = 0;
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:objectCopy requiringSecureCoding:1 error:&v13];
    v9 = v13;
    objc_autoreleasePoolPop(v8);
    if (!v7)
    {
      v11 = __atxlog_handle_blending(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ATXProactiveSuggestionExecutableSpecification executableDataFromExecutableObject:executableClassStringFromObject:];
      }
    }
  }

  return v7;
}

- (id)executableObjectFromData:(id)data executableClassString:(id)string
{
  dataCopy = data;
  stringCopy = string;
  allowedExecutableClasses = [(ATXProactiveSuggestionExecutableSpecification *)self allowedExecutableClasses];
  v9 = [allowedExecutableClasses containsObject:stringCopy];

  if (v9)
  {
    v11 = NSClassFromString(stringCopy);
    if (v11)
    {
      if ([(NSString *)stringCopy isEqualToString:@"NSString"])
      {
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:dataCopy encoding:4];
      }

      else
      {
        v13 = objc_autoreleasePoolPush();
        v18 = 0;
        v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:v11 fromData:dataCopy error:&v18];
        v14 = v18;
        objc_autoreleasePoolPop(v13);
        if (!v11 && v14)
        {
          v16 = __atxlog_handle_blending(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [ATXProactiveSuggestionExecutableSpecification executableObjectFromData:executableClassString:];
          }
        }
      }
    }
  }

  else
  {
    v12 = __atxlog_handle_blending(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXProactiveSuggestionExecutableSpecification initWithExecutable:expectedExecutableClassString:executableDescription:executableIdentifier:suggestionExecutableType:];
    }

    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Executable class: %@   Executable description: %@   Executable identifier: %@   Executable type: %ld   ", self->_executableClassString, self->_executableDescription, self->_executableIdentifier, self->_executableType];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXProactiveSuggestionExecutableSpecification allocWithZone:zone];
  v5 = [(NSData *)self->_executable copy];
  executableObjectHash = self->_executableObjectHash;
  v7 = [(NSString *)self->_executableClassString copy];
  v8 = [(NSString *)self->_executableDescription copy];
  v9 = [(NSString *)self->_executableIdentifier copy];
  v10 = [(ATXProactiveSuggestionExecutableSpecification *)v4 initWithExecutable:v5 executableObjectHash:executableObjectHash expectedExecutableClassString:v7 executableDescription:v8 executableIdentifier:v9 suggestionExecutableType:self->_executableType];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(v10 + 1, selfCopy->_executableObject);
  objc_sync_exit(selfCopy);

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = self->_executable;
      v7 = v6;
      if (v6 == v5->_executable)
      {
      }

      else
      {
        v8 = [(NSData *)v6 isEqual:?];

        if ((v8 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      executableObjectHash = self->_executableObjectHash;
      if (executableObjectHash == [(ATXProactiveSuggestionExecutableSpecification *)v5 executableObjectHash])
      {
        v11 = self->_executableClassString;
        v12 = v11;
        if (v11 == v5->_executableClassString)
        {
        }

        else
        {
          v13 = [(NSString *)v11 isEqual:?];

          if ((v13 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v14 = self->_executableDescription;
        v15 = v14;
        if (v14 == v5->_executableDescription)
        {
        }

        else
        {
          v16 = [(NSString *)v14 isEqual:?];

          if ((v16 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v17 = self->_executableIdentifier;
        v18 = v17;
        if (v17 == v5->_executableIdentifier)
        {
        }

        else
        {
          v19 = [(NSString *)v17 isEqual:?];

          if ((v19 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        executableType = self->_executableType;
        v9 = executableType == [(ATXProactiveSuggestionExecutableSpecification *)v5 executableType];
        goto LABEL_21;
      }

LABEL_20:
      v9 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v9 = 0;
  }

LABEL_22:

  return v9;
}

- (BOOL)fuzzyIsEqualToExecutableSpecification:(id)specification
{
  specificationCopy = specification;
  if (self != specificationCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    executableObjectHash = self->_executableObjectHash;
    if (executableObjectHash != [(ATXProactiveSuggestionExecutableSpecification *)specificationCopy executableObjectHash])
    {
      goto LABEL_11;
    }

    v6 = self->_executableClassString;
    v7 = v6;
    if (v6 == specificationCopy->_executableClassString)
    {
    }

    else
    {
      v8 = [(NSString *)v6 isEqual:?];

      if ((v8 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v10 = self->_executableIdentifier;
    v11 = v10;
    if (v10 == specificationCopy->_executableIdentifier)
    {
    }

    else
    {
      v12 = [(NSString *)v10 isEqual:?];

      if ((v12 & 1) == 0)
      {
LABEL_11:
        v9 = 0;
        goto LABEL_12;
      }
    }

    executableType = self->_executableType;
    v9 = executableType == [(ATXProactiveSuggestionExecutableSpecification *)specificationCopy executableType];
    goto LABEL_12;
  }

  v9 = 1;
LABEL_12:

  return v9;
}

- (id)jsonRawData
{
  v11[5] = *MEMORY[0x1E69E9840];
  executableType = self->_executableType;
  v11[0] = self->_executableIdentifier;
  v10[0] = @"executableIdentifier";
  v10[1] = @"executableType";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:executableType];
  executableObjectHash = self->_executableObjectHash;
  executableClassString = self->_executableClassString;
  v11[1] = v4;
  v11[2] = executableClassString;
  v10[2] = @"executableClassString";
  v10[3] = @"executableDescription";
  v11[3] = self->_executableDescription;
  v10[4] = @"executableObjectHash";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:executableObjectHash];
  v11[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

- (id)encodeAsProto
{
  proto = [(ATXProactiveSuggestionExecutableSpecification *)self proto];
  data = [proto data];

  return data;
}

- (ATXProactiveSuggestionExecutableSpecification)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBProactiveSuggestionExecutableSpecification alloc] initWithData:dataCopy];

    self = [(ATXProactiveSuggestionExecutableSpecification *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXProactiveSuggestionExecutableSpecification)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_8:
    selfCopy = 0;
    goto LABEL_36;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v14 = __atxlog_handle_default(isKindOfClass);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [ATXProactiveSuggestion initWithProto:];
    }

    goto LABEL_8;
  }

  v6 = protoCopy;
  executable = [(ATXPBProactiveSuggestionExecutableSpecification *)v6 executable];
  executableObjectHash = [(ATXPBProactiveSuggestionExecutableSpecification *)v6 executableObjectHash];
  executableClassString = [(ATXPBProactiveSuggestionExecutableSpecification *)v6 executableClassString];
  executableDescription = [(ATXPBProactiveSuggestionExecutableSpecification *)v6 executableDescription];
  executableIdentifier = [(ATXPBProactiveSuggestionExecutableSpecification *)v6 executableIdentifier];
  executableType = [(ATXPBProactiveSuggestionExecutableSpecification *)v6 executableType];
  if (executableType >= 0xB)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", executableType];
  }

  else
  {
    v13 = off_1E86A4850[executableType];
  }

  v16 = v13;
  if (([(__CFString *)v16 isEqualToString:@"Unknown"]& 1) != 0)
  {
    v17 = 0;
  }

  else if (([(__CFString *)v16 isEqualToString:@"App"]& 1) != 0)
  {
    v17 = 1;
  }

  else if (([(__CFString *)v16 isEqualToString:@"Action"]& 1) != 0)
  {
    v17 = 2;
  }

  else if (([(__CFString *)v16 isEqualToString:@"Widget"]& 1) != 0)
  {
    v17 = 3;
  }

  else if (([(__CFString *)v16 isEqualToString:@"Tip"]& 1) != 0)
  {
    v17 = 4;
  }

  else if (([(__CFString *)v16 isEqualToString:@"AppClip"]& 1) != 0)
  {
    v17 = 5;
  }

  else if (([(__CFString *)v16 isEqualToString:@"Interaction"]& 1) != 0)
  {
    v17 = 6;
  }

  else if (([(__CFString *)v16 isEqualToString:@"ContextualAction"]& 1) != 0)
  {
    v17 = 7;
  }

  else if (([(__CFString *)v16 isEqualToString:@"SpotlightAction"]& 1) != 0)
  {
    v17 = 8;
  }

  else if (([(__CFString *)v16 isEqualToString:@"ShortcutsAction"]& 1) != 0)
  {
    v17 = 9;
  }

  else if (([(__CFString *)v16 isEqualToString:@"LinkAction"]& 1) != 0)
  {
    v17 = 10;
  }

  else if ([(__CFString *)v16 isEqualToString:@"Max"])
  {
    v17 = 11;
  }

  else
  {
    v17 = 0;
  }

  self = [(ATXProactiveSuggestionExecutableSpecification *)self initWithExecutable:executable executableObjectHash:executableObjectHash expectedExecutableClassString:executableClassString executableDescription:executableDescription executableIdentifier:executableIdentifier suggestionExecutableType:v17];
  selfCopy = self;
LABEL_36:

  return selfCopy;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v22[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v22[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!integer)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForNSUInteger:(unint64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v22[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!integer)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXProactiveSuggestionExecutableSpecification *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXProactiveSuggestionExecutableSpecification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXProactiveSuggestionExecutableSpecification *)self initWithProtoData:v5];
  return v6;
}

@end
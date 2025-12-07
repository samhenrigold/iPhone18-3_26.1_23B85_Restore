@interface _DKCompatibility
+ (id)compatibilityFromSerializedCompatibility:(id)compatibility;
+ (id)compatibilityWithMinVersion:(int64_t)version maxVersion:(int64_t)maxVersion;
+ (id)currentCompatibility;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)eventPredicate;
- (id)filterIncompatibleEvents:(id)events;
- (id)serialize;
@end

@implementation _DKCompatibility

+ (id)currentCompatibility
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40___DKCompatibility_currentCompatibility__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (currentCompatibility_onceToken != -1)
  {
    dispatch_once(&currentCompatibility_onceToken, block);
  }

  v2 = currentCompatibility_compatibility;

  return v2;
}

+ (id)compatibilityWithMinVersion:(int64_t)version maxVersion:(int64_t)maxVersion
{
  v6 = objc_alloc_init(_DKCompatibility);
  [(_DKCompatibility *)v6 setMin:version & ~(version >> 63)];
  [(_DKCompatibility *)v6 setMax:maxVersion];

  return v6;
}

- (id)serialize
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"min";
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_DKCompatibility min](self, "min")}];
  v7[1] = @"max";
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_DKCompatibility max](self, "max")}];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)compatibilityFromSerializedCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  v5 = [compatibilityCopy objectForKeyedSubscript:@"min"];
  v6 = [compatibilityCopy objectForKeyedSubscript:@"max"];

  v7 = [self compatibilityWithMinVersion:objc_msgSend(v5 maxVersion:{"unsignedLongLongValue"), objc_msgSend(v6, "unsignedLongLongValue")}];

  return v7;
}

- (id)eventPredicate
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_DKCompatibility min](self, "min")}];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_DKCompatibility max](self, "max")}];
  v6 = [v3 predicateWithFormat:@"(compatibilityVersion >= %@ AND compatibilityVersion <= %@)", v4, v5];

  return v6;
}

- (id)filterIncompatibleEvents:(id)events
{
  v15 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  eventPredicate = [(_DKCompatibility *)self eventPredicate];
  v6 = [eventsCopy filteredArrayUsingPredicate:eventPredicate];

  if (os_variant_has_internal_diagnostics() && ([v6 isEqual:eventsCopy] & 1) == 0)
  {
    v7 = [MEMORY[0x1E695DFD8] setWithArray:v6];
    v8 = [MEMORY[0x1E695DFA8] setWithArray:eventsCopy];
    [v8 minusSet:v7];
    v9 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      selfCopy = self;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_INFO, "%@ Filtered incompatible events: %@", &v11, 0x16u);
    }
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [(_DKCompatibility *)self min];
      if (v6 == [(_DKCompatibility *)v5 min])
      {
        v7 = [(_DKCompatibility *)self max];
        v8 = v7 == [(_DKCompatibility *)v5 max];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_DKCompatibility min](self, "min")}];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_DKCompatibility max](self, "max")}];
  v6 = [v3 stringWithFormat:@"CompatibilityVersion {min: %@, max: %@}", v4, v5];

  return v6;
}

@end
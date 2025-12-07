@interface BYChronicleEntry
- (BOOL)createdOnCurrentMajorVersion;
- (BOOL)hasCrossedEBoundarySinceCreationForCurrentProductVersion:(id)version;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEntry:(id)entry;
- (BYChronicleEntry)init;
- (BYChronicleEntry)initWithDictionary:(id)dictionary;
- (BYChronicleEntry)initWithProductVersion:(id)version;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation BYChronicleEntry

- (BYChronicleEntry)init
{
  v3 = +[BYDeviceConfiguration currentConfiguration];
  productVersion = [v3 productVersion];
  v5 = [(BYChronicleEntry *)self initWithProductVersion:productVersion];

  return v5;
}

- (BYChronicleEntry)initWithProductVersion:(id)version
{
  versionCopy = version;
  v8.receiver = self;
  v8.super_class = BYChronicleEntry;
  v5 = [(BYChronicleEntry *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BYChronicleEntry *)v5 setProductVersion:versionCopy];
  }

  return v6;
}

- (BYChronicleEntry)initWithDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"productVersion"];
  v5 = [(BYChronicleEntry *)self initWithProductVersion:v4];

  return v5;
}

- (BOOL)createdOnCurrentMajorVersion
{
  v3 = +[BYDeviceConfiguration currentConfiguration];
  productVersion = [v3 productVersion];
  v5 = [productVersion componentsSeparatedByString:@"."];

  if ([v5 count])
  {
    v6 = [v5 objectAtIndex:0];
    intValue = [v6 intValue];

    productVersion2 = [(BYChronicleEntry *)self productVersion];
    v9 = [productVersion2 componentsSeparatedByString:@"."];

    if ([v9 count])
    {
      v10 = [v9 objectAtIndex:0];
      intValue2 = [v10 intValue];

      v12 = intValue == intValue2;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)hasCrossedEBoundarySinceCreationForCurrentProductVersion:(id)version
{
  versionCopy = version;
  v5 = [versionCopy componentsSeparatedByString:@"."];
  if ([v5 count] >= 2)
  {
    productVersion = [(BYChronicleEntry *)self productVersion];
    v8 = [productVersion componentsSeparatedByString:@"."];

    v9 = [v8 count];
    if (v9 >= 2)
    {
      v10 = _BYLoggingFacility(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [BYChronicleEntry hasCrossedEBoundarySinceCreationForCurrentProductVersion:];
      }

      v11 = [v5 objectAtIndex:0];
      intValue = [v11 intValue];

      v13 = [v5 objectAtIndex:1];
      intValue2 = [v13 intValue];

      v15 = [v8 objectAtIndex:0];
      intValue3 = [v15 intValue];

      v17 = [v8 objectAtIndex:1];
      intValue4 = [v17 intValue];

      if (intValue4 > 3)
      {
        ++intValue3;
      }

      v20 = _BYLoggingFacility(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [(BYChronicleEntry *)intValue3 hasCrossedEBoundarySinceCreationForCurrentProductVersion:v20];
      }

      if (intValue2 >= 4)
      {
        v6 = intValue >= intValue3;
      }

      else
      {
        v6 = intValue > intValue3;
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"productVersion";
  productVersion = [(BYChronicleEntry *)self productVersion];
  v6[0] = productVersion;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  productVersion = [(BYChronicleEntry *)self productVersion];
  v6 = [v3 stringWithFormat:@"<%@ : %p> Product Version: %@", v4, self, productVersion];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BYChronicleEntry *)self isEqualToEntry:equalCopy];

  return v5;
}

- (BOOL)isEqualToEntry:(id)entry
{
  entryCopy = entry;
  productVersion = [(BYChronicleEntry *)self productVersion];
  productVersion2 = [entryCopy productVersion];

  LOBYTE(entryCopy) = [productVersion isEqualToString:productVersion2];
  return entryCopy;
}

- (void)hasCrossedEBoundarySinceCreationForCurrentProductVersion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0_1();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&dword_1B862F000, v2, OS_LOG_TYPE_DEBUG, "%s: %{public}@ -> %{public}@", v3, 0x20u);
}

- (void)hasCrossedEBoundarySinceCreationForCurrentProductVersion:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_1B862F000, v0, OS_LOG_TYPE_ERROR, "%s: exception = %{public}@", v1, 0x16u);
}

- (void)hasCrossedEBoundarySinceCreationForCurrentProductVersion:(int)a1 .cold.3(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[BYChronicleEntry hasCrossedEBoundarySinceCreationForCurrentProductVersion:]";
  v4 = 1024;
  v5 = a1;
  _os_log_debug_impl(&dword_1B862F000, a2, OS_LOG_TYPE_DEBUG, "%s: following E major = %d", &v2, 0x12u);
}

@end
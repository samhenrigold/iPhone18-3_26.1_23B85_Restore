@interface HSCMBaseObject
+ (id)statusDescription:(int)description;
- (BOOL)setValue:(id)value forProperty:(__CFString *)property error:(id *)error;
- (HSCMBaseObject)initWithBaseObject:(OpaqueCMBaseObject *)object;
- (id)valueForProperty:(__CFString *)property error:(id *)error;
@end

@implementation HSCMBaseObject

+ (id)statusDescription:(int)description
{
  if ((description + 12788) > 8)
  {
    v4 = *&description;
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:?];
    v3 = [v5 stringWithFormat:@"(%@) (0x%08X) (mach: %s)]", v6, v4, mach_error_string(v4)];
  }

  else
  {
    v3 = off_2796AB4E0[description + 12788];
  }

  return v3;
}

- (HSCMBaseObject)initWithBaseObject:(OpaqueCMBaseObject *)object
{
  v5.receiver = self;
  v5.super_class = HSCMBaseObject;
  result = [(HSCMBaseObject *)&v5 init];
  result->_underlyingObject = object;
  return result;
}

- (BOOL)setValue:(id)value forProperty:(__CFString *)property error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v9 = HSLogHandle(valueCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [HSCMBaseObject setValue:valueCopy forProperty:property error:v9];
  }

  underlyingObject = self->_underlyingObject;
  VTable = CMBaseObjectGetVTable();
  v13 = *(VTable + 8);
  v12 = VTable + 8;
  v14 = *(v13 + 56);
  if (v14)
  {
    v12 = v14(underlyingObject, property, valueCopy);
    v15 = v12;
    if (!v12)
    {
      LOBYTE(error) = 1;
      goto LABEL_11;
    }
  }

  else
  {
    v15 = 4294954514;
  }

  v16 = HSLogHandle(v12);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v26 = [objc_opt_class() statusDescription:v15];
    *buf = 138412802;
    propertyCopy = property;
    v31 = 2112;
    v32 = valueCopy;
    v33 = 2112;
    v34 = v26;
    _os_log_error_impl(&dword_2510E6000, v16, OS_LOG_TYPE_ERROR, "Failed to set property %@ to %@: %@!", buf, 0x20u);
  }

  if (error)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [objc_opt_class() statusDescription:v15];
    v19 = [v17 stringWithFormat:@"Failed to set property %@ to %@: %@!", property, valueCopy, v18];

    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA590];
    v27 = *MEMORY[0x277CCA450];
    v28 = v19;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v23 = [v20 errorWithDomain:v21 code:v15 userInfo:v22];

    v24 = v23;
    *error = v23;

    LOBYTE(error) = 0;
  }

LABEL_11:

  return error;
}

- (id)valueForProperty:(__CFString *)property error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = 0;
  underlyingObject = self->_underlyingObject;
  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 8);
  v8 = VTable + 8;
  v10 = *(v9 + 48);
  if (v10)
  {
    v8 = v10(underlyingObject, property, 0, &v26);
    v11 = v8;
  }

  else
  {
    v11 = 4294954514;
  }

  v12 = HSLogHandle(v8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(HSCMBaseObject *)property valueForProperty:v12 error:?];
  }

  if (!v11)
  {
    v17 = v26;
    if (v26)
    {
      null = v26;
      v17 = null;
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    error = null;
    goto LABEL_15;
  }

  v14 = HSLogHandle(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v25 = [objc_opt_class() statusDescription:v11];
    *buf = 138412546;
    propertyCopy = property;
    v31 = 2112;
    v32 = v25;
    _os_log_error_impl(&dword_2510E6000, v14, OS_LOG_TYPE_ERROR, "Failed to copy property %@: %@!", buf, 0x16u);
  }

  if (error)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [objc_opt_class() statusDescription:v11];
    v17 = [v15 stringWithFormat:@"Failed to copy property %@: %@!", property, v16];

    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA590];
    v27 = *MEMORY[0x277CCA450];
    v28 = v17;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v21 = [v18 errorWithDomain:v19 code:v11 userInfo:v20];

    v22 = v21;
    *error = v21;

    error = 0;
LABEL_15:
  }

  return error;
}

- (void)setValue:(uint64_t)a1 forProperty:(uint64_t)a2 error:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136315650;
  *&v3[4] = "[HSCMBaseObject setValue:forProperty:error:]";
  *&v3[12] = 2112;
  *&v3[14] = a1;
  *&v3[22] = 2112;
  OUTLINED_FUNCTION_0(&dword_2510E6000, a2, a3, "%s: Set %@ > %@", *v3, *&v3[8], *&v3[16], a2);
}

- (void)valueForProperty:(NSObject *)a3 error:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  *v3 = 136315650;
  *&v3[4] = "[HSCMBaseObject valueForProperty:error:]";
  *&v3[12] = 2112;
  *&v3[14] = a1;
  *&v3[22] = 2112;
  OUTLINED_FUNCTION_0(&dword_2510E6000, a2, a3, "%s: Copy %@ > %@", *v3, *&v3[8], *&v3[16], *a2);
}

@end
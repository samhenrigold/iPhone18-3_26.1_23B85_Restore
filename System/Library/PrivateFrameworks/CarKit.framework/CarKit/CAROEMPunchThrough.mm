@interface CAROEMPunchThrough
- (CAROEMPunchThrough)initWithDictionary:(id)dictionary;
- (CGSize)size;
@end

@implementation CAROEMPunchThrough

- (CAROEMPunchThrough)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v38.receiver = self;
  v38.super_class = CAROEMPunchThrough;
  v5 = [(CAROEMPunchThrough *)&v38 init];
  if (!v5)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  v6 = [dictionaryCopy objectForKey:@"inputStreamUID"];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v7 = CarGeneralLogging(v8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CAROEMPunchThrough *)dictionaryCopy initWithDictionary:v7, v16, v17, v18, v19, v20, v21];
    }

    goto LABEL_28;
  }

  v9 = [v7 copy];
  identifier = v5->_identifier;
  v5->_identifier = v9;

  objc_opt_class();
  v11 = [dictionaryCopy objectForKey:@"viewArea"];
  if (v11 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    v12 = CarGeneralLogging(v13);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(CAROEMPunchThrough *)dictionaryCopy initWithDictionary:v12, v24, v25, v26, v27, v28, v29];
    }

    goto LABEL_27;
  }

  CRSizeFromAirPlayDictionary(v12, &v5->_size.width);
  objc_opt_class();
  v14 = [dictionaryCopy objectForKey:@"inputStreamType"];
  if (v14 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  unsignedIntValue = [v15 unsignedIntValue];
  if (!v15 || unsignedIntValue >= 4)
  {
    v30 = CarGeneralLogging(unsignedIntValue);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(CAROEMPunchThrough *)dictionaryCopy initWithDictionary:v30, v31, v32, v33, v34, v35, v36];
    }

LABEL_27:
LABEL_28:

    v23 = 0;
    goto LABEL_29;
  }

  v5->_type = unsignedIntValue;

LABEL_21:
  v23 = v5;
LABEL_29:

  return v23;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)initWithDictionary:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_1C81FC000, a2, a3, "Unable to parse punch through type: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithDictionary:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_1C81FC000, a2, a3, "Unable to parse punch through size: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithDictionary:(uint64_t)a3 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_1C81FC000, a2, a3, "Unable to parse punch through identifier: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end
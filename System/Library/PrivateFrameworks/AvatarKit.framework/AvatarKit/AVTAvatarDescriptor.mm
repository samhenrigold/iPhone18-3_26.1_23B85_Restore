@interface AVTAvatarDescriptor
+ (BOOL)_canLoadDataRepresentationWithVersion:(unsigned __int16)version minimumCompatibleVersion:(unsigned __int16)compatibleVersion error:(id *)error;
+ (BOOL)canLoadDataRepresentation:(id)representation;
+ (id)_descriptorWithDictionaryRepresentation:(id)representation error:(id *)error;
+ (id)_dictionaryRepresentationFromDataRepresentation:(id)representation error:(id *)error;
+ (id)dataRepresentationFromUnsecureDataRepresentation:(id)representation error:(id *)error;
+ (id)descriptorWithDataRepresentation:(id)representation error:(id *)error;
+ (id)descriptorWithURL:(id)l error:(id *)error;
+ (unsigned)classIdentifier;
- (AVTAvatarDescriptor)initWithCoder:(id)coder;
- (AVTAvatarDescriptor)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataRepresentation;
- (void)encodeInDictionaryRepresentation:(id)representation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVTAvatarDescriptor

- (id)dataRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:? forKeyedSubscript:?];
  [v3 setObject:? forKeyedSubscript:?];
  v4 = MEMORY[0x1E696AD98];
  [objc_opt_class() classIdentifier];
  v5 = [v4 numberWithUnsignedChar:?];
  [v3 setObject:? forKeyedSubscript:?];

  [(AVTAvatarDescriptor *)self encodeInDictionaryRepresentation:?];
  v6 = [MEMORY[0x1E696ACB0] dataWithJSONObject:? options:? error:?];

  return v6;
}

+ (id)_dictionaryRepresentationFromDataRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  if (representationCopy)
  {
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:? options:? error:?];
    v7 = 0;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v6;
LABEL_13:

        goto LABEL_14;
      }

      if (error)
      {
        v10 = MEMORY[0x1E696ABC0];
        v11 = MEMORY[0x1E695DF20];
        goto LABEL_11;
      }
    }

    else if (error)
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = MEMORY[0x1E695DF20];
LABEL_11:
      v12 = [v11 dictionaryWithObjects:? forKeys:? count:?];
      *error = [v10 errorWithDomain:? code:? userInfo:?];
    }

    v8 = 0;
    goto LABEL_13;
  }

  if (error)
  {
    v9 = MEMORY[0x1E696ABC0];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    [v9 errorWithDomain:? code:? userInfo:?];
    *error = v8 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v8 = 0;
LABEL_15:

  return v8;
}

+ (BOOL)_canLoadDataRepresentationWithVersion:(unsigned __int16)version minimumCompatibleVersion:(unsigned __int16)compatibleVersion error:(id *)error
{
  if (version <= 6u)
  {
    if (error)
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:version, 7];
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
      v9 = v6;
LABEL_7:
      *error = [v9 errorWithDomain:? code:? userInfo:?];

      return 0;
    }

    return 0;
  }

  if (compatibleVersion >= 0xDu)
  {
    if (error)
    {
      v10 = MEMORY[0x1E696ABC0];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:compatibleVersion, 12];
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
      v9 = v10;
      goto LABEL_7;
    }

    return 0;
  }

  return 1;
}

+ (BOOL)canLoadDataRepresentation:(id)representation
{
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:? options:? error:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v5 = [v4 avt_objectForKey:? ofClass:? didFail:? error:?];
    objc_opt_class();
    v6 = [v4 avt_objectForKey:? ofClass:? didFail:? error:?];
    [v5 intValue];
    [v6 intValue];
    v7 = [self _canLoadDataRepresentationWithVersion:? minimumCompatibleVersion:? error:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_descriptorWithDictionaryRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_15;
  }

  objc_opt_class();
  v5 = [representationCopy avt_objectForKey:? ofClass:? didFail:? error:?];
  objc_opt_class();
  v6 = [representationCopy avt_objectForKey:? ofClass:? didFail:? error:?];
  [v5 intValue];
  [v6 intValue];
  if ([objc_opt_class() _canLoadDataRepresentationWithVersion:? minimumCompatibleVersion:? error:?])
  {
    objc_opt_class();
    v7 = [representationCopy avt_objectForKey:? ofClass:? didFail:? error:?];
    v8 = v7;
    intValue = [v7 intValue];
    if (intValue == 1)
    {
      v10 = off_1E7F470E0;
    }

    else
    {
      if (intValue != 2)
      {
        v11 = 0;
LABEL_13:

        goto LABEL_14;
      }

      v10 = off_1E7F47158;
    }

    v11 = [objc_alloc(*v10) initWithDictionaryRepresentation:? error:?];
    goto LABEL_13;
  }

  v11 = 0;
LABEL_14:

LABEL_15:

  return v11;
}

+ (id)descriptorWithURL:(id)l error:(id *)error
{
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:? options:? error:?];
  if (v5)
  {
    v6 = [self descriptorWithDataRepresentation:? error:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)descriptorWithDataRepresentation:(id)representation error:(id *)error
{
  v5 = [self _dictionaryRepresentationFromDataRepresentation:? error:?];
  v6 = [self _descriptorWithDictionaryRepresentation:? error:?];

  return v6;
}

+ (id)dataRepresentationFromUnsecureDataRepresentation:(id)representation error:(id *)error
{
  v4 = [self descriptorWithDataRepresentation:? error:?];
  dataRepresentation = [v4 dataRepresentation];

  return dataRepresentation;
}

+ (unsigned)classIdentifier
{
  v2 = avt_default_log(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    +[AVTAvatarDescriptor classIdentifier];
  }

  return 0;
}

- (void)encodeInDictionaryRepresentation:(id)representation
{
  v3 = avt_default_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [AVTAvatarDescriptor encodeInDictionaryRepresentation:];
  }
}

- (AVTAvatarDescriptor)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v5 = avt_default_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTAvatarDescriptor initWithDictionaryRepresentation:error:];
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = avt_default_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [AVTAvatarDescriptor copyWithZone:];
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
}

- (AVTAvatarDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:?];
  v6 = [coderCopy decodeIntegerForKey:?];

  if (v5 > 6)
  {
    if (v6 < 13)
    {
      selfCopy = self;
      goto LABEL_9;
    }

    v8 = avt_default_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AVTAvatarDescriptor initWithCoder:];
    }
  }

  else
  {
    v8 = avt_default_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AVTAvatarDescriptor initWithCoder:];
    }
  }

  selfCopy = 0;
LABEL_9:

  return selfCopy;
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)initWithCoder:.cold.2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

@end
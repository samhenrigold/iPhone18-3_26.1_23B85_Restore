@interface ATXLinkActionContainer
- (ATXLinkActionContainer)initWithBundleId:(id)id action:(id)action;
- (ATXLinkActionContainer)initWithCoder:(id)coder;
- (ATXLinkActionContainer)initWithProto:(id)proto;
- (ATXLinkActionContainer)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXLinkActionContainer:(id)container;
- (NSString)description;
- (id)_initWithBundleId:(id)id action:(id)action image:(id)image;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)proto;
@end

@implementation ATXLinkActionContainer

- (ATXLinkActionContainer)initWithBundleId:(id)id action:(id)action
{
  idCopy = id;
  actionCopy = action;
  v14.receiver = self;
  v14.super_class = ATXLinkActionContainer;
  v8 = [(ATXLinkActionContainer *)&v14 init];
  if (v8)
  {
    v9 = [idCopy copy];
    bundleId = v8->_bundleId;
    v8->_bundleId = v9;

    v11 = [actionCopy copy];
    action = v8->_action;
    v8->_action = v11;
  }

  return v8;
}

- (id)_initWithBundleId:(id)id action:(id)action image:(id)image
{
  imageCopy = image;
  v9 = [(ATXLinkActionContainer *)self initWithBundleId:id action:action];
  if (v9)
  {
    v10 = [imageCopy copy];
    image = v9->_image;
    v9->_image = v10;
  }

  return v9;
}

- (ATXLinkActionContainer)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v6 = protoCopy;
      v7 = objc_autoreleasePoolPush();
      v8 = MEMORY[0x1E696ACD0];
      v9 = objc_opt_class();
      action = [v6 action];
      v19 = 0;
      v11 = [v8 unarchivedObjectOfClass:v9 fromData:action error:&v19];
      v12 = v19;

      objc_autoreleasePoolPop(v7);
      if (v12)
      {
        v14 = __atxlog_handle_default(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [ATXLinkActionContainer initWithProto:?];
        }

        selfCopy = 0;
      }

      else
      {
        bundleId = [v6 bundleId];
        v17 = [(ATXLinkActionContainer *)self initWithBundleId:bundleId action:v11];

        self = v17;
        selfCopy = self;
      }
    }

    else
    {
      v6 = __atxlog_handle_default(isKindOfClass);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [(ATXLinkActionContainer *)self initWithProto:v6];
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  bundleId = [(ATXLinkActionContainer *)self bundleId];
  [v3 setBundleId:bundleId];

  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x1E696ACC8];
  action = [(ATXLinkActionContainer *)self action];
  v14 = 0;
  v8 = [v6 archivedDataWithRootObject:action requiringSecureCoding:1 error:&v14];
  v9 = v14;

  objc_autoreleasePoolPop(v5);
  [v3 setAction:v8];

  if (v9)
  {
    v11 = __atxlog_handle_default(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ATXLinkActionContainer *)self proto];
    }

    v12 = 0;
  }

  else
  {
    v12 = v3;
  }

  return v12;
}

- (id)encodeAsProto
{
  proto = [(ATXLinkActionContainer *)self proto];
  data = [proto data];

  return data;
}

- (ATXLinkActionContainer)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBLinkAction alloc] initWithData:dataCopy];

    self = [(ATXLinkActionContainer *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleId = [(ATXLinkActionContainer *)self bundleId];
  [coderCopy encodeObject:bundleId forKey:@"codingKeyForBundleId"];

  action = [(ATXLinkActionContainer *)self action];
  [coderCopy encodeObject:action forKey:@"codingKeyForLinkAction"];

  image = [(ATXLinkActionContainer *)self image];
  [coderCopy encodeObject:image forKey:@"codingKeyForLinkImage"];
}

- (ATXLinkActionContainer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_default(v6);
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForBundleId" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.LinkActionContainer" errorCode:-1 logHandle:v7];

  if (v8)
  {
    v9 = MEMORY[0x1E69C5D78];
    v10 = objc_opt_class();
    v11 = __atxlog_handle_default(v10);
    v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"codingKeyForLinkAction" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.LinkActionContainer" errorCode:-1 logHandle:v11];

    if (v12)
    {
      v13 = MEMORY[0x1E69C5D78];
      v14 = objc_opt_class();
      v15 = __atxlog_handle_default(v14);
      v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"codingKeyForLinkImage" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.LinkActionContainer" errorCode:-1 logHandle:v15];

      self = [(ATXLinkActionContainer *)self _initWithBundleId:v8 action:v12 image:v16];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  bundleId = [(ATXLinkActionContainer *)self bundleId];
  v4 = [bundleId hash];

  image = [(ATXLinkActionContainer *)self image];
  v6 = [image hash] - v4 + 32 * v4;

  action = [(ATXLinkActionContainer *)self action];
  v8 = [action hash] - v6 + 32 * v6;

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXLinkActionContainer *)self isEqualToATXLinkActionContainer:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXLinkActionContainer:(id)container
{
  containerCopy = container;
  v5 = self->_bundleId;
  v6 = v5;
  if (v5 == containerCopy[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_action;
  v10 = v9;
  if (v9 == containerCopy[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(LNAction *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  bundleId = [(ATXLinkActionContainer *)self bundleId];
  action = [(ATXLinkActionContainer *)self action];
  identifier = [action identifier];
  v7 = [v3 initWithFormat:@"ATXLinkActionContainer - bundleId: %@, actionId: %@", bundleId, identifier];

  return v7;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBLinkAction proto", &v5, 0xCu);
}

- (void)initWithProto:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_4(&dword_1BF549000, v3, v4, "%@: Unable to decode data from serialized Link action message: %@", v5, v6, v7, v8);
}

- (void)proto
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_4(&dword_1BF549000, v3, v4, "%@: Unable to serialize LNAction: %@", v5, v6, v7, v8);
}

@end
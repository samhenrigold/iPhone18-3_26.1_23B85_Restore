@interface BKSMousePointerDevice
+ (id)protobufSchema;
- (BKSMousePointerDevice)init;
- (BKSMousePointerDevice)initWithCoder:(id)coder;
- (BKSMousePointerDevice)initWithSenderDescriptor:(id)descriptor;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initForProtobufDecoding;
- (id)preferences;
- (void)encodeWithCoder:(id)coder;
- (void)setPreferences:(id)preferences;
@end

@implementation BKSMousePointerDevice

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v7.receiver = self;
  v7.super_class = BKSMousePointerDevice;
  v4 = [(BKSMousePointerDevice *)&v7 description];
  v5 = [v3 initWithString:?];

  [v5 appendFormat:self->_senderDescriptor, self->_productName, self->_manufacturerName, self->_preferenceKey, self->_hasVirtualMouseButtons, self->_supportsDragLock];
  [v5 appendFormat:self->_supportsLightClick, self->_supportsSystemHaptics];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && [(BKSHIDEventSenderDescriptor *)self->_senderDescriptor isEqual:?]&& [(NSString *)self->_preferenceKey isEqual:?]&& [(NSString *)self->_productName isEqual:?]&& [(NSString *)self->_manufacturerName isEqual:?]&& self->_hasVirtualMouseButtons == equalCopy->_hasVirtualMouseButtons && self->_supportsDragLock == equalCopy->_supportsDragLock && self->_supportsLightClick == equalCopy->_supportsLightClick && self->_supportsSystemHaptics == equalCopy->_supportsSystemHaptics;
  }

  return v6;
}

- (id)initForProtobufDecoding
{
  v3.receiver = self;
  v3.super_class = BKSMousePointerDevice;
  return [(BKSMousePointerDevice *)&v3 init];
}

- (BKSMousePointerDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];
  objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:? forKey:?];
  objc_opt_class();
  v7 = [coderCopy decodeObjectOfClass:? forKey:?];
  productName = self->_productName;
  self->_productName = v7;

  objc_opt_class();
  v9 = [coderCopy decodeObjectOfClass:? forKey:?];
  manufacturerName = self->_manufacturerName;
  self->_manufacturerName = v9;

  self->_hasVirtualMouseButtons = [coderCopy decodeBoolForKey:?];
  self->_supportsDragLock = [coderCopy decodeBoolForKey:?];
  self->_supportsLightClick = [coderCopy decodeBoolForKey:?];
  v11 = [coderCopy decodeBoolForKey:?];

  self->_supportsSystemHaptics = v11;
  v12 = [(BKSMousePointerDevice *)self initWithSenderDescriptor:?];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_preferenceKey, v6);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
}

- (void)setPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v4 = +[BKSMousePointerService sharedInstance];
  [v4 setPreferences:? forDevice:?];
}

- (id)preferences
{
  v2 = +[BKSMousePointerService sharedInstance];
  v3 = [v2 preferencesForDevice:?];

  return v3;
}

- (BKSMousePointerDevice)initWithSenderDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = objc_opt_class();
  objc_opt_class();
  if (([v5 isEqual:?] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:? object:? file:? lineNumber:? description:?];
  }

  v11.receiver = self;
  v11.super_class = BKSMousePointerDevice;
  v6 = [(BKSMousePointerDevice *)&v11 init];
  if (v6)
  {
    v7 = [descriptorCopy copy];
    senderDescriptor = v6->_senderDescriptor;
    v6->_senderDescriptor = v7;
  }

  return v6;
}

- (BKSMousePointerDevice)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:objc_opt_class() object:? file:? lineNumber:? description:?];

  return 0;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__BKSMousePointerDevice_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_4075 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_4075, block);
  }

  v2 = protobufSchema_schema_4076;

  return v2;
}

uint64_t __39__BKSMousePointerDevice_protobufSchema__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E698E750] buildSchemaForClass:? builder:?];
  v2 = protobufSchema_schema_4076;
  protobufSchema_schema_4076 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

void __39__BKSMousePointerDevice_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
}

@end
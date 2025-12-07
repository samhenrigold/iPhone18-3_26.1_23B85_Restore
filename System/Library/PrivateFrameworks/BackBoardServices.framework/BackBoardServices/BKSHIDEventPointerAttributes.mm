@interface BKSHIDEventPointerAttributes
+ (id)protobufSchema;
- (BOOL)isEqual:(id)equal;
- (CGPoint)acceleratedRelativePosition;
- (CGPoint)unacceleratedRelativePosition;
- (id)copyWithZone:(_NSZone *)zone;
- (unsigned)pointerState;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)setPointerState:(unsigned __int16)state;
@end

@implementation BKSHIDEventPointerAttributes

- (CGPoint)acceleratedRelativePosition
{
  x = self->_acceleratedRelativePosition.x;
  y = self->_acceleratedRelativePosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)unacceleratedRelativePosition
{
  x = self->_unacceleratedRelativePosition.x;
  y = self->_unacceleratedRelativePosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v14.receiver = self;
  v14.super_class = BKSHIDEventPointerAttributes;
  [(BKSHIDEventDigitizerAttributes *)&v14 appendDescriptionToFormatter:formatterCopy];
  v5 = NSStringFromBKSHIDEventContextType(self->_contextType);
  [formatterCopy appendString:? withName:?];

  v6 = NSStringFromBKSHIDEventContextMove(self->_contextMove);
  [formatterCopy appendString:? withName:?];

  v7 = [formatterCopy appendObject:? withName:? skipIfNil:?];
  v8 = [formatterCopy appendObject:? withName:? skipIfNil:?];
  v9 = [formatterCopy appendPoint:? withName:?];
  v10 = [formatterCopy appendPoint:? withName:?];
  if (self->_fingerDownCount >= 1)
  {
    v11 = [formatterCopy appendInteger:? withName:?];
  }

  if (self->_pointerEdgeMask)
  {
    v12 = NSStringFromBKSHIDEventScreenEdgeMask(self->_pointerEdgeMask);
    [formatterCopy appendString:? withName:?];
  }

  if (self->_teleportState)
  {
    v13 = NSStringFromBKSHIDEventTeleportState(self->_teleportState);
    [formatterCopy appendString:? withName:?];
  }
}

- (void)setPointerState:(unsigned __int16)state
{
  if ((state - 1) <= 3u)
  {
    v3 = (state - 1);
    v4 = qword_1863CFBC0[v3];
    v5 = qword_1863CFBE0[v3];
    self->_contextType = v4;
    self->_contextMove = v5;
  }
}

- (unsigned)pointerState
{
  contextType = self->_contextType;
  if (contextType >= 2)
  {
    if (contextType == 2)
    {
      contextMove = self->_contextMove;
      if (contextMove < 3)
      {
        return 0x300040004uLL >> (16 * contextMove);
      }
    }

LABEL_7:
    LOWORD(v4) = 2;
    return v4;
  }

  v3 = self->_contextMove;
  if (v3 >= 3)
  {
    goto LABEL_7;
  }

  return 0x300010002uLL >> (16 * v3);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = BKSHIDEventPointerAttributes;
  if ([(BKSHIDEventDigitizerAttributes *)&v9 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    v6 = v5;
    v7 = self->_contextMove == *(v5 + 16) && self->_contextType == *(v5 + 17) && BSEqualObjects() && BSEqualObjects() && self->_unacceleratedRelativePosition.x == v6[21] && self->_unacceleratedRelativePosition.y == v6[22] && self->_acceleratedRelativePosition.x == v6[23] && self->_acceleratedRelativePosition.y == v6[24] && self->_fingerDownCount == *(v6 + 19) && self->_pointerEdgeMask == *(v6 + 120) && self->_teleportState == *(v6 + 61);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = BKSHIDEventPointerAttributes;
  v4 = [(BKSHIDEventDigitizerAttributes *)&v8 copyWithZone:?];
  *(v4 + 17) = self->_contextType;
  *(v4 + 16) = self->_contextMove;
  v5 = [(NSArray *)self->_hitTestContexts copyWithZone:?];
  v6 = *(v4 + 18);
  *(v4 + 18) = v5;

  objc_storeStrong(v4 + 20, self->_hitTestSecurityAnalysis);
  *(v4 + 168) = self->_unacceleratedRelativePosition;
  *(v4 + 184) = self->_acceleratedRelativePosition;
  *(v4 + 19) = self->_fingerDownCount;
  v4[120] = self->_pointerEdgeMask;
  *(v4 + 61) = self->_teleportState;
  return v4;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__BKSHIDEventPointerAttributes_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_551 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_551, block);
  }

  v2 = protobufSchema_schema_550;

  return v2;
}

uint64_t __46__BKSHIDEventPointerAttributes_protobufSchema__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E698E750] buildSchemaForClass:? builder:?];
  v2 = protobufSchema_schema_550;
  protobufSchema_schema_550 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

void __46__BKSHIDEventPointerAttributes_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:?];
  [v2 addField:?];
  objc_opt_class();
  [v2 addRepeatingField:? containsClass:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
}

@end
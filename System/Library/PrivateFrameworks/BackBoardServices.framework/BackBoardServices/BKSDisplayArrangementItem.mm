@interface BKSDisplayArrangementItem
- (BKSDisplayArrangementItem)initWithCoder:(id)coder;
- (BKSDisplayArrangementItem)initWithDisplayUUID:(id)d relativeToDisplayUUID:(id)iD alongEdge:(unsigned int)edge atOffset:(double)offset;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSDisplayArrangementItem

- (BKSDisplayArrangementItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];
  objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:? forKey:?];
  objc_opt_class();
  v7 = [coderCopy decodeObjectOfClass:? forKey:?];
  [v7 unsignedIntValue];

  [coderCopy decodeDoubleForKey:?];
  v8 = [BKSDisplayArrangementItem initWithDisplayUUID:"initWithDisplayUUID:relativeToDisplayUUID:alongEdge:atOffset:" relativeToDisplayUUID:? alongEdge:? atOffset:?];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  [coderCopy encodeObject:? forKey:?];

  [coderCopy encodeDouble:? forKey:?];
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  [formatterCopy appendString:? withName:?];
  [formatterCopy appendString:? withName:? skipIfEmpty:?];
  v3 = [formatterCopy appendUnsignedInteger:? withName:?];
  v4 = [formatterCopy appendFloat:? withName:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = MEMORY[0x1E698E6A0];
  objc_opt_class();
  v5 = [v4 builderWithObject:? ofExpectedClass:?];
  v15 = equalCopy;
  v6 = [v5 appendString:? counterpart:?];
  v14 = v15;
  v7 = [v5 appendString:? counterpart:?];
  v13 = v14;
  v8 = [v5 appendUnsignedInteger:? counterpart:?];
  v12 = MEMORY[0x1E69E9820];
  v9 = v13;
  v10 = [v5 appendCGFloat:v12 counterpart:{3221225472, __37__BKSDisplayArrangementItem_isEqual___block_invoke_4, &unk_1E6F46738}];
  LOBYTE(equalCopy) = [v5 isEqual];

  return equalCopy;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v3 = [builder appendString:?];
  v4 = [builder appendString:?];
  v5 = [builder appendUnsignedInteger:?];
  v6 = [builder appendCGFloat:?];
  v7 = [builder hash];

  return v7;
}

- (BKSDisplayArrangementItem)initWithDisplayUUID:(id)d relativeToDisplayUUID:(id)iD alongEdge:(unsigned int)edge atOffset:(double)offset
{
  dCopy = d;
  iDCopy = iD;
  v18.receiver = self;
  v18.super_class = BKSDisplayArrangementItem;
  v12 = [(BKSDisplayArrangementItem *)&v18 init];
  if (v12)
  {
    v13 = [dCopy copy];
    displayUUID = v12->_displayUUID;
    v12->_displayUUID = v13;

    v15 = [iDCopy copy];
    relativeDisplayUUID = v12->_relativeDisplayUUID;
    v12->_relativeDisplayUUID = v15;

    v12->_edge = edge;
    v12->_offset = offset;
  }

  return v12;
}

@end
@interface RBImageQueueLayer
+ (id)defaultValueForKey:(id)key;
- (id)initWithSlots:(void *)slots;
@end

@implementation RBImageQueueLayer

+ (id)defaultValueForKey:(id)key
{
  if ([key isEqualToString:@"speed"])
  {
    return &unk_1F0A47090;
  }

  if ([key isEqualToString:@"anchorPoint"])
  {
    v7[0] = 0;
    v7[1] = 0;
    return [MEMORY[0x1E696B098] valueWithBytes:v7 objCType:"{CGPoint=dd}"];
  }

  else if ([key isEqualToString:@"needsLayoutOnGeometryChange"] & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"allowsEdgeAntialiasing"))
  {
    return MEMORY[0x1E695E110];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___RBImageQueueLayer;
    return objc_msgSendSuper2(&v6, sel_defaultValueForKey_, key);
  }
}

- (id)initWithSlots:(void *)slots
{
  if (!slots)
  {
    return 0;
  }

  v6.receiver = slots;
  v6.super_class = RBImageQueueLayer;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  if (v3)
  {
    v5 = [[RBImageQueueContents alloc] initWithSlots:a2];

    v3[6] = v5;
    [v3 setContents:v3[6]];
    [v3 setContentsGravity:*MEMORY[0x1E6979DC0]];
  }

  return v3;
}

@end
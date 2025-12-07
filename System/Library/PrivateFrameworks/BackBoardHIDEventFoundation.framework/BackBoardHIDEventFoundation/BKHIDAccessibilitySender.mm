@interface BKHIDAccessibilitySender
+ (id)accessibilityHIDServices;
- (BKHIDAccessibilitySender)initWithSenderID:(unint64_t)d;
@end

@implementation BKHIDAccessibilitySender

- (BKHIDAccessibilitySender)initWithSenderID:(unint64_t)d
{
  v9.receiver = self;
  v9.super_class = BKHIDAccessibilitySender;
  v4 = [(BKHIDAccessibilitySender *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_senderID = d;
    wildcard = [MEMORY[0x277CF06D0] wildcard];
    senderDescriptor = v5->_senderDescriptor;
    v5->_senderDescriptor = wildcard;
  }

  return v5;
}

+ (id)accessibilityHIDServices
{
  v12[8] = *MEMORY[0x277D85DE8];
  v2 = [[BKHIDAccessibilitySender alloc] initWithSenderID:0x8000000817319371];
  v3 = [[BKHIDAccessibilitySender alloc] initWithSenderID:0x8000000817319372];
  v4 = [[BKHIDAccessibilitySender alloc] initWithSenderID:0x8000000817319373];
  v5 = [[BKHIDAccessibilitySender alloc] initWithSenderID:0x8000000817319374];
  v6 = [[BKHIDAccessibilitySender alloc] initWithSenderID:0x8000000817319375];
  v7 = [[BKHIDAccessibilitySender alloc] initWithSenderID:0x8000000817319376];
  v8 = [[BKHIDAccessibilitySender alloc] initWithSenderID:0x8000000817319379];
  v9 = [[BKHIDAccessibilitySender alloc] initWithSenderID:0x8000000817319378];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v12[7] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:8];

  return v10;
}

@end
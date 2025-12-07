@interface KNSlideNodeSlideSpecificTableCounter
- (KNSlideNodeSlideSpecificTableCounter)initWithTableInfoUUID:(id)d andLinkCount:(unint64_t)count;
- (NSString)stringValue;
- (id)description;
- (void)decrement;
@end

@implementation KNSlideNodeSlideSpecificTableCounter

- (KNSlideNodeSlideSpecificTableCounter)initWithTableInfoUUID:(id)d andLinkCount:(unint64_t)count
{
  dCopy = d;
  if (!dCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideNodeSlideSpecificTableCounter initWithTableInfoUUID:andLinkCount:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNode.m"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:102 isFatal:0 description:{"invalid nil value for '%{public}s'", "tableInfoUUID"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v14.receiver = self;
  v14.super_class = KNSlideNodeSlideSpecificTableCounter;
  v11 = [(KNSlideNodeSlideSpecificTableCounter *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_tableInfoUUID, d);
    v12->_linkCount = count;
  }

  return v12;
}

- (void)decrement
{
  linkCount = self->_linkCount;
  if (linkCount)
  {
    self->_linkCount = linkCount - 1;
  }
}

- (NSString)stringValue
{
  v3 = MEMORY[0x277CCACA8];
  uUIDString = [(NSUUID *)self->_tableInfoUUID UUIDString];
  v5 = [v3 stringWithFormat:@"%@, %ld", uUIDString, self->_linkCount];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  uUIDString = [(NSUUID *)self->_tableInfoUUID UUIDString];
  v5 = [v3 stringWithFormat:@"Table Slide Specific Mapping: Table UUID: %@, count: %ld", uUIDString, self->_linkCount];

  return v5;
}

@end
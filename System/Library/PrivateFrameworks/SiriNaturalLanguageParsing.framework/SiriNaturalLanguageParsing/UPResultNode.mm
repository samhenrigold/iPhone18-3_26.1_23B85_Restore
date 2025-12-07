@interface UPResultNode
- (UPResultNode)initWithLabel:(id)label;
- (id)_dictionaryRepresentation;
@end

@implementation UPResultNode

- (id)_dictionaryRepresentation
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"label";
  label = [(UPResultNode *)self label];
  null = label;
  if (!label)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v7[0] = null;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  if (!label)
  {
  }

  return v4;
}

- (UPResultNode)initWithLabel:(id)label
{
  labelCopy = label;
  v9.receiver = self;
  v9.super_class = UPResultNode;
  v6 = [(UPResultNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_label, label);
  }

  return v7;
}

@end
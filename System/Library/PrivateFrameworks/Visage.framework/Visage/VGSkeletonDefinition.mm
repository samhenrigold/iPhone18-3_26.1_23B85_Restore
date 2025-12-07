@interface VGSkeletonDefinition
- (BOOL)isEqual:(id)equal;
- (VGSkeletonDefinition)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VGSkeletonDefinition

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[VGSkeletonDefinition jointCount](self forKey:{"jointCount"), @"jointCount"}];
  [coderCopy encodeInteger:-[VGSkeletonDefinition rootJointIndex](self forKey:{"rootJointIndex"), @"rootJointIndex"}];
  parentChildOrder = [(VGSkeletonDefinition *)self parentChildOrder];
  [coderCopy encodeObject:parentChildOrder forKey:@"parentChildOrder"];

  [coderCopy encodeInt:-[VGSkeletonDefinition skeletonType](self forKey:{"skeletonType"), @"skeletonType"}];
}

- (VGSkeletonDefinition)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = VGSkeletonDefinition;
  v5 = [(VGSkeletonDefinition *)&v12 init];
  if (v5)
  {
    -[VGSkeletonDefinition setJointCount:](v5, "setJointCount:", [coderCopy decodeInt64ForKey:@"jointCount"]);
    -[VGSkeletonDefinition setRootJointIndex:](v5, "setRootJointIndex:", [coderCopy decodeIntegerForKey:@"rootJointIndex"]);
    v6 = MEMORY[0x277CBEB98];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"parentChildOrder"];
    [(VGSkeletonDefinition *)v5 setParentChildOrder:v9];

    -[VGSkeletonDefinition setSkeletonType:](v5, "setSkeletonType:", [coderCopy decodeIntForKey:@"skeletonType"]);
    v10 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ([(VGSkeletonDefinition *)self jointCount]== *(v5 + 2) && [(VGSkeletonDefinition *)self rootJointIndex]== *(v5 + 3))
    {
      parentChildOrder = [(VGSkeletonDefinition *)self parentChildOrder];
      if (parentChildOrder || *(v5 + 4))
      {
        parentChildOrder2 = [(VGSkeletonDefinition *)self parentChildOrder];
        if ([parentChildOrder2 isEqual:*(v5 + 4)])
        {
          v8 = [(VGSkeletonDefinition *)self skeletonType]== v5[2];
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = [(VGSkeletonDefinition *)self skeletonType]== v5[2];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
@interface KNAnimParameterGroupSavedPathElement
- (CGPoint)cp1;
- (CGPoint)cp2;
- (CGPoint)toPoint;
- (KNAnimParameterGroupSavedPathElement)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KNAnimParameterGroupSavedPathElement

- (KNAnimParameterGroupSavedPathElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = KNAnimParameterGroupSavedPathElement;
  v5 = [(KNAnimParameterGroupSavedPathElement *)&v16 init];
  if (v5)
  {
    v5->_elementType = [coderCopy decodeIntegerForKey:@"ele"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tv"];
    [v6 CGPointValue];
    v5->_toPoint.x = v7;
    v5->_toPoint.y = v8;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cp1"];
    [v9 CGPointValue];
    v5->_cp1.x = v10;
    v5->_cp1.y = v11;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cp2"];
    [v12 CGPointValue];
    v5->_cp2.x = v13;
    v5->_cp2.y = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[KNAnimParameterGroupSavedPathElement elementType](self forKey:{"elementType"), @"ele"}];
  v5 = MEMORY[0x277CCAE60];
  [(KNAnimParameterGroupSavedPathElement *)self toPoint];
  v6 = [v5 valueWithCGPoint:?];
  [coderCopy encodeObject:v6 forKey:@"tv"];

  v7 = MEMORY[0x277CCAE60];
  [(KNAnimParameterGroupSavedPathElement *)self cp1];
  v8 = [v7 valueWithCGPoint:?];
  [coderCopy encodeObject:v8 forKey:@"cp1"];

  v9 = MEMORY[0x277CCAE60];
  [(KNAnimParameterGroupSavedPathElement *)self cp2];
  v10 = [v9 valueWithCGPoint:?];
  [coderCopy encodeObject:v10 forKey:@"cp2"];
}

- (CGPoint)toPoint
{
  x = self->_toPoint.x;
  y = self->_toPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)cp1
{
  x = self->_cp1.x;
  y = self->_cp1.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)cp2
{
  x = self->_cp2.x;
  y = self->_cp2.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
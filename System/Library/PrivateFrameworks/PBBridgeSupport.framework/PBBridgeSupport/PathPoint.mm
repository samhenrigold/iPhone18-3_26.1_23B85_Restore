@interface PathPoint
- (PathPoint)initWithP:(PathPoint *)self n:(SEL)n r:(float)r l:(float)l;
@end

@implementation PathPoint

- (PathPoint)initWithP:(PathPoint *)self n:(SEL)n r:(float)r l:(float)l
{
  v6 = v5;
  v7 = v4;
  v8 = *&l;
  v9 = *&r;
  v11.receiver = self;
  v11.super_class = PathPoint;
  result = [(PathPoint *)&v11 init];
  if (result)
  {
    *result->_p = v9;
    *result->_n = v8;
    result->_r = v7;
    result->_l = v6;
  }

  return result;
}

@end
@interface ARCoachingControlPointContainer
- ($3BA783FF50B239963188BE194EBFFEBA)controlPoints;
- (ARCoachingControlPointContainer)initWithControlPoints:(id *)points numControlPoints:(int)controlPoints;
- (id).cxx_construct;
- (void)overwriteWithControlPoints:(id *)points numControlPoints:(int)controlPoints;
@end

@implementation ARCoachingControlPointContainer

- ($3BA783FF50B239963188BE194EBFFEBA)controlPoints
{
  if (self->_controlPoints.__begin_ == self->_controlPoints.__end_)
  {
    return 0;
  }

  else
  {
    return self->_controlPoints.__begin_;
  }
}

- (ARCoachingControlPointContainer)initWithControlPoints:(id *)points numControlPoints:(int)controlPoints
{
  v4 = *&controlPoints;
  v9.receiver = self;
  v9.super_class = ARCoachingControlPointContainer;
  v6 = [(ARCoachingControlPointContainer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(ARCoachingControlPointContainer *)v6 overwriteWithControlPoints:points numControlPoints:v4];
  }

  return v7;
}

- (void)overwriteWithControlPoints:(id *)points numControlPoints:(int)controlPoints
{
  begin = self->_controlPoints.__begin_;
  p_controlPoints = &self->_controlPoints;
  p_controlPoints->__end_ = begin;
  std::vector<ARCoachingControlPoint>::__assign_with_size[abi:ne200100]<ARCoachingControlPoint*,ARCoachingControlPoint*>(&p_controlPoints->__begin_, points, &points[8 * controlPoints], controlPoints);
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end
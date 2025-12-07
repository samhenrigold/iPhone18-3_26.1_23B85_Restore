@interface _UIPreviewParametersCornerRadii
- (BOOL)isEqual:(id)equal;
- (CACornerRadii)radii;
- (_UIPreviewParametersCornerRadii)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setRadii:(CACornerRadii *)radii;
@end

@implementation _UIPreviewParametersCornerRadii

- (_UIPreviewParametersCornerRadii)init
{
  v3.receiver = self;
  v3.super_class = _UIPreviewParametersCornerRadii;
  result = [(_UIPreviewParametersCornerRadii *)&v3 init];
  if (result)
  {
    result->_curve = *MEMORY[0x1E69796E8];
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(objc_opt_class());
  minXMinY = self->_radii.minXMinY;
  minXMaxY = self->_radii.minXMaxY;
  maxXMaxY = self->_radii.maxXMaxY;
  *(result + 3) = self->_radii.maxXMinY;
  *(result + 4) = minXMinY;
  *(result + 1) = minXMaxY;
  *(result + 2) = maxXMaxY;
  *(result + 1) = self->_curve;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (equalCopy)
  {
    objc_msgSend_radii(equalCopy);
  }

  minXMaxY = self->_radii.minXMaxY;
  maxXMaxY = self->_radii.maxXMaxY;
  maxXMinY = self->_radii.maxXMinY;
  minXMinY = self->_radii.minXMinY;
  if (CACornerRadiiEqualToRadii())
  {
    curve = self->_curve;
    curve = [equalCopy curve];
    v7 = curve;
    v8 = curve;
    v9 = v8;
    if (v7 == v8)
    {
      isEqual = 1;
    }

    else
    {
      isEqual = 0;
      if (v7 && v8)
      {
        isEqual = objc_msgSend_isEqual_(v7);
      }
    }
  }

  else
  {
LABEL_9:
    isEqual = 0;
  }

  return isEqual;
}

- (CACornerRadii)radii
{
  maxXMinY = self->maxXMinY;
  retstr->minXMaxY = self->maxXMaxY;
  retstr->maxXMaxY = maxXMinY;
  minXMaxY = self[1].minXMaxY;
  retstr->maxXMinY = self->minXMinY;
  retstr->minXMinY = minXMaxY;
  return self;
}

- (void)setRadii:(CACornerRadii *)radii
{
  minXMaxY = radii->minXMaxY;
  maxXMaxY = radii->maxXMaxY;
  minXMinY = radii->minXMinY;
  self->_radii.maxXMinY = radii->maxXMinY;
  self->_radii.minXMinY = minXMinY;
  self->_radii.minXMaxY = minXMaxY;
  self->_radii.maxXMaxY = maxXMaxY;
}

@end
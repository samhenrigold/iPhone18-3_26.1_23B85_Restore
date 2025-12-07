@interface _UICollectionPreferredSize
+ (double)preferredSizeForOriginalSize:(double)size fittingSize:(double)fittingSize layoutSize:(double)layoutSize;
- (double)fittingSize;
- (double)preferredSizeForOriginalSize:(double)size layoutSize:(double)layoutSize;
- (id)description;
- (id)initWithOriginalSize:(void *)size fittingSize:(double)fittingSize layoutSize:(double)layoutSize additionalData:(double)data;
@end

@implementation _UICollectionPreferredSize

- (double)fittingSize
{
  if (self)
  {
    return *(self + 24);
  }

  else
  {
    return 0.0;
  }
}

+ (double)preferredSizeForOriginalSize:(double)size fittingSize:(double)fittingSize layoutSize:(double)layoutSize
{
  objc_opt_self();
  widthDimension = [a2 widthDimension];
  isEstimated = [widthDimension isEstimated];

  if (!isEstimated)
  {
    layoutSize = size;
  }

  heightDimension = [a2 heightDimension];
  [heightDimension isEstimated];

  return layoutSize;
}

- (id)initWithOriginalSize:(void *)size fittingSize:(double)fittingSize layoutSize:(double)layoutSize additionalData:(double)data
{
  if (!self)
  {
    return 0;
  }

  v16.receiver = self;
  v16.super_class = _UICollectionPreferredSize;
  v13 = objc_msgSendSuper2(&v16, sel_init);
  v14 = v13;
  if (v13)
  {
    *(v13 + 1) = fittingSize;
    *(v13 + 2) = layoutSize;
    *(v13 + 3) = data;
    *(v13 + 4) = a7;
    objc_storeStrong(v13 + 5, a2);
    objc_storeStrong(v14 + 7, size);
    *(v14 + 48) = 0;
  }

  return v14;
}

- (double)preferredSizeForOriginalSize:(double)size layoutSize:(double)layoutSize
{
  if (self)
  {
    return [_UICollectionPreferredSize preferredSizeForOriginalSize:a2 fittingSize:size layoutSize:layoutSize, *(self + 24)];
  }

  else
  {
    return 0.0;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromCGSize(self->_originalSize);
  v7 = NSStringFromCGSize(self->_fittingSize);
  v8 = v7;
  if (self->_preferredSizeDirty)
  {
    v9 = @"; DIRTY";
  }

  else
  {
    v9 = &stru_1EFB14550;
  }

  v10 = [v3 stringWithFormat:@"<%@ - %p: original=%@ fitting=%@%@>", v5, self, v6, v7, v9];;

  return v10;
}

@end
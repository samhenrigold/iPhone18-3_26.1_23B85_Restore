@interface MIOImageSizeConstraint
- (BOOL)allowsImageSize:(id)size;
- (BOOL)isEqual:(id)equal;
- (MIOImageSizeConstraint)init;
- (MIOImageSizeConstraint)initWithEnumeratedImageSizes:(id)sizes;
- (MIOImageSizeConstraint)initWithPixelsWideRange:(_MIORange)range pixelsHighRange:(_MIORange)highRange;
- (MIOImageSizeConstraint)initWithSpecification:(const void *)specification;
- (_MIORange)pixelsHighRange;
- (_MIORange)pixelsWideRange;
- (id)description;
- (unint64_t)hash;
@end

@implementation MIOImageSizeConstraint

- (MIOImageSizeConstraint)init
{
  v10.receiver = self;
  v10.super_class = MIOImageSizeConstraint;
  v2 = [(MIOImageSizeConstraint *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_type = 0;
    MIOMakeRange();
    v3->_pixelsWideRange.lowerBound = v4;
    v3->_pixelsWideRange.upperBound = v5;
    MIOMakeRange();
    v3->_pixelsHighRange.lowerBound = v6;
    v3->_pixelsHighRange.upperBound = v7;
    enumeratedImageSizes = v3->_enumeratedImageSizes;
    v3->_enumeratedImageSizes = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (MIOImageSizeConstraint)initWithPixelsWideRange:(_MIORange)range pixelsHighRange:(_MIORange)highRange
{
  upperBound = highRange.upperBound;
  lowerBound = highRange.lowerBound;
  v6 = range.upperBound;
  v7 = range.lowerBound;
  result = [(MIOImageSizeConstraint *)self init];
  if (result)
  {
    result->_type = 3;
    result->_pixelsWideRange.lowerBound = v7;
    result->_pixelsWideRange.upperBound = v6;
    result->_pixelsHighRange.lowerBound = lowerBound;
    result->_pixelsHighRange.upperBound = upperBound;
  }

  return result;
}

- (MIOImageSizeConstraint)initWithEnumeratedImageSizes:(id)sizes
{
  v32 = *MEMORY[0x1E69E9840];
  sizesCopy = sizes;
  v26 = [(MIOImageSizeConstraint *)self init];
  if ([sizesCopy count])
  {
    if ([sizesCopy count] == 1)
    {
      v4 = [sizesCopy objectAtIndexedSubscript:0];
      if ([v4 pixelsWide])
      {
      }

      else
      {
        v5 = [sizesCopy objectAtIndexedSubscript:0];
        pixelsHigh = [v5 pixelsHigh];

        if (!pixelsHigh)
        {
          goto LABEL_23;
        }
      }
    }

    if (v26)
    {
      v26->_type = 2;
      v7 = [sizesCopy sortedArrayUsingSelector:sel_compare_];
      enumeratedImageSizes = v26->_enumeratedImageSizes;
      v26->_enumeratedImageSizes = v7;

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v9 = sizesCopy;
      v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v10)
      {
        v11 = *v28;
        v12 = 0x7FFFFFFFFFFFFFFFLL;
        v13 = 0x8000000000000000;
        v14 = 0x8000000000000000;
        v15 = 0x7FFFFFFFFFFFFFFFLL;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v28 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v17 = *(*(&v27 + 1) + 8 * i);
            pixelsHigh2 = [v17 pixelsHigh];
            pixelsWide = [v17 pixelsWide];
            if (pixelsWide < v15)
            {
              v15 = pixelsWide;
            }

            if (v14 <= pixelsWide)
            {
              v14 = pixelsWide;
            }

            if (pixelsHigh2 < v12)
            {
              v12 = pixelsHigh2;
            }

            if (v13 <= pixelsHigh2)
            {
              v13 = pixelsHigh2;
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v10);
      }

      MIOMakeRange();
      v26->_pixelsWideRange.lowerBound = v20;
      v26->_pixelsWideRange.upperBound = v21;
      MIOMakeRange();
      v26->_pixelsHighRange.lowerBound = v22;
      v26->_pixelsHighRange.upperBound = v23;
    }
  }

LABEL_23:

  return v26;
}

- (MIOImageSizeConstraint)initWithSpecification:(const void *)specification
{
  v26[1] = *MEMORY[0x1E69E9840];
  CoreML::Specification::ImageFeatureType_ImageSize::ImageFeatureType_ImageSize(v24, 0, 0);
  v25 = *(specification + 1);
  v5 = [[MIOImageSize alloc] initWithSpecification:v24];
  if ([(MIOImageSize *)v5 pixelsWide])
  {
    v6 = [(MIOImageSize *)v5 pixelsHigh]!= 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(specification + 13);
  switch(v7)
  {
    case 0:
      if (!v6)
      {
        v14 = [(MIOImageSizeConstraint *)self init];
        goto LABEL_28;
      }

      v26[0] = v5;
      array = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      v22 = [(MIOImageSizeConstraint *)self initWithEnumeratedImageSizes:array];
      goto LABEL_26;
    case 21:
      array = [MEMORY[0x1E695DF70] array];
      if (*(specification + 13) == 21)
      {
        v16 = *(specification + 5);
      }

      else
      {
        v16 = &CoreML::Specification::_ImageFeatureType_EnumeratedImageSizes_default_instance_;
      }

      v17 = v16[4];
      if (v17)
      {
        v18 = v17 + 1;
      }

      else
      {
        v18 = 0;
      }

      v19 = *(v16 + 6);
      if (v19)
      {
        v20 = 8 * v19;
        do
        {
          v21 = [[MIOImageSize alloc] initWithSpecification:*v18];
          [array addObject:v21];

          ++v18;
          v20 -= 8;
        }

        while (v20);
      }

      if (![array count])
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [MIOImageSizeConstraint initWithSpecification:];
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [MIOImageSizeConstraint initWithSpecification:];
        }

        [array addObject:v5];
      }

      v22 = [(MIOImageSizeConstraint *)self initWithEnumeratedImageSizes:array];
LABEL_26:
      self = v22;

      break;
    case 31:
      MIOMakeRange();
      v9 = v8;
      v11 = v10;
      MIOMakeRange();
      v14 = [(MIOImageSizeConstraint *)self initWithPixelsWideRange:v9 pixelsHighRange:v11, v12, v13];
LABEL_28:
      self = v14;
      break;
  }

  CoreML::Specification::ImageFeatureType_ImageSize::~ImageFeatureType_ImageSize(v24);
  return self;
}

- (BOOL)allowsImageSize:(id)size
{
  sizeCopy = size;
  v5 = sizeCopy;
  type = self->_type;
  if (!type)
  {
    v8 = 1;
    goto LABEL_10;
  }

  if (type == 2)
  {
    v7 = [(NSArray *)self->_enumeratedImageSizes containsObject:sizeCopy];
    goto LABEL_8;
  }

  if (type == 3 && MIOLocationInRange([sizeCopy pixelsWide], self->_pixelsWideRange.lowerBound, self->_pixelsWideRange.upperBound))
  {
    v7 = MIOLocationInRange([v5 pixelsHigh], self->_pixelsHighRange.lowerBound, self->_pixelsHighRange.upperBound);
LABEL_8:
    v8 = v7;
    goto LABEL_10;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  type = [(MIOImageSizeConstraint *)self type];
  v5 = @"unspecified";
  if (type == 3)
  {
    v5 = @"ranges";
  }

  if (type == 2)
  {
    v5 = @"enumerated";
  }

  v6 = [v3 initWithFormat:@"MIOImageSizeConstraint (%@) ", v5];
  if ([(MIOImageSizeConstraint *)self type]== 2)
  {
    enumeratedImageSizes = [(MIOImageSizeConstraint *)self enumeratedImageSizes];
    v8 = [enumeratedImageSizes componentsJoinedByString:{@", "}];
    [v6 appendFormat:@"[%@]", v8];
  }

  else
  {
    if ([(MIOImageSizeConstraint *)self type]!= 3)
    {
      goto LABEL_10;
    }

    pixelsWideRange = [(MIOImageSizeConstraint *)self pixelsWideRange];
    enumeratedImageSizes = NSStringFromMIORange(pixelsWideRange, v10);
    pixelsHighRange = [(MIOImageSizeConstraint *)self pixelsHighRange];
    v8 = NSStringFromMIORange(pixelsHighRange, v12);
    [v6 appendFormat:@"Wide: %@ High: %@", enumeratedImageSizes, v8];
  }

LABEL_10:

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(MIOImageSizeConstraint *)self type];
      if (type == [(MIOImageSizeConstraint *)v5 type])
      {
        if ([(MIOImageSizeConstraint *)self type]== 2)
        {
          enumeratedImageSizes = [(MIOImageSizeConstraint *)self enumeratedImageSizes];
          enumeratedImageSizes2 = [(MIOImageSizeConstraint *)v5 enumeratedImageSizes];
          v9 = [enumeratedImageSizes isEqual:enumeratedImageSizes2];

LABEL_12:
          goto LABEL_13;
        }

        if ([(MIOImageSizeConstraint *)self type]!= 3)
        {
          v9 = 1;
          goto LABEL_12;
        }

        pixelsWideRange = [(MIOImageSizeConstraint *)self pixelsWideRange];
        v12 = v11;
        pixelsWideRange2 = [(MIOImageSizeConstraint *)v5 pixelsWideRange];
        if (MIOEqualRanges(pixelsWideRange, v12, pixelsWideRange2, v14))
        {
          pixelsHighRange = [(MIOImageSizeConstraint *)self pixelsHighRange];
          v17 = v16;
          pixelsHighRange2 = [(MIOImageSizeConstraint *)v5 pixelsHighRange];
          v9 = MIOEqualRanges(pixelsHighRange, v17, pixelsHighRange2, v19);
          goto LABEL_12;
        }
      }

      v9 = 0;
      goto LABEL_12;
    }

    v9 = 0;
  }

LABEL_13:

  return v9;
}

- (unint64_t)hash
{
  type = [(MIOImageSizeConstraint *)self type];
  enumeratedImageSizes = [(MIOImageSizeConstraint *)self enumeratedImageSizes];
  v5 = [enumeratedImageSizes hash];
  pixelsWideRange = [(MIOImageSizeConstraint *)self pixelsWideRange];
  v8 = NSStringFromMIORange(pixelsWideRange, v7);
  v9 = [v8 hash];
  pixelsHighRange = [(MIOImageSizeConstraint *)self pixelsHighRange];
  v12 = NSStringFromMIORange(pixelsHighRange, v11);
  v13 = [v12 hash];

  return v5 ^ type ^ v9 ^ v13;
}

- (_MIORange)pixelsWideRange
{
  upperBound = self->_pixelsWideRange.upperBound;
  lowerBound = self->_pixelsWideRange.lowerBound;
  result.upperBound = upperBound;
  result.lowerBound = lowerBound;
  return result;
}

- (_MIORange)pixelsHighRange
{
  upperBound = self->_pixelsHighRange.upperBound;
  lowerBound = self->_pixelsHighRange.lowerBound;
  result.upperBound = upperBound;
  result.lowerBound = lowerBound;
  return result;
}

@end
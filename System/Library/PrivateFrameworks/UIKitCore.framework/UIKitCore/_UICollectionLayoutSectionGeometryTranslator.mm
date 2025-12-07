@interface _UICollectionLayoutSectionGeometryTranslator
- (char)initWithPrimaryContentSize:(int)size sectionAuxiliarySolutionSize:(double)solutionSize layoutAxis:(double)axis layoutRTL:(double)l sectionInsets:(double)insets contentFrameSupplementaryOffset:(double)offset;
- (double)auxillaryHostContentSize;
- (double)contentRectForSectionRect:(CGFloat)rect;
- (id)description;
@end

@implementation _UICollectionLayoutSectionGeometryTranslator

- (double)auxillaryHostContentSize
{
  if (!self)
  {
    return 0.0;
  }

  v2 = *(self + 8);
  if (!v2)
  {
    return *(self + 88);
  }

  v3 = _UITotalEdgeDimensionsForLayoutAxis(v2, *(self + 40), *(self + 48), *(self + 56), *(self + 64));
  v4 = *(self + 88);
  return v4 + _UISetSizeValueForAxis(*(self + 8), *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), v3);
}

- (char)initWithPrimaryContentSize:(int)size sectionAuxiliarySolutionSize:(double)solutionSize layoutAxis:(double)axis layoutRTL:(double)l sectionInsets:(double)insets contentFrameSupplementaryOffset:(double)offset
{
  if (!self)
  {
    return 0;
  }

  v40.receiver = self;
  v40.super_class = _UICollectionLayoutSectionGeometryTranslator;
  v23 = objc_msgSendSuper2(&v40, sel_init);
  v24 = v23;
  if (v23)
  {
    *(v23 + 1) = a2;
    v23[16] = size;
    if (size)
    {
      v25 = a11;
    }

    else
    {
      v25 = a9;
    }

    if (size)
    {
      v26 = a9;
    }

    else
    {
      v26 = a11;
    }

    *(v23 + 5) = offset;
    *(v23 + 6) = v25;
    *(v23 + 7) = a10;
    *(v23 + 8) = v26;
    *(v23 + 3) = a12;
    *(v23 + 4) = a13;
    if (a2)
    {
      v27 = MEMORY[0x1E695EFF8];
      v28 = *MEMORY[0x1E695EFF8];
      v29 = *(MEMORY[0x1E695EFF8] + 8);
      v30 = v25 + *MEMORY[0x1E695EFF8];
      v31 = _UIPointValueForAxis(a2, a12, a13);
      v32 = v30 + _UISetPointValueForAxis(*(v24 + 1), v28, v29, v31);
      v34 = offset + v29 + v33;
      v35 = _UITotalEdgeDimensionsForLayoutAxis(a2, *(v24 + 5), *(v24 + 6), *(v24 + 7), *(v24 + 8));
      v36 = _UISetSizeValueForAxis(a2, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), v35);
      *(v24 + 9) = v32;
      *(v24 + 10) = v34;
      *(v24 + 11) = solutionSize;
      *(v24 + 12) = axis;
      *(v24 + 104) = *v27;
      *(v24 + 15) = fmax(solutionSize + v36, l);
      *(v24 + 16) = fmax(axis + v37, insets);
    }

    else
    {
      v38 = *MEMORY[0x1E695EFF8];
      *(v23 + 72) = *MEMORY[0x1E695EFF8];
      *(v23 + 11) = solutionSize;
      *(v23 + 12) = axis;
      *(v23 + 104) = v38;
      *(v23 + 120) = *(v23 + 88);
    }
  }

  return v24;
}

- (double)contentRectForSectionRect:(CGFloat)rect
{
  if (!self)
  {
    return 0.0;
  }

  v9 = a2 - *(self + 72);
  CGRectGetWidth(*&a2);
  v11.origin.x = a2;
  v11.origin.y = rect;
  v11.size.width = a4;
  v11.size.height = a5;
  CGRectGetHeight(v11);
  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromCGRect(self->_contentFrameIncludingAuxiliaries);
  v7 = NSStringFromCGRect(self->_primaryContentFrame);
  v8 = [v3 stringWithFormat:@"<%@:%p _contentFrameIncludingAuxiliaries=%@ primaryContentFrame=%@>", v5, self, v6, v7];;

  return v8;
}

@end
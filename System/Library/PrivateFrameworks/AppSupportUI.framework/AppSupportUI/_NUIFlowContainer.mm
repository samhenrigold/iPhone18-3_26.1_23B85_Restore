@interface _NUIFlowContainer
- (CGSize)contentLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview;
- (uint64_t)canUseSimpleGrid;
- (void)dealloc;
- (void)initWithFlowArrangement:(void *)result;
- (void)populateGridArrangementCells:(void *)cells;
- (void)populateGridArrangementDimension:(void *)dimension withCells:(const void *)cells axis:(int64_t)axis;
@end

@implementation _NUIFlowContainer

- (void)dealloc
{
  _NUIGridArrangement::resetForInvalidation(&self->_gridArrangement, -1);
  v3.receiver = self;
  v3.super_class = _NUIFlowContainer;
  [(_NUIFlowContainer *)&v3 dealloc];
}

- (void)initWithFlowArrangement:(void *)result
{
  if (result)
  {
    result = [result init];
    if (result)
    {
      *(result + 15) = a2;
      *(result + 17) = *(a2 + 9);
      *(result + 1) = result;
    }
  }

  return result;
}

- (uint64_t)canUseSimpleGrid
{
  if (result)
  {
    return (*(*(result + 120) + 16) != 0) & (objc_opt_respondsToSelector() ^ 1);
  }

  return result;
}

- (CGSize)contentLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview
{
  height = size.height;
  width = size.width;
  if ([(_NUIFlowContainer *)self canUseSimpleGrid])
  {
    if (+[_NUIFlowArrangementDummyItem sharedDummyItem]== subview)
    {
      v8 = *MEMORY[0x277CBF3A8];
      v9 = *(MEMORY[0x277CBF3A8] + 8);
    }

    else
    {
      [*self->_flowArrangement contentLayoutSizeFittingSize:subview forArrangedSubview:{width, height}];
    }
  }

  else
  {
    _NUIGridArrangement::resetForInvalidation((subview + 8), 0);
    v10.width = width;
    v10.height = height;
    _NUIGridArrangement::measureCells((subview + 8), 0, v10);
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (void)populateGridArrangementCells:(void *)cells
{
  canUseSimpleGrid = [(_NUIFlowContainer *)self canUseSimpleGrid];
  flowArrangement = self->_flowArrangement;
  if (canUseSimpleGrid)
  {
    v9 = *(flowArrangement + 2);
    v10 = *(flowArrangement + 7);
    v11 = *(flowArrangement + 8);
    if (v10 == v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v13 = *flowArrangement;
      do
      {
        v43 = *v10;
        *&v42 = v12 % v9;
        *(&v42 + 1) = 1;
        v40 = v12 / v9;
        v41 = 1;
        v39 = [v13 alignmentForCell:v10 inAxis:0];
        v14 = [v13 alignmentForCell:v10 inAxis:1];
        v15 = *(cells + 1);
        if (v15 >= *(cells + 2))
        {
          v17 = OUTLINED_FUNCTION_1();
          v16 = std::vector<_NUIGridArrangementCell>::__emplace_back_slow_path<objc_object  {objcproto18NUIArrangementItem}*,_NSRange,objc_object  {objcproto18NUIArrangementItem}*,NUIContainerAlignment,_NSRange>(v17, v18, v19, v20, v21, v22);
        }

        else
        {
          _NUIGridArrangementCell::_NUIGridArrangementCell(*(cells + 1), v43, v42, *(&v42 + 1), v40, v41, v39, v14);
          v16 = v15 + 112;
          *(cells + 1) = v15 + 112;
        }

        *(cells + 1) = v16;
        ++v12;
        v10 += 8;
      }

      while (v10 != v11);
    }

    v27 = v12 / v9;
    v28 = v12 % v9;
    v29 = (v9 - v12 % v9) % v9;
    if (v29)
    {
      v30 = +[_NUIFlowArrangementDummyItem sharedDummyItem];
      v43 = v30;
      *&v42 = v12 % v9;
      *(&v42 + 1) = (v9 - v12 % v9) % v9;
      v40 = v12 / v9;
      v41 = 1;
      v39 = 0;
      v31 = *(cells + 1);
      if (v31 >= *(cells + 2))
      {
        v33 = OUTLINED_FUNCTION_1();
        v32 = std::vector<_NUIGridArrangementCell>::__emplace_back_slow_path<_NUIFlowArrangementDummyItem *,_NSRange,_NSRange,NUIContainerAlignment,NUIContainerAlignment>(v33, v34, v35, v36, v37, v38);
      }

      else
      {
        _NUIGridArrangementCell::_NUIGridArrangementCell(*(cells + 1), v30, v28, v29, v27, 1, 0, 0);
        v32 = v31 + 112;
        *(cells + 1) = v31 + 112;
      }

      *(cells + 1) = v32;
    }
  }

  else
  {
    v23 = *(flowArrangement + 10);
    v24 = *(flowArrangement + 11);
    if (v23 != v24)
    {
      v25 = 0;
      v26 = *(cells + 1);
      do
      {
        v42 = xmmword_21D0BFB40;
        v40 = v25;
        v41 = 1;
        v43 = 0;
        v39 = 3;
        if (v26 >= *(cells + 2))
        {
          v26 = std::vector<_NUIGridArrangementCell>::__emplace_back_slow_path<_NUIFlowRowContainer * const&,_NSRange,_NSRange,NUIContainerAlignment,NUIContainerAlignment>(cells, v23, &v42, &v40, &v43, &v39);
        }

        else
        {
          std::vector<_NUIGridArrangementCell>::__construct_one_at_end[abi:nn200100]<_NUIFlowRowContainer * const&,_NSRange,_NSRange,NUIContainerAlignment,NUIContainerAlignment>(cells, v23, &v42, &v40, &v43, &v39);
          v26 += 112;
        }

        *(cells + 1) = v26;
        ++v25;
        ++v23;
      }

      while (v23 != v24);
    }
  }
}

- (void)populateGridArrangementDimension:(void *)dimension withCells:(const void *)cells axis:(int64_t)axis
{
  canUseSimpleGrid = [(_NUIFlowContainer *)self canUseSimpleGrid];
  if (axis)
  {
    if (canUseSimpleGrid)
    {
      v13 = *(self->_flowArrangement + 2);
      v33 = 0;
      if (v13 <= v13 - 1 + (*(cells + 1) - *cells) / 112)
      {
        do
        {
          OUTLINED_FUNCTION_5(canUseSimpleGrid, v12);
          OUTLINED_FUNCTION_2();
        }

        while (v14 < (v13 - 1 + (*(cells + 1) - *cells) / 112) / v13);
      }
    }

    else
    {
      v33 = 0;
      flowArrangement = self->_flowArrangement;
      v31 = flowArrangement[10];
      v32 = flowArrangement[11];
      while (v31 != v32)
      {
        OUTLINED_FUNCTION_5(canUseSimpleGrid, v12);
        OUTLINED_FUNCTION_2();
        v31 += 8;
      }
    }

    v15 = *(dimension + 1);
    if (*dimension != v15)
    {
      OUTLINED_FUNCTION_0_0();
      do
      {
        OUTLINED_FUNCTION_3();
        if (v21)
        {
          *v16 = v19;
        }

        if (v20)
        {
          v16[7] = v19;
        }
      }

      while (v18 != v17 + 2);
    }
  }

  else
  {
    if (!canUseSimpleGrid)
    {
      LODWORD(v33) = 0;
      std::vector<_NUIGridArrangementDimension>::emplace_back<int,double const&>(dimension, &v33, &NUIContainerViewLengthUseDefault);
      return;
    }

    v22 = *(self->_flowArrangement + 2);
    v33 = 0;
    if (v22)
    {
      do
      {
        std::vector<_NUIGridArrangementDimension>::emplace_back<unsigned long &,double const&>(dimension, &v33, self->_flowArrangement + 6);
        OUTLINED_FUNCTION_2();
      }

      while (v23 < v22);
    }

    v15 = *(dimension + 1);
    if (*dimension != v15)
    {
      OUTLINED_FUNCTION_0_0();
      do
      {
        OUTLINED_FUNCTION_3();
        if (v29)
        {
          *v24 = v27;
        }

        if (v28)
        {
          v24[7] = v27;
        }
      }

      while (v26 != v25 + 2);
    }
  }

  *(v15 - 56) = 0;
}

@end
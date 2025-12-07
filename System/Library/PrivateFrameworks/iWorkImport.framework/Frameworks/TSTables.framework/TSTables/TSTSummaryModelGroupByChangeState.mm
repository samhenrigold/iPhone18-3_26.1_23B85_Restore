@interface TSTSummaryModelGroupByChangeState
- (TSTSummaryModelGroupByChangeState)initWithMessage:(const void *)message unarchiver:(id)unarchiver;
- (id).cxx_construct;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation TSTSummaryModelGroupByChangeState

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  begin = self->_summaryRowHeightList.__begin_;
  end = self->_summaryRowHeightList.__end_;
  if (begin != end)
  {
    v9 = *(message + 6);
    do
    {
      v10 = *begin;
      if (v9 == *(message + 7))
      {
        sub_2212A3D38(message + 6, v9 + 1);
      }

      *(*(message + 4) + 8 * v9++) = v10;
      *(message + 6) = v9;
      ++begin;
    }

    while (begin != end);
  }

  v11 = self->_labelRowHeightList.__begin_;
  v12 = self->_labelRowHeightList.__end_;
  if (v11 != v12)
  {
    v13 = *(message + 10);
    do
    {
      v14 = *v11;
      if (v13 == *(message + 11))
      {
        sub_2212A3D38(message + 10, v13 + 1);
      }

      *(*(message + 6) + 8 * v13++) = v14;
      *(message + 10) = v13;
      ++v11;
    }

    while (v11 != v12);
  }

  v15 = self->_labelRowVisibilityList.__begin_;
  v16 = self->_labelRowVisibilityList.__end_;
  if (v15 != v16)
  {
    v17 = *(message + 14);
    do
    {
      v18 = *v15;
      if (v17 == *(message + 15))
      {
        sub_2210BBC64(message + 14, v17 + 1);
      }

      *(*(message + 8) + 4 * v17++) = v18;
      *(message + 14) = v17;
      ++v15;
    }

    while (v15 != v16);
  }

  cellMap = self->_cellMap;
  if (cellMap)
  {
    *(message + 4) |= 1u;
    v20 = *(message + 9);
    if (!v20)
    {
      v21 = *(message + 1);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = MEMORY[0x223DA0390](v21);
      *(message + 9) = v20;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v6, cellMap, v20);
  }
}

- (TSTSummaryModelGroupByChangeState)initWithMessage:(const void *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v16.receiver = self;
  v16.super_class = TSTSummaryModelGroupByChangeState;
  v7 = [(TSTSummaryModelGroupByChangeState *)&v16 init];
  v8 = v7;
  if (v7)
  {
    sub_2211576E4(&v7->_summaryRowHeightList.__begin_, *(message + 6));
    sub_2212A3F50(&v8->_summaryRowHeightList.__begin_, *(message + 4), (*(message + 4) + 8 * *(message + 6)), *(message + 6));
    sub_2211576E4(&v8->_labelRowHeightList.__begin_, *(message + 10));
    sub_2212A3F50(&v8->_labelRowHeightList.__begin_, *(message + 6), (*(message + 6) + 8 * *(message + 10)), *(message + 10));
    sub_2212A3B14(&v8->_labelRowVisibilityList.__begin_, *(message + 14));
    sub_221287820(&v8->_labelRowVisibilityList.__begin_, *(message + 8), (*(message + 8) + 4 * *(message + 14)), *(message + 14));
    if (*(message + 16))
    {
      v9 = *(message + 9);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_2212A3B44;
      v14[3] = &unk_278462918;
      v15 = v8;
      v10 = unarchiverCopy;
      v11 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v10, v12, v9, v11, 0, v14);
    }
  }

  return v8;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 1) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 7) = 0;
  return self;
}

@end
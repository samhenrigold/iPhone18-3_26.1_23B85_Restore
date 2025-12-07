@interface TSTExpandCollapseState
- (TSTExpandCollapseState)initWithArchive:(const void *)archive;
- (TSTExpandCollapseState)initWithCollapsed:(id)collapsed expanded:(id)expanded dimension:(int64_t)dimension;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)makeInverse;
- (void)saveToArchive:(void *)archive;
@end

@implementation TSTExpandCollapseState

- (TSTExpandCollapseState)initWithCollapsed:(id)collapsed expanded:(id)expanded dimension:(int64_t)dimension
{
  collapsedCopy = collapsed;
  expandedCopy = expanded;
  v33.receiver = self;
  v33.super_class = TSTExpandCollapseState;
  v13 = [(TSTExpandCollapseState *)&v33 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(collapsedCopy, v10, v11, v12);
    uidsCollapsed = v13->_uidsCollapsed;
    v13->_uidsCollapsed = v14;

    v19 = objc_msgSend_copy(expandedCopy, v16, v17, v18);
    uidsExpanded = v13->_uidsExpanded;
    v13->_uidsExpanded = v19;

    v24 = v13->_uidsCollapsed;
    if (v24)
    {
      objc_msgSend_uuidsAsTSUVector(v24, v21, v22, v23);
    }

    else
    {
      v31 = 0uLL;
      v32 = 0;
    }

    p_collapsedGroupUIDs = &v13->_collapsedGroupUIDs;
    begin = v13->_collapsedGroupUIDs.__begin_;
    if (begin)
    {
      v13->_collapsedGroupUIDs.__end_ = begin;
      operator delete(begin);
      p_collapsedGroupUIDs->__begin_ = 0;
      v13->_collapsedGroupUIDs.__end_ = 0;
      v13->_collapsedGroupUIDs.__cap_ = 0;
    }

    *&p_collapsedGroupUIDs->__begin_ = v31;
    v13->_collapsedGroupUIDs.__cap_ = v32;
    v27 = v13->_uidsExpanded;
    if (v27)
    {
      objc_msgSend_uuidsAsTSUVector(v27, v21, v22, v23);
    }

    else
    {
      v31 = 0uLL;
      v32 = 0;
    }

    p_expandedGroupUIDs = &v13->_expandedGroupUIDs;
    v29 = v13->_expandedGroupUIDs.__begin_;
    if (v29)
    {
      v13->_expandedGroupUIDs.__end_ = v29;
      operator delete(v29);
      p_expandedGroupUIDs->__begin_ = 0;
      v13->_expandedGroupUIDs.__end_ = 0;
      v13->_expandedGroupUIDs.__cap_ = 0;
    }

    *&p_expandedGroupUIDs->__begin_ = v31;
    v13->_expandedGroupUIDs.__cap_ = v32;
    v13->_dimension = dimension;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSTExpandCollapseState alloc];
  v8 = objc_msgSend_uidsCollapsed(self, v5, v6, v7);
  v12 = objc_msgSend_uidsExpanded(self, v9, v10, v11);
  v14 = objc_msgSend_initWithCollapsed_expanded_dimension_(v4, v13, v8, v12, self->_dimension);

  return v14;
}

- (TSTExpandCollapseState)initWithArchive:(const void *)archive
{
  v23.receiver = self;
  v23.super_class = TSTExpandCollapseState;
  v4 = [(TSTExpandCollapseState *)&v23 init];
  if (v4)
  {
    v5 = *(archive + 8);
    if (v5 >= 1)
    {
      v6 = 8;
      do
      {
        TSP::UUIDData::UUIDData(&v24, *(*(archive + 5) + v6));
        v22 = v24;
        sub_221083454(&v4->_collapsedGroupUIDs, &v22);
        v6 += 8;
        --v5;
      }

      while (v5);
    }

    v7 = *(archive + 14);
    if (v7 >= 1)
    {
      v8 = 8;
      do
      {
        TSP::UUIDData::UUIDData(&v24, *(*(archive + 8) + v8));
        v22 = v24;
        sub_221083454(&v4->_expandedGroupUIDs, &v22);
        v8 += 8;
        --v7;
      }

      while (v7);
    }

    if (v4->_collapsedGroupUIDs.__end_ != v4->_collapsedGroupUIDs.__begin_)
    {
      v9 = [TSCEMutableUIDSet alloc];
      v12 = objc_msgSend_initWithTSUUUIDVector_(v9, v10, &v4->_collapsedGroupUIDs, v11);
      uidsCollapsed = v4->_uidsCollapsed;
      v4->_uidsCollapsed = v12;
    }

    if (v4->_expandedGroupUIDs.__end_ != v4->_expandedGroupUIDs.__begin_)
    {
      v14 = [TSCEMutableUIDSet alloc];
      v17 = objc_msgSend_initWithTSUUUIDVector_(v14, v15, &v4->_expandedGroupUIDs, v16);
      uidsExpanded = v4->_uidsExpanded;
      v4->_uidsExpanded = v17;
    }

    if (*(archive + 16))
    {
      v19 = *(archive + 18);
      if (v19 == -1)
      {
        v20 = -1;
      }

      else
      {
        v20 = v19 == 1;
      }

      v4->_dimension = v20;
    }
  }

  return v4;
}

- (void)saveToArchive:(void *)archive
{
  uidsCollapsed = self->_uidsCollapsed;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22113CF38;
  v13[3] = &unk_27845D920;
  v13[4] = archive;
  objc_msgSend_foreachUuid_(uidsCollapsed, a2, v13, v3);
  uidsExpanded = self->_uidsExpanded;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22113CFEC;
  v12[3] = &unk_27845D920;
  v12[4] = archive;
  objc_msgSend_foreachUuid_(uidsExpanded, v8, v12, v9);
  dimension = self->_dimension;
  if (dimension == -1)
  {
    v11 = -1;
  }

  else
  {
    v11 = dimension == 1;
  }

  *(archive + 4) |= 1u;
  *(archive + 18) = v11;
}

- (id)makeInverse
{
  v3 = [TSTExpandCollapseState alloc];
  v5 = objc_msgSend_initWithCollapsed_expanded_dimension_(v3, v4, self->_uidsExpanded, self->_uidsCollapsed, self->_dimension);

  return v5;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 1) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  return self;
}

@end
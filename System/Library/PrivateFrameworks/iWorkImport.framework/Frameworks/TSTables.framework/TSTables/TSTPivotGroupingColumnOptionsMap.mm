@interface TSTPivotGroupingColumnOptionsMap
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)keys;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)pivotOptionsForUID:(TSKUIDStruct)d;
- (id)prunedCopyWithUids:(void *)uids;
- (void)clear;
- (void)enumerateOptionsUsingBlock:(id)block;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setPivotOptions:(id)options forUid:(TSKUIDStruct)uid;
@end

@implementation TSTPivotGroupingColumnOptionsMap

- (id)pivotOptionsForUID:(TSKUIDStruct)d
{
  dCopy = d;
  p_optionsForUidMap = &self->_optionsForUidMap;
  v4 = sub_22112C8D0(&self->_optionsForUidMap, &dCopy._lower);
  if (&p_optionsForUidMap->__tree_.__end_node_ == v4)
  {
    v8 = objc_msgSend_emptyOptions(TSTPivotGroupingColumnOptions, v5, v6, v7);
  }

  else
  {
    v8 = v4[6].__left_;
  }

  return v8;
}

- (void)setPivotOptions:(id)options forUid:(TSKUIDStruct)uid
{
  uidCopy = uid;
  optionsCopy = options;
  objc_msgSend_willModify(self, v7, v8, v9, uidCopy._lower, uidCopy._upper);
  p_optionsForUidMap = &self->_optionsForUidMap;
  if (objc_msgSend_isNotEmpty(optionsCopy, v10, v11, v12))
  {
    v16 = &uidCopy;
    v14 = sub_2213D96C4(p_optionsForUidMap, &uidCopy._lower, &unk_2217E1942, &v16);
    objc_storeStrong((v14 + 48), options);
  }

  else if (&p_optionsForUidMap->__tree_.__end_node_ != sub_22112C8D0(p_optionsForUidMap, &uidCopy._lower))
  {
    sub_2213D977C(p_optionsForUidMap, &uidCopy._lower);
  }
}

- (void)clear
{
  p_optionsForUidMap = &self->_optionsForUidMap;
  p_end_node = &self->_optionsForUidMap.__tree_.__end_node_;
  sub_2213D9800(&self->_optionsForUidMap, self->_optionsForUidMap.__tree_.__end_node_.__left_);
  p_optionsForUidMap->__tree_.__begin_node_ = p_end_node;
  p_optionsForUidMap->__tree_.__size_ = 0;
  p_end_node->__left_ = 0;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)keys
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v4 = self + 3;
  cap = self[2].__cap_;
  if (cap != &self[3])
  {
    v6 = 0;
    do
    {
      v7 = retstr->__cap_;
      if (v6 >= v7)
      {
        v8 = v6 - retstr->__begin_;
        if ((v8 + 1) >> 60)
        {
          sub_22107C148();
        }

        v9 = v7 - retstr->__begin_;
        v10 = v9 >> 3;
        if (v9 >> 3 <= (v8 + 1))
        {
          v10 = v8 + 1;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFF0)
        {
          v11 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          sub_221086F74(retstr, v11);
        }

        v12 = (16 * v8);
        *v12 = cap[2];
        v6 = (16 * v8 + 16);
        v13 = retstr->__end_ - retstr->__begin_;
        v14 = (16 * v8 - v13);
        memcpy(v12 - v13, retstr->__begin_, v13);
        self = retstr->__begin_;
        retstr->__begin_ = v14;
        retstr->__end_ = v6;
        retstr->__cap_ = 0;
        if (self)
        {
          operator delete(self);
        }
      }

      else
      {
        *v6++ = cap[2];
      }

      retstr->__end_ = v6;
      upper = cap->_upper;
      if (upper)
      {
        do
        {
          lower = upper;
          upper = upper->__begin_;
        }

        while (upper);
      }

      else
      {
        do
        {
          lower = cap[1]._lower;
          v17 = lower->__begin_ == cap;
          cap = lower;
        }

        while (!v17);
      }

      cap = lower;
    }

    while (lower != v4);
  }

  return self;
}

- (void)enumerateOptionsUsingBlock:(id)block
{
  blockCopy = block;
  v13 = 0;
  p_end_node = &self->_optionsForUidMap.__tree_.__end_node_;
  begin_node = self->_optionsForUidMap.__tree_.__begin_node_;
  if (begin_node != &self->_optionsForUidMap.__tree_.__end_node_)
  {
    do
    {
      v12 = *&begin_node[4].__left_;
      v7 = begin_node[6].__left_;
      blockCopy[2](blockCopy, &v12, v7, &v13);
      v8 = v13;

      if (v8)
      {
        break;
      }

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v10 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v10 = begin_node[2].__left_;
          v11 = v10->__left_ == begin_node;
          begin_node = v10;
        }

        while (!v11);
      }

      begin_node = v10;
    }

    while (v10 != p_end_node);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSTPivotGroupingColumnOptionsMap alloc];
  v8 = objc_msgSend_context(self, v5, v6, v7);
  v11 = objc_msgSend_initWithContext_(v4, v9, v8, v10);

  self = (self + 64);
  isa = self->super.super.isa;
  p_delegate = &self->super._delegate;
  v14 = isa;
  if (isa != p_delegate)
  {
    do
    {
      objc_msgSend_setPivotOptions_forUid_(v11, v12, *(v14 + 6), *(v14 + 4), *(v14 + 5));
      v16 = *(v14 + 1);
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = *(v14 + 2);
          v18 = *v17 == v14;
          v14 = v17;
        }

        while (!v18);
      }

      v14 = v17;
    }

    while (v17 != p_delegate);
  }

  return v11;
}

- (id)prunedCopyWithUids:(void *)uids
{
  v5 = [TSTPivotGroupingColumnOptionsMap alloc];
  v9 = objc_msgSend_context(self, v6, v7, v8);
  v12 = objc_msgSend_initWithContext_(v5, v10, v9, v11);

  v14 = *uids;
  v15 = *(uids + 1);
  while (v14 != v15)
  {
    v16 = *v14;
    v17 = v14[1];
    v18 = objc_msgSend_pivotOptionsForUID_(self, v13, *v14, v17);
    objc_msgSend_setPivotOptions_forUid_(v12, v19, v18, v16, v17);

    v14 += 2;
  }

  return v12;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[280], v6);

  v9 = *(v7 + 24);
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if (i >= *(v7 + 64))
      {
        v13 = 0;
        v11 = 0;
      }

      else
      {
        v11 = TSKUIDStruct::loadFromMessage(*(*(v7 + 72) + 8 * i + 8), v8);
        v13 = v12;
      }

      v14 = [TSTPivotGroupingColumnOptions alloc];
      v16 = objc_msgSend_initWithFlags_sortingAggregateRuleUid_(v14, v15, *(*(v7 + 48) + 4 * i), v11, v13);
      TSP::UUIDData::UUIDData(v18, *(*(v7 + 32) + 8 * i + 8));
      objc_msgSend_setPivotOptions_forUid_(self, v17, v16, v18[0], v18[1]);
    }
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_2213D985C, off_2812E4498[280]);

  p_end_node = &self->_optionsForUidMap.__tree_.__end_node_;
  begin_node = self->_optionsForUidMap.__tree_.__begin_node_;
  if (begin_node != &self->_optionsForUidMap.__tree_.__end_node_)
  {
    do
    {
      v37 = *&begin_node[4].__left_;
      v9 = begin_node[6].__left_;
      v10 = *(v6 + 32);
      if (!v10)
      {
        goto LABEL_7;
      }

      v11 = *(v6 + 24);
      v12 = *v10;
      if (v11 < *v10)
      {
        *(v6 + 24) = v11 + 1;
        v13 = *&v10[2 * v11 + 2];
        goto LABEL_9;
      }

      if (v12 == *(v6 + 28))
      {
LABEL_7:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 16));
        v10 = *(v6 + 32);
        v12 = *v10;
      }

      *v10 = v12 + 1;
      v13 = MEMORY[0x223DA0360](*(v6 + 16));
      v14 = *(v6 + 24);
      v15 = *(v6 + 32) + 8 * v14;
      *(v6 + 24) = v14 + 1;
      *(v15 + 8) = v13;
LABEL_9:
      TSKUIDStruct::saveToMessage(&v37, v13);
      v19 = objc_msgSend_flags(v9, v16, v17, v18);
      v23 = v19;
      v24 = *(v6 + 40);
      if (v24 == *(v6 + 44))
      {
        v25 = v24 + 1;
        sub_2210BBC64((v6 + 40), v24 + 1);
        *(*(v6 + 48) + 4 * v24) = v23;
      }

      else
      {
        *(*(v6 + 48) + 4 * v24) = v19;
        v25 = v24 + 1;
      }

      *(v6 + 40) = v25;
      v36._lower = objc_msgSend_sortingAggregateRuleUid(v9, v20, v21, v22, v36._lower, v36._upper);
      v36._upper = v26;
      v27 = *(v6 + 72);
      if (!v27)
      {
        goto LABEL_17;
      }

      v28 = *(v6 + 64);
      v29 = *v27;
      if (v28 >= *v27)
      {
        if (v29 == *(v6 + 68))
        {
LABEL_17:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 56));
          v27 = *(v6 + 72);
          v29 = *v27;
        }

        *v27 = v29 + 1;
        v30 = MEMORY[0x223DA0360](*(v6 + 56));
        v31 = *(v6 + 64);
        v32 = *(v6 + 72) + 8 * v31;
        *(v6 + 64) = v31 + 1;
        *(v32 + 8) = v30;
        goto LABEL_19;
      }

      *(v6 + 64) = v28 + 1;
      v30 = *&v27[2 * v28 + 2];
LABEL_19:
      TSKUIDStruct::saveToMessage(&v36, v30);

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v34 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v34 = begin_node[2].__left_;
          v35 = v34->__left_ == begin_node;
          begin_node = v34;
        }

        while (!v35);
      }

      begin_node = v34;
    }

    while (v34 != p_end_node);
  }
}

- (id)description
{
  v36 = objc_opt_new();
  objc_msgSend_appendFormat_(v36, v3, @"TSTPivotGroupingColumnOptionsMap %p\n", v4, self);
  begin_node = self->_optionsForUidMap.__tree_.__begin_node_;
  p_end_node = &self->_optionsForUidMap.__tree_.__end_node_;
  if (begin_node != &self->_optionsForUidMap.__tree_.__end_node_)
  {
    do
    {
      v38 = *&begin_node[4].__left_;
      v6 = begin_node[6].__left_;
      v7 = TSKUIDStruct::description(&v38);
      if (objc_msgSend_sortByGrandTotal(v6, v8, v9, v10))
      {
        v14 = @"Y";
      }

      else
      {
        v14 = @"N";
      }

      if (objc_msgSend_sortDescending(v6, v11, v12, v13))
      {
        v18 = @"Y";
      }

      else
      {
        v18 = @"N";
      }

      if (objc_msgSend_repeatLabels(v6, v15, v16, v17))
      {
        v22 = @"Y";
      }

      else
      {
        v22 = @"N";
      }

      if (objc_msgSend_hideTotals(v6, v19, v20, v21))
      {
        v26 = @"Y";
      }

      else
      {
        v26 = @"N";
      }

      v37._lower = objc_msgSend_sortingAggregateRuleUid(v6, v23, v24, v25);
      v37._upper = v27;
      v28 = TSKUIDStruct::description(&v37);
      objc_msgSend_appendFormat_(v36, v29, @"uid:%@, sortByGrTotal:%@, sortDesc:%@, repeatLbls:%@, hideTtls:%@, sortAggRuleUid:%@\n", v30, v7, v14, v18, v22, v26, v28);

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v32 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v32 = begin_node[2].__left_;
          v33 = v32->__left_ == begin_node;
          begin_node = v32;
        }

        while (!v33);
      }

      begin_node = v32;
    }

    while (v32 != p_end_node);
  }

  return v36;
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 9) = 0;
  *(self + 8) = self + 72;
  return self;
}

@end
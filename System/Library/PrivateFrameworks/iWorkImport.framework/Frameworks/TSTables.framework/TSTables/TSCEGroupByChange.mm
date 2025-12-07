@interface TSCEGroupByChange
- (TSCEGroupByChange)initWithArchive:(const void *)archive;
- (TSCEGroupByChange)initWithType:(unsigned __int8)type groupByUid:(const TSKUIDStruct *)uid;
- (TSCEGroupByChange)initWithType:(unsigned __int8)type groupingColumnChanges:(const void *)changes groupByUid:(const TSKUIDStruct *)uid;
- (TSKUIDStruct)groupByUid;
- (TSKUIDStruct)previousGroupNodeUidForUpdatedGroupNodeUid:(const TSKUIDStruct *)uid;
- (TSKUIDStruct)updatedGroupNodeUidForPreviousGroupNodeUid:(const TSKUIDStruct *)uid;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (unsigned)previousRelativeAncestorLevelForUpdatedAncestorCategoryLevel:(unsigned __int8)level numLevels:(unsigned __int8)levels;
- (unsigned)updatedRelativeAncestorLevelForPreviousAncestorCategoryLevel:(unsigned __int8)level numLevels:(unsigned __int8)levels;
- (void)addRemoveOfGroupUid:(const TSKUIDStruct *)uid;
- (void)mapPreviousGroupNodeUid:(const TSKUIDStruct *)uid toUpdatedGroupNodeUid:(const TSKUIDStruct *)nodeUid;
- (void)saveToArchive:(void *)archive;
@end

@implementation TSCEGroupByChange

- (TSCEGroupByChange)initWithType:(unsigned __int8)type groupByUid:(const TSKUIDStruct *)uid
{
  v7.receiver = self;
  v7.super_class = TSCEGroupByChange;
  result = [(TSCEGroupByChange *)&v7 init];
  if (result)
  {
    result->_changeType = type;
    result->_groupByUid = *uid;
    *&result->_previousLevel = -1;
    result->_isInverse = 0;
  }

  return result;
}

- (TSCEGroupByChange)initWithType:(unsigned __int8)type groupingColumnChanges:(const void *)changes groupByUid:(const TSKUIDStruct *)uid
{
  v6 = objc_msgSend_initWithType_groupByUid_(self, a2, type, uid);
  v7 = v6;
  if (v6)
  {
    v8 = (v6 + 56);
    if (&v7->_groupingColumnChanges != changes)
    {
      sub_22123F6E0(v8, *changes, *(changes + 1), (*(changes + 1) - *changes) >> 1);
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCEGroupByChange alloc];
  v6 = objc_msgSend_initWithType_groupingColumnChanges_groupByUid_(v4, v5, self->_changeType, &self->_groupingColumnChanges, &self->_groupByUid);
  objc_msgSend_setPreviousLevel_(v6, v7, self->_previousLevel, v8);
  objc_msgSend_setUpdatedLevel_(v6, v9, self->_updatedLevel, v10);
  objc_msgSend_setIsInverse_(v6, v11, self->_isInverse, v12);
  for (i = &self->_previousGroupNodeToUpdated.__table_.__first_node_; ; objc_msgSend_mapPreviousGroupNodeUid_toUpdatedGroupNodeUid_(v6, v13, &i[2], &i[4]))
  {
    i = i->__next_;
    if (!i)
    {
      break;
    }
  }

  for (j = &self->_updatedGroupNodeToPrevious.__table_.__first_node_; ; objc_msgSend_mapPreviousGroupNodeUid_toUpdatedGroupNodeUid_(v6, v13, &j[4], &j[2]))
  {
    j = j->__next_;
    if (!j)
    {
      break;
    }
  }

  return v6;
}

- (void)addRemoveOfGroupUid:(const TSKUIDStruct *)uid
{
  removedGroupNodeUids = self->_removedGroupNodeUids;
  if (!removedGroupNodeUids)
  {
    v6 = objc_opt_new();
    v7 = self->_removedGroupNodeUids;
    self->_removedGroupNodeUids = v6;

    removedGroupNodeUids = self->_removedGroupNodeUids;
  }

  lower = uid->_lower;
  upper = uid->_upper;

  objc_msgSend_addUUID_(removedGroupNodeUids, a2, lower, upper);
}

- (void)mapPreviousGroupNodeUid:(const TSKUIDStruct *)uid toUpdatedGroupNodeUid:(const TSKUIDStruct *)nodeUid
{
  nodeUidCopy = uid;
  *(sub_221230440(&self->_previousGroupNodeToUpdated.__table_.__bucket_list_.__ptr_, uid, &unk_2217E0D98, &nodeUidCopy) + 2) = *nodeUid;
  nodeUidCopy = nodeUid;
  *(sub_221230440(&self->_updatedGroupNodeToPrevious.__table_.__bucket_list_.__ptr_, nodeUid, &unk_2217E0D98, &nodeUidCopy) + 2) = *uid;
  previousGroupNodeUids = self->_previousGroupNodeUids;
  if (!previousGroupNodeUids)
  {
    v9 = objc_opt_new();
    v10 = self->_previousGroupNodeUids;
    self->_previousGroupNodeUids = v9;

    v11 = objc_opt_new();
    updatedGroupNodeUids = self->_updatedGroupNodeUids;
    self->_updatedGroupNodeUids = v11;

    previousGroupNodeUids = self->_previousGroupNodeUids;
  }

  objc_msgSend_addUUID_(previousGroupNodeUids, v7, uid->_lower, uid->_upper);
  objc_msgSend_addUUID_(self->_updatedGroupNodeUids, v13, nodeUid->_lower, nodeUid->_upper);
}

- (TSKUIDStruct)previousGroupNodeUidForUpdatedGroupNodeUid:(const TSKUIDStruct *)uid
{
  lower = uid->_lower;
  upper = uid->_upper;
  v5 = sub_2210875C4(&self->_updatedGroupNodeToPrevious.__table_.__bucket_list_.__ptr_, uid);
  if (v5)
  {
    lower = v5[4];
    upper = v5[5];
  }

  v6 = lower;
  v7 = upper;
  result._upper = v7;
  result._lower = v6;
  return result;
}

- (TSKUIDStruct)updatedGroupNodeUidForPreviousGroupNodeUid:(const TSKUIDStruct *)uid
{
  lower = uid->_lower;
  upper = uid->_upper;
  v5 = sub_2210875C4(&self->_previousGroupNodeToUpdated.__table_.__bucket_list_.__ptr_, uid);
  if (v5)
  {
    lower = v5[4];
    upper = v5[5];
  }

  v6 = lower;
  v7 = upper;
  result._upper = v7;
  result._lower = v6;
  return result;
}

- (unsigned)previousRelativeAncestorLevelForUpdatedAncestorCategoryLevel:(unsigned __int8)level numLevels:(unsigned __int8)levels
{
  v4 = levels - level;
  changeType = self->_changeType;
  if (changeType == 3)
  {
    if (self->_previousLevel >= v4)
    {
      ++level;
    }
  }

  else if (changeType == 4)
  {
    level -= self->_previousLevel >= v4;
  }

  return level;
}

- (unsigned)updatedRelativeAncestorLevelForPreviousAncestorCategoryLevel:(unsigned __int8)level numLevels:(unsigned __int8)levels
{
  changeType = self->_changeType;
  if (changeType <= 6)
  {
    if (((1 << changeType) & 0x67) != 0)
    {
      return -1;
    }

    else
    {
      v6 = levels - level + 1;
      if (changeType == 3)
      {
        level -= self->_previousLevel >= v6;
      }

      else if (self->_previousLevel >= v6)
      {
        ++level;
      }
    }
  }

  return level;
}

- (TSCEGroupByChange)initWithArchive:(const void *)archive
{
  if (*(archive + 9))
  {
    v5 = *(archive + 9);
  }

  else
  {
    v5 = MEMORY[0x277D809E0];
  }

  v47[0] = TSKUIDStruct::loadFromMessage(v5, a2);
  v47[1] = v6;
  v7 = objc_msgSend_initWithType_groupByUid_(self, v6, *(archive + 96), v47);
  if (v7)
  {
    v8 = objc_opt_new();
    previousGroupNodeUids = v7->_previousGroupNodeUids;
    v7->_previousGroupNodeUids = v8;

    v10 = objc_opt_new();
    updatedGroupNodeUids = v7->_updatedGroupNodeUids;
    v7->_updatedGroupNodeUids = v10;

    v13 = *(archive + 4);
    v14 = *(archive + 100);
    if ((v13 & 0x10) == 0)
    {
      v14 = -1;
    }

    v7->_previousLevel = v14;
    v15 = *(archive + 104);
    if ((v13 & 0x20) == 0)
    {
      v15 = -1;
    }

    v7->_updatedLevel = v15;
    v16 = *(archive + 14);
    if (v16 > 0)
    {
      end = v7->_groupingColumnChanges.__end_;
      v18 = 8;
      do
      {
        v19 = *(*(archive + 8) + v18);
        v21 = *(v19 + 24);
        v20 = *(v19 + 28);
        cap = v7->_groupingColumnChanges.__cap_;
        if (end >= cap)
        {
          begin = v7->_groupingColumnChanges.__begin_;
          v24 = end - begin;
          v25 = (end - begin) >> 1;
          if (v25 <= -2)
          {
            sub_22107C148();
          }

          v26 = cap - begin;
          if (v26 <= v25 + 1)
          {
            v27 = v25 + 1;
          }

          else
          {
            v27 = v26;
          }

          if (v26 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v28 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v27;
          }

          if (v28)
          {
            sub_22115DB94(&v7->_groupingColumnChanges, v28);
          }

          v29 = v25;
          v30 = (2 * v25);
          *v30 = v21;
          v30[1] = v20;
          end = (2 * v25 + 2);
          v31 = &v30[-2 * v29];
          memcpy(v31, begin, v24);
          v32 = v7->_groupingColumnChanges.__begin_;
          v7->_groupingColumnChanges.__begin_ = v31;
          v7->_groupingColumnChanges.__end_ = end;
          v7->_groupingColumnChanges.__cap_ = 0;
          if (v32)
          {
            operator delete(v32);
          }
        }

        else
        {
          *end = v21;
          *(end + 1) = v20;
          end = (end + 2);
        }

        v7->_groupingColumnChanges.__end_ = end;
        v18 += 8;
        --v16;
      }

      while (v16);
      v13 = *(archive + 4);
    }

    if ((v13 & 2) != 0)
    {
      sub_2212696E0(*(archive + 10), v12, v46);
      sub_22120A3D8(&v7->_previousGroupNodeToUpdated, v46);
      sub_2210BDEC0(v46);
      for (i = &v7->_previousGroupNodeToUpdated.__table_.__first_node_; ; objc_msgSend_addUUID_(v7->_updatedGroupNodeUids, v34, i[4].__next_, i[5].__next_))
      {
        i = i->__next_;
        if (!i)
        {
          break;
        }

        objc_msgSend_addUUID_(v7->_previousGroupNodeUids, v12, i[2].__next_, i[3].__next_);
      }

      v13 = *(archive + 4);
    }

    if ((v13 & 4) != 0)
    {
      sub_2212696E0(*(archive + 11), v12, v46);
      sub_22120A3D8(&v7->_updatedGroupNodeToPrevious, v46);
      sub_2210BDEC0(v46);
      for (j = &v7->_updatedGroupNodeToPrevious.__table_.__first_node_; ; objc_msgSend_addUUID_(v7->_updatedGroupNodeUids, v45, j[2].__next_, j[3].__next_))
      {
        j = j->__next_;
        if (!j)
        {
          break;
        }

        objc_msgSend_addUUID_(v7->_previousGroupNodeUids, v43, j[4].__next_, j[5].__next_);
      }
    }

    v35 = *(archive + 8);
    if (v35)
    {
      v36 = objc_opt_new();
      removedGroupNodeUids = v7->_removedGroupNodeUids;
      v7->_removedGroupNodeUids = v36;

      if (v35 >= 1)
      {
        v39 = 8;
        do
        {
          v40 = TSKUIDStruct::loadFromMessage(*(*(archive + 5) + v39), v38);
          objc_msgSend_addUUID_(v7->_removedGroupNodeUids, v41, v40, v41);
          v39 += 8;
          --v35;
        }

        while (v35);
      }
    }
  }

  return v7;
}

- (void)saveToArchive:(void *)archive
{
  v5 = *(archive + 4);
  *(archive + 24) = self->_changeType;
  *(archive + 4) = v5 | 9;
  v6 = *(archive + 9);
  if (!v6)
  {
    v7 = *(archive + 1);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = MEMORY[0x223DA0360](v7);
    *(archive + 9) = v6;
  }

  TSKUIDStruct::saveToMessage(&self->_groupByUid, v6);
  previousLevel = self->_previousLevel;
  if (previousLevel != 255)
  {
    *(archive + 4) |= 0x10u;
    *(archive + 25) = previousLevel;
  }

  updatedLevel = self->_updatedLevel;
  if (updatedLevel != 255)
  {
    *(archive + 4) |= 0x20u;
    *(archive + 26) = updatedLevel;
  }

  begin = self->_groupingColumnChanges.__begin_;
  end = self->_groupingColumnChanges.__end_;
  while (begin != end)
  {
    v15 = *(archive + 8);
    if (!v15)
    {
      goto LABEL_16;
    }

    v16 = *(archive + 14);
    v17 = *v15;
    if (v16 < *v15)
    {
      *(archive + 14) = v16 + 1;
      v18 = *&v15[2 * v16 + 2];
      goto LABEL_18;
    }

    if (v17 == *(archive + 15))
    {
LABEL_16:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 48));
      v15 = *(archive + 8);
      v17 = *v15;
    }

    *v15 = v17 + 1;
    v18 = google::protobuf::Arena::CreateMaybeMessage<TSCE::GroupByChangeArchive_GroupingColumnChangeArchive>(*(archive + 6));
    v19 = *(archive + 14);
    v20 = *(archive + 8) + 8 * v19;
    *(archive + 14) = v19 + 1;
    *(v20 + 8) = v18;
LABEL_18:
    v21 = *begin;
    v22 = *(begin + 1);
    v18[4] |= 3u;
    v18[6] = v21;
    v18[7] = v22;
    begin = (begin + 2);
  }

  if (self->_previousGroupNodeToUpdated.__table_.__size_)
  {
    *(archive + 4) |= 2u;
    v23 = *(archive + 10);
    if (!v23)
    {
      v24 = *(archive + 1);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = MEMORY[0x223DA0310](v24);
      *(archive + 10) = v23;
    }

    TSKUIDStructMap::saveToMessage(&self->_previousGroupNodeToUpdated, v23);
  }

  if (self->_updatedGroupNodeToPrevious.__table_.__size_)
  {
    *(archive + 4) |= 4u;
    v25 = *(archive + 11);
    if (!v25)
    {
      v26 = *(archive + 1);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = MEMORY[0x223DA0310](v26);
      *(archive + 11) = v25;
    }

    TSKUIDStructMap::saveToMessage(&self->_updatedGroupNodeToPrevious, v25);
  }

  if (objc_msgSend_count(self->_removedGroupNodeUids, v8, v9, v10))
  {
    removedGroupNodeUids = self->_removedGroupNodeUids;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_22123F514;
    v30[3] = &unk_27845D920;
    v30[4] = archive;
    objc_msgSend_foreachUuid_(removedGroupNodeUids, v27, v30, v28);
  }
}

- (TSKUIDStruct)groupByUid
{
  upper = self->_groupByUid._upper;
  lower = self->_groupByUid._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 28) = 1065353216;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 38) = 1065353216;
  return self;
}

@end
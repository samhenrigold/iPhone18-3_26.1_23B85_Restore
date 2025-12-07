@interface TSCEUIDSet
- (BOOL)intersectsSet:(id)set;
- (BOOL)isAllInvalid;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSubsetOf:(id)of;
- (BOOL)p_addUUID:(TSKUIDStruct)d;
- (BOOL)p_removeUUID:(TSKUIDStruct)d;
- (TSCEUIDSet)initWithTSUUUIDVector:(const void *)vector;
- (TSCEUIDSet)initWithUUID:(TSKUIDStruct)d;
- (TSCEUIDSet)initWithUUIDSet:(id)set;
- (TSCEUIDSet)initWithUUIDVector:(const void *)vector;
- (TSKUIDStruct)anyUuid;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)uuidsAsVector;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)expandedSetWithUuid:(TSKUIDStruct)uuid;
- (id)expandedSetWithUuids:(const void *)uuids;
- (id)expandedSetWithUuidsFromVector:(const void *)vector;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)reducedSetMinusUuid:(TSKUIDStruct)uuid;
- (id)reducedSetMinusUuids:(const void *)uuids;
- (id)reducedSetMinusUuidsFromVector:(const void *)vector;
- (id)setByUnionWithSet:(id)set;
- (vector<TSU::UUIDData<TSP::UUIDData>,)uuidsAsTSUVector;
- (void)foreachUuid:(id)uuid;
- (void)p_addUUIDs:(const void *)ds;
- (void)p_addUUIDsFromVector:(const void *)vector;
- (void)p_removeUUIDs:(const void *)ds;
- (void)p_removeUUIDsFromVector:(const void *)vector;
@end

@implementation TSCEUIDSet

- (TSCEUIDSet)initWithUUID:(TSKUIDStruct)d
{
  dCopy = d;
  v6.receiver = self;
  v6.super_class = TSCEUIDSet;
  v3 = [(TSCEUIDSet *)&v6 init];
  v4 = v3;
  if (v3)
  {
    sub_2210C2B00(&v3->_uuidSet.__table_.__bucket_list_.__ptr_, &dCopy, &dCopy);
  }

  return v4;
}

- (TSCEUIDSet)initWithUUIDSet:(id)set
{
  setCopy = set;
  v9.receiver = self;
  v9.super_class = TSCEUIDSet;
  v5 = [(TSCEUIDSet *)&v9 init];
  v6 = v5;
  if (setCopy)
  {
    if (v5)
    {
      v7 = v5 == setCopy;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v5->_uuidSet.__table_.__max_load_factor_ = setCopy->_uuidSet.__table_.__max_load_factor_;
      sub_2211F2900(&v5->_uuidSet.__table_.__bucket_list_.__ptr_, setCopy->_uuidSet.__table_.__first_node_.__next_, 0);
    }
  }

  return v6;
}

- (TSCEUIDSet)initWithUUIDVector:(const void *)vector
{
  v12.receiver = self;
  v12.super_class = TSCEUIDSet;
  v4 = [(TSCEUIDSet *)&v12 init];
  v7 = v4;
  if (v4)
  {
    objc_msgSend_p_reserve_(v4, v5, (*(vector + 1) - *vector) >> 4, v6);
    v9 = *vector;
    v8 = *(vector + 1);
    while (v9 != v8)
    {
      v11 = *v9;
      sub_2210C2B00(&v7->_uuidSet.__table_.__bucket_list_.__ptr_, &v11, &v11);
      ++v9;
    }
  }

  return v7;
}

- (TSCEUIDSet)initWithTSUUUIDVector:(const void *)vector
{
  v12.receiver = self;
  v12.super_class = TSCEUIDSet;
  v4 = [(TSCEUIDSet *)&v12 init];
  v7 = v4;
  if (v4)
  {
    objc_msgSend_p_reserve_(v4, v5, (*(vector + 1) - *vector) >> 4, v6);
    v9 = *vector;
    v8 = *(vector + 1);
    while (v9 != v8)
    {
      v11 = *v9;
      sub_2211D6484(&v7->_uuidSet.__table_.__bucket_list_.__ptr_, &v11, &v11);
      ++v9;
    }
  }

  return v7;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)uuidsAsVector
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x4812000000;
  v16 = sub_2211F1234;
  v17 = sub_2211F1258;
  *__p = 0u;
  v19 = 0u;
  v7 = objc_msgSend_count(self, a3, v3, v4);
  sub_221083368(&__p[1], v7);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2211F1270;
  v12[3] = &unk_2784613A8;
  v12[4] = &v13;
  objc_msgSend_foreachUuid_(self, v8, v12, v9);
  v10 = v14;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_221086EBC(retstr, v10[6], v10[7], (v10[7] - v10[6]) >> 4);
  _Block_object_dispose(&v13, 8);
  result = __p[1];
  if (__p[1])
  {
    *&v19 = __p[1];
    operator delete(__p[1]);
  }

  return result;
}

- (vector<TSU::UUIDData<TSP::UUIDData>,)uuidsAsTSUVector
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x4812000000;
  v16 = sub_2211F14A4;
  v17 = sub_2211F14C8;
  v18 = &unk_22188E88F;
  v20 = 0;
  v21 = 0;
  __p = 0;
  v7 = objc_msgSend_count(self, a3, v3, v4);
  sub_221083368(&__p, v7);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2211F14E0;
  v12[3] = &unk_2784613A8;
  v12[4] = &v13;
  objc_msgSend_foreachUuid_(self, v8, v12, v9);
  v10 = v14;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_2211F2E78(retstr, v10[6], v10[7], (v10[7] - v10[6]) >> 4);
  _Block_object_dispose(&v13, 8);
  result = __p;
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  return result;
}

- (id)description
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_2211F16EC;
  v15 = sub_2211F16FC;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2211F1704;
  v10[3] = &unk_2784613A8;
  v10[4] = &v11;
  objc_msgSend_foreachUuid_(self, a2, v10, v2);
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v8 = objc_msgSend_stringWithFormat_(v4, v6, @"%@<%p>: %@", v7, v5, self, v12[5]);
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (BOOL)intersectsSet:(id)set
{
  setCopy = set;
  v7 = setCopy;
  if (setCopy)
  {
    if (self->_uuidSet.__table_.__size_ >= setCopy[4])
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v14 = 0;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_2211F18E0;
      v10[3] = &unk_2784613D0;
      v10[4] = self;
      v10[5] = &v11;
      objc_msgSend_foreachUuid_(setCopy, v5, v10, v6);
      v8 = *(v12 + 24);
      _Block_object_dispose(&v11, 8);
    }

    else
    {
      v8 = objc_msgSend_intersectsSet_(setCopy, v5, self, v6);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = equalCopy;
  v9 = self == equalCopy;
  if (equalCopy && self != equalCopy)
  {
    v10 = objc_msgSend_count(self, v5, v6, v7);
    if (v10 == objc_msgSend_count(v8, v11, v12, v13))
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_2211F1A54;
      v17[3] = &unk_2784613D0;
      v17[4] = self;
      v17[5] = &v18;
      objc_msgSend_foreachUuid_(v8, v14, v17, v15);
      v9 = *(v19 + 24) ^ 1;
      _Block_object_dispose(&v18, 8);
    }

    else
    {
      v9 = 0;
    }
  }

  return v9 & 1;
}

- (BOOL)isSubsetOf:(id)of
{
  ofCopy = of;
  if (ofCopy)
  {
    p_first_node = &self->_uuidSet.__table_.__first_node_;
    do
    {
      p_first_node = p_first_node->__next_;
      v6 = p_first_node == 0;
    }

    while (p_first_node && sub_221119F90(ofCopy + 1, &p_first_node[2].__next_));
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)setByUnionWithSet:(id)set
{
  setCopy = set;
  v8 = objc_msgSend_mutableCopy(self, v5, v6, v7);
  objc_msgSend_addUuidsFromSet_(v8, v9, setCopy, v10);

  return v8;
}

- (TSKUIDStruct)anyUuid
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x4012000000;
  v11 = sub_2211F1C94;
  v12 = nullsub_28;
  v13 = &unk_22188E88F;
  v14 = 0;
  v15 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2211F1CA4;
  v7[3] = &unk_2784613A8;
  v7[4] = &v8;
  objc_msgSend_foreachUuid_(self, a2, v7, v2);
  v3 = v9[6];
  v4 = v9[7];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (BOOL)isAllInvalid
{
  if (objc_msgSend_count(self, a2, v2, v3) != 1)
  {
    return 0;
  }

  v8 = objc_msgSend_anyUuid(self, v5, v6, v7);
  return (v8 | v9) == 0;
}

- (id)expandedSetWithUuid:(TSKUIDStruct)uuid
{
  upper = uuid._upper;
  lower = uuid._lower;
  selfCopy = self;
  if ((objc_msgSend_containsUuid_(selfCopy, v6, lower, upper) & 1) == 0)
  {
    v10 = objc_msgSend_copy(selfCopy, v7, v8, v9);

    selfCopy = v10;
    objc_msgSend_p_addUUID_(v10, v11, lower, upper);
  }

  return selfCopy;
}

- (id)reducedSetMinusUuid:(TSKUIDStruct)uuid
{
  upper = uuid._upper;
  lower = uuid._lower;
  selfCopy = self;
  if (objc_msgSend_containsUuid_(selfCopy, v6, lower, upper))
  {
    v10 = objc_msgSend_copy(selfCopy, v7, v8, v9);

    selfCopy = v10;
    objc_msgSend_p_removeUUID_(v10, v11, lower, upper);
  }

  return selfCopy;
}

- (id)expandedSetWithUuids:(const void *)uuids
{
  selfCopy = self;
  v8 = selfCopy;
  if (*(uuids + 3))
  {
    v9 = objc_msgSend_copy(selfCopy, v5, v6, v7);

    v8 = v9;
    objc_msgSend_p_addUUIDs_(v9, v10, uuids, v11);
  }

  return v8;
}

- (id)reducedSetMinusUuids:(const void *)uuids
{
  selfCopy = self;
  v8 = selfCopy;
  if (*(uuids + 3))
  {
    v9 = objc_msgSend_copy(selfCopy, v5, v6, v7);

    v8 = v9;
    objc_msgSend_p_removeUUIDs_(v9, v10, uuids, v11);
  }

  return v8;
}

- (id)expandedSetWithUuidsFromVector:(const void *)vector
{
  selfCopy = self;
  v8 = selfCopy;
  if (*(vector + 1) != *vector)
  {
    v9 = objc_msgSend_copy(selfCopy, v5, v6, v7);

    v8 = v9;
    objc_msgSend_p_addUUIDsFromVector_(v9, v10, vector, v11);
  }

  return v8;
}

- (id)reducedSetMinusUuidsFromVector:(const void *)vector
{
  selfCopy = self;
  v8 = selfCopy;
  if (*(vector + 1) != *vector)
  {
    v9 = objc_msgSend_copy(selfCopy, v5, v6, v7);

    v8 = v9;
    objc_msgSend_p_removeUUIDsFromVector_(v9, v10, vector, v11);
  }

  return v8;
}

- (void)foreachUuid:(id)uuid
{
  v5 = 0;
  for (i = self->_uuidSet.__table_.__first_node_.__next_; i; i = *i)
  {
    (*(uuid + 2))(uuid, i[2], i[3], &v5);
    if (v5)
    {
      break;
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCEUIDSet alloc];

  return MEMORY[0x2821F9670](v4, sel_initWithUUIDSet_, self, v5);
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSCEMutableUIDSet alloc];

  return MEMORY[0x2821F9670](v4, sel_initWithUUIDSet_, self, v5);
}

- (BOOL)p_addUUID:(TSKUIDStruct)d
{
  dCopy = d;
  sub_2210C2B00(&self->_uuidSet.__table_.__bucket_list_.__ptr_, &dCopy, &dCopy);
  return v3 & 1;
}

- (BOOL)p_removeUUID:(TSKUIDStruct)d
{
  dCopy = d;
  v4 = sub_2210875C4(&self->_uuidSet.__table_.__bucket_list_.__ptr_, &dCopy);
  if (v4)
  {
    sub_2211F2EF4(&self->_uuidSet.__table_.__bucket_list_.__ptr_, &dCopy);
  }

  return v4 != 0;
}

- (void)p_addUUIDs:(const void *)ds
{
  v6 = objc_msgSend_count(self, a2, ds, v3);
  objc_msgSend_p_reserve_(self, v7, *(ds + 3) + v6, v8);
  for (i = *(ds + 2); i; i = *i)
  {
    objc_msgSend_p_addUUID_(self, v9, i[2], i[3]);
  }
}

- (void)p_removeUUIDs:(const void *)ds
{
  for (i = *(ds + 2); i; i = *i)
  {
    objc_msgSend_p_removeUUID_(self, a2, i[2], i[3]);
  }
}

- (void)p_addUUIDsFromVector:(const void *)vector
{
  v6 = objc_msgSend_count(self, a2, vector, v3);
  objc_msgSend_p_reserve_(self, v7, v6 + ((*(vector + 1) - *vector) >> 4), v8);
  for (i = *vector; i != *(vector + 1); i += 2)
  {
    v11 = *i;
    v12 = i[1];
    objc_msgSend_p_addUUID_(self, v9, v11, v12);
  }
}

- (void)p_removeUUIDsFromVector:(const void *)vector
{
  v3 = *vector;
  v4 = *(vector + 1);
  if (*vector != v4)
  {
    do
    {
      v6 = *v3;
      v7 = v3[1];
      v3 += 2;
      objc_msgSend_p_removeUUID_(self, a2, v6, v7);
    }

    while (v3 != v4);
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end
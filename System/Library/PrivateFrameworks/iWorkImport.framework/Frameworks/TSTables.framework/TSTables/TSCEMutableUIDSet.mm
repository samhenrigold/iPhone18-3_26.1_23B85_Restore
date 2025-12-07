@interface TSCEMutableUIDSet
- (BOOL)removeUuidsFromSet:(id)set;
- (id)addUuidsFromSetReturningAdded:(id)added;
- (id)removeUuidsFromSetReturningRemoved:(id)removed;
- (void)addUuidsFromSet:(id)set;
- (void)remapWithMap:(const void *)map;
@end

@implementation TSCEMutableUIDSet

- (void)addUuidsFromSet:(id)set
{
  setCopy = set;
  v7 = setCopy;
  if (setCopy)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2211F23B0;
    v8[3] = &unk_27845D900;
    v8[4] = self;
    objc_msgSend_foreachUuid_(setCopy, v5, v8, v6);
  }
}

- (id)addUuidsFromSetReturningAdded:(id)added
{
  addedCopy = added;
  v7 = addedCopy;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2211F16EC;
  v16 = sub_2211F16FC;
  v17 = 0;
  if (addedCopy)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2211F24EC;
    v11[3] = &unk_2784613D0;
    v11[4] = self;
    v11[5] = &v12;
    objc_msgSend_foreachUuid_(addedCopy, v5, v11, v6);
    v8 = v13[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (BOOL)removeUuidsFromSet:(id)set
{
  setCopy = set;
  v7 = setCopy;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (setCopy)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2211F2678;
    v10[3] = &unk_2784613F8;
    v10[4] = self;
    v10[5] = &v11;
    objc_msgSend_foreachUuid_(setCopy, v5, v10, v6);
    v8 = *(v12 + 24);
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v8 & 1;
}

- (id)removeUuidsFromSetReturningRemoved:(id)removed
{
  removedCopy = removed;
  v7 = removedCopy;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2211F16EC;
  v16 = sub_2211F16FC;
  v17 = 0;
  if (removedCopy)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2211F27F4;
    v11[3] = &unk_2784613D0;
    v11[4] = self;
    v11[5] = &v12;
    objc_msgSend_foreachUuid_(removedCopy, v5, v11, v6);
    v8 = v13[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (void)remapWithMap:(const void *)map
{
  for (i = *(map + 2); i; i = *i)
  {
    v5 = sub_2210875C4(&self->super._uuidSet.__table_.__bucket_list_.__ptr_, i + 2);
    if (v5)
    {
      sub_2210CDD3C(&self->super._uuidSet.__table_.__bucket_list_.__ptr_, v5);
      sub_2210C2B00(&self->super._uuidSet.__table_.__bucket_list_.__ptr_, i + 4, i + 2);
    }
  }
}

@end
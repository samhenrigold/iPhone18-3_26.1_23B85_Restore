@interface TSCEFormulaRewrite_MergeOriginMovedInfo
- (TSCEFormulaRewrite_MergeOriginMovedInfo)initWithMergeOriginsMap:(const void *)map reverseMap:(const void *)reverseMap;
- (id).cxx_construct;
- (id)description;
- (id)initFromMessage:(const void *)message;
- (void)saveToMessage:(void *)message;
@end

@implementation TSCEFormulaRewrite_MergeOriginMovedInfo

- (TSCEFormulaRewrite_MergeOriginMovedInfo)initWithMergeOriginsMap:(const void *)map reverseMap:(const void *)reverseMap
{
  v6 = objc_msgSend_init(self, a2, map, reverseMap);
  v7 = v6;
  if (v6)
  {
    v8 = (v6 + 8);
    if ((v7 + 8) != map)
    {
      *(v7 + 40) = *(map + 8);
      sub_2214C0E20(v8, *(map + 2), 0);
    }

    if ((v7 + 48) != reverseMap)
    {
      *(v7 + 80) = *(reverseMap + 8);
      sub_2214C0E20((v7 + 48), *(reverseMap + 2), 0);
    }
  }

  return v7;
}

- (id)initFromMessage:(const void *)message
{
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  if (*(message + 4) >= 1)
  {
    v5 = 0;
    do
    {
      v12 = 0;
      v6 = *(*(message + 5) + 4 * v5) | (*(*(message + 3) + 4 * v5) << 32);
      v11 = 0;
      v12 = v6;
      v11 = *(*(message + 9) + 4 * v5) | (*(*(message + 7) + 4 * v5) << 32);
      v17 = &v12;
      v7 = sub_2214C13E4(v15, &v12, &unk_2217E202D, &v17);
      v7[3] = v11;
      v17 = &v11;
      v8 = sub_2214C13E4(v13, &v11, &unk_2217E202D, &v17);
      v8[3] = v12;
      ++v5;
    }

    while (v5 < *(message + 4));
  }

  v9 = objc_msgSend_initWithMergeOriginsMap_reverseMap_(self, a2, v15, v13);
  sub_2210BDEC0(v13);
  sub_2210BDEC0(v15);
  return v9;
}

- (void)saveToMessage:(void *)message
{
  for (i = self->_mergeOriginsMap.__table_.__first_node_.__next_; i; i = *i)
  {
    v5 = *(i + 10);
    v6 = *(message + 4);
    if (v6 == *(message + 5))
    {
      v7 = v6 + 1;
      sub_2210BBC64(message + 4, v6 + 1);
      *(*(message + 3) + 4 * v6) = v5;
    }

    else
    {
      *(*(message + 3) + 4 * v6) = v5;
      v7 = v6 + 1;
    }

    *(message + 4) = v7;
    v8 = i[4];
    v9 = *(message + 8);
    if (v9 == *(message + 9))
    {
      v10 = v9 + 1;
      sub_2210BBC64(message + 8, v9 + 1);
      *(*(message + 5) + 4 * v9) = v8;
    }

    else
    {
      *(*(message + 5) + 4 * v9) = v8;
      v10 = v9 + 1;
    }

    *(message + 8) = v10;
    v11 = *(i + 14);
    v12 = *(message + 12);
    if (v12 == *(message + 13))
    {
      v13 = v12 + 1;
      sub_2210BBC64(message + 12, v12 + 1);
      *(*(message + 7) + 4 * v12) = v11;
    }

    else
    {
      *(*(message + 7) + 4 * v12) = v11;
      v13 = v12 + 1;
    }

    *(message + 12) = v13;
    v14 = i[6];
    v15 = *(message + 16);
    if (v15 == *(message + 17))
    {
      v16 = v15 + 1;
      sub_2210BBC64(message + 16, v15 + 1);
      *(*(message + 9) + 4 * v15) = v14;
    }

    else
    {
      *(*(message + 9) + 4 * v15) = v14;
      v16 = v15 + 1;
    }

    *(message + 16) = v16;
  }
}

- (id)description
{
  v4 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], a2, @"merge origin map:\n", v2);
  for (i = self->_mergeOriginsMap.__table_.__first_node_.__next_; i; i = *i)
  {
    v6 = NSStringFromTSUCellCoord();
    v7 = NSStringFromTSUCellCoord();
    objc_msgSend_appendFormat_(v4, v8, @"%@ -> %@", v9, v6, v7);
  }

  return v4;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  return self;
}

@end
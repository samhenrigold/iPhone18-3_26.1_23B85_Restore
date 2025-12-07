@interface TSCERemoteDataSpecifierSet
+ (TSCERemoteDataSpecifierSet)setWithSpecifier:(id)specifier;
+ (TSCERemoteDataSpecifierSet)setWithSpecifierArray:(id)array;
+ (TSCERemoteDataSpecifierSet)setWithSpecifiers:(id)specifiers;
+ (id)set;
- (BOOL)containsColdSpecifiers;
- (BOOL)containsSpecifier:(id)specifier;
- (BOOL)containsSpecifiersFromSet:(id)set;
- (BOOL)containsSpecifiersWithSymbol:(id)symbol;
- (BOOL)isEqual:(id)equal;
- (TSCERemoteDataSpecifierSet)init;
- (TSCERemoteDataSpecifierSet)initWithSpecifierArray:(id)array;
- (TSCERemoteDataSpecifierSet)initWithSpecifiers:(id)specifiers;
- (id).cxx_construct;
- (id)allSpecifiers;
- (id)allSymbols;
- (id)coldSpecifierArrayForYear:(unint64_t)year;
- (id)coldSpecifierSet;
- (id)coldSpecifiers;
- (id)coldSpecifiersForYear:(unint64_t)year;
- (id)copyWithZone:(_NSZone *)zone;
- (id)hotSpecifierSet;
- (id)p_description:(BOOL)p_description;
- (id)setByIntersectingWithSet:(id)set;
- (id)setByIntersectingWithSymbolsOfSet:(id)set;
- (id)setByRemovingSpecifiersFromSet:(id)set;
- (id)setByRemovingSpecifiersWithSymbols:(id)symbols;
- (id)setOfSpecifiersContainedInSet:(id)set;
- (id)setOfSpecifiersNotContainedInSet:(id)set;
- (id)setOfSpecifiersPassingTest:(id)test;
- (id)setOfSpecifiersWithDate:(id)date;
- (id)setOfSpecifiersWithSymbol:(id)symbol;
- (id)sortedArrayOfSpecifiers;
- (id)yearsReferenced;
- (unint64_t)p_coldSpecifierCount;
- (void)enumerateSpecifiersWithBlock:(id)block;
- (void)insertSpecifier:(id)specifier;
- (void)insertSpecifiersFromArray:(id)array;
- (void)insertSpecifiersFromSet:(id)set;
- (void)p_enumerateYearSetsWithBlock:(id)block;
- (void)removeAllSpecifiers;
- (void)removeSpecifier:(id)specifier;
- (void)removeSpecifiersFromArray:(id)array;
- (void)removeSpecifiersFromSet:(id)set;
@end

@implementation TSCERemoteDataSpecifierSet

+ (id)set
{
  v2 = objc_alloc(objc_opt_class());
  v5 = objc_msgSend_initWithSpecifiers_(v2, v3, 0, v4);

  return v5;
}

+ (TSCERemoteDataSpecifierSet)setWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v5, specifierCopy, v6);
  v10 = objc_msgSend_initWithSpecifiers_(v4, v8, v7, v9);

  return v10;
}

+ (TSCERemoteDataSpecifierSet)setWithSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithSpecifiers_(v4, v5, specifiersCopy, v6);

  return v7;
}

+ (TSCERemoteDataSpecifierSet)setWithSpecifierArray:(id)array
{
  arrayCopy = array;
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithSpecifierArray_(v4, v5, arrayCopy, v6);

  return v7;
}

- (void)p_enumerateYearSetsWithBlock:(id)block
{
  blockCopy = block;
  p_first_node = &self->_coldDataByYear.__table_.__first_node_;
  do
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    v6 = 0;
    blockCopy[2](blockCopy, p_first_node[2].__next_, p_first_node[3].__next_, &v6);
  }

  while ((v6 & 1) == 0);
}

- (unint64_t)p_coldSpecifierCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2213D0FD8;
  v5[3] = &unk_278464428;
  v5[4] = &v6;
  objc_msgSend_p_enumerateYearSetsWithBlock_(self, a2, v5, v2);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (TSCERemoteDataSpecifierSet)init
{
  v6.receiver = self;
  v6.super_class = TSCERemoteDataSpecifierSet;
  v2 = [(TSCERemoteDataSpecifierSet *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    hotData = v2->_hotData;
    v2->_hotData = v3;
  }

  return v2;
}

- (TSCERemoteDataSpecifierSet)initWithSpecifiers:(id)specifiers
{
  v25 = *MEMORY[0x277D85DE8];
  specifiersCopy = specifiers;
  v8 = objc_msgSend_init(self, v5, v6, v7);
  if (v8)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = specifiersCopy;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v20, v24, 16);
    if (v11)
    {
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = sub_2213D1224(v8, v14);
          objc_msgSend_addObject_(v15, v16, v14, v17, v20);
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v18, &v20, v24, 16);
      }

      while (v11);
    }
  }

  return v8;
}

- (TSCERemoteDataSpecifierSet)initWithSpecifierArray:(id)array
{
  v25 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v8 = objc_msgSend_init(self, v5, v6, v7);
  if (v8)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = arrayCopy;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v20, v24, 16);
    if (v11)
    {
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = sub_2213D1224(v8, v14);
          objc_msgSend_addObject_(v15, v16, v14, v17, v20);
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v18, &v20, v24, 16);
      }

      while (v11);
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_2213D1544;
  v20 = sub_2213D1554;
  v5 = objc_msgSend_allocWithZone_(TSCERemoteDataSpecifierSet, a2, zone, v3);
  v21 = objc_msgSend_init(v5, v6, v7, v8);
  objc_msgSend_unionSet_(*(v17[5] + 48), v9, self->_hotData, v10);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2213D155C;
  v15[3] = &unk_278464428;
  v15[4] = &v16;
  objc_msgSend_p_enumerateYearSetsWithBlock_(self, v11, v15, v12);
  v13 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v9 = v5;
  if (v5 && (v10 = objc_msgSend_count(*(v5 + 48), v6, v7, v8), v10 == objc_msgSend_count(self->_hotData, v11, v12, v13)) && v9[4] == self->_coldDataByYear.__table_.__size_ && objc_msgSend_isEqualToSet_(self->_hotData, v14, v9[6], v15) && (objc_msgSend_yearsReferenced(self, v16, v17, v18), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend_yearsReferenced(v9, v20, v21, v22), v23 = objc_claimAutoreleasedReturnValue(), isEqualToIndexSet = objc_msgSend_isEqualToIndexSet_(v19, v24, v23, v25), v23, v19, (isEqualToIndexSet & 1) != 0))
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 1;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_2213D17F0;
    v31[3] = &unk_278464450;
    v32 = v9;
    v33 = &v34;
    objc_msgSend_p_enumerateYearSetsWithBlock_(self, v27, v31, v28);
    v29 = *(v35 + 24);

    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

- (void)insertSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = sub_2213D1224(self, specifierCopy);
  objc_msgSend_addObject_(v4, v5, specifierCopy, v6);
}

- (void)removeSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = sub_2213D1224(self, specifierCopy);
  objc_msgSend_removeObject_(v4, v5, specifierCopy, v6);
}

- (void)insertSpecifiersFromArray:(id)array
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  arrayCopy = array;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v5, &v14, v18, 16);
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = sub_2213D1224(self, v9);
        objc_msgSend_addObject_(v10, v11, v9, v12, v14);
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v13, &v14, v18, 16);
    }

    while (v6);
  }
}

- (void)removeSpecifiersFromArray:(id)array
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  arrayCopy = array;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v5, &v14, v18, 16);
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = sub_2213D1224(self, v9);
        objc_msgSend_removeObject_(v10, v11, v9, v12, v14);
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v13, &v14, v18, 16);
    }

    while (v6);
  }
}

- (void)insertSpecifiersFromSet:(id)set
{
  setCopy = set;
  hotData = self->_hotData;
  v9 = objc_msgSend_hotData(setCopy, v6, v7, v8);
  objc_msgSend_unionSet_(hotData, v10, v9, v11);

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2213D1DA4;
  v14[3] = &unk_278464478;
  v14[4] = self;
  objc_msgSend_p_enumerateYearSetsWithBlock_(setCopy, v12, v14, v13);
}

- (void)removeSpecifiersFromSet:(id)set
{
  setCopy = set;
  hotData = self->_hotData;
  v9 = objc_msgSend_hotData(setCopy, v6, v7, v8);
  objc_msgSend_minusSet_(hotData, v10, v9, v11);

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2213D1EF0;
  v14[3] = &unk_278464478;
  v14[4] = self;
  objc_msgSend_p_enumerateYearSetsWithBlock_(setCopy, v12, v14, v13);
}

- (void)removeAllSpecifiers
{
  objc_msgSend_removeAllObjects(self->_hotData, a2, v2, v3);

  sub_2211A89A4(&self->_coldDataByYear);
}

- (BOOL)containsSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (objc_msgSend_isCold(specifierCopy, v5, v6, v7) && (objc_msgSend_containsColdSpecifiers(self, v8, v9, v10) & 1) == 0)
  {
    v14 = 0;
  }

  else
  {
    v11 = sub_2213D1224(self, specifierCopy);
    v14 = objc_msgSend_containsObject_(v11, v12, specifierCopy, v13);
  }

  return v14;
}

- (BOOL)containsSpecifiersFromSet:(id)set
{
  setCopy = set;
  v8 = objc_msgSend_hotData(setCopy, v5, v6, v7);
  isSubsetOfSet = objc_msgSend_isSubsetOfSet_(v8, v9, self->_hotData, v10);

  if (isSubsetOfSet)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 1;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2213D2144;
    v16[3] = &unk_278464450;
    v16[4] = self;
    v16[5] = &v17;
    objc_msgSend_p_enumerateYearSetsWithBlock_(setCopy, v12, v16, v13);
    v14 = *(v18 + 24);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (BOOL)containsSpecifiersWithSymbol:(id)symbol
{
  v33 = *MEMORY[0x277D85DE8];
  symbolCopy = symbol;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = self->_hotData;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v28, v32, 16);
  if (v10)
  {
    v11 = *v29;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = objc_msgSend_symbol(*(*(&v28 + 1) + 8 * v12), v7, v8, v9);
        isEqualToString = objc_msgSend_isEqualToString_(v13, v14, symbolCopy, v15);

        if (isEqualToString)
        {

          v19 = 1;
          goto LABEL_11;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v28, v32, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2213D23F8;
  v21[3] = &unk_278464450;
  v22 = symbolCopy;
  v23 = &v24;
  objc_msgSend_p_enumerateYearSetsWithBlock_(self, v17, v21, v18);
  v19 = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
LABEL_11:

  return v19 & 1;
}

- (BOOL)containsColdSpecifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2213D2620;
  v5[3] = &unk_278464428;
  v5[4] = &v6;
  objc_msgSend_p_enumerateYearSetsWithBlock_(self, a2, v5, v2);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)allSpecifiers
{
  if (objc_msgSend_containsColdSpecifiers(self, a2, v2, v3))
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_2213D1544;
    v23 = sub_2213D1554;
    v8 = MEMORY[0x277CBEB18];
    v9 = objc_msgSend_allObjects(self->_hotData, v5, v6, v7);
    v24 = objc_msgSend_arrayWithArray_(v8, v10, v9, v11);

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2213D27E4;
    v18[3] = &unk_278464428;
    v18[4] = &v19;
    objc_msgSend_p_enumerateYearSetsWithBlock_(self, v12, v18, v13);
    v16 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v14, v20[5], v15);
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v16 = objc_msgSend_setWithSet_(MEMORY[0x277CBEB98], v5, self->_hotData, v7);
  }

  return v16;
}

- (id)coldSpecifiers
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2213D1544;
  v16 = sub_2213D1554;
  v17 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2213D29A4;
  v11[3] = &unk_278464428;
  v11[4] = &v12;
  objc_msgSend_p_enumerateYearSetsWithBlock_(self, v5, v11, v6);
  v9 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v7, v13[5], v8);
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)coldSpecifiersForYear:(unint64_t)year
{
  v4 = sub_2213D1894(&self->_coldDataByYear.__table_.__bucket_list_.__ptr_, year);
  if (v4)
  {
    objc_msgSend_setWithSet_(MEMORY[0x277CBEB98], v3, v4, v5);
  }

  else
  {
    objc_msgSend_set(MEMORY[0x277CBEB98], v3, 0, v5);
  }
  v6 = ;

  return v6;
}

- (id)coldSpecifierArrayForYear:(unint64_t)year
{
  v3 = sub_2213D1894(&self->_coldDataByYear.__table_.__bucket_list_.__ptr_, year);
  if (v3)
  {
    objc_msgSend_allObjects(v3, v4, v5, v6);
  }

  else
  {
    objc_msgSend_array(MEMORY[0x277CBEA60], v4, v5, v6);
  }
  v7 = ;

  return v7;
}

- (id)sortedArrayOfSpecifiers
{
  v21[5] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_allSpecifiers(self, a2, v2, v3);
  v6 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x277CCAC98], v5, @"symbol", 1);
  v8 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x277CCAC98], v7, @"year", 0, v6);
  v21[1] = v8;
  v10 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x277CCAC98], v9, @"month", 0);
  v21[2] = v10;
  v12 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x277CCAC98], v11, @"day", 0);
  v21[3] = v12;
  v14 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x277CCAC98], v13, @"attribute", 1);
  v21[4] = v14;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v21, 5);
  v19 = objc_msgSend_sortedArrayUsingDescriptors_(v4, v17, v16, v18);

  return v19;
}

- (id)allSymbols
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2213D1544;
  v16 = sub_2213D1554;
  v17 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v2, v3);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2213D2DD4;
  v11[3] = &unk_2784644A0;
  v11[4] = &v12;
  objc_msgSend_enumerateSpecifiersWithBlock_(self, v5, v11, v6);
  v9 = objc_msgSend_setWithSet_(MEMORY[0x277CBEB98], v7, v13[5], v8);
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (void)enumerateSpecifiersWithBlock:(id)block
{
  blockCopy = block;
  objc_msgSend_enumerateObjectsUsingBlock_(self->_hotData, v5, blockCopy, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2213D2F14;
  v10[3] = &unk_2784644C8;
  v7 = blockCopy;
  v11 = v7;
  objc_msgSend_p_enumerateYearSetsWithBlock_(self, v8, v10, v9);
}

- (id)coldSpecifierSet
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2213D1544;
  v16 = sub_2213D1554;
  v3 = objc_opt_class();
  v17 = objc_msgSend_set(v3, v4, v5, v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2213D3044;
  v11[3] = &unk_278464428;
  v11[4] = &v12;
  objc_msgSend_p_enumerateYearSetsWithBlock_(self, v7, v11, v8);
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)hotSpecifierSet
{
  if (objc_msgSend_containsColdSpecifiers(self, a2, v2, v3))
  {
    v8 = objc_opt_class();
    v12 = objc_msgSend_hotSpecifiers(self, v9, v10, v11);
    v15 = objc_msgSend_setWithSpecifiers_(v8, v13, v12, v14);
  }

  else
  {
    v15 = objc_msgSend_copy(self, v5, v6, v7);
  }

  return v15;
}

- (id)yearsReferenced
{
  if (objc_msgSend_containsColdSpecifiers(self, a2, v2, v3))
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_2213D1544;
    v20 = sub_2213D1554;
    v21 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v6, v7);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2213D32C4;
    v15[3] = &unk_278464428;
    v15[4] = &v16;
    objc_msgSend_p_enumerateYearSetsWithBlock_(self, v8, v15, v9);
    v10 = objc_alloc(MEMORY[0x277CCAA78]);
    v13 = objc_msgSend_initWithIndexSet_(v10, v11, v17[5], v12);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v13 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v5, v6, v7);
  }

  return v13;
}

- (id)setOfSpecifiersContainedInSet:(id)set
{
  setCopy = set;
  v8 = objc_msgSend_copy(self, v5, v6, v7);
  v9 = v8[6];
  v13 = objc_msgSend_hotData(setCopy, v10, v11, v12);
  objc_msgSend_intersectSet_(v9, v14, v13, v15);

  v19 = objc_msgSend_yearsReferenced(setCopy, v16, v17, v18);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_2213D3428;
  v25[3] = &unk_2784644F0;
  v26 = v19;
  v20 = setCopy;
  v27 = v20;
  v21 = v19;
  objc_msgSend_p_enumerateYearSetsWithBlock_(v8, v22, v25, v23);

  return v8;
}

- (id)setOfSpecifiersNotContainedInSet:(id)set
{
  setCopy = set;
  v8 = objc_msgSend_copy(self, v5, v6, v7);
  v9 = v8[6];
  v13 = objc_msgSend_hotData(setCopy, v10, v11, v12);
  objc_msgSend_minusSet_(v9, v14, v13, v15);

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2213D35E4;
  v20[3] = &unk_278464478;
  v16 = setCopy;
  v21 = v16;
  objc_msgSend_p_enumerateYearSetsWithBlock_(v8, v17, v20, v18);

  return v8;
}

- (id)setByIntersectingWithSet:(id)set
{
  v4 = objc_msgSend_setOfSpecifiersContainedInSet_(self, a2, set, v3);

  return v4;
}

- (id)setByRemovingSpecifiersFromSet:(id)set
{
  setCopy = set;
  v8 = objc_msgSend_copy(self, v5, v6, v7);
  objc_msgSend_removeSpecifiersFromSet_(v8, v9, setCopy, v10);

  return v8;
}

- (id)setByRemovingSpecifiersWithSymbols:(id)symbols
{
  symbolsCopy = symbols;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2213D37D4;
  v10[3] = &unk_278464518;
  v11 = symbolsCopy;
  v5 = symbolsCopy;
  v8 = objc_msgSend_setOfSpecifiersPassingTest_(self, v6, v10, v7);

  return v8;
}

- (id)setOfSpecifiersPassingTest:(id)test
{
  v40 = *MEMORY[0x277D85DE8];
  testCopy = test;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_2213D1544;
  v37 = sub_2213D1554;
  v5 = objc_opt_class();
  v38 = objc_msgSend_set(v5, v6, v7, v8);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = self->_hotData;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v25, v39, 16);
  if (v11)
  {
    v12 = *v26;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v26 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v25 + 1) + 8 * v13);
      if (testCopy[2](testCopy, v14, (v30 + 3)))
      {
        objc_msgSend_addObject_(*(v34[5] + 48), v15, v14, v16);
      }

      if (v30[3])
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v15, &v25, v39, 16);
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ((v30[3] & 1) == 0)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2213D3AF4;
    v21[3] = &unk_278464540;
    v23 = &v33;
    v22 = testCopy;
    v24 = &v29;
    objc_msgSend_p_enumerateYearSetsWithBlock_(self, v17, v21, v18);
  }

  v19 = v34[5];
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  return v19;
}

- (id)setByIntersectingWithSymbolsOfSet:(id)set
{
  setCopy = set;
  v8 = objc_msgSend_allSymbols(setCopy, v5, v6, v7);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2213D3D94;
  v14[3] = &unk_278464518;
  v15 = v8;
  v9 = v8;
  v12 = objc_msgSend_setOfSpecifiersPassingTest_(self, v10, v14, v11);

  return v12;
}

- (id)setOfSpecifiersWithSymbol:(id)symbol
{
  symbolCopy = symbol;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2213D3EB4;
  v10[3] = &unk_278464518;
  v11 = symbolCopy;
  v5 = symbolCopy;
  v8 = objc_msgSend_setOfSpecifiersPassingTest_(self, v6, v10, v7);

  return v8;
}

- (id)setOfSpecifiersWithDate:(id)date
{
  dateCopy = date;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2213D3FD0;
  v10[3] = &unk_278464518;
  v11 = dateCopy;
  v5 = dateCopy;
  v8 = objc_msgSend_setOfSpecifiersPassingTest_(self, v6, v10, v7);

  return v8;
}

- (id)p_description:(BOOL)p_description
{
  p_descriptionCopy = p_description;
  v37 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], a2, @"<{ ", v3);
  v10 = objc_msgSend_count(self, v7, v8, v9);
  v14 = v10;
  if (v10)
  {
    if (p_descriptionCopy && v10 >= 6)
    {
      v15 = objc_msgSend_count(self->_hotData, v11, v12, v13);
      v19 = objc_msgSend_p_coldSpecifierCount(self, v16, v17, v18);
      objc_msgSend_appendFormat_(v6, v20, @"<%tu specifiers: %tu hot, %tu cold>", v21, v14, v15, v19);
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v24 = objc_msgSend_allSpecifiers(self, v11, v12, v13);
      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v32, v36, 16);
      if (v28)
      {
        v29 = *v33;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v33 != v29)
            {
              objc_enumerationMutation(v24);
            }

            objc_msgSend_appendFormat_(v6, v26, @"%@ ", v27, *(*(&v32 + 1) + 8 * i));
          }

          v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v32, v36, 16);
        }

        while (v28);
      }
    }
  }

  else
  {
    objc_msgSend_appendFormat_(v6, v11, @"(empty) ", v13);
  }

  objc_msgSend_appendString_(v6, v22, @" }>", v23);

  return v6;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end
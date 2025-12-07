@interface TSCERemoteDataValueMap
+ (TSCERemoteDataValueMap)valueMapWithSpecifier:(id)specifier value:(id)value;
+ (id)valueMap;
- (BOOL)containsValueForAllSpecifiersInSet:(id)set;
- (BOOL)containsValueForSpecifier:(id)specifier;
- (TSCERemoteDataValueMap)init;
- (TSCERemoteDataValueMap)initWithData:(id)data;
- (id).cxx_construct;
- (id)allSpecifiers;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromArchive:(const void *)archive;
- (id)mapForSingleSpecifier:(id)specifier;
- (id)mapForSpecifiersInSet:(id)set;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)updateWithValuesFromMap:(id)map overwriteValues:(BOOL)values;
- (id)valueForSpecifier:(id)specifier;
- (int64_t)count;
- (void)addValuesFromMap:(id)map;
- (void)enumerateSpecifiersAndValuesWithBlock:(id)block;
- (void)p_enumerateYearMapsWithBlock:(id)block;
- (void)p_saveMap:(id)map toArchive:(void *)archive;
- (void)removeAllValues;
- (void)removeValueForSpecifier:(id)specifier;
- (void)removeValuesForSpecifierSet:(id)set;
- (void)saveToArchive:(void *)archive;
- (void)setValue:(id)value forSpecifier:(id)specifier;
@end

@implementation TSCERemoteDataValueMap

+ (id)valueMap
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (TSCERemoteDataValueMap)valueMapWithSpecifier:(id)specifier value:(id)value
{
  specifierCopy = specifier;
  valueCopy = value;
  v7 = objc_alloc_init(objc_opt_class());
  objc_msgSend_setObject_forKeyedSubscript_(v7, v8, valueCopy, specifierCopy);

  return v7;
}

- (void)p_enumerateYearMapsWithBlock:(id)block
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

- (TSCERemoteDataValueMap)init
{
  v6.receiver = self;
  v6.super_class = TSCERemoteDataValueMap;
  v2 = [(TSCERemoteDataValueMap *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    data = v2->_data;
    v2->_data = v3;
  }

  return v2;
}

- (TSCERemoteDataValueMap)initWithData:(id)data
{
  dataCopy = data;
  v8 = objc_msgSend_init(self, v5, v6, v7);
  v9 = v8;
  if (v8)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2215A2D64;
    v13[3] = &unk_278467220;
    v14 = v8;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(dataCopy, v10, v13, v11);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TSCERemoteDataValueMap);
  v7 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEB38], v5, self->_data, v6);
  data = v4->_data;
  v4->_data = v7;

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2215A2F7C;
  v13[3] = &unk_278467248;
  v9 = v4;
  v14 = v9;
  objc_msgSend_p_enumerateYearMapsWithBlock_(self, v10, v13, v11);

  return v9;
}

- (int64_t)count
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = objc_msgSend_count(self->_data, a2, v2, v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2215A30D8;
  v9[3] = &unk_278467270;
  v9[4] = &v10;
  objc_msgSend_p_enumerateYearMapsWithBlock_(self, v5, v9, v6);
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (void)setValue:(id)value forSpecifier:(id)specifier
{
  valueCopy = value;
  specifierCopy = specifier;
  v7 = sub_2215A2DF4(self, specifierCopy, 1);
  objc_msgSend_setObject_forKey_(v7, v8, valueCopy, specifierCopy);
}

- (void)removeValueForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = sub_2215A2DF4(self, specifierCopy, 0);
  objc_msgSend_removeObjectForKey_(v4, v5, specifierCopy, v6);
}

- (void)addValuesFromMap:(id)map
{
  mapCopy = map;
  data = self->_data;
  v9 = objc_msgSend_data(mapCopy, v6, v7, v8);
  objc_msgSend_addEntriesFromDictionary_(data, v10, v9, v11);

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2215A3320;
  v14[3] = &unk_278467248;
  v14[4] = self;
  objc_msgSend_p_enumerateYearMapsWithBlock_(mapCopy, v12, v14, v13);
}

- (id)updateWithValuesFromMap:(id)map overwriteValues:(BOOL)values
{
  mapCopy = map;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_2215A35A4;
  v20 = sub_2215A35B4;
  v21 = objc_msgSend_set(TSCERemoteDataSpecifierSet, v7, v8, v9);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2215A35BC;
  v14[3] = &unk_278467298;
  valuesCopy = values;
  v14[4] = self;
  v14[5] = &v16;
  objc_msgSend_enumerateSpecifiersAndValuesWithBlock_(mapCopy, v10, v14, v11);
  v12 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v12;
}

- (void)removeValuesForSpecifierSet:(id)set
{
  v33 = *MEMORY[0x277D85DE8];
  setCopy = set;
  data = self->_data;
  v9 = objc_msgSend_hotSpecifiers(setCopy, v6, v7, v8);
  v13 = objc_msgSend_allObjects(v9, v10, v11, v12);
  objc_msgSend_removeObjectsForKeys_(data, v14, v13, v15);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = objc_msgSend_coldSpecifiers(setCopy, v16, v17, v18, 0);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v28, v32, 16);
  if (v21)
  {
    v22 = *v29;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v28 + 1) + 8 * i);
        v25 = sub_2215A2DF4(self, v24, 0);
        if (v25)
        {
          objc_msgSend_removeObjectForKey_(v25, v26, v24, v27);
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v26, &v28, v32, 16);
    }

    while (v21);
  }
}

- (void)removeAllValues
{
  objc_msgSend_removeAllObjects(self->_data, a2, v2, v3);

  sub_2211A89A4(&self->_coldDataByYear);
}

- (BOOL)containsValueForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = sub_2215A2DF4(self, specifierCopy, 0);
  if (v5)
  {
    v8 = objc_msgSend_objectForKey_(v5, v6, specifierCopy, v7);
    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)valueForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = sub_2215A2DF4(self, specifierCopy, 0);
  if (v5)
  {
    v8 = objc_msgSend_objectForKey_(v5, v6, specifierCopy, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)containsValueForAllSpecifiersInSet:(id)set
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2215A3B0C;
  v6[3] = &unk_2784672C0;
  v6[4] = self;
  v6[5] = &v7;
  objc_msgSend_enumerateSpecifiersWithBlock_(set, a2, v6, v3);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)mapForSpecifiersInSet:(id)set
{
  v50 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v5 = objc_opt_class();
  v9 = objc_msgSend_valueMap(v5, v6, v7, v8);
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = objc_msgSend_count(setCopy, v10, v11, v12);
  objc_msgSend_hotSpecifierArray(setCopy, v13, v14, v15);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v16 = v42 = 0u;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v41, v49, 16);
  if (v20)
  {
    v21 = *v42;
LABEL_3:
    v22 = 0;
    while (1)
    {
      if (*v42 != v21)
      {
        objc_enumerationMutation(v16);
      }

      v23 = *(*(&v41 + 1) + 8 * v22);
      v24 = objc_msgSend_objectForKey_(self->_data, v18, v23, v19);
      if (v24)
      {
        objc_msgSend_setObject_forKey_(v9[6], v18, v24, v23);
        v25 = v46[3] - 1;
        v46[3] = v25;
        if (!v25)
        {
          break;
        }
      }

      if (v20 == ++v22)
      {
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v41, v49, 16);
        if (v20)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v29 = objc_msgSend_yearsReferenced(setCopy, v26, v27, v28);
  if (objc_msgSend_count(v29, v30, v31, v32))
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_2215A3E24;
    v36[3] = &unk_2784672E8;
    v37 = v29;
    v38 = setCopy;
    v40 = &v45;
    v39 = v9;
    objc_msgSend_p_enumerateYearMapsWithBlock_(self, v33, v36, v34);
  }

  _Block_object_dispose(&v45, 8);

  return v9;
}

- (id)mapForSingleSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = objc_opt_class();
  v9 = objc_msgSend_valueMap(v5, v6, v7, v8);
  v13 = objc_msgSend_objectForKeyedSubscript_(self, v10, specifierCopy, v11);
  if (v13)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v9, v12, v13, specifierCopy);
  }

  return v9;
}

- (id)allSpecifiers
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_2215A35A4;
  v17 = sub_2215A35B4;
  v5 = objc_msgSend_allKeys(self->_data, a2, v2, v3);
  v18 = objc_msgSend_setWithSpecifierArray_(TSCERemoteDataSpecifierSet, v6, v5, v7);

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2215A4254;
  v12[3] = &unk_278467270;
  v12[4] = &v13;
  objc_msgSend_p_enumerateYearMapsWithBlock_(self, v8, v12, v9);
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (void)enumerateSpecifiersAndValuesWithBlock:(id)block
{
  blockCopy = block;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(self->_data, v5, blockCopy, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2215A4394;
  v10[3] = &unk_278467310;
  v7 = blockCopy;
  v11 = v7;
  objc_msgSend_p_enumerateYearMapsWithBlock_(self, v8, v10, v9);
}

- (id)objectForKeyedSubscript:(id)subscript
{
  v4 = objc_msgSend_valueForSpecifier_(self, a2, subscript, v3);

  return v4;
}

- (id)initFromArchive:(const void *)archive
{
  v43 = objc_msgSend_init(self, a2, archive, v3);
  if (v43)
  {
    v7 = *(archive + 4);
    v8 = v7 ? v7 + 8 : 0;
    v9 = *(archive + 6);
    if (v9)
    {
      v10 = 8 * v9;
      p_superclass = &OBJC_METACLASS___TSCEFunction_YIELD.superclass;
      v12 = &TSCE::_RemoteDataSpecifierArchive_default_instance_;
      v13 = 0x27845C000uLL;
      v14 = 0x277D81000uLL;
      do
      {
        v15 = *v8;
        v16 = p_superclass + 459;
        if (*(*v8 + 24))
        {
          objc_msgSend_specifierFromArchive_(v16, v5, *(*v8 + 24), v6);
        }

        else
        {
          objc_msgSend_specifierFromArchive_(v16, v5, v12, v6);
        }
        v17 = ;
        v18 = *(v13 + 272);
        v19 = *(v15 + 32);
        v24 = objc_msgSend_currentLocale(*(v14 + 552), v20, v21, v22);
        if (v19)
        {
          objc_msgSend_cellValueWithArchive_locale_(v18, v23, v19, v24);
        }

        else
        {
          objc_msgSend_cellValueWithArchive_locale_(v18, v23, &TSCE::_CellValueArchive_default_instance_, v24);
        }
        v25 = ;

        if (!v25)
        {
          v28 = MEMORY[0x277D81150];
          v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSCERemoteDataValueMap initFromArchive:]", v27);
          v30 = v13;
          v31 = v12;
          v32 = p_superclass;
          v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataValueMap.mm", v34);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v36, v29, v35, 333, 0, "Failed to unarchive value for %@!", v17);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
          p_superclass = v32;
          v12 = v31;
          v13 = v30;
          v14 = 0x277D81000;
        }

        v40 = sub_2215A2DF4(v43, v17, 1);
        objc_msgSend_setObject_forKey_(v40, v41, v25, v17);

        v8 += 8;
        v10 -= 8;
      }

      while (v10);
    }
  }

  return v43;
}

- (void)p_saveMap:(id)map toArchive:(void *)archive
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2215A4650;
  v4[3] = &unk_278467330;
  v4[4] = archive;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(map, a2, v4, archive);
}

- (void)saveToArchive:(void *)archive
{
  objc_msgSend_p_saveMap_toArchive_(self, a2, self->_data, archive);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2215A485C;
  v7[3] = &unk_278467358;
  v7[4] = self;
  v7[5] = archive;
  objc_msgSend_p_enumerateYearMapsWithBlock_(self, v5, v7, v6);
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end
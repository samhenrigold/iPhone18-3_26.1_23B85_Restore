@interface NTKLeghornPOIFilter
+ (NTKLeghornPOIFilter)all;
+ (NTKLeghornPOIFilter)none;
+ (id)poiFilterFromDictionary:(id)dictionary;
- (BOOL)includesCategory:(unint64_t)category named:(id)named;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dictionaryValue;
- (NSString)shortStringValue;
- (NSString)stringValue;
- (NTKLeghornPOIFilter)initWithCoder:(id)coder;
- (id)_objectForPropertyKey:(id)key;
- (id)copyIncludingCategories:(unint64_t)categories;
- (id)copyWithExclusions:(id)exclusions forCategory:(unint64_t)category;
- (id)copyWithZone:(_NSZone *)zone;
- (id)excludedNamesForCategory:(unint64_t)category;
- (id)initIncludingCategories:(unint64_t)categories;
- (unint64_t)hash;
- (void)_updateWithPropertyKey:(id)key value:(id)value;
- (void)encodeWithCoder:(id)coder;
- (void)excludeCategory:(unint64_t)category named:(id)named;
- (void)includeCategory:(unint64_t)category named:(id)named;
@end

@implementation NTKLeghornPOIFilter

- (id)initIncludingCategories:(unint64_t)categories
{
  categoriesCopy = categories;
  v9.receiver = self;
  v9.super_class = NTKLeghornPOIFilter;
  v4 = [(NTKLeghornPOIFilter *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_includedCategories = categoriesCopy & 0x1FF;
    v6 = objc_opt_new();
    excludedMapsUserGuides = v5->_excludedMapsUserGuides;
    v5->_excludedMapsUserGuides = v6;
  }

  return v5;
}

+ (NTKLeghornPOIFilter)all
{
  v2 = [NTKLeghornPOIFilter alloc];
  inited = objc_msgSend_initIncludingCategories_(v2, v3, 511);

  return inited;
}

+ (NTKLeghornPOIFilter)none
{
  v2 = [NTKLeghornPOIFilter alloc];
  inited = objc_msgSend_initIncludingCategories_(v2, v3, 0);

  return inited;
}

- (id)copyWithExclusions:(id)exclusions forCategory:(unint64_t)category
{
  categoryCopy = category;
  v26 = *MEMORY[0x277D85DE8];
  exclusionsCopy = exclusions;
  v9 = objc_alloc_init(objc_opt_class());
  v9[1] = self->_includedCategories;
  if ((categoryCopy & 2) != 0)
  {
    v10 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = self->_excludedMapsUserGuides;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v21, v25, 16);
    if (v13)
    {
      v15 = v13;
      v16 = *v22;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v21 + 1) + 8 * i);
          if (objc_msgSend_containsObject_(exclusionsCopy, v14, v18, v21))
          {
            objc_msgSend_addObject_(v10, v14, v18);
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v21, v25, 16);
      }

      while (v15);
    }
  }

  else
  {
    v10 = objc_msgSend_mutableCopy(self->_excludedMapsUserGuides, v7, v8);
  }

  v19 = v9[2];
  v9[2] = v10;

  return v9;
}

- (id)copyIncludingCategories:(unint64_t)categories
{
  categoriesCopy = categories;
  v7 = objc_alloc_init(objc_opt_class());
  v7[1] = categoriesCopy & LODWORD(self->_includedCategories) & 0x1FF;
  if ((categoriesCopy & 2) != 0)
  {
    v8 = objc_msgSend_mutableCopy(self->_excludedMapsUserGuides, v5, v6);
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v7[2];
  v7[2] = v8;

  return v7;
}

- (void)includeCategory:(unint64_t)category named:(id)named
{
  namedCopy = named;
  objc_msgSend_includeCategories_(self, v6, category);
  v8 = namedCopy;
  if ((category & 2) != 0 && namedCopy)
  {
    objc_msgSend_removeObject_(self->_excludedMapsUserGuides, v7, namedCopy);
    v8 = namedCopy;
  }
}

- (void)excludeCategory:(unint64_t)category named:(id)named
{
  categoryCopy = category;
  if ((category & 2) != 0 && named)
  {
    objc_msgSend_addObject_(self->_excludedMapsUserGuides, a2, named);
    categoryCopy &= ~2uLL;
  }

  objc_msgSend_excludeCategories_(self, a2, categoryCopy, named);
}

- (BOOL)includesCategory:(unint64_t)category named:(id)named
{
  namedCopy = named;
  v8 = namedCopy;
  if ((category & ~self->_includedCategories) != 0)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    LOBYTE(v9) = 1;
    if ((category & 2) != 0 && namedCopy)
    {
      v9 = objc_msgSend_containsObject_(self->_excludedMapsUserGuides, v7, namedCopy) ^ 1;
    }
  }

  return v9;
}

- (id)excludedNamesForCategory:(unint64_t)category
{
  if ((category & 2) != 0)
  {
    v3 = objc_msgSend_copy(self->_excludedMapsUserGuides, a2, category);
  }

  else
  {
    v3 = objc_msgSend_set(MEMORY[0x277CBEB98], a2, category);
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToSet = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_includedCategories == equalCopy->_includedCategories)
    {
      isEqualToSet = objc_msgSend_isEqualToSet_(self->_excludedMapsUserGuides, v5, equalCopy->_excludedMapsUserGuides);
    }

    else
    {
      isEqualToSet = 0;
    }
  }

  return isEqualToSet;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = NTKLeghornPOIFilter;
  v3 = [(NTKLeghornPOIFilter *)&v7 hash];
  return self->_includedCategories | __ROR8__(objc_msgSend_hash(self->_excludedMapsUserGuides, v4, v5) | __ROR8__(v3, 56), 56);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[1] = self->_includedCategories;
  v7 = objc_msgSend_mutableCopy(self->_excludedMapsUserGuides, v5, v6);
  v8 = v4[2];
  v4[2] = v7;

  return v4;
}

- (NSString)stringValue
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v6 = NTKLeghornWaypointCategoryString(self->_includedCategories, v4, v5);
  objc_msgSend_appendString_(v3, v7, v6);
  if (objc_msgSend_count(self->_excludedMapsUserGuides, v8, v9))
  {
    objc_msgSend_appendString_(v3, v10, @";exclude:");
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = self->_excludedMapsUserGuides;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v23, v27, 16);
    if (v14)
    {
      v16 = v14;
      v17 = 0;
      v18 = *v24;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v23 + 1) + 8 * i);
          if (-v17 != i)
          {
            objc_msgSend_appendString_(v3, v15, @",", v23);
          }

          objc_msgSend_appendString_(v3, v15, v20, v23);
        }

        v17 += v16;
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v23, v27, 16);
      }

      while (v16);
    }
  }

  v21 = objc_msgSend_copy(v3, v10, v11, v23);

  return v21;
}

- (NSString)shortStringValue
{
  v3 = objc_opt_new();
  v5 = NTKLeghornWaypointCategoryShortString(self->_includedCategories, v4);
  objc_msgSend_appendString_(v3, v6, v5);
  if (objc_msgSend_count(self->_excludedMapsUserGuides, v7, v8))
  {
    objc_msgSend_appendString_(v3, v9, @"Xg");
  }

  v11 = objc_msgSend_copy(v3, v9, v10);

  return v11;
}

- (id)_objectForPropertyKey:(id)key
{
  v23[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (objc_msgSend_isEqualToString_(keyCopy, v5, @"include"))
  {
    v8 = NTKLeghornWaypointCategoryString(self->_includedCategories, v6, v7);
  }

  else if (objc_msgSend_isEqualToString_(keyCopy, v6, @"exclude") && objc_msgSend_count(self->_excludedMapsUserGuides, v9, v10))
  {
    v13 = NTKLeghornWaypointCategoryString(2, v11, v12);
    v22 = v13;
    v16 = objc_msgSend_allObjects(self->_excludedMapsUserGuides, v14, v15);
    v19 = objc_msgSend_copy(v16, v17, v18);
    v23[0] = v19;
    v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v23, &v22, 1);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_updateWithPropertyKey:(id)key value:(id)value
{
  v31 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  if (objc_msgSend_isEqualToString_(keyCopy, v8, @"include"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_includedCategories = NTKLeghornWaypointCategoryFromString(valueCopy, v10);
    }
  }

  else if (objc_msgSend_isEqualToString_(keyCopy, v9, @"exclude"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = valueCopy;
      v14 = NTKLeghornWaypointCategoryString(2, v12, v13);
      v16 = objc_msgSend_objectForKeyedSubscript_(v11, v15, v14);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v14;
        v17 = v16;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v26, v30, 16);
        if (v19)
        {
          v20 = v19;
          v21 = *v27;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v27 != v21)
              {
                objc_enumerationMutation(v17);
              }

              v23 = *(*(&v26 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_msgSend_addObject_(self->_excludedMapsUserGuides, v24, v23);
              }
            }

            v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v24, &v26, v30, 16);
          }

          while (v20);
        }

        v14 = v25;
      }
    }
  }
}

- (NSDictionary)dictionaryValue
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20[0] = @"include";
  v20[1] = @"exclude";
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v20, 2, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v21, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v14 = objc_msgSend__objectForPropertyKey_(self, v8, v12);
        if (v14)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v3, v13, v14, v12);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v16, v21, 16);
    }

    while (v9);
  }

  return v3;
}

+ (id)poiFilterFromDictionary:(id)dictionary
{
  v25 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = [NTKLeghornPOIFilter alloc];
  inited = objc_msgSend_initIncludingCategories_(v4, v5, 0);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23[0] = @"include";
  v23[1] = @"exclude";
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v23, 2, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v19, v24, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v11, v15);
        objc_msgSend__updateWithPropertyKey_value_(inited, v17, v15, v16);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v19, v24, 16);
    }

    while (v12);
  }

  return inited;
}

- (void)encodeWithCoder:(id)coder
{
  v22 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20[0] = @"include";
  v20[1] = @"exclude";
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v20, 2, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v16, v21, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v15 = objc_msgSend__objectForPropertyKey_(self, v9, v13);
        if (v15)
        {
          objc_msgSend_encodeObject_forKey_(coderCopy, v14, v15, v13);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v16, v21, 16);
    }

    while (v10);
  }
}

- (NTKLeghornPOIFilter)initWithCoder:(id)coder
{
  v25 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = NTKLeghornPOIFilter;
  v6 = [(NTKLeghornPOIFilter *)&v22 init];
  if (v6)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v23[0] = @"include";
    v23[1] = @"exclude";
    v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v23, 2, 0);
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v18, v24, 16);
    if (v9)
    {
      v11 = v9;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = objc_msgSend_decodeObjectForKey_(coderCopy, v10, v14);
          objc_msgSend__updateWithPropertyKey_value_(v6, v16, v14, v15);
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v18, v24, 16);
      }

      while (v11);
    }
  }

  return v6;
}

@end
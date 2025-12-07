@interface NTKCLeghornFaceDetailPOISection
+ (NTKCLeghornFaceDetailPOISection)sectionWithType:(unint64_t)type delegate:(id)delegate;
- (BOOL)selectedForFilter:(id)filter atIndex:(unint64_t)index;
- (NSArray)guides;
- (NSString)action;
- (NSString)name;
- (NSString)showAllString;
- (NTKCLeghornFaceDetailPOISection)initWithType:(unint64_t)type delegate:(id)delegate;
- (NTKCLeghornFaceDetailPOISectionDelegate)delegate;
- (id)nameForDetailItem:(unint64_t)item;
- (unint64_t)_selectionForFilter:(id)filter forCategory:(unint64_t)category;
- (unint64_t)_userGuideCategoryAtIndex:(unint64_t)index categoryName:(id *)name displayName:(id *)displayName;
- (unint64_t)categoryForDetailItemAtIndex:(unint64_t)index;
- (unint64_t)detailsCount;
- (unint64_t)selectionForFilter:(id)filter;
- (void)_loadGuides;
- (void)_setSelected:(BOOL)selected forFilter:(id)filter forCategory:(unint64_t)category;
- (void)_setSelected:(BOOL)selected forFilter:(id)filter forCategory:(unint64_t)category named:(id)named;
- (void)setSelected:(BOOL)selected forFilter:(id)filter;
- (void)setSelected:(BOOL)selected forFilter:(id)filter atIndex:(unint64_t)index;
@end

@implementation NTKCLeghornFaceDetailPOISection

+ (NTKCLeghornFaceDetailPOISection)sectionWithType:(unint64_t)type delegate:(id)delegate
{
  delegateCopy = delegate;
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithType_delegate_(v6, v7, type, delegateCopy);

  return v8;
}

- (NTKCLeghornFaceDetailPOISection)initWithType:(unint64_t)type delegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = NTKCLeghornFaceDetailPOISection;
  v7 = [(NTKCLeghornFaceDetailPOISection *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    objc_storeWeak(&v7->_delegate, delegateCopy);
    if (v8->_type == 1)
    {
      objc_msgSend__loadGuides(v8, v9, v10);
    }
  }

  return v8;
}

- (NSString)name
{
  type = self->_type;
  if (type > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = NTKFoghornFaceLocalizedString(off_278BA1680[type]);
  }

  return v4;
}

- (NSString)showAllString
{
  type = self->_type;
  if (type == 1)
  {
    v4 = @"LEGHORN_POI_FILTER_SHOW_ALL_GUIDES";
LABEL_5:
    v5 = NTKFoghornFaceLocalizedString(v4);

    return v5;
  }

  if (type == 5)
  {
    v4 = @"LEGHORN_POI_FILTER_SHOW_ALL_SUGGESTIONS";
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (NSString)action
{
  type = self->_type;
  if (type == 1)
  {
    v4 = @"LEGHORN_POI_FILTER_MAPS_GUIDES_MANAGE";
LABEL_5:
    v5 = NTKFoghornFaceLocalizedString(v4);

    return v5;
  }

  if (type == 5)
  {
    v4 = @"LEGHORN_POI_FILTER_MAPS_SUGGESTIONS_MANAGE";
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (unint64_t)detailsCount
{
  type = self->_type;
  if (type == 5)
  {
    return 3;
  }

  if (type != 1)
  {
    return 0;
  }

  v4 = objc_msgSend_guides(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6) + 1;

  return v7;
}

- (unint64_t)_userGuideCategoryAtIndex:(unint64_t)index categoryName:(id *)name displayName:(id *)displayName
{
  v9 = objc_msgSend_guides(self, a2, index);
  v12 = objc_msgSend_count(v9, v10, v11);

  if (v12 <= index)
  {
    if (v12 == index)
    {
      if (displayName)
      {
        v22 = NTKFoghornFaceLocalizedString(@"POI_FILTER_SECTION_MAPS_FAVORITES");
        v20 = 0;
      }

      else
      {
        v20 = 0;
        v22 = 0;
      }

      v21 = 256;
      if (!name)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v20 = 0;
      v22 = 0;
      v21 = 0;
      if (!name)
      {
        goto LABEL_14;
      }
    }

LABEL_13:
    v23 = v20;
    *name = v20;
    goto LABEL_14;
  }

  if (!(name | displayName))
  {
    v20 = 0;
    v22 = 0;
    v21 = 2;
    goto LABEL_16;
  }

  v15 = objc_msgSend_guides(self, v13, v14);
  v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, index);
  v20 = objc_msgSend_title(v17, v18, v19);

  v21 = 2;
  v22 = v20;
  if (name)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (displayName)
  {
    v24 = v22;
    *displayName = v22;
  }

LABEL_16:

  return v21;
}

- (unint64_t)categoryForDetailItemAtIndex:(unint64_t)index
{
  type = self->_type;
  if (type == 5)
  {
    if (index <= 2)
    {
      return qword_23BEED868[index];
    }
  }

  else if (type == 1)
  {
    return objc_msgSend__userGuideCategoryAtIndex_categoryName_displayName_(self, a2, index, 0, 0);
  }

  return 0;
}

- (id)nameForDetailItem:(unint64_t)item
{
  type = self->_type;
  if (type != 5)
  {
    if (type == 1)
    {
      v8 = 0;
      objc_msgSend__userGuideCategoryAtIndex_categoryName_displayName_(self, a2, item, 0, &v8);
      v4 = v8;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (item > 2)
  {
    goto LABEL_9;
  }

  v5 = qword_23BEED868[item];
  if (v5 == 128)
  {
    v6 = @"POI_FILTER_ITEM_BEACHES";
    goto LABEL_15;
  }

  if (v5 == 64)
  {
    v6 = @"POI_FILTER_ITEM_TRAILHEADS";
    goto LABEL_15;
  }

  if (v5 != 32)
  {
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  v6 = @"POI_FILTER_ITEM_PARKED_CAR";
LABEL_15:
  v4 = NTKFoghornFaceLocalizedString(v6);
LABEL_10:

  return v4;
}

- (unint64_t)selectionForFilter:(id)filter
{
  filterCopy = filter;
  type = self->_type;
  if (type > 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_msgSend__selectionForFilter_forCategory_(self, v4, filterCopy, qword_23BEED880[type]);
  }

  return v7;
}

- (BOOL)selectedForFilter:(id)filter atIndex:(unint64_t)index
{
  filterCopy = filter;
  v8 = filterCopy;
  type = self->_type;
  if (type == 5)
  {
    if (index > 2)
    {
      v14 = objc_msgSend_includesCategory_(filterCopy, v7, 0);
    }

    else
    {
      v14 = objc_msgSend_includesCategory_(filterCopy, v7, qword_23BEED868[index]);
    }

    v13 = v14;
  }

  else if (type == 1)
  {
    v16 = 0;
    v10 = objc_msgSend__userGuideCategoryAtIndex_categoryName_displayName_(self, v7, index, &v16, 0);
    v11 = v16;
    v13 = objc_msgSend_includesCategory_named_(v8, v12, v10, v11);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)_selectionForFilter:(id)filter forCategory:(unint64_t)category
{
  filterCopy = filter;
  if (objc_msgSend_includesAllOfCategories_(filterCopy, v6, category))
  {
    v8 = objc_msgSend_excludedNamesForCategory_(filterCopy, v7, category);

    v11 = objc_msgSend_count(v8, v9, v10);
    if (v11)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v13 = objc_msgSend_includesAnyOfCategories_(filterCopy, v7, category);

    return v13;
  }
}

- (void)setSelected:(BOOL)selected forFilter:(id)filter
{
  selectedCopy = selected;
  filterCopy = filter;
  v9 = filterCopy;
  type = self->_type;
  if (type <= 5)
  {
    v11 = filterCopy;
    filterCopy = objc_msgSend__setSelected_forFilter_forCategory_(self, filterCopy, selectedCopy, filterCopy, qword_23BEED8B0[type]);
    v9 = v11;
  }

  MEMORY[0x2821F96F8](filterCopy, v9, v7, v8);
}

- (void)setSelected:(BOOL)selected forFilter:(id)filter atIndex:(unint64_t)index
{
  selectedCopy = selected;
  filterCopy = filter;
  type = self->_type;
  if (type == 5)
  {
    if (index > 2)
    {
      objc_msgSend__setSelected_forFilter_forCategory_named_(self, v8, selectedCopy, filterCopy, 0, 0);
    }

    else
    {
      objc_msgSend__setSelected_forFilter_forCategory_named_(self, v8, selectedCopy, filterCopy, qword_23BEED868[index], 0);
    }
  }

  else if (type == 1)
  {
    v14 = 0;
    v11 = objc_msgSend__userGuideCategoryAtIndex_categoryName_displayName_(self, v8, index, &v14, 0);
    v12 = v14;
    objc_msgSend__setSelected_forFilter_forCategory_named_(self, v13, selectedCopy, filterCopy, v11, v12);
  }
}

- (void)_setSelected:(BOOL)selected forFilter:(id)filter forCategory:(unint64_t)category
{
  selectedCopy = selected;
  filterCopy = filter;
  v9 = objc_msgSend_excludedNamesForCategory_(filterCopy, v8, category);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = sub_23BEDBDC8;
  v16 = &unk_278BA1610;
  v17 = filterCopy;
  categoryCopy = category;
  v10 = filterCopy;
  objc_msgSend_enumerateObjectsUsingBlock_(v9, v11, &v13);
  if (selectedCopy)
  {
    objc_msgSend_includeCategories_(v10, v12, category, v13, v14, v15, v16, v17, categoryCopy);
  }

  else
  {
    objc_msgSend_excludeCategories_(v10, v12, category, v13, v14, v15, v16, v17, categoryCopy);
  }
}

- (void)_setSelected:(BOOL)selected forFilter:(id)filter forCategory:(unint64_t)category named:(id)named
{
  selectedCopy = selected;
  filterCopy = filter;
  namedCopy = named;
  if (selectedCopy)
  {
    if ((objc_msgSend_includesCategory_(filterCopy, v10, category) & 1) == 0)
    {
      objc_msgSend_includeCategories_(filterCopy, v12, category);
      if (objc_msgSend_detailsCount(self, v13, v14))
      {
        v15 = 0;
        do
        {
          v16 = objc_msgSend_nameForDetailItem_(self, v12, v15);
          objc_msgSend_excludeCategory_named_(filterCopy, v17, category, v16);

          ++v15;
        }

        while (objc_msgSend_detailsCount(self, v18, v19) > v15);
      }
    }

    objc_msgSend_includeCategory_named_(filterCopy, v12, category, namedCopy);
  }

  else
  {
    objc_msgSend_excludeCategory_named_(filterCopy, v10, category, namedCopy);
    if (objc_msgSend_detailsCount(self, v20, v21))
    {
      if (!objc_msgSend_detailsCount(self, v22, v23))
      {
        goto LABEL_12;
      }

      v25 = 0;
      v26 = 0;
      do
      {
        v26 |= objc_msgSend_selectedForFilter_atIndex_(self, v24, filterCopy, v25++);
      }

      while (objc_msgSend_detailsCount(self, v27, v28) > v25);
      if ((v26 & 1) == 0)
      {
LABEL_12:
        objc_msgSend_excludeCategories_(filterCopy, v24, category);
      }
    }
  }
}

- (NSArray)guides
{
  guides = self->_guides;
  if (!guides)
  {
    v4 = NTKFoghornFaceBundleLogObject(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_23BEB1000, v4, OS_LOG_TYPE_DEFAULT, "Leghorn POI guides is not ready!", v6, 2u);
    }

    guides = self->_guides;
  }

  return guides;
}

- (void)_loadGuides
{
  if (!self->_guides)
  {
    self->_guidesLoading = CFAbsoluteTimeGetCurrent();
    v5 = objc_msgSend_sharedWaypointsDataSource(NTKLeghornCircularDataSource, v3, v4);
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_23BEDC098;
    v7[3] = &unk_278BA1660;
    objc_copyWeak(&v8, &location);
    objc_msgSend_fetchUserGuidesWithCompletion_(v5, v6, v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (NTKCLeghornFaceDetailPOISectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
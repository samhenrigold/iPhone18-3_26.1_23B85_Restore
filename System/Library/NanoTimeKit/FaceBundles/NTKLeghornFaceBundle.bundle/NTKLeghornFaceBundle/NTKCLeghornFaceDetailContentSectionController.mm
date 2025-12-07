@interface NTKCLeghornFaceDetailContentSectionController
- (BOOL)collectionChanged:(id)changed withSelectedOptions:(id)options;
- (NTKCLeghornFaceDetailContentSectionController)initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery editOptionCollection:(id)collection faceView:(id)view;
- (UIViewController)parentViewController;
- (id)_allSections;
- (id)_currentEditOption;
- (id)_currentFilter;
- (id)_sectionForRow:(int64_t)row;
- (void)_createRows;
- (void)_filterUpdated;
- (void)_refreshRows;
- (void)didSelectRow:(int64_t)row;
- (void)faceDidChange;
- (void)poiSectionDetailsLoaded:(BOOL)loaded forSection:(id)section;
- (void)setSelectedOptions:(id)options;
@end

@implementation NTKCLeghornFaceDetailContentSectionController

- (NTKCLeghornFaceDetailContentSectionController)initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery editOptionCollection:(id)collection faceView:(id)view
{
  v20.receiver = self;
  v20.super_class = NTKCLeghornFaceDetailContentSectionController;
  v7 = [(NTKCFaceDetailEditOptionSectionController *)&v20 _initWithTableViewController:controller face:face inGallery:gallery editOptionCollection:collection faceView:view];
  v10 = v7;
  if (v7)
  {
    v11 = objc_msgSend__allSections(v7, v8, v9);
    sections = v10->_sections;
    v10->_sections = v11;

    v15 = objc_msgSend__currentFilter(v10, v13, v14);
    filter = v10->_filter;
    v10->_filter = v15;

    objc_msgSend__createRows(v10, v17, v18);
  }

  return v10;
}

- (id)_allSections
{
  v17[6] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_sectionWithType_delegate_(NTKCLeghornFaceDetailPOISection, a2, 0, self);
  v5 = objc_msgSend_sectionWithType_delegate_(NTKCLeghornFaceDetailPOISection, v4, 1, self);
  v7 = objc_msgSend_sectionWithType_delegate_(NTKCLeghornFaceDetailPOISection, v6, 2, self);
  v9 = objc_msgSend_sectionWithType_delegate_(NTKCLeghornFaceDetailPOISection, v8, 3, self);
  v11 = objc_msgSend_sectionWithType_delegate_(NTKCLeghornFaceDetailPOISection, v10, 4, self);
  v13 = objc_msgSend_sectionWithType_delegate_(NTKCLeghornFaceDetailPOISection, v12, 5, self);
  v17[0] = v3;
  v17[1] = v5;
  v17[2] = v7;
  v17[3] = v9;
  v17[4] = v11;
  v17[5] = v13;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v17, 6);

  return v15;
}

- (void)_createRows
{
  v4 = objc_msgSend__currentFilter(self, a2, v2);
  v7 = objc_msgSend__newSectionHeader(self, v5, v6);
  objc_msgSend_setHeaderView_(self, v8, v7);

  v11 = objc_msgSend_collection(self, v9, v10);
  v14 = objc_msgSend_localizedName(v11, v12, v13);
  v17 = objc_msgSend_headerView(self, v15, v16);
  objc_msgSend_setTitle_(v17, v18, v14);

  v19 = MEMORY[0x277CBEB18];
  v22 = objc_msgSend_count(self->_sections, v20, v21);
  v24 = objc_msgSend_arrayWithCapacity_(v19, v23, v22 + 1);
  sections = self->_sections;
  v34 = MEMORY[0x277D85DD0];
  v35 = 3221225472;
  v36 = sub_23BEE007C;
  v37 = &unk_278BA1BF0;
  v38 = v24;
  v39 = v4;
  v26 = v4;
  v27 = v24;
  objc_msgSend_enumerateObjectsUsingBlock_(sections, v28, &v34);
  v29 = objc_alloc_init(MEMORY[0x277D2BF80]);
  v30 = NTKFoghornFaceLocalizedString(@"LEGHORN_POI_FILTER_FOOTER");
  objc_msgSend_setText_(v29, v31, v30, v34, v35, v36, v37);

  objc_msgSend_addObject_(v27, v32, v29);
  objc_msgSend_setRows_(self, v33, v27);
}

- (void)_refreshRows
{
  v4 = MEMORY[0x277CBEB18];
  v5 = objc_msgSend_count(self->_sections, a2, v2);
  v36 = objc_msgSend_arrayWithCapacity_(v4, v6, v5);
  if (objc_msgSend_count(self->_sections, v7, v8))
  {
    v11 = 0;
    do
    {
      v12 = objc_msgSend_rows(self, v9, v10);
      v14 = objc_msgSend_objectAtIndexedSubscript_(v12, v13, v11);

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v14;
        v20 = objc_msgSend__currentFilter(self, v18, v19);
        objc_msgSend_setFilter_(v17, v21, v20);
      }

      v22 = MEMORY[0x277CCAA70];
      v23 = objc_msgSend_section(self, v15, v16);
      v25 = objc_msgSend_indexPathForRow_inSection_(v22, v24, v11, v23);
      objc_msgSend_setObject_atIndexedSubscript_(v36, v26, v25, v11);

      ++v11;
    }

    while (objc_msgSend_count(self->_sections, v27, v28) > v11);
  }

  v29 = objc_msgSend_tableView(self, v9, v10);
  objc_msgSend_reloadRowsAtIndexPaths_withRowAnimation_(v29, v30, v36, 5);

  WeakRetained = objc_loadWeakRetained(&self->_activePicker);
  if (WeakRetained)
  {
    v34 = objc_msgSend__currentFilter(self, v31, v32);
    objc_msgSend_setFilter_(WeakRetained, v35, v34);
  }
}

- (id)_currentEditOption
{
  v3 = objc_msgSend_selectedOptions(self, a2, v2);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, &unk_284EB78B8);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = v5;
  }

  else
  {
    v9 = NTKFoghornFaceBundleLogObject(isKindOfClass, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE73BC(v5, v9);
    }

    v8 = 0;
  }

  return v8;
}

- (id)_currentFilter
{
  filter = self->_filter;
  if (!filter)
  {
    v5 = objc_msgSend__currentEditOption(self, a2, v2);
    v8 = objc_msgSend_poiFilter(v5, v6, v7);
    v11 = objc_msgSend_copy(v8, v9, v10);
    v12 = self->_filter;
    self->_filter = v11;

    filter = self->_filter;
  }

  return filter;
}

- (BOOL)collectionChanged:(id)changed withSelectedOptions:(id)options
{
  optionsCopy = options;
  objc_msgSend_setCollection_(self, v7, changed);
  objc_msgSend_setSelectedOptions_(self, v8, optionsCopy);

  return 1;
}

- (id)_sectionForRow:(int64_t)row
{
  if (row < 0)
  {
    v7 = 0;
  }

  else
  {
    if (objc_msgSend_count(self->_sections, a2, row) <= row)
    {
      v7 = 0;
    }

    else
    {
      v7 = objc_msgSend_objectAtIndexedSubscript_(self->_sections, v6, row);
    }
  }

  return v7;
}

- (void)didSelectRow:(int64_t)row
{
  v35 = objc_msgSend__sectionForRow_(self, a2, row);
  if (objc_msgSend_detailsCount(v35, v5, v6))
  {
    v9 = [NTKCLeghornFaceDetailPOIPickerViewController alloc];
    v12 = objc_msgSend__currentFilter(self, v10, v11);
    v14 = objc_msgSend_initWithPOISection_filter_delegate_(v9, v13, v35, v12, self);

    objc_storeWeak(&self->_activePicker, v14);
    v17 = objc_msgSend_tableViewController(self, v15, v16);
    v20 = objc_msgSend_navigationController(v17, v18, v19);

    if (v20)
    {
      v23 = objc_msgSend_navigationController(v17, v21, v22);
      objc_msgSend_pushViewController_animated_(v23, v24, v14, 1);
    }
  }

  else
  {
    v25 = objc_msgSend_rows(self, v7, v8);
    v14 = objc_msgSend_objectAtIndexedSubscript_(v25, v26, row);

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v14 = v14;
    v17 = objc_msgSend_filter(v14, v27, v28);
    v30 = objc_msgSend_selectionForFilter_(v35, v29, v17) == 0;
    objc_msgSend_setSelected_forFilter_(v35, v31, v30, v17);
    objc_msgSend_setFilter_(v14, v32, v17);

    objc_msgSend__filterUpdated(self, v33, v34);
  }

LABEL_7:
}

- (void)faceDidChange
{
  v2.receiver = self;
  v2.super_class = NTKCLeghornFaceDetailContentSectionController;
  [(NTKCFaceDetailEditOptionSectionController *)&v2 faceDidChange];
}

- (void)_filterUpdated
{
  v16 = objc_msgSend__currentEditOption(self, a2, v2);
  v6 = objc_msgSend_copy(self->_filter, v4, v5);
  v9 = objc_msgSend_device(v16, v7, v8);
  v11 = objc_msgSend_optionWithPOIFilter_forDevice_(NTKLeghornPOIFilterEditOption, v10, v6, v9);

  v14 = objc_msgSend_delegate(self, v12, v13);
  objc_msgSend_editOptionSection_didModifyEditOption_transiently_canceled_(v14, v15, self, v11, 0, 0);
}

- (void)setSelectedOptions:(id)options
{
  v7.receiver = self;
  v7.super_class = NTKCLeghornFaceDetailContentSectionController;
  [(NTKCFaceDetailEditOptionSectionController *)&v7 setSelectedOptions:options];
  filter = self->_filter;
  self->_filter = 0;

  objc_msgSend__refreshRows(self, v5, v6);
}

- (void)poiSectionDetailsLoaded:(BOOL)loaded forSection:(id)section
{
  sectionCopy = section;
  sections = self->_sections;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_23BEE0894;
  v9[3] = &unk_278BA1BF0;
  v10 = sectionCopy;
  selfCopy = self;
  v7 = sectionCopy;
  objc_msgSend_enumerateObjectsUsingBlock_(sections, v8, v9);
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end
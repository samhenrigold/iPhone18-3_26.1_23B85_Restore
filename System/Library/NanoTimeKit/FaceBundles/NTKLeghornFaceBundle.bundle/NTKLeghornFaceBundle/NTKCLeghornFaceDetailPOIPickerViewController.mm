@interface NTKCLeghornFaceDetailPOIPickerViewController
- (NTKCLeghornFaceDetailPOIPickerDelegate)delegate;
- (NTKCLeghornFaceDetailPOIPickerViewController)initWithPOISection:(id)section filter:(id)filter delegate:(id)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_filterChanged;
- (void)_setupCells;
- (void)setFilter:(id)filter;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation NTKCLeghornFaceDetailPOIPickerViewController

- (NTKCLeghornFaceDetailPOIPickerViewController)initWithPOISection:(id)section filter:(id)filter delegate:(id)delegate
{
  sectionCopy = section;
  filterCopy = filter;
  delegateCopy = delegate;
  v28.receiver = self;
  v28.super_class = NTKCLeghornFaceDetailPOIPickerViewController;
  v12 = [(NTKCLeghornFaceDetailPOIPickerViewController *)&v28 initWithStyle:2];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_section, section);
    objc_storeStrong(&v13->_filter, filter);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14 = MEMORY[0x277CBEB18];
    v17 = objc_msgSend_detailsCount(sectionCopy, v15, v16);
    v19 = objc_msgSend_arrayWithCapacity_(v14, v18, v17);
    categoryCells = v13->_categoryCells;
    v13->_categoryCells = v19;

    objc_msgSend__setupCells(v13, v21, v22);
    v25 = objc_msgSend_name(v13->_section, v23, v24);
    objc_msgSend_setTitle_(v13, v26, v25);
  }

  return v13;
}

- (void)_setupCells
{
  v3 = [NTKCLeghornFaceDetailEditOptionCell alloc];
  v5 = objc_msgSend_initWithSection_category_name_all_filter_(v3, v4, self->_section, 0, 0, 1, self->_filter);
  showAllCell = self->_showAllCell;
  self->_showAllCell = v5;

  if (objc_msgSend_detailsCount(self->_section, v7, v8))
  {
    v10 = 0;
    do
    {
      v11 = objc_msgSend_categoryForDetailItemAtIndex_(self->_section, v9, v10);
      v13 = objc_msgSend_nameForDetailItem_(self->_section, v12, v10);
      categoryCells = self->_categoryCells;
      v15 = [NTKCLeghornFaceDetailEditOptionCell alloc];
      v17 = objc_msgSend_initWithSection_category_name_all_filter_(v15, v16, self->_section, v11, v13, 0, self->_filter);
      objc_msgSend_addObject_(categoryCells, v18, v17);

      ++v10;
    }

    while (objc_msgSend_detailsCount(self->_section, v19, v20) > v10);
  }
}

- (void)setFilter:(id)filter
{
  objc_storeStrong(&self->_filter, filter);
  filterCopy = filter;
  objc_msgSend_setFilter_(self->_showAllCell, v6, self->_filter);
  categoryCells = self->_categoryCells;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_23BEBAF2C;
  v9[3] = &unk_278BA0EC0;
  v9[4] = self;
  objc_msgSend_enumerateObjectsUsingBlock_(categoryCells, v8, v9);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (!section)
  {
    return 1;
  }

  if (section == 1)
  {
    return objc_msgSend_detailsCount(self->_section, a2, view);
  }

  return 0;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v8 = objc_msgSend_section(pathCopy, v6, v7);
  if (v8 == 1)
  {
    v12 = objc_msgSend_row(pathCopy, v9, v10);
    if ((v12 & 0x8000000000000000) == 0)
    {
      v15 = v12;
      if (v12 < objc_msgSend_count(self->_categoryCells, v13, v14))
      {
        v11 = objc_msgSend_objectAtIndexedSubscript_(self->_categoryCells, v16, v15);
        goto LABEL_8;
      }
    }
  }

  else if (!v8 && !objc_msgSend_row(pathCopy, v9, v10))
  {
    v11 = self->_showAllCell;
LABEL_8:
    v17 = v11;
    goto LABEL_10;
  }

  v17 = 0;
LABEL_10:

  return v17;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  objc_msgSend_deselectRowAtIndexPath_animated_(view, v6, pathCopy, 1);
  v9 = objc_msgSend_section(pathCopy, v7, v8);
  if (v9 != 1)
  {
    if (v9)
    {
      goto LABEL_9;
    }

    p_filter = &self->_filter;
    v13 = objc_msgSend_selectionForFilter_(self->_section, v10, self->_filter);
    if (v13 <= 2)
    {
      objc_msgSend_setSelected_forFilter_(self->_section, v14, (3u >> (v13 & 7)) & 1, *p_filter);
    }

    goto LABEL_8;
  }

  v15 = objc_msgSend_row(pathCopy, v10, v11);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v18 = v15;
    if (v15 < objc_msgSend_detailsCount(self->_section, v16, v17))
    {
      p_filter = &self->_filter;
      v20 = objc_msgSend_selectedForFilter_atIndex_(self->_section, v19, self->_filter, v18);
      objc_msgSend_setSelected_forFilter_atIndex_(self->_section, v21, v20 ^ 1u, self->_filter, v18);
LABEL_8:
      objc_msgSend_setFilter_(self, v14, *p_filter);
      objc_msgSend__filterChanged(self, v22, v23);
    }
  }

LABEL_9:
}

- (void)_filterChanged
{
  v5 = objc_msgSend_delegate(self, a2, v2);
  objc_msgSend_poiFilterViewControllerDidChangeFilter_(v5, v4, self);
}

- (NTKCLeghornFaceDetailPOIPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
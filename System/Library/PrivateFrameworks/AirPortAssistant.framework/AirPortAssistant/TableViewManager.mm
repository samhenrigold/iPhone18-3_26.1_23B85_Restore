@interface TableViewManager
+ (id)boldSystemLabelFont;
+ (id)smallSystemLabelFont;
+ (id)systemLabelFont;
- (BOOL)becomeFirstResponderAtIndexPath:(id)path;
- (BOOL)checkIfSectionDataSameInTable:(id)table;
- (BOOL)isCellAtIndexPath:(id)path identicalToNewRow:(id)row;
- (BOOL)setNewRow:(id)row itemAttribute:(id)attribute forItemOfType:(id)type atItemTypeIndex:(unint64_t)index toValue:(id)value;
- (BOOL)tableView:(id)view canPerformAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldShowMenuForRowAtIndexPath:(id)path;
- (BOOL)tagOfCellAtIndexPath:(id)path tag:(int64_t *)tag;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldHasVerifierAtIndexPath:(id)path;
- (BOOL)textFieldIsSecureAndUnchanged:(id)unchanged;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (BOOL)textFieldShouldClear:(id)clear;
- (BOOL)textFieldShouldReturn:(id)return;
- (BOOL)textFieldVerifiedAtIndexPath:(id)path;
- (BOOL)updateRowAtIndexPath:(id)path withNewRowInfo:(id)info;
- (BOOL)updateSectionsIfMatchingExisting:(id)existing;
- (BOOL)verifyStr1:(id)str1 forTag1:(unint64_t)tag1 matchesStr2:(id)str2 forTag2:(unint64_t)tag2;
- (TableViewManager)init;
- (TableViewManagerDelegate)delegate;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (double)totalTableHeight;
- (double)totalTableSectionsHeight;
- (id)activityView:(id)view;
- (id)buttonView:(id)view;
- (id)cellInfoOfSelectedRowInMenuSection:(unint64_t)section;
- (id)commonAddOptionalBasicImage:(id)image withNeighborItem:(id)item toCellItems:(id)items;
- (id)commonAddOptionalStaticText:(id)text withNeighborItem:(id)item toCellItems:(id)items;
- (id)createRowStyleActivityStatus:(BOOL)status text1:(id)text1 grayedText1:(BOOL)grayedText1 text2:(id)text2 grayedText2:(BOOL)grayedText2 withTag:(unint64_t)tag;
- (id)createRowStyleBasicButtons:(id)buttons title2:(id)title2 withTag:(unint64_t)tag;
- (id)createRowStyleBasicEditableWithImage:(id)image labelText:(id)text currentValue:(id)value placeholderText:(id)placeholderText isSecure:(BOOL)secure keyboardType:(int64_t)type withTag:(unint64_t)tag;
- (id)createRowStyleBasicOnOffWithImage:(id)image labelText:(id)text isOn:(BOOL)on withTag:(unint64_t)tag;
- (id)createRowStyleBasicWholeCellButton:(id)button withTag:(unint64_t)tag;
- (id)createRowStyleBasicWithImage:(id)image text1:(id)text1 text2:(id)text2 withTag:(unint64_t)tag;
- (id)createRowStyleBasicWithText:(id)text centerImage:(id)image text2:(id)text2 withTag:(unint64_t)tag;
- (id)createRowStyleBasicWithUnreadBubble:(unint64_t)bubble text1:(id)text1 text2:(id)text2 withTag:(unint64_t)tag;
- (id)createRowStyleDatePicker:(id)picker minimumDate:(id)date maximumDate:(id)maximumDate withMode:(int64_t)mode withTag:(unint64_t)tag;
- (id)createRowStyleProgressViewWithCancelAndStatus:(id)status statusText:(id)text altText:(id)altText withTag:(unint64_t)tag;
- (id)createRowStyleSegmentedControlWithItems:(id)items selectedSegmentIndex:(id)index enabled:(BOOL)enabled withTag:(unint64_t)tag;
- (id)createRowStyleSubtitleWitImage:(id)image mainText:(id)text subtitleText:(id)subtitleText withTag:(unint64_t)tag;
- (id)createRowStyleSubtitleWithRightImage:(id)image subtitleText:(id)text rightImage:(id)rightImage withTag:(unint64_t)tag;
- (id)createRowStyleSubtitleWithRightText:(id)text subtitleText:(id)subtitleText rightText:(id)rightText withTag:(unint64_t)tag;
- (id)createRowStyleTitledParagraph:(id)paragraph titleImage:(id)image bodyText:(id)text withTag:(unint64_t)tag;
- (id)createRowStyleTitledParagraphWithLeftImage:(id)image title:(id)title bodyText:(id)text withTag:(unint64_t)tag;
- (id)createRowStyleTitledStaticMultiline:(id)multiline titleImage:(id)image bodyText:(id)text withTag:(unint64_t)tag;
- (id)datePicker:(id)picker;
- (id)editTextView:(id)view;
- (id)findFirstResponderInTableView:(id)view foundParentCell:(id *)cell;
- (id)findFirstResponderInTableView:(id)view fromSection:(unint64_t)section fromRow:(unint64_t)row foundParentCell:(id *)cell;
- (id)findFirstResponderInView:(id)view;
- (id)findNextResponderInTableView:(id)view foundParentCell:(id *)cell;
- (id)getCellDictForCellAtIndexPath:(id)path;
- (id)getDescriptorObjectForKey:(id)key inSection:(int64_t)section;
- (id)getInfoForItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCell:(id)cell;
- (id)getRepresentedObjectForCellAtIndexPath:(id)path;
- (id)getSectionDictForSection:(int64_t)section;
- (id)getValueForItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCell:(id)cell;
- (id)getValueForItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCellAtIndexPath:(id)path;
- (id)getValueForItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCellWithTag:(int64_t)tag;
- (id)imageView:(id)view;
- (id)indexPathOfCellWithTag:(int64_t)tag;
- (id)indexPathOfFirstCellWithUnverifiedVerifier;
- (id)labelView:(id)view;
- (id)multilineLabelView:(id)view;
- (id)progressView:(id)view;
- (id)segmentedControlView:(id)view;
- (id)switchView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path layoutMode:(BOOL)mode;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (id)unreadBubbleCount:(id)count;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)findAndSetItemObject:(id)object toValue:(id)value inCellWithInternalRowSectionTagValue:(unint64_t)tagValue;
- (unint64_t)indexOfSectionWithIdentifier:(id)identifier;
- (unint64_t)indexOfSelectedRowInMenuSection:(unint64_t)section;
- (unint64_t)tagOfSelectedRowInMenuSection:(unint64_t)section;
- (void)addSectionInfo:(id)info animated:(BOOL)animated;
- (void)appendNewRow:(id)row forSection:(unint64_t)section;
- (void)awakeFromNib;
- (void)bulkUpdateBegin;
- (void)bulkUpdateEnd;
- (void)buttonAction:(id)action;
- (void)cleanTableViewForReuse;
- (void)dealloc;
- (void)deferedTouchInCellAtIndexPath:(id)path;
- (void)deleteAllRowsInSection:(unint64_t)section;
- (void)deleteAllRowsInSectionCore:(unint64_t)core;
- (void)deleteRowInSection:(unint64_t)section withTag:(int64_t)tag;
- (void)deleteRowsAtIndexPaths:(id)paths withRowAnimation:(int64_t)animation;
- (void)deleteSection:(unint64_t)section;
- (void)deleteSectionWithIdentifier:(id)identifier animated:(BOOL)animated;
- (void)deleteSections:(id)sections withRowAnimation:(int64_t)animation;
- (void)endEditing;
- (void)informOfNewCellLeftEdge:(double)edge andWidth:(double)width;
- (void)initializeTableViewManagerCommon;
- (void)insertNewRows:(id)rows atIndexPaths:(id)paths withRowAnimation:(int64_t)animation;
- (void)insertSectionInfo:(id)info atIndex:(unint64_t)index withRowAnimation:(int64_t)animation;
- (void)makeFirstEditableCellCurrentResponder;
- (void)recordInitialSelectedMenuItemsForNewSection:(int64_t)section;
- (void)reloadSection:(unint64_t)section;
- (void)segmentedControlValueChanged:(id)changed;
- (void)selectMenuCellAtIndexPath:(id)path;
- (void)selectedDateChanged:(id)changed;
- (void)setActivityViewValue:(id)value usingItemInfo:(id)info;
- (void)setButtonViewValue:(id)value usingItemInfo:(id)info;
- (void)setCellRowInfoItem:(id)item atIndex:(unint64_t)index forKey:(id)key toValue:(id)value;
- (void)setDatePickerValue:(id)value usingItemInfo:(id)info;
- (void)setDescriptorObject:(id)object forKey:(id)key inSection:(int64_t)section;
- (void)setEditTextViewValue:(id)value usingItemInfo:(id)info;
- (void)setImageViewValue:(id)value usingItemInfo:(id)info;
- (void)setLabelViewValue:(id)value usingItemInfo:(id)info;
- (void)setManagedTableView:(id)view;
- (void)setMenuCell:(id)cell visualStateToSelected:(BOOL)selected atIndexPath:(id)path;
- (void)setMinValue:(id)value andMaxValue:(id)maxValue forItem:(id)item;
- (void)setMinValue:(id)value andMaxValue:(id)maxValue forItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCellWithTag:(int64_t)tag;
- (void)setMultilineLabelViewValue:(id)value usingItemInfo:(id)info;
- (void)setNewRow:(id)row accessoryType:(int64_t)type;
- (void)setNewRow:(id)row editingAccessoryType:(int64_t)type;
- (void)setNewRow:(id)row editingStyle:(int64_t)style;
- (void)setNewRow:(id)row selectableCell:(BOOL)cell;
- (void)setNewRow:(id)row tag:(unint64_t)tag;
- (void)setNewRow:(id)row textFieldViewMode:(int64_t)mode;
- (void)setNewRow:(id)row verifierAccessoryType:(int)type;
- (void)setProgressViewValue:(id)value usingItemInfo:(id)info;
- (void)setRepresentedObject:(id)object forCellAtIndexPath:(id)path;
- (void)setSectionValue:(id)value forKey:(id)key inSection:(unint64_t)section;
- (void)setSwitchViewValue:(id)value usingItemInfo:(id)info;
- (void)setUnreadBubbleCountValue:(id)value usingItemInfo:(id)info;
- (void)setValue:(id)value forItem:(id)item;
- (void)setValue:(id)value forItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCellAtIndexPath:(id)path;
- (void)setValue:(id)value forItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCellWithTag:(int64_t)tag;
- (void)setVerifierAccessoryView:(int)view forCell:(id)cell;
- (void)setVerifierCellAccessoryType:(int)type forCellsAtIndexPaths:(id)paths;
- (void)switchAction:(id)action;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view performAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)uiTextFieldDidChange:(id)change;
- (void)updateCellAtIndexPath:(id)path withNewRowInfo:(id)info;
- (void)updateFooter:(id)footer forSectionWithIdentifier:(id)identifier;
- (void)updateFooter:(id)footer inSection:(unint64_t)section;
- (void)updateHeader:(id)header forSectionWithIdentifier:(id)identifier;
- (void)updateHeader:(id)header inSection:(unint64_t)section;
- (void)updateSectionDataInIdenticalTable:(id)table;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TableViewManager

- (void)informOfNewCellLeftEdge:(double)edge andWidth:(double)width
{
  v38 = *MEMORY[0x277D85DE8];
  self->_cellLeftEdgeOrigin = edge;
  self->_cellContentWidth = width;
  v6 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray", v4);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v6;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v32, v37, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = objc_msgSend_objectForKey_(*(*(&v32 + 1) + 8 * i), v9, @"headerCache", v10);
        if (v14)
        {
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v16 = objc_msgSend_subviews(v14, v9, v15, v10);
          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v28, v36, 16);
          if (v18)
          {
            v20 = v18;
            v21 = *v29;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v29 != v21)
                {
                  objc_enumerationMutation(v16);
                }

                v23 = *(*(&v28 + 1) + 8 * j);
                objc_msgSend_frame(v23, v9, v19, v10);
                objc_msgSend_setFrame_(v23, v24, v25, v26, self->_cellLeftEdgeOrigin + 10.0);
              }

              v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v9, &v28, v36, 16);
            }

            while (v20);
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v32, v37, 16);
    }

    while (v11);
  }
}

- (void)endEditing
{
  objc_msgSend_resignFirstResponder(self->_currentFirstResponder, a2, v2, v3);
  self->_currentFirstResponder = 0;

  self->_currentFirstResponderCellPath = 0;
}

- (void)initializeTableViewManagerCommon
{
  self->_detailTextColor = objc_msgSend__labelColor(MEMORY[0x277D75348], a2, v2, v3);
  self->_selectedTextColor = objc_msgSend__labelColor(MEMORY[0x277D75348], v5, v6, v7);
  self->_editTextColor = objc_msgSend_systemBlueColor(MEMORY[0x277D75348], v8, v9, v10);
  self->_subtitleColor = objc_msgSend__secondaryLabelColor(MEMORY[0x277D75348], v11, v12, v13);
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  self->_tableDescriptorDict = v14;
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);

  objc_msgSend_setObject_forKey_(v14, v15, v16, @"tableSectionArray");
}

- (void)awakeFromNib
{
  objc_msgSend_initializeTableViewManagerCommon(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = TableViewManager;
  [(TableViewManager *)&v5 awakeFromNib];
}

- (TableViewManager)init
{
  v8.receiver = self;
  v8.super_class = TableViewManager;
  v2 = [(TableViewManager *)&v8 init];
  v6 = v2;
  if (v2)
  {
    objc_msgSend_initializeTableViewManagerCommon(v2, v3, v4, v5);
  }

  return v6;
}

- (void)dealloc
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3);
  objc_msgSend_removeObserver_(v5, v6, self, v7);
  objc_msgSend_setManagedTableView_(self, v8, 0, v9);

  v10.receiver = self;
  v10.super_class = TableViewManager;
  [(TableViewManager *)&v10 dealloc];
}

- (void)setManagedTableView:(id)view
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager setManagedTableView:]", 800, "%@\n", view);
  }

  objc_msgSend_setDelegate_(view, a2, self, v3);
  objc_msgSend_setDataSource_(view, v6, self, v7);
  managedTableView = self->_managedTableView;
  if (managedTableView != view)
  {
    objc_msgSend_setDataSource_(managedTableView, v8, 0, v9);
    objc_msgSend_setDelegate_(self->_managedTableView, v11, 0, v12);

    viewCopy = view;
    self->_managedTableView = view;
  }
}

- (TableViewManagerDelegate)delegate
{
  if (*(self + 3))
  {
    return *(self + 3);
  }

  return self;
}

- (void)viewWillAppear:(BOOL)appear
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, appear, v3);
  v7 = *MEMORY[0x277D770B0];

  objc_msgSend_addObserver_selector_name_object_(v5, v6, self, sel_uiTextFieldDidChange_, v7, 0);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, disappear, v3);
  v7 = *MEMORY[0x277D770B0];

  objc_msgSend_removeObserver_name_object_(v5, v6, self, v7, 0);
}

- (void)insertNewRows:(id)rows atIndexPaths:(id)paths withRowAnimation:(int64_t)animation
{
  v62 = *MEMORY[0x277D85DE8];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(paths, a2, &v57, v61, 16);
  if (v8)
  {
    v12 = v8;
    v13 = 0;
    v14 = *v58;
    animationCopy = animation;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v58 != v14)
      {
        objc_enumerationMutation(paths);
      }

      v16 = *(*(&v57 + 1) + 8 * v15);
      v17 = objc_msgSend_row(v16, v9, v10, v11);
      v23 = objc_msgSend_section(v16, v18, v19, v20);
      if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C88, "[TableViewManager insertNewRows:atIndexPaths:withRowAnimation:]", 800, "section %d  row %d\n", v23, v17);
      }

      v24 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, v21, @"tableSectionArray", v22);
      v28 = objc_msgSend_count(v24, v25, v26, v27);
      if (v23 > v28)
      {
        break;
      }

      if (v23 >= v28)
      {
        v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v40 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEB38], v39, v37, @"sectionRows");
        objc_msgSend_addObject_(v24, v41, v40, v42);
        managedTableView = self->_managedTableView;
        v46 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v44, v23, v45);
        objc_msgSend_insertSections_withRowAnimation_(managedTableView, v47, v46, 3);
      }

      else
      {
        v31 = objc_msgSend_objectAtIndex_(v24, v29, v23, v30);
        v37 = objc_msgSend_objectForKey_(v31, v32, @"sectionRows", v33);
        if (!v37)
        {
          v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
          objc_msgSend_setObject_forKey_(v31, v38, v37, @"sectionRows");
        }
      }

      if (v17 > objc_msgSend_count(v37, v34, v35, v36) || v13 >= objc_msgSend_count(rows, v48, v49, v50))
      {
        break;
      }

      v53 = objc_msgSend_objectAtIndex_(rows, v51, v13, v52);
      objc_msgSend_insertObject_atIndex_(v37, v54, v53, v17);
      ++v13;
      if (v12 == ++v15)
      {
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(paths, v9, &v57, v61, 16);
        animation = animationCopy;
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    objc_msgSend_insertRowsAtIndexPaths_withRowAnimation_(self->_managedTableView, v9, paths, animation);
  }
}

- (void)appendNewRow:(id)row forSection:(unint64_t)section
{
  v7 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray", section);
  v11 = objc_msgSend_count(v7, v8, v9, v10);
  if (v11 >= section)
  {
    if (v11 > section)
    {
      v14 = objc_msgSend_objectAtIndex_(v7, v12, section, v13);
      v17 = objc_msgSend_objectForKey_(v14, v15, @"sectionRows", v16);
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v19 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEB38], v18, v17, @"sectionRows");
      objc_msgSend_addObject_(v7, v20, v19, v21);
      managedTableView = self->_managedTableView;
      v25 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v23, section, v24);
      objc_msgSend_insertSections_withRowAnimation_(managedTableView, v26, v25, 100);
    }

    if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C88, "[TableViewManager appendNewRow:forSection:]", 800, "appending row to section %d\n", section);
    }

    v30 = MEMORY[0x277CCAA70];
    v31 = objc_msgSend_count(v17, v27, v28, v29);
    v33 = objc_msgSend_indexPathForRow_inSection_(v30, v32, v31, section);
    objc_msgSend_addObject_(v17, v34, row, v35);
    v36 = self->_managedTableView;
    v40 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v37, v33, v38);

    objc_msgSend_insertRowsAtIndexPaths_withRowAnimation_(v36, v39, v40, 100);
  }
}

- (void)updateCellAtIndexPath:(id)path withNewRowInfo:(id)info
{
  infoCopy = info;
  if (dword_27E382DC8 <= 800 && (dword_27E382DC8 != -1 || sub_23EB74AC8(&dword_27E382DC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382DC8, "[TableViewManager updateCellAtIndexPath:withNewRowInfo:]", 800, "\n", infoCopy);
  }

  CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, a2, path, info, infoCopy);
  if (CellDictForCellAtIndexPath)
  {
    v7 = CellDictForCellAtIndexPath;
    v8 = objc_msgSend_objectForKey_(v38, v5, @"representedObject", v6);
    if (v8)
    {
      objc_msgSend_setObject_forKey_(v7, v9, v8, @"representedObject");
    }

    v41 = objc_msgSend_objectForKey_(v38, v9, @"items", v10);
    v14 = objc_msgSend_count(v41, v11, v12, v13);
    if (v14)
    {
      v17 = v14;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      while (1)
      {
        v22 = objc_msgSend_objectAtIndex_(v41, v15, v21, v16);
        v25 = objc_msgSend_objectForKey_(v22, v23, @"itemType", v24);
        if (objc_msgSend_isEqualToString_(v25, v26, @"editTextView", v27))
        {
          v28 = objc_msgSend_objectForKey_(v38, v15, @"tag", v16);
          if (objc_msgSend_integerValue(v28, v29, v30, v31) != 1987203160)
          {
            v33 = v20 + 1;
            v32 = v19;
            v34 = v18;
            goto LABEL_17;
          }
        }

        if (objc_msgSend_isEqualToString_(v25, v15, @"labelView", v16))
        {
          break;
        }

        if (objc_msgSend_isEqualToString_(v25, v15, @"multilineLabelView", v16))
        {
          v34 = v18 + 1;
          v33 = v20;
          v32 = v19;
          v20 = v18;
          goto LABEL_17;
        }

LABEL_18:
        if (v17 == ++v21)
        {
          return;
        }
      }

      v32 = v19 + 1;
      v33 = v20;
      v34 = v18;
      v20 = v19;
LABEL_17:
      v35 = objc_msgSend_objectForKey_(v22, v15, @"startValue", v16);
      objc_msgSend_setValue_forItemOfType_atItemTypeIndex_inCellAtIndexPath_(self, v36, v35, v25, v20, path);
      v18 = v34;
      v19 = v32;
      v20 = v33;
      goto LABEL_18;
    }
  }
}

- (BOOL)isCellAtIndexPath:(id)path identicalToNewRow:(id)row
{
  if (dword_27E382DC8 <= 800 && (dword_27E382DC8 != -1 || sub_23EB74AC8(&dword_27E382DC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382DC8, "[TableViewManager isCellAtIndexPath:identicalToNewRow:]", 800, "\n");
  }

  CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, a2, path, row);
  if (CellDictForCellAtIndexPath)
  {
    v10 = CellDictForCellAtIndexPath;
    v11 = objc_msgSend_objectForKey_(row, v8, @"representedObject", v9);
    v17 = objc_msgSend_objectForKey_(v10, v12, @"representedObject", v13);
    LOBYTE(CellDictForCellAtIndexPath) = 0;
    if (v11)
    {
      if (v17)
      {
        CellDictForCellAtIndexPath = objc_msgSend_delegate(self, v14, v15, v16);
        if (CellDictForCellAtIndexPath)
        {
          objc_msgSend_delegate(self, v18, v19, v20);
          if (objc_opt_respondsToSelector())
          {
            v24 = objc_msgSend_delegate(self, v21, v22, v23);
            LODWORD(CellDictForCellAtIndexPath) = objc_msgSend_isRepresentedObject_identicalToRepresentedObject_(v24, v25, v11, v17);
            if (CellDictForCellAtIndexPath)
            {
              v28 = objc_msgSend_objectForKey_(row, v26, @"items", v27);
              v31 = objc_msgSend_objectForKey_(v10, v29, @"items", v30);
              v35 = objc_msgSend_count(v28, v32, v33, v34);
              v41 = objc_msgSend_count(v31, v36, v37, v38);
              LOBYTE(CellDictForCellAtIndexPath) = 1;
              if (v35 == v41)
              {
                v42 = v35 - 1;
                if (v35 >= 1)
                {
                  v43 = 0;
                  do
                  {
                    v44 = objc_msgSend_objectAtIndex_(v28, v39, v43, v40);
                    v47 = objc_msgSend_objectForKey_(v44, v45, @"itemType", v46);
                    v50 = objc_msgSend_objectAtIndex_(v31, v48, v43, v49);
                    v53 = objc_msgSend_objectForKey_(v50, v51, @"itemType", v52);
                    isEqualToString = objc_msgSend_isEqualToString_(v47, v54, v53, v55);
                    LOBYTE(CellDictForCellAtIndexPath) = 1;
                    if (!isEqualToString)
                    {
                      break;
                    }
                  }

                  while (v42 != v43++);
                }
              }
            }
          }

          else
          {
            LOBYTE(CellDictForCellAtIndexPath) = 0;
          }
        }
      }
    }
  }

  return CellDictForCellAtIndexPath;
}

- (BOOL)updateRowAtIndexPath:(id)path withNewRowInfo:(id)info
{
  if (dword_27E382DC8 <= 800 && (dword_27E382DC8 != -1 || sub_23EB74AC8(&dword_27E382DC8, 0x320u)))
  {
    v7 = objc_msgSend_section(path, a2, path, info);
    v11 = objc_msgSend_row(path, v8, v9, v10);
    sub_23EB75374(&dword_27E382DC8, "[TableViewManager updateRowAtIndexPath:withNewRowInfo:]", 800, "section %d  row %d\n", v7, v11);
  }

  isCellAtIndexPath_identicalToNewRow = objc_msgSend_isCellAtIndexPath_identicalToNewRow_(self, a2, path, info);
  if (isCellAtIndexPath_identicalToNewRow)
  {
    objc_msgSend_updateCellAtIndexPath_withNewRowInfo_(self, v12, path, info);
  }

  return isCellAtIndexPath_identicalToNewRow;
}

- (void)updateSectionDataInIdenticalTable:(id)table
{
  v31 = *MEMORY[0x277D85DE8];
  if (dword_27E382DC8 <= 800 && (dword_27E382DC8 != -1 || sub_23EB74AC8(&dword_27E382DC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382DC8, "[TableViewManager updateSectionDataInIdenticalTable:]", 800, "\n");
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(table, a2, &v25, v30, 16);
  if (v20)
  {
    v6 = 0;
    v19 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(table);
        }

        v8 = objc_msgSend_objectForKey_(*(*(&v25 + 1) + 8 * i), v4, @"sectionRows", v5);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v21, v29, 16);
        if (v10)
        {
          v11 = v10;
          v12 = 0;
          v13 = *v22;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(v8);
              }

              v15 = *(*(&v21 + 1) + 8 * j);
              v16 = objc_msgSend_indexPathForRow_inSection_(MEMORY[0x277CCAA70], v4, v12, v6);
              objc_msgSend_updateCellAtIndexPath_withNewRowInfo_(self, v17, v16, v15);
              ++v12;
            }

            v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v4, &v21, v29, 16);
          }

          while (v11);
        }

        ++v6;
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(table, v4, &v25, v30, 16);
    }

    while (v20);
  }
}

- (BOOL)checkIfSectionDataSameInTable:(id)table
{
  tableCopy = table;
  v57 = *MEMORY[0x277D85DE8];
  if (dword_27E382DC8 <= 800 && (dword_27E382DC8 != -1 || sub_23EB74AC8(&dword_27E382DC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382DC8, "[TableViewManager checkIfSectionDataSameInTable:]", 800, "\n");
  }

  v6 = objc_msgSend_count(tableCopy, a2, table, v3);
  v10 = objc_msgSend_managedTableView(self, v7, v8, v9);
  if (v6 == objc_msgSend_numberOfSections(v10, v11, v12, v13))
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(tableCopy, v14, &v51, v56, 16);
    if (!v15)
    {
      LOBYTE(isCellAtIndexPath_identicalToNewRow) = 1;
      return isCellAtIndexPath_identicalToNewRow;
    }

    v18 = v15;
    v19 = 0;
    v20 = *v52;
    v44 = *v52;
    v45 = tableCopy;
LABEL_8:
    v21 = 0;
    v46 = v18;
    while (1)
    {
      if (*v52 != v20)
      {
        objc_enumerationMutation(tableCopy);
      }

      v22 = objc_msgSend_objectForKey_(*(*(&v51 + 1) + 8 * v21), v16, @"sectionRows", v17);
      v26 = objc_msgSend_count(v22, v23, v24, v25);
      v30 = objc_msgSend_managedTableView(self, v27, v28, v29);
      if (v26 != objc_msgSend_numberOfRowsInSection_(v30, v31, v19, v32))
      {
        break;
      }

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v33, &v47, v55, 16);
      if (v34)
      {
        v35 = v34;
        v36 = 0;
        v37 = *v48;
LABEL_14:
        v38 = 0;
        while (1)
        {
          if (*v48 != v37)
          {
            objc_enumerationMutation(v22);
          }

          v39 = *(*(&v47 + 1) + 8 * v38);
          v40 = objc_msgSend_indexPathForRow_inSection_(MEMORY[0x277CCAA70], v16, v36, v19);
          isCellAtIndexPath_identicalToNewRow = objc_msgSend_isCellAtIndexPath_identicalToNewRow_(self, v41, v40, v39);
          if (!isCellAtIndexPath_identicalToNewRow)
          {
            return isCellAtIndexPath_identicalToNewRow;
          }

          ++v36;
          if (v35 == ++v38)
          {
            v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v16, &v47, v55, 16);
            if (v35)
            {
              goto LABEL_14;
            }

            break;
          }
        }
      }

      ++v19;
      ++v21;
      tableCopy = v45;
      v20 = v44;
      if (v21 == v46)
      {
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v16, &v51, v56, 16);
        LOBYTE(isCellAtIndexPath_identicalToNewRow) = 1;
        if (v18)
        {
          goto LABEL_8;
        }

        return isCellAtIndexPath_identicalToNewRow;
      }
    }
  }

  LOBYTE(isCellAtIndexPath_identicalToNewRow) = 0;
  return isCellAtIndexPath_identicalToNewRow;
}

- (BOOL)updateSectionsIfMatchingExisting:(id)existing
{
  if (dword_27E382DC8 <= 800 && (dword_27E382DC8 != -1 || sub_23EB74AC8(&dword_27E382DC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382DC8, "[TableViewManager updateSectionsIfMatchingExisting:]", 800, "\n");
  }

  v8 = objc_msgSend_checkIfSectionDataSameInTable_(self, a2, existing, v3);
  if (v8)
  {
    objc_msgSend_updateSectionDataInIdenticalTable_(self, v6, existing, v7);
  }

  return v8;
}

- (void)deleteRowsAtIndexPaths:(id)paths withRowAnimation:(int64_t)animation
{
  v155 = *MEMORY[0x277D85DE8];
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    v5 = objc_msgSend_managedTableView(self, a2, paths, animation);
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager deleteRowsAtIndexPaths:withRowAnimation:]", 800, "managedTableView %@\n", v5);
  }

  selfCopy = self;
  if (objc_msgSend_count(paths, a2, paths, animation))
  {
    v8 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, v6, @"tableSectionArray", v7);
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(paths, v9, &v148, v154, 16);
    if (v10)
    {
      v14 = v10;
      v15 = *v149;
LABEL_8:
      v16 = 0;
      while (1)
      {
        if (*v149 != v15)
        {
          objc_enumerationMutation(paths);
        }

        v17 = *(*(&v148 + 1) + 8 * v16);
        v18 = objc_msgSend_row(v17, v11, v12, v13);
        v22 = objc_msgSend_section(v17, v19, v20, v21);
        if (v22 >= objc_msgSend_count(v8, v23, v24, v25))
        {
          break;
        }

        v28 = objc_msgSend_objectAtIndex_(v8, v26, v22, v27);
        v31 = objc_msgSend_objectForKey_(v28, v29, @"sectionRows", v30);
        if (v18 >= objc_msgSend_count(v31, v32, v33, v34))
        {
          break;
        }

        if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C88, "[TableViewManager deleteRowsAtIndexPaths:withRowAnimation:]", 800, "row %d in section %d valid to delete\n", v18, v22);
        }

        if (v14 == ++v16)
        {
          v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(paths, v11, &v148, v154, 16);
          if (v14)
          {
            goto LABEL_8;
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_19:
      v35 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v11, paths, v13);
      objc_msgSend_sortUsingSelector_(v35, v36, sel_compare_, v37);
      if (objc_msgSend_count(v35, v38, v39, v40))
      {
        v44 = objc_msgSend_array(MEMORY[0x277CBEB18], v41, v42, v43);
        v139 = objc_msgSend_array(MEMORY[0x277CBEB18], v45, v46, v47);
        v50 = objc_msgSend_objectAtIndex_(v35, v48, 0, v49);
        v54 = objc_msgSend_section(v50, v51, v52, v53);
        v57 = objc_msgSend_objectAtIndex_(v8, v55, v54, v56);
        v60 = objc_msgSend_objectForKey_(v57, v58, @"sectionRows", v59);
        v144 = 0u;
        v145 = 0u;
        v146 = 0u;
        v147 = 0u;
        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v61, &v144, v153, 16);
        if (v62)
        {
          v66 = v62;
          v67 = *v145;
          do
          {
            for (i = 0; i != v66; ++i)
            {
              if (*v145 != v67)
              {
                objc_enumerationMutation(v35);
              }

              v69 = *(*(&v144 + 1) + 8 * i);
              if (objc_msgSend_section(v69, v63, v64, v65) == v54)
              {
                v73 = objc_msgSend_row(v69, v70, v71, v72);
                v76 = objc_msgSend_objectAtIndex_(v60, v74, v73, v75);
                objc_msgSend_addObject_(v44, v77, v76, v78);
              }

              else
              {
                objc_msgSend_removeObjectsInArray_(v60, v70, v44, v72);
                v81 = objc_msgSend_objectAtIndex_(v8, v79, v54, v80);
                v84 = objc_msgSend_objectForKey_(v81, v82, @"rowsOKToBeEmpty", v83);
                v88 = objc_msgSend_BOOLValue(v84, v85, v86, v87);
                if (!objc_msgSend_count(v60, v89, v90, v91) && (v88 & 1) == 0)
                {
                  objc_msgSend_addObject_(v139, v92, v81, v94);
                }

                objc_msgSend_removeAllObjects(v44, v92, v93, v94);
                v54 = objc_msgSend_section(v69, v95, v96, v97);
                v100 = objc_msgSend_objectAtIndex_(v8, v98, v54, v99);
                v60 = objc_msgSend_objectForKey_(v100, v101, @"sectionRows", v102);
              }
            }

            v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v63, &v144, v153, 16);
          }

          while (v66);
        }

        if (objc_msgSend_count(v44, v63, v64, v65))
        {
          objc_msgSend_removeObjectsInArray_(v60, v103, v44, v104);
          v107 = objc_msgSend_objectAtIndex_(v8, v105, v54, v106);
          v110 = objc_msgSend_objectForKey_(v107, v108, @"rowsOKToBeEmpty", v109);
          v114 = objc_msgSend_BOOLValue(v110, v111, v112, v113);
          if (!objc_msgSend_count(v60, v115, v116, v117) && (v114 & 1) == 0)
          {
            v119 = objc_msgSend_objectAtIndex_(v8, v103, v54, v118);
            objc_msgSend_addObject_(v139, v120, v119, v121);
          }
        }

        objc_msgSend_deleteRowsAtIndexPaths_withRowAnimation_(selfCopy->_managedTableView, v103, paths, animation);
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v123 = objc_msgSend_countByEnumeratingWithState_objects_count_(v139, v122, &v140, v152, 16);
        if (v123)
        {
          v126 = v123;
          v127 = *v141;
          do
          {
            for (j = 0; j != v126; ++j)
            {
              if (*v141 != v127)
              {
                objc_enumerationMutation(v139);
              }

              v129 = objc_msgSend_indexOfObject_(v8, v124, *(*(&v140 + 1) + 8 * j), v125);
              if (v129 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v130 = v129;
                objc_msgSend_removeObjectAtIndex_(v8, v124, v129, v125);
                managedTableView = selfCopy->_managedTableView;
                v134 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v132, v130, v133);
                objc_msgSend_deleteSections_withRowAnimation_(managedTableView, v135, v134, animation);
              }
            }

            v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(v139, v124, &v140, v152, 16);
          }

          while (v126);
        }
      }
    }
  }
}

- (void)deleteRowInSection:(unint64_t)section withTag:(int64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    v7 = objc_msgSend_managedTableView(self, a2, section, tag);
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager deleteRowInSection:withTag:]", 800, "managedTableView %@\n", v7);
  }

  v8 = objc_msgSend_indexPathOfCellWithTag_(self, a2, tag, tag);
  if (v8)
  {
    v12 = v8;
    if (objc_msgSend_section(v8, v9, v10, v11) == section)
    {
      v16 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v13, v12, v14);

      objc_msgSend_deleteRowsAtIndexPaths_withRowAnimation_(self, v15, v16, 100);
    }
  }
}

- (void)cleanTableViewForReuse
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    v5 = objc_msgSend_managedTableView(self, a2, v2, v3);
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager cleanTableViewForReuse]", 800, "managedTableView %@\n", v5);
  }

  v6 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray", v3);
  if (objc_msgSend_count(v6, v7, v8, v9))
  {
    v13 = objc_msgSend_areAnimationsEnabled(MEMORY[0x277D75D18], v10, v11, v12);
    objc_msgSend_setAnimationsEnabled_(MEMORY[0x277D75D18], v14, 0, v15);
    objc_msgSend_endEditing(self, v16, v17, v18);
    v19 = MEMORY[0x277CCAA78];
    v23 = objc_msgSend_count(v6, v20, v21, v22);
    v25 = objc_msgSend_indexSetWithIndexesInRange_(v19, v24, 0, v23);
    objc_msgSend_deleteSections_withRowAnimation_(self, v26, v25, 5);
    v29 = MEMORY[0x277D75D18];

    objc_msgSend_setAnimationsEnabled_(v29, v27, v13, v28);
  }
}

- (void)deleteAllRowsInSectionCore:(unint64_t)core
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    v6 = objc_msgSend_managedTableView(self, a2, core, v3);
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager deleteAllRowsInSectionCore:]", 800, "managedTableView %@\n", v6);
  }

  v7 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray", v3);
  if (objc_msgSend_count(v7, v8, v9, v10) > core)
  {
    v13 = objc_msgSend_objectAtIndex_(v7, v11, core, v12);
    v16 = objc_msgSend_objectForKey_(v13, v14, @"sectionRows", v15);

    objc_msgSend_removeAllObjects(v16, v17, v18, v19);
  }
}

- (void)deleteAllRowsInSection:(unint64_t)section
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager deleteAllRowsInSection:]", 800, "attempting to delete everything in section %d\n", section);
  }

  objc_msgSend_deleteAllRowsInSectionCore_(self, a2, section, v3);

  MEMORY[0x2821F9670](self, sel_reloadSection_, section, v6);
}

- (void)deleteSections:(id)sections withRowAnimation:(int64_t)animation
{
  v7 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray", animation);
  v11 = objc_msgSend_count(v7, v8, v9, v10);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_23EBF366C;
  v14[3] = &unk_278C693D0;
  v14[5] = v7;
  v14[6] = v11;
  v14[4] = self;
  objc_msgSend_enumerateIndexesWithOptions_usingBlock_(sections, v12, 2, v14);
  objc_msgSend_deleteSections_withRowAnimation_(self->_managedTableView, v13, sections, animation);
}

- (void)recordInitialSelectedMenuItemsForNewSection:(int64_t)section
{
  SectionDictForSection = objc_msgSend_getSectionDictForSection_(self, a2, section, v3);
  if (SectionDictForSection)
  {
    v8 = SectionDictForSection;
    v9 = objc_msgSend_objectForKey_(SectionDictForSection, v6, @"sectionIsMenu", v7);
    if (objc_msgSend_BOOLValue(v9, v10, v11, v12))
    {
      v15 = objc_msgSend_objectForKey_(v8, v13, @"sectionRows", v14);
      if (v15)
      {
        v18 = v15;
        v19 = objc_msgSend_objectForKey_(v8, v16, @"selectedMenuItemIndexSet", v17);
        v22 = objc_msgSend_objectForKey_(v8, v20, @"selectedMenuItemTag", v21);
        if (v19)
        {
          Index = objc_msgSend_firstIndex(v19, v23, v24, v25);
          if (Index != 0x7FFFFFFFFFFFFFFFLL)
          {
            for (i = Index; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend_indexGreaterThanIndex_(v19, v35, i, v36))
            {
              v30 = objc_msgSend_objectAtIndex_(v18, v27, i, v28);
              v33 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v31, 1, v32);
              objc_msgSend_setObject_forKey_(v30, v34, v33, @"menuSelected");
            }
          }
        }

        else if (v22)
        {
          v37 = objc_msgSend_integerValue(v22, v23, v24, v25);
          v40 = objc_msgSend_indexPathOfCellWithTag_(self, v38, v37, v39);
          v44 = objc_msgSend_row(v40, v41, v42, v43);
          v47 = objc_msgSend_objectAtIndex_(v18, v45, v44, v46);
          v51 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v48, 1, v49);

          objc_msgSend_setObject_forKey_(v47, v50, v51, @"menuSelected");
        }
      }
    }
  }
}

- (void)addSectionInfo:(id)info animated:(BOOL)animated
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    v7 = objc_msgSend_managedTableView(self, a2, info, animated);
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager addSectionInfo:animated:]", 800, "managedTableView %@\n", v7);
  }

  v8 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray", animated);
  v12 = v8;
  if (animated)
  {
    v14 = objc_msgSend_count(v8, v9, v10, v11);

    objc_msgSend_insertSectionInfo_atIndex_withRowAnimation_(self, v13, info, v14, 0);
  }

  else
  {
    objc_msgSend_setAnimationsEnabled_(MEMORY[0x277D75D18], v9, 0, v11);
    v18 = objc_msgSend_count(v12, v15, v16, v17);
    objc_msgSend_insertSectionInfo_atIndex_withRowAnimation_(self, v19, info, v18, 5);
    v22 = MEMORY[0x277D75D18];

    objc_msgSend_setAnimationsEnabled_(v22, v20, 1, v21);
  }
}

- (void)insertSectionInfo:(id)info atIndex:(unint64_t)index withRowAnimation:(int64_t)animation
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager insertSectionInfo:atIndex:withRowAnimation:]", 800, "\n");
  }

  v9 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray", index);
  if (objc_msgSend_count(v9, v10, v11, v12) <= index)
  {
    objc_msgSend_addObject_(v9, v13, info, v14);
  }

  else
  {
    objc_msgSend_insertObject_atIndex_(v9, v13, info, index);
  }

  objc_msgSend_recordInitialSelectedMenuItemsForNewSection_(self, v15, index, v16);
  v20 = objc_msgSend_managedTableView(self, v17, v18, v19);
  v24 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v21, index, v22);

  objc_msgSend_insertSections_withRowAnimation_(v20, v23, v24, animation);
}

- (void)deleteSection:(unint64_t)section
{
  v6 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], a2, section, v3);

  objc_msgSend_deleteSections_withRowAnimation_(self, v5, v6, 0);
}

- (void)deleteSectionWithIdentifier:(id)identifier animated:(BOOL)animated
{
  v6 = objc_msgSend_indexOfSectionWithIdentifier_(self, a2, identifier, animated);
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v6;
    if (animated)
    {
      v11 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v7, v6, v8);

      objc_msgSend_deleteSections_withRowAnimation_(self, v10, v11, 0);
    }

    else
    {
      objc_msgSend_setAnimationsEnabled_(MEMORY[0x277D75D18], v7, 0, v8);
      v14 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v12, v9, v13);
      objc_msgSend_deleteSections_withRowAnimation_(self, v15, v14, 5);
      v18 = MEMORY[0x277D75D18];

      objc_msgSend_setAnimationsEnabled_(v18, v16, 1, v17);
    }
  }
}

- (void)setSectionValue:(id)value forKey:(id)key inSection:(unint64_t)section
{
  v8 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray", key);
  if (objc_msgSend_count(v8, v9, v10, v11) > section)
  {
    v14 = objc_msgSend_objectAtIndex_(v8, v12, section, v13);

    objc_msgSend_setObject_forKey_(v14, v15, value, key);
  }
}

- (id)commonAddOptionalBasicImage:(id)image withNeighborItem:(id)item toCellItems:(id)items
{
  if (!image)
  {
    return 0;
  }

  v8 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], a2, @"imageView", item, @"itemType", @"left", @"position", 0);
  objc_msgSend_setObject_forKey_(v8, v9, image, @"startValue");
  if (item)
  {
    objc_msgSend_setValue_forKey_(v8, v10, item, @"neighbor");
    objc_msgSend_setValue_forKey_(v8, v12, @"right", @"position");
  }

  objc_msgSend_addObject_(items, v10, v8, v11);
  return v8;
}

- (id)commonAddOptionalStaticText:(id)text withNeighborItem:(id)item toCellItems:(id)items
{
  v8 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], a2, @"labelView", item, @"itemType", 0);
  v11 = v8;
  if (text)
  {
    objc_msgSend_setValue_forKey_(v8, v9, text, @"startValue");
  }

  if (item)
  {
    objc_msgSend_setValue_forKey_(v11, v9, item, @"neighbor");
    objc_msgSend_setValue_forKey_(v11, v12, @"right", @"position");
  }

  objc_msgSend_addObject_(items, v9, v11, v10);
  return v11;
}

- (id)createRowStyleBasicWithImage:(id)image text1:(id)text1 text2:(id)text2 withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleBasicWithImage:text1:text2:withTag:]", 800, "\n");
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_msgSend_commonAddOptionalBasicImage_withNeighborItem_toCellItems_(self, v12, image, 0, v11);
  objc_msgSend_commonAddOptionalStaticText_withNeighborItem_toCellItems_(self, v14, text1, v13, v11);
  if (text2)
  {
    v17 = objc_alloc(MEMORY[0x277CBEB38]);
    detailTextColor = self->_detailTextColor;
    v22 = objc_msgSend_systemLabelFont(TableViewManager, v19, v20, v21);
    v23 = MEMORY[0x277CCABB0];
    v27 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], v24, v25, v26);
    v31 = objc_msgSend_userInterfaceLayoutDirection(v27, v28, v29, v30);
    v34 = objc_msgSend_numberWithInteger_(v23, v32, 2 * (v31 == 0), v33);
    v37 = objc_msgSend_initWithObjectsAndKeys_(v17, v35, @"labelView", v36, @"itemType", detailTextColor, @"color", v22, @"font", v34, @"alignment", @"right", @"position", 0);
    objc_msgSend_setObject_forKey_(v37, v38, text2, @"startValue");
    objc_msgSend_addObject_(v11, v39, v37, v40);
  }

  v41 = MEMORY[0x277CBEB38];
  v42 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v15, tag, v16);
  v45 = objc_msgSend_dictionaryWithObjectsAndKeys_(v41, v43, v11, v44, @"items", v42, @"tag", 0);

  return v45;
}

- (id)createRowStyleSubtitleWitImage:(id)image mainText:(id)text subtitleText:(id)subtitleText withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleSubtitleWitImage:mainText:subtitleText:withTag:]", 800, "\n");
  }

  if (!text)
  {
    return 0;
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_msgSend_commonAddOptionalBasicImage_withNeighborItem_toCellItems_(self, v12, image, 0, v11);
  v15 = objc_msgSend_commonAddOptionalStaticText_withNeighborItem_toCellItems_(self, v14, text, v13, v11);
  objc_msgSend_setValue_forKey_(v15, v16, @"topRight", @"position");
  if (subtitleText)
  {
    v19 = objc_alloc(MEMORY[0x277CBEB38]);
    subtitleColor = self->_subtitleColor;
    v24 = objc_msgSend_smallSystemLabelFont(TableViewManager, v21, v22, v23);
    v27 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v25, 4, v26);
    Object = objc_msgSend_lastObject(v11, v28, v29, v30);
    v34 = objc_msgSend_initWithObjectsAndKeys_(v19, v32, @"labelView", v33, @"itemType", subtitleColor, @"color", v24, @"font", v27, @"alignment", Object, @"neighbor", @"bottomLeft", @"position", 0);
    objc_msgSend_setObject_forKey_(v34, v35, subtitleText, @"startValue");
    objc_msgSend_addObject_(v11, v36, v34, v37);
  }

  v38 = MEMORY[0x277CBEB38];
  v39 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v17, tag, v18);
  v42 = objc_msgSend_dictionaryWithObjectsAndKeys_(v38, v40, v11, v41, @"items", v39, @"tag", 0);

  return v42;
}

- (id)createRowStyleSubtitleWithRightImage:(id)image subtitleText:(id)text rightImage:(id)rightImage withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleSubtitleWithRightImage:subtitleText:rightImage:withTag:]", 800, "\n");
  }

  if (!image)
  {
    return 0;
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc(MEMORY[0x277CBEB38]);
  v15 = objc_msgSend_initWithObjectsAndKeys_(v12, v13, @"labelView", v14, @"itemType", image, @"startValue", @"topLeft", @"position", 0);
  objc_msgSend_addObject_(v11, v16, v15, v17);

  if (text)
  {
    v20 = objc_alloc(MEMORY[0x277CBEB38]);
    subtitleColor = self->_subtitleColor;
    v25 = objc_msgSend_smallSystemLabelFont(TableViewManager, v22, v23, v24);
    tagCopy = tag;
    v29 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v26, 4, v27);
    v32 = objc_msgSend_objectAtIndex_(v11, v30, 0, v31);
    v52 = v29;
    tag = tagCopy;
    v35 = objc_msgSend_initWithObjectsAndKeys_(v20, v33, @"labelView", v34, @"itemType", subtitleColor, @"color", v25, @"font", v52, @"alignment", v32, @"neighbor", @"bottomLeft", @"position", 0);
    objc_msgSend_setObject_forKey_(v35, v36, text, @"startValue");
    objc_msgSend_addObject_(v11, v37, v35, v38);
  }

  if (rightImage)
  {
    v39 = objc_alloc(MEMORY[0x277CBEB38]);
    v42 = objc_msgSend_initWithObjectsAndKeys_(v39, v40, @"imageView", v41, @"itemType", @"right", @"position", 0);
    objc_msgSend_setObject_forKey_(v42, v43, rightImage, @"startValue");
    objc_msgSend_addObject_(v11, v44, v42, v45);
  }

  v46 = MEMORY[0x277CBEB38];
  v47 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v18, tag, v19);
  v50 = objc_msgSend_dictionaryWithObjectsAndKeys_(v46, v48, v11, v49, @"items", v47, @"tag", 0);

  return v50;
}

- (id)createRowStyleSubtitleWithRightText:(id)text subtitleText:(id)subtitleText rightText:(id)rightText withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleSubtitleWithRightText:subtitleText:rightText:withTag:]", 800, "\n");
  }

  if (!text)
  {
    return 0;
  }

  tagCopy = tag;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc(MEMORY[0x277CBEB38]);
  v15 = objc_msgSend_initWithObjectsAndKeys_(v12, v13, @"labelView", v14, @"itemType", text, @"startValue", @"topLeft", @"position", 0);
  objc_msgSend_addObject_(v11, v16, v15, v17);

  v18 = objc_alloc(MEMORY[0x277CBEB38]);
  v21 = objc_msgSend_initWithObjectsAndKeys_(v18, v19, @"labelView", v20, @"itemType", @"right", @"position", rightText, @"startValue", 0);
  objc_msgSend_addObject_(v11, v22, v21, v23);

  if (subtitleText)
  {
    v26 = objc_alloc(MEMORY[0x277CBEB38]);
    subtitleColor = self->_subtitleColor;
    v31 = objc_msgSend_smallSystemLabelFont(TableViewManager, v28, v29, v30);
    v34 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v32, 4, v33);
    v37 = objc_msgSend_objectAtIndex_(v11, v35, 0, v36);
    v40 = objc_msgSend_initWithObjectsAndKeys_(v26, v38, @"labelView", v39, @"itemType", subtitleColor, @"color", v31, @"font", v34, @"alignment", v37, @"neighbor", @"bottomLeft", @"position", 0);
    objc_msgSend_setObject_forKey_(v40, v41, subtitleText, @"startValue");
    objc_msgSend_addObject_(v11, v42, v40, v43);
  }

  v44 = MEMORY[0x277CBEB38];
  v45 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v24, tagCopy, v25);
  v48 = objc_msgSend_dictionaryWithObjectsAndKeys_(v44, v46, v11, v47, @"items", v45, @"tag", 0);

  return v48;
}

- (id)createRowStyleBasicWithText:(id)text centerImage:(id)image text2:(id)text2 withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleBasicWithText:centerImage:text2:withTag:]", 800, "\n");
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_msgSend_commonAddOptionalStaticText_withNeighborItem_toCellItems_(self, v12, text, 0, v11);
  objc_msgSend_commonAddOptionalBasicImage_withNeighborItem_toCellItems_(self, v14, image, v13, v11);
  if (text2)
  {
    v17 = objc_alloc(MEMORY[0x277CBEB38]);
    detailTextColor = self->_detailTextColor;
    v22 = objc_msgSend_systemLabelFont(TableViewManager, v19, v20, v21);
    v23 = MEMORY[0x277CCABB0];
    v27 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], v24, v25, v26);
    v31 = objc_msgSend_userInterfaceLayoutDirection(v27, v28, v29, v30);
    v34 = objc_msgSend_numberWithInteger_(v23, v32, 2 * (v31 == 0), v33);
    v37 = objc_msgSend_initWithObjectsAndKeys_(v17, v35, @"labelView", v36, @"itemType", detailTextColor, @"color", v22, @"font", v34, @"alignment", @"right", @"position", 0);
    objc_msgSend_setObject_forKey_(v37, v38, text2, @"startValue");
    objc_msgSend_addObject_(v11, v39, v37, v40);
  }

  v41 = MEMORY[0x277CBEB38];
  v42 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v15, tag, v16);
  v45 = objc_msgSend_dictionaryWithObjectsAndKeys_(v41, v43, v11, v44, @"items", v42, @"tag", 0);

  return v45;
}

- (id)createRowStyleBasicEditableWithImage:(id)image labelText:(id)text currentValue:(id)value placeholderText:(id)placeholderText isSecure:(BOOL)secure keyboardType:(int64_t)type withTag:(unint64_t)tag
{
  secureCopy = secure;
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleBasicEditableWithImage:labelText:currentValue:placeholderText:isSecure:keyboardType:withTag:]", 800, "\n");
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = objc_msgSend_commonAddOptionalBasicImage_withNeighborItem_toCellItems_(self, v17, image, 0, v16);
  objc_msgSend_commonAddOptionalStaticText_withNeighborItem_toCellItems_(self, v19, text, v18, v16);
  if (value)
  {
    valueCopy = value;
  }

  else
  {
    valueCopy = &stru_285145FE8;
  }

  v21 = objc_alloc(MEMORY[0x277CBEB38]);
  editTextColor = self->_editTextColor;
  v25 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v23, 4, v24);
  v28 = objc_msgSend_initWithObjectsAndKeys_(v21, v26, @"editTextView", v27, @"itemType", valueCopy, @"startValue", editTextColor, @"color", @"right", @"position", v25, @"alignment", 0);
  v31 = v28;
  if (placeholderText)
  {
    objc_msgSend_setObject_forKey_(v28, v29, placeholderText, @"placeholder");
  }

  if (secureCopy)
  {
    v32 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v29, 1, v30);
    objc_msgSend_setObject_forKey_(v31, v33, v32, @"secure");
  }

  if (type)
  {
    v34 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v29, type, v30);
    objc_msgSend_setObject_forKey_(v31, v35, v34, @"keyboardType");
  }

  objc_msgSend_addObject_(v16, v29, v31, v30);

  v36 = MEMORY[0x277CBEB38];
  v39 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v37, tag, v38);
  v42 = objc_msgSend_dictionaryWithObjectsAndKeys_(v36, v40, v16, v41, @"items", v39, @"tag", 0);

  return v42;
}

- (id)createRowStyleBasicOnOffWithImage:(id)image labelText:(id)text isOn:(BOOL)on withTag:(unint64_t)tag
{
  onCopy = on;
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleBasicOnOffWithImage:labelText:isOn:withTag:]", 800, "\n");
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_msgSend_commonAddOptionalBasicImage_withNeighborItem_toCellItems_(self, v12, image, 0, v11);
  objc_msgSend_commonAddOptionalStaticText_withNeighborItem_toCellItems_(self, v14, text, v13, v11);
  v15 = objc_alloc(MEMORY[0x277CBEB38]);
  v18 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v16, onCopy, v17);
  v21 = objc_msgSend_initWithObjectsAndKeys_(v15, v19, @"switchView", v20, @"itemType", @"right", @"position", v18, @"startValue", 0);
  objc_msgSend_addObject_(v11, v22, v21, v23);

  v24 = MEMORY[0x277CBEB38];
  v27 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v25, tag, v26);
  v30 = objc_msgSend_dictionaryWithObjectsAndKeys_(v24, v28, v11, v29, @"items", v27, @"tag", 0);

  return v30;
}

- (id)createRowStyleBasicWholeCellButton:(id)button withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleBasicWholeCellButton:withTag:]", 800, "\n");
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc(MEMORY[0x277CBEB38]);
  v10 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v8, 1, v9);
  v13 = objc_msgSend_initWithObjectsAndKeys_(v7, v11, @"wholeCellButtonView", v12, @"itemType", button, @"startValue", @"center", @"position", v10, @"alignment", 0);
  objc_msgSend_addObject_(v6, v14, v13, v15);

  v16 = MEMORY[0x277CBEB38];
  v19 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v17, tag, v18);
  v22 = objc_msgSend_dictionaryWithObjectsAndKeys_(v16, v20, v6, v21, @"items", v19, @"tag", 0);

  return v22;
}

- (id)createRowStyleBasicButtons:(id)buttons title2:(id)title2 withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleBasicButtons:title2:withTag:]", 800, "\n");
  }

  if (!buttons)
  {
    return 0;
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc(MEMORY[0x277CBEB38]);
  v12 = objc_msgSend_initWithObjectsAndKeys_(v9, v10, @"buttonView", v11, @"itemType", buttons, @"startValue", 0);
  v15 = v12;
  if (title2)
  {
    objc_msgSend_addObject_(v8, v13, v12, v14);

    v16 = objc_alloc(MEMORY[0x277CBEB38]);
    v15 = objc_msgSend_initWithObjectsAndKeys_(v16, v17, @"buttonView", v18, @"itemType", title2, @"startValue", @"right", @"position", 0);
  }

  else
  {
    objc_msgSend_setObject_forKey_(v12, v13, @"center", @"position");
  }

  objc_msgSend_addObject_(v8, v19, v15, v20);

  v22 = MEMORY[0x277CBEB38];
  v25 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v23, tag, v24);
  v28 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v26, 1, v27);
  v31 = objc_msgSend_dictionaryWithObjectsAndKeys_(v22, v29, v8, v30, @"items", v25, @"tag", v28, @"noBackground", 0);

  return v31;
}

- (id)createRowStyleTitledStaticMultiline:(id)multiline titleImage:(id)image bodyText:(id)text withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleTitledStaticMultiline:titleImage:bodyText:withTag:]", 800, "\n");
  }

  if (!multiline || !text)
  {
    return 0;
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_msgSend_commonAddOptionalStaticText_withNeighborItem_toCellItems_(self, v12, multiline, 0, v11);
  objc_msgSend_setObject_forKey_(v13, v14, @"topLeft", @"position");
  if (image)
  {
    v15 = objc_alloc(MEMORY[0x277CBEB38]);
    v18 = objc_msgSend_objectAtIndex_(v11, v16, 0, v17);
    v21 = objc_msgSend_initWithObjectsAndKeys_(v15, v19, @"imageView", v20, @"itemType", @"right", @"position", v18, @"neighbor", 0);
    objc_msgSend_setObject_forKey_(v21, v22, image, @"startValue");
    objc_msgSend_addObject_(v11, v23, v21, v24);
  }

  v25 = objc_alloc(MEMORY[0x277CBEB38]);
  detailTextColor = self->_detailTextColor;
  v30 = objc_msgSend_systemLabelFont(TableViewManager, v27, v28, v29);
  v33 = objc_msgSend_objectAtIndex_(v11, v31, 0, v32);
  v34 = MEMORY[0x277CCABB0];
  v38 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], v35, v36, v37);
  v42 = objc_msgSend_userInterfaceLayoutDirection(v38, v39, v40, v41);
  v45 = objc_msgSend_numberWithInteger_(v34, v43, 2 * (v42 == 0), v44);
  v48 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v46, 1, v47);
  v51 = objc_msgSend_initWithObjectsAndKeys_(v25, v49, @"multilineLabelView", v50, @"itemType", text, @"startValue", detailTextColor, @"color", v30, @"font", v33, @"neighbor", @"right", @"position", v45, @"alignment", v48, @"canCopy", 0);
  objc_msgSend_addObject_(v11, v52, v51, v53);

  v54 = MEMORY[0x277CBEB38];
  v57 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v55, tag, v56);
  v60 = objc_msgSend_dictionaryWithObjectsAndKeys_(v54, v58, v11, v59, @"items", v57, @"tag", 0);

  return v60;
}

- (id)createRowStyleTitledParagraph:(id)paragraph titleImage:(id)image bodyText:(id)text withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleTitledParagraph:titleImage:bodyText:withTag:]", 800, "\n");
  }

  if (!paragraph || !text)
  {
    return 0;
  }

  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, paragraph, image);
  v13 = objc_msgSend_commonAddOptionalStaticText_withNeighborItem_toCellItems_(self, v12, paragraph, 0, v11);
  objc_msgSend_setObject_forKey_(v13, v14, @"topLeft", @"position");
  if (image)
  {
    v18 = MEMORY[0x277CBEB38];
    v19 = objc_msgSend_objectAtIndex_(v11, v15, 0, v17);
    v22 = objc_msgSend_dictionaryWithObjectsAndKeys_(v18, v20, @"imageView", v21, @"itemType", @"right", @"position", v19, @"neighbor", 0);
    objc_msgSend_setObject_forKey_(v22, v23, image, @"startValue");
    objc_msgSend_addObject_(v11, v24, v22, v25);
  }

  v26 = MEMORY[0x277CBEB38];
  detailTextColor = self->_detailTextColor;
  v28 = objc_msgSend_systemLabelFont(TableViewManager, v15, v16, v17);
  v31 = objc_msgSend_objectAtIndex_(v11, v29, 0, v30);
  v34 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v32, 1, v33);
  v37 = objc_msgSend_dictionaryWithObjectsAndKeys_(v26, v35, @"multilineLabelView", v36, @"itemType", text, @"startValue", detailTextColor, @"color", v28, @"font", v31, @"neighbor", @"bottomLeft", @"position", v34, @"canCopy", 0);
  objc_msgSend_addObject_(v11, v38, v37, v39);
  v40 = MEMORY[0x277CBEB38];
  v43 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v41, tag, v42);
  return objc_msgSend_dictionaryWithObjectsAndKeys_(v40, v44, v11, v45, @"items", v43, @"tag", 0);
}

- (id)createRowStyleTitledParagraphWithLeftImage:(id)image title:(id)title bodyText:(id)text withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleTitledParagraphWithLeftImage:title:bodyText:withTag:]", 800, "\n");
  }

  if (!title || !text)
  {
    return 0;
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (image)
  {
    v13 = objc_alloc(MEMORY[0x277CBEB38]);
    image = objc_msgSend_initWithObjectsAndKeys_(v13, v14, @"imageView", v15, @"itemType", @"topLeft", @"position", image, @"startValue", 0);
    objc_msgSend_addObject_(v12, v16, image, v17);
  }

  objc_msgSend_commonAddOptionalStaticText_withNeighborItem_toCellItems_(self, v11, title, image, v12);
  v18 = objc_alloc(MEMORY[0x277CBEB38]);
  detailTextColor = self->_detailTextColor;
  v23 = objc_msgSend_systemLabelFont(TableViewManager, v20, v21, v22);
  v26 = objc_msgSend_objectAtIndex_(v12, v24, 0, v25);
  v29 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v27, 1, v28);
  v32 = objc_msgSend_initWithObjectsAndKeys_(v18, v30, @"multilineLabelView", v31, @"itemType", text, @"startValue", detailTextColor, @"color", v23, @"font", v26, @"neighbor", @"bottomLeft", @"position", v29, @"canCopy", 0);
  objc_msgSend_addObject_(v12, v33, v32, v34);

  v35 = MEMORY[0x277CBEB38];
  v38 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v36, tag, v37);
  v41 = objc_msgSend_dictionaryWithObjectsAndKeys_(v35, v39, v12, v40, @"items", v38, @"tag", 0);

  return v41;
}

- (id)createRowStyleSegmentedControlWithItems:(id)items selectedSegmentIndex:(id)index enabled:(BOOL)enabled withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleSegmentedControlWithItems:selectedSegmentIndex:enabled:withTag:]", 800, "\n");
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc(MEMORY[0x277CBEB38]);
  v13 = objc_msgSend_initWithObjectsAndKeys_(v10, v11, @"segmentedControlView", v12, @"itemType", items, @"segmentedControlItems", index, @"startValue", @"center", @"position", 0);
  objc_msgSend_addObject_(v9, v14, v13, v15);

  v16 = MEMORY[0x277CBEB38];
  v19 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v17, tag, v18);
  v22 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v20, 1, v21);
  v25 = objc_msgSend_dictionaryWithObjectsAndKeys_(v16, v23, v9, v24, @"items", v19, @"tag", v22, @"noBackground", 0);

  return v25;
}

- (id)createRowStyleProgressViewWithCancelAndStatus:(id)status statusText:(id)text altText:(id)altText withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleProgressViewWithCancelAndStatus:statusText:altText:withTag:]", 800, "\n");
  }

  if (!status || !text)
  {
    return 0;
  }

  altTextCopy = altText;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v11, @"progressView", v12, @"itemType", status, @"startValue", @"top", @"position", 0);
  if (sub_23EC132F8(v13, v14, v15, v16))
  {
    v19 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v17, 15, v18);
    objc_msgSend_setObject_forKey_(v13, v20, v19, @"edgeInset");
  }

  objc_msgSend_addObject_(v10, v17, v13, v18);
  v21 = MEMORY[0x277CBEB38];
  v24 = objc_msgSend_objectAtIndex_(v10, v22, 0, v23);
  v27 = objc_msgSend_dictionaryWithObjectsAndKeys_(v21, v25, @"buttonView", v26, @"itemType", @"UITextFieldClearButton", @"buttonImage", @"UITextFieldClearButtonPressed", @"buttonSelectedImage", &stru_285145FE8, @"startValue", v24, @"neighbor", @"right", @"position", 0);
  objc_msgSend_addObject_(v10, v28, v27, v29);
  v30 = objc_alloc(MEMORY[0x277CBEB38]);
  v33 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v31, 0, v32);
  v37 = objc_msgSend_smallSystemLabelFont(TableViewManager, v34, v35, v36);
  v40 = objc_msgSend_objectAtIndex_(v10, v38, 0, v39);
  v43 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v41, 1, v42);
  v46 = objc_msgSend_initWithObjectsAndKeys_(v30, v44, @"multilineLabelView", v45, @"itemType", v33, @"lineCount", v37, @"font", v40, @"neighbor", v43, @"alignment", @"bottom", @"position", 0);
  objc_msgSend_setObject_forKey_(v46, v47, text, @"startValue");
  objc_msgSend_addObject_(v10, v48, v46, v49);

  if (altTextCopy)
  {
    v52 = objc_alloc(MEMORY[0x277CBEB38]);
    v55 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v53, 0, v54);
    v59 = objc_msgSend_smallSystemLabelFont(TableViewManager, v56, v57, v58);
    v62 = objc_msgSend_objectAtIndex_(v10, v60, 2, v61);
    v65 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v63, 1, v64);
    v68 = objc_msgSend_initWithObjectsAndKeys_(v52, v66, @"multilineLabelView", v67, @"itemType", v55, @"lineCount", v59, @"font", v62, @"neighbor", v65, @"alignment", @"bottom", @"position", 0);
    objc_msgSend_setObject_forKey_(v68, v69, altTextCopy, @"startValue");
    objc_msgSend_addObject_(v10, v70, v68, v71);
  }

  v72 = MEMORY[0x277CBEB38];
  v73 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v50, tag, v51);
  v76 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v74, 1, v75);
  v79 = objc_msgSend_dictionaryWithObjectsAndKeys_(v72, v77, v10, v78, @"items", v73, @"tag", v76, @"noBackground", 0);

  return v79;
}

- (id)createRowStyleActivityStatus:(BOOL)status text1:(id)text1 grayedText1:(BOOL)grayedText1 text2:(id)text2 grayedText2:(BOOL)grayedText2 withTag:(unint64_t)tag
{
  grayedText2Copy = grayedText2;
  grayedText1Copy = grayedText1;
  statusCopy = status;
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleActivityStatus:text1:grayedText1:text2:grayedText2:withTag:]", 800, "\n");
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = objc_msgSend_commonAddOptionalStaticText_withNeighborItem_toCellItems_(self, v15, text1, 0, v14);
  if (grayedText1Copy)
  {
    objc_msgSend_setObject_forKey_(v16, v17, self->_subtitleColor, @"color");
  }

  v19 = MEMORY[0x277CBEB38];
  v20 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v17, statusCopy, v18);
  v23 = objc_msgSend_dictionaryWithObjectsAndKeys_(v19, v21, @"activityView", v22, @"itemType", v20, @"startValue", @"right", @"position", 0);
  objc_msgSend_addObject_(v14, v24, v23, v25);
  v29 = MEMORY[0x277CBEB38];
  v30 = 72;
  if (grayedText2Copy)
  {
    v30 = 96;
  }

  v31 = *(&self->super.isa + v30);
  v32 = objc_msgSend_systemLabelFont(TableViewManager, v26, v27, v28);
  v33 = MEMORY[0x277CCABB0];
  v37 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], v34, v35, v36);
  v41 = objc_msgSend_userInterfaceLayoutDirection(v37, v38, v39, v40);
  v44 = objc_msgSend_numberWithInteger_(v33, v42, 2 * (v41 == 0), v43);
  v47 = objc_msgSend_objectAtIndex_(v14, v45, 1, v46);
  v50 = objc_msgSend_dictionaryWithObjectsAndKeys_(v29, v48, @"labelView", v49, @"itemType", v31, @"color", v32, @"font", v44, @"alignment", v47, @"neighbor", @"left", @"position", 0);
  v53 = v50;
  if (text2)
  {
    objc_msgSend_setObject_forKey_(v50, v51, text2, @"startValue");
  }

  objc_msgSend_addObject_(v14, v51, v53, v52);
  v54 = MEMORY[0x277CBEB38];
  v57 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v55, tag, v56);
  v60 = objc_msgSend_dictionaryWithObjectsAndKeys_(v54, v58, v14, v59, @"items", v57, @"tag", 0);

  return v60;
}

- (id)createRowStyleDatePicker:(id)picker minimumDate:(id)date maximumDate:(id)maximumDate withMode:(int64_t)mode withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleDatePicker:minimumDate:maximumDate:withMode:withTag:]", 800, "\n");
  }

  if (!picker)
  {
    return 0;
  }

  v12 = MEMORY[0x277CBEB38];
  v13 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, mode, date);
  v16 = objc_msgSend_dictionaryWithObjectsAndKeys_(v12, v14, @"datePicker", v15, @"itemType", picker, @"startValue", v13, @"datePickerMode", @"top", @"position", 0);
  v20 = v16;
  if (date)
  {
    objc_msgSend_setObject_forKey_(v16, v17, date, @"minValue");
  }

  if (maximumDate)
  {
    objc_msgSend_setObject_forKey_(v20, v17, maximumDate, @"maxValue");
  }

  v21 = objc_msgSend_array(MEMORY[0x277CBEB18], v17, v18, v19);
  objc_msgSend_addObject_(v21, v22, v20, v23);
  v24 = MEMORY[0x277CBEB38];
  v27 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v25, tag, v26);
  return objc_msgSend_dictionaryWithObjectsAndKeys_(v24, v28, v21, v29, @"items", v27, @"tag", 0);
}

- (id)createRowStyleBasicWithUnreadBubble:(unint64_t)bubble text1:(id)text1 text2:(id)text2 withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleBasicWithUnreadBubble:text1:text2:withTag:]", 800, "\n");
  }

  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, bubble, text1);
  objc_msgSend_commonAddOptionalStaticText_withNeighborItem_toCellItems_(self, v11, text1, 0, v10);
  v12 = MEMORY[0x277CBEB38];
  v15 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v13, bubble, v14);
  v18 = objc_msgSend_dictionaryWithObjectsAndKeys_(v12, v16, @"unreadBubbleCount", v17, @"itemType", v15, @"startValue", @"right", @"position", 0);
  objc_msgSend_addObject_(v10, v19, v18, v20);
  v21 = MEMORY[0x277CBEB38];
  detailTextColor = self->_detailTextColor;
  v26 = objc_msgSend_systemLabelFont(TableViewManager, v23, v24, v25);
  v27 = MEMORY[0x277CCABB0];
  v31 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], v28, v29, v30);
  v35 = objc_msgSend_userInterfaceLayoutDirection(v31, v32, v33, v34);
  v38 = objc_msgSend_numberWithInteger_(v27, v36, 2 * (v35 == 0), v37);
  v41 = objc_msgSend_objectAtIndex_(v10, v39, 1, v40);
  v44 = objc_msgSend_dictionaryWithObjectsAndKeys_(v21, v42, @"labelView", v43, @"itemType", detailTextColor, @"color", v26, @"font", v38, @"alignment", v41, @"neighbor", @"left", @"position", 0);
  v47 = v44;
  if (text2)
  {
    objc_msgSend_setObject_forKey_(v44, v45, text2, @"startValue");
  }

  objc_msgSend_addObject_(v10, v45, v47, v46);
  v48 = MEMORY[0x277CBEB38];
  v51 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v49, tag, v50);
  return objc_msgSend_dictionaryWithObjectsAndKeys_(v48, v52, v10, v53, @"items", v51, @"tag", 0);
}

- (unint64_t)findAndSetItemObject:(id)object toValue:(id)value inCellWithInternalRowSectionTagValue:(unint64_t)tagValue
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = tagValue >> 16;
  RowArrayForSection = objc_msgSend_getRowArrayForSection_(self, a2, tagValue, value);
  if (v7 >= objc_msgSend_count(RowArrayForSection, v9, v10, v11))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v14 = objc_msgSend_objectAtIndex_(RowArrayForSection, v12, v7, v13);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = objc_msgSend_objectForKey_(v14, v15, @"items", v16);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v29, v33, 16);
  if (!v19)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v22 = v19;
  v23 = 0;
  v24 = *v30;
  while (2)
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v30 != v24)
      {
        objc_enumerationMutation(v17);
      }

      v26 = *(*(&v29 + 1) + 8 * i);
      if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C88, "[TableViewManager findAndSetItemObject:toValue:inCellWithInternalRowSectionTagValue:]", 800, "curItem %@\n", v26);
      }

      if (objc_msgSend_objectForKey_(v26, v20, @"cachedView", v21) == object)
      {
        if (value)
        {
          objc_msgSend_setObject_forKey_(v26, v27, value, @"currentValue");
        }

        return v23;
      }

      objc_opt_class();
      v23 += objc_opt_isKindOfClass() & 1;
    }

    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v29, v33, 16);
    result = 0x7FFFFFFFFFFFFFFFLL;
    if (v22)
    {
      continue;
    }

    break;
  }

  return result;
}

- (id)getInfoForItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCell:(id)cell
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = objc_msgSend_objectForKey_(cell, a2, @"items", index, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v18, v22, 16);
  if (v9)
  {
    v12 = v9;
    v13 = 0;
    v14 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        if (objc_msgSend_objectForKey_(v16, v10, @"itemType", v11) == type)
        {
          if (v13 == index)
          {
            return v16;
          }

          ++v13;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v18, v22, 16);
    }

    while (v12);
  }

  return 0;
}

- (id)getValueForItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCell:(id)cell
{
  result = objc_msgSend_getInfoForItemOfType_atItemTypeIndex_inCell_(self, a2, type, index, cell);
  if (result)
  {
    v8 = result;
    result = objc_msgSend_objectForKey_(result, v6, @"currentValue", v7);
    if (!result)
    {

      return objc_msgSend_objectForKey_(v8, v9, @"startValue", v10);
    }
  }

  return result;
}

- (id)getValueForItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCellAtIndexPath:(id)path
{
  result = objc_msgSend_getCellDictForCellAtIndexPath_(self, a2, path, index);
  if (result)
  {

    return objc_msgSend_getValueForItemOfType_atItemTypeIndex_inCell_(self, v9, type, index, result);
  }

  return result;
}

- (id)getValueForItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCellWithTag:(int64_t)tag
{
  v40 = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray", index);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v34, v39, 16);
  if (result)
  {
    v14 = result;
    selfCopy = self;
    typeCopy = type;
    indexCopy = index;
    v15 = *v35;
    v26 = *v35;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v35 != v15)
      {
        objc_enumerationMutation(v9);
      }

      result = objc_msgSend_objectForKey_(*(*(&v34 + 1) + 8 * v16), v12, @"sectionRows", v13, v26);
      if (!result)
      {
        break;
      }

      v18 = result;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(result, v17, &v30, v38, 16);
      if (v19)
      {
        v20 = v19;
        v21 = *v31;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v31 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v30 + 1) + 8 * i);
            v24 = objc_msgSend_objectForKey_(v23, v12, @"tag", v13);
            if (v24 && objc_msgSend_integerValue(v24, v12, v25, v13) == tag)
            {
              return objc_msgSend_getValueForItemOfType_atItemTypeIndex_inCell_(selfCopy, v12, typeCopy, indexCopy, v23);
            }
          }

          v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v12, &v30, v38, 16);
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      ++v16;
      v15 = v26;
      if (v16 == v14)
      {
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v34, v39, 16);
        result = 0;
        if (v14)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

- (void)setValue:(id)value forItem:(id)item
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager setValue:forItem:]", 800, "\n");
  }

  v9 = objc_msgSend_objectForKey_(item, a2, @"itemType", item);
  if (value)
  {
    objc_msgSend_setObject_forKey_(item, v7, value, @"startValue");
    objc_msgSend_setObject_forKey_(item, v10, value, @"currentValue");
  }

  else
  {
    objc_msgSend_removeObjectForKey_(item, v7, @"currentValue", v8);
    objc_msgSend_removeObjectForKey_(item, v13, @"startValue", v14);
  }

  v15 = objc_msgSend_objectForKey_(item, v11, @"cachedView", v12);
  if (v15)
  {
    v16 = v15;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = MEMORY[0x277CCACA8];
      Letter = objc_msgSend_stringByCapitalizingFirstLetter(v9, v17, v18, v19);
      v24 = objc_msgSend_stringWithFormat_(v20, v22, @"set%@Value:usingItemInfo:", v23, Letter);
      v25 = NSSelectorFromString(v24);
      if (objc_opt_respondsToSelector())
      {

        objc_msgSend_performSelector_withObject_withObject_(self, v26, v25, v16, item);
      }
    }
  }
}

- (void)setMinValue:(id)value andMaxValue:(id)maxValue forItem:(id)item
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager setMinValue:andMaxValue:forItem:]", 800, "\n");
  }

  v11 = objc_msgSend_objectForKey_(item, a2, @"itemType", maxValue);
  if (!value)
  {
    objc_msgSend_removeObjectForKey_(item, v9, @"minValue", v10);
    if (maxValue)
    {
      goto LABEL_7;
    }

LABEL_9:
    objc_msgSend_removeObjectForKey_(item, v12, @"maxValue", v13);
    goto LABEL_10;
  }

  objc_msgSend_setObject_forKey_(item, v9, value, @"minValue");
  if (!maxValue)
  {
    goto LABEL_9;
  }

LABEL_7:
  objc_msgSend_setObject_forKey_(item, v12, maxValue, @"maxValue");
LABEL_10:
  v16 = objc_msgSend_objectForKey_(item, v14, @"cachedView", v15);
  if (v16)
  {
    v17 = v16;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = MEMORY[0x277CCACA8];
      Letter = objc_msgSend_stringByCapitalizingFirstLetter(v11, v18, v19, v20);
      v25 = objc_msgSend_stringWithFormat_(v21, v23, @"set%@Value:usingItemInfo:", v24, Letter);
      v26 = NSSelectorFromString(v25);
      if (objc_opt_respondsToSelector())
      {

        objc_msgSend_performSelector_withObject_withObject_(self, v27, v26, v17, item);
      }
    }
  }
}

- (void)setValue:(id)value forItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCellWithTag:(int64_t)tag
{
  v46 = *MEMORY[0x277D85DE8];
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager setValue:forItemOfType:atItemTypeIndex:inCellWithTag:]", 800, "type = %@  index = %d  cell tag = %d\n", type, index, tag);
  }

  typeCopy = type;
  indexCopy = index;
  v10 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray", type);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v40, v45, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v41;
    v31 = *v41;
    v32 = v10;
LABEL_7:
    v17 = 0;
    while (1)
    {
      if (*v41 != v16)
      {
        objc_enumerationMutation(v10);
      }

      v18 = objc_msgSend_objectForKey_(*(*(&v40 + 1) + 8 * v17), v13, @"sectionRows", v14);
      if (!v18)
      {
        break;
      }

      v20 = v18;
      selfCopy = self;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v36, v44, 16);
      if (v22)
      {
        v23 = v22;
        v24 = *v37;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v37 != v24)
            {
              objc_enumerationMutation(v20);
            }

            v26 = *(*(&v36 + 1) + 8 * i);
            v27 = objc_msgSend_objectForKey_(v26, v13, @"tag", v14);
            if (v27 && objc_msgSend_integerValue(v27, v13, v28, v14) == tag)
            {
              InfoForItemOfType_atItemTypeIndex_inCell = objc_msgSend_getInfoForItemOfType_atItemTypeIndex_inCell_(selfCopy, v13, typeCopy, indexCopy, v26);
              if (InfoForItemOfType_atItemTypeIndex_inCell)
              {
                objc_msgSend_setValue_forItem_(selfCopy, v30, value, InfoForItemOfType_atItemTypeIndex_inCell);
              }

              return;
            }
          }

          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v13, &v36, v44, 16);
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      ++v17;
      self = selfCopy;
      v16 = v31;
      v10 = v32;
      if (v17 == v15)
      {
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v13, &v40, v45, 16);
        if (v15)
        {
          goto LABEL_7;
        }

        return;
      }
    }
  }
}

- (void)setMinValue:(id)value andMaxValue:(id)maxValue forItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCellWithTag:(int64_t)tag
{
  v47 = *MEMORY[0x277D85DE8];
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager setMinValue:andMaxValue:forItemOfType:atItemTypeIndex:inCellWithTag:]", 800, "type = %@  index = %d  cell tag = %d\n", type, index, tag);
  }

  typeCopy = type;
  indexCopy = index;
  v11 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray", maxValue);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v41, v46, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v42;
    v31 = *v42;
    v32 = v11;
LABEL_7:
    v18 = 0;
    while (1)
    {
      if (*v42 != v17)
      {
        objc_enumerationMutation(v11);
      }

      v19 = objc_msgSend_objectForKey_(*(*(&v41 + 1) + 8 * v18), v14, @"sectionRows", v15);
      if (!v19)
      {
        break;
      }

      v21 = v19;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v37, v45, 16);
      if (v22)
      {
        v23 = v22;
        v24 = *v38;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v38 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v37 + 1) + 8 * i);
            v27 = objc_msgSend_objectForKey_(v26, v14, @"tag", v15);
            if (v27 && objc_msgSend_integerValue(v27, v14, v28, v15) == tag)
            {
              InfoForItemOfType_atItemTypeIndex_inCell = objc_msgSend_getInfoForItemOfType_atItemTypeIndex_inCell_(self, v14, typeCopy, indexCopy, v26);
              if (InfoForItemOfType_atItemTypeIndex_inCell)
              {
                objc_msgSend_setMinValue_andMaxValue_forItem_(self, v30, value, maxValue, InfoForItemOfType_atItemTypeIndex_inCell);
              }

              return;
            }
          }

          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v14, &v37, v45, 16);
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      ++v18;
      v17 = v31;
      v11 = v32;
      if (v18 == v16)
      {
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v14, &v41, v46, 16);
        if (v16)
        {
          goto LABEL_7;
        }

        return;
      }
    }
  }
}

- (void)setValue:(id)value forItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCellAtIndexPath:(id)path
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    v11 = objc_msgSend_section(path, a2, value, type);
    v15 = objc_msgSend_row(path, v12, v13, v14);
    sub_23EB75374(&dword_27E382D88, "[TableViewManager setValue:forItemOfType:atItemTypeIndex:inCellAtIndexPath:]", 800, "type = %@  index = %d  section = %d  row = %d\n", type, index, v11, v15);
  }

  CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, a2, path, type);
  if (CellDictForCellAtIndexPath)
  {
    InfoForItemOfType_atItemTypeIndex_inCell = objc_msgSend_getInfoForItemOfType_atItemTypeIndex_inCell_(self, v17, type, index, CellDictForCellAtIndexPath);
    if (InfoForItemOfType_atItemTypeIndex_inCell)
    {

      objc_msgSend_setValue_forItem_(self, v19, value, InfoForItemOfType_atItemTypeIndex_inCell);
    }
  }
}

- (BOOL)setNewRow:(id)row itemAttribute:(id)attribute forItemOfType:(id)type atItemTypeIndex:(unint64_t)index toValue:(id)value
{
  selfCopy = self;
  LOBYTE(self) = 0;
  if (row)
  {
    if (attribute)
    {
      if (type)
      {
        if (value)
        {
          self = objc_msgSend_getInfoForItemOfType_atItemTypeIndex_inCell_(selfCopy, a2, type, index, row);
          if (self)
          {
            if (type == @"editTextView" || type == @"labelView" || type == @"multilineLabelView")
            {
              objc_msgSend_setObject_forKey_(self, v11, value, attribute);
              LOBYTE(self) = 1;
            }

            else
            {
              LOBYTE(self) = 0;
            }
          }
        }
      }
    }
  }

  return self;
}

- (void)setNewRow:(id)row tag:(unint64_t)tag
{
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, tag, tag);

  objc_msgSend_setObject_forKey_(row, v5, v6, @"tag");
}

- (void)setNewRow:(id)row accessoryType:(int64_t)type
{
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, type, type);

  objc_msgSend_setObject_forKey_(row, v5, v6, @"accessory");
}

- (void)setNewRow:(id)row editingAccessoryType:(int64_t)type
{
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, type, type);

  objc_msgSend_setObject_forKey_(row, v5, v6, @"editingAccessory");
}

- (void)setNewRow:(id)row verifierAccessoryType:(int)type
{
  if (dword_27E382D08 <= 800 && (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D08, "[TableViewManager setNewRow:verifierAccessoryType:]", 800, "\n");
  }

  v7 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, type, *&type);

  objc_msgSend_setObject_forKey_(row, v6, v7, @"verifierAccessory");
}

- (void)setNewRow:(id)row editingStyle:(int64_t)style
{
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, style, style);

  objc_msgSend_setObject_forKey_(row, v5, v6, @"editingStyle");
}

- (void)setNewRow:(id)row textFieldViewMode:(int64_t)mode
{
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, mode, mode);

  objc_msgSend_setObject_forKey_(row, v5, v6, @"textFieldViewMode");
}

- (void)setNewRow:(id)row selectableCell:(BOOL)cell
{
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, cell, cell);

  objc_msgSend_setObject_forKey_(row, v5, v6, @"selectableCell");
}

- (void)setCellRowInfoItem:(id)item atIndex:(unint64_t)index forKey:(id)key toValue:(id)value
{
  if (item)
  {
    if (key)
    {
      if (value)
      {
        v9 = objc_msgSend_valueForKey_(item, a2, @"items", index);
        if (v9)
        {
          v12 = objc_msgSend_objectAtIndex_(v9, v10, index, v11);
          if (v12)
          {

            objc_msgSend_setObject_forKey_(v12, v13, value, key);
          }
        }
      }
    }
  }
}

- (void)makeFirstEditableCellCurrentResponder
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager makeFirstEditableCellCurrentResponder]", 800, "\n");
  }

  v11 = 0;
  self->_currentFirstResponder = 0;

  self->_currentFirstResponderCellPath = 0;
  FirstResponderInTableView_foundParentCell = objc_msgSend_findFirstResponderInTableView_foundParentCell_(self, v3, self->_managedTableView, &v11);
  if (FirstResponderInTableView_foundParentCell)
  {
    v8 = FirstResponderInTableView_foundParentCell;
    objc_msgSend_becomeFirstResponder(FirstResponderInTableView_foundParentCell, v5, v6, v7);
    self->_currentFirstResponder = v8;
    self->_currentFirstResponderCellPath = objc_msgSend_indexPathForCell_(self->_managedTableView, v9, v11, v10);
  }
}

- (id)findFirstResponderInView:(id)view
{
  v19 = *MEMORY[0x277D85DE8];
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager findFirstResponderInView:]", 800, "view = %@\n", view);
  }

  v5 = objc_msgSend_subviews(view, a2, view, v3);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v14, v18, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_7:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v14, v18, 16);
        if (v8)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v11 = 0;
  }

  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager findFirstResponderInView:]", 800, "returning %@\n", v11);
  }

  return v11;
}

- (id)findFirstResponderInTableView:(id)view fromSection:(unint64_t)section fromRow:(unint64_t)row foundParentCell:(id *)cell
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager findFirstResponderInTableView:fromSection:fromRow:foundParentCell:]", 800, "section %d  from row %d\n", section, row);
  }

  if (objc_msgSend_numberOfRowsInSection_(view, a2, section, section) <= row)
  {
LABEL_11:
    v22 = 0;
    goto LABEL_12;
  }

  while (1)
  {
    v12 = objc_msgSend_indexPathForRow_inSection_(MEMORY[0x277CCAA70], v11, row, section);
    if (v12)
    {
      break;
    }

LABEL_10:
    if (row >= objc_msgSend_numberOfRowsInSection_(view, v13, section, v14))
    {
      goto LABEL_11;
    }
  }

  v15 = objc_msgSend_cellForRowAtIndexPath_(view, v13, v12, v14);
  if (!v15 || (v17 = v15, v18 = objc_msgSend_contentView(v15, v13, v16, v14), (FirstResponderInView = objc_msgSend_findFirstResponderInView_(self, v19, v18, v20)) == 0))
  {
    ++row;
    goto LABEL_10;
  }

  v22 = FirstResponderInView;
  if (cell)
  {
    *cell = v17;
  }

LABEL_12:
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager findFirstResponderInTableView:fromSection:fromRow:foundParentCell:]", 800, "returning %@\n", v22);
  }

  return v22;
}

- (id)findFirstResponderInTableView:(id)view foundParentCell:(id *)cell
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager findFirstResponderInTableView:foundParentCell:]", 800, "\n");
  }

  if (objc_msgSend_numberOfSections(view, a2, view, cell) < 1)
  {
LABEL_9:
    v13 = 0;
  }

  else
  {
    v8 = 0;
    while (1)
    {
      FirstResponderInTableView_fromSection_fromRow_foundParentCell = objc_msgSend_findFirstResponderInTableView_fromSection_fromRow_foundParentCell_(self, v7, view, v8, 0, cell);
      if (FirstResponderInTableView_fromSection_fromRow_foundParentCell)
      {
        break;
      }

      if (++v8 >= objc_msgSend_numberOfSections(view, v10, v11, v12))
      {
        goto LABEL_9;
      }
    }

    v13 = FirstResponderInTableView_fromSection_fromRow_foundParentCell;
  }

  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager findFirstResponderInTableView:foundParentCell:]", 800, "returning %@\n", v13);
  }

  return v13;
}

- (BOOL)becomeFirstResponderAtIndexPath:(id)path
{
  managedTableView = self->_managedTableView;
  v7 = objc_msgSend_section(path, a2, path, v3);
  v11 = objc_msgSend_row(path, v8, v9, v10);
  FirstResponderInTableView_fromSection_fromRow_foundParentCell = objc_msgSend_findFirstResponderInTableView_fromSection_fromRow_foundParentCell_(self, v12, managedTableView, v7, v11, 0);
  objc_msgSend_becomeFirstResponder(FirstResponderInTableView_fromSection_fromRow_foundParentCell, v14, v15, v16);
  return FirstResponderInTableView_fromSection_fromRow_foundParentCell != 0;
}

- (id)findNextResponderInTableView:(id)view foundParentCell:(id *)cell
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager findNextResponderInTableView:foundParentCell:]", 800, "\n");
  }

  v7 = objc_msgSend_section(self->_currentFirstResponderCellPath, a2, view, cell);
  FirstResponderInTableView_fromSection_fromRow_foundParentCell = (objc_msgSend_row(self->_currentFirstResponderCellPath, v8, v9, v10) + 1);
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager findNextResponderInTableView:foundParentCell:]", 800, "current responder section %d  row %d\n", v7, FirstResponderInTableView_fromSection_fromRow_foundParentCell);
  }

  while (v7 < objc_msgSend_numberOfSections(view, v11, v12, v13))
  {
    FirstResponderInTableView_fromSection_fromRow_foundParentCell = objc_msgSend_findFirstResponderInTableView_fromSection_fromRow_foundParentCell_(self, v15, view, v7, FirstResponderInTableView_fromSection_fromRow_foundParentCell, cell);
    if (FirstResponderInTableView_fromSection_fromRow_foundParentCell)
    {
      goto LABEL_13;
    }

    ++v7;
  }

  FirstResponderInTableView_fromSection_fromRow_foundParentCell = 0;
LABEL_13:
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager findNextResponderInTableView:foundParentCell:]", 800, "returning %@\n", FirstResponderInTableView_fromSection_fromRow_foundParentCell);
  }

  return FirstResponderInTableView_fromSection_fromRow_foundParentCell;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v4 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray", v3);
  v8 = objc_msgSend_count(v4, v5, v6, v7);
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager numberOfSectionsInTableView:]", 800, "section count = %d\n", v8);
  }

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sectionCopy = section;
  RowArrayForSection = objc_msgSend_getRowArrayForSection_(self, a2, section, section);
  if (!RowArrayForSection)
  {
    return 0;
  }

  v9 = objc_msgSend_count(RowArrayForSection, v6, v7, v8);
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:numberOfRowsInSection:]", 800, "section %d row count = %d\n", sectionCopy, v9);
  }

  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path layoutMode:(BOOL)mode
{
  modeCopy = mode;
  v211 = *MEMORY[0x277D85DE8];
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    v9 = objc_msgSend_managedTableView(self, a2, view, path);
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager tableView:cellForRowAtIndexPath:layoutMode:]", 800, "managedTableView %@\n", v9);
  }

  v10 = objc_msgSend_row(path, a2, view, path);
  v14 = objc_msgSend_section(path, v11, v12, v13);
  selfCopy = self;
  SectionDictForSection = objc_msgSend_getSectionDictForSection_(self, v15, v14, v16);
  v20 = objc_msgSend_objectForKey_(SectionDictForSection, v18, @"sectionRows", v19);
  v23 = objc_msgSend_objectForKey_(SectionDictForSection, v21, @"sectionIsMenu", v22);
  v27 = objc_msgSend_BOOLValue(v23, v24, v25, v26);
  if (v10 >= objc_msgSend_count(v20, v28, v29, v30))
  {
    return 0;
  }

  v35 = objc_msgSend_objectAtIndex_(v20, v31, v10, v32);
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:cellForRowAtIndexPath:layoutMode:]", 800, "section %d row %d\n", v14, v10);
  }

  v36 = objc_msgSend_objectForKey_(v35, v33, @"accessory", v34);
  if (v36)
  {
    obj = objc_msgSend_integerValue(v36, v37, v38, v39);
  }

  else
  {
    obj = 0;
  }

  v41 = objc_msgSend_objectForKey_(v35, v37, @"editingAccessory", v39);
  pathCopy = path;
  if (v41)
  {
    v45 = objc_msgSend_integerValue(v41, v42, v43, v44);
  }

  else
  {
    v45 = 0;
  }

  v46 = objc_msgSend_valueForKey_(v35, v42, @"selectableCell", v44);
  v202 = v35;
  InfoForItemOfType_atItemTypeIndex_inCell = objc_msgSend_getInfoForItemOfType_atItemTypeIndex_inCell_(selfCopy, v47, @"wholeCellButtonView", 0, v35);
  v200 = v27;
  if ((objc_msgSend_BOOLValue(v46, v49, v50, v51) & 1) != 0 || InfoForItemOfType_atItemTypeIndex_inCell && !v46)
  {
    v54 = 1;
  }

  else
  {
    v56 = obj == 1 || v45 == 1;
    v54 = v56 | v27;
  }

  v57 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v52, v54 & 1, v53);
  objc_msgSend_setObject_forKey_(v202, v58, v57, @"selectable");
  v63 = objc_msgSend_objectForKey_(v202, v59, @"noBackground", v60);
  if (v63)
  {
    v64 = @"NoBackgroundTypeCellID";
  }

  else
  {
    v64 = @"GenericTypeCellID";
  }

  v65 = objc_msgSend_objectForKey_(v202, v61, @"lastOwningCell", v62);
  if (!v65)
  {
    if (!modeCopy)
    {
      gLayoutNoBackgroundCell = objc_msgSend_dequeueReusableCellWithIdentifier_(view, v66, v64, v68);
      goto LABEL_48;
    }

    if (v63)
    {
      p_gLayoutNoBackgroundCell = &selfCopy->_gLayoutNoBackgroundCell;
      gLayoutNoBackgroundCell = selfCopy->_gLayoutNoBackgroundCell;
      if (gLayoutNoBackgroundCell)
      {
        goto LABEL_45;
      }

      v78 = @"NoBackgroundTypeCellID";
    }

    else
    {
      p_gLayoutNoBackgroundCell = &selfCopy->_gLayoutGenericCell;
      gLayoutNoBackgroundCell = selfCopy->_gLayoutGenericCell;
      if (gLayoutNoBackgroundCell)
      {
        goto LABEL_45;
      }

      v78 = @"GenericTypeCellID";
    }

    v79 = [ManagedTableViewCell alloc];
    gLayoutNoBackgroundCell = objc_msgSend_initWithStyle_reuseIdentifier_(v79, v80, 0, v78);
    *p_gLayoutNoBackgroundCell = gLayoutNoBackgroundCell;
LABEL_45:
    objc_msgSend_bounds(view, v66, v67, v68);
    if (v82 > 0.0)
    {
      objc_msgSend_frame(gLayoutNoBackgroundCell, v74, v81, v75);
      v84 = v83;
      objc_msgSend_bounds(view, v85, v86, v87);
      v76 = pathCopy;
      v71 = v202;
      if (v84 != v89)
      {
        objc_msgSend_frame(gLayoutNoBackgroundCell, v74, v88, v75);
        v91 = v90;
        v93 = v92;
        objc_msgSend_bounds(view, v94, v95, v96);
        objc_msgSend_setFrame_(gLayoutNoBackgroundCell, v97, v98, v99, v91, v93);
      }

      goto LABEL_49;
    }

LABEL_48:
    v76 = pathCopy;
    v71 = v202;
LABEL_49:
    if (!gLayoutNoBackgroundCell)
    {
      if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:cellForRowAtIndexPath:layoutMode:]", 800, "creating cell from scratch\n");
      }

      v100 = [ManagedTableViewCell alloc];
      gLayoutNoBackgroundCell = objc_msgSend_initWithStyle_reuseIdentifier_(v100, v101, 0, v64);
    }

    goto LABEL_55;
  }

  gLayoutNoBackgroundCell = v65;
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:cellForRowAtIndexPath:layoutMode:]", 800, "cell is cached, freeing\n");
  }

  v70 = gLayoutNoBackgroundCell;
  v71 = v202;
  objc_msgSend_removeObjectForKey_(v202, v72, @"lastOwningCell", v73);
  v76 = pathCopy;
LABEL_55:
  objc_msgSend_setParentTableManager_(gLayoutNoBackgroundCell, v74, selfCopy, v75);
  v104 = objc_msgSend_objectForKey_(SectionDictForSection, v102, @"furthestTextInset", v103);
  v108 = objc_msgSend_integerValue(v104, v105, v106, v107);
  objc_msgSend_setForcedRightmostEditTextInset_(gLayoutNoBackgroundCell, v109, v110, v111, v108);
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:cellForRowAtIndexPath:layoutMode:]", 800, "cell is %@\n", gLayoutNoBackgroundCell);
  }

  objc_msgSend_setAccessoryType_(gLayoutNoBackgroundCell, v112, obj, v113);
  objc_msgSend_setAccessoryView_(gLayoutNoBackgroundCell, v114, 0, v115);
  objc_msgSend_setEditingAccessoryType_(gLayoutNoBackgroundCell, v116, v45, v117);
  objc_msgSend_setEditingAccessoryView_(gLayoutNoBackgroundCell, v118, 0, v119);
  v122 = objc_msgSend_objectForKey_(v71, v120, @"verifierAccessory", v121);
  if (v122)
  {
    v126 = objc_msgSend_integerValue(v122, v123, v124, v125);
    objc_msgSend_setVerifierAccessoryView_forCell_(selfCopy, v127, v126, gLayoutNoBackgroundCell);
  }

  if (v54)
  {
    objc_msgSend_setSelectionStyle_(gLayoutNoBackgroundCell, v123, 1, v125);
    v131 = objc_msgSend_accessibilityTraits(gLayoutNoBackgroundCell, v128, v129, v130);
    objc_msgSend_setAccessibilityTraits_(gLayoutNoBackgroundCell, v132, *MEMORY[0x277D76548] | v131, v133);
  }

  else
  {
    objc_msgSend_setSelectionStyle_(gLayoutNoBackgroundCell, v123, 0, v125);
  }

  v136 = objc_msgSend_objectForKey_(v71, v134, @"tag", v135);
  v140 = selfCopy;
  if (v136)
  {
    v141 = objc_msgSend_integerValue(v136, v137, v138, v139);
    objc_msgSend_setTag_(gLayoutNoBackgroundCell, v142, v141, v143);
  }

  objc_msgSend_setCurrentIndexPath_(gLayoutNoBackgroundCell, v137, v76, v139);
  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  obja = objc_msgSend_objectForKey_(v71, v144, @"items", v145);
  v147 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v146, &v206, v210, 16);
  if (!v147)
  {
LABEL_91:
    v40 = gLayoutNoBackgroundCell;
    if (v200)
    {
      v189 = objc_msgSend_objectForKey_(v202, v148, @"menuSelected", v149);
      v193 = objc_msgSend_BOOLValue(v189, v190, v191, v192);
      objc_msgSend_setMenuCell_visualStateToSelected_atIndexPath_(v140, v194, gLayoutNoBackgroundCell, v193, pathCopy);
    }

    v195 = objc_msgSend_objectForKey_(v202, v148, @"accessibilityLabel", v149);
    if (v195)
    {
      objc_msgSend_setAccessibilityLabel_(gLayoutNoBackgroundCell, v196, v195, v197);
    }

    objc_msgSend_setCellDict_(gLayoutNoBackgroundCell, v196, v202, v197);
    return v40;
  }

  v150 = v147;
  v151 = v14 | (v10 << 16);
  v152 = *v207;
LABEL_68:
  v153 = 0;
  while (1)
  {
    if (*v207 != v152)
    {
      objc_enumerationMutation(obja);
    }

    v154 = *(*(&v206 + 1) + 8 * v153);
    v155 = objc_msgSend_objectForKey_(v154, v148, @"itemType", v149);
    v158 = objc_msgSend_objectForKey_(v154, v156, @"startValue", v157);
    if (v158)
    {
      v161 = v158;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_isEqualToString_(v161, v162, @"dynamicValue", v163))
      {
        objc_msgSend_delegate(v140, v162, v164, v163);
        if (objc_opt_respondsToSelector())
        {
          v166 = objc_msgSend_delegate(v140, v159, v165, v160);
          v170 = objc_msgSend_tag(gLayoutNoBackgroundCell, v167, v168, v169);
          v172 = objc_msgSend_valueForItemOfType_atTypeIndex_inCellWithTag_(v166, v171, v155, 0, v170);
          objc_msgSend_setObject_forKey_(v154, v173, v172, @"currentValue");
        }
      }

      else if (!objc_msgSend_objectForKey_(v154, v162, @"currentValue", v163))
      {
        objc_msgSend_setObject_forKey_(v154, v159, v161, @"currentValue");
      }
    }

    v174 = objc_msgSend_objectForKey_(v154, v159, @"cachedView", v160);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v174)
    {
      if (isKindOfClass)
      {
        v179 = MEMORY[0x277CCACA8];
        Letter = objc_msgSend_stringByCapitalizingFirstLetter(v155, v176, v177, v178);
        v180 = v179;
        v140 = selfCopy;
        v183 = objc_msgSend_stringWithFormat_(v180, v181, @"set%@Value:usingItemInfo:", v182, Letter);
        v184 = NSSelectorFromString(v183);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_performSelector_withObject_withObject_(selfCopy, v176, v184, v174, v154);
        }
      }

      goto LABEL_89;
    }

    if (isKindOfClass)
    {
      v185 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v176, @"%@:", v178, v155);
      v186 = NSSelectorFromString(v185);
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        return gLayoutNoBackgroundCell;
      }

      v174 = objc_msgSend_performSelector_withObject_(v140, v187, v186, v154);
      if (!v174)
      {
        return gLayoutNoBackgroundCell;
      }

      goto LABEL_88;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    v174 = v155;
    if (!v155)
    {
      return gLayoutNoBackgroundCell;
    }

LABEL_88:
    objc_msgSend_setObject_forKey_(v154, v188, v174, @"cachedView");
LABEL_89:
    objc_msgSend_setTag_(v174, v176, v151, v178);
    if (v150 == ++v153)
    {
      v150 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v148, &v206, v210, 16);
      if (v150)
      {
        goto LABEL_68;
      }

      goto LABEL_91;
    }
  }

  if (dword_27E382C88 > 800)
  {
    return gLayoutNoBackgroundCell;
  }

  v40 = gLayoutNoBackgroundCell;
  if (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:cellForRowAtIndexPath:layoutMode:]", 800, "invalid kTableCellItemTypeKey value '%@'\n", v155);
  }

  return v40;
}

- (id)getRepresentedObjectForCellAtIndexPath:(id)path
{
  result = objc_msgSend_getCellDictForCellAtIndexPath_(self, a2, path, v3);
  if (result)
  {

    return objc_msgSend_objectForKey_(result, v5, @"representedObject", v6);
  }

  return result;
}

- (void)updateHeader:(id)header forSectionWithIdentifier:(id)identifier
{
  v6 = objc_msgSend_indexOfSectionWithIdentifier_(self, a2, identifier, identifier);

  MEMORY[0x2821F9670](self, sel_updateHeader_inSection_, header, v6);
}

- (void)updateHeader:(id)header inSection:(unint64_t)section
{
  if (section != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_setDescriptorObject_forKey_inSection_(self, a2, header, @"header", section);

    MEMORY[0x2821F9670](self, sel_reloadSection_, section, v7);
  }
}

- (void)updateFooter:(id)footer forSectionWithIdentifier:(id)identifier
{
  v6 = objc_msgSend_indexOfSectionWithIdentifier_(self, a2, identifier, identifier);

  MEMORY[0x2821F9670](self, sel_updateFooter_inSection_, footer, v6);
}

- (void)updateFooter:(id)footer inSection:(unint64_t)section
{
  if (section != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_setDescriptorObject_forKey_inSection_(self, a2, footer, @"footer", section);
    if (!self->_handlingBulkUpdate)
    {
      v9 = objc_msgSend_areAnimationsEnabled(MEMORY[0x277D75D18], v6, v7, v8);
      objc_msgSend_setAnimationsEnabled_(MEMORY[0x277D75D18], v10, 0, v11);
      managedTableView = self->_managedTableView;
      v15 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v13, section, v14);
      objc_msgSend_reloadSections_withRowAnimation_(managedTableView, v16, v15, 5);
      v19 = MEMORY[0x277D75D18];

      objc_msgSend_setAnimationsEnabled_(v19, v17, v9, v18);
    }
  }
}

- (void)setRepresentedObject:(id)object forCellAtIndexPath:(id)path
{
  CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, a2, path, path);
  if (CellDictForCellAtIndexPath)
  {

    objc_msgSend_setObject_forKey_(CellDictForCellAtIndexPath, v6, object, @"representedObject");
  }
}

- (double)totalTableHeight
{
  v5 = objc_msgSend_tableHeaderView(self->_managedTableView, a2, v2, v3);
  objc_msgSend_frame(v5, v6, v7, v8);
  v10 = v9 + 0.0;
  objc_msgSend_totalTableSectionsHeight(self, v11, v12, v13);
  v15 = v14 + v10;
  v19 = objc_msgSend_tableFooterView(self->_managedTableView, v16, v17, v18);
  objc_msgSend_frame(v19, v20, v21, v22);
  return v15 + v23;
}

- (double)totalTableSectionsHeight
{
  v25[1] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_numberOfSections(self->_managedTableView, a2, v2, v3) < 1)
  {
    v9 = 0.0;
  }

  else
  {
    v7 = 0;
    v8 = *MEMORY[0x277D740A8];
    v9 = 0.0;
    do
    {
      objc_msgSend_rectForSection_(self->_managedTableView, v5, v7, v6);
      v12 = v11;
      if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C88, "[TableViewManager totalTableSectionsHeight]", 800, "section %f\n", v12);
      }

      v9 = v9 + v12;
      DescriptorObjectForKey_inSection = objc_msgSend_getDescriptorObjectForKey_inSection_(self, v10, @"footer", v7);
      if (DescriptorObjectForKey_inSection)
      {
        v17 = DescriptorObjectForKey_inSection;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = v8;
          v25[0] = objc_msgSend_systemFontOfSize_(MEMORY[0x277D74300], v14, v15, v16, 15.0);
          v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v25, &v24, 1);
          objc_msgSend_boundingRectWithSize_options_attributes_context_(v17, v20, 1, v19, 0, 300.0, 1024.0);
          v9 = v9 + v21;
          if (dword_27E382C88 <= 800)
          {
            v22 = v21;
            if (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u))
            {
              sub_23EB75374(&dword_27E382C88, "[TableViewManager totalTableSectionsHeight]", 800, "Footer text %f\n", v22);
            }
          }
        }
      }

      ++v7;
    }

    while (v7 < objc_msgSend_numberOfSections(self->_managedTableView, v14, v15, v16));
  }

  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager totalTableSectionsHeight]", 800, "returning %f\n", v9);
  }

  return v9;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    v7 = objc_msgSend_managedTableView(self, a2, view, path);
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager tableView:heightForRowAtIndexPath:]", 800, "managedTableView %@\n", v7);
  }

  CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, a2, path, path);
  if (!CellDictForCellAtIndexPath)
  {
    return 44.0;
  }

  v11 = objc_msgSend_objectForKey_(CellDictForCellAtIndexPath, v9, @"cachedHeight", v10);
  v12 = MEMORY[0x277CCABB0];
  objc_msgSend_bounds(view, v13, v14, v15);
  *&v17 = v16;
  v21 = objc_msgSend_numberWithFloat_(v12, v18, v19, v20, v17);
  v24 = objc_msgSend_objectForKey_(v11, v22, v21, v23);
  if (!v24)
  {
    v30 = objc_msgSend_tableView_cellForRowAtIndexPath_layoutMode_(self, v25, view, path, 1);
    if (v30)
    {
      v34 = v30;
      objc_msgSend_layoutSubviews(v30, v31, v32, v33);
      objc_msgSend_neededContentHeight(v34, v35, v36, v37);
      v29 = v38;
      v42 = objc_msgSend_section(path, v39, v40, v41);
      SectionDictForSection = objc_msgSend_getSectionDictForSection_(self, v43, v42, v44);
      v48 = objc_msgSend_objectForKey_(SectionDictForSection, v46, @"furthestTextInset", v47);
      v52 = objc_msgSend_integerValue(v48, v49, v50, v51);
      objc_msgSend_computedRightmostEditTextInset(v34, v53, v54, v55);
      if (v59 > v52)
      {
        if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
        {
          objc_msgSend_computedRightmostEditTextInset(v34, v56, v57, v58);
          sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:heightForRowAtIndexPath:]", 800, "computed max edit text inset = %.1f\n", v60);
        }

        v61 = MEMORY[0x277CCABB0];
        objc_msgSend_computedRightmostEditTextInset(v34, v56, v57, v58);
        v65 = objc_msgSend_numberWithInteger_(v61, v63, v62, v64);
        objc_msgSend_setObject_forKey_(SectionDictForSection, v66, v65, @"furthestTextInset");
      }

      goto LABEL_18;
    }

    return 44.0;
  }

  objc_msgSend_floatValue(v24, v25, v26, v27);
  v29 = v28;
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager tableView:heightForRowAtIndexPath:]", 800, "using cached height: %.0f\n", v29);
  }

LABEL_18:
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:heightForRowAtIndexPath:]", 800, "returning %f\n", v29);
  }

  return v29;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  sectionCopy = section;
  DescriptorObjectForKey_inSection = objc_msgSend_getDescriptorObjectForKey_inSection_(self, a2, @"headerCache", section);
  if (DescriptorObjectForKey_inSection)
  {
    objc_msgSend_bounds(DescriptorObjectForKey_inSection, v6, v7, v8);
    v10 = v9;
  }

  else
  {
    v10 = *MEMORY[0x277D76F30];
  }

  if (dword_27E382D48 <= 800 && (dword_27E382D48 != -1 || sub_23EB74AC8(&dword_27E382D48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D48, "[TableViewManager tableView:heightForHeaderInSection:]", 800, "section %d returning %f\n", sectionCopy, v10);
  }

  return v10;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (dword_27E382D48 <= 800 && (dword_27E382D48 != -1 || sub_23EB74AC8(&dword_27E382D48, 0x320u)))
  {
    v6 = objc_msgSend_managedTableView(self, a2, view, section);
    sub_23EB75374(&dword_27E382D48, "[TableViewManager tableView:titleForHeaderInSection:]", 800, "managedTableView %@\n", v6);
  }

  DescriptorObjectForKey_inSection = objc_msgSend_getDescriptorObjectForKey_inSection_(self, a2, @"header", section);
  if (DescriptorObjectForKey_inSection)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      DescriptorObjectForKey_inSection = 0;
    }
  }

  if (dword_27E382D48 <= 800 && (dword_27E382D48 != -1 || sub_23EB74AC8(&dword_27E382D48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D48, "[TableViewManager tableView:titleForHeaderInSection:]", 800, "section %d returning %@\n", section, DescriptorObjectForKey_inSection);
  }

  return DescriptorObjectForKey_inSection;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  DescriptorObjectForKey_inSection = objc_msgSend_getDescriptorObjectForKey_inSection_(self, a2, @"header", section);
  if (DescriptorObjectForKey_inSection)
  {
    SectionDictForSection = objc_msgSend_getSectionDictForSection_(self, v6, section, v7);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_setObject_forKey_(SectionDictForSection, v10, DescriptorObjectForKey_inSection, @"headerCache");
    }

    else
    {
      DescriptorObjectForKey_inSection = 0;
    }
  }

  if (dword_27E382D48 <= 800 && (dword_27E382D48 != -1 || sub_23EB74AC8(&dword_27E382D48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D48, "[TableViewManager tableView:viewForHeaderInSection:]", 800, "section %d returning %@\n", section, DescriptorObjectForKey_inSection);
  }

  return DescriptorObjectForKey_inSection;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  v4 = *MEMORY[0x277D76F30];
  if (dword_27E382D48 <= 800)
  {
    sectionCopy = section;
    if (dword_27E382D48 != -1 || sub_23EB74AC8(&dword_27E382D48, 0x320u))
    {
      sub_23EB75374(&dword_27E382D48, "[TableViewManager tableView:heightForFooterInSection:]", 800, "section %d returning %f\n", sectionCopy, v4);
    }
  }

  return v4;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  result = objc_msgSend_getDescriptorObjectForKey_inSection_(self, a2, @"footer", section);
  if (result)
  {
    v5 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  result = objc_msgSend_getDescriptorObjectForKey_inSection_(self, a2, @"footer", section);
  if (result)
  {
    v5 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:willSelectRowAtIndexPath:]", 800, "\n");
  }

  v6 = objc_msgSend_section(pathCopy, a2, view, path);
  SectionDictForSection = objc_msgSend_getSectionDictForSection_(self, v7, v6, v8);
  if (!SectionDictForSection)
  {
    return 0;
  }

  v12 = objc_msgSend_objectForKey_(SectionDictForSection, v10, @"sectionRows", v11);
  v16 = objc_msgSend_row(pathCopy, v13, v14, v15);
  if (v16 >= objc_msgSend_count(v12, v17, v18, v19))
  {
    return 0;
  }

  v23 = objc_msgSend_row(pathCopy, v20, v21, v22);
  v26 = objc_msgSend_objectAtIndex_(v12, v24, v23, v25);
  v29 = objc_msgSend_objectForKey_(v26, v27, @"selectable", v28);
  if ((objc_msgSend_BOOLValue(v29, v30, v31, v32) & 1) == 0)
  {
    return 0;
  }

  return pathCopy;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:didSelectRowAtIndexPath:]", 800, "\n");
  }

  v7 = objc_msgSend_section(path, a2, view, path);
  SectionDictForSection = objc_msgSend_getSectionDictForSection_(self, v8, v7, v9);
  if (SectionDictForSection)
  {
    v13 = SectionDictForSection;
    v14 = objc_msgSend_cellForRowAtIndexPath_(self->_managedTableView, v11, path, v12);
    v17 = objc_msgSend_objectForKey_(v13, v15, @"sectionIsMenu", v16);
    v23 = 0.0;
    if (objc_msgSend_BOOLValue(v17, v18, v19, v20))
    {
      objc_msgSend_selectMenuCellAtIndexPath_(self, v21, path, v22);
      v23 = 0.15;
    }

    objc_msgSend_deselectRowAtIndexPath_animated_(view, v21, path, 1);
    if (v14 && objc_msgSend_delegate(self, v24, v25, v26))
    {

      objc_msgSend_performSelector_withObject_afterDelay_(self, v27, sel_deferedTouchInCellAtIndexPath_, path, v23);
    }
  }

  else
  {

    objc_msgSend_deselectRowAtIndexPath_animated_(view, v11, path, 1);
  }
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, a2, path, path);
  if (!CellDictForCellAtIndexPath)
  {
    return 0;
  }

  v7 = objc_msgSend_valueForKey_(CellDictForCellAtIndexPath, v5, @"editingStyle", v6);
  if (!v7)
  {
    return 0;
  }

  return objc_msgSend_integerValue(v7, v8, v9, v10);
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  objc_msgSend_delegate(self, a2, view, style);
  if (objc_opt_respondsToSelector())
  {
    v11 = objc_msgSend_delegate(self, v8, v9, v10);

    MEMORY[0x2821F9670](v11, sel_commitEditingStyle_forRowAtIndexPath_, style, path);
  }
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  objc_msgSend_delegate(self, a2, view, path);
  if (objc_opt_respondsToSelector())
  {
    v9 = objc_msgSend_delegate(self, v6, v7, v8);

    MEMORY[0x2821F9670](v9, sel_accessoryButtonTappedForRowWithIndexPath_, path, v10);
  }
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  objc_msgSend_delegate(self, a2, view, path);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v9 = objc_msgSend_delegate(self, v6, v7, v8);

  return MEMORY[0x2821F9670](v9, sel_shouldIndentWhileEditingRowAtIndexPath_, path, v10);
}

- (BOOL)tableView:(id)view shouldShowMenuForRowAtIndexPath:(id)path
{
  v24 = *MEMORY[0x277D85DE8];
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:shouldShowMenuForRowAtIndexPath:]", 800, "\n");
  }

  CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, a2, path, path);
  if (CellDictForCellAtIndexPath)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = objc_msgSend_objectForKey_(CellDictForCellAtIndexPath, v7, @"items", v8, 0);
    CellDictForCellAtIndexPath = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v19, v23, 16);
    if (CellDictForCellAtIndexPath)
    {
      v13 = CellDictForCellAtIndexPath;
      v14 = *v20;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = objc_msgSend_objectForKey_(*(*(&v19 + 1) + 8 * i), v11, @"canCopy", v12);
          if (v16 && (objc_msgSend_BOOLValue(v16, v11, v17, v12) & 1) != 0)
          {
            LOBYTE(CellDictForCellAtIndexPath) = 1;
            return CellDictForCellAtIndexPath;
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v19, v23, 16);
        LOBYTE(CellDictForCellAtIndexPath) = 0;
        if (v13)
        {
          continue;
        }

        break;
      }
    }
  }

  return CellDictForCellAtIndexPath;
}

- (BOOL)tableView:(id)view canPerformAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender
{
  v27 = *MEMORY[0x277D85DE8];
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:canPerformAction:forRowAtIndexPath:withSender:]", 800, "\n");
  }

  if (sel_copy_ == action)
  {
    CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, a2, path, action);
    if (CellDictForCellAtIndexPath)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = objc_msgSend_objectForKey_(CellDictForCellAtIndexPath, v10, @"items", v11, 0);
      CellDictForCellAtIndexPath = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v22, v26, 16);
      if (CellDictForCellAtIndexPath)
      {
        v16 = CellDictForCellAtIndexPath;
        v17 = *v23;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(v12);
            }

            v19 = objc_msgSend_objectForKey_(*(*(&v22 + 1) + 8 * i), v14, @"canCopy", v15);
            if (v19 && (objc_msgSend_BOOLValue(v19, v14, v20, v15) & 1) != 0)
            {
              LOBYTE(CellDictForCellAtIndexPath) = 1;
              return CellDictForCellAtIndexPath;
            }
          }

          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v22, v26, 16);
          LOBYTE(CellDictForCellAtIndexPath) = 0;
          if (v16)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  else
  {
    LOBYTE(CellDictForCellAtIndexPath) = 0;
  }

  return CellDictForCellAtIndexPath;
}

- (void)tableView:(id)view performAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender
{
  v37 = *MEMORY[0x277D85DE8];
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:performAction:forRowAtIndexPath:withSender:]", 800, "\n");
  }

  if (sel_copy_ == action)
  {
    if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:performAction:forRowAtIndexPath:withSender:]", 800, "copy:\n");
    }

    CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, a2, path, action);
    if (CellDictForCellAtIndexPath)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v12 = objc_msgSend_objectForKey_(CellDictForCellAtIndexPath, v10, @"items", v11);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v32, v36, 16);
      if (v14)
      {
        v18 = v14;
        v19 = 0;
        v20 = *v33;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v33 != v20)
            {
              objc_enumerationMutation(v12);
            }

            v22 = *(*(&v32 + 1) + 8 * i);
            v23 = objc_msgSend_objectForKey_(v22, v15, @"canCopy", v17);
            if (v23)
            {
              if (objc_msgSend_BOOLValue(v23, v15, v24, v17))
              {
                v25 = objc_msgSend_objectForKey_(v22, v15, @"currentValue", v17);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if (v19)
                  {
                    objc_msgSend_appendFormat_(v19, v15, @" %@", v17, v25);
                  }

                  else
                  {
                    v19 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v15, v25, v17);
                  }
                }
              }
            }
          }

          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v32, v36, 16);
        }

        while (v18);
      }

      else
      {
        v19 = 0;
      }

      if (objc_msgSend_length(v19, v15, v16, v17))
      {
        v29 = objc_msgSend_generalPasteboard(MEMORY[0x277D75810], v26, v27, v28);
        objc_msgSend_setString_(v29, v30, v19, v31);
      }
    }
  }
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager textField:shouldChangeCharactersInRange:replacementString:]", 800, "textField %@\n", field);
  }

  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v11 = MEMORY[0x277CCAA70];
  v12 = objc_msgSend_tag(field, a2, field, range.location) >> 16;
  v16 = objc_msgSend_tag(field, v13, v14, v15);
  v65 = objc_msgSend_indexPathForRow_inSection_(v11, v17, v12, v16);
  v21 = objc_msgSend_text(field, v18, v19, v20);
  IsSecureAndUnchanged = objc_msgSend_textFieldIsSecureAndUnchanged_(self, v22, field, v23);
  if (IsSecureAndUnchanged)
  {
    v21 = objc_msgSend_string(MEMORY[0x277CCACA8], v24, v25, v26);
    v31 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v27, string, v28);
    if (dword_27E382C88 > 800)
    {
      goto LABEL_21;
    }

    if (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u))
    {
      sub_23EB75374(&dword_27E382C88, "[TableViewManager textField:shouldChangeCharactersInRange:replacementString:]", 800, "starting secure text field edit (erasing old value)\n");
    }
  }

  else
  {
    v31 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v24, v21, v26);
    if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C88, "[TableViewManager textField:shouldChangeCharactersInRange:replacementString:]", 800, "current text %@\n", v31);
    }

    objc_msgSend_replaceCharactersInRange_withString_(v31, v32, location, length, string);
  }

  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager textField:shouldChangeCharactersInRange:replacementString:]", 800, "text as it will be %@\n", v31);
  }

LABEL_21:
  CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, v29, v65, v30);
  v36 = objc_msgSend_objectForKey_(CellDictForCellAtIndexPath, v34, @"nsFormatter", v35);
  if (v36)
  {
    v40 = v36;
    v66[0] = location;
    v66[1] = length;
    v67 = 0;
    v68 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v37, v31, v39);
    isPartialStringValid_proposedSelectedRange_originalString_originalSelectedRange_errorDescription = objc_msgSend_isPartialStringValid_proposedSelectedRange_originalString_originalSelectedRange_errorDescription_(v40, v41, &v68, v66, v21, location, length, &v67);
    if (isPartialStringValid_proposedSelectedRange_originalString_originalSelectedRange_errorDescription && (objc_msgSend_isEqualToString_(v68, v37, v31, v39) & 1) == 0)
    {
      v31 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v37, v68, v39);
      objc_msgSend_setText_(field, v44, v31, v45);
      v43 = 0;
    }

    else
    {
      v43 = 1;
    }

    if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C88, "[TableViewManager textField:shouldChangeCharactersInRange:replacementString:]", 800, "formatter error: %@ outStr: %@\n", v67, v68);
    }

    if (!isPartialStringValid_proposedSelectedRange_originalString_originalSelectedRange_errorDescription)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v43 = 1;
  }

  if (!objc_msgSend_delegate(self, v37, v38, v39) || (objc_msgSend_delegate(self, v46, v47, v48), (objc_opt_respondsToSelector() & 1) == 0) || (v49 = objc_msgSend_delegate(self, v46, v47, v48), objc_msgSend_shouldChangeTextField_atIndexPath_forTextIndex_toString_(v49, v50, field, v65, 0, v31)))
  {
    v51 = objc_msgSend_tag(field, v46, v47, v48);
    objc_msgSend_findAndSetItemObject_toValue_inCellWithInternalRowSectionTagValue_(self, v52, field, v31, v51);
    if (IsSecureAndUnchanged)
    {
      v56 = objc_msgSend_string(MEMORY[0x277CCACA8], v53, v54, v55);
      if (objc_msgSend_isEqualToString_(string, v57, v56, v58))
      {
        v60 = objc_msgSend_notificationWithName_object_(MEMORY[0x277CCAB88], v59, @"TVM::Internal", field);
        objc_msgSend_uiTextFieldDidChange_(self, v61, v60, v62);
      }
    }

    v63 = 1;
    return v63 & v43;
  }

LABEL_39:
  v63 = 0;
  return v63 & v43;
}

- (void)uiTextFieldDidChange:(id)change
{
  v5 = objc_msgSend_object(change, a2, change, v3);
  if (objc_msgSend_isDescendantOfView_(v5, v6, self->_managedTableView, v7))
  {
    v11 = objc_msgSend_tag(v5, v8, v9, v10);
    v13 = objc_msgSend_indexPathForRow_inSection_(MEMORY[0x277CCAA70], v12, v11 >> 16, v11);
    objc_msgSend_delegate(self, v14, v15, v16);
    if (objc_opt_respondsToSelector())
    {
      v20 = objc_msgSend_delegate(self, v17, v18, v19);

      MEMORY[0x2821F9670](v20, sel_textFieldDidChangeAtIndexPath_, v13, v21);
    }
  }
}

- (BOOL)textFieldShouldClear:(id)clear
{
  v6 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, clear, v3);
  if (objc_msgSend_isEditing(clear, v7, v8, v9))
  {
    v13 = MEMORY[0x277CCAA70];
    v14 = objc_msgSend_tag(clear, v10, v11, v12) >> 16;
    v18 = objc_msgSend_tag(clear, v15, v16, v17);
    v20 = objc_msgSend_indexPathForRow_inSection_(v13, v19, v14, v18);
    CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, v21, v20, v22);
    if (objc_msgSend_objectForKey_(CellDictForCellAtIndexPath, v24, @"nsFormatter", v25) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v29 = MEMORY[0x277CCAB68];
      v30 = objc_msgSend_text(clear, v26, v27, v28);
      v6 = objc_msgSend_stringWithString_(v29, v31, v30, v32);
      v36 = objc_msgSend_length(v6, v33, v34, v35);
      if (v36)
      {
        v38 = v36;
        v39 = v36 - 1;
        for (i = 1; i <= v38; ++i)
        {
          if (!objc_msgSend_textField_shouldChangeCharactersInRange_replacementString_(self, v37, clear, v39, i, &stru_285145FE8))
          {
            break;
          }

          --v39;
        }

        if (i != 1)
        {
          objc_msgSend_replaceCharactersInRange_withString_(v6, v37, v38 - (i - 1), i - 1, &stru_285145FE8);
          if (!objc_msgSend_delegate(self, v41, v42, v43) || (objc_msgSend_delegate(self, v44, v45, v46), (objc_opt_respondsToSelector() & 1) == 0) || (v48 = objc_msgSend_delegate(self, v44, v47, v46), objc_msgSend_shouldChangeTextField_atIndexPath_forTextIndex_toString_(v48, v49, clear, v20, 0, v6)))
          {
            objc_msgSend_setText_(clear, v44, v6, v46);
            v53 = 0;
LABEL_18:
            v56 = objc_msgSend_tag(clear, v50, v51, v52);
            objc_msgSend_findAndSetItemObject_toValue_inCellWithInternalRowSectionTagValue_(self, v57, clear, v6, v56);
            return v53;
          }
        }
      }
    }

    else if (!objc_msgSend_delegate(self, v26, v27, v28) || (objc_msgSend_delegate(self, v50, v51, v52), (objc_opt_respondsToSelector() & 1) == 0) || (v54 = objc_msgSend_delegate(self, v50, v51, v52), objc_msgSend_shouldChangeTextField_atIndexPath_forTextIndex_toString_(v54, v55, clear, v20, 0, v6)))
    {
      v53 = 1;
      goto LABEL_18;
    }

    return 0;
  }

  return 1;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager textFieldShouldReturn:]", 800, "textField %@\n", return);
  }

  objc_msgSend_delegate(self, a2, return, v3);
  if (objc_opt_respondsToSelector())
  {
    v9 = objc_msgSend_tag(return, v6, v7, v8) >> 16;
    v13 = objc_msgSend_tag(return, v10, v11, v12);
    v17 = objc_msgSend_delegate(self, v14, v15, v16);
    v19 = objc_msgSend_indexPathForRow_inSection_(MEMORY[0x277CCAA70], v18, v9, v13);
    if (!objc_msgSend_shouldHandleReturnForTextField_atIndexPath_forTextIndex_(v17, v20, return, v19, 0))
    {
      return 0;
    }
  }

  v33 = 0;
  NextResponderInTableView_foundParentCell = objc_msgSend_findNextResponderInTableView_foundParentCell_(self, v6, self->_managedTableView, &v33);
  if (NextResponderInTableView_foundParentCell)
  {
    v25 = NextResponderInTableView_foundParentCell;
    if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C88, "[TableViewManager textFieldShouldReturn:]", 800, "got a nextResponder %@\n", v25);
    }

    objc_msgSend_becomeFirstResponder(v25, v22, v23, v24);
    self->_currentFirstResponder = v25;

    v28 = objc_msgSend_indexPathForCell_(self->_managedTableView, v26, v33, v27);
    self->_currentFirstResponderCellPath = v28;
    managedTableView = self->_managedTableView;
    v30 = 1;
    objc_msgSend_scrollToRowAtIndexPath_atScrollPosition_animated_(managedTableView, v31, v28, 0, 1);
  }

  else
  {
    objc_msgSend_resignFirstResponder(self->_currentFirstResponder, v22, v23, v24);
    self->_currentFirstResponder = 0;

    self->_currentFirstResponderCellPath = 0;
    return 1;
  }

  return v30;
}

- (void)textFieldDidEndEditing:(id)editing
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager textFieldDidEndEditing:]", 800, "textField %@\n", editing);
  }

  if ((objc_msgSend_textFieldIsSecureAndUnchanged_(self, a2, editing, v3) & 1) == 0)
  {
    if (objc_msgSend_text(editing, v6, v7, v8))
    {
      v12 = objc_msgSend_text(editing, v9, v10, v11);
      v16 = objc_msgSend_tag(editing, v13, v14, v15);
      objc_msgSend_findAndSetItemObject_toValue_inCellWithInternalRowSectionTagValue_(self, v17, editing, v12, v16);
    }

    if (objc_msgSend_delegate(self, v9, v10, v11))
    {
      objc_msgSend_delegate(self, v18, v19, v20);
      if (objc_opt_respondsToSelector())
      {
        v24 = MEMORY[0x277CCAA70];
        v25 = objc_msgSend_tag(editing, v21, v22, v23) >> 16;
        v29 = objc_msgSend_tag(editing, v26, v27, v28);
        v31 = objc_msgSend_indexPathForRow_inSection_(v24, v30, v25, v29);
        v35 = objc_msgSend_delegate(self, v32, v33, v34);

        MEMORY[0x2821F9670](v35, sel_textFieldDidEndEditingAtIndexPath_, v31, v36);
      }
    }
  }
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager textFieldShouldBeginEditing:]", 800, "textField %@\n", editing);
  }

  if (objc_msgSend_isSecureTextEntry(editing, a2, editing, v3))
  {
    v9 = MEMORY[0x277CCAA70];
    v10 = objc_msgSend_tag(editing, v6, v7, v8) >> 16;
    v14 = objc_msgSend_tag(editing, v11, v12, v13);
    v16 = objc_msgSend_indexPathForRow_inSection_(v9, v15, v10, v14);
    v20 = objc_msgSend_text(editing, v17, v18, v19);
    objc_msgSend_setValue_forItemOfType_atItemTypeIndex_inCellAtIndexPath_(self, v21, v20, @"editTextView", 0, v16);
  }

  return 1;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  v6 = objc_msgSend_tag(editing, a2, editing, v3);
  v10 = objc_msgSend_tag(editing, v7, v8, v9);
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager textFieldDidBeginEditing:]", 800, "textField %@\n", editing);
  }

  self->_currentFirstResponder = editing;

  self->_currentFirstResponderCellPath = objc_msgSend_indexPathForRow_inSection_(MEMORY[0x277CCAA70], v11, v6 >> 16, v10);
}

- (void)switchAction:(id)action
{
  v6 = objc_msgSend_tag(action, a2, action, v3);
  v10 = objc_msgSend_tag(action, v7, v8, v9);
  v14 = objc_msgSend_isOn(action, v11, v12, v13);
  v17 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v15, v14, v16);
  v21 = objc_msgSend_tag(action, v18, v19, v20);
  v23 = objc_msgSend_findAndSetItemObject_toValue_inCellWithInternalRowSectionTagValue_(self, v22, action, v17, v21);
  if (v23 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = v23;
    if (objc_msgSend_delegate(self, v24, v25, v26))
    {
      objc_msgSend_delegate(self, v28, v29, v30);
      if (objc_opt_respondsToSelector())
      {
        v34 = objc_msgSend_delegate(self, v31, v32, v33);
        v36 = objc_msgSend_indexPathForRow_inSection_(MEMORY[0x277CCAA70], v35, v6 >> 16, v10);

        MEMORY[0x2821F9670](v34, sel_switchTouchedInCellAtIndexPath_forSwitchIndex_isOn_, v36, v27);
      }
    }
  }
}

- (void)buttonAction:(id)action
{
  v6 = objc_msgSend_tag(action, a2, action, v3);
  v10 = objc_msgSend_tag(action, v7, v8, v9);
  v14 = objc_msgSend_tag(action, v11, v12, v13);
  v16 = objc_msgSend_findAndSetItemObject_toValue_inCellWithInternalRowSectionTagValue_(self, v15, action, 0, v14);
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = v16;
    if (objc_msgSend_delegate(self, v17, v18, v19))
    {
      objc_msgSend_delegate(self, v21, v22, v23);
      if (objc_opt_respondsToSelector())
      {
        v27 = objc_msgSend_delegate(self, v24, v25, v26);
        v29 = objc_msgSend_indexPathForRow_inSection_(MEMORY[0x277CCAA70], v28, v6 >> 16, v10);

        MEMORY[0x2821F9670](v27, sel_buttonTouchedInCellAtIndexPath_forButtonIndex_, v29, v20);
      }
    }
  }
}

- (void)segmentedControlValueChanged:(id)changed
{
  v6 = objc_msgSend_tag(changed, a2, changed, v3);
  v10 = objc_msgSend_tag(changed, v7, v8, v9);
  v14 = objc_msgSend_selectedSegmentIndex(changed, v11, v12, v13);
  v17 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v15, v14, v16);
  v21 = objc_msgSend_tag(changed, v18, v19, v20);
  v23 = objc_msgSend_findAndSetItemObject_toValue_inCellWithInternalRowSectionTagValue_(self, v22, changed, v17, v21);
  if (v23 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = v23;
    if (objc_msgSend_delegate(self, v24, v25, v26))
    {
      objc_msgSend_delegate(self, v28, v29, v30);
      if (objc_opt_respondsToSelector())
      {
        v34 = objc_msgSend_delegate(self, v31, v32, v33);
        v36 = objc_msgSend_indexPathForRow_inSection_(MEMORY[0x277CCAA70], v35, v6 >> 16, v10);

        MEMORY[0x2821F9670](v34, sel_segmentedControlTouchedInCellAtIndexPath_forSegmentedControlIndex_selectedSegment_, v36, v27);
      }
    }
  }
}

- (void)selectedDateChanged:(id)changed
{
  v6 = objc_msgSend_tag(changed, a2, changed, v3);
  v10 = objc_msgSend_tag(changed, v7, v8, v9);
  v14 = objc_msgSend_tag(changed, v11, v12, v13);
  v16 = objc_msgSend_findAndSetItemObject_toValue_inCellWithInternalRowSectionTagValue_(self, v15, changed, 0, v14);
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = v16;
    if (objc_msgSend_delegate(self, v17, v18, v19))
    {
      objc_msgSend_delegate(self, v21, v22, v23);
      if (objc_opt_respondsToSelector())
      {
        v27 = objc_msgSend_delegate(self, v24, v25, v26);
        v29 = objc_msgSend_indexPathForRow_inSection_(MEMORY[0x277CCAA70], v28, v6 >> 16, v10);
        objc_msgSend_date(changed, v30, v31, v32);

        MEMORY[0x2821F9670](v27, sel_selectedDateChangedInCellAtIndexPath_forDatePickerIndex_withDate_, v29, v20);
      }
    }
  }
}

- (void)bulkUpdateBegin
{
  if (!self->_handlingBulkUpdate)
  {
    objc_msgSend_beginUpdates(self->_managedTableView, a2, v2, v3);
    self->_handlingBulkUpdate = 1;
  }
}

- (void)bulkUpdateEnd
{
  if (self->_handlingBulkUpdate)
  {
    objc_msgSend_endUpdates(self->_managedTableView, a2, v2, v3);
    self->_handlingBulkUpdate = 0;
  }
}

- (void)selectMenuCellAtIndexPath:(id)path
{
  v6 = objc_msgSend_section(path, a2, path, v3);
  SectionDictForSection = objc_msgSend_getSectionDictForSection_(self, v7, v6, v8);
  if (SectionDictForSection)
  {
    v12 = SectionDictForSection;
    v13 = objc_msgSend_objectForKey_(SectionDictForSection, v10, @"sectionIsMenu", v11);
    if (objc_msgSend_BOOLValue(v13, v14, v15, v16))
    {
      v19 = objc_msgSend_indexOfSelectedRowInMenuSection_(self, v17, v6, v18);
      v22 = objc_msgSend_objectForKey_(v12, v20, @"sectionMenuOptions", v21);
      v26 = objc_msgSend_integerValue(v22, v23, v24, v25);
      if (v19 != objc_msgSend_row(path, v27, v28, v29) || v6 != objc_msgSend_section(path, v30, v31, v32))
      {
        if (v19 != 0x7FFFFFFFFFFFFFFFLL && (v26 & 1) == 0)
        {
          v33 = objc_msgSend_indexPathForRow_inSection_(MEMORY[0x277CCAA70], v30, v19, v6);
          v36 = objc_msgSend_cellForRowAtIndexPath_(self->_managedTableView, v34, v33, v35);
          objc_msgSend_setMenuCell_visualStateToSelected_atIndexPath_(self, v37, v36, 0, v33);
        }

        v39 = objc_msgSend_cellForRowAtIndexPath_(self->_managedTableView, v30, path, v32);

        objc_msgSend_setMenuCell_visualStateToSelected_atIndexPath_(self, v38, v39, 1, path);
      }
    }
  }
}

- (id)cellInfoOfSelectedRowInMenuSection:(unint64_t)section
{
  v21 = *MEMORY[0x277D85DE8];
  RowArrayForSection = objc_msgSend_getRowArrayForSection_(self, a2, section, v3);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(RowArrayForSection, v5, &v16, v20, 16);
  if (!v6)
  {
    return 0;
  }

  v9 = v6;
  v10 = *v17;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v17 != v10)
    {
      objc_enumerationMutation(RowArrayForSection);
    }

    v12 = *(*(&v16 + 1) + 8 * v11);
    v13 = objc_msgSend_objectForKey_(v12, v7, @"menuSelected", v8);
    if (v13)
    {
      if (objc_msgSend_BOOLValue(v13, v7, v14, v8))
      {
        return v12;
      }
    }

    if (v9 == ++v11)
    {
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(RowArrayForSection, v7, &v16, v20, 16);
      if (v9)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (unint64_t)indexOfSelectedRowInMenuSection:(unint64_t)section
{
  RowArrayForSection = objc_msgSend_getRowArrayForSection_(self, a2, section, v3);
  v9 = objc_msgSend_cellInfoOfSelectedRowInMenuSection_(self, v7, section, v8);
  if (!v9 || !RowArrayForSection)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return objc_msgSend_indexOfObject_(RowArrayForSection, v10, v9, v11);
}

- (unint64_t)tagOfSelectedRowInMenuSection:(unint64_t)section
{
  result = objc_msgSend_cellInfoOfSelectedRowInMenuSection_(self, a2, section, v3);
  if (result)
  {
    v7 = objc_msgSend_objectForKey_(result, v5, @"tag", v6);

    return objc_msgSend_integerValue(v7, v8, v9, v10);
  }

  return result;
}

- (void)setMenuCell:(id)cell visualStateToSelected:(BOOL)selected atIndexPath:(id)path
{
  selectedCopy = selected;
  v9 = objc_msgSend_row(path, a2, cell, selected);
  v13 = objc_msgSend_section(path, v10, v11, v12);
  SectionDictForSection = objc_msgSend_getSectionDictForSection_(self, v14, v13, v15);
  if (SectionDictForSection)
  {
    v19 = SectionDictForSection;
    v23 = objc_msgSend_objectForKey_(SectionDictForSection, v17, @"sectionRows", v18);
    if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
    {
      v24 = objc_msgSend_section(path, v20, v21, v22);
      v25 = "NO";
      if (selectedCopy)
      {
        v25 = "YES";
      }

      sub_23EB75374(&dword_27E382C88, "[TableViewManager setMenuCell:visualStateToSelected:atIndexPath:]", 800, "section %d, row %d, selected = %s\n", v24, v9, v25);
    }

    if (v9 < objc_msgSend_count(v23, v20, v21, v22))
    {
      v28 = objc_msgSend_objectForKey_(v19, v26, @"sectionMenuOptions", v27);
      v32 = objc_msgSend_integerValue(v28, v29, v30, v31);
      v35 = objc_msgSend_objectAtIndex_(v23, v33, v9, v34);
      v38 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v36, selectedCopy, v37);
      objc_msgSend_setObject_forKey_(v35, v39, v38, @"menuSelected");
      InfoForItemOfType_atItemTypeIndex_inCell = objc_msgSend_getInfoForItemOfType_atItemTypeIndex_inCell_(self, v40, @"labelView", 0, v35);
      v43 = objc_msgSend_getInfoForItemOfType_atItemTypeIndex_inCell_(self, v42, @"imageView", 0, v35);
      v46 = objc_msgSend_objectForKey_(InfoForItemOfType_atItemTypeIndex_inCell, v44, @"cachedView", v45);
      v51 = objc_msgSend_objectForKey_(v43, v47, @"cachedView", v48);
      if (cell)
      {
        if (selectedCopy)
        {
          objc_msgSend_setObject_forKey_(InfoForItemOfType_atItemTypeIndex_inCell, v49, self->_selectedTextColor, @"color");
          objc_msgSend_setTextColor_(v46, v52, self->_selectedTextColor, v53);
          if ((v32 & 4) == 0)
          {
            cellCopy2 = cell;
            v55 = 3;
LABEL_18:

            objc_msgSend_setAccessoryType_(cellCopy2, v49, v55, v50);
            return;
          }

          goto LABEL_15;
        }

        objc_msgSend_setObject_forKey_(InfoForItemOfType_atItemTypeIndex_inCell, v49, self->_detailTextColor, @"color");
        objc_msgSend_setTextColor_(v46, v64, self->_detailTextColor, v65);
        if ((v32 & 4) == 0)
        {
          cellCopy2 = cell;
          v55 = 0;
          goto LABEL_18;
        }
      }

      else
      {
        if (selectedCopy)
        {
          if ((v32 & 4) == 0)
          {
            return;
          }

LABEL_15:
          v56 = objc_msgSend_kitImageOfType_(ImageStore, v49, 1, v50);
          objc_msgSend_setImage_(v51, v57, v56, v58);
          v61 = objc_msgSend_kitImageOfType_(ImageStore, v59, 2, v60);
          v63 = v51;
LABEL_24:

          MEMORY[0x2821F9670](v63, sel_setHighlightedImage_, v61, v62);
          return;
        }

        if ((v32 & 4) == 0)
        {
          return;
        }
      }

      objc_msgSend_setImage_(v51, v49, 0, v50);
      v63 = v51;
      v61 = 0;
      goto LABEL_24;
    }
  }
}

- (unint64_t)indexOfSectionWithIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray", v3);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = objc_msgSend_objectForKey_(v13, v8, @"identifier", v9);
        if (objc_msgSend_isEqualToString_(v14, v15, identifier, v16))
        {
          return objc_msgSend_indexOfObject_(v5, v8, v13, v9);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v18, v22, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (id)indexPathOfCellWithTag:(int64_t)tag
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray", v3);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v37, v42, 16);
  if (result)
  {
    v10 = result;
    v11 = *v38;
    v31 = *v38;
LABEL_3:
    v12 = 0;
    v32 = v10;
    while (1)
    {
      if (*v38 != v11)
      {
        objc_enumerationMutation(v5);
      }

      v13 = *(*(&v37 + 1) + 8 * v12);
      result = objc_msgSend_objectForKey_(v13, v8, @"sectionRows", v9, v31);
      if (!result)
      {
        break;
      }

      v15 = result;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(result, v14, &v33, v41, 16);
      if (v16)
      {
        v17 = v16;
        v18 = *v34;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v33 + 1) + 8 * i);
            v21 = objc_msgSend_objectForKey_(v20, v8, @"tag", v9);
            if (objc_msgSend_integerValue(v21, v22, v23, v24) == tag)
            {
              v25 = MEMORY[0x277CCAA70];
              v26 = objc_msgSend_indexOfObject_(v15, v8, v20, v9);
              v29 = objc_msgSend_indexOfObject_(v5, v27, v13, v28);
              return objc_msgSend_indexPathForRow_inSection_(v25, v30, v26, v29);
            }
          }

          v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v8, &v33, v41, 16);
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      ++v12;
      v11 = v31;
      if (v12 == v32)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v37, v42, 16);
        result = 0;
        if (v10)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

- (id)indexPathOfFirstCellWithUnverifiedVerifier
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray", v2);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v34, v39, 16);
  if (v28)
  {
    v29 = *v35;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v35 != v29)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v34 + 1) + 8 * v8);
      v10 = objc_msgSend_objectForKey_(v9, v6, @"sectionRows", v7);
      if (!v10)
      {
        break;
      }

      v12 = v10;
      v27 = v8;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v30, v38, 16);
      if (v13)
      {
        v14 = v13;
        v15 = *v31;
LABEL_9:
        v16 = 0;
        while (1)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = MEMORY[0x277CCAA70];
          v18 = objc_msgSend_indexOfObject_(v12, v6, *(*(&v30 + 1) + 8 * v16), v7);
          v21 = objc_msgSend_indexOfObject_(v4, v19, v9, v20);
          v23 = objc_msgSend_indexPathForRow_inSection_(v17, v22, v18, v21);
          if (objc_msgSend_textFieldHasVerifierAtIndexPath_(self, v24, v23, v25))
          {
            if (!objc_msgSend_textFieldVerifiedAtIndexPath_(self, v6, v23, v7))
            {
              return v23;
            }
          }

          if (v14 == ++v16)
          {
            v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v6, &v30, v38, 16);
            if (v14)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }

      v8 = v27 + 1;
      if (v27 + 1 == v28)
      {
        v23 = 0;
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v34, v39, 16);
        if (v28)
        {
          goto LABEL_3;
        }

        return v23;
      }
    }
  }

  return 0;
}

- (BOOL)tagOfCellAtIndexPath:(id)path tag:(int64_t *)tag
{
  v7 = objc_msgSend_row(path, a2, path, tag);
  v11 = objc_msgSend_section(path, v8, v9, v10);
  RowArrayForSection = objc_msgSend_getRowArrayForSection_(self, v12, v11, v13);
  if (v7 >= objc_msgSend_count(RowArrayForSection, v15, v16, v17))
  {
    LOBYTE(v23) = 0;
  }

  else
  {
    v20 = objc_msgSend_objectAtIndex_(RowArrayForSection, v18, v7, v19);
    v23 = objc_msgSend_objectForKey_(v20, v21, @"tag", v22);
    if (v23)
    {
      if (tag)
      {
        *tag = objc_msgSend_integerValue(v23, v24, v25, v26);
      }

      LOBYTE(v23) = 1;
    }
  }

  return v23;
}

- (BOOL)textFieldHasVerifierAtIndexPath:(id)path
{
  v7 = 0;
  v3 = objc_msgSend_tagOfCellAtIndexPath_tag_(self, a2, path, &v7);
  if ((v7 - 1987203159) < 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (dword_27E382D08 <= 800 && (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u)))
  {
    v5 = "NO";
    if (v4)
    {
      v5 = "YES";
    }

    sub_23EB75374(&dword_27E382D08, "[TableViewManager textFieldHasVerifierAtIndexPath:]", 800, "returning %s\n", v5);
  }

  return v4;
}

- (void)setVerifierCellAccessoryType:(int)type forCellsAtIndexPaths:(id)paths
{
  v5 = *&type;
  v47 = *MEMORY[0x277D85DE8];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(paths, a2, &v42, v46, 16);
  if (v7)
  {
    v11 = v7;
    v12 = *v43;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v43 != v12)
      {
        objc_enumerationMutation(paths);
      }

      v14 = *(*(&v42 + 1) + 8 * v13);
      v15 = objc_msgSend_row(v14, v8, v9, v10);
      v19 = objc_msgSend_section(v14, v16, v17, v18);
      SectionDictForSection = objc_msgSend_getSectionDictForSection_(self, v20, v19, v21);
      if (!SectionDictForSection)
      {
        break;
      }

      v25 = objc_msgSend_objectForKey_(SectionDictForSection, v23, @"sectionRows", v24);
      if (v15 < objc_msgSend_count(v25, v26, v27, v28))
      {
        v29 = objc_msgSend_objectAtIndex_(v25, v8, v15, v10);
        v32 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v30, v5, v31);
        objc_msgSend_setObject_forKey_(v29, v33, v32, @"verifierAccessory");
        if (dword_27E382D08 <= 800 && (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u)))
        {
          v37 = objc_msgSend_section(v14, v34, v35, v36);
          sub_23EB75374(&dword_27E382D08, "[TableViewManager setVerifierCellAccessoryType:forCellsAtIndexPaths:]", 800, "section %d, row %d, type = %d\n", v37, v15, v5);
        }

        v38 = objc_msgSend_managedTableView(self, v34, v35, v36);
        v41 = objc_msgSend_cellForRowAtIndexPath_(v38, v39, v14, v40);
        if (v41)
        {
          objc_msgSend_setVerifierAccessoryView_forCell_(self, v8, v5, v41);
        }
      }

      if (v11 == ++v13)
      {
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(paths, v8, &v42, v46, 16);
        if (v11)
        {
          goto LABEL_3;
        }

        return;
      }
    }
  }
}

- (BOOL)verifyStr1:(id)str1 forTag1:(unint64_t)tag1 matchesStr2:(id)str2 forTag2:(unint64_t)tag2
{
  v9 = objc_msgSend_indexPathOfCellWithTag_(self, a2, tag1, tag1);
  v12 = objc_msgSend_indexPathOfCellWithTag_(self, v10, tag2, v11);
  LOBYTE(tag2) = 0;
  if (v9)
  {
    v16 = v12;
    if (v12)
    {
      LODWORD(tag2) = objc_msgSend_isEqualToString_(str1, v13, str2, v14);
      if (tag2)
      {
        v23 = objc_msgSend_length(str1, v17, v18, v19) ? 4 * (objc_msgSend_length(str2, v20, v21, v22) != 0) : 0;
      }

      else
      {
        v24 = objc_msgSend_length(str2, v17, v18, v19);
        v23 = v24 >= objc_msgSend_length(str1, v25, v26, v27) ? 1 : 2;
      }

      v28 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v20, v9, v22, v16, 0);
      objc_msgSend_setVerifierCellAccessoryType_forCellsAtIndexPaths_(self, v29, v23, v28);
      if (dword_27E382D08 <= 800 && (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u)))
      {
        v30 = "NO";
        if (tag2)
        {
          v30 = "YES";
        }

        sub_23EB75374(&dword_27E382D08, "[TableViewManager verifyStr1:forTag1:matchesStr2:forTag2:]", 800, "returning match = %s\n", v30);
      }
    }
  }

  return tag2;
}

- (BOOL)textFieldVerifiedAtIndexPath:(id)path
{
  if (dword_27E382D08 <= 800 && (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D08, "[TableViewManager textFieldVerifiedAtIndexPath:]", 800, "\n");
  }

  if (objc_msgSend_textFieldHasVerifierAtIndexPath_(self, a2, path, v3))
  {
    ValueForFirstItemOfType_inCellWithTag = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(self, v6, @"editTextView", 1987203159);
    v9 = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(self, v8, @"editTextView", 1987203160);
    v11 = 1;
    if (ValueForFirstItemOfType_inCellWithTag && v9)
    {
      v11 = objc_msgSend_verifyStr1_forTag1_matchesStr2_forTag2_(self, v10, ValueForFirstItemOfType_inCellWithTag, 1987203159, v9, 1987203160);
    }
  }

  else
  {
    v11 = 1;
  }

  if (dword_27E382D08 <= 800 && (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u)))
  {
    v12 = "NO";
    if (v11)
    {
      v12 = "YES";
    }

    sub_23EB75374(&dword_27E382D08, "[TableViewManager textFieldVerifiedAtIndexPath:]", 800, "returning %s\n", v12);
  }

  return v11;
}

+ (id)boldSystemLabelFont
{
  v4 = sub_23EC132F8(self, a2, v2, v3);
  v5 = MEMORY[0x277D74300];
  objc_msgSend_labelFontSize(MEMORY[0x277D74300], v6, v7, v8);
  if (v4)
  {

    return objc_msgSend_systemFontOfSize_(v5, v9, v10, v11);
  }

  else
  {

    return objc_msgSend_boldSystemFontOfSize_(v5, v9, v10, v11);
  }
}

+ (id)systemLabelFont
{
  sub_23EC132F8(self, a2, v2, v3);
  v4 = MEMORY[0x277D74300];
  objc_msgSend_labelFontSize(MEMORY[0x277D74300], v5, v6, v7);

  return objc_msgSend_systemFontOfSize_(v4, v8, v9, v10);
}

+ (id)smallSystemLabelFont
{
  v4 = sub_23EC132F8(self, a2, v2, v3);
  v8 = MEMORY[0x277D74300];
  if (v4)
  {
    objc_msgSend_smallSystemFontSize(MEMORY[0x277D74300], v5, v6, v7);
  }

  else
  {
    objc_msgSend_labelFontSize(MEMORY[0x277D74300], v5, v6, v7);
    v12 = v13 + -4.0;
  }

  return objc_msgSend_systemFontOfSize_(v8, v9, v10, v11, v12);
}

- (BOOL)textFieldIsSecureAndUnchanged:(id)unchanged
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager(private) textFieldIsSecureAndUnchanged:]", 800, "textField %@\n", unchanged);
  }

  v6 = MEMORY[0x277CCAA70];
  v7 = objc_msgSend_tag(unchanged, a2, unchanged, v3) >> 16;
  v11 = objc_msgSend_tag(unchanged, v8, v9, v10);
  v13 = objc_msgSend_indexPathForRow_inSection_(v6, v12, v7, v11);
  if (!objc_msgSend_isSecureTextEntry(unchanged, v14, v15, v16))
  {
    return 0;
  }

  CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, v17, v13, v18);
  InfoForItemOfType_atItemTypeIndex_inCell = objc_msgSend_getInfoForItemOfType_atItemTypeIndex_inCell_(self, v20, @"editTextView", 0, CellDictForCellAtIndexPath);
  v25 = objc_msgSend_text(unchanged, v22, v23, v24);
  v28 = objc_msgSend_objectForKey_(InfoForItemOfType_atItemTypeIndex_inCell, v26, @"startValue", v27);
  if (!objc_msgSend_isEqualToString_(v25, v29, v28, v30))
  {
    return 0;
  }

  v34 = objc_msgSend_text(unchanged, v31, v32, v33);
  v38 = objc_msgSend_objectForKey_(InfoForItemOfType_atItemTypeIndex_inCell, v35, @"currentValue", v36);

  return objc_msgSend_isEqualToString_(v34, v37, v38, v39);
}

- (void)deferedTouchInCellAtIndexPath:(id)path
{
  if (path)
  {
    if (objc_msgSend_delegate(self, a2, path, v3))
    {
      objc_msgSend_delegate(self, v6, v7, v8);
      if (objc_opt_respondsToSelector())
      {
        v12 = objc_msgSend_delegate(self, v9, v10, v11);

        objc_msgSend_touchInCellAtIndexPath_(v12, v13, path, v14);
      }
    }
  }
}

- (id)getCellDictForCellAtIndexPath:(id)path
{
  v6 = objc_msgSend_row(path, a2, path, v3);
  v10 = objc_msgSend_section(path, v7, v8, v9);
  RowArrayForSection = objc_msgSend_getRowArrayForSection_(self, v11, v10, v12);
  if (!RowArrayForSection)
  {
    return 0;
  }

  v17 = RowArrayForSection;
  if (v6 >= objc_msgSend_count(RowArrayForSection, v14, v15, v16))
  {
    return 0;
  }

  return objc_msgSend_objectAtIndex_(v17, v18, v6, v19);
}

- (void)reloadSection:(unint64_t)section
{
  if (!self->_handlingBulkUpdate)
  {
    if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
    {
      v7 = objc_msgSend_managedTableView(self, a2, section, v3);
      sub_23EB75374(&dword_27E382CC8, "[TableViewManager(private) reloadSection:]", 800, "managedTableView %@\n", v7);
    }

    managedTableView = self->_managedTableView;
    v10 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], a2, section, v3);

    objc_msgSend_reloadSections_withRowAnimation_(managedTableView, v9, v10, 0);
  }
}

- (id)getSectionDictForSection:(int64_t)section
{
  v5 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray", v3);
  if (objc_msgSend_count(v5, v6, v7, v8) <= section)
  {
    return 0;
  }

  return objc_msgSend_objectAtIndex_(v5, v9, section, v10);
}

- (id)getDescriptorObjectForKey:(id)key inSection:(int64_t)section
{
  result = objc_msgSend_getSectionDictForSection_(self, a2, section, section);
  if (result)
  {

    return objc_msgSend_objectForKey_(result, v6, key, v7);
  }

  return result;
}

- (void)setDescriptorObject:(id)object forKey:(id)key inSection:(int64_t)section
{
  SectionDictForSection = objc_msgSend_getSectionDictForSection_(self, a2, section, key);
  if (SectionDictForSection)
  {
    if (object)
    {

      objc_msgSend_setObject_forKey_(SectionDictForSection, v8, object, key);
    }

    else
    {

      objc_msgSend_removeObjectForKey_(SectionDictForSection, v8, key, v9);
    }
  }
}

- (void)setImageViewValue:(id)value usingItemInfo:(id)info
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager(private) setImageViewValue:usingItemInfo:]", 800, "\n");
  }

  objc_msgSend_frame(value, a2, value, info);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v14 = objc_msgSend_objectForKey_(info, v12, @"currentValue", v13);
  objc_msgSend_setImage_(value, v15, v14, v16);
  if (v14)
  {
    v20 = objc_msgSend_image(value, v17, v18, v19);
    objc_msgSend_size(v20, v21, v22, v23);
    v25 = v24;
    v29 = objc_msgSend_image(value, v26, v27, v28);
    objc_msgSend_size(v29, v30, v31, v32);
    v11 = v36;
  }

  else
  {
    v37 = objc_msgSend_objectForKey_(info, v17, @"defaultHeight", v19);
    v25 = 0.0;
    if (v37)
    {
      objc_msgSend_floatValue(v37, v33, v34, v35);
      v11 = v38;
    }
  }

  objc_msgSend_setFrame_(value, v33, v34, v35, v7, v9, v25, v11);
}

- (id)imageView:(id)view
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager(private) imageView:]", 800, "\n");
  }

  v5 = objc_alloc_init(MEMORY[0x277D755E8]);
  objc_msgSend_setImageViewValue_usingItemInfo_(self, v6, v5, view);
  return v5;
}

- (void)setLabelViewValue:(id)value usingItemInfo:(id)info
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager(private) setLabelViewValue:usingItemInfo:]", 800, "\n");
  }

  v6 = objc_msgSend_objectForKey_(info, a2, @"currentValue", info);
  objc_msgSend_setText_(value, v7, v6, v8);
  if (v6 && (v12 = objc_msgSend_newlineCharacterSet(MEMORY[0x277CCA900], v9, v10, v11), (v15 = objc_msgSend_componentsSeparatedByCharactersInSet_(v6, v13, v12, v14)) != 0))
  {
    v17 = objc_msgSend_count(v15, v9, v16, v11);
  }

  else
  {
    v17 = 1;
  }

  objc_msgSend_setNumberOfLines_(value, v9, v17, v11);
}

- (id)labelView:(id)view
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager(private) labelView:]", 800, "\n");
  }

  v5 = objc_alloc_init(MEMORY[0x277D756B8]);
  v9 = objc_msgSend_clearColor(MEMORY[0x277D75348], v6, v7, v8);
  objc_msgSend_setBackgroundColor_(v5, v10, v9, v11);
  objc_msgSend_setLabelViewValue_usingItemInfo_(self, v12, v5, view);
  v15 = objc_msgSend_objectForKey_(view, v13, @"font", v14);
  if (!v15)
  {
    v15 = objc_msgSend_boldSystemLabelFont(TableViewManager, v16, v17, v18);
  }

  objc_msgSend_setFont_(v5, v16, v15, v18);
  v21 = objc_msgSend_valueForKey_(view, v19, @"itemEnabled", v20);
  if (v21)
  {
    v25 = objc_msgSend_BOOLValue(v21, v22, v23, v24);
    v28 = objc_msgSend_objectForKey_(view, v26, @"color", v27);
    if ((v25 & 1) == 0)
    {
      objc_msgSend_setTextColor_(v5, v29, self->_subtitleColor, v30);
      goto LABEL_14;
    }
  }

  else
  {
    v28 = objc_msgSend_objectForKey_(view, v22, @"color", v24);
  }

  detailTextColor = v28;
  if (!v28)
  {
    detailTextColor = self->_detailTextColor;
  }

  objc_msgSend_setTextColor_(v5, v29, detailTextColor, v30);
LABEL_14:
  v34 = objc_msgSend_objectForKey_(view, v31, @"alignment", v32);
  if (v34)
  {
    v38 = objc_msgSend_integerValue(v34, v35, v36, v37);
    objc_msgSend_setTextAlignment_(v5, v39, v38, v40);
  }

  else
  {
    objc_msgSend_setTextAlignment_(v5, v35, 4, v37);
  }

  objc_msgSend_setAdjustsFontSizeToFitWidth_(v5, v41, 1, v42);
  v46 = objc_msgSend_font(v5, v43, v44, v45);
  objc_msgSend_pointSize(v46, v47, v48, v49);
  v51 = v50 + -4.0;
  v55 = objc_msgSend_font(v5, v52, v53, v54);
  objc_msgSend_pointSize(v55, v56, v57, v58);
  objc_msgSend_setMinimumScaleFactor_(v5, v60, v61, v62, v51 / v59);
  return v5;
}

- (void)setMultilineLabelViewValue:(id)value usingItemInfo:(id)info
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager(private) setMultilineLabelViewValue:usingItemInfo:]", 800, "\n");
  }

  v7 = objc_msgSend_objectForKey_(info, a2, @"currentValue", info);

  objc_msgSend_setText_(value, v6, v7, v8);
}

- (id)multilineLabelView:(id)view
{
  v4 = objc_msgSend_labelView_(self, a2, view, v3);
  objc_msgSend_setNumberOfLines_(v4, v5, 0, v6);
  return v4;
}

- (void)setEditTextViewValue:(id)value usingItemInfo:(id)info
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager(private) setEditTextViewValue:usingItemInfo:]", 800, "\n");
  }

  v7 = objc_msgSend_objectForKey_(info, a2, @"currentValue", info);

  objc_msgSend_setText_(value, v6, v7, v8);
}

- (id)editTextView:(id)view
{
  v5 = objc_alloc(MEMORY[0x277D75BB8]);
  v9 = objc_msgSend_initWithFrame_(v5, v6, v7, v8, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24));
  objc_msgSend_setBorderStyle_(v9, v10, 0, v11);
  v15 = objc_msgSend_clearColor(MEMORY[0x277D75348], v12, v13, v14);
  objc_msgSend_setBackgroundColor_(v9, v16, v15, v17);
  objc_msgSend_setAutocorrectionType_(v9, v18, 1, v19);
  objc_msgSend_setAutocapitalizationType_(v9, v20, 0, v21);
  objc_msgSend_setEnablesReturnKeyAutomatically_(v9, v22, 1, v23);
  objc_msgSend_setDelegate_(v9, v24, self, v25);
  v28 = objc_msgSend_objectForKey_(view, v26, @"placeholder", v27);
  objc_msgSend_setPlaceholder_(v9, v29, v28, v30);
  objc_msgSend_setEditTextViewValue_usingItemInfo_(self, v31, v9, view);
  v34 = objc_msgSend_objectForKey_(view, v32, @"secure", v33);
  if (v34)
  {
    v38 = objc_msgSend_BOOLValue(v34, v35, v36, v37);
    objc_msgSend_setSecureTextEntry_(v9, v39, v38, v40);
  }

  else
  {
    objc_msgSend_setSecureTextEntry_(v9, v35, 0, v37);
  }

  v43 = objc_msgSend_objectForKey_(view, v41, @"textFieldViewMode", v42);
  if (v43)
  {
    v47 = objc_msgSend_integerValue(v43, v44, v45, v46);
    objc_msgSend_setClearButtonMode_(v9, v48, v47, v49);
  }

  else
  {
    objc_msgSend_setClearButtonMode_(v9, v44, 0, v46);
  }

  v52 = objc_msgSend_objectForKey_(view, v50, @"font", v51);
  if (!v52)
  {
    v52 = objc_msgSend_systemLabelFont(TableViewManager, v53, v54, v55);
  }

  objc_msgSend_setFont_(v9, v53, v52, v55);
  v58 = objc_msgSend_objectForKey_(view, v56, @"color", v57);
  if (v58)
  {
    objc_msgSend_setTextColor_(v9, v59, v58, v60);
  }

  else
  {
    objc_msgSend_setTextColor_(v9, v59, self->_editTextColor, v60);
  }

  v63 = objc_msgSend_objectForKey_(view, v61, @"keyboardType", v62);
  if (v63)
  {
    v67 = objc_msgSend_integerValue(v63, v64, v65, v66);
    objc_msgSend_setKeyboardType_(v9, v68, v67, v69);
  }

  v70 = objc_msgSend_objectForKey_(view, v64, @"returnKeyType", v66);
  if (v70)
  {
    v74 = objc_msgSend_integerValue(v70, v71, v72, v73);
    objc_msgSend_setReturnKeyType_(v9, v75, v74, v76);
  }

  v77 = objc_msgSend_objectForKey_(view, v71, @"alignment", v73);
  if (v77)
  {
    v82 = objc_msgSend_integerValue(v77, v78, v79, v80);
  }

  else
  {
    v84 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], v78, v79, v80);
    v82 = 2 * (objc_msgSend_userInterfaceLayoutDirection(v84, v85, v86, v87) == 0);
  }

  objc_msgSend_setTextAlignment_(v9, v81, v82, v83);
  objc_msgSend_setAdjustsFontSizeToFitWidth_(v9, v88, 1, v89);
  v93 = objc_msgSend_font(v9, v90, v91, v92);
  objc_msgSend_pointSize(v93, v94, v95, v96);
  objc_msgSend_setMinimumFontSize_(v9, v98, v99, v100, v97 + -4.0);
  return v9;
}

- (void)setSwitchViewValue:(id)value usingItemInfo:(id)info
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager(private) setSwitchViewValue:usingItemInfo:]", 800, "\n");
  }

  v6 = objc_msgSend_objectForKey_(info, a2, @"currentValue", info);
  v10 = objc_msgSend_BOOLValue(v6, v7, v8, v9);

  MEMORY[0x2821F9670](value, sel_setOn_, v10, v11);
}

- (id)switchView:(id)view
{
  v5 = objc_alloc(MEMORY[0x277D75AE8]);
  v9 = objc_msgSend_initWithFrame_(v5, v6, v7, v8, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24));
  objc_msgSend_addTarget_action_forControlEvents_(v9, v10, self, sel_switchAction_, 4096);
  v14 = objc_msgSend_clearColor(MEMORY[0x277D75348], v11, v12, v13);
  objc_msgSend_setBackgroundColor_(v9, v15, v14, v16);
  objc_msgSend_setSwitchViewValue_usingItemInfo_(self, v17, v9, view);
  return v9;
}

- (void)setActivityViewValue:(id)value usingItemInfo:(id)info
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager(private) setActivityViewValue:usingItemInfo:]", 800, "\n");
  }

  v6 = objc_msgSend_objectForKey_(info, a2, @"currentValue", info);
  if (objc_msgSend_BOOLValue(v6, v7, v8, v9))
  {

    objc_msgSend_startAnimating(value, v10, v11, v12);
  }

  else
  {

    objc_msgSend_stopAnimating(value, v10, v11, v12);
  }
}

- (id)activityView:(id)view
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager(private) activityView:]", 800, "\n");
  }

  v5 = objc_alloc(MEMORY[0x277D750E8]);
  v8 = objc_msgSend_initWithActivityIndicatorStyle_(v5, v6, 100, v7);
  objc_msgSend_setHidesWhenStopped_(v8, v9, 1, v10);
  objc_msgSend_setActivityViewValue_usingItemInfo_(self, v11, v8, view);
  return v8;
}

- (void)setButtonViewValue:(id)value usingItemInfo:(id)info
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager(private) setButtonViewValue:usingItemInfo:]", 800, "\n");
  }

  v7 = objc_msgSend_objectForKey_(info, a2, @"currentValue", info);

  objc_msgSend_setTitle_forState_(value, v6, v7, 0);
}

- (id)buttonView:(id)view
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager(private) buttonView:]", 800, "\n");
  }

  v6 = objc_msgSend_objectForKey_(view, a2, @"buttonImage", v3);
  v9 = objc_msgSend_objectForKey_(view, v7, @"buttonSelectedImage", v8);
  v14 = objc_msgSend_buttonWithType_(MEMORY[0x277D75220], v10, (v6 | v9) == 0, v11);
  if (v6)
  {
    v15 = objc_msgSend_imageNamed_(MEMORY[0x277D755B8], v12, v6, v13);
    objc_msgSend_setImage_forState_(v14, v16, v15, 0);
  }

  if (v9)
  {
    v17 = objc_msgSend_imageNamed_(MEMORY[0x277D755B8], v12, v9, v13);
    objc_msgSend_setImage_forState_(v14, v18, v17, 1);
  }

  objc_msgSend_addTarget_action_forControlEvents_(v14, v12, self, sel_buttonAction_, 64);
  objc_msgSend_setButtonViewValue_usingItemInfo_(self, v19, v14, view);
  objc_msgSend_setTitleColor_forState_(v14, v20, self->_detailTextColor, 0);
  return v14;
}

- (id)segmentedControlView:(id)view
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager(private) segmentedControlView:]", 800, "\n");
  }

  v6 = objc_msgSend_valueForKey_(view, a2, @"segmentedControlItems", v3);
  if (!v6)
  {
    return 0;
  }

  v9 = v6;
  v10 = objc_msgSend_valueForKey_(view, v7, @"currentValue", v8);
  v13 = objc_msgSend_valueForKey_(view, v11, @"itemEnabled", v12);
  v14 = objc_alloc(MEMORY[0x277D75A08]);
  v17 = objc_msgSend_initWithItems_(v14, v15, v9, v16);
  objc_msgSend_addTarget_action_forControlEvents_(v17, v18, self, sel_segmentedControlValueChanged_, 4096);
  v22 = objc_msgSend_integerValue(v10, v19, v20, v21);
  objc_msgSend_setSelectedSegmentIndex_(v17, v23, v22, v24);
  if (v13)
  {
    v28 = objc_msgSend_BOOLValue(v13, v25, v26, v27);
    objc_msgSend_setEnabled_(v17, v29, v28, v30);
  }

  else
  {
    objc_msgSend_setEnabled_(v17, v25, 1, v27);
  }

  return v17;
}

- (void)setProgressViewValue:(id)value usingItemInfo:(id)info
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager(private) setProgressViewValue:usingItemInfo:]", 800, "\n");
  }

  v6 = objc_msgSend_objectForKey_(info, a2, @"currentValue", info);
  if (v6)
  {
    objc_msgSend_floatValue(v6, v7, v8, v9);

    MEMORY[0x2821F9670](value, sel_setProgress_, v10, v11);
  }
}

- (id)progressView:(id)view
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager(private) progressView:]", 800, "\n");
  }

  v5 = objc_alloc(MEMORY[0x277D758F0]);
  v8 = objc_msgSend_initWithProgressViewStyle_(v5, v6, 0, v7);
  objc_msgSend_setProgressViewValue_usingItemInfo_(self, v9, v8, view);
  return v8;
}

- (void)setDatePickerValue:(id)value usingItemInfo:(id)info
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager(private) setDatePickerValue:usingItemInfo:]", 800, "\n");
  }

  v6 = objc_msgSend_objectForKey_(info, a2, @"currentValue", info);
  if (v6)
  {
    objc_msgSend_setDate_(value, v7, v6, v8);
  }

  v9 = objc_msgSend_valueForKey_(info, v7, @"datePickerMode", v8);
  v13 = objc_msgSend_integerValue(v9, v10, v11, v12);
  objc_msgSend_setDatePickerMode_(value, v14, v13, v15);
  v18 = objc_msgSend_valueForKey_(info, v16, @"minValue", v17);
  objc_msgSend_setMinimumDate_(value, v19, v18, v20);
  v23 = objc_msgSend_valueForKey_(info, v21, @"maxValue", v22);

  MEMORY[0x2821F9670](value, sel_setMaximumDate_, v23, v24);
}

- (id)datePicker:(id)picker
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager(private) datePicker:]", 800, "\n");
  }

  v5 = objc_alloc(MEMORY[0x277D753E8]);
  v9 = objc_msgSend_initWithFrame_(v5, v6, v7, v8, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24));
  objc_msgSend_addTarget_action_forControlEvents_(v9, v10, self, sel_selectedDateChanged_, 4096);
  objc_msgSend_setDatePickerValue_usingItemInfo_(self, v11, v9, picker);
  return v9;
}

- (void)setVerifierAccessoryView:(int)view forCell:(id)cell
{
  isEditing = objc_msgSend_isEditing(cell, a2, *&view, cell);
  if (dword_27E382D08 <= 800)
  {
    if (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u))
    {
      v10 = "is NOT";
      if (isEditing)
      {
        v10 = "is";
      }

      sub_23EB75374(&dword_27E382D08, "[TableViewManager(private) setVerifierAccessoryView:forCell:]", 800, "cell %s editing\n", v10);
    }

    if (dword_27E382D08 <= 800)
    {
      if (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u))
      {
        v11 = objc_msgSend_editingAccessoryView(cell, v6, v7, v8);
        sub_23EB75374(&dword_27E382D08, "[TableViewManager(private) setVerifierAccessoryView:forCell:]", 800, "cell.editingAccessoryView = %@\n", v11);
      }

      if (dword_27E382D08 <= 800 && (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u)))
      {
        v12 = objc_msgSend_accessoryView(cell, v6, v7, v8);
        sub_23EB75374(&dword_27E382D08, "[TableViewManager(private) setVerifierAccessoryView:forCell:]", 800, "cell.accessoryView = %@\n", v12);
      }
    }
  }

  if (view <= 1)
  {
    if (view)
    {
      if (view != 1)
      {
        return;
      }

      if (dword_27E382D08 <= 800)
      {
        if (dword_27E382D08 == -1)
        {
          v13 = @"NotVerifiedFlat.png";
          if (!sub_23EB74AC8(&dword_27E382D08, 0x320u))
          {
            goto LABEL_61;
          }
        }

        else
        {
          v13 = @"NotVerifiedFlat.png";
        }

        sub_23EB75374(&dword_27E382D08, "[TableViewManager(private) setVerifierAccessoryView:forCell:]", 800, "verifier accessory type = kVerifierAccessoryTypeInvalid for cell %@\n", cell);
LABEL_61:
        v16 = MEMORY[0x277CCA8D8];
        v17 = objc_opt_class();
        v20 = objc_msgSend_bundleForClass_(v16, v18, v17, v19);
        v22 = objc_msgSend_imageNamed_inBundle_(ImageStore, v21, v13, v20);
        if (v22)
        {
          v23 = v22;
          v24 = objc_alloc(MEMORY[0x277D755E8]);
          v33 = objc_msgSend_initWithImage_(v24, v25, v23, v26);
          if (isEditing)
          {
            objc_msgSend_setEditingAccessoryType_(cell, v27, 0, v28);
            objc_msgSend_setEditingAccessoryView_(cell, v29, v33, v30);
          }

          else
          {
            objc_msgSend_setAccessoryType_(cell, v27, 0, v28);
            objc_msgSend_setAccessoryView_(cell, v31, v33, v32);
          }
        }

        return;
      }

LABEL_39:
      v13 = @"NotVerifiedFlat.png";
      goto LABEL_61;
    }

    if (dword_27E382D08 <= 800 && (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382D08, "[TableViewManager(private) setVerifierAccessoryView:forCell:]", 800, "verifier accessory type = kVerifierAccessoryTypeNone for cell %@\n", cell);
    }

    if (isEditing && objc_msgSend_editingAccessoryView(cell, v6, v7, v8))
    {

      objc_msgSend_setEditingAccessoryView_(cell, v6, 0, v8);
    }

    else if (objc_msgSend_accessoryView(cell, v6, v7, v8))
    {

      objc_msgSend_setAccessoryView_(cell, v14, 0, v15);
    }
  }

  else
  {
    if (view != 2)
    {
      if (view != 3)
      {
        if (view != 4)
        {
          return;
        }

        if (dword_27E382D08 <= 800 && (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382D08, "[TableViewManager(private) setVerifierAccessoryView:forCell:]", 800, "verifier accessory type = kVerifierAccessoryTypeSmartValid for cell %@\n", cell);
        }

        if ((!isEditing || !objc_msgSend_editingAccessoryView(cell, v6, v7, v8)) && !objc_msgSend_accessoryView(cell, v6, v7, v8))
        {
          return;
        }

        goto LABEL_43;
      }

      if (dword_27E382D08 > 800)
      {
LABEL_43:
        v13 = @"VerifiedFlat.png";
        goto LABEL_61;
      }

      if (dword_27E382D08 == -1)
      {
        v13 = @"VerifiedFlat.png";
        if (!sub_23EB74AC8(&dword_27E382D08, 0x320u))
        {
          goto LABEL_61;
        }
      }

      else
      {
        v13 = @"VerifiedFlat.png";
      }

      sub_23EB75374(&dword_27E382D08, "[TableViewManager(private) setVerifierAccessoryView:forCell:]", 800, "verifier accessory type = kVerifierAccessoryTypeValid for cell %@\n", cell);
      goto LABEL_61;
    }

    if (dword_27E382D08 <= 800 && (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382D08, "[TableViewManager(private) setVerifierAccessoryView:forCell:]", 800, "verifier accessory type = kVerifierAccessoryTypeSmartInvalid for cell %@\n", cell);
    }

    if (isEditing && objc_msgSend_editingAccessoryView(cell, v6, v7, v8) || objc_msgSend_accessoryView(cell, v6, v7, v8))
    {
      goto LABEL_39;
    }
  }
}

- (void)setUnreadBubbleCountValue:(id)value usingItemInfo:(id)info
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager(private) setUnreadBubbleCountValue:usingItemInfo:]", 800, "\n");
  }

  v6 = objc_msgSend_objectForKey_(info, a2, @"currentValue", info);
  if (v6)
  {
    v11 = objc_msgSend_integerValue(v6, v7, v8, v9);

    objc_msgSend_setCount_(value, v10, v11, v12);
  }
}

- (id)unreadBubbleCount:(id)count
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager(private) unreadBubbleCount:]", 800, "\n");
  }

  v5 = [UnreadBubbleCount alloc];
  v9 = objc_msgSend_initWithFrame_(v5, v6, v7, v8, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24));
  objc_msgSend_setUnreadBubbleCountValue_usingItemInfo_(self, v10, v9, count);
  return v9;
}

@end
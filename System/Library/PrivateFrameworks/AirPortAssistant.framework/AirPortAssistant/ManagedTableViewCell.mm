@interface ManagedTableViewCell
- (ManagedTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)calculateFrameSizeForView:(id)view forItem:(id)item atItemIndex:(unint64_t)index withRemainingContentWidth:(double)width;
- (double)edgeInsetValue:(id)value;
- (double)horizontalSpacingForView:(id)view withItem:(id)item;
- (double)leftInsetForView:(id)view withItem:(id)item;
- (double)rightInsetForView:(id)view withItem:(id)item;
- (double)usableContentWidthForItem:(id)item withVerticalNeighborView:(id)view;
- (double)verticalInset;
- (double)verticalSpacingForView:(id)view withItem:(id)item;
- (id)accessibilityValue;
- (void)calculatePositionForView:(id)view forItem:(id)item atItemIndex:(unint64_t)index;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)repositionView:(id)view ifOverlapsPreviousView:(id)previousView;
- (void)setCellDict:(id)dict;
@end

@implementation ManagedTableViewCell

- (ManagedTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = ManagedTableViewCell;
  return [(ManagedTableViewCell *)&v5 initWithStyle:style reuseIdentifier:identifier];
}

- (void)prepareForReuse
{
  v56 = *MEMORY[0x277D85DE8];
  if (dword_27E382F68 <= 800)
  {
    if (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u))
    {
      v5 = objc_msgSend_currentIndexPath(self, a2, v2, v3);
      v9 = objc_msgSend_section(v5, v6, v7, v8);
      v13 = objc_msgSend_currentIndexPath(self, v10, v11, v12);
      v17 = objc_msgSend_row(v13, v14, v15, v16);
      sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell prepareForReuse]", 800, "cell %@ section %d row %d\n", self, v9, v17);
    }

    if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
    {
      v18 = objc_msgSend_parentTableManager(self, a2, v2, v3);
      v22 = objc_msgSend_managedTableView(v18, v19, v20, v21);
      v26 = objc_msgSend_visibleCells(v22, v23, v24, v25);
      sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell prepareForReuse]", 800, "visible cells %@\n", v26);
    }
  }

  objc_msgSend_setTag_(self, a2, 0, v3);
  self->_cellXEdgeInset = 0.0;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v30 = objc_msgSend_cellDict(self, v27, v28, v29);
  v33 = objc_msgSend_objectForKey_(v30, v31, @"items", v32);
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v51, v55, 16);
  if (v35)
  {
    v38 = v35;
    v39 = *v52;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v52 != v39)
        {
          objc_enumerationMutation(v33);
        }

        v41 = objc_msgSend_objectForKey_(*(*(&v51 + 1) + 8 * i), v36, @"cachedView", v37);
        v45 = objc_msgSend_superview(v41, v42, v43, v44);
        if (v45 == objc_msgSend_contentView(self, v46, v47, v48))
        {
          if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
          {
            sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell prepareForReuse]", 800, "removing view %@ from superview\n", v41);
          }

          objc_msgSend_removeFromSuperview(v41, v36, v49, v37);
        }
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v51, v55, 16);
    }

    while (v38);
  }

  v50.receiver = self;
  v50.super_class = ManagedTableViewCell;
  [(ManagedTableViewCell *)&v50 prepareForReuse];
}

- (void)dealloc
{
  self->_cellDict = 0;

  self->_currentIndexPath = 0;
  v3.receiver = self;
  v3.super_class = ManagedTableViewCell;
  [(ManagedTableViewCell *)&v3 dealloc];
}

- (void)setCellDict:(id)dict
{
  if (self->_cellDict != dict)
  {
    dictCopy = dict;

    self->_cellDict = dict;
    if (dict)
    {

      objc_msgSend_setNeedsLayout(self, v6, v7, v8);
    }
  }
}

- (double)edgeInsetValue:(id)value
{
  v4 = objc_msgSend_objectForKey_(value, a2, @"edgeInset", v3);
  if (!v4)
  {
    return 10.0;
  }

  objc_msgSend_floatValue(v4, v5, v6, v7);
  return v8;
}

- (double)horizontalSpacingForView:(id)view withItem:(id)item
{
  objc_msgSend_frame(view, a2, view, item);
  if (v8 == 0.0)
  {
    return 0.0;
  }

  objc_msgSend_edgeInsetValue_(self, v6, item, v7);
  return result;
}

- (double)verticalSpacingForView:(id)view withItem:(id)item
{
  objc_msgSend_frame(view, a2, view, item);
  result = 0.0;
  if (v8 > 0.0)
  {
    v9 = objc_msgSend_valueForKey_(item, v5, @"itemType", v6, 0.0);
    isEqualToString = objc_msgSend_isEqualToString_(v9, v10, @"labelView", v11);
    result = 5.0;
    if (isEqualToString)
    {
      return 2.0;
    }
  }

  return result;
}

- (double)verticalInset
{
  if (sub_23EC132F8(self, a2, v2, v3))
  {
    return 12.0;
  }

  objc_msgSend_edgeInsetValue_(self, v5, 0, v6);
  return result;
}

- (double)leftInsetForView:(id)view withItem:(id)item
{
  if (sub_23EC132F8(self, a2, view, item))
  {
    return 15.0;
  }

  objc_msgSend_edgeInsetValue_(self, v6, item, v7);
  return result;
}

- (double)rightInsetForView:(id)view withItem:(id)item
{
  if (sub_23EC132F8(self, a2, view, item))
  {
    if (!objc_msgSend_objectForKey_(item, v7, @"edgeInset", v9))
    {
      v11 = objc_msgSend_cellDict(self, v7, v10, v9);
      v14 = objc_msgSend_valueForKey_(v11, v12, @"accessory", v13);
      result = 0.0;
      if (!v14)
      {
        return 15.0;
      }

      return result;
    }
  }

  else if (view)
  {
    objc_msgSend_frame(view, v7, v8, v9);
    result = 0.0;
    if (v16 <= 0.0)
    {
      return result;
    }
  }

  objc_msgSend_edgeInsetValue_(self, v7, item, v9);
  return result;
}

- (double)usableContentWidthForItem:(id)item withVerticalNeighborView:(id)view
{
  width = self->_modifiedContentViewFrame.size.width;
  if (item)
  {
    objc_msgSend_rightInsetForView_withItem_(self, a2, 0, item);
    v9 = v8;
    isEqualToString = objc_msgSend_objectForKey_(item, v10, @"position", v11);
    if (!view)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v16 = sub_23EC132F8(self, a2, 0, view);
    isEqualToString = 0;
    if (v16)
    {
      v9 = 15.0;
    }

    else
    {
      v9 = 10.0;
    }

    if (!view)
    {
      goto LABEL_9;
    }
  }

  isEqualToString = objc_msgSend_isEqualToString_(isEqualToString, v13, @"bottom", v15);
  if ((isEqualToString & 1) == 0)
  {
    objc_msgSend_frame(view, v13, v14, v15);
    return width - (v9 + v26);
  }

LABEL_9:
  if (!sub_23EC132F8(isEqualToString, v13, v14, v15))
  {
    return width + v9 * -2.0;
  }

  v20 = width - v9;
  v21 = objc_msgSend_cellDict(self, v17, v18, v19);
  v24 = objc_msgSend_valueForKey_(v21, v22, @"accessory", v23);
  result = v20 - v9;
  if (v24)
  {
    return v20;
  }

  return result;
}

- (void)calculatePositionForView:(id)view forItem:(id)item atItemIndex:(unint64_t)index
{
  if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
  {
    sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculatePositionForView:forItem:atItemIndex:]", 800, "\n");
  }

  v8 = objc_msgSend_objectForKey_(item, a2, @"neighbor", item);
  v11 = objc_msgSend_edgeInsetValue_(self, v9, item, v10);
  v115 = v15;
  if (v8)
  {
    v16 = objc_msgSend_objectForKey_(v8, v12, @"cachedView", v14);
    objc_msgSend_frame(v16, v17, v18, v19);
    forcedRightmostEditTextInset = v22;
    y = v24;
    width = v26;
    v29 = v28;
    v30 = v16 == 0;
  }

  else
  {
    if (sub_23EC132F8(v11, v12, v13, v14))
    {
      y = self->_modifiedContentViewFrame.origin.y;
      objc_msgSend_usableContentWidth(self, v31, v32, v33);
      width = v34;
      forcedRightmostEditTextInset = 15.0;
    }

    else
    {
      forcedRightmostEditTextInset = 10.0;
      v116 = CGRectInset(self->_modifiedContentViewFrame, 10.0, 0.0);
      y = v116.origin.y;
      width = v116.size.width;
    }

    v30 = 1;
    v29 = 44.0;
  }

  v35 = objc_msgSend_objectForKey_(item, v20, @"position", v21);
  if (v35)
  {
    v39 = v35;
  }

  else
  {
    v39 = @"left";
  }

  if (dword_27E382F68 <= 800)
  {
    if (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u))
    {
      sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculatePositionForView:forItem:atItemIndex:]", 800, "itemInfo position '%@'\n", v39);
    }

    if (dword_27E382F68 <= 800)
    {
      if (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u))
      {
        sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculatePositionForView:forItem:atItemIndex:]", 800, "itemInfo neighbor '%@'\n", v8);
      }

      if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
      {
        sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculatePositionForView:forItem:atItemIndex:]", 800, "neighbor frame=(x = %.1f, y = %.1f, w = %.1f, h = %.1f)\n", forcedRightmostEditTextInset, y, width, v29);
      }
    }
  }

  objc_msgSend_frame(view, v36, v37, v38);
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v51 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], v48, v49, v50);
  if (objc_msgSend_userInterfaceLayoutDirection(v51, v52, v53, v54) == 1)
  {
    isEqualToString = objc_msgSend_isEqualToString_(v39, v55, @"left", v56);
    v58 = @"right";
    if ((isEqualToString & 1) == 0)
    {
      v59 = objc_msgSend_isEqualToString_(v39, v55, @"right", v56);
      v58 = @"left";
      if ((v59 & 1) == 0)
      {
        v60 = objc_msgSend_isEqualToString_(v39, v55, @"topLeft", v56);
        v58 = @"topRight";
        if ((v60 & 1) == 0)
        {
          v61 = objc_msgSend_isEqualToString_(v39, v55, @"topRight", v56);
          v58 = @"topLeft";
          if ((v61 & 1) == 0)
          {
            v62 = objc_msgSend_isEqualToString_(v39, v55, @"bottomLeft", v56);
            v58 = @"bottomRight";
            if ((v62 & 1) == 0)
            {
              if (objc_msgSend_isEqualToString_(v39, v55, @"bottomRight", v56))
              {
                v58 = @"bottomLeft";
              }

              else
              {
                v58 = 0;
              }
            }
          }
        }
      }
    }

    if (v58)
    {
      v39 = v58;
    }
  }

  v63 = objc_msgSend_isEqualToString_(v39, v55, @"center", v56);
  if (v63)
  {
    if (v30)
    {
      if (sub_23EC132F8(v63, v64, v65, v66))
      {
        v67 = objc_msgSend_contentView(self, v64, v65, v66);
        objc_msgSend_bounds(v67, v68, v69, v70);
        width = v71;
      }

      v72 = 0.5;
      v73 = (width - v45) * 0.5;
      v74 = floorf(v73);
      if (v74 <= 0.0)
      {
        v74 = 0.0;
      }

      forcedRightmostEditTextInset = v74;
      goto LABEL_44;
    }

LABEL_73:
    forcedRightmostEditTextInset = v41;
    goto LABEL_74;
  }

  if (objc_msgSend_isEqualToString_(v39, v64, @"top", v66))
  {
    if (!v30)
    {
      goto LABEL_73;
    }

    v77 = (width - v45) * 0.5;
    forcedRightmostEditTextInset = floorf(v77);
LABEL_49:
    v43 = v115;
    goto LABEL_74;
  }

  if (!objc_msgSend_isEqualToString_(v39, v64, @"left", v66))
  {
    if (objc_msgSend_isEqualToString_(v39, v78, @"right", v79))
    {
      v82 = width + forcedRightmostEditTextInset;
      if (!v30)
      {
        objc_msgSend_horizontalSpacingForView_withItem_(self, v64, view, item);
        forcedRightmostEditTextInset = v82 + v85;
        *&v85 = (v29 - v47) * 0.5;
        v43 = y + floorf(*&v85);
        goto LABEL_74;
      }

      forcedRightmostEditTextInset = v82 - v45;
      v75 = v29 - v47;
      v72 = 0.5;
      goto LABEL_45;
    }

    if (objc_msgSend_isEqualToString_(v39, v64, @"bottom", v66))
    {
      if (v30)
      {
        v72 = 0.5;
        v84 = (width - v45) * 0.5;
        forcedRightmostEditTextInset = forcedRightmostEditTextInset + floorf(v84);
LABEL_44:
        v75 = v29 - v47;
LABEL_45:
        v76 = v75 * v72;
        v43 = floorf(v76);
        goto LABEL_74;
      }

      v87 = objc_msgSend_contentView(self, v64, v65, v66);
      objc_msgSend_frame(v87, v88, v89, v90);
      v92 = (v91 - v45) * 0.5;
      forcedRightmostEditTextInset = floorf(v92);
    }

    else
    {
      if (objc_msgSend_isEqualToString_(v39, v64, @"topLeft", v66))
      {
        if (!v30)
        {
          goto LABEL_73;
        }

        objc_msgSend_leftInsetForView_withItem_(self, v64, view, item);
        forcedRightmostEditTextInset = v86;
        goto LABEL_49;
      }

      if (objc_msgSend_isEqualToString_(v39, v64, @"topRight", v66))
      {
        if (v30)
        {
          goto LABEL_73;
        }

        objc_msgSend_horizontalSpacingForView_withItem_(self, v64, view, item);
        forcedRightmostEditTextInset = width + forcedRightmostEditTextInset + v93;
        goto LABEL_49;
      }

      if (objc_msgSend_isEqualToString_(v39, v64, @"bottomLeft", v66))
      {
        if (!v30)
        {
          objc_msgSend_verticalSpacingForView_withItem_(self, v64, view, item);
          v43 = v29 + y + v94;
          goto LABEL_74;
        }

        goto LABEL_73;
      }

      if ((v30 | objc_msgSend_isEqualToString_(v39, v64, @"bottomRight", v66) ^ 1))
      {
        goto LABEL_73;
      }

      objc_msgSend_horizontalSpacingForView_withItem_(self, v64, view, item);
      forcedRightmostEditTextInset = width + forcedRightmostEditTextInset + v114;
    }

    v43 = v115 + v29 + y;
    goto LABEL_74;
  }

  v80 = (v29 - v47) * 0.5;
  v43 = floorf(v80);
  if (v30)
  {
    objc_msgSend_leftInsetForView_withItem_(self, v78, view, item);
    forcedRightmostEditTextInset = v81;
  }

  else
  {
    forcedRightmostEditTextInset = forcedRightmostEditTextInset - v45;
    objc_msgSend_horizontalSpacingForView_withItem_(self, v78, view, item);
    v45 = v45 - v83;
  }

LABEL_74:
  v95 = objc_msgSend_reuseIdentifier(self, v64, v65, v66);
  if ((objc_msgSend_isEqualToString_(v95, v96, @"NoBackgroundTypeCellID", v97) & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_msgSend_frame(view, v98, v99, v100);
      if (forcedRightmostEditTextInset < v115 && v104 > 0.0)
      {
        forcedRightmostEditTextInset = v115;
      }

      objc_msgSend_frame(view, v101, v102, v103);
      if (v109 > 0.0)
      {
        objc_msgSend_verticalInset(self, v106, v107, v108);
        if (v43 < v110)
        {
          v43 = v110;
        }
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (forcedRightmostEditTextInset > self->_computedRightmostEditTextInset)
    {
      self->_computedRightmostEditTextInset = forcedRightmostEditTextInset;
    }

    v45 = v45 - (self->_forcedRightmostEditTextInset - forcedRightmostEditTextInset);
    forcedRightmostEditTextInset = self->_forcedRightmostEditTextInset;
  }

  objc_msgSend_setFrame_(view, v111, v112, v113, forcedRightmostEditTextInset, v43, v45, v47);
  if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
  {
    sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculatePositionForView:forItem:atItemIndex:]", 800, "view.frame set to frame=(x = %.1f, y = %.1f, w = %.1f, h = %.1f)\n", forcedRightmostEditTextInset, v43, v45, v47);
  }
}

- (double)calculateFrameSizeForView:(id)view forItem:(id)item atItemIndex:(unint64_t)index withRemainingContentWidth:(double)width
{
  v179[1] = *MEMORY[0x277D85DE8];
  if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
  {
    sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculateFrameSizeForView:forItem:atItemIndex:withRemainingContentWidth:]", 800, "\n");
  }

  v11 = objc_msgSend_objectForKey_(item, a2, @"position", item);
  objc_msgSend_edgeInsetValue_(self, v12, item, v13);
  if ((objc_msgSend_isEqualToString_(v11, v14, @"bottomLeft", v15) & 1) != 0 || objc_msgSend_isEqualToString_(v11, v16, @"bottom", v17))
  {
    v19 = objc_msgSend_objectForKey_(item, v16, @"neighbor", v17);
    if (v19)
    {
      v22 = objc_msgSend_objectForKey_(v19, v20, @"cachedView", v21);
      objc_msgSend_usableContentWidthForItem_withVerticalNeighborView_(self, v23, item, v22);
    }

    else
    {
      objc_msgSend_usableContentWidthForItem_withVerticalNeighborView_(self, v20, item, 0);
    }

    width = v24;
    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  v26 = objc_msgSend_cellDict(self, v16, v18, v17);
  v29 = objc_msgSend_objectForKey_(v26, v27, @"items", v28);
  if (objc_msgSend_count(v29, v30, v31, v32) - 1 == index)
  {
    v33 = 1;
  }

  else
  {
    v33 = v25;
  }

  if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
  {
    v34 = "NO";
    if (v33)
    {
      v34 = "YES";
    }

    sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculateFrameSizeForView:forItem:atItemIndex:withRemainingContentWidth:]", 800, "isLastItem = %s\n", v34);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_frame(view, v35, v36, v37);
    v39 = v38;
    v41 = v40;
    widthCopy = v42;
    v45 = v44;
    if (!objc_msgSend_text(view, v46, v47, v48))
    {
      goto LABEL_54;
    }

    if (objc_msgSend_numberOfLines(view, v49, v50, v51) == 1)
    {
      v55 = objc_msgSend_text(view, v52, v53, v54);
      v178 = *MEMORY[0x277D740A8];
      v179[0] = objc_msgSend_font(view, v56, v57, v58);
      v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v59, v179, &v178, 1);
      objc_msgSend_boundingRectWithSize_options_attributes_context_(v55, v61, 32, v60, 0, width, 1.79769313e308);
    }

    else
    {
      if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
      {
        v125 = objc_msgSend_numberOfLines(view, v52, v53, v54);
        sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculateFrameSizeForView:forItem:atItemIndex:withRemainingContentWidth:]", 800, "laying out UILabel to width = %.1f (number of lines %d)\n", width, v125);
      }

      v126 = objc_msgSend_text(view, v52, v53, v54);
      v176 = *MEMORY[0x277D740A8];
      v177 = objc_msgSend_font(view, v127, v128, v129);
      v131 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v130, &v177, &v176, 1);
      objc_msgSend_boundingRectWithSize_options_attributes_context_(v126, v132, 1, v131, 0, width, 1.79769313e308);
    }

    v39 = v62;
    v41 = v63;
    v133 = v64;
    v134 = ceilf(v133);
    widthCopy = v134;
    v135 = v65;
    v136 = ceilf(v135);
    if (v134 == 0.0)
    {
      v45 = 0.0;
    }

    else
    {
      v45 = v136;
    }

    if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
    {
      v180.origin.x = v39;
      v180.origin.y = v41;
      v180.size.width = widthCopy;
      v180.size.height = v45;
      v137 = NSStringFromCGRect(v180);
      sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculateFrameSizeForView:forItem:atItemIndex:withRemainingContentWidth:]", 800, "computed text rect = %@ (remainingContentWidth %.3f)\n", v137, *&width);
    }

    if (v33)
    {
      widthCopy = width;
      objc_msgSend_setFrame_(view, v49, v50, v51, v39, v41, width, v45);
    }

    else
    {
LABEL_54:
      objc_msgSend_setFrame_(view, v49, v50, v51, v39, v41, widthCopy, v45);
    }

    width = width - widthCopy;
    if (dword_27E382F68 <= 800)
    {
      if (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u))
      {
        objc_msgSend_frame(view, v138, v139, v140);
        objc_msgSend_frame(view, v141, v142, v143);
        sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculateFrameSizeForView:forItem:atItemIndex:withRemainingContentWidth:]", 800, "UILabel size set to=(w = %.1f, h = %.1f)\n");
      }

LABEL_59:
      if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
      {
        sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculateFrameSizeForView:forItem:atItemIndex:withRemainingContentWidth:]", 800, "returning remainingContentWidth of %.1f\n", width);
      }
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_sizeToFit(view, v112, v113, v114);
        if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
        {
          objc_msgSend_frame(view, v115, v116, v117);
          v119 = v118;
          objc_msgSend_frame(view, v120, v121, v122);
          sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculateFrameSizeForView:forItem:atItemIndex:withRemainingContentWidth:]", 800, "UIButton size set to=(w = %.1f, h = %.1f)\n", v119, v123);
        }

        objc_msgSend_frame(view, v115, v116, v117);
        width = width - v124;
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          if (sub_23EC132F8(isKindOfClass, v146, v147, v148))
          {
            v152 = objc_msgSend_contentView(self, v149, v150, v151);
            objc_msgSend_frame(v152, v153, v154, v155);
            v157 = v156;
            v159 = v158;
            v161 = v160;
            v163 = v162;
            v167 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v164, v165, v166);
            objc_msgSend_scale(v167, v168, v169, v170);
            if (v171 == 2.0)
            {
              v172 = 7.5;
            }

            else
            {
              v172 = 7.0;
            }

            v181.origin.x = v157;
            v181.origin.y = v159;
            v181.size.width = v161;
            v181.size.height = v163;
            modifiedContentViewFrame = CGRectInset(v181, 5.0, v172);
          }

          else
          {
            modifiedContentViewFrame = self->_modifiedContentViewFrame;
          }

          objc_msgSend_setFrame_(view, v149, v150, v151, modifiedContentViewFrame.origin.x, modifiedContentViewFrame.origin.y, modifiedContentViewFrame.size.width, modifiedContentViewFrame.size.height);
        }

        else
        {
          objc_msgSend_frame(view, v146, v147, v148);
          width = width - v173;
          if (dword_27E382F68 > 800)
          {
            return width;
          }

          if (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u))
          {
            v174 = objc_opt_class();
            v175 = NSStringFromClass(v174);
            sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculateFrameSizeForView:forItem:atItemIndex:withRemainingContentWidth:]", 800, "size calculation for this class %@ is not yet supported\n", v175);
          }
        }
      }

      goto LABEL_59;
    }

    v69 = MEMORY[0x277D74300];
    objc_msgSend_labelFontSize(MEMORY[0x277D74300], v66, v67, v68);
    v73 = objc_msgSend_systemFontOfSize_(v69, v70, v71, v72);
    v77 = objc_msgSend_font(view, v74, v75, v76);
    objc_msgSend_pointSize(v77, v78, v79, v80);
    v82 = v81;
    objc_msgSend_pointSize(v73, v83, v84, v85);
    if (v82 > v89)
    {
      v73 = objc_msgSend_font(view, v86, v87, v88);
    }

    objc_msgSend_frame(view, v86, v87, v88);
    v91 = v90;
    v93 = v92;
    objc_msgSend_lineHeight(v73, v94, v95, v96);
    widthCopy2 = width;
    v102 = width * 0.5;
    v103 = floorf(v102);
    if (!v33)
    {
      widthCopy2 = v103;
    }

    v104 = ceilf(widthCopy2);
    v105 = v100;
    objc_msgSend_setFrame_(view, v97, v98, v99, v91, v93, v104, ceilf(v105));
    width = width - v104;
    if (dword_27E382F68 <= 800)
    {
      if (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u))
      {
        objc_msgSend_frame(view, v106, v107, v108);
        objc_msgSend_frame(view, v109, v110, v111);
        sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculateFrameSizeForView:forItem:atItemIndex:withRemainingContentWidth:]", 800, "UITextField size set to=(w = %.1f, h = %.1f)\n");
      }

      goto LABEL_59;
    }
  }

  return width;
}

- (void)repositionView:(id)view ifOverlapsPreviousView:(id)previousView
{
  objc_msgSend_frame(view, a2, view, previousView);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  objc_msgSend_frame(previousView, v14, v15, v16);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v38.origin.x = v7;
  v38.origin.y = v9;
  v38.size.width = v11;
  v38.size.height = v13;
  v43.origin.x = v18;
  v43.origin.y = v20;
  v43.size.width = v22;
  v43.size.height = v24;
  if (CGRectIntersectsRect(v38, v43))
  {
    v36 = v13;
    v25 = v11;
    v26 = v9;
    v27 = v7;
    if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
    {
      sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell repositionView:ifOverlapsPreviousView:]", 800, "view %@ collides with %@\n", view, previousView);
    }

    v39.origin.x = v18;
    v39.origin.y = v20;
    v39.size.width = v22;
    v39.size.height = v24;
    MinX = CGRectGetMinX(v39);
    v40.origin.x = v27;
    v40.origin.y = v26;
    v40.size.width = v25;
    v40.size.height = v36;
    if (MinX < CGRectGetMinX(v40))
    {
      v41.origin.x = v18;
      v41.origin.y = v20;
      v41.size.width = v22;
      v41.size.height = v24;
      MaxX = CGRectGetMaxX(v41);
      v30 = v27;
      v31 = MaxX;
      v42.origin.x = v30;
      v42.origin.y = v26;
      v42.size.width = v25;
      v42.size.height = v36;
      v35 = v22 - (v31 - (CGRectGetMinX(v42) + -10.0));

      objc_msgSend_setFrame_(previousView, v32, v33, v34, v18, v20, v35, v24);
    }
  }
}

- (void)layoutSubviews
{
  v179 = *MEMORY[0x277D85DE8];
  if (dword_27E382F68 <= 800)
  {
    if (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u))
    {
      v5 = objc_msgSend_currentIndexPath(self, a2, v2, v3);
      v9 = objc_msgSend_section(v5, v6, v7, v8);
      v13 = objc_msgSend_currentIndexPath(self, v10, v11, v12);
      v17 = objc_msgSend_row(v13, v14, v15, v16);
      sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell layoutSubviews]", 800, "cell %@ section %d row %d\n", self, v9, v17);
    }

    if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
    {
      sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell layoutSubviews]", 800, "current forced max edit text inset = %.1f\n", self->_forcedRightmostEditTextInset);
    }
  }

  v177.receiver = self;
  v177.super_class = ManagedTableViewCell;
  [(ManagedTableViewCell *)&v177 layoutSubviews];
  v21 = objc_msgSend_reuseIdentifier(self, v18, v19, v20);
  isEqualToString = objc_msgSend_isEqualToString_(v21, v22, @"NoBackgroundTypeCellID", v23);
  self->_computedRightmostEditTextInset = 0.0;
  objc_msgSend_verticalInset(self, v25, v26, v27);
  v32 = v31;
  if (isEqualToString)
  {
    objc_msgSend_setBackgroundView_(self, v28, 0, v30);
  }

  v33 = objc_msgSend_contentView(self, v28, v29, v30);
  v37 = objc_msgSend_frame(v33, v34, v35, v36);
  v43 = v41;
  if (self->_cellXEdgeInset != v41)
  {
    v44 = v42;
    self->_cellXEdgeInset = v41;
    v45 = objc_msgSend_parentTableManager(self, v38, v39, v40);
    v37 = objc_msgSend_informOfNewCellLeftEdge_andWidth_(v45, v46, v47, v48, v43, v44);
  }

  if (sub_23EC132F8(v37, v38, v39, v40))
  {
    if (objc_msgSend_isEditing(self, v49, v50, v51) && objc_msgSend_accessoryType(self, v52, v53, v54))
    {
      objc_msgSend_frame(self, v52, v53, v54);
      p_modifiedContentViewFrame = &self->_modifiedContentViewFrame;
      v63 = v62 + -33.0;
      goto LABEL_22;
    }
  }

  else
  {
    v64 = objc_msgSend_parentTableManager(self, v49, v50, v51);
    v68 = objc_msgSend_managedTableView(v64, v65, v66, v67);
    if (objc_msgSend_style(v68, v69, v70, v71) == 1)
    {
      v72 = objc_msgSend_contentView(self, v52, v53, v54);
      objc_msgSend_frame(v72, v73, v74, v75);
      v77 = v76;
      objc_msgSend_frame(self, v78, v79, v80);
      if (v77 == v81)
      {
        p_modifiedContentViewFrame = &self->_modifiedContentViewFrame;
        v82 = objc_msgSend_contentView(self, v52, v53, v54);
        objc_msgSend_frame(v82, v83, v84, v85);
        *&v58 = CGRectInset(v180, 10.0, 0.0);
        goto LABEL_22;
      }
    }
  }

  p_modifiedContentViewFrame = &self->_modifiedContentViewFrame;
  v86 = objc_msgSend_contentView(self, v52, v53, v54);
  objc_msgSend_frame(v86, v87, v88, v89);
LABEL_22:
  p_modifiedContentViewFrame->origin.x = v58;
  p_modifiedContentViewFrame->origin.y = v59;
  p_modifiedContentViewFrame->size.width = v63;
  p_modifiedContentViewFrame->size.height = v60;
  objc_msgSend_usableContentWidth(self, v55, v56, v57);
  v94 = v93;
  v171 = isEqualToString;
  if (dword_27E382F68 >= 801)
  {
    p_neededContentHeight = &self->_neededContentHeight;
    self->_neededContentHeight = 44.0;
  }

  else
  {
    if (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u))
    {
      sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell layoutSubviews]", 800, "initial content width = %.1f\n", v94);
    }

    v95 = dword_27E382F68;
    p_neededContentHeight = &self->_neededContentHeight;
    self->_neededContentHeight = 44.0;
    if (v95 <= 800 && (v95 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
    {
      v97 = objc_msgSend_contentView(self, v90, v91, v92);
      sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell layoutSubviews]", 800, "contentView %@\n", v97);
    }
  }

  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v98 = objc_msgSend_cellDict(self, v90, v91, v92);
  obj = objc_msgSend_objectForKey_(v98, v99, @"items", v100);
  v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v101, &v173, v178, 16);
  if (v102)
  {
    v107 = v102;
    v108 = 0;
    v109 = 0;
    v110 = *v174;
    do
    {
      v111 = 0;
      v112 = v108;
      do
      {
        if (*v174 != v110)
        {
          objc_enumerationMutation(obj);
        }

        v113 = *(*(&v173 + 1) + 8 * v111);
        v108 = objc_msgSend_objectForKey_(v113, v103, @"cachedView", v105);
        if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
        {
          sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell layoutSubviews]", 800, "item index %d cached view %@\n", v109, v108);
        }

        objc_msgSend_calculateFrameSizeForView_forItem_atItemIndex_withRemainingContentWidth_(self, v114, v108, v113, v109, v94);
        v116 = v115;
        objc_msgSend_calculatePositionForView_forItem_atItemIndex_(self, v117, v108, v113, v109);
        if (v112)
        {
          objc_msgSend_repositionView_ifOverlapsPreviousView_(self, v118, v108, v112);
        }

        v121 = objc_msgSend_contentView(self, v118, v119, v120);
        objc_msgSend_addSubview_(v121, v122, v108, v123);
        objc_msgSend_horizontalSpacingForView_withItem_(self, v124, v108, v113);
        v126 = v125;
        if (objc_msgSend_objectForKey_(v113, v127, @"edgeInset", v128))
        {
          objc_msgSend_edgeInsetValue_(self, v129, v113, v131);
          v32 = v132;
        }

        v94 = v116 - v126;
        if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
        {
          sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell layoutSubviews]", 800, "remaining content width = %.1f\n", v94);
        }

        objc_msgSend_frame(v108, v129, v130, v131);
        MaxY = CGRectGetMaxY(v181);
        if (MaxY > *p_neededContentHeight)
        {
          *p_neededContentHeight = MaxY;
          if (dword_27E382F68 <= 800)
          {
            if (dword_27E382F68 == -1)
            {
              if (!sub_23EB74AC8(&dword_27E382F68, 0x320u))
              {
                goto LABEL_54;
              }

              MaxY = *p_neededContentHeight;
            }

            sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell layoutSubviews]", 800, "adjusted _neededContentHeight to %.1f\n", MaxY);
          }
        }

LABEL_54:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_setIsAccessibilityElement_(v108, v103, 0, v105);
          v137 = objc_msgSend_accessibilityTraits(v108, v134, v135, v136);
          objc_msgSend_setAccessibilityTraits_(self, v138, v137, v139);
          objc_msgSend_accessibilityActivationPoint(v108, v140, v141, v142);
          objc_msgSend_setAccessibilityActivationPoint_(self, v143, v144, v145);
        }

        ++v109;
        ++v111;
        v112 = v108;
      }

      while (v107 != v111);
      v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v103, &v173, v178, 16);
    }

    while (v107);
  }

  if ((v171 & 1) == 0)
  {
    v106 = *p_neededContentHeight;
    if (*p_neededContentHeight > 44.0)
    {
      v106 = v32 + v106;
      *p_neededContentHeight = v106;
      if (dword_27E382F68 <= 800)
      {
        if (dword_27E382F68 == -1)
        {
          if (!sub_23EB74AC8(&dword_27E382F68, 0x320u))
          {
            goto LABEL_65;
          }

          v106 = *p_neededContentHeight;
        }

        sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell layoutSubviews]", 800, "adjusted _neededContentHeight by kStandardEdgeInset to %.1f\n", v106);
      }
    }
  }

LABEL_65:
  v146 = objc_msgSend_cellDict(self, v103, v104, v105, v106);
  v152 = objc_msgSend_objectForKey_(v146, v147, @"cachedHeight", v148);
  if (!v152)
  {
    v152 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v149, v150, v151);
    v156 = objc_msgSend_cellDict(self, v153, v154, v155);
    objc_msgSend_setObject_forKey_(v156, v157, v152, @"cachedHeight");
  }

  v158 = *p_neededContentHeight;
  *&v158 = *p_neededContentHeight;
  v159 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v149, v150, v151, v158);
  v160 = MEMORY[0x277CCABB0];
  objc_msgSend_bounds(self, v161, v162, v163);
  *&v165 = v164;
  v169 = objc_msgSend_numberWithFloat_(v160, v166, v167, v168, v165);
  objc_msgSend_setObject_forKey_(v152, v170, v159, v169);
  if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
  {
    sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell layoutSubviews]", 800, "final _neededContentHeight = %.1f\n", *p_neededContentHeight);
  }
}

- (id)accessibilityValue
{
  v41 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = objc_msgSend_cellDict(self, a2, v2, v3);
  v8 = objc_msgSend_objectForKey_(v5, v6, @"items", v7);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v36, v40, 16);
  if (v10)
  {
    v14 = v10;
    v15 = *v37;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v37 != v15)
      {
        objc_enumerationMutation(v8);
      }

      v17 = objc_msgSend_objectForKey_(*(*(&v36 + 1) + 8 * v16), v11, @"cachedView", v13);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v36, v40, 16);
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    if (!v17)
    {
      goto LABEL_12;
    }

    return objc_msgSend_accessibilityValue(v17, v11, v12, v13);
  }

  else
  {
LABEL_12:
    v19 = objc_msgSend_parentTableManager(self, v11, v12, v13);
    v23 = objc_msgSend_currentIndexPath(self, v20, v21, v22);
    ValueForFirstItemOfType_inCellAtIndexPath = objc_msgSend_getValueForFirstItemOfType_inCellAtIndexPath_(v19, v24, @"unreadBubbleCount", v23);
    if (ValueForFirstItemOfType_inCellAtIndexPath)
    {
      v26 = ValueForFirstItemOfType_inCellAtIndexPath;
      v27 = sub_23EB6CD3C(@"status.alerts.plural", @"AirportAccessibility");
      if (objc_msgSend_integerValue(v26, v28, v29, v30) == 1)
      {
        v27 = sub_23EB6CD3C(@"status.alerts.singular", @"AirportAccessibility");
      }

      v32 = MEMORY[0x277CCACA8];
      v33 = objc_msgSend_localizedStringFromNumber_numberStyle_(MEMORY[0x277CCABB8], v31, v26, 0);
      return objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v32, v34, v27, @"%@", 0, v33);
    }

    else
    {
      v35.receiver = self;
      v35.super_class = ManagedTableViewCell;
      return [(ManagedTableViewCell *)&v35 accessibilityValue];
    }
  }
}

@end
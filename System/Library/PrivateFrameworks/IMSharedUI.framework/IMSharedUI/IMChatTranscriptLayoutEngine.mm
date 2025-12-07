@interface IMChatTranscriptLayoutEngine
- (CGSize)contentSize;
- (IMChatTranscriptLayoutEngine)init;
- (IMChatTranscriptLayoutEngineDataSource)dataSource;
- (NSArray)layoutAttributes;
- (double)_spaceForVerticalSpaceDescriptor:(int64_t)descriptor;
- (id)_cachedDrawableAtIndexOrNil:(unint64_t)nil;
- (id)_cachedDrawableForTranscriptItem:(id)item atIndex:(unint64_t)index;
- (id)drawableAtIndex:(unint64_t)index;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (unint64_t)_numberOfTranscriptItems;
- (void)_buildLayoutAttributesIfNeeded;
- (void)_updateContentSize;
- (void)_updateFrames;
- (void)reloadData;
- (void)removeItemsAtIndexPaths:(id)paths insertItemsAtIndexPaths:(id)indexPaths;
- (void)setDataSource:(id)source;
- (void)setLayoutSpecification:(id)specification;
@end

@implementation IMChatTranscriptLayoutEngine

- (IMChatTranscriptLayoutEngine)init
{
  v10.receiver = self;
  v10.super_class = IMChatTranscriptLayoutEngine;
  v2 = [(IMChatTranscriptLayoutEngine *)&v10 init];
  v7 = v2;
  if (v2)
  {
    objc_msgSend__invalidateCachedItemData(v2, v3, v4, v6, v5);
    v8 = v7;
  }

  return v7;
}

- (void)setLayoutSpecification:(id)specification
{
  specificationCopy = specification;
  layoutSpecification = self->_layoutSpecification;
  if (layoutSpecification != specificationCopy)
  {
    v17 = specificationCopy;
    layoutSpecification = objc_msgSend_isEqual_(layoutSpecification, specificationCopy, specificationCopy, v6, v5);
    if ((layoutSpecification & 1) == 0)
    {
      v11 = objc_msgSend_copy(v17, v17, v8, v10, v9);
      v12 = self->_layoutSpecification;
      self->_layoutSpecification = v11;

      layoutSpecification = objc_msgSend_invalidateLayout(self, v13, v14, v16, v15);
    }
  }

  MEMORY[0x2821F96F8](layoutSpecification);
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    objc_msgSend_reloadData(self, v6, v7, v9, v8);
    v5 = obj;
  }
}

- (void)reloadData
{
  objc_msgSend__invalidateCachedItemData(self, a2, v2, v4, v3);

  objc_msgSend_invalidateLayout(self, v6, v7, v9, v8);
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v9 = objc_msgSend_layoutAttributes(self, v5, v6, v8, v7);
  v14 = objc_msgSend_item(pathCopy, v10, v11, v13, v12);

  if (v14 >= objc_msgSend_count(v9, v15, v16, v18, v17))
  {
    v23 = IMLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_2548056A8(v9, v14, v23, v24, v25);
    }

    v22 = 0;
  }

  else
  {
    v22 = objc_msgSend_objectAtIndexedSubscript_(v9, v19, v14, v21, v20);
  }

  return v22;
}

- (CGSize)contentSize
{
  if (!self->_layoutAttributes)
  {
    v6 = objc_msgSend_layoutAttributes(self, a2, v2, v4, v3);
  }

  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_buildLayoutAttributesIfNeeded
{
  if (!self->_layoutAttributes)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if (WeakRetained)
    {
      layoutSpecification = self->_layoutSpecification;

      if (layoutSpecification)
      {
        objc_msgSend_layoutBoundsSize(self->_layoutSpecification, v5, v6, v8, v7);
        v10 = v9.n128_f64[0];
        objc_msgSend_maximumBubbleWidth(self->_layoutSpecification, v11, v12, v9, v13);
        v15 = v14.n128_u64[0];
        v19 = objc_msgSend__numberOfTranscriptItems(self, v16, v17, v14, v18);
        v20 = objc_alloc(MEMORY[0x277CBEB18]);
        v25 = objc_msgSend_initWithCapacity_(v20, v21, v19, v23, v22);
        if (v19)
        {
          v27 = 0;
          for (i = 0; i != v19; ++i)
          {
            v29 = objc_msgSend_indexPathForItem_inSection_(MEMORY[0x277CCAA70], v24, i, v26, 0);
            v30 = objc_loadWeakRetained(&self->_dataSource);
            v33 = objc_msgSend_layoutEngine_transcriptItemAtIndex_(v30, v31, self, v32, i);

            v36 = objc_msgSend__cachedDrawableForTranscriptItem_atIndex_(self, v34, v33, v35, i);
            v37.n128_u64[0] = v15;
            objc_msgSend_sizeConstrainedToWidth_(v36, v38, v39, v37, v40);
            v42 = v41;
            v44 = fmin(v43, v10);
            v45 = objc_alloc_init(IMChatTranscriptItemExtendedLayoutAttributes);
            v50 = objc_msgSend_layoutOrientation(v36, v46, v47, v49, v48);
            objc_msgSend_setLayoutOrientation_(v45, v51, v50, v53, v52);
            objc_msgSend_setIndexPath_(v45, v54, v29, v56, v55);
            v57.n128_f64[0] = v44;
            objc_msgSend_setDrawableSize_(v45, v58, v59, v57, v60, v42);
            if (v27)
            {
              v65 = objc_msgSend_layoutClassification(v27, v61, v62, v64, v63);
              v69 = objc_msgSend_verticalSpaceToPrecedingItemOfClassification_(v36, v66, v65, v68, v67);
              objc_msgSend__spaceForVerticalSpaceDescriptor_(self, v70, v69, v72, v71);
              objc_msgSend_setTopMargin_(v45, v73, v74, v76, v75);
            }

            objc_msgSend_addObject_(v25, v61, v45, v64, v63);

            v27 = v36;
          }
        }

        layoutAttributes = self->_layoutAttributes;
        self->_layoutAttributes = v25;

        objc_msgSend__updateFrames(self, v78, v79, v81, v80);

        MEMORY[0x2821F9670](self, sel__updateContentSize, v82, v83);
      }
    }
  }
}

- (NSArray)layoutAttributes
{
  objc_msgSend__buildLayoutAttributesIfNeeded(self, a2, v2, v4, v3);
  layoutAttributes = self->_layoutAttributes;
  if (layoutAttributes)
  {
    v7 = layoutAttributes;
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (void)_updateFrames
{
  v61 = *MEMORY[0x277D85DE8];
  objc_msgSend_layoutBoundsSize(self->_layoutSpecification, a2, v2, v4, v3);
  v7 = v6.n128_f64[0];
  objc_msgSend_topMargin(self->_layoutSpecification, v8, v9, v6, v10);
  v12 = v11.n128_f64[0];
  objc_msgSend_leadingMargin(self->_layoutSpecification, v13, v14, v11, v15);
  v17 = v16.n128_f64[0];
  objc_msgSend_trailingMargin(self->_layoutSpecification, v18, v19, v16, v20);
  v22 = v21;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v23 = self->_layoutAttributes;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v56, v25, v60, 16);
  if (v26)
  {
    v31 = v26;
    v32 = *v57;
    v33 = *MEMORY[0x277CBF3A0];
    v34 = v7 - v22;
    v30.n128_f64[0] = v17 + v22;
    v35 = v7 - (v17 + v22);
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v57 != v32)
        {
          objc_enumerationMutation(v23);
        }

        v37 = *(*(&v56 + 1) + 8 * i);
        objc_msgSend_topMargin(v37, v27, v28, v30, v29, v56);
        v39 = v38.n128_f64[0];
        objc_msgSend_drawableSize(v37, v40, v41, v38, v42);
        v44 = v43.n128_f64[0];
        v46 = v45;
        v50 = objc_msgSend_layoutOrientation(v37, v47, v48, v43, v49);
        if (v50 == 2)
        {
          v54.n128_f64[0] = v34 - v44;
        }

        else if (v50 == 1)
        {
          v54.n128_f64[0] = v17 + round((v35 - v44) * 0.5);
        }

        else if (v50)
        {
          v54.n128_f64[0] = v33;
        }

        else
        {
          v54.n128_f64[0] = v17;
        }

        v55 = v12 + v39;
        objc_msgSend_setFrame_(v37, v51, v52, v54, v53, v55, v44, v46);
        v12 = v55 + v46;
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v27, &v56, v30, v60, 16);
    }

    while (v31);
  }
}

- (double)_spaceForVerticalSpaceDescriptor:(int64_t)descriptor
{
  if (descriptor > 1)
  {
    if (descriptor == 2)
    {
      (MEMORY[0x2821F9670])(self->_layoutSpecification, sel_mediumVerticalItemSpacing, 2);
    }

    else if (descriptor == 3)
    {
      (MEMORY[0x2821F9670])(self->_layoutSpecification, sel_largeVerticalItemSpacing, 3);
    }
  }

  else if (descriptor)
  {
    if (descriptor == 1)
    {
      (MEMORY[0x2821F9670])(self->_layoutSpecification, sel_smallVerticalItemSpacing, 1);
    }
  }

  else
  {
    (MEMORY[0x2821F9670])(self->_layoutSpecification, sel_zeroVerticalItemSpacing, 0);
  }

  return result;
}

- (id)drawableAtIndex:(unint64_t)index
{
  objc_msgSend__buildLayoutAttributesIfNeeded(self, a2, index, v4, v3);
  cachedDrawables = self->_cachedDrawables;

  return objc_msgSend_objectAtIndex_(cachedDrawables, v7, index, v9, v8);
}

- (void)removeItemsAtIndexPaths:(id)paths insertItemsAtIndexPaths:(id)indexPaths
{
  v87 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  indexPathsCopy = indexPaths;
  v12 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v8, v9, v11, v10);
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v13 = pathsCopy;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v81, v15, v86, 16);
  if (v16)
  {
    v21 = v16;
    v22 = *v82;
    do
    {
      v23 = 0;
      do
      {
        if (*v82 != v22)
        {
          objc_enumerationMutation(v13);
        }

        v24 = objc_msgSend_item(*(*(&v81 + 1) + 8 * v23), v17, v18, v20, v19);
        objc_msgSend_addIndex_(v12, v25, v24, v27, v26);
        ++v23;
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v17, &v81, v20, v86, 16);
    }

    while (v21);
  }

  objc_msgSend_removeObjectsAtIndexes_(self->_cachedDrawables, v28, v12, v30, v29);
  v35 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v31, v32, v34, v33);
  v36 = MEMORY[0x277CBEB18];
  v41 = objc_msgSend_count(indexPathsCopy, v37, v38, v40, v39);
  v45 = objc_msgSend_arrayWithCapacity_(v36, v42, v41, v44, v43);
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v46 = indexPathsCopy;
  v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v77, v48, v85, 16);
  if (v49)
  {
    v54 = v49;
    v55 = *v78;
    do
    {
      v56 = 0;
      do
      {
        if (*v78 != v55)
        {
          objc_enumerationMutation(v46);
        }

        v57 = objc_msgSend_item(*(*(&v77 + 1) + 8 * v56), v50, v51, v53, v52);
        objc_msgSend_addIndex_(v35, v58, v57, v60, v59);
        ++v56;
      }

      while (v54 != v56);
      v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v50, &v77, v53, v85, 16);
    }

    while (v54);
  }

  v71 = MEMORY[0x277D85DD0];
  v72 = 3221225472;
  v73 = sub_254801878;
  v74 = &unk_279789150;
  selfCopy = self;
  v76 = v45;
  v61 = v45;
  objc_msgSend_enumerateIndexesUsingBlock_(v35, v62, &v71, v64, v63);
  objc_msgSend_insertObjects_atIndexes_(self->_cachedDrawables, v65, v61, v66, v35, v71, v72, v73, v74, selfCopy);
  objc_msgSend_invalidateLayout(self, v67, v68, v70, v69);
}

- (id)_cachedDrawableForTranscriptItem:(id)item atIndex:(unint64_t)index
{
  itemCopy = item;
  p_cachedDrawables = &self->_cachedDrawables;
  cachedDrawables = self->_cachedDrawables;
  if (!cachedDrawables)
  {
    v13 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7, v10, v8);
    v14 = *p_cachedDrawables;
    *p_cachedDrawables = v13;

    cachedDrawables = *p_cachedDrawables;
  }

  v15 = objc_msgSend_count(cachedDrawables, v6, v7, v10, v8);
  if (v15 >= index)
  {
    if (v15 > index)
    {
      v22 = objc_msgSend__cachedDrawableAtIndexOrNil_(self, v16, index, v18, v17);
      if (v22)
      {
        v23 = v22;
        objc_msgSend_setChatTranscriptItem_(v22, v16, itemCopy, v18, v17);
        goto LABEL_16;
      }
    }

    v24 = objc_msgSend__makeDrawableForTranscriptItem_(self, v16, itemCopy, v18, v17);
    if (v24)
    {
      v23 = v24;
      objc_msgSend_setObject_atIndexedSubscript_(*p_cachedDrawables, v25, v24, v28, index);
      goto LABEL_16;
    }

    v29 = objc_msgSend_null(MEMORY[0x277CBEB68], v25, v26, v28, v27);
    objc_msgSend_setObject_atIndexedSubscript_(*p_cachedDrawables, v30, v29, v31, index);

    v32 = IMLogHandleForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_25480572C(itemCopy);
    }
  }

  else
  {
    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_2548057C0(p_cachedDrawables, index, v19, v20, v21);
    }
  }

  v23 = 0;
LABEL_16:

  return v23;
}

- (id)_cachedDrawableAtIndexOrNil:(unint64_t)nil
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(self->_cachedDrawables, a2, nil, v4, v3);
  v10 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7, v9, v8);
  if (objc_msgSend_isEqual_(v5, v11, v10, v13, v12))
  {
    v14 = 0;
  }

  else
  {
    v14 = v5;
  }

  v15 = v14;

  return v14;
}

- (unint64_t)_numberOfTranscriptItems
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v7 = objc_msgSend_numberOfTranscriptItemsForLayoutEngine_(WeakRetained, v4, self, v6, v5);

  return v7;
}

- (void)_updateContentSize
{
  v6 = objc_msgSend_lastObject(self->_layoutAttributes, a2, v2, v4, v3);
  v22 = v6;
  if (v6)
  {
    objc_msgSend_frame(v6, v7, v8, v10, v9);
    v11.n128_f64[0] = CGRectGetMaxY(v24);
    v12 = v11.n128_f64[0];
    objc_msgSend_layoutBoundsSize(self->_layoutSpecification, v13, v14, v11, v15);
    v17 = v16.n128_u64[0];
    objc_msgSend_bottomMargin(self->_layoutSpecification, v18, v19, v16, v20);
    v21 = v12 + v10.n128_f64[0];
  }

  else
  {
    v17 = *MEMORY[0x277CBF3A8];
    v21 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v10.n128_u64[0] = v17;
  objc_msgSend_setContentSize_(self, v7, v8, v10, v9, v21);
}

- (IMChatTranscriptLayoutEngineDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end
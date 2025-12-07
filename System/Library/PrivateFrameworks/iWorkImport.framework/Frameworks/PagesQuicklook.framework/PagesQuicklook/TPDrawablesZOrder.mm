@interface TPDrawablesZOrder
- (TPDrawablesZOrder)initWithContext:(id)context;
- (id)drawableAtZOrder:(unint64_t)order;
- (id)orderedDrawables:(id)drawables;
- (unint64_t)insertDrawable:(id)drawable atZOrder:(unint64_t)order;
- (unint64_t)zOrderOfDrawable:(id)drawable;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)moveDrawable:(id)drawable toZOrder:(unint64_t)order;
- (void)moveDrawableAtZOrder:(unint64_t)order toZOrder:(unint64_t)zOrder;
- (void)moveDrawables:(id)drawables toIndexes:(id)indexes;
- (void)moveDrawables:(id)drawables toZOrder:(unint64_t)order;
- (void)removeDrawable:(id)drawable;
- (void)removeDrawableAtZOrder:(unint64_t)order;
- (void)saveToArchiver:(id)archiver;
- (void)swapDrawableAtZOrder:(unint64_t)order withDrawableAtZOrder:(unint64_t)zOrder;
@end

@implementation TPDrawablesZOrder

- (TPDrawablesZOrder)initWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TPDrawablesZOrder;
  return [(TPDrawablesZOrder *)&v4 initWithContext:context];
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v13 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, v9, v10, v11, v12, off_2812F85B8[18], v6, v7, v8);

  v14 = *(v13 + 24);
  if (v14)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_275FDE848;
    v24[3] = &unk_27A6A8740;
    v24[4] = self;
    v24[5] = v14;
    sub_275FDE79C(unarchiverCopy, v13 + 16, &unk_2885108A0, v24);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_275FDE9FC;
    v23[3] = &unk_27A6A8768;
    v23[4] = self;
    objc_msgSend_addFinalizeHandler_(unarchiverCopy, v15, v19, v20, v21, v22, v23, v16, v17, v18);
  }
}

- (void)saveToArchiver:(id)archiver
{
  v49 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v12 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, v8, v9, v10, v11, sub_275FDFB2C, off_2812F85B8[18], v6, v7);

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v13 = self->_drawables;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v16, v17, v18, v19, &v44, v48, 16, v15);
  if (v23)
  {
    v28 = *v45;
    do
    {
      v29 = 0;
      do
      {
        if (*v45 != v28)
        {
          objc_enumerationMutation(v13);
        }

        v30 = *(*(&v44 + 1) + 8 * v29);
        v31 = *(v12 + 32);
        if (!v31)
        {
          goto LABEL_11;
        }

        v32 = *(v12 + 24);
        v33 = *v31;
        if (v32 < *v31)
        {
          *(v12 + 24) = v32 + 1;
          objc_msgSend_setStrongReference_message_(archiverCopy, v20, v24, v25, v26, v27, v30, *&v31[2 * v32 + 2], v21, v22, v44);
          goto LABEL_13;
        }

        if (v33 == *(v12 + 28))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v12 + 16));
          v31 = *(v12 + 32);
          v33 = *v31;
        }

        *v31 = v33 + 1;
        v34 = MEMORY[0x277C92D60](*(v12 + 16));
        v35 = *(v12 + 24);
        v36 = *(v12 + 32) + 8 * v35;
        *(v12 + 24) = v35 + 1;
        *(v36 + 8) = v34;
        objc_msgSend_setStrongReference_message_(archiverCopy, v37, v40, v41, v42, v43, v30, v34, v38, v39, v44);
LABEL_13:
        ++v29;
      }

      while (v23 != v29);
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, v24, v25, v26, v27, &v44, v48, 16, v22);
    }

    while (v23);
  }
}

- (id)drawableAtZOrder:(unint64_t)order
{
  drawables = self->_drawables;
  if (drawables)
  {
    if (objc_msgSend_count(drawables, a2, v6, v7, v8, v9, order, v3, v4, v5) <= order)
    {
      drawables = 0;
    }

    else
    {
      drawables = objc_msgSend_objectAtIndexedSubscript_(self->_drawables, v13, v17, v18, v19, v20, order, v14, v15, v16);
    }
  }

  return drawables;
}

- (unint64_t)zOrderOfDrawable:(id)drawable
{
  drawableCopy = drawable;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  if (drawableCopy)
  {
    drawables = self->_drawables;
    if (drawables)
    {
      v13 = objc_msgSend_indexOfObjectIdenticalTo_(drawables, v4, v9, v10, v11, v12, drawableCopy, v5, v6, v7);
    }
  }

  return v13;
}

- (void)moveDrawables:(id)drawables toIndexes:(id)indexes
{
  drawablesCopy = drawables;
  indexesCopy = indexes;
  if (drawablesCopy && indexesCopy)
  {
    v16 = objc_msgSend_count(self->_drawables, v6, v12, v13, v14, v15, v7, v8, v9, v10);
    v26 = objc_msgSend_count(drawablesCopy, v17, v22, v23, v24, v25, v18, v19, v20, v21);
    v36 = objc_msgSend_count(indexesCopy, v27, v32, v33, v34, v35, v28, v29, v30, v31);
    Index = objc_msgSend_lastIndex(indexesCopy, v37, v42, v43, v44, v45, v38, v39, v40, v41);
    if (v26 != v36)
    {
      v56 = MEMORY[0x277D81150];
      v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v52, v53, v54, v55, "[TPDrawablesZOrder moveDrawables:toIndexes:]", v48, v49, v50);
      v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDrawablesZOrder.mm", v59, v60, v61);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v67, v68, v69, v70, v71, v57, v66, 147, 0, "Can't move drawables to indexes, counts don't match.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v77, v78, v79, v80, v73, v74, v75, v76);
    }

    if (Index >= v16)
    {
      v81 = MEMORY[0x277D81150];
      v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v52, v53, v54, v55, "[TPDrawablesZOrder moveDrawables:toIndexes:]", v48, v49, v50);
      v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, v87, v88, v89, v90, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDrawablesZOrder.mm", v84, v85, v86);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v92, v93, v94, v95, v96, v82, v91, 148, 0, "Can't move drawables to indexes, one or more indexes out of range.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v97, v102, v103, v104, v105, v98, v99, v100, v101);
    }

    v106 = objc_msgSend_count(drawablesCopy, v46, v52, v53, v54, v55, v47, v48, v49, v50);
    v116 = objc_msgSend_count(indexesCopy, v107, v112, v113, v114, v115, v108, v109, v110, v111);
    if (Index < v16 && v106 == v116)
    {
      objc_msgSend_willModify(self, v117, v122, v123, v124, v125, v118, v119, v120, v121);
      objc_msgSend_removeObjectsInArray_(self->_drawables, v126, v130, v131, v132, v133, drawablesCopy, v127, v128, v129);
      objc_msgSend_insertObjects_atIndexes_(self->_drawables, v134, v137, v138, v139, v140, drawablesCopy, indexesCopy, v135, v136);
    }
  }
}

- (unint64_t)insertDrawable:(id)drawable atZOrder:(unint64_t)order
{
  drawableCopy = drawable;
  v54 = drawableCopy;
  if (drawableCopy)
  {
    drawables = self->_drawables;
    if (drawables)
    {
      orderCopy = 0x7FFFFFFFFFFFFFFFLL;
      if (objc_msgSend_indexOfObjectIdenticalTo_(drawables, v6, v12, v13, v14, v15, drawableCopy, v8, v9, v10) == 0x7FFFFFFFFFFFFFFFLL)
      {
        orderCopy = objc_msgSend_count(self->_drawables, v17, v22, v23, v24, v25, v18, v19, v20, v21);
        objc_msgSend_willModify(self, v27, v32, v33, v34, v35, v28, v29, v30, v31);
        if (orderCopy >= order)
        {
          orderCopy = order;
        }

        objc_msgSend_insertObject_atIndex_(self->_drawables, v36, v39, v40, v41, v42, drawableCopy, orderCopy, v37, v38);
      }
    }

    else
    {
      objc_msgSend_willModify(self, v6, v12, v13, v14, v15, v7, v8, v9, v10);
      v43 = objc_alloc(MEMORY[0x277CBEB18]);
      v51 = objc_msgSend_initWithObjects_count_(v43, v44, v47, v48, v49, v50, &v54, 1, v45, v46);
      v52 = self->_drawables;
      self->_drawables = v51;

      orderCopy = 0;
      drawableCopy = v54;
    }
  }

  else
  {
    orderCopy = 0x7FFFFFFFFFFFFFFFLL;
  }

  return orderCopy;
}

- (void)removeDrawableAtZOrder:(unint64_t)order
{
  drawables = self->_drawables;
  if (drawables && objc_msgSend_count(drawables, a2, v6, v7, v8, v9, order, v3, v4, v5) > order)
  {
    objc_msgSend_willModify(self, v13, v18, v19, v20, v21, v14, v15, v16, v17);
    v30 = self->_drawables;

    objc_msgSend_removeObjectAtIndex_(v30, v22, v26, v27, v28, v29, order, v23, v24, v25);
  }
}

- (void)removeDrawable:(id)drawable
{
  drawableCopy = drawable;
  v12 = objc_msgSend_zOrderOfDrawable_(self, v4, v8, v9, v10, v11, drawableCopy, v5, v6, v7);
  objc_msgSend_removeDrawableAtZOrder_(self, v13, v17, v18, v19, v20, v12, v14, v15, v16);
}

- (void)moveDrawableAtZOrder:(unint64_t)order toZOrder:(unint64_t)zOrder
{
  if (order != zOrder && order + 1 != zOrder)
  {
    v13 = objc_msgSend_count(self->_drawables, a2, v6, v7, v8, v9, order, zOrder, v4, v5);
    if (zOrder != 0xFFFFFFFF || v13 - 1 != order)
    {
      objc_msgSend_willModify(self, v14, v19, v20, v21, v22, v15, v16, v17, v18);
      v58 = objc_msgSend_objectAtIndexedSubscript_(self->_drawables, v23, v27, v28, v29, v30, order, v24, v25, v26);
      objc_msgSend_removeObjectAtIndex_(self->_drawables, v31, v35, v36, v37, v38, order, v32, v33, v34);
      if (zOrder == 0xFFFFFFFF)
      {
        v48 = objc_msgSend_count(self->_drawables, v39, v44, v45, v46, v47, v40, v41, v42, v43);
      }

      else
      {
        v48 = (__PAIR128__(zOrder, order) - zOrder) >> 64;
      }

      if (v48 > objc_msgSend_count(self->_drawables, v39, v44, v45, v46, v47, v40, v41, v42, v43))
      {
        v48 = objc_msgSend_count(self->_drawables, v49, v54, v55, v56, v57, v50, v51, v52, v53);
      }

      objc_msgSend_insertObject_atIndex_(self->_drawables, v49, v54, v55, v56, v57, v58, v48, v52, v53);
    }
  }
}

- (void)moveDrawable:(id)drawable toZOrder:(unint64_t)order
{
  drawableCopy = drawable;
  v14 = objc_msgSend_zOrderOfDrawable_(self, v6, v10, v11, v12, v13, drawableCopy, v7, v8, v9);
  objc_msgSend_moveDrawableAtZOrder_toZOrder_(self, v15, v18, v19, v20, v21, v14, order, v16, v17);
}

- (void)moveDrawables:(id)drawables toZOrder:(unint64_t)order
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  drawablesCopy = drawables;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(drawablesCopy, v7, v9, v10, v11, v12, &v23, v27, 16, v8);
  if (v16)
  {
    v21 = *v24;
    do
    {
      v22 = 0;
      do
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(drawablesCopy);
        }

        objc_msgSend_moveDrawable_toZOrder_(self, v13, v17, v18, v19, v20, *(*(&v23 + 1) + 8 * v22), order, v14, v15, v23);
        if (order != 0xFFFFFFFF)
        {
          ++order;
        }

        ++v22;
      }

      while (v16 != v22);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(drawablesCopy, v13, v17, v18, v19, v20, &v23, v27, 16, v15);
    }

    while (v16);
  }
}

- (void)swapDrawableAtZOrder:(unint64_t)order withDrawableAtZOrder:(unint64_t)zOrder
{
  v13 = objc_msgSend_count(self->_drawables, a2, v6, v7, v8, v9, order, zOrder, v4, v5);
  if (order != zOrder && v13 > order && v13 > zOrder)
  {
    objc_msgSend_willModify(self, v14, v19, v20, v21, v22, v15, v16, v17, v18);
    drawables = self->_drawables;

    MEMORY[0x2821F9670](drawables, sel_exchangeObjectAtIndex_withObjectAtIndex_, v24, v25, v26, v27);
  }
}

- (id)orderedDrawables:(id)drawables
{
  v104 = *MEMORY[0x277D85DE8];
  drawablesCopy = drawables;
  if (drawablesCopy && self->_drawables)
  {
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v92 = drawablesCopy;
    if (objc_opt_respondsToSelector())
    {
      v14 = objc_msgSend_count(v92, v5, v10, v11, v12, v13, v6, v7, v8, v9);
      sub_275FDF91C(&v100, v14);
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    obj = v92;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, v17, v18, v19, v20, &v96, v103, 16, v16);
    if (v25)
    {
      v94 = *v97;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v97 != v94)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v96 + 1) + 8 * i);
          j = objc_msgSend_indexOfObjectIdenticalTo_(self->_drawables, v21, v26, v27, v28, v29, v31, v22, v23, v24);
          isInlineWithText = objc_msgSend_isInlineWithText(v31, v33, v38, v39, v40, v41, v34, v35, v36, v37);
          if (j == 0x7FFFFFFFFFFFFFFFLL)
          {
            v43 = isInlineWithText;
          }

          else
          {
            v43 = 0;
          }

          if (v43 == 1)
          {
            v49 = v31;
            for (j = 0x7FFFFFFFFFFFFFFFLL; j == 0x7FFFFFFFFFFFFFFFLL; j = objc_msgSend_indexOfObjectIdenticalTo_(self->_drawables, v55, v59, v60, v61, v62, v54, v56, v57, v58))
            {
              v54 = objc_msgSend_parentInfo(v49, v44, v50, v51, v52, v53, v45, v46, v47, v48);

              if (!v54)
              {
                v49 = 0;
                break;
              }

              v49 = v54;
            }
          }

          if (j != 0x7FFFFFFFFFFFFFFFLL)
          {
            v64 = v100;
            v63 = v101;
            v65 = v31;
            if (v63 != v64)
            {
              v66 = (v63 - v64) >> 4;
              do
              {
                v67 = v66 >> 1;
                v68 = v64 + 16 * (v66 >> 1);
                v69 = *(v68 + 8);
                v70 = v68 + 16;
                v66 += ~(v66 >> 1);
                if (v69 < j)
                {
                  v64 = v70;
                }

                else
                {
                  v66 = v67;
                }
              }

              while (v66);
              v63 = v64;
            }

            v71 = v65;
            v95[0] = v71;
            v95[1] = j;
            sub_275FDF9D8(&v100, v63, v95);
          }
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, v26, v27, v28, v29, &v96, v103, 16, v24);
      }

      while (v25);
    }

    if (v101 == v100)
    {
      v84 = 0;
    }

    else
    {
      v84 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v72, v76, v77, v78, v79, (v101 - v100) >> 4, v73, v74, v75);
      v89 = v100;
      v90 = v101;
      while (v89 != v90)
      {
        objc_msgSend_addObject_(v84, v80, v85, v86, v87, v88, *v89, v81, v82, v83);
        v89 += 2;
      }
    }

    v95[0] = &v100;
    sub_275FDFB98(v95);
    drawablesCopy = v92;
  }

  else
  {
    v84 = 0;
  }

  return v84;
}

@end
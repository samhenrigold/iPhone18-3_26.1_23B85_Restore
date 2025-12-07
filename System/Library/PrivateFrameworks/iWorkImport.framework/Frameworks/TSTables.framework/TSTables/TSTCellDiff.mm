@interface TSTCellDiff
+ (id)cellDiff;
+ (void)initialize;
- (BOOL)containsAnyPropertiesInSet:(id)set;
- (BOOL)containsCellStyleOrCellDiffCellStyleProperties;
- (BOOL)containsCellStyleProperties;
- (BOOL)containsFormatAndValueProperties;
- (BOOL)containsParagraphStyleProperties;
- (BOOL)containsProperty:(int)property;
- (BOOL)containsTextStyleProperties;
- (TSTCellDiff)init;
- (TSTCellDiff)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (id)allProperties;
- (id)copyWithZone:(_NSZone *)zone;
- (id)objectApplyingDiffToObject:(id)object andUpdateInverse:(id)inverse;
- (id)objectApplyingDiffToObject:(id)object andUpdateInverse:(id)inverse optionalConcurrentStylesheet:(id)stylesheet;
- (id)propertyMapToSetWithProperties:(id)properties;
- (unint64_t)estimatedByteSize;
- (void)clear;
- (void)collectPropertyKeysIntoIndexSet:(id)set;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSTCellDiff

+ (id)cellDiff
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (void)initialize
{
  v10 = objc_msgSend_cellDiff(TSTCellDiff, a2, v2, v3);
  objc_msgSend_containsCellStyleProperties(v10, v4, v5, v6);
  objc_msgSend_containsParagraphStyleProperties(v10, v7, v8, v9);
}

- (TSTCellDiff)init
{
  v8.receiver = self;
  v8.super_class = TSTCellDiff;
  v2 = [(TSTCellDiff *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D80AB8]);
    propertyMapToSet = v2->_propertyMapToSet;
    v2->_propertyMapToSet = v3;

    v5 = objc_alloc_init(MEMORY[0x277D80AB8]);
    propertyMapToReset = v2->_propertyMapToReset;
    v2->_propertyMapToReset = v5;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  v8 = objc_msgSend_copyWithZone_(self->_propertyMapToSet, v6, zone, v7);
  v9 = v5[1];
  v5[1] = v8;

  v12 = objc_msgSend_copyWithZone_(self->_propertyMapToReset, v10, zone, v11);
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (BOOL)containsProperty:(int)property
{
  v4 = *&property;
  if (objc_msgSend_containsProperty_(self->_propertyMapToSet, a2, *&property, v3))
  {
    return 1;
  }

  propertyMapToReset = self->_propertyMapToReset;

  return objc_msgSend_containsProperty_(propertyMapToReset, v6, v4, v7);
}

- (void)collectPropertyKeysIntoIndexSet:(id)set
{
  v43 = *MEMORY[0x277D85DE8];
  setCopy = set;
  objc_msgSend_allKeys(self->_propertyMapToSet, v5, v6, v7);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v8 = v38 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v37, v42, 16);
  if (v13)
  {
    v14 = *v38;
    do
    {
      v15 = 0;
      do
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = objc_msgSend_unsignedIntegerValue(*(*(&v37 + 1) + 8 * v15), v10, v11, v12);
        objc_msgSend_addIndex_(setCopy, v17, v16, v18);
        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v37, v42, 16);
    }

    while (v13);
  }

  objc_msgSend_allKeys(self->_propertyMapToReset, v19, v20, v21);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v22 = v34 = 0u;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v33, v41, 16);
  if (v27)
  {
    v28 = *v34;
    do
    {
      v29 = 0;
      do
      {
        if (*v34 != v28)
        {
          objc_enumerationMutation(v22);
        }

        v30 = objc_msgSend_unsignedIntegerValue(*(*(&v33 + 1) + 8 * v29), v24, v25, v26, v33);
        objc_msgSend_addIndex_(setCopy, v31, v30, v32);
        ++v29;
      }

      while (v27 != v29);
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v33, v41, 16);
    }

    while (v27);
  }
}

- (id)allProperties
{
  v25[2] = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_count(self->_propertyMapToReset, a2, v2, v3);
  propertyMapToSet = self->_propertyMapToSet;
  if (v8)
  {
    if (objc_msgSend_count(propertyMapToSet, v5, v6, v7))
    {
      v13 = objc_msgSend_allProperties(self->_propertyMapToSet, v10, v11, v12);
      v25[0] = v13;
      v17 = objc_msgSend_allProperties(self->_propertyMapToReset, v14, v15, v16);
      v25[1] = v17;
      v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v18, v25, 2);

      v22 = objc_msgSend_propertySetFromUnionOfPropertySets_(MEMORY[0x277D80AC0], v20, v19, v21);

      goto LABEL_7;
    }

    v23 = objc_msgSend_allProperties(self->_propertyMapToReset, v10, v11, v12);
  }

  else
  {
    v23 = objc_msgSend_allProperties(propertyMapToSet, v5, v6, v7);
  }

  v22 = v23;
LABEL_7:

  return v22;
}

- (BOOL)containsAnyPropertiesInSet:(id)set
{
  setCopy = set;
  if (objc_msgSend_containsAnyPropertyInProperties_(self->_propertyMapToSet, v5, setCopy, v6))
  {
    v9 = 1;
  }

  else
  {
    v9 = objc_msgSend_containsAnyPropertyInProperties_(self->_propertyMapToReset, v7, setCopy, v8);
  }

  return v9;
}

- (BOOL)containsCellStyleProperties
{
  if ((atomic_load_explicit(&qword_27CFB5220, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27CFB5220))
  {
    qword_27CFB5218 = objc_msgSend_properties(TSTCellStyle, a2, v9, v2);
    __cxa_guard_release(&qword_27CFB5220);
  }

  if (objc_msgSend_containsAnyPropertyInProperties_(self->_propertyMapToSet, a2, qword_27CFB5218, v2))
  {
    return 1;
  }

  propertyMapToReset = self->_propertyMapToReset;
  v8 = qword_27CFB5218;

  return objc_msgSend_containsAnyPropertyInProperties_(propertyMapToReset, v4, v8, v5);
}

- (BOOL)containsCellStyleOrCellDiffCellStyleProperties
{
  if (objc_msgSend_containsProperty_(self->_propertyMapToSet, a2, 905, v2) & 1) != 0 || (objc_msgSend_containsProperty_(self->_propertyMapToReset, v4, 905, v5))
  {
    return 1;
  }

  return objc_msgSend_containsCellStyleProperties(self, v6, v7, v8);
}

- (BOOL)containsTextStyleProperties
{
  if (objc_msgSend_containsProperty_(self->_propertyMapToSet, a2, 906, v2) & 1) != 0 || (objc_msgSend_containsProperty_(self->_propertyMapToReset, v4, 906, v5))
  {
    return 1;
  }

  return objc_msgSend_containsParagraphStyleProperties(self, v6, v7, v8);
}

- (BOOL)containsParagraphStyleProperties
{
  if ((atomic_load_explicit(&qword_27CFB5230, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27CFB5230))
  {
    qword_27CFB5228 = objc_msgSend_properties(MEMORY[0x277D80EC8], a2, v2, v3);
    __cxa_guard_release(&qword_27CFB5230);
  }

  if ((atomic_load_explicit(&qword_27CFB5248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27CFB5248))
  {
    *&xmmword_27CFB5238 = objc_msgSend_propertyRange(qword_27CFB5228, a2, v2, v3);
    *(&xmmword_27CFB5238 + 1) = v13;
    __cxa_guard_release(&qword_27CFB5248);
  }

  v15.location = objc_msgSend_propertyRange(self->_propertyMapToSet, a2, v2, v3);
  length = NSIntersectionRange(v15, xmmword_27CFB5238).length;
  if (!length)
  {
    v16.location = objc_msgSend_propertyRange(self->_propertyMapToReset, 0, v6, v7);
    length = NSIntersectionRange(v16, xmmword_27CFB5238).length;
    if (!length)
    {
      return 0;
    }
  }

  if (objc_msgSend_containsAnyPropertyInProperties_(self->_propertyMapToSet, length, qword_27CFB5228, v7))
  {
    return 1;
  }

  propertyMapToReset = self->_propertyMapToReset;
  v12 = qword_27CFB5228;

  return objc_msgSend_containsAnyPropertyInProperties_(propertyMapToReset, v8, v12, v9);
}

- (BOOL)containsFormatAndValueProperties
{
  if ((atomic_load_explicit(&qword_27CFB5258, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27CFB5258))
  {
    qword_27CFB5250 = objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AC0], a2, 907, v2, 913, 0);
    __cxa_guard_release(&qword_27CFB5258);
  }

  if (objc_msgSend_containsAnyPropertyInProperties_(self->_propertyMapToSet, a2, qword_27CFB5250, v2))
  {
    return 1;
  }

  propertyMapToReset = self->_propertyMapToReset;
  v8 = qword_27CFB5250;

  return objc_msgSend_containsAnyPropertyInProperties_(propertyMapToReset, v4, v8, v5);
}

- (id)propertyMapToSetWithProperties:(id)properties
{
  propertiesCopy = properties;
  v8 = objc_msgSend_copy(self->_propertyMapToSet, v5, v6, v7);
  objc_msgSend_filterWithProperties_(v8, v9, propertiesCopy, v10);

  return v8;
}

- (void)clear
{
  objc_msgSend_removeAllPropertyValues(self->_propertyMapToSet, a2, v2, v3);
  propertyMapToReset = self->_propertyMapToReset;

  objc_msgSend_removeAllPropertyValues(propertyMapToReset, v5, v6, v7);
}

- (id)objectApplyingDiffToObject:(id)object andUpdateInverse:(id)inverse
{
  v4 = objc_msgSend_objectApplyingDiffToObject_andUpdateInverse_optionalConcurrentStylesheet_(self, a2, object, inverse, 0);

  return v4;
}

- (id)objectApplyingDiffToObject:(id)object andUpdateInverse:(id)inverse optionalConcurrentStylesheet:(id)stylesheet
{
  objectCopy = object;
  inverseCopy = inverse;
  stylesheetCopy = stylesheet;
  v11 = objc_opt_class();
  v15 = objc_msgSend_cellDiffProperties(v11, v12, v13, v14);
  if ((objc_msgSend_containsAnyPropertyInProperties_(self->_propertyMapToSet, v16, v15, v17) & 1) != 0 || objc_msgSend_containsAnyPropertyInProperties_(self->_propertyMapToReset, v18, v15, v20))
  {
    v21 = objc_msgSend_propertyMapToReset(inverseCopy, v18, v19, v20);
    v26 = objc_msgSend_propertyMapToSet(inverseCopy, v22, v23, v24);
    propertyMapToSet = self->_propertyMapToSet;
    propertyMapToReset = self->_propertyMapToReset;
    if (stylesheetCopy)
    {
      objc_msgSend_objectByRemovingPropertiesInMap_addingPropertiesInMap_updateInverseResetPropertyMap_updateInverseSetPropertyMap_optionalConcurrentStylesheet_(objectCopy, v25, propertyMapToReset, propertyMapToSet, v21, v26, stylesheetCopy);
    }

    else
    {
      objc_msgSend_objectByRemovingPropertiesInMap_addingPropertiesInMap_updateInverseResetPropertyMap_updateInverseSetPropertyMap_(objectCopy, v25, propertyMapToReset, propertyMapToSet, v21, v26);
    }
    v29 = ;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (TSTCellDiff)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v18.receiver = self;
  v18.super_class = TSTCellDiff;
  v7 = [(TSTCellDiff *)&v18 init];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D80AB8]);
    v10 = MEMORY[0x277D80BE0];
    if (*(archive + 3))
    {
      v11 = objc_msgSend_initFromCommandPropertyMapMessage_unarchiver_(v8, v9, *(archive + 3), unarchiverCopy);
    }

    else
    {
      v11 = objc_msgSend_initFromCommandPropertyMapMessage_unarchiver_(v8, v9, MEMORY[0x277D80BE0], unarchiverCopy);
    }

    propertyMapToSet = v7->_propertyMapToSet;
    v7->_propertyMapToSet = v11;

    v13 = objc_alloc(MEMORY[0x277D80AB8]);
    if (*(archive + 4))
    {
      v15 = objc_msgSend_initFromCommandPropertyMapMessage_unarchiver_(v13, v14, *(archive + 4), unarchiverCopy);
    }

    else
    {
      v15 = objc_msgSend_initFromCommandPropertyMapMessage_unarchiver_(v13, v14, v10, unarchiverCopy);
    }

    propertyMapToReset = v7->_propertyMapToReset;
    v7->_propertyMapToReset = v15;
  }

  return v7;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  propertyMapToSet = self->_propertyMapToSet;
  *(archive + 4) |= 1u;
  v9 = *(archive + 3);
  v15 = archiverCopy;
  if (!v9)
  {
    v10 = *(archive + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = MEMORY[0x223DA03B0](v10);
    *(archive + 3) = v9;
    archiverCopy = v15;
  }

  objc_msgSend_saveToCommandPropertyMapMessage_archiver_(propertyMapToSet, v6, v9, archiverCopy);
  propertyMapToReset = self->_propertyMapToReset;
  *(archive + 4) |= 2u;
  v13 = *(archive + 4);
  if (!v13)
  {
    v14 = *(archive + 1);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = MEMORY[0x223DA03B0](v14);
    *(archive + 4) = v13;
  }

  objc_msgSend_saveToCommandPropertyMapMessage_archiver_(propertyMapToReset, v11, v13, v15);
}

- (unint64_t)estimatedByteSize
{
  v64 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v5 = objc_msgSend_objectForSetProperty_(self, v3, 907, v4);
  v6 = TSUCheckedDynamicCast();

  if (!v6)
  {
LABEL_11:
    v19 = 1024;
    goto LABEL_12;
  }

  if (objc_msgSend_valueType(v6, v7, v8, v9) != 3)
  {
    if (objc_msgSend_valueType(v6, v10, v11, v12) == 9)
    {
      TST::CellDiffArchive::CellDiffArchive(&__p, 0);
      objc_msgSend_saveToArchive_archiver_(self, v20, &__p, 0);
      v19 = TST::CellDiffArchive::ByteSizeLong(&__p) + 1024;
      TST::CellDiffArchive::~CellDiffArchive(&__p);
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v13 = objc_msgSend_stringValue(v6, v10, v11, v12);
  v17 = objc_msgSend_tsp_protobufString(v13, v14, v15, v16);
  sub_22108CCD0(&__p, v17);
  if (v62 >= 0)
  {
    v18 = v62;
  }

  else
  {
    v18 = v61;
  }

  if ((v62 & 0x8000000000000000) != 0)
  {
    operator delete(__p);
  }

  v19 = 2 * (v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6)) + 2048;
LABEL_12:
  objc_opt_class();
  v23 = objc_msgSend_objectForSetProperty_(self, v21, 908, v22);
  v24 = TSUCheckedDynamicCast();

  if (v24)
  {
    objc_msgSend_warnings(v24, v25, v26, v27);
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v28 = v57 = 0u;
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v56, v63, 16);
    if (v33)
    {
      v34 = *v57;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v57 != v34)
          {
            objc_enumerationMutation(v28);
          }

          v36 = *(*(&v56 + 1) + 8 * i);
          v37 = objc_msgSend_originalFormula(v36, v30, v31, v32, v56);
          if (objc_msgSend_length(v37, v38, v39, v40))
          {
            v44 = objc_msgSend_tsp_protobufString(v37, v41, v42, v43);
            sub_22108CCD0(&__p, v44);
            if (v62 >= 0)
            {
              v45 = v62;
            }

            else
            {
              v45 = v61;
            }

            if ((v62 & 0x8000000000000000) != 0)
            {
              operator delete(__p);
            }

            v19 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6);
          }

          v46 = objc_msgSend_supplementaryText(v36, v41, v42, v43);
          if (objc_msgSend_length(v46, v47, v48, v49))
          {
            v53 = objc_msgSend_tsp_protobufString(v46, v50, v51, v52);
            sub_22108CCD0(&__p, v53);
            if (v62 >= 0)
            {
              v54 = v62;
            }

            else
            {
              v54 = v61;
            }

            if ((v62 & 0x8000000000000000) != 0)
            {
              operator delete(__p);
            }

            v19 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6);
          }
        }

        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v56, v63, 16);
      }

      while (v33);
    }
  }

  return v19;
}

@end
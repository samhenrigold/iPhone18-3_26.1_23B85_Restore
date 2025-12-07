@interface CKOrderedDictionary
+ (CKOrderedDictionary)orderedDictionaryWithCapacity:(unint64_t)capacity;
+ (id)orderedDictionary;
- (CKOrderedDictionary)init;
- (CKOrderedDictionary)initWithCapacity:(unint64_t)capacity;
- (id)description;
- (id)dictionaryRepresentationRecursive:(BOOL)recursive;
- (void)addObject:(id)object forKey:(id)key;
- (void)enumerateKeysAndObjectsUsingBlock:(id)block;
@end

@implementation CKOrderedDictionary

+ (id)orderedDictionary
{
  v2 = objc_alloc_init(CKOrderedDictionary);

  return v2;
}

- (CKOrderedDictionary)init
{
  v8.receiver = self;
  v8.super_class = CKOrderedDictionary;
  v4 = [(CKOrderedDictionary *)&v8 init];
  if (v4)
  {
    v5 = objc_msgSend_array(MEMORY[0x1E695DF70], v2, v3);
    tuples = v4->tuples;
    v4->tuples = v5;
  }

  return v4;
}

+ (CKOrderedDictionary)orderedDictionaryWithCapacity:(unint64_t)capacity
{
  v4 = [CKOrderedDictionary alloc];
  v6 = objc_msgSend_initWithCapacity_(v4, v5, capacity);

  return v6;
}

- (CKOrderedDictionary)initWithCapacity:(unint64_t)capacity
{
  v9.receiver = self;
  v9.super_class = CKOrderedDictionary;
  v5 = [(CKOrderedDictionary *)&v9 init];
  if (v5)
  {
    v6 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v4, capacity);
    tuples = v5->tuples;
    v5->tuples = v6;
  }

  return v5;
}

- (id)description
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], a2, @"(\n");
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->tuples;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v20, v24, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = objc_msgSend_v1(v12, v7, v8);
        v16 = objc_msgSend_v2(v12, v14, v15);
        objc_msgSend_appendFormat_(v3, v17, @"%@=%@;\n", v13, v16, v20);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v20, v24, 16);
    }

    while (v9);
  }

  objc_msgSend_appendString_(v3, v18, @""));

  return v3;
}

- (void)addObject:(id)object forKey:(id)key
{
  tuples = self->tuples;
  keyCopy = key;
  objectCopy = object;
  v8 = [CKTuple2 alloc];
  v11 = objc_msgSend_initWithObject1_object2_(v8, v9, keyCopy, objectCopy);

  objc_msgSend_addObject_(tuples, v10, v11);
}

- (id)dictionaryRepresentationRecursive:(BOOL)recursive
{
  recursiveCopy = recursive;
  v89 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF90];
  v6 = objc_msgSend_count(self->tuples, a2, recursive);
  v8 = objc_msgSend_dictionaryWithCapacity_(v5, v7, v6);
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = self->tuples;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v83, v88, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v84;
    v74 = recursiveCopy;
    v72 = *v84;
    v73 = v8;
    do
    {
      v15 = 0;
      v75 = v13;
      do
      {
        if (*v84 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v83 + 1) + 8 * v15);
        if (!recursiveCopy)
        {
          goto LABEL_39;
        }

        v17 = objc_msgSend_v2(*(*(&v83 + 1) + 8 * v15), v11, v12);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v21 = objc_msgSend_v2(v16, v19, v20);
        v24 = v21;
        if (isKindOfClass)
        {
          v25 = objc_msgSend_unorderedDictionary(v21, v22, v23);
          v28 = objc_msgSend_v1(v16, v26, v27);
          objc_msgSend_setObject_forKeyedSubscript_(v8, v29, v25, v28);

          goto LABEL_40;
        }

        objc_opt_class();
        v30 = objc_opt_isKindOfClass();

        v33 = objc_msgSend_v2(v16, v31, v32);
        v24 = v33;
        if (v30)
        {
          if (objc_msgSend_count(v33, v34, v35))
          {
            v76 = v16;
            v77 = v15;
            v25 = 0;
            v37 = 0;
            do
            {
              v38 = objc_msgSend_objectAtIndexedSubscript_(v24, v36, v37);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if (!v25)
                {
                  v25 = objc_msgSend_mutableCopy(v24, v39, v40);
                }

                v41 = objc_msgSend_dictionaryRepresentationRecursive_(v38, v39, 1);
                objc_msgSend_setObject_atIndexedSubscript_(v25, v42, v41, v37);
              }

              ++v37;
            }

            while (v37 < objc_msgSend_count(v24, v43, v44));
            if (v25)
            {
              v46 = objc_msgSend_v1(v16, v36, v45);
              objc_msgSend_setObject_forKeyedSubscript_(v8, v47, v25, v46);

LABEL_33:
              v13 = v75;
              v15 = v77;
              goto LABEL_40;
            }

            goto LABEL_36;
          }

          goto LABEL_38;
        }

        objc_opt_class();
        v48 = objc_opt_isKindOfClass();

        if (v48)
        {
          v77 = v15;
          v24 = objc_msgSend_v2(v16, v11, v12);
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v51 = objc_msgSend_allKeys(v24, v49, v50);
          v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v79, v87, 16);
          if (v53)
          {
            v55 = v53;
            v76 = v16;
            v25 = 0;
            v56 = *v80;
            do
            {
              for (i = 0; i != v55; ++i)
              {
                if (*v80 != v56)
                {
                  objc_enumerationMutation(v51);
                }

                v58 = *(*(&v79 + 1) + 8 * i);
                v59 = objc_msgSend_objectForKeyedSubscript_(v24, v54, v58);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if (!v25)
                  {
                    v25 = objc_msgSend_mutableCopy(v24, v60, v61);
                  }

                  v62 = objc_msgSend_dictionaryRepresentationRecursive_(v59, v60, 1);
                  objc_msgSend_setObject_forKeyedSubscript_(v25, v63, v62, v58);
                }
              }

              v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v54, &v79, v87, 16);
            }

            while (v55);

            if (v25)
            {
              v66 = objc_msgSend_v1(v76, v64, v65);
              v8 = v73;
              objc_msgSend_setObject_forKeyedSubscript_(v73, v67, v25, v66);

              recursiveCopy = v74;
              v14 = v72;
              goto LABEL_33;
            }

            recursiveCopy = v74;
            v14 = v72;
            v8 = v73;
LABEL_36:
            v13 = v75;
            v16 = v76;
          }

          else
          {

            v13 = v75;
          }

          v15 = v77;
LABEL_38:
        }

LABEL_39:
        v24 = objc_msgSend_v2(v16, v11, v12);
        v25 = objc_msgSend_v1(v16, v68, v69);
        objc_msgSend_setObject_forKeyedSubscript_(v8, v70, v24, v25);
LABEL_40:

        ++v15;
      }

      while (v15 != v13);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v83, v88, 16);
    }

    while (v13);
  }

  return v8;
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->tuples;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v19, v23, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v20;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(v5);
      }

      v13 = *(*(&v19 + 1) + 8 * v12);
      v18 = 0;
      v14 = objc_msgSend_v1(v13, v8, v9);
      v17 = objc_msgSend_v2(v13, v15, v16);
      blockCopy[2](blockCopy, v14, v17, &v18);

      if (v18)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v19, v23, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

@end
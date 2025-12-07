@interface TSCEEdgeListPrinter
- (id)stringForEdgesWithLimit:(unint64_t)limit;
- (id)stringForOwnerID:(id)d withLimit:(unint64_t)limit;
- (void)addEdge:(id)edge forOwner:(id)owner;
@end

@implementation TSCEEdgeListPrinter

- (void)addEdge:(id)edge forOwner:(id)owner
{
  edgeCopy = edge;
  ownerCopy = owner;
  if (edgeCopy)
  {
    if (!self->_edgesForOwner)
    {
      v9 = objc_opt_new();
      edgesForOwner = self->_edgesForOwner;
      self->_edgesForOwner = v9;
    }

    if (!ownerCopy)
    {
      ownerCopy = &stru_2834BADA0;
    }

    v14 = objc_msgSend_objectForKey_(self->_edgesForOwner, v6, ownerCopy, v7);
    if (!v14)
    {
      v14 = objc_msgSend_array(MEMORY[0x277CBEB18], v11, v12, v13);
      objc_msgSend_setObject_forKey_(self->_edgesForOwner, v15, v14, ownerCopy);
    }

    objc_msgSend_addObject_(v14, v11, edgeCopy, v13);
  }
}

- (id)stringForOwnerID:(id)d withLimit:(unint64_t)limit
{
  v46 = *MEMORY[0x277D85DE8];
  dCopy = d;
  edgesForOwner = self->_edgesForOwner;
  if (dCopy)
  {
    objc_msgSend_objectForKey_(edgesForOwner, v6, dCopy, v7);
  }

  else
  {
    objc_msgSend_objectForKey_(edgesForOwner, v6, &stru_2834BADA0, v7);
  }
  v10 = ;
  if (!objc_msgSend_count(v10, v11, v12, v13))
  {
    v27 = 0;
    goto LABEL_36;
  }

  objc_msgSend_sortedArrayUsingSelector_(v10, v14, sel_tsce_numericCompare_, v15);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v16 = v42 = 0u;
  v40 = v10;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v41, v45, 16);
  limitCopy = limit;
  if (v20)
  {
    v21 = 0;
    v22 = 0;
    v23 = *v42;
    v24 = limit - 1;
LABEL_7:
    v25 = 0;
    v26 = v21 + 1;
    v21 += v20;
    while (1)
    {
      if (*v42 != v23)
      {
        objc_enumerationMutation(v16);
      }

      if (v22)
      {
        objc_msgSend_appendFormat_(v22, v18, @", %@", v19, *(*(&v41 + 1) + 8 * v25));
      }

      else
      {
        v22 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v18, *(*(&v41 + 1) + 8 * v25), v19);
      }

      if (v24 < v26)
      {
        break;
      }

      ++v25;
      ++v26;
      if (v20 == v25)
      {
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v41, v45, 16);
        if (v20)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  v10 = v40;
  if (dCopy)
  {
    v31 = objc_msgSend_count(v40, v28, v29, v30);
    if (v31 >= 2)
    {
      v34 = @"%@::{%@}";
    }

    else
    {
      v34 = @"%@::%@";
    }

    if (v31 >= 2 && limitCopy)
    {
      if (objc_msgSend_count(v40, v32, v34, v33) > limitCopy)
      {
        objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v32, @"%@::{%@, ...}", v33, dCopy, v22);
        v35 = LABEL_29:;
        goto LABEL_30;
      }

      v34 = @"%@::{%@}";
    }

    objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v32, v34, v33, dCopy, v22);
    goto LABEL_29;
  }

  if (!limitCopy || objc_msgSend_count(v40, v28, v29, v30) <= limitCopy)
  {
    v27 = v22;
    goto LABEL_35;
  }

  v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v36, @"%@, ...", v37, v22);
LABEL_30:
  v27 = v35;

LABEL_35:
LABEL_36:

  return v27;
}

- (id)stringForEdgesWithLimit:(unint64_t)limit
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_stringForOwnerID_withLimit_(self, a2, 0, limit);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = self->_edgesForOwner;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v26, v30, 16);
  if (v11)
  {
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        if (objc_msgSend_length(v14, v8, v9, v10))
        {
          v15 = objc_msgSend_stringForOwnerID_withLimit_(self, v8, v14, limit);
          if (objc_msgSend_length(v15, v16, v17, v18))
          {
            if (objc_msgSend_length(v5, v19, v20, v21))
            {
              objc_msgSend_appendFormat_(v5, v22, @", %@", v23, v15);
            }

            else
            {
              v24 = v15;

              v5 = v24;
            }
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v26, v30, 16);
    }

    while (v11);
  }

  return v5;
}

@end
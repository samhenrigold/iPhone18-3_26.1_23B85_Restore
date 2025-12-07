@interface TSTLocalStylesKey
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation TSTLocalStylesKey

- (unint64_t)hash
{
  v4 = objc_msgSend_description(self, a2, v2, v3);
  v8 = objc_msgSend_hash(v4, v5, v6, v7);

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v8 = TSUDynamicCast();
  if (v8)
  {
    v9 = objc_msgSend_cellStyle(self, v5, v6, v7);
    v16 = objc_msgSend_cellStyle(v8, v10, v11, v12);
    if (v9 == v16)
    {
      isEqual = 1;
    }

    else
    {
      v20 = objc_msgSend_cellStyle(v8, v13, v14, v15);
      if (v20)
      {
        v21 = objc_msgSend_cellStyle(self, v17, v18, v19);
        v25 = objc_msgSend_cellStyle(v8, v22, v23, v24);
        isEqual = objc_msgSend_isEqual_(v21, v26, v25, v27);
      }

      else
      {
        isEqual = 0;
      }
    }

    v33 = objc_msgSend_textStyle(self, v30, v31, v32);
    v40 = objc_msgSend_textStyle(v8, v34, v35, v36);
    if (v33 == v40)
    {
      v52 = 1;
    }

    else
    {
      v44 = objc_msgSend_textStyle(v8, v37, v38, v39);
      if (v44)
      {
        v45 = objc_msgSend_textStyle(self, v41, v42, v43);
        v49 = objc_msgSend_textStyle(v8, v46, v47, v48);
        v52 = objc_msgSend_isEqual_(v45, v50, v49, v51);
      }

      else
      {
        v52 = 0;
      }
    }

    v29 = isEqual & v52;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TSTLocalStylesKey);
  v8 = objc_msgSend_cellStyle(self, v5, v6, v7);
  objc_msgSend_setCellStyle_(v4, v9, v8, v10);

  v14 = objc_msgSend_textStyle(self, v11, v12, v13);
  objc_msgSend_setTextStyle_(v4, v15, v14, v16);

  return v4;
}

- (id)description
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_msgSend_cellStyle(self, a2, v2, v3);
  v10 = objc_msgSend_description(v6, v7, v8, v9);
  v14 = objc_msgSend_textStyle(self, v11, v12, v13);
  v18 = objc_msgSend_description(v14, v15, v16, v17);
  v21 = objc_msgSend_stringWithFormat_(v5, v19, @"%@, %@", v20, v10, v18);

  return v21;
}

@end
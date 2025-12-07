@interface TSCENameTrie
- (BOOL)containsName:(id)name;
- (BOOL)insertFoldedName:(id)name;
- (BOOL)insertName:(id)name;
- (TSCENameTrie)initWithLocale:(id)locale;
- (id).cxx_construct;
- (id)foldName:(id)name;
- (void)enumerateNamesMatchingPrefix:(id)prefix block:(id)block;
- (void)nodeForName:(id)name createIfMissing:(BOOL)missing;
- (void)removeName:(id)name;
@end

@implementation TSCENameTrie

- (TSCENameTrie)initWithLocale:(id)locale
{
  localeCopy = locale;
  v9.receiver = self;
  v9.super_class = TSCENameTrie;
  v6 = [(TSCENameTrie *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locale, locale);
  }

  return v7;
}

- (void)nodeForName:(id)name createIfMissing:(BOOL)missing
{
  nameCopy = name;
  v10 = nameCopy;
  if (nameCopy)
  {
    v13 = objc_msgSend_length(nameCopy, v7, v8, v9);
    v14 = 0;
    p_root = &self->_root;
    while (v13 != v14)
    {
      v18 = objc_msgSend_characterAtIndex_(v10, v11, v14, v12);
      v16 = sub_2210C3024(p_root, &v18);
      if (!v16 || !v16[3])
      {
        if (missing)
        {
          operator new();
        }

        goto LABEL_9;
      }

      ++v14;
      p_root = v16[3];
      if (v14 > v13)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    p_root = 0;
  }

  return p_root;
}

- (id)foldName:(id)name
{
  nameCopy = name;
  v8 = objc_msgSend_locale(self->_locale, v5, v6, v7);
  v11 = objc_msgSend_tsce_stringByFoldingForNamedReferenceMatchingWithLocale_(nameCopy, v9, v8, v10);

  return v11;
}

- (BOOL)insertFoldedName:(id)name
{
  nameCopy = name;
  if ((objc_msgSend_length(nameCopy, v5, v6, v7) - 1001) >= 0xFFFFFFFFFFFFFC18 && (IfMissing = objc_msgSend_nodeForName_createIfMissing_(self, v8, nameCopy, 1)) != 0)
  {
    sub_221141CA4(IfMissing, nameCopy);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)insertName:(id)name
{
  nameCopy = name;
  if ((objc_msgSend_length(nameCopy, v5, v6, v7) - 1001) >= 0xFFFFFFFFFFFFFC18)
  {
    v11 = objc_msgSend_foldName_(self, v8, nameCopy, v9);
    inserted = objc_msgSend_insertFoldedName_(self, v12, v11, v13);
  }

  else
  {
    inserted = 0;
  }

  return inserted;
}

- (BOOL)containsName:(id)name
{
  nameCopy = name;
  if ((objc_msgSend_length(nameCopy, v5, v6, v7) - 1001) >= 0xFFFFFFFFFFFFFC18)
  {
    v11 = objc_msgSend_foldName_(self, v8, nameCopy, v9);
    IfMissing = objc_msgSend_nodeForName_createIfMissing_(self, v12, v11, 0);
    if (IfMissing)
    {
      v10 = *(IfMissing + 40) != 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)removeName:(id)name
{
  nameCopy = name;
  v7 = objc_msgSend_foldName_(self, v5, nameCopy, v6);
  v11 = objc_msgSend_length(v7, v8, v9, v10);
  if (v7)
  {
    v14 = v11;
    if (v11 <= 0x3E8)
    {
      v15 = 0;
      p_root = &self->_root;
      __p = 0;
      v47 = 0;
      v48 = 0;
      while (v15 != v14)
      {
        LOWORD(v49) = objc_msgSend_characterAtIndex_(v7, v12, v15, v13);
        v17 = sub_2210C3024(p_root, &v49);
        if (v17)
        {
          v18 = v17[3];
          if (v18)
          {
            v19 = v47;
            if (v47 >= v48)
            {
              v21 = (v47 - __p) >> 3;
              if ((v21 + 1) >> 61)
              {
                sub_22107C148();
              }

              v22 = (v48 - __p) >> 2;
              if (v22 <= v21 + 1)
              {
                v22 = v21 + 1;
              }

              if (v48 - __p >= 0x7FFFFFFFFFFFFFF8)
              {
                v23 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v23 = v22;
              }

              if (v23)
              {
                sub_221122DC8(&__p, v23);
              }

              v24 = (8 * v21);
              *v24 = p_root;
              v20 = 8 * v21 + 8;
              v25 = v24 - (v47 - __p);
              memcpy(v25, __p, v47 - __p);
              v26 = __p;
              __p = v25;
              v47 = v20;
              v48 = 0;
              if (v26)
              {
                operator delete(v26);
              }
            }

            else
            {
              *v47 = p_root;
              v20 = (v19 + 8);
            }

            v47 = v20;
            ++v15;
            p_root = v18;
          }

          if (v15 <= v14)
          {
            continue;
          }
        }

        goto LABEL_25;
      }

      name = p_root->_name;
      sub_221141CA4(p_root, 0);
      if (name && !p_root->_children.__table_.__size_ && !p_root->_name)
      {
        v31 = v14 - 1;
        do
        {
          if (p_root->_children.__table_.__size_)
          {
            break;
          }

          v30 = __p;
          if (__p == v47)
          {
            goto LABEL_26;
          }

          v45 = objc_msgSend_characterAtIndex_(v7, v28, v31, v29);
          v32 = *(v47 - 1);
          v47 -= 8;
          v49 = &v45;
          if (sub_2211429F8(v32, &v45, &unk_2217E0460, &v49)[3] != p_root)
          {
            v35 = MEMORY[0x277D81150];
            v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSCENameTrie removeName:]", v34);
            v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENameTrie.mm", v38);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v40, v36, v39, 218, 0, "Verify we are deleting the correct node");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43);
          }

          sub_221142C34(v32, &v45);
          v44 = sub_221141800(p_root);
          MEMORY[0x223DA1450](v44, 0x10A0C40026B2379);
          --v31;
          p_root = v32;
        }

        while (!v32->_name);
      }

LABEL_25:
      v30 = __p;
LABEL_26:
      if (v30)
      {
        v47 = v30;
        operator delete(v30);
      }
    }
  }
}

- (void)enumerateNamesMatchingPrefix:(id)prefix block:(id)block
{
  blockCopy = block;
  v8 = objc_msgSend_foldName_(self, v6, prefix, v7);
  if (!objc_msgSend_length(v8, v9, v10, v11))
  {
    p_root = &self->_root;
    goto LABEL_5;
  }

  p_root = objc_msgSend_nodeForName_createIfMissing_(self, v12, v8, 0);
  if (p_root)
  {
LABEL_5:
    sub_221141878(p_root, blockCopy);
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 6) = 0;
  return self;
}

@end
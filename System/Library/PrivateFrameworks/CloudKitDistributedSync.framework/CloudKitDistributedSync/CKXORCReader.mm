@interface CKXORCReader
- ($3CC19D079FD0B010EE84973AA846B91B)referencedListForReference:(SEL)reference inStruct:(unint64_t)struct;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)referencedStructAtIndex:(SEL)index inList:(int64_t)list;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)referencedStructForReference:(SEL)reference inStruct:(unint64_t)struct;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)rootStructWithType:(SEL)type;
- (BOOL)_setInputWithError:(id *)error;
- (BOOL)createReaderIfNecessaryWithError:(id *)error;
- (BOOL)loadBatchWithRow:(unint64_t)row forStruct:(unint64_t)struct;
- (BOOL)referenceIsNull:(unint64_t)null inStruct:(id *)struct;
- (BOOL)setReadableStorage:(id)storage error:(id *)error;
- (CKXORCReader)initWithSchema:(id)schema;
- (CKXORCReader)initWithSchema:(id)schema helpers:(id)helpers options:(id)options;
- (id).cxx_construct;
- (id)rowsForStructColumn:(unint64_t)column;
- (int64_t)lengthForList:(id *)list;
- (unint64_t)offsetInCurrentBatchForRow:(unint64_t)row forStruct:(unint64_t)struct;
- (unint64_t)valueSizeForField:(unint64_t)field;
- (void)copyData:(void *)data forField:(unint64_t)field inStruct:(id *)struct;
- (void)copyData:(void *)data forList:(id *)list;
- (void)createRowReaderForStruct:(unint64_t)struct;
- (void)listColumnForReference:(unint64_t)reference;
- (void)rootColumnForStruct:(unint64_t)struct;
- (void)structColumnForStruct:(unint64_t)struct;
- (void)structReferenceColumnForReference:(unint64_t)reference;
- (void)valueColumnForField:(unint64_t)field;
@end

@implementation CKXORCReader

- (CKXORCReader)initWithSchema:(id)schema
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = NSStringFromSelector(a2);
  objc_msgSend_raise_format_(v4, v6, *MEMORY[0x277CBE658], @"%@ is unavailable", v7, v8, v9, v5);

  return 0;
}

- (CKXORCReader)initWithSchema:(id)schema helpers:(id)helpers options:(id)options
{
  schemaCopy = schema;
  helpersCopy = helpers;
  optionsCopy = options;
  if (!helpersCopy)
  {
    v22 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12, v13, v14, v15, v16);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CKXORCReaderWriter.mm", 144, @"The ORC reader requires a helper object conforming to CKXORCHelpers");
  }

  v24.receiver = self;
  v24.super_class = CKXORCReader;
  v18 = [(CKXReaderBase *)&v24 initWithSchema:schemaCopy];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_helpers, helpers);
    v20 = optionsCopy;
    if (!optionsCopy)
    {
      v20 = objc_opt_new();
    }

    objc_storeStrong(&v19->_options, v20);
    if (!optionsCopy)
    {
    }
  }

  return v19;
}

- (BOOL)createReaderIfNecessaryWithError:(id *)error
{
  v23[7] = *MEMORY[0x277D85DE8];
  if (!self->_reader.__ptr_)
  {
    v8 = objc_msgSend_storage(self, a2, error, v3, v4, v5, v6);

    if (!v8)
    {
      v9 = MEMORY[0x277CBEAD8];
      v10 = NSStringFromSelector(sel_setReadableStorage_error_);
      objc_msgSend_raise_format_(v9, v11, *MEMORY[0x277CBE660], @"Call %@ before writing data", v12, v13, v14, v10);
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_243978A68;
    v23[3] = &unk_278DDB2F0;
    v23[4] = self;
    v15 = v23;
    sub_243978A68(v15, v16, v17, v18, v19, v20, v21);
  }

  return 1;
}

- (void)createRowReaderForStruct:(unint64_t)struct
{
  v22[10] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  if (!selfCopy->_reader.__ptr_)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v4, v5, v6, v7, v8, v9);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void CKXReaderCheck(CKXORCReader *__strong)", v15, v16, v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v13, v20, v19, @"CKXORCReaderWriter.mm", 135, @"Reader not present: make sure that [CKXORCReader setData:error:] has been called", v21);
  }

  begin = selfCopy->_structToReaderBatchPair.__begin_;
  if (struct >= (selfCopy->_structToReaderBatchPair.__end_ - begin) >> 4 || !begin[2 * struct])
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_243979234;
    v22[3] = &unk_278DDB318;
    v22[4] = selfCopy;
    v22[5] = struct;
    v12 = v22;
    sub_243979234(v12);
  }
}

- (BOOL)loadBatchWithRow:(unint64_t)row forStruct:(unint64_t)struct
{
  v35 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  if (!selfCopy->_reader.__ptr_)
  {
    v21 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8, v9, v10, v11, v12);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "void CKXReaderCheck(CKXORCReader *__strong)", v23, v24, v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v21, v28, v27, @"CKXORCReaderWriter.mm", 135, @"Reader not present: make sure that [CKXORCReader setData:error:] has been called", v29);
  }

  objc_msgSend_createRowReaderForStruct_(selfCopy, v14, struct, v15, v16, v17, v18);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_243979B3C;
  v30[3] = &unk_278DDB340;
  v30[4] = selfCopy;
  v30[5] = &v31;
  v30[6] = row;
  v30[7] = a2;
  v30[8] = struct;
  v19 = v30;
  sub_243979B3C(v19);

  LOBYTE(v19) = *(v32 + 24);
  _Block_object_dispose(&v31, 8);
  return v19;
}

- (unint64_t)offsetInCurrentBatchForRow:(unint64_t)row forStruct:(unint64_t)struct
{
  v33 = *MEMORY[0x277D85DE8];
  objc_msgSend_loadBatchWithRow_forStruct_(self, a2, row, struct, v4, v5, v6);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_24397A320;
  v26[3] = &unk_278DDB368;
  v26[4] = self;
  v27 = &v29;
  structCopy = struct;
  v11 = v26;
  v12 = *(self->_structToReaderBatchPair.__begin_ + 2 * struct);
  v13 = (*(*v12 + 48))(v12);
  *(v27[1] + 24) = v13;

  v20 = *(*(self->_structToReaderBatchPair.__begin_ + 2 * struct + 1) + 16);
  v21 = v30[3];
  v22 = row - v21;
  if (row < v21 || v22 >= v20)
  {
    v24 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15, v16, v17, v18, v19);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CKXORCReaderWriter.mm", 281, @"Incorrect rows loaded: row %llu does not fit in range %llu->llu", row, v30[3], v30[3] + v20);

    v22 = row - v30[3];
  }

  _Block_object_dispose(&v29, 8);
  return v22;
}

- (id)rowsForStructColumn:(unint64_t)column
{
  v29[11] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  if (!selfCopy->_reader.__ptr_)
  {
    v20 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6, v7, v8, v9, v10);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "void CKXReaderCheck(CKXORCReader *__strong)", v22, v23, v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v20, v27, v26, @"CKXORCReaderWriter.mm", 135, @"Reader not present: make sure that [CKXORCReader setData:error:] has been called", v28);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_24397A778;
  v29[3] = &unk_278DDB390;
  v29[4] = selfCopy;
  v29[5] = column;
  v29[6] = a2;
  v12 = v29;
  sub_24397A778(v12, v13, v14, v15, v16, v17, v18);

  return selfCopy->_rowsForTopLevelContainerStructs.__begin_[column];
}

- (void)rootColumnForStruct:(unint64_t)struct
{
  objc_msgSend_createRowReaderForStruct_(self, a2, struct, v3, v4, v5, v6);
  v16 = *(self->_structToReaderBatchPair.__begin_ + 2 * struct + 1);
  if (!v16 || (result = __dynamic_cast(v16, &unk_2856A2580, &unk_2856A25F0, 0)) == 0)
  {
    v18 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11, v12, v13, v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, a2, self, @"CKXORCReaderWriter.mm", 327, @"Root column not found");

    return 0;
  }

  return result;
}

- (BOOL)setReadableStorage:(id)storage error:(id *)error
{
  storageCopy = storage;
  if (self->_storage == storageCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_storeStrong(&self->_storage, storage);
    v13 = objc_msgSend__setInputWithError_(self, v8, error, v9, v10, v11, v12);
  }

  return v13;
}

- (BOOL)_setInputWithError:(id *)error
{
  ptr = self->_reader.__ptr_;
  self->_reader.__ptr_ = 0;
  if (ptr)
  {
    (*(*ptr + 8))(ptr, a2);
  }

  begin = self->_structToReaderBatchPair.__begin_;
  for (i = self->_structToReaderBatchPair.__end_; i != begin; sub_24398088C(i))
  {
    i -= 2;
  }

  self->_structToReaderBatchPair.__end_ = begin;
  v12 = self->_rowsForTopLevelContainerStructs.__begin_;
  for (j = self->_rowsForTopLevelContainerStructs.var0; j != v12; --j)
  {
    v14 = *(j - 1);
  }

  self->_rowsForTopLevelContainerStructs.var0 = v12;
  self->_loadCount = 0;
  v18 = 0;
  ReaderIfNecessaryWithError = objc_msgSend_createReaderIfNecessaryWithError_(self, a2, &v18, v3, v4, v5, v6);
  v16 = v18;
  if (error && (ReaderIfNecessaryWithError & 1) == 0)
  {
    v16 = v16;
    *error = v16;
  }

  return ReaderIfNecessaryWithError;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)rootStructWithType:(SEL)type
{
  v30 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_24397B300;
  v24[3] = &unk_278DDB3B8;
  v24[4] = self;
  v25 = &v26;
  v7 = v24;
  v8 = (*(*self->_reader.__ptr_ + 24))(self->_reader.__ptr_);
  *(v25[1] + 24) = v8;

  if (v27[3])
  {
    v15 = objc_msgSend_schema(self, v9, v10, v11, v12, v13, v14);
    v21 = sub_243987864(v15, a4, v16, v17, v18, v19, v20);

    retstr->var0 = a4;
    p_var1 = &retstr->var1;
    if (v21)
    {
      *p_var1 = xmmword_2439934B0;
    }

    else
    {
      *p_var1 = 0;
      p_var1[1] = 0;
    }
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = -1;
    retstr->var2 = -1;
  }

  _Block_object_dispose(&v26, 8);
  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)referencedStructForReference:(SEL)reference inStruct:(unint64_t)struct
{
  v12 = objc_msgSend_schema(self, reference, struct, a5, v5, v6, v7);
  v18 = sub_243987478(v12, struct, v13, v14, v15, v16, v17);

  result = objc_msgSend_structReferenceColumnForReference_(self, v19, struct, v20, v21, v22, v23);
  if (result && (v29 = result, result = objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v25, a5->var2, a5->var0, v26, v27, v28), *(&result->var0 + v29[1].var2)))
  {
    result = objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v30, a5->var2, a5->var0, v31, v32, v33);
    v34 = a5->var2 + *(v29[4].var0 + 8 * result);
    retstr->var0 = v18;
    retstr->var1 = 0;
  }

  else
  {
    v34 = -1;
    retstr->var0 = 0;
    retstr->var1 = -1;
  }

  retstr->var2 = v34;
  return result;
}

- (BOOL)referenceIsNull:(unint64_t)null inStruct:(id *)struct
{
  v11 = objc_msgSend_schema(self, a2, null, struct, v4, v5, v6);
  v17 = sub_243987104(v11, null, v12, v13, v14, v15, v16);

  if (v17 == 1)
  {
    v31 = objc_msgSend_structReferenceColumnForReference_(self, v18, null, v20, v21, v22, v23);
    if (!v31)
    {
      return 1;
    }
  }

  else
  {
    if (v17 != 2)
    {
      goto LABEL_8;
    }

    v24 = objc_msgSend_schema(self, v18, v19, v20, v21, v22, v23);
    v30 = sub_2439871D0(v24, null, v25, v26, v27, v28, v29);

    if ((v30 - 1) >= 2)
    {
      if (!v30 || v30 == 3)
      {
        v31 = objc_msgSend_listColumnForReference_(self, v18, null, v20, v21, v22, v23);
        if (!v31)
        {
          return 1;
        }

        return *(*(v31 + 40) + objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v32, struct->var2, struct->var0, v33, v34, v35)) == 0;
      }

LABEL_8:
      v37 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19, v20, v21, v22, v23);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v37, v38, a2, self, @"CKXORCReaderWriter.mm", 425, @"Invalid field type");

      return 0;
    }

    v31 = objc_msgSend_valueColumnForField_(self, v18, null, v20, v21, v22, v23);
    if (!v31)
    {
      return 1;
    }
  }

  return *(*(v31 + 40) + objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v32, struct->var2, struct->var0, v33, v34, v35)) == 0;
}

- ($3CC19D079FD0B010EE84973AA846B91B)referencedListForReference:(SEL)reference inStruct:(unint64_t)struct
{
  v12 = objc_msgSend_schema(self, reference, struct, a5, v5, v6, v7);
  v18 = sub_2439871D0(v12, struct, v13, v14, v15, v16, v17);

  if (v18)
  {
    v26 = -1;
  }

  else
  {
    v27 = objc_msgSend_schema(self, v20, v21, v22, v23, v24, v25);
    v26 = sub_243987518(v27, struct, v28, v29, v30, v31, v32);
  }

  if (a5->var1 == 1)
  {
    result = objc_msgSend_rowsForStructColumn_(self, v20, v26, v22, v23, v24, v25);
    v33 = 1;
    var2 = struct;
  }

  else
  {
    v33 = 0;
    var2 = a5->var2;
  }

  retstr->var0 = v26;
  retstr->var1 = struct;
  retstr->var2 = v33;
  retstr->var3 = var2;
  return result;
}

- (int64_t)lengthForList:(id *)list
{
  v8 = a2;
  v10 = objc_msgSend_schema(self, a2, list, v3, v4, v5, v6);
  if (v10)
  {
    v11 = *(v10[10] + 56 * list->var1 + 16);
  }

  else
  {
    v11 = 0;
  }

  v18 = objc_msgSend_schema(self, v12, v13, v14, v15, v16, v17);
  v24 = sub_2439871D0(v18, list->var1, v19, v20, v21, v22, v23);

  var3 = list->var3;
  if ((v24 - 1) < 2)
  {
    if (list->var2 == 1)
    {
      v53 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v25, v26, v27, v28, v29, v30);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v53, v54, v8, self, @"CKXORCReaderWriter.mm", 472, @"Invalid list");
    }

    v32 = objc_msgSend_valueColumnForField_(self, v25, list->var1, v27, v28, v29, v30);
    if (!v32)
    {
      return 0;
    }

    v33 = __dynamic_cast(v32, &unk_2856A2580, &unk_2856A25C0, 0);
    if (!v33)
    {
      return 0;
    }

    return *(v33[17] + 8 * objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v34, var3, v11, v35, v36, v37));
  }

  else
  {
    if (v24)
    {
      if (v24 != 3)
      {
        return v8;
      }

LABEL_14:
      v45 = objc_msgSend_listColumnForReference_(self, v25, list->var1, v27, v28, v29, v30);
      if (v45)
      {
        v50 = v45;
        v51 = objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v46, var3, v11, v47, v48, v49);
        return *(*(v50 + 96) + 8 * v51 + 8) - *(*(v50 + 96) + 8 * v51);
      }

      return 0;
    }

    if (list->var2 != 1)
    {
      goto LABEL_14;
    }

    v38 = objc_msgSend_rowsForStructColumn_(self, v25, list->var0, v27, v28, v29, v30);
    v8 = objc_msgSend_count(v38, v39, v40, v41, v42, v43, v44);
  }

  return v8;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)referencedStructAtIndex:(SEL)index inList:(int64_t)list
{
  if (a5->var0 == -1)
  {
    v47 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], index, list, a5, v5, v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v47, v48, index, self, @"CKXORCReaderWriter.mm", 488, @"Invalid struct");
  }

  v13 = *&a5->var2;
  v53 = *&a5->var0;
  v54 = v13;
  if (objc_msgSend_lengthForList_(self, index, &v53, a5, v5, v6, v7) <= list)
  {
    v49 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15, v16, v17, v18, v19);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v49, v50, index, self, @"CKXORCReaderWriter.mm", 491, @"Index out of range");
  }

  if (a5->var2 == 1)
  {
    v20 = objc_msgSend_rowsForStructColumn_(self, v14, a5->var0, v16, v17, v18, v19);
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0x7FFFFFFFFFFFFFFFLL;
    v58[0] = 0;
    v58[1] = v58;
    v58[2] = 0x2020000000;
    v58[3] = 0;
    *&v53 = MEMORY[0x277D85DD0];
    *(&v53 + 1) = 3221225472;
    *&v54 = sub_243980794;
    *(&v54 + 1) = &unk_278DDB458;
    v56 = &v59;
    listCopy = list;
    v55 = v58;
    objc_msgSend_enumerateRangesUsingBlock_(v20, v21, &v53, v22, v23, v24, v25);
    v30 = v60[3];
    if (v30 == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v26, *MEMORY[0x277CBE730], @"Index %lu out of range", v27, v28, v29, list);
      v30 = v60[3];
    }

    _Block_object_dispose(v58, 8);
    _Block_object_dispose(&v59, 8);
  }

  else
  {
    v32 = objc_msgSend_schema(self, v14, v15, v16, v17, v18, v19);
    if (v32)
    {
      v33 = *(v32[10] + 56 * a5->var1 + 16);
    }

    else
    {
      v33 = 0;
    }

    v45 = objc_msgSend_listColumnForReference_(self, v34, a5->var1, v35, v36, v37, v38);
    if (!v45)
    {
      v51 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v39, v40, v41, v42, v43, v44);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v51, v52, index, self, @"CKXORCReaderWriter.mm", 501, @"Unexpected null struct list column in reader");
    }

    v46 = *(*(v45 + 96) + 8 * objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v39, a5->var3, v33, v42, v43, v44));
    result = __dynamic_cast(*(v45 + 120), &unk_2856A2580, &unk_2856A2590, 0);
    v30 = a5->var3 + *(result[4].var0 + 8 * v46 + 8 * list);
  }

  retstr->var0 = a5->var0;
  retstr->var1 = 0;
  retstr->var2 = v30;
  return result;
}

- (unint64_t)valueSizeForField:(unint64_t)field
{
  v8 = objc_msgSend_schema(self, a2, field, v3, v4, v5, v6);
  v14 = sub_243987270(v8, field, v9, v10, v11, v12, v13);

  return v14;
}

- (void)copyData:(void *)data forField:(unint64_t)field inStruct:(id *)struct
{
  if (struct->var1 == 1)
  {
    v32 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, data, field, struct, v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v33, a2, self, @"CKXORCReaderWriter.mm", 522, @"Invalid struct");
  }

  v11 = objc_msgSend_valueColumnForField_(self, a2, field, field, struct, v5, v6);
  if (v11)
  {
    v12 = __dynamic_cast(v11, &unk_2856A2580, &unk_2856A2590, 0);
    if (v12)
    {
      v17 = v12;
      var2 = struct->var2;
      v19 = objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v13, var2, struct->var0, v14, v15, v16);
      if (data)
      {
        if (*(v17[5] + v19))
        {
          v25 = objc_msgSend_valueSizeForField_(self, v20, field, v21, v22, v23, v24);
          v30 = (v17[12] + 8 * objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v26, var2, struct->var0, v27, v28, v29));

          memcpy(data, v30, v25);
        }
      }
    }
  }
}

- (void)copyData:(void *)data forList:(id *)list
{
  dataCopy = data;
  if (list->var0 != -1)
  {
    v96 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, data, list, v4, v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v96, v97, a2, self, @"CKXORCReaderWriter.mm", 535, @"Invalid struct");
  }

  if (list->var2 == 1)
  {
    v98 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, data, list, v4, v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v98, v99, a2, self, @"CKXORCReaderWriter.mm", 536, @"Invalid list");
  }

  v11 = objc_msgSend_schema(self, a2, data, list, v4, v5, v6);
  v17 = sub_2439871D0(v11, list->var1, v12, v13, v14, v15, v16);

  if ((v17 - 1) < 2)
  {
    v46 = objc_msgSend_schema(self, v18, v19, v20, v21, v22, v23);
    if (v46)
    {
      v47 = *(v46[10] + 56 * list->var1 + 16);
    }

    else
    {
      v47 = 0;
    }

    v53 = objc_msgSend_valueColumnForField_(self, v48, list->var1, v49, v50, v51, v52);
    if (v53)
    {
      v54 = __dynamic_cast(v53, &unk_2856A2580, &unk_2856A25C0, 0);
      if (v54)
      {
        v59 = v54;
        var3 = list->var3;
        v61 = objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v55, var3, v47, v56, v57, v58);
        if (dataCopy)
        {
          if (*(v59[5] + v61))
          {
            v66 = *(v59[12] + 8 * objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v62, var3, v47, v63, v64, v65));
            v71 = *(v59[17] + 8 * objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v67, var3, v47, v68, v69, v70));

            memcpy(dataCopy, v66, v71);
          }
        }
      }
    }
  }

  else if (v17)
  {
    if (v17 == 3)
    {
      v24 = objc_msgSend_schema(self, v18, v19, v20, v21, v22, v23);
      v25 = v24 ? *(v24[10] + 56 * list->var1 + 16) : 0;

      v31 = objc_msgSend_listColumnForReference_(self, v26, list->var1, v27, v28, v29, v30);
      if (v31)
      {
        v36 = v31;
        v37 = list->var3;
        v38 = objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v32, v37, v25, v33, v34, v35);
        if (dataCopy)
        {
          if (*(v36[5] + v38))
          {
            v44 = v36[15];
            v45 = v44 ? __dynamic_cast(v44, &unk_2856A2580, &unk_2856A2590, 0) : 0;
            v73 = *&list->var2;
            v101[0] = *&list->var0;
            v101[1] = v73;
            v74 = objc_msgSend_lengthForList_(self, v39, v101, v40, v41, v42, v43);
            v79 = *(v36[12] + 8 * objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v75, v37, v25, v76, v77, v78));
            v85 = objc_msgSend_valueSizeForField_(self, v80, list->var1, v81, v82, v83, v84);
            if (v74 >= 1)
            {
              v92 = v85;
              v93 = 8 * v79;
              do
              {
                if (v92 == 8)
                {
                  *dataCopy = *(v45[12] + v93);
                }

                else
                {
                  v94 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v86, v87, v88, v89, v90, v91);
                  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v94, v95, a2, self, @"CKXORCReaderWriter.mm", 580, @"Array integer size %lu not supported", v92);
                }

                ++dataCopy;
                v93 += 8;
                --v74;
              }

              while (v74);
            }
          }
        }
      }
    }
  }

  else
  {
    v100 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19, v20, v21, v22, v23);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v100, v72, a2, self, @"CKXORCReaderWriter.mm", 542, @"Invalid list type");
  }
}

- (void)structColumnForStruct:(unint64_t)struct
{
  result = **(objc_msgSend_rootColumnForStruct_(self, a2, struct, v3, v4, v5, v6) + 80);
  if (result)
  {

    return __dynamic_cast(result, &unk_2856A2580, &unk_2856A25F0, 0);
  }

  return result;
}

- (void)structReferenceColumnForReference:(unint64_t)reference
{
  v9 = objc_msgSend_schema(self, a2, reference, v3, v4, v5, v6);
  if (v9)
  {
    v10 = *(v9[10] + 56 * reference + 16);
  }

  else
  {
    v10 = 0;
  }

  v16 = objc_msgSend_structColumnForStruct_(self, v11, v10, v12, v13, v14, v15);
  v23 = objc_msgSend_helpers(self, v17, v18, v19, v20, v21, v22);
  v29 = objc_msgSend_structReferenceIndexForReference_(v23, v24, reference, v25, v26, v27, v28);

  v30 = *(v16 + 80);
  if (v29 >= (*(v16 + 88) - v30) >> 3)
  {
    return 0;
  }

  v31 = *(v30 + 8 * v29);
  if (!v31)
  {
    return 0;
  }

  return __dynamic_cast(v31, &unk_2856A2580, &unk_2856A2590, 0);
}

- (void)listColumnForReference:(unint64_t)reference
{
  v9 = objc_msgSend_schema(self, a2, reference, v3, v4, v5, v6);
  if (v9)
  {
    v10 = *(v9[10] + 56 * reference + 16);
  }

  else
  {
    v10 = 0;
  }

  v16 = objc_msgSend_structColumnForStruct_(self, v11, v10, v12, v13, v14, v15);
  v23 = objc_msgSend_helpers(self, v17, v18, v19, v20, v21, v22);
  v29 = objc_msgSend_listColumnIndexForReference_(v23, v24, reference, v25, v26, v27, v28);

  v30 = *(v16 + 80);
  if (v29 >= (*(v16 + 88) - v30) >> 3)
  {
    return 0;
  }

  v31 = *(v30 + 8 * v29);
  if (!v31)
  {
    return 0;
  }

  return __dynamic_cast(v31, &unk_2856A2580, &unk_2856A2608, 0);
}

- (void)valueColumnForField:(unint64_t)field
{
  v9 = objc_msgSend_schema(self, a2, field, v3, v4, v5, v6);
  if (v9)
  {
    v10 = *(v9[10] + 56 * field + 16);
  }

  else
  {
    v10 = 0;
  }

  v16 = objc_msgSend_structColumnForStruct_(self, v11, v10, v12, v13, v14, v15);
  v23 = objc_msgSend_helpers(self, v17, v18, v19, v20, v21, v22);
  v29 = objc_msgSend_valueColumnIndexForField_(v23, v24, field, v25, v26, v27, v28);

  v30 = *(v16 + 80);
  if (v29 >= (*(v16 + 88) - v30) >> 3)
  {
    return 0;
  }

  else
  {
    return *(v30 + 8 * v29);
  }
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 3) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 6) = 0;
  return self;
}

@end
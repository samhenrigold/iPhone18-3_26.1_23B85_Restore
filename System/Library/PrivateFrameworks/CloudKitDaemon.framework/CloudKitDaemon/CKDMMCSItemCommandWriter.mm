@interface CKDMMCSItemCommandWriter
- (BOOL)isContiguous;
- (BOOL)readBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesRead:(unint64_t *)read error:(id *)error;
- (BOOL)writeBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesWritten:(unint64_t *)written error:(id *)error;
- (CKDMMCSItemCommandWriter)initWithMMCSItem:(id)item MMCSRequest:(id)request;
- (id)getFileMetadataWithError:(id *)error;
- (void)dealloc;
@end

@implementation CKDMMCSItemCommandWriter

- (CKDMMCSItemCommandWriter)initWithMMCSItem:(id)item MMCSRequest:(id)request
{
  v28 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  requestCopy = request;
  v12 = requestCopy;
  if (itemCopy)
  {
    if (requestCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v21, v22, a2, self, @"CKDMMCSItemCommandWriter.m", 27, @"Expected non-nil MMCS item");

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v23 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v23, v24, a2, self, @"CKDMMCSItemCommandWriter.m", 28, @"Expected non-nil MMCS request for %@", itemCopy);

LABEL_3:
  v25.receiver = self;
  v25.super_class = CKDMMCSItemCommandWriter;
  v13 = [(CKDMMCSItemCommandWriter *)&v25 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_MMCSItem, item);
    objc_storeStrong(&v14->_MMCSRequest, request);
    v17 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v15, v16);
    byteRanges = v14->_byteRanges;
    v14->_byteRanges = v17;

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v19 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v27 = v14;
      _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "init, reader:%p", buf, 0xCu);
    }
  }

  return v14;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "dealloc, reader:%p", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CKDMMCSItemCommandWriter;
  [(CKDMMCSItemCommandWriter *)&v4 dealloc];
}

- (id)getFileMetadataWithError:(id *)error
{
  if (error)
  {
    *error = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBC120], 1, @"getFileMetadataWithError not implemented");
  }

  return 0;
}

- (BOOL)readBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesRead:(unint64_t *)read error:(id *)error
{
  if (error)
  {
    *error = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBC120], 1, @"readBytesAtOffset not implemented", read);
  }

  return 0;
}

- (BOOL)isContiguous
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  CKNSIndexSet_enumerateInverseRangesInRange_options_usingBlock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return (v2 & 1) == 0;
}

- (BOOL)writeBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesWritten:(unint64_t *)written error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_containsIndexesInRange_(self->_byteRanges, a2, offset, length))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v29 = v14;
      v36.location = offset;
      v36.length = length;
      v30 = NSStringFromRange(v36);
      *buf = 138543362;
      v34 = v30;
      _os_log_error_impl(&dword_22506F000, v29, OS_LOG_TYPE_ERROR, "range %{public}@ overlaps with previous range", buf, 0xCu);
    }
  }

  objc_msgSend_addIndexesInRange_(self->_byteRanges, v13, offset, length);
  if (self->_maximumLength < length + offset)
  {
    self->_maximumLength = length + offset;
  }

  v16 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v15, bytes, length);
  v18 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v17, offset);
  v31[0] = @"Data";
  v31[1] = @"Offset";
  v32[0] = v16;
  v32[1] = v18;
  v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v32, v31, 2);
  v23 = objc_msgSend_MMCSRequest(self, v21, v22);
  v26 = objc_msgSend_MMCSItem(self, v24, v25);
  objc_msgSend_handleCommand_forItem_(v23, v27, v20, v26);

  if (written)
  {
    *written = length;
  }

  if (error)
  {
    *error = 0;
  }

  return 1;
}

@end
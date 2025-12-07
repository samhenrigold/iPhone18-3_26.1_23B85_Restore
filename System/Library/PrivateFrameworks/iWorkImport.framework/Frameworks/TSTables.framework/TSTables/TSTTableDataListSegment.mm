@interface TSTTableDataListSegment
- (TSTTableDataListSegment)initWithType:(int)type keyRange:(_NSRange)range context:(id)context;
- (_NSRange)keyRange;
- (id).cxx_construct;
- (id)contentsOfObjectForKey:(unsigned int)key;
- (id)copyWithContext:(id)context;
- (id)objectAtIndexedSubscript:(unsigned int)subscript;
- (id)split;
- (void)encodeObjectsToDataListArchive:(void *)archive archiver:(id)archiver;
- (void)enumerateObjectsWithBlock:(id)block;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)loadObjectsFromDataListArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setKeyRange:(_NSRange)range;
- (void)setObject:(id)object atIndexedSubscript:(unsigned int)subscript;
@end

@implementation TSTTableDataListSegment

- (TSTTableDataListSegment)initWithType:(int)type keyRange:(_NSRange)range context:(id)context
{
  length = range.length;
  location = range.location;
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = TSTTableDataListSegment;
  v10 = [(TSTTableDataListSegment *)&v18 initWithContext:contextCopy];
  v14 = v10;
  if (v10)
  {
    v10->_listType = type;
    v10->_keyRange.location = location;
    v10->_keyRange.length = length;
    v15 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v11, v12, v13);
    keys = v14->_keys;
    v14->_keys = v15;

    v14->_estimatedByteSize = 0;
  }

  return v14;
}

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithType_keyRange_context_(v5, v6, self->_listType, self->_keyRange.location, self->_keyRange.length, contextCopy);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2213BEC40;
  v15[3] = &unk_2784641D8;
  v8 = v7;
  v16 = v8;
  v9 = contextCopy;
  v17 = v9;
  objc_msgSend_enumerateObjectsWithBlock_(self, v10, v15, v11);
  v12 = v17;
  v13 = v8;

  return v13;
}

- (void)setKeyRange:(_NSRange)range
{
  p_keyRange = &self->_keyRange;
  if (range.location != self->_keyRange.location || range.length != self->_keyRange.length)
  {
    location = range.location;
    if (HIDWORD(range.location))
    {
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Datalist segment range start out of bounds on set", a2, "[TSTTableDataListSegment setKeyRange:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 88);
      v7 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableDataListSegment setKeyRange:]", v9);
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v12);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v10, v13, 88, 1, "Datalist segment range start out of bounds on set");
    }

    else
    {
      length = range.length;
      if (!HIDWORD(range.length))
      {
        objc_msgSend_willModify(self, a2, range.location, LODWORD(range.length));
        p_keyRange->location = location;
        p_keyRange->length = length;
        return;
      }

      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Datalist segment range length out of bounds on set!", a2, "[TSTTableDataListSegment setKeyRange:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 89);
      v15 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTTableDataListSegment setKeyRange:]", v17);
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v10, v13, 89, 1, "Datalist segment range length out of bounds on set!");
    }

    TSUCrashBreakpoint();
    abort();
  }
}

- (id)split
{
  if (objc_msgSend_shouldSplit(self, a2, v2, v3))
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    v8 = objc_alloc(objc_opt_class());
    listType = self->_listType;
    p_keyRange = &self->_keyRange;
    location = self->_keyRange.location;
    length = self->_keyRange.length;
    v16 = objc_msgSend_context(self, v13, v14, v15);
    v18 = objc_msgSend_initWithType_keyRange_context_(v8, v17, listType, location, length, v16);

    v22 = objc_msgSend_copy(self->_keys, v19, v20, v21);
    v140[0] = MEMORY[0x277D85DD0];
    v140[1] = 3221225472;
    v140[2] = sub_2213BF684;
    v140[3] = &unk_27845DE60;
    v140[4] = self;
    v23 = v18;
    v141 = v23;
    objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v22, v24, 2, v140);
    if (objc_msgSend_count(v23, v25, v26, v27))
    {
      v31 = objc_msgSend_mutableCopy(v22, v28, v29, v30);
      v35 = objc_msgSend_keys(v23, v32, v33, v34);
      objc_msgSend_removeIndexes_(v31, v36, v35, v37);

      v41 = objc_msgSend_copy(self->_keys, v38, v39, v40);
      if (objc_msgSend_isEqualToIndexSet_(v41, v42, v22, v43))
      {
        objc_storeStrong(&self->_keys, v31);
        Index = objc_msgSend_lastIndex(self->_keys, v44, v45, v46);
        v51 = objc_msgSend_keys(v23, v48, v49, v50);
        v55 = objc_msgSend_firstIndex(v51, v52, v53, v54);

        v57 = v55 - Index;
        if (v55 <= Index)
        {
          TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Keys overlap during split!", "[TSTTableDataListSegment split]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 161);
          v92 = MEMORY[0x277D81150];
          v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, "[TSTTableDataListSegment split]", v94);
          v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v96, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v97);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v92, v99, v95, v98, 161, 1, "Keys overlap during split!");

          TSUCrashBreakpoint();
        }

        else
        {
          if (v57 > 1)
          {
            v58 = ((v55 + Index) >> 1) + 1;
          }

          else
          {
            v58 = v55;
          }

          if (v57 <= 1)
          {
            v59 = Index;
          }

          else
          {
            v59 = (v55 + Index) >> 1;
          }

          v60 = p_keyRange->location;
          v61 = p_keyRange->length;
          p_keyRange->length = v59 - p_keyRange->location + 1;
          objc_msgSend_setKeyRange_(v23, v56, v58, v60 - v58 + v61);
          v65 = objc_msgSend_keyRange(v23, v62, v63, v64);
          v69 = p_keyRange->length;
          if (v65 == v69 + p_keyRange->location)
          {
            if (HIDWORD(p_keyRange->location))
            {
              TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Existing datalist segment range start out of bounds on split!", "[TSTTableDataListSegment split]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 179);
              v108 = MEMORY[0x277D81150];
              v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v109, "[TSTTableDataListSegment split]", v110);
              v114 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v112, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v113);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v108, v115, v111, v114, 179, 1, "Existing datalist segment range start out of bounds on split!");

              TSUCrashBreakpoint();
            }

            else if (HIDWORD(v69))
            {
              TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Existing datalist segment range length out of bounds on split!", "[TSTTableDataListSegment split]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 180);
              v116 = MEMORY[0x277D81150];
              v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, "[TSTTableDataListSegment split]", v118);
              v122 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v121);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v116, v123, v119, v122, 180, 1, "Existing datalist segment range length out of bounds on split!");

              TSUCrashBreakpoint();
            }

            else if (objc_msgSend_keyRange(v23, v66, v67, v68) >> 32)
            {
              TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d New datalist segment range start out of bounds on split!", "[TSTTableDataListSegment split]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 181);
              v124 = MEMORY[0x277D81150];
              v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v125, "[TSTTableDataListSegment split]", v126);
              v130 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v128, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v129);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v124, v131, v127, v130, 181, 1, "New datalist segment range start out of bounds on split!");

              TSUCrashBreakpoint();
            }

            else
            {
              objc_msgSend_keyRange(v23, v70, v71, v72);
              if (!HIDWORD(v73))
              {
                v74 = v23;

                goto LABEL_18;
              }

              TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d New datalist segment range length out of bounds on split!", "[TSTTableDataListSegment split]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 182);
              v132 = MEMORY[0x277D81150];
              v135 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v133, "[TSTTableDataListSegment split]", v134);
              v138 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v136, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v137);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v132, v139, v135, v138, 182, 1, "New datalist segment range length out of bounds on split!");

              TSUCrashBreakpoint();
            }
          }

          else
          {
            TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Segment ranges are discontiguous!", "[TSTTableDataListSegment split]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 176);
            v100 = MEMORY[0x277D81150];
            v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, "[TSTTableDataListSegment split]", v102);
            v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v104, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v105);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v100, v107, v103, v106, 176, 1, "Segment ranges are discontiguous!");

            TSUCrashBreakpoint();
          }
        }
      }

      else
      {
        TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Datalist segment changed during split!", "[TSTTableDataListSegment split]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 148);
        v84 = MEMORY[0x277D81150];
        v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, "[TSTTableDataListSegment split]", v86);
        v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v89);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v84, v91, v87, v90, 148, 1, "Datalist segment changed during split!");

        TSUCrashBreakpoint();
      }
    }

    else
    {
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d New segment is empty during split!", "[TSTTableDataListSegment split]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 140);
      v76 = MEMORY[0x277D81150];
      v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "[TSTTableDataListSegment split]", v78);
      v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v81);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v83, v79, v82, 140, 1, "New segment is empty during split!");

      TSUCrashBreakpoint();
    }

    abort();
  }

  v74 = 0;
LABEL_18:

  return v74;
}

- (id)objectAtIndexedSubscript:(unsigned int)subscript
{
  subscriptCopy = subscript;
  if (subscript)
  {
    v3 = sub_2211DC534(&self->_data.__table_.__bucket_list_.__ptr_, &subscriptCopy);
    if (v3)
    {
      v7 = v3[3];
      if (v7)
      {
        v8 = objc_msgSend_key(v3[3], v4, v5, v6);
        if (v8 != subscriptCopy)
        {
          TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Got an object with a bad key!", "[TSTTableDataListSegment objectAtIndexedSubscript:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 202);
          v9 = MEMORY[0x277D81150];
          v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableDataListSegment objectAtIndexedSubscript:]", v11);
          v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v14);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v12, v15, 202, 1, "Got an object with a bad key!");

          TSUCrashBreakpoint();
          abort();
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v17 = v7;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)contentsOfObjectForKey:(unsigned int)key
{
  keyCopy = key;
  if (key)
  {
    v3 = sub_2211DC534(&self->_data.__table_.__bucket_list_.__ptr_, &keyCopy);
    if (v3)
    {
      v7 = v3[3];
      if (v7)
      {
        v8 = objc_msgSend_key(v3[3], v4, v5, v6);
        if (v8 != keyCopy)
        {
          TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Got an object with a bad key!", "[TSTTableDataListSegment contentsOfObjectForKey:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 223);
          v9 = MEMORY[0x277D81150];
          v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableDataListSegment contentsOfObjectForKey:]", v11);
          v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v14);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v12, v15, 223, 1, "Got an object with a bad key!");

          TSUCrashBreakpoint();
          abort();
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v17 = objc_msgSend_payload(v7, v4, v5, v6);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)setObject:(id)object atIndexedSubscript:(unsigned int)subscript
{
  v4 = *&subscript;
  subscriptCopy = subscript;
  objc_msgSend_willModify(self, a2, object, *&subscript);
  if (object)
  {
    objc_msgSend_setKey_(object, v7, v4, v8);
    v22 = &subscriptCopy;
    v9 = sub_2213C0608(&self->_data.__table_.__bucket_list_.__ptr_, &subscriptCopy, &unk_2217E192C, &v22);
    objc_storeStrong(v9 + 3, object);
    objc_msgSend_addIndex_(self->_keys, v10, subscriptCopy, v11);
    self->_estimatedByteSize += objc_msgSend_byteSizeForArchiving(object, v12, v13, v14);
  }

  else
  {
    v22 = &subscriptCopy;
    v15 = sub_2213C0608(&self->_data.__table_.__bucket_list_.__ptr_, &subscriptCopy, &unk_2217E192C, &v22);
    self->_estimatedByteSize -= objc_msgSend_byteSizeForArchiving(v15[3], v16, v17, v18);
    sub_221387BB4(&self->_data.__table_.__bucket_list_.__ptr_, &subscriptCopy);
    objc_msgSend_removeIndex_(self->_keys, v19, subscriptCopy, v20);
  }
}

- (void)enumerateObjectsWithBlock:(id)block
{
  blockCopy = block;
  v6 = 0;
  p_first_node = &self->_data.__table_.__first_node_;
  do
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    blockCopy[2](blockCopy, p_first_node[3].__next_, &v6);
  }

  while ((v6 & 1) == 0);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[40], v6);

  self->_listType = *(v7 + 56);
  self->_keyRange.location = TSPNSRangeFromMessage();
  self->_keyRange.length = v8;
  v11 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v8, v9, v10);
  keys = self->_keys;
  self->_keys = v11;

  v13 = *(v7 + 40);
  if (v13)
  {
    v14 = (v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v7 + 32);
  if (v15)
  {
    v16 = 8 * v15;
    do
    {
      TST::TableDataList_ListEntry::TableDataList_ListEntry(v20, *v14);
      listType = self->_listType;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_2213BFDD4;
      v19[3] = &unk_278464200;
      v19[4] = self;
      objc_msgSend_loadObjectFromArchive_listType_unarchiver_completion_(TSTTableDataObject, v18, v20, listType, unarchiverCopy, v19);
      TST::TableDataList_ListEntry::~TableDataList_ListEntry(v20);
      ++v14;
      v16 -= 8;
    }

    while (v16);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_2213C086C, off_2812E4498[40]);

  if (HIDWORD(self->_keyRange.location) || HIDWORD(self->_keyRange.length))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataListSegment saveToArchiver:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 284, 0, "Datalist segment range out of bounds on archive!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = *(v6 + 16);
  *(v6 + 56) = self->_listType;
  *(v6 + 16) = v18 | 3;
  if (!*(v6 + 48))
  {
    v19 = *(v6 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(v6 + 48) = MEMORY[0x223DA0370](v19);
  }

  TSPNSRangeCopyToMessage();
  keys = self->_keys;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2213C006C;
  v24[3] = &unk_278464228;
  v24[4] = self;
  v26 = v6;
  v21 = archiverCopy;
  v25 = v21;
  objc_msgSend_enumerateIndexesUsingBlock_(keys, v22, v24, v23);
}

- (void)loadObjectsFromDataListArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (!self->_listType)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableDataListSegment loadObjectsFromDataListArchive:unarchiver:]", v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 303, 0, "Need to set up a segment before doing an upgrade-type load of it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = *(archive + 5);
  if (v18)
  {
    v19 = (v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(archive + 8);
  if (v20)
  {
    v21 = 8 * v20;
    do
    {
      TST::TableDataList_ListEntry::TableDataList_ListEntry(v25, *v19);
      listType = self->_listType;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = sub_2213C0318;
      v24[3] = &unk_278464200;
      v24[4] = self;
      objc_msgSend_loadObjectFromArchive_listType_unarchiver_completion_(TSTTableDataObject, v23, v25, listType, unarchiverCopy, v24);
      TST::TableDataList_ListEntry::~TableDataList_ListEntry(v25);
      ++v19;
      v21 -= 8;
    }

    while (v21);
  }
}

- (void)encodeObjectsToDataListArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  keys = self->_keys;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2213C044C;
  v11[3] = &unk_278464228;
  v12 = archiverCopy;
  archiveCopy = archive;
  v11[4] = self;
  v8 = archiverCopy;
  objc_msgSend_enumerateIndexesUsingBlock_(keys, v9, v11, v10);
}

- (_NSRange)keyRange
{
  p_keyRange = &self->_keyRange;
  location = self->_keyRange.location;
  length = p_keyRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (id).cxx_construct
{
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 24) = 1065353216;
  return self;
}

@end
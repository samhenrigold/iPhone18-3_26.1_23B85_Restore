@interface TSPUnknownContent
+ (BOOL)unknownContent:(id)content hasSameUnknownFieldsAsUnknownContent:(id)unknownContent messagePrototype:(const Message *)prototype;
- (BOOL)hasSameUnknownFieldsAsUnknownContent:(id)content messagePrototype:(const Message *)prototype;
- (TSPUnknownContent)init;
- (TSPUnknownContent)initWithMessages:(id)messages messagesAreDiffs:(BOOL)diffs preserveFields:(id)fields preserveUntilModifiedFields:(id)modifiedFields;
- (id)newUnknownContentSnapshot;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)willModifyObject;
@end

@implementation TSPUnknownContent

- (TSPUnknownContent)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPUnknownContent init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnknownContent.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 37, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPUnknownContent init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPUnknownContent)initWithMessages:(id)messages messagesAreDiffs:(BOOL)diffs preserveFields:(id)fields preserveUntilModifiedFields:(id)modifiedFields
{
  diffsCopy = diffs;
  v57 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  fieldsCopy = fields;
  modifiedFieldsCopy = modifiedFields;
  v55.receiver = self;
  v55.super_class = TSPUnknownContent;
  v13 = [(TSPUnknownContent *)&v55 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(messagesCopy, v11, v12);
    preserveUntilModifiedMessages = v13->_preserveUntilModifiedMessages;
    v13->_preserveUntilModifiedMessages = v14;

    if (diffsCopy)
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v18 = messagesCopy;
      v20 = 0;
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v51, v56, 16);
      if (v23)
      {
        v24 = *v52;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v52 != v24)
            {
              objc_enumerationMutation(v18);
            }

            v26 = *(*(&v51 + 1) + 8 * i);
            v27 = objc_msgSend_messageInfo(v26, v21, v22);
            if (*(v27 + 200))
            {
              TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Unexpected mix of diff and non-diff unknown messages.", "[TSPUnknownContent initWithMessages:messagesAreDiffs:preserveFields:preserveUntilModifiedFields:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnknownContent.mm", 52);
              v43 = MEMORY[0x277D81150];
              v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "[TSPUnknownContent initWithMessages:messagesAreDiffs:preserveFields:preserveUntilModifiedFields:]");
              v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnknownContent.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v48, v45, v47, 52, 1, "Unexpected mix of diff and non-diff unknown messages.");

              TSUCrashBreakpoint();
              abort();
            }

            v28 = *(v27 + 56);
            if (v28 >= 1)
            {
              v29 = 1;
              v30 = *(v27 + 56);
              v31 = 1;
              do
              {
                v32 = *(*(v27 + 64) + 8 * v29);
                if ((*(v32 + 16) & 0x10) != 0 && *(v32 + 116) == -1 && *(v32 + 120) == 2)
                {
                  break;
                }

                v31 = v29++ < v28;
                --v30;
              }

              while (v30);
              if (v31)
              {
                if (v20)
                {
                  objc_msgSend_addObject_(v20, v21, v26);
                }

                else
                {
                  v33 = objc_alloc(MEMORY[0x277CBEB18]);
                  v20 = objc_msgSend_initWithObjects_(v33, v34, v26, 0);
                }
              }
            }
          }

          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v51, v56, 16);
        }

        while (v23);
      }

      preserveMessages = v13->_preserveMessages;
      v13->_preserveMessages = v20;
    }

    v36 = objc_msgSend_copy(fieldsCopy, v16, v17);
    preserveFields = v13->_preserveFields;
    v13->_preserveFields = v36;

    v40 = objc_msgSend_copy(modifiedFieldsCopy, v38, v39);
    preserveUntilModifiedFields = v13->_preserveUntilModifiedFields;
    v13->_preserveUntilModifiedFields = v40;
  }

  return v13;
}

- (id)newUnknownContentSnapshot
{
  if (self->_preserveUntilModifiedMessages)
  {
    v4 = [TSPUnknownContentSnapshot alloc];
    preserveUntilModifiedMessages = self->_preserveUntilModifiedMessages;
    preserveFields = self->_preserveFields;
    preserveUntilModifiedFields = self->_preserveUntilModifiedFields;
    v9 = 1;
  }

  else
  {
    if (self->_preserveMessages)
    {
      v4 = [TSPUnknownContentSnapshot alloc];
      preserveUntilModifiedMessages = self->_preserveMessages;
      preserveFields = self->_preserveFields;
      preserveUntilModifiedFields = self->_preserveUntilModifiedFields;
    }

    else
    {
      if (!objc_msgSend_count(self->_preserveFields, a2, v2))
      {
        result = objc_msgSend_count(self->_preserveUntilModifiedFields, v10, v11);
        if (!result)
        {
          return result;
        }
      }

      v4 = [TSPUnknownContentSnapshot alloc];
      preserveFields = self->_preserveFields;
      preserveUntilModifiedFields = self->_preserveUntilModifiedFields;
      preserveUntilModifiedMessages = 0;
    }

    v9 = 0;
  }

  return objc_msgSend_initWithMessages_preserveFields_preserveUntilModifiedFields_shouldIncludePreserveUntilModifiedFieldsInKnownFieldRuleEnumeration_(v4, v5, preserveUntilModifiedMessages, preserveFields, preserveUntilModifiedFields, v9);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  v70 = *MEMORY[0x277D85DE8];
  unarchiverCopy = unarchiver;
  v5 = 16;
  if (!self->_preserveUntilModifiedMessages)
  {
    v5 = 8;
  }

  selfCopy = self;
  v6 = *(&self->super.isa + v5);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v6;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v63, v69, 16);
  if (v10)
  {
    v11 = *v64;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v64 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v63 + 1) + 8 * i);
        v14 = objc_msgSend_messageInfo(v13, v8, v9);
        v15 = *(v14 + 72);
        if (v15 >= 1)
        {
          v16 = 0;
          v17 = 0;
          v58 = 0;
          v59 = 0;
          v18 = 8 * v15;
          v60 = 0;
          while (1)
          {
            v19 = v60;
            if (!v60)
            {
              break;
            }

            v20 = *v60;
            if (v17 >= *v60)
            {
              if (v20 == HIDWORD(v59))
              {
LABEL_15:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v58, v20 + 1);
                v19 = v60;
                v20 = *v60;
              }

              *v19 = v20 + 1;
              v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v58);
              v23 = &v60[2 * v59];
              v17 = v59 + 1;
              LODWORD(v59) = v59 + 1;
              *(v23 + 1) = v22;
              goto LABEL_17;
            }

            v21 = &v60[2 * v17++];
            LODWORD(v59) = v17;
            v22 = *(v21 + 1);
LABEL_17:
            v24 = *(*(v14 + 80) + v16);
            *(v22 + 16) |= 1u;
            *(v22 + 24) = v24;
            v16 += 8;
            if (v18 == v16)
            {
              v62[0] = MEMORY[0x277D85DD0];
              v62[1] = 3221225472;
              v62[2] = sub_276AC9048;
              v62[3] = &unk_27A6E4220;
              v62[4] = v13;
              objc_msgSend_readRepeatedUnknownLazyReferenceMessage_ownershipMode_completion_(unarchiverCopy, v8, &v58, 0, v62);
              sub_276A07EA8(&v58);
              goto LABEL_19;
            }
          }

          v20 = HIDWORD(v59);
          goto LABEL_15;
        }

LABEL_19:
        v25 = *(v14 + 96);
        if (v25 >= 1)
        {
          v26 = objc_alloc(MEMORY[0x277CBEB18]);
          v28 = objc_msgSend_initWithCapacity_(v26, v27, v25);
          v29 = 0;
          v30 = 8 * v25;
          do
          {
            TSP::DataReference::DataReference(&v58, 0);
            v31 = *(*(v14 + 104) + v29);
            LODWORD(v60) = v60 | 1;
            v61 = v31;
            v34 = objc_msgSend_readDataReferenceMessage_(unarchiverCopy, v32, &v58);
            if (v34)
            {
              objc_msgSend_addObject_(v28, v33, v34);
            }

            TSP::DataReference::~DataReference(&v58);
            v29 += 8;
          }

          while (v30 != v29);
          objc_msgSend_setAllData_(v13, v35, v28);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v63, v69, 16);
    }

    while (v10);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v36 = selfCopy->_preserveFields;
  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v54, v68, 16);
  if (v39)
  {
    v40 = *v55;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v55 != v40)
        {
          objc_enumerationMutation(v36);
        }

        objc_msgSend_loadFromUnarchiver_(*(*(&v54 + 1) + 8 * j), v38, unarchiverCopy);
      }

      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v38, &v54, v68, 16);
    }

    while (v39);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v42 = selfCopy->_preserveUntilModifiedFields;
  v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v50, v67, 16);
  if (v45)
  {
    v46 = *v51;
    do
    {
      for (k = 0; k != v45; ++k)
      {
        if (*v51 != v46)
        {
          objc_enumerationMutation(v42);
        }

        objc_msgSend_loadFromUnarchiver_(*(*(&v50 + 1) + 8 * k), v44, unarchiverCopy);
      }

      v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v44, &v50, v67, 16);
    }

    while (v45);
  }
}

- (void)willModifyObject
{
  preserveUntilModifiedMessages = self->_preserveUntilModifiedMessages;
  self->_preserveUntilModifiedMessages = 0;

  preserveUntilModifiedFields = self->_preserveUntilModifiedFields;
  self->_preserveUntilModifiedFields = 0;
}

- (BOOL)hasSameUnknownFieldsAsUnknownContent:(id)content messagePrototype:(const Message *)prototype
{
  v27 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  if (contentCopy == self)
  {
    v24 = 1;
  }

  else
  {
    v9 = objc_msgSend_newUnknownContentSnapshot(self, v6, v7);
    v14 = objc_msgSend_newUnknownContentSnapshot(contentCopy, v10, v11);
    if (v9 == v14)
    {
      v24 = 1;
    }

    else
    {
      v15 = objc_msgSend_newFieldTree(v9, v12, v13);
      v18 = objc_msgSend_newFieldTree(v14, v16, v17);
      if (v15 == v18)
      {
        v24 = 1;
      }

      else
      {
        v19 = (*(prototype->var0 + 3))(prototype);
        objc_msgSend_saveToMessage_(v15, v20, v19);
        v21 = (*(prototype->var0 + 3))(prototype);
        objc_msgSend_saveToMessage_(v18, v22, v21);
        google::protobuf::util::MessageDifferencer::MessageDifferencer(v26);
        v24 = google::protobuf::util::MessageDifferencer::Equals(v19, v21, v23);
        google::protobuf::util::MessageDifferencer::~MessageDifferencer(v26);
        (*(*v21 + 8))(v21);
        (*(*v19 + 8))(v19);
      }
    }
  }

  return v24;
}

+ (BOOL)unknownContent:(id)content hasSameUnknownFieldsAsUnknownContent:(id)unknownContent messagePrototype:(const Message *)prototype
{
  contentCopy = content;
  unknownContentCopy = unknownContent;
  if (contentCopy == unknownContentCopy)
  {
    hasSameUnknownFieldsAsUnknownContent_messagePrototype = 1;
  }

  else
  {
    v10 = contentCopy;
    v11 = unknownContentCopy;
    if (!contentCopy)
    {
      if (!unknownContentCopy)
      {
        TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Both unknown content arguments should be equal in this case.", "+[TSPUnknownContent unknownContent:hasSameUnknownFieldsAsUnknownContent:messagePrototype:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnknownContent.mm", 168);
        v14 = MEMORY[0x277D81150];
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "+[TSPUnknownContent unknownContent:hasSameUnknownFieldsAsUnknownContent:messagePrototype:]");
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnknownContent.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v16, v18, 168, 1, "Both unknown content arguments should be equal in this case.");

        TSUCrashBreakpoint();
        abort();
      }

      v11 = 0;
      v10 = unknownContentCopy;
    }

    hasSameUnknownFieldsAsUnknownContent_messagePrototype = objc_msgSend_hasSameUnknownFieldsAsUnknownContent_messagePrototype_(v10, v8, v11, prototype);
  }

  return hasSameUnknownFieldsAsUnknownContent_messagePrototype;
}

@end
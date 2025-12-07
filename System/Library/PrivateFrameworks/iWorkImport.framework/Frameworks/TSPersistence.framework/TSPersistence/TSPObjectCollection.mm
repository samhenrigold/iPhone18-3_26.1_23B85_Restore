@interface TSPObjectCollection
- (TSPObjectCollection)initWithContext:(id)context objects:(id)objects;
- (id)tsp_publicLoggingDescription;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSPObjectCollection

- (TSPObjectCollection)initWithContext:(id)context objects:(id)objects
{
  v41 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  objectsCopy = objects;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(objectsCopy, v8, &v36, v40, 16);
  if (v9)
  {
    v10 = *v37;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v37 != v10)
      {
        objc_enumerationMutation(objectsCopy);
      }

      v12 = *(*(&v36 + 1) + 8 * v11);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v15 = objc_msgSend_context(v12, v13, v14);
      v16 = v15 == contextCopy;

      if (!v16)
      {
        v29 = MEMORY[0x277D81150];
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSPObjectCollection initWithContext:objects:]");
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectCollection.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v31, v25, v27, 25, 0, "%@ is not in the same object context as the object container.", v12);
        goto LABEL_15;
      }

      if (v9 == ++v11)
      {
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(objectsCopy, v17, &v36, v40, 16);
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSPObjectCollection initWithContext:objects:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectCollection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 22, 0, "%@ is not a TSPObject.", v12);
LABEL_15:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
    selfCopy = 0;
    goto LABEL_16;
  }

LABEL_10:

  v35.receiver = self;
  v35.super_class = TSPObjectCollection;
  v20 = [(TSPObject *)&v35 initWithContext:contextCopy];
  if (v20)
  {
    v21 = objc_msgSend_copy(objectsCopy, v18, v19);
    objects = v20->_objects;
    v20->_objects = v21;
  }

  self = v20;
  selfCopy = self;
LABEL_16:

  return selfCopy;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812FC248[58]);

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2769D5450;
  v10[3] = &unk_27A6E3B40;
  v10[4] = self;
  v7 = unarchiverCopy;
  v8 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v7, v9, v6 + 16, v8, 0, v10);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2769D574C, off_2812FC248[58]);

  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v6, self->_objects, v5 + 16);
}

- (id)tsp_publicLoggingDescription
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v23.receiver = self;
  v23.super_class = TSPObjectCollection;
  tsp_publicLoggingDescription = [(TSPObject *)&v23 tsp_publicLoggingDescription];
  objc_msgSend_appendFormat_(v3, v5, @"[collection: %@, objects: [", tsp_publicLoggingDescription);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_objects;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v19, v24, 16);
  if (v10)
  {
    v11 = *v20;
    v12 = 1;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if ((v12 & 1) == 0)
        {
          objc_msgSend_appendString_(v3, v8, @", ");
        }

        v15 = objc_msgSend_tsp_publicLoggingDescription(v14, v8, v9);
        objc_msgSend_appendString_(v3, v16, v15);

        v12 = 0;
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v19, v24, 16);
      v12 = 0;
    }

    while (v10);
  }

  objc_msgSend_appendString_(v3, v17, @"]]");

  return v3;
}

@end
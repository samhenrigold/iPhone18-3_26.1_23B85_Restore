@interface TSPFieldTreeNodeWithChildren
- (BOOL)addChildNode:(id)node forFieldNumber:(int)number;
- (id).cxx_construct;
- (id)childNodeForFieldNumber:(int)number;
- (void)saveToArchiver:(id)archiver message:(Message *)message;
@end

@implementation TSPFieldTreeNodeWithChildren

- (id)childNodeForFieldNumber:(int)number
{
  left = self->_children.__tree_.__end_node_.__left_;
  if (!left)
  {
    return 0;
  }

  p_end_node = &self->_children.__tree_.__end_node_;
  do
  {
    if (SLODWORD(left[4].__left_) >= number)
    {
      p_end_node = left;
    }

    left = left[SLODWORD(left[4].__left_) < number].__left_;
  }

  while (left);
  if (p_end_node != &self->_children.__tree_.__end_node_ && SLODWORD(p_end_node[4].__left_) <= number)
  {
    return p_end_node[5].__left_;
  }

  else
  {
    return 0;
  }
}

- (BOOL)addChildNode:(id)node forFieldNumber:(int)number
{
  numberCopy = number;
  nodeCopy = node;
  v5 = nodeCopy;
  sub_276AD5504(&self->_children, &numberCopy, &numberCopy);
  LOBYTE(self) = v6;

  return self & 1;
}

- (void)saveToArchiver:(id)archiver message:(Message *)message
{
  archiverCopy = archiver;
  if (message)
  {
    (*(message->var0 + 19))(message);
    p_end_node = &self->_children.__tree_.__end_node_;
    begin_node = self->_children.__tree_.__begin_node_;
    if (begin_node != p_end_node)
    {
      v11 = v8;
      v52 = p_end_node;
      v53 = 0;
      v12 = 0;
      do
      {
        objc_opt_class();
        v13 = TSUDynamicCast();
        v16 = v13;
        if (v13)
        {
          v17 = objc_msgSend_field(v13, v14, v15);
          v20 = v17;
          if (archiverCopy)
          {
            objc_msgSend_saveToArchiver_(v17, v18, archiverCopy);
          }

          if (objc_msgSend_hasKnownValues(v20, v18, v19))
          {
            objc_msgSend_mergeToMessage_reflection_(v20, v21, message, v11);
          }

          if (objc_msgSend_hasUnknownValues(v20, v21, v22))
          {
            if (!v12)
            {
              v12 = google::protobuf::Reflection::MutableUnknownFields(v11, message);
            }

            objc_msgSend_mergeToUnknownFieldSet_(v20, v23, v12);
          }
        }

        else
        {
          objc_opt_class();
          v20 = TSUDynamicCast();
          if (v20)
          {
            v24 = v53;
            if (!v53)
            {
              v24 = (*(message->var0 + 19))(message);
            }

            v53 = v24;
            FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(v24, begin_node[4].__left_);
            if (!FieldByNumber)
            {
              FieldByNumber = google::protobuf::Reflection::FindKnownExtensionByNumber(v11, LODWORD(begin_node[4].__left_));
            }

            v27 = *(FieldByNumber + 48);
            if (v27)
            {
              v54 = FieldByNumber;
              v55 = google::protobuf::FieldDescriptor::TypeOnceInit;
              if (atomic_load_explicit(v27, memory_order_acquire) != -1)
              {
                v57[0] = &v55;
                v57[1] = &v54;
                v56 = v57;
                std::__call_once(v27, &v56, sub_2769C149C);
              }
            }

            if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByNumber + 56)] == 10)
            {
              if (*(FieldByNumber + 60) == 3)
              {
                HasField = google::protobuf::Reflection::FieldSize(v11, message, FieldByNumber);
              }

              else
              {
                HasField = google::protobuf::Reflection::HasField(v11, message, FieldByNumber);
              }

              v37 = HasField;
              v38 = v12;
              if (HasField >= 1)
              {
                v39 = 0;
                do
                {
                  if (*(FieldByNumber + 60) == 3)
                  {
                    v40 = google::protobuf::Reflection::MutableRepeatedMessage(v11, message, FieldByNumber, v39);
                  }

                  else
                  {
                    v40 = google::protobuf::Reflection::MutableMessage(v11, message, FieldByNumber, 0);
                  }

                  objc_msgSend_saveToArchiver_message_(v20, v41, archiverCopy, v40);
                  ++v39;
                }

                while (v37 != v39);
              }

              v12 = v38;
              p_end_node = v52;
            }

            else
            {
              v29 = MEMORY[0x277D81150];
              v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSPFieldTreeNodeWithChildren saveToArchiver:message:]");
              v31 = v12;
              v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFieldTree.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v33, 169, 0, "Message was expeced for a multi-level field path.");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
              v12 = v31;
              p_end_node = v52;
            }
          }
        }

        left = begin_node[1].__left_;
        if (left)
        {
          do
          {
            v43 = left;
            left = left->__left_;
          }

          while (left);
        }

        else
        {
          do
          {
            v43 = begin_node[2].__left_;
            v44 = v43->__left_ == begin_node;
            begin_node = v43;
          }

          while (!v44);
        }

        begin_node = v43;
      }

      while (v43 != p_end_node);
    }
  }

  else
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPFieldTreeNodeWithChildren saveToArchiver:message:]");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFieldTree.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v49, v46, v48, 119, 0, "Message should have been defined.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51);
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

@end
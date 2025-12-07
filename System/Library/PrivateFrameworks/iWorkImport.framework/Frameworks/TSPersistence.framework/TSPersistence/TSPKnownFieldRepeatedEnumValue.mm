@interface TSPKnownFieldRepeatedEnumValue
- (TSPKnownFieldRepeatedEnumValue)initWithFieldDescriptor:(const void *)descriptor fieldInfo:(const void *)info message:(const Message *)message reflection:(const Reflection *)reflection unknownFieldSet:(void *)set;
- (id).cxx_construct;
- (id)debugDescription;
- (void)mergeToMessage:(Message *)message reflection:(const Reflection *)reflection;
- (void)mergeToUnknownFieldSet:(void *)set;
@end

@implementation TSPKnownFieldRepeatedEnumValue

- (TSPKnownFieldRepeatedEnumValue)initWithFieldDescriptor:(const void *)descriptor fieldInfo:(const void *)info message:(const Message *)message reflection:(const Reflection *)reflection unknownFieldSet:(void *)set
{
  v62.receiver = self;
  v62.super_class = TSPKnownFieldRepeatedEnumValue;
  v11 = [TSPKnownFieldRepeatedNumericValue initSubclassWithFieldDescriptor:sel_initSubclassWithFieldDescriptor_fieldInfo_message_reflection_ fieldInfo:descriptor message:info reflection:?];
  v12 = v11;
  if (v11)
  {
    v13 = v11[2];
    if (v13 != 8)
    {
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Unexpected field descriptor type (%d).", "[TSPKnownFieldRepeatedEnumValue initWithFieldDescriptor:fieldInfo:message:reflection:unknownFieldSet:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm", 645, v13);
      v52 = MEMORY[0x277D81150];
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "[TSPKnownFieldRepeatedEnumValue initWithFieldDescriptor:fieldInfo:message:reflection:unknownFieldSet:]");
      v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v57, v54, v56, 645, 1, "Unexpected field descriptor type (%d).", v12->super.super._type);

      TSUCrashBreakpoint();
      abort();
    }

    v14 = v11 + 38;
    v16 = *set;
    v15 = *(set + 1);
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    v17 = *(v11 + 20);
    *v14 = v16;
    v12->_unknownFieldSet.__cntrl_ = v15;
    if (v17)
    {
      sub_2769C1430(v17);
    }

    reflectionCopy = reflection;
    v18 = google::protobuf::Reflection::FieldSize(reflection, message, descriptor);
    v20 = v18;
    v58 = v18;
    if (*set && v18)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPKnownFieldRepeatedEnumValue initWithFieldDescriptor:fieldInfo:message:reflection:unknownFieldSet:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
      v25 = *(descriptor + 1);
      if (*(v25 + 23) < 0)
      {
        v25 = *v25;
      }

      number = v12->super.super._number;
      (*(message->var0 + 2))(__p, message);
      if (v61 >= 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v24, 652, 0, "Repeated enum field %{public}s (%d) for message %{public}s has both known and unknown values. The order of the values will not be preserved.", v25, number, __p);
      }

      else
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v24, 652, 0, "Repeated enum field %{public}s (%d) for message %{public}s has both known and unknown values. The order of the values will not be preserved.", v25, number, __p[0]);
      }

      v20 = v58;
      if (v61 < 0)
      {
        operator delete(__p[0]);
      }

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
    }

    v30 = objc_alloc(MEMORY[0x277CBEB18]);
    v32 = objc_msgSend_initWithCapacity_(v30, v31, v20);
    values = v12->super._values;
    v12->super._values = v32;

    v34 = reflectionCopy;
    if (v20 >= 1)
    {
      for (i = 0; i != v20; ++i)
      {
        RepeatedEnum = google::protobuf::Reflection::GetRepeatedEnum(v34, message, descriptor, i);
        if (RepeatedEnum)
        {
          v38 = v12->super._values;
          v39 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v37, *(RepeatedEnum + 16));
          objc_msgSend_addObject_(v38, v40, v39);
        }

        else
        {
          v41 = MEMORY[0x277D81150];
          v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSPKnownFieldRepeatedEnumValue initWithFieldDescriptor:fieldInfo:message:reflection:unknownFieldSet:]");
          v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
          v45 = *(descriptor + 1);
          if (*(v45 + 23) < 0)
          {
            v45 = *v45;
          }

          v46 = v12->super.super._number;
          (*(message->var0 + 2))(__p, message);
          v48 = __p;
          if (v61 < 0)
          {
            v48 = __p[0];
          }

          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v47, v42, v44, 662, 0, "Found unexpected enum value for field %{public}s (%d) message %{public}s.", v45, v46, v48);
          v20 = v58;
          v34 = reflectionCopy;
          if (v61 < 0)
          {
            operator delete(__p[0]);
          }

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50);
          v39 = v12->super._values;
          v12->super._values = 0;
        }
      }
    }
  }

  return v12;
}

- (void)mergeToUnknownFieldSet:(void *)set
{
  if (set)
  {
    google::protobuf::UnknownFieldSet::MergeFrom(set, self->_unknownFieldSet.__ptr_);
  }
}

- (void)mergeToMessage:(Message *)message reflection:(const Reflection *)reflection
{
  selfCopy = self;
  v58 = *MEMORY[0x277D85DE8];
  if (self->super._values || objc_msgSend_hasUnknownValues(self, a2, message))
  {
    v6 = (*(message->var0 + 19))(message, a2);
    FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(v6, selfCopy->super.super._number);
    if (FieldByNumber || (FieldByNumber = google::protobuf::Reflection::FindKnownExtensionByNumber(reflection, selfCopy->super.super._number)) != 0)
    {
      v9 = FieldByNumber;
      google::protobuf::Reflection::ClearField(reflection, message, FieldByNumber);
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = selfCopy->super._values;
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v53, v57, 16);
      if (v11)
      {
        v12 = *v54;
        v13 = 0x277CCA000uLL;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v54 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v53 + 1) + 8 * i);
            v16 = google::protobuf::FieldDescriptor::enum_type(v9);
            v19 = objc_msgSend_intValue(v15, v17, v18);
            ValueByNumber = google::protobuf::EnumDescriptor::FindValueByNumber(v16, v19);
            if (ValueByNumber)
            {
              google::protobuf::Reflection::AddEnum(reflection, message, v9, ValueByNumber);
            }

            else
            {
              v23 = MEMORY[0x277D81150];
              v49 = objc_msgSend_stringWithUTF8String_(*(v13 + 3240), v20, "[TSPKnownFieldRepeatedEnumValue mergeToMessage:reflection:]");
              v50 = objc_msgSend_stringWithUTF8String_(*(v13 + 3240), v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
              v27 = objc_msgSend_intValue(v15, v25, v26);
              v28 = v13;
              v29 = v9;
              v30 = v11;
              v31 = v12;
              v32 = selfCopy;
              number = selfCopy->super.super._number;
              (*(message->var0 + 2))(__p, message);
              v35 = __p;
              if (v52 < 0)
              {
                v35 = __p[0];
              }

              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v34, v49, v50, 705, 0, "Found unexpected enum value (%d) for field (%d) message %{public}s.", v27, number, v35);
              if (v52 < 0)
              {
                operator delete(__p[0]);
              }

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
              selfCopy = v32;
              v12 = v31;
              v11 = v30;
              v9 = v29;
              v13 = v28;
            }
          }

          v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v53, v57, 16);
        }

        while (v11);
      }
    }

    else
    {
      v38 = selfCopy;
      v39 = MEMORY[0x277D81150];
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPKnownFieldRepeatedEnumValue mergeToMessage:reflection:]");
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v43, v40, v42, 691, 0, "Unexpected unknown field (%d).", v38->super.super._number);

      v46 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v46, v44, v45);
    }
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TSPKnownFieldRepeatedEnumValue;
  v4 = [(TSPKnownFieldRepeatedNumericValue *)&v8 debugDescription];
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@ values: %@", v4, self->super._values);;

  return v6;
}

- (id).cxx_construct
{
  *(self + 19) = 0;
  *(self + 20) = 0;
  return self;
}

@end
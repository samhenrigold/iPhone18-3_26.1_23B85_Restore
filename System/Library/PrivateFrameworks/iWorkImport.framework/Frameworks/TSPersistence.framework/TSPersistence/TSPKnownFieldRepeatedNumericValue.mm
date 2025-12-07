@interface TSPKnownFieldRepeatedNumericValue
- (TSPKnownFieldRepeatedNumericValue)initWithFieldDescriptor:(const void *)descriptor fieldInfo:(const void *)info message:(const Message *)message reflection:(const Reflection *)reflection;
- (id)debugDescription;
- (id)initSubclassWithFieldDescriptor:(const void *)descriptor fieldInfo:(const void *)info message:(const Message *)message reflection:(const Reflection *)reflection;
- (void)mergeToMessage:(Message *)message reflection:(const Reflection *)reflection;
@end

@implementation TSPKnownFieldRepeatedNumericValue

- (TSPKnownFieldRepeatedNumericValue)initWithFieldDescriptor:(const void *)descriptor fieldInfo:(const void *)info message:(const Message *)message reflection:(const Reflection *)reflection
{
  v75.receiver = self;
  v75.super_class = TSPKnownFieldRepeatedNumericValue;
  v9 = [TSPKnownField initWithFieldDescriptor:sel_initWithFieldDescriptor_fieldInfo_message_reflection_ fieldInfo:descriptor message:info reflection:?];
  if (v9)
  {
    v10 = google::protobuf::Reflection::FieldSize(reflection, message, descriptor);
    v11 = objc_alloc(MEMORY[0x277CBEB18]);
    v13 = objc_msgSend_initWithCapacity_(v11, v12, v10);
    values = v9->_values;
    v9->_values = v13;

    type = v9->super._type;
    if (type > 4)
    {
      if (type > 6)
      {
        if (type == 7)
        {
          if (v10 >= 1)
          {
            for (i = 0; i != v10; ++i)
            {
              v40 = v9->_values;
              v41 = MEMORY[0x277CCABB0];
              RepeatedBool = google::protobuf::Reflection::GetRepeatedBool(reflection, message, descriptor, i);
              v44 = objc_msgSend_numberWithBool_(v41, v43, RepeatedBool);
              objc_msgSend_addObject_(v40, v45, v44);
            }
          }
        }

        else if ((type - 8) < 3)
        {
          TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Unexpected field descriptor type (%d).", "[TSPKnownFieldRepeatedNumericValue initWithFieldDescriptor:fieldInfo:message:reflection:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm", 476, type);
          v69 = MEMORY[0x277D81150];
          v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "[TSPKnownFieldRepeatedNumericValue initWithFieldDescriptor:fieldInfo:message:reflection:]");
          v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v74, v71, v73, 476, 1, "Unexpected field descriptor type (%d).", v9->super._type);

          TSUCrashBreakpoint();
          abort();
        }
      }

      else if (type == 5)
      {
        if (v10 >= 1)
        {
          for (j = 0; j != v10; ++j)
          {
            v47 = v9->_values;
            v48 = MEMORY[0x277CCABB0];
            RepeatedDouble = google::protobuf::Reflection::GetRepeatedDouble(reflection, message, descriptor, j);
            v52 = objc_msgSend_numberWithDouble_(v48, v50, v51, RepeatedDouble);
            objc_msgSend_addObject_(v47, v53, v52);
          }
        }
      }

      else if (v10 >= 1)
      {
        v24 = 0;
        do
        {
          v25 = v9->_values;
          v26 = MEMORY[0x277CCABB0];
          *&v27 = google::protobuf::Reflection::GetRepeatedFloat(reflection, message, descriptor, v24);
          v30 = objc_msgSend_numberWithFloat_(v26, v28, v29, v27);
          objc_msgSend_addObject_(v25, v31, v30);

          ++v24;
        }

        while (v10 != v24);
      }
    }

    else if (type > 2)
    {
      if (type == 3)
      {
        if (v10 >= 1)
        {
          for (k = 0; k != v10; ++k)
          {
            v62 = v9->_values;
            v63 = MEMORY[0x277CCABB0];
            RepeatedUInt32 = google::protobuf::Reflection::GetRepeatedUInt32(reflection, message, descriptor, k);
            v66 = objc_msgSend_numberWithUnsignedInt_(v63, v65, RepeatedUInt32);
            objc_msgSend_addObject_(v62, v67, v66);
          }
        }
      }

      else if (v10 >= 1)
      {
        v32 = 0;
        do
        {
          v33 = v9->_values;
          v34 = MEMORY[0x277CCABB0];
          RepeatedUInt64 = google::protobuf::Reflection::GetRepeatedUInt64(reflection, message, descriptor, v32);
          v37 = objc_msgSend_numberWithUnsignedLongLong_(v34, v36, RepeatedUInt64);
          objc_msgSend_addObject_(v33, v38, v37);

          ++v32;
        }

        while (v10 != v32);
      }
    }

    else if (type == 1)
    {
      if (v10 >= 1)
      {
        for (m = 0; m != v10; ++m)
        {
          v55 = v9->_values;
          v56 = MEMORY[0x277CCABB0];
          RepeatedInt32 = google::protobuf::Reflection::GetRepeatedInt32(reflection, message, descriptor, m);
          v59 = objc_msgSend_numberWithInt_(v56, v58, RepeatedInt32);
          objc_msgSend_addObject_(v55, v60, v59);
        }
      }
    }

    else if (type == 2 && v10 >= 1)
    {
      v17 = 0;
      do
      {
        v18 = v9->_values;
        v19 = MEMORY[0x277CCABB0];
        RepeatedInt64 = google::protobuf::Reflection::GetRepeatedInt64(reflection, message, descriptor, v17);
        v22 = objc_msgSend_numberWithLongLong_(v19, v21, RepeatedInt64);
        objc_msgSend_addObject_(v18, v23, v22);

        ++v17;
      }

      while (v10 != v17);
    }
  }

  return v9;
}

- (id)initSubclassWithFieldDescriptor:(const void *)descriptor fieldInfo:(const void *)info message:(const Message *)message reflection:(const Reflection *)reflection
{
  v7.receiver = self;
  v7.super_class = TSPKnownFieldRepeatedNumericValue;
  return [(TSPKnownField *)&v7 initWithFieldDescriptor:descriptor fieldInfo:info message:message reflection:reflection];
}

- (void)mergeToMessage:(Message *)message reflection:(const Reflection *)reflection
{
  v117 = *MEMORY[0x277D85DE8];
  if (self->_values)
  {
    v7 = (*(message->var0 + 19))(message, a2);
    FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(v7, self->super._number);
    if (FieldByNumber || (FieldByNumber = google::protobuf::Reflection::FindKnownExtensionByNumber(reflection, self->super._number)) != 0)
    {
      v10 = FieldByNumber;
      google::protobuf::Reflection::ClearField(reflection, message, FieldByNumber);
      type = self->super._type;
      if (type > 4)
      {
        if (type > 6)
        {
          if (type == 7)
          {
            v84 = 0u;
            v85 = 0u;
            v82 = 0u;
            v83 = 0u;
            v44 = self->_values;
            v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v82, v110, 16);
            if (v48)
            {
              v49 = *v83;
              do
              {
                for (i = 0; i != v48; ++i)
                {
                  if (*v83 != v49)
                  {
                    objc_enumerationMutation(v44);
                  }

                  v51 = objc_msgSend_BOOLValue(*(*(&v82 + 1) + 8 * i), v46, v47);
                  google::protobuf::Reflection::AddBool(reflection, message, v10, v51);
                }

                v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v46, &v82, v110, 16);
              }

              while (v48);
            }
          }

          else if ((type - 8) < 3)
          {
            TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Unexpected field descriptor type (%d).", "[TSPKnownFieldRepeatedNumericValue mergeToMessage:reflection:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm", 554, type);
            v76 = MEMORY[0x277D81150];
            v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "[TSPKnownFieldRepeatedNumericValue mergeToMessage:reflection:]");
            v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v81, v78, v80, 554, 1, "Unexpected field descriptor type (%d).", self->super._type);

            TSUCrashBreakpoint();
            abort();
          }
        }

        else if (type == 5)
        {
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v52 = self->_values;
          v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, &v90, v112, 16);
          if (v56)
          {
            v57 = *v91;
            do
            {
              for (j = 0; j != v56; ++j)
              {
                if (*v91 != v57)
                {
                  objc_enumerationMutation(v52);
                }

                objc_msgSend_doubleValue(*(*(&v90 + 1) + 8 * j), v54, v55);
                google::protobuf::Reflection::AddDouble(reflection, message, v10, v59);
              }

              v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v54, &v90, v112, 16);
            }

            while (v56);
          }
        }

        else
        {
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v20 = self->_values;
          v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v86, v111, 16);
          if (v24)
          {
            v25 = *v87;
            do
            {
              for (k = 0; k != v24; ++k)
              {
                if (*v87 != v25)
                {
                  objc_enumerationMutation(v20);
                }

                objc_msgSend_floatValue(*(*(&v86 + 1) + 8 * k), v22, v23);
                google::protobuf::Reflection::AddFloat(reflection, message, v10, v27);
              }

              v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v86, v111, 16);
            }

            while (v24);
          }
        }
      }

      else if (type > 2)
      {
        if (type == 3)
        {
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v68 = self->_values;
          v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, &v98, v114, 16);
          if (v72)
          {
            v73 = *v99;
            do
            {
              for (m = 0; m != v72; ++m)
              {
                if (*v99 != v73)
                {
                  objc_enumerationMutation(v68);
                }

                v75 = objc_msgSend_unsignedIntValue(*(*(&v98 + 1) + 8 * m), v70, v71);
                google::protobuf::Reflection::AddUInt32(reflection, message, v10, v75);
              }

              v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v70, &v98, v114, 16);
            }

            while (v72);
          }
        }

        else
        {
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v28 = self->_values;
          v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v94, v113, 16);
          if (v32)
          {
            v33 = *v95;
            do
            {
              for (n = 0; n != v32; ++n)
              {
                if (*v95 != v33)
                {
                  objc_enumerationMutation(v28);
                }

                v35 = objc_msgSend_unsignedLongLongValue(*(*(&v94 + 1) + 8 * n), v30, v31);
                google::protobuf::Reflection::AddUInt64(reflection, message, v10, v35);
              }

              v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v94, v113, 16);
            }

            while (v32);
          }
        }
      }

      else if (type == 1)
      {
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v60 = self->_values;
        v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v61, &v106, v116, 16);
        if (v64)
        {
          v65 = *v107;
          do
          {
            for (ii = 0; ii != v64; ++ii)
            {
              if (*v107 != v65)
              {
                objc_enumerationMutation(v60);
              }

              v67 = objc_msgSend_intValue(*(*(&v106 + 1) + 8 * ii), v62, v63);
              google::protobuf::Reflection::AddInt32(reflection, message, v10, v67);
            }

            v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v62, &v106, v116, 16);
          }

          while (v64);
        }
      }

      else if (type == 2)
      {
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v12 = self->_values;
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v102, v115, 16);
        if (v16)
        {
          v17 = *v103;
          do
          {
            for (jj = 0; jj != v16; ++jj)
            {
              if (*v103 != v17)
              {
                objc_enumerationMutation(v12);
              }

              v19 = objc_msgSend_longLongValue(*(*(&v102 + 1) + 8 * jj), v14, v15);
              google::protobuf::Reflection::AddInt64(reflection, message, v10, v19);
            }

            v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v102, v115, 16);
          }

          while (v16);
        }
      }
    }

    else
    {
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPKnownFieldRepeatedNumericValue mergeToMessage:reflection:]");
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v40, v37, v39, 499, 0, "Unexpected unknown field (%d).", self->super._number);

      v43 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v43, v41, v42);
    }
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TSPKnownFieldRepeatedNumericValue;
  v4 = [(TSPKnownField *)&v8 debugDescription];
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@ values: %@", v4, self->_values);;

  return v6;
}

@end
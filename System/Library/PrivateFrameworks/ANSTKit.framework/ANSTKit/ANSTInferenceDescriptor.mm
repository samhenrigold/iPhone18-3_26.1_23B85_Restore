@interface ANSTInferenceDescriptor
- (ANSTInferenceDescriptor)initWithCoder:(id)coder;
- (ANSTInferenceDescriptor)initWithName:(id)name error:(id *)error;
- (ANSTInferenceDescriptor)initWithName:(id)name version:(unint64_t)version assetURL:(id)l assetType:(int64_t)type e5FunctionName:(id)functionName inputDescriptors:(id)descriptors outputDescriptors:(id)outputDescriptors error:(id *)self0;
- (BOOL)_buildCategorizedDescriptorsCacheWithError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ANSTInferenceDescriptor

- (ANSTInferenceDescriptor)initWithName:(id)name error:(id *)error
{
  nameCopy = name;
  result = objc_msgSend_doesNotRecognizeSelector_(self, v7, a2);
  __break(1u);
  return result;
}

- (ANSTInferenceDescriptor)initWithName:(id)name version:(unint64_t)version assetURL:(id)l assetType:(int64_t)type e5FunctionName:(id)functionName inputDescriptors:(id)descriptors outputDescriptors:(id)outputDescriptors error:(id *)self0
{
  selfCopy = error;
  v48[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  lCopy = l;
  functionNameCopy = functionName;
  descriptorsCopy = descriptors;
  outputDescriptorsCopy = outputDescriptors;
  v23 = outputDescriptorsCopy;
  if (!lCopy || !descriptorsCopy || !outputDescriptorsCopy)
  {
    if (!error)
    {
      goto LABEL_10;
    }

    v42 = MEMORY[0x277CCA9B8];
    v47 = *MEMORY[0x277CCA068];
    v48[0] = @"ANSTInferenceDescriptor initialization requires nonnil assetURL, inputDescriptors, and outputDescriptors.";
    v43 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, v48, &v47, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v42, v44, @"ANSTErrorDomain", 2, v43);

LABEL_9:
    selfCopy = 0;
    goto LABEL_10;
  }

  v46.receiver = self;
  v46.super_class = ANSTInferenceDescriptor;
  v24 = [(ANSTDescriptor *)&v46 initWithName:nameCopy error:error];
  self = v24;
  if (v24)
  {
    v24->_version = version;
    v27 = objc_msgSend_copy(lCopy, v25, v26);
    assetURL = self->_assetURL;
    self->_assetURL = v27;

    self->_assetType = type;
    v31 = objc_msgSend_copy(functionNameCopy, v29, v30);
    e5FunctionName = self->_e5FunctionName;
    self->_e5FunctionName = v31;

    v35 = objc_msgSend_copy(descriptorsCopy, v33, v34);
    inputDescriptors = self->_inputDescriptors;
    self->_inputDescriptors = v35;

    v39 = objc_msgSend_copy(v23, v37, v38);
    outputDescriptors = self->_outputDescriptors;
    self->_outputDescriptors = v39;

    if (!objc_msgSend__buildCategorizedDescriptorsCacheWithError_(self, v41, error))
    {
      goto LABEL_9;
    }
  }

  self = self;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (BOOL)_buildCategorizedDescriptorsCacheWithError:(id *)error
{
  v126 = *MEMORY[0x277D85DE8];
  v94 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, error);
  v93 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v4, v5);
  v8 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7);
  v92 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v9, v10);
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  selfCopy = self;
  outputPixelBufferDescriptors = self->_inputDescriptors;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(outputPixelBufferDescriptors, v12, &v100, v125, 16);
  v95 = v8;
  if (v13)
  {
    v14 = v13;
    v15 = *v101;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v101 != v15)
        {
          objc_enumerationMutation(outputPixelBufferDescriptors);
        }

        v17 = *(*(&v100 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = objc_msgSend_name(v17, v18, v19);
          v23 = v20;
          if (!v20 || !objc_msgSend_length(v20, v21, v22))
          {
            errorCopy10 = error;
            if (error)
            {
              v75 = MEMORY[0x277CCA9B8];
              v123[0] = *MEMORY[0x277CCA068];
              v123[1] = @"ANSTDescriptor";
              v124[0] = @"Descriptor name should not be empty.";
              v124[1] = v17;
              v76 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v124, v123, 2);
              objc_msgSend_errorWithDomain_code_userInfo_(v75, v77, @"ANSTErrorDomain", 10, v76, selfCopy);
              goto LABEL_62;
            }

            goto LABEL_53;
          }

          v24 = objc_msgSend_objectForKey_(v94, v21, v23);

          if (v24)
          {
            errorCopy10 = error;
            if (error)
            {
              v83 = MEMORY[0x277CCA9B8];
              v121[0] = *MEMORY[0x277CCA068];
              v121[1] = @"ANSTDescriptor";
              v122[0] = @"Descriptors should not have duplicated names.";
              v122[1] = v17;
              objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, v122, v121, 2, selfCopy);
              goto LABEL_61;
            }

LABEL_58:
            v60 = v93;
            v55 = v94;
            v8 = v95;
            goto LABEL_54;
          }

          objc_msgSend_setObject_forKey_(v94, v25, v17, v23);
          v8 = v95;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            errorCopy8 = error;
            if (!error)
            {
LABEL_55:
              v73 = 0;
              v60 = v93;
              v55 = v94;
              v69 = v92;
              goto LABEL_66;
            }

            v82 = MEMORY[0x277CCA9B8];
            v115[0] = *MEMORY[0x277CCA068];
            v115[1] = @"ANSTDescriptor";
            v116[0] = @"Invalid descriptor, expects either tensor or pixel buffer descriptor.";
            v116[1] = v17;
            objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v116, v115, 2, selfCopy);
            v23 = LABEL_52:;
            v8 = v95;
            *errorCopy8 = objc_msgSend_errorWithDomain_code_userInfo_(v82, v86, @"ANSTErrorDomain", 10, v23);
LABEL_53:
            v60 = v93;
            v55 = v94;
LABEL_54:
            v69 = v92;
            goto LABEL_65;
          }

          v28 = objc_msgSend_name(v17, v26, v27);
          v23 = v28;
          if (!v28 || !objc_msgSend_length(v28, v29, v30))
          {
            v60 = v93;
            v55 = v94;
            errorCopy10 = error;
            v69 = v92;
            if (error)
            {
              v78 = MEMORY[0x277CCA9B8];
              v119[0] = *MEMORY[0x277CCA068];
              v119[1] = @"ANSTDescriptor";
              v120[0] = @"Descriptor name should not be empty.";
              v120[1] = v17;
              v76 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, v120, v119, 2);
              v80 = objc_msgSend_errorWithDomain_code_userInfo_(v78, v79, @"ANSTErrorDomain", 10, v76);
              goto LABEL_64;
            }

LABEL_65:

            v73 = 0;
            goto LABEL_66;
          }

          v31 = objc_msgSend_objectForKey_(v8, v29, v23);

          if (v31)
          {
            errorCopy10 = error;
            if (error)
            {
              v83 = MEMORY[0x277CCA9B8];
              v117[0] = *MEMORY[0x277CCA068];
              v117[1] = @"ANSTDescriptor";
              v118[0] = @"Descriptors should not have duplicated names.";
              v118[1] = v17;
              objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v32, v118, v117, 2, selfCopy);
              goto LABEL_61;
            }

            goto LABEL_53;
          }

          objc_msgSend_setObject_forKey_(v8, v32, v17, v23);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(outputPixelBufferDescriptors, v33, &v100, v125, 16);
    }

    while (v14);
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  outputPixelBufferDescriptors = selfCopy->_outputDescriptors;
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(outputPixelBufferDescriptors, v34, &v96, v114, 16);
  if (v35)
  {
    v36 = v35;
    v37 = *v97;
LABEL_20:
    v38 = 0;
    while (1)
    {
      if (*v97 != v37)
      {
        objc_enumerationMutation(outputPixelBufferDescriptors);
      }

      v39 = *(*(&v96 + 1) + 8 * v38);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v42 = objc_msgSend_name(v39, v40, v41);
        v23 = v42;
        if (!v42 || !objc_msgSend_length(v42, v43, v44))
        {
          errorCopy10 = error;
          if (!error)
          {
            goto LABEL_53;
          }

          v83 = MEMORY[0x277CCA9B8];
          v112[0] = *MEMORY[0x277CCA068];
          v112[1] = @"ANSTDescriptor";
          v113[0] = @"Descriptor name should not be empty.";
          v113[1] = v39;
          objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v43, v113, v112, 2, selfCopy);
          goto LABEL_61;
        }

        v45 = objc_msgSend_objectForKey_(v93, v43, v23);

        if (v45)
        {
          errorCopy10 = error;
          if (!error)
          {
            goto LABEL_58;
          }

          v83 = MEMORY[0x277CCA9B8];
          v110[0] = *MEMORY[0x277CCA068];
          v110[1] = @"ANSTDescriptor";
          v111[0] = @"Descriptors should not have duplicated names.";
          v111[1] = v39;
          objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v46, v111, v110, 2, selfCopy);
          goto LABEL_61;
        }

        objc_msgSend_setObject_forKey_(v93, v46, v39, v23);
        v8 = v95;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          errorCopy8 = error;
          if (!error)
          {
            goto LABEL_55;
          }

          v82 = MEMORY[0x277CCA9B8];
          v104[0] = *MEMORY[0x277CCA068];
          v104[1] = @"ANSTDescriptor";
          v105[0] = @"Invalid descriptor, expects either tensor or pixel buffer descriptor.";
          v105[1] = v39;
          objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v47, v105, v104, 2, selfCopy);
          goto LABEL_52;
        }

        v49 = objc_msgSend_name(v39, v47, v48);
        v23 = v49;
        if (!v49 || !objc_msgSend_length(v49, v50, v51))
        {
          v60 = v93;
          v55 = v94;
          errorCopy10 = error;
          if (!error)
          {
            goto LABEL_54;
          }

          v84 = MEMORY[0x277CCA9B8];
          v108[0] = *MEMORY[0x277CCA068];
          v108[1] = @"ANSTDescriptor";
          v109[0] = @"Descriptor name should not be empty.";
          v109[1] = v39;
          v76 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v50, v109, v108, 2);
          v80 = objc_msgSend_errorWithDomain_code_userInfo_(v84, v85, @"ANSTErrorDomain", 10, v76);
          goto LABEL_63;
        }

        v52 = objc_msgSend_objectForKey_(v92, v50, v23);

        if (v52)
        {
          errorCopy10 = error;
          if (!error)
          {
            goto LABEL_53;
          }

          v83 = MEMORY[0x277CCA9B8];
          v106[0] = *MEMORY[0x277CCA068];
          v106[1] = @"ANSTDescriptor";
          v107[0] = @"Descriptors should not have duplicated names.";
          v107[1] = v39;
          objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v53, v107, v106, 2, selfCopy);
          v76 = LABEL_61:;
          objc_msgSend_errorWithDomain_code_userInfo_(v83, v87, @"ANSTErrorDomain", 10, v76, v90);
          v80 = LABEL_62:;
          v60 = v93;
          v55 = v94;
LABEL_63:
          v69 = v92;
LABEL_64:
          *errorCopy10 = v80;

          v8 = v95;
          goto LABEL_65;
        }

        objc_msgSend_setObject_forKey_(v92, v53, v39, v23);
      }

      if (v36 == ++v38)
      {
        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(outputPixelBufferDescriptors, v54, &v96, v114, 16);
        if (v36)
        {
          goto LABEL_20;
        }

        break;
      }
    }
  }

  v55 = v94;
  v58 = objc_msgSend_copy(v94, v56, v57);
  inputTensorDescriptors = selfCopy->_inputTensorDescriptors;
  selfCopy->_inputTensorDescriptors = v58;

  v60 = v93;
  v63 = objc_msgSend_copy(v93, v61, v62);
  outputTensorDescriptors = selfCopy->_outputTensorDescriptors;
  selfCopy->_outputTensorDescriptors = v63;

  v67 = objc_msgSend_copy(v8, v65, v66);
  inputPixelBufferDescriptors = selfCopy->_inputPixelBufferDescriptors;
  selfCopy->_inputPixelBufferDescriptors = v67;

  v69 = v92;
  v72 = objc_msgSend_copy(v92, v70, v71);
  outputPixelBufferDescriptors = selfCopy->_outputPixelBufferDescriptors;
  selfCopy->_outputPixelBufferDescriptors = v72;
  v73 = 1;
LABEL_66:

  return v73;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v53.receiver = self;
  v53.super_class = ANSTInferenceDescriptor;
  if ([(ANSTDescriptor *)&v53 isEqual:equalCopy])
  {
    if (equalCopy == self)
    {
      isEqualToString = 1;
      goto LABEL_22;
    }

    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = equalCopy;
        v8 = objc_msgSend_assetType(self, v6, v7);
        if (v8 != objc_msgSend_assetType(v5, v9, v10))
        {
          goto LABEL_20;
        }

        v13 = objc_msgSend_assetURL(self, v11, v12);
        v16 = objc_msgSend_assetURL(v5, v14, v15);
        if (objc_msgSend_isEqual_(v13, v17, v16))
        {
          v20 = objc_msgSend_inputDescriptors(self, v18, v19);
          v23 = objc_msgSend_inputDescriptors(v5, v21, v22);
          if (objc_msgSend_isEqualToArray_(v20, v24, v23))
          {
            v27 = objc_msgSend_outputDescriptors(self, v25, v26);
            v30 = objc_msgSend_outputDescriptors(v5, v28, v29);
            isEqualToArray = objc_msgSend_isEqualToArray_(v27, v31, v30);

            if (isEqualToArray)
            {
              v35 = objc_msgSend_e5FunctionName(self, v33, v34);
              if (v35)
              {
              }

              else
              {
                v41 = objc_msgSend_e5FunctionName(v5, v36, v37);

                if (!v41)
                {
                  isEqualToString = 1;
                  goto LABEL_21;
                }
              }

              v42 = objc_msgSend_e5FunctionName(self, v38, v39);
              if (v42)
              {
                v45 = v42;
                v46 = objc_msgSend_e5FunctionName(v5, v43, v44);

                if (v46)
                {
                  v13 = objc_msgSend_e5FunctionName(self, v47, v48);
                  v16 = objc_msgSend_e5FunctionName(v5, v49, v50);
                  isEqualToString = objc_msgSend_isEqualToString_(v13, v51, v16);
                  goto LABEL_15;
                }
              }
            }

LABEL_20:
            isEqualToString = 0;
            goto LABEL_21;
          }
        }

        isEqualToString = 0;
LABEL_15:

LABEL_21:
        goto LABEL_22;
      }
    }
  }

  isEqualToString = 0;
LABEL_22:

  return isEqualToString;
}

- (unint64_t)hash
{
  v35.receiver = self;
  v35.super_class = ANSTInferenceDescriptor;
  v3 = [(ANSTDescriptor *)&v35 hash];
  v6 = objc_msgSend_version(self, v4, v5);
  v9 = objc_msgSend_assetURL(self, v7, v8);
  v12 = v6 ^ objc_msgSend_hash(v9, v10, v11);

  v15 = v12 ^ objc_msgSend_assetType(self, v13, v14);
  v18 = objc_msgSend_e5FunctionName(self, v16, v17);
  v21 = v15 ^ objc_msgSend_hash(v18, v19, v20);

  v24 = objc_msgSend_inputDescriptors(self, v22, v23);
  v27 = v21 ^ objc_msgSend_hash(v24, v25, v26) ^ v3;

  v30 = objc_msgSend_outputDescriptors(self, v28, v29);
  v33 = objc_msgSend_hash(v30, v31, v32);

  return v27 ^ v33;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_name(self, a2, v2);
  v8 = objc_msgSend_inputDescriptors(self, v6, v7);
  v11 = objc_msgSend_count(v8, v9, v10);
  v14 = objc_msgSend_outputDescriptors(self, v12, v13);
  v17 = objc_msgSend_count(v14, v15, v16);
  v19 = objc_msgSend_stringWithFormat_(v4, v18, @"%@ (%zu input(s), %zu output(s))", v5, v11, v17);

  return v19;
}

- (id)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend_appendFormat_(v3, v6, @"<%@ %p>\n", v5, self);

  v9 = objc_msgSend_name(self, v7, v8);
  objc_msgSend_appendFormat_(v3, v10, @"  name %@\n", v9);

  v13 = objc_msgSend_version(self, v11, v12);
  v16 = objc_msgSend_version(self, v14, v15) >> 16;
  v19 = objc_msgSend_version(self, v17, v18);
  objc_msgSend_appendFormat_(v3, v20, @"  version 0x%zx (major=%zu, minor=%zu)\n", v13, v16, v19);
  v23 = objc_msgSend_assetURL(self, v21, v22);
  objc_msgSend_appendFormat_(v3, v24, @"  assetURL %@\n", v23);

  v27 = objc_msgSend_assetType(self, v25, v26);
  v29 = ANSTAssetTypeToNSString(v27, v28);
  objc_msgSend_appendFormat_(v3, v30, @"  assetType %@\n", v29);

  v33 = objc_msgSend_e5FunctionName(self, v31, v32);
  objc_msgSend_appendFormat_(v3, v34, @"  e5FunctionName %@\n", v33);

  v37 = objc_msgSend_inputDescriptors(self, v35, v36);
  objc_msgSend_appendFormat_(v3, v38, @"  inputDescriptors %@\n", v37);

  v41 = objc_msgSend_outputDescriptors(self, v39, v40);
  objc_msgSend_appendFormat_(v3, v42, @"  outputDescriptors %@\n", v41);

  v45 = objc_msgSend_copy(v3, v43, v44);

  return v45;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_name(self, v8, v9);
  v13 = objc_msgSend_version(self, v11, v12);
  v16 = objc_msgSend_assetURL(self, v14, v15);
  v19 = objc_msgSend_assetType(self, v17, v18);
  v22 = objc_msgSend_e5FunctionName(self, v20, v21);
  v25 = objc_msgSend_inputDescriptors(self, v23, v24);
  v28 = objc_msgSend_outputDescriptors(self, v26, v27);
  v30 = objc_msgSend_initWithName_version_assetURL_assetType_e5FunctionName_inputDescriptors_outputDescriptors_error_(v7, v29, v10, v13, v16, v19, v22, v25, v28, 0);

  return v30;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v44.receiver = self;
  v44.super_class = ANSTInferenceDescriptor;
  [(ANSTDescriptor *)&v44 encodeWithCoder:coderCopy];
  v5 = MEMORY[0x277CCABB0];
  v8 = objc_msgSend_version(self, v6, v7);
  v10 = objc_msgSend_numberWithUnsignedInteger_(v5, v9, v8);
  v11 = NSStringFromSelector(sel_version);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v10, v11);

  v15 = objc_msgSend_assetURL(self, v13, v14);
  v16 = NSStringFromSelector(sel_assetURL);
  objc_msgSend_encodeObject_forKey_(coderCopy, v17, v15, v16);

  v18 = MEMORY[0x277CCABB0];
  v21 = objc_msgSend_assetType(self, v19, v20);
  v23 = objc_msgSend_numberWithInteger_(v18, v22, v21);
  v24 = NSStringFromSelector(sel_assetType);
  objc_msgSend_encodeObject_forKey_(coderCopy, v25, v23, v24);

  v28 = objc_msgSend_inputDescriptors(self, v26, v27);
  v29 = NSStringFromSelector(sel_inputDescriptors);
  objc_msgSend_encodeObject_forKey_(coderCopy, v30, v28, v29);

  v33 = objc_msgSend_outputDescriptors(self, v31, v32);
  v34 = NSStringFromSelector(sel_outputDescriptors);
  objc_msgSend_encodeObject_forKey_(coderCopy, v35, v33, v34);

  v38 = objc_msgSend_e5FunctionName(self, v36, v37);

  if (v38)
  {
    v41 = objc_msgSend_e5FunctionName(self, v39, v40);
    v42 = NSStringFromSelector(sel_e5FunctionName);
    objc_msgSend_encodeObject_forKey_(coderCopy, v43, v41, v42);
  }
}

- (ANSTInferenceDescriptor)initWithCoder:(id)coder
{
  v105[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v90.receiver = self;
  v90.super_class = ANSTInferenceDescriptor;
  v5 = [(ANSTDescriptor *)&v90 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_version);
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v6, v7);

  if (!v9)
  {
    v39 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA050];
    v104[0] = *MEMORY[0x277CCA068];
    v104[1] = @"ANSTDescriptorName";
    v105[0] = @"Inference descriptor version was not encoded.";
    v22 = objc_msgSend_name(v5, v10, v11);
    v105[1] = v22;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v41, v105, v104, 2);
    v37 = LABEL_10:;
    v44 = objc_msgSend_errorWithDomain_code_userInfo_(v39, v43, v40, 4865, v37);
    objc_msgSend_failWithError_(coderCopy, v45, v44);
LABEL_22:

    v66 = 0;
    goto LABEL_23;
  }

  v5->_version = objc_msgSend_unsignedIntegerValue(v9, v10, v11);
  v12 = objc_opt_class();
  v13 = NSStringFromSelector(sel_assetURL);
  v15 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v14, v12, v13);
  assetURL = v5->_assetURL;
  v5->_assetURL = v15;

  if (!v5->_assetURL)
  {
    v39 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA050];
    v102[0] = *MEMORY[0x277CCA068];
    v102[1] = @"ANSTDescriptorName";
    v103[0] = @"Inference descriptor asset URL was not encoded.";
    v22 = objc_msgSend_name(v5, v17, v18);
    v103[1] = v22;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, v103, v102, 2);
    goto LABEL_10;
  }

  v19 = objc_opt_class();
  v20 = NSStringFromSelector(sel_assetType);
  v22 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v21, v19, v20);

  if (!v22)
  {
    v35 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA050];
    v67 = *MEMORY[0x277CCA068];
    v101[0] = @"Inference descriptor asset type was not encoded.";
    v100[0] = v67;
    v100[1] = @"ANSTDescriptorName";
    v37 = objc_msgSend_name(v5, v23, v24);
    v101[1] = v37;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v68, v101, v100, 2);
    goto LABEL_17;
  }

  v5->_assetType = objc_msgSend_integerValue(v22, v23, v24);
  v25 = objc_opt_class();
  v26 = NSStringFromSelector(sel_e5FunctionName);
  v28 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v27, v25, v26);
  e5FunctionName = v5->_e5FunctionName;
  v5->_e5FunctionName = v28;

  if (!v5->_e5FunctionName)
  {
    v30 = NSStringFromSelector(sel_e5FunctionName);
    v32 = objc_msgSend_containsValueForKey_(coderCopy, v31, v30);

    if (v32)
    {
      v35 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CCA050];
      v98[0] = *MEMORY[0x277CCA068];
      v98[1] = @"ANSTDescriptorName";
      v99[0] = @"Inference descriptor E5 function name was not properly encoded.";
      v37 = objc_msgSend_name(v5, v33, v34);
      v99[1] = v37;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v38, v99, v98, 2);
      v44 = LABEL_17:;
      v70 = objc_msgSend_errorWithDomain_code_userInfo_(v35, v69, v36, 4865, v44);
      objc_msgSend_failWithError_(coderCopy, v71, v70);
LABEL_21:

      goto LABEL_22;
    }
  }

  v46 = MEMORY[0x277CBEB98];
  v97[0] = objc_opt_class();
  v97[1] = objc_opt_class();
  v48 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v47, v97, 2);
  v37 = objc_msgSend_setWithArray_(v46, v49, v48);

  v50 = NSStringFromSelector(sel_inputDescriptors);
  v52 = objc_msgSend_decodeArrayOfObjectsOfClasses_forKey_(coderCopy, v51, v37, v50);
  inputDescriptors = v5->_inputDescriptors;
  v5->_inputDescriptors = v52;

  if (!v5->_inputDescriptors)
  {
    v72 = MEMORY[0x277CCA9B8];
    v73 = *MEMORY[0x277CCA050];
    v95[0] = *MEMORY[0x277CCA068];
    v95[1] = @"ANSTDescriptorName";
    v96[0] = @"Inference descriptor input descriptors were not encoded.";
    v44 = objc_msgSend_name(v5, v54, v55);
    v96[1] = v44;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v74, v96, v95, 2);
    v70 = LABEL_20:;
    v77 = objc_msgSend_errorWithDomain_code_userInfo_(v72, v76, v73, 4865, v70);
    objc_msgSend_failWithError_(coderCopy, v78, v77);

    goto LABEL_21;
  }

  v56 = NSStringFromSelector(sel_outputDescriptors);
  v58 = objc_msgSend_decodeArrayOfObjectsOfClasses_forKey_(coderCopy, v57, v37, v56);
  outputDescriptors = v5->_outputDescriptors;
  v5->_outputDescriptors = v58;

  if (!v5->_outputDescriptors)
  {
    v72 = MEMORY[0x277CCA9B8];
    v73 = *MEMORY[0x277CCA050];
    v93[0] = *MEMORY[0x277CCA068];
    v93[1] = @"ANSTDescriptorName";
    v94[0] = @"Inference descriptor output descriptors were not encoded.";
    v44 = objc_msgSend_name(v5, v60, v61);
    v94[1] = v44;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v75, v94, v93, 2);
    goto LABEL_20;
  }

  v89 = 0;
  v62 = objc_msgSend__buildCategorizedDescriptorsCacheWithError_(v5, v60, &v89);
  v63 = v89;
  v44 = v63;
  if ((v62 & 1) == 0)
  {
    v80 = MEMORY[0x277CCA9B8];
    v81 = *MEMORY[0x277CCA050];
    v82 = *MEMORY[0x277CCA068];
    v92[0] = @"Inference descriptor contains invalid input and/or output descriptors.";
    v91[0] = v82;
    v91[1] = @"ANSTDescriptorName";
    v83 = objc_msgSend_name(v5, v64, v65);
    v91[2] = *MEMORY[0x277CCA7E8];
    v92[1] = v83;
    v92[2] = v44;
    v85 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v84, v92, v91, 3);
    v87 = objc_msgSend_errorWithDomain_code_userInfo_(v80, v86, v81, 4864, v85);
    objc_msgSend_failWithError_(coderCopy, v88, v87);

    goto LABEL_22;
  }

LABEL_15:
  v66 = v5;
LABEL_23:

  return v66;
}

@end
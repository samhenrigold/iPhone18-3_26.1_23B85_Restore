@interface CKXAtomORCSchema
- (CKXAtomORCSchema)initWithBinding:(id)binding formatVersion:(unsigned __int8)version;
@end

@implementation CKXAtomORCSchema

- (CKXAtomORCSchema)initWithBinding:(id)binding formatVersion:(unsigned __int8)version
{
  versionCopy = version;
  bindingCopy = binding;
  v38.receiver = self;
  v38.super_class = CKXAtomORCSchema;
  v14 = [(CKXAtomORCSchema *)&v38 init];
  if (v14)
  {
    if (versionCopy < 2)
    {
      implementation = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9, v10, v11, v12, v13);
      v29 = CKDSStringForBackingStoreFormatVersion(versionCopy, v23, v24, v25, v26, v27, v28);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(implementation, v30, a2, v14, @"CKXAtomORCSchema.mm", 471, @"Invalid format version for ORC schema: %@", v29);

LABEL_9:
      goto LABEL_10;
    }

    if (versionCopy == 2)
    {
      v31 = [CKXAtomORCSchemaFormatVersionORC alloc];
      v21 = objc_msgSend_initWithBinding_(v31, v32, bindingCopy, v33, v34, v35, v36);
      goto LABEL_8;
    }

    if (versionCopy == 3)
    {
      v15 = [CKXAtomORCSchemaFormatVersionORCv2 alloc];
      v21 = objc_msgSend_initWithBinding_(v15, v16, bindingCopy, v17, v18, v19, v20);
LABEL_8:
      implementation = v14->_implementation;
      v14->_implementation = v21;
      goto LABEL_9;
    }
  }

LABEL_10:

  return v14;
}

@end
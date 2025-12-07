@interface APContext
- ($F24F406B2B787EFB06265DBA3D28CBD5)maxSize;
- (APContext)initWithCoder:(id)coder;
- (APContext)initWithIdentifier:(id)identifier maxSize:(id)size requestedAdIdentifier:(id)adIdentifier currentContent:(id)content adjacentContent:(id)adjacentContent supplementalContext:(id)context;
- (NSString)fingerprint;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APContext

- ($F24F406B2B787EFB06265DBA3D28CBD5)maxSize
{
  objc_copyStruct(v4, &self->_maxSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (APContext)initWithIdentifier:(id)identifier maxSize:(id)size requestedAdIdentifier:(id)adIdentifier currentContent:(id)content adjacentContent:(id)adjacentContent supplementalContext:(id)context
{
  var1 = size.var1;
  var0 = size.var0;
  identifierCopy = identifier;
  adIdentifierCopy = adIdentifier;
  contentCopy = content;
  adjacentContentCopy = adjacentContent;
  contextCopy = context;
  v28.receiver = self;
  v28.super_class = APContext;
  v20 = [(APContext *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_identifier, identifier);
    v21->_maxSize.width = var0;
    v21->_maxSize.height = var1;
    objc_storeStrong(&v21->_requestedAdIdentifier, adIdentifier);
    objc_storeStrong(&v21->_current, content);
    objc_storeStrong(&v21->_adjacent, adjacentContent);
    v24 = objc_msgSend_copy(contextCopy, v22, v23);
    supplementalContext = v21->_supplementalContext;
    v21->_supplementalContext = v24;
  }

  return v21;
}

- (APContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v44.receiver = self;
  v44.super_class = APContext;
  v5 = [(APContext *)&v44 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"identifier");
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v5->_maxSize.height = objc_msgSend_decodeIntForKey_(coderCopy, v10, @"height");
    v5->_maxSize.width = objc_msgSend_decodeIntForKey_(coderCopy, v11, @"width");
    v12 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v13, v12, @"requestedAdIdentifier");
    requestedAdIdentifier = v5->_requestedAdIdentifier;
    v5->_requestedAdIdentifier = v14;

    v16 = objc_opt_class();
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v17, v16, @"current");
    current = v5->_current;
    v5->_current = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v24 = objc_msgSend_setWithObjects_(v20, v23, v21, v22, 0);
    v26 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v25, v24, @"adjacent");
    adjacent = v5->_adjacent;
    v5->_adjacent = v26;

    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v35 = objc_msgSend_setWithObjects_(v28, v34, v29, v30, v31, v32, v33, 0);
    v37 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v36, v35, @"supplementalContext");
    supplementalContext = v5->_supplementalContext;
    v5->_supplementalContext = v37;

    v39 = objc_opt_class();
    v41 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v40, v39, @"prefetchTimestamp");
    prefetchTimestamp = v5->_prefetchTimestamp;
    v5->_prefetchTimestamp = v41;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_identifier(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"identifier");

  objc_msgSend_maxSize(self, v9, v10);
  objc_msgSend_encodeInt_forKey_(coderCopy, v12, v11, @"width");
  objc_msgSend_maxSize(self, v13, v14);
  objc_msgSend_encodeInt_forKey_(coderCopy, v16, v15, @"height");
  v19 = objc_msgSend_requestedAdIdentifier(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, v19, @"requestedAdIdentifier");

  v23 = objc_msgSend_current(self, v21, v22);
  objc_msgSend_encodeObject_forKey_(coderCopy, v24, v23, @"current");

  v27 = objc_msgSend_adjacent(self, v25, v26);
  objc_msgSend_encodeObject_forKey_(coderCopy, v28, v27, @"adjacent");

  v31 = objc_msgSend_supplementalContext(self, v29, v30);
  objc_msgSend_encodeObject_forKey_(coderCopy, v32, v31, @"supplementalContext");

  v36 = objc_msgSend_prefetchTimestamp(self, v33, v34);
  objc_msgSend_encodeObject_forKey_(coderCopy, v35, v36, @"prefetchTimestamp");
}

- (NSString)fingerprint
{
  v3 = objc_msgSend_identifier(self, a2, v2);
  v6 = objc_msgSend_UUIDString(v3, v4, v5);

  return v6;
}

@end
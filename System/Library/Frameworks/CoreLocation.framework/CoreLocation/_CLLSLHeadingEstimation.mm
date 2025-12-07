@interface _CLLSLHeadingEstimation
- (_CLLSLHeadingEstimation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLLSLHeadingEstimation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLLSLHeadingEstimation;
  [(_CLLSLHeadingEstimation *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_init(v8, v9, v10, v11);
  *(v12 + 8) = self->_status;
  *(v12 + 16) = objc_msgSend_copyWithZone_(self->_headings, v13, zone, v14);
  return v12;
}

- (_CLLSLHeadingEstimation)initWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = _CLLSLHeadingEstimation;
  v6 = [(_CLLSLHeadingEstimation *)&v15 init];
  if (v6)
  {
    v6->_status = objc_msgSend_decodeIntForKey_(coder, v4, @"status", v5);
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v12 = objc_msgSend_setWithObjects_(v7, v10, v8, v11, v9, 0);
    v6->_headings = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v13, v12, @"headings");
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInt_forKey_(coder, a2, self->_status, @"status");
  headings = self->_headings;

  objc_msgSend_encodeObject_forKey_(coder, v5, headings, @"headings");
}

- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent
{
  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v7 = MEMORY[0x1E696AEC0];
  v11 = objc_msgSend_headings(self, v8, v9, v10);
  v14 = objc_msgSend_stringWithFormat_(v7, v12, @"<NSArray: %p> {\n", v13, v11);
  objc_msgSend_appendString_(v6, v15, v14, v16);
  v20 = objc_msgSend_headings(self, v17, v18, v19);
  v24 = objc_msgSend_count(v20, v21, v22, v23);
  if (v24)
  {
    v28 = v24;
    v29 = 0;
    do
    {
      v30 = MEMORY[0x1E696AEC0];
      v31 = objc_msgSend_headings(self, v25, v26, v27);
      v34 = objc_msgSend_objectAtIndex_(v31, v32, v29, v33);
      v37 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v35, @"%@\t\t", v36, indent);
      v40 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v38, @"%@\t\t", v39, endIndent);
      v42 = objc_msgSend_descriptionWithMemberIndent_endIndent_(v34, v41, v37, v40);
      v45 = objc_msgSend_stringWithFormat_(v30, v43, @"%@%@%@", v44, indent, @"\t", v42);
      objc_msgSend_appendString_(v6, v46, v45, v47);
      ++v29;
      if (--v28)
      {
        objc_msgSend_appendString_(v6, v48, @",\n", v49);
      }

      else
      {
        objc_msgSend_appendString_(v6, v48, @"\n", v49);
      }
    }

    while (v28);
  }

  v50 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v25, @"%@}", v27, indent);
  objc_msgSend_appendString_(v6, v51, v50, v52);
  v53 = MEMORY[0x1E696AEC0];
  v57 = objc_msgSend_status(self, v54, v55, v56);
  return objc_msgSend_stringWithFormat_(v53, v58, @"<_CLLSLHeadingEstimation: %p> {\n%@.status = %d,\n%@.headings = %@\n%@}", v59, self, indent, v57, indent, v6, endIndent);
}

@end
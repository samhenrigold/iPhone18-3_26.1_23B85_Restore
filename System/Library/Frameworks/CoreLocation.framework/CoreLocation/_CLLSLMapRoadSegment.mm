@interface _CLLSLMapRoadSegment
- (_CLLSLMapRoadSegment)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLLSLMapRoadSegment

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLLSLMapRoadSegment;
  [(_CLLSLMapRoadSegment *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_init(v8, v9, v10, v11);
  v12[1] = self->_roadID;
  v12[2] = objc_msgSend_copyWithZone_(self->_polylines, v13, zone, v14);
  return v12;
}

- (_CLLSLMapRoadSegment)initWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = _CLLSLMapRoadSegment;
  v6 = [(_CLLSLMapRoadSegment *)&v15 init];
  if (v6)
  {
    v6->_roadID = objc_msgSend_decodeInt64ForKey_(coder, v4, @"roadID", v5);
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v12 = objc_msgSend_setWithObjects_(v7, v10, v8, v11, v9, 0);
    v6->_polylines = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v13, v12, @"polylines");
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInt64_forKey_(coder, a2, self->_roadID, @"roadID");
  polylines = self->_polylines;

  objc_msgSend_encodeObject_forKey_(coder, v5, polylines, @"polylines");
}

- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent
{
  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v7 = MEMORY[0x1E696AEC0];
  v11 = objc_msgSend_polylines(self, v8, v9, v10);
  v14 = objc_msgSend_stringWithFormat_(v7, v12, @"<NSArray: %p> {\n", v13, v11);
  objc_msgSend_appendString_(v6, v15, v14, v16);
  v20 = objc_msgSend_polylines(self, v17, v18, v19);
  v24 = objc_msgSend_count(v20, v21, v22, v23);
  if (v24)
  {
    v28 = v24;
    v29 = 0;
    do
    {
      v30 = MEMORY[0x1E696AEC0];
      v31 = objc_msgSend_polylines(self, v25, v26, v27);
      v34 = objc_msgSend_objectAtIndex_(v31, v32, v29, v33);
      v37 = objc_msgSend_stringWithFormat_(v30, v35, @"%@%@%@", v36, indent, @"\t", v34);
      objc_msgSend_appendString_(v6, v38, v37, v39);
      ++v29;
      if (--v28)
      {
        objc_msgSend_appendString_(v6, v40, @",\n", v41);
      }

      else
      {
        objc_msgSend_appendString_(v6, v40, @"\n", v41);
      }
    }

    while (v28);
  }

  v42 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v25, @"%@}", v27, indent);
  objc_msgSend_appendString_(v6, v43, v42, v44);
  v45 = MEMORY[0x1E696AEC0];
  v49 = objc_msgSend_roadID(self, v46, v47, v48);
  return objc_msgSend_stringWithFormat_(v45, v50, @"<_CLLSLMapRoadSegment: %p> {\n%@.roadID = %llu,\n%@.polylines = %@\n%@}", v51, self, indent, v49, indent, v6, endIndent);
}

@end
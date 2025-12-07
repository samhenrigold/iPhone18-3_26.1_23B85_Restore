@interface _CLLSLHeadingSupplInfo
- (_CLLSLHeadingSupplInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent;
- (void)dealloc;
@end

@implementation _CLLSLHeadingSupplInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLLSLHeadingSupplInfo;
  [(_CLLSLHeadingSupplInfo *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_init(v8, v9, v10, v11);
  v12[1] = objc_msgSend_copyWithZone_(self->_roadSegment, v13, zone, v14);
  return v12;
}

- (_CLLSLHeadingSupplInfo)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = _CLLSLHeadingSupplInfo;
  v4 = [(_CLLSLHeadingSupplInfo *)&v8 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_roadSegment = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"roadSegment");
  }

  return v4;
}

- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent
{
  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_msgSend_roadSegment(self, a2, indent, endIndent);
  v11 = objc_msgSend_stringByAppendingString_(indent, v9, @"\t", v10);
  v14 = objc_msgSend_stringByAppendingString_(endIndent, v12, @"\t", v13);
  v16 = objc_msgSend_descriptionWithMemberIndent_endIndent_(v8, v15, v11, v14);
  return objc_msgSend_stringWithFormat_(v7, v17, @"<_CLLSLHeadingSupplInfo: %p> {\n%@.roadSegment = %@\n%@}", v18, self, indent, v16, endIndent);
}

@end
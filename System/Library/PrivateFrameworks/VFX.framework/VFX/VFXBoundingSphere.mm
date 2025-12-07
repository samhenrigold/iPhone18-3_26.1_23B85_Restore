@interface VFXBoundingSphere
- (id)centerValue;
- (void)setCenterValue:(id)value;
@end

@implementation VFXBoundingSphere

- (id)centerValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_center(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_center(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_center(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (void)setCenterValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v21 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(value, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v20 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);

  objc_msgSend_setCenter_(self, v18, v19, COERCE_DOUBLE(__PAIR64__(v20, v21)));
}

@end
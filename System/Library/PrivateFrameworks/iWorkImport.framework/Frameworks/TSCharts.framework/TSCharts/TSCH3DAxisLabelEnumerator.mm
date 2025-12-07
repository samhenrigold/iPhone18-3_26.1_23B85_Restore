@interface TSCH3DAxisLabelEnumerator
+ (id)enumeratorWithAxis:(id)axis kind:(id)kind;
- (TSCH3DAxisLabelEnumerator)initWithAxis:(id)axis kind:(id)kind;
- (id)string;
- (id)stringForLabelResources:(id)resources;
- (void)update;
@end

@implementation TSCH3DAxisLabelEnumerator

+ (id)enumeratorWithAxis:(id)axis kind:(id)kind
{
  axisCopy = axis;
  kindCopy = kind;
  v8 = [self alloc];
  v13 = objc_msgSend_initWithAxis_kind_(v8, v9, v10, v11, v12, axisCopy, kindCopy);

  return v13;
}

- (TSCH3DAxisLabelEnumerator)initWithAxis:(id)axis kind:(id)kind
{
  axisCopy = axis;
  kindCopy = kind;
  v12.receiver = self;
  v12.super_class = TSCH3DAxisLabelEnumerator;
  v9 = [(TSCH3DAxisLabelEnumerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_axis, axis);
    objc_storeStrong(&v10->_kind, kind);
  }

  return v10;
}

- (void)update
{
  kind = self->_kind;
  axis = self->_axis;
  v8 = objc_msgSend_index(self, v2, v3, v4, a2);
  objc_msgSend_unitSpaceValueForAxis_index_(kind, v9, v10, v11, v12, axis, v8);

  objc_msgSend_setValue_(self, v13, v14, v15, v16);
}

- (id)string
{
  kind = self->_kind;
  axis = self->_axis;
  v7 = objc_msgSend_index(self, v2, v3, v4, a2);
  v12 = objc_msgSend_labelForAxis_index_(kind, v8, v9, v10, v11, axis, v7);
  if (objc_msgSend_length(v12, v13, v14, v15, v16))
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)stringForLabelResources:(id)resources
{
  resourcesCopy = resources;
  v33[0] = objc_msgSend_index(self, v5, v6, v7);
  v33[1] = 0;
  if (!objc_msgSend_hasResourceAtIndex_(resourcesCopy, v8, v9, v10, v11, v33) || (objc_opt_class(), objc_msgSend_resourceAtIndex_(resourcesCopy, v16, v17, v18, v19, v33), v20 = objc_claimAutoreleasedReturnValue(), TSUDynamicCast(), v21 = objc_claimAutoreleasedReturnValue(), v20, objc_msgSend_attributes(v21, v22, v23, v24, v25), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend_string(v26, v27, v28, v29, v30), v31 = objc_claimAutoreleasedReturnValue(), v26, v21, !v31))
  {
    v31 = objc_msgSend_string(self, v12, v13, v14, v15);
  }

  return v31;
}

@end
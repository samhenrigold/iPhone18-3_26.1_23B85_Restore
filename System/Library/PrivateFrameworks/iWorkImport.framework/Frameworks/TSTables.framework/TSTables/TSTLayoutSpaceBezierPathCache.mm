@interface TSTLayoutSpaceBezierPathCache
- (id)bezierPathForGridRange:(id)range transform:(CGAffineTransform *)transform inset:(double)inset reoriginToZero:(BOOL)zero;
- (void)insertBezierPath:(id)path gridRange:(id)range transform:(CGAffineTransform *)transform inset:(double)inset reoriginToZero:(BOOL)zero;
@end

@implementation TSTLayoutSpaceBezierPathCache

- (id)bezierPathForGridRange:(id)range transform:(CGAffineTransform *)transform inset:(double)inset reoriginToZero:(BOOL)zero
{
  zeroCopy = zero;
  var1 = range.var1;
  var0 = range.var0;
  if (transform)
  {
    v11 = *&transform->c;
    v32 = *&transform->a;
    v33 = v11;
    v12 = *&transform->tx;
  }

  else
  {
    v13 = *(MEMORY[0x277CBF2C0] + 16);
    v32 = *MEMORY[0x277CBF2C0];
    v33 = v13;
    v12 = *(MEMORY[0x277CBF2C0] + 32);
  }

  v34 = v12;
  v14 = objc_alloc_init(TSTLayoutSpaceBezierPathCacheKey);
  objc_msgSend_setGridRange_(v14, v15, var0, var1);
  v31[0] = v32;
  v31[1] = v33;
  v31[2] = v34;
  objc_msgSend_setTransform_(v14, v16, v31, v17);
  objc_msgSend_setInset_(v14, v18, v19, v20, inset);
  objc_msgSend_setReoriginToZero_(v14, v21, zeroCopy, v22);
  v25 = objc_msgSend_objectForKey_(self, v23, v14, v24);
  v29 = objc_msgSend_copy(v25, v26, v27, v28);

  return v29;
}

- (void)insertBezierPath:(id)path gridRange:(id)range transform:(CGAffineTransform *)transform inset:(double)inset reoriginToZero:(BOOL)zero
{
  if (path)
  {
    zeroCopy = zero;
    var1 = range.var1;
    var0 = range.var0;
    if (transform)
    {
      v12 = *&transform->c;
      v31 = *&transform->a;
      v32 = v12;
      v13 = *&transform->tx;
    }

    else
    {
      v14 = *(MEMORY[0x277CBF2C0] + 16);
      v31 = *MEMORY[0x277CBF2C0];
      v32 = v14;
      v13 = *(MEMORY[0x277CBF2C0] + 32);
    }

    v33 = v13;
    pathCopy = path;
    v16 = objc_alloc_init(TSTLayoutSpaceBezierPathCacheKey);
    objc_msgSend_setGridRange_(v16, v17, var0, var1);
    v30[0] = v31;
    v30[1] = v32;
    v30[2] = v33;
    objc_msgSend_setTransform_(v16, v18, v30, v19);
    objc_msgSend_setInset_(v16, v20, v21, v22, inset);
    objc_msgSend_setReoriginToZero_(v16, v23, zeroCopy, v24);
    v28 = objc_msgSend_copy(pathCopy, v25, v26, v27);

    objc_msgSend_setObject_forKey_(self, v29, v28, v16);
  }
}

@end
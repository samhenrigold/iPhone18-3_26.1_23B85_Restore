@interface TSTLayoutSpaceBezierPathCacheKey
- ($D854FC4CDD8DDEA9B2859E823A7C8A75)gridRange;
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)transform;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation TSTLayoutSpaceBezierPathCacheKey

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUCheckedDynamicCast();

  v37 = 0;
  if (v5)
  {
    objc_msgSend_inset(self, v6, v7, v8);
    v10 = v9;
    objc_msgSend_inset(v5, v11, v12, v13);
    if (v10 == v17)
    {
      v18 = objc_msgSend_reoriginToZero(self, v14, v15, v16);
      if (v18 == objc_msgSend_reoriginToZero(v5, v19, v20, v21))
      {
        if (((v25 = objc_msgSend_gridRange(self, v22, v23, v24), v27 = v26, v30 = objc_msgSend_gridRange(v5, v26, v28, v29), v25 == -1) || v27 == -1 || v25 > v27 || HIDWORD(v25) == 0xFFFFFFFF || v27 >> 32 == 0xFFFFFFFF || HIDWORD(v25) > v27 >> 32) && (v30 == -1 || v31 == -1 || v30 > v31 || HIDWORD(v30) == 0xFFFFFFFF || v31 >> 32 == 0xFFFFFFFF || HIDWORD(v30) > v31 >> 32) || v25 == v30 && !((v30 ^ v25) >> 32) && v27 == v31 && !((v31 ^ v27) >> 32))
        {
          objc_msgSend_transform(self, v31, v32, v33);
          objc_msgSend_transform(v5, v34, v35, v36);
          if (CGAffineTransformEqualToTransform(&t1, &v39))
          {
            v37 = 1;
          }
        }
      }
    }
  }

  return v37;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TSTLayoutSpaceBezierPathCacheKey);
  v8 = objc_msgSend_gridRange(self, v5, v6, v7);
  objc_msgSend_setGridRange_(v4, v9, v8, v9);
  objc_msgSend_transform(self, v10, v11, v12);
  v28[0] = v28[3];
  v28[1] = v28[4];
  v28[2] = v28[5];
  objc_msgSend_setTransform_(v4, v13, v28, v14);
  objc_msgSend_inset(self, v15, v16, v17);
  objc_msgSend_setInset_(v4, v18, v19, v20);
  v24 = objc_msgSend_reoriginToZero(self, v21, v22, v23);
  objc_msgSend_setReoriginToZero_(v4, v25, v24, v26);
  return v4;
}

- ($D854FC4CDD8DDEA9B2859E823A7C8A75)gridRange
{
  bottomRight = self->_gridRange.bottomRight;
  topLeft = self->_gridRange.topLeft;
  result.var1 = bottomRight;
  result.var0 = topLeft;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = *&self[1].b;
  *&retstr->a = *&self->ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].d;
  return self;
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->c;
  *&self->_transform.tx = *&transform->tx;
  *&self->_transform.c = v4;
  *&self->_transform.a = v3;
}

@end
@interface TSTLayoutContentCachedKey
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLayoutContentCachedKey:(id)key;
- (TSTLayoutContentCachedKey)initWithString:(id)string width:(double)width height:(double)height paragraphStyle:(id)style cellWraps:(BOOL)wraps valueType:(unsigned __int8)type paddingInsets:(UIEdgeInsets)insets verticalAlignment:(int)self0 writingDirection:(int)self1 naturalAlignment:(int)self2 styleProvidingSource:(id)self3;
- (TSWPStyleProviding)styleProvidingSource;
- (UIEdgeInsets)paddingInsets;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TSTLayoutContentCachedKey

- (TSTLayoutContentCachedKey)initWithString:(id)string width:(double)width height:(double)height paragraphStyle:(id)style cellWraps:(BOOL)wraps valueType:(unsigned __int8)type paddingInsets:(UIEdgeInsets)insets verticalAlignment:(int)self0 writingDirection:(int)self1 naturalAlignment:(int)self2 styleProvidingSource:(id)self3
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  stringCopy = string;
  styleCopy = style;
  sourceCopy = source;
  v35.receiver = self;
  v35.super_class = TSTLayoutContentCachedKey;
  v31 = [(TSTLayoutContentCachedKey *)&v35 init];
  if (v31)
  {
    v32 = objc_msgSend_copy(stringCopy, v28, v29, v30);
    string = v31->_string;
    v31->_string = v32;

    v31->_width = width;
    v31->_height = height;
    objc_storeStrong(&v31->_paragraphStyle, style);
    v31->_cellWraps = wraps;
    v31->_valueType = type;
    v31->_paddingInsets.top = top;
    v31->_paddingInsets.left = left;
    v31->_paddingInsets.bottom = bottom;
    v31->_paddingInsets.right = right;
    v31->_verticalAlignment = alignment;
    v31->_writingDirection = direction;
    v31->_naturalAlignment = naturalAlignment;
    objc_storeWeak(&v31->_styleProvidingSource, sourceCopy);
  }

  return v31;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_msgSend_allocWithZone_(TSTLayoutContentCachedKey, a2, zone, v3);
  v9 = objc_msgSend_string(self, v6, v7, v8);
  objc_msgSend_width(self, v10, v11, v12);
  v14 = v13;
  objc_msgSend_height(self, v15, v16, v17);
  v19 = v18;
  v23 = objc_msgSend_paragraphStyle(self, v20, v21, v22);
  v27 = objc_msgSend_cellWraps(self, v24, v25, v26);
  v31 = objc_msgSend_valueType(self, v28, v29, v30);
  objc_msgSend_paddingInsets(self, v32, v33, v34);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v46 = objc_msgSend_verticalAlignment(self, v43, v44, v45);
  v50 = objc_msgSend_writingDirection(self, v47, v48, v49);
  v54 = objc_msgSend_naturalAlignment(self, v51, v52, v53);
  v58 = objc_msgSend_styleProvidingSource(self, v55, v56, v57);
  v62 = v54;
  v60 = objc_msgSend_initWithString_width_height_paragraphStyle_cellWraps_valueType_paddingInsets_verticalAlignment_writingDirection_naturalAlignment_styleProvidingSource_(v5, v59, v9, v23, v27, v31, v46, v50, v14, v19, v36, v38, v40, v42, v62, v58);

  return v60;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    isEqualToLayoutContentCachedKey = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isEqualToLayoutContentCachedKey = objc_msgSend_isEqualToLayoutContentCachedKey_(self, v6, v5, v7);
  }

  else
  {
    isEqualToLayoutContentCachedKey = 0;
  }

  return isEqualToLayoutContentCachedKey;
}

- (BOOL)isEqualToLayoutContentCachedKey:(id)key
{
  keyCopy = key;
  v8 = keyCopy;
  if (self == keyCopy)
  {
    isEqualToString = 1;
  }

  else
  {
    width = self->_width;
    objc_msgSend_width(keyCopy, v5, v6, v7);
    if (width == v13 || vabdd_f64(width, v13) < 0.00999999978) && ((height = self->_height, objc_msgSend_height(v8, v10, v11, v12), height == v18) || vabdd_f64(height, v18) < 0.00999999978) && (cellWraps = self->_cellWraps, cellWraps == objc_msgSend_cellWraps(v8, v15, v16, v17)) && (verticalAlignment = self->_verticalAlignment, verticalAlignment == objc_msgSend_verticalAlignment(v8, v20, v21, v22)) && (writingDirection = self->_writingDirection, writingDirection == objc_msgSend_writingDirection(v8, v24, v25, v26)) && (naturalAlignment = self->_naturalAlignment, naturalAlignment == objc_msgSend_naturalAlignment(v8, v28, v29, v30)) && (valueType = self->_valueType, valueType == objc_msgSend_valueType(v8, v32, v33, v34)) && (objc_msgSend_paddingInsets(v8, v36, v37, v38), v40.f64[1] = v39, v42.f64[1] = v41, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_paddingInsets.top, v40), vceqq_f64(*&self->_paddingInsets.bottom, v42))))))
    {
      WeakRetained = objc_loadWeakRetained(&self->_styleProvidingSource);
      v52 = objc_msgSend_styleProvidingSource(v8, v46, v47, v48);
      if (WeakRetained == v52)
      {
        paragraphStyle = self->_paragraphStyle;
        v54 = objc_msgSend_paragraphStyle(v8, v49, v50, v51);
        if (objc_msgSend_isEqual_(paragraphStyle, v55, v54, v56))
        {
          string = self->_string;
          v61 = objc_msgSend_string(v8, v57, v58, v59);
          isEqualToString = objc_msgSend_isEqualToString_(string, v62, v61, v63);
        }

        else
        {
          isEqualToString = 0;
        }
      }

      else
      {
        isEqualToString = 0;
      }
    }

    else
    {
      isEqualToString = 0;
    }
  }

  return isEqualToString;
}

- (UIEdgeInsets)paddingInsets
{
  top = self->_paddingInsets.top;
  left = self->_paddingInsets.left;
  bottom = self->_paddingInsets.bottom;
  right = self->_paddingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (TSWPStyleProviding)styleProvidingSource
{
  WeakRetained = objc_loadWeakRetained(&self->_styleProvidingSource);

  return WeakRetained;
}

@end
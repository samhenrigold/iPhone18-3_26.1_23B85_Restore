@interface _UIImageContentRenditionCacheKey
+ (_UIImageContentRenditionCacheKey)keyWithSize:(void *)size unresolvedTintColor:(char)color traitCollection:(unsigned int)collection bold:(CGFloat)bold drawMode:(CGFloat)mode;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation _UIImageContentRenditionCacheKey

+ (_UIImageContentRenditionCacheKey)keyWithSize:(void *)size unresolvedTintColor:(char)color traitCollection:(unsigned int)collection bold:(CGFloat)bold drawMode:(CGFloat)mode
{
  sizeCopy = size;
  v13 = a2;
  objc_opt_self();
  v14 = objc_alloc_init(_UIImageContentRenditionCacheKey);
  v15 = [v13 resolvedColorWithTraitCollection:sizeCopy];

  resolvedTintColor = v14->resolvedTintColor;
  v14->resolvedTintColor = v15;

  _styleEffectAppearanceName = [(UITraitCollection *)sizeCopy _styleEffectAppearanceName];

  appearanceName = v14->appearanceName;
  v14->appearanceName = _styleEffectAppearanceName;

  v14->_size.width = bold;
  v14->_size.height = mode;
  v14->_drawMode = collection;
  *&v14->_flags = *&v14->_flags & 0xFE | color;

  return v14;
}

- (unint64_t)hash
{
  v3 = self->_size.height ^ self->_size.width;
  v4 = [(NSString *)self->appearanceName hash];
  return v3 ^ v4 ^ [(UIColor *)self->resolvedTintColor hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  resolvedTintColor = self->resolvedTintColor;
  v6 = equalCopy[1];
  v7 = resolvedTintColor;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_15;
    }

    isEqual = objc_msgSend_isEqual_(v6);

    if (!isEqual)
    {
      goto LABEL_16;
    }
  }

  appearanceName = self->appearanceName;
  v6 = equalCopy[2];
  v12 = appearanceName;
  v8 = v12;
  if (v6 != v12)
  {
    if (v6 && v12)
    {
      v13 = objc_msgSend_isEqual_(v6);

      if (v13)
      {
        goto LABEL_19;
      }

LABEL_16:
      v14 = 0;
      goto LABEL_17;
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_19:
  v14 = 0;
  if (*(equalCopy + 3) == self->_size.width && *(equalCopy + 4) == self->_size.height)
  {
    if (*(equalCopy + 10) == self->_drawMode)
    {
      v14 = ((*&self->_flags ^ *(equalCopy + 44)) & 1) == 0;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_17:

  return v14;
}

@end
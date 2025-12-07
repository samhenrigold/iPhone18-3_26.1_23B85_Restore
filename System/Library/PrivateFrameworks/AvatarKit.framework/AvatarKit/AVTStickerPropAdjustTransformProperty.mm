@interface AVTStickerPropAdjustTransformProperty
- (AVTStickerPropAdjustTransformProperty)initWithPresetCategory:(int64_t)category presetValue:(id)value position:rotation:scale:;
- (void)applyAdjustmentIfNeededToNode:(id)node forMemoji:(id)memoji ignoreScaleZ:(BOOL)z;
@end

@implementation AVTStickerPropAdjustTransformProperty

- (AVTStickerPropAdjustTransformProperty)initWithPresetCategory:(int64_t)category presetValue:(id)value position:rotation:scale:
{
  v14 = v6;
  v15 = v5;
  v16 = v4;
  valueCopy = value;
  v17.receiver = self;
  v17.super_class = AVTStickerPropAdjustTransformProperty;
  v11 = [(AVTStickerPropAdjustTransformProperty *)&v17 init];
  v12 = v11;
  if (v11)
  {
    *v11->_rotation = v15;
    *v11->_scale = v14;
    *v11->_position = v16;
    v11->_presetCategory = category;
    objc_storeStrong(&v11->_presetValue, value);
  }

  return v12;
}

- (void)applyAdjustmentIfNeededToNode:(id)node forMemoji:(id)memoji ignoreScaleZ:(BOOL)z
{
  zCopy = z;
  nodeCopy = node;
  memojiCopy = memoji;
  [(AVTStickerPropAdjustTransformProperty *)self presetCategory];
  v9 = [memojiCopy presetForCategory:?];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  presetValue = self->_presetValue;
  if (isKindOfClass)
  {
    identifier = [v9 identifier];
    v13 = [presetValue isEqualToString:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_6:
    [(AVTStickerPropAdjustTransformProperty *)self position];
    [nodeCopy position];
    [nodeCopy setPosition:?];
    [(AVTStickerPropAdjustTransformProperty *)self rotation];
    [nodeCopy eulerAngles];
    [nodeCopy setEulerAngles:?];
    if (zCopy)
    {
      [nodeCopy scale];
      [(AVTStickerPropAdjustTransformProperty *)self scale];
    }

    else
    {
      [(AVTStickerPropAdjustTransformProperty *)self scale];
      [nodeCopy scale];
    }

    [nodeCopy setScale:?];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = self->_presetValue;
    identifier2 = [v9 identifier];
    LODWORD(v14) = [v14 containsObject:?];

    if (v14)
    {
      goto LABEL_6;
    }
  }

LABEL_10:
}

@end
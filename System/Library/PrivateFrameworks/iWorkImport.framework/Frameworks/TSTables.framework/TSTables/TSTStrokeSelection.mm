@interface TSTStrokeSelection
+ (id)strokeSelectionWithMask:(unsigned int)mask;
- (TSTStrokeSelection)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSTStrokeSelection)initWithStrokeVisibilityMask:(unsigned int)mask;
- (id)copyWithZone:(_NSZone *)zone;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSTStrokeSelection

+ (id)strokeSelectionWithMask:(unsigned int)mask
{
  v3 = *&mask;
  v4 = [self alloc];
  v7 = objc_msgSend_initWithStrokeVisibilityMask_(v4, v5, v3, v6);

  return v7;
}

- (TSTStrokeSelection)initWithStrokeVisibilityMask:(unsigned int)mask
{
  v5.receiver = self;
  v5.super_class = TSTStrokeSelection;
  result = [(TSTStrokeSelection *)&v5 init];
  if (result)
  {
    result->_mask = mask;
  }

  return result;
}

- (TSTStrokeSelection)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  v7.receiver = self;
  v7.super_class = TSTStrokeSelection;
  result = [(TSTStrokeSelection *)&v7 init:archive];
  if (result)
  {
    if (*(archive + 4))
    {
      v6 = (archive + 24);
    }

    else
    {
      v6 = &unk_2217E0D9C;
    }

    result->_mask = *v6;
  }

  return result;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v5 = objc_msgSend_mask(self, a2, archive, archiver);
  *(archive + 4) |= 1u;
  *(archive + 6) = v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_msgSend_allocWithZone_(TSTStrokeSelection, a2, zone, v3);
  v10 = objc_msgSend_mask(self, v6, v7, v8);

  return objc_msgSend_initWithStrokeVisibilityMask_(v5, v9, v10, v11);
}

@end
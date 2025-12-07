@interface TSTTableStrokePresetData
- (BOOL)isEqual:(id)equal;
- (TSTTableStrokePresetData)init;
- (TSTTableStrokePresetData)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSTTableStrokePresetData)initWithDeprecatedArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSTTableStrokePresetData)initWithMask:(unsigned int)mask horizontalStroke:(id)stroke verticalStroke:(id)verticalStroke exteriorStroke:(id)exteriorStroke;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSTTableStrokePresetData

- (TSTTableStrokePresetData)init
{
  v3.receiver = self;
  v3.super_class = TSTTableStrokePresetData;
  return [(TSTTableStrokePresetData *)&v3 init];
}

- (TSTTableStrokePresetData)initWithMask:(unsigned int)mask horizontalStroke:(id)stroke verticalStroke:(id)verticalStroke exteriorStroke:(id)exteriorStroke
{
  strokeCopy = stroke;
  verticalStrokeCopy = verticalStroke;
  exteriorStrokeCopy = exteriorStroke;
  v17.receiver = self;
  v17.super_class = TSTTableStrokePresetData;
  v14 = [(TSTTableStrokePresetData *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->mVerticalStroke, verticalStroke);
    objc_storeStrong(&v15->mHorizontalStroke, stroke);
    objc_storeStrong(&v15->mExteriorStroke, exteriorStroke);
    v15->mVisibleMask = mask;
  }

  return v15;
}

- (TSTTableStrokePresetData)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v20.receiver = self;
  v20.super_class = TSTTableStrokePresetData;
  v7 = [(TSTTableStrokePresetData *)&v20 init];
  v9 = v7;
  if (v7)
  {
    v7->mVisibleMask = *(archive + 12);
    v10 = MEMORY[0x277D804A0];
    if (*(archive + 3))
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v8, *(archive + 3), unarchiverCopy);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v8, MEMORY[0x277D804A0], unarchiverCopy);
    }
    v11 = ;
    mHorizontalStroke = v9->mHorizontalStroke;
    v9->mHorizontalStroke = v11;

    if (*(archive + 4))
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v13, *(archive + 4), unarchiverCopy);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v13, v10, unarchiverCopy);
    }
    v14 = ;
    mVerticalStroke = v9->mVerticalStroke;
    v9->mVerticalStroke = v14;

    if (*(archive + 5))
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v16, *(archive + 5), unarchiverCopy);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v16, v10, unarchiverCopy);
    }
    v17 = ;
    mExteriorStroke = v9->mExteriorStroke;
    v9->mExteriorStroke = v17;
  }

  return v9;
}

- (TSTTableStrokePresetData)initWithDeprecatedArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v26.receiver = self;
  v26.super_class = TSTTableStrokePresetData;
  v7 = [(TSTTableStrokePresetData *)&v26 init];
  v9 = v7;
  if (v7)
  {
    v7->mVisibleMask = *(archive + 12);
    v10 = *(archive + 4);
    if (!v10)
    {
      v10 = &qword_2812E9B08;
    }

    v11 = v10[3];
    v12 = MEMORY[0x277D804A0];
    if (v11)
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v8, v11, unarchiverCopy);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v8, MEMORY[0x277D804A0], unarchiverCopy);
    }
    v13 = ;
    mHorizontalStroke = v9->mHorizontalStroke;
    v9->mHorizontalStroke = v13;

    v16 = *(archive + 3);
    if (!v16)
    {
      v16 = &qword_2812E9B08;
    }

    v17 = v16[3];
    if (v17)
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v15, v17, unarchiverCopy);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v15, v12, unarchiverCopy);
    }
    v18 = ;
    mVerticalStroke = v9->mVerticalStroke;
    v9->mVerticalStroke = v18;

    v21 = *(archive + 5);
    if (!v21)
    {
      v21 = &qword_2812E9B08;
    }

    v22 = v21[3];
    if (v22)
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v20, v22, unarchiverCopy);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v20, v12, unarchiverCopy);
    }
    v23 = ;
    mExteriorStroke = v9->mExteriorStroke;
    v9->mExteriorStroke = v23;
  }

  return v9;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  mVisibleMask = self->mVisibleMask;
  v9 = *(archive + 4);
  *(archive + 4) = v9 | 8;
  *(archive + 12) = mVisibleMask;
  mHorizontalStroke = self->mHorizontalStroke;
  *(archive + 4) = v9 | 9;
  v11 = *(archive + 3);
  v21 = archiverCopy;
  if (!v11)
  {
    v12 = *(archive + 1);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = MEMORY[0x223DA0290](v12);
    *(archive + 3) = v11;
    archiverCopy = v21;
  }

  objc_msgSend_saveToArchive_archiver_(mHorizontalStroke, v6, v11, archiverCopy);
  mVerticalStroke = self->mVerticalStroke;
  *(archive + 4) |= 2u;
  v15 = *(archive + 4);
  if (!v15)
  {
    v16 = *(archive + 1);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = MEMORY[0x223DA0290](v16);
    *(archive + 4) = v15;
  }

  objc_msgSend_saveToArchive_archiver_(mVerticalStroke, v13, v15, v21);
  mExteriorStroke = self->mExteriorStroke;
  *(archive + 4) |= 4u;
  v19 = *(archive + 5);
  if (!v19)
  {
    v20 = *(archive + 1);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = MEMORY[0x223DA0290](v20);
    *(archive + 5) = v19;
  }

  objc_msgSend_saveToArchive_archiver_(mExteriorStroke, v17, v19, v21);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11 = (objc_msgSend_isEqual_(self->mHorizontalStroke, v5, equalCopy[1], v6) & 1) != 0 && objc_msgSend_isEqual_(self->mVerticalStroke, v7, equalCopy[2], v8) && objc_msgSend_isEqual_(self->mExteriorStroke, v9, equalCopy[3], v10) && self->mVisibleMask == *(equalCopy + 8);

  return v11;
}

@end
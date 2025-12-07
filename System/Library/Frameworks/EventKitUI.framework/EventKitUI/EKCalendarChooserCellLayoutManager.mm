@interface EKCalendarChooserCellLayoutManager
+ (id)sharedLayoutManagerForStyle:(int64_t)style;
- (BOOL)rect:(CGRect)rect trailsOtherRect:(CGRect)otherRect byDistance:(double *)distance;
- (CGRect)textRectForCell:(id)cell rowWidth:(double)width forSizing:(BOOL)sizing;
- (CGSize)intrinsicContentSizeForCell:(id)cell rowWidth:(double)width;
- (EKCalendarChooserCellLayoutManager)initWithCellStyle:(int64_t)style;
- (void)getTextLabelRect:(CGRect *)rect detailTextLabelRect:(CGRect *)labelRect forCell:(id)cell rowWidth:(double)width forSizing:(BOOL)sizing;
@end

@implementation EKCalendarChooserCellLayoutManager

+ (id)sharedLayoutManagerForStyle:(int64_t)style
{
  v5 = sharedLayoutManagerForStyle__sLayoutManagers;
  if (!sharedLayoutManagerForStyle__sLayoutManagers)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v7 = sharedLayoutManagerForStyle__sLayoutManagers;
    sharedLayoutManagerForStyle__sLayoutManagers = dictionary;

    v5 = sharedLayoutManagerForStyle__sLayoutManagers;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  v9 = [v5 objectForKey:v8];

  if (!v9)
  {
    v9 = [[self alloc] initWithCellStyle:style];
    v10 = sharedLayoutManagerForStyle__sLayoutManagers;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:style];
    [v10 setObject:v9 forKey:v11];
  }

  return v9;
}

- (EKCalendarChooserCellLayoutManager)initWithCellStyle:(int64_t)style
{
  v8.receiver = self;
  v8.super_class = EKCalendarChooserCellLayoutManager;
  v4 = [(EKCalendarChooserCellLayoutManager *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DD030] layoutManagerForTableViewCellStyle:style];
    realLayoutManager = v4->_realLayoutManager;
    v4->_realLayoutManager = v5;
  }

  return v4;
}

- (CGRect)textRectForCell:(id)cell rowWidth:(double)width forSizing:(BOOL)sizing
{
  sizingCopy = sizing;
  cellCopy = cell;
  [self->_realLayoutManager textRectForCell:cellCopy rowWidth:sizingCopy forSizing:width];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (([cellCopy showCheckmarksOnLeft] & 1) != 0 || objc_msgSend(cellCopy, "showsColorDot")))
  {
    textLeadingIndent = [cellCopy textLeadingIndent];
    v19 = v18;
    if (CalInterfaceIsLeftToRight(textLeadingIndent, v20))
    {
      v14 = v14 - (v19 - v10);
      v10 = v19;
    }

    else
    {
      v21 = objc_msgSend_contentView(cellCopy);
      [v21 bounds];
      MaxX = CGRectGetMaxX(v29);
      v30.origin.x = v10;
      v30.origin.y = v12;
      v30.size.width = v14;
      v30.size.height = v16;
      v23 = MaxX - CGRectGetMaxX(v30);

      v14 = v14 - (v19 - v23);
      v24 = objc_msgSend_contentView(cellCopy);
      [v24 bounds];
      v10 = CGRectGetMaxX(v31) - v14 - v19;
    }
  }

  v25 = v10;
  v26 = v12;
  v27 = v14;
  v28 = v16;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (void)getTextLabelRect:(CGRect *)rect detailTextLabelRect:(CGRect *)labelRect forCell:(id)cell rowWidth:(double)width forSizing:(BOOL)sizing
{
  sizingCopy = sizing;
  cellCopy = cell;
  [self->_realLayoutManager getTextLabelRect:rect detailTextLabelRect:labelRect forCell:cellCopy rowWidth:sizingCopy forSizing:width];
  v13 = [(EKCalendarChooserCellLayoutManager *)self textRectForCell:cellCopy rowWidth:sizingCopy forSizing:width];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  IsLeftToRight = CalInterfaceIsLeftToRight(v13, v22);
  v24 = IsLeftToRight;
  if (rect)
  {
    y = rect->origin.y;
    height = rect->size.height;
    if (IsLeftToRight)
    {
      v38.origin.x = rect->origin.x;
      v38.origin.y = rect->origin.y;
      v38.size.width = v19;
      v38.size.height = rect->size.height;
      v39 = CGRectOffset(v38, v15 - rect->origin.x, 0.0);
      x = v39.origin.x;
      y = v39.origin.y;
      height = v39.size.height;
    }

    else
    {
      [cellCopy textLeadingIndent];
      v29 = v28;
      v30 = objc_msgSend_contentView(cellCopy);
      [v30 bounds];
      x = v31 - v19 - v29;

      v39.size.width = v19;
    }

    rect->origin.x = x;
    rect->origin.y = y;
    rect->size.width = v39.size.width;
    rect->size.height = height;
  }

  if (labelRect)
  {
    v32 = labelRect->origin.x;
    v33 = labelRect->origin.y;
    width = labelRect->size.width;
    v35 = labelRect->size.height;
    v37 = 0.0;
    if ([(EKCalendarChooserCellLayoutManager *)self rect:&v37 trailsOtherRect:v15 byDistance:v17, v19, v21, v32, v33, width, v35])
    {
      v36 = v37;
      if ((v24 & 1) == 0)
      {
        v36 = -v37;
        v37 = -v37;
      }

      v40.origin.x = v32;
      v40.origin.y = v33;
      v40.size.width = width;
      v40.size.height = v35;
      *labelRect = CGRectOffset(v40, v36, 0.0);
    }
  }
}

- (BOOL)rect:(CGRect)rect trailsOtherRect:(CGRect)otherRect byDistance:(double *)distance
{
  height = otherRect.size.height;
  width = otherRect.size.width;
  y = otherRect.origin.y;
  x = otherRect.origin.x;
  v10 = rect.size.height;
  v11 = rect.size.width;
  v12 = rect.origin.y;
  v13 = rect.origin.x;
  if (CalInterfaceIsLeftToRight(self, a2))
  {
    v14 = v13 - x;
  }

  else
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    MaxX = CGRectGetMaxX(v17);
    v18.origin.x = v13;
    v18.origin.y = v12;
    v18.size.width = v11;
    v18.size.height = v10;
    v14 = MaxX - CGRectGetMaxX(v18);
  }

  *distance = v14;
  return v14 > 0.0;
}

- (CGSize)intrinsicContentSizeForCell:(id)cell rowWidth:(double)width
{
  [self->_realLayoutManager intrinsicContentSizeForCell:cell rowWidth:width];
  result.height = v5;
  result.width = v4;
  return result;
}

@end
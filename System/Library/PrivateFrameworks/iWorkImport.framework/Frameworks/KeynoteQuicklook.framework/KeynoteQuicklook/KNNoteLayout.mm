@interface KNNoteLayout
- (BOOL)p_isForPrint;
- (BOOL)shrinkTextToFit;
- (CGPoint)capturedInfoPositionForAttachment;
- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size;
- (CGRect)nonAutosizedFrameForTextLayout:(id)layout;
- (CGSize)sizeOfScrollViewEnclosingCanvas;
- (Class)repClassForTextLayout:(id)layout;
- (TSWPPadding)layoutMargins;
- (UIEdgeInsets)adjustedInsetsForTarget:(id)target;
- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap;
- (double)widthForColumnIndex:(unint64_t)index bodyWidth:(double)width;
- (id)characterStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)children;
- (id)dependentsOfTextLayout:(id)layout;
- (id)dropCapStyleAtParIndex:(unint64_t)index;
- (id)listStyleAtParIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)paragraphStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)paragraphStyleAtParIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (int)verticalAlignmentForTextLayout:(id)layout;
- (unint64_t)autosizeFlagsForTextLayout:(id)layout;
- (unint64_t)initialCharIndex;
- (void)addChild:(id)child;
- (void)createContainedLayoutForEditing;
- (void)dealloc;
- (void)insertChild:(id)child above:(id)above;
- (void)insertChild:(id)child atIndex:(unint64_t)index;
- (void)insertChild:(id)child below:(id)below;
- (void)invalidateForAutosizingTextLayout:(id)layout;
- (void)invalidatePadding;
- (void)invalidateSize;
- (void)replaceChild:(id)child with:(id)with;
- (void)setChildren:(id)children;
- (void)updateChildrenFromInfo;
@end

@implementation KNNoteLayout

- (void)dealloc
{
  [(TSWPLayout *)self->_containedLayout setParent:0];
  v3.receiver = self;
  v3.super_class = KNNoteLayout;
  [(KNNoteLayout *)&v3 dealloc];
}

- (id)children
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self->_containedLayout)
  {
    v4[0] = self->_containedLayout;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

- (void)setChildren:(id)children
{
  v3 = MEMORY[0x277D81150];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNNoteLayout setChildren:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNNoteLayout.mm"];
  [v3 handleFailureInFunction:v4 file:v5 lineNumber:74 isFatal:0 description:"not supported"];

  v6 = MEMORY[0x277D81150];

  [v6 logBacktraceThrottled];
}

- (void)addChild:(id)child
{
  v3 = MEMORY[0x277D81150];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNNoteLayout addChild:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNNoteLayout.mm"];
  [v3 handleFailureInFunction:v4 file:v5 lineNumber:78 isFatal:0 description:"not supported"];

  v6 = MEMORY[0x277D81150];

  [v6 logBacktraceThrottled];
}

- (void)insertChild:(id)child atIndex:(unint64_t)index
{
  v4 = MEMORY[0x277D81150];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[KNNoteLayout insertChild:atIndex:]", index}];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNNoteLayout.mm"];
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:82 isFatal:0 description:"not supported"];

  v7 = MEMORY[0x277D81150];

  [v7 logBacktraceThrottled];
}

- (void)insertChild:(id)child below:(id)below
{
  v4 = MEMORY[0x277D81150];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[KNNoteLayout insertChild:below:]", below}];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNNoteLayout.mm"];
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:86 isFatal:0 description:"not supported"];

  v7 = MEMORY[0x277D81150];

  [v7 logBacktraceThrottled];
}

- (void)insertChild:(id)child above:(id)above
{
  v4 = MEMORY[0x277D81150];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[KNNoteLayout insertChild:above:]", above}];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNNoteLayout.mm"];
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:90 isFatal:0 description:"not supported"];

  v7 = MEMORY[0x277D81150];

  [v7 logBacktraceThrottled];
}

- (void)replaceChild:(id)child with:(id)with
{
  v4 = MEMORY[0x277D81150];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[KNNoteLayout replaceChild:with:]", with}];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNNoteLayout.mm"];
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:94 isFatal:0 description:"not supported"];

  v7 = MEMORY[0x277D81150];

  [v7 logBacktraceThrottled];
}

- (void)invalidateSize
{
  v3.receiver = self;
  v3.super_class = KNNoteLayout;
  [(KNNoteLayout *)&v3 invalidateSize];
  [(TSWPLayout *)self->_containedLayout invalidateSize];
}

- (void)createContainedLayoutForEditing
{
  info = [(KNNoteLayout *)self info];
  containedStorage = [info containedStorage];

  containedLayout = self->_containedLayout;
  if (!containedLayout || ([(TSWPLayout *)containedLayout info], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != containedStorage))
  {
    [(KNNoteLayout *)self invalidate];
    v6 = self->_containedLayout;
    if (v6)
    {
      [(TSWPLayout *)v6 setParent:0];
      v7 = self->_containedLayout;
      self->_containedLayout = 0;
    }

    if (containedStorage)
    {
      [(KNNoteLayout *)self nonAutosizedFrameForTextLayout:0];
      v12 = [objc_alloc(objc_msgSend(containedStorage "layoutClass"))];
      v13 = self->_containedLayout;
      self->_containedLayout = v12;

      [(TSWPLayout *)self->_containedLayout setParent:self];
    }
  }
}

- (void)updateChildrenFromInfo
{
  containedLayout = self->_containedLayout;
  if (!containedLayout)
  {
    [(KNNoteLayout *)self createContainedLayoutForEditing];
    containedLayout = self->_containedLayout;
  }

  MEMORY[0x2821F9670](containedLayout, sel_updateChildrenFromInfo);
}

- (CGPoint)capturedInfoPositionForAttachment
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (BOOL)p_isForPrint
{
  layoutController = [(KNNoteLayout *)self layoutController];
  canvas = [layoutController canvas];
  delegate = [canvas delegate];

  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    isPrintingCanvas = [delegate isPrintingCanvas];
  }

  else
  {
    isPrintingCanvas = 0;
  }

  return isPrintingCanvas;
}

- (id)paragraphStyleAtParIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  info = [(KNNoteLayout *)self info];
  containedStorage = [info containedStorage];

  v9 = [containedStorage paragraphStyleAtParIndex:index effectiveRange:range];
  if (![(KNNoteLayout *)self darkModeEnabled])
  {
    v19 = v9;
    goto LABEL_14;
  }

  propertyMap = [v9 propertyMap];
  v11 = [propertyMap copy];

  v12 = [v11 objectForProperty:48];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    color = [v12 color];
    grayscaleColor = [color grayscaleColor];
    v15 = [color isAlmostEqualToColor:grayscaleColor];

    if (v15)
    {
      v16 = MEMORY[0x277D801F8];
      invertedColor = [color invertedColor];
      v18 = [v16 colorWithColor:invertedColor];

      [v11 setObject:v18 forProperty:48];
      v12 = v18;
    }

LABEL_10:

    goto LABEL_11;
  }

  null = [MEMORY[0x277CBEB68] null];
  v21 = [v12 isEqual:null];

  if (v21)
  {
    objc_opt_class();
    v22 = [v11 objectForProperty:50];
    color = TSUDynamicCast();

    v13Color = [color color];
    grayscaleColor2 = [v13Color grayscaleColor];
    v25 = [v13Color isAlmostEqualToColor:grayscaleColor2];

    if (v25)
    {
      v26 = [color mutableCopy];
      invertedColor2 = [v13Color invertedColor];
      [v26 setColor:invertedColor2];

      v28 = [v26 copy];
      [v11 setObject:v28 forProperty:50];
    }

    goto LABEL_10;
  }

LABEL_11:
  v29 = objc_alloc(MEMORY[0x277D80EC8]);
  context = [containedStorage context];
  v19 = [v29 initWithContext:context name:0 overridePropertyMap:v11 isVariation:0];

  invertedParagraphsStyles = self->_invertedParagraphsStyles;
  if (!invertedParagraphsStyles)
  {
    v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v33 = self->_invertedParagraphsStyles;
    self->_invertedParagraphsStyles = v32;

    invertedParagraphsStyles = self->_invertedParagraphsStyles;
  }

  [(NSMutableArray *)invertedParagraphsStyles addObject:v19];

LABEL_14:

  return v19;
}

- (id)paragraphStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  info = [(KNNoteLayout *)self info];
  containedStorage = [info containedStorage];
  v9 = [containedStorage paragraphIndexAtCharIndex:index];

  return [(KNNoteLayout *)self paragraphStyleAtParIndex:v9 effectiveRange:range];
}

- (id)characterStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  info = [(KNNoteLayout *)self info];
  containedStorage = [info containedStorage];
  v8 = [containedStorage characterStyleAtCharIndex:index effectiveRange:range];

  return v8;
}

- (id)listStyleAtParIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  info = [(KNNoteLayout *)self info];
  containedStorage = [info containedStorage];
  v8 = [containedStorage listStyleAtParIndex:index effectiveRange:range];

  return v8;
}

- (id)dropCapStyleAtParIndex:(unint64_t)index
{
  info = [(KNNoteLayout *)self info];
  containedStorage = [info containedStorage];
  v6 = [containedStorage dropCapStyleAtParIndex:index];

  return v6;
}

- (unint64_t)autosizeFlagsForTextLayout:(id)layout
{
  if ([(KNNoteLayout *)self p_isForPrint])
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

- (int)verticalAlignmentForTextLayout:(id)layout
{
  info = [(KNNoteLayout *)self info];
  verticalAlignment = [info verticalAlignment];

  return verticalAlignment;
}

- (void)invalidateForAutosizingTextLayout:(id)layout
{
  computeLayoutGeometry = [(KNNoteLayout *)self computeLayoutGeometry];
  [(KNNoteLayout *)self setGeometry:computeLayoutGeometry];

  [(KNNoteLayout *)self invalidateSize];
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)layout
{
  if ([(KNNoteLayout *)self p_isForPrint])
  {
    info = [(KNNoteLayout *)self info];
    [info frameForPrinting];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    [(KNNoteLayout *)self sizeOfScrollViewEnclosingCanvas];
    TSURectWithSize();
    v6 = v13;
    v8 = v14;
    v10 = v15;
    v12 = v16;
  }

  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size
{
  height = size.height;
  [(KNNoteLayout *)self nonAutosizedFrameForTextLayout:layout, size.width];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  v8 = CGRectGetHeight(v13);
  if (v8 >= height)
  {
    v9 = v8;
  }

  else
  {
    v9 = height;
  }

  v10 = x;
  v11 = y;
  v12 = width;
  result.size.height = v9;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)dependentsOfTextLayout:(id)layout
{
  v3 = [MEMORY[0x277CBEA60] arrayWithObject:self];

  return v3;
}

- (Class)repClassForTextLayout:(id)layout
{
  v3 = objc_opt_class();

  return v3;
}

- (unint64_t)initialCharIndex
{
  info = [(KNNoteLayout *)self info];
  initialCharacterIndexForExporting = [info initialCharacterIndexForExporting];

  return initialCharacterIndexForExporting;
}

- (void)invalidatePadding
{
  padding = self->_padding;
  self->_padding = 0;
}

- (UIEdgeInsets)adjustedInsetsForTarget:(id)target
{
  geometry = [(KNNoteLayout *)self geometry];
  [geometry size];
  v6 = v5;

  v7 = [(KNNoteLayout *)self p_adjustedPaddingForBodyWidth:v6];
  v8 = v7;
  if (v7)
  {
    [v7 edgeInsets];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v10 = *MEMORY[0x277D81428];
    v12 = *(MEMORY[0x277D81428] + 8);
    v14 = *(MEMORY[0x277D81428] + 16);
    v16 = *(MEMORY[0x277D81428] + 24);
  }

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (TSWPPadding)layoutMargins
{
  if ([(KNNoteLayout *)self p_isForPrint])
  {
    padding = [(KNNoteLayout *)self padding];
  }

  else
  {
    padding = 0;
  }

  return padding;
}

- (double)widthForColumnIndex:(unint64_t)index bodyWidth:(double)width
{
  v5 = [(KNNoteLayout *)self geometry:index];
  [v5 size];
  v7 = v6;

  v8 = [(KNNoteLayout *)self p_adjustedPaddingForBodyWidth:v7];
  v9 = v8;
  if (v8)
  {
    [v8 leftInset];
    v11 = v10;
    [v9 rightInset];
  }

  else
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  v13 = v7 - v11 - v12;

  return v13;
}

- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap
{
  target = [(KNNoteLayout *)self p_adjustedPaddingForBodyWidth:index, target];
  v11 = target;
  if (target)
  {
    [target leftInset];
    v13 = v12;
    [v11 rightInset];
    if (!outWidth)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0.0;
  v14 = 0.0;
  if (outWidth)
  {
LABEL_3:
    *outWidth = width - v13 - v14;
  }

LABEL_4:
  if (gap)
  {
    *gap = 0.0;
  }

  return v13;
}

- (BOOL)shrinkTextToFit
{
  if (![(KNNoteLayout *)self p_isForPrint])
  {
    return 0;
  }

  info = [(KNNoteLayout *)self info];
  shrinkTextForPrinting = [info shrinkTextForPrinting];

  return shrinkTextForPrinting;
}

- (CGSize)sizeOfScrollViewEnclosingCanvas
{
  width = self->_sizeOfScrollViewEnclosingCanvas.width;
  height = self->_sizeOfScrollViewEnclosingCanvas.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
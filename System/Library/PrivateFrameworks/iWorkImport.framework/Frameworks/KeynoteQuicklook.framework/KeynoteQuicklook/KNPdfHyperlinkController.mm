@interface KNPdfHyperlinkController
- (BOOL)ignoreUrl:(id)url;
- (BOOL)isDestination:(id)destination;
- (CGRect)canvasRect;
- (KNPdfHyperlinkController)initWithShow:(id)show;
- (id)destinationFromUrl:(id)url;
- (id)nameForSlide:(id)slide;
- (id)nameFromIndex:(unint64_t)index;
- (int64_t)getFirstNonHiddenIndex:(unint64_t)index delta:(int64_t)delta;
- (void)addHyperlinksForReps:(id)reps targetRect:(CGRect)rect context:(CGContext *)context;
@end

@implementation KNPdfHyperlinkController

- (KNPdfHyperlinkController)initWithShow:(id)show
{
  showCopy = show;
  v12.receiver = self;
  v12.super_class = KNPdfHyperlinkController;
  v5 = [(TSAPdfHyperlinkController *)&v12 init];
  if (v5)
  {
    slideTree = [showCopy slideTree];
    slideNodes = [slideTree slideNodes];
    slides = v5->_slides;
    v5->_slides = slideNodes;

    [showCopy size];
    v5->_canvasRect.origin.x = 0.0;
    v5->_canvasRect.origin.y = 0.0;
    v5->_canvasRect.size.width = v9;
    v5->_canvasRect.size.height = v10;
  }

  return v5;
}

- (id)nameForSlide:(id)slide
{
  v3 = MEMORY[0x277CCACA8];
  uniqueIdentifier = [slide uniqueIdentifier];
  v5 = [v3 stringWithFormat:@"?slideid=%@", uniqueIdentifier];

  return v5;
}

- (id)nameFromIndex:(unint64_t)index
{
  if ([(NSArray *)self->_slides count]<= index)
  {
    v6 = &stru_2884D8E20;
  }

  else
  {
    v5 = [(NSArray *)self->_slides objectAtIndex:index];
    v6 = [(KNPdfHyperlinkController *)self nameForSlide:v5];
  }

  return v6;
}

- (int64_t)getFirstNonHiddenIndex:(unint64_t)index delta:(int64_t)delta
{
  v7 = [(NSArray *)self->_slides count];
  result = 0;
  v9 = index + delta;
  if ((index + delta) >= 0 && v9 < v7)
  {
    v10 = index + 2 * delta;
    while (1)
    {
      v11 = [(NSArray *)self->_slides objectAtIndex:v9];
      v12 = v11;
      if (v11)
      {
        if (([v11 isSkipped] & 1) == 0)
        {
          break;
        }
      }

      result = 0;
      if ((v10 & 0x8000000000000000) == 0)
      {
        v9 += delta;
        v13 = v10 < v7;
        v10 += delta;
        if (v13)
        {
          continue;
        }
      }

      return result;
    }

    return v9;
  }

  return result;
}

- (id)destinationFromUrl:(id)url
{
  absoluteString = [url absoluteString];
  v5 = absoluteString;
  if (!absoluteString || ![absoluteString length])
  {
    v10 = &stru_2884D8E20;
    goto LABEL_9;
  }

  v6 = [v5 rangeOfString:@"?id="];
  if (v7 && !v6 || (v8 = [v5 rangeOfString:@"?slideid="], v9) && !v8)
  {
    v10 = v5;
    goto LABEL_9;
  }

  v12 = [v5 rangeOfString:@"?slide="];
  v10 = &stru_2884D8E20;
  if (v13 && !v12)
  {
    v14 = [v5 substringFromIndex:v13];
    if ([v14 isEqualToString:@"last"])
    {
      v15 = [(NSArray *)self->_slides count]- 1;
    }

    else if ([v14 isEqualToString:@"first"])
    {
      v15 = 0;
    }

    else
    {
      if (([v14 isEqualToString:@"next"] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"+1"))
      {
        currentSlideNumber = self->_currentSlideNumber;
        selfCopy2 = self;
        v18 = 1;
      }

      else
      {
        if (([v14 isEqualToString:@"previous"] & 1) == 0 && !objc_msgSend(v14, "isEqualToString:", @"-1"))
        {
          goto LABEL_23;
        }

        currentSlideNumber = self->_currentSlideNumber;
        selfCopy2 = self;
        v18 = -1;
      }

      v15 = [(KNPdfHyperlinkController *)selfCopy2 getFirstNonHiddenIndex:currentSlideNumber delta:v18];
    }

    v10 = [(KNPdfHyperlinkController *)self nameFromIndex:v15];
LABEL_23:
  }

LABEL_9:

  return v10;
}

- (BOOL)isDestination:(id)destination
{
  absoluteString = [destination absoluteString];
  v4 = absoluteString;
  if (absoluteString)
  {
    v5 = [absoluteString rangeOfString:@"?slide="];
    if ((!v6 || v5) && ((v7 = [v4 rangeOfString:@"?slideid="], !v8) || v7))
    {
      v10 = [v4 rangeOfString:@"?id="];
      if (v11)
      {
        v12 = v10 == 0;
      }

      else
      {
        v12 = 0;
      }

      v9 = v12;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)ignoreUrl:(id)url
{
  absoluteString = [url absoluteString];
  if ([absoluteString isEqualToString:@"?action=exitpresentation"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [absoluteString isEqualToString:@"?action=retreat"];
  }

  return v4;
}

- (CGRect)canvasRect
{
  x = self->_canvasRect.origin.x;
  y = self->_canvasRect.origin.y;
  width = self->_canvasRect.size.width;
  height = self->_canvasRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)addHyperlinksForReps:(id)reps targetRect:(CGRect)rect context:(CGContext *)context
{
  contextCopy = context;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v33 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = reps;
  v10 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v27 + 1) + 8 * v13);
        v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
        [v14 recursivelyPerformSelector:sel_addToSet_ withObject:v15];
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v24;
          do
          {
            v20 = 0;
            do
            {
              if (*v24 != v19)
              {
                objc_enumerationMutation(v16);
              }

              [(TSAPdfHyperlinkController *)self addHyperlinksForRep:*(*(&v23 + 1) + 8 * v20++), contextCopy];
            }

            while (v18 != v20);
            v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v18);
        }

        ++v13;
      }

      while (v13 != v11);
      v11 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  [(TSAPdfHyperlinkController *)self commitHyperlinksToPDF:contextCopy targetRect:x, y, width, height, contextCopy];
}

@end
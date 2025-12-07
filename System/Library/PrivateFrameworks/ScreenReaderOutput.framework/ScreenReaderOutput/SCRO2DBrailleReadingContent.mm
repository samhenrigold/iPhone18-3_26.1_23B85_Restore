@interface SCRO2DBrailleReadingContent
- (SCRO2DBrailleReadingContent)initWithBrailleData:(id)data width:(int64_t)width height:(int64_t)height wordWrap:(BOOL)wrap;
- (id)multiLineBraille;
- (void)drawOnCanvas:(id)canvas;
- (void)multiLineBraille;
- (void)panLeft;
- (void)panRight;
@end

@implementation SCRO2DBrailleReadingContent

- (SCRO2DBrailleReadingContent)initWithBrailleData:(id)data width:(int64_t)width height:(int64_t)height wordWrap:(BOOL)wrap
{
  wrapCopy = wrap;
  dataCopy = data;
  v31.receiver = self;
  v31.super_class = SCRO2DBrailleReadingContent;
  v12 = [(SCRO2DBrailleReadingContent *)&v31 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_data, data);
    v13->_width = width;
    v13->_height = height;
    v14 = [SCRO2DBrailleString brailleStringsFromBrailleData:dataCopy];
    strings = v13->_strings;
    v13->_strings = v14;

    v29 = dataCopy;
    v13->_focusedIndex = [dataCopy focusedIndex];
    v16 = objc_opt_new();
    v17 = objc_opt_new();
    if ([(NSArray *)v13->_strings count])
    {
      v18 = 0;
      v19 = 0;
      v30 = 0;
      do
      {
        v20 = [(NSArray *)v13->_strings objectAtIndex:v18];
        v21 = [v20 brailleLinesForWidth:v13->_width indent:2 focused:v18 == v13->_focusedIndex wordWrap:wrapCopy];
        [v16 addObjectsFromArray:v21];
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
        [v17 addObject:v22];

        v23 = [v21 count];
        if (v18 == v13->_focusedIndex)
        {
          v30 = [v21 count];
        }

        v19 += v23;

        ++v18;
      }

      while (v18 < [(NSArray *)v13->_strings count]);
    }

    else
    {
      v30 = 0;
    }

    objc_storeStrong(&v13->_brailleLines, v16);
    objc_storeStrong(&v13->_beginLines, v17);
    focusedIndex = v13->_focusedIndex;
    if (focusedIndex >= 0x7FFFFFFFFFFFFFFFLL)
    {
      unsignedIntegerValue = 0;
      dataCopy = v29;
    }

    else
    {
      dataCopy = v29;
      if (focusedIndex >= [(NSArray *)v13->_beginLines count])
      {
        unsignedIntegerValue = 0;
      }

      else
      {
        v25 = [(NSArray *)v13->_beginLines objectAtIndex:v13->_focusedIndex];
        unsignedIntegerValue = [v25 unsignedIntegerValue];
      }
    }

    if (([dataCopy alignAtTop] & 1) == 0)
    {
      unsignedIntegerValue = unsignedIntegerValue + v30 - v13->_height;
    }

    v13->_firstDisplayedLine = unsignedIntegerValue;
    v27 = v13;
  }

  return v13;
}

- (void)drawOnCanvas:(id)canvas
{
  canvasCopy = canvas;
  multiLineBraille = [(SCRO2DBrailleReadingContent *)self multiLineBraille];
  v11 = canvasCopy;
  data = [MEMORY[0x277CBEA90] data];
  [v11 setImageData:data];

  v7 = [multiLineBraille componentsJoinedByString:&stru_28763D5C8];
  v8 = [v7 length];
  v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v9[i] = [v7 characterAtIndex:i];
    }
  }

  [v11 setBrailleText:v9 length:v8];
  free(v9);
}

- (id)multiLineBraille
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_height >= 1)
  {
    firstDisplayedLine = self->_firstDisplayedLine;
    do
    {
      if (firstDisplayedLine < 0 || firstDisplayedLine >= [(NSArray *)self->_brailleLines count])
      {
        v6 = [&stru_28763D5C8 stringByPaddingToLength:self->_width withString:@"⠀" startingAtIndex:0];
      }

      else
      {
        v6 = [(NSArray *)self->_brailleLines objectAtIndex:firstDisplayedLine];
        if ([v6 length] != self->_width)
        {
          [(SCRO2DBrailleReadingContent *)v6 multiLineBraille:a2];
        }
      }

      [v4 addObject:v6];

      ++firstDisplayedLine;
    }

    while (firstDisplayedLine < self->_height + self->_firstDisplayedLine);
  }

  return v4;
}

- (void)panLeft
{
  if ([(SCRO2DBrailleReadingContent *)self canPanLeft])
  {
    self->_firstDisplayedLine -= self->_height;
  }
}

- (void)panRight
{
  if ([(SCRO2DBrailleReadingContent *)self canPanRight])
  {
    self->_firstDisplayedLine += self->_height;
  }
}

- (void)multiLineBraille
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "length")}];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:*a2];
  [currentHandler handleFailureInMethod:a3 object:a4 file:@"SCRO2DBrailleReadingContent.m" lineNumber:106 description:{@"Each element of _brailleLine (%@, length %@) must be of length _width (%@)", self, v8, v9}];
}

@end
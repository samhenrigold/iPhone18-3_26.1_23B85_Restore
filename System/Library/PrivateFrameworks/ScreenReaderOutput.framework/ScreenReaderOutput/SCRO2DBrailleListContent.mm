@interface SCRO2DBrailleListContent
- (SCRO2DBrailleListContent)initWithBrailleData:(id)data width:(int64_t)width height:(int64_t)height wordWrap:(BOOL)wrap;
- (id)multiLineBraille;
- (void)drawOnCanvas:(id)canvas;
@end

@implementation SCRO2DBrailleListContent

- (SCRO2DBrailleListContent)initWithBrailleData:(id)data width:(int64_t)width height:(int64_t)height wordWrap:(BOOL)wrap
{
  wrapCopy = wrap;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = SCRO2DBrailleListContent;
  v12 = [(SCRO2DBrailleListContent *)&v25 init];
  v13 = v12;
  if (v12)
  {
    v12->_itemPreviewMode = 1;
    objc_storeStrong(&v12->_data, data);
    v13->_width = width;
    v13->_height = height;
    v14 = [SCRO2DBrailleString brailleStringsFromBrailleData:dataCopy];
    strings = v13->_strings;
    v13->_strings = v14;

    v13->_focusedIndex = [dataCopy focusedIndex];
    v16 = objc_opt_new();
    if ([(NSArray *)v13->_strings count])
    {
      v17 = 0;
      do
      {
        v18 = [(NSArray *)v13->_strings objectAtIndex:v17];
        v19 = [v18 brailleLinesForWidth:v13->_width - 1 indent:0 focused:v17 == v13->_focusedIndex wordWrap:wrapCopy];
        [(NSArray *)v16 addObject:v19];

        ++v17;
      }

      while (v17 < [(NSArray *)v13->_strings count]);
    }

    brailleLineLists = v13->_brailleLineLists;
    v13->_brailleLineLists = v16;

    alignAtTop = [dataCopy alignAtTop];
    focusedIndex = v13->_focusedIndex;
    if ((alignAtTop & 1) == 0)
    {
      focusedIndex = focusedIndex - v13->_height + 1;
    }

    v13->_firstDisplayedLine = focusedIndex;
    v23 = v13;
  }

  return v13;
}

- (void)drawOnCanvas:(id)canvas
{
  canvasCopy = canvas;
  multiLineBraille = [(SCRO2DBrailleListContent *)self multiLineBraille];
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
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_height >= 1)
  {
    firstDisplayedLine = self->_firstDisplayedLine;
    do
    {
      if (firstDisplayedLine < 0 || firstDisplayedLine >= -[NSArray count](self->_strings, "count") || (-[NSArray objectAtIndex:](self->_brailleLineLists, "objectAtIndex:", firstDisplayedLine), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, !v6))
      {
        v11 = [&stru_28763D5C8 stringByPaddingToLength:self->_width withString:@"⠀" startingAtIndex:0];
      }

      else
      {
        focusedIndex = self->_focusedIndex;
        v8 = [(NSArray *)self->_brailleLineLists objectAtIndex:firstDisplayedLine];
        v9 = [v8 objectAtIndex:0];
        if (firstDisplayedLine == focusedIndex)
        {
          v10 = @"⣿";
        }

        else
        {
          v10 = @"⠀";
        }

        v11 = [(__CFString *)v10 stringByAppendingString:v9];
      }

      [v3 addObject:v11];

      ++firstDisplayedLine;
    }

    while (firstDisplayedLine < self->_height + self->_firstDisplayedLine);
  }

  return v3;
}

@end
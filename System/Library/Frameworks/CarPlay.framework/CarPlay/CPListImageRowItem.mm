@interface CPListImageRowItem
+ (CGSize)maximumImageSize;
+ (void)_setMaximumImageSize:(CGSize)size;
- (CPListImageRowItem)initWithCoder:(id)coder;
- (CPListImageRowItem)initWithText:(id)text cardElements:(id)elements allowsMultipleLines:(BOOL)lines;
- (CPListImageRowItem)initWithText:(id)text condensedElements:(id)elements allowsMultipleLines:(BOOL)lines;
- (CPListImageRowItem)initWithText:(id)text elements:(id)elements allowsMultipleLines:(BOOL)lines;
- (CPListImageRowItem)initWithText:(id)text elements:(id)elements style:(unint64_t)style;
- (CPListImageRowItem)initWithText:(id)text gridElements:(id)elements allowsMultipleLines:(BOOL)lines;
- (CPListImageRowItem)initWithText:(id)text imageGridElements:(id)elements allowsMultipleLines:(BOOL)lines;
- (CPListImageRowItem)initWithText:(id)text images:(id)images imageTitles:(id)titles;
- (CPListTemplate)listTemplate;
- (NSArray)gridImages;
- (NSArray)imageTitles;
- (id)_initWithText:(id)text elements:(id)elements allowsMultipleLines:(BOOL)lines;
- (id)_populateElementsFromImages:(id)images andImageTitles:(id)titles;
- (void)_setNeedsUpdate;
- (void)encodeWithCoder:(id)coder;
- (void)setElements:(id)elements;
- (void)setEnabled:(BOOL)enabled;
- (void)setImageTitles:(id)titles;
- (void)setText:(NSString *)text;
- (void)updateImages:(NSArray *)gridImages;
@end

@implementation CPListImageRowItem

+ (void)_setMaximumImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v10 = *MEMORY[0x277D85DE8];
  v5 = CarPlayFrameworkGeneralLogging(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134349312;
    v7 = width;
    v8 = 2050;
    v9 = height;
    _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_INFO, "CPListImageRowItem setting maxImageSize (%{public}f,%{public}f)", &v6, 0x16u);
  }

  _maximumImageSize_0_0 = *&width;
  _maximumImageSize_1_0 = *&height;
}

+ (CGSize)maximumImageSize
{
  v4 = *&_maximumImageSize_0_0;
  v5 = *&_maximumImageSize_1_0;
  if (*&_maximumImageSize_0_0 == *MEMORY[0x277CBF3A8] && *&_maximumImageSize_1_0 == *(MEMORY[0x277CBF3A8] + 8))
  {
    [CPListImageRowItemElement maximumImageSize:*&_maximumImageSize_0_0];
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (CPListImageRowItem)initWithText:(id)text elements:(id)elements allowsMultipleLines:(BOOL)lines
{
  v5 = [(CPListImageRowItem *)self _initWithText:text elements:elements allowsMultipleLines:lines];
  v6 = v5;
  if (v5)
  {
    v5->_style = 0;
    v7 = objc_opt_class();
    elementType = v6->_elementType;
    v6->_elementType = v7;
  }

  return v6;
}

- (CPListImageRowItem)initWithText:(id)text cardElements:(id)elements allowsMultipleLines:(BOOL)lines
{
  v5 = [(CPListImageRowItem *)self _initWithText:text elements:elements allowsMultipleLines:lines];
  v6 = v5;
  if (v5)
  {
    v5->_style = 2;
    v7 = objc_opt_class();
    elementType = v6->_elementType;
    v6->_elementType = v7;
  }

  return v6;
}

- (CPListImageRowItem)initWithText:(id)text condensedElements:(id)elements allowsMultipleLines:(BOOL)lines
{
  v5 = [(CPListImageRowItem *)self _initWithText:text elements:elements allowsMultipleLines:lines];
  v6 = v5;
  if (v5)
  {
    v5->_style = 1;
    v7 = objc_opt_class();
    elementType = v6->_elementType;
    v6->_elementType = v7;
  }

  return v6;
}

- (CPListImageRowItem)initWithText:(id)text gridElements:(id)elements allowsMultipleLines:(BOOL)lines
{
  v5 = [(CPListImageRowItem *)self _initWithText:text elements:elements allowsMultipleLines:lines];
  v6 = v5;
  if (v5)
  {
    v5->_style = 3;
    v7 = objc_opt_class();
    elementType = v6->_elementType;
    v6->_elementType = v7;
  }

  return v6;
}

- (CPListImageRowItem)initWithText:(id)text imageGridElements:(id)elements allowsMultipleLines:(BOOL)lines
{
  v5 = [(CPListImageRowItem *)self _initWithText:text elements:elements allowsMultipleLines:lines];
  v6 = v5;
  if (v5)
  {
    v5->_style = 4;
    v7 = objc_opt_class();
    elementType = v6->_elementType;
    v6->_elementType = v7;
  }

  return v6;
}

- (CPListImageRowItem)initWithText:(id)text images:(id)images imageTitles:(id)titles
{
  textCopy = text;
  v9 = [(CPListImageRowItem *)self _populateElementsFromImages:images andImageTitles:titles];
  v10 = [v9 copy];
  v11 = [(CPListImageRowItem *)self _initWithText:textCopy elements:v10];

  return v11;
}

- (id)_initWithText:(id)text elements:(id)elements allowsMultipleLines:(BOOL)lines
{
  v34 = *MEMORY[0x277D85DE8];
  textCopy = text;
  elementsCopy = elements;
  v32.receiver = self;
  v32.super_class = CPListImageRowItem;
  v11 = [(CPListImageRowItem *)&v32 init];
  if (v11)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v11->_identifier;
    v11->_identifier = uUID;

    objc_storeStrong(&v11->_text, text);
    v11->_enabled = 1;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = elementsCopy;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        v18 = 0;
        do
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v28 + 1) + 8 * v18++) setRowItem:{v11, v28}];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v16);
    }

    v19 = [v14 count];
    v20 = [v14 copy];
    v21 = v20;
    if (v19 > 0x18)
    {
      v23 = [(NSArray *)v20 subarrayWithRange:0, 24];
      elements = v11->_elements;
      v11->_elements = v23;
    }

    else
    {
      v22 = v11->_elements;
      v11->_elements = v20;
      v21 = v22;
    }

    v11->_style = 0;
    v25 = objc_opt_class();
    elementType = v11->_elementType;
    v11->_elementType = v25;

    v11->_allowsMultipleLines = lines;
  }

  return v11;
}

- (CPListImageRowItem)initWithText:(id)text elements:(id)elements style:(unint64_t)style
{
  result = [(CPListImageRowItem *)self _initWithText:text elements:elements];
  if (result)
  {
    result->_style = style;
  }

  return result;
}

- (CPListImageRowItem)initWithCoder:(id)coder
{
  v32[6] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = CPListImageRowItem;
  v5 = [(CPListImageRowItem *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowItemTextKey"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v5->_enabled = [coderCopy decodeBoolForKey:@"kCPListImageRowItemEnabledKey"];
    v10 = MEMORY[0x277CBEB98];
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v32[2] = objc_opt_class();
    v32[3] = objc_opt_class();
    v32[4] = objc_opt_class();
    v32[5] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:6];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"kCPListImageRowItemImageElementsKey"];
    elements = v5->_elements;
    v5->_elements = v13;

    v5->_style = [coderCopy decodeIntegerForKey:@"kCPListImageRowItemStyleKey"];
    v5->_allowsMultipleLines = [coderCopy decodeBoolForKey:@"kCPListImageRowItemAllowMultipleLinesKey"];
    if (![(NSArray *)v5->_elements count])
    {
      v15 = CarPlayFrameworkGeneralLogging(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [CPListImageRowItem initWithCoder:v15];
      }

      v16 = MEMORY[0x277CBEB98];
      v31[0] = objc_opt_class();
      v31[1] = objc_opt_class();
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
      v18 = [v16 setWithArray:v17];
      v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"kCPListImageRowItemGridImagesKey"];

      v20 = [v19 na_map:&__block_literal_global_17];
      v21 = MEMORY[0x277CBEB98];
      v30[0] = objc_opt_class();
      v30[1] = objc_opt_class();
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
      v23 = [v21 setWithArray:v22];
      v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"kCPListImageRowItemImageTitlesKey"];

      v25 = [(CPListImageRowItem *)v5 _populateElementsFromImages:v20 andImageTitles:v24];
      v26 = CarPlayFrameworkGeneralLogging(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [(CPListImageRowItem *)v25 initWithCoder:v26];
      }

      v27 = v5->_elements;
      v5->_elements = v25;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  text = [(CPListImageRowItem *)self text];
  [coderCopy encodeObject:text forKey:@"kCPListImageRowItemTextKey"];

  identifier = [(CPListImageRowItem *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"kCPListImageRowIdentifierKey"];

  [coderCopy encodeBool:-[CPListImageRowItem isEnabled](self forKey:{"isEnabled"), @"kCPListImageRowItemEnabledKey"}];
  elements = [(CPListImageRowItem *)self elements];
  [coderCopy encodeObject:elements forKey:@"kCPListImageRowItemImageElementsKey"];

  [coderCopy encodeInteger:-[CPListImageRowItem style](self forKey:{"style"), @"kCPListImageRowItemStyleKey"}];
  [coderCopy encodeBool:-[CPListImageRowItem allowsMultipleLines](self forKey:{"allowsMultipleLines"), @"kCPListImageRowItemAllowMultipleLinesKey"}];
}

- (NSArray)gridImages
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  elements = [(CPListImageRowItem *)self elements];
  v5 = [elements countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(elements);
        }

        image = [*(*(&v12 + 1) + 8 * i) image];
        [v3 addObject:image];
      }

      v6 = [elements countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (NSArray)imageTitles
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  elements = [(CPListImageRowItem *)self elements];
  v5 = [elements countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(elements);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass())) && ([v9 title], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v11 = v10;
          [v3 addObject:v10];
        }

        else
        {
          [v3 addObject:&stru_2849E5A88];
        }
      }

      v6 = [elements countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];

  return v12;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(CPListImageRowItem *)self _setNeedsUpdate];
  }
}

- (void)_setNeedsUpdate
{
  listTemplate = [(CPListImageRowItem *)self listTemplate];
  [listTemplate _setItemNeedsUpdate:self];
}

- (void)setElements:(id)elements
{
  v25 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  if ([elementsCopy count])
  {
    if ([elementsCopy count] >= 0x19)
    {
      v5 = [elementsCopy subarrayWithRange:{0, 24}];

      elementsCopy = v5;
    }

    firstObject = [elementsCopy firstObject];
    v7 = objc_opt_class();

    array = [MEMORY[0x277CBEB18] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    elementsCopy = elementsCopy;
    v9 = [elementsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(elementsCopy);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          if ([v13 isMemberOfClass:{v7, v20}])
          {
            [array addObject:v13];
          }
        }

        v10 = [elementsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    v14 = [array copy];
    elements = self->_elements;
    self->_elements = v14;

    firstObject2 = [array firstObject];
    v17 = objc_opt_class();
    elementType = self->_elementType;
    self->_elementType = v17;

    [(CPListImageRowItem *)self _setNeedsUpdate];
  }

  else
  {
    v19 = self->_elements;
    self->_elements = MEMORY[0x277CBEBF8];

    [(CPListImageRowItem *)self _setNeedsUpdate];
  }
}

- (void)setText:(NSString *)text
{
  v5 = text;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    objc_storeStrong(&self->_text, text);
    [(CPListImageRowItem *)self _setNeedsUpdate];
  }
}

- (void)updateImages:(NSArray *)gridImages
{
  v4 = gridImages;
  if ([(NSArray *)v4 count])
  {
    if ([(NSArray *)v4 count]>= 0x19)
    {
      v5 = [(NSArray *)v4 subarrayWithRange:0, 24];

      v4 = v5;
    }

    v6 = MEMORY[0x277CBEB18];
    elements = [(CPListImageRowItem *)self elements];
    v8 = [v6 arrayWithArray:elements];

    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __35__CPListImageRowItem_updateImages___block_invoke;
    v16 = &unk_278A11800;
    selfCopy = self;
    v18 = v8;
    v9 = v8;
    [(NSArray *)v4 enumerateObjectsUsingBlock:&v13];
    v10 = [v9 copy];
    elements = self->_elements;
    self->_elements = v10;

    [(CPListImageRowItem *)self _setNeedsUpdate];
  }

  else
  {
    v12 = self->_elements;
    self->_elements = MEMORY[0x277CBEBF8];

    [(CPListImageRowItem *)self _setNeedsUpdate];
  }
}

void __35__CPListImageRowItem_updateImages___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v10 = a2;
  v5 = [*(a1 + 32) elements];
  v6 = [v5 count];

  v7 = *(a1 + 32);
  if (v6 <= a3)
  {
    v9 = objc_alloc_init(v7[7]);
    [v9 setImage:v10];
    [v9 setEnabled:1];
    [*(a1 + 40) addObject:v9];
  }

  else
  {
    v8 = [(Class *)v7 elements];
    v9 = [v8 objectAtIndexedSubscript:a3];

    if ([v9 isMemberOfClass:*(*(a1 + 32) + 56)])
    {
      [v9 setImage:v10];
    }
  }
}

- (void)setImageTitles:(id)titles
{
  titlesCopy = titles;
  v5 = objc_opt_new();
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __37__CPListImageRowItem_setImageTitles___block_invoke;
  v11 = &unk_278A11828;
  selfCopy = self;
  v13 = v5;
  v6 = v5;
  [titlesCopy enumerateObjectsUsingBlock:&v8];

  v7 = [v6 copy];
  [(CPListImageRowItem *)self setElements:v7];

  [(CPListImageRowItem *)self _setNeedsUpdate];
}

void __37__CPListImageRowItem_setImageTitles___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (a3 > 0x17 || (v15 = v7, [*(a1 + 32) elements], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7 = v15, v9 <= a3))
  {
    *a4 = 1;
  }

  else
  {
    v10 = [*(a1 + 32) elements];
    v11 = [v10 objectAtIndexedSubscript:a3];

    if (([v11 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v11, "isMemberOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(v11, "isMemberOfClass:", objc_opt_class()))
    {
      objc_opt_class();
      v12 = v11;
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      [v14 setTitle:v15];
    }

    [*(a1 + 40) addObject:v11];

    v7 = v15;
  }
}

- (id)_populateElementsFromImages:(id)images andImageTitles:(id)titles
{
  imagesCopy = images;
  titlesCopy = titles;
  v7 = objc_opt_new();
  v8 = [titlesCopy count];
  if (v8 | [imagesCopy count])
  {
    v9 = 0;
    do
    {
      v10 = [CPListImageRowItemRowElement alloc];
      if ([imagesCopy count] <= v9)
      {
        v11 = objc_opt_new();
      }

      else
      {
        v11 = [imagesCopy objectAtIndex:v9];
      }

      v12 = v11;
      if ([titlesCopy count] <= v9)
      {
        v14 = [(CPListImageRowItemRowElement *)v10 initWithImage:v12 title:0 subtitle:0];
      }

      else
      {
        v13 = [titlesCopy objectAtIndex:v9];
        v14 = [(CPListImageRowItemRowElement *)v10 initWithImage:v12 title:v13 subtitle:0];
      }

      [v7 addObject:v14];
      ++v9;
      v15 = [titlesCopy count];
      v16 = [imagesCopy count];
      if (v15 <= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v15;
      }
    }

    while (v9 < v17);
  }

  v18 = [MEMORY[0x277CBEA60] arrayWithArray:v7];

  return v18;
}

- (CPListTemplate)listTemplate
{
  WeakRetained = objc_loadWeakRetained(&self->_listTemplate);

  return WeakRetained;
}

- (void)initWithCoder:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_236ED4000, a2, OS_LOG_TYPE_DEBUG, "Setting elements: %@", &v2, 0xCu);
}

@end
@interface TMLAttributedString
+ (id)attributedStringWithFormat:(id)format attributes:(id)attributes;
+ (void)initializeJSContext:(id)context;
- (CGRect)boundingRectWithSize:(CGSize)size options:(int64_t)options;
- (CGSize)size;
- (TMLAttributedString)attributedStringWithAttachment:(id)attachment;
- (TMLAttributedString)init;
- (TMLAttributedString)initWithAttributedString:(id)string;
- (id)NSAttributedString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)enumerateAttribute:(id)attribute inRange:(_NSRange)range options:(unint64_t)options;
- (void)appendAttributedString:(id)string;
- (void)insertAttributedString:(id)string atIndex:(unint64_t)index;
- (void)replaceCharactersInRange:(_NSRange)range withAttributedString:(id)string;
- (void)setString:(id)string;
@end

@implementation TMLAttributedString

- (TMLAttributedString)init
{
  v3.receiver = self;
  v3.super_class = TMLAttributedString;
  return [(TMLAttributedString *)&v3 init];
}

- (TMLAttributedString)initWithAttributedString:(id)string
{
  stringCopy = string;
  v5 = [(TMLAttributedString *)self init];
  if (v5)
  {
    v6 = [stringCopy mutableCopy];
    attributedString = v5->_attributedString;
    v5->_attributedString = v6;
  }

  return v5;
}

- (TMLAttributedString)attributedStringWithAttachment:(id)attachment
{
  v4 = [MEMORY[0x277CCA898] attributedStringWithAttachment:attachment];
  v5 = [v4 mutableCopy];
  attributedString = self->_attributedString;
  self->_attributedString = v5;

  return [(TMLAttributedString *)self NSAttributedString];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  attributedString = self->_attributedString;

  return [v4 initWithAttributedString:attributedString];
}

- (void)setString:(id)string
{
  v4 = MEMORY[0x277CCAB48];
  stringCopy = string;
  v6 = [[v4 alloc] initWithString:stringCopy];

  attributedString = self->_attributedString;
  self->_attributedString = v6;
}

- (id)NSAttributedString
{
  v2 = [(NSMutableAttributedString *)self->_attributedString copy];

  return v2;
}

+ (void)initializeJSContext:(id)context
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_26F1A051C;
  v10[3] = &unk_279DC5EC0;
  v10[4] = self;
  contextCopy = context;
  v5 = MEMORY[0x27438BB60](v10);
  [contextCopy setObject:v5 forKeyedSubscript:@"attributedstring"];

  v6 = [contextCopy objectForKeyedSubscript:@"attributedstring"];
  [v6 setObject:&unk_287F2BB10 forKeyedSubscript:@"attributes"];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_26F1A0648;
  v9[3] = &unk_279DC5F00;
  v9[4] = self;
  v7 = MEMORY[0x27438BB60](v9);
  v8 = [contextCopy objectForKeyedSubscript:@"attributedstring"];

  [v8 setObject:v7 forKeyedSubscript:@"markdown"];
}

+ (id)attributedStringWithFormat:(id)format attributes:(id)attributes
{
  attributesCopy = attributes;
  v6 = [format mutableCopy];
  v7 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:{objc_msgSend(v6, "length")}];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
  v42 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
  v9 = [v6 length];
  if (!v9)
  {
    goto LABEL_29;
  }

  v10 = v9;
  length = 0;
  location = 0;
  v13 = 0;
  v14 = 0;
  v41 = attributesCopy;
  v15 = 32;
  do
  {
    v16 = [v6 characterAtIndex:v14];
    v17 = v16;
    switch(v16)
    {
      case '/':
        if (v13 != 1)
        {
          goto LABEL_14;
        }

        v18 = 2;
        break;
      case ']':
        if (v15 == 92)
        {
          goto LABEL_9;
        }

        v18 = 0;
        if (v13 && length)
        {
          v19 = [v6 substringWithRange:{location, length}];
          if (v13 == 1 && ([v6 substringWithRange:{location - 1, 1}], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", @"/"), v21, (v22 & 1) == 0))
          {
            v29 = [MEMORY[0x277CCAE60] valueWithRange:{objc_msgSend(v7, "length"), 0}];
            [v8 addObject:v29];

            [v42 addObject:v19];
          }

          else
          {
            v47[0] = MEMORY[0x277D85DD0];
            v47[1] = 3221225472;
            v47[2] = sub_26F1A0C3C;
            v47[3] = &unk_279DC5F28;
            v19 = v19;
            v48 = v19;
            v23 = [v42 indexOfObjectWithOptions:2 passingTest:v47];
            if (v23 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v24 = v23;
              v25 = [v8 objectAtIndexedSubscript:v23];
              rangeValue = [v25 rangeValue];

              v27 = [v7 length];
              v28 = [MEMORY[0x277CCAE60] valueWithRange:{rangeValue, v27 - rangeValue}];
              [v8 replaceObjectAtIndex:v24 withObject:v28];
            }
          }

          v18 = 0;
          goto LABEL_24;
        }

        break;
      case '[':
        if (v15 == 92)
        {
LABEL_9:
          [v6 deleteCharactersInRange:{--v14, 1}];
          v10 = [v6 length];
LABEL_14:
          v49.location = location;
          v49.length = length;
          v50.location = v14;
          v50.length = 1;
          v20 = NSUnionRange(v49, v50);
          location = v20.location;
          length = v20.length;
          ++v14;
          goto LABEL_26;
        }

        v18 = 1;
        break;
      default:
        goto LABEL_14;
    }

    if (length)
    {
      v19 = [v6 substringWithRange:{location, length}];
      [v7 appendString:v19];
LABEL_24:
    }

    length = 0;
    ++v14;
    v13 = v18;
    location = v14;
LABEL_26:
    v15 = v17;
  }

  while (v14 < v10);
  attributesCopy = v41;
  if (length)
  {
    v30 = [v6 substringWithRange:{location, length}];
    [v7 appendString:v30];
  }

LABEL_29:
  v31 = [attributesCopy objectForKey:&stru_287F301C0];
  if ([v31 count])
  {
    v32 = objc_alloc_init(TMLAttributedString_Attributes);
    [(TMLAttributedString_Attributes *)v32 setValuesForKeysWithDictionary:v31];
    attributes = [(TMLAttributedString_Attributes *)v32 attributes];

    v31 = attributes;
  }

  v34 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v7 attributes:v31];
  [v34 beginEditing];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_26F1A0C6C;
  v43[3] = &unk_279DC5F50;
  v44 = v8;
  v45 = attributesCopy;
  v35 = v34;
  v46 = v35;
  v36 = attributesCopy;
  v37 = v8;
  [v42 enumerateObjectsUsingBlock:v43];
  [v35 endEditing];
  v38 = v46;
  v39 = v35;

  return v35;
}

- (id)enumerateAttribute:(id)attribute inRange:(_NSRange)range options:(unint64_t)options
{
  length = range.length;
  location = range.location;
  v9 = MEMORY[0x277CBEB18];
  attributeCopy = attribute;
  v11 = objc_alloc_init(v9);
  attributedString = self->_attributedString;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_26F1A0E58;
  v16[3] = &unk_279DC5F78;
  v17 = v11;
  v13 = v11;
  [(NSMutableAttributedString *)attributedString enumerateAttribute:attributeCopy inRange:location options:length usingBlock:options, v16];

  v14 = [v13 copy];

  return v14;
}

- (void)replaceCharactersInRange:(_NSRange)range withAttributedString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    attributedString = self->_attributedString;
    nSAttributedString = [stringCopy NSAttributedString];
    [(NSMutableAttributedString *)attributedString replaceCharactersInRange:location withAttributedString:length, nSAttributedString];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSMutableAttributedString *)self->_attributedString replaceCharactersInRange:location withAttributedString:length, stringCopy];
    }
  }
}

- (void)insertAttributedString:(id)string atIndex:(unint64_t)index
{
  stringCopy = string;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    attributedString = self->_attributedString;
    nSAttributedString = [stringCopy NSAttributedString];
    [(NSMutableAttributedString *)attributedString insertAttributedString:nSAttributedString atIndex:index];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSMutableAttributedString *)self->_attributedString insertAttributedString:stringCopy atIndex:index];
    }
  }
}

- (void)appendAttributedString:(id)string
{
  stringCopy = string;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    attributedString = self->_attributedString;
    nSAttributedString = [stringCopy NSAttributedString];
    [(NSMutableAttributedString *)attributedString appendAttributedString:nSAttributedString];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSMutableAttributedString *)self->_attributedString appendAttributedString:stringCopy];
    }
  }
}

- (CGSize)size
{
  [(NSMutableAttributedString *)self->_attributedString size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)boundingRectWithSize:(CGSize)size options:(int64_t)options
{
  MEMORY[0x2821F9670](self->_attributedString, sel_boundingRectWithSize_options_context_);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

@end
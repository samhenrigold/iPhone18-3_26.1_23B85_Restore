@interface VSAppDescription
- (BOOL)isEqual:(id)equal;
- (NSString)shortenedDisplayName;
- (VSAppDescription)init;
- (VSAppDescription)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)iconURLForSize:(CGSize)size;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VSAppDescription

- (VSAppDescription)init
{
  v6.receiver = self;
  v6.super_class = VSAppDescription;
  v2 = [(VSAppDescription *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = VSAppDescriptionValueType(v2);
    VSValueTypeInit();
  }

  return v3;
}

- (VSAppDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = VSAppDescription;
  v5 = [(VSAppDescription *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = VSAppDescriptionValueType(v5);
    VSValueTypeInitWithCoder();
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = VSAppDescriptionValueType(coderCopy);
  VSValueTypeEncodeWithCoder();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = VSAppDescriptionValueType(self);
  v4 = VSValueTypeCopyWithZone();

  return v4;
}

- (unint64_t)hash
{
  v2 = VSAppDescriptionValueType(self);
  v3 = VSValueTypeHash();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = VSAppDescriptionValueType(equalCopy);
  IsEqual = VSValueTypeIsEqual();

  return IsEqual;
}

- (id)description
{
  v2 = VSAppDescriptionValueType(self);
  v3 = VSValueTypeDescription();

  return v3;
}

- (id)iconURLForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  artworkURLTemplate = [(VSAppDescription *)self artworkURLTemplate];
  v6 = [artworkURLTemplate stringByReplacingOccurrencesOfString:@"{f}" withString:@"png"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:width];
  stringValue = [v7 stringValue];
  v9 = [v6 stringByReplacingOccurrencesOfString:@"{w}" withString:stringValue];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:height];
  stringValue2 = [v10 stringValue];
  v12 = [v9 stringByReplacingOccurrencesOfString:@"{h}" withString:stringValue2];

  v13 = [v12 stringByReplacingOccurrencesOfString:@"{c}" withString:&stru_2880B8BB0];

  if (v13)
  {
    v14 = [MEMORY[0x277CBEBC0] URLWithString:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSString)shortenedDisplayName
{
  v40 = *MEMORY[0x277D85DE8];
  displayName = [(VSAppDescription *)self displayName];
  if (displayName)
  {
    v3 = displayName;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v4 = [&unk_2880D2710 countByEnumeratingWithState:&v33 objects:v39 count:16];
    v5 = v3;
    if (v4)
    {
      v6 = v4;
      v7 = *v34;
      v5 = v3;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v34 != v7)
          {
            objc_enumerationMutation(&unk_2880D2710);
          }

          v9 = [v5 rangeOfString:*(*(&v33 + 1) + 8 * i)];
          if (v9 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v10 = [v5 substringToIndex:v9];

            v5 = v10;
          }
        }

        v6 = [&unk_2880D2710 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v6);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = [&unk_2880D2728 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(&unk_2880D2728);
          }

          v15 = *(*(&v29 + 1) + 8 * j);
          if ([v5 hasPrefix:v15])
          {
            v16 = [v5 substringFromIndex:{objc_msgSend(v15, "length")}];

            v5 = v16;
          }
        }

        v12 = [&unk_2880D2728 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v12);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = [&unk_2880D2740 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (k = 0; k != v18; ++k)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(&unk_2880D2740);
          }

          v21 = *(*(&v25 + 1) + 8 * k);
          if ([v5 hasSuffix:v21])
          {
            v22 = [v5 substringToIndex:{objc_msgSend(v5, "length") - objc_msgSend(v21, "length")}];

            v5 = v22;
          }
        }

        v18 = [&unk_2880D2740 countByEnumeratingWithState:&v25 objects:v37 count:16];
      }

      while (v18);
    }

    v23 = [v5 copy];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

@end
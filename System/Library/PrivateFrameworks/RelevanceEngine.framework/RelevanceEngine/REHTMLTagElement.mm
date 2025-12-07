@interface REHTMLTagElement
- (REHTMLTagElement)initWithTag:(id)tag content:(id)content;
- (id)_prefixContentString;
- (id)_suffixContentString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)elementByAddingClass:(id)class;
- (id)elementByAddingClasses:(id)classes;
- (id)elementBySettingAtttibutes:(id)atttibutes;
- (id)elementBySettingClasses:(id)classes;
@end

@implementation REHTMLTagElement

- (REHTMLTagElement)initWithTag:(id)tag content:(id)content
{
  tagCopy = tag;
  contentCopy = content;
  v16.receiver = self;
  v16.super_class = REHTMLTagElement;
  v8 = [(REHTMLElement *)&v16 init];
  if (v8)
  {
    v9 = [tagCopy copy];
    tag = v8->_tag;
    v8->_tag = v9;

    v11 = [contentCopy copy];
    content = v8->_content;
    v8->_content = v11;

    classes = v8->_classes;
    v8->_classes = MEMORY[0x277CBEBF8];

    attributes = v8->_attributes;
    v8->_attributes = MEMORY[0x277CBEC10];
  }

  return v8;
}

- (id)_prefixContentString
{
  v47 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__5;
  v43 = __Block_byref_object_dispose__5;
  v44 = 0;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __40__REHTMLTagElement__prefixContentString__block_invoke;
  v38[3] = &unk_2785FADB8;
  v38[4] = self;
  v38[5] = &v39;
  REHTMLElementAccessLock(v38);
  v2 = v40[5];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = self->_tag;
    v5 = [(NSDictionary *)self->_attributes count];
    v6 = 0x277CCA000;
    if (v5 || (v7 = [(NSArray *)self->_classes count], v6 = 0x277CCA000uLL, v7))
    {
      v8 = [*(v6 + 2920) stringWithString:{self->_tag, v4}];
      [v8 appendString:@" "];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v9 = self->_attributes;
      v10 = [(NSDictionary *)v9 countByEnumeratingWithState:&v34 objects:v46 count:16];
      if (v10)
      {
        v11 = *v35;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v35 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v34 + 1) + 8 * i);
            v14 = [(NSDictionary *)self->_attributes objectForKeyedSubscript:v13];
            [v8 appendString:v13];
            [v8 appendString:@"="];
            [v8 appendString:v14];
            [v8 appendString:@" "];
          }

          v10 = [(NSDictionary *)v9 countByEnumeratingWithState:&v34 objects:v46 count:16];
        }

        while (v10);
      }

      if ([(NSArray *)self->_classes count])
      {
        [v8 appendString:@"class="];
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v15 = self->_classes;
        v16 = [(NSArray *)v15 countByEnumeratingWithState:&v30 objects:v45 count:16];
        if (v16)
        {
          v17 = *v31;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v31 != v17)
              {
                objc_enumerationMutation(v15);
              }

              [v8 appendString:*(*(&v30 + 1) + 8 * j)];
              [v8 appendString:@" "];
            }

            v16 = [(NSArray *)v15 countByEnumeratingWithState:&v30 objects:v45 count:16];
          }

          while (v16);
        }

        [v8 appendString:@""];
      }

      v4 = [v8 copy];
    }

    v19 = v4;
    v20 = [(NSString *)v19 length];
    v21 = [@"<" length];
    v22 = [@">" length];
    v23 = [MEMORY[0x277CCAB68] stringWithCapacity:v21 + v20 + v22];
    [v23 appendString:@"<"];
    [v23 appendString:v19];
    [v23 appendString:@">"];
    v24 = [v23 copy];

    v25 = v40[5];
    v40[5] = v24;

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __40__REHTMLTagElement__prefixContentString__block_invoke_2;
    v29[3] = &unk_2785FADE0;
    v29[4] = self;
    v29[5] = &v39;
    REHTMLElementAccessLock(v29);
    v3 = v40[5];
  }

  _Block_object_dispose(&v39, 8);

  return v3;
}

- (id)_suffixContentString
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5;
  v20 = __Block_byref_object_dispose__5;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__REHTMLTagElement__suffixContentString__block_invoke;
  v15[3] = &unk_2785FADB8;
  v15[4] = self;
  v15[5] = &v16;
  REHTMLElementAccessLock(v15);
  v3 = v17[5];
  if (!v3)
  {
    _contentString = [(REHTMLTagElement *)self _contentString];

    if (_contentString)
    {
      v5 = self->_tag;
      v6 = [(NSString *)v5 length];
      v7 = [@"</" length];
      v8 = [@">" length];
      v9 = [MEMORY[0x277CCAB68] stringWithCapacity:v7 + v6 + v8];
      [v9 appendString:@"</"];
      [v9 appendString:v5];
      [v9 appendString:@">"];
      v10 = [v9 copy];
    }

    else
    {
      v10 = &stru_283B97458;
    }

    v11 = v17[5];
    v17[5] = v10;

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __40__REHTMLTagElement__suffixContentString__block_invoke_2;
    v14[3] = &unk_2785FADE0;
    v14[4] = self;
    v14[5] = &v16;
    REHTMLElementAccessLock(v14);
    v3 = v17[5];
  }

  v12 = v3;
  _Block_object_dispose(&v16, 8);

  return v12;
}

- (id)elementByAddingClass:(id)class
{
  classCopy = class;
  v5 = [(REHTMLTagElement *)self copy];
  v6 = [(NSArray *)self->_classes arrayByAddingObject:classCopy];

  v7 = v5[4];
  v5[4] = v6;

  return v5;
}

- (id)elementByAddingClasses:(id)classes
{
  classesCopy = classes;
  v5 = [(REHTMLTagElement *)self copy];
  v6 = [(NSArray *)self->_classes arrayByAddingObjectsFromArray:classesCopy];

  v7 = v5[4];
  v5[4] = v6;

  return v5;
}

- (id)elementBySettingClasses:(id)classes
{
  classesCopy = classes;
  v5 = [(REHTMLTagElement *)self copy];
  v6 = [classesCopy copy];

  v7 = v5[4];
  v5[4] = v6;

  return v5;
}

- (id)elementBySettingAtttibutes:(id)atttibutes
{
  atttibutesCopy = atttibutes;
  v5 = [(REHTMLTagElement *)self copy];
  v6 = [atttibutesCopy copy];

  v7 = v5[5];
  v5[5] = v6;

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = REHTMLTagElement;
  v4 = [(REHTMLElement *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 2, self->_tag);
  objc_storeStrong(v4 + 3, self->_content);
  objc_storeStrong(v4 + 5, self->_attributes);
  objc_storeStrong(v4 + 4, self->_classes);
  return v4;
}

@end
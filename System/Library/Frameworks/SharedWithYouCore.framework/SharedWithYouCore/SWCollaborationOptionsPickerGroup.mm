@interface SWCollaborationOptionsPickerGroup
+ (SWCollaborationOptionsPickerGroup)allocWithZone:(_NSZone *)zone;
- (SWCollaborationOptionsPickerGroup)initWithCoder:(id)coder;
- (SWCollaborationOptionsPickerGroup)initWithIdentifier:(id)identifier options:(id)options;
- (id)_defaultSelectedOptionIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setOptions:(id)options;
- (void)setSelectedOptionIdentifier:(NSString *)selectedOptionIdentifier;
@end

@implementation SWCollaborationOptionsPickerGroup

- (SWCollaborationOptionsPickerGroup)initWithIdentifier:(id)identifier options:(id)options
{
  v8.receiver = self;
  v8.super_class = SWCollaborationOptionsPickerGroup;
  v4 = [(SWCollaborationOptionsGroup *)&v8 initWithIdentifier:identifier options:options];
  v5 = v4;
  if (v4)
  {
    [(SWCollaborationOptionsGroup *)v4 setTitle:&stru_1F4E16F00];
    [(SWCollaborationOptionsGroup *)v5 setFooter:&stru_1F4E16F00];
    _defaultSelectedOptionIdentifier = [(SWCollaborationOptionsPickerGroup *)v5 _defaultSelectedOptionIdentifier];
    [(SWCollaborationOptionsPickerGroup *)v5 setSelectedOptionIdentifier:_defaultSelectedOptionIdentifier];
  }

  return v5;
}

+ (SWCollaborationOptionsPickerGroup)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [(SWCollaborationOptionsGroup *)_SWCollaborationOptionsPickerGroup allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SWCollaborationOptionsPickerGroup;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (id)_defaultSelectedOptionIdentifier
{
  options = [(SWCollaborationOptionsGroup *)self options];
  firstObject = [options firstObject];
  identifier = [firstObject identifier];
  v5 = identifier;
  if (identifier)
  {
    v6 = identifier;
  }

  else
  {
    v6 = &stru_1F4E16F00;
  }

  v7 = v6;

  return v6;
}

- (void)setOptions:(id)options
{
  v5.receiver = self;
  v5.super_class = SWCollaborationOptionsPickerGroup;
  [(SWCollaborationOptionsGroup *)&v5 setOptions:options];
  _defaultSelectedOptionIdentifier = [(SWCollaborationOptionsPickerGroup *)self _defaultSelectedOptionIdentifier];
  [(SWCollaborationOptionsPickerGroup *)self setSelectedOptionIdentifier:_defaultSelectedOptionIdentifier];
}

- (void)setSelectedOptionIdentifier:(NSString *)selectedOptionIdentifier
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = selectedOptionIdentifier;
  selectedOptionIdentifier = [(SWCollaborationOptionsPickerGroup *)self selectedOptionIdentifier];

  if (selectedOptionIdentifier != v5)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    options = [(SWCollaborationOptionsGroup *)self options];
    v8 = [options countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(options);
          }

          identifier = [*(*(&v25 + 1) + 8 * i) identifier];

          if (identifier == v5)
          {

            objc_storeStrong(&self->_selectedOptionIdentifier, selectedOptionIdentifier);
            self->_isUpdatingSelectionState = 1;
            v21 = 0u;
            v22 = 0u;
            v23 = 0u;
            v24 = 0u;
            options2 = [(SWCollaborationOptionsGroup *)self options];
            v14 = [options2 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v22;
              do
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v22 != v16)
                  {
                    objc_enumerationMutation(options2);
                  }

                  v18 = *(*(&v21 + 1) + 8 * j);
                  identifier2 = [v18 identifier];
                  v20 = identifier2 == v5;

                  [v18 setSelected:v20];
                }

                v15 = [options2 countByEnumeratingWithState:&v21 objects:v29 count:16];
              }

              while (v15);
            }

            self->_isUpdatingSelectionState = 0;
            goto LABEL_19;
          }
        }

        v9 = [options countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_19:
}

- (id)description
{
  v20 = *MEMORY[0x1E69E9840];
  title = [(SWCollaborationOptionsGroup *)self title];
  if (title)
  {
    title2 = [(SWCollaborationOptionsGroup *)self title];
    v5 = [title2 mutableCopy];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  options = [(SWCollaborationOptionsGroup *)self options];
  v7 = [options countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(options);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v5 length])
        {
          [v5 appendString:@"\n"];
        }

        [v5 appendFormat:@"- %@", v11];
      }

      v8 = [options countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  footer = [(SWCollaborationOptionsGroup *)self footer];

  if (footer)
  {
    footer2 = [(SWCollaborationOptionsGroup *)self footer];
    [v5 appendString:footer2];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SWCollaborationOptionsPickerGroup;
  v4 = [(SWCollaborationOptionsGroup *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setSelectedOptionIdentifier:self->_selectedOptionIdentifier];
  }

  return v5;
}

- (SWCollaborationOptionsPickerGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SWCollaborationOptionsPickerGroup;
  v5 = [(SWCollaborationOptionsGroup *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedOption"];
    unsignedIntegerValue = [v6 unsignedIntegerValue];
    options = [(SWCollaborationOptionsGroup *)v5 options];
    v9 = [options count];

    if (unsignedIntegerValue >= v9)
    {
      _defaultSelectedOptionIdentifier = [(SWCollaborationOptionsPickerGroup *)v5 _defaultSelectedOptionIdentifier];
    }

    else
    {
      options2 = [(SWCollaborationOptionsGroup *)v5 options];
      v11 = [options2 objectAtIndexedSubscript:unsignedIntegerValue];
      identifier = [v11 identifier];
      v13 = identifier;
      v14 = &stru_1F4E16F00;
      if (identifier)
      {
        v14 = identifier;
      }

      _defaultSelectedOptionIdentifier = v14;
    }

    [(SWCollaborationOptionsPickerGroup *)v5 setSelectedOptionIdentifier:_defaultSelectedOptionIdentifier];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = SWCollaborationOptionsPickerGroup;
  [(SWCollaborationOptionsGroup *)&v18 encodeWithCoder:coderCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  options = [(SWCollaborationOptionsGroup *)self options];
  v6 = [options countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = *v15;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(options);
      }

      v9 = *(*(&v14 + 1) + 8 * v8);
      identifier = [v9 identifier];
      selectedOptionIdentifier = self->_selectedOptionIdentifier;

      if (identifier == selectedOptionIdentifier)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [options countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    v6 = v9;

    if (v6)
    {
      options2 = [(SWCollaborationOptionsGroup *)self options];
      v13 = [options2 indexOfObject:v6];

      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        options = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
        [coderCopy encodeObject:options forKey:@"selectedOption"];
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
  }
}

@end
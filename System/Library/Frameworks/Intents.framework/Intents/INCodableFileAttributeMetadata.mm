@interface INCodableFileAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (INCodableFileAttributeMetadata)initWithCoder:(id)coder;
- (NSArray)UTIs;
- (id)__INCodableDescriptionCustomUTIsKey;
- (id)__INCodableDescriptionTypeKey;
- (id)__INIntentResponseCodableDescriptionCustomUTIsKey;
- (id)__INIntentResponseCodableDescriptionTypeKey;
- (id)__INTypeCodableDescriptionCustomUTIsKey;
- (id)__INTypeCodableDescriptionTypeKey;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodableFileAttributeMetadata

- (id)__INCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableFileAttributeMetadataTypeKey = [objc_opt_class() __INCodableFileAttributeMetadataTypeKey];

  return __INCodableFileAttributeMetadataTypeKey;
}

- (id)__INCodableDescriptionCustomUTIsKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableFileAttributeMetadataCustomUTIsKey = [objc_opt_class() __INCodableFileAttributeMetadataCustomUTIsKey];

  return __INCodableFileAttributeMetadataCustomUTIsKey;
}

- (INCodableFileAttributeMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = INCodableFileAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"customUTIs"];
    customUTIs = v5->_customUTIs;
    v5->_customUTIs = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INCodableFileAttributeMetadata;
  coderCopy = coder;
  [(INCodableAttributeMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_customUTIs forKey:@"customUTIs"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v12.receiver = self;
  v12.super_class = INCodableFileAttributeMetadata;
  v13 = 0;
  v6 = [(INCodableAttributeMetadata *)&v12 widgetPlistableRepresentationWithParameters:parameters error:&v13];
  v7 = v13;
  v8 = v7;
  if (v7)
  {
    if (error)
    {
      v9 = v7;
      v10 = 0;
      *error = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    [v6 intents_setPlistSafeObject:self->_type forKey:@"type"];
    [v6 intents_setPlistSafeObject:self->_customUTIs forKey:@"customUTIs"];
    v10 = [v6 copy];
  }

  return v10;
}

- (NSArray)UTIs
{
  v27[1] = *MEMORY[0x1E69E9840];
  type = [(INCodableFileAttributeMetadata *)self type];
  if ([type isEqualToString:@"PlainText"])
  {
    identifier = [*MEMORY[0x1E6982F40] identifier];
    v27[0] = identifier;
    v5 = MEMORY[0x1E695DEC8];
    v6 = v27;
LABEL_7:
    v7 = [v5 arrayWithObjects:v6 count:1];
LABEL_8:

    goto LABEL_9;
  }

  if ([type isEqualToString:@"RichText"])
  {
    identifier = [*MEMORY[0x1E6982F90] identifier];
    v26 = identifier;
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v26;
    goto LABEL_7;
  }

  if ([type isEqualToString:@"Image"])
  {
    identifier = [*MEMORY[0x1E6982E30] identifier];
    v25 = identifier;
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v25;
    goto LABEL_7;
  }

  if ([type isEqualToString:@"Custom"])
  {
    v19 = type;
    customUTIs = [(INCodableFileAttributeMetadata *)self customUTIs];
    v10 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    identifier = customUTIs;
    v11 = [identifier countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(identifier);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          if (v15)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = v15;
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }

          v17 = v16;

          v18 = [v17 objectForKey:@"UTI"];

          if (v18)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v10 addObject:v18];
            }
          }
        }

        v12 = [identifier countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    v7 = [v10 copy];
    type = v19;
    goto LABEL_8;
  }

  v7 = MEMORY[0x1E695E0F0];
LABEL_9:

  return v7;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v17[2] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = INCodableFileAttributeMetadata;
  v4 = [(INCodableAttributeMetadata *)&v15 dictionaryRepresentationWithLocalizer:localizer];
  __INCodableDescriptionTypeKey = [(INCodableFileAttributeMetadata *)self __INCodableDescriptionTypeKey];
  v16[0] = __INCodableDescriptionTypeKey;
  type = [(INCodableFileAttributeMetadata *)self type];
  null = type;
  if (!type)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = null;
  __INCodableDescriptionCustomUTIsKey = [(INCodableFileAttributeMetadata *)self __INCodableDescriptionCustomUTIsKey];
  v16[1] = __INCodableDescriptionCustomUTIsKey;
  customUTIs = [(INCodableFileAttributeMetadata *)self customUTIs];
  null2 = customUTIs;
  if (!customUTIs)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = null2;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v12 = [v4 if_dictionaryByAddingEntriesFromDictionary:v11];

  if (!customUTIs)
  {
  }

  if (!type)
  {
  }

  if_dictionaryWithNonEmptyValues = [v12 if_dictionaryWithNonEmptyValues];

  return if_dictionaryWithNonEmptyValues;
}

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = INCodableFileAttributeMetadata;
  [(INCodableAttributeMetadata *)&v15 updateWithDictionary:dictionaryCopy];
  __INCodableDescriptionTypeKey = [(INCodableFileAttributeMetadata *)self __INCodableDescriptionTypeKey];
  v6 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionTypeKey];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  type = self->_type;
  self->_type = v8;

  __INCodableDescriptionCustomUTIsKey = [(INCodableFileAttributeMetadata *)self __INCodableDescriptionCustomUTIsKey];
  v11 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionCustomUTIsKey];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  customUTIs = self->_customUTIs;
  self->_customUTIs = v13;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v17.receiver = self;
  v17.super_class = &OBJC_METACLASS___INCodableFileAttributeMetadata;
  v18 = 0;
  v7 = objc_msgSendSuper2(&v17, sel_makeFromWidgetPlistableRepresentation_error_, representationCopy, &v18);
  v8 = v18;
  v9 = v8;
  if (v8)
  {
    if (error)
    {
      v10 = v8;
      v11 = 0;
      *error = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = [representationCopy intents_stringForKey:@"type"];
    v13 = v7[5];
    v7[5] = v12;

    v14 = [representationCopy intents_safeObjectForKey:@"customUTIs" ofType:objc_opt_class()];
    v15 = v7[6];
    v7[6] = v14;

    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableFileAttributeMetadataTypeKey = [objc_opt_class() __INCodableFileAttributeMetadataTypeKey];

  return __INCodableFileAttributeMetadataTypeKey;
}

- (id)__INTypeCodableDescriptionCustomUTIsKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableFileAttributeMetadataCustomUTIsKey = [objc_opt_class() __INCodableFileAttributeMetadataCustomUTIsKey];

  return __INCodableFileAttributeMetadataCustomUTIsKey;
}

- (id)__INIntentResponseCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableFileAttributeMetadataTypeKey = [objc_opt_class() __INCodableFileAttributeMetadataTypeKey];

  return __INCodableFileAttributeMetadataTypeKey;
}

- (id)__INIntentResponseCodableDescriptionCustomUTIsKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableFileAttributeMetadataCustomUTIsKey = [objc_opt_class() __INCodableFileAttributeMetadataCustomUTIsKey];

  return __INCodableFileAttributeMetadataCustomUTIsKey;
}

@end
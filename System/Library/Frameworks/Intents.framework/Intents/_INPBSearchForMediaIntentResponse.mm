@interface _INPBSearchForMediaIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBSearchForMediaIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addMediaItems:(id)items;
- (void)encodeWithCoder:(id)coder;
- (void)setMediaItems:(id)items;
- (void)writeTo:(id)to;
@end

@implementation _INPBSearchForMediaIntentResponse

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_mediaItems count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_mediaItems;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"mediaItems"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    mediaItems = [(_INPBSearchForMediaIntentResponse *)self mediaItems];
    mediaItems2 = [equalCopy mediaItems];
    v7 = mediaItems2;
    if ((mediaItems != 0) != (mediaItems2 == 0))
    {
      mediaItems3 = [(_INPBSearchForMediaIntentResponse *)self mediaItems];
      if (!mediaItems3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = mediaItems3;
      mediaItems4 = [(_INPBSearchForMediaIntentResponse *)self mediaItems];
      mediaItems5 = [equalCopy mediaItems];
      v12 = [mediaItems4 isEqual:mediaItems5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSearchForMediaIntentResponse allocWithZone:](_INPBSearchForMediaIntentResponse init];
  v6 = [(NSArray *)self->_mediaItems copyWithZone:zone];
  [(_INPBSearchForMediaIntentResponse *)v5 setMediaItems:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSearchForMediaIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSearchForMediaIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSearchForMediaIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_mediaItems;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addMediaItems:(id)items
{
  itemsCopy = items;
  mediaItems = self->_mediaItems;
  v8 = itemsCopy;
  if (!mediaItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_mediaItems;
    self->_mediaItems = array;

    itemsCopy = v8;
    mediaItems = self->_mediaItems;
  }

  [(NSArray *)mediaItems addObject:itemsCopy];
}

- (void)setMediaItems:(id)items
{
  v4 = [items mutableCopy];
  mediaItems = self->_mediaItems;
  self->_mediaItems = v4;

  MEMORY[0x1EEE66BB8](v4, mediaItems);
}

@end
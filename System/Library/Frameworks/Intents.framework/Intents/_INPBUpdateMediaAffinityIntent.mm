@interface _INPBUpdateMediaAffinityIntent
- (BOOL)isEqual:(id)equal;
- (_INPBUpdateMediaAffinityIntent)initWithCoder:(id)coder;
- (id)affinityTypeAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAffinityType:(id)type;
- (unint64_t)hash;
- (void)addMediaItems:(id)items;
- (void)encodeWithCoder:(id)coder;
- (void)setAffinityType:(int)type;
- (void)setMediaItems:(id)items;
- (void)writeTo:(id)to;
@end

@implementation _INPBUpdateMediaAffinityIntent

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBUpdateMediaAffinityIntent *)self hasAffinityType])
  {
    affinityType = [(_INPBUpdateMediaAffinityIntent *)self affinityType];
    if (affinityType >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", affinityType];
    }

    else
    {
      v5 = off_1E72867E8[affinityType];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"affinityType"];
  }

  intentMetadata = [(_INPBUpdateMediaAffinityIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  if ([(NSArray *)self->_mediaItems count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = self->_mediaItems;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"mediaItems"];
  }

  mediaSearch = [(_INPBUpdateMediaAffinityIntent *)self mediaSearch];
  dictionaryRepresentation3 = [mediaSearch dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"mediaSearch"];

  privateUpdateMediaAffinityIntentData = [(_INPBUpdateMediaAffinityIntent *)self privateUpdateMediaAffinityIntentData];
  dictionaryRepresentation4 = [privateUpdateMediaAffinityIntentData dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"privateUpdateMediaAffinityIntentData"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBUpdateMediaAffinityIntent *)self hasAffinityType])
  {
    v3 = 2654435761 * self->_affinityType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  v5 = [(NSArray *)self->_mediaItems hash];
  v6 = v4 ^ v5 ^ [(_INPBMediaSearch *)self->_mediaSearch hash];
  return v6 ^ [(_INPBPrivateUpdateMediaAffinityIntentData *)self->_privateUpdateMediaAffinityIntentData hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  hasAffinityType = [(_INPBUpdateMediaAffinityIntent *)self hasAffinityType];
  if (hasAffinityType != [equalCopy hasAffinityType])
  {
    goto LABEL_26;
  }

  if ([(_INPBUpdateMediaAffinityIntent *)self hasAffinityType])
  {
    if ([equalCopy hasAffinityType])
    {
      affinityType = self->_affinityType;
      if (affinityType != [equalCopy affinityType])
      {
        goto LABEL_26;
      }
    }
  }

  intentMetadata = [(_INPBUpdateMediaAffinityIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_25;
  }

  intentMetadata3 = [(_INPBUpdateMediaAffinityIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v10 = intentMetadata3;
    intentMetadata4 = [(_INPBUpdateMediaAffinityIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v13 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v13)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBUpdateMediaAffinityIntent *)self mediaItems];
  intentMetadata2 = [equalCopy mediaItems];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_25;
  }

  mediaItems = [(_INPBUpdateMediaAffinityIntent *)self mediaItems];
  if (mediaItems)
  {
    v15 = mediaItems;
    mediaItems2 = [(_INPBUpdateMediaAffinityIntent *)self mediaItems];
    mediaItems3 = [equalCopy mediaItems];
    v18 = [mediaItems2 isEqual:mediaItems3];

    if (!v18)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBUpdateMediaAffinityIntent *)self mediaSearch];
  intentMetadata2 = [equalCopy mediaSearch];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_25;
  }

  mediaSearch = [(_INPBUpdateMediaAffinityIntent *)self mediaSearch];
  if (mediaSearch)
  {
    v20 = mediaSearch;
    mediaSearch2 = [(_INPBUpdateMediaAffinityIntent *)self mediaSearch];
    mediaSearch3 = [equalCopy mediaSearch];
    v23 = [mediaSearch2 isEqual:mediaSearch3];

    if (!v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBUpdateMediaAffinityIntent *)self privateUpdateMediaAffinityIntentData];
  intentMetadata2 = [equalCopy privateUpdateMediaAffinityIntentData];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    privateUpdateMediaAffinityIntentData = [(_INPBUpdateMediaAffinityIntent *)self privateUpdateMediaAffinityIntentData];
    if (!privateUpdateMediaAffinityIntentData)
    {

LABEL_29:
      v29 = 1;
      goto LABEL_27;
    }

    v25 = privateUpdateMediaAffinityIntentData;
    privateUpdateMediaAffinityIntentData2 = [(_INPBUpdateMediaAffinityIntent *)self privateUpdateMediaAffinityIntentData];
    privateUpdateMediaAffinityIntentData3 = [equalCopy privateUpdateMediaAffinityIntentData];
    v28 = [privateUpdateMediaAffinityIntentData2 isEqual:privateUpdateMediaAffinityIntentData3];

    if (v28)
    {
      goto LABEL_29;
    }
  }

  else
  {
LABEL_25:
  }

LABEL_26:
  v29 = 0;
LABEL_27:

  return v29;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBUpdateMediaAffinityIntent allocWithZone:](_INPBUpdateMediaAffinityIntent init];
  if ([(_INPBUpdateMediaAffinityIntent *)self hasAffinityType])
  {
    [(_INPBUpdateMediaAffinityIntent *)v5 setAffinityType:[(_INPBUpdateMediaAffinityIntent *)self affinityType]];
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBUpdateMediaAffinityIntent *)v5 setIntentMetadata:v6];

  v7 = [(NSArray *)self->_mediaItems copyWithZone:zone];
  [(_INPBUpdateMediaAffinityIntent *)v5 setMediaItems:v7];

  v8 = [(_INPBMediaSearch *)self->_mediaSearch copyWithZone:zone];
  [(_INPBUpdateMediaAffinityIntent *)v5 setMediaSearch:v8];

  v9 = [(_INPBPrivateUpdateMediaAffinityIntentData *)self->_privateUpdateMediaAffinityIntentData copyWithZone:zone];
  [(_INPBUpdateMediaAffinityIntent *)v5 setPrivateUpdateMediaAffinityIntentData:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBUpdateMediaAffinityIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBUpdateMediaAffinityIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBUpdateMediaAffinityIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_INPBUpdateMediaAffinityIntent *)self hasAffinityType])
  {
    PBDataWriterWriteInt32Field();
  }

  intentMetadata = [(_INPBUpdateMediaAffinityIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBUpdateMediaAffinityIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_mediaItems;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  mediaSearch = [(_INPBUpdateMediaAffinityIntent *)self mediaSearch];

  if (mediaSearch)
  {
    mediaSearch2 = [(_INPBUpdateMediaAffinityIntent *)self mediaSearch];
    PBDataWriterWriteSubmessage();
  }

  privateUpdateMediaAffinityIntentData = [(_INPBUpdateMediaAffinityIntent *)self privateUpdateMediaAffinityIntentData];

  if (privateUpdateMediaAffinityIntentData)
  {
    privateUpdateMediaAffinityIntentData2 = [(_INPBUpdateMediaAffinityIntent *)self privateUpdateMediaAffinityIntentData];
    PBDataWriterWriteSubmessage();
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

- (int)StringAsAffinityType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_AFFINITY_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"LIKE"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"DISLIKE"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)affinityTypeAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E72867E8[string];
  }

  return v4;
}

- (void)setAffinityType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_affinityType = type;
  }
}

@end
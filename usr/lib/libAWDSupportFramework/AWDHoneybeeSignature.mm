@interface AWDHoneybeeSignature
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addKeywords:(id)keywords;
- (void)addRadarAttachmentTypes:(id)types;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasInstances:(BOOL)instances;
- (void)writeTo:(id)to;
@end

@implementation AWDHoneybeeSignature

- (void)dealloc
{
  [(AWDHoneybeeSignature *)self setRadarTitle:0];
  [(AWDHoneybeeSignature *)self setRadarSignature:0];
  [(AWDHoneybeeSignature *)self setRadarDescription:0];
  [(AWDHoneybeeSignature *)self setRadarComponent:0];
  [(AWDHoneybeeSignature *)self setRadarVersion:0];
  [(AWDHoneybeeSignature *)self setRadarAttachmentUUID:0];
  [(AWDHoneybeeSignature *)self setRadarAttachmentTypes:0];
  [(AWDHoneybeeSignature *)self setRadarAttachmentFilename:0];
  [(AWDHoneybeeSignature *)self setKeywords:0];
  v3.receiver = self;
  v3.super_class = AWDHoneybeeSignature;
  [(AWDHoneybeeSignature *)&v3 dealloc];
}

- (void)addRadarAttachmentTypes:(id)types
{
  radarAttachmentTypes = self->_radarAttachmentTypes;
  if (!radarAttachmentTypes)
  {
    radarAttachmentTypes = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_radarAttachmentTypes = radarAttachmentTypes;
  }

  [(NSMutableArray *)radarAttachmentTypes addObject:types];
}

- (void)addKeywords:(id)keywords
{
  keywords = self->_keywords;
  if (!keywords)
  {
    keywords = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_keywords = keywords;
  }

  [(NSMutableArray *)keywords addObject:keywords];
}

- (void)setHasInstances:(BOOL)instances
{
  if (instances)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDHoneybeeSignature;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDHoneybeeSignature description](&v3, sel_description), -[AWDHoneybeeSignature dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  radarTitle = self->_radarTitle;
  if (radarTitle)
  {
    [dictionary setObject:radarTitle forKey:@"radarTitle"];
  }

  radarSignature = self->_radarSignature;
  if (radarSignature)
  {
    [dictionary setObject:radarSignature forKey:@"radarSignature"];
  }

  radarDescription = self->_radarDescription;
  if (radarDescription)
  {
    [dictionary setObject:radarDescription forKey:@"radarDescription"];
  }

  radarComponent = self->_radarComponent;
  if (radarComponent)
  {
    [dictionary setObject:radarComponent forKey:@"radarComponent"];
  }

  radarVersion = self->_radarVersion;
  if (radarVersion)
  {
    [dictionary setObject:radarVersion forKey:@"radarVersion"];
  }

  radarAttachmentUUID = self->_radarAttachmentUUID;
  if (radarAttachmentUUID)
  {
    [dictionary setObject:radarAttachmentUUID forKey:@"radarAttachmentUUID"];
  }

  radarAttachmentTypes = self->_radarAttachmentTypes;
  if (radarAttachmentTypes)
  {
    [dictionary setObject:radarAttachmentTypes forKey:@"radarAttachmentTypes"];
  }

  radarAttachmentFilename = self->_radarAttachmentFilename;
  if (radarAttachmentFilename)
  {
    [dictionary setObject:radarAttachmentFilename forKey:@"radarAttachmentFilename"];
  }

  keywords = self->_keywords;
  if (keywords)
  {
    [dictionary setObject:keywords forKey:@"keywords"];
  }

  if ((*&self->_has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_instances), @"instances"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v24 = *MEMORY[0x29EDCA608];
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_radarTitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_radarSignature)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_radarDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_radarComponent)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_radarVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_radarAttachmentUUID)
  {
    PBDataWriterWriteStringField();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  radarAttachmentTypes = self->_radarAttachmentTypes;
  v5 = [(NSMutableArray *)radarAttachmentTypes countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(radarAttachmentTypes);
        }

        PBDataWriterWriteStringField();
      }

      v6 = [(NSMutableArray *)radarAttachmentTypes countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v6);
  }

  if (self->_radarAttachmentFilename)
  {
    PBDataWriterWriteStringField();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  keywords = self->_keywords;
  v10 = [(NSMutableArray *)keywords countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(keywords);
        }

        PBDataWriterWriteStringField();
      }

      v11 = [(NSMutableArray *)keywords countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v11);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 96) |= 1u;
  }

  if (self->_radarTitle)
  {
    [to setRadarTitle:?];
  }

  if (self->_radarSignature)
  {
    [to setRadarSignature:?];
  }

  if (self->_radarDescription)
  {
    [to setRadarDescription:?];
  }

  if (self->_radarComponent)
  {
    [to setRadarComponent:?];
  }

  if (self->_radarVersion)
  {
    [to setRadarVersion:?];
  }

  if (self->_radarAttachmentUUID)
  {
    [to setRadarAttachmentUUID:?];
  }

  if ([(AWDHoneybeeSignature *)self radarAttachmentTypesCount])
  {
    [to clearRadarAttachmentTypes];
    radarAttachmentTypesCount = [(AWDHoneybeeSignature *)self radarAttachmentTypesCount];
    if (radarAttachmentTypesCount)
    {
      v6 = radarAttachmentTypesCount;
      for (i = 0; i != v6; ++i)
      {
        [to addRadarAttachmentTypes:{-[AWDHoneybeeSignature radarAttachmentTypesAtIndex:](self, "radarAttachmentTypesAtIndex:", i)}];
      }
    }
  }

  if (self->_radarAttachmentFilename)
  {
    [to setRadarAttachmentFilename:?];
  }

  if ([(AWDHoneybeeSignature *)self keywordsCount])
  {
    [to clearKeywords];
    keywordsCount = [(AWDHoneybeeSignature *)self keywordsCount];
    if (keywordsCount)
    {
      v9 = keywordsCount;
      for (j = 0; j != v9; ++j)
      {
        [to addKeywords:{-[AWDHoneybeeSignature keywordsAtIndex:](self, "keywordsAtIndex:", j)}];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(to + 4) = self->_instances;
    *(to + 96) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 96) |= 1u;
  }

  *(v6 + 80) = [(NSString *)self->_radarTitle copyWithZone:zone];
  *(v6 + 72) = [(NSString *)self->_radarSignature copyWithZone:zone];

  *(v6 + 64) = [(NSString *)self->_radarDescription copyWithZone:zone];
  *(v6 + 56) = [(NSString *)self->_radarComponent copyWithZone:zone];

  *(v6 + 88) = [(NSString *)self->_radarVersion copyWithZone:zone];
  *(v6 + 48) = [(NSString *)self->_radarAttachmentUUID copyWithZone:zone];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  radarAttachmentTypes = self->_radarAttachmentTypes;
  v8 = [(NSMutableArray *)radarAttachmentTypes countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(radarAttachmentTypes);
        }

        v12 = [*(*(&v24 + 1) + 8 * i) copyWithZone:zone];
        [v6 addRadarAttachmentTypes:v12];
      }

      v9 = [(NSMutableArray *)radarAttachmentTypes countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  *(v6 + 32) = [(NSString *)self->_radarAttachmentFilename copyWithZone:zone];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  keywords = self->_keywords;
  v14 = [(NSMutableArray *)keywords countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(keywords);
        }

        v18 = [*(*(&v20 + 1) + 8 * j) copyWithZone:zone];
        [v6 addKeywords:v18];
      }

      v15 = [(NSMutableArray *)keywords countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_instances;
    *(v6 + 96) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 96) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_29;
      }
    }

    else if (*(equal + 96))
    {
LABEL_29:
      LOBYTE(v5) = 0;
      return v5;
    }

    radarTitle = self->_radarTitle;
    if (!(radarTitle | *(equal + 10)) || (v5 = [(NSString *)radarTitle isEqual:?]) != 0)
    {
      radarSignature = self->_radarSignature;
      if (!(radarSignature | *(equal + 9)) || (v5 = [(NSString *)radarSignature isEqual:?]) != 0)
      {
        radarDescription = self->_radarDescription;
        if (!(radarDescription | *(equal + 8)) || (v5 = [(NSString *)radarDescription isEqual:?]) != 0)
        {
          radarComponent = self->_radarComponent;
          if (!(radarComponent | *(equal + 7)) || (v5 = [(NSString *)radarComponent isEqual:?]) != 0)
          {
            radarVersion = self->_radarVersion;
            if (!(radarVersion | *(equal + 11)) || (v5 = [(NSString *)radarVersion isEqual:?]) != 0)
            {
              radarAttachmentUUID = self->_radarAttachmentUUID;
              if (!(radarAttachmentUUID | *(equal + 6)) || (v5 = [(NSString *)radarAttachmentUUID isEqual:?]) != 0)
              {
                radarAttachmentTypes = self->_radarAttachmentTypes;
                if (!(radarAttachmentTypes | *(equal + 5)) || (v5 = [(NSMutableArray *)radarAttachmentTypes isEqual:?]) != 0)
                {
                  radarAttachmentFilename = self->_radarAttachmentFilename;
                  if (!(radarAttachmentFilename | *(equal + 4)) || (v5 = [(NSString *)radarAttachmentFilename isEqual:?]) != 0)
                  {
                    keywords = self->_keywords;
                    if (!(keywords | *(equal + 3)) || (v5 = [(NSMutableArray *)keywords isEqual:?]) != 0)
                    {
                      LOBYTE(v5) = (*(equal + 96) & 2) == 0;
                      if ((*&self->_has & 2) != 0)
                      {
                        if ((*(equal + 96) & 2) == 0 || self->_instances != *(equal + 4))
                        {
                          goto LABEL_29;
                        }

                        LOBYTE(v5) = 1;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v14 = 2654435761u * self->_timestamp;
  }

  else
  {
    v14 = 0;
  }

  v3 = [(NSString *)self->_radarTitle hash];
  v4 = [(NSString *)self->_radarSignature hash];
  v5 = [(NSString *)self->_radarDescription hash];
  v6 = [(NSString *)self->_radarComponent hash];
  v7 = [(NSString *)self->_radarVersion hash];
  v8 = [(NSString *)self->_radarAttachmentUUID hash];
  v9 = [(NSMutableArray *)self->_radarAttachmentTypes hash];
  v10 = [(NSString *)self->_radarAttachmentFilename hash];
  v11 = [(NSMutableArray *)self->_keywords hash];
  if ((*&self->_has & 2) != 0)
  {
    v12 = 2654435761 * self->_instances;
  }

  else
  {
    v12 = 0;
  }

  return v3 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  v25 = *MEMORY[0x29EDCA608];
  if (*(from + 96))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 10))
  {
    [(AWDHoneybeeSignature *)self setRadarTitle:?];
  }

  if (*(from + 9))
  {
    [(AWDHoneybeeSignature *)self setRadarSignature:?];
  }

  if (*(from + 8))
  {
    [(AWDHoneybeeSignature *)self setRadarDescription:?];
  }

  if (*(from + 7))
  {
    [(AWDHoneybeeSignature *)self setRadarComponent:?];
  }

  if (*(from + 11))
  {
    [(AWDHoneybeeSignature *)self setRadarVersion:?];
  }

  if (*(from + 6))
  {
    [(AWDHoneybeeSignature *)self setRadarAttachmentUUID:?];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = *(from + 5);
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDHoneybeeSignature *)self addRadarAttachmentTypes:*(*(&v19 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  if (*(from + 4))
  {
    [(AWDHoneybeeSignature *)self setRadarAttachmentFilename:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(from + 3);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(AWDHoneybeeSignature *)self addKeywords:*(*(&v15 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  if ((*(from + 96) & 2) != 0)
  {
    self->_instances = *(from + 4);
    *&self->_has |= 2u;
  }
}

@end
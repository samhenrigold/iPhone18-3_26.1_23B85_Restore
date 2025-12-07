@interface MXAudioFrame
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAudio:(id)audio;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MXAudioFrame

- (void)addAudio:(id)audio
{
  audioCopy = audio;
  audios = self->_audios;
  v8 = audioCopy;
  if (!audios)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_audios;
    self->_audios = v6;

    audioCopy = v8;
    audios = self->_audios;
  }

  [(NSMutableArray *)audios addObject:audioCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXAudioFrame;
  v4 = [(MXAudioFrame *)&v8 description];
  dictionaryRepresentation = [(MXAudioFrame *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  requestId = self->_requestId;
  if (requestId)
  {
    [dictionary setObject:requestId forKey:@"request_id"];
  }

  audios = self->_audios;
  if (audios)
  {
    [v4 setObject:audios forKey:@"audio"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_lastFrame];
    [v4 setObject:v7 forKey:@"last_frame"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_requestId)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_audios;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        PBDataWriterWriteDataField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_requestId)
  {
    [toCopy setRequestId:?];
  }

  if ([(MXAudioFrame *)self audiosCount])
  {
    [toCopy clearAudios];
    audiosCount = [(MXAudioFrame *)self audiosCount];
    if (audiosCount)
    {
      v5 = audiosCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(MXAudioFrame *)self audioAtIndex:i];
        [toCopy addAudio:v7];
      }
    }
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_lastFrame;
    toCopy[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_requestId copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_audios;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) copyWithZone:{zone, v15}];
        [v5 addAudio:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if (*&self->_has)
  {
    *(v5 + 24) = self->_lastFrame;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  requestId = self->_requestId;
  if (requestId | *(equalCopy + 2))
  {
    if (![(NSString *)requestId isEqual:?])
    {
      goto LABEL_8;
    }
  }

  audios = self->_audios;
  if (audios | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)audios isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_lastFrame)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_8;
    }

    v7 = 1;
  }

LABEL_9:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestId hash];
  v4 = [(NSMutableArray *)self->_audios hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_lastFrame;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(MXAudioFrame *)self setRequestId:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 1);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(MXAudioFrame *)self addAudio:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 28))
  {
    self->_lastFrame = *(fromCopy + 24);
    *&self->_has |= 1u;
  }
}

@end
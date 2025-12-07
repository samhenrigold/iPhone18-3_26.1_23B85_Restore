@interface _MRPlaybackQueueRequestProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addContentItemIdentifiers:(id)identifiers;
- (void)addRequestedAnimatedArtworkAssetURLFormats:(id)formats;
- (void)addRequestedAnimatedArtworkPreviewFrameFormats:(id)formats;
- (void)addRequestedArtworkFormats:(id)formats;
- (void)addRequestedRemoteArtworkFormats:(id)formats;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasArtworkWidth:(BOOL)width;
- (void)setHasCachingPolicy:(BOOL)policy;
- (void)setHasIncludeAlignments:(BOOL)alignments;
- (void)setHasIncludeAvailableArtworkFormats:(BOOL)formats;
- (void)setHasIncludeInfo:(BOOL)info;
- (void)setHasIncludeLanguageOptions:(BOOL)options;
- (void)setHasIncludeLyrics:(BOOL)lyrics;
- (void)setHasIncludeMetadata:(BOOL)metadata;
- (void)setHasIncludeParticipants:(BOOL)participants;
- (void)setHasIncludeSections:(BOOL)sections;
- (void)setHasIsLegacyNowPlayingInfoRequest:(BOOL)request;
- (void)setHasLength:(BOOL)length;
- (void)setHasLocation:(BOOL)location;
- (void)setHasReturnContentItemAssetsInUserCompletion:(BOOL)completion;
- (void)writeTo:(id)to;
@end

@implementation _MRPlaybackQueueRequestProtobuf

- (void)setHasLocation:(BOOL)location
{
  if (location)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasLength:(BOOL)length
{
  if (length)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasIncludeMetadata:(BOOL)metadata
{
  if (metadata)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasArtworkWidth:(BOOL)width
{
  if (width)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasIncludeLyrics:(BOOL)lyrics
{
  if (lyrics)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasIncludeSections:(BOOL)sections
{
  if (sections)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasIncludeInfo:(BOOL)info
{
  if (info)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasIncludeLanguageOptions:(BOOL)options
{
  if (options)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)addContentItemIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  contentItemIdentifiers = self->_contentItemIdentifiers;
  v8 = identifiersCopy;
  if (!contentItemIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_contentItemIdentifiers;
    self->_contentItemIdentifiers = v6;

    identifiersCopy = v8;
    contentItemIdentifiers = self->_contentItemIdentifiers;
  }

  [(NSMutableArray *)contentItemIdentifiers addObject:identifiersCopy];
}

- (void)setHasReturnContentItemAssetsInUserCompletion:(BOOL)completion
{
  if (completion)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasCachingPolicy:(BOOL)policy
{
  if (policy)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasIsLegacyNowPlayingInfoRequest:(BOOL)request
{
  if (request)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasIncludeParticipants:(BOOL)participants
{
  if (participants)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasIncludeAvailableArtworkFormats:(BOOL)formats
{
  if (formats)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)addRequestedArtworkFormats:(id)formats
{
  formatsCopy = formats;
  requestedArtworkFormats = self->_requestedArtworkFormats;
  v8 = formatsCopy;
  if (!requestedArtworkFormats)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_requestedArtworkFormats;
    self->_requestedArtworkFormats = v6;

    formatsCopy = v8;
    requestedArtworkFormats = self->_requestedArtworkFormats;
  }

  [(NSMutableArray *)requestedArtworkFormats addObject:formatsCopy];
}

- (void)addRequestedRemoteArtworkFormats:(id)formats
{
  formatsCopy = formats;
  requestedRemoteArtworkFormats = self->_requestedRemoteArtworkFormats;
  v8 = formatsCopy;
  if (!requestedRemoteArtworkFormats)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_requestedRemoteArtworkFormats;
    self->_requestedRemoteArtworkFormats = v6;

    formatsCopy = v8;
    requestedRemoteArtworkFormats = self->_requestedRemoteArtworkFormats;
  }

  [(NSMutableArray *)requestedRemoteArtworkFormats addObject:formatsCopy];
}

- (void)setHasIncludeAlignments:(BOOL)alignments
{
  if (alignments)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)addRequestedAnimatedArtworkPreviewFrameFormats:(id)formats
{
  formatsCopy = formats;
  requestedAnimatedArtworkPreviewFrameFormats = self->_requestedAnimatedArtworkPreviewFrameFormats;
  v8 = formatsCopy;
  if (!requestedAnimatedArtworkPreviewFrameFormats)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_requestedAnimatedArtworkPreviewFrameFormats;
    self->_requestedAnimatedArtworkPreviewFrameFormats = v6;

    formatsCopy = v8;
    requestedAnimatedArtworkPreviewFrameFormats = self->_requestedAnimatedArtworkPreviewFrameFormats;
  }

  [(NSMutableArray *)requestedAnimatedArtworkPreviewFrameFormats addObject:formatsCopy];
}

- (void)addRequestedAnimatedArtworkAssetURLFormats:(id)formats
{
  formatsCopy = formats;
  requestedAnimatedArtworkAssetURLFormats = self->_requestedAnimatedArtworkAssetURLFormats;
  v8 = formatsCopy;
  if (!requestedAnimatedArtworkAssetURLFormats)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_requestedAnimatedArtworkAssetURLFormats;
    self->_requestedAnimatedArtworkAssetURLFormats = v6;

    formatsCopy = v8;
    requestedAnimatedArtworkAssetURLFormats = self->_requestedAnimatedArtworkAssetURLFormats;
  }

  [(NSMutableArray *)requestedAnimatedArtworkAssetURLFormats addObject:formatsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPlaybackQueueRequestProtobuf;
  v4 = [(_MRPlaybackQueueRequestProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRPlaybackQueueRequestProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithInt:self->_location];
    [dictionary setObject:v23 forKey:@"location"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithInt:self->_length];
  [dictionary setObject:v24 forKey:@"length"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  v25 = [MEMORY[0x1E696AD98] numberWithBool:self->_includeMetadata];
  [dictionary setObject:v25 forKey:@"includeMetadata"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  v26 = [MEMORY[0x1E696AD98] numberWithDouble:self->_artworkWidth];
  [dictionary setObject:v26 forKey:@"artworkWidth"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  v27 = [MEMORY[0x1E696AD98] numberWithDouble:self->_artworkHeight];
  [dictionary setObject:v27 forKey:@"artworkHeight"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  v28 = [MEMORY[0x1E696AD98] numberWithBool:self->_includeLyrics];
  [dictionary setObject:v28 forKey:@"includeLyrics"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  v29 = [MEMORY[0x1E696AD98] numberWithBool:self->_includeSections];
  [dictionary setObject:v29 forKey:@"includeSections"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_49:
  v30 = [MEMORY[0x1E696AD98] numberWithBool:self->_includeInfo];
  [dictionary setObject:v30 forKey:@"includeInfo"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_includeLanguageOptions];
    [dictionary setObject:v5 forKey:@"includeLanguageOptions"];
  }

LABEL_11:
  context = self->_context;
  if (context)
  {
    dictionaryRepresentation = [(_MRPlaybackQueueContextProtobuf *)context dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"context"];
  }

  requestID = self->_requestID;
  if (requestID)
  {
    [dictionary setObject:requestID forKey:@"requestID"];
  }

  contentItemIdentifiers = self->_contentItemIdentifiers;
  if (contentItemIdentifiers)
  {
    [dictionary setObject:contentItemIdentifiers forKey:@"contentItemIdentifiers"];
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_returnContentItemAssetsInUserCompletion];
    [dictionary setObject:v10 forKey:@"returnContentItemAssetsInUserCompletion"];
  }

  playerPath = self->_playerPath;
  if (playerPath)
  {
    dictionaryRepresentation2 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"playerPath"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:self->_cachingPolicy];
    [dictionary setObject:v13 forKey:@"cachingPolicy"];
  }

  label = self->_label;
  if (label)
  {
    [dictionary setObject:label forKey:@"label"];
  }

  v15 = self->_has;
  if ((v15 & 0x2000) != 0)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLegacyNowPlayingInfoRequest];
    [dictionary setObject:v31 forKey:@"isLegacyNowPlayingInfoRequest"];

    v15 = self->_has;
    if ((v15 & 0x800) == 0)
    {
LABEL_27:
      if ((v15 & 0x40) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_27;
  }

  v32 = [MEMORY[0x1E696AD98] numberWithBool:self->_includeParticipants];
  [dictionary setObject:v32 forKey:@"includeParticipants"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_28:
    v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_includeAvailableArtworkFormats];
    [dictionary setObject:v16 forKey:@"includeAvailableArtworkFormats"];
  }

LABEL_29:
  requestedArtworkFormats = self->_requestedArtworkFormats;
  if (requestedArtworkFormats)
  {
    [dictionary setObject:requestedArtworkFormats forKey:@"requestedArtworkFormats"];
  }

  requestedRemoteArtworkFormats = self->_requestedRemoteArtworkFormats;
  if (requestedRemoteArtworkFormats)
  {
    [dictionary setObject:requestedRemoteArtworkFormats forKey:@"requestedRemoteArtworkFormats"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_includeAlignments];
    [dictionary setObject:v19 forKey:@"includeAlignments"];
  }

  requestedAnimatedArtworkPreviewFrameFormats = self->_requestedAnimatedArtworkPreviewFrameFormats;
  if (requestedAnimatedArtworkPreviewFrameFormats)
  {
    [dictionary setObject:requestedAnimatedArtworkPreviewFrameFormats forKey:@"requestedAnimatedArtworkPreviewFrameFormats"];
  }

  requestedAnimatedArtworkAssetURLFormats = self->_requestedAnimatedArtworkAssetURLFormats;
  if (requestedAnimatedArtworkAssetURLFormats)
  {
    [dictionary setObject:requestedAnimatedArtworkAssetURLFormats forKey:@"requestedAnimatedArtworkAssetURLFormats"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v57 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_67;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_68;
  }

LABEL_67:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_69;
  }

LABEL_68:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_70;
  }

LABEL_69:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_71;
  }

LABEL_70:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_72;
  }

LABEL_71:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_72:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    PBDataWriterWriteBOOLField();
  }

LABEL_11:
  if (self->_context)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_requestID)
  {
    PBDataWriterWriteStringField();
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = self->_contentItemIdentifiers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v49;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteStringField();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v8);
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_playerPath)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_label)
  {
    PBDataWriterWriteStringField();
  }

  v11 = self->_has;
  if ((v11 & 0x2000) != 0)
  {
    PBDataWriterWriteBOOLField();
    v11 = self->_has;
    if ((v11 & 0x800) == 0)
    {
LABEL_32:
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_32;
  }

  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_33:
    PBDataWriterWriteBOOLField();
  }

LABEL_34:
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = self->_requestedArtworkFormats;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v45;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteStringField();
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v44 objects:v55 count:16];
    }

    while (v14);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v17 = self->_requestedRemoteArtworkFormats;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v41;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(v17);
        }

        PBDataWriterWriteStringField();
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v40 objects:v54 count:16];
    }

    while (v19);
  }

  if ((*&self->_has & 0x20) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v22 = self->_requestedAnimatedArtworkPreviewFrameFormats;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v36 objects:v53 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v37;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(v22);
        }

        PBDataWriterWriteStringField();
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v36 objects:v53 count:16];
    }

    while (v24);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v27 = self->_requestedAnimatedArtworkAssetURLFormats;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v32 objects:v52 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v33;
    do
    {
      for (n = 0; n != v29; ++n)
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(v27);
        }

        PBDataWriterWriteStringField();
      }

      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v32 objects:v52 count:16];
    }

    while (v29);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    toCopy[15] = self->_location;
    *(toCopy + 62) |= 0x10u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_54;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  toCopy[14] = self->_length;
  *(toCopy + 62) |= 8u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(toCopy + 117) = self->_includeMetadata;
  *(toCopy + 62) |= 0x400u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(toCopy + 2) = *&self->_artworkWidth;
  *(toCopy + 62) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(toCopy + 1) = *&self->_artworkHeight;
  *(toCopy + 62) |= 1u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(toCopy + 116) = self->_includeLyrics;
  *(toCopy + 62) |= 0x200u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(toCopy + 119) = self->_includeSections;
  *(toCopy + 62) |= 0x1000u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_59:
  *(toCopy + 114) = self->_includeInfo;
  *(toCopy + 62) |= 0x80u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    *(toCopy + 115) = self->_includeLanguageOptions;
    *(toCopy + 62) |= 0x100u;
  }

LABEL_11:
  v28 = toCopy;
  if (self->_context)
  {
    [toCopy setContext:?];
  }

  if (self->_requestID)
  {
    [v28 setRequestID:?];
  }

  if ([(_MRPlaybackQueueRequestProtobuf *)self contentItemIdentifiersCount])
  {
    [v28 clearContentItemIdentifiers];
    contentItemIdentifiersCount = [(_MRPlaybackQueueRequestProtobuf *)self contentItemIdentifiersCount];
    if (contentItemIdentifiersCount)
    {
      v7 = contentItemIdentifiersCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(_MRPlaybackQueueRequestProtobuf *)self contentItemIdentifiersAtIndex:i];
        [v28 addContentItemIdentifiers:v9];
      }
    }
  }

  v10 = v28;
  if ((*&self->_has & 0x4000) != 0)
  {
    *(v28 + 121) = self->_returnContentItemAssetsInUserCompletion;
    *(v28 + 62) |= 0x4000u;
  }

  if (self->_playerPath)
  {
    [v28 setPlayerPath:?];
    v10 = v28;
  }

  if ((*&self->_has & 4) != 0)
  {
    v10[6] = self->_cachingPolicy;
    *(v10 + 62) |= 4u;
  }

  if (self->_label)
  {
    [v28 setLabel:?];
    v10 = v28;
  }

  v11 = self->_has;
  if ((v11 & 0x2000) == 0)
  {
    if ((*&self->_has & 0x800) == 0)
    {
      goto LABEL_29;
    }

LABEL_62:
    *(v10 + 118) = self->_includeParticipants;
    *(v10 + 62) |= 0x800u;
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  *(v10 + 120) = self->_isLegacyNowPlayingInfoRequest;
  *(v10 + 62) |= 0x2000u;
  v11 = self->_has;
  if ((v11 & 0x800) != 0)
  {
    goto LABEL_62;
  }

LABEL_29:
  if ((v11 & 0x40) != 0)
  {
LABEL_30:
    *(v10 + 113) = self->_includeAvailableArtworkFormats;
    *(v10 + 62) |= 0x40u;
  }

LABEL_31:
  if ([(_MRPlaybackQueueRequestProtobuf *)self requestedArtworkFormatsCount])
  {
    [v28 clearRequestedArtworkFormats];
    requestedArtworkFormatsCount = [(_MRPlaybackQueueRequestProtobuf *)self requestedArtworkFormatsCount];
    if (requestedArtworkFormatsCount)
    {
      v13 = requestedArtworkFormatsCount;
      for (j = 0; j != v13; ++j)
      {
        v15 = [(_MRPlaybackQueueRequestProtobuf *)self requestedArtworkFormatsAtIndex:j];
        [v28 addRequestedArtworkFormats:v15];
      }
    }
  }

  if ([(_MRPlaybackQueueRequestProtobuf *)self requestedRemoteArtworkFormatsCount])
  {
    [v28 clearRequestedRemoteArtworkFormats];
    requestedRemoteArtworkFormatsCount = [(_MRPlaybackQueueRequestProtobuf *)self requestedRemoteArtworkFormatsCount];
    if (requestedRemoteArtworkFormatsCount)
    {
      v17 = requestedRemoteArtworkFormatsCount;
      for (k = 0; k != v17; ++k)
      {
        v19 = [(_MRPlaybackQueueRequestProtobuf *)self requestedRemoteArtworkFormatsAtIndex:k];
        [v28 addRequestedRemoteArtworkFormats:v19];
      }
    }
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(v28 + 112) = self->_includeAlignments;
    *(v28 + 62) |= 0x20u;
  }

  if ([(_MRPlaybackQueueRequestProtobuf *)self requestedAnimatedArtworkPreviewFrameFormatsCount])
  {
    [v28 clearRequestedAnimatedArtworkPreviewFrameFormats];
    requestedAnimatedArtworkPreviewFrameFormatsCount = [(_MRPlaybackQueueRequestProtobuf *)self requestedAnimatedArtworkPreviewFrameFormatsCount];
    if (requestedAnimatedArtworkPreviewFrameFormatsCount)
    {
      v21 = requestedAnimatedArtworkPreviewFrameFormatsCount;
      for (m = 0; m != v21; ++m)
      {
        v23 = [(_MRPlaybackQueueRequestProtobuf *)self requestedAnimatedArtworkPreviewFrameFormatsAtIndex:m];
        [v28 addRequestedAnimatedArtworkPreviewFrameFormats:v23];
      }
    }
  }

  if ([(_MRPlaybackQueueRequestProtobuf *)self requestedAnimatedArtworkAssetURLFormatsCount])
  {
    [v28 clearRequestedAnimatedArtworkAssetURLFormats];
    requestedAnimatedArtworkAssetURLFormatsCount = [(_MRPlaybackQueueRequestProtobuf *)self requestedAnimatedArtworkAssetURLFormatsCount];
    if (requestedAnimatedArtworkAssetURLFormatsCount)
    {
      v25 = requestedAnimatedArtworkAssetURLFormatsCount;
      for (n = 0; n != v25; ++n)
      {
        v27 = [(_MRPlaybackQueueRequestProtobuf *)self requestedAnimatedArtworkAssetURLFormatsAtIndex:n];
        [v28 addRequestedAnimatedArtworkAssetURLFormats:v27];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v73 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 60) = self->_location;
    *(v5 + 124) |= 0x10u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_59;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 56) = self->_length;
  *(v5 + 124) |= 8u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v5 + 117) = self->_includeMetadata;
  *(v5 + 124) |= 0x400u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v5 + 16) = self->_artworkWidth;
  *(v5 + 124) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v5 + 8) = self->_artworkHeight;
  *(v5 + 124) |= 1u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v5 + 116) = self->_includeLyrics;
  *(v5 + 124) |= 0x200u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v5 + 119) = self->_includeSections;
  *(v5 + 124) |= 0x1000u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_64:
  *(v5 + 114) = self->_includeInfo;
  *(v5 + 124) |= 0x80u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    *(v5 + 115) = self->_includeLanguageOptions;
    *(v5 + 124) |= 0x100u;
  }

LABEL_11:
  v8 = [(_MRPlaybackQueueContextProtobuf *)self->_context copyWithZone:zone];
  v9 = *(v6 + 40);
  *(v6 + 40) = v8;

  v10 = [(NSString *)self->_requestID copyWithZone:zone];
  v11 = *(v6 + 72);
  *(v6 + 72) = v10;

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v12 = self->_contentItemIdentifiers;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v64 objects:v72 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v65;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v65 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v64 + 1) + 8 * i) copyWithZone:zone];
        [v6 addContentItemIdentifiers:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v64 objects:v72 count:16];
    }

    while (v14);
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    *(v6 + 121) = self->_returnContentItemAssetsInUserCompletion;
    *(v6 + 124) |= 0x4000u;
  }

  v18 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:zone];
  v19 = *(v6 + 64);
  *(v6 + 64) = v18;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 24) = self->_cachingPolicy;
    *(v6 + 124) |= 4u;
  }

  v20 = [(NSString *)self->_label copyWithZone:zone];
  v21 = *(v6 + 48);
  *(v6 + 48) = v20;

  v22 = self->_has;
  if ((v22 & 0x2000) != 0)
  {
    *(v6 + 120) = self->_isLegacyNowPlayingInfoRequest;
    *(v6 + 124) |= 0x2000u;
    v22 = self->_has;
    if ((v22 & 0x800) == 0)
    {
LABEL_24:
      if ((v22 & 0x40) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_24;
  }

  *(v6 + 118) = self->_includeParticipants;
  *(v6 + 124) |= 0x800u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_25:
    *(v6 + 113) = self->_includeAvailableArtworkFormats;
    *(v6 + 124) |= 0x40u;
  }

LABEL_26:
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v23 = self->_requestedArtworkFormats;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v60 objects:v71 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v61;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v61 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v60 + 1) + 8 * j) copyWithZone:zone];
        [v6 addRequestedArtworkFormats:v28];
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v60 objects:v71 count:16];
    }

    while (v25);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v29 = self->_requestedRemoteArtworkFormats;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v56 objects:v70 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v57;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v57 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [*(*(&v56 + 1) + 8 * k) copyWithZone:zone];
        [v6 addRequestedRemoteArtworkFormats:v34];
      }

      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v56 objects:v70 count:16];
    }

    while (v31);
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(v6 + 112) = self->_includeAlignments;
    *(v6 + 124) |= 0x20u;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v35 = self->_requestedAnimatedArtworkPreviewFrameFormats;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v52 objects:v69 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v53;
    do
    {
      for (m = 0; m != v37; ++m)
      {
        if (*v53 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [*(*(&v52 + 1) + 8 * m) copyWithZone:zone];
        [v6 addRequestedAnimatedArtworkPreviewFrameFormats:v40];
      }

      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v52 objects:v69 count:16];
    }

    while (v37);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v41 = self->_requestedAnimatedArtworkAssetURLFormats;
  v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v48 objects:v68 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v49;
    do
    {
      for (n = 0; n != v43; ++n)
      {
        if (*v49 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = [*(*(&v48 + 1) + 8 * n) copyWithZone:{zone, v48}];
        [v6 addRequestedAnimatedArtworkAssetURLFormats:v46];
      }

      v43 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v48 objects:v68 count:16];
    }

    while (v43);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_122;
  }

  has = self->_has;
  v6 = *(equalCopy + 62);
  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_location != *(equalCopy + 15))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_122;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_length != *(equalCopy + 14))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_122;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 62) & 0x400) == 0)
    {
      goto LABEL_122;
    }

    if (self->_includeMetadata)
    {
      if ((*(equalCopy + 117) & 1) == 0)
      {
        goto LABEL_122;
      }
    }

    else if (*(equalCopy + 117))
    {
      goto LABEL_122;
    }
  }

  else if ((*(equalCopy + 62) & 0x400) != 0)
  {
    goto LABEL_122;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_artworkWidth != *(equalCopy + 2))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_122;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_artworkHeight != *(equalCopy + 1))
    {
      goto LABEL_122;
    }
  }

  else if (v6)
  {
    goto LABEL_122;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 62) & 0x200) == 0)
    {
      goto LABEL_122;
    }

    if (self->_includeLyrics)
    {
      if ((*(equalCopy + 116) & 1) == 0)
      {
        goto LABEL_122;
      }
    }

    else if (*(equalCopy + 116))
    {
      goto LABEL_122;
    }
  }

  else if ((*(equalCopy + 62) & 0x200) != 0)
  {
    goto LABEL_122;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(equalCopy + 62) & 0x1000) == 0)
    {
      goto LABEL_122;
    }

    if (self->_includeSections)
    {
      if ((*(equalCopy + 119) & 1) == 0)
      {
        goto LABEL_122;
      }
    }

    else if (*(equalCopy + 119))
    {
      goto LABEL_122;
    }
  }

  else if ((*(equalCopy + 62) & 0x1000) != 0)
  {
    goto LABEL_122;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_122;
    }

    if (self->_includeInfo)
    {
      if ((*(equalCopy + 114) & 1) == 0)
      {
        goto LABEL_122;
      }
    }

    else if (*(equalCopy + 114))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_122;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 62) & 0x100) == 0)
    {
      goto LABEL_122;
    }

    if (self->_includeLanguageOptions)
    {
      if ((*(equalCopy + 115) & 1) == 0)
      {
        goto LABEL_122;
      }
    }

    else if (*(equalCopy + 115))
    {
      goto LABEL_122;
    }
  }

  else if ((*(equalCopy + 62) & 0x100) != 0)
  {
    goto LABEL_122;
  }

  context = self->_context;
  if (context | *(equalCopy + 5) && ![(_MRPlaybackQueueContextProtobuf *)context isEqual:?])
  {
    goto LABEL_122;
  }

  requestID = self->_requestID;
  if (requestID | *(equalCopy + 9))
  {
    if (![(NSString *)requestID isEqual:?])
    {
      goto LABEL_122;
    }
  }

  contentItemIdentifiers = self->_contentItemIdentifiers;
  if (contentItemIdentifiers | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)contentItemIdentifiers isEqual:?])
    {
      goto LABEL_122;
    }
  }

  v10 = self->_has;
  if ((v10 & 0x4000) != 0)
  {
    if ((*(equalCopy + 62) & 0x4000) == 0)
    {
      goto LABEL_122;
    }

    if (self->_returnContentItemAssetsInUserCompletion)
    {
      if ((*(equalCopy + 121) & 1) == 0)
      {
        goto LABEL_122;
      }
    }

    else if (*(equalCopy + 121))
    {
      goto LABEL_122;
    }
  }

  else if ((*(equalCopy + 62) & 0x4000) != 0)
  {
    goto LABEL_122;
  }

  playerPath = self->_playerPath;
  if (playerPath | *(equalCopy + 8))
  {
    if (![(_MRNowPlayingPlayerPathProtobuf *)playerPath isEqual:?])
    {
      goto LABEL_122;
    }

    v10 = self->_has;
  }

  v12 = *(equalCopy + 62);
  if ((v10 & 4) != 0)
  {
    if ((v12 & 4) == 0 || self->_cachingPolicy != *(equalCopy + 6))
    {
      goto LABEL_122;
    }
  }

  else if ((v12 & 4) != 0)
  {
    goto LABEL_122;
  }

  label = self->_label;
  if (label | *(equalCopy + 6))
  {
    if (![(NSString *)label isEqual:?])
    {
      goto LABEL_122;
    }

    v10 = self->_has;
  }

  v14 = *(equalCopy + 62);
  if ((v10 & 0x2000) != 0)
  {
    if ((*(equalCopy + 62) & 0x2000) == 0)
    {
      goto LABEL_122;
    }

    if (self->_isLegacyNowPlayingInfoRequest)
    {
      if ((*(equalCopy + 120) & 1) == 0)
      {
        goto LABEL_122;
      }
    }

    else if (*(equalCopy + 120))
    {
      goto LABEL_122;
    }
  }

  else if ((*(equalCopy + 62) & 0x2000) != 0)
  {
    goto LABEL_122;
  }

  if ((v10 & 0x800) != 0)
  {
    if ((*(equalCopy + 62) & 0x800) == 0)
    {
      goto LABEL_122;
    }

    if (self->_includeParticipants)
    {
      if ((*(equalCopy + 118) & 1) == 0)
      {
        goto LABEL_122;
      }
    }

    else if (*(equalCopy + 118))
    {
      goto LABEL_122;
    }
  }

  else if ((*(equalCopy + 62) & 0x800) != 0)
  {
    goto LABEL_122;
  }

  if ((v10 & 0x40) != 0)
  {
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_122;
    }

    if (self->_includeAvailableArtworkFormats)
    {
      if ((*(equalCopy + 113) & 1) == 0)
      {
        goto LABEL_122;
      }
    }

    else if (*(equalCopy + 113))
    {
      goto LABEL_122;
    }
  }

  else if ((v14 & 0x40) != 0)
  {
    goto LABEL_122;
  }

  requestedArtworkFormats = self->_requestedArtworkFormats;
  if (requestedArtworkFormats | *(equalCopy + 12) && ![(NSMutableArray *)requestedArtworkFormats isEqual:?])
  {
    goto LABEL_122;
  }

  requestedRemoteArtworkFormats = self->_requestedRemoteArtworkFormats;
  if (requestedRemoteArtworkFormats | *(equalCopy + 13))
  {
    if (![(NSMutableArray *)requestedRemoteArtworkFormats isEqual:?])
    {
      goto LABEL_122;
    }
  }

  v17 = *(equalCopy + 62);
  if ((*&self->_has & 0x20) == 0)
  {
    if ((v17 & 0x20) == 0)
    {
      goto LABEL_97;
    }

LABEL_122:
    v20 = 0;
    goto LABEL_123;
  }

  if ((v17 & 0x20) == 0)
  {
    goto LABEL_122;
  }

  if (self->_includeAlignments)
  {
    if ((*(equalCopy + 112) & 1) == 0)
    {
      goto LABEL_122;
    }
  }

  else if (*(equalCopy + 112))
  {
    goto LABEL_122;
  }

LABEL_97:
  requestedAnimatedArtworkPreviewFrameFormats = self->_requestedAnimatedArtworkPreviewFrameFormats;
  if (requestedAnimatedArtworkPreviewFrameFormats | *(equalCopy + 11) && ![(NSMutableArray *)requestedAnimatedArtworkPreviewFrameFormats isEqual:?])
  {
    goto LABEL_122;
  }

  requestedAnimatedArtworkAssetURLFormats = self->_requestedAnimatedArtworkAssetURLFormats;
  if (requestedAnimatedArtworkAssetURLFormats | *(equalCopy + 10))
  {
    v20 = [(NSMutableArray *)requestedAnimatedArtworkAssetURLFormats isEqual:?];
  }

  else
  {
    v20 = 1;
  }

LABEL_123:

  return v20;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v39 = 2654435761 * self->_location;
    if ((has & 8) != 0)
    {
LABEL_3:
      v38 = 2654435761 * self->_length;
      if ((*&self->_has & 0x400) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v37 = 0;
      if ((has & 2) != 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      v9 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v39 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v38 = 0;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v37 = 2654435761 * self->_includeMetadata;
  if ((has & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  artworkWidth = self->_artworkWidth;
  if (artworkWidth < 0.0)
  {
    artworkWidth = -artworkWidth;
  }

  *v2.i64 = floor(artworkWidth + 0.5);
  v7 = (artworkWidth - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
  v9 = 2654435761u * *v2.i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

LABEL_13:
  if (has)
  {
    artworkHeight = self->_artworkHeight;
    if (artworkHeight < 0.0)
    {
      artworkHeight = -artworkHeight;
    }

    *v2.i64 = floor(artworkHeight + 0.5);
    v12 = (artworkHeight - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v3, v2).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((*&self->_has & 0x200) == 0)
  {
    v34 = 0;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_25;
    }

LABEL_28:
    v33 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v34 = 2654435761 * self->_includeLyrics;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_28;
  }

LABEL_25:
  v33 = 2654435761 * self->_includeSections;
  if ((has & 0x80) != 0)
  {
LABEL_26:
    v32 = 2654435761 * self->_includeInfo;
    goto LABEL_30;
  }

LABEL_29:
  v32 = 0;
LABEL_30:
  v35 = v10;
  v36 = v9;
  if ((*&self->_has & 0x100) != 0)
  {
    v31 = 2654435761 * self->_includeLanguageOptions;
  }

  else
  {
    v31 = 0;
  }

  v30 = [(_MRPlaybackQueueContextProtobuf *)self->_context hash];
  v29 = [(NSString *)self->_requestID hash];
  v28 = [(NSMutableArray *)self->_contentItemIdentifiers hash];
  if ((*&self->_has & 0x4000) != 0)
  {
    v27 = 2654435761 * self->_returnContentItemAssetsInUserCompletion;
  }

  else
  {
    v27 = 0;
  }

  v14 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath hash];
  if ((*&self->_has & 4) != 0)
  {
    v15 = 2654435761 * self->_cachingPolicy;
  }

  else
  {
    v15 = 0;
  }

  v16 = [(NSString *)self->_label hash];
  v17 = self->_has;
  if ((v17 & 0x2000) == 0)
  {
    v18 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_41;
    }

LABEL_44:
    v19 = 0;
    if ((v17 & 0x40) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_45;
  }

  v18 = 2654435761 * self->_isLegacyNowPlayingInfoRequest;
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_44;
  }

LABEL_41:
  v19 = 2654435761 * self->_includeParticipants;
  if ((v17 & 0x40) != 0)
  {
LABEL_42:
    v20 = 2654435761 * self->_includeAvailableArtworkFormats;
    goto LABEL_46;
  }

LABEL_45:
  v20 = 0;
LABEL_46:
  v21 = [(NSMutableArray *)self->_requestedArtworkFormats hash];
  v22 = [(NSMutableArray *)self->_requestedRemoteArtworkFormats hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v23 = 2654435761 * self->_includeAlignments;
  }

  else
  {
    v23 = 0;
  }

  v24 = v38 ^ v39 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v14 ^ v15 ^ v16 ^ v18 ^ v19 ^ v20;
  v25 = v21 ^ v22 ^ v23 ^ [(NSMutableArray *)self->_requestedAnimatedArtworkPreviewFrameFormats hash];
  return v24 ^ v25 ^ [(NSMutableArray *)self->_requestedAnimatedArtworkAssetURLFormats hash];
}

- (void)mergeFrom:(id)from
{
  v62 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 62);
  if ((v6 & 0x10) != 0)
  {
    self->_location = *(fromCopy + 15);
    *&self->_has |= 0x10u;
    v6 = *(fromCopy + 62);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_length = *(fromCopy + 14);
  *&self->_has |= 8u;
  v6 = *(fromCopy + 62);
  if ((v6 & 0x400) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_includeMetadata = *(fromCopy + 117);
  *&self->_has |= 0x400u;
  v6 = *(fromCopy + 62);
  if ((v6 & 2) == 0)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_artworkWidth = *(fromCopy + 2);
  *&self->_has |= 2u;
  v6 = *(fromCopy + 62);
  if ((v6 & 1) == 0)
  {
LABEL_6:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_artworkHeight = *(fromCopy + 1);
  *&self->_has |= 1u;
  v6 = *(fromCopy + 62);
  if ((v6 & 0x200) == 0)
  {
LABEL_7:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_includeLyrics = *(fromCopy + 116);
  *&self->_has |= 0x200u;
  v6 = *(fromCopy + 62);
  if ((v6 & 0x1000) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_includeSections = *(fromCopy + 119);
  *&self->_has |= 0x1000u;
  v6 = *(fromCopy + 62);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  self->_includeInfo = *(fromCopy + 114);
  *&self->_has |= 0x80u;
  if ((*(fromCopy + 62) & 0x100) != 0)
  {
LABEL_10:
    self->_includeLanguageOptions = *(fromCopy + 115);
    *&self->_has |= 0x100u;
  }

LABEL_11:
  context = self->_context;
  v8 = *(v5 + 5);
  if (context)
  {
    if (v8)
    {
      [(_MRPlaybackQueueContextProtobuf *)context mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(_MRPlaybackQueueRequestProtobuf *)self setContext:?];
  }

  if (*(v5 + 9))
  {
    [(_MRPlaybackQueueRequestProtobuf *)self setRequestID:?];
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v9 = *(v5 + 4);
  v10 = [v9 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v54;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v54 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(_MRPlaybackQueueRequestProtobuf *)self addContentItemIdentifiers:*(*(&v53 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v11);
  }

  if ((*(v5 + 62) & 0x4000) != 0)
  {
    self->_returnContentItemAssetsInUserCompletion = *(v5 + 121);
    *&self->_has |= 0x4000u;
  }

  playerPath = self->_playerPath;
  v15 = *(v5 + 8);
  if (playerPath)
  {
    if (v15)
    {
      [(_MRNowPlayingPlayerPathProtobuf *)playerPath mergeFrom:?];
    }
  }

  else if (v15)
  {
    [(_MRPlaybackQueueRequestProtobuf *)self setPlayerPath:?];
  }

  if ((*(v5 + 62) & 4) != 0)
  {
    self->_cachingPolicy = *(v5 + 6);
    *&self->_has |= 4u;
  }

  if (*(v5 + 6))
  {
    [(_MRPlaybackQueueRequestProtobuf *)self setLabel:?];
  }

  v16 = *(v5 + 62);
  if ((v16 & 0x2000) != 0)
  {
    self->_isLegacyNowPlayingInfoRequest = *(v5 + 120);
    *&self->_has |= 0x2000u;
    v16 = *(v5 + 62);
    if ((v16 & 0x800) == 0)
    {
LABEL_47:
      if ((v16 & 0x40) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }
  }

  else if ((*(v5 + 62) & 0x800) == 0)
  {
    goto LABEL_47;
  }

  self->_includeParticipants = *(v5 + 118);
  *&self->_has |= 0x800u;
  if ((*(v5 + 62) & 0x40) != 0)
  {
LABEL_48:
    self->_includeAvailableArtworkFormats = *(v5 + 113);
    *&self->_has |= 0x40u;
  }

LABEL_49:
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v17 = *(v5 + 12);
  v18 = [v17 countByEnumeratingWithState:&v49 objects:v60 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v50;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v50 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(_MRPlaybackQueueRequestProtobuf *)self addRequestedArtworkFormats:*(*(&v49 + 1) + 8 * j)];
      }

      v19 = [v17 countByEnumeratingWithState:&v49 objects:v60 count:16];
    }

    while (v19);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v22 = *(v5 + 13);
  v23 = [v22 countByEnumeratingWithState:&v45 objects:v59 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v46;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v46 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(_MRPlaybackQueueRequestProtobuf *)self addRequestedRemoteArtworkFormats:*(*(&v45 + 1) + 8 * k)];
      }

      v24 = [v22 countByEnumeratingWithState:&v45 objects:v59 count:16];
    }

    while (v24);
  }

  if ((*(v5 + 62) & 0x20) != 0)
  {
    self->_includeAlignments = *(v5 + 112);
    *&self->_has |= 0x20u;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v27 = *(v5 + 11);
  v28 = [v27 countByEnumeratingWithState:&v41 objects:v58 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v42;
    do
    {
      for (m = 0; m != v29; ++m)
      {
        if (*v42 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [(_MRPlaybackQueueRequestProtobuf *)self addRequestedAnimatedArtworkPreviewFrameFormats:*(*(&v41 + 1) + 8 * m)];
      }

      v29 = [v27 countByEnumeratingWithState:&v41 objects:v58 count:16];
    }

    while (v29);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v32 = *(v5 + 10);
  v33 = [v32 countByEnumeratingWithState:&v37 objects:v57 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v38;
    do
    {
      for (n = 0; n != v34; ++n)
      {
        if (*v38 != v35)
        {
          objc_enumerationMutation(v32);
        }

        [(_MRPlaybackQueueRequestProtobuf *)self addRequestedAnimatedArtworkAssetURLFormats:*(*(&v37 + 1) + 8 * n), v37];
      }

      v34 = [v32 countByEnumeratingWithState:&v37 objects:v57 count:16];
    }

    while (v34);
  }
}

@end
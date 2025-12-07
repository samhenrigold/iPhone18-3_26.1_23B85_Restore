@interface _MRContentItemProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAnimatedArtworkPreviewFrames:(id)frames;
- (void)addAnimatedArtworks:(id)artworks;
- (void)addAvailableAnimatedArtworkFormats:(id)formats;
- (void)addAvailableArtworkFormats:(id)formats;
- (void)addAvailableLanguageOptions:(id)options;
- (void)addAvailableRemoteArtworkFormats:(id)formats;
- (void)addCurrentLanguageOptions:(id)options;
- (void)addDataArtworks:(id)artworks;
- (void)addRemoteArtworks:(id)artworks;
- (void)addSections:(id)sections;
- (void)addTranscriptAlignments:(id)alignments;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasArtworkDataWidth:(BOOL)width;
- (void)writeTo:(id)to;
@end

@implementation _MRContentItemProtobuf

- (void)addAvailableLanguageOptions:(id)options
{
  optionsCopy = options;
  availableLanguageOptions = self->_availableLanguageOptions;
  v8 = optionsCopy;
  if (!availableLanguageOptions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_availableLanguageOptions;
    self->_availableLanguageOptions = v6;

    optionsCopy = v8;
    availableLanguageOptions = self->_availableLanguageOptions;
  }

  [(NSMutableArray *)availableLanguageOptions addObject:optionsCopy];
}

- (void)addCurrentLanguageOptions:(id)options
{
  optionsCopy = options;
  currentLanguageOptions = self->_currentLanguageOptions;
  v8 = optionsCopy;
  if (!currentLanguageOptions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_currentLanguageOptions;
    self->_currentLanguageOptions = v6;

    optionsCopy = v8;
    currentLanguageOptions = self->_currentLanguageOptions;
  }

  [(NSMutableArray *)currentLanguageOptions addObject:optionsCopy];
}

- (void)addSections:(id)sections
{
  sectionsCopy = sections;
  sections = self->_sections;
  v8 = sectionsCopy;
  if (!sections)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_sections;
    self->_sections = v6;

    sectionsCopy = v8;
    sections = self->_sections;
  }

  [(NSMutableArray *)sections addObject:sectionsCopy];
}

- (void)setHasArtworkDataWidth:(BOOL)width
{
  if (width)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addAvailableArtworkFormats:(id)formats
{
  formatsCopy = formats;
  availableArtworkFormats = self->_availableArtworkFormats;
  v8 = formatsCopy;
  if (!availableArtworkFormats)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_availableArtworkFormats;
    self->_availableArtworkFormats = v6;

    formatsCopy = v8;
    availableArtworkFormats = self->_availableArtworkFormats;
  }

  [(NSMutableArray *)availableArtworkFormats addObject:formatsCopy];
}

- (void)addAvailableRemoteArtworkFormats:(id)formats
{
  formatsCopy = formats;
  availableRemoteArtworkFormats = self->_availableRemoteArtworkFormats;
  v8 = formatsCopy;
  if (!availableRemoteArtworkFormats)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_availableRemoteArtworkFormats;
    self->_availableRemoteArtworkFormats = v6;

    formatsCopy = v8;
    availableRemoteArtworkFormats = self->_availableRemoteArtworkFormats;
  }

  [(NSMutableArray *)availableRemoteArtworkFormats addObject:formatsCopy];
}

- (void)addDataArtworks:(id)artworks
{
  artworksCopy = artworks;
  dataArtworks = self->_dataArtworks;
  v8 = artworksCopy;
  if (!dataArtworks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_dataArtworks;
    self->_dataArtworks = v6;

    artworksCopy = v8;
    dataArtworks = self->_dataArtworks;
  }

  [(NSMutableArray *)dataArtworks addObject:artworksCopy];
}

- (void)addRemoteArtworks:(id)artworks
{
  artworksCopy = artworks;
  remoteArtworks = self->_remoteArtworks;
  v8 = artworksCopy;
  if (!remoteArtworks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_remoteArtworks;
    self->_remoteArtworks = v6;

    artworksCopy = v8;
    remoteArtworks = self->_remoteArtworks;
  }

  [(NSMutableArray *)remoteArtworks addObject:artworksCopy];
}

- (void)addTranscriptAlignments:(id)alignments
{
  alignmentsCopy = alignments;
  transcriptAlignments = self->_transcriptAlignments;
  v8 = alignmentsCopy;
  if (!transcriptAlignments)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_transcriptAlignments;
    self->_transcriptAlignments = v6;

    alignmentsCopy = v8;
    transcriptAlignments = self->_transcriptAlignments;
  }

  [(NSMutableArray *)transcriptAlignments addObject:alignmentsCopy];
}

- (void)addAvailableAnimatedArtworkFormats:(id)formats
{
  formatsCopy = formats;
  availableAnimatedArtworkFormats = self->_availableAnimatedArtworkFormats;
  v8 = formatsCopy;
  if (!availableAnimatedArtworkFormats)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_availableAnimatedArtworkFormats;
    self->_availableAnimatedArtworkFormats = v6;

    formatsCopy = v8;
    availableAnimatedArtworkFormats = self->_availableAnimatedArtworkFormats;
  }

  [(NSMutableArray *)availableAnimatedArtworkFormats addObject:formatsCopy];
}

- (void)addAnimatedArtworkPreviewFrames:(id)frames
{
  framesCopy = frames;
  animatedArtworkPreviewFrames = self->_animatedArtworkPreviewFrames;
  v8 = framesCopy;
  if (!animatedArtworkPreviewFrames)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_animatedArtworkPreviewFrames;
    self->_animatedArtworkPreviewFrames = v6;

    framesCopy = v8;
    animatedArtworkPreviewFrames = self->_animatedArtworkPreviewFrames;
  }

  [(NSMutableArray *)animatedArtworkPreviewFrames addObject:framesCopy];
}

- (void)addAnimatedArtworks:(id)artworks
{
  artworksCopy = artworks;
  animatedArtworks = self->_animatedArtworks;
  v8 = artworksCopy;
  if (!animatedArtworks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_animatedArtworks;
    self->_animatedArtworks = v6;

    artworksCopy = v8;
    animatedArtworks = self->_animatedArtworks;
  }

  [(NSMutableArray *)animatedArtworks addObject:artworksCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRContentItemProtobuf;
  v4 = [(_MRContentItemProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRContentItemProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v120 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  metadata = self->_metadata;
  if (metadata)
  {
    dictionaryRepresentation = [(_MRContentItemMetadataProtobuf *)metadata dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"metadata"];
  }

  artworkData = self->_artworkData;
  if (artworkData)
  {
    [v4 setObject:artworkData forKey:@"artworkData"];
  }

  info = self->_info;
  if (info)
  {
    [v4 setObject:info forKey:@"info"];
  }

  if ([(NSMutableArray *)self->_availableLanguageOptions count])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_availableLanguageOptions, "count")}];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v11 = self->_availableLanguageOptions;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v108 objects:v119 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v109;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v109 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation2 = [*(*(&v108 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation2];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v108 objects:v119 count:16];
      }

      while (v13);
    }

    [v4 setObject:v10 forKey:@"availableLanguageOptions"];
  }

  if ([(NSMutableArray *)self->_currentLanguageOptions count])
  {
    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_currentLanguageOptions, "count")}];
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v18 = self->_currentLanguageOptions;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v104 objects:v118 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v105;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v105 != v21)
          {
            objc_enumerationMutation(v18);
          }

          dictionaryRepresentation3 = [*(*(&v104 + 1) + 8 * j) dictionaryRepresentation];
          [v17 addObject:dictionaryRepresentation3];
        }

        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v104 objects:v118 count:16];
      }

      while (v20);
    }

    [v4 setObject:v17 forKey:@"currentLanguageOptions"];
  }

  lyrics = self->_lyrics;
  if (lyrics)
  {
    dictionaryRepresentation4 = [(_MRLyricsItemProtobuf *)lyrics dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"lyrics"];
  }

  if ([(NSMutableArray *)self->_sections count])
  {
    v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_sections, "count")}];
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v27 = self->_sections;
    v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v100 objects:v117 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v101;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v101 != v30)
          {
            objc_enumerationMutation(v27);
          }

          dictionaryRepresentation5 = [*(*(&v100 + 1) + 8 * k) dictionaryRepresentation];
          [v26 addObject:dictionaryRepresentation5];
        }

        v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v100 objects:v117 count:16];
      }

      while (v29);
    }

    [v4 setObject:v26 forKey:@"sections"];
  }

  parentIdentifier = self->_parentIdentifier;
  if (parentIdentifier)
  {
    [v4 setObject:parentIdentifier forKey:@"parentIdentifier"];
  }

  ancestorIdentifier = self->_ancestorIdentifier;
  if (ancestorIdentifier)
  {
    [v4 setObject:ancestorIdentifier forKey:@"ancestorIdentifier"];
  }

  queueIdentifier = self->_queueIdentifier;
  if (queueIdentifier)
  {
    [v4 setObject:queueIdentifier forKey:@"queueIdentifier"];
  }

  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier)
  {
    [v4 setObject:requestIdentifier forKey:@"requestIdentifier"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithInt:self->_artworkDataWidth];
    [v4 setObject:v38 forKey:@"artworkDataWidth"];

    has = self->_has;
  }

  if (has)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithInt:self->_artworkDataHeight];
    [v4 setObject:v39 forKey:@"artworkDataHeight"];
  }

  associatedParticipantIdentifier = self->_associatedParticipantIdentifier;
  if (associatedParticipantIdentifier)
  {
    [v4 setObject:associatedParticipantIdentifier forKey:@"associatedParticipantIdentifier"];
  }

  availableArtworkFormats = self->_availableArtworkFormats;
  if (availableArtworkFormats)
  {
    [v4 setObject:availableArtworkFormats forKey:@"availableArtworkFormats"];
  }

  availableRemoteArtworkFormats = self->_availableRemoteArtworkFormats;
  if (availableRemoteArtworkFormats)
  {
    [v4 setObject:availableRemoteArtworkFormats forKey:@"availableRemoteArtworkFormats"];
  }

  if ([(NSMutableArray *)self->_dataArtworks count])
  {
    v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_dataArtworks, "count")}];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v44 = self->_dataArtworks;
    v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v96 objects:v116 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v97;
      do
      {
        for (m = 0; m != v46; ++m)
        {
          if (*v97 != v47)
          {
            objc_enumerationMutation(v44);
          }

          dictionaryRepresentation6 = [*(*(&v96 + 1) + 8 * m) dictionaryRepresentation];
          [v43 addObject:dictionaryRepresentation6];
        }

        v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v96 objects:v116 count:16];
      }

      while (v46);
    }

    [v4 setObject:v43 forKey:@"dataArtworks"];
  }

  if ([(NSMutableArray *)self->_remoteArtworks count])
  {
    v50 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_remoteArtworks, "count")}];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v51 = self->_remoteArtworks;
    v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v92 objects:v115 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v93;
      do
      {
        for (n = 0; n != v53; ++n)
        {
          if (*v93 != v54)
          {
            objc_enumerationMutation(v51);
          }

          dictionaryRepresentation7 = [*(*(&v92 + 1) + 8 * n) dictionaryRepresentation];
          [v50 addObject:dictionaryRepresentation7];
        }

        v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v92 objects:v115 count:16];
      }

      while (v53);
    }

    [v4 setObject:v50 forKey:@"remoteArtworks"];
  }

  if ([(NSMutableArray *)self->_transcriptAlignments count])
  {
    v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_transcriptAlignments, "count")}];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v58 = self->_transcriptAlignments;
    v59 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v88 objects:v114 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v89;
      do
      {
        for (ii = 0; ii != v60; ++ii)
        {
          if (*v89 != v61)
          {
            objc_enumerationMutation(v58);
          }

          dictionaryRepresentation8 = [*(*(&v88 + 1) + 8 * ii) dictionaryRepresentation];
          [v57 addObject:dictionaryRepresentation8];
        }

        v60 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v88 objects:v114 count:16];
      }

      while (v60);
    }

    [v4 setObject:v57 forKey:@"transcriptAlignments"];
  }

  availableAnimatedArtworkFormats = self->_availableAnimatedArtworkFormats;
  if (availableAnimatedArtworkFormats)
  {
    [v4 setObject:availableAnimatedArtworkFormats forKey:@"availableAnimatedArtworkFormats"];
  }

  if ([(NSMutableArray *)self->_animatedArtworkPreviewFrames count])
  {
    v65 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_animatedArtworkPreviewFrames, "count")}];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v66 = self->_animatedArtworkPreviewFrames;
    v67 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v84 objects:v113 count:16];
    if (v67)
    {
      v68 = v67;
      v69 = *v85;
      do
      {
        for (jj = 0; jj != v68; ++jj)
        {
          if (*v85 != v69)
          {
            objc_enumerationMutation(v66);
          }

          dictionaryRepresentation9 = [*(*(&v84 + 1) + 8 * jj) dictionaryRepresentation];
          [v65 addObject:dictionaryRepresentation9];
        }

        v68 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v84 objects:v113 count:16];
      }

      while (v68);
    }

    [v4 setObject:v65 forKey:@"animatedArtworkPreviewFrames"];
  }

  if ([(NSMutableArray *)self->_animatedArtworks count])
  {
    v72 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_animatedArtworks, "count")}];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v73 = self->_animatedArtworks;
    v74 = [(NSMutableArray *)v73 countByEnumeratingWithState:&v80 objects:v112 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v81;
      do
      {
        for (kk = 0; kk != v75; ++kk)
        {
          if (*v81 != v76)
          {
            objc_enumerationMutation(v73);
          }

          dictionaryRepresentation10 = [*(*(&v80 + 1) + 8 * kk) dictionaryRepresentation];
          [v72 addObject:dictionaryRepresentation10];
        }

        v75 = [(NSMutableArray *)v73 countByEnumeratingWithState:&v80 objects:v112 count:16];
      }

      while (v75);
    }

    [v4 setObject:v72 forKey:@"animatedArtworks"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v116 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_metadata)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_artworkData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_info)
  {
    PBDataWriterWriteStringField();
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v5 = self->_availableLanguageOptions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v101 objects:v115 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v102;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v102 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v101 objects:v115 count:16];
    }

    while (v7);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v10 = self->_currentLanguageOptions;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v97 objects:v114 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v98;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v98 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v97 objects:v114 count:16];
    }

    while (v12);
  }

  if (self->_lyrics)
  {
    PBDataWriterWriteSubmessage();
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v15 = self->_sections;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v93 objects:v113 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v94;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v94 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v93 objects:v113 count:16];
    }

    while (v17);
  }

  if (self->_parentIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_ancestorIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_queueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_requestIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_associatedParticipantIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v21 = self->_availableArtworkFormats;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v89 objects:v112 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v90;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v90 != v24)
        {
          objc_enumerationMutation(v21);
        }

        PBDataWriterWriteStringField();
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v89 objects:v112 count:16];
    }

    while (v23);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v26 = self->_availableRemoteArtworkFormats;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v85 objects:v111 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v86;
    do
    {
      for (n = 0; n != v28; ++n)
      {
        if (*v86 != v29)
        {
          objc_enumerationMutation(v26);
        }

        PBDataWriterWriteStringField();
      }

      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v85 objects:v111 count:16];
    }

    while (v28);
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v31 = self->_dataArtworks;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v81 objects:v110 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v82;
    do
    {
      for (ii = 0; ii != v33; ++ii)
      {
        if (*v82 != v34)
        {
          objc_enumerationMutation(v31);
        }

        PBDataWriterWriteSubmessage();
      }

      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v81 objects:v110 count:16];
    }

    while (v33);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v36 = self->_remoteArtworks;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v77 objects:v109 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v78;
    do
    {
      for (jj = 0; jj != v38; ++jj)
      {
        if (*v78 != v39)
        {
          objc_enumerationMutation(v36);
        }

        PBDataWriterWriteSubmessage();
      }

      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v77 objects:v109 count:16];
    }

    while (v38);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v41 = self->_transcriptAlignments;
  v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v73 objects:v108 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v74;
    do
    {
      for (kk = 0; kk != v43; ++kk)
      {
        if (*v74 != v44)
        {
          objc_enumerationMutation(v41);
        }

        PBDataWriterWriteSubmessage();
      }

      v43 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v73 objects:v108 count:16];
    }

    while (v43);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v46 = self->_availableAnimatedArtworkFormats;
  v47 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v69 objects:v107 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v70;
    do
    {
      for (mm = 0; mm != v48; ++mm)
      {
        if (*v70 != v49)
        {
          objc_enumerationMutation(v46);
        }

        PBDataWriterWriteStringField();
      }

      v48 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v69 objects:v107 count:16];
    }

    while (v48);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v51 = self->_animatedArtworkPreviewFrames;
  v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v65 objects:v106 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v66;
    do
    {
      for (nn = 0; nn != v53; ++nn)
      {
        if (*v66 != v54)
        {
          objc_enumerationMutation(v51);
        }

        PBDataWriterWriteSubmessage();
      }

      v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v65 objects:v106 count:16];
    }

    while (v53);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v56 = self->_animatedArtworks;
  v57 = [(NSMutableArray *)v56 countByEnumeratingWithState:&v61 objects:v105 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v62;
    do
    {
      for (i1 = 0; i1 != v58; ++i1)
      {
        if (*v62 != v59)
        {
          objc_enumerationMutation(v56);
        }

        PBDataWriterWriteSubmessage();
      }

      v58 = [(NSMutableArray *)v56 countByEnumeratingWithState:&v61 objects:v105 count:16];
    }

    while (v58);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
  }

  if (self->_metadata)
  {
    [toCopy setMetadata:?];
  }

  if (self->_artworkData)
  {
    [toCopy setArtworkData:?];
  }

  if (self->_info)
  {
    [toCopy setInfo:?];
  }

  if ([(_MRContentItemProtobuf *)self availableLanguageOptionsCount])
  {
    [toCopy clearAvailableLanguageOptions];
    availableLanguageOptionsCount = [(_MRContentItemProtobuf *)self availableLanguageOptionsCount];
    if (availableLanguageOptionsCount)
    {
      v5 = availableLanguageOptionsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(_MRContentItemProtobuf *)self availableLanguageOptionsAtIndex:i];
        [toCopy addAvailableLanguageOptions:v7];
      }
    }
  }

  if ([(_MRContentItemProtobuf *)self currentLanguageOptionsCount])
  {
    [toCopy clearCurrentLanguageOptions];
    currentLanguageOptionsCount = [(_MRContentItemProtobuf *)self currentLanguageOptionsCount];
    if (currentLanguageOptionsCount)
    {
      v9 = currentLanguageOptionsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(_MRContentItemProtobuf *)self currentLanguageOptionsAtIndex:j];
        [toCopy addCurrentLanguageOptions:v11];
      }
    }
  }

  if (self->_lyrics)
  {
    [toCopy setLyrics:?];
  }

  if ([(_MRContentItemProtobuf *)self sectionsCount])
  {
    [toCopy clearSections];
    sectionsCount = [(_MRContentItemProtobuf *)self sectionsCount];
    if (sectionsCount)
    {
      v13 = sectionsCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(_MRContentItemProtobuf *)self sectionsAtIndex:k];
        [toCopy addSections:v15];
      }
    }
  }

  if (self->_parentIdentifier)
  {
    [toCopy setParentIdentifier:?];
  }

  v16 = toCopy;
  if (self->_ancestorIdentifier)
  {
    [toCopy setAncestorIdentifier:?];
    v16 = toCopy;
  }

  if (self->_queueIdentifier)
  {
    [toCopy setQueueIdentifier:?];
    v16 = toCopy;
  }

  if (self->_requestIdentifier)
  {
    [toCopy setRequestIdentifier:?];
    v16 = toCopy;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v16[11] = self->_artworkDataWidth;
    *(v16 + 184) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v16[10] = self->_artworkDataHeight;
    *(v16 + 184) |= 1u;
  }

  if (self->_associatedParticipantIdentifier)
  {
    [toCopy setAssociatedParticipantIdentifier:?];
  }

  if ([(_MRContentItemProtobuf *)self availableArtworkFormatsCount])
  {
    [toCopy clearAvailableArtworkFormats];
    availableArtworkFormatsCount = [(_MRContentItemProtobuf *)self availableArtworkFormatsCount];
    if (availableArtworkFormatsCount)
    {
      v19 = availableArtworkFormatsCount;
      for (m = 0; m != v19; ++m)
      {
        v21 = [(_MRContentItemProtobuf *)self availableArtworkFormatsAtIndex:m];
        [toCopy addAvailableArtworkFormats:v21];
      }
    }
  }

  if ([(_MRContentItemProtobuf *)self availableRemoteArtworkFormatsCount])
  {
    [toCopy clearAvailableRemoteArtworkFormats];
    availableRemoteArtworkFormatsCount = [(_MRContentItemProtobuf *)self availableRemoteArtworkFormatsCount];
    if (availableRemoteArtworkFormatsCount)
    {
      v23 = availableRemoteArtworkFormatsCount;
      for (n = 0; n != v23; ++n)
      {
        v25 = [(_MRContentItemProtobuf *)self availableRemoteArtworkFormatsAtIndex:n];
        [toCopy addAvailableRemoteArtworkFormats:v25];
      }
    }
  }

  if ([(_MRContentItemProtobuf *)self dataArtworksCount])
  {
    [toCopy clearDataArtworks];
    dataArtworksCount = [(_MRContentItemProtobuf *)self dataArtworksCount];
    if (dataArtworksCount)
    {
      v27 = dataArtworksCount;
      for (ii = 0; ii != v27; ++ii)
      {
        v29 = [(_MRContentItemProtobuf *)self dataArtworksAtIndex:ii];
        [toCopy addDataArtworks:v29];
      }
    }
  }

  if ([(_MRContentItemProtobuf *)self remoteArtworksCount])
  {
    [toCopy clearRemoteArtworks];
    remoteArtworksCount = [(_MRContentItemProtobuf *)self remoteArtworksCount];
    if (remoteArtworksCount)
    {
      v31 = remoteArtworksCount;
      for (jj = 0; jj != v31; ++jj)
      {
        v33 = [(_MRContentItemProtobuf *)self remoteArtworksAtIndex:jj];
        [toCopy addRemoteArtworks:v33];
      }
    }
  }

  if ([(_MRContentItemProtobuf *)self transcriptAlignmentsCount])
  {
    [toCopy clearTranscriptAlignments];
    transcriptAlignmentsCount = [(_MRContentItemProtobuf *)self transcriptAlignmentsCount];
    if (transcriptAlignmentsCount)
    {
      v35 = transcriptAlignmentsCount;
      for (kk = 0; kk != v35; ++kk)
      {
        v37 = [(_MRContentItemProtobuf *)self transcriptAlignmentsAtIndex:kk];
        [toCopy addTranscriptAlignments:v37];
      }
    }
  }

  if ([(_MRContentItemProtobuf *)self availableAnimatedArtworkFormatsCount])
  {
    [toCopy clearAvailableAnimatedArtworkFormats];
    availableAnimatedArtworkFormatsCount = [(_MRContentItemProtobuf *)self availableAnimatedArtworkFormatsCount];
    if (availableAnimatedArtworkFormatsCount)
    {
      v39 = availableAnimatedArtworkFormatsCount;
      for (mm = 0; mm != v39; ++mm)
      {
        v41 = [(_MRContentItemProtobuf *)self availableAnimatedArtworkFormatsAtIndex:mm];
        [toCopy addAvailableAnimatedArtworkFormats:v41];
      }
    }
  }

  if ([(_MRContentItemProtobuf *)self animatedArtworkPreviewFramesCount])
  {
    [toCopy clearAnimatedArtworkPreviewFrames];
    animatedArtworkPreviewFramesCount = [(_MRContentItemProtobuf *)self animatedArtworkPreviewFramesCount];
    if (animatedArtworkPreviewFramesCount)
    {
      v43 = animatedArtworkPreviewFramesCount;
      for (nn = 0; nn != v43; ++nn)
      {
        v45 = [(_MRContentItemProtobuf *)self animatedArtworkPreviewFramesAtIndex:nn];
        [toCopy addAnimatedArtworkPreviewFrames:v45];
      }
    }
  }

  if ([(_MRContentItemProtobuf *)self animatedArtworksCount])
  {
    [toCopy clearAnimatedArtworks];
    animatedArtworksCount = [(_MRContentItemProtobuf *)self animatedArtworksCount];
    if (animatedArtworksCount)
    {
      v47 = animatedArtworksCount;
      for (i1 = 0; i1 != v47; ++i1)
      {
        v49 = [(_MRContentItemProtobuf *)self animatedArtworksAtIndex:i1];
        [toCopy addAnimatedArtworks:v49];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v149 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 104);
  *(v5 + 104) = v6;

  v8 = [(_MRContentItemMetadataProtobuf *)self->_metadata copyWithZone:zone];
  v9 = *(v5 + 128);
  *(v5 + 128) = v8;

  v10 = [(NSData *)self->_artworkData copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSString *)self->_info copyWithZone:zone];
  v13 = *(v5 + 112);
  *(v5 + 112) = v12;

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v14 = self->_availableLanguageOptions;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v134 objects:v148 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v135;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v135 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v134 + 1) + 8 * i) copyWithZone:zone];
        [v5 addAvailableLanguageOptions:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v134 objects:v148 count:16];
    }

    while (v16);
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v20 = self->_currentLanguageOptions;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v130 objects:v147 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v131;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v131 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v130 + 1) + 8 * j) copyWithZone:zone];
        [v5 addCurrentLanguageOptions:v25];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v130 objects:v147 count:16];
    }

    while (v22);
  }

  v26 = [(_MRLyricsItemProtobuf *)self->_lyrics copyWithZone:zone];
  v27 = *(v5 + 120);
  *(v5 + 120) = v26;

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v28 = self->_sections;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v126 objects:v146 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v127;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v127 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v126 + 1) + 8 * k) copyWithZone:zone];
        [v5 addSections:v33];
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v126 objects:v146 count:16];
    }

    while (v30);
  }

  v34 = [(NSString *)self->_parentIdentifier copyWithZone:zone];
  v35 = *(v5 + 136);
  *(v5 + 136) = v34;

  v36 = [(NSString *)self->_ancestorIdentifier copyWithZone:zone];
  v37 = *(v5 + 8);
  *(v5 + 8) = v36;

  v38 = [(NSString *)self->_queueIdentifier copyWithZone:zone];
  v39 = *(v5 + 144);
  *(v5 + 144) = v38;

  v40 = [(NSString *)self->_requestIdentifier copyWithZone:zone];
  v41 = *(v5 + 160);
  *(v5 + 160) = v40;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 44) = self->_artworkDataWidth;
    *(v5 + 184) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 40) = self->_artworkDataHeight;
    *(v5 + 184) |= 1u;
  }

  v43 = [(NSString *)self->_associatedParticipantIdentifier copyWithZone:zone];
  v44 = *(v5 + 48);
  *(v5 + 48) = v43;

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v45 = self->_availableArtworkFormats;
  v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v122 objects:v145 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v123;
    do
    {
      for (m = 0; m != v47; ++m)
      {
        if (*v123 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = [*(*(&v122 + 1) + 8 * m) copyWithZone:zone];
        [v5 addAvailableArtworkFormats:v50];
      }

      v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v122 objects:v145 count:16];
    }

    while (v47);
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v51 = self->_availableRemoteArtworkFormats;
  v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v118 objects:v144 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v119;
    do
    {
      for (n = 0; n != v53; ++n)
      {
        if (*v119 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = [*(*(&v118 + 1) + 8 * n) copyWithZone:zone];
        [v5 addAvailableRemoteArtworkFormats:v56];
      }

      v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v118 objects:v144 count:16];
    }

    while (v53);
  }

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v57 = self->_dataArtworks;
  v58 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v114 objects:v143 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v115;
    do
    {
      for (ii = 0; ii != v59; ++ii)
      {
        if (*v115 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = [*(*(&v114 + 1) + 8 * ii) copyWithZone:zone];
        [v5 addDataArtworks:v62];
      }

      v59 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v114 objects:v143 count:16];
    }

    while (v59);
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v63 = self->_remoteArtworks;
  v64 = [(NSMutableArray *)v63 countByEnumeratingWithState:&v110 objects:v142 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v111;
    do
    {
      for (jj = 0; jj != v65; ++jj)
      {
        if (*v111 != v66)
        {
          objc_enumerationMutation(v63);
        }

        v68 = [*(*(&v110 + 1) + 8 * jj) copyWithZone:zone];
        [v5 addRemoteArtworks:v68];
      }

      v65 = [(NSMutableArray *)v63 countByEnumeratingWithState:&v110 objects:v142 count:16];
    }

    while (v65);
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v69 = self->_transcriptAlignments;
  v70 = [(NSMutableArray *)v69 countByEnumeratingWithState:&v106 objects:v141 count:16];
  if (v70)
  {
    v71 = v70;
    v72 = *v107;
    do
    {
      for (kk = 0; kk != v71; ++kk)
      {
        if (*v107 != v72)
        {
          objc_enumerationMutation(v69);
        }

        v74 = [*(*(&v106 + 1) + 8 * kk) copyWithZone:zone];
        [v5 addTranscriptAlignments:v74];
      }

      v71 = [(NSMutableArray *)v69 countByEnumeratingWithState:&v106 objects:v141 count:16];
    }

    while (v71);
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v75 = self->_availableAnimatedArtworkFormats;
  v76 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v102 objects:v140 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v103;
    do
    {
      for (mm = 0; mm != v77; ++mm)
      {
        if (*v103 != v78)
        {
          objc_enumerationMutation(v75);
        }

        v80 = [*(*(&v102 + 1) + 8 * mm) copyWithZone:zone];
        [v5 addAvailableAnimatedArtworkFormats:v80];
      }

      v77 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v102 objects:v140 count:16];
    }

    while (v77);
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v81 = self->_animatedArtworkPreviewFrames;
  v82 = [(NSMutableArray *)v81 countByEnumeratingWithState:&v98 objects:v139 count:16];
  if (v82)
  {
    v83 = v82;
    v84 = *v99;
    do
    {
      for (nn = 0; nn != v83; ++nn)
      {
        if (*v99 != v84)
        {
          objc_enumerationMutation(v81);
        }

        v86 = [*(*(&v98 + 1) + 8 * nn) copyWithZone:zone];
        [v5 addAnimatedArtworkPreviewFrames:v86];
      }

      v83 = [(NSMutableArray *)v81 countByEnumeratingWithState:&v98 objects:v139 count:16];
    }

    while (v83);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v87 = self->_animatedArtworks;
  v88 = [(NSMutableArray *)v87 countByEnumeratingWithState:&v94 objects:v138 count:16];
  if (v88)
  {
    v89 = v88;
    v90 = *v95;
    do
    {
      for (i1 = 0; i1 != v89; ++i1)
      {
        if (*v95 != v90)
        {
          objc_enumerationMutation(v87);
        }

        v92 = [*(*(&v94 + 1) + 8 * i1) copyWithZone:{zone, v94}];
        [v5 addAnimatedArtworks:v92];
      }

      v89 = [(NSMutableArray *)v87 countByEnumeratingWithState:&v94 objects:v138 count:16];
    }

    while (v89);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_54;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 13))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_54;
    }
  }

  metadata = self->_metadata;
  if (metadata | *(equalCopy + 16))
  {
    if (![(_MRContentItemMetadataProtobuf *)metadata isEqual:?])
    {
      goto LABEL_54;
    }
  }

  artworkData = self->_artworkData;
  if (artworkData | *(equalCopy + 4))
  {
    if (![(NSData *)artworkData isEqual:?])
    {
      goto LABEL_54;
    }
  }

  info = self->_info;
  if (info | *(equalCopy + 14))
  {
    if (![(NSString *)info isEqual:?])
    {
      goto LABEL_54;
    }
  }

  availableLanguageOptions = self->_availableLanguageOptions;
  if (availableLanguageOptions | *(equalCopy + 9))
  {
    if (![(NSMutableArray *)availableLanguageOptions isEqual:?])
    {
      goto LABEL_54;
    }
  }

  currentLanguageOptions = self->_currentLanguageOptions;
  if (currentLanguageOptions | *(equalCopy + 11))
  {
    if (![(NSMutableArray *)currentLanguageOptions isEqual:?])
    {
      goto LABEL_54;
    }
  }

  lyrics = self->_lyrics;
  if (lyrics | *(equalCopy + 15))
  {
    if (![(_MRLyricsItemProtobuf *)lyrics isEqual:?])
    {
      goto LABEL_54;
    }
  }

  sections = self->_sections;
  if (sections | *(equalCopy + 21))
  {
    if (![(NSMutableArray *)sections isEqual:?])
    {
      goto LABEL_54;
    }
  }

  parentIdentifier = self->_parentIdentifier;
  if (parentIdentifier | *(equalCopy + 17))
  {
    if (![(NSString *)parentIdentifier isEqual:?])
    {
      goto LABEL_54;
    }
  }

  ancestorIdentifier = self->_ancestorIdentifier;
  if (ancestorIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)ancestorIdentifier isEqual:?])
    {
      goto LABEL_54;
    }
  }

  queueIdentifier = self->_queueIdentifier;
  if (queueIdentifier | *(equalCopy + 18))
  {
    if (![(NSString *)queueIdentifier isEqual:?])
    {
      goto LABEL_54;
    }
  }

  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier | *(equalCopy + 20))
  {
    if (![(NSString *)requestIdentifier isEqual:?])
    {
      goto LABEL_54;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 184) & 2) == 0 || self->_artworkDataWidth != *(equalCopy + 11))
    {
      goto LABEL_54;
    }
  }

  else if ((*(equalCopy + 184) & 2) != 0)
  {
LABEL_54:
    v26 = 0;
    goto LABEL_55;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 184) & 1) == 0 || self->_artworkDataHeight != *(equalCopy + 10))
    {
      goto LABEL_54;
    }
  }

  else if (*(equalCopy + 184))
  {
    goto LABEL_54;
  }

  associatedParticipantIdentifier = self->_associatedParticipantIdentifier;
  if (associatedParticipantIdentifier | *(equalCopy + 6) && ![(NSString *)associatedParticipantIdentifier isEqual:?])
  {
    goto LABEL_54;
  }

  availableArtworkFormats = self->_availableArtworkFormats;
  if (availableArtworkFormats | *(equalCopy + 8))
  {
    if (![(NSMutableArray *)availableArtworkFormats isEqual:?])
    {
      goto LABEL_54;
    }
  }

  availableRemoteArtworkFormats = self->_availableRemoteArtworkFormats;
  if (availableRemoteArtworkFormats | *(equalCopy + 10))
  {
    if (![(NSMutableArray *)availableRemoteArtworkFormats isEqual:?])
    {
      goto LABEL_54;
    }
  }

  dataArtworks = self->_dataArtworks;
  if (dataArtworks | *(equalCopy + 12))
  {
    if (![(NSMutableArray *)dataArtworks isEqual:?])
    {
      goto LABEL_54;
    }
  }

  remoteArtworks = self->_remoteArtworks;
  if (remoteArtworks | *(equalCopy + 19))
  {
    if (![(NSMutableArray *)remoteArtworks isEqual:?])
    {
      goto LABEL_54;
    }
  }

  transcriptAlignments = self->_transcriptAlignments;
  if (transcriptAlignments | *(equalCopy + 22))
  {
    if (![(NSMutableArray *)transcriptAlignments isEqual:?])
    {
      goto LABEL_54;
    }
  }

  availableAnimatedArtworkFormats = self->_availableAnimatedArtworkFormats;
  if (availableAnimatedArtworkFormats | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)availableAnimatedArtworkFormats isEqual:?])
    {
      goto LABEL_54;
    }
  }

  animatedArtworkPreviewFrames = self->_animatedArtworkPreviewFrames;
  if (animatedArtworkPreviewFrames | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)animatedArtworkPreviewFrames isEqual:?])
    {
      goto LABEL_54;
    }
  }

  animatedArtworks = self->_animatedArtworks;
  if (animatedArtworks | *(equalCopy + 3))
  {
    v26 = [(NSMutableArray *)animatedArtworks isEqual:?];
  }

  else
  {
    v26 = 1;
  }

LABEL_55:

  return v26;
}

- (unint64_t)hash
{
  v26 = [(NSString *)self->_identifier hash];
  v25 = [(_MRContentItemMetadataProtobuf *)self->_metadata hash];
  v3 = [(NSData *)self->_artworkData hash];
  v4 = [(NSString *)self->_info hash];
  v5 = [(NSMutableArray *)self->_availableLanguageOptions hash];
  v6 = [(NSMutableArray *)self->_currentLanguageOptions hash];
  v7 = [(_MRLyricsItemProtobuf *)self->_lyrics hash];
  v8 = [(NSMutableArray *)self->_sections hash];
  v9 = [(NSString *)self->_parentIdentifier hash];
  v10 = [(NSString *)self->_ancestorIdentifier hash];
  v11 = [(NSString *)self->_queueIdentifier hash];
  v12 = [(NSString *)self->_requestIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v13 = 2654435761 * self->_artworkDataWidth;
  }

  else
  {
    v13 = 0;
  }

  if (*&self->_has)
  {
    v14 = 2654435761 * self->_artworkDataHeight;
  }

  else
  {
    v14 = 0;
  }

  v15 = v25 ^ v26 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  v16 = v12 ^ v13 ^ v14 ^ [(NSString *)self->_associatedParticipantIdentifier hash];
  v17 = v15 ^ v16 ^ [(NSMutableArray *)self->_availableArtworkFormats hash];
  v18 = [(NSMutableArray *)self->_availableRemoteArtworkFormats hash];
  v19 = v18 ^ [(NSMutableArray *)self->_dataArtworks hash];
  v20 = v19 ^ [(NSMutableArray *)self->_remoteArtworks hash];
  v21 = v20 ^ [(NSMutableArray *)self->_transcriptAlignments hash];
  v22 = v21 ^ [(NSMutableArray *)self->_availableAnimatedArtworkFormats hash];
  v23 = v17 ^ v22 ^ [(NSMutableArray *)self->_animatedArtworkPreviewFrames hash];
  return v23 ^ [(NSMutableArray *)self->_animatedArtworks hash];
}

- (void)mergeFrom:(id)from
{
  v120 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 13))
  {
    [(_MRContentItemProtobuf *)self setIdentifier:?];
  }

  metadata = self->_metadata;
  v6 = *(fromCopy + 16);
  if (metadata)
  {
    if (v6)
    {
      [(_MRContentItemMetadataProtobuf *)metadata mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(_MRContentItemProtobuf *)self setMetadata:?];
  }

  if (*(fromCopy + 4))
  {
    [(_MRContentItemProtobuf *)self setArtworkData:?];
  }

  if (*(fromCopy + 14))
  {
    [(_MRContentItemProtobuf *)self setInfo:?];
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v7 = *(fromCopy + 9);
  v8 = [v7 countByEnumeratingWithState:&v105 objects:v119 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v106;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v106 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(_MRContentItemProtobuf *)self addAvailableLanguageOptions:*(*(&v105 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v105 objects:v119 count:16];
    }

    while (v9);
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v12 = *(fromCopy + 11);
  v13 = [v12 countByEnumeratingWithState:&v101 objects:v118 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v102;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v102 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(_MRContentItemProtobuf *)self addCurrentLanguageOptions:*(*(&v101 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v101 objects:v118 count:16];
    }

    while (v14);
  }

  lyrics = self->_lyrics;
  v18 = *(fromCopy + 15);
  if (lyrics)
  {
    if (v18)
    {
      [(_MRLyricsItemProtobuf *)lyrics mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(_MRContentItemProtobuf *)self setLyrics:?];
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v19 = *(fromCopy + 21);
  v20 = [v19 countByEnumeratingWithState:&v97 objects:v117 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v98;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v98 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(_MRContentItemProtobuf *)self addSections:*(*(&v97 + 1) + 8 * k)];
      }

      v21 = [v19 countByEnumeratingWithState:&v97 objects:v117 count:16];
    }

    while (v21);
  }

  if (*(fromCopy + 17))
  {
    [(_MRContentItemProtobuf *)self setParentIdentifier:?];
  }

  if (*(fromCopy + 1))
  {
    [(_MRContentItemProtobuf *)self setAncestorIdentifier:?];
  }

  if (*(fromCopy + 18))
  {
    [(_MRContentItemProtobuf *)self setQueueIdentifier:?];
  }

  if (*(fromCopy + 20))
  {
    [(_MRContentItemProtobuf *)self setRequestIdentifier:?];
  }

  v24 = *(fromCopy + 184);
  if ((v24 & 2) != 0)
  {
    self->_artworkDataWidth = *(fromCopy + 11);
    *&self->_has |= 2u;
    v24 = *(fromCopy + 184);
  }

  if (v24)
  {
    self->_artworkDataHeight = *(fromCopy + 10);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 6))
  {
    [(_MRContentItemProtobuf *)self setAssociatedParticipantIdentifier:?];
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v25 = *(fromCopy + 8);
  v26 = [v25 countByEnumeratingWithState:&v93 objects:v116 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v94;
    do
    {
      for (m = 0; m != v27; ++m)
      {
        if (*v94 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(_MRContentItemProtobuf *)self addAvailableArtworkFormats:*(*(&v93 + 1) + 8 * m)];
      }

      v27 = [v25 countByEnumeratingWithState:&v93 objects:v116 count:16];
    }

    while (v27);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v30 = *(fromCopy + 10);
  v31 = [v30 countByEnumeratingWithState:&v89 objects:v115 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v90;
    do
    {
      for (n = 0; n != v32; ++n)
      {
        if (*v90 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [(_MRContentItemProtobuf *)self addAvailableRemoteArtworkFormats:*(*(&v89 + 1) + 8 * n)];
      }

      v32 = [v30 countByEnumeratingWithState:&v89 objects:v115 count:16];
    }

    while (v32);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v35 = *(fromCopy + 12);
  v36 = [v35 countByEnumeratingWithState:&v85 objects:v114 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v86;
    do
    {
      for (ii = 0; ii != v37; ++ii)
      {
        if (*v86 != v38)
        {
          objc_enumerationMutation(v35);
        }

        [(_MRContentItemProtobuf *)self addDataArtworks:*(*(&v85 + 1) + 8 * ii)];
      }

      v37 = [v35 countByEnumeratingWithState:&v85 objects:v114 count:16];
    }

    while (v37);
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v40 = *(fromCopy + 19);
  v41 = [v40 countByEnumeratingWithState:&v81 objects:v113 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v82;
    do
    {
      for (jj = 0; jj != v42; ++jj)
      {
        if (*v82 != v43)
        {
          objc_enumerationMutation(v40);
        }

        [(_MRContentItemProtobuf *)self addRemoteArtworks:*(*(&v81 + 1) + 8 * jj)];
      }

      v42 = [v40 countByEnumeratingWithState:&v81 objects:v113 count:16];
    }

    while (v42);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v45 = *(fromCopy + 22);
  v46 = [v45 countByEnumeratingWithState:&v77 objects:v112 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v78;
    do
    {
      for (kk = 0; kk != v47; ++kk)
      {
        if (*v78 != v48)
        {
          objc_enumerationMutation(v45);
        }

        [(_MRContentItemProtobuf *)self addTranscriptAlignments:*(*(&v77 + 1) + 8 * kk)];
      }

      v47 = [v45 countByEnumeratingWithState:&v77 objects:v112 count:16];
    }

    while (v47);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v50 = *(fromCopy + 7);
  v51 = [v50 countByEnumeratingWithState:&v73 objects:v111 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v74;
    do
    {
      for (mm = 0; mm != v52; ++mm)
      {
        if (*v74 != v53)
        {
          objc_enumerationMutation(v50);
        }

        [(_MRContentItemProtobuf *)self addAvailableAnimatedArtworkFormats:*(*(&v73 + 1) + 8 * mm)];
      }

      v52 = [v50 countByEnumeratingWithState:&v73 objects:v111 count:16];
    }

    while (v52);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v55 = *(fromCopy + 2);
  v56 = [v55 countByEnumeratingWithState:&v69 objects:v110 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v70;
    do
    {
      for (nn = 0; nn != v57; ++nn)
      {
        if (*v70 != v58)
        {
          objc_enumerationMutation(v55);
        }

        [(_MRContentItemProtobuf *)self addAnimatedArtworkPreviewFrames:*(*(&v69 + 1) + 8 * nn)];
      }

      v57 = [v55 countByEnumeratingWithState:&v69 objects:v110 count:16];
    }

    while (v57);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v60 = *(fromCopy + 3);
  v61 = [v60 countByEnumeratingWithState:&v65 objects:v109 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v66;
    do
    {
      for (i1 = 0; i1 != v62; ++i1)
      {
        if (*v66 != v63)
        {
          objc_enumerationMutation(v60);
        }

        [(_MRContentItemProtobuf *)self addAnimatedArtworks:*(*(&v65 + 1) + 8 * i1), v65];
      }

      v62 = [v60 countByEnumeratingWithState:&v65 objects:v109 count:16];
    }

    while (v62);
  }
}

@end
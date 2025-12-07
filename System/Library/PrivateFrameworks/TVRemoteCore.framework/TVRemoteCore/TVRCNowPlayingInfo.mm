@interface TVRCNowPlayingInfo
- (BOOL)isEqualToNowPlayingInfo:(id)info;
- (TVRCNowPlayingInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)nowPlayingInfoMergedWithNowPlayingInfo:(id)info;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TVRCNowPlayingInfo

- (id)description
{
  v21 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v20 = NSStringFromClass(v3);
  identifier = [(TVRCNowPlayingInfo *)self identifier];
  playbackRate = [(TVRCNowPlayingInfo *)self playbackRate];
  playbackState = [(TVRCNowPlayingInfo *)self playbackState];
  metadata = [(TVRCNowPlayingInfo *)self metadata];
  title = [metadata title];
  metadata2 = [(TVRCNowPlayingInfo *)self metadata];
  canonicalID = [metadata2 canonicalID];
  metadata3 = [(TVRCNowPlayingInfo *)self metadata];
  timestamp = [metadata3 timestamp];
  metadata4 = [(TVRCNowPlayingInfo *)self metadata];
  timeOffset = [metadata4 timeOffset];
  playerIdentifier = [(TVRCNowPlayingInfo *)self playerIdentifier];
  v4 = MEMORY[0x277CCABB0];
  imageData = [(TVRCNowPlayingInfo *)self imageData];
  v13 = [v4 numberWithUnsignedInteger:{objc_msgSend(imageData, "length")}];
  imageDataIsPlaceholder = [(TVRCNowPlayingInfo *)self imageDataIsPlaceholder];
  v6 = MEMORY[0x277CCABB0];
  rawTimedMetadata = [(TVRCNowPlayingInfo *)self rawTimedMetadata];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(rawTimedMetadata, "length")}];
  expectsTimedMetadata = [(TVRCNowPlayingInfo *)self expectsTimedMetadata];
  captionsEnabled = [(TVRCNowPlayingInfo *)self captionsEnabled];
  hasValidCaptionOptions = [(TVRCNowPlayingInfo *)self hasValidCaptionOptions];
  v22 = [v21 stringWithFormat:@"<%@ %p: identifier=%@ playbackRate=%@; playbackState=%@; metadata.title=%@; metadata.canonicalID=%@; timestamp=%@; timeOffset=%@; playerIdentifier=%@; imageData.length=%@; imageDataIsPlaceholder=%@; rawTimedMetadata.length=%@, expectsTimedMetadata=%@, captionsEnabled=%@, hasValidCaptionOptions=%@", v20, self, identifier, playbackRate, playbackState, title, canonicalID, timestamp, timeOffset, playerIdentifier, v13, imageDataIsPlaceholder, v8, expectsTimedMetadata, captionsEnabled, hasValidCaptionOptions];;

  return v22;
}

- (BOOL)isEqualToNowPlayingInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy
    || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0)
    || (-[TVRCNowPlayingInfo identifier](self, "identifier"), v5 = objc_claimAutoreleasedReturnValue(), [infoCopy identifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = (v5 == 0) ^ (v6 == 0), v6, v5, (v7 & 1) != 0)
    || (-[TVRCNowPlayingInfo playbackRate](self, "playbackRate"), v8 = objc_claimAutoreleasedReturnValue(), [infoCopy playbackRate], v9 = objc_claimAutoreleasedReturnValue(), v10 = (v8 == 0) ^ (v9 == 0), v9, v8, (v10 & 1) != 0)
    || (-[TVRCNowPlayingInfo playbackState](self, "playbackState"), v11 = objc_claimAutoreleasedReturnValue(), [infoCopy playbackState], v12 = objc_claimAutoreleasedReturnValue(), v13 = (v11 == 0) ^ (v12 == 0), v12, v11, (v13 & 1) != 0)
    || (-[TVRCNowPlayingInfo playerIdentifier](self, "playerIdentifier"), v14 = objc_claimAutoreleasedReturnValue(), [infoCopy playerIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = (v14 == 0) ^ (v15 == 0), v15, v14, (v16 & 1) != 0)
    || (-[TVRCNowPlayingInfo metadata](self, "metadata"), v17 = objc_claimAutoreleasedReturnValue(), [infoCopy metadata], v18 = objc_claimAutoreleasedReturnValue(), v19 = (v17 == 0) ^ (v18 == 0), v18, v17, (v19 & 1) != 0)
    || (-[TVRCNowPlayingInfo imageData](self, "imageData"), v20 = objc_claimAutoreleasedReturnValue(), [infoCopy imageData], v21 = objc_claimAutoreleasedReturnValue(), v22 = (v20 == 0) ^ (v21 == 0), v21, v20, (v22 & 1) != 0)
    || (-[TVRCNowPlayingInfo imageDataIsPlaceholder](self, "imageDataIsPlaceholder"), v23 = objc_claimAutoreleasedReturnValue(), [infoCopy imageDataIsPlaceholder], v24 = objc_claimAutoreleasedReturnValue(), v25 = (v23 == 0) ^ (v24 == 0), v24, v23, (v25 & 1) != 0)
    || (-[TVRCNowPlayingInfo rawTimedMetadata](self, "rawTimedMetadata"), v26 = objc_claimAutoreleasedReturnValue(), [infoCopy rawTimedMetadata], v27 = objc_claimAutoreleasedReturnValue(), v28 = (v26 == 0) ^ (v27 == 0), v27, v26, (v28 & 1) != 0)
    || (-[TVRCNowPlayingInfo expectsTimedMetadata](self, "expectsTimedMetadata"), v29 = objc_claimAutoreleasedReturnValue(), [infoCopy expectsTimedMetadata], v30 = objc_claimAutoreleasedReturnValue(), v31 = (v29 == 0) ^ (v30 == 0), v30, v29, (v31 & 1) != 0)
    || (-[TVRCNowPlayingInfo captionsEnabled](self, "captionsEnabled"), v32 = objc_claimAutoreleasedReturnValue(), [infoCopy captionsEnabled], v33 = objc_claimAutoreleasedReturnValue(), v34 = (v32 == 0) ^ (v33 == 0), v33, v32, (v34 & 1) != 0)
    || (-[TVRCNowPlayingInfo hasValidCaptionOptions](self, "hasValidCaptionOptions"), v35 = objc_claimAutoreleasedReturnValue(), [infoCopy hasValidCaptionOptions], v36 = objc_claimAutoreleasedReturnValue(), v37 = (v35 == 0) ^ (v36 == 0), v36, v35, (v37 & 1) != 0)
    || (-[TVRCNowPlayingInfo identifier](self, "identifier"), (v38 = objc_claimAutoreleasedReturnValue()) != 0) && (v39 = v38, -[TVRCNowPlayingInfo identifier](self, "identifier"), v40 = objc_claimAutoreleasedReturnValue(), [infoCopy identifier], v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v40, "isEqualToString:", v41), v41, v40, v39, !v42)
    || (-[TVRCNowPlayingInfo playbackRate](self, "playbackRate"), (v43 = objc_claimAutoreleasedReturnValue()) != 0) && (v44 = v43, -[TVRCNowPlayingInfo playbackRate](self, "playbackRate"), v45 = objc_claimAutoreleasedReturnValue(), [infoCopy playbackRate], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v45, "isEqualToNumber:", v46), v46, v45, v44, !v47)
    || (-[TVRCNowPlayingInfo playbackState](self, "playbackState"), (v48 = objc_claimAutoreleasedReturnValue()) != 0) && (v49 = v48, -[TVRCNowPlayingInfo playbackState](self, "playbackState"), v50 = objc_claimAutoreleasedReturnValue(), [infoCopy playbackState], v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v50, "isEqualToNumber:", v51), v51, v50, v49, !v52)
    || (-[TVRCNowPlayingInfo playerIdentifier](self, "playerIdentifier"), (v53 = objc_claimAutoreleasedReturnValue()) != 0) && (v54 = v53, -[TVRCNowPlayingInfo playerIdentifier](self, "playerIdentifier"), v55 = objc_claimAutoreleasedReturnValue(), [infoCopy playerIdentifier], v56 = objc_claimAutoreleasedReturnValue(), v57 = objc_msgSend(v55, "isEqualToString:", v56), v56, v55, v54, !v57)
    || (-[TVRCNowPlayingInfo imageDataIsPlaceholder](self, "imageDataIsPlaceholder"), (v58 = objc_claimAutoreleasedReturnValue()) != 0) && (v59 = v58, -[TVRCNowPlayingInfo imageDataIsPlaceholder](self, "imageDataIsPlaceholder"), v60 = objc_claimAutoreleasedReturnValue(), [infoCopy imageDataIsPlaceholder], v61 = objc_claimAutoreleasedReturnValue(), v62 = objc_msgSend(v60, "isEqualToNumber:", v61), v61, v60, v59, !v62)
    || (-[TVRCNowPlayingInfo imageData](self, "imageData"), (v63 = objc_claimAutoreleasedReturnValue()) != 0) && (v64 = v63, -[TVRCNowPlayingInfo imageData](self, "imageData"), v65 = objc_claimAutoreleasedReturnValue(), [infoCopy imageData], v66 = objc_claimAutoreleasedReturnValue(), v67 = objc_msgSend(v65, "isEqualToData:", v66), v66, v65, v64, !v67)
    || (-[TVRCNowPlayingInfo metadata](self, "metadata"), (v68 = objc_claimAutoreleasedReturnValue()) != 0) && (v69 = v68, -[TVRCNowPlayingInfo metadata](self, "metadata"), v70 = objc_claimAutoreleasedReturnValue(), [infoCopy metadata], v71 = objc_claimAutoreleasedReturnValue(), v72 = objc_msgSend(v70, "isEqualToNowPlayingMetadata:", v71), v71, v70, v69, !v72)
    || (-[TVRCNowPlayingInfo rawTimedMetadata](self, "rawTimedMetadata"), (v73 = objc_claimAutoreleasedReturnValue()) != 0) && (v74 = v73, -[TVRCNowPlayingInfo rawTimedMetadata](self, "rawTimedMetadata"), v75 = objc_claimAutoreleasedReturnValue(), [infoCopy rawTimedMetadata], v76 = objc_claimAutoreleasedReturnValue(), v77 = objc_msgSend(v75, "isEqualToData:", v76), v76, v75, v74, !v77)
    || (-[TVRCNowPlayingInfo expectsTimedMetadata](self, "expectsTimedMetadata"), (v78 = objc_claimAutoreleasedReturnValue()) != 0) && (v79 = v78, -[TVRCNowPlayingInfo expectsTimedMetadata](self, "expectsTimedMetadata"), v80 = objc_claimAutoreleasedReturnValue(), [infoCopy expectsTimedMetadata], v81 = objc_claimAutoreleasedReturnValue(), v82 = objc_msgSend(v80, "isEqualToNumber:", v81), v81, v80, v79, !v82)
    || (-[TVRCNowPlayingInfo captionsEnabled](self, "captionsEnabled"), (v83 = objc_claimAutoreleasedReturnValue()) != 0) && (v84 = v83, -[TVRCNowPlayingInfo captionsEnabled](self, "captionsEnabled"), v85 = objc_claimAutoreleasedReturnValue(), [infoCopy captionsEnabled], v86 = objc_claimAutoreleasedReturnValue(), v87 = objc_msgSend(v85, "isEqualToNumber:", v86), v86, v85, v84, !v87))
  {
    v92 = 0;
  }

  else
  {
    hasValidCaptionOptions = [(TVRCNowPlayingInfo *)self hasValidCaptionOptions];
    if (hasValidCaptionOptions)
    {
      v89 = hasValidCaptionOptions;
      hasValidCaptionOptions2 = [(TVRCNowPlayingInfo *)self hasValidCaptionOptions];
      hasValidCaptionOptions3 = [infoCopy hasValidCaptionOptions];
      v92 = [hasValidCaptionOptions2 isEqualToNumber:hasValidCaptionOptions3];
    }

    else
    {
      v92 = 1;
    }
  }

  return v92 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TVRCNowPlayingInfo);
  v5 = [(NSString *)self->_identifier copy];
  [(TVRCNowPlayingInfo *)v4 setIdentifier:v5];

  v6 = [(NSNumber *)self->_playbackRate copy];
  [(TVRCNowPlayingInfo *)v4 setPlaybackRate:v6];

  v7 = [(NSNumber *)self->_playbackState copy];
  [(TVRCNowPlayingInfo *)v4 setPlaybackState:v7];

  v8 = [(NSString *)self->_playerIdentifier copy];
  [(TVRCNowPlayingInfo *)v4 setPlayerIdentifier:v8];

  v9 = [(TVRCNowPlayingMetadata *)self->_metadata copy];
  [(TVRCNowPlayingInfo *)v4 setMetadata:v9];

  [(TVRCNowPlayingInfo *)v4 setImageData:self->_imageData];
  v10 = [(NSNumber *)self->_imageDataIsPlaceholder copy];
  [(TVRCNowPlayingInfo *)v4 setImageDataIsPlaceholder:v10];

  [(TVRCNowPlayingInfo *)v4 setRawTimedMetadata:self->_rawTimedMetadata];
  [(TVRCNowPlayingInfo *)v4 setExpectsTimedMetadata:self->_expectsTimedMetadata];
  v11 = [(NSNumber *)self->_captionsEnabled copy];
  [(TVRCNowPlayingInfo *)v4 setCaptionsEnabled:v11];

  v12 = [(NSNumber *)self->_hasValidCaptionOptions copy];
  [(TVRCNowPlayingInfo *)v4 setHasValidCaptionOptions:v12];

  return v4;
}

- (id)nowPlayingInfoMergedWithNowPlayingInfo:(id)info
{
  infoCopy = info;
  v5 = [(TVRCNowPlayingInfo *)self copy];
  identifier = [infoCopy identifier];

  if (identifier)
  {
    identifier2 = [infoCopy identifier];
    [v5 setIdentifier:identifier2];
  }

  playbackRate = [infoCopy playbackRate];

  if (playbackRate)
  {
    playbackRate2 = [infoCopy playbackRate];
    [v5 setPlaybackRate:playbackRate2];
  }

  playbackState = [infoCopy playbackState];

  if (playbackState)
  {
    playbackState2 = [infoCopy playbackState];
    [v5 setPlaybackState:playbackState2];
  }

  playerIdentifier = [infoCopy playerIdentifier];

  if (playerIdentifier)
  {
    playerIdentifier2 = [infoCopy playerIdentifier];
    [v5 setPlayerIdentifier:playerIdentifier2];
  }

  metadata = [infoCopy metadata];

  if (metadata)
  {
    metadata2 = [infoCopy metadata];
    [v5 setMetadata:metadata2];
  }

  imageData = [infoCopy imageData];

  if (imageData)
  {
    imageData2 = [infoCopy imageData];
    [v5 setImageData:imageData2];
  }

  imageDataIsPlaceholder = [infoCopy imageDataIsPlaceholder];

  if (imageDataIsPlaceholder)
  {
    imageDataIsPlaceholder2 = [infoCopy imageDataIsPlaceholder];
    [v5 setImageDataIsPlaceholder:imageDataIsPlaceholder2];
  }

  rawTimedMetadata = [infoCopy rawTimedMetadata];

  if (rawTimedMetadata)
  {
    rawTimedMetadata2 = [infoCopy rawTimedMetadata];
    [v5 setRawTimedMetadata:rawTimedMetadata2];
  }

  expectsTimedMetadata = [infoCopy expectsTimedMetadata];

  if (expectsTimedMetadata)
  {
    expectsTimedMetadata2 = [infoCopy expectsTimedMetadata];
    [v5 setExpectsTimedMetadata:expectsTimedMetadata2];
  }

  captionsEnabled = [infoCopy captionsEnabled];

  if (captionsEnabled)
  {
    captionsEnabled2 = [infoCopy captionsEnabled];
    [v5 setCaptionsEnabled:captionsEnabled2];
  }

  hasValidCaptionOptions = [infoCopy hasValidCaptionOptions];

  if (hasValidCaptionOptions)
  {
    hasValidCaptionOptions2 = [infoCopy hasValidCaptionOptions];
    [v5 setHasValidCaptionOptions:hasValidCaptionOptions2];
  }

  return v5;
}

- (TVRCNowPlayingInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = TVRCNowPlayingInfo;
  v5 = [(TVRCNowPlayingInfo *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playbackRate"];
    playbackRate = v5->_playbackRate;
    v5->_playbackRate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playbackState"];
    playbackState = v5->_playbackState;
    v5->_playbackState = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playerIdentifier"];
    playerIdentifier = v5->_playerIdentifier;
    v5->_playerIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageDataIsPlaceholder"];
    imageDataIsPlaceholder = v5->_imageDataIsPlaceholder;
    v5->_imageDataIsPlaceholder = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawTimedMetadata"];
    rawTimedMetadata = v5->_rawTimedMetadata;
    v5->_rawTimedMetadata = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expectsTimedMetadata"];
    expectsTimedMetadata = v5->_expectsTimedMetadata;
    v5->_expectsTimedMetadata = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"captionsEnabled"];
    captionsEnabled = v5->_captionsEnabled;
    v5->_captionsEnabled = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasValidCaptionOptions"];
    hasValidCaptionOptions = v5->_hasValidCaptionOptions;
    v5->_hasValidCaptionOptions = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_playbackRate forKey:@"playbackRate"];
  [coderCopy encodeObject:self->_playbackState forKey:@"playbackState"];
  [coderCopy encodeObject:self->_playerIdentifier forKey:@"playerIdentifier"];
  [coderCopy encodeObject:self->_metadata forKey:@"metadata"];
  [coderCopy encodeObject:self->_imageData forKey:@"imageData"];
  [coderCopy encodeObject:self->_imageDataIsPlaceholder forKey:@"imageDataIsPlaceholder"];
  [coderCopy encodeObject:self->_rawTimedMetadata forKey:@"rawTimedMetadata"];
  [coderCopy encodeObject:self->_expectsTimedMetadata forKey:@"expectsTimedMetadata"];
  [coderCopy encodeObject:self->_captionsEnabled forKey:@"captionsEnabled"];
  [coderCopy encodeObject:self->_hasValidCaptionOptions forKey:@"hasValidCaptionOptions"];
}

@end
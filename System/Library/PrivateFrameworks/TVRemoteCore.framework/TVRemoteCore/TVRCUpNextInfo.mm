@interface TVRCUpNextInfo
+ (BOOL)isAppleOriginalFromDict:(id)dict;
+ (id)upNextInfoWithDictionary:(id)dictionary;
+ (id)upNextInfoWithMediaInfo:(id)info reason:(id)reason service:(id)service isAppleOriginal:(BOOL)original progress:(id)progress timeRemaining:(id)remaining actionURL:(id)l shareURL:(id)self0 shareShowURL:(id)self1 artworkNeedsCornerBlur:(BOOL)self2;
- (BOOL)isEqualToUpNextInfo:(id)info;
- (TVRCUpNextInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TVRCUpNextInfo

+ (id)upNextInfoWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(TVRCUpNextInfo);
  v6 = [TVRCMediaInfo mediaInfoWithDictionary:dictionaryCopy];
  [(TVRCUpNextInfo *)v5 setMediaInfo:v6];

  v7 = [dictionaryCopy objectForKeyedSubscript:@"localizedContext"];
  [(TVRCUpNextInfo *)v5 setReason:v7];

  v8 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
  [(TVRCUpNextInfo *)v5 setTimestamp:v8];

  v9 = [self serviceNameFromDict:dictionaryCopy];
  [(TVRCUpNextInfo *)v5 setService:v9];

  v10 = [self isAppleOriginalFromDict:dictionaryCopy];
  [(TVRCUpNextInfo *)v5 setIsAppleOriginal:v10];

  return v5;
}

+ (id)upNextInfoWithMediaInfo:(id)info reason:(id)reason service:(id)service isAppleOriginal:(BOOL)original progress:(id)progress timeRemaining:(id)remaining actionURL:(id)l shareURL:(id)self0 shareShowURL:(id)self1 artworkNeedsCornerBlur:(BOOL)self2
{
  originalCopy = original;
  uRLCopy = uRL;
  rLCopy = rL;
  lCopy = l;
  remainingCopy = remaining;
  progressCopy = progress;
  serviceCopy = service;
  reasonCopy = reason;
  infoCopy = info;
  v25 = objc_alloc_init(TVRCUpNextInfo);
  [(TVRCUpNextInfo *)v25 setMediaInfo:infoCopy];

  [(TVRCUpNextInfo *)v25 setReason:reasonCopy];
  [(TVRCUpNextInfo *)v25 setService:serviceCopy];

  [(TVRCUpNextInfo *)v25 setIsAppleOriginal:originalCopy];
  [(TVRCUpNextInfo *)v25 setProgress:progressCopy];

  [(TVRCUpNextInfo *)v25 setTimeRemaining:remainingCopy];
  [(TVRCUpNextInfo *)v25 setActionURL:lCopy];

  [(TVRCUpNextInfo *)v25 setShareURL:rLCopy];
  [(TVRCUpNextInfo *)v25 setShareShowURL:uRLCopy];

  [(TVRCUpNextInfo *)v25 setArtworkNeedsCornerBlur:blur];

  return v25;
}

- (BOOL)isEqualToUpNextInfo:(id)info
{
  infoCopy = info;
  if (infoCopy
    && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)
    && (-[TVRCUpNextInfo progress](self, "progress"), v5 = objc_claimAutoreleasedReturnValue(), [infoCopy progress], v6 = objc_claimAutoreleasedReturnValue(), v7 = (v5 == 0) ^ (v6 == 0), v6, v5, (v7 & 1) == 0)
    && (-[TVRCUpNextInfo timeRemaining](self, "timeRemaining"), v8 = objc_claimAutoreleasedReturnValue(), [infoCopy timeRemaining], v9 = objc_claimAutoreleasedReturnValue(), v10 = (v8 == 0) ^ (v9 == 0), v9, v8, (v10 & 1) == 0)
    && (-[TVRCUpNextInfo actionURL](self, "actionURL"), v11 = objc_claimAutoreleasedReturnValue(), [infoCopy actionURL], v12 = objc_claimAutoreleasedReturnValue(), v13 = (v11 == 0) ^ (v12 == 0), v12, v11, (v13 & 1) == 0)
    && (-[TVRCUpNextInfo shareURL](self, "shareURL"), v14 = objc_claimAutoreleasedReturnValue(), [infoCopy shareURL], v15 = objc_claimAutoreleasedReturnValue(), v16 = (v14 == 0) ^ (v15 == 0), v15, v14, (v16 & 1) == 0)
    && (-[TVRCUpNextInfo shareShowURL](self, "shareShowURL"), v17 = objc_claimAutoreleasedReturnValue(), [infoCopy shareShowURL], v18 = objc_claimAutoreleasedReturnValue(), v19 = (v17 == 0) ^ (v18 == 0), v18, v17, (v19 & 1) == 0)
    && (-[TVRCUpNextInfo reason](self, "reason"), v20 = objc_claimAutoreleasedReturnValue(), [infoCopy reason], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "isEqualToString:", v21), v21, v20, v22)
    && (-[TVRCUpNextInfo timestamp](self, "timestamp"), v23 = objc_claimAutoreleasedReturnValue(), [infoCopy timestamp], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v23, "isEqualToNumber:", v24), v24, v23, v25)
    && (-[TVRCUpNextInfo service](self, "service"), v26 = objc_claimAutoreleasedReturnValue(), [infoCopy service], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v26, "isEqualToString:", v27), v27, v26, v28)
    && (v29 = -[TVRCUpNextInfo isAppleOriginal](self, "isAppleOriginal"), v29 == [infoCopy isAppleOriginal])
    && (-[TVRCUpNextInfo mediaInfo](self, "mediaInfo"), v30 = objc_claimAutoreleasedReturnValue(), [infoCopy mediaInfo], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v30, "isEqualToMediaInfo:", v31), v31, v30, v32)
    && ((-[TVRCUpNextInfo progress](self, "progress"), (v33 = objc_claimAutoreleasedReturnValue()) == 0) || (v34 = v33, -[TVRCUpNextInfo progress](self, "progress"), v35 = objc_claimAutoreleasedReturnValue(), [infoCopy progress], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v35, "isEqual:", v36), v36, v35, v34, v37))
    && ((-[TVRCUpNextInfo timeRemaining](self, "timeRemaining"), (v38 = objc_claimAutoreleasedReturnValue()) == 0) || (v39 = v38, -[TVRCUpNextInfo timeRemaining](self, "timeRemaining"), v40 = objc_claimAutoreleasedReturnValue(), [infoCopy timeRemaining], v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v40, "isEqual:", v41), v41, v40, v39, v42))
    && ((-[TVRCUpNextInfo actionURL](self, "actionURL"), (v43 = objc_claimAutoreleasedReturnValue()) == 0) || (v44 = v43, -[TVRCUpNextInfo actionURL](self, "actionURL"), v45 = objc_claimAutoreleasedReturnValue(), [infoCopy actionURL], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v45, "isEqual:", v46), v46, v45, v44, v47))
    && ((-[TVRCUpNextInfo shareURL](self, "shareURL"), (v48 = objc_claimAutoreleasedReturnValue()) == 0) || (v49 = v48, -[TVRCUpNextInfo shareURL](self, "shareURL"), v50 = objc_claimAutoreleasedReturnValue(), [infoCopy shareURL], v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v50, "isEqual:", v51), v51, v50, v49, v52))
    && ((-[TVRCUpNextInfo shareShowURL](self, "shareShowURL"), (v53 = objc_claimAutoreleasedReturnValue()) == 0) || (v54 = v53, -[TVRCUpNextInfo shareShowURL](self, "shareShowURL"), v55 = objc_claimAutoreleasedReturnValue(), [infoCopy shareShowURL], v56 = objc_claimAutoreleasedReturnValue(), v57 = objc_msgSend(v55, "isEqual:", v56), v56, v55, v54, v57)))
  {
    artworkNeedsCornerBlur = [(TVRCUpNextInfo *)self artworkNeedsCornerBlur];
    v59 = artworkNeedsCornerBlur ^ [infoCopy artworkNeedsCornerBlur] ^ 1;
  }

  else
  {
    LOBYTE(v59) = 0;
  }

  return v59;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  mediaInfo = [(TVRCUpNextInfo *)self mediaInfo];
  v7 = [mediaInfo copyWithZone:zone];
  [v5 setMediaInfo:v7];

  reason = [(TVRCUpNextInfo *)self reason];
  [v5 setReason:reason];

  service = [(TVRCUpNextInfo *)self service];
  [v5 setService:service];

  timestamp = [(TVRCUpNextInfo *)self timestamp];
  [v5 setTimestamp:timestamp];

  [v5 setIsAppleOriginal:{-[TVRCUpNextInfo isAppleOriginal](self, "isAppleOriginal")}];
  progress = [(TVRCUpNextInfo *)self progress];
  [v5 setProgress:progress];

  timeRemaining = [(TVRCUpNextInfo *)self timeRemaining];
  [v5 setTimeRemaining:timeRemaining];

  actionURL = [(TVRCUpNextInfo *)self actionURL];
  [v5 setActionURL:actionURL];

  shareURL = [(TVRCUpNextInfo *)self shareURL];
  [v5 setShareURL:shareURL];

  shareShowURL = [(TVRCUpNextInfo *)self shareShowURL];
  [v5 setShareShowURL:shareShowURL];

  [v5 setArtworkNeedsCornerBlur:{-[TVRCUpNextInfo artworkNeedsCornerBlur](self, "artworkNeedsCornerBlur")}];
  return v5;
}

- (TVRCUpNextInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = TVRCUpNextInfo;
  v5 = [(TVRCUpNextInfo *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaInfo"];
    mediaInfo = v5->_mediaInfo;
    v5->_mediaInfo = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"service"];
    service = v5->_service;
    v5->_service = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v12;

    v5->_isAppleOriginal = [coderCopy decodeBoolForKey:@"isAppleOriginal"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"progress"];
    progress = v5->_progress;
    v5->_progress = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeRemaining"];
    timeRemaining = v5->_timeRemaining;
    v5->_timeRemaining = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionURL"];
    actionURL = v5->_actionURL;
    v5->_actionURL = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shareURL"];
    shareURL = v5->_shareURL;
    v5->_shareURL = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shareShowURL"];
    shareShowURL = v5->_shareShowURL;
    v5->_shareShowURL = v22;

    v5->_artworkNeedsCornerBlur = [coderCopy decodeBoolForKey:@"artworkNeedsCornerBlur"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  mediaInfo = self->_mediaInfo;
  coderCopy = coder;
  [coderCopy encodeObject:mediaInfo forKey:@"mediaInfo"];
  [coderCopy encodeObject:self->_reason forKey:@"reason"];
  [coderCopy encodeObject:self->_service forKey:@"service"];
  [coderCopy encodeObject:self->_timestamp forKey:@"timestamp"];
  [coderCopy encodeBool:self->_isAppleOriginal forKey:@"isAppleOriginal"];
  [coderCopy encodeObject:self->_progress forKey:@"progress"];
  [coderCopy encodeObject:self->_timeRemaining forKey:@"timeRemaining"];
  [coderCopy encodeObject:self->_actionURL forKey:@"actionURL"];
  [coderCopy encodeObject:self->_shareURL forKey:@"shareURL"];
  [coderCopy encodeObject:self->_shareShowURL forKey:@"shareShowURL"];
  [coderCopy encodeBool:self->_artworkNeedsCornerBlur forKey:@"artworkNeedsCornerBlur"];
}

+ (BOOL)isAppleOriginalFromDict:(id)dict
{
  v3 = [dict objectForKeyedSubscript:@"isAppleOriginal"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end
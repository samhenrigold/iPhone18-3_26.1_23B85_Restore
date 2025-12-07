@interface GEOComposedGuidanceEvent
- (BOOL)hasHaptics;
- (GEONameInfo)shieldInfo;
- (NSArray)signDetails;
- (NSArray)signTitles;
- (NSString)exclusiveSetIdentifier;
- (unint64_t)stackRanking;
@end

@implementation GEOComposedGuidanceEvent

- (BOOL)hasHaptics
{
  spokenGuidance = [(GEOGuidanceEvent *)self->_guidanceEvent spokenGuidance];
  tapBeforeAnnouncement = [spokenGuidance tapBeforeAnnouncement];

  return tapBeforeAnnouncement;
}

- (unint64_t)stackRanking
{
  signGuidance = [(GEOGuidanceEvent *)self->_guidanceEvent signGuidance];
  hasStackRanking = [signGuidance hasStackRanking];

  signGuidance2 = [(GEOGuidanceEvent *)self->_guidanceEvent signGuidance];
  v6 = signGuidance2;
  if (hasStackRanking)
  {
    stackRanking = [signGuidance2 stackRanking];
  }

  else
  {
    secondarySignsCount = [signGuidance2 secondarySignsCount];

    if (secondarySignsCount)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  return stackRanking;
}

- (NSArray)signDetails
{
  signGuidance = [(GEOGuidanceEvent *)self->_guidanceEvent signGuidance];
  signDetails = [signGuidance signDetails];

  signGuidance2 = [(GEOGuidanceEvent *)self->_guidanceEvent signGuidance];
  signGuidance3 = signGuidance2;
  if (signDetails)
  {
    signDetails2 = [signGuidance2 signDetails];
LABEL_5:
    v9 = signDetails2;

    goto LABEL_6;
  }

  secondarySignsCount = [signGuidance2 secondarySignsCount];

  if (secondarySignsCount)
  {
    signGuidance3 = [(GEOGuidanceEvent *)self->_guidanceEvent signGuidance];
    signDetails2 = [signGuidance3 secondarySigns];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (GEONameInfo)shieldInfo
{
  signGuidance = [(GEOGuidanceEvent *)self->_guidanceEvent signGuidance];
  shieldName = [signGuidance shieldName];

  return shieldName;
}

- (NSArray)signTitles
{
  signGuidance = [(GEOGuidanceEvent *)self->_guidanceEvent signGuidance];
  signTitles = [signGuidance signTitles];

  return signTitles;
}

- (NSString)exclusiveSetIdentifier
{
  if (-[GEOGuidanceEvent hasSpokenGuidance](self->_guidanceEvent, "hasSpokenGuidance") && (-[GEOGuidanceEvent spokenGuidance](self->_guidanceEvent, "spokenGuidance"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 hasExclusiveSetIdentifier], v3, v4))
  {
    v5 = MEMORY[0x1E696AEC0];
    spokenGuidance = [(GEOGuidanceEvent *)self->_guidanceEvent spokenGuidance];
    v7 = [v5 stringWithFormat:@"%lu", objc_msgSend(spokenGuidance, "exclusiveSetIdentifier")];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
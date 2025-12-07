@interface APPCNativeRepresentation
- (APPCNativeRepresentation)initWithIdentifier:(id)identifier adType:(int64_t)type desiredPosition:(int64_t)position privacyMarkerPosition:(int64_t)markerPosition articleID:(id)d articleTitle:(id)title adSponsor:(id)sponsor campaignData:(id)self0 adSize:(CGSize)self1 adPolicyData:(id)self2;
@end

@implementation APPCNativeRepresentation

- (APPCNativeRepresentation)initWithIdentifier:(id)identifier adType:(int64_t)type desiredPosition:(int64_t)position privacyMarkerPosition:(int64_t)markerPosition articleID:(id)d articleTitle:(id)title adSponsor:(id)sponsor campaignData:(id)self0 adSize:(CGSize)self1 adPolicyData:(id)self2
{
  height = size.height;
  width = size.width;
  positionCopy = position;
  markerPositionCopy = markerPosition;
  typeCopy = type;
  selfCopy = self;
  v16 = sub_1C1B945F8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1B945D8();
  if (d)
  {
    v33 = sub_1C1B94D88();
    v20 = v19;
  }

  else
  {
    v33 = 0;
    v20 = 0;
  }

  sponsorCopy = sponsor;
  if (title)
  {
    title = sub_1C1B94D88();
    v23 = v22;
    if (sponsor)
    {
LABEL_6:
      v24 = sub_1C1B94D88();
      sponsorCopy = v25;
      goto LABEL_9;
    }
  }

  else
  {
    v23 = 0;
    if (sponsor)
    {
      goto LABEL_6;
    }
  }

  v24 = 0;
LABEL_9:
  dataCopy = data;
  policyDataCopy = policyData;
  if (dataCopy)
  {
    v28 = sub_1C1B94D88();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  return sub_1C1B03C98(v18, typeCopy, positionCopy, markerPositionCopy, v33, v20, title, v23, width, height, v24, sponsorCopy, v28, v30, policyDataCopy);
}

@end
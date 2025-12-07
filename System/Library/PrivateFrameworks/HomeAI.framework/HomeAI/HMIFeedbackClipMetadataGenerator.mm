@interface HMIFeedbackClipMetadataGenerator
+ (id)metadataForCameraProfile:(id)profile;
+ (id)metadataForClip:(id)clip;
+ (id)metadataForClip:(id)clip withCameraProfile:(id)profile inHome:(id)home;
+ (id)metadataForHome:(id)home;
@end

@implementation HMIFeedbackClipMetadataGenerator

+ (id)metadataForCameraProfile:(id)profile
{
  profileCopy = profile;
  settingsControl = [profileCopy settingsControl];
  nightVision = [settingsControl nightVision];
  currentHorizontalTilt = [settingsControl currentHorizontalTilt];
  currentVerticalTilt = [settingsControl currentVerticalTilt];
  opticalZoom = [settingsControl opticalZoom];
  digitalZoom = [settingsControl digitalZoom];
  imageRotation = [settingsControl imageRotation];
  v55 = settingsControl;
  imageMirroring = [settingsControl imageMirroring];
  accessory = [profileCopy accessory];

  if (accessory)
  {
    name = [accessory name];
    uniqueIdentifier = [accessory uniqueIdentifier];
    model = [accessory model];
    manufacturer = [accessory manufacturer];
    firmwareVersion = [accessory firmwareVersion];
    room = [accessory room];
    v14 = room;
    if (room)
    {
      name2 = [room name];
    }

    else
    {
      name2 = 0;
    }

    if (name)
    {
      v48 = 0;
      null = name;
      goto LABEL_9;
    }
  }

  else
  {
    uniqueIdentifier = 0;
    name2 = 0;
    firmwareVersion = 0;
    manufacturer = 0;
    model = 0;
  }

  null = [MEMORY[0x277CBEB68] null];
  name = 0;
  v48 = 1;
LABEL_9:
  v43 = null;
  uUIDString = [uniqueIdentifier UUIDString];
  v47 = uUIDString;
  if (!uUIDString)
  {
    uUIDString = [MEMORY[0x277CBEB68] null];
  }

  v42 = uUIDString;
  null2 = name2;
  if (!name2)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v41 = null2;
  value = [nightVision value];
  v56 = value;
  if (!value)
  {
    value = [MEMORY[0x277CBEB68] null];
  }

  v49 = accessory;
  v40 = value;
  value2 = [currentHorizontalTilt value];
  v46 = value2;
  if (!value2)
  {
    value2 = [MEMORY[0x277CBEB68] null];
  }

  v54 = nightVision;
  v39 = value2;
  value3 = [currentVerticalTilt value];
  v21 = value3;
  if (!value3)
  {
    value3 = [MEMORY[0x277CBEB68] null];
  }

  v38 = value3;
  v52 = opticalZoom;
  value4 = [opticalZoom value];
  v23 = value4;
  if (!value4)
  {
    value4 = [MEMORY[0x277CBEB68] null];
  }

  v53 = currentVerticalTilt;
  v37 = value4;
  value5 = [digitalZoom value];
  v25 = value5;
  if (!value5)
  {
    value5 = [MEMORY[0x277CBEB68] null];
  }

  v36 = value5;
  value6 = [imageRotation value];
  v27 = value6;
  if (!value6)
  {
    value6 = [MEMORY[0x277CBEB68] null];
  }

  v45 = v21;
  v35 = value6;
  v50 = imageMirroring;
  value7 = [imageMirroring value];
  null3 = value7;
  if (!value7)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v51 = currentHorizontalTilt;
  null4 = model;
  if (!model)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  null5 = manufacturer;
  if (!manufacturer)
  {
    null5 = [MEMORY[0x277CBEB68] null];
  }

  null6 = firmwareVersion;
  if (!firmwareVersion)
  {
    null6 = [MEMORY[0x277CBEB68] null];
  }

  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  if (!firmwareVersion)
  {
  }

  if (!manufacturer)
  {
  }

  if (!model)
  {
  }

  if (!value7)
  {
  }

  if (!v27)
  {
  }

  if (!v25)
  {
  }

  if (!v23)
  {
  }

  if (!v45)
  {
  }

  if (!v46)
  {
  }

  v33 = v56;
  if (!v56)
  {

    v33 = 0;
  }

  if (name2)
  {
    if (v47)
    {
      goto LABEL_55;
    }
  }

  else
  {

    if (v47)
    {
      goto LABEL_55;
    }
  }

LABEL_55:
  if (v48)
  {
  }

  return v44;
}

+ (id)metadataForClip:(id)clip
{
  clipCopy = clip;
  significantEvents = [clipCopy significantEvents];
  v5 = [significantEvents na_map:?];

  uniqueIdentifier = [clipCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  startDate = [clipCopy startDate];
  v13 = HMIConvertNSDateToIsoDateString(startDate);
  v8 = MEMORY[0x277CCABB0];
  [0x277CCA000 duration];
  v9 = [v8 numberWithDouble:?];
  v14 = HMIJSONDecimalNumberForNumber(v9, 2);
  [clipCopy quality];

  v15 = HMStringFromCameraClipQuality();
  allObjects = [v5 allObjects];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  return v10;
}

id __52__HMIFeedbackClipMetadataGenerator_metadataForClip___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = a2;
  [v3 timeOffsetWithinClip];
  v4 = [v2 numberWithDouble:?];
  v8 = HMIJSONDecimalNumberForNumber(v4, 2);
  v5 = [v3 dateOfOccurrence];
  v9 = HMIConvertNSDateToIsoDateString(v5);
  [v3 confidenceLevel];
  v10 = HMStringFromCameraSignificantEventConfidenceLevel();
  [v3 reason];

  v11 = HMStringFromCameraSignificantEventReason();
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  return v6;
}

+ (id)metadataForHome:(id)home
{
  uniqueIdentifier = [home uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  return v4;
}

+ (id)metadataForClip:(id)clip withCameraProfile:(id)profile inHome:(id)home
{
  homeCopy = home;
  profileCopy = profile;
  v8 = [HMIFeedbackClipMetadataGenerator metadataForClip:?];
  v9 = [HMIFeedbackClipMetadataGenerator metadataForCameraProfile:?];

  v10 = [HMIFeedbackClipMetadataGenerator metadataForHome:?];

  v11 = [HMIFeedbackClipMetadata initWithClipMetadata:"initWithClipMetadata:cameraMetadata:homeMetadata:" cameraMetadata:? homeMetadata:?];

  return v11;
}

@end
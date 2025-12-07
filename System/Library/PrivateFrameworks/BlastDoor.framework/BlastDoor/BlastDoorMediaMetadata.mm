@interface BlastDoorMediaMetadata
- (BlastDoorMediaMetadata)init;
- (BlastDoorMediaMetadata_LargeImageContextualInfo)largeImageContextualInfo;
- (NSDate)gpsTimestamp;
- (NSDate)imageDate;
- (NSString)IPTCCredit;
- (NSString)captureMode;
- (NSString)codecFourCharCode;
- (NSString)gpsSpeedRef;
- (NSString)imageDirectionRef;
- (NSString)isVideoMontage;
- (NSString)lensMake;
- (NSString)model;
- (NSString)originalFileName;
- (NSString)originatingAssetIdentifier;
- (NSString)spatialOverCaptureIdentifier;
- (NSString)uniformTypeIdentifier;
- (NSString)userComment;
- (NSString)videoComplementMediaGroupId;
- (NSUUID)burstUuid;
- (double)altitude;
- (double)apertureValue;
- (double)avDuration;
- (double)avFPS;
- (double)exifAuxFlashCompensation;
- (double)focalLenIn35mmFilm;
- (double)focalLength;
- (double)generativeAIImageType;
- (double)gifDelayTime;
- (double)gpsHPositioningError;
- (double)gpsSpeed;
- (double)hdrGain;
- (double)imageDirection;
- (double)latitude;
- (double)longitude;
- (double)semanticStyleSceneBias;
- (double)semanticStyleWarmthBias;
- (double)shutterSpeed;
- (double)smartStyleCast;
- (double)smartStyleColorBias;
- (double)smartStyleIntensity;
- (double)smartStyleToneBias;
- (double)smartStyleVideoCastValue;
- (double)subsecTimeOriginal;
- (double)videoComplementDurationTimescale;
- (double)videoComplementDurationValue;
- (double)videoComplementImageDisplayTimescale;
- (double)videoComplementImageDisplayValue;
- (double)videoDurationTimescale;
- (double)videoDurationValue;
- (int64_t)cameraUsedForCapture;
- (int64_t)ciffWhiteBalanceIndex;
- (int64_t)exposureBiasValue;
- (int64_t)flash;
- (int64_t)isoRatingValue;
- (int64_t)lightSource;
- (int64_t)meteringMode;
- (int64_t)semanticStylePreset;
- (int64_t)semanticStyleRenderingVersion;
- (int64_t)smartStyleRenderingVersion;
- (int64_t)timezoneOffset;
- (int64_t)whiteBalance;
- (unint64_t)fileSize;
- (unint64_t)rawPixelWidth;
- (unint64_t)stillImageCaptureFlags;
- (unint64_t)variationIdentifier;
@end

@implementation BlastDoorMediaMetadata

- (BlastDoorMediaMetadata_LargeImageContextualInfo)largeImageContextualInfo
{
  v4 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  if (self->mediaMetadata[OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata + 16])
  {
    v5 = 0;
  }

  else
  {
    v13 = v2;
    v14 = v3;
    v7 = *(v4 + 2);
    v11 = *v4;
    v8 = type metadata accessor for _ObjCMediaMetadata_LargeImageContextualInfoWrapper();
    v9 = objc_allocWithZone(v8);
    v10 = &v9[OBJC_IVAR___BlastDoorMediaMetadata_LargeImageContextualInfo_mediaMetadata_LargeImageContextualInfo];
    *v10 = v11;
    *(v10 + 2) = v7;
    v12.receiver = v9;
    v12.super_class = v8;
    v5 = [(BlastDoorMediaMetadata *)&v12 init];
  }

  return v5;
}

- (NSDate)imageDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v7 = type metadata accessor for MediaMetadata(0);
  sub_213FB2E54(&v6[*(v7 + 20)], v5, &qword_27C913090, &unk_2146E9DB0);
  v8 = sub_2146D8B08();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v5, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_2146D8AD8();
    (*(v9 + 8))(v5, v8);
    v11 = v12;
  }

  return v11;
}

- (int64_t)timezoneOffset
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 24)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (double)subsecTimeOriginal
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 28)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (unint64_t)rawPixelWidth
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 36)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (NSString)lensMake
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  if (*&v2[*(type metadata accessor for MediaMetadata(0) + 48) + 8])
  {

    v3 = sub_2146D9588();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)apertureValue
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 64)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (int64_t)exposureBiasValue
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 68)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (int64_t)flash
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 72)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (double)focalLength
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 76)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)focalLenIn35mmFilm
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 80)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (int64_t)isoRatingValue
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 84)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (int64_t)meteringMode
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 88)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (double)shutterSpeed
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 92)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (NSString)model
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  if (*&v2[*(type metadata accessor for MediaMetadata(0) + 96) + 8])
  {

    v3 = sub_2146D9588();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)whiteBalance
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 104)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (int64_t)lightSource
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 108)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (int64_t)ciffWhiteBalanceIndex
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 112)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (double)hdrGain
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 120)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (NSString)videoComplementMediaGroupId
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  if (*&v2[*(type metadata accessor for MediaMetadata(0) + 132) + 8])
  {

    v3 = sub_2146D9588();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)gifDelayTime
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 136)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (unint64_t)variationIdentifier
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 140)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (double)videoComplementDurationValue
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 144)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)videoComplementDurationTimescale
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 148)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)videoComplementImageDisplayValue
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 152)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)videoComplementImageDisplayTimescale
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 156)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)avDuration
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 160)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)avFPS
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 164)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (NSString)codecFourCharCode
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  if (*&v2[*(type metadata accessor for MediaMetadata(0) + 168) + 8])
  {

    v3 = sub_2146D9588();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)captureMode
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  if (*&v2[*(type metadata accessor for MediaMetadata(0) + 172) + 8])
  {

    v3 = sub_2146D9588();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)isVideoMontage
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  if (*&v2[*(type metadata accessor for MediaMetadata(0) + 176) + 8])
  {

    v3 = sub_2146D9588();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)videoDurationValue
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 184)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)videoDurationTimescale
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 188)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (NSString)originatingAssetIdentifier
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  if (*&v2[*(type metadata accessor for MediaMetadata(0) + 192) + 8])
  {

    v3 = sub_2146D9588();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)longitude
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 196)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)latitude
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 200)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)altitude
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 204)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)gpsSpeed
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 208)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (NSString)gpsSpeedRef
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  if (*&v2[*(type metadata accessor for MediaMetadata(0) + 212) + 8])
  {

    v3 = sub_2146D9588();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDate)gpsTimestamp
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v7 = type metadata accessor for MediaMetadata(0);
  sub_213FB2E54(&v6[*(v7 + 216)], v5, &qword_27C913090, &unk_2146E9DB0);
  v8 = sub_2146D8B08();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v5, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_2146D8AD8();
    (*(v9 + 8))(v5, v8);
    v11 = v12;
  }

  return v11;
}

- (double)gpsHPositioningError
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 220)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)imageDirection
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 224)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (NSString)imageDirectionRef
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  if (*&v2[*(type metadata accessor for MediaMetadata(0) + 228) + 8])
  {

    v3 = sub_2146D9588();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)uniformTypeIdentifier
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  if (*&v2[*(type metadata accessor for MediaMetadata(0) + 232) + 8])
  {

    v3 = sub_2146D9588();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)fileSize
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 236)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (NSString)originalFileName
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  if (*&v2[*(type metadata accessor for MediaMetadata(0) + 240) + 8])
  {

    v3 = sub_2146D9588();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSUUID)burstUuid
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v7 = type metadata accessor for MediaMetadata(0);
  sub_213FB2E54(&v6[*(v7 + 248)], v5, &unk_27C904F30, &unk_2146EFA20);
  v8 = sub_2146D8B88();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v5, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_2146D8B38();
    (*(v9 + 8))(v5, v8);
    v11 = v12;
  }

  return v11;
}

- (NSString)userComment
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  if (*&v2[*(type metadata accessor for MediaMetadata(0) + 252) + 8])
  {

    v3 = sub_2146D9588();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)spatialOverCaptureIdentifier
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  if (*&v2[*(type metadata accessor for MediaMetadata(0) + 260) + 8])
  {

    v3 = sub_2146D9588();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)semanticStyleSceneBias
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 264)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)semanticStyleWarmthBias
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 268)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (int64_t)semanticStyleRenderingVersion
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 272)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (int64_t)semanticStylePreset
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 276)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (double)smartStyleToneBias
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 284)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)smartStyleColorBias
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 288)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)smartStyleIntensity
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 292)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)smartStyleCast
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 296)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (int64_t)smartStyleRenderingVersion
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 300)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (double)smartStyleVideoCastValue
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 308)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (unint64_t)stillImageCaptureFlags
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 324)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (int64_t)cameraUsedForCapture
{
  selfCopy = self;
  v3 = sub_214566DF0();

  return v3;
}

- (double)exifAuxFlashCompensation
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 336)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)generativeAIImageType
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata(0) + 356)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (NSString)IPTCCredit
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  if (*&v2[*(type metadata accessor for MediaMetadata(0) + 360) + 8])
  {

    v3 = sub_2146D9588();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BlastDoorMediaMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
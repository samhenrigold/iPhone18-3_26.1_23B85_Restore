@interface KNLiveVideoCaptureDeviceDescription
- (BOOL)isEqual:(id)equal;
- (CGSize)defaultVideoResolution;
- (KNLiveVideoCaptureDeviceDescription)initWithIdentifier:(id)identifier defaultVideoResolution:(CGSize)resolution;
- (KNLiveVideoCaptureDeviceDescription)initWithMessage:(const void *)message unarchiver:(id)unarchiver;
- (id)description;
- (unint64_t)hash;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation KNLiveVideoCaptureDeviceDescription

- (KNLiveVideoCaptureDeviceDescription)initWithIdentifier:(id)identifier defaultVideoResolution:(CGSize)resolution
{
  height = resolution.height;
  width = resolution.width;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = KNLiveVideoCaptureDeviceDescription;
  v8 = [(KNLiveVideoCaptureDeviceDescription *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v8->_defaultVideoResolution.width = width;
    v8->_defaultVideoResolution.height = height;
  }

  return v8;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  identifier = self->_identifier;
  v6 = NSStringFromCGSize(self->_defaultVideoResolution);
  v7 = [v3 initWithFormat:@"<%@ %p: identifier=%@, defaultVideoResolution=%@>", v4, self, identifier, v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    v6 = v5;
    v12 = v5 && ((v7 = *(v5 + 8), v8 = self->_identifier, v9 = v7, !(v8 | v9)) || (v10 = v9, v11 = [v8 isEqual:v9], v10, v8, v11)) && self->_defaultVideoResolution.height == v6[3] && self->_defaultVideoResolution.width == v6[2];
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  [v3 addObject:self->_identifier];
  defaultVideoResolution = self->_defaultVideoResolution;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&defaultVideoResolution objCType:"{CGSize=dd}"];
  [v3 addObject:v4];

  hashValue = [v3 hashValue];
  return hashValue;
}

- (KNLiveVideoCaptureDeviceDescription)initWithMessage:(const void *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v35.receiver = self;
  v35.super_class = KNLiveVideoCaptureDeviceDescription;
  v7 = [(KNLiveVideoCaptureDeviceDescription *)&v35 init];
  if (!v7)
  {
    goto LABEL_22;
  }

  if (*(message + 16))
  {
    0xFFFFFFFFFFFFFFFELL = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(message + 3) & 0xFFFFFFFFFFFFFFFELL];
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoCaptureDeviceDescription initWithMessage:unarchiver:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoCaptureDeviceDescription.mm"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    0xFFFFFFFFFFFFFFFELL = &stru_2884D8E20;
  }

  if ((*(message + 16) & 8) != 0)
  {
    0xFFFFFFFFFFFFFFFELL2 = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(message + 6) & 0xFFFFFFFFFFFFFFFELL];
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoCaptureDeviceDescription initWithMessage:unarchiver:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoCaptureDeviceDescription.mm"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    0xFFFFFFFFFFFFFFFELL2 = &stru_2884D8E20;
  }

  v16 = *(message + 4);
  if ((v16 & 0x20) != 0)
  {
    v22 = *(message + 16);
    if (v22 == 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = v22 == 1;
    }

    if ((v16 & 2) != 0)
    {
      goto LABEL_10;
    }

LABEL_15:
    v23 = MEMORY[0x277D81150];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoCaptureDeviceDescription initWithMessage:unarchiver:]"];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoCaptureDeviceDescription.mm"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    0xFFFFFFFFFFFFFFFELL3 = &stru_2884D8E20;
    goto LABEL_16;
  }

  v17 = MEMORY[0x277D81150];
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoCaptureDeviceDescription initWithMessage:unarchiver:]"];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoCaptureDeviceDescription.mm"];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v20 = 0;
  if ((*(message + 4) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  0xFFFFFFFFFFFFFFFELL3 = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(message + 4) & 0xFFFFFFFFFFFFFFFELL];
LABEL_16:
  if ((*(message + 16) & 4) != 0)
  {
    0xFFFFFFFFFFFFFFFELL4 = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(message + 5) & 0xFFFFFFFFFFFFFFFELL];
  }

  else
  {
    v26 = MEMORY[0x277D81150];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoCaptureDeviceDescription initWithMessage:unarchiver:]"];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoCaptureDeviceDescription.mm"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    0xFFFFFFFFFFFFFFFELL4 = &stru_2884D8E20;
  }

  v30 = [[KNLiveVideoCaptureDeviceIdentifier alloc] initWithUniqueID:0xFFFFFFFFFFFFFFFELL modelID:0xFFFFFFFFFFFFFFFELL2 underlyingPosition:v20 underlyingDeviceType:0xFFFFFFFFFFFFFFFELL3 localizedName:0xFFFFFFFFFFFFFFFELL4 isIOSScreenRecordingDevice:*(message + 68) & ((*(message + 4) & 0x40u) >> 6)];
  identifier = v7->_identifier;
  v7->_identifier = v30;

  if ((*(message + 16) & 0x10) != 0)
  {
    TSPCGSizeCreateFromMessage(*(message + 7));
    v7->_defaultVideoResolution.width = v32;
    v7->_defaultVideoResolution.height = v33;
  }

LABEL_22:
  return v7;
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  identifier = self->_identifier;
  if (identifier)
  {
    uniqueID = [(KNLiveVideoCaptureDeviceIdentifier *)identifier uniqueID];
    tsp_protobufString = [uniqueID tsp_protobufString];
    *(message + 4) |= 1u;
    sub_275D55B98(__p, tsp_protobufString);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    modelID = [(KNLiveVideoCaptureDeviceIdentifier *)self->_identifier modelID];
    tsp_protobufString2 = [modelID tsp_protobufString];
    *(message + 4) |= 8u;
    sub_275D55B98(__p, tsp_protobufString2);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    underlyingPosition = [(KNLiveVideoCaptureDeviceIdentifier *)self->_identifier underlyingPosition];
    if (underlyingPosition == 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = underlyingPosition == 1;
    }

    *(message + 4) |= 0x20u;
    *(message + 16) = v13;
    underlyingDeviceType = [(KNLiveVideoCaptureDeviceIdentifier *)self->_identifier underlyingDeviceType];
    tsp_protobufString3 = [underlyingDeviceType tsp_protobufString];
    *(message + 4) |= 2u;
    sub_275D55B98(__p, tsp_protobufString3);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    localizedName = [(KNLiveVideoCaptureDeviceIdentifier *)self->_identifier localizedName];
    tsp_protobufString4 = [localizedName tsp_protobufString];
    *(message + 4) |= 4u;
    sub_275D55B98(__p, tsp_protobufString4);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    isIOSScreenRecordingDevice = [(KNLiveVideoCaptureDeviceIdentifier *)self->_identifier isIOSScreenRecordingDevice];
    v19 = *(message + 4) | 0x40;
    *(message + 4) = v19;
    *(message + 68) = isIOSScreenRecordingDevice;
  }

  else
  {
    v19 = *(message + 4);
  }

  width = self->_defaultVideoResolution.width;
  height = self->_defaultVideoResolution.height;
  *(message + 4) = v19 | 0x10;
  v22 = *(message + 7);
  if (!v22)
  {
    v23 = *(message + 1);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v22 = MEMORY[0x277C8EFF0](v23);
    *(message + 7) = v22;
  }

  v26.width = width;
  v26.height = height;
  TSPCGSizeCopyToMessage(v26, v22);
}

- (CGSize)defaultVideoResolution
{
  width = self->_defaultVideoResolution.width;
  height = self->_defaultVideoResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
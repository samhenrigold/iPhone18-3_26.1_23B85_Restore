@interface KNLiveVideoSource
+ (NSString)accessibilityLabelForCameraArrowTriangle2CirclePath;
+ (id)colorForSymbolTintColorIdentifier:(int64_t)identifier;
+ (id)colorSetForSymbolTintColorIdentifier:(int64_t)identifier;
+ (id)systemImageNameForSymbolImageIdentifier:(int64_t)identifier;
+ (int64_t)p_archivedSymbolImageIdentifierForSymbolImageIdentifier:(int64_t)identifier;
+ (int64_t)p_archivedSymbolTintColorIdentifierForSymbolTintColorIdentifier:(int64_t)identifier;
- (BOOL)isEquivalentToLiveVideoSource:(id)source;
- (BOOL)supportsBackgroundKind:(int64_t)kind;
- (KNLiveVideoCaptureDeviceDescription)captureDeviceDescription;
- (KNLiveVideoSource)initWithContext:(id)context name:(id)name isDefaultSource:(BOOL)source;
- (id)copyWithContext:(id)context;
- (int64_t)symbolImageIdentifier;
- (int64_t)symbolTintColorIdentifier;
- (void)didInitFromSOS;
- (void)i_updateDefaultSourceCaptureDeviceDescription:(id)description;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)rollbackToCollaborationCommandUsageState:(id)state;
- (void)saveToArchiver:(id)archiver;
- (void)setCaptureDeviceDescription:(id)description;
- (void)setName:(id)name;
- (void)setPosterImageData:(id)data;
- (void)setSymbolAbbreviationText:(id)text;
- (void)setSymbolImageIdentifier:(int64_t)identifier;
- (void)setSymbolTintColorIdentifier:(int64_t)identifier;
- (void)willBeUsedByCollaborationCommandWithUsageToken:(id)token;
@end

@implementation KNLiveVideoSource

- (void)setName:(id)name
{
  nameCopy = name;
  if (self->_name != nameCopy)
  {
    v6 = nameCopy;
    [(KNLiveVideoSource *)self willModify];
    v5 = [(NSString *)v6 copy];

    objc_storeStrong(&self->_name, v5);
    nameCopy = v5;
  }
}

- (KNLiveVideoSource)initWithContext:(id)context name:(id)name isDefaultSource:(BOOL)source
{
  contextCopy = context;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = KNLiveVideoSource;
  v10 = [(KNLiveVideoSource *)&v17 initWithContext:contextCopy];
  if (v10)
  {
    v11 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v11;

    v10->_isDefaultSource = source;
    v13 = objc_opt_class();
    v10->_symbolImageIdentifier = [v13 p_archivedSymbolImageIdentifierForSymbolImageIdentifier:{objc_msgSend(v13, "defaultSymbolImageIdentifier")}];
    v10->_symbolTintColorIdentifier = [v13 p_archivedSymbolTintColorIdentifierForSymbolTintColorIdentifier:{objc_msgSend(v13, "defaultSymbolTintColorIdentifier")}];
    v14 = +[KNLiveVideoSourceCollaborationCommandUsageState emptyUsageState];
    collaborationCommandUsageState = v10->_collaborationCommandUsageState;
    v10->_collaborationCommandUsageState = v14;
  }

  return v10;
}

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v5 = [KNLiveVideoSource alloc];
  name = [(KNLiveVideoSource *)self name];
  v7 = [(KNLiveVideoSource *)v5 initWithContext:contextCopy name:name];

  v8 = [(KNLiveVideoSourceCollaborationCommandUsageState *)self->_collaborationCommandUsageState copy];
  v9 = *(v7 + 72);
  *(v7 + 72) = v8;

  v10 = [(KNLiveVideoCaptureDeviceDescription *)self->_captureDeviceDescription copy];
  v11 = *(v7 + 104);
  *(v7 + 104) = v10;

  *(v7 + 96) = self->_isDefaultSource;
  [v7 willRemoveReferenceToData:*(v7 + 112)];
  objc_storeStrong((v7 + 112), self->_posterImageData);
  [v7 didAddReferenceToData:*(v7 + 112)];
  v12 = [(NSString *)self->_symbolAbbreviationText copy];
  v13 = *(v7 + 120);
  *(v7 + 120) = v12;

  *(v7 + 80) = self->_symbolImageIdentifier;
  *(v7 + 88) = self->_symbolTintColorIdentifier;
  *(v7 + 128) = self->_definedCaptureDeviceDescription;

  return v7;
}

- (KNLiveVideoCaptureDeviceDescription)captureDeviceDescription
{
  if (self->_isDefaultSource)
  {
    v2 = &OBJC_IVAR___KNLiveVideoSource__defaultSourceCaptureDeviceDescription;
  }

  else
  {
    v2 = &OBJC_IVAR___KNLiveVideoSource__captureDeviceDescription;
  }

  return *(&self->super.super.isa + *v2);
}

- (void)setCaptureDeviceDescription:(id)description
{
  descriptionCopy = description;
  if ([(KNLiveVideoSource *)self canChangeCaptureDeviceDescription])
  {
    v4 = self->_captureDeviceDescription;
    v5 = descriptionCopy;
    if (v5 | v4)
    {
      v6 = v5;
      v7 = [v4 isEqual:v5];

      if (!v7)
      {
        [(KNLiveVideoSource *)self willModify];
        v8 = [v6 copy];
        captureDeviceDescription = self->_captureDeviceDescription;
        self->_captureDeviceDescription = v8;

        self->_definedCaptureDeviceDescription = self->_captureDeviceDescription != 0;
      }
    }
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoSource setCaptureDeviceDescription:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSource.mm"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:141 isFatal:0 description:"Attempting to change the capture device description of a source whose capture device description can't be changed."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }
}

- (void)i_updateDefaultSourceCaptureDeviceDescription:(id)description
{
  descriptionCopy = description;
  if (self->_isDefaultSource)
  {
    objc_storeStrong(&self->_defaultSourceCaptureDeviceDescription, description);
  }

  else
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoSource i_updateDefaultSourceCaptureDeviceDescription:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSource.mm"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:160 isFatal:0 description:"It is only valid to call this method for a default source"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }
}

- (void)setPosterImageData:(id)data
{
  dataCopy = data;
  if (self->_posterImageData != dataCopy)
  {
    [(KNLiveVideoSource *)self willModify];
    [(KNLiveVideoSource *)self willRemoveReferenceToData:self->_posterImageData];
    objc_storeStrong(&self->_posterImageData, data);
    [(KNLiveVideoSource *)self didAddReferenceToData:self->_posterImageData];
    self->_definedPosterImageData = self->_posterImageData != 0;
  }
}

- (void)setSymbolAbbreviationText:(id)text
{
  textCopy = text;
  if (self->_symbolAbbreviationText != textCopy)
  {
    [(KNLiveVideoSource *)self willModify];
    v4 = [(NSString *)textCopy copy];
    symbolAbbreviationText = self->_symbolAbbreviationText;
    self->_symbolAbbreviationText = v4;

    self->_definedSymbolAbbreviationText = self->_symbolAbbreviationText != 0;
  }
}

- (int64_t)symbolImageIdentifier
{
  symbolImageIdentifier = self->_symbolImageIdentifier;
  if (symbolImageIdentifier >= 0xF)
  {
    captureDeviceDescription = [(KNLiveVideoSource *)self captureDeviceDescription];
    if (captureDeviceDescription)
    {
      v4 = objc_opt_class();
      identifier = [captureDeviceDescription identifier];
      symbolImageIdentifier = [v4 defaultSymbolImageIdentifierForCaptureDeviceIdentifier:identifier];
    }

    else
    {
      symbolImageIdentifier = [objc_opt_class() defaultSymbolImageIdentifier];
    }
  }

  return symbolImageIdentifier;
}

- (void)setSymbolImageIdentifier:(int64_t)identifier
{
  v4 = [objc_opt_class() p_archivedSymbolImageIdentifierForSymbolImageIdentifier:identifier];
  if (self->_symbolImageIdentifier != v4)
  {
    v5 = v4;
    [(KNLiveVideoSource *)self willModify];
    self->_symbolImageIdentifier = v5;
  }
}

+ (int64_t)p_archivedSymbolImageIdentifierForSymbolImageIdentifier:(int64_t)identifier
{
  if ((identifier - 1) >= 0xE)
  {
    return 0;
  }

  else
  {
    return identifier;
  }
}

+ (id)systemImageNameForSymbolImageIdentifier:(int64_t)identifier
{
  if (identifier > 0xE)
  {
    return 0;
  }

  else
  {
    return off_27A698D30[identifier];
  }
}

- (int64_t)symbolTintColorIdentifier
{
  if (self->_symbolTintColorIdentifier < 6uLL)
  {
    return self->_symbolTintColorIdentifier;
  }

  v4 = objc_opt_class();

  return [v4 defaultSymbolTintColorIdentifier];
}

- (void)setSymbolTintColorIdentifier:(int64_t)identifier
{
  v4 = [objc_opt_class() p_archivedSymbolTintColorIdentifierForSymbolTintColorIdentifier:identifier];
  if (self->_symbolTintColorIdentifier != v4)
  {
    v5 = v4;
    [(KNLiveVideoSource *)self willModify];
    self->_symbolTintColorIdentifier = v5;
  }
}

+ (int64_t)p_archivedSymbolTintColorIdentifierForSymbolTintColorIdentifier:(int64_t)identifier
{
  if ((identifier - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return identifier;
  }
}

+ (id)colorForSymbolTintColorIdentifier:(int64_t)identifier
{
  systemYellowColor = 0;
  if (identifier > 2)
  {
    switch(identifier)
    {
      case 3:
        systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
        break;
      case 4:
        systemYellowColor = [MEMORY[0x277D75348] systemGreenColor];
        break;
      case 5:
        systemYellowColor = [MEMORY[0x277D75348] systemBlueColor];
        break;
    }
  }

  else if (identifier)
  {
    if (identifier == 1)
    {
      systemYellowColor = [MEMORY[0x277D75348] whiteColor];
    }

    else if (identifier == 2)
    {
      systemYellowColor = [MEMORY[0x277D75348] systemRedColor];
    }
  }

  else
  {
    systemYellowColor = [MEMORY[0x277D75348] blackColor];
  }

  return systemYellowColor;
}

- (void)willBeUsedByCollaborationCommandWithUsageToken:(id)token
{
  tokenCopy = token;
  [(KNLiveVideoSource *)self willModify];
  v4 = [(KNLiveVideoSourceCollaborationCommandUsageState *)self->_collaborationCommandUsageState usageStateByAddingCollaborationCommandUsageToken:tokenCopy];
  collaborationCommandUsageState = self->_collaborationCommandUsageState;
  self->_collaborationCommandUsageState = v4;
}

- (void)rollbackToCollaborationCommandUsageState:(id)state
{
  stateCopy = state;
  [(KNLiveVideoSource *)self willModify];
  v4 = [stateCopy copy];
  collaborationCommandUsageState = self->_collaborationCommandUsageState;
  self->_collaborationCommandUsageState = v4;
}

- (BOOL)isEquivalentToLiveVideoSource:(id)source
{
  sourceCopy = source;
  v5 = sourceCopy;
  if (self->_isDefaultSource)
  {
    v6 = sourceCopy[96];
  }

  else
  {
    name = [(KNLiveVideoSource *)self name];
    name2 = [v5 name];
    if ([name isEqualToString:name2])
    {
      captureDeviceDescription = [(KNLiveVideoSource *)self captureDeviceDescription];
      captureDeviceDescription2 = [v5 captureDeviceDescription];
      v11 = captureDeviceDescription;
      v12 = captureDeviceDescription2;
      if (v11 | v12)
      {
        v6 = [v11 isEqual:v12];
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

- (BOOL)supportsBackgroundKind:(int64_t)kind
{
  if (kind == 1)
  {
    captureDeviceDescription = [(KNLiveVideoSource *)self captureDeviceDescription];
    v5 = captureDeviceDescription;
    if (captureDeviceDescription)
    {
      identifier = [captureDeviceDescription identifier];
      v3 = [identifier isIOSScreenRecordingDevice] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  else
  {
    LOBYTE(v3) = kind == 0;
  }

  return v3;
}

- (void)didInitFromSOS
{
  v3.receiver = self;
  v3.super_class = KNLiveVideoSource;
  [(KNLiveVideoSource *)&v3 didInitFromSOS];
  if (self->_posterImageData)
  {
    [(KNLiveVideoSource *)self didAddReferenceToData:?];
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [unarchiverCopy messageWithDescriptor:off_2812EA908[106]];

  if (*(v4 + 16))
  {
    0xFFFFFFFFFFFFFFFELL = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(v4 + 24) & 0xFFFFFFFFFFFFFFFELL];
  }

  else
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoSource loadFromUnarchiver:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSource.mm"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:644 isFatal:0 description:"Missing name in message."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    0xFFFFFFFFFFFFFFFELL = &stru_2884D8E20;
  }

  name = self->_name;
  self->_name = &0xFFFFFFFFFFFFFFFELL->isa;

  v10 = *(v4 + 16);
  if ((v10 & 4) != 0)
  {
    v11 = [KNLiveVideoCaptureDeviceDescription alloc];
    if (*(v4 + 40))
    {
      v12 = *(v4 + 40);
    }

    else
    {
      v12 = &unk_2812EBD48;
    }

    v13 = [(KNLiveVideoCaptureDeviceDescription *)v11 initWithMessage:v12 unarchiver:unarchiverCopy];
    captureDeviceDescription = self->_captureDeviceDescription;
    self->_captureDeviceDescription = v13;

    self->_definedCaptureDeviceDescription = 1;
    v10 = *(v4 + 16);
  }

  if ((v10 & 0x80) != 0)
  {
    self->_isDefaultSource = *(v4 + 72);
  }

  if ((v10 & 0x10) != 0)
  {
    v15 = [unarchiverCopy readDataReferenceMessage:*(v4 + 56)];
    posterImageData = self->_posterImageData;
    self->_posterImageData = v15;

    self->_definedPosterImageData = 1;
    v10 = *(v4 + 16);
  }

  if ((v10 & 2) != 0)
  {
    0xFFFFFFFFFFFFFFFELL2 = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(v4 + 32) & 0xFFFFFFFFFFFFFFFELL];
    symbolAbbreviationText = self->_symbolAbbreviationText;
    self->_symbolAbbreviationText = 0xFFFFFFFFFFFFFFFELL2;

    self->_definedSymbolAbbreviationText = 1;
    v10 = *(v4 + 16);
  }

  if ((v10 & 0x20) != 0)
  {
    self->_symbolImageIdentifier = *(v4 + 64);
  }

  else if (self->_captureDeviceDescription)
  {
    v19 = objc_opt_class();
    identifier = [(KNLiveVideoCaptureDeviceDescription *)self->_captureDeviceDescription identifier];
    self->_symbolImageIdentifier = [v19 p_archivedSymbolImageIdentifierForSymbolImageIdentifier:{objc_msgSend(v19, "defaultSymbolImageIdentifierForCaptureDeviceIdentifier:", identifier)}];
  }

  else
  {
    v21 = objc_opt_class();
    self->_symbolImageIdentifier = [v21 p_archivedSymbolImageIdentifierForSymbolImageIdentifier:{objc_msgSend(v21, "defaultSymbolImageIdentifier")}];
  }

  v22 = *(v4 + 16);
  if ((v22 & 0x40) != 0)
  {
    self->_symbolTintColorIdentifier = *(v4 + 68);
    if ((v22 & 8) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v23 = objc_opt_class();
    self->_symbolTintColorIdentifier = [v23 p_archivedSymbolTintColorIdentifierForSymbolTintColorIdentifier:{objc_msgSend(v23, "defaultSymbolTintColorIdentifier")}];
    if ((*(v4 + 16) & 8) != 0)
    {
LABEL_22:
      v24 = [KNLiveVideoSourceCollaborationCommandUsageState alloc];
      if (*(v4 + 48))
      {
        v25 = *(v4 + 48);
      }

      else
      {
        v25 = &qword_2812EBD20;
      }

      v26 = [(KNLiveVideoSourceCollaborationCommandUsageState *)v24 initWithMessage:v25 unarchiver:unarchiverCopy];
      goto LABEL_28;
    }
  }

  v27 = MEMORY[0x277D81150];
  v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoSource loadFromUnarchiver:]"];
  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSource.mm"];
  [v27 handleFailureInFunction:v28 file:v29 lineNumber:689 isFatal:0 description:"Missing collaborationCommandUsageState in message."];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v26 = +[KNLiveVideoSourceCollaborationCommandUsageState emptyUsageState];
LABEL_28:
  collaborationCommandUsageState = self->_collaborationCommandUsageState;
  self->_collaborationCommandUsageState = v26;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = [archiverCopy messageWithNewFunction:sub_275DCD320 descriptor:off_2812EA908[106]];

  tsp_protobufString = [(NSString *)self->_name tsp_protobufString];
  *(v5 + 16) |= 1u;
  sub_275D55B98(__p, tsp_protobufString);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  captureDeviceDescription = self->_captureDeviceDescription;
  if (captureDeviceDescription)
  {
    *(v5 + 16) |= 4u;
    v8 = *(v5 + 40);
    if (!v8)
    {
      v9 = *(v5 + 8);
      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
      }

      v8 = sub_275E21854(v9);
      *(v5 + 40) = v8;
    }

    [(KNLiveVideoCaptureDeviceDescription *)captureDeviceDescription saveToMessage:v8 archiver:archiverCopy];
  }

  isDefaultSource = self->_isDefaultSource;
  v11 = *(v5 + 16);
  *(v5 + 16) = v11 | 0x80;
  *(v5 + 72) = isDefaultSource;
  posterImageData = self->_posterImageData;
  if (posterImageData)
  {
    *(v5 + 16) = v11 | 0x90;
    v13 = *(v5 + 56);
    if (!v13)
    {
      v14 = *(v5 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277C8EFD0](v14);
      *(v5 + 56) = v13;
    }

    [archiverCopy setDataReference:posterImageData message:v13];
  }

  symbolAbbreviationText = self->_symbolAbbreviationText;
  if (symbolAbbreviationText)
  {
    tsp_protobufString2 = [(NSString *)symbolAbbreviationText tsp_protobufString];
    *(v5 + 16) |= 2u;
    sub_275D55B98(__p, tsp_protobufString2);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }
  }

  symbolImageIdentifier = self->_symbolImageIdentifier;
  if (symbolImageIdentifier >= 0x80000000)
  {
    v23 = MEMORY[0x277D81150];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoSource saveToArchiver:]"];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSource.mm"];
    [v23 handleFailureInFunction:v24 file:v25 lineNumber:713 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    LODWORD(symbolImageIdentifier) = 0x7FFFFFFF;
  }

  else if (symbolImageIdentifier <= 0xFFFFFFFF7FFFFFFFLL)
  {
    v29 = MEMORY[0x277D81150];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoSource saveToArchiver:]"];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSource.mm"];
    [v29 handleFailureInFunction:v30 file:v31 lineNumber:713 isFatal:0 description:"Out-of-bounds type assignment was clamped to min"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    LODWORD(symbolImageIdentifier) = 0x80000000;
  }

  *(v5 + 16) |= 0x20u;
  *(v5 + 64) = symbolImageIdentifier;
  symbolTintColorIdentifier = self->_symbolTintColorIdentifier;
  if (symbolTintColorIdentifier >= 0x80000000)
  {
    v26 = MEMORY[0x277D81150];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoSource saveToArchiver:]"];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSource.mm"];
    [v26 handleFailureInFunction:v27 file:v28 lineNumber:715 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    LODWORD(symbolTintColorIdentifier) = 0x7FFFFFFF;
  }

  else if (symbolTintColorIdentifier <= 0xFFFFFFFF7FFFFFFFLL)
  {
    v32 = MEMORY[0x277D81150];
    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoSource saveToArchiver:]"];
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSource.mm"];
    [v32 handleFailureInFunction:v33 file:v34 lineNumber:715 isFatal:0 description:"Out-of-bounds type assignment was clamped to min"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    LODWORD(symbolTintColorIdentifier) = 0x80000000;
  }

  v19 = *(v5 + 16);
  *(v5 + 16) = v19 | 0x40;
  *(v5 + 68) = symbolTintColorIdentifier;
  collaborationCommandUsageState = self->_collaborationCommandUsageState;
  *(v5 + 16) = v19 | 0x48;
  v21 = *(v5 + 48);
  if (!v21)
  {
    v22 = *(v5 + 8);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v21 = sub_275E21784(v22);
    *(v5 + 48) = v21;
  }

  [(KNLiveVideoSourceCollaborationCommandUsageState *)collaborationCommandUsageState saveToMessage:v21 archiver:archiverCopy];
  [archiverCopy setMessageVersion:sub_275E53AE0()];
  [archiverCopy requiresDocumentVersion:sub_275E53AD0()];
}

+ (NSString)accessibilityLabelForCameraArrowTriangle2CirclePath
{
  v2 = sub_275DC204C(self);
  v3 = [v2 localizedStringForKey:@"A still camera containing ‘chasing arrows’ where a lens would be" value:&stru_2884D8E20 table:@"Keynote"];

  return v3;
}

+ (id)colorSetForSymbolTintColorIdentifier:(int64_t)identifier
{
  v3 = sub_275E560BC(identifier);

  return v3;
}

@end
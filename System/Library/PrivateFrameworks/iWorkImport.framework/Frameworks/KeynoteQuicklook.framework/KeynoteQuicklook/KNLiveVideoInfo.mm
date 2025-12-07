@interface KNLiveVideoInfo
+ (Class)drawableInfoSubclassForClass:(Class)class unarchiver:(id)unarchiver;
+ (id)i_makeArchivedMoviePosterImageDataWithContext:(id)context;
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)containsProperty:(int)property;
- (CGPoint)normalizedOffset;
- (KNLiveVideoInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style;
- (KNLiveVideoSource)source;
- (double)doubleValueForProperty:(int)property;
- (id)animationFilters;
- (id)defaultDescriptiveName;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)objectForProperty:(int)property;
- (id)pastedPropertyMapForStyle:(id)style tailLineEndInfo:(int)info;
- (id)typeName;
- (int)intValueForProperty:(int)property;
- (int64_t)backgroundKind;
- (int64_t)effectiveBackgroundKind;
- (int64_t)effectiveMaskKind;
- (int64_t)effectiveMaskKindForGeometry:(id)geometry;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)acceptVisitor:(id)visitor;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_updateSlideNodeLiveVideoSourceUsage;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setBackgroundFill:(id)fill;
- (void)setBackgroundKind:(int64_t)kind;
- (void)setI_archivedBackgroundKind:(int64_t)kind;
- (void)setI_archivedMaskKind:(int64_t)kind;
- (void)setI_sourceId:(id)id;
- (void)setIsPlaceholder:(BOOL)placeholder;
- (void)setMaskCornerRadius:(double)radius;
- (void)setNormalizedOffset:(CGPoint)offset;
- (void)setScale:(double)scale;
- (void)setSource:(id)source;
- (void)setStyle:(id)style;
@end

@implementation KNLiveVideoInfo

- (void)setScale:(double)scale
{
  if (self->_scale != scale)
  {
    [(KNLiveVideoInfo *)self willModify];
    self->_scale = scale;
  }
}

- (CGPoint)normalizedOffset
{
  x = self->_normalizedOffset.x;
  y = self->_normalizedOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setNormalizedOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  p_normalizedOffset = &self->_normalizedOffset;
  if (self->_normalizedOffset.x != offset.x || self->_normalizedOffset.y != offset.y)
  {
    [(KNLiveVideoInfo *)self willModify];
    p_normalizedOffset->x = x;
    p_normalizedOffset->y = y;
  }
}

- (void)setI_archivedMaskKind:(int64_t)kind
{
  if (self->_maskKind != kind)
  {
    [(KNLiveVideoInfo *)self willModify];
    self->_maskKind = kind;
  }
}

- (void)setMaskCornerRadius:(double)radius
{
  if (self->_maskCornerRadius != radius)
  {
    [(KNLiveVideoInfo *)self willModify];
    self->_maskCornerRadius = radius;
  }
}

- (void)setI_archivedBackgroundKind:(int64_t)kind
{
  if (self->_backgroundKind != kind)
  {
    [(KNLiveVideoInfo *)self willModify];
    self->_backgroundKind = kind;
  }
}

- (void)setBackgroundFill:(id)fill
{
  fillCopy = fill;
  if (self->_backgroundFill != fillCopy)
  {
    v6 = fillCopy;
    [(KNLiveVideoInfo *)self willModify];
    v5 = [(TSDFill *)v6 copy];

    objc_storeStrong(&self->_backgroundFill, v5);
    fillCopy = v5;
  }
}

- (KNLiveVideoInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style
{
  contextCopy = context;
  styleCopy = style;
  v15.receiver = self;
  v15.super_class = KNLiveVideoInfo;
  v10 = [(KNLiveVideoInfo *)&v15 initWithContext:contextCopy geometry:geometry];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_style, style);
    v11->_scale = 1.0;
    v11->_maskKind = 0;
    v11->_backgroundKind = 0;
    v12 = [objc_opt_class() i_makeArchivedMoviePosterImageDataWithContext:contextCopy];
    archivedMoviePosterImageData = v11->_archivedMoviePosterImageData;
    v11->_archivedMoviePosterImageData = v12;

    [(KNLiveVideoInfo *)v11 didAddReferenceToData:v11->_archivedMoviePosterImageData];
  }

  return v11;
}

- (KNLiveVideoSource)source
{
  objc_opt_class();
  context = [(KNLiveVideoInfo *)self context];
  documentRoot = [context documentRoot];
  v5 = TSUCheckedDynamicCast();

  show = [v5 show];
  theme = [show theme];
  liveVideoSourceCollection = [theme liveVideoSourceCollection];

  if (!self->_sourceId || ([liveVideoSourceCollection sourceWithObjectUUID:?], (defaultSource = objc_claimAutoreleasedReturnValue()) == 0))
  {
    defaultSource = [liveVideoSourceCollection defaultSource];
  }

  return defaultSource;
}

- (void)setSource:(id)source
{
  objectUUID = [source objectUUID];
  [(KNLiveVideoInfo *)self setI_sourceId:objectUUID];
}

- (void)setI_sourceId:(id)id
{
  idCopy = id;
  sourceId = self->_sourceId;
  if (idCopy | sourceId)
  {
    v9 = idCopy;
    v6 = [(NSUUID *)sourceId isEqual:idCopy];
    idCopy = v9;
    if ((v6 & 1) == 0)
    {
      [(KNLiveVideoInfo *)self willModify];
      v7 = [v9 copy];
      v8 = self->_sourceId;
      self->_sourceId = v7;

      [(KNLiveVideoInfo *)self p_updateSlideNodeLiveVideoSourceUsage];
      idCopy = v9;
    }
  }
}

- (int64_t)effectiveMaskKind
{
  geometry = [(KNLiveVideoInfo *)self geometry];
  v4 = [(KNLiveVideoInfo *)self effectiveMaskKindForGeometry:geometry];

  return v4;
}

- (int64_t)effectiveMaskKindForGeometry:(id)geometry
{
  geometryCopy = geometry;
  if ([(KNLiveVideoInfo *)self maskKind]== 1)
  {
    [geometryCopy size];
    v7 = vabdd_f64(v5, v6) < 0.00999999978 || v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)backgroundKind
{
  i_archivedBackgroundKind = [(KNLiveVideoInfo *)self i_archivedBackgroundKind];
  v3 = objc_opt_class();

  return [v3 i_backgroundKindForArchivedBackgroundKind:i_archivedBackgroundKind];
}

- (void)setBackgroundKind:(int64_t)kind
{
  [(KNLiveVideoInfo *)self setI_archivedBackgroundKind:kind == 1];

  [(KNLiveVideoInfo *)self p_updateSlideNodeLiveVideoSourceUsage];
}

- (int64_t)effectiveBackgroundKind
{
  backgroundKind = [(KNLiveVideoInfo *)self backgroundKind];
  source = [(KNLiveVideoInfo *)self source];
  v5 = [source supportsBackgroundKind:backgroundKind];

  if (v5)
  {
    return backgroundKind;
  }

  else
  {
    return 0;
  }
}

- (void)setIsPlaceholder:(BOOL)placeholder
{
  if (self->_isPlaceholder != placeholder)
  {
    [(KNLiveVideoInfo *)self willModify];
    self->_isPlaceholder = placeholder;

    [(KNLiveVideoInfo *)self p_updateSlideNodeLiveVideoSourceUsage];
  }
}

- (void)p_updateSlideNodeLiveVideoSourceUsage
{
  v2 = [KNSlideNode parentSlideNodeForInfo:self];
  if (v2)
  {
    v3 = v2;
    [v2 updateLiveVideoSourceUsage];
    v2 = v3;
  }
}

+ (id)i_makeArchivedMoviePosterImageDataWithContext:(id)context
{
  contextCopy = context;
  v4 = TSDBitmapContextCreate();
  blackColor = [MEMORY[0x277D81180] blackColor];
  CGContextSetFillColorWithColor(v4, [blackColor CGColor]);

  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = 1.0;
  v11.size.height = 1.0;
  CGContextFillRect(v4, v11);
  Image = CGBitmapContextCreateImage(v4);
  CGContextRelease(v4);
  v7 = CGImagePNGRepresentation();
  v8 = [MEMORY[0x277D80828] dataFromNSData:v7 filename:@"blankMoviePosterImage.png" context:contextCopy];

  CGImageRelease(Image);

  return v8;
}

- (BOOL)canAspectRatioLockBeChangedByUser
{
  v5.receiver = self;
  v5.super_class = KNLiveVideoInfo;
  canAspectRatioLockBeChangedByUser = [(KNLiveVideoInfo *)&v5 canAspectRatioLockBeChangedByUser];
  if (canAspectRatioLockBeChangedByUser)
  {
    LOBYTE(canAspectRatioLockBeChangedByUser) = [(KNLiveVideoInfo *)self effectiveMaskKind]!= 1;
  }

  return canAspectRatioLockBeChangedByUser;
}

- (id)defaultDescriptiveName
{
  source = [(KNLiveVideoInfo *)self source];
  name = [source name];

  return name;
}

- (id)typeName
{
  v2 = sub_275DC204C(self);
  v3 = [v2 localizedStringForKey:@"Live Video" value:&stru_2884D8E20 table:@"Keynote"];

  return v3;
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  objc_opt_class();
  v4 = TSUCheckedDynamicCast();
  if (!v4)
  {
    sub_275E5A140();
  }

  v5 = v4;
  if (v4 != self->_style)
  {
    properties = [MEMORY[0x277D80340] properties];
    [(KNLiveVideoInfo *)self willChangeProperties:properties];

    [(KNLiveVideoInfo *)self willModify];
    objc_storeStrong(&self->_style, v5);
  }
}

- (id)pastedPropertyMapForStyle:(id)style tailLineEndInfo:(int)info
{
  fullPropertyMap = [style fullPropertyMap];
  v5 = [fullPropertyMap copy];

  [MEMORY[0x277D80340] validatePastedPropertyMap:v5];

  return v5;
}

- (BOOL)containsProperty:(int)property
{
  v4.receiver = self;
  v4.super_class = KNLiveVideoInfo;
  return ((property - 4576) < 7) | [(KNLiveVideoInfo *)&v4 containsProperty:?];
}

- (id)objectForProperty:(int)property
{
  switch(property)
  {
    case 4582:
      backgroundFill = [(KNLiveVideoInfo *)self backgroundFill];
      break;
    case 4578:
      v4 = MEMORY[0x277CCAE60];
      [(KNLiveVideoInfo *)self normalizedOffset];
      v9[0] = v5;
      v9[1] = v6;
      backgroundFill = [v4 valueWithBytes:v9 objCType:"{CGPoint=dd}"];
      break;
    case 4576:
      backgroundFill = [(KNLiveVideoInfo *)self source];
      break;
    default:
      v8.receiver = self;
      v8.super_class = KNLiveVideoInfo;
      backgroundFill = [(KNLiveVideoInfo *)&v8 objectForProperty:?];
      break;
  }

  return backgroundFill;
}

- (int)intValueForProperty:(int)property
{
  if (property == 4581)
  {
    backgroundKind = [(KNLiveVideoInfo *)self backgroundKind];
    if (backgroundKind < 0x80000000)
    {
      if (backgroundKind > 0xFFFFFFFF7FFFFFFFLL)
      {
        return backgroundKind;
      }

      sub_275E5A1F4();
      goto LABEL_15;
    }

    sub_275E5A278();
  }

  else
  {
    if (property != 4579)
    {
      v5.receiver = self;
      v5.super_class = KNLiveVideoInfo;
      LODWORD(backgroundKind) = [(KNLiveVideoInfo *)&v5 intValueForProperty:?];
      return backgroundKind;
    }

    backgroundKind = [(KNLiveVideoInfo *)self maskKind];
    if (backgroundKind < 0x80000000)
    {
      if (backgroundKind > 0xFFFFFFFF7FFFFFFFLL)
      {
        return backgroundKind;
      }

      sub_275E5A2FC();
LABEL_15:
      LODWORD(backgroundKind) = 0x80000000;
      return backgroundKind;
    }

    sub_275E5A380();
  }

  LODWORD(backgroundKind) = 0x7FFFFFFF;
  return backgroundKind;
}

- (double)doubleValueForProperty:(int)property
{
  if (property == 4580)
  {

    [(KNLiveVideoInfo *)self maskCornerRadius];
  }

  else if (property == 4577)
  {

    [(KNLiveVideoInfo *)self scale];
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = KNLiveVideoInfo;
    [(KNLiveVideoInfo *)&v6 doubleValueForProperty:?];
  }

  return result;
}

- (void)acceptVisitor:(id)visitor
{
  v4 = TSUProtocolCast();
  if (v4)
  {
    v5 = v4;
    [v4 visitKNLiveVideoInfo:{self, &unk_2885462B0}];
    v4 = v5;
  }
}

- (id)animationFilters
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = *MEMORY[0x277D80570];
  v7[0] = *MEMORY[0x277D805A0];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v5 = [v2 initWithArray:v4];

  return v5;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  contextCopy = context;
  objectCopy = object;
  objc_opt_class();
  v8 = TSUCheckedDynamicCast();

  if (!v8)
  {
    goto LABEL_33;
  }

  source = [(KNLiveVideoInfo *)self source];
  [v8 source];

  geometry = [(KNLiveVideoInfo *)self geometry];
  geometry2 = [v8 geometry];
  [geometry mixingTypeWithObject:geometry2 context:contextCopy];
  TSDMixingTypeBestFromMixingTypes();

  v12 = MEMORY[0x277CCABB0];
  [(KNLiveVideoInfo *)self scale];
  v13 = [v12 numberWithDouble:?];
  v14 = MEMORY[0x277CCABB0];
  [v8 scale];
  v15 = [v14 numberWithDouble:?];
  [v13 mixingTypeWithObject:v15 context:contextCopy];
  TSDMixingTypeBestFromMixingTypes();

  v16 = MEMORY[0x277CCAE60];
  [(KNLiveVideoInfo *)self normalizedOffset];
  v80[0] = v17;
  v80[1] = v18;
  v19 = [v16 valueWithBytes:v80 objCType:"{CGPoint=dd}"];
  v20 = MEMORY[0x277CCAE60];
  [v8 normalizedOffset];
  v79[0] = v21;
  v79[1] = v22;
  v23 = [v20 valueWithBytes:v79 objCType:"{CGPoint=dd}"];
  [v19 mixingTypeWithObject:v23 context:contextCopy];
  v24 = TSDMixingTypeBestFromMixingTypes();

  if (v24 != 1)
  {
    maskKind = [(KNLiveVideoInfo *)self maskKind];
    if (maskKind == [v8 maskKind])
    {
      if (maskKind || (-[KNLiveVideoInfo maskCornerRadius](self, "maskCornerRadius"), v32 = v31, [v8 maskCornerRadius], v32 == v33))
      {
        backgroundKind = [(KNLiveVideoInfo *)self backgroundKind];
        if (backgroundKind == [v8 backgroundKind] && backgroundKind == 1)
        {
          backgroundFill = [(KNLiveVideoInfo *)self backgroundFill];
          backgroundFill2 = [v8 backgroundFill];
          objc_opt_class();
          v29 = TSUCheckedClassAndProtocolCast();
          objc_opt_class();
          v78 = &unk_2885032E0;
          v30 = TSUCheckedClassAndProtocolCast();
          TSDMixingTypeWithObjects();
          TSDMixingTypeBestFromMixingTypes();
        }
      }
    }
  }

  style = [(KNLiveVideoInfo *)self style];
  style2 = [v8 style];
  TSDMixingTypeWithObjects();
  v36 = TSDMixingTypeBestFromMixingTypes();

  if (v36 == 1)
  {
    goto LABEL_33;
  }

  reflection = [(KNLiveVideoInfo *)self reflection];
  v38 = reflection != 0;

  reflection2 = [v8 reflection];

  if (v38 == (reflection2 == 0))
  {
    goto LABEL_33;
  }

  shadow = [(KNLiveVideoInfo *)self shadow];
  v41 = shadow;
  if (shadow)
  {
    isEnabled = [shadow isEnabled];
  }

  else
  {
    isEnabled = 0;
  }

  shadow2 = [v8 shadow];
  v44 = shadow2;
  if (!shadow2)
  {
    isEnabled2 = 0;
LABEL_25:

    if (isEnabled != isEnabled2)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  isEnabled2 = [shadow2 isEnabled];
  if ((isEnabled & isEnabled2) != 1)
  {
    goto LABEL_25;
  }

  shadowType = [v41 shadowType];
  if (shadowType != [v44 shadowType] || (objc_msgSend(v41, "radius"), v48 = v47, objc_msgSend(v44, "radius"), v48 != v49) && vabdd_f64(v48, v49) >= 0.00999999978 || (objc_msgSend(v41, "angle"), v51 = v50, objc_msgSend(v44, "angle"), v51 != v52) && vabdd_f64(v51, v52) >= 0.00999999978 || (objc_msgSend(v41, "offset"), v54 = v53, objc_msgSend(v44, "offset"), v54 != v55) && vabdd_f64(v54, v55) >= 0.00999999978)
  {

LABEL_33:
    v62 = 1;
    goto LABEL_34;
  }

LABEL_26:
  stroke = [(KNLiveVideoInfo *)self stroke];
  stroke2 = [v8 stroke];
  v58 = stroke2;
  if ((stroke != 0) != (stroke2 != 0))
  {
    v59 = 1;
  }

  else
  {
    v59 = v36;
  }

  if (!stroke || !stroke2)
  {
    goto LABEL_54;
  }

  isFrame = [stroke isFrame];
  isFrame2 = [v58 isFrame];
  if (isFrame != isFrame2)
  {
LABEL_32:

    goto LABEL_33;
  }

  if ((isFrame & isFrame2) == 1)
  {
    objc_opt_class();
    v64 = TSUDynamicCast();
    objc_opt_class();
    v65 = TSUDynamicCast();
    v66 = v65;
    if (v64 && v65)
    {
      archivableFrameName = [v64 archivableFrameName];
      archivableFrameName2 = [v66 archivableFrameName];
      if ([archivableFrameName isEqualToString:archivableFrameName2])
      {
        [v64 assetScale];
        v70 = v69;
        [v66 assetScale];
        v72 = v71;
        v73 = vabdd_f64(v70, v71);

        if (v73 < 0.00999999978 || v70 == v72)
        {
          goto LABEL_52;
        }
      }

      else
      {
      }
    }

    v36 = 1;
LABEL_52:

LABEL_53:
    v59 = v36;
    goto LABEL_54;
  }

  if ((isFrame | isFrame2))
  {
    goto LABEL_53;
  }

  [stroke width];
  v76 = v75;
  [v58 width];
  if (v76 == v77)
  {
    goto LABEL_53;
  }

  v59 = v36;
  if (vabdd_f64(v76, v77) >= 0.00999999978)
  {
    goto LABEL_32;
  }

LABEL_54:

  if (v59 == 3)
  {
    v62 = 2;
  }

  else
  {
    v62 = v59;
  }

LABEL_34:

  return v62;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  v7 = objectCopy;
  if (fraction >= 1.0)
  {
    self = objectCopy;
  }

  selfCopy = self;

  return self;
}

+ (Class)drawableInfoSubclassForClass:(Class)class unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (objc_opt_class() == class)
  {
    v7 = unarchiverCopy;
    v8 = MEMORY[0x277D80558];
    google::protobuf::internal::AssignDescriptors();
    v9 = [v7 messageWithDescriptor:*(*(v8 + 88) + 720)];

    if (google::protobuf::internal::ExtensionSet::Has((v9 + 16)))
    {
      class = self;
    }
  }

  classCopy = class;

  return class;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v4 = MEMORY[0x277D80558];
  google::protobuf::internal::AssignDescriptors();
  v5 = [unarchiverCopy messageWithDescriptor:*(*(v4 + 88) + 720)];

  [(KNLiveVideoInfo *)self loadFromArchive:v5 unarchiver:unarchiverCopy];
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  v4 = MEMORY[0x277D80558];
  google::protobuf::internal::AssignDescriptors();
  v5 = [archiverCopy messageWithNewFunction:sub_275D7C4DC descriptor:*(*(v4 + 88) + 720)];

  [(KNLiveVideoInfo *)self saveToArchive:v5 archiver:archiverCopy];
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 8))
  {
    v7 = *(archive + 8);
  }

  else
  {
    v7 = MEMORY[0x277D804B0];
  }

  v26.receiver = self;
  v26.super_class = KNLiveVideoInfo;
  [(KNLiveVideoInfo *)&v26 loadFromArchive:v7 unarchiver:unarchiverCopy];
  Message = google::protobuf::internal::ExtensionSet::GetMessage();
  v9 = Message;
  v10 = *(Message + 16);
  if (v10)
  {
    v11 = [unarchiverCopy readWeakObjectUUIDReferenceMessage:*(Message + 24)];
    sourceId = self->_sourceId;
    self->_sourceId = v11;

    v10 = *(v9 + 16);
  }

  v13 = *(v9 + 48);
  if ((v10 & 8) == 0)
  {
    v13 = 1.0;
  }

  self->_scale = v13;
  if ((v10 & 2) != 0)
  {
    TSPCGPointFromMessage(*(v9 + 32));
    self->_normalizedOffset.x = v14;
    self->_normalizedOffset.y = v15;
    v10 = *(v9 + 16);
  }

  if ((v10 & 0x20) != 0)
  {
    self->_maskKind = *(v9 + 60);
    if ((v10 & 0x40) == 0)
    {
LABEL_12:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_24;
    }
  }

  else if ((v10 & 0x40) == 0)
  {
    goto LABEL_12;
  }

  self->_maskCornerRadius = *(v9 + 64);
  if ((v10 & 0x80) == 0)
  {
LABEL_13:
    if ((v10 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_backgroundKind = *(v9 + 72);
  if ((v10 & 4) == 0)
  {
LABEL_14:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_25:
  v22 = [MEMORY[0x277D80248] instanceWithArchive:*(v9 + 40) unarchiver:unarchiverCopy];
  backgroundFill = self->_backgroundFill;
  self->_backgroundFill = v22;

  if ((*(v9 + 16) & 0x10) != 0)
  {
LABEL_15:
    self->_isPlaceholder = *(v9 + 56);
  }

LABEL_16:
  v16 = *(archive + 15);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_275D7BCCC;
  v25[3] = &unk_27A6984E0;
  v25[4] = self;
  v17 = unarchiverCopy;
  v18 = objc_opt_class();
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = MEMORY[0x277D80A18];
  }

  [v17 readReferenceMessage:v19 class:v18 protocol:0 completion:v25];

  if ((*(archive + 40) & 0x80) != 0)
  {
    v20 = [v17 readDataReferenceMessage:*(archive + 13)];
    archivedMoviePosterImageData = self->_archivedMoviePosterImageData;
    self->_archivedMoviePosterImageData = v20;
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_275D7BCE4;
  v24[3] = &unk_27A698390;
  v24[4] = self;
  [v17 addFinalizeHandler:v24];
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v57 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v48 = MEMORY[0x277D85DD0];
  v49 = 3221225472;
  v50 = sub_275D7C454;
  v51 = &unk_27A697C88;
  archiveCopy = archive;
  v7 = archiverCopy;
  v52 = v7;
  selfCopy = self;
  [v7 pushScopeForField:1 message:archive usingBlock:&v48];
  [v7 setIgnoreAndPreserveRuleForField:100 message:{archive, v48, v49, v50, v51}];
  sub_275E16A0C();
  v8 = google::protobuf::internal::ExtensionSet::MutableMessage();
  v9 = v8;
  sourceId = self->_sourceId;
  if (sourceId)
  {
    *(v8 + 16) |= 1u;
    v11 = *(v8 + 24);
    if (!v11)
    {
      v12 = *(v8 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x277C8F000](v12);
      *(v9 + 24) = v11;
    }

    [v7 setWeakReferenceToObjectUUID:sourceId message:v11];
  }

  v13 = *(v9 + 16);
  *(v9 + 48) = self->_scale;
  x = self->_normalizedOffset.x;
  y = self->_normalizedOffset.y;
  *(v9 + 16) = v13 | 0xA;
  v16 = *(v9 + 32);
  if (!v16)
  {
    v17 = *(v9 + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = MEMORY[0x277C8F020](v17);
    *(v9 + 32) = v16;
  }

  v58.x = x;
  v58.y = y;
  TSPCGPointCopyToMessage(v58, v16);
  maskKind = self->_maskKind;
  if (maskKind >= 0x80000000)
  {
    v36 = MEMORY[0x277D81150];
    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoInfo(KNLiveVideoInfoPersistenceAdditions) saveToArchive:archiver:]"];
    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoInfoPersistenceAdditions.mm"];
    [v36 handleFailureInFunction:v37 file:v38 lineNumber:135 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    LODWORD(maskKind) = 0x7FFFFFFF;
  }

  else if (maskKind <= 0xFFFFFFFF7FFFFFFFLL)
  {
    v39 = MEMORY[0x277D81150];
    v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoInfo(KNLiveVideoInfoPersistenceAdditions) saveToArchive:archiver:]"];
    v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoInfoPersistenceAdditions.mm"];
    [v39 handleFailureInFunction:v40 file:v41 lineNumber:135 isFatal:0 description:"Out-of-bounds type assignment was clamped to min"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    LODWORD(maskKind) = 0x80000000;
  }

  v19 = *(v9 + 16);
  *(v9 + 60) = maskKind;
  maskCornerRadius = self->_maskCornerRadius;
  v21 = v19 | 0x60;
  *(v9 + 16) = v19 | 0x60;
  *(v9 + 64) = maskCornerRadius;
  backgroundKind = self->_backgroundKind;
  if (backgroundKind)
  {
    if (backgroundKind >= 0x80000000)
    {
      v42 = MEMORY[0x277D81150];
      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoInfo(KNLiveVideoInfoPersistenceAdditions) saveToArchive:archiver:]"];
      v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoInfoPersistenceAdditions.mm"];
      [v42 handleFailureInFunction:v43 file:v44 lineNumber:141 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

      [MEMORY[0x277D81150] logBacktraceThrottled];
      LODWORD(v23) = 0x7FFFFFFF;
    }

    else if (backgroundKind <= 0xFFFFFFFF7FFFFFFFLL)
    {
      v45 = MEMORY[0x277D81150];
      v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoInfo(KNLiveVideoInfoPersistenceAdditions) saveToArchive:archiver:]"];
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoInfoPersistenceAdditions.mm"];
      [v45 handleFailureInFunction:v46 file:v47 lineNumber:141 isFatal:0 description:"Out-of-bounds type assignment was clamped to min"];

      [MEMORY[0x277D81150] logBacktraceThrottled];
      LODWORD(v23) = 0x80000000;
    }

    else
    {
      v23 = self->_backgroundKind;
    }

    *(v9 + 16) |= 0x80u;
    *(v9 + 72) = v23;
    v55 = 0x700000064;
    v56 = 0;
    [v7 setIgnoreAndPreserveRuleForFieldPath:&v55 message:archive];
    v21 = *(v9 + 16);
  }

  backgroundFill = self->_backgroundFill;
  if (backgroundFill)
  {
    *(v9 + 16) = v21 | 4;
    v25 = *(v9 + 40);
    if (!v25)
    {
      v26 = *(v9 + 8);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = MEMORY[0x277C8EF70](v26);
      *(v9 + 40) = v25;
    }

    [(TSDFill *)backgroundFill saveToArchive:v25 archiver:v7];
    v55 = 0x800000064;
    v56 = 0;
    [v7 setIgnoreAndPreserveRuleForFieldPath:&v55 message:archive];
    v21 = *(v9 + 16);
  }

  isPlaceholder = self->_isPlaceholder;
  *(v9 + 16) = v21 | 0x10;
  *(v9 + 56) = isPlaceholder;
  *(archive + 10) |= 0x20000000u;
  *(archive + 206) = 1;
  [v7 setIgnoreAndPreserveRuleForField:30 message:archive];
  style = self->_style;
  *(archive + 10) |= 0x200u;
  v29 = *(archive + 15);
  if (!v29)
  {
    v30 = *(archive + 1);
    if (v30)
    {
      v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
    }

    v29 = MEMORY[0x277C8F050](v30);
    *(archive + 15) = v29;
  }

  [v7 setStrongReference:style message:v29];
  archivedMoviePosterImageData = self->_archivedMoviePosterImageData;
  if (archivedMoviePosterImageData)
  {
    *(archive + 10) |= 0x80u;
    v32 = *(archive + 13);
    if (!v32)
    {
      v33 = *(archive + 1);
      if (v33)
      {
        v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = MEMORY[0x277C8EFD0](v33);
      *(archive + 13) = v32;
    }

    [v7 setDataReference:archivedMoviePosterImageData message:v32];
  }

  v34 = sub_275E53AD0();
  [v7 requiresDocumentReadVersion:v34 writeVersion:sub_275E53AE0() featureIdentifier:@"KNLiveVideos"];
  if (backgroundKind)
  {
    v35 = sub_275E53AD0();
    [v7 requiresDocumentReadVersion:v35 writeVersion:sub_275E53AF0() featureIdentifier:@"KNLiveVideoBackgrounds"];
  }
}

@end
@interface KNMotionBackgroundFill
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison;
- (KNMotionBackgroundFill)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (KNMotionBackgroundFill)initWithMotionBackgroundStyle:(id)style;
- (NSSet)referencedStyles;
- (id)makeAlternateFillForDowngrading;
- (id)referenceColor;
- (unint64_t)hash;
- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context;
- (void)paintPath:(CGPath *)path inContext:(CGContext *)context;
- (void)paintPath:(CGPath *)path naturalBounds:(CGRect)bounds inContext:(CGContext *)context isPDF:(BOOL)f;
- (void)paintRect:(CGRect)rect inContext:(CGContext *)context;
- (void)replaceReferencedStylesUsingBlock:(id)block;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)updateAlternateFillForDowngrading;
@end

@implementation KNMotionBackgroundFill

- (KNMotionBackgroundFill)initWithMotionBackgroundStyle:(id)style
{
  styleCopy = style;
  v9.receiver = self;
  v9.super_class = KNMotionBackgroundFill;
  v6 = [(KNMotionBackgroundFill *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_motionBackgroundStyle, style);
    [(KNMotionBackgroundFill *)v7 updateAlternateFillForDowngrading];
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5)
  {
    motionBackgroundStyle = [(KNMotionBackgroundFill *)self motionBackgroundStyle];
    motionBackgroundStyle2 = [v5 motionBackgroundStyle];
    v8 = [motionBackgroundStyle isEqualToStyle:motionBackgroundStyle2 ignoreObjectContext:1 ignoreObjectUUID:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  motionBackgroundStyle = [(KNMotionBackgroundFill *)self motionBackgroundStyle];
  v3 = [motionBackgroundStyle hash];

  return v3;
}

- (id)makeAlternateFillForDowngrading
{
  motionBackgroundStyle = [(KNMotionBackgroundFill *)self motionBackgroundStyle];
  makeAlternateFill = [motionBackgroundStyle makeAlternateFill];

  return makeAlternateFill;
}

- (void)updateAlternateFillForDowngrading
{
  makeAlternateFillForDowngrading = [(KNMotionBackgroundFill *)self makeAlternateFillForDowngrading];
  [(KNMotionBackgroundFill *)self setAlternateFillForDowngrading:?];
}

- (void)paintRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  alternateFillForDowngrading = [(KNMotionBackgroundFill *)self alternateFillForDowngrading];
  [alternateFillForDowngrading paintRect:context inContext:{x, y, width, height}];
}

- (void)paintPath:(CGPath *)path naturalBounds:(CGRect)bounds inContext:(CGContext *)context isPDF:(BOOL)f
{
  fCopy = f;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  alternateFillForDowngrading = [(KNMotionBackgroundFill *)self alternateFillForDowngrading];
  [alternateFillForDowngrading paintPath:path naturalBounds:context inContext:fCopy isPDF:{x, y, width, height}];
}

- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  alternateFillForDowngrading = [(KNMotionBackgroundFill *)self alternateFillForDowngrading];
  [alternateFillForDowngrading drawSwatchInRect:context inContext:{x, y, width, height}];
}

- (void)paintPath:(CGPath *)path inContext:(CGContext *)context
{
  alternateFillForDowngrading = [(KNMotionBackgroundFill *)self alternateFillForDowngrading];
  [alternateFillForDowngrading paintPath:path inContext:context];
}

- (id)referenceColor
{
  motionBackgroundStyle = [(KNMotionBackgroundFill *)self motionBackgroundStyle];
  referenceColor = [motionBackgroundStyle referenceColor];

  return referenceColor;
}

- (NSSet)referencedStyles
{
  v2 = MEMORY[0x277CBEB98];
  motionBackgroundStyle = [(KNMotionBackgroundFill *)self motionBackgroundStyle];
  v4 = [v2 setWithObject:motionBackgroundStyle];

  return v4;
}

- (void)replaceReferencedStylesUsingBlock:(id)block
{
  blockCopy = block;
  objc_opt_class();
  motionBackgroundStyle = [(KNMotionBackgroundFill *)self motionBackgroundStyle];
  v5 = blockCopy[2](blockCopy, motionBackgroundStyle);
  v6 = TSUCheckedDynamicCast();
  [(KNMotionBackgroundFill *)self setMotionBackgroundStyle:v6];
}

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = [[KNMotionBackgroundFill alloc] initWithArchive:archive unarchiver:unarchiverCopy];

  return v6;
}

- (KNMotionBackgroundFill)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v17.receiver = self;
  v17.super_class = KNMotionBackgroundFill;
  v7 = [(KNMotionBackgroundFill *)&v17 init];
  if (v7)
  {
    if (google::protobuf::internal::ExtensionSet::Has((archive + 16)))
    {
      v8 = *(google::protobuf::internal::ExtensionSet::GetMessage() + 24);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = sub_275D5FAC4;
      v15[3] = &unk_27A697E40;
      v9 = v7;
      v16 = v9;
      v10 = unarchiverCopy;
      v11 = objc_opt_class();
      if (v8)
      {
        v12 = v8;
      }

      else
      {
        v12 = MEMORY[0x277D80A18];
      }

      [v10 readReferenceMessage:v12 class:v11 protocol:0 completion:v15];

      v13 = [MEMORY[0x277D80248] drawablesSpecificInstanceWithArchive:archive unarchiver:v10];
      [(KNMotionBackgroundFill *)v9 setAlternateFillForDowngrading:v13];

      v7 = v16;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  sub_275E1F138();
  v6 = google::protobuf::internal::ExtensionSet::MutableMessage();
  v7 = v6;
  motionBackgroundStyle = self->_motionBackgroundStyle;
  *(v6 + 16) |= 1u;
  v9 = *(v6 + 24);
  if (!v9)
  {
    v10 = *(v6 + 8);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = MEMORY[0x277C8F050](v10);
    *(v7 + 24) = v9;
  }

  [archiverCopy setStrongReference:motionBackgroundStyle message:v9];
  [archiverCopy setIgnoreAndPreserveRuleForField:200 message:archive];
  alternateFillForDowngrading = [(KNMotionBackgroundFill *)self alternateFillForDowngrading];
  [alternateFillForDowngrading saveToArchive:archive archiver:archiverCopy];
}

- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison
{
  comparisonCopy = comparison;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5)
  {
    motionBackgroundStyle = [(KNMotionBackgroundFill *)self motionBackgroundStyle];
    motionBackgroundStyle2 = [v5 motionBackgroundStyle];
    v8 = [motionBackgroundStyle isEquivalentForCrossDocumentPasteMasterComparison:motionBackgroundStyle2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
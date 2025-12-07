@interface KNSlideStyle
+ (id)defaultStyleWithContext:(id)context;
+ (id)defaultValueForProperty:(int)property;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint;
- (KNMotionBackgroundStyle)motionBackgroundStyle;
- (KNSlideStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)loadSlideStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)referencedStyleWasUpdated:(id)updated;
- (void)saveSlideStylePropertyMap:(id)map toArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation KNSlideStyle

+ (id)properties
{
  if (qword_280A3BFB0 != -1)
  {
    sub_275E5A404();
  }

  v3 = qword_280A3BFA8;

  return v3;
}

+ (id)propertiesAllowingNSNull
{
  if (qword_280A3BFC0 != -1)
  {
    sub_275E5A418();
  }

  v3 = qword_280A3BFB8;

  return v3;
}

+ (id)defaultStyleWithContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc(objc_opt_class());
  v5 = sub_275DC204C(v4);
  v6 = [v5 localizedStringForKey:@"None" value:&stru_2884D8E20 table:@"Keynote"];
  v7 = [v4 initWithContext:contextCopy name:v6 overridePropertyMap:0 isVariation:0];

  return v7;
}

+ (id)defaultValueForProperty:(int)property
{
  if (property == 4096)
  {
    blackColor = [KNTransitionAttributes defaultAttributesForEffect:*MEMORY[0x277D80160]];
  }

  else if (property == 516)
  {
    blackColor = [MEMORY[0x277D801F8] blackColor];
  }

  else
  {
    blackColor = 0;
  }

  return blackColor;
}

- (KNSlideStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation
{
  v7.receiver = self;
  v7.super_class = KNSlideStyle;
  return [(KNSlideStyle *)&v7 initWithContext:context name:name overridePropertyMap:map isVariation:variation];
}

- (KNMotionBackgroundStyle)motionBackgroundStyle
{
  objc_opt_class();
  v3 = [(KNSlideStyle *)self objectForProperty:516];
  v4 = TSUDynamicCast();

  if (v4)
  {
    motionBackgroundStyle = [v4 motionBackgroundStyle];
  }

  else
  {
    motionBackgroundStyle = 0;
  }

  return motionBackgroundStyle;
}

- (void)referencedStyleWasUpdated:(id)updated
{
  updatedCopy = updated;
  motionBackgroundStyle = [(KNSlideStyle *)self motionBackgroundStyle];

  if (motionBackgroundStyle == updatedCopy)
  {
    [(KNSlideStyle *)self willModify];
    objc_opt_class();
    v5 = [(KNSlideStyle *)self objectForProperty:516];
    v6 = TSUDynamicCast();

    if (v6)
    {
      [v6 updateAlternateFillForDowngrading];
    }
  }
}

- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint
{
  objc_opt_class();
  v5 = [(KNSlideStyle *)self valueForProperty:516];
  v6 = TSUCheckedDynamicCast();

  owningDocument = [(TSPObject *)self owningDocument];
  show = [owningDocument show];
  [show size];
  [v6 renderedImageSizeForObjectSize:?];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)loadSlideStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  mapCopy = map;
  unarchiverCopy = unarchiver;
  v9 = objc_opt_class();
  v10 = *(archive + 4);
  if (v10)
  {
    v11 = [MEMORY[0x277D80248] instanceWithArchive:*(archive + 3) unarchiver:unarchiverCopy];
    v15 = v11;
    v12 = [v9 validateObjectValue:&v15 withClass:objc_opt_class() forProperty:516];
    v13 = v15;

    if (v12)
    {
      [mapCopy setObject:v13 forProperty:516];
    }

    v10 = *(archive + 4);
  }

  if ((v10 & 8) != 0)
  {
    v14 = *(archive + 41);
    if ([v9 validateIntValueAsBool:&v14 forProperty:4097])
    {
      [mapCopy setIntValue:v14 != 0 forProperty:4097];
    }

    v10 = *(archive + 4);
  }

  if ((v10 & 0x10) != 0)
  {
    v14 = *(archive + 42);
    if ([v9 validateIntValueAsBool:&v14 forProperty:4098])
    {
      [mapCopy setIntValue:v14 != 0 forProperty:4098];
    }

    v10 = *(archive + 4);
  }

  if ((v10 & 0x40) != 0)
  {
    v14 = *(archive + 44);
    if ([v9 validateIntValueAsBool:&v14 forProperty:4100])
    {
      [mapCopy setIntValue:v14 != 0 forProperty:4100];
    }
  }
}

- (void)saveSlideStylePropertyMap:(id)map toArchive:(void *)archive archiver:(id)archiver
{
  mapCopy = map;
  archiverCopy = archiver;
  v9 = objc_opt_class();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_275D7DE70;
  v16[3] = &unk_27A698540;
  v10 = mapCopy;
  v17 = v10;
  v19 = v9;
  archiveCopy = archive;
  v11 = archiverCopy;
  v18 = v11;
  [v11 pushScopeForField:1 message:archive usingBlock:v16];
  if ([v10 containsProperty:4097])
  {
    v15 = [v10 intValueForProperty:4097];
    if ([v9 validateIntValueAsBool:&v15 forProperty:4097])
    {
      v12 = v15 != 0;
      *(archive + 4) |= 8u;
      *(archive + 41) = v12;
    }
  }

  if ([v10 containsProperty:4098])
  {
    v15 = [v10 intValueForProperty:4098];
    if ([v9 validateIntValueAsBool:&v15 forProperty:4098])
    {
      v13 = v15 != 0;
      *(archive + 4) |= 0x10u;
      *(archive + 42) = v13;
    }
  }

  if ([v10 containsProperty:4100])
  {
    v15 = [v10 intValueForProperty:4100];
    if ([v9 validateIntValueAsBool:&v15 forProperty:4100])
    {
      v14 = v15 != 0;
      *(archive + 4) |= 0x40u;
      *(archive + 44) = v14;
    }
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [unarchiverCopy messageWithDescriptor:off_2812EA908[62]];

  [(KNSlideStyle *)self loadFromArchive:v4 unarchiver:unarchiverCopy];
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 3))
  {
    v7 = *(archive + 3);
  }

  else
  {
    v7 = MEMORY[0x277D80BD0];
  }

  v13.receiver = self;
  v13.super_class = KNSlideStyle;
  [(KNSlideStyle *)&v13 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v8 = *(archive + 10);
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D80AB8]) initWithCapacity:v8];
    if (*(archive + 4))
    {
      v10 = *(archive + 4);
    }

    else
    {
      v10 = &qword_2812EB638;
    }

    [(KNSlideStyle *)self loadSlideStylePropertiesIntoPropertyMap:v9 fromArchive:v10 unarchiver:unarchiverCopy];
    v11 = *MEMORY[0x277D80AF0];
    v12 = *(&self->super.super.super.isa + v11);
    *(&self->super.super.super.isa + v11) = v9;
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [archiverCopy messageWithNewFunction:sub_275D7E3F8 descriptor:off_2812EA908[62]];

  [(KNSlideStyle *)self saveToArchive:v4 archiver:archiverCopy];
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v7 = *(archive + 3);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x277C8F060](v8);
    *(archive + 3) = v7;
  }

  v19.receiver = self;
  v19.super_class = KNSlideStyle;
  [(KNSlideStyle *)&v19 saveToArchive:v7 archiver:archiverCopy];
  overrideCount = [(KNSlideStyle *)self overrideCount];
  if (overrideCount)
  {
    if (overrideCount >> 31)
    {
      v13 = MEMORY[0x277D81150];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideStyle(PersistenceAdditions) saveToArchive:archiver:]"];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideStyle.mm"];
      [v13 handleFailureInFunction:v14 file:v15 lineNumber:192 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

      [MEMORY[0x277D81150] logBacktraceThrottled];
      LODWORD(overrideCount) = 0x7FFFFFFF;
    }

    v10 = *(archive + 4);
    *(archive + 10) = overrideCount;
    *(archive + 4) = v10 | 6;
    v11 = *(archive + 4);
    if (!v11)
    {
      v12 = *(archive + 1);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = sub_275E207F4(v12);
      *(archive + 4) = v11;
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_275D7E3D8;
    v16[3] = &unk_27A697C88;
    v16[4] = self;
    v18 = v11;
    v17 = archiverCopy;
    [v17 pushScopeForField:11 message:archive usingBlock:v16];
  }
}

@end
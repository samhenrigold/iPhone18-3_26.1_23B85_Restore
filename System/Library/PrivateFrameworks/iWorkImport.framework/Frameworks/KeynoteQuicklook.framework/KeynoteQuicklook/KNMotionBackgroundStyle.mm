@interface KNMotionBackgroundStyle
+ (id)axDescriptionForStyleIdentifier:(id)identifier;
+ (id)backgroundNameForStyleIdentifier:(id)identifier;
+ (id)defaultStyleWithContext:(id)context;
+ (id)nextUnusedStyleIdentifierInStylesheet:(id)stylesheet;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (id)toolTipForStyle:(id)style;
- (KNMotionBackgroundStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation;
- (TSUColor)referenceColor;
- (id)makeAlternateFill;
- (id)targetParentForStyleMappingByStyleMapper:(id)mapper intoStylesheet:(id)stylesheet;
- (void)copyAuxiliaryInformationToMigratedStyle:(id)style;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)loadMotionBackgroundStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)notifyClientsOfUpdate;
- (void)saveMotionBackgroundStylePropertyMap:(id)map toArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setOverridePropertyMap:(id)map;
- (void)setPosterFrameData:(id)data;
@end

@implementation KNMotionBackgroundStyle

+ (id)properties
{
  if (qword_280A3BF68 != -1)
  {
    sub_275E59DB8();
  }

  v3 = qword_280A3BF60;

  return v3;
}

+ (id)propertiesAllowingNSNull
{
  if (qword_280A3BF78 != -1)
  {
    sub_275E59DCC();
  }

  v3 = qword_280A3BF70;

  return v3;
}

+ (id)defaultStyleWithContext:(id)context
{
  contextCopy = context;
  v4 = [objc_alloc(objc_opt_class()) initWithContext:contextCopy name:0 overridePropertyMap:0 isVariation:0];

  return v4;
}

- (KNMotionBackgroundStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation
{
  v7.receiver = self;
  v7.super_class = KNMotionBackgroundStyle;
  return [(KNMotionBackgroundStyle *)&v7 initWithContext:context name:name overridePropertyMap:map isVariation:variation];
}

- (void)notifyClientsOfUpdate
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  stylesheet = [(KNMotionBackgroundStyle *)self stylesheet];
  v4 = [stylesheet stylesOfClass:objc_opt_class()];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        motionBackgroundStyle = [v8 motionBackgroundStyle];
        v10 = motionBackgroundStyle == self;

        if (v10)
        {
          [v8 referencedStyleWasUpdated:self];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)setOverridePropertyMap:(id)map
{
  mapCopy = map;
  v5.receiver = self;
  v5.super_class = KNMotionBackgroundStyle;
  [(KNMotionBackgroundStyle *)&v5 setOverridePropertyMap:mapCopy];
  [(KNMotionBackgroundStyle *)self notifyClientsOfUpdate];
}

- (void)setPosterFrameData:(id)data
{
  dataCopy = data;
  [(KNMotionBackgroundStyle *)self willModify];
  objc_storeStrong(&self->_posterFrameData, data);
  [(KNMotionBackgroundStyle *)self notifyClientsOfUpdate];
}

- (TSUColor)referenceColor
{
  propertyMap = [(KNMotionBackgroundStyle *)self propertyMap];
  if ([propertyMap containsProperty:4108])
  {
    v3 = 4108;
    goto LABEL_3;
  }

  if (![propertyMap containsProperty:4107])
  {
    if ([propertyMap containsProperty:4109])
    {
      v3 = 4109;
    }

    else if ([propertyMap containsProperty:4110])
    {
      v3 = 4110;
    }

    else if ([propertyMap containsProperty:4191])
    {
      v3 = 4191;
    }

    else
    {
      if (![propertyMap containsProperty:4111])
      {
        blackColor = [MEMORY[0x277D81180] blackColor];
        goto LABEL_4;
      }

      v3 = 4111;
    }

LABEL_3:
    blackColor = [propertyMap objectForProperty:v3];
LABEL_4:
    firstColor = blackColor;
    goto LABEL_7;
  }

  v6 = [propertyMap objectForProperty:4107];
  firstColor = [v6 firstColor];

LABEL_7:

  return firstColor;
}

- (void)copyAuxiliaryInformationToMigratedStyle:(id)style
{
  styleCopy = style;
  objc_opt_class();
  v4 = TSUCheckedDynamicCast();
  posterFrameData = [v4 posterFrameData];
  if (!posterFrameData)
  {
    propertyMap = [(KNMotionBackgroundStyle *)self propertyMap];
    allProperties = [propertyMap allProperties];
    v8 = [(KNMotionBackgroundStyle *)self hasEqualValues:v4 forProperties:allProperties];

    if (!v8)
    {
      goto LABEL_5;
    }

    posterFrameData = [(KNMotionBackgroundStyle *)self posterFrameData];
    [v4 setPosterFrameData:posterFrameData];
  }

LABEL_5:
}

- (id)targetParentForStyleMappingByStyleMapper:(id)mapper intoStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;
  v6 = [(KNMotionBackgroundStyle *)self valueForProperty:4101];
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNMotionBackgroundStyle targetParentForStyleMappingByStyleMapper:intoStylesheet:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNMotionBackgroundStyle.mm"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:363 isFatal:0 description:{"invalid nil value for '%{public}s'", "motionBackgroundName"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_275D679EC;
  aBlock[3] = &unk_27A698120;
  v10 = v6;
  v17 = v10;
  v11 = _Block_copy(aBlock);
  rootAncestor = [(KNMotionBackgroundStyle *)self rootAncestor];
  styleIdentifier = [rootAncestor styleIdentifier];

  if (styleIdentifier)
  {
    v14 = [stylesheetCopy cascadedStyleWithIdentifier:styleIdentifier];
    if (v11[2](v11, v14))
    {
      if (v14)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v14 = [stylesheetCopy firstCascadedStylePassingTest:v11];
LABEL_9:

  return v14;
}

- (id)makeAlternateFill
{
  referenceColor = [(KNMotionBackgroundStyle *)self referenceColor];
  posterFrameData = [(KNMotionBackgroundStyle *)self posterFrameData];
  if (!posterFrameData || (-[KNMotionBackgroundStyle posterFrameData](self, "posterFrameData"), v5 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277D80828] null], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, posterFrameData, v5 == v6))
  {
    v11 = [MEMORY[0x277D801F8] colorWithColor:referenceColor];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277D802C0]);
    posterFrameData2 = [(KNMotionBackgroundStyle *)self posterFrameData];
    owningDocument = [(TSPObject *)self owningDocument];
    show = [owningDocument show];
    [show size];
    v11 = [v7 initWithImageData:posterFrameData2 technique:3 tintColor:0 size:referenceColor referenceColor:?];
  }

  return v11;
}

+ (id)backgroundNameForStyleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (qword_280A3BF88 != -1)
  {
    sub_275E59DE0();
  }

  v4 = [qword_280A3BF80 objectForKeyedSubscript:identifierCopy];
  if (!v4)
  {
    v5 = sub_275DC204C(0);
    v4 = [v5 localizedStringForKey:@"Custom Dynamic Background" value:&stru_2884D8E20 table:@"Keynote"];
  }

  return v4;
}

+ (id)axDescriptionForStyleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (qword_280A3BF98 != -1)
  {
    sub_275E59DF4();
  }

  v4 = [qword_280A3BF90 objectForKeyedSubscript:identifierCopy];
  if (!v4)
  {
    v5 = sub_275DC204C(0);
    v4 = [v5 localizedStringForKey:@"Customized moving background" value:&stru_2884D8E20 table:@"Keynote"];
  }

  return v4;
}

+ (id)toolTipForStyle:(id)style
{
  styleIdentifier = [style styleIdentifier];
  v5 = [self backgroundNameForStyleIdentifier:styleIdentifier];

  return v5;
}

+ (id)nextUnusedStyleIdentifierInStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;
  v4 = 0;
  v5 = String() + 1;
  do
  {
    v6 = String();
    v7 = String();
    v8 = String();

    v9 = [stylesheetCopy styleWithIdentifier:v8];

    ++v5;
    v4 = v8;
  }

  while (v9);

  return v8;
}

- (void)loadMotionBackgroundStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  mapCopy = map;
  unarchiverCopy = unarchiver;
  v9 = objc_opt_class();
  v10 = *(archive + 4);
  if ((v10 & 0x80) != 0)
  {
    v11 = TSPTSUColorCreateFromMessage();
    [mapCopy setObject:v11 forProperty:4108];

    v10 = *(archive + 4);
  }

  if ((v10 & 0x100) != 0)
  {
    v12 = TSPTSUColorCreateFromMessage();
    [mapCopy setObject:v12 forProperty:4109];

    v10 = *(archive + 4);
  }

  if ((v10 & 0x200) != 0)
  {
    v13 = TSPTSUColorCreateFromMessage();
    [mapCopy setObject:v13 forProperty:4110];

    v10 = *(archive + 4);
  }

  if ((v10 & 0x800) != 0)
  {
    v14 = TSPTSUColorCreateFromMessage();
    [mapCopy setObject:v14 forProperty:4191];

    v10 = *(archive + 4);
  }

  if ((v10 & 0x400) != 0)
  {
    v15 = TSPTSUColorCreateFromMessage();
    [mapCopy setObject:v15 forProperty:4111];

    v10 = *(archive + 4);
  }

  if (v10)
  {
    0xFFFFFFFFFFFFFFFELL = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(archive + 5) & 0xFFFFFFFFFFFFFFFELL];
    v223 = 0xFFFFFFFFFFFFFFFELL;
    v17 = [v9 validateObjectValue:&v223 withClass:objc_opt_class() forProperty:4101];
    v18 = v223;

    if (v17)
    {
      [mapCopy setObject:v18 forProperty:4101];
    }

    v10 = *(archive + 4);
  }

  if ((v10 & 2) != 0)
  {
    0xFFFFFFFFFFFFFFFELL2 = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(archive + 6) & 0xFFFFFFFFFFFFFFFELL];
    v222 = 0xFFFFFFFFFFFFFFFELL2;
    v20 = [v9 validateObjectValue:&v222 withClass:objc_opt_class() forProperty:4102];
    v21 = v222;

    if (v20)
    {
      [mapCopy setObject:v21 forProperty:4102];
    }

    v10 = *(archive + 4);
  }

  if ((v10 & 0x40) != 0)
  {
    v22 = [MEMORY[0x277D80248] instanceWithArchive:*(archive + 11) unarchiver:unarchiverCopy];
    v221 = v22;
    v23 = [v9 validateObjectValue:&v221 withClass:objc_opt_class() forProperty:4107];
    v24 = v221;

    if (v23)
    {
      [mapCopy setObject:v24 forProperty:4107];
    }
  }

  if ((*(archive + 21) & 8) != 0)
  {
    v220 = *(archive + 96);
    if ([v9 validateIntValue:&v220 forProperty:4112])
    {
      [mapCopy setIntValue:LODWORD(v220) forProperty:4112];
    }
  }

  if ((*(archive + 17) & 0x10) != 0)
  {
    v25 = *(archive + 17);
    v220 = v25;
    if ([v9 validateFloatValue:&v220 forProperty:4118])
    {
      *&v26 = v220;
      [mapCopy setFloatValue:4118 forProperty:v26];
    }
  }

  v27 = *(archive + 6);
  if ((v27 & 0x80000) != 0)
  {
    v28 = *(archive + 82);
    v220 = v28;
    if ([v9 validateFloatValue:&v220 forProperty:4119])
    {
      *&v29 = v220;
      [mapCopy setFloatValue:4119 forProperty:v29];
    }

    v27 = *(archive + 6);
  }

  if ((v27 & 0x100000) != 0)
  {
    v30 = *(archive + 83);
    v220 = v30;
    if ([v9 validateFloatValue:&v220 forProperty:4120])
    {
      *&v31 = v220;
      [mapCopy setFloatValue:4120 forProperty:v31];
    }

    v27 = *(archive + 6);
  }

  if ((v27 & 0x200000) != 0)
  {
    v32 = *(archive + 84);
    v220 = v32;
    if ([v9 validateFloatValue:&v220 forProperty:4121])
    {
      *&v33 = v220;
      [mapCopy setFloatValue:4121 forProperty:v33];
    }

    v27 = *(archive + 6);
  }

  if ((v27 & 0x400000) != 0)
  {
    v34 = *(archive + 85);
    v220 = v34;
    if ([v9 validateFloatValue:&v220 forProperty:4122])
    {
      *&v35 = v220;
      [mapCopy setFloatValue:4122 forProperty:v35];
    }

    v27 = *(archive + 6);
  }

  if ((v27 & 0x800000) != 0)
  {
    v36 = *(archive + 86);
    v220 = v36;
    if ([v9 validateFloatValue:&v220 forProperty:4123])
    {
      *&v37 = v220;
      [mapCopy setFloatValue:4123 forProperty:v37];
    }

    v27 = *(archive + 6);
  }

  if ((v27 & 0x1000000) != 0)
  {
    v38 = *(archive + 87);
    v220 = v38;
    if ([v9 validateFloatValue:&v220 forProperty:4124])
    {
      *&v39 = v220;
      [mapCopy setFloatValue:4124 forProperty:v39];
    }
  }

  if ((*(archive + 17) & 0x20) != 0)
  {
    v40 = *(archive + 18);
    v220 = v40;
    if ([v9 validateFloatValue:&v220 forProperty:4146])
    {
      *&v41 = v220;
      [mapCopy setFloatValue:4146 forProperty:v41];
    }
  }

  if ((*(archive + 27) & 2) != 0)
  {
    v42 = *(archive + 88);
    v220 = v42;
    if ([v9 validateFloatValue:&v220 forProperty:4147])
    {
      *&v43 = v220;
      [mapCopy setFloatValue:4147 forProperty:v43];
    }
  }

  v44 = *(archive + 4);
  if ((v44 & 0x4000) != 0)
  {
    v45 = *(archive + 19);
    v220 = v45;
    if ([v9 validateFloatValue:&v220 forProperty:4148])
    {
      *&v46 = v220;
      [mapCopy setFloatValue:4148 forProperty:v46];
    }

    v44 = *(archive + 4);
  }

  if ((v44 & 0x8000) != 0)
  {
    v47 = *(archive + 20);
    v220 = v47;
    if ([v9 validateFloatValue:&v220 forProperty:4149])
    {
      *&v48 = v220;
      [mapCopy setFloatValue:4149 forProperty:v48];
    }
  }

  v49 = *(archive + 6);
  if ((v49 & 0x10000000) != 0)
  {
    v50 = *(archive + 91);
    v220 = v50;
    if ([v9 validateFloatValue:&v220 forProperty:4150])
    {
      *&v51 = v220;
      [mapCopy setFloatValue:4150 forProperty:v51];
    }

    v49 = *(archive + 6);
  }

  if ((v49 & 0x20000000) != 0)
  {
    v52 = *(archive + 92);
    v220 = v52;
    if ([v9 validateFloatValue:&v220 forProperty:4151])
    {
      *&v53 = v220;
      [mapCopy setFloatValue:4151 forProperty:v53];
    }

    v49 = *(archive + 6);
  }

  if ((v49 & 0x40000000) != 0)
  {
    v54 = *(archive + 93);
    v220 = v54;
    if ([v9 validateFloatValue:&v220 forProperty:4152])
    {
      *&v55 = v220;
      [mapCopy setFloatValue:4152 forProperty:v55];
    }

    v49 = *(archive + 6);
  }

  if (v49 < 0)
  {
    v56 = *(archive + 94);
    v220 = v56;
    if ([v9 validateFloatValue:&v220 forProperty:4153])
    {
      *&v57 = v220;
      [mapCopy setFloatValue:4153 forProperty:v57];
    }
  }

  v58 = *(archive + 4);
  if ((v58 & 0x10000) != 0)
  {
    v59 = *(archive + 21);
    v220 = v59;
    if ([v9 validateFloatValue:&v220 forProperty:4156])
    {
      *&v60 = v220;
      [mapCopy setFloatValue:4156 forProperty:v60];
    }

    v58 = *(archive + 4);
  }

  if ((v58 & 0x20000) != 0)
  {
    LODWORD(v220) = *(archive + 22);
    if ([v9 validateIntValue:&v220 forProperty:4177])
    {
      [mapCopy setIntValue:LODWORD(v220) forProperty:4177];
    }

    v58 = *(archive + 4);
  }

  if ((v58 & 0x40000) != 0)
  {
    v61 = *(archive + 23);
    v220 = v61;
    if ([v9 validateFloatValue:&v220 forProperty:4176])
    {
      *&v62 = v220;
      [mapCopy setFloatValue:4176 forProperty:v62];
    }
  }

  if ((*(archive + 21) & 0x10) != 0)
  {
    LODWORD(v220) = *(archive + 388);
    if ([v9 validateIntValueAsBool:&v220 forProperty:4178])
    {
      [mapCopy setIntValue:LODWORD(v220) != 0 forProperty:4178];
    }
  }

  v63 = *(archive + 4);
  if ((v63 & 4) != 0)
  {
    0xFFFFFFFFFFFFFFFELL3 = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(archive + 7) & 0xFFFFFFFFFFFFFFFELL];
    v219 = 0xFFFFFFFFFFFFFFFELL3;
    v65 = [v9 validateObjectValue:&v219 withClass:objc_opt_class() forProperty:4103];
    v66 = v219;

    if (v65)
    {
      [mapCopy setObject:v66 forProperty:4103];
    }

    v63 = *(archive + 4);
  }

  if ((v63 & 8) != 0)
  {
    0xFFFFFFFFFFFFFFFELL4 = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(archive + 8) & 0xFFFFFFFFFFFFFFFELL];
    v218 = 0xFFFFFFFFFFFFFFFELL4;
    v68 = [v9 validateObjectValue:&v218 withClass:objc_opt_class() forProperty:4104];
    v69 = v218;

    if (v68)
    {
      [mapCopy setObject:v69 forProperty:4104];
    }

    v63 = *(archive + 4);
  }

  if ((v63 & 0x10) != 0)
  {
    0xFFFFFFFFFFFFFFFELL5 = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(archive + 9) & 0xFFFFFFFFFFFFFFFELL];
    v217 = 0xFFFFFFFFFFFFFFFELL5;
    v71 = [v9 validateObjectValue:&v217 withClass:objc_opt_class() forProperty:4105];
    v72 = v217;

    if (v71)
    {
      [mapCopy setObject:v72 forProperty:4105];
    }

    v63 = *(archive + 4);
  }

  if ((v63 & 0x20) != 0)
  {
    0xFFFFFFFFFFFFFFFELL6 = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(archive + 10) & 0xFFFFFFFFFFFFFFFELL];
    v216 = 0xFFFFFFFFFFFFFFFELL6;
    v74 = [v9 validateObjectValue:&v216 withClass:objc_opt_class() forProperty:4106];
    v75 = v216;

    if (v74)
    {
      [mapCopy setObject:v75 forProperty:4106];
    }

    v63 = *(archive + 4);
  }

  if ((v63 & 0x80000) != 0)
  {
    v76 = *(archive + 24);
    v220 = v76;
    if ([v9 validateFloatValue:&v220 forProperty:4113])
    {
      *&v77 = v220;
      [mapCopy setFloatValue:4113 forProperty:v77];
    }

    v63 = *(archive + 4);
  }

  if ((v63 & 0x100000) != 0)
  {
    v78 = *(archive + 25);
    v220 = v78;
    if ([v9 validateFloatValue:&v220 forProperty:4114])
    {
      *&v79 = v220;
      [mapCopy setFloatValue:4114 forProperty:v79];
    }

    v63 = *(archive + 4);
  }

  if ((v63 & 0x200000) != 0)
  {
    v80 = *(archive + 26);
    v220 = v80;
    if ([v9 validateFloatValue:&v220 forProperty:4115])
    {
      *&v81 = v220;
      [mapCopy setFloatValue:4115 forProperty:v81];
    }

    v63 = *(archive + 4);
  }

  if ((v63 & 0x400000) != 0)
  {
    v82 = *(archive + 27);
    v220 = v82;
    if ([v9 validateFloatValue:&v220 forProperty:4116])
    {
      *&v83 = v220;
      [mapCopy setFloatValue:4116 forProperty:v83];
    }

    v63 = *(archive + 4);
  }

  if ((v63 & 0x800000) != 0)
  {
    v84 = *(archive + 28);
    v220 = v84;
    if ([v9 validateFloatValue:&v220 forProperty:4117])
    {
      *&v85 = v220;
      [mapCopy setFloatValue:4117 forProperty:v85];
    }

    v63 = *(archive + 4);
  }

  if ((v63 & 0x1000000) != 0)
  {
    v86 = *(archive + 29);
    v220 = v86;
    if ([v9 validateFloatValue:&v220 forProperty:4125])
    {
      *&v87 = v220;
      [mapCopy setFloatValue:4125 forProperty:v87];
    }

    v63 = *(archive + 4);
  }

  if ((v63 & 0x2000000) != 0)
  {
    v88 = *(archive + 30);
    v220 = v88;
    if ([v9 validateFloatValue:&v220 forProperty:4126])
    {
      *&v89 = v220;
      [mapCopy setFloatValue:4126 forProperty:v89];
    }

    v63 = *(archive + 4);
  }

  if ((v63 & 0x4000000) != 0)
  {
    v90 = *(archive + 31);
    v220 = v90;
    if ([v9 validateFloatValue:&v220 forProperty:4127])
    {
      *&v91 = v220;
      [mapCopy setFloatValue:4127 forProperty:v91];
    }

    v63 = *(archive + 4);
  }

  if ((v63 & 0x8000000) != 0)
  {
    v92 = *(archive + 32);
    v220 = v92;
    if ([v9 validateFloatValue:&v220 forProperty:4128])
    {
      *&v93 = v220;
      [mapCopy setFloatValue:4128 forProperty:v93];
    }

    v63 = *(archive + 4);
  }

  if ((v63 & 0x10000000) != 0)
  {
    v94 = *(archive + 33);
    v220 = v94;
    if ([v9 validateFloatValue:&v220 forProperty:4129])
    {
      *&v95 = v220;
      [mapCopy setFloatValue:4129 forProperty:v95];
    }

    v63 = *(archive + 4);
  }

  if ((v63 & 0x20000000) != 0)
  {
    v96 = *(archive + 34);
    v220 = v96;
    if ([v9 validateFloatValue:&v220 forProperty:4130])
    {
      *&v97 = v220;
      [mapCopy setFloatValue:4130 forProperty:v97];
    }

    v63 = *(archive + 4);
  }

  if ((v63 & 0x40000000) != 0)
  {
    v98 = *(archive + 35);
    v220 = v98;
    if ([v9 validateFloatValue:&v220 forProperty:4131])
    {
      *&v99 = v220;
      [mapCopy setFloatValue:4131 forProperty:v99];
    }

    v63 = *(archive + 4);
  }

  if (v63 < 0)
  {
    v100 = *(archive + 36);
    v220 = v100;
    if ([v9 validateFloatValue:&v220 forProperty:4132])
    {
      *&v101 = v220;
      [mapCopy setFloatValue:4132 forProperty:v101];
    }
  }

  v102 = *(archive + 5);
  if (v102)
  {
    v103 = *(archive + 37);
    v220 = v103;
    if ([v9 validateFloatValue:&v220 forProperty:4133])
    {
      *&v104 = v220;
      [mapCopy setFloatValue:4133 forProperty:v104];
    }

    v102 = *(archive + 5);
  }

  if ((v102 & 2) != 0)
  {
    v105 = *(archive + 38);
    v220 = v105;
    if ([v9 validateFloatValue:&v220 forProperty:4134])
    {
      *&v106 = v220;
      [mapCopy setFloatValue:4134 forProperty:v106];
    }

    v102 = *(archive + 5);
  }

  if ((v102 & 4) != 0)
  {
    v107 = *(archive + 39);
    v220 = v107;
    if ([v9 validateFloatValue:&v220 forProperty:4135])
    {
      *&v108 = v220;
      [mapCopy setFloatValue:4135 forProperty:v108];
    }

    v102 = *(archive + 5);
  }

  if ((v102 & 8) != 0)
  {
    v109 = *(archive + 40);
    v220 = v109;
    if ([v9 validateFloatValue:&v220 forProperty:4136])
    {
      *&v110 = v220;
      [mapCopy setFloatValue:4136 forProperty:v110];
    }

    v102 = *(archive + 5);
  }

  if ((v102 & 0x10) != 0)
  {
    v111 = *(archive + 41);
    v220 = v111;
    if ([v9 validateFloatValue:&v220 forProperty:4137])
    {
      *&v112 = v220;
      [mapCopy setFloatValue:4137 forProperty:v112];
    }

    v102 = *(archive + 5);
  }

  if ((v102 & 0x20) != 0)
  {
    v113 = *(archive + 42);
    v220 = v113;
    if ([v9 validateFloatValue:&v220 forProperty:4138])
    {
      *&v114 = v220;
      [mapCopy setFloatValue:4138 forProperty:v114];
    }

    v102 = *(archive + 5);
  }

  if ((v102 & 0x40) != 0)
  {
    v115 = *(archive + 43);
    v220 = v115;
    if ([v9 validateFloatValue:&v220 forProperty:4139])
    {
      *&v116 = v220;
      [mapCopy setFloatValue:4139 forProperty:v116];
    }

    v102 = *(archive + 5);
  }

  if ((v102 & 0x80) != 0)
  {
    v117 = *(archive + 44);
    v220 = v117;
    if ([v9 validateFloatValue:&v220 forProperty:4140])
    {
      *&v118 = v220;
      [mapCopy setFloatValue:4140 forProperty:v118];
    }

    v102 = *(archive + 5);
  }

  if ((v102 & 0x100) != 0)
  {
    v119 = *(archive + 45);
    v220 = v119;
    if ([v9 validateFloatValue:&v220 forProperty:4141])
    {
      *&v120 = v220;
      [mapCopy setFloatValue:4141 forProperty:v120];
    }

    v102 = *(archive + 5);
  }

  if ((v102 & 0x200) != 0)
  {
    v121 = *(archive + 46);
    v220 = v121;
    if ([v9 validateFloatValue:&v220 forProperty:4142])
    {
      *&v122 = v220;
      [mapCopy setFloatValue:4142 forProperty:v122];
    }

    v102 = *(archive + 5);
  }

  if ((v102 & 0x400) != 0)
  {
    v123 = *(archive + 47);
    v220 = v123;
    if ([v9 validateFloatValue:&v220 forProperty:4143])
    {
      *&v124 = v220;
      [mapCopy setFloatValue:4143 forProperty:v124];
    }

    v102 = *(archive + 5);
  }

  if ((v102 & 0x10000) != 0)
  {
    v125 = *(archive + 49);
    v220 = v125;
    if ([v9 validateFloatValue:&v220 forProperty:4144])
    {
      *&v126 = v220;
      [mapCopy setFloatValue:4144 forProperty:v126];
    }

    v102 = *(archive + 5);
  }

  if ((v102 & 0x20000) != 0)
  {
    v127 = *(archive + 50);
    v220 = v127;
    if ([v9 validateFloatValue:&v220 forProperty:4145])
    {
      *&v128 = v220;
      [mapCopy setFloatValue:4145 forProperty:v128];
    }

    v102 = *(archive + 5);
  }

  if ((v102 & 0x40000) != 0)
  {
    v129 = *(archive + 51);
    v220 = v129;
    if ([v9 validateFloatValue:&v220 forProperty:4154])
    {
      *&v130 = v220;
      [mapCopy setFloatValue:4154 forProperty:v130];
    }

    v102 = *(archive + 5);
  }

  if ((v102 & 0x80000) != 0)
  {
    v131 = *(archive + 52);
    v220 = v131;
    if ([v9 validateFloatValue:&v220 forProperty:4155])
    {
      *&v132 = v220;
      [mapCopy setFloatValue:4155 forProperty:v132];
    }

    v102 = *(archive + 5);
  }

  if ((v102 & 0x100000) != 0)
  {
    v133 = *(archive + 53);
    v220 = v133;
    if ([v9 validateFloatValue:&v220 forProperty:4157])
    {
      *&v134 = v220;
      [mapCopy setFloatValue:4157 forProperty:v134];
    }

    v102 = *(archive + 5);
  }

  if ((v102 & 0x200000) != 0)
  {
    v135 = *(archive + 54);
    v220 = v135;
    if ([v9 validateFloatValue:&v220 forProperty:4158])
    {
      *&v136 = v220;
      [mapCopy setFloatValue:4158 forProperty:v136];
    }

    v102 = *(archive + 5);
  }

  if ((v102 & 0x400000) != 0)
  {
    v137 = *(archive + 55);
    v220 = v137;
    if ([v9 validateFloatValue:&v220 forProperty:4159])
    {
      *&v138 = v220;
      [mapCopy setFloatValue:4159 forProperty:v138];
    }

    v102 = *(archive + 5);
  }

  if ((v102 & 0x800000) != 0)
  {
    v139 = *(archive + 56);
    v220 = v139;
    if ([v9 validateFloatValue:&v220 forProperty:4160])
    {
      *&v140 = v220;
      [mapCopy setFloatValue:4160 forProperty:v140];
    }

    v102 = *(archive + 5);
  }

  if ((v102 & 0x1000000) != 0)
  {
    v141 = *(archive + 57);
    v220 = v141;
    if ([v9 validateFloatValue:&v220 forProperty:4161])
    {
      *&v142 = v220;
      [mapCopy setFloatValue:4161 forProperty:v142];
    }
  }

  if ((*(archive + 27) & 4) != 0)
  {
    v143 = *(archive + 89);
    v220 = v143;
    if ([v9 validateFloatValue:&v220 forProperty:4162])
    {
      *&v144 = v220;
      [mapCopy setFloatValue:4162 forProperty:v144];
    }
  }

  v145 = *(archive + 5);
  if ((v145 & 0x2000000) != 0)
  {
    v146 = *(archive + 58);
    v220 = v146;
    if ([v9 validateFloatValue:&v220 forProperty:4163])
    {
      *&v147 = v220;
      [mapCopy setFloatValue:4163 forProperty:v147];
    }

    v145 = *(archive + 5);
  }

  if ((v145 & 0x4000000) != 0)
  {
    v148 = *(archive + 59);
    v220 = v148;
    if ([v9 validateFloatValue:&v220 forProperty:4164])
    {
      *&v149 = v220;
      [mapCopy setFloatValue:4164 forProperty:v149];
    }

    v145 = *(archive + 5);
  }

  if ((v145 & 0x8000000) != 0)
  {
    v150 = *(archive + 60);
    v220 = v150;
    if ([v9 validateFloatValue:&v220 forProperty:4165])
    {
      *&v151 = v220;
      [mapCopy setFloatValue:4165 forProperty:v151];
    }

    v145 = *(archive + 5);
  }

  if ((v145 & 0x10000000) != 0)
  {
    v152 = *(archive + 61);
    v220 = v152;
    if ([v9 validateFloatValue:&v220 forProperty:4166])
    {
      *&v153 = v220;
      [mapCopy setFloatValue:4166 forProperty:v153];
    }

    v145 = *(archive + 5);
  }

  if ((v145 & 0x20000000) != 0)
  {
    v154 = *(archive + 62);
    v220 = v154;
    if ([v9 validateFloatValue:&v220 forProperty:4167])
    {
      *&v155 = v220;
      [mapCopy setFloatValue:4167 forProperty:v155];
    }

    v145 = *(archive + 5);
  }

  if ((v145 & 0x40000000) != 0)
  {
    v156 = *(archive + 63);
    v220 = v156;
    if ([v9 validateFloatValue:&v220 forProperty:4168])
    {
      *&v157 = v220;
      [mapCopy setFloatValue:4168 forProperty:v157];
    }

    v145 = *(archive + 5);
  }

  if (v145 < 0)
  {
    v158 = *(archive + 64);
    v220 = v158;
    if ([v9 validateFloatValue:&v220 forProperty:4169])
    {
      *&v159 = v220;
      [mapCopy setFloatValue:4169 forProperty:v159];
    }
  }

  v160 = *(archive + 6);
  if (v160)
  {
    v161 = *(archive + 65);
    v220 = v161;
    if ([v9 validateFloatValue:&v220 forProperty:4170])
    {
      *&v162 = v220;
      [mapCopy setFloatValue:4170 forProperty:v162];
    }

    v160 = *(archive + 6);
  }

  if ((v160 & 2) != 0)
  {
    v163 = *(archive + 66);
    v220 = v163;
    if ([v9 validateFloatValue:&v220 forProperty:4171])
    {
      *&v164 = v220;
      [mapCopy setFloatValue:4171 forProperty:v164];
    }

    v160 = *(archive + 6);
  }

  if ((v160 & 4) != 0)
  {
    v165 = *(archive + 67);
    v220 = v165;
    if ([v9 validateFloatValue:&v220 forProperty:4172])
    {
      *&v166 = v220;
      [mapCopy setFloatValue:4172 forProperty:v166];
    }

    v160 = *(archive + 6);
  }

  if ((v160 & 8) != 0)
  {
    v167 = *(archive + 68);
    v220 = v167;
    if ([v9 validateFloatValue:&v220 forProperty:4173])
    {
      *&v168 = v220;
      [mapCopy setFloatValue:4173 forProperty:v168];
    }

    v160 = *(archive + 6);
  }

  if ((v160 & 0x10) != 0)
  {
    v169 = *(archive + 69);
    v220 = v169;
    if ([v9 validateFloatValue:&v220 forProperty:4174])
    {
      *&v170 = v220;
      [mapCopy setFloatValue:4174 forProperty:v170];
    }

    v160 = *(archive + 6);
  }

  if ((v160 & 0x20) != 0)
  {
    v171 = *(archive + 70);
    v220 = v171;
    if ([v9 validateFloatValue:&v220 forProperty:4175])
    {
      *&v172 = v220;
      [mapCopy setFloatValue:4175 forProperty:v172];
    }
  }

  v173 = *(archive + 5);
  if ((v173 & 0x2000) != 0)
  {
    LODWORD(v220) = *(archive + 389);
    if ([v9 validateIntValueAsBool:&v220 forProperty:4179])
    {
      [mapCopy setIntValue:LODWORD(v220) != 0 forProperty:4179];
    }

    v173 = *(archive + 5);
  }

  if ((v173 & 0x4000) != 0)
  {
    LODWORD(v220) = *(archive + 390);
    if ([v9 validateIntValueAsBool:&v220 forProperty:4180])
    {
      [mapCopy setIntValue:LODWORD(v220) != 0 forProperty:4180];
    }

    v173 = *(archive + 5);
  }

  if ((v173 & 0x8000) != 0)
  {
    LODWORD(v220) = *(archive + 391);
    if ([v9 validateIntValueAsBool:&v220 forProperty:4181])
    {
      [mapCopy setIntValue:LODWORD(v220) != 0 forProperty:4181];
    }
  }

  v174 = *(archive + 6);
  if ((v174 & 0x40) != 0)
  {
    v220 = *(archive + 142);
    if ([v9 validateIntValue:&v220 forProperty:4182])
    {
      [mapCopy setIntValue:LODWORD(v220) forProperty:4182];
    }

    v174 = *(archive + 6);
  }

  if ((v174 & 0x80) != 0)
  {
    LODWORD(v220) = *(archive + 572);
    if ([v9 validateIntValueAsBool:&v220 forProperty:4183])
    {
      [mapCopy setIntValue:LODWORD(v220) != 0 forProperty:4183];
    }

    v174 = *(archive + 6);
  }

  if ((v174 & 0x100) != 0)
  {
    LODWORD(v220) = *(archive + 573);
    if ([v9 validateIntValueAsBool:&v220 forProperty:4184])
    {
      [mapCopy setIntValue:LODWORD(v220) != 0 forProperty:4184];
    }

    v174 = *(archive + 6);
  }

  if ((v174 & 0x200) != 0)
  {
    v175 = *(archive + 72);
    v220 = v175;
    if ([v9 validateFloatValue:&v220 forProperty:4185])
    {
      *&v176 = v220;
      [mapCopy setFloatValue:4185 forProperty:v176];
    }

    v174 = *(archive + 6);
  }

  if ((v174 & 0x400) != 0)
  {
    v177 = *(archive + 73);
    v220 = v177;
    if ([v9 validateFloatValue:&v220 forProperty:4186])
    {
      *&v178 = v220;
      [mapCopy setFloatValue:4186 forProperty:v178];
    }

    v174 = *(archive + 6);
  }

  if ((v174 & 0x800) != 0)
  {
    v179 = *(archive + 74);
    v220 = v179;
    if ([v9 validateFloatValue:&v220 forProperty:4187])
    {
      *&v180 = v220;
      [mapCopy setFloatValue:4187 forProperty:v180];
    }

    v174 = *(archive + 6);
  }

  if ((v174 & 0x1000) != 0)
  {
    v181 = *(archive + 75);
    v220 = v181;
    if ([v9 validateFloatValue:&v220 forProperty:4188])
    {
      *&v182 = v220;
      [mapCopy setFloatValue:4188 forProperty:v182];
    }

    v174 = *(archive + 6);
  }

  if ((v174 & 0x2000) != 0)
  {
    v183 = *(archive + 76);
    v220 = v183;
    if ([v9 validateFloatValue:&v220 forProperty:4189])
    {
      *&v184 = v220;
      [mapCopy setFloatValue:4189 forProperty:v184];
    }

    v174 = *(archive + 6);
  }

  if ((v174 & 0x4000) != 0)
  {
    v185 = *(archive + 77);
    v220 = v185;
    if ([v9 validateFloatValue:&v220 forProperty:4190])
    {
      *&v186 = v220;
      [mapCopy setFloatValue:4190 forProperty:v186];
    }

    v174 = *(archive + 6);
  }

  if ((v174 & 0x8000) != 0)
  {
    v187 = *(archive + 78);
    v220 = v187;
    if ([v9 validateFloatValue:&v220 forProperty:4192])
    {
      *&v188 = v220;
      [mapCopy setFloatValue:4192 forProperty:v188];
    }

    v174 = *(archive + 6);
  }

  if ((v174 & 0x10000) != 0)
  {
    v189 = *(archive + 79);
    v220 = v189;
    if ([v9 validateFloatValue:&v220 forProperty:4193])
    {
      *&v190 = v220;
      [mapCopy setFloatValue:4193 forProperty:v190];
    }

    v174 = *(archive + 6);
  }

  if ((v174 & 0x20000) != 0)
  {
    v191 = *(archive + 80);
    v220 = v191;
    if ([v9 validateFloatValue:&v220 forProperty:4194])
    {
      *&v192 = v220;
      [mapCopy setFloatValue:4194 forProperty:v192];
    }

    v174 = *(archive + 6);
  }

  if ((v174 & 0x8000000) != 0)
  {
    v193 = *(archive + 90);
    v220 = v193;
    if ([v9 validateFloatValue:&v220 forProperty:4195])
    {
      *&v194 = v220;
      [mapCopy setFloatValue:4195 forProperty:v194];
    }

    v174 = *(archive + 6);
  }

  if ((v174 & 0x40000) != 0)
  {
    v195 = *(archive + 81);
    v220 = v195;
    if ([v9 validateFloatValue:&v220 forProperty:4196])
    {
      *&v196 = v220;
      [mapCopy setFloatValue:4196 forProperty:v196];
    }
  }

  v197 = *(archive + 7);
  if ((v197 & 0x20) != 0)
  {
    v220 = *(archive + 200);
    if ([v9 validateIntValue:&v220 forProperty:4197])
    {
      [mapCopy setIntValue:LODWORD(v220) forProperty:4197];
    }

    v197 = *(archive + 7);
  }

  if (v197)
  {
    v198 = *(archive + 95);
    v220 = v198;
    if ([v9 validateFloatValue:&v220 forProperty:4198])
    {
      *&v199 = v220;
      [mapCopy setFloatValue:4198 forProperty:v199];
    }

    v197 = *(archive + 7);
  }

  if ((v197 & 2) != 0)
  {
    v200 = *(archive + 96);
    v220 = v200;
    if ([v9 validateFloatValue:&v220 forProperty:4199])
    {
      *&v201 = v220;
      [mapCopy setFloatValue:4199 forProperty:v201];
    }

    v197 = *(archive + 7);
  }

  if ((v197 & 4) != 0)
  {
    v202 = *(archive + 97);
    v220 = v202;
    if ([v9 validateFloatValue:&v220 forProperty:4200])
    {
      *&v203 = v220;
      [mapCopy setFloatValue:4200 forProperty:v203];
    }

    v197 = *(archive + 7);
  }

  if ((v197 & 8) != 0)
  {
    v204 = *(archive + 98);
    v220 = v204;
    if ([v9 validateFloatValue:&v220 forProperty:4201])
    {
      *&v205 = v220;
      [mapCopy setFloatValue:4201 forProperty:v205];
    }

    v197 = *(archive + 7);
  }

  if ((v197 & 0x10) != 0)
  {
    v206 = *(archive + 99);
    v220 = v206;
    if ([v9 validateFloatValue:&v220 forProperty:4202])
    {
      *&v207 = v220;
      [mapCopy setFloatValue:4202 forProperty:v207];
    }

    v197 = *(archive + 7);
  }

  if ((v197 & 0x80) != 0)
  {
    v208 = *(archive + 101);
    v220 = v208;
    if ([v9 validateFloatValue:&v220 forProperty:4203])
    {
      *&v209 = v220;
      [mapCopy setFloatValue:4203 forProperty:v209];
    }

    v197 = *(archive + 7);
  }

  if ((v197 & 0x100) != 0)
  {
    v210 = *(archive + 102);
    v220 = v210;
    if ([v9 validateFloatValue:&v220 forProperty:4204])
    {
      *&v211 = v220;
      [mapCopy setFloatValue:4204 forProperty:v211];
    }

    v197 = *(archive + 7);
  }

  if ((v197 & 0x200) != 0)
  {
    v212 = *(archive + 103);
    v220 = v212;
    if ([v9 validateFloatValue:&v220 forProperty:4205])
    {
      *&v213 = v220;
      [mapCopy setFloatValue:4205 forProperty:v213];
    }

    v197 = *(archive + 7);
  }

  if ((v197 & 0x400) != 0)
  {
    v214 = *(archive + 104);
    v220 = v214;
    if ([v9 validateFloatValue:&v220 forProperty:4206])
    {
      *&v215 = v220;
      [mapCopy setFloatValue:4206 forProperty:v215];
    }

    v197 = *(archive + 7);
  }

  if ((v197 & 0x40) != 0)
  {
    v220 = *(archive + 201);
    if ([v9 validateIntValue:&v220 forProperty:4207])
    {
      [mapCopy setIntValue:LODWORD(v220) forProperty:4207];
    }
  }
}

- (void)saveMotionBackgroundStylePropertyMap:(id)map toArchive:(void *)archive archiver:(id)archiver
{
  mapCopy = map;
  archiverCopy = archiver;
  v9 = objc_opt_class();
  if ([mapCopy containsProperty:4108])
  {
    v10 = [mapCopy objectForProperty:4108];
    *(archive + 4) |= 0x80u;
    if (!*(archive + 12))
    {
      v11 = *(archive + 1);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(archive + 12) = MEMORY[0x277C8F010](v11);
    }

    TSPTSUColorCopyToMessage();
  }

  if ([mapCopy containsProperty:4109])
  {
    v12 = [mapCopy objectForProperty:4109];
    *(archive + 4) |= 0x100u;
    if (!*(archive + 13))
    {
      v13 = *(archive + 1);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(archive + 13) = MEMORY[0x277C8F010](v13);
    }

    TSPTSUColorCopyToMessage();
  }

  if ([mapCopy containsProperty:4110])
  {
    v14 = [mapCopy objectForProperty:4110];
    *(archive + 4) |= 0x200u;
    if (!*(archive + 14))
    {
      v15 = *(archive + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(archive + 14) = MEMORY[0x277C8F010](v15);
    }

    TSPTSUColorCopyToMessage();
  }

  if ([mapCopy containsProperty:4191])
  {
    v16 = [mapCopy objectForProperty:4191];
    *(archive + 4) |= 0x800u;
    if (!*(archive + 16))
    {
      v17 = *(archive + 1);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(archive + 16) = MEMORY[0x277C8F010](v17);
    }

    TSPTSUColorCopyToMessage();
  }

  if ([mapCopy containsProperty:4111])
  {
    v18 = [mapCopy objectForProperty:4111];
    *(archive + 4) |= 0x400u;
    if (!*(archive + 15))
    {
      v19 = *(archive + 1);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(archive + 15) = MEMORY[0x277C8F010](v19);
    }

    TSPTSUColorCopyToMessage();
  }

  if ([mapCopy containsProperty:4101])
  {
    v20 = [mapCopy objectForProperty:4101];
    v229 = v20;
    v21 = [v9 validateObjectValue:&v229 withClass:objc_opt_class() forProperty:4101];
    v22 = v229;

    if (v21)
    {
      *(archive + 4) |= 1u;
      [v22 tsp_saveToProtobufString:google::protobuf::internal::ArenaStringPtr::Mutable()];
    }
  }

  if ([mapCopy containsProperty:4102])
  {
    v23 = [mapCopy objectForProperty:4102];
    v228 = v23;
    v24 = [v9 validateObjectValue:&v228 withClass:objc_opt_class() forProperty:4102];
    v25 = v228;

    if (v24)
    {
      *(archive + 4) |= 2u;
      [v25 tsp_saveToProtobufString:google::protobuf::internal::ArenaStringPtr::Mutable()];
    }
  }

  if ([mapCopy containsProperty:4107])
  {
    v26 = [mapCopy objectForProperty:4107];
    v227 = v26;
    v27 = [v9 validateObjectValue:&v227 withClass:objc_opt_class() forProperty:4107];
    v28 = v227;

    if (v27)
    {
      *(archive + 4) |= 0x40u;
      v29 = *(archive + 11);
      if (!v29)
      {
        v30 = *(archive + 1);
        if (v30)
        {
          v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
        }

        v29 = MEMORY[0x277C8EF70](v30);
        *(archive + 11) = v29;
      }

      [v28 saveToArchive:v29 archiver:archiverCopy];
    }
  }

  if ([mapCopy containsProperty:4112])
  {
    LODWORD(v226) = [mapCopy intValueForProperty:4112];
    if ([v9 validateIntValue:&v226 forProperty:4112])
    {
      v31 = v226;
      *(archive + 5) |= 0x800u;
      *(archive + 96) = v31;
    }
  }

  if ([mapCopy containsProperty:4118])
  {
    [mapCopy floatValueForProperty:4118];
    v226 = v32;
    if ([v9 validateFloatValue:&v226 forProperty:4118])
    {
      v33 = v226;
      *(archive + 4) |= 0x1000u;
      *(archive + 17) = v33;
    }
  }

  if ([mapCopy containsProperty:4119])
  {
    [mapCopy floatValueForProperty:4119];
    v226 = v34;
    if ([v9 validateFloatValue:&v226 forProperty:4119])
    {
      v35 = v226;
      *(archive + 6) |= 0x80000u;
      *(archive + 82) = v35;
    }
  }

  if ([mapCopy containsProperty:4120])
  {
    [mapCopy floatValueForProperty:4120];
    v226 = v36;
    if ([v9 validateFloatValue:&v226 forProperty:4120])
    {
      v37 = v226;
      *(archive + 6) |= 0x100000u;
      *(archive + 83) = v37;
    }
  }

  if ([mapCopy containsProperty:4121])
  {
    [mapCopy floatValueForProperty:4121];
    v226 = v38;
    if ([v9 validateFloatValue:&v226 forProperty:4121])
    {
      v39 = v226;
      *(archive + 6) |= 0x200000u;
      *(archive + 84) = v39;
    }
  }

  if ([mapCopy containsProperty:4122])
  {
    [mapCopy floatValueForProperty:4122];
    v226 = v40;
    if ([v9 validateFloatValue:&v226 forProperty:4122])
    {
      v41 = v226;
      *(archive + 6) |= 0x400000u;
      *(archive + 85) = v41;
    }
  }

  if ([mapCopy containsProperty:4123])
  {
    [mapCopy floatValueForProperty:4123];
    v226 = v42;
    if ([v9 validateFloatValue:&v226 forProperty:4123])
    {
      v43 = v226;
      *(archive + 6) |= 0x800000u;
      *(archive + 86) = v43;
    }
  }

  if ([mapCopy containsProperty:4124])
  {
    [mapCopy floatValueForProperty:4124];
    v226 = v44;
    if ([v9 validateFloatValue:&v226 forProperty:4124])
    {
      v45 = v226;
      *(archive + 6) |= 0x1000000u;
      *(archive + 87) = v45;
    }
  }

  if ([mapCopy containsProperty:4146])
  {
    [mapCopy floatValueForProperty:4146];
    v226 = v46;
    if ([v9 validateFloatValue:&v226 forProperty:4146])
    {
      v47 = v226;
      *(archive + 4) |= 0x2000u;
      *(archive + 18) = v47;
    }
  }

  if ([mapCopy containsProperty:4147])
  {
    [mapCopy floatValueForProperty:4147];
    v226 = v48;
    if ([v9 validateFloatValue:&v226 forProperty:4147])
    {
      v49 = v226;
      *(archive + 6) |= 0x2000000u;
      *(archive + 88) = v49;
    }
  }

  if ([mapCopy containsProperty:4148])
  {
    [mapCopy floatValueForProperty:4148];
    v226 = v50;
    if ([v9 validateFloatValue:&v226 forProperty:4148])
    {
      v51 = v226;
      *(archive + 4) |= 0x4000u;
      *(archive + 19) = v51;
    }
  }

  if ([mapCopy containsProperty:4149])
  {
    [mapCopy floatValueForProperty:4149];
    v226 = v52;
    if ([v9 validateFloatValue:&v226 forProperty:4149])
    {
      v53 = v226;
      *(archive + 4) |= 0x8000u;
      *(archive + 20) = v53;
    }
  }

  if ([mapCopy containsProperty:4150])
  {
    [mapCopy floatValueForProperty:4150];
    v226 = v54;
    if ([v9 validateFloatValue:&v226 forProperty:4150])
    {
      v55 = v226;
      *(archive + 6) |= 0x10000000u;
      *(archive + 91) = v55;
    }
  }

  if ([mapCopy containsProperty:4151])
  {
    [mapCopy floatValueForProperty:4151];
    v226 = v56;
    if ([v9 validateFloatValue:&v226 forProperty:4151])
    {
      v57 = v226;
      *(archive + 6) |= 0x20000000u;
      *(archive + 92) = v57;
    }
  }

  if ([mapCopy containsProperty:4152])
  {
    [mapCopy floatValueForProperty:4152];
    v226 = v58;
    if ([v9 validateFloatValue:&v226 forProperty:4152])
    {
      v59 = v226;
      *(archive + 6) |= 0x40000000u;
      *(archive + 93) = v59;
    }
  }

  if ([mapCopy containsProperty:4153])
  {
    [mapCopy floatValueForProperty:4153];
    v226 = v60;
    if ([v9 validateFloatValue:&v226 forProperty:4153])
    {
      v61 = v226;
      *(archive + 6) |= 0x80000000;
      *(archive + 94) = v61;
    }
  }

  if ([mapCopy containsProperty:4156])
  {
    [mapCopy floatValueForProperty:4156];
    v226 = v62;
    if ([v9 validateFloatValue:&v226 forProperty:4156])
    {
      v63 = v226;
      *(archive + 4) |= 0x10000u;
      *(archive + 21) = v63;
    }
  }

  if ([mapCopy containsProperty:4177])
  {
    LODWORD(v226) = [mapCopy intValueForProperty:4177];
    if ([v9 validateIntValue:&v226 forProperty:4177])
    {
      v64 = SLODWORD(v226);
      *(archive + 4) |= 0x20000u;
      *(archive + 22) = v64;
    }
  }

  if ([mapCopy containsProperty:4176])
  {
    [mapCopy floatValueForProperty:4176];
    v226 = v65;
    if ([v9 validateFloatValue:&v226 forProperty:4176])
    {
      v66 = v226;
      *(archive + 4) |= 0x40000u;
      *(archive + 23) = v66;
    }
  }

  if ([mapCopy containsProperty:4178])
  {
    LODWORD(v226) = [mapCopy intValueForProperty:4178];
    if ([v9 validateIntValueAsBool:&v226 forProperty:4178])
    {
      v67 = LODWORD(v226) != 0;
      *(archive + 5) |= 0x1000u;
      *(archive + 388) = v67;
    }
  }

  if ([mapCopy containsProperty:4103])
  {
    v68 = [mapCopy objectForProperty:4103];
    v225 = v68;
    v69 = [v9 validateObjectValue:&v225 withClass:objc_opt_class() forProperty:4103];
    v70 = v225;

    if (v69)
    {
      *(archive + 4) |= 4u;
      [v70 tsp_saveToProtobufString:google::protobuf::internal::ArenaStringPtr::Mutable()];
    }
  }

  if ([mapCopy containsProperty:4104])
  {
    v71 = [mapCopy objectForProperty:4104];
    v224 = v71;
    v72 = [v9 validateObjectValue:&v224 withClass:objc_opt_class() forProperty:4104];
    v73 = v224;

    if (v72)
    {
      *(archive + 4) |= 8u;
      [v73 tsp_saveToProtobufString:google::protobuf::internal::ArenaStringPtr::Mutable()];
    }
  }

  if ([mapCopy containsProperty:4105])
  {
    v74 = [mapCopy objectForProperty:4105];
    v223 = v74;
    v75 = [v9 validateObjectValue:&v223 withClass:objc_opt_class() forProperty:4105];
    v76 = v223;

    if (v75)
    {
      *(archive + 4) |= 0x10u;
      [v76 tsp_saveToProtobufString:google::protobuf::internal::ArenaStringPtr::Mutable()];
    }
  }

  if ([mapCopy containsProperty:4106])
  {
    v77 = [mapCopy objectForProperty:4106];
    v222 = v77;
    v78 = [v9 validateObjectValue:&v222 withClass:objc_opt_class() forProperty:4106];
    v79 = v222;

    if (v78)
    {
      *(archive + 4) |= 0x20u;
      [v79 tsp_saveToProtobufString:google::protobuf::internal::ArenaStringPtr::Mutable()];
    }
  }

  if ([mapCopy containsProperty:{4113, v222}])
  {
    [mapCopy floatValueForProperty:4113];
    v226 = v80;
    if ([v9 validateFloatValue:&v226 forProperty:4113])
    {
      v81 = v226;
      *(archive + 4) |= 0x80000u;
      *(archive + 24) = v81;
    }
  }

  if ([mapCopy containsProperty:4114])
  {
    [mapCopy floatValueForProperty:4114];
    v226 = v82;
    if ([v9 validateFloatValue:&v226 forProperty:4114])
    {
      v83 = v226;
      *(archive + 4) |= 0x100000u;
      *(archive + 25) = v83;
    }
  }

  if ([mapCopy containsProperty:4115])
  {
    [mapCopy floatValueForProperty:4115];
    v226 = v84;
    if ([v9 validateFloatValue:&v226 forProperty:4115])
    {
      v85 = v226;
      *(archive + 4) |= 0x200000u;
      *(archive + 26) = v85;
    }
  }

  if ([mapCopy containsProperty:4116])
  {
    [mapCopy floatValueForProperty:4116];
    v226 = v86;
    if ([v9 validateFloatValue:&v226 forProperty:4116])
    {
      v87 = v226;
      *(archive + 4) |= 0x400000u;
      *(archive + 27) = v87;
    }
  }

  if ([mapCopy containsProperty:4117])
  {
    [mapCopy floatValueForProperty:4117];
    v226 = v88;
    if ([v9 validateFloatValue:&v226 forProperty:4117])
    {
      v89 = v226;
      *(archive + 4) |= 0x800000u;
      *(archive + 28) = v89;
    }
  }

  if ([mapCopy containsProperty:4125])
  {
    [mapCopy floatValueForProperty:4125];
    v226 = v90;
    if ([v9 validateFloatValue:&v226 forProperty:4125])
    {
      v91 = v226;
      *(archive + 4) |= 0x1000000u;
      *(archive + 29) = v91;
    }
  }

  if ([mapCopy containsProperty:4126])
  {
    [mapCopy floatValueForProperty:4126];
    v226 = v92;
    if ([v9 validateFloatValue:&v226 forProperty:4126])
    {
      v93 = v226;
      *(archive + 4) |= 0x2000000u;
      *(archive + 30) = v93;
    }
  }

  if ([mapCopy containsProperty:4127])
  {
    [mapCopy floatValueForProperty:4127];
    v226 = v94;
    if ([v9 validateFloatValue:&v226 forProperty:4127])
    {
      v95 = v226;
      *(archive + 4) |= 0x4000000u;
      *(archive + 31) = v95;
    }
  }

  if ([mapCopy containsProperty:4128])
  {
    [mapCopy floatValueForProperty:4128];
    v226 = v96;
    if ([v9 validateFloatValue:&v226 forProperty:4128])
    {
      v97 = v226;
      *(archive + 4) |= 0x8000000u;
      *(archive + 32) = v97;
    }
  }

  if ([mapCopy containsProperty:4129])
  {
    [mapCopy floatValueForProperty:4129];
    v226 = v98;
    if ([v9 validateFloatValue:&v226 forProperty:4129])
    {
      v99 = v226;
      *(archive + 4) |= 0x10000000u;
      *(archive + 33) = v99;
    }
  }

  if ([mapCopy containsProperty:4130])
  {
    [mapCopy floatValueForProperty:4130];
    v226 = v100;
    if ([v9 validateFloatValue:&v226 forProperty:4130])
    {
      v101 = v226;
      *(archive + 4) |= 0x20000000u;
      *(archive + 34) = v101;
    }
  }

  if ([mapCopy containsProperty:4131])
  {
    [mapCopy floatValueForProperty:4131];
    v226 = v102;
    if ([v9 validateFloatValue:&v226 forProperty:4131])
    {
      v103 = v226;
      *(archive + 4) |= 0x40000000u;
      *(archive + 35) = v103;
    }
  }

  if ([mapCopy containsProperty:4132])
  {
    [mapCopy floatValueForProperty:4132];
    v226 = v104;
    if ([v9 validateFloatValue:&v226 forProperty:4132])
    {
      v105 = v226;
      *(archive + 4) |= 0x80000000;
      *(archive + 36) = v105;
    }
  }

  if ([mapCopy containsProperty:4133])
  {
    [mapCopy floatValueForProperty:4133];
    v226 = v106;
    if ([v9 validateFloatValue:&v226 forProperty:4133])
    {
      v107 = v226;
      *(archive + 5) |= 1u;
      *(archive + 37) = v107;
    }
  }

  if ([mapCopy containsProperty:4134])
  {
    [mapCopy floatValueForProperty:4134];
    v226 = v108;
    if ([v9 validateFloatValue:&v226 forProperty:4134])
    {
      v109 = v226;
      *(archive + 5) |= 2u;
      *(archive + 38) = v109;
    }
  }

  if ([mapCopy containsProperty:4135])
  {
    [mapCopy floatValueForProperty:4135];
    v226 = v110;
    if ([v9 validateFloatValue:&v226 forProperty:4135])
    {
      v111 = v226;
      *(archive + 5) |= 4u;
      *(archive + 39) = v111;
    }
  }

  if ([mapCopy containsProperty:4136])
  {
    [mapCopy floatValueForProperty:4136];
    v226 = v112;
    if ([v9 validateFloatValue:&v226 forProperty:4136])
    {
      v113 = v226;
      *(archive + 5) |= 8u;
      *(archive + 40) = v113;
    }
  }

  if ([mapCopy containsProperty:4137])
  {
    [mapCopy floatValueForProperty:4137];
    v226 = v114;
    if ([v9 validateFloatValue:&v226 forProperty:4137])
    {
      v115 = v226;
      *(archive + 5) |= 0x10u;
      *(archive + 41) = v115;
    }
  }

  if ([mapCopy containsProperty:4138])
  {
    [mapCopy floatValueForProperty:4138];
    v226 = v116;
    if ([v9 validateFloatValue:&v226 forProperty:4138])
    {
      v117 = v226;
      *(archive + 5) |= 0x20u;
      *(archive + 42) = v117;
    }
  }

  if ([mapCopy containsProperty:4139])
  {
    [mapCopy floatValueForProperty:4139];
    v226 = v118;
    if ([v9 validateFloatValue:&v226 forProperty:4139])
    {
      v119 = v226;
      *(archive + 5) |= 0x40u;
      *(archive + 43) = v119;
    }
  }

  if ([mapCopy containsProperty:4140])
  {
    [mapCopy floatValueForProperty:4140];
    v226 = v120;
    if ([v9 validateFloatValue:&v226 forProperty:4140])
    {
      v121 = v226;
      *(archive + 5) |= 0x80u;
      *(archive + 44) = v121;
    }
  }

  if ([mapCopy containsProperty:4141])
  {
    [mapCopy floatValueForProperty:4141];
    v226 = v122;
    if ([v9 validateFloatValue:&v226 forProperty:4141])
    {
      v123 = v226;
      *(archive + 5) |= 0x100u;
      *(archive + 45) = v123;
    }
  }

  if ([mapCopy containsProperty:4142])
  {
    [mapCopy floatValueForProperty:4142];
    v226 = v124;
    if ([v9 validateFloatValue:&v226 forProperty:4142])
    {
      v125 = v226;
      *(archive + 5) |= 0x200u;
      *(archive + 46) = v125;
    }
  }

  if ([mapCopy containsProperty:4143])
  {
    [mapCopy floatValueForProperty:4143];
    v226 = v126;
    if ([v9 validateFloatValue:&v226 forProperty:4143])
    {
      v127 = v226;
      *(archive + 5) |= 0x400u;
      *(archive + 47) = v127;
    }
  }

  if ([mapCopy containsProperty:4144])
  {
    [mapCopy floatValueForProperty:4144];
    v226 = v128;
    if ([v9 validateFloatValue:&v226 forProperty:4144])
    {
      v129 = v226;
      *(archive + 5) |= 0x10000u;
      *(archive + 49) = v129;
    }
  }

  if ([mapCopy containsProperty:4145])
  {
    [mapCopy floatValueForProperty:4145];
    v226 = v130;
    if ([v9 validateFloatValue:&v226 forProperty:4145])
    {
      v131 = v226;
      *(archive + 5) |= 0x20000u;
      *(archive + 50) = v131;
    }
  }

  if ([mapCopy containsProperty:4154])
  {
    [mapCopy floatValueForProperty:4154];
    v226 = v132;
    if ([v9 validateFloatValue:&v226 forProperty:4154])
    {
      v133 = v226;
      *(archive + 5) |= 0x40000u;
      *(archive + 51) = v133;
    }
  }

  if ([mapCopy containsProperty:4155])
  {
    [mapCopy floatValueForProperty:4155];
    v226 = v134;
    if ([v9 validateFloatValue:&v226 forProperty:4155])
    {
      v135 = v226;
      *(archive + 5) |= 0x80000u;
      *(archive + 52) = v135;
    }
  }

  if ([mapCopy containsProperty:4157])
  {
    [mapCopy floatValueForProperty:4157];
    v226 = v136;
    if ([v9 validateFloatValue:&v226 forProperty:4157])
    {
      v137 = v226;
      *(archive + 5) |= 0x100000u;
      *(archive + 53) = v137;
    }
  }

  if ([mapCopy containsProperty:4158])
  {
    [mapCopy floatValueForProperty:4158];
    v226 = v138;
    if ([v9 validateFloatValue:&v226 forProperty:4158])
    {
      v139 = v226;
      *(archive + 5) |= 0x200000u;
      *(archive + 54) = v139;
    }
  }

  if ([mapCopy containsProperty:4159])
  {
    [mapCopy floatValueForProperty:4159];
    v226 = v140;
    if ([v9 validateFloatValue:&v226 forProperty:4159])
    {
      v141 = v226;
      *(archive + 5) |= 0x400000u;
      *(archive + 55) = v141;
    }
  }

  if ([mapCopy containsProperty:4160])
  {
    [mapCopy floatValueForProperty:4160];
    v226 = v142;
    if ([v9 validateFloatValue:&v226 forProperty:4160])
    {
      v143 = v226;
      *(archive + 5) |= 0x800000u;
      *(archive + 56) = v143;
    }
  }

  if ([mapCopy containsProperty:4161])
  {
    [mapCopy floatValueForProperty:4161];
    v226 = v144;
    if ([v9 validateFloatValue:&v226 forProperty:4161])
    {
      v145 = v226;
      *(archive + 5) |= 0x1000000u;
      *(archive + 57) = v145;
    }
  }

  if ([mapCopy containsProperty:4162])
  {
    [mapCopy floatValueForProperty:4162];
    v226 = v146;
    if ([v9 validateFloatValue:&v226 forProperty:4162])
    {
      v147 = v226;
      *(archive + 6) |= 0x4000000u;
      *(archive + 89) = v147;
    }
  }

  if ([mapCopy containsProperty:4163])
  {
    [mapCopy floatValueForProperty:4163];
    v226 = v148;
    if ([v9 validateFloatValue:&v226 forProperty:4163])
    {
      v149 = v226;
      *(archive + 5) |= 0x2000000u;
      *(archive + 58) = v149;
    }
  }

  if ([mapCopy containsProperty:4164])
  {
    [mapCopy floatValueForProperty:4164];
    v226 = v150;
    if ([v9 validateFloatValue:&v226 forProperty:4164])
    {
      v151 = v226;
      *(archive + 5) |= 0x4000000u;
      *(archive + 59) = v151;
    }
  }

  if ([mapCopy containsProperty:4165])
  {
    [mapCopy floatValueForProperty:4165];
    v226 = v152;
    if ([v9 validateFloatValue:&v226 forProperty:4165])
    {
      v153 = v226;
      *(archive + 5) |= 0x8000000u;
      *(archive + 60) = v153;
    }
  }

  if ([mapCopy containsProperty:4166])
  {
    [mapCopy floatValueForProperty:4166];
    v226 = v154;
    if ([v9 validateFloatValue:&v226 forProperty:4166])
    {
      v155 = v226;
      *(archive + 5) |= 0x10000000u;
      *(archive + 61) = v155;
    }
  }

  if ([mapCopy containsProperty:4167])
  {
    [mapCopy floatValueForProperty:4167];
    v226 = v156;
    if ([v9 validateFloatValue:&v226 forProperty:4167])
    {
      v157 = v226;
      *(archive + 5) |= 0x20000000u;
      *(archive + 62) = v157;
    }
  }

  if ([mapCopy containsProperty:4168])
  {
    [mapCopy floatValueForProperty:4168];
    v226 = v158;
    if ([v9 validateFloatValue:&v226 forProperty:4168])
    {
      v159 = v226;
      *(archive + 5) |= 0x40000000u;
      *(archive + 63) = v159;
    }
  }

  if ([mapCopy containsProperty:4169])
  {
    [mapCopy floatValueForProperty:4169];
    v226 = v160;
    if ([v9 validateFloatValue:&v226 forProperty:4169])
    {
      v161 = v226;
      *(archive + 5) |= 0x80000000;
      *(archive + 64) = v161;
    }
  }

  if ([mapCopy containsProperty:4170])
  {
    [mapCopy floatValueForProperty:4170];
    v226 = v162;
    if ([v9 validateFloatValue:&v226 forProperty:4170])
    {
      v163 = v226;
      *(archive + 6) |= 1u;
      *(archive + 65) = v163;
    }
  }

  if ([mapCopy containsProperty:4171])
  {
    [mapCopy floatValueForProperty:4171];
    v226 = v164;
    if ([v9 validateFloatValue:&v226 forProperty:4171])
    {
      v165 = v226;
      *(archive + 6) |= 2u;
      *(archive + 66) = v165;
    }
  }

  if ([mapCopy containsProperty:4172])
  {
    [mapCopy floatValueForProperty:4172];
    v226 = v166;
    if ([v9 validateFloatValue:&v226 forProperty:4172])
    {
      v167 = v226;
      *(archive + 6) |= 4u;
      *(archive + 67) = v167;
    }
  }

  if ([mapCopy containsProperty:4173])
  {
    [mapCopy floatValueForProperty:4173];
    v226 = v168;
    if ([v9 validateFloatValue:&v226 forProperty:4173])
    {
      v169 = v226;
      *(archive + 6) |= 8u;
      *(archive + 68) = v169;
    }
  }

  if ([mapCopy containsProperty:4174])
  {
    [mapCopy floatValueForProperty:4174];
    v226 = v170;
    if ([v9 validateFloatValue:&v226 forProperty:4174])
    {
      v171 = v226;
      *(archive + 6) |= 0x10u;
      *(archive + 69) = v171;
    }
  }

  if ([mapCopy containsProperty:4175])
  {
    [mapCopy floatValueForProperty:4175];
    v226 = v172;
    if ([v9 validateFloatValue:&v226 forProperty:4175])
    {
      v173 = v226;
      *(archive + 6) |= 0x20u;
      *(archive + 70) = v173;
    }
  }

  if ([mapCopy containsProperty:4179])
  {
    LODWORD(v226) = [mapCopy intValueForProperty:4179];
    if ([v9 validateIntValueAsBool:&v226 forProperty:4179])
    {
      v174 = LODWORD(v226) != 0;
      *(archive + 5) |= 0x2000u;
      *(archive + 389) = v174;
    }
  }

  if ([mapCopy containsProperty:4180])
  {
    LODWORD(v226) = [mapCopy intValueForProperty:4180];
    if ([v9 validateIntValueAsBool:&v226 forProperty:4180])
    {
      v175 = LODWORD(v226) != 0;
      *(archive + 5) |= 0x4000u;
      *(archive + 390) = v175;
    }
  }

  if ([mapCopy containsProperty:4181])
  {
    LODWORD(v226) = [mapCopy intValueForProperty:4181];
    if ([v9 validateIntValueAsBool:&v226 forProperty:4181])
    {
      v176 = LODWORD(v226) != 0;
      *(archive + 5) |= 0x8000u;
      *(archive + 391) = v176;
    }
  }

  if ([mapCopy containsProperty:4182])
  {
    LODWORD(v226) = [mapCopy intValueForProperty:4182];
    if ([v9 validateIntValue:&v226 forProperty:4182])
    {
      v177 = v226;
      *(archive + 6) |= 0x40u;
      *(archive + 142) = v177;
    }
  }

  if ([mapCopy containsProperty:4183])
  {
    LODWORD(v226) = [mapCopy intValueForProperty:4183];
    if ([v9 validateIntValueAsBool:&v226 forProperty:4183])
    {
      v178 = LODWORD(v226) != 0;
      *(archive + 6) |= 0x80u;
      *(archive + 572) = v178;
    }
  }

  if ([mapCopy containsProperty:4184])
  {
    LODWORD(v226) = [mapCopy intValueForProperty:4184];
    if ([v9 validateIntValueAsBool:&v226 forProperty:4184])
    {
      v179 = LODWORD(v226) != 0;
      *(archive + 6) |= 0x100u;
      *(archive + 573) = v179;
    }
  }

  if ([mapCopy containsProperty:4185])
  {
    [mapCopy floatValueForProperty:4185];
    v226 = v180;
    if ([v9 validateFloatValue:&v226 forProperty:4185])
    {
      v181 = v226;
      *(archive + 6) |= 0x200u;
      *(archive + 72) = v181;
    }
  }

  if ([mapCopy containsProperty:4186])
  {
    [mapCopy floatValueForProperty:4186];
    v226 = v182;
    if ([v9 validateFloatValue:&v226 forProperty:4186])
    {
      v183 = v226;
      *(archive + 6) |= 0x400u;
      *(archive + 73) = v183;
    }
  }

  if ([mapCopy containsProperty:4187])
  {
    [mapCopy floatValueForProperty:4187];
    v226 = v184;
    if ([v9 validateFloatValue:&v226 forProperty:4187])
    {
      v185 = v226;
      *(archive + 6) |= 0x800u;
      *(archive + 74) = v185;
    }
  }

  if ([mapCopy containsProperty:4188])
  {
    [mapCopy floatValueForProperty:4188];
    v226 = v186;
    if ([v9 validateFloatValue:&v226 forProperty:4188])
    {
      v187 = v226;
      *(archive + 6) |= 0x1000u;
      *(archive + 75) = v187;
    }
  }

  if ([mapCopy containsProperty:4189])
  {
    [mapCopy floatValueForProperty:4189];
    v226 = v188;
    if ([v9 validateFloatValue:&v226 forProperty:4189])
    {
      v189 = v226;
      *(archive + 6) |= 0x2000u;
      *(archive + 76) = v189;
    }
  }

  if ([mapCopy containsProperty:4190])
  {
    [mapCopy floatValueForProperty:4190];
    v226 = v190;
    if ([v9 validateFloatValue:&v226 forProperty:4190])
    {
      v191 = v226;
      *(archive + 6) |= 0x4000u;
      *(archive + 77) = v191;
    }
  }

  if ([mapCopy containsProperty:4192])
  {
    [mapCopy floatValueForProperty:4192];
    v226 = v192;
    if ([v9 validateFloatValue:&v226 forProperty:4192])
    {
      v193 = v226;
      *(archive + 6) |= 0x8000u;
      *(archive + 78) = v193;
    }
  }

  if ([mapCopy containsProperty:4193])
  {
    [mapCopy floatValueForProperty:4193];
    v226 = v194;
    if ([v9 validateFloatValue:&v226 forProperty:4193])
    {
      v195 = v226;
      *(archive + 6) |= 0x10000u;
      *(archive + 79) = v195;
    }
  }

  if ([mapCopy containsProperty:4194])
  {
    [mapCopy floatValueForProperty:4194];
    v226 = v196;
    if ([v9 validateFloatValue:&v226 forProperty:4194])
    {
      v197 = v226;
      *(archive + 6) |= 0x20000u;
      *(archive + 80) = v197;
    }
  }

  if ([mapCopy containsProperty:4195])
  {
    [mapCopy floatValueForProperty:4195];
    v226 = v198;
    if ([v9 validateFloatValue:&v226 forProperty:4195])
    {
      v199 = v226;
      *(archive + 6) |= 0x8000000u;
      *(archive + 90) = v199;
    }
  }

  if ([mapCopy containsProperty:4196])
  {
    [mapCopy floatValueForProperty:4196];
    v226 = v200;
    if ([v9 validateFloatValue:&v226 forProperty:4196])
    {
      v201 = v226;
      *(archive + 6) |= 0x40000u;
      *(archive + 81) = v201;
    }
  }

  if ([mapCopy containsProperty:4197])
  {
    LODWORD(v226) = [mapCopy intValueForProperty:4197];
    if ([v9 validateIntValue:&v226 forProperty:4197])
    {
      v202 = v226;
      *(archive + 7) |= 0x20u;
      *(archive + 200) = v202;
    }
  }

  if ([mapCopy containsProperty:4198])
  {
    [mapCopy floatValueForProperty:4198];
    v226 = v203;
    if ([v9 validateFloatValue:&v226 forProperty:4198])
    {
      v204 = v226;
      *(archive + 7) |= 1u;
      *(archive + 95) = v204;
    }
  }

  if ([mapCopy containsProperty:4199])
  {
    [mapCopy floatValueForProperty:4199];
    v226 = v205;
    if ([v9 validateFloatValue:&v226 forProperty:4199])
    {
      v206 = v226;
      *(archive + 7) |= 2u;
      *(archive + 96) = v206;
    }
  }

  if ([mapCopy containsProperty:4200])
  {
    [mapCopy floatValueForProperty:4200];
    v226 = v207;
    if ([v9 validateFloatValue:&v226 forProperty:4200])
    {
      v208 = v226;
      *(archive + 7) |= 4u;
      *(archive + 97) = v208;
    }
  }

  if ([mapCopy containsProperty:4201])
  {
    [mapCopy floatValueForProperty:4201];
    v226 = v209;
    if ([v9 validateFloatValue:&v226 forProperty:4201])
    {
      v210 = v226;
      *(archive + 7) |= 8u;
      *(archive + 98) = v210;
    }
  }

  if ([mapCopy containsProperty:4202])
  {
    [mapCopy floatValueForProperty:4202];
    v226 = v211;
    if ([v9 validateFloatValue:&v226 forProperty:4202])
    {
      v212 = v226;
      *(archive + 7) |= 0x10u;
      *(archive + 99) = v212;
    }
  }

  if ([mapCopy containsProperty:4203])
  {
    [mapCopy floatValueForProperty:4203];
    v226 = v213;
    if ([v9 validateFloatValue:&v226 forProperty:4203])
    {
      v214 = v226;
      *(archive + 7) |= 0x80u;
      *(archive + 101) = v214;
    }
  }

  if ([mapCopy containsProperty:4204])
  {
    [mapCopy floatValueForProperty:4204];
    v226 = v215;
    if ([v9 validateFloatValue:&v226 forProperty:4204])
    {
      v216 = v226;
      *(archive + 7) |= 0x100u;
      *(archive + 102) = v216;
    }
  }

  if ([mapCopy containsProperty:4205])
  {
    [mapCopy floatValueForProperty:4205];
    v226 = v217;
    if ([v9 validateFloatValue:&v226 forProperty:4205])
    {
      v218 = v226;
      *(archive + 7) |= 0x200u;
      *(archive + 103) = v218;
    }
  }

  if ([mapCopy containsProperty:4206])
  {
    [mapCopy floatValueForProperty:4206];
    v226 = v219;
    if ([v9 validateFloatValue:&v226 forProperty:4206])
    {
      v220 = v226;
      *(archive + 7) |= 0x400u;
      *(archive + 104) = v220;
    }
  }

  if ([mapCopy containsProperty:4207])
  {
    LODWORD(v226) = [mapCopy intValueForProperty:4207];
    if ([v9 validateIntValue:&v226 forProperty:4207])
    {
      v221 = v226;
      *(archive + 7) |= 0x40u;
      *(archive + 201) = v221;
    }
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [unarchiverCopy messageWithDescriptor:off_2812EA908[118]];

  [(KNMotionBackgroundStyle *)self loadFromArchive:v4 unarchiver:unarchiverCopy];
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

  v17.receiver = self;
  v17.super_class = KNMotionBackgroundStyle;
  [(KNMotionBackgroundStyle *)&v17 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v8 = *(archive + 12);
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D80AB8]) initWithCapacity:v8];
    if (*(archive + 4))
    {
      v10 = *(archive + 4);
    }

    else
    {
      v10 = &unk_2812EBDF0;
    }

    [(KNMotionBackgroundStyle *)self loadMotionBackgroundStylePropertiesIntoPropertyMap:v9 fromArchive:v10 unarchiver:unarchiverCopy];
    v11 = *MEMORY[0x277D80AF0];
    v12 = *(&self->super.super.super.isa + v11);
    *(&self->super.super.super.isa + v11) = v9;
  }

  if ((*(archive + 16) & 4) != 0)
  {
    v13 = [unarchiverCopy readDataReferenceMessage:*(archive + 5)];
    posterFrameData = self->_posterFrameData;
    self->_posterFrameData = v13;
  }

  name = [(KNMotionBackgroundStyle *)self name];
  v16 = [name isEqualToString:&stru_2884D8E20];

  if (v16)
  {
    [(KNMotionBackgroundStyle *)self setName:0];
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [archiverCopy messageWithNewFunction:sub_275D6D55C descriptor:off_2812EA908[118]];

  [(KNMotionBackgroundStyle *)self saveToArchive:v4 archiver:archiverCopy];
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
  v19.super_class = KNMotionBackgroundStyle;
  [(KNMotionBackgroundStyle *)&v19 saveToArchive:v7 archiver:archiverCopy];
  overrideCount = [(KNMotionBackgroundStyle *)self overrideCount];
  if (overrideCount)
  {
    if (overrideCount >> 31)
    {
      v16 = MEMORY[0x277D81150];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNMotionBackgroundStyle(PersistenceAdditions) saveToArchive:archiver:]"];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNMotionBackgroundStyle.mm"];
      [v16 handleFailureInFunction:v17 file:v18 lineNumber:617 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

      [MEMORY[0x277D81150] logBacktraceThrottled];
      LODWORD(overrideCount) = 0x7FFFFFFF;
    }

    v10 = *(archive + 4);
    *(archive + 12) = overrideCount;
    *(archive + 4) = v10 | 0xA;
    v11 = *(archive + 4);
    if (!v11)
    {
      v12 = *(archive + 1);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = sub_275E219FC(v12);
      *(archive + 4) = v11;
    }

    [(KNMotionBackgroundStyle *)self saveMotionBackgroundStylePropertyMap:*(&self->super.super.super.isa + *MEMORY[0x277D80AF0]) toArchive:v11 archiver:archiverCopy];
  }

  posterFrameData = self->_posterFrameData;
  if (posterFrameData)
  {
    *(archive + 4) |= 4u;
    v14 = *(archive + 5);
    if (!v14)
    {
      v15 = *(archive + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277C8EFD0](v15);
      *(archive + 5) = v14;
    }

    [archiverCopy setDataReference:posterFrameData message:v14];
  }
}

@end
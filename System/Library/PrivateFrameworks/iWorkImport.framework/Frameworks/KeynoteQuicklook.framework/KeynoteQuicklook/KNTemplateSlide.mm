@interface KNTemplateSlide
+ (BOOL)hasLocalizedThumbnailText;
+ (id)masterGuideColor;
+ (void)setMasterGuideColor:(id)color;
+ (void)templatesNotEquivalentWithFile:(id)file lineNumber:(int64_t)number reason:(id)reason;
- (BOOL)containsProperty:(int)property;
- (BOOL)hasBug16580905;
- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison;
- (BOOL)isObjectVisible;
- (CGRect)objectRect;
- (KNTemplateSlide)initWithSlideNode:(id)node context:(id)context;
- (NSString)description;
- (id)buildChunks;
- (id)builds;
- (id)childEnumerator;
- (id)defaultTagForDrawable:(id)drawable;
- (id)imagePlaceholders;
- (id)nonPlaceholderObjects;
- (id)objectForProperty:(int)property;
- (id)p_defaultThumbnailTextForPlaceholder:(id)placeholder;
- (id)referencedStyles;
- (id)tagsForNewPlaceholderInfos:(id)infos;
- (id)thumbnailTextForPlaceholder:(id)placeholder;
- (id)unusedPlaceholderTagBasedOnTag:(id)tag;
- (int)intValueForProperty:(int)property;
- (unint64_t)buildChunkCount;
- (unint64_t)buildCount;
- (void)acceptVisitor:(id)visitor;
- (void)addBuild:(id)build;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)flushClassicStylesheetRecord;
- (void)generateObjectPlaceholderIfNecessary;
- (void)insertBuildChunk:(id)chunk afterChunk:(id)afterChunk generateIdentifier:(BOOL)identifier;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)removeBuild:(id)build;
- (void)removeBuildChunk:(id)chunk rollbackGeneratedIdentifier:(BOOL)identifier;
- (void)replaceReferencedStylesUsingBlock:(id)block;
- (void)saveToArchiver:(id)archiver;
- (void)setBodyListStyles:(id)styles;
- (void)setBodyParagraphStyles:(id)styles;
- (void)setName:(id)name;
- (void)setObjectRect:(CGRect)rect;
- (void)setSlideObjectsLayerWithTemplate:(BOOL)template;
- (void)setThumbnailTextForBodyPlaceholder:(id)placeholder;
- (void)setThumbnailTextForTitlePlaceholder:(id)placeholder;
- (void)updatePlaceholderText;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation KNTemplateSlide

+ (BOOL)hasLocalizedThumbnailText
{
  currentLocale = [MEMORY[0x277D81228] currentLocale];
  languageCode = [currentLocale languageCode];
  v4 = [languageCode isEqualToString:@"en"];

  return v4 ^ 1;
}

- (void)setName:(id)name
{
  nameCopy = name;
  if (self->_name != nameCopy)
  {
    v6 = nameCopy;
    [(KNTemplateSlide *)self willModify];
    v5 = [(NSString *)v6 copy];

    objc_storeStrong(&self->_name, v5);
    nameCopy = v5;
  }
}

- (CGRect)objectRect
{
  x = self->_objectRect.origin.x;
  y = self->_objectRect.origin.y;
  width = self->_objectRect.size.width;
  height = self->_objectRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setObjectRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_objectRect = &self->_objectRect;
  if (!CGRectEqualToRect(self->_objectRect, rect))
  {
    [(KNTemplateSlide *)self willModify];
    p_objectRect->origin.x = x;
    p_objectRect->origin.y = y;
    p_objectRect->size.width = width;
    p_objectRect->size.height = height;
  }
}

- (void)setBodyParagraphStyles:(id)styles
{
  stylesCopy = styles;
  if (self->_bodyParagraphStyles != stylesCopy)
  {
    v6 = stylesCopy;
    [(KNTemplateSlide *)self willModify];
    v5 = [(NSArray *)v6 copy];

    objc_storeStrong(&self->_bodyParagraphStyles, v5);
    stylesCopy = v5;
  }
}

- (void)setBodyListStyles:(id)styles
{
  stylesCopy = styles;
  if (self->_bodyListStyles != stylesCopy)
  {
    v6 = stylesCopy;
    [(KNTemplateSlide *)self willModify];
    v5 = [(NSArray *)v6 copy];

    objc_storeStrong(&self->_bodyListStyles, v5);
    stylesCopy = v5;
  }
}

- (void)setThumbnailTextForTitlePlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  if (self->_thumbnailTextForTitlePlaceholder != placeholderCopy)
  {
    v6 = placeholderCopy;
    [(KNTemplateSlide *)self willModify];
    v5 = [(NSString *)v6 copy];

    objc_storeStrong(&self->_thumbnailTextForTitlePlaceholder, v5);
    placeholderCopy = v5;
  }
}

- (void)setThumbnailTextForBodyPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  if (self->_thumbnailTextForBodyPlaceholder != placeholderCopy)
  {
    v6 = placeholderCopy;
    [(KNTemplateSlide *)self willModify];
    v5 = [(NSString *)v6 copy];

    objc_storeStrong(&self->_thumbnailTextForBodyPlaceholder, v5);
    placeholderCopy = v5;
  }
}

- (void)setSlideObjectsLayerWithTemplate:(BOOL)template
{
  if (self->_slideObjectsLayerWithTemplate != template)
  {
    [(KNTemplateSlide *)self willModify];
    self->_slideObjectsLayerWithTemplate = template;
  }
}

- (KNTemplateSlide)initWithSlideNode:(id)node context:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = KNTemplateSlide;
  v7 = [(KNAbstractSlide *)&v13 initWithSlideNode:node context:contextCopy];
  v8 = v7;
  if (v7)
  {
    name = v7->_name;
    v7->_name = @"Template Slide";

    v10 = [[KNClassicStylesheetRecord alloc] initWithContext:contextCopy];
    classicStylesheetRecord = v8->_classicStylesheetRecord;
    v8->_classicStylesheetRecord = v10;

    v8->_hasBug16580905 = 0;
    v8->_calculatedHasBug16580905 = 0;
  }

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(KNTemplateSlide *)self name];
  v7 = [v3 stringWithFormat:@"<%@ %p: %@>", v5, self, name];

  return v7;
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  v39 = *MEMORY[0x277D85DE8];
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  v36.receiver = self;
  v36.super_class = KNTemplateSlide;
  [(KNAbstractSlide *)&v36 adoptStylesheet:stylesheetCopy withMapper:mapperCopy];
  bodyParagraphStyles = [(KNTemplateSlide *)self bodyParagraphStyles];

  if (bodyParagraphStyles)
  {
    v9 = objc_alloc(MEMORY[0x277CBEB18]);
    bodyParagraphStyles2 = [(KNTemplateSlide *)self bodyParagraphStyles];
    v11 = [v9 initWithCapacity:{objc_msgSend(bodyParagraphStyles2, "count")}];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    bodyParagraphStyles3 = [(KNTemplateSlide *)self bodyParagraphStyles];
    v13 = [bodyParagraphStyles3 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        v16 = 0;
        do
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(bodyParagraphStyles3);
          }

          v17 = [mapperCopy mappedStyleForStyle:*(*(&v32 + 1) + 8 * v16)];
          [v11 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [bodyParagraphStyles3 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v14);
    }

    [(KNTemplateSlide *)self setBodyParagraphStyles:v11];
  }

  bodyListStyles = [(KNTemplateSlide *)self bodyListStyles];

  if (bodyListStyles)
  {
    v19 = objc_alloc(MEMORY[0x277CBEB18]);
    bodyListStyles2 = [(KNTemplateSlide *)self bodyListStyles];
    v21 = [v19 initWithCapacity:{objc_msgSend(bodyListStyles2, "count")}];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    bodyListStyles3 = [(KNTemplateSlide *)self bodyListStyles];
    v23 = [bodyListStyles3 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v29;
      do
      {
        v26 = 0;
        do
        {
          if (*v29 != v25)
          {
            objc_enumerationMutation(bodyListStyles3);
          }

          v27 = [mapperCopy mappedStyleForStyle:*(*(&v28 + 1) + 8 * v26)];
          [v21 addObject:v27];

          ++v26;
        }

        while (v24 != v26);
        v24 = [bodyListStyles3 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v24);
    }

    [(KNTemplateSlide *)self setBodyListStyles:v21];
  }

  [(KNClassicStylesheetRecord *)self->_classicStylesheetRecord adoptStylesheet:stylesheetCopy withMapper:mapperCopy];
}

- (id)defaultTagForDrawable:(id)drawable
{
  drawableCopy = drawable;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = @"Media";
    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = @"Text";
    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = @"Live Video";
LABEL_7:
    v6 = sub_275DC204C(isKindOfClass);
    v7 = [v6 localizedStringForKey:v5 value:&stru_2884D8E20 table:@"Keynote"];

    if (v7)
    {
      goto LABEL_9;
    }
  }

  v8 = MEMORY[0x277D81150];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTemplateSlide defaultTagForDrawable:]"];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
  [v8 handleFailureInFunction:v9 file:v10 lineNumber:201 isFatal:0 description:{"No default tag for drawable %{public}@.", drawableCopy}];

  v11 = sub_275DC204C([MEMORY[0x277D81150] logBacktraceThrottled]);
  v7 = [v11 localizedStringForKey:@"Placeholder" value:&stru_2884D8E20 table:@"Keynote"];

LABEL_9:

  return v7;
}

- (id)tagsForNewPlaceholderInfos:(id)infos
{
  v33 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  if (!infosCopy)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTemplateSlide tagsForNewPlaceholderInfos:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:210 isFatal:0 description:{"invalid nil value for '%{public}s'", "drawables"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  array = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = infosCopy;
  v25 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v25)
  {
    v9 = 1;
    v24 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v10;
        v11 = [(KNTemplateSlide *)self defaultTagForDrawable:*(*(&v28 + 1) + 8 * v10)];
        v12 = [obj objectAtIndex:0];
        v13 = [(KNTemplateSlide *)self defaultTagForDrawable:v12];
        v14 = [v13 isEqualToString:v11];

        if ((v14 & 1) == 0)
        {
          v15 = MEMORY[0x277D81150];
          v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTemplateSlide tagsForNewPlaceholderInfos:]"];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
          [v15 handleFailureInFunction:v16 file:v17 lineNumber:219 isFatal:0 description:{"This method expects that all drawables passed in have the same base tag. If you need this method to support multiple types in the set, you will need to implement it."}];

          [MEMORY[0x277D81150] logBacktraceThrottled];
        }

        for (i = v11; -[KNAbstractSlide infoExistsForTag:](self, "infoExistsForTag:", i) || [array indexOfObject:i] != 0x7FFFFFFFFFFFFFFFLL; i = v22)
        {
          v19 = MEMORY[0x277CCABB8];
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
          v21 = [v19 localizedStringFromNumber:v20 numberStyle:1];

          v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v11, v21];

          ++v9;
        }

        [array addObject:i];

        v10 = v27 + 1;
      }

      while (v27 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v25);
  }

  return array;
}

- (id)unusedPlaceholderTagBasedOnTag:(id)tag
{
  tagCopy = tag;
  v5 = [(KNAbstractSlide *)self infoForTag:tagCopy];

  if (v5)
  {
    documentRoot = [(KNTemplateSlide *)self documentRoot];
    documentLocale = [documentRoot documentLocale];
    placeholdersForTags = [(KNAbstractSlide *)self placeholdersForTags];
    allKeys = [placeholdersForTags allKeys];
    v10 = TSUNumberFormatterIncreaseTagFromStringWithSeparator();
  }

  else
  {
    v10 = tagCopy;
  }

  return v10;
}

- (id)p_defaultThumbnailTextForPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  titlePlaceholder = [(KNAbstractSlide *)self titlePlaceholder];

  if (titlePlaceholder == placeholderCopy || ([(KNAbstractSlide *)self bodyPlaceholder], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 != placeholderCopy))
  {
    v8 = sub_275DC204C(v6);
    v9 = [v8 localizedStringForKey:@"Lorem Ipsum Dolor" value:&stru_2884D8E20 table:@"Keynote"];
    goto LABEL_14;
  }

  textStorage = [placeholderCopy textStorage];
  v8 = [textStorage listStyleAtCharIndex:0 effectiveRange:0];

  firstLabelType = [v8 firstLabelType];
  if (!firstLabelType)
  {
    v23 = @"Donec quis nunc";
    goto LABEL_13;
  }

  geometry = [placeholderCopy geometry];
  [geometry size];
  v14 = v13;
  background = [(KNAbstractSlide *)self background];
  geometry2 = [background geometry];
  [geometry2 size];
  v18 = v17 * 0.5;

  style = [placeholderCopy style];
  LODWORD(geometry) = [style containsProperty:148];

  if (!geometry)
  {
    if (v14 > v18)
    {
      goto LABEL_11;
    }

LABEL_12:
    v23 = @"Maecenas aliquam maecenas ligula nostra\nSociis mauris in integer, ipsum purus pede\nEl eu libero cras interdum at eget habitasse\nAliquet sed. Lorem ipsum dolor sit amet";
    goto LABEL_13;
  }

  style2 = [placeholderCopy style];
  v21 = [style2 objectForProperty:148];
  columnCount = [v21 columnCount];

  if (v14 <= v18)
  {
    goto LABEL_12;
  }

  if (columnCount <= 1)
  {
LABEL_11:
    v23 = @"Maecenas aliquam maecenas ligula nostra, accumsan taciti. Sociis mauris in integer\nEl eu libero cras interdum at eget habitasse elementum est, ipsum purus pede\nAliquet sed. Lorem ipsum dolor sit amet, ligula suspendisse nulla pretium, rhoncus";
    goto LABEL_13;
  }

  v23 = @"Maecenas aliquam maecenas ligula nostra\nSociis mauris in integer, ipsum purus pede\nEl eu libero cras interdum at eget habitasse\fAliquet sed. Lorem ipsum dolor sit amet\nMaecenas aliquam maecenas ligula nostra\nSociis mauris in integer, ipsum purus pede";
LABEL_13:
  v24 = sub_275DC204C(firstLabelType);
  v9 = [v24 localizedStringForKey:v23 value:&stru_2884D8E20 table:@"Keynote"];

LABEL_14:

  return v9;
}

- (id)thumbnailTextForPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  if (([objc_opt_class() hasLocalizedThumbnailText] & 1) == 0)
  {
    titlePlaceholder = [(KNAbstractSlide *)self titlePlaceholder];

    if (titlePlaceholder == placeholderCopy)
    {
      v7 = &OBJC_IVAR___KNTemplateSlide__thumbnailTextForTitlePlaceholder;
LABEL_6:
      v8 = *(&self->super.super.super.isa + *v7);
      if (v8)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    bodyPlaceholder = [(KNAbstractSlide *)self bodyPlaceholder];

    if (bodyPlaceholder == placeholderCopy)
    {
      v7 = &OBJC_IVAR___KNTemplateSlide__thumbnailTextForBodyPlaceholder;
      goto LABEL_6;
    }
  }

LABEL_7:
  v8 = [(KNTemplateSlide *)self p_defaultThumbnailTextForPlaceholder:placeholderCopy];
LABEL_8:

  return v8;
}

- (BOOL)isObjectVisible
{
  objectPlaceholder = [(KNAbstractSlide *)self objectPlaceholder];
  if (objectPlaceholder)
  {
    childInfos = [(KNAbstractSlide *)self childInfos];
    objectPlaceholder2 = [(KNAbstractSlide *)self objectPlaceholder];
    v6 = [childInfos containsObject:objectPlaceholder2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)imagePlaceholders
{
  array = [MEMORY[0x277CBEB18] array];
  childInfos = [(KNAbstractSlide *)self childInfos];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_275D60E60;
  v7[3] = &unk_27A697E68;
  v5 = array;
  v8 = v5;
  [childInfos enumerateObjectsUsingBlock:v7];

  return v5;
}

- (id)nonPlaceholderObjects
{
  array = [MEMORY[0x277CBEB18] array];
  childInfos = [(KNAbstractSlide *)self childInfos];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_275D60FAC;
  v8[3] = &unk_27A697E90;
  v5 = array;
  v9 = v5;
  selfCopy = self;
  [childInfos enumerateObjectsUsingBlock:v8];

  v6 = v5;
  return v5;
}

- (void)flushClassicStylesheetRecord
{
  classicStylesheetRecord = self->_classicStylesheetRecord;
  self->_classicStylesheetRecord = 0;
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  v12.receiver = self;
  v12.super_class = KNTemplateSlide;
  rootCopy = root;
  [(KNAbstractSlide *)&v12 wasAddedToDocumentRoot:rootCopy dolcContext:context];
  v7 = [(KNAbstractSlide *)self style:v12.receiver];
  stylesheet = [rootCopy stylesheet];

  stylesheet2 = [v7 stylesheet];
  if (stylesheet2 == stylesheet)
  {
    parent = [v7 parent];
    if (parent)
    {
    }

    else
    {
      styleIdentifier = [v7 styleIdentifier];

      if (styleIdentifier)
      {
        goto LABEL_5;
      }

      stylesheet2 = [stylesheet unusedStyleIdentifierWithPackageString:@"slide" styleDescriptor:@"slidestyle" contentTag:0];
      [stylesheet setIdentifier:stylesheet2 ofStyle:v7];
    }
  }

LABEL_5:
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  v21.receiver = self;
  v21.super_class = KNTemplateSlide;
  [(KNAbstractSlide *)&v21 willBeRemovedFromDocumentRoot:rootCopy];
  style = [(KNAbstractSlide *)self style];
  stylesheet = [style stylesheet];
  stylesheet2 = [rootCopy stylesheet];

  if (stylesheet == stylesheet2)
  {
    v8 = rootCopy;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    show = [v8 show];
    theme = [show theme];
    templateSlides = [theme templateSlides];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_275D61358;
    v14[3] = &unk_27A697EB8;
    v14[4] = self;
    v12 = style;
    v15 = v12;
    v16 = &v17;
    [templateSlides enumerateObjectsUsingBlock:v14];

    if ((v18[3] & 1) == 0)
    {
      stylesheet3 = [v8 stylesheet];
      [stylesheet3 setIdentifier:0 ofStyle:v12];
    }

    _Block_object_dispose(&v17, 8);
  }
}

+ (id)masterGuideColor
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_p_defaultTemplateGuideColor);
}

+ (void)setMasterGuideColor:(id)color
{
  v3 = MEMORY[0x277D81150];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNTemplateSlide setMasterGuideColor:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
  [v3 handleFailureInFunction:v4 file:v5 lineNumber:445 isFatal:0 description:"iOS and QL do not support setting the guide color"];

  v6 = MEMORY[0x277D81150];

  [v6 logBacktraceThrottled];
}

- (void)updatePlaceholderText
{
  v66[5] = *MEMORY[0x277D85DE8];
  documentRoot = [(KNTemplateSlide *)self documentRoot];
  documentLocale = [documentRoot documentLocale];

  titlePlaceholder = [(KNAbstractSlide *)self titlePlaceholder];
  v6 = [(KNAbstractSlide *)self instructionalTextForInfo:titlePlaceholder];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [documentLocale localizedStringForKey:@"Title Text" value:&stru_2884D8E20 table:@"Keynote"];
  }

  v9 = v8;

  titlePlaceholder2 = [(KNAbstractSlide *)self titlePlaceholder];
  textStorage = [titlePlaceholder2 textStorage];

  string = [textStorage string];
  v13 = [string isEqualToString:v9];

  if ((v13 & 1) == 0)
  {
    titlePlaceholder3 = [(KNAbstractSlide *)self titlePlaceholder];
    textStorage2 = [titlePlaceholder3 textStorage];
    range = [textStorage2 range];
    [textStorage replaceCharactersInRange:range withString:v17 undoTransaction:{v9, 0}];
  }

  v58 = v9;
  v18 = [documentLocale localizedStringForKey:@"Body Level One" value:&stru_2884D8E20 table:@"Keynote"];
  v66[0] = v18;
  v19 = [documentLocale localizedStringForKey:@"Body Level Two" value:&stru_2884D8E20 table:@"Keynote"];
  v66[1] = v19;
  v20 = [documentLocale localizedStringForKey:@"Body Level Three" value:&stru_2884D8E20 table:@"Keynote"];
  v66[2] = v20;
  v21 = [documentLocale localizedStringForKey:@"Body Level Four" value:&stru_2884D8E20 table:@"Keynote"];
  v66[3] = v21;
  v22 = [documentLocale localizedStringForKey:@"Body Level Five" value:&stru_2884D8E20 table:@"Keynote"];
  v66[4] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:5];

  bodyPlaceholder = [(KNAbstractSlide *)self bodyPlaceholder];
  textStorage3 = [bodyPlaceholder textStorage];

  bodyParagraphStyles = [(KNTemplateSlide *)self bodyParagraphStyles];
  v27 = bodyParagraphStyles;
  if (!bodyParagraphStyles || ![bodyParagraphStyles count])
  {
    v28 = [textStorage3 paragraphStyleAtParIndex:0 effectiveRange:0];
    v65 = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];

    v27 = v29;
  }

  bodyListStyles = [(KNTemplateSlide *)self bodyListStyles];
  if (bodyListStyles)
  {
    bodyListStyles2 = [(KNTemplateSlide *)self bodyListStyles];
    v32 = [bodyListStyles2 count];

    if (v32)
    {
      bodyListStyles = [(KNTemplateSlide *)self bodyListStyles];
    }

    else
    {
      bodyListStyles = 0;
    }
  }

  v57 = textStorage;
  string2 = [MEMORY[0x277CCAB68] string];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = sub_275D61AC4;
  v63[3] = &unk_27A697EE0;
  v34 = string2;
  v64 = v34;
  [v23 enumerateObjectsUsingBlock:v63];
  string3 = [textStorage3 string];
  v36 = [string3 isEqualToString:v34];

  if ((v36 & 1) == 0)
  {
    range2 = [textStorage3 range];
    [textStorage3 deleteRange:range2 undoTransaction:{v38, 0}];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = sub_275D61B2C;
    v59[3] = &unk_27A697F08;
    v60 = textStorage3;
    v61 = v27;
    v62 = bodyListStyles;
    [v23 enumerateObjectsUsingBlock:v59];
  }

  v55 = v27;
  v39 = bodyListStyles;
  titlePlaceholder4 = [(KNAbstractSlide *)self titlePlaceholder];
  textStorage4 = [titlePlaceholder4 textStorage];
  string4 = [textStorage4 string];
  v43 = [string4 isEqualToString:self->_thumbnailTextForTitlePlaceholder];

  if (v43)
  {
    thumbnailTextForTitlePlaceholder = self->_thumbnailTextForTitlePlaceholder;
    self->_thumbnailTextForTitlePlaceholder = 0;
  }

  bodyPlaceholder2 = [(KNAbstractSlide *)self bodyPlaceholder];
  textStorage5 = [bodyPlaceholder2 textStorage];
  string5 = [textStorage5 string];
  v48 = [string5 isEqualToString:self->_thumbnailTextForBodyPlaceholder];

  if (v48)
  {
    thumbnailTextForBodyPlaceholder = self->_thumbnailTextForBodyPlaceholder;
    self->_thumbnailTextForBodyPlaceholder = 0;
  }

  paragraphCount = [textStorage3 paragraphCount];
  v51 = v23;
  if (paragraphCount != [v23 count])
  {
    v52 = MEMORY[0x277D81150];
    v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTemplateSlide updatePlaceholderText]"];
    v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
    [v52 handleFailureInFunction:v53 file:v54 lineNumber:590 isFatal:0 description:"failed to populate body placeholder correctly"];

    v51 = v23;
    [MEMORY[0x277D81150] logBacktraceThrottled];
  }
}

- (id)builds
{
  v9.receiver = self;
  v9.super_class = KNTemplateSlide;
  builds = [(KNAbstractSlide *)&v9 builds];
  v3 = [builds count];

  if (v3)
  {
    v4 = MEMORY[0x277D81150];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTemplateSlide builds]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:663 isFatal:0 description:"Template slide appears to have builds. This is not currently supported."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v7 = [MEMORY[0x277CBEB98] set];

  return v7;
}

- (unint64_t)buildCount
{
  v6.receiver = self;
  v6.super_class = KNTemplateSlide;
  if ([(KNAbstractSlide *)&v6 buildCount])
  {
    v2 = MEMORY[0x277D81150];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTemplateSlide buildCount]"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
    [v2 handleFailureInFunction:v3 file:v4 lineNumber:669 isFatal:0 description:"Template slide appears to have builds. This is not currently supported."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  return 0;
}

- (id)buildChunks
{
  v9.receiver = self;
  v9.super_class = KNTemplateSlide;
  buildChunks = [(KNAbstractSlide *)&v9 buildChunks];
  v3 = [buildChunks count];

  if (v3)
  {
    v4 = MEMORY[0x277D81150];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTemplateSlide buildChunks]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:674 isFatal:0 description:"Template slide appears to have build chunks. This is not currently supported."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  array = [MEMORY[0x277CBEA60] array];

  return array;
}

- (unint64_t)buildChunkCount
{
  v6.receiver = self;
  v6.super_class = KNTemplateSlide;
  if ([(KNAbstractSlide *)&v6 buildChunkCount])
  {
    v2 = MEMORY[0x277D81150];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTemplateSlide buildChunkCount]"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
    [v2 handleFailureInFunction:v3 file:v4 lineNumber:680 isFatal:0 description:"Template slide appears to have build chunks. This is not currently supported."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  return 0;
}

- (void)addBuild:(id)build
{
  buildCopy = build;
  v4 = MEMORY[0x277D81150];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTemplateSlide addBuild:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:686 isFatal:0 description:"Do not call method"];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v7 = MEMORY[0x277CBEAD8];
  v8 = *MEMORY[0x277CBE658];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[KNTemplateSlide addBuild:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)removeBuild:(id)build
{
  buildCopy = build;
  v4 = MEMORY[0x277D81150];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTemplateSlide removeBuild:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:690 isFatal:0 description:"Do not call method"];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v7 = MEMORY[0x277CBEAD8];
  v8 = *MEMORY[0x277CBE658];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[KNTemplateSlide removeBuild:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)insertBuildChunk:(id)chunk afterChunk:(id)afterChunk generateIdentifier:(BOOL)identifier
{
  chunkCopy = chunk;
  afterChunkCopy = afterChunk;
  v8 = MEMORY[0x277D81150];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTemplateSlide insertBuildChunk:afterChunk:generateIdentifier:]"];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
  [v8 handleFailureInFunction:v9 file:v10 lineNumber:694 isFatal:0 description:"Do not call method"];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[KNTemplateSlide insertBuildChunk:afterChunk:generateIdentifier:]"];
  v14 = [v11 exceptionWithName:v12 reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (void)removeBuildChunk:(id)chunk rollbackGeneratedIdentifier:(BOOL)identifier
{
  chunkCopy = chunk;
  v5 = MEMORY[0x277D81150];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTemplateSlide removeBuildChunk:rollbackGeneratedIdentifier:]"];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
  [v5 handleFailureInFunction:v6 file:v7 lineNumber:698 isFatal:0 description:"Do not call method"];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[KNTemplateSlide removeBuildChunk:rollbackGeneratedIdentifier:]"];
  v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)acceptVisitor:(id)visitor
{
  v4 = TSUProtocolCast();
  if (v4)
  {
    v5 = v4;
    [v4 visitKNTemplateSlide:{self, &unk_2885462B0}];
    v4 = v5;
  }
}

- (id)childEnumerator
{
  v3 = MEMORY[0x277D81148];
  v8.receiver = self;
  v8.super_class = KNTemplateSlide;
  childEnumerator = [(KNAbstractSlide *)&v8 childEnumerator];
  classicStylesheetRecord = [(KNTemplateSlide *)self classicStylesheetRecord];
  v6 = [v3 aggregateEnumeratorWithObjects:{childEnumerator, classicStylesheetRecord, 0}];

  return v6;
}

- (BOOL)containsProperty:(int)property
{
  if (property >> 1 == 2106)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = KNTemplateSlide;
  return [(KNAbstractSlide *)&v6 containsProperty:?];
}

- (int)intValueForProperty:(int)property
{
  if (property == 4216)
  {
    return [(KNTemplateSlide *)self slideObjectsLayerWithTemplate];
  }

  v4.receiver = self;
  v4.super_class = KNTemplateSlide;
  return [(KNAbstractSlide *)&v4 intValueForProperty:?];
}

- (id)objectForProperty:(int)property
{
  if (property == 4213)
  {
    bodyListStyles = [(KNTemplateSlide *)self bodyListStyles];
  }

  else if (property == 4212)
  {
    bodyListStyles = [(KNTemplateSlide *)self bodyParagraphStyles];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = KNTemplateSlide;
    bodyListStyles = [(KNAbstractSlide *)&v5 objectForProperty:?];
  }

  return bodyListStyles;
}

- (id)referencedStyles
{
  v8.receiver = self;
  v8.super_class = KNTemplateSlide;
  referencedStyles = [(KNAbstractSlide *)&v8 referencedStyles];
  v4 = [referencedStyles mutableCopy];

  bodyParagraphStyles = [(KNTemplateSlide *)self bodyParagraphStyles];
  [v4 addObjectsFromArray:bodyParagraphStyles];

  bodyListStyles = [(KNTemplateSlide *)self bodyListStyles];
  [v4 addObjectsFromArray:bodyListStyles];

  return v4;
}

- (void)replaceReferencedStylesUsingBlock:(id)block
{
  v9.receiver = self;
  v9.super_class = KNTemplateSlide;
  blockCopy = block;
  [(KNAbstractSlide *)&v9 replaceReferencedStylesUsingBlock:blockCopy];
  v5 = [(KNTemplateSlide *)self bodyParagraphStyles:v9.receiver];
  v6 = [v5 tsu_arrayByMappingObjectsUsingBlock:blockCopy];
  [(KNTemplateSlide *)self setBodyParagraphStyles:v6];

  bodyListStyles = [(KNTemplateSlide *)self bodyListStyles];
  v8 = [bodyListStyles tsu_arrayByMappingObjectsUsingBlock:blockCopy];

  [(KNTemplateSlide *)self setBodyListStyles:v8];
}

+ (void)templatesNotEquivalentWithFile:(id)file lineNumber:(int64_t)number reason:(id)reason
{
  if (byte_280A3BF58 == 1)
  {
    byte_280A3BF58 = 0;
  }
}

- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison
{
  comparisonCopy = comparison;
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (!v5)
  {
    goto LABEL_11;
  }

  name = [(KNTemplateSlide *)self name];
  name2 = [v5 name];
  byte_280A3BF58 = [name isEqualToString:name2];

  LODWORD(name) = [(KNTemplateSlide *)self slideObjectsLayerWithTemplate];
  if (name != [v5 slideObjectsLayerWithTemplate])
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"slideObjectsLayerWithTemplate"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
    v10 = v9;
    v11 = 984;
LABEL_10:
    [KNTemplateSlide templatesNotEquivalentWithFile:v10 lineNumber:v11 reason:v8];

LABEL_11:
    v21 = 0;
    goto LABEL_12;
  }

  style = [(KNAbstractSlide *)self style];
  v13 = [style objectForProperty:516];
  style2 = [v5 style];
  v15 = [style2 objectForProperty:516];
  v16 = [v13 isEquivalentForCrossDocumentPasteMasterComparison:v15];

  if ((v16 & 1) == 0)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"background fill"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
    v10 = v9;
    v11 = 990;
    goto LABEL_10;
  }

  nonPlaceholderObjects = [(KNTemplateSlide *)self nonPlaceholderObjects];
  nonPlaceholderObjects2 = [v5 nonPlaceholderObjects];
  v19 = [nonPlaceholderObjects kn_isEquivalentForCrossDocumentPasteMasterComparison:nonPlaceholderObjects2];

  if ((v19 & 1) == 0)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"background objects"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
    v10 = v9;
    v11 = 995;
    goto LABEL_10;
  }

  isTitleVisible = [(KNAbstractSlide *)self isTitleVisible];
  if (isTitleVisible != [v5 isTitleVisible])
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"title visibility"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
    v10 = v9;
    v11 = 1001;
    goto LABEL_10;
  }

  isBodyVisible = [(KNAbstractSlide *)self isBodyVisible];
  if (isBodyVisible != [v5 isBodyVisible])
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"body visibility"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
    v10 = v9;
    v11 = 1005;
    goto LABEL_10;
  }

  if ([(KNAbstractSlide *)self isTitleVisible])
  {
    titlePlaceholder = [(KNAbstractSlide *)self titlePlaceholder];
    titlePlaceholder2 = [v5 titlePlaceholder];
    v26 = [titlePlaceholder isEquivalentForCrossDocumentPasteMasterComparison:titlePlaceholder2];

    if (!v26)
    {
      goto LABEL_11;
    }
  }

  if ([(KNAbstractSlide *)self isBodyVisible])
  {
    bodyPlaceholder = [(KNAbstractSlide *)self bodyPlaceholder];
    bodyPlaceholder2 = [v5 bodyPlaceholder];
    v29 = [bodyPlaceholder isEquivalentForCrossDocumentPasteMasterComparison:bodyPlaceholder2];

    if (!v29)
    {
      goto LABEL_11;
    }
  }

  if ([(KNAbstractSlide *)self isSlideNumberVisible])
  {
    if ([v5 isSlideNumberVisible])
    {
      slideNumberPlaceholder = [(KNAbstractSlide *)self slideNumberPlaceholder];
      slideNumberPlaceholder2 = [v5 slideNumberPlaceholder];
      v32 = [slideNumberPlaceholder isEquivalentForCrossDocumentPasteMasterComparison:slideNumberPlaceholder2];

      if (!v32)
      {
        goto LABEL_11;
      }
    }
  }

  v33 = MEMORY[0x277CBEB98];
  placeholdersForTags = [(KNAbstractSlide *)self placeholdersForTags];
  allKeys = [placeholdersForTags allKeys];
  v36 = [v33 setWithArray:allKeys];

  v37 = MEMORY[0x277CBEB98];
  placeholdersForTags2 = [v5 placeholdersForTags];
  allKeys2 = [placeholdersForTags2 allKeys];
  v40 = [v37 setWithArray:allKeys2];

  if ([v36 isEqual:v40])
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 1;
    placeholdersForTags3 = [(KNAbstractSlide *)self placeholdersForTags];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_275D62EA0;
    v44[3] = &unk_27A697F30;
    v45 = v5;
    v46 = &v47;
    [placeholdersForTags3 enumerateKeysAndObjectsUsingBlock:v44];

    v21 = *(v48 + 24);
    if (v21)
    {
      byte_280A3BF58 = 0;
    }

    _Block_object_dispose(&v47, 8);
  }

  else
  {
    v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"placeholder tags"];
    v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
    [KNTemplateSlide templatesNotEquivalentWithFile:v43 lineNumber:1032 reason:v42];

    v21 = 0;
  }

LABEL_12:
  return v21;
}

- (void)generateObjectPlaceholderIfNecessary
{
  objc_opt_class();
  objectPlaceholder = [(KNAbstractSlide *)self objectPlaceholder];
  v31 = TSUDynamicCast();

  if (v31 || ([(KNAbstractSlide *)self objectPlaceholder], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
  {
    objectPlaceholder2 = [(KNAbstractSlide *)self objectPlaceholder];

    if (objectPlaceholder2)
    {
      goto LABEL_7;
    }

    [(KNTemplateSlide *)self willModifyForUpgrade];
    objc_opt_class();
    documentRoot = [(KNTemplateSlide *)self documentRoot];
    v6 = TSUDynamicCast();

    show = [v6 show];
    [show size];
    v8 = objc_alloc(MEMORY[0x277D802E8]);
    TSURoundedPoint();
    v10 = v9;
    v12 = v11;
    TSURoundedSize();
    v15 = [v8 initWithPosition:v10 size:{v12, v13, v14}];
    objc_opt_class();
    theme = [show theme];
    v17 = [theme presetOfKind:*MEMORY[0x277D80BB8] index:0];
    v18 = TSUDynamicCast();

    v19 = [KNObjectPlaceholderInfo alloc];
    context = [v6 context];
    v21 = [(KNObjectPlaceholderInfo *)v19 initWithContext:context geometry:v15 style:v18];

    [(KNAbstractSlide *)self setObjectPlaceholder:v21];
  }

  else
  {
    [(KNTemplateSlide *)self willModifyForUpgrade];
    objc_opt_class();
    documentRoot2 = [(KNTemplateSlide *)self documentRoot];
    v6 = TSUDynamicCast();

    objc_opt_class();
    show2 = [v6 show];
    theme2 = [show2 theme];
    v26 = [theme2 presetOfKind:*MEMORY[0x277D80BB8] index:0];
    show = TSUDynamicCast();

    v27 = [KNObjectPlaceholderInfo alloc];
    context2 = [(KNTemplateSlide *)self context];
    objectPlaceholder3 = [(KNAbstractSlide *)self objectPlaceholder];
    geometry = [objectPlaceholder3 geometry];
    v15 = [(KNObjectPlaceholderInfo *)v27 initWithContext:context2 geometry:geometry style:show];

    [(KNAbstractSlide *)self setObjectPlaceholder:v15];
  }

LABEL_7:
}

- (BOOL)hasBug16580905
{
  if (!self->_calculatedHasBug16580905)
  {
    owningDocument = [(TSPObject *)self owningDocument];
    show = [owningDocument show];
    theme = [show theme];

    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    templateSlides = [theme templateSlides];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_275D6486C;
    v8[3] = &unk_27A697FA0;
    v8[4] = self;
    v8[5] = &v9;
    [templateSlides enumerateObjectsUsingBlock:v8];

    self->_hasBug16580905 = *(v10 + 24) ^ 1;
    self->_calculatedHasBug16580905 = 1;
    _Block_object_dispose(&v9, 8);
  }

  return self->_hasBug16580905;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = [unarchiverCopy messageWithDescriptor:off_2812EA908[32]];

  v69.receiver = self;
  v69.super_class = KNTemplateSlide;
  [(KNAbstractSlide *)&v69 loadFromArchive:v5 unarchiver:unarchiverCopy];
  0xFFFFFFFFFFFFFFFELL = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(v5 + 264) & 0xFFFFFFFFFFFFFFFELL];
  name = self->_name;
  self->_name = 0xFFFFFFFFFFFFFFFELL;

  if (*(v5 + 18))
  {
    v8 = *(v5 + 392);
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = sub_275D64F94;
    v68[3] = &unk_27A697FC8;
    v68[4] = self;
    v9 = unarchiverCopy;
    [v9 readReferenceMessage:v8 class:objc_opt_class() protocol:0 completion:v68];
  }

  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = sub_275D64FAC;
  v67[3] = &unk_27A697A10;
  v67[4] = self;
  v10 = unarchiverCopy;
  [v10 readRepeatedReferenceMessage:v5 + 144 class:objc_opt_class() protocol:0 completion:v67];

  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = sub_275D64FC4;
  v66[3] = &unk_27A697A10;
  v66[4] = self;
  v11 = v10;
  [v11 readRepeatedReferenceMessage:v5 + 168 class:objc_opt_class() protocol:0 completion:v66];

  v12 = *(v5 + 432);
  v13 = *(v5 + 16);
  if ((v13 & 0x80) != 0)
  {
    v16 = objc_alloc(MEMORY[0x277D80358]);
    if (*(v5 + 320))
    {
      v17 = *(v5 + 320);
    }

    else
    {
      v17 = MEMORY[0x277D804B8];
    }

    v14 = [v16 initWithArchive:v17];
    v13 = *(v5 + 16);
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v14 = 0;
    if ((v13 & 0x1000) == 0)
    {
LABEL_5:
      v15 = 0;
      goto LABEL_14;
    }
  }

  v15 = objc_alloc_init(MEMORY[0x277D80AB8]);
  if (*(v5 + 360))
  {
    v18 = *(v5 + 360);
  }

  else
  {
    v18 = MEMORY[0x277D81090];
  }

  [MEMORY[0x277D80F18] loadShapeStyleLayoutPropertiesIntoPropertyMap:v15 fromArchive:v18 unarchiver:v11];
  v13 = *(v5 + 16);
LABEL_14:
  v19 = *(v5 + 440);
  if ((v13 & 0x100) != 0)
  {
    v21 = objc_alloc(MEMORY[0x277D80358]);
    if (*(v5 + 328))
    {
      v22 = *(v5 + 328);
    }

    else
    {
      v22 = MEMORY[0x277D804B8];
    }

    v20 = [v21 initWithArchive:v22];
    v13 = *(v5 + 16);
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

LABEL_21:
    v23 = objc_alloc_init(MEMORY[0x277D80AB8]);
    if (*(v5 + 368))
    {
      v24 = *(v5 + 368);
    }

    else
    {
      v24 = MEMORY[0x277D81090];
    }

    [MEMORY[0x277D80F18] loadShapeStyleLayoutPropertiesIntoPropertyMap:v23 fromArchive:v24 unarchiver:v11];
    v52 = v23;
    v13 = *(v5 + 16);
    goto LABEL_25;
  }

  v20 = 0;
  if ((v13 & 0x2000) != 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  v52 = 0;
LABEL_25:
  v25 = *(v5 + 448);
  v51 = v14;
  if ((v13 & 0x800) != 0)
  {
    v26 = objc_alloc(MEMORY[0x277D80358]);
    if (*(v5 + 352))
    {
      v27 = *(v5 + 352);
    }

    else
    {
      v27 = MEMORY[0x277D804B8];
    }

    v50 = [v26 initWithArchive:v27];
    v13 = *(v5 + 16);
  }

  else
  {
    v50 = 0;
  }

  v28 = v20;
  if ((v13 & 0x4000) != 0)
  {
    v40 = objc_alloc_init(MEMORY[0x277D80AB8]);
    if (*(v5 + 376))
    {
      v41 = *(v5 + 376);
    }

    else
    {
      v41 = MEMORY[0x277D81090];
    }

    [MEMORY[0x277D80F18] loadShapeStyleLayoutPropertiesIntoPropertyMap:v40 fromArchive:v41 unarchiver:v11];
    v13 = *(v5 + 16);
    v29 = v40;
    if ((v13 & 2) == 0)
    {
LABEL_33:
      if ((v13 & 4) == 0)
      {
        goto LABEL_34;
      }

LABEL_42:
      0xFFFFFFFFFFFFFFFELL2 = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(v5 + 280) & 0xFFFFFFFFFFFFFFFELL];
      thumbnailTextForBodyPlaceholder = self->_thumbnailTextForBodyPlaceholder;
      self->_thumbnailTextForBodyPlaceholder = 0xFFFFFFFFFFFFFFFELL2;

      if ((*(v5 + 16) & 0x8000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v29 = 0;
    if ((v13 & 2) == 0)
    {
      goto LABEL_33;
    }
  }

  0xFFFFFFFFFFFFFFFELL3 = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(v5 + 272) & 0xFFFFFFFFFFFFFFFELL];
  thumbnailTextForTitlePlaceholder = self->_thumbnailTextForTitlePlaceholder;
  self->_thumbnailTextForTitlePlaceholder = 0xFFFFFFFFFFFFFFFELL3;

  v13 = *(v5 + 16);
  if ((v13 & 4) != 0)
  {
    goto LABEL_42;
  }

LABEL_34:
  if ((v13 & 0x8000000) != 0)
  {
LABEL_35:
    self->_slideObjectsLayerWithTemplate = *(v5 + 456);
  }

LABEL_36:
  preUFFVersion = [v11 preUFFVersion];
  fileFormatVersion = [v11 fileFormatVersion];
  v49 = preUFFVersion;
  LOBYTE(preUFFVersion) = [v11 hasPreUFFVersion];
  v31 = v11;
  *&v32 = v12;
  *(&v32 + 1) = HIDWORD(v12);
  v33 = v32;
  *&v32 = v19;
  *(&v32 + 1) = HIDWORD(v19);
  v46 = v33;
  v47 = v32;
  *&v32 = v25;
  *(&v32 + 1) = HIDWORD(v25);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = sub_275D64FDC;
  v53[3] = &unk_27A697FF0;
  v53[4] = self;
  v34 = v15;
  v54 = v34;
  v35 = v51;
  v55 = v35;
  v60 = v46;
  v36 = v52;
  v56 = v36;
  v37 = v28;
  v57 = v37;
  v61 = v47;
  v38 = v29;
  v58 = v38;
  v39 = v50;
  v59 = v39;
  v62 = v32;
  v65 = preUFFVersion;
  v63 = v49;
  v64 = fileFormatVersion;
  [v31 addFinalizeHandler:v53];
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = [archiverCopy messageWithNewFunction:sub_275D55CF8 descriptor:off_2812EA908[32]];

  v18.receiver = self;
  v18.super_class = KNTemplateSlide;
  [(KNAbstractSlide *)&v18 saveToArchive:v5 archiver:archiverCopy];
  name = [(KNTemplateSlide *)self name];
  uTF8String = [name UTF8String];
  *(v5 + 16) |= 1u;
  sub_275D55B98(__p, uTF8String);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  classicStylesheetRecord = self->_classicStylesheetRecord;
  if (classicStylesheetRecord)
  {
    *(v5 + 16) |= 0x10000u;
    v9 = *(v5 + 392);
    if (!v9)
    {
      v10 = *(v5 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277C8F050](v10);
      *(v5 + 392) = v9;
    }

    [archiverCopy setStrongReference:classicStylesheetRecord message:v9];
  }

  bodyParagraphStyles = self->_bodyParagraphStyles;
  if (bodyParagraphStyles)
  {
    [archiverCopy setStrongReferenceArray:bodyParagraphStyles message:v5 + 144];
  }

  bodyListStyles = self->_bodyListStyles;
  if (bodyListStyles)
  {
    [archiverCopy setStrongReferenceArray:bodyListStyles message:v5 + 168];
  }

  thumbnailTextForTitlePlaceholder = self->_thumbnailTextForTitlePlaceholder;
  if (thumbnailTextForTitlePlaceholder)
  {
    if ([(NSString *)thumbnailTextForTitlePlaceholder length])
    {
      tsp_protobufString = [(NSString *)self->_thumbnailTextForTitlePlaceholder tsp_protobufString];
      *(v5 + 16) |= 2u;
      sub_275D55B98(__p, tsp_protobufString);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  thumbnailTextForBodyPlaceholder = self->_thumbnailTextForBodyPlaceholder;
  if (thumbnailTextForBodyPlaceholder)
  {
    if ([(NSString *)thumbnailTextForBodyPlaceholder length])
    {
      tsp_protobufString2 = [(NSString *)self->_thumbnailTextForBodyPlaceholder tsp_protobufString];
      *(v5 + 16) |= 4u;
      sub_275D55B98(__p, tsp_protobufString2);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  slideObjectsLayerWithTemplate = self->_slideObjectsLayerWithTemplate;
  *(v5 + 16) |= 0x8000000u;
  *(v5 + 456) = slideObjectsLayerWithTemplate;
  if (slideObjectsLayerWithTemplate)
  {
    [archiverCopy requiresDocumentVersion:*MEMORY[0x277D80958]];
  }
}

@end
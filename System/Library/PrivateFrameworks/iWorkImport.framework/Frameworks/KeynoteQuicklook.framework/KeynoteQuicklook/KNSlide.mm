@interface KNSlide
+ (id)blankSlideWithSlideNode:(id)node templateSlide:(id)slide andShow:(id)show;
- (BOOL)p_oneOrMoreDrawablesMayHaveImplicitBuildEventsInDrawables:(id)drawables;
- (BOOL)p_urlIsSlideSpecific:(id)specific;
- (BOOL)slideObjectsLayerWithTemplate;
- (KNSlide)initWithSlideNode:(id)node templateSlide:(id)slide andShow:(id)show;
- (id)childEnumerator;
- (id)defaultBodyPlaceholder;
- (id)defaultSlideNumberPlaceholder;
- (id)defaultTitlePlaceholder;
- (id)infoCorrespondingToTemplateSlideInfo:(id)info;
- (id)infosToDisplay;
- (id)p_slideNodeUUIDStringFromURL:(id)l;
- (id)paragraphIndexesOfTopLevelBullets;
- (void)acceptVisitor:(id)visitor;
- (void)addInfoUsingObjectPlaceholderGeometry:(id)geometry;
- (void)addMapForStorage:(id)storage forHyperlink:(id)hyperlink;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)insertDrawables:(id)drawables atIndex:(unint64_t)index dolcContext:(id)context;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_checkTemplateSlide;
- (void)removeDrawable:(id)drawable;
- (void)removeInfoUsingObjectPlaceholderGeometry:(id)geometry;
- (void)removeMapForStorage:(id)storage forHyperlink:(id)hyperlink;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setInfosUsingObjectPlaceholderGeometry:(id)geometry;
- (void)setNote:(id)note;
- (void)setTemplateSlide:(id)slide resetTemplateSlideBackgroundObjects:(BOOL)objects;
- (void)setToTemplateSlide:(id)slide;
- (void)updateSlideSpecificHyperlinkMapForStorage:(id)storage oldHyperlink:(id)hyperlink newHyperlink:(id)newHyperlink;
- (void)updateSlideSpecificLinkMapForInfo:(id)info newHyperlink:(id)hyperlink;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation KNSlide

+ (id)blankSlideWithSlideNode:(id)node templateSlide:(id)slide andShow:(id)show
{
  showCopy = show;
  slideCopy = slide;
  nodeCopy = node;
  v11 = [[self alloc] initWithSlideNode:nodeCopy templateSlide:slideCopy andShow:showCopy];

  return v11;
}

- (KNSlide)initWithSlideNode:(id)node templateSlide:(id)slide andShow:(id)show
{
  slideCopy = slide;
  nodeCopy = node;
  context = [show context];
  v19.receiver = self;
  v19.super_class = KNSlide;
  v11 = [(KNAbstractSlide *)&v19 initWithSlideNode:nodeCopy context:context];

  if (v11)
  {
    if (slideCopy)
    {
      [(KNSlide *)v11 setToTemplateSlide:slideCopy];
    }

    v12 = [KNNoteInfo alloc];
    context2 = [(KNSlide *)v11 context];
    v14 = [(KNNoteInfo *)v12 initWithContext:context2];
    note = v11->_note;
    v11->_note = v14;

    [(KNNoteInfo *)v11->_note setParentInfo:v11];
    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    infosUsingObjectPlaceholderGeometry = v11->_infosUsingObjectPlaceholderGeometry;
    v11->_infosUsingObjectPlaceholderGeometry = v16;
  }

  return v11;
}

- (void)setTemplateSlide:(id)slide resetTemplateSlideBackgroundObjects:(BOOL)objects
{
  objectsCopy = objects;
  slideCopy = slide;
  if (self->_templateSlide != slideCopy)
  {
    [(KNSlide *)self willModify];
    if (objectsCopy)
    {
      slideObjectsLayerWithTemplate = [(KNTemplateSlide *)self->_templateSlide slideObjectsLayerWithTemplate];
      if (slideObjectsLayerWithTemplate != [(KNTemplateSlide *)slideCopy slideObjectsLayerWithTemplate])
      {
        sub_275E59EAC();
      }

      if ([(KNTemplateSlide *)slideCopy slideObjectsLayerWithTemplate])
      {
        nonPlaceholderObjects = [(KNTemplateSlide *)self->_templateSlide nonPlaceholderObjects];
        nonPlaceholderObjects2 = [(KNTemplateSlide *)slideCopy nonPlaceholderObjects];
        v11 = [nonPlaceholderObjects count];
        if (v11 != [nonPlaceholderObjects2 count])
        {
          sub_275E59E08();
        }

        childInfos = [(KNAbstractSlide *)self childInfos];
        v13 = [childInfos mutableCopy];

        v17 = MEMORY[0x277D85DD0];
        v18 = 3221225472;
        v19 = sub_275D70124;
        v20 = &unk_27A698250;
        v21 = v13;
        v22 = nonPlaceholderObjects2;
        v14 = nonPlaceholderObjects2;
        v15 = v13;
        [nonPlaceholderObjects enumerateObjectsUsingBlock:&v17];
        [(KNAbstractSlide *)self setChildInfosWithoutDOLC:v15, v17, v18, v19, v20];
      }
    }

    objc_storeStrong(&self->_templateSlide, slide);
    slideNode = [(KNAbstractSlide *)self slideNode];
    [slideNode updateTemplateSlideUUID];
  }
}

- (void)addInfoUsingObjectPlaceholderGeometry:(id)geometry
{
  geometryCopy = geometry;
  [(KNSlide *)self willModify];
  [(NSMutableSet *)self->_infosUsingObjectPlaceholderGeometry addObject:geometryCopy];
}

- (void)removeInfoUsingObjectPlaceholderGeometry:(id)geometry
{
  geometryCopy = geometry;
  [(KNSlide *)self willModify];
  [(NSMutableSet *)self->_infosUsingObjectPlaceholderGeometry removeObject:geometryCopy];
}

- (void)setInfosUsingObjectPlaceholderGeometry:(id)geometry
{
  if (self->_infosUsingObjectPlaceholderGeometry != geometry)
  {
    v4 = [geometry mutableCopy];
    infosUsingObjectPlaceholderGeometry = self->_infosUsingObjectPlaceholderGeometry;
    self->_infosUsingObjectPlaceholderGeometry = v4;
  }
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  v10.receiver = self;
  v10.super_class = KNSlide;
  [(KNAbstractSlide *)&v10 adoptStylesheet:stylesheetCopy withMapper:mapperCopy];
  note = [(KNSlide *)self note];
  v9 = note;
  if (note)
  {
    [note adoptStylesheet:stylesheetCopy withMapper:mapperCopy];
  }
}

- (void)setToTemplateSlide:(id)slide
{
  v47 = *MEMORY[0x277D85DE8];
  slideCopy = slide;
  if (!slideCopy)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlide setToTemplateSlide:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlide.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:217 isFatal:0 description:{"invalid nil value for '%{public}s'", "templateSlide"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  [(KNSlide *)self willModify];
  [(KNSlide *)self setTemplateSlide:slideCopy];
  style = [slideCopy style];
  [(KNAbstractSlide *)self setStyle:style];

  [(KNAbstractSlide *)self setChildInfosWithoutDOLC:MEMORY[0x277CBEBF8]];
  if ([(KNAbstractSlide *)self isTitleVisible])
  {
    titlePlaceholder = [(KNAbstractSlide *)self titlePlaceholder];
    [(KNSlide *)self removeDrawable:titlePlaceholder];
  }

  [(KNAbstractSlide *)self setTitlePlaceholder:0];
  if ([(KNAbstractSlide *)self isBodyVisible])
  {
    bodyPlaceholder = [(KNAbstractSlide *)self bodyPlaceholder];
    [(KNSlide *)self removeDrawable:bodyPlaceholder];
  }

  [(KNAbstractSlide *)self setBodyPlaceholder:0];
  if ([(KNAbstractSlide *)self isSlideNumberVisible])
  {
    slideNumberPlaceholder = [(KNAbstractSlide *)self slideNumberPlaceholder];
    [(KNSlide *)self removeDrawable:slideNumberPlaceholder];
  }

  [(KNAbstractSlide *)self setSlideNumberPlaceholder:0];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  childInfos = [slideCopy childInfos];
  v13 = [childInfos countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v43;
    v41 = childInfos;
    do
    {
      v16 = 0;
      do
      {
        if (*v43 != v15)
        {
          objc_enumerationMutation(childInfos);
        }

        v17 = *(*(&v42 + 1) + 8 * v16);
        v18 = [slideCopy tagForInfo:v17];
        if (v18)
        {
          copyToInstantiateTemplatePlaceholder = [v17 copyToInstantiateTemplatePlaceholder];
          [(KNAbstractSlide *)self addDrawable:copyToInstantiateTemplatePlaceholder dolcContext:0];
          [(KNAbstractSlide *)self setInfo:copyToInstantiateTemplatePlaceholder forSageTag:v18];
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          titlePlaceholder2 = [slideCopy titlePlaceholder];

          if (v17 == titlePlaceholder2)
          {
            defaultTitlePlaceholder = [(KNSlide *)self defaultTitlePlaceholder];
            [(KNAbstractSlide *)self setTitlePlaceholder:defaultTitlePlaceholder];

            titlePlaceholder3 = [(KNAbstractSlide *)self titlePlaceholder];
            goto LABEL_30;
          }

          bodyPlaceholder2 = [slideCopy bodyPlaceholder];

          if (v17 == bodyPlaceholder2)
          {
            defaultBodyPlaceholder = [(KNSlide *)self defaultBodyPlaceholder];
            [(KNAbstractSlide *)self setBodyPlaceholder:defaultBodyPlaceholder];

            titlePlaceholder3 = [(KNAbstractSlide *)self bodyPlaceholder];
            goto LABEL_30;
          }

          slideNumberPlaceholder2 = [slideCopy slideNumberPlaceholder];

          if (v17 == slideNumberPlaceholder2)
          {
            defaultSlideNumberPlaceholder = [(KNSlide *)self defaultSlideNumberPlaceholder];
            [(KNAbstractSlide *)self setSlideNumberPlaceholder:defaultSlideNumberPlaceholder];

            titlePlaceholder3 = [(KNAbstractSlide *)self slideNumberPlaceholder];
LABEL_30:
            copyToInstantiateTemplatePlaceholder = titlePlaceholder3;
            [(KNAbstractSlide *)self addDrawable:titlePlaceholder3 dolcContext:0];
LABEL_16:

            goto LABEL_17;
          }

          objectPlaceholder = [slideCopy objectPlaceholder];

          if (v17 != objectPlaceholder)
          {
            v24 = MEMORY[0x277D81150];
            v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlide setToTemplateSlide:]"];
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlide.m"];
            v27 = TSUObjectReferenceDescription();
            [v24 handleFailureInFunction:v25 file:v26 lineNumber:259 isFatal:0 description:{"Unexpected placeholder %@ not transfered to slide.", v27}];

            childInfos = v41;
            [MEMORY[0x277D81150] logBacktraceThrottled];
          }
        }

        else if ([slideCopy slideObjectsLayerWithTemplate])
        {
          [(KNSlide *)self willModify];
          childInfos2 = [(KNAbstractSlide *)self childInfos];
          v29 = [childInfos2 mutableCopy];

          childInfos = v41;
          [v29 addObject:v17];
          [(KNAbstractSlide *)self setChildInfosWithoutDOLC:v29];
        }

LABEL_17:

        ++v16;
      }

      while (v14 != v16);
      v34 = [childInfos countByEnumeratingWithState:&v42 objects:v46 count:16];
      v14 = v34;
    }

    while (v34);
  }

  titlePlaceholder4 = [(KNAbstractSlide *)self titlePlaceholder];

  if (!titlePlaceholder4)
  {
    defaultTitlePlaceholder2 = [(KNSlide *)self defaultTitlePlaceholder];
    [(KNAbstractSlide *)self setTitlePlaceholder:defaultTitlePlaceholder2];
  }

  bodyPlaceholder3 = [(KNAbstractSlide *)self bodyPlaceholder];

  if (!bodyPlaceholder3)
  {
    defaultBodyPlaceholder2 = [(KNSlide *)self defaultBodyPlaceholder];
    [(KNAbstractSlide *)self setBodyPlaceholder:defaultBodyPlaceholder2];
  }

  slideNumberPlaceholder3 = [(KNAbstractSlide *)self slideNumberPlaceholder];

  if (!slideNumberPlaceholder3)
  {
    defaultSlideNumberPlaceholder2 = [(KNSlide *)self defaultSlideNumberPlaceholder];
    [(KNAbstractSlide *)self setSlideNumberPlaceholder:defaultSlideNumberPlaceholder2];
  }
}

- (id)defaultTitlePlaceholder
{
  templateSlide = [(KNSlide *)self templateSlide];
  titlePlaceholder = [templateSlide titlePlaceholder];
  copyToInstantiateTemplatePlaceholder = [titlePlaceholder copyToInstantiateTemplatePlaceholder];

  return copyToInstantiateTemplatePlaceholder;
}

- (id)defaultBodyPlaceholder
{
  templateSlide = [(KNSlide *)self templateSlide];
  bodyPlaceholder = [templateSlide bodyPlaceholder];
  copyToInstantiateTemplatePlaceholder = [bodyPlaceholder copyToInstantiateTemplatePlaceholder];

  return copyToInstantiateTemplatePlaceholder;
}

- (id)defaultSlideNumberPlaceholder
{
  templateSlide = [(KNSlide *)self templateSlide];
  slideNumberPlaceholder = [templateSlide slideNumberPlaceholder];
  copyToInstantiateTemplatePlaceholder = [slideNumberPlaceholder copyToInstantiateTemplatePlaceholder];

  return copyToInstantiateTemplatePlaceholder;
}

- (id)infoCorrespondingToTemplateSlideInfo:(id)info
{
  infoCopy = info;
  templateSlide = [(KNSlide *)self templateSlide];
  titlePlaceholder = [templateSlide titlePlaceholder];

  if (titlePlaceholder == infoCopy)
  {
    titlePlaceholder2 = [(KNAbstractSlide *)self titlePlaceholder];
  }

  else
  {
    bodyPlaceholder = [templateSlide bodyPlaceholder];

    if (bodyPlaceholder == infoCopy)
    {
      titlePlaceholder2 = [(KNAbstractSlide *)self bodyPlaceholder];
    }

    else
    {
      slideNumberPlaceholder = [templateSlide slideNumberPlaceholder];

      if (slideNumberPlaceholder != infoCopy)
      {
        placeholdersForTags = [templateSlide placeholdersForTags];
        v10 = [placeholdersForTags allKeysForObject:infoCopy];

        if ([v10 count])
        {
          placeholdersForTags2 = [(KNAbstractSlide *)self placeholdersForTags];
          v12 = [v10 objectAtIndexedSubscript:0];
          v13 = [placeholdersForTags2 objectForKeyedSubscript:v12];
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_12;
      }

      titlePlaceholder2 = [(KNAbstractSlide *)self slideNumberPlaceholder];
    }
  }

  v13 = titlePlaceholder2;
LABEL_12:

  return v13;
}

- (BOOL)slideObjectsLayerWithTemplate
{
  templateSlide = [(KNSlide *)self templateSlide];
  slideObjectsLayerWithTemplate = [templateSlide slideObjectsLayerWithTemplate];

  return slideObjectsLayerWithTemplate;
}

- (void)insertDrawables:(id)drawables atIndex:(unint64_t)index dolcContext:(id)context
{
  v10.receiver = self;
  v10.super_class = KNSlide;
  drawablesCopy = drawables;
  [(KNAbstractSlide *)&v10 insertDrawables:drawablesCopy atIndex:index dolcContext:context];
  LODWORD(context) = [(KNSlide *)self p_oneOrMoreDrawablesMayHaveImplicitBuildEventsInDrawables:drawablesCopy, v10.receiver, v10.super_class];

  if (context)
  {
    slideNode = [(KNAbstractSlide *)self slideNode];
    [slideNode invalidateBuildEventCountCaches];
  }
}

- (BOOL)p_oneOrMoreDrawablesMayHaveImplicitBuildEventsInDrawables:(id)drawables
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  drawablesCopy = drawables;
  v4 = [drawablesCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(drawablesCopy);
        }

        if ([*(*(&v8 + 1) + 8 * i) mayHaveImplicitBuildEvents])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [drawablesCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)removeDrawable:(id)drawable
{
  drawableCopy = drawable;
  if ([drawableCopy mayHaveImplicitBuildEvents])
  {
    slideNode = [(KNAbstractSlide *)self slideNode];
    [slideNode invalidateBuildEventCountCaches];
  }

  [(KNSlide *)self removeInfoUsingObjectPlaceholderGeometry:drawableCopy];
  v6.receiver = self;
  v6.super_class = KNSlide;
  [(KNAbstractSlide *)&v6 removeDrawable:drawableCopy];
}

- (void)setNote:(id)note
{
  noteCopy = note;
  [(KNSlide *)self willModify];
  documentRoot = [(KNSlide *)self documentRoot];
  inDocument = [(KNAbstractSlide *)self inDocument];
  if (noteCopy)
  {
    v7 = inDocument;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    [noteCopy willBeAddedToDocumentRoot:documentRoot dolcContext:0];
  }

  v8 = self->_note;
  if (v8)
  {
    v9 = inDocument;
  }

  else
  {
    v9 = 0;
  }

  note = self->_note;
  if (!v9)
  {
    [(KNNoteInfo *)note setParentInfo:0];
    objc_storeStrong(&self->_note, note);
    [(KNNoteInfo *)self->_note setParentInfo:self];
    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  [(KNNoteInfo *)note willBeRemovedFromDocumentRoot:documentRoot];
  [(KNNoteInfo *)self->_note setParentInfo:0];
  objc_storeStrong(&self->_note, note);
  [(KNNoteInfo *)self->_note setParentInfo:self];
  [(KNNoteInfo *)v8 wasRemovedFromDocumentRoot:documentRoot];
  if (v7)
  {
LABEL_13:
    [(KNNoteInfo *)self->_note wasAddedToDocumentRoot:documentRoot dolcContext:0];
  }

LABEL_14:
}

- (id)childEnumerator
{
  v3 = MEMORY[0x277D81148];
  v8.receiver = self;
  v8.super_class = KNSlide;
  childEnumerator = [(KNAbstractSlide *)&v8 childEnumerator];
  note = [(KNSlide *)self note];
  v6 = [v3 aggregateEnumeratorWithObjects:{childEnumerator, note, 0}];

  return v6;
}

- (void)acceptVisitor:(id)visitor
{
  v4 = TSUProtocolCast();
  if (v4)
  {
    v5 = v4;
    [v4 visitKNSlide:{self, &unk_2885462B0}];
    v4 = v5;
  }
}

- (id)infosToDisplay
{
  selfCopy = self;
  v39 = *MEMORY[0x277D85DE8];
  templateSlide = [(KNSlide *)self templateSlide];

  if (!templateSlide)
  {
    sub_275E59F50();
  }

  templateSlide2 = [(KNSlide *)selfCopy templateSlide];
  nonPlaceholderObjects = [templateSlide2 nonPlaceholderObjects];

  v6 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(nonPlaceholderObjects, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = nonPlaceholderObjects;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v9);
  }

  childInfos = [(KNAbstractSlide *)selfCopy childInfos];
  v14 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(v6, "count") + objc_msgSend(childInfos, "count") + 1}];
  background = [(KNAbstractSlide *)selfCopy background];
  [v14 addObject:background];

  if ([(KNSlide *)selfCopy slideObjectsLayerWithTemplate])
  {
    v28 = v6;
    array = [MEMORY[0x277CBEB18] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v17 = childInfos;
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v29 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v22 parentInfo];
            v24 = v23 = selfCopy;

            v25 = v24 == v23;
            selfCopy = v23;
            if (!v25)
            {
              continue;
            }
          }

          [array addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v19);
    }

    v6 = v28;
  }

  else
  {
    [v14 unionOrderedSet:v6];
    array = childInfos;
  }

  if ([array count])
  {
    [v14 addObjectsFromArray:array];
  }

  array2 = [v14 array];

  return array2;
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  rootCopy = root;
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = KNSlide;
  [(KNAbstractSlide *)&v10 willBeAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  note = [(KNSlide *)self note];
  v9 = note;
  if (note)
  {
    [note willBeAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  }
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  rootCopy = root;
  contextCopy = context;
  [(KNSlide *)self p_checkTemplateSlide];
  v10.receiver = self;
  v10.super_class = KNSlide;
  [(KNAbstractSlide *)&v10 wasAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  note = [(KNSlide *)self note];
  v9 = note;
  if (note)
  {
    [note wasAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  v7.receiver = self;
  v7.super_class = KNSlide;
  [(KNAbstractSlide *)&v7 willBeRemovedFromDocumentRoot:rootCopy];
  note = [(KNSlide *)self note];
  v6 = note;
  if (note)
  {
    [note willBeRemovedFromDocumentRoot:rootCopy];
  }
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  v7.receiver = self;
  v7.super_class = KNSlide;
  [(KNAbstractSlide *)&v7 wasRemovedFromDocumentRoot:rootCopy];
  note = [(KNSlide *)self note];
  v6 = note;
  if (note)
  {
    [note wasRemovedFromDocumentRoot:rootCopy];
  }
}

- (BOOL)p_urlIsSlideSpecific:(id)specific
{
  if (!specific)
  {
    return 0;
  }

  absoluteString = [specific absoluteString];
  v4 = [absoluteString rangeOfString:@"?slideid="] == 0;

  return v4;
}

- (id)p_slideNodeUUIDStringFromURL:(id)l
{
  lCopy = l;
  absoluteString = [l absoluteString];
  v5 = absoluteString;
  if (lCopy)
  {
    if ([absoluteString rangeOfString:@"?slideid="])
    {
      lCopy = 0;
    }

    else
    {
      lCopy = [v5 substringFromIndex:{objc_msgSend(@"?slideid=", "length")}];
    }
  }

  return lCopy;
}

- (void)updateSlideSpecificLinkMapForInfo:(id)info newHyperlink:(id)hyperlink
{
  infoCopy = info;
  hyperlinkCopy = hyperlink;
  hyperlinkURL = [infoCopy hyperlinkURL];
  v8 = [(KNSlide *)self p_urlIsSlideSpecific:hyperlinkURL];
  v9 = [(KNSlide *)self p_urlIsSlideSpecific:hyperlinkCopy];
  if (v8)
  {
    v10 = [(KNSlide *)self p_slideNodeUUIDStringFromURL:hyperlinkURL];
    slideNode = [(KNAbstractSlide *)self slideNode];
    [slideNode removeHyperlinkForInfo:infoCopy toSlideNode:v10];
  }

  if (v9)
  {
    v12 = [(KNSlide *)self p_slideNodeUUIDStringFromURL:hyperlinkCopy];
    slideNode2 = [(KNAbstractSlide *)self slideNode];
    [slideNode2 addHyperlinkForInfo:infoCopy toSlideNode:v12];
  }
}

- (void)updateSlideSpecificHyperlinkMapForStorage:(id)storage oldHyperlink:(id)hyperlink newHyperlink:(id)newHyperlink
{
  storageCopy = storage;
  hyperlinkCopy = hyperlink;
  newHyperlinkCopy = newHyperlink;
  v10 = [(KNSlide *)self p_urlIsSlideSpecific:hyperlinkCopy];
  v11 = [(KNSlide *)self p_urlIsSlideSpecific:newHyperlinkCopy];
  if (v10)
  {
    v12 = [(KNSlide *)self p_slideNodeUUIDStringFromURL:hyperlinkCopy];
    slideNode = [(KNAbstractSlide *)self slideNode];
    [slideNode removeHyperlinkForStorage:storageCopy toSlideNode:v12];
  }

  if (v11)
  {
    v14 = [(KNSlide *)self p_slideNodeUUIDStringFromURL:newHyperlinkCopy];
    slideNode2 = [(KNAbstractSlide *)self slideNode];
    [slideNode2 addHyperlinkForStorage:storageCopy toSlideNode:v14];
  }
}

- (void)removeMapForStorage:(id)storage forHyperlink:(id)hyperlink
{
  storageCopy = storage;
  hyperlinkCopy = hyperlink;
  if ([(KNSlide *)self p_urlIsSlideSpecific:hyperlinkCopy])
  {
    v7 = [(KNSlide *)self p_slideNodeUUIDStringFromURL:hyperlinkCopy];
    slideNode = [(KNAbstractSlide *)self slideNode];
    [slideNode removeHyperlinkForStorage:storageCopy toSlideNode:v7];
  }
}

- (void)addMapForStorage:(id)storage forHyperlink:(id)hyperlink
{
  storageCopy = storage;
  hyperlinkCopy = hyperlink;
  if ([(KNSlide *)self p_urlIsSlideSpecific:hyperlinkCopy])
  {
    v7 = [(KNSlide *)self p_slideNodeUUIDStringFromURL:hyperlinkCopy];
    slideNode = [(KNAbstractSlide *)self slideNode];
    [slideNode addHyperlinkForStorage:storageCopy toSlideNode:v7];
  }
}

- (void)p_checkTemplateSlide
{
  templateSlide = [(KNSlide *)self templateSlide];

  if (!templateSlide)
  {
    templateSlide2 = [(KNSlide *)self templateSlide];

    if (!templateSlide2)
    {
      sub_275E59FF4(self);
    }
  }
}

- (id)paragraphIndexesOfTopLevelBullets
{
  bodyPlaceholder = [(KNAbstractSlide *)self bodyPlaceholder];
  textStorage = [bodyPlaceholder textStorage];

  if (textStorage)
  {
    [textStorage paragraphIndexesOfTopLevelBullets];
  }

  else
  {
    [MEMORY[0x277CCAA78] indexSet];
  }
  v4 = ;

  return v4;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v25.receiver = self;
  v25.super_class = KNSlide;
  [(KNAbstractSlide *)&v25 loadFromArchive:archive unarchiver:unarchiverCopy];
  v7 = *(archive + 4);
  if ((v7 & 0x200) != 0)
  {
    v8 = *(archive + 42);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_275D78284;
    v24[3] = &unk_27A6983B8;
    v24[4] = self;
    v9 = unarchiverCopy;
    [v9 readReferenceMessage:v8 class:objc_opt_class() protocol:0 completion:v24];

    v7 = *(archive + 4);
  }

  if ((v7 & 0x8000) != 0)
  {
    v10 = *(archive + 48);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_275D78290;
    v23[3] = &unk_27A6983E0;
    v23[4] = self;
    v11 = unarchiverCopy;
    [v11 readReferenceMessage:v10 class:objc_opt_class() protocol:0 completion:v23];
  }

  if (*(archive + 62) >= 1)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_275D78318;
    v22[3] = &unk_27A697A10;
    v22[4] = self;
    v12 = unarchiverCopy;
    [v12 readRepeatedReferenceMessage:archive + 240 class:objc_opt_class() protocol:0 completion:v22];
  }

  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_275D783A0;
  v20[4] = sub_275D783B0;
  v21 = 0;
  if ((*(archive + 18) & 8) != 0)
  {
    v13 = *(archive + 52);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_275D783B8;
    v19[3] = &unk_27A698408;
    v19[4] = v20;
    v14 = unarchiverCopy;
    [v14 readReferenceMessage:v13 class:objc_opt_class() protocol:0 completion:v19];
  }

  v15 = *(archive + 459);
  fileFormatVersion = [unarchiverCopy fileFormatVersion];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_275D783C8;
  v17[3] = &unk_27A698430;
  v18 = v15;
  v17[4] = self;
  v17[5] = v20;
  v17[6] = fileFormatVersion;
  [unarchiverCopy addFinalizeHandler:v17];
  _Block_object_dispose(v20, 8);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v30 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = KNSlide;
  archiverCopy = archiver;
  [(KNAbstractSlide *)&v28 saveToArchive:archive archiver:?];
  if ([(KNSlide *)self slideObjectsLayerWithTemplate])
  {
    [archiverCopy requiresDocumentVersion:*MEMORY[0x277D80958]];
  }

  templateSlide = self->_templateSlide;
  if (templateSlide)
  {
    *(archive + 4) |= 0x200u;
    v6 = *(archive + 42);
    if (!v6)
    {
      v7 = *(archive + 1);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C8F050](v7);
      *(archive + 42) = v6;
    }

    [archiverCopy setStrongReference:templateSlide message:v6];
  }

  note = [(KNSlide *)self note];
  if (note)
  {
    *(archive + 4) |= 0x8000u;
    v8 = *(archive + 48);
    if (!v8)
    {
      v9 = *(archive + 1);
      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
      }

      v8 = MEMORY[0x277C8F050](v9);
      *(archive + 48) = v8;
    }

    [archiverCopy setStrongReference:note message:v8];
  }

  v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_infosUsingObjectPlaceholderGeometry;
  v10 = [(NSMutableSet *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v10)
  {
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        childInfos = [(KNAbstractSlide *)self childInfos];
        v15 = [childInfos containsObject:v13];

        if (v15)
        {
          [v22 addObject:v13];
        }

        else
        {
          v16 = MEMORY[0x277D81150];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlide(PersistenceAdditions) saveToArchive:archiver:]"];
          v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlidePersistenceAdditions.mm"];
          [v16 handleFailureInFunction:v17 file:v18 lineNumber:194 isFatal:0 description:{"Object %@ was among _infosUnsingObjectPlaceholderGeometry but not among infos. We will attempt to repair this by discarding that object in save.", v13}];

          [MEMORY[0x277D81150] logBacktraceThrottled];
        }
      }

      v10 = [(NSMutableSet *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v10);
  }

  [archiverCopy setStrongReferenceSet:v22 message:archive + 240];
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = [unarchiverCopy messageWithDescriptor:off_2812EA908[32]];

  [(KNSlide *)self loadFromArchive:v5 unarchiver:unarchiverCopy];
  if ([unarchiverCopy hasPreUFFVersion])
  {
    preUFFVersion = [unarchiverCopy preUFFVersion];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_275D78C8C;
    v7[3] = &unk_27A698480;
    v7[4] = self;
    v7[5] = preUFFVersion;
    [unarchiverCopy addFinalizeHandler:v7];
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [archiverCopy messageWithNewFunction:sub_275D55CF8 descriptor:off_2812EA908[32]];

  [(KNSlide *)self saveToArchive:v4 archiver:archiverCopy];
}

@end
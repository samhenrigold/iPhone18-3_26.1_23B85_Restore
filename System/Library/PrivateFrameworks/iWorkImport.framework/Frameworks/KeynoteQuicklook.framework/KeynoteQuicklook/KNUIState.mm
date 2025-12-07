@interface KNUIState
- (CGPoint)canvasOffset;
- (CGPoint)desktopMainWindowOrigin;
- (CGSize)desktopMainContentSize;
- (KNSlideCollectionSelection)slideTreeSelection;
- (KNUIState)init;
- (NSString)debugDescription;
- (id)UIStateForChart:(id)chart;
- (id)archivedUIStateInContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver context:(id)context;
- (void)resetForInitialViewing;
- (void)setSelectionPath:(id)path;
- (void)setSlideTreeSelection:(id)selection withDocumentRoot:(id)root;
- (void)setUIState:(id)state forChart:(id)chart;
- (void)updateOutlineStateFromSlideTree:(id)tree;
@end

@implementation KNUIState

- (KNUIState)init
{
  v8.receiver = self;
  v8.super_class = KNUIState;
  result = [(KNUIState *)&v8 init];
  if (result)
  {
    result->_mobileCanvasViewScale = 9.0;
    result->_desktopCanvasViewScale = 1.0;
    result->_showsMobileOutline = 0;
    result->_showSlideGuides = 1;
    *&result->_showsComments = 1;
    __asm { FMOV            V0.2D, #1.0 }

    *&result->_lightTableZoomScale = _Q0;
    *&result->_slideViewFitsContentInWindow = 1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[KNUIState allocWithZone:?]];
  objc_storeStrong(&v4->_selectionPath, self->_selectionPath);
  v4->_mobileCanvasViewScale = self->_mobileCanvasViewScale;
  v4->_mobileCanvasOffset = self->_mobileCanvasOffset;
  v4->_desktopCanvasViewScale = self->_desktopCanvasViewScale;
  v4->_desktopCanvasOffset = self->_desktopCanvasOffset;
  v5 = [(KNMacUILayout *)self->_documentUILayout copy];
  documentUILayout = v4->_documentUILayout;
  v4->_documentUILayout = v5;

  v4->_slideViewFitsContentInWindow = self->_slideViewFitsContentInWindow;
  v4->_lightTableZoomScale = self->_lightTableZoomScale;
  v4->_lightTableHidesSkippedSlides = self->_lightTableHidesSkippedSlides;
  v4->_showsMobileLightTable = self->_showsMobileLightTable;
  v4->_mobileLightTableZoomScale = self->_mobileLightTableZoomScale;
  v4->_mobileLightTableHidesSkippedSlides = self->_mobileLightTableHidesSkippedSlides;
  v4->_showsMobileOutline = self->_showsMobileOutline;
  v4->_desktopMainWindowOrigin = self->_desktopMainWindowOrigin;
  v4->_desktopMainContentSize = self->_desktopMainContentSize;
  v4->_desktopElementListViewWidth = self->_desktopElementListViewWidth;
  v4->_desktopActivityStreamViewWidth = self->_desktopActivityStreamViewWidth;
  v4->_desktopNavigatorViewWidth = self->_desktopNavigatorViewWidth;
  v4->_desktopOutlineViewWidth = self->_desktopOutlineViewWidth;
  v4->_desktopPresenterNotesHeight = self->_desktopPresenterNotesHeight;
  v4->_desktopOutlineViewDefaultFixed = self->_desktopOutlineViewDefaultFixed;
  v7 = [(NSMutableDictionary *)self->_chartUIState mutableCopy];
  chartUIState = v4->_chartUIState;
  v4->_chartUIState = v7;

  v9 = [(NSSet *)self->_collapsedSlideNodes copy];
  collapsedSlideNodes = v4->_collapsedSlideNodes;
  v4->_collapsedSlideNodes = v9;

  v11 = [(NSSet *)self->_outlineCollapsedSlideNodes copy];
  outlineCollapsedSlideNodes = v4->_outlineCollapsedSlideNodes;
  v4->_outlineCollapsedSlideNodes = v11;

  v13 = [(NSSet *)self->_outlineHasBodySlideNodes copy];
  outlineHasBodySlideNodes = v4->_outlineHasBodySlideNodes;
  v4->_outlineHasBodySlideNodes = v13;

  v4->_showSlideGuides = self->_showSlideGuides;
  v4->_showMasterGuides = self->_showMasterGuides;
  v4->_showsComments = self->_showsComments;
  v4->_showsRuler = self->_showsRuler;
  v4->_commentsPrintingToggleEnabled = self->_commentsPrintingToggleEnabled;
  v15 = [(TSDFreehandDrawingToolkitUIState *)self->_freehandDrawingToolkitUIState copy];
  freehandDrawingToolkitUIState = v4->_freehandDrawingToolkitUIState;
  v4->_freehandDrawingToolkitUIState = v15;

  v17 = [(NSArray *)self->_elementListExpandedGroups copy];
  elementListExpandedGroups = v4->_elementListExpandedGroups;
  v4->_elementListExpandedGroups = v17;

  v4->_editingDisabled = self->_editingDisabled;
  return v4;
}

- (void)setSelectionPath:(id)path
{
  pathCopy = path;
  selectionPath = self->_selectionPath;
  p_selectionPath = &self->_selectionPath;
  if (selectionPath != pathCopy)
  {
    v8 = pathCopy;
    objc_storeStrong(p_selectionPath, path);
    pathCopy = v8;
  }
}

- (KNSlideCollectionSelection)slideTreeSelection
{
  selectionPath = [(KNUIState *)self selectionPath];
  v3 = [selectionPath mostSpecificSelectionOfClass:objc_opt_class()];

  return v3;
}

- (void)setSlideTreeSelection:(id)selection withDocumentRoot:(id)root
{
  v16[3] = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  rootCopy = root;
  if (!selectionCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNUIState setSlideTreeSelection:withDocumentRoot:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNUIState.mm"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:180 isFatal:0 description:{"invalid nil value for '%{public}s'", "slideTreeSelection"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v11 = [objc_alloc(MEMORY[0x277D80670]) initWithDocumentRoot:rootCopy];
  v12 = MEMORY[0x277D806C8];
  v16[0] = v11;
  v16[1] = selectionCopy;
  v13 = +[KNCanvasSelection emptySelection];
  v16[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v15 = [v12 selectionPathWithSelectionArray:v14];

  [(KNUIState *)self setSelectionPath:v15];
}

- (CGPoint)canvasOffset
{
  x = self->_mobileCanvasOffset.x;
  y = self->_mobileCanvasOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)archivedUIStateInContext:(id)context
{
  contextCopy = context;
  v5 = [[KNArchivedUIState alloc] initWithUIState:self context:contextCopy];

  return v5;
}

- (void)updateOutlineStateFromSlideTree:(id)tree
{
  v17 = *MEMORY[0x277D85DE8];
  treeCopy = tree;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  slideNodes = [treeCopy slideNodes];
  v8 = [slideNodes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(slideNodes);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 isCollapsedInOutlineView])
        {
          [v5 addObject:v11];
        }

        if ([v11 hasBodyInOutlineView])
        {
          [v6 addObject:v11];
        }
      }

      v8 = [slideNodes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(KNUIState *)self setOutlineCollapsedSlideNodes:v5];
  [(KNUIState *)self setOutlineHasBodySlideNodes:v6];
}

- (NSString)debugDescription
{
  v3 = [MEMORY[0x277D811A8] descriptionWithObject:self class:objc_opt_class() format:@" "];
  slideTreeSelection = [(KNUIState *)self slideTreeSelection];
  v5 = slideTreeSelection;
  if (slideTreeSelection)
  {
    [slideTreeSelection description];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(%@*)<null>", @"slideTreeSelection"];
  }
  v6 = ;

  [v3 addFieldValue:v6];
  [(KNUIState *)self canvasViewScale];
  [v3 addField:@"canvasViewScale" format:{@"%lf", v7}];
  [(KNUIState *)self canvasOffset];
  v8 = NSStringFromCGPoint(v32);
  [v3 addField:@"canvasOffset" value:v8];

  documentUILayout = [(KNUIState *)self documentUILayout];
  v10 = documentUILayout;
  if (documentUILayout)
  {
    [documentUILayout description];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(%@*)<null>", @"documentUILayout"];
  }
  v11 = ;

  [v3 addFieldValue:v11];
  if ([(KNUIState *)self slideViewFitsContentInWindow])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v3 addField:@"slideViewFitsContentInWindow" value:v12];
  [(KNUIState *)self lightTableZoomScale];
  [v3 addField:@"lightTableZoomScale" format:{@"%lf", v13}];
  if ([(KNUIState *)self lightTableHidesSkippedSlides])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  [v3 addField:@"lightTableHidesSkippedSlides" value:v14];
  [(KNUIState *)self desktopMainWindowOrigin];
  v15 = NSStringFromCGPoint(v33);
  [v3 addField:@"desktopMainWindowOrigin" value:v15];

  [(KNUIState *)self desktopMainContentSize];
  v16 = NSStringFromCGSize(v34);
  [v3 addField:@"desktopMainContentSize" value:v16];

  [(KNUIState *)self desktopElementListViewWidth];
  [v3 addField:@"desktopElementListViewWidth" format:{@"%lf", v17}];
  [(KNUIState *)self desktopActivityStreamViewWidth];
  [v3 addField:@"desktopActivityStreamViewWidth" format:{@"%lf", v18}];
  [(KNUIState *)self desktopNavigatorViewWidth];
  [v3 addField:@"desktopNavigatorViewWidth" format:{@"%lf", v19}];
  [(KNUIState *)self desktopOutlineViewWidth];
  [v3 addField:@"desktopOutlineViewWidth" format:{@"%lf", v20}];
  [(KNUIState *)self desktopPresenterNotesHeight];
  [v3 addField:@"desktopPresenterNotesHeight" format:{@"%lf", v21}];
  if ([(KNUIState *)self desktopOutlineViewDefaultFixed])
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  [v3 addField:@"desktopOutlineViewDefaultFixed" value:v22];
  if ([(KNUIState *)self showSlideGuides])
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  [v3 addField:@"showSlideGuides" value:v23];
  if ([(KNUIState *)self showMasterGuides])
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  [v3 addField:@"showMasterGuides" value:v24];
  if ([(KNUIState *)self showsComments])
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  [v3 addField:@"showsComments" value:v25];
  if ([(KNUIState *)self showsRuler])
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  [v3 addField:@"showsRuler" value:v26];
  if ([(KNUIState *)self commentsPrintingToggleEnabled])
  {
    v27 = @"YES";
  }

  else
  {
    v27 = @"NO";
  }

  [v3 addField:@"commentsPrintingToggleEnabled" value:v27];
  if ([(KNUIState *)self editingDisabled])
  {
    v28 = @"YES";
  }

  else
  {
    v28 = @"NO";
  }

  [v3 addField:@"editingDisabled" value:v28];
  descriptionString = [v3 descriptionString];

  return descriptionString;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver context:(id)context
{
  unarchiverCopy = unarchiver;
  contextCopy = context;
  v9 = *(archive + 16);
  if (v9 >= 1)
  {
    v10 = 8;
    do
    {
      v11 = *(*(archive + 9) + v10);
      chartUIState = self->_chartUIState;
      if (chartUIState)
      {
        v13 = chartUIState;
      }

      else
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v14 = self->_chartUIState;
      self->_chartUIState = v13;

      v15 = [objc_alloc(MEMORY[0x277D80038]) initWithArchive:v11];
      v16 = *(v11 + 48);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_275D8FFC0;
      v22[3] = &unk_27A698800;
      v22[4] = self;
      v17 = v15;
      v23 = v17;
      v18 = unarchiverCopy;
      v19 = objc_opt_class();
      if (v16)
      {
        v20 = v16;
      }

      else
      {
        v20 = MEMORY[0x277D80A18];
      }

      [v18 readWeakLazyReferenceMessage:v20 class:v19 protocol:0 completion:v22];

      v10 += 8;
      --v9;
    }

    while (v9);
  }
}

- (void)resetForInitialViewing
{
  self->_mobileCanvasViewScale = 9.0;
  self->_mobileCanvasOffset = *MEMORY[0x277CBF348];
  self->_showsMobileLightTable = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *&self->_lightTableZoomScale = _Q0;
  self->_showsMobileOutline = 0;
  [(NSMutableDictionary *)self->_chartUIState enumerateKeysAndObjectsUsingBlock:&unk_2884D4F50];

  [(KNUIState *)self setSelectionPath:0];
}

- (CGPoint)desktopMainWindowOrigin
{
  x = self->_desktopMainWindowOrigin.x;
  y = self->_desktopMainWindowOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)desktopMainContentSize
{
  width = self->_desktopMainContentSize.width;
  height = self->_desktopMainContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)UIStateForChart:(id)chart
{
  v4 = [MEMORY[0x277D80868] weakReferenceForObject:chart];
  v5 = [(NSMutableDictionary *)self->_chartUIState objectForKey:v4];

  return v5;
}

- (void)setUIState:(id)state forChart:(id)chart
{
  stateCopy = state;
  v6 = [MEMORY[0x277D80868] weakReferenceForObject:chart];
  chartUIState = self->_chartUIState;
  if (stateCopy)
  {
    if (chartUIState)
    {
      v8 = chartUIState;
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v9 = self->_chartUIState;
    self->_chartUIState = v8;

    [(NSMutableDictionary *)self->_chartUIState setObject:stateCopy forKey:v6];
  }

  else
  {
    [(NSMutableDictionary *)chartUIState removeObjectForKey:v6];
  }
}

@end
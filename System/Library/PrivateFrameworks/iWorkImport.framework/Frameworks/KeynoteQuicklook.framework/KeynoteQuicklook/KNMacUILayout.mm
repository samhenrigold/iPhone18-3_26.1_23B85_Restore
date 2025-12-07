@interface KNMacUILayout
+ (id)uiLayoutFromArchive:(const void *)archive unarchiver:(id)unarchiver context:(id)context;
- (BOOL)currentViewModeSupportsActivityStream;
- (BOOL)isEqual:(id)equal;
- (id)archivedUILayoutInContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)inspectorPaneHiddenState;
- (unint64_t)hash;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation KNMacUILayout

- (id)archivedUILayoutInContext:(id)context
{
  contextCopy = context;
  v5 = [[KNMacArchivedUILayout alloc] initWithUILayout:self context:contextCopy];

  return v5;
}

+ (id)uiLayoutFromArchive:(const void *)archive unarchiver:(id)unarchiver context:(id)context
{
  v6 = objc_alloc_init(KNMacMutableUILayout);
  v7 = v6;
  v8 = *(archive + 4);
  if ((v8 & 2) != 0)
  {
    [(KNMacMutableUILayout *)v6 setShowingSidebar:*(archive + 28)];
    v8 = *(archive + 4);
  }

  if (v8)
  {
    [(KNMacMutableUILayout *)v7 setSidebarViewMode:*(archive + 6) != 0];
  }

  v9 = *(archive + 4);
  if ((v9 & 4) != 0)
  {
    [(KNMacMutableUILayout *)v7 setShowingPresenterNotes:*(archive + 29)];
    v9 = *(archive + 4);
  }

  if ((v9 & 8) != 0)
  {
    [(KNMacMutableUILayout *)v7 setShowingLightTable:*(archive + 30)];
    v9 = *(archive + 4);
  }

  if ((v9 & 0x400) != 0)
  {
    [(KNMacUILayout *)v7 setShowingInspectorPane:*(archive + 40)];
    v9 = *(archive + 4);
  }

  if ((v9 & 0x40) != 0)
  {
    [(KNMacUILayout *)v7 setInspectorPaneAutoHidden:*(archive + 36)];
    v9 = *(archive + 4);
  }

  if ((v9 & 0x20) != 0)
  {
    v10 = *(archive + 8);
    if (v10 == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = v10 == 1;
    }

    [(KNMacMutableUILayout *)v7 setInspectorPaneViewMode:v11];
  }

  v12 = *(archive + 4);
  if ((v12 & 0x10) != 0)
  {
    [(KNMacMutableUILayout *)v7 setShowingTemplateSlides:*(archive + 31)];
    v12 = *(archive + 4);
  }

  if ((v12 & 0x80) != 0)
  {
    [(KNMacMutableUILayout *)v7 setShowingElementList:*(archive + 37)];
    v12 = *(archive + 4);
  }

  if ((v12 & 0x100) != 0)
  {
    [(KNMacMutableUILayout *)v7 setShowingActivityStream:*(archive + 38)];
    v12 = *(archive + 4);
  }

  if ((v12 & 0x200) != 0)
  {
    [(KNMacMutableUILayout *)v7 setActivityStreamWasShown:*(archive + 39)];
  }

  return v7;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v6 = [(KNMacUILayout *)self isShowingSidebar:archive];
  *(archive + 4) |= 2u;
  *(archive + 28) = v6;
  v7 = [(KNMacUILayout *)self sidebarViewMode]!= 0;
  *(archive + 4) |= 1u;
  *(archive + 6) = v7;
  isShowingPresenterNotes = [(KNMacUILayout *)self isShowingPresenterNotes];
  *(archive + 4) |= 4u;
  *(archive + 29) = isShowingPresenterNotes;
  isShowingLightTable = [(KNMacUILayout *)self isShowingLightTable];
  *(archive + 4) |= 8u;
  *(archive + 30) = isShowingLightTable;
  showingInspectorPane = [(KNMacUILayout *)self showingInspectorPane];
  *(archive + 4) |= 0x400u;
  *(archive + 40) = showingInspectorPane;
  inspectorPaneAutoHidden = [(KNMacUILayout *)self inspectorPaneAutoHidden];
  *(archive + 4) |= 0x40u;
  *(archive + 36) = inspectorPaneAutoHidden;
  inspectorPaneViewMode = [(KNMacUILayout *)self inspectorPaneViewMode];
  if (inspectorPaneViewMode == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = inspectorPaneViewMode == 1;
  }

  *(archive + 4) |= 0x20u;
  *(archive + 8) = v13;
  isShowingTemplateSlides = [(KNMacUILayout *)self isShowingTemplateSlides];
  *(archive + 4) |= 0x10u;
  *(archive + 31) = isShowingTemplateSlides;
  isShowingElementList = [(KNMacUILayout *)self isShowingElementList];
  *(archive + 4) |= 0x80u;
  *(archive + 37) = isShowingElementList;
  isShowingActivityStream = [(KNMacUILayout *)self isShowingActivityStream];
  *(archive + 4) |= 0x100u;
  *(archive + 38) = isShowingActivityStream;
  activityStreamWasShown = [(KNMacUILayout *)self activityStreamWasShown];
  *(archive + 4) |= 0x200u;
  *(archive + 39) = activityStreamWasShown;
}

- (BOOL)currentViewModeSupportsActivityStream
{
  if ([(KNMacUILayout *)self sidebarViewMode]== 1)
  {
    return 0;
  }

  else
  {
    return ![(KNMacUILayout *)self isShowingLightTable];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    isShowingSidebar = [(KNMacUILayout *)self isShowingSidebar];
    if (isShowingSidebar == [v5 isShowingSidebar] && (v7 = -[KNMacUILayout p_isShowingNavigatorViewInSidebar](self, "p_isShowingNavigatorViewInSidebar"), v7 == objc_msgSend(v5, "p_isShowingNavigatorViewInSidebar")) && (v8 = -[KNMacUILayout isShowingPresenterNotes](self, "isShowingPresenterNotes"), v8 == objc_msgSend(v5, "isShowingPresenterNotes")) && (v9 = -[KNMacUILayout isShowingLightTable](self, "isShowingLightTable"), v9 == objc_msgSend(v5, "isShowingLightTable")) && (v10 = -[KNMacUILayout inspectorPaneHiddenState](self, "inspectorPaneHiddenState"), v10 == objc_msgSend(v5, "inspectorPaneHiddenState")) && (v11 = -[KNMacUILayout inspectorPaneViewMode](self, "inspectorPaneViewMode"), v11 == objc_msgSend(v5, "inspectorPaneViewMode")) && (v12 = -[KNMacUILayout isShowingTemplateSlides](self, "isShowingTemplateSlides"), v12 == objc_msgSend(v5, "isShowingTemplateSlides")) && (v13 = -[KNMacUILayout isShowingElementList](self, "isShowingElementList"), v13 == objc_msgSend(v5, "isShowingElementList")) && (v14 = -[KNMacUILayout isShowingActivityStream](self, "isShowingActivityStream"), v14 == objc_msgSend(v5, "isShowingActivityStream")))
    {
      activityStreamWasShown = [(KNMacUILayout *)self activityStreamWasShown];
      v15 = activityStreamWasShown ^ [v5 activityStreamWasShown] ^ 1;
    }

    else
    {
      LOBYTE(v15) = 0;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  isShowingSidebar = [(KNMacUILayout *)self isShowingSidebar];
  p_isShowingNavigatorViewInSidebar = [(KNMacUILayout *)self p_isShowingNavigatorViewInSidebar];
  v5 = 2;
  if (!p_isShowingNavigatorViewInSidebar)
  {
    v5 = 0;
  }

  v6 = v5 | isShowingSidebar;
  if ([(KNMacUILayout *)self isShowingPresenterNotes])
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  isShowingLightTable = [(KNMacUILayout *)self isShowingLightTable];
  v9 = 16;
  if (!isShowingLightTable)
  {
    v9 = 0;
  }

  v10 = v6 | v7 | v9 | (32 * [(KNMacUILayout *)self inspectorPaneHiddenState]);
  v11 = v10 | ([(KNMacUILayout *)self inspectorPaneViewMode]<< 7);
  if ([(KNMacUILayout *)self isShowingTemplateSlides])
  {
    v12 = 512;
  }

  else
  {
    v12 = 0;
  }

  isShowingElementList = [(KNMacUILayout *)self isShowingElementList];
  v14 = 1024;
  if (!isShowingElementList)
  {
    v14 = 0;
  }

  v15 = v12 | v14;
  isShowingActivityStream = [(KNMacUILayout *)self isShowingActivityStream];
  v17 = 2048;
  if (!isShowingActivityStream)
  {
    v17 = 0;
  }

  v18 = v15 | v17;
  activityStreamWasShown = [(KNMacUILayout *)self activityStreamWasShown];
  v20 = 4096;
  if (!activityStreamWasShown)
  {
    v20 = 0;
  }

  return v11 | v18 | v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[KNMacUILayout allocWithZone:?]];
  *(result + 10) = self->_showingSidebar;
  *(result + 11) = self->_showingNavigatorViewInSidebar;
  *(result + 12) = self->_showingPresenterNotes;
  *(result + 13) = self->_showingLightTable;
  *(result + 8) = self->_showingInspectorPane;
  *(result + 9) = self->_inspectorPaneAutoHidden;
  *(result + 3) = self->_inspectorPaneViewMode;
  *(result + 14) = self->_showingTemplateSlides;
  *(result + 15) = self->_showingElementList;
  *(result + 16) = self->_showingActivityStream;
  *(result + 17) = self->_activityStreamWasShown;
  return result;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [[KNMacMutableUILayout allocWithZone:?]];
  [(KNMacMutableUILayout *)v4 setShowingSidebar:[(KNMacUILayout *)self isShowingSidebar]];
  [(KNMacMutableUILayout *)v4 setSidebarViewMode:[(KNMacUILayout *)self sidebarViewMode]];
  [(KNMacMutableUILayout *)v4 setShowingPresenterNotes:[(KNMacUILayout *)self isShowingPresenterNotes]];
  [(KNMacMutableUILayout *)v4 setShowingLightTable:[(KNMacUILayout *)self isShowingLightTable]];
  [(KNMacMutableUILayout *)v4 setInspectorPaneHiddenState:[(KNMacUILayout *)self inspectorPaneHiddenState]];
  [(KNMacMutableUILayout *)v4 setInspectorPaneViewMode:[(KNMacUILayout *)self inspectorPaneViewMode]];
  [(KNMacMutableUILayout *)v4 setShowingTemplateSlides:[(KNMacUILayout *)self isShowingTemplateSlides]];
  [(KNMacMutableUILayout *)v4 setShowingElementList:[(KNMacUILayout *)self isShowingElementList]];
  [(KNMacMutableUILayout *)v4 setShowingActivityStream:[(KNMacUILayout *)self isShowingActivityStream]];
  [(KNMacMutableUILayout *)v4 setActivityStreamWasShown:[(KNMacUILayout *)self activityStreamWasShown]];
  return v4;
}

- (int64_t)inspectorPaneHiddenState
{
  if (self->_inspectorPaneAutoHidden)
  {
    return 2;
  }

  else
  {
    return !self->_showingInspectorPane;
  }
}

@end
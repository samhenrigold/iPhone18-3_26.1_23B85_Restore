@interface TUIExpandableLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidth;
- (BOOL)_isExpanded;
- (BOOL)shouldUseDefaultGuideForLayout:(id)layout edge:(unint64_t)edge;
- (TUIExpandableContentLayout)expandableChild;
- (TUILayout)expandedContentChild;
- (TUILayout)moreChild;
- (double)computedHeightAbovePivot;
- (id)effectiveGuideBottom;
- (id)effectiveGuideLeading;
- (id)effectiveGuideTop;
- (id)effectiveGuideTrailing;
- (id)guideProviderForLayout:(id)layout;
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
- (void)_examineChildrenIfNeeded;
- (void)computeLayout;
- (void)onChildrenUpdated;
@end

@implementation TUIExpandableLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  contextCopy = context;
  v7 = objc_msgSend_box(self);
  viewState = [v7 viewState];

  v9 = 0;
  if (kind >= 4 && viewState)
  {
    v10 = objc_opt_new();
    v11 = objc_msgSend_box(self);
    pointerRefId = [v11 pointerRefId];
    v13 = pointerRefId;
    if (pointerRefId)
    {
      refId = pointerRefId;
    }

    else
    {
      v15 = viewState;
      WeakRetained = objc_loadWeakRetained(&self->_moreChild);
      v17 = objc_msgSend_box(WeakRetained);
      refId = [v17 refId];

      viewState = v15;
    }

    v36 = refId;

    v18 = objc_msgSend_box(self);
    pointerStyle = [v18 pointerStyle];
    v20 = [TUIPointer pointerWithRefId:refId style:pointerStyle];

    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_294F4;
    v40[3] = &unk_25E7C0;
    v40[4] = self;
    v21 = contextCopy;
    v41 = v21;
    v42 = v10;
    v35 = v10;
    [v21 evaluateWithPointer:v20 block:v40];
    v43 = @"press";
    v22 = objc_alloc_init(TUIElementBehaviorArgumentsMap);
    v44 = v22;
    [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v34 = v37 = contextCopy;

    v23 = [[TUIElementTriggerBehaviorMap alloc] initWithMap:v34];
    v24 = [TUIElementActionTriggerHandler alloc];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_295D4;
    v38[3] = &unk_25E7E8;
    v25 = viewState;
    v39 = v25;
    v26 = [(TUIElementActionTriggerHandler *)v24 initWithActionsData:v23 block:v38];
    v27 = objc_msgSend_box(self);
    [v27 identifier];
    v29 = v28 = viewState;
    LOWORD(v33) = 0;
    LOBYTE(v32) = 0;
    LOBYTE(v31) = 1;
    v9 = [TUIControlView renderModelWithStateToButtonAttributes:0 stateToRenderModel:v35 imageModelIDToResource:0 actionHandler:v26 viewState:v25 linkEntities:0 type:1.0 role:UIEdgeInsetsZero.top userInterfaceStyle:UIEdgeInsetsZero.left enabled:UIEdgeInsetsZero.bottom pressScale:UIEdgeInsetsZero.right touchInsets:0 identifier:0 style:0 pointer:v31 focusStyle:v29 menu:0 contextMenuIsPrimaryAction:v20 name:0 axAttributes:0 enableBackgroundForHighlightPreview:v32 enableShadowForHighlightPreview:0, 0, v33];

    viewState = v28;
    [(TUILayout *)self renderModelSizeWithContext:v21];
    [v9 setSize:?];

    contextCopy = v37;
  }

  return v9;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth
{
  v3 = objc_msgSend_expandableChild(self, a3);
  validatedIntrinsicWidthConsideringSpecified = [v3 validatedIntrinsicWidthConsideringSpecified];

  return validatedIntrinsicWidthConsideringSpecified;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight
{
  v3 = objc_msgSend_expandableChild(self, a3);
  validatedIntrinsicHeightConsideringSpecified = [v3 validatedIntrinsicHeightConsideringSpecified];

  return validatedIntrinsicHeightConsideringSpecified;
}

- (double)computedHeightAbovePivot
{
  v2 = objc_msgSend_expandableChild(self, a2);
  [v2 computedHeightAbovePivot];
  v4 = v3;

  return v4;
}

- (void)onChildrenUpdated
{
  v3.receiver = self;
  v3.super_class = TUIExpandableLayout;
  [(TUILayout *)&v3 onChildrenUpdated];
  objc_storeWeak(&self->_expandableChild, 0);
  objc_storeWeak(&self->_expandedContentChild, 0);
  objc_storeWeak(&self->_moreChild, 0);
  self->_didExamineChildren = 0;
}

- (void)computeLayout
{
  _isExpanded = [(TUIExpandableLayout *)self _isExpanded];
  v4 = objc_msgSend_expandableChild(self);
  v5 = _isExpanded ^ 1;
  v6 = (v4 != 0) & (_isExpanded ^ 1);

  if (v6 == 1)
  {
    moreChild = [(TUIExpandableLayout *)self moreChild];
    objc_msgSend_validateLayout(moreChild);

    moreChild2 = [(TUIExpandableLayout *)self moreChild];
    objc_msgSend_computedTransformedSize(moreChild2);
    v10 = v9;
    v11 = objc_msgSend_expandableChild(self);
    [v11 setExpandableMoreWidth:v10];
  }

  [(TUILayout *)self flexedWidth];
  v13 = v12;
  v14 = objc_msgSend_expandableChild(self);
  [v14 setFlexedWidth:v13];

  [(TUILayout *)self flexedHeight];
  v16 = v15;
  v17 = objc_msgSend_expandableChild(self);
  [v17 setFlexedHeight:v16];

  [(TUILayout *)self computeWidth];
  v19 = v18;
  v20 = objc_msgSend_expandableChild(self);
  [v20 setContainingWidth:v19];

  [(TUILayout *)self containingHeight];
  [(TUILayout *)self containingHeight];
  v22 = v21;
  v23 = objc_msgSend_expandableChild(self);
  [v23 setContainingHeight:v22];

  v24 = objc_msgSend_expandableChild(self);
  objc_msgSend_validateLayout(v24);

  v25 = objc_msgSend_expandableChild(self);
  objc_msgSend_computedTransformedSize(v25);
  v27 = v26;
  v29 = v28;

  v30 = objc_msgSend_expandableChild(self);
  expandableContentIsTruncated = [v30 expandableContentIsTruncated];

  v32 = v5 & expandableContentIsTruncated;
  moreChild3 = [(TUIExpandableLayout *)self moreChild];
  [moreChild3 setHidden:v6 & v32 ^ 1];

  expandedContentChild = [(TUIExpandableLayout *)self expandedContentChild];
  [expandedContentChild setHidden:v32];

  if ((((v6 & v32) ^ 1) & 1) == 0)
  {
    v35 = objc_msgSend_expandableChild(self);
    [v35 expandableMoreXOffset];
    v37 = v36;

    v38 = objc_msgSend_expandableChild(self);
    [v38 computedOrigin];
    v40 = v39;
    v41 = objc_msgSend_expandableChild(self);
    [v41 computedHeightAbovePivot];
    v43 = v40 + v42;
    moreChild4 = [(TUIExpandableLayout *)self moreChild];
    [moreChild4 computedHeightAbovePivot];
    v46 = v43 - v45;

    moreChild5 = [(TUIExpandableLayout *)self moreChild];
    [(TUIVStack *)moreChild5 setComputedOrigin:v37, v46];
LABEL_8:

    goto LABEL_9;
  }

  expandedContentChild2 = [(TUIExpandableLayout *)self expandedContentChild];
  if (expandedContentChild2)
  {
    v49 = expandedContentChild2;
    expandedContentChild3 = [(TUIExpandableLayout *)self expandedContentChild];
    hidden = [expandedContentChild3 hidden];

    if ((hidden & 1) == 0)
    {
      v52 = [TUIVStack alloc];
      v53 = objc_msgSend_expandableChild(self);
      v58[0] = v53;
      expandedContentChild4 = [(TUIExpandableLayout *)self expandedContentChild];
      v58[1] = expandedContentChild4;
      v55 = [NSArray arrayWithObjects:v58 count:2];
      moreChild5 = [(TUIVStack *)v52 initWithLayout:self children:v55];

      [(TUILayout *)self flexedHeight];
      [(TUIVStack *)moreChild5 setFlexedHeight:?];
      [(TUIVStack *)moreChild5 setWidth:v19];
      [(TUIVStack *)moreChild5 computeLayoutWithOffset:CGPointZero.x, CGPointZero.y];
      [(TUIVStack *)moreChild5 computedSize];
      v27 = v56;
      v29 = v57;
      goto LABEL_8;
    }
  }

LABEL_9:
  [(TUILayout *)self setComputedNaturalSize:v27, v29];
}

- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidth
{
  v3 = objc_msgSend_expandableChild(self, a3);
  computedContentWidth = [v3 computedContentWidth];

  return computedContentWidth;
}

- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeight
{
  v3 = objc_msgSend_expandableChild(self, a3);
  computedContentHeight = [v3 computedContentHeight];

  return computedContentHeight;
}

- (id)guideProviderForLayout:(id)layout
{
  layoutCopy = layout;
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  v6 = [layoutAncestor guideProviderForLayout:layoutCopy];

  return v6;
}

- (BOOL)shouldUseDefaultGuideForLayout:(id)layout edge:(unint64_t)edge
{
  layoutCopy = layout;
  layoutAncestor = [layoutCopy layoutAncestor];
  if (layoutAncestor == self)
  {
    v9 = objc_msgSend_box(layoutCopy);
    if ([v9 role])
    {
      v8 = 0;
    }

    else
    {
      layoutAncestor2 = [(TUILayout *)self layoutAncestor];
      v8 = [layoutAncestor2 shouldUseDefaultGuideForLayout:self edge:edge];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)effectiveGuideTop
{
  v2 = objc_msgSend_expandableChild(self, a2);
  effectiveGuideTop = [v2 effectiveGuideTop];

  return effectiveGuideTop;
}

- (id)effectiveGuideBottom
{
  v2 = objc_msgSend_expandableChild(self, a2);
  effectiveGuideBottom = [v2 effectiveGuideBottom];

  return effectiveGuideBottom;
}

- (id)effectiveGuideLeading
{
  v2 = objc_msgSend_expandableChild(self, a2);
  effectiveGuideLeading = [v2 effectiveGuideLeading];

  return effectiveGuideLeading;
}

- (id)effectiveGuideTrailing
{
  v2 = objc_msgSend_expandableChild(self, a2);
  effectiveGuideTrailing = [v2 effectiveGuideTrailing];

  return effectiveGuideTrailing;
}

- (TUIExpandableContentLayout)expandableChild
{
  [(TUIExpandableLayout *)self _examineChildrenIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_expandableChild);

  return WeakRetained;
}

- (TUILayout)moreChild
{
  [(TUIExpandableLayout *)self _examineChildrenIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_moreChild);

  return WeakRetained;
}

- (void)_examineChildrenIfNeeded
{
  if (![(TUIExpandableLayout *)self didExamineChildren])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v3 = objc_msgSend_children(self);
    v4 = [v3 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (!v4)
    {
      goto LABEL_28;
    }

    v5 = v4;
    v6 = *v35;
    while (1)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v34 + 1) + 8 * i);
        v9 = objc_msgSend_box(v8);
        role = [v9 role];

        if (role)
        {
          v11 = objc_msgSend_box(v8);
          role2 = [v11 role];

          if (role2 == &dword_0 + 2)
          {
            v13 = 120;
            WeakRetained = objc_loadWeakRetained(&self->_expandedContentChild);

            if (WeakRetained)
            {
              v16 = TUIDefaultLog(v15);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                sub_1998D4(v39, self);
              }

              goto LABEL_24;
            }
          }

          else
          {
            v30 = objc_msgSend_box(v8);
            role3 = [v30 role];

            if (role3 != &dword_4 + 1)
            {
              continue;
            }

            v13 = 128;
            v32 = objc_loadWeakRetained(&self->_moreChild);

            if (v32)
            {
              v16 = TUIDefaultLog(v33);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                sub_199878(v38, self);
              }

LABEL_24:
            }
          }

          objc_storeWeak((&self->super.super.isa + v13), v8);
          continue;
        }

        v17 = objc_loadWeakRetained(&self->_expandableChild);

        if (v17)
        {
          v19 = TUIDefaultLog(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_199930(v41, self);
          }
        }

        v20 = objc_opt_class();
        v26 = TUIClassAndProtocolCast(v8, v20, 1, v21, v22, v23, v24, v25, &OBJC_PROTOCOL___TUIExpandableContentLayout);
        objc_storeWeak(&self->_expandableChild, v26);

        v27 = objc_loadWeakRetained(&self->_expandableChild);
        if (!v27)
        {
          v29 = TUIDefaultLog(v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_19998C(v40, self);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (!v5)
      {
LABEL_28:

        [(TUIExpandableLayout *)self setDidExamineChildren:1];
        return;
      }
    }
  }
}

- (BOOL)_isExpanded
{
  v2 = objc_msgSend_box(self, a2);
  viewState = [v2 viewState];
  value = [viewState value];
  bOOLValue = [value BOOLValue];

  return bOOLValue;
}

- (TUILayout)expandedContentChild
{
  WeakRetained = objc_loadWeakRetained(&self->_expandedContentChild);

  return WeakRetained;
}

@end
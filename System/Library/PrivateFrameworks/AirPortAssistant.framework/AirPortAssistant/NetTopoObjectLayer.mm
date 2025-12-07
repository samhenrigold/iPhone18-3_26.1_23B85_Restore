@interface NetTopoObjectLayer
+ (BOOL)needsDisplayForKey:(id)key;
- ($E32549A47AE6FE03C4AA404FAEB37148)getConnectionAttachmentLocations;
- (CGPoint)layoutOrigin;
- (CGRect)getFrameContainingAllSublayers;
- (CGRect)getUserInteractionBounds;
- (CGSize)boundsSizeConstraint;
- (NetTopoObjectLayer)init;
- (NetTopoObjectLayer)initWithUIStyle:(int)style andOwningView:(id)view;
- (NetTopoObjectLayer)parentDevice;
- (id)childAtIndex:(unint64_t)index;
- (id)debugDescription;
- (id)describeOne:(id)one uiLayer:(id)layer indent:(unint64_t)indent;
- (id)firstChild;
- (id)lastChild;
- (void)addChild:(id)child;
- (void)dealloc;
- (void)deallocStatusImages;
- (void)drawInContext:(CGContext *)context;
- (void)initNetTopoObjectLayerCommonWithStyle:(int)style andOwningView:(id)view;
- (void)insertChild:(id)child atIndex:(unint64_t)index;
- (void)layoutSublayers;
- (void)loadStatusImagesForScale:(double)scale;
- (void)pickCorrectImagesForContentsScale:(double)scale;
- (void)removeChild:(id)child;
- (void)setBoundsSizeConstraint:(CGSize)constraint;
- (void)setLabel:(id)label;
- (void)setOwningView:(id)view;
- (void)setSecondaryLabel:(id)label;
- (void)setStatusBadgeImage:(id)image;
- (void)setStatusBadgeImagePriv:(id)priv;
- (void)setStatusLightMode:(unsigned int)mode;
- (void)setStatusLightStateFromMode;
- (void)setTopoBadgeNumber:(unint64_t)number;
- (void)setTopoProgressValue:(float)value;
- (void)statusLightUpdateTimer:(id)timer;
@end

@implementation NetTopoObjectLayer

- (void)initNetTopoObjectLayerCommonWithStyle:(int)style andOwningView:(id)view
{
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer initNetTopoObjectLayerCommonWithStyle:andOwningView:]", 800, "%@\n", self);
  }

  self->_topoStyle = style;
  objc_msgSend_setOwningView_(self, a2, view, view);
  objc_msgSend_setEdgeAntialiasingMask_(self, v7, 0, v8);
  self->_layoutScale = 1.0;
  self->_isExpanded = 1;
  self->_smallSize = 0;
  self->_selectable = 1;
  self->_boundsSizeConstraint = *MEMORY[0x277CBF3A8];
  self->_parent = 0;
  self->_children = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = *MEMORY[0x277CBF3A0];
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  self->_imageFrame.origin = *MEMORY[0x277CBF3A0];
  self->_imageFrame.size = v10;
  self->_imageSelectionFrame.origin = v9;
  self->_imageSelectionFrame.size = v10;
  self->_selectionColor = sub_23EBFD680(0.0, 0.0, 0.0, 0.3);
  v14 = sub_23EC13544(view, v11, v12, v13);
  v15 = 20.0;
  v16 = 14.0;
  if (v14 == 1)
  {
    v15 = 14.0;
    v16 = 10.0;
  }

  self->_selectionCornerRadius = v15;
  self->_selectionRectOutset = v16;
  self->_labelUnselectedFillColor = sub_23EBFD680(1.0, 1.0, 1.0, 0.0);
  self->_labelSelectedFillColor = sub_23EBFD680(1.0, 1.0, 1.0, 0.0);
  v17 = sub_23EBFD680(1.0, 1.0, 1.0, 0.0);
  self->_labelSelectedFillColor2 = v17;
  if (sub_23EC132F8(v17, v18, v19, v20))
  {
    v24 = objc_msgSend__secondaryLabelColor(MEMORY[0x277D75348], v21, v22, v23);
    v28 = objc_msgSend_CGColor(v24, v25, v26, v27);
    v29 = CGColorRetain(v28);
  }

  else
  {
    v29 = sub_23EBFD680(0.305882353, 0.337254902, 0.423529412, 1.0);
  }

  self->_labelUnselectedTextColor = v29;
  v33 = objc_msgSend__tertiaryLabelColor(MEMORY[0x277D75348], v30, v31, v32);
  v37 = objc_msgSend_CGColor(v33, v34, v35, v36);
  self->_secondaryLabelUnselectedTextColor = CGColorRetain(v37);
  self->_secondaryLabelSelectedTextColor = sub_23EBFD680(0.4, 0.4, 0.4, 1.0);
  self->_labelSelectedTextColor = sub_23EBFD680(1.0, 1.0, 1.0, 1.0);
  objc_msgSend_contentsScale(self, v38, v39, v40);
  objc_msgSend_loadStatusImagesForScale_(self, v41, v42, v43);
  objc_msgSend_setZPosition_(self, v44, v45, v46, 1000.0);
  v50 = sub_23EC13544(view, v47, v48, v49);
  if (v50 == 2)
  {
    v54 = 292.0;
  }

  else
  {
    v54 = 144.0;
  }

  if (v50 == 2)
  {
    v55 = 292.0;
  }

  else
  {
    v55 = 124.0;
  }

  objc_msgSend_setFrame_(self, v51, v52, v53, 0.0, 0.0, v55, v54);
}

- (NetTopoObjectLayer)initWithUIStyle:(int)style andOwningView:(id)view
{
  v5 = *&style;
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer initWithUIStyle:andOwningView:]", 800, "\n");
  }

  v11.receiver = self;
  v11.super_class = NetTopoObjectLayer;
  v7 = [(NetTopoObjectLayer *)&v11 init];
  v9 = v7;
  if (v7)
  {
    objc_msgSend_initNetTopoObjectLayerCommonWithStyle_andOwningView_(v7, v8, v5, view);
  }

  return v9;
}

- (NetTopoObjectLayer)init
{
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer init]", 800, "\n");
  }

  v7.receiver = self;
  v7.super_class = NetTopoObjectLayer;
  v3 = [(NetTopoObjectLayer *)&v7 init];
  v5 = v3;
  if (v3)
  {
    objc_msgSend_initNetTopoObjectLayerCommonWithStyle_andOwningView_(v3, v4, 0, 0);
  }

  return v5;
}

- (void)dealloc
{
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer dealloc]", 800, "%@\n", self);
  }

  objc_msgSend_setObjectImage_(self, v3, 0, v4);
  objc_msgSend_deallocStatusImages(self, v5, v6, v7);

  CGColorRelease(self->_selectionColor);
  CGColorRelease(self->_labelUnselectedFillColor);
  CGColorRelease(self->_labelSelectedFillColor);
  CGColorRelease(self->_labelUnselectedTextColor);
  CGColorRelease(self->_labelSelectedTextColor);
  CGColorRelease(self->_labelSelectedFillColor2);
  CGColorRelease(self->_secondaryLabelUnselectedTextColor);
  CGColorRelease(self->_secondaryLabelSelectedTextColor);
  v8.receiver = self;
  v8.super_class = NetTopoObjectLayer;
  [(NetTopoObjectLayer *)&v8 dealloc];
}

- (void)pickCorrectImagesForContentsScale:(double)scale
{
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer pickCorrectImagesForContentsScale:]", 800, "scale = %.1f\n", scale);
  }

  objc_msgSend_loadStatusImagesForScale_(self, a2, v3, v4, scale);
  v11 = objc_msgSend_statusLightMode(self, v7, v8, v9);

  objc_msgSend_setStatusLightMode_(self, v10, v11, v12);
}

- (NetTopoObjectLayer)parentDevice
{
  if (!objc_msgSend_parent(self, a2, v2, v3))
  {
    return 0;
  }

  objc_msgSend_parent(self, v5, v6, v7);
  v8 = objc_opt_class();
  if (v8 != objc_opt_class())
  {
    return 0;
  }

  v13 = objc_msgSend_parent(self, v9, v10, v11);

  return objc_msgSend_parent(v13, v14, v15, v16);
}

- (id)childAtIndex:(unint64_t)index
{
  if (dword_27E382FE8 <= 800 && (dword_27E382FE8 != -1 || sub_23EB74AC8(&dword_27E382FE8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FE8, "[NetTopoObjectLayer childAtIndex:]", 800, "index %d  _children %@\n", index, self->_children);
  }

  if (objc_msgSend_count(self->_children, a2, index, v3) <= index)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_objectAtIndex_(self->_children, v6, index, v7);
  }

  if (dword_27E382FE8 <= 800 && (dword_27E382FE8 != -1 || sub_23EB74AC8(&dword_27E382FE8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FE8, "[NetTopoObjectLayer childAtIndex:]", 800, "returning foundChild %@\n", v8);
  }

  return v8;
}

- (id)firstChild
{
  if (dword_27E382FE8 <= 800 && (dword_27E382FE8 != -1 || sub_23EB74AC8(&dword_27E382FE8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FE8, "[NetTopoObjectLayer firstChild]", 800, "getting first child for %@\n", self);
  }

  v4 = objc_msgSend_childAtIndex_(self, a2, 0, v2);
  if (dword_27E382FE8 <= 800 && (dword_27E382FE8 != -1 || sub_23EB74AC8(&dword_27E382FE8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FE8, "[NetTopoObjectLayer firstChild]", 800, "returning firstChild %@\n", v4);
  }

  return v4;
}

- (id)lastChild
{
  if (dword_27E382FE8 <= 800 && (dword_27E382FE8 != -1 || sub_23EB74AC8(&dword_27E382FE8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FE8, "[NetTopoObjectLayer lastChild]", 800, "getting last child for %@\n", self);
  }

  v5 = objc_msgSend_count(self->_children, a2, v2, v3);
  if (v5)
  {
    v8 = objc_msgSend_childAtIndex_(self, v6, v5 - 1, v7);
  }

  else
  {
    v8 = 0;
  }

  if (dword_27E382FE8 <= 800 && (dword_27E382FE8 != -1 || sub_23EB74AC8(&dword_27E382FE8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FE8, "[NetTopoObjectLayer lastChild]", 800, "returning lastChild %@\n", v8);
  }

  return v8;
}

- (void)insertChild:(id)child atIndex:(unint64_t)index
{
  if (dword_27E382FE8 <= 800 && (dword_27E382FE8 != -1 || sub_23EB74AC8(&dword_27E382FE8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FE8, "[NetTopoObjectLayer insertChild:atIndex:]", 800, "inserting child %@ at index %d\n", child, index);
  }

  if (objc_msgSend_count(self->_children, a2, child, index) <= index)
  {
    if (dword_27E382FE8 <= 800 && (dword_27E382FE8 != -1 || sub_23EB74AC8(&dword_27E382FE8, 0x320u)))
    {
      sub_23EB75374(&dword_27E382FE8, "[NetTopoObjectLayer insertChild:atIndex:]", 800, "growing child array\n");
    }

    objc_msgSend_addChild_(self, v7, child, v8);
  }

  else
  {
    if (dword_27E382FE8 <= 800 && (dword_27E382FE8 != -1 || sub_23EB74AC8(&dword_27E382FE8, 0x320u)))
    {
      v9 = objc_msgSend_objectAtIndex_(self->_children, v7, index, v8);
      sub_23EB75374(&dword_27E382FE8, "[NetTopoObjectLayer insertChild:atIndex:]", 800, "replacing existing object %@\n", v9);
    }

    objc_msgSend_replaceObjectAtIndex_withObject_(self->_children, v7, index, child);

    objc_msgSend_setParent_(child, v10, self, v11);
  }
}

- (void)addChild:(id)child
{
  if (objc_msgSend_indexOfObjectIdenticalTo_(self->_children, a2, child, v3) == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_addObject_(self->_children, v6, child, v7);

    objc_msgSend_setParent_(child, v8, self, v9);
  }

  else if (dword_27E382FE8 <= 800 && (dword_27E382FE8 != -1 || sub_23EB74AC8(&dword_27E382FE8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FE8, "[NetTopoObjectLayer addChild:]", 800, "new child %@ is already in the child array\n", child);
  }
}

- (void)removeChild:(id)child
{
  if (child && objc_msgSend_containsObject_(self->_children, a2, child, v3))
  {
    objc_msgSend_setParent_(child, v6, 0, v7);
    children = self->_children;

    objc_msgSend_removeObject_(children, v8, child, v9);
  }

  else if (dword_27E382FE8 <= 800 && (dword_27E382FE8 != -1 || sub_23EB74AC8(&dword_27E382FE8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FE8, "[NetTopoObjectLayer removeChild:]", 800, "attempting to remove child %@ that's not in the child array\n", child);
  }
}

- (void)setBoundsSizeConstraint:(CGSize)constraint
{
  height = constraint.height;
  width = constraint.width;
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer setBoundsSizeConstraint:]", 800, "constraint = (w = %.2f h = %.2f)\n", width, height);
  }

  self->_boundsSizeConstraint.width = width;
  self->_boundsSizeConstraint.height = height;
  objc_msgSend_setBoundsSizeConstraint_(self->_labelLayer, a2, v3, v4, width, height);
  objc_msgSend_setBoundsSizeConstraint_(self->_secondaryLabelLayer, v8, v9, v10, width, height);

  objc_msgSend_setNeedsLayout(self, v11, v12, v13);
}

- (CGSize)boundsSizeConstraint
{
  width = self->_boundsSizeConstraint.width;
  height = self->_boundsSizeConstraint.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setOwningView:(id)view
{
  self->_owningView = view;
  v5 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], a2, view, v3);
  objc_msgSend_scale(v5, v6, v7, v8);

  MEMORY[0x2821F9670](self, sel_setContentsScale_, v9, v10);
}

- (void)setLabel:(id)label
{
  if (!self->_labelLayer)
  {
    v5 = [BubbleTextLayer alloc];
    v9 = objc_msgSend_owningView(self, v6, v7, v8);
    self->_labelLayer = objc_msgSend_initWithOwningView_(v5, v10, v9, v11);
    if (objc_msgSend_smallSize(self, v12, v13, v14))
    {
      v18 = objc_msgSend_setFontSize_(self->_labelLayer, v15, v16, v17, 13.0);
    }

    else
    {
      topoStyle = self->_topoStyle;
      if (topoStyle != 1)
      {
        if (topoStyle)
        {
LABEL_13:
          objc_msgSend_setForegroundColor_(self->_labelLayer, v15, self->_labelUnselectedTextColor, v17);
          objc_msgSend_addSublayer_(self, v47, self->_labelLayer, v48);
          goto LABEL_14;
        }

        objc_msgSend_setStatusLightMode_(self, v15, 0, v17);
        v26 = objc_msgSend_setFontSize_(self->_labelLayer, v23, v24, v25, 17.0);
        if (!sub_23EC132F8(v26, v27, v28, v29))
        {
          objc_msgSend_setFont_(self->_labelLayer, v30, @"Helvetica-Bold", v32);
          goto LABEL_13;
        }

        v33 = MEMORY[0x277D74300];
        objc_msgSend_fontSize(self->_labelLayer, v30, v31, v32);
        v37 = objc_msgSend_boldSystemFontOfSize_(v33, v34, v35, v36);
LABEL_11:
        objc_msgSend_setFont_(self->_labelLayer, v38, v37, v39);
        goto LABEL_13;
      }

      v18 = objc_msgSend_setFontSize_(self->_labelLayer, v15, v16, v17, 15.0);
    }

    if (!sub_23EC132F8(v18, v19, v20, v21))
    {
      objc_msgSend_setFont_(self->_labelLayer, v40, @"Helvetica", v42);
      goto LABEL_13;
    }

    v43 = MEMORY[0x277D74300];
    objc_msgSend_fontSize(self->_labelLayer, v40, v41, v42);
    v37 = objc_msgSend_systemFontOfSize_(v43, v44, v45, v46);
    goto LABEL_11;
  }

LABEL_14:
  labelCopy = label;

  self->_labelString = label;
  objc_msgSend_setString_(self->_labelLayer, v50, label, v51);
  objc_msgSend_setNeedsLayout(self->_labelLayer, v52, v53, v54);

  objc_msgSend_layoutSublayers(self, v55, v56, v57);
}

- (void)setSecondaryLabel:(id)label
{
  if (!self->_secondaryLabelLayer)
  {
    v5 = [BubbleTextLayer alloc];
    v9 = objc_msgSend_owningView(self, v6, v7, v8);
    self->_secondaryLabelLayer = objc_msgSend_initWithOwningView_(v5, v10, v9, v11);
    if (objc_msgSend_smallSize(self, v12, v13, v14))
    {
      v18 = objc_msgSend_setFontSize_(self->_secondaryLabelLayer, v15, v16, v17, 11.0);
    }

    else
    {
      v18 = objc_msgSend_setFontSize_(self->_secondaryLabelLayer, v15, v16, v17, 14.0);
    }

    if (sub_23EC132F8(v18, v19, v20, v21))
    {
      v25 = MEMORY[0x277D74300];
      objc_msgSend_fontSize(self->_secondaryLabelLayer, v22, v23, v24);
      v29 = objc_msgSend_systemFontOfSize_(v25, v26, v27, v28);
      objc_msgSend_setFont_(self->_secondaryLabelLayer, v30, v29, v31);
    }

    else
    {
      objc_msgSend_setFont_(self->_secondaryLabelLayer, v22, @"Helvetica", v24);
    }

    objc_msgSend_setForegroundColor_(self->_secondaryLabelLayer, v32, self->_secondaryLabelUnselectedTextColor, v33);
    objc_msgSend_addSublayer_(self, v34, self->_secondaryLabelLayer, v35);
  }

  labelCopy = label;

  self->_secondaryLabelString = label;
  objc_msgSend_setString_(self->_secondaryLabelLayer, v37, label, v38);
  objc_msgSend_setNeedsLayout(self->_secondaryLabelLayer, v39, v40, v41);

  objc_msgSend_layoutSublayers(self, v42, v43, v44);
}

- (void)setTopoProgressValue:(float)value
{
  topoProgressBar = self->_topoProgressBar;
  if (!topoProgressBar)
  {
    v8 = [TopoProgressBar alloc];
    v12 = objc_msgSend_owningView(self, v9, v10, v11);
    v15 = objc_msgSend_initWithOwningView_(v8, v13, v12, v14);
    self->_topoProgressBar = v15;
    objc_msgSend_addSublayer_(self, v16, v15, v17);
    topoProgressBar = self->_topoProgressBar;
  }

  *&v18 = value;
  objc_msgSend_setProgressValue_(topoProgressBar, a2, v3, v4, v18);

  objc_msgSend_layoutSublayers(self, v19, v20, v21);
}

- (void)setTopoBadgeNumber:(unint64_t)number
{
  topoNumberBadge = self->_topoNumberBadge;
  if (!topoNumberBadge)
  {
    v7 = [TopoNumberBadge alloc];
    v11 = objc_msgSend_owningView(self, v8, v9, v10);
    topoNumberBadge = objc_msgSend_initWithOwningView_(v7, v12, v11, v13);
    self->_topoNumberBadge = topoNumberBadge;
  }

  objc_msgSend_setCount_(topoNumberBadge, a2, number, v3);
  self->_topoBadgeNumber = number;
  v15 = self->_topoNumberBadge;
  labelLayer = self->_labelLayer;

  MEMORY[0x2821F9670](labelLayer, sel_setRightAccessoryLayer_, v15, v14);
}

- (void)loadStatusImagesForScale:(double)scale
{
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer loadStatusImagesForScale:]", 800, "\n");
  }

  if (!self->_statusLights[0])
  {
    v4 = MEMORY[0x277CCA8D8];
    v5 = objc_opt_class();
    v8 = objc_msgSend_bundleForClass_(v4, v6, v5, v7);
    self->_statusLights[0] = objc_msgSend_imageNamed_inBundle_(ImageStore, v9, @"StatusLightGrayOff.png", v8);
  }

  if (!self->_statusLights[1])
  {
    v10 = MEMORY[0x277CCA8D8];
    v11 = objc_opt_class();
    v14 = objc_msgSend_bundleForClass_(v10, v12, v11, v13);
    self->_statusLights[1] = objc_msgSend_imageNamed_inBundle_(ImageStore, v15, @"StatusLightAmberOn.png", v14);
  }

  if (!self->_statusLights[2])
  {
    v16 = MEMORY[0x277CCA8D8];
    v17 = objc_opt_class();
    v20 = objc_msgSend_bundleForClass_(v16, v18, v17, v19);
    self->_statusLights[2] = objc_msgSend_imageNamed_inBundle_(ImageStore, v21, @"StatusLightBlueOn.png", v20);
  }

  if (!self->_statusLights[3])
  {
    v22 = MEMORY[0x277CCA8D8];
    v23 = objc_opt_class();
    v26 = objc_msgSend_bundleForClass_(v22, v24, v23, v25);
    self->_statusLights[3] = objc_msgSend_imageNamed_inBundle_(ImageStore, v27, @"StatusLightGreenOn.png", v26);
  }
}

- (void)deallocStatusImages
{
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer deallocStatusImages]", 800, "\n");
  }

  statusLightTimer = self->_statusLightTimer;
  if (statusLightTimer)
  {
    objc_msgSend_invalidate(statusLightTimer, a2, v2, v3);
    self->_statusLightTimer = 0;
  }

  statusLights = self->_statusLights;

  *statusLights = 0;
  statusLights[1] = 0;

  statusLights[2] = 0;
  statusLights[3] = 0;
}

- (void)setStatusBadgeImagePriv:(id)priv
{
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer setStatusBadgeImagePriv:]", 800, "\n");
  }

  if (!priv)
  {
    if (!objc_msgSend_image(self->_labelLayer, a2, priv, v3))
    {
      return;
    }

    objc_msgSend_setImage_(self->_labelLayer, v22, 0, v23);
    goto LABEL_15;
  }

  objc_msgSend_contentsScale(self, a2, priv, v3);
  v8 = objc_msgSend_cgImageFromImage_forContentsScale_(ImageStore, v6, priv, v7);
  if (objc_msgSend_image(self->_labelLayer, v9, v10, v11))
  {
    v15 = objc_msgSend_image(self->_labelLayer, v12, v13, v14);
    Width = CGImageGetWidth(v15);
    v20 = objc_msgSend_image(self->_labelLayer, v17, v18, v19);
    Height = CGImageGetHeight(v20);
  }

  else
  {
    Width = *MEMORY[0x277CBF3A8];
    Height = *(MEMORY[0x277CBF3A8] + 8);
  }

  objc_msgSend_setImage_(self->_labelLayer, v12, v8, v14);
  v27 = CGImageGetWidth(v8);
  v28 = CGImageGetHeight(v8);
  if (Width != v27 || Height != v28)
  {
LABEL_15:

    objc_msgSend_setNeedsLayout(self, v24, v25, v26);
  }
}

- (void)setStatusBadgeImage:(id)image
{
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer setStatusBadgeImage:]", 800, "\n");
  }

  imageCopy = image;

  self->_statusBadgeImage = image;

  objc_msgSend_setStatusLightMode_(self, v6, 1, v7);
}

- (void)setStatusLightStateFromMode
{
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer setStatusLightStateFromMode]", 800, "entered with _statusLightMode = %d\n", self->_statusLightMode);
  }

  statusLightMode = self->_statusLightMode;
  if (statusLightMode > 4)
  {
    if (statusLightMode == 5)
    {
      if (self->_statusLightState)
      {
        v5 = 0;
      }

      else
      {
        v5 = 3;
      }

      goto LABEL_23;
    }

    if (statusLightMode != 6)
    {
      if (statusLightMode == 7)
      {
        if (self->_statusLightState == 1)
        {
          v5 = 3;
        }

        else
        {
          v5 = 1;
        }

        goto LABEL_23;
      }

LABEL_20:
      v5 = 0;
      goto LABEL_23;
    }

    v5 = 2;
  }

  else
  {
    if (statusLightMode == 2)
    {
      v5 = 1;
      goto LABEL_23;
    }

    if (statusLightMode != 3)
    {
      if (statusLightMode == 4)
      {
        v5 = 3;
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    v5 = self->_statusLightState == 0;
  }

LABEL_23:
  self->_statusLightState = v5;
  if (self->_statusLightMode == 1)
  {
    p_statusBadgeImage = &self->_statusBadgeImage;
  }

  else
  {
    p_statusBadgeImage = &self->_statusLights[v5];
  }

  v7 = *p_statusBadgeImage;

  MEMORY[0x2821F9670](self, sel_setStatusBadgeImagePriv_, v7, v2);
}

- (void)statusLightUpdateTimer:(id)timer
{
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer statusLightUpdateTimer:]", 800, "\n");
  }

  MEMORY[0x2821F9670](self, sel_setStatusLightStateFromMode, timer, v3);
}

- (void)setStatusLightMode:(unsigned int)mode
{
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer setStatusLightMode:]", 800, "entered with mode = %d\n", mode);
  }

  statusLightTimer = self->_statusLightTimer;
  if (statusLightTimer)
  {
    objc_msgSend_invalidate(statusLightTimer, a2, *&mode, v3);
    self->_statusLightTimer = 0;
  }

  self->_statusLightMode = mode;
  if (mode <= 7)
  {
    if (((1 << mode) & 0x57) == 0)
    {
      v7 = *"333?";
      if (mode != 7)
      {
        v7 = 1.0;
      }

      self->_statusLightInterval = v7;
      self->_statusLightTimer = objc_msgSend_scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_(MEMORY[0x277CBEBB8], a2, self, sel_statusLightUpdateTimer_, 0, 1, v7);
    }

    MEMORY[0x2821F9670](self, sel_setStatusLightStateFromMode, *&mode, v3);
  }
}

- (void)layoutSublayers
{
  if (dword_27E383028 <= 800 && (dword_27E383028 != -1 || sub_23EB74AC8(&dword_27E383028, 0x320u)))
  {
    sub_23EB75374(&dword_27E383028, "[NetTopoObjectLayer layoutSublayers]", 800, "entered %@\n", self);
  }

  p_labelLayer = &self->_labelLayer;
  if (self->_labelLayer || self->_secondaryLabelLayer)
  {
    objc_msgSend_bounds(self, a2, v2, v3);
    if (!CGRectIsEmpty(v129))
    {
      secondaryLabelLayer = self->_secondaryLabelLayer;
      if (secondaryLabelLayer)
      {
        objc_msgSend_preferredFrameSize(secondaryLabelLayer, a2, v2, v3);
        v8 = v7;
        v10 = v9;
        objc_msgSend_textBaselineOffset(self->_secondaryLabelLayer, v11, v12, v13);
        v15 = v14;
        objc_msgSend_bounds(self, v16, v17, v18);
        v19 = (CGRectGetWidth(v130) - v8) * 0.5;
        v20 = ceilf(v19);
        objc_msgSend_bounds(self, v21, v22, v23);
        v24 = CGRectGetMaxY(v131) - v10;
        objc_msgSend_setFrame_(self->_secondaryLabelLayer, v25, v26, v27, v20, ceilf(v24), v8, v10);
        topoProgressBar = self->_topoProgressBar;
        if (topoProgressBar)
        {
          objc_msgSend_preferredFrameSize(topoProgressBar, a2, v2, v3);
          v30 = v29;
          v32 = v31;
          objc_msgSend_bounds(self, v33, v34, v35);
          v36 = (CGRectGetWidth(v132) - v30) * 0.5;
          v37 = ceilf(v36);
          objc_msgSend_bounds(self, v38, v39, v40);
          MaxY = CGRectGetMaxY(v133);
          objc_msgSend_setFrame_(self->_topoProgressBar, v42, v43, v44, v37, ceilf(MaxY), v30, v32);
        }
      }

      else
      {
        v10 = *(MEMORY[0x277CBF3A8] + 8);
        v15 = 0.0;
      }

      if (*p_labelLayer)
      {
        objc_msgSend_preferredFrameSize(*p_labelLayer, a2, v2, v3);
        v46 = v45;
        v48 = v47;
        objc_msgSend_labelPinnedHeight(self, v49, v50, v51);
        if (v55 != 0.0)
        {
          objc_msgSend_labelPinnedHeight(self, v52, v53, v54);
          v48 = v56;
        }

        objc_msgSend_textBaselineOffset(*p_labelLayer, v52, v53, v54);
        v58 = v57;
        objc_msgSend_bounds(self, v59, v60, v61);
        v65 = (CGRectGetWidth(v134) - v46) * 0.5;
        v66 = ceilf(v65);
        v67 = 0.0;
        if (v15 > 0.0)
        {
          v68 = objc_msgSend_smallSize(self, v62, v63, v64);
          v69 = v15 + v48 - v58;
          v70 = 23.0 - v69;
          v71 = 13.0 - v69;
          if (v68)
          {
            v67 = v71;
          }

          else
          {
            v67 = v70;
          }
        }

        objc_msgSend_bounds(self, v62, v63, v64);
        v72 = CGRectGetMaxY(v135) - v48 - v10 - v67;
        objc_msgSend_setFrame_(*p_labelLayer, v73, v74, v75, v66, ceilf(v72), v46, v48);
      }
    }
  }

  v76 = objc_msgSend_objectImage(self, a2, v2, v3);
  if (v76)
  {
    v80 = v76;
    if (*p_labelLayer || (p_labelLayer = &self->_secondaryLabelLayer, self->_secondaryLabelLayer))
    {
      objc_msgSend_bounds(self, v77, v78, v79);
      v82 = v81;
      objc_msgSend_frame(*p_labelLayer, v83, v84, v85);
      self->_imageFrame.origin.y = v82 - v86;
    }

    Width = CGImageGetWidth(v80);
    objc_msgSend_contentsScale(self, v88, v89, v90);
    v92 = Width / v91;
    Height = CGImageGetHeight(v80);
    objc_msgSend_contentsScale(self, v94, v95, v96);
    topoStyle = self->_topoStyle;
    v102 = Height / v101;
    if (topoStyle)
    {
      if (topoStyle == 1)
      {
        objc_msgSend_bounds(self, v97, v98, v99);
        v103 = (CGRectGetWidth(v136) - v92) * 0.5;
        self->_imageFrame.origin.x = ceilf(v103);
        self->_imageFrame.size.width = v92;
        self->_imageFrame.size.height = v102;
        size = self->_imageFrame.size;
        self->_imageCoreFrame.origin = self->_imageFrame.origin;
        self->_imageCoreFrame.size = size;
        v105 = self->_imageFrame.size;
        self->_imageSelectionFrame.origin = self->_imageFrame.origin;
        self->_imageSelectionFrame.size = v105;
      }
    }

    else
    {
      v106 = v92 + -60.0;
      v107 = v102 + -60.0;
      objc_msgSend_bounds(self, v97, v98, v99);
      v109 = v108 + (self->_selectionRectOutset + 2.0) * -2.0;
      v113 = sub_23EC13544(self->_owningView, v110, v111, v112);
      v117 = 100.0;
      if (v113 == 2)
      {
        v117 = 260.0;
      }

      v118 = v109 / v117;
      if (dword_27E383028 <= 800 && (dword_27E383028 != -1 || sub_23EB74AC8(&dword_27E383028, 0x320u)))
      {
        sub_23EB75374(&dword_27E383028, "[NetTopoObjectLayer layoutSublayers]", 800, "image scale set to %.4f)\n", v118);
      }

      v119 = v106 * v118;
      v120 = floorf(v119);
      v121 = v107 * v118;
      v122 = floorf(v121);
      objc_msgSend_bounds(self, v114, v115, v116);
      v123 = (CGRectGetWidth(v137) - v120) * 0.5;
      self->_imageFrame.origin.x = ceilf(v123);
      self->_imageFrame.origin.y = self->_selectionRectOutset + self->_imageFrame.origin.y;
      self->_imageFrame.size.width = v120;
      self->_imageFrame.size.height = v122;
      v124 = self->_imageFrame.size;
      self->_imageCoreFrame.origin = self->_imageFrame.origin;
      self->_imageCoreFrame.size = v124;
      x = self->_imageFrame.origin.x;
      v124.width = self->_imageFrame.origin.y;
      v126 = self->_imageFrame.size.width;
      v127 = self->_imageFrame.size.height;
      self->_imageSelectionFrame = CGRectInset(*(&v124 - 8), -self->_selectionRectOutset, -self->_selectionRectOutset);
      v128 = ceilf(v118 * -30.0);
      self->_imageFrame = CGRectInset(self->_imageFrame, v128, v128);
    }
  }

  if (dword_27E383028 <= 800 && (dword_27E383028 != -1 || sub_23EB74AC8(&dword_27E383028, 0x320u)))
  {
    sub_23EB75374(&dword_27E383028, "[NetTopoObjectLayer layoutSublayers]", 800, "done %@\n", self);
  }
}

- (void)drawInContext:(CGContext *)context
{
  v36.receiver = self;
  v36.super_class = NetTopoObjectLayer;
  [(NetTopoObjectLayer *)&v36 drawInContext:?];
  CGContextSaveGState(context);
  if (!objc_msgSend_objectImage(self, v5, v6, v7))
  {
    goto LABEL_16;
  }

  CGContextScaleCTM(context, 1.0, -1.0);
  objc_msgSend_bounds(self, v8, v9, v10);
  CGContextTranslateCTM(context, 0.0, -v11);
  if (objc_msgSend_isSelectable(self, v12, v13, v14) && objc_msgSend_isSelected(self, v15, v16, v17))
  {
    sub_23EBFDA80(context, self->_imageSelectionFrame.origin.x, self->_imageSelectionFrame.origin.y, self->_imageSelectionFrame.size.width, self->_imageSelectionFrame.size.height, self->_selectionCornerRadius);
    CGContextClosePath(context);
    CGContextSetFillColorWithColor(context, self->_selectionColor);
    CGContextDrawPath(context, kCGPathFill);
    CGContextSetStrokeColorWithColor(context, self->_secondaryLabelUnselectedTextColor);
    sub_23EBFDA80(context, self->_imageSelectionFrame.origin.x, self->_imageSelectionFrame.origin.y, self->_imageSelectionFrame.size.width, self->_imageSelectionFrame.size.height, self->_selectionCornerRadius);
    CGContextSetLineWidth(context, 2.0);
    CGContextClosePath(context);
    CGContextStrokePath(context);
    labelLayer = self->_labelLayer;
    if (labelLayer)
    {
      objc_msgSend_setForegroundColor_(labelLayer, v15, self->_labelSelectedTextColor, v17);
      objc_msgSend_setFillColor_(self->_labelLayer, v19, self->_labelSelectedFillColor, v20);
      objc_msgSend_setFillColor2_(self->_labelLayer, v21, self->_labelSelectedFillColor2, v22);
    }

    secondaryLabelLayer = self->_secondaryLabelLayer;
    if (!secondaryLabelLayer)
    {
      goto LABEL_13;
    }

    v24 = &OBJC_IVAR___NetTopoObjectLayer__secondaryLabelSelectedTextColor;
  }

  else
  {
    v25 = self->_labelLayer;
    if (v25)
    {
      objc_msgSend_setForegroundColor_(v25, v15, self->_labelUnselectedTextColor, v17);
      objc_msgSend_setFillColor_(self->_labelLayer, v26, self->_labelUnselectedFillColor, v27);
      objc_msgSend_setFillColor2_(self->_labelLayer, v28, 0, v29);
    }

    secondaryLabelLayer = self->_secondaryLabelLayer;
    if (!secondaryLabelLayer)
    {
      goto LABEL_13;
    }

    v24 = &OBJC_IVAR___NetTopoObjectLayer__secondaryLabelUnselectedTextColor;
  }

  objc_msgSend_setForegroundColor_(secondaryLabelLayer, v15, *(&self->super.super.isa + *v24), v17);
LABEL_13:
  isGhosted = objc_msgSend_isGhosted(self, v15, v16, v17);
  v31 = 0.3;
  if (!isGhosted)
  {
    v31 = 1.0;
  }

  CGContextSetAlpha(context, v31);
  v35 = objc_msgSend_objectImage(self, v32, v33, v34);
  CGContextDrawImage(context, self->_imageFrame, v35);
LABEL_16:
  CGContextRestoreGState(context);
}

- ($E32549A47AE6FE03C4AA404FAEB37148)getConnectionAttachmentLocations
{
  retstr->var2 = 0u;
  retstr->var3 = 0u;
  retstr->var0 = 0u;
  retstr->var1 = 0u;
  p_imageSelectionFrame = &self->_imageSelectionFrame;
  x = self->_imageSelectionFrame.origin.x;
  y = self->_imageSelectionFrame.origin.y;
  width = self->_imageSelectionFrame.size.width;
  height = self->_imageSelectionFrame.size.height;
  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = width;
  v65.size.height = height;
  result = CGRectIsNull(v65);
  if (result)
  {
    v11 = *MEMORY[0x277CBF348];
    retstr->var0 = *MEMORY[0x277CBF348];
    retstr->var1 = v11;
    retstr->var2 = v11;
    retstr->var3 = v11;
  }

  else
  {
    MinX = CGRectGetMinX(*p_imageSelectionFrame);
    retstr->var0.x = MinX;
    objc_msgSend_bounds(self, v13, v14, v15);
    MaxY = CGRectGetMaxY(v66);
    MidY = CGRectGetMidY(*p_imageSelectionFrame);
    v18 = MaxY - floorf(MidY);
    v64 = MinX + CGRectGetWidth(*p_imageSelectionFrame);
    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    MidX = CGRectGetMidX(v67);
    v20 = floorf(MidX);
    objc_msgSend_bounds(self, v21, v22, v23);
    v24 = CGRectGetMaxY(v68);
    v69.origin.x = x;
    v69.origin.y = y;
    v69.size.width = width;
    v69.size.height = height;
    v28 = v24 - CGRectGetMaxY(v69) + -6.0;
    if (self->_labelLayer || self->_secondaryLabelLayer)
    {
      objc_msgSend_bounds(self, v25, v26, v27);
      v32 = CGRectGetMaxY(v70);
    }

    else
    {
      objc_msgSend_bounds(self, v25, v26, v27);
      v63 = CGRectGetMaxY(v71);
      v32 = v63 - CGRectGetMinY(*p_imageSelectionFrame);
    }

    v33 = v32 + 4.0;
    v34 = objc_msgSend_superlayer(self, v29, v30, v31);
    objc_msgSend_convertPoint_toLayer_(self, v35, v34, v36, MinX, v18);
    retstr->var0.x = v37;
    retstr->var0.y = v38;
    v42 = objc_msgSend_superlayer(self, v39, v40, v41);
    objc_msgSend_convertPoint_toLayer_(self, v43, v42, v44, v64, v18);
    retstr->var1.x = v45;
    retstr->var1.y = v46;
    v50 = objc_msgSend_superlayer(self, v47, v48, v49);
    objc_msgSend_convertPoint_toLayer_(self, v51, v50, v52, v20, v28);
    retstr->var2.x = v53;
    retstr->var2.y = v54;
    v58 = objc_msgSend_superlayer(self, v55, v56, v57);
    result = objc_msgSend_convertPoint_toLayer_(self, v59, v58, v60, v20, v33);
    retstr->var3.x = v61;
    retstr->var3.y = v62;
  }

  return result;
}

- (CGRect)getUserInteractionBounds
{
  x = self->_imageCoreFrame.origin.x;
  y = self->_imageCoreFrame.origin.y;
  width = self->_imageCoreFrame.size.width;
  height = self->_imageCoreFrame.size.height;
  objc_msgSend_bounds(self, a2, v2, v3);
  v9 = v8 - height - y;
  v10 = x;
  v11 = width;
  v12 = height;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v9;
  result.origin.x = v10;
  return result;
}

- (CGRect)getFrameContainingAllSublayers
{
  objc_msgSend_frame(self, a2, v2, v3);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer getFrameContainingAllSublayers]", 800, "topo frame =(x = %.2f y = %.2f w = %.2f h = %.2f)\n", v9, v11, v13, v15);
  }

  labelLayer = self->_labelLayer;
  if (labelLayer)
  {
    objc_msgSend_frame(labelLayer, v5, v6, v7);
    x = v17;
    y = v19;
    width = v21;
    height = v23;
    if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
    {
      sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer getFrameContainingAllSublayers]", 800, "label frame =(x = %.2f y = %.2f w = %.2f h = %.2f)\n", x, y, width, height);
    }
  }

  else
  {
    x = *MEMORY[0x277CBF3A0];
    y = *(MEMORY[0x277CBF3A0] + 8);
    width = *(MEMORY[0x277CBF3A0] + 16);
    height = *(MEMORY[0x277CBF3A0] + 24);
  }

  secondaryLabelLayer = self->_secondaryLabelLayer;
  if (secondaryLabelLayer)
  {
    objc_msgSend_frame(secondaryLabelLayer, v5, v6, v7);
    v40.origin.x = v26;
    v40.origin.y = v27;
    v40.size.width = v28;
    v40.size.height = v29;
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v36 = CGRectUnion(v35, v40);
    x = v36.origin.x;
    y = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
    v30 = dword_27E382FA8;
    if (dword_27E382FA8 > 800)
    {
      goto LABEL_17;
    }

    if (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u))
    {
      sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer getFrameContainingAllSublayers]", 800, "label frame unioned with secondary frame =(x = %.2f y = %.2f w = %.2f h = %.2f)\n", x, y, width, height);
    }
  }

  v30 = dword_27E382FA8;
LABEL_17:
  if (x < 0.0)
  {
    if (v30 <= 800 && (v30 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
    {
      sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer getFrameContainingAllSublayers]", 800, "label origin outside parent frame\n");
    }

    v37.origin.x = v9 + x;
    v37.origin.y = v11 + y;
    v37.size.width = width;
    v37.size.height = height;
    v41.origin.x = v9;
    v41.origin.y = v11;
    v41.size.width = v13;
    v41.size.height = v15;
    v38 = CGRectUnion(v37, v41);
    v9 = v38.origin.x;
    v11 = v38.origin.y;
    v13 = v38.size.width;
    v15 = v38.size.height;
    v30 = dword_27E382FA8;
  }

  if (v30 <= 800 && (v30 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer getFrameContainingAllSublayers]", 800, "final basic frame =(x = %.2f y = %.2f w = %.2f h = %.2f)\n", v9, v11, v13, v15);
  }

  v31 = v9;
  v32 = v11;
  v33 = v13;
  v34 = v15;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

+ (BOOL)needsDisplayForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"objectImage", v3) & 1) != 0 || (objc_msgSend_isEqualToString_(key, v6, @"selected", v7) & 1) != 0 || (objc_msgSend_isEqualToString_(key, v8, @"ghosted", v9))
  {
    return 1;
  }

  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___NetTopoObjectLayer;
  return objc_msgSendSuper2(&v11, sel_needsDisplayForKey_, key);
}

- (id)describeOne:(id)one uiLayer:(id)layer indent:(unint64_t)indent
{
  v7 = objc_opt_class();
  Name = class_getName(v7);
  v12 = objc_msgSend_retainCount(layer, v9, v10, v11);
  v16 = objc_msgSend_row(layer, v13, v14, v15);
  v20 = objc_msgSend_column(layer, v17, v18, v19);
  objc_msgSend_appendFormat_(one, v21, @"<%s: %p retains %d> (row=%d col=%d)", v22, Name, layer, v12, v16, v20);
  return one;
}

- (id)debugDescription
{
  v4 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], a2, &stru_285145FE8, v2);
  objc_msgSend_describeOne_uiLayer_indent_(self, v5, v4, self, 0);
  return v4;
}

- (CGPoint)layoutOrigin
{
  x = self->_layoutOrigin.x;
  y = self->_layoutOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
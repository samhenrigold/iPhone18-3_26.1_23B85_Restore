@interface NetTopoAirPortDeviceLayer
- ($E32549A47AE6FE03C4AA404FAEB37148)getConnectionAttachmentLocations;
- (NetTopoAirPortDeviceLayer)initWithUIStyle:(int)style andOwningView:(id)view;
- (id)debugDescription;
- (id)description;
- (void)dealloc;
- (void)initNetTopoAirPortDeviceLayerCommonWithStyle:(int)style andOwningView:(id)view;
- (void)layoutSublayers;
- (void)pickCorrectImagesForContentsScale:(double)scale;
- (void)setAssociatedNode:(id)node;
@end

@implementation NetTopoAirPortDeviceLayer

- (void)initNetTopoAirPortDeviceLayerCommonWithStyle:(int)style andOwningView:(id)view
{
  if (dword_27E3830F8 <= 800 && (dword_27E3830F8 != -1 || sub_23EB74AC8(&dword_27E3830F8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3830F8, "[NetTopoAirPortDeviceLayer initNetTopoAirPortDeviceLayerCommonWithStyle:andOwningView:]", 800, "%@\n", self);
  }
}

- (NetTopoAirPortDeviceLayer)initWithUIStyle:(int)style andOwningView:(id)view
{
  v5 = *&style;
  v10.receiver = self;
  v10.super_class = NetTopoAirPortDeviceLayer;
  v6 = [NetTopoObjectLayer initWithUIStyle:sel_initWithUIStyle_andOwningView_ andOwningView:?];
  v8 = v6;
  if (v6)
  {
    objc_msgSend_initNetTopoAirPortDeviceLayerCommonWithStyle_andOwningView_(v6, v7, v5, view);
  }

  return v8;
}

- (void)dealloc
{
  if (dword_27E3830F8 <= 800 && (dword_27E3830F8 != -1 || sub_23EB74AC8(&dword_27E3830F8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3830F8, "[NetTopoAirPortDeviceLayer dealloc]", 800, "%@\n", self);
  }

  v3.receiver = self;
  v3.super_class = NetTopoAirPortDeviceLayer;
  [(NetTopoObjectLayer *)&v3 dealloc];
}

- (id)description
{
  v5 = objc_msgSend_associatedNode(self, a2, v2, v3);
  v9 = objc_msgSend_info(v5, v6, v7, v8);
  v12 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v10, &stru_285145FE8, v11);
  v13 = objc_opt_class();
  Name = class_getName(v13);
  v18 = objc_msgSend_retainCount(self, v15, v16, v17);
  v21 = objc_msgSend_objectForKey_(v9, v19, @"name", v20);
  v25 = objc_msgSend_row(self, v22, v23, v24);
  v29 = objc_msgSend_column(self, v26, v27, v28);
  objc_msgSend_appendFormat_(v12, v30, @"<%s: %p retains %d> ('%@' row=%d col=%d)", v31, Name, self, v18, v21, v25, v29);
  return v12;
}

- (id)debugDescription
{
  v5 = objc_msgSend_description(self, a2, v2, v3);
  if (objc_msgSend_parent(self, v6, v7, v8))
  {
    v12 = objc_msgSend_parent(self, v9, v10, v11);
    objc_msgSend_appendFormat_(v5, v13, @" connected upstream through %@", v14, v12);
    v18 = objc_msgSend_parent(self, v15, v16, v17);
    if (objc_msgSend_parent(v18, v19, v20, v21))
    {
      v25 = objc_msgSend_parent(self, v22, v23, v24);
      v29 = objc_msgSend_parent(v25, v26, v27, v28);
      objc_msgSend_appendFormat_(v5, v30, @" to device %@\n", v31, v29);
    }
  }

  return v5;
}

- (void)layoutSublayers
{
  v2.receiver = self;
  v2.super_class = NetTopoAirPortDeviceLayer;
  [(NetTopoObjectLayer *)&v2 layoutSublayers];
}

- (void)pickCorrectImagesForContentsScale:(double)scale
{
  if (!self->super._topoStyle)
  {
    v7 = objc_msgSend_associatedNode(self, a2, v3, v4);
    v11 = objc_msgSend_info(v7, v8, v9, v10);
    v12 = sub_23EB6A2C0(v11);
    v13 = sub_23EB6B128(v11);
    v14 = sub_23EB6A294(v11);
    v16 = objc_msgSend_imageForBaseStationWithProductID_subProductID_deviceKind_small_cropped_threeDee_(ImageStore, v15, v12, v13, v14, 0, 1, 1);
    v19 = objc_msgSend_cgImageFromImage_forContentsScale_(ImageStore, v17, v16, v18, scale);
    objc_msgSend_setObjectImage_(self, v20, v19, v21);
  }

  v22.receiver = self;
  v22.super_class = NetTopoAirPortDeviceLayer;
  [(NetTopoObjectLayer *)&v22 pickCorrectImagesForContentsScale:scale];
}

- (void)setAssociatedNode:(id)node
{
  if (self->super._associatedNode != node)
  {
    nodeCopy = node;

    self->super._associatedNode = node;
  }

  if (node)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_msgSend_info(node, a2, node, v3);
    v11 = objc_msgSend_objectForKey_(v8, v9, @"name", v10);
    v14 = objc_msgSend_stringWithFormat_(v7, v12, @"%@", v13, v11);
    objc_msgSend_setLabel_(self, v15, v14, v16);
    if (objc_msgSend_configReadStatus(node, v17, v18, v19) != 1)
    {
      v23 = objc_msgSend_info(node, v20, v21, v22);
      v26 = objc_msgSend_objectForKey_(v23, v24, @"syAP", v25);
      v30 = objc_msgSend_integerValue(v26, v27, v28, v29);
      v34 = objc_msgSend_info(node, v31, v32, v33);
      v35 = sub_23EB6A294(v34);
      v36 = sub_23EB6CEE0(v30, v35, 0);
      objc_msgSend_setSecondaryLabel_(self, v37, v36, v38);
    }

    objc_msgSend_contentsScale(self, v20, v21, v22);
    objc_msgSend_pickCorrectImagesForContentsScale_(self, v39, v40, v41);
  }

  objc_msgSend_setNeedsLayout(self, a2, node, v3);
}

- ($E32549A47AE6FE03C4AA404FAEB37148)getConnectionAttachmentLocations
{
  objc_msgSend_layoutSublayers(self, a3, v3, v4);
  v7.receiver = self;
  v7.super_class = NetTopoAirPortDeviceLayer;
  return [($E32549A47AE6FE03C4AA404FAEB37148 *)&v7 getConnectionAttachmentLocations];
}

@end
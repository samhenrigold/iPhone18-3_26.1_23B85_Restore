@interface WaypointRichCornerDialView
- ($F19C7D1BACA455C0923872420114D4F8)_layoutConstantsForDevice:(SEL)device;
- (id)_symbolSizeAdjustmentsForDevice:(id)device;
- (id)initFullColorImageViewWithDevice:(id)device;
- (id)monochromeOtherViews;
@end

@implementation WaypointRichCornerDialView

- (id)initFullColorImageViewWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = WaypointRichCornerDialView;
  return [(WaypointBaseRichDialView *)&v4 initFullColorImageViewWithDevice:device];
}

- (id)monochromeOtherViews
{
  v14[3] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_needleView(self, a2, v2);
  v7 = objc_msgSend_ticksView(self, v5, v6, v4);
  v14[1] = v7;
  v10 = objc_msgSend_waypointView(self, v8, v9);
  v14[2] = v10;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v14, 3);

  return v12;
}

- ($F19C7D1BACA455C0923872420114D4F8)_layoutConstantsForDevice:(SEL)device
{
  result = sub_23BD32378(self, a4);
  v6 = unk_27E1C4D50;
  *&retstr->var3.height = xmmword_27E1C4D40;
  *&retstr->var4.height = v6;
  *&retstr->var6 = qword_27E1C4D60;
  v7 = *&qword_27E1C4D30;
  *&retstr->var0 = xmmword_27E1C4D20;
  *&retstr->var2 = v7;
  return result;
}

- (id)_symbolSizeAdjustmentsForDevice:(id)device
{
  v3 = objc_msgSend_sizeClass(device, a2, device);
  if ((v3 - 2) >= 8)
  {
    v6 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v4, v5);
  }

  else
  {
    v6 = *(&off_278B94198 + v3 - 2);
  }

  return v6;
}

@end
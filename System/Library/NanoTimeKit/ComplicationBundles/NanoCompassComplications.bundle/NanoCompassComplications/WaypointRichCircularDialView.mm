@interface WaypointRichCircularDialView
- ($F19C7D1BACA455C0923872420114D4F8)_layoutConstantsForDevice:(SEL)device;
- (id)_symbolSizeAdjustmentsForDevice:(id)device;
- (id)initFullColorImageViewWithDevice:(id)device;
@end

@implementation WaypointRichCircularDialView

- (id)initFullColorImageViewWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = WaypointRichCircularDialView;
  return [(WaypointBaseRichDialView *)&v4 initFullColorImageViewWithDevice:device];
}

- ($F19C7D1BACA455C0923872420114D4F8)_layoutConstantsForDevice:(SEL)device
{
  result = sub_23BD3CC04(self, a4);
  v6 = unk_27E1C5088;
  *&retstr->var3.height = xmmword_27E1C5078;
  *&retstr->var4.height = v6;
  *&retstr->var6 = qword_27E1C5098;
  v7 = *&qword_27E1C5068;
  *&retstr->var0 = xmmword_27E1C5058;
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
    v6 = qword_278B94430[v3 - 2];
  }

  return v6;
}

@end
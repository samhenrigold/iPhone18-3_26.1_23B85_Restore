@interface NTKExplorerRichFaceView
- (CGRect)_keylineFrameForComplicationSlot:(id)slot selected:(BOOL)selected;
- (id)_newComplicationFactoryForDevice:(id)device;
@end

@implementation NTKExplorerRichFaceView

- (id)_newComplicationFactoryForDevice:(id)device
{
  deviceCopy = device;
  v5 = [[NTKColorCircularUtilitarianFaceViewComplicationFactory alloc] initWithFaceView:self device:deviceCopy graphicCornerComplications:1];

  return v5;
}

- (CGRect)_keylineFrameForComplicationSlot:(id)slot selected:(BOOL)selected
{
  selectedCopy = selected;
  slotCopy = slot;
  if (([slotCopy isEqualToString:NTKComplicationSlotTopLeft] & 1) != 0 || objc_msgSend(slotCopy, "isEqualToString:", NTKComplicationSlotTopRight))
  {
    faceViewComplicationFactory = [(NTKExplorerFaceView *)self faceViewComplicationFactory];
    [faceViewComplicationFactory keylineFrameForCornerComplicationSlot:slotCopy selected:selectedCopy];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = NTKExplorerRichFaceView;
    [(NTKExplorerRichFaceView *)&v24 _keylineFrameForComplicationSlot:slotCopy selected:selectedCopy];
    v9 = v16;
    v11 = v17;
    v13 = v18;
    v15 = v19;
  }

  v20 = v9;
  v21 = v11;
  v22 = v13;
  v23 = v15;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

@end
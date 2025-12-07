@interface NTKPolygonCylinderTransformView
@end

@implementation NTKPolygonCylinderTransformView

void __50___NTKPolygonCylinderTransformView_layoutSubviews__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = a3;
  [v6 setCenter:{v4, v5}];
  [v6 setBounds:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v7 = [v6 layer];

  v8 = *(a1 + 32);
  if (v8)
  {
    objc_msgSend__transformForFaceIndex_(v8);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  [v7 setTransform:v9];
}

@end
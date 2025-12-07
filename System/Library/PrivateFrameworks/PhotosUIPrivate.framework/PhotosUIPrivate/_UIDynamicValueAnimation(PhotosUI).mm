@interface _UIDynamicValueAnimation(PhotosUI)
+ (id)pu_dynamicValueAnimationWithInitialValue:()PhotosUI initialVelocity:targetValue:stiffness:dampingFactor:epsilon:;
@end

@implementation _UIDynamicValueAnimation(PhotosUI)

+ (id)pu_dynamicValueAnimationWithInitialValue:()PhotosUI initialVelocity:targetValue:stiffness:dampingFactor:epsilon:
{
  v12 = sqrt(a5);
  UIAnimationDragCoefficient();
  v14 = a5 / (v13 * v13);
  v15 = v13;
  v16 = [objc_alloc(MEMORY[0x1E69DD4A0]) initWithValue:a2 velocity:a3 / v13 unitSize:a7];
  v17 = [MEMORY[0x1E69DD490] activeValue:0 ofType:a4];
  [v16 addActiveValue:v17];
  [v17 _setBoundaryPull:v14 * 0.001];
  [v16 _setDecelerationFactor:v12 * -2.0 * a6 / v15 * 0.001 + 1.0];

  return v16;
}

@end
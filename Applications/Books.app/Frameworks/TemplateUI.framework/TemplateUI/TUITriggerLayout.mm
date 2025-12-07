@interface TUITriggerLayout
- (void)appendAnchorsToSet:(id)set inRoot:(id)root;
@end

@implementation TUITriggerLayout

- (void)appendAnchorsToSet:(id)set inRoot:(id)root
{
  rootCopy = root;
  setCopy = set;
  axis = [setCopy axis];
  objc_msgSend_computedTransformInAncestorLayout_(self);

  y = CGPointZero.y;
  v10 = y * 0.0 + 0.0 * CGPointZero.x;
  v11 = v10 + 0.0;
  v12 = y * 0.0;
  if (axis == &dword_0 + 1)
  {
    v13 = v10 + 0.0;
  }

  else
  {
    v13 = v12 + 0.0 * CGPointZero.x + 0.0;
  }

  if (axis == &dword_0 + 1 && [(TUILayout *)self computedLayoutDirection]== &dword_0 + 2)
  {
    v14 = objc_msgSend_box(self);
    [v14 anchorOffset];
    v16 = v11 - v15;
  }

  else
  {
    v14 = objc_msgSend_box(self);
    [v14 anchorOffset];
    v16 = v13 + v17;
  }

  v18 = [TUITrigger alloc];
  v19 = objc_msgSend_box(self);
  name = [v19 name];
  v21 = objc_msgSend_box(self);
  v22 = -[TUITrigger initWithName:observationMode:](v18, "initWithName:observationMode:", name, [v21 observationMode]);

  [setCopy appendTriggerAnchorWithOffset:v22 trigger:objc_msgSend(setCopy axis:{"axis"), v16}];
}

@end
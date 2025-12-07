@interface PKPencilInteraction
+ (PKPencilInteraction)fallbackPencilInteraction;
+ (PKPencilInteraction)observerPencilInteraction;
@end

@implementation PKPencilInteraction

+ (PKPencilInteraction)fallbackPencilInteraction
{
  objc_opt_self();
  v1 = [PKPencilInteraction alloc];
  if (v1)
  {
    v3.receiver = v1;
    v3.super_class = PKPencilInteraction;
    v1 = objc_msgSendSuper2(&v3, sel_init);
    if (v1)
    {
      v1->_dispatchBehavior = 1;
      v1->_wantsDoubleTap = 1;
    }
  }

  return v1;
}

+ (PKPencilInteraction)observerPencilInteraction
{
  objc_opt_self();
  v1 = [PKPencilInteraction alloc];
  if (v1)
  {
    v3.receiver = v1;
    v3.super_class = PKPencilInteraction;
    v1 = objc_msgSendSuper2(&v3, sel_init);
    if (v1)
    {
      v1->_dispatchBehavior = 2;
      v1->_wantsDoubleTap = 1;
    }
  }

  return v1;
}

@end
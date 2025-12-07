@interface CAMZoomSliderUtilities
+ (void)layoutZoomSlider:(CGFloat)slider forLayoutStyle:(CGFloat)style bottomBarAlignmentRect:(CGFloat)rect bottomBarTransparent:(CGFloat)transparent shutterButtonAlignmentRect:(CGFloat)alignmentRect previewViewAlignmentRect:(CGFloat)viewAlignmentRect viewfinderViewAlignmentRect:(uint64_t)viewfinderViewAlignmentRect;
+ (void)layoutZoomSlider:(id)slider forLayoutStyle:(int64_t)style bottomBar:(id)bar previewView:(id)view viewfinderView:(id)viewfinderView;
@end

@implementation CAMZoomSliderUtilities

+ (void)layoutZoomSlider:(id)slider forLayoutStyle:(int64_t)style bottomBar:(id)bar previewView:(id)view viewfinderView:(id)viewfinderView
{
  viewfinderViewCopy = viewfinderView;
  viewCopy = view;
  barCopy = bar;
  sliderCopy = slider;
  superview = [sliderCopy superview];
  v16 = [barCopy backgroundStyle] == 1;
  [barCopy layoutIfNeeded];
  shutterButton = [barCopy shutterButton];
  [shutterButton frame];
  [shutterButton alignmentRectForFrame:?];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  superview2 = [shutterButton superview];
  [superview2 convertRect:superview toView:{v19, v21, v23, v25}];
  v57 = v28;
  v58 = v27;
  v55 = v30;
  v56 = v29;

  [barCopy bounds];
  [barCopy convertRect:superview toView:?];
  v53 = v32;
  v54 = v31;
  v51 = v34;
  v52 = v33;

  [viewCopy bounds];
  [viewCopy convertRect:superview toView:?];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  [viewfinderViewCopy bounds];
  [viewfinderViewCopy convertRect:superview toView:?];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  [self layoutZoomSlider:sliderCopy forLayoutStyle:style bottomBarAlignmentRect:v16 bottomBarTransparent:v54 shutterButtonAlignmentRect:v53 previewViewAlignmentRect:v52 viewfinderViewAlignmentRect:{v51, v58, v57, v56, v55, v36, v38, v40, v42, v44, v46, v48, v50}];
}

+ (void)layoutZoomSlider:(CGFloat)slider forLayoutStyle:(CGFloat)style bottomBarAlignmentRect:(CGFloat)rect bottomBarTransparent:(CGFloat)transparent shutterButtonAlignmentRect:(CGFloat)alignmentRect previewViewAlignmentRect:(CGFloat)viewAlignmentRect viewfinderViewAlignmentRect:(uint64_t)viewfinderViewAlignmentRect
{
  v31 = a11;
  v32 = [CAMBottomBar wantsVerticalBarForLayoutStyle:a12];
  v54.origin.x = self;
  v54.origin.y = a2;
  styleCopy = style;
  v54.size.width = slider;
  v54.size.height = style;
  IsEmpty = CGRectIsEmpty(v54);
  v55.origin.x = rect;
  v55.origin.y = transparent;
  v55.size.width = alignmentRect;
  v55.size.height = viewAlignmentRect;
  v34 = CGRectIsEmpty(v55);
  v35 = [v31 minimumTrackImageForState:0];
  [v35 size];
  v37 = *(MEMORY[0x1E695EFD0] + 16);
  *&v53.a = *MEMORY[0x1E695EFD0];
  *&v53.c = v37;
  *&v53.tx = *(MEMORY[0x1E695EFD0] + 32);
  if (!v32)
  {
    v50 = v36;
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v42 = 1.0 / v47 * 2.0 + 35.0;

    if ((IsEmpty | a13))
    {
      if (v34)
      {
        v58.size.width = a16;
        v58.size.height = a17;
        v58.origin.x = a14;
        v58.origin.y = a15;
        MaxY = CGRectGetMaxY(v58);
        v41 = 20.0;
        v42 = 10.0;
LABEL_9:
        v45 = 30.0;
        v61.origin.x = a18;
        v61.origin.y = a19;
        v61.size.width = a20;
        v61.size.height = a21;
        MinX = CGRectGetMinX(v61);
        v62.origin.y = a19;
        v38 = MinX;
        v62.origin.x = a18;
        v62.size.width = a20;
        v62.size.height = a21;
        Width = CGRectGetWidth(v62);
        v44 = v42 + v50 + 30.0;
        v40 = MaxY - v44;
        goto LABEL_10;
      }

      v60.origin.x = rect;
      v60.origin.y = transparent;
      v60.size.width = alignmentRect;
      v60.size.height = viewAlignmentRect;
      MaxY = CGRectGetMinY(v60);
    }

    else
    {
      v59.origin.x = self;
      v59.origin.y = a2;
      v59.size.width = slider;
      v59.size.height = styleCopy;
      MaxY = CGRectGetMinY(v59) + 10.0;
      v42 = v42 + 10.0;
    }

    v41 = 20.0;
    goto LABEL_9;
  }

  CGAffineTransformMakeRotation(&v52, -1.57079633);
  UIIntegralTransform();
  v56.origin.x = a18;
  v56.origin.y = a19;
  v56.size.width = a20;
  v56.size.height = a21;
  v38 = CGRectGetMinX(v56);
  v57.origin.x = a18;
  v57.origin.y = a19;
  v57.size.width = a20;
  v57.size.height = a21;
  CGRectGetHeight(v57);
  UIRoundToViewScale();
  v40 = v39;
  v41 = 25.0;
  v42 = 0.0;
  Width = 64.0;
  v44 = 320.0;
  v45 = 0.0;
LABEL_10:
  [v31 setAlignmentRectInsets:{v45, v41, v42, v41}];
  v52 = v53;
  [v31 setTransform:&v52];
  [v31 setFrame:{v38, v40, Width, v44}];
}

@end
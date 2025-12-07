@interface VOTImageExplorerElement
- (CGRect)accessibilityFrame;
- (VOTImageExplorerElement)initWithImageView:(id)view forFeature:(id)feature hasFlippedYAxis:(BOOL)axis;
- (id)_accessibilityScrollStatus;
@end

@implementation VOTImageExplorerElement

- (VOTImageExplorerElement)initWithImageView:(id)view forFeature:(id)feature hasFlippedYAxis:(BOOL)axis
{
  axisCopy = axis;
  featureCopy = feature;
  v13.receiver = self;
  v13.super_class = VOTImageExplorerElement;
  v10 = [(VOTImageExplorerElement *)&v13 initWithAccessibilityContainer:view];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_feature, feature);
    [(VOTImageExplorerElement *)v11 setFlippedYAxis:axisCopy];
  }

  return v11;
}

- (CGRect)accessibilityFrame
{
  accessibilityContainer = [(VOTImageExplorerElement *)self accessibilityContainer];
  feature = [(VOTImageExplorerElement *)self feature];
  [feature normalizedFrame];
  [accessibilityContainer frame];
  [(VOTImageExplorerElement *)self flippedYAxis];

  UIAccessibilityFrameForBounds();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)_accessibilityScrollStatus
{
  feature = [(VOTImageExplorerElement *)self feature];
  v4 = +[AXMVisionFeature localizedStringForLocation:isSubjectImplicit:](AXMVisionFeature, "localizedStringForLocation:isSubjectImplicit:", [feature locationUsingThirds:0 withFlippedYAxis:{-[VOTImageExplorerElement flippedYAxis](self, "flippedYAxis")}], 1);

  return v4;
}

@end
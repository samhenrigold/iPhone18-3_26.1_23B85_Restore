@interface PBFPosterGalleryPreviewViewController_InvertColorsAccessibility
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillMoveToWindow:(id)window;
@end

@implementation PBFPosterGalleryPreviewViewController_InvertColorsAccessibility

- (void)viewWillMoveToWindow:(id)window
{
  v4.receiver = self;
  v4.super_class = PBFPosterGalleryPreviewViewController_InvertColorsAccessibility;
  windowCopy = window;
  [(PBFPosterGalleryPreviewViewController_InvertColorsAccessibility *)&v4 viewWillMoveToWindow:windowCopy];
  [windowCopy _accessibilitySetBoolValue:1 forKey:{@"galleryVisible", v4.receiver, v4.super_class}];
  [AXInvertColorsManager toggleDarkModeWindowInvert:windowCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = PBFPosterGalleryPreviewViewController_InvertColorsAccessibility;
  [(PBFPosterGalleryPreviewViewController_InvertColorsAccessibility *)&v6 viewWillDisappear:disappear];
  v4 = [(PBFPosterGalleryPreviewViewController_InvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  window = [v4 window];

  [window _accessibilitySetBoolValue:0 forKey:@"galleryVisible"];
  [AXInvertColorsManager toggleDarkModeWindowInvert:window];
}

@end
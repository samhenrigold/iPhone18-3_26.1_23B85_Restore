@interface AVCaptureVideoPreviewLayerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layerDidBecomeVisible:(BOOL)visible;
@end

@implementation AVCaptureVideoPreviewLayerInvertColorsAccessibility

- (void)layerDidBecomeVisible:(BOOL)visible
{
  v4.receiver = self;
  v4.super_class = AVCaptureVideoPreviewLayerInvertColorsAccessibility;
  [(AVCaptureVideoPreviewLayerInvertColorsAccessibility *)&v4 layerDidBecomeVisible:visible];
  [(AVCaptureVideoPreviewLayerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  objc_opt_class();
  v3 = v2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    while (1)
    {
      delegate = [v5 delegate];
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      superlayer = [v5 superlayer];

      v5 = superlayer;
      if (!superlayer)
      {
        goto LABEL_7;
      }
    }

    delegate2 = [v5 delegate];
    [delegate2 setAccessibilityIgnoresInvertColors:1];
  }

LABEL_7:
}

@end
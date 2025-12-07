@interface UIViewController(PXDiagnosticsEnvironment)
- (id)px_diagnosticsItemProvidersForPoint:()PXDiagnosticsEnvironment inCoordinateSpace:;
@end

@implementation UIViewController(PXDiagnosticsEnvironment)

- (id)px_diagnosticsItemProvidersForPoint:()PXDiagnosticsEnvironment inCoordinateSpace:
{
  v6 = a5;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([self isViewLoaded])
  {
    PXPointIsNull();
  }

  return v7;
}

@end
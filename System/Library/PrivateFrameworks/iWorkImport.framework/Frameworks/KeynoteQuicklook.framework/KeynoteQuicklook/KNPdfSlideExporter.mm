@interface KNPdfSlideExporter
- (id)p_renderingExporterDelegate;
@end

@implementation KNPdfSlideExporter

- (id)p_renderingExporterDelegate
{
  v2 = [objc_alloc(MEMORY[0x277D7FFC8]) initWithRenderingExporter:self];

  return v2;
}

@end
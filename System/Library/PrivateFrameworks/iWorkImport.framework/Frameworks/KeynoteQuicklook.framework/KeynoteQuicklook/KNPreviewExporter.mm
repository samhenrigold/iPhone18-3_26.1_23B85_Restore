@interface KNPreviewExporter
- (id)p_renderingExporterDelegate;
- (void)setup;
@end

@implementation KNPreviewExporter

- (id)p_renderingExporterDelegate
{
  v2 = [objc_alloc(MEMORY[0x277D7FFC0]) initWithRenderingExporter:self];

  return v2;
}

- (void)setup
{
  v3.receiver = self;
  v3.super_class = KNPreviewExporter;
  [(KNSlideExporter *)&v3 setup];
  [(KNRenderingExporter *)self setPrintingBackgrounds:1];
  [(KNRenderingExporter *)self setPrintingBuilds:0];
  [(KNRenderingExporter *)self setPrintingBorders:0];
  [(KNRenderingExporter *)self setPrintingSlideNumbers:0];
}

@end
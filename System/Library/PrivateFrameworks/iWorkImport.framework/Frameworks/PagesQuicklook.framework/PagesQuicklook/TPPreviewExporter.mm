@interface TPPreviewExporter
- (id)p_renderingExporterDelegate;
@end

@implementation TPPreviewExporter

- (id)p_renderingExporterDelegate
{
  v3 = objc_alloc(MEMORY[0x277D7FFC0]);
  v12 = objc_msgSend_initWithRenderingExporter_(v3, v4, v8, v9, v10, v11, self, v5, v6, v7);

  return v12;
}

@end
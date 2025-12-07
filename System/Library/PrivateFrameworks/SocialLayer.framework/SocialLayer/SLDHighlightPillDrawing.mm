@interface SLDHighlightPillDrawing
- (CGSize)drawingSize;
- (SLDHighlightPillDrawing)initWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote;
- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point;
- (void)drawingSize;
@end

@implementation SLDHighlightPillDrawing

- (SLDHighlightPillDrawing)initWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote
{
  styleCopy = style;
  tagCopy = tag;
  v14.receiver = self;
  v14.super_class = SLDHighlightPillDrawing;
  v11 = [(SLDHighlightPillDrawing *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_slotStyle, style);
    if ([tagCopy isMemberOfClass:objc_opt_class()])
    {
      objc_storeStrong(&v12->_tag, tag);
    }

    v12->_forRemote = remote;
    v12->_isRTL = [styleCopy layoutDirection] == 1;
  }

  return v12;
}

- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point
{
  if ([(SLDHighlightPillDrawing *)self forRemote:point.x])
  {
    v6 = [SLDHighlightPillRenderer alloc];
    slotStyle = [(SLDHighlightPillDrawing *)self slotStyle];
    v8 = [(SLDHighlightPillDrawing *)self tag];
    v10 = [(SLDHighlightPillRenderer *)v6 initWithStyle:slotStyle tag:v8];

    v9 = v10;
    if (v10)
    {
      [(SLDHighlightPillRenderer *)v10 renderInContext:context];
      v9 = v10;
    }
  }
}

- (CGSize)drawingSize
{
  v3 = [SLHighlightPillMetrics alloc];
  slotStyle = [(SLDHighlightPillDrawing *)self slotStyle];
  v5 = [(SLDHighlightPillDrawing *)self tag];
  v6 = [(SLHighlightPillMetrics *)v3 initWithSlotStyle:slotStyle tag:v5];

  [(SLHighlightPillMetrics *)v6 pillSize];
  v8 = v7;
  v10 = v9;
  v11 = [(SLDHighlightPillDrawing *)self tag];
  [v11 maxWidth];
  v13 = v12;

  if (v8 > v13)
  {
    v15 = SLDaemonLogHandle(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(SLDHighlightPillDrawing *)self drawingSize];
    }

    v16 = [(SLDHighlightPillDrawing *)self tag];
    [v16 maxWidth];
    v8 = v17;
  }

  v18 = v8;
  v19 = v10;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)drawingSize
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = [self tag];
  [v6 maxWidth];
  v8 = 134218496;
  selfCopy = self;
  v10 = 2048;
  v11 = v7;
  v12 = 2048;
  v13 = a3;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "[SLDHighlightPillSlotDrawer: %p] client specified a max width smaller than the min size to fit the non-flexible contents. This will result in incorrect layout. maxWidth: %f, non-flexible item width: %f", &v8, 0x20u);
}

@end
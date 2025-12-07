@interface UITopoView
- (CGSize)intrinsicContentSize;
- (void)dealloc;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
@end

@implementation UITopoView

- (void)dealloc
{
  objc_msgSend_setNetTopoMiniStaticLayout_(self, a2, 0, v2);
  v4.receiver = self;
  v4.super_class = UITopoView;
  [(UITopoView *)&v4 dealloc];
}

- (CGSize)intrinsicContentSize
{
  v4 = objc_msgSend_layer(self, a2, v2, v3);
  objc_msgSend_bounds(v4, v5, v6, v7);
  v9 = v8;
  v10 = *MEMORY[0x277D77260];
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  objc_msgSend_frame(self, a2, v3, v4);
  v11 = v10;
  v13 = v12;
  v25.receiver = self;
  v25.super_class = UITopoView;
  [(UITopoView *)&v25 setFrame:x, y, width, height];
  if (width != v11 || height != v13)
  {
    if (objc_msgSend_netTopoMiniStaticLayout(self, v14, v15, v16))
    {
      v21 = objc_msgSend_netTopoMiniStaticLayout(self, v18, v19, v20);
      objc_msgSend_performLayout(v21, v22, v23, v24);
    }
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  objc_msgSend_bounds(self, a2, v3, v4);
  v11 = v10;
  v13 = v12;
  v25.receiver = self;
  v25.super_class = UITopoView;
  [(UITopoView *)&v25 setBounds:x, y, width, height];
  if (width != v11 || height != v13)
  {
    if (objc_msgSend_netTopoMiniStaticLayout(self, v14, v15, v16))
    {
      v21 = objc_msgSend_netTopoMiniStaticLayout(self, v18, v19, v20);
      objc_msgSend_performLayout(v21, v22, v23, v24);
    }
  }
}

@end
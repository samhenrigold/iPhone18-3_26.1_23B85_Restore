@interface TabDocumentViewForPageTest
- ($3E8622391F623B53F6251319F3599675)currentGeometry;
- (void)setFixedWebViewSize:(CGSize)size completionHandler:(id)handler;
@end

@implementation TabDocumentViewForPageTest

- ($3E8622391F623B53F6251319F3599675)currentGeometry
{
  p_fixedWebViewSize = &self->_fixedWebViewSize;
  if (self->_fixedWebViewSize.width == *MEMORY[0x277CBF3A8] && self->_fixedWebViewSize.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    v16.receiver = self;
    v16.super_class = TabDocumentViewForPageTest;
    return [($3E8622391F623B53F6251319F3599675 *)&v16 currentGeometry];
  }

  else
  {
    *&retstr->var7.bottom = 0u;
    *&retstr->var8 = 0u;
    retstr->var6 = 0u;
    *&retstr->var7.top = 0u;
    retstr->var4 = 0u;
    retstr->var5 = 0u;
    *&retstr->var3.var1.top = 0u;
    *&retstr->var3.var1.bottom = 0u;
    *&retstr->var3.var0.top = 0u;
    *&retstr->var3.var0.bottom = 0u;
    *&retstr->var2.top = 0u;
    *&retstr->var2.bottom = 0u;
    *&retstr->var1.top = 0u;
    *&retstr->var1.bottom = 0u;
    [(TabDocumentViewForPageTest *)self bounds];
    x = v17.origin.x;
    y = v17.origin.y;
    width = v17.size.width;
    height = v17.size.height;
    v10 = p_fixedWebViewSize->width;
    v11 = p_fixedWebViewSize->height;
    v12 = CGRectGetMidX(v17) - v10 * 0.5;
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    MidY = CGRectGetMidY(v18);
    retstr->var0.origin.x = v12;
    retstr->var0.origin.y = MidY - v11 * 0.5;
    retstr->var0.size.width = v10;
    retstr->var0.size.height = v11;
    size = retstr->var0.size;
    retstr->var4 = size;
    retstr->var5 = size;
    retstr->var6 = size;
    retstr->var9 = v10;
  }

  return result;
}

- (void)setFixedWebViewSize:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v38 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  webView = [(TabDocumentView *)self webView];
  [webView frame];
  v10 = v9;
  v12 = v11;

  if (v10 != width || v12 != height)
  {
    self->_fixedWebViewSize.width = width;
    self->_fixedWebViewSize.height = height;
    webView2 = [(TabDocumentView *)self webView];
    [(TabDocumentView *)self applyGeometryToWebView:webView2];

    v17 = WBS_LOG_CHANNEL_PREFIXTest(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = v17;
      webView3 = [(TabDocumentView *)self webView];
      [webView3 frame];
      v21 = v20;
      webView4 = [(TabDocumentView *)self webView];
      [webView4 frame];
      v24 = v23;
      webView5 = [(TabDocumentView *)self webView];
      [webView5 frame];
      v27 = v26;
      webView6 = [(TabDocumentView *)self webView];
      [webView6 frame];
      v30 = 134218752;
      v31 = v21;
      v32 = 2048;
      v33 = v24;
      v34 = 2048;
      v35 = v27;
      v36 = 2048;
      v37 = v29;
      _os_log_impl(&dword_215819000, v18, OS_LOG_TYPE_INFO, "WebView frame for Page Test is (%.0f-%.0f, %.0fx%.0f)", &v30, 0x2Au);
    }
  }

  handlerCopy[2](handlerCopy, 0);
}

@end
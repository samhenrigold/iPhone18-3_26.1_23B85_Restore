@interface SKUINavigationBarSectionController
- (SKUIViewElementLayoutContext)viewLayoutContext;
- (UIView)view;
- (id)barButtonItemForElementIdentifier:(id)identifier;
- (id)viewForElementIdentifier:(id)identifier;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)dealloc;
- (void)reloadAfterDocumentUpdateWithNavigationItem:(id)item;
- (void)view;
- (void)viewLayoutContext;
@end

@implementation SKUINavigationBarSectionController

- (void)dealloc
{
  [(SKUIViewElementLayoutContext *)self->_viewLayoutContext setArtworkRequestDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUINavigationBarSectionController;
  [(SKUINavigationBarSectionController *)&v3 dealloc];
}

- (id)barButtonItemForElementIdentifier:(id)identifier
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUINavigationBarSectionController *)v3 barButtonItemForElementIdentifier:v4, v5, v6, v7, v8, v9, v10];
      }
    }
  }

  return 0;
}

- (void)reloadAfterDocumentUpdateWithNavigationItem:(id)item
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v3)
    {
      [(SKUINavigationBarSectionController *)v3 reloadAfterDocumentUpdateWithNavigationItem:v4, v5, v6, v7, v8, v9, v10];
    }
  }
}

- (UIView)view
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUINavigationBarSectionController *)v2 view:v3];
      }
    }
  }

  return 0;
}

- (id)viewForElementIdentifier:(id)identifier
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUINavigationBarSectionController *)v3 viewForElementIdentifier:v4, v5, v6, v7, v8, v9, v10];
      }
    }
  }

  return 0;
}

- (SKUIViewElementLayoutContext)viewLayoutContext
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUINavigationBarSectionController viewLayoutContext];
  }

  viewLayoutContext = self->_viewLayoutContext;
  if (!viewLayoutContext)
  {
    v4 = objc_alloc_init(SKUIViewElementLayoutContext);
    v5 = self->_viewLayoutContext;
    self->_viewLayoutContext = v4;

    [(SKUIViewElementLayoutContext *)self->_viewLayoutContext setArtworkRequestDelegate:self];
    v6 = self->_viewLayoutContext;
    clientContext = [(SKUINavigationBarContext *)self->_navigationBarContext clientContext];
    [(SKUIViewElementLayoutContext *)v6 setClientContext:clientContext];

    v8 = self->_viewLayoutContext;
    parentViewController = [(SKUINavigationBarContext *)self->_navigationBarContext parentViewController];
    [(SKUIViewElementLayoutContext *)v8 setParentViewController:parentViewController];

    v10 = self->_viewLayoutContext;
    resourceLoader = [(SKUINavigationBarContext *)self->_navigationBarContext resourceLoader];
    [(SKUIViewElementLayoutContext *)v10 setResourceLoader:resourceLoader];

    v12 = [SKUIViewElementTextLayoutCache alloc];
    textLayoutCache = [(SKUINavigationBarContext *)self->_navigationBarContext textLayoutCache];
    v14 = [(SKUIViewElementTextLayoutCache *)v12 initWithLayoutCache:textLayoutCache];

    [(SKUIViewElementLayoutContext *)self->_viewLayoutContext setLabelLayoutCache:v14];
    viewLayoutContext = self->_viewLayoutContext;
  }

  return viewLayoutContext;
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v4)
    {
      [(SKUINavigationBarSectionController *)v4 artworkRequest:v5 didLoadImage:v6, v7, v8, v9, v10, v11];
    }
  }
}

- (void)barButtonItemForElementIdentifier:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUINavigationBarSectionController barButtonItemForElementIdentifier:]";
}

- (void)reloadAfterDocumentUpdateWithNavigationItem:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUINavigationBarSectionController reloadAfterDocumentUpdateWithNavigationItem:]";
}

- (void)view
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUINavigationBarSectionController view]";
}

- (void)viewForElementIdentifier:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUINavigationBarSectionController viewForElementIdentifier:]";
}

- (void)viewLayoutContext
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUINavigationBarSectionController viewLayoutContext]";
}

- (void)artworkRequest:(uint64_t)a3 didLoadImage:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUINavigationBarSectionController artworkRequest:didLoadImage:]";
}

@end
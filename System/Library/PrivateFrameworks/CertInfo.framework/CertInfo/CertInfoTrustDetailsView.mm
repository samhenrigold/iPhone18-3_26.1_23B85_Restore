@interface CertInfoTrustDetailsView
- (CertInfoTrustDetailsView)initWithFrame:(CGRect)frame trustProperties:(id)properties;
- (void)_appendRemainingCertificates;
- (void)layoutSubviews;
@end

@implementation CertInfoTrustDetailsView

- (void)_appendRemainingCertificates
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_certificateViews;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        currentCertView = self->_currentCertView;
        if (*(*(&v9 + 1) + 8 * i) != currentCertView)
        {
          [(CertInfoCertificateDetailsView *)currentCertView appendInfoFromCertView:v9];
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (CertInfoTrustDetailsView)initWithFrame:(CGRect)frame trustProperties:(id)properties
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v30 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v28.receiver = self;
  v28.super_class = CertInfoTrustDetailsView;
  height = [(CertInfoTrustDetailsView *)&v28 initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = propertiesCopy;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        v16 = 0;
        do
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * v16);
          v18 = [CertInfoCertificateDetailsView alloc];
          v19 = [(CertInfoCertificateDetailsView *)v18 initWithFrame:v17 certificateProperties:x, y, width, height, v24];
          [v11 addObject:v19];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v14);
    }

    if ([v11 count])
    {
      objc_storeStrong(&height->_certificateViews, v11);
    }

    v20 = [(NSArray *)height->_certificateViews objectAtIndex:0, v24];
    currentCertView = height->_currentCertView;
    height->_currentCertView = v20;

    [(CertInfoTrustDetailsView *)height addSubview:height->_currentCertView];
    [(CertInfoTrustDetailsView *)height _appendRemainingCertificates];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(CertInfoTrustDetailsView *)height setBackgroundColor:whiteColor];
  }

  return height;
}

- (void)layoutSubviews
{
  [(CertInfoTrustDetailsView *)self bounds];
  currentCertView = self->_currentCertView;

  [(CertInfoCertificateDetailsView *)currentCertView setFrame:?];
}

@end
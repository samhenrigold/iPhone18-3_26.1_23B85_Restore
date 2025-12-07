@interface TPHeaderRep
- (BOOL)p_isInDocumentSetup;
- (BOOL)p_isMiddleFooterRep;
- (BOOL)p_isMiddleHeaderRep;
- (BOOL)p_shouldCreateArrowKnobs;
- (TPPaginatedPageInfo)pageInfo;
- (id)pageLayout;
@end

@implementation TPHeaderRep

- (id)pageLayout
{
  objc_opt_class();
  v12 = objc_msgSend_layout(self, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v22 = objc_msgSend_pageLayout(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v23 = TSUDynamicCast();

  return v23;
}

- (TPPaginatedPageInfo)pageInfo
{
  objc_opt_class();
  v12 = objc_msgSend_pageLayout(self, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v22 = objc_msgSend_info(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v23 = TSUCheckedDynamicCast();

  return v23;
}

- (BOOL)p_isInDocumentSetup
{
  v10 = objc_msgSend_pageInfo(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  isDocumentSetupPage = objc_msgSend_isDocumentSetupPage(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return isDocumentSetupPage;
}

- (BOOL)p_shouldCreateArrowKnobs
{
  if (self->_hideKnobs)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = objc_msgSend_p_isInDocumentSetup(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
    if (v10)
    {
      if (objc_msgSend_p_isMiddleHeaderRep(self, v12, v17, v18, v19, v20, v13, v14, v15, v16))
      {
        LOBYTE(v10) = 1;
      }

      else
      {

        LOBYTE(v10) = MEMORY[0x2821F9670](self, sel_p_isMiddleFooterRep, v21, v22, v23, v24);
      }
    }
  }

  return v10;
}

- (BOOL)p_isMiddleHeaderRep
{
  selfCopy = self;
  v11 = objc_msgSend_pageLayout(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_headerFooterProvider(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v29 = objc_msgSend_headerFooter_fragmentAtIndex_(v21, v22, v25, v26, v27, v28, 0, 1, v23, v24);

  v39 = objc_msgSend_storage(selfCopy, v30, v35, v36, v37, v38, v31, v32, v33, v34);
  LOBYTE(selfCopy) = v39 == v29;

  return selfCopy;
}

- (BOOL)p_isMiddleFooterRep
{
  selfCopy = self;
  v11 = objc_msgSend_pageLayout(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_headerFooterProvider(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v29 = objc_msgSend_headerFooter_fragmentAtIndex_(v21, v22, v25, v26, v27, v28, 1, 1, v23, v24);

  v39 = objc_msgSend_storage(selfCopy, v30, v35, v36, v37, v38, v31, v32, v33, v34);
  LOBYTE(selfCopy) = v39 == v29;

  return selfCopy;
}

@end
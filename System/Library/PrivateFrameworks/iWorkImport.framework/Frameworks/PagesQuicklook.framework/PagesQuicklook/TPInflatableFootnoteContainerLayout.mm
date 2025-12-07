@interface TPInflatableFootnoteContainerLayout
- (id)computeLayoutGeometry;
- (void)validate;
@end

@implementation TPInflatableFootnoteContainerLayout

- (void)validate
{
  if (!self->_inflated)
  {
    self->_inflated = 1;
    v11 = objc_msgSend_pageLayout(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
    objc_msgSend_inflateFootnotesInFootnoteContainer_(v11, v12, v16, v17, v18, v19, self, v13, v14, v15);
  }

  v20.receiver = self;
  v20.super_class = TPInflatableFootnoteContainerLayout;
  [(TPFootnoteContainerLayout *)&v20 validate];
}

- (id)computeLayoutGeometry
{
  v58.receiver = self;
  v58.super_class = TPInflatableFootnoteContainerLayout;
  computeLayoutGeometry = [(TPFootnoteContainerLayout *)&v58 computeLayoutGeometry];
  v18 = objc_msgSend_pageLayout(self, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  if (v18)
  {
    objc_msgSend_frame(computeLayoutGeometry, v13, v19, v20, v21, v22, v14, v15, v16, v17);
    v24 = v23;
    v26 = v25;
    v28 = v27.n128_f64[0];
    v30 = v29.n128_f64[0];
    v31.n128_u64[0] = v27.n128_u64[0];
    v32.n128_u64[0] = v29.n128_u64[0];
    objc_msgSend_footnoteContainerFrameWithSize_(v18, v33, v31, v32, v27, v29, v34, v35, v36, v37);
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v60.origin.x = v24;
    v60.origin.y = v26;
    v60.size.width = v28;
    v60.size.height = v30;
    v61.origin.x = v39;
    v61.origin.y = v41;
    v61.size.width = v43;
    v61.size.height = v45;
    if (!CGRectEqualToRect(v60, v61))
    {
      v46 = objc_alloc(MEMORY[0x277D80300]);
      v47.n128_f64[0] = v39;
      v48.n128_f64[0] = v41;
      v49.n128_f64[0] = v43;
      v50.n128_f64[0] = v45;
      v56 = objc_msgSend_initWithFrame_(v46, v51, v47, v48, v49, v50, v52, v53, v54, v55);

      computeLayoutGeometry = v56;
    }
  }

  return computeLayoutGeometry;
}

@end
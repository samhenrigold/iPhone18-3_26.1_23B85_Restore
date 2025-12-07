@interface TPTextWrapCookie
+ (id)textWrapCookieForColumn:(id)column targetLayout:(id)layout;
- (CGAffineTransform)targetInverseTransformInRoot;
- (TPTextWrapCookie)initWithColumn:(id)column targetLayout:(id)layout;
- (TSWPLayoutTarget)target;
- (id)transformedWrapSegmentsForWrappable:(id)wrappable canvasSpaceToWrapSpaceTransform:(CGAffineTransform *)transform;
- (void)addFloatingWrappable:(id)wrappable;
- (void)setTarget:(id)target;
@end

@implementation TPTextWrapCookie

+ (id)textWrapCookieForColumn:(id)column targetLayout:(id)layout
{
  layoutCopy = layout;
  columnCopy = column;
  v8 = [self alloc];
  v16 = objc_msgSend_initWithColumn_targetLayout_(v8, v9, v12, v13, v14, v15, columnCopy, layoutCopy, v10, v11);

  return v16;
}

- (TPTextWrapCookie)initWithColumn:(id)column targetLayout:(id)layout
{
  columnCopy = column;
  layoutCopy = layout;
  v30.receiver = self;
  v30.super_class = TPTextWrapCookie;
  v8 = [(TPTextWrapCookie *)&v30 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    floatingWrappables = v8->_floatingWrappables;
    v8->_floatingWrappables = v9;

    v11 = objc_alloc_init(MEMORY[0x277D812B8]);
    wrapSegmentsInverseTransformInRootDictionary = v8->_wrapSegmentsInverseTransformInRootDictionary;
    v8->_wrapSegmentsInverseTransformInRootDictionary = v11;

    objc_msgSend_setColumn_(v8, v13, v17, v18, v19, v20, columnCopy, v14, v15, v16);
    objc_msgSend_setTarget_(v8, v21, v25, v26, v27, v28, layoutCopy, v22, v23, v24);
  }

  return v8;
}

- (void)setTarget:(id)target
{
  targetCopy = target;
  v5 = objc_storeWeak(&self->_target, targetCopy);
  if (targetCopy)
  {
    objc_msgSend_transformInRoot(targetCopy, v10, v11, v12, v13, v6, v7, v8, v9);
  }

  else
  {
    memset(&v15, 0, sizeof(v15));
  }

  CGAffineTransformInvert(&v16, &v15);
  v14 = *&v16.c;
  *&self->_targetInverseTransformInRoot.a = *&v16.a;
  *&self->_targetInverseTransformInRoot.c = v14;
  *&self->_targetInverseTransformInRoot.tx = *&v16.tx;
}

- (void)addFloatingWrappable:(id)wrappable
{
  wrappableCopy = wrappable;
  if (objc_msgSend_wrapType(wrappableCopy, v4, v9, v10, v11, v12, v5, v6, v7, v8) && objc_msgSend_wrapType(wrappableCopy, v13, v18, v19, v20, v21, v14, v15, v16, v17) != 5)
  {
    objc_msgSend_addObject_(self->_floatingWrappables, v22, v26, v27, v28, v29, wrappableCopy, v23, v24, v25);
  }
}

- (id)transformedWrapSegmentsForWrappable:(id)wrappable canvasSpaceToWrapSpaceTransform:(CGAffineTransform *)transform
{
  wrappableCopy = wrappable;
  v15 = objc_msgSend_objectForKey_(self->_wrapSegmentsInverseTransformInRootDictionary, v7, v11, v12, v13, v14, wrappableCopy, v8, v9, v10);
  v25 = objc_msgSend_first(v15, v16, v21, v22, v23, v24, v17, v18, v19, v20);
  v35 = objc_msgSend_second(v15, v26, v31, v32, v33, v34, v27, v28, v29, v30);
  v50 = objc_msgSend_geometry(wrappableCopy, v36, v41, v42, v43, v44, v37, v38, v39, v40);
  if (!v25 || (objc_msgSend_isEqual_(v35, v45, v51, v52, v53, v54, v50, v47, v48, v49) & 1) == 0)
  {
    v55 = objc_msgSend_wrapSegments(wrappableCopy, v45, v51, v52, v53, v54, v46, v47, v48, v49);
    v65 = objc_msgSend_copy(v55, v56, v61, v62, v63, v64, v57, v58, v59, v60);

    if (v65)
    {
      v72 = *&self->_targetInverseTransformInRoot.c;
      v97 = *&self->_targetInverseTransformInRoot.a;
      v98 = v72;
      v99 = *&self->_targetInverseTransformInRoot.tx;
      objc_msgSend_transformUsingAffineTransform_(v65, v66, v99, v72, v70, v71, &v97, v67, v68, v69);
      v73 = *&transform->c;
      v97 = *&transform->a;
      v98 = v73;
      v99 = *&transform->tx;
      objc_msgSend_transformUsingAffineTransform_(v65, v74, v99, v73, v78, v79, &v97, v75, v76, v77);
      v80 = objc_alloc(MEMORY[0x277D812A8]);
      second = objc_msgSend_initWithFirst_second_(v80, v81, v84, v85, v86, v87, v65, v50, v82, v83);
      objc_msgSend_setObject_forUncopiedKey_(self->_wrapSegmentsInverseTransformInRootDictionary, v89, v92, v93, v94, v95, second, wrappableCopy, v90, v91);

      v25 = v65;
    }

    else
    {
      v25 = 0;
    }
  }

  return v25;
}

- (TSWPLayoutTarget)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (CGAffineTransform)targetInverseTransformInRoot
{
  v3 = *&self[1].c;
  *&retstr->a = *&self[1].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].tx;
  return self;
}

@end
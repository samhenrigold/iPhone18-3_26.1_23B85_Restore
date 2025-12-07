@interface TPPageControllerCanvasDelegate
- (CGRect)visibleScaledBoundsForClippingRepsOnCanvas:(id)canvas;
- (TPPageControllerCanvasDelegate)initWithDocumentRoot:(id)root canvas:(id)canvas;
- (id)documentRoot;
- (void)dealloc;
@end

@implementation TPPageControllerCanvasDelegate

- (TPPageControllerCanvasDelegate)initWithDocumentRoot:(id)root canvas:(id)canvas
{
  rootCopy = root;
  canvasCopy = canvas;
  if (!rootCopy)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v12, v13, v14, v15, "[TPPageControllerCanvasDelegate initWithDocumentRoot:canvas:]", v8, v9, v10);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageControllerCanvasDelegate.m", v19, v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v27, v28, v29, v30, v31, v17, v26, 40, 0, "invalid nil value for '%{public}s'", "documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v37, v38, v39, v40, v33, v34, v35, v36);
  }

  v44.receiver = self;
  v44.super_class = TPPageControllerCanvasDelegate;
  v41 = [(TPPageControllerCanvasDelegate *)&v44 init];
  v42 = v41;
  if (v41)
  {
    objc_storeWeak(&v41->_documentRoot, rootCopy);
    objc_storeStrong(&v42->_canvas, canvas);
    v42->_textLayoutMustIncludeAdornmentsCounter = 0;
  }

  return v42;
}

- (void)dealloc
{
  objc_msgSend_teardown(self->_canvas, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v11.receiver = self;
  v11.super_class = TPPageControllerCanvasDelegate;
  [(TPPageControllerCanvasDelegate *)&v11 dealloc];
}

- (id)documentRoot
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);

  return WeakRetained;
}

- (CGRect)visibleScaledBoundsForClippingRepsOnCanvas:(id)canvas
{
  v3 = *MEMORY[0x277CBF398];
  v4 = *(MEMORY[0x277CBF398] + 8);
  v5 = *(MEMORY[0x277CBF398] + 16);
  v6 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end
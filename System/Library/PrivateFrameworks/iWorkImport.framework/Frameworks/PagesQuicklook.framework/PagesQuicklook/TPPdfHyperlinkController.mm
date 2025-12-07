@interface TPPdfHyperlinkController
+ (id)URLWithDestinationName:(id)name;
+ (id)destinationFromSectionURL:(id)l;
- (BOOL)isDestination:(id)destination;
- (CGRect)canvasRect;
- (TPPdfHyperlinkController)initWithDocumentRoot:(id)root;
- (id)destinationFromUrl:(id)url;
@end

@implementation TPPdfHyperlinkController

- (TPPdfHyperlinkController)initWithDocumentRoot:(id)root
{
  v4.receiver = self;
  v4.super_class = TPPdfHyperlinkController;
  return [(TSAPdfHyperlinkController *)&v4 init];
}

- (CGRect)canvasRect
{
  x = self->mCanvasRect.origin.x;
  y = self->mCanvasRect.origin.y;
  width = self->mCanvasRect.size.width;
  height = self->mCanvasRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (id)destinationFromSectionURL:(id)l
{
  lCopy = l;
  v13 = objc_msgSend_absoluteString(lCopy, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v14 = *MEMORY[0x277D80FF0];
  if ((objc_msgSend_hasPrefix_(v13, v15, v19, v20, v21, v22, *MEMORY[0x277D80FF0], v16, v17, v18) & 1) == 0)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v27, v28, v29, v30, "+[TPPdfHyperlinkController destinationFromSectionURL:]", v24, v25, v26);
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPdfHyperlinkController.m", v34, v35, v36);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v42, v43, v44, v45, v46, v32, v41, 86, 0, "Expected section URL");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v52, v53, v54, v55, v48, v49, v50, v51);
  }

  if (objc_msgSend_hasPrefix_(v13, v23, v27, v28, v29, v30, v14, v24, v25, v26))
  {
    v65 = objc_msgSend_length(v14, v56, v61, v62, v63, v64, v57, v58, v59, v60);
    v74 = objc_msgSend_substringFromIndex_(v13, v66, v70, v71, v72, v73, v65, v67, v68, v69);
    v84 = objc_msgSend_length(v74, v75, v80, v81, v82, v83, v76, v77, v78, v79);
  }

  else
  {
    v74 = &stru_288501738;
    v84 = objc_msgSend_length(&stru_288501738, v56, v61, v62, v63, v64, v57, v58, v59, v60);
  }

  if (!v84)
  {
    v93 = MEMORY[0x277D81150];
    v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, v89, v90, v91, v92, "+[TPPdfHyperlinkController destinationFromSectionURL:]", v86, v87, v88);
    v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, v99, v100, v101, v102, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPdfHyperlinkController.m", v96, v97, v98);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v93, v104, v105, v106, v107, v108, v94, v103, 93, 0, "No destination returned for URL: %@", lCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v109, v114, v115, v116, v117, v110, v111, v112, v113);
  }

  return v74;
}

- (BOOL)isDestination:(id)destination
{
  v10 = objc_msgSend_absoluteString(destination, a2, v6, v7, v8, v9, destination, v3, v4, v5);
  if (objc_msgSend_hasPrefix_(v10, v11, v15, v16, v17, v18, *MEMORY[0x277D80FE8], v12, v13, v14))
  {
    hasPrefix = 1;
  }

  else
  {
    hasPrefix = objc_msgSend_hasPrefix_(v10, v19, v23, v24, v25, v26, *MEMORY[0x277D80FF0], v20, v21, v22);
  }

  return hasPrefix;
}

- (id)destinationFromUrl:(id)url
{
  urlCopy = url;
  v13 = objc_msgSend_absoluteString(urlCopy, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  if (objc_msgSend_hasPrefix_(v13, v14, v18, v19, v20, v21, *MEMORY[0x277D80FE8], v15, v16, v17))
  {
    v31 = objc_msgSend_stringByRemovingPercentEncoding(v13, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    v40 = objc_msgSend_substringFromIndex_(v31, v32, v36, v37, v38, v39, 1, v33, v34, v35);
  }

  else if (objc_msgSend_hasPrefix_(v13, v22, v27, v28, v29, v30, *MEMORY[0x277D80FF0], v24, v25, v26))
  {
    v40 = objc_msgSend_destinationFromSectionURL_(TPPdfHyperlinkController, v41, v45, v46, v47, v48, urlCopy, v42, v43, v44);
  }

  else
  {
    v49 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v45, v46, v47, v48, "[TPPdfHyperlinkController destinationFromUrl:]", v42, v43, v44);
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPdfHyperlinkController.m", v52, v53, v54);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v60, v61, v62, v63, v64, v50, v59, 115, 0, "Unable to return destination for URL that is not a bookmark or section URL");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v70, v71, v72, v73, v66, v67, v68, v69);
    v40 = &stru_288501738;
  }

  return v40;
}

+ (id)URLWithDestinationName:(id)name
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = *MEMORY[0x277D80FE8];
  v5 = MEMORY[0x277CCA900];
  nameCopy = name;
  v16 = objc_msgSend_URLFragmentAllowedCharacterSet(v5, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  v25 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(nameCopy, v17, v21, v22, v23, v24, v16, v18, v19, v20);

  v34 = objc_msgSend_stringByAppendingString_(v4, v26, v30, v31, v32, v33, v25, v27, v28, v29);
  v43 = objc_msgSend_URLWithString_(v3, v35, v39, v40, v41, v42, v34, v36, v37, v38);

  return v43;
}

@end
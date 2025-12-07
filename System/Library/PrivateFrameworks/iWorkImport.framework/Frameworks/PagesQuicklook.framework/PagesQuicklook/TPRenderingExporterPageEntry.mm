@interface TPRenderingExporterPageEntry
- (id)description;
@end

@implementation TPRenderingExporterPageEntry

- (id)description
{
  v3 = MEMORY[0x277D811A8];
  v4 = objc_opt_class();
  v12 = objc_msgSend_descriptionWithObject_class_(v3, v5, v8, v9, v10, v11, self, v4, v6, v7);
  v22 = objc_msgSend_documentPageIndex(self, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  objc_msgSend_addField_format_(v12, v23, v26, v27, v28, v29, @"documentPageIndex", @"%ld", v24, v25, v22);
  v39 = objc_msgSend_commentOverflowPageIndex(self, v30, v35, v36, v37, v38, v31, v32, v33, v34);
  objc_msgSend_addField_format_(v12, v40, v43, v44, v45, v46, @"commentOverflowPageIndex", @"%ld", v41, v42, v39);
  AnnotationNumber = objc_msgSend_firstAnnotationNumber(self, v47, v52, v53, v54, v55, v48, v49, v50, v51);
  objc_msgSend_addField_format_(v12, v57, v60, v61, v62, v63, @"firstAnnotationNumber", @"%ld", v58, v59, AnnotationNumber);
  v73 = objc_msgSend_descriptionString(v12, v64, v69, v70, v71, v72, v65, v66, v67, v68);

  return v73;
}

@end
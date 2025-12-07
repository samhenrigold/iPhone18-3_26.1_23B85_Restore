@interface TPPdfExporter
- (id)p_renderingExporterDelegate;
- (void)setOptions:(id)options;
@end

@implementation TPPdfExporter

- (id)p_renderingExporterDelegate
{
  v3 = objc_alloc(MEMORY[0x277D7FFC8]);
  v12 = objc_msgSend_initWithRenderingExporter_(v3, v4, v8, v9, v10, v11, self, v5, v6, v7);

  return v12;
}

- (void)setOptions:(id)options
{
  v132.receiver = self;
  v132.super_class = TPPdfExporter;
  optionsCopy = options;
  [(TPRenderingExporter *)&v132 setOptions:optionsCopy];
  v13 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v5, v9, v10, v11, v12, *MEMORY[0x277D80780], v6, v7, v8, v132.receiver, v132.super_class);

  if (v13)
  {
    v22 = *(&self->super.super.super.isa + *MEMORY[0x277D80000]);
    v32 = objc_msgSend_intValue(v13, v23, v28, v29, v30, v31, v24, v25, v26, v27);
    objc_msgSend_setRenderingQuality_(v22, v33, v37, v38, v39, v40, v32, v34, v35, v36);
  }

  v41 = *MEMORY[0x277D7FFF0];
  v42 = objc_msgSend_objectForKeyedSubscript_(*(&self->super.super.super.isa + v41), v14, v18, v19, v20, v21, *MEMORY[0x277D807A0], v15, v16, v17);
  v52 = v42;
  if (v42)
  {
    v53 = objc_msgSend_BOOLValue(v42, v43, v48, v49, v50, v51, v44, v45, v46, v47);
    objc_msgSend_setIncludePencilAnnotations_(self, v54, v58, v59, v60, v61, v53, v55, v56, v57);
  }

  v62 = objc_msgSend_objectForKeyedSubscript_(*(&self->super.super.super.isa + v41), v43, v48, v49, v50, v51, *MEMORY[0x277D807B8], v45, v46, v47);
  v72 = v62;
  if (v62)
  {
    v73 = objc_msgSend_BOOLValue(v62, v63, v68, v69, v70, v71, v64, v65, v66, v67);
    objc_msgSend_setIncludeComments_(self, v74, v78, v79, v80, v81, v73, v75, v76, v77);
  }

  v82 = objc_msgSend_objectForKeyedSubscript_(*(&self->super.super.super.isa + v41), v63, v68, v69, v70, v71, *MEMORY[0x277D807A8], v65, v66, v67);
  v92 = v82;
  if (v82)
  {
    v93 = objc_msgSend_BOOLValue(v82, v83, v88, v89, v90, v91, v84, v85, v86, v87);
    objc_msgSend_setIncludeBackgrounds_(self, v94, v98, v99, v100, v101, v93, v95, v96, v97);
  }

  v102 = objc_msgSend_objectForKeyedSubscript_(*(&self->super.super.super.isa + v41), v83, v88, v89, v90, v91, *MEMORY[0x277D807B0], v85, v86, v87);
  v112 = v102;
  if (v102)
  {
    v113 = objc_msgSend_BOOLValue(v102, v103, v108, v109, v110, v111, v104, v105, v106, v107);
    v123 = objc_msgSend_documentRoot(self, v114, v119, v120, v121, v122, v115, v116, v117, v118);
    objc_msgSend_setShouldShowChangeTrackingMarkup_(v123, v124, v128, v129, v130, v131, v113, v125, v126, v127);
  }
}

@end
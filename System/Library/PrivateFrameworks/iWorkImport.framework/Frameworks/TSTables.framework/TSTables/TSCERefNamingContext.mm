@interface TSCERefNamingContext
- (TSCERefNamingContext)init;
- (TSKUIDStruct)hostTableUID;
- (id)copyWithZone:(_NSZone *)zone;
- (void)reset;
@end

@implementation TSCERefNamingContext

- (TSCERefNamingContext)init
{
  v8.receiver = self;
  v8.super_class = TSCERefNamingContext;
  v2 = [(TSCERefNamingContext *)&v8 init];
  v6 = v2;
  if (v2)
  {
    objc_msgSend_reset(v2, v3, v4, v5);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  v8 = objc_msgSend_contextSheetName(self, v5, v6, v7);
  objc_msgSend_setContextSheetName_(v4, v9, v8, v10);

  v14 = objc_msgSend_hostTableUID(self, v11, v12, v13);
  objc_msgSend_setHostTableUID_(v4, v15, v14, v15);
  v19 = objc_msgSend_suppressIdenticalEndReference(self, v16, v17, v18);
  objc_msgSend_setSuppressIdenticalEndReference_(v4, v20, v19, v21);
  v25 = objc_msgSend_useSymbolicNames(self, v22, v23, v24);
  objc_msgSend_setUseSymbolicNames_(v4, v26, v25, v27);
  v31 = objc_msgSend_allowTableName(self, v28, v29, v30);
  objc_msgSend_setAllowTableName_(v4, v32, v31, v33);
  v37 = objc_msgSend_allowSpanningColumnReferenceBodyQualifier(self, v34, v35, v36);
  objc_msgSend_setAllowSpanningColumnReferenceBodyQualifier_(v4, v38, v37, v39);
  v43 = objc_msgSend_showGeometricAsBase(self, v40, v41, v42);
  objc_msgSend_setShowGeometricAsBase_(v4, v44, v43, v45);
  v49 = objc_msgSend_quoteComponents(self, v46, v47, v48);
  objc_msgSend_setQuoteComponents_(v4, v50, v49, v51);
  v55 = objc_msgSend_forceEscaping(self, v52, v53, v54);
  objc_msgSend_setForceEscaping_(v4, v56, v55, v57);
  v61 = objc_msgSend_forceTableName(self, v58, v59, v60);
  objc_msgSend_setForceTableName_(v4, v62, v61, v63);
  v67 = objc_msgSend_forceSheetName(self, v64, v65, v66);
  objc_msgSend_setForceSheetName_(v4, v68, v67, v69);
  v73 = objc_msgSend_forFormulaPlainText(self, v70, v71, v72);
  objc_msgSend_setForFormulaPlainText_(v4, v74, v73, v75);
  v79 = objc_msgSend_usedSymbolicName(self, v76, v77, v78);
  objc_msgSend_setUsedSymbolicName_(v4, v80, v79, v81);
  return v4;
}

- (void)reset
{
  contextSheetName = self->_contextSheetName;
  self->_contextSheetName = 0;

  *&self->_suppressIdenticalEndReference = 256;
  self->_hostTableUID._lower = 0;
  self->_hostTableUID._upper = 0;
  self->_allowTableName = 1;
  *&self->_allowSpanningColumnReferenceBodyQualifier = 0;
}

- (TSKUIDStruct)hostTableUID
{
  upper = self->_hostTableUID._upper;
  lower = self->_hostTableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end
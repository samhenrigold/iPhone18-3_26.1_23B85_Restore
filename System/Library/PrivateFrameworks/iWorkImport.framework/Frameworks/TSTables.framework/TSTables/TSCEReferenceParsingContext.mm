@interface TSCEReferenceParsingContext
- (TSCEReferenceParsingContext)initWithContextResolver:(id)resolver components:(id)components;
- (TSCEReferenceParsingContext)initWithContextTableResolver:(id)resolver components:(id)components;
- (TSCEReferenceResolving)contextResolver;
- (id)copyWithZone:(_NSZone *)zone;
- (void)reset;
@end

@implementation TSCEReferenceParsingContext

- (TSCEReferenceParsingContext)initWithContextTableResolver:(id)resolver components:(id)components
{
  resolverCopy = resolver;
  componentsCopy = components;
  v11.receiver = self;
  v11.super_class = TSCEReferenceParsingContext;
  v8 = [(TSCEReferenceParsingContext *)&v11 init];
  v9 = v8;
  if (resolverCopy && v8)
  {
    v8->_contextTableResolver = resolverCopy;
    objc_storeStrong(&v8->_components, components);
  }

  return v9;
}

- (TSCEReferenceParsingContext)initWithContextResolver:(id)resolver components:(id)components
{
  resolverCopy = resolver;
  componentsCopy = components;
  v11 = objc_msgSend_calcEngine(resolverCopy, v8, v9, v10);
  v14 = objc_msgSend_tableResolverForRefResolver_(v11, v12, resolverCopy, v13);

  v16 = objc_msgSend_initWithContextTableResolver_components_(self, v15, v14, componentsCopy);
  return v16;
}

- (TSCEReferenceResolving)contextResolver
{
  contextTableResolver = self->_contextTableResolver;
  if (contextTableResolver)
  {
    contextTableResolver = objc_msgSend_referenceResolverObject(contextTableResolver, a2, v2, v3);
    v4 = vars8;
  }

  return contextTableResolver;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_contextTableResolver(self, v5, v6, v7);
  v10 = objc_msgSend_initWithContextTableResolver_components_(v4, v9, v8, self->_components);

  v14 = objc_msgSend_contextSheetName(self, v11, v12, v13);
  objc_msgSend_setContextSheetName_(v10, v15, v14, v16);

  v20 = objc_msgSend_sheetName(self, v17, v18, v19);
  objc_msgSend_setSheetName_(v10, v21, v20, v22);

  v26 = objc_msgSend_tableName(self, v23, v24, v25);
  objc_msgSend_setTableName_(v10, v27, v26, v28);

  v32 = objc_msgSend_sheetNameUnquoted(self, v29, v30, v31);
  objc_msgSend_setSheetNameUnquoted_(v10, v33, v32, v34);

  v38 = objc_msgSend_tableNameUnquoted(self, v35, v36, v37);
  objc_msgSend_setTableNameUnquoted_(v10, v39, v38, v40);

  v44 = objc_msgSend_referencesMatchingInputAsPrefix(self, v41, v42, v43);
  objc_msgSend_setReferencesMatchingInputAsPrefix_(v10, v45, v44, v46);

  v50 = objc_msgSend_abortObject(self, v47, v48, v49);
  objc_msgSend_setAbortObject_(v10, v51, v50, v52);

  v56 = objc_msgSend_preserveFlags(self, v53, v54, v55);
  objc_msgSend_setPreserveFlags_(v10, v57, v56, v58);
  v62 = objc_msgSend_filterColons(self, v59, v60, v61);
  objc_msgSend_setFilterColons_(v10, v63, v62, v64);
  IsComplete = objc_msgSend_referenceIsComplete(self, v65, v66, v67);
  objc_msgSend_setReferenceIsComplete_(v10, v69, IsComplete, v70);
  v74 = objc_msgSend_parseAsBaseTableReference(self, v71, v72, v73);
  objc_msgSend_setParseAsBaseTableReference_(v10, v75, v74, v76);
  v80 = objc_msgSend_namesUsed(self, v77, v78, v79);
  objc_msgSend_setNamesUsed_(v10, v81, v80, v82);
  v86 = objc_msgSend_trimNames(self, v83, v84, v85);
  objc_msgSend_setTrimNames_(v10, v87, v86, v88);
  return v10;
}

- (void)reset
{
  objc_msgSend_setSheetName_(self, a2, 0, v2);
  objc_msgSend_setTableName_(self, v4, 0, v5);
  objc_msgSend_setSheetNameUnquoted_(self, v6, 0, v7);
  objc_msgSend_setTableNameUnquoted_(self, v8, 0, v9);
  objc_msgSend_setPreserveFlags_(self, v10, 0, v11);
  objc_msgSend_setNamesUsed_(self, v12, 0, v13);

  objc_msgSend_setReferencesMatchingInputAsPrefix_(self, v14, 0, v15);
}

@end
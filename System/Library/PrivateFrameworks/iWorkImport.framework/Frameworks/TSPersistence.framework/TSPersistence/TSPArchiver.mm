@interface TSPArchiver
- (BOOL)isSavingCollaborativeDocument;
- (BOOL)isSavingDocumentAs;
- (BOOL)shouldSaveAlternates;
- (BOOL)updateMessageInfo:(void *)info withArchiver:(id)archiver;
- (TSPArchiver)initWithObject:(id)object flags:(char)flags;
- (id)addAlternateArchiverForVersion:(unint64_t)version fieldPath:(const void *)path isDiffArchiver:(BOOL)archiver diffReadVersion:(unint64_t)readVersion message:(const Message *)message;
- (id)alternateForVersion:(unint64_t)version;
- (id)calculateOrderedArchivableContent;
- (void)addDocumentFeatureInfoWithIdentifier:(id)identifier readVersion:(unint64_t)version writeVersion:(unint64_t)writeVersion validatingValues:(BOOL)values;
- (void)aggregateReferencesFromArchiver:(id)archiver;
- (void)archive;
- (void)cleanup;
- (void)serialize;
- (void)validateOrderedArchivableContent:(id)content;
@end

@implementation TSPArchiver

- (TSPArchiver)initWithObject:(id)object flags:(char)flags
{
  objectCopy = object;
  v31.receiver = self;
  v31.super_class = TSPArchiver;
  v9 = [(TSPArchiverBase *)&v31 initWithObject:objectCopy];
  if (v9)
  {
    v10 = objc_msgSend_objectUUID(objectCopy, v7, v8);
    objectUUID = v9->_objectUUID;
    v9->_objectUUID = v10;

    v14 = objc_msgSend_componentRootObject(objectCopy, v12, v13);
    explicitComponentRootObject = v9->_explicitComponentRootObject;
    v9->_explicitComponentRootObject = v14;

    if ((objc_msgSend_targetType(v9, v16, v17) & 0xFFFFFFFFFFFFFFFBLL) == 0)
    {
      v20 = objc_msgSend_tsp_unknownContent(objectCopy, v18, v19);
      v23 = objc_msgSend_newUnknownContentSnapshot(v20, v21, v22);
      unknownContentSnapshot = v9->_unknownContentSnapshot;
      v9->_unknownContentSnapshot = v23;
    }

    v25 = dispatch_group_create();
    archiveGroup = v9->_archiveGroup;
    v9->_archiveGroup = v25;

    v27 = dispatch_group_create();
    serializeGroup = v9->_serializeGroup;
    v9->_serializeGroup = v27;

    atomic_store(flags, &v9->_flags);
    v29 = v9;
  }

  return v9;
}

- (BOOL)shouldSaveAlternates
{
  selfCopy = self;
  v4 = objc_msgSend_targetType(self, a2, v2);
  v7 = v4;
  if (v4 != 5 && v4)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    selfCopy = objc_msgSend_object(selfCopy, v5, v6);
    v10 = objc_msgSend_isCommandObject(selfCopy, v8, v9) ^ 1;
  }

  if (v7 == 5 || !v7)
  {
  }

  return v10;
}

- (void)addDocumentFeatureInfoWithIdentifier:(id)identifier readVersion:(unint64_t)version writeVersion:(unint64_t)writeVersion validatingValues:(BOOL)values
{
  valuesCopy = values;
  identifierCopy = identifier;
  v10 = [TSPFeatureInfo alloc];
  v13 = objc_msgSend_initWithIdentifier_readVersion_writeVersion_validatingValues_(v10, v11, identifierCopy, version, writeVersion, valuesCopy);
  featureInfos = self->_featureInfos;
  if (!featureInfos)
  {
    v15 = objc_opt_new();
    v16 = self->_featureInfos;
    self->_featureInfos = v15;

    featureInfos = self->_featureInfos;
  }

  objc_msgSend_addObject_(featureInfos, v12, v13);
}

- (id)alternateForVersion:(unint64_t)version
{
  v5 = objc_msgSend_minimumSupportedVersion(self, a2, version);
  if (v5 <= version)
  {
    v46 = v5;
    v8 = NSStringFromTSPVersion(version, v6);
    selfCopy = self;
    v10 = v8;
    v11 = selfCopy;
    v14 = objc_msgSend_object(selfCopy, v12, v13);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v19 = objc_msgSend_object(v11, v17, v18);
    v22 = objc_msgSend_tsp_identifier(v19, v20, v21);
    v24 = NSStringFromTSPVersion(v46, v23);
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Version (%{public}@) of alternate message for object [%{public}@-%llu] should be less than the message version (%{public}@) unless it's defined for merging.", "[TSPArchiver alternateForVersion:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 164, v10, v16, v22, v24);

    v25 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSPArchiver alternateForVersion:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
    v31 = NSStringFromTSPVersion(version, v30);
    v34 = objc_msgSend_object(v11, v32, v33);
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v39 = objc_msgSend_object(v11, v37, v38);
    v42 = objc_msgSend_tsp_identifier(v39, v40, v41);
    v44 = NSStringFromTSPVersion(v46, v43);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v45, v27, v29, 164, 1, "Version (%{public}@) of alternate message for object [%{public}@-%llu] should be less than the message version (%{public}@) unless it's defined for merging.", v31, v36, v42, v44);

    TSUCrashBreakpoint();
    abort();
  }

  return objc_msgSend_addAlternateArchiverForVersion_fieldPath_isDiffArchiver_diffReadVersion_message_(self, v6, version, 0, 0, 0, 0);
}

- (id)addAlternateArchiverForVersion:(unint64_t)version fieldPath:(const void *)path isDiffArchiver:(BOOL)archiver diffReadVersion:(unint64_t)readVersion message:(const Message *)message
{
  archiverCopy = archiver;
  v53 = *MEMORY[0x277D85DE8];
  v12 = objc_msgSend_messages(self->_unknownContentSnapshot, a2, version);
  v17 = objc_msgSend_count(v12, v13, v14);
  if (v17)
  {
    v45 = objc_msgSend_firstObject(v12, v15, v16);
    if (((*(objc_msgSend_messageInfo(v45, v18, v19) + 200) != 0) ^ archiverCopy))
    {
      if (archiverCopy)
      {
        v21 = objc_alloc(MEMORY[0x277CBEB18]);
        v23 = objc_msgSend_initWithCapacity_(v21, v22, v17);
        pathCopy = path;
        v42 = archiverCopy;
        readVersionCopy = readVersion;
        messageCopy = message;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v24 = v12;
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v48, v52, 16);
        if (v28)
        {
          v29 = *v49;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v49 != v29)
              {
                objc_enumerationMutation(v24);
              }

              v31 = *(*(&v48 + 1) + 8 * i);
              v32 = objc_msgSend_messageInfo(v31, v26, v27, pathCopy);
              if (UnsafePointer(v32 + 120, v33) >= 0xF000000000000)
              {
                objc_msgSend_addObject_(v23, v26, v31);
              }
            }

            v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v48, v52, 16);
          }

          while (v28);
        }

        readVersion = readVersionCopy;
        message = messageCopy;
        archiverCopy = v42;
        path = pathCopy;
        v35 = objc_msgSend_newUnknownContentSnapshotWithMessages_(self->_unknownContentSnapshot, v34, v23);
        unknownContentSnapshot = self->_unknownContentSnapshot;
        self->_unknownContentSnapshot = v35;
      }
    }

    else
    {
      v37 = objc_msgSend_newUnknownContentSnapshotWithMessages_(self->_unknownContentSnapshot, v20, 0);
      v38 = self->_unknownContentSnapshot;
      self->_unknownContentSnapshot = v37;
    }
  }

  v47.receiver = self;
  v47.super_class = TSPArchiver;
  pathCopy = [(TSPArchiverBase *)&v47 addAlternateArchiverForVersion:version fieldPath:path isDiffArchiver:archiverCopy diffReadVersion:readVersion message:message, pathCopy];

  return pathCopy;
}

- (void)archive
{
  v176 = *MEMORY[0x277D85DE8];
  v133 = objc_msgSend_object(self, a2, v2);
  v6 = objc_msgSend_targetType(self, v4, v5);
  v7 = MEMORY[0x277CCACC8];
  v170[0] = MEMORY[0x277D85DD0];
  v170[1] = 3221225472;
  v170[2] = sub_2769BC718;
  v170[3] = &unk_27A6E2898;
  v136 = v133;
  v171 = v136;
  selfCopy = self;
  objc_msgSend_tsp_performSynchronousArchiverOperationUsingBlock_(v7, v8, v170);
  objc_opt_class();
  if (!(objc_opt_isKindOfClass() & 1 | (v6 == 4)))
  {
    v11 = objc_msgSend_message(self, v9, v10);
    v12 = v11;
    if (!v11 || ((*(*v11 + 48))(v11) & 1) == 0)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPArchiver archive]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
      if (v12)
      {
        (*(*v12 + 16))(v168, v12);
        if (v169 >= 0)
        {
          v17 = v168;
        }

        else
        {
          v17 = v168[0];
        }
      }

      else
      {
        v17 = "NULL";
      }

      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v23 = objc_msgSend_tsp_identifier(v136, v20, v21);
      if (v12)
      {
        (*(*v12 + 56))(__p, v12);
        if (v167 >= 0)
        {
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v24, v14, v16, 246, 0, "Didn't archive correctly %{public}s for [%{public}@-%llu]: %{public}s", v17, v19, v23, __p);
        }

        else
        {
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v24, v14, v16, 246, 0, "Didn't archive correctly %{public}s for [%{public}@-%llu]: %{public}s", v17, v19, v23, __p[0]);
        }
      }

      else
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v22, v14, v16, 246, 0, "Didn't archive correctly %{public}s for [%{public}@-%llu]: %{public}s", v17, v19, v23, "");
      }

      if (v12)
      {
        if (v167 < 0)
        {
          operator delete(__p[0]);
        }

        if (v169 < 0)
        {
          operator delete(v168[0]);
        }
      }

      else
      {
      }

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
    }
  }

  v160 = 0;
  v161 = &v160;
  v162 = 0x3032000000;
  v163 = sub_2769BC764;
  v164 = sub_2769BC774;
  v165 = 0;
  v135 = objc_msgSend_messages(self->_unknownContentSnapshot, v9, v10);
  v134 = objc_msgSend_alternates(self, v27, v28);
  if (objc_msgSend_count(v135, v29, v30) || objc_msgSend_count(v134, v31, v32))
  {
    v35 = [TSPReferenceOrderedSet alloc];
    v37 = objc_msgSend_initWithCapacity_(v35, v36, 0);
    aggregatedStrongReferences = self->_aggregatedStrongReferences;
    self->_aggregatedStrongReferences = v37;

    v39 = [TSPReferenceOrderedSet alloc];
    v41 = objc_msgSend_initWithCapacity_(v39, v40, 0);
    aggregatedWeakReferences = self->_aggregatedWeakReferences;
    self->_aggregatedWeakReferences = v41;

    v43 = objc_alloc(MEMORY[0x277CCAA50]);
    v45 = objc_msgSend_initWithOptions_capacity_(v43, v44, 512, 0);
    aggregatedLazyReferences = self->_aggregatedLazyReferences;
    self->_aggregatedLazyReferences = v45;

    v47 = objc_alloc(MEMORY[0x277CCAA50]);
    v49 = objc_msgSend_initWithOptions_capacity_(v47, v48, 512, 0);
    aggregatedDataReferences = self->_aggregatedDataReferences;
    self->_aggregatedDataReferences = v49;

    v51 = [_TtC13TSPersistence23TSPMutableIdentifierSet alloc];
    v53 = objc_msgSend_initWithCapacity_(v51, v52, 0);
    aggregatedCountedDataReferences = self->_aggregatedCountedDataReferences;
    self->_aggregatedCountedDataReferences = v53;

    objc_msgSend_aggregateReferencesFromArchiver_(self, v55, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_2769BC77C;
    aBlock[3] = &unk_27A6E3110;
    v157 = v136;
    selfCopy2 = self;
    v159 = &v160;
    v56 = _Block_copy(aBlock);
    v154[0] = MEMORY[0x277D85DD0];
    v154[1] = 3221225472;
    v154[2] = sub_2769BCAA8;
    v154[3] = &unk_27A6E3138;
    v132 = v56;
    v155 = v132;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v134, v57, v154);
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    obj = v135;
    v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v58, &v150, v175, 16);
    if (v59)
    {
      v138 = *v151;
      do
      {
        v139 = v59;
        for (i = 0; i != v139; ++i)
        {
          if (*v151 != v138)
          {
            objc_enumerationMutation(obj);
          }

          v62 = *(*(&v150 + 1) + 8 * i);
          v146 = 0u;
          v147 = 0u;
          v148 = 0u;
          v149 = 0u;
          v140 = v62;
          v63 = objc_msgSend_objects(v62, v60, v61);
          v66 = objc_msgSend_references(v63, v64, v65);

          v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v67, &v146, v174, 16);
          if (v70)
          {
            v71 = *v147;
            do
            {
              for (j = 0; j != v70; ++j)
              {
                if (*v147 != v71)
                {
                  objc_enumerationMutation(v66);
                }

                v73 = *(*(&v146 + 1) + 8 * j);
                v75 = objc_msgSend_objectIfLoaded(v73, v68, v69);
                if (!v75)
                {
                  v75 = v73;
                }

                objc_msgSend_addItem_(self->_aggregatedStrongReferences, v74, v75);
                objc_msgSend_addObject_(self->_aggregatedLazyReferences, v76, v73);
              }

              v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v68, &v146, v174, 16);
            }

            while (v70);
          }

          v144 = 0u;
          v145 = 0u;
          v142 = 0u;
          v143 = 0u;
          v79 = objc_msgSend_allData(v140, v77, v78);
          v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v80, &v142, v173, 16);
          if (v82)
          {
            v83 = *v143;
            do
            {
              for (k = 0; k != v82; ++k)
              {
                if (*v143 != v83)
                {
                  objc_enumerationMutation(v79);
                }

                v85 = *(*(&v142 + 1) + 8 * k);
                objc_msgSend_addObject_(self->_aggregatedDataReferences, v81, v85);
                v86 = self->_aggregatedCountedDataReferences;
                v89 = objc_msgSend_identifier(v85, v87, v88);
                objc_msgSend_incrementCountBy_forIdentifier_(v86, v90, 1, v89);
              }

              v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v81, &v142, v173, 16);
            }

            while (v82);
          }
        }

        v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v60, &v150, v175, 16);
      }

      while (v59);
    }

    if (!objc_msgSend_count(self->_aggregatedStrongReferences, v91, v92))
    {
      v95 = self->_aggregatedStrongReferences;
      self->_aggregatedStrongReferences = 0;
    }

    if (!objc_msgSend_count(self->_aggregatedWeakReferences, v93, v94))
    {
      v98 = self->_aggregatedWeakReferences;
      self->_aggregatedWeakReferences = 0;
    }

    if (!objc_msgSend_count(self->_aggregatedLazyReferences, v96, v97))
    {
      v101 = self->_aggregatedLazyReferences;
      self->_aggregatedLazyReferences = 0;
    }

    if (!objc_msgSend_count(self->_aggregatedDataReferences, v99, v100))
    {
      v104 = self->_aggregatedDataReferences;
      self->_aggregatedDataReferences = 0;
    }

    if (!objc_msgSend_count(self->_aggregatedCountedDataReferences, v102, v103))
    {
      v105 = self->_aggregatedCountedDataReferences;
      self->_aggregatedCountedDataReferences = 0;
    }

    v106 = v157;
  }

  else
  {
    v107 = objc_msgSend_strongReferences(self, v33, v34);
    v108 = self->_aggregatedStrongReferences;
    self->_aggregatedStrongReferences = v107;

    v111 = objc_msgSend_weakReferences(self, v109, v110);
    v112 = self->_aggregatedWeakReferences;
    self->_aggregatedWeakReferences = v111;

    v115 = objc_msgSend_lazyReferences(self, v113, v114);
    v116 = self->_aggregatedLazyReferences;
    self->_aggregatedLazyReferences = v115;

    v119 = objc_msgSend_dataReferences(self, v117, v118);
    v120 = self->_aggregatedDataReferences;
    self->_aggregatedDataReferences = v119;

    v123 = objc_msgSend_countedDataReferences(self, v121, v122);
    v106 = self->_aggregatedCountedDataReferences;
    self->_aggregatedCountedDataReferences = v123;
  }

  v125 = self->_aggregatedStrongReferences;
  if (v125)
  {
    objc_msgSend_minusSet_(self->_aggregatedWeakReferences, v124, v125);
  }

  unknownContentSnapshot = self->_unknownContentSnapshot;
  if (unknownContentSnapshot)
  {
    v127 = v161[5];
    if (v127)
    {
      objc_msgSend_addRulesFromKnownFieldRuleProvider_(v127, v124, unknownContentSnapshot);
    }

    else
    {
      v128 = objc_msgSend_message(self, v124, unknownContentSnapshot);
      v130 = objc_msgSend_newKnownFieldVersionRequirementsMapForMessage_knownFieldRuleProvider_(TSPKnownFieldVersionRequirementsMap, v129, v128, self->_unknownContentSnapshot);
      v131 = v161[5];
      v161[5] = v130;
    }
  }

  objc_msgSend_saveToArchiver_(v161[5], v124, self);

  _Block_object_dispose(&v160, 8);
}

- (void)aggregateReferencesFromArchiver:(id)archiver
{
  archiverCopy = archiver;
  aggregatedStrongReferences = self->_aggregatedStrongReferences;
  v32 = archiverCopy;
  v8 = objc_msgSend_strongReferences(archiverCopy, v6, v7);
  objc_msgSend_unionSet_(aggregatedStrongReferences, v9, v8);

  aggregatedWeakReferences = self->_aggregatedWeakReferences;
  v13 = objc_msgSend_weakReferences(v32, v11, v12);
  objc_msgSend_unionSet_(aggregatedWeakReferences, v14, v13);

  aggregatedLazyReferences = self->_aggregatedLazyReferences;
  v18 = objc_msgSend_lazyReferences(v32, v16, v17);
  objc_msgSend_unionHashTable_(aggregatedLazyReferences, v19, v18);

  aggregatedDataReferences = self->_aggregatedDataReferences;
  v23 = objc_msgSend_dataReferences(v32, v21, v22);
  objc_msgSend_unionHashTable_(aggregatedDataReferences, v24, v23);

  v27 = objc_msgSend_countedDataReferences(v32, v25, v26);
  v30 = objc_msgSend_makeIdentifierSet(v27, v28, v29);

  if (v30)
  {
    objc_msgSend_mergeWithIdentifierSet_(self->_aggregatedCountedDataReferences, v31, v30);
  }
}

- (BOOL)updateMessageInfo:(void *)info withArchiver:(id)archiver
{
  v188 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_message(archiver, a2, info);
  v171 = objc_msgSend_object(self, v8, v9);
  objc_opt_class();
  v172 = TSUDynamicCast();
  isDiff = objc_msgSend_isDiff(v172, v10, v11);
  if (isDiff)
  {
    v15 = 0;
  }

  else
  {
    v15 = objc_msgSend_messageType(archiver, v12, v13);
  }

  *(info + 4) |= 2u;
  *(info + 50) = v15;
  v16 = objc_msgSend_minimumSupportedVersion(archiver, v12, v13);
  v19 = v16;
  if (isDiff)
  {
    v20 = -1;
  }

  else
  {
    v20 = v16;
  }

  if (v20)
  {
    UnsafePointer(v20, info + 24);
  }

  if (v19)
  {
    v21 = isDiff;
  }

  else
  {
    v21 = 0;
  }

  if (v21 == 1)
  {
    UnsafePointer(v19, info + 120);
  }

  if (isDiff)
  {
    Version = objc_msgSend_diffReadVersion(v172, v17, v18);
    if (Version)
    {
      UnsafePointer(Version, info + 168);
    }
  }

  v24 = objc_msgSend_fieldPath(v172, v17, v18);
  if (v24)
  {
    *(info + 4) |= 1u;
    v25 = *(info + 24);
    if (!v25)
    {
      v26 = *(info + 1);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = sub_2769F4FE8(v26);
      *(info + 24) = v25;
    }

    sub_2769E26BC(v25, v24);
  }

  if (v7)
  {
    v27 = (*(*v7 + 72))(v7);
    if (v27 > 0x4000000)
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSPArchiver updateMessageInfo:withArchiver:]");
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v36 = objc_msgSend_tsp_identifier(v171, v34, v35);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v37, v29, v31, 563, 0, "Message for object [%{public}@-%llu] is larger than the %zu bytes size limit.", v33, v36, 0x4000000);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
      objc_msgSend_fail(self, v40, v41);
      v42 = 0;
      goto LABEL_54;
    }
  }

  else
  {
    LODWORD(v27) = 0;
  }

  *(info + 4) |= 4u;
  *(info + 51) = v27;
  v183 = 0;
  v184 = &v183;
  v185 = 0x2020000000;
  v186 = 0;
  v179 = 0;
  v180 = &v179;
  v181 = 0x2020000000;
  v182 = 0;
  v178[0] = MEMORY[0x277D85DD0];
  v178[1] = 3221225472;
  v178[2] = sub_2769BDB2C;
  v178[3] = &unk_27A6E3160;
  v178[5] = &v179;
  v178[6] = info;
  v178[4] = &v183;
  objc_msgSend_enumerateFieldRulesUsingBlock_(archiver, v23, v178);
  v45 = v184[3];
  if (v45)
  {
    if (v7)
    {
      sub_276ACFD98(v45, v7, 0);
    }

    else
    {
      v46 = MEMORY[0x277D81150];
      v169 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSPArchiver updateMessageInfo:withArchiver:]");
      v167 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
      v165 = objc_msgSend_object(self, v48, v49);
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      v54 = objc_msgSend_object(self, v52, v53);
      v57 = objc_msgSend_tsp_identifier(v54, v55, v56);
      v59 = NSStringFromTSPVersion(v20, v58);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v60, v169, v167, 509, 0, "All unknown field rules of alternate archiver for object [%{public}@-%llu] version %{public}@ will be ignored because the message was not initialized.", v51, v57, v59);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62);
    }

    v63 = v184[3];
    if (v63)
    {
      v64 = sub_2769C1374(v63);
      MEMORY[0x277C9F670](v64, 0x1060C4094AFC76ALL);
    }
  }

  if (v180[3])
  {
    if (isDiff)
    {
      v65 = objc_msgSend_parentArchiver(v172, v43, v44);
      v68 = objc_msgSend_message(v65, v66, v67);

      if (v68)
      {
        sub_276ACFD98(v180[3], v68, 1);
      }

      else
      {
        v90 = MEMORY[0x277D81150];
        v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "[TSPArchiver updateMessageInfo:withArchiver:]");
        v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
        v96 = objc_msgSend_object(self, v94, v95);
        v97 = objc_opt_class();
        v98 = NSStringFromClass(v97);
        v101 = objc_msgSend_object(self, v99, v100);
        v104 = objc_msgSend_tsp_identifier(v101, v102, v103);
        v106 = NSStringFromTSPVersion(0xFFFFFFFFFFFFFFFFLL, v105);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v90, v107, v91, v93, 524, 0, "All known field rules of alternate archiver for object [%{public}@-%llu] version %{public}@ will be ignored because the parent message was not initialized.", v98, v104, v106);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v108, v109);
      }
    }

    else
    {
      v70 = MEMORY[0x277D81150];
      v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSPArchiver updateMessageInfo:withArchiver:]");
      v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
      v76 = objc_msgSend_object(self, v74, v75);
      v77 = objc_opt_class();
      v78 = NSStringFromClass(v77);
      v81 = objc_msgSend_object(self, v79, v80);
      v84 = objc_msgSend_tsp_identifier(v81, v82, v83);
      v86 = NSStringFromTSPVersion(v19, v85);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v87, v71, v73, 520, 0, "All known field rules of alternate archiver for object [%{public}@-%llu] version %{public}@ will be ignored because the rules were set in a non-diff archive.", v78, v84, v86);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89);
    }

    v110 = v180[3];
    if (v110)
    {
      v111 = sub_2769C1374(v110);
      MEMORY[0x277C9F670](v111, 0x1060C4094AFC76ALL);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2769BDE7C;
  aBlock[3] = &unk_27A6E31A0;
  aBlock[4] = info;
  v170 = _Block_copy(aBlock);
  v114 = objc_msgSend_strongReferences(archiver, v112, v113);
  v170[2](v170, v114);

  v117 = objc_msgSend_countedDataReferences(archiver, v115, v116);
  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v120 = objc_msgSend_dataReferences(archiver, v118, v119);
  v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(v120, v121, &v173, v187, 16);
  if (v124)
  {
    v125 = *v174;
    do
    {
      for (i = 0; i != v124; ++i)
      {
        if (*v174 != v125)
        {
          objc_enumerationMutation(v120);
        }

        v127 = *(*(&v173 + 1) + 8 * i);
        v128 = objc_msgSend_identifier(v127, v122, v123);
        v130 = objc_msgSend_countForIdentifier_default_(v117, v129, v128, 0);
        v131 = v130;
        if (v130 < 1)
        {
          if (v127)
          {
            v136 = objc_opt_class();
            v135 = NSStringFromClass(v136);
          }

          else
          {
            v135 = @"Nil";
          }

          v137 = objc_msgSend_filename(v127, v122, v123);
          v140 = objc_msgSend_anonymousUniqueIdentifier(v127, v138, v139);
          v143 = objc_msgSend_UUIDString(v140, v141, v142);
          v146 = objc_msgSend_digestString(v127, v144, v145);
          TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Unexpected reference count %td for data <%{public}@: filename=%@, anonymousUniqueIdentifier=%{public}@, digestString=%@> ", "[TSPArchiver updateMessageInfo:withArchiver:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 556, v131, v135, v137, v143, v146);

          if (v127)
          {
          }

          v148 = MEMORY[0x277D81150];
          v149 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v147, "[TSPArchiver updateMessageInfo:withArchiver:]");
          v153 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v150, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
          if (v127)
          {
            v164 = objc_opt_class();
            v154 = NSStringFromClass(v164);
          }

          else
          {
            v154 = @"Nil";
          }

          v155 = objc_msgSend_filename(v127, v151, v152);
          v168 = objc_msgSend_anonymousUniqueIdentifier(v127, v156, v157);
          v160 = objc_msgSend_UUIDString(v168, v158, v159);
          v166 = objc_msgSend_digestString(v127, v161, v162);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v148, v163, v149, v153, 556, 1, "Unexpected reference count %td for data <%{public}@: filename=%@, anonymousUniqueIdentifier=%{public}@, digestString=%@> ", v131, v154, v155, v160, v166);

          if (v127)
          {
          }

          TSUCrashBreakpoint();
          abort();
        }

        v132 = *(info + 24);
        v133 = v130 + 1;
        do
        {
          if (v132 == *(info + 25))
          {
            google::protobuf::RepeatedField<unsigned long long>::Reserve();
          }

          *(*(info + 13) + 8 * v132++) = v128;
          *(info + 24) = v132;
          --v133;
        }

        while (v133 > 1);
      }

      v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(v120, v122, &v173, v187, 16);
    }

    while (v124);
  }

  _Block_object_dispose(&v179, 8);
  _Block_object_dispose(&v183, 8);
  v42 = 1;
LABEL_54:

  return v42;
}

- (void)serialize
{
  v242 = *MEMORY[0x277D85DE8];
  if (self->_serializedData)
  {
    v2 = MEMORY[0x277D81150];
    v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPArchiver serialize]");
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 571, 0, "Already serialized");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  }

  v208 = self->_featureInfos;
  if (objc_msgSend_count(v208, v9, v10))
  {
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v13 = v208;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v233, v241, 16);
    if (v17)
    {
      v18 = *v234;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v234 != v18)
          {
            objc_enumerationMutation(v13);
          }

          objc_msgSend_readVersion(*(*(&v233 + 1) + 8 * i), v15, v16);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v233, v241, 16);
      }

      while (v17);
    }
  }

  v209 = objc_msgSend_object(self, v11, v12);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v209;
    v23 = objc_msgSend_serializedData(v20, v21, v22);
    serializedData = self->_serializedData;
    self->_serializedData = v23;

    goto LABEL_75;
  }

  sub_2769DEB38(v225, 0);
  v27 = objc_msgSend_tsp_identifier(v209, v25, v26);
  v226 |= 1u;
  v231 = v27;
  v202 = objc_msgSend_calculateOrderedArchivableContent(self, v28, v29);
  objc_msgSend_validateOrderedArchivableContent_(self, v30, v202);
  v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  v222 = 0u;
  obj = v202;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v221, v240, 16);
  if (!v34)
  {

    v36 = 0;
    v35 = 0;
    goto LABEL_58;
  }

  v35 = 0;
  v36 = 0;
  v37 = -1;
  v212 = *v222;
  do
  {
    v38 = 0;
    v205 = v34;
    do
    {
      if (*v222 != v212)
      {
        objc_enumerationMutation(obj);
      }

      v39 = *(*(&v221 + 1) + 8 * v38);
      v40 = v230;
      if (!v230)
      {
        v41 = v229;
LABEL_24:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v227, v41 + 1);
        v40 = v230;
        v41 = *v230;
        goto LABEL_25;
      }

      v41 = *v230;
      if (v228 < *v230)
      {
        v42 = &v230[2 * v228++];
        v43 = *(v42 + 1);
        goto LABEL_26;
      }

      if (v41 == v229)
      {
        goto LABEL_24;
      }

LABEL_25:
      *v40 = v41 + 1;
      v43 = sub_2769F4ED0(v227);
      v44 = &v230[2 * v228++];
      *(v44 + 1) = v43;
LABEL_26:
      isDiff = objc_msgSend_isDiff(v39, v32, v33);
      objc_opt_class();
      v46 = TSUDynamicCast();
      v49 = v46;
      if (!v46)
      {
        objc_opt_class();
        v72 = TSUDynamicCast();
        v57 = v72;
        if (!v72)
        {
          TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Unexpected archivable content class.", "[TSPArchiver serialize]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 639);
          v178 = MEMORY[0x277D81150];
          v180 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v179, "[TSPArchiver serialize]");
          v182 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v181, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v178, v183, v180, v182, 639, 1, "Unexpected archivable content class.");

          TSUCrashBreakpoint();
          goto LABEL_96;
        }

        v75 = objc_msgSend_messageInfo(v72, v73, v74);
        sub_2769E0D78(v43, v75);
        if (isDiff)
        {
          v77 = objc_msgSend_indexOfObject_(obj, v76, self);
          if (v77 >= 0xFFFFFFFF)
          {
            TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Base message is not defined in the archive info.", "[TSPArchiver serialize]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 646);
            v184 = MEMORY[0x277D81150];
            v186 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v185, "[TSPArchiver serialize]");
            v188 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v187, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v184, v189, v186, v188, 646, 1, "Base message is not defined in the archive info.");

            TSUCrashBreakpoint();
            goto LABEL_96;
          }

          *(v43 + 16) |= 8u;
          *(v43 + 208) = v77;
        }

        v78 = *(v43 + 204);
        if (v78 < 0x4000001)
        {
          v53 = __CFADD__(v35, v78);
          v35 += v78;
          if (v53)
          {
            goto LABEL_71;
          }

          goto LABEL_49;
        }

        v114 = MEMORY[0x277D81150];
        v115 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "[TSPArchiver serialize]");
        v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v116, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
        v118 = objc_opt_class();
        v119 = NSStringFromClass(v118);
        v122 = objc_msgSend_tsp_identifier(v209, v120, v121);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v114, v123, v115, v117, 653, 0, "Unknown message for object [%{public}@-%llu] is larger than the %zu bytes size limit.", v119, v122, 0x4000000);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v124, v125);
LABEL_71:

LABEL_72:
        goto LABEL_73;
      }

      if (!((objc_msgSend_message(v46, v47, v48) != 0) | isDiff & 1))
      {
        v101 = MEMORY[0x277D81150];
        v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "[TSPArchiver serialize]");
        v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
        v107 = objc_msgSend_messageVersion(v49, v105, v106);
        v109 = NSStringFromTSPVersion(v107, v108);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v101, v110, v102, v104, 633, 0, "No message to serialize for version %{public}@", v109);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v111, v112);
        goto LABEL_72;
      }

      if (!objc_msgSend_updateMessageInfo_withArchiver_(self, v50, v43, v49))
      {
        goto LABEL_72;
      }

      v52 = *(v43 + 204);
      v53 = __CFADD__(v35, v52);
      v35 += v52;
      if (v53)
      {
        goto LABEL_72;
      }

      if (v49 != self)
      {
        objc_opt_class();
        v54 = TSUDynamicCast();
        v57 = v54;
        if (!isDiff)
        {
LABEL_49:

          goto LABEL_51;
        }

        v207 = v54;
        v58 = objc_msgSend_parentArchiver(v54, v55, v56);
        v206 = v58;
        if (v58)
        {
          v60 = objc_msgSend_indexOfObject_(obj, v59, v58);
          if (v60 < 0xFFFFFFFF)
          {
            *(v43 + 16) |= 8u;
            *(v43 + 208) = v60;
            v63 = objc_msgSend_fieldPathsToRemove(v207, v61, v62);
            v64 = (v43 + 144);
            if (v63 != v43 + 144)
            {
              v65 = *(v43 + 152);
              if (v65 >= 1)
              {
                v204 = v49;
                v66 = (*(v43 + 160) + 8);
                do
                {
                  sub_2769DFA50(*v66++);
                  --v65;
                }

                while (v65);
                *(v43 + 152) = 0;
                v64 = (v43 + 144);
                v49 = v204;
              }

              v67 = *(v63 + 8);
              if (v67)
              {
                v203 = *(v63 + 16);
                v68 = v64;
                v69 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(v64, v67);
                sub_2769C14B0(v68, v69, (v203 + 8), v67, **(v43 + 160) - *(v43 + 152));
                v70 = *(v43 + 152) + v67;
                *(v43 + 152) = v70;
                v71 = *(v43 + 160);
                if (*v71 < v70)
                {
                  *v71 = v70;
                }
              }
            }

            v34 = v205;
            v57 = v207;
            goto LABEL_49;
          }

          TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Base message is not defined in the archive info.", "[TSPArchiver serialize]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 626);
          v196 = MEMORY[0x277D81150];
          v198 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v197, "[TSPArchiver serialize]");
          v200 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v199, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v196, v201, v198, v200, 626, 1, "Base message is not defined in the archive info.");

          TSUCrashBreakpoint();
        }

        else
        {
          TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Parent archiver should always be defined.", "[TSPArchiver serialize]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 623);
          v190 = MEMORY[0x277D81150];
          v192 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v191, "[TSPArchiver serialize]");
          v194 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v193, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v190, v195, v192, v194, 623, 1, "Parent archiver should always be defined.");

          TSUCrashBreakpoint();
        }

LABEL_96:
        abort();
      }

      objc_msgSend_updateMessageInfo_(self->_unknownContentSnapshot, v51, v43);
LABEL_51:
      v81 = objc_msgSend_messageVersion(v39, v79, v80);
      if (v37 >= v81)
      {
        v37 = v81;
      }

      v36 |= isDiff;
      ++v38;
    }

    while (v38 != v34);
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v221, v240, 16);
  }

  while (v34);

  if (v37 == -1)
  {
LABEL_58:
    v85 = MEMORY[0x277D81150];
    v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "[TSPArchiver serialize]");
    v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
    v89 = objc_opt_class();
    v90 = NSStringFromClass(v89);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v85, v91, v86, v88, 670, 0, "Archiver for object [%{public}@-%llu] doesn't have a message with version less than the max.", v90, v231);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v92, v93);
  }

  if (v36)
  {
    v226 |= 2u;
    v232 = 1;
  }

  v94 = sub_2769DF300(v225, v82, v83, v84);
  v97 = v94;
  if (HIDWORD(v94))
  {
    v165 = MEMORY[0x277D81150];
    v166 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, "[TSPArchiver serialize]");
    v168 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v167, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v165, v169, v166, v168, 679, 0, "Out-of-bounds type assignment failed");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v170, v171);
    goto LABEL_73;
  }

  v98 = (v94 + 5 + v35);
  if (__CFADD__(v94 + 5, v35))
  {
LABEL_73:
    objc_msgSend_fail(self, v98, v96);
    goto LABEL_74;
  }

  sub_276A0160C(v220, v98);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v238, v220, 1);
  v99 = v239;
  if (v238[0] <= v239)
  {
    v99 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(v238, v239);
  }

  if (v97 > 0x7F)
  {
    *v99 = v97 | 0x80;
    v113 = v97 >> 7;
    if (v97 >> 14)
    {
      v100 = v99 + 2;
      do
      {
        *(v100 - 1) = v113 | 0x80;
        v127 = v113 >> 7;
        ++v100;
        v128 = v113 >> 14;
        v113 >>= 7;
      }

      while (v128);
      *(v100 - 1) = v127;
    }

    else
    {
      v99[1] = v113;
      v100 = v99 + 2;
    }
  }

  else
  {
    *v99 = v97;
    v100 = v99 + 1;
  }

  v239 = v100;
  v239 = (*(v225[0] + 96))(v225);
  v216 = 0u;
  v217 = 0u;
  v218 = 0u;
  v219 = 0u;
  v213 = obj;
  v130 = objc_msgSend_countByEnumeratingWithState_objects_count_(v213, v129, &v216, v237, 16);
  if (v130)
  {
    v131 = *v217;
    do
    {
      for (j = 0; j != v130; ++j)
      {
        if (*v217 != v131)
        {
          objc_enumerationMutation(v213);
        }

        v133 = *(*(&v216 + 1) + 8 * j);
        objc_opt_class();
        v134 = TSUDynamicCast();
        v137 = v134;
        if (v134)
        {
          v138 = objc_msgSend_message(v134, v135, v136);
          if (v138)
          {
            v239 = (*(*v138 + 96))(v138, v239, v238);
            objc_msgSend_releaseMessage(v137, v141, v142);
          }

          else if ((objc_msgSend_isDiff(v133, v139, v140) & 1) == 0)
          {
            v149 = MEMORY[0x277D81150];
            v150 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v148, "[TSPArchiver serialize]");
            v152 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v151, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
            v155 = objc_msgSend_messageVersion(v137, v153, v154);
            v157 = NSStringFromTSPVersion(v155, v156);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v149, v158, v150, v152, 702, 0, "No message to serialize for version %{public}@", v157);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v159, v160);
          }
        }

        else
        {
          objc_opt_class();
          v143 = TSUDynamicCast();
          v146 = v143;
          if (!v143)
          {
            TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Unexpected archivable content class.", "[TSPArchiver serialize]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 706);
            v172 = MEMORY[0x277D81150];
            v174 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v173, "[TSPArchiver serialize]");
            v176 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v175, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v172, v177, v174, v176, 706, 1, "Unexpected archivable content class.");

            TSUCrashBreakpoint();
            goto LABEL_96;
          }

          v147 = objc_msgSend_messageData(v143, v144, v145);
          applier[0] = MEMORY[0x277D85DD0];
          applier[1] = 3221225472;
          applier[2] = sub_2769BF1EC;
          applier[3] = &unk_27A6E30C0;
          applier[4] = v238;
          dispatch_data_apply(v147, applier);
        }
      }

      v130 = objc_msgSend_countByEnumeratingWithState_objects_count_(v213, v161, &v216, v237, 16);
    }

    while (v130);
  }

  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v238);
  v163 = sub_276A016D0(v220, v162);
  v164 = self->_serializedData;
  self->_serializedData = v163;

  sub_276A01610(v220);
LABEL_74:

  sub_2769DED20(v225);
LABEL_75:
  v214.receiver = self;
  v214.super_class = TSPArchiver;
  [(TSPArchiverBase *)&v214 cleanup];
  unknownContentSnapshot = self->_unknownContentSnapshot;
  self->_unknownContentSnapshot = 0;
}

- (void)cleanup
{
  featureInfos = self->_featureInfos;
  self->_featureInfos = 0;

  aggregatedStrongReferences = self->_aggregatedStrongReferences;
  self->_aggregatedStrongReferences = 0;

  aggregatedWeakReferences = self->_aggregatedWeakReferences;
  self->_aggregatedWeakReferences = 0;

  aggregatedLazyReferences = self->_aggregatedLazyReferences;
  self->_aggregatedLazyReferences = 0;

  aggregatedDataReferences = self->_aggregatedDataReferences;
  self->_aggregatedDataReferences = 0;

  aggregatedCountedDataReferences = self->_aggregatedCountedDataReferences;
  self->_aggregatedCountedDataReferences = 0;

  serializedData = self->_serializedData;
  self->_serializedData = 0;
}

- (id)calculateOrderedArchivableContent
{
  v4 = objc_msgSend_alternates(self, a2, v2);
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = objc_msgSend_count(v4, v5, v6);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2769BF57C;
  v29[3] = &unk_27A6E31C8;
  v29[4] = &v30;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v4, v7, v29);
  v10 = objc_msgSend_messages(self->_unknownContentSnapshot, v8, v9);
  v11 = objc_alloc(MEMORY[0x277CBEB18]);
  v12 = v31[3];
  v15 = objc_msgSend_count(v10, v13, v14);
  v17 = objc_msgSend_initWithCapacity_(v11, v16, v12 + v15 + 1);
  objc_msgSend_addObject_(v17, v18, self);
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = sub_2769BF6CC;
  v27 = &unk_27A6E31F0;
  v19 = v17;
  v28 = v19;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v4, v20, &v24);
  if (v10)
  {
    objc_msgSend_addObjectsFromArray_(v19, v21, v10, v24, v25, v26, v27);
  }

  v22 = objc_msgSend_sortedArrayUsingComparator_(v19, v21, &unk_2885BF6C0, v24, v25, v26, v27);

  _Block_object_dispose(&v30, 8);

  return v22;
}

- (void)validateOrderedArchivableContent:(id)content
{
  v326 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  if (objc_msgSend_count(contentCopy, v3, v4) >= 2)
  {
    v319 = 0u;
    v320 = 0u;
    v317 = 0u;
    v318 = 0u;
    obj = contentCopy;
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v317, v325, 16);
    if (v6)
    {
      v316 = 0;
      v9 = -1;
      v312 = *v318;
      v311 = -1;
      do
      {
        v313 = v6;
        for (i = 0; i != v313; ++i)
        {
          if (*v318 != v312)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v317 + 1) + 8 * i);
          isDiff = objc_msgSend_isDiff(v11, v7, v8);
          v15 = v316;
          if (!(isDiff & 1 | ((v316 & 1) == 0)))
          {
            TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Diff messages should be archived in the end.", "[TSPArchiver validateOrderedArchivableContent:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 843);
            v115 = MEMORY[0x277D81150];
            v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v116, "[TSPArchiver validateOrderedArchivableContent:]");
            v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v115, v120, v117, v119, 843, 1, "Diff messages should be archived in the end.");

            TSUCrashBreakpoint();
            goto LABEL_48;
          }

          v316 |= isDiff;
          if ((isDiff | v15))
          {
            if ((objc_msgSend_isContentUnknown(v11, v13, v14) & 1) == 0)
            {
              objc_opt_class();
              v314 = TSUDynamicCast();
              if ((objc_msgSend_isDiff(v314, v16, v17) & 1) == 0)
              {
                v157 = objc_msgSend_object(self, v18, v19);
                v158 = objc_opt_class();
                v159 = NSStringFromClass(v158);
                v162 = objc_msgSend_object(self, v160, v161);
                v165 = objc_msgSend_tsp_identifier(v162, v163, v164);
                v168 = objc_msgSend_messageVersion(v11, v166, v167);
                v170 = NSStringFromTSPVersion(v168, v169);
                TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Alternate for object [%{public}@-%llu] version %{public}@ should be a diff archiver.", "[TSPArchiver validateOrderedArchivableContent:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 848, v159, v165, v170);

                v171 = MEMORY[0x277D81150];
                v173 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v172, "[TSPArchiver validateOrderedArchivableContent:]");
                v175 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v174, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
                v178 = objc_msgSend_object(self, v176, v177);
                v179 = objc_opt_class();
                v180 = NSStringFromClass(v179);
                v183 = objc_msgSend_object(self, v181, v182);
                v186 = objc_msgSend_tsp_identifier(v183, v184, v185);
                v189 = objc_msgSend_messageVersion(v11, v187, v188);
                v191 = NSStringFromTSPVersion(v189, v190);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v171, v192, v173, v175, 848, 1, "Alternate for object [%{public}@-%llu] version %{public}@ should be a diff archiver.", v180, v186, v191);

                TSUCrashBreakpoint();
                goto LABEL_48;
              }

              v309 = objc_msgSend_parentArchiver(v314, v18, v19);
              if (!v309)
              {
                v121 = objc_msgSend_object(self, v20, v21);
                v122 = objc_opt_class();
                v123 = NSStringFromClass(v122);
                v126 = objc_msgSend_object(self, v124, v125);
                v129 = objc_msgSend_tsp_identifier(v126, v127, v128);
                v132 = objc_msgSend_messageVersion(v11, v130, v131);
                v134 = NSStringFromTSPVersion(v132, v133);
                TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Alternate diff for object [%{public}@-%llu] version %{public}@ should have a parent archiver.", "[TSPArchiver validateOrderedArchivableContent:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 851, v123, v129, v134);

                v135 = MEMORY[0x277D81150];
                v137 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v136, "[TSPArchiver validateOrderedArchivableContent:]");
                v139 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v138, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
                v142 = objc_msgSend_object(self, v140, v141);
                v143 = objc_opt_class();
                v144 = NSStringFromClass(v143);
                v147 = objc_msgSend_object(self, v145, v146);
                v150 = objc_msgSend_tsp_identifier(v147, v148, v149);
                v153 = objc_msgSend_messageVersion(v11, v151, v152);
                v155 = NSStringFromTSPVersion(v153, v154);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v135, v156, v137, v139, 851, 1, "Alternate diff for object [%{public}@-%llu] version %{public}@ should have a parent archiver.", v144, v150, v155);

                TSUCrashBreakpoint();
                goto LABEL_48;
              }

              v24 = objc_msgSend_message(v314, v20, v21);
              if (v24)
              {
                v27 = objc_msgSend_fieldPath(v314, v22, v23);
                if (v27)
                {
                  v28 = objc_msgSend_message(v309, v25, v26);
                  v29 = (*(*v28 + 152))(v28);
                  (*(*v28 + 152))(v28);
                  v32 = v29 != 0;
                  if (v29)
                  {
                    v33 = *(v27 + 16) < 1;
                  }

                  else
                  {
                    v33 = 1;
                  }

                  if (!v33)
                  {
                    v34 = v30;
                    v35 = *(v27 + 24);
                    v36 = *v35;
                    FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(v29, *v35);
                    if (!FieldByNumber)
                    {
                      FieldByNumber = google::protobuf::Reflection::FindKnownExtensionByNumber(v34, v36);
                    }

                    v38 = *(FieldByNumber + 48);
                    if (v38)
                    {
                      v321 = FieldByNumber;
                      v322 = google::protobuf::FieldDescriptor::TypeOnceInit;
                      if (atomic_load_explicit(v38, memory_order_acquire) != -1)
                      {
                        v324[0] = &v322;
                        v324[1] = &v321;
                        v323 = v324;
                        std::__call_once(v38, &v323, sub_2769C149C);
                      }
                    }

                    if (*(FieldByNumber + 56) == 11)
                    {
                      v29 = google::protobuf::FieldDescriptor::message_type(FieldByNumber);
                      if (v29)
                      {
                        operator new();
                      }
                    }

                    v32 = 0;
                    if (*(FieldByNumber + 60) == 3)
                    {
                      v75 = objc_msgSend_object(self, v30, v31);
                      v76 = objc_opt_class();
                      v77 = NSStringFromClass(v76);
                      v80 = objc_msgSend_object(self, v78, v79);
                      v83 = objc_msgSend_tsp_identifier(v80, v81, v82);
                      v86 = objc_msgSend_messageVersion(v11, v84, v85);
                      v88 = NSStringFromTSPVersion(v86, v87);
                      v89 = v88;
                      v90 = *(FieldByNumber + 8);
                      if (*(v90 + 23) < 0)
                      {
                        v90 = *v90;
                      }

                      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Alternate diff for object [%{public}@-%llu] version %{public}@ defined a field path within repeated field %{public}s (%d).", "[TSPArchiver validateOrderedArchivableContent:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 883, v77, v83, v88, v90, v36);

                      v91 = MEMORY[0x277D81150];
                      v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, "[TSPArchiver validateOrderedArchivableContent:]");
                      v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
                      v98 = objc_msgSend_object(self, v96, v97);
                      v99 = objc_opt_class();
                      v100 = NSStringFromClass(v99);
                      v103 = objc_msgSend_object(self, v101, v102);
                      v106 = objc_msgSend_tsp_identifier(v103, v104, v105);
                      v109 = objc_msgSend_messageVersion(v11, v107, v108);
                      v111 = NSStringFromTSPVersion(v109, v110);
                      v113 = v111;
                      v114 = *(FieldByNumber + 8);
                      if (*(v114 + 23) < 0)
                      {
                        v114 = *v114;
                      }

                      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v91, v112, v93, v95, 883, 1, "Alternate diff for object [%{public}@-%llu] version %{public}@ defined a field path within repeated field %{public}s (%d).", v100, v106, v111, v114, v36);

                      TSUCrashBreakpoint();
LABEL_48:
                      abort();
                    }
                  }

                  if (!v32)
                  {
                    v193 = objc_msgSend_object(self, v30, v31);
                    v194 = objc_opt_class();
                    v195 = NSStringFromClass(v194);
                    v198 = objc_msgSend_object(self, v196, v197);
                    v201 = objc_msgSend_tsp_identifier(v198, v199, v200);
                    v204 = objc_msgSend_messageVersion(v11, v202, v203);
                    v206 = NSStringFromTSPVersion(v204, v205);
                    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Alternate diff for object [%{public}@-%llu] version %{public}@ defined an invalid field path.", "[TSPArchiver validateOrderedArchivableContent:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 886, v195, v201, v206);

                    v207 = MEMORY[0x277D81150];
                    v209 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v208, "[TSPArchiver validateOrderedArchivableContent:]");
                    v211 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v210, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
                    v214 = objc_msgSend_object(self, v212, v213);
                    v215 = objc_opt_class();
                    v216 = NSStringFromClass(v215);
                    v219 = objc_msgSend_object(self, v217, v218);
                    v222 = objc_msgSend_tsp_identifier(v219, v220, v221);
                    v225 = objc_msgSend_messageVersion(v11, v223, v224);
                    v227 = NSStringFromTSPVersion(v225, v226);
                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v207, v228, v209, v211, 886, 1, "Alternate diff for object [%{public}@-%llu] version %{public}@ defined an invalid field path.", v216, v222, v227);

                    TSUCrashBreakpoint();
                    goto LABEL_48;
                  }

                  if (v29 != (*(*v24 + 152))(v24))
                  {
                    v229 = objc_msgSend_object(self, v39, v40);
                    v230 = objc_opt_class();
                    v231 = NSStringFromClass(v230);
                    v234 = objc_msgSend_object(self, v232, v233);
                    v237 = objc_msgSend_tsp_identifier(v234, v235, v236);
                    v240 = objc_msgSend_messageVersion(v11, v238, v239);
                    v242 = NSStringFromTSPVersion(v240, v241);
                    v243 = *(v29 + 1);
                    if (*(v243 + 23) < 0)
                    {
                      v243 = *v243;
                    }

                    v244 = *((*(*v24 + 152))(v24) + 8);
                    if (*(v244 + 23) < 0)
                    {
                      v244 = *v244;
                    }

                    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Alternate diff for object [%{public}@-%llu] version %{public}@ has wrong message type: expected %{public}s, actual %{public}s", "[TSPArchiver validateOrderedArchivableContent:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 887, v231, v237, v242, v243, v244);

                    v245 = MEMORY[0x277D81150];
                    v247 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v246, "[TSPArchiver validateOrderedArchivableContent:]");
                    v249 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v248, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
                    v252 = objc_msgSend_object(self, v250, v251);
                    v253 = objc_opt_class();
                    v254 = NSStringFromClass(v253);
                    v257 = objc_msgSend_object(self, v255, v256);
                    v260 = objc_msgSend_tsp_identifier(v257, v258, v259);
                    v263 = objc_msgSend_messageVersion(v11, v261, v262);
                    v265 = NSStringFromTSPVersion(v263, v264);
                    v266 = *(v29 + 1);
                    if (*(v266 + 23) < 0)
                    {
                      v266 = *v266;
                    }

                    v268 = *((*(*v24 + 152))(v24) + 8);
                    if (*(v268 + 23) < 0)
                    {
                      v268 = *v268;
                    }

                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v245, v267, v247, v249, 887, 1, "Alternate diff for object [%{public}@-%llu] version %{public}@ has wrong message type: expected %{public}s, actual %{public}s", v254, v260, v265, v266, v268);

                    TSUCrashBreakpoint();
                    goto LABEL_48;
                  }
                }

                else
                {
                  v70 = objc_msgSend_messageType(v309, v25, v26);
                  if (v70 != objc_msgSend_messageType(v314, v71, v72))
                  {
                    v269 = objc_msgSend_object(self, v73, v74);
                    v270 = objc_opt_class();
                    v271 = NSStringFromClass(v270);
                    v274 = objc_msgSend_object(self, v272, v273);
                    v277 = objc_msgSend_tsp_identifier(v274, v275, v276);
                    v280 = objc_msgSend_messageVersion(v309, v278, v279);
                    v282 = NSStringFromTSPVersion(v280, v281);
                    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d All alternate diffs for object [%{public}@-%llu] version %{public}@ should have the same message type.", "[TSPArchiver validateOrderedArchivableContent:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 889, v271, v277, v282);

                    v283 = MEMORY[0x277D81150];
                    v285 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v284, "[TSPArchiver validateOrderedArchivableContent:]");
                    v287 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v286, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
                    v290 = objc_msgSend_object(self, v288, v289);
                    v291 = objc_opt_class();
                    v292 = NSStringFromClass(v291);
                    v295 = objc_msgSend_object(self, v293, v294);
                    v298 = objc_msgSend_tsp_identifier(v295, v296, v297);
                    v301 = objc_msgSend_messageVersion(v309, v299, v300);
                    v303 = NSStringFromTSPVersion(v301, v302);
                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v283, v304, v285, v287, 889, 1, "All alternate diffs for object [%{public}@-%llu] version %{public}@ should have the same message type.", v292, v298, v303);

                    TSUCrashBreakpoint();
                    goto LABEL_48;
                  }
                }
              }
            }
          }

          else
          {
            v41 = objc_msgSend_messageVersion(v11, v13, v14);
            v44 = v41;
            if ((objc_msgSend_isContentUnknown(v11, v42, v43) & 1) == 0)
            {
              objc_opt_class();
              v45 = TSUDynamicCast();
              v44 = objc_msgSend_minimumSupportedVersion(v45, v46, v47);
            }

            if (v9 < v44)
            {
              v48 = MEMORY[0x277D81150];
              v310 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPArchiver validateOrderedArchivableContent:]");
              v315 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
              v306 = objc_msgSend_object(self, v50, v51);
              v52 = objc_opt_class();
              v53 = NSStringFromClass(v52);
              v54 = v9;
              v57 = objc_msgSend_object(self, v55, v56);
              v60 = objc_msgSend_tsp_identifier(v57, v58, v59);
              v62 = NSStringFromTSPVersion(v311, v61);
              v64 = NSStringFromTSPVersion(v54, v63);
              v66 = NSStringFromTSPVersion(v44, v65);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v67, v310, v315, 896, 0, "Alternate for object [%{public}@-%llu] version %{public}@ has diffs that bring its minimum version to %{public}@, which is less than the minimum version of the next alternate (%{public}@).", v53, v60, v62, v64, v66);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69);
            }

            v9 = v44;
            v311 = v41;
          }
        }

        v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v317, v325, 16);
      }

      while (v6);
    }
  }
}

- (BOOL)isSavingDocumentAs
{
  if (objc_msgSend_targetType(self, a2, v2))
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d targetType must be TSPArchiverTargetTypeDocument", "[TSPArchiver isSavingDocumentAs]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 907);
    v6 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPArchiver isSavingDocumentAs]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v8, v10, 907, 1, "targetType must be TSPArchiverTargetTypeDocument");

    TSUCrashBreakpoint();
    abort();
  }

  v4 = atomic_load(&self->_flags);
  return (v4 >> 4) & 1;
}

- (BOOL)isSavingCollaborativeDocument
{
  if (objc_msgSend_targetType(self, a2, v2))
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d targetType must be TSPArchiverTargetTypeDocument", "[TSPArchiver isSavingCollaborativeDocument]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 912);
    v6 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPArchiver isSavingCollaborativeDocument]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v8, v10, 912, 1, "targetType must be TSPArchiverTargetTypeDocument");

    TSUCrashBreakpoint();
    abort();
  }

  v4 = atomic_load(&self->_flags);
  return (v4 >> 5) & 1;
}

@end
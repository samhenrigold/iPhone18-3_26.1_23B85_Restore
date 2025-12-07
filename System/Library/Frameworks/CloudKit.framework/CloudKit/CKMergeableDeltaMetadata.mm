@interface CKMergeableDeltaMetadata
+ (id)deliverableDeltaMetadatasInDeltaSet:(id)set withMergeableValueCurrentStateVector:(id)vector deliveryRequirements:(unint64_t)requirements;
+ (id)mergeableDeltaMetadataByCombiningMetadatas:(id)metadatas;
+ (id)replacementDeltaMetadatasForDeltaDirectory:(id)directory withNextDeltaMetadata:(id)metadata currentStateVector:(id)vector deltaDirectoryDeliveryRequirements:(unint64_t)requirements error:(id *)error;
- (BOOL)_isEquivalent:(id)equivalent;
- (BOOL)isEqual:(id)equal;
- (CKDistributedTimestampClockVector)dependenciesVector;
- (CKDistributedTimestampClockVector)previousVector;
- (CKDistributedTimestampStateVector)contentsVector;
- (CKDistributedTimestampStateVector)removalsVector;
- (CKMergeableDeltaMetadata)initWithCoder:(id)coder;
- (CKMergeableDeltaMetadata)initWithIdentifier:(id)identifier vectors:(id)vectors replacedDeltaIdentifiers:(id)identifiers;
- (CKMergeableDeltaMetadata)initWithVectors:(id)vectors;
- (CKMergeableDeltaVectors)vectors;
- (NSSet)replacedDeltaIdentifiers;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithStringSiteIdentifiers:(BOOL)identifiers usingSuperscripts:(BOOL)superscripts;
- (unint64_t)hash;
- (unint64_t)size;
- (void)encodeWithCoder:(id)coder;
- (void)setReplacedDeltaIdentifiers:(id)identifiers;
- (void)setVectors:(id)vectors;
@end

@implementation CKMergeableDeltaMetadata

- (CKMergeableDeltaMetadata)initWithVectors:(id)vectors
{
  v4 = MEMORY[0x1E696AFB0];
  vectorsCopy = vectors;
  v8 = objc_msgSend_UUID(v4, v6, v7);
  v11 = objc_msgSend_UUIDString(v8, v9, v10);
  v13 = objc_msgSend_initWithIdentifier_vectors_replacedDeltaIdentifiers_(self, v12, v11, vectorsCopy, 0);

  return v13;
}

- (CKMergeableDeltaMetadata)initWithIdentifier:(id)identifier vectors:(id)vectors replacedDeltaIdentifiers:(id)identifiers
{
  identifierCopy = identifier;
  vectorsCopy = vectors;
  identifiersCopy = identifiers;
  if (!identifierCopy || !objc_msgSend_length(identifierCopy, v10, v11))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v10, *MEMORY[0x1E695D940], @"Identifier must not be nil or empty");
  }

  v24.receiver = self;
  v24.super_class = CKMergeableDeltaMetadata;
  v15 = [(CKMergeableDeltaMetadata *)&v24 init];
  if (v15)
  {
    v16 = objc_msgSend_copy(identifierCopy, v13, v14);
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v20 = objc_msgSend_copy(vectorsCopy, v18, v19);
    vectors = v15->_vectors;
    v15->_vectors = v20;

    objc_msgSend_setReplacedDeltaIdentifiers_(v15, v22, identifiersCopy);
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CKMergeableDeltaMetadata alloc];
  v7 = objc_msgSend_identifier(self, v5, v6);
  v10 = objc_msgSend_vectors(self, v8, v9);
  v13 = objc_msgSend_replacedDeltaIdentifiers(self, v11, v12);
  v15 = objc_msgSend_initWithIdentifier_vectors_replacedDeltaIdentifiers_(v4, v14, v7, v10, v13);

  return v15;
}

+ (id)mergeableDeltaMetadataByCombiningMetadatas:(id)metadatas
{
  v3 = objc_msgSend_CKMap_(metadatas, a2, &unk_1EFA2EC48);
  v5 = objc_msgSend_mergeableDeltaMetadataVectorsByCombiningVectors_(CKMergeableDeltaVectors, v4, v3);
  v6 = [CKMergeableDeltaMetadata alloc];
  v8 = objc_msgSend_initWithVectors_(v6, v7, v5);

  return v8;
}

- (CKMergeableDeltaMetadata)initWithCoder:(id)coder
{
  v54 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_identifier);
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v5, v6);

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v13 = objc_msgSend_setWithObjects_(v9, v12, v10, v11, 0);
  v14 = NSStringFromSelector(sel_replacedDeltaIdentifiers);
  v16 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v15, v13, v14);

  v17 = objc_opt_class();
  v19 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v18, v17, @"timestampsProtobuf");
  if (!v19)
  {
    v31 = objc_opt_class();
    v32 = NSStringFromSelector(sel_previousVector);
    v22 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v33, v31, v32);

    v34 = objc_opt_class();
    v35 = NSStringFromSelector(sel_contentsVector);
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v36, v34, v35);

    v37 = objc_opt_class();
    v38 = NSStringFromSelector(sel_removalsVector);
    v40 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v39, v37, v38);

    v41 = objc_opt_class();
    v42 = NSStringFromSelector(sel_dependenciesVector);
    v44 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v43, v41, v42);

    v45 = [CKMergeableDeltaVectors alloc];
    v47 = objc_msgSend_initWithPreviousVector_contentsVector_removalsVector_dependenciesVector_(v45, v46, v22, v24, v40, v44);
    v49 = objc_msgSend_initWithIdentifier_vectors_replacedDeltaIdentifiers_(self, v48, v8, v47, v16);

LABEL_10:
    self = v49;
    selfCopy = self;
    goto LABEL_11;
  }

  v20 = [CKDPDistributedTimestamps alloc];
  v22 = objc_msgSend_initWithData_(v20, v21, v19);
  v51 = 0;
  v24 = objc_msgSend_deltaMetadataVectorsFromPDistributedTimestamps_error_(CKMergeableDeltaVectors, v23, v22, &v51);
  v25 = v51;
  if (!v25)
  {
    v49 = objc_msgSend_initWithIdentifier_vectors_replacedDeltaIdentifiers_(self, v26, v8, v24, v16);
    goto LABEL_10;
  }

  v27 = v25;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v28 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v53 = v27;
    _os_log_error_impl(&dword_1883EA000, v28, OS_LOG_TYPE_ERROR, "Error initializing mergeable delta metadata from data in coder: %@", buf, 0xCu);
  }

  objc_msgSend_failWithError_(coderCopy, v29, v27);

  selfCopy = 0;
LABEL_11:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_vectors(self, v5, v6);
  v23 = objc_msgSend_pDistributedTimestampsFromDeltaMetadataVectors_(CKMergeableDeltaVectors, v8, v7);

  v11 = objc_msgSend_identifier(self, v9, v10);
  v12 = NSStringFromSelector(sel_identifier);
  objc_msgSend_encodeObject_forKey_(coderCopy, v13, v11, v12);

  v16 = objc_msgSend_replacedDeltaIdentifiers(self, v14, v15);
  v17 = NSStringFromSelector(sel_replacedDeltaIdentifiers);
  objc_msgSend_encodeObject_forKey_(coderCopy, v18, v16, v17);

  v21 = objc_msgSend_data(v23, v19, v20);
  objc_msgSend_encodeObject_forKey_(coderCopy, v22, v21, @"timestampsProtobuf");
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else if (objc_msgSend__isEquivalent_(self, v4, equalCopy) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = equalCopy;
    v9 = objc_msgSend_identifier(self, v7, v8);
    v12 = objc_msgSend_identifier(v6, v10, v11);

    v13 = CKObjectsAreBothNilOrEqual(v9, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  if (equivalentCopy == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equivalentCopy;
      v8 = objc_msgSend_vectors(self, v6, v7);
      v11 = objc_msgSend_vectors(v5, v9, v10);
      if (CKObjectsAreBothNilOrEqual(v8, v11))
      {
        v14 = objc_msgSend_replacedDeltaIdentifiers(self, v12, v13);
        v17 = objc_msgSend_replacedDeltaIdentifiers(v5, v15, v16);
        v18 = CKObjectsAreBothNilOrEqual(v14, v17);
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_identifier(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_vectors(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12) ^ v7;
  v16 = objc_msgSend_replacedDeltaIdentifiers(self, v14, v15);
  v19 = objc_msgSend_hash(v16, v17, v18);

  return v13 ^ v19;
}

- (CKMergeableDeltaVectors)vectors
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_vectors;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setVectors:(id)vectors
{
  vectorsCopy = vectors;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_vectors != vectorsCopy)
  {
    v7 = objc_msgSend_copy(vectorsCopy, v5, v6);
    vectors = selfCopy->_vectors;
    selfCopy->_vectors = v7;
  }

  objc_sync_exit(selfCopy);
}

- (NSSet)replacedDeltaIdentifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_replacedDeltaIdentifiers;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setReplacedDeltaIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_CKDeepCopy(identifiersCopy, v5, v6);
  replacedDeltaIdentifiers = selfCopy->_replacedDeltaIdentifiers;
  selfCopy->_replacedDeltaIdentifiers = v7;

  objc_sync_exit(selfCopy);
}

- (id)descriptionWithStringSiteIdentifiers:(BOOL)identifiers usingSuperscripts:(BOOL)superscripts
{
  superscriptsCopy = superscripts;
  identifiersCopy = identifiers;
  v7 = objc_opt_new();
  objc_msgSend_appendString_(v7, v8, @"{\n");
  v11 = objc_msgSend_identifier(self, v9, v10);
  objc_msgSend_appendFormat_(v7, v12, @"  Identifier: %@\n", v11);

  v15 = objc_msgSend_vectors(self, v13, v14);
  v17 = objc_msgSend_descriptionWithStringSiteIdentifiers_usingSuperscripts_(v15, v16, identifiersCopy, superscriptsCopy);
  v19 = objc_msgSend_CKIndentedString_skippingFirstLine_(v17, v18, 2, 1);
  objc_msgSend_appendFormat_(v7, v20, @"  Vectors: %@\n", v19);

  v23 = objc_msgSend_replacedDeltaIdentifiers(self, v21, v22);
  if (objc_msgSend_count(v23, v24, v25))
  {
    v28 = objc_msgSend_description(v23, v26, v27);
    v30 = objc_msgSend_CKIndentedString_skippingFirstLine_(v28, v29, 2, 1);
    objc_msgSend_appendFormat_(v7, v31, @"  ReplacedDeltas: %@\n", v30);
  }

  objc_msgSend_appendString_(v7, v26, @"}");

  return v7;
}

- (unint64_t)size
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_identifier(self, a2, v2);
  v7 = objc_msgSend_length(v4, v5, v6);
  v8 = v7 + 2;
  if (v7 >= 0x80)
  {
    do
    {
      ++v8;
      v9 = v7 >> 14;
      v7 >>= 7;
    }

    while (v9);
  }

  v12 = objc_msgSend_vectors(self, v10, v11);
  v15 = objc_msgSend_protobufSize(v12, v13, v14);
  v16 = v15 + 2;
  if (v15 >= 0x80)
  {
    do
    {
      ++v16;
      v17 = v15 >> 14;
      v15 >>= 7;
    }

    while (v17);
  }

  v18 = v8 + v16 + 122;
  v21 = objc_msgSend_replacedDeltaIdentifiers(self, v19, v20);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v33, v37, 16);
  if (v23)
  {
    v26 = v23;
    v27 = *v34;
    do
    {
      v28 = 0;
      do
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(v21);
        }

        v29 = objc_msgSend_length(*(*(&v33 + 1) + 8 * v28), v24, v25);
        v30 = v29 + 2;
        if (v29 >= 0x80)
        {
          do
          {
            ++v30;
            v31 = v29 >> 14;
            v29 >>= 7;
          }

          while (v31);
        }

        v18 += v30;
        ++v28;
      }

      while (v28 != v26);
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v33, v37, 16);
    }

    while (v26);
  }

  return v18;
}

- (CKDistributedTimestampClockVector)previousVector
{
  v3 = objc_msgSend_vectors(self, a2, v2);
  v6 = objc_msgSend_previous(v3, v4, v5);

  return v6;
}

- (CKDistributedTimestampStateVector)contentsVector
{
  v3 = objc_msgSend_vectors(self, a2, v2);
  v6 = objc_msgSend_contents(v3, v4, v5);

  return v6;
}

- (CKDistributedTimestampStateVector)removalsVector
{
  v3 = objc_msgSend_vectors(self, a2, v2);
  v6 = objc_msgSend_removals(v3, v4, v5);

  return v6;
}

- (CKDistributedTimestampClockVector)dependenciesVector
{
  v3 = objc_msgSend_vectors(self, a2, v2);
  v6 = objc_msgSend_dependencies(v3, v4, v5);

  return v6;
}

+ (id)replacementDeltaMetadatasForDeltaDirectory:(id)directory withNextDeltaMetadata:(id)metadata currentStateVector:(id)vector deltaDirectoryDeliveryRequirements:(unint64_t)requirements error:(id *)error
{
  v635 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  metadataCopy = metadata;
  vectorCopy = vector;
  v537 = objc_opt_new();
  v487 = objc_autoreleasePoolPush();
  v13 = objc_msgSend_vectors(metadataCopy, v11, v12);
  v16 = objc_msgSend_contents(v13, v14, v15);
  v19 = objc_msgSend_timestampCount(v16, v17, v18);

  if (!v19)
  {

    goto LABEL_7;
  }

  if (!metadataCopy)
  {
LABEL_7:
    v493 = directoryCopy;
    metadataCopy = 0;
    v44 = 1;
    goto LABEL_8;
  }

  v20 = objc_opt_new();
  v23 = objc_msgSend_vectors(metadataCopy, v21, v22);
  v26 = objc_msgSend_previous(v23, v24, v25);
  objc_msgSend_unionVector_(v20, v27, v26);

  v30 = objc_msgSend_vectors(metadataCopy, v28, v29);
  v33 = objc_msgSend_contents(v30, v31, v32);
  v36 = objc_msgSend_clockVector(v33, v34, v35);
  objc_msgSend_unionVector_(v20, v37, v36);

  v40 = objc_msgSend_clockVector(vectorCopy, v38, v39);
  LOBYTE(v33) = objc_msgSend_isEqual_(v20, v41, v40);

  if ((v33 & 1) == 0)
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v42, *MEMORY[0x1E695D940], @"Next delta %@ was not generated using current state vector %@", metadataCopy, vectorCopy);
  }

  v493 = objc_msgSend_setByAddingObject_(directoryCopy, v43, metadataCopy);
  v44 = 0;
LABEL_8:
  v45 = objc_opt_new();
  v47 = objc_msgSend_deliverableDeltaMetadatasInDeltaSet_withMergeableValueCurrentStateVector_deliveryRequirements_(self, v46, v493, v45, requirements);

  requirementsCopy = requirements;
  if (v44)
  {
LABEL_18:
    metadataCopy = 0;
    goto LABEL_19;
  }

  if ((objc_msgSend_containsObject_(v47, v48, metadataCopy) & 1) == 0)
  {
    v53 = objc_msgSend_allObjects(directoryCopy, v49, v50);
    v55 = objc_msgSend_mergeableDeltaMetadataByCombiningMetadatas_(CKMergeableDeltaMetadata, v54, v53);

    v56 = ck_log_initialization_block;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, v56);
    }

    v57 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      *&buf[4] = metadataCopy;
      *&buf[12] = 2112;
      *&buf[14] = v55;
      _os_log_fault_impl(&dword_1883EA000, v57, OS_LOG_TYPE_FAULT, "Next delta %@ may not be deliverable with aggregated delta directory metadata %@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  if (!metadataCopy)
  {
LABEL_19:
    v488 = 1;
    goto LABEL_20;
  }

  if (objc_msgSend_containsObject_(directoryCopy, v49, metadataCopy))
  {
    v488 = 0;
LABEL_20:
    v548 = metadataCopy;
    v489 = v47;
    goto LABEL_21;
  }

  v548 = metadataCopy;
  v322 = objc_msgSend_mutableCopy(v47, v51, v52);
  objc_msgSend_removeObject_(v322, v323, metadataCopy);
  v489 = objc_msgSend_copy(v322, v324, v325);

  v488 = 0;
LABEL_21:
  v490 = v47;

  v522 = objc_opt_new();
  v554 = objc_opt_new();
  v536 = objc_opt_new();
  v523 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x1E696AD18], v58, v59);
  v524 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x1E696AD18], v60, v61);
  v616 = 0u;
  v615 = 0u;
  v614 = 0u;
  v613 = 0u;
  obj = v489;
  v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v62, &v613, v634, 16);
  if (v63)
  {
    v64 = *v614;
    do
    {
      for (i = 0; i != v63; ++i)
      {
        if (*v614 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v66 = *(*(&v613 + 1) + 8 * i);
        v67 = objc_autoreleasePoolPush();
        v68 = vectorCopy;
        v71 = objc_msgSend_vectors(v66, v69, v70);
        v74 = objc_msgSend_contents(v71, v72, v73);
        hasAtomStateNotInStateVector = objc_msgSend_hasAtomStateNotInStateVector_(v74, v75, v68);

        if ((hasAtomStateNotInStateVector & 1) == 0)
        {
          v79 = objc_msgSend_mutableCopy(v68, v77, v78);
          v82 = objc_msgSend_vectors(v66, v80, v81);
          v85 = objc_msgSend_contents(v82, v83, v84);
          v88 = objc_msgSend_clockVector(v85, v86, v87);
          objc_msgSend_intersectVector_(v79, v89, v88);

          v92 = objc_msgSend_mutableCopy(v79, v90, v91);
          v95 = objc_msgSend_vectors(v66, v93, v94);
          v98 = objc_msgSend_contents(v95, v96, v97);
          objc_msgSend_minusStateVector_(v92, v99, v98);

          if (objc_msgSend_timestampCount(v92, v100, v101))
          {
            objc_msgSend_addObject_(v522, v102, v66);
            objc_msgSend_unionStateVector_(v554, v103, v92);
            v106 = objc_msgSend_allSiteIdentifiers(v92, v104, v105);
            objc_msgSend_unionSet_(v536, v107, v106);

            objc_msgSend_setObject_forKey_(v523, v108, v79, v66);
            objc_msgSend_setObject_forKey_(v524, v109, v92, v66);
          }
        }

        objc_autoreleasePoolPop(v67);
      }

      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v110, &v613, v634, 16);
    }

    while (v63);
  }

  v510 = objc_msgSend_count(v522, v111, v112);
  v113 = objc_opt_new();
  if (v510)
  {
    v612 = 0u;
    v611 = 0u;
    v610 = 0u;
    v609 = 0u;
    v511 = v490;
    v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(v511, v114, &v609, v633, 16);
    if (v115)
    {
      v515 = *v610;
      do
      {
        v116 = 0;
        v518 = v115;
        do
        {
          if (*v610 != v515)
          {
            objc_enumerationMutation(v511);
          }

          v531 = v116;
          v117 = *(*(&v609 + 1) + 8 * v116);
          context = objc_autoreleasePoolPush();
          v120 = objc_msgSend_vectors(v117, v118, v119);
          v123 = objc_msgSend_removals(v120, v121, v122);
          v543 = objc_msgSend_mutableCopy(v123, v124, v125);

          objc_msgSend_intersectStateVector_(v543, v126, v554);
          v129 = objc_msgSend_vectors(v117, v127, v128);
          v132 = objc_msgSend_contents(v129, v130, v131);
          v539 = objc_msgSend_mutableCopy(v132, v133, v134);

          objc_msgSend_intersectStateVector_(v539, v135, v554);
          v549 = v543;
          objc_msgSend_unionStateVector_(v549, v136, v539);
          if (objc_msgSend_timestampCount(v549, v137, v138))
          {
            v140 = objc_msgSend_vectorFillingInImplicitClockValuesUsingSiteIdentifiers_(v549, v139, v536);
            v143 = objc_msgSend_allSiteIdentifiers(v140, v141, v142);
            v608 = 0u;
            v607 = 0u;
            v606 = 0u;
            v605 = 0u;
            v144 = v143;
            v147 = objc_msgSend_countByEnumeratingWithState_objects_count_(v144, v145, &v605, v632, 16);
            if (v147)
            {
              v148 = *v606;
              do
              {
                for (j = 0; j != v147; ++j)
                {
                  if (*v606 != v148)
                  {
                    objc_enumerationMutation(v144);
                  }

                  v150 = *(*(&v605 + 1) + 8 * j);
                  v152 = objc_msgSend_objectForKeyedSubscript_(v113, v146, v150);
                  if (!v152)
                  {
                    v152 = objc_opt_new();
                    objc_msgSend_setObject_forKeyedSubscript_(v113, v153, v152, v150);
                  }

                  v154 = objc_msgSend_clockValuesForSiteIdentifier_(v140, v151, v150);
                  objc_msgSend_addIndexes_withObject_(v152, v155, v154, v117);
                }

                v147 = objc_msgSend_countByEnumeratingWithState_objects_count_(v144, v146, &v605, v632, 16);
              }

              while (v147);
            }
          }

          objc_autoreleasePoolPop(context);
          v116 = v531 + 1;
        }

        while ((v531 + 1) != v518);
        v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(v511, v156, &v609, v633, 16);
      }

      while (v115);
    }
  }

  v497 = objc_opt_new();
  if (v510)
  {
    v544 = objc_opt_new();
    v604 = 0u;
    v603 = 0u;
    v602 = 0u;
    v601 = 0u;
    v494 = v522;
    v500 = objc_msgSend_countByEnumeratingWithState_objects_count_(v494, v157, &v601, v631, 16);
    if (v500)
    {
      v498 = *v602;
      do
      {
        for (k = 0; k != v500; ++k)
        {
          if (*v602 != v498)
          {
            objc_enumerationMutation(v494);
          }

          contexta = *(*(&v601 + 1) + 8 * k);
          v502 = objc_autoreleasePoolPush();
          v504 = objc_msgSend_objectForKey_(v523, v158, contexta);
          v519 = objc_msgSend_objectForKey_(v524, v159, contexta);
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          LOBYTE(v618) = 0;
          v162 = objc_msgSend_vectors(contexta, v160, v161);
          v165 = objc_msgSend_dependencies(v162, v163, v164);
          v168 = objc_msgSend_mutableCopy(v165, v166, v167);

          v171 = objc_msgSend_allSiteIdentifiers(v519, v169, v170);
          v600 = 0u;
          v598 = 0u;
          v599 = 0u;
          v597 = 0u;
          v508 = v171;
          v516 = objc_msgSend_countByEnumeratingWithState_objects_count_(v508, v172, &v597, v630, 16);
          if (v516)
          {
            v512 = *v598;
            while (2)
            {
              for (m = 0; m != v516; ++m)
              {
                if (*v598 != v512)
                {
                  objc_enumerationMutation(v508);
                }

                v175 = *(*(&v597 + 1) + 8 * m);
                objc_msgSend_removeAllObjects(v544, v173, v174);
                v177 = objc_msgSend_objectForKeyedSubscript_(v113, v176, v175);
                v590[0] = MEMORY[0x1E69E9820];
                v590[1] = 3221225472;
                v590[2] = sub_18856F064;
                v590[3] = &unk_1E70BDC30;
                v540 = v177;
                v591 = v540;
                v178 = v544;
                v592 = v178;
                v593 = contexta;
                v594 = v554;
                v595 = vectorCopy;
                v596 = buf;
                objc_msgSend_enumerateClockValuesForSiteIdentifier_usingBlock_(v519, v179, v175, v590);
                v532 = *(*&buf[8] + 24);
                if (v532)
                {

                  goto LABEL_76;
                }

                v588 = 0u;
                v589 = 0u;
                v586 = 0u;
                v587 = 0u;
                v180 = v178;
                v184 = objc_msgSend_countByEnumeratingWithState_objects_count_(v180, v181, &v586, v629, 16);
                if (v184)
                {
                  v185 = *v587;
                  do
                  {
                    for (n = 0; n != v184; ++n)
                    {
                      if (*v587 != v185)
                      {
                        objc_enumerationMutation(v180);
                      }

                      v187 = *(*(&v586 + 1) + 8 * n);
                      v188 = objc_msgSend_vectors(v187, v182, v183);
                      v191 = objc_msgSend_contents(v188, v189, v190);
                      v194 = objc_msgSend_clockVector(v191, v192, v193);
                      objc_msgSend_unionVector_(v168, v195, v194);

                      v198 = objc_msgSend_vectors(v187, v196, v197);
                      v201 = objc_msgSend_dependencies(v198, v199, v200);
                      objc_msgSend_unionVector_(v168, v202, v201);
                    }

                    v184 = objc_msgSend_countByEnumeratingWithState_objects_count_(v180, v182, &v586, v629, 16);
                  }

                  while (v184);
                }

                if (v532)
                {
                  goto LABEL_76;
                }
              }

              v516 = objc_msgSend_countByEnumeratingWithState_objects_count_(v508, v173, &v597, v630, 16);
              if (v516)
              {
                continue;
              }

              break;
            }
          }

LABEL_76:

          if ((*(*&buf[8] + 24) & 1) == 0)
          {
            v203 = [CKMergeableDeltaMetadata alloc];
            v541 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v204, v205);
            v551 = objc_msgSend_UUIDString(v541, v206, v207);
            v208 = [CKMergeableDeltaVectors alloc];
            v533 = objc_msgSend_vectors(contexta, v209, v210);
            v213 = objc_msgSend_previous(v533, v211, v212);
            v216 = objc_msgSend_vectors(contexta, v214, v215);
            v219 = objc_msgSend_removals(v216, v217, v218);
            v221 = objc_msgSend_initWithPreviousVector_contentsVector_removalsVector_dependenciesVector_(v208, v220, v213, v504, v219, v168);
            v222 = MEMORY[0x1E695DFD8];
            v225 = objc_msgSend_identifier(contexta, v223, v224);
            v227 = objc_msgSend_setWithObject_(v222, v226, v225);
            v229 = objc_msgSend_initWithIdentifier_vectors_replacedDeltaIdentifiers_(v203, v228, v551, v221, v227);

            v232 = objc_msgSend_identifier(contexta, v230, v231);
            objc_msgSend_setObject_forKeyedSubscript_(v497, v233, v229, v232);
          }

          _Block_object_dispose(buf, 8);
          objc_autoreleasePoolPop(v502);
        }

        v500 = objc_msgSend_countByEnumeratingWithState_objects_count_(v494, v234, &v601, v631, 16);
      }

      while (v500);
    }
  }

  v517 = objc_opt_new();
  if (v488)
  {
    v237 = 0;
    v542 = 0;
    contextb = 0;
  }

  else
  {
    v238 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x1E696AD18], v235, v236);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_18856F2F4;
    aBlock[3] = &unk_1E70BDC58;
    v499 = v238;
    v585 = v499;
    v552 = _Block_copy(aBlock);
    v582 = 0u;
    v583 = 0u;
    v580 = 0u;
    v581 = 0u;
    contextc = obj;
    v240 = objc_msgSend_countByEnumeratingWithState_objects_count_(contextc, v239, &v580, v628, 16);
    if (v240)
    {
      v241 = *v581;
      do
      {
        for (ii = 0; ii != v240; ++ii)
        {
          if (*v581 != v241)
          {
            objc_enumerationMutation(contextc);
          }

          v552[2](v552, *(*(&v580 + 1) + 8 * ii));
        }

        v240 = objc_msgSend_countByEnumeratingWithState_objects_count_(contextc, v243, &v580, v628, 16);
      }

      while (v240);
    }

    v576[0] = MEMORY[0x1E69E9820];
    v576[1] = 3221225472;
    v576[2] = sub_18856F514;
    v576[3] = &unk_1E70BDC80;
    v495 = v499;
    v577 = v495;
    v578 = a2;
    selfCopy = self;
    v534 = _Block_copy(v576);
    v246 = objc_msgSend_allObjects(contextc, v244, v245);
    v503 = objc_msgSend_sortedArrayUsingComparator_(v246, v247, v534);

    v248 = [CKMergeableDeltaMetadata alloc];
    v249 = [CKMergeableDeltaVectors alloc];
    v250 = objc_opt_new();
    v251 = objc_opt_new();
    v252 = objc_opt_new();
    v253 = objc_opt_new();
    v255 = objc_msgSend_initWithPreviousVector_contentsVector_removalsVector_dependenciesVector_(v249, v254, v250, v251, v252, v253);
    v257 = objc_msgSend_initWithVectors_(v248, v256, v255);

    v501 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DF70], v258, v548);

    objc_msgSend_addObjectsFromArray_(v501, v259, v503);
    v574 = 0u;
    v575 = 0u;
    v572 = 0u;
    v573 = 0u;
    v520 = v501;
    v261 = objc_msgSend_countByEnumeratingWithState_objects_count_(v520, v260, &v572, v627, 16);
    if (v261)
    {
      v262 = *v573;
      do
      {
        v263 = 0;
        v264 = v257;
        do
        {
          if (*v573 != v262)
          {
            objc_enumerationMutation(v520);
          }

          v265 = *(*(&v572 + 1) + 8 * v263);
          v266 = objc_autoreleasePoolPush();
          v269 = objc_msgSend_copy(v264, v267, v268);
          v626[0] = v264;
          v626[1] = v265;
          v271 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v270, v626, 2);
          v257 = objc_msgSend_mergeableDeltaMetadataByCombiningMetadatas_(CKMergeableDeltaMetadata, v272, v271);

          isEquivalent = objc_msgSend__isEquivalent_(v257, v273, v269);
          if (v265 == v548)
          {
            v277 = 0;
          }

          else
          {
            v277 = isEquivalent;
          }

          if (v277 == 1)
          {
            v278 = objc_msgSend_identifier(v265, v275, v276);
            objc_msgSend_addObject_(v517, v279, v278);
          }

          objc_autoreleasePoolPop(v266);
          ++v263;
          v264 = v257;
        }

        while (v261 != v263);
        v261 = objc_msgSend_countByEnumeratingWithState_objects_count_(v520, v280, &v572, v627, 16);
      }

      while (v261);
    }

    v281 = objc_opt_new();
    v568[0] = MEMORY[0x1E69E9820];
    v568[1] = 3221225472;
    v568[2] = sub_18856F7D4;
    v568[3] = &unk_1E70BDCA8;
    v282 = v548;
    v569 = v282;
    v505 = v517;
    v570 = v505;
    v509 = v281;
    v571 = v509;
    v507 = _Block_copy(v568);
    v545 = objc_opt_new();
    v566 = 0u;
    v567 = 0u;
    v564 = 0u;
    v565 = 0u;
    v283 = contextc;
    v287 = objc_msgSend_countByEnumeratingWithState_objects_count_(v283, v284, &v564, v625, 16);
    if (v287)
    {
      v288 = *v565;
      do
      {
        for (jj = 0; jj != v287; ++jj)
        {
          if (*v565 != v288)
          {
            objc_enumerationMutation(v283);
          }

          v290 = *(*(&v564 + 1) + 8 * jj);
          v291 = objc_msgSend_identifier(v290, v285, v286);
          objc_msgSend_setObject_forKeyedSubscript_(v545, v292, v290, v291);
        }

        v287 = objc_msgSend_countByEnumeratingWithState_objects_count_(v283, v285, &v564, v625, 16);
      }

      while (v287);
    }

    v295 = objc_msgSend_allObjects(v505, v293, v294);
    objc_msgSend_removeObjectsForKeys_(v545, v296, v295);

    v507[2](v507, v545);
    v299 = objc_msgSend_mutableCopy(v497, v297, v298);

    v546 = v299;
    v302 = objc_msgSend_allObjects(v505, v300, v301);
    objc_msgSend_removeObjectsForKeys_(v546, v303, v302);

    v507[2](v507, v546);
    if (objc_msgSend_count(v509, v304, v305))
    {
      v492 = objc_msgSend_mutableCopy(v509, v306, v307);
      objc_msgSend_addObject_(v492, v308, v282);
      v310 = objc_msgSend_mergeableDeltaMetadataByCombiningMetadatas_(CKMergeableDeltaMetadata, v309, v492);
      (v552)[2](v552, v310);
      v562 = 0u;
      v563 = 0u;
      v560 = 0u;
      v561 = 0u;
      v513 = v509;
      v312 = objc_msgSend_countByEnumeratingWithState_objects_count_(v513, v311, &v560, v624, 16);
      if (v312)
      {
        v542 = 0;
        contextb = 0;
        v313 = *v561;
        do
        {
          v314 = 0;
          do
          {
            if (*v561 != v313)
            {
              objc_enumerationMutation(v513);
            }

            v315 = *(*(&v560 + 1) + 8 * v314);
            if (v534[2](v534, v310, v315) != -1)
            {
              v317 = ck_log_initialization_block;
              if (ck_log_initialization_predicate != -1)
              {
                dispatch_once(&ck_log_initialization_predicate, v317);
              }

              v318 = ck_log_facility_distributed_sync;
              if (os_log_type_enabled(v318, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                *&buf[4] = v310;
                *&buf[12] = 2112;
                *&buf[14] = v315;
                _os_log_fault_impl(&dword_1883EA000, v318, OS_LOG_TYPE_FAULT, "Invariant violation while folding existing deltas into next delta: updated next delta %@ is not strictly greater than existing delta %@", buf, 0x16u);
              }

              v320 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v319, @"CKErrorDomain", 1, @"Invariant violation while folding existing deltas into next delta: updated next delta %@ is not strictly greater than existing delta %@", v310, v315);

              contextb = 1;
              v542 = v320;
            }

            ++v314;
          }

          while (v312 != v314);
          v312 = objc_msgSend_countByEnumeratingWithState_objects_count_(v513, v316, &v560, v624, 16);
        }

        while (v312);
      }

      else
      {
        v542 = 0;
        contextb = 0;
      }
    }

    else
    {
      v542 = 0;
      contextb = 0;
      v310 = objc_msgSend_copy(v282, v306, v307);
    }

    objc_msgSend_setReplacedDeltaIdentifiers_(v310, v321, v505);

    v237 = v310;
  }

  objc_msgSend_setReplacementDeltaMetadatas_(v537, v235, v497);
  if (objc_msgSend_count(v517, v326, v327))
  {
    objc_msgSend_setRemovableDeltaMetadatas_(v537, v328, v517);
    objc_msgSend_setUpdatedNextDeltaMetadata_(v537, v330, v237);
  }

  v331 = objc_msgSend_replacementDeltaMetadatas(v537, v328, v329);
  v521 = v237;
  if (objc_msgSend_count(v331, v332, v333))
  {
  }

  else
  {
    v338 = objc_msgSend_removableDeltaMetadatas(v537, v334, v335);
    v341 = objc_msgSend_count(v338, v339, v340) == 0;

    if (v341)
    {
      goto LABEL_181;
    }
  }

  v342 = objc_msgSend_mutableCopy(obj, v336, v337);
  v344 = v342;
  if ((v488 & 1) == 0)
  {
    objc_msgSend_addObject_(v342, v343, v548);
  }

  v553 = objc_opt_new();
  v558 = 0u;
  v559 = 0u;
  v556 = 0u;
  v557 = 0u;
  v345 = v344;
  v349 = objc_msgSend_countByEnumeratingWithState_objects_count_(v345, v346, &v556, v623, 16);
  if (v349)
  {
    v350 = *v557;
    do
    {
      for (kk = 0; kk != v349; ++kk)
      {
        if (*v557 != v350)
        {
          objc_enumerationMutation(v345);
        }

        v352 = *(*(&v556 + 1) + 8 * kk);
        if (v352 == v548)
        {
          v362 = objc_msgSend_updatedNextDeltaMetadata(v537, v347, v348);
          v363 = v362;
          if (v362)
          {
            v364 = v362;
          }

          else
          {
            v364 = v352;
          }

          v361 = v364;
        }

        else
        {
          v353 = objc_msgSend_removableDeltaMetadatas(v537, v347, v348);
          v356 = objc_msgSend_identifier(v352, v354, v355);
          v358 = objc_msgSend_containsObject_(v353, v357, v356);

          if (v358)
          {
            v361 = 0;
            goto LABEL_154;
          }

          v363 = objc_msgSend_replacementDeltaMetadatas(v537, v359, v360);
          v367 = objc_msgSend_identifier(v352, v365, v366);
          v369 = objc_msgSend_objectForKeyedSubscript_(v363, v368, v367);
          v370 = v369;
          if (v369)
          {
            v371 = v369;
          }

          else
          {
            v371 = v352;
          }

          v361 = v371;
        }

        if (v361)
        {
          objc_msgSend_addObject_(v553, v372, v361);
        }

LABEL_154:
      }

      v349 = objc_msgSend_countByEnumeratingWithState_objects_count_(v345, v347, &v556, v623, 16);
    }

    while (v349);
  }

  v375 = objc_msgSend_allObjects(v345, v373, v374);
  v547 = objc_msgSend_mergeableDeltaMetadataByCombiningMetadatas_(CKMergeableDeltaMetadata, v376, v375);

  v379 = objc_msgSend_allObjects(v553, v377, v378);
  v535 = objc_msgSend_mergeableDeltaMetadataByCombiningMetadatas_(CKMergeableDeltaMetadata, v380, v379);

  v383 = objc_msgSend_vectors(v547, v381, v382);
  v386 = objc_msgSend_contents(v383, v384, v385);
  v389 = objc_msgSend_vectors(v535, v387, v388);
  v392 = objc_msgSend_contents(v389, v390, v391);
  LODWORD(v379) = objc_msgSend_isEqual_(v386, v393, v392);

  v396 = objc_msgSend_vectors(v547, v394, v395);
  v399 = objc_msgSend_removals(v396, v397, v398);
  v402 = objc_msgSend_vectors(v535, v400, v401);
  v405 = objc_msgSend_removals(v402, v403, v404);
  LODWORD(v389) = objc_msgSend_isEqual_(v399, v406, v405);

  v407 = objc_opt_new();
  v409 = objc_msgSend_deliverableDeltaMetadatasInDeltaSet_withMergeableValueCurrentStateVector_deliveryRequirements_(CKMergeableDeltaMetadata, v408, v553, v407, requirementsCopy);
  isEqual = objc_msgSend_isEqual_(v409, v410, v553);

  if ((v379 & v389) != 1 || !v553)
  {
    v411 = ck_log_initialization_block;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, v411);
    }

    v412 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(v412, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v548;
      _os_log_impl(&dword_1883EA000, v412, OS_LOG_TYPE_INFO, "Invariant violation debug: next delta is %@", buf, 0xCu);
    }

    v413 = ck_log_initialization_block;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, v413);
    }

    v414 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(v414, OS_LOG_TYPE_INFO))
    {
      v417 = objc_msgSend_updatedNextDeltaMetadata(v537, v415, v416);
      *buf = 138412290;
      *&buf[4] = v417;
      _os_log_impl(&dword_1883EA000, v414, OS_LOG_TYPE_INFO, "Invariant violation debug: updated next delta is %@", buf, 0xCu);
    }

    v418 = ck_log_initialization_block;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, v418);
    }

    v419 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(v419, OS_LOG_TYPE_INFO))
    {
      v422 = objc_msgSend_replacementDeltaMetadatas(v537, v420, v421);
      *buf = 138412290;
      *&buf[4] = v422;
      _os_log_impl(&dword_1883EA000, v419, OS_LOG_TYPE_INFO, "Invariant violation debug: replaced deltas are %@", buf, 0xCu);
    }

    v423 = ck_log_initialization_block;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, v423);
    }

    v424 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(v424, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = obj;
      _os_log_impl(&dword_1883EA000, v424, OS_LOG_TYPE_INFO, "Invariant violation debug: deliverable server deltas are %@", buf, 0xCu);
    }

    v425 = ck_log_initialization_block;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, v425);
    }

    v426 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(v426, OS_LOG_TYPE_FAULT))
    {
      v461 = objc_msgSend_vectors(v547, v427, v428);
      contexte = objc_msgSend_contents(v461, v462, v463);
      v466 = objc_msgSend_vectors(v535, v464, v465);
      v469 = objc_msgSend_contents(v466, v467, v468);
      v472 = objc_msgSend_vectors(v547, v470, v471);
      v475 = objc_msgSend_removals(v472, v473, v474);
      v478 = objc_msgSend_vectors(v535, v476, v477);
      v481 = objc_msgSend_removals(v478, v479, v480);
      v482 = v481;
      v483 = @"not ";
      if (isEqual)
      {
        v483 = &stru_1EFA32970;
      }

      *buf = 138413314;
      *&buf[4] = contexte;
      *&buf[12] = 2112;
      *&buf[14] = v469;
      *&buf[22] = 2112;
      v618 = v475;
      v619 = 2112;
      v620 = v481;
      v621 = 2112;
      v622 = v483;
      _os_log_fault_impl(&dword_1883EA000, v426, OS_LOG_TYPE_FAULT, "Invariant violation while calculating replacement deltas: contents vector %@ vs. %@, removals vector %@ vs. %@, %@deliverable", buf, 0x34u);
    }

    v431 = objc_msgSend_vectors(v547, v429, v430);
    contextd = objc_msgSend_contents(v431, v432, v433);
    v436 = objc_msgSend_vectors(v535, v434, v435);
    v439 = objc_msgSend_contents(v436, v437, v438);
    v442 = objc_msgSend_vectors(v547, v440, v441);
    v445 = objc_msgSend_removals(v442, v443, v444);
    v448 = objc_msgSend_vectors(v535, v446, v447);
    v451 = objc_msgSend_removals(v448, v449, v450);
    v453 = v451;
    v454 = @"not ";
    if (isEqual)
    {
      v454 = &stru_1EFA32970;
    }

    v455 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v452, @"CKErrorDomain", 1, @"Invariant violation while calculating replacement deltas: contents vector %@ vs. %@, removals vector %@ vs. %@, %@deliverable", contextd, v439, v445, v451, v454);

    contextb = 1;
    v542 = v455;
  }

LABEL_181:
  objc_autoreleasePoolPop(v487);
  if (contextb)
  {
    if (error)
    {
      v456 = v542;
      *error = v542;
    }

    v457 = objc_opt_new();

    v458 = v457;
  }

  else
  {
    v458 = v537;
  }

  v459 = v458;

  return v459;
}

+ (id)deliverableDeltaMetadatasInDeltaSet:(id)set withMergeableValueCurrentStateVector:(id)vector deliveryRequirements:(unint64_t)requirements
{
  v359 = *MEMORY[0x1E69E9840];
  setCopy = set;
  vectorCopy = vector;
  v268 = objc_autoreleasePoolPush();
  v269 = setCopy;
  requirementsCopy = requirements;
  if (requirements)
  {
    v289 = objc_opt_new();
    v297 = objc_opt_new();
    v296 = objc_opt_new();
    v283 = objc_opt_new();
    v347 = 0u;
    v348 = 0u;
    v345 = 0u;
    v346 = 0u;
    v8 = setCopy;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v345, v358, 16);
    if (v10)
    {
      v11 = *v346;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v346 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v345 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          v17 = objc_msgSend_vectors(v13, v15, v16);
          v20 = objc_msgSend_previous(v17, v18, v19);
          v23 = objc_msgSend_allSiteIdentifiers(v20, v21, v22);
          objc_msgSend_unionSet_(v283, v24, v23);

          v27 = objc_msgSend_vectors(v13, v25, v26);
          v30 = objc_msgSend_contents(v27, v28, v29);
          v33 = objc_msgSend_allSiteIdentifiers(v30, v31, v32);
          objc_msgSend_unionSet_(v283, v34, v33);

          v37 = objc_msgSend_vectors(v13, v35, v36);
          v40 = objc_msgSend_removals(v37, v38, v39);
          v43 = objc_msgSend_allSiteIdentifiers(v40, v41, v42);
          objc_msgSend_unionSet_(v283, v44, v43);

          v47 = objc_msgSend_vectors(v13, v45, v46);
          v50 = objc_msgSend_dependencies(v47, v48, v49);
          v53 = objc_msgSend_allSiteIdentifiers(v50, v51, v52);
          objc_msgSend_unionSet_(v283, v54, v53);

          objc_autoreleasePoolPop(v14);
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v55, &v345, v358, 16);
      }

      while (v10);
    }

    v58 = objc_msgSend_allSiteIdentifiers(vectorCopy, v56, v57);
    objc_msgSend_unionSet_(v283, v59, v58);

    v281 = objc_opt_new();
    v295 = objc_opt_new();
    v299 = objc_opt_new();
    v298 = objc_opt_new();
    v343 = 0u;
    v344 = 0u;
    v341 = 0u;
    v342 = 0u;
    obj = v8;
    v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v60, &v341, v357, 16);
    if (v61)
    {
      v62 = *v342;
      do
      {
        for (j = 0; j != v61; ++j)
        {
          if (*v342 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v64 = *(*(&v341 + 1) + 8 * j);
          v65 = objc_autoreleasePoolPush();
          v68 = objc_msgSend_vectors(v64, v66, v67);
          v71 = objc_msgSend_contents(v68, v69, v70);
          v73 = objc_msgSend_vectorFillingInImplicitClockValuesUsingSiteIdentifiers_(v71, v72, v283);

          v76 = objc_msgSend_vectors(v64, v74, v75);
          v79 = objc_msgSend_previous(v76, v77, v78);
          v81 = objc_msgSend_vectorFillingInImplicitClockValuesUsingSiteIdentifiers_(v79, v80, v283);

          v84 = objc_msgSend_vectors(v64, v82, v83);
          v87 = objc_msgSend_dependencies(v84, v85, v86);
          v89 = objc_msgSend_vectorFillingInImplicitClockValuesUsingSiteIdentifiers_(v87, v88, v283);

          objc_msgSend_addAllClockValuesFromVector_(v281, v90, v73);
          v93 = objc_msgSend_identifier(v64, v91, v92);
          objc_msgSend_setObject_forKeyedSubscript_(v295, v94, v73, v93);

          if (requirementsCopy)
          {
            v97 = objc_msgSend_identifier(v64, v95, v96);
            objc_msgSend_setObject_forKeyedSubscript_(v299, v98, v81, v97);
          }

          if (requirementsCopy != 1)
          {
            v99 = objc_msgSend_identifier(v64, v95, v96);
            objc_msgSend_setObject_forKeyedSubscript_(v298, v100, v89, v99);
          }

          objc_autoreleasePoolPop(v65);
        }

        v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v101, &v341, v357, 16);
      }

      while (v61);
    }

    v103 = objc_msgSend_vectorFillingInImplicitClockValuesUsingSiteIdentifiers_(vectorCopy, v102, v283);
    objc_msgSend_addAllClockValuesFromVector_(v281, v104, v103);

    v339 = 0u;
    v340 = 0u;
    v337 = 0u;
    v338 = 0u;
    v275 = obj;
    v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v275, v105, &v337, v356, 16);
    if (v106)
    {
      v271 = *v338;
      do
      {
        v107 = 0;
        v273 = v106;
        do
        {
          if (*v338 != v271)
          {
            objc_enumerationMutation(v275);
          }

          v278 = v107;
          v108 = *(*(&v337 + 1) + 8 * v107);
          context = objc_autoreleasePoolPush();
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          obja = v283;
          v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v109, &v333, v355, 16);
          if (v111)
          {
            v291 = *v334;
            do
            {
              for (k = 0; k != v111; ++k)
              {
                if (*v334 != v291)
                {
                  objc_enumerationMutation(obja);
                }

                v113 = *(*(&v333 + 1) + 8 * k);
                v115 = objc_msgSend_objectForKeyedSubscript_(v297, v110, v113);
                if (!v115)
                {
                  v115 = objc_opt_new();
                  objc_msgSend_setObject_forKeyedSubscript_(v297, v116, v115, v113);
                }

                v119 = objc_msgSend_objectForKeyedSubscript_(v296, v114, v113);
                if (!v119)
                {
                  v119 = objc_opt_new();
                  objc_msgSend_setObject_forKeyedSubscript_(v296, v120, v119, v113);
                }

                v121 = objc_msgSend_identifier(v108, v117, v118);
                v123 = objc_msgSend_objectForKeyedSubscript_(v295, v122, v121);

                v126 = objc_msgSend_identifier(v108, v124, v125);
                v128 = objc_msgSend_objectForKeyedSubscript_(v299, v127, v126);

                v131 = objc_msgSend_identifier(v108, v129, v130);
                v133 = objc_msgSend_objectForKeyedSubscript_(v298, v132, v131);

                v135 = objc_msgSend_clockValuesForSiteIdentifier_(v123, v134, v113);
                objc_msgSend_addIndexes_withObject_(v115, v136, v135, v108);

                v138 = objc_msgSend_clockValuesForSiteIdentifier_(v128, v137, v113);
                objc_msgSend_addIndexes_withObject_(v119, v139, v138, v108);

                v141 = objc_msgSend_clockValuesForSiteIdentifier_(v133, v140, v113);
                objc_msgSend_addIndexes_withObject_(v119, v142, v141, v108);
              }

              v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v110, &v333, v355, 16);
            }

            while (v111);
          }

          objc_autoreleasePoolPop(context);
          v107 = v278 + 1;
        }

        while (v278 + 1 != v273);
        v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v275, v143, &v337, v356, 16);
      }

      while (v106);
    }

    v331 = 0u;
    v332 = 0u;
    v329 = 0u;
    v330 = 0u;
    v270 = v283;
    v145 = objc_msgSend_countByEnumeratingWithState_objects_count_(v270, v144, &v329, v354, 16);
    if (v145)
    {
      v272 = *v330;
      do
      {
        v146 = 0;
        v274 = v145;
        do
        {
          if (*v330 != v272)
          {
            objc_enumerationMutation(v270);
          }

          v279 = v146;
          v147 = *(*(&v329 + 1) + 8 * v146);
          contexta = objc_autoreleasePoolPush();
          v292 = objc_msgSend_clockValuesForSiteIdentifier_(v281, v148, v147);
          v327 = 0u;
          v328 = 0u;
          v325 = 0u;
          v326 = 0u;
          objb = v275;
          v152 = objc_msgSend_countByEnumeratingWithState_objects_count_(objb, v149, &v325, v353, 16);
          if (v152)
          {
            v153 = *v326;
            do
            {
              for (m = 0; m != v152; ++m)
              {
                if (*v326 != v153)
                {
                  objc_enumerationMutation(objb);
                }

                v155 = *(*(&v325 + 1) + 8 * m);
                v156 = objc_msgSend_identifier(v155, v150, v151);
                v158 = objc_msgSend_objectForKeyedSubscript_(v299, v157, v156);

                v161 = objc_msgSend_identifier(v155, v159, v160);
                v163 = objc_msgSend_objectForKeyedSubscript_(v298, v162, v161);

                v165 = objc_msgSend_clockValuesForSiteIdentifier_(v158, v164, v147);
                if ((objc_msgSend_containsIndexes_(v292, v166, v165) & 1) == 0)
                {

LABEL_52:
                  objc_msgSend_addObject_(v289, v171, v155);
                  goto LABEL_53;
                }

                v168 = objc_msgSend_clockValuesForSiteIdentifier_(v163, v167, v147);
                v170 = objc_msgSend_containsIndexes_(v292, v169, v168);

                if ((v170 & 1) == 0)
                {
                  goto LABEL_52;
                }

LABEL_53:
              }

              v152 = objc_msgSend_countByEnumeratingWithState_objects_count_(objb, v150, &v325, v353, 16);
            }

            while (v152);
          }

          objc_autoreleasePoolPop(contexta);
          v146 = v279 + 1;
        }

        while (v279 + 1 != v274);
        v145 = objc_msgSend_countByEnumeratingWithState_objects_count_(v270, v172, &v329, v354, 16);
      }

      while (v145);
    }

    for (objc = 0; objc < objc_msgSend_count(v289, v173, v174); ++objc)
    {
      v280 = objc_autoreleasePoolPush();
      v178 = objc_msgSend_objectAtIndexedSubscript_(v289, v177, objc);
      v323 = 0u;
      v324 = 0u;
      v321 = 0u;
      v322 = 0u;
      v293 = v270;
      v181 = objc_msgSend_countByEnumeratingWithState_objects_count_(v293, v179, &v321, v352, 16);
      if (v181)
      {
        v182 = *v322;
        do
        {
          for (n = 0; n != v181; ++n)
          {
            if (*v322 != v182)
            {
              objc_enumerationMutation(v293);
            }

            v184 = *(*(&v321 + 1) + 8 * n);
            v185 = objc_msgSend_objectForKeyedSubscript_(v297, v180, v184);
            v187 = objc_msgSend_objectForKeyedSubscript_(v296, v186, v184);
            v190 = objc_msgSend_identifier(v178, v188, v189);
            v192 = objc_msgSend_objectForKeyedSubscript_(v295, v191, v190);

            v194 = objc_msgSend_clockValuesForSiteIdentifier_(v192, v193, v184);
            v312[0] = MEMORY[0x1E69E9820];
            v312[1] = 3221225472;
            v312[2] = sub_188570EAC;
            v312[3] = &unk_1E70BDCF8;
            v313 = v289;
            v314 = v298;
            v315 = v299;
            v316 = v184;
            v317 = vectorCopy;
            v195 = v194;
            v318 = v195;
            v196 = v185;
            v319 = v196;
            v320 = v295;
            objc_msgSend_enumerateObjectsForIndexes_usingBlock_(v187, v197, v195, v312);
          }

          v181 = objc_msgSend_countByEnumeratingWithState_objects_count_(v293, v180, &v321, v352, 16);
        }

        while (v181);
      }

      objc_autoreleasePoolPop(v280);
    }

    objd = objc_msgSend_mutableCopy(v275, v175, v176);
    v201 = objc_msgSend_set(v289, v199, v200);
    objc_msgSend_minusSet_(objd, v202, v201);

    v205 = objc_msgSend_mutableCopy(vectorCopy, v203, v204);
    v310 = 0u;
    v311 = 0u;
    v308 = 0u;
    v309 = 0u;
    v206 = objd;
    v208 = objc_msgSend_countByEnumeratingWithState_objects_count_(v206, v207, &v308, v351, 16);
    if (v208)
    {
      v209 = *v309;
      do
      {
        for (ii = 0; ii != v208; ++ii)
        {
          if (*v309 != v209)
          {
            objc_enumerationMutation(v206);
          }

          v211 = *(*(&v308 + 1) + 8 * ii);
          v212 = objc_autoreleasePoolPush();
          v215 = objc_msgSend_vectors(v211, v213, v214);
          v218 = objc_msgSend_contents(v215, v216, v217);
          objc_msgSend_unionStateVector_(v205, v219, v218);

          objc_autoreleasePoolPop(v212);
        }

        v208 = objc_msgSend_countByEnumeratingWithState_objects_count_(v206, v220, &v308, v351, 16);
      }

      while (v208);
    }

    v306 = 0u;
    v307 = 0u;
    v304 = 0u;
    v305 = 0u;
    v294 = v206;
    v222 = objc_msgSend_countByEnumeratingWithState_objects_count_(v294, v221, &v304, v350, 16);
    if (v222)
    {
      v223 = *v305;
      do
      {
        for (jj = 0; jj != v222; ++jj)
        {
          if (*v305 != v223)
          {
            objc_enumerationMutation(v294);
          }

          v225 = *(*(&v304 + 1) + 8 * jj);
          v226 = objc_autoreleasePoolPush();
          v229 = objc_msgSend_vectors(v225, v227, v228);
          v232 = objc_msgSend_removals(v229, v230, v231);
          v235 = objc_msgSend_timestampCount(v232, v233, v234) == 0;

          if (!v235)
          {
            v238 = objc_msgSend_vectors(v225, v236, v237);
            v241 = objc_msgSend_removals(v238, v239, v240);
            v244 = objc_msgSend_mutableCopy(v241, v242, v243);

            v247 = objc_msgSend_clockVector(v205, v245, v246);
            objc_msgSend_intersectVector_(v244, v248, v247);

            objc_msgSend_unionStateVector_(v205, v249, v244);
          }

          objc_autoreleasePoolPop(v226);
        }

        v222 = objc_msgSend_countByEnumeratingWithState_objects_count_(v294, v250, &v304, v350, 16);
      }

      while (v222);
    }

    v302 = 0u;
    v303 = 0u;
    v300 = 0u;
    v301 = 0u;
    v251 = v289;
    v253 = objc_msgSend_countByEnumeratingWithState_objects_count_(v251, v252, &v300, v349, 16);
    if (v253)
    {
      v254 = *v301;
      do
      {
        for (kk = 0; kk != v253; ++kk)
        {
          if (*v301 != v254)
          {
            objc_enumerationMutation(v251);
          }

          v256 = *(*(&v300 + 1) + 8 * kk);
          v257 = objc_autoreleasePoolPush();
          v260 = objc_msgSend_vectors(v256, v258, v259);
          v263 = objc_msgSend_contents(v260, v261, v262);
          hasAtomStateNotInStateVector = objc_msgSend_hasAtomStateNotInStateVector_(v263, v264, v205);

          if ((hasAtomStateNotInStateVector & 1) == 0)
          {
            objc_msgSend_addObject_(v294, v266, v256);
          }

          objc_autoreleasePoolPop(v257);
        }

        v253 = objc_msgSend_countByEnumeratingWithState_objects_count_(v251, v267, &v300, v349, 16);
      }

      while (v253);
    }
  }

  else
  {
    v294 = setCopy;
  }

  objc_autoreleasePoolPop(v268);

  return v294;
}

@end
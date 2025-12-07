@interface CKDistributedTimestampStateVector
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setBackingState:(id)state;
- (void)addClockValuesInIndexSet:(id)set withClockType:(unsigned __int8)type atomState:(unsigned __int8)state forSiteIdentifier:(id)identifier;
- (void)intersectStateVector:(id)vector;
- (void)intersectVector:(id)vector;
- (void)minusStateVector:(id)vector;
- (void)minusVector:(id)vector;
- (void)unionStateVector:(id)vector;
@end

@implementation CKDistributedTimestampStateVector

- (void)_setBackingState:(id)state
{
  v5 = objc_msgSend_mutableCopy(state, a2, state);
  objc_msgSend___setBackingStateNoCopy_(self, v4, v5);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v7 = objc_msgSend_backingVector(self, v5, v6);
  objc_msgSend__setBackingState_(v4, v8, v7);

  return v4;
}

- (void)intersectVector:(id)vector
{
  vectorCopy = vector;
  v6 = objc_msgSend_backingVector(self, v4, v5);
  v9 = objc_msgSend_backingVector(vectorCopy, v7, v8);
  v12 = objc_msgSend_vectorExpansionState(self, v10, v11);
  objc_msgSend_clockVector_intersectVector_withExpansionState_(v6, v13, v9, v12);
}

- (void)minusVector:(id)vector
{
  vectorCopy = vector;
  v6 = objc_msgSend_backingVector(self, v4, v5);
  v9 = objc_msgSend_backingVector(vectorCopy, v7, v8);
  v12 = objc_msgSend_vectorExpansionState(self, v10, v11);
  objc_msgSend_clockVector_minusVector_withExpansionState_(v6, v13, v9, v12);
}

- (void)unionStateVector:(id)vector
{
  v85 = *MEMORY[0x1E69E9840];
  vectorCopy = vector;
  v77 = objc_msgSend_backingVector(self, v5, v6);
  objc_sync_enter(v77);
  obj = objc_msgSend_backingVector(vectorCopy, v7, v8);
  objc_sync_enter(obj);
  v11 = objc_msgSend_backingVector(self, v9, v10);
  v14 = objc_msgSend_backingVector(vectorCopy, v12, v13);
  objc_msgSend_clockVector_checkInvariantsAgainstVector_(v11, v15, v14);

  v16 = objc_opt_new();
  v79 = objc_opt_new();
  v19 = objc_msgSend_backingVector(self, v17, v18);
  v22 = objc_msgSend_mutableAttributeToSparseVector(v19, v20, v21);
  v25 = objc_msgSend_allKeys(v22, v23, v24);
  objc_msgSend_addObjectsFromArray_(v79, v26, v25);

  v29 = objc_msgSend_backingVector(vectorCopy, v27, v28);
  v32 = objc_msgSend_mutableAttributeToSparseVector(v29, v30, v31);
  v35 = objc_msgSend_allKeys(v32, v33, v34);
  objc_msgSend_addObjectsFromArray_(v79, v36, v35);

  v39 = objc_msgSend_allObjects(v79, v37, v38);
  v42 = objc_msgSend_mutableCopy(v39, v40, v41);

  objc_msgSend_sortUsingComparator_(v42, v43, &unk_1EFA2EB68);
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v44 = v42;
  v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v80, v84, 16);
  if (v48)
  {
    v49 = *v81;
    do
    {
      v50 = 0;
      do
      {
        if (*v81 != v49)
        {
          objc_enumerationMutation(v44);
        }

        v51 = *(*(&v80 + 1) + 8 * v50);
        v52 = objc_msgSend_backingVector(self, v46, v47, v77);
        v55 = objc_msgSend_shortValue(v51, v53, v54);
        v57 = objc_msgSend_vectorFilteredByAttribute_(v52, v56, v55);

        v60 = objc_msgSend_backingVector(vectorCopy, v58, v59);
        v63 = objc_msgSend_shortValue(v51, v61, v62);
        v65 = objc_msgSend_vectorFilteredByAttribute_(v60, v64, v63);

        objc_msgSend_addAllClockValuesFromVector_(v16, v66, v57);
        objc_msgSend_addAllClockValuesFromVector_(v16, v67, v65);

        ++v50;
      }

      while (v48 != v50);
      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v46, &v80, v84, 16);
    }

    while (v48);
  }

  v70 = objc_msgSend_backingVector(self, v68, v69);
  objc_msgSend__swapContentsWithVector_(v70, v71, v16);

  objc_sync_exit(obj);
  v74 = objc_msgSend_backingVector(self, v72, v73);
  objc_msgSend_clockVector_maintainInvariants(v74, v75, v76);

  objc_sync_exit(v77);
}

- (void)minusStateVector:(id)vector
{
  v90 = *MEMORY[0x1E69E9840];
  vectorCopy = vector;
  v80 = objc_msgSend_backingVector(self, v4, v5);
  objc_sync_enter(v80);
  obj = objc_msgSend_backingVector(vectorCopy, v6, v7);
  objc_sync_enter(obj);
  v10 = objc_msgSend_backingVector(self, v8, v9);
  v13 = objc_msgSend_backingVector(vectorCopy, v11, v12);
  objc_msgSend_clockVector_checkInvariantsAgainstVector_(v10, v14, v13);

  v17 = objc_msgSend_backingVector(vectorCopy, v15, v16);
  v20 = objc_msgSend_allSiteIdentifiers(self, v18, v19);
  v23 = objc_msgSend_vectorExpansionState(self, v21, v22);
  v25 = objc_msgSend_clockVector_vectorFillingInImplicitClockValuesUsingSiteIdentifiers_withExpansionState_(v17, v24, v20, v23);

  v84 = objc_opt_new();
  v28 = objc_msgSend_backingVector(self, v26, v27);
  v31 = objc_msgSend_mutableAttributeToSparseVector(v28, v29, v30);
  v34 = objc_msgSend_allKeys(v31, v32, v33);
  objc_msgSend_addObjectsFromArray_(v84, v35, v34);

  v38 = objc_msgSend_mutableAttributeToSparseVector(v25, v36, v37);
  v41 = objc_msgSend_allKeys(v38, v39, v40);
  objc_msgSend_addObjectsFromArray_(v84, v42, v41);

  v45 = objc_msgSend_allObjects(v84, v43, v44);
  v48 = objc_msgSend_mutableCopy(v45, v46, v47);

  v82 = v48;
  objc_msgSend_sortUsingComparator_(v48, v49, &unk_1EFA2EB88);
  v50 = objc_opt_new();
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v53 = objc_msgSend_reverseObjectEnumerator(v48, v51, v52);
  v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, &v85, v89, 16);
  if (v57)
  {
    v58 = *v86;
    do
    {
      for (i = 0; i != v57; ++i)
      {
        if (*v86 != v58)
        {
          objc_enumerationMutation(v53);
        }

        v60 = *(*(&v85 + 1) + 8 * i);
        v61 = objc_msgSend_shortValue(v60, v55, v56);
        v63 = objc_msgSend_vectorFilteredByAttribute_(v25, v62, v61);
        v66 = objc_msgSend_vectorWithoutAttributes(v63, v64, v65);
        objc_msgSend_unionVector_(v50, v67, v66);

        v70 = objc_msgSend_backingVector(self, v68, v69);
        v73 = objc_msgSend_shortValue(v60, v71, v72);
        objc_msgSend_minusVector_forAttribute_(v70, v74, v50, v73);
      }

      v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v55, &v85, v89, 16);
    }

    while (v57);
  }

  objc_sync_exit(obj);
  v77 = objc_msgSend_backingVector(self, v75, v76);
  objc_msgSend_clockVector_maintainInvariants(v77, v78, v79);

  objc_sync_exit(v80);
}

- (void)intersectStateVector:(id)vector
{
  vectorCopy = vector;
  v6 = objc_msgSend_backingVector(self, v4, v5);
  objc_sync_enter(v6);
  v9 = objc_msgSend_backingVector(vectorCopy, v7, v8);
  objc_sync_enter(v9);
  v12 = objc_msgSend_backingVector(self, v10, v11);
  v15 = objc_msgSend_backingVector(vectorCopy, v13, v14);
  objc_msgSend_clockVector_checkInvariantsAgainstVector_(v12, v16, v15);

  v19 = objc_msgSend_backingVector(self, v17, v18);
  v22 = objc_msgSend_allSiteIdentifiers(vectorCopy, v20, v21);
  v25 = objc_msgSend_vectorExpansionState(self, v23, v24);
  v27 = objc_msgSend_clockVector_vectorFillingInImplicitClockValuesUsingSiteIdentifiers_withExpansionState_(v19, v26, v22, v25);
  v30 = objc_msgSend_mutableCopy(v27, v28, v29);

  v33 = objc_msgSend_backingVector(vectorCopy, v31, v32);
  v36 = objc_msgSend_allSiteIdentifiers(self, v34, v35);
  v39 = objc_msgSend_vectorExpansionState(self, v37, v38);
  v41 = objc_msgSend_clockVector_vectorFillingInImplicitClockValuesUsingSiteIdentifiers_withExpansionState_(v33, v40, v36, v39);

  objc_msgSend_intersectAttributedVector_(v30, v42, v41);
  v45 = objc_msgSend_backingVector(self, v43, v44);
  objc_msgSend__swapContentsWithVector_(v45, v46, v30);

  objc_sync_exit(v9);
  v49 = objc_msgSend_backingVector(self, v47, v48);
  objc_msgSend_clockVector_maintainInvariants(v49, v50, v51);

  objc_sync_exit(v6);
}

- (void)addClockValuesInIndexSet:(id)set withClockType:(unsigned __int8)type atomState:(unsigned __int8)state forSiteIdentifier:(id)identifier
{
  stateCopy = state;
  typeCopy = type;
  setCopy = set;
  identifierCopy = identifier;
  v13 = objc_msgSend_backingVector(self, v11, v12);
  objc_msgSend_clockVector_checkInvariantsAgainstClockValues_withSiteIdentifier_ofType_(v13, v14, setCopy, identifierCopy, typeCopy);

  v17 = objc_msgSend_backingVector(self, v15, v16);
  objc_msgSend_addClockValuesInIndexSet_withAttribute_forSiteIdentifier_(v17, v18, setCopy, __rev16(typeCopy | (stateCopy << 8)), identifierCopy);

  v21 = objc_msgSend_backingVector(self, v19, v20);
  objc_msgSend_clockVector_maintainInvariants(v21, v22, v23);
}

@end
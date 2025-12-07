@interface CKDistributedTimestampClockVector
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setBackingState:(id)state;
- (void)addClockValuesInIndexSet:(id)set withClockType:(unsigned __int8)type forSiteIdentifier:(id)identifier;
- (void)intersectVector:(id)vector;
- (void)minusVector:(id)vector;
- (void)unionVector:(id)vector;
@end

@implementation CKDistributedTimestampClockVector

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

- (void)unionVector:(id)vector
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
  v22 = objc_msgSend_backingVector(vectorCopy, v20, v21);
  objc_msgSend_addAllClockValuesFromVector_(v19, v23, v22);

  objc_sync_exit(v9);
  v26 = objc_msgSend_backingVector(self, v24, v25);
  objc_msgSend_clockVector_maintainInvariants(v26, v27, v28);

  objc_sync_exit(v6);
}

- (void)addClockValuesInIndexSet:(id)set withClockType:(unsigned __int8)type forSiteIdentifier:(id)identifier
{
  typeCopy = type;
  setCopy = set;
  identifierCopy = identifier;
  v11 = objc_msgSend_backingVector(self, v9, v10);
  objc_sync_enter(v11);
  v14 = objc_msgSend_backingVector(self, v12, v13);
  objc_msgSend_clockVector_checkInvariantsAgainstClockValues_withSiteIdentifier_ofType_(v14, v15, setCopy, identifierCopy, typeCopy);

  v18 = objc_msgSend_backingVector(self, v16, v17);
  objc_msgSend_addClockValuesInIndexSet_withAttribute_forSiteIdentifier_(v18, v19, setCopy, (typeCopy << 8), identifierCopy);

  v22 = objc_msgSend_backingVector(self, v20, v21);
  objc_msgSend_clockVector_maintainInvariants(v22, v23, v24);

  objc_sync_exit(v11);
}

@end
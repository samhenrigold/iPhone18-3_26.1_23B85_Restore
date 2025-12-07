@interface TSTRangeRefPair
- (RefTypeHolder<TSCERangeRef,)baseRangeRef;
- (RefTypeHolder<TSCERangeRef,)chromeRangeRef;
- (TSKUIDStruct)tableUID;
- (TSTRangeRefPair)initWithBaseTractRef:(id)ref calcEngine:(id)engine;
- (TSTRangeRefPair)initWithChromeTractRef:(id)ref calcEngine:(id)engine;
@end

@implementation TSTRangeRefPair

- (TSTRangeRefPair)initWithChromeTractRef:(id)ref calcEngine:(id)engine
{
  refCopy = ref;
  engineCopy = engine;
  v40.receiver = self;
  v40.super_class = TSTRangeRefPair;
  v12 = [(TSTRangeRefPair *)&v40 init];
  if (v12)
  {
    v13 = objc_msgSend_tableUID(refCopy, v9, v10, v11);
    v15 = objc_msgSend_resolverForTableUID_(engineCopy, v14, v13, v14);
    tableModel = v12->_tableModel;
    v12->_tableModel = v15;

    v20 = objc_msgSend_tableInfo(v12->_tableModel, v17, v18, v19);
    tableInfo = v12->_tableInfo;
    v12->_tableInfo = v20;

    objc_storeStrong(&v12->_chromeTractRef, ref);
    v25 = v12->_tableInfo;
    if (v25)
    {
      v26 = objc_msgSend_translator(v25, v22, v23, v24);
      v29 = objc_msgSend_viewTractRefForChromeTractRef_(v26, v27, refCopy, v28);

      v33 = objc_msgSend_translator(v12->_tableInfo, v30, v31, v32);
      v36 = objc_msgSend_baseTractRefForViewTractRef_(v33, v34, v29, v35);
      baseTractRef = v12->_baseTractRef;
      v12->_baseTractRef = v36;
    }

    else
    {
      v38 = objc_msgSend_copy(refCopy, v22, v23, v24);
      v29 = v12->_baseTractRef;
      v12->_baseTractRef = v38;
    }
  }

  return v12;
}

- (TSTRangeRefPair)initWithBaseTractRef:(id)ref calcEngine:(id)engine
{
  refCopy = ref;
  engineCopy = engine;
  v40.receiver = self;
  v40.super_class = TSTRangeRefPair;
  v12 = [(TSTRangeRefPair *)&v40 init];
  if (v12)
  {
    v13 = objc_msgSend_tableUID(refCopy, v9, v10, v11);
    v15 = objc_msgSend_resolverForTableUID_(engineCopy, v14, v13, v14);
    tableModel = v12->_tableModel;
    v12->_tableModel = v15;

    v20 = objc_msgSend_tableInfo(v12->_tableModel, v17, v18, v19);
    tableInfo = v12->_tableInfo;
    v12->_tableInfo = v20;

    v25 = v12->_tableInfo;
    if (v25)
    {
      v26 = objc_msgSend_translator(v25, v22, v23, v24);
      v29 = objc_msgSend_viewTractRefForBaseTractRef_(v26, v27, refCopy, v28);

      v33 = objc_msgSend_translator(v12->_tableInfo, v30, v31, v32);
      v36 = objc_msgSend_chromeTractRefForViewTractRef_(v33, v34, v29, v35);
      chromeTractRef = v12->_chromeTractRef;
      v12->_chromeTractRef = v36;
    }

    else
    {
      v38 = objc_msgSend_copy(refCopy, v22, v23, v24);
      v29 = v12->_chromeTractRef;
      v12->_chromeTractRef = v38;
    }

    objc_storeStrong(&v12->_baseTractRef, ref);
  }

  return v12;
}

- (RefTypeHolder<TSCERangeRef,)chromeRangeRef
{
  result = self->_chromeTractRef;
  if (result)
  {
    result = objc_msgSend_boundingRangeRef(result, a3, v3, v4);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v7 = v9;
  retstr->var0.range = v8;
  retstr->var0._tableUID = v7;
  return result;
}

- (RefTypeHolder<TSCERangeRef,)baseRangeRef
{
  result = self->_baseTractRef;
  if (result)
  {
    result = objc_msgSend_boundingRangeRef(result, a3, v3, v4);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v7 = v9;
  retstr->var0.range = v8;
  retstr->var0._tableUID = v7;
  return result;
}

- (TSKUIDStruct)tableUID
{
  v4 = objc_msgSend_tableUID(self->_baseTractRef, a2, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

@end
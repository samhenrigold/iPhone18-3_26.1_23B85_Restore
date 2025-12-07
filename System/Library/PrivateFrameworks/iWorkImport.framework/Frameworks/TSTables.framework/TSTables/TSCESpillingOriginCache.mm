@interface TSCESpillingOriginCache
- (TSCECalculationEngine)calcEngine;
- (TSCESpillingOriginCache)initWithCalcEngine:(id)engine;
- (TSUCellRect)spillRangeForSpillingOriginCellRef:(const TSCECellRef *)ref outError:(id *)error;
- (id).cxx_construct;
- (void)clearCache;
- (void)replaceSpillError:(id)error forSpillingOriginCellRef:(const TSCECellRef *)ref;
@end

@implementation TSCESpillingOriginCache

- (TSCESpillingOriginCache)initWithCalcEngine:(id)engine
{
  engineCopy = engine;
  v8.receiver = self;
  v8.super_class = TSCESpillingOriginCache;
  v5 = [(TSCESpillingOriginCache *)&v8 init];
  v6 = v5;
  if (v5)
  {
    pthread_rwlock_init(&v5->_rwLock, 0);
    objc_storeWeak(&v6->_calcEngine, engineCopy);
  }

  return v6;
}

- (void)clearCache
{
  pthread_rwlock_wrlock(&self->_rwLock);
  sub_221159728(&self->_cache);

  pthread_rwlock_unlock(&self->_rwLock);
}

- (TSUCellRect)spillRangeForSpillingOriginCellRef:(const TSCECellRef *)ref outError:(id *)error
{
  pthread_rwlock_rdlock(&self->_rwLock);
  v7 = sub_221244B44(&self->_cache.__table_.__bucket_list_.__ptr_, ref);
  if (v7)
  {
    v8 = v7[5];
    coordinate = objc_msgSend_spillRange(v8, v9, v10, v11);
    v14 = v13;
    v17 = objc_msgSend_error(v8, v13, v15, v16);
  }

  else
  {
    pthread_rwlock_unlock(&self->_rwLock);
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    v17 = objc_msgSend_errorForCell_(WeakRetained, v19, ref, v20);

    v21 = objc_loadWeakRetained(&self->_calcEngine);
    v14 = objc_msgSend_spillSizeForCell_(v21, v22, ref, v23);

    coordinate = ref->coordinate;
    v8 = objc_alloc_init(TSCESpillingOriginCacheEntry);
    objc_msgSend_setSpillRange_(v8, v24, coordinate, v14);
    objc_msgSend_setError_(v8, v25, v17, v26);
    pthread_rwlock_wrlock(&self->_rwLock);
    refCopy = ref;
    v27 = sub_2215A80D4(&self->_cache.__table_.__bucket_list_.__ptr_, ref, &unk_2217F3082, &refCopy);
    objc_storeStrong(v27 + 5, v8);
  }

  pthread_rwlock_unlock(&self->_rwLock);
  v28 = v17;
  *error = v17;

  v29 = coordinate;
  v30 = v14;
  result.size = v30;
  result.origin = v29;
  return result;
}

- (void)replaceSpillError:(id)error forSpillingOriginCellRef:(const TSCECellRef *)ref
{
  errorCopy = error;
  pthread_rwlock_wrlock(&self->_rwLock);
  v6 = sub_221244B44(&self->_cache.__table_.__bucket_list_.__ptr_, ref);
  if (v6)
  {
    objc_msgSend_setError_(v6[5], v7, errorCopy, v8);
  }

  pthread_rwlock_unlock(&self->_rwLock);
}

- (TSCECalculationEngine)calcEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  *(self + 60) = 1065353216;
  return self;
}

@end
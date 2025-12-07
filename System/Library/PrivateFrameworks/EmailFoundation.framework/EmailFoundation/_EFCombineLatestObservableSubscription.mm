@interface _EFCombineLatestObservableSubscription
- (_EFCombineLatestObservableSubscription)initWithObservables:(id)observables;
- (id)subscribe:(id)subscribe;
- (void)_observableAtIndex:(unint64_t)index didCompleteForObserver:(id)observer;
- (void)_observableAtIndex:(unint64_t)index didFailWithError:(id)error observer:(id)observer;
- (void)_observableAtIndex:(unint64_t)index receivedResult:(id)result observer:(id)observer;
@end

@implementation _EFCombineLatestObservableSubscription

- (_EFCombineLatestObservableSubscription)initWithObservables:(id)observables
{
  observablesCopy = observables;
  v21.receiver = self;
  v21.super_class = _EFCombineLatestObservableSubscription;
  v5 = [(_EFCombineLatestObservableSubscription *)&v21 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v5->_lock;
    v5->_lock = v6;

    v8 = [observablesCopy ef_map:&__block_literal_global_5];
    observables = v5->_observables;
    v5->_observables = v8;

    v10 = [observablesCopy ef_map:&__block_literal_global_10];
    v11 = [v10 mutableCopy];
    results = v5->_results;
    v5->_results = v11;

    v13 = [observablesCopy ef_map:&__block_literal_global_13];
    v14 = [v13 mutableCopy];
    tokens = v5->_tokens;
    v5->_tokens = v14;

    v16 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, objc_msgSend(observablesCopy, "count")}];
    activeIndexes = v5->_activeIndexes;
    v5->_activeIndexes = v16;

    v18 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, objc_msgSend(observablesCopy, "count")}];
    silentIndexes = v5->_silentIndexes;
    v5->_silentIndexes = v18;
  }

  return v5;
}

- (id)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = objc_alloc_init(EFManualCancelationToken);
  observables = [(_EFCombineLatestObservableSubscription *)self observables];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52___EFCombineLatestObservableSubscription_subscribe___block_invoke;
  v12[3] = &unk_1E82484B8;
  v7 = v5;
  v13 = v7;
  selfCopy = self;
  v8 = subscribeCopy;
  v15 = v8;
  [observables enumerateObjectsUsingBlock:v12];

  v9 = v15;
  v10 = v7;

  return v7;
}

- (void)_observableAtIndex:(unint64_t)index receivedResult:(id)result observer:(id)observer
{
  v20 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  observerCopy = observer;
  v10 = _ef_log_EFObservable(observerCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 134218498;
    selfCopy = self;
    v16 = 2048;
    indexCopy = index;
    v18 = 2112;
    v19 = resultCopy;
    _os_log_debug_impl(&dword_1C6152000, v10, OS_LOG_TYPE_DEBUG, "[%p] Result for index %lu: %@", &v14, 0x20u);
  }

  [(NSLock *)self->_lock lock];
  [(NSMutableArray *)self->_results replaceObjectAtIndex:index withObject:resultCopy];
  [(NSMutableIndexSet *)self->_silentIndexes removeIndex:index];
  v11 = [(NSMutableIndexSet *)self->_silentIndexes count];
  if (v11)
  {
    v12 = _ef_log_EFObservable(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [_EFCombineLatestObservableSubscription _observableAtIndex:&self->_silentIndexes receivedResult:v12 observer:?];
    }

    v13 = 0;
  }

  else
  {
    v13 = [(NSMutableArray *)self->_results copy];
  }

  [(NSLock *)self->_lock unlock];
  if (v13)
  {
    [observerCopy observerDidReceiveResult:v13];
  }
}

- (void)_observableAtIndex:(unint64_t)index didCompleteForObserver:(id)observer
{
  observerCopy = observer;
  [(NSLock *)self->_lock lock];
  tokens = self->_tokens;
  null = [MEMORY[0x1E695DFB0] null];
  [(NSMutableArray *)tokens replaceObjectAtIndex:index withObject:null];

  [(NSMutableIndexSet *)self->_activeIndexes removeIndex:index];
  v8 = [(NSMutableIndexSet *)self->_activeIndexes count];
  [(NSLock *)self->_lock unlock];
  if (!v8)
  {
    [observerCopy observerDidComplete];
  }
}

- (void)_observableAtIndex:(unint64_t)index didFailWithError:(id)error observer:(id)observer
{
  errorCopy = error;
  observerCopy = observer;
  [(NSLock *)self->_lock lock];
  v9 = [(NSMutableIndexSet *)self->_activeIndexes mutableCopy];
  [v9 removeIndex:index];
  v10 = [(NSMutableArray *)self->_tokens objectsAtIndexes:v9];
  [v10 makeObjectsPerformSelector:sel_cancel];
  [(NSLock *)self->_lock unlock];
  [observerCopy observerDidFailWithError:errorCopy];
}

- (void)_observableAtIndex:(uint64_t)a1 receivedResult:(uint64_t *)a2 observer:(os_log_t)log .cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 134218242;
  v5 = a1;
  v6 = 2114;
  v7 = v3;
  _os_log_debug_impl(&dword_1C6152000, log, OS_LOG_TYPE_DEBUG, "[%p] Remaining silent indexes: %{public}@", &v4, 0x16u);
}

@end
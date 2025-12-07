@interface CRKClassKitPersonIDObservation
- (CRKClassKitPersonIDObservation)initWithPersonIDs:(id)ds classKitFacade:(id)facade block:(id)block;
- (void)cancel;
- (void)dealloc;
@end

@implementation CRKClassKitPersonIDObservation

- (void)dealloc
{
  [(CRKClassKitPersonIDObservation *)self cancel];
  v3.receiver = self;
  v3.super_class = CRKClassKitPersonIDObservation;
  [(CRKClassKitPersonIDObservation *)&v3 dealloc];
}

- (CRKClassKitPersonIDObservation)initWithPersonIDs:(id)ds classKitFacade:(id)facade block:(id)block
{
  dsCopy = ds;
  facadeCopy = facade;
  blockCopy = block;
  v20.receiver = self;
  v20.super_class = CRKClassKitPersonIDObservation;
  v11 = [(CRKClassKitPersonIDObservation *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_classKitFacade, facade);
    v13 = [(CRKClassKitFacade *)v12->_classKitFacade personObserverWithPersonIDs:dsCopy sortDescriptors:0];
    dataObserver = v12->_dataObserver;
    v12->_dataObserver = v13;

    if (v12->_dataObserver)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __73__CRKClassKitPersonIDObservation_initWithPersonIDs_classKitFacade_block___block_invoke;
      v18[3] = &unk_278DC1CA0;
      v19 = blockCopy;
      [(CRKClassKitDataObserver *)v12->_dataObserver setDataChanged:v18];
      [(CRKClassKitFacade *)v12->_classKitFacade registerDataObserver:v12->_dataObserver];
      v16 = v19;
    }

    else
    {
      v16 = _CRKLogASM_7(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CRKClassKitPersonIDObservation initWithPersonIDs:v16 classKitFacade:? block:?];
      }
    }
  }

  return v12;
}

void __73__CRKClassKitPersonIDObservation_initWithPersonIDs_classKitFacade_block___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__CRKClassKitPersonIDObservation_initWithPersonIDs_classKitFacade_block___block_invoke_2;
  block[3] = &unk_278DC1C78;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __73__CRKClassKitPersonIDObservation_initWithPersonIDs_classKitFacade_block___block_invoke_2(uint64_t a1)
{
  v2 = _CRKLogASM_7(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_243550000, v2, OS_LOG_TYPE_DEFAULT, "ClassKit person data observer fired", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)cancel
{
  dataObserver = [(CRKClassKitPersonIDObservation *)self dataObserver];

  if (dataObserver)
  {
    classKitFacade = [(CRKClassKitPersonIDObservation *)self classKitFacade];
    dataObserver2 = [(CRKClassKitPersonIDObservation *)self dataObserver];
    [classKitFacade deregisterDataObserver:dataObserver2];
  }
}

@end
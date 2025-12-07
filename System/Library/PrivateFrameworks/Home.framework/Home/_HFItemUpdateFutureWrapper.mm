@interface _HFItemUpdateFutureWrapper
+ (id)wrapperWithFuture:(id)future item:(id)item isInternal:(BOOL)internal;
@end

@implementation _HFItemUpdateFutureWrapper

+ (id)wrapperWithFuture:(id)future item:(id)item isInternal:(BOOL)internal
{
  internalCopy = internal;
  futureCopy = future;
  itemCopy = item;
  v9 = objc_alloc_init(objc_opt_class());
  [v9 setFuture:futureCopy];
  [v9 setItem:itemCopy];
  [v9 setIsInternal:internalCopy];
  objc_initWeak(&location, v9);
  future = [v9 future];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64___HFItemUpdateFutureWrapper_wrapperWithFuture_item_isInternal___block_invoke;
  v13[3] = &unk_277DFB768;
  objc_copyWeak(&v14, &location);
  v11 = [future addSuccessBlock:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v9;
}

@end
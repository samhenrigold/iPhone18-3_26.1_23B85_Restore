@interface MAAIRBMobileAssetAtomicInstance
- (MAAIRBMobileAssetAtomicInstance)init;
- (MAAIRBMobileAssetAtomicInstance)initWithAssetSet:(id)set atomicInstanceId:(id)id;
@end

@implementation MAAIRBMobileAssetAtomicInstance

- (MAAIRBMobileAssetAtomicInstance)initWithAssetSet:(id)set atomicInstanceId:(id)id
{
  if (id)
  {
    v5 = sub_303948();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  setCopy = set;
  v9 = sub_252810(setCopy, v5, v7);

  return v9;
}

- (MAAIRBMobileAssetAtomicInstance)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
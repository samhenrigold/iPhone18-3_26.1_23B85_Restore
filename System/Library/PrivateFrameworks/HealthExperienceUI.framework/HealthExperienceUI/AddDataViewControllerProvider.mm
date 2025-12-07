@interface AddDataViewControllerProvider
- (id)addDataViewControllerForDisplayType:(id)type;
@end

@implementation AddDataViewControllerProvider

- (id)addDataViewControllerForDisplayType:(id)type
{
  v5 = sub_1BA4A1728();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *self->healthStore;
  v11 = objc_opt_self();
  typeCopy = type;

  sharedInstanceForHealthStore_ = [v11 sharedInstanceForHealthStore_];
  sub_1BA4A1718();
  v14 = sub_1BA4A16B8();
  (*(v6 + 8))(v9, v5);
  v15 = [typeCopy wd:v10 addDataViewControllerWithHealthStore:sharedInstanceForHealthStore_ healthToolBox:v14 initialStartDate:?];

  return v15;
}

@end
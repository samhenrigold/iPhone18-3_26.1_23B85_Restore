@interface HFHomeDashboardReorderableItemList
- (HFHomeDashboardReorderableItemList)initWithApplicationDataContainer:(id)container category:(id)category;
@end

@implementation HFHomeDashboardReorderableItemList

- (HFHomeDashboardReorderableItemList)initWithApplicationDataContainer:(id)container category:(id)category
{
  v4 = sub_20DD64EB4();
  v6 = v5;
  v7 = swift_unknownObjectRetain();
  return HomeDashboardReorderableItemList.init(applicationDataContainer:category:)(v7, v4, v6);
}

@end
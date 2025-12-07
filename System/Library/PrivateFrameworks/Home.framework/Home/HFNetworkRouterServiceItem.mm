@interface HFNetworkRouterServiceItem
+ (NSSet)supportedServiceTypes;
- (HFNetworkRouterServiceItem)initWithValueSource:(id)source service:(id)service;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFNetworkRouterServiceItem

+ (NSSet)supportedServiceTypes
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD94280;
  *(inited + 32) = sub_20DD64EB4();
  *(inited + 40) = v3;
  *(inited + 48) = sub_20DD64EB4();
  *(inited + 56) = v4;
  sub_20D9EE93C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v5 = sub_20DD651C4();

  return v5;
}

- (id)_subclass_updateWithOptions:(id)options
{
  if (options)
  {
    v4 = sub_20DD64DC4();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  v6 = HFNetworkRouterServiceItem._subclass_update(options:)(v4);

  return v6;
}

- (HFNetworkRouterServiceItem)initWithValueSource:(id)source service:(id)service
{
  v5.receiver = self;
  v5.super_class = HFNetworkRouterServiceItem;
  return [(HFServiceItem *)&v5 initWithValueSource:source service:service];
}

@end
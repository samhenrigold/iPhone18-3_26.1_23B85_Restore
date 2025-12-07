@interface HKUserDomainConceptNamedQuantity(HDSyncSupport)
+ (id)createWithCodable:()HDSyncSupport;
- (HDCodableUserDomainConceptNamedQuantity)codableRepresentationForSync;
@end

@implementation HKUserDomainConceptNamedQuantity(HDSyncSupport)

- (HDCodableUserDomainConceptNamedQuantity)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableUserDomainConceptNamedQuantity);
  name = [self name];
  [(HDCodableUserDomainConceptNamedQuantity *)v2 setName:name];

  quantity = [self quantity];
  [quantity _value];
  [(HDCodableUserDomainConceptNamedQuantity *)v2 setValue:?];

  quantity2 = [self quantity];
  _unit = [quantity2 _unit];
  unitString = [_unit unitString];
  [(HDCodableUserDomainConceptNamedQuantity *)v2 setUnit:unitString];

  -[HDCodableUserDomainConceptNamedQuantity setType:](v2, "setType:", [self type]);
  -[HDCodableUserDomainConceptNamedQuantity setVersion:](v2, "setVersion:", [self version]);
  [self timestamp];
  [(HDCodableUserDomainConceptNamedQuantity *)v2 setTimestamp:?];
  -[HDCodableUserDomainConceptNamedQuantity setDeleted:](v2, "setDeleted:", [self isDeleted]);

  return v2;
}

+ (id)createWithCodable:()HDSyncSupport
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    name = [v3 name];
    [v3 value];
    v6 = v5;
    unit = [v3 unit];
    if (unit)
    {
      type = [v3 type];
      version = [v3 version];
      [v3 timestamp];
      v11 = v10;
      deleted = [v3 deleted];
      v13 = [objc_alloc(MEMORY[0x277CCDB18]) initWithName:name value:unit unitString:type type:version version:deleted timestamp:v6 deleted:v11];
    }

    else
    {
      _HKInitializeLogging();
      v14 = HKLogHealthOntology();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);

      if (v15)
      {
        v16 = HKLogHealthOntology();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v18 = 138543874;
          v19 = objc_opt_class();
          v20 = 2048;
          v21 = v6;
          v22 = 2114;
          v23 = 0;
          _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_INFO, "Decoded invalid %{public}@ with value = %f, unitString = %{public}@", &v18, 0x20u);
        }
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end
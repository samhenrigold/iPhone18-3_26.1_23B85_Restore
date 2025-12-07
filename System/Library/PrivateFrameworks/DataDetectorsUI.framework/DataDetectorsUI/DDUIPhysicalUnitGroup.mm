@interface DDUIPhysicalUnitGroup
- (DDUIPhysicalUnitGroup)initWithName:(id)name units:(id)units restricted:(BOOL)restricted symbol:(id)symbol;
- (id)symbolNameForValue:(double)value unit:(id)unit;
@end

@implementation DDUIPhysicalUnitGroup

- (DDUIPhysicalUnitGroup)initWithName:(id)name units:(id)units restricted:(BOOL)restricted symbol:(id)symbol
{
  v28 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  unitsCopy = units;
  symbolCopy = symbol;
  v26.receiver = self;
  v26.super_class = DDUIPhysicalUnitGroup;
  v14 = [(DDUIPhysicalUnitGroup *)&v26 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, name);
    objc_storeStrong(&v15->_units, units);
    v15->_restrictedLinkification = restricted;
    objc_storeStrong(&v15->_symbol, symbol);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v16 = unitsCopy;
    v17 = [v16 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      do
      {
        v20 = 0;
        do
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v22 + 1) + 8 * v20++) setGroup:{v15, v22}];
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v18);
    }
  }

  return v15;
}

- (id)symbolNameForValue:(double)value unit:(id)unit
{
  unitCopy = unit;
  p_isa = self->_symbol;
  group = [unitCopy group];
  if (group != self)
  {
    goto LABEL_2;
  }

  v10 = [(NSString *)p_isa isEqualToString:@"thermometer"];

  if (v10)
  {
    v11 = [DDUIPhysicalUnit unitWithIdentifier:@"celsius"];
    group = v11;
    if (v11)
    {
      [(DDUIPhysicalUnitGroup *)v11 valueFrom:unitCopy unit:value];
      if (v12 <= 0.0)
      {
        v13 = @"thermometer.snowflake";
        goto LABEL_12;
      }

      if (v12 >= 30.0)
      {
        v13 = @"thermometer.sun";
LABEL_12:

        p_isa = &v13->isa;
      }
    }

LABEL_2:
  }

  return p_isa;
}

@end
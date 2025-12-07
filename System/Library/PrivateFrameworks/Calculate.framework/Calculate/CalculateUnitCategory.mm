@interface CalculateUnitCategory
+ (id)categoryWithTypeInfo:(id)info unitsInfo:(id)unitsInfo collection:(id)collection;
- (BOOL)contains:(id)contains;
- (CalculateUnit)preferredFromUnit;
- (CalculateUnit)preferredToUnit;
- (CalculateUnitCategory)initWithTypeInfo:(id)info unitsInfo:(id)unitsInfo collection:(id)collection;
- (CalculateUnitCollection)collection;
- (NSString)displayName;
- (NSString)name;
- (id)findUnitWithName:(id)name;
- (id)findUnitsWithQuery:(id)query;
- (id)locale;
- (id)preferredUnits;
- (unint64_t)unitType;
- (void)_findPreferredSIUnit:(id *)unit metric:(id *)metric US:(id *)s UK:(id *)k;
@end

@implementation CalculateUnitCategory

- (CalculateUnitCollection)collection
{
  WeakRetained = objc_loadWeakRetained(&self->_collection);

  return WeakRetained;
}

- (CalculateUnitCategory)initWithTypeInfo:(id)info unitsInfo:(id)unitsInfo collection:(id)collection
{
  v28 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  unitsInfoCopy = unitsInfo;
  collectionCopy = collection;
  v26.receiver = self;
  v26.super_class = CalculateUnitCategory;
  v11 = [(CalculateUnitCategory *)&v26 init];
  v12 = v11;
  if (v11)
  {
    v21 = collectionCopy;
    [(CalculateUnitCategory *)v11 setCollection:collectionCopy];
    [(CalculateUnitCategory *)v12 setTypeInfo:infoCopy];
    v13 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    units = [infoCopy units];
    v15 = [units countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        v18 = 0;
        do
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(units);
          }

          v19 = +[CalculateUnit unitWithID:unitsInfo:exponent:](CalculateUnit, "unitWithID:unitsInfo:exponent:", [*(*(&v22 + 1) + 8 * v18) unitID], unitsInfoCopy, 1);
          [v19 setCategory:v12];
          [v13 addObject:v19];

          ++v18;
        }

        while (v16 != v18);
        v16 = [units countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v16);
    }

    [(CalculateUnitCategory *)v12 setUnits:v13];
    collectionCopy = v21;
  }

  return v12;
}

- (id)findUnitsWithQuery:(id)query
{
  v18 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  units = [(CalculateUnitCategory *)self units];
  v7 = [units countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(units);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 contains:queryCopy])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [units countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)findUnitWithName:(id)name
{
  v18 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  units = [(CalculateUnitCategory *)self units];
  v6 = [units countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(units);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:nameCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [units countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)contains:(id)contains
{
  containsCopy = contains;
  if ([containsCopy length])
  {
    decomposedStringWithCanonicalMapping = [containsCopy decomposedStringWithCanonicalMapping];

    displayName = [(CalculateUnitCategory *)self displayName];
    v7 = [displayName rangeOfString:decomposedStringWithCanonicalMapping options:129] != 0x7FFFFFFFFFFFFFFFLL;

    containsCopy = decomposedStringWithCanonicalMapping;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (CalculateUnit)preferredToUnit
{
  preferredUnits = [(CalculateUnitCategory *)self preferredUnits];
  v3 = [preferredUnits objectAtIndexedSubscript:1];

  return v3;
}

- (CalculateUnit)preferredFromUnit
{
  preferredUnits = [(CalculateUnitCategory *)self preferredUnits];
  v3 = [preferredUnits objectAtIndexedSubscript:0];

  return v3;
}

- (id)preferredUnits
{
  v44 = *MEMORY[0x1E69E9840];
  locale = [(CalculateUnitCategory *)self locale];
  v4 = [locale objectForKey:*MEMORY[0x1E695D9B8]];
  v5 = objc_opt_new();
  if ([(CalculateUnitCategory *)self unitType]!= 16)
  {
    v37 = 0;
    v38 = 0;
    v35 = 0;
    v36 = 0;
    [(CalculateUnitCategory *)self _findPreferredSIUnit:&v38 metric:&v37 US:&v36 UK:&v35];
    currencyCode = v38;
    v23 = v37;
    v24 = v36;
    v10 = v35;
    if (currencyCode)
    {
      [v5 addObject:currencyCode];
    }

    if ([v4 isEqualToString:*MEMORY[0x1E695D9C8]])
    {
      if (v10)
      {
        [v5 addObject:v10];
      }

      if (v23)
      {
        [v5 addObject:v23];
      }

      v26 = v24;
      if (!v24)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E695D9C0]])
    {
      if (v23)
      {
        [v5 addObject:v23];
      }

      if (v24)
      {
        v27 = v5;
        v28 = v24;
LABEL_46:
        [v27 addObject:v28];
      }
    }

    else
    {
      if (v24)
      {
        [v5 addObject:v24];
      }

      if (v23)
      {
        v27 = v5;
        v28 = v23;
        goto LABEL_46;
      }
    }

    v26 = v10;
    if (!v10)
    {
      goto LABEL_50;
    }

LABEL_48:
    v25 = v5;
    goto LABEL_49;
  }

  currencyCode = [locale currencyCode];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  units = [(CalculateUnitCategory *)self units];
  v8 = [units countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v8)
  {

    [v4 isEqualToString:*MEMORY[0x1E695D9D0]];
    v10 = 0;
    v24 = 0;
    v23 = 0;
    goto LABEL_50;
  }

  v9 = v8;
  v30 = v4;
  v31 = v5;
  v32 = locale;
  v33 = 0;
  v34 = 0;
  v10 = 0;
  v11 = *v40;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v40 != v11)
      {
        objc_enumerationMutation(units);
      }

      v13 = *(*(&v39 + 1) + 8 * i);
      if (currencyCode && ([*(*(&v39 + 1) + 8 * i) name], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", currencyCode), v14, (v15 & 1) != 0))
      {
        v16 = v33;
        v17 = v10;
        v33 = v13;
      }

      else
      {
        name = [v13 name];
        v19 = [name isEqualToString:@"EUR"];

        if (v19)
        {
          v16 = v34;
          v34 = v13;
          v17 = v10;
        }

        else
        {
          name2 = [v13 name];
          v21 = [name2 isEqualToString:@"USD"];

          v16 = v10;
          v17 = v13;
          if (!v21)
          {
            continue;
          }
        }
      }

      v22 = v13;

      v10 = v17;
    }

    v9 = [units countByEnumeratingWithState:&v39 objects:v43 count:16];
  }

  while (v9);

  v5 = v31;
  v23 = v33;
  if (v33)
  {
    [v31 addObject:v33];
  }

  v4 = v30;
  locale = v32;
  v24 = v34;
  if (([v30 isEqualToString:*MEMORY[0x1E695D9D0]] & 1) == 0)
  {
    if (v34)
    {
      [v31 addObject:v34];
    }

    if (!v10)
    {
      goto LABEL_50;
    }

    v25 = v31;
    v26 = v10;
LABEL_49:
    [v25 addObject:v26];
    goto LABEL_50;
  }

  if (v10)
  {
    [v31 addObject:v10];
  }

  if (v34)
  {
    v25 = v31;
    v26 = v34;
    goto LABEL_49;
  }

LABEL_50:

  return v5;
}

- (void)_findPreferredSIUnit:(id *)unit metric:(id *)metric US:(id *)s UK:(id *)k
{
  v41 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  units = [(CalculateUnitCategory *)self units];
  v10 = [units countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v36;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(units);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        if ([v15 isPreferredUnit])
        {
          unitInfo = [v15 unitInfo];
          measurementSystem = [unitInfo measurementSystem];

          if (!measurementSystem)
          {
            ++v12;
          }
        }
      }

      v11 = [units countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v11);
    v18 = v12 > 1;
  }

  else
  {
    v18 = 0;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  units2 = [(CalculateUnitCategory *)self units];
  v20 = [units2 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v32;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(units2);
        }

        v24 = *(*(&v31 + 1) + 8 * j);
        if ([v24 isPreferredUnit])
        {
          if (v18)
          {
            metricCopy2 = metric;
            if (![v24 isBaseUnit])
            {
              goto LABEL_28;
            }
          }

          unitInfo2 = [v24 unitInfo];
          measurementSystem2 = [unitInfo2 measurementSystem];

          if (measurementSystem2 > 1)
          {
            metricCopy2 = s;
            if (measurementSystem2 != 2)
            {
              if (measurementSystem2 != 3)
              {
                continue;
              }

              metricCopy2 = k;
            }

LABEL_28:
            v28 = v24;
            *metricCopy2 = v24;
            continue;
          }

          metricCopy2 = unit;
          if (!measurementSystem2)
          {
            goto LABEL_28;
          }

          metricCopy2 = metric;
          if (measurementSystem2 == 1)
          {
            goto LABEL_28;
          }
        }
      }

      v21 = [units2 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v21);
  }
}

- (NSString)displayName
{
  name = [(CalculateUnitCategory *)self name];
  locale = [(CalculateUnitCategory *)self locale];
  v5 = [Localize localizationForLocale:locale];
  v6 = [Localize localizedStringForKey:name value:0 table:@"Localizable" localization:v5];

  return v6;
}

- (id)locale
{
  collection = [(CalculateUnitCategory *)self collection];
  locales = [collection locales];
  firstObject = [locales firstObject];
  v5 = firstObject;
  if (firstObject)
  {
    v6 = firstObject;
  }

  else
  {
    v6 = +[Localize systemLocale];
  }

  v7 = v6;

  return v7;
}

- (NSString)name
{
  typeInfo = [(CalculateUnitCategory *)self typeInfo];
  name = [typeInfo name];

  return name;
}

- (unint64_t)unitType
{
  name = [(CalculateUnitCategory *)self name];
  v3 = [&unk_1F419A730 objectForKeyedSubscript:name];
  intValue = [v3 intValue];

  return intValue;
}

+ (id)categoryWithTypeInfo:(id)info unitsInfo:(id)unitsInfo collection:(id)collection
{
  collectionCopy = collection;
  unitsInfoCopy = unitsInfo;
  infoCopy = info;
  v10 = [[CalculateUnitCategory alloc] initWithTypeInfo:infoCopy unitsInfo:unitsInfoCopy collection:collectionCopy];

  return v10;
}

@end
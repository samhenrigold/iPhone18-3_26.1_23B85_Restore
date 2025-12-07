@interface NSDictionary
- (id)fp_jsonRepresentation;
- (id)fp_mergeAuxDatum:(id)datum withDatum:(id)withDatum forceAggregate:(BOOL)aggregate;
- (id)fp_mergeWithData:(id)data forceAggregate:(BOOL)aggregate;
@end

@implementation NSDictionary

- (id)fp_mergeAuxDatum:(id)datum withDatum:(id)withDatum forceAggregate:(BOOL)aggregate
{
  aggregateCopy = aggregate;
  datumCopy = datum;
  withDatumCopy = withDatum;
  if (withDatumCopy)
  {
    fp_isContainer = [datumCopy fp_isContainer];
    if (fp_isContainer != [withDatumCopy fp_isContainer])
    {
      __assert_rtn("[NSDictionary(FPAuxData) fp_mergeAuxDatum:withDatum:forceAggregate:]", "FPAuxData.m", 18, "!datum2 || datum1.fp_isContainer == datum2.fp_isContainer");
    }
  }

  if ([datumCopy fp_isContainer])
  {
    v10 = [datumCopy fp_mergeWithData:withDatumCopy forceAggregate:aggregateCopy];
LABEL_10:
    v11 = v10;
    goto LABEL_11;
  }

  if (aggregateCopy || [datumCopy shouldAggregate])
  {
    if (withDatumCopy)
    {
      v10 = -[FPAuxData initWithValue:shouldAggregate:]([FPAuxData alloc], "initWithValue:shouldAggregate:", [datumCopy value] + objc_msgSend(withDatumCopy, "value"), objc_msgSend(datumCopy, "shouldAggregate"));
    }

    else
    {
      v10 = datumCopy;
    }

    goto LABEL_10;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)fp_mergeWithData:(id)data forceAggregate:(BOOL)aggregate
{
  aggregateCopy = aggregate;
  dataCopy = data;
  if (dataCopy || !aggregateCopy)
  {
    v7 = +[NSMutableDictionary dictionary];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    selfCopy = self;
    v9 = [(NSDictionary *)selfCopy countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v33;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(selfCopy);
          }

          v13 = *(*(&v32 + 1) + 8 * i);
          v14 = [(NSDictionary *)selfCopy objectForKeyedSubscript:v13];
          v15 = [dataCopy objectForKeyedSubscript:v13];
          v16 = [(NSDictionary *)selfCopy fp_mergeAuxDatum:v14 withDatum:v15 forceAggregate:aggregateCopy];
          [v7 setObject:v16 forKeyedSubscript:v13];
        }

        v10 = [(NSDictionary *)selfCopy countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v10);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = dataCopy;
    v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v28 + 1) + 8 * j);
          v23 = [(NSDictionary *)selfCopy objectForKeyedSubscript:v22];

          if (!v23)
          {
            v24 = [v17 objectForKeyedSubscript:v22];
            v25 = [(NSDictionary *)selfCopy fp_mergeAuxDatum:v24 withDatum:0 forceAggregate:aggregateCopy];
            [v7 setObject:v25 forKeyedSubscript:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v19);
    }

    if ([v7 count])
    {
      selfCopy2 = v7;
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  else
  {
    selfCopy2 = self;
  }

  return selfCopy2;
}

- (id)fp_jsonRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v5 = [(NSDictionary *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSDictionary *)selfCopy objectForKeyedSubscript:v9, v13];
        fp_jsonRepresentation = [v10 fp_jsonRepresentation];
        [v3 setObject:fp_jsonRepresentation forKeyedSubscript:v9];
      }

      v6 = [(NSDictionary *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

@end
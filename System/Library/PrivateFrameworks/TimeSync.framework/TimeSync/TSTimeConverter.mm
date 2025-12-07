@interface TSTimeConverter
- (TSTimeConverter)init;
- (TSTimeConverter)initWithContentsOfURL:(id)l;
- (TSTimeConverter)initWithTAIUTCArray:(id)array;
- (double)leapSecondForTAIDate:(id)date;
- (double)leapSecondForUTCDate:(id)date;
- (id)taiDateFromUTCDate:(id)date;
- (id)utcDateFromTAIDate:(id)date;
@end

@implementation TSTimeConverter

- (TSTimeConverter)init
{
  v3 = MEMORY[0x277CCA8D8];
  objc_opt_class();
  v4 = [v3 bundleForClass:?];
  resourceURL = [v4 resourceURL];
  v6 = [resourceURL URLByAppendingPathComponent:?];

  v7 = [(TSTimeConverter *)self initWithContentsOfURL:?];
  return v7;
}

- (TSTimeConverter)initWithTAIUTCArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = TSTimeConverter;
  v5 = [(TSTimeConverter *)&v9 init];
  if (v5)
  {
    if ([arrayCopy count])
    {
      v6 = [arrayCopy copy];
      taiutc = v5->_taiutc;
      v5->_taiutc = v6;
    }

    else
    {
      taiutc = v5;
      v5 = 0;
    }
  }

  return v5;
}

- (TSTimeConverter)initWithContentsOfURL:(id)l
{
  lCopy = l;
  array = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEA60] arrayWithContentsOfURL:?];
  v7 = [v6 countByEnumeratingWithState:0 objects:? count:?];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0];
    do
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [[TSTAIUTCValue alloc] initWithDictionary:?];
        if (v11)
        {
          [array addObject:?];
        }
      }

      v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v8);
  }

  v12 = [(TSTimeConverter *)self initWithTAIUTCArray:?];

  return v12;
}

- (id)taiDateFromUTCDate:(id)date
{
  dateCopy = date;
  [(TSTimeConverter *)self leapSecondForUTCDate:?];
  v5 = [dateCopy dateByAddingTimeInterval:?];

  return v5;
}

- (id)utcDateFromTAIDate:(id)date
{
  dateCopy = date;
  [(TSTimeConverter *)self leapSecondForTAIDate:?];
  v5 = [dateCopy dateByAddingTimeInterval:?];

  return v5;
}

- (double)leapSecondForUTCDate:(id)date
{
  dateCopy = date;
  v5 = [(NSArray *)self->_taiutc count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:?];
      utcDate = [v8 utcDate];
      [dateCopy timeIntervalSinceDate:?];
      v11 = v10;

      if (v11 >= 0.0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }

    v13 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:?];
    [v13 coefficient];
    v15 = v14;

    v16 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:?];
    v17 = v16;
    if (v15 == 0.0)
    {
      [v16 constant];
      v12 = v29;
    }

    else
    {
      utcDate2 = [v16 utcDate];
      [dateCopy timeIntervalSinceDate:?];
      v20 = v19 / 86400.0;
      v21 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:?];
      v22 = (v20 + [v21 modifiedJulianDay]);

      v17 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:?];
      [v17 constant];
      v24 = v23;
      v25 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:?];
      v26 = (v22 - [v25 offset]);
      v27 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:?];
      [v27 coefficient];
      v12 = v24 + v26 * v28;
    }
  }

  else
  {
LABEL_5:
    v12 = NAN;
  }

  return v12;
}

- (double)leapSecondForTAIDate:(id)date
{
  dateCopy = date;
  v5 = [(NSArray *)self->_taiutc count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:?];
      taiDate = [v8 taiDate];
      [dateCopy timeIntervalSinceDate:?];
      v11 = v10;

      if (v11 >= 0.0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }

    v13 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:?];
    [v13 coefficient];
    v15 = v14;

    v16 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:?];
    v17 = v16;
    if (v15 == 0.0)
    {
      [v16 constant];
      v12 = v36;
    }

    else
    {
      taiDate2 = [v16 taiDate];
      [dateCopy timeIntervalSinceDate:?];
      v19 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:?];
      [v19 modifiedJulianDay];

      v20 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:?];
      [v20 constant];
      v21 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:?];
      [v21 offset];
      v22 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:?];
      [v22 coefficient];

      v17 = [dateCopy dateByAddingTimeInterval:?];
      v23 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:?];
      utcDate = [v23 utcDate];
      [v17 timeIntervalSinceDate:?];
      v26 = v25 / 86400.0;
      v27 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:?];
      v28 = (v26 + [v27 modifiedJulianDay]);

      v29 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:?];
      [v29 constant];
      v31 = v30;
      v32 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:?];
      v33 = (v28 - [v32 offset]);
      v34 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:?];
      [v34 coefficient];
      v12 = v31 + v33 * v35;
    }
  }

  else
  {
LABEL_5:
    v12 = NAN;
  }

  return v12;
}

@end
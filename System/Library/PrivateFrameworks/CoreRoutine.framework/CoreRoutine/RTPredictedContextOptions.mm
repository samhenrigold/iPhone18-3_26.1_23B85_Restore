@interface RTPredictedContextOptions
- (BOOL)isEqual:(id)equal;
- (RTPredictedContextOptions)init;
- (RTPredictedContextOptions)initWithCoder:(id)coder;
- (RTPredictedContextOptions)initWithCreationDate:(id)date forecastWindowDateInterval:(id)interval forecastWindowTimeInterval:(double)timeInterval filterContextTypeMask:(unint64_t)mask filterLocations:(id)locations resultSortDescriptors:(id)descriptors;
- (RTPredictedContextOptions)initWithForecastWindowDateInterval:(id)interval filterContextTypeMask:(unint64_t)mask filterLocations:(id)locations resultSortDescriptors:(id)descriptors;
- (RTPredictedContextOptions)initWithForecastWindowDateInterval:(id)interval filterContextTypeMask:(unint64_t)mask filterLocations:(id)locations resultSortStartDateAscending:(BOOL)ascending resultSortProbabilityAscending:(BOOL)probabilityAscending;
- (RTPredictedContextOptions)initWithForecastWindowTimeInterval:(double)interval filterContextTypeMask:(unint64_t)mask filterLocations:(id)locations resultSortDescriptors:(id)descriptors;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPredictedContextOptions

- (RTPredictedContextOptions)init
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AB80]);
  v4 = [MEMORY[0x1E695DF00] now];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [v3 initWithStartDate:v4 endDate:distantFuture];
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateInterval.startDate.date" ascending:1];
  v12[0] = v7;
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"probability" ascending:0];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v10 = [(RTPredictedContextOptions *)self initWithForecastWindowDateInterval:v6 filterContextTypeMask:3 filterLocations:0 resultSortDescriptors:v9];

  return v10;
}

- (RTPredictedContextOptions)initWithForecastWindowDateInterval:(id)interval filterContextTypeMask:(unint64_t)mask filterLocations:(id)locations resultSortStartDateAscending:(BOOL)ascending resultSortProbabilityAscending:(BOOL)probabilityAscending
{
  probabilityAscendingCopy = probabilityAscending;
  ascendingCopy = ascending;
  v21[2] = *MEMORY[0x1E69E9840];
  v12 = MEMORY[0x1E695DF00];
  locationsCopy = locations;
  intervalCopy = interval;
  date = [v12 date];
  v16 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateInterval.startDate.date" ascending:ascendingCopy];
  v21[0] = v16;
  v17 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"probability" ascending:probabilityAscendingCopy];
  v21[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v19 = [(RTPredictedContextOptions *)self initWithCreationDate:date forecastWindowDateInterval:intervalCopy forecastWindowTimeInterval:mask filterContextTypeMask:locationsCopy filterLocations:v18 resultSortDescriptors:0.0];

  return v19;
}

- (RTPredictedContextOptions)initWithForecastWindowDateInterval:(id)interval filterContextTypeMask:(unint64_t)mask filterLocations:(id)locations resultSortDescriptors:(id)descriptors
{
  intervalCopy = interval;
  locationsCopy = locations;
  descriptorsCopy = descriptors;
  if (intervalCopy)
  {
    v13 = intervalCopy;
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x1E696AB80]);
    v15 = [MEMORY[0x1E695DF00] now];
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    v13 = [v14 initWithStartDate:v15 endDate:distantFuture];
  }

  date = [MEMORY[0x1E695DF00] date];
  v18 = [(RTPredictedContextOptions *)self initWithCreationDate:date forecastWindowDateInterval:v13 forecastWindowTimeInterval:mask filterContextTypeMask:locationsCopy filterLocations:descriptorsCopy resultSortDescriptors:0.0];

  return v18;
}

- (RTPredictedContextOptions)initWithForecastWindowTimeInterval:(double)interval filterContextTypeMask:(unint64_t)mask filterLocations:(id)locations resultSortDescriptors:(id)descriptors
{
  v10 = MEMORY[0x1E695DF00];
  descriptorsCopy = descriptors;
  locationsCopy = locations;
  date = [v10 date];
  v14 = [(RTPredictedContextOptions *)self initWithCreationDate:date forecastWindowDateInterval:0 forecastWindowTimeInterval:mask filterContextTypeMask:locationsCopy filterLocations:descriptorsCopy resultSortDescriptors:interval];

  return v14;
}

- (RTPredictedContextOptions)initWithCreationDate:(id)date forecastWindowDateInterval:(id)interval forecastWindowTimeInterval:(double)timeInterval filterContextTypeMask:(unint64_t)mask filterLocations:(id)locations resultSortDescriptors:(id)descriptors
{
  dateCopy = date;
  intervalCopy = interval;
  locationsCopy = locations;
  descriptorsCopy = descriptors;
  v24.receiver = self;
  v24.super_class = RTPredictedContextOptions;
  v19 = [(RTPredictedContextOptions *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_creationDate, date);
    if (intervalCopy || timeInterval != 0.0)
    {
      objc_storeStrong(&v20->_forecastWindowDateInterval, interval);
      v20->_forecastWindowTimeInterval = timeInterval;
    }

    else
    {
      distantFuture = [MEMORY[0x1E695DF00] distantFuture];
      [distantFuture timeIntervalSinceReferenceDate];
      v20->_forecastWindowTimeInterval = v22;
    }

    v20->_filterContextTypeMask = mask;
    objc_storeStrong(&v20->_filterLocations, locations);
    objc_storeStrong(&v20->_resultSortDescriptors, descriptors);
  }

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  creationDate = self->_creationDate;
  coderCopy = coder;
  [coderCopy encodeObject:creationDate forKey:@"creationDate"];
  [coderCopy encodeObject:self->_forecastWindowDateInterval forKey:@"forecastWindowDateInterval"];
  [coderCopy encodeDouble:@"forecastWindowTimeInterval" forKey:self->_forecastWindowTimeInterval];
  [coderCopy encodeInteger:self->_filterContextTypeMask forKey:@"filterContextTypeMask"];
  [coderCopy encodeObject:self->_filterLocations forKey:@"filterLocations"];
  [coderCopy encodeObject:self->_resultSortDescriptors forKey:@"resultSortDescriptors"];
}

- (RTPredictedContextOptions)initWithCoder:(id)coder
{
  v36 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"forecastWindowDateInterval"];
  [coderCopy decodeDoubleForKey:@"forecastWindowTimeInterval"];
  v5 = v4;
  v26 = [coderCopy decodeIntegerForKey:@"filterContextTypeMask"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v25 = [coderCopy decodeObjectOfClasses:v8 forKey:@"filterLocations"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v30 = coderCopy;
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"resultSortDescriptors"];

  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        v20 = MEMORY[0x1E696AEB0];
        v21 = [v19 key];
        v22 = [v20 sortDescriptorWithKey:v21 ascending:objc_msgSend(v19 selector:{"ascending"), objc_msgSend(v19, "selector")}];

        [v13 addObject:v22];
      }

      v16 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v16);
  }

  v23 = [(RTPredictedContextOptions *)self initWithCreationDate:v29 forecastWindowDateInterval:v27 forecastWindowTimeInterval:v26 filterContextTypeMask:v25 filterLocations:v13 resultSortDescriptors:v5];
  return v23;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    forecastWindowDateInterval = [(RTPredictedContextOptions *)self forecastWindowDateInterval];
    forecastWindowDateInterval2 = [(RTPredictedContextOptions *)v6 forecastWindowDateInterval];
    if ([forecastWindowDateInterval isEqualToDateInterval:forecastWindowDateInterval2] && (-[RTPredictedContextOptions forecastWindowTimeInterval](self, "forecastWindowTimeInterval"), v10 = v9, -[RTPredictedContextOptions forecastWindowTimeInterval](v6, "forecastWindowTimeInterval"), v10 == v11) && (v12 = -[RTPredictedContextOptions filterContextTypeMask](self, "filterContextTypeMask"), v12 == -[RTPredictedContextOptions filterContextTypeMask](v6, "filterContextTypeMask")))
    {
      filterLocations = [(RTPredictedContextOptions *)self filterLocations];
      filterLocations2 = [(RTPredictedContextOptions *)v6 filterLocations];
      if ([filterLocations isEqual:filterLocations2])
      {
        resultSortDescriptors = [(RTPredictedContextOptions *)self resultSortDescriptors];
        resultSortDescriptors2 = [(RTPredictedContextOptions *)v6 resultSortDescriptors];
        v17 = resultSortDescriptors == resultSortDescriptors2;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RTPredictedContextOptions alloc];
  forecastWindowDateInterval = self->_forecastWindowDateInterval;
  forecastWindowTimeInterval = self->_forecastWindowTimeInterval;
  filterContextTypeMask = self->_filterContextTypeMask;
  filterLocations = self->_filterLocations;
  resultSortDescriptors = self->_resultSortDescriptors;
  creationDate = self->_creationDate;

  return [(RTPredictedContextOptions *)v4 initWithCreationDate:creationDate forecastWindowDateInterval:forecastWindowDateInterval forecastWindowTimeInterval:filterContextTypeMask filterContextTypeMask:filterLocations filterLocations:resultSortDescriptors resultSortDescriptors:forecastWindowTimeInterval];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  creationDate = [(RTPredictedContextOptions *)self creationDate];
  forecastWindowDateInterval = [(RTPredictedContextOptions *)self forecastWindowDateInterval];
  [(RTPredictedContextOptions *)self forecastWindowTimeInterval];
  v7 = v6;
  filterContextTypeMask = [(RTPredictedContextOptions *)self filterContextTypeMask];
  filterLocations = [(RTPredictedContextOptions *)self filterLocations];
  resultSortDescriptors = [(RTPredictedContextOptions *)self resultSortDescriptors];
  v11 = [v3 stringWithFormat:@"creationDate, %@, forecastWindowDateInterval, %@, forecastWindowTimeInterval %f, filterContextTypeMask, %lu, filterLocations, %@, resultSortDescriptors, %@", creationDate, forecastWindowDateInterval, v7, filterContextTypeMask, filterLocations, resultSortDescriptors];

  return v11;
}

@end
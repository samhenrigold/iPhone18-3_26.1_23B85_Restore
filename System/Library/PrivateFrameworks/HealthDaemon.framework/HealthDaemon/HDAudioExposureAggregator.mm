@interface HDAudioExposureAggregator
- (BOOL)shouldFreezeCurrentSeries:(id)series lastDatum:(id)datum seriesLength:(int64_t)length configuration:(id)configuration aggregationInterval:(double)interval;
- (void)addDatum:(id)datum toAccumulatedData:(id)data;
@end

@implementation HDAudioExposureAggregator

- (void)addDatum:(id)datum toAccumulatedData:(id)data
{
  v28[2] = *MEMORY[0x277D85DE8];
  datumCopy = datum;
  dataCopy = data;
  lastObject = [dataCopy lastObject];
  if (lastObject)
  {
    quantityType = [(HDActiveQuantityDataAggregator *)self quantityType];
    quantity = [datumCopy quantity];
    canonicalUnit = [quantityType canonicalUnit];
    [quantity doubleValueForUnit:canonicalUnit];
    v13 = v12;

    if (v13 < 80.0 && ([lastObject quantity], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(quantityType, "canonicalUnit"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "doubleValueForUnit:", v15), v17 = v16, v15, v14, v17 < 80.0) && (objc_msgSend(datumCopy, "dateInterval"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "endDate"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(lastObject, "dateInterval"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "startDate"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "timeIntervalSinceDate:", v21), v23 = v22, v21, v20, v19, v18, v23 <= 30.0))
    {
      v28[0] = lastObject;
      v28[1] = datumCopy;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
      v25 = HDMergedQuantitySensorData(v24, quantityType);

      v26 = dataCopy;
      if (v25)
      {
        [dataCopy removeLastObject];
        v26 = dataCopy;
        v27 = v25;
      }

      else
      {
        v27 = datumCopy;
      }

      [v26 addObject:v27];
    }

    else
    {
      [dataCopy addObject:datumCopy];
    }
  }

  else
  {
    [dataCopy addObject:datumCopy];
  }
}

- (BOOL)shouldFreezeCurrentSeries:(id)series lastDatum:(id)datum seriesLength:(int64_t)length configuration:(id)configuration aggregationInterval:(double)interval
{
  seriesCopy = series;
  configurationCopy = configuration;
  quantityType = [(HDActiveQuantityDataAggregator *)self quantityType];
  code = [quantityType code];

  v17 = 0;
  if (code == 173)
  {
    endDate = [seriesCopy endDate];
    [endDate timeIntervalSinceNow];
    v15 = -v14;

    [configurationCopy maximumSeriesDuration];
    if (v16 < v15)
    {
      v17 = 1;
    }
  }

  return v17;
}

@end
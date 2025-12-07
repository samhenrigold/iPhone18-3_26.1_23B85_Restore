@interface CHPSeriesValueSynthesizer
- (BOOL)isObjectSupported:(id)supported;
- (void)applyProcessorToObject:(id)object sheet:(id)sheet;
@end

@implementation CHPSeriesValueSynthesizer

- (BOOL)isObjectSupported:(id)supported
{
  supportedCopy = supported;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = supportedCopy;
    valueData = [v4 valueData];
    if ([valueData isEmpty])
    {
      isEmpty = 0;
    }

    else
    {
      categoryData = [v4 categoryData];
      isEmpty = [categoryData isEmpty];
    }
  }

  else
  {
    isEmpty = 0;
  }

  return isEmpty;
}

- (void)applyProcessorToObject:(id)object sheet:(id)sheet
{
  objectCopy = object;
  valueData = [objectCopy valueData];
  categoryData = [objectCopy categoryData];
  if (!categoryData)
  {
    v8 = [CHDData alloc];
    WeakRetained = objc_loadWeakRetained(&self->super.mResources);
    categoryData = [(CHDData *)v8 initWithResources:WeakRetained];

    [objectCopy setCategoryData:categoryData];
  }

  if ([(CHDData *)categoryData isEmpty])
  {
    dataValues = [(CHDData *)categoryData dataValues];
    countOfCellsBeingReferenced = [valueData countOfCellsBeingReferenced];
    if (countOfCellsBeingReferenced)
    {
      v12 = 1;
      do
      {
        CsData::CsData(&v15);
        v14 = v12 - 1;
        EDValue::makeWithNumber(&v13.type, v12);
        EDValue::operator=(&v15, &v13);
        EDValue::~EDValue(&v13);
        v16 = -1;
        [dataValues addDataPoint:&v14];
        EDValue::~EDValue(&v15);
        ++v12;
      }

      while (v12 <= countOfCellsBeingReferenced);
    }

    [dataValues finishReading];
  }
}

@end
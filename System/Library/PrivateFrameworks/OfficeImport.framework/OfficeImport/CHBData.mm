@interface CHBData
+ (id)readFrom:(const void *)from state:(id)state;
@end

@implementation CHBData

+ (id)readFrom:(const void *)from state:(id)state
{
  stateCopy = state;
  if (from && XlChartLinkedData::hasEnteredData(from))
  {
    v6 = *(from + 12);
    resources = [stateCopy resources];
    v8 = [CHDData dataWithDataPointCount:v6 resources:resources];
  }

  else
  {
    resources2 = [stateCopy resources];
    v8 = [CHDData dataWithResources:resources2];

    if (!from)
    {
      v35 = v8;
      goto LABEL_47;
    }
  }

  v10 = *(from + 2);
  if (v10)
  {
    v11 = *(from + 12);
    v12 = objc_opt_class();
    ebReaderSheetState = [stateCopy ebReaderSheetState];
    v14 = [EBFormula edFormulaFromXlFmlaDefinition:v10 withFormulaLength:v11 formulaClass:v12 state:ebReaderSheetState];

    workbook = [stateCopy workbook];
    [v14 setWorkbook:workbook];

    chart = [stateCopy chart];
    [v8 setFormula:v14 chart:chart];
  }

  else
  {
    v14 = 0;
  }

  if (XlChartLinkedData::hasEnteredData(from))
  {
    v39 = v14;
    v40 = stateCopy;
    dataValues = [v8 dataValues];
    v18 = *(from + 4);
    fromCopy = from;
    v19 = from + 40;
    if (v18 != v19)
    {
      v20 = 0;
      v21 = 1;
      v22 = 0xFFFF;
      while (1)
      {
        v23 = *(v18 + 5);
        CsData::CsData(&v43);
        if ((*(*v23 + 16))(v23))
        {
          break;
        }

        if (!(*(*v23 + 24))(v23))
        {
          goto LABEL_16;
        }

        v25 = [CHBString nsStringWithHandlingMultilevelCategoryDataFromOCText:(*(*v23 + 40))(v23) chdFormula:v39 state:v40];
        if ([(EDValue *)v25 length])
        {
          EDValue::makeWithNSString(&v41.type, v25);
          EDValue::operator=(&v43, &v41);
          EDValue::~EDValue(&v41);

          goto LABEL_16;
        }

        v31 = *(v18 + 1);
        v32 = v18;
        if (v31)
        {
          do
          {
            v33 = v31;
            v31 = *v31;
          }

          while (v31);
        }

        else
        {
          do
          {
            v33 = *(v32 + 2);
            v34 = *v33 == v32;
            v32 = v33;
          }

          while (!v34);
        }

        v20 = *(v18 + 8);

        v18 = v33;
LABEL_29:
        EDValue::~EDValue(&v43);
        if (v18 == v19)
        {
          goto LABEL_40;
        }
      }

      v24 = (*(*v23 + 32))(v23);
      EDValue::makeWithNumber(&v41.type, v24);
      EDValue::operator=(&v43, &v41);
      EDValue::~EDValue(&v41);
LABEL_16:
      v26 = v23[4];
      if (v26 == v22)
      {
        v27 = v22;
      }

      else
      {
        v27 = -1;
      }

      if (v21)
      {
        v22 = v23[4];
      }

      else
      {
        v22 = v27;
      }

      v42 = *(v18 + 8);
      v44 = v26;
      [dataValues addDataPoint:&v42];
      v28 = *(v18 + 8);
      if (v28 <= v20)
      {
        v28 = v20;
      }

      [v8 setDataValueIndexCount:v28 + 1];
      v20 = *(v18 + 8);
      v29 = *(v18 + 1);
      if (v29)
      {
        do
        {
          v18 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v18;
          v18 = *(v18 + 2);
        }

        while (*v18 != v30);
      }

      v21 = 0;
      goto LABEL_29;
    }

    LOWORD(v22) = -1;
LABEL_40:
    [dataValues finishReading];

    v14 = v39;
    stateCopy = v40;
    from = fromCopy;
  }

  else
  {
    LOWORD(v22) = -1;
  }

  v36 = *(from + 13);
  if (*([stateCopy xlReader] + 1344) == 1)
  {
    if (v36 == 0x8000)
    {
      LOWORD(v36) = v22;
    }

    else if (*(from + 28) == 1)
    {
      LOWORD(v36) = v22;
    }
  }

  [v8 setContentFormatId:v36];
  v35 = v8;

LABEL_47:

  return v35;
}

@end
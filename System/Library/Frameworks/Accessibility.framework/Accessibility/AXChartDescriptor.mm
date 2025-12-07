@interface AXChartDescriptor
- (AXChartDescriptor)initWithAttributedTitle:(NSAttributedString *)attributedTitle summary:(NSString *)summary xAxisDescriptor:(id)xAxis yAxisDescriptor:(AXNumericDataAxisDescriptor *)yAxis additionalAxes:(NSArray *)additionalAxes series:(NSArray *)series;
- (AXChartDescriptor)initWithDictionary:(id)dictionary;
- (AXChartDescriptor)initWithTitle:(NSString *)title summary:(NSString *)summary xAxisDescriptor:(id)xAxis yAxisDescriptor:(AXNumericDataAxisDescriptor *)yAxis additionalAxes:(NSArray *)additionalAxes series:(NSArray *)series;
- (CGRect)contentFrame;
- (NSString)description;
- (NSString)title;
- (id)_additionalCategoricalAxis;
- (id)_additionalNumericAxis;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)_commonInitWithSummary:(id)summary xAxisDescriptor:(id)descriptor yAxisDescriptor:(id)axisDescriptor additionalAxes:(id)axes series:(id)series;
- (void)computeValueDescriptionsIfNeeded;
- (void)setTitle:(NSString *)title;
@end

@implementation AXChartDescriptor

- (AXChartDescriptor)initWithTitle:(NSString *)title summary:(NSString *)summary xAxisDescriptor:(id)xAxis yAxisDescriptor:(AXNumericDataAxisDescriptor *)yAxis additionalAxes:(NSArray *)additionalAxes series:(NSArray *)series
{
  v14 = title;
  v15 = summary;
  v16 = xAxis;
  v17 = yAxis;
  v18 = additionalAxes;
  v19 = series;
  v23.receiver = self;
  v23.super_class = AXChartDescriptor;
  v20 = [(AXChartDescriptor *)&v23 init];
  v21 = v20;
  if (v20)
  {
    [(AXChartDescriptor *)v20 setTitle:v14];
    [(AXChartDescriptor *)v21 _commonInitWithSummary:v15 xAxisDescriptor:v16 yAxisDescriptor:v17 additionalAxes:v18 series:v19];
  }

  return v21;
}

- (AXChartDescriptor)initWithAttributedTitle:(NSAttributedString *)attributedTitle summary:(NSString *)summary xAxisDescriptor:(id)xAxis yAxisDescriptor:(AXNumericDataAxisDescriptor *)yAxis additionalAxes:(NSArray *)additionalAxes series:(NSArray *)series
{
  v15 = attributedTitle;
  v16 = summary;
  v17 = xAxis;
  v18 = yAxis;
  v19 = additionalAxes;
  v20 = series;
  v24.receiver = self;
  v24.super_class = AXChartDescriptor;
  v21 = [(AXChartDescriptor *)&v24 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_attributedTitle, attributedTitle);
    [(AXChartDescriptor *)v22 _commonInitWithSummary:v16 xAxisDescriptor:v17 yAxisDescriptor:v18 additionalAxes:v19 series:v20];
  }

  return v22;
}

- (AXChartDescriptor)initWithDictionary:(id)dictionary
{
  v87 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v3 = getkAXMChartTitleKey();
  v61 = [dictionaryCopy objectForKeyedSubscript:v3];

  v4 = getkAXMChartSummaryKey();
  v60 = [dictionaryCopy objectForKeyedSubscript:v4];

  v5 = getkAXMChartContentDirectionKey();
  v6 = [dictionaryCopy objectForKeyedSubscript:v5];
  integerValue = [v6 integerValue];

  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v8 = getkAXMChartContentFrameKeySymbolLoc_ptr;
  v84 = getkAXMChartContentFrameKeySymbolLoc_ptr;
  if (!getkAXMChartContentFrameKeySymbolLoc_ptr)
  {
    v76 = MEMORY[0x1E69E9820];
    v77 = 3221225472;
    v78 = __getkAXMChartContentFrameKeySymbolLoc_block_invoke;
    v79 = &unk_1E7B2CF78;
    v80 = &v81;
    v9 = AXMediaUtilitiesLibrary();
    v82[3] = dlsym(v9, "kAXMChartContentFrameKey");
    getkAXMChartContentFrameKeySymbolLoc_ptr = *(v80[1] + 24);
    v8 = v82[3];
  }

  _Block_object_dispose(&v81, 8);
  if (!v8)
  {
    AXAnimatedImagesEnabled_cold_1();
    __break(1u);
  }

  v56 = integerValue;
  v10 = [dictionaryCopy objectForKeyedSubscript:*v8];
  [v10 AXMRectValue];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = getkAXMChartXAxisKey();
  v65 = [dictionaryCopy objectForKeyedSubscript:v19];

  v20 = getkAXMChartYAxisKey();
  v64 = [dictionaryCopy objectForKeyedSubscript:v20];

  v21 = getkAXMChartAdditionalAxesKey();
  v22 = [dictionaryCopy objectForKeyedSubscript:v21];

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v22;
  v23 = 0;
  v24 = 0;
  v25 = [obj countByEnumeratingWithState:&v72 objects:v86 count:16];
  if (v25)
  {
    v26 = *v73;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v73 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v72 + 1) + 8 * i);
        v29 = getkAXMChartAxisTypeKey();
        v30 = [v28 objectForKeyedSubscript:v29];
        v31 = getkAXMChartAxisTypeNumeric();
        v32 = [v30 isEqualToString:v31];

        if (v32)
        {
          v33 = v24;
          v34 = v23;
          v24 = v28;
        }

        else
        {
          v35 = getkAXMChartAxisTypeKey();
          v36 = [v28 objectForKeyedSubscript:v35];
          v37 = getkAXMChartAxisTypeCategorical();
          v38 = [v36 isEqualToString:v37];

          v33 = v23;
          v34 = v28;
          if (!v38)
          {
            continue;
          }
        }

        v39 = v28;

        v23 = v34;
      }

      v25 = [obj countByEnumeratingWithState:&v72 objects:v86 count:16];
    }

    while (v25);
  }

  v40 = getkAXMChartSeriesKey();
  v41 = [dictionaryCopy objectForKeyedSubscript:v40];

  v42 = getkAXMChartAxisTypeKey();
  v43 = [v65 objectForKeyedSubscript:v42];
  v44 = getkAXMChartAxisTypeCategorical();
  [v43 isEqualToString:v44];
  v45 = objc_opt_class();

  v59 = [[v45 alloc] initWithDictionary:v65];
  if (v64)
  {
    v58 = [[AXNumericDataAxisDescriptor alloc] initWithDictionary:v64];
    if (v24)
    {
      goto LABEL_17;
    }

LABEL_20:
    v63 = 0;
    if (v23)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  v58 = 0;
  if (!v24)
  {
    goto LABEL_20;
  }

LABEL_17:
  v63 = [[AXNumericDataAxisDescriptor alloc] initWithDictionary:v24];
  if (v23)
  {
LABEL_18:
    v62 = [[AXCategoricalDataAxisDescriptor alloc] initWithDictionary:v23];
    goto LABEL_22;
  }

LABEL_21:
  v62 = 0;
LABEL_22:
  array = [MEMORY[0x1E695DF70] array];
  v47 = array;
  if (v63)
  {
    [array addObject:v63];
  }

  if (v62)
  {
    [v47 addObject:v62];
  }

  array2 = [MEMORY[0x1E695DF70] array];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v49 = v41;
  v50 = [v49 countByEnumeratingWithState:&v68 objects:v85 count:16];
  if (v50)
  {
    v51 = *v69;
    do
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v69 != v51)
        {
          objc_enumerationMutation(v49);
        }

        v53 = [[AXDataSeriesDescriptor alloc] initWithDictionary:*(*(&v68 + 1) + 8 * j)];
        [array2 addObject:v53];
      }

      v50 = [v49 countByEnumeratingWithState:&v68 objects:v85 count:16];
    }

    while (v50);
  }

  v54 = [(AXChartDescriptor *)self initWithAttributedTitle:v61 summary:v60 xAxisDescriptor:v59 yAxisDescriptor:v58 additionalAxes:v47 series:array2];
  [(AXChartDescriptor *)v54 setContentDirection:v56];
  [(AXChartDescriptor *)v54 setContentFrame:v12, v14, v16, v18];

  return v54;
}

- (void)_commonInitWithSummary:(id)summary xAxisDescriptor:(id)descriptor yAxisDescriptor:(id)axisDescriptor additionalAxes:(id)axes series:(id)series
{
  v40 = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  descriptorCopy = descriptor;
  axisDescriptorCopy = axisDescriptor;
  axesCopy = axes;
  seriesCopy = series;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  identifier = self->_identifier;
  self->_identifier = uUID;

  v19 = [summaryCopy copy];
  summary = self->_summary;
  self->_summary = v19;

  objc_storeStrong(&self->_xAxis, descriptor);
  objc_storeStrong(&self->_yAxis, axisDescriptor);
  v21 = [axesCopy copy];
  additionalAxes = self->_additionalAxes;
  self->_additionalAxes = v21;

  v23 = [seriesCopy copy];
  series = self->_series;
  self->_series = v23;

  if (axisDescriptorCopy)
  {
    v33 = descriptorCopy;
    v34 = summaryCopy;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v25 = seriesCopy;
    v26 = [v25 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v36;
      do
      {
        v29 = 0;
        do
        {
          if (*v36 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v35 + 1) + 8 * v29);
          valueDescriptionProvider = [axisDescriptorCopy valueDescriptionProvider];
          [v30 meanYValue];
          v32 = valueDescriptionProvider[2](valueDescriptionProvider);

          if ([v32 length])
          {
            [v30 setMeanValueDescription:v32];
          }

          ++v29;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v27);
    }

    descriptorCopy = v33;
    summaryCopy = v34;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AXChartDescriptor allocWithZone:zone];
  attributedTitle = [(AXChartDescriptor *)self attributedTitle];
  summary = [(AXChartDescriptor *)self summary];
  xAxis = [(AXChartDescriptor *)self xAxis];
  yAxis = [(AXChartDescriptor *)self yAxis];
  additionalAxes = [(AXChartDescriptor *)self additionalAxes];
  series = [(AXChartDescriptor *)self series];
  v11 = [(AXChartDescriptor *)v4 initWithAttributedTitle:attributedTitle summary:summary xAxisDescriptor:xAxis yAxisDescriptor:yAxis additionalAxes:additionalAxes series:series];

  return v11;
}

- (NSString)title
{
  attributedTitle = [(AXChartDescriptor *)self attributedTitle];
  string = [attributedTitle string];

  return string;
}

- (void)setTitle:(NSString *)title
{
  v4 = title;
  v6 = v4;
  if (v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4];
  }

  attributedTitle = self->_attributedTitle;
  self->_attributedTitle = v4;
}

- (id)dictionaryRepresentation
{
  v43 = *MEMORY[0x1E69E9840];
  [(AXChartDescriptor *)self computeValueDescriptionsIfNeeded];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  xAxis = [(AXChartDescriptor *)self xAxis];
  dictionaryRepresentation = [xAxis dictionaryRepresentation];

  yAxis = [(AXChartDescriptor *)self yAxis];
  dictionaryRepresentation2 = [yAxis dictionaryRepresentation];

  array = [MEMORY[0x1E695DF70] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  additionalAxes = [(AXChartDescriptor *)self additionalAxes];
  v9 = [additionalAxes countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v38;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(additionalAxes);
        }

        dictionaryRepresentation3 = [*(*(&v37 + 1) + 8 * i) dictionaryRepresentation];
        [array addObject:dictionaryRepresentation3];
      }

      v10 = [additionalAxes countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v10);
  }

  array2 = [MEMORY[0x1E695DF70] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  series = [(AXChartDescriptor *)self series];
  v16 = [series countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(series);
        }

        dictionaryRepresentation4 = [*(*(&v33 + 1) + 8 * j) dictionaryRepresentation];
        [array2 addObject:dictionaryRepresentation4];
      }

      v17 = [series countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v17);
  }

  attributedTitle = [(AXChartDescriptor *)self attributedTitle];
  v22 = getkAXMChartTitleKey();
  [dictionary setObject:attributedTitle forKeyedSubscript:v22];

  summary = [(AXChartDescriptor *)self summary];
  v24 = getkAXMChartSummaryKey();
  [dictionary setObject:summary forKeyedSubscript:v24];

  v25 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXChartDescriptor contentDirection](self, "contentDirection")}];
  v26 = getkAXMChartContentDirectionKey();
  [dictionary setObject:v25 forKeyedSubscript:v26];

  v27 = getkAXMChartXAxisKey();
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:v27];

  v28 = getkAXMChartYAxisKey();
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:v28];

  v29 = getkAXMChartAdditionalAxesKey();
  [dictionary setObject:array forKeyedSubscript:v29];

  v30 = getkAXMChartSeriesKey();
  [dictionary setObject:array2 forKeyedSubscript:v30];

  return dictionary;
}

- (void)computeValueDescriptionsIfNeeded
{
  selfCopy = self;
  v52 = *MEMORY[0x1E69E9840];
  series = [(AXChartDescriptor *)self series];
  firstObject = [series firstObject];
  dataPoints = [firstObject dataPoints];
  firstObject2 = [dataPoints firstObject];
  valueDescription = [firstObject2 valueDescription];

  if (!valueDescription)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = [(AXChartDescriptor *)selfCopy series];
    v33 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v33)
    {
      v32 = *v47;
      v36 = selfCopy;
      do
      {
        v8 = 0;
        do
        {
          if (*v47 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = v8;
          dataPoints2 = [*(*(&v46 + 1) + 8 * v8) dataPoints];
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v35 = dataPoints2;
          v38 = [dataPoints2 countByEnumeratingWithState:&v42 objects:v50 count:16];
          if (v38)
          {
            v37 = *v43;
            do
            {
              for (i = 0; i != v38; ++i)
              {
                if (*v43 != v37)
                {
                  objc_enumerationMutation(v35);
                }

                v11 = *(*(&v42 + 1) + 8 * i);
                xAxis = [(AXChartDescriptor *)selfCopy xAxis];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  xAxis2 = [(AXChartDescriptor *)selfCopy xAxis];
                }

                else
                {
                  xAxis2 = 0;
                }

                yAxis = [(AXChartDescriptor *)selfCopy yAxis];
                _additionalNumericAxis = [(AXChartDescriptor *)selfCopy _additionalNumericAxis];
                v41 = xAxis2;
                if (xAxis2)
                {
                  valueDescriptionProvider = [xAxis2 valueDescriptionProvider];
                  xValue = [v11 xValue];
                  [xValue number];
                  category = valueDescriptionProvider[2](valueDescriptionProvider);
                }

                else
                {
                  valueDescriptionProvider = [v11 xValue];
                  category = [valueDescriptionProvider category];
                }

                valueDescriptionProvider2 = [yAxis valueDescriptionProvider];

                v40 = yAxis;
                if (valueDescriptionProvider2)
                {
                  valueDescriptionProvider3 = [yAxis valueDescriptionProvider];
                  yValue = [v11 yValue];
                  [yValue number];
                  v22 = valueDescriptionProvider3[2](valueDescriptionProvider3);
                }

                else
                {
                  v22 = 0;
                }

                _additionalNumericValue = [v11 _additionalNumericValue];
                v39 = _additionalNumericAxis;
                if (_additionalNumericValue)
                {
                  valueDescriptionProvider4 = [_additionalNumericAxis valueDescriptionProvider];
                  [_additionalNumericValue doubleValue];
                  v25 = valueDescriptionProvider4[2](valueDescriptionProvider4);
                }

                else
                {
                  v25 = 0;
                }

                _additionalCategoricalValue = [v11 _additionalCategoricalValue];
                label = [v11 label];
                array = [MEMORY[0x1E695DF70] array];
                v29 = array;
                if (label)
                {
                  [array addObject:label];
                }

                if (category)
                {
                  [v29 addObject:category];
                }

                if (v22)
                {
                  [v29 addObject:v22];
                }

                if (v25)
                {
                  [v29 addObject:v25];
                }

                if (_additionalCategoricalValue)
                {
                  [v29 addObject:_additionalCategoricalValue];
                }

                v30 = [v29 componentsJoinedByString:{@", "}];
                [v11 setValueDescription:v30];

                selfCopy = v36;
              }

              v38 = [v35 countByEnumeratingWithState:&v42 objects:v50 count:16];
            }

            while (v38);
          }

          v8 = v34 + 1;
        }

        while (v34 + 1 != v33);
        v33 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v33);
    }
  }
}

- (id)_additionalNumericAxis
{
  v13 = *MEMORY[0x1E69E9840];
  [(AXChartDescriptor *)self additionalAxes];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)_additionalCategoricalAxis
{
  v13 = *MEMORY[0x1E69E9840];
  [(AXChartDescriptor *)self additionalAxes];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (NSString)description
{
  v24 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  xAxis = [(AXChartDescriptor *)self xAxis];
  [array addObject:xAxis];

  yAxis = [(AXChartDescriptor *)self yAxis];

  if (yAxis)
  {
    yAxis2 = [(AXChartDescriptor *)self yAxis];
    [array addObject:yAxis2];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  additionalAxes = [(AXChartDescriptor *)self additionalAxes];
  v8 = [additionalAxes countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(additionalAxes);
        }

        [array addObject:*(*(&v19 + 1) + 8 * i)];
      }

      v9 = [additionalAxes countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = objc_opt_class();
  title = [(AXChartDescriptor *)self title];
  summary = [(AXChartDescriptor *)self summary];
  series = [(AXChartDescriptor *)self series];
  v17 = [v12 stringWithFormat:@"<%@ %p\n\ttitle=%@\n\tsummary=%@\n\tAxes:\n\t%@Series:\n\t%@>", v13, self, title, summary, array, series];

  return v17;
}

- (CGRect)contentFrame
{
  x = self->_contentFrame.origin.x;
  y = self->_contentFrame.origin.y;
  width = self->_contentFrame.size.width;
  height = self->_contentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
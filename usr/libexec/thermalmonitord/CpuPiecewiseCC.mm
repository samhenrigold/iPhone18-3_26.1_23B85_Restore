@interface CpuPiecewiseCC
- (CpuPiecewiseCC)initWithParams:(__CFDictionary *)params listID:(int)d needspowerZones:(BOOL)zones;
- (int)maxLoadIndexToDVDFactor1:(int)factor1;
@end

@implementation CpuPiecewiseCC

- (CpuPiecewiseCC)initWithParams:(__CFDictionary *)params listID:(int)d needspowerZones:(BOOL)zones
{
  v22.receiver = self;
  v22.super_class = CpuPiecewiseCC;
  LODWORD(v5) = 1.0;
  v7 = [(CpuCC *)&v22 initWithParams:params powerScale:*&d listID:zones needspowerZones:v5];
  v8 = v7;
  if (!v7)
  {
    return v8;
  }

  *(v7 + 212) = 0u;
  *(v7 + 228) = 0u;
  *(v7 + 61) = 0;
  *(v7 + 70) = 0;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  Value = CFDictionaryGetValue(params, @"maxLoadIndexLimits");
  v10 = CFDictionaryGetValue(params, @"dvdFactor1Limits");
  v11 = [Value count];
  if (v11 != [v10 count])
  {
    v12 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000527BC(v12);
    }
  }

  v13 = [Value count];
  *(v8 + 52) = v13;
  if (v13 < 10)
  {
    goto LABEL_8;
  }

  v14 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v24 = "[CpuPiecewiseCC initWithParams:listID:needspowerZones:]";
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "<Error> %s: data array too large", buf, 0xCu);
    v13 = *(v8 + 52);
LABEL_8:
    if (v13 < 1)
    {
      return v8;
    }
  }

  v15 = 0;
  do
  {
    *&v8[4 * v15 + 212] = [objc_msgSend(Value objectAtIndex:{v15), "intValue"}];
    *&v8[4 * v15 + 248] = [objc_msgSend(v10 objectAtIndex:{v15), "intValue"}];
    ++v15;
    v16 = *(v8 + 52);
  }

  while (v15 < v16);
  if (v16 >= 2)
  {
    v17 = 0;
    v18 = v8 + 252;
    v19 = v8 + 216;
    do
    {
      if (*(v19 - 1) >= *v19 || *(v18 - 1) >= *v18)
      {
        v20 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v24 = "[CpuPiecewiseCC initWithParams:listID:needspowerZones:]";
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "<Error> %s: data improperly sorted", buf, 0xCu);
          LODWORD(v16) = *(v8 + 52);
        }
      }

      ++v17;
      ++v19;
      ++v18;
    }

    while (v17 < v16 - 1);
  }

  return v8;
}

- (int)maxLoadIndexToDVDFactor1:(int)factor1
{
  v3 = &self->super._directMapIntercept + 1;
  factor1Copy = *(&self->super._directMapIntercept + 1);
  directMapIntercept_low = LODWORD(self->super._directMapIntercept);
  if (factor1Copy <= factor1)
  {
    factor1Copy = LODWORD(v3[directMapIntercept_low - 1]);
    if (factor1Copy >= factor1)
    {
      factor1Copy = factor1;
    }
  }

  v6 = 1;
  if (directMapIntercept_low >= 2)
  {
    while (factor1Copy >= SLODWORD(v3[v6]))
    {
      if (directMapIntercept_low == ++v6)
      {
        *&v6 = self->super._directMapIntercept;
        break;
      }
    }
  }

  v7 = v6 - 1;
  v8 = v3[v7];
  v9 = v3[v6];
  if (LODWORD(v9) == LODWORD(v8))
  {
    return 0;
  }

  else
  {
    return ((((LODWORD(v9) - factor1Copy) * self->_maxLoadIndexLimits[v7 + 7]) + (self->_maxLoadIndexLimits[v6 + 7] * (factor1Copy - LODWORD(v8)))) / (LODWORD(v9) - LODWORD(v8)));
  }
}

@end
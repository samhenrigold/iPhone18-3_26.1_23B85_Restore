@interface WANWActivityStatistics
- (PBCodable)awdReport;
- (WANWActivityStatistics)initWithPBCodableData:(id)data;
- (WANWActivityStatistics)initWithWAActivityReport:(const void *)report length:(unint64_t)length;
- (id)expandKeyNameLengths:(id)lengths;
- (id)getTransformedFlattened:(int)flattened;
- (id)getTransformedFlattenedFrom:(id)from style:(int)style index:(unsigned int)index;
- (unsigned)awdMetricID;
@end

@implementation WANWActivityStatistics

- (WANWActivityStatistics)initWithPBCodableData:(id)data
{
  v21 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = WANWActivityStatistics;
  v5 = [(WANWActivityStatistics *)&v12 init];
  v6 = v5;
  if (dataCopy && v5 && [dataCopy length])
  {
    v7 = [[WiFiAnalyticsAWDWiFiNWActivity alloc] initWithData:dataCopy];
    awdReport = v6->_awdReport;
    v6->_awdReport = &v7->super;

    v6->_fromInitWithPBCodableData = 1;
  }

  else
  {
    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [dataCopy length];
      *buf = 136446978;
      v14 = "[WANWActivityStatistics initWithPBCodableData:]";
      v15 = 1024;
      v16 = 63;
      v17 = 1024;
      v18 = v6 != 0;
      v19 = 2048;
      v20 = v10;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:initWithPBCodableData Failed self %d length %lu", buf, 0x22u);
    }
  }

  return v6;
}

- (WANWActivityStatistics)initWithWAActivityReport:(const void *)report length:(unint64_t)length
{
  v27 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = WANWActivityStatistics;
  v6 = [(WANWActivityStatistics *)&v20 init];
  v7 = v6;
  if (v6)
  {
    v6->_fromInitWithPBCodableData = 0;
    v8 = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x1E695DEF0] dataWithBytes:report length:length];
    if (!v9)
    {
      v11 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v22 = "[WANWActivityStatistics initWithWAActivityReport:length:]";
        v23 = 1024;
        v24 = 97;
        _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:resultData failed", buf, 0x12u);
      }

      goto LABEL_18;
    }

    v19 = 0;
    v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v19];
    v11 = v19;
    awdReport = v7->_awdReport;
    v7->_awdReport = v10;

    if (v7->_awdReport)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      v17 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v22 = "[WANWActivityStatistics initWithWAActivityReport:length:]";
        v23 = 1024;
        v24 = 100;
        v25 = 2112;
        v26 = v11;
        _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unarchive WAMessageAWD: %@", buf, 0x1Cu);
      }

LABEL_18:
      objc_autoreleasePoolPop(v8);
      v15 = 0;
      goto LABEL_12;
    }

    objc_autoreleasePoolPop(v8);
    v14 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v22 = "[WANWActivityStatistics initWithWAActivityReport:length:]";
      v23 = 1024;
      v24 = 102;
      _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_INFO, "%{public}s::%d:Success", buf, 0x12u);
    }
  }

  v15 = v7;
LABEL_12:

  return v15;
}

- (unsigned)awdMetricID
{
  if (self->_awdMetricID)
  {
    return self->_awdMetricID;
  }

  else
  {
    return 589927;
  }
}

- (PBCodable)awdReport
{
  v32 = *MEMORY[0x1E69E9840];
  fromInitWithPBCodableData = self->_fromInitWithPBCodableData;
  awdReport = self->_awdReport;
  if (fromInitWithPBCodableData)
  {
    v5 = awdReport;
    goto LABEL_18;
  }

  if (!awdReport)
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v26 = "[WANWActivityStatistics awdReport]";
      v27 = 1024;
      v28 = 124;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:_awdReport missing Debug", buf, 0x12u);
    }

    awdReport = self->_awdReport;
    if (!awdReport)
    {
      v19 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v26 = "[WANWActivityStatistics awdReport]";
        v27 = 1024;
        v28 = 128;
        v20 = "%{public}s::%d:_awdReport missing";
LABEL_25:
        _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x12u);
      }

LABEL_26:

      v5 = 0;
      goto LABEL_18;
    }
  }

  activities = [(PBCodable *)awdReport activities];
  v8 = [activities count];

  if (v8)
  {
    v19 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v26 = "[WANWActivityStatistics awdReport]";
      v27 = 1024;
      v28 = 132;
      v20 = "%{public}s::%d:_awdReport has activities already";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  externallyVisibleActivityUUIDs = [(WANWActivityStatistics *)self externallyVisibleActivityUUIDs];
  v10 = [externallyVisibleActivityUUIDs countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(externallyVisibleActivityUUIDs);
        }

        v14 = self->_awdReport;
        uUIDString = [*(*(&v21 + 1) + 8 * i) UUIDString];
        [(PBCodable *)v14 addActivities:uUIDString];
      }

      v11 = [externallyVisibleActivityUUIDs countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v11);
  }

  [(WANWActivityStatistics *)self setAwdMetricID:589927];
  v16 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = self->_awdReport;
    *buf = 136446722;
    v26 = "[WANWActivityStatistics awdReport]";
    v27 = 1024;
    v28 = 143;
    v29 = 2114;
    v30 = v17;
    _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Generated wifi nw_activity report: %{public}@", buf, 0x1Cu);
  }

  v5 = self->_awdReport;
LABEL_18:

  return v5;
}

- (id)getTransformedFlattenedFrom:(id)from style:(int)style index:(unsigned int)index
{
  v5 = *&index;
  v24 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v9 = objc_autoreleasePoolPush();
  v10 = [(WANWActivityStatistics *)self obj];

  if (!v10)
  {
    if (os_signpost_enabled(MEMORY[0x1E69E9C10]))
    {
      LOWORD(v20) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "getTransformedFlattenedFrom init", "", &v20, 2u);
    }

    v11 = [_TtC13WiFiAnalytics21WANWActivityTransform alloc];
    awdReport = [(WANWActivityStatistics *)self awdReport];
    dictionaryRepresentation = [awdReport dictionaryRepresentation];
    v14 = [(WANWActivityTransform *)v11 initWithLater:dictionaryRepresentation early:fromCopy];
    [(WANWActivityStatistics *)self setObj:v14];

    if (os_signpost_enabled(MEMORY[0x1E69E9C10]))
    {
      LOWORD(v20) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "getTransformedFlattenedFrom init", "", &v20, 2u);
    }
  }

  if (os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    LOWORD(v20) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "getTransformedFlattenedFrom Transform", "", &v20, 2u);
  }

  v15 = [(WANWActivityStatistics *)self obj];

  if (v15)
  {
    v16 = 0;
    if (style > 1)
    {
      if (style == 2)
      {
        v17 = [(WANWActivityStatistics *)self obj];
        getTransformedMeasurementForLogging = [v17 getTransformedMeasurementForLogging];
      }

      else
      {
        if (style != 3)
        {
          goto LABEL_23;
        }

        v17 = [(WANWActivityStatistics *)self obj];
        getTransformedMeasurementForLogging = [v17 getTransformedMeasurementForP2PMetrics];
      }
    }

    else if (style)
    {
      if (style != 1)
      {
        goto LABEL_23;
      }

      v17 = [(WANWActivityStatistics *)self obj];
      getTransformedMeasurementForLogging = [v17 getTransformedMeasurementWithIndex:v5];
    }

    else
    {
      v17 = [(WANWActivityStatistics *)self obj];
      getTransformedMeasurementForLogging = [v17 getTransformedMeasurementForTelemetryWithIndex:v5];
    }

    v16 = getTransformedMeasurementForLogging;
  }

  else
  {
    v17 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446466;
      v21 = "[WANWActivityStatistics getTransformedFlattenedFrom:style:index:]";
      v22 = 1024;
      v23 = 193;
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to create WANWActivityTransform", &v20, 0x12u);
    }

    v16 = 0;
  }

LABEL_23:
  if (os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    LOWORD(v20) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "getTransformedFlattenedFrom Transform", "", &v20, 2u);
  }

  objc_autoreleasePoolPop(v9);

  return v16;
}

- (id)getTransformedFlattened:(int)flattened
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  if (os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "getTransformedFlattened init", "", &v17, 2u);
  }

  v6 = [(WANWActivityStatistics *)self obj];

  if (!v6)
  {
    v7 = [_TtC13WiFiAnalytics21WANWActivityTransform alloc];
    awdReport = [(WANWActivityStatistics *)self awdReport];
    dictionaryRepresentation = [awdReport dictionaryRepresentation];
    v10 = [(WANWActivityTransform *)v7 initWithSingle:dictionaryRepresentation];
    [(WANWActivityStatistics *)self setObj:v10];
  }

  if (os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "getTransformedFlattened init", "", &v17, 2u);
  }

  if (os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "getTransformedFlattened Transform", "", &v17, 2u);
  }

  v11 = [(WANWActivityStatistics *)self obj];

  if (v11)
  {
    v12 = 0;
    if (flattened > 1)
    {
      if (flattened == 2)
      {
        v14 = [(WANWActivityStatistics *)self obj];
        getTransformedMeasurementForLogging = [v14 getTransformedMeasurementForLogging];
      }

      else
      {
        if (flattened != 3)
        {
          goto LABEL_27;
        }

        v14 = [(WANWActivityStatistics *)self obj];
        getTransformedMeasurementForLogging = [v14 getTransformedMeasurementForP2PMetrics];
      }
    }

    else
    {
      if (flattened)
      {
        if (flattened != 1)
        {
          goto LABEL_27;
        }

        v13 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v17 = 136446466;
          v18 = "[WANWActivityStatistics getTransformedFlattened:]";
          v19 = 1024;
          v20 = 222;
          _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:Invalid style for single parameter, timeOffset invalid", &v17, 0x12u);
        }

        v14 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v17) = 0;
          _os_log_fault_impl(&dword_1C8460000, v14, OS_LOG_TYPE_FAULT, "Invalid style for single parameter, timeOffset invalid", &v17, 2u);
        }

        goto LABEL_19;
      }

      v14 = [(WANWActivityStatistics *)self obj];
      getTransformedMeasurementForLogging = [v14 getTransformedMeasurementForTelemetryWithIndex:0];
    }

    v12 = getTransformedMeasurementForLogging;
    goto LABEL_26;
  }

  v14 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v17 = 136446466;
    v18 = "[WANWActivityStatistics getTransformedFlattened:]";
    v19 = 1024;
    v20 = 236;
    _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to create WANWActivityTransform", &v17, 0x12u);
  }

LABEL_19:
  v12 = 0;
LABEL_26:

LABEL_27:
  if (os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "getTransformedFlattened Transform", "", &v17, 2u);
  }

  objc_autoreleasePoolPop(v5);

  return v12;
}

- (id)expandKeyNameLengths:(id)lengths
{
  v15 = *MEMORY[0x1E69E9840];
  lengthsCopy = lengths;
  v5 = objc_autoreleasePoolPush();
  v6 = [(WANWActivityStatistics *)self obj];

  if (v6)
  {
    if (os_signpost_enabled(MEMORY[0x1E69E9C10]))
    {
      LOWORD(v11) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "expandKeyNameLengths", "", &v11, 2u);
    }

    v7 = [(WANWActivityStatistics *)self obj];
    v8 = [v7 expandKeyNameLengthsFrom:lengthsCopy];

    if (os_signpost_enabled(MEMORY[0x1E69E9C10]))
    {
      LOWORD(v11) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "expandKeyNameLengths", "", &v11, 2u);
    }
  }

  else
  {
    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446466;
      v12 = "[WANWActivityStatistics expandKeyNameLengths:]";
      v13 = 1024;
      v14 = 255;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:No WATransformForTelemetry alloctated", &v11, 0x12u);
    }

    v8 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v8;
}

@end
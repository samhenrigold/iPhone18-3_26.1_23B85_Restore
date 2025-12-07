@interface CVNLPPerformanceResult
- (CVNLPPerformanceResult)initWithName:(id)name;
- (id)description;
- (id)dict;
@end

@implementation CVNLPPerformanceResult

- (CVNLPPerformanceResult)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = CVNLPPerformanceResult;
  v6 = [(CVNLPPerformanceResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
  }

  return v7;
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_name(self, a2, v2, v3);
  v9 = objc_msgSend_stringWithFormat_(v5, v7, @"[%@: Peak-Delta: %lf, CPU-Time: %lf, Interval: %lf]", v8, v6, *&self->peakdelta, *&self->cpuTime, *&self->timeInterval);

  return v9;
}

- (id)dict
{
  v26[5] = *MEMORY[0x1E69E9840];
  v25[0] = @"maxpeak";
  v5 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, v2, v3, self->maxpeak);
  v26[0] = v5;
  v25[1] = @"peakdelta";
  v9 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v6, v7, v8, self->peakdelta);
  v26[1] = v9;
  v25[2] = @"recentpeak";
  v13 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v10, v11, v12, self->recentpeak);
  v26[2] = v13;
  v25[3] = @"current";
  v17 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v14, v15, v16, self->current);
  v26[3] = v17;
  v25[4] = @"timeInterval";
  v21 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v18, v19, v20, self->timeInterval);
  v26[4] = v21;
  v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v22, v26, v25, 5);

  return v23;
}

@end
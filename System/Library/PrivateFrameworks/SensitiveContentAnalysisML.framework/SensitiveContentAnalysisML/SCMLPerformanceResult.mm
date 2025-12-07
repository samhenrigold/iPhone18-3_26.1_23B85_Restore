@interface SCMLPerformanceResult
- (SCMLPerformanceResult)initWithName:(id)name;
- (id)description;
- (id)dict;
@end

@implementation SCMLPerformanceResult

- (SCMLPerformanceResult)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = SCMLPerformanceResult;
  v6 = [(SCMLPerformanceResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(SCMLPerformanceResult *)self name];
  v5 = [v3 stringWithFormat:@"[%@: Peak-Delta: %lf, CPU-Time: %lf, Interval: %lf]", name, *&self->peakdelta, *&self->cpuTime, *&self->timeInterval];

  return v5;
}

- (id)dict
{
  v11[5] = *MEMORY[0x1E69E9840];
  v10[0] = @"maxpeak";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->maxpeak];
  v11[0] = v3;
  v10[1] = @"peakdelta";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->peakdelta];
  v11[1] = v4;
  v10[2] = @"recentpeak";
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->recentpeak];
  v11[2] = v5;
  v10[3] = @"current";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->current];
  v11[3] = v6;
  v10[4] = @"timeInterval";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->timeInterval];
  v11[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

@end
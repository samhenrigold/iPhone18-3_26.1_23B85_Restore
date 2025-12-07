@interface AXMetricSession
- (AXMetricSession)initWithCoder:(id)coder;
- (AXMetricSession)initWithName:(id)name measurementsEnabled:(BOOL)enabled orEnabledByEnvironmentVariables:(id)variables;
- (id)generateReport;
- (id)measure:(id)measure tryExecute:(id)execute;
- (id)startMeasure:(id)measure;
- (void)encodeWithCoder:(id)coder;
- (void)measure:(id)measure execute:(id)execute;
@end

@implementation AXMetricSession

- (AXMetricSession)initWithName:(id)name measurementsEnabled:(BOOL)enabled orEnabledByEnvironmentVariables:(id)variables
{
  enabledCopy = enabled;
  v28 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  variablesCopy = variables;
  v26.receiver = self;
  v26.super_class = AXMetricSession;
  v10 = [(AXMetricSession *)&v26 init];
  v11 = v10;
  if (v10)
  {
    [(AXMetricSession *)v10 setEnabledByEnvironmentVariables:variablesCopy];
    [(AXMetricSession *)v11 setName:nameCopy];
    array = [MEMORY[0x1E695DF70] array];
    [(AXMetricSession *)v11 setChildMetrics:array];

    [(AXMetricSession *)v11 setMeasurementsEnabled:enabledCopy];
    if (!enabledCopy)
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      environment = [processInfo environment];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v15 = variablesCopy;
      v16 = [v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v23;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v23 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [environment objectForKey:{*(*(&v22 + 1) + 8 * i), v22}];

            if (v20)
            {
              [(AXMetricSession *)v11 setMeasurementsEnabled:1];
              goto LABEL_13;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }
  }

  return v11;
}

- (AXMetricSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeBoolForKey:@"measurementsEnabled"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"enabledByEnvironmentVariables"];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v11 setWithObjects:{v12, v13, v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"childMetrics"];

  v17 = [(AXMetricSession *)self initWithName:v5 measurementsEnabled:v6 orEnabledByEnvironmentVariables:v10];
  v18 = v17;
  if (v17)
  {
    childMetrics = [(AXMetricSession *)v17 childMetrics];
    [childMetrics addObjectsFromArray:v16];
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(AXMetricSession *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  [coderCopy encodeBool:-[AXMetricSession measurementsEnabled](self forKey:{"measurementsEnabled"), @"measurementsEnabled"}];
  enabledByEnvironmentVariables = [(AXMetricSession *)self enabledByEnvironmentVariables];
  [coderCopy encodeObject:enabledByEnvironmentVariables forKey:@"enabledByEnvironmentVariables"];

  childMetrics = [(AXMetricSession *)self childMetrics];
  [coderCopy encodeObject:childMetrics forKey:@"childMetrics"];
}

- (void)measure:(id)measure execute:(id)execute
{
  measureCopy = measure;
  executeCopy = execute;
  measurementsEnabled = [(AXMetricSession *)self measurementsEnabled];
  if (measurementsEnabled)
  {
    v8 = [(AXMetric *)[AXBlockMetric alloc] _initWithName:measureCopy session:self];
    childMetrics = [(AXMetricSession *)self childMetrics];
    [childMetrics addObject:v8];

    [v8 _startMeasurement];
    executeCopy[2](executeCopy, v8);

    [v8 _endMeasurement];
  }

  else
  {
    v8 = AXSharedInertMetric(measurementsEnabled);
    executeCopy[2](executeCopy, v8);
  }
}

- (id)measure:(id)measure tryExecute:(id)execute
{
  measureCopy = measure;
  executeCopy = execute;
  measurementsEnabled = [(AXMetricSession *)self measurementsEnabled];
  if (measurementsEnabled)
  {
    v9 = [(AXMetric *)[AXBlockMetric alloc] _initWithName:measureCopy session:self];
    childMetrics = [(AXMetricSession *)self childMetrics];
    [childMetrics addObject:v9];

    [v9 _startMeasurement];
    v11 = executeCopy[2](executeCopy, v9);

    [v9 _endMeasurement];
  }

  else
  {
    v9 = AXSharedInertMetric(measurementsEnabled);
    v11 = executeCopy[2](executeCopy, v9);
  }

  return v11;
}

- (id)startMeasure:(id)measure
{
  measureCopy = measure;
  measurementsEnabled = [(AXMetricSession *)self measurementsEnabled];
  if (measurementsEnabled)
  {
    v6 = [(AXMetric *)[AXBookendMetric alloc] _initWithName:measureCopy session:self];
    childMetrics = [(AXMetricSession *)self childMetrics];
    [childMetrics addObject:v6];

    [v6 _startMeasurement];
  }

  else
  {
    v6 = AXSharedInertMetric(measurementsEnabled);
  }

  return v6;
}

- (id)generateReport
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(AXMetricSession *)self measurementsEnabled])
  {
    v3 = MEMORY[0x1E696AD60];
    name = [(AXMetricSession *)self name];
    v5 = [v3 stringWithFormat:@"Perf report for '%@':\n", name];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    childMetrics = [(AXMetricSession *)self childMetrics];
    v7 = [childMetrics countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(childMetrics);
          }

          [*(*(&v13 + 1) + 8 * i) _appendToReport:v5 withIndentation:1];
        }

        v8 = [childMetrics countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v11 = MEMORY[0x1E696AEC0];
    childMetrics = [(AXMetricSession *)self name];
    v5 = [v11 stringWithFormat:@"Measurements are not being collected for: '%@'", childMetrics];
  }

  return v5;
}

@end
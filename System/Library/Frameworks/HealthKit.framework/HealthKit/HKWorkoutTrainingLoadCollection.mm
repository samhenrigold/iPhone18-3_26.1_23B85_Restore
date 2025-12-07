@interface HKWorkoutTrainingLoadCollection
- (HKWorkoutTrainingLoadCollection)initWithCoder:(id)coder;
- (HKWorkoutTrainingLoadCollection)initWithTotalTrainingLoads:(id)loads;
- (id)_init;
- (id)trainingLoad;
- (id)trainingLoadForDate:(id)date;
- (void)addTrainingLoad:(id)load;
@end

@implementation HKWorkoutTrainingLoadCollection

- (HKWorkoutTrainingLoadCollection)initWithTotalTrainingLoads:(id)loads
{
  loadsCopy = loads;
  v9.receiver = self;
  v9.super_class = HKWorkoutTrainingLoadCollection;
  v5 = [(HKWorkoutTrainingLoadCollection *)&v9 init];
  if (v5)
  {
    v6 = [loadsCopy copy];
    trainingLoads = v5->_trainingLoads;
    v5->_trainingLoads = v6;
  }

  return v5;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = HKWorkoutTrainingLoadCollection;
  return [(HKWorkoutTrainingLoadCollection *)&v3 init];
}

- (void)addTrainingLoad:(id)load
{
  loadCopy = load;
  trainingLoads = self->_trainingLoads;
  v13 = loadCopy;
  if (trainingLoads)
  {
    lastObject = [(NSMutableArray *)trainingLoads lastObject];
    dateInterval = [lastObject dateInterval];
    startDate = [dateInterval startDate];

    dateInterval2 = [v13 dateInterval];
    startDate2 = [dateInterval2 startDate];
    v11 = [startDate2 isEqualToDate:startDate];

    if (v11)
    {
      [(NSMutableArray *)self->_trainingLoads removeObject:lastObject];
    }
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lastObject = self->_trainingLoads;
    self->_trainingLoads = v12;
  }

  [(NSMutableArray *)self->_trainingLoads addObject:v13];
}

- (id)trainingLoad
{
  v2 = [(NSMutableArray *)self->_trainingLoads copy];

  return v2;
}

- (id)trainingLoadForDate:(id)date
{
  v18 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_trainingLoads;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        dateInterval = [v9 dateInterval];
        v11 = [dateInterval containsDate:dateCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (HKWorkoutTrainingLoadCollection)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HKWorkoutTrainingLoadCollection;
  v5 = [(HKWorkoutTrainingLoadCollection *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"trainingLoads"];
    trainingLoads = v5->_trainingLoads;
    v5->_trainingLoads = v9;
  }

  return v5;
}

@end
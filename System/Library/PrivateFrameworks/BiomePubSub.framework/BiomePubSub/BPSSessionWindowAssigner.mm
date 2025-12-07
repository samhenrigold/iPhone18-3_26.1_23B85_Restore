@interface BPSSessionWindowAssigner
- (BPSSessionWindowAssigner)initWithGap:(double)gap timestamp:(id)timestamp aggregator:(id)aggregator;
- (id)assignWindow:(id)window input:(id)input;
- (id)updateAndReturnNewWindowStates:(id)states input:(id)input;
@end

@implementation BPSSessionWindowAssigner

- (BPSSessionWindowAssigner)initWithGap:(double)gap timestamp:(id)timestamp aggregator:(id)aggregator
{
  timestampCopy = timestamp;
  aggregatorCopy = aggregator;
  if (gap <= 0.0)
  {
    [BPSSessionWindowAssigner initWithGap:a2 timestamp:self aggregator:?];
  }

  v18.receiver = self;
  v18.super_class = BPSSessionWindowAssigner;
  v11 = [(BPSSessionWindowAssigner *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_gap = gap;
    objc_storeStrong(&v11->_aggregator, aggregator);
    v13 = [timestampCopy copy];
    timestamp = v12->_timestamp;
    v12->_timestamp = v13;

    v12->_identifier = 0;
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    lastTimestamp = v12->_lastTimestamp;
    v12->_lastTimestamp = distantPast;
  }

  return v12;
}

- (id)assignWindow:(id)window input:(id)input
{
  v50 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  inputCopy = input;
  v9 = [MEMORY[0x1E695DFD8] set];
  v10 = [v9 mutableCopy];

  v44 = inputCopy;
  v11 = (*(self->_timestamp + 2))();
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;
  selfCopy = self;
  lastTimestamp = self->_lastTimestamp;
  p_lastTimestamp = &self->_lastTimestamp;
  [(NSDate *)lastTimestamp timeIntervalSinceReferenceDate];
  if (v13 < v16)
  {
    [BPSSessionWindowAssigner assignWindow:a2 input:selfCopy];
  }

  objc_storeStrong(p_lastTimestamp, v11);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v17 = windowCopy;
  v18 = [v17 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v18)
  {
    v19 = v18;
    v41 = v11;
    v42 = v10;
    v20 = 0;
    v21 = *v46;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v46 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v45 + 1) + 8 * i);
        if (v20)
        {
          identifier = [*(*(&v45 + 1) + 8 * i) identifier];
          integerValue = [identifier integerValue];
          identifier2 = [v20 identifier];
          integerValue2 = [identifier2 integerValue];

          if (integerValue <= integerValue2)
          {
            continue;
          }
        }

        v28 = v23;

        v20 = v28;
      }

      v19 = [v17 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v19);

    if (v20)
    {
      v10 = v42;
      [v42 addObject:v20];
      dateInterval = [v20 dateInterval];
      v11 = v41;
      v30 = [dateInterval containsDate:v41];

      if (v30)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v11 = v41;
      v10 = v42;
    }
  }

  else
  {

    v20 = 0;
  }

  v31 = selfCopy->_gap + -0.0001;
  v32 = [BPSSessionWindow alloc];
  v33 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v11 duration:v31];
  gap = selfCopy->_gap;
  aggregator = selfCopy->_aggregator;
  timestamp = selfCopy->_timestamp;
  v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", selfCopy->_identifier];
  v38 = [(BPSSessionWindow *)v32 initWithDateInterval:v33 gap:timestamp timestamp:aggregator aggregator:v37 identifier:gap];
  [v10 addObject:v38];

  ++selfCopy->_identifier;
LABEL_19:
  v39 = v10;

  return v10;
}

- (id)updateAndReturnNewWindowStates:(id)states input:(id)input
{
  v71 = *MEMORY[0x1E69E9840];
  statesCopy = states;
  inputCopy = input;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  selfCopy = self;
  v57 = inputCopy;
  v10 = (*(self->_timestamp + 2))();
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v11 = statesCopy;
  v12 = [v11 countByEnumeratingWithState:&v65 objects:v70 count:16];
  v55 = v9;
  obj = v11;
  if (!v12)
  {

    v14 = 0;
    goto LABEL_16;
  }

  v13 = v12;
  v14 = 0;
  v59 = *v66;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v66 != v59)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v65 + 1) + 8 * i);
      if (v14)
      {
        [*(*(&v65 + 1) + 8 * i) identifier];
        v17 = v10;
        v19 = v18 = v8;
        integerValue = [v19 integerValue];
        [v14 identifier];
        v22 = v21 = v14;
        integerValue2 = [v22 integerValue];

        v14 = v21;
        v8 = v18;
        v10 = v17;
        if (integerValue <= integerValue2)
        {
          continue;
        }
      }

      v24 = v16;

      v14 = v24;
    }

    v13 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
  }

  while (v13);

  if (!v14)
  {
    v9 = v55;
    goto LABEL_16;
  }

  [v8 addObject:v14];
  dateInterval = [v14 dateInterval];
  v26 = [dateInterval containsDate:v10];

  v9 = v55;
  if ((v26 & 1) == 0)
  {
LABEL_16:
    v27 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v10 duration:selfCopy->_gap + -0.0001];
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", selfCopy->_identifier];
    v29 = [BPSSessionWindowState alloc];
    [(BPSAggregator *)selfCopy->_aggregator accumulator];
    v31 = v30 = v14;
    v32 = [(BPSSessionWindowState *)v29 initWithDateInterval:v27 identifier:v28 aggregate:v31 completed:0];

    v14 = v30;
    [v8 addObject:v32];
    [v9 addObject:v32];
    ++selfCopy->_identifier;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v60 = v8;
  v33 = [v60 countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v62;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v62 != v35)
        {
          objc_enumerationMutation(v60);
        }

        v37 = *(*(&v61 + 1) + 8 * j);
        dateInterval2 = [v37 dateInterval];
        v39 = [dateInterval2 containsDate:v10];

        if (v39)
        {
          closure = [(BPSAggregator *)selfCopy->_aggregator closure];
          aggregate = [v37 aggregate];
          v42 = (closure)[2](closure, aggregate, v57);
          [v37 setAggregate:v42];

          [v10 timeIntervalSinceReferenceDate];
          v44 = v43;
          dateInterval3 = [v37 dateInterval];
          startDate = [dateInterval3 startDate];
          [startDate timeIntervalSinceReferenceDate];
          v48 = v44 - v47 + selfCopy->_gap + -0.0001;

          v49 = objc_alloc(MEMORY[0x1E696AB80]);
          dateInterval4 = [v37 dateInterval];
          startDate2 = [dateInterval4 startDate];
          v52 = [v49 initWithStartDate:startDate2 duration:v48];
          [v37 setDateInterval:v52];
        }

        else
        {
          [v37 setCompleted:1];
        }
      }

      v34 = [v60 countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v34);
  }

  v53 = v55;
  return v55;
}

- (void)initWithGap:(uint64_t)a1 timestamp:(uint64_t)a2 aggregator:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSSessionWindowAssigner.m" lineNumber:285 description:@"Expecting gap to be greater than 0"];
}

- (void)assignWindow:(uint64_t)a1 input:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSSessionWindowAssigner.m" lineNumber:305 description:@"Session window expects timestamps to be monotonically increasing"];
}

@end
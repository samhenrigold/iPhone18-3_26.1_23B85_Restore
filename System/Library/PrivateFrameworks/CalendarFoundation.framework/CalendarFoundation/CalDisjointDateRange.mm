@interface CalDisjointDateRange
+ (id)disjointRangeWithDistinctRanges:(id)ranges;
+ (id)disjointRangeWithSingleRange:(id)range;
- (BOOL)containsDate:(id)date;
- (BOOL)containsRange:(id)range;
- (BOOL)intersectsRange:(id)range;
- (BOOL)isEqual:(id)equal;
- (CalDisjointDateRange)initWithCoder:(id)coder;
- (CalDisjointDateRange)initWithDistinctRanges:(id)ranges;
- (double)totalDuration;
- (id)addDisjointRange:(id)range;
- (id)addRange:(id)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)intersectionWithDisjointRange:(id)range;
- (id)intersectionWithRange:(id)range;
- (id)sortedDistinctRanges;
- (id)subtractDisjointRange:(id)range;
- (id)subtractRange:(id)range;
@end

@implementation CalDisjointDateRange

- (id)description
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  sortedDistinctRanges = [(CalDisjointDateRange *)self sortedDistinctRanges];
  v5 = [sortedDistinctRanges countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(sortedDistinctRanges);
        }

        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", *(*(&v12 + 1) + 8 * i)];
        [v3 appendString:v9];
      }

      v6 = [sortedDistinctRanges countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithString:v3];

  return v10;
}

- (id)sortedDistinctRanges
{
  distinctRanges = [(CalDisjointDateRange *)self distinctRanges];
  allObjects = [distinctRanges allObjects];
  v4 = [allObjects sortedArrayUsingComparator:&__block_literal_global_164];

  return v4;
}

uint64_t __44__CalDisjointDateRange_sortedDistinctRanges__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)disjointRangeWithDistinctRanges:(id)ranges
{
  rangesCopy = ranges;
  v4 = [[CalDisjointDateRange alloc] initWithDistinctRanges:rangesCopy];

  return v4;
}

+ (id)disjointRangeWithSingleRange:(id)range
{
  rangeCopy = range;
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E695DFD8] setWithObject:rangeCopy];

  v6 = [v4 disjointRangeWithDistinctRanges:v5];

  return v6;
}

- (CalDisjointDateRange)initWithDistinctRanges:(id)ranges
{
  rangesCopy = ranges;
  v9.receiver = self;
  v9.super_class = CalDisjointDateRange;
  v5 = [(CalDisjointDateRange *)&v9 init];
  if (v5)
  {
    if (rangesCopy)
    {
      v6 = [rangesCopy copy];
    }

    else
    {
      v6 = objc_opt_new();
    }

    distinctRanges = v5->_distinctRanges;
    v5->_distinctRanges = v6;
  }

  return v5;
}

- (double)totalDuration
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  distinctRanges = [(CalDisjointDateRange *)self distinctRanges];
  v3 = [distinctRanges countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(distinctRanges);
        }

        [*(*(&v10 + 1) + 8 * i) duration];
        v6 = v6 + v8;
      }

      v4 = [distinctRanges countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (BOOL)containsDate:(id)date
{
  v15 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  distinctRanges = [(CalDisjointDateRange *)self distinctRanges];
  v6 = [distinctRanges countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(distinctRanges);
        }

        if ([*(*(&v10 + 1) + 8 * i) containsDate:dateCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [distinctRanges countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (BOOL)containsRange:(id)range
{
  v15 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  distinctRanges = [(CalDisjointDateRange *)self distinctRanges];
  v6 = [distinctRanges countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(distinctRanges);
        }

        if ([*(*(&v10 + 1) + 8 * i) containsRange:rangeCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [distinctRanges countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (BOOL)intersectsRange:(id)range
{
  v15 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  distinctRanges = [(CalDisjointDateRange *)self distinctRanges];
  v6 = [distinctRanges countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(distinctRanges);
        }

        if ([*(*(&v10 + 1) + 8 * i) intersectsRange:rangeCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [distinctRanges countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (id)addRange:(id)range
{
  v37 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  v5 = MEMORY[0x1E695DFA8];
  distinctRanges = [(CalDisjointDateRange *)self distinctRanges];
  v7 = [v5 setWithSet:distinctRanges];

  v8 = [MEMORY[0x1E695DFA8] set];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  distinctRanges2 = [(CalDisjointDateRange *)self distinctRanges];
  v10 = [distinctRanges2 copy];

  v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        if ([v15 intersectsRange:rangeCopy allowSinglePointIntersection:1])
        {
          [v8 addObject:v15];
          [v7 removeObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v12);
  }

  v16 = [CalDateRange rangeWithRange:rangeCopy];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = v8;
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      v21 = 0;
      v22 = v16;
      do
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v16 = [v22 unionRange:{*(*(&v27 + 1) + 8 * v21), v27}];

        ++v21;
        v22 = v16;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v19);
  }

  v23 = [MEMORY[0x1E695DFA8] setWithObject:v16];
  if ([v7 count])
  {
    allObjects = [v7 allObjects];
    [v23 addObjectsFromArray:allObjects];
  }

  v25 = [objc_opt_class() disjointRangeWithDistinctRanges:v23];

  return v25;
}

- (id)addDisjointRange:(id)range
{
  v17 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  distinctRanges = [range distinctRanges];
  v6 = [distinctRanges countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      v10 = selfCopy;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(distinctRanges);
        }

        selfCopy = [(CalDisjointDateRange *)v10 addRange:*(*(&v12 + 1) + 8 * v9)];

        ++v9;
        v10 = selfCopy;
      }

      while (v7 != v9);
      v7 = [distinctRanges countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return selfCopy;
}

- (id)subtractRange:(id)range
{
  v22 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  v5 = [MEMORY[0x1E695DFA8] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  distinctRanges = [(CalDisjointDateRange *)self distinctRanges];
  v7 = [distinctRanges countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(distinctRanges);
        }

        v11 = [*(*(&v17 + 1) + 8 * i) subtractRange:rangeCopy];
        distinctRanges2 = [v11 distinctRanges];

        if (distinctRanges2)
        {
          distinctRanges3 = [v11 distinctRanges];
          allObjects = [distinctRanges3 allObjects];
          [v5 addObjectsFromArray:allObjects];
        }
      }

      v8 = [distinctRanges countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [CalDisjointDateRange disjointRangeWithDistinctRanges:v5];

  return v15;
}

- (id)subtractDisjointRange:(id)range
{
  v17 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  distinctRanges = [range distinctRanges];
  v6 = [distinctRanges countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      v10 = selfCopy;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(distinctRanges);
        }

        selfCopy = [(CalDisjointDateRange *)v10 subtractRange:*(*(&v12 + 1) + 8 * v9)];

        ++v9;
        v10 = selfCopy;
      }

      while (v7 != v9);
      v7 = [distinctRanges countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return selfCopy;
}

- (id)intersectionWithRange:(id)range
{
  v19 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  v5 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  distinctRanges = [(CalDisjointDateRange *)self distinctRanges];
  v7 = [distinctRanges countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(distinctRanges);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) intersectionWithRange:rangeCopy];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [distinctRanges countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [CalDisjointDateRange disjointRangeWithDistinctRanges:v5];

  return v12;
}

- (id)intersectionWithDisjointRange:(id)range
{
  v22 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  v5 = [MEMORY[0x1E695DFA8] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  distinctRanges = [rangeCopy distinctRanges];
  v7 = [distinctRanges countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(distinctRanges);
        }

        v11 = [(CalDisjointDateRange *)self intersectionWithRange:*(*(&v17 + 1) + 8 * i)];
        distinctRanges2 = [v11 distinctRanges];

        if (distinctRanges2)
        {
          distinctRanges3 = [v11 distinctRanges];
          allObjects = [distinctRanges3 allObjects];
          [v5 addObjectsFromArray:allObjects];
        }
      }

      v8 = [distinctRanges countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [CalDisjointDateRange disjointRangeWithDistinctRanges:v5];

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  distinctRanges = [(CalDisjointDateRange *)self distinctRanges];
  v6 = [v4 initWithDistinctRanges:distinctRanges];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v7 = 1;
    }

    else
    {
      distinctRanges = [(CalDisjointDateRange *)self distinctRanges];
      distinctRanges2 = [(CalDisjointDateRange *)equalCopy distinctRanges];
      v7 = [distinctRanges isEqualToSet:distinctRanges2];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CalDisjointDateRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_distinctRanges"];

  v6 = [v5 copy];
  distinctRanges = self->_distinctRanges;
  self->_distinctRanges = v6;

  return self;
}

@end
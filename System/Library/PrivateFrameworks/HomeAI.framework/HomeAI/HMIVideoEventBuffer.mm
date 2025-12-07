@interface HMIVideoEventBuffer
- (HMIVideoEventBuffer)initWithMaxCapacity:(int64_t)capacity;
- (id)description;
- (id)extractObjectsInTimeRange:(id *)range;
- (id)neighborsOfObject:(id)object;
- (id)objectsInTimeRange:(id *)range includeEnd:(BOOL)end;
- (void)addObject:(id)object;
- (void)removeAllObjects;
@end

@implementation HMIVideoEventBuffer

- (HMIVideoEventBuffer)initWithMaxCapacity:(int64_t)capacity
{
  v8.receiver = self;
  v8.super_class = HMIVideoEventBuffer;
  v4 = [(HMIVideoEventBuffer *)&v8 init];
  if (v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    data = v4->_data;
    v4->_data = array;

    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_maxCapacity = capacity;
  }

  return v4;
}

- (void)removeAllObjects
{
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_data removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock_with_options();
  if ([(NSMutableArray *)self->_data count]>= self->_maxCapacity)
  {
    [(NSMutableArray *)self->_data hmf_removeFirstObject];
  }

  data = self->_data;
  [(NSMutableArray *)data count];
  v5 = [NSMutableArray indexOfObject:"indexOfObject:inSortedRange:options:usingComparator:" inSortedRange:? options:? usingComparator:?];
  v6 = self->_data;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)v6 addObject:?];
  }

  else
  {
    [NSMutableArray insertObject:v6 atIndex:"insertObject:atIndex:"];
  }

  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __33__HMIVideoEventBuffer_addObject___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (!v4)
  {
    memset(&time1, 0, sizeof(time1));
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(&v9, 0, sizeof(v9));
    goto LABEL_6;
  }

  [&time1 time];
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  [&v9 time];
LABEL_6:
  v7 = CMTimeCompare(&time1, &v9);

  return v7;
}

- (id)objectsInTimeRange:(id *)range includeEnd:(BOOL)end
{
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableArray *)self->_data hmf_objectsPassingTest:?];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

BOOL __53__HMIVideoEventBuffer_objectsInTimeRange_includeEnd___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 80) != 1)
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 48);
  *&v8.start.value = *(a1 + 32);
  *&v8.start.epoch = v4;
  *&v8.duration.timescale = *(a1 + 64);
  CMTimeRangeGetEnd(&time1, &v8);
  if (v3)
  {
    [&v8 time];
  }

  else
  {
    memset(&v8, 0, 24);
  }

  if (!CMTimeCompare(&time1, &v8.start))
  {
    v6 = 1;
  }

  else
  {
LABEL_6:
    if (v3)
    {
      [&time1 time];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v5 = *(a1 + 48);
    *&v8.start.value = *(a1 + 32);
    *&v8.start.epoch = v5;
    *&v8.duration.timescale = *(a1 + 64);
    v6 = CMTimeRangeContainsTime(&v8, &time1) != 0;
  }

  return v6;
}

- (id)extractObjectsInTimeRange:(id *)range
{
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableArray *)self->_data indexesOfObjectsPassingTest:MEMORY[0x277D85DD0], 3221225472, __49__HMIVideoEventBuffer_extractObjectsInTimeRange___block_invoke, &__block_descriptor_80_e32_B32__0___HMIVideoEvent__8Q16_B24l, *&range->var0.var0, range->var0.var3, range->var1.var0, *&range->var1.var1];
  v6 = [(NSMutableArray *)self->_data objectsAtIndexes:?];
  [(NSMutableArray *)self->_data removeObjectsAtIndexes:?];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

BOOL __49__HMIVideoEventBuffer_extractObjectsInTimeRange___block_invoke(_OWORD *a1, void *a2)
{
  if (a2)
  {
    [&time time];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v3 = a1[3];
  *&v5.start.value = a1[2];
  *&v5.start.epoch = v3;
  *&v5.duration.timescale = a1[4];
  return CMTimeRangeContainsTime(&v5, &time) != 0;
}

- (id)neighborsOfObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock_with_options();
  data = self->_data;
  [(NSMutableArray *)data count];
  v6 = [NSMutableArray indexOfObject:"indexOfObject:inSortedRange:options:usingComparator:" inSortedRange:? options:? usingComparator:?];
  if (v6 && v6 < [(NSMutableArray *)self->_data count])
  {
    v7 = [(NSMutableArray *)self->_data objectAtIndex:?];
    v10 = [(NSMutableArray *)self->_data objectAtIndex:?];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

LABEL_6:
    goto LABEL_8;
  }

  if (v6 < [(NSMutableArray *)self->_data count])
  {
    v7 = [(NSMutableArray *)self->_data objectAtIndex:?];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:?];
    goto LABEL_6;
  }

  v8 = MEMORY[0x277CBEBF8];
LABEL_8:
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

uint64_t __41__HMIVideoEventBuffer_neighborsOfObject___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (!v4)
  {
    memset(&time1, 0, sizeof(time1));
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(&v9, 0, sizeof(v9));
    goto LABEL_6;
  }

  [&time1 time];
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  [&v9 time];
LABEL_6:
  v7 = CMTimeCompare(&time1, &v9);

  return v7;
}

- (id)description
{
  v2 = [(NSMutableArray *)self->_data na_map:?];
  v3 = [v2 componentsJoinedByString:?];

  return v3;
}

id __34__HMIVideoEventBuffer_description__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [&v4 time];
  }

  else
  {
    memset(&v4, 0, sizeof(v4));
  }

  v2 = HMICMTimeDescription(&v4);

  return v2;
}

@end
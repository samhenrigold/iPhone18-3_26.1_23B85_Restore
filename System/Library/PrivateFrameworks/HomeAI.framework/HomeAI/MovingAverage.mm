@interface MovingAverage
- (MovingAverage)initWithWindowSize:(unint64_t)size;
- (double)movingAverageForInterval:(double)interval defaultValue:(double)value;
- (void)addNumber:(id)number;
@end

@implementation MovingAverage

- (MovingAverage)initWithWindowSize:(unint64_t)size
{
  v13.receiver = self;
  v13.super_class = MovingAverage;
  v4 = [(MovingAverage *)&v13 init];
  v5 = v4;
  if (v4)
  {
    if (!size)
    {
      v9 = MEMORY[0x277CBEAD8];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:0];
      v11 = [v9 exceptionWithName:? reason:? userInfo:?];
      v12 = v11;

      objc_exception_throw(v11);
    }

    v4->_windowSize = size;
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    queue = v5->_queue;
    v5->_queue = v6;

    v5->_movingAverage = 0.0;
    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)addNumber:(id)number
{
  numberCopy = number;
  if ([(MovingAverage *)self windowSize])
  {
    os_unfair_lock_lock_with_options();
    queue = [(MovingAverage *)self queue];
    v6 = [queue count];
    windowSize = [(MovingAverage *)self windowSize];

    if (v6 >= windowSize)
    {
      queue2 = [(MovingAverage *)self queue];
      [queue2 hmf_removeFirstObject];
    }

    queue3 = [(MovingAverage *)self queue];
    v10 = [[MovingAverageEntry alloc] initWithValue:?];
    [queue3 addObject:?];

    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v13[3] = 0;
    queue4 = [(MovingAverage *)self queue];
    [queue4 na_each:?];

    queue5 = [(MovingAverage *)self queue];
    [queue5 count];
    [(MovingAverage *)self setMovingAverage:?];

    _Block_object_dispose(v13, 8);
    os_unfair_lock_unlock(&self->_lock);
  }
}

void __27__MovingAverage_addNumber___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 value];
  [v4 doubleValue];
  *(*(*(a1 + 32) + 8) + 24) = v3 + *(*(*(a1 + 32) + 8) + 24);
}

- (double)movingAverageForInterval:(double)interval defaultValue:(double)value
{
  os_unfair_lock_lock_with_options();
  v6 = [MEMORY[0x277CBEAA8] now];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = [(MovingAverage *)self queue];
  v11 = MEMORY[0x277D85DD0];
  v8 = v6;
  [queue na_each:{v11, 3221225472, __55__MovingAverage_movingAverageForInterval_defaultValue___block_invoke, &unk_278753200}];

  v9 = *(v17 + 6);
  if (v9)
  {
    value = v13[3] / v9;
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  os_unfair_lock_unlock(&self->_lock);
  return value;
}

void __55__MovingAverage_movingAverageForInterval_defaultValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = v3;
  v5 = [v3 date];
  [v4 timeIntervalSinceDate:?];
  v7 = v6;

  if (v7 < *(a1 + 56))
  {
    v8 = [v10 value];
    [v8 doubleValue];
    *(*(*(a1 + 40) + 8) + 24) = v9 + *(*(*(a1 + 40) + 8) + 24);

    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

@end
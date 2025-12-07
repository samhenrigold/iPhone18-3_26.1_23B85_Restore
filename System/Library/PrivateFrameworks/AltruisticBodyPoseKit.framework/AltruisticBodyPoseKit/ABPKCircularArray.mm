@interface ABPKCircularArray
- (ABPKCircularArray)initWithCapacity:(int64_t)capacity;
- (NSArray)contents;
- (void)add:(id)add;
@end

@implementation ABPKCircularArray

- (ABPKCircularArray)initWithCapacity:(int64_t)capacity
{
  v10.receiver = self;
  v10.super_class = ABPKCircularArray;
  v4 = [(ABPKCircularArray *)&v10 init];
  v5 = v4;
  if (v4)
  {
    if (capacity <= 1)
    {
      capacityCopy = 1;
    }

    else
    {
      capacityCopy = capacity;
    }

    v4->_capacity = capacityCopy;
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v4->_capacity];
    array = v5->_array;
    v5->_array = v7;
  }

  return v5;
}

- (NSArray)contents
{
  v2 = [(NSMutableArray *)self->_array copy];

  return v2;
}

- (void)add:(id)add
{
  v21 = *MEMORY[0x277D85DE8];
  addCopy = add;
  v5 = __ABPKLogSharedInstance(addCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    capacity = self->_capacity;
    v19 = 134217984;
    v20 = capacity;
    _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_DEBUG, " Circular buffer capacity: %lu ", &v19, 0xCu);
  }

  v8 = __ABPKLogSharedInstance(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [(NSMutableArray *)self->_array count];
    v19 = 134217984;
    v20 = v9;
    _os_log_impl(&dword_23EDDC000, v8, OS_LOG_TYPE_DEBUG, " Circular buffer count: %lu ", &v19, 0xCu);
  }

  v10 = [(NSMutableArray *)self->_array count];
  v11 = self->_capacity;
  v12 = __ABPKLogSharedInstance(v10);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v10 == v11)
  {
    if (v13)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_DEBUG, " Circular buffer full ", &v19, 2u);
    }

    v15 = __ABPKLogSharedInstance(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_23EDDC000, v15, OS_LOG_TYPE_DEBUG, " Removing first element ", &v19, 2u);
    }

    v12 = __ABPKLogSharedInstance([(NSMutableArray *)self->_array removeObjectAtIndex:0]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v16 = [(NSMutableArray *)self->_array count];
      v19 = 134217984;
      v20 = v16;
      v17 = " Insert new element at the index: %lu ";
LABEL_14:
      _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_DEBUG, v17, &v19, 0xCu);
    }
  }

  else if (v13)
  {
    v18 = [(NSMutableArray *)self->_array count];
    v19 = 134217984;
    v20 = v18;
    v17 = " Inserting element to the circular buffer: %lu ";
    goto LABEL_14;
  }

  [(NSMutableArray *)self->_array addObject:addCopy];
}

@end
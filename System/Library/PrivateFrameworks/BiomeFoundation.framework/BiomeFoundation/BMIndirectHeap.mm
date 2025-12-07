@interface BMIndirectHeap
- (BMIndirectHeap)initWithHeapSize:(unint64_t)size isAscending:(id)ascending;
- (id)description;
- (unint64_t)pop;
- (unint64_t)top;
- (void)add:(unint64_t)add;
- (void)dealloc;
@end

@implementation BMIndirectHeap

- (unint64_t)pop
{
  count = self->_count;
  if (count)
  {
    array = self->_array;
    v5 = *array;
    v6 = count - 1;
    self->_count = v6;
    *array = array[v6];
    v7 = self->_count;
    if (v7 >= 2)
    {
      v8 = 0;
      v9 = 0;
      v10 = 1;
      while (1)
      {
        v11 = v8 + 2;
        if (v8 + 2 < v7 && !(*(self->_isAscending + 2))())
        {
          goto LABEL_8;
        }

        if (((*(self->_isAscending + 2))() & 1) == 0)
        {
          break;
        }

LABEL_9:
        v12 = v10;
        v13 = self->_array;
        v14 = v13[v10];
        v13[v10] = v13[v9];
        v13[v9] = v14;
        v8 = 2 * v10;
        v10 = (2 * v10) | 1;
        v7 = self->_count;
        v9 = v12;
        if (v10 >= v7)
        {
          return v5;
        }
      }

      if (v11 >= v7)
      {
        return v5;
      }

LABEL_8:
      v10 = v11;
      if ((*(self->_isAscending + 2))())
      {
        return v5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v15 = __biome_log_for_category(1);
    *buf = 0;
    v20 = buf;
    v21 = 0x2020000000;
    v22 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __21__BMIndirectHeap_pop__block_invoke;
    block[3] = &unk_1E796AC10;
    block[4] = buf;
    if (pop_onceToken != -1)
    {
      dispatch_once(&pop_onceToken, block);
    }

    v16 = v20[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v15, v16))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC15D000, v15, v16, "BMIndirectHeap pop: empty", buf, 2u);
    }

    return -1;
  }

  return v5;
}

- (void)dealloc
{
  array = self->_array;
  if (array)
  {
    free(array);
    self->_array = 0;
  }

  self->_count = 0;
  self->_size = 0;
  v4.receiver = self;
  v4.super_class = BMIndirectHeap;
  [(BMIndirectHeap *)&v4 dealloc];
}

- (BMIndirectHeap)initWithHeapSize:(unint64_t)size isAscending:(id)ascending
{
  ascendingCopy = ascending;
  if (size >= 0x1FFFFFFFFFFFFFFFLL)
  {
    [BMIndirectHeap initWithHeapSize:a2 isAscending:self];
  }

  v13.receiver = self;
  v13.super_class = BMIndirectHeap;
  v8 = [(BMIndirectHeap *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_size = size;
    v8->_array = malloc_type_malloc(8 * size, 0x100004000313F17uLL);
    v9->_count = 0;
    v10 = MEMORY[0x1AC5AD7D0](ascendingCopy);
    isAscending = v9->_isAscending;
    v9->_isAscending = v10;
  }

  return v9;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AEC0]);
  v4 = v3;
  if (self->_count)
  {
    v5 = 0;
    do
    {
      v6 = [v4 stringByAppendingFormat:@"%lu ", self->_array[v5]];

      ++v5;
      v4 = v6;
    }

    while (v5 < self->_count);
  }

  else
  {
    v6 = v3;
  }

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"size:%lu count:%lu array: %@", self->_size, self->_count, v6];

  return v7;
}

- (void)add:(unint64_t)add
{
  count = self->_count;
  if (count >= self->_size)
  {
    v9 = __biome_log_for_category(1);
    *buf = 0;
    v13 = buf;
    v14 = 0x2020000000;
    v15 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __22__BMIndirectHeap_add___block_invoke;
    block[3] = &unk_1E796AC10;
    block[4] = buf;
    if (add__onceToken != -1)
    {
      dispatch_once(&add__onceToken, block);
    }

    v10 = v13[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC15D000, v9, v10, "BMIndirectHeap add: full", buf, 2u);
    }
  }

  else
  {
    self->_count = count + 1;
    self->_array[count] = add;
    if (count)
    {
      do
      {
        v5 = count - 1;
        v6 = (count - 1) >> 1;
        if ((*(self->_isAscending + 2))())
        {
          break;
        }

        array = self->_array;
        v8 = array[count];
        array[count] = array[v6];
        array[v6] = v8;
        count = (count - 1) >> 1;
      }

      while (v5 > 1);
    }
  }
}

- (unint64_t)top
{
  if (self->_count)
  {
    return *self->_array;
  }

  else
  {
    return -1;
  }
}

- (void)initWithHeapSize:(uint64_t)a1 isAscending:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BMIndirectHeap.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"size < NSUIntegerMax / sizeof(NSUInteger)"}];
}

@end
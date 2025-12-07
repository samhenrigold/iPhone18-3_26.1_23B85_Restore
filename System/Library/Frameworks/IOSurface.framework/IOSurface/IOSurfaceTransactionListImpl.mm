@interface IOSurfaceTransactionListImpl
- (IOSurfaceTransactionListImpl)initWithSerializedData:(shared_ptr<IOSurfaceTransactionSerialized[]>)data numWritten:(unint64_t)written actualLength:(unint64_t)length selectedLength:(unint64_t)selectedLength;
- (id).cxx_construct;
- (id)transactionAtIndex:(unint64_t)index;
- (unsigned)eventPortAtIndex:(unint64_t)index;
- (void)dealloc;
@end

@implementation IOSurfaceTransactionListImpl

- (id).cxx_construct
{
  *(self + 1) = 850045863;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 8) = 0;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 36) = 1065353216;
  return self;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(self + 9))
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x1E69E9A60];
    do
    {
      mach_port_mod_refs(*v5, *(*(self + 12) + v3), 0, -1);
      ++v4;
      v3 += 24;
    }

    while (v4 < *(self + 9));
  }

  v6.receiver = self;
  v6.super_class = IOSurfaceTransactionListImpl;
  [(IOSurfaceTransactionListImpl *)&v6 dealloc];
}

- (IOSurfaceTransactionListImpl)initWithSerializedData:(shared_ptr<IOSurfaceTransactionSerialized[]>)data numWritten:(unint64_t)written actualLength:(unint64_t)length selectedLength:(unint64_t)selectedLength
{
  cntrl = data.__cntrl_;
  ptr = data.__ptr_;
  v17 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = IOSurfaceTransactionListImpl;
  v10 = [(IOSurfaceTransactionListImpl *)&v16 init:data.__ptr_];
  v11 = v10;
  if (v10)
  {
    *(v10 + 9) = cntrl;
    v13 = *ptr;
    v12 = *(ptr + 1);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(v10 + 13);
    *(v11 + 12) = v13;
    *(v11 + 13) = v12;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    *(v11 + 10) = written;
    *(v11 + 11) = length;
  }

  return v11;
}

- (id)transactionAtIndex:(unint64_t)index
{
  v23[1] = *MEMORY[0x1E69E9840];
  indexCopy = index;
  if (*(self + 9) <= index)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      [(IOSurfaceTransactionListImpl *)index transactionAtIndex:v7, v8, v9, v10, v11, v12, v13];
    }

    return 0;
  }

  else
  {
    std::mutex::lock((self + 8));
    v4 = std::__hash_table<std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,IOSurfaceTransaction *>>>::find<unsigned long>(self + 14, &indexCopy);
    if (v4)
    {
      indexCopy = v4[3];
    }

    else
    {
      indexCopy = [[IOSurfaceTransaction alloc] fromSerialized:*(self + 12) + 24 * indexCopy];
      if (indexCopy)
      {
        v23[0] = &indexCopy;
        std::__hash_table<std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,IOSurfaceTransaction *>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(self + 28, &indexCopy, &std::piecewise_construct, v23)[3] = indexCopy;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          [(IOSurfaceTransactionListImpl *)&indexCopy transactionAtIndex:v14, v15, v16, v17, v18, v19, v20];
        }

        indexCopy = 0;
      }
    }

    std::mutex::unlock((self + 8));
  }

  return indexCopy;
}

- (unsigned)eventPortAtIndex:(unint64_t)index
{
  if (*(self + 9) > index)
  {
    return *(*(self + 12) + 24 * index);
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
  if (result)
  {
    [(IOSurfaceTransactionListImpl *)index eventPortAtIndex:v5, v6, v7, v8, v9, v10, v11];
    return 0;
  }

  return result;
}

- (void)transactionAtIndex:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_2(&dword_1B0173000, MEMORY[0x1E69E9C10], a3, "[IOSurfaceTransactionListImpl transactionAtIndex] invalid index %zu", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)transactionAtIndex:(uint64_t)a3 .cold.2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_2(&dword_1B0173000, MEMORY[0x1E69E9C10], a3, "[IOSurfaceTransactionListImpl transactionAtIndex] failed to create transaction at index %zu", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)eventPortAtIndex:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_2(&dword_1B0173000, MEMORY[0x1E69E9C10], a3, "[IOSurfaceTransactionListImpl eventPortAtIndex] invalid index %zu", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end
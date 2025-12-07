@interface ULOdometryStore
+ (unsigned)bufferMaxSize;
+ (unsigned)maxEntriesInTable;
- (BOOL)deleteRecordsOlderThan:(double)than orNewerThan:(double)newerThan;
- (BOOL)flushStoreBuffer;
- (BOOL)insertDataObjects:(const void *)objects atLoiUUID:(const uuid *)d;
- (BOOL)insertDataObjectsBuffered:(const void *)buffered atLoiUUID:(const uuid *)d;
- (ULOdometryStore)initWithDbStore:(ULDatabaseStoreInterface *)store;
- (id).cxx_construct;
- (id)insertDataObjects:atLoiUUID:;
- (optional<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,)getMostRecentOdometryTimeForLoiGroupId:(ULOdometryStore *)self odometrySource:;
- (uint64_t)insertDataObjects:atLoiUUID:;
- (vector<ULOdometryDO,)efficientlyFetchOdometryEntriesWithLOIGroupUUIDs:(ULOdometryStore *)self odometrySource:(SEL)source startDate:()vector<boost:(std:(int64_t)boost :(id)a6 allocator<boost:(id)a7 :(unint64_t)a8 uuids:(BOOL)uuids :(BOOL)self0 uuid>> *)a4 :uuids::uuid endDate:fetchLimit:newest:ascending:;
- (vector<ULOdometryDO,)fetchAllRecordsWithLimit:(ULOdometryStore *)self;
- (void)insertDataObjects:atLoiUUID:;
@end

@implementation ULOdometryStore

- (ULOdometryStore)initWithDbStore:(ULDatabaseStoreInterface *)store
{
  v6.receiver = self;
  v6.super_class = ULOdometryStore;
  v3 = [(ULStore *)&v6 initWithDbStore:store];
  if (v3)
  {
    *v3->_currentLoiUUID.data = [MEMORY[0x277CCAD78] nilBoostUUID];
    *&v3->_currentLoiUUID.data[8] = v4;
  }

  return v3;
}

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULOdometryTableMaxRows"];
  v5 = [defaultsDictionary objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A71AC0 unsignedIntValue];
  }

  v7 = unsignedIntValue;

  return v7;
}

+ (unsigned)bufferMaxSize
{
  v2 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULOdometryBufferMaxSize"];
  v5 = [defaultsDictionary objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A71AA8 unsignedIntValue];
  }

  v7 = unsignedIntValue;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)objects atLoiUUID:(const uuid *)d
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  dbStore = [(ULStore *)self dbStore];
  v8 = (*(dbStore->var0 + 8))(dbStore);
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v10 = [v8 fetchLoiManagedObjectWithUUID:d withManagedObjectContext:managedObjectContext];

  if (!v10)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULOdometryStore insertDataObjects:atLoiUUID:];
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      operator new();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULOdometryStore insertDataObjects:atLoiUUID:];
    }

    v12 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v12))
    {
      operator new();
    }
  }

  v13 = v10;
  v17[0] = &unk_286A56908;
  v17[1] = &selfCopy;
  v17[2] = v13;
  v17[3] = v17;
  inserted = ULDBUtils::insertDataObjects<ULOdometryDO,ULOdometryMO>(self, objects, v17);
  std::__function::__value_func<ULOdometryMO * ()(ULOdometryDO const&)>::~__value_func[abi:ne200100](v17);

  return inserted;
}

- (BOOL)insertDataObjectsBuffered:(const void *)buffered atLoiUUID:(const uuid *)d
{
  v7 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v7 defaultsDictionary];

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULOdometryBufferingEnabled"];
  v10 = [defaultsDictionary objectForKey:v9];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v10 BOOLValue];
  }

  else
  {
    bOOLValue = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v12 = bOOLValue;

  if (v12)
  {
    if (*d->data != *self->_currentLoiUUID.data || *&d->data[8] != *&self->_currentLoiUUID.data[8])
    {
      [(ULOdometryStore *)self flushStoreBuffer];
    }

    self->_currentLoiUUID = *d;
    std::vector<ULOdometryDO>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ULOdometryDO const*>,std::__wrap_iter<ULOdometryDO const*>>(&self->_dataObjectBuffer, self->_dataObjectBuffer.__end_, *buffered, *(buffered + 1), (*(buffered + 1) - *buffered) >> 6);
    v14 = self->_dataObjectBuffer.__end_ - self->_dataObjectBuffer.__begin_;
    if (+[ULOdometryStore bufferMaxSize]<= (v14 >> 6))
    {

      return [(ULOdometryStore *)self flushStoreBuffer];
    }

    else
    {
      return 1;
    }
  }

  else
  {

    return [(ULOdometryStore *)self insertDataObjects:buffered atLoiUUID:d];
  }
}

- (BOOL)flushStoreBuffer
{
  v12 = *MEMORY[0x277D85DE8];
  p_dataObjectBuffer = &self->_dataObjectBuffer;
  if (self->_dataObjectBuffer.__begin_ == self->_dataObjectBuffer.__end_)
  {
    return 1;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULOdometryStore insertDataObjects:atLoiUUID:];
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v5 = (p_dataObjectBuffer->__end_ - p_dataObjectBuffer->__begin_) >> 6;
    v10 = 134217984;
    v11 = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEBUG, "ULOdometryStore: flushing %zu buffered odometry entries", &v10, 0xCu);
  }

  v6 = [(ULOdometryStore *)self insertDataObjects:p_dataObjectBuffer atLoiUUID:&self->_currentLoiUUID];
  begin = p_dataObjectBuffer->__begin_;
  for (i = p_dataObjectBuffer->__end_; i != begin; std::__destroy_at[abi:ne200100]<ULOdometryDO,0>(i))
  {
    i -= 64;
  }

  p_dataObjectBuffer->__end_ = begin;
  return v6;
}

- (BOOL)deleteRecordsOlderThan:(double)than orNewerThan:(double)newerThan
{
  [(ULOdometryStore *)self flushStoreBuffer];
  v8.receiver = self;
  v8.super_class = ULOdometryStore;
  return [(ULStore *)&v8 deleteRecordsOlderThan:than orNewerThan:newerThan];
}

- (vector<ULOdometryDO,)fetchAllRecordsWithLimit:(ULOdometryStore *)self
{
  [(ULOdometryStore *)self flushStoreBuffer];

  ULDBUtils::fetchAllAsDataObjectsWithLimit<ULOdometryDO,ULOdometryMO>(self, a4, retstr);
  return result;
}

- (vector<ULOdometryDO,)efficientlyFetchOdometryEntriesWithLOIGroupUUIDs:(ULOdometryStore *)self odometrySource:(SEL)source startDate:()vector<boost:(std:(int64_t)boost :(id)a6 allocator<boost:(id)a7 :(unint64_t)a8 uuids:(BOOL)uuids :(BOOL)self0 uuid>> *)a4 :uuids::uuid endDate:fetchLimit:newest:ascending:
{
  uuidsCopy = uuids;
  v52[2] = *MEMORY[0x277D85DE8];
  v47 = a6;
  v46 = a7;
  [(ULOdometryStore *)self flushStoreBuffer];
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  context = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  if (a4->var1 != a4->var0)
  {
    v43 = ULDBUtils::NSStringArrayFromBoostUUIDs(a4);
    v44 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K IN %@", @"loi", @"loiGroupId", v43];
    var0 = a4->var0;
    var1 = a4->var1;
    if (var0 == var1)
    {
LABEL_5:
      v21 = v43;
      v20 = v44;
      [array addObject:v44];
    }

    else
    {
      while (![MEMORY[0x277CCAD78] isNilBoostUUID:var0])
      {
        if (++var0 == var1)
        {
          goto LABEL_5;
        }
      }

      v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = NIL", @"loi"];
      v23 = MEMORY[0x277CCA920];
      v21 = v43;
      v52[0] = v44;
      v52[1] = v22;
      v42 = v22;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
      v25 = [v23 orPredicateWithSubpredicates:v24];
      [array addObject:v25];

      v20 = v44;
    }
  }

  if (v47)
  {
    v26 = MEMORY[0x277CCAC30];
    v27 = MEMORY[0x277CCABB0];
    [v47 timeIntervalSinceReferenceDate];
    v28 = [v27 numberWithDouble:?];
    v29 = [v26 predicateWithFormat:@"%K >= %@", @"timestamp", v28];
    [array addObject:v29];
  }

  if (v46)
  {
    v30 = MEMORY[0x277CCAC30];
    v31 = MEMORY[0x277CCABB0];
    [v46 timeIntervalSinceReferenceDate];
    v32 = [v31 numberWithDouble:?];
    v33 = [v30 predicateWithFormat:@"%K <= %@", @"timestamp", v32];
    [array addObject:v33];
  }

  boost = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %u", @"odometrySourceType", boost];
  [array addObject:boost];

  if (a8)
  {
    v35 = !uuidsCopy;
  }

  else
  {
    v35 = a10;
  }

  v36 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:v35];
  v51 = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
  ULDBUtils::efficientlyFetchDataObjects<ULOdometryDO,ULOdometryMO>(self, array, v37, a8, 500, &v48);
  std::vector<ULOdometryDO>::__vdeallocate(retstr);
  *&retstr->__begin_ = v48;
  retstr->__cap_ = v49;
  v49 = 0;
  v48 = 0uLL;
  v50 = &v48;
  std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](&v50);

  objc_autoreleasePoolPop(context);
  if (v35 != a10)
  {
    p_var1 = &retstr->__begin_->var0.var0.var1;
    end = retstr->__end_;
    if (retstr->__begin_ != end)
    {
      for (i = &end[-3].var0.var0.var1.var1; p_var1 < i; i -= 64)
      {
        std::ranges::__swap::__fn::operator()[abi:ne200100]<ULOdometryDO>(&std::ranges::__cpo::swap, p_var1, i);
        p_var1 += 8;
      }
    }
  }

  return result;
}

- (optional<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,)getMostRecentOdometryTimeForLoiGroupId:(ULOdometryStore *)self odometrySource:
{
  v2 = v1;
  *(&v16 + 1) = *MEMORY[0x277D85DE8];
  [(ULOdometryStore *)self flushStoreBuffer];
  v13 = *v2;
  nilBoostUUID = [MEMORY[0x277CCAD78] nilBoostUUID];
  v15 = v4;
  v10 = 0;
  v11 = 0;
  __p = 0;
  std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(&__p, &v13, &v16, 2uLL);
  v8 = 0;
  objc_msgSend_efficientlyFetchOdometryEntriesWithLOIGroupUUIDs_odometrySource_startDate_endDate_fetchLimit_newest_ascending_(self, v8);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v12[1] == v12[0])
  {
    LOBYTE(v5) = 0;
    v6 = 0;
  }

  else
  {
    v5 = *(v12[0] + 40) & 0xFFFFFFFFFFFFFF00;
    v6 = *(v12[0] + 40);
  }

  *&v13 = v12;
  std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](&v13);
  return (v6 | v5);
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 3) = 0;
  return self;
}

- (void)insertDataObjects:atLoiUUID:
{

  operator delete(self);
}

- (id)insertDataObjects:atLoiUUID:
{
  v3 = *(self + 16);
  managedObjectContext = [**(self + 8) managedObjectContext];
  v5 = [ULOdometryMO createFromDO:a2 loiMO:v3 inManagedObjectContext:managedObjectContext];

  return v5;
}

- (uint64_t)insertDataObjects:atLoiUUID:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

@end
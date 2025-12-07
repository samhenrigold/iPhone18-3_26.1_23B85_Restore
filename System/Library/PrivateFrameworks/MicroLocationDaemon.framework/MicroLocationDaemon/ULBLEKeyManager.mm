@interface ULBLEKeyManager
- (NSArray)oobKeys;
- (NSArray)sameAccountBleIdentities;
- (ULBLEKeyManager)initWithDelegate:(ULBLEKeyManagerDelegate *)delegate environment:(id)environment andDbStore:(ULDatabaseStoreInterface *)store;
- (id).cxx_construct;
- (void)_handleULRapportMonitorEventIdentities:(id)identities;
- (void)backupSameAccountBleIdentities;
- (void)loadSameAccountBleIdentitiesFromDb;
- (void)onBleIdentityItem:(const void *)item;
- (void)startMonitoringEvents;
- (void)stopMonitoringEvents;
@end

@implementation ULBLEKeyManager

- (ULBLEKeyManager)initWithDelegate:(ULBLEKeyManagerDelegate *)delegate environment:(id)environment andDbStore:(ULDatabaseStoreInterface *)store
{
  environmentCopy = environment;
  v13.receiver = self;
  v13.super_class = ULBLEKeyManager;
  v9 = [(ULBLEKeyManager *)&v13 init];
  v10 = v9;
  if (v9)
  {
    [(ULBLEKeyManager *)v9 setEnvironment:environmentCopy];
    [(ULBLEKeyManager *)v10 setDbStore:store];
    [(ULBLEKeyManager *)v10 setDelegate:delegate];
    v11 = [MEMORY[0x277CBEB58] set];
    [(ULBLEKeyManager *)v10 setOobKeysInternal:v11];
  }

  return v10;
}

- (void)startMonitoringEvents
{
  v15 = *MEMORY[0x277D85DE8];
  environment = [(ULBLEKeyManager *)self environment];
  queue = [environment queue];
  dispatch_assert_queue_V2(queue);

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBLEKeyManager startMonitoringEvents];
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v13 = 2082;
    v14 = "";
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:BleKeyManager, start monitoring}", &buf, 0x12u);
  }

  objc_initWeak(&buf, self);
  environment2 = [(ULBLEKeyManager *)self environment];
  rapportMonitor = [environment2 rapportMonitor];
  v8 = +[(ULEvent *)ULRapportMonitorEventIdentities];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__ULBLEKeyManager_startMonitoringEvents__block_invoke;
  v10[3] = &unk_2798D4460;
  objc_copyWeak(&v11, &buf);
  [rapportMonitor addObserver:self eventName:v8 handler:v10];

  bleIdentityBridge = [(ULBLEKeyManager *)self bleIdentityBridge];
  [bleIdentityBridge startMonitoring];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&buf);
}

void __40__ULBLEKeyManager_startMonitoringEvents__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULRapportMonitorEventIdentities:v5];
  }
}

- (void)stopMonitoringEvents
{
  v12 = *MEMORY[0x277D85DE8];
  environment = [(ULBLEKeyManager *)self environment];
  queue = [environment queue];
  dispatch_assert_queue_V2(queue);

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBLEKeyManager startMonitoringEvents];
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 68289026;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:BleKeyManager, stop monitoring}", v9, 0x12u);
  }

  environment2 = [(ULBLEKeyManager *)self environment];
  rapportMonitor = [environment2 rapportMonitor];
  [rapportMonitor removeObserver:self];

  bleIdentityBridge = [(ULBLEKeyManager *)self bleIdentityBridge];
  [bleIdentityBridge stopMonitoring];
}

- (void)backupSameAccountBleIdentities
{
  v16 = *MEMORY[0x277D85DE8];
  environment = [(ULBLEKeyManager *)self environment];
  queue = [environment queue];
  dispatch_assert_queue_V2(queue);

  v12 = 0;
  v13 = 0;
  v14 = 0;
  next = self->sameAccountBleIdentitiesInternal.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      if (next[56] == 1)
      {
        if (next[55] < 0)
        {
          std::string::__init_copy_ctor_external(v15, *(next + 4), *(next + 5));
        }

        else
        {
          *v15 = *(next + 2);
          *&v15[16] = *(next + 6);
        }
      }

      else
      {
        memset(v15, 0, 24);
      }

      if (next[88] == 1)
      {
        if (next[87] < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(next + 8), *(next + 9));
        }

        else
        {
          __p = *(next + 64);
        }
      }

      else
      {
        memset(&__p, 0, sizeof(__p));
      }

      v6 = v13;
      if (v13 >= v14)
      {
        v7 = std::vector<ULBluetoothIdentityDO>::__emplace_back_slow_path<boost::uuids::uuid const&,std::string &,std::string &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&>(&v12, next + 2, v15, &__p, next + 16);
      }

      else
      {
        std::construct_at[abi:ne200100]<ULBluetoothIdentityDO,boost::uuids::uuid const&,std::string &,std::string &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,ULBluetoothIdentityDO*>(v13, next + 2, v15, &__p, next + 16);
        v7 = v6 + 72;
      }

      v13 = v7;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((v15[23] & 0x80000000) != 0)
      {
        operator delete(*v15);
      }

      next = *next;
    }

    while (next);
    if (v13 != v12)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULBLEKeyManager backupSameAccountBleIdentities];
      }

      v8 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 68289282;
        *&v15[8] = 2082;
        *&v15[10] = "";
        *&v15[18] = 2050;
        *&v15[20] = 0x8E38E38E38E38E39 * ((v13 - v12) >> 3);
        _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:BleKeyManager, back up BT identities data to DB, Num Entries:%{public}lu}", v15, 0x1Cu);
      }

      v9 = [(ULBLEKeyManager *)self dbStore:__p.__r_.__value_.__r.__words[0]];
      v10 = (*(v9->var0 + 4))(v9);
      [v10 insertDataObjects:&v12];
    }
  }

  *v15 = &v12;
  std::vector<ULBluetoothIdentityDO>::__destroy_vector::operator()[abi:ne200100](v15);
}

- (void)loadSameAccountBleIdentitiesFromDb
{
  v32 = *MEMORY[0x277D85DE8];
  environment = [(ULBLEKeyManager *)self environment];
  queue = [environment queue];
  dispatch_assert_queue_V2(queue);

  v5 = cl::chrono::CFAbsoluteTimeClock::now();
  date = [MEMORY[0x277CBEAA8] date];
  v7 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v7 defaultsDictionary];

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNumberDaysToUseBtIdentities"];
  v10 = [defaultsDictionary objectForKey:v9];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    intValue = [v10 intValue];
  }

  else
  {
    intValue = [&unk_286A71F70 intValue];
  }

  v12 = intValue;

  CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(date, ~v12);
  v14 = v13;
  dbStore = [(ULBLEKeyManager *)self dbStore];
  v16 = (*(dbStore->var0 + 4))(dbStore);
  v17 = v16;
  if (v16)
  {
    objc_msgSend_fetchBtIdentityEntriesBetweenTimes_toTime_(v16, v14, v5 + 86400.0);
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  if (v26 != v27)
  {
    if (*(v26 + 39) < 0)
    {
      v18 = *(v26 + 24);
      if (v18)
      {
        std::string::__init_copy_ctor_external(v29, *(v26 + 16), v18);
        goto LABEL_14;
      }
    }

    else if (*(v26 + 39))
    {
      *v29 = *(v26 + 16);
      *&v29[16] = *(v26 + 32);
LABEL_14:
      v19 = 1;
      goto LABEL_16;
    }

    v19 = 0;
    v29[0] = 0;
LABEL_16:
    v29[24] = v19;
    if (*(v26 + 63) < 0)
    {
      v20 = *(v26 + 48);
      if (v20)
      {
        std::string::__init_copy_ctor_external(&__p, *(v26 + 40), v20);
        goto LABEL_21;
      }
    }

    else if (*(v26 + 63))
    {
      __p = *(v26 + 40);
LABEL_21:
      v21 = 1;
      goto LABEL_23;
    }

    v21 = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
LABEL_23:
    v25 = v21;
    std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__emplace_unique_impl<boost::uuids::uuid const&,std::optional<std::string> &,std::optional<std::string> &,std::nullopt_t const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&>(&self->sameAccountBleIdentitiesInternal);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBLEKeyManager backupSameAccountBleIdentities];
  }

  v22 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    size = self->sameAccountBleIdentitiesInternal.__table_.__size_;
    *v29 = 68289538;
    *&v29[8] = 2082;
    *&v29[10] = "";
    *&v29[18] = 2050;
    *&v29[20] = 0x8E38E38E38E38E39 * ((v27 - v26) >> 3);
    v30 = 2050;
    v31 = size;
    _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:BleKeyManager, loadBleIdentitiesFromDb, num of entries loaded:%{public}lu, Total number of identities in memory:%{public}lu}", v29, 0x26u);
  }

  *v29 = &v26;
  std::vector<ULBluetoothIdentityDO>::__destroy_vector::operator()[abi:ne200100](v29);
}

- (NSArray)sameAccountBleIdentities
{
  environment = [(ULBLEKeyManager *)self environment];
  queue = [environment queue];
  dispatch_assert_queue_V2(queue);

  array = [MEMORY[0x277CBEB18] array];
  if (self->sameAccountBleIdentitiesInternal.__table_.__first_node_.__next_)
  {
    operator new();
  }

  v6 = [array copy];

  return v6;
}

- (NSArray)oobKeys
{
  environment = [(ULBLEKeyManager *)self environment];
  queue = [environment queue];
  dispatch_assert_queue_V2(queue);

  oobKeysInternal = [(ULBLEKeyManager *)self oobKeysInternal];
  allObjects = [oobKeysInternal allObjects];

  return allObjects;
}

- (void)_handleULRapportMonitorEventIdentities:(id)identities
{
  v18 = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  objc_opt_class();
  v5 = identitiesCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBLEKeyManager startMonitoringEvents];
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    identities = [v7 identities];
    *buf = 138412290;
    v17 = identities;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEBUG, "_handleULRapportMonitorEventIdentities: identities: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  environment = [(ULBLEKeyManager *)self environment];
  queue = [environment queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__ULBLEKeyManager__handleULRapportMonitorEventIdentities___block_invoke;
  v13[3] = &unk_2798D4E30;
  objc_copyWeak(&v15, buf);
  v14 = v7;
  v12 = v7;
  dispatch_async(queue, v13);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __58__ULBLEKeyManager__handleULRapportMonitorEventIdentities___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x277CBEB58] set];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v3 = [*(a1 + 32) identities];
    v4 = [v3 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v4)
    {
      v5 = *v22;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v22 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v21 + 1) + 8 * i);
          v8 = [v7 btAddress];
          if (v8)
          {
            v9 = [v7 btIRKData];
            v10 = v9 == 0;

            if (!v10)
            {
              v11 = [ULOobKeyInfo alloc];
              v12 = [v7 btAddress];
              v13 = [v7 btIRKData];
              v14 = [(ULOobKeyInfo *)v11 initWithAddressData:v12 andIrkData:v13];

              [v2 addObject:v14];
            }
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v21 objects:v31 count:16];
      }

      while (v4);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBLEKeyManager backupSameAccountBleIdentities];
    }

    v15 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v2 count];
      *buf = 68289282;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2050;
      v30 = v16;
      _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:BLE oobkey updated, key array size:%{public}lu}", buf, 0x1Cu);
    }

    v17 = [WeakRetained oobKeysInternal];
    v18 = [v17 isEqual:v2];

    if ((v18 & 1) == 0)
    {
      v19 = [WeakRetained delegate];
      (*(*v19 + 16))(v19);
    }

    [WeakRetained setOobKeysInternal:v2];
  }
}

- (void)onBleIdentityItem:(const void *)item
{
  v24 = *MEMORY[0x277D85DE8];
  v16 = *item;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v17, item + 1);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v19, item + 3);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v21, item + 5);
  v23 = *(item + 14);
  environment = [(ULBLEKeyManager *)self environment];
  queue = [environment queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3321888768;
  v7[2] = __37__ULBLEKeyManager_onBleIdentityItem___block_invoke;
  v7[3] = &unk_286A5B6C8;
  v7[4] = self;
  v8 = v16;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v9, &v17);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v11, &v19);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, &v21);
  v15 = v23;
  dispatch_async(queue, v7);

  if (v14 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v12 == 1 && SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v10 == 1 && SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (v22 == 1 && SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v20 == 1 && SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (v18 == 1 && SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void *__37__ULBLEKeyManager_onBleIdentityItem___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__emplace_unique_key_args<ULBleIdentityItem,ULBleIdentityItem const&>((v2 + 8), a1 + 40, a1 + 40);
  result = *(a1 + 32);
  if (v3 != result[4])
  {
    v5 = *(*[result delegate] + 16);

    return v5();
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end
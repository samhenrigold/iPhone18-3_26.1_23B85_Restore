@interface CDRecentVolumeInfo
+ (id)CDRecentVolumeInfo:(id)info;
- (BOOL)isEmpty;
- (BOOL)isStale;
- (BOOL)updateServiceInfoAmount:(id)amount forService:(id)service atUrgency:(int)urgency withTimestamp:(double)timestamp nonPurgeableAmount:(id)purgeableAmount deductFromCurrentAmount:(BOOL)currentAmount info:(id)info;
- (BOOL)validateServiceInfo:(id)info atUrgency:(int)urgency;
- (CDRecentVolumeInfo)initWithCoder:(id)coder;
- (CDRecentVolumeInfo)initWithServices:(id)services volumeName:(id)name;
- (CDRecentVolumeInfo)initWithVolumeInfo:(id)info;
- (id)_recentInfoAtUrgency:(int)urgency validateResults:(BOOL)results;
- (id)copyInvalidsAtUrgency:(int)urgency currentlyPushing:(id)pushing;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)volumeServices;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)log;
- (void)removeServiceInfo:(id)info;
@end

@implementation CDRecentVolumeInfo

- (id)volumeServices
{
  services = [(CDRecentVolumeInfo *)self services];
  allKeys = [services allKeys];

  return allKeys;
}

- (id)description
{
  v22 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(CDRecentVolumeInfo *)self services];
  v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t%@:", v8];
        [array addObject:v9];

        v10 = MEMORY[0x1E696AEC0];
        services = [(CDRecentVolumeInfo *)self services];
        v12 = [services objectForKeyedSubscript:v8];
        v13 = [v10 stringWithFormat:@"%@", v12];
        [array addObject:v13];
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v14 = [array componentsJoinedByString:@"\n"];

  return v14;
}

- (CDRecentVolumeInfo)initWithServices:(id)services volumeName:(id)name
{
  v26 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  nameCopy = name;
  v21.receiver = self;
  v21.super_class = CDRecentVolumeInfo;
  v8 = [(CDRecentVolumeInfo *)&v21 init];
  v9 = v8;
  if (!v8)
  {
LABEL_11:
    v14 = v9;
    goto LABEL_12;
  }

  objc_storeStrong(&v8->_volume, name);
  v10 = [(CDRecentVolumeInfo *)v9 createVolumeWithPath:nameCopy];
  cdVolume = v9->_cdVolume;
  v9->_cdVolume = v10;

  if (v9->_volume && v9->_cdVolume)
  {
    if (servicesCopy)
    {
      dictionary = [servicesCopy mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    services = v9->_services;
    v9->_services = dictionary;

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CacheDeleteVolume freespace](v9->_cdVolume, "freespace")}];
    freespace = v9->_freespace;
    v9->_freespace = v16;

    v9->_volumeState = [(CacheDeleteVolume *)v9->_cdVolume state];
    date = [MEMORY[0x1E695DF00] date];
    timestamp = v9->_timestamp;
    v9->_timestamp = date;

    v9->_hasSnapshot = 0;
    goto LABEL_11;
  }

  v13 = CDGetLogHandle("client");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109378;
    v23 = 40;
    v24 = 2112;
    v25 = nameCopy;
    _os_log_debug_impl(&dword_1BA7F1000, v13, OS_LOG_TYPE_DEBUG, "%d CDRecentVolumeInfo unable to validate mount point: %@", buf, 0x12u);
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (CDRecentVolumeInfo)initWithVolumeInfo:(id)info
{
  v63 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v51.receiver = self;
  v51.super_class = CDRecentVolumeInfo;
  v5 = [(CDRecentVolumeInfo *)&v51 init];
  if (!v5)
  {
LABEL_23:
    v31 = v5;
    goto LABEL_24;
  }

  volume = [infoCopy volume];
  volume = v5->_volume;
  v5->_volume = volume;

  volume2 = [infoCopy volume];
  v9 = [(CDRecentVolumeInfo *)v5 createVolumeWithPath:volume2];
  cdVolume = v5->_cdVolume;
  v5->_cdVolume = v9;

  if (v5->_volume && v5->_cdVolume)
  {
    services = [infoCopy services];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v13 = dictionary;
    if (services)
    {
      v44 = v5;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      services2 = [infoCopy services];
      v15 = [services2 countByEnumeratingWithState:&v47 objects:v62 count:16];
      if (!v15)
      {
        goto LABEL_17;
      }

      v16 = v15;
      v17 = "client";
      v46 = *v48;
      while (1)
      {
        v18 = 0;
        v45 = v16;
        do
        {
          if (*v48 != v46)
          {
            objc_enumerationMutation(services2);
          }

          v19 = *(*(&v47 + 1) + 8 * v18);
          if ([infoCopy _validateWithSharedCacheDeleteForService:v19])
          {
            services3 = [infoCopy services];
            volume3 = [services3 objectForKeyedSubscript:v19];
            services4 = [volume3 copy];
            [v13 setObject:services4 forKeyedSubscript:v19];
          }

          else
          {
            services3 = CDGetLogHandle(v17);
            if (!os_log_type_enabled(services3, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_15;
            }

            volume3 = [infoCopy volume];
            services4 = [infoCopy services];
            [services4 objectForKeyedSubscript:v19];
            v23 = v17;
            v24 = infoCopy;
            v25 = services2;
            v27 = v26 = v13;
            *buf = 67110146;
            v53 = 72;
            v54 = 2080;
            v55 = "[CDRecentVolumeInfo initWithVolumeInfo:]";
            v56 = 2112;
            v57 = volume3;
            v58 = 2112;
            v59 = v19;
            v60 = 2112;
            v61 = v27;
            _os_log_impl(&dword_1BA7F1000, services3, OS_LOG_TYPE_DEFAULT, "%d : %s excluding: volume: %@, service: %@, value: %@", buf, 0x30u);

            v13 = v26;
            services2 = v25;
            infoCopy = v24;
            v17 = v23;
            v16 = v45;
          }

LABEL_15:
          ++v18;
        }

        while (v16 != v18);
        v16 = [services2 countByEnumeratingWithState:&v47 objects:v62 count:16];
        if (!v16)
        {
LABEL_17:

          v28 = [v13 mutableCopy];
          v5 = v44;
          services = v44->_services;
          v44->_services = v28;

          goto LABEL_22;
        }
      }
    }

    v32 = v5->_services;
    v5->_services = dictionary;
    v13 = v32;
LABEL_22:

    v5->_reserve = [infoCopy reserve];
    bsdDisk = [infoCopy bsdDisk];
    bsdDisk = v5->_bsdDisk;
    v5->_bsdDisk = bsdDisk;

    thresholds = [infoCopy thresholds];
    v36 = [thresholds copy];
    thresholds = v5->_thresholds;
    v5->_thresholds = v36;

    v5->_hasSnapshot = [infoCopy hasSnapshot];
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CacheDeleteVolume freespace](v5->_cdVolume, "freespace")}];
    freespace = v5->_freespace;
    v5->_freespace = v38;

    v5->_volumeState = [(CacheDeleteVolume *)v5->_cdVolume state];
    date = [MEMORY[0x1E695DF00] date];
    timestamp = v5->_timestamp;
    v5->_timestamp = date;

    goto LABEL_23;
  }

  v30 = CDGetLogHandle("client");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    volume4 = [infoCopy volume];
    *buf = 67109378;
    v53 = 63;
    v54 = 2112;
    v55 = volume4;
    _os_log_debug_impl(&dword_1BA7F1000, v30, OS_LOG_TYPE_DEBUG, "%d CDRecentVolumeInfo unable to validate mount point: %@", buf, 0x12u);
  }

  v31 = 0;
LABEL_24:

  return v31;
}

+ (id)CDRecentVolumeInfo:(id)info
{
  infoCopy = info;
  v4 = [[CDRecentVolumeInfo alloc] initWithServices:0 volumeName:infoCopy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(CDRecentVolumeInfo);
  services = [(CDRecentVolumeInfo *)self services];
  v7 = [services copyWithZone:zone];
  [(CDRecentVolumeInfo *)v5 setServices:v7];

  timestamp = [(CDRecentVolumeInfo *)self timestamp];
  v9 = [timestamp copyWithZone:zone];
  [(CDRecentVolumeInfo *)v5 setTimestamp:v9];

  freespace = [(CDRecentVolumeInfo *)self freespace];
  v11 = [freespace copyWithZone:zone];
  [(CDRecentVolumeInfo *)v5 setFreespace:v11];

  volume = [(CDRecentVolumeInfo *)self volume];
  v13 = [volume copyWithZone:zone];
  [(CDRecentVolumeInfo *)v5 setVolume:v13];

  [(CDRecentVolumeInfo *)v5 setVolumeState:[(CDRecentVolumeInfo *)self volumeState]];
  thresholds = [(CDRecentVolumeInfo *)self thresholds];
  v15 = [thresholds copyWithZone:zone];
  [(CDRecentVolumeInfo *)v5 setThresholds:v15];

  bsdDisk = [(CDRecentVolumeInfo *)self bsdDisk];
  v17 = [bsdDisk copyWithZone:zone];
  [(CDRecentVolumeInfo *)v5 setBsdDisk:v17];

  [(CDRecentVolumeInfo *)v5 setReserve:[(CDRecentVolumeInfo *)self reserve]];
  [(CDRecentVolumeInfo *)v5 setHasSnapshot:[(CDRecentVolumeInfo *)self hasSnapshot]];
  volume2 = [(CDRecentVolumeInfo *)self volume];
  v19 = [(CDRecentVolumeInfo *)self createVolumeWithPath:volume2];
  [(CDRecentVolumeInfo *)v5 setCdVolume:v19];

  return v5;
}

- (CDRecentVolumeInfo)initWithCoder:(id)coder
{
  v47 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v42.receiver = self;
  v42.super_class = CDRecentVolumeInfo;
  v5 = [(CDRecentVolumeInfo *)&v42 init];
  if (!v5)
  {
LABEL_20:
    v17 = v5;
    goto LABEL_21;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CACHE_DELETE_VOLUME"];
  volume = v5->_volume;
  v5->_volume = v6;

  if (v5->_volume)
  {
    v8 = [(CDRecentVolumeInfo *)v5 createVolumeWithMountPoint:?];
    cdVolume = v5->_cdVolume;
    v5->_cdVolume = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CACHE_DELETE_TIMESTAMP"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CACHE_DELETE_FREESPACE"];
    freespace = v5->_freespace;
    v5->_freespace = v12;

    if ([coderCopy containsValueForKey:@"CACHE_DELETE_VOLUME_STATE"])
    {
      state = [coderCopy decodeIntegerForKey:@"CACHE_DELETE_VOLUME_STATE"];
LABEL_15:
      v5->_volumeState = state;
      v18 = MEMORY[0x1E695DFD8];
      v19 = objc_opt_class();
      v20 = objc_opt_class();
      v21 = [v18 setWithObjects:{v19, v20, objc_opt_class(), 0}];
      v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"CACHE_DELETE_SERVICES"];
      v23 = [v22 mutableCopy];
      services = v5->_services;
      v5->_services = v23;

      if (!v5->_services)
      {
        v25 = objc_opt_new();
        v26 = v5->_services;
        v5->_services = v25;
      }

      v27 = MEMORY[0x1E695DFD8];
      v28 = objc_opt_class();
      v29 = objc_opt_class();
      v30 = [v27 setWithObjects:{v28, v29, objc_opt_class(), 0}];
      v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"CACHE_DELETE_THRESHOLDS"];
      v32 = [v31 mutableCopy];
      thresholds = v5->_thresholds;
      v5->_thresholds = v32;

      if (!v5->_thresholds)
      {
        v34 = objc_opt_new();
        v35 = v5->_thresholds;
        v5->_thresholds = v34;
      }

      v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CACHE_DELETE_BSD_DISK"];
      bsdDisk = v5->_bsdDisk;
      v5->_bsdDisk = v36;

      v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CACHE_DELETE_RESERVE"];
      v5->_reserve = [v38 unsignedIntegerValue];
      v5->_hasSnapshot = [coderCopy decodeBoolForKey:@"CACHE_DELETE_HAS_SNAPSHOT"];

      goto LABEL_20;
    }

    v16 = v5->_cdVolume;
    if (v16)
    {
      if ([(CacheDeleteVolume *)v16 validate])
      {
        state = [(CacheDeleteVolume *)v5->_cdVolume state];
      }

      else
      {
        state = 0;
      }

      goto LABEL_15;
    }

    v15 = CDGetLogHandle("client");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v41 = v5->_volume;
      *buf = 67109378;
      v44 = 131;
      v45 = 2112;
      v46 = v41;
      _os_log_debug_impl(&dword_1BA7F1000, v15, OS_LOG_TYPE_DEBUG, "%d CDRecentVolumeInfo unable to validate mount point: %@", buf, 0x12u);
    }
  }

  else
  {
    v15 = CDGetLogHandle("client");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v40 = v5->_volume;
      *buf = 67109378;
      v44 = 119;
      v45 = 2112;
      v46 = v40;
      _os_log_debug_impl(&dword_1BA7F1000, v15, OS_LOG_TYPE_DEBUG, "%d CDRecentVolumeInfo unable to validate mount point: %@", buf, 0x12u);
    }
  }

  v17 = 0;
LABEL_21:

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  timestamp = [(CDRecentVolumeInfo *)self timestamp];
  [coderCopy encodeObject:timestamp forKey:@"CACHE_DELETE_TIMESTAMP"];

  freespace = [(CDRecentVolumeInfo *)self freespace];
  [coderCopy encodeObject:freespace forKey:@"CACHE_DELETE_FREESPACE"];

  services = [(CDRecentVolumeInfo *)self services];
  [coderCopy encodeObject:services forKey:@"CACHE_DELETE_SERVICES"];

  volume = [(CDRecentVolumeInfo *)self volume];
  [coderCopy encodeObject:volume forKey:@"CACHE_DELETE_VOLUME"];

  [coderCopy encodeInteger:-[CDRecentVolumeInfo volumeState](self forKey:{"volumeState"), @"CACHE_DELETE_VOLUME_STATE"}];
  thresholds = [(CDRecentVolumeInfo *)self thresholds];
  [coderCopy encodeObject:thresholds forKey:@"CACHE_DELETE_THRESHOLDS"];

  bsdDisk = [(CDRecentVolumeInfo *)self bsdDisk];
  [coderCopy encodeObject:bsdDisk forKey:@"CACHE_DELETE_BSD_DISK"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CDRecentVolumeInfo reserve](self, "reserve")}];
  [coderCopy encodeObject:v10 forKey:@"CACHE_DELETE_RESERVE"];

  [coderCopy encodeBool:-[CDRecentVolumeInfo hasSnapshot](self forKey:{"hasSnapshot"), @"CACHE_DELETE_HAS_SNAPSHOT"}];
}

- (BOOL)updateServiceInfoAmount:(id)amount forService:(id)service atUrgency:(int)urgency withTimestamp:(double)timestamp nonPurgeableAmount:(id)purgeableAmount deductFromCurrentAmount:(BOOL)currentAmount info:(id)info
{
  currentAmountCopy = currentAmount;
  v13 = *&urgency;
  v40 = *MEMORY[0x1E69E9840];
  amountCopy = amount;
  serviceCopy = service;
  purgeableAmountCopy = purgeableAmount;
  infoCopy = info;
  services = [(CDRecentVolumeInfo *)self services];
  v21 = [services objectForKeyedSubscript:serviceCopy];

  if (v21)
  {
    v22 = [v21 amountAtUrgency:v13 checkTimestamp:0];
    v23 = [v21 updateAmount:amountCopy atUrgency:v13 withTimestamp:purgeableAmountCopy nonPurgeableAmount:currentAmountCopy deductFromCurrentAmount:infoCopy info:timestamp];
    v24 = CDGetLogHandle("client");
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (v25)
      {
        v32 = 67110146;
        v33 = 218;
        v34 = 2114;
        v35 = serviceCopy;
        v36 = 2114;
        *v37 = v22;
        *&v37[8] = 2114;
        *&v37[10] = amountCopy;
        v38 = 2114;
        v39 = infoCopy;
        _os_log_impl(&dword_1BA7F1000, v24, OS_LOG_TYPE_DEFAULT, "%d updateServiceInfoAmount UPDATED %{public}@, old: %{public}@, new: %{public}@, info: %{public}@", &v32, 0x30u);
      }
    }

    else if (v25)
    {
      [(CDRecentVolumeInfo *)self volume];
      v32 = 67109890;
      v33 = 220;
      v34 = 2114;
      v35 = serviceCopy;
      v36 = 1024;
      *v37 = v13;
      *&v37[6] = *&v37[4] = 2114;
      v27 = *&v37[6];
      _os_log_impl(&dword_1BA7F1000, v24, OS_LOG_TYPE_DEFAULT, "%d updateServiceInfoAmount NO CHANGE for %{public}@ at %d on %{public}@", &v32, 0x22u);
    }
  }

  else
  {
    v21 = [CDRecentServiceInfo CDRecentServiceInfo:amountCopy atUrgency:v13 withTimestamp:purgeableAmountCopy nonPurgeableAmount:infoCopy info:timestamp];
    services2 = [(CDRecentVolumeInfo *)self services];
    [services2 setObject:v21 forKeyedSubscript:serviceCopy];

    v22 = CDGetLogHandle("client");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 67109634;
      v33 = 212;
      v34 = 2114;
      v35 = serviceCopy;
      v36 = 2114;
      *v37 = infoCopy;
      _os_log_impl(&dword_1BA7F1000, v22, OS_LOG_TYPE_DEFAULT, "%d NEW updateServiceInfoAmount for %{public}@, info: %{public}@", &v32, 0x1Cu);
    }

    LOBYTE(v23) = 1;
  }

  v28 = [(CDRecentVolumeInfo *)self createVolumeWithMountPoint:self->_volume];
  v29 = v28;
  if (v28 && [v28 validate])
  {
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v29, "freespace")}];
    [(CDRecentVolumeInfo *)self setFreespace:v30];
  }

  return v23;
}

- (id)_recentInfoAtUrgency:(int)urgency validateResults:(BOOL)results
{
  v152 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  cdVolume = [(CDRecentVolumeInfo *)self cdVolume];

  selfCopy = self;
  if (!cdVolume)
  {
    volume = [(CDRecentVolumeInfo *)self volume];

    if (volume)
    {
      volume2 = [(CDRecentVolumeInfo *)self volume];
      v15 = [(CDRecentVolumeInfo *)self createVolumeWithPath:volume2];
      [(CDRecentVolumeInfo *)self setCdVolume:v15];

      cdVolume2 = [(CDRecentVolumeInfo *)self cdVolume];

      if (!cdVolume2)
      {
        v17 = CDGetLogHandle("client");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          volume3 = [(CDRecentVolumeInfo *)selfCopy volume];
          *buf = 138412290;
          *v146 = volume3;
          _os_log_error_impl(&dword_1BA7F1000, v17, OS_LOG_TYPE_ERROR, "CDRecentVolumeInfo _recentInfoAtUrgency: Unable to create cdVolume for %@", buf, 0xCu);
        }

        v18 = 0;
        goto LABEL_103;
      }
    }
  }

  cdVolume3 = [(CDRecentVolumeInfo *)self cdVolume];

  if (cdVolume3)
  {
    cdVolume4 = [(CDRecentVolumeInfo *)self cdVolume];
    freespace = [cdVolume4 freespace];

    cdVolume5 = [(CDRecentVolumeInfo *)self cdVolume];
    used = [cdVolume5 used];

    cdVolume6 = [(CDRecentVolumeInfo *)self cdVolume];
    v124 = [cdVolume6 size];

    cdVolume7 = [(CDRecentVolumeInfo *)self cdVolume];
    effective_size = [cdVolume7 effective_size];
  }

  else
  {
    effective_size = 0;
    v124 = 0;
    used = 0;
    freespace = 0;
  }

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  obj = [(CDRecentVolumeInfo *)self services];
  v114 = dictionary2;
  selfCopy2 = self;
  v116 = [obj countByEnumeratingWithState:&v139 objects:v151 count:16];
  if (!v116)
  {
    v113 = 0;
    v20 = 0;
    goto LABEL_60;
  }

  v113 = 0;
  v20 = 0;
  v115 = *v140;
  v21 = @"CACHE_DELETE_SIGNING_ID";
  do
  {
    for (i = 0; i != v116; i = v45 + 1)
    {
      if (*v140 != v115)
      {
        objc_enumerationMutation(obj);
      }

      v117 = i;
      v118 = v20;
      v23 = *(*(&v139 + 1) + 8 * i);
      services = [(CDRecentVolumeInfo *)selfCopy2 services];
      v25 = [services objectForKeyedSubscript:v23];

      nonPurgeableAmount = [v25 nonPurgeableAmount];
      serviceInfo = [v25 serviceInfo];
      v119 = [serviceInfo objectForKeyedSubscript:@"CACHE_DELETE_ITEMIZED_NONPURGEABLE"];

      serviceInfo2 = [v25 serviceInfo];
      v28 = [serviceInfo2 objectForKeyedSubscript:v21];
      if (v28)
      {

        selfCopy2 = selfCopy;
LABEL_18:
        dictionary3 = [MEMORY[0x1E695DF90] dictionary];
        serviceInfo3 = [v25 serviceInfo];
        v33 = [serviceInfo3 objectForKeyedSubscript:v21];

        if (v33)
        {
          serviceInfo4 = [v25 serviceInfo];
          v35 = [serviceInfo4 objectForKeyedSubscript:v21];
          [dictionary3 setObject:v35 forKeyedSubscript:v21];
        }

        serviceInfo5 = [v25 serviceInfo];
        v37 = [serviceInfo5 objectForKeyedSubscript:@"CACHE_DELETE_PROCNAME"];

        if (v37)
        {
          serviceInfo6 = [v25 serviceInfo];
          v39 = [serviceInfo6 objectForKeyedSubscript:@"CACHE_DELETE_PROCNAME"];
          [dictionary3 setObject:v39 forKeyedSubscript:@"CACHE_DELETE_PROCNAME"];
        }

        v40 = [dictionary3 copy];
        [v114 setObject:v40 forKeyedSubscript:v23];

        goto LABEL_23;
      }

      serviceInfo7 = [v25 serviceInfo];
      v30 = [serviceInfo7 objectForKeyedSubscript:@"CACHE_DELETE_PROCNAME"];

      selfCopy2 = selfCopy;
      if (v30)
      {
        goto LABEL_18;
      }

LABEL_23:
      v41 = nonPurgeableAmount;
      if (nonPurgeableAmount && [nonPurgeableAmount unsignedLongLongValue])
      {
        unsignedLongLongValue = [nonPurgeableAmount unsignedLongLongValue];
        dictionary4 = [dictionary objectForKeyedSubscript:@"CACHE_DELETE_ITEMIZED_NONPURGEABLE"];
        if (!dictionary4)
        {
          dictionary4 = [MEMORY[0x1E695DF90] dictionary];
          [dictionary setObject:dictionary4 forKeyedSubscript:@"CACHE_DELETE_ITEMIZED_NONPURGEABLE"];
        }

        v113 += unsignedLongLongValue;
        if (v119)
        {
          v44 = v119;
        }

        else
        {
          v44 = nonPurgeableAmount;
        }

        [dictionary4 setObject:v44 forKeyedSubscript:v23];
      }

      if ([v23 isEqualToString:@"CACHE_DELETE_TOTAL_FSPURGEABLE"])
      {
        v45 = v117;
        v20 = v118;
        goto LABEL_56;
      }

      urgencyCopy2 = urgency;
      if (results)
      {
        urgencyCopy2 = urgency;
        if (![(CDRecentVolumeInfo *)selfCopy2 _validateWithSharedCacheDeleteForService:v23])
        {
          v47 = CDGetLogHandle("client");
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            volume4 = [(CDRecentVolumeInfo *)selfCopy2 volume];
            services2 = [(CDRecentVolumeInfo *)selfCopy2 services];
            v50 = [services2 objectForKeyedSubscript:v23];
            *buf = 67110146;
            *v146 = 308;
            *&v146[4] = 2080;
            *&v146[6] = "[CDRecentVolumeInfo _recentInfoAtUrgency:validateResults:]";
            *&v146[14] = 2112;
            *&v146[16] = volume4;
            v147 = 2112;
            v148 = v23;
            v149 = 2112;
            v150 = v50;
            _os_log_impl(&dword_1BA7F1000, v47, OS_LOG_TYPE_DEFAULT, "%d : %s excluding: volume: %@, service: %@, value: %@", buf, 0x30u);
          }

          v45 = v117;
          v20 = v118;
          v41 = nonPurgeableAmount;
          goto LABEL_55;
        }
      }

      while (1)
      {
        v51 = [v25 amountAtUrgency:urgencyCopy2 checkTimestamp:1];
        if (v51)
        {
          break;
        }

LABEL_45:

        v62 = __OFSUB__(urgencyCopy2, 1);
        urgencyCopy2 = (urgencyCopy2 - 1);
        if ((urgencyCopy2 < 0) ^ v62 | (urgencyCopy2 == 0))
        {
          v20 = v118;
          v41 = nonPurgeableAmount;
          goto LABEL_52;
        }
      }

      if ([v23 hasPrefix:@"CACHE_DELETE_SUR_"])
      {
        [dictionary setObject:v51 forKeyedSubscript:v23];
        goto LABEL_45;
      }

      cdVolume8 = [(CDRecentVolumeInfo *)selfCopy2 cdVolume];
      v53 = [cdVolume8 amountIsRational:v51 freespace:freespace effective_size:effective_size used:used size:v124];

      if (!v53)
      {
        v54 = v21;
        v55 = dictionary;
        v56 = MEMORY[0x1E696AEC0];
        unsignedLongLongValue2 = [v51 unsignedLongLongValue];
        v58 = humanReadableNumber([v51 unsignedLongLongValue]);
        cdVolume9 = [(CDRecentVolumeInfo *)selfCopy2 cdVolume];
        v60 = [v56 stringWithFormat:@"implausible value %llu (%@) for service: %@ at urgency %d on volume: %@", unsignedLongLongValue2, v58, v23, urgencyCopy2, cdVolume9];

        v61 = CDGetLogHandle("client");
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          *v146 = 334;
          *&v146[4] = 2112;
          *&v146[6] = v60;
          _os_log_error_impl(&dword_1BA7F1000, v61, OS_LOG_TYPE_ERROR, "%d CDRecentVolumeInfo _recentInfoAtUrgency: Discarding %@", buf, 0x12u);
        }

        dictionary = v55;
        selfCopy2 = selfCopy;
        v21 = v54;
        goto LABEL_45;
      }

      [dictionary setObject:v51 forKeyedSubscript:v23];
      v63 = fsPurgeableTypeToServiceMap();
      allValues = [v63 allValues];
      v65 = [allValues containsObject:v23];

      if (v65)
      {
        v20 = v118;
      }

      else
      {
        v20 = [v51 unsignedLongLongValue] + v118;
      }

      v41 = nonPurgeableAmount;

LABEL_52:
      v47 = CDGetLogHandle("client");
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        v66 = [dictionary objectForKeyedSubscript:v23];
        *buf = 67109890;
        *v146 = 337;
        *&v146[4] = 2112;
        *&v146[6] = v23;
        *&v146[14] = 2112;
        *&v146[16] = v66;
        v147 = 2112;
        v148 = v25;
        _os_log_debug_impl(&dword_1BA7F1000, v47, OS_LOG_TYPE_DEBUG, "%d CDRecentVolumeInfo _recentInfoAtUrgency, service: %@, amount: %@ %@", buf, 0x26u);

        selfCopy2 = selfCopy;
      }

      v45 = v117;
LABEL_55:

LABEL_56:
    }

    v116 = [obj countByEnumeratingWithState:&v139 objects:v151 count:16];
  }

  while (v116);
LABEL_60:

  [(CDRecentVolumeInfo *)selfCopy2 cdVolume];
  v68 = v67 = selfCopy2;

  if (v68)
  {
    _reserveForVolume = [(CDRecentVolumeInfo *)v67 _reserveForVolume];
    cdVolume10 = [(CDRecentVolumeInfo *)v67 cdVolume];
    v71 = [cdVolume10 size];
    cdVolume11 = [(CDRecentVolumeInfo *)v67 cdVolume];
    v73 = v71 - [cdVolume11 freespace];

    if (v20 >= v73 - _reserveForVolume)
    {
      v74 = v73 - _reserveForVolume;
    }

    else
    {
      v74 = v20;
    }

    if (v73 > _reserveForVolume && v74)
    {
      v75 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
      [dictionary setObject:v75 forKeyedSubscript:@"CACHE_DELETE_SHARED_PURGEABLE"];
      goto LABEL_69;
    }
  }

  else
  {
    v75 = CDGetLogHandle("client");
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
    {
      volume5 = [(CDRecentVolumeInfo *)selfCopy volume];
      *buf = 67109378;
      *v146 = 356;
      *&v146[4] = 2112;
      *&v146[6] = volume5;
      _os_log_debug_impl(&dword_1BA7F1000, v75, OS_LOG_TYPE_DEBUG, "%d Unable to validate mount point: %@", buf, 0x12u);
    }

LABEL_69:
  }

  cdVolume12 = [(CDRecentVolumeInfo *)selfCopy cdVolume];
  v77 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v20];
  v78 = [cdVolume12 mayContainPurgeableAmount:v77 forService:0];

  v79 = MEMORY[0x1E696AD98];
  if (v78)
  {
    cdVolume13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v20];
    [dictionary setObject:cdVolume13 forKeyedSubscript:@"CACHE_DELETE_TOTAL_AVAILABLE"];
  }

  else
  {
    cdVolume13 = [(CDRecentVolumeInfo *)selfCopy cdVolume];
    v81 = [v79 numberWithDouble:{objc_msgSend(cdVolume13, "size") * 0.8}];
    [dictionary setObject:v81 forKeyedSubscript:@"CACHE_DELETE_TOTAL_AVAILABLE"];
  }

  dictionary2 = v114;
  if (v114)
  {
    v82 = [v114 copy];
    [dictionary setObject:v82 forKeyedSubscript:@"CACHE_DELETE_NAME_MAP"];
  }

  volume6 = [(CDRecentVolumeInfo *)selfCopy volume];
  [dictionary setObject:volume6 forKeyedSubscript:@"CACHE_DELETE_VOLUME"];

  v84 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v113];
  [dictionary setObject:v84 forKeyedSubscript:@"CACHE_DELETE_NONPURGEABLE_AMOUNT"];

  v85 = [dictionary copy];
  v86 = CDGetLogHandle("client");
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
  {
    cdVolume14 = [(CDRecentVolumeInfo *)selfCopy cdVolume];
    mountPoint = [cdVolume14 mountPoint];
    *buf = 67109634;
    *v146 = 380;
    *&v146[4] = 2114;
    *&v146[6] = mountPoint;
    *&v146[14] = 1024;
    *&v146[16] = urgency;
    _os_log_impl(&dword_1BA7F1000, v86, OS_LOG_TYPE_DEFAULT, "%d CDRecentVolumeInfo _recentInfoAtUrgency, volume: %{public}@, urgency: %d, result:", buf, 0x18u);

    dictionary2 = v114;
  }

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v17 = v85;
  v89 = [v17 countByEnumeratingWithState:&v135 objects:v144 count:16];
  if (v89)
  {
    v90 = v89;
    v120 = dictionary;
    v91 = *v136;
    v123 = *v136;
    do
    {
      v92 = 0;
      v125 = v90;
      do
      {
        if (*v136 != v91)
        {
          objc_enumerationMutation(v17);
        }

        v130 = *(*(&v135 + 1) + 8 * v92);
        v93 = [v130 isEqualToString:@"CACHE_DELETE_NAME_MAP"];
        v94 = CDGetLogHandle("client");
        v95 = os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT);
        if (v93)
        {
          v127 = v92;
          if (v95)
          {
            *buf = 138543362;
            *v146 = v130;
            _os_log_impl(&dword_1BA7F1000, v94, OS_LOG_TYPE_DEFAULT, "%{public}@: {", buf, 0xCu);
          }

          v133 = 0u;
          v134 = 0u;
          v131 = 0u;
          v132 = 0u;
          v96 = [v17 objectForKeyedSubscript:v130];
          v97 = [v96 countByEnumeratingWithState:&v131 objects:v143 count:16];
          if (v97)
          {
            v98 = v97;
            v99 = *v132;
            do
            {
              for (j = 0; j != v98; ++j)
              {
                if (*v132 != v99)
                {
                  objc_enumerationMutation(v96);
                }

                v101 = *(*(&v131 + 1) + 8 * j);
                v102 = CDGetLogHandle("client");
                if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
                {
                  [v17 objectForKeyedSubscript:v130];
                  v104 = v103 = v17;
                  v105 = [v104 objectForKeyedSubscript:v101];
                  *buf = 138543618;
                  *v146 = v101;
                  *&v146[8] = 2114;
                  *&v146[10] = v105;
                  _os_log_impl(&dword_1BA7F1000, v102, OS_LOG_TYPE_DEFAULT, "%{public}@ : %{public}@", buf, 0x16u);

                  v17 = v103;
                }
              }

              v98 = [v96 countByEnumeratingWithState:&v131 objects:v143 count:16];
            }

            while (v98);
          }

          v94 = CDGetLogHandle("client");
          if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1BA7F1000, v94, OS_LOG_TYPE_DEFAULT, "}", buf, 2u);
          }

          v91 = v123;
          v90 = v125;
          v92 = v127;
        }

        else if (v95)
        {
          v106 = [v17 objectForKeyedSubscript:v130];
          *buf = 138543618;
          *v146 = v130;
          *&v146[8] = 2114;
          *&v146[10] = v106;
          _os_log_impl(&dword_1BA7F1000, v94, OS_LOG_TYPE_DEFAULT, "%{public}@ : %{public}@", buf, 0x16u);
        }

        ++v92;
      }

      while (v92 != v90);
      v90 = [v17 countByEnumeratingWithState:&v135 objects:v144 count:16];
    }

    while (v90);
    v18 = v17;
    dictionary = v120;
    dictionary2 = v114;
  }

  else
  {
    v18 = v17;
  }

LABEL_103:

  return v18;
}

- (void)removeServiceInfo:(id)info
{
  infoCopy = info;
  services = [(CDRecentVolumeInfo *)self services];
  [services removeObjectForKey:infoCopy];
}

- (BOOL)validateServiceInfo:(id)info atUrgency:(int)urgency
{
  v4 = *&urgency;
  infoCopy = info;
  services = [(CDRecentVolumeInfo *)self services];
  v8 = [services objectForKeyedSubscript:infoCopy];

  LOBYTE(v4) = [v8 validate:v4 atUrgency:120.0];
  return v4;
}

- (id)copyInvalidsAtUrgency:(int)urgency currentlyPushing:(id)pushing
{
  v4 = *&urgency;
  v39 = *MEMORY[0x1E69E9840];
  pushingCopy = pushing;
  array = [MEMORY[0x1E695DF70] array];
  freespace = [(CDRecentVolumeInfo *)self freespace];
  v7 = [freespace unsignedLongLongValue] / 0xAuLL;

  if (v7 <= 0x9600000)
  {
    v8 = 157286400;
  }

  else
  {
    v8 = v7;
  }

  v37 = 0;
  volume = [(CDRecentVolumeInfo *)self volume];
  freespace2 = [(CDRecentVolumeInfo *)self freespace];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8];
  v12 = validateFreespace(volume, freespace2, v11, &v37);

  if (v12)
  {
    v13 = 1;
  }

  else
  {
    volume2 = [(CDRecentVolumeInfo *)self volume];
    freespace3 = [(CDRecentVolumeInfo *)self freespace];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:3 * v8];
    v13 = validateFreespace(volume2, freespace3, v16, 0);

    if (!v13)
    {
      v17 = CDGetLogHandle("client");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BA7F1000, v17, OS_LOG_TYPE_DEFAULT, "Drastic free space change. Querying all pushing services as well!", buf, 2u);
      }
    }

    [(CDRecentVolumeInfo *)self invalidate];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v37];
    [(CDRecentVolumeInfo *)self setFreespace:v18];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  services = [(CDRecentVolumeInfo *)self services];
  v20 = [services countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(services);
        }

        v24 = *(*(&v32 + 1) + 8 * i);
        services2 = [(CDRecentVolumeInfo *)self services];
        v26 = [services2 objectForKeyedSubscript:v24];

        if (([v26 validate:v4 atUrgency:120.0] & 1) == 0 && (v13 & objc_msgSend(pushingCopy, "containsObject:", v24) & 1) == 0)
        {
          [array addObject:v24];
        }
      }

      v21 = [services countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v21);
  }

  v27 = [MEMORY[0x1E695DFD8] setWithArray:array];
  v28 = [v27 copy];

  return v28;
}

- (BOOL)isEmpty
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  services = [(CDRecentVolumeInfo *)self services];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__CDRecentVolumeInfo_isEmpty__block_invoke;
  v4[3] = &unk_1E7F026D0;
  v4[4] = &v5;
  [services enumerateKeysAndObjectsUsingBlock:v4];

  LOBYTE(services) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return services;
}

void *__29__CDRecentVolumeInfo_isEmpty__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 isEmpty];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (void)log
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = CDGetLogHandle("client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    timestamp = [(CDRecentVolumeInfo *)self timestamp];
    freespace = [(CDRecentVolumeInfo *)self freespace];
    *buf = 138412546;
    v23 = timestamp;
    v24 = 2112;
    v25 = freespace;
    _os_log_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_DEFAULT, "  timestamp: %@, freespace: %@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  services = [(CDRecentVolumeInfo *)self services];
  v7 = [services countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v18;
    *&v8 = 138412290;
    v16 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(services);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        services2 = [(CDRecentVolumeInfo *)self services];
        v14 = [services2 objectForKeyedSubscript:v12];

        v15 = CDGetLogHandle("client");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v16;
          v23 = v12;
          _os_log_impl(&dword_1BA7F1000, v15, OS_LOG_TYPE_DEFAULT, "   service: %@", buf, 0xCu);
        }

        [v14 log];
        ++v11;
      }

      while (v9 != v11);
      v9 = [services countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)invalidate
{
  services = [(CDRecentVolumeInfo *)self services];
  [services enumerateKeysAndObjectsUsingBlock:&__block_literal_global_1];
}

- (BOOL)isStale
{
  timestamp = [(CDRecentVolumeInfo *)self timestamp];
  v4 = validateTimestamp(timestamp, 3600.0);

  volume = [(CDRecentVolumeInfo *)self volume];
  freespace = [(CDRecentVolumeInfo *)self freespace];
  v7 = validateFreespace(volume, freespace, &unk_1F38793B8, 0);

  thresholds = [(CDRecentVolumeInfo *)self thresholds];

  v9 = !v7;
  if (!thresholds)
  {
    v9 = 1;
  }

  if (v4)
  {
    return v9;
  }

  else
  {
    return 1;
  }
}

@end
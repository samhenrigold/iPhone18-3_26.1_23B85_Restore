@interface CDRecentServiceInfo
+ (id)CDRecentServiceInfo:(id)info atUrgency:(int)urgency withTimestamp:(double)timestamp nonPurgeableAmount:(id)amount info:(id)a7;
- (BOOL)isEmpty;
- (BOOL)updateAmount:(id)amount atUrgency:(int)urgency withTimestamp:(double)timestamp nonPurgeableAmount:(id)purgeableAmount deductFromCurrentAmount:(BOOL)currentAmount info:(id)info;
- (BOOL)validate:(double)validate atUrgency:(int)urgency;
- (CDRecentServiceInfo)initWithAmount:(id)amount atUrgency:(int)urgency withTimestamp:(double)timestamp nonPurgeableAmount:(id)purgeableAmount info:(id)info;
- (CDRecentServiceInfo)initWithCoder:(id)coder;
- (id)amountAtUrgency:(int)urgency checkTimestamp:(BOOL)timestamp;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)serialize;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)log;
- (void)updateInfo:(id)info;
@end

@implementation CDRecentServiceInfo

- (id)serialize
{
  v3 = MEMORY[0x1E696AE40];
  serviceInfo = [(CDRecentServiceInfo *)self serviceInfo];
  v9 = 0;
  v5 = [v3 dataWithPropertyList:serviceInfo format:200 options:0 error:&v9];

  v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{objc_msgSend(v5, "length") + 72}];
  [v6 appendBytes:&self->recentinfo length:72];
  [v6 appendBytes:objc_msgSend(v5 length:{"bytes"), objc_msgSend(v5, "length")}];
  v7 = [v6 copy];

  return v7;
}

- (id)description
{
  v30 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  p_amount = &self->recentinfo.urgencies[0].amount;
  v6 = -4;
  do
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = *p_amount;
    v9 = *(p_amount - 1);
    if (v9)
    {
      v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
      v10 = v2;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v7 stringWithFormat:@"u:%d : %llu : %@", v6 + 5, v8, v10];
    [array addObject:v11];

    if (v9)
    {
    }

    p_amount += 2;
  }

  while (!__CFADD__(v6++, 1));
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(CDRecentServiceInfo *)self serviceInfo];
  v13 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        v18 = MEMORY[0x1E696AEC0];
        serviceInfo = [(CDRecentServiceInfo *)self serviceInfo];
        v20 = [serviceInfo objectForKeyedSubscript:v17];
        v21 = [v18 stringWithFormat:@"%@ : %@", v17, v20];
        [array addObject:v21];
      }

      v14 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  v22 = [array componentsJoinedByString:{@", "}];

  return v22;
}

- (void)updateInfo:(id)info
{
  v23 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (infoCopy)
  {
    serviceInfo = [(CDRecentServiceInfo *)self serviceInfo];
    v6 = [serviceInfo mutableCopy];

    if (!v6)
    {
      v6 = objc_opt_new();
    }

    serviceInfo2 = [(CDRecentServiceInfo *)self serviceInfo];
    v8 = [serviceInfo2 objectForKeyedSubscript:@"CACHE_DELETE_SIGNING_ID"];
    if (v8)
    {
    }

    else
    {
      v11 = [infoCopy objectForKeyedSubscript:@"CACHE_DELETE_SIGNING_ID"];

      if (!v11)
      {
LABEL_7:
        serviceInfo3 = [(CDRecentServiceInfo *)self serviceInfo];
        v10 = [serviceInfo3 objectForKeyedSubscript:@"CACHE_DELETE_PROCNAME"];
        if (v10)
        {
        }

        else
        {
          v16 = [infoCopy objectForKeyedSubscript:@"CACHE_DELETE_PROCNAME"];

          if (!v16)
          {
            goto LABEL_10;
          }

          v17 = [infoCopy objectForKeyedSubscript:@"CACHE_DELETE_PROCNAME"];
          [v6 setObject:v17 forKeyedSubscript:@"CACHE_DELETE_PROCNAME"];

          v18 = [v6 copy];
          [(CDRecentServiceInfo *)self setServiceInfo:v18];

          serviceInfo3 = CDGetLogHandle("client");
          if (os_log_type_enabled(serviceInfo3, OS_LOG_TYPE_DEFAULT))
          {
            serviceInfo4 = [(CDRecentServiceInfo *)self serviceInfo];
            v20 = [serviceInfo4 objectForKeyedSubscript:@"CACHE_DELETE_PROCNAME"];
            v21 = 138412290;
            v22 = v20;
            _os_log_impl(&dword_1BA7F1000, serviceInfo3, OS_LOG_TYPE_DEFAULT, "CDRecentServiceInfo updated procname: %@", &v21, 0xCu);
          }
        }

LABEL_10:
        goto LABEL_11;
      }

      v12 = [infoCopy objectForKeyedSubscript:@"CACHE_DELETE_SIGNING_ID"];
      [v6 setObject:v12 forKeyedSubscript:@"CACHE_DELETE_SIGNING_ID"];

      v13 = [v6 copy];
      [(CDRecentServiceInfo *)self setServiceInfo:v13];

      serviceInfo2 = CDGetLogHandle("client");
      if (os_log_type_enabled(serviceInfo2, OS_LOG_TYPE_DEFAULT))
      {
        serviceInfo5 = [(CDRecentServiceInfo *)self serviceInfo];
        v15 = [serviceInfo5 objectForKeyedSubscript:@"CACHE_DELETE_SIGNING_ID"];
        v21 = 138412290;
        v22 = v15;
        _os_log_impl(&dword_1BA7F1000, serviceInfo2, OS_LOG_TYPE_DEFAULT, "CDRecentServiceInfo updated signingID: %@", &v21, 0xCu);
      }
    }

    goto LABEL_7;
  }

LABEL_11:
}

- (CDRecentServiceInfo)initWithAmount:(id)amount atUrgency:(int)urgency withTimestamp:(double)timestamp nonPurgeableAmount:(id)purgeableAmount info:(id)info
{
  v30[1] = *MEMORY[0x1E69E9840];
  amountCopy = amount;
  purgeableAmountCopy = purgeableAmount;
  infoCopy = info;
  v28.receiver = self;
  v28.super_class = CDRecentServiceInfo;
  v15 = [(CDRecentServiceInfo *)&v28 init];
  v16 = v15;
  if (!v15)
  {
LABEL_19:
    v21 = v16;
    goto LABEL_20;
  }

  if (amountCopy && urgency)
  {
    *(v15 + 8) = 0u;
    v17 = v15 + 8;
    *(v15 + 9) = 0;
    *(v15 + 40) = 0u;
    *(v15 + 56) = 0u;
    if ((urgency - 5) >= 0xFFFFFFFC)
    {
      v18 = urgency - 1;
    }

    else
    {
      v18 = 2;
    }

    *(v15 + 24) = 0uLL;
    if ([amountCopy longLongValue] < 0)
    {
      unsignedLongLongValue = 0;
    }

    else
    {
      unsignedLongLongValue = [amountCopy unsignedLongLongValue];
    }

    v22 = &v17[16 * v18];
    *(v22 + 1) = unsignedLongLongValue;
    *v22 = timestamp;
    if (purgeableAmountCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16[9] = [purgeableAmountCopy unsignedLongLongValue];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = @"CACHE_DELETE_ITEMIZED_NONPURGEABLE";
          v30[0] = purgeableAmountCopy;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
          v24 = v16[10];
          v16[10] = v23;

          v25 = tallyDict(purgeableAmountCopy);
          v16[9] = [v25 unsignedLongLongValue];
        }
      }
    }

    [v16 updateInfo:infoCopy];
    goto LABEL_19;
  }

  v20 = CDGetLogHandle("client");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v27 = 0;
    _os_log_error_impl(&dword_1BA7F1000, v20, OS_LOG_TYPE_ERROR, "parameter error, must supply amount and urgency", &v27, 2u);
  }

  v21 = 0;
LABEL_20:

  return v21;
}

+ (id)CDRecentServiceInfo:(id)info atUrgency:(int)urgency withTimestamp:(double)timestamp nonPurgeableAmount:(id)amount info:(id)a7
{
  v9 = *&urgency;
  v11 = a7;
  amountCopy = amount;
  infoCopy = info;
  v14 = [[CDRecentServiceInfo alloc] initWithAmount:infoCopy atUrgency:v9 withTimestamp:amountCopy nonPurgeableAmount:v11 info:timestamp];

  return v14;
}

- (BOOL)validate:(double)validate atUrgency:(int)urgency
{
  v5 = urgency - 1;
  if ((urgency - 5) < 0xFFFFFFFC)
  {
    v5 = 2;
  }

  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->recentinfo.urgencies[v5].timestamp];
  v7 = validateTimestamp(v6, validate);

  return v7;
}

- (CDRecentServiceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CDRecentServiceInfo;
  v5 = [(CDRecentServiceInfo *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CACHE_DELETE_SERVICE_INFO"];
    if ([v6 length] >= 0x48)
    {
      bytes = [v6 bytes];
      *(v5 + 8) = *bytes;
      v9 = *(bytes + 32);
      v8 = *(bytes + 48);
      v10 = *(bytes + 64);
      *(v5 + 24) = *(bytes + 16);
      *(v5 + 9) = v10;
      *(v5 + 56) = v8;
      *(v5 + 40) = v9;
      if ([v6 length] >= 0x49)
      {
        v11 = [v6 length] - 72;
        v12 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v6 length:{"bytes") + 72, v11}];
        v13 = [MEMORY[0x1E696AE40] propertyListWithData:v12 options:0 format:0 error:0];
        [v5 setServiceInfo:v13];
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serialize = [(CDRecentServiceInfo *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"CACHE_DELETE_SERVICE_INFO"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CDRecentServiceInfo);
  v4->recentinfo.urgencies[0] = self->recentinfo.urgencies[0];
  v5 = self->recentinfo.urgencies[2];
  v6 = self->recentinfo.urgencies[3];
  non_purgeable_amount = self->recentinfo.non_purgeable_amount;
  v4->recentinfo.urgencies[1] = self->recentinfo.urgencies[1];
  v4->recentinfo.non_purgeable_amount = non_purgeable_amount;
  v4->recentinfo.urgencies[3] = v6;
  v4->recentinfo.urgencies[2] = v5;
  serviceInfo = [(CDRecentServiceInfo *)self serviceInfo];
  v9 = [serviceInfo copy];
  [(CDRecentServiceInfo *)v4 setServiceInfo:v9];

  return v4;
}

- (id)amountAtUrgency:(int)urgency checkTimestamp:(BOOL)timestamp
{
  if ((urgency - 5) >= 0xFFFFFFFC)
  {
    v4 = urgency - 1;
  }

  else
  {
    v4 = 2;
  }

  p_recentinfo = &self->recentinfo;
  v6 = &self->recentinfo.urgencies[v4];
  if (v6->timestamp == 0.0)
  {
    goto LABEL_15;
  }

  if (v6->timestamp == 1.0 && v6->amount == 0)
  {
    goto LABEL_15;
  }

  timestampCopy = timestamp;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  if (v4 >= 2 && timestampCopy)
  {
    if (v9)
    {
      v10 = &p_recentinfo->urgencies[v4 - 1];
      if (v6->timestamp < v10->timestamp && v6->amount < v10->amount)
      {

LABEL_15:
        v9 = 0;
      }
    }
  }

  return v9;
}

- (BOOL)updateAmount:(id)amount atUrgency:(int)urgency withTimestamp:(double)timestamp nonPurgeableAmount:(id)purgeableAmount deductFromCurrentAmount:(BOOL)currentAmount info:(id)info
{
  currentAmountCopy = currentAmount;
  amountCopy = amount;
  purgeableAmountCopy = purgeableAmount;
  [(CDRecentServiceInfo *)self updateInfo:info];
  if ((urgency - 5) >= 0xFFFFFFFC)
  {
    v16 = urgency - 1;
  }

  else
  {
    v16 = 2;
  }

  unsignedLongLongValue = [amountCopy unsignedLongLongValue];
  if (currentAmountCopy)
  {
    v18 = unsignedLongLongValue != 0;
    v19 = self + 16 * v16;
    v20 = v16;
    v22 = *(v19 + 2);
    v21 = v19 + 16;
    if (v22 <= [amountCopy unsignedLongLongValue])
    {
      *v21 = 0;
    }

    else
    {
      *v21 -= [amountCopy unsignedLongLongValue];
    }
  }

  else
  {
    v23 = self + 16 * v16;
    v20 = v16;
    v25 = *(v23 + 2);
    v24 = v23 + 16;
    if (unsignedLongLongValue == v25)
    {
      v18 = 0;
    }

    else
    {
      *v24 = [amountCopy unsignedLongLongValue];
      v18 = 1;
    }
  }

  self->recentinfo.urgencies[v20].timestamp = timestamp;
  if (purgeableAmountCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->recentinfo.non_purgeable_amount = [purgeableAmountCopy unsignedLongLongValue];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        serviceInfo = [(CDRecentServiceInfo *)self serviceInfo];
        v27 = [serviceInfo mutableCopy];

        [v27 setObject:purgeableAmountCopy forKeyedSubscript:@"CACHE_DELETE_ITEMIZED_NONPURGEABLE"];
        v28 = [v27 copy];
        serviceInfo = self->_serviceInfo;
        self->_serviceInfo = v28;

        v30 = tallyDict(purgeableAmountCopy);
        self->recentinfo.non_purgeable_amount = [v30 unsignedLongLongValue];
      }
    }
  }

  return v18;
}

- (BOOL)isEmpty
{
  if (self->recentinfo.urgencies[0].timestamp > 0.0)
  {
    return 0;
  }

  v3 = 0;
  v4 = &self->recentinfo.urgencies[1];
  do
  {
    v5 = v3;
    if (v3 == 3)
    {
      break;
    }

    timestamp = v4->timestamp;
    ++v4;
    ++v3;
  }

  while (timestamp <= 0.0);
  return v5 > 2;
}

- (void)invalidate
{
  self->recentinfo.urgencies[0].timestamp = 1.0;
  self->recentinfo.urgencies[1].timestamp = 1.0;
  self->recentinfo.urgencies[2].timestamp = 1.0;
  self->recentinfo.urgencies[3].timestamp = 1.0;
}

- (void)log
{
  v2 = 0;
  v13 = *MEMORY[0x1E69E9840];
  p_amount = &self->recentinfo.urgencies[0].amount;
  do
  {
    v4 = CDGetLogHandle("client");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *p_amount;
      v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:*(p_amount - 1)];
      *buf = 67109634;
      v8 = v2;
      v9 = 2048;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_DEFAULT, "     urgency %d, amount : %llu, timestamp: %@", buf, 0x1Cu);
    }

    ++v2;
    p_amount += 2;
  }

  while (v2 != 4);
}

@end
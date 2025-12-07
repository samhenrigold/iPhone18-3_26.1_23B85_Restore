@interface PPSTimeInterval
- (BOOL)containsTimeInterval:(id)interval;
- (BOOL)containsTimestamp:(double)timestamp;
- (BOOL)intersectsTimeInterval:(id)interval;
- (BOOL)isAdjacentToTimeInterval:(id)interval;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dictionary;
- (PPSTimeInterval)initWithCoder:(id)coder;
- (PPSTimeInterval)initWithStartTimestamp:(double)timestamp endTimestamp:(double)endTimestamp payload:(id)payload;
- (double)duration;
- (id)JSONRepresentation;
- (id)debugDescription;
- (id)description;
- (id)intersectionWithTimeInterval:(id)interval;
- (id)subtractTimeInterval:(id)interval;
- (id)unionWithTimeInterval:(id)interval;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSTimeInterval

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(PPSTimeInterval *)self endTimestamp];
  [coderCopy encodeDouble:@"endTimestamp" forKey:?];
  [(PPSTimeInterval *)self startTimestamp];
  [coderCopy encodeDouble:@"startTimestamp" forKey:?];
  payload = [(PPSTimeInterval *)self payload];
  [coderCopy encodeObject:payload forKey:@"payload"];
}

- (PPSTimeInterval)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PPSTimeInterval;
  v5 = [(PPSTimeInterval *)&v11 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"endTimestamp"];
    v5->_endTimestamp = v6;
    [coderCopy decodeDoubleForKey:@"startTimestamp"];
    v5->_startTimestamp = v7;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
    payload = v5->_payload;
    v5->_payload = v8;
  }

  return v5;
}

- (PPSTimeInterval)initWithStartTimestamp:(double)timestamp endTimestamp:(double)endTimestamp payload:(id)payload
{
  payloadCopy = payload;
  v9 = payloadCopy;
  if (timestamp >= endTimestamp)
  {
    v13 = PPSReaderLog(payloadCopy);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PPSTimeInterval initWithStartTimestamp:v13 endTimestamp:? payload:?];
    }

    v11 = 0;
    goto LABEL_7;
  }

  v15.receiver = self;
  v15.super_class = PPSTimeInterval;
  v10 = [(PPSTimeInterval *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_startTimestamp = timestamp;
    v10->_endTimestamp = endTimestamp;
    v12 = v9;
    self = v11->_payload;
    v11->_payload = v12;
LABEL_7:
  }

  return v11;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v5 = MEMORY[0x277CBEAA8];
  [(PPSTimeInterval *)self startTimestamp];
  v6 = [v5 dateWithTimeIntervalSince1970:?];
  v7 = MEMORY[0x277CBEAA8];
  [compareCopy startTimestamp];
  v8 = [v7 dateWithTimeIntervalSince1970:?];
  v9 = [v6 compare:v8];

  return v9;
}

- (unint64_t)hash
{
  v19 = *MEMORY[0x277D85DE8];
  [(PPSTimeInterval *)self startTimestamp];
  if (v3 == 0.0)
  {
    v4 = 2654435769;
  }

  else
  {
    v4 = *&v3 + 2654435769;
  }

  [(PPSTimeInterval *)self endTimestamp];
  v14 = 0u;
  v15 = 0u;
  if (v5 == 0.0)
  {
    v6 = 2654435769;
  }

  else
  {
    v6 = *&v5 + 2654435769;
  }

  v16 = 0uLL;
  v17 = 0uLL;
  payload = [(PPSTimeInterval *)self payload];
  allValues = [payload allValues];

  v9 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  v10 = (v6 + (v4 << 6) + (v4 >> 2)) ^ v4;
  if (v9)
  {
    v11 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        v10 ^= (v10 << 6) + 2654435769u + (v10 >> 2) + [*(*(&v14 + 1) + 8 * i) hash];
      }

      v9 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (!equalCopy)
  {
    v7 = 0;
    goto LABEL_18;
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v8 = equalCopy;
    if (self == v8)
    {
      v7 = 1;
    }

    else
    {
      [(PPSTimeInterval *)self startTimestamp];
      v10 = v9;
      [(PPSTimeInterval *)v8 startTimestamp];
      if (v10 == v11)
      {
        [(PPSTimeInterval *)self endTimestamp];
        v13 = v12;
        [(PPSTimeInterval *)v8 endTimestamp];
        if (v13 == v14)
        {
          payload = [(PPSTimeInterval *)self payload];
          if (payload || ([(PPSTimeInterval *)v8 payload], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            payload2 = [(PPSTimeInterval *)self payload];
            payload3 = [(PPSTimeInterval *)v8 payload];
            v7 = [payload2 isEqualToDictionary:payload3];

            if (payload)
            {
LABEL_16:

              goto LABEL_17;
            }
          }

          else
          {
            v7 = 1;
          }

          goto LABEL_16;
        }
      }

      v7 = 0;
    }

LABEL_17:

    goto LABEL_18;
  }

  v19.receiver = self;
  v19.super_class = PPSTimeInterval;
  v7 = [(PPSTimeInterval *)&v19 isEqual:equalCopy];
LABEL_18:

  return v7;
}

- (id)JSONRepresentation
{
  v2 = MEMORY[0x277CCAAA0];
  dictionary = [(PPSTimeInterval *)self dictionary];
  v9 = 0;
  v4 = [v2 dataWithJSONObject:dictionary options:1 error:&v9];
  v5 = v9;

  if (v5)
  {
    v7 = PPSReaderLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(PPSTimeSeries *)v5 JSONRepresentation];
    }
  }

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PPSTimeInterval *)self description];
  v7 = [v3 stringWithFormat:@"<%@ %p> %@", v5, self, v6];

  return v7;
}

- (id)description
{
  dictionary = [(PPSTimeInterval *)self dictionary];
  v3 = [dictionary description];

  return v3;
}

- (NSDictionary)dictionary
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"endTimestamp";
  v3 = MEMORY[0x277CCABB0];
  [(PPSTimeInterval *)self startTimestamp];
  v4 = [v3 numberWithDouble:?];
  v12[0] = v4;
  v11[1] = @"startTimestamp";
  v5 = MEMORY[0x277CCABB0];
  [(PPSTimeInterval *)self endTimestamp];
  v6 = [v5 numberWithDouble:?];
  v12[1] = v6;
  v11[2] = @"payload";
  payload = [(PPSTimeInterval *)self payload];
  v8 = [payload copy];
  v12[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

- (double)duration
{
  [(PPSTimeInterval *)self endTimestamp];
  v4 = v3;
  [(PPSTimeInterval *)self startTimestamp];
  return v4 - v5;
}

- (BOOL)containsTimeInterval:(id)interval
{
  intervalCopy = interval;
  [(PPSTimeInterval *)self startTimestamp];
  v6 = v5;
  [intervalCopy startTimestamp];
  if (v6 <= v7)
  {
    [(PPSTimeInterval *)self endTimestamp];
    v10 = v9;
    [intervalCopy endTimestamp];
    v8 = v10 >= v11;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)containsTimestamp:(double)timestamp
{
  [(PPSTimeInterval *)self startTimestamp];
  if (v5 > timestamp)
  {
    return 0;
  }

  [(PPSTimeInterval *)self endTimestamp];
  return v7 > timestamp;
}

- (id)intersectionWithTimeInterval:(id)interval
{
  intervalCopy = interval;
  if ([(PPSTimeInterval *)self intersectsTimeInterval:intervalCopy])
  {
    v5 = objc_alloc(objc_opt_class());
    [(PPSTimeInterval *)self startTimestamp];
    v7 = v6;
    [intervalCopy startTimestamp];
    v9 = v8;
    [(PPSTimeInterval *)self endTimestamp];
    v11 = v10;
    [intervalCopy endTimestamp];
    v13 = v12;
    payload = [(PPSTimeInterval *)self payload];
    v15 = [v5 initWithStartTimestamp:payload endTimestamp:fmax(v7 payload:{v9), fmin(v11, v13)}];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)intersectsTimeInterval:(id)interval
{
  intervalCopy = interval;
  [intervalCopy endTimestamp];
  v6 = v5;
  [(PPSTimeInterval *)self startTimestamp];
  if (v6 <= v7)
  {
    v11 = 0;
  }

  else
  {
    [(PPSTimeInterval *)self endTimestamp];
    v9 = v8;
    [intervalCopy startTimestamp];
    v11 = v9 > v10;
  }

  return v11;
}

- (BOOL)isAdjacentToTimeInterval:(id)interval
{
  intervalCopy = interval;
  [(PPSTimeInterval *)self startTimestamp];
  v6 = v5;
  [intervalCopy endTimestamp];
  if (v6 == v7)
  {
    v8 = 1;
  }

  else
  {
    [intervalCopy startTimestamp];
    v10 = v9;
    [(PPSTimeInterval *)self endTimestamp];
    v8 = v10 == v11;
  }

  return v8;
}

- (id)subtractTimeInterval:(id)interval
{
  v49[1] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  if (![(PPSTimeInterval *)self intersectsTimeInterval:intervalCopy])
  {
    v49[0] = self;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
    goto LABEL_19;
  }

  if ([intervalCopy containsTimeInterval:self])
  {
    v5 = MEMORY[0x277CBEBF8];
    goto LABEL_19;
  }

  v6 = [(PPSTimeInterval *)self intersectionWithTimeInterval:intervalCopy];
  v7 = [(PPSTimeInterval *)self compare:intervalCopy];
  if (v7 == -1)
  {
    v28 = objc_alloc(objc_opt_class());
    [(PPSTimeInterval *)self startTimestamp];
    v30 = v29;
    [v6 startTimestamp];
    v32 = v31;
    payload = [(PPSTimeInterval *)self payload];
    v17 = [v28 initWithStartTimestamp:payload endTimestamp:v30 payload:v32];

    [(PPSTimeInterval *)self endTimestamp];
    v35 = v34;
    [intervalCopy endTimestamp];
    if (v35 > v36)
    {
      v37 = objc_alloc(objc_opt_class());
      [v6 endTimestamp];
      v39 = v38;
      [(PPSTimeInterval *)self endTimestamp];
      v41 = v40;
      payload2 = [(PPSTimeInterval *)self payload];
      v43 = [v37 initWithStartTimestamp:payload2 endTimestamp:v39 payload:v41];

      v47[0] = v17;
      v47[1] = v43;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];

LABEL_17:
      goto LABEL_18;
    }

    v48 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
LABEL_16:
    v5 = v18;
    goto LABEL_17;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      [(PPSTimeInterval *)self endTimestamp];
      v9 = v8;
      [intervalCopy endTimestamp];
      if (v9 > v10)
      {
        v11 = objc_alloc(objc_opt_class());
        [v6 endTimestamp];
        v13 = v12;
        [(PPSTimeInterval *)self endTimestamp];
        v15 = v14;
        payload3 = [(PPSTimeInterval *)self payload];
        v17 = [v11 initWithStartTimestamp:payload3 endTimestamp:v13 payload:v15];

        v45 = v17;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
        goto LABEL_16;
      }
    }
  }

  else
  {
    [intervalCopy endTimestamp];
    v20 = v19;
    [(PPSTimeInterval *)self endTimestamp];
    if (v20 > v21)
    {
      v22 = objc_alloc(objc_opt_class());
      [v6 endTimestamp];
      v24 = v23;
      [intervalCopy endTimestamp];
      v26 = v25;
      payload4 = [intervalCopy payload];
      v17 = [v22 initWithStartTimestamp:payload4 endTimestamp:v24 payload:v26];

      v46 = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
      goto LABEL_16;
    }
  }

  v5 = MEMORY[0x277CBEBF8];
LABEL_18:

LABEL_19:

  return v5;
}

- (id)unionWithTimeInterval:(id)interval
{
  v22[1] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v5 = [(PPSTimeInterval *)self compare:intervalCopy];
  if ([(PPSTimeInterval *)self intersectsTimeInterval:intervalCopy]|| [(PPSTimeInterval *)self isAdjacentToTimeInterval:intervalCopy])
  {
    [(PPSTimeInterval *)self startTimestamp];
    v7 = v6;
    [(PPSTimeInterval *)intervalCopy startTimestamp];
    v9 = v8;
    [(PPSTimeInterval *)self endTimestamp];
    v11 = v10;
    [(PPSTimeInterval *)intervalCopy endTimestamp];
    v13 = v12;
    v14 = objc_alloc(objc_opt_class());
    payload = [(PPSTimeInterval *)self payload];
    v16 = [v14 initWithStartTimestamp:payload endTimestamp:fmin(v7 payload:{v9), fmax(v11, v13)}];
    v22[0] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  }

  else
  {
    if (v5 == -1)
    {
      selfCopy = self;
      v18 = &selfCopy;
      self = intervalCopy;
    }

    else
    {
      v20 = intervalCopy;
      v18 = &v20;
    }

    v18[1] = self;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:?];
  }

  return v17;
}

- (void)initWithStartTimestamp:(uint64_t)a1 endTimestamp:(NSObject *)a2 payload:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_25E225000, a2, OS_LOG_TYPE_DEBUG, "Couldn't initialize <PPSTimeInterval>: %p> due to invalid boundaries", &v2, 0xCu);
}

@end
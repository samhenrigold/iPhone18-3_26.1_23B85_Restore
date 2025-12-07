@interface _DKEventCKConverter
- (_DKEventCKConverter)initWithZoneID:(id)d;
- (id)eventDataFromRecord:(uint64_t)record;
- (id)eventIDsFromRecordIDsAndTypes:(id)types;
- (id)eventsFromRecords:(id)records;
- (id)recordFromEventData:(void *)data event:;
- (id)recordIDsFromEventIDs:(id)ds;
- (id)recordsFromEvents:(id)events;
@end

@implementation _DKEventCKConverter

- (_DKEventCKConverter)initWithZoneID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = _DKEventCKConverter;
  v6 = [(_DKEventCKConverter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_zoneID, d);
  }

  return v7;
}

- (id)eventsFromRecords:(id)records
{
  v53 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v5 = [recordsCopy count];
  v41 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
  context = objc_autoreleasePoolPush();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = recordsCopy;
  v7 = [v6 countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v43;
    v39 = *v43;
    selfCopy = self;
    do
    {
      v10 = 0;
      do
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v42 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [(_DKEventCKConverter *)self eventDataFromRecord:v11];
        v14 = v13;
        if (v13)
        {
          if ([(_DKEventData *)v13 version]== 2)
          {
            v15 = v6;
            startDate = [(_DKSyncWindow *)v14 startDate];
            urgency = [(_DKSyncType *)v14 urgency];
            if (urgency)
            {
              v18 = startDate == 0;
            }

            else
            {
              v18 = 1;
            }

            if (v18 || ![(_DKPREvent *)startDate length])
            {
              v27 = +[_CDLogging syncChannel];
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v30 = [objc_opt_class() description];
                v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:urgency];
                v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKPREvent length](startDate, "length")}];
                *buf = 138543874;
                v47 = v30;
                v48 = 2112;
                v49 = v31;
                v50 = 2112;
                v51 = v32;
                _os_log_error_impl(&dword_191750000, v27, OS_LOG_TYPE_ERROR, "%{public}@: Dropping event, unexpected uncompressed length of %@ or compressedData length of %@", buf, 0x20u);
              }
            }

            else
            {
              v19 = malloc_type_malloc(urgency + 32, 0xC6726C6CuLL);
              v20 = compression_decode_buffer(v19, urgency + 32, [(_DKPREvent *)startDate bytes], [(_DKPREvent *)startDate length], 0, COMPRESSION_LZFSE);
              if (v20 == urgency)
              {
                v21 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v19 length:urgency freeWhenDone:1];
                v6 = v15;
                if (v21)
                {
                  v22 = v21;
                  v23 = [[_DKPREvent alloc] initWithData:v21];
                  v24 = [_DKEvent fromPBCodable:v23];
                }

                else
                {
                  v24 = 0;
                }

LABEL_21:
                v9 = v39;
                self = selfCopy;
LABEL_22:

                if (v24)
                {
                  [v41 addObject:v24];
                }

                goto LABEL_25;
              }

              v28 = v20;
              v29 = +[_CDLogging syncChannel];
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                v37 = [objc_opt_class() description];
                v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v28];
                v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:urgency];
                *buf = 138543874;
                v47 = v37;
                v48 = 2112;
                v49 = v33;
                v50 = 2112;
                v51 = v34;
                _os_log_error_impl(&dword_191750000, v29, OS_LOG_TYPE_ERROR, "%{public}@: Dropping event, uncompressed size %@ does not match uncompressed length %@", buf, 0x20u);
              }

              free(v19);
            }

            v24 = 0;
            v6 = v15;
            goto LABEL_21;
          }

          v25 = [_DKPREvent alloc];
          startDate2 = [(_DKSyncWindow *)v14 startDate];
          startDate = [(_DKPREvent *)v25 initWithData:startDate2];

          v24 = [_DKEvent fromPBCodable:startDate];
          goto LABEL_22;
        }

LABEL_25:

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v35 = [v6 countByEnumeratingWithState:&v42 objects:v52 count:16];
      v8 = v35;
    }

    while (v35);
  }

  objc_autoreleasePoolPop(context);

  return v41;
}

- (id)recordsFromEvents:(id)events
{
  v47 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  v4 = [eventsCopy count];
  v32 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
  context = objc_autoreleasePoolPush();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    do
    {
      v9 = 0;
      do
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v36 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        toPBCodable = [v10 toPBCodable];
        data = [toPBCodable data];
        if (data)
        {
          v14 = [_CDSizeMetricFamily sizeMetricFamilyWithName:?];
          v34 = [(_CDSizeMetricFamily *)v14 sizeMetricWithName:0 string:1024 scale:?];
          CDSizeMetricAddSize(v34, [data length]);
          v35 = v14;
          if ([data length] >= 0x401 && !(objc_msgSend(data, "length") >> 13))
          {
            v15 = [data length];
            v29 = malloc_type_malloc(v15, 0x2E3396AuLL);
            v16 = compression_encode_buffer(v29, v15, [data bytes], objc_msgSend(data, "length"), 0, COMPRESSION_LZFSE);
            if (v16 && (v17 = v16, [data length] * 0.75 > v16))
            {
              v18 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v29 length:v17 freeWhenDone:1];
              v14 = v35;
              if (v18)
              {
                v19 = v18;
                v30 = +[_CDLogging syncChannel];
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                {
                  src_buffer = [objc_opt_class() description];
                  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v19, "length")}];
                  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(data, "length")}];
                  *buf = 138543874;
                  v41 = src_buffer;
                  v42 = 2112;
                  v43 = v26;
                  v44 = 2112;
                  v45 = v20;
                  v21 = v20;
                  _os_log_debug_impl(&dword_191750000, v30, OS_LOG_TYPE_DEBUG, "%{public}@: Event compressed to %@ (from %@)", buf, 0x20u);

                  v14 = v35;
                }

                v31 = [(_CDSizeMetricFamily *)v14 sizeMetricWithName:0 string:1024 scale:?];
                CDSizeMetricAddSize(v31, [v19 length]);
                v22 = -[_DKEventData initWithCompressedData:uncompressedLength:version:]([_DKEventData alloc], v19, [data length], 2);

                goto LABEL_19;
              }
            }

            else
            {
              free(v29);
              v14 = v35;
            }
          }

          v19 = [(_CDSizeMetricFamily *)v14 sizeMetricWithName:0 string:1024 scale:?];
          CDSizeMetricAddSize(v19, [data length]);
          v22 = [[_DKEventData alloc] initWithData:data version:1];
LABEL_19:

          v23 = [(_DKEventCKConverter *)self recordFromEventData:v22 event:v10];
          if (v23)
          {
            [v32 addObject:v23];
          }
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v24 = [v5 countByEnumeratingWithState:&v36 objects:v46 count:16];
      v7 = v24;
    }

    while (v24);
  }

  objc_autoreleasePoolPop(context);

  return v32;
}

- (id)recordIDsFromEventIDs:(id)ds
{
  v22 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = [dsCopy count];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = dsCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = objc_alloc(MEMORY[0x1E695BA70]);
        uUIDString = [v12 UUIDString];
        v15 = [v13 initWithRecordName:uUIDString zoneID:self->_zoneID];

        if (v15)
        {
          [v6 addObject:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)eventIDsFromRecordIDsAndTypes:(id)types
{
  v41 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v4 = [typesCopy count];
  v25 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = typesCopy;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v40 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v27;
    v10 = 0x1E696A000uLL;
    *&v7 = 138544386;
    v19 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [v5 objectForKeyedSubscript:{v12, v19}];
        if ([v13 isEqualToString:@"DKEvent"])
        {
          recordName = [v12 recordName];
          v15 = [objc_alloc(*(v10 + 4016)) initWithUUIDString:recordName];
          if (v15)
          {
            [v25 addObject:v15];
          }

          else
          {
            v16 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v24 = [objc_opt_class() description];
              recordName2 = [v12 recordName];
              zoneID = [v12 zoneID];
              zoneName = [zoneID zoneName];
              zoneID2 = [v12 zoneID];
              ownerName = [zoneID2 ownerName];
              *buf = v19;
              v31 = v24;
              v32 = 2114;
              v33 = @"DKEvent";
              v34 = 2114;
              v35 = recordName2;
              v36 = 2114;
              v37 = zoneName;
              v38 = 2114;
              v39 = ownerName;
              _os_log_error_impl(&dword_191750000, v16, OS_LOG_TYPE_ERROR, "%{public}@: CKRecordID of type %{public}@ has an invalid UUIDString recordName:%{public}@ (zoneName:%{public}@ ownerName:%{public}@)", buf, 0x34u);
            }

            v10 = 0x1E696A000;
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v26 objects:v40 count:16];
    }

    while (v8);
  }

  return v25;
}

- (id)eventDataFromRecord:(uint64_t)record
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (record)
  {
    recordType = [v3 recordType];
    v6 = [recordType isEqualToString:@"DKEvent"];

    if (v6)
    {
      encryptedValuesByKey = [v4 encryptedValuesByKey];
      v8 = [encryptedValuesByKey objectForKey:@"encryptedEvent"];

      if (v8)
      {
        v9 = [[_DKPREventData alloc] initWithData:v8];
        v10 = [_DKEventData fromPBCodable:v9];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v13 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v18 = [objc_opt_class() description];
            v19 = 138543362;
            v20 = v18;
            _os_log_error_impl(&dword_191750000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Dropping event record: Unable to decode event", &v19, 0xCu);
          }
        }
      }

      else
      {
        v9 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_ERROR))
        {
          v17 = [objc_opt_class() description];
          v19 = 138543618;
          v20 = v17;
          v21 = 2112;
          v22 = @"encryptedEvent";
          _os_log_error_impl(&dword_191750000, &v9->super.super, OS_LOG_TYPE_ERROR, "%{public}@: Dropping event record: Missing value '%@'", &v19, 0x16u);
        }

        v11 = 0;
      }
    }

    else
    {
      v8 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v15 = [objc_opt_class() description];
        recordType2 = [v4 recordType];
        v19 = 138543618;
        v20 = v15;
        v21 = 2114;
        v22 = recordType2;
        _os_log_error_impl(&dword_191750000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Dropping event record: Unexpected record type: %{public}@", &v19, 0x16u);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)recordFromEventData:(void *)data event:
{
  v32 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (self)
  {
    asData = [(_DKEventData *)a2 asData];
    if (asData)
    {
      v7 = objc_alloc(MEMORY[0x1E695BA70]);
      uUID = [dataCopy UUID];
      uUIDString = [uUID UUIDString];
      v10 = [v7 initWithRecordName:uUIDString zoneID:*(self + 8)];

      v11 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"DKEvent" recordID:v10];
      encryptedValuesByKey = [v11 encryptedValuesByKey];
      [encryptedValuesByKey setObject:asData forKey:@"encryptedEvent"];

      creationDate = [dataCopy creationDate];

      if (creationDate)
      {
        creationDate2 = [dataCopy creationDate];
        [v11 setObject:creationDate2 forKey:@"eventCreationDate"];
      }

      else
      {
        date = [MEMORY[0x1E695DF00] date];
        [v11 setObject:date forKey:@"eventCreationDate"];

        v16 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v21 = [objc_opt_class() description];
          uUID2 = [dataCopy UUID];
          uUIDString2 = [uUID2 UUIDString];
          creationDate3 = [dataCopy creationDate];
          dk_localtimeString = [(NSDate *)creationDate3 dk_localtimeString];
          v26 = 138543874;
          v27 = v21;
          v28 = 2114;
          v29 = uUIDString2;
          v30 = 2114;
          v31 = dk_localtimeString;
          _os_log_error_impl(&dword_191750000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Faking creation date on event %{public}@ (created %{public}@)", &v26, 0x20u);
        }
      }

      stream = [dataCopy stream];
      name = [stream name];
      [v11 setObject:name forKey:@"streamName"];
    }

    else
    {
      v10 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v20 = [objc_opt_class() description];
        v26 = 138543362;
        v27 = v20;
        _os_log_error_impl(&dword_191750000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Dropping event: Unable to encode event", &v26, 0xCu);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end
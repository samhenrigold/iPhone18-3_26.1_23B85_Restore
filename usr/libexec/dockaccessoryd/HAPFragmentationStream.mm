@interface HAPFragmentationStream
+ (id)fragmentationPacketsForData:(id)data maxLength:(unint64_t)length transactionIdentifier:(unsigned __int16)identifier;
- (BOOL)__isTransactionCompleteWithTransactionIdentifier:(unsigned __int16)identifier;
- (HAPFragmentationStream)init;
- (HAPFragmentationStreamDelegate)delegate;
- (id)__filteredPacketsWithTransactionIdentifier:(unsigned __int16)identifier;
- (id)__transactionDataWithTransactionIdentifier:(unsigned __int16)identifier;
- (void)__addFragmentationPacket:(id)packet;
- (void)__removeAllPendingPacketsWithTransactionIdentifier:(unsigned __int16)identifier;
- (void)close;
- (void)receivedFragmentedPacket:(id)packet;
@end

@implementation HAPFragmentationStream

+ (id)fragmentationPacketsForData:(id)data maxLength:(unint64_t)length transactionIdentifier:(unsigned __int16)identifier
{
  identifierCopy = identifier;
  dataCopy = data;
  v8 = [dataCopy length];
  if (length)
  {
    v9 = v8;
    if (v8)
    {
      if (HIDWORD(v8))
      {
        v10 = sub_10007FAA0(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = sub_10007FAFC(0);
          v23 = 138543874;
          v24 = v11;
          v25 = 1024;
          *v26 = -1;
          *&v26[4] = 2048;
          *&v26[6] = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@[HAPFragmentationInputStream] Data cannot be larger than %u, is %tu", &v23, 0x1Cu);
        }

        goto LABEL_18;
      }

      v13 = length - 12;
      v10 = [NSMutableArray arrayWithCapacity:(length + v8 - 13) / (length - 12)];
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = v9 - v14 >= v13 ? v13 : v9 - v14;
        v17 = [HAPFragmentationPacket alloc];
        v18 = [dataCopy subdataWithRange:{v14, v16}];
        v19 = [(HAPFragmentationPacket *)v17 initWithData:v18 transactionIdentifier:identifierCopy length:v9 offset:v15];

        if (!v19)
        {
          break;
        }

        [v10 addObject:v19];

        v14 = (v15 + v13);
        v15 = v14;
        if (v14 >= v9)
        {
          v10 = v10;
          v20 = v10;
          goto LABEL_19;
        }
      }

      v12 = sub_10007FAA0(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v21 = sub_10007FAFC(0);
        v23 = 138543618;
        v24 = v21;
        v25 = 1024;
        *v26 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@[HAPFragmentationInputStream] Failed to create packet for remaining data at offset %u", &v23, 0x12u);
      }

      goto LABEL_17;
    }
  }

  v10 = sub_10007FAA0(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v12 = sub_10007FAFC(0);
    v23 = 138543874;
    v24 = v12;
    v25 = 2048;
    *v26 = [dataCopy length];
    *&v26[8] = 2048;
    *&v26[10] = length;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@[HAPFragmentationInputStream] Cannot create fragmented packet with length '%tu', max length '%tu'", &v23, 0x20u);
LABEL_17:
  }

LABEL_18:
  v20 = 0;
LABEL_19:

  return v20;
}

- (HAPFragmentationStream)init
{
  v11.receiver = self;
  v11.super_class = HAPFragmentationStream;
  v2 = [(HAPFragmentationStream *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v4 = sub_100014728(v2, 0);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
    clientQueue = v3->_clientQueue;
    v3->_clientQueue = v6;

    v8 = objc_alloc_init(NSMutableOrderedSet);
    pendingPackets = v3->_pendingPackets;
    v3->_pendingPackets = v8;
  }

  return v3;
}

- (void)close
{
  clientQueue = [(HAPFragmentationStream *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006428;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

- (void)receivedFragmentedPacket:(id)packet
{
  packetCopy = packet;
  clientQueue = [(HAPFragmentationStream *)self clientQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006560;
  v7[3] = &unk_100273370;
  v7[4] = self;
  v8 = packetCopy;
  v6 = packetCopy;
  dispatch_async(clientQueue, v7);
}

- (id)__transactionDataWithTransactionIdentifier:(unsigned __int16)identifier
{
  identifierCopy = identifier;
  v4 = [(HAPFragmentationStream *)self __filteredPacketsWithTransactionIdentifier:?];
  if ([v4 count])
  {
    firstObject = [v4 firstObject];
    v6 = [firstObject length];

    v7 = [NSMutableData dataWithCapacity:v6];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          offset = [v13 offset];
          if ([v7 length]!= offset)
          {
            v17 = sub_10007FAA0(0);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = sub_10007FAFC(0);
              offset2 = [v13 offset];
              v20 = [v7 length];
              *buf = 138543874;
              v29 = v18;
              v30 = 1024;
              *v31 = offset2;
              *&v31[4] = 2048;
              *&v31[6] = v20;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@[HAPFragmentationInputStream] Packet with offset %u does not match current offset %tu", buf, 0x1Cu);
            }

            goto LABEL_19;
          }

          data = [v13 data];
          [v7 appendData:data];
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    if ([v7 length]== v6)
    {
      v7 = v7;
      v16 = v7;
      goto LABEL_21;
    }

    v8 = sub_10007FAA0(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v21 = sub_10007FAFC(0);
      v22 = [v7 length];
      *buf = 138543874;
      v29 = v21;
      v30 = 2048;
      *v31 = v22;
      *&v31[8] = 1024;
      *&v31[10] = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@[HAPFragmentationInputStream] Final payload length, %tu, doesn't match expected payload length, %u", buf, 0x1Cu);
    }

    goto LABEL_19;
  }

  v7 = sub_10007FAA0(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = sub_10007FAFC(0);
    *buf = 138543618;
    v29 = v8;
    v30 = 1024;
    *v31 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@[HAPFragmentationInputStream] No packets matching transaction %u", buf, 0x12u);
LABEL_19:
  }

  v16 = 0;
LABEL_21:

  return v16;
}

- (BOOL)__isTransactionCompleteWithTransactionIdentifier:(unsigned __int16)identifier
{
  v3 = [(HAPFragmentationStream *)self __filteredPacketsWithTransactionIdentifier:identifier];
  if ([v3 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          if ([v10 offset] != v7)
          {

            goto LABEL_12;
          }

          data = [v10 data];
          v7 += [data length];
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v7 = 0;
    }

    firstObject = [v4 firstObject];
    v14 = [firstObject length];

    v12 = v7 == v14;
  }

  else
  {
LABEL_12:
    v12 = 0;
  }

  return v12;
}

- (id)__filteredPacketsWithTransactionIdentifier:(unsigned __int16)identifier
{
  identifierCopy = identifier;
  pendingPackets = [(HAPFragmentationStream *)self pendingPackets];
  identifierCopy = [NSPredicate predicateWithFormat:@"transactionIdentifier == %u", identifierCopy];
  v6 = [pendingPackets filteredOrderedSetUsingPredicate:identifierCopy];

  return v6;
}

- (void)__addFragmentationPacket:(id)packet
{
  packetCopy = packet;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  pendingPackets = [(HAPFragmentationStream *)self pendingPackets];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100006DEC;
  v11 = &unk_100273398;
  v6 = packetCopy;
  v12 = v6;
  v13 = &v14;
  [pendingPackets enumerateObjectsUsingBlock:&v8];

  v7 = [(HAPFragmentationStream *)self pendingPackets:v8];
  [v7 insertObject:v6 atIndex:v15[3]];

  _Block_object_dispose(&v14, 8);
}

- (void)__removeAllPendingPacketsWithTransactionIdentifier:(unsigned __int16)identifier
{
  identifierCopy = identifier;
  pendingPackets = [(HAPFragmentationStream *)self pendingPackets];
  v5 = [(HAPFragmentationStream *)self __filteredPacketsWithTransactionIdentifier:identifierCopy];
  array = [v5 array];
  [pendingPackets removeObjectsInArray:array];
}

- (HAPFragmentationStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
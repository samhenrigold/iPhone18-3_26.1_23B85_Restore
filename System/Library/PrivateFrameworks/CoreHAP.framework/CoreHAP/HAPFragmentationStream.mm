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

- (HAPFragmentationStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)__removeAllPendingPacketsWithTransactionIdentifier:(unsigned __int16)identifier
{
  identifierCopy = identifier;
  pendingPackets = [(HAPFragmentationStream *)self pendingPackets];
  v5 = [(HAPFragmentationStream *)self __filteredPacketsWithTransactionIdentifier:identifierCopy];
  array = [v5 array];
  [pendingPackets removeObjectsInArray:array];
}

- (void)__addFragmentationPacket:(id)packet
{
  packetCopy = packet;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  pendingPackets = [(HAPFragmentationStream *)self pendingPackets];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __51__HAPFragmentationStream___addFragmentationPacket___block_invoke;
  v11 = &unk_2786D4BC0;
  v6 = packetCopy;
  v12 = v6;
  v13 = &v14;
  [pendingPackets enumerateObjectsUsingBlock:&v8];

  v7 = [(HAPFragmentationStream *)self pendingPackets:v8];
  [v7 insertObject:v6 atIndex:v15[3]];

  _Block_object_dispose(&v14, 8);
}

void __51__HAPFragmentationStream___addFragmentationPacket___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [*(a1 + 32) transactionIdentifier];
  if (v7 == [v9 transactionIdentifier] && (v8 = objc_msgSend(*(a1 + 32), "offset"), v8 < objc_msgSend(v9, "offset")))
  {
    *a4 = 1;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a3 + 1;
  }
}

- (id)__filteredPacketsWithTransactionIdentifier:(unsigned __int16)identifier
{
  identifierCopy = identifier;
  pendingPackets = [(HAPFragmentationStream *)self pendingPackets];
  identifierCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"transactionIdentifier == %u", identifierCopy];
  v6 = [pendingPackets filteredOrderedSetUsingPredicate:identifierCopy];

  return v6;
}

- (BOOL)__isTransactionCompleteWithTransactionIdentifier:(unsigned __int16)identifier
{
  v21 = *MEMORY[0x277D85DE8];
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
        for (i = 0; i != v6; ++i)
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

- (id)__transactionDataWithTransactionIdentifier:(unsigned __int16)identifier
{
  identifierCopy = identifier;
  v39 = *MEMORY[0x277D85DE8];
  v4 = [(HAPFragmentationStream *)self __filteredPacketsWithTransactionIdentifier:?];
  if ([v4 count])
  {
    firstObject = [v4 firstObject];
    v6 = [firstObject length];

    v7 = [MEMORY[0x277CBEB28] dataWithCapacity:v6];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          offset = [v13 offset];
          if ([v7 length] != offset)
          {
            v17 = objc_autoreleasePoolPush();
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = HMFGetLogIdentifier();
              offset2 = [v13 offset];
              v21 = [v7 length];
              *buf = 138543874;
              v35 = v19;
              v36 = 1024;
              *v37 = offset2;
              *&v37[4] = 2048;
              *&v37[6] = v21;
              _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@[HAPFragmentationInputStream] Packet with offset %u does not match current offset %tu", buf, 0x1Cu);
            }

            objc_autoreleasePoolPop(v17);
            goto LABEL_21;
          }

          data = [v13 data];
          [v7 appendData:data];
        }

        v10 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    if ([v7 length] == v6)
    {
      v16 = v7;
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [v7 length];
        *buf = 138543874;
        v35 = v27;
        v36 = 2048;
        *v37 = v28;
        *&v37[8] = 1024;
        *&v37[10] = v6;
        _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_ERROR, "%{public}@[HAPFragmentationInputStream] Final payload length, %tu, doesn't match expected payload length, %u", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v25);
LABEL_21:
      v16 = 0;
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v24;
      v36 = 1024;
      *v37 = identifierCopy;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@[HAPFragmentationInputStream] No packets matching transaction %u", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v22);
    v16 = 0;
  }

  return v16;
}

- (void)receivedFragmentedPacket:(id)packet
{
  packetCopy = packet;
  clientQueue = [(HAPFragmentationStream *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HAPFragmentationStream_receivedFragmentedPacket___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = packetCopy;
  v6 = packetCopy;
  dispatch_async(clientQueue, v7);
}

void __51__HAPFragmentationStream_receivedFragmentedPacket___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentPacketTransactionIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) currentPacketTransactionIdentifier];
    v5 = [v4 unsignedCharValue];
    v6 = [*(a1 + 40) transactionIdentifier];

    if (v6 != v5)
    {
      v7 = *(a1 + 32);
      v8 = [v7 currentPacketTransactionIdentifier];
      [v7 __removeAllPendingPacketsWithTransactionIdentifier:{objc_msgSend(v8, "unsignedCharValue")}];

      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6723 userInfo:0];
      v10 = [*(a1 + 32) delegate];
      v11 = *(a1 + 32);
      v12 = [v11 currentPacketTransactionIdentifier];
      [v10 fragmentationStream:v11 didReceiveData:0 transactionIdentifier:objc_msgSend(v12 error:{"unsignedCharValue"), v9}];
    }
  }

  [*(a1 + 32) __addFragmentationPacket:*(a1 + 40)];
  v13 = [*(a1 + 32) __isTransactionCompleteWithTransactionIdentifier:{objc_msgSend(*(a1 + 40), "transactionIdentifier")}];
  v14 = *(a1 + 32);
  if (v13)
  {
    v15 = [v14 __transactionDataWithTransactionIdentifier:{objc_msgSend(*(a1 + 40), "transactionIdentifier")}];
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6732 userInfo:0];
    }

    v16 = [*(a1 + 32) delegate];
    [v16 fragmentationStream:*(a1 + 32) didReceiveData:v15 transactionIdentifier:objc_msgSend(*(a1 + 40) error:{"transactionIdentifier"), v17}];

    [*(a1 + 32) setCurrentPacketTransactionIdentifier:0];
    [*(a1 + 32) __removeAllPendingPacketsWithTransactionIdentifier:{objc_msgSend(*(a1 + 40), "transactionIdentifier")}];
  }

  else
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(*(a1 + 40), "transactionIdentifier")}];
    [v14 setCurrentPacketTransactionIdentifier:?];
  }
}

- (void)close
{
  clientQueue = [(HAPFragmentationStream *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HAPFragmentationStream_close__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __31__HAPFragmentationStream_close__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6752 userInfo:0];
  v2 = [*(a1 + 32) delegate];
  [v2 fragmentationStream:*(a1 + 32) didCloseWithError:v3];
}

- (HAPFragmentationStream)init
{
  v11.receiver = self;
  v11.super_class = HAPFragmentationStream;
  v2 = [(HAPFragmentationStream *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v4 = HAPDispatchQueueName(v2, 0);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
    clientQueue = v3->_clientQueue;
    v3->_clientQueue = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB40]);
    pendingPackets = v3->_pendingPackets;
    v3->_pendingPackets = v8;
  }

  return v3;
}

+ (id)fragmentationPacketsForData:(id)data maxLength:(unint64_t)length transactionIdentifier:(unsigned __int16)identifier
{
  identifierCopy = identifier;
  v34 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v8 = [dataCopy length];
  if (!length || (v9 = v8) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v30 = 138543874;
      v31 = v16;
      v32 = 2048;
      *v33 = [dataCopy length];
      *&v33[8] = 2048;
      *&v33[10] = length;
      _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%{public}@[HAPFragmentationInputStream] Cannot create fragmented packet with length '%tu', max length '%tu'", &v30, 0x20u);
    }

    v13 = v14;
    goto LABEL_10;
  }

  if (HIDWORD(v8))
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v30 = 138543874;
      v31 = v12;
      v32 = 1024;
      *v33 = -1;
      *&v33[4] = 2048;
      *&v33[6] = v9;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@[HAPFragmentationInputStream] Data cannot be larger than %u, is %tu", &v30, 0x1Cu);
    }

    v13 = v10;
LABEL_10:
    objc_autoreleasePoolPop(v13);
    v17 = 0;
    goto LABEL_22;
  }

  v18 = length - 12;
  v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:(length + v8 - 13) / (length - 12)];
  v20 = 0;
  v21 = 0;
  while (1)
  {
    v22 = v9 - v20 >= v18 ? v18 : v9 - v20;
    v23 = [HAPFragmentationPacket alloc];
    v24 = [dataCopy subdataWithRange:{v20, v22}];
    v25 = [(HAPFragmentationPacket *)v23 initWithData:v24 transactionIdentifier:identifierCopy length:v9 offset:v21];

    if (!v25)
    {
      break;
    }

    [v19 addObject:v25];

    v20 = (v21 + v18);
    v21 = v20;
    if (v20 >= v9)
    {
      v17 = v19;
      goto LABEL_21;
    }
  }

  v26 = objc_autoreleasePoolPush();
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = HMFGetLogIdentifier();
    v30 = 138543618;
    v31 = v28;
    v32 = 1024;
    *v33 = v21;
    _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_ERROR, "%{public}@[HAPFragmentationInputStream] Failed to create packet for remaining data at offset %u", &v30, 0x12u);
  }

  objc_autoreleasePoolPop(v26);
  v17 = 0;
LABEL_21:

LABEL_22:

  return v17;
}

@end
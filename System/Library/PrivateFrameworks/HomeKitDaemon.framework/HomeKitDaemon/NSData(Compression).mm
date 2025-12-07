@interface NSData(Compression)
- (id)hmd_compressedData;
- (id)hmd_uncompressedData;
@end

@implementation NSData(Compression)

- (id)hmd_uncompressedData
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{2 * objc_msgSend(self, "length", 0, 0, 0, 0, 0, 0, 0)}];
  bzero(v18, 0x2000uLL);
  memset(&v13.zalloc, 0, 24);
  v4 = inflateInit2_(&v13, 15, "1.2.12", 112);
  if (v4)
  {
    v5 = v4;
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v8;
      v16 = 1024;
      v17 = v5;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize zlib for uncompression, error %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v13.avail_in = [self length];
    while (1)
    {
      v13.avail_out = 0x2000;
      v13.next_out = v18;
      v9 = inflate(&v13, 2);
      if (v9 >= 2)
      {
        break;
      }

      v10 = v9;
      [v3 appendBytes:v18 length:0x2000 - v13.avail_out];
      if (v10 == 1 && v13.avail_out)
      {
        inflateEnd(&v13);
        v11 = objc_msgSend_copy(v3);
        goto LABEL_12;
      }
    }

    inflateEnd(&v13);
  }

  v11 = 0;
LABEL_12:

  objc_autoreleasePoolPop(v2);

  return v11;
}

- (id)hmd_compressedData
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  memset(&v14, 0, sizeof(v14));
  bzero(v19, 0x2000uLL);
  v3 = deflateInit2_(&v14, -1, 8, 15, 8, 0, "1.2.12", 112);
  if (v3)
  {
    v4 = v3;
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v7;
      v17 = 1024;
      v18 = v4;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize zlib for compression, error %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{deflateBound(&v14, objc_msgSend(self, "length", *&v14.next_in, *&v14.total_in, *&v14.avail_out, *&v14.msg))}];
    v14.avail_in = [self length];
    while (1)
    {
      v14.avail_out = 0x2000;
      v14.next_out = v19;
      if (deflate(&v14, 4) == -2)
      {
        break;
      }

      [v8 appendBytes:v19 length:0x2000 - v14.avail_out];
      if (v14.avail_out)
      {
        deflateEnd(&v14);
        v9 = objc_msgSend_copy(v8);

        goto LABEL_13;
      }
    }

    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v12;
      v17 = 1024;
      v18 = -2;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to compress, error %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v10);
    deflateEnd(&v14);
  }

  v9 = 0;
LABEL_13:
  objc_autoreleasePoolPop(v2);

  return v9;
}

@end
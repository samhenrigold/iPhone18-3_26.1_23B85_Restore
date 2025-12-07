@interface HMDiskCache
- (BOOL)storeCachedObjects:(id)objects forCacheName:(id)name;
- (HMDiskCache)initWithCachePath:(id)path;
- (id)_cachePathForCacheName:(id)name;
- (id)loadCachedObjectsForCacheWithName:(id)name;
@end

@implementation HMDiskCache

- (id)loadCachedObjectsForCacheWithName:(id)name
{
  v44[3] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = [(HMDiskCache *)self _cachePathForCacheName:nameCopy];
  v37 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [defaultManager fileExistsAtPath:v5 isDirectory:&v37];

  if (!v7)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v13;
      v40 = 2112;
      v41 = v5;
      v14 = "%{public}@The disk cache location being loaded (%@) does not exist yet";
      v15 = v12;
      v16 = OS_LOG_TYPE_INFO;
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v9);
    v17 = MEMORY[0x1E695E0F8];
    goto LABEL_24;
  }

  v8 = v37;
  v9 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8 == 1)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v13;
      v40 = 2112;
      v41 = v5;
      v14 = "%{public}@The disk cache location being loaded (%@) is not a file";
      v15 = v12;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_7:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, buf, 0x16u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v18;
    v40 = 2112;
    v41 = v5;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@The disk cache location exists at %@, loading from disk", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v19 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v5];
  v20 = MEMORY[0x1E695DFD8];
  v44[0] = objc_opt_class();
  v44[1] = objc_opt_class();
  v44[2] = objc_opt_class();
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
  v22 = [v20 setWithArray:v21];

  v36 = 0;
  v23 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v22 fromData:v19 error:&v36];
  v24 = v36;
  v25 = v24;
  if (!v23 || v24)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = selfCopy2;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543874;
      v39 = v34;
      v40 = 2112;
      v41 = v5;
      v42 = 2112;
      v43 = v25;
      _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@The disk cache location being loaded (%@) could not be unarchived: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v31);
    v17 = MEMORY[0x1E695E0F8];
  }

  else
  {
    v26 = v23;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0;
    }

    if (isKindOfClass)
    {
      v29 = v26;
    }

    else
    {
      v29 = MEMORY[0x1E695E0F8];
    }

    v30 = v28;

    v17 = v29;
  }

LABEL_24:

  return v17;
}

- (id)_cachePathForCacheName:(id)name
{
  nameCopy = name;
  if (name)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = a2;
    cachePath = [nameCopy cachePath];
    nameCopy = [v3 stringWithFormat:@"%@/_HMDiskCache_%@", cachePath, v4];
  }

  return nameCopy;
}

- (BOOL)storeCachedObjects:(id)objects forCacheName:(id)name
{
  v58 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  nameCopy = name;
  v8 = [(HMDiskCache *)self _cachePathForCacheName:nameCopy];
  v49 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  cachePath = [(HMDiskCache *)self cachePath];
  v11 = [defaultManager fileExistsAtPath:cachePath isDirectory:&v49];

  if (!v11)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    cachePath2 = [(HMDiskCache *)self cachePath];
    v48 = 0;
    v20 = [defaultManager2 createDirectoryAtPath:cachePath2 withIntermediateDirectories:1 attributes:0 error:&v48];
    v21 = v48;

    if ((v20 & 1) == 0)
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        [(HMDiskCache *)selfCopy cachePath];
        v27 = v26 = v8;
        *buf = 138543874;
        v51 = v25;
        v52 = 2112;
        v53 = v27;
        v54 = 2112;
        v55 = v21;
        _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to make disk cache directory %@ (%@).", buf, 0x20u);

        v8 = v26;
      }

      objc_autoreleasePoolPop(v22);
    }

LABEL_11:
    v47 = 0;
    v28 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:objectsCopy requiringSecureCoding:1 error:&v47];
    v29 = v47;
    if (v29 || !v28)
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138544130;
        v51 = v43;
        v52 = 2112;
        v53 = objectsCopy;
        v54 = 2112;
        v55 = v8;
        v56 = 2112;
        v57 = v29;
        _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode cache object (%@) for disk cache path: %@, error: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v17);
      LOBYTE(v17) = 0;
      goto LABEL_23;
    }

    v46 = 0;
    v30 = v8;
    LODWORD(v17) = [v28 writeToFile:v8 options:1 error:&v46];
    v31 = v46;
    v32 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v34 = HMFGetOSLogHandle();
    v35 = v34;
    if (v17)
    {
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v36 = v45 = v32;
        *buf = 138543874;
        v51 = v36;
        v52 = 2112;
        v53 = objectsCopy;
        v54 = 2112;
        v55 = v30;
        v37 = "%{public}@Wrote cache object (%@) to disk cache at path: %@";
        v38 = v35;
        v39 = OS_LOG_TYPE_INFO;
        v40 = 32;
LABEL_21:
        _os_log_impl(&dword_19BB39000, v38, v39, v37, buf, v40);

        v32 = v45;
      }
    }

    else if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v36 = v45 = v32;
      *buf = 138544130;
      v51 = v36;
      v52 = 2112;
      v53 = objectsCopy;
      v54 = 2112;
      v55 = v30;
      v56 = 2112;
      v57 = v31;
      v37 = "%{public}@Failed to cache object (%@) for disk cache path: %@ with error %@";
      v38 = v35;
      v39 = OS_LOG_TYPE_ERROR;
      v40 = 42;
      goto LABEL_21;
    }

    objc_autoreleasePoolPop(v32);
    v8 = v30;
LABEL_23:

    goto LABEL_24;
  }

  if (v49)
  {
    goto LABEL_11;
  }

  v12 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    cachePath3 = [(HMDiskCache *)selfCopy4 cachePath];
    *buf = 138543618;
    v51 = v15;
    v52 = 2112;
    v53 = cachePath3;
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@The disk cache location %@ is not a directory", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  LOBYTE(v17) = 0;
LABEL_24:

  return v17;
}

- (HMDiskCache)initWithCachePath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = HMDiskCache;
  v5 = [(HMDiskCache *)&v9 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    cachePath = v5->_cachePath;
    v5->_cachePath = v6;
  }

  return v5;
}

@end
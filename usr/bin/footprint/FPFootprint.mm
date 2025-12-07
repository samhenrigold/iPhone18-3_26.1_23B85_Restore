@interface FPFootprint
- (id)ioAccelMemoryInfoDetailsAtAddress:(unint64_t)address for:(int)for error:(id *)error;
- (id)ioSurfaceExtendedInfoDetailsAtAddress:(unint64_t)address for:(int)for;
- (void)dealloc;
@end

@implementation FPFootprint

- (void)dealloc
{
  sub_10000F020(self);
  v3.receiver = self;
  v3.super_class = FPFootprint;
  [(FPFootprint *)&v3 dealloc];
}

- (id)ioSurfaceExtendedInfoDetailsAtAddress:(unint64_t)address for:(int)for
{
  v4 = *&for;
  os_unfair_lock_lock(&self->_allPIDsIOSurfaceDescriptionsLock);
  allPIDsIOSurfaceDescriptions = self->_allPIDsIOSurfaceDescriptions;
  if (!allPIDsIOSurfaceDescriptions)
  {
    v8 = +[IOSurfaceDebugDescription surfaceDescriptions];
    v9 = self->_allPIDsIOSurfaceDescriptions;
    self->_allPIDsIOSurfaceDescriptions = v8;

    allPIDsIOSurfaceDescriptions = self->_allPIDsIOSurfaceDescriptions;
  }

  v10 = [NSNumber numberWithInt:v4];
  v11 = [(NSDictionary *)allPIDsIOSurfaceDescriptions objectForKey:v10];

  os_unfair_lock_unlock(&self->_allPIDsIOSurfaceDescriptionsLock);
  if (v11)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000125EC;
    v24[3] = &unk_100029D78;
    v24[4] = address;
    v12 = [NSPredicate predicateWithBlock:v24];
    v13 = [v11 filteredArrayUsingPredicate:v12];
    firstObject = [v13 firstObject];

    if (firstObject)
    {
      v25[0] = @"surfaceID";
      v15 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [firstObject surfaceID]);
      v26[0] = v15;
      v25[1] = @"PixelFormat";
      v16 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [firstObject pixelFormat]);
      v26[1] = v16;
      v25[2] = @"Width";
      v17 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [firstObject width]);
      v26[2] = v17;
      v25[3] = @"Height";
      v18 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [firstObject height]);
      v26[3] = v18;
      v19 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];
      v20 = [v19 mutableCopy];

      name = [firstObject name];

      if (name)
      {
        name2 = [firstObject name];
        [v20 setObject:name2 forKey:@"Name"];
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)ioAccelMemoryInfoDetailsAtAddress:(unint64_t)address for:(int)for error:(id *)error
{
  v6 = *&for;
  objc_opt_self();
  if (objc_opt_class())
  {
    os_unfair_lock_lock(&self->_allPIDsIOAccelMemoryInfosLock);
    if (!self->_allPIDsIOAccelMemoryInfos)
    {
      v61 = 0;
      v62 = &v61;
      v63 = 0x3032000000;
      v64 = sub_100012D1C;
      v65 = sub_100012D2C;
      v66 = +[NSMutableDictionary dictionary];
      v55 = 0;
      v56 = &v55;
      v57 = 0x3032000000;
      v58 = sub_100012D1C;
      v59 = sub_100012D2C;
      v60 = 0;
      v9 = dispatch_semaphore_create(0);
      v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v11 = dispatch_queue_create("com.apple.footprint.ioaccelmemoryinfo", v10);

      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_100012D34;
      v51[3] = &unk_100029DD8;
      v53 = &v55;
      v54 = &v61;
      v12 = v9;
      v52 = v12;
      [IOAccelMemoryInfo collectDataWithCompletionQueue:v11 completionBlock:v51];
      v13 = dispatch_time(0, 60000000000);
      if (dispatch_semaphore_wait(v12, v13))
      {
        if (error)
        {
          v69 = NSLocalizedDescriptionKey;
          v70 = @"Timed out waiting to fetch IOAccelMemory region infos";
          v14 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
          *error = [NSError errorWithDomain:@"FootprintErrorDomain" code:1 userInfo:v14];
        }
      }

      else if (error)
      {
        v16 = v56[5];
        if (v16)
        {
          *error = v16;
        }
      }

      v17 = [v62[5] copy];
      allPIDsIOAccelMemoryInfos = self->_allPIDsIOAccelMemoryInfos;
      self->_allPIDsIOAccelMemoryInfos = v17;

      _Block_object_dispose(&v55, 8);
      _Block_object_dispose(&v61, 8);
    }

    os_unfair_lock_unlock(&self->_allPIDsIOAccelMemoryInfosLock);
    v19 = self->_allPIDsIOAccelMemoryInfos;
    v20 = [NSNumber numberWithInt:v6];
    v21 = [(NSDictionary *)v19 objectForKeyedSubscript:v20];

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v22 = v21;
    v23 = [v22 countByEnumeratingWithState:&v47 objects:v68 count:16];
    if (v23)
    {
      v24 = *v48;
      while (2)
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v48 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v47 + 1) + 8 * i);
          mappings = [v26 mappings];
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v28 = mappings;
          v29 = [v28 countByEnumeratingWithState:&v43 objects:v67 count:16];
          if (v29)
          {
            v30 = *v44;
LABEL_18:
            v31 = 0;
            while (1)
            {
              if (*v44 != v30)
              {
                objc_enumerationMutation(v28);
              }

              if ([*(*(&v43 + 1) + 8 * v31) address] == address)
              {
                break;
              }

              if (v29 == ++v31)
              {
                v29 = [v28 countByEnumeratingWithState:&v43 objects:v67 count:16];
                if (v29)
                {
                  goto LABEL_18;
                }

                goto LABEL_24;
              }
            }

            v32 = v26;

            if (!v32)
            {
              continue;
            }

            v15 = +[NSMutableDictionary dictionary];
            v33 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v32 surfaceID]);
            [v15 setObject:v33 forKeyedSubscript:@"SurfaceID"];

            v34 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v32 length]);
            [v15 setObject:v34 forKeyedSubscript:@"Size"];

            v35 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v32 dirtyLength]);
            [v15 setObject:v35 forKeyedSubscript:@"DirtySize"];

            v36 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v32 residentLength]);
            [v15 setObject:v36 forKeyedSubscript:@"ResidentSize"];

            v37 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v32 wired]);
            [v15 setObject:v37 forKeyedSubscript:@"IsWired"];

            v38 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v32 purgeable]);
            [v15 setObject:v38 forKeyedSubscript:@"IsPurgeable"];

            v39 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v32 cachedCopy]);
            [v15 setObject:v39 forKeyedSubscript:@"CachedCopy"];

            v40 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v32 memoryPool]);
            [v15 setObject:v40 forKeyedSubscript:@"MemoryPool"];

            formattedDescriptions = [v32 formattedDescriptions];
            [v15 setObject:formattedDescriptions forKeyedSubscript:@"Descriptions"];

            goto LABEL_30;
          }

LABEL_24:
        }

        v23 = [v22 countByEnumeratingWithState:&v47 objects:v68 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
    v32 = v22;
LABEL_30:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end
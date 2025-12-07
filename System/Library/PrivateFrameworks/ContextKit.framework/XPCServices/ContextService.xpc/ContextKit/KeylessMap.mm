@interface KeylessMap
+ (id)keylessMapForDirectory:(id)directory fileName:(id)name;
- (KeylessMap)initWithImpl:(id)impl;
- (id)objectsForKey:(id)key intoSet:(id)set keepWalkingOut:(BOOL *)out;
- (void)dealloc;
@end

@implementation KeylessMap

- (KeylessMap)initWithImpl:(id)impl
{
  implCopy = impl;
  v9.receiver = self;
  v9.super_class = KeylessMap;
  v6 = [(KeylessMap *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, impl);
    pthread_mutex_init(&v7->_lock, 0);
  }

  return v7;
}

+ (id)keylessMapForDirectory:(id)directory fileName:(id)name
{
  v4 = [ComAppleContextkitUtilKeylessMapBase openWithOrgApacheLuceneStoreDirectory:directory withNSString:name];
  if (v4)
  {
    v5 = [[KeylessMap alloc] initWithImpl:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)objectsForKey:(id)key intoSet:(id)set keepWalkingOut:(BOOL *)out
{
  keyCopy = key;
  setCopy = set;
  if ([keyCopy length])
  {
    v10 = [[OrgApacheLuceneUtilBytesRef alloc] initWithJavaLangCharSequence:keyCopy];
    v11 = v10;
    if (v10 && v10->bytes_ && v10->length_ > 0)
    {
      pthread_mutex_lock(&self->_lock);
      newArray = [(ComAppleContextkitUtilKeylessMapBase *)self->_impl newArray];
      pthread_mutex_unlock(&self->_lock);
      v13 = newArray[2];
      v14 = _PASMurmur3_x64_128();
      if (v13 >= 1)
      {
        newArray[3] = v14;
        if (v13 != 1)
        {
          v17 = HIDWORD(v14);
          newArray[4] = HIDWORD(v14);
          if (v13 >= 3)
          {
            newArray[5] = v15;
            if (v13 != 3)
            {
              newArray[6] = v16;
              if (v13 >= 5)
              {
                v18 = 0;
                v19 = 0;
                v20 = (v13 - 5) >> 1;
                v21 = vdupq_n_s64(v20);
                v22 = (v20 & 0x7FFFFFFFFFFFFFFCLL) + 4;
                v23 = 8 * HIDWORD(v14);
                v24 = newArray + 9;
                do
                {
                  v25 = vdupq_n_s64(v19);
                  v26 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(v25, xmmword_100315B40)));
                  if (vuzp1_s16(v26, 2).u8[0])
                  {
                    v27 = 715827883 * ((v18 + 4) * (v18 + 4) - 1) * (v18 + 4);
                    *(v24 - 2) = 4 * v17 + v14 + HIDWORD(v27) + (v27 >> 63);
                  }

                  if (vuzp1_s16(v26, 2).i8[2])
                  {
                    v28 = 715827883 * ((v18 + 6) * (v18 + 6) - 1) * (v18 + 6);
                    *v24 = 6 * v17 + v14 + HIDWORD(v28) + (v28 >> 63);
                  }

                  if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v21, vorrq_s8(v25, xmmword_100315B30)))).i32[1])
                  {
                    v29 = 715827883 * ((v18 + 8) * (v18 + 8) - 1) * (v18 + 8);
                    v24[2] = v23 + v14 + HIDWORD(v29) + (v29 >> 63);
                    v30 = 715827883 * ((v18 + 10) * (v18 + 10) - 1) * (v18 + 10);
                    v24[4] = 10 * v17 + v14 + HIDWORD(v30) + (v30 >> 63);
                  }

                  v19 += 4;
                  v18 += 8;
                  LODWORD(v14) = v14 + v23;
                  v24 += 8;
                }

                while (v22 != v19);
                if (v13 >= 6)
                {
                  v31 = 0;
                  v32 = 0;
                  v33 = (v13 - 6) >> 1;
                  v34 = vdupq_n_s64(v33);
                  v35 = (v33 & 0x7FFFFFFFFFFFFFFCLL) + 4;
                  v36 = newArray + 10;
                  do
                  {
                    v37 = vdupq_n_s64(v32);
                    v38 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(v37, xmmword_100315B40)));
                    if (vuzp1_s16(v38, 2).u8[0])
                    {
                      v39 = 715827883 * ((v31 + 5) * (v31 + 5) - 1) * (v31 + 5);
                      *(v36 - 2) = 5 * v16 + v15 + HIDWORD(v39) + (v39 >> 63);
                    }

                    if (vuzp1_s16(v38, 2).i8[2])
                    {
                      v40 = 715827883 * ((v31 + 7) * (v31 + 7) - 1) * (v31 + 7);
                      *v36 = 7 * v16 + v15 + HIDWORD(v40) + (v40 >> 63);
                    }

                    if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v34, vorrq_s8(v37, xmmword_100315B30)))).i32[1])
                    {
                      v41 = 715827883 * ((v31 + 9) * (v31 + 9) - 1) * (v31 + 9);
                      v36[2] = 9 * v16 + v15 + HIDWORD(v41) + (v41 >> 63);
                      v42 = 715827883 * ((v31 + 11) * (v31 + 11) - 1) * (v31 + 11);
                      v36[4] = 11 * v16 + v15 + HIDWORD(v42) + (v42 >> 63);
                    }

                    v32 += 4;
                    v31 += 8;
                    v15 += 8 * v16;
                    v36 += 8;
                  }

                  while (v35 != v32);
                }
              }
            }
          }
        }
      }

      pthread_mutex_lock(&self->_lock);
      v43 = [(ComAppleContextkitUtilKeylessMapBase *)self->_impl getWithHashesWithIntArray:newArray];
      pthread_mutex_unlock(&self->_lock);
      v44 = [v43 size];
      if (v44)
      {
        if (!setCopy)
        {
          setCopy = [[NSMutableSet alloc] initWithCapacity:v44];
        }

        v54 = newArray;
        v55 = v11;
        if (out)
        {
          *out = 0;
        }

        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v53 = v43;
        v45 = v43;
        v46 = [v45 countByEnumeratingWithState:&v56 objects:v60 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = *v57;
          do
          {
            for (i = 0; i != v47; i = i + 1)
            {
              if (*v57 != v48)
              {
                objc_enumerationMutation(v45);
              }

              v50 = *(*(&v56 + 1) + 8 * i);
              if (out && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v50 integerValue] == 16)
              {
                *out = 1;
              }

              else
              {
                [setCopy addObject:v50];
              }
            }

            v47 = [v45 countByEnumeratingWithState:&v56 objects:v60 count:16];
          }

          while (v47);
        }

        newArray = v54;
        v11 = v55;
        v43 = v53;
      }

      v51 = setCopy;
    }

    else
    {
      v51 = setCopy;
    }
  }

  else
  {
    v51 = setCopy;
  }

  return v51;
}

- (void)dealloc
{
  pthread_mutex_lock(&self->_lock);
  [(ComAppleContextkitUtilKeylessMapBase *)self->_impl close];
  pthread_mutex_unlock(&self->_lock);
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = KeylessMap;
  [(KeylessMap *)&v3 dealloc];
}

@end
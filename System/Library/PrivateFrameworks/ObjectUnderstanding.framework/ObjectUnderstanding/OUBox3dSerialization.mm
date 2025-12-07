@interface OUBox3dSerialization
- (OUBox3d)box3dFromDictionary:(SEL)dictionary;
- (id)dictionaryFromBox3d:(OUBox3d *)box3d;
- (id)dictionaryFromBoxes3d:()vector<OUBox3d;
- (id)dictionaryFromBoxes3dPointCloud:()vector<OUBox3d pointCloud:(std:(id)cloud :allocator<OUBox3d>> *)a3;
- (id)pointCloudFromDictionary:(id)dictionary;
- (vector<OUBox3d,)boxes3dFromDictionary:(OUBox3dSerialization *)self;
@end

@implementation OUBox3dSerialization

- (id)dictionaryFromBox3d:(OUBox3d *)box3d
{
  v40 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:box3d[1].var5.var0 forKeyedSubscript:@"type"];
  uUIDString = [box3d[1].var5.var2 UUIDString];
  [dictionary setObject:uUIDString forKeyedSubscript:@"identifier"];

  LODWORD(v5) = box3d[1].var5.var1;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  [dictionary setObject:v6 forKeyedSubscript:@"confidence"];

  v26 = 0;
  v27 = 0;
  v28 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v26, box3d[1].var6.var1, box3d[1].var6.var2, (box3d[1].var6.var2 - box3d[1].var6.var1) >> 2);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v29, v26, v27, (v27 - v26) >> 2);
  __p = 0;
  v33 = 0;
  v34 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v29, v30, (v30 - v29) >> 2);
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:(v33 - __p) >> 2];
  v9 = __p;
  if (v33 != __p)
  {
    v10 = 0;
    do
    {
      LODWORD(v8) = v9[v10];
      v11 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
      [v7 addObject:v11];

      ++v10;
      v9 = __p;
    }

    while (v10 < (v33 - __p) >> 2);
  }

  v12 = [v7 copy];

  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  [dictionary setObject:v12 forKeyedSubscript:@"logits"];

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  __p = float3ToNSArray(*&box3d->var1);
  v24 = __p;
  v13 = float3ToNSArray(*&box3d->var3);
  v33 = v13;
  v14 = float3ToNSArray(*&box3d->var5.var0);
  v34 = v14;
  v15 = float3ToNSArray(*&box3d->var5.var2);
  v35 = v15;
  v16 = float3ToNSArray(*&box3d->var6.var1);
  v36 = v16;
  v17 = float3ToNSArray(*&box3d->var7);
  v37 = v17;
  v18 = float3ToNSArray(*&box3d[1].var1);
  v38 = v18;
  v19 = float3ToNSArray(*&box3d[1].var3);
  v39 = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&__p count:8];

  [dictionary setObject:v20 forKeyedSubscript:@"bbox"];
  [dictionary setObject:box3d[2].var3 forKeyedSubscript:@"group_type"];
  v21 = [MEMORY[0x277CCABB0] numberWithShort:SLOWORD(box3d[2].var4)];
  [dictionary setObject:v21 forKeyedSubscript:@"group_id"];

  v22 = [dictionary copy];

  return v22;
}

- (id)dictionaryFromBoxes3d:()vector<OUBox3d
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = objc_opt_new();
  begin = a3->__begin_;
  if (a3->__end_ != a3->__begin_)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      OUBox3d::OUBox3d(&v13, (begin + v8));
      v10 = [(OUBox3dSerialization *)self dictionaryFromBox3d:&v13];

      if (__p)
      {
        operator delete(__p);
      }

      if (v17)
      {
        v18 = v17;
        operator delete(v17);
      }

      [v6 addObject:v10];
      ++v9;
      begin = a3->__begin_;
      v8 += 224;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((a3->__end_ - a3->__begin_) >> 5) > v9);
  }

  [dictionary setObject:v6 forKeyedSubscript:@"boxes"];
  v11 = [dictionary copy];

  return v11;
}

- (id)dictionaryFromBoxes3dPointCloud:()vector<OUBox3d pointCloud:(std:(id)cloud :allocator<OUBox3d>> *)a3
{
  cloudCopy = cloud;
  memset(v12, 0, sizeof(v12));
  std::vector<OUBox3d>::__init_with_size[abi:ne200100]<OUBox3d*,OUBox3d*>(v12, a3->__begin_, a3->__end_, 0x6DB6DB6DB6DB6DB7 * ((a3->__end_ - a3->__begin_) >> 5));
  v7 = [(OUBox3dSerialization *)self dictionaryFromBoxes3d:v12];
  v8 = [v7 mutableCopy];

  v13 = v12;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&v13);
  v9 = OUPointCloudToDictionary(cloudCopy);
  [v8 setObject:v9 forKeyedSubscript:@"points"];

  v10 = [v8 copy];

  return v10;
}

- (OUBox3d)box3dFromDictionary:(SEL)dictionary
{
  v5 = a4;
  v6 = [v5 objectForKeyedSubscript:@"type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = v6;
  }

  else
  {
    v40 = 0;
  }

  v7 = [v5 objectForKeyedSubscript:@"bbox"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 objectForKeyedSubscript:@"confidence"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = v9;
  }

  else
  {
    v41 = 0;
  }

  v10 = v8;
  if ([v10 count] == 8)
  {
    for (i = 0; i != 8; ++i)
    {
      v12 = [v10 objectAtIndexedSubscript:i];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        break;
      }

      v14 = [v10 objectAtIndexedSubscript:i];
      if ([v14 count] != 3)
      {

        goto LABEL_17;
      }

      v15 = [v14 objectAtIndexedSubscript:0];
      [v15 floatValue];
      v43 = v16;
      v17 = [v14 objectAtIndexedSubscript:1];
      [v17 floatValue];
      v42 = v18;
      v19 = [v14 objectAtIndexedSubscript:2];
      [v19 floatValue];
      v20 = v43;
      DWORD1(v20) = v42;
      DWORD2(v20) = v21;
      v46[i] = v20;
    }
  }

  else
  {
LABEL_17:
    isKindOfClass = 0;
  }

  if (!v40 || !v10 || !v41 || (isKindOfClass & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "[3DOD] input is insufficient to process box3dFromDictionary.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  v22 = [v5 objectForKeyedSubscript:@"type"];
  [v41 floatValue];
  v24 = v23;
  v25 = v46[5];
  *&retstr->var6.var1 = v46[4];
  *&retstr->var7 = v25;
  v26 = v46[7];
  *&retstr[1].var1 = v46[6];
  *&retstr[1].var3 = v26;
  v27 = v46[1];
  *&retstr->var1 = v46[0];
  *&retstr->var3 = v27;
  v28 = v46[3];
  *&retstr->var5.var0 = v46[2];
  *&retstr->var5.var2 = v28;
  v29 = v22;
  retstr[1].var5.var0 = v29;
  LODWORD(retstr[1].var5.var1) = v24;
  retstr[1].var5.var2 = 0;
  retstr[1].var6.var0 = @"unknown";
  *&retstr[1].var6.var1 = 0u;
  *&retstr[1].var7 = 0u;
  *&retstr[2].var1 = 0u;
  retstr[2].var3 = 0;
  LOWORD(retstr[2].var4) = -1;
  v30 = [v5 objectForKeyedSubscript:@"identifier"];
  if (v30)
  {
    retstr[1].var5.var2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v30];
  }

  v31 = [v5 objectForKeyedSubscript:@"logits"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  if (v32)
  {
    vectorFromNSArray(v32, &v44);
    v33 = v45;
    *&retstr[1].var6.var1 = v44;
    retstr[1].var7 = v33;
  }

  v34 = [v5 objectForKeyedSubscript:@"group_type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  if (v35)
  {
    retstr[2].var3 = [v5 objectForKeyedSubscript:@"group_type"];
  }

  v36 = [v5 objectForKeyedSubscript:@"group_id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  if (v37)
  {
    LOWORD(retstr[2].var4) = [v37 intValue];
  }

  return result;
}

- (id)pointCloudFromDictionary:(id)dictionary
{
  v20 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [dictionaryCopy allKeys];
  v5 = 0;
  v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 isEqualToString:@"points"])
        {
          v10 = [OUPointCloud alloc];
          v11 = [dictionaryCopy objectForKeyedSubscript:v9];
          v12 = [(OUPointCloud *)v10 initWithDictionary:v11];

          v5 = v12;
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = [v5 copy];

  return v13;
}

- (vector<OUBox3d,)boxes3dFromDictionary:(OUBox3dSerialization *)self
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a4;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v29 = v6;
  allKeys = [v6 allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v8)
  {
    v9 = *v45;
    v28 = allKeys;
    do
    {
      v30 = v8;
      for (i = 0; i != v30; ++i)
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        if ([v11 isEqualToString:@"boxes"])
        {
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v12 = [v29 objectForKeyedSubscript:v11];
          v13 = [v12 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v13)
          {
            v14 = *v41;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v41 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                objc_msgSend_box3dFromDictionary_(self);
                end = retstr->__end_;
                if (end >= retstr->__cap_)
                {
                  v26 = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d>(retstr, v31);
                }

                else
                {
                  v17 = v31[0];
                  v18 = v31[1];
                  v19 = v31[3];
                  *&end->var5.var0 = v31[2];
                  *&end->var5.var2 = v19;
                  *&end->var1 = v17;
                  *&end->var3 = v18;
                  v20 = v31[4];
                  v21 = v31[5];
                  v22 = v31[7];
                  *&end[1].var1 = v31[6];
                  *&end[1].var3 = v22;
                  *&end->var6.var1 = v20;
                  *&end->var7 = v21;
                  v23 = v32;
                  v32 = 0;
                  end[1].var5.var0 = v23;
                  LODWORD(end[1].var5.var1) = v33;
                  v24 = v34;
                  v34 = 0u;
                  end[1].var7 = 0;
                  *&end[1].var5.var2 = v24;
                  *&end[1].var6.var1 = 0u;
                  *&end[1].var6.var1 = *v35;
                  end[1].var7 = v36;
                  *v35 = 0u;
                  v36 = 0;
                  *&end[1].var8 = __p[0];
                  *&end[2].var1 = *&__p[1];
                  memset(__p, 0, sizeof(__p));
                  v25 = v38;
                  v38 = 0;
                  end[2].var3 = v25;
                  LOWORD(end[2].var4) = v39;
                  v26 = (end + 224);
                }

                retstr->__end_ = v26;

                if (__p[0])
                {
                  operator delete(__p[0]);
                }

                if (v35[0])
                {
                  v35[1] = v35[0];
                  operator delete(v35[0]);
                }
              }

              v13 = [v12 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v13);
          }

          allKeys = v28;
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v8);
  }

  return result;
}

@end
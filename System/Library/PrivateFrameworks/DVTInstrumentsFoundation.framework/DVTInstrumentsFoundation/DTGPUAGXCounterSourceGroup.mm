@interface DTGPUAGXCounterSourceGroup
- (BOOL)request:(unint64_t)request vendorFeatures:(id)features;
- (DTGPUAGXCounterSourceGroup)initWithSourceGroup:(id)group selects:(id)selects apsSelects:(id)apsSelects profile:(unint64_t)profile;
- (void)resume;
- (void)sampleAPS:(id)s;
- (void)sampleCounters:(unint64_t)counters callback:(id)callback;
- (void)stop;
@end

@implementation DTGPUAGXCounterSourceGroup

- (DTGPUAGXCounterSourceGroup)initWithSourceGroup:(id)group selects:(id)selects apsSelects:(id)apsSelects profile:(unint64_t)profile
{
  v80 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  selectsCopy = selects;
  selectsCopy2 = selects;
  apsSelectsCopy = apsSelects;
  v73.receiver = self;
  v73.super_class = DTGPUAGXCounterSourceGroup;
  v61 = [(DTGPUAGXCounterSourceGroup *)&v73 init];
  if (!v61)
  {
    goto LABEL_45;
  }

  v64 = objc_opt_new();
  if ([selectsCopy2 count] >= 6)
  {
    v59 = [groupCopy subDivideCounterList:selectsCopy2 withOptions:0];
    v60 = [v59 objectForKeyedSubscript:@"passNum"];
    v11 = [v59 objectForKeyedSubscript:@"passList"];
    v12 = [v11 objectAtIndexedSubscript:0];
    v13 = [v12 mutableCopy];

    if ([v60 unsignedIntValue] != 1 || (v14 = objc_msgSend(v13, "count"), objc_msgSend(groupCopy, "sourceList"), v15 = objc_claimAutoreleasedReturnValue(), v16 = v14 == objc_msgSend(v15, "count"), v15, !v16))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v26 = MEMORY[0x277D86220];
        v27 = "Fatal error: cannot fit counters in one pass and/or subdivided list does not equal to source count\n";
        v28 = OS_LOG_TYPE_ERROR;
LABEL_49:
        _os_log_impl(&dword_247F67000, v26, v28, v27, buf, 2u);
      }

LABEL_50:

      goto LABEL_51;
    }

    v17 = 0;
    v18 = MEMORY[0x277D86220];
    v55 = 136315394;
    while ([v13 count] > v17)
    {
      sourceList = [groupCopy sourceList];
      v20 = [sourceList objectAtIndexedSubscript:v17];

      v21 = [v13 objectAtIndexedSubscript:v17];
      if ([v21 count])
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          name = [v20 name];
          v23 = name;
          uTF8String = [name UTF8String];
          *buf = v55;
          v77 = uTF8String;
          v78 = 2112;
          v79 = v21;
          _os_log_impl(&dword_247F67000, v18, OS_LOG_TYPE_INFO, "Created %s source\n. Counters: %@", buf, 0x16u);
        }

        v25 = [[DTGPUAGXCounterSource alloc] initWithSource:v20 sourceGroup:groupCopy selects:v21 sourceIndex:[(NSArray *)v64 count]];
        [(NSArray *)v64 addObject:v25];
      }

      ++v17;
    }
  }

  if (![apsSelectsCopy count])
  {
    goto LABEL_43;
  }

  v29 = [groupCopy subDivideCounterList:apsSelectsCopy withOptions:0];
  v30 = [v29 objectForKeyedSubscript:@"passNum"];
  v31 = [v29 objectForKeyedSubscript:@"passList"];
  profileCopy = profile;
  v13 = [v31 objectAtIndexedSubscript:0];

  if ([v30 unsignedIntValue] >= 2)
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v32 = v13;
    v33 = [v32 countByEnumeratingWithState:&v69 objects:v75 count:16];
    if (v33)
    {
      v34 = *v70;
      while (2)
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v70 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = *(*(&v69 + 1) + 8 * i);
          if ([v36 count])
          {
            v37 = v36;

            apsSelectsCopy = v37;
            goto LABEL_27;
          }
        }

        v33 = [v32 countByEnumeratingWithState:&v69 objects:v75 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }
    }

LABEL_27:
  }

  v59 = [groupCopy subDivideCounterList:apsSelectsCopy withOptions:0];

  v60 = [v59 objectForKeyedSubscript:@"passNum"];

  if ([v60 unsignedIntValue] != 1)
  {
    goto LABEL_50;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  sourceList2 = [groupCopy sourceList];
  v39 = [sourceList2 countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (!v39)
  {
LABEL_46:

LABEL_47:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_50;
    }

    *buf = 0;
    v26 = MEMORY[0x277D86220];
    v27 = "Failed to find APS Source\n";
    v28 = OS_LOG_TYPE_INFO;
    goto LABEL_49;
  }

  v40 = *v66;
LABEL_31:
  v41 = 0;
  while (1)
  {
    if (*v66 != v40)
    {
      objc_enumerationMutation(sourceList2);
    }

    v42 = *(*(&v65 + 1) + 8 * v41);
    name2 = [v42 name];
    v44 = [name2 hasPrefix:@"APS_USC"];

    if (v44)
    {
      break;
    }

    if (v39 == ++v41)
    {
      v39 = [sourceList2 countByEnumeratingWithState:&v65 objects:v74 count:16];
      if (v39)
      {
        goto LABEL_31;
      }

      goto LABEL_46;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    name3 = [v42 name];
    v46 = name3;
    uTF8String2 = [name3 UTF8String];
    ringBufferNum = [v42 ringBufferNum];
    *buf = 136315394;
    v77 = uTF8String2;
    v78 = 1024;
    LODWORD(v79) = ringBufferNum;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Adding APS Source: %s, RING BUFFER %d\n", buf, 0x12u);
  }

  v49 = [[DTGPUAPSCounterSource alloc] initWithSource:v42 sourceGroup:groupCopy selects:apsSelectsCopy sourceIndex:[(NSArray *)v64 count] profile:profileCopy];
  if (!v49)
  {
    goto LABEL_46;
  }

  v50 = v42;
  [(NSArray *)v64 addObject:v49];

  if (!v50)
  {
    goto LABEL_47;
  }

LABEL_43:
  if (![(NSArray *)v64 count])
  {
LABEL_51:

    v53 = 0;
    goto LABEL_52;
  }

  sources = v61->_sources;
  v61->_sources = v64;
  v52 = v64;

  objc_storeStrong(&v61->_sourceGroup, group);
  objc_storeStrong(&v61->_selects, selectsCopy);

LABEL_45:
  v53 = v61;
LABEL_52:

  return v53;
}

- (BOOL)request:(unint64_t)request vendorFeatures:(id)features
{
  v18 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_sources;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if (([*(*(&v13 + 1) + 8 * i) request:request vendorFeatures:{featuresCopy, v13}] & 1) == 0)
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (void)resume
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = self->_sources;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v6 + 1) + 8 * v5++) resume];
      }

      while (v3 != v5);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)stop
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = self->_sources;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v6 + 1) + 8 * v5++) stop];
      }

      while (v3 != v5);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)sampleCounters:(unint64_t)counters callback:(id)callback
{
  v16 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_sources;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10++) sampleCounters:counters callback:{callbackCopy, v11}];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)sampleAPS:(id)s
{
  v14 = *MEMORY[0x277D85DE8];
  sCopy = s;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_sources;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8++) sampleAPS:{sCopy, v9}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end
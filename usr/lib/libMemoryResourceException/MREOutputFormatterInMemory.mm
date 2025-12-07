@interface MREOutputFormatterInMemory
- (MREOutputFormatterInMemory)init;
- (void)printGlobalAuxData:(id)data;
- (void)printProcessAuxData:(id)data forProcess:(id)process;
- (void)printProcessCategories:(id)categories total:(id *)total forProcess:(id)process;
- (void)printProcessHeader:(id)header;
- (void)printProcessTotal:(id)total forProcess:(id)process;
- (void)printProcessesWithWarnings:(id)warnings processesWithErrors:(id)errors globalErrors:(id)globalErrors;
- (void)printSharedCategories:(id)categories sharedWith:(id)with forProcess:(id)process hasProcessView:(BOOL)view total:(id *)total;
- (void)printSummaryCategories:(id)categories total:(id *)total hadErrors:(BOOL)errors;
@end

@implementation MREOutputFormatterInMemory

- (MREOutputFormatterInMemory)init
{
  v17[10] = *MEMORY[0x29EDCA608];
  v15.receiver = self;
  v15.super_class = MREOutputFormatterInMemory;
  v2 = [(MREOutputFormatterInMemory *)&v15 init];
  if (v2)
  {
    v3 = objc_opt_new();
    processes = v2->_processes;
    v2->_processes = v3;

    v5 = objc_opt_new();
    addedProcessGroups = v2->_addedProcessGroups;
    v2->_addedProcessGroups = v5;

    v2->_isPageSizeSet = 0;
    v7 = MEMORY[0x29EDB8E00];
    v8 = MEMORY[0x29EDB8EA0];
    v16[0] = @"total footprint";
    v16[1] = @"summary";
    v17[0] = &unk_2A1E95180;
    v17[1] = MEMORY[0x29EDB8EA0];
    v17[2] = v2->_processes;
    v16[2] = @"processes";
    v16[3] = @"shared";
    array = [MEMORY[0x29EDB8DE8] array];
    v17[3] = array;
    v17[4] = v8;
    v16[4] = @"auxiliary";
    v16[5] = @"unit";
    v17[5] = @"byte";
    v17[6] = &unk_2A1E95198;
    v16[6] = @"bytes per unit";
    v16[7] = @"page size";
    v10 = [MEMORY[0x29EDBA070] numberWithUnsignedLong:*MEMORY[0x29EDCA6C0]];
    v17[7] = v10;
    v17[8] = MEMORY[0x29EDB8E90];
    v16[8] = @"errors";
    v16[9] = @"warnings";
    v17[9] = MEMORY[0x29EDB8E90];
    v11 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v17 forKeys:v16 count:10];
    v12 = [v7 dictionaryWithDictionary:v11];
    data = v2->_data;
    v2->_data = v12;
  }

  return v2;
}

- (void)printProcessHeader:(id)header
{
  v55[5] = *MEMORY[0x29EDCA608];
  headerCopy = header;
  v5 = MEMORY[0x29EDB8E00];
  v54[0] = @"name";
  name = [headerCopy name];
  v55[0] = name;
  v54[1] = @"pid";
  v7 = [MEMORY[0x29EDBA070] numberWithInt:{objc_msgSend(headerCopy, "pid")}];
  v55[1] = v7;
  v55[2] = &unk_2A1E95180;
  v54[2] = @"footprint";
  v54[3] = @"categories";
  v54[4] = @"auxiliary";
  v55[3] = MEMORY[0x29EDB8EA0];
  v55[4] = MEMORY[0x29EDB8EA0];
  v8 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v55 forKeys:v54 count:5];
  v9 = [v5 dictionaryWithDictionary:v8];

  v10 = v9;
  errors = [headerCopy errors];
  v12 = [errors count];

  if (v12)
  {
    errors2 = [headerCopy errors];
    [v10 setObject:errors2 forKeyedSubscript:@"errors"];
  }

  warnings = [headerCopy warnings];
  v15 = [warnings count];

  if (v15)
  {
    warnings2 = [headerCopy warnings];
    [v10 setObject:warnings2 forKeyedSubscript:@"warnings"];
  }

  if (self->_verbose)
  {
    selfCopy = self;
    v17 = MEMORY[0x29EDB8DE8];
    memoryRegions = [headerCopy memoryRegions];
    v19 = [v17 arrayWithCapacity:{objc_msgSend(memoryRegions, "count")}];

    [v10 setObject:v19 forKeyedSubscript:@"regions"];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    memoryRegions2 = [headerCopy memoryRegions];
    v46 = [memoryRegions2 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v46)
    {
      v41 = v10;
      v42 = headerCopy;
      v44 = *v48;
      v45 = memoryRegions2;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v48 != v44)
          {
            objc_enumerationMutation(memoryRegions2);
          }

          v22 = *(*(&v47 + 1) + 8 * i);
          v23 = objc_alloc(MEMORY[0x29EDB8E00]);
          v51[0] = @"id";
          v24 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v22, "object_id")}];
          v52[0] = v24;
          v51[1] = @"name";
          name2 = [v22 name];
          v52[1] = name2;
          v51[2] = @"addr";
          v26 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v22, "start")}];
          v52[2] = v26;
          v51[3] = @"vsize";
          v27 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v22, "size")}];
          v52[3] = v27;
          v28 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v52 forKeys:v51 count:4];
          v29 = [v23 initWithDictionary:v28];

          if ([v22 offset])
          {
            v30 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v22, "offset")}];
            [v29 setObject:v30 forKeyedSubscript:@"offset"];
          }

          if ([v22 dirtySize])
          {
            v31 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v22, "dirtySize")}];
            [v29 setObject:v31 forKeyedSubscript:@"dirty"];
          }

          if ([v22 swappedSize])
          {
            v32 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v22, "swappedSize")}];
            [v29 setObject:v32 forKeyedSubscript:@"swapped"];
          }

          if ([v22 cleanSize])
          {
            v33 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v22, "cleanSize")}];
            [v29 setObject:v33 forKeyedSubscript:@"clean"];
          }

          if ([v22 reclaimableSize])
          {
            v34 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v22, "reclaimableSize")}];
            [v29 setObject:v34 forKeyedSubscript:@"reclaimable"];
          }

          if ([v22 wiredSize])
          {
            v35 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v22, "wiredSize")}];
            [v29 setObject:v35 forKeyedSubscript:@"wired"];
          }

          v36 = [v29 copy];
          [v19 addObject:v36];

          memoryRegions2 = v45;
        }

        v46 = [v45 countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v46);

      headerCopy = v42;
      self = selfCopy;
      v10 = v41;
      if (!selfCopy)
      {
        processes = 0;
        v38 = 1;
        goto LABEL_29;
      }
    }

    else
    {

      self = selfCopy;
    }
  }

  v38 = 0;
  processes = self->_processes;
LABEL_29:
  [(NSMutableArray *)processes addObject:v10];
  if (!self->_isPageSizeSet)
  {
    v39 = [MEMORY[0x29EDBA070] numberWithUnsignedLong:{objc_msgSend(headerCopy, "pageSize")}];
    if (v38)
    {
      data = 0;
    }

    else
    {
      data = self->_data;
    }

    [(NSMutableDictionary *)data setObject:v39 forKeyedSubscript:@"page size"];

    self->_isPageSizeSet = 1;
  }
}

- (void)printProcessTotal:(id)total forProcess:(id)process
{
  if (self)
  {
    processes = self->_processes;
  }

  else
  {
    processes = 0;
  }

  totalCopy = total;
  lastObject = [(NSMutableArray *)processes lastObject];
  [lastObject setObject:totalCopy forKeyedSubscript:@"footprint"];
}

- (void)printProcessCategories:(id)categories total:(id *)total forProcess:(id)process
{
  v8 = sub_297E35F18(self, categories);
  if (self)
  {
    processes = self->_processes;
  }

  else
  {
    processes = 0;
  }

  lastObject = [(NSMutableArray *)processes lastObject];
  [lastObject setObject:v8 forKeyedSubscript:@"categories"];
}

- (void)printSharedCategories:(id)categories sharedWith:(id)with forProcess:(id)process hasProcessView:(BOOL)view total:(id *)total
{
  viewCopy = view;
  v37 = *MEMORY[0x29EDCA608];
  categoriesCopy = categories;
  withCopy = with;
  processCopy = process;
  if (!viewCopy)
  {
    if (([(NSMutableSet *)self->_addedProcessGroups containsObject:withCopy]& 1) != 0)
    {
      goto LABEL_14;
    }

    [(NSMutableSet *)self->_addedProcessGroups addObject:withCopy];
  }

  v29 = processCopy;
  v14 = MEMORY[0x29EDB8DE8];
  processes = [withCopy processes];
  v16 = [v14 arrayWithCapacity:{objc_msgSend(processes, "count")}];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  processes2 = [withCopy processes];
  v18 = [processes2 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v31;
    do
    {
      v21 = 0;
      do
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(processes2);
        }

        asNumber = [*(*(&v30 + 1) + 8 * v21) asNumber];
        [v16 addObject:asNumber];

        ++v21;
      }

      while (v19 != v21);
      v19 = [processes2 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v19);
  }

  v23 = objc_alloc(MEMORY[0x29EDB8E00]);
  v34[0] = @"pids";
  v34[1] = @"categories";
  v35[0] = v16;
  v24 = sub_297E35F18(self, categoriesCopy);
  v35[1] = v24;
  v25 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  v26 = [v23 initWithDictionary:v25];

  processCopy = v29;
  if (viewCopy)
  {
    asNumber2 = [v29 asNumber];
    [v26 setObject:asNumber2 forKeyedSubscript:@"specific_to_pid"];
  }

  v28 = [(NSMutableDictionary *)self->_data objectForKeyedSubscript:@"shared"];
  [v28 addObject:v26];

LABEL_14:
}

- (void)printProcessAuxData:(id)data forProcess:(id)process
{
  fp_jsonRepresentation = [data fp_jsonRepresentation];
  if (self)
  {
    processes = self->_processes;
  }

  else
  {
    processes = 0;
  }

  lastObject = [(NSMutableArray *)processes lastObject];
  [lastObject setObject:fp_jsonRepresentation forKeyedSubscript:@"auxiliary"];
}

- (void)printProcessesWithWarnings:(id)warnings processesWithErrors:(id)errors globalErrors:(id)globalErrors
{
  v35 = *MEMORY[0x29EDCA608];
  warningsCopy = warnings;
  errorsCopy = errors;
  v10 = [MEMORY[0x29EDB8DE8] arrayWithArray:globalErrors];
  v11 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = warningsCopy;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        warnings = [*(*(&v29 + 1) + 8 * v16) warnings];
        [v11 addObjectsFromArray:warnings];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v14);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = errorsCopy;
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        errors = [*(*(&v25 + 1) + 8 * v22) errors];
        [v10 addObjectsFromArray:errors];

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v20);
  }

  if (self)
  {
    [(NSMutableDictionary *)self->_data setObject:v10 forKeyedSubscript:@"errors"];
    data = self->_data;
  }

  else
  {
    [0 setObject:v10 forKeyedSubscript:@"errors"];
    data = 0;
  }

  [(NSMutableDictionary *)data setObject:v11 forKeyedSubscript:@"warnings", v25];
}

- (void)printSummaryCategories:(id)categories total:(id *)total hadErrors:(BOOL)errors
{
  v23[6] = *MEMORY[0x29EDCA608];
  categoriesCopy = categories;
  if (categoriesCopy)
  {
    v8 = sub_297E35F18(self, categoriesCopy);
    if (self)
    {
      data = self->_data;
    }

    else
    {
      data = 0;
    }

    [(NSMutableDictionary *)data setObject:v8 forKeyedSubscript:@"summary"];
  }

  v22[0] = @"dirty";
  v20 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:total->var1 + total->var0];
  v23[0] = v20;
  v22[1] = @"swapped";
  v10 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:total->var1];
  v23[1] = v10;
  v22[2] = @"clean";
  v11 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:total->var2];
  v23[2] = v11;
  v22[3] = @"reclaimable";
  v12 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:total->var3];
  v23[3] = v12;
  v22[4] = @"wired";
  v13 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:total->var4];
  v23[4] = v13;
  v22[5] = @"regions";
  v14 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:total->var5];
  v23[5] = v14;
  v15 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v23 forKeys:v22 count:6];
  v21 = categoriesCopy;
  if (self)
  {
    v16 = self->_data;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:@"summary"];
  [v17 setObject:v15 forKeyedSubscript:@"total"];

  v18 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:total->var1 + total->var0];
  if (self)
  {
    v19 = self->_data;
  }

  else
  {
    v19 = 0;
  }

  [(NSMutableDictionary *)v19 setObject:v18 forKeyedSubscript:@"total footprint"];
}

- (void)printGlobalAuxData:(id)data
{
  fp_jsonRepresentation = [data fp_jsonRepresentation];
  if (self)
  {
    data = self->_data;
  }

  else
  {
    data = 0;
  }

  v6 = fp_jsonRepresentation;
  [(NSMutableDictionary *)data setObject:fp_jsonRepresentation forKeyedSubscript:@"auxiliary"];
}

@end
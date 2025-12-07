@interface FPProcess
+ (id)_nameForBsdInfo:(proc_bsdinfo *)info;
+ (id)allProcessesExcludingPids:(id)pids;
+ (id)childPidsForPids:(id)pids;
+ (id)pidsForStringDescriptions:(id)descriptions errors:(id *)errors;
+ (id)processWithBsdInfo:(proc_bsdinfo *)info;
+ (id)processWithPid:(int)pid;
+ (id)removeIdleExitCleanProcessesFrom:(id)from;
- (FPProcess)init;
- (FPProcess)initWithBsdInfo:(proc_bsdinfo *)info;
- (id)description;
@end

@implementation FPProcess

- (FPProcess)init
{
  v12.receiver = self;
  v12.super_class = FPProcess;
  v2 = [(FPProcess *)&v12 init];
  v3 = v2;
  if (v2)
  {
    [(FPProcess *)v2 setMemoryRegions:0];
    v4 = objc_opt_new();
    errors = v3->_errors;
    v3->_errors = v4;

    v6 = objc_opt_new();
    warnings = v3->_warnings;
    v3->_warnings = v6;

    v8 = objc_opt_new();
    globalErrors = v3->_globalErrors;
    v3->_globalErrors = v8;

    *&v3->_idleExitStatus = 0xFFFFFFFF00000000;
    v10 = v3;
  }

  return v3;
}

- (FPProcess)initWithBsdInfo:(proc_bsdinfo *)info
{
  v4 = [(FPProcess *)self init];
  v5 = v4;
  if (v4)
  {
    [(FPProcess *)v4 setPid:info->pbi_pid];
    v5->_is64bit = (info->pbi_flags & 0x10) != 0;
    if (![(FPProcess *)v5 _populateTask])
    {
      v11 = 0;
      goto LABEL_6;
    }

    v6 = [FPProcess _nameForBsdInfo:info];
    [(FPProcess *)v5 setName:v6];

    v7 = MEMORY[0x29EDBA0F8];
    name = [(FPProcess *)v5 name];
    v9 = [v7 stringWithFormat:@"%@ [%d]", name, -[FPProcess pid](v5, "pid")];
    displayString = v5->_displayString;
    v5->_displayString = v9;

    v5->_pageSize = [(FPProcess *)v5 _gatherPageSize];
  }

  v11 = v5;
LABEL_6:

  return v11;
}

+ (id)processWithBsdInfo:(proc_bsdinfo *)info
{
  v3 = [[FPUserProcess alloc] initWithBsdInfo:info];

  return v3;
}

+ (id)processWithPid:(int)pid
{
  v16 = *MEMORY[0x29EDCA608];
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  if (proc_pidinfo(pid, 3, 0, &v7, 136) != 136)
  {
    if (pid)
    {
      v5 = 0;
      goto LABEL_6;
    }

    v15 = 0;
    v11 = xmmword_297E40790;
    v12 = unk_297E407A0;
    v13 = xmmword_297E407B0;
    v14 = unk_297E407C0;
    v7 = xmmword_297E40750;
    v8 = unk_297E40760;
    v9 = xmmword_297E40770;
    v10 = unk_297E40780;
  }

  v5 = [self processWithBsdInfo:&v7];
LABEL_6:

  return v5;
}

+ (id)_nameForBsdInfo:(proc_bsdinfo *)info
{
  v20 = *MEMORY[0x29EDCA608];
  *v18 = 0x800000001;
  size = 0;
  v17 = 8;
  if (!sysctl(v18, 2u, &size, &v17, 0, 0))
  {
    *v18 = 0x3100000001;
    pbi_pid = info->pbi_pid;
    v4 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (v4)
    {
      v5 = v4;
      if (!sysctl(v18, 3u, v4, &size, 0, 0))
      {
        v6 = 0;
        v5[size - 1] = 0;
        do
        {
          v7 = v6;
          if (v5[v6++])
          {
            v9 = size > v7;
          }

          else
          {
            v9 = 0;
          }
        }

        while (v9);
        if (size > v7)
        {
          do
          {
            v10 = v6 - 1;
            if (v5[v6++ - 1])
            {
              v12 = 0;
            }

            else
            {
              v12 = size > v10;
            }
          }

          while (v12);
          if (size > v10)
          {
            v13 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithUTF8String:&v5[v6 - 2]];
            lastPathComponent = [v13 lastPathComponent];

            free(v5);
            goto LABEL_18;
          }
        }
      }

      free(v5);
    }
  }

  lastPathComponent = sub_297E2E5B4(FPProcess, info);
LABEL_18:

  return lastPathComponent;
}

+ (id)allProcessesExcludingPids:(id)pids
{
  pidsCopy = pids;
  v19 = 0;
  v4 = sub_297E2E948(&v19);
  if (v4)
  {
    v5 = v4;
    strongToStrongObjectsMapTable = [MEMORY[0x29EDBA028] strongToStrongObjectsMapTable];
    v6 = v19;
    if (v19)
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = &v5[136 * v7];
        v10 = *(v9 + 3);
        v11 = [MEMORY[0x29EDBA070] numberWithInt:{v10, strongToStrongObjectsMapTable}];
        v12 = [pidsCopy containsObject:v11];

        if ((v12 & 1) == 0)
        {
          v13 = [FPProcess processWithBsdInfo:v9];
          if (v13)
          {
            v14 = [MEMORY[0x29EDBA070] numberWithInt:v10];
            [strongToStrongObjectsMapTable setObject:v13 forKey:v14];
          }
        }

        v7 = v8;
      }

      while (v6 > v8++);
    }

    free(v5);
    v16 = strongToStrongObjectsMapTable;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)pidsForStringDescriptions:(id)descriptions errors:(id *)errors
{
  v58 = *MEMORY[0x29EDCA608];
  descriptionsCopy = descriptions;
  v55 = 0;
  v38 = sub_297E2E948(&v55);
  if (v38)
  {
    dictionary = [MEMORY[0x29EDB8E00] dictionary];
    if (errors)
    {
      v35 = objc_opt_new();
    }

    else
    {
      v35 = 0;
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v34 = descriptionsCopy;
    obj = descriptionsCopy;
    v41 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v41)
    {
      v8 = v55;
      v39 = v55;
      v40 = *v52;
      errorsCopy = errors;
      do
      {
        v9 = 0;
        do
        {
          if (*v52 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v44 = v9;
          v10 = *(*(&v51 + 1) + 8 * v9);
          v11 = [objc_alloc(MEMORY[0x29EDBA0E0]) initWithString:v10];
          v50 = -1;
          v43 = v11;
          v12 = [v11 scanInt:&v50];
          dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
          context = objc_autoreleasePoolPush();
          if (v8)
          {
            v13 = 0;
            v14 = 0;
            v15 = v38;
            v16 = v8;
            while (1)
            {
              v17 = v15[3];
              v18 = [self _nameForBsdInfo:v15];
              if ([v10 isEqualToString:v18])
              {
                v13 = 1;
                v19 = dictionary;
              }

              else
              {
                if (([v18 containsString:v10] & 1) == 0)
                {
                  if (v17 == v50)
                  {
                    v21 = v12;
                  }

                  else
                  {
                    v21 = 0;
                  }

                  if (v21 == 1)
                  {
                    null = [MEMORY[0x29EDB8E28] null];
                    v32 = [MEMORY[0x29EDBA070] numberWithInt:v17];
                    [dictionary setObject:null forKeyedSubscript:v32];

                    errors = errorsCopy;
                    goto LABEL_41;
                  }

                  goto LABEL_23;
                }

                v19 = dictionary2;
              }

              v20 = [MEMORY[0x29EDBA070] numberWithInt:v17];
              [v19 setObject:v10 forKeyedSubscript:v20];

              v14 = 1;
LABEL_23:

              v15 += 34;
              if (!--v16)
              {
                errors = errorsCopy;
                if (!((errorsCopy == 0) | v14 & 1))
                {
                  v22 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Unable to find pid for process matching '%@'", v10];
                  [v35 addObject:v22];
                }

                if (v13)
                {
                  goto LABEL_42;
                }

                goto LABEL_30;
              }
            }
          }

          if (errors)
          {
            v23 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Unable to find pid for process matching '%@'", v10];
            [v35 addObject:v23];
          }

LABEL_30:
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v18 = dictionary2;
          v24 = [v18 countByEnumeratingWithState:&v46 objects:v56 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v47;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v47 != v26)
                {
                  objc_enumerationMutation(v18);
                }

                v28 = *(*(&v46 + 1) + 8 * i);
                v29 = [dictionary objectForKeyedSubscript:v28];

                if (!v29)
                {
                  v30 = [v18 objectForKeyedSubscript:v28];
                  [dictionary setObject:v30 forKeyedSubscript:v28];
                }
              }

              v25 = [v18 countByEnumeratingWithState:&v46 objects:v56 count:16];
            }

            while (v25);
          }

LABEL_41:

LABEL_42:
          objc_autoreleasePoolPop(context);

          v9 = v44 + 1;
          v8 = v39;
        }

        while (v44 + 1 != v41);
        v41 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v41);
    }

    if (errors && [v35 count])
    {
      *errors = [v35 copy];
    }

    free(v38);

    descriptionsCopy = v34;
  }

  else
  {
    dictionary = 0;
    if (errors)
    {
      *errors = &unk_2A1E95150;
    }
  }

  return dictionary;
}

+ (id)childPidsForPids:(id)pids
{
  v26 = *MEMORY[0x29EDCA608];
  pidsCopy = pids;
  v24 = 0;
  v4 = sub_297E2E948(&v24);
  if (v4)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v5 = [pidsCopy mutableCopy];
    v18 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    if (v5)
    {
      while (1)
      {
        v6 = v5;
        if (![v5 count])
        {
          break;
        }

        if (v24)
        {
          for (i = 0; i < v24; ++i)
          {
            v8 = &v4[136 * i];
            v9 = *(v8 + 4);
            v10 = *(v8 + 3);
            v22 = 0u;
            v23 = 0u;
            v20 = 0u;
            v21 = 0u;
            v11 = v6;
            v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v21;
              while (2)
              {
                for (j = 0; j != v13; ++j)
                {
                  if (*v21 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  if (v9 == [*(*(&v20 + 1) + 8 * j) longValue])
                  {
                    v16 = [MEMORY[0x29EDBA070] numberWithLong:v10];
                    if (([pidsCopy containsObject:v16] & 1) == 0 && (objc_msgSend(array, "containsObject:", v16) & 1) == 0)
                    {
                      [v18 addObject:v16];
                    }

                    goto LABEL_19;
                  }
                }

                v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
                if (v13)
                {
                  continue;
                }

                break;
              }
            }

LABEL_19:
          }
        }

        [array addObjectsFromArray:v18];
        [v6 removeAllObjects];
        v5 = v18;

        v18 = v6;
        if (!v5)
        {
          v18 = v6;
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      v6 = 0;
    }

    free(v4);
    v4 = array;
  }

  return v4;
}

+ (id)removeIdleExitCleanProcessesFrom:(id)from
{
  v18 = *MEMORY[0x29EDCA608];
  fromCopy = from;
  v4 = [fromCopy mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  objectEnumerator = [fromCopy objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 idleExitStatus] == 2)
        {
          v11 = [MEMORY[0x29EDBA070] numberWithInt:{objc_msgSend(v10, "pid")}];
          [v4 removeObjectForKey:v11];
        }
      }

      v7 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = [(FPProcess *)self pid];
  name = [(FPProcess *)self name];
  v6 = [v3 stringWithFormat:@"FPProcess[%d] %@", v4, name];

  return v6;
}

@end
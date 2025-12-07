@interface PLProcessInfo
- (BOOL)isEqualToProcessInfo:(id)info;
- (PLProcessInfo)initWithName:(id)name andID:(int)d;
- (PLProcessInfo)initWithProcessInfo:(id)info;
- (id)description;
- (id)diffSinceBaseline:(id)baseline;
- (void)populateCPUTime;
@end

@implementation PLProcessInfo

- (PLProcessInfo)initWithName:(id)name andID:(int)d
{
  v4 = *&d;
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = PLProcessInfo;
  v7 = [(PLProcessInfo *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(PLProcessInfo *)v7 setProcessName:nameCopy];
    [(PLProcessInfo *)v8 setPid:v4];
    [(PLProcessInfo *)v8 populateCPUTime];
  }

  return v8;
}

- (PLProcessInfo)initWithProcessInfo:(id)info
{
  infoCopy = info;
  v5 = objc_alloc_init(PLProcessInfo);
  processName = [infoCopy processName];
  [(PLProcessInfo *)v5 setProcessName:processName];

  -[PLProcessInfo setPid:](v5, "setPid:", [infoCopy pid]);
  [infoCopy totalUserTime];
  [(PLProcessInfo *)v5 setTotalUserTime:?];
  [infoCopy totalSystemTime];
  v8 = v7;

  [(PLProcessInfo *)v5 setTotalSystemTime:v8];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  processName = [(PLProcessInfo *)self processName];
  v5 = [(PLProcessInfo *)self pid];
  threadNameToInfo = [(PLProcessInfo *)self threadNameToInfo];
  v7 = [v3 stringWithFormat:@"%@ (%d), %lu threads", processName, v5, objc_msgSend(threadNameToInfo, "count")];

  return v7;
}

- (id)diffSinceBaseline:(id)baseline
{
  baselineCopy = baseline;
  v5 = [[PLProcessInfo alloc] initWithProcessInfo:self];
  [(PLProcessInfo *)self totalUserTime];
  v7 = v6;
  [baselineCopy totalUserTime];
  [(PLProcessInfo *)v5 setTotalUserTime:v7 - v8];
  [(PLProcessInfo *)self totalSystemTime];
  v10 = v9;
  [baselineCopy totalSystemTime];
  [(PLProcessInfo *)v5 setTotalSystemTime:v10 - v11];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  threadNameToInfo = [(PLProcessInfo *)self threadNameToInfo];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __35__PLProcessInfo_diffSinceBaseline___block_invoke;
  v20 = &unk_1E851B228;
  v21 = baselineCopy;
  v22 = dictionary;
  v14 = dictionary;
  v15 = baselineCopy;
  [threadNameToInfo enumerateKeysAndObjectsUsingBlock:&v17];

  [(PLProcessInfo *)v5 setThreadNameToInfo:v14, v17, v18, v19, v20];

  return v5;
}

void __35__PLProcessInfo_diffSinceBaseline___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 threadNameToInfo];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = [v6 diffSinceBaseline:v9];

  [*(a1 + 40) setObject:v10 forKeyedSubscript:v7];
}

- (void)populateCPUTime
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  if (!proc_pid_rusage([(PLProcessInfo *)self pid:0], 0, &v3))
  {
    [PLUtilities secondsFromMachTime:v4];
    [(PLProcessInfo *)self setTotalUserTime:?];
    [PLUtilities secondsFromMachTime:*(&v4 + 1)];
    [(PLProcessInfo *)self setTotalSystemTime:?];
  }
}

- (BOOL)isEqualToProcessInfo:(id)info
{
  v37 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (infoCopy && (-[PLProcessInfo processName](self, "processName"), v5 = objc_claimAutoreleasedReturnValue(), [infoCopy processName], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v5, v7) && (v8 = -[PLProcessInfo pid](self, "pid"), v8 == objc_msgSend(infoCopy, "pid")) && (-[PLProcessInfo totalUserTime](self, "totalUserTime"), v10 = v9, objc_msgSend(infoCopy, "totalUserTime"), v10 == v11) && (-[PLProcessInfo totalSystemTime](self, "totalSystemTime"), v13 = v12, objc_msgSend(infoCopy, "totalSystemTime"), v13 == v14) && (-[PLProcessInfo threadNameToInfo](self, "threadNameToInfo"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count"), objc_msgSend(infoCopy, "threadNameToInfo"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "count"), v17, v15, v16 == v18))
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [(PLProcessInfo *)self threadNameToInfo];
    v19 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v33;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v32 + 1) + 8 * i);
          threadNameToInfo = [(PLProcessInfo *)self threadNameToInfo];
          v25 = [threadNameToInfo objectForKeyedSubscript:v23];
          threadNameToInfo2 = [infoCopy threadNameToInfo];
          v27 = [threadNameToInfo2 objectForKeyedSubscript:v23];
          v28 = [v25 isEqualToThreadInfo:v27];

          if (!v28)
          {
            v29 = 0;
            goto LABEL_19;
          }
        }

        v20 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v29 = 1;
LABEL_19:
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

@end
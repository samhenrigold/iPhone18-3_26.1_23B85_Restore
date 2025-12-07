@interface PLThreadInfo
- (BOOL)isEqualToThreadInfo:(id)info;
- (PLThreadInfo)initWithThread:(unint64_t)thread inProcess:(int)process;
- (id)description;
- (id)diffSinceBaseline:(id)baseline;
@end

@implementation PLThreadInfo

- (PLThreadInfo)initWithThread:(unint64_t)thread inProcess:(int)process
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, 512);
  if (proc_pidinfo(process, 10, thread, v8, 1288) <= 0 && (*__error() == 3 || *__error() == 22))
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_alloc_init(PLThreadInfo);
    [(PLThreadInfo *)v6 setUserTime:*&v8[0] / 1000000000.0];
    [(PLThreadInfo *)v6 setSystemTime:*(&v8[0] + 1) / 1000000000.0];
    [(PLThreadInfo *)v6 setThreadID:thread];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  threadName = [(PLThreadInfo *)self threadName];
  threadID = [(PLThreadInfo *)self threadID];
  [(PLThreadInfo *)self userTime];
  v7 = v6;
  [(PLThreadInfo *)self systemTime];
  v9 = [v3 stringWithFormat:@"%@ (0x%llx) %.2fs user %.2fs system", threadName, threadID, v7, v8];

  return v9;
}

- (id)diffSinceBaseline:(id)baseline
{
  if (baseline)
  {
    baselineCopy = baseline;
    selfCopy = objc_alloc_init(PLThreadInfo);
    threadName = [(PLThreadInfo *)self threadName];
    [(PLThreadInfo *)selfCopy setThreadName:threadName];

    [(PLThreadInfo *)selfCopy setThreadID:[(PLThreadInfo *)self threadID]];
    [(PLThreadInfo *)self systemTime];
    v8 = v7;
    [baselineCopy systemTime];
    [(PLThreadInfo *)selfCopy setSystemTime:v8 - v9];
    [(PLThreadInfo *)self userTime];
    v11 = v10;
    [baselineCopy userTime];
    v13 = v12;

    [(PLThreadInfo *)selfCopy setUserTime:v11 - v13];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isEqualToThreadInfo:(id)info
{
  infoCopy = info;
  if (infoCopy && (-[PLThreadInfo threadName](self, "threadName"), v5 = objc_claimAutoreleasedReturnValue(), [infoCopy threadName], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v5, v7) && (-[PLThreadInfo userTime](self, "userTime"), v9 = v8, objc_msgSend(infoCopy, "userTime"), v9 == v10))
  {
    [(PLThreadInfo *)self systemTime];
    v14 = v13;
    [infoCopy systemTime];
    v11 = v14 == v15;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end
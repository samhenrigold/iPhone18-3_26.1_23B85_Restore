@interface FATManager
- (BOOL)isEOFCluster:(unint64_t)cluster;
- (FATManager)initWithDevice:(id)device info:(id)info ops:(id)ops usingCache:(BOOL)cache;
- (id)metaWriteToFATs:(void *)ts startingAt:(int64_t)at forceSyncWrite:(BOOL)write;
- (id)syncMetaReadFromFAT:(void *)t startingAt:(int64_t)at;
- (id)updateFATStats;
- (int64_t)getRWOffsetForClusterEntry:(unsigned int)entry;
- (unint64_t)getOffsetForCluster:(unsigned int)cluster inFatBlock:(id)block;
- (unint64_t)getOffsetForClusterEntry:(unsigned int)entry;
- (unsigned)clustersPerBlock;
- (void)allocateClusters:(unsigned int)clusters allowPartial:(BOOL)partial zeroFill:(BOOL)fill mustBeContig:(BOOL)contig replyHandler:(id)handler;
- (void)allocateClusters:(unsigned int)clusters forItem:(id)item allowPartial:(BOOL)partial mustBeContig:(BOOL)contig zeroFill:(BOOL)fill replyHandler:(id)handler;
- (void)allocateClusters:(unsigned int)clusters searchFromCluster:(unsigned int)cluster allowPartial:(BOOL)partial zeroFill:(BOOL)fill mustBeContig:(BOOL)contig replyHandler:(id)handler;
- (void)allocateClustersInBlock:(void *)block numClusters:(unsigned int)clusters startingAtCluster:(unsigned int)cluster startOffset:(unsigned int)offset mustBeContig:(BOOL)contig replyHandler:(id)handler;
- (void)clusterChainLength:(id)length replyHandler:(id)handler;
- (void)countFreeClustersInBlock:(id)block startingAt:(unsigned int)at replyHandler:(id)handler;
- (void)fatIterator:(unsigned int)iterator replyHandler:(id)handler;
- (void)findFreeClustersInBlock:(id)block ofLength:(unsigned int)length contig:(BOOL)contig startCluster:(unsigned int)cluster replyHandler:(id)handler;
- (void)findNextFreeCluster:(unsigned int)cluster replyHandler:(id)handler;
- (void)freeClusterFrom:(unsigned int)from numClusters:(unsigned int)clusters replyHandler:(id)handler;
- (void)freeClusters:(unsigned int)clusters ofItem:(id)item replyHandler:(id)handler;
- (void)getContigClusterChainLengthStartingAt:(unsigned int)at replyHandler:(id)handler;
- (void)getDirtyBitValue:(id)value;
- (void)iterateClusterChainOfItem:(id)item replyHandler:(id)handler;
- (void)setDirtyBitValue:(unsigned __int8)value forceWriteToDisk:(BOOL)disk replyHandler:(id)handler;
@end

@implementation FATManager

- (FATManager)initWithDevice:(id)device info:(id)info ops:(id)ops usingCache:(BOOL)cache
{
  cacheCopy = cache;
  opsCopy = ops;
  infoCopy = info;
  deviceCopy = device;
  device = [(FATManager *)self device];
  bSDName = [device BSDName];
  v15 = [NSString stringWithFormat:@"%@.%s", bSDName, "fatQueue"];

  [(FATManager *)self setUseCache:cacheCopy];
  [(FATManager *)self setDevice:deviceCopy];

  [(FATManager *)self setFsInfo:infoCopy];
  [(FATManager *)self setFsOps:opsCopy];

  v16 = dispatch_queue_create([v15 UTF8String], &_dispatch_queue_attr_concurrent);
  [(FATManager *)self setFatQueue:v16];

  fatQueue = [(FATManager *)self fatQueue];

  if (fatQueue)
  {
    fsInfo = [(FATManager *)self fsInfo];
    fatSize = [fsInfo fatSize];

    if (fatSize <= 0x3000)
    {
      fsInfo2 = [(FATManager *)self fsInfo];
      -[FATManager setRwSize:](self, "setRwSize:", [fsInfo2 fatSize]);
    }

    else
    {
      [(FATManager *)self setRwSize:12288];
    }

    updateFATStats = [(FATManager *)self updateFATStats];

    if (!updateFATStats)
    {
      selfCopy = self;
      goto LABEL_10;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_1000321F8();
  }

  selfCopy = 0;
LABEL_10:

  return selfCopy;
}

- (unsigned)clustersPerBlock
{
  fsInfo = [(FATManager *)self fsInfo];
  type = [fsInfo type];

  rwSize = [(FATManager *)self rwSize];
  v6 = rwSize >> 2;
  if (!type)
  {
    v6 = 2 * rwSize / 3;
  }

  if (type == 1)
  {
    return rwSize >> 1;
  }

  else
  {
    return v6;
  }
}

- (unint64_t)getOffsetForClusterEntry:(unsigned int)entry
{
  v3 = *&entry;
  fsInfo = [(FATManager *)self fsInfo];
  fatOffset = [fsInfo fatOffset];
  fsOps = [(FATManager *)self fsOps];
  v8 = fatOffset + [fsOps fatEntryOffsetForCluster:v3];

  return v8;
}

- (int64_t)getRWOffsetForClusterEntry:(unsigned int)entry
{
  v3 = *&entry;
  fsOps = [(FATManager *)self fsOps];
  LODWORD(v3) = [fsOps fatEntryOffsetForCluster:v3];

  fsInfo = [(FATManager *)self fsInfo];
  fatOffset = [fsInfo fatOffset];
  v8 = fatOffset + v3 - v3 % [(FATManager *)self rwSize];

  return v8;
}

- (unint64_t)getOffsetForCluster:(unsigned int)cluster inFatBlock:(id)block
{
  v4 = *&cluster;
  blockCopy = block;
  v7 = [(FATManager *)self getOffsetForClusterEntry:v4];
  startOffset = [blockCopy startOffset];

  return v7 - startOffset;
}

- (id)syncMetaReadFromFAT:(void *)t startingAt:(int64_t)at
{
  v7 = at + [(FATManager *)self rwSize];
  fsInfo = [(FATManager *)self fsInfo];
  fatOffset = [fsInfo fatOffset];
  fsInfo2 = [(FATManager *)self fsInfo];
  v11 = &fatOffset[[fsInfo2 fatSize]];

  if (v7 <= v11)
  {
    rwSize = [(FATManager *)self rwSize];
  }

  else
  {
    fsInfo3 = [(FATManager *)self fsInfo];
    fatOffset2 = [fsInfo3 fatOffset];
    fsInfo4 = [(FATManager *)self fsInfo];
    rwSize = &fatOffset2[[fsInfo4 fatSize] - at];
  }

  device = [(FATManager *)self device];
  v17 = [Utilities syncMetaReadFromDevice:device into:t startingAt:at length:rwSize];

  return v17;
}

- (id)metaWriteToFATs:(void *)ts startingAt:(int64_t)at forceSyncWrite:(BOOL)write
{
  writeCopy = write;
  v9 = at + [(FATManager *)self rwSize];
  fsInfo = [(FATManager *)self fsInfo];
  fatOffset = [fsInfo fatOffset];
  fsInfo2 = [(FATManager *)self fsInfo];
  v13 = &fatOffset[[fsInfo2 fatSize]];

  if (v9 <= v13)
  {
    rwSize = [(FATManager *)self rwSize];
  }

  else
  {
    fsInfo3 = [(FATManager *)self fsInfo];
    fatOffset2 = [fsInfo3 fatOffset];
    fsInfo4 = [(FATManager *)self fsInfo];
    rwSize = &fatOffset2[[fsInfo4 fatSize] - at];
  }

  fsInfo5 = [(FATManager *)self fsInfo];
  numOfFATs = [fsInfo5 numOfFATs];

  if (numOfFATs)
  {
    v20 = 0;
    v21 = 0;
    v22 = writeCopy;
    do
    {
      device = [(FATManager *)self device];
      fsInfo6 = [(FATManager *)self fsInfo];
      v25 = +[Utilities metaWriteToDevice:from:startingAt:length:forceSyncWrite:](Utilities, "metaWriteToDevice:from:startingAt:length:forceSyncWrite:", device, ts, at + [fsInfo6 fatSize] * v20, rwSize, v22);

      ++v20;
      fsInfo7 = [(FATManager *)self fsInfo];
      LODWORD(fsInfo6) = [fsInfo7 numOfFATs];

      v21 = v25;
    }

    while (v20 < fsInfo6);
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)updateFATStats
{
  v3 = [FATBlock alloc];
  fsInfo = [(FATManager *)self fsInfo];
  v5 = -[FATBlock initWithOffset:andLength:](v3, "initWithOffset:andLength:", [fsInfo fatOffset], -[FATManager rwSize](self, "rwSize"));

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  fsInfo2 = [(FATManager *)self fsInfo];
  fatOffset = [fsInfo2 fatOffset];

  v8 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v36[2] = 0x2020000000;
  v37 = 1;
  v36[0] = 0;
  v36[1] = v36;
  while (1)
  {
    fsInfo3 = [(FATManager *)self fsInfo];
    fatOffset2 = [fsInfo3 fatOffset];
    fsInfo4 = [(FATManager *)self fsInfo];
    LOBYTE(fatOffset2) = fatOffset > &fatOffset2[[fsInfo4 fatSize]];

    if (fatOffset2)
    {
      break;
    }

    data = [(FATBlock *)v5 data];
    v13 = data;
    v14 = -[FATManager syncMetaReadFromFAT:startingAt:](self, "syncMetaReadFromFAT:startingAt:", [data mutableBytes], fatOffset);

    if (v14)
    {
      goto LABEL_19;
    }

    [(FATBlock *)v5 setStartOffset:fatOffset];
    v35[0] = _NSConcreteStackBlock;
    if (v8)
    {
      v15 = v8;
    }

    else
    {
      v15 = 2;
    }

    v35[1] = 3221225472;
    v35[2] = sub_10001AD90;
    v35[3] = &unk_1000510C8;
    v35[4] = &v38;
    v35[5] = v36;
    v35[6] = &v42;
    [(FATManager *)self countFreeClustersInBlock:v5 startingAt:v15 replyHandler:v35];
    v8 += [(FATManager *)self clustersPerBlock];
    fatOffset += [(FATManager *)self rwSize];
  }

  fsInfo5 = [(FATManager *)self fsInfo];
  if ([fsInfo5 freeClusters])
  {
    fsInfo6 = [(FATManager *)self fsInfo];
    freeClusters = [fsInfo6 freeClusters];
    v19 = freeClusters == *(v39 + 6);

    if (v19)
    {
      goto LABEL_13;
    }

    fsInfo5 = &_os_log_default;
    v20 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(v39 + 6);
      fsInfo7 = [(FATManager *)self fsInfo];
      sub_10003223C(v47, v21, [fsInfo7 freeClusters], fsInfo7);
      fsInfo5 = &_os_log_default;
    }
  }

LABEL_13:
  v23 = *(v39 + 6);
  fsInfo8 = [(FATManager *)self fsInfo];
  [fsInfo8 setFreeClusters:v23];

  fsInfo9 = [(FATManager *)self fsInfo];
  if (![fsInfo9 firstFreeCluster])
  {
LABEL_17:

    goto LABEL_18;
  }

  fsInfo10 = [(FATManager *)self fsInfo];
  firstFreeCluster = [fsInfo10 firstFreeCluster];
  v28 = firstFreeCluster == *(v43 + 6);

  if (!v28)
  {
    fsInfo9 = &_os_log_default;
    v29 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v30 = *(v43 + 6);
      fsInfo11 = [(FATManager *)self fsInfo];
      sub_1000322AC(v46, v30, [fsInfo11 firstFreeCluster], fsInfo11);
      fsInfo9 = &_os_log_default;
    }

    goto LABEL_17;
  }

LABEL_18:
  v32 = *(v43 + 6);
  fsInfo12 = [(FATManager *)self fsInfo];
  [fsInfo12 setFirstFreeCluster:v32];

  v14 = 0;
LABEL_19:
  _Block_object_dispose(v36, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  return v14;
}

- (void)countFreeClustersInBlock:(id)block startingAt:(unsigned int)at replyHandler:(id)handler
{
  v6 = *&at;
  blockCopy = block;
  handlerCopy = handler;
  v8 = [(FATManager *)self getOffsetForClusterEntry:v6];
  v9 = v8 - [blockCopy startOffset];
  data = [blockCopy data];
  mutableBytes = [data mutableBytes];

  fsOps = [(FATManager *)self fsOps];
  numBytesPerClusterInFat = [fsOps numBytesPerClusterInFat];

  fsInfo = [(FATManager *)self fsInfo];
  maxValidCluster = [fsInfo maxValidCluster];

  v15 = 0;
  v16 = 1;
  if (v9 >= [(FATManager *)self rwSize])
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    if (maxValidCluster >= v6)
    {
      LODWORD(v17) = 0;
      LODWORD(v15) = 0;
      do
      {
        fsOps2 = [(FATManager *)self fsOps];
        v19 = [fsOps2 getNextClusterFromEntryForCluster:v6 entry:&mutableBytes[v9]];

        if (v19 | v15)
        {
          v15 = v15;
        }

        else
        {
          v15 = v6;
        }

        v20 = v19 == 0;
        if (v19)
        {
          v17 = v17;
        }

        else
        {
          v17 = (v17 + 1);
        }

        v6 = (v6 + 1);
        if (numBytesPerClusterInFat)
        {
          v9 += numBytesPerClusterInFat;
        }

        else
        {
          v21 = [(FATManager *)self getOffsetForClusterEntry:v6];
          v9 = v21 - [blockCopy startOffset];
        }

        v16 = v20 & v16;
      }

      while (v9 < [(FATManager *)self rwSize]&& maxValidCluster >= v6);
    }
  }

  handlerCopy[2](handlerCopy, v17, v15, v16);
}

- (void)findFreeClustersInBlock:(id)block ofLength:(unsigned int)length contig:(BOOL)contig startCluster:(unsigned int)cluster replyHandler:(id)handler
{
  v8 = *&cluster;
  v10 = *&length;
  blockCopy = block;
  handlerCopy = handler;
  if (v8)
  {
    v13 = [(FATManager *)self getOffsetForClusterEntry:v8];
    if (v13 < [blockCopy startOffset] || (v14 = objc_msgSend(blockCopy, "startOffset"), v13 > v14 + -[FATManager rwSize](self, "rwSize")))
    {
LABEL_4:
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
      goto LABEL_21;
    }
  }

  else
  {
    startOffset = [blockCopy startOffset];
    fsInfo = [(FATManager *)self fsInfo];
    v17 = startOffset - [fsInfo fatOffset];
    v18 = [(FATManager *)self clustersPerBlock]* v17;
    rwSize = [(FATManager *)self rwSize];

    if (rwSize <= v18)
    {
      v8 = v18 / rwSize;
    }

    else
    {
      v8 = 2;
    }
  }

  v20 = [(FATManager *)self getOffsetForClusterEntry:v8];
  v21 = v20 - [blockCopy startOffset];
  if (v21 >= [(FATManager *)self rwSize])
  {
    v22 = 0;
  }

  else
  {
    v22 = 0;
    v23 = v8;
    do
    {
      fsInfo2 = [(FATManager *)self fsInfo];
      maxValidCluster = [fsInfo2 maxValidCluster];

      if (maxValidCluster < v23)
      {
        break;
      }

      data = [blockCopy data];
      mutableBytes = [data mutableBytes];

      fsOps = [(FATManager *)self fsOps];
      LODWORD(mutableBytes) = [fsOps getNextClusterFromEntryForCluster:v23 entry:&mutableBytes[v21]];

      if (mutableBytes)
      {
        if (contig)
        {
          goto LABEL_4;
        }

        if (v22)
        {
          break;
        }

        v23 = (v23 + 1);
        v8 = v23;
      }

      else
      {
        v22 = (v22 + 1);
        if (v22 == v10)
        {
          (*(handlerCopy + 2))(handlerCopy, v8, v10);
          goto LABEL_21;
        }

        v23 = (v23 + 1);
      }

      v29 = [(FATManager *)self getOffsetForClusterEntry:v23];
      v21 = v29 - [blockCopy startOffset];
    }

    while (v21 < [(FATManager *)self rwSize]);
  }

  (*(handlerCopy + 2))(handlerCopy, v8, v22);
LABEL_21:
}

- (void)allocateClustersInBlock:(void *)block numClusters:(unsigned int)clusters startingAtCluster:(unsigned int)cluster startOffset:(unsigned int)offset mustBeContig:(BOOL)contig replyHandler:(id)handler
{
  v9 = *&cluster;
  handlerCopy = handler;
  v14 = (v9 + 1);
  v15 = [(FATManager *)self getRWOffsetForClusterEntry:v9];
  v16 = block + [(FATManager *)self getOffsetForClusterEntry:v9]- offset;
  if (!clusters)
  {
    v21 = 0;
    v20 = 0;
    LODWORD(v18) = v9;
    goto LABEL_6;
  }

  v49 = handlerCopy;
  fsInfo = [(FATManager *)self fsInfo];
  if ([fsInfo maxValidCluster] < v9)
  {
    v18 = 0;
    v50 = 0;
    v19 = v9;
LABEL_4:
    v20 = v18;

    LODWORD(v18) = v19;
    handlerCopy = v49;
    v21 = v50;
LABEL_6:
    if (v18 != v9 || v21)
    {
      v18 = v20;
    }

    else
    {
      v22 = handlerCopy;
      v23 = [(FATManager *)self getRWOffsetForClusterEntry:v9];
      v24 = v23 + [(FATManager *)self rwSize];
      v25 = [(FATManager *)self getRWOffsetForClusterEntry:v14];
      v21 = 0;
      v26 = v24 == v25;
      handlerCopy = v22;
      if (v26)
      {
        v18 = v9;
      }

      else
      {
        v18 = v20;
      }
    }

    goto LABEL_25;
  }

  v47 = v15;
  v48 = v16;
  v45 = 0;
  clustersCopy = clusters;
  v27 = 0;
  v50 = 0;
  v28 = v9;
  while (2)
  {
    v18 = v28;
    if ([(FATManager *)self getRWOffsetForClusterEntry:v28]!= v47)
    {
      v19 = v18;
      v18 = v45;
      v16 = v48;
      goto LABEL_4;
    }

    rwSize = [(FATManager *)self rwSize];

    if (v27 >= rwSize)
    {
      v16 = v48;
      handlerCopy = v49;
      v21 = v50;
      v20 = v45;
      goto LABEL_6;
    }

    fsOps = [(FATManager *)self fsOps];
    v16 = v48;
    v31 = [fsOps getNextClusterFromEntryForCluster:v18 entry:v48];

    if (!v31)
    {
      v14 = (v18 + 1);
      v32 = [(FATManager *)self getOffsetForClusterEntry:v14];
      if (v50 + 1 == clustersCopy)
      {
        fsOps2 = [(FATManager *)self fsOps];
        fsInfo2 = [(FATManager *)self fsInfo];
        [fsOps2 setFatEntryForCluster:v18 entry:v48 withValue:{objc_msgSend(fsInfo2, "FATMask")}];

        v21 = clustersCopy;
        handlerCopy = v49;
LABEL_25:
        (*(handlerCopy + 2))(handlerCopy, 0, v21, v18, v16);
        goto LABEL_26;
      }

      ++v50;
      while (1)
      {
        v27 = v32 - offset;
        if (v32 - offset >= -[FATManager rwSize](self, "rwSize") || (-[FATManager fsInfo](self, "fsInfo"), v33 = objc_claimAutoreleasedReturnValue(), v34 = [v33 maxValidCluster], v33, v34 < v14))
        {
          fsOps3 = [(FATManager *)self fsOps];
          fsInfo3 = [(FATManager *)self fsInfo];
          v16 = v48;
          [fsOps3 setFatEntryForCluster:v18 entry:v48 withValue:{objc_msgSend(fsInfo3, "FATMask")}];

          handlerCopy = v49;
          v21 = v50;
          goto LABEL_25;
        }

        v16 = block + v27;
        fsOps4 = [(FATManager *)self fsOps];
        v36 = [fsOps4 getNextClusterFromEntryForCluster:v14 entry:v16];

        if (!v36)
        {
          break;
        }

        v14 = (v14 + 1);
        v32 = [(FATManager *)self getOffsetForClusterEntry:v14];
      }

      fsOps5 = [(FATManager *)self fsOps];
      fsInfo4 = [(FATManager *)self fsInfo];
      [fsOps5 setFatEntryForCluster:v18 entry:v48 withValue:{objc_msgSend(fsInfo4, "FATMask") & v14}];

      fsInfo = [(FATManager *)self fsInfo];
      maxValidCluster = [fsInfo maxValidCluster];
      v48 = block + v27;
      v45 = v18;
      v28 = v14;
      v19 = v14;
      if (maxValidCluster >= v14)
      {
        continue;
      }

      goto LABEL_4;
    }

    break;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100032318();
  }

  v42 = fs_errorForPOSIXError();
  (*(v49 + 2))(v49, v42, 0, 0, 0);

  handlerCopy = v49;
LABEL_26:
}

- (void)allocateClusters:(unsigned int)clusters searchFromCluster:(unsigned int)cluster allowPartial:(BOOL)partial zeroFill:(BOOL)fill mustBeContig:(BOOL)contig replyHandler:(id)handler
{
  handlerCopy = handler;
  fatQueue = [(FATManager *)self fatQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001B6CC;
  v16[3] = &unk_100051168;
  partialCopy = partial;
  v16[4] = self;
  v17 = handlerCopy;
  clustersCopy = clusters;
  clusterCopy = cluster;
  contigCopy = contig;
  v15 = handlerCopy;
  dispatch_barrier_sync(fatQueue, v16);
}

- (void)allocateClusters:(unsigned int)clusters allowPartial:(BOOL)partial zeroFill:(BOOL)fill mustBeContig:(BOOL)contig replyHandler:(id)handler
{
  contigCopy = contig;
  fillCopy = fill;
  partialCopy = partial;
  v10 = *&clusters;
  handlerCopy = handler;
  v13 = handlerCopy;
  if (v10)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001C444;
    v14[3] = &unk_100051190;
    v15 = handlerCopy;
    [(FATManager *)self allocateClusters:v10 searchFromCluster:0 allowPartial:partialCopy zeroFill:fillCopy mustBeContig:contigCopy replyHandler:v14];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0);
  }
}

- (void)allocateClusters:(unsigned int)clusters forItem:(id)item allowPartial:(BOOL)partial mustBeContig:(BOOL)contig zeroFill:(BOOL)fill replyHandler:(id)handler
{
  fillCopy = fill;
  contigCopy = contig;
  partialCopy = partial;
  v12 = *&clusters;
  itemCopy = item;
  handlerCopy = handler;
  v16 = [[NSMutableData alloc] initWithLength:{-[FATManager rwSize](self, "rwSize")}];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_10001C128;
  v26[4] = sub_10001C138;
  v27 = 0;
  if (v12)
  {
    if ([itemCopy numberOfClusters])
    {
      lastCluster = [itemCopy lastCluster];
      fsInfo = [(FATManager *)self fsInfo];
      if ([fsInfo maxValidCluster] == lastCluster)
      {
        v19 = 0;
      }

      else
      {
        v19 = [itemCopy lastCluster] + 1;
      }
    }

    else
    {
      v19 = 0;
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10001C678;
    v20[3] = &unk_1000511B8;
    v21 = itemCopy;
    selfCopy = self;
    v25 = v26;
    v23 = v16;
    v24 = handlerCopy;
    [(FATManager *)self allocateClusters:v12 searchFromCluster:v19 allowPartial:partialCopy zeroFill:fillCopy mustBeContig:contigCopy replyHandler:v20];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0);
  }

  _Block_object_dispose(v26, 8);
}

- (void)freeClusters:(unsigned int)clusters ofItem:(id)item replyHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  fatQueue = [(FATManager *)self fatQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001C988;
  v13[3] = &unk_1000511E0;
  v13[4] = self;
  v14 = itemCopy;
  clustersCopy = clusters;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = itemCopy;
  dispatch_barrier_sync(fatQueue, v13);
}

- (void)freeClusterFrom:(unsigned int)from numClusters:(unsigned int)clusters replyHandler:(id)handler
{
  handlerCopy = handler;
  fatQueue = [(FATManager *)self fatQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D270;
  block[3] = &unk_100050E00;
  fromCopy = from;
  clustersCopy = clusters;
  block[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  dispatch_barrier_sync(fatQueue, block);
}

- (void)fatIterator:(unsigned int)iterator replyHandler:(id)handler
{
  v4 = *&iterator;
  handlerCopy = handler;
  v7 = [[FATBlock alloc] initWithOffset:0 andLength:[(FATManager *)self rwSize]];
  v8 = 1;
  v9 = v4;
  do
  {
LABEL_2:
    v10 = [(FATManager *)self getRWOffsetForClusterEntry:v4];
    [(FATBlock *)v7 setStartOffset:[(FATManager *)self getRWOffsetForClusterEntry:v4]];
    data = [(FATBlock *)v7 data];
    v12 = -[FATManager syncMetaReadFromFAT:startingAt:](self, "syncMetaReadFromFAT:startingAt:", [data mutableBytes], v10);

    if (v12)
    {
      handlerCopy[2](handlerCopy, v12, v9, v8, 0);

      goto LABEL_17;
    }

    v13 = [(FATManager *)self getOffsetForCluster:v4 inFatBlock:v7];
  }

  while (v13 >= [(FATManager *)self rwSize]);
  v14 = v4;
  while (1)
  {
    data2 = [(FATBlock *)v7 data];
    mutableBytes = [data2 mutableBytes];

    fsOps = [(FATManager *)self fsOps];
    v4 = [fsOps getNextClusterFromEntryForCluster:v14 entry:&mutableBytes[v13]];

    if (!v4)
    {
      break;
    }

    if ([(FATManager *)self isEOFCluster:v4])
    {
      (handlerCopy)[2](handlerCopy, 0, v9, v8, v4);
      goto LABEL_17;
    }

    if (v14 + 1 == v4)
    {
      v8 = (v8 + 1);
    }

    else
    {
      if ((handlerCopy[2])(handlerCopy, 0, v9, v8, v4))
      {
        goto LABEL_17;
      }

      v8 = 1;
      v9 = v4;
    }

    v13 = [(FATManager *)self getOffsetForCluster:v4 inFatBlock:v7];
    v14 = v4;
    if (v13 >= [(FATManager *)self rwSize])
    {
      goto LABEL_2;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10003264C();
  }

  v18 = fs_errorForPOSIXError();
  handlerCopy[2](handlerCopy, v18, 0, 0, 0);

LABEL_17:
}

- (void)getContigClusterChainLengthStartingAt:(unsigned int)at replyHandler:(id)handler
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001D8CC;
  v11[3] = &unk_100051230;
  atCopy = at;
  v11[4] = self;
  handlerCopy = handler;
  v5 = handlerCopy;
  v6 = objc_retainBlock(v11);
  label = dispatch_queue_get_label(0);
  fatQueue = [(FATManager *)self fatQueue];
  v9 = dispatch_queue_get_label(fatQueue);
  LODWORD(label) = strcmp(label, v9);

  if (label)
  {
    fatQueue2 = [(FATManager *)self fatQueue];
    dispatch_sync(fatQueue2, v6);
  }

  else
  {
    (v6[2])(v6);
  }
}

- (void)clusterChainLength:(id)length replyHandler:(id)handler
{
  lengthCopy = length;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001DAD0;
  v14[3] = &unk_100051280;
  selfCopy = self;
  handlerCopy = handler;
  v15 = lengthCopy;
  v7 = handlerCopy;
  v8 = lengthCopy;
  v9 = objc_retainBlock(v14);
  label = dispatch_queue_get_label(0);
  fatQueue = [(FATManager *)self fatQueue];
  v12 = dispatch_queue_get_label(fatQueue);
  LODWORD(label) = strcmp(label, v12);

  if (label)
  {
    fatQueue2 = [(FATManager *)self fatQueue];
    dispatch_sync(fatQueue2, v9);
  }

  else
  {
    (v9[2])(v9);
  }
}

- (void)iterateClusterChainOfItem:(id)item replyHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  fatQueue = [(FATManager *)self fatQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001DDD8;
  block[3] = &unk_100051280;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = itemCopy;
  v9 = handlerCopy;
  v10 = itemCopy;
  dispatch_sync(fatQueue, block);
}

- (void)getDirtyBitValue:(id)value
{
  valueCopy = value;
  fatQueue = [(FATManager *)self fatQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001DFD0;
  v7[3] = &unk_100050E90;
  v7[4] = self;
  v8 = valueCopy;
  v6 = valueCopy;
  dispatch_sync(fatQueue, v7);
}

- (void)setDirtyBitValue:(unsigned __int8)value forceWriteToDisk:(BOOL)disk replyHandler:(id)handler
{
  handlerCopy = handler;
  fatQueue = [(FATManager *)self fatQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E23C;
  block[3] = &unk_1000512A8;
  diskCopy = disk;
  block[4] = self;
  v12 = handlerCopy;
  valueCopy = value;
  v10 = handlerCopy;
  dispatch_barrier_sync(fatQueue, block);
}

- (BOOL)isEOFCluster:(unint64_t)cluster
{
  fsInfo = [(FATManager *)self fsInfo];
  if (([fsInfo FATMask] & 0xFFFFFFF8) <= cluster)
  {
    fsInfo2 = [(FATManager *)self fsInfo];
    v6 = [fsInfo2 FATMask] >= cluster;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)findNextFreeCluster:(unsigned int)cluster replyHandler:(id)handler
{
  handlerCopy = handler;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  clusterCopy = cluster;
  v7 = [[FATBlock alloc] initWithOffset:0 andLength:[(FATManager *)self rwSize]];
  v21 = handlerCopy;
  v8 = [(FATManager *)self getRWOffsetForClusterEntry:*(v24 + 6)];
  v9 = 0;
  while (1)
  {
    [(FATBlock *)v7 setStartOffset:[(FATManager *)self getRWOffsetForClusterEntry:*(v24 + 6)]];
    data = [(FATBlock *)v7 data];
    v11 = -[FATManager syncMetaReadFromFAT:startingAt:](self, "syncMetaReadFromFAT:startingAt:", [data mutableBytes], -[FATBlock startOffset](v7, "startOffset"));

    if (v11)
    {
      v19 = v21;
      (*(v21 + 2))(v21, v11, 0, 0);
      goto LABEL_10;
    }

    v12 = *(v24 + 6);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10001E87C;
    v22[3] = &unk_1000512D0;
    v22[4] = &v23;
    v22[5] = &v27;
    [(FATManager *)self findFreeClustersInBlock:v7 ofLength:1 contig:0 startCluster:v12 replyHandler:v22];
    if (*(v28 + 6))
    {
      v19 = v21;
      (*(v21 + 2))(v21, 0, *(v24 + 6));
      goto LABEL_10;
    }

    if (v8 == [(FATBlock *)v7 startOffset]&& (v9 & 1) != 0)
    {
      break;
    }

    v13 = *(v24 + 6);
    clustersPerBlock = [(FATManager *)self clustersPerBlock];
    *(v24 + 6) += v13 / clustersPerBlock * clustersPerBlock - v13;
    clustersPerBlock2 = [(FATManager *)self clustersPerBlock];
    v16 = *(v24 + 6) + clustersPerBlock2;
    *(v24 + 6) = v16;
    fsInfo = [(FATManager *)self fsInfo];
    maxValidCluster = [fsInfo maxValidCluster];

    if (maxValidCluster < v16)
    {
      *(v24 + 6) = 2;
      v9 = 1;
    }
  }

  fs_errorForPOSIXError();
  v20 = v19 = v21;
  (*(v21 + 2))(v21, v20, 0, 0);

LABEL_10:
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
}

@end
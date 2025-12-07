@interface CaptureMTLResidencySet
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)containsAllocation:(id)allocation;
- (CaptureMTLResidencySet)initWithBaseObject:(id)object captureDevice:(id)device;
- (NSArray)allAllocations;
- (NSArray)allCommittedAllocations;
- (NSString)description;
- (unint64_t)generationForAllocation:(id)allocation;
- (unint64_t)streamReference;
- (void)addAllocation:(id)allocation;
- (void)addAllocations:(const void *)allocations count:(unint64_t)count;
- (void)commit;
- (void)dealloc;
- (void)endResidency;
- (void)removeAllAllocations;
- (void)removeAllocation:(id)allocation;
- (void)removeAllocations:(const void *)allocations count:(unint64_t)count;
- (void)requestResidency;
- (void)setCurrentGeneration:(unint64_t)generation;
- (void)setExpiredGeneration:(unint64_t)generation;
- (void)touch;
@end

@implementation CaptureMTLResidencySet

- (void)requestResidency
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLResidencySetSPI *)self->_baseObject requestResidency];
  v3 = v13;
  *(v13 + 8) = -15223;
  v4 = BYTE9(v14);
  if (BYTE9(v14) > 0x38uLL)
  {
    v6 = *(*(&v12 + 1) + 24);
    v7 = BYTE10(v14);
    ++BYTE10(v14);
    v5 = GTTraceMemPool_allocateBytes(v6, *(&v13 + 1), v7 | 0x800000000) + 16;
    v4 = v7;
  }

  else
  {
    v5 = (v3 + BYTE9(v14));
    BYTE9(v14) += 8;
  }

  *(v3 + 13) = v4;
  traceStream = [(CaptureMTLResidencySet *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v5 = var0;
  s();
  *v10 = v11;
  *(v10 + 8) = BYTE8(v14);
  *(v13 + 15) |= 8u;
}

- (unint64_t)generationForAllocation:(id)allocation
{
  baseObject = self->_baseObject;
  baseObject = [allocation baseObject];
  v5 = [(MTLResidencySetSPI *)baseObject generationForAllocation:baseObject];

  return v5;
}

- (void)endResidency
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLResidencySetSPI *)self->_baseObject endResidency];
  v3 = v13;
  *(v13 + 8) = -15230;
  v4 = BYTE9(v14);
  if (BYTE9(v14) > 0x38uLL)
  {
    v6 = *(*(&v12 + 1) + 24);
    v7 = BYTE10(v14);
    ++BYTE10(v14);
    v5 = GTTraceMemPool_allocateBytes(v6, *(&v13 + 1), v7 | 0x800000000) + 16;
    v4 = v7;
  }

  else
  {
    v5 = (v3 + BYTE9(v14));
    BYTE9(v14) += 8;
  }

  *(v3 + 13) = v4;
  traceStream = [(CaptureMTLResidencySet *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v5 = var0;
  s();
  *v10 = v11;
  *(v10 + 8) = BYTE8(v14);
  *(v13 + 15) |= 8u;
}

- (void)dealloc
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  v3 = v14;
  *(v14 + 8) = -15231;
  v4 = BYTE9(v15);
  if (BYTE9(v15) > 0x38uLL)
  {
    v6 = *(*(&v13 + 1) + 24);
    v7 = BYTE10(v15);
    ++BYTE10(v15);
    v5 = GTTraceMemPool_allocateBytes(v6, *(&v14 + 1), v7 | 0x800000000) + 16;
    v4 = v7;
  }

  else
  {
    v5 = (v3 + BYTE9(v15));
    BYTE9(v15) += 8;
  }

  *(v3 + 13) = v4;
  traceStream = [(CaptureMTLResidencySet *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v5 = var0;
  s();
  *v10 = v11;
  *(v10 + 8) = BYTE8(v15);
  *(v14 + 15) |= 8u;
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  v12.receiver = self;
  v12.super_class = CaptureMTLResidencySet;
  [(CaptureMTLResidencySet *)&v12 dealloc];
}

- (BOOL)containsAllocation:(id)allocation
{
  baseObject = self->_baseObject;
  baseObject = [allocation baseObject];
  LOBYTE(baseObject) = [(MTLResidencySetSPI *)baseObject containsAllocation:baseObject];

  return baseObject;
}

- (void)setExpiredGeneration:(unint64_t)generation
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLResidencySet_setExpiredGeneration", "Residency Set API", 0, 0);
  baseObject = self->_baseObject;

  [(MTLResidencySetSPI *)baseObject setExpiredGeneration:generation];
}

- (void)setCurrentGeneration:(unint64_t)generation
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLResidencySet_setCurrentGeneration", "Residency Set API", 0, 0);
  baseObject = self->_baseObject;

  [(MTLResidencySetSPI *)baseObject setCurrentGeneration:generation];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLResidencySetSPI *)baseObject conformsToProtocol:protocolCopy];

  if (&OBJC_PROTOCOL___CaptureMTLObject == protocolCopy)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = CaptureMTLResidencySet;
  v3 = [(CaptureMTLResidencySet *)&v7 description];
  v4 = [(MTLResidencySetSPI *)self->_baseObject description];
  v5 = [NSString stringWithFormat:@"%@ -> %@", v3, v4];

  return v5;
}

- (unint64_t)streamReference
{
  traceStream = self->_traceStream;
  if (traceStream)
  {
    return traceStream->var0;
  }

  else
  {
    return 0;
  }
}

- (void)touch
{
  traceStream = self->_traceStream;
  v3 = mach_absolute_time();
  if (traceStream)
  {
    v4 = atomic_load(&traceStream[1].var1);
    v5 = v4;
    do
    {
      atomic_compare_exchange_strong(&traceStream[1].var1, &v5, v4 & 0x3F | v3 & 0xFFFFFFFFFFFFFFC0);
      v6 = v5 == v4;
      v4 = v5;
    }

    while (!v6);
  }
}

- (void)commit
{
  ResidencySetTakeSnapshotInternal(self, 0);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allObjects = [(NSMutableSet *)selfCopy->_tempAllocations allObjects];
  v5 = [allObjects copy];
  committedAllocations = selfCopy->_committedAllocations;
  selfCopy->_committedAllocations = v5;

  objc_sync_exit(selfCopy);
  [(MTLResidencySetSPI *)selfCopy->_baseObject commit];
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    GTTraceContext_pushEncoderWithStream(selfCopy->_traceContext, &v16);
    v7 = v17;
    *(v17 + 8) = -15220;
    v8 = BYTE9(v18);
    if (BYTE9(v18) > 0x38uLL)
    {
      v10 = *(*(&v16 + 1) + 24);
      v11 = BYTE10(v18);
      ++BYTE10(v18);
      v9 = GTTraceMemPool_allocateBytes(v10, *(&v17 + 1), v11 | 0x800000000) + 16;
      v8 = v11;
    }

    else
    {
      v9 = (v7 + BYTE9(v18));
      BYTE9(v18) += 8;
    }

    *(v7 + 13) = v8;
    traceStream = [(CaptureMTLResidencySet *)selfCopy traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    *v9 = var0;
    s();
    *v14 = v15;
    *(v14 + 8) = BYTE8(v18);
    *(v17 + 15) |= 8u;
  }
}

- (NSArray)allCommittedAllocations
{
  v2 = [(NSArray *)self->_committedAllocations copy];

  return v2;
}

- (NSArray)allAllocations
{
  allObjects = [(NSMutableSet *)self->_tempAllocations allObjects];
  v3 = [allObjects copy];

  return v3;
}

- (void)removeAllAllocations
{
  ResidencySetTakeSnapshotInternal(self, 0);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_tempAllocations removeAllObjects];
  objc_sync_exit(selfCopy);

  [(MTLResidencySetSPI *)selfCopy->_baseObject removeAllAllocations];
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    GTTraceContext_pushEncoderWithStream(selfCopy->_traceContext, &v13);
    v4 = v14;
    *(v14 + 8) = -15208;
    v5 = BYTE9(v15);
    if (BYTE9(v15) > 0x38uLL)
    {
      v7 = *(*(&v13 + 1) + 24);
      v8 = BYTE10(v15);
      ++BYTE10(v15);
      v6 = GTTraceMemPool_allocateBytes(v7, *(&v14 + 1), v8 | 0x800000000) + 16;
      v5 = v8;
    }

    else
    {
      v6 = (v4 + BYTE9(v15));
      BYTE9(v15) += 8;
    }

    *(v4 + 13) = v5;
    traceStream = [(CaptureMTLResidencySet *)selfCopy traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    *v6 = var0;
    s();
    *v11 = v12;
    *(v11 + 8) = BYTE8(v15);
    *(v14 + 15) |= 8u;
  }
}

- (void)removeAllocations:(const void *)allocations count:(unint64_t)count
{
  ResidencySetTakeSnapshotInternal(self, 0);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (count)
  {
    allocationsCopy = allocations;
    countCopy = count;
    do
    {
      [(NSMutableSet *)selfCopy->_tempAllocations removeObject:*allocationsCopy++];
      --countCopy;
    }

    while (countCopy);
  }

  objc_sync_exit(selfCopy);

  baseObject = selfCopy->_baseObject;
  v11 = 8 * count;
  __chkstk_darwin(v12);
  bzero(&v26 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  if (count)
  {
    allocationsCopy2 = allocations;
    v14 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    countCopy2 = count;
    do
    {
      *v14++ = [*allocationsCopy2++ baseObject];
      --countCopy2;
    }

    while (countCopy2);
  }

  [(MTLResidencySetSPI *)baseObject removeAllocations:&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) count:count];
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    GTTraceContext_pushEncoderWithStream(selfCopy->_traceContext, &v26);
    v16 = v27;
    *(v27 + 8) = -15206;
    v17 = BYTE9(v28);
    if (BYTE9(v28) > 0x28uLL)
    {
      v19 = *(*(&v26 + 1) + 24);
      v20 = BYTE10(v28);
      ++BYTE10(v28);
      v18 = GTTraceMemPool_allocateBytes(v19, *(&v27 + 1), v20 | 0x1800000000) + 16;
      v17 = v20;
    }

    else
    {
      v18 = (v16 + BYTE9(v28));
      BYTE9(v28) += 24;
    }

    *(v16 + 13) = v17;
    traceStream = [(CaptureMTLResidencySet *)selfCopy traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(traceStream);
    bzero(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
    v23 = StreamArray(&v26, (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), allocations, count);
    *v18 = var0;
    *(v18 + 1) = count;
    v18[16] = v23;
    *(v18 + 17) = 0;
    *(v18 + 5) = 0;
    s();
    *v24 = v25;
    *(v24 + 8) = BYTE8(v28);
    *(v27 + 15) |= 8u;
  }
}

- (void)removeAllocation:(id)allocation
{
  allocationCopy = allocation;
  ResidencySetTakeSnapshotInternal(self, 0);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_tempAllocations removeObject:allocationCopy];
  objc_sync_exit(selfCopy);

  baseObject = selfCopy->_baseObject;
  baseObject = [allocationCopy baseObject];
  [(MTLResidencySetSPI *)baseObject removeAllocation:baseObject];

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    GTTraceContext_pushEncoderWithStream(selfCopy->_traceContext, &v19);
    v8 = v20;
    *(v20 + 8) = -15207;
    v9 = BYTE9(v21);
    if (BYTE9(v21) > 0x30uLL)
    {
      v11 = *(*(&v19 + 1) + 24);
      v12 = BYTE10(v21);
      ++BYTE10(v21);
      v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x1000000000) + 16;
      v9 = v12;
    }

    else
    {
      v10 = (v8 + BYTE9(v21));
      BYTE9(v21) += 16;
    }

    *(v8 + 13) = v9;
    traceStream = [(CaptureMTLResidencySet *)selfCopy traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [allocationCopy traceStream];
    if (traceStream2)
    {
      v16 = *traceStream2;
    }

    else
    {
      v16 = 0;
    }

    *v10 = var0;
    *(v10 + 1) = v16;
    s();
    *v17 = v18;
    *(v17 + 8) = BYTE8(v21);
    *(v20 + 15) |= 8u;
  }
}

- (void)addAllocations:(const void *)allocations count:(unint64_t)count
{
  ResidencySetTakeSnapshotInternal(self, 0);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (count)
  {
    allocationsCopy = allocations;
    countCopy = count;
    do
    {
      [(NSMutableSet *)selfCopy->_tempAllocations addObject:*allocationsCopy++];
      --countCopy;
    }

    while (countCopy);
  }

  objc_sync_exit(selfCopy);

  baseObject = selfCopy->_baseObject;
  v11 = 8 * count;
  __chkstk_darwin(v12);
  bzero(&v26 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  if (count)
  {
    allocationsCopy2 = allocations;
    v14 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    countCopy2 = count;
    do
    {
      *v14++ = [*allocationsCopy2++ baseObject];
      --countCopy2;
    }

    while (countCopy2);
  }

  [(MTLResidencySetSPI *)baseObject addAllocations:&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) count:count];
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    GTTraceContext_pushEncoderWithStream(selfCopy->_traceContext, &v26);
    v16 = v27;
    *(v27 + 8) = -15211;
    v17 = BYTE9(v28);
    if (BYTE9(v28) > 0x28uLL)
    {
      v19 = *(*(&v26 + 1) + 24);
      v20 = BYTE10(v28);
      ++BYTE10(v28);
      v18 = GTTraceMemPool_allocateBytes(v19, *(&v27 + 1), v20 | 0x1800000000) + 16;
      v17 = v20;
    }

    else
    {
      v18 = (v16 + BYTE9(v28));
      BYTE9(v28) += 24;
    }

    *(v16 + 13) = v17;
    traceStream = [(CaptureMTLResidencySet *)selfCopy traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(traceStream);
    bzero(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
    v23 = StreamArray(&v26, (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), allocations, count);
    *v18 = var0;
    *(v18 + 1) = count;
    v18[16] = v23;
    *(v18 + 17) = 0;
    *(v18 + 5) = 0;
    s();
    *v24 = v25;
    *(v24 + 8) = BYTE8(v28);
    *(v27 + 15) |= 8u;
  }
}

- (void)addAllocation:(id)allocation
{
  allocationCopy = allocation;
  ResidencySetTakeSnapshotInternal(self, 0);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_tempAllocations addObject:allocationCopy];
  objc_sync_exit(selfCopy);

  baseObject = selfCopy->_baseObject;
  baseObject = [allocationCopy baseObject];
  [(MTLResidencySetSPI *)baseObject addAllocation:baseObject];

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    GTTraceContext_pushEncoderWithStream(selfCopy->_traceContext, &v19);
    v8 = v20;
    *(v20 + 8) = -15212;
    v9 = BYTE9(v21);
    if (BYTE9(v21) > 0x30uLL)
    {
      v11 = *(*(&v19 + 1) + 24);
      v12 = BYTE10(v21);
      ++BYTE10(v21);
      v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x1000000000) + 16;
      v9 = v12;
    }

    else
    {
      v10 = (v8 + BYTE9(v21));
      BYTE9(v21) += 16;
    }

    *(v8 + 13) = v9;
    traceStream = [(CaptureMTLResidencySet *)selfCopy traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [allocationCopy traceStream];
    if (traceStream2)
    {
      v16 = *traceStream2;
    }

    else
    {
      v16 = 0;
    }

    *v10 = var0;
    *(v10 + 1) = v16;
    s();
    *v17 = v18;
    *(v17 + 8) = BYTE8(v21);
    *(v20 + 15) |= 8u;
  }
}

- (CaptureMTLResidencySet)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v17.receiver = self;
  v17.super_class = CaptureMTLResidencySet;
  v9 = [(CaptureMTLResidencySet *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    objc_storeStrong(&v10->_captureDevice, device);
    traceContext = [deviceCopy traceContext];
    v10->_traceContext = traceContext;
    v12 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openStream(traceContext, v12, v10);

    v13 = +[NSMutableSet set];
    tempAllocations = v10->_tempAllocations;
    v10->_tempAllocations = v13;

    committedAllocations = v10->_committedAllocations;
    v10->_committedAllocations = 0;

    v10->_snapshotCreated = (*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2;
  }

  return v10;
}

@end
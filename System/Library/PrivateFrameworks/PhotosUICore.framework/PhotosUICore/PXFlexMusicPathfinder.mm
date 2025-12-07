@interface PXFlexMusicPathfinder
- (PXFlexMusicPathfinder)init;
- (PXFlexMusicPathfinder)initWithSong:(id)song;
- (void)_loadRenditionsIfNeeded;
- (void)findPathFromCurrentTime:(id *)time inRendition:(id)rendition withTargetRemainder:(id *)remainder tolerance:(id *)tolerance result:(id)result;
@end

@implementation PXFlexMusicPathfinder

- (void)_loadRenditionsIfNeeded
{
  if (!self->_renditions)
  {
    v18 = v2;
    v19 = v3;
    song = [(PXFlexMusicPathfinder *)self song];
    idealDurations = [song idealDurations];
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(idealDurations, "count")}];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __48__PXFlexMusicPathfinder__loadRenditionsIfNeeded__block_invoke;
    v15 = &unk_1E773C328;
    v16 = song;
    v17 = v7;
    v8 = v7;
    v9 = song;
    [idealDurations enumerateObjectsUsingBlock:&v12];
    v10 = [v8 copy];
    renditions = self->_renditions;
    self->_renditions = v10;
  }
}

void __48__PXFlexMusicPathfinder__loadRenditionsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v7 = 0uLL;
  v8 = 0;
  if (a2)
  {
    objc_msgSend_CMTimeValue(a2);
  }

  v3 = *(a1 + 32);
  v5 = v7;
  v6 = v8;
  v4 = [v3 renditionForDuration:&v5 withOptions:MEMORY[0x1E695E0F8]];
  [*(a1 + 40) addObject:v4];
}

- (void)findPathFromCurrentTime:(id *)time inRendition:(id)rendition withTargetRemainder:(id *)remainder tolerance:(id *)tolerance result:(id)result
{
  v28[1] = *MEMORY[0x1E69E9840];
  renditionCopy = rendition;
  resultCopy = result;
  [(PXFlexMusicPathfinder *)self _loadRenditionsIfNeeded];
  song = [(PXFlexMusicPathfinder *)self song];
  trackA = [renditionCopy trackA];
  trackB = [renditionCopy trackB];
  v15 = objc_alloc(MEMORY[0x1E695DF70]);
  clips = [trackA clips];
  v17 = [clips count];
  clips2 = [trackB clips];
  v19 = [v15 initWithCapacity:{objc_msgSend(clips2, "count") + v17}];

  clips3 = [trackA clips];
  [v19 addObjectsFromArray:clips3];

  clips4 = [trackB clips];
  [v19 addObjectsFromArray:clips4];

  v22 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"position" ascending:1];
  v28[0] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  [v19 sortUsingDescriptors:v23];

  sampleRate = [song sampleRate];
  memset(&v26, 0, sizeof(v26));
  time = *time;
  CMTimeConvertScale(&v26, &time, sampleRate, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  [v19 count];
  v25 = v19;
  PXLastIndexInSortedRangePassingTest();
}

BOOL __98__PXFlexMusicPathfinder_findPathFromCurrentTime_inRendition_withTargetRemainder_tolerance_result___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = [v3 position] <= *(a1 + 40);

  return v4;
}

void __98__PXFlexMusicPathfinder_findPathFromCurrentTime_inRendition_withTargetRemainder_tolerance_result___block_invoke_12(uint64_t a1, void *a2)
{
  v43[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v41 = 0uLL;
  v42 = 0;
  if (v3)
  {
    objc_msgSend_CMTimeValue(v3);
  }

  v5 = *(a1 + 32);
  v29 = v41;
  v30 = v42;
  v6 = [v5 renditionForDuration:&v29 withOptions:MEMORY[0x1E695E0F8]];
  memset(&v40, 0, sizeof(v40));
  v7 = objc_msgSend_duration(v6);
  CMTimeMake(&v40, v7, *(a1 + 48));
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__134916;
  v38 = __Block_byref_object_dispose__134917;
  v39 = 0;
  *&v29 = 0;
  *(&v29 + 1) = &v29;
  v30 = 0x3810000000;
  v31 = &unk_1A561E057;
  v32 = *MEMORY[0x1E6960C70];
  v33 = *(MEMORY[0x1E6960C70] + 16);
  v8 = [v6 trackB];
  v9 = [v8 clips];
  v10 = [v6 trackA];
  v11 = [v10 clips];
  v12 = [v9 arrayByAddingObjectsFromArray:v11];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __98__PXFlexMusicPathfinder_findPathFromCurrentTime_inRendition_withTargetRemainder_tolerance_result___block_invoke_13;
  v20[3] = &unk_1E773C2B8;
  v21 = *(a1 + 48);
  v22 = *(a1 + 52);
  v23 = *(a1 + 68);
  v24 = v40;
  v26 = *(a1 + 92);
  v25 = *(a1 + 76);
  v28 = *(a1 + 116);
  v27 = *(a1 + 100);
  v20[4] = &v34;
  v20[5] = &v29;
  [v12 enumerateObjectsUsingBlock:v20];

  if (v35[5])
  {
    memset(&v19, 0, sizeof(v19));
    lhs = v40;
    v17 = *(*(&v29 + 1) + 32);
    CMTimeSubtract(&v19, &lhs, &v17);
    v43[0] = v6;
    lhs = *(*(&v29 + 1) + 32);
    v13 = [MEMORY[0x1E696B098] valueWithCMTime:&lhs];
    v43[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
    v15 = *(a1 + 40);
    lhs = v19;
    v16 = [MEMORY[0x1E696B098] valueWithCMTime:&lhs];
    [v15 setObject:v14 forKeyedSubscript:v16];
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v34, 8);
}

uint64_t __98__PXFlexMusicPathfinder_findPathFromCurrentTime_inRendition_withTargetRemainder_tolerance_result___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  memset(&v13, 0, sizeof(v13));
  if (v5)
  {
    objc_msgSend_CMTimeValue(v5);
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  rhs = *(a1 + 32);
  CMTimeSubtract(&time, &lhs, &rhs);
  CMTimeAbsoluteValue(&v13, &time);
  memset(&time, 0, sizeof(time));
  if (v6)
  {
    objc_msgSend_CMTimeValue(v6);
  }

  else
  {
    memset(&rhs, 0, sizeof(rhs));
  }

  v9 = *(a1 + 32);
  CMTimeSubtract(&lhs, &rhs, &v9);
  CMTimeAbsoluteValue(&time, &lhs);
  lhs = v13;
  rhs = time;
  v7 = CMTimeCompare(&lhs, &rhs);

  return v7;
}

void __98__PXFlexMusicPathfinder_findPathFromCurrentTime_inRendition_withTargetRemainder_tolerance_result___block_invoke_13(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  memset(&v17, 0, sizeof(v17));
  CMTimeMake(&v17, [v7 offset], *(a1 + 48));
  memset(&v16, 0, sizeof(v16));
  v8 = objc_msgSend_duration(v7);
  CMTimeMake(&duration.start, v8, *(a1 + 48));
  start = v17;
  CMTimeRangeMake(&v16, &start, &duration.start);
  duration = v16;
  start = *(a1 + 52);
  if (CMTimeRangeContainsTime(&duration, &start))
  {
    memset(&duration, 0, 24);
    CMTimeMake(&duration.start, [v7 position], *(a1 + 48));
    memset(&start, 0, sizeof(start));
    lhs = *(a1 + 52);
    rhs = v17;
    CMTimeSubtract(&start, &lhs, &rhs);
    memset(&lhs, 0, sizeof(lhs));
    rhs = duration.start;
    time1 = start;
    CMTimeAdd(&lhs, &rhs, &time1);
    memset(&rhs, 0, sizeof(rhs));
    time1 = *(a1 + 76);
    time = lhs;
    CMTimeSubtract(&rhs, &time1, &time);
    time1 = rhs;
    v9 = *(a1 + 100);
    CMTimeSubtract(&time, &time1, &v9);
    CMTimeAbsoluteValue(&time1, &time);
    time = *(a1 + 124);
    if (CMTimeCompare(&time1, &time) <= 0)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *(*(*(a1 + 40) + 8) + 32) = lhs;
    }

    *a4 = 1;
  }
}

- (PXFlexMusicPathfinder)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFlexMusicPathfinder.m" lineNumber:34 description:{@"%s is not available as initializer", "-[PXFlexMusicPathfinder init]"}];

  abort();
}

- (PXFlexMusicPathfinder)initWithSong:(id)song
{
  songCopy = song;
  v9.receiver = self;
  v9.super_class = PXFlexMusicPathfinder;
  v6 = [(PXFlexMusicPathfinder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_song, song);
  }

  return v7;
}

@end
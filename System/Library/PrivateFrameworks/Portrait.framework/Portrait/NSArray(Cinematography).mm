@interface NSArray(Cinematography)
- (char)_firstIndexAfterTime:()Cinematography startIndex:timeSelector:;
- (uint64_t)_firstIndexAtOrAfterTime:()Cinematography;
- (uint64_t)_firstIndexAtOrAfterTime:()Cinematography startIndex:lastIfEqual:timeSelector:;
- (uint64_t)_firstIndexAtOrAfterTime:()Cinematography timeSelector:;
- (uint64_t)_indexAtOrBeforeTime:()Cinematography;
- (uint64_t)_indexAtOrBeforeTime:()Cinematography timeSelector:;
- (uint64_t)_indexNearestTime:()Cinematography;
- (uint64_t)_indexNearestTime:()Cinematography timeSelector:;
- (uint64_t)_indexRangeOfTimeRange:()Cinematography;
- (uint64_t)_indexRangeOfTimeRange:()Cinematography timeSelector:;
- (void)_timeForObject:()Cinematography timeSelector:;
- (void)_timeRangeOfIndexRange:()Cinematography timeSelector:;
@end

@implementation NSArray(Cinematography)

- (uint64_t)_indexNearestTime:()Cinematography
{
  v4 = *a3;
  v5 = *(a3 + 2);
  return [self _indexNearestTime:&v4 timeSelector:sel_time];
}

- (uint64_t)_indexAtOrBeforeTime:()Cinematography
{
  v4 = *a3;
  v5 = *(a3 + 2);
  return [self _indexAtOrBeforeTime:&v4 timeSelector:sel_time];
}

- (uint64_t)_firstIndexAtOrAfterTime:()Cinematography
{
  v4 = *a3;
  v5 = *(a3 + 2);
  return [self _firstIndexAtOrAfterTime:&v4 timeSelector:sel_time];
}

- (uint64_t)_indexRangeOfTimeRange:()Cinematography
{
  v3 = a3[1];
  v5[0] = *a3;
  v5[1] = v3;
  v5[2] = a3[2];
  return [self _indexRangeOfTimeRange:v5 timeSelector:sel_time];
}

- (uint64_t)_indexNearestTime:()Cinematography timeSelector:
{
  v15 = *a3;
  v6 = [self _firstIndexAtOrAfterTime:&v15 startIndex:0 lastIfEqual:1 timeSelector:a4];
  if (v6 >= 1)
  {
    if (v6 >= [self count])
    {
      --v6;
    }

    else
    {
      memset(&v15, 0, sizeof(v15));
      v7 = [self objectAtIndexedSubscript:v6 - 1];
      objc_msgSend__timeForObject_timeSelector_(self);

      memset(&v14, 0, sizeof(v14));
      v8 = [self objectAtIndexedSubscript:v6];
      objc_msgSend__timeForObject_timeSelector_(self);

      memset(&v13, 0, sizeof(v13));
      lhs = *a3;
      rhs = v15;
      CMTimeSubtract(&v13, &lhs, &rhs);
      memset(&lhs, 0, sizeof(lhs));
      rhs = v14;
      v10 = *a3;
      CMTimeSubtract(&lhs, &rhs, &v10);
      rhs = v13;
      v10 = lhs;
      if (CMTimeCompare(&rhs, &v10) == -1)
      {
        --v6;
      }
    }
  }

  return v6;
}

- (uint64_t)_indexAtOrBeforeTime:()Cinematography timeSelector:
{
  time2 = *a3;
  v6 = [self _firstIndexAtOrAfterTime:&time2 timeSelector:?];
  if (v6 == [self count])
  {
    if (v6)
    {
      --v6;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v7 = [self objectAtIndexedSubscript:v6];
    objc_msgSend__timeForObject_timeSelector_(self);
    v11 = *a3;
    v8 = CMTimeCompare(&v11, &time2);

    v9 = v6 - 1;
    if (!v6)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v8 < 0)
    {
      return v9;
    }
  }

  return v6;
}

- (uint64_t)_firstIndexAtOrAfterTime:()Cinematography timeSelector:
{
  v5 = *a3;
  v6 = *(a3 + 2);
  return [self _firstIndexAtOrAfterTime:&v5 startIndex:0 lastIfEqual:0 timeSelector:a4];
}

- (uint64_t)_indexRangeOfTimeRange:()Cinematography timeSelector:
{
  memset(&v11, 0, sizeof(v11));
  lhs = *a3;
  v9 = *(a3 + 24);
  CMTimeAdd(&v11, &lhs, &v9);
  lhs = *a3;
  v7 = [self _firstIndexAtOrAfterTime:&lhs timeSelector:a4];
  lhs = v11;
  if ([self _firstIndexAfterTime:&lhs startIndex:v7 timeSelector:a4] <= v7)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

- (void)_timeRangeOfIndexRange:()Cinematography timeSelector:
{
  if (a2 >= [self count])
  {
    v12 = MEMORY[0x277CC08E0];
    v13 = *(MEMORY[0x277CC08E0] + 16);
    *a5 = *MEMORY[0x277CC08E0];
    *(a5 + 16) = v13;
    *(a5 + 32) = *(v12 + 32);
  }

  else
  {
    v9 = [self objectAtIndex:a2];
    memset(&v17, 0, sizeof(v17));
    objc_msgSend__timeForObject_timeSelector_(self);
    v10 = a2 + a3;
    if (v10 >= [self count])
    {
      v16 = v17;
      start = **&MEMORY[0x277CC08B0];
      CMTimeRangeMake(a5, &v16, &start);
    }

    else
    {
      v11 = [self objectAtIndex:v10];
      memset(&v16, 0, sizeof(v16));
      objc_msgSend__timeForObject_timeSelector_(self);
      start = v17;
      v14 = v16;
      CMTimeRangeFromTimeToTime(a5, &start, &v14);
    }
  }
}

- (void)_timeForObject:()Cinematography timeSelector:
{
  selfCopy = self;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      ([selfCopy methodForSelector:a2])(selfCopy, a2);
    }

    else
    {
      v6 = NSStringFromSelector(a2);
      NSLog(&cfstr_TimeforobjectE.isa, selfCopy, v6);

      v7 = MEMORY[0x277CC08F0];
      *a3 = *MEMORY[0x277CC08F0];
      a3[2] = *(v7 + 16);
    }

    goto LABEL_7;
  }

  v5 = selfCopy;
  if (selfCopy)
  {
    [selfCopy CMTimeValue];
LABEL_7:
    v5 = selfCopy;
    goto LABEL_8;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
LABEL_8:
}

- (uint64_t)_firstIndexAtOrAfterTime:()Cinematography startIndex:lastIfEqual:timeSelector:
{
  v16 = *a3;
  v17 = *(a3 + 2);
  v10 = [MEMORY[0x277CCAE60] valueWithCMTime:&v16];
  v11 = [self count] - a4;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __88__NSArray_Cinematography___firstIndexAtOrAfterTime_startIndex_lastIfEqual_timeSelector___block_invoke;
  v15[3] = &unk_2785234F8;
  if (a5)
  {
    v12 = 1536;
  }

  else
  {
    v12 = 1280;
  }

  v15[4] = self;
  v15[5] = a6;
  v13 = [self indexOfObject:v10 inSortedRange:a4 options:v11 usingComparator:{v12, v15}];

  return v13;
}

- (char)_firstIndexAfterTime:()Cinematography startIndex:timeSelector:
{
  v12 = *a3;
  v7 = [self _firstIndexAtOrAfterTime:&v12 startIndex:a4 lastIfEqual:1 timeSelector:a5];
  if (v7 < [self count])
  {
    memset(&v12, 0, sizeof(v12));
    v8 = [self objectAtIndexedSubscript:v7];
    objc_msgSend__timeForObject_timeSelector_(self);

    time1 = *a3;
    v10 = v12;
    if (!CMTimeCompare(&time1, &v10))
    {
      ++v7;
    }
  }

  return v7;
}

@end
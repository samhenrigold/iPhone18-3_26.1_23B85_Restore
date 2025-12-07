@interface NSArray
@end

@implementation NSArray

uint64_t __88__NSArray_Cinematography___firstIndexAtOrAfterTime_startIndex_lastIfEqual_timeSelector___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  memset(&v13[1], 0, sizeof(CMTime));
  v7 = *(a1 + 32);
  if (v7 && (objc_msgSend__timeForObject_timeSelector_(v7), v8 = *(a1 + 32), memset(v13, 0, 24), v8))
  {
    objc_msgSend__timeForObject_timeSelector_(v8);
  }

  else
  {
    memset(v13, 0, 24);
  }

  time1 = v13[1];
  v11 = v13[0];
  v9 = CMTimeCompare(&time1, &v11);

  return v9;
}

@end
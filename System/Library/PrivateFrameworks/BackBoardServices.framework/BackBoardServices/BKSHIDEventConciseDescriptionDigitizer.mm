@interface BKSHIDEventConciseDescriptionDigitizer
@end

@implementation BKSHIDEventConciseDescriptionDigitizer

void ___BKSHIDEventConciseDescriptionDigitizer_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  Type = IOHIDEventGetType();
  v5 = *(a1 + 32);
  if (Type == 11)
  {
    v6 = v5;
    if (IOHIDEventGetType() == 11)
    {
      IOHIDEventGetIntegerValue();
      IOHIDEventGetFloatValue();
      IOHIDEventGetFloatValue();
      v7 = [v6 appendInteger:? withName:?];
      v8 = [v6 appendPoint:? withName:?];
      _BKSHIDEventAppendEventFlags(v3, v6);
    }

    else
    {
      IOHIDEventTypeGetName();
      [v6 appendString:? withName:?];
    }

    if (*(*(*(a1 + 48) + 8) + 24) < *(a1 + 56))
    {
      v9 = [*(a1 + 40) objectAtIndexedSubscript:?];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 pathIndex];
        if (v11 == IOHIDEventGetIntegerValue())
        {
          [v10 touchIdentifier];
          v12 = [*(a1 + 32) appendUnsignedInteger:? withName:? format:?];
          v13 = [v10 hitTestContextCategory];
          if (v13)
          {
            v14 = *(a1 + 32);
            v15 = NSStringFromBKSTouchHitTestContextCategory(v13);
            [v14 appendString:? withName:?];
          }

          v16 = [v10 locus];
          if (v16)
          {
            v17 = *(a1 + 32);
            v18 = NSStringFromBKSHIDTouchLocus(v16);
            [v17 appendString:? withName:?];
          }

          v19 = *(a1 + 32);
          [v10 preciseLocation];
          v20 = [v19 appendPoint:? withName:?];
          v21 = [v10 authenticationMessage];

          if (v21)
          {
            [*(a1 + 32) appendString:? withName:?];
          }

          v22 = [v10 securityAnalysis];

          if (v22)
          {
            [*(a1 + 32) appendString:? withName:?];
          }
        }
      }

      ++*(*(*(a1 + 48) + 8) + 24);
    }
  }

  else
  {
    [v5 appendCustomFormatWithName:? block:?];
  }
}

void ___BKSHIDEventConciseDescriptionDigitizer_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = BKSHIDEventGetConciseDescription(v2);
  [v3 appendString:?];
}

@end
@interface CLEmergencyControllerAdapter
- (void)checkEmergencyCallStatus;
@end

@implementation CLEmergencyControllerAdapter

- (void)checkEmergencyCallStatus
{
  currentCalls = [qword_1026380F0 currentCalls];
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(currentCalls, 0);
  if (v3)
  {
    v5 = v3;
    v6 = MEMORY[0];
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (MEMORY[0] != v6)
      {
        objc_enumerationMutation(currentCalls);
      }

      v8 = *(8 * v7);
      if (v8)
      {
        if ([*(8 * v7) isEmergency])
        {
          break;
        }
      }

      if (v5 == ++v7)
      {
        v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(currentCalls);
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v8 = 0;
  }

  sub_100303768(qword_1026380E8, v8, v4);
}

@end
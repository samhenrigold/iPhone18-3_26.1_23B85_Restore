@interface CopyBrokerInfoForDeviceID
@end

@implementation CopyBrokerInfoForDeviceID

void __browser_CopyBrokerInfoForDeviceID_block_invoke(void *a1)
{
  v2 = a1[7];
  v4 = a1[8];
  v3 = a1[9];
  v5 = a1[10];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Int64 = CFNumberCreateInt64();
  Value = CFDictionaryGetValue(*(DerivedStorage + 360), Int64);
  if (!Value)
  {
    __browser_CopyBrokerInfoForDeviceID_block_invoke_cold_1();
    v14 = -6727;
    if (!Int64)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v9 = Value;
  if (v2)
  {
    BrokerGroupID = APBrokeredReceiverGetBrokerGroupID(Value);
    *v2 = CFRetain(BrokerGroupID);
  }

  if (v4)
  {
    ReceiverGroupUUID = APBrokeredReceiverGetReceiverGroupUUID(v9);
    *v4 = CFRetain(ReceiverGroupUUID);
  }

  if (v3)
  {
    PublicReceiverUUID = APBrokeredReceiverGetPublicReceiverUUID(v9);
    *v3 = CFRetain(PublicReceiverUUID);
  }

  if (!v5)
  {
    v14 = 0;
    if (!Int64)
    {
      goto LABEL_15;
    }

LABEL_14:
    CFRelease(Int64);
    goto LABEL_15;
  }

  LTPKHash = APBrokeredReceiverGetLTPKHash(v9);
  if (LTPKHash)
  {
    LTPKHash = CFRetain(LTPKHash);
  }

  v14 = 0;
  *v5 = LTPKHash;
  if (Int64)
  {
    goto LABEL_14;
  }

LABEL_15:
  *(*(a1[4] + 8) + 24) = v14;
}

@end
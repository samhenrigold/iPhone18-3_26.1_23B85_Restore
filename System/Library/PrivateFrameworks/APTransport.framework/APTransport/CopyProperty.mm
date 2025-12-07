@interface CopyProperty
@end

@implementation CopyProperty

void __stream_CopyProperty_block_invoke(void *a1)
{
  v3 = a1[6];
  v2 = a1[7];
  v4 = a1[8];
  cf = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 24))
  {
    __stream_CopyProperty_block_invoke_cold_1();
    v12 = -16617;
    goto LABEL_16;
  }

  if (!CFEqual(v3, @"LastDeliveredMessage"))
  {
    APTransportConnectionGetCMBaseObject();
    v14 = v13;
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v12 = v15(v14, v3, v2, v4);
      if (!v12)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = -12782;
    }

    goto LABEL_13;
  }

  APTransportConnectionGetCMBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    v12 = -12782;
LABEL_13:
    APSLogErrorAt();
    goto LABEL_16;
  }

  v8 = v7(v6, @"LastDeliveredPackage", v2, &cf);
  if (v8)
  {
    v12 = v8;
    goto LABEL_13;
  }

  v9 = cf;
  if (cf && (v10 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0)
  {
    v11 = v10(v9);
  }

  else
  {
    v11 = 0;
  }

  v12 = 0;
  *v4 = v11;
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  *(*(a1[4] + 8) + 24) = v12;
}

@end
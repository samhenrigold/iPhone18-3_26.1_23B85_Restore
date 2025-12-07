@interface IOHIDServiceSetPropertyForClient
@end

@implementation IOHIDServiceSetPropertyForClient

void ___IOHIDServiceSetPropertyForClient_block_invoke(void *a1, void *a2)
{
  v6 = *(*(a1[4] + 8) + 32);
  if (v6)
  {
    IOHIDServiceFilterFilterSetPropertyForClient(a2, a1[5], &v6);
    v3 = v6;
    v4 = *(a1[4] + 8);
    v5 = *(v4 + 32);
    if (v6 != v5 && v5 != a1[7])
    {
      CFRelease(v5);
      v3 = v6;
      v4 = *(a1[4] + 8);
    }

    *(v4 + 32) = v3;
  }
}

@end
@interface CopyDebugDescription
@end

@implementation CopyDebugDescription

void __carEndpoint_CopyDebugDescription_block_invoke(void *a1)
{
  CFStringAppendFormat(*(*(a1[4] + 8) + 24), 0, @"<APEndpointCarPlay %p>\n", a1[6]);
  v2 = a1[6];
  v3 = CFGetAllocator(v2);
  carEndpoint_copyShowInfoDictionary(v2, v3, (*(a1[5] + 8) + 24));
  v6 = *(*(a1[5] + 8) + 24);
  __s = 0;
  ASPrintF(&__s, "%@", v6);
  v4 = __s;
  v5 = strlen(__s);
  if (v5 && __s[v5 - 1] == 10)
  {
    __s[v5 - 1] = 0;
    v4 = __s;
  }

  CFStringAppendFormat(*(*(a1[4] + 8) + 24), 0, @"%s", v4);
  free(__s);
}

@end
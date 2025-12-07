@interface PFUserNATLook
@end

@implementation PFUserNATLook

void __PFUserNATLook_S_block_invoke(void *a1)
{
  *(*(a1[4] + 8) + 24) = PFManagerCheckUserExists(a1[6]);
  if (*(*(a1[4] + 8) + 24))
  {
    PFManagerInfoLog("user %p xpc send -> nat rules", a1[6]);
    *(*(a1[4] + 8) + 24) = PFManagerSendMessage(a1[7], *(a1[6] + 24), *(a1[6] + 32), 1006, 0xFFFFFFFFuLL, 0);
    if (*(*(a1[4] + 8) + 24) == 1)
    {
      v2 = PFXPCGetResponse();
      value = xpc_dictionary_get_value(v2, pfXPCKeyRule);
      *(*(a1[5] + 8) + 24) = xpc_copy(value);
      v4 = PFXPCGetResponse();

      xpc_release(v4);
    }
  }

  else
  {

    PFManagerErrorLog("incorrect user");
  }
}

@end
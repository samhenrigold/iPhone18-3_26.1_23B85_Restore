@interface SCNetworkConnectionCallBack
@end

@implementation SCNetworkConnectionCallBack

void ____SCNetworkConnectionCallBack_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 72);
  v7 = *(a1 + 56);
  Status = SCNetworkConnectionGetStatus(v2);
  CFRetain(v2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ____SCNetworkConnectionCallBackPerformRunLoop_block_invoke;
  block[3] = &__block_descriptor_tmp_128;
  block[4] = v2;
  v11 = Status;
  v9 = v7;
  v10 = v5;
  CFRunLoopPerformBlock(v3, v4, block);
  CFRunLoopWakeUp(v3);
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 32));
}

@end
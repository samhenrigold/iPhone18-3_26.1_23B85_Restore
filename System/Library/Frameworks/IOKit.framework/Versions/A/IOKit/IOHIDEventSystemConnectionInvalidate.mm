@interface IOHIDEventSystemConnectionInvalidate
@end

@implementation IOHIDEventSystemConnectionInvalidate

void ___IOHIDEventSystemConnectionInvalidate_block_invoke(uint64_t a1)
{
  CFDictionaryApplyFunction(*(a1 + 32), __VirtualServicesApplier, *(a1 + 40));
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void ___IOHIDEventSystemConnectionInvalidate_block_invoke_2(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = _IOHIDEventSystemConnectionCopyServices(*(a1 + 32));
  CFSetRemoveAllValues(*(*(a1 + 32) + 80));
  os_unfair_recursive_lock_unlock();
  CFRelease(v2);
  v3 = *(a1 + 32);

  CFRelease(v3);
}

@end
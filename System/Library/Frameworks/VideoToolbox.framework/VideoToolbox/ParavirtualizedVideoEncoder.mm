@interface ParavirtualizedVideoEncoder
@end

@implementation ParavirtualizedVideoEncoder

uint64_t __ParavirtualizedVideoEncoder_CreateInstanceWithSpecification_block_invoke(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3)
{
  v8 = 0;
  MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v8, 0, 0);
  if (!MessageTypeAndFlagsAndGuestUUID)
  {
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v5)
    {
      v6 = v5;
      paravirtualizedVideoEncoder_HandleMessageFromHost(v5, v8, a2);
      CFRelease(v6);
    }
  }

  return MessageTypeAndFlagsAndGuestUUID;
}

@end
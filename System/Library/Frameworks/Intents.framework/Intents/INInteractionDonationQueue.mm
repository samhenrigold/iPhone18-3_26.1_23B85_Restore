@interface INInteractionDonationQueue
@end

@implementation INInteractionDonationQueue

uint64_t ___INInteractionDonationQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.intents.interaction.donation", 0);
  v1 = _INInteractionDonationQueue_queue;
  _INInteractionDonationQueue_queue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
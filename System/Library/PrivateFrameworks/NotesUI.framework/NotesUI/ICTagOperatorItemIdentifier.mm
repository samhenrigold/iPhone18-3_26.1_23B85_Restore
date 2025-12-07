@interface ICTagOperatorItemIdentifier
+ (ICTagOperatorItemIdentifier)sharedItemIdentifier;
@end

@implementation ICTagOperatorItemIdentifier

+ (ICTagOperatorItemIdentifier)sharedItemIdentifier
{
  if (sharedItemIdentifier_onceToken != -1)
  {
    +[ICTagOperatorItemIdentifier sharedItemIdentifier];
  }

  v3 = sharedItemIdentifier_itemIdentifier;

  return v3;
}

uint64_t __51__ICTagOperatorItemIdentifier_sharedItemIdentifier__block_invoke()
{
  v0 = objc_alloc_init(ICTagOperatorItemIdentifier);
  sharedItemIdentifier_itemIdentifier = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

@end
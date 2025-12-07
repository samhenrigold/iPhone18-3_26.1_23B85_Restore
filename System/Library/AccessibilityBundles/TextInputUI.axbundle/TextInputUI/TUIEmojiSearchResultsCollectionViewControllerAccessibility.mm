@interface TUIEmojiSearchResultsCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setDisplayedEmojis:(id)emojis verbatimSkinTones:(BOOL)tones animated:(BOOL)animated;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TUIEmojiSearchResultsCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TUIEmojiSearchResultsCollectionViewController" hasInstanceMethod:@"setDisplayedEmojis:verbatimSkinTones:animated:" withFullSignature:{"v", "@", "B", "B", 0}];
  [validationsCopy validateClass:@"TUIEmojiSearchResultsCollectionViewController" isKindOfClass:@"UIViewController"];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = TUIEmojiSearchResultsCollectionViewControllerAccessibility;
  [(TUIEmojiSearchResultsCollectionViewControllerAccessibility *)&v5 viewWillDisappear:disappear];
  v4 = [(TUIEmojiSearchResultsCollectionViewControllerAccessibility *)self _accessibilityValueForKey:@"AXTimer"];
  [v4 cancel];
}

- (void)setDisplayedEmojis:(id)emojis verbatimSkinTones:(BOOL)tones animated:(BOOL)animated
{
  animatedCopy = animated;
  tonesCopy = tones;
  emojisCopy = emojis;
  v14.receiver = self;
  v14.super_class = TUIEmojiSearchResultsCollectionViewControllerAccessibility;
  [(TUIEmojiSearchResultsCollectionViewControllerAccessibility *)&v14 setDisplayedEmojis:emojisCopy verbatimSkinTones:tonesCopy animated:animatedCopy];
  v9 = [(TUIEmojiSearchResultsCollectionViewControllerAccessibility *)self _accessibilityValueForKey:@"AXTimer"];
  if (!v9)
  {
    v10 = objc_alloc(MEMORY[0x29EDBD6A0]);
    v9 = [v10 initWithTargetSerialQueue:MEMORY[0x29EDCA578]];
    [v9 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    [(TUIEmojiSearchResultsCollectionViewControllerAccessibility *)self _accessibilitySetRetainedValue:v9 forKey:@"AXTimer"];
  }

  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __108__TUIEmojiSearchResultsCollectionViewControllerAccessibility_setDisplayedEmojis_verbatimSkinTones_animated___block_invoke;
  v12[3] = &unk_29F30A058;
  v13 = emojisCopy;
  v11 = emojisCopy;
  [v9 afterDelay:v12 processBlock:0.5];
}

void __108__TUIEmojiSearchResultsCollectionViewControllerAccessibility_setDisplayedEmojis_verbatimSkinTones_animated___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"emojis.found");
  v3 = [v2 localizedStringWithFormat:v4, objc_msgSend(*(a1 + 32), "count")];
  UIAccessibilitySpeakOrQueueIfNeeded();
}

@end
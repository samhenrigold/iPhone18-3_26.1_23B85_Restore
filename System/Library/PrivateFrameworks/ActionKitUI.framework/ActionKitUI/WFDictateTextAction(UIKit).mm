@interface WFDictateTextAction(UIKit)
- (id)keyCommands;
@end

@implementation WFDictateTextAction(UIKit)

- (id)keyCommands
{
  v12[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, val);
  v1 = MEMORY[0x277D7D2B0];
  v2 = WFLocalizedString(@"Finish Dictation");
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __41__WFDictateTextAction_UIKit__keyCommands__block_invoke;
  v9 = &unk_278C36650;
  objc_copyWeak(&v10, &location);
  v3 = [v1 commandWithTitle:v2 input:@"\r" modifierFlags:0x100000 block:&v6];
  v12[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:{1, v6, v7, v8, v9}];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v4;
}

@end
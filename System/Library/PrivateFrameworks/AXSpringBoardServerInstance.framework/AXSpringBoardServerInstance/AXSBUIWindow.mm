@interface AXSBUIWindow
- (void)_setRotatableViewOrientation:(int64_t)orientation duration:(double)duration force:(BOOL)force;
@end

@implementation AXSBUIWindow

- (void)_setRotatableViewOrientation:(int64_t)orientation duration:(double)duration force:(BOOL)force
{
  v16[2] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = AXSBUIWindow;
  [(AXSBUIWindow *)&v14 _setRotatableViewOrientation:orientation duration:force force:?];
  objc_opt_class();
  v6 = __UIAccessibilityCastAsClass();
  if (([v6 isHidden] & 1) == 0)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v8 = [mEMORY[0x277D75128] safeValueForKey:@"_frontMostAppOrientation"];
    integerValue = [v8 integerValue];

    v15[0] = *MEMORY[0x277CE7C88];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
    v16[0] = v10;
    v15[1] = *MEMORY[0x277CE7C90];
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
    v16[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

    v13 = +[_AXSpringBoardServerInstance springBoardServerInstance];
    [v13 springBoardActionOccurred:4 withPayload:v12];
  }
}

@end
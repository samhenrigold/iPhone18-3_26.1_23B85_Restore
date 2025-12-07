@interface TIKeyboardFeatureSpecialization_nl
- (void)createInputManager:(id)manager;
@end

@implementation TIKeyboardFeatureSpecialization_nl

- (void)createInputManager:(id)manager
{
  v6.receiver = self;
  v6.super_class = TIKeyboardFeatureSpecialization_nl;
  [(TIKeyboardQuickTypeSpecialization *)&v6 createInputManager:manager];
  inputMode = [(TIKeyboardFeatureSpecialization *)self inputMode];
  [inputMode locale];
  objc_claimAutoreleasedReturnValue();

  KB::InputManagerSpecialization_nl::create();
}

@end
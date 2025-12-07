@interface TIKeyboardFeatureSpecialization_es
- (void)createInputManager:(id)manager;
@end

@implementation TIKeyboardFeatureSpecialization_es

- (void)createInputManager:(id)manager
{
  v6.receiver = self;
  v6.super_class = TIKeyboardFeatureSpecialization_es;
  [(TIKeyboardQuickTypeSpecialization *)&v6 createInputManager:manager];
  inputMode = [(TIKeyboardFeatureSpecialization *)self inputMode];
  [inputMode locale];
  objc_claimAutoreleasedReturnValue();

  KB::InputManagerSpecialization_es::create();
}

@end
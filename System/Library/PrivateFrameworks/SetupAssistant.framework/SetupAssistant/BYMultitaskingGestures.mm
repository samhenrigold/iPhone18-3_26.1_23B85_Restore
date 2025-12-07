@interface BYMultitaskingGestures
- (BOOL)multitaskingWasCompleted;
- (BOOL)multitaskingWasTurnedOff;
- (BYMultitaskingGestures)init;
- (BYMultitaskingGestures)initWithPreferencesController:(id)controller;
- (void)setMultitaskingWasTurnedOff:(BOOL)off;
@end

@implementation BYMultitaskingGestures

- (BYMultitaskingGestures)init
{
  v3 = +[BYPreferencesController buddyPreferencesExcludedFromBackup];
  v4 = [(BYMultitaskingGestures *)self initWithPreferencesController:v3];

  return v4;
}

- (BYMultitaskingGestures)initWithPreferencesController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = BYMultitaskingGestures;
  v6 = [(BYMultitaskingGestures *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preferencesController, controller);
  }

  return v7;
}

- (BOOL)multitaskingWasCompleted
{
  preferencesController = [(BYMultitaskingGestures *)self preferencesController];
  v3 = [preferencesController BOOLForKey:@"MultitaskingWasCompleted"];

  return v3;
}

- (BOOL)multitaskingWasTurnedOff
{
  preferencesController = [(BYMultitaskingGestures *)self preferencesController];
  v3 = [preferencesController BOOLForKey:@"MultitaskingWasTurnedOff"];

  return v3;
}

- (void)setMultitaskingWasTurnedOff:(BOOL)off
{
  offCopy = off;
  preferencesController = [(BYMultitaskingGestures *)self preferencesController];
  [preferencesController setObject:MEMORY[0x1E695E118] forKey:@"MultitaskingWasCompleted"];

  preferencesController2 = [(BYMultitaskingGestures *)self preferencesController];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:offCopy];
  [preferencesController2 setObject:v6 forKey:@"MultitaskingWasTurnedOff"];
}

@end
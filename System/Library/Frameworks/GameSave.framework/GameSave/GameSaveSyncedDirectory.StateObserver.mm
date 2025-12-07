@interface GameSaveSyncedDirectory.StateObserver
- (void)cancel;
- (void)resolveCurrentVersion;
- (void)retryIfSignedIn;
@end

@implementation GameSaveSyncedDirectory.StateObserver

- (void)resolveCurrentVersion
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v2)
  {

    GameSaveSyncedDirectory.resolveConflicts(with:)(v2);
  }
}

- (void)cancel
{

  GameSaveSyncedDirectory.StateObserver.cancel()();
}

- (void)retryIfSignedIn
{
  v2 = objc_opt_self();

  standardUserDefaults = [v2 standardUserDefaults];
  v4 = MEMORY[0x23EE6B6E0](0xD000000000000041, 0x800000023898BDF0);
  [standardUserDefaults setBool:1 forKey:v4];

  GameSaveSyncedDirectory.retryIfSignedIn(retryBlock:)(destructiveProjectEnumData for GameSaveFF, 0);
}

@end
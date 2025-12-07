@interface SHUDPairedUnlockJindoViewController
- (SHUDPairedUnlockJindoViewController)initWithWatchName:(id)name withLockButton:(BOOL)button withUpdate:(BOOL)update;
- (id)subtitle;
@end

@implementation SHUDPairedUnlockJindoViewController

- (SHUDPairedUnlockJindoViewController)initWithWatchName:(id)name withLockButton:(BOOL)button withUpdate:(BOOL)update
{
  buttonCopy = button;
  v12.receiver = self;
  v12.super_class = SHUDPairedUnlockJindoViewController;
  nameCopy = name;
  v8 = [(SHUDJindoViewController *)&v12 initWithNeedsButton:buttonCopy];
  v9 = [nameCopy copy];

  watchName = v8->_watchName;
  v8->_watchName = v9;

  v8->_needsUpdate = update;
  return v8;
}

- (id)subtitle
{
  needsUpdate = [(SHUDPairedUnlockJindoViewController *)self needsUpdate];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (needsUpdate)
  {
    v5 = @"UNLOCKING_JINDO";
  }

  else
  {
    v5 = @"UNLOCKED_JINDO";
  }

  v6 = [v3 localizedStringForKey:v5 value:0 table:@"Localization-D73"];

  return v6;
}

@end
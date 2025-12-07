@interface MIUIDisplayConfiguration
+ (id)lockScreenConfiguration;
+ (id)standardConfiguration;
- (MIUIDisplayConfiguration)init;
- (MIUIDisplayConfiguration)initWithEntryPoint:(int64_t)point isEditingAvailable:(BOOL)available isDeletionAvailable:(BOOL)deletionAvailable shouldShowDonateLifeRegistrationIfAvailable:(BOOL)ifAvailable isShowWhenLockedVisible:(BOOL)visible isShareDuringEmergencyCallVisible:(BOOL)callVisible accessPoint:(int64_t)accessPoint;
@end

@implementation MIUIDisplayConfiguration

+ (id)lockScreenConfiguration
{
  v2 = objc_alloc_init(MIUIDisplayConfiguration);
  [(MIUIDisplayConfiguration *)v2 setIsLockScreen:1];
  [(MIUIDisplayConfiguration *)v2 setIsEditingAvailable:0];
  [(MIUIDisplayConfiguration *)v2 setIsShowWhenLockedVisible:0];
  [(MIUIDisplayConfiguration *)v2 setIsShareDuringEmergencyCallVisible:0];
  [(MIUIDisplayConfiguration *)v2 setAccessPoint:0];

  return v2;
}

+ (id)standardConfiguration
{
  v2 = objc_alloc_init(MIUIDisplayConfiguration);

  return v2;
}

- (MIUIDisplayConfiguration)initWithEntryPoint:(int64_t)point isEditingAvailable:(BOOL)available isDeletionAvailable:(BOOL)deletionAvailable shouldShowDonateLifeRegistrationIfAvailable:(BOOL)ifAvailable isShowWhenLockedVisible:(BOOL)visible isShareDuringEmergencyCallVisible:(BOOL)callVisible accessPoint:(int64_t)accessPoint
{
  callVisibleCopy = callVisible;
  visibleCopy = visible;
  ifAvailableCopy = ifAvailable;
  deletionAvailableCopy = deletionAvailable;
  availableCopy = available;
  v18.receiver = self;
  v18.super_class = MIUIDisplayConfiguration;
  v15 = [(MIUIDisplayConfiguration *)&v18 init];
  v16 = v15;
  if (v15)
  {
    [(MIUIDisplayConfiguration *)v15 setEntryPoint:point];
    [(MIUIDisplayConfiguration *)v16 setIsEditingAvailable:availableCopy];
    [(MIUIDisplayConfiguration *)v16 setIsDeletionAvailable:deletionAvailableCopy];
    [(MIUIDisplayConfiguration *)v16 setShouldShowDonateLifeRegistrationIfAvailable:ifAvailableCopy];
    [(MIUIDisplayConfiguration *)v16 setIsShowWhenLockedVisible:visibleCopy];
    [(MIUIDisplayConfiguration *)v16 setIsShareDuringEmergencyCallVisible:callVisibleCopy];
    [(MIUIDisplayConfiguration *)v16 setAccessPoint:accessPoint];
  }

  return v16;
}

- (MIUIDisplayConfiguration)init
{
  v5.receiver = self;
  v5.super_class = MIUIDisplayConfiguration;
  v2 = [(MIUIDisplayConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MIUIDisplayConfiguration *)v2 setEntryPoint:0];
    [(MIUIDisplayConfiguration *)v3 setIsEditingAvailable:1];
    [(MIUIDisplayConfiguration *)v3 setIsDeletionAvailable:0];
    [(MIUIDisplayConfiguration *)v3 setShouldShowDonateLifeRegistrationIfAvailable:0];
    [(MIUIDisplayConfiguration *)v3 setIsShowWhenLockedVisible:1];
    [(MIUIDisplayConfiguration *)v3 setIsShareDuringEmergencyCallVisible:1];
    [(MIUIDisplayConfiguration *)v3 setAccessPoint:0];
    [(MIUIDisplayConfiguration *)v3 setIsHomeIndicatorHidden:0];
    [(MIUIDisplayConfiguration *)v3 setSuggestHealthData:0];
    [(MIUIDisplayConfiguration *)v3 setShouldSaveDataToHealthDetails:0];
    [(MIUIDisplayConfiguration *)v3 setIsLockScreen:0];
    [(MIUIDisplayConfiguration *)v3 setIsHostingView:0];
    [(MIUIDisplayConfiguration *)v3 setShouldShowDoneButton:0];
  }

  return v3;
}

@end
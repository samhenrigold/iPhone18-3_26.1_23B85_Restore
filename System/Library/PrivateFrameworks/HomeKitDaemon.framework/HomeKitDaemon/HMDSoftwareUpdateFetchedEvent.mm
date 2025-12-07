@interface HMDSoftwareUpdateFetchedEvent
+ (id)eventWasUserInitiated:(BOOL)initiated wasNewUpdateFetched:(BOOL)fetched;
@end

@implementation HMDSoftwareUpdateFetchedEvent

+ (id)eventWasUserInitiated:(BOOL)initiated wasNewUpdateFetched:(BOOL)fetched
{
  fetchedCopy = fetched;
  initiatedCopy = initiated;
  v6 = objc_alloc_init(HMDSoftwareUpdateFetchedEvent);
  [(HMDSoftwareUpdateFetchedEvent *)v6 setUserInitiated:initiatedCopy];
  [(HMDSoftwareUpdateFetchedEvent *)v6 setNewUpdateFetched:fetchedCopy];

  return v6;
}

@end
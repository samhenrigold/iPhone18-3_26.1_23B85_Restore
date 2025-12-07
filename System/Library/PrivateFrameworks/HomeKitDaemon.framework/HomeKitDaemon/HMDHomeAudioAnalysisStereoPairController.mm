@interface HMDHomeAudioAnalysisStereoPairController
- (HMDHomeAudioAnalysisStereoPairController)init;
- (void)compareOrUpdateRecentAudioAnalysisStereoPairEvent:(id)event key:(id)key accessory:(id)accessory notificationUUID:(id)d window:(unint64_t)window completion:(id)completion;
- (void)updateAudioAnalysisStereoPairDetectedEvent:(id)event key:(id)key accessory:(id)accessory notificationUUID:(id)d completion:(id)completion;
@end

@implementation HMDHomeAudioAnalysisStereoPairController

- (void)updateAudioAnalysisStereoPairDetectedEvent:(id)event key:(id)key accessory:(id)accessory notificationUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  accessoryCopy = accessory;
  keyCopy = key;
  eventCopy = event;
  v17 = [[HMAudioAnalysisStereoPairDetectedEvent alloc] initWithEventBulletin:eventCopy accessory:accessoryCopy notificationUUID:dCopy];

  [(NSMutableDictionary *)self->_audioAnalysisStereoPairDetectedEventsMap setObject:v17 forKeyedSubscript:keyCopy];
  completionCopy[2](completionCopy, 1, accessoryCopy, dCopy);
}

- (void)compareOrUpdateRecentAudioAnalysisStereoPairEvent:(id)event key:(id)key accessory:(id)accessory notificationUUID:(id)d window:(unint64_t)window completion:(id)completion
{
  v69 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  keyCopy = key;
  accessoryCopy = accessory;
  dCopy = d;
  completionCopy = completion;
  os_unfair_lock_lock_with_options();
  audioAnalysisStereoPairDetectedEventsMap = self->_audioAnalysisStereoPairDetectedEventsMap;
  if (!audioAnalysisStereoPairDetectedEventsMap)
  {
    v18 = objc_opt_new();
    v19 = self->_audioAnalysisStereoPairDetectedEventsMap;
    self->_audioAnalysisStereoPairDetectedEventsMap = v18;

    audioAnalysisStereoPairDetectedEventsMap = self->_audioAnalysisStereoPairDetectedEventsMap;
  }

  v20 = [(NSMutableDictionary *)audioAnalysisStereoPairDetectedEventsMap objectForKeyedSubscript:keyCopy];
  if (v20)
  {
    state = [eventCopy state];
    event = [v20 event];
    state2 = [event state];

    if (state == state2)
    {
      accessoryIdentifier = [eventCopy accessoryIdentifier];
      event2 = [v20 event];
      accessoryIdentifier2 = [event2 accessoryIdentifier];
      v27 = [accessoryIdentifier isEqual:accessoryIdentifier2];

      if (v27)
      {
        v28 = objc_autoreleasePoolPush();
        selfCopy = self;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543874;
          v62 = v31;
          v63 = 2112;
          v64 = keyCopy;
          v65 = 2112;
          v66 = eventCopy;
          _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Adding:%@ event:%@, sequential event from accessory", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v28);
        accessory = [v20 accessory];
        notificationUUID = [v20 notificationUUID];
        [(HMDHomeAudioAnalysisStereoPairController *)selfCopy updateAudioAnalysisStereoPairDetectedEvent:eventCopy key:keyCopy accessory:accessory notificationUUID:notificationUUID completion:completionCopy];
      }

      else
      {
        dateOfOccurrence = [eventCopy dateOfOccurrence];
        event3 = [v20 event];
        dateOfOccurrence2 = [event3 dateOfOccurrence];
        [dateOfOccurrence timeIntervalSinceDate:dateOfOccurrence2];
        v47 = v46;

        if (v47 < 0.0)
        {
          v47 = -v47;
        }

        v48 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v50 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          v58 = v48;
          v51 = HMFGetLogIdentifier();
          v52 = [MEMORY[0x277CCABB0] numberWithDouble:v47];
          *buf = 138543874;
          v62 = v51;
          v63 = 2112;
          v64 = v52;
          v65 = 2112;
          v66 = keyCopy;
          _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_DEBUG, "%{public}@latency:%@ key:%@", buf, 0x20u);

          v48 = v58;
        }

        objc_autoreleasePoolPop(v48);
        if (v47 < window)
        {
          (*(completionCopy + 2))(completionCopy, 0, 0, 0);
          goto LABEL_16;
        }

        v53 = objc_autoreleasePoolPush();
        v54 = selfCopy2;
        v55 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v56 = HMFGetLogIdentifier();
          v57 = [MEMORY[0x277CCABB0] numberWithDouble:v47];
          *buf = 138544130;
          v62 = v56;
          v63 = 2112;
          v64 = keyCopy;
          v65 = 2112;
          v66 = eventCopy;
          v67 = 2112;
          v68 = v57;
          _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_INFO, "%{public}@Adding:%@ event:%@, latency:%@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v53);
        accessory = [v20 accessory];
        notificationUUID = [v20 notificationUUID];
        [(HMDHomeAudioAnalysisStereoPairController *)v54 updateAudioAnalysisStereoPairDetectedEvent:eventCopy key:keyCopy accessory:accessory notificationUUID:notificationUUID completion:completionCopy];
      }
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = HMFGetLogIdentifier();
        v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "state")}];
        *buf = 138544130;
        v62 = v41;
        v63 = 2112;
        v64 = keyCopy;
        v65 = 2112;
        v66 = eventCopy;
        v67 = 2112;
        v68 = v42;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Adding:%@ event:%@, new state:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v38);
      accessory = [v20 accessory];
      notificationUUID = [v20 notificationUUID];
      [(HMDHomeAudioAnalysisStereoPairController *)selfCopy3 updateAudioAnalysisStereoPairDetectedEvent:eventCopy key:keyCopy accessory:accessory notificationUUID:notificationUUID completion:completionCopy];
    }
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543874;
      v62 = v37;
      v63 = 2112;
      v64 = keyCopy;
      v65 = 2112;
      v66 = eventCopy;
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Adding:%@ event:%@, first known event", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v34);
    [(HMDHomeAudioAnalysisStereoPairController *)selfCopy4 updateAudioAnalysisStereoPairDetectedEvent:eventCopy key:keyCopy accessory:accessoryCopy notificationUUID:dCopy completion:completionCopy];
  }

LABEL_16:

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDHomeAudioAnalysisStereoPairController)init
{
  v3.receiver = self;
  v3.super_class = HMDHomeAudioAnalysisStereoPairController;
  result = [(HMDHomeAudioAnalysisStereoPairController *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end
@interface MSSetupCompleteEvent
- (MSSetupCompleteEvent)init;
- (id)encoded;
- (void)addHome:(id)home;
@end

@implementation MSSetupCompleteEvent

- (MSSetupCompleteEvent)init
{
  v6.receiver = self;
  v6.super_class = MSSetupCompleteEvent;
  v2 = [(MSBaseSetupEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MSBaseSetupEvent *)v2 setEventName:@"com.apple.cloudmediaservices.setupcompleted"];
    v4 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    [(MSSetupCompleteEvent *)v3 setStartTime:v4];

    [(MSSetupCompleteEvent *)v3 setNumberOfHomeAdded:0];
    [(MSSetupCompleteEvent *)v3 setNumberOfHomesWithVR:0];
    [(MSSetupCompleteEvent *)v3 setDidSwitchAccount:0];
  }

  return v3;
}

- (void)addHome:(id)home
{
  homeCopy = home;
  [(MSSetupCompleteEvent *)self setNumberOfHomeAdded:[(MSSetupCompleteEvent *)self numberOfHomeAdded]+ 1];
  v5 = MEMORY[0x277CCABB0];
  currentUser = [homeCopy currentUser];
  v6 = [currentUser ms_voiceRecognitionEnabledInHome:homeCopy];

  v7 = [v5 numberWithBool:v6];
  -[MSSetupCompleteEvent setNumberOfHomesWithVR:](self, "setNumberOfHomesWithVR:", -[MSSetupCompleteEvent numberOfHomesWithVR](self, "numberOfHomesWithVR") + [v7 intValue]);
}

- (id)encoded
{
  v12[5] = *MEMORY[0x277D85DE8];
  [(NSDate *)self->_endTime timeIntervalSinceDate:self->_startTime];
  *&v3 = v3;
  v11[0] = @"duration";
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  serviceID = self->_serviceID;
  v12[0] = v4;
  v12[1] = serviceID;
  v11[1] = @"service";
  v11[2] = @"numberOfHomesAdded";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfHomeAdded];
  v12[2] = v6;
  v11[3] = @"numberOfHomesWithVR";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfHomesWithVR];
  v12[3] = v7;
  v11[4] = @"didSwitchAccount";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_didSwitchAccount];
  v12[4] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  return v9;
}

@end
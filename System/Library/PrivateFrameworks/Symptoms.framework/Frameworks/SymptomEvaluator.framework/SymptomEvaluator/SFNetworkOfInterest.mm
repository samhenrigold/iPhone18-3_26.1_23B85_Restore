@interface SFNetworkOfInterest
- (BOOL)_newDistroSlot;
- (SFNetworkOfInterest)initWithSpec:(unsigned __int8)spec isAny:(BOOL)any isBuiltin:(BOOL)builtin scopedToLOI:(int64_t)i flags:(int64_t)flags hasCustomSignature:(id)signature;
- (id)dayOfWeekGrouping;
- (id)hasForegroundActivity;
- (id)instantQuality;
- (id)interfaceTimeline;
- (id)invitesHourlyDistribution;
- (id)predictions;
- (id)predictionsError;
- (id)trainingProgress;
- (id)valueForUndefinedKey:(id)key;
- (void)anchorPowerCostToLinkQuality;
- (void)setConsiderAlternate:(int64_t)alternate;
- (void)setConsiderAlternateUpdate:(id)update;
- (void)setDiscretionaryTrafficInvited:(BOOL)invited;
- (void)setInterfaceClass:(int64_t)class;
- (void)setIsTrafficEligible:(BOOL)eligible;
- (void)setLinkQuality:(int64_t)quality;
- (void)setPowerCostDL:(int64_t)l;
- (void)setPowerCostUL:(int64_t)l;
- (void)setPredictions:(id)predictions;
- (void)setPredictionsGeneratedAt:(id)at;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)setWillGetDiscretionaryTrafficInvites:(BOOL)invites;
@end

@implementation SFNetworkOfInterest

- (SFNetworkOfInterest)initWithSpec:(unsigned __int8)spec isAny:(BOOL)any isBuiltin:(BOOL)builtin scopedToLOI:(int64_t)i flags:(int64_t)flags hasCustomSignature:(id)signature
{
  v14.receiver = self;
  v14.super_class = SFNetworkOfInterest;
  v8 = [(NWNetworkOfInterest *)&v14 initWithSpec:spec isAny:any isBuiltin:builtin scopedToLOI:i flags:flags hasCustomSignature:signature];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:24];
    allInvitesHourly = v8->allInvitesHourly;
    v8->allInvitesHourly = v9;

    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:24];
    bgInvitesHourly = v8->bgInvitesHourly;
    v8->bgInvitesHourly = v11;

    v8->lastHour = -1;
  }

  return v8;
}

- (void)setIsTrafficEligible:(BOOL)eligible
{
  v3 = *MEMORY[0x277D6B478];
  if (*(&self->super.super.isa + v3) != eligible)
  {
    [(SFNetworkOfInterest *)self willChangeValueForKey:@"isTrafficEligible"];
    *(&self->super.super.isa + v3) = eligible;

    [(SFNetworkOfInterest *)self didChangeValueForKey:@"isTrafficEligible"];
  }
}

- (void)setWillGetDiscretionaryTrafficInvites:(BOOL)invites
{
  v3 = *MEMORY[0x277D6B4B0];
  if (*(&self->super.super.isa + v3) != invites)
  {
    [(SFNetworkOfInterest *)self willChangeValueForKey:@"willGetDiscretionaryTrafficInvites"];
    *(&self->super.super.isa + v3) = invites;

    [(SFNetworkOfInterest *)self didChangeValueForKey:@"willGetDiscretionaryTrafficInvites"];
  }
}

- (BOOL)_newDistroSlot
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v9 = v4;
  tm_hour = gmtime(&v9)->tm_hour;
  lastHour = self->lastHour;
  if (lastHour != tm_hour)
  {
    self->lastHour = tm_hour;
  }

  v7 = lastHour != tm_hour;

  return v7;
}

- (void)setDiscretionaryTrafficInvited:(BOOL)invited
{
  v3 = *MEMORY[0x277D6B438];
  if (*(&self->super.super.isa + v3) != invited)
  {
    invitedCopy = invited;
    hasForegroundActivity = [(SFNetworkOfInterest *)self hasForegroundActivity];
    bOOLValue = [hasForegroundActivity BOOLValue];

    if (!invitedCopy)
    {
      goto LABEL_13;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__SFNetworkOfInterest_setDiscretionaryTrafficInvited___block_invoke;
    block[3] = &unk_27898A0C8;
    block[4] = self;
    if (setDiscretionaryTrafficInvited__onceToken != -1)
    {
      dispatch_once(&setDiscretionaryTrafficInvited__onceToken, block);
    }

    _newDistroSlot = [(SFNetworkOfInterest *)self _newDistroSlot];
    allInvitesHourly = self->allInvitesHourly;
    if (_newDistroSlot)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
      [(NSMutableArray *)allInvitesHourly insertObject:v10 atIndex:0];

      if ([(NSMutableArray *)self->allInvitesHourly count]>= 0x19)
      {
        [(NSMutableArray *)self->allInvitesHourly removeLastObject];
      }

      bgInvitesHourly = self->bgInvitesHourly;
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:bOOLValue ^ 1u];
      [(NSMutableArray *)bgInvitesHourly insertObject:v12 atIndex:0];

      if ([(NSMutableArray *)self->bgInvitesHourly count]>= 0x19)
      {
        [(NSMutableArray *)self->bgInvitesHourly removeLastObject];
      }
    }

    else
    {
      v13 = [(NSMutableArray *)self->allInvitesHourly objectAtIndexedSubscript:0];
      unsignedIntegerValue = [v13 unsignedIntegerValue];

      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
      [(NSMutableArray *)self->allInvitesHourly setObject:v15 atIndexedSubscript:0];

      if ((bOOLValue & 1) == 0)
      {
        v16 = [(NSMutableArray *)self->bgInvitesHourly objectAtIndexedSubscript:0];
        unsignedIntegerValue2 = [v16 unsignedIntegerValue];

        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2 + 1];
        [(NSMutableArray *)self->bgInvitesHourly setObject:v18 atIndexedSubscript:0];
      }
    }

    if ((((*(&self->super.super.isa + *MEMORY[0x277D6B440]) & 1) == 0) & bOOLValue) == 0)
    {
LABEL_13:
      [(SFNetworkOfInterest *)self willChangeValueForKey:@"discretionaryTrafficInvited"];
      *(&self->super.super.isa + v3) = invitedCopy;
      [(SFNetworkOfInterest *)self didChangeValueForKey:@"discretionaryTrafficInvited"];
    }
  }
}

void __54__SFNetworkOfInterest_setDiscretionaryTrafficInvited___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 152))
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:24];
    v4 = *(a1 + 32);
    v5 = *(v4 + 152);
    *(v4 + 152) = v3;

    v2 = *(a1 + 32);
  }

  if (!*(v2 + 160))
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:24];
    v7 = *(a1 + 32);
    v8 = *(v7 + 160);
    *(v7 + 160) = v6;

    MEMORY[0x2821F96F8](v6, v8);
  }
}

- (void)setInterfaceClass:(int64_t)class
{
  v3 = *MEMORY[0x277D6B458];
  if (*(&self->super.super.isa + v3) != class)
  {
    [(SFNetworkOfInterest *)self willChangeValueForKey:@"interfaceClass"];
    *(&self->super.super.isa + v3) = class;

    [(SFNetworkOfInterest *)self didChangeValueForKey:@"interfaceClass"];
  }
}

- (void)setConsiderAlternate:(int64_t)alternate
{
  v3 = *MEMORY[0x277D6B420];
  if (*(&self->super.super.isa + v3) != alternate)
  {
    [(SFNetworkOfInterest *)self willChangeValueForKey:@"considerAlternate"];
    *(&self->super.super.isa + v3) = alternate;

    [(SFNetworkOfInterest *)self didChangeValueForKey:@"considerAlternate"];
  }
}

- (void)setConsiderAlternateUpdate:(id)update
{
  updateCopy = update;
  v6 = *MEMORY[0x277D6B428];
  if (*(&self->super.super.isa + v6) != updateCopy)
  {
    v8 = updateCopy;
    [(SFNetworkOfInterest *)self willChangeValueForKey:@"considerAlternateUpdate"];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong((&self->super.super.isa + v6), update);
    objc_sync_exit(selfCopy);

    [(SFNetworkOfInterest *)selfCopy didChangeValueForKey:@"considerAlternateUpdate"];
    updateCopy = v8;
  }
}

- (void)setLinkQuality:(int64_t)quality
{
  v3 = *MEMORY[0x277D6B480];
  if (*(&self->super.super.isa + v3) != quality)
  {
    [(SFNetworkOfInterest *)self willChangeValueForKey:@"linkQuality"];
    *(&self->super.super.isa + v3) = quality;

    [(SFNetworkOfInterest *)self didChangeValueForKey:@"linkQuality"];
  }
}

- (void)setPowerCostDL:(int64_t)l
{
  v3 = *MEMORY[0x277D6B488];
  if (*(&self->super.super.isa + v3) != l)
  {
    [(SFNetworkOfInterest *)self willChangeValueForKey:@"powerCostDL"];
    *(&self->super.super.isa + v3) = l;

    [(SFNetworkOfInterest *)self didChangeValueForKey:@"powerCostDL"];
  }
}

- (void)setPowerCostUL:(int64_t)l
{
  v3 = *MEMORY[0x277D6B490];
  if (*(&self->super.super.isa + v3) != l)
  {
    [(SFNetworkOfInterest *)self willChangeValueForKey:@"powerCostUL"];
    *(&self->super.super.isa + v3) = l;

    [(SFNetworkOfInterest *)self didChangeValueForKey:@"powerCostUL"];
  }
}

- (void)setPredictionsGeneratedAt:(id)at
{
  atCopy = at;
  if (*(&self->super.super.isa + *MEMORY[0x277D6B460]) == 1)
  {
    if (!atCopy)
    {
      atCopy = +[NetworkAnalyticsModel modelGeneratedAt];
    }

    v5 = *MEMORY[0x277D6B4A0];
    if (atCopy != *(&self->super.super.isa + v5))
    {
      obj = atCopy;
      [(SFNetworkOfInterest *)self willChangeValueForKey:@"predictionsGeneratedAt"];
      selfCopy = self;
      objc_sync_enter(selfCopy);
      objc_storeStrong((&self->super.super.isa + v5), obj);
      v7 = *MEMORY[0x277D6B498];
      v8 = *(&selfCopy->super.super.isa + v7);
      *(&selfCopy->super.super.isa + v7) = 0;

      objc_sync_exit(selfCopy);
      [(SFNetworkOfInterest *)selfCopy didChangeValueForKey:@"predictionsGeneratedAt"];
      atCopy = obj;
    }
  }
}

- (id)predictions
{
  v135 = *MEMORY[0x277D85DE8];
  if (*(&self->super.super.isa + *MEMORY[0x277D6B470]))
  {
    v2 = 0;
    goto LABEL_87;
  }

  selfCopy = self;
  v4 = *MEMORY[0x277D6B498];
  if (*(&self->super.super.isa + v4))
  {
    v5 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v128 = selfCopy;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "%p (cached predictions)", buf, 0xCu);
    }

LABEL_86:
    v2 = *(&selfCopy->super.super.isa + v4);
    goto LABEL_87;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = *(&selfCopy->super.super.isa + *MEMORY[0x277D6B450]);
  v8 = *(&selfCopy->super.super.isa + *MEMORY[0x277D6B460]);
  v9 = *(&selfCopy->super.super.isa + *MEMORY[0x277D6B468]);
  v10 = *(&selfCopy->super.super.isa + *MEMORY[0x277D6B4A8]);
  v11 = *(&selfCopy->super.super.isa + *MEMORY[0x277D6B430]);
  v124 = 0;
  v2 = [NetworkAnalyticsModel fetchPredictionsForInterfaceType:v7 isAny:v8 isBuiltin:v9 scopedToLOI:v10 hasCustomSignature:v11 error:&v124];
  v12 = v124;
  if (v12)
  {
    v13 = v12;
    code = [v12 code];
    v15 = noiLogHandle;
    if (code == 22)
    {
      if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        v128 = selfCopy;
        v129 = 2112;
        v130 = v13;
        v16 = v15;
        v17 = OS_LOG_TYPE_INFO;
LABEL_44:
        _os_log_impl(&dword_23255B000, v16, v17, "%p prediction resulted in err %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v128 = selfCopy;
      v129 = 2112;
      v130 = v13;
      v16 = v15;
      v17 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_44;
    }

    objc_autoreleasePoolPop(v6);
    goto LABEL_87;
  }

  obj = objc_alloc_init(MEMORY[0x277CBEB18]);
  date = [MEMORY[0x277CBEAA8] date];
  autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
  date2 = [MEMORY[0x277CBEAA8] date];
  v21 = [autoupdatingCurrentCalendar dateBySettingHour:0 minute:0 second:0 ofDate:date2 options:0];

  v106 = autoupdatingCurrentCalendar;
  v22 = [autoupdatingCurrentCalendar components:512 fromDate:v21];
  [v22 setDay:{1 - objc_msgSend(v22, "weekday")}];
  [v22 setWeekday:0];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v104 = v22;
  v105 = v21;
  v24 = [currentCalendar dateByAddingComponents:v22 toDate:v21 options:0];

  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v112 = v24;
  v26 = [localTimeZone secondsFromGMTForDate:v24];
  v107 = date;
  v27 = [localTimeZone secondsFromGMTForDate:date];
  v28 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v128 = selfCopy;
    v129 = 2112;
    v130 = v24;
    v131 = 2112;
    v132 = v2;
    _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEFAULT, "%p prediction ref time: %@, raw content: %@", buf, 0x20u);
  }

  v110 = 60 * +[NetworkAnalyticsModel modelResolution];
  v103 = localTimeZone;
  if (v110)
  {
    v102 = v4;
    v29 = v107;
    [v107 timeIntervalSinceDate:v24];
    v31 = v30;
    v32 = [v2 count];
    if (v2 && (v33 = v32) != 0)
    {
      v101 = v6;
      v109 = v27 - v26;
      v34 = 0x93A80 / v110;
      v115 = ((v31 + (v27 - v26)) / v110);
      v114 = (86400.0 / v110);
      v99 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v2 copyItems:1];
      v100 = v2;
      v35 = [v2 arrayByAddingObjectsFromArray:?];
      v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (2 * v33)
      {
        v37 = 0;
        do
        {
          v38 = [v35 objectAtIndex:v37];
          v39 = v38;
          if (v33 <= v37)
          {
            [v38 adjustOffsetTo:{objc_msgSend(v38, "offset") + v34}];
          }

          [v39 confidence];
          if (v40 > 0.5)
          {
            if ((v41 = [v39 offset], v41 >= v115) && v41 - v115 < v114 || (v42 = objc_msgSend(v39, "offset"), v43 = objc_msgSend(v39, "length") + v42, v76 = v43 >= v115, v44 = v43 - v115, v76) && v44 < v114)
            {
              [v36 addObject:v39];
            }
          }

          ++v37;
        }

        while (2 * v33 != v37);
      }

      v45 = noiLogHandle;
      if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218754;
        v128 = selfCopy;
        v129 = 2112;
        v130 = v36;
        v131 = 2048;
        v132 = v115;
        v133 = 2048;
        v134 = (86400.0 / v110);
        _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEFAULT, "%p prediction massaged content: %@, window: (%lu,%lu)", buf, 0x2Au);
      }

      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v46 = v36;
      v47 = [v46 countByEnumeratingWithState:&v120 objects:v126 count:16];
      v98 = v35;
      if (v47)
      {
        v48 = v47;
        v49 = 0;
        v50 = *v121;
        do
        {
          for (i = 0; i != v48; ++i)
          {
            if (*v121 != v50)
            {
              objc_enumerationMutation(v46);
            }

            v52 = *(*(&v120 + 1) + 8 * i);
            if (v49 && (v53 = [v49 offset], v54 = objc_msgSend(v49, "length") + v53, v54 == objc_msgSend(v52, "offset")) && (v55 = objc_msgSend(v49, "level"), v55 == objc_msgSend(v52, "level")))
            {
              [v49 confidence];
              v57 = v56;
              v58 = [v49 length];
              [v52 confidence];
              [v49 adjustConfidenceTo:{(v59 * objc_msgSend(v52, "length") + v57 * v58) / (objc_msgSend(v52, "length") + objc_msgSend(v49, "length"))}];
              [v49 adjustLengthTo:{objc_msgSend(v52, "length") + objc_msgSend(v49, "length")}];
              [v52 adjustLengthTo:0];
            }

            else
            {
              v60 = v52;

              v49 = v60;
            }
          }

          v48 = [v46 countByEnumeratingWithState:&v120 objects:v126 count:16];
        }

        while (v48);
      }

      else
      {
        v49 = 0;
      }

      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v65 = v46;
      v66 = [v65 countByEnumeratingWithState:&v116 objects:v125 count:16];
      if (v66)
      {
        v67 = v66;
        v97 = selfCopy;
        v63 = 0;
        v68 = (2 * v34) | 1;
        v69 = *v117;
        v70 = 0.0;
        v113 = v68;
        v71 = v65;
        v108 = v65;
        do
        {
          for (j = 0; j != v67; ++j)
          {
            if (*v117 != v69)
            {
              objc_enumerationMutation(v71);
            }

            v73 = *(*(&v116 + 1) + 8 * j);
            if ([v73 length])
            {
              if (v68 != v113)
              {
                offset = [v73 offset];
                v75 = [v73 length];
                v76 = offset > v68 || v68 - offset >= v75;
                if (v76)
                {
                  v77 = objc_alloc(MEMORY[0x277D6B3F8]);
                  v78 = [v112 dateByAddingTimeInterval:(v110 * v68 - v109)];
                  v79 = [v77 initWithSpec:v78 toQuality:100 withConfidence:v110 resolutionSeconds:v70];

                  [obj addObject:v79];
                  v63 = v79;
                }
              }

              offset2 = [v73 offset];
              if (offset2 >= v115 && offset2 - v115 < v114)
              {
                v82 = objc_alloc(MEMORY[0x277D6B3F8]);
                v83 = [v112 dateByAddingTimeInterval:{(v110 * objc_msgSend(v73, "offset") - v109)}];
                level = [v73 level];
                [v73 confidence];
                v85 = [v82 initWithSpec:v83 toQuality:level withConfidence:v110 resolutionSeconds:?];

                v71 = v108;
                [obj addObject:v85];
                v63 = v85;
              }

              offset3 = [v73 offset];
              v68 = [v73 length] + offset3;
              [v73 confidence];
              v70 = v87;
            }
          }

          v67 = [v71 countByEnumeratingWithState:&v116 objects:v125 count:16];
        }

        while (v67);

        if (v68 == v113)
        {
          selfCopy = v97;
          v88 = v98;
          v2 = v100;
          v6 = v101;
        }

        else
        {
          v89 = v68;
          selfCopy = v97;
          v88 = v98;
          v2 = v100;
          v6 = v101;
          if (v68 >= v115 && v68 - v115 < v114)
          {
            v90 = objc_alloc(MEMORY[0x277D6B3F8]);
            v91 = [v112 dateByAddingTimeInterval:(v110 * v89 - v109)];
            v92 = [v90 initWithSpec:v91 toQuality:100 withConfidence:v110 resolutionSeconds:v70];

            [obj addObject:v92];
            v63 = v92;
          }
        }

        v65 = v108;
      }

      else
      {

        v63 = 0;
        v2 = v100;
        v6 = v101;
        v88 = v98;
      }

      v4 = v102;
      v29 = v107;
    }

    else
    {
      v64 = noiLogHandle;
      if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v128 = selfCopy;
        _os_log_impl(&dword_23255B000, v64, OS_LOG_TYPE_DEFAULT, "%p predictions indicate no change", buf, 0xCu);
      }

      v63 = 0;
      v4 = v102;
    }

    v93 = selfCopy;
    objc_sync_enter(v93);
    objc_storeStrong((&selfCopy->super.super.isa + v4), obj);
    objc_sync_exit(v93);

    v94 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v95 = *(&selfCopy->super.super.isa + v4);
      *buf = 134218498;
      v128 = v93;
      v129 = 2112;
      v130 = v95;
      v131 = 2112;
      v132 = 0;
      _os_log_impl(&dword_23255B000, v94, OS_LOG_TYPE_DEFAULT, "%p pred updated to %@, err %@", buf, 0x20u);
    }
  }

  else
  {
    v61 = noiLogHandle;
    v29 = v107;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v61, OS_LOG_TYPE_DEFAULT, "invalid model resolution (0)", buf, 2u);
    }

    v62 = v2;
    v63 = 0;
  }

  objc_autoreleasePoolPop(v6);
  if (v110)
  {
    goto LABEL_86;
  }

LABEL_87:

  return v2;
}

- (void)setPredictions:(id)predictions
{
  predictionsCopy = predictions;
  obj = self;
  objc_sync_enter(obj);
  v5 = *MEMORY[0x277D6B498];
  v6 = *(&obj->super.super.isa + v5);
  *(&obj->super.super.isa + v5) = predictionsCopy;

  objc_sync_exit(obj);
}

- (id)instantQuality
{
  v2 = [NetworkAnalyticsEngine mapLinkQuality:[NetworkAnalyticsEngine getLoadedLQMOn:*(&self->super.super.isa + *MEMORY[0x277D6B448])]];
  v3 = MEMORY[0x277CCABB0];

  return [v3 numberWithInteger:v2];
}

- (id)hasForegroundActivity
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = +[AppStateMonitor hasAnyForegroundApp];
  v4 = [NetworkStateRelay getStateRelayFor:*(&self->super.super.isa + *MEMORY[0x277D6B448])];
  primary = [v4 primary];
  v6 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218754;
    selfCopy = self;
    v11 = 1024;
    v12 = v3;
    v13 = 1024;
    v14 = primary;
    v15 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "%p foreground: %d primary: %d for noi: %@", &v9, 0x22u);
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:v3 & primary];

  return v7;
}

- (void)anchorPowerCostToLinkQuality
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.isa + *MEMORY[0x277D6B448]);
  v4 = v3 > 7;
  v5 = (1 << v3) & 0x8C;
  if (v4 || v5 == 0)
  {
    v8 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = 134218242;
      selfCopy = self;
      v11 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "%p attempting to set default powerCost value on wrong noi %@", &v9, 0x16u);
    }
  }

  else
  {
    v7 = *MEMORY[0x277D6B488];
    if (*(&self->super.super.isa + *MEMORY[0x277D6B480]))
    {
      *(&self->super.super.isa + v7) = 1;
      *(&self->super.super.isa + *MEMORY[0x277D6B490]) = 1;
    }

    else
    {
      *(&self->super.super.isa + v7) = 0;
      *(&self->super.super.isa + *MEMORY[0x277D6B490]) = 0;
    }
  }
}

- (id)valueForUndefinedKey:(id)key
{
  v11 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    selfCopy = self;
    v9 = 2112;
    v10 = keyCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "%p attempt to fetch inexistent property %@", &v7, 0x16u);
  }

  return 0;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  v11 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v6 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    selfCopy = self;
    v9 = 2112;
    v10 = keyCopy;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "%p attempt to set inexistent property %@, drop request", &v7, 0x16u);
  }
}

- (id)predictionsError
{
  v12 = *MEMORY[0x277D85DE8];
  [NetworkAnalyticsModel fetchPredictionErrorForInterfaceType:*(&self->super.super.isa + *MEMORY[0x277D6B450]) isAny:*(&self->super.super.isa + *MEMORY[0x277D6B460]) isBuiltin:*(&self->super.super.isa + *MEMORY[0x277D6B468]) scopedToLOI:*(&self->super.super.isa + *MEMORY[0x277D6B4A8]) hasCustomSignature:*(&self->super.super.isa + *MEMORY[0x277D6B430])];
  v4 = v3;
  v5 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    selfCopy = self;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "%p: error %f", &v8, 0x16u);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4];

  return v6;
}

- (id)dayOfWeekGrouping
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEA60]);
  v4 = [NetworkAnalyticsModel getDaysWithSimilarPatternForInterfaceType:*(&self->super.super.isa + *MEMORY[0x277D6B450])];
  v5 = [v3 initWithArray:v4 copyItems:0];

  v6 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    selfCopy = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "%p: dayOfWeek %@", &v8, 0x16u);
  }

  return v5;
}

- (id)trainingProgress
{
  v12 = *MEMORY[0x277D85DE8];
  [NetworkAnalyticsModel fetchTrainingProgressForInterfaceType:*(&self->super.super.isa + *MEMORY[0x277D6B450]) isAny:*(&self->super.super.isa + *MEMORY[0x277D6B460]) isBuiltin:*(&self->super.super.isa + *MEMORY[0x277D6B468]) scopedToLOI:*(&self->super.super.isa + *MEMORY[0x277D6B4A8]) hasCustomSignature:*(&self->super.super.isa + *MEMORY[0x277D6B430])];
  v4 = v3;
  v5 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    selfCopy = self;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "%p: training progress %f", &v8, 0x16u);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4];

  return v6;
}

- (id)invitesHourlyDistribution
{
  if (*(&self->super.super.isa + *MEMORY[0x277D6B4B0]) == 1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__SFNetworkOfInterest_invitesHourlyDistribution__block_invoke;
    block[3] = &unk_27898A0C8;
    block[4] = self;
    if (invitesHourlyDistribution_onceToken != -1)
    {
      dispatch_once(&invitesHourlyDistribution_onceToken, block);
    }

    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
    v4 = [(NSMutableArray *)self->allInvitesHourly count];
    if (v4 <= 0x17)
    {
      v5 = v4 - 24;
      do
      {
        [(NSMutableArray *)self->allInvitesHourly addObject:v3];
        v6 = __CFADD__(v5++, 1);
      }

      while (!v6);
    }

    v7 = [(NSMutableArray *)self->bgInvitesHourly count];
    if (v7 <= 0x17)
    {
      v8 = v7 - 24;
      do
      {
        [(NSMutableArray *)self->bgInvitesHourly addObject:v3];
        v6 = __CFADD__(v8++, 1);
      }

      while (!v6);
    }

    v9 = [(NSMutableArray *)self->allInvitesHourly arrayByAddingObjectsFromArray:self->bgInvitesHourly];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  return v9;
}

void __48__SFNetworkOfInterest_invitesHourlyDistribution__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 152))
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:24];
    v4 = *(a1 + 32);
    v5 = *(v4 + 152);
    *(v4 + 152) = v3;

    v2 = *(a1 + 32);
  }

  if (!*(v2 + 160))
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:24];
    v7 = *(a1 + 32);
    v8 = *(v7 + 160);
    *(v7 + 160) = v6;

    MEMORY[0x2821F96F8](v6, v8);
  }
}

- (id)interfaceTimeline
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [NetworkAnalyticsEngine skimMemoryJournalFor:3];
  v5 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    selfCopy = self;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "%p: interfaceTimeline found: %@", buf, 0x16u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__SFNetworkOfInterest_interfaceTimeline__block_invoke;
  v10[3] = &unk_27898CEF8;
  v10[4] = self;
  v6 = v3;
  v11 = v6;
  [v4 enumerateObjectsUsingBlock:v10];
  v7 = v11;
  v8 = v6;

  return v6;
}

void __40__SFNetworkOfInterest_interfaceTimeline__block_invoke(uint64_t a1, id a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a2 bytes];
  v6 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = *(v5 + 3);
    v13 = 134218240;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "%p: interfaceTimeline type: %d", &v13, 0x12u);
  }

  if (*(*(a1 + 32) + *MEMORY[0x277D6B450]) == *(v5 + 3))
  {
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v5 + 8)];
    [v9 addObject:v10];

    v11 = *(a1 + 40);
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v5 + 16)];
    [v11 addObject:v12];
  }
}

@end
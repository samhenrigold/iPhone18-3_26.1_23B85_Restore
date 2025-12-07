@interface CoreCECTypesInternal
+ (id)defaultTypes;
- (CoreCECTypesInternal)init;
- (id)stringForActivationStatus:(unint64_t)status;
- (id)stringForDeckControlMode:(unint64_t)mode;
- (id)stringForDeckInfo:(unint64_t)info;
- (id)stringForDeviceType:(unint64_t)type;
- (id)stringForPlayMode:(unint64_t)mode;
- (id)stringForRequestType:(unint64_t)type;
- (id)stringForSystemAudioStatus:(unint64_t)status;
- (unint64_t)deckControlModeForString:(id)string;
- (unint64_t)deckInfoForString:(id)string;
- (unint64_t)deviceTypeForString:(id)string;
- (unint64_t)playModeForString:(id)string;
- (unint64_t)requestTypeForString:(id)string;
- (unint64_t)systemAudioStatusForString:(id)string;
- (void)dealloc;
@end

@implementation CoreCECTypesInternal

- (CoreCECTypesInternal)init
{
  v60[3] = *MEMORY[0x277D85DE8];
  v58.receiver = self;
  v58.super_class = CoreCECTypesInternal;
  v2 = [(CoreCECTypesInternal *)&v58 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB98]);
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v2->_rcProfileClasses = [v3 initWithObjects:{v4, v5, v6, objc_opt_class(), 0}];
    v7 = objc_alloc(MEMORY[0x277CBEA60]);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
    v2->deckControlConstants = [v7 initWithObjects:{v8, v9, v10, objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 4), 0}];
    v2->deckControlStrings = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"Eject", @"SkipForward", @"SkipReverse", @"Stop", 0}];
    v56 = objc_alloc(MEMORY[0x277CBEA60]);
    v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
    v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:4];
    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:5];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:6];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:7];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:8];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:9];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:11];
    v57 = v2;
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:12];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:13];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:14];
    v57->deckInfoConstants = [v56 initWithObjects:{v54, v52, v50, v48, v46, v44, v11, v12, v13, v14, v15, v16, v17, v18, v19, objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 15), 0}];
    v57->deckInfoStrings = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"FastForward", @"FastReverse", @"IndexSearchForward", @"IndexSearchReverse", @"NoMedia", @"OtherStatus", @"Play", @"PlayReverse", @"Record", @"SkipForward", @"SkipReverse", @"Slow", @"SlowReverse", @"Still", @"Stop", 0}];
    v20 = objc_alloc(MEMORY[0x277CBEA60]);
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:4];
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:5];
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:6];
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:7];
    v57->deviceTypesConstants = [v20 initWithObjects:{v21, v22, v23, v24, v25, v26, v27, v28, objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 8), 0}];
    v57->deviceTypesStrings = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"Unknown", @"AudioSystem", @"PlaybackDevice", @"PureCECSwitch", @"RecordingDevice", @"Reserved", @"Tuner", @"TV", @"Processor", 0}];
    v55 = objc_alloc(MEMORY[0x277CBEA60]);
    v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
    v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:4];
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:5];
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:6];
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:7];
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:8];
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:9];
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10];
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:11];
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:12];
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:13];
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:14];
    v43 = v35;
    v2 = v57;
    v57->playModeConstants = [v55 initWithObjects:{v53, v51, v49, v47, v45, v29, v30, v31, v32, v33, v34, v43, v36, v37, objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 15), 0}];
    v57->playModeStrings = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"FastForwardMaxSpeed", @"FastForwardMediumSpeed", @"FastForwardMinSpeed", @"FastReverseMaxSpeed", @"FastReverseMediumSpeed", @"FastReverseMinSpeed", @"PlayForward", @"PlayReverse", @"PlayStill", @"SlowForwardMaxSpeed", @"SlowForwardMediumSpeed", @"SlowForwardMinSpeed", @"SlowReverseMaxSpeed", @"SlowReverseMediumSpeed", @"SlowReverseMinSpeed", 0}];
    v38 = objc_alloc(MEMORY[0x277CBEA60]);
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
    v57->requestTypeConstants = [v38 initWithObjects:{v39, v40, v41, objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), 0}];
    v57->requestTypeStrings = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"Unknown", @"Off", @"On", @"Once", 0}];
    v57->systemAudioModeStatusConstants = [&unk_28593C1C8 copy];
    v60[0] = @"Unknown";
    v60[1] = @"Off";
    v60[2] = @"On";
    v57->systemAudioModeStatusStrings = [objc_msgSend(MEMORY[0x277CBEA60] arrayWithObjects:v60 count:{3), "copy"}];
    v57->activationStatusConstants = [&unk_28593C1E0 copy];
    v59[0] = @"Inactive";
    v59[1] = @"Active";
    v57->activationStatusStrings = [objc_msgSend(MEMORY[0x277CBEA60] arrayWithObjects:v59 count:{2), "copy"}];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CoreCECTypesInternal;
  [(CoreCECTypesInternal *)&v3 dealloc];
}

+ (id)defaultTypes
{
  objc_sync_enter(self);
  if (!defaultTypes_gTypes)
  {
    defaultTypes_gTypes = objc_alloc_init(CoreCECTypesInternal);
  }

  objc_sync_exit(self);
  return defaultTypes_gTypes;
}

- (id)stringForDeckControlMode:(unint64_t)mode
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  deckControlConstants = self->deckControlConstants;
  result = [(NSArray *)deckControlConstants countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v7 = result;
    v8 = 0;
    v9 = *v13;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(deckControlConstants);
        }

        if ([*(*(&v12 + 1) + 8 * v10) unsignedIntegerValue] == mode)
        {
          return [(NSArray *)self->deckControlStrings objectAtIndex:v11];
        }

        ++v11;
        v10 = v10 + 1;
      }

      while (v7 != v10);
      result = [(NSArray *)deckControlConstants countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (unint64_t)deckControlModeForString:(id)string
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  deckControlStrings = self->deckControlStrings;
  result = [(NSArray *)deckControlStrings countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v7 = result;
    v8 = 0;
    v9 = *v13;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(deckControlStrings);
        }

        if (![*(*(&v12 + 1) + 8 * v10) compare:string options:1])
        {
          return [-[NSArray objectAtIndex:](self->deckControlConstants objectAtIndex:{v11), "unsignedIntegerValue"}];
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      result = [(NSArray *)deckControlStrings countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (id)stringForDeckInfo:(unint64_t)info
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  deckInfoConstants = self->deckInfoConstants;
  result = [(NSArray *)deckInfoConstants countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v7 = result;
    v8 = 0;
    v9 = *v13;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(deckInfoConstants);
        }

        if ([*(*(&v12 + 1) + 8 * v10) unsignedIntegerValue] == info)
        {
          return [(NSArray *)self->deckInfoStrings objectAtIndex:v11];
        }

        ++v11;
        v10 = v10 + 1;
      }

      while (v7 != v10);
      result = [(NSArray *)deckInfoConstants countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (unint64_t)deckInfoForString:(id)string
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  deckInfoStrings = self->deckInfoStrings;
  result = [(NSArray *)deckInfoStrings countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v7 = result;
    v8 = 0;
    v9 = *v13;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(deckInfoStrings);
        }

        if (![*(*(&v12 + 1) + 8 * v10) compare:string options:1])
        {
          return [-[NSArray objectAtIndex:](self->deckInfoConstants objectAtIndex:{v11), "unsignedIntegerValue"}];
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      result = [(NSArray *)deckInfoStrings countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (id)stringForPlayMode:(unint64_t)mode
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  playModeConstants = self->playModeConstants;
  result = [(NSArray *)playModeConstants countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v7 = result;
    v8 = 0;
    v9 = *v13;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(playModeConstants);
        }

        if ([*(*(&v12 + 1) + 8 * v10) unsignedIntegerValue] == mode)
        {
          return [(NSArray *)self->playModeStrings objectAtIndex:v11];
        }

        ++v11;
        v10 = v10 + 1;
      }

      while (v7 != v10);
      result = [(NSArray *)playModeConstants countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (unint64_t)playModeForString:(id)string
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  playModeStrings = self->playModeStrings;
  result = [(NSArray *)playModeStrings countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v7 = result;
    v8 = 0;
    v9 = *v13;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(playModeStrings);
        }

        if (![*(*(&v12 + 1) + 8 * v10) compare:string options:1])
        {
          return [-[NSArray objectAtIndex:](self->playModeConstants objectAtIndex:{v11), "unsignedIntegerValue"}];
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      result = [(NSArray *)playModeStrings countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (id)stringForDeviceType:(unint64_t)type
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  deviceTypesConstants = self->deviceTypesConstants;
  result = [(NSArray *)deviceTypesConstants countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v7 = result;
    v8 = 0;
    v9 = *v13;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(deviceTypesConstants);
        }

        if ([*(*(&v12 + 1) + 8 * v10) unsignedIntegerValue] == type)
        {
          return [(NSArray *)self->deviceTypesStrings objectAtIndex:v11];
        }

        ++v11;
        v10 = v10 + 1;
      }

      while (v7 != v10);
      result = [(NSArray *)deviceTypesConstants countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (unint64_t)deviceTypeForString:(id)string
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  deviceTypesStrings = self->deviceTypesStrings;
  result = [(NSArray *)deviceTypesStrings countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v7 = result;
    v8 = 0;
    v9 = *v13;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(deviceTypesStrings);
        }

        if (![*(*(&v12 + 1) + 8 * v10) compare:string options:1])
        {
          return [-[NSArray objectAtIndex:](self->deviceTypesConstants objectAtIndex:{v11), "unsignedIntegerValue"}];
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      result = [(NSArray *)deviceTypesStrings countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (id)stringForRequestType:(unint64_t)type
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  requestTypeConstants = self->requestTypeConstants;
  result = [(NSArray *)requestTypeConstants countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v7 = result;
    v8 = 0;
    v9 = *v13;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(requestTypeConstants);
        }

        if ([*(*(&v12 + 1) + 8 * v10) unsignedIntegerValue] == type)
        {
          return [(NSArray *)self->requestTypeStrings objectAtIndex:v11];
        }

        ++v11;
        v10 = v10 + 1;
      }

      while (v7 != v10);
      result = [(NSArray *)requestTypeConstants countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (unint64_t)requestTypeForString:(id)string
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  requestTypeStrings = self->requestTypeStrings;
  result = [(NSArray *)requestTypeStrings countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v7 = result;
    v8 = 0;
    v9 = *v13;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(requestTypeStrings);
        }

        if (![*(*(&v12 + 1) + 8 * v10) compare:string options:1])
        {
          return [-[NSArray objectAtIndex:](self->requestTypeConstants objectAtIndex:{v11), "unsignedIntegerValue"}];
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      result = [(NSArray *)requestTypeStrings countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (id)stringForSystemAudioStatus:(unint64_t)status
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  systemAudioModeStatusConstants = self->systemAudioModeStatusConstants;
  result = [(NSArray *)systemAudioModeStatusConstants countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v7 = result;
    v8 = 0;
    v9 = *v13;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(systemAudioModeStatusConstants);
        }

        if ([*(*(&v12 + 1) + 8 * v10) unsignedIntegerValue] == status)
        {
          return [(NSArray *)self->systemAudioModeStatusStrings objectAtIndex:v11];
        }

        ++v11;
        v10 = v10 + 1;
      }

      while (v7 != v10);
      result = [(NSArray *)systemAudioModeStatusConstants countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (unint64_t)systemAudioStatusForString:(id)string
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  systemAudioModeStatusStrings = self->systemAudioModeStatusStrings;
  result = [(NSArray *)systemAudioModeStatusStrings countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v7 = result;
    v8 = 0;
    v9 = *v13;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(systemAudioModeStatusStrings);
        }

        if (![*(*(&v12 + 1) + 8 * v10) compare:string options:1])
        {
          return [-[NSArray objectAtIndex:](self->systemAudioModeStatusConstants objectAtIndex:{v11), "unsignedIntegerValue"}];
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      result = [(NSArray *)systemAudioModeStatusStrings countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (id)stringForActivationStatus:(unint64_t)status
{
  v3 = kCoreCECActivationStatusStringInactive;
  v4 = &kCoreCECActivationStatusStringActive;
  if (status != 1)
  {
    v4 = kCoreCECGenericStringUnknown;
  }

  if (status)
  {
    v3 = v4;
  }

  return *v3;
}

@end
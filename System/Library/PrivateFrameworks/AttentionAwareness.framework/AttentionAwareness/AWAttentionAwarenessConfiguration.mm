@interface AWAttentionAwarenessConfiguration
+ (AWNotification_s)notifySupportedEventsChangedWithQueue:(id)queue block:(id)block;
+ (id)supportedEventsString;
+ (unint64_t)supportedEvents;
+ (void)cancelNotification:(AWNotification_s *)notification;
- (AWAttentionAwarenessConfiguration)init;
- (AWAttentionAwarenessConfiguration)initWithCoder:(id)coder;
- (BOOL)validateWithError:(id *)error;
- (NSDictionary)attentionLostTimeoutDictionary;
- (NSSet)attentionLostTimeouts;
- (id)allowedHIDEventsForRemoteEvent;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAllowedHIDEventsForRemoteEvent:(id)event;
- (void)setAttentionLostTimeout:(double)timeout;
- (void)setAttentionLostTimeoutDictionary:(id)dictionary;
- (void)setAttentionLostTimeouts:(id)timeouts;
- (void)setEventMask:(unint64_t)mask;
- (void)setIdentifier:(id)identifier;
- (void)setSamplingInterval:(double)interval;
- (void)setTag:(id)tag;
@end

@implementation AWAttentionAwarenessConfiguration

- (AWAttentionAwarenessConfiguration)init
{
  v9.receiver = self;
  v9.super_class = AWAttentionAwarenessConfiguration;
  v2 = [(AWAttentionAwarenessConfiguration *)&v9 init];
  if (v2)
  {
    v3 = MEMORY[0x1E696AEC0];
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    v6 = [v3 stringWithFormat:@"%@-%d", processName, atomic_fetch_add(init_configCount, 1u)];
    identifier = v2->_identifier;
    v2->_identifier = v6;

    v2->_activateAttentionDetection = 1;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_tag)
  {
    v3 = +[AWAttentionAwarenessClientConfig sharedClientConfig];
    [v3 decrementTagIndexRefCount:self->_tagIndex];
  }

  v4.receiver = self;
  v4.super_class = AWAttentionAwarenessConfiguration;
  [(AWAttentionAwarenessConfiguration *)&v4 dealloc];
}

- (id)description
{
  v54 = *MEMORY[0x1E69E9840];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v3 = self->_attentionLostTimeouts;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v50;
    v8 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v50 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v49 + 1) + 8 * i);
        if (v8)
        {
          v11 = MEMORY[0x1E696AD60];
          [v10 doubleValue];
          v13 = [v11 stringWithFormat:@"%13.5f", v12];

          v6 = v13;
        }

        else
        {
          [v10 doubleValue];
          [v6 appendFormat:@", %13.5f", v14];
        }

        v8 = 0;
      }

      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v49 objects:v53 count:16];
      v8 = 0;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v48 = MEMORY[0x1E696AEC0];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  identifier = self->_identifier;
  v47 = v16;
  samplingInterval = self->_samplingInterval;
  samplingDelay = self->_samplingDelay;
  if (self->_sampleWhileAbsent)
  {
    v19 = "true";
  }

  else
  {
    v19 = "false";
  }

  if (self->_retroactiveTimeoutMode)
  {
    v20 = "true";
  }

  else
  {
    v20 = "false";
  }

  v44 = v20;
  v45 = v19;
  if (self->_pollingFilter)
  {
    v21 = "true";
  }

  else
  {
    v21 = "false";
  }

  if (self->_continuousFaceDetectMode)
  {
    v22 = "true";
  }

  else
  {
    v22 = "false";
  }

  v42 = v22;
  v43 = v21;
  if (self->_activateAttentionDetection)
  {
    v23 = "true";
  }

  else
  {
    v23 = "false";
  }

  if (self->_activateEyeRelief)
  {
    v24 = "true";
  }

  else
  {
    v24 = "false";
  }

  v40 = v24;
  v41 = v23;
  if (self->_activateMotionDetect)
  {
    v25 = "true";
  }

  else
  {
    v25 = "false";
  }

  if (self->_unityStream)
  {
    v26 = "true";
  }

  else
  {
    v26 = "false";
  }

  v38 = v26;
  v39 = v25;
  if (self->_nonSampledAttentionLostTimeoutEnable)
  {
    v27 = "true";
  }

  else
  {
    v27 = "false";
  }

  nonSampledAttentionLostTimeout = self->_nonSampledAttentionLostTimeout;
  v29 = getNotificationMaskDescription(self->_notificationMask);
  v30 = getEventMaskDescription(self->_eventMask);
  v31 = getEventMaskDescription(self->_attentionLostEventMask);
  keyboardDisplayUUIDs = self->_keyboardDisplayUUIDs;
  buttonDisplayUUIDs = self->_buttonDisplayUUIDs;
  digitizerDisplayUUIDs = self->_digitizerDisplayUUIDs;
  v35 = tagDescription(self->_tagIndex, self->_tag);
  v36 = [v48 stringWithFormat:@"<%@: %p> (identifier: %@ samplingInterval: %13.5f, samplingDelay: %13.5f, sampleWhileAbsent: %s, retroactiveTimeoutMode: %s, pollingFilter: %s, continuousFaceDetectMode: %s, activateAttentionDetection: %s, activateEyeRelief: %s, activateMotionDetection: %s, unityStream: %s, attentionLostTimeouts: %@ nonSampledAttentionLostTimeoutEnable: %s nonSampledAttentionLostTimeout: %13.5f notificationMask %@ mask %@ attentionLostEventMask %@ digitizerDisplayUUIDs %@ buttonDisplayUUIDs %@ keyboardDisplayUUIDs %@ %@)", v47, self, identifier, *&samplingInterval, *&samplingDelay, v45, v44, v43, v42, v41, v40, v39, v38, v6, v27, *&nonSampledAttentionLostTimeout, v29, v30, v31, digitizerDisplayUUIDs, buttonDisplayUUIDs, keyboardDisplayUUIDs, v35];

  return v36;
}

- (NSDictionary)attentionLostTimeoutDictionary
{
  v2 = [(NSDictionary *)self->_attentionLostTimeoutDictionary copy];

  return v2;
}

- (NSSet)attentionLostTimeouts
{
  v2 = [(NSSet *)self->_attentionLostTimeouts copy];

  return v2;
}

- (void)setAllowedHIDEventsForRemoteEvent:(id)event
{
  v4 = [event copy];
  allowedHIDEventsForRemoteEvent = self->_allowedHIDEventsForRemoteEvent;
  self->_allowedHIDEventsForRemoteEvent = v4;

  MEMORY[0x1EEE66BB8](v4, allowedHIDEventsForRemoteEvent);
}

- (id)allowedHIDEventsForRemoteEvent
{
  v2 = [(NSSet *)self->_allowedHIDEventsForRemoteEvent copy];

  return v2;
}

- (void)setAttentionLostTimeoutDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy copy];
  attentionLostTimeoutDictionary = self->_attentionLostTimeoutDictionary;
  self->_attentionLostTimeoutDictionary = v5;

  v7 = MEMORY[0x1E695DFD8];
  allKeys = [dictionaryCopy allKeys];

  v8 = [v7 setWithArray:allKeys];
  attentionLostTimeouts = self->_attentionLostTimeouts;
  self->_attentionLostTimeouts = v8;
}

- (void)setAttentionLostTimeout:(double)timeout
{
  v4 = MEMORY[0x1E695DFD8];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:timeout];
  v5 = [v4 setWithObject:v6];
  [(AWAttentionAwarenessConfiguration *)self setAttentionLostTimeouts:v5];
}

- (void)setAttentionLostTimeouts:(id)timeouts
{
  v4 = [timeouts copy];
  attentionLostTimeouts = self->_attentionLostTimeouts;
  self->_attentionLostTimeouts = v4;

  attentionLostTimeoutDictionary = self->_attentionLostTimeoutDictionary;
  self->_attentionLostTimeoutDictionary = 0;
}

- (void)setSamplingInterval:(double)interval
{
  self->_samplingInterval = interval;
  if (!self->_samplingDelayExplicitlySet)
  {
    self->_samplingDelay = interval;
  }
}

- (void)setEventMask:(unint64_t)mask
{
  self->_eventMask = mask;
  if (!self->_attentionLostEventMaskExplicitlySet)
  {
    self->_attentionLostEventMask = mask;
  }
}

- (void)setTag:(id)tag
{
  tagCopy = tag;
  v4 = (tagCopy | self->_tag);
  if (v4)
  {
    v5 = +[AWAttentionAwarenessClientConfig sharedClientConfig];
    v6 = v5;
    if (self->_tag)
    {
      [v5 decrementTagIndexRefCount:self->_tagIndex];
    }

    if (tagCopy)
    {
      v7 = [tagCopy copyWithZone:MEMORY[0x1BFB0CAB0]()];
      tag = self->_tag;
      self->_tag = v7;

      v9 = [v6 addTag:self->_tag];
      goto LABEL_9;
    }

    v4 = self->_tag;
  }

  else
  {
    v6 = 0;
  }

  self->_tag = 0;

  v9 = 0;
LABEL_9:
  self->_tagIndex = v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[AWAttentionAwarenessConfiguration allocWithZone:](AWAttentionAwarenessConfiguration init];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(NSCopying *)self->_tag copyWithZone:zone];
  tag = v5->_tag;
  v5->_tag = v8;

  v5->_notificationMask = self->_notificationMask;
  v5->_eventMask = self->_eventMask;
  v5->_attentionLostEventMask = self->_attentionLostEventMask;
  v5->_samplingInterval = self->_samplingInterval;
  v5->_samplingDelay = self->_samplingDelay;
  v5->_sampleWhileAbsent = self->_sampleWhileAbsent;
  v5->_retroactiveTimeoutMode = self->_retroactiveTimeoutMode;
  v5->_pollingFilter = self->_pollingFilter;
  v5->_continuousFaceDetectMode = self->_continuousFaceDetectMode;
  v5->_activateEyeRelief = self->_activateEyeRelief;
  v5->_activateAttentionDetection = self->_activateAttentionDetection;
  v5->_activateMotionDetect = self->_activateMotionDetect;
  v5->_unityStream = self->_unityStream;
  v10 = [(NSSet *)self->_attentionLostTimeouts copyWithZone:zone];
  attentionLostTimeouts = v5->_attentionLostTimeouts;
  v5->_attentionLostTimeouts = v10;

  v12 = [(NSDictionary *)self->_attentionLostTimeoutDictionary copyWithZone:zone];
  attentionLostTimeoutDictionary = v5->_attentionLostTimeoutDictionary;
  v5->_attentionLostTimeoutDictionary = v12;

  v5->_tagIndex = self->_tagIndex;
  v14 = [(NSSet *)self->_allowedHIDEventsForRemoteEvent copyWithZone:zone];
  allowedHIDEventsForRemoteEvent = v5->_allowedHIDEventsForRemoteEvent;
  v5->_allowedHIDEventsForRemoteEvent = v14;

  v16 = [(NSSet *)self->_digitizerDisplayUUIDs copyWithZone:zone];
  digitizerDisplayUUIDs = v5->_digitizerDisplayUUIDs;
  v5->_digitizerDisplayUUIDs = v16;

  v18 = [(NSSet *)self->_keyboardDisplayUUIDs copyWithZone:zone];
  keyboardDisplayUUIDs = v5->_keyboardDisplayUUIDs;
  v5->_keyboardDisplayUUIDs = v18;

  v20 = [(NSSet *)self->_buttonDisplayUUIDs copyWithZone:zone];
  buttonDisplayUUIDs = v5->_buttonDisplayUUIDs;
  v5->_buttonDisplayUUIDs = v20;

  v5->_nonSampledAttentionLostTimeout = self->_nonSampledAttentionLostTimeout;
  v5->_nonSampledAttentionLostTimeoutEnable = self->_nonSampledAttentionLostTimeoutEnable;
  v22 = +[AWAttentionAwarenessClientConfig sharedClientConfig];
  [v22 incrementTagIndexRefCount:self->_tagIndex];

  return v5;
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 raise:v6 format:{@"attempt to set null identifier on %@", v8}];
  }

  identifier = self->_identifier;
  self->_identifier = identifierCopy;
}

- (BOOL)validateWithError:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  if (self->_identifier && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (currentLogLevel >= 3)
    {
      v5 = _AALog();
      if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
      {
        v30 = absTimeNS();
        if (v30 == -1)
        {
          v31 = INFINITY;
        }

        else
        {
          v31 = v30 / 1000000000.0;
        }

        *buf = 134217984;
        v43 = v31;
        v32 = "%13.5f: Invalid Config: identifier must be a valid string";
        goto LABEL_68;
      }

LABEL_11:
    }
  }

  else if (self->_samplingInterval >= 0.0 && self->_samplingDelay >= 0.0)
  {
    if (self->_attentionLostTimeouts)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (currentLogLevel < 3)
        {
          goto LABEL_12;
        }

        v5 = _AALog();
        if (!os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        v14 = absTimeNS();
        if (v14 == -1)
        {
          v15 = INFINITY;
        }

        else
        {
          v15 = v14 / 1000000000.0;
        }

        *buf = 134217984;
        v43 = v15;
        v32 = "%13.5f: Invalid Config: attention lost timeouts must be a set of non-negative values";
        goto LABEL_68;
      }
    }

    if (self->_unityStream && !self->_continuousFaceDetectMode)
    {
      if (currentLogLevel < 3)
      {
        goto LABEL_12;
      }

      v5 = _AALog();
      if (!os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v18 = absTimeNS();
      if (v18 == -1)
      {
        v19 = INFINITY;
      }

      else
      {
        v19 = v18 / 1000000000.0;
      }

      *buf = 134217984;
      v43 = v19;
      v32 = "%13.5f: Invalid Config: Unity stream clients must set the continuousFaceDetectMode flag";
      goto LABEL_68;
    }

    if (self->_activateEyeRelief)
    {
      if (self->_activateMotionDetect)
      {
        if (currentLogLevel < 3)
        {
          goto LABEL_12;
        }

        v5 = _AALog();
        if (!os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        v12 = absTimeNS();
        if (v12 == -1)
        {
          v13 = INFINITY;
        }

        else
        {
          v13 = v12 / 1000000000.0;
        }

        *buf = 134217984;
        v43 = v13;
        v32 = "%13.5f: Invalid Config: EyeRelief and motion detection cannot be started at the same time";
        goto LABEL_68;
      }

      if (!self->_continuousFaceDetectMode)
      {
        if (currentLogLevel < 3)
        {
          goto LABEL_12;
        }

        v5 = _AALog();
        if (!os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        v20 = absTimeNS();
        if (v20 == -1)
        {
          v21 = INFINITY;
        }

        else
        {
          v21 = v20 / 1000000000.0;
        }

        *buf = 134217984;
        v43 = v21;
        v32 = "%13.5f: Invalid Config: EyeRelief can only be run in streaming mode";
        goto LABEL_68;
      }
    }

    else if (self->_continuousFaceDetectMode)
    {
      if (self->_activateMotionDetect)
      {
        if (currentLogLevel < 3)
        {
          goto LABEL_12;
        }

        v5 = _AALog();
        if (!os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        v16 = absTimeNS();
        if (v16 == -1)
        {
          v17 = INFINITY;
        }

        else
        {
          v17 = v16 / 1000000000.0;
        }

        *buf = 134217984;
        v43 = v17;
        v32 = "%13.5f: Invalid Config: Motion detection cannot be started in streaming mode";
        goto LABEL_68;
      }
    }

    else if (self->_activateMotionDetect)
    {
      self->_activateAttentionDetection = 0;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v5 = self->_attentionLostTimeouts;
    v22 = [(NSSet *)v5 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v36;
      v25 = 0.0;
LABEL_48:
      v26 = 0;
      while (1)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(v5);
        }

        v27 = *(*(&v35 + 1) + 8 * v26);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_11;
        }

        [v27 doubleValue];
        if (v28 < 0.0)
        {
          goto LABEL_11;
        }

        [v27 doubleValue];
        if (v25 < v29)
        {
          v25 = v29;
        }

        if (v23 == ++v26)
        {
          v23 = [(NSSet *)v5 countByEnumeratingWithState:&v35 objects:v41 count:16];
          if (v23)
          {
            goto LABEL_48;
          }

          goto LABEL_59;
        }
      }
    }

    v25 = 0.0;
LABEL_59:

    if (!self->_nonSampledAttentionLostTimeoutEnable || self->_nonSampledAttentionLostTimeout > v25)
    {
      return 1;
    }

    if (currentLogLevel >= 3)
    {
      v5 = _AALog();
      if (!os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v33 = absTimeNS();
      if (v33 == -1)
      {
        v34 = INFINITY;
      }

      else
      {
        v34 = v33 / 1000000000.0;
      }

      *buf = 134217984;
      v43 = v34;
      v32 = "%13.5f: Invalid Config: nonSampledTimeout lower than attentionLostTimeouts";
      goto LABEL_68;
    }
  }

  else if (currentLogLevel >= 3)
  {
    v5 = _AALog();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      v6 = absTimeNS();
      if (v6 == -1)
      {
        v7 = INFINITY;
      }

      else
      {
        v7 = v6 / 1000000000.0;
      }

      *buf = 134217984;
      v43 = v7;
      v32 = "%13.5f: Invalid Config: sampling interval and sampling delay must be non-negative";
LABEL_68:
      _os_log_error_impl(&dword_1BB2EF000, &v5->super, OS_LOG_TYPE_ERROR, v32, buf, 0xCu);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

LABEL_12:
  if (error)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A798];
    v39 = *MEMORY[0x1E696A578];
    v40 = @" Invalid config";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    *error = [v8 errorWithDomain:v9 code:22 userInfo:v10];
  }

  return 0;
}

- (AWAttentionAwarenessConfiguration)initWithCoder:(id)coder
{
  v95 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v75 = 0;
  v74.receiver = self;
  v74.super_class = AWAttentionAwarenessConfiguration;
  v5 = [(AWAttentionAwarenessConfiguration *)&v74 init];
  if (!v5)
  {
    goto LABEL_53;
  }

  v6 = decodeString(coderCopy, &v75, @"identifier");
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v5->_tagIndex = decodeUInt64(coderCopy, &v75, @"tagIndex");
  v5->_notificationMask = decodeUInt64(coderCopy, &v75, @"notificationMask");
  v5->_eventMask = decodeUInt64(coderCopy, &v75, @"eventMask");
  v5->_attentionLostEventMask = decodeUInt64(coderCopy, &v75, @"attentionLostEventMask");
  v5->_samplingInterval = decodeDouble(coderCopy, &v75, @"samplingInterval");
  v5->_samplingDelay = decodeDouble(coderCopy, &v75, @"samplingDelay");
  v5->_sampleWhileAbsent = decodeUInt64(coderCopy, &v75, @"sampleWhileAbsent") != 0;
  v5->_retroactiveTimeoutMode = decodeUInt64(coderCopy, &v75, @"retroactiveTimeoutMode") != 0;
  v5->_pollingFilter = decodeUInt64(coderCopy, &v75, @"pollingFilter") != 0;
  v5->_continuousFaceDetectMode = decodeUInt64(coderCopy, &v75, @"continuousFaceDetectMode") != 0;
  v5->_activateEyeRelief = decodeUInt64(coderCopy, &v75, @"activateEyeRelief") != 0;
  v5->_activateAttentionDetection = decodeUInt64(coderCopy, &v75, @"activateAttentionDetection") != 0;
  v5->_activateMotionDetect = decodeUInt64(coderCopy, &v75, @"activateMotionDetect") != 0;
  v5->_unityStream = decodeUInt64(coderCopy, &v75, @"unityStream") != 0;
  v8 = coderCopy;
  v9 = @"attentionLostTimeouts";
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v8 decodeObjectOfClasses:v12 forKey:@"attentionLostTimeouts"];
  v14 = 0x1EDC16000;
  if (!v13)
  {
    if ([v8 containsValueForKey:@"attentionLostTimeouts"])
    {
      v20 = 0;
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_16:
    if (*(v14 + 2416) >= 3)
    {
      v21 = v14;
      v22 = _AALog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v61 = absTimeNS();
        if (v61 == -1)
        {
          v62 = INFINITY;
        }

        else
        {
          v62 = v61 / 1000000000.0;
        }

        *v92 = 134218242;
        *&v92[4] = v62;
        *&v92[12] = 2112;
        *&v92[14] = @"attentionLostTimeouts";
        _os_log_error_impl(&dword_1BB2EF000, v22, OS_LOG_TYPE_ERROR, "%13.5f: failed to decode %@", v92, 0x16u);
      }

      v14 = v21;
    }

    v20 = 0;
    v75 = 1;
    goto LABEL_20;
  }

  v73 = v12;
  v86 = 0u;
  v87 = 0u;
  v85 = 0u;
  v84 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v84 objects:v88 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v85;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v85 != v18)
        {
          objc_enumerationMutation(v15);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v14 = 0x1EDC16000uLL;
          v12 = v73;
          goto LABEL_16;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v84 objects:v88 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v20 = v15;
  v14 = 0x1EDC16000;
  v12 = v73;
LABEL_20:

  attentionLostTimeouts = v5->_attentionLostTimeouts;
  v5->_attentionLostTimeouts = v20;

  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = v8;
  v27 = @"allowedHIDEventsForRemoteEvent";
  v28 = MEMORY[0x1E695DFD8];
  v29 = objc_opt_class();
  v30 = [v28 setWithObjects:{v29, objc_opt_class(), v24, v25, 0}];
  v31 = [v26 decodeObjectOfClasses:v30 forKey:@"allowedHIDEventsForRemoteEvent"];
  if (!v31)
  {
    if ([v26 containsValueForKey:@"allowedHIDEventsForRemoteEvent"])
    {
      v47 = 0;
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_44:
    if (*(v14 + 2416) >= 3)
    {
      v48 = _AALog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v59 = absTimeNS();
        if (v59 == -1)
        {
          v60 = INFINITY;
        }

        else
        {
          v60 = v59 / 1000000000.0;
        }

        *buf = 134218242;
        v81 = v60;
        v82 = 2112;
        v83 = @"allowedHIDEventsForRemoteEvent";
        _os_log_error_impl(&dword_1BB2EF000, v48, OS_LOG_TYPE_ERROR, "%13.5f: failed to decode %@", buf, 0x16u);
      }
    }

    v47 = 0;
    v75 = 1;
    goto LABEL_48;
  }

  v93 = 0u;
  v94 = 0u;
  memset(v92, 0, sizeof(v92));
  v32 = v31;
  v33 = [v32 countByEnumeratingWithState:v92 objects:v88 count:16];
  if (v33)
  {
    v34 = **&v92[16];
    v72 = v32;
    v67 = **&v92[16];
    while (2)
    {
      v35 = 0;
      v68 = v33;
      do
      {
        if (**&v92[16] != v34)
        {
          v36 = v35;
          objc_enumerationMutation(v32);
          v35 = v36;
        }

        v69 = v35;
        v37 = *(*&v92[8] + 8 * v35);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_43:

          goto LABEL_44;
        }

        v38 = v37;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v39 = v38;
        v40 = [v39 countByEnumeratingWithState:&v76 objects:&v84 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v77;
          v70 = v31;
          v71 = v30;
          while (2)
          {
            for (j = 0; j != v41; ++j)
            {
              if (*v77 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = *(*(&v76 + 1) + 8 * j);
              if (objc_opt_isKindOfClass())
              {
                v45 = [v39 objectForKeyedSubscript:v44];
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  continue;
                }
              }

              v14 = 0x1EDC16000uLL;
              v31 = v70;
              v30 = v71;
              v32 = v72;
              goto LABEL_43;
            }

            v41 = [v39 countByEnumeratingWithState:&v76 objects:&v84 count:16];
            v14 = 0x1EDC16000;
            v31 = v70;
            v30 = v71;
            if (v41)
            {
              continue;
            }

            break;
          }
        }

        v35 = v69 + 1;
        v32 = v72;
        v34 = v67;
      }

      while (v69 + 1 != v68);
      v33 = [v72 countByEnumeratingWithState:v92 objects:v88 count:16];
      if (v33)
      {
        continue;
      }

      break;
    }
  }

  v47 = v32;
LABEL_48:

  allowedHIDEventsForRemoteEvent = v5->_allowedHIDEventsForRemoteEvent;
  v5->_allowedHIDEventsForRemoteEvent = v47;

  v50 = decodeStringSet(v26, &v75, @"digitizerDisplayUUIDs");
  digitizerDisplayUUIDs = v5->_digitizerDisplayUUIDs;
  v5->_digitizerDisplayUUIDs = v50;

  v52 = decodeStringSet(v26, &v75, @"keyboardDisplayUUIDs");
  keyboardDisplayUUIDs = v5->_keyboardDisplayUUIDs;
  v5->_keyboardDisplayUUIDs = v52;

  v54 = decodeStringSet(v26, &v75, @"buttonDisplayUUIDs");
  buttonDisplayUUIDs = v5->_buttonDisplayUUIDs;
  v5->_buttonDisplayUUIDs = v54;

  v5->_nonSampledAttentionLostTimeoutEnable = decodeUInt64(v26, &v75, @"nonSampledAttentionLostTimeoutEnable") != 0;
  v5->_nonSampledAttentionLostTimeout = decodeDouble(v26, &v75, @"nonSampledAttentionLostTimeout");
  if ((v75 & 1) == 0)
  {
LABEL_53:
    v57 = v5;
    goto LABEL_54;
  }

  if (*(v14 + 2416) >= 3)
  {
    v56 = _AALog();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v63 = absTimeNS();
      if (v63 == -1)
      {
        v64 = INFINITY;
      }

      else
      {
        v64 = v63 / 1000000000.0;
      }

      v65 = objc_opt_class();
      v66 = NSStringFromClass(v65);
      *v88 = 134218242;
      v89 = v64;
      v90 = 2112;
      v91 = v66;
      _os_log_error_impl(&dword_1BB2EF000, v56, OS_LOG_TYPE_ERROR, "%13.5f: failed to decode %@", v88, 0x16u);
    }
  }

  v57 = 0;
LABEL_54:

  return v57;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_tagIndex];
  [coderCopy encodeObject:v5 forKey:@"tagIndex"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_notificationMask];
  [coderCopy encodeObject:v6 forKey:@"notificationMask"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_eventMask];
  [coderCopy encodeObject:v7 forKey:@"eventMask"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_attentionLostEventMask];
  [coderCopy encodeObject:v8 forKey:@"attentionLostEventMask"];

  [coderCopy encodeDouble:@"samplingInterval" forKey:self->_samplingInterval];
  [coderCopy encodeDouble:@"samplingDelay" forKey:self->_samplingDelay];
  [coderCopy encodeBool:self->_sampleWhileAbsent forKey:@"sampleWhileAbsent"];
  [coderCopy encodeBool:self->_retroactiveTimeoutMode forKey:@"retroactiveTimeoutMode"];
  [coderCopy encodeBool:self->_pollingFilter forKey:@"pollingFilter"];
  [coderCopy encodeBool:self->_continuousFaceDetectMode forKey:@"continuousFaceDetectMode"];
  [coderCopy encodeBool:self->_activateEyeRelief forKey:@"activateEyeRelief"];
  [coderCopy encodeBool:self->_activateAttentionDetection forKey:@"activateAttentionDetection"];
  [coderCopy encodeBool:self->_activateMotionDetect forKey:@"activateMotionDetect"];
  [coderCopy encodeBool:self->_unityStream forKey:@"unityStream"];
  [coderCopy encodeObject:self->_attentionLostTimeouts forKey:@"attentionLostTimeouts"];
  [coderCopy encodeObject:self->_allowedHIDEventsForRemoteEvent forKey:@"allowedHIDEventsForRemoteEvent"];
  [coderCopy encodeObject:self->_digitizerDisplayUUIDs forKey:@"digitizerDisplayUUIDs"];
  [coderCopy encodeObject:self->_keyboardDisplayUUIDs forKey:@"keyboardDisplayUUIDs"];
  [coderCopy encodeObject:self->_buttonDisplayUUIDs forKey:@"buttonDisplayUUIDs"];
  [coderCopy encodeDouble:@"nonSampledAttentionLostTimeout" forKey:self->_nonSampledAttentionLostTimeout];
  LOBYTE(v9) = self->_nonSampledAttentionLostTimeoutEnable;
  [coderCopy encodeDouble:@"nonSampledAttentionLostTimeoutEnable" forKey:v9];
}

+ (void)cancelNotification:(AWNotification_s *)notification
{
  v4 = +[AWAttentionAwarenessClientConfig sharedClientConfig];
  [v4 cancelNotification:notification];
}

+ (AWNotification_s)notifySupportedEventsChangedWithQueue:(id)queue block:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  v7 = +[AWAttentionAwarenessClientConfig sharedClientConfig];
  v8 = [v7 notifySupportedEventsChangedWithQueue:queueCopy block:blockCopy];

  return v8;
}

+ (id)supportedEventsString
{
  supportedEvents = [self supportedEvents];

  return getEventMaskDescription(supportedEvents);
}

+ (unint64_t)supportedEvents
{
  v2 = +[AWAttentionAwarenessClientConfig sharedClientConfig];
  supportedEvents = [v2 supportedEvents];

  return supportedEvents;
}

@end
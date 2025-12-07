@interface _GCWebKitUserIntentRecognizer
- (_GCWebKitUserIntentRecognizer)initWithPhysicalInputProfile:(id)profile thumbstickUserIntentHandler:(id)handler slidingWindowTotalDuration:(double)duration slidingWindowSegmentDuration:(double)segmentDuration deadzone:(double)deadzone sensitivity:(int)sensitivity;
- (void)processChangedElements:(id)elements atTimestamp:(unint64_t)timestamp;
@end

@implementation _GCWebKitUserIntentRecognizer

- (_GCWebKitUserIntentRecognizer)initWithPhysicalInputProfile:(id)profile thumbstickUserIntentHandler:(id)handler slidingWindowTotalDuration:(double)duration slidingWindowSegmentDuration:(double)segmentDuration deadzone:(double)deadzone sensitivity:(int)sensitivity
{
  v42 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  handlerCopy = handler;
  v31.receiver = self;
  v31.super_class = _GCWebKitUserIntentRecognizer;
  v16 = [(_GCWebKitUserIntentRecognizer *)&v31 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_physicalInputProfile, profileCopy);
    v18 = [handlerCopy copy];
    thumbstickUserIntentHandler = v17->_thumbstickUserIntentHandler;
    v17->_thumbstickUserIntentHandler = v18;

    v20 = objc_opt_new();
    trackedInputs = v17->_trackedInputs;
    v17->_trackedInputs = v20;

    v17->_slidingWindowTotalDuration = duration;
    v17->_slidingWindowSegmentDuration = segmentDuration;
    v17->_deadzoneSquared = deadzone * deadzone;
    v17->_distanceThreshold = ((1.0 / sensitivity) * 6.0);
    isInternalBuild = gc_isInternalBuild(v22, v23);
    if (isInternalBuild)
    {
      v26 = getGCLogger(isInternalBuild);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        slidingWindowTotalDuration = v17->_slidingWindowTotalDuration;
        slidingWindowSegmentDuration = v17->_slidingWindowSegmentDuration;
        deadzoneSquared = v17->_deadzoneSquared;
        distanceThreshold = v17->_distanceThreshold;
        *buf = 138413314;
        v33 = profileCopy;
        v34 = 2048;
        v35 = slidingWindowTotalDuration;
        v36 = 2048;
        v37 = slidingWindowSegmentDuration;
        v38 = 2048;
        v39 = deadzoneSquared;
        v40 = 1024;
        v41 = distanceThreshold;
        _os_log_impl(&dword_1D2CD5000, v26, OS_LOG_TYPE_INFO, "Registering _GCWebKitUserIntentRecognizer for %@\n\tslidingWindowTotalDuration = %f\n\tslidingWindowSegmentDuration = %f\n\tdeadzoneSquared = %f\n\tdistanceThreshold = %d", buf, 0x30u);
      }
    }
  }

  return v17;
}

- (void)processChangedElements:(id)elements atTimestamp:(unint64_t)timestamp
{
  v67 = *MEMORY[0x1E69E9840];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = elements;
  v57 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (v57)
  {
    v56 = *v63;
    do
    {
      v5 = 0;
      do
      {
        if (*v63 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v62 + 1) + 8 * v5);
        primaryAlias = [v6 primaryAlias];
        if ([primaryAlias isEqualToString:@"Left Thumbstick"])
        {
        }

        else
        {
          primaryAlias2 = [v6 primaryAlias];
          v9 = [primaryAlias2 isEqualToString:@"Right Thumbstick"];

          if (!v9)
          {
            goto LABEL_46;
          }
        }

        v10 = v6;
        trackedInputs = self->_trackedInputs;
        primaryAlias3 = [v10 primaryAlias];
        v13 = [(NSMutableDictionary *)trackedInputs objectForKey:primaryAlias3];
        LODWORD(trackedInputs) = v13 == 0;

        if (trackedInputs)
        {
          v14 = objc_opt_new();
          v15 = self->_trackedInputs;
          primaryAlias4 = [v10 primaryAlias];
          [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:primaryAlias4];
        }

        v17 = self->_trackedInputs;
        primaryAlias5 = [v10 primaryAlias];
        v19 = [(NSMutableDictionary *)v17 objectForKeyedSubscript:primaryAlias5];

        v20 = mach_absolute_time();
        if (timestampToSecondsMultiplier_onceToken != -1)
        {
          [_GCUserIntentInputEvent initWithXValue:yValue:timestamp:deadzoneSquared:];
        }

        v21 = *&timestampToSecondsMultiplier_multiplier * v20;
        for (i = 0; [v19 count] > i; ++i)
        {
          v23 = [v19 objectAtIndexedSubscript:i];
          [v23 timestampInSeconds];
          v25 = v24;

          v26 = v21 - v25;
          if (self->_slidingWindowTotalDuration >= v26)
          {
            break;
          }
        }

        [v19 removeObjectsInRange:{0, i}];
        lastObject = [v19 lastObject];
        [lastObject timestampInSeconds];
        v29 = v28;
        if (![v19 count] || (v30 = v21 - v29, v21 - v29 >= self->_slidingWindowSegmentDuration))
        {
          v31 = [_GCUserIntentInputEvent alloc];
          xAxis = [v10 xAxis];
          [xAxis value];
          v34 = v33;
          yAxis = [v10 yAxis];
          [yAxis value];
          LODWORD(v37) = v36;
          LODWORD(v38) = v34;
          v39 = [(_GCUserIntentInputEvent *)v31 initWithXValue:timestamp yValue:v38 timestamp:v37 deadzoneSquared:self->_deadzoneSquared];

          if ([(_GCUserIntentInputEvent *)v39 octant]!= -1)
          {
            if (![v19 count] || lastObject && (v40 = objc_msgSend(lastObject, "octant"), v40 != -[_GCUserIntentInputEvent octant](v39, "octant")))
            {
              [v19 addObject:v39];
            }
          }
        }

        if ([v19 count] >= 2)
        {
          if ([v19 count] == 2)
          {
            v41 = 0;
          }

          else
          {
            v42 = 0;
            v41 = 0;
            do
            {
              v43 = [v19 objectAtIndexedSubscript:v42];
              v44 = [v19 objectAtIndexedSubscript:++v42];
              octant = [v43 octant];
              octant2 = [v44 octant];
              if (octant2 <= octant)
              {
                v47 = octant;
              }

              else
              {
                v47 = octant2;
              }

              if (octant2 >= octant)
              {
                v48 = octant;
              }

              else
              {
                v48 = octant2;
              }

              if (v47 - v48 >= 5)
              {
                v49 = v48 + 8;
              }

              else
              {
                v49 = v47;
              }

              if (v47 - v48 < 5)
              {
                LODWORD(v47) = v48;
              }

              v50 = v49 - v47;
              if (v50 >= 0)
              {
                v51 = v50;
              }

              else
              {
                v51 = -v50;
              }

              v41 += v51;
            }

            while ([v19 count] - 2 > v42);
          }

          if (v41 >= self->_distanceThreshold)
          {
            objc_initWeak(&location, self);
            WeakRetained = objc_loadWeakRetained(&self->_physicalInputProfile);
            handlerQueue = [WeakRetained handlerQueue];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __68___GCWebKitUserIntentRecognizer_processChangedElements_atTimestamp___block_invoke;
            block[3] = &unk_1E8419C38;
            objc_copyWeak(&v60, &location);
            block[4] = v10;
            v59 = v19;
            dispatch_async(handlerQueue, block);

            objc_destroyWeak(&v60);
            objc_destroyWeak(&location);
          }
        }

LABEL_46:
        ++v5;
      }

      while (v5 != v57);
      v57 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
    }

    while (v57);
  }
}

@end
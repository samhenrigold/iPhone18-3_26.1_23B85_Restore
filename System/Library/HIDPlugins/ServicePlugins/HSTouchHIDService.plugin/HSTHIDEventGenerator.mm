@interface HSTHIDEventGenerator
- (BOOL)handleHSDecode:(void *)decode;
- (BOOL)handleHSEncode:(void *)encode;
- (HSTHIDEventGenerator)initWithConfig:(const HSTHIDEventGeneratorConfig *)config;
- (id).cxx_construct;
- (void)_cancelActiveContacts:(int64_t)contacts;
- (void)_handleContactFrame:(id)frame;
- (void)_handleCopyEvent:(id)event;
- (void)_handleDebugStateEvent:(id)event;
- (void)_handleGetPropertyEvent:(id)event;
- (void)_handleHIDEvents:(id)events;
- (void)_handleResetEvent:(id)event;
- (void)_handleSetPropertyEvent:(id)event;
- (void)_handleTouchModeEvent:(id)event;
- (void)_handleVendorEvent:(id)event;
- (void)_handleWakeSystemEvent:(id)event;
- (void)_logContact:(Contact *)contact ofType:(int)type withFrame:(id)frame;
- (void)_saveLastTouchSystemReady:(id)ready;
- (void)handleConsume:(id)consume;
@end

@implementation HSTHIDEventGenerator

- (HSTHIDEventGenerator)initWithConfig:(const HSTHIDEventGeneratorConfig *)config
{
  v10.receiver = self;
  v10.super_class = HSTHIDEventGenerator;
  v4 = [(HSStage *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_config = *config;
    v4->_touchMode = 1;
    v6 = objc_opt_new();
    hidStats = v5->_hidStats;
    v5->_hidStats = v6;

    v8 = v5;
  }

  return v5;
}

- (void)_saveLastTouchSystemReady:(id)ready
{
  readyCopy = ready;
  v5 = readyCopy[1];
  for (i = readyCopy[2]; v5 != i; ++v5)
  {
    v7 = *v5;
    v8 = *v5;
    if ([v8 type] == 1 && objc_msgSend(v8, "integerValueForField:", 0x10000) == &loc_FF60 && objc_msgSend(v8, "integerValueForField:", 65537) == &dword_8 + 1)
    {
      objc_storeStrong(&self->_lastTouchSystemReadyEvent, v7);
      v9 = [v8 dataValueForField:65540];
      v11 = MTLoggingPlugin(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = "YES";
        if (!*v9)
        {
          v12 = "NO";
        }

        *buf = 136446210;
        v14 = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Touch System Ready = %{public}s", buf, 0xCu);
      }
    }
  }
}

- (void)_handleHIDEvents:(id)events
{
  eventsCopy = events;
  if (!self->_disableEvents)
  {
    [(HSTHIDEventGenerator *)self _saveLastTouchSystemReady:eventsCopy];
    [(HSTHIDEventStatistics *)self->_hidStats handleHIDEvents:eventsCopy];
    v5.receiver = self;
    v5.super_class = HSTHIDEventGenerator;
    [(HSStage *)&v5 handleConsume:eventsCopy];
  }
}

- (void)_logContact:(Contact *)contact ofType:(int)type withFrame:(id)frame
{
  frameCopy = frame;
  v10 = frameCopy;
  contactID = contact->contactID;
  v12 = &self->_prevUnmodifiedContacts[contactID];
  contactStateCounts = self->_contactStateCounts;
  if (__PAIR64__(v12->stage, v12->contactID) == __PAIR64__(contact->stage, contactID) && v12->finger == contact->finger && v12->flags == contact->flags)
  {
    v14 = contactStateCounts[contactID] + 1;
    contactStateCounts[contactID] = v14;
    HIDWORD(v15) = -286331153 * v14;
    LODWORD(v15) = -286331153 * v14;
    if ((v15 >> 1) <= 0x8888888)
    {
      v16 = MTLoggingPlugin(frameCopy, v9);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        frameNumber = [v10 frameNumber];
        firmwareTimestamp = [v10 firmwareTimestamp];
        v19 = contactStateCounts[contactID];
        v20 = [NSString stringWithFormat:@"HSTContact{ID:%u, Stage:%u, Finger:%u, Flags:0x%08llX}", contact->contactID, contact->stage, contact->finger, contact->flags];
        *buf = 134219010;
        v30 = frameNumber;
        v31 = 2048;
        v32 = (firmwareTimestamp / 1000000.0);
        v33 = 1024;
        *v34 = v19;
        *&v34[4] = 2114;
        *&v34[6] = v20;
        v35 = 1024;
        typeCopy = type;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "[F%llu @%f] Contact seen for %d frames: state %{public}@, type %u", buf, 0x2Cu);
      }
    }
  }

  else
  {
    v21 = MTLoggingPlugin(frameCopy, v9);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      frameNumber2 = [v10 frameNumber];
      firmwareTimestamp2 = [v10 firmwareTimestamp];
      v24 = [NSString stringWithFormat:@"HSTContact{ID:%u, Stage:%u, Finger:%u, Flags:0x%08llX}", contact->contactID, contact->stage, contact->finger, contact->flags];
      *buf = 134219010;
      v25 = contactStateCounts[contactID];
      v30 = frameNumber2;
      v31 = 2048;
      v32 = (firmwareTimestamp2 / 1000000.0);
      v33 = 2114;
      *v34 = v24;
      *&v34[8] = 1024;
      *&v34[10] = type;
      v35 = 1024;
      typeCopy = v25;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "[F%llu @%f] Contact state changed: %{public}@, type %u, previous state count %d", buf, 0x2Cu);
    }

    contactStateCounts[contactID] = 1;
  }

  v26 = *&contact->contactID;
  v27 = *&contact->position.x;
  v28 = *&contact->azimuth;
  *&v12->velocity.y = *&contact->velocity.y;
  *&v12->azimuth = v28;
  *&v12->contactID = v26;
  *&v12->position.x = v27;
}

- (void)_handleContactFrame:(id)frame
{
  frameCopy = frame;
  v3 = HSUtil::MachTimeFromNanoseconds([frameCopy hsTimestamp]);
  if (frameCopy[120] != 1)
  {
    goto LABEL_19;
  }

  v5 = frameCopy[113];
  if (v5 == 10)
  {
    if ((self->_touchMode & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if (v5 == 9)
  {
    if ((self->_touchMode & 0x100) == 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v6 = 1;
    v7 = "enabled";
    goto LABEL_11;
  }

  if (v5 == 8 && (self->_touchMode & 0x80) != 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v6 = 2;
  v7 = "disabled";
LABEL_11:
  v8 = MTLoggingPlugin(v3, v4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(frameCopy + 29);
    buf[0] = 67109376;
    buf[1] = v5;
    LOWORD(buf[2]) = 1024;
    *(&buf[2] + 2) = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Tritium3 frame received: wake reason 0x%02X, gesture recognition time %d ms", buf, 0xEu);
  }

  v12 = *(frameCopy + 6);
  for (i = *(frameCopy + 7); v12 != i; v12 += 64)
  {
    if (v12[1] - 1 <= 3)
    {
      v14 = MTLoggingPlugin(v10, v11);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *v12;
        buf[0] = 67109378;
        buf[1] = v15;
        LOWORD(buf[2]) = 2082;
        *(&buf[2] + 2) = v7;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Contact %u is a tritium3 contact, setting contact type to tritium3 %{public}s", buf, 0x12u);
      }

      self->_contactTypes[*v12] = v6;
    }
  }

LABEL_19:
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  memset(buf, 0, sizeof(buf));
  v16 = *(frameCopy + 7);
  if (*(frameCopy + 6) >= v16)
  {
    v72 = 0;
    v73 = 0;
    v71 = 0;
  }

  else
  {
    v17 = 0;
    v96 = 0;
    v95 = 0;
    v97 = 0;
    v98 = 0;
    v18 = -v16;
    selfCopy5 = self;
    do
    {
      v21 = (v16 + v17 - 64);
      v20 = *v21;
      if (v20 >= 0x20)
      {
        __assert_rtn("[HSTHIDEventGenerator _handleContactFrame:]", "HSTHIDEventGenerator.mm", 332, "c.contactID < Contact::MaxContactCount");
      }

      contactTypes = selfCopy5->_contactTypes;
      v23 = [(HSTHIDEventGenerator *)selfCopy5 _logContact:v16 + v17 - 64 ofType:selfCopy5->_contactTypes[v20] withFrame:frameCopy];
      v25 = &selfCopy5->_contacts[v20];
      if ((selfCopy5->_touchMode & 1) == 0 && contactTypes[v20] != 1)
      {
        if (v25->contactID || v25->stage || v25->finger || v25->flags)
        {
          v26 = MTLoggingPlugin(v23, v24);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = *v21;
            *v104 = 67109120;
            *&v104[4] = v27;
            _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Contact %u is not tritium3 enabled and the screen is off, setting stage to NotTracking", v104, 8u);
          }

          selfCopy5 = self;
        }

        *(v16 + v17 - 63) = 0;
      }

      v28 = v16 + v17;
      if (*(v16 + v17 - 62) - 1 >= 5)
      {
        if (v25->contactID || v25->stage || v25->finger || v25->flags)
        {
          v29 = MTLoggingPlugin(v23, v24);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = *v21;
            v31 = *(v28 - 62);
            *v104 = 67109376;
            *&v104[4] = v30;
            v105 = 1024;
            LODWORD(v106) = v31;
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "Contact %u has an invalid finger id (%d), setting stage to NotTracking", v104, 0xEu);
          }

          selfCopy5 = self;
        }

        *(v16 + v17 - 63) = 0;
      }

      stage = v25->stage;
      v33 = stage - 1;
      if ((stage - 1) >= 4u && *(v16 + v17 - 63) - 1 > 3 || contactTypes[v20] == 2)
      {
        if (v25->contactID | stage || v25->finger || v25->flags)
        {
          v34 = MTLoggingPlugin(v23, v24);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = "cType == Tritium3DisabledContact";
            if (v25->stage - 1 >= 4)
            {
              v35 = "cType == Tritium3DisabledContact";
              if (*(v16 + v17 - 63) - 1 >= 4)
              {
                v35 = "!inRange -> !inRange";
              }
            }

            v36 = *v21;
            *v104 = 67109378;
            *&v104[4] = v36;
            v105 = 2082;
            v106 = v35;
            _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Erasing contact %u, reason: %{public}s", v104, 0x12u);
          }

          selfCopy5 = self;
        }

        v37 = 0;
        *&v25->contactID = 0;
        v25->flags = 0;
        v25->position = 0;
        v25->needsVelocitiesCalculated = 0;
        *&v25->velocity.x = 0u;
        *&v25->minorRadius = 0u;
        v25->tilt = 0.0;
        v38 = (v16 + v17);
        if (*(v16 + v17 - 63) - 1 <= 3)
        {
          v37 = contactTypes[v20];
        }

        contactTypes[v20] = v37;
        v39 = v38 - 64;
        v40 = *(frameCopy + 7);
        v41 = &v40[v18];
        if (v38 != v40)
        {
          memmove(v38 - 64, v38, &v40[v18]);
        }

        *(frameCopy + 7) = &v41[v39];
      }

      else
      {
        v94 = v16 + v17;
        v42 = *(v16 + v17 - 63);
        if ((stage - 3) < 2 != (v42 - 3) < 2)
        {
          v43 = ((stage - 1) < 4u) ^ ((v42 - 1) < 4) | 2;
        }

        else
        {
          v43 = ((stage - 1) < 4u) ^ ((v42 - 1) < 4);
        }

        if ((stage - 1) <= 3u && v42 == 0)
        {
          v45 = MTLoggingPlugin(v23, v24);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = *v21;
            *v104 = 67109120;
            *&v104[4] = v46;
            _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "Contact %u transitioned from inRange -> NotTracking, canceling contact", v104, 8u);
          }

          v43 |= 0x80u;
          v33 = v25->stage - 1;
        }

        if (v33 <= 3u)
        {
          v47 = eventFlagsFromContact(v25);
          v48 = eventFlagsFromContact((v16 + v17 - 64));
          v49 = v16 + v17;
          if (v25->finger == *(v28 - 62))
          {
            v50 = v43;
          }

          else
          {
            v50 = v43 | 0x20;
          }

          v52 = *(v49 - 48);
          v51 = *(v49 - 44);
          if (v25->position.x == v52 && v25->position.y == v51)
          {
            v54 = v50;
          }

          else
          {
            v54 = v50 | 4;
          }

          if (v47 == v48 && ((*(v16 + v17 - 56) ^ LODWORD(v25->flags)) & 0x4000) == 0)
          {
            v43 = v54;
          }

          else
          {
            v43 = v54 | 0x40;
          }
        }

        v56 = *v21;
        buf[v56] = v43;
        v57 = *(v94 - 63);
        v58 = v97;
        if ((v57 - 3) < 2)
        {
          v58 = v97 + 1;
        }

        v97 = v58;
        v59 = v95;
        if ((v57 - 1) < 4)
        {
          v59 = v95 + 1;
        }

        v95 = v59;
        if ((v57 - 1) >= 4)
        {
          v63 = 0;
          v61 = 0;
          v60 = 0;
          LOBYTE(v57) = 0;
          LOBYTE(v56) = 0;
          v65 = 0;
          v67 = 0;
          v68 = 0uLL;
          v66 = 0uLL;
          v64 = 0;
          v62 = v93;
        }

        else
        {
          v60 = *(v28 - 62);
          v61 = *(v16 + v17 - 61);
          v62 = *(v16 + v17 - 60);
          v63 = *(v16 + v17 - 56);
          v64 = *(v16 + v17 - 48);
          v65 = *(v16 + v17 - 40);
          *v104 = *(v16 + v17 - 39);
          v104[2] = *(v16 + v17 - 37);
          v66 = *(v16 + v17 - 36);
          v67 = *(v16 + v17 - 20);
          v68 = *(v16 + v17 - 16);
        }

        v25->contactID = v56;
        v25->stage = v57;
        v25->finger = v60;
        v25->hand = v61;
        *(&v25->hand + 1) = v62;
        v25->flags = v63;
        v25->position = v64;
        v25->needsVelocitiesCalculated = v65;
        *(&v25->needsVelocitiesCalculated + 1) = *v104;
        *(&v25->needsVelocitiesCalculated + 3) = v104[2];
        *&v25->velocity.x = v66;
        v25->minorRadius = v67;
        *&v25->azimuth = v68;
        v93 = v62;
        if (*(v94 - 63) - 1 > 3)
        {
          v69 = 0;
        }

        else
        {
          v69 = contactTypes[v20];
        }

        v96 |= v43;
        v98 += v43 >> 7;
        contactTypes[v20] = v69;
        selfCopy5 = self;
      }

      v70 = *(frameCopy + 6);
      v17 -= 64;
      v18 += 64;
    }

    while (v70 < v16 + v17);
    v71 = v96 & 0xFFFFFF7F;
    v72 = v95 != 0;
    v73 = v97 != 0;
    if (v98)
    {
      v71 |= (v98 == (*(frameCopy + 7) - v70) >> 6) << 7;
    }
  }

  initialToCurrentFrameDeltaMs_low = LOBYTE(self->_frameMetadata.tritium.var0.__val_.initialToCurrentFrameDeltaMs);
  if ((initialToCurrentFrameDeltaMs_low & 1) == 0)
  {
    v75 = frameCopy[120];
    goto LABEL_108;
  }

  v75 = frameCopy[120];
  if (v75 != 1)
  {
LABEL_108:
    v76 = (initialToCurrentFrameDeltaMs_low != v75) << 6;
    goto LABEL_109;
  }

  if (initialToCurrentFrameDeltaMs_low == 1 && self->_frameMetadata.tritium.var0.__val_.version == frameCopy[112] && *(&self->_frameMetadata.tritium.var0.__null_state_ + 1) == frameCopy[113] && self->_frameMetadata.tritium.var0.__val_.gestureType == *(frameCopy + 29))
  {
    v76 = 0;
  }

  else
  {
    v76 = 64;
  }

LABEL_109:
  v77 = v76 | v71;
  v78 = *(frameCopy + 72);
  v79 = *(frameCopy + 88);
  v80 = *(frameCopy + 104);
  *(&self->_frameMetadata.tritium + 4) = *(frameCopy + 116);
  self->_frameMetadata.image.var0 = v79;
  *&self->_frameMetadata.image.__engaged_ = v80;
  *&self->_frameMetadata.surfaceSize.var0.__null_state_ = v78;
  contacts = *(frameCopy + 6);
  v82 = *(frameCopy + 7);
  if (contacts == v82 || v77 == 0)
  {
    v84 = 0;
  }

  else
  {
    if (v72)
    {
      v85 = v82 - contacts;
    }

    else
    {
      contacts = self->_contacts;
      v85 = 32;
    }

    getAveragePositionFromContacts(contacts, v85);
    v91 = v73 | 0x300000000;
    *v104 = IOHIDEventCreateDigitizerEvent();
    v87 = *(frameCopy + 6);
    for (j = *(frameCopy + 7); v87 != j; ++v87)
    {
      eventFlagsFromContact(v87);
      v92 = 0;
      *&v91 = v87->zdensity;
      DigitizerFingerEventWithQuality = IOHIDEventCreateDigitizerFingerEventWithQuality();
      IOHIDEventSetPhase();
      IOHIDEventAppendEvent();
    }

    IOHIDEventSetIntegerValue();
    if (frameCopy[120] == 1)
    {
      v103 = frameCopy[113];
      VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
      IOHIDEventSetPhase();
      IOHIDEventAppendEvent();
    }

    v84 = objc_opt_new();
    std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v84 + 1, v104);
  }

  selfCopy7 = self;
  if ((*(frameCopy + 10) & 1) != self->_largeBodyActive)
  {
    self->_largeBodyActive = *(frameCopy + 10) & 1;
    if (!v84)
    {
      v84 = objc_opt_new();
    }

    ProximtyEvent = IOHIDEventCreateProximtyEvent();
    std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v84 + 1, &ProximtyEvent);

    selfCopy7 = self;
  }

  v101.receiver = selfCopy7;
  v101.super_class = HSTHIDEventGenerator;
  [(HSStage *)&v101 handleConsume:frameCopy, v91, v92];
  if (v84)
  {
    [(HSTHIDEventGenerator *)selfCopy7 _handleHIDEvents:v84];
  }
}

- (void)_handleWakeSystemEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    v15 = +[NSAssertionHandler currentHandler];
    v16 = [NSString stringWithUTF8String:"[HSTHIDEventGenerator _handleWakeSystemEvent:]"];
    [v15 handleFailureInFunction:v16 file:@"HSTHIDEventGenerator.mm" lineNumber:546 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  v22.receiver = self;
  v22.super_class = HSTHIDEventGenerator;
  [(HSStage *)&v22 handleConsume:eventCopy];
  HSUtil::MachTimeFromNanoseconds([eventCopy hsTimestamp]);
  v5 = objc_opt_new();
  if ((eventCopy[24] & 1) == 0)
  {
    if ((eventCopy[29] & 1) == 0)
    {
      if ((eventCopy[40] & 1) == 0 && (eventCopy[52] & 1) == 0)
      {
        if ((self->_touchMode & 0x10) == 0)
        {
          goto LABEL_26;
        }

        MotionGestureEvent = IOHIDEventCreateMotionGestureEvent();
        std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v5 + 1, &MotionGestureEvent);
        v12 = MotionGestureEvent;
        goto LABEL_25;
      }

      v6 = 0;
      goto LABEL_12;
    }

    v6 = 0;
LABEL_8:
    v7 = (self->_touchMode >> 5) & 1;
    goto LABEL_13;
  }

  v6 = (self->_touchMode >> 4) & 1;
  if (eventCopy[29])
  {
    goto LABEL_8;
  }

LABEL_12:
  v7 = 0;
LABEL_13:
  if (eventCopy[40] == 1)
  {
    v8 = (self->_touchMode >> 6) & 1;
  }

  else
  {
    v8 = 0;
  }

  if (eventCopy[52] == 1)
  {
    v9 = (self->_touchMode >> 11) & 1;
    if (!v7)
    {
      goto LABEL_18;
    }

LABEL_21:
    NavigationSwipeEvent = IOHIDEventCreateNavigationSwipeEvent();
    std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v5 + 1, &NavigationSwipeEvent);
    v12 = NavigationSwipeEvent;
LABEL_25:

    goto LABEL_26;
  }

  v9 = 0;
  if (v7)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (v6)
  {
    v10 = IOHIDEventCreateMotionGestureEvent();
    v17 = 0;
    DigitizerEvent = IOHIDEventCreateDigitizerEvent();
    IOHIDEventAppendEvent();
    v12 = v10;
    v20 = v12;
    std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v5 + 1, &v20);
    v13 = v20;
LABEL_24:

    goto LABEL_25;
  }

  if ((v8 | v9))
  {
    v14 = IOHIDEventCreateMotionGestureEvent();
    v17 = 0;
    DigitizerEvent = IOHIDEventCreateDigitizerEvent();
    IOHIDEventAppendEvent();
    v12 = v14;
    v19 = v12;
    std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v5 + 1, &v19);
    v13 = v19;
    goto LABEL_24;
  }

LABEL_26:
  [(HSTHIDEventGenerator *)self _handleHIDEvents:v5, v17];
}

- (void)_handleDebugStateEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    v7 = +[NSAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"[HSTHIDEventGenerator _handleDebugStateEvent:]"];
    [v7 handleFailureInFunction:v8 file:@"HSTHIDEventGenerator.mm" lineNumber:608 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  *(eventCopy + 16) = 1;
  v9[0] = @"Stage";
  v9[1] = @"Generation Stats";
  v10[0] = @"HIDEventGenerator";
  stats = [(HSTHIDEventStatistics *)self->_hidStats stats];
  v10[1] = stats;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  [*(eventCopy + 3) addObject:v6];
}

- (void)_cancelActiveContacts:(int64_t)contacts
{
  v4 = objc_opt_new();
  v33 = v4;
  v5 = [v4 hsSetTimestamp:contacts];
  v7 = 200;
  v8 = 2048;
  do
  {
    v9 = self + v7;
    if (*(&self->super.super.isa + v7 + 1) - 1 <= 3)
    {
      v10 = *v9;
      v11 = v9[2];
      v12 = v9[3];
      v13 = v9[4];
      v14 = v9[5];
      v15 = v9[6];
      v34 = v9[7];
      v35 = *(v9 + 1);
      v36 = *(v9 + 4);
      v37 = *(v9 + 5);
      v38 = v9[24];
      v39 = v9[25];
      v40 = v9[26];
      v41 = v9[27];
      v42 = *(v9 + 7);
      v43 = *(v9 + 8);
      v44 = *(v9 + 9);
      v45 = *(v9 + 10);
      v46 = *(v9 + 11);
      v17 = *(v9 + 12);
      v16 = *(v9 + 13);
      v19 = *(v9 + 14);
      v18 = *(v9 + 15);
      v20 = MTLoggingPlugin(v5, v6);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v49 = v10;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Canceling contact %u, setting stage to NotTracking", buf, 8u);
      }

      v21 = (v4 + 6);
      v22 = v4[7];
      v23 = v4[8];
      if (v22 >= v23)
      {
        v25 = (v22 - *v21) >> 6;
        v26 = v25 + 1;
        if ((v25 + 1) >> 58)
        {
          std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
        }

        v27 = v23 - *v21;
        if (v27 >> 5 > v26)
        {
          v26 = v27 >> 5;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFC0)
        {
          v28 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HSTPipeline::Contact>>(v21, v28);
        }

        v29 = v25 << 6;
        *v29 = v10;
        *(v29 + 1) = 0;
        *(v29 + 2) = v11;
        *(v29 + 3) = v12;
        *(v29 + 4) = v13;
        *(v29 + 5) = v14;
        *(v29 + 6) = v15;
        *(v29 + 7) = v34;
        *(v29 + 8) = v35;
        *(v29 + 16) = v36;
        *(v29 + 20) = v37;
        *(v29 + 24) = v38;
        *(v29 + 25) = v39;
        *(v29 + 26) = v40;
        *(v29 + 27) = v41;
        *(v29 + 28) = v42;
        *(v29 + 32) = v43;
        *(v29 + 36) = v44;
        *(v29 + 40) = v45;
        *(v29 + 44) = v46;
        *(v29 + 48) = v17;
        *(v29 + 52) = v16;
        v24 = (v25 << 6) + 64;
        v30 = *v21;
        v31 = v21[1] - *v21;
        v32 = (v29 - v31);
        *(v29 + 56) = v19;
        *(v29 + 60) = v18;
        memcpy((v29 - v31), v30, v31);
        v5 = *v21;
        *v21 = v32;
        v21[1] = v24;
        v21[2] = 0;
        if (v5)
        {
          operator delete(v5);
        }
      }

      else
      {
        *v22 = v10;
        *(v22 + 1) = 0;
        *(v22 + 2) = v11;
        *(v22 + 3) = v12;
        *(v22 + 4) = v13;
        *(v22 + 5) = v14;
        *(v22 + 6) = v15;
        *(v22 + 7) = v34;
        *(v22 + 8) = v35;
        *(v22 + 16) = v36;
        *(v22 + 20) = v37;
        *(v22 + 24) = v38;
        *(v22 + 25) = v39;
        *(v22 + 26) = v40;
        *(v22 + 27) = v41;
        *(v22 + 28) = v42;
        *(v22 + 32) = v43;
        *(v22 + 36) = v44;
        *(v22 + 40) = v45;
        *(v22 + 44) = v46;
        *(v22 + 48) = v17;
        *(v22 + 52) = v16;
        v24 = v22 + 64;
        *(v22 + 56) = v19;
        *(v22 + 60) = v18;
      }

      v21[1] = v24;
      v4 = v33;
    }

    v7 += 64;
    v8 -= 64;
  }

  while (v8);
  if (v4[6] != v4[7])
  {
    [(HSTHIDEventGenerator *)self _handleContactFrame:v4];
  }
}

- (void)_handleResetEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = HSTHIDEventGenerator;
  v5 = [(HSStage *)&v9 handleConsume:eventCopy];
  v7 = MTLoggingPlugin(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Reset event received, canceling active contacts", v8, 2u);
  }

  -[HSTHIDEventGenerator _cancelActiveContacts:](self, "_cancelActiveContacts:", [eventCopy hsTimestamp]);
}

- (void)_handleTouchModeEvent:(id)event
{
  eventCopy = event;
  v6.receiver = self;
  v6.super_class = HSTHIDEventGenerator;
  [(HSStage *)&v6 handleConsume:eventCopy];
  touchMode = [eventCopy touchMode];
  self->_touchMode = touchMode;
  if ((touchMode & 1) == 0)
  {
    -[HSTHIDEventGenerator _cancelActiveContacts:](self, "_cancelActiveContacts:", [eventCopy hsTimestamp]);
  }
}

- (void)_handleVendorEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    v8 = +[NSAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"[HSTHIDEventGenerator _handleVendorEvent:]"];
    [v8 handleFailureInFunction:v9 file:@"HSTHIDEventGenerator.mm" lineNumber:662 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  v11.receiver = self;
  v11.super_class = HSTHIDEventGenerator;
  [(HSStage *)&v11 handleConsume:eventCopy];
  HSUtil::MachTimeFromNanoseconds([eventCopy hsTimestamp]);
  v5 = objc_opt_new();
  [eventCopy type];
  data = [eventCopy data];
  [data bytes];
  data2 = [eventCopy data];
  [data2 length];
  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v5 + 1, &VendorDefinedEvent);

  [(HSTHIDEventGenerator *)self _handleHIDEvents:v5];
}

- (void)_handleCopyEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    v13 = +[NSAssertionHandler currentHandler];
    v14 = [NSString stringWithUTF8String:"[HSTHIDEventGenerator _handleCopyEvent:]"];
    [v13 handleFailureInFunction:v14 file:@"HSTHIDEventGenerator.mm" lineNumber:677 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  v15.receiver = self;
  v15.super_class = HSTHIDEventGenerator;
  [(HSStage *)&v15 handleConsume:eventCopy];
  matching = [eventCopy matching];
  IntegerValue = IOHIDEventGetIntegerValue();

  matching2 = [eventCopy matching];
  v8 = IOHIDEventGetIntegerValue();

  type = [eventCopy type];
  if (type == 1 && IntegerValue == 65376 && v8 == 9)
  {
    [eventCopy setResult:self->_lastTouchSystemReadyEvent];
  }

  else
  {
    v11 = MTLoggingPlugin(type, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      type2 = [eventCopy type];
      *buf = 67109632;
      v17 = type2;
      v18 = 1024;
      v19 = IntegerValue;
      v20 = 1024;
      v21 = v8;
      _os_log_debug_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "Unsuported copyEvent match event: type=%x, usagePage=%x, usage=%x", buf, 0x14u);
    }
  }
}

- (void)_handleSetPropertyEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy + 16;
  v6 = eventCopy[39];
  if (v6 < 0)
  {
    if (*(eventCopy + 3) != 13)
    {
      goto LABEL_15;
    }

    v5 = *v5;
  }

  else if (v6 != 13)
  {
    goto LABEL_15;
  }

  v7 = *v5;
  v8 = *(v5 + 5);
  if (v7 == 0x45656C6261736944 && v8 == 0x73746E657645656CLL)
  {
    v12 = eventCopy;
    v10 = *(eventCopy + 5);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    self->_disableEvents = [v11 BOOLValue];
    eventCopy = v12;
  }

LABEL_15:
}

- (void)_handleGetPropertyEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy + 2;
  v6 = *(eventCopy + 39);
  if (v6 < 0)
  {
    if (eventCopy[3] != 13)
    {
      goto LABEL_12;
    }

    v5 = *v5;
  }

  else if (v6 != 13)
  {
    goto LABEL_12;
  }

  v7 = *v5;
  v8 = *(v5 + 5);
  if (v7 == 0x45656C6261736944 && v8 == 0x73746E657645656CLL)
  {
    v12 = eventCopy;
    v10 = [NSNumber numberWithBool:self->_disableEvents];
    v11 = v12[5];
    v12[5] = v10;

    eventCopy = v12;
  }

LABEL_12:
}

- (void)handleConsume:(id)consume
{
  consumeCopy = consume;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = consumeCopy;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [(HSTHIDEventGenerator *)self _handleContactFrame:consumeCopy];
  }

  else
  {
    v6 = consumeCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      [(HSTHIDEventGenerator *)self _handleTouchModeEvent:v6];
    }

    else
    {
      v8 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        [(HSTHIDEventGenerator *)self _handleWakeSystemEvent:v8];
      }

      else
      {
        v10 = v8;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        if (v11)
        {
          [(HSTHIDEventGenerator *)self _handleResetEvent:v10];
        }

        else
        {
          v12 = HSUtil::DynamicCast<HSTGetDebugStateEvent>(v10);

          if (v12)
          {
            [(HSTHIDEventGenerator *)self _handleDebugStateEvent:v10];
          }

          else
          {
            v13 = HSUtil::DynamicCast<HSTVendorEvent>(v10);

            if (v13)
            {
              [(HSTHIDEventGenerator *)self _handleVendorEvent:v10];
            }

            else
            {
              v14 = HSUtil::DynamicCast<HSTCopyEvent>(v10);

              if (v14)
              {
                [(HSTHIDEventGenerator *)self _handleCopyEvent:v10];
              }

              else
              {
                v15 = HSUtil::DynamicCast<HSTHIDEvents>(v10);

                if (v15)
                {
                  [(HSTHIDEventGenerator *)self _handleHIDEvents:v10];
                }

                else
                {
                  v16 = HSUtil::DynamicCast<HSTSetPropertyEvent>(v10);

                  if (v16)
                  {
                    [(HSTHIDEventGenerator *)self _handleSetPropertyEvent:v10];
                  }

                  else
                  {
                    v17 = HSUtil::DynamicCast<HSTGetPropertyEvent>(v10);

                    if (v17)
                    {
                      [(HSTHIDEventGenerator *)self _handleGetPropertyEvent:v10];
                    }

                    else
                    {
                      v18.receiver = self;
                      v18.super_class = HSTHIDEventGenerator;
                      [(HSStage *)&v18 handleConsume:v10];
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

- (BOOL)handleHSEncode:(void *)encode
{
  if (!*encode)
  {
    *&v12 = *(encode + 17);
    DWORD2(v12) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](encode + 56, &v12);
    HSUtil::Encoder::_writeTokenValue32(encode, 0xEBu, 0);
  }

  HSUtil::Encoder::encodeCodable<HSTHIDEventGeneratorConfig>(encode, HSUtil::CoderKey::Literal<(char)99,(char)111,(char)110,(char)102,(char)105,(char)103>::Key, &self->_config);
  HSUtil::Encoder::encodeCodable<HSTContactFrameMetadata>(encode, HSUtil::CoderKey::Literal<(char)102,(char)114,(char)97,(char)109,(char)101,(char)77,(char)101,(char)116,(char)97,(char)100,(char)97,(char)116,(char)97>::Key, &self->_frameMetadata);
  HSUtil::Encoder::encodeBool(encode, HSUtil::CoderKey::Literal<(char)108,(char)97,(char)114,(char)103,(char)101,(char)66,(char)111,(char)100,(char)121,(char)65,(char)99,(char)116,(char)105,(char)118,(char)101>::Key, self->_largeBodyActive);
  HSUtil::Encoder::encodeBool(encode, HSUtil::CoderKey::Literal<(char)100,(char)105,(char)115,(char)97,(char)98,(char)108,(char)101,(char)69,(char)118,(char)101,(char)110,(char)116,(char)115>::Key, self->_disableEvents);
  HSUtil::Encoder::encodeUInt(encode, HSUtil::CoderKey::Literal<(char)116,(char)111,(char)117,(char)99,(char)104,(char)77,(char)111,(char)100,(char)101>::Key, self->_touchMode);
  HSUtil::Encoder::encodeArrayStart(encode, HSUtil::CoderKey::Literal<(char)99,(char)111,(char)110,(char)116,(char)97,(char)99,(char)116,(char)115>::Key, 4);
  v5 = 0;
  contacts = self->_contacts;
  v7 = *encode;
  do
  {
    while (contacts[v5].stage && v7 == 0)
    {
      v9 = HSTPipeline::Contact::encode(&contacts[v5], encode);
      v7 = *encode;
      if (*encode || v9 != 0)
      {
        break;
      }

      v7 = 10;
      *encode = 10;
      if (++v5 == 32)
      {
        return 1;
      }
    }

    ++v5;
  }

  while (v5 != 32);
  if (!v7)
  {
    HSUtil::Encoder::_encodeContainerStop(encode);
    if (!*encode)
    {
      HSUtil::Encoder::_encodeContainerStop(encode);
    }
  }

  return 1;
}

- (BOOL)handleHSDecode:(void *)decode
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v5;
  v25 = v5;
  v22 = v5;
  v23 = v5;
  v21 = v5;
  HSUtil::Decoder::decodeMap(&v21, decode);
  if (*decode)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTHIDEventGenerator.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTHIDEventGenerator handleHSDecode:];
    }

LABEL_19:
    v6 = 0;
    goto LABEL_20;
  }

  HSUtil::Decoder::decodeCodable<HSTHIDEventGeneratorConfig>(&v21, HSUtil::CoderKey::Literal<(char)99,(char)111,(char)110,(char)102,(char)105,(char)103>::Key, &self->_config);
  if (v21)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTHIDEventGenerator.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTHIDEventGenerator handleHSDecode:];
    }

    goto LABEL_19;
  }

  HSUtil::Decoder::decodeCodable<HSTContactFrameMetadata>(&v21, HSUtil::CoderKey::Literal<(char)102,(char)114,(char)97,(char)109,(char)101,(char)77,(char)101,(char)116,(char)97,(char)100,(char)97,(char)116,(char)97>::Key, &self->_frameMetadata);
  if (v21)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTHIDEventGenerator.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTHIDEventGenerator handleHSDecode:];
    }

    goto LABEL_19;
  }

  self->_largeBodyActive = HSUtil::Decoder::decodeBool(&v21, HSUtil::CoderKey::Literal<(char)108,(char)97,(char)114,(char)103,(char)101,(char)66,(char)111,(char)100,(char)121,(char)65,(char)99,(char)116,(char)105,(char)118,(char)101>::Key);
  if (v21)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTHIDEventGenerator.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTHIDEventGenerator handleHSDecode:];
    }

    goto LABEL_19;
  }

  self->_disableEvents = HSUtil::Decoder::decodeBool(&v21, HSUtil::CoderKey::Literal<(char)100,(char)105,(char)115,(char)97,(char)98,(char)108,(char)101,(char)69,(char)118,(char)101,(char)110,(char)116,(char)115>::Key);
  if (v21)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTHIDEventGenerator.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTHIDEventGenerator handleHSDecode:];
    }

    goto LABEL_19;
  }

  self->_touchMode = HSUtil::Decoder::decodeUInt(&v21, HSUtil::CoderKey::Literal<(char)116,(char)111,(char)117,(char)99,(char)104,(char)77,(char)111,(char)100,(char)101>::Key);
  if (v21)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTHIDEventGenerator.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTHIDEventGenerator handleHSDecode:];
    }

    goto LABEL_19;
  }

  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19 = v9;
  v20 = v9;
  v17 = v9;
  v18 = v9;
  v16 = v9;
  HSUtil::Decoder::decodeArray(&v16, &v21, HSUtil::CoderKey::Literal<(char)99,(char)111,(char)110,(char)116,(char)97,(char)99,(char)116,(char)115>::Key);
  if (v21)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTHIDEventGenerator.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTHIDEventGenerator handleHSDecode:];
    }
  }

  else
  {
    contacts = self->_contacts;
    v11 = 2048;
    v12 = contacts;
    do
    {
      memset(__b, 0, 23);
      v26 = 0uLL;
      *&v12->contactID = 0;
      v12->needsVelocitiesCalculated = 0;
      *&v12->flags = v26;
      v13 = __b[0];
      *&v12->majorRadius = *(__b + 15);
      *&v12->azimuth = 0;
      *(&v12->needsVelocitiesCalculated + 1) = v13;
      *&v12->zdensity = 0;
      ++v12;
      v27 = 0;
      v11 -= 64;
    }

    while (v11);
    v14 = 2048;
    while (1)
    {
      HSUtil::Decoder::decodeCodable<HSTPipeline::Contact>(&v16, contacts);
      if (v16)
      {
        break;
      }

      ++contacts;
      v14 -= 64;
      if (!v14)
      {
        goto LABEL_36;
      }
    }

    if (v16 == 3)
    {
LABEL_36:
      v6 = 1;
      goto LABEL_37;
    }

    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTHIDEventGenerator.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTHIDEventGenerator handleHSDecode:];
    }
  }

  v6 = 0;
LABEL_37:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v15 = v17;
  *&v17 = 0;
  if (v15)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v15);
    operator delete();
  }

LABEL_20:
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v7 = v22;
  *&v22 = 0;
  if (v7)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v7);
    operator delete();
  }

  return v6;
}

- (id).cxx_construct
{
  *(self + 15) = 0;
  *(self + 128) = 0;
  *(self + 136) = 0;
  *(self + 144) = 0;
  *(self + 160) = 0;
  *(self + 168) = 0;
  *(self + 176) = 0;
  *(self + 180) = 0;
  *(self + 184) = 0;
  v2 = 200;
  v3 = 2048;
  do
  {
    v4 = self + v2;
    *(v4 + 7) = 0;
    *(v4 + 13) = 0;
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    v4[24] = 0;
    *(v4 + 36) = 0;
    *(v4 + 28) = 0;
    v2 += 64;
    *(v4 + 11) = 0;
    v3 -= 64;
  }

  while (v3);
  v5 = 2376;
  v6 = 2048;
  do
  {
    v7 = self + v5;
    *(v7 + 7) = 0;
    *(v7 + 13) = 0;
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    v7[24] = 0;
    *(v7 + 36) = 0;
    *(v7 + 28) = 0;
    v5 += 64;
    *(v7 + 11) = 0;
    v6 -= 64;
  }

  while (v6);
  return self;
}

- (void)handleHSDecode:.cold.1()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (void)handleHSDecode:.cold.2()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (void)handleHSDecode:.cold.3()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (void)handleHSDecode:.cold.4()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (void)handleHSDecode:.cold.5()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (void)handleHSDecode:.cold.6()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (void)handleHSDecode:.cold.7()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (void)handleHSDecode:.cold.8()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

@end
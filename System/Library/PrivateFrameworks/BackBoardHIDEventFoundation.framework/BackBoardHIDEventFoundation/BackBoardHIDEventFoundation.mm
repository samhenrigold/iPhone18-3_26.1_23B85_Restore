uint64_t _BKHandleIOHIDEventFromSender(void *a1, uint64_t a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v49 = a1;
  v4 = objc_autoreleasePoolPush();
  if (IOHIDEventGetAttributeDataLength() < 1)
  {
    v11 = +[BKHIDSystem sharedInstance];
    *&valuePtr = 0;
    if (a1)
    {
      *&valuePtr = IOHIDEventGetSenderID();
      v12 = valuePtr == 0;
      if (!a2)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v12 = 1;
      if (!a2)
      {
        goto LABEL_20;
      }
    }

    if (v12)
    {
      RegistryID = IOHIDServiceGetRegistryID();
      if (RegistryID)
      {
        CFNumberGetValue(RegistryID, kCFNumberSInt64Type, &valuePtr);
      }
    }

LABEL_20:
    v14 = +[BKHIDSystem sharedInstance];
    v15 = [v14 senderCache];

    p_super = [v15 senderInfoForSenderID:valuePtr];
    if (a2)
    {
      if (!valuePtr)
      {
        goto LABEL_30;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_30;
      }

      v17 = BKLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v59 = valuePtr;
        _os_log_impl(&dword_223CBE000, v17, OS_LOG_TYPE_INFO, "populating sender cache for unknown sender with senderID:%llX", buf, 0xCu);
      }

      v18 = [[BKIOHIDService alloc] initWithHIDServiceRef:a2];
      [v15 addSenderInfo:v18 forSenderID:valuePtr];
      v19 = p_super;
      p_super = &v18->super;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_30:

        v20 = [v11 dispatcherProvider];
        v21 = [v20 dispatcherForEvent:a1];
        [v11 processEvent:&v49 sender:p_super dispatcher:v21];

LABEL_31:
        goto LABEL_32;
      }

      v19 = BKLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v59 = valuePtr;
        _os_log_impl(&dword_223CBE000, v19, OS_LOG_TYPE_INFO, "no IOHIDServiceRef for unknown senderID:%llX", buf, 0xCu);
      }
    }

    goto LABEL_30;
  }

  if (IOHIDEventGetAttributeDataLength() < 6 || (AttributeDataPtr = IOHIDEventGetAttributeDataPtr()) == 0 || !*(AttributeDataPtr + 4) || *AttributeDataPtr != 3)
  {
    v11 = BKLogEventDelivery();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v59 = a1;
      _os_log_error_impl(&dword_223CBE000, v11, OS_LOG_TYPE_ERROR, "ignoring event with non-redirect attribute data: %{public}@", buf, 0xCu);
    }

    goto LABEL_31;
  }

  if (a1)
  {
    v6 = +[BKHIDSystem sharedInstance];
    v7 = BKSHIDEventGetBaseAttributes();
    v8 = objc_opt_class();
    v9 = v7;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v23 = v10;

    if (v23)
    {
      v24 = [v23 environment];
      [v23 source];
      v25 = [v23 display];
      if (!v25)
      {
        v26 = [v6 deliveryManager];
        v25 = [v26 mainDisplay];
      }

      v48 = [v23 token];
      [v23 options];
      v27 = [v23 pid];
      v47 = v25;
      if (v27 <= 0)
      {
        v32 = BKLogCommon();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v59 = a1;
          _os_log_error_impl(&dword_223CBE000, v32, OS_LOG_TYPE_ERROR, "must have a valid destination PID must be set to redirect events -- not redirecting '%{public}@'", buf, 0xCu);
        }
      }

      else
      {
        v28 = v27;
        v45 = v6;
        v46 = v4;
        if (v24)
        {
          v29 = objc_opt_new();
          [v29 setDisplay:v25];
          [v29 setEnvironment:v24];
          [v29 setToken:v48];
          v30 = [v6 deliveryManager];
          v31 = [v30 destinationsStartingFromPID:v28 deferringPredicate:v29];
        }

        else
        {
          v33 = MEMORY[0x277CF0638];
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = ___BKRedirectHIDEvent_block_invoke;
          v54[3] = &unk_2784F6FD8;
          v55 = v25;
          v57 = v28;
          v56 = v48;
          v34 = [v33 build:v54];
          v31 = [MEMORY[0x277CBEB98] setWithObject:v34];
        }

        v44 = v24;
        v35 = BKLogHID();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = BKSHIDEventGetConciseDescription();
          SenderID = IOHIDEventGetSenderID();
          *buf = 138543874;
          v59 = v36;
          v60 = 2048;
          v61 = SenderID;
          v62 = 2114;
          v63 = v31;
          _os_log_impl(&dword_223CBE000, v35, OS_LOG_TYPE_DEFAULT, "Redirecting HID event (%{public}@ / senderID:%llX) to destinations: %{public}@", buf, 0x20u);
        }

        IOHIDEventGetTimeStamp();
        kdebug_trace();
        valuePtr = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v32 = v31;
        v38 = [v32 countByEnumeratingWithState:&valuePtr objects:buf count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v51;
          do
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v51 != v40)
              {
                objc_enumerationMutation(v32);
              }

              v42 = *(*(&valuePtr + 1) + 8 * i);
              Copy = IOHIDEventCreateCopy();
              BKSHIDEventSetSimpleDeliveryInfo();
              [__HIDClientConnectionManager sendEvent:Copy toDestination:v42];
              CFRelease(Copy);
            }

            v39 = [v32 countByEnumeratingWithState:&valuePtr objects:buf count:16];
          }

          while (v39);
        }

        v6 = v45;
        v4 = v46;
        v24 = v44;
      }
    }

    else
    {
      v24 = BKLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v59 = a1;
        _os_log_error_impl(&dword_223CBE000, v24, OS_LOG_TYPE_ERROR, "event does not contain valid redirect info -- not redirecting '%{public}@'", buf, 0xCu);
      }
    }
  }

LABEL_32:
  objc_autoreleasePoolPop(v4);
  return 0;
}

void *BKSendHIDEventToClientWithTaskPort(uint64_t a1, uint64_t a2)
{
  if (!__BKHIDEventTapCallback || (result = __BKHIDEventTapCallback(a1, a2, 0), result))
  {
    v5 = __HIDClientConnectionManager;

    return [v5 sendEvent:a1 toClientTaskPort:a2];
  }

  return result;
}

id BKLogSendHIDEvent()
{
  if (BKLogSendHIDEvent_onceToken != -1)
  {
    dispatch_once(&BKLogSendHIDEvent_onceToken, &__block_literal_global_36);
  }

  v1 = BKLogSendHIDEvent___logObj;

  return v1;
}

id BKLogHID()
{
  if (BKLogHID_onceToken != -1)
  {
    dispatch_once(&BKLogHID_onceToken, &__block_literal_global_15);
  }

  v1 = BKLogHID___logObj;

  return v1;
}

void BKHIDClientConnectionAdditionCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = BKLogHID();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138543362;
    v12 = a3;
    _os_log_debug_impl(&dword_223CBE000, v5, OS_LOG_TYPE_DEBUG, "Got a client addition callback: %{public}@", &v11, 0xCu);
  }

  if (a1)
  {
    CFRetain(a3);
    os_unfair_lock_assert_not_owner((a1 + 48));
    os_unfair_lock_lock((a1 + 48));
    v6 = CFDictionaryGetValue(*(a1 + 40), a3);
    if (!v6)
    {
      v6 = [BKHIDClientConnection connectionWithConnection:a3];
      if (v6)
      {
        v7 = BKLogHID();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 138543618;
          v12 = v6;
          v13 = 2114;
          v14 = a3;
          _os_log_impl(&dword_223CBE000, v7, OS_LOG_TYPE_DEFAULT, "Adding client connection: %{public}@ for client: %{public}@", &v11, 0x16u);
        }

        v8 = [v6 pid];
        CFDictionarySetValue(*(a1 + 40), a3, v6);
        [*(a1 + 16) setObject:v6 forKey:{objc_msgSend(v6, "task")}];
        [*(a1 + 24) setObject:v6 forKey:v8];
        v9 = *(a1 + 32);
        v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "versionedPID")}];
        [v9 setObject:v6 forKey:v10];
      }
    }

    os_unfair_lock_unlock((a1 + 48));
    CFRelease(a3);
  }
}

uint64_t _BKHIDEventDeferringDisplayMatch(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 1;
  if (v3 && v4 && ([v4 _isNullDisplay] & 1) == 0)
  {
    v6 = [v5 isEqual:v3];
  }

  return v6;
}

id _BKResolutionDescriptionForLogging(void *a1, char a2)
{
  v3 = a1;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___BKResolutionDescriptionForLogging_block_invoke;
  v7[3] = &unk_2784F6848;
  v5 = v4;
  v8 = v5;
  v9 = a2;
  [v5 appendCollection:v3 withName:0 itemBlock:v7];

  return v5;
}

void _BKHIDServiceRemoved(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = BKLogHID();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138543362;
    v8 = a3;
    _os_log_debug_impl(&dword_223CBE000, v5, OS_LOG_TYPE_DEBUG, "Got a service removed callback: %{public}@", &v7, 0xCu);
  }

  v6 = a1;
  [v6 _serviceWasRemoved];
}

uint64_t _BKHIDEventSenderMatchesSenderSet(void *a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = 1;
  v31 = v5;
  if (v5 && v6)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v8)
    {
      v29 = v6;
      v9 = *v33;
      do
      {
        v10 = 0;
        do
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v32 + 1) + 8 * v10);
          v12 = v31;
          v13 = v11;
          v14 = v7;
          v15 = [v13 senderID];
          if (v15 && v15 != [v12 senderID] || objc_msgSend(v13, "isAuthenticated") && !objc_msgSend(v12, "isAuthenticated") || (v16 = objc_msgSend(v13, "hardwareType")) != 0 && v16 != objc_msgSend(v12, "hardwareType") || (v17 = objc_msgSend(v13, "primaryPage"), v18 = objc_msgSend(v13, "primaryUsage"), v17) && ((v19 = v18, v17 != objc_msgSend(v12, "primaryPage")) || v19 && v19 != objc_msgSend(v12, "primaryUsage")))
          {
          }

          else
          {
            v20 = [v13 associatedDisplay];
            if (!v20)
            {

LABEL_33:
              v8 = 1;
              goto LABEL_34;
            }

            v21 = v20;
            v22 = [v12 associatedDisplay];
            if (v22)
            {
              v23 = v22;
              if ([v22 _isBuiltinDisplay])
              {
                v24 = v14;

                v23 = v24;
              }
            }

            else
            {
              v23 = [MEMORY[0x277CF0698] nullDisplay];
            }

            if ([v21 _isBuiltinDisplay])
            {
              v25 = v14;

              v21 = v25;
            }

            v26 = [v23 isEqual:v21];

            if (v26)
            {
              goto LABEL_33;
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v27 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
        v8 = v27;
      }

      while (v27);
LABEL_34:
      v6 = v29;
    }
  }

  return v8;
}

void BKHIDClientConnectionRemovalCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = BKLogHID();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138543362;
    v11 = a3;
    _os_log_debug_impl(&dword_223CBE000, v5, OS_LOG_TYPE_DEBUG, "Got a client removal callback: %{public}@", &v10, 0xCu);
  }

  if (a1)
  {
    CFRetain(a3);
    os_unfair_lock_assert_not_owner((a1 + 48));
    os_unfair_lock_lock((a1 + 48));
    v6 = CFDictionaryGetValue(*(a1 + 40), a3);
    if (v6)
    {
      v7 = BKLogHID();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543874;
        v11 = v6;
        v12 = 2114;
        v13 = a3;
        v14 = 2114;
        v15 = @"HID";
        _os_log_impl(&dword_223CBE000, v7, OS_LOG_TYPE_DEFAULT, "Removing client connection %{public}@ for client: %{public}@ source:%{public}@", &v10, 0x20u);
      }

      [*(a1 + 16) removeObjectForKey:{objc_msgSend(v6, "task")}];
      [*(a1 + 24) removeObjectForKey:{objc_msgSend(v6, "pid")}];
      v8 = *(a1 + 32);
      v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "versionedPID")}];
      [v8 removeObjectForKey:v9];

      CFDictionaryRemoveValue(*(a1 + 40), a3);
      [v6 invalidate];
    }

    os_unfair_lock_unlock((a1 + 48));
    CFRelease(a3);
  }
}

void _BKHIDServiceAdded(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = BKLogHID();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 138543362;
    v13 = a4;
    _os_log_impl(&dword_223CBE000, v7, OS_LOG_TYPE_INFO, "IOServices added: %{public}@", &v12, 0xCu);
  }

  if (a4 && CFArrayGetCount(a4))
  {
    v8 = a4;
    if (a1)
    {
      os_unfair_lock_lock((a1 + 8));
      v9 = atomic_load((a1 + 26));
      if (v9)
      {
        os_unfair_lock_unlock((a1 + 8));
      }

      else
      {
        v10 = [(BKIOHIDServiceMatcher *)a1 _lock_didAddIOHIDServiceRefs:v8];
        if (*(a1 + 24))
        {
          os_unfair_lock_unlock((a1 + 8));
          WeakRetained = objc_loadWeakRetained((a1 + 48));
          [WeakRetained matcher:a1 servicesDidMatch:v10];
        }

        else
        {
          [(BKIOHIDServiceMatcher *)a1 _lock_asyncNotifyServicesAdded:v10];
          os_unfair_lock_unlock((a1 + 8));
        }
      }
    }
  }

  else
  {
    v8 = BKLogHID();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = 138543362;
      v13 = a3;
      _os_log_impl(&dword_223CBE000, v8, OS_LOG_TYPE_INFO, "Empty IOService array for sender %{public}@; ignoring", &v12, 0xCu);
    }
  }
}

uint64_t _BKSendHIDEventToClientWithDestination(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v9 = v5;
  if ((a3 & 1) != 0 || !__BKHIDEventTapCallback || ([__HIDClientConnectionManager clientForDestination:v5], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "bundleID"), v7 = objc_claimAutoreleasedReturnValue(), v6, LODWORD(v6) = __BKHIDEventTapCallback(a1, 0, v7), v7, v6))
  {
    [__HIDClientConnectionManager sendEvent:a1 toDestination:v9];
  }

  return MEMORY[0x2821F9730]();
}

id sub_223CC2F64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _BKGraphSectionWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_223CC2FA8()
{

  v1 = *(v0 + 16);
  *(v0 + 16) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 16);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t sub_223CC3030()
{
  v0 = sub_223CC2FA8();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

void *variable initialization expression of BKEventGraphDescriptionAccumulator.topLevel()
{
  type metadata accessor for _GraphNode();
  result = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  result[2] = 0;
  result[3] = v1;
  result[4] = 0;
  result[5] = 0xE000000000000000;
  return result;
}

void sub_223CC314C(uint64_t a1, uint64_t a2)
{
  v3 = *(*&v2[OBJC_IVAR___BKEventGraphDescriptionAccumulator_current] + 16);
  if (!v3)
  {
    v3 = *&v2[OBJC_IVAR___BKEventGraphDescriptionAccumulator_topLevel];
  }

  *&v2[OBJC_IVAR___BKEventGraphDescriptionAccumulator_current] = v3;

  v4 = sub_223CEACE0();
  [v2 addSubnode_];
}

uint64_t sub_223CC3200(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for _GraphNode();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84F90];
  v6[4] = a1;
  v6[5] = a2;
  v8 = OBJC_IVAR___BKEventGraphDescriptionAccumulator_current;
  v9 = *(v3 + OBJC_IVAR___BKEventGraphDescriptionAccumulator_current);
  v6[2] = v9;
  v6[3] = v7;
  swift_beginAccess();

  swift_retain_n();

  MEMORY[0x223DF72D0](v10);
  if (*((*(v9 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_223CEAD30();
  }

  sub_223CEAD40();
  swift_endAccess();

  *(v3 + v8) = v6;
}

uint64_t sub_223CC3328(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_223CEACF0();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_223CC34CC(void *a1, uint64_t a2, char a3)
{
  v6 = a1[4];
  v5 = a1[5];
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  v20 = v7;
  if (v7)
  {
    swift_beginAccess();
    if (a1[3] >> 62)
    {
      sub_223CEADD0();
    }

    sub_223CC3B00(v6, v5, a3 & 1);
  }

  swift_beginAccess();
  v9 = a1[3];
  if (v9 >> 62)
  {
    goto LABEL_30;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:

  if (v10)
  {
    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x223DF7410](v11, v9);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v12 = *(v9 + 8 * v11 + 32);

        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          v10 = sub_223CEADD0();
          goto LABEL_9;
        }
      }

      v14 = a1[3];
      if (v14 >> 62)
      {
        v17 = sub_223CEADD0();
        v16 = v17 - 1;
        if (__OFSUB__(v17, 1))
        {
LABEL_23:
          __break(1u);
          break;
        }
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v16 = v15 - 1;
        if (__OFSUB__(v15, 1))
        {
          goto LABEL_23;
        }
      }

      sub_223CC34CC(v12, a2, v11 >= v16);

      ++v11;
    }

    while (v13 != v10);
  }

  if (v20)
  {
    result = *(a2 + 24);
    v19 = result - 1;
    if (result >= 1)
    {
      result = sub_223CC5260(result);
      *(a2 + 24) = v19;
    }
  }

  return result;
}

unint64_t type metadata accessor for BKEventGraphDescriptionAccumulator()
{
  result = qword_27D0BC818;
  if (!qword_27D0BC818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D0BC818);
  }

  return result;
}

_OWORD *sub_223CC3858(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_223CC387C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_223CC38C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_223CC392C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_223CC3974(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_223CC39C4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      v4 = 0;
      v5 = a2 + 56;
      do
      {
        if (*(a2 + 16) && (v8 = sub_223CEAF10(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, ((*(v5 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
        {
          v11 = ~v9;
          while (*(*(a2 + 48) + 8 * v10) != v4)
          {
            v10 = (v10 + 1) & v11;
            if (((*(v5 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v6 = 0xA400000000000000;
          v7 = 545428706;
        }

        else
        {
LABEL_4:
          v6 = 0xE200000000000000;
          v7 = 8224;
        }

        ++v4;

        MEMORY[0x223DF72C0](v7, v6);
      }

      while (v4 != v2);
    }

    return 0;
  }

  return result;
}

uint64_t sub_223CC3B00(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3;
  if (*(v3 + 32))
  {
    if (a3)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
    *(v3 + 32) = 1;
  }

  v6 = *(v3 + 24);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(v3 + 16);
  *(v4 + 24) = v7;
  if (__OFSUB__(v7, 1))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = 0xAC0000008094E28FLL;
  v12 = 0x97E28094E29494E2;
  v13 = sub_223CC39C4(v6, v8);
  if (v5 != 2)
  {
    if (v5 == 1 || *(v8 + 16))
    {
      v12 = 0x97E28094E29C94E2;
    }

    else
    {
      v11 = 0xA800000000000000;
      v12 = 0x8094E28F97E22020;
    }
  }

  v15 = v13;
  v16 = v14;

  MEMORY[0x223DF72C0](v12, v11);

  MEMORY[0x223DF72C0](v9, a2);

  MEMORY[0x223DF72C0](10, 0xE100000000000000);

  MEMORY[0x223DF72C0](v15, v16);

  if (v5 == 2)
  {
    sub_223CC5260(v7 - 1);
  }

  return sub_223CC6228(&v15, v7);
}

unint64_t sub_223CC3CBC@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = sub_223CEAEB0();
    v4 = 0;
    v5 = 0;
    v6 = 0;
    result = v3 | 0x8000000000000000;
  }

  else
  {
    v7 = -1;
    v8 = -1 << *(result + 32);
    v4 = result + 64;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v7 = ~(-1 << v9);
    }

    v6 = v7 & *(result + 64);
  }

  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = 0;
  a2[4] = v6;
  a2[5] = 0;
  return result;
}

void sub_223CC3D40()
{
  if ((*v0 & 0x8000000000000000) != 0)
  {
    if (sub_223CEAED0())
    {
      swift_unknownObjectRelease();
      sub_223CC73DC(0, &qword_28133EF40, off_2784F5E88);
      swift_dynamicCast();
      if (v11)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v1 = v0[3];
    v2 = v0[4];
    if (!v2)
    {
      v4 = (v0[2] + 64) >> 6;
      if (v4 <= v1 + 1)
      {
        v5 = v1 + 1;
      }

      else
      {
        v5 = (v0[2] + 64) >> 6;
      }

      v6 = v5 - 1;
      while (1)
      {
        v3 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v3 >= v4)
        {
          v0[3] = v6;
          v0[4] = 0;
          return;
        }

        v2 = *(v0[1] + 8 * v3);
        ++v1;
        if (v2)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v3 = v0[3];
LABEL_14:
    v7 = (v2 - 1) & v2;
    v8 = *(*(*v0 + 56) + ((v3 << 9) | (8 * __clz(__rbit64(v2)))));
    v9 = v8;
    v0[3] = v3;
    v0[4] = v7;
    if (v8)
    {
LABEL_15:
      v10 = v0[5];
      if (!__OFADD__(v10, 1))
      {
        v0[5] = v10 + 1;
        return;
      }

      goto LABEL_20;
    }
  }
}

void sub_223CC3E8C()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    if (sub_223CEAED0())
    {
      sub_223CC73DC(0, &qword_28133EF10, 0x277CF05F8);
      swift_dynamicCast();
      sub_223CC73DC(0, &qword_28133EF38, off_2784F5E98);
      swift_dynamicCast();
      if (v15)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v2 = v0[3];
    v3 = v0[4];
    if (!v3)
    {
      v5 = (v0[2] + 64) >> 6;
      if (v5 <= v2 + 1)
      {
        v6 = v2 + 1;
      }

      else
      {
        v6 = (v0[2] + 64) >> 6;
      }

      v7 = v6 - 1;
      while (1)
      {
        v4 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v4 >= v5)
        {
          v0[3] = v7;
          v0[4] = 0;
          return;
        }

        v3 = *(v0[1] + 8 * v4);
        ++v2;
        if (v3)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v4 = v0[3];
LABEL_14:
    v8 = (v3 - 1) & v3;
    v9 = (v4 << 9) | (8 * __clz(__rbit64(v3)));
    v10 = *(*(v1 + 48) + v9);
    v11 = *(*(v1 + 56) + v9);
    v12 = v10;
    v13 = v11;
    v0[3] = v4;
    v0[4] = v8;
    if (v10)
    {
LABEL_15:
      v14 = v0[5];
      if (!__OFADD__(v14, 1))
      {
        v0[5] = v14 + 1;
        return;
      }

      goto LABEL_20;
    }
  }
}

char *sub_223CC4028(id *a1)
{
  v2 = v1;
  v4 = [(BKEventDeferringEnvironmentGraph *)a1 topLevelInEachProcess];
  sub_223CC73DC(0, &qword_27D0BC830, 0x277CCABB0);
  sub_223CC73DC(0, &qword_28133EF40, off_2784F5E88);
  sub_223CC67D8(&qword_27D0BC838, &qword_27D0BC830, 0x277CCABB0);
  v5 = sub_223CEACD0();

  sub_223CC3CBC(v5, v29);
  v27 = v5;

  sub_223CC3D40();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    while (1)
    {
      [(BKEventDeferringNode *)v9 pid];
      result = BSProcessDescriptionForPID();
      if (!result)
      {
        break;
      }

      v15 = result;
      v16 = sub_223CEACF0();
      v18 = v17;

      v19 = [(BKEventDeferringNode *)v9 subnodes];
      [v19 count];

      if ((v5 & 0xC000000000000001) != 0)
      {
        result = sub_223CEADD0();
        v20 = result - 1;
        if (__OFSUB__(result, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        result = *(v27 + 16);
        v20 = result - 1;
        if (__OFSUB__(result, 1))
        {
LABEL_20:
          __break(1u);
          break;
        }
      }

      sub_223CC3B00(v16, v18, v8 >= v20);

      v21 = [(BKEventDeferringNode *)v9 subnodes];
      v22 = [v21 count];
      v23 = v21;
      if (v22 >= 1)
      {
        for (i = 0; i != v22; ++i)
        {
          v25 = [v23 objectAtIndex_];
          sub_223CEAD90();
          swift_unknownObjectRelease();
          if ((swift_dynamicCast() & 1) == 0)
          {
            break;
          }

          if (!v28)
          {
            break;
          }

          sub_223CC50EC(v28, a1, i, v22);
        }
      }

      v10 = v2[3];
      v11 = v10 - 1;
      if (v10 < 1)
      {
      }

      else
      {
        sub_223CC5260(v10);

        v2[3] = v11;
      }

      sub_223CC3D40();
      v8 = v12;
      v9 = v13;
      if (!v13)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_223CC67D0(v29[0], v29[1]);

    v26 = *v2;

    return v26;
  }

  return result;
}

void sub_223CC4424(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  v25[2] = MEMORY[0x277D84FA0];
  v25[3] = 0;
  v26 = 0;

  sub_223CC3B00(a2, a3, 0);

  v8 = [(BKEventDeliveryChain *)a1 dispatchTarget];
  v9 = [v8 description];
  v10 = sub_223CEACF0();
  v12 = v11;

  sub_223CC3B00(v10, v12, 1);

  v13 = [(BKEventDeferringNode *)a1 subnodes];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 description];
    v16 = sub_223CEACF0();
    v18 = v17;

    sub_223CC3B00(v16, v18, 1);
  }

  v19 = [(BKEventDeliveryChain *)a1 deferringPath];
  sub_223CC73DC(0, &qword_28133EF40, off_2784F5E88);
  v20 = sub_223CEAD20();

  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_5;
    }

LABEL_12:

    return;
  }

  v21 = sub_223CEADD0();
  if (!v21)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v21 >= 1)
  {
    for (i = 0; i != v21; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x223DF7410](i, v20);
      }

      else
      {
        v23 = *(v20 + 8 * i + 32);
      }

      v24 = v23;
      sub_223CC6BE8(v23, a4, v25, 1);
    }

    goto LABEL_12;
  }

  __break(1u);
}

int64_t sub_223CC46F4(int64_t a1, SEL *a2, uint64_t a3)
{
  v6 = MEMORY[0x277D84FA0];
  v7 = MEMORY[0x277D84FA0];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v76 = v7;
    v71 = 0;
    v72 = 0xE000000000000000;
    v73 = v6;
    v74 = 0;
    v75 = 0;

    if ((a1 & 0xC000000000000001) != 0)
    {
      sub_223CEADD0();
    }

    sub_223CC3B00(a2, a3, 0);

    a3 = (a1 & 0xC000000000000001) != 0 ? sub_223CEADD0() : *(a1 + 16);
    sub_223CC3CBC(a1, &v69);

    sub_223CC3E8C();
    if (!v9)
    {
      break;
    }

    v11 = v8;
    v12 = v9;
    v13 = v10;
    v66 = a3 - 1;
    v14 = __OFSUB__(a3, 1);
    v67 = v14;
    a2 = &unk_2784F7000;
    while (1)
    {
      v18 = [(BKEventDeliveryChain *)v13 deferringPath];
      sub_223CC73DC(0, &qword_28133EF40, off_2784F5E88);
      v19 = sub_223CEAD20();

      if (v19 >> 62)
      {
        a1 = sub_223CEADD0();
        if (!a1)
        {
LABEL_23:

          v24 = MEMORY[0x277D84F90];
          goto LABEL_24;
        }
      }

      else
      {
        a1 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!a1)
        {
          goto LABEL_23;
        }
      }

      v68[0] = MEMORY[0x277D84F90];
      v6 = v68;
      sub_223CEAE80();
      if (a1 < 0)
      {
        break;
      }

      v20 = 0;
      do
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x223DF7410](v20, v19);
        }

        else
        {
          v21 = *(v19 + 8 * v20 + 32);
        }

        v22 = v21;
        ++v20;
        v23 = [(BKEventDeferringNode *)v21 rule];

        sub_223CEAE60();
        sub_223CEAE90();
        sub_223CEAEA0();
        sub_223CEAE70();
      }

      while (a1 != v20);

      a2 = &unk_2784F7000;
      v24 = v68[0];
LABEL_24:
      sub_223CC72BC(v24);

      v25 = v74;
      v26 = [(BKEventDeferringNode *)v13 rule];
      if (v26)
      {
        v27 = v26;
        v6 = [v12 a2[306]];
        a3 = sub_223CEACF0();
        a1 = v28;

        if (v67)
        {
          goto LABEL_57;
        }

        sub_223CC3B00(a3, a1, v11 >= v66);

        strcpy(v68, "dispatching: ");
        HIWORD(v68[1]) = -4864;
        v29 = [(BKEventDeliveryChain *)v13 dispatchTarget];
        v30 = [v29 a2[306]];
        a3 = sub_223CEACF0();
        v32 = v31;

        MEMORY[0x223DF72C0](a3, v32);

        sub_223CC3B00(v68[0], v68[1], 1);

        v33 = [(BKEventDeferringNode *)v13 subnodes];
        if (v33)
        {
          strcpy(v68, "sender (");
          BYTE1(v68[1]) = 0;
          WORD1(v68[1]) = 0;
          HIDWORD(v68[1]) = -402653184;
          v34 = v33;
          v35 = [v33 a2[306]];
          v36 = sub_223CEACF0();
          v38 = v37;

          MEMORY[0x223DF72C0](v36, v38);

          MEMORY[0x223DF72C0](41, 0xE100000000000000);
          a3 = v68[1];
          sub_223CC3B00(v68[0], v68[1], 1);
        }

        v39 = [(BKEventDeliveryChain *)v13 deferringPath];
        v6 = sub_223CEAD20();

        if (v6 >> 62)
        {
          a1 = sub_223CEADD0();
          if (a1)
          {
LABEL_30:
            if (a1 < 1)
            {
              goto LABEL_60;
            }

            a3 = 0;
            do
            {
              if ((v6 & 0xC000000000000001) != 0)
              {
                v40 = MEMORY[0x223DF7410](a3, v6);
              }

              else
              {
                v40 = *(v6 + 8 * a3 + 32);
              }

              v41 = v40;
              ++a3;
              sub_223CC6BE8(v40, v27, &v71, 1);
            }

            while (a1 != a3);
          }
        }

        else
        {
          a1 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1)
          {
            goto LABEL_30;
          }
        }

        a2 = &unk_2784F7000;
        if (v25 < v74)
        {
          if (__OFSUB__(v74, v25))
          {
            goto LABEL_62;
          }

          if (__OFSUB__(v74, v74 - v25))
          {
            goto LABEL_63;
          }

          v74 = v25;
        }

        goto LABEL_45;
      }

      v42 = [v12 a2[306]];
      a1 = sub_223CEACF0();
      a3 = v43;

      v68[0] = a1;
      v68[1] = a3;
      v6 = v68;
      MEMORY[0x223DF72C0](0x63206F6E202D2D20, 0xEC0000006E696168);
      if (v67)
      {
        goto LABEL_61;
      }

      sub_223CC3B00(v68[0], v68[1], v11 >= v66);

      strcpy(v68, "dispatching: ");
      HIWORD(v68[1]) = -4864;
      v44 = [(BKEventDeliveryChain *)v13 dispatchTarget];
      v45 = [v44 a2[306]];
      a3 = sub_223CEACF0();
      v47 = v46;

      MEMORY[0x223DF72C0](a3, v47);

      a1 = v68[1];
      v6 = &v71;
      sub_223CC3B00(v68[0], v68[1], 1);

      v48 = [(BKEventDeferringNode *)v13 subnodes];
      if (v48)
      {
        strcpy(v68, "sender (");
        BYTE1(v68[1]) = 0;
        WORD1(v68[1]) = 0;
        HIDWORD(v68[1]) = -402653184;
        a1 = v48;
        v49 = [v48 a2[306]];
        v50 = sub_223CEACF0();
        v52 = v51;

        MEMORY[0x223DF72C0](v50, v52);

        MEMORY[0x223DF72C0](41, 0xE100000000000000);
        a3 = v68[1];
        v6 = &v71;
        sub_223CC3B00(v68[0], v68[1], 1);
      }

LABEL_45:
      if (v25 < v74)
      {
        if (__OFSUB__(v74, v25))
        {
          goto LABEL_58;
        }

        if (__OFSUB__(v74, v74 - v25))
        {
          goto LABEL_59;
        }

        v74 = v25;
      }

      sub_223CC3E8C();
      v11 = v15;
      v12 = v16;
      v13 = v17;
      if (!v16)
      {
        v7 = v76;
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    if (sub_223CEADD0())
    {
      sub_223CC6FCC(MEMORY[0x277D84F90]);
      v7 = v65;
    }

    else
    {
      v7 = MEMORY[0x277D84FA0];
    }
  }

LABEL_50:
  sub_223CC67D0(v69, v70);
  if ((v7 & 0xC000000000000001) != 0)
  {
    if (sub_223CEADD0())
    {
      goto LABEL_52;
    }

LABEL_54:

    v63 = v71;
  }

  else
  {
    if (!*(v7 + 16))
    {
      goto LABEL_54;
    }

LABEL_52:
    v54 = v71;
    v53 = v72;

    v69 = 0;
    v70 = 0xE000000000000000;
    sub_223CEAE40();

    v69 = 0xD000000000000012;
    v70 = 0x8000000223CEDAE0;
    v55 = objc_opt_self();
    sub_223CC73DC(0, &qword_28133EF30, 0x277CF0640);
    sub_223CC67D8(&qword_28133EF28, &qword_28133EF30, 0x277CF0640);
    v56 = sub_223CEAD50();

    v57 = [v55 descriptionForRootObject_];

    v58 = sub_223CEACF0();
    v60 = v59;

    MEMORY[0x223DF72C0](v58, v60);

    MEMORY[0x223DF72C0](10, 0xE100000000000000);
    v61 = v69;
    v62 = v70;
    v69 = v54;
    v70 = v53;

    MEMORY[0x223DF72C0](v61, v62);

    return v69;
  }

  return v63;
}

void sub_223CC50EC(void *a1, id *a2, uint64_t a3, uint64_t a4)
{
  if (__OFSUB__(a4, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = v4;
    sub_223CC6BE8(a1, a2, v5, a4 - 1 <= a3);
    v8 = [(BKEventDeferringNode *)a1 subnodes];
    v9 = [v8 count];
    v10 = v8;
    if (v9 >= 1)
    {
      for (i = 0; i != v9; ++i)
      {
        v12 = [v10 objectAtIndex_];
        sub_223CEAD90();
        swift_unknownObjectRelease();
        sub_223CC73DC(0, &qword_28133EF40, off_2784F5E88);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        if (!v15)
        {
          break;
        }

        sub_223CC50EC(v15, a2, i, v9);
      }
    }

    v13 = *(v5 + 24);
    v14 = v13 - 1;
    if (v13 < 1)
    {
    }

    else
    {
      sub_223CC5260(v13);

      *(v5 + 24) = v14;
    }
  }
}

uint64_t sub_223CC5260(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_223CEAF10();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_223CC5350();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_223CC5E30(v6);
  result = v11;
  *v1 = v12;
  return result;
}

void *sub_223CC5350()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0BC828, &qword_223CED878);
  v2 = *v0;
  v3 = sub_223CEAE00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_223CC5490()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0BC820, &qword_223CED870);
  v2 = *v0;
  v3 = sub_223CEAE00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_223CC55E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0BC828, &qword_223CED878);
  result = sub_223CEAE10();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_223CEAF10();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_223CC57D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0BC820, &qword_223CED870);
  result = sub_223CEAE10();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_223CEAD70();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_223CC59E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0BC828, &qword_223CED878);
  result = sub_223CEAE10();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_223CEAF10();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_223CC5C08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0BC820, &qword_223CED870);
  result = sub_223CEAE10();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_223CEAD70();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_223CC5E30(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_223CEADA0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_223CEAF10() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_223CC5FB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0BC820, &qword_223CED870);
    v2 = sub_223CEAE20();
    v15 = v2;
    sub_223CEADC0();
    if (sub_223CEADF0())
    {
      sub_223CC73DC(0, &qword_28133EF30, 0x277CF0640);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_223CC5C08(v9 + 1);
        }

        v2 = v15;
        result = sub_223CEAD70();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_223CEADF0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t sub_223CC61A4(uint64_t a1, uint64_t a2)
{
  sub_223CEAD70();
  result = sub_223CEADB0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_223CC6228(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_223CEAF10();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_223CC6540(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_223CC6308(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_223CEADE0();

    if (v9)
    {

      sub_223CC73DC(0, &qword_28133EF30, 0x277CF0640);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_223CEADD0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_223CC5FB4(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_223CC5C08(v20 + 1);
    }

    v18 = v8;
    sub_223CC61A4(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_223CC73DC(0, &qword_28133EF30, 0x277CF0640);
  v11 = sub_223CEAD70();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_223CC6660(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_223CEAD80();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_223CC6540(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_223CC59E4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_223CC5350();
      a2 = v7;
      goto LABEL_12;
    }

    sub_223CC55E0(v5 + 1);
  }

  v8 = *v3;
  result = sub_223CEAF10();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_223CEAF00();
  __break(1u);
  return result;
}

void sub_223CC6660(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_223CC5C08(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_223CC5490();
      goto LABEL_12;
    }

    sub_223CC57D0(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_223CEAD70();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_223CC73DC(0, &qword_28133EF30, 0x277CF0640);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_223CEAD80();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_223CEAF00();
  __break(1u);
}

uint64_t sub_223CC67D8(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_223CC73DC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_223CC6828(id *a1, void *a2)
{
  v3 = a1;
  v4 = [(BKEventDeferringEnvironmentGraph *)a1 allSelectionPathIdentifiers];
  sub_223CC73DC(0, &qword_28133EEF0, 0x277CF0648);
  v5 = sub_223CEAD20();

  if (v5 >> 62)
  {
    goto LABEL_27;
  }

  v30 = v5 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_223CEADD0())
  {
    v7 = 0;
    v28 = v5;
    v29 = v5 & 0xC000000000000001;
    v26 = v3;
    v27 = i;
    while (1)
    {
      if (v29)
      {
        v8 = MEMORY[0x223DF7410](v7, v5);
      }

      else
      {
        if (v7 >= *(v30 + 16))
        {
          goto LABEL_26;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v31 = 0;
      v32 = 0xE000000000000000;
      v11 = [(BKEventDeferringEnvironmentGraph *)v3 constraintsForNode:a2 pathIdentifier:v8];
      sub_223CC73DC(0, &qword_28133EF00, 0x277CF0620);
      sub_223CC67D8(&qword_28133EEF8, &qword_28133EF00, 0x277CF0620);
      v12 = sub_223CEAD60();

      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = sub_223CEADD0();
      }

      else
      {
        v13 = *(v12 + 16);
      }

      if (v13)
      {
        v14 = 0xA400000000000000;
        v31 = 2459213808;
        v32 = 0xA400000000000000;
        v15 = 2459213808;
      }

      else
      {
        v15 = 0;
        v14 = 0xE000000000000000;
      }

      v16 = v3;
      v17 = a2;
      v18 = [(BKEventDeferringEnvironmentGraph *)v16 modalitiesForNode:a2 pathIdentifier:v9];
      sub_223CC73DC(0, &qword_28133EF20, 0x277CF0630);
      sub_223CC67D8(&qword_28133EF18, &qword_28133EF20, 0x277CF0630);
      v19 = sub_223CEAD60();

      if ((v19 & 0xC000000000000001) != 0)
      {
        v20 = sub_223CEADD0();
      }

      else
      {
        v20 = *(v19 + 16);
      }

      if (v20)
      {
        MEMORY[0x223DF72C0](8755426, 0xA300000000000000);
        v15 = v31;
        v14 = v32;
      }

      if ((v14 & 0xF00000000000000) != 0)
      {
        v21 = [v9 description];
        v22 = sub_223CEACF0();
        v24 = v23;

        MEMORY[0x223DF72C0](v22, v24);

        MEMORY[0x223DF72C0](32, 0xE100000000000000);
        MEMORY[0x223DF72C0](v15, v14);

        MEMORY[0x223DF72C0](41, 0xE100000000000000);

        MEMORY[0x223DF72C0](40, 0xE100000000000000);

        v7 = v10;
      }

      else
      {

        ++v7;
      }

      v5 = v28;
      a2 = v17;
      v3 = v26;
      if (v10 == v27)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v30 = v5 & 0xFFFFFFFFFFFFFF8;
  }

LABEL_28:

  return 0;
}

void sub_223CC6BE8(void *a1, id *a2, uint64_t a3, int a4)
{
  LODWORD(v36) = a4;
  v6 = [(BKEventDeferringNode *)a1 rule];
  v7 = [v6 predicate];
  v40 = [v7 token];

  if (v40)
  {
    v8 = v40;
    v9 = [v8 description];
    v10 = sub_223CEACF0();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = [v6 identity];
  v14 = [v13 description];
  v15 = sub_223CEACF0();
  v16 = v6;
  v18 = v17;

  v19 = sub_223CC6828(a2, a1);
  v21 = v20;
  MEMORY[0x223DF72C0](15392, 0xE200000000000000);
  MEMORY[0x223DF72C0](v10, v12);

  MEMORY[0x223DF72C0](8254, 0xE200000000000000);
  MEMORY[0x223DF72C0](v19, v21);

  sub_223CC3B00(v15, v18, v37 & 1);

  v22 = [(BKEventDeferringNode *)a1 subnodes];
  v23 = [v22 count];

  if (v23)
  {
  }

  else
  {
    v38 = v16;
    v24 = [v16 target];
    v25 = [v24 pid];
    v26 = [v24 token];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
      v29 = [v28 description];
      v30 = sub_223CEACF0();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0xE000000000000000;
    }

    if (v25 == [(BKEventDeferringNode *)a1 pid])
    {
      v41 = 0x203A6E656B6F743CLL;
      v42 = 0xE800000000000000;
    }

    else
    {
      sub_223CEAE40();

      v41 = 0x203A6469703CLL;
      v42 = 0xE600000000000000;
      v33 = sub_223CEAEF0();
      MEMORY[0x223DF72C0](v33);

      MEMORY[0x223DF72C0](0x203A6E656B6F7420, 0xE800000000000000);
    }

    MEMORY[0x223DF72C0](v30, v32);

    MEMORY[0x223DF72C0](62, 0xE100000000000000);
    sub_223CC3B00(v41, v42, 1);

    v34 = *(a3 + 24);
    v35 = v34 - 1;
    if (v34 < 1)
    {
    }

    else
    {
      sub_223CC5260(v34);

      *(a3 + 24) = v35;
    }
  }
}

void sub_223CC6FCC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_223CEADD0())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0BC820, &qword_223CED870);
      v3 = sub_223CEAE30();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_223CEADD0();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x223DF7410](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_223CEAD70();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_223CC73DC(0, &qword_28133EF30, 0x277CF0640);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_223CEAD80();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_223CEAD70();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_223CC73DC(0, &qword_28133EF30, 0x277CF0640);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_223CEAD80();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_223CC72BC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_223CEADD0())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x223DF7410](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_223CC6308(&v6, v4);

      if (v5 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_223CC73DC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_223CC8380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _BKDeferringTargetForResolutionTranscript(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CF0C08]);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = ___BKDeferringTargetForResolutionTranscript_block_invoke;
  v10 = &unk_2784F7270;
  v11 = v2;
  v12 = v1;
  v3 = v1;
  v4 = v2;
  [v4 appendProem:0 block:&v7];
  v5 = [v4 description];

  return v5;
}

void _BKDescribeSenderSet(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v6 = @"(all senders)";
LABEL_6:
    v7 = [v3 appendObject:v6 withName:0 skipIfNil:0];
    goto LABEL_7;
  }

  if (![v4 count])
  {
    v6 = @"(no senders)";
    goto LABEL_6;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___BKDescribeSenderSet_block_invoke;
  v8[3] = &unk_2784F7270;
  v9 = v3;
  v10 = v5;
  [v9 sameLine:v8];

LABEL_7:
}

void sub_223CD3FFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_223CD513C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id BKHIDCreatePrimaryEventProcessor(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v15 = 0;
  v2 = _BKHIDEventProcessorConfigurationFromRootRelativePath(@"/System/Library/BackBoard/EventProcessorConfigurationPlatformOverride.plist", &v15);
  v3 = v15;
  v4 = v3;
  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v6 = [v3 domain];
    v7 = [v4 code];
    if ([v6 isEqual:*MEMORY[0x277CCA050]])
    {
      v8 = (v7 & 0xFFFFFFFFFFFFFEFFLL) == 4;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      v9 = BKLogEventDelivery();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v17 = @"/System/Library/BackBoard/EventProcessorConfigurationPlatformOverride.plist";
        v18 = 2114;
        v19 = v4;
        _os_log_error_impl(&dword_223CBE000, v9, OS_LOG_TYPE_ERROR, "cannot decode %{public}@: %{public}@", buf, 0x16u);
      }
    }

    v14 = v4;
    v2 = _BKHIDEventProcessorConfigurationFromRootRelativePath(@"/System/Library/BackBoard/EventProcessorConfiguration.plist", &v14);
    v5 = v14;

    if (!v2)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BKHIDPrimaryEventProcessor * _Nonnull BKHIDCreatePrimaryEventProcessor(BKHIDEventProcessorCreationContext *__strong _Nonnull)"];
      [v12 handleFailureInFunction:v13 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:55 description:{@"error reading %@: %@", @"/System/Library/BackBoard/EventProcessorConfiguration.plist", v5}];
    }
  }

  v10 = BKHIDCreatePrimaryEventProcessorWithDictionary(v1, v2);

  return v10;
}

id _BKHIDEventProcessorConfigurationFromRootRelativePath(void *a1, void *a2)
{
  v3 = a1;
  v4 = BSSystemRootDirectory();
  v5 = [v4 stringByAppendingPathComponent:v3];

  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:0];
  v12 = 0;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v6 error:&v12];
  v8 = v12;
  v9 = v8;
  if (a2 && !v7)
  {
    v10 = v8;
    *a2 = v9;
  }

  return v7;
}

BKHIDPrimaryEventProcessor *BKHIDCreatePrimaryEventProcessorWithDictionary(void *a1, void *a2)
{
  v175 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v140 = a2;
  v4 = [v140 objectForKeyedSubscript:@"DefaultProcessor"];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v135 = v8;
  if (!v8)
  {
    v123 = [MEMORY[0x277CCA890] currentHandler];
    v124 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _validateDictionary(NSDictionary *__strong)"];
    [v123 handleFailureInFunction:v124 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:223 description:@"Must have a default processor name"];
  }

  v9 = [v140 objectForKeyedSubscript:@"CreationOrder"];
  v10 = 0x277CBE000uLL;
  v11 = objc_opt_class();
  v12 = v9;
  v136 = v3;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (!v14)
  {
    v125 = [MEMORY[0x277CCA890] currentHandler];
    v126 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _validateDictionary(NSDictionary *__strong)"];
    [v125 handleFailureInFunction:v126 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:226 description:@"Must have a creation order"];
  }

  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v164 objects:v174 count:16];
  v137 = v15;
  if (v16)
  {
    v17 = v16;
    v18 = *v165;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v165 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v164 + 1) + 8 * i);
        v21 = objc_opt_class();
        v22 = v20;
        if (v21)
        {
          if (objc_opt_isKindOfClass())
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;

        if (!v24)
        {
          v25 = [MEMORY[0x277CCA890] currentHandler];
          [MEMORY[0x277CCACA8] stringWithUTF8String:"void _validateDictionary(NSDictionary *__strong)"];
          v27 = v26 = v10;
          [v25 handleFailureInFunction:v27 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:230 description:{@"Bad creation order name: %@", v22}];

          v10 = v26;
          v15 = v137;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v164 objects:v174 count:16];
    }

    while (v17);
  }

  v28 = [v140 objectForKeyedSubscript:@"ProcessorChains"];
  v29 = objc_opt_class();
  v30 = v28;
  if (v29)
  {
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;

  if (!v32)
  {
    v127 = [MEMORY[0x277CCA890] currentHandler];
    v128 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _validateDictionary(NSDictionary *__strong)"];
    [v127 handleFailureInFunction:v128 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:234 description:@"Must have a chain configuration"];
  }

  v33 = [MEMORY[0x277CBEB98] setWithArray:v137];
  v34 = [v33 count];
  if (v34 != [v137 count])
  {
    v129 = [MEMORY[0x277CCA890] currentHandler];
    v130 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _validateDictionary(NSDictionary *__strong)"];
    [v129 handleFailureInFunction:v130 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:237 description:@"Creation order items must be unique"];
  }

  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  obj = v32;
  v143 = [obj countByEnumeratingWithState:&v160 objects:buf count:16];
  if (v143)
  {
    v141 = *v161;
    do
    {
      v35 = 0;
      do
      {
        if (*v161 != v141)
        {
          objc_enumerationMutation(obj);
        }

        v151 = v35;
        v36 = *(*(&v160 + 1) + 8 * v35);
        v37 = objc_opt_class();
        v38 = v36;
        if (v37)
        {
          if (objc_opt_isKindOfClass())
          {
            v39 = v38;
          }

          else
          {
            v39 = 0;
          }
        }

        else
        {
          v39 = 0;
        }

        v40 = v39;

        if (!v40)
        {
          v60 = [MEMORY[0x277CCA890] currentHandler];
          v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _validateDictionary(NSDictionary *__strong)"];
          [v60 handleFailureInFunction:v61 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:241 description:{@"Bad event type: %@", v38}];
        }

        v41 = [obj objectForKeyedSubscript:v40];
        v42 = objc_opt_class();
        v43 = v41;
        if (v42)
        {
          if (objc_opt_isKindOfClass())
          {
            v44 = v43;
          }

          else
          {
            v44 = 0;
          }
        }

        else
        {
          v44 = 0;
        }

        v154 = v40;
        v45 = v44;

        if (!v45)
        {
          v62 = [MEMORY[0x277CCA890] currentHandler];
          v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _validateDictionary(NSDictionary *__strong)"];
          [v62 handleFailureInFunction:v63 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:245 description:{@"Bad processor chain: %@", v43}];
        }

        v148 = v43;
        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
        v46 = v45;
        v47 = [v46 countByEnumeratingWithState:&v156 objects:&v168 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v157;
          do
          {
            for (j = 0; j != v48; ++j)
            {
              if (*v157 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v51 = *(*(&v156 + 1) + 8 * j);
              v52 = objc_opt_class();
              v53 = v51;
              if (v52)
              {
                if (objc_opt_isKindOfClass())
                {
                  v54 = v53;
                }

                else
                {
                  v54 = 0;
                }
              }

              else
              {
                v54 = 0;
              }

              v55 = v54;

              if (!v55)
              {
                v56 = [MEMORY[0x277CCA890] currentHandler];
                v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _validateDictionary(NSDictionary *__strong)"];
                [v56 handleFailureInFunction:v57 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:249 description:{@"Bad event processor: %@", v53}];
              }

              if (([v33 containsObject:v55] & 1) == 0)
              {
                v58 = [MEMORY[0x277CCA890] currentHandler];
                v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _validateDictionary(NSDictionary *__strong)"];
                [v58 handleFailureInFunction:v59 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:250 description:{@"Processor chain for %@ contains event processor %@ that does not exist in creation order", v154, v55}];
              }
            }

            v48 = [v46 countByEnumeratingWithState:&v156 objects:&v168 count:16];
          }

          while (v48);
        }

        v35 = v151 + 1;
      }

      while (v151 + 1 != v143);
      v143 = [obj countByEnumeratingWithState:&v160 objects:buf count:16];
    }

    while (v143);
  }

  v64 = [v140 objectForKeyedSubscript:@"CreationOrder"];
  v65 = objc_opt_class();
  v66 = v64;
  if (v65)
  {
    if (objc_opt_isKindOfClass())
    {
      v67 = v66;
    }

    else
    {
      v67 = 0;
    }
  }

  else
  {
    v67 = 0;
  }

  v68 = v67;

  v69 = v136;
  v70 = v68;
  v152 = [MEMORY[0x277CBEB38] dictionary];
  v142 = v69;
  v149 = [v69 eventProcessorRegistry];
  v144 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  obja = v70;
  v71 = [obja countByEnumeratingWithState:&v168 objects:v174 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v169;
    do
    {
      for (k = 0; k != v72; ++k)
      {
        if (*v169 != v73)
        {
          objc_enumerationMutation(obja);
        }

        v75 = *(*(&v168 + 1) + 8 * k);
        v76 = NSClassFromString(v75);
        if (v76)
        {
          v77 = v76;
          if (([(objc_class *)v76 conformsToProtocol:&unk_283741760]& 1) == 0)
          {
            v138 = [MEMORY[0x277CCA890] currentHandler];
            v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSDictionary<NSString *, id<BKHIDEventProcessor>> *_createEventProcessorsWithCreationOrderArray(BKHIDEventProcessorCreationContext *__strong, NSArray<NSString *> *__strong)"}];
            [v138 handleFailureInFunction:v82 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:90 description:{@"Class %@ is not an event processor", v75}];
          }

          if (objc_opt_respondsToSelector())
          {
            v78 = [(objc_class *)v77 performSelector:sel_sharedInstance];
          }

          else if ([(objc_class *)v77 instancesRespondToSelector:sel_initWithContext_])
          {
            v78 = [[v77 alloc] initWithContext:v142];
          }

          else
          {
            v78 = objc_alloc_init(v77);
          }

          v79 = v78;
          v80 = BKLogEventDelivery();
          v81 = os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT);
          if (v79)
          {
            if (v81)
            {
              *buf = 138543362;
              v173 = v79;
              _os_log_impl(&dword_223CBE000, v80, OS_LOG_TYPE_DEFAULT, "Registered %{public}@", buf, 0xCu);
            }

            [v152 setObject:v79 forKeyedSubscript:v75];
            [v149 addEventProcessor:v79];
            if (objc_opt_respondsToSelector())
            {
              [v144 addObject:v79];
            }
          }

          else
          {
            if (v81)
            {
              *buf = 138543362;
              v173 = v75;
              _os_log_impl(&dword_223CBE000, v80, OS_LOG_TYPE_DEFAULT, "Could not create event processor of class %{public}@", buf, 0xCu);
            }

            v79 = 0;
          }
        }

        else
        {
          v79 = BKLogEventDelivery();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v173 = v75;
            _os_log_impl(&dword_223CBE000, v79, OS_LOG_TYPE_DEFAULT, "Event processor class %{public}@ does not exist", buf, 0xCu);
          }
        }
      }

      v72 = [obja countByEnumeratingWithState:&v168 objects:v174 count:16];
    }

    while (v72);
  }

  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v83 = v144;
  v84 = [v83 countByEnumeratingWithState:&v164 objects:buf count:16];
  if (v84)
  {
    v85 = v84;
    v86 = *v165;
    do
    {
      for (m = 0; m != v85; ++m)
      {
        if (*v165 != v86)
        {
          objc_enumerationMutation(v83);
        }

        [*(*(&v164 + 1) + 8 * m) didInitializeRegistryWithContext:v142];
      }

      v85 = [v83 countByEnumeratingWithState:&v164 objects:buf count:16];
    }

    while (v85);
  }

  if (![v152 count])
  {
    v131 = [MEMORY[0x277CCA890] currentHandler];
    v132 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BKHIDPrimaryEventProcessor * _Nonnull BKHIDCreatePrimaryEventProcessorWithDictionary(BKHIDEventProcessorCreationContext *__strong _Nonnull, NSDictionary *__strong _Nonnull)"}];
    [v131 handleFailureInFunction:v132 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:65 description:@"Failed to create event processors from creation order data"];
  }

  v88 = [v140 objectForKeyedSubscript:@"DefaultProcessor"];
  v89 = objc_opt_class();
  v90 = v88;
  if (v89)
  {
    if (objc_opt_isKindOfClass())
    {
      v91 = v90;
    }

    else
    {
      v91 = 0;
    }
  }

  else
  {
    v91 = 0;
  }

  v92 = v91;

  v93 = [v152 objectForKeyedSubscript:v92];
  if (!v93)
  {
    v133 = [MEMORY[0x277CCA890] currentHandler];
    v134 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BKHIDPrimaryEventProcessor * _Nonnull BKHIDCreatePrimaryEventProcessorWithDictionary(BKHIDEventProcessorCreationContext *__strong _Nonnull, NSDictionary *__strong _Nonnull)"}];
    [v133 handleFailureInFunction:v134 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:69 description:@"Failed to create a default event processor"];
  }

  v94 = [v140 objectForKeyedSubscript:@"ProcessorChains"];
  v95 = objc_opt_class();
  v96 = v94;
  v145 = v92;
  if (v95)
  {
    if (objc_opt_isKindOfClass())
    {
      v97 = v96;
    }

    else
    {
      v97 = 0;
    }
  }

  else
  {
    v97 = 0;
  }

  v98 = v97;

  v99 = v152;
  v100 = v98;
  v139 = v93;
  memset(v174, 0, sizeof(v174));
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v155 = v100;
  v153 = [v100 countByEnumeratingWithState:&v164 objects:buf count:16];
  if (v153)
  {
    v150 = *v165;
    do
    {
      for (n = 0; n != v153; ++n)
      {
        if (*v165 != v150)
        {
          objc_enumerationMutation(v155);
        }

        v102 = *(*(&v164 + 1) + 8 * n);
        v103 = [MEMORY[0x277CBEB18] array];
        v160 = 0u;
        v161 = 0u;
        v162 = 0u;
        v163 = 0u;
        v104 = [v155 objectForKeyedSubscript:v102];
        v105 = [v104 countByEnumeratingWithState:&v160 objects:&v168 count:16];
        if (v105)
        {
          v106 = v105;
          v107 = *v161;
          do
          {
            for (ii = 0; ii != v106; ++ii)
            {
              if (*v161 != v107)
              {
                objc_enumerationMutation(v104);
              }

              v109 = [v99 objectForKeyedSubscript:*(*(&v160 + 1) + 8 * ii)];
              if (v109)
              {
                [v103 addObject:v109];
              }
            }

            v106 = [v104 countByEnumeratingWithState:&v160 objects:&v168 count:16];
          }

          while (v106);
        }

        if ([v103 count])
        {
          v110 = v102;
          if (_eventTypeFromName_onceToken != -1)
          {
            dispatch_once(&_eventTypeFromName_onceToken, &__block_literal_global_725);
          }

          v111 = [_eventTypeFromName_nameToEventTypeMap objectForKeyedSubscript:v110];
          if (v111)
          {
            v112 = v111;
LABEL_150:
            v117 = [v112 intValue];

            objc_storeStrong(v174 + v117, v103);
            goto LABEL_151;
          }

          if ([v110 hasPrefix:@"kIOHIDEventType"])
          {
            v113 = [v110 stringByReplacingCharactersInRange:0 withString:{objc_msgSend(@"kIOHIDEventType", "length"), &stru_283738628}];

            v114 = [_eventTypeFromName_nameToEventTypeMap objectForKeyedSubscript:v113];
            if (v114)
            {
              v112 = v114;
              v110 = v113;
              goto LABEL_150;
            }

            v110 = v113;
          }

          v115 = [MEMORY[0x277CCA890] currentHandler];
          v116 = [MEMORY[0x277CCACA8] stringWithUTF8String:"IOHIDEventType _eventTypeFromName(NSString *__strong)"];
          [v115 handleFailureInFunction:v116 file:@"BKHIDPrimaryEventProcessorFactory.m" lineNumber:216 description:{@"Unknown event type %@", v110}];

          v112 = 0;
          goto LABEL_150;
        }

LABEL_151:
      }

      v153 = [v155 countByEnumeratingWithState:&v164 objects:buf count:16];
    }

    while (v153);
  }

  v118 = [[BKHIDPrimaryEventProcessor alloc] initWithSubProcessors:v174 defaultProcessor:v139];
  for (jj = 344; jj != -8; jj -= 8)
  {
  }

  v120 = [v142 eventProcessorRegistry];
  [v120 addEventProcessor:v118];
  v121 = v118;

  return v118;
}

void ___eventTypeFromName_block_invoke()
{
  v0 = _eventTypeFromName_nameToEventTypeMap;
  _eventTypeFromName_nameToEventTypeMap = &unk_28373ED88;
}

uint64_t BKHIDEventRoutingInit(uint64_t a1)
{
  __HIDClientConnectionManager = [[BKHIDClientConnectionManager alloc] initWithHIDEventSystem:a1];

  return MEMORY[0x2821F96F8]();
}

void BKSendGSEvent(int *a1, uint64_t a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!__BKEventTapCallback || __BKEventTapCallback(a1))
  {
    v5 = a3 ? GSSendSystemAppEvent() : GSSendEvent();
    v6 = v5;
    if (v5)
    {
      v7 = BKLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *a1;
        v9 = 136315906;
        v10 = "BKSendGSEvent";
        v11 = 1024;
        v12 = v8;
        v13 = 2082;
        v14 = mach_error_string(v6);
        v15 = 1024;
        v16 = v6;
        _os_log_impl(&dword_223CBE000, v7, OS_LOG_TYPE_DEFAULT, "%s ERROR sending event type %d: %{public}s (0x%X)", &v9, 0x22u);
      }
    }
  }
}

void _BKHIDServiceWillTerminate(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = BKLogHID();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = a3;
    _os_log_impl(&dword_223CBE000, v5, OS_LOG_TYPE_DEFAULT, "Got a service willTerminate callback: %{public}@", &v7, 0xCu);
  }

  v6 = a1;
  [v6 _serviceWasRemoved];
}

void sub_223CD9CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_223CDAA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223CDAD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _BKHIDSetUserEventNotifier(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _BKHIDSetUserEventNotifier(__strong id<BKHIDUserEventNotifying> _Nonnull)"];
    [v4 handleFailureInFunction:v5 file:@"BKHIDUserEventNotifying.m" lineNumber:14 description:@"userEventNotifier must not be nil"];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___BKHIDSetUserEventNotifier_block_invoke;
  block[3] = &unk_2784F6B98;
  v7 = v1;
  v2 = _BKHIDSetUserEventNotifier_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&_BKHIDSetUserEventNotifier_onceToken, block);
  }
}

__CFString *NSStringFromBKHIDEventSequencePosition(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"<whuh?>";
  }

  else
  {
    return off_2784F6C50[a1];
  }
}

id BKLogBootUI()
{
  if (BKLogBootUI_onceToken != -1)
  {
    dispatch_once(&BKLogBootUI_onceToken, &__block_literal_global_2088);
  }

  v1 = BKLogBootUI___logObj;

  return v1;
}

uint64_t __BKLogBootUI_block_invoke()
{
  BKLogBootUI___logObj = os_log_create(*MEMORY[0x277CF0540], "BootUI");

  return MEMORY[0x2821F96F8]();
}

id BKLogButton()
{
  if (BKLogButton_onceToken != -1)
  {
    dispatch_once(&BKLogButton_onceToken, &__block_literal_global_3);
  }

  v1 = BKLogButton___logObj;

  return v1;
}

uint64_t __BKLogButton_block_invoke()
{
  BKLogButton___logObj = os_log_create(*MEMORY[0x277CF0540], "Button");

  return MEMORY[0x2821F96F8]();
}

id BKLogDisplayAnnotations()
{
  if (BKLogDisplayAnnotations_onceToken != -1)
  {
    dispatch_once(&BKLogDisplayAnnotations_onceToken, &__block_literal_global_6);
  }

  v1 = BKLogDisplayAnnotations___logObj;

  return v1;
}

uint64_t __BKLogDisplayAnnotations_block_invoke()
{
  BKLogDisplayAnnotations___logObj = os_log_create(*MEMORY[0x277CF0540], "DisplayAnnotations");

  return MEMORY[0x2821F96F8]();
}

id BKLogDisplayMonitor()
{
  if (BKLogDisplayMonitor_onceToken != -1)
  {
    dispatch_once(&BKLogDisplayMonitor_onceToken, &__block_literal_global_9);
  }

  v1 = BKLogDisplayMonitor___logObj;

  return v1;
}

uint64_t __BKLogDisplayMonitor_block_invoke()
{
  BKLogDisplayMonitor___logObj = os_log_create(*MEMORY[0x277CF0540], "DisplayMonitor");

  return MEMORY[0x2821F96F8]();
}

id BKLogGenericGesture()
{
  if (BKLogGenericGesture_onceToken != -1)
  {
    dispatch_once(&BKLogGenericGesture_onceToken, &__block_literal_global_12);
  }

  v1 = BKLogGenericGesture___logObj;

  return v1;
}

uint64_t __BKLogGenericGesture_block_invoke()
{
  BKLogGenericGesture___logObj = os_log_create(*MEMORY[0x277CF0540], "GenericGesture");

  return MEMORY[0x2821F96F8]();
}

uint64_t __BKLogHID_block_invoke()
{
  BKLogHID___logObj = os_log_create(*MEMORY[0x277CF0540], "HID");

  return MEMORY[0x2821F96F8]();
}

id BKLogIdleTimer()
{
  if (BKLogIdleTimer_onceToken != -1)
  {
    dispatch_once(&BKLogIdleTimer_onceToken, &__block_literal_global_18);
  }

  v1 = BKLogIdleTimer___logObj;

  return v1;
}

uint64_t __BKLogIdleTimer_block_invoke()
{
  BKLogIdleTimer___logObj = os_log_create(*MEMORY[0x277CF0540], "IdleTimer");

  return MEMORY[0x2821F96F8]();
}

id BKLogRenderOverlay()
{
  if (BKLogRenderOverlay_onceToken != -1)
  {
    dispatch_once(&BKLogRenderOverlay_onceToken, &__block_literal_global_21);
  }

  v1 = BKLogRenderOverlay___logObj;

  return v1;
}

uint64_t __BKLogRenderOverlay_block_invoke()
{
  BKLogRenderOverlay___logObj = os_log_create(*MEMORY[0x277CF0540], "RenderOverlay");

  return MEMORY[0x2821F96F8]();
}

id BKLogHapticFeedback()
{
  if (BKLogHapticFeedback_onceToken != -1)
  {
    dispatch_once(&BKLogHapticFeedback_onceToken, &__block_literal_global_24);
  }

  v1 = BKLogHapticFeedback___logObj;

  return v1;
}

uint64_t __BKLogHapticFeedback_block_invoke()
{
  BKLogHapticFeedback___logObj = os_log_create(*MEMORY[0x277CF0540], "HapticFeedback");

  return MEMORY[0x2821F96F8]();
}

id BKLogAccelerometer()
{
  if (BKLogAccelerometer_onceToken != -1)
  {
    dispatch_once(&BKLogAccelerometer_onceToken, &__block_literal_global_27);
  }

  v1 = BKLogAccelerometer___logObj;

  return v1;
}

uint64_t __BKLogAccelerometer_block_invoke()
{
  BKLogAccelerometer___logObj = os_log_create(*MEMORY[0x277CF0540], "Accelerometer");

  return MEMORY[0x2821F96F8]();
}

id BKLogKeyPresses()
{
  if (BKLogKeyPresses_onceToken != -1)
  {
    dispatch_once(&BKLogKeyPresses_onceToken, &__block_literal_global_30);
  }

  v1 = BKLogKeyPresses___logObj;

  return v1;
}

uint64_t __BKLogKeyPresses_block_invoke()
{
  BKLogKeyPresses___logObj = os_log_create(*MEMORY[0x277CF0540], "KeyPresses");

  return MEMORY[0x2821F96F8]();
}

id BKLogMotionEvents()
{
  if (BKLogMotionEvents_onceToken != -1)
  {
    dispatch_once(&BKLogMotionEvents_onceToken, &__block_literal_global_33);
  }

  v1 = BKLogMotionEvents___logObj;

  return v1;
}

uint64_t __BKLogMotionEvents_block_invoke()
{
  BKLogMotionEvents___logObj = os_log_create(*MEMORY[0x277CF0540], "MotionEvents");

  return MEMORY[0x2821F96F8]();
}

uint64_t __BKLogSendHIDEvent_block_invoke()
{
  BKLogSendHIDEvent___logObj = os_log_create(*MEMORY[0x277CF0540], "SendHIDEvent");

  return MEMORY[0x2821F96F8]();
}

void sub_223CE50BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223CE6650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}
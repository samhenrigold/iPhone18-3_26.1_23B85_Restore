void BKSHIDEventSendToProcessAndFollowDeferringRules(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v7 = a4;
  if (a2 <= 0)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pid > 0"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v15 = v10;
      v16 = 2114;
      v17 = @"BKSHIDEvent.m";
      v18 = 1024;
      v19 = 187;
      v20 = 2114;
      v21 = v9;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B9468);
  }

  if (!a1)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"event != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v15 = v12;
      v16 = 2114;
      v17 = @"BKSHIDEvent.m";
      v18 = 1024;
      v19 = 188;
      v20 = 2114;
      v21 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B953CLL);
  }

  v8 = v7;
  _RedirectEventToClient(a1, v7, a2, v13);
}

_DWORD *BKSHIDEventGetPointerAttributes(uint64_t a1)
{
  Type = IOHIDEventGetType();
  AttributeDataPtr = 0;
  if (Type == 17 && a1)
  {
    if (IOHIDEventGetAttributeDataLength() < 1)
    {
      goto LABEL_8;
    }

    AttributeDataPtr = IOHIDEventGetAttributeDataPtr();
    if (!AttributeDataPtr)
    {
      goto LABEL_9;
    }

    if (AttributeDataPtr[1] && *AttributeDataPtr == 5)
    {
      AttributeDataPtr = BKSHIDEventGetBaseAttributes(a1);
    }

    else
    {
LABEL_8:
      AttributeDataPtr = 0;
    }
  }

LABEL_9:

  return AttributeDataPtr;
}

_DWORD *BKSHIDEventGetKeyboardAttributes(uint64_t a1)
{
  Type = IOHIDEventGetType();
  AttributeDataPtr = 0;
  if (Type == 3 && a1)
  {
    if (IOHIDEventGetAttributeDataLength() < 1)
    {
      goto LABEL_8;
    }

    AttributeDataPtr = IOHIDEventGetAttributeDataPtr();
    if (!AttributeDataPtr)
    {
      goto LABEL_9;
    }

    if (AttributeDataPtr[1] && *AttributeDataPtr == 6)
    {
      AttributeDataPtr = BKSHIDEventGetBaseAttributes(a1);
    }

    else
    {
LABEL_8:
      AttributeDataPtr = 0;
    }
  }

LABEL_9:

  return AttributeDataPtr;
}

_DWORD *BKSHIDEventGetSmartCoverAttributes(uint64_t a1)
{
  v2 = IOHIDEventGetIntegerValue() != 65289 || a1 == 0;
  if (v2 || IOHIDEventGetAttributeDataLength() < 1)
  {
    goto LABEL_10;
  }

  AttributeDataPtr = IOHIDEventGetAttributeDataPtr();
  if (!AttributeDataPtr)
  {
    goto LABEL_11;
  }

  if (AttributeDataPtr[1] && *AttributeDataPtr == 4)
  {
    AttributeDataPtr = BKSHIDEventGetBaseAttributes(a1);
  }

  else
  {
LABEL_10:
    AttributeDataPtr = 0;
  }

LABEL_11:

  return AttributeDataPtr;
}

void *BKSHIDEventAttributeDataWithExpectedClass(uint64_t a1, void *a2)
{
  v3 = BKSHIDEventGetBaseAttributes(a1);
  if (a2)
  {
    if (objc_opt_isKindOfClass())
    {
      a2 = v3;
    }

    else
    {
      a2 = 0;
    }
  }

  v4 = a2;

  return a2;
}

uint64_t BKSHIDEventCopyDisplayIDFromEvent(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (IOHIDEventGetAttributeDataLength() < 1)
  {
    return 0;
  }

  AttributeDataPtr = IOHIDEventGetAttributeDataPtr();
  if (!AttributeDataPtr || !*(AttributeDataPtr + 1) || *AttributeDataPtr - 1 > 2)
  {
    return 0;
  }

  v3 = BKSHIDEventGetBaseAttributes(a1);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 display];
    v6 = [v5 _hardwareIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void *BKSHIDEventGetContextIDFromEvent(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = BKSHIDEventGetBaseAttributes(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 token];
    v4 = [v3 _identifierOfCAContext];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void *BKSHIDEventGetSourceFromKeyboardEvent(void *result)
{
  if (result)
  {
    v1 = BKSHIDEventGetBaseAttributes(result);
    v2 = [v1 source];

    return v2;
  }

  return result;
}

void *BKSHIDEventGetIsSystemAppEventFromEvent(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = BKSHIDEventGetBaseAttributes(a1);
  v2 = [v1 environment];
  v3 = [v2 _isSystemEnvironment];

  return v3;
}

void BKSHIDEventSetBaseAttributes(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v3 = objc_opt_class();
  objc_opt_class();
  if (([v3 isEqual:?] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class()];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v8 = v5;
      v9 = 2114;
      v10 = @"BKSHIDEvent.m";
      v11 = 1024;
      v12 = 397;
      v13 = 2114;
      v14 = v4;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B9A60);
  }

  _BKSHIDEventSetAttributes(a1, v6, 1);
}

void BKSHIDEventSetDigitizerAttributes(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v3 = objc_opt_class();
  objc_opt_class();
  if (([v3 isEqual:?] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class()];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v8 = v5;
      v9 = 2114;
      v10 = @"BKSHIDEvent.m";
      v11 = 1024;
      v12 = 403;
      v13 = 2114;
      v14 = v4;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B9BDCLL);
  }

  _BKSHIDEventSetAttributes(a1, v6, 2);
}

void BKSHIDEventSetPointerAttributes(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v3 = objc_opt_class();
  objc_opt_class();
  if (([v3 isEqual:?] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class()];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v8 = v5;
      v9 = 2114;
      v10 = @"BKSHIDEvent.m";
      v11 = 1024;
      v12 = 409;
      v13 = 2114;
      v14 = v4;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B9D58);
  }

  _BKSHIDEventSetAttributes(a1, v6, 5);
}

void BKSHIDEventSetKeyboardAttributes(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v3 = objc_opt_class();
  objc_opt_class();
  if (([v3 isEqual:?] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class()];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v8 = v5;
      v9 = 2114;
      v10 = @"BKSHIDEvent.m";
      v11 = 1024;
      v12 = 415;
      v13 = 2114;
      v14 = v4;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B9ED4);
  }

  _BKSHIDEventSetAttributes(a1, v6, 6);
}

void BKSHIDEventSetProximityAttributes(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v3 = objc_opt_class();
  objc_opt_class();
  if (([v3 isEqual:?] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class()];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v8 = v5;
      v9 = 2114;
      v10 = @"BKSHIDEvent.m";
      v11 = 1024;
      v12 = 421;
      v13 = 2114;
      v14 = v4;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BA050);
  }

  _BKSHIDEventSetAttributes(a1, v6, 7);
}

void BKSHIDEventSetSmartCoverAttributes(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v3 = objc_opt_class();
  objc_opt_class();
  if (([v3 isEqual:?] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class()];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v8 = v5;
      v9 = 2114;
      v10 = @"BKSHIDEvent.m";
      v11 = 1024;
      v12 = 427;
      v13 = 2114;
      v14 = v4;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BA1CCLL);
  }

  _BKSHIDEventSetAttributes(a1, v6, 4);
}

void BKSHIDEventSetSimpleInfo(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = a5;
  v14 = objc_opt_new();
  if (a6)
  {
    +[BKSHIDEventDeferringEnvironment systemEnvironment];
  }

  else
  {
    +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
  }
  v11 = ;
  [v14 setEnvironment:?];
  if (v7)
  {
    v12 = [BKSHIDEventDeferringToken tokenForIdentifierOfCAContext:?];
    [v14 setToken:?];
  }

  if (a4)
  {
    v13 = [BKSHIDEventDisplay displayWithHardwareIdentifier:?];
    [v14 setDisplay:?];
  }

  [v14 setSource:?];
  if (a3)
  {
    [v14 setOptions:?];
  }

  _BKSHIDEventSetAttributes(a1, v14, 1);
}

unint64_t BKSHIDEventGetButtonIsCancelledFromButtonEvent(unint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (IOHIDEventGetType() == 3)
    {
      v2 = BKSHIDEventGetBaseAttributes(v1);
      v1 = [v2 options] & 1;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

void *BKSHIDEventGetSystemGestureStatusFromDigitizerEvent(uint64_t a1)
{
  v1 = BKSHIDEventGetDigitizerAttributes(a1);
  v2 = [v1 systemGesturesPossible];

  return v2;
}

void *BKSHIDEventGetIsSystemGestureStateChangeFromDigitizerEvent(uint64_t a1)
{
  v1 = BKSHIDEventGetDigitizerAttributes(a1);
  v2 = [v1 systemGestureStateChange];

  return v2;
}

void *BKSHIDEventGetTouchStreamIdentifier(uint64_t a1)
{
  v1 = BKSHIDEventGetDigitizerAttributes(a1);
  v2 = [v1 touchStreamIdentifier];

  return v2;
}

double BKSHIDEventGetInitialTouchTimestampFromDigitizerEvent(uint64_t a1)
{
  v1 = BKSHIDEventGetDigitizerAttributes(a1);
  [v1 initialTouchTimestamp];
  v3 = v2;

  return v3;
}

float BKSHIDEventGetMaximumForceFromDigitizerEvent(uint64_t a1)
{
  v1 = BKSHIDEventGetDigitizerAttributes(a1);
  [v1 maximumForce];
  v3 = v2;

  return v3;
}

double BKSHIDEventGetPointFromDigitizerEvent(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"digitizerEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v9 = v5;
      v10 = 2114;
      v11 = @"BKSHIDEvent.m";
      v12 = 1024;
      v13 = 540;
      v14 = 2114;
      v15 = v4;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BA5F0);
  }

  if (IOHIDEventGetType() != 11)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:IOHIDEventGetType()];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v9 = v7;
      v10 = 2114;
      v11 = @"BKSHIDEvent.m";
      v12 = 1024;
      v13 = 541;
      v14 = 2114;
      v15 = v6;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BA6C8);
  }

  IOHIDEventGetFloatValue();
  v2 = v1;
  IOHIDEventGetFloatValue();
  return v2;
}

void *BKSHIDEventDigitizerGetTouchIdentifier(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pathCollectionEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v10 = v6;
      v11 = 2114;
      v12 = @"BKSHIDEvent.m";
      v13 = 1024;
      v14 = 548;
      v15 = 2114;
      v16 = v5;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BA810);
  }

  if (!a2)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pathEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v10 = v8;
      v11 = 2114;
      v12 = @"BKSHIDEvent.m";
      v13 = 1024;
      v14 = 549;
      v15 = 2114;
      v16 = v7;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BA8E4);
  }

  v2 = _BKSHIDEventGetSubEventInfoFromDigitierEventForPathEvent(a1, a2);
  v3 = [v2 touchIdentifier];

  return v3;
}

void *BKSHIDEventDigitizerGetTouchUserIdentifier(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pathCollectionEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v10 = v6;
      v11 = 2114;
      v12 = @"BKSHIDEvent.m";
      v13 = 1024;
      v14 = 555;
      v15 = 2114;
      v16 = v5;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BAA2CLL);
  }

  if (!a2)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pathEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v10 = v8;
      v11 = 2114;
      v12 = @"BKSHIDEvent.m";
      v13 = 1024;
      v14 = 556;
      v15 = 2114;
      v16 = v7;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BAB00);
  }

  v2 = _BKSHIDEventGetSubEventInfoFromDigitierEventForPathEvent(a1, a2);
  v3 = [v2 userIdentifier];

  return v3;
}

float BKSHIDEventGetZGradientFromDigitizerEventForPathEvent(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pathCollectionEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v11 = v7;
      v12 = 2114;
      v13 = @"BKSHIDEvent.m";
      v14 = 1024;
      v15 = 569;
      v16 = 2114;
      v17 = v6;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BAC50);
  }

  if (!a2)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pathEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v11 = v9;
      v12 = 2114;
      v13 = @"BKSHIDEvent.m";
      v14 = 1024;
      v15 = 570;
      v16 = 2114;
      v17 = v8;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BAD24);
  }

  v2 = _BKSHIDEventGetSubEventInfoFromDigitierEventForPathEvent(a1, a2);
  [v2 zGradient];
  v4 = v3;

  return v4;
}

double BKSHIDEventGetHitTestPointFromDigitizerEventForPathEvent(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pathCollectionEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v15 = v9;
      v16 = 2114;
      v17 = @"BKSHIDEvent.m";
      v18 = 1024;
      v19 = 576;
      v20 = 2114;
      v21 = v8;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BAED4);
  }

  if (!a2)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pathEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v15 = v11;
      v16 = 2114;
      v17 = @"BKSHIDEvent.m";
      v18 = 1024;
      v19 = 577;
      v20 = 2114;
      v21 = v10;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BAFA8);
  }

  v2 = _BKSHIDEventGetSubEventInfoFromDigitierEventForPathEvent(a1, a2);
  v3 = v2;
  if (v2)
  {
    [v2 hitTestLocationX];
    v5 = v4;
    [v3 hitTestLocationY];
  }

  else
  {
    if (IOHIDEventGetType() != 11)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:IOHIDEventGetType()];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
        *buf = 138544130;
        v15 = v13;
        v16 = 2114;
        v17 = @"BKSHIDEvent.m";
        v18 = 1024;
        v19 = 582;
        v20 = 2114;
        v21 = v12;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
      }

      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863BB080);
    }

    IOHIDEventGetFloatValue();
    v5 = v6;
    IOHIDEventGetFloatValue();
  }

  return v5;
}

double BKSHIDEventGetPrecisePointFromDigitizerEventForPathEvent(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pathCollectionEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v15 = v9;
      v16 = 2114;
      v17 = @"BKSHIDEvent.m";
      v18 = 1024;
      v19 = 588;
      v20 = 2114;
      v21 = v8;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BB22CLL);
  }

  if (!a2)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pathEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v15 = v11;
      v16 = 2114;
      v17 = @"BKSHIDEvent.m";
      v18 = 1024;
      v19 = 589;
      v20 = 2114;
      v21 = v10;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BB300);
  }

  v2 = _BKSHIDEventGetSubEventInfoFromDigitierEventForPathEvent(a1, a2);
  v3 = v2;
  if (v2)
  {
    [v2 preciseLocationX];
    v5 = v4;
    [v3 preciseLocationY];
  }

  else
  {
    if (IOHIDEventGetType() != 11)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:IOHIDEventGetType()];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
        *buf = 138544130;
        v15 = v13;
        v16 = 2114;
        v17 = @"BKSHIDEvent.m";
        v18 = 1024;
        v19 = 596;
        v20 = 2114;
        v21 = v12;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
      }

      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863BB3D8);
    }

    IOHIDEventGetFloatValue();
    v5 = v6;
    IOHIDEventGetFloatValue();
  }

  return v5;
}

void BKSHIDEventSetDigitizerInfoWithSubEventInfoAndTouchStreamIdentifier(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, double a9, float a10)
{
  if (a1)
  {
    LODWORD(v11) = a7;
    v19 = objc_alloc_init(BKSHIDEventDigitizerAttributes);
    v14 = [BKSHIDEventDeferringToken tokenForIdentifierOfCAContext:?];
    [(BKSHIDEventBaseAttributes *)v19 setToken:?];

    if (a6)
    {
      v15 = [BKSHIDEventDisplay displayWithHardwareIdentifier:?];
      [(BKSHIDEventBaseAttributes *)v19 setDisplay:?];
    }

    [(BKSHIDEventDigitizerAttributes *)v19 setMaximumForce:?];
    [(BKSHIDEventDigitizerAttributes *)v19 setInitialTouchTimestamp:?];
    [(BKSHIDEventDigitizerAttributes *)v19 setTouchStreamIdentifier:?];
    [(BKSHIDEventDigitizerAttributes *)v19 setSystemGesturesPossible:?];
    [(BKSHIDEventDigitizerAttributes *)v19 setSystemGestureStateChange:?];
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v11)
    {
      v11 = v11;
      v17 = a8 + 16;
      do
      {
        v18 = objc_alloc_init(BKSHIDEventDigitizerPathAttributes);
        [(BKSHIDEventDigitizerPathAttributes *)v18 setPathIndex:?];
        [(BKSHIDEventDigitizerPathAttributes *)v18 setTouchIdentifier:?];
        [(BKSHIDEventDigitizerPathAttributes *)v18 setUserIdentifier:?];
        [(BKSHIDEventDigitizerPathAttributes *)v18 setZGradient:?];
        [(BKSHIDEventDigitizerPathAttributes *)v18 setLocus:?];
        [(BKSHIDEventDigitizerPathAttributes *)v18 setHitTestLocationX:?];
        [(BKSHIDEventDigitizerPathAttributes *)v18 setHitTestLocationY:?];
        [(BKSHIDEventDigitizerPathAttributes *)v18 setPreciseLocationX:?];
        [(BKSHIDEventDigitizerPathAttributes *)v18 setPreciseLocationY:?];
        [v16 addObject:?];

        v17 += 36;
        --v11;
      }

      while (v11);
    }

    [(BKSHIDEventDigitizerAttributes *)v19 setPathAttributes:?];
    _BKSHIDEventSetAttributes(a1, v19, 2);
  }
}

__CFString *NSStringFromBKSHIDEventSmartCoverState(int a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E6F47AD0[a1 - 1];
  }
}

void *BKSHIDEventGetSmartCoverStateFromEvent(uint64_t a1)
{
  v1 = BKSHIDEventGetSmartCoverAttributes(a1);
  v2 = [v1 smartCoverState];

  return v2;
}

void BKSHIDEventSetSmartCoverInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = BKSHIDEventGetSmartCoverAttributes(a1);
    if (!v4)
    {
      v4 = objc_alloc_init(BKSHIDEventSmartCoverAttributes);
    }

    v5 = v4;
    [(BKSHIDEventSmartCoverAttributes *)v4 setSmartCoverState:?];
    [(BKSHIDEventSmartCoverAttributes *)v5 setWakeAnimationStyle:?];
    _BKSHIDEventSetAttributes(a1, v5, 4);
  }
}

void BKSHIDEventSetRemoteTimestamp(uint64_t a1, uint64_t a2)
{
  _BKSHIDEventClearRemoteTimestamp(a1);
  if (a2)
  {
    VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
    IOHIDEventAppendEvent();
    CFRelease(VendorDefinedEvent);
  }
}

void _BKSHIDEventClearRemoteTimestamp(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___BKSHIDEventClearRemoteTimestamp_block_invoke;
  v12[3] = &unk_1E6F47A48;
  v3 = v2;
  v13 = v3;
  BKSHIDEventEnumerateChildEvents(a1, v12);
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:0 objects:? count:?];
  if (v5)
  {
    v6 = v5;
    v7 = *v9;
    do
    {
      v8 = 0;
      do
      {
        if (*v9 != v7)
        {
          objc_enumerationMutation(v4);
        }

        IOHIDEventRemoveEvent();
        v8 = (v8 + 1);
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v6);
  }

  BKSHIDEventEnumerateChildEvents(a1, &__block_literal_global_426);
}

void BKSHIDEventEnumerateChildEvents(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      Children = IOHIDEventGetChildren();
      if (Children)
      {
        v6 = Children;
        Count = CFArrayGetCount(Children);
        v11 = 0;
        if (Count >= 1)
        {
          v8 = Count;
          v9 = 1;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v6, v9 - 1);
            (v4)[2](v4, ValueAtIndex, v9 - 1, &v11);
            if (v9 >= v8)
            {
              break;
            }

            ++v9;
          }

          while ((v11 & 1) == 0);
        }
      }
    }
  }
}

__CFString *NSStringFromBKSHIDEventSource(uint64_t a1)
{
  if (a1 >= 0xE)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  else
  {
    v2 = off_1E6F47AE8[a1];
  }

  return v2;
}

__CFString *NSStringFromBKSHIDTouchLocus(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  else
  {
    v2 = off_1E6F47B58[a1];
  }

  return v2;
}

__CFString *NSStringFromBKSTouchStreamIdentifier(uint64_t a1)
{
  if (a1 < 6 && ((0x2Fu >> a1) & 1) != 0)
  {
    v2 = off_1E6F47B80[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  return v2;
}

__CFString *BKNSStringFromIOHIDGenericGestureType(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 5)
    {
      v2 = @"squeeze";
    }

    else if (a1 == 1)
    {
      v2 = @"swipe";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
    }
  }

  else
  {
    v2 = @"tap";
  }

  return v2;
}

__CFString *_BKSHIDEventGetConciseDescriptionGenericGesture(uint64_t a1)
{
  IntegerValue = IOHIDEventGetIntegerValue();
  switch(IntegerValue)
  {
    case 5:
      v8 = MEMORY[0x1E696AEC0];
      Phase = IOHIDEventGetPhase();
      v5 = BKNSStringFromIOHIDEventPhase(Phase);
      v13 = @"squeeze";
      v14 = v5;
      goto LABEL_7;
    case 1:
      IOHIDEventGetDoubleValue();
      v7 = v6;
      v8 = MEMORY[0x1E696AEC0];
      v9 = IOHIDEventGetPhase();
      v5 = BKNSStringFromIOHIDEventPhase(v9);
      v15 = v5;
      v14 = v7;
      v13 = @"swipe";
LABEL_7:
      [v8 stringWithFormat:v13, v14, v15];
      goto LABEL_8;
    case 0:
      v2 = IOHIDEventGetIntegerValue();
      v3 = MEMORY[0x1E696AEC0];
      v4 = IOHIDEventGetPhase();
      v5 = BKNSStringFromIOHIDEventPhase(v4);
      [v3 stringWithFormat:@"tap", v2, v5];
      v11 = LABEL_8:;

      goto LABEL_10;
  }

  v11 = @"unknown";
LABEL_10:

  return v11;
}

__CFString *BKNSStringFromIOHIDEventPhase(uint64_t a1)
{
  if (a1)
  {
    if ((a1 ^ (a1 - 1)) <= (a1 - 1))
    {
      v3 = [MEMORY[0x1E695DF70] array];
      for (i = 0; i != 16; ++i)
      {
        if (((1 << i) & a1) != 0)
        {
          v5 = _BKSPhaseStringForBit(a1);
          [v3 addObject:?];
        }
      }

      v2 = [v3 componentsJoinedByString:?];
    }

    else
    {
      v2 = _BKSPhaseStringForBit(a1);
    }
  }

  else
  {
    v2 = @"undefined";
  }

  return v2;
}

__CFString *_BKSPhaseStringForBit(uint64_t a1)
{
  if (a1 > 15)
  {
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        v2 = @"momentumEnd";

        return v2;
      }

      if (a1 == 128)
      {
        v2 = @"mayBegin";

        return v2;
      }
    }

    else
    {
      if (a1 == 16)
      {
        v2 = @"momentumContinue";

        return v2;
      }

      if (a1 == 32)
      {
        v2 = @"momentumStart";

        return v2;
      }
    }

LABEL_36:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];

    return v2;
  }

  if (a1 > 3)
  {
    if (a1 == 4)
    {
      v2 = @"ended";

      return v2;
    }

    if (a1 == 8)
    {
      v2 = @"cancelled";

      return v2;
    }

    goto LABEL_36;
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      v2 = @"changed";

      return v2;
    }

    goto LABEL_36;
  }

  v2 = @"began";

  return v2;
}

id _BKSHIDEventGetConciseDescriptionPointer(uint64_t a1)
{
  if (IOHIDEventGetEvent())
  {
    IOHIDEventGetFloatValue();
    IOHIDEventGetFloatValue();
    if (IOHIDEventGetEvent())
    {
      IOHIDEventGetIntegerValue();
    }

    v12 = MEMORY[0x1E696AEC0];
    v4 = [MEMORY[0x1E696AD98] numberWithBool:?];
    v13 = [MEMORY[0x1E696AD98] numberWithBool:?];
    v14 = [v12 stringWithFormat:v4, v13];
    goto LABEL_53;
  }

  v2 = IOHIDEventGetChildren();
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = MEMORY[0];
    do
    {
      v9 = 0;
      do
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(v4);
        }

        Type = IOHIDEventGetType();
        if (Type <= 0x11)
        {
          if (((1 << Type) & 0x8F6) != 0)
          {
            [v3 addObject:?];
            v7 = 1;
          }

          else if (Type == 17)
          {
            v7 = 1;
          }
        }

        v9 = (v9 + 1);
      }

      while (v6 != v9);
      v11 = [v4 countByEnumeratingWithState:? objects:? count:?];
      v6 = v11;
    }

    while (v11);
  }

  else
  {
    v7 = 0;
  }

  IOHIDEventGetFloatValue();
  v16 = v15;
  IOHIDEventGetFloatValue();
  v18 = v17;
  IntegerValue = IOHIDEventGetIntegerValue();
  v20 = BKSHIDEventGetPointerAttributes(a1);
  v21 = v20;
  if (v20)
  {
    v22 = [v20 activeModifiers];
    v23 = [v21 pointerEdgeMask];
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v14 = [MEMORY[0x1E696AD60] stringWithFormat:?];
  v24 = v16 == 0.0;
  if (v18 != 0.0)
  {
    v24 = 0;
  }

  if ((v24 & v7 & 1) == 0)
  {
    v25 = [v21 contextMove];
    v26 = NSStringFromBKSHIDEventContextType([v21 contextType]);
    v27 = v26;
    if (v25)
    {
      v28 = NSStringFromBKSHIDEventContextMove(v25);
      [v14 appendFormat:*&v16, *&v18, v27, v28];
    }

    else
    {
      [v14 appendFormat:*&v16, *&v18, v26];
    }
  }

  v29 = [v21 authenticationMessage];

  if (v29)
  {
    [v14 appendString:?];
  }

  v30 = [v21 hitTestSecurityAnalysis];

  if (v30)
  {
    [v14 appendString:?];
  }

  if (IntegerValue)
  {
    [v14 appendFormat:IntegerValue];
  }

  if (v22)
  {
    v31 = NSStringFromBKSKeyModifierFlags(v22);
    [v14 appendFormat:v31];
  }

  if (v23)
  {
    v32 = NSStringFromBKSHIDEventScreenEdgeMask(v23);
    [v14 appendFormat:v32];
  }

  v33 = [v21 fingerDownCount];
  if (([v21 options] & 2) != 0)
  {
    if (v33 < 1)
    {
      [v14 appendFormat:v41];
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  if (v33)
  {
LABEL_42:
    [v14 appendFormat:v33];
  }

LABEL_45:
  v13 = v3;
  v34 = [v13 countByEnumeratingWithState:? objects:? count:?];
  if (v34)
  {
    v35 = v34;
    v36 = MEMORY[0];
    do
    {
      for (i = 0; i != v35; i = (i + 1))
      {
        if (MEMORY[0] != v36)
        {
          objc_enumerationMutation(v13);
        }

        v38 = *(8 * i);
        [v14 appendString:?];
        v39 = BKSHIDEventGetConciseDescription(v38);
        [v14 appendString:?];
      }

      v35 = [v13 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v35);
  }

LABEL_53:

  return v14;
}

void _BKSHIDEventAppendEventFlags(uint64_t a1, void *a2)
{
  v7 = a2;
  IntegerValue = IOHIDEventGetIntegerValue();
  v3 = IOHIDEventGetIntegerValue();
  v4 = IOHIDEventGetIntegerValue();
  v5 = IOHIDEventGetIntegerValue();
  if ((IntegerValue & 0x80) != 0)
  {
    [v7 appendString:? withName:?];
  }

  v6 = (v3 != 0) & (IntegerValue >> 1);
  if ((IntegerValue & 0x20000) != 0)
  {
    [v7 appendString:? withName:?];
    if (!v6)
    {
LABEL_5:
      if ((IntegerValue & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if (!v6)
  {
    goto LABEL_5;
  }

  [v7 appendString:? withName:?];
  if ((IntegerValue & 4) == 0)
  {
LABEL_6:
    if ((IntegerValue & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v3)
  {
    [v7 appendString:? withName:?];
    goto LABEL_14;
  }

  [v7 appendString:? withName:?];
  if ((IntegerValue & 2) != 0)
  {
LABEL_13:
    if (!v3)
    {
LABEL_18:
      [v7 appendString:? withName:?];
      goto LABEL_19;
    }
  }

LABEL_14:
  if ((IntegerValue & 3) == 1)
  {
    IOHIDEventGetIntegerValue();
    [v7 appendString:? withName:?];
  }

  if (!(((IntegerValue & 0x40) == 0) | (v3 != 0) & (IntegerValue >> 1)) && (IntegerValue & 0x84) == 0)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (v4)
  {
    [v7 appendString:? withName:?];
  }

  if (v5)
  {
    [v7 appendString:? withName:?];
  }

  if ((IntegerValue & 0x800) != 0)
  {
    [v7 appendString:? withName:?];
    if ((IntegerValue & 0x1000) == 0)
    {
LABEL_25:
      if ((IntegerValue & 0x2000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_33;
    }
  }

  else if ((IntegerValue & 0x1000) == 0)
  {
    goto LABEL_25;
  }

  [v7 appendString:? withName:?];
  if ((IntegerValue & 0x2000) == 0)
  {
LABEL_26:
    if ((IntegerValue & 0x40000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_33:
  [v7 appendString:? withName:?];
  if ((IntegerValue & 0x40000) != 0)
  {
LABEL_27:
    [v7 appendString:? withName:?];
  }

LABEL_28:
}

id _BKSHIDEventGetConciseDescriptionScroll(void *a1)
{
  v1 = IOHIDEventGetChildren();
  if ([v1 firstObject])
  {
    IOHIDEventGetType();
  }

  IOHIDEventGetFloatValue();
  v3 = v2;
  IOHIDEventGetFloatValue();
  v5 = v4;
  IOHIDEventGetFloatValue();
  v7 = v6;
  Phase = IOHIDEventGetPhase();
  if (Phase)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = BKNSStringFromIOHIDEventPhase(Phase);
    v11 = [v9 stringWithFormat:v3, v5, v10];
  }

  else
  {
    if (v7 == 0.0)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:v3, v5, v13];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:v3, v5, *&v7];
    }
    v11 = ;
  }

  return v11;
}

id _BKSHIDEventGetConciseDescriptionScale(uint64_t a1)
{
  Phase = IOHIDEventGetPhase();
  IOHIDEventGetFloatValue();
  v3 = v2;
  IOHIDEventGetFloatValue();
  v5 = v4;
  IOHIDEventGetFloatValue();
  v7 = v6;
  v8 = MEMORY[0x1E696AEC0];
  v9 = BKNSStringFromIOHIDEventPhase(Phase);
  v10 = v9;
  if (v3 == 0.0 && v5 == 0.0)
  {
    [v8 stringWithFormat:v9, v7, v13, v14];
  }

  else
  {
    [v8 stringWithFormat:v9, *&v3, *&v5, v7];
  }
  v11 = ;

  return v11;
}

id _BKSHIDEventGetConciseDescriptionTranslation(uint64_t a1)
{
  Phase = IOHIDEventGetPhase();
  IOHIDEventGetFloatValue();
  v3 = v2;
  IOHIDEventGetFloatValue();
  v5 = v4;
  IOHIDEventGetFloatValue();
  v7 = v6;
  v8 = MEMORY[0x1E696AEC0];
  v9 = BKNSStringFromIOHIDEventPhase(Phase);
  v10 = v9;
  if (v7 == 0.0)
  {
    [v8 stringWithFormat:v9, v3, v5, v13];
  }

  else
  {
    [v8 stringWithFormat:v9, v3, v5, *&v7];
  }
  v11 = ;

  return v11;
}

id _BKSHIDEventGetConciseDescriptionRotation(uint64_t a1)
{
  Phase = IOHIDEventGetPhase();
  IOHIDEventGetFloatValue();
  v3 = v2;
  IOHIDEventGetFloatValue();
  v5 = v4;
  IOHIDEventGetFloatValue();
  v7 = v6;
  v8 = MEMORY[0x1E696AEC0];
  v9 = BKNSStringFromIOHIDEventPhase(Phase);
  v10 = v9;
  if (v3 == 0.0 && v5 == 0.0)
  {
    [v8 stringWithFormat:v9, v7, v13, v14];
  }

  else
  {
    [v8 stringWithFormat:v9, *&v3, *&v5, v7];
  }
  v11 = ;

  return v11;
}

id _BKSHIDEventGetConciseDescriptionVendorDefined(uint64_t a1)
{
  IntegerValue = IOHIDEventGetIntegerValue();
  v3 = IOHIDEventGetIntegerValue();
  if (IntegerValue == 65280 && v3 == 17)
  {
    _BKSHIDEventGetConciseDescriptionVendorDefinedForceStageEvent(a1);
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:IntegerValue, v3];
  }
  v5 = ;

  return v5;
}

id _BKSHIDEventGetConciseDescriptionVendorDefinedForceStageEvent(uint64_t a1)
{
  IOHIDEventGetVendorDefinedData();
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:v3, v4];

  return v1;
}

__CFString *NSStringFromBKSHIDForceStageTransition(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  else
  {
    v2 = off_1E6F47C58[a1];
  }

  return v2;
}

id _BKSHIDEventGetEventInfoDescription(id a1)
{
  v1 = a1;
  if (a1)
  {
    if (IOHIDEventGetAttributeDataLength() >= 1 && (AttributeDataPtr = IOHIDEventGetAttributeDataPtr()) != 0 && *(AttributeDataPtr + 1) && *AttributeDataPtr - 1 <= 6)
    {
      v3 = BKSHIDEventGetBaseAttributes(v1);
      v4 = v3;
      if (v3)
      {
        v1 = [v3 description];
      }

      else
      {
        v1 = 0;
      }
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

id BKSHIDEventDescription(void *a1)
{
  v2 = _BKSHIDEventGetEventInfoDescription(a1);
  v3 = CFCopyDescription(a1);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:v2, v3];

  return v4;
}

void BKSHIDEventEnumerateUpdatesWithBlock(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v14 = v8;
      v15 = 2114;
      v16 = @"BKSHIDEvent.m";
      v17 = 1024;
      v18 = 2015;
      v19 = 2114;
      v20 = v7;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BD43CLL);
  }

  v4 = v3;
  if (IOHIDEventGetType() == 11)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v6 = IOHIDEventGetIntegerValue();
    if (IntegerValue)
    {
      if (v6)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __BKSHIDEventEnumerateUpdatesWithBlock_block_invoke;
        v9[3] = &unk_1E6F47A00;
        v11 = IntegerValue;
        v12 = v6;
        v10 = v4;
        BKSHIDEventEnumerateChildEvents(a1, v9);
      }
    }
  }
}

uint64_t __BKSHIDEventEnumerateUpdatesWithBlock_block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  IntegerValue = IOHIDEventGetIntegerValue();
  result = IOHIDEventGetIntegerValue();
  if (IntegerValue && result)
  {
    v5 = *(a1 + 40);
    if (v5 != IntegerValue)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:IntegerValue, v5];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
        *buf = 138544130;
        v13 = v9;
        v14 = 2114;
        v15 = @"BKSHIDEvent.m";
        v16 = 1024;
        v17 = 2026;
        v18 = 2114;
        v19 = v8;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
      }

      [v8 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863BD61CLL);
    }

    v6 = *(a1 + 48);
    if ((result & ~v6) != 0)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:result, v6];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
        *buf = 138544130;
        v13 = v11;
        v14 = 2114;
        v15 = @"BKSHIDEvent.m";
        v16 = 1024;
        v17 = 2027;
        v18 = 2114;
        v19 = v10;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
      }

      [v10 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863BD6ECLL);
    }

    v7 = *(*(a1 + 32) + 16);

    return v7();
  }

  return result;
}

uint64_t _BKSHIDEventMatchingPredicateCore(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v21 = v15;
      v22 = 2114;
      v23 = @"BKSHIDEvent.m";
      v24 = 1024;
      v25 = 2036;
      v26 = 2114;
      v27 = v14;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BD910);
  }

  v6 = v5;
  if (a1 && ((*(v5 + 2))(v5, a1, a2) & 1) == 0)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = IOHIDEventGetChildren();
    v8 = [v7 countByEnumeratingWithState:0 objects:? count:?];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = _BKSHIDEventMatchingPredicateCore(*(*(&v16 + 1) + 8 * v11), a2 + 1, v6);
          if (v12)
          {
            a1 = v12;
            goto LABEL_14;
          }

          v11 = (v11 + 1);
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:? objects:? count:?];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    a1 = 0;
LABEL_14:
  }

  return a1;
}

uint64_t BKSHIDEventDigitizerDetachTouchesWithIdentifiers(void *a1, uint64_t a2)
{
  v3 = BKSHIDEventDigitizerDetachTouchesWithIdentifiers_onceToken;
  v4 = a1;
  if (v3 != -1)
  {
    dispatch_once(&BKSHIDEventDigitizerDetachTouchesWithIdentifiers_onceToken, &__block_literal_global_14558);
  }

  v5 = BKSHIDEventDigitizerDetachTouches(v4, a2, BKSHIDEventDigitizerDetachTouchesWithIdentifiers_policy, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8));

  return v5;
}

uint64_t BKSHIDEventDigitizerDetachTouches(void *a1, uint64_t a2, void *a3, double a4, double a5)
{
  v8 = a2;
  v45 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  v11 = [v9 count];
  if (v11 <= 0)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v38 = v30;
      v39 = 2114;
      v40 = @"BKSHIDEvent.m";
      v41 = 1024;
      v42 = 2084;
      v43 = 2114;
      v44 = v29;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v29 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BDD18);
  }

  v12 = v11;
  if (v11 >= 0x20)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v38 = v32;
      v39 = 2114;
      v40 = @"BKSHIDEvent.m";
      v41 = 1024;
      v42 = 2085;
      v43 = 2114;
      v44 = v31;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v31 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BDDE0);
  }

  if (!v10)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v38 = v34;
      v39 = 2114;
      v40 = @"BKSHIDEvent.m";
      v41 = 1024;
      v42 = 2087;
      v43 = 2114;
      v44 = v33;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v33 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BDEA8);
  }

  MEMORY[0x1EEE9AC00]();
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  for (i = 0; i != v12; i = (i + 1))
  {
    v16 = [v9 objectAtIndex:?];
    *&v14[4 * i] = [v16 unsignedIntValue];
  }

  v17 = [MEMORY[0x1E69E58C0] bs_secureDataFromObject:?];
  if (!v17)
  {
    v23 = BKLogCommon();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 138543362;
    v38 = v10;
    v24 = "Error encoding policy: %{public}@";
    goto LABEL_18;
  }

  v36 = 0;
  v18 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  v19 = a4;
  v20 = a5;
  v21 = _BKSHIDDigitizerTouchDetach(v18, v14, v12, v8, [v17 bytes], objc_msgSend(v17, "length"), &v36, v19, v20);
  if (!v21)
  {
    if (v36)
    {
      v27 = 1;
      goto LABEL_12;
    }

    v23 = BKLogCommon();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 138543362;
    v38 = v9;
    v24 = "Touches not found:%{public}@";
LABEL_18:
    v25 = v23;
    v26 = 12;
    goto LABEL_19;
  }

  v22 = v21;
  v23 = BKLogCommon();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v38) = v22;
    v24 = "Error detaching touches: 0x%X";
    v25 = v23;
    v26 = 8;
LABEL_19:
    _os_log_error_impl(&dword_186345000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
  }

LABEL_11:

  v27 = 0;
LABEL_12:

  return v27;
}

uint64_t __BKSHIDEventDigitizerDetachTouchesWithIdentifiers_block_invoke()
{
  v0 = objc_alloc_init(BKSHIDTouchRoutingPolicy);
  v1 = BKSHIDEventDigitizerDetachTouchesWithIdentifiers_policy;
  BKSHIDEventDigitizerDetachTouchesWithIdentifiers_policy = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t BKSHIDEventDigitizerSetTouchOffset(uint64_t a1, double a2, double a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      v12 = 138544130;
      v13 = v11;
      v14 = 2114;
      v15 = @"BKSHIDEvent.m";
      v16 = 1024;
      v17 = 2117;
      v18 = 2114;
      v19 = v10;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v12, 0x26u);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BE06CLL);
  }

  v5 = a1;
  v6 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  v7 = a2;
  v8 = a3;
  return _BKSHIDDigitizerTouchSetOffset(v6, v5, v7, v8);
}

void BKSHIDEventDigitizerSetTouchRoutingPolicy(uint64_t a1, void *a2)
{
  v2 = a1;
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v2)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      *v29 = v15;
      *&v29[8] = 2114;
      v30 = @"BKSHIDEvent.m";
      v31 = 1024;
      v32 = 2123;
      v33 = 2114;
      v34 = v14;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BE30CLL);
  }

  v4 = v3;
  if (!v4)
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v16 stringWithFormat:@"policyForDetachedTouches", v18];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      *v29 = v20;
      *&v29[8] = 2114;
      v30 = @"BKSHIDEvent.m";
      v31 = 1024;
      v32 = 2124;
      v33 = 2114;
      v34 = v19;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BE400);
  }

  v5 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = MEMORY[0x1E696AEC0];
    v22 = [v5 classForCoder];
    if (!v22)
    {
      v22 = objc_opt_class();
    }

    v23 = NSStringFromClass(v22);
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = [v21 stringWithFormat:@"policyForDetachedTouches", v23, v25];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      *v29 = v27;
      *&v29[8] = 2114;
      v30 = @"BKSHIDEvent.m";
      v31 = 1024;
      v32 = 2124;
      v33 = 2114;
      v34 = v26;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v26 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BE518);
  }

  v6 = [MEMORY[0x1E69E58C0] bs_secureDataFromObject:?];
  if (!v6)
  {
    v10 = BKLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *v29 = v5;
      *&v29[8] = 1024;
      LODWORD(v30) = v2;
      v11 = "Error encoding policy: %{public}@ for touches with userIdentifier:%X";
      v12 = v10;
      v13 = 18;
      goto LABEL_12;
    }

LABEL_9:

    goto LABEL_10;
  }

  v7 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  v8 = _BKSHIDDigitizerTouchSetRoutingPolicy(v7, v2, [v6 bytes], objc_msgSend(v6, "length"));
  if (v8)
  {
    v9 = v8;
    v10 = BKLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v29 = v9;
      *&v29[4] = 1024;
      *&v29[6] = v2;
      v11 = "Error setting touch routing policy:0x%X for touches with userIdentifier:%X";
      v12 = v10;
      v13 = 14;
LABEL_12:
      _os_log_error_impl(&dword_186345000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

LABEL_10:
}

void BKSHIDEventTransferTouchesToDifferentCAContext(void *a1, uint64_t a2)
{
  v2 = a2;
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 count];
  if (v4 <= 0)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v21 = v15;
      v22 = 2114;
      v23 = @"BKSHIDEvent.m";
      v24 = 1024;
      v25 = 2139;
      v26 = 2114;
      v27 = v14;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BE770);
  }

  v5 = v4;
  if (v4 >= 0x20)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v21 = v17;
      v22 = 2114;
      v23 = @"BKSHIDEvent.m";
      v24 = 1024;
      v25 = 2140;
      v26 = 2114;
      v27 = v16;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BE838);
  }

  if (!v2)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v21 = v19;
      v22 = 2114;
      v23 = @"BKSHIDEvent.m";
      v24 = 1024;
      v25 = 2141;
      v26 = 2114;
      v27 = v18;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v18 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BE900);
  }

  MEMORY[0x1EEE9AC00]();
  v7 = &buf[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  for (i = 0; i != v5; i = (i + 1))
  {
    v9 = [v3 objectAtIndex:?];
    *&v7[4 * i] = [v9 unsignedIntValue];
  }

  v10 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  v11 = _BKSHIDTouchTransfer(v10, v7, v5, v2);
  if (v11)
  {
    v12 = v11;
    v13 = BKLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v21) = v12;
      _os_log_error_impl(&dword_186345000, v13, OS_LOG_TYPE_ERROR, "Error transferring touches: 0x%X", buf, 8u);
    }
  }
}

uint64_t _BKSHIDGetBacklightFactor(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = v5;
  name_8 = special_reply_port;
  v12 = 5395;
  *name_12 = 0x5B8D8000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
    v7 = name_8;
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&v12, 3162115, 0x18u, 0x30u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&name_12[4] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&name_12[4] == 6000100)
      {
        if ((v12 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v9 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = *&name_12[20];
                return v9;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v10 = 1;
            }

            else
            {
              v10 = *&name_12[16] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v12);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((v12 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v9;
}

uint64_t _BKSHIDSetBacklightFactorPending(mach_port_t a1, float a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6000001;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _BKSHIDSetBacklightFactorWithFadeDuration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, float a6)
{
  v6 = a1;
  v14 = a5;
  v13 = *MEMORY[0x1E69E99E0];
  v15 = a6;
  v16 = a2;
  v17 = 0;
  v18 = 0;
  v19 = a3;
  v20 = 0;
  v21 = 0;
  special_reply_port = mig_get_special_reply_port();
  *&v12.msgh_bits = 5395;
  v12.msgh_remote_port = v6;
  v12.msgh_local_port = special_reply_port;
  *&v12.msgh_voucher_port = 0x5B8D8200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
    msgh_local_port = v12.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v9 = mach_msg(&v12, 3162115, 0x30u, 0x2Cu, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v9)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v10 - 268435459) > 1)
    {
      return v10;
    }

    if ((v12.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v12.msgh_local_port);
    }

LABEL_20:
    mach_msg_destroy(&v12);
    return v10;
  }

  if (v12.msgh_id == 71)
  {
    v10 = 4294966988;
    goto LABEL_20;
  }

  if (v12.msgh_id != 6000102)
  {
    v10 = 4294966995;
    goto LABEL_20;
  }

  v10 = 4294966996;
  if ((v12.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (v12.msgh_size != 36)
  {
    goto LABEL_20;
  }

  if (v12.msgh_remote_port)
  {
    goto LABEL_20;
  }

  v10 = LODWORD(v14);
  if (v14 != 0.0)
  {
    goto LABEL_20;
  }

  return v10;
}

uint64_t _BKSHIDNotifySetBacklightFactorWithFadeDurationAsync(mach_port_t a1, char a2, char a3, char a4, float a5, float a6)
{
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a5;
  v11 = a6;
  v12 = a2;
  v13 = 0;
  v14 = 0;
  v15 = a3;
  v16 = 0;
  v17 = 0;
  v18 = a4;
  v19 = 0;
  v20 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6000003;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v6 = mach_msg(&msg, 1, 0x34u, 0, 0, 0, 0);
  if ((v6 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v6;
}

uint64_t _BKSHIDBrigthnessIsAutoBrightnessAvailable(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = v5;
  name_8 = special_reply_port;
  v12 = 5395;
  *name_12 = 0x5B8D8500000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
    v7 = name_8;
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&v12, 3162115, 0x18u, 0x30u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&name_12[4] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&name_12[4] == 6000105)
      {
        if ((v12 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v9 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = name_12[20];
                return v9;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v10 = 1;
            }

            else
            {
              v10 = *&name_12[16] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v12);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((v12 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v9;
}

uint64_t _BKSHIDBrigthnessIsBrightnessLevelControlAvailable(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = v5;
  name_8 = special_reply_port;
  v12 = 5395;
  *name_12 = 0x5B8D8600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
    v7 = name_8;
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&v12, 3162115, 0x18u, 0x30u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&name_12[4] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&name_12[4] == 6000106)
      {
        if ((v12 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v9 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = name_12[20];
                return v9;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v10 = 1;
            }

            else
            {
              v10 = *&name_12[16] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v12);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((v12 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v9;
}

uint64_t _BKSHIDSetBacklightFeatures(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1863CFAA0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

uint64_t _BKSHIDAmbientLightSensorExists(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = v5;
  name_8 = special_reply_port;
  v12 = 5395;
  *name_12 = 0x5B8D8800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
    v7 = name_8;
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&v12, 3162115, 0x18u, 0x30u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&name_12[4] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&name_12[4] == 6000108)
      {
        if ((v12 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v9 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = name_12[20];
                return v9;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v10 = 1;
            }

            else
            {
              v10 = *&name_12[16] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v12);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((v12 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v9;
}

uint64_t _BKSHIDAmbientLightSensorDisableAutoBrightness(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x5B8D8900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t _BKSHIDSetDeviceInterfaceOrientation(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6000011;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _BKSHIDSetDeviceOrientationForAutomation(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6000012;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _BKSHIDRequestEstimatedProximityEvents(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, float a5)
{
  v6 = a1;
  memset(&name[16], 0, 28);
  *name = 0u;
  *&name[20] = *MEMORY[0x1E69E99E0];
  *&name[28] = a5;
  special_reply_port = mig_get_special_reply_port();
  *&name[4] = v6;
  *&name[8] = special_reply_port;
  v13 = 5395;
  *&name[12] = 0x5B8D8D00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v13);
    v8 = *&name[8];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(&v13, 3162115, 0x24u, 0x30u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&name[16] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&name[16] == 6000113)
      {
        if ((v13 & 0x80000000) == 0)
        {
          if (*name == 40)
          {
            if (!*&name[4])
            {
              v10 = *&name[28];
              if (!*&name[28])
              {
                *a2 = *&name[32];
                return v10;
              }

              goto LABEL_26;
            }
          }

          else if (*name == 36)
          {
            if (*&name[4])
            {
              v11 = 1;
            }

            else
            {
              v11 = *&name[28] == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = *&name[28];
            }

            goto LABEL_26;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v13);
      return v10;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v10 - 268435459) <= 1)
  {
    if ((v13 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&name[8]);
    }

    goto LABEL_26;
  }

  return v10;
}

uint64_t _BKSHIDRequestProximityStatusEvent(mach_port_name_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, 480);
  *name = 0u;
  v8 = 0u;
  *(&v8 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v9 + 8, a2, 1024);
  }

  else
  {
    v3 = mig_strncpy(v9 + 8, a2, 1024);
  }

  LODWORD(v9[0]) = 0;
  DWORD1(v9[0]) = v3;
  v4 = (v3 + 3) & 0xFFFFFFFC;
  name[0] = 19;
  name[2] = a1;
  name[3] = 0;
  *&v8 = 0x5B8D8E00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
  }

  v5 = mach_msg(name, 1, v4 + 40, 0, 0, 0, 0);
  if ((v5 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    mach_msg_destroy(name);
  }

  return v5;
}

uint64_t _BKSHIDResetProximityCalibration(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x5B8D8F00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t _BKSHIDProximityDidUnoccludeAfterScreenWake(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x5B8D9000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t _BKSHIDGetObjectInProximityIgnoresTouches(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = v5;
  name_8 = special_reply_port;
  v12 = 5395;
  *name_12 = 0x5B8D9300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
    v7 = name_8;
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&v12, 3162115, 0x18u, 0x30u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&name_12[4] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&name_12[4] == 6000119)
      {
        if ((v12 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v9 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = name_12[20];
                return v9;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v10 = 1;
            }

            else
            {
              v10 = *&name_12[16] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v12);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((v12 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v9;
}

uint64_t _BKSHIDSetObjectInProximityIgnoresTouches(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6000020;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _BKSHIDGetRingerState(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = v5;
  name_8 = special_reply_port;
  v12 = 5395;
  *name_12 = 0x5B8D9500000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
    v7 = name_8;
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&v12, 3162115, 0x18u, 0x30u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&name_12[4] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&name_12[4] == 6000121)
      {
        if ((v12 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v9 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = *&name_12[20];
                return v9;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v10 = 1;
            }

            else
            {
              v10 = *&name_12[16] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v12);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((v12 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v9;
}

uint64_t _BKSHIDCancelButtonEventsFromSenderID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v11 = *MEMORY[0x1E69E99E0];
  v12 = a2;
  v13 = a3;
  v14 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&v10.msgh_bits = 5395;
  v10.msgh_remote_port = v4;
  v10.msgh_local_port = special_reply_port;
  *&v10.msgh_voucher_port = 0x5B8D9700000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    msgh_local_port = v10.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v7 = mach_msg(&v10, 3162115, 0x30u, 0x2Cu, msgh_local_port, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v7)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v8 - 268435459) > 1)
    {
      return v8;
    }

    if ((v10.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v10.msgh_local_port);
    }

LABEL_20:
    mach_msg_destroy(&v10);
    return v8;
  }

  if (v10.msgh_id == 71)
  {
    v8 = 4294966988;
    goto LABEL_20;
  }

  if (v10.msgh_id != 6000123)
  {
    v8 = 4294966995;
    goto LABEL_20;
  }

  v8 = 4294966996;
  if ((v10.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (v10.msgh_size != 36)
  {
    goto LABEL_20;
  }

  if (v10.msgh_remote_port)
  {
    goto LABEL_20;
  }

  v8 = v12;
  if (v12)
  {
    goto LABEL_20;
  }

  return v8;
}

uint64_t _BKSHIDClaimGenericGestureFocus(mach_port_name_t a1, const char *a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, 480);
  *name = 0u;
  v10 = 0u;
  *(&v10 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(v11 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v11 + 8, a2, 1024);
  }

  LODWORD(v11[0]) = 0;
  DWORD1(v11[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  *(v11 + v6 + 8) = a3;
  name[0] = 19;
  name[2] = a1;
  name[3] = 0;
  *&v10 = 0x5B8D9800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
  }

  v7 = mach_msg(name, 1, v6 + 44, 0, 0, 0, 0);
  if ((v7 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    mach_msg_destroy(name);
  }

  return v7;
}

uint64_t _BKSHIDCancelTouchesOnAllDisplays(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x5B8D9A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t _BKSHIDCancelTouchesWithIdentifiers(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1863CFAB0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

uint64_t _BKSHIDApplyButtonDefinitions(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1863CFAC0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

uint64_t _BKSHIDPostTouchAnnotations(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1863CFAD0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

uint64_t _BKSHIDPlayHaptic(mach_port_t a1, int a2, int a3)
{
  v6 = *MEMORY[0x1E69E99E0];
  v7 = a2;
  v8 = a3;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6000031;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v3 = mach_msg(&msg, 1, 0x28u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v3;
}

uint64_t _BKSHIDRequestHapticFeedback(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1863CFAE0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

uint64_t _BKSHIDTouchStreamCreate(mach_port_name_t a1, int a2, char *src, int a4, char a5, _DWORD *a6)
{
  v22 = *MEMORY[0x1E69E9840];
  memset(v21, 0, 480);
  *name = 0u;
  v20 = 0u;
  *(&v20 + 1) = *MEMORY[0x1E69E99E0];
  LODWORD(v21[0]) = a2;
  if (MEMORY[0x1EEE9AC40])
  {
    v10 = mig_strncpy_zerofill(v21 + 12, src, 1024);
  }

  else
  {
    v10 = mig_strncpy(v21 + 12, src, 1024);
  }

  DWORD1(v21[0]) = 0;
  DWORD2(v21[0]) = v10;
  v11 = (v10 + 3) & 0xFFFFFFFC;
  v12 = name + v11;
  *(v12 + 11) = a4;
  v12[48] = a5;
  *(v12 + 49) = 0;
  v12[51] = 0;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v20 = 0x5B8DA100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v14 = name[3];
  }

  else
  {
    v14 = special_reply_port;
  }

  v15 = mach_msg(name, 3162115, v11 + 52, 0x30u, v14, 0, 0);
  v16 = v15;
  if ((v15 - 268435458) > 0xE || ((1 << (v15 - 2)) & 0x4003) == 0)
  {
    if (!v15)
    {
      if (DWORD1(v20) == 71)
      {
        v16 = 4294966988;
      }

      else if (DWORD1(v20) == 6000133)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 40)
          {
            if (!name[2])
            {
              v16 = LODWORD(v21[0]);
              if (!LODWORD(v21[0]))
              {
                *a6 = DWORD1(v21[0]);
                return v16;
              }

              goto LABEL_29;
            }
          }

          else if (name[1] == 36)
          {
            if (name[2])
            {
              v17 = 1;
            }

            else
            {
              v17 = LODWORD(v21[0]) == 0;
            }

            if (v17)
            {
              v16 = 4294966996;
            }

            else
            {
              v16 = LODWORD(v21[0]);
            }

            goto LABEL_29;
          }
        }

        v16 = 4294966996;
      }

      else
      {
        v16 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(name);
      return v16;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v16 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_29;
  }

  return v16;
}

uint64_t _BKSHIDTouchStreamInvalidate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  *&msg[20] = 0u;
  v11 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = v4;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x5B8DA200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v6 = *&msg[12];
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(msg, 3162115, 0x24u, 0x2Cu, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v7)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v8 - 268435459) > 1)
    {
      return v8;
    }

    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

LABEL_20:
    mach_msg_destroy(msg);
    return v8;
  }

  if (*&msg[20] == 71)
  {
    v8 = 4294966988;
    goto LABEL_20;
  }

  if (*&msg[20] != 6000134)
  {
    v8 = 4294966995;
    goto LABEL_20;
  }

  v8 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_20;
  }

  if (*&msg[8])
  {
    goto LABEL_20;
  }

  v8 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_20;
  }

  return v8;
}

uint64_t _BKSHIDTouchTransfer(mach_port_name_t a1, uint64_t a2, unsigned int a3, mach_port_name_t a4)
{
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *name = 0u;
  v14 = 0u;
  *(&v14 + 1) = *MEMORY[0x1E69E99E0];
  if (a3 > 0x20)
  {
    return 4294966989;
  }

  v8 = a3;
  __memcpy_chk();
  LODWORD(v15) = a3;
  name[v8 + 9] = a4;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v14 = 0x5B8DA400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v10 = name[3];
  }

  else
  {
    v10 = special_reply_port;
  }

  v11 = mach_msg(name, 3162115, v8 * 4 + 40, 0x2Cu, v10, 0, 0);
  v4 = v11;
  if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
  {
    goto LABEL_17;
  }

  if (v11)
  {
    mig_dealloc_special_reply_port();
LABEL_17:
    if ((v4 - 268435459) > 1)
    {
      return v4;
    }

    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

LABEL_22:
    mach_msg_destroy(name);
    return v4;
  }

  if (DWORD1(v14) == 71)
  {
    v4 = 4294966988;
    goto LABEL_22;
  }

  if (DWORD1(v14) != 6000136)
  {
    v4 = 4294966995;
    goto LABEL_22;
  }

  v4 = 4294966996;
  if ((name[0] & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

  if (name[1] != 36)
  {
    goto LABEL_22;
  }

  if (name[2])
  {
    goto LABEL_22;
  }

  v4 = v15;
  if (v15)
  {
    goto LABEL_22;
  }

  return v4;
}

uint64_t _BKSHIDDigitizerTouchDetach(mach_port_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, unsigned int a6, _BYTE *a7, float a8, float a9)
{
  v38 = *MEMORY[0x1E69E9840];
  *&v28[8] = 0u;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  memset(&name, 0, sizeof(name));
  v25 = 1;
  v26 = a5;
  v27 = 16777472;
  *v28 = a6;
  *&v28[4] = *MEMORY[0x1E69E99E0];
  if (a3 <= 0x20)
  {
    v17 = 4 * a3;
    __memcpy_chk();
    *&v28[12] = a3;
    v18 = &name + v17;
    *(v18 + 14) = a4;
    *(v18 + 15) = a8;
    *(v18 + 16) = a9;
    *(v18 + 17) = a6;
    special_reply_port = mig_get_special_reply_port();
    name.msgh_remote_port = a1;
    name.msgh_local_port = special_reply_port;
    name.msgh_bits = -2147478253;
    *&name.msgh_voucher_port = 0x5B8DA500000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&name);
      msgh_local_port = name.msgh_local_port;
    }

    else
    {
      msgh_local_port = special_reply_port;
    }

    v21 = mach_msg(&name, 3162115, v17 + 72, 0x30u, msgh_local_port, 0, 0);
    v10 = v21;
    if ((v21 - 268435458) > 0xE || ((1 << (v21 - 2)) & 0x4003) == 0)
    {
      if (!v21)
      {
        if (name.msgh_id == 71)
        {
          v10 = 4294966988;
        }

        else if (name.msgh_id == 6000137)
        {
          if ((name.msgh_bits & 0x80000000) == 0)
          {
            if (name.msgh_size == 40)
            {
              if (!name.msgh_remote_port)
              {
                v10 = HIDWORD(v26);
                if (!HIDWORD(v26))
                {
                  *a7 = v27;
                  return v10;
                }

                goto LABEL_28;
              }
            }

            else if (name.msgh_size == 36)
            {
              if (name.msgh_remote_port)
              {
                v22 = 1;
              }

              else
              {
                v22 = HIDWORD(v26) == 0;
              }

              if (v22)
              {
                v10 = 4294966996;
              }

              else
              {
                v10 = HIDWORD(v26);
              }

              goto LABEL_28;
            }
          }

          v10 = 4294966996;
        }

        else
        {
          v10 = 4294966995;
        }

LABEL_28:
        mach_msg_destroy(&name);
        return v10;
      }

      mig_dealloc_special_reply_port();
    }

    if ((v10 - 268435459) > 1)
    {
      return v10;
    }

    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

    goto LABEL_28;
  }

  return 4294966989;
}

uint64_t _BKSHIDDigitizerTouchSetOffset(mach_port_t a1, int a2, float a3, float a4)
{
  v7 = *MEMORY[0x1E69E99E0];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  *&v6.msgh_bits = 19;
  v6.msgh_voucher_port = 0;
  v6.msgh_id = 6000038;
  v6.msgh_remote_port = a1;
  v6.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v6);
  }

  v4 = mach_msg(&v6, 1, 0x2Cu, 0, 0, 0, 0);
  if ((v4 - 268435459) <= 1)
  {
    if ((v6.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v6.msgh_local_port);
    }

    mach_msg_destroy(&v6);
  }

  return v4;
}

uint64_t _BKSHIDDigitizerTouchSetRoutingPolicy(int a1, int a2, uint64_t a3, int a4)
{
  v9 = a3;
  v10 = 16777472;
  v11 = a4;
  v12 = *MEMORY[0x1E69E99E0];
  v13 = a2;
  v14 = a4;
  v6 = 2147483667;
  v7 = a1;
  *name = xmmword_1863CFAF0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v6);
  }

  v4 = mach_msg(&v6, 1, 0x3Cu, 0, 0, 0, 0);
  if ((v4 - 268435459) <= 1)
  {
    if ((v6 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[0]);
    }

    mach_msg_destroy(&v6);
  }

  return v4;
}

uint64_t _BKSHIDResetUserEventTimer(mach_port_t a1, int a2, double a3)
{
  v6 = *MEMORY[0x1E69E99E0];
  v7 = a3;
  v8 = a2;
  *&v5.msgh_bits = 19;
  v5.msgh_voucher_port = 0;
  v5.msgh_id = 6000040;
  v5.msgh_remote_port = a1;
  v5.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v5);
  }

  v3 = mach_msg(&v5, 1, 0x2Cu, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((v5.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v5.msgh_local_port);
    }

    mach_msg_destroy(&v5);
  }

  return v3;
}

uint64_t _BKSHIDNotifyOnNextUserEvent(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x5B8DA900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t _BKSHIDSafeToResetIdleTimer(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = v5;
  name_8 = special_reply_port;
  v12 = 5395;
  *name_12 = 0x5B8DAB00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
    v7 = name_8;
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&v12, 3162115, 0x18u, 0x30u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&name_12[4] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&name_12[4] == 6000143)
      {
        if ((v12 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v9 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = name_12[20];
                return v9;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v10 = 1;
            }

            else
            {
              v10 = *&name_12[16] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v12);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((v12 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v9;
}

uint64_t _BKSHIDGetCurrentDeviceOrientation(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = v5;
  name_8 = special_reply_port;
  v12 = 5395;
  *name_12 = 0x5B8DAD00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
    v7 = name_8;
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&v12, 3162115, 0x18u, 0x30u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&name_12[4] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&name_12[4] == 6000145)
      {
        if ((v12 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v9 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = *&name_12[20];
                return v9;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v10 = 1;
            }

            else
            {
              v10 = *&name_12[16] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v12);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((v12 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v9;
}

uint64_t _BKSHIDSetOrientationClient(mach_port_name_t a1, const char *a2, char a3)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 0, 480);
  *name = 0u;
  v11 = 0u;
  *(&v11 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(v12 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v12 + 8, a2, 1024);
  }

  LODWORD(v12[0]) = 0;
  DWORD1(v12[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  v7 = name + v6;
  v7[40] = a3;
  *(v7 + 41) = 0;
  v7[43] = 0;
  name[0] = 19;
  name[2] = a1;
  name[3] = 0;
  *&v11 = 0x5B8DAE00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
  }

  v8 = mach_msg(name, 1, v6 + 44, 0, 0, 0, 0);
  if ((v8 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    mach_msg_destroy(name);
  }

  return v8;
}

uint64_t _BKSHIDLockOrientation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  *&msg[20] = 0u;
  v11 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a2;
  LOBYTE(v11) = a3;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = v4;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x5B8DAF00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v6 = *&msg[12];
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(msg, 3162115, 0x28u, 0x2Cu, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v7)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v8 - 268435459) > 1)
    {
      return v8;
    }

    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

LABEL_20:
    mach_msg_destroy(msg);
    return v8;
  }

  if (*&msg[20] == 71)
  {
    v8 = 4294966988;
    goto LABEL_20;
  }

  if (*&msg[20] != 6000147)
  {
    v8 = 4294966995;
    goto LABEL_20;
  }

  v8 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_20;
  }

  if (*&msg[8])
  {
    goto LABEL_20;
  }

  v8 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_20;
  }

  return v8;
}

uint64_t _BKSHIDUnlockOrientation(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x5B8DB000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t _BKSHIDIsOrientationLockedWithOrientation(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v6 = a1;
  *&msg[20] = 0u;
  v15 = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = v6;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x5B8DB100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v8 = *&msg[12];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(msg, 3162115, 0x18u, 0x34u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&msg[20] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg[20] == 6000149)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v10 = *&msg[32];
              if (!*&msg[32])
              {
                v13 = DWORD1(v15);
                *a2 = v15;
                *a3 = v13;
                return v10;
              }

              goto LABEL_26;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v11 = 1;
            }

            else
            {
              v11 = *&msg[32] == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = *&msg[32];
            }

            goto LABEL_26;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(msg);
      return v10;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v10 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_26;
  }

  return v10;
}

uint64_t _BKSHIDBeginDisplayBrightnessTransaction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  *&msg[24] = 1;
  *&msg[28] = a2;
  v11 = 1310720;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = v4;
  *&msg[12] = special_reply_port;
  *msg = -2147478253;
  *&msg[16] = 0x5B8DB500000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v6 = *&msg[12];
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(msg, 3162115, 0x28u, 0x2Cu, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v7)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v8 - 268435459) > 1)
    {
      return v8;
    }

    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

LABEL_20:
    mach_msg_destroy(msg);
    return v8;
  }

  if (*&msg[20] == 71)
  {
    v8 = 4294966988;
    goto LABEL_20;
  }

  if (*&msg[20] != 6000153)
  {
    v8 = 4294966995;
    goto LABEL_20;
  }

  v8 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_20;
  }

  if (*&msg[8])
  {
    goto LABEL_20;
  }

  v8 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_20;
  }

  return v8;
}

uint64_t _BKSHIDSetDisplayBrightnessWithImplicitTransaction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v5 = a1;
  *&msg[20] = 0u;
  v12 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a5;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = v5;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x5B8DB600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(msg, 3162115, 0x24u, 0x2Cu, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v8)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v9 - 268435459) > 1)
    {
      return v9;
    }

    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

LABEL_20:
    mach_msg_destroy(msg);
    return v9;
  }

  if (*&msg[20] == 71)
  {
    v9 = 4294966988;
    goto LABEL_20;
  }

  if (*&msg[20] != 6000154)
  {
    v9 = 4294966995;
    goto LABEL_20;
  }

  v9 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_20;
  }

  if (*&msg[8])
  {
    goto LABEL_20;
  }

  v9 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_20;
  }

  return v9;
}

uint64_t _BKSHIDSetDisplayBrightnessValue(mach_port_t a1, char a2, float a3)
{
  v6 = *MEMORY[0x1E69E99E0];
  v7 = a3;
  v8 = a2;
  v9 = 0;
  v10 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6000055;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v3 = mach_msg(&msg, 1, 0x28u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v3;
}

uint64_t _BKSHIDFlushDisplayBrightnessUpdates(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v11 = 0;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = v4;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x5B8DB800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v6 = *&msg[12];
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(msg, 3162115, 0x18u, 0x2Cu, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v7)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v8 - 268435459) > 1)
    {
      return v8;
    }

    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

LABEL_20:
    mach_msg_destroy(msg);
    return v8;
  }

  if (*&msg[20] == 71)
  {
    v8 = 4294966988;
    goto LABEL_20;
  }

  if (*&msg[20] != 6000156)
  {
    v8 = 4294966995;
    goto LABEL_20;
  }

  v8 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_20;
  }

  if (*&msg[8])
  {
    goto LABEL_20;
  }

  v8 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_20;
  }

  return v8;
}

uint64_t _BKSHIDRestoreSystemDisplayBrightness(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x5B8DB900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t _BKSHIDGetCurrentDisplayBrightnessCurve(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = v5;
  name_8 = special_reply_port;
  v12 = 5395;
  *name_12 = 0x5B8DBA00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
    v7 = name_8;
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&v12, 3162115, 0x18u, 0x30u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&name_12[4] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&name_12[4] == 6000158)
      {
        if ((v12 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v9 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = name_12[20];
                return v9;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v10 = 1;
            }

            else
            {
              v10 = *&name_12[16] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v12);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((v12 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v9;
}

uint64_t _BKSHIDSetDisplayBrightnessCurveValue(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6000059;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _BKSHIDSetAutoDisplayBrightnessEnabled(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6000060;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _BKSHIDIsCapsLockLightOn(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v5 = a1;
  v14 = *MEMORY[0x1E69E9840];
  memset(&msg_4[16], 0, 28);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  *&msg_4[28] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&msg_4[4] = v5;
  *&msg_4[8] = special_reply_port;
  msg = 5395;
  *&msg_4[12] = 0x5B8DBE00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v7 = *&msg_4[8];
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&msg, 3162115, 0x28u, 0x30u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg_4[16] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg_4[16] == 6000162)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (*msg_4 == 40)
          {
            if (!*&msg_4[4])
            {
              v9 = *&msg_4[28];
              if (!*&msg_4[28])
              {
                *a3 = msg_4[32];
                return v9;
              }

              goto LABEL_26;
            }
          }

          else if (*msg_4 == 36)
          {
            if (*&msg_4[4])
            {
              v10 = 1;
            }

            else
            {
              v10 = *&msg_4[28] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&msg_4[28];
            }

            goto LABEL_26;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&msg);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg_4[8]);
    }

    goto LABEL_26;
  }

  return v9;
}

uint64_t _BKSHIDSetCapsLockRomanSwitchMode(mach_port_t a1, uint64_t a2, char a3)
{
  v6 = *MEMORY[0x1E69E99E0];
  v7 = a2;
  v8 = a3;
  v9 = 0;
  v10 = 0;
  *&v5.msgh_bits = 19;
  v5.msgh_voucher_port = 0;
  v5.msgh_id = 6000063;
  v5.msgh_remote_port = a1;
  v5.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v5);
  }

  v3 = mach_msg(&v5, 1, 0x2Cu, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((v5.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v5.msgh_local_port);
    }

    mach_msg_destroy(&v5);
  }

  return v3;
}

uint64_t _BKSHIDSetCapsLockDelayOverride(mach_port_t a1, uint64_t a2, double a3)
{
  v6 = *MEMORY[0x1E69E99E0];
  v7 = a2;
  v8 = a3;
  *&v5.msgh_bits = 19;
  v5.msgh_voucher_port = 0;
  v5.msgh_id = 6000064;
  v5.msgh_remote_port = a1;
  v5.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v5);
  }

  v3 = mach_msg(&v5, 1, 0x30u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((v5.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v5.msgh_local_port);
    }

    mach_msg_destroy(&v5);
  }

  return v3;
}

uint64_t _BKSHIDSetStandardType(mach_port_t a1, uint64_t a2, int a3)
{
  v6 = *MEMORY[0x1E69E99E0];
  v7 = a2;
  v8 = a3;
  *&v5.msgh_bits = 19;
  v5.msgh_voucher_port = 0;
  v5.msgh_id = 6000065;
  v5.msgh_remote_port = a1;
  v5.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v5);
  }

  v3 = mach_msg(&v5, 1, 0x2Cu, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((v5.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v5.msgh_local_port);
    }

    mach_msg_destroy(&v5);
  }

  return v3;
}

uint64_t _BKSHIDSetCapsLockActive(mach_port_t a1, uint64_t a2, char a3)
{
  v6 = *MEMORY[0x1E69E99E0];
  v7 = a2;
  v8 = a3;
  v9 = 0;
  v10 = 0;
  *&v5.msgh_bits = 19;
  v5.msgh_voucher_port = 0;
  v5.msgh_id = 6000066;
  v5.msgh_remote_port = a1;
  v5.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v5);
  }

  v3 = mach_msg(&v5, 1, 0x2Cu, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((v5.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v5.msgh_local_port);
    }

    mach_msg_destroy(&v5);
  }

  return v3;
}

uint64_t _BKSHIDKeyboardWantsStandardTypeOverride(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v5 = a1;
  v14 = *MEMORY[0x1E69E9840];
  memset(&msg_4[16], 0, 28);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  *&msg_4[28] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&msg_4[4] = v5;
  *&msg_4[8] = special_reply_port;
  msg = 5395;
  *&msg_4[12] = 0x5B8DC300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v7 = *&msg_4[8];
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&msg, 3162115, 0x28u, 0x30u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg_4[16] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg_4[16] == 6000167)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (*msg_4 == 40)
          {
            if (!*&msg_4[4])
            {
              v9 = *&msg_4[28];
              if (!*&msg_4[28])
              {
                *a3 = msg_4[32];
                return v9;
              }

              goto LABEL_26;
            }
          }

          else if (*msg_4 == 36)
          {
            if (*&msg_4[4])
            {
              v10 = 1;
            }

            else
            {
              v10 = *&msg_4[28] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&msg_4[28];
            }

            goto LABEL_26;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&msg);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg_4[8]);
    }

    goto LABEL_26;
  }

  return v9;
}

uint64_t _BKSHIDSetHardwareKeyboardLayout(mach_port_name_t a1, uint64_t a2, char *src)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  memset(v11, 0, 464);
  *name = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  *&v10 = a2;
  if (MEMORY[0x1EEE9AC40])
  {
    v4 = mig_strncpy_zerofill(v11, src, 1024);
  }

  else
  {
    v4 = mig_strncpy(v11, src, 1024);
  }

  DWORD2(v10) = 0;
  HIDWORD(v10) = v4;
  v5 = (v4 + 3) & 0xFFFFFFFC;
  name[0] = 19;
  name[2] = a1;
  name[3] = 0;
  *&v9 = 0x5B8DC400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
  }

  v6 = mach_msg(name, 1, v5 + 48, 0, 0, 0, 0);
  if ((v6 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    mach_msg_destroy(name);
  }

  return v6;
}

uint64_t _BKSHIDSetAuthenticatedKeyCommands(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1863CFB00;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

uint64_t _BKSHIDSetPersistentServiceProperties(int a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v10 = a2;
  v11 = 16777472;
  v12 = a3;
  v13 = a4;
  v14 = 16777472;
  v15 = a5;
  v16 = *MEMORY[0x1E69E99E0];
  v17 = a3;
  v18 = a5;
  v7 = 2147483667;
  v8 = a1;
  *name = xmmword_1863CFB10;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v7);
  }

  v5 = mach_msg(&v7, 1, 0x4Cu, 0, 0, 0, 0);
  if ((v5 - 268435459) <= 1)
  {
    if ((v7 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[0]);
    }

    mach_msg_destroy(&v7);
  }

  return v5;
}

uint64_t _BKSHIDGetPersistentServiceProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6, _DWORD *a7)
{
  v9 = a1;
  v17 = 2;
  v18 = a2;
  v19 = 16777472;
  v20 = a3;
  v21 = a4;
  v22 = 16777472;
  v23 = a5;
  v24 = *MEMORY[0x1E69E99E0];
  v25 = a3;
  v26 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&v16.msgh_bits = 2147489043;
  v16.msgh_remote_port = v9;
  v16.msgh_local_port = special_reply_port;
  *&v16.msgh_voucher_port = 0x5B8DC700000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v16);
    msgh_local_port = v16.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v12 = mach_msg(&v16, 3162115, 0x4Cu, 0x40u, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (v16.msgh_id == 71)
      {
        v13 = 4294966988;
      }

      else if (v16.msgh_id == 6000171)
      {
        if ((v16.msgh_bits & 0x80000000) == 0)
        {
          if (v16.msgh_size == 36)
          {
            v13 = 4294966996;
            if (HIDWORD(v18))
            {
              if (v16.msgh_remote_port)
              {
                v13 = 4294966996;
              }

              else
              {
                v13 = HIDWORD(v18);
              }
            }
          }

          else
          {
            v13 = 4294966996;
          }

          goto LABEL_28;
        }

        v13 = 4294966996;
        if (v17 == 1 && v16.msgh_size == 56 && !v16.msgh_remote_port && HIBYTE(v19) == 1)
        {
          v14 = v20;
          if (v20 == v22)
          {
            v13 = 0;
            *a6 = v18;
            *a7 = v14;
            return v13;
          }
        }
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(&v16);
      return v13;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v13 - 268435459) <= 1)
  {
    if ((v16.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v16.msgh_local_port);
    }

    goto LABEL_28;
  }

  return v13;
}

uint64_t _BKSHIDVerifyEventAuthenticationMessage(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v5 = a1;
  v19 = *MEMORY[0x1E69E9840];
  v13 = 1;
  v14 = a2;
  v15 = 16777472;
  v16 = a3;
  v17 = *MEMORY[0x1E69E99E0];
  v18 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v12.msgh_bits = 2147489043;
  v12.msgh_remote_port = v5;
  v12.msgh_local_port = special_reply_port;
  *&v12.msgh_voucher_port = 0x5B8DC800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
    msgh_local_port = v12.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&v12, 3162115, 0x38u, 0x30u, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (v12.msgh_id == 71)
      {
        v9 = 4294966988;
      }

      else if (v12.msgh_id == 6000172)
      {
        if ((v12.msgh_bits & 0x80000000) == 0)
        {
          if (v12.msgh_size == 40)
          {
            if (!v12.msgh_remote_port)
            {
              v9 = HIDWORD(v14);
              if (!HIDWORD(v14))
              {
                *a4 = v15;
                return v9;
              }

              goto LABEL_26;
            }
          }

          else if (v12.msgh_size == 36)
          {
            if (v12.msgh_remote_port)
            {
              v10 = 1;
            }

            else
            {
              v10 = HIDWORD(v14) == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = HIDWORD(v14);
            }

            goto LABEL_26;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v12);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((v12.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v12.msgh_local_port);
    }

    goto LABEL_26;
  }

  return v9;
}

uint64_t _BKSHIDTouchAddAuthenticationSpecifications(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1863CFB20;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

uint64_t _BKSHIDVerifyEventProvenance(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v6 = a1;
  v21 = *MEMORY[0x1E69E9840];
  v14 = 1;
  v15 = a2;
  v16 = 16777472;
  v17 = a3;
  v18 = *MEMORY[0x1E69E99E0];
  v19 = a3;
  v20 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = v6;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x5B8DCA00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v9 = mach_msg(&msg, 3162115, 0x3Cu, 0x30u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (msg.msgh_id == 71)
      {
        v10 = 4294966988;
      }

      else if (msg.msgh_id == 6000174)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v10 = HIDWORD(v15);
              if (!HIDWORD(v15))
              {
                *a5 = v16;
                return v10;
              }

              goto LABEL_26;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v11 = 1;
            }

            else
            {
              v11 = HIDWORD(v15) == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = HIDWORD(v15);
            }

            goto LABEL_26;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&msg);
      return v10;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v10 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    goto LABEL_26;
  }

  return v10;
}

uint64_t _BKSHIDGetUISensorCharacteristics(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  v6 = a1;
  v18 = *MEMORY[0x1E69E9840];
  memset(&msg_16[4], 0, 44);
  msg_4 = 0;
  special_reply_port = mig_get_special_reply_port();
  msg_8 = v6;
  msg_12 = special_reply_port;
  msg = 5395;
  *msg_16 = 0x5B8DCC00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v8 = msg_12;
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(&msg, 3162115, 0x18u, 0x40u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&msg_16[4] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg_16[4] == 6000176)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (msg_4 == 36)
          {
            v10 = 4294966996;
            if (*&msg_16[16])
            {
              if (msg_8)
              {
                v10 = 4294966996;
              }

              else
              {
                v10 = *&msg_16[16];
              }
            }
          }

          else
          {
            v10 = 4294966996;
          }

          goto LABEL_28;
        }

        v10 = 4294966996;
        if (*&msg_16[8] == 1 && msg_4 == 56 && !msg_8 && msg_16[23] == 1)
        {
          v11 = *&msg_16[24];
          if (*&msg_16[24] == *&msg_16[36])
          {
            v10 = 0;
            *a2 = *&msg_16[12];
            *a3 = v11;
            return v10;
          }
        }
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(&msg);
      return v10;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v10 - 268435459) <= 1)
  {
    if ((msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg_12);
    }

    goto LABEL_28;
  }

  return v10;
}

uint64_t _BKSHIDTouchSensitiveButtonSetScanMode(mach_port_t a1, int a2, int a3)
{
  v6 = *MEMORY[0x1E69E99E0];
  v7 = a2;
  v8 = a3;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6000077;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v3 = mach_msg(&msg, 1, 0x28u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v3;
}

uint64_t _BKSDisplayIsDisabled(mach_port_name_t a1, const char *a2, _BYTE *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(v15, 0, 480);
  *name = 0u;
  v14 = 0u;
  *(&v14 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(v15 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v15 + 8, a2, 1024);
  }

  LODWORD(v15[0]) = 0;
  DWORD1(v15[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v14 = 0x5B916800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v8 = name[3];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(name, 3162115, v6 + 40, 0x30u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (DWORD1(v14) == 71)
      {
        v10 = 4294966988;
      }

      else if (DWORD1(v14) == 6001100)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 40)
          {
            if (!name[2])
            {
              v10 = LODWORD(v15[0]);
              if (!LODWORD(v15[0]))
              {
                *a3 = BYTE4(v15[0]);
                return v10;
              }

              goto LABEL_29;
            }
          }

          else if (name[1] == 36)
          {
            if (name[2])
            {
              v11 = 1;
            }

            else
            {
              v11 = LODWORD(v15[0]) == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = LODWORD(v15[0]);
            }

            goto LABEL_29;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(name);
      return v10;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v10 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_29;
  }

  return v10;
}

uint64_t _BKSDisplaySetDisabled(mach_port_name_t a1, const char *a2, char a3, _BYTE *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(v18, 0, 480);
  *name = 0u;
  v17 = 0u;
  *(&v17 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v7 = mig_strncpy_zerofill(v18 + 8, a2, 1024);
  }

  else
  {
    v7 = mig_strncpy(v18 + 8, a2, 1024);
  }

  LODWORD(v18[0]) = 0;
  DWORD1(v18[0]) = v7;
  v8 = (v7 + 3) & 0xFFFFFFFC;
  v9 = name + v8;
  v9[40] = a3;
  *(v9 + 41) = 0;
  v9[43] = 0;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v17 = 0x5B916900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v11 = name[3];
  }

  else
  {
    v11 = special_reply_port;
  }

  v12 = mach_msg(name, 3162115, v8 + 44, 0x30u, v11, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (DWORD1(v17) == 71)
      {
        v13 = 4294966988;
      }

      else if (DWORD1(v17) == 6001101)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 40)
          {
            if (!name[2])
            {
              v13 = LODWORD(v18[0]);
              if (!LODWORD(v18[0]))
              {
                *a4 = BYTE4(v18[0]);
                return v13;
              }

              goto LABEL_29;
            }
          }

          else if (name[1] == 36)
          {
            if (name[2])
            {
              v14 = 1;
            }

            else
            {
              v14 = LODWORD(v18[0]) == 0;
            }

            if (v14)
            {
              v13 = 4294966996;
            }

            else
            {
              v13 = LODWORD(v18[0]);
            }

            goto LABEL_29;
          }
        }

        v13 = 4294966996;
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(name);
      return v13;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v13 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_29;
  }

  return v13;
}

uint64_t _BKSDisplaySetReachabilityBounds(mach_port_name_t a1, const char *a2, float a3, float a4, float a5, float a6)
{
  v22 = *MEMORY[0x1E69E9840];
  memset(v21, 0, 480);
  *name = 0u;
  v20 = 0u;
  *(&v20 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v11 = mig_strncpy_zerofill(v21 + 8, a2, 1024);
  }

  else
  {
    v11 = mig_strncpy(v21 + 8, a2, 1024);
  }

  LODWORD(v21[0]) = 0;
  DWORD1(v21[0]) = v11;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  v13 = (name + v12);
  v13[10] = a3;
  v13[11] = a4;
  v13[12] = a5;
  v13[13] = a6;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v20 = 0x5B916A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v15 = name[3];
  }

  else
  {
    v15 = special_reply_port;
  }

  v16 = mach_msg(name, 3162115, v12 + 56, 0x2Cu, v15, 0, 0);
  v17 = v16;
  if ((v16 - 268435458) <= 0xE && ((1 << (v16 - 2)) & 0x4003) != 0)
  {
    goto LABEL_18;
  }

  if (v16)
  {
    mig_dealloc_special_reply_port();
LABEL_18:
    if ((v17 - 268435459) > 1)
    {
      return v17;
    }

    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

LABEL_23:
    mach_msg_destroy(name);
    return v17;
  }

  if (DWORD1(v20) == 71)
  {
    v17 = 4294966988;
    goto LABEL_23;
  }

  if (DWORD1(v20) != 6001102)
  {
    v17 = 4294966995;
    goto LABEL_23;
  }

  v17 = 4294966996;
  if ((name[0] & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (name[1] != 36)
  {
    goto LABEL_23;
  }

  if (name[2])
  {
    goto LABEL_23;
  }

  v17 = LODWORD(v21[0]);
  if (LODWORD(v21[0]))
  {
    goto LABEL_23;
  }

  return v17;
}

uint64_t _BKSDisplayWillUnblank(mach_port_name_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, 480);
  *name = 0u;
  v8 = 0u;
  *(&v8 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v9 + 8, a2, 1024);
  }

  else
  {
    v3 = mig_strncpy(v9 + 8, a2, 1024);
  }

  LODWORD(v9[0]) = 0;
  DWORD1(v9[0]) = v3;
  v4 = (v3 + 3) & 0xFFFFFFFC;
  name[0] = 19;
  name[2] = a1;
  name[3] = 0;
  *&v8 = 0x5B916C00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
  }

  v5 = mach_msg(name, 1, v4 + 40, 0, 0, 0, 0);
  if ((v5 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    mach_msg_destroy(name);
  }

  return v5;
}

uint64_t _BKSDisplayGetSystemIdentifiers(mach_port_name_t a1, const char *a2, void *a3, _DWORD *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  *name = 0u;
  memset(v16, 0, sizeof(v16));
  *(&v16[0] + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v7 = mig_strncpy_zerofill(&v16[1] + 8, a2, 1024);
  }

  else
  {
    v7 = mig_strncpy(&v16[1] + 8, a2, 1024);
  }

  LODWORD(v16[1]) = 0;
  DWORD1(v16[1]) = v7;
  v8 = (v7 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v16[0] = 0x5B916D00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v10 = name[3];
  }

  else
  {
    v10 = special_reply_port;
  }

  v11 = mach_msg(name, 3162115, v8 + 40, 0x40u, v10, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (DWORD1(v16[0]) == 71)
      {
        v12 = 4294966988;
      }

      else if (DWORD1(v16[0]) == 6001105)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 36)
          {
            v12 = 4294966996;
            if (LODWORD(v16[1]))
            {
              if (name[2])
              {
                v12 = 4294966996;
              }

              else
              {
                v12 = LODWORD(v16[1]);
              }
            }
          }

          else
          {
            v12 = 4294966996;
          }

          goto LABEL_31;
        }

        v12 = 4294966996;
        if (DWORD2(v16[0]) == 1 && name[1] == 56 && !name[2] && BYTE7(v16[1]) == 1)
        {
          v13 = DWORD2(v16[1]);
          if (DWORD2(v16[1]) == DWORD1(v17))
          {
            v12 = 0;
            *a3 = *(v16 + 12);
            *a4 = v13;
            return v12;
          }
        }
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(name);
      return v12;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v12 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_31;
  }

  return v12;
}

uint64_t _BKSDisplaySetSystemIdentifiers(mach_port_t a1, const char *a2, uint64_t a3, unsigned int a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *&v14[8] = 0u;
  memset(&name, 0, sizeof(name));
  v11 = 1;
  v12 = a3;
  v13 = 16777472;
  *v14 = a4;
  *&v14[4] = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v6 = mig_strncpy_zerofill(&v14[20], a2, 1024);
  }

  else
  {
    v6 = mig_strncpy(&v14[20], a2, 1024);
  }

  *&v14[12] = 0;
  *&v14[16] = v6;
  v7 = (v6 + 3) & 0xFFFFFFFC;
  *&v14[v7 + 20] = a4;
  name.msgh_bits = -2147483629;
  name.msgh_remote_port = a1;
  name.msgh_local_port = 0;
  *&name.msgh_voucher_port = 0x5B916E00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&name);
  }

  v8 = mach_msg(&name, 1, v7 + 64, 0, 0, 0, 0);
  if ((v8 - 268435459) <= 1)
  {
    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

    mach_msg_destroy(&name);
  }

  return v8;
}

uint64_t _BKSDisplayIsFlipBookEnabled(mach_port_name_t a1, const char *a2, _BYTE *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(v15, 0, 480);
  *name = 0u;
  v14 = 0u;
  *(&v14 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(v15 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v15 + 8, a2, 1024);
  }

  LODWORD(v15[0]) = 0;
  DWORD1(v15[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v14 = 0x5B916F00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v8 = name[3];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(name, 3162115, v6 + 40, 0x30u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (DWORD1(v14) == 71)
      {
        v10 = 4294966988;
      }

      else if (DWORD1(v14) == 6001107)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 40)
          {
            if (!name[2])
            {
              v10 = LODWORD(v15[0]);
              if (!LODWORD(v15[0]))
              {
                *a3 = BYTE4(v15[0]);
                return v10;
              }

              goto LABEL_29;
            }
          }

          else if (name[1] == 36)
          {
            if (name[2])
            {
              v11 = 1;
            }

            else
            {
              v11 = LODWORD(v15[0]) == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = LODWORD(v15[0]);
            }

            goto LABEL_29;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(name);
      return v10;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v10 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_29;
  }

  return v10;
}

uint64_t _BKSDisplaySetFlipBookEnabled(mach_port_name_t a1, const char *a2, char a3)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(v15, 0, 480);
  *name = 0u;
  v14 = 0u;
  *(&v14 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(v15 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v15 + 8, a2, 1024);
  }

  LODWORD(v15[0]) = 0;
  DWORD1(v15[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  v7 = name + v6;
  v7[40] = a3;
  *(v7 + 41) = 0;
  v7[43] = 0;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v14 = 0x5B917000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v9 = name[3];
  }

  else
  {
    v9 = special_reply_port;
  }

  v10 = mach_msg(name, 3162115, v6 + 44, 0x2Cu, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    goto LABEL_18;
  }

  if (v10)
  {
    mig_dealloc_special_reply_port();
LABEL_18:
    if ((v11 - 268435459) > 1)
    {
      return v11;
    }

    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

LABEL_23:
    mach_msg_destroy(name);
    return v11;
  }

  if (DWORD1(v14) == 71)
  {
    v11 = 4294966988;
    goto LABEL_23;
  }

  if (DWORD1(v14) != 6001108)
  {
    v11 = 4294966995;
    goto LABEL_23;
  }

  v11 = 4294966996;
  if ((name[0] & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (name[1] != 36)
  {
    goto LABEL_23;
  }

  if (name[2])
  {
    goto LABEL_23;
  }

  v11 = LODWORD(v15[0]);
  if (LODWORD(v15[0]))
  {
    goto LABEL_23;
  }

  return v11;
}

uint64_t _BKSDisplaySetCalibrationPhase(mach_port_name_t a1, const char *a2, int a3, int a4, int a5)
{
  v20 = *MEMORY[0x1E69E9840];
  memset(v19, 0, 480);
  *name = 0u;
  v18 = 0u;
  *(&v18 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v9 = mig_strncpy_zerofill(v19 + 8, a2, 1024);
  }

  else
  {
    v9 = mig_strncpy(v19 + 8, a2, 1024);
  }

  LODWORD(v19[0]) = 0;
  DWORD1(v19[0]) = v9;
  v10 = (v9 + 3) & 0xFFFFFFFC;
  v11 = (name + v10);
  v11[10] = a3;
  v11[11] = a4;
  v11[12] = a5;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v18 = 0x5B917100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v13 = name[3];
  }

  else
  {
    v13 = special_reply_port;
  }

  v14 = mach_msg(name, 3162115, v10 + 52, 0x2Cu, v13, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    goto LABEL_18;
  }

  if (v14)
  {
    mig_dealloc_special_reply_port();
LABEL_18:
    if ((v15 - 268435459) > 1)
    {
      return v15;
    }

    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

LABEL_23:
    mach_msg_destroy(name);
    return v15;
  }

  if (DWORD1(v18) == 71)
  {
    v15 = 4294966988;
    goto LABEL_23;
  }

  if (DWORD1(v18) != 6001109)
  {
    v15 = 4294966995;
    goto LABEL_23;
  }

  v15 = 4294966996;
  if ((name[0] & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (name[1] != 36)
  {
    goto LABEL_23;
  }

  if (name[2])
  {
    goto LABEL_23;
  }

  v15 = LODWORD(v19[0]);
  if (LODWORD(v19[0]))
  {
    goto LABEL_23;
  }

  return v15;
}

uint64_t _BKSDisplayIsFlipBookSuppressed(mach_port_name_t a1, const char *a2, _BYTE *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(v15, 0, 480);
  *name = 0u;
  v14 = 0u;
  *(&v14 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(v15 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v15 + 8, a2, 1024);
  }

  LODWORD(v15[0]) = 0;
  DWORD1(v15[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v14 = 0x5B917200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v8 = name[3];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(name, 3162115, v6 + 40, 0x30u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (DWORD1(v14) == 71)
      {
        v10 = 4294966988;
      }

      else if (DWORD1(v14) == 6001110)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 40)
          {
            if (!name[2])
            {
              v10 = LODWORD(v15[0]);
              if (!LODWORD(v15[0]))
              {
                *a3 = BYTE4(v15[0]);
                return v10;
              }

              goto LABEL_29;
            }
          }

          else if (name[1] == 36)
          {
            if (name[2])
            {
              v11 = 1;
            }

            else
            {
              v11 = LODWORD(v15[0]) == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = LODWORD(v15[0]);
            }

            goto LABEL_29;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(name);
      return v10;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v10 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_29;
  }

  return v10;
}

uint64_t _BKSDisplaySetFlipBookSuppressed(mach_port_name_t a1, const char *a2, char a3)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(v15, 0, 480);
  *name = 0u;
  v14 = 0u;
  *(&v14 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(v15 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v15 + 8, a2, 1024);
  }

  LODWORD(v15[0]) = 0;
  DWORD1(v15[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  v7 = name + v6;
  v7[40] = a3;
  *(v7 + 41) = 0;
  v7[43] = 0;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v14 = 0x5B917300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v9 = name[3];
  }

  else
  {
    v9 = special_reply_port;
  }

  v10 = mach_msg(name, 3162115, v6 + 44, 0x2Cu, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    goto LABEL_18;
  }

  if (v10)
  {
    mig_dealloc_special_reply_port();
LABEL_18:
    if ((v11 - 268435459) > 1)
    {
      return v11;
    }

    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

LABEL_23:
    mach_msg_destroy(name);
    return v11;
  }

  if (DWORD1(v14) == 71)
  {
    v11 = 4294966988;
    goto LABEL_23;
  }

  if (DWORD1(v14) != 6001111)
  {
    v11 = 4294966995;
    goto LABEL_23;
  }

  v11 = 4294966996;
  if ((name[0] & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (name[1] != 36)
  {
    goto LABEL_23;
  }

  if (name[2])
  {
    goto LABEL_23;
  }

  v11 = LODWORD(v15[0]);
  if (LODWORD(v15[0]))
  {
    goto LABEL_23;
  }

  return v11;
}

uint64_t _BKSDisplaySetCloneRotationDisabled(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6001013;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _BKSDisplaySetCloneMirroringModeForDestinationDisplay(mach_port_name_t a1, const char *a2, char a3)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 0, 480);
  *name = 0u;
  v11 = 0u;
  *(&v11 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(v12 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v12 + 8, a2, 1024);
  }

  LODWORD(v12[0]) = 0;
  DWORD1(v12[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  v7 = name + v6;
  v7[40] = a3;
  *(v7 + 41) = 0;
  v7[43] = 0;
  name[0] = 19;
  name[2] = a1;
  name[3] = 0;
  *&v11 = 0x5B917600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
  }

  v8 = mach_msg(name, 1, v6 + 44, 0, 0, 0, 0);
  if ((v8 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    mach_msg_destroy(name);
  }

  return v8;
}

uint64_t _BKSDisplayRemoveCloneMirroringModeForDestinationDisplay(mach_port_name_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, 480);
  *name = 0u;
  v8 = 0u;
  *(&v8 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v9 + 8, a2, 1024);
  }

  else
  {
    v3 = mig_strncpy(v9 + 8, a2, 1024);
  }

  LODWORD(v9[0]) = 0;
  DWORD1(v9[0]) = v3;
  v4 = (v3 + 3) & 0xFFFFFFFC;
  name[0] = 19;
  name[2] = a1;
  name[3] = 0;
  *&v8 = 0x5B917700000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
  }

  v5 = mach_msg(name, 1, v4 + 40, 0, 0, 0, 0);
  if ((v5 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    mach_msg_destroy(name);
  }

  return v5;
}

uint64_t _BKSDisplayTetherPrefsNeedImmediateUpdate(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = v5;
  name_8 = special_reply_port;
  v12 = 5395;
  *name_12 = 0x5B917900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
    v7 = name_8;
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&v12, 3162115, 0x18u, 0x30u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&name_12[4] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&name_12[4] == 6001117)
      {
        if ((v12 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v9 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = name_12[20];
                return v9;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v10 = 1;
            }

            else
            {
              v10 = *&name_12[16] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v12);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((v12 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v9;
}

uint64_t _BKSDisplaySetTetheredOrientationNotificationsDisabled(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  *&msg[20] = 0u;
  v11 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  msg[32] = a2;
  *&msg[33] = 0;
  msg[35] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = v4;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x5B917A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v6 = *&msg[12];
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(msg, 3162115, 0x24u, 0x2Cu, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v7)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v8 - 268435459) > 1)
    {
      return v8;
    }

    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

LABEL_20:
    mach_msg_destroy(msg);
    return v8;
  }

  if (*&msg[20] == 71)
  {
    v8 = 4294966988;
    goto LABEL_20;
  }

  if (*&msg[20] != 6001118)
  {
    v8 = 4294966995;
    goto LABEL_20;
  }

  v8 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_20;
  }

  if (*&msg[8])
  {
    goto LABEL_20;
  }

  v8 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_20;
  }

  return v8;
}

uint64_t _BKSDisplayUpdateTetheredDisplayOrientationIfNecessaryWithInterfaceOrientation(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6001019;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _BKSDisplayUpdateMirroredDisplayOrientationWithInterfaceOrientation(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6001020;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _BKSDisplayRenderOverlay(mach_port_name_t a1, const char *a2, void *a3, _DWORD *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  *name = 0u;
  memset(v16, 0, sizeof(v16));
  *(&v16[0] + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v7 = mig_strncpy_zerofill(&v16[1] + 8, a2, 1024);
  }

  else
  {
    v7 = mig_strncpy(&v16[1] + 8, a2, 1024);
  }

  LODWORD(v16[1]) = 0;
  DWORD1(v16[1]) = v7;
  v8 = (v7 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v16[0] = 0x5B917E00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v10 = name[3];
  }

  else
  {
    v10 = special_reply_port;
  }

  v11 = mach_msg(name, 3162115, v8 + 40, 0x40u, v10, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (DWORD1(v16[0]) == 71)
      {
        v12 = 4294966988;
      }

      else if (DWORD1(v16[0]) == 6001122)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 36)
          {
            v12 = 4294966996;
            if (LODWORD(v16[1]))
            {
              if (name[2])
              {
                v12 = 4294966996;
              }

              else
              {
                v12 = LODWORD(v16[1]);
              }
            }
          }

          else
          {
            v12 = 4294966996;
          }

          goto LABEL_31;
        }

        v12 = 4294966996;
        if (DWORD2(v16[0]) == 1 && name[1] == 56 && !name[2] && BYTE7(v16[1]) == 1)
        {
          v13 = DWORD2(v16[1]);
          if (DWORD2(v16[1]) == DWORD1(v17))
          {
            v12 = 0;
            *a3 = *(v16 + 12);
            *a4 = v13;
            return v12;
          }
        }
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(name);
      return v12;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v12 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_31;
  }

  return v12;
}

uint64_t _BKSDisplayApplyRenderOverlay(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a1;
  v22 = *MEMORY[0x1E69E9840];
  v12 = 2;
  v13 = a2;
  v14 = 16777472;
  v15 = a3;
  v16 = a4;
  v17 = 16777472;
  v18 = a5;
  v19 = *MEMORY[0x1E69E99E0];
  v20 = a3;
  v21 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = v5;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x5B917F00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&msg, 3162115, 0x4Cu, 0x2Cu, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v8)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v9 - 268435459) > 1)
    {
      return v9;
    }

    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

LABEL_20:
    mach_msg_destroy(&msg);
    return v9;
  }

  if (msg.msgh_id == 71)
  {
    v9 = 4294966988;
    goto LABEL_20;
  }

  if (msg.msgh_id != 6001123)
  {
    v9 = 4294966995;
    goto LABEL_20;
  }

  v9 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_20;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_20;
  }

  v9 = HIDWORD(v13);
  if (HIDWORD(v13))
  {
    goto LABEL_20;
  }

  return v9;
}

uint64_t _BKSDisplayRemoveRenderOverlay(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a1;
  v22 = *MEMORY[0x1E69E9840];
  v12 = 2;
  v13 = a2;
  v14 = 16777472;
  v15 = a3;
  v16 = a4;
  v17 = 16777472;
  v18 = a5;
  v19 = *MEMORY[0x1E69E99E0];
  v20 = a3;
  v21 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = v5;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x5B918000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&msg, 3162115, 0x4Cu, 0x2Cu, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v8)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v9 - 268435459) > 1)
    {
      return v9;
    }

    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

LABEL_20:
    mach_msg_destroy(&msg);
    return v9;
  }

  if (msg.msgh_id == 71)
  {
    v9 = 4294966988;
    goto LABEL_20;
  }

  if (msg.msgh_id != 6001124)
  {
    v9 = 4294966995;
    goto LABEL_20;
  }

  v9 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_20;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_20;
  }

  v9 = HIDWORD(v13);
  if (HIDWORD(v13))
  {
    goto LABEL_20;
  }

  return v9;
}

uint64_t _BKSDisplayFreezeRenderOverlay(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v17 = *MEMORY[0x1E69E9840];
  v11 = 1;
  v12 = a2;
  v13 = 16777472;
  v14 = a3;
  v15 = *MEMORY[0x1E69E99E0];
  v16 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v10.msgh_bits = 2147489043;
  v10.msgh_remote_port = v4;
  v10.msgh_local_port = special_reply_port;
  *&v10.msgh_voucher_port = 0x5B918100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    msgh_local_port = v10.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v7 = mach_msg(&v10, 3162115, 0x38u, 0x2Cu, msgh_local_port, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v7)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v8 - 268435459) > 1)
    {
      return v8;
    }

    if ((v10.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v10.msgh_local_port);
    }

LABEL_20:
    mach_msg_destroy(&v10);
    return v8;
  }

  if (v10.msgh_id == 71)
  {
    v8 = 4294966988;
    goto LABEL_20;
  }

  if (v10.msgh_id != 6001125)
  {
    v8 = 4294966995;
    goto LABEL_20;
  }

  v8 = 4294966996;
  if ((v10.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (v10.msgh_size != 36)
  {
    goto LABEL_20;
  }

  if (v10.msgh_remote_port)
  {
    goto LABEL_20;
  }

  v8 = HIDWORD(v12);
  if (HIDWORD(v12))
  {
    goto LABEL_20;
  }

  return v8;
}

uint64_t _BKSDisplayDismissInterstitialRenderOverlay(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v17 = *MEMORY[0x1E69E9840];
  v11 = 1;
  v12 = a2;
  v13 = 16777472;
  v14 = a3;
  v15 = *MEMORY[0x1E69E99E0];
  v16 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v10.msgh_bits = 2147489043;
  v10.msgh_remote_port = v4;
  v10.msgh_local_port = special_reply_port;
  *&v10.msgh_voucher_port = 0x5B918200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    msgh_local_port = v10.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v7 = mach_msg(&v10, 3162115, 0x38u, 0x2Cu, msgh_local_port, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v7)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v8 - 268435459) > 1)
    {
      return v8;
    }

    if ((v10.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v10.msgh_local_port);
    }

LABEL_20:
    mach_msg_destroy(&v10);
    return v8;
  }

  if (v10.msgh_id == 71)
  {
    v8 = 4294966988;
    goto LABEL_20;
  }

  if (v10.msgh_id != 6001126)
  {
    v8 = 4294966995;
    goto LABEL_20;
  }

  v8 = 4294966996;
  if ((v10.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (v10.msgh_size != 36)
  {
    goto LABEL_20;
  }

  if (v10.msgh_remote_port)
  {
    goto LABEL_20;
  }

  v8 = HIDWORD(v12);
  if (HIDWORD(v12))
  {
    goto LABEL_20;
  }

  return v8;
}

uint64_t _BKSDisplayGetRenderOverlayDismissActions(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  v6 = a1;
  v18 = *MEMORY[0x1E69E9840];
  memset(&msg_16[4], 0, 44);
  msg_4 = 0;
  special_reply_port = mig_get_special_reply_port();
  msg_8 = v6;
  msg_12 = special_reply_port;
  msg = 5395;
  *msg_16 = 0x5B918300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v8 = msg_12;
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(&msg, 3162115, 0x18u, 0x40u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&msg_16[4] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg_16[4] == 6001127)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (msg_4 == 36)
          {
            v10 = 4294966996;
            if (*&msg_16[16])
            {
              if (msg_8)
              {
                v10 = 4294966996;
              }

              else
              {
                v10 = *&msg_16[16];
              }
            }
          }

          else
          {
            v10 = 4294966996;
          }

          goto LABEL_28;
        }

        v10 = 4294966996;
        if (*&msg_16[8] == 1 && msg_4 == 56 && !msg_8 && msg_16[23] == 1)
        {
          v11 = *&msg_16[24];
          if (*&msg_16[24] == *&msg_16[36])
          {
            v10 = 0;
            *a2 = *&msg_16[12];
            *a3 = v11;
            return v10;
          }
        }
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(&msg);
      return v10;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v10 - 268435459) <= 1)
  {
    if ((msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg_12);
    }

    goto LABEL_28;
  }

  return v10;
}

uint64_t _BKSDisplaySetArrangement(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1863CFB40;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

uint64_t _XDeliverAccelerometerEvent(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 56)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = _BKXXDeliverAccelerometerEvent(*(result + 32), *(result + 40), *(result + 44), *(result + 48), result, *(result + 52));
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t (*BKAccelerometer_server_routine(uint64_t a1))(uint64_t result, uint64_t a2)
{
  if (*(a1 + 20) == 980665)
  {
    return _XDeliverAccelerometerEvent;
  }

  else
  {
    return 0;
  }
}

uint64_t BKAccelerometer_server(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v4 = *(a1 + 20) + 100;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 20) = v4;
  if (*(a1 + 20) == 980665)
  {
    if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 56)
    {
      *(a2 + 32) = -304;
      *(a2 + 24) = *MEMORY[0x1E69E99E0];
    }

    else
    {
      _BKXXDeliverAccelerometerEvent(*(a1 + 32), *(a1 + 40), *(a1 + 44), *(a1 + 48), a1, *(a1 + 52));
      *(a2 + 32) = 0;
    }

    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t _BKSWatchdogGetIsAlive(int a1, _BYTE *a2, mach_msg_timeout_t a3)
{
  memset(&reply_port_12[4], 0, 28);
  reply_port = 0;
  v6 = mig_get_reply_port();
  reply_port_4 = a1;
  reply_port_8 = v6;
  v12 = 5395;
  *reply_port_12 = 0x5B955000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
    v7 = reply_port_8;
  }

  else
  {
    v7 = v6;
  }

  v8 = mach_msg(&v12, 275, 0x18u, 0x30u, v7, a3, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port_8);
  }

  else
  {
    if (!v8)
    {
      if (*&reply_port_12[4] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&reply_port_12[4] == 6002100)
      {
        if ((v12 & 0x80000000) == 0)
        {
          if (reply_port == 40)
          {
            if (!reply_port_4)
            {
              v9 = *&reply_port_12[16];
              if (!*&reply_port_12[16])
              {
                *a2 = reply_port_12[20];
                return v9;
              }

              goto LABEL_27;
            }
          }

          else if (reply_port == 36)
          {
            if (reply_port_4)
            {
              v10 = 1;
            }

            else
            {
              v10 = *&reply_port_12[16] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&reply_port_12[16];
            }

            goto LABEL_27;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_27:
      mach_msg_destroy(&v12);
      return v9;
    }

    mig_dealloc_reply_port(reply_port_8);
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((v12 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], reply_port_8);
    }

    goto LABEL_27;
  }

  return v9;
}
uint64_t SFBrowserSetOptions(uint64_t a1, uint64_t a2)
{
  v4 = browser_log(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    SFBrowserSetOptions_cold_1();
  }

  pthread_mutex_lock((a1 + 88));
  if (*(a1 + 216) || (Connection = _SFBrowserCreateConnection(a1), (*(a1 + 216) = Connection) != 0))
  {
    v6 = _os_activity_create(&dword_1A9662000, "Sharing/SFBrowser/setOptions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10.opaque[0] = 0;
    v10.opaque[1] = 0;
    os_activity_scope_enter(v6, &v10);
    os_release(v6);
    *(a1 + 64) = a2;
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v7, "Object", "Browser");
    xpc_dictionary_set_string(v7, "Function", "SetOptions");
    v8 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(v7, "Options", v8);
    xpc_connection_send_message(*(a1 + 216), v7);
    xpc_release(v8);
    xpc_release(v7);
    os_activity_scope_leave(&v10);
  }

  return pthread_mutex_unlock((a1 + 88));
}

void SFBrowserScheduleWithRunLoop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = browser_log(a1);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    v9 = 134218496;
    v10 = a1;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    _os_log_debug_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEBUG, "SFBrowserScheduleWithRunLoop (browser = %p, runLoop = %p, runLoopMode = %p)", &v9, 0x20u);
  }

  v8 = browser_log(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    SFBrowserScheduleWithRunLoop_cold_1();
  }
}

uint64_t SFBrowserGetRootNode(uint64_t a1)
{
  v2 = browser_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    SFBrowserGetRootNode_cold_1();
  }

  pthread_mutex_lock((a1 + 88));
  v3 = *(a1 + 208);
  pthread_mutex_unlock((a1 + 88));
  return v3;
}

const void *SFBrowserCopyChildren(uint64_t a1, const void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = browser_log(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    SFBrowserCopyChildren_cold_1();
  }

  pthread_mutex_lock((a1 + 88));
  if ((a2 || (a2 = *(a1 + 208)) != 0) && (Value = CFDictionaryGetValue(*(a1 + 32), a2)) != 0)
  {
    Mutable = CFRetain(Value);
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v7 = Mutable;
  v8 = CFCopyDescription(Mutable);
  v9 = CFEqual(*(a1 + 56), @"AirDrop");
  v10 = v9;
  v11 = browser_log(v9);
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_1A9662000, v12, OS_LOG_TYPE_DEFAULT, "%@", &v14, 0xCu);
      if (!v8)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    SFBrowserCopyChildren_cold_2();
    if (!v8)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v8)
  {
LABEL_14:
    CFRelease(v8);
  }

LABEL_15:
  pthread_mutex_unlock((a1 + 88));
  return v7;
}

const void *SFBrowserCopySidebarChildren(uint64_t a1)
{
  v2 = browser_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    SFBrowserCopySidebarChildren_cold_1();
  }

  pthread_mutex_lock((a1 + 88));
  v3 = *(a1 + 24);
  if (v3)
  {
    CFRetain(*(a1 + 24));
  }

  v4 = CFCopyDescription(v3);
  v5 = browser_log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    SFBrowserCopyChildren_cold_2();
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v4)
  {
LABEL_7:
    CFRelease(v4);
  }

LABEL_8:
  pthread_mutex_unlock((a1 + 88));
  return v3;
}

uint64_t SFBrowserOpenNode(uint64_t a1, const void *a2, const void *a3, uint64_t a4)
{
  valuePtr = a4;
  v8 = browser_log(a1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    SFBrowserOpenNode_cold_1();
  }

  pthread_mutex_lock((a1 + 88));
  if (*(a1 + 216) || (Connection = _SFBrowserCreateConnection(a1), (*(a1 + 216) = Connection) != 0))
  {
    v10 = _os_activity_create(&dword_1A9662000, "Sharing/SFBrowser/openNode", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v10, &state);
    os_release(v10);
    if (!a2)
    {
      a2 = *(a1 + 208);
    }

    v11 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v11, "Flags", a4);
    xpc_dictionary_set_string(v11, "Object", "Browser");
    xpc_dictionary_set_string(v11, "Function", "OpenNode");
    v12 = _SFNodeXPCObjectCreate(a2);
    if (v12)
    {
      v13 = v12;
      xpc_dictionary_set_value(v11, "Node", v12);
      xpc_release(v13);
    }

    if (a3)
    {
      v14 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v11, "Protocol", v14);
      xpc_release(v14);
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"Node", a2);
    v16 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
    CFDictionarySetValue(Mutable, @"Flags", v16);
    if (a3)
    {
      CFDictionarySetValue(Mutable, @"Protocol", a3);
    }

    CFDictionarySetValue(*(a1 + 48), a2, Mutable);
    xpc_connection_send_message(*(a1 + 216), v11);
    xpc_release(v11);
    CFRelease(Mutable);
    CFRelease(v16);
    os_activity_scope_leave(&state);
    v17 = 0;
  }

  else
  {
    v17 = 4294967293;
  }

  pthread_mutex_unlock((a1 + 88));
  return v17;
}

uint64_t SFBrowserAddNode(uint64_t a1, uint64_t a2)
{
  v4 = browser_log(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    SFBrowserAddNode_cold_1();
  }

  pthread_mutex_lock((a1 + 88));
  if (*(a1 + 216))
  {
    v5 = 0;
  }

  else
  {
    Connection = _SFBrowserCreateConnection(a1);
    *(a1 + 216) = Connection;
    v5 = Connection == 0;
  }

  v7 = 4294967293;
  if (a2)
  {
    if (!v5)
    {
      v8 = _SFNodeXPCObjectCreate(a2);
      if (v8)
      {
        v9 = v8;
        v10 = _os_activity_create(&dword_1A9662000, "Sharing/SFBrowser/addNode", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
        v13.opaque[0] = 0;
        v13.opaque[1] = 0;
        os_activity_scope_enter(v10, &v13);
        os_release(v10);
        v11 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_value(v11, "Node", v9);
        xpc_dictionary_set_string(v11, "Object", "Browser");
        xpc_dictionary_set_string(v11, "Function", "AddNode");
        xpc_connection_send_message(*(a1 + 216), v11);
        xpc_release(v11);
        xpc_release(v9);
        os_activity_scope_leave(&v13);
        v7 = 0;
      }
    }
  }

  _SFBrowserCancelConnectionIfNeccesary(a1);
  pthread_mutex_unlock((a1 + 88));
  return v7;
}

void _SFBrowserCancelConnectionIfNeccesary(uint64_t a1)
{
  if (*(a1 + 216))
  {
    if (!CFDictionaryGetCount(*(a1 + 48)))
    {
      v2 = *(a1 + 216);
      barrier[0] = MEMORY[0x1E69E9820];
      barrier[1] = 0x40000000;
      barrier[2] = ___SFBrowserCancelConnectionIfNeccesary_block_invoke;
      barrier[3] = &__block_descriptor_tmp_79;
      barrier[4] = v2;
      xpc_connection_send_barrier(v2, barrier);
      *(a1 + 216) = 0;
    }
  }
}

uint64_t SFBrowserRemoveNode(uint64_t a1, uint64_t a2)
{
  v4 = browser_log(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    SFBrowserRemoveNode_cold_1();
  }

  pthread_mutex_lock((a1 + 88));
  if (*(a1 + 216))
  {
    v5 = 0;
  }

  else
  {
    Connection = _SFBrowserCreateConnection(a1);
    *(a1 + 216) = Connection;
    v5 = Connection == 0;
  }

  v7 = 4294967293;
  if (a2)
  {
    if (!v5)
    {
      v8 = _SFNodeXPCObjectCreate(a2);
      if (v8)
      {
        v9 = v8;
        v10 = _os_activity_create(&dword_1A9662000, "Sharing/SFBrowser/removeNode", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
        v13.opaque[0] = 0;
        v13.opaque[1] = 0;
        os_activity_scope_enter(v10, &v13);
        os_release(v10);
        v11 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_value(v11, "Node", v9);
        xpc_dictionary_set_string(v11, "Object", "Browser");
        xpc_dictionary_set_string(v11, "Function", "RemoveNode");
        xpc_connection_send_message(*(a1 + 216), v11);
        xpc_release(v11);
        xpc_release(v9);
        os_activity_scope_leave(&v13);
        v7 = 0;
      }
    }
  }

  _SFBrowserCancelConnectionIfNeccesary(a1);
  pthread_mutex_unlock((a1 + 88));
  return v7;
}

uint64_t SFBrowserCloseNode(uint64_t a1, const void *a2)
{
  v4 = browser_log(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    SFBrowserCloseNode_cold_1();
  }

  pthread_mutex_lock((a1 + 88));
  if (*(a1 + 216))
  {
    v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFBrowser/closeNode", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11.opaque[0] = 0;
    v11.opaque[1] = 0;
    os_activity_scope_enter(v5, &v11);
    os_release(v5);
    if (!a2)
    {
      a2 = *(a1 + 208);
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v6, "Object", "Browser");
    xpc_dictionary_set_string(v6, "Function", "CloseNode");
    v7 = _SFNodeXPCObjectCreate(a2);
    if (v7)
    {
      v8 = v7;
      xpc_dictionary_set_value(v6, "Node", v7);
      xpc_release(v8);
    }

    xpc_connection_send_message(*(a1 + 216), v6);
    CFDictionaryRemoveValue(*(a1 + 32), a2);
    CFDictionaryRemoveValue(*(a1 + 48), a2);
    xpc_release(v6);
    os_activity_scope_leave(&v11);
    v9 = 0;
  }

  else
  {
    v9 = 4294967293;
  }

  _SFBrowserCancelConnectionIfNeccesary(a1);
  pthread_mutex_unlock((a1 + 88));
  return v9;
}

uint64_t SFBrowserInvalidate(uint64_t a1)
{
  v2 = browser_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    SFBrowserInvalidate_cold_1();
  }

  pthread_mutex_lock((a1 + 88));
  if (!*(a1 + 16))
  {
    *(a1 + 16) = 1;
    v3 = *(a1 + 216);
    if (v3)
    {
      barrier[0] = MEMORY[0x1E69E9820];
      barrier[1] = 0x40000000;
      barrier[2] = __SFBrowserInvalidate_block_invoke;
      barrier[3] = &__block_descriptor_tmp_61;
      barrier[4] = v3;
      xpc_connection_send_barrier(v3, barrier);
      *(a1 + 216) = 0;
    }
  }

  return pthread_mutex_unlock((a1 + 88));
}

void __SFBrowserInvalidate_block_invoke(uint64_t a1)
{
  xpc_connection_cancel(*(a1 + 32));
  v2 = *(a1 + 32);

  xpc_release(v2);
}

CFTypeRef SFBrowserCopyNodeForURL(uint64_t a1, const __CFURL *a2)
{
  v4 = browser_log(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    SFBrowserCopyNodeForURL_cold_1();
  }

  pthread_mutex_lock((a1 + 88));
  v5 = CFURLCopyScheme(a2);
  v6 = CFEqual(v5, @"nwnode");
  if (v6)
  {
    v7 = CFURLCopyHostName(a2);
    if (v7)
    {
      v8 = v7;
      HasPrefix = CFStringHasPrefix(v7, @"server-");
      v10 = CFStringHasPrefix(v8, @"domain-");
      if (HasPrefix | v10)
      {
        v11 = v10;
        v12 = CFGetAllocator(a1);
        v29.length = CFStringGetLength(v8) - 7;
        v29.location = 7;
        v13 = CFStringCreateWithSubstring(v12, v8, v29);
        if (v13)
        {
          v14 = v13;
          v15 = CFGetAllocator(a1);
          v16 = copyValuesFromDictionary(v15, *(a1 + 40));
          Count = CFArrayGetCount(v16);
          if (Count < 1)
          {
            if (!v11)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v18 = Count;
            v28 = v5;
            v19 = 1;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v16, v19 - 1);
              v21 = SFNodeCopyRealName(ValueAtIndex);
              if ((HasPrefix && (SFNodeIsServer(ValueAtIndex) || SFNodeIsSharePoint(ValueAtIndex)) || v11 && SFNodeIsNeighborhood(ValueAtIndex)) && CFEqual(v21, v14))
              {
                v22 = CFRetain(ValueAtIndex);
              }

              else
              {
                v22 = 0;
              }

              CFRelease(v21);
              if (v19 >= v18)
              {
                break;
              }

              ++v19;
            }

            while (!v22);
            v5 = v28;
            if (v22 || !v11)
            {
              goto LABEL_41;
            }
          }

          if (CFEqual(*(a1 + 56), @"Network") && CFEqual(v14, @"Network") || CFEqual(*(a1 + 56), @"AirDrop") && CFEqual(v14, @"AirDrop") || CFEqual(*(a1 + 56), @"Remote Disc") && CFEqual(v14, @"Remote Disc"))
          {
            v22 = CFRetain(*(a1 + 208));
LABEL_41:
            CFRelease(v16);
            CFRelease(v14);
            goto LABEL_42;
          }

LABEL_40:
          v22 = 0;
          goto LABEL_41;
        }

        v26 = browser_log(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          SFBrowserCopyNodeForURL_cold_3();
        }
      }

      else
      {
        v25 = browser_log(v10);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          SFBrowserCopyNodeForURL_cold_2();
        }
      }

      v22 = 0;
LABEL_42:
      CFRelease(v8);
      goto LABEL_43;
    }

    v24 = browser_log(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      SFBrowserCopyNodeForURL_cold_4();
    }
  }

  else
  {
    v23 = browser_log(v6);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      SFBrowserCopyNodeForURL_cold_5();
    }
  }

  v22 = 0;
LABEL_43:
  CFRelease(v5);
  pthread_mutex_unlock((a1 + 88));
  return v22;
}

uint64_t _SFBrowserFinalize(uint64_t a1)
{
  pthread_mutex_lock((a1 + 88));
  if (*(a1 + 168))
  {
    v2 = *(a1 + 184);
    if (v2)
    {
      v2();
    }
  }

  CFRelease(*(a1 + 56));
  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 32));
  v3 = *(a1 + 208);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    dispatch_release(v5);
  }

  pthread_mutex_unlock((a1 + 88));

  return pthread_mutex_destroy((a1 + 88));
}

BOOL _SFBrowserEqual(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 88));
  pthread_mutex_lock((a2 + 88));
  pthread_mutex_unlock((a1 + 88));
  pthread_mutex_unlock((a2 + 88));
  return a1 == a2;
}

uint64_t _SFBrowserHash(uint64_t a1)
{
  pthread_mutex_lock((a1 + 88));
  pthread_mutex_unlock((a1 + 88));
  return a1;
}

CFStringRef _SFBrowserCopyDebugDesc(uint64_t a1)
{
  pthread_mutex_lock((a1 + 88));
  v2 = CFStringCreateWithFormat(0, 0, @"<SFBrowser %p>{kind = %@}", a1, *(a1 + 56));
  pthread_mutex_unlock((a1 + 88));
  return v2;
}

__CFArray *_SFBrowserCreateChildrenFromXPCNodes(void *a1)
{
  count = xpc_array_get_count(a1);
  Mutable = CFArrayCreateMutable(0, count, MEMORY[0x1E695E9C0]);
  if (count >= 1)
  {
    for (i = 0; i != count; ++i)
    {
      value = xpc_array_get_value(a1, i);
      v6 = _SFNodeCreateWithXPCObject(0, value);
      if (v6)
      {
        v7 = v6;
        CFArrayAppendValue(Mutable, v6);
        CFRelease(v7);
      }
    }
  }

  return Mutable;
}

void _SFBrowserUpdateCachedChildrenNodes(uint64_t a1, const void *a2, const __CFArray *a3, int a4)
{
  v26 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (a3)
  {
    Count = CFArrayGetCount(a3);
    if (Count >= 1)
    {
      v10 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, v10);
        Value = CFDictionaryGetValue(*(a1 + 40), ValueAtIndex);
        if (Value)
        {
          v13 = Value;
          _SFNodeUpdateCachedChildNode(Value, ValueAtIndex);
          v14 = Mutable;
          v15 = v13;
        }

        else
        {
          CFDictionarySetValue(*(a1 + 40), ValueAtIndex, ValueAtIndex);
          v14 = Mutable;
          v15 = ValueAtIndex;
        }

        CFArrayAppendValue(v14, v15);
        ++v10;
      }

      while (Count != v10);
    }

    if (a4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    Count = 0;
    if (a4)
    {
LABEL_9:
      v16 = *(a1 + 24);
      if (v16)
      {
        CFRelease(v16);
      }

      *(a1 + 24) = Mutable;
      return;
    }
  }

  if (CFDictionaryGetCount(*(a1 + 48)) == 1)
  {
    v17 = CFDictionaryGetCount(*(a1 + 40));
    v18 = v17;
    if (Count || v17 < 2)
    {
      if (v17 >= 2001 && v17 * 0.75 > Count)
      {
        CFDictionaryRemoveAllValues(*(a1 + 40));
        v20 = browser_log(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v25[0] = 67109120;
          v25[1] = v18;
          _os_log_impl(&dword_1A9662000, v20, OS_LOG_TYPE_DEFAULT, "Compacting NetworkBrowser cache (%d)", v25, 8u);
        }

        CFDictionarySetValue(*(a1 + 40), a2, a2);
        if (a3)
        {
          v21 = CFArrayGetCount(a3);
          if (v21 >= 1)
          {
            v22 = v21;
            for (i = 0; i != v22; ++i)
            {
              v24 = CFArrayGetValueAtIndex(Mutable, i);
              CFDictionarySetValue(*(a1 + 40), v24, v24);
            }
          }
        }
      }
    }

    else
    {
      CFDictionaryRemoveAllValues(*(a1 + 40));
      CFDictionarySetValue(*(a1 + 40), a2, a2);
    }
  }

  CFDictionarySetValue(*(a1 + 32), a2, Mutable);
  CFRelease(Mutable);
}

uint64_t SFNodeGetTypeID(uint64_t a1, uint64_t a2)
{
  if (SFNodeGetTypeID::once != -1)
  {
    SFNodeGetTypeID_cold_1();
  }

  return _kSFNodeTypeID;
}

void *__SFNodeGetTypeID_block_invoke()
{
  result = malloc_type_calloc(1uLL, 0x60uLL, 0x10D00408820D60FuLL);
  _kSFNodeClass = result;
  if (result)
  {
    *result = 0;
    result[1] = "SFNode";
    result[3] = _SFNodeCopy;
    result[4] = _SFNodeFinalize;
    result[5] = _SFNodeEqual;
    result[6] = _SFNodeHash;
    result[8] = _SFNodeCopyDebugDesc;
    result = _CFRuntimeRegisterClass();
    _kSFNodeTypeID = result;
  }

  return result;
}

uint64_t SFNodeCreate(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  if (SFNodeGetTypeID::once != -1)
  {
    SFNodeGetTypeID_cold_1();
  }

  if (!_kSFNodeTypeID)
  {
    return 0;
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 112) = 0;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    operator new();
  }

  return v4;
}

uint64_t SFNodeCreateCopy(uint64_t a1, uint64_t a2)
{
  if (SFNodeGetTypeID::once != -1)
  {
    SFNodeGetTypeID_cold_1();
  }

  if (!_kSFNodeTypeID)
  {
    return 0;
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 112) = 0;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    pthread_mutex_lock((*(a2 + 112) + 464));
    operator new();
  }

  return v4;
}

uint64_t _SFNodeUpdateCachedParentNode(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  pthread_mutex_lock((*(a2 + 112) + 464));
  NetworkNode::setUserName(*(a1 + 112), *(*(a2 + 112) + 288));
  NetworkNode::setWorkgroups(*(a1 + 112), *(*(a2 + 112) + 360));
  NetworkNode::setConnectionState(*(a1 + 112), *(*(a2 + 112) + 456));
  pthread_mutex_unlock((*(a2 + 112) + 464));
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t _SFNodeUpdateCachedChildNode(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  pthread_mutex_lock((*(a2 + 112) + 464));
  NetworkNode::setDisplayName(*(a1 + 112), *(*(a2 + 112) + 88));
  NetworkNode::setRealName(*(a1 + 112), *(*(a2 + 112) + 256));
  NetworkNode::setServiceName(*(a1 + 112), *(*(a2 + 112) + 272));
  NetworkNode::setComputerName(*(a1 + 112), *(*(a2 + 112) + 72));
  NetworkNode::setServiceName(*(a1 + 112), *(*(a2 + 112) + 272));
  NetworkNode::setNetbiosName(*(a1 + 112), *(*(a2 + 112) + 192));
  NetworkNode::setHostName(*(a1 + 112), *(*(a2 + 112) + 136));
  NetworkNode::setSecondaryName(*(a1 + 112), *(*(a2 + 112) + 264));
  NetworkNode::setDomain(*(a1 + 112), *(*(a2 + 112) + 96));
  NetworkNode::setWorkgroup(*(a1 + 112), *(*(a2 + 112) + 296));
  NetworkNode::setPath(*(a1 + 112), *(*(a2 + 112) + 232));
  NetworkNode::setModel(*(a1 + 112), *(*(a2 + 112) + 176));
  NetworkNode::setModelIdentifier(*(a1 + 112), *(*(a2 + 112) + 184));
  NetworkNode::setIDSDeviceIdentifier(*(a1 + 112), *(*(a2 + 112) + 152));
  NetworkNode::setColor(*(a1 + 112), *(*(a2 + 112) + 304));
  NetworkNode::setSiblingNodes(*(a1 + 112), *(*(a2 + 112) + 320));
  NetworkNode::setIconHash(*(a1 + 112), *(*(a2 + 112) + 144));
  NetworkNode::setPassword(*(a1 + 112), *(*(a2 + 112) + 224));
  NetworkNode::setContactIdentifier(*(a1 + 112), *(*(a2 + 112) + 240));
  NetworkNode::setContactIdentifiers(*(a1 + 112), *(*(a2 + 112) + 248));
  NetworkNode::setNickName(*(a1 + 112), *(*(a2 + 112) + 120));
  NetworkNode::setFirstName(*(a1 + 112), *(*(a2 + 112) + 128));
  NetworkNode::setLastName(*(a1 + 112), *(*(a2 + 112) + 168));
  NetworkNode::setAppleID(*(a1 + 112), *(*(a2 + 112) + 64));
  NetworkNode::setTransportBundleID(*(a1 + 112), *(*(a2 + 112) + 216));
  NetworkNode::setHandles(*(a1 + 112), *(*(a2 + 112) + 352));
  NetworkNode::setEmailHash(*(a1 + 112), *(*(a2 + 112) + 104));
  NetworkNode::setPhoneHash(*(a1 + 112), *(*(a2 + 112) + 112));
  NetworkNode::setDiskType(*(a1 + 112), *(*(a2 + 112) + 80));
  NetworkNode::setParentIdentifier(*(a1 + 112), *(*(a2 + 112) + 200));
  NetworkNode::setIconData(*(a1 + 112), *(*(a2 + 112) + 16));
  NetworkNode::setMediaCapabilities(*(a1 + 112), *(*(a2 + 112) + 24));
  NetworkNode::setFlags(*(a1 + 112), *(*(a2 + 112) + 32));
  NetworkNode::setRapportFlags(*(a1 + 112), *(*(a2 + 112) + 40));
  NetworkNode::setAccessRights(*(a1 + 112), *(*(a2 + 112) + 48));
  NetworkNode::setRangingData(*(a1 + 112), *(*(a2 + 112) + 56));
  NetworkNode::setURL(*(a1 + 112), **(a2 + 112));
  NetworkNode::setURLs(*(a1 + 112), *(*(a2 + 112) + 384));
  NetworkNode::setMountPoint(*(a1 + 112), *(*(a2 + 112) + 8));
  NetworkNode::setPortNumber(*(a1 + 112), *(*(a2 + 112) + 424));
  NetworkNode::setSelectionReason(*(a1 + 112), *(*(a2 + 112) + 432));
  NetworkNode::setSharePointBrowserID(*(a1 + 112), *(*(a2 + 112) + 208));
  NetworkNode::setSupportedMedia(*(a1 + 112), *(*(a2 + 112) + 448));
  NetworkNode::setDomains(*(a1 + 112), *(*(a2 + 112) + 344));
  NetworkNode::setKinds(*(a1 + 112), *(*(a2 + 112) + 336));
  NetworkNode::setBonjourProtocols(*(a1 + 112), *(*(a2 + 112) + 376));
  pthread_mutex_unlock((*(a2 + 112) + 464));
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t _SFNodeCreateWithXPCObject(uint64_t a1, void *a2)
{
  v4 = xpcDictionaryCopyCFStringForKey(a2, "RealName");
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = xpcDictionaryCopyCFStringForKey(a2, "DisplayName");
  if (!v6)
  {
    CFRelease(v5);
    return 0;
  }

  v7 = v6;
  v8 = SFNodeCreate(a1, v6, v5);
  CFRelease(v7);
  CFRelease(v5);
  if (v8)
  {
    v9 = xpcDictionaryCopyCFStringForKey(a2, "ComputerName");
    if (v9)
    {
      v10 = v9;
      NetworkNode::setComputerName(*(v8 + 112), v9);
      CFRelease(v10);
    }

    v11 = xpcDictionaryCopyCFStringForKey(a2, "ServiceName");
    if (v11)
    {
      v12 = v11;
      NetworkNode::setServiceName(*(v8 + 112), v11);
      CFRelease(v12);
    }

    v13 = xpcDictionaryCopyCFStringForKey(a2, "NetbiosName");
    if (v13)
    {
      v14 = v13;
      NetworkNode::setNetbiosName(*(v8 + 112), v13);
      CFRelease(v14);
    }

    v15 = xpcDictionaryCopyCFStringForKey(a2, "HostName");
    if (v15)
    {
      v16 = v15;
      NetworkNode::setHostName(*(v8 + 112), v15);
      CFRelease(v16);
    }

    v17 = xpcDictionaryCopyCFStringForKey(a2, "Comment");
    if (v17)
    {
      v18 = v17;
      NetworkNode::setSecondaryName(*(v8 + 112), v17);
      CFRelease(v18);
    }

    v19 = xpcDictionaryCopyCFStringForKey(a2, "Domain");
    if (v19)
    {
      v20 = v19;
      NetworkNode::setDomain(*(v8 + 112), v19);
      CFRelease(v20);
    }

    v21 = xpcDictionaryCopyCFStringForKey(a2, "Workgroup");
    if (v21)
    {
      v22 = v21;
      NetworkNode::setWorkgroup(*(v8 + 112), v21);
      CFRelease(v22);
    }

    v23 = xpcDictionaryCopyCFStringForKey(a2, "Path");
    if (v23)
    {
      v24 = v23;
      NetworkNode::setPath(*(v8 + 112), v23);
      CFRelease(v24);
    }

    v25 = xpcDictionaryCopyCFStringForKey(a2, "Model");
    if (v25)
    {
      v26 = v25;
      NetworkNode::setModel(*(v8 + 112), v25);
      CFRelease(v26);
    }

    v27 = xpcDictionaryCopyCFStringForKey(a2, "ModelIdentifier");
    if (v27)
    {
      v28 = v27;
      NetworkNode::setModelIdentifier(*(v8 + 112), v27);
      CFRelease(v28);
    }

    v29 = xpcDictionaryCopyCFStringForKey(a2, "IDSDeviceIdentifier");
    if (v29)
    {
      v30 = v29;
      NetworkNode::setIDSDeviceIdentifier(*(v8 + 112), v29);
      CFRelease(v30);
    }

    v31 = xpcDictionaryCopyCFStringForKey(a2, "IconHash");
    if (v31)
    {
      v32 = v31;
      NetworkNode::setIconHash(*(v8 + 112), v31);
      CFRelease(v32);
    }

    v33 = xpcDictionaryCopyCFStringForKey(a2, "ContactIdentifier");
    if (v33)
    {
      v34 = v33;
      NetworkNode::setContactIdentifier(*(v8 + 112), v33);
      CFRelease(v34);
    }

    v35 = xpcDictionaryCopyCFArrayForKey(a2, "ContactIdentifiers");
    if (v35)
    {
      v36 = v35;
      SetFromArray = createSetFromArray(0, v35);
      if (SetFromArray)
      {
        v38 = SetFromArray;
        NetworkNode::setContactIdentifiers(*(v8 + 112), SetFromArray);
        CFRelease(v38);
      }

      CFRelease(v36);
    }

    v39 = xpcDictionaryCopyCFStringForKey(a2, "UserName");
    if (v39)
    {
      v40 = v39;
      NetworkNode::setUserName(*(v8 + 112), v39);
      CFRelease(v40);
    }

    v41 = xpcDictionaryCopyCFStringForKey(a2, "Password");
    if (v41)
    {
      v42 = v41;
      NetworkNode::setPassword(*(v8 + 112), v41);
      CFRelease(v42);
    }

    v43 = xpcDictionaryCopyCFStringForKey(a2, "NickName");
    if (v43)
    {
      v44 = v43;
      NetworkNode::setNickName(*(v8 + 112), v43);
      CFRelease(v44);
    }

    v45 = xpcDictionaryCopyCFStringForKey(a2, "FirstName");
    if (v45)
    {
      v46 = v45;
      NetworkNode::setFirstName(*(v8 + 112), v45);
      CFRelease(v46);
    }

    v47 = xpcDictionaryCopyCFStringForKey(a2, "LastName");
    if (v47)
    {
      v48 = v47;
      NetworkNode::setLastName(*(v8 + 112), v47);
      CFRelease(v48);
    }

    v49 = xpcDictionaryCopyCFStringForKey(a2, "AppleID");
    if (v49)
    {
      v50 = v49;
      NetworkNode::setAppleID(*(v8 + 112), v49);
      CFRelease(v50);
    }

    v51 = xpcDictionaryCopyCFStringForKey(a2, "EmailHash");
    if (v51)
    {
      v52 = v51;
      NetworkNode::setEmailHash(*(v8 + 112), v51);
      CFRelease(v52);
    }

    v53 = xpcDictionaryCopyCFStringForKey(a2, "PhoneHash");
    if (v53)
    {
      v54 = v53;
      NetworkNode::setPhoneHash(*(v8 + 112), v53);
      CFRelease(v54);
    }

    v55 = xpcDictionaryCopyCFStringForKey(a2, "ParentIdentifier");
    if (v55)
    {
      v56 = v55;
      NetworkNode::setParentIdentifier(*(v8 + 112), v55);
      CFRelease(v56);
    }

    v57 = xpcDictionaryCopyCFStringForKey(a2, "DiskType");
    if (v57)
    {
      v58 = v57;
      NetworkNode::setDiskType(*(v8 + 112), v57);
      CFRelease(v58);
    }

    v59 = xpcDictionaryCopyCFStringForKey(a2, "SharePointBrowserID");
    if (v59)
    {
      v60 = v59;
      NetworkNode::setSharePointBrowserID(*(v8 + 112), v59);
      CFRelease(v60);
    }

    v61 = xpcDictionaryCopyCFStringForKey(a2, "TransportBundleID");
    if (v61)
    {
      v62 = v61;
      NetworkNode::setTransportBundleID(*(v8 + 112), v61);
      CFRelease(v62);
    }

    v63 = xpcDictionaryCopyCFDataForKey(a2, "IconData");
    if (v63)
    {
      v64 = v63;
      NetworkNode::setIconData(*(v8 + 112), v63);
      CFRelease(v64);
    }

    v65 = xpcDictionaryCopyCFDataForKey(a2, "MediaCapabilities");
    if (v65)
    {
      v66 = v65;
      NetworkNode::setMediaCapabilities(*(v8 + 112), v65);
      CFRelease(v66);
    }

    v67 = xpcDictionaryCopyCFNumberForKey(a2, "Flags");
    if (v67)
    {
      v68 = v67;
      NetworkNode::setFlags(*(v8 + 112), v67);
      CFRelease(v68);
    }

    v69 = xpcDictionaryCopyCFNumberForKey(a2, "RapportFlags");
    if (v69)
    {
      v70 = v69;
      NetworkNode::setRapportFlags(*(v8 + 112), v69);
      CFRelease(v70);
    }

    v71 = xpcDictionaryCopyCFNumberForKey(a2, "AccessRights");
    if (v71)
    {
      v72 = v71;
      NetworkNode::setAccessRights(*(v8 + 112), v71);
      CFRelease(v72);
    }

    v73 = xpcDictionaryCopyCFDataForKey(a2, "RangingData");
    if (v73)
    {
      v74 = v73;
      NetworkNode::setRangingData(*(v8 + 112), v73);
      CFRelease(v74);
    }

    v75 = xpcDictionaryCopyCFURLForKey(a2, "URL");
    if (v75)
    {
      v76 = v75;
      NetworkNode::setURL(*(v8 + 112), v75);
      CFRelease(v76);
    }

    v77 = xpcDictionaryCopyCFURLForKey(a2, "MountPoint");
    if (v77)
    {
      v78 = v77;
      NetworkNode::setMountPoint(*(v8 + 112), v77);
      CFRelease(v78);
    }

    v79 = MEMORY[0x1AC58D590](a2);
    if (v79 == MEMORY[0x1E69E9E80])
    {
      if (xpc_dictionary_get_value(a2, "URLs"))
      {
        v109 = _CFXPCCreateCFObjectFromXPCObject();
        if (v109)
        {
          v110 = v109;
          v111 = CFGetTypeID(v109);
          TypeID = CFDictionaryGetTypeID();
          if (v111 == TypeID)
          {
            NetworkNode::setURLs(*(v8 + 112), v110);
          }

          else
          {
            v113 = framework_log(TypeID);
            if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
            {
              _SFNodeCreateWithXPCObject_cold_2();
            }
          }

          CFRelease(v110);
        }
      }
    }

    else
    {
      v80 = framework_log(v79);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        _SFNodeCreateWithXPCObject_cold_1();
      }
    }

    v81 = xpcDictionaryCopyCFArrayForKey(a2, "Domains");
    if (v81)
    {
      v82 = v81;
      v83 = createSetFromArray(0, v81);
      if (v83)
      {
        v84 = v83;
        NetworkNode::setDomains(*(v8 + 112), v83);
        CFRelease(v84);
      }

      CFRelease(v82);
    }

    v85 = xpcDictionaryCopyCFArrayForKey(a2, "Workgroups");
    if (v85)
    {
      v86 = v85;
      v87 = createSetFromArray(0, v85);
      if (v87)
      {
        v88 = v87;
        NetworkNode::setWorkgroups(*(v8 + 112), v87);
        CFRelease(v88);
      }

      CFRelease(v86);
    }

    v89 = xpcDictionaryCopyCFArrayForKey(a2, "Handles");
    if (v89)
    {
      v90 = v89;
      v91 = createSetFromArray(0, v89);
      if (v91)
      {
        v92 = v91;
        NetworkNode::setHandles(*(v8 + 112), v91);
        CFRelease(v92);
      }

      CFRelease(v90);
    }

    v93 = xpcDictionaryCopyCFArrayForKey(a2, "BonjourProtocols");
    if (v93)
    {
      v94 = v93;
      BagFromArray = createBagFromArray(0, v93);
      if (BagFromArray)
      {
        v96 = BagFromArray;
        NetworkNode::setBonjourProtocols(*(v8 + 112), BagFromArray);
        CFRelease(v96);
      }

      CFRelease(v94);
    }

    v97 = xpcDictionaryCopyCFArrayForKey(a2, "Color");
    if (v97)
    {
      v98 = v97;
      NetworkNode::setColor(*(v8 + 112), v97);
      CFRelease(v98);
    }

    value = xpc_dictionary_get_value(a2, "SiblingNodes");
    if (value)
    {
      SFNodeArrayForXPCArray = createSFNodeArrayForXPCArray(value);
      NetworkNode::setSiblingNodes(*(v8 + 112), SFNodeArrayForXPCArray);
      CFRelease(SFNodeArrayForXPCArray);
    }

    v101 = xpc_dictionary_get_value(a2, "Kinds");
    SFNodeKindsFromXPCArray = createSFNodeKindsFromXPCArray(0, v101);
    if (SFNodeKindsFromXPCArray)
    {
      v103 = SFNodeKindsFromXPCArray;
      NetworkNode::setKinds(*(v8 + 112), SFNodeKindsFromXPCArray);
      CFRelease(v103);
    }

    int64 = xpc_dictionary_get_int64(a2, "ConnectionState");
    NetworkNode::setConnectionState(*(v8 + 112), int64);
    v105 = xpc_dictionary_get_int64(a2, "PortNumber");
    if (v105)
    {
      NetworkNode::setPortNumber(*(v8 + 112), v105);
    }

    v106 = xpc_dictionary_get_int64(a2, "SelectionReason");
    NetworkNode::setSelectionReason(*(v8 + 112), v106);
    uint64 = xpc_dictionary_get_uint64(a2, "SupportedMedia");
    if (uint64)
    {
      NetworkNode::setSupportedMedia(*(v8 + 112), uint64);
    }
  }

  return v8;
}

const void *xpcDictionaryCopyCFStringForKey(void *a1, const char *a2)
{
  v4 = MEMORY[0x1AC58D590]();
  if (v4 != MEMORY[0x1E69E9E80])
  {
    v5 = framework_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      xpcDictionaryCopyCFStringForKey();
    }

    return 0;
  }

  if (!xpc_dictionary_get_value(a1, a2))
  {
    return 0;
  }

  v8 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = v8;
  if (v8)
  {
    v9 = CFGetTypeID(v8);
    TypeID = CFStringGetTypeID();
    if (v9 != TypeID)
    {
      v11 = framework_log(TypeID);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        xpcDictionaryCopyCFStringForKey();
      }

      CFRelease(v6);
      return 0;
    }
  }

  return v6;
}

const void *xpcDictionaryCopyCFArrayForKey(void *a1, const char *a2)
{
  v4 = MEMORY[0x1AC58D590]();
  if (v4 != MEMORY[0x1E69E9E80])
  {
    v5 = framework_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      xpcDictionaryCopyCFArrayForKey();
    }

    return 0;
  }

  if (!xpc_dictionary_get_value(a1, a2))
  {
    return 0;
  }

  v8 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = v8;
  if (v8)
  {
    v9 = CFGetTypeID(v8);
    TypeID = CFArrayGetTypeID();
    if (v9 != TypeID)
    {
      v11 = framework_log(TypeID);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        xpcDictionaryCopyCFArrayForKey();
      }

      CFRelease(v6);
      return 0;
    }
  }

  return v6;
}

const void *xpcDictionaryCopyCFDataForKey(void *a1, const char *a2)
{
  v4 = MEMORY[0x1AC58D590]();
  if (v4 != MEMORY[0x1E69E9E80])
  {
    v5 = framework_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      xpcDictionaryCopyCFDataForKey();
    }

    return 0;
  }

  if (!xpc_dictionary_get_value(a1, a2))
  {
    return 0;
  }

  v8 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = v8;
  if (v8)
  {
    v9 = CFGetTypeID(v8);
    TypeID = CFDataGetTypeID();
    if (v9 != TypeID)
    {
      v11 = framework_log(TypeID);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        xpcDictionaryCopyCFDataForKey();
      }

      CFRelease(v6);
      return 0;
    }
  }

  return v6;
}

const void *xpcDictionaryCopyCFNumberForKey(void *a1, const char *a2)
{
  v4 = MEMORY[0x1AC58D590]();
  if (v4 != MEMORY[0x1E69E9E80])
  {
    v5 = framework_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      xpcDictionaryCopyCFNumberForKey();
    }

    return 0;
  }

  if (!xpc_dictionary_get_value(a1, a2))
  {
    return 0;
  }

  v8 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = v8;
  if (v8)
  {
    v9 = CFGetTypeID(v8);
    TypeID = CFNumberGetTypeID();
    if (v9 != TypeID)
    {
      v11 = framework_log(TypeID);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        xpcDictionaryCopyCFNumberForKey();
      }

      CFRelease(v6);
      return 0;
    }
  }

  return v6;
}

const void *xpcDictionaryCopyCFURLForKey(void *a1, const char *a2)
{
  v4 = MEMORY[0x1AC58D590]();
  if (v4 != MEMORY[0x1E69E9E80])
  {
    v5 = framework_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      xpcDictionaryCopyCFURLForKey();
    }

    return 0;
  }

  if (!xpc_dictionary_get_value(a1, a2))
  {
    return 0;
  }

  v8 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = v8;
  if (v8)
  {
    v9 = CFGetTypeID(v8);
    v10 = CFURLGetTypeID();
    if (v9 != v10)
    {
      v11 = framework_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        xpcDictionaryCopyCFURLForKey();
      }

      CFRelease(v6);
      return 0;
    }
  }

  return v6;
}

__CFArray *createSFNodeArrayForXPCArray(void *a1)
{
  count = xpc_array_get_count(a1);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (count >= 1)
  {
    for (i = 0; i != count; ++i)
    {
      value = xpc_array_get_value(a1, i);
      v6 = _SFNodeCreateWithXPCObject(0, value);
      if (v6)
      {
        v7 = v6;
        CFArrayAppendValue(Mutable, v6);
        CFRelease(v7);
      }
    }
  }

  return Mutable;
}

xpc_object_t createXPCArrayForSFNodeArray(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  v3 = xpc_array_create(0, 0);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v6 = _SFNodeXPCObjectCreate(ValueAtIndex);
      if (v6)
      {
        v7 = v6;
        xpc_array_append_value(v3, v6);
        xpc_release(v7);
      }
    }
  }

  return v3;
}

xpc_object_t _SFNodeXPCObjectCreate(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  pthread_mutex_lock((*(a1 + 112) + 464));
  setValueForKeyInXPCDictionary(v2, "AccessRights", *(*(a1 + 112) + 48));
  setValueForKeyInXPCDictionary(v2, "RangingData", *(*(a1 + 112) + 56));
  setValueForKeyInXPCDictionary(v2, "AppleID", *(*(a1 + 112) + 64));
  setValueForKeyInXPCDictionary(v2, "BonjourProtocols", *(*(a1 + 112) + 376));
  setValueForKeyInXPCDictionary(v2, "ComputerName", *(*(a1 + 112) + 72));
  setValueForKeyInXPCDictionary(v2, "DiskType", *(*(a1 + 112) + 80));
  setValueForKeyInXPCDictionary(v2, "DisplayName", *(*(a1 + 112) + 88));
  setValueForKeyInXPCDictionary(v2, "Domain", *(*(a1 + 112) + 96));
  setValueForKeyInXPCDictionary(v2, "Domains", *(*(a1 + 112) + 344));
  setValueForKeyInXPCDictionary(v2, "EmailHash", *(*(a1 + 112) + 104));
  setValueForKeyInXPCDictionary(v2, "PhoneHash", *(*(a1 + 112) + 112));
  setValueForKeyInXPCDictionary(v2, "ContactIdentifier", *(*(a1 + 112) + 240));
  setValueForKeyInXPCDictionary(v2, "ContactIdentifiers", *(*(a1 + 112) + 248));
  setValueForKeyInXPCDictionary(v2, "NickName", *(*(a1 + 112) + 120));
  setValueForKeyInXPCDictionary(v2, "FirstName", *(*(a1 + 112) + 128));
  setValueForKeyInXPCDictionary(v2, "Flags", *(*(a1 + 112) + 32));
  setValueForKeyInXPCDictionary(v2, "RapportFlags", *(*(a1 + 112) + 40));
  setValueForKeyInXPCDictionary(v2, "HostName", *(*(a1 + 112) + 136));
  setValueForKeyInXPCDictionary(v2, "IconData", *(*(a1 + 112) + 16));
  setValueForKeyInXPCDictionary(v2, "MediaCapabilities", *(*(a1 + 112) + 24));
  setValueForKeyInXPCDictionary(v2, "IconHash", *(*(a1 + 112) + 144));
  setValueForKeyInXPCDictionary(v2, "LastName", *(*(a1 + 112) + 168));
  setValueForKeyInXPCDictionary(v2, "Model", *(*(a1 + 112) + 176));
  setValueForKeyInXPCDictionary(v2, "ModelIdentifier", *(*(a1 + 112) + 184));
  setValueForKeyInXPCDictionary(v2, "IDSDeviceIdentifier", *(*(a1 + 112) + 152));
  setValueForKeyInXPCDictionary(v2, "Color", *(*(a1 + 112) + 304));
  setValueForKeyInXPCDictionary(v2, "TransportBundleID", *(*(a1 + 112) + 216));
  setValueForKeyInXPCDictionary(v2, "Handles", *(*(a1 + 112) + 352));
  v3 = *(a1 + 112);
  v4 = *(v3 + 320);
  if (v4)
  {
    XPCArrayForSFNodeArray = createXPCArrayForSFNodeArray(v4);
    xpc_dictionary_set_value(v2, "SiblingNodes", XPCArrayForSFNodeArray);
    xpc_release(XPCArrayForSFNodeArray);
    v3 = *(a1 + 112);
  }

  setValueForKeyInXPCDictionary(v2, "MountPoint", *(v3 + 8));
  setValueForKeyInXPCDictionary(v2, "NetbiosName", *(*(a1 + 112) + 192));
  setValueForKeyInXPCDictionary(v2, "ParentIdentifier", *(*(a1 + 112) + 200));
  setValueForKeyInXPCDictionary(v2, "Password", *(*(a1 + 112) + 224));
  setValueForKeyInXPCDictionary(v2, "Path", *(*(a1 + 112) + 232));
  setValueForKeyInXPCDictionary(v2, "RealName", *(*(a1 + 112) + 256));
  setValueForKeyInXPCDictionary(v2, "Comment", *(*(a1 + 112) + 264));
  setValueForKeyInXPCDictionary(v2, "ServiceName", *(*(a1 + 112) + 272));
  setValueForKeyInXPCDictionary(v2, "SharePointBrowserID", *(*(a1 + 112) + 208));
  setValueForKeyInXPCDictionary(v2, "URL", **(a1 + 112));
  setValueForKeyInXPCDictionary(v2, "URLs", *(*(a1 + 112) + 384));
  setValueForKeyInXPCDictionary(v2, "UserName", *(*(a1 + 112) + 288));
  setValueForKeyInXPCDictionary(v2, "Workgroup", *(*(a1 + 112) + 296));
  setValueForKeyInXPCDictionary(v2, "Workgroups", *(*(a1 + 112) + 360));
  xpc_dictionary_set_int64(v2, "PortNumber", *(*(a1 + 112) + 424));
  xpc_dictionary_set_int64(v2, "SelectionReason", *(*(a1 + 112) + 432));
  xpc_dictionary_set_uint64(v2, "SupportedMedia", *(*(a1 + 112) + 448));
  xpc_dictionary_set_int64(v2, "ConnectionState", *(*(a1 + 112) + 456));
  XPCArrayFromSFNodeKinds = createXPCArrayFromSFNodeKinds(*(*(a1 + 112) + 336));
  if (XPCArrayFromSFNodeKinds)
  {
    v7 = XPCArrayFromSFNodeKinds;
    xpc_dictionary_set_value(v2, "Kinds", XPCArrayFromSFNodeKinds);
    xpc_release(v7);
  }

  pthread_mutex_unlock((*(a1 + 112) + 464));
  return v2;
}

void setValueForKeyInXPCDictionary(void *a1, const char *a2, CFTypeRef cf)
{
  if (!cf)
  {
    return;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFSetGetTypeID())
  {
    v7 = copyValuesFromSet(0, cf);
    if (!v7)
    {
      return;
    }

    v8 = v7;
    setSupportedCFTypeForKeyInXPCDictionary(a1, a2, v7);
LABEL_9:

    CFRelease(v8);
    return;
  }

  if (v6 == CFBagGetTypeID())
  {
    MutableSetFromBag = createMutableSetFromBag(0, 0, cf);
    if (!MutableSetFromBag)
    {
      return;
    }

    v8 = MutableSetFromBag;
    v10 = copyValuesFromSet(0, MutableSetFromBag);
    if (v10)
    {
      v11 = v10;
      setSupportedCFTypeForKeyInXPCDictionary(a1, a2, v10);
      CFRelease(v11);
    }

    goto LABEL_9;
  }

  setSupportedCFTypeForKeyInXPCDictionary(a1, a2, cf);
}

uint64_t SFNodeResolve(uint64_t a1, const void *a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, __int128 *a7)
{
  v10 = NetworkNode::resolve(*(a1 + 112), a2, a3, a4, a5, _SFNodeResolveCallBack, a1);
  if (!v10)
  {
    if (*(a1 + 40))
    {
      v12 = *(a1 + 56);
      if (v12)
      {
        v12();
      }
    }

    *(a1 + 16) = a6;
    v13 = *a7;
    v14 = a7[1];
    *(a1 + 64) = *(a7 + 4);
    *(a1 + 32) = v13;
    *(a1 + 48) = v14;
    if (*(a1 + 40))
    {
      v15 = *(a1 + 48);
      if (v15)
      {
        v15();
      }
    }
  }

  return v10;
}

uint64_t _SFNodeResolveCallBack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (v5)
  {
    return v5(a5, a2, a3, a4, *(a5 + 40));
  }

  return result;
}

uint64_t SFNodeEject(uint64_t a1, const void *a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, __int128 *a7)
{
  v10 = NetworkNode::eject(*(a1 + 112), a2, a3, a4, a5, _SFNodeEjectCallBack, a1);
  if (!v10)
  {
    if (*(a1 + 80))
    {
      v12 = *(a1 + 96);
      if (v12)
      {
        v12();
      }
    }

    *(a1 + 24) = a6;
    v13 = *a7;
    v14 = a7[1];
    *(a1 + 104) = *(a7 + 4);
    *(a1 + 88) = v14;
    *(a1 + 72) = v13;
    if (*(a1 + 80))
    {
      v15 = *(a1 + 88);
      if (v15)
      {
        v15();
      }
    }
  }

  return v10;
}

uint64_t _SFNodeEjectCallBack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 24);
  if (v5)
  {
    return v5(a5, a2, a3, a4, *(a5 + 80));
  }

  return result;
}

uint64_t SFNodeSetDisplayName(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setDisplayName(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetRealName(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setRealName(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetContactIdentifier(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setContactIdentifier(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetContactIdentifiers(uint64_t a1, const __CFSet *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setContactIdentifiers(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetMediaCapabilities(uint64_t a1, const __CFData *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setMediaCapabilities(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetModel(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setModel(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetModelIdentifier(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setModelIdentifier(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetColor(uint64_t a1, const __CFArray *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setColor(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetSiblingNodes(uint64_t a1, const __CFArray *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setSiblingNodes(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetParentIdentifier(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setParentIdentifier(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetDiskType(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setDiskType(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetServiceName(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setServiceName(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetNetbiosName(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setNetbiosName(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetSecondaryName(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setSecondaryName(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetDomain(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setDomain(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeAddDomain(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::addDomain(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeRemoveDomain(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::removeDomain(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetWorkgroup(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setWorkgroup(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetWorkgroups(uint64_t a1, const __CFSet *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setWorkgroups(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeAddWorkgroup(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::addWorkgroup(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeRemoveWorkgroup(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::removeWorkgroup(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeAddKind(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::addKind(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetKinds(uint64_t a1, const __CFSet *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setKinds(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeRemoveKind(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::removeKind(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeAddBonjourProtocol(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::addBonjourProtocol(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeRemoveBonjourProtocol(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::removeBonjourProtocol(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetBonjourProtocols(uint64_t a1, const __CFBag *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setBonjourProtocols(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetHostName(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setHostName(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetComputerName(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setComputerName(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetPortNumber(uint64_t a1, int a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setPortNumber(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetSelectionReason(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setSelectionReason(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetAccessRights(uint64_t a1, const void *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setAccessRights(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetRangingData(uint64_t a1, const void *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setRangingData(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetPath(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setPath(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetURL(uint64_t a1, const __CFURL *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setURL(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetUserName(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setUserName(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetPassword(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setPassword(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetFlags(uint64_t a1, const void *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setFlags(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetRapportFlags(uint64_t a1, const void *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setRapportFlags(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetAppleID(uint64_t a1, const void *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setAppleID(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetTransportBundleID(uint64_t a1, const void *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setTransportBundleID(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetHandles(uint64_t a1, const __CFSet *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setHandles(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetSupportedMedia(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setSupportedMedia(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetConnectionState(uint64_t a1, int a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setConnectionState(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetMountPoint(uint64_t a1, const void *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setMountPoint(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetSharePointBrowserID(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setSharePointBrowserID(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetIconData(uint64_t a1, const __CFData *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setIconData(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetIconHash(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setIconHash(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetEmailHash(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setEmailHash(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetPhoneHash(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setPhoneHash(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetNickName(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setNickName(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetFirstName(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setFirstName(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetLastName(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setLastName(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeSetIDSDeviceIdentifier(uint64_t a1, const __CFString *a2)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  NetworkNode::setIDSDeviceIdentifier(*(a1 + 112), a2);
  v4 = (*(a1 + 112) + 464);

  return pthread_mutex_unlock(v4);
}

uint64_t SFNodeIsRoot(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  isRoot = NetworkNode::isRoot(*(a1 + 112));
  pthread_mutex_unlock((*(a1 + 112) + 464));
  return isRoot;
}

BOOL SFNodeIsNeighborhood(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  isNeighborhood = NetworkNode::isNeighborhood(*(a1 + 112));
  pthread_mutex_unlock((*(a1 + 112) + 464));
  return isNeighborhood;
}

BOOL SFNodeIsServer(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  isServer = NetworkNode::isServer(*(a1 + 112));
  pthread_mutex_unlock((*(a1 + 112) + 464));
  return isServer;
}

BOOL SFNodeIsSharePoint(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  isSharePoint = NetworkNode::isSharePoint(*(a1 + 112));
  pthread_mutex_unlock((*(a1 + 112) + 464));
  return isSharePoint;
}

BOOL SFNodeIsContainer(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  isContainer = NetworkNode::isContainer(*(a1 + 112));
  pthread_mutex_unlock((*(a1 + 112) + 464));
  return isContainer;
}

BOOL SFNodeIsMounted(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  isMounted = NetworkNode::isMounted(*(a1 + 112));
  pthread_mutex_unlock((*(a1 + 112) + 464));
  return isMounted;
}

const __CFNumber *SFNodeIsDropBox(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  v2 = NetworkNode::isDropBox(*(a1 + 112));
  pthread_mutex_unlock((*(a1 + 112) + 464));
  return v2;
}

uint64_t SFNodeIsRemovable(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  isRemovable = NetworkNode::isRemovable(*(a1 + 112));
  pthread_mutex_unlock((*(a1 + 112) + 464));
  return isRemovable;
}

CFIndex SFNodeSupportsFileSharing(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  v2 = NetworkNode::supportsFileSharing(*(a1 + 112));
  pthread_mutex_unlock((*(a1 + 112) + 464));
  return v2;
}

uint64_t SFNodeSupportsScreenSharing(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  v2 = NetworkNode::supportsScreenSharing(*(a1 + 112));
  pthread_mutex_unlock((*(a1 + 112) + 464));
  return v2;
}

const __CFNumber *SFNodeSupportsAskToUse(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  v2 = NetworkNode::supportsAskToUse(*(a1 + 112));
  pthread_mutex_unlock((*(a1 + 112) + 464));
  return v2;
}

const __CFNumber *SFNodeSupportsPasses(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  v2 = NetworkNode::supportsPasses(*(a1 + 112));
  pthread_mutex_unlock((*(a1 + 112) + 464));
  return v2;
}

BOOL SFNodeSupportsFMF(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  v2 = NetworkNode::supportsFMF(*(a1 + 112));
  pthread_mutex_unlock((*(a1 + 112) + 464));
  return v2;
}

const __CFNumber *SFNodeSupportsUWB(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  v2 = NetworkNode::supportsUWB(*(a1 + 112));
  pthread_mutex_unlock((*(a1 + 112) + 464));
  return v2;
}

BOOL SFNodeSupportsIris(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  v2 = NetworkNode::supportsIris(*(a1 + 112));
  pthread_mutex_unlock((*(a1 + 112) + 464));
  return v2;
}

const __CFNumber *SFNodeSupportsMixedTypes(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  v2 = NetworkNode::supportsMixedTypes(*(a1 + 112));
  pthread_mutex_unlock((*(a1 + 112) + 464));
  return v2;
}

const __CFNumber *SFNodeSupportsCredentials(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  v2 = NetworkNode::supportsCredentials(*(a1 + 112));
  pthread_mutex_unlock((*(a1 + 112) + 464));
  return v2;
}

BOOL SFNodeCanAcceptDrop(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  canAcceptDrop = NetworkNode::canAcceptDrop(*(a1 + 112));
  pthread_mutex_unlock((*(a1 + 112) + 464));
  return canAcceptDrop;
}

uint64_t SFNodeGetConnectionState(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  v2 = *(a1 + 112);
  v3 = *(v2 + 456);
  pthread_mutex_unlock((v2 + 464));
  return v3;
}

uint64_t SFNodeGetDisplayName(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  v2 = *(a1 + 112);
  v3 = *(v2 + 88);
  pthread_mutex_unlock((v2 + 464));
  return v3;
}

uint64_t SFNodeGetPriority(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  Priority = NetworkNode::getPriority(*(a1 + 112));
  pthread_mutex_unlock((*(a1 + 112) + 464));
  return Priority;
}

uint64_t SFNodeGetPortNumber(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  v2 = *(a1 + 112);
  v3 = *(v2 + 424);
  pthread_mutex_unlock((v2 + 464));
  return v3;
}

uint64_t SFNodeGetSelectionReason(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  v2 = *(a1 + 112);
  v3 = *(v2 + 432);
  pthread_mutex_unlock((v2 + 464));
  return v3;
}

uint64_t SFNodeGetSupportedMedia(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 112) + 464));
  v2 = *(a1 + 112);
  v3 = *(v2 + 448);
  pthread_mutex_unlock((v2 + 464));
  return v3;
}

NetworkNode *_SFNodeFinalize(__SFNode *a1)
{
  pthread_mutex_lock((*(a1 + 14) + 464));
  if (*(a1 + 5))
  {
    v2 = *(a1 + 7);
    if (v2)
    {
      v2();
    }
  }

  if (*(a1 + 10))
  {
    v3 = *(a1 + 12);
    if (v3)
    {
      v3();
    }
  }

  pthread_mutex_unlock((*(a1 + 14) + 464));
  result = *(a1 + 14);
  if (result)
  {
    NetworkNode::~NetworkNode(result);

    JUMPOUT(0x1AC58BC80);
  }

  return result;
}

BOOL _SFNodeEqual(__SFNode *a1, __SFNode *a2)
{
  pthread_mutex_lock((*(a1 + 14) + 464));
  pthread_mutex_lock((*(a2 + 14) + 464));
  if (!CFEqual(*(*(a1 + 14) + 256), *(*(a2 + 14) + 256)))
  {
    goto LABEL_29;
  }

  v4 = *(*(a1 + 14) + 336);
  v5 = *(*(a2 + 14) + 336);
  v6 = CFSetContainsValue(v4, @"Bonjour");
  v7 = CFSetContainsValue(v5, @"Bonjour");
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || !CFEqual(*(*(a1 + 14) + 272), *(*(a2 + 14) + 272)) || (v9 = CFEqual(*(*(a1 + 14) + 96), *(*(a2 + 14) + 96)), !v9))
  {
    v10 = CFSetContainsValue(v4, @"Windows");
    v11 = CFSetContainsValue(v5, @"Windows");
    v12 = !v10 || v11 == 0;
    if (v12 || !CFEqual(*(*(a1 + 14) + 192), *(*(a2 + 14) + 192)) || (v9 = CFEqual(*(*(a1 + 14) + 296), *(*(a2 + 14) + 296)), !v9))
    {
      if (CFSetContainsValue(v4, @"All") && CFSetContainsValue(v5, @"All") || CFSetContainsValue(v4, @"Root") && CFSetContainsValue(v5, @"Root") || CFSetContainsValue(v4, @"Domain") && CFSetContainsValue(v5, @"Domain") || CFSetContainsValue(v4, @"Workgroup") && CFSetContainsValue(v5, @"Workgroup") || CFSetContainsValue(v4, @"Classroom") && CFSetContainsValue(v5, @"Classroom") || CFSetContainsValue(v4, @"Suggestion") && CFSetContainsValue(v5, @"Suggestion") || CFSetContainsValue(v4, @"Rapport") && CFSetContainsValue(v5, @"Rapport"))
      {
        goto LABEL_42;
      }

LABEL_29:
      v14 = **(a1 + 14);
      v15 = **(a2 + 14);
      if (v14)
      {
        v16 = v15 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (!v16 && CFEqual(v14, v15))
      {
        v17 = *(*(a1 + 14) + 336);
        v18 = *(*(a2 + 14) + 336);
        if (CFSetContainsValue(v17, @"Connected") && CFSetContainsValue(v18, @"Connected") || CFSetContainsValue(v17, @"Managed") && CFSetContainsValue(v18, @"Managed") || CFSetContainsValue(v17, @"Printer") && CFSetContainsValue(v18, @"Printer") || CFSetContainsValue(v17, @"Recent") && CFSetContainsValue(v18, @"Recent"))
        {
LABEL_42:
          v13 = 1;
          goto LABEL_46;
        }

        if (CFSetContainsValue(v17, @"Volume"))
        {
          v13 = CFSetContainsValue(v18, @"Volume") != 0;
          goto LABEL_46;
        }
      }

      v13 = 0;
      goto LABEL_46;
    }
  }

  v13 = v9;
LABEL_46:
  pthread_mutex_unlock((*(a2 + 14) + 464));
  pthread_mutex_unlock((*(a1 + 14) + 464));
  return v13;
}

CFHashCode _SFNodeHash(__SFNode *a1)
{
  pthread_mutex_lock((*(a1 + 14) + 464));
  v2 = *(a1 + 14);
  v3 = *(v2 + 336);
  v4 = *(v2 + 256);
  v5 = CFGetAllocator(a1);
  if (CFSetContainsValue(v3, @"Bonjour"))
  {
    v12 = *(*(a1 + 14) + 272);
    v13 = @"Bonjour";
LABEL_3:
    v6 = CFStringCreateWithFormat(v5, 0, @"%@%@", v12, v13);
    goto LABEL_6;
  }

  if (CFSetContainsValue(v3, @"Windows"))
  {
    v6 = CFStringCreateWithFormat(v5, 0, @"%@%@%@", *(*(a1 + 14) + 192), *(*(a1 + 14) + 296), @"Windows");
  }

  else
  {
    v10 = @"Root";
    if (CFSetContainsValue(v3, @"Root") || (v10 = @"Domain", CFSetContainsValue(v3, @"Domain")) || (v10 = @"Workgroup", CFSetContainsValue(v3, @"Workgroup")))
    {
      v12 = v4;
      v13 = v10;
      goto LABEL_3;
    }

    v11 = **(a1 + 14);
    if (v11)
    {
      v4 = CFURLGetString(v11);
    }

    v6 = CFStringCreateWithFormat(v5, 0, @"%@", v4);
  }

LABEL_6:
  v7 = v6;
  if (v6)
  {
    v8 = CFHash(v6);
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  pthread_mutex_unlock((*(a1 + 14) + 464));
  return v8;
}

CFStringRef _SFNodeCopyDebugDesc(__SFNode *a1)
{
  pthread_mutex_lock((*(a1 + 14) + 464));
  v2 = *(a1 + 14);
  v3 = *v2;
  v4 = v2[42];
  isMounted = NetworkNode::isMounted(v2);
  v6 = *(a1 + 14);
  v7 = v6[12];
  v8 = v6[32];
  v9 = v6[33];
  v10 = v6[1];
  if (v10)
  {
    v24 = CFURLGetString(v10);
    v6 = *(a1 + 14);
  }

  else
  {
    v24 = 0;
  }

  v11 = v6[37];
  v26 = v6[11];
  if (v3)
  {
    v25 = CFURLGetString(v3);
    v6 = *(a1 + 14);
  }

  else
  {
    v25 = 0;
  }

  v12 = v6[40];
  v13 = CFSetContainsValue(v4, @"Person");
  v14 = CFSetContainsValue(v4, @"Bonjour");
  v15 = v14;
  if (v13)
  {
    v16 = CFSetContainsValue(v4, @"Rapport");
    v17 = "Rapport";
    if (!v16)
    {
      v17 = "?";
    }

    if (v15)
    {
      v18 = "Bonjour";
    }

    else
    {
      v18 = v17;
    }

    cf = CFStringCreateMutable(0, 0);
    CFAppendPrintF(&cf, "%##@", v12);
    v19 = CFStringCreateWithFormat(0, 0, @"<SFNode {%@,id=%@,dev=%@,t=%s,sib=%@}>", v26, v8, v9, v18, cf);
    CFRelease(cf);
  }

  else
  {
    if (v14)
    {
      v20 = "YES";
      if (!isMounted)
      {
        v20 = "NO";
      }

      v21 = CFStringCreateWithFormat(0, 0, @"<SFNode %p>{%@, domain = %@, mounted = %s}", a1, v26, v7, v20);
    }

    else if (CFSetContainsValue(v4, @"Windows"))
    {
      v22 = "YES";
      if (!isMounted)
      {
        v22 = "NO";
      }

      v21 = CFStringCreateWithFormat(0, 0, @"<SFNode %p>{%@, workgroup = %@, comment = %@, mounted = %s}", a1, v26, v11, v9, v22);
    }

    else if (CFSetContainsValue(v4, @"Domain"))
    {
      v21 = CFStringCreateWithFormat(0, 0, @"<SFNode %p>{domain = %@}", a1, v8);
    }

    else if (CFSetContainsValue(v4, @"Workgroup"))
    {
      v21 = CFStringCreateWithFormat(0, 0, @"<SFNode %p>{workgroup = %@}", a1, v26);
    }

    else if (CFSetContainsValue(v4, @"Volume"))
    {
      v21 = CFStringCreateWithFormat(0, 0, @"<SFNode %p>{volume = %@, url = %@, mount = %@}", a1, v26, v25, v24);
    }

    else if (CFSetContainsValue(v4, @"Connected"))
    {
      v21 = CFStringCreateWithFormat(0, 0, @"<SFNode %p>{connected = %@, url = %@, mount = %@}", a1, v26, v25, v24);
    }

    else if (CFSetContainsValue(v4, @"Printer"))
    {
      v21 = CFStringCreateWithFormat(0, 0, @"<SFNode %p>{printer = %@, url = %@}", a1, v26, v25);
    }

    else if (CFSetContainsValue(v4, @"Recent"))
    {
      v21 = CFStringCreateWithFormat(0, 0, @"<SFNode %p>{recent = %@, url = %@}", a1, v26, v25);
    }

    else if (CFSetContainsValue(v4, @"Managed"))
    {
      v21 = CFStringCreateWithFormat(0, 0, @"<SFNode %p>{managed = %@, url = %@}", a1, v26, v25);
    }

    else
    {
      v21 = CFStringCreateWithFormat(0, 0, @"<SFNode %p>{unknown = %@}", a1, v26);
    }

    v19 = v21;
  }

  pthread_mutex_unlock((*(a1 + 14) + 464));
  return v19;
}

void setSupportedCFTypeForKeyInXPCDictionary(void *a1, const char *a2, const void *a3)
{
  v5 = _CFXPCCreateXPCObjectFromCFObject();
  if (v5)
  {
    v6 = v5;
    xpc_dictionary_set_value(a1, a2, v5);

    xpc_release(v6);
  }
}

void sub_1A9688388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9688B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCKContainerIDClass_block_invoke(uint64_t a1)
{
  CloudKitLibrary();
  result = objc_getClass("CKContainerID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKContainerIDClass_block_invoke_cold_1();
  }

  getCKContainerIDClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CloudKitLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!CloudKitLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __CloudKitLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E788A958;
    v2 = 0;
    CloudKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CloudKitLibraryCore_frameworkLibrary)
  {
    CloudKitLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __CloudKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CloudKitLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __SharedWithYouCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SharedWithYouCoreLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCKShareClass_block_invoke(uint64_t a1)
{
  CloudKitLibrary();
  result = objc_getClass("CKShare");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKShareClass_block_invoke_cold_1();
  }

  getCKShareClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCKContainerSetupInfoClass_block_invoke(uint64_t a1)
{
  CloudKitLibrary();
  result = objc_getClass("CKContainerSetupInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKContainerSetupInfoClass_block_invoke_cold_1();
  }

  getCKContainerSetupInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SFOperationGetTypeID(uint64_t a1, uint64_t a2)
{
  if (SFOperationGetTypeID_once[0] != -1)
  {
    SFOperationGetTypeID_cold_1();
  }

  return _kSFOperationTypeID;
}

void *__SFOperationGetTypeID_block_invoke()
{
  result = malloc_type_calloc(1uLL, 0x60uLL, 0x10D00408820D60FuLL);
  _kSFOperationClass = result;
  if (result)
  {
    *result = 0;
    result[1] = "SFOperation";
    result[4] = _SFOperationFinalize;
    result[5] = _SFOperationEqual;
    result[6] = _SFOperationHash;
    result[8] = _SFOperationCopyDebugDesc;
    result = _CFRuntimeRegisterClass();
    _kSFOperationTypeID = result;
  }

  return result;
}

void *SFOperationCreate(const __CFAllocator *a1, const void *a2)
{
  v4 = framework_log(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    SFOperationCreate_cold_1();
  }

  return _SFOperationCreateInternal(a1, a2, 0);
}

void *_SFOperationCreateInternal(const __CFAllocator *a1, const void *a2, uint64_t a3)
{
  v6 = framework_log(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    _SFOperationCreateInternal_cold_1();
  }

  if (SFOperationGetTypeID_once[0] != -1)
  {
    _SFOperationCreateInternal_cold_2();
  }

  if (!_kSFOperationTypeID)
  {
    return 0;
  }

  Instance = _CFRuntimeCreateInstance();
  v8 = Instance;
  if (Instance)
  {
    *(Instance + 64) = 0u;
    *(Instance + 160) = 0u;
    *(Instance + 176) = 0u;
    *(Instance + 128) = 0u;
    *(Instance + 144) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 16) = 0u;
    pthread_mutex_init((Instance + 64), 0);
    v8[6] = CFRetain(a2);
    v8[4] = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (a3)
    {
      Connection = _SFOperationCreateConnection(v8, a3);
    }

    else
    {
      Connection = 0;
    }

    v8[23] = Connection;
  }

  return v8;
}

uint64_t SFOperationSetClient(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = framework_log(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412802;
    v13 = a1;
    v14 = 2048;
    v15 = a2;
    v16 = 2048;
    v17 = a3;
    _os_log_debug_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEBUG, "SFOperationSetClient (%@, callback = %p, context = %p)", &v12, 0x20u);
  }

  pthread_mutex_lock((a1 + 64));
  if (*(a1 + 144))
  {
    v7 = *(a1 + 160);
    if (v7)
    {
      v7();
    }
  }

  *(a1 + 128) = a2;
  v8 = *a3;
  v9 = a3[1];
  *(a1 + 168) = *(a3 + 4);
  *(a1 + 152) = v9;
  *(a1 + 136) = v8;
  if (*(a1 + 144))
  {
    v10 = *(a1 + 152);
    if (v10)
    {
      *(a1 + 144) = v10();
    }
  }

  return pthread_mutex_unlock((a1 + 64));
}

uint64_t SFOperationSetDispatchQueue(uint64_t a1, NSObject *a2)
{
  v4 = framework_log(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    SFOperationSetDispatchQueue_cold_1();
  }

  pthread_mutex_lock((a1 + 64));
  v5 = *(a1 + 56);
  if (v5 != a2)
  {
    if (v5)
    {
      dispatch_release(v5);
    }

    if (a2)
    {
      dispatch_retain(a2);
    }

    *(a1 + 56) = a2;
  }

  return pthread_mutex_unlock((a1 + 64));
}

uint64_t SFOperationSetProperty(pthread_mutex_t *a1, const void *a2, const void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = framework_log(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412802;
    v9 = a1;
    v10 = 2112;
    v11 = a2;
    v12 = 2112;
    v13 = a3;
    _os_log_debug_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEBUG, "SFOperationSetProperty (%@, name = %@, value = %@)", &v8, 0x20u);
  }

  pthread_mutex_lock(a1 + 1);
  _SFOperationSetProperty(a1, a2, a3);
  return pthread_mutex_unlock(a1 + 1);
}

uint64_t _SFOperationSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  setOrRemoveValue(*(a1 + 32), a2, a3);
  if (*(a1 + 184))
  {
    v6 = _os_activity_create(&dword_1A9662000, "Sharing/SFOperation/setProperty", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v20.opaque[0] = 0;
    v20.opaque[1] = 0;
    os_activity_scope_enter(v6, &v20);
    os_release(v6);
    v7 = xpc_dictionary_create(0, 0, 0);
    v8 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(v7, "Name", v8);
    if (a3)
    {
      if (CFEqual(a2, @"Node"))
      {
        v9 = _SFNodeXPCObjectCreate(a3);
        goto LABEL_5;
      }

      if (CFEqual(a2, @"FileIcon") || CFEqual(a2, @"SmallFileIcon"))
      {
        ImageDataWithSize = createImageDataWithSize(a3, 0x20000);
        if (!ImageDataWithSize)
        {
          goto LABEL_13;
        }

        Mutable = ImageDataWithSize;
      }

      else if (CFEqual(a2, @"Items"))
      {
        v14 = CFGetAllocator(a1);
        Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, @"Items", a3);
        Count = CFArrayGetCount(a3);
        if (Count >= 1)
        {
          v16 = Count;
          for (i = 0; i != v16; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
            if (_CFURLIsFileURL())
            {
              _SFOperationAddSandboxExtensionForFileURL(ValueAtIndex, Mutable);
            }
          }
        }
      }

      else
      {
        if (!CFEqual(a2, @"DestinationURL"))
        {
          v9 = _CFXPCCreateXPCObjectFromCFObject();
LABEL_5:
          v10 = v9;
          if (!v9)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }

        v19 = CFGetAllocator(a1);
        Mutable = CFDictionaryCreateMutable(v19, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, @"DestinationURL", a3);
        _SFOperationAddSandboxExtensionForFileURL(a3, Mutable);
      }

      v10 = _CFXPCCreateXPCObjectFromCFObject();
      CFRelease(Mutable);
      if (v10)
      {
LABEL_12:
        xpc_dictionary_set_value(v7, "Value", v10);
        xpc_release(v10);
      }
    }

LABEL_13:
    xpc_dictionary_set_string(v7, "Object", "Operation");
    xpc_dictionary_set_string(v7, "Function", "SetProperty");
    xpc_connection_send_message(*(a1 + 184), v7);
    xpc_release(v8);
    xpc_release(v7);
    os_activity_scope_leave(&v20);
  }

  return pthread_mutex_unlock((a1 + 64));
}

const void *SFOperationCopyProperty(uint64_t a1, const void *a2)
{
  v4 = framework_log(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    SFOperationCopyProperty_cold_1();
  }

  pthread_mutex_lock((a1 + 64));
  if (!CFEqual(a2, @"Kind"))
  {
    Value = CFDictionaryGetValue(*(a1 + 32), a2);
    if (!Value)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  Value = *(a1 + 48);
  if (Value)
  {
LABEL_5:
    CFRetain(Value);
  }

LABEL_6:
  pthread_mutex_unlock((a1 + 64));
  return Value;
}

uint64_t SFOperationResume(uint64_t a1)
{
  v2 = framework_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    SFOperationResume_cold_1();
  }

  pthread_mutex_lock((a1 + 64));
  if (*(a1 + 184))
  {
    goto LABEL_10;
  }

  *(a1 + 184) = _SFOperationCreateConnection(a1, 0);
  v3 = CFGetAllocator(a1);
  v4 = copyKeysFromDictionary(v3, *(a1 + 32));
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        Value = CFDictionaryGetValue(*(a1 + 32), ValueAtIndex);
        _SFOperationSetProperty(a1, ValueAtIndex, Value);
      }
    }

    CFRelease(v5);
  }

  if (*(a1 + 184))
  {
LABEL_10:
    v11 = _os_activity_create(&dword_1A9662000, "Sharing/SFOperation/resume", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v20.opaque[0] = 0;
    v20.opaque[1] = 0;
    os_activity_scope_enter(v11, &v20);
    os_release(v11);
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v12, "Object", "Operation");
    xpc_dictionary_set_string(v12, "Function", "Resume");
    xpc_connection_send_message(*(a1 + 184), v12);
    if (!*(a1 + 40))
    {
      v13 = CFDictionaryGetValue(*(a1 + 32), @"RunLoop");
      v14 = CFDictionaryGetValue(*(a1 + 32), @"RunLoopMode");
      if (v13)
      {
        v15 = v14;
        if (v14)
        {
          context.version = 0;
          memset(&context.retain, 0, 24);
          context.info = a1;
          v16 = CFGetAllocator(a1);
          Current = CFAbsoluteTimeGetCurrent();
          v18 = CFRunLoopTimerCreate(v16, Current + 1.0e30, 1.0e30, 0, 0, dummyCallBack, &context);
          *(a1 + 40) = v18;
          CFRunLoopAddTimer(v13, v18, v15);
        }
      }
    }

    xpc_release(v12);
    os_activity_scope_leave(&v20);
  }

  return pthread_mutex_unlock((a1 + 64));
}

_xpc_connection_s *_SFOperationCreateConnection(void *a1, uint64_t a2)
{
  v4 = _os_activity_create(&dword_1A9662000, "Sharing/SFOperation/createConnection", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  os_release(v4);
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "Object", "Operation");
  xpc_dictionary_set_string(v5, "Function", "Create");
  if (a2)
  {
    v6 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(v5, "Operation", v6);
    xpc_release(v6);
  }

  v7 = _CFXPCCreateXPCObjectFromCFObject();
  xpc_dictionary_set_value(v5, "Kind", v7);
  if (a1[7])
  {
    v8 = a1[7];
  }

  else
  {
    v8 = MEMORY[0x1E69E96A0];
  }

  mach_service = xpc_connection_create_mach_service("com.apple.sharingd", v8, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = ___SFOperationCreateConnection_block_invoke;
  v12[3] = &__block_descriptor_tmp_318;
  v12[4] = a1;
  v12[5] = mach_service;
  xpc_connection_set_event_handler(mach_service, v12);
  xpc_connection_send_message(mach_service, v5);
  v10 = CFRetain(a1);
  xpc_connection_set_context(mach_service, v10);
  xpc_connection_set_finalizer_f(mach_service, MEMORY[0x1E695D7C0]);
  xpc_connection_resume(mach_service);
  xpc_release(v7);
  xpc_release(v5);
  os_activity_scope_leave(&state);
  return mach_service;
}

uint64_t _SFOperationFinalize(uint64_t a1)
{
  pthread_mutex_lock((a1 + 64));
  if (*(a1 + 144))
  {
    v2 = *(a1 + 160);
    if (v2)
    {
      v2();
    }
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
  }

  pthread_mutex_unlock((a1 + 64));

  return pthread_mutex_destroy((a1 + 64));
}

BOOL _SFOperationEqual(pthread_mutex_t *a1, pthread_mutex_t *a2)
{
  pthread_mutex_lock(a1 + 1);
  pthread_mutex_lock(a2 + 1);
  pthread_mutex_unlock(a1 + 1);
  pthread_mutex_unlock(a2 + 1);
  return a1 == a2;
}

pthread_mutex_t *_SFOperationHash(pthread_mutex_t *a1)
{
  pthread_mutex_lock(a1 + 1);
  pthread_mutex_unlock(a1 + 1);
  return a1;
}

CFStringRef _SFOperationCopyDebugDesc(uint64_t a1)
{
  pthread_mutex_lock((a1 + 64));
  v2 = CFStringCreateWithFormat(0, 0, @"<SFOperation %p>{kind = %@}", a1, *(a1 + 48));
  pthread_mutex_unlock((a1 + 64));
  return v2;
}

void _SFOperationAddSandboxExtensionForFileURL(const __CFURL *a1, __CFDictionary *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  v4 = CFURLCopyFileSystemPath(a1, kCFURLPOSIXPathStyle);
  if (v4)
  {
    v5 = v4;
    CString = CFStringGetCString(v4, buffer, 1024, 0x8000100u);
    v7 = CString;
    v8 = framework_log(CString);
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315138;
        v21 = buffer;
        _os_log_impl(&dword_1A9662000, v9, OS_LOG_TYPE_DEFAULT, "Trying to issue sandbox extension for %s", &v20, 0xCu);
      }

      v10 = sandbox_extension_issue_file();
      if (v10)
      {
        v11 = v10;
        v12 = CFURLCopyAbsoluteURL(a1);
        v13 = strlen(v11);
        v14 = CFDataCreate(0, v11, v13);
        v15 = CFURLGetString(v12);
        CFDictionaryAddValue(a2, v15, v14);
        CFRelease(v12);
        CFRelease(v14);
        free(v11);
        v17 = framework_log(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 136315138;
          v21 = buffer;
          _os_log_impl(&dword_1A9662000, v17, OS_LOG_TYPE_DEFAULT, "Successfully issued sandbox extension for %s", &v20, 0xCu);
        }
      }

      else
      {
        v19 = framework_log(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          _SFOperationAddSandboxExtensionForFileURL_cold_1(buffer, v19);
        }
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _SFOperationAddSandboxExtensionForFileURL_cold_2();
    }

    CFRelease(v5);
  }

  else
  {
    v18 = framework_log(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      _SFOperationAddSandboxExtensionForFileURL_cold_3();
    }
  }
}

uint64_t _SFOperationNotifyClient(uint64_t result, uint64_t a2, const __CFDictionary *cf2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!*(result + 16))
  {
    v5 = result;
    if (*(result + 176) != a2 || (result = valuesChanged(*(result + 24), cf2), result))
    {
      if (a2 != 7)
      {
        v6 = CFStringCreateWithFormat(0, 0, @"<SFOperation %p>{kind = %@}", v5, *(v5 + 48));
        v7 = framework_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          if ((a2 - 1) > 0xE)
          {
            v8 = @"?";
          }

          else
          {
            v8 = off_1E788AD58[a2 - 1];
          }

          *buf = 138412802;
          v12 = v6;
          v13 = 2112;
          v14 = v8;
          v15 = 2112;
          v16 = cf2;
          _os_log_impl(&dword_1A9662000, v7, OS_LOG_TYPE_INFO, "SFOperationCallBack (%@, event = %@, results = %@)", buf, 0x20u);
        }

        CFRelease(v6);
      }

      *(v5 + 176) = a2;
      v9 = *(v5 + 24);
      if (v9)
      {
        CFRelease(v9);
      }

      Copy = 0;
      if (cf2)
      {
        Copy = CFDictionaryCreateCopy(0, cf2);
      }

      *(v5 + 24) = Copy;
      return (*(v5 + 128))(v5, a2, cf2, *(v5 + 144));
    }
  }

  return result;
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1A968B994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A968C038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A968C280(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1A968C714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A968C950(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A968CC84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1A968CFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A968D49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A968D738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAFPreferencesClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AssistantServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E788B010;
    v5 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    __getAFPreferencesClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAFPreferencesClass_block_invoke_cold_1();
  }

  getAFPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getVTPreferencesClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!VoiceTriggerLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __VoiceTriggerLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E788B028;
    v5 = 0;
    VoiceTriggerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!VoiceTriggerLibraryCore_frameworkLibrary)
  {
    __getVTPreferencesClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("VTPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVTPreferencesClass_block_invoke_cold_1();
  }

  getVTPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VoiceTriggerLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  VoiceTriggerLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getUNNotificationSettingsCenterClass_block_invoke(uint64_t a1)
{
  UserNotificationsSettingsLibrary();
  result = objc_getClass("UNNotificationSettingsCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUNNotificationSettingsCenterClass_block_invoke_cold_1();
  }

  getUNNotificationSettingsCenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void UserNotificationsSettingsLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!UserNotificationsSettingsLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __UserNotificationsSettingsLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E788B040;
    v2 = 0;
    UserNotificationsSettingsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!UserNotificationsSettingsLibraryCore_frameworkLibrary)
  {
    UserNotificationsSettingsLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __UserNotificationsSettingsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  UserNotificationsSettingsLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getUNMutableNotificationSystemSettingsClass_block_invoke(uint64_t a1)
{
  UserNotificationsSettingsLibrary();
  result = objc_getClass("UNMutableNotificationSystemSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUNMutableNotificationSystemSettingsClass_block_invoke_cold_1();
  }

  getUNMutableNotificationSystemSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getTUUserConfigurationClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __TelephonyUtilitiesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E788B058;
    v5 = 0;
    TelephonyUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    __getTUUserConfigurationClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("TUUserConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTUUserConfigurationClass_block_invoke_cold_1();
  }

  getTUUserConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

__CFString *SFOperationEventToString(uint64_t a1)
{
  if ((a1 - 1) > 0xE)
  {
    return @"?";
  }

  else
  {
    return off_1E788B118[a1 - 1];
  }
}

BOOL OUTLINED_FUNCTION_1_4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *SFOperationEventToString_0(uint64_t a1)
{
  if ((a1 - 1) > 0xE)
  {
    return @"?";
  }

  else
  {
    return off_1E788B428[a1 - 1];
  }
}

void sub_1A9697840(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 104));
  _Unwind_Resume(a1);
}

Class initTVLDisplayColorCalibrator()
{
  if (TVLatencyLibrary_sOnce != -1)
  {
    initTVLDisplayColorCalibrator_cold_1();
  }

  result = objc_getClass("TVLDisplayColorCalibrator");
  classTVLDisplayColorCalibrator = result;
  getTVLDisplayColorCalibratorClass = TVLDisplayColorCalibratorFunction;
  return result;
}

void *__TVLatencyLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/TVLatency.framework/TVLatency", 2);
  TVLatencyLibrary_sLib = result;
  return result;
}

uint64_t SFHotspotTypeStringToType(void *a1, _BYTE *a2)
{
  v3 = [a1 lowercaseString];
  v4 = v3;
  if (a2)
  {
    *a2 = 1;
  }

  if ([v3 isEqualToString:@"none"])
  {
    v5 = 0;
  }

  else if ([v4 isEqualToString:@"1x"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"gprs"])
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:@"edge"])
  {
    v5 = 3;
  }

  else if ([v4 isEqualToString:@"3g"])
  {
    v5 = 4;
  }

  else if ([v4 isEqualToString:@"4g"])
  {
    v5 = 6;
  }

  else if ([v4 isEqualToString:@"lte"])
  {
    v5 = 7;
  }

  else
  {
    v6 = [v4 isEqualToString:@"5g"];
    if (v6)
    {
      v5 = 8;
    }

    else
    {
      v5 = -1;
    }

    if (a2 && (v6 & 1) == 0)
    {
      *a2 = 0;
      v5 = -1;
    }
  }

  return v5;
}

id SFHotspotResponseAdvertisementString(uint64_t a1)
{
  v1 = BYTE3(a1);
  v2 = BYTE1(a1);
  v3 = MEMORY[0x1E696AEC0];
  v4 = a1;
  v5 = BYTE2(a1);
  v6 = BYTE5(a1);
  v7 = SFHotspotNetworkTypeString(BYTE4(a1));
  v8 = [v3 stringWithFormat:@"<version: %d, flags: %d battery life: %d, signal strength: %d, network type: %@, additional flags: %d>", v4, v2, v5, v6, v7, v1];

  return v8;
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return DebugGetErrorString();
}

uint64_t getSharingFrameworkBundle()
{
  if (getSharingFrameworkBundle_sOnce != -1)
  {
    getSharingFrameworkBundle_cold_1();
  }

  return getSharingFrameworkBundle_gBundleRef;
}

void __getSharingFrameworkBundle_block_invoke()
{
  getSharingFrameworkBundle_gBundleRef = CFBundleGetBundleWithIdentifier(@"com.apple.Sharing");
  if (!getSharingFrameworkBundle_gBundleRef)
  {
    v0 = CFURLCreateWithFileSystemPath(0, @"/System/Library/PrivateFrameworks/Sharing.framework", kCFURLPOSIXPathStyle, 1u);
    if (v0)
    {
      v1 = v0;
      getSharingFrameworkBundle_gBundleRef = CFBundleCreate(0, v0);

      CFRelease(v1);
    }
  }
}

__CFSet *createMutableSetFromBag(const __CFAllocator *a1, CFIndex a2, const __CFBag *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v6 = MEMORY[0x1AC58A940](a3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v9, v8);
  CFBagGetValues(a3, v9);
  Mutable = CFSetCreateMutable(a1, a2, MEMORY[0x1E695E9F8]);
  if (v7 >= 1)
  {
    do
    {
      v11 = *v9++;
      CFSetSetValue(Mutable, v11);
      --v7;
    }

    while (v7);
  }

  return Mutable;
}

CFArrayRef copyValuesFromSet(const __CFAllocator *a1, CFSetRef theSet)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!theSet)
  {
    return 0;
  }

  result = CFSetGetCount(theSet);
  if (result)
  {
    v5 = result;
    MEMORY[0x1EEE9AC00](result);
    v7 = v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v7, v6);
    CFSetGetValues(theSet, v7);
    return CFArrayCreate(a1, v7, v5, MEMORY[0x1E695E9C0]);
  }

  return result;
}

CFArrayRef copyValuesFromBag(const __CFAllocator *a1, const __CFBag *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  result = MEMORY[0x1AC58A940](a2);
  if (result)
  {
    v5 = result;
    MEMORY[0x1EEE9AC00](result);
    v7 = v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v7, v6);
    CFBagGetValues(a2, v7);
    return CFArrayCreate(a1, v7, v5, MEMORY[0x1E695E9C0]);
  }

  return result;
}

__CFBag *createBagFromArray(const __CFAllocator *a1, CFArrayRef theArray)
{
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  Mutable = CFBagCreateMutable(a1, Count, MEMORY[0x1E695E9D0]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      CFBagSetValue(Mutable, ValueAtIndex);
    }
  }

  return Mutable;
}

__CFSet *createSetFromArray(const __CFAllocator *a1, CFArrayRef theArray)
{
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  Mutable = CFSetCreateMutable(a1, Count, MEMORY[0x1E695E9F8]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      CFSetSetValue(Mutable, ValueAtIndex);
    }
  }

  return Mutable;
}

__CFSet *createSFNodeKindsFromXPCArray(const __CFAllocator *a1, xpc_object_t xarray)
{
  if (!xarray)
  {
    return 0;
  }

  count = xpc_array_get_count(xarray);
  Mutable = CFSetCreateMutable(a1, count, &kSharingFastSetCallBacks);
  if (count >= 1)
  {
    for (i = 0; i != count; ++i)
    {
      int64 = xpc_array_get_int64(xarray, i);
      if (gKindMapOnce != -1)
      {
        createSFNodeKindsFromXPCArray_cold_1();
      }

      ValueAtIndex = CFArrayGetValueAtIndex(gOrderedKinds, int64);
      CFSetSetValue(Mutable, ValueAtIndex);
    }
  }

  return Mutable;
}

xpc_object_t createXPCArrayFromSFNodeKinds(const __CFSet *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  Count = CFSetGetCount(a1);
  if (!Count)
  {
    return 0;
  }

  v3 = Count;
  MEMORY[0x1EEE9AC00](Count);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v5, v4);
  v6 = xpc_array_create(0, 0);
  CFSetGetValues(a1, v5);
  if (v3 >= 1)
  {
    do
    {
      v7 = *v5;
      if (gKindMapOnce != -1)
      {
        createXPCArrayFromSFNodeKinds_cold_1();
      }

      Value = CFDictionaryGetValue(gKindMap, v7);
      xpc_array_set_int64(v6, 0xFFFFFFFFFFFFFFFFLL, Value);
      ++v5;
      --v3;
    }

    while (v3);
  }

  return v6;
}

CFArrayRef copyKeysFromDictionary(const __CFAllocator *a1, CFDictionaryRef theDict)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!theDict)
  {
    return 0;
  }

  result = CFDictionaryGetCount(theDict);
  if (result)
  {
    v5 = result;
    MEMORY[0x1EEE9AC00](result);
    v7 = v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v7, v6);
    CFDictionaryGetKeysAndValues(theDict, v7, 0);
    return CFArrayCreate(a1, v7, v5, MEMORY[0x1E695E9C0]);
  }

  return result;
}

CFArrayRef copyValuesFromDictionary(const __CFAllocator *a1, CFDictionaryRef theDict)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!theDict)
  {
    return 0;
  }

  result = CFDictionaryGetCount(theDict);
  if (result)
  {
    v5 = result;
    MEMORY[0x1EEE9AC00](result);
    v7 = v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v7, v6);
    CFDictionaryGetKeysAndValues(theDict, 0, v7);
    return CFArrayCreate(a1, v7, v5, MEMORY[0x1E695E9C0]);
  }

  return result;
}

void setOrRemoveValue(CFMutableDictionaryRef theDict, const void *key, const void *value)
{
  if (value)
  {
    CFDictionarySetValue(theDict, key, value);
  }

  else
  {
    CFDictionaryRemoveValue(theDict, key);
  }
}

uint64_t defaultPortForProtocol(const void *a1)
{
  if (CFEqual(a1, @"afp"))
  {
    return 548;
  }

  if (CFEqual(a1, @"smb"))
  {
    return 445;
  }

  if (CFEqual(a1, @"vnc"))
  {
    return 5900;
  }

  if (CFEqual(a1, @"odisk") || CFEqual(a1, @"webdav"))
  {
    return 80;
  }

  if (CFEqual(a1, @"webdavs"))
  {
    return 443;
  }

  if (CFEqual(a1, @"nfs"))
  {
    return 2049;
  }

  if (CFEqual(a1, @"ftp"))
  {
    return 21;
  }

  if (CFEqual(a1, @"ftps"))
  {
    return 990;
  }

  if (CFEqual(a1, @"http"))
  {
    return 80;
  }

  if (CFEqual(a1, @"https"))
  {
    return 443;
  }

  if (CFEqual(a1, @"adisk"))
  {
    return 548;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

const __CFString *createStringByAddingPercentEscapes(const __CFString *originalString, CFStringRef legalURLCharactersToBeEscaped)
{
  if (originalString)
  {
    return CFURLCreateStringByAddingPercentEscapes(0, originalString, 0, legalURLCharactersToBeEscaped, 0x8000100u);
  }

  return originalString;
}

const __CFURL *createURL(__CFString *a1, const __CFString *a2, const __CFString *a3, __CFString *MutableCopy, unsigned int a5, const __CFString *a6, const __CFDictionary *a7, int a8)
{
  error[1] = *MEMORY[0x1E69E9840];
  if (CFEqual(a1, @"webdav") || CFEqual(a1, @"odisk"))
  {
    v16 = kSFNodeProtocolHTTP;
LABEL_4:
    v17 = *v16;
    goto LABEL_5;
  }

  CFEqual(a1, @"airdrop");
  if (CFEqual(a1, @"webdavs") || (v17 = a1, CFEqual(a1, @"airdrop")))
  {
    v16 = kSFNodeProtocolHTTPS;
    goto LABEL_4;
  }

LABEL_5:
  v18 = defaultPortForProtocol(a1);
  if (a2)
  {
    a2 = CFURLCreateStringByAddingPercentEscapes(0, a2, 0, @";:@?/", 0x8000100u);
  }

  if (a3)
  {
    a3 = CFURLCreateStringByAddingPercentEscapes(0, a3, 0, @";:@?/", 0x8000100u);
  }

  if (CFStringHasPrefix(MutableCopy, @"[") && CFStringHasSuffix(MutableCopy, @"]"))
  {
    Length = CFStringGetLength(MutableCopy);
    MutableCopy = CFStringCreateMutableCopy(0, Length, MutableCopy);
    v45.length = CFStringGetLength(MutableCopy);
    v45.location = 0;
    CFStringFindAndReplace(MutableCopy, @"%", @"%25", v45, 0);
  }

  else if (MutableCopy)
  {
    MutableCopy = CFURLCreateStringByAddingPercentEscapes(0, MutableCopy, 0, @";:@?/", 0x8000100u);
  }

  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%@://", v17);
  if (!a2)
  {
    if (!a3)
    {
      v21 = 1;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  CFStringAppend(Mutable, a2);
  if (a3)
  {
LABEL_18:
    CFStringAppendFormat(Mutable, 0, @":%@", a3);
    v21 = 0;
    goto LABEL_19;
  }

  v21 = 1;
LABEL_19:
  CFStringAppend(Mutable, @"@");
LABEL_20:
  CFStringAppend(Mutable, MutableCopy);
  if (a5 >= 1 && v18 != a5)
  {
    CFStringAppendFormat(Mutable, 0, @":%ld", a5);
  }

  if (a6)
  {
    if (CFStringHasPrefix(a6, @"/"))
    {
      v44.length = CFStringGetLength(a6) - 1;
      v44.location = 1;
      v22 = CFStringCreateWithSubstring(0, a6, v44);
    }

    else
    {
      v22 = CFRetain(a6);
    }

    v23 = v22;
    if (v22)
    {
      v24 = CFURLCreateStringByAddingPercentEscapes(0, v22, 0, 0, 0x8000100u);
    }

    else
    {
      v24 = 0;
    }

    CFStringAppendFormat(Mutable, 0, @"/%@", v24);
    CFRelease(v23);
    CFRelease(v24);
  }

  if (a7)
  {
    Count = CFDictionaryGetCount(a7);
    if (Count)
    {
      v26 = Count;
      v40 = v21;
      v41 = a3;
      v42 = a8;
      v39 = &v39;
      MEMORY[0x1EEE9AC00](Count);
      v28 = (&v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v28, v27);
      v29 = CFStringCreateMutable(0, 0);
      CFDictionaryGetKeysAndValues(a7, v28, 0);
      v30 = v26 - 1;
      if (v26 >= 1)
      {
        while (1)
        {
          v31 = *v28;
          Value = CFDictionaryGetValue(a7, *v28);
          CFStringAppendFormat(v29, 0, @"%@=%@", v31, Value);
          if (!v30)
          {
            break;
          }

          CFStringAppend(v29, @"&");
          --v30;
          ++v28;
        }
      }

      CFStringAppendFormat(Mutable, 0, @"?%@", v29);
      CFRelease(v29);
      a8 = v42;
      a3 = v41;
      LOBYTE(v21) = v40;
    }
  }

  v33 = CFURLCreateWithString(0, Mutable, 0);
  v34 = v33;
  if (a8)
  {
    error[0] = 0;
    v35 = CFURLSetResourcePropertyForKey(v33, *MEMORY[0x1E695EB28], *MEMORY[0x1E695E4D0], error);
    if (!v35)
    {
      v36 = v21;
      v37 = utilities_log(v35);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        createURL_cold_1(error, v37);
      }

      CFRelease(error[0]);
      LOBYTE(v21) = v36;
    }
  }

  CFRelease(Mutable);
  CFRelease(MutableCopy);
  if (a2)
  {
    CFRelease(a2);
  }

  if ((v21 & 1) == 0)
  {
    CFRelease(a3);
  }

  return v34;
}

CGImageRef createCGImageWithURL(const __CFURL *a1)
{
  v1 = CGImageSourceCreateWithURL(a1, 0);
  if (v1)
  {
    v2 = v1;
    if (CGImageSourceGetCount(v1))
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v2, 0, 0);
    }

    else
    {
      v5 = utilities_log(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        createCGImageWithURL_cold_1();
      }

      ImageAtIndex = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v4 = utilities_log(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      createCGImageWithURL_cold_2();
    }

    return 0;
  }

  return ImageAtIndex;
}

CGImageRef createCGImageWithDataInternal(const __CFData *a1, int a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = Mutable;
  if (a2)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E696E118], *MEMORY[0x1E6963810]);
    CFDictionarySetValue(v5, *MEMORY[0x1E696E040], *MEMORY[0x1E695E4D0]);
  }

  v6 = CGImageSourceCreateWithData(a1, v5);
  if (v6)
  {
    v7 = v6;
    if (!CGImageSourceGetCount(v6))
    {
      v14 = utilities_log(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        createCGImageWithDataInternal_cold_4();
      }

      goto LABEL_21;
    }

    if (a2)
    {
      Type = CGImageSourceGetType(v7);
      v9 = CFEqual(Type, *MEMORY[0x1E6963810]);
      if (!v9)
      {
        v15 = utilities_log(v9);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          createCGImageWithDataInternal_cold_3();
        }

        goto LABEL_21;
      }

      ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
      if (!ImageAtIndex)
      {
        v11 = utilities_log(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          createCGImageWithDataInternal_cold_2();
        }

LABEL_21:
        v13 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
      if (!ImageAtIndex)
      {
        v16 = utilities_log(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          createCGImageWithDataInternal_cold_1();
        }

        goto LABEL_21;
      }
    }

    v13 = ImageAtIndex;
LABEL_22:
    CFRelease(v7);
    goto LABEL_23;
  }

  v12 = utilities_log(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    createCGImageWithDataInternal_cold_5();
  }

  v13 = 0;
LABEL_23:
  CFRelease(v5);
  return v13;
}

CGImageRef createCGImageWithDataOrURL(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFURLGetTypeID())
  {
    TypeID = CGImageSourceCreateWithURL(a1, 0);
  }

  else
  {
    TypeID = CFDataGetTypeID();
    if (v2 != TypeID)
    {
      goto LABEL_8;
    }

    TypeID = CGImageSourceCreateWithData(a1, 0);
  }

  v4 = TypeID;
  if (TypeID)
  {
    if (CGImageSourceGetCount(TypeID))
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v4, 0, 0);
    }

    else
    {
      v7 = utilities_log(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        createCGImageWithDataOrURL_cold_1();
      }

      ImageAtIndex = 0;
    }

    CFRelease(v4);
    return ImageAtIndex;
  }

LABEL_8:
  v6 = utilities_log(TypeID);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    createCGImageWithDataOrURL_cold_2();
  }

  return 0;
}

__CFData *copyImageData(void *a1, uint64_t a2)
{
  v4 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v4, 0);
  valuePtr = a2;
  v6 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a2)
  {
    v7 = CFNumberCreate(v4, kCFNumberLongType, &valuePtr);
    v8 = MEMORY[0x1E696D368];
  }

  else
  {
    v15 = 1065353216;
    v7 = CFNumberCreate(v4, kCFNumberFloatType, &v15);
    v8 = MEMORY[0x1E696D338];
  }

  CFDictionarySetValue(v6, *v8, v7);
  CFRelease(v7);
  v9 = CGImageDestinationCreateWithData(Mutable, *MEMORY[0x1E6963810], 1uLL, 0);
  if (v9)
  {
    v10 = v9;
    CGImageDestinationAddImage(v9, a1, v6);
    v11 = CGImageDestinationFinalize(v10);
    if (!v11)
    {
      v12 = utilities_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        copyImageData_cold_1();
      }

      CFRelease(Mutable);
      Mutable = 0;
    }

    CFRelease(v10);
  }

  else
  {
    v13 = utilities_log(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      copyImageData_cold_2();
    }
  }

  CFRelease(v6);
  return Mutable;
}

__CFData *createImageDataWithSize(uint64_t a1, uint64_t a2)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (DeviceRGB)
  {
    v4 = DeviceRGB;
    v5 = CGImageCreateByMatchingToColorSpace();
    if (v5)
    {
      v6 = v5;
      Width = CGImageGetWidth(v5);
      Height = CGImageGetHeight(v6);
      if (Width > 0x21C || Height >= 0x21D)
      {
        Thumb = CGImageCreateThumb();
      }

      else
      {
        Thumb = CFRetain(v6);
      }

      v13 = Thumb;
      if (Thumb)
      {
        v11 = copyImageData(Thumb, a2);
        CFRelease(v13);
      }

      else
      {
        v14 = utilities_log(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          createImageDataWithSize_cold_1();
        }

        v11 = 0;
      }

      CFRelease(v6);
    }

    else
    {
      v12 = utilities_log(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        createImageDataWithSize_cold_2();
      }

      v11 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v10 = utilities_log(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      createImageDataWithSize_cold_3();
    }

    return 0;
  }

  return v11;
}

uint64_t browseAllInterfacesEnabled()
{
  v0 = browseAllInterfacesEnabled_enabled;
  if (!browseAllInterfacesEnabled_enabled)
  {
    if (SFDeviceIsVirtualMachine())
    {
      v1 = 1;
    }

    else
    {
      v1 = BOOLeanValueForPreference(@"EnableDemoMode", 0);
    }

    v2 = BOOLeanValueForPreference(@"BrowseAllInterfaces", v1);
    v3 = MEMORY[0x1E695E4D0];
    if (!v2)
    {
      v3 = MEMORY[0x1E695E4C0];
    }

    v0 = *v3;
    browseAllInterfacesEnabled_enabled = *v3;
  }

  return CFBooleanGetValue(v0);
}

uint64_t disableAirDrop()
{
  v0 = disableAirDrop_disableAirDrop;
  if (!disableAirDrop_disableAirDrop)
  {
    v1 = BOOLeanValueForPreference(@"DisableAirDrop", 0);
    v2 = MEMORY[0x1E695E4D0];
    if (!v1)
    {
      v2 = MEMORY[0x1E695E4C0];
    }

    v0 = *v2;
    disableAirDrop_disableAirDrop = *v2;
  }

  return CFBooleanGetValue(v0);
}

uint64_t enableSimulator()
{
  v0 = enableSimulator_enableSimulator;
  if (!enableSimulator_enableSimulator)
  {
    v1 = BOOLeanValueForPreference(@"EnableSimulator", 0);
    v2 = MEMORY[0x1E695E4D0];
    if (!v1)
    {
      v2 = MEMORY[0x1E695E4C0];
    }

    v0 = *v2;
    enableSimulator_enableSimulator = *v2;
  }

  return CFBooleanGetValue(v0);
}

uint64_t enableDeviceImages()
{
  v0 = enableDeviceImages_enableDeviceImages;
  if (!enableDeviceImages_enableDeviceImages)
  {
    v1 = BOOLeanValueForPreference(@"EnableDeviceImages", 0);
    v2 = MEMORY[0x1E695E4D0];
    if (!v1)
    {
      v2 = MEMORY[0x1E695E4C0];
    }

    v0 = *v2;
    enableDeviceImages_enableDeviceImages = *v2;
  }

  return CFBooleanGetValue(v0);
}

uint64_t directIPEnabled()
{
  v0 = directIPEnabled_enabled;
  if (!directIPEnabled_enabled)
  {
    v1 = BOOLeanValueForPreference(@"EnableDirectIP", 0);
    v2 = MEMORY[0x1E695E4D0];
    if (!v1)
    {
      v2 = MEMORY[0x1E695E4C0];
    }

    v0 = *v2;
    directIPEnabled_enabled = *v2;
  }

  return CFBooleanGetValue(v0);
}

BOOL valuesChanged(CFTypeRef cf1, CFTypeRef cf2)
{
  if (cf1 && cf2)
  {
    if (!CFEqual(cf1, cf2))
    {
      return 1;
    }
  }

  else if (cf1 && !cf2)
  {
    return 1;
  }

  return cf2 && cf1 == 0;
}

uint64_t longValueForPreference(const __CFString *a1, uint64_t a2)
{
  v2 = a2;
  valuePtr = a2;
  v3 = copySharingPrefValue(a1);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberLongType, &valuePtr);
    }

    else
    {
      v6 = CFGetTypeID(v4);
      if (v6 == CFStringGetTypeID())
      {
        valuePtr = CFStringGetIntValue(v4);
      }
    }

    CFRelease(v4);
    return valuePtr;
  }

  return v2;
}

BOOL stringIsTrueString(const __CFString *a1)
{
  CFRetain(a1);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v5 = __stringIsTrueString_block_invoke;
  v6 = &__block_descriptor_tmp_146;
  v7 = a1;
  if (CFEqual(a1, @"1"))
  {
    v2 = 1;
  }

  else
  {
    v2 = 1;
    if (CFStringCompare(a1, @"true", 1uLL))
    {
      v2 = 1;
      if (CFStringCompare(a1, @"yes", 1uLL))
      {
        v2 = 1;
        if (CFStringCompare(a1, @"y", 1uLL))
        {
          v2 = CFStringCompare(a1, @"on", 1uLL) == kCFCompareEqualTo;
        }
      }
    }
  }

  v5(v4);
  return v2;
}

CFStringRef copyCurrentTime(const __CFAllocator *a1)
{
  memset(&v4, 0, sizeof(v4));
  v3.tv_sec = 0;
  *&v3.tv_usec = 0;
  gettimeofday(&v3, 0);
  localtime_r(&v3.tv_sec, &v4);
  return CFStringCreateWithFormat(a1, 0, @"%02d:%02d:%02d.%03d", v4.tm_hour, v4.tm_min, v4.tm_sec, (v3.tv_usec / 1000));
}

__CFString *airDropServiceType()
{
  v0 = copySharingPrefValue(@"AlternateService");
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v1))
      {
        v3 = @"_airdrop-alt._tcp.";
      }

      else
      {
        v3 = @"_airdrop._tcp.";
      }

      goto LABEL_16;
    }

    v6 = CFGetTypeID(v1);
    if (v6 == CFStringGetTypeID())
    {
      if (CFEqual(v1, @"1"))
      {
        v3 = @"_airdrop-alt._tcp.";
LABEL_16:
        CFRelease(v1);
        return v3;
      }

      if (!CFEqual(v1, @"0"))
      {
        if (CFStringGetLength(v1) < 8)
        {
          v7 = CFRetain(v1);
        }

        else
        {
          v11.location = 0;
          v11.length = 7;
          v7 = CFStringCreateWithSubstring(0, v1, v11);
        }

        v8 = v7;
        v9 = CFStringCreateWithFormat(0, 0, @"_airdrop-%@._tcp.", v7);
        v3 = CFAutorelease(v9);
        CFRelease(v8);
        goto LABEL_16;
      }
    }

    v3 = @"_airdrop._tcp.";
    goto LABEL_16;
  }

  if (!BOOLeanValueForPreference(@"EnableDemoMode", 0))
  {
    return @"_airdrop._tcp.";
  }

  v4 = CFStringCreateWithFormat(0, 0, @"_airdrop-%@._tcp.", @"demo");

  return CFAutorelease(v4);
}

uint64_t getOrderedTypes(uint64_t a1, uint64_t a2)
{
  if (gArrayOnce != -1)
  {
    getOrderedTypes_cold_1();
  }

  return gOrderedTypes;
}

CFArrayRef initArrays()
{
  v24 = *MEMORY[0x1E69E9840];
  v13 = @"_adisk._tcp.";
  v14 = @"_afpovertcp._tcp.";
  v15 = @"_smb._tcp.";
  v16 = @"_rfb._tcp.";
  v17 = @"_odisk._tcp.";
  v18 = @"_http._tcp.";
  v19 = airDropServiceType();
  v20 = @"_file._tcp.";
  v21 = @"_netbios._udp.";
  v22 = @"_workgroups._udp.";
  v23 = @"_nwnode._tcp.";
  values = @"adisk";
  v3 = @"afp";
  v4 = @"smb";
  v5 = @"vnc";
  v6 = @"odisk";
  v7 = @"http";
  v8 = @"airdrop";
  v9 = @"file";
  v10 = @"netbios";
  v11 = @"workgroups";
  v12 = @"nwnode";
  if (BOOLeanValueForPreference(@"PreferSMBFileSharing", 0))
  {
    v14 = @"_smb._tcp.";
    v15 = @"_afpovertcp._tcp.";
    v3 = @"smb";
    v4 = @"afp";
  }

  v0 = MEMORY[0x1E695E9C0];
  gOrderedProtocols = CFArrayCreate(0, &values, 11, MEMORY[0x1E695E9C0]);
  result = CFArrayCreate(0, &v13, 11, v0);
  gOrderedTypes = result;
  return result;
}

uint64_t getOrderedProtocols(uint64_t a1, uint64_t a2)
{
  if (gArrayOnce != -1)
  {
    getOrderedProtocols_cold_1();
  }

  return gOrderedProtocols;
}

const void *getServiceTypeForProtocol(void *key)
{
  if (gDictionaryOnce != -1)
  {
    getServiceTypeForProtocol_cold_1();
  }

  v2 = gTypeForProtocol;

  return CFDictionaryGetValue(v2, key);
}

CFDictionaryRef initDictionaries(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (gArrayOnce != -1)
  {
    getOrderedTypes_cold_1();
  }

  v2 = gOrderedTypes;
  v3 = gOrderedProtocols;
  Count = CFArrayGetCount(gOrderedTypes);
  v5 = CFArrayGetCount(v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v7, v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v9);
  v16.location = 0;
  v16.length = Count;
  CFArrayGetValues(v2, v16, v7);
  v17.location = 0;
  v17.length = v5;
  CFArrayGetValues(v3, v17, v10);
  v11 = *MEMORY[0x1E695E480];
  v12 = MEMORY[0x1E695E528];
  v13 = MEMORY[0x1E695E9E8];
  gTypeForProtocol = CFDictionaryCreate(*MEMORY[0x1E695E480], v10, v7, Count, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  result = CFDictionaryCreate(v11, v7, v10, v5, v12, v13);
  gProtocolForType = result;
  return result;
}

const void *getProtocolForServiceType(void *key)
{
  if (gDictionaryOnce != -1)
  {
    getProtocolForServiceType_cold_1();
  }

  v2 = gProtocolForType;

  return CFDictionaryGetValue(v2, key);
}

CFDictionaryRef initKindMap()
{
  v0 = 0;
  values[24] = *MEMORY[0x1E69E9840];
  values[0] = @"Root";
  values[1] = @"Bonjour";
  values[2] = @"Windows";
  values[3] = @"Domain";
  values[4] = @"Workgroup";
  values[5] = @"Volume";
  values[6] = @"Printer";
  values[7] = @"ADisk";
  values[8] = @"ODisk";
  values[9] = @"Person";
  values[10] = @"Me";
  values[11] = @"Disabled";
  values[12] = @"Unknown";
  values[13] = @"Monogram";
  values[14] = @"Recent";
  values[15] = @"Connected";
  values[16] = @"Managed";
  values[17] = @"AirDrop";
  values[18] = @"Classroom";
  values[19] = @"ClassroomGroup";
  values[20] = @"ClassroomCourse";
  values[21] = @"Suggestion";
  values[22] = @"Rapport";
  values[23] = @"All";
  memset(v4, 0, sizeof(v4));
  v1 = xmmword_1A998EED0;
  v2 = vdupq_n_s64(2uLL);
  do
  {
    v4[v0] = v1;
    v1 = vaddq_s64(v1, v2);
    ++v0;
  }

  while (v0 != 12);
  gOrderedKinds = CFArrayCreate(0, values, 24, MEMORY[0x1E695E9C0]);
  result = CFDictionaryCreate(0, values, v4, 24, &kSharingFastDictionaryKeyCallBacks, 0);
  gKindMap = result;
  return result;
}

void sub_1A96A08C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A96A1F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A96A3600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A96A3A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A96A3E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SFNilEqual(unint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return 1;
  }
}

__CFString *SFLocalizedStringForKeyInStringsFileNamed(const __CFString *a1, const __CFString *a2)
{
  v2 = copyLocalizedStringForKeyInStringsFile(a1, a2);

  return v2;
}

id SFHexStringForBase64EncodedString(void *a1)
{
  v1 = MEMORY[0x1E695DEF0];
  v2 = a1;
  v3 = [[v1 alloc] initWithBase64EncodedString:v2 options:0];

  v4 = SFHexStringForDataEx(v3, 1);

  return v4;
}

id SFHexStringForDataEx(void *a1, char a2)
{
  v3 = [a1 copy];
  v4 = [MEMORY[0x1E696AD60] string];
  v5 = [v3 bytes];
  if ([v3 length])
  {
    v6 = 0;
    do
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%c", a0123456789abcd[*(v5 + v6) >> 4], a0123456789abcd[*(v5 + v6) & 0xF]];
      [v4 appendString:v7];

      ++v6;
    }

    while (v6 < [v3 length]);
  }

  if (a2)
  {
    v8 = v4;
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@>", v4];
  }

  v9 = v8;

  return v9;
}

id SFDataFromCGImage(void *a1)
{
  CFRetain(a1);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __SFDataFromCGImage_block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a1;
  v2 = _Block_copy(aBlock);
  ColorSpace = CGImageGetColorSpace(a1);
  v4 = CGColorSpaceCopyName(ColorSpace);
  DataProvider = CGImageGetDataProvider(a1);
  v6 = CGDataProviderCopyData(DataProvider);
  v7 = objc_opt_new();
  CGImageGetWidth(a1);
  CFDictionarySetInt64();
  CGImageGetHeight(a1);
  CFDictionarySetInt64();
  CGImageGetBitsPerComponent(a1);
  CFDictionarySetInt64();
  CGImageGetBitsPerPixel(a1);
  CFDictionarySetInt64();
  CGImageGetBytesPerRow(a1);
  CFDictionarySetInt64();
  CGImageGetBitmapInfo(a1);
  CFDictionarySetInt64();
  CGImageGetRenderingIntent(a1);
  CFDictionarySetInt64();
  ShouldInterpolate = CGImageGetShouldInterpolate(a1);
  v9 = MEMORY[0x1E695E4D0];
  if (!ShouldInterpolate)
  {
    v9 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(v7, @"si", *v9);
  [(__CFDictionary *)v7 setObject:v4 forKeyedSubscript:@"cn"];
  [(__CFDictionary *)v7 setObject:v6 forKeyedSubscript:@"id"];
  DataMutable = OPACKEncoderCreateDataMutable();

  v2[2](v2);

  return DataMutable;
}

CGImageRef SFCreateCGImageFromData(void *a1)
{
  v1 = a1;
  v23 = 0;
  v2 = OPACKDecodeData();
  CFStringGetTypeID();
  v3 = CFDictionaryGetTypedValue();
  if (!v3)
  {
    v3 = *MEMORY[0x1E695F1C0];
  }

  v4 = CGColorSpaceCreateWithName(v3);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __SFCreateCGImageFromData_block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v4;
  v20 = _Block_copy(aBlock);
  CFDataGetTypeID();
  CFDictionaryGetTypedValue();
  v16 = v19 = v4;
  v17 = v1;
  v5 = CGDataProviderCreateWithCFData(v16);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __SFCreateCGImageFromData_block_invoke_2;
  v21[3] = &__block_descriptor_40_e5_v8__0l;
  v21[4] = v5;
  v6 = _Block_copy(v21);
  Int64 = CFDictionaryGetInt64();
  v7 = CFDictionaryGetInt64();
  v8 = CFDictionaryGetInt64();
  v9 = CFDictionaryGetInt64();
  v10 = CFDictionaryGetInt64();
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v12 = CFDictionaryGetInt64();
  intent = CFDictionaryGetInt64();
  v14 = CGImageCreate(Int64, v7, v8, v9, v10, v19, Int64Ranged, v5, 0, v12 != 0, intent);
  v6[2](v6);

  v20[2](v20);
  return v14;
}

void __SFCreateCGImageFromData_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __SFCreateCGImageFromData_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

id SFStringComponentsFromTimeInterval(int a1, double a2)
{
  v4 = objc_opt_new();
  v5 = (a2 / 86400.0);
  v6 = a2 - (86400 * v5);
  v7 = (v6 / 3600.0);
  v8 = v6 - (3600 * v7);
  v9 = (v8 / 60.0);
  if (v5)
  {
    v10 = [MEMORY[0x1E696AD60] stringWithFormat:@"%ld", v5];
    v11 = v10;
    if (a1)
    {
      v12 = @"d";
    }

    else
    {
      v12 = @" day";
    }

    [v10 appendString:v12];
    if (v5 == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = a1;
    }

    if (v13)
    {
      v14 = &stru_1F1D30528;
    }

    else
    {
      v14 = @"s";
    }

    [v11 appendString:v14];
    [v4 addObject:v11];
  }

  if (v7)
  {
    v15 = [MEMORY[0x1E696AD60] stringWithFormat:@"%ld", v7];
    v16 = v15;
    if (a1)
    {
      v17 = @"h";
    }

    else
    {
      v17 = @" hour";
    }

    [v15 appendString:v17];
    if (v7 == 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = a1;
    }

    if (v18)
    {
      v19 = &stru_1F1D30528;
    }

    else
    {
      v19 = @"s";
    }

    [v16 appendString:v19];
    [v4 addObject:v16];
  }

  v20 = v8 - (60 * v9);
  if (v9)
  {
    v21 = [MEMORY[0x1E696AD60] stringWithFormat:@"%ld", v9];
    v22 = v21;
    if (a1)
    {
      v23 = @"m";
    }

    else
    {
      v23 = @" minute";
    }

    [v21 appendString:v23];
    if (v9 == 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = a1;
    }

    if (v24)
    {
      v25 = &stru_1F1D30528;
    }

    else
    {
      v25 = @"s";
    }

    [v22 appendString:v25];
    [v4 addObject:v22];
  }

  if (v20 >= 1.0)
  {
    v26 = [MEMORY[0x1E696AD60] stringWithFormat:@"%ld", v20];
    v27 = v26;
    if (a1)
    {
      v28 = @"s";
    }

    else
    {
      v28 = @" second";
    }

    [v26 appendString:v28];
    if (v20 == 1.0)
    {
      v29 = 1;
    }

    else
    {
      v29 = a1;
    }

    if (v29)
    {
      v30 = &stru_1F1D30528;
    }

    else
    {
      v30 = @"s";
    }

    [v27 appendString:v30];
    [v4 addObject:v27];
  }

  if (!(v7 | v5 | v9) && v20 < 5.0)
  {
    v31 = [MEMORY[0x1E696AD60] stringWithFormat:@"%ld", ((v20 - v20) * 1000.0)];
    v32 = v31;
    if (a1)
    {
      v33 = @"ms";
    }

    else
    {
      v33 = @" millisecond";
    }

    [v31 appendString:v33];
    if (((v20 - v20) * 1000.0) == 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = a1;
    }

    if (v34)
    {
      v35 = &stru_1F1D30528;
    }

    else
    {
      v35 = @"s";
    }

    [v32 appendString:v35];
    [v4 addObject:v32];
  }

  return v4;
}

id SFStringFromTimeInterval(int a1, double a2)
{
  v4 = @", ";
  if (a1)
  {
    v4 = &stru_1F1D30528;
  }

  v5 = v4;
  v6 = SFStringComponentsFromTimeInterval(a1, a2);
  v7 = [v6 componentsJoinedByString:v5];

  return v7;
}

id SFNonBreakingStringFromDeviceName(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = [&unk_1F1D7D808 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v19)
  {
    v18 = *v21;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(&unk_1F1D7D808);
        }

        v3 = *(*(&v20 + 1) + 8 * i);
        v4 = [v3 stringByAppendingString:{@" ", v18}];
        v5 = [@" " stringByAppendingString:v3];
        v6 = [v5 stringByAppendingString:@" "];
        v7 = [v3 stringByReplacingOccurrencesOfString:@" " withString:@" "];
        if ([v1 hasPrefix:v4])
        {
          v8 = [v1 rangeOfString:v4];
          v10 = [v1 stringByReplacingOccurrencesOfString:v3 withString:v7 options:0 range:{v8, v9}];

          v1 = v10;
        }

        if ([v1 hasSuffix:v5])
        {
          v11 = [v1 rangeOfString:v5 options:4];
          v13 = [v1 stringByReplacingOccurrencesOfString:v3 withString:v7 options:0 range:{v11, v12}];

          v1 = v13;
        }

        v14 = v1;
        v15 = [@" " stringByAppendingString:v7];
        v16 = [v15 stringByAppendingString:@" "];
        v1 = [v1 stringByReplacingOccurrencesOfString:v6 withString:v16];
      }

      v19 = [&unk_1F1D7D808 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v19);
  }

  return v1;
}

BOOL SFIsBluetoothEnabled()
{
  if (SFDeviceIsVirtualMachine())
  {
    return 1;
  }

  v6 = 0;
  v1 = [MEMORY[0x1E695D268] controllerInfoAndReturnError:&v6];
  v2 = v6;
  v3 = v2;
  if (v2)
  {
    v4 = framework_log(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      SFIsBluetoothEnabled_cold_1();
    }

    v0 = 0;
  }

  else
  {
    v0 = [v1 bluetoothState] == 5;
  }

  return v0;
}

uint64_t __SFIsDeviceAudioAccessory_block_invoke()
{
  result = MGGetSInt32Answer();
  SFIsDeviceAudioAccessory_result = result == 7;
  return result;
}

uint64_t SFIsGreenTeaDevice(uint64_t a1, uint64_t a2)
{
  if (SFIsGreenTeaDevice_onceToken[0] != -1)
  {
    SFIsGreenTeaDevice_cold_1();
  }

  return SFIsGreenTeaDevice_result;
}

uint64_t __SFIsGreenTeaDevice_block_invoke()
{
  if (MGGetBoolAnswer())
  {
    result = 1;
  }

  else
  {
    result = MGGetBoolAnswer();
  }

  SFIsGreenTeaDevice_result = result;
  return result;
}

uint64_t SFIsClassroomEnabled()
{
  v0 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v1 = [v0 isClassroomEnabled];

  return v1;
}

uint64_t SFIsPureGreenTeaDevice(uint64_t a1, uint64_t a2)
{
  if (SFIsPureGreenTeaDevice_onceToken != -1)
  {
    SFIsPureGreenTeaDevice_cold_1();
  }

  return SFIsPureGreenTeaDevice_result;
}

uint64_t __SFIsPureGreenTeaDevice_block_invoke()
{
  result = MGGetBoolAnswer();
  SFIsPureGreenTeaDevice_result = result;
  return result;
}

uint64_t SFDeviceSupportsForceTouch(uint64_t a1, uint64_t a2)
{
  if (SFDeviceSupportsForceTouch_onceToken != -1)
  {
    SFDeviceSupportsForceTouch_cold_1();
  }

  return SFDeviceSupportsForceTouch_supportsForceTouch;
}

uint64_t __SFDeviceSupportsForceTouch_block_invoke()
{
  result = MGGetBoolAnswer();
  SFDeviceSupportsForceTouch_supportsForceTouch = result;
  return result;
}

uint64_t SFIsDevicePhone(uint64_t a1, uint64_t a2)
{
  if (SFIsDevicePhone_onceToken != -1)
  {
    SFIsDevicePhone_cold_1();
  }

  return SFIsDevicePhone_isPhone;
}

uint64_t __SFIsDevicePhone_block_invoke()
{
  result = MGGetSInt32Answer();
  SFIsDevicePhone_isPhone = result == 1;
  return result;
}

uint64_t SFIsFMFAllowed(uint64_t a1, uint64_t a2)
{
  if (SFIsFMFAllowed_onceToken != -1)
  {
    SFIsFMFAllowed_cold_1();
  }

  return SFIsFMFAllowed_isFMFAllowed;
}

uint64_t __SFIsFMFAllowed_block_invoke()
{
  result = MGGetBoolAnswer();
  SFIsFMFAllowed_isFMFAllowed = result;
  return result;
}

uint64_t SFIsRangingSupported()
{
  PRRangingDeviceClass = getPRRangingDeviceClass();

  return [(objc_class *)PRRangingDeviceClass isSupported];
}

void __SFDeviceModel_block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = SFDeviceModel_result;
  SFDeviceModel_result = v0;

  if (!SFDeviceModel_result)
  {
    SFDeviceModel_result = @"?";
  }
}

id SFDeviceProductVersion(uint64_t a1)
{
  if (SFDeviceProductVersion_onceToken != -1)
  {
    SFDeviceProductVersion_cold_1();
  }

  v2 = SFDeviceProductVersion_result;

  return v2;
}

void __SFDeviceProductVersion_block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = SFDeviceProductVersion_result;
  SFDeviceProductVersion_result = v0;

  if (!SFDeviceProductVersion_result)
  {
    SFDeviceProductVersion_result = @"?";
  }
}

BOOL SFIsiCloudDriveEnabled()
{
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  v1 = [v0 ubiquityIdentityToken];
  v2 = v1 != 0;

  return v2;
}

uint64_t __SFDeviceIsVirtualMachine_block_invoke()
{
  result = MGGetBoolAnswer();
  SFDeviceIsVirtualMachine_result = result;
  return result;
}

uint64_t SFDeviceSupportsLegacyAirDrop()
{
  if (disableAirDrop())
  {
    return 0;
  }

  result = forceOldMode();
  if (result)
  {
    return IsAppleInternalBuild() != 0;
  }

  return result;
}

uint64_t SFDeviceSupportsSiriWatchAuth(uint64_t a1, uint64_t a2)
{
  v2 = SFDeviceClassCodeGet(a1, a2);
  v3 = v2;
  v5 = SFDeviceClassCodeGet(v2, v4);
  if (v3 != 7 && v5 != 1)
  {
    return 0;
  }

  return SFDeviceSupportsAutoUnlock(v5, v6);
}

BOOL SFDeviceSupportsNanoWallet(uint64_t a1, uint64_t a2)
{
  v2 = SFDeviceClassCodeGet(a1, a2);
  v3 = v2;
  v5 = SFDeviceClassCodeGet(v2, v4);
  return v3 == 7 || v5 == 1;
}

uint64_t SFDeviceSupportsUnlockClassC(uint64_t a1, uint64_t a2)
{
  result = SFDeviceIsRealityDevice(a1, a2);
  if (result)
  {

    return _os_feature_enabled_impl();
  }

  return result;
}

uint64_t SFDeviceSupportsMacUnlockPhonePairing(uint64_t a1, uint64_t a2)
{
  v2 = SFDeviceClassCodeGet(a1, a2);
  v3 = v2;
  v5 = SFDeviceClassCodeGet(v2, v4);
  if (v3 != 5 && v5 != 1)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

uint64_t SFDeviceSupportsGuestModeUnlockPairing(uint64_t a1, uint64_t a2)
{
  v2 = SFDeviceClassCodeGet(a1, a2);
  v3 = v2;
  v5 = SFDeviceClassCodeGet(v2, v4);
  v6 = v5;
  result = SFDeviceIsRealityDevice(v5, v7);
  if (v3 == 1 || v6 == 3 || result)
  {
    v9 = _os_feature_enabled_impl();
    if (v9)
    {
      return 1;
    }

    else
    {
      v10 = auto_unlock_log(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "FeatureFlag DeviceSharing/GuestUserHandover is not enabled", v11, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t SFDeviceSupportsTVAudio(uint64_t a1, uint64_t a2)
{
  v2 = SFDeviceClassCodeGet(a1, a2);
  if (SFDeviceIsVirtualMachine() && v2 == 4)
  {
    return 1;
  }

  result = MGGetBoolAnswer();
  if (result)
  {

    return MGGetBoolAnswer();
  }

  return result;
}

uint64_t SFLostMode()
{
  v0 = [(objc_class *)getFMDFMIPManagerClass() sharedInstance];
  v1 = [v0 lostModeIsActive];

  return v1;
}

uint64_t SFManagedLostMode()
{
  v0 = [(objc_class *)getFMDFMIPManagerClass() sharedInstance];
  v1 = [v0 isManagedLostModeActive];

  return v1;
}

uint64_t SFIsRunningUnitTests(uint64_t a1, uint64_t a2)
{
  if (SFIsRunningUnitTests_onceToken != -1)
  {
    SFIsRunningUnitTests_cold_1();
  }

  return SFIsRunningUnitTests_result;
}

void __SFIsRunningUnitTests_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 environment];
  v2 = [v1 objectForKey:@"XCTestBundlePath"];

  if (v2 || NSClassFromString(&cfstr_Xctestcase.isa))
  {
    SFIsRunningUnitTests_result = 1;
  }
}

BOOL SFIsStringURLSafelyConvertible(void *a1)
{
  v1 = a1;
  if ([v1 isFileURL])
  {
    v2 = 0;
  }

  else
  {
    v3 = [v1 scheme];
    if (v3)
    {
      v4 = [v1 host];
      v2 = v4 != 0;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

id SFTruncateAirDropSenderNameForUI(void *a1)
{
  v1 = a1;
  if ([v1 length] <= 0x28)
  {
    v4 = v1;
  }

  else
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = [v1 substringToIndex:39];
    v4 = [v2 stringWithFormat:@"%@…", v3];
  }

  return v4;
}

id SFTruncateAirDropFilenameForUI(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = v1;
  v4 = v3;
  v5 = v3;
  if (v2 >= 0x1A)
  {
    v5 = v3;
    if ([v3 length] >= 0x1A)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = [v4 substringToIndex:10];
      v8 = [v4 substringFromIndex:{objc_msgSend(v4, "length") - 14}];
      v5 = [v6 stringWithFormat:@"%@…%@", v7, v8];
    }
  }

  return v5;
}

void *SFStringIsJSON(void *a1)
{
  if (a1)
  {
    v1 = [a1 dataUsingEncoding:4];
    if (v1)
    {
      v8 = 0;
      v2 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v1 options:0 error:&v8];
      v3 = v8;
    }

    else
    {
      v2 = 0;
      v3 = 0;
    }
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  return v5;
}

uint64_t SFRemovableSystemAppAvailable(uint64_t a1)
{
  v1 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:a1];
  v2 = [v1 appState];
  if ([v2 isInstalled])
  {
    v3 = [v1 appState];
    v4 = [v3 isRestricted] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __SFStoreDemoMode_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", &keyExistsAndHasValidFormat);
  SFStoreDemoMode_result = result != 0;
  return result;
}

id SFCreateLivePhotoBundle(void *a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v9 = a3;
  v10 = [a2 path];
  v11 = [v9 path];

  v13 = 0;
  if (v8 && v10 && v11)
  {
    v14 = airdrop_log(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v11 lastPathComponent];
      v16 = [v10 lastPathComponent];
      *buf = 138412546;
      v29 = v15;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_1A9662000, v14, OS_LOG_TYPE_DEFAULT, "Creating live photo bundle with image %@ and video %@", buf, 0x16u);
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.pvt", v8];
    v13 = [v7 URLByAppendingPathComponent:v17];
    v18 = [MEMORY[0x1E696AC08] defaultManager];
    buf[0] = 0;
    v19 = [v13 path];
    v20 = [v18 fileExistsAtPath:v19 isDirectory:buf];

    if ((v20 & 1) != 0 || buf[0] == 1)
    {
      v21 = [v18 removeItemAtURL:v13 error:0];
    }

    v22 = [objc_alloc(getPFVideoComplementClass(v21)) initWithPathToVideo:v10 pathToImage:v11];
    v27 = 0;
    [v22 writeToBundleAtURL:v13 error:&v27];
    v23 = v27;
    v24 = v23;
    if (v23)
    {
      v25 = airdrop_log(v23);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        SFCreateLivePhotoBundle_cold_1(v13, v24, v25);
      }

      v13 = 0;
    }
  }

  return v13;
}

uint64_t SFShouldShowRepairProxCard(void *a1)
{
  v1 = a1;
  if (SFShouldShowWirelessSplitterProxCard(v1))
  {
    v2 = 1;
  }

  else
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    v2 = 1;
    if (((Int64Ranged - 8194) > 0xE || ((1 << (Int64Ranged - 2)) & 0x7B9B) == 0) && Int64Ranged != 0x10000)
    {
      v5 = [[SFHeadphoneProduct alloc] initWithProductID:Int64Ranged];
      v2 = [(SFHeadphoneProduct *)v5 supportsRepair];
    }
  }

  return v2;
}

BOOL SFShouldShowWirelessSplitterProxCard(void *a1)
{
  v1 = a1;
  v2 = CFPrefs_GetInt64() != 0;

  return v2;
}

uint64_t MGDeviceClassFromSFDeviceClassCode(char a1)
{
  if ((a1 - 1) > 7u)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_1A998EF50[(a1 - 1)];
  }
}

id SFGenerateTypeList(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E696AD60] string];
  objc_msgSend(v2, "appendString:", @"(\n");
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        [v2 appendFormat:@"\t%@\n", v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [v2 appendString:@""]);

  return v2;
}

uint64_t __SFShouldLogSensitiveDescriptions_block_invoke(uint64_t a1, uint64_t a2)
{
  result = IsAppleInternalBuild();
  if (result || (result = CFPrefs_GetInt64()) != 0)
  {
    SFShouldLogSensitiveDescriptions_shouldLog = 1;
  }

  return result;
}

uint64_t SFSupportsNetworkConnection(_OWORD *a1)
{
  v2 = a1[1];
  *v13.val = *a1;
  *&v13.val[4] = v2;
  if (sandbox_check_by_audit_token() == 1 && (v3 = *MEMORY[0x1E695E480], v4 = a1[1], *v13.val = *a1, *&v13.val[4] = v4, (v5 = SecTaskCreateWithAuditToken(v3, &v13)) != 0))
  {
    v6 = v5;
    v7 = SecTaskCopyValueForEntitlement(v5, @"com.apple.security.app-sandbox", 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 BOOLValue] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 1;
    }

    v10 = SecTaskCopyValueForEntitlement(v6, @"com.apple.security.network.client", 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 BOOLValue];
    }

    else
    {
      v11 = 0;
    }

    CFRelease(v6);

    v9 = v8 | v11;
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

void SFFakeFilesAndItemsArrayForURLs(void *a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [MEMORY[0x1E695DF70] array];
  v34 = [MEMORY[0x1E695DF70] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    v9 = @"file";
    do
    {
      v10 = 0;
      v35 = v7;
      do
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v36 + 1) + 8 * v10);
        v12 = [v11 scheme];
        v13 = [v12 isEqualToString:v9];

        if (v13)
        {
          v14 = SFGenerateFileInfoForURL(v11);
          [v4 addObject:v14];
        }

        else
        {
          v15 = [v11 scheme];
          v16 = [v15 isEqualToString:@"assets-library"];

          if (v16)
          {
            v17 = [v11 absoluteString];
            v18 = [v17 lowercaseString];
            v19 = [v18 containsString:@".mov"];

            if (v19)
            {
              v20 = @"/Some/fake/folder/%@.mov";
            }

            else
            {
              v20 = @"/Some/fake/folder/%@.jpg";
            }

            v21 = MEMORY[0x1E695DFF8];
            v22 = MEMORY[0x1E696AEC0];
            v23 = [MEMORY[0x1E696AFB0] UUID];
            [v23 UUIDString];
            v24 = v9;
            v25 = v8;
            v26 = v4;
            v28 = v27 = v5;
            v29 = [v22 stringWithFormat:v20, v28];
            v30 = [v21 fileURLWithPath:v29];

            v5 = v27;
            v4 = v26;
            v8 = v25;
            v9 = v24;

            v7 = v35;
            v31 = SFGenerateFileInfoForURL(v30);
            [v4 addObject:v31];
          }

          else
          {
            [v34 addObject:v11];
          }
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v7);
  }

  *a2 = [v4 copy];
  *a3 = [v34 copy];
}

id SFGenerateFileInfoForURL(void *a1)
{
  v1 = MEMORY[0x1E695DF90];
  v2 = a1;
  v3 = [v1 dictionary];
  v4 = [v2 lastPathComponent];

  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:@"FileName"];
    v5 = [v4 pathExtension];
    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], v5, 0);
    if (PreferredIdentifierForTag)
    {
      [v3 setObject:PreferredIdentifierForTag forKeyedSubscript:@"FileType"];
    }
  }

  return v3;
}

id SFContentTypes(void *a1, void *a2, void *a3, _BYTE *a4, _BYTE *a5)
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v38 = a2;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v45 = [MEMORY[0x1E695DF90] dictionary];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v8)
  {
    v9 = v8;
    v44 = *v51;
    inConformsToUTI = *MEMORY[0x1E6963818];
    v10 = *MEMORY[0x1E69637F8];
    v11 = *MEMORY[0x1E6963850];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v51 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v50 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:@"FileName"];
        v15 = [v14 pathExtension];
        v16 = [v13 objectForKeyedSubscript:@"FileType"];
        if (UTTypeConformsTo(v16, inConformsToUTI))
        {
          v17 = v10;
        }

        else
        {
          v17 = v16;
        }

        v18 = v17;

        if (SFIsImage(v18))
        {
          v19 = v10;
        }

        else
        {
          v19 = v18;
        }

        v20 = v19;

        if (UTTypeConformsTo(v20, v11))
        {
          v21 = v11;
        }

        else
        {
          v21 = v20;
        }

        v22 = v21;

        [v45 setObject:v22 forKeyedSubscript:v15];
        if ([v7 count])
        {
          v23 = [v7 objectForKeyedSubscript:v22];

          if (v23)
          {
            v24 = [v7 objectForKeyedSubscript:v22];
            v25 = [MEMORY[0x1E696AD98] numberWithInteger:{-[__CFString integerValue](v24, "integerValue") + 1}];
            [v7 setObject:v25 forKeyedSubscript:v22];
          }

          else
          {
            v26 = [v7 allKeys];
            v24 = [v26 objectAtIndexedSubscript:0];

            if (SFIsImage(v24) && UTTypeConformsTo(v22, v11) || UTTypeConformsTo(v24, v11) && SFIsImage(v22))
            {
              [v7 setObject:&unk_1F1D7CC28 forKeyedSubscript:v22];
            }

            else
            {
              *a4 = 1;
            }
          }
        }

        else
        {
          [v7 setObject:&unk_1F1D7CC28 forKeyedSubscript:v22];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v9);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v27 = v38;
  v28 = [v27 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v47;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v47 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v46 + 1) + 8 * j);
        if (([v32 isFileURL] & 1) == 0)
        {
          v33 = [v32 scheme];
          if ([v7 count])
          {
            v34 = [v7 objectForKeyedSubscript:v33];

            if (v34)
            {
              v35 = [v7 objectForKeyedSubscript:v33];
              v36 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v35, "integerValue") + 1}];
              [v7 setObject:v36 forKeyedSubscript:v33];
            }

            else
            {
              *a4 = 1;
            }
          }

          else
          {
            *a5 = 1;
            [v7 setObject:&unk_1F1D7CC28 forKeyedSubscript:v33];
          }
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v29);
  }

  *a3 = [v45 copy];

  return v7;
}

BOOL SFIsImage(void *a1)
{
  v1 = a1;
  if (UTTypeConformsTo(v1, *MEMORY[0x1E69637F8]))
  {
    v2 = 1;
  }

  else
  {
    v2 = UTTypeConformsTo(v1, *MEMORY[0x1E6963818]) != 0;
  }

  return v2;
}

uint64_t SFUpTicksDiffFromNowToString(uint64_t a1)
{
  mach_absolute_time();
  UpTicksToSecondsF();
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%fms", v1 * 1000.0];
}

id SFDateToStringRFC3339(void *a1)
{
  v1 = a1;
  v2 = SFRFC3339DateFormatter();
  v3 = [v2 stringFromDate:v1];

  return v3;
}

id SFRFC3339DateFormatter()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v0 setLocale:v1];
  [v0 setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"];
  v2 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v0 setTimeZone:v2];

  return v0;
}

id SFStringToDateRFC3339(void *a1)
{
  v1 = a1;
  v2 = SFRFC3339DateFormatter();
  v3 = [v2 dateFromString:v1];

  return v3;
}

BOOL SFIsCoreType(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (v3 = UTTypeCopyDeclaringBundleURL(v1)) != 0)
  {
    v4 = v3;
    v5 = CFURLCopyFileSystemPath(v3, kCFURLPOSIXPathStyle);
    if (v5)
    {
      v6 = v5;
      v7 = CFEqual(v5, @"/System/Library/CoreServices/MobileCoreTypes.bundle") || CFEqual(v6, @"/System/Library/CoreServices/CoreTypes.bundle");
      CFRelease(v6);
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t SFIsAppStoreLink(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.AppStore"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.TVAppStore"];
  }

  return v2;
}

uint64_t SFIsContact(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isEqualToString:*MEMORY[0x1E69638D8]])
  {
    v5 = 1;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6963798]])
  {
    v5 = [v4 isEqualToString:@"vcf"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t SFIsCredential(void *a1)
{
  v1 = getSFSharablePasswordURLSchemeForAirDrop;
  v2 = a1;
  v3 = v1(v2);
  v4 = [v2 isEqual:v3];

  return v4;
}

uint64_t SFIsiCloudFamilyLink(void *a1)
{
  v1 = a1;
  v17 = 0;
  v2 = [MEMORY[0x1E69635C0] appLinksWithURL:v1 limit:1 error:&v17];
  v3 = v17;
  v4 = [v2 firstObject];

  v6 = airdrop_log(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v7)
    {
      SFIsiCloudFamilyLink_cold_1(v4);
    }

    v8 = [v4 targetApplicationProxy];
    v9 = [v8 bundleIdentifier];
    v10 = v9;
    v11 = @"com.apple.family";
  }

  else
  {
    if (v7)
    {
      SFIsiCloudFamilyLink_cold_2(v1, v3);
    }

    v12 = [MEMORY[0x1E6963608] defaultWorkspace];
    v8 = [v12 URLOverrideForURL:v1];

    v14 = airdrop_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      SFIsiCloudFamilyLink_cold_3(v8);
    }

    v9 = [v8 scheme];
    v10 = v9;
    v11 = @"family";
  }

  v15 = [v9 isEqualToString:v11];

  return v15;
}

uint64_t SFIsManagedConfigurationType(void *a1)
{
  v1 = MEMORY[0x1E69ADFB8];
  v2 = a1;
  v3 = [v1 sharedConnection];
  v4 = [v3 acceptedFileExtensions];
  v5 = [v4 containsObject:v2];

  return v5;
}

uint64_t SFIsKeynoteLiveLink(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:1];
  v2 = [v1 path];
  v3 = [v2 pathComponents];

  if ([v3 count] < 2)
  {
    v6 = 0;
  }

  else
  {
    v4 = [v3 objectAtIndexedSubscript:1];
    v5 = [v4 lowercaseString];
    v6 = [v5 isEqual:@"keynote-live"];
  }

  return v6;
}

uint64_t SFIsMusicLink(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.Music"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.TVMusic"];
  }

  return v2;
}

uint64_t SFIsMusicStoreLink(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.MobileStore"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"com.apple.TVShows"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.TVMovies"];
  }

  return v2;
}

uint64_t SFIsNewsLink(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:1];
  v2 = [v1 scheme];
  v3 = [v2 lowercaseString];

  v4 = [v1 host];
  v5 = [v4 lowercaseString];

  if ([v3 isEqualToString:@"https"])
  {
    v6 = [v5 isEqualToString:@"apple.news"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t SFIsPass(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isEqualToString:@"com.apple.pkpass"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.pkpass-data"))
  {
    v5 = 1;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6963798]])
  {
    v5 = [v4 isEqualToString:@"pkpass"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t SFIsPeerPayment(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isEqualToString:@"com.apple.pkpeerpayment"])
  {
    v5 = 1;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6963798]])
  {
    v5 = [v4 isEqualToString:@"pkpeerpayment"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t SFIsPlaygroundItem(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"playground"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"playgroundbook"];
  }

  return v2;
}

uint64_t SFIsPhotosApp(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.mobileslideshow"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"com.apple.Photos"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.camera"];
  }

  return v2;
}

uint64_t SFIsPasskeyCredentialLink(void *a1)
{
  v1 = a1;
  getSFSharablePasswordClass();
  if (objc_opt_respondsToSelector())
  {
    v2 = [(objc_class *)getSFSharablePasswordClass() safariCredentialURLHasPasskey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SFIsAllowedAirDropCredentialClient(void *a1)
{
  v1 = SFIsAllowedAirDropCredentialClient_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    SFIsAllowedAirDropCredentialClient_cold_1();
  }

  v3 = [SFIsAllowedAirDropCredentialClient_allowedClients containsObject:v2];

  return v3;
}

void __SFIsAllowedAirDropCredentialClient_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.Sharing.AirDrop", @"com.apple.Safari", @"com.apple.Passwords.remoteservice", @"com.apple.Preferences", @"com.apple.SafariTechnologyPreview", @"com.apple.Passwords", @"com.apple.SafariPlatformSupport.Helper", 0}];
  v1 = SFIsAllowedAirDropCredentialClient_allowedClients;
  SFIsAllowedAirDropCredentialClient_allowedClients = v0;
}

id SFSharediCloudDocumentsLinkToAppName(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:1];
  v2 = [v1 path];
  v3 = [v2 pathComponents];

  if ([v3 count] < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 objectAtIndexedSubscript:1];
  }

  return v4;
}

id SFSharablePasswordCreateAirDropURL(uint64_t a1, __SecKey *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v15 = 0;
    v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v15];
    v4 = v15;
    v5 = v4;
    if (v4)
    {
      v6 = airdrop_log(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v5;
        _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "### Failed to archive credential with error: %@", buf, 0xCu);
      }

      v7 = 0;
    }

    else
    {
      if (a2)
      {
        v8 = SFEncryptData(a2, v3);
      }

      else
      {
        v8 = v3;
      }

      v6 = v8;
      if (v8)
      {
        v9 = [v8 base64EncodedStringWithOptions:0];
        v10 = objc_alloc_init(MEMORY[0x1E696AF20]);
        v11 = [MEMORY[0x1E696AF60] queryItemWithName:@"dataBlob" value:v9];
        v16 = v11;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
        [v10 setQueryItems:v12];

        if (a2)
        {
          v13 = @"EncryptedCredential";
        }

        else
        {
          v13 = @"safaricredential";
        }

        [v10 setScheme:v13];
        v7 = [v10 URL];
      }

      else
      {
        v9 = airdrop_log(0);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A9662000, v9, OS_LOG_TYPE_DEFAULT, "### Failed to encrypt data", buf, 2u);
        }

        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id SFEncryptData(__SecKey *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 length];
    v6 = 0;
    if (a1 && v5)
    {
      v7 = SFSplitDataChunks(v4, 0x7CuLL);
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        v13 = *MEMORY[0x1E697B178];
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            error = 0;
            v16 = SecKeyCreateEncryptedData(a1, v13, v15, &error);
            v17 = v16;
            if (error)
            {
              v18 = airdrop_log(v16);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                SFEncryptData_cold_1();
              }

              if (error)
              {
                CFRelease(error);
                error = 0;
              }

              v6 = 0;
              goto LABEL_19;
            }

            [v8 addObject:v16];
          }

          v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v6 = SFJoinDataChunks(v8);
LABEL_19:
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id SFSharablePasswordAirDropURLEncryptedString(uint64_t a1, __SecKey *a2)
{
  if (a2)
  {
    v2 = SFSharablePasswordCreateAirDropURL(a1, a2);
    v3 = [v2 absoluteString];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id SFSharablePasswordForAirDropURL(uint64_t a1, __SecKey *a2)
{
  if (!a1)
  {
    v11 = 0;
    goto LABEL_25;
  }

  v3 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
  v4 = [v3 queryItems];
  v5 = [v4 firstObject];
  v6 = [v5 value];

  if (!v6)
  {
    v9 = airdrop_log(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      SFSharablePasswordForAirDropURL_cold_3();
    }

    v11 = 0;
    goto LABEL_24;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
  v9 = v8;
  if (!v8 || (v8 = [v8 length]) == 0)
  {
    v10 = airdrop_log(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      SFSharablePasswordForAirDropURL_cold_2();
    }

    goto LABEL_12;
  }

  if (!a2)
  {
    v10 = v9;
    goto LABEL_17;
  }

  v10 = SFDecryptData(a2, v9);
  if (v10)
  {
LABEL_17:
    v12 = [(objc_class *)getSFSharablePasswordClass() sharablePasswordFromData:v10];
    v11 = v12;
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v14 = airdrop_log(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        SFSharablePasswordForAirDropURL_cold_1();
      }
    }

    goto LABEL_23;
  }

  v10 = airdrop_log(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "### Failed to decrypt data", v16, 2u);
  }

LABEL_12:
  v11 = 0;
LABEL_23:

LABEL_24:
LABEL_25:

  return v11;
}

id SFDecryptData(__SecKey *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3 || (v3 = [v3 length]) == 0)
  {
    v8 = airdrop_log(v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      SFDecryptData_cold_3();
    }

    goto LABEL_15;
  }

  if (!a1)
  {
    v8 = airdrop_log(v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      SFDecryptData_cold_2();
    }

LABEL_15:
    v17 = 0;
    goto LABEL_22;
  }

  BlockSize = SecKeyGetBlockSize(a1);
  v6 = SFSplitDataChunks(v4, BlockSize);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    v12 = *MEMORY[0x1E697B178];
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        error = 0;
        v15 = SecKeyCreateDecryptedData(a1, v12, v14, &error);
        v16 = v15;
        if (error)
        {
          v18 = airdrop_log(v15);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            SFDecryptData_cold_1();
          }

          if (error)
          {
            CFRelease(error);
            error = 0;
          }

          v17 = 0;
          goto LABEL_21;
        }

        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17 = SFJoinDataChunks(v7);
LABEL_21:

LABEL_22:

  return v17;
}

id SFSharablePasswordForURL(void *a1)
{
  v1 = a1;
  getSFSharablePasswordClass();
  if (objc_opt_respondsToSelector())
  {
    v2 = [(objc_class *)getSFSharablePasswordClass() sharablePasswordFromURL:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id SFSplitDataChunks(void *a1, unint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = 0;
  if (v3 && a2)
  {
    if ([v3 length] <= a2)
    {
      v12[0] = v3;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    }

    else
    {
      v6 = [v3 mutableCopy];
      if ([v6 length])
      {
        do
        {
          v7 = a2;
          if ([v6 length] <= a2)
          {
            v7 = [v6 length];
          }

          v8 = [v6 subdataWithRange:{0, v7}];
          [v4 addObject:v8];
          v9 = [v6 subdataWithRange:{v7, objc_msgSend(v6, "length") - v7}];
          v10 = [v9 mutableCopy];

          v6 = v10;
        }

        while ([v10 length]);
      }

      else
      {
        v10 = v6;
      }

      v5 = v4;
    }
  }

  return v5;
}

id SFJoinDataChunks(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 appendData:{*(*(&v9 + 1) + 8 * i), v9}];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v2;
}

NSObject *SFFullTextFromRTIDataPayload(void *a1)
{
  if (a1)
  {
    v1 = getRTIInputSystemDataPayloadClass;
    v2 = a1;
    v3 = v1();
    v4 = [v2 data];
    v5 = [v2 version];

    v6 = [(objc_class *)v3 payloadWithData:v4 version:v5];

    if (v6)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1F1D30528];
      v9 = [v6 documentState];
      v10 = [v9 documentState];

      if (v10)
      {
        v12 = [v10 contextBeforeInput];

        if (v12)
        {
          v13 = [v10 contextBeforeInput];
          [v8 appendString:v13];
        }

        v14 = [v10 markedText];

        if (v14)
        {
          v15 = [v10 markedText];
          [v8 appendString:v15];
        }

        v16 = [v10 contextAfterInput];

        if (v16)
        {
          v17 = [v10 contextAfterInput];
          [v8 appendString:v17];
        }

        v18 = v8;
      }

      else
      {
        v19 = remote_log(v11);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          SFFullTextFromRTIDataPayload_cold_1();
        }

        v18 = 0;
      }
    }

    else
    {
      v8 = remote_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        SFFullTextFromRTIDataPayload_cold_2();
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t SFMinorWatchHardwareVersion(void *a1)
{
  v1 = [a1 componentsSeparatedByString:{@", "}];
  if ([v1 count] < 2)
  {
    v4 = 0;
    goto LABEL_10;
  }

  v2 = [v1 objectAtIndexedSubscript:1];
  if (![v2 length])
  {
    goto LABEL_7;
  }

  v3 = [v2 intValue];
  v4 = v3;
  if (!v3)
  {
    v5 = auto_unlock_log(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      SFMinorWatchHardwareVersion_cold_1();
    }

LABEL_7:
    v4 = 0;
  }

LABEL_10:
  return v4;
}

id SFSandboxExtensionDataByFileURLPathForURLs(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 isFileURL])
        {
          v9 = [v8 issueSandboxExtensionData];
          v10 = [v8 path];
          [v2 setObject:v9 forKeyedSubscript:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = [v2 copy];

  return v11;
}

BOOL SFRemoteDeviceCanConnectOn5GHz(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:{@", "}];
  if ([v2 count] < 2)
  {
    v6 = 0;
  }

  else
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    v4 = [v3 rangeOfString:@"Watch"];
    if (v5)
    {
      v6 = [v3 substringFromIndex:v4 + v5];
    }

    else
    {
      v6 = 0;
    }
  }

  v7 = SFMinorWatchHardwareVersion(v1);
  if (!v6)
  {
    v10 = 1;
    goto LABEL_17;
  }

  v8 = v7;
  v9 = [v6 integerValue];
  v10 = v9 != 0;
  if (!v9)
  {
    v11 = tethering_log(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      SFRemoteDeviceCanConnectOn5GHz_cold_1();
    }

    goto LABEL_16;
  }

  if (v9 >= 6 && (v9 != 6 || (v8 - 10) >= 4))
  {
    v11 = tethering_log(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v1;
      _os_log_impl(&dword_1A9662000, v11, OS_LOG_TYPE_DEFAULT, "Watch model %@ supports 5GHz.", &v13, 0xCu);
    }

LABEL_16:

    goto LABEL_17;
  }

  v10 = 0;
LABEL_17:

  return v10;
}

id SFRemoteTextInputPayloadFromLegacyAPI(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = a2;
  v4 = v3;
  if (v2 <= 4)
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        v6 = objc_alloc_init(getRTITextOperationsClass());
        v8 = [v6 keyboardOutput];
        [v8 setDeletionCount:1];
        goto LABEL_19;
      }

      if (v2 == 4)
      {
        v5 = objc_alloc_init(getRTITextOperationsClass());
        v6 = v5;
        if (v4)
        {
          v7 = [v5 keyboardOutput];
          v8 = v7;
          v9 = v4;
LABEL_11:
          [v7 setInsertionText:v9];
LABEL_19:

LABEL_23:
          v15 = objc_alloc_init(getRTIInputSystemDataPayloadClass());
          v16 = [v15 setTextOperations:v6];
          RTIDataPayloadClass = getRTIDataPayloadClass(v16);
          v18 = [v15 data];
          v19 = [RTIDataPayloadClass payloadWithData:v18];

          goto LABEL_32;
        }

        v13 = remote_log(v5);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          SFRemoteTextInputPayloadFromLegacyAPI_cold_3();
        }

        goto LABEL_28;
      }

LABEL_16:
      v6 = remote_log(v3);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        SFRemoteTextInputPayloadFromLegacyAPI_cold_4();
      }

      goto LABEL_29;
    }

    v10 = objc_alloc_init(getRTITextOperationsClass());
    v6 = v10;
    v11 = &stru_1F1D30528;
LABEL_22:
    [v10 setTextToAssert:v11];
    goto LABEL_23;
  }

  switch(v2)
  {
    case 5:
      v12 = objc_alloc_init(getRTITextOperationsClass());
      v6 = v12;
      if (v4)
      {
LABEL_21:
        v10 = v6;
        v11 = v4;
        goto LABEL_22;
      }

      v13 = remote_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        SFRemoteTextInputPayloadFromLegacyAPI_cold_2();
      }

      break;
    case 8:
      v14 = objc_alloc_init(getRTITextOperationsClass());
      v6 = v14;
      if (v4)
      {
        goto LABEL_21;
      }

      v13 = remote_log(v14);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        SFRemoteTextInputPayloadFromLegacyAPI_cold_1();
      }

      break;
    case 9:
      v6 = objc_alloc_init(getRTITextOperationsClass());
      v7 = [v6 keyboardOutput];
      v8 = v7;
      v9 = @"\n";
      goto LABEL_11;
    default:
      goto LABEL_16;
  }

LABEL_28:

LABEL_29:
  v21 = remote_log(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    SFRemoteTextInputPayloadFromLegacyAPI_cold_5();
  }

  v19 = 0;
LABEL_32:

  return v19;
}

void SFRemoteTextInputPayloadToLegacyAPI(void *a1, char *a2, void *a3)
{
  v5 = a1;
  if (v5)
  {
    RTIInputSystemDataPayloadClass = getRTIInputSystemDataPayloadClass();
    v7 = [v5 data];
    v8 = -[objc_class payloadWithData:version:](RTIInputSystemDataPayloadClass, "payloadWithData:version:", v7, [v5 version]);

    v9 = [v8 textOperations];
    v10 = [v9 keyboardOutput];
    v11 = [v10 insertionText];

    if (v11 && [v11 length] && !objc_msgSend(v11, "isEqualToString:", @"\n"))
    {
      v19 = 4;
      goto LABEL_20;
    }

    v12 = [v8 textOperations];
    v13 = [v12 keyboardOutput];
    v14 = [v13 deletionCount];

    if (v14 == 1)
    {

      v15 = 3;
LABEL_16:
      *a2 = v15;
      goto LABEL_27;
    }

    v18 = [v8 textOperations];
    v11 = [v18 textToAssert];

    if (v11)
    {
      if ([v11 isEqual:&stru_1F1D30528])
      {

        v15 = 2;
        goto LABEL_16;
      }

      if ([v11 length])
      {
        v19 = 5;
LABEL_20:
        v20 = [v11 copy];

        *a2 = v19;
        if (v20)
        {
          *a3 = [v20 copy];
        }

        goto LABEL_27;
      }
    }

    v21 = [v8 textOperations];
    v22 = [v21 keyboardOutput];
    v23 = [v22 insertionText];

    if (v23)
    {
      v24 = [v23 isEqualToString:@"\n"];
      v25 = v24;
      if (v24)
      {
        v26 = 9;
      }

      else
      {
        v26 = 0;
      }

      *a2 = v26;
      if (v25)
      {
        goto LABEL_27;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v8 = remote_log(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "### Cannot convert RTI payload: no payload", v27, 2u);
    }
  }

  *a2 = 0;
LABEL_10:
  v17 = remote_log(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    SFRemoteTextInputPayloadToLegacyAPI_cold_1();
  }

LABEL_27:
}

id SFTextInputDataForRTIDataPayload(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v1, "version")}];
    [v2 setObject:v3 forKeyedSubscript:@"v"];

    v4 = [v1 data];

    if (v4)
    {
      v5 = [v1 data];
      [v2 setObject:v5 forKeyedSubscript:@"d"];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id SFRTIDataPayloadForData(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"d"];
  v3 = [v1 objectForKeyedSubscript:@"v"];
  v4 = v3;
  if (v1 && v2 | v3)
  {
    v6 = [getRTIDataPayloadClass(v3) payloadWithData:v2 version:{objc_msgSend(v3, "unsignedLongValue")}];
    v5 = v6;
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v8 = remote_log(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        SFRTIDataPayloadForData_cold_1();
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

__CFString *SFTextInputDataLogString(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"d"];
  v3 = [v1 objectForKeyedSubscript:@"v"];

  if (v2)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu bytes, v=%lu", objc_msgSend(v2, "length"), objc_msgSend(v3, "unsignedLongValue")];
  }

  else
  {
    v4 = @"No data";
  }

  return v4;
}

id SFSharediCloudDocumentsLinkToFileName(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:1];
  v2 = [v1 fragment];

  return v2;
}

uint64_t SFiTunesStoreLinkType(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:1];
  v2 = [v1 path];
  v3 = [v2 pathComponents];

  if ([v3 count] < 3)
  {
    v5 = 0;
  }

  else
  {
    v4 = [v3 objectAtIndexedSubscript:2];
    v5 = [v4 lowercaseString];
  }

  if ([v5 isEqual:@"movie"])
  {
    v6 = 2;
  }

  else if ([v5 isEqual:@"tv-season"])
  {
    v6 = 3;
  }

  else if ([v5 isEqual:@"audiobook"])
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void _SFShimSetIsContentManaged(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v3 setIsContentManaged:a2];
  }

  else
  {
    [v3 setSourceIsManaged:a2];
  }
}

void _SFShimSetUnderbarIsContentManaged(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v3 _setIsContentManaged:a2];
  }

  else
  {
    [v3 _setSourceIsManaged:a2];
  }
}

id SFAirDropDownloadsURL()
{
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = 0;
  v1 = [v0 URLForDirectory:15 inDomain:1 appropriateForURL:0 create:1 error:&v6];
  v2 = v6;

  if (!v1)
  {
    v4 = framework_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      SFAirDropDownloadsURL_cold_1();
    }
  }

  return v1;
}

id SFRealpathForFileURL(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 isFileURL];
  if ((v2 & 1) == 0)
  {
    v7 = framework_log(v2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      SFRealpathForFileURL_cold_1();
    }

    goto LABEL_12;
  }

  v3 = [v1 fileSystemRepresentation];
  if (!v3)
  {
    v7 = framework_log(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      SFRealpathForFileURL_cold_4();
    }

    goto LABEL_12;
  }

  v4 = v3;
  if (!*v3)
  {
    v7 = framework_log(v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      SFRealpathForFileURL_cold_3();
    }

LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  v5 = realpath_DARWIN_EXTSN(v3, 0);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __SFRealpathForFileURL_block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v5;
  v6 = _Block_copy(aBlock);
  v7 = v6;
  if (v5)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
  }

  else
  {
    v10 = framework_log(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = __error();
      SFRealpathForFileURL_cold_2(v4, v11, buf, v10);
    }

    v8 = 0;
  }

  (*(v7 + 16))(v7);
LABEL_13:

  return v8;
}

uint64_t SFCopyTypeIdentifierForColorArrayAndModelCode(const __CFArray *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_16;
  }

  if (CFArrayGetCount(a1) == 3)
  {
    v4 = 0;
    v19 = 0;
    v18 = 0;
    do
    {
      *(&v18 + v4) = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
      if (ValueAtIndex)
      {
        v6 = ValueAtIndex;
        v7 = CFGetTypeID(ValueAtIndex);
        if (v7 == CFNumberGetTypeID())
        {
          valuePtr = 0;
          if (CFNumberGetValue(v6, kCFNumberIntType, &valuePtr))
          {
            *(&v18 + v4) = valuePtr;
          }
        }
      }

      ++v4;
    }

    while (v4 != 3);
    v8 = _UTHardwareColorMakeWithRGBComponents();
    goto LABEL_10;
  }

  if (CFArrayGetCount(a1) != 1 || (v10 = CFArrayGetValueAtIndex(a1, 0)) == 0 || (v11 = v10, v12 = CFGetTypeID(v10), v12 != CFNumberGetTypeID()) || (v16 = 0, !CFNumberGetValue(v11, kCFNumberSInt32Type, &v16)))
  {
LABEL_16:
    v9 = [MEMORY[0x1E6982C40] _typeWithDeviceModelCode:a2];
    goto LABEL_17;
  }

  v8 = _UTHardwareColorMakeWithIndex();
LABEL_10:
  v9 = [MEMORY[0x1E6982C40] _typeWithDeviceModelCode:a2 enclosureColor:v8];
LABEL_17:
  v13 = v9;
  v14 = [v9 identifier];

  return v14;
}

uint64_t SFCreateThumbnailForAirDropItem(void *a1, void *a2, unsigned int a3, double a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  mach_absolute_time();
  v9 = [v8 pathExtension];
  v10 = [v9 length];
  v11 = v10 == 0;
  v12 = airdrop_log(v10);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v11)
  {
    if (v13)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_1A9662000, v12, OS_LOG_TYPE_INFO, "Genrating thumbnail for UTI: %@", &buf, 0xCu);
    }

    v14 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithType:v7];
  }

  else
  {
    if (v13)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_1A9662000, v12, OS_LOG_TYPE_INFO, "Generating thumbnail for path extension: %@", &buf, 0xCu);
    }

    v14 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithFileExtension:v9];
  }

  v15 = v14;
  if (v14)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v34 = 0x2020000000;
    v35 = 0;
    v16 = dispatch_semaphore_create(0);
    v17 = dispatch_get_global_queue(a3, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __SFCreateThumbnailForAirDropItem_block_invoke;
    block[3] = &unk_1E788C080;
    v28 = v15;
    v18 = v16;
    v29 = v18;
    p_buf = &buf;
    dispatch_async(v17, block);

    v19 = dispatch_time(0, (a4 * 1000000.0));
    v20 = dispatch_semaphore_wait(v18, v19);
    if (v20)
    {
      v21 = airdrop_log(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        SFCreateThumbnailForAirDropItem_cold_1();
      }
    }

    v22 = airdrop_log(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      mach_absolute_time();
      v23 = UpTicksToMilliseconds();
      *v31 = 134217984;
      v32 = v23;
      _os_log_impl(&dword_1A9662000, v22, OS_LOG_TYPE_DEFAULT, "Thumbnail generation took %ld ms", v31, 0xCu);
    }

    v24 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v25 = airdrop_log(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      SFCreateThumbnailForAirDropItem_cold_2();
    }

    v24 = 0;
  }

  return v24;
}

void sub_1A96ABDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SFCreateThumbnailForAirDropItem_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8A70]];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SFCreateThumbnailForAirDropItem_block_invoke_2;
  v5[3] = &unk_1E788C058;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = v2;
  v8 = *(a1 + 48);
  v4 = v2;
  [v3 getCGImageForImageDescriptor:v4 completion:v5];
}

void __SFCreateThumbnailForAirDropItem_block_invoke_2(uint64_t a1, CGImage *a2)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __SFCreateThumbnailForAirDropItem_block_invoke_3;
  aBlock[3] = &unk_1E788B198;
  v8 = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = CGImageRetain(a2);
  }

  else
  {
    v6 = airdrop_log(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __SFCreateThumbnailForAirDropItem_block_invoke_2_cold_1();
    }
  }

  v5[2](v5);
}

id SFCurrentAppName()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 localizedInfoDictionary];
  v2 = *MEMORY[0x1E695E120];
  v3 = [v1 objectForKey:*MEMORY[0x1E695E120]];

  if (!v3)
  {
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v3 = [v4 objectForInfoDictionaryKey:v2];

    if (!v3)
    {
      v5 = [MEMORY[0x1E696AAE8] mainBundle];
      v3 = [v5 objectForInfoDictionaryKey:@"CFBundleName"];
    }
  }

  return v3;
}

void SFCurrentAppIconData(void *a1, double a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E69A8A00] applicationIcon];
  v5 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:40.0 scale:{40.0, fmax(a2, 1.0)}];
  v6 = [v4 imageForDescriptor:v5];
  v7 = v6;
  if (v6 && ([v6 placeholder] & 1) == 0)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __SFCurrentAppIconData_block_invoke;
    v13[3] = &unk_1E788B318;
    v8 = &v15;
    v15 = v3;
    v14 = v7;
    v10 = v3;
    sf_dispatch_on_main_queue(v13);
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __SFCurrentAppIconData_block_invoke_2;
    v11[3] = &unk_1E788C0A8;
    v8 = &v12;
    v12 = v3;
    v9 = v3;
    [v4 getImageForImageDescriptor:v5 completion:v11];
  }
}

void __SFCurrentAppIconData_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = SFDataFromCGImage([*(a1 + 32) CGImage]);
  (*(v1 + 16))(v1, v2);
}

void __SFCurrentAppIconData_block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = SFDataFromCGImage([a2 CGImage]);
  }

  else
  {
    v3 = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __SFCurrentAppIconData_block_invoke_3;
  v6[3] = &unk_1E788B318;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t SFPerformDataMigrationIfNeeded()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getDMPerformMigrationIfNeededSymbolLoc_ptr;
  v6 = getDMPerformMigrationIfNeededSymbolLoc_ptr;
  if (!getDMPerformMigrationIfNeededSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getDMPerformMigrationIfNeededSymbolLoc_block_invoke;
    v2[3] = &unk_1E788A938;
    v2[4] = &v3;
    __getDMPerformMigrationIfNeededSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    SFPerformDataMigrationIfNeeded_cold_1();
  }

  return v0();
}

void sub_1A96AC44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SFSecureStandardPropertyListClasses()
{
  v14 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  return [v14 setWithObjects:{v13, v12, v11, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
}

id SFSaveDataToTempFile(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a3;
  v10 = a4;
  v11 = MEMORY[0x1E6982C40];
  v12 = a1;
  v13 = [v11 _typeWithIdentifier:a2 allowUndeclared:1];
  if ([v9 length])
  {
    v14 = [v9 stringByAppendingPathExtensionForType:v13];
    v15 = [v14 mutableCopy];

    [(__CFString *)v15 replaceOccurrencesOfString:@"/" withString:@"-" options:0 range:0, [(__CFString *)v15 length]];
    [(__CFString *)v15 replaceOccurrencesOfString:@":" withString:@"-" options:0 range:0, [(__CFString *)v15 length]];
    if (a5)
    {
      v16 = [(__CFString *)v15 pathExtension];
      if ([v16 length])
      {
        v17 = [(__CFString *)v15 stringByDeletingPathExtension];
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%ld.%@", v17, a5, v16];
      }

      else
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%ld.%@", v15, a5, v16];
      }
    }

    else
    {
      v18 = v15;
    }
  }

  else
  {
    v19 = [v13 preferredFilenameExtension];
    if (v19)
    {
      v15 = v19;
    }

    else
    {
      v15 = @"data";
    }

    v20 = MEMORY[0x1E696AEC0];
    v21 = [v13 localizedDescription];
    v18 = [v20 stringWithFormat:@"%@-%@-%ld.%@", v21, v10, a5, v15];
  }

  v22 = NSTemporaryDirectory();
  v23 = [v22 stringByAppendingPathComponent:v18];
  [v12 writeToFile:v23 atomically:1];

  v24 = [MEMORY[0x1E695DFF8] fileURLWithPath:v23];

  return v24;
}

__CFString *SFAirDropModelImageNameFromModelString(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 hasPrefix:@"iPhone"])
  {
    if ([v1 isEqualToString:{@"iPhone8, 4"}])
    {
      v2 = @"iPhoneSE";
      goto LABEL_35;
    }

    if ([v1 isEqualToString:{@"iPhone10, 3"}])
    {
      v2 = @"iPhoneX";
      goto LABEL_35;
    }

    v2 = @"iPhoneX";
    if (([v1 isEqualToString:{@"iPhone10, 6"}] & 1) == 0)
    {
      v3 = [v1 stringByReplacingOccurrencesOfString:@"iPhone" withString:&stru_1F1D30528];
      v7 = [v3 componentsSeparatedByString:{@", "}];
      v8 = [v7 firstObject];
      v9 = [v8 integerValue];

      v10 = @"iPhone8";
      if ((v9 - 15) >= 2)
      {
        v11 = @"iPhoneX";
      }

      else
      {
        v11 = @"iPhone14Pro";
      }

      if (v9 >= 0xB)
      {
        v10 = v11;
      }

      if (v9 >= 7)
      {
        v2 = v10;
      }

      else
      {
        v2 = @"iPhoneSE";
      }

LABEL_34:
    }
  }

  else
  {
    if ([v1 hasPrefix:@"iPad"])
    {
      v3 = [v1 stringByReplacingOccurrencesOfString:@"iPad" withString:&stru_1F1D30528];
      v4 = [v3 componentsSeparatedByString:{@", "}];
      v5 = [v4 firstObject];
      v6 = [v5 integerValue];

      v2 = @"iPadPro";
      if (v6 != 8 && v6 <= 11)
      {
        if ([&unk_1F1D7D820 containsObject:v1])
        {
          v2 = @"iPadmini";
        }

        else
        {
          v2 = @"iPad";
        }
      }

      goto LABEL_34;
    }

    if ([v1 hasPrefix:@"MacPro"])
    {
      if ([v1 isEqualToString:{@"MacPro6, 1"}])
      {
        v2 = @"MacPro2";
        goto LABEL_35;
      }

      v3 = [v1 stringByReplacingOccurrencesOfString:@"MacPro" withString:&stru_1F1D30528];
      v12 = [v3 componentsSeparatedByString:{@", "}];
      v13 = [v12 firstObject];
      v14 = [v13 integerValue];

      if (v14 >= 6)
      {
        v2 = @"MacPro3";
      }

      else
      {
        v2 = @"MacPro1";
      }

      goto LABEL_34;
    }

    if ([v1 isEqualToString:{@"Mac14, 13"}] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac14,14") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac13,1") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac13,2") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac16,9") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac15,14"))
    {
      v2 = @"MacStudio";
      goto LABEL_35;
    }

    if ([v1 isEqualToString:{@"Mac14, 2"}] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac14,15") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac15,12") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac15,13") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac16,12") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac16,13"))
    {
      v2 = @"MacBookAir2";
      goto LABEL_35;
    }

    if ([v1 isEqualToString:{@"Mac14, 7"}] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"MacBookPro17,1"))
    {
      v2 = @"MacBookPro2";
      goto LABEL_35;
    }

    if ([v1 isEqualToString:{@"MacBookPro18, 1"}] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"MacBookPro18,2") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"MacBookPro18,3") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"MacBookPro18,4"))
    {
      goto LABEL_52;
    }

    if ([v1 isEqualToString:{@"iMac21, 1"}] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"iMac21,2") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac15,4") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac15,5"))
    {
      v2 = @"iMac2";
      goto LABEL_35;
    }

    if ([v1 isEqualToString:{@"Macmini9, 1"}] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac14,3") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac14,12"))
    {
      v2 = @"Macmini2";
      goto LABEL_35;
    }

    if ([v1 isEqualToString:{@"Mac14, 5"}] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac14,6") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac14,9") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac14,10") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac15,3"))
    {
LABEL_52:
      v2 = @"MacBookPro3";
      goto LABEL_35;
    }

    if ([v1 isEqualToString:{@"Mac15, 6"}] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac15,8") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac15,10") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac15,7") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac15,9") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac15,11") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac16,6") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac16,8") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac16,5") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac16,7") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Mac16,1"))
    {
      v2 = @"MacBookProBlack";
    }

    else if ([v1 isEqualToString:{@"Mac14, 8"}])
    {
      v2 = @"MacPro3";
    }

    else if ([v1 isEqualToString:{@"RealityDevice14, 1"}])
    {
      v2 = @"VisionPro";
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v16 = [&unk_1F1D7D838 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v23;
LABEL_85:
        v19 = 0;
        while (1)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(&unk_1F1D7D838);
          }

          v20 = *(*(&v22 + 1) + 8 * v19);
          if ([v1 hasPrefix:v20])
          {
            break;
          }

          if (v17 == ++v19)
          {
            v16 = [&unk_1F1D7D838 countByEnumeratingWithState:&v22 objects:v26 count:16];
            v17 = v16;
            if (v16)
            {
              goto LABEL_85;
            }

            goto LABEL_93;
          }
        }

        v16 = v20;
        v2 = v16;
        if (v16)
        {
          goto LABEL_35;
        }
      }

LABEL_93:
      v21 = airdrop_log(v16);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        SFAirDropModelImageNameFromModelString_cold_1();
      }

      v2 = 0;
    }
  }

LABEL_35:

  return v2;
}

Class initPRRangingDevice()
{
  if (ProximityLibrary_sOnce != -1)
  {
    initPRRangingDevice_cold_1();
  }

  result = objc_getClass("PRRangingDevice");
  classPRRangingDevice = result;
  getPRRangingDeviceClass = PRRangingDeviceFunction;
  return result;
}

void *__ProximityLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Proximity.framework/Proximity", 2);
  ProximityLibrary_sLib = result;
  return result;
}

Class initFMDFMIPManager()
{
  if (FindMyDeviceLibrary_sOnce != -1)
  {
    initFMDFMIPManager_cold_1();
  }

  result = objc_getClass("FMDFMIPManager");
  classFMDFMIPManager = result;
  getFMDFMIPManagerClass = FMDFMIPManagerFunction;
  return result;
}

void *__FindMyDeviceLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/FindMyDevice.framework/FindMyDevice", 2);
  FindMyDeviceLibrary_sLib = result;
  return result;
}

Class initPFVideoComplement()
{
  if (PhotosFormatsLibrary_sOnce != -1)
  {
    initPFVideoComplement_cold_1();
  }

  result = objc_getClass("PFVideoComplement");
  classPFVideoComplement = result;
  getPFVideoComplementClass = PFVideoComplementFunction;
  return result;
}

void *__PhotosFormatsLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/PhotosFormats.framework/PhotosFormats", 2);
  PhotosFormatsLibrary_sLib = result;
  return result;
}

id initValSFSharablePasswordURLSchemeForAirDrop(uint64_t a1)
{
  if (softLinkOnceSFSharablePasswordURLSchemeForAirDrop != -1)
  {
    initValSFSharablePasswordURLSchemeForAirDrop_cold_1();
  }

  v2 = constantValSFSharablePasswordURLSchemeForAirDrop;

  return v2;
}

void __initValSFSharablePasswordURLSchemeForAirDrop_block_invoke()
{
  if (SafariFoundationLibrary_sOnce != -1)
  {
    __initValSFSharablePasswordURLSchemeForAirDrop_block_invoke_cold_1();
  }

  v0 = dlsym(SafariFoundationLibrary_sLib, "SFSharablePasswordURLSchemeForAirDrop");
  if (v0)
  {
    objc_storeStrong(&constantValSFSharablePasswordURLSchemeForAirDrop, *v0);
  }

  getSFSharablePasswordURLSchemeForAirDrop = SFSharablePasswordURLSchemeForAirDropFunction;
}

void *__SafariFoundationLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SafariFoundation.framework/SafariFoundation", 2);
  SafariFoundationLibrary_sLib = result;
  return result;
}

Class initSFSharablePassword()
{
  if (SafariFoundationLibrary_sOnce != -1)
  {
    __initValSFSharablePasswordURLSchemeForAirDrop_block_invoke_cold_1();
  }

  result = objc_getClass("SFSharablePassword");
  classSFSharablePassword = result;
  getSFSharablePasswordClass = SFSharablePasswordFunction;
  return result;
}

Class initRTIInputSystemDataPayload()
{
  if (RemoteTextInputLibrary_sOnce != -1)
  {
    initRTIInputSystemDataPayload_cold_1();
  }

  result = objc_getClass("RTIInputSystemDataPayload");
  classRTIInputSystemDataPayload = result;
  getRTIInputSystemDataPayloadClass = RTIInputSystemDataPayloadFunction;
  return result;
}

void *__RemoteTextInputLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/RemoteTextInput.framework/RemoteTextInput", 2);
  RemoteTextInputLibrary_sLib = result;
  return result;
}

Class initRTITextOperations()
{
  if (RemoteTextInputLibrary_sOnce != -1)
  {
    initRTIInputSystemDataPayload_cold_1();
  }

  result = objc_getClass("RTITextOperations");
  classRTITextOperations = result;
  getRTITextOperationsClass = RTITextOperationsFunction;
  return result;
}

Class initRTIDataPayload()
{
  if (RemoteTextInputLibrary_sOnce != -1)
  {
    initRTIInputSystemDataPayload_cold_1();
  }

  result = objc_getClass("RTIDataPayload");
  classRTIDataPayload = result;
  getRTIDataPayloadClass = RTIDataPayloadFunction;
  return result;
}

void *__getDMPerformMigrationIfNeededSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!DataMigrationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __DataMigrationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E788C0C8;
    v6 = 0;
    DataMigrationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = DataMigrationLibraryCore_frameworkLibrary;
  if (!DataMigrationLibraryCore_frameworkLibrary)
  {
    __getDMPerformMigrationIfNeededSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "DMPerformMigrationIfNeeded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDMPerformMigrationIfNeededSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DataMigrationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  DataMigrationLibraryCore_frameworkLibrary = result;
  return result;
}

__CFString *SFAirDropTransferUserResponseToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E788C258[a1];
  }
}

__CFString *SFAirDropTransferFailureReasonToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E788C278[a1 - 1];
  }
}

void sub_1A96AFF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A96B260C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_sync_exit(v14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A96B3258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A96B3978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __SFAppleIDClientCopyCertificate_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = NSErrorToOSStatus();
  (*(v5 + 16))(v5, a2, v6);
  v7 = *(a1 + 32);

  return [v7 invalidate];
}

uint64_t __SFAppleIDClientCopyIdentity_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = NSErrorToOSStatus();
  (*(v5 + 16))(v5, a2, v6);
  v7 = *(a1 + 32);

  return [v7 invalidate];
}

uint64_t __SFAppleIDClientCopyMyAppleID_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = [a2 appleID];
  v8 = NSErrorToOSStatus();

  (*(v5 + 16))(v5, v7, v8);
  v9 = *(a1 + 32);

  return [v9 invalidate];
}

uint64_t OUTLINED_FUNCTION_6_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    a2 = result;
  }

  *v2 = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_7(unsigned __int16 a1)
{

  return DebugGetErrorString();
}

void OUTLINED_FUNCTION_10(uint64_t a1)
{
  v3 = *(*(v1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = a1;
}

void OUTLINED_FUNCTION_13(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14)
{
  a13 = a1;
  a14 = v15;

  dispatch_async(v14, &a9);
}

void OUTLINED_FUNCTION_18(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14)
{
  a13 = a1;
  a14 = -6762;

  dispatch_async(v14, &a9);
}

uint64_t OUTLINED_FUNCTION_19()
{

  return [v0 setObject:v1 forKeyedSubscript:?];
}

uint64_t OUTLINED_FUNCTION_20(void *a1, const char *a2)
{

  return [a1 setDispatchQueue:v2];
}

id OUTLINED_FUNCTION_21(uint64_t a1, void *a2)
{

  return a2;
}

void sub_1A96B6670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);
  objc_sync_exit(v11);
  _Unwind_Resume(a1);
}

void sub_1A96B79A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 56));
  _Unwind_Resume(a1);
}

Class initACAccountStore()
{
  if (AccountsLibrary_sOnce != -1)
  {
    initACAccountStore_cold_1();
  }

  result = objc_getClass("ACAccountStore");
  classACAccountStore = result;
  getACAccountStoreClass = ACAccountStoreFunction;
  return result;
}

void *__AccountsLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Accounts.framework/Accounts", 2);
  AccountsLibrary_sLib = result;
  return result;
}

Class initTRSetupCompanionAuthenticationRequest()
{
  if (TouchRemoteLibrary_sOnce != -1)
  {
    initTRSetupCompanionAuthenticationRequest_cold_1();
  }

  result = objc_getClass("TRSetupCompanionAuthenticationRequest");
  classTRSetupCompanionAuthenticationRequest = result;
  getTRSetupCompanionAuthenticationRequestClass = TRSetupCompanionAuthenticationRequestFunction;
  return result;
}

void *__TouchRemoteLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/TouchRemote.framework/TouchRemote", 2);
  TouchRemoteLibrary_sLib = result;
  return result;
}

Class initTRSetupProxyDeviceRequest()
{
  if (TouchRemoteLibrary_sOnce != -1)
  {
    initTRSetupCompanionAuthenticationRequest_cold_1();
  }

  result = objc_getClass("TRSetupProxyDeviceRequest");
  classTRSetupProxyDeviceRequest = result;
  getTRSetupProxyDeviceRequestClass = TRSetupProxyDeviceRequestFunction;
  return result;
}

Class initTRSetupProxyAuthenticationRequest()
{
  if (TouchRemoteLibrary_sOnce != -1)
  {
    initTRSetupCompanionAuthenticationRequest_cold_1();
  }

  result = objc_getClass("TRSetupProxyAuthenticationRequest");
  classTRSetupProxyAuthenticationRequest = result;
  getTRSetupProxyAuthenticationRequestClass = TRSetupProxyAuthenticationRequestFunction;
  return result;
}

Class initHMDeviceSetupOperationHandler()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    initHMDeviceSetupOperationHandler_cold_1();
  }

  result = objc_getClass("HMDeviceSetupOperationHandler");
  classHMDeviceSetupOperationHandler = result;
  getHMDeviceSetupOperationHandlerClass = HMDeviceSetupOperationHandlerFunction;
  return result;
}

void *__HomeKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib = result;
  return result;
}

Class initTRAnisetteDataProvider()
{
  if (TouchRemoteLibrary_sOnce != -1)
  {
    initTRSetupCompanionAuthenticationRequest_cold_1();
  }

  result = objc_getClass("TRAnisetteDataProvider");
  classTRAnisetteDataProvider = result;
  getTRAnisetteDataProviderClass = TRAnisetteDataProviderFunction;
  return result;
}

Class initTRSetupAuthenticationResponse()
{
  if (TouchRemoteLibrary_sOnce != -1)
  {
    initTRSetupCompanionAuthenticationRequest_cold_1();
  }

  result = objc_getClass("TRSetupAuthenticationResponse");
  classTRSetupAuthenticationResponse = result;
  getTRSetupAuthenticationResponseClass = TRSetupAuthenticationResponseFunction;
  return result;
}

Class initAKDevice()
{
  if (AuthKitLibrary_sOnce != -1)
  {
    initAKDevice_cold_1();
  }

  result = objc_getClass("AKDevice");
  classAKDevice = result;
  getAKDeviceClass = AKDeviceFunction;
  return result;
}

void *__AuthKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AuthKit.framework/AuthKit", 2);
  AuthKitLibrary_sLib = result;
  return result;
}

Class initTRSetupProxyDeviceResponse()
{
  if (TouchRemoteLibrary_sOnce != -1)
  {
    initTRSetupCompanionAuthenticationRequest_cold_1();
  }

  result = objc_getClass("TRSetupProxyDeviceResponse");
  classTRSetupProxyDeviceResponse = result;
  getTRSetupProxyDeviceResponseClass = TRSetupProxyDeviceResponseFunction;
  return result;
}

Class initAKAppleIDAuthenticationContext()
{
  if (AuthKitLibrary_sOnce != -1)
  {
    initAKDevice_cold_1();
  }

  result = objc_getClass("AKAppleIDAuthenticationContext");
  classAKAppleIDAuthenticationContext = result;
  getAKAppleIDAuthenticationContextClass = AKAppleIDAuthenticationContextFunction;
  return result;
}

Class initAKAppleIDAuthenticationController()
{
  if (AuthKitLibrary_sOnce != -1)
  {
    initAKDevice_cold_1();
  }

  result = objc_getClass("AKAppleIDAuthenticationController");
  classAKAppleIDAuthenticationController = result;
  getAKAppleIDAuthenticationControllerClass = AKAppleIDAuthenticationControllerFunction;
  return result;
}

id initValSSServerErrorDomain(uint64_t a1)
{
  if (softLinkOnceSSServerErrorDomain != -1)
  {
    initValSSServerErrorDomain_cold_1();
  }

  v2 = constantValSSServerErrorDomain;

  return v2;
}

void __initValSSServerErrorDomain_block_invoke()
{
  if (StoreServicesLibrary_sOnce != -1)
  {
    __initValSSServerErrorDomain_block_invoke_cold_1();
  }

  v0 = dlsym(StoreServicesLibrary_sLib, "SSServerErrorDomain");
  if (v0)
  {
    objc_storeStrong(&constantValSSServerErrorDomain, *v0);
  }

  getSSServerErrorDomain = SSServerErrorDomainFunction;
}

void *__StoreServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/StoreServices.framework/StoreServices", 2);
  StoreServicesLibrary_sLib = result;
  return result;
}

id initValAKAuthenticationAlternateDSIDKey(uint64_t a1)
{
  if (softLinkOnceAKAuthenticationAlternateDSIDKey != -1)
  {
    initValAKAuthenticationAlternateDSIDKey_cold_1();
  }

  v2 = constantValAKAuthenticationAlternateDSIDKey;

  return v2;
}

void __initValAKAuthenticationAlternateDSIDKey_block_invoke()
{
  if (AuthKitLibrary_sOnce != -1)
  {
    initAKDevice_cold_1();
  }

  v0 = dlsym(AuthKitLibrary_sLib, "AKAuthenticationAlternateDSIDKey");
  if (v0)
  {
    objc_storeStrong(&constantValAKAuthenticationAlternateDSIDKey, *v0);
  }

  getAKAuthenticationAlternateDSIDKey = AKAuthenticationAlternateDSIDKeyFunction;
}

id initValAKAuthenticationUsernameKey(uint64_t a1)
{
  if (softLinkOnceAKAuthenticationUsernameKey != -1)
  {
    initValAKAuthenticationUsernameKey_cold_1();
  }

  v2 = constantValAKAuthenticationUsernameKey;

  return v2;
}

void __initValAKAuthenticationUsernameKey_block_invoke()
{
  if (AuthKitLibrary_sOnce != -1)
  {
    initAKDevice_cold_1();
  }

  v0 = dlsym(AuthKitLibrary_sLib, "AKAuthenticationUsernameKey");
  if (v0)
  {
    objc_storeStrong(&constantValAKAuthenticationUsernameKey, *v0);
  }

  getAKAuthenticationUsernameKey = AKAuthenticationUsernameKeyFunction;
}

id initValAASignInErrorDomain(uint64_t a1)
{
  if (softLinkOnceAASignInErrorDomain != -1)
  {
    initValAASignInErrorDomain_cold_1();
  }

  v2 = constantValAASignInErrorDomain;

  return v2;
}

void __initValAASignInErrorDomain_block_invoke()
{
  if (AppleAccountLibrary_sOnce != -1)
  {
    __initValAASignInErrorDomain_block_invoke_cold_1();
  }

  v0 = dlsym(AppleAccountLibrary_sLib, "AASignInErrorDomain");
  if (v0)
  {
    objc_storeStrong(&constantValAASignInErrorDomain, *v0);
  }

  getAASignInErrorDomain = AASignInErrorDomainFunction;
}
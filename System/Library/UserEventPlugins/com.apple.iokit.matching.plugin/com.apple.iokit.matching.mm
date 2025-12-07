uint64_t sub_578(uint64_t a1, io_iterator_t a2)
{
  sub_7EC(7, "%s - for token %lld", "firstMatchIteratorCallback", *(a1 + 16));
  result = IOIteratorNext(a2);
  if (result)
  {
    v5 = result;
    v6 = (a1 + 32);
    do
    {
      if (*(a1 + 28) == 1)
      {
        entryID = 0;
        IORegistryEntryGetRegistryEntryID(v5, &entryID);
        v7 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v7, "IOMatchLaunchServiceID", entryID);
        sub_7EC(7, "%s - stream fire for token %lld", "firstMatchIteratorCallback", *(a1 + 16));
        xpc_event_provider_token_fire();
      }

      if (IOObjectConformsTo(v5, "IOService"))
      {
        v8 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040EDCEB4C7uLL);
        v8[4] = 0;
        *v8 = *(a1 + 32);
        *(v8 + 1) = a1;
        *(a1 + 32) = v8;
        sub_7EC(7, "%s - token %lld new iokit_matching_notification_context %p", "recordMatch", *(a1 + 16), v8);
        if (IOServiceAddInterestNotification(qword_4178, v5, "IOGeneralInterest", sub_DBC, v8, v8 + 4))
        {
          sub_7EC(3, "%s - IOServiceAddInterestNotification failed for token %lld", "recordMatch", *(a1 + 16));
          v9 = *v6;
          if (*v6 == v8)
          {
            v10 = (a1 + 32);
          }

          else
          {
            do
            {
              v10 = v9;
              v9 = *v9;
            }

            while (v9 != v8);
          }

          *v10 = *v9;
          free(v8);
        }

        else
        {
          sub_7EC(7, "%s - token %lld new notificationObj %u", "recordMatch", *(a1 + 16), v8[4]);
        }
      }

      IOObjectRelease(v5);
      result = IOIteratorNext(a2);
      v5 = result;
    }

    while (result);
  }

  if ((*(a1 + 28) & 1) == 0)
  {
    sub_7EC(7, "%s - set state runJob %d for token %lld", "firstMatchIteratorCallback", *(a1 + 32) != 0, *(a1 + 16));
    xpc_event_provider_token_set_state();
  }

  return result;
}

void sub_7EC(int a1, const char *a2, ...)
{
  va_start(va, a2);
  v5[0] = 0;
  va_copy(&v5[1], va);
  vasprintf(v5, a2, va);
  v4 = v5[0];
  if (!v5[0])
  {
    v4 = a2;
  }

  asl_log(0, 0, a1, "%s", v4);
  if (v5[0])
  {
    free(v5[0]);
  }
}

void sub_93C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_7EC(7, "%s - for token %lld", "eventCallback", a2);
  if (a1 == 2)
  {
    v10 = *(a4 + 16);
    v8 = (a4 + 16);
    v9 = v10;
    if (v10)
    {
      do
      {
        v11 = *v9;
        if (v9[2] == a2)
        {
          sub_7EC(7, "%s - remove event for token %lld", "removeIOKitMatchEvent", a2);
          v12 = *v8;
          if (*v8 == v9)
          {
            v13 = v8;
          }

          else
          {
            do
            {
              v13 = v12;
              v12 = *v12;
            }

            while (v12 != v9);
          }

          *v13 = *v12;
          sub_7EC(7, "%s - token %lld release firstMatchIterator %u", "removeIOKitMatchEvent", a2, *(v9 + 6));
          IOObjectRelease(*(v9 + 6));
          v14 = (v9 + 4);
          v15 = v9[4];
          if (v15)
          {
            do
            {
              v16 = *v14;
              if (*v14 == v15)
              {
                v17 = v9 + 4;
              }

              else
              {
                do
                {
                  v17 = v16;
                  v16 = *v16;
                }

                while (v16 != v15);
              }

              v18 = *v15;
              *v17 = *v16;
              sub_7EC(7, "%s - token %lld release notificationObj %u", "removeIOKitMatchEvent", a2, v15[4]);
              IOObjectRelease(v15[4]);
              sub_7EC(7, "%s - token %lld free iokit_matching_notification_context %p", "removeIOKitMatchEvent", a2, v15);
              free(v15);
              v15 = v18;
            }

            while (v18);
          }

          sub_7EC(7, "%s - token %lld free iokit_matching_event %p", "removeIOKitMatchEvent", a2, v9);
          free(v9);
        }

        v9 = v11;
      }

      while (v11);
    }
  }

  else
  {
    if (a1 != 1)
    {
      sub_7EC(3, "%s - invalid launch event action %ld");
      return;
    }

    sub_7EC(7, "%s - for token %lld", "addIOKitMatchEvent", a2);
    if (xpc_get_type(a3) != &_xpc_type_dictionary)
    {
      CFGetTypeID(a3);
      sub_7EC(3, "%s - invalid launch event type %ld");
      return;
    }

    v19 = _CFXPCCreateCFObjectFromXPCObject();
    if (!v19)
    {
      sub_7EC(3, "%s - _CFXPCCreateCFObjectFromXPCObject failed");
      return;
    }

    v20 = v19;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v19);
    CFRelease(v20);
    if (!MutableCopy)
    {
      sub_7EC(3, "%s - CFDictionaryCreateMutableCopy failed");
      return;
    }

    v22 = malloc_type_calloc(1uLL, 0x28uLL, 0x1020040C6695F62uLL);
    v22[1] = a4;
    v22[2] = a2;
    *(v22 + 6) = 0;
    *(v22 + 28) = 0;
    v22[4] = 0;
    Value = CFDictionaryGetValue(MutableCopy, @"IOMatchLaunchStream");
    *(v22 + 28) = Value == kCFBooleanTrue;
    if (Value)
    {
      CFDictionaryRemoveValue(MutableCopy, @"IOMatchLaunchStream");
    }

    v24 = CFDictionaryGetValue(MutableCopy, @"IOMatchAll");
    if (v24 == kCFBooleanTrue)
    {
      v25 = "IOServiceMatched";
    }

    else
    {
      v25 = "IOServiceFirstMatch";
    }

    if (v24)
    {
      CFDictionaryRemoveValue(MutableCopy, @"IOMatchAll");
    }

    v26 = CFDictionaryGetValue(MutableCopy, @"IONotificationType");
    if (v26)
    {
      v27 = v26;
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(v27))
      {
        Length = CFStringGetLength(v27);
        SystemEncoding = CFStringGetSystemEncoding();
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, SystemEncoding);
        v32 = malloc_type_malloc(MaximumSizeForEncoding + 4, 0x100004077774924uLL);
        if (v32 && CFStringGetCString(v27, v32, MaximumSizeForEncoding + 4, 0))
        {
          v25 = v32;
        }
      }

      else
      {
        v32 = 0;
      }

      CFDictionaryRemoveValue(MutableCopy, @"IONotificationType");
    }

    else
    {
      v32 = 0;
    }

    if (IOServiceAddMatchingNotification(qword_4178, v25, MutableCopy, sub_578, v22, v22 + 6))
    {
      sub_7EC(3, "%s - IOServiceAddMatchingNotification failed", "addIOKitMatchEvent");
      v33 = v22;
    }

    else
    {
      sub_7EC(7, "%s - for token %lld add iokit_matching_event %p ", "addIOKitMatchEvent", v22[2], v22);
      *v22 = *(a4 + 16);
      *(a4 + 16) = v22;
      sub_578(v22, *(v22 + 6));
      if (!v32)
      {
        return;
      }

      v33 = v32;
    }

    free(v33);
  }
}

void sub_DBC(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -536870896)
  {
    sub_7EC(7, "%s", "interestNotificationCallback");
    v4 = *(a1 + 8);
    if (v4)
    {
      v6 = (v4 + 32);
      for (i = *(v4 + 32); i != a1; i = *i)
      {
        v6 = i;
      }

      *v6 = *i;
      v7 = *(a1 + 16);
      if (v7)
      {
        sub_7EC(7, "%s - token %lld release notificationObj %u", "interestNotificationCallback", *(v4 + 16), v7);
        IOObjectRelease(*(a1 + 16));
      }

      sub_7EC(7, "%s - token %lld free iokit_matching_notification_context %p", "interestNotificationCallback", *(v4 + 16), a1);
      free(a1);
      sub_7EC(7, "%s - set state runJob %d", "interestNotificationCallback", *(v4 + 32) != 0);

      xpc_event_provider_token_set_state();
    }

    sub_7EC(3, "%s - owner is NULL", "interestNotificationCallback");
  }
}

void xpc_event_provider_create()
{
    ;
  }
}

void xpc_event_provider_get_queue()
{
    ;
  }
}

void xpc_event_provider_token_fire()
{
    ;
  }
}

void xpc_event_provider_token_set_state()
{
    ;
  }
}
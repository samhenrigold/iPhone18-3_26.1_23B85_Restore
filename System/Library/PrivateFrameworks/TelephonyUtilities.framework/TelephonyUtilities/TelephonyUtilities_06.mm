id sub_100150904(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setTransitionStatus:", v1);
}

id sub_1001509DC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setWantsHoldMusic:", v1);
}

id sub_100150AB4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setWasDialAssisted:", v1);
}

id sub_100150B8C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setScreeningAnnouncementHasFinished:", v1);
}

id sub_100150C64(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setDisconnectedReason:", v1);
}

id sub_100150D3C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setFaceTimeIDStatus:", v1);
}

id sub_100150E10(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setSoundRegion:", v1);
}

id sub_100150F0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setModel:", v1);
}

id sub_100150FDC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setAnsweringMachineStreamToken:", v1);
}

id sub_1001510B0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setSupportsDTMFUpdates:", v1);
}

id sub_100151188(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5.receiver = *(a1 + 32);
  v5.super_class = CSDCall;
  result = objc_msgSendSuper2(&v5, "setShouldSuppressRingtone:", v2);
  if ((*(a1 + 40) & 1) == 0)
  {
    result = [*(a1 + 32) hasEverUnsuppressedRingtone];
    if ((result & 1) == 0)
    {
      v4.receiver = *(a1 + 32);
      v4.super_class = CSDCall;
      return objc_msgSendSuper2(&v4, "setHasEverUnsuppressedRingtone:", 1);
    }
  }

  return result;
}

id sub_1001512A0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setEndpointOnCurrentDevice:", v1);
}

id sub_1001513E0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setScreening:", v1);
}

id sub_1001514B8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setReceptionistState:", v1);
}

id sub_1001515C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setLastReceptionistMessage:", v1);
}

void sub_100152148(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 216);
  *(v2 + 216) = 0;

  v4 = *(a1 + 40);
  v5 = (*(a1 + 32) + 192);

  objc_storeStrong(v5, v4);
}

void sub_100152C90(uint64_t a1)
{
  v2 = [TUDynamicCallDisplayContext alloc];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [v4 queue];
  v6 = [v2 initWithDisplayContext:v3 call:v4 serialQueue:v5];
  [*(a1 + 32) setDynamicDisplayContext:v6];

  v7 = *(a1 + 40);
  v8 = (*(a1 + 32) + 64);

  objc_storeStrong(v8, v7);
}

void sub_100154400(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1006ACDD8;
  qword_1006ACDD8 = v1;
}

void sub_1001545CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1001545F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained aaDevicesDidChange];
}

void sub_100154634(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = sub_100004778(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1004765FC(v3, v4);
    }
  }
}

void sub_10015468C(uint64_t a1)
{
  [*(a1 + 32) _initializeAudioRouteCollections];
  [*(a1 + 32) _initializeAutomaticCarDNDStatusIfNecessary];
  [*(a1 + 32) _updatePickableRoutes];
  [*(a1 + 32) _updateCarPlayDeviceConnected];
  v12[0] = AVSystemController_PickableRoutesDidChangeNotification;
  v12[1] = AVSystemController_PreferredExternalRouteDidChangeNotification;
  v12[2] = AVSystemController_CarPlayIsConnectedDidChangeNotification;
  v2 = [NSArray arrayWithObjects:v12 count:3];
  v3 = +[AVSystemController sharedAVSystemController];
  [v3 setAttribute:v2 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:*(a1 + 32) selector:"pickableRoutesDidChangeNotification:" name:AVSystemController_PickableRoutesDidChangeNotification object:0];
  [v4 addObserver:*(a1 + 32) selector:"preferredExternalRouteDidChangeNotification:" name:AVSystemController_PreferredExternalRouteDidChangeNotification object:0];
  v5 = [v4 addObserver:*(a1 + 32) selector:"carPlayIsConnectedChanged:" name:AVSystemController_CarPlayIsConnectedDidChangeNotification object:0];
  if (qword_1006ACDF0 != -1)
  {
    sub_100476688();
  }

  if (qword_1006ACDE8)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = *(a1 + 32);
    v8 = qword_1006ACDE8;
    v9 = +[AVAudioSession sharedInstance];
    [v6 addObserver:v7 selector:"mediaServicesWereResetNotification:" name:v8 object:v9];
  }

  else
  {
    v6 = sub_100004778(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = @"AVAudioSessionMediaServicesWereResetNotification";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Could not weak link notification string '%@'. Not observing notifications for it.", &v10, 0xCu);
    }
  }
}

void sub_1001548CC(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACDE8, v2);
}

void sub_100154A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100154AA8(uint64_t a1)
{
  v2 = [*(a1 + 32) _audioRouteCollectionForCall:*(a1 + 40)];
  *(*(*(a1 + 56) + 8) + 24) = [v2 isAnyRouteAvailableWithUniqueIdentifier:*(a1 + 48)];
}

void sub_100154C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100154C70(uint64_t a1)
{
  v5 = [*(a1 + 32) _audioRouteCollectionForCall:*(a1 + 40)];
  v2 = [v5 preferredRoute];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100154D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100154DB4(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) isCarPlayDeviceConnected];
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(a1 + 32) audioRouteCollections];
    v3 = [v2 allValues];

    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v8 + 1) + 8 * i) isInEarAudioRouteAvailable])
          {
            *(*(*(a1 + 40) + 8) + 24) = 1;
            goto LABEL_12;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

void sub_100154FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100154FD0(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) audioRouteCollections];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) hasInEarRouteInTipiWithAndSmartRoutedToCompanionWatch])
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1001551D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001551F0(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  if (*(v2 + 24))
  {
    goto LABEL_4;
  }

  if ([*(a1 + 32) isCarPlayDeviceConnected])
  {
    v2 = *(*(a1 + 48) + 8);
LABEL_4:
    *(v2 + 24) = 1;
    goto LABEL_6;
  }

  v3 = [*(a1 + 32) _audioRouteCollectionForCall:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [v3 isInEarAudioRouteAvailable];

LABEL_6:
  v4 = *(*(a1 + 48) + 8);
  if (*(v4 + 24))
  {
    v5 = [*(a1 + 40) provider];
    *(*(*(a1 + 48) + 8) + 24) = [v5 isTinCanProvider] ^ 1;
  }

  else
  {
    *(v4 + 24) = 0;
  }
}

void sub_100155414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10015542C(uint64_t a1)
{
  v5 = [*(a1 + 32) _audioRouteCollectionForCall:*(a1 + 40)];
  v2 = [v5 preferredAndActiveRoute];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100155580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100155598(uint64_t a1)
{
  v3 = [*(a1 + 32) _audioRouteCollectionForCall:*(a1 + 40)];
  if ([*(a1 + 32) isCarPlayDeviceConnected])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v3 isAnyRouteAvailableWithBluetoothEndpointType:2];
  }

  *(*(*(a1 + 48) + 8) + 24) = v2;
}

void sub_1001556D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001556EC(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) audioRouteCollections];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) isAnyRouteAvailableWithBluetoothEndpointType:1])
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1001558D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001558E8(uint64_t a1)
{
  result = [*(a1 + 32) isCarPlayDeviceConnected];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1001559DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001559F4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) audioRouteCollections];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) isAnyRouteAvailableWithBluetoothEndpointType:2])
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_100155BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100155BF0(uint64_t a1)
{
  result = [*(a1 + 32) _initializeAutomaticCarDNDStatusIfNecessary];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 9);
  return result;
}

id sub_100155F38(uint64_t a1)
{
  [*(a1 + 32) _updatePickableRoutes];
  v2 = *(a1 + 32);

  return [v2 _postNotificationName:@"CSDRouteManagerPreferredRouteChangedNotification"];
}

id sub_1001560B8(uint64_t a1)
{
  [*(a1 + 32) _updateCarPlayDeviceConnected];
  v2 = *(a1 + 32);

  return [v2 _postNotificationName:@"CSDRouteManagerPreferredRouteChangedNotification"];
}

id sub_100156238(uint64_t a1)
{
  [*(a1 + 32) _updatePickableRoutes];
  [*(a1 + 32) _updateCarPlayDeviceConnected];
  v2 = *(a1 + 32);

  return [v2 _postNotificationName:@"CSDRouteManagerPreferredRouteChangedNotification"];
}

void sub_100156954(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACDF8, v2);
}

void sub_1001569A4(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACE08, v2);
}

void sub_1001569F4(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACE18, v2);
}

void sub_100156A44(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACE28, v2);
}

void sub_100156D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100156D40(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100004778(v5);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100476700(v5, v7);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received initial CarKit DND assertion: %d", v8, 8u);
    }

    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100156E38(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100156EE4;
    v6[3] = &unk_100619EA8;
    v7 = a2;
    v6[4] = v4;
    dispatch_async(v5, v6);
  }
}

id sub_100156EE4(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating isCarModeActive to %d", v5, 8u);
  }

  return [*(a1 + 32) setCarModeActive:*(a1 + 40)];
}

id sub_1001576E8(CSDMessagingConversationMember *self, SEL a2)
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationMember;
  v3 = [(CSDMessagingConversationMember *)&v7 description];
  v4 = [(CSDMessagingConversationMember *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

uint64_t sub_1001579E4(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v42) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v42 & 0x7F) << v5;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v29 = PBReaderReadString();
            v30 = 40;
LABEL_69:
            v38 = *(a1 + v30);
            *(a1 + v30) = v29;

            goto LABEL_85;
          }

          if (v13 == 4)
          {
            v14 = objc_alloc_init(CSDMessagingHandle);
            v15 = 32;
LABEL_32:
            objc_storeStrong((a1 + v15), v14);
            v42 = 0;
            v43 = 0;
            if (!PBReaderPlaceMark() || !sub_1000D1450(v14, a2))
            {
LABEL_87:

              return 0;
            }

LABEL_58:
            PBReaderRecallMark();

            goto LABEL_85;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 72) |= 4u;
            while (1)
            {
              LOBYTE(v42) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v42 & 0x7F) << v23;
              if ((v42 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_79;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v25;
            }

LABEL_79:
            v39 = 68;
            goto LABEL_80;
          }

          if (v13 == 2)
          {
            v14 = objc_alloc_init(CSDMessagingHandle);
            v15 = 24;
            goto LABEL_32;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 72) |= 1u;
          while (1)
          {
            LOBYTE(v42) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v42 & 0x7F) << v31;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v37 = 0;
              goto LABEL_84;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v33;
          }

LABEL_84:
          *(a1 + 8) = v37;
          goto LABEL_85;
        }

        if (v13 == 6)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 72) |= 2u;
          while (1)
          {
            LOBYTE(v42) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v42 & 0x7F) << v16;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_75;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_75:
          v39 = 64;
LABEL_80:
          *(a1 + v39) = v22;
          goto LABEL_85;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v14 = objc_alloc_init(CSDMessagingVoucher);
            objc_storeStrong((a1 + 16), v14);
            v42 = 0;
            v43 = 0;
            if (!PBReaderPlaceMark() || !sub_1001A34C0(v14, a2))
            {
              goto LABEL_87;
            }

            goto LABEL_58;
          case 8:
            v29 = PBReaderReadString();
            v30 = 56;
            goto LABEL_69;
          case 9:
            v14 = objc_alloc_init(CSDMessagingConversationParticipantCluster);
            objc_storeStrong((a1 + 48), v14);
            v42 = 0;
            v43 = 0;
            if (!PBReaderPlaceMark() || !sub_10022A638(v14, a2))
            {
              goto LABEL_87;
            }

            goto LABEL_58;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_85:
      v40 = [a2 position];
    }

    while (v40 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100159BA8(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v40) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v40 & 0x7F) << v5;
      if ((v40 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 152) |= 2u;
        while (1)
        {
          LOBYTE(v40) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v40 & 0x7F) << v13;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_89:
            v37 = 144;
            goto LABEL_90;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        goto LABEL_89;
      case 2u:
        v34 = PBReaderReadString();
        v35 = 136;
        goto LABEL_77;
      case 3u:
        v34 = PBReaderReadString();
        v35 = 48;
        goto LABEL_77;
      case 4u:
        v34 = PBReaderReadString();
        v35 = 96;
        goto LABEL_77;
      case 5u:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 152) |= 4u;
        while (1)
        {
          LOBYTE(v40) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v40 & 0x7F) << v27;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            LOBYTE(v33) = 0;
            goto LABEL_85;
          }
        }

        v33 = (v29 != 0) & ~[a2 hasError];
LABEL_85:
        *(a1 + 148) = v33;
        goto LABEL_91;
      case 6u:
        v26 = objc_alloc_init(CSDMessagingHandle);
        objc_storeStrong((a1 + 64), v26);
        goto LABEL_52;
      case 7u:
        v26 = objc_alloc_init(CSDMessagingConversationMember);
        objc_storeStrong((a1 + 88), v26);
        goto LABEL_63;
      case 8u:
        v26 = objc_alloc_init(CSDMessagingConversationMember);
        [a1 addRemoteMembers:v26];
        goto LABEL_63;
      case 9u:
        v26 = objc_alloc_init(CSDMessagingConversationParticipant);
        [a1 addActiveRemoteParticipants:v26];
        goto LABEL_69;
      case 0xAu:
        v26 = objc_alloc_init(CSDMessagingConversationActivitySession);
        [a1 addActivitySessions:v26];
        goto LABEL_73;
      case 0xBu:
        v26 = objc_alloc_init(CSDMessagingConversationLink);
        objc_storeStrong((a1 + 80), v26);
        v40 = 0;
        v41 = 0;
        if (!PBReaderPlaceMark() || !sub_100064394(v26, a2))
        {
          goto LABEL_93;
        }

        goto LABEL_75;
      case 0xCu:
        v26 = objc_alloc_init(CSDMessagingConversationReport);
        objc_storeStrong((a1 + 120), v26);
        v40 = 0;
        v41 = 0;
        if (!PBReaderPlaceMark() || !sub_10015C41C(v26, a2))
        {
          goto LABEL_93;
        }

        goto LABEL_75;
      case 0xEu:
        v34 = PBReaderReadString();
        v35 = 40;
        goto LABEL_77;
      case 0xFu:
        v26 = objc_alloc_init(CSDMessagingHandle);
        [a1 addOtherInvitedHandles:v26];
LABEL_52:
        v40 = 0;
        v41 = 0;
        if (!PBReaderPlaceMark() || !sub_1000D1450(v26, a2))
        {
          goto LABEL_93;
        }

        goto LABEL_75;
      case 0x10u:
        v26 = objc_alloc_init(CSDMessagingConversationMember);
        [a1 addLightweightMembers:v26];
LABEL_63:
        v40 = 0;
        v41 = 0;
        if (!PBReaderPlaceMark() || !sub_1001579E4(v26, a2))
        {
          goto LABEL_93;
        }

        goto LABEL_75;
      case 0x11u:
        v26 = objc_alloc_init(CSDMessagingConversationParticipant);
        [a1 addActiveLightweightParticipants:v26];
LABEL_69:
        v40 = 0;
        v41 = 0;
        if (!PBReaderPlaceMark() || !sub_100072604(v26, a2))
        {
          goto LABEL_93;
        }

        goto LABEL_75;
      case 0x12u:
        v34 = PBReaderReadString();
        v35 = 56;
LABEL_77:
        v36 = *(a1 + v35);
        *(a1 + v35) = v34;

        goto LABEL_91;
      case 0x13u:
        v26 = objc_alloc_init(CSDMessagingConversationActivitySession);
        objc_storeStrong((a1 + 128), v26);
LABEL_73:
        v40 = 0;
        v41 = 0;
        if (PBReaderPlaceMark() && sub_100138158(v26, a2))
        {
LABEL_75:
          PBReaderRecallMark();

LABEL_91:
          v38 = [a2 position];
          if (v38 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_93:

        return 0;
      case 0x14u:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 152) |= 1u;
        while (1)
        {
          LOBYTE(v40) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v40 & 0x7F) << v20;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_83;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v22;
        }

LABEL_83:
        v37 = 32;
LABEL_90:
        *(a1 + v37) = v19;
        goto LABEL_91;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_91;
    }
  }
}

uint64_t sub_10015C41C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v23 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = PBReaderReadString();
        v15 = 24;
      }

      else
      {
        if (v13 == 2)
        {
          *(a1 + 32) |= 1u;
          v22 = 0;
          v16 = [a2 position] + 8;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v22 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v22;
          goto LABEL_30;
        }

        if (v13 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_30;
        }

        v14 = PBReaderReadString();
        v15 = 16;
      }

      v18 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_30:
      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10015DAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, id a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, id a63)
{
  objc_destroyWeak((v68 + 32));
  objc_destroyWeak((v67 + 32));
  objc_destroyWeak((v66 + 32));
  objc_destroyWeak((v65 + 32));
  objc_destroyWeak((v64 + 32));
  objc_destroyWeak((v63 + 32));
  objc_destroyWeak(&a53);
  objc_destroyWeak(&a58);
  objc_destroyWeak(&a63);
  objc_destroyWeak((v69 - 200));
  objc_destroyWeak((v69 - 152));
  objc_destroyWeak((v69 - 128));
  _Unwind_Resume(a1);
}

BOOL sub_10015DB80(id a1)
{
  v1 = +[CSDCallCapabilities sharedInstance];
  v2 = [v1 callCapabilitiesState];
  v3 = [v2 relayCallingAvailability] == 2;

  return v3;
}

NSDate *__cdecl sub_10015DBDC(id a1)
{
  v1 = +[IDSCurrentServerTime sharedInstance];
  v2 = [v1 currentServerTimeDate];

  return v2;
}

void sub_10015DC30(uint64_t a1)
{
  v2 = [[CSDDeviceLockStateObserver alloc] initWithQueue:*(*(a1 + 32) + 264)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 160);
  *(v3 + 160) = v2;

  v5 = *(*(a1 + 32) + 160);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10015DD08;
  v6[3] = &unk_10061A740;
  objc_copyWeak(&v7, (a1 + 40));
  [v5 performBlockAfterFirstUnlock:v6];
  objc_destroyWeak(&v7);
}

void sub_10015DD08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = sub_100004778(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device first unlock block invoked, attempting to retrieve active conversations", buf, 2u);
    }

    [v2 retreiveActiveConversations];
    [v2 removeNonIndefiniteLinks];
    v4 = v2[33];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015DE0C;
    block[3] = &unk_100619D38;
    v5 = v2;
    v7 = v5;
    dispatch_async(v4, block);
    [v5 setupPendingConversationCleanupTimer];
  }
}

void sub_10015DE0C(uint64_t a1)
{
  v1 = [*(a1 + 32) linkManager];
  [v1 validateAllLinks];
}

id sub_10015DE50(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unsigned int a7, void *a8, __int16 a9, void *a10, char a11)
{
  v18 = a10;
  v19 = a8;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v26 = [WeakRetained service];
  LOBYTE(v30) = a11;
  LOWORD(v29) = a9;
  v27 = [v26 createGroupSessionProviderWithGroupID:v24 participantDestinationIDs:v23 callerID:v22 account:v21 queue:v20 isOneToOneModeEnabled:a7 localMember:v19 avLess:v29 isScreenSharingRequest:v18 ABTestConfiguration:v30 isInitiator:?];

  return v27;
}

IMNickname *__cdecl sub_10015DF90(id a1)
{
  v1 = +[IMNicknameController sharedInstance];
  v2 = [v1 personalNickname];

  return v2;
}

CSDConversation *sub_10015DFE4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unsigned int a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, char a19, uint64_t a20, uint64_t a21, void *a22)
{
  v39 = a22;
  v41 = a18;
  v38 = a17;
  v22 = a16;
  v37 = a15;
  v34 = a14;
  v31 = a13;
  v30 = a12;
  v28 = a11;
  v55 = a10;
  v54 = a9;
  v53 = a8;
  v27 = a6;
  v51 = a5;
  v49 = a4;
  v47 = a3;
  v45 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v36 = [WeakRetained cpApplicationController];
  v33 = [WeakRetained sharePlaySystemStateObserver];
  v32 = +[CPApplicationPolicyManager sharedInstance];
  v24 = [CSDConversation alloc];
  v29 = [WeakRetained featureFlags];
  LOBYTE(v26) = a19;
  v43 = [(CSDConversation *)v24 initWithQueue:v45 UUID:v47 groupUUID:v49 groupSession:v51 messagesGroupUUID:v27 locallyCreated:a7 localMember:v53 initiator:v54 remoteMembers:v55 pendingMembers:v28 otherInvitedHandles:v30 lightweightMembers:v31 remotePushTokens:v34 activity:v37 link:v22 report:v41 fromStorage:v26 avMode:a20 presentationMode:a21 applicationController:v36 featureFlags:v29 systemStateObserver:v33 applicationPolicyManager:v32 screenSharingRequest:v38 testConfiguration:v39];

  return v43;
}

id sub_10015E2A4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v72 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v22 = WeakRetained;
  if (WeakRetained)
  {
    v70 = v19;
    v23 = [WeakRetained featureFlags];
    v24 = [v23 groupFacetimeAsAServiceEnabled];

    if (v20 && v24)
    {
      v25 = +[CSDConversationProviderManager sharedInstance];
      v26 = [v25 serviceForProvider:v20];
    }

    else
    {
      v26 = [v22 service];
    }

    v66 = v18;
    v29 = [v18 mutableCopy];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = objc_alloc_init(NSMutableDictionary);
    }

    v32 = v31;

    v33 = [v17 idsFromID];
    [v32 setObject:v33 forKeyedSubscript:IDSSendMessageOptionFromIDKey];

    v35 = sub_100004778(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v78 = v32;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "sendDataBlock options: %@", buf, 0xCu);
    }

    v36 = [v32 objectForKeyedSubscript:@"kCSDConversationGroupUUID"];

    if (v36)
    {
      v71 = [v32 objectForKeyedSubscript:@"kCSDConversationGroupUUID"];
      [v32 removeObjectForKey:@"kCSDConversationGroupUUID"];
    }

    else
    {
      v38 = sub_100004778(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "invalid conversationGroupUUID", buf, 2u);
      }

      v71 = 0;
    }

    v67 = v17;
    v68 = v15;
    v73 = 0;
    v74 = 0;
    v65 = v26;
    v39 = v26;
    v28 = v72;
    v27 = [v39 sendData:v72 fromAccount:v15 toDestinations:v16 priority:300 options:v32 identifier:&v74 error:&v73];
    v40 = v74;
    v41 = v73;
    v42 = v41;
    v19 = v70;
    if (v27)
    {
      v63 = v41;
      v64 = v16;
      if (v70)
      {
        v43 = [v22 mutableSendDataCallbacksByRequestIdentifiers];
        v44 = [v70 copy];
        v45 = objc_retainBlock(v44);
        [v43 setObject:v45 forKey:v40];
      }

      v46 = sub_100004778(v41);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = [v64 allObjects];
        v48 = TULoggableStringForHandles();
        *buf = 138412546;
        *v78 = v40;
        *&v78[8] = 2112;
        *&v78[10] = v48;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Sent message with identifier %@ to %@", buf, 0x16u);
      }

      v49 = [[CSDMessagingConversationMessage alloc] initWithData:v72];
      v50 = [v32 objectForKeyedSubscript:@"kCSDConversationIsLetMeInApproved"];

      if (v50)
      {
        v51 = [v32 objectForKeyedSubscript:@"kCSDConversationIsLetMeInApproved"];
        v50 = [v51 BOOLValue];

        [v32 removeObjectForKey:@"kCSDConversationIsLetMeInApproved"];
      }

      v52 = [(CSDMessagingConversationMessage *)v49 enclosedEncryptedType];
      if (v52 == 16 && v71)
      {
        v75[1] = @"kCSDConversationIsLetMeInApproved";
        v76[0] = v71;
        v75[0] = @"kCSDConversationGroupUUID";
        v53 = [NSNumber numberWithBool:v50];
        v76[1] = v53;
        v54 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:2];
        v55 = [v22 outIdentifierToConversationInfo];
        [v55 setObject:v54 forKeyedSubscript:v40];

        v57 = sub_100004778(v56);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v58 = [v22 outIdentifierToConversationInfo];
          *buf = 138412290;
          *v78 = v58;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "outIdentifierToConversationInfo: %@", buf, 0xCu);
        }

        v28 = v72;
        v59 = a7;
        v19 = v70;
      }

      else
      {
        v57 = sub_100004778(v52);
        v28 = v72;
        v59 = a7;
        v19 = v70;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v60 = [(CSDMessagingConversationMessage *)v49 enclosedEncryptedType];
          *buf = 67109378;
          *v78 = v60;
          *&v78[4] = 2112;
          *&v78[6] = v71;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "message type: %d, groupUUID: %@", buf, 0x12u);
        }
      }

      if (v59)
      {
        v61 = v40;
        *v59 = v40;
      }

      v42 = v63;
      v16 = v64;
    }

    else
    {
      v49 = sub_100004778(v41);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        sub_100476778();
      }
    }

    v17 = v67;
    v15 = v68;
    v18 = v66;
  }

  else
  {
    v27 = 0;
    v28 = v72;
  }

  return v27;
}

void sub_10015E8B4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v18 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = WeakRetained;
  if (WeakRetained)
  {
    v17 = [WeakRetained pendingMembershipTracker];
    [v17 handleDelegatedPendingMember:v18 forConversation:v11 withGroupUUID:v12 from:v13 transactionUUID:v14];
  }
}

id sub_10015E988(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[NSMutableSet set];
  if (WeakRetained)
  {
    v6 = [WeakRetained pushTokenForSelf];
    v7 = [WeakRetained featureFlags];
    v8 = [v7 groupFacetimeAsAServiceEnabled];

    v22 = v3;
    if (v3 && v8)
    {
      v9 = +[CSDConversationProviderManager sharedInstance];
      v10 = [v9 serviceForProvider:v3];
    }

    else
    {
      v10 = [WeakRetained service];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = [v10 aliases];
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = TUHandleForIDSCanonicalAddress();
          if (v16)
          {
            [v5 addObject:v16];
          }

          v17 = TUCopyIDSCanonicalAddressForHandle();
          v18 = IDSCopyIDForTokenWithID();

          v19 = TUHandleForIDSCanonicalAddress();
          if (v19)
          {
            [v5 addObject:v19];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    v3 = v22;
  }

  return v5;
}

id sub_10015EBC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained activeLocalHandlesForProvider];
    v4 = v3[2](v3, 0);
  }

  else
  {
    v4 = +[NSMutableSet set];
  }

  return v4;
}

id sub_10015EC54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained localCallerIDForProvider];
    v4 = v3[2](v3, 0);
  }

  else
  {
    v5 = sub_100004778(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Using local callerID: nil, could not get strong self", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

id sub_10015ED20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained callProviderManager];
  v3 = [v2 faceTimeProvider];
  v4 = [v3 prioritizedSenderIdentities];

  return v4;
}

id sub_10015ED94(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained featureFlags];
    v7 = [v6 groupFacetimeAsAServiceEnabled];

    if (v3 && v7)
    {
      v8 = +[CSDConversationProviderManager sharedInstance];
      v9 = [v8 serviceForProvider:v3];
    }

    else
    {
      v9 = [v5 service];
    }

    v11 = [v9 callerID];
    v12 = [TUHandle normalizedHandleWithDestinationID:v11];
    v13 = [v5 isValidLocalHandle:v12 forProvider:v3];

    if (v11 && v13)
    {
      v10 = [TUHandle normalizedHandleWithDestinationID:v11];
    }

    else
    {
      v14 = [v5 activeLocalHandlesForProvider];
      v15 = (v14)[2](v14, v3);
      v16 = [v15 anyObject];

      v17 = [v16 value];
      v18 = IDSCopyAddressDestinationForDestination();
      v19 = IDSCopyRawAddressForDestination();
      v10 = [TUHandle normalizedHandleWithDestinationID:v19];
    }
  }

  else
  {
    v10 = 0;
  }

  v20 = sub_100004778(WeakRetained);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Using local callerID: %@", &v22, 0xCu);
  }

  return v10;
}

uint64_t sub_10015EFE0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = TUNormalizedHandleForTUHandle();
    if (v5 && ([WeakRetained activeLocalHandles], v6 = objc_claimAutoreleasedReturnValue(), v6[2](), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsObject:", v5), v7, v6, v8))
    {
      v10 = sub_100004778(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ is eligible for screen sharing because it's a local handle", &v18, 0xCu);
      }

      v11 = 1;
    }

    else
    {
      v12 = [TUContactsDataProvider alloc];
      v13 = +[TUCallCenter sharedInstance];
      v14 = [v13 contactStore];
      v10 = [v12 initWithContactsDataSource:v14];

      v11 = [v10 isHandleEligibleForScreenSharingRequests:v3];
      v15 = sub_100004778(v11);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = @"NO";
        if (v11)
        {
          v16 = @"YES";
        }

        v18 = 138412546;
        v19 = v3;
        v20 = 2112;
        v21 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ is eligible for screen sharing: %@", &v18, 0x16u);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_10016038C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001603B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v4 = [WeakRetained mutableConversationsByUUID];
  v5 = [*(a1 + 40) UUID];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = +[TUConversationInvitationPreference letMeInResponseInvitationPreferences];
  v10 = IDSSendMessageOptionRequireAllRegistrationPropertiesKey;
  v8 = [NSSet setWithObject:IDSRegistrationPropertySupportsModernGFT];
  v11 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [WeakRetained sendInvitationMessageToMember:v3 destinationID:0 invitationContext:0 forConversation:v6 includeAllAttributes:1 invitationPreferences:v7 additionalOptions:v9];
}

CSDAVCSession *__cdecl sub_100162288(id a1, NSString *a2, CSDAVCSessionDelegate *a3, OS_dispatch_queue *a4, BOOL a5, BOOL a6, TUConversationReport *a7)
{
  v7 = a6;
  v8 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[CSDSimulatedAVCSession alloc] initWithDelegate:v11 queue:v10 videoEnabled:v8 oneToOneModeEnabled:v7];

  return v12;
}

void sub_100162440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100162458(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) mutablePendingConversationsByPseudonym];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 link];
        v10 = [v9 pseudonym];
        v11 = [v10 isEqualToString:*(a1 + 40)];

        if (v11)
        {
          v12 = [v8 temporaryGroupUUID];
          v13 = *(*(a1 + 48) + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = v12;

          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1001626F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100162708(uint64_t a1)
{
  v2 = [*(a1 + 32) _removePendingConversationWithPseudonym:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100162A4C(uint64_t a1)
{
  v1 = [*(a1 + 32) mutablePendingConversationsByPseudonym];
  [v1 removeAllObjects];
}

void sub_1001632D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001632EC(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 isRepresentedByRemoteMembers:*(a1 + 40) andLink:*(a1 + 48)])
        {
          objc_storeStrong((*(*(a1 + 56) + 8) + 40), v8);
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_10016354C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100163564(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 link];
        if (v9 && [v8 letMeInRequestState] == 3)
        {
          v10 = [v8 link];
          v11 = [v10 isEquivalentToConversationLink:*(a1 + 40)];

          if (v11)
          {
            v12 = [v8 tuConversation];
            v13 = *(*(a1 + 48) + 8);
            v14 = *(v13 + 40);
            *(v13 + 40) = v12;

            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

LABEL_13:
}

void sub_100163B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100163B2C(uint64_t a1)
{
  v2 = [*(a1 + 32) findConversationLinkMatchingPseudonym:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100164660(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) receivedMessage:*(a1 + 56) fromHandle:*(a1 + 64) withUpdate:*(a1 + 72) shouldRing:*(a1 + 80)];
}

void sub_1001649CC(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) reportedNewIncomingConversation:*(a1 + 40) fromHandle:*(a1 + 56)];
}

void sub_100164D08(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) createdNewConversation:*(a1 + 40)];
}

void sub_100165050(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) avModeChanged:*(a1 + 56) toAVMode:*(a1 + 64) forConversation:*(a1 + 40)];
}

void sub_100165AEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100165BD8;
  v10[3] = &unk_10061A450;
  v11 = *(a1 + 40);
  v12 = v5;
  v13 = *(a1 + 32);
  v14 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void sub_100165BD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = [v2 tuConversation];
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 40))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = [*(a1 + 48) delegateToQueue];
    v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v18 + 1) + 8 * i);
          v9 = [*(a1 + 48) delegateToQueue];
          v10 = [v9 objectForKey:v8];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100165DF0;
          block[3] = &unk_10061A450;
          v15 = v3;
          v16 = v8;
          v13 = *(a1 + 40);
          v11 = v13.i64[0];
          v17 = vextq_s8(v13, v13, 8uLL);
          dispatch_async(v10, block);
        }

        v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v5);
    }

LABEL_16:

    goto LABEL_17;
  }

  if (*(a1 + 56))
  {
    obj = sub_100004778(v2);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      sub_100476964();
    }

    goto LABEL_16;
  }

LABEL_17:
}

uint64_t sub_100165DF0(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_13;
  }

  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v13 = 138412290;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "activatedLinksWithCompleted: tuconversation: %@", &v13, 0xCu);
  }

  v4 = objc_opt_respondsToSelector();
  v5 = *(a1 + 40);
  if (v4)
  {
    v6 = [*(a1 + 32) provider];
    if ([v5 shouldHandleUpdateForProvider:v6])
    {
    }

    else
    {
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v7 = objc_opt_respondsToSelector();
    if (v7)
    {
      goto LABEL_13;
    }
  }

  v9 = sub_100004778(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) provider];
    v13 = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v13, 0x16u);
  }

  [*(a1 + 40) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 32)];
LABEL_13:
  result = objc_opt_respondsToSelector();
  if (result)
  {
    return [*(a1 + 40) conversationManager:*(a1 + 48) activatedConversationLinksChanged:*(a1 + 56)];
  }

  return result;
}

uint64_t sub_10016619C(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);

    return [v3 conversationManager:v4 remoteScreenShareAttributesChanged:v5 isLocallySharing:v6];
  }

  return result;
}

uint64_t sub_1001663D8(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 conversationManager:v4 remoteScreenShareEndedWithReason:v5];
  }

  return result;
}

void sub_10016660C(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = objc_opt_respondsToSelector();
    v3 = *(a1 + 32);
    if (v2)
    {
      v4 = [*(a1 + 40) provider];
      if ([v3 shouldHandleUpdateForProvider:v4])
      {
      }

      else
      {
        v6 = objc_opt_respondsToSelector();

        if (v6)
        {
          return;
        }
      }
    }

    else
    {
      v5 = objc_opt_respondsToSelector();
      if (v5)
      {
        return;
      }
    }

    v7 = sub_100004778(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) provider];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
    }

    [*(a1 + 32) conversationManager:*(a1 + 48) reportedLetMeInRejectedForPendingConversation:*(a1 + 40)];
  }
}

void sub_100166944(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = objc_opt_respondsToSelector();
    v3 = *(a1 + 32);
    if (v2)
    {
      v4 = [*(a1 + 40) provider];
      if ([v3 shouldHandleUpdateForProvider:v4])
      {
      }

      else
      {
        v6 = objc_opt_respondsToSelector();

        if (v6)
        {
          return;
        }
      }
    }

    else
    {
      v5 = objc_opt_respondsToSelector();
      if (v5)
      {
        return;
      }
    }

    v7 = sub_100004778(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) provider];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
    }

    [*(a1 + 32) conversationManager:*(a1 + 48) reportedInvalidLinkForPendingConversation:*(a1 + 40)];
  }
}

void sub_100166D18(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) removedScreenShareRequest:*(a1 + 56)];
}

void sub_100167AAC(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 40)];
}

void sub_100167CE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) object];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v4 = [WeakRetained mutableConversationsByUUID];
    v5 = [v4 allValues];

    v6 = [v5 countByEnumeratingWithState:&v67 objects:v76 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v68;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v68 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v67 + 1) + 8 * i);
          if ([v11 state] == 3)
          {
            v12 = v11;

            v8 = v12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v7);

      if (v8)
      {
        v14 = sub_100004778(v13);
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v3)
        {
          if (!v15)
          {
            goto LABEL_21;
          }

          v16 = [v8 UUID];
          *buf = 138412546;
          v73 = v3;
          v74 = 2112;
          v75 = v16;
          v17 = "Conversation manager alerted to new selected audio route ID %@, letting my other devices know for conversation UUID %@";
          v18 = v14;
          v19 = 22;
        }

        else
        {
          if (!v15)
          {
            goto LABEL_21;
          }

          v16 = [v8 UUID];
          *buf = 138412290;
          v73 = v16;
          v17 = "Conversation manager alerted to unselected audio route, letting my other devices know for conversation UUID %@";
          v18 = v14;
          v19 = 12;
        }

        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);

LABEL_21:
        v20 = [CSDMessagingConversationMessage alloc];
        v21 = [v8 groupUUID];
        v22 = [(CSDMessagingConversationMessage *)v20 initWithType:32 groupUUID:v21 link:0];

        v23 = objc_alloc_init(CSDMessagingConversationJoinedMetadata);
        v62 = v3;
        [(CSDMessagingConversationJoinedMetadata *)v23 setAudioRouteUniqueIdentifier:v3];
        v24 = [CSDConversationParticipant alloc];
        v25 = [v8 localParticipantIdentifier];
        v26 = [v8 localMember];
        v27 = [v26 handle];
        v28 = +[NSData data];
        v29 = [(CSDConversationParticipant *)v24 initWithIdentifier:v25 handle:v27 avcData:v28];

        v60 = v29;
        v30 = [CSDMessagingConversationParticipant participantWithCSDConversationParticipant:v29];
        [(CSDMessagingConversationJoinedMetadata *)v23 setSender:v30];

        v31 = v22;
        v61 = v23;
        [(CSDMessagingConversationMessage *)v22 setJoinedMetadata:v23];
        v32 = +[NSMutableSet set];
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v33 = [WeakRetained service];
        v34 = [v33 devices];

        v35 = [v34 countByEnumeratingWithState:&v63 objects:v71 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v64;
          do
          {
            for (j = 0; j != v36; j = j + 1)
            {
              if (*v64 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = [*(*(&v63 + 1) + 8 * j) destination];
              v40 = [v39 destinationURIs];
              [(CSDMessagingConversationMessage *)v32 unionSet:v40];
            }

            v36 = [v34 countByEnumeratingWithState:&v63 objects:v71 count:16];
          }

          while (v36);
        }

        v42 = sub_100004778(v41);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v73 = v31;
          v74 = 2112;
          v75 = v32;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Sending UpdateJoinedMetadata message %@ to my other devices: %@", buf, 0x16u);
        }

        v43 = [WeakRetained featureFlags];
        if ([v43 groupFacetimeAsAServiceEnabled])
        {
          v44 = [v8 provider];

          if (v44)
          {
            v45 = +[CSDConversationProviderManager sharedInstance];
            v46 = [v8 provider];
            v47 = [v45 serviceForProvider:v46];

LABEL_35:
            v48 = [v8 localMember];
            v49 = [v48 handle];
            v50 = [v49 value];
            v51 = [v47 accountWithCallerID:v50];

            v52 = [WeakRetained sendDataBlock];
            v53 = v31;
            v54 = [(CSDMessagingConversationMessage *)v31 data];
            v55 = [v8 localMember];
            v56 = [v8 capabilitySendMessageOptions];
            [v8 provider];
            v59 = WeakRetained;
            v58 = v57 = v47;
            (v52)[2](v52, v54, v51, v32, v55, v56, 0, 0, v58);

            WeakRetained = v59;
            v3 = v62;
LABEL_36:

            goto LABEL_37;
          }
        }

        else
        {
        }

        v47 = [WeakRetained service];
        goto LABEL_35;
      }
    }

    else
    {
    }

    v8 = sub_100004778(v13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Ignoring route identifier change for handoff as no conversations are currently joined.", buf, 2u);
    }

    goto LABEL_36;
  }

LABEL_37:
}

void sub_100168D78(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100168EC4;
  block[3] = &unk_10061CD68;
  v20 = v9;
  v21 = v7;
  v22 = v8;
  v18 = *(a1 + 2);
  v11 = *(&v18 + 1);
  v12 = a1[6];
  v13 = a1[7];
  *&v14 = v12;
  *(&v14 + 1) = v13;
  v23 = v18;
  v24 = v14;
  v15 = v8;
  v16 = v7;
  v17 = v9;
  dispatch_async(v10, block);
}

void sub_100168EC4(void *a1)
{
  if (!a1[4] && (v2 = a1, (a1 = a1[5]) != 0) && v2[6])
  {
    v3 = [a1 type];
    if (v3 == 10)
    {
      v4 = v2[7];
      v5 = v2[8];
      v6 = v2[5];
      v7 = v2[6];
      v8 = v2[9];
      v11 = [v2[10] serverReceivedTime];
      [v4 handleReceivedLetMeInRequest:v6 toPseudonym:v5 fromHandle:v8 responseKeyData:v7 dateInitiated:?];
    }

    else
    {
      v9 = sub_100004778(v3);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v2[5] type];
        *buf = 67109120;
        v13 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Decrypted conversation message but was not a let me in request: messageType: %d", buf, 8u);
      }
    }
  }

  else
  {
    v1 = sub_100004778(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1004769D4();
    }
  }
}

void sub_1001696A8(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001697E8;
  v10[3] = &unk_10061CDB8;
  v11 = v5;
  v12 = a1[5];
  v13 = v6;
  v14 = a1[4];
  v15 = a1[6];
  v16 = a1[7];
  v17 = a1[8];
  v18 = a1[9];
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void sub_1001697E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 originator];
    v4 = [v3 handle];
    v5 = [v4 value];
    v6 = [TUHandle normalizedHandleWithDestinationID:v5];

    v7 = [*(a1 + 56) activeLocalHandles];
    v8 = v7[2]();

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v44;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if ([*(*(&v43 + 1) + 8 * v13) isEquivalentToHandle:{v6, v43}])
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v43 objects:v47 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v16 = *(a1 + 56);
      v17 = [*(a1 + 32) groupUUID];
      v15 = [v16 conversationWithGroupUUID:v17];

      [v15 setHasReceivedLetMeInRequest:1];
      v18 = [*(a1 + 56) featureFlags];
      if (TUGreenTeaLagunaEnabled())
      {
        v19 = [v15 tuConversation];
        v20 = [v19 mergedRemoteMembers];
        v21 = [v20 count];
      }

      else
      {
        v19 = [v15 remoteMembers];
        v21 = [v19 count];
      }

      v24 = [*(a1 + 56) deviceSupport];
      v25 = [v24 isGreenTea];

      if (v25 && v21 >= 1)
      {
        v27 = sub_100004778(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [v15 remoteMembers];
          *buf = 138412290;
          v49 = v28;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[WARN] GreenTea device does not support multiple remote members. remoteMembers = %@", buf, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v15)
      {
        v29 = [*(a1 + 56) reportingController];
        v30 = [v15 tuConversation];
        [v29 receivedLetMeInRequestForConversation:v30];

        v31 = [*(a1 + 56) _shouldSkipManualApprovalForHandle:*(a1 + 64) conversation:v15 responseKeyData:*(a1 + 72)];
        if (v31)
        {
          v27 = sub_100004778(v31);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(a1 + 64);
            *buf = 138412290;
            v49 = v32;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "skip manual approval for handle: %@", buf, 0xCu);
          }

          goto LABEL_32;
        }
      }

      else
      {
        v33 = sub_100004778(v26);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(a1 + 32);
          *buf = 138412290;
          v49 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Couldn't find existing conversation: %@", buf, 0xCu);
        }
      }

      v27 = [*(a1 + 80) nickname];
      v35 = [v27 length];
      if (v35)
      {
        v36 = v35;
        v37 = [*(a1 + 56) serverBag];
        v38 = [v37 webNicknameLengthLimit];

        if (v36 > v38)
        {
          v39 = [v27 substringToIndex:v38];

          v27 = v39;
        }
      }

      v40 = [[TUConversationMember alloc] initWithHandle:*(a1 + 64) nickname:v27 joinedFromLetMeIn:1];
      v41 = [[TUConversationLink alloc] initWithDescriptor:*(a1 + 32)];
      v42 = [*(a1 + 56) pendingMembershipTracker];
      [v42 handleNewPendingMember:v40 responseKey:*(a1 + 72) forConversation:v15 withLink:v41 dateInitiatedLMI:*(a1 + 88)];

      goto LABEL_32;
    }

LABEL_10:

    v15 = sub_100004778(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v49 = v6;
      v50 = 2112;
      v51 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Dismissing let me in because link has originator handle of %@, which is not one of our active local handles %@", buf, 0x16u);
    }

LABEL_33:
  }

  else
  {
    v6 = sub_100004778(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 40);
      v23 = *(a1 + 48);
      *buf = 138412546;
      v49 = v22;
      v50 = 2112;
      v51 = v23;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Could not find link for pseudonym %@, dropping let me in request. Error: %@", buf, 0x16u);
    }
  }
}

void sub_10016A2C4(id *a1)
{
  if ([a1[4] type] == 11 || (v2 = objc_msgSend(a1[4], "type"), v2 == 26))
  {
    v2 = [a1[4] hasLink];
    if (v2)
    {
      v3 = [a1[4] conversationGroupUUID];
      v4 = [a1[4] link];
      v5 = [v4 groupUUID];
      v6 = [v3 isEqual:v5];

      if (v6)
      {
        v7 = [a1[4] type];
        v8 = v7 == 26;
        v9 = [a1[4] link];
        v10 = [v9 tuConversationLink];

        if (!v10)
        {
          v17 = sub_100004778(v11);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Invalid TUConversationLink for link created/changed message (it was nil)", buf, 2u);
          }

          goto LABEL_46;
        }

        v12 = a1[5];
        v13 = [v10 originatorHandle];
        LOBYTE(v12) = [v12 isEquivalentToHandle:v13];

        if ((v12 & 1) == 0)
        {
          v17 = sub_100004778(v14);
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
LABEL_46:

            goto LABEL_47;
          }

          v29 = a1[5];
          v21 = [v10 originatorHandle];
          v30 = a1[4];
          *buf = 138412802;
          *v77 = v29;
          *&v77[8] = 2112;
          *v78 = v21;
          *&v78[8] = 2112;
          v79[0] = v30;
          v31 = "[WARN] Sender %@ did not match link's originator handle %@ for link created/changed message %@";
          v32 = v17;
          v33 = 32;
          goto LABEL_32;
        }

        v15 = a1[6];
        v16 = [a1[4] conversationGroupUUID];
        v17 = [v15 conversationWithGroupUUID:v16];

        if (v17)
        {
          if (v7 != 26)
          {
            v19 = [v17 link];

            if (v19)
            {
              v21 = sub_100004778(v20);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = [v17 UUID];
                v23 = a1[4];
                *buf = 138412546;
                *v77 = v22;
                *&v77[8] = 2112;
                *v78 = v23;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[WARN] Link already exists on conversation %@ for link created message %@", buf, 0x16u);
              }

              goto LABEL_33;
            }
          }

          v34 = [a1[6] featureFlags];
          v65 = v7 == 26;
          if (TUGreenTeaLagunaEnabled())
          {
            v35 = [v17 tuConversation];
            v36 = [v35 mergedRemoteMembers];
            v37 = [v36 count];
          }

          else
          {
            v35 = [v17 remoteMembers];
            v37 = [v35 count];
          }

          v45 = [a1[6] deviceSupport];
          v46 = [v45 isGreenTea];

          if (v46 && v37 >= 1)
          {
            v21 = sub_100004778(v47);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v48 = a1[4];
              *buf = 138412290;
              *v77 = v48;
              v31 = "[WARN] GreenTea device does not support link created/changed message because invitedMemberHandles > 1, message: %@";
              goto LABEL_31;
            }

            goto LABEL_33;
          }

          v63 = v7;
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v64 = v17;
          v49 = [v17 remoteMembers];
          v50 = [v49 countByEnumeratingWithState:&v71 objects:v75 count:16];
          if (!v50)
          {
LABEL_42:

            v17 = v64;
LABEL_48:
            v21 = sub_100004778(v57);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v61 = a1[5];
              v62 = [v17 UUID];
              *buf = 138412546;
              *v77 = v61;
              *&v77[8] = 2112;
              *v78 = v62;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[WARN] Sender %@ is not part of conversation UUID %@.", buf, 0x16u);
            }

            goto LABEL_33;
          }

          v51 = v50;
          v52 = *v72;
LABEL_36:
          v53 = 0;
          while (1)
          {
            if (*v72 != v52)
            {
              objc_enumerationMutation(v49);
            }

            v54 = *(*(&v71 + 1) + 8 * v53);
            v55 = [v54 handle];
            v56 = [v55 isEqualToHandle:a1[5]];

            if (v56)
            {
              break;
            }

            if (v51 == ++v53)
            {
              v51 = [v49 countByEnumeratingWithState:&v71 objects:v75 count:16];
              if (v51)
              {
                goto LABEL_36;
              }

              goto LABEL_42;
            }
          }

          v40 = v54;

          v17 = v64;
          v8 = v65;
          v7 = v63;
          if (!v40)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v38 = sub_100004778(v18);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = a1[5];
            *buf = 138412546;
            *v77 = v39;
            *&v77[8] = 2112;
            *v78 = v10;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[In-Advance] Received link created/changed message from %@ with link %@", buf, 0x16u);
          }

          v40 = [a1[6] deviceSupport];
          if ([v40 isGreenTea])
          {
            v41 = [v10 invitedMemberHandles];
            v42 = [v41 count];

            if (v42 >= 2)
            {
              v21 = sub_100004778(v43);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v44 = a1[4];
                *buf = 138412290;
                *v77 = v44;
                v31 = "[WARN] GreenTea device does not support link creation message %@ because invitedMemberHandles > 1";
LABEL_31:
                v32 = v21;
                v33 = 12;
LABEL_32:
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
              }

LABEL_33:

              goto LABEL_46;
            }

LABEL_45:
            v58 = v7 == 26;
            v59 = [a1[6] linkManager];
            v66[0] = _NSConcreteStackBlock;
            v66[1] = 3221225472;
            v66[2] = sub_10016AA38;
            v66[3] = &unk_10061CE08;
            v60 = a1[5];
            v66[4] = a1[6];
            v17 = v17;
            v67 = v17;
            v70 = v8;
            v68 = a1[5];
            v69 = v10;
            [v59 storeReceivedLink:v69 fromHandle:v60 isUpdate:v58 completionHandler:v66];

            goto LABEL_46;
          }
        }

        goto LABEL_45;
      }
    }
  }

  v10 = sub_100004778(v2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [a1[4] type];
    v25 = [a1[4] hasLink];
    v26 = [a1[4] link];
    v27 = [v26 groupUUID];
    v28 = [a1[4] conversationGroupUUID];
    *buf = 67109890;
    *v77 = v24;
    *&v77[4] = 1024;
    *&v77[6] = v25;
    *v78 = 2112;
    *&v78[2] = v27;
    LOWORD(v79[0]) = 2112;
    *(v79 + 2) = v28;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not sufficiently formed link created/changed message, type: %d hasLink: %d linkGroupUUID: %@ conversationGroupUUID: %@", buf, 0x22u);
  }

LABEL_47:
}

void sub_10016AA38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016AB54;
  block[3] = &unk_10061BCB0;
  v13 = v6;
  v14 = *(a1 + 40);
  v15 = v5;
  v19 = *(a1 + 64);
  v16 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 32);
  v17 = v8;
  v18 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

void sub_10016AB54(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = sub_100004778(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_100476A44();
    }

    return;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    v6 = sub_100004778(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 80))
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v13 = *(a1 + 56);
      v14 = *(a1 + 64);
      v19 = 138543874;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[In-Advance] Link successfully stored (update: %{public}@) from %@ with linkDescriptor %@", &v19, 0x20u);
    }

    goto LABEL_17;
  }

  v4 = [NSSet setWithObject:IDSRegistrationPropertySupportsGondola];
  [v3 addRequiredCapabilities:v4 requiredLackOfCapabilities:0];

  v5 = [*(a1 + 40) setConversationLink:*(a1 + 48) allowUpdate:*(a1 + 80)];
  LODWORD(v4) = v5;
  v6 = sub_100004778(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v7)
    {
      if (*(a1 + 80))
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = [*(a1 + 40) UUID];
      v10 = *(a1 + 56);
      v11 = *(a1 + 64);
      v19 = 138544130;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Ongoing] Received link created/changed (update: %{public}@) message for conversation UUID %@ from %@ with linkDescriptor %@", &v19, 0x2Au);
    }

LABEL_17:

    v16 = sub_100004778(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "store received link", &v19, 2u);
    }

    [*(a1 + 72) notifyDelegatesOfChangedLink:*(a1 + 48) conversation:*(a1 + 40)];
    return;
  }

  if (v7)
  {
    v17 = *(a1 + 48);
    v18 = [*(a1 + 40) UUID];
    v19 = 138412546;
    v20 = v17;
    v21 = 2112;
    v22 = v18;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Did not set conversation link %@ to conversation UUID %@", &v19, 0x16u);
  }
}

void sub_10016AEE8(uint64_t a1)
{
  v2 = [*(a1 + 32) type];
  if (v2 == 24 && (v2 = [*(a1 + 32) hasLink], (v2 & 1) != 0))
  {
    v3 = [*(a1 + 32) link];
    v4 = [v3 tuConversationLink];

    if (v4)
    {
      v6 = *(a1 + 40);
      v7 = [v4 originatorHandle];
      LOBYTE(v6) = [v6 isEquivalentToHandle:v7];

      if (v6)
      {
        v9 = *(a1 + 48);
        v10 = [*(a1 + 32) conversationGroupUUID];
        v11 = [v9 conversationWithGroupUUID:v10];

        v12 = [*(a1 + 48) linkManager];
        v36 = 0;
        v13 = [v12 fetchActivatedLinksWithError:&v36];
        v14 = v36;

        if (v14)
        {
          v16 = sub_100004778(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            sub_100476AB4();
          }
        }

        else
        {
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v31 = v13;
          v22 = v13;
          v23 = [v22 countByEnumeratingWithState:&v32 objects:v37 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v33;
LABEL_16:
            v26 = 0;
            while (1)
            {
              if (*v33 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v32 + 1) + 8 * v26);
              if ([v27 isEquivalentToConversationLink:v4])
              {
                break;
              }

              if (v24 == ++v26)
              {
                v24 = [v22 countByEnumeratingWithState:&v32 objects:v37 count:16];
                if (v24)
                {
                  goto LABEL_16;
                }

                goto LABEL_22;
              }
            }

            v16 = v27;

            if (!v16)
            {
              goto LABEL_27;
            }

            v29 = sub_100004778(v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v39 = v16;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "handleReceivedLinkInvalidatedMessage: remove link: %@", buf, 0xCu);
            }

            [*(a1 + 48) removeLink:v16 reason:8 withConversation:v11];
          }

          else
          {
LABEL_22:

LABEL_27:
            v16 = sub_100004778(v28);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v30 = *(a1 + 32);
              *buf = 138412290;
              v39 = v30;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "We are not tracking any stored link for link invalidation message %@", buf, 0xCu);
            }
          }

          v13 = v31;
        }
      }

      else
      {
        v11 = sub_100004778(v8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 40);
          v20 = [v4 originatorHandle];
          v21 = *(a1 + 32);
          *buf = 138412802;
          v39 = v19;
          v40 = 2112;
          v41 = v20;
          v42 = 2112;
          v43 = v21;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Sender %@ did not match link's originator handle %@ for link invalidation message %@", buf, 0x20u);
        }
      }
    }

    else
    {
      v11 = sub_100004778(v5);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        *buf = 138412290;
        v39 = v18;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Invalid TUConversationLink for link invalidation message %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = sub_100004778(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      *buf = 138412290;
      v39 = v17;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not sufficiently formed link invalidation message %@", buf, 0xCu);
    }
  }
}

void sub_10016B3F0(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1[4] queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10016B4D0;
  v9[3] = &unk_10061A450;
  v10 = v4;
  v6 = a1[5];
  v7 = a1[4];
  v11 = v6;
  v12 = v7;
  v13 = a1[6];
  v8 = v4;
  dispatch_async(v5, v9);
}

void sub_10016B4D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_100004778(a1);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100476B28();
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "removeLink completed for %@ ", &v6, 0xCu);
    }

    [*(a1 + 48) notifyDelegatesOfChangedLink:*(a1 + 40) conversation:*(a1 + 56)];
  }
}

id sub_10016CFD0(uint64_t a1, void *a2)
{
  v3 = [a2 handle];
  v4 = [v3 isEquivalentToHandle:*(a1 + 32)];

  return v4;
}

void sub_100171074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10017108C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v2 count]);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [*(a1 + 32) mutableConversationsByUUID];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        if (([v12 isFromStorage] & 1) == 0)
        {
          v13 = [v12 tuConversation];
          v14 = *(*(*(a1 + 40) + 8) + 40);
          v15 = [v12 groupUUID];
          [v14 setObject:v13 forKeyedSubscript:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = [*(a1 + 32) mutablePendingConversationsByPseudonym];
  v17 = [v16 allValues];

  v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v26 + 1) + 8 * j);
        v23 = [v22 tuConversation];
        v24 = *(*(*(a1 + 40) + 8) + 40);
        v25 = [v22 temporaryGroupUUID];
        [v24 setObject:v23 forKeyedSubscript:v25];
      }

      v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v19);
  }
}

void sub_10017141C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100171434(uint64_t a1)
{
  v2 = [*(a1 + 32) advertisementsBySessionUUID];
  v3 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v2 count]);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [*(a1 + 32) advertisementsBySessionUUID];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = *(*(*(a1 + 40) + 8) + 40);
        v14 = [v12 sessionUUID];
        [v13 setObject:v12 forKeyedSubscript:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

void sub_1001716C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001716D8(uint64_t a1)
{
  v2 = [*(a1 + 32) _incomingPendingConversationsByGroupUUID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100171BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100171BF0(uint64_t a1)
{
  v5 = [*(a1 + 32) mutablePseudonymsByCallUUID];
  v2 = [NSDictionary dictionaryWithDictionary:v5];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100171D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100171D8C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v2 count]);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [*(a1 + 32) mutableConversationsByUUID];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        if ((*(a1 + 48) & 1) != 0 || ([*(*(&v30 + 1) + 8 * i) isFromStorage] & 1) == 0)
        {
          v13 = [v12 tuConversation];
          v14 = *(*(*(a1 + 40) + 8) + 40);
          v15 = [v12 UUID];
          [v14 setObject:v13 forKeyedSubscript:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = [*(a1 + 32) mutablePendingConversationsByPseudonym];
  v17 = [v16 allValues];

  v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v26 + 1) + 8 * j);
        v23 = [v22 tuConversation];
        v24 = *(*(*(a1 + 40) + 8) + 40);
        v25 = [v22 temporaryGroupUUID];
        [v24 setObject:v23 forKeyedSubscript:v25];
      }

      v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v19);
  }
}

void sub_1001722A8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

void sub_1001723B0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_100172534(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) service];
    v4 = [v3 description];
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[CSDConversationManager] Beginning to listen on service:%@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) name];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [*(a1 + 40) listeningOnIDSServiceIdentifiers];
  v7 = [v6 containsObject:v5];

  if ((v7 & 1) == 0)
  {
    v10 = [*(a1 + 40) listeningOnIDSServiceIdentifiers];
    [v10 addObject:v5];

    v12 = sub_100004778(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[CSDConversationManager] Adding self as a delegate for IDSService with identifier: %@", buf, 0xCu);
    }

LABEL_10:
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v9 = [v14 queue];
    [v13 addServiceDelegate:v14 queue:v9];
    goto LABEL_11;
  }

  v9 = sub_100004778(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[CSDConversationManager] Skipping adding self as a delegate for IDSService with identifier: %@", buf, 0xCu);
  }

LABEL_11:

  v15 = [*(a1 + 40) lockStateObserver];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100172794;
  v16[3] = &unk_100619D38;
  v16[4] = *(a1 + 40);
  [v15 performBlockAfterFirstUnlock:v16];
}

void sub_1001728F0(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18)
{
  v87 = a2;
  v24 = a3;
  v85 = a4;
  v25 = a6;
  v84 = a7;
  v26 = a8;
  v27 = v24;
  v86 = a9;
  v83 = a10;
  v28 = v26;
  v82 = a11;
  v29 = a12;
  v30 = a13;
  v81 = a14;
  v80 = a15;
  v79 = a16;
  v31 = *(a1 + 32);
  v32 = [NSSet setWithArray:v28];
  v33 = [v31 conversationWithGroupUUID:v27 orRepresentedByRemoteMembers:v32 andLink:v29];

  if (v33)
  {
    v35 = sub_100004778(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      [v33 UUID];
      v37 = v36 = v33;
      *buf = 138412546;
      v99 = v87;
      v100 = 2112;
      v101 = v37;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[WARN] Not adding cached conversation with UUID %@ because we already added equivalent conversation with UUID %@", buf, 0x16u);

      v33 = v36;
    }

    v38 = v79;
  }

  else
  {
    v39 = a5;
    v75 = v30;
    v76 = v29;
    if (v29)
    {
      v40 = [*(a1 + 32) pendingMembershipTracker];
      v74 = [v40 retrievePendingMembersFor:v27];
    }

    else
    {
      v74 = +[NSSet set];
    }

    v78 = v25;
    v41 = [*(a1 + 32) conversationProviderManager];
    v73 = [v41 tuConversationProviderForIdentifier:v80];

    v43 = sub_100004778(v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v99 = v27;
      v100 = 2112;
      v101 = v28;
      v102 = 2112;
      v103 = v86;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Reviving cached conversation with groupUUID: %@ remoteMembers: %@ lightweightMembers: %@", buf, 0x20u);
    }

    v44 = *(a1 + 32);
    v45 = [NSSet setWithArray:v28];
    v46 = [NSSet setWithArray:v83];
    v47 = [NSSet setWithArray:v86];
    LOWORD(v70) = 1;
    LOBYTE(v69) = 1;
    v72 = v27;
    v48 = [v44 createConversationWithUUID:v87 groupUUID:v27 messagesGroupUUID:v85 locallyCreated:v39 localMember:v78 initiator:v84 remoteMembers:v45 pendingMembers:v74 otherInvitedHandles:v46 remotePushTokens:0 lightweightMembers:v47 activity:0 link:v29 report:v30 fromStorage:v69 avMode:a17 presentationMode:a18 provider:v73 screenSharingRequest:0 isInitiator:v70 isOldMessage:?];

    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v49 = v82;
    v50 = [v49 countByEnumeratingWithState:&v92 objects:v97 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v93;
      do
      {
        for (i = 0; i != v51; i = i + 1)
        {
          if (*v93 != v52)
          {
            objc_enumerationMutation(v49);
          }

          [v48 addActiveParticipant:*(*(&v92 + 1) + 8 * i)];
        }

        v51 = [v49 countByEnumeratingWithState:&v92 objects:v97 count:16];
      }

      while (v51);
    }

    v71 = v28;

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v54 = v81;
    v55 = [v54 countByEnumeratingWithState:&v88 objects:v96 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v89;
      do
      {
        for (j = 0; j != v56; j = j + 1)
        {
          if (*v89 != v57)
          {
            objc_enumerationMutation(v54);
          }

          v59 = *(*(&v88 + 1) + 8 * j);
          v60 = [v59 activity];
          v61 = [v60 fromHandle];
          v62 = [v61 tuHandle];

          if (v62 || ([v59 locallyPersistedMetadata], v63 = objc_claimAutoreleasedReturnValue(), v64 = objc_msgSend(v63, "locallyInitiated"), v63, v64))
          {
            v66 = [*(a1 + 32) createActivitySession:v59 onConversation:v48 fromHandle:v62];
            if (!v66)
            {
              v67 = sub_100004778(0);
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v99 = v59;
                _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to create newActivitySession for activitySession %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v66 = sub_100004778(v65);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v99 = v59;
              _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Failed to create activitySession from persistence since we couldn't find the trusted fromHandle on activitySession: %@", buf, 0xCu);
            }
          }
        }

        v56 = [v54 countByEnumeratingWithState:&v88 objects:v96 count:16];
      }

      while (v56);
    }

    v38 = v79;
    if (v79)
    {
      v68 = [v79 tuConversationActivitySession];
      [v48 setStagedActivitySessionForActivitySession:v68];
    }

    v28 = v71;
    v27 = v72;
    v29 = v76;
    v25 = v78;
    v35 = v74;
    v30 = v75;
    v33 = 0;
  }
}

void sub_100173278(uint64_t a1)
{
  v1 = a1;
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);
    v5 = *(v1 + 48);
    *buf = 138412802;
    *v79 = v3;
    *&v79[8] = 2112;
    v80 = v4;
    v81 = 2112;
    v82 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "groupUUID: %@ remoteMembers: %@, conversationProvider: %@", buf, 0x20u);
  }

  v6 = [*(v1 + 56) conversationWithGroupUUID:*(v1 + 32) orRepresentedByRemoteMembers:*(v1 + 40) andLink:*(v1 + 64)];
  if ([v6 state] == 4 && objc_msgSend(*(v1 + 40), "count") == 1 && !*(v1 + 64))
  {
    v7 = sub_100004778(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 UUID];
      *buf = 138412290;
      *v79 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Found existing conversation %@ but not reusing it since it's leaving and we're trying to join a U+1 call", buf, 0xCu);
    }

    v6 = 0;
  }

  v9 = [v6 provider];
  v10 = [v9 isTelephonyWithSharePlayProvider];

  if (v10)
  {

    v6 = 0;
  }

  v11 = [v6 state];
  if (v11 == 3)
  {
    v12 = [v6 remoteMembers];
    if ([v12 count] == 1 && objc_msgSend(*(v1 + 40), "count") == 1 && *(v1 + 128) == 2)
    {
      v13 = [v6 isVideo] ^ 1;
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

  v14 = sub_100004778(v11);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (!v6 || v13)
  {
    if (v15)
    {
      *buf = 67109376;
      *v79 = v6 == 0;
      *&v79[4] = 1024;
      *&v79[6] = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No conversation currently exists to join: %d, so creating a new one isConversationVideoUpgrade: %d", buf, 0xEu);
    }

    v23 = [*(v1 + 56) activeLocalHandlesForProvider];
    v24 = v23[2](v23, *(v1 + 48));

    v25 = [*(v1 + 56) localCallerIDForProvider];
    v26 = v25[2](v25, *(v1 + 48));

    v27 = *(v1 + 72);
    v28 = v27;
    if (v27 || !v26)
    {
      if (!v27)
      {
        goto LABEL_51;
      }

      v29 = *(v1 + 56);
      v30 = [v27 handle];
      LOBYTE(v29) = [v29 isValidLocalHandle:v30 forProvider:*(v1 + 48)];

      if ((v29 & 1) == 0)
      {
        v40 = sub_100004778(v31);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v79 = v28;
          *&v79[8] = 2112;
          v80 = v24;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[WARN] The request specified that local member %@ should be used, but the useable handles for FaceTime are %@. We cannot proceed with a handle that's not registered for FaceTime on this device.", buf, 0x16u);
        }

        goto LABEL_51;
      }
    }

    else
    {
      v27 = [[TUConversationMember alloc] initWithHandle:v26 nickname:0];
      v28 = v27;
      if (!v27)
      {
LABEL_51:
        v28 = sub_100004778(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_100477770();
        }

LABEL_77:

        goto LABEL_78;
      }
    }

    v32 = [*(v1 + 56) featureFlags];
    v70 = v6;
    if (![v32 nameAndPhotoEnabled])
    {
      goto LABEL_56;
    }

    v33 = [*(v1 + 56) featureFlags];
    if ([v33 nameAndPhotoBackwardsCompatibilityEnabled])
    {
      v34 = [v28 nickname];

      if (v34)
      {
LABEL_57:
        v45 = [*(v1 + 40) mutableCopy];
        v71 = v1;
        v68 = v26;
        v69 = v24;
        if (_TUIsInternalInstall())
        {
          v46 = +[NSUserDefaults tu_defaults];
          v72 = [v46 stringForKey:@"DefaultsRemovedURI"];
        }

        else
        {
          v72 = 0;
        }

        v47 = objc_alloc_init(NSMutableSet);
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v48 = v45;
        v49 = [v48 countByEnumeratingWithState:&v73 objects:v77 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v74;
          do
          {
            for (i = 0; i != v50; i = i + 1)
            {
              if (*v74 != v51)
              {
                objc_enumerationMutation(v48);
              }

              v53 = *(*(&v73 + 1) + 8 * i);
              v54 = [v53 handle];
              v55 = [v28 handle];
              v56 = [v54 isEqualToHandle:v55];

              if ((v56 & 1) == 0)
              {
                if (!_TUIsInternalInstall())
                {
                  continue;
                }

                v57 = [v53 handle];
                v58 = [v57 value];
                v59 = [v72 isEqualToString:v58];

                if (!v59)
                {
                  continue;
                }
              }

              [v47 addObject:v53];
            }

            v50 = [v48 countByEnumeratingWithState:&v73 objects:v77 count:16];
          }

          while (v50);
        }

        if ([v47 count])
        {
          [v48 minusSet:v47];
        }

        v1 = v71;
        v24 = v69;
        if (*(v71 + 64))
        {
          v60 = [*(v71 + 56) pendingMembershipTracker];
          v61 = [v60 retrievePendingMembersFor:*(v71 + 32)];
        }

        else
        {
          v61 = +[NSSet set];
        }

        v62 = *(v71 + 56);
        v63 = +[NSUUID UUID];
        v64 = [v62 createConversationIfNecessaryWithUUID:v63 groupUUID:*(v71 + 32) messagesGroupUUID:*(v71 + 80) locallyCreated:1 localMember:v28 remoteMembers:v48 pendingMembers:v61 otherInvitedHandles:*(v71 + 88) remotePushTokens:*(v71 + 96) lightweightMembers:0 link:*(v71 + 64) activity:*(v71 + 104) avMode:*(v71 + 128) presentationMode:*(v71 + 136) provider:*(v71 + 48) screenSharingRequest:*(v71 + 112)];

        v6 = v64;
        v26 = v68;
        goto LABEL_77;
      }

      v35 = [*(v1 + 56) getPersonalNicknameBlock];
      v32 = v35[2]();

      v37 = sub_100004778(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v79 = v28;
        *&v79[8] = 2112;
        v80 = v32;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Attempting to update localMember: %@ with nickname: %@", buf, 0x16u);
      }

      v38 = [v32 firstName];
      if ([v38 length])
      {
      }

      else
      {
        v41 = [v32 lastName];
        v42 = [v41 length];

        if (!v42)
        {
LABEL_56:

          goto LABEL_57;
        }
      }

      v33 = [v32 firstName];
      v43 = [v32 lastName];
      v44 = [NSString stringWithFormat:@"%@ %@", v33, v43];
      [v28 setNickname:v44];
    }

    goto LABEL_56;
  }

  if (v15)
  {
    v16 = [v6 UUID];
    v17 = [v6 groupUUID];
    *buf = 138412546;
    *v79 = v16;
    *&v79[8] = 2112;
    v80 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found existing conversation with UUID: %@, groupUUID: %@", buf, 0x16u);
  }

  v18 = [v6 isFromStorage];
  if (v18)
  {
    v19 = sub_100004778(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v6 UUID];
      *buf = 138412290;
      *v79 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Activating cached conversation from storage with UUID: %@ as someone seems to be interested in it.", buf, 0xCu);
    }

    [v6 setFromStorage:0];
  }

  v21 = [*(v1 + 56) featureFlags];
  if ([v21 groupFacetimeAsAServiceEnabled])
  {
    v22 = [*(v1 + 48) supportsSharePlay] ^ 1;
  }

  else
  {
    v22 = 0;
  }

  if (*(v1 + 104) && (v22 & 1) == 0)
  {
    v39 = [v6 createStagedActivitySessionForActivity:?];
  }

LABEL_78:
  [v6 setProvider:*(v1 + 48)];
  v65 = [v6 tuConversation];
  v66 = *(*(v1 + 120) + 8);
  v67 = *(v66 + 40);
  *(v66 + 40) = v65;
}

void sub_100173C8C(id *a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 138412546;
    v59 = v3;
    v60 = 2112;
    v61 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "joinExistingConversationWithUUID: %@ context: %@", buf, 0x16u);
  }

  v5 = [a1[6] mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:a1[4]];

  if (!v6)
  {
    v13 = sub_100004778(v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = a1[4];
      *buf = 138412290;
      v59 = v17;
      v16 = "[WARN] Could not find conversation with UUID: %@";
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  if ([v6 state] == 2 || objc_msgSend(v6, "state") == 3)
  {
    v8 = [a1[6] featureFlags];
    v9 = [v8 avLessSharePlayEnabled];

    if ((v9 & 1) == 0)
    {
      v13 = sub_100004778(v10);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = a1[4];
        *buf = 138412290;
        v59 = v18;
        v16 = "Ignoring request to join conversation with UUID: %@ since conversation is already joined";
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    v11 = [a1[5] avMode];
    v12 = [v6 avMode];
    v13 = sub_100004778(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v11 == v12)
    {
      if (v14)
      {
        v15 = a1[4];
        *buf = 138412290;
        v59 = v15;
        v16 = "Ignoring request to join conversation with UUID: %@ since conversation is already joined";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    if (v14)
    {
      v44 = a1[4];
      *buf = 138412290;
      v59 = v44;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Request to join conversation is trying to change avMode on conversation UUID: %@", buf, 0xCu);
    }

    [v6 setVideoEnabled:{objc_msgSend(a1[5], "isVideoEnabled")}];
    [v6 setLocalParticipantAudioVideoMode:objc_msgSend(a1[5] presentationMode:{"avMode"), objc_msgSend(a1[5], "presentationMode")}];
  }

  else
  {
    v19 = [a1[5] collaborationIdentifier];

    if (v19)
    {
      v20 = [a1[5] collaborationIdentifier];
      v21 = [NSMutableSet setWithObjects:v20, 0];

      [v6 setHighlightIdentifiers:v21];
    }

    v22 = [a1[6] mutableConversationsByUUID];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_100174318;
    v54[3] = &unk_10061CEA8;
    v23 = v6;
    v55 = v23;
    v56 = a1[4];
    [v22 enumerateKeysAndObjectsUsingBlock:v54];

    [a1[5] setOneToOneModeEnabled:{objc_msgSend(v23, "isOneToOneModeEnabled")}];
    v24 = [v23 provider];
    [a1[5] setProvider:v24];

    v25 = [a1[5] isOneToOneModeEnabled];
    if (v25)
    {
      v26 = sub_100004778(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = a1[5];
        *buf = 138412290;
        v59 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Updating context to use isOneToOneModeEnabled=true %@", buf, 0xCu);
      }
    }

    [a1[5] setVideoPaused:{objc_msgSend(v23, "isVideoPaused")}];
    v28 = [a1[6] featureFlags];
    [a1[5] setGftDowngradeToOneToOneAvailable:{objc_msgSend(v28, "gftDowngradeToOneToOne")}];

    v29 = [a1[6] featureFlags];
    [a1[5] setUPlusNDowngradeAvailable:{objc_msgSend(v29, "uPlusNDowngrade")}];

    v30 = [a1[6] featureFlags];
    [a1[5] setUPlusOneScreenShareAvailable:{objc_msgSend(v30, "uPlusOneScreenSharing")}];

    v31 = [a1[6] featureFlags];
    [v23 isRelaying];
    [a1[6] isScreenSharingInitiationAvailable];
    [a1[5] setSupportsRequestToScreenShare:TUIsRequestToScreenShareAvailable()];

    [v23 joinUsingContext:a1[5]];
    v32 = [a1[5] activity];

    if (v32)
    {
      v47 = v23;
      v48 = v6;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      obj = [v23 tuActivitySessions];
      v33 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v51;
        while (2)
        {
          for (i = 0; i != v34; i = i + 1)
          {
            if (*v51 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v37 = *(*(&v50 + 1) + 8 * i);
            v38 = [v37 activity];
            v39 = [v38 UUID];
            v40 = [a1[5] activity];
            v41 = [v40 UUID];
            v42 = [v39 isEqual:v41];

            if (v42)
            {
              v45 = sub_100004778(v43);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                v46 = [a1[5] activity];
                *buf = 138412290;
                v59 = v46;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Conversation join is for a new activity: %@, broadcasting image.", buf, 0xCu);
              }

              [a1[6] broadcastImageForSession:v37 onConversation:v47];
              goto LABEL_39;
            }
          }

          v34 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
          if (v34)
          {
            continue;
          }

          break;
        }
      }

LABEL_39:

      v6 = v48;
    }
  }

LABEL_16:
}

void sub_100174318(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 state] == 2 || objc_msgSend(v6, "state") == 3)
  {
    v7 = [*(a1 + 32) activitySessions];
    if ([v7 count])
    {
      v8 = 1;
    }

    else
    {
      v9 = [v6 activitySessions];
      v8 = [v9 count] != 0;
    }

    v10 = [v6 state];
    if (v10 == 3 && (v10 = [v6 isOneToOneModeEnabled], v10) && (v10 = objc_msgSend(*(a1 + 32), "isOneToOneModeEnabled"), !v8 && (v10 & 1) != 0))
    {
      v13 = v10;
      v14 = sub_100004778(v10);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = @"YES";
        if ((v13 & 1) == 0)
        {
          v15 = @"NO";
        }

        v16 = 138412546;
        v17 = @"NO";
        v18 = 2112;
        v19 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not leaving converastion because hasAnyActivitySessions: %@, isOneToOneEnabled: %@", &v16, 0x16u);
      }
    }

    else
    {
      v11 = sub_100004778(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        v16 = 138412546;
        v17 = v5;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Leaving existing conversation with UUID: %@ in favor of new conversation with UUID: %@", &v16, 0x16u);
      }

      [v6 leave];
    }
  }
}

void sub_100174664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10017467C(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v44 = v3;
    v45 = 2112;
    v46 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LMI: Creating pending conversation for link: %@, localMember: %@", buf, 0x16u);
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 40);
  if (!v6 || ([v6 handle], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "value"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v7, !v9))
  {
    v10 = [TUConversationMember alloc];
    v11 = [*(a1 + 48) localCallerID];
    v12 = v11[2]();
    v13 = [v10 initWithHandle:v12 nickname:0];

    v5 = v13;
  }

  v14 = [v5 handle];

  if (v14)
  {
    v15 = [CSDPendingConversation alloc];
    v16 = *(a1 + 32);
    v17 = [*(a1 + 48) queue];
    v33 = v5;
    v18 = [(CSDPendingConversation *)v15 initWithConversationLink:v16 localMember:v5 queue:v17];

    [(CSDPendingConversation *)v18 setVideoEnabled:*(a1 + 64)];
    [(CSDPendingConversation *)v18 setLetMeInRequestState:1];
    v19 = [*(a1 + 48) mutablePendingConversationsByPseudonym];
    v20 = [*(a1 + 32) pseudonym];
    [v19 setObject:v18 forKeyedSubscript:v20];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = [*(a1 + 48) delegateToQueue];
    v21 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v39;
      do
      {
        v24 = 0;
        do
        {
          if (*v39 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v38 + 1) + 8 * v24);
          v26 = [(CSDPendingConversation *)v18 tuConversation];
          v27 = [*(a1 + 48) delegateToQueue];
          v28 = [v27 objectForKey:v25];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100174A08;
          block[3] = &unk_100619E58;
          block[4] = v25;
          v36 = v26;
          v37 = *(a1 + 48);
          v29 = v26;
          dispatch_async(v28, block);

          v24 = v24 + 1;
        }

        while (v22 != v24);
        v22 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v22);
    }

    v30 = [(CSDPendingConversation *)v18 tuConversation];
    v31 = *(*(a1 + 56) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;

    v5 = v33;
  }
}

void sub_100174A08(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 40)];
}

void sub_100174C04(uint64_t a1)
{
  if ([*(a1 + 32) _linksEnabled])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v2 = [*(a1 + 32) mutablePendingConversationsByPseudonym];
    v3 = [v2 allValues];

    v4 = [v3 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v25;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * v7);
        v9 = [v8 link];
        v10 = [v9 pseudonym];
        v11 = [v10 isEqualToString:*(a1 + 40)];

        if (v11)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v24 objects:v30 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v13 = v8;

      if (!v13)
      {
        goto LABEL_15;
      }

      v14 = sub_100004778(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v13 link];
        *buf = 138412290;
        v29 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "LMI: Requesting membership in pending conversation for link %@", buf, 0xCu);
      }

      v16 = [CSDMessagingConversationMessage alloc];
      v17 = [v13 link];
      v18 = [(CSDMessagingConversationMessage *)v16 initWithType:10 groupUUID:0 link:v17];

      v19 = [*(a1 + 32) linkManager];
      v20 = [v13 link];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100174ED8;
      v22[3] = &unk_10061CEF8;
      v22[4] = *(a1 + 32);
      v23 = v13;
      v21 = v13;
      [v19 encryptLetMeInRequest:v18 link:v20 completionHandler:v22];
    }

    else
    {
LABEL_10:

LABEL_15:
      v21 = sub_100004778(v12);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1004777E0();
      }
    }
  }
}

void sub_100174ED8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100174FF0;
  block[3] = &unk_10061A428;
  v17 = v9;
  v18 = v7;
  v19 = v8;
  v11 = *(a1 + 40);
  v12 = *(a1 + 32);
  v20 = v11;
  v21 = v12;
  v13 = v8;
  v14 = v7;
  v15 = v9;
  dispatch_async(v10, block);
}

void sub_100174FF0(uint64_t a1)
{
  if (!*(a1 + 32) && *(a1 + 40) && *(a1 + 48))
  {
    [*(a1 + 56) setLetMeInKeyAgreement:?];
    v3 = [CSDMessagingConversationMessage alloc];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 56) link];
    v1 = [(CSDMessagingConversationMessage *)v3 initWithEncryptedMessage:v4 enclosedType:10 link:v5];

    v6 = [v1 data];
    v7 = [*(a1 + 56) localMember];
    v8 = [*(a1 + 64) service];
    v9 = [v7 handle];
    v10 = [v9 value];
    v11 = [v8 accountWithCallerID:v10];

    v12 = [*(a1 + 56) link];
    v13 = [v12 pseudonym];
    v14 = v7;
    v15 = [TUHandle normalizedGenericHandleForValue:v13];

    v16 = v11;
    v17 = [NSDictionary alloc];
    v18 = [v17 initWithObjectsAndKeys:{&off_10063ECF0, IDSSendMessageOptionForceQuery, 0}];
    v19 = [*(a1 + 64) sendDataBlock];
    v45 = v15;
    v20 = TUCopyIDSCanonicalAddressForHandle();
    v21 = v18;
    v22 = [NSSet setWithObject:v20];
    v54 = 0;
    LOBYTE(v18) = (v19)[2](v19, v6, v16, v22, v14, v18, &v54, 0, 0);
    v46 = v54;

    v24 = sub_100004778(v23);
    v25 = v24;
    if (v18)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [*(a1 + 56) link];
        *buf = 138412290;
        v57 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Sent let me in request for link %@", buf, 0xCu);
      }

      [*(a1 + 56) setLetMeInRequestState:2];
      if (v46)
      {
        v27 = [*(a1 + 56) link];
        v28 = [v27 pseudonym];
        v29 = [*(a1 + 64) mutablePseudonymsByRequestIdentifiers];
        [v29 setObject:v28 forKeyedSubscript:v46];
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v25 = [*(a1 + 64) delegateToQueue];
      v30 = [v25 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v30)
      {
        v31 = v30;
        v41 = v21;
        v42 = v16;
        v43 = v14;
        v44 = v6;
        v32 = *v51;
        do
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v51 != v32)
            {
              objc_enumerationMutation(v25);
            }

            v34 = *(*(&v50 + 1) + 8 * i);
            v35 = [*(a1 + 56) tuConversation];
            v36 = [*(a1 + 64) delegateToQueue];
            v37 = [v36 objectForKey:v34];

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1001754C8;
            block[3] = &unk_100619E58;
            block[4] = v34;
            v48 = v35;
            v49 = *(a1 + 64);
            v38 = v35;
            dispatch_async(v37, block);
          }

          v31 = [v25 countByEnumeratingWithState:&v50 objects:v55 count:16];
        }

        while (v31);
        v6 = v44;
        v16 = v42;
        v14 = v43;
        v39 = v45;
        v40 = v46;
        v21 = v41;
        goto LABEL_23;
      }
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100477854();
    }

    v39 = v45;
    v40 = v46;
LABEL_23:

    goto LABEL_4;
  }

  v1 = sub_100004778(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_100477890();
  }

LABEL_4:
}

void sub_1001754C8(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 40)];
}

void sub_100175C28(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v30 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "UUID: %@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) mutableConversationsByUUID];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

  if (v5)
  {
    [v5 setLetMeInRequestState:*(a1 + 56)];
    [v5 setLink:*(a1 + 48)];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [*(a1 + 40) delegateToQueue];
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      obj = v7;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          v13 = [v5 tuConversation];
          v14 = [*(a1 + 40) delegateToQueue];
          v15 = [v14 objectForKey:v12];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100175F04;
          block[3] = &unk_100619E58;
          block[4] = v12;
          v23 = v13;
          v24 = *(a1 + 40);
          v16 = v13;
          dispatch_async(v15, block);
        }

        v7 = obj;
        v9 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = sub_100004778(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v7;
      v18 = *(a1 + 32);
      v19 = [*(a1 + 40) mutableConversationsByUUID];
      v20 = [v19 allKeys];
      *buf = 138412546;
      v30 = v18;
      v7 = v17;
      v31 = 2112;
      v32 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with UUID %@. All conversation UUIDs: %@", buf, 0x16u);
    }
  }
}

void sub_100175F04(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 40)];
}

void sub_1001766B8(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "UUID: %@", &v11, 0xCu);
  }

  v4 = [*(a1 + 40) mutableConversationsByUUID];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

  if (v5)
  {
    [v5 startAudio];
  }

  else
  {
    v7 = sub_100004778(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) mutableConversationsByUUID];
      v10 = [v9 allKeys];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with UUID %@. All conversations UUIDs: %@", &v11, 0x16u);
    }
  }
}

void sub_100176AF4(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v5 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = *(a1 + 32);
  if (v5)
  {
    [v3 _leaveConversation:v5 withContext:*(a1 + 48)];
  }

  else
  {
    v4 = [v3 _removePendingConversationsWithTemporaryGroupUUIDIfNecessary:*(a1 + 40)];
  }
}

void sub_100176C08(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) _leaveConversation:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_100176DEC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) mutablePseudonymsByCallUUID];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

void sub_100176EFC(uint64_t a1)
{
  v2 = [*(a1 + 32) mutablePseudonymsByCallUUID];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_10017700C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setUplinkMuted:*(a1 + 48)];
}

void sub_100177134(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setVideo:*(a1 + 48)];
}

void sub_100177254(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v4 = [v3 remoteMembers];
  v5 = [v4 count];

  if (v5 == 1)
  {
    v7 = [TUConversationMember alloc];
    v8 = [v3 activeRemoteParticipants];
    v9 = [v8 allObjects];
    v10 = [v9 firstObject];
    v11 = [v10 tuConversationParticipant];
    v12 = [v11 handle];
    v13 = [v7 initWithHandle:v12];

    v14 = [CSDMessagingConversationMessage alloc];
    v15 = [v3 groupUUID];
    v16 = [(CSDMessagingConversationMessage *)v14 initWithType:22 groupUUID:v15 link:0];

    v17 = *(a1 + 32);
    v18 = [(CSDMessagingConversationMessage *)v16 data];
    [v17 sendData:v18 onConversation:v3 toMember:v13];
  }

  else
  {
    v19 = sub_100004778(v6);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10047793C();
    }
  }
}

void sub_1001774A4(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setVideoEnabled:*(a1 + 48)];
}

void sub_1001775CC(uint64_t a1)
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = [*(a1 + 32) mutablePendingConversationsByPseudonym];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [v9 temporaryGroupUUID];
        v11 = [v10 isEqual:*(a1 + 40)];

        if (v11)
        {
          v12 = v9;

          [v12 setUplinkMuted:*(a1 + 48)];
          v6 = v12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v13 = [v6 link];
  v14 = [v13 pseudonym];

  if (v14)
  {
    v16 = sub_100004778(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v6 link];
      v18 = [v17 pseudonym];
      v19 = [v6 conversationGroupUUID];
      *buf = 138412546;
      v28 = v18;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Updating pending conversation with pseudonym: %@, conversation group UUID: %@", buf, 0x16u);
    }

    v20 = [*(a1 + 32) mutablePendingConversationsByPseudonym];
    v21 = [v6 link];
    v22 = [v21 pseudonym];
    [v20 setObject:v6 forKeyedSubscript:v22];
  }
}

void sub_1001778F0(uint64_t a1)
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = [*(a1 + 32) mutablePendingConversationsByPseudonym];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [v9 temporaryGroupUUID];
        v11 = [v10 isEqual:*(a1 + 40)];

        if (v11)
        {
          v12 = v9;

          [v12 setVideoEnabled:*(a1 + 48)];
          v6 = v12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v13 = [v6 link];
  v14 = [v13 pseudonym];

  if (v14)
  {
    v16 = sub_100004778(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v6 link];
      v18 = [v17 pseudonym];
      v19 = [v6 conversationGroupUUID];
      *buf = 138412546;
      v28 = v18;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Updating pending conversation with pseudonym: %@, conversation group UUID: %@", buf, 0x16u);
    }

    v20 = [*(a1 + 32) mutablePendingConversationsByPseudonym];
    v21 = [v6 link];
    v22 = [v21 pseudonym];
    [v20 setObject:v6 forKeyedSubscript:v22];
  }
}

void sub_100177C78(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v17 = 138412290;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Asked for participant to share their screen: %@", &v17, 0xCu);
  }

  v4 = [*(a1 + 40) mutableConversationsByUUID];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 48)];

  if (v5)
  {
    v7 = [*(a1 + 32) handle];
    v8 = TUNormalizedHandleForTUHandle();

    v9 = [v5 remoteParticipantForHandle:v8];
    if (v9)
    {
      v10 = [*(a1 + 40) conversationContainsScreenShareRequest:v5 localRequest:1 requestHandle:v8];
      if (v10)
      {
        v11 = sub_100004778(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1004779B4();
        }
      }

      else
      {
        [*(a1 + 40) cancelPreviouslySentScreenShareRequests:v5];
        v15 = [TUScreenSharingRequest alloc];
        v16 = +[NSUUID UUID];
        v11 = [v15 initWithHandle:v8 type:1 originType:2 UUID:v16 participantIdentifier:objc_msgSend(*(a1 + 32) metadata:{"identifier"), 0}];

        [v5 addScreenSharingRequest:v11];
        [*(a1 + 40) requestParticipant:*(a1 + 32) toScreenShareWithRequest:v11 conversation:v5];
      }
    }

    else
    {
      v11 = sub_100004778(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100477A24();
      }
    }
  }

  else
  {
    v8 = sub_100004778(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 48);
      v13 = [*(a1 + 40) mutableConversationsByUUID];
      v14 = [v13 allKeys];
      v17 = 138412546;
      v18 = v12;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v17, 0x16u);
    }
  }
}

void sub_100177FDC(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    v6 = sub_100004778(v4);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v12 = *(a1 + 40);
    v13 = [*(a1 + 32) mutableConversationsByUUID];
    v14 = [v13 allKeys];
    v21 = 138412546;
    v22 = v12;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v21, 0x16u);

    goto LABEL_17;
  }

  v5 = [*(a1 + 48) handle];
  v6 = [v3 remoteParticipantForHandle:v5];

  if (!v6)
  {
    v15 = [*(a1 + 32) featureFlags];
    if ([v15 sharePlayInCallsEnabled])
    {
      v16 = [v3 provider];
      v17 = [v16 isTelephonyWithSharePlayProvider];

      if (v17)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    v13 = sub_100004778(v18);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100477A94();
    }

LABEL_17:

    goto LABEL_18;
  }

LABEL_3:
  v7 = [*(a1 + 48) isLocallyOriginated];
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = v6 == 0;
  if (v7)
  {
    v11 = [v8 requestParticipant:v6 toCancelScreenShareRequest:v9 conversation:v3 allowMemberFallbackForMessage:v10];
  }

  else
  {
    v11 = [v8 denyScreenShareRequestFrom:v6 screenShareRequest:v9 conversation:v3 allowMemberFallbackForMessage:v10];
  }

  v19 = sub_100004778(v11);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 48);
    v21 = 138412546;
    v22 = v20;
    v23 = 2112;
    v24 = v3;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Cancel screen share request: %@ from conversation: %@", &v21, 0x16u);
  }

  [v3 removeScreenSharingRequest:*(a1 + 48)];
LABEL_18:
}

void sub_100178394(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    v7 = sub_100004778(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      *buf = 138412290;
      v48 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unable to find conversation with UUID: %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v5 = *(a1 + 56);
  v6 = [v3 isScreenEnabled];
  if (v5 == v6)
  {
    v7 = sub_100004778(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 56))
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = [v3 UUID];
      *buf = 138412546;
      v48 = v8;
      v49 = 2112;
      v50 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not setting screenEnabled to %@ because conversation %@ is already in that state", buf, 0x16u);
    }

LABEL_8:

    goto LABEL_22;
  }

  objc_initWeak(&location, *(a1 + 32));
  v37 = _NSConcreteStackBlock;
  v38 = 3221225472;
  v39 = sub_1001788D4;
  v40 = &unk_10061CF20;
  objc_copyWeak(&v44, &location);
  v11 = v3;
  v41 = v11;
  v45 = *(a1 + 56);
  v42 = *(a1 + 48);
  v43 = *(a1 + 40);
  v12 = objc_retainBlock(&v37);
  v13 = v12;
  if (*(a1 + 56) != 1)
  {
    v22 = sub_100004778(v12);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Removing all pending screenEnabled blocks since screenEnabled=NO", buf, 2u);
    }

    v23 = [*(a1 + 32) screenCaptureQueue];
    [v23 setObject:0 forKeyedSubscript:*(a1 + 40)];

    goto LABEL_20;
  }

  v14 = [*(a1 + 32) screenCaptureQueue];
  v15 = [v14 objectForKeyedSubscript:*(a1 + 40)];
  v16 = v15 == 0;

  if (v16)
  {
    v24 = [v11 localParticipant];
    v25 = [v24 audioVideoMode] == 0;

    if (v25)
    {
      v27 = sub_100004778(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Upgrading to Audio mode since screenEnabled is YES", buf, 2u);
      }

      v28 = *(a1 + 32);
      v29 = [v11 UUID];
      [v28 setLocalParticipantAudioVideoMode:1 forConversationUUID:v29];

      v30 = objc_retainBlock(v13);
      v31 = [*(a1 + 32) screenCaptureQueue];
      [v31 setObject:v30 forKeyedSubscript:*(a1 + 40)];

      v33 = sub_100004778(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [*(a1 + 32) screenCaptureQueue];
        v35 = [v34 objectForKeyedSubscript:*(a1 + 40)];
        v36 = objc_retainBlock(v35);
        *buf = 138412290;
        v48 = v36;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Queued up screenEnable request: %@", buf, 0xCu);
      }

      goto LABEL_21;
    }

LABEL_20:
    (v13[2])(v13);
LABEL_21:

    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
    goto LABEL_22;
  }

  v18 = sub_100004778(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [*(a1 + 32) screenCaptureQueue];
    v20 = [v19 objectForKeyedSubscript:*(a1 + 40)];
    v21 = objc_retainBlock(v20);
    *buf = 138412290;
    v48 = v21;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Not enabling ScreenSharing because we already have a queued up request %@", buf, 0xCu);
  }

  objc_destroyWeak(&v44);
  objc_destroyWeak(&location);
LABEL_22:
}

void sub_100178898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001788D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = sub_100004778([*(a1 + 32) setScreenEnabled:*(a1 + 64) attributes:*(a1 + 40)]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 64))
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v13 = 138412802;
      v14 = v4;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting screen enabled %@ with attributes %@ for conversation UUID: %@", &v13, 0x20u);
    }

    v7 = *(a1 + 64);
    v8 = [WeakRetained screenSharingActivityManager];
    v9 = v8;
    if (v7 == 1)
    {
      v10 = [*(a1 + 32) UUID];
      v11 = [*(a1 + 32) localMember];
      v12 = [v11 handle];
      [v9 startActivitySessionOnConversationWithUUID:v10 for:v12 with:*(a1 + 40)];
    }

    else
    {
      [v8 stopActivitySession];
    }

    [WeakRetained conversationChanged:*(a1 + 32)];
  }
}

void sub_100178B1C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setVideoPaused:*(a1 + 48)];
}

void sub_100178C44(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setAudioPaused:*(a1 + 48)];
}

void sub_100178D6C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setRelaying:*(a1 + 48)];
}

void sub_100178E94(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setScreening:*(a1 + 48)];
}

void sub_100178FBC(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setAudioInjectionAllowed:*(a1 + 48)];
}

void sub_100179168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100179180(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  *(*(*(a1 + 48) + 8) + 24) = [v3 isRelaying];
}

void sub_1001792DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001792F4(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  *(*(*(a1 + 48) + 8) + 24) = [v3 isScreening];
}

void sub_100179454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10017946C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  *(*(*(a1 + 48) + 8) + 24) = [v3 presentationState];
}

void sub_10017959C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setPresentationState:*(a1 + 48)];
}

void sub_1001796E4(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setPresentationRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
}

void sub_100179810(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setConversationGridDisplayMode:*(a1 + 48)];
}

void sub_100179954(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v4 setScreenShareAttributes:*(a1 + 48)];
  v3 = [*(a1 + 32) screenSharingActivityManager];
  [v3 broadcastAttributes:*(a1 + 48)];
}

void sub_100179B20(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    [v3 setIsNearbySharePlay:*(a1 + 48)];
    v16 = v3;
    v5 = [v3 tuConversation];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [*(a1 + 32) delegateToQueue];
    v6 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        v9 = 0;
        do
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v22 + 1) + 8 * v9);
          v11 = [*(a1 + 32) delegateToQueue];
          v12 = [v11 objectForKey:v10];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100179D94;
          block[3] = &unk_100619E58;
          v19 = v5;
          v20 = v10;
          v21 = *(a1 + 32);
          dispatch_async(v12, block);

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v7);
    }

    v3 = v16;
  }

  else
  {
    v5 = sub_100004778(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = [*(a1 + 32) mutableConversationsByUUID];
      v15 = [v14 allKeys];
      *buf = 138412546;
      v27 = v13;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot set isNearbySharePlay. Could not find conversation with conversationUUID %@. All conversation UUIDs: %@", buf, 0x16u);
    }
  }
}

void sub_100179D94(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_opt_respondsToSelector();
    v3 = *(a1 + 40);
    if (v2)
    {
      v4 = [*(a1 + 32) provider];
      if ([v3 shouldHandleUpdateForProvider:v4])
      {
      }

      else
      {
        v6 = objc_opt_respondsToSelector();

        if (v6)
        {
          return;
        }
      }
    }

    else
    {
      v5 = objc_opt_respondsToSelector();
      if (v5)
      {
        return;
      }
    }

    v7 = sub_100004778(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) provider];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
    }

    [*(a1 + 40) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 32)];
  }
}

void sub_100179FBC(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v12 = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ remoteMembers: %@", &v12, 0x16u);
  }

  v5 = [*(a1 + 48) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    [v6 removeRemoteMembers:*(a1 + 40) triggeredLocally:0];
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = [*(a1 + 48) mutableConversationsByUUID];
      v11 = [v10 allKeys];
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v12, 0x16u);
    }
  }
}

void sub_10017A4B8(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v31 = v3;
    v32 = 2112;
    v33 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ remoteMembers: %@", buf, 0x16u);
  }

  v6 = sub_100004778(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    *buf = 138412546;
    v31 = v7;
    v32 = 2112;
    v33 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ otherInvitedHandles: %@", buf, 0x16u);
  }

  v9 = [*(a1 + 56) mutableConversationsByUUID];
  v10 = [v9 objectForKeyedSubscript:*(a1 + 32)];

  if (v10)
  {
    v12 = [*(a1 + 56) deviceSupport];
    if ([v12 isGreenTea])
    {
      v13 = [*(a1 + 56) _conversationIsOverGreenTeaCapacity:v10 addingMembers:*(a1 + 40)];

      if (v13)
      {
        v15 = sub_100004778(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100477B04(v10);
        }

        v16 = +[CSDConversationLeaveContext greenTeaLeaveContext];
        [v10 leaveUsingContext:v16];
        goto LABEL_15;
      }
    }

    else
    {
    }

    v20 = *(a1 + 56);
    v21 = *(a1 + 40);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10017A7E4;
    v26[3] = &unk_10061A428;
    v27 = v10;
    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    *&v24 = *(a1 + 64);
    *(&v24 + 1) = *(a1 + 56);
    *&v25 = v22;
    *(&v25 + 1) = v23;
    v28 = v25;
    v29 = v24;
    [v20 maybeAddComplementaryAssociationVoucherFor:v21 toLocalMemberOf:v27 completion:v26];

    v16 = v27;
    goto LABEL_15;
  }

  v16 = sub_100004778(v11);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v18 = [*(a1 + 56) mutableConversationsByUUID];
    v19 = [v18 allKeys];
    *buf = 138412546;
    v31 = v17;
    v32 = 2112;
    v33 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", buf, 0x16u);
  }

LABEL_15:
}

void sub_10017A7E4(uint64_t a1)
{
  [*(a1 + 32) addRemoteMembers:*(a1 + 40) otherInvitedHandles:*(a1 + 48) invitationPreferences:*(a1 + 56) triggeredLocally:1];
  v2 = *(a1 + 64);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) link];
  [v2 addInvitedMemberHandlesFromAddedRemoteMembers:v3 toConversationLink:v4];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [*(a1 + 64) delegateToQueue];
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          v10 = [*(a1 + 32) tuConversation];
          v11 = [*(a1 + 64) delegateToQueue];
          v12 = [v11 objectForKey:v9];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10017AA04;
          block[3] = &unk_10061A450;
          block[4] = v9;
          v16 = v10;
          v17 = *(a1 + 64);
          v18 = *(a1 + 40);
          v13 = v10;
          dispatch_async(v12, block);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }
}

void sub_10017AA04(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) addedMembersLocally:*(a1 + 56)];
}

void sub_10017AC24(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v38 = v3;
    v39 = 2112;
    v40 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ context: %@", buf, 0x16u);
  }

  v5 = [*(a1 + 48) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    v8 = [*(a1 + 40) presentationContext];
    v9 = v8;
    if (v8)
    {
      [v6 setPresentationMode:{-[NSObject mode](v8, "mode")}];
    }

    [v6 setHandoffContext:*(a1 + 40)];
    v10 = [*(a1 + 48) mutableConversationsRequestingUpgradeWithPreferences];
    v11 = [*(a1 + 40) invitationPreferences];
    [v10 setObject:v11 forKey:*(a1 + 32)];

    v12 = [*(a1 + 40) invitationPreferences];
    [v6 setInvitationPreferences:v12];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [*(a1 + 48) delegateToQueue];
    v13 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          [v6 tuConversation];
          v19 = v18 = v6;
          v20 = [*(a1 + 48) delegateToQueue];
          v21 = [v20 objectForKey:v17];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10017AF90;
          block[3] = &unk_100619E58;
          block[4] = v17;
          v30 = v19;
          v31 = *(a1 + 48);
          v22 = v19;
          v6 = v18;
          v23 = v22;
          dispatch_async(v21, block);
        }

        v14 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v14);
    }

    v24 = v9;
  }

  else
  {
    v24 = sub_100004778(v7);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 32);
      v26 = [*(a1 + 48) mutableConversationsByUUID];
      v27 = [v26 allKeys];
      *buf = 138412546;
      v38 = v25;
      v39 = 2112;
      v40 = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", buf, 0x16u);
    }
  }
}

void sub_10017AF90(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 40)];
}

void sub_10017B194(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v12 = 67109378;
    *v13 = v3;
    *&v13[4] = 2112;
    *&v13[6] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "setSharePlayHandedOff: %d onConversationWithUUID: %@", &v12, 0x12u);
  }

  v5 = [*(a1 + 40) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    [v6 setSharePlayHandedOff:*(a1 + 48)];
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = [*(a1 + 40) mutableConversationsByUUID];
      v11 = [v10 allKeys];
      v12 = 138412546;
      *v13 = v9;
      *&v13[8] = 2112;
      *&v13[10] = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v12, 0x16u);
    }
  }
}

void sub_10017B75C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100004778(v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) handle];
      v10 = [v9 value];
      v17 = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Signed complementary association voucher for member %@: %@", &v17, 0x16u);
    }

    v11 = [*(a1 + 40) localMember];
    [v11 setValidationSource:2];

    v12 = [*(a1 + 40) localMember];
    [v12 setAssociationVoucher:v5];

    v13 = *(a1 + 48);
    v8 = [*(a1 + 40) localMember];
    v14 = [v8 handle];
    v15 = [v13 tuAssociationForHandle:v14];
    v16 = [*(a1 + 40) localMember];
    [v16 setAssociation:v15];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100477BD0();
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_10017BF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10017BF28(uint64_t a1)
{
  v2 = [*(a1 + 32) activeConversation];
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 40) + 8) + 24) = [v2 allParticipantsSupportSharePlay];
    v2 = v3;
  }
}

void sub_10017C33C(uint64_t a1)
{
  [*(a1 + 32) setUsesNotificationCenter:0];
  [*(a1 + 32) setRepresentedApplicationBundle:TUBundleIdentifierTelephonyUtilitiesFramework];
  v2 = +[IMUserNotificationCenter sharedInstance];
  [v2 addUserNotification:*(a1 + 32) listener:0 completionHandler:0];
}

void sub_10017C494(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v32 = v3;
    v33 = 2112;
    v34 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ update messagesGroupName: %@", buf, 0x16u);
  }

  v5 = [*(a1 + 48) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    [v6 updateMessagesGroupName:*(a1 + 40)];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = [*(a1 + 48) delegateToQueue];
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      obj = v8;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v14 = [v6 tuConversation];
          [*(a1 + 48) delegateToQueue];
          v16 = v15 = v6;
          v17 = [v16 objectForKey:v13];

          v6 = v15;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10017C778;
          block[3] = &unk_100619E58;
          block[4] = v13;
          v24 = v14;
          v25 = *(a1 + 48);
          v18 = v14;
          dispatch_async(v17, block);
        }

        v8 = obj;
        v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = [*(a1 + 48) mutableConversationsByUUID];
      v21 = [v20 allKeys];
      *buf = 138412546;
      v32 = v19;
      v33 = 2112;
      v34 = v21;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", buf, 0x16u);
    }
  }
}

void sub_10017C778(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 40)];
}

void sub_10017C974(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v31 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ update group photo", buf, 0xCu);
  }

  v4 = [*(a1 + 40) mutableConversationsByUUID];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

  v22 = v5;
  if (v5)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = [*(a1 + 40) delegateToQueue];
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v22 tuConversation];
            v14 = v13 = v7;
            v15 = [*(a1 + 40) delegateToQueue];
            v16 = [v15 objectForKey:v12];

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10017CC58;
            block[3] = &unk_100619E58;
            block[4] = v12;
            v24 = v14;
            v25 = *(a1 + 40);
            v17 = v14;
            v7 = v13;
            v18 = v17;
            dispatch_async(v16, block);
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = sub_100004778(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = [*(a1 + 40) mutableConversationsByUUID];
      v21 = [v20 allKeys];
      *buf = 138412546;
      v31 = v19;
      v32 = 2112;
      v33 = v21;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", buf, 0x16u);
    }
  }
}

void sub_10017CC58(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationUpdateMessagesGroupPhoto:*(a1 + 40)];
}

void sub_10017CE78(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ localParticipantCluster: %@", &v7, 0x16u);
  }

  v5 = [*(a1 + 48) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    [v6 updateLocalParticipantCluster:*(a1 + 40)];
  }
}

uint64_t sub_10017D4B8(uint64_t a1)
{
  v2 = [*(a1 + 32) nearbySessionManager];
  [v2 advertiseGroupActivityWithAdvertisementID:*(a1 + 40)];

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

uint64_t sub_10017D654(uint64_t a1)
{
  v2 = [*(a1 + 32) nearbySessionManager];
  [v2 stopAdvertisingGroupActivity];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10017D8A8(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v12 = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "leave conversationUUID: %@ activitySession: %@", &v12, 0x16u);
  }

  v5 = [*(a1 + 48) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    v8 = [*(a1 + 40) UUID];
    [v6 leaveActivitySessionWithUUID:v8];
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = [*(a1 + 48) mutableConversationsByUUID];
      v11 = [v10 allKeys];
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v12, 0x16u);
    }
  }
}

void sub_10017DB14(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v12 = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "end conversationUUID: %@ activitySession: %@", &v12, 0x16u);
  }

  v5 = [*(a1 + 48) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    v8 = [*(a1 + 40) UUID];
    [v6 removeActivitySessionWithUUID:v8 usingTerminatingHandle:0];
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = [*(a1 + 48) mutableConversationsByUUID];
      v11 = [v10 allKeys];
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v12, 0x16u);
    }
  }
}

void sub_10017DD84(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v12 = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Asked to present dismissal alert for activitySessionUUID: %@ conversationUUID: %@", &v12, 0x16u);
  }

  v5 = [*(a1 + 48) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 40)];

  if (v6)
  {
    [v6 presentDismissalAlertForActivitySessionWithUUID:*(a1 + 32)];
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = [*(a1 + 48) mutableConversationsByUUID];
      v11 = [v10 allKeys];
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v12, 0x16u);
    }
  }
}

void sub_10017E184(uint64_t a1)
{
  v2 = [*(a1 + 32) featureFlags];
  v3 = [v2 sharePlayWithAirplayEnabled];

  v5 = sub_100004778(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      v7 = *(a1 + 40);
      if (*(a1 + 56))
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v16 = 138543618;
      v17 = v8;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting using airplay: %{public}@ on activity session: %@", &v16, 0x16u);
    }

    v9 = [*(a1 + 32) mutableConversationsByUUID];
    v5 = [v9 objectForKeyedSubscript:*(a1 + 48)];

    if (v5)
    {
      v11 = *(a1 + 56);
      v12 = [*(a1 + 40) UUID];
      [v5 setUsingAirplay:v11 forActivitySessionUUID:v12];
    }

    else
    {
      v12 = sub_100004778(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 48);
        v14 = [*(a1 + 32) mutableConversationsByUUID];
        v15 = [v14 allKeys];
        v16 = 138412546;
        v17 = v13;
        v18 = 2112;
        v19 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v16, 0x16u);
      }
    }
  }

  else if (v6)
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SharePlayWithAirplay ff is turned off, not changing activity session airplay state", &v16, 2u);
  }
}

void sub_10017E880(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10017EA34;
          block[3] = &unk_100619E58;
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          block[4] = v7;
          block[5] = v10;
          v13 = v11;
          dispatch_async(v9, block);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

void sub_10017EB34(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (*(a1 + 56))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    *buf = 138412546;
    v89 = v3;
    v90 = 2112;
    v91 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received launchApplication request for UUID: %@ forceBackground: %@", buf, 0x16u);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = [*(a1 + 40) mutableConversationsByUUID];
  v66 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
  v6 = 0;
  if (!v66)
  {
LABEL_36:

    v42 = sub_100004778(v41);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_100477CEC();
    }

    v43 = *(a1 + 48);
    if (v43)
    {
      v44 = TUErrorDomain;
      v84 = NSLocalizedDescriptionKey;
      v85 = @"Failed to find conversation with activitySession";
      v45 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
      v46 = [NSError errorWithDomain:v44 code:1 userInfo:v45];
      (*(v43 + 16))(v43, v46);

      v20 = 0;
      v47 = 0;
LABEL_49:
    }

    else
    {
      v20 = 0;
      v47 = 0;
    }

    goto LABEL_50;
  }

  v64 = *v79;
  *&v5 = 138412546;
  v62 = v5;
LABEL_8:
  v7 = 0;
  while (1)
  {
    if (*v79 != v64)
    {
      objc_enumerationMutation(obj);
    }

    v8 = *(*(&v78 + 1) + 8 * v7);
    v9 = [*(a1 + 40) mutableConversationsByUUID];
    v65 = v8;
    v10 = [v9 objectForKeyedSubscript:v8];

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v67 = v10;
    v11 = [v10 activitySessions];
    v12 = [v11 countByEnumeratingWithState:&v74 objects:v86 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v75;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v75 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v74 + 1) + 8 * i);
          v17 = [v16 identifier];
          v18 = [v17 isEqual:*(a1 + 32)];

          if (v18)
          {
            v19 = v16;

            v6 = v19;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v74 objects:v86 count:16];
      }

      while (v13);
    }

    v20 = v67;
    if (!v6)
    {
      v21 = [*(a1 + 40) featureFlags];
      v22 = [v21 mochiEnabled];

      if (!v22 || (v23 = *(a1 + 32), [v67 stagedActivitySession], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "UUID"), v25 = objc_claimAutoreleasedReturnValue(), LODWORD(v23) = objc_msgSend(v23, "isEqual:", v25), v25, v24, !v23))
      {
        v6 = 0;
        goto LABEL_31;
      }

      v27 = sub_100004778(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 32);
        v29 = [v67 stagedActivitySession];
        *buf = v62;
        v89 = v28;
        v90 = 2112;
        v91 = v29;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Launch request for UUID: %@ is trying to activate a staged activitySession. %@", buf, 0x16u);
      }

      v30 = [v67 stagedActivitySession];
      v31 = [v30 activity];
      v32 = [v31 isPlaceholderActivity];

      if (!v32)
      {
        v36 = [v67 stagedActivitySession];
        v37 = [v36 mutableCopy];

        [v37 setIsLocallyInitiated:1];
        [v37 setIsStageInitiated:1];
        v38 = *(a1 + 40);
        v39 = [v37 copy];
        v6 = [v38 createCPActivitySessionForActivitySession:v39 onConversationWithUUID:v65];

        goto LABEL_31;
      }

      v34 = sub_100004778(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Tried to launch placeholder activity.", buf, 2u);
      }

      v35 = [v67 stagedActivitySession];
      v6 = 0;
      if (v35)
      {
        break;
      }
    }

LABEL_31:
    v35 = [v6 tuConversationActivitySession];
    if (v35)
    {
      break;
    }

    if (++v7 == v66)
    {
      v40 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
      v66 = v40;
      if (v40)
      {
        goto LABEL_8;
      }

      goto LABEL_36;
    }
  }

  v47 = v35;

  v48 = [*(a1 + 40) sharePlaySystemStateObserver];
  v49 = [v48 allowSharePlay];

  if (v49)
  {
    [CSDAnalyticsReporter sendManualLaunchAttemptEventWithActivitySession:v47];
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_10017F280;
    v68[3] = &unk_10061CFC0;
    v51 = *(a1 + 48);
    v52 = *(a1 + 40);
    v72 = v51;
    v68[4] = v52;
    v6 = v6;
    v69 = v6;
    v47 = v47;
    v70 = v47;
    v73 = *(a1 + 57);
    v71 = *(a1 + 32);
    v53 = objc_retainBlock(v68);
    [v6 updateApplicationState:0];
    v54 = [v67 activitySessionManager];
    v55 = [v54 applicationLauncher];
    v56 = v55;
    if (v6)
    {
      v57 = v6;
    }

    else
    {
      v57 = v47;
    }

    [v55 launchAppForActivitySession:v57 options:0 completion:v53];

    v45 = v72;
    goto LABEL_49;
  }

  v58 = sub_100004778(v50);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Not launching application because SharePlay is not allowed", buf, 2u);
  }

  v59 = *(a1 + 48);
  if (v59)
  {
    v60 = TUErrorDomain;
    v82 = NSLocalizedDescriptionKey;
    v83 = @"SharePlay not allowed";
    v45 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    v61 = [NSError errorWithDomain:v60 code:1 userInfo:v45];
    (*(v59 + 16))(v59, v61);

    goto LABEL_49;
  }

LABEL_50:
}

void sub_10017F280(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 64);
  if (v6)
  {
    v6 = (*(v6 + 16))(v6, v5);
  }

  if ((a2 & 1) == 0)
  {
    v14 = [*(a1 + 32) queue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10017F5A0;
    v24[3] = &unk_100619D38;
    v25 = *(a1 + 40);
    dispatch_sync(v14, v24);

    v13 = v25;
LABEL_14:

    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
    if (*(a1 + 72) == 1)
    {
      v7 = sub_100004778(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 56);
        *buf = 138412290;
        v27 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Authorizing session UUID due to external authorization: %@", buf, 0xCu);
      }

      v9 = +[CPApplicationPolicyManager sharedInstance];
      v10 = [*(a1 + 40) activity];
      v11 = [v10 bundleIdentifier];
      [v9 setAuthorization:1 forBundleID:v11];

      v12 = [*(a1 + 32) queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10017F5AC;
      block[3] = &unk_100619D38;
      v23 = *(a1 + 40);
      dispatch_sync(v12, block);

      v13 = v23;
    }

    else
    {
      v17 = [*(a1 + 32) queue];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10017F5B4;
      v19[3] = &unk_100619E58;
      v18 = *(a1 + 40);
      v19[4] = *(a1 + 32);
      v20 = v18;
      v21 = *(a1 + 56);
      dispatch_sync(v17, v19);

      v13 = v20;
    }

    goto LABEL_14;
  }

  v15 = sub_100004778(v6);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 48);
    *buf = 138412290;
    v27 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not requesting authorization since we don't have a CPActivitySession for: %@", buf, 0xCu);
  }

LABEL_15:
}

void sub_10017F5B4(id *a1)
{
  v2 = [a1[4] activityAuthorizationManager];
  v3 = [a1[5] activity];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017F688;
  v7[3] = &unk_10061AC68;
  v4 = a1[6];
  v5 = a1[4];
  v6 = a1[5];
  v8 = v4;
  v9 = v5;
  v10 = v6;
  [v2 requestAuthorizationForApplicationLaunchWithActivity:v3 completionHandler:v7];
}

void sub_10017F688(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = sub_100004778(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100477D60();
    }
  }

  else if (a2)
  {
    v8 = sub_100004778(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Authorizing session UUID: %@", &v11, 0xCu);
    }

    v10 = [*(a1 + 40) queue];
    dispatch_assert_queue_V2(v10);

    [*(a1 + 48) permitJoin];
  }
}

void sub_10017F91C(uint64_t a1)
{
  v6 = [*(a1 + 32) activityAuthorizationManager];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) screenSharingActivityManager];
  v5 = [v4 localScreenShareAttributes];
  [v6 requestAuthorizationForApplicationWithBundleIdentifier:v3 preparing:1 overrides:v2 currentScreenShareAttributes:v5 completionHandler:*(a1 + 56)];
}

void sub_10017FA70(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Revoking background authorization for bundle ID for %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [*(a1 + 40) mutableConversationsByUUID];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) activitySessionManager];
        v11 = [v10 applicationLauncher];
        [v11 revokeBackgroundAuthorizationForBundleID:*(a1 + 32)];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

void sub_10017FCAC(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resetting activity session scene associations for bundle ID for %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) activeConversation];
  v5 = v4;
  if (v4)
  {
    [v4 resetActivitySessionSceneAssociationsForBundleID:*(a1 + 32)];
  }
}

void sub_100180CC4(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) avModeChanged:*(a1 + 64) toAVMode:*(a1 + 72) forParticipantWithHandle:*(a1 + 56) forConversation:*(a1 + 40)];
}

void sub_100180E10(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 40)];
}

void sub_1001813AC(id *a1)
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 currentCalls];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * v7);
        v9 = sub_100004778(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 callGroupUUID];
          v11 = [a1[4] groupUUID];
          *buf = 138412546;
          v31 = v10;
          v32 = 2112;
          v33 = v11;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "removeActivitySession: callGroupUUID: %@, convesation groupUUID: %@", buf, 0x16u);
        }

        v12 = [v8 callGroupUUID];
        v13 = [a1[4] groupUUID];
        v14 = [v12 isEqual:v13];

        if (v14)
        {
          v15 = [a1[5] identifierUUIDString];
          v16 = [a1[6] groupUUIDToActivityIdentifierUUIDString];
          v17 = [v8 callGroupUUID];
          v18 = [v16 objectForKeyedSubscript:v17];
          v19 = [v15 isEqual:v18];

          if (v19)
          {
            [v8 setRemoteActiveTranslating:0];
            v20 = [a1[6] groupUUIDToActivityIdentifierUUIDString];
            v21 = [v8 callGroupUUID];
            [v20 setObject:0 forKeyedSubscript:v21];

            v23 = sub_100004778(v22);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [a1[5] identifierUUIDString];
              *buf = 138412290;
              v31 = v24;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "activitySessionChanged setting remoteActiveTranslating to false for identifierUUIDString: %@", buf, 0xCu);
            }

            goto LABEL_16;
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v4 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
      v5 = v4;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

void sub_100181F94(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v15 = 138412546;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v15, 0x16u);
  }

  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = [*(a1 + 64) highlightIdentifier];
  [v12 conversationManager:v10 activeParticipant:v11 removedHighlightFrom:v13 highlightIdentifier:v14];
}

void sub_100182FC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(a1 + 32);
    if (!v8)
    {
LABEL_7:
      if (*(a1 + 64))
      {
        v17 = sub_100004778(v8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 64);
          v27 = 138412290;
          v28 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Updating activity image for staged activity session: %@", &v27, 0xCu);
        }

        v19 = *(a1 + 56);
        v20 = [*(a1 + 64) activity];
        v21 = [v20 metadata];
        [v21 setImageData:v19];

        v22 = [*(a1 + 64) activity];
        v23 = [v22 metadata];
        [v23 saveImageToDisk];

        [*(a1 + 72) conversationChanged:*(a1 + 80)];
      }

      goto LABEL_17;
    }

    v9 = [v8 activity];
    v10 = *(a1 + 40);
    v11 = [v9 UUID];
    v12 = [v10 isEqual:v11];

    v14 = sub_100004778(v13);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v15)
      {
        v16 = *(a1 + 48);
        v27 = 138412290;
        v28 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating activity image for activity session with UUID: %@", &v27, 0xCu);
      }

      [*(a1 + 32) updateActivityImage:*(a1 + 56)];
      goto LABEL_7;
    }

    if (v15)
    {
      v25 = *(a1 + 40);
      v26 = [v9 UUID];
      v27 = 138412546;
      v28 = v25;
      v29 = 2112;
      v30 = v26;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Not updating image for activity UUID: %@ activity session currently has different activity UUID: %@", &v27, 0x16u);
    }
  }

  else
  {
    v24 = sub_100004778(v6);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100477F04();
    }
  }

LABEL_17:
}

void sub_100183240(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100183328;
  block[3] = &unk_10061C440;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_100183934(uint64_t a1)
{
  v2 = [*(a1 + 32) activity];
  v3 = [v2 activityIdentifier];
  v4 = [v3 isEqual:@"com.apple.FaceTime.Translation.Interaction"];

  if (v4)
  {
    v5 = +[TUCallCenter sharedInstance];
    v6 = [v5 currentCalls];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * v11);
          v13 = sub_100004778(v8);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v12 callGroupUUID];
            v15 = [*(a1 + 40) groupUUID];
            *buf = 138412546;
            v31 = v14;
            v32 = 2112;
            v33 = v15;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "receivedActivitySession: callGroupUUID: %@, convesation groupUUID: %@", buf, 0x16u);
          }

          v16 = [v12 callGroupUUID];
          v17 = [*(a1 + 40) groupUUID];
          v18 = [v16 isEqual:v17];

          if (v18)
          {
            v19 = [*(a1 + 32) identifierUUIDString];
            v20 = *(*(a1 + 48) + 128);
            v21 = [v12 callGroupUUID];
            [v20 setObject:v19 forKeyedSubscript:v21];

            v22 = sub_100004778([v12 setRemoteActiveTranslating:1]);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [*(a1 + 32) identifierUUIDString];
              v24 = [v12 callGroupUUID];
              v25 = [v12 callUUID];
              *buf = 138412802;
              v31 = v23;
              v32 = 2112;
              v33 = v24;
              v34 = 2112;
              v35 = v25;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "setting remoteActiveTranslating to true for %@, groupUUID: %@, callUUID: %@", buf, 0x20u);
            }

            goto LABEL_16;
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v8 = [v7 countByEnumeratingWithState:&v26 objects:v36 count:16];
        v9 = v8;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }
}

void sub_100184088(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 40)];
}

void sub_1001842A8(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v12 = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ presentationContexts: %@", &v12, 0x16u);
  }

  v5 = [*(a1 + 48) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    [v6 updateParticipantPresentationContexts:*(a1 + 40)];
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = [*(a1 + 48) mutableConversationsByUUID];
      v11 = [v10 allKeys];
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v12, 0x16u);
    }
  }
}

void sub_100184550(uint64_t a1)
{
  v1 = a1;
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);
    *buf = 138412546;
    v45 = v3;
    v46 = 2112;
    v47 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ buzzMember: %@", buf, 0x16u);
  }

  v5 = [*(v1 + 48) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(v1 + 32)];

  if (v6)
  {
    v8 = [*(v1 + 48) featureFlags];
    if ([v8 nearbyFaceTimeEnabled])
    {
      v9 = [*(v1 + 56) nearbyStableDeviceIdentifiers];
      v10 = [v9 count];

      if (!v10)
      {
        v11 = 0;
        goto LABEL_11;
      }

      v42 = IDSSendMessageOptionRequireAllRegistrationPropertiesKey;
      v8 = [NSSet setWithObject:IDSRegistrationPropertySupportsNearbyFaceTime];
      v43 = v8;
      v11 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    }

    else
    {
      v11 = 0;
    }

LABEL_11:
    v17 = *(v1 + 40);
    v16 = *(v1 + 48);
    v19 = *(v1 + 56);
    v18 = *(v1 + 64);
    v20 = +[TUConversationInvitationPreference incomingCallInvitationPreferences];
    v31 = v11;
    [v16 sendInvitationMessageToMember:v17 destinationID:v18 invitationContext:v19 forConversation:v6 includeAllAttributes:0 invitationPreferences:v20 additionalOptions:v11];

    v32 = [v6 tuConversation];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = [*(v1 + 48) delegateToQueue];
    v22 = [v21 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v38;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v37 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [*(v1 + 48) delegateToQueue];
            v28 = v27 = v1;
            v29 = [v28 objectForKey:v26];

            v1 = v27;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100184960;
            block[3] = &unk_10061A450;
            block[4] = v26;
            v35 = v32;
            v33 = *(v27 + 40);
            v30 = v33.i64[0];
            v36 = vextq_s8(v33, v33, 8uLL);
            dispatch_async(v29, block);
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v23);
    }

    v12 = v31;
    goto LABEL_21;
  }

  v12 = sub_100004778(v7);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(v1 + 32);
    v14 = [*(v1 + 48) mutableConversationsByUUID];
    v15 = [v14 allKeys];
    *buf = 138412546;
    v45 = v13;
    v6 = 0;
    v46 = 2112;
    v47 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", buf, 0x16u);
  }

LABEL_21:
}
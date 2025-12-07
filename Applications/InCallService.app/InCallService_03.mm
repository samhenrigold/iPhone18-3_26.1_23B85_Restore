uint64_t sub_100140FFC(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithInterval:1.0];
  v2 = qword_1003B1020;
  qword_1003B1020 = v1;

  return _objc_release_x1(v1, v2);
}

id sub_10014128C(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:*(a1 + 40) selector:*(a1 + 48) name:@"PHIntervalTimerNotification" object:*(a1 + 32)];

  v4 = *(a1 + 32);

  return [v4 _createTimerIfNecessary];
}

id sub_1001413BC(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:*(a1 + 40) name:@"PHIntervalTimerNotification" object:*(a1 + 32)];

  v4 = *(a1 + 32);

  return [v4 _invalidateTimerIfNecessary];
}

void sub_1001414BC(uint64_t a1)
{
  v1 = [*(a1 + 32) timer];
  [v1 fire];
}

void sub_100141588(uint64_t a1)
{
  v2 = sub_100004F84(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Pausing interval timer", v4, 2u);
  }

  v3 = [*(a1 + 32) timer];
  [v3 invalidate];
}

void sub_100141694(uint64_t a1)
{
  v2 = sub_100004F84(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resuming interval timer", v6, 2u);
  }

  [*(a1 + 32) _createTimerIfNecessary];
  v3 = [*(a1 + 32) timer];
  v4 = [v3 isValid];

  if (v4)
  {
    v5 = [*(a1 + 32) timer];
    [v5 fire];
  }
}

void sub_100141F78(uint64_t a1)
{
  v1 = [*(a1 + 32) contentView];
  [v1 setAlpha:0.0];
}

id *sub_100141FC0(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [result[4] contentView];
    [v3 removeFromSuperview];

    v4 = v2[4];
    v5 = v2[5];
    v6 = *(v2 + 48);

    return [v4 displayContentView:v5 animated:v6];
  }

  return result;
}

id sub_10014235C(uint64_t a1)
{
  result = [*(a1 + 32) isContentViewRotatingOrResizing];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 16);

    return [v3 setAlpha:1.0];
  }

  return result;
}

id sub_10014265C(uint64_t a1)
{
  if (qword_1003B1038 != -1)
  {
    sub_10025725C();
  }

  v2 = qword_1003B1030;

  return v2;
}

void sub_1001426A0(id a1)
{
  qword_1003B1030 = CUTWeakLinkClass();
  if (!qword_1003B1030)
  {
    v1 = sub_100004F84(0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find class RTTUIConversationViewController; RTTUI may have failed to link.", v2, 2u);
    }
  }
}

void sub_100142728(id a1)
{
  qword_1003B1040 = CUTWeakLinkClass();
  if (!qword_1003B1040)
  {
    v1 = sub_100004F84(0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find class RTTUIUtilities; RTTUI.framework may have failed to link.", v2, 2u);
    }
  }
}

void sub_100143AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100143B04(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100143BBC;
  v5[3] = &unk_100356FB0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_100143BBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained button];
  [v2 setControlImage:v1];
}

void sub_100144440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10014445C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v4 = [WeakRetained controlsView];
    [v4 setSelectedState:a2 == 2 forControlType:19];

    WeakRetained = v5;
  }
}

void sub_1001450C8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [a2 imageWithRenderingMode:2];
    (*(v2 + 16))(v2, v3);
  }
}

void sub_1001485A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  objc_destroyWeak(&a36);
  objc_destroyWeak((v36 - 192));
  _Unwind_Resume(a1);
}

void sub_1001485D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stopVoiceLoopButtonPressed];
}

id sub_10014915C(uint64_t a1, void *a2)
{
  result = [a2 status];
  if (result == 4)
  {
    v4 = *(a1 + 32);
    v5 = qword_1003B8808;

    return [v4 finishedSubTest:@"AwaitIncomingCall" forTest:v5];
  }

  return result;
}

void sub_1001496F8(uint64_t a1)
{
  v1 = [*(a1 + 32) carSessionStatus];
  [v1 waitForSessionInitialization];
}

BOOL sub_10014973C(id a1)
{
  v1 = qword_1003B1050;
  if (qword_1003B1050 || (v1 = CUTWeakLinkClass(), (qword_1003B1050 = v1) != 0))
  {

    return [v1 canSendText];
  }

  else
  {
    v3 = sub_100004F84(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100257340(v3);
    }

    return 0;
  }
}

id sub_10014A978(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  [UIView setAnimationsEnabled:0];
  [*(a1 + 32) setCurrentMode:1];
  v2 = [*(a1 + 32) galleryView];
  [v2 reloadPhoneCallData];

  [*(a1 + 32) updateButtonsViewState];
  v3 = [*(a1 + 32) view];
  [v3 setNeedsLayout];

  v4 = [*(a1 + 32) view];
  [v4 layoutIfNeeded];

  return [UIView setAnimationsEnabled:1];
}

id *sub_10014AA34(id *result, int a2)
{
  if (a2)
  {
    return [result[4] setCurrentMode:1];
  }

  return result;
}

id sub_10014AA48(uint64_t a1)
{
  [UIView setAnimationsEnabled:0];
  [*(a1 + 32) setCurrentMode:0];
  v2 = [*(a1 + 32) galleryView];
  [v2 reloadPhoneCallData];

  [*(a1 + 32) updateButtonsViewState];
  v3 = [*(a1 + 32) view];
  [v3 setNeedsLayout];

  v4 = [*(a1 + 32) view];
  [v4 layoutIfNeeded];

  return [UIView setAnimationsEnabled:1];
}

void sub_10014B47C(uint64_t a1)
{
  v1 = [*(a1 + 32) buttonsView];
  [v1 updateButtonsForCallModelState];
}

void sub_10014C08C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = +[NSBundle mainBundle];
  v2 = [v3 localizedStringForKey:@"CARPLAY_REPLY_TEXT_MESSAGE" value:&stru_100361FD0 table:@"PHCarPlay"];
  [v1 handleAlertControllerSendMessageResponse:v2];
}

void sub_10014C110(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 replyWithMessageStore];
  v2 = [v4 cannedRepliesForSending];
  v3 = [v2 objectAtIndexedSubscript:0];
  [v1 handleAlertControllerSendMessageResponse:v3];
}

void sub_10014C194(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 replyWithMessageStore];
  v2 = [v4 cannedRepliesForSending];
  v3 = [v2 objectAtIndexedSubscript:1];
  [v1 handleAlertControllerSendMessageResponse:v3];
}

void sub_10014C7F8(uint64_t a1)
{
  v1 = [*(a1 + 32) buttonsView];
  [v1 updateButtonsForCallModelState];
}

unint64_t iPadAudioCallViewController.BottomShelfState.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

Swift::Int sub_10014D854(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10014D89C(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10014D8E4(Swift::UInt32 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10014D978(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_10014D9BC(uint64_t a1, Swift::UInt32 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_10014DA00(uint64_t a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

unint64_t sub_10014DA44@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = iPadAudioCallViewController.BottomShelfState.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_10014DABC()
{
  result = [v0 bottomShelfContainer];
  if (result)
  {
    v2 = result;
    type metadata accessor for SwitchingContainerView();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall iPadAudioCallViewController.addBottomShelfContainerIfNeeded()()
{
  v1 = v0;
  if (iPadAudioCallViewController.isFullScreen.getter() & 1) != 0 || (sub_1001FCD88())
  {
    v2 = [v0 bottomShelfContainer];
    if (v2)
    {

      sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002F96C0;
      v4 = [v1 buttonsViewController];
      v5 = [v4 view];

      if (!v5)
      {
        goto LABEL_34;
      }

      *(inited + 32) = v5;
      v6 = [v1 bottomBar];
      if (v6)
      {
        v7 = 0;
        *(inited + 40) = v6;
        while (1)
        {
          if (v7 == 2)
          {
            swift_setDeallocating();
            sub_10014E9D8();
            return;
          }

          if ((inited & 0xC000000000000001) != 0)
          {
            v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v7 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
              break;
            }

            v8 = *(inited + 8 * v7 + 32);
          }

          v9 = v8;
          ++v7;
          [v8 setAlpha:1.0];
        }
      }

      __break(1u);
      goto LABEL_36;
    }

    type metadata accessor for SwitchingContainerView();
    v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [v1 view];
    if (!v11)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v12 = v11;
    [v11 addSubview:v10];

    [v1 setBottomShelfContainer:v10];
    [v1 constraintBottomShelfContainer];
    sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1002F96C0;
    v14 = [v1 buttonsViewController];
    v15 = [v14 view];

    if (!v15)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    *(v13 + 32) = v15;
    v16 = [v1 bottomBar];
    if (!v16)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    *(v13 + 40) = v16;
    dispatch thunk of SwitchingContainerView.setViews(_:)();
  }

  else
  {
    sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_1002F96C0;
    v18 = [v1 buttonsViewController];
    v19 = [v18 view];

    if (!v19)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    *(v17 + 32) = v19;
    v20 = [v1 bottomBar];
    if (!v20)
    {
LABEL_40:
      __break(1u);
      return;
    }

    v21 = 0;
    *(v17 + 40) = v20;
    while (v21 != 2)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v22 = *(v17 + 8 * v21 + 32);
      }

      v23 = v22;
      ++v21;
      [v22 setAlpha:0.0];
    }

    swift_setDeallocating();
    sub_10014E9D8();
    v24 = [v1 typedBottomContainerView];
    if (v24)
    {
      v25 = v24;
      dispatch thunk of SwitchingContainerView.hideAll(animated:)();
    }
  }
}

void iPadAudioCallViewController.updateBottomShelfState(_:)(uint64_t a1)
{
  [v1 addBottomShelfContainerIfNeeded];
  v3 = [v1 typedBottomContainerView];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  if (!a1)
  {
    goto LABEL_8;
  }

  if (a1 != 2)
  {
    if (a1 != 1)
    {
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return;
    }

LABEL_8:
    dispatch thunk of SwitchingContainerView.showView(at:animated:)();
    goto LABEL_9;
  }

  dispatch thunk of SwitchingContainerView.hideAll(animated:)();
LABEL_9:
}

uint64_t sub_10014E0E0(uint64_t a1, uint64_t a2)
{
  result = static CGFloat._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_10014E134(uint64_t a1, uint64_t a2)
{
  v3 = static CGFloat._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_10014E1A4@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10014E1D8(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_10014E1F4()
{
  sub_100006B74();
  iPadAudioCallViewController.peoplePickerRequestedUnknownContactPopover(for:sourceView:sourceRect:)();
  *v0 = v1;
}

uint64_t sub_10014E21C@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10014E250(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

void sub_10014E28C()
{
  sub_10000C254();
  iPadAudioCallViewController.peoplePickerRequestedUnknownContactPopover(for:sourceView:sourceRect:)();
  *v0 = v1;
}

void sub_10014E2B8(double a1)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  Hasher._combine(_:)(*&a1);
}

uint64_t sub_10014E2EC(uint64_t a1, double a2)
{
  if (a2 == 0.0)
  {
    a2 = 0.0;
  }

  return static Hasher._hash(seed:_:)(a1, *&a2);
}

uint64_t sub_10014E344@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10014E370(uint64_t a1)
{
  sub_10014ECD0(&qword_1003AA4F0, type metadata accessor for Name, &unk_1002FA268);
  sub_10014ECD0(&qword_1003AA4F8, type metadata accessor for Name, &unk_1002FA208);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10014E42C(uint64_t a1)
{
  sub_10014ECD0(&qword_1003AA318, type metadata accessor for SBSUIInCallTransitionAnalyticsSource, &unk_1002F9B04);
  sub_10014ECD0(&unk_1003AA320, type metadata accessor for SBSUIInCallTransitionAnalyticsSource, &unk_1002F9AAC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10014E4E8(uint64_t a1)
{
  sub_10014ECD0(&qword_1003AA4A8, type metadata accessor for STBackgroundActivityIdentifier, &unk_1002FA7B4);
  sub_10014ECD0(&qword_1003AA4B0, type metadata accessor for STBackgroundActivityIdentifier, &unk_1002FA714);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10014E5A4(uint64_t a1)
{
  sub_10014ECD0(&qword_1003AA500, type metadata accessor for Key, &unk_1002FA834);
  sub_10014ECD0(&qword_1003AA508, type metadata accessor for Key, &unk_1002FA0BC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10014E660(uint64_t a1)
{
  sub_10014ECD0(&qword_1003AA4B8, type metadata accessor for CNWallpaperColorDescriptionKey, &unk_1002FA7F4);
  sub_10014ECD0(&qword_1003AA4C0, type metadata accessor for CNWallpaperColorDescriptionKey, &unk_1002FA614);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10014E71C(uint64_t a1)
{
  sub_10014ECD0(&qword_1003AA4C8, type metadata accessor for Identifier, &unk_1002FA524);
  sub_10014ECD0(&qword_1003AA4D0, type metadata accessor for Identifier, &unk_1002FA4C4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void *sub_10014E7D8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_10014E7E8@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_10014E7F4(uint64_t a1)
{
  sub_10014ECD0(&qword_1003AA4D8, type metadata accessor for Level, &unk_1002FA3CC);
  sub_10014ECD0(&qword_1003AA4E0, type metadata accessor for Level, &unk_1002FA36C);
  sub_10014F7C0();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10014E8BC@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10014E904(uint64_t a1)
{
  sub_10014ECD0(&qword_1003AA308, type metadata accessor for PHDismissalAssertionReason, &unk_1002F9C44);
  sub_10014ECD0(&qword_1003AA310, type metadata accessor for PHDismissalAssertionReason, &unk_1002F9BEC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10014E9D8()
{
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10014EA48(uint64_t *a1, uint64_t *a2)
{
  sub_10014EA98(a1, a2);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v2, 32, 7);
}

uint64_t sub_10014EA98(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10014EAE4()
{
  result = qword_1003AA1B0;
  if (!qword_1003AA1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA1B0);
  }

  return result;
}

__n128 sub_10014EB5C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_10014EBA8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10014ECD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10014EE80(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_10014EF04(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10014EF58(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_10014F028(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10014F048(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 sub_10014F084(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10014F098(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10014F0B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t sub_10014F68C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10014F70C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String.hashValue.getter();

  return v1;
}

uint64_t sub_10014F744(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

unint64_t sub_10014F7C0()
{
  result = qword_1003AA4E8;
  if (!qword_1003AA4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA4E8);
  }

  return result;
}

NSString sub_10014F814(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String._bridgeToObjectiveC()();

  return v1;
}

char *sub_10014F93C(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC13InCallService22VisualVoicemailManager_messagesChangedPublisher;
  sub_10014EA98(&qword_1003AA7A0, &unk_1002FA958);
  swift_allocObject();
  *&v3[v8] = PassthroughSubject.init()();
  *&v3[OBJC_IVAR____TtC13InCallService22VisualVoicemailManager_visualVoicemailManager] = a1;
  v9 = &v3[OBJC_IVAR____TtC13InCallService22VisualVoicemailManager_onVoicemailsChanged];
  *v9 = a2;
  *(v9 + 1) = a3;
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v10 = a1;

  v11 = objc_msgSendSuper2(&v15, "init");
  v12 = *&v11[OBJC_IVAR____TtC13InCallService22VisualVoicemailManager_visualVoicemailManager];
  v13 = v11;
  [v12 setDelegate:{v13, v15.receiver, v15.super_class}];

  return v13;
}

uint64_t sub_10014FAB8(uint64_t a1, char a2)
{
  v5 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  v6 = sub_100005568(v5);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for TaskPriority();
  sub_1000067D8(v8, v10, v11, v9);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v13 = sub_100153804();
  v14 = swift_allocObject();
  *(v14 + 16) = inited;
  *(v14 + 24) = v13;
  *(v14 + 32) = v2;
  *(v14 + 40) = a1;
  *(v14 + 48) = a2;

  v15 = v2;
  sub_1001621BC();
}

uint64_t sub_10014FBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 25) = a6;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100153804();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10014FC68, v8, v7);
}

uint64_t sub_10014FC68()
{
  sub_1000058A8();
  v1 = *(v0 + 25);
  v2 = *(v0 + 40);
  (*(*(v0 + 32) + OBJC_IVAR____TtC13InCallService22VisualVoicemailManager_onVoicemailsChanged))();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  PassthroughSubject.send(_:)();
  sub_10000535C();

  return v3();
}

uint64_t sub_10014FCFC()
{
  sub_100006610();
  *(v1 + 32) = v0;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100153804();
  sub_1000067CC();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100008D04();
  v2 = sub_100005B78();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10014FD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, objc_super *a18, uint64_t a19, uint64_t a20)
{
  sub_1001541FC();
  a19 = v21;
  a20 = v22;
  sub_100154224();
  a18 = v20;
  v23 = [*(v20[2].receiver + OBJC_IVAR____TtC13InCallService22VisualVoicemailManager_visualVoicemailManager) allVoicemails];
  sub_1001538EC();
  sub_100008524();
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = sub_100017230(v24);
  if (v25)
  {
    v26 = v25;
    result = sub_1000142E0(v25);
    if (v26 < 0)
    {
      __break(1u);
      return result;
    }

    v28 = 0;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(v24 + 8 * v28 + 32);
      }

      v30 = v29;
      ++v28;
      v31 = type metadata accessor for VisualMessage();
      v32 = objc_allocWithZone(v31);
      *&v32[OBJC_IVAR___MPVisualMessage_vmMessage] = v30;
      v20[1].receiver = v32;
      v20[1].super_class = v31;
      objc_msgSendSuper2(v20 + 1, "init");
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v26 != v28);

    v33 = a9;
  }

  else
  {

    v33 = _swiftEmptyArrayStorage;
  }

  if (qword_1003A9F50 != -1)
  {
    sub_10000706C(&qword_1003A9F50);
  }

  v34 = type metadata accessor for Logger();
  sub_1000058D0(v34, &unk_1003B8850);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = sub_100005384();
    v38 = swift_slowAlloc();
    a9 = v38;
    *v37 = 136315138;
    type metadata accessor for VisualMessage();
    sub_1000067CC();
    v39 = Array.description.getter();
    v41 = sub_100008ADC(v39, v40, &a9);

    *(v37 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v35, v36, "Fetched %s from VMD", v37, 0xCu);
    sub_100005B2C(v38);
    sub_100005BB8(v38);
    sub_100005340();
  }

  if (v33 >> 62)
  {
    sub_10014EA98(&qword_1003AA7A8, &qword_1002FA968);
    sub_100008524();
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  sub_1000087B4();

  return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t sub_1001500DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_1001C90D8();
  type metadata accessor for VoicemailActor();
  sub_100153804();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10015016C, v4, v3);
}

uint64_t sub_10015016C()
{
  sub_100006610();
  v1 = *(v0 + 24);
  *(v0 + 32) = _Block_copy(*(v0 + 16));
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_10015020C;

  return sub_10014FCFC();
}

uint64_t sub_10015020C()
{
  sub_1000058A8();
  sub_1000058C4();
  v2 = *(v1 + 32);
  v3 = *(v1 + 24);
  v4 = *v0;
  sub_100006870();
  *v5 = v4;

  sub_10014EA98(&qword_1003AA7A8, &qword_1002FA968);
  sub_100008524();
  Array._bridgeToObjectiveC()();
  sub_1000083B8();

  v6 = sub_100012AE0();
  v7(v6, v3);

  _Block_release(v2);
  sub_10000535C();

  return v8();
}

uint64_t sub_100150360()
{
  sub_100006610();
  sub_10015428C(v0);
  swift_initStaticObject();
  sub_100153804();
  sub_1000067CC();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100008D04();
  v1 = sub_100005B78();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1001505C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1001C90D8();
  type metadata accessor for VoicemailActor();
  sub_100153804();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100150658, v5, v4);
}

uint64_t sub_100150658()
{
  sub_1000058A8();
  *(v0 + 40) = sub_100005574();
  sub_10014EA98(&qword_1003AA7A8, &qword_1002FA968);
  sub_100008524();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100154218(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v5 = sub_100154230(v4);
  *v5 = v6;
  sub_100008510(v5);

  return sub_100150360();
}

uint64_t sub_100150710()
{
  sub_100006610();
  sub_10015428C(v0);
  swift_initStaticObject();
  sub_100153804();
  sub_1000067CC();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100008D04();
  v1 = sub_100005B78();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100150974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1001C90D8();
  type metadata accessor for VoicemailActor();
  sub_100153804();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100150A08, v5, v4);
}

uint64_t sub_100150A08()
{
  sub_1000058A8();
  *(v0 + 40) = sub_100005574();
  sub_10014EA98(&qword_1003AA7A8, &qword_1002FA968);
  sub_100008524();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100154218(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v5 = sub_100154230(v4);
  *v5 = v6;
  sub_100008510(v5);

  return sub_100150710();
}

uint64_t sub_100150AC0()
{
  sub_1000058A8();
  sub_1000058C4();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_100006870();
  *v5 = v4;

  v6 = sub_100012AE0();
  v7(v6);
  _Block_release(v2);
  sub_10000535C();

  return v8();
}

uint64_t sub_100150C00()
{
  sub_100006610();
  sub_10015428C(v0);
  swift_initStaticObject();
  sub_100153804();
  sub_1000067CC();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100008D04();
  v1 = sub_100005B78();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100150E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1001C90D8();
  type metadata accessor for VoicemailActor();
  sub_100153804();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100150EF8, v5, v4);
}

uint64_t sub_100150EF8()
{
  sub_1000058A8();
  *(v0 + 40) = sub_100005574();
  sub_10014EA98(&qword_1003AA7A8, &qword_1002FA968);
  sub_100008524();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100154218(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v5 = sub_100154230(v4);
  *v5 = v6;
  sub_100008510(v5);

  return sub_100150C00();
}

uint64_t sub_100150FB0()
{
  sub_100006610();
  sub_10015428C(v0);
  swift_initStaticObject();
  sub_100153804();
  sub_1000067CC();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100008D04();
  v1 = sub_100005B78();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100151214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1001C90D8();
  type metadata accessor for VoicemailActor();
  sub_100153804();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001512A8, v5, v4);
}

uint64_t sub_1001512A8()
{
  sub_1000058A8();
  *(v0 + 40) = sub_100005574();
  sub_10014EA98(&qword_1003AA7A8, &qword_1002FA968);
  sub_100008524();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100154218(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v5 = sub_100154230(v4);
  *v5 = v6;
  sub_100008510(v5);

  return sub_100150FB0();
}

uint64_t sub_100151360()
{
  sub_100006610();
  v1[4] = v2;
  v1[5] = v0;
  v3 = type metadata accessor for MessageID.Value(0);
  v1[6] = v3;
  sub_100005568(v3);
  v1[7] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100153804();
  sub_1000067CC();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100008D04();
  v4 = sub_100005B78();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100151410()
{
  sub_1000303E4();
  sub_100006880();
  sub_100153C6C(*(v0 + 32) + OBJC_IVAR___MPMessageID_value, *(v0 + 56));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 56);
  if (EnumCaseMultiPayload == 1)
  {
    sub_100153CD0(v2);
    if (qword_1003A9F50 != -1)
    {
      sub_10000706C(&qword_1003A9F50);
    }

    v3 = *(v0 + 32);
    v4 = type metadata accessor for Logger();
    sub_1000058D0(v4, &unk_1003B8850);
    v5 = v3;
    v6 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_100034BE0())
    {
      v7 = *(v0 + 32);
      v8 = sub_100005384();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v7;
      *v9 = v7;
      v10 = v7;
      sub_10000708C(&_mh_execute_header, v11, v12, "Incorrect id passed into VisualVoicemailManager %@, privacy: .public) but expected a VisualMessage ID!");
      sub_100153D2C(v9);
      sub_100005340();
      sub_100005368();
    }
  }

  else
  {
    v13 = [*(*(v0 + 40) + OBJC_IVAR____TtC13InCallService22VisualVoicemailManager_visualVoicemailManager) voicemailWithIdentifier:*v2];
    if (v13)
    {
      v14 = type metadata accessor for VisualMessage();
      v15 = objc_allocWithZone(v14);
      *&v15[OBJC_IVAR___MPVisualMessage_vmMessage] = v13;
      *(v0 + 16) = v15;
      *(v0 + 24) = v14;
      objc_msgSendSuper2((v0 + 16), "init");
    }
  }

  sub_100008BAC();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23);
}

double sub_100151600(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  sub_10000FF5C();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_100211F74(a6, v10);
}

uint64_t sub_10015167C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1001C90D8();
  type metadata accessor for VoicemailActor();
  sub_100153804();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100151710, v5, v4);
}

uint64_t sub_100151710()
{
  sub_1000058A8();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v3 = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1001517C8;

  return sub_100151360();
}

uint64_t sub_1001517C8()
{
  sub_1000058A8();
  v2 = v1;
  sub_1000058C4();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[2];
  v7 = *v0;
  sub_100006870();
  *v8 = v7;

  v9 = sub_100012AE0();
  v10(v9, v2);
  _Block_release(v4);
  swift_unknownObjectRelease();
  sub_10000535C();

  return v11();
}

uint64_t sub_100151914()
{
  sub_100006610();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100153804();
  sub_1000067CC();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100008D04();
  v4 = sub_100005B78();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10015199C()
{
  super_class = v0[5].super_class;
  receiver = v0[5].receiver;
  v3 = *(v0[6].receiver + OBJC_IVAR____TtC13InCallService22VisualVoicemailManager_visualVoicemailManager);
  v4 = swift_allocObject();
  *(v4 + 16) = receiver;
  *(v4 + 24) = super_class;
  v0[3].receiver = sub_100153E2C;
  v0[3].super_class = v4;
  v0[1].receiver = _NSConcreteStackBlock;
  v0[1].super_class = 1107296256;
  v0[2].receiver = sub_100151C98;
  v0[2].super_class = &unk_10035ADD0;
  v5 = _Block_copy(&v0[1]);

  v6 = [v3 voicemailsPassingTest:v5];
  v7 = sub_1000083B8();
  _Block_release(v7);
  sub_1001538EC();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_100017230(v8);
  if (!v9)
  {
LABEL_10:

    v17 = v0->super_class;

    return v17(_swiftEmptyArrayStorage);
  }

  v10 = v9;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v10 < 0)
  {
    goto LABEL_15;
  }

  v12 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_9;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v13 = *(v8 + 8 * v12 + 32);
LABEL_9:
    v14 = v13;
    ++v12;
    v15 = type metadata accessor for VisualMessage();
    v16 = objc_allocWithZone(v15);
    *&v16[OBJC_IVAR___MPVisualMessage_vmMessage] = v14;
    v0[4].receiver = v16;
    v0[4].super_class = v15;
    objc_msgSendSuper2(v0 + 4, "init");
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v10 == v12)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100151C0C(void *a1, uint64_t (*a2)(id, uint64_t))
{
  v4 = type metadata accessor for VisualMessage();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___MPVisualMessage_vmMessage] = a1;
  v10.receiver = v5;
  v10.super_class = v4;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v10, "init");
  LOBYTE(a2) = a2(v7, v8);

  return a2 & 1;
}

uint64_t sub_100151C98(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_100151D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1001C90D8();
  type metadata accessor for VoicemailActor();
  sub_100153804();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100151E14, v5, v4);
}

uint64_t sub_100151E14()
{
  sub_1000058A8();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = _Block_copy(*(v0 + 16));
  *(v0 + 40) = _Block_copy(v1);
  v4 = swift_allocObject();
  *(sub_100154218(v4) + 16) = v3;
  v5 = v2;
  v6 = swift_task_alloc();
  v7 = sub_100154230(v6);
  *v7 = v8;
  v7[1] = sub_100151EFC;

  return sub_100151914();
}

uint64_t sub_100151EFC()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058C4();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_100006870();
  *v5 = v4;

  sub_10014EA98(&qword_1003AA7A8, &qword_1002FA968);
  sub_100008524();
  isa = Array._bridgeToObjectiveC()().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  sub_100008BAC();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

void sub_100152080(char a1, char *a2)
{
  v5 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v5);
  sub_100005BD0();
  v8 = (v7 - v6);
  sub_100153C6C(&a2[OBJC_IVAR___MPMessageID_value], v7 - v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100153CD0(v8);
  }

  else
  {
    v9 = *(v2 + OBJC_IVAR____TtC13InCallService22VisualVoicemailManager_visualVoicemailManager);
    v10 = [v9 voicemailWithIdentifier:*v8];
    if (v10)
    {
      v11 = v10;
      [v9 reportTranscriptionRatedAccurate:a1 & 1 forVoicemail:v10];
      goto LABEL_9;
    }
  }

  if (qword_1003A9F50 != -1)
  {
    sub_10000706C(&qword_1003A9F50);
  }

  v12 = type metadata accessor for Logger();
  sub_1000058D0(v12, &unk_1003B8850);
  v13 = a2;
  v11 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v14))
  {
    v15 = sub_100005384();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v13;
    *v16 = v13;
    v17 = v13;
    sub_10015423C(&_mh_execute_header, v18, v19, "Failed to report problem for message with ID(%@ becuase it could not be found.");
    sub_100153D2C(v16);
    sub_100005340();
    sub_100005BB8(v15);
  }

LABEL_9:
}

void sub_1001522AC(char *a1)
{
  v3 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v3);
  sub_100005BD0();
  v6 = (v5 - v4);
  sub_100153C6C(&a1[OBJC_IVAR___MPMessageID_value], v5 - v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100153CD0(v6);
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC13InCallService22VisualVoicemailManager_visualVoicemailManager);
    v8 = [v7 voicemailWithIdentifier:*v6];
    if (v8)
    {
      v9 = v8;
      [v7 reportTranscriptionProblemForVoicemail:v8];
      goto LABEL_9;
    }
  }

  if (qword_1003A9F50 != -1)
  {
    sub_10000706C(&qword_1003A9F50);
  }

  v10 = type metadata accessor for Logger();
  sub_1000058D0(v10, &unk_1003B8850);
  v11 = a1;
  v9 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v12))
  {
    v13 = sub_100005384();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v11;
    *v14 = v11;
    v15 = v11;
    sub_10015423C(&_mh_execute_header, v16, v17, "Failed to report problem for message with ID(%@ becuase it could not be found.");
    sub_100153D2C(v14);
    sub_100005340();
    sub_100005BB8(v13);
  }

LABEL_9:
}

uint64_t sub_1001524C8(char a1)
{
  v3 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  v4 = sub_100005568(v3);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for TaskPriority();
  sub_1000067D8(v6, v8, v9, v7);
  type metadata accessor for MainActor();
  v10 = v1;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  *(v12 + 32) = v10;
  *(v12 + 40) = a1;
  sub_1001621BC();
}

uint64_t sub_1001525C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100152664, v7, v6);
}

uint64_t sub_100152664()
{
  sub_100006610();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  [*(v2 + OBJC_IVAR____TtC13InCallService22VisualVoicemailManager_visualVoicemailManager) requestInitialStateIfNecessaryAndSendNotifications:v1];
  sub_10000535C();

  return v3();
}

id UserFeedbackViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10015282C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  sub_100005BD0();
  v8 = v7 - v6;
  if (qword_1003A9F50 != -1)
  {
    sub_10000706C(&qword_1003A9F50);
  }

  v9 = type metadata accessor for Logger();
  sub_100008A14(v9, &unk_1003B8850);
  (*(v5 + 16))(v8, a1, v4);
  v10 = v2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315394;
    swift_getObjectType();
    v15 = _typeName(_:qualified:)();
    v17 = sub_100008ADC(v15, v16, &v23);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    Notification.name.getter();
    type metadata accessor for Name(0);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    (*(v5 + 8))(v8, v4);
    v21 = sub_100008ADC(v18, v20, &v23);

    *(v13 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s is handling %s", v13, 0x16u);
    swift_arrayDestroy();
    sub_100005BB8(v14);
    sub_100005BB8(v13);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return sub_10014FAB8(0, 3);
}

uint64_t sub_100152B98(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1003A9F50 != -1)
  {
    sub_10000706C(&qword_1003A9F50);
  }

  v9 = type metadata accessor for Logger();
  sub_100008A14(v9, &unk_1003B8850);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v10 = v4;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v13 = 136316162;
    swift_getObjectType();
    v14 = _typeName(_:qualified:)();
    v16 = sub_100008ADC(v14, v15, &v22);

    *(v13 + 4) = v16;
    *(v13 + 12) = 1024;
    *(v13 + 14) = a1 & 1;
    *(v13 + 18) = 2048;
    if (a3)
    {
      v17 = sub_100017230(a3);
    }

    else
    {
      v17 = 0;
    }

    *(v13 + 20) = v17;

    *(v13 + 28) = 2048;
    if (a4)
    {
      v18 = sub_100017230(a4);
    }

    else
    {
      v18 = 0;
    }

    *(v13 + 30) = v18;

    *(v13 + 38) = 2048;
    if (a2)
    {
      v19 = sub_100017230(a2);
    }

    else
    {
      v19 = 0;
    }

    *(v13 + 40) = v19;

    _os_log_impl(&_mh_execute_header, v11, v12, "%s voicemailsDidChangeInitial: %{BOOL}d added: %ld, deleted: %ld, updated: %ld", v13, 0x30u);
    sub_100005B2C(v21);
    sub_100005BB8(v21);
    sub_100005BB8(v13);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  return sub_10014FAB8(0, 3);
}

void sub_1001530CC(const char *a1, ...)
{
  if (qword_1003A9F50 != -1)
  {
    sub_10000706C(&qword_1003A9F50);
  }

  v3 = type metadata accessor for Logger();
  v4 = sub_100008A14(v3, &unk_1003B8850);
  v5 = v1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    sub_100005384();
    v11 = sub_1000141F8();
    *v4 = 136315138;
    swift_getObjectType();
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008ADC(v7, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v6, a1, v4, 0xCu);
    sub_10000A330();
    sub_100005368();
  }
}

uint64_t sub_100153244()
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008204;

  return sub_100150360();
}

uint64_t sub_100153314()
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008208;

  return sub_100150710();
}

uint64_t sub_1001533E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10014EA98(&qword_1003AA7A8, &qword_1002FA968);
  sub_100008524();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a1;
  sub_100153540(v8, a4, a5);
}

uint64_t sub_100153470()
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008204;

  return sub_100150C00();
}

uint64_t sub_100153540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  v6 = sub_100005568(v5);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for TaskPriority();
  sub_1000067D8(v8, v10, v11, v9);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v13 = sub_100153804();
  v14 = swift_allocObject();
  v14[2] = inited;
  v14[3] = v13;
  v14[4] = v3;
  v14[5] = a1;
  v15 = v3;

  sub_1001621BC();
}

uint64_t sub_100153640()
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008204;

  return sub_100150FB0();
}

void sub_100153744()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService22VisualVoicemailManager_visualVoicemailManager);
  v4[4] = GlassCutoutCirclesOverlayViewController._canShowWhileLocked();
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100151C98;
  v4[3] = &unk_10035AC40;
  v2 = _Block_copy(v4);
  v3 = [v1 countOfVoicemailsPassingTest:v2];
  _Block_release(v2);
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }
}

unint64_t sub_100153804()
{
  result = qword_1003AA7B8;
  if (!qword_1003AA7B8)
  {
    type metadata accessor for VoicemailActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA7B8);
  }

  return result;
}

uint64_t sub_10015385C()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_100006B80(v1);
  sub_100008BAC();

  return sub_100153640();
}

unint64_t sub_1001538EC()
{
  result = qword_1003AA7C0;
  if (!qword_1003AA7C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AA7C0);
  }

  return result;
}

uint64_t sub_100153930()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_100006B80(v1);
  sub_100008BAC();

  return sub_100153470();
}

uint64_t sub_1001539C0()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_100006B80(v1);
  sub_100008BAC();

  return sub_100153314();
}

uint64_t sub_100153A50()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100153A98()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_100006B80(v1);
  sub_100008BAC();

  return sub_100153244();
}

uint64_t sub_100153B28()
{
  sub_100006880();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = sub_100005B88(v3);
  *v4 = v5;
  v6 = sub_100006B80(v4);

  return sub_10014FBCC(v6, v7, v8, v9, v1, v2);
}

uint64_t sub_100153BD0()
{
  sub_1000303E4();
  sub_100006880();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_100006B80(v1);
  sub_100008BAC();

  return sub_1001525C8(v3, v4, v5, v6, v7);
}

uint64_t sub_100153C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageID.Value(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100153CD0(uint64_t a1)
{
  v2 = type metadata accessor for MessageID.Value(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100153D2C(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003B0230, &qword_1002FC550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100153D94()
{
  sub_1000058A8();
  sub_100007B1C();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100007E40(v1);

  return v4(v3);
}

uint64_t sub_100153E34()
{
  sub_1000058A8();
  sub_100007B1C();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100007E40(v1);

  return v4(v3);
}

uint64_t sub_100153EC4()
{
  sub_1000058A8();
  sub_100007B1C();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100007E40(v1);

  return v4(v3);
}

uint64_t sub_100153F54()
{
  sub_1000058A8();
  sub_100007B1C();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100007E40(v1);

  return v4(v3);
}

uint64_t sub_100153FE4()
{
  sub_1000058A8();
  sub_100007B1C();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100007E40(v1);

  return v4(v3);
}

uint64_t sub_100154074()
{
  _Block_release(*(v0 + 24));

  v1 = sub_10000FF5C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1001540B4()
{
  sub_1000058A8();
  sub_100007B1C();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100007E40(v1);

  return v4(v3);
}

uint64_t sub_100154144()
{
  sub_1000058A8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100008BA0(v3);
  *v4 = v5;
  v4[1] = sub_100008204;

  return sub_1001500DC(v1, v2);
}

void sub_10015423C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_10015425C()
{
}

uint64_t sub_100154274()
{

  return type metadata accessor for Logger();
}

uint64_t sub_10015428C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;

  return type metadata accessor for VoicemailActor();
}

uint64_t sub_1001542B4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1001542E4()
{
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC13InCallService28LiveVoicemailCarrierSettings_autoPickupKeys) = &off_10035A3D8;
  type metadata accessor for CarrierBundleSettings();
  *(v0 + OBJC_IVAR____TtC13InCallService28LiveVoicemailCarrierSettings_carrierBundleSettings) = static CarrierBundleSettings.shared.getter();
  return v0;
}

void sub_10015437C(void *a1)
{
  v3 = sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v43 - v7;
  v9 = [a1 localSenderIdentityAccountUUID];
  if (v9)
  {
    v10 = v9;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = type metadata accessor for UUID();
    v12 = 0;
  }

  else
  {
    v11 = type metadata accessor for UUID();
    v12 = 1;
  }

  sub_100006848(v6, v12, 1, v11);
  sub_100154A58(v6, v8);
  type metadata accessor for UUID();
  if (sub_100006AC0(v8, 1, v11) == 1)
  {
    sub_10000830C(v8, &qword_1003AAB40, &unk_1002FAAB0);
  }

  else
  {
    UUID.uuidString.getter();
    (*(*(v11 - 8) + 8))(v8, v11);
  }

  v13 = CarrierBundleSettings.subscription(for:)();

  if (v1)
  {
    return;
  }

  if (!v13)
  {
    v45 = 0;
    v46 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    v45 = 0xD00000000000002DLL;
    v46 = 0x80000001002A5980;
    v24 = [a1 callUUID];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29 = v45;
    v30 = v46;
    sub_100154AC8();
    swift_allocError();
    *v31 = v29;
    v31[1] = v30;
    swift_willThrow();
    return;
  }

  CarrierBundleSettings.fetchCarrierBundleValue(for:context:)();
  if (!v47)
  {
    sub_10000830C(&v45, &unk_1003AAF50, &qword_1002FB170);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v45 = 0;
    v46 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v32._object = 0x80000001002A59B0;
    v32._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v32);
    v33 = [a1 callUUID];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37._countAndFlagsBits = v34;
    v37._object = v36;
    String.append(_:)(v37);

    v38._countAndFlagsBits = 0x79656B20646E6120;
    v38._object = 0xEB00000000203A73;
    String.append(_:)(v38);
    v39._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v39);

    v40 = v45;
    v41 = v46;
    sub_100154AC8();
    swift_allocError();
    *v42 = v40;
    v42[1] = v41;
    swift_willThrow();

    return;
  }

  v14 = v48;
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = v44;
    *v18 = 136315394;
    v19 = [v15 callUUID];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = sub_100008ADC(v20, v22, &v45);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v16, v17, "Carrier Bundle for call with uuid %s reports AutoPickupDuration - %ld", v18, 0x16u);
    sub_100005B2C(v44);
  }

  sub_10001DB80(v14);
}

uint64_t sub_10015488C()
{
  v1 = OBJC_IVAR____TtC13InCallService28LiveVoicemailCarrierSettings_logger;
  type metadata accessor for Logger();
  sub_100006B9C();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_100154900()
{
  sub_10015488C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for LiveVoicemailCarrierSettings(uint64_t a1)
{
  result = qword_1003AA800;
  if (!qword_1003AA800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001549AC(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100154A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100154AC8()
{
  result = qword_1003AA8A0;
  if (!qword_1003AA8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA8A0);
  }

  return result;
}

uint64_t sub_100154B1C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100154B5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100154BA8()
{
  type metadata accessor for MessageStoreController();
  *&v0[OBJC_IVAR___ICSMessageStoreClient_messageStoreController] = MessageStoreController.__allocating_init()();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageStoreClient();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_100154C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v6 = type metadata accessor for UUID();
  sub_10000688C();
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  v12 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  __chkstk_darwin(v13 - 8);
  v15 = &v23 - v14;
  static TaskPriority.userInitiated.getter();
  v16 = type metadata accessor for TaskPriority();
  sub_100006848(v15, 0, 1, v16);
  (*(v8 + 16))(v12, a1, v6);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  (*(v8 + 32))(v19 + v17, v12, v6);
  *(v19 + v18) = v3;
  v20 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v24;
  v20[1] = a3;
  v21 = v3;

  sub_1001621BC();
}

uint64_t sub_100154E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  sub_10014EA98(&qword_1003AAF20, &unk_1002FABA0);
  v7[7] = swift_task_alloc();
  v7[8] = swift_task_alloc();
  v7[9] = type metadata accessor for MessageFetchOptions();
  v7[10] = swift_task_alloc();
  v8 = type metadata accessor for MessageStoreFetchRequest.QuerySearchType();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v9 = type metadata accessor for MessageStoreQuery();
  v7[14] = v9;
  v7[15] = *(v9 - 8);
  v7[16] = swift_task_alloc();
  Request = type metadata accessor for MessageStoreFetchRequest();
  v7[17] = Request;
  v7[18] = *(Request - 8);
  v7[19] = swift_task_alloc();

  return _swift_task_switch(sub_100155004, 0, 0);
}

uint64_t sub_100155004()
{
  v2 = v0[15];
  v1 = v0[16];
  v14 = v0[14];
  v15 = v0[13];
  v3 = v0[12];
  v16 = v0[11];
  v4 = v0[3];
  v5 = swift_allocObject();
  sub_10014EA98(&qword_1003AA8D8, &qword_100300270);
  v6 = type metadata accessor for UUID();
  sub_10000688C();
  v8 = v7;
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1002FAB60;
  (*(v8 + 16))(v10 + v9, v4, v6);
  *(v5 + 16) = v10;
  *v1 = v5;
  (*(v2 + 104))(v1, enum case for MessageStoreQuery.recordUUID(_:), v14);
  (*(v3 + 104))(v15, enum case for MessageStoreFetchRequest.QuerySearchType.unsorted(_:), v16);
  v0[2] = _swiftEmptyArrayStorage;
  sub_100155AC0();
  sub_10014EA98(&qword_1003AA8E8, &unk_1002FABB0);
  sub_100155B18();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MessageStoreFetchRequest.init(query:sortType:options:pageSize:page:originatingBundleID:)();
  v11 = swift_task_alloc();
  v0[20] = v11;
  *v11 = v0;
  v11[1] = sub_100155278;
  v12 = v0[19];

  return MessageStoreController.getMessages(fetchRequest:)(v12);
}

uint64_t sub_100155278(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_1001554FC;
  }

  else
  {
    v4 = sub_10015538C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10015538C()
{
  v1 = sub_100017230(v0[21]);
  v2 = v0[21];
  if (v1)
  {
    v3 = v2 & 0xC000000000000001;
    sub_100017238(0, (v2 & 0xC000000000000001) == 0, v2);
    if (v3)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v4 = *(v0[21] + 32);
    }

    dispatch thunk of Message.messageFile.getter();

    v5 = 0;
  }

  else
  {

    v5 = 1;
  }

  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];
  v9 = v0[8];
  v10 = v0[5];
  v11 = type metadata accessor for URL();
  sub_100006848(v9, v5, 1, v11);
  v10(v9);
  sub_100155BC4(v9);
  (*(v7 + 8))(v6, v8);
  sub_10000C260();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1001554FC()
{
  v1 = v0[7];
  v2 = v0[5];
  (*(v0[18] + 8))(v0[19], v0[17]);
  v3 = type metadata accessor for URL();
  sub_100006848(v1, 1, 1, v3);
  v2(v1);

  sub_100155BC4(v1);
  sub_10000C260();

  v4 = v0[1];

  return v4();
}

void sub_100155720(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AAF20, &unk_1002FABA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_100155C34(a1, &v11 - v5);
  v7 = type metadata accessor for URL();
  v9 = 0;
  if (sub_100006AC0(v6, 1, v7) != 1)
  {
    URL._bridgeToObjectiveC()(v8);
    v9 = v10;
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  (*(a2 + 16))(a2, v9);
}

id sub_100155820()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageStoreClient();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100155888(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1001559CC;

  return sub_100154E14(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_1001559CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100155AC0()
{
  result = qword_1003AA8E0;
  if (!qword_1003AA8E0)
  {
    type metadata accessor for MessageFetchOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA8E0);
  }

  return result;
}

unint64_t sub_100155B18()
{
  result = qword_1003AA8F0;
  if (!qword_1003AA8F0)
  {
    sub_100155B7C(&qword_1003AA8E8, &unk_1002FABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA8F0);
  }

  return result;
}

uint64_t sub_100155B7C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100155BC4(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003AAF20, &unk_1002FABA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100155C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AAF20, &unk_1002FABA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100155D44()
{
  v1 = sub_100006BB0();
  sub_100156134(v1, v0);
  sub_100008A14(v1, v0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100155DAC()
{
  v0 = type metadata accessor for Logger();
  sub_100156134(v0, qword_1003B8898);
  sub_100008A14(v0, qword_1003B8898);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100155E94()
{
  v0 = type metadata accessor for Logger();
  sub_100156134(v0, qword_1003B88F8);
  sub_100008A14(v0, qword_1003B88F8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100155F1C()
{
  v0 = type metadata accessor for Logger();
  sub_100156134(v0, qword_1003B8910);
  sub_100008A14(v0, qword_1003B8910);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100155F9C()
{
  sub_100155FFC();
  result = OS_os_log.init(subsystem:category:)();
  qword_1003B8928 = result;
  return result;
}

unint64_t sub_100155FFC()
{
  result = qword_1003AA8F8;
  if (!qword_1003AA8F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AA8F8);
  }

  return result;
}

uint64_t sub_1001560CC()
{
  v1 = sub_100006BB0();
  sub_100156134(v1, v0);
  sub_100008A14(v1, v0);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100156134(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t VoicemailControlService.__allocating_init(call:callCenter:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t VoicemailControlService.init(call:callCenter:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t VoicemailControlService.__deallocating_deinit()
{
  VoicemailControlService.deinit();

  return _swift_deallocClassInstance(v0, 32, 7);
}

id sub_1001562A8()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 shouldMakeFakeSOSCall];

  return v1;
}

uint64_t sub_10015631C()
{
  if ([v0 isSOS])
  {
    return 1;
  }

  return sub_100156360();
}

uint64_t sub_100156360()
{
  v1 = [v0 handle];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  v3 = [v1 value];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (![objc_opt_self() shouldMakeFakeSOSCall])
  {

LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  sub_100028A30();
  v4 = StringProtocol.contains<A>(_:)();

  return v4 & 1;
}

uint64_t sub_100156490(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001564D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100156538@<X0>(uint64_t a3@<X8>)
{
  sub_10014EA98(&qword_1003AA9B8, &qword_1002FACA8);
  sub_100155B7C(&qword_1003AA9C0, &qword_1002FACB0);
  sub_100027E08(&qword_1003AA9C8, &qword_1003AA9C0, &qword_1002FACB0, &protocol conformance descriptor for Button<A>);
  sub_100156BA0();
  swift_getOpaqueTypeConformance2();
  ClarityUIButtonRowContainer.init(content:)();
  static ClarityUIMetrics.backButtonPadding.getter();
  v4 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = sub_10014EA98(&qword_1003AA9D8, &qword_1002FACB8);
  v14 = a3 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_100156698@<X0>(uint64_t a3@<X8>)
{
  v12[1] = a3;
  v3 = sub_10014EA98(&qword_1003AA9C0, &qword_1002FACB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - v5;

  sub_10014EA98(&qword_1003AA9E0, &unk_1002FACC0);
  v7 = sub_100155B7C(&qword_1003AA9E8, &qword_100300D70);
  v8 = type metadata accessor for MultimodalNavigationBackButtonLabelStyle();
  v9 = sub_100027E08(&qword_1003AA9F0, &qword_1003AA9E8, &qword_100300D70, &protocol conformance descriptor for Label<A, B>);
  v10 = sub_100156BF4();
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = v9;
  v12[5] = v10;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  sub_100027E08(&qword_1003AA9C8, &qword_1003AA9C0, &qword_1002FACB0, &protocol conformance descriptor for Button<A>);
  sub_100156BA0();
  View.buttonStyle<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1001568AC()
{
  v0 = type metadata accessor for MultimodalNavigationBackButtonLabelStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10014EA98(&qword_1003AA9E8, &qword_100300D70);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  Label.init(title:icon:)();
  MultimodalNavigationBackButtonLabelStyle.init()();
  sub_100027E08(&qword_1003AA9F0, &qword_1003AA9E8, &qword_100300D70, &protocol conformance descriptor for Label<A, B>);
  sub_100156BF4();
  View.labelStyle<A>(_:)();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100156AD0@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100156B48@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

unint64_t sub_100156BA0()
{
  result = qword_1003AA9D0;
  if (!qword_1003AA9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA9D0);
  }

  return result;
}

unint64_t sub_100156BF4()
{
  result = qword_1003AA9F8;
  if (!qword_1003AA9F8)
  {
    type metadata accessor for MultimodalNavigationBackButtonLabelStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA9F8);
  }

  return result;
}

unint64_t sub_100156C5C()
{
  result = qword_1003AAA00;
  if (!qword_1003AAA00)
  {
    sub_100155B7C(&qword_1003AA9D8, &qword_1002FACB8);
    sub_100027E08(&qword_1003AAA08, &qword_1003AAA10, &qword_1002FACE0, &protocol conformance descriptor for ClarityUIButtonRowContainer<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AAA00);
  }

  return result;
}

uint64_t sub_100156D30(uint64_t a1)
{
  v2 = type metadata accessor for PlatterButtonType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ButtonStyleConfiguration();
  __chkstk_darwin(v6);
  (*(v8 + 16))(v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v10[1] = static Color.clarityUIButtonBackground.getter();
  static Color.primary.getter();
  (*(v3 + 104))(v5, enum case for PlatterButtonType.ultraRoundedRectangle(_:), v2);
  return PlatterButtonStyleView.init(configuration:background:foregroundColor:type:includesPadding:)();
}

id sub_100156ED8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  v11 = sub_1001814BC();
  [v10 addSubview:v11];

  result = [v1 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = result;
  v59 = v7;
  v13 = sub_100181AB8();
  [v12 addSubview:v13];

  result = [v1 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = result;
  v55 = v5;
  v56 = v6;
  v57 = v3;
  v58 = v2;
  v15 = sub_1001820AC();
  [v14 addSubview:v15];

  v16 = OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___rttAudioRouteButton;
  [*&v1[OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___rttAudioRouteButton] setAlpha:0.0];
  v17 = OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___rttCallControlsButton;
  [*&v1[OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___rttCallControlsButton] setAlpha:0.0];
  v18 = OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___rttVideoButton;
  [*&v1[OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___rttVideoButton] setAlpha:0.0];
  sub_1001576F8();
  [*&v1[v16] addTarget:v1 action:"rttAudioRouteButtonTapped" forControlEvents:64];
  [*&v1[v17] addTarget:v1 action:"rttCallControlsButtonTapped" forControlEvents:64];
  [*&v1[v18] addTarget:v1 action:"rttVideoButtonTapped" forControlEvents:64];
  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1002FAD30;
  v20 = [*&v1[v16] bottomAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = result;
  v22 = [result safeAreaLayoutGuide];

  v23 = [v22 bottomAnchor];
  v24 = [v20 constraintEqualToAnchor:v23];

  *(v19 + 32) = v24;
  v25 = [*&v1[v16] leadingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26 = result;
  v27 = [result leadingAnchor];

  v28 = [v25 constraintEqualToAnchor:v27 constant:20.0];
  *(v19 + 40) = v28;
  v29 = [*&v1[v17] bottomAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v30 = result;
  v31 = [result safeAreaLayoutGuide];

  v32 = [v31 bottomAnchor];
  v33 = [v29 constraintEqualToAnchor:v32];

  *(v19 + 48) = v33;
  v34 = [*&v1[v17] trailingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v35 = result;
  v36 = [result trailingAnchor];

  v37 = [v34 constraintEqualToAnchor:v36 constant:-20.0];
  *(v19 + 56) = v37;
  v38 = [*&v1[v18] bottomAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v39 = result;
  v40 = [result safeAreaLayoutGuide];

  v41 = [v40 bottomAnchor];
  v42 = [v38 constraintEqualToAnchor:v41];

  *(v19 + 64) = v42;
  v43 = [*&v1[v18] centerXAnchor];
  result = [v1 view];
  if (result)
  {
    v44 = result;
    v45 = objc_opt_self();
    v46 = [v44 centerXAnchor];

    v47 = [v43 constraintEqualToAnchor:v46];
    *(v19 + 72) = v47;
    sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v45 activateConstraints:isa];

    sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
    v49 = static OS_dispatch_queue.main.getter();
    v50 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100158FB8;
    aBlock[5] = v50;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E570;
    aBlock[3] = &unk_10035B1C0;
    v51 = _Block_copy(aBlock);

    v52 = v60;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100158FC0();
    sub_10014EA98(&unk_1003AAAC0, &unk_1002FB790);
    sub_100032638();
    v53 = v55;
    v54 = v58;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v51);

    (*(v57 + 8))(v53, v54);
    return (*(v59 + 8))(v52, v56);
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1001576F8()
{
  v1 = v0;
  v2 = sub_10014EA98(&qword_1003AAA90, qword_1002FAD50);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v55 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v55 - v10;
  __chkstk_darwin(v9);
  v13 = &v55 - v12;
  v14 = objc_opt_self();
  v15 = [v14 sharedInstance];
  v16 = [v15 routeController];

  v17 = [v16 pickedRoute];
  if (v17)
  {
    v18 = [v17 isReceiver];
    v55 = v14;
    if ((v18 & 1) != 0 || (v19 = [v17 audioRouteGlyphForDisplayStyle:0]) == 0)
    {
      v22 = 0;
    }

    else
    {
      v20 = v19;
      v21 = [objc_opt_self() systemBlackColor];
      v22 = [v20 imageWithTintColor:v21];
    }

    v23 = sub_1001814BC();
    UIButton.configuration.getter();
    v24 = type metadata accessor for UIButton.Configuration();
    v25 = sub_100006AC0(v13, 1, v24);
    v56 = v8;
    v57 = v22;
    if (v25)
    {
      sub_100158DE8(v13, v5);
      UIButton.configuration.setter();

      sub_100158E58(v13);
    }

    else
    {
      if (!v22)
      {
        sub_1000064BC(0, &qword_1003AAA98, UIImage_ptr);
        sub_1001FFAD8();
      }

      v26 = v22;
      UIButton.Configuration.image.setter();
      UIButton.configuration.setter();
    }

    v27 = OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___rttAudioRouteButton;
    v28 = *(v1 + OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___rttAudioRouteButton);
    v29 = [v17 name];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v17;
    v33 = v32;

    v34 = v33;
    v35 = v31;
    sub_100158EC0(v30, v34, v28);

    v36 = [v31 isReceiver];
    v58 = v1;
    v37 = *(v1 + v27);
    UIButton.configuration.getter();
    if (sub_100006AC0(v11, 1, v24))
    {
      sub_100158DE8(v11, v5);
      UIButton.configuration.setter();

      sub_100158E58(v11);
    }

    else
    {
      v38 = objc_opt_self();
      v39 = &selRef_blackColor;
      if (v36)
      {
        v39 = &selRef_systemWhiteColor;
      }

      v40 = [v38 *v39];
      UIButton.Configuration.baseForegroundColor.setter();
      UIButton.configuration.setter();
    }

    v41 = v56;
    v42 = *(v58 + v27);
    UIButton.configuration.getter();
    if (sub_100006AC0(v41, 1, v24))
    {
      sub_100158DE8(v41, v5);
      UIButton.configuration.setter();

      sub_100158E58(v41);
    }

    else
    {
      v43 = objc_opt_self();
      v44 = &selRef_clearColor;
      if (!v36)
      {
        v44 = &selRef_systemWhiteColor;
      }

      v45 = [v43 *v44];
      UIButton.Configuration.baseBackgroundColor.setter();
      UIButton.configuration.setter();
    }

    v46 = [v55 sharedInstance];
    v47 = [v46 routeController];

    v48 = [v47 areAuxiliaryRoutesAvailable];
    v49 = v58;
    v50 = *(v58 + v27);
    if (v48)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      v52 = v50;
      if (Strong)
      {
        v53 = [Strong getAudioRouteMenu];
        swift_unknownObjectRelease();
      }

      else
      {
        v53 = 0;
      }

      [v52 setMenu:v53];

      v49 = v58;
    }

    else
    {
      [*(v58 + v27) setMenu:0];
    }

    v54 = *(v49 + v27);
    [v54 setShowsMenuAsPrimaryAction:v48];
  }
}

void sub_100157C74(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_100181AB8();
    v4 = [v3 subviews];

    sub_1000064BC(0, &qword_1003AAAD0, UIView_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (sub_100017230(v5))
    {
      sub_10000EB28(0, (v5 & 0xC000000000000001) == 0, v5);
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v5 + 32);
      }

      v7 = v6;

      [*&v2[OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___rttCallControlsButton] frame];
      [v7 _setCornerRadius:v8 * 0.5];
    }

    else
    {
    }

    v9 = sub_1001814BC();
    v10 = [v9 subviews];

    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if (sub_100017230(v11))
    {
      sub_10000EB28(0, (v11 & 0xC000000000000001) == 0, v11);
      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(v11 + 32);
      }

      v13 = v12;

      [*&v2[OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___rttAudioRouteButton] frame];
      [v13 _setCornerRadius:v14 * 0.5];
    }

    else
    {
    }
  }
}

void sub_100157E70()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 routeController];

  v3 = [v2 pickedRoute];
  if ((!v3 || (v4 = [v3 isReceiver], v3, v4)) && (v5 = objc_msgSend(v0, "sharedInstance"), v6 = objc_msgSend(v5, "routeController"), v5, v7 = objc_msgSend(v6, "routeForSpeakerEnable"), v6, v7) || (v8 = objc_msgSend(v0, "sharedInstance"), v9 = objc_msgSend(v8, "routeController"), v8, v7 = objc_msgSend(v9, "routeForSpeakerDisable"), v9, v7))
  {
    v10 = [v0 sharedInstance];
    v11 = [v10 routeController];

    [v11 pickRoute:v7];
  }

  sub_1001576F8();
}

void *sub_1001580B8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result handleRTTVideoStreamingButtonTapped];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_100158164(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result transitionToRTTState:a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10015821C(void *a1)
{
  v2 = v1;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v4 = type metadata accessor for Logger();
  sub_100008A14(v4, &unk_1003B8820);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    *swift_slowAlloc() = 0;
    sub_100008530(&_mh_execute_header, v7, v8, "EnhancedEmergency: EmergencyWebRTCViewController trying to add RTT message view");
  }

  v9 = sub_1001814BC();
  v10 = [v9 superview];

  if (v10)
  {
  }

  else
  {
    sub_100156ED8();
  }

  [v2 addChildViewController:a1];
  v11 = sub_100006BD0();
  if (!v11)
  {
    __break(1u);
    goto LABEL_23;
  }

  v12 = v11;
  [v11 setAlpha:0.0];

  v13 = [v2 view];
  if (!v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = v13;
  v15 = sub_100006BD0();
  if (!v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v15;
  [v14 addSubview:v15];

  [a1 didMoveToParentViewController:v2];
  v17 = sub_100006BD0();
  if (!v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = v17;
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = sub_100006BD0();
  if (!v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v19;
  v59 = type metadata accessor for EmergencyWebRTCViewController();
  v58[0] = v2;
  objc_allocWithZone(UITapGestureRecognizer);
  v21 = v2;
  v22 = sub_1001A70A0(v58, "recentMessageViewTapped");
  [v20 addGestureRecognizer:{v22, v58[0]}];

  v23 = OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonRTTBottomAnchor;
  if (*&v21[OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonRTTBottomAnchor])
  {
    goto LABEL_16;
  }

  v24 = [*&v21[OBJC_IVAR___EmergencyWebRTCViewController_zoomButton] bottomAnchor];
  v25 = sub_100006BD0();
  if (v25)
  {
    v26 = v25;
    v27 = [v25 topAnchor];

    v28 = [v24 constraintEqualToAnchor:v27 constant:-10.0];
    v29 = *&v21[v23];
    *&v21[v23] = v28;

LABEL_16:
    sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1002FAD40;
    v31 = sub_100006BD0();
    if (v31)
    {
      v32 = v31;
      v33 = [v31 bottomAnchor];

      v34 = sub_100181AB8();
      v35 = [v34 topAnchor];

      v36 = [v33 constraintEqualToAnchor:v35 constant:-20.0];
      *(v30 + 32) = v36;
      v37 = sub_100006BD0();
      if (v37)
      {
        v38 = v37;
        v39 = [v37 leadingAnchor];

        v40 = [v21 view];
        if (v40)
        {
          v41 = v40;
          v42 = [v40 leadingAnchor];

          v43 = [v39 constraintEqualToAnchor:v42 constant:20.0];
          *(v30 + 40) = v43;
          v44 = sub_100006BD0();
          if (v44)
          {
            v45 = v44;
            v46 = [v44 trailingAnchor];

            v47 = [v21 view];
            if (v47)
            {
              v48 = v47;
              v49 = objc_opt_self();
              v50 = [v48 trailingAnchor];

              v51 = [v46 constraintEqualToAnchor:v50 constant:-20.0];
              *(v30 + 48) = v51;
              sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v49 activateConstraints:isa];

              v53 = objc_opt_self();
              v54 = swift_allocObject();
              swift_unknownObjectWeakInit();
              sub_100006BE8();
              v55 = swift_allocObject();
              *(v55 + 16) = a1;
              *(v55 + 24) = v54;
              v60 = sub_100158F90;
              v61 = v55;
              v58[0] = _NSConcreteStackBlock;
              v58[1] = 1107296256;
              v58[2] = sub_10002E570;
              v59 = &unk_10035B198;
              v56 = _Block_copy(v58);
              v57 = a1;

              [v53 animateWithDuration:v56 animations:0.2];
              _Block_release(v56);
              return;
            }

            goto LABEL_31;
          }

LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_32:
  __break(1u);
}

void sub_10015884C(void *a1)
{
  v2 = v1;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v4 = type metadata accessor for Logger();
  sub_100008A14(v4, &unk_1003B8820);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    *swift_slowAlloc() = 0;
    sub_100008530(&_mh_execute_header, v7, v8, "EnhancedEmergency: EmergencyWebRTCViewController trying to remove RTT message view");
  }

  v9 = objc_opt_self();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100006BE8();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  v22 = sub_100158F24;
  v23 = v11;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_10002E570;
  v21 = &unk_10035B0F8;
  v12 = _Block_copy(&v18);
  v13 = a1;

  sub_100006BE8();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v2;
  v22 = sub_100158F4C;
  v23 = v14;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100164920;
  v21 = &unk_10035B148;
  v15 = _Block_copy(&v18);
  v16 = v13;
  v17 = v2;

  [v9 animateWithDuration:v12 animations:v15 completion:0.2];
  _Block_release(v15);
  _Block_release(v12);
}

void sub_100158A98(void *a1, uint64_t a2, char a3, char a4, double a5)
{
  v9 = [a1 view];
  if (v9)
  {
    v10 = v9;
    [v9 setAlpha:a5];

    sub_10000FF6C(a2 + 16, v32);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = sub_1001814BC();

      sub_100007E98();
    }

    sub_10000FF6C(a2 + 16, v31);
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      v16 = sub_100181AB8();

      sub_100007E98();
    }

    sub_10000FF6C(a2 + 16, v30);
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = sub_1001820AC();

      sub_100007E98();
    }

    sub_10000FF6C(a2 + 16, v29);
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = v20;
      v22 = *(v20 + OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonBottomAnchor);
      v23 = v22;

      if (v22)
      {
        [v23 setActive:a3 & 1];
      }
    }

    sub_10000FF6C(a2 + 16, v28);
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;
      v26 = *(v24 + OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonRTTBottomAnchor);
      v27 = v26;

      if (v26)
      {
        [v27 setActive:a4 & 1];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100158C54(int a1, id a2, void *a3)
{
  [a2 willMoveToParentViewController:0];
  v5 = [a2 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  [v5 removeFromSuperview];

  [a3 removeChildViewController:a2];
  v7 = [a2 view];
  if (!v7)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 removeAllGestureRecognizers];
}

uint64_t sub_100158D68()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;

  v5.n128_u64[0] = 0.25;
  v6.n128_u64[0] = v2;
  v7.n128_u64[0] = v4;

  return CGSize.scaled(_:)(v5, v6, v7);
}

uint64_t sub_100158DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AAA90, qword_1002FAD50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100158E58(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003AAA90, qword_1002FAD50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100158EC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setAccessibilityValue:v4];
}

uint64_t sub_100158F54()
{

  sub_100006BE8();

  return _swift_deallocObject(v1, v2, v3);
}

unint64_t sub_100158FC0()
{
  result = qword_1003B0530;
  if (!qword_1003B0530)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0530);
  }

  return result;
}

id sub_100159030(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC13InCallService26VoicemailDelegateDecorator_queue;
  type metadata accessor for TaskQueue();
  *&v2[v7] = TaskQueue.__allocating_init()();
  v8 = &v2[OBJC_IVAR____TtC13InCallService26VoicemailDelegateDecorator_lastTask];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = OBJC_IVAR____TtC13InCallService26VoicemailDelegateDecorator_logger;
  if (qword_1003A9F50 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_100008A14(v10, &unk_1003B8850);
  (*(*(v10 - 8) + 16))(&v3[v9], v11, v10);
  v12 = &v3[OBJC_IVAR____TtC13InCallService26VoicemailDelegateDecorator_onUpdate];
  *v12 = a1;
  *(v12 + 1) = a2;
  v14.receiver = v3;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_100159154(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001591F0, 0, 0);
}

uint64_t sub_1001591F0()
{
  sub_10000A364();
  v10 = v1;
  sub_100006880();
  sub_100008550();
  if (qword_1003AA008 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 24);
  v3 = type metadata accessor for UUID();
  sub_100006848(v2, 1, 1, v3);
  sub_10000757C();
  v4 = swift_task_alloc();
  v5 = sub_1000068A0(v4);
  *v5 = v6;
  v7 = sub_10000C28C(v5);

  return v8(v7);
}

void sub_100159378(const char *a1, uint64_t a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR____TtC13InCallService26VoicemailDelegateDecorator_lastTask];
  os_unfair_lock_lock(&v3[OBJC_IVAR____TtC13InCallService26VoicemailDelegateDecorator_lastTask]);
  sub_10015AB18(v7 + 1, v3, v8, a1, a2, a3);

  os_unfair_lock_unlock(v7);
}

uint64_t sub_1001593FC(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100159498, 0, 0);
}

uint64_t sub_100159498()
{
  sub_10000A364();
  v10 = v1;
  sub_100006880();
  sub_100008550();
  if (qword_1003AA010 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 24);
  v3 = type metadata accessor for UUID();
  sub_100006848(v2, 1, 1, v3);
  sub_10000757C();
  v4 = swift_task_alloc();
  v5 = sub_1000068A0(v4);
  *v5 = v6;
  v7 = sub_10000C28C(v5);

  return v8(v7);
}

uint64_t sub_100159620(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001596BC, 0, 0);
}

uint64_t sub_1001596BC()
{
  sub_10000A364();
  v10 = v1;
  sub_100006880();
  sub_100008550();
  if (qword_1003AA018 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 24);
  v3 = type metadata accessor for UUID();
  sub_100006848(v2, 1, 1, v3);
  sub_10000757C();
  v4 = swift_task_alloc();
  v5 = sub_1000068A0(v4);
  *v5 = v6;
  v7 = sub_10000C28C(v5);

  return v8(v7);
}

uint64_t sub_100159844(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001598E0, 0, 0);
}

uint64_t sub_1001598E0()
{
  sub_10000A364();
  v10 = v1;
  sub_100006880();
  sub_100008550();
  if (qword_1003AA020 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 24);
  v3 = type metadata accessor for UUID();
  sub_100006848(v2, 1, 1, v3);
  sub_10000757C();
  v4 = swift_task_alloc();
  v5 = sub_1000068A0(v4);
  *v5 = v6;
  v7 = sub_10000C28C(v5);

  return v8(v7);
}

uint64_t sub_1001599F8()
{
  sub_100006610();
  v1 = *(*v0 + 24);
  v2 = *v0;
  sub_100006870();
  *v3 = v2;

  sub_100008360(v1, &qword_1003AAB40, &unk_1002FAAB0);

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_100159B84(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100159C20, 0, 0);
}

uint64_t sub_100159C20()
{
  sub_10000A364();
  v10 = v1;
  sub_100006880();
  sub_100008550();
  if (qword_1003AA028 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 24);
  v3 = type metadata accessor for UUID();
  sub_100006848(v2, 1, 1, v3);
  sub_10000757C();
  v4 = swift_task_alloc();
  v5 = sub_1000068A0(v4);
  *v5 = v6;
  v7 = sub_10000C28C(v5);

  return v8(v7);
}

uint64_t sub_100159DA8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100159E44, 0, 0);
}

uint64_t sub_100159E44()
{
  sub_10000A364();
  v10 = v1;
  sub_100006880();
  sub_100008550();
  if (qword_1003AA030 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 24);
  v3 = type metadata accessor for UUID();
  sub_100006848(v2, 1, 1, v3);
  sub_10000757C();
  v4 = swift_task_alloc();
  v5 = sub_1000068A0(v4);
  *v5 = v6;
  v7 = sub_10000C28C(v5);

  return v8(v7);
}

uint64_t sub_100159FCC(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10015A068, 0, 0);
}

uint64_t sub_10015A068()
{
  sub_10000A364();
  v10 = v1;
  sub_100006880();
  sub_100008550();
  if (qword_1003AA038 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 24);
  v3 = type metadata accessor for UUID();
  sub_100006848(v2, 1, 1, v3);
  sub_10000757C();
  v4 = swift_task_alloc();
  v5 = sub_1000068A0(v4);
  *v5 = v6;
  v7 = sub_10000C28C(v5);

  return v8(v7);
}

void sub_10015A1F0(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC13InCallService26VoicemailDelegateDecorator_lastTask];
  os_unfair_lock_lock(&v1[OBJC_IVAR____TtC13InCallService26VoicemailDelegateDecorator_lastTask]);
  sub_10015A25C(v3 + 1, v1, a1);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_10015A25C(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18 = a1;
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "VoicemailDelegateDecorator: received greetingDidChange", v11, 2u);
    a1 = v18;
  }

  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v7 + 32))(v13 + v12, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v14 = a2;
  v15 = dispatch thunk of TaskQueue.async(_:)();

  *a1 = v15;
  return result;
}

uint64_t sub_10015A45C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10015A4F8, 0, 0);
}

uint64_t sub_10015A4F8()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC13InCallService26VoicemailDelegateDecorator_onUpdate);
  if (qword_1003AA040 != -1)
  {
    swift_once();
  }

  v3 = v0[3];
  v2 = v0[4];
  v4 = qword_1003B8A68;
  v5 = type metadata accessor for UUID();
  sub_1000058E8();
  (*(v6 + 16))(v2, v3, v5);
  sub_100006848(v2, 0, 1, v5);
  v10 = (v1 + *v1);
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_10015A694;
  v8 = v0[4];

  return v10(v4, v8);
}

uint64_t sub_10015A694()
{
  sub_100006610();
  v1 = *(*v0 + 32);
  v2 = *v0;
  sub_100006870();
  *v3 = v2;

  sub_100008360(v1, &qword_1003AAB40, &unk_1002FAAB0);

  v4 = *(v2 + 8);

  return v4();
}

uint64_t type metadata accessor for VoicemailDelegateDecorator(uint64_t a1)
{
  result = qword_1003AAB20;
  if (!qword_1003AAB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10015A9D8(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10015AA90()
{
  v1 = &v0[OBJC_IVAR____TtC13InCallService26VoicemailDelegateDecorator_lastTask];
  os_unfair_lock_lock(&v0[OBJC_IVAR____TtC13InCallService26VoicemailDelegateDecorator_lastTask]);
  sub_10015AB18(v1 + 1, v0, v2, "VoicemailDelegateDecorator: received voicemailsDidChange", &unk_10035B1F8, &unk_1002FADB8);

  os_unfair_lock_unlock(v1);
}

uint64_t sub_10015AB18(uint64_t *a1, void *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6)
{

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, a4, v11, 2u);
  }

  *(swift_allocObject() + 16) = a2;
  v12 = a2;
  v13 = dispatch thunk of TaskQueue.async(_:)();

  *a1 = v13;
  return result;
}

uint64_t sub_10015AC30(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10015ACCC, 0, 0);
}

uint64_t sub_10015ACCC()
{
  sub_10000A364();
  v10 = v1;
  sub_100006880();
  sub_100008550();
  if (qword_1003AA048 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 24);
  v3 = type metadata accessor for UUID();
  sub_100006848(v2, 1, 1, v3);
  sub_10000757C();
  v4 = swift_task_alloc();
  v5 = sub_1000068A0(v4);
  *v5 = v6;
  v7 = sub_10000C28C(v5);

  return v8(v7);
}

uint64_t sub_10015AEA4()
{
  sub_100006610();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100006BF4(v1);

  return sub_10015AC30(v3);
}

uint64_t sub_10015AF28()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = sub_100008BA0(v4);
  *v5 = v6;
  v5[1] = sub_10015B480;

  return sub_10015A45C(v3, v0 + v2);
}

uint64_t sub_10015AFFC()
{
  sub_100006610();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100006BF4(v1);

  return sub_100159FCC(v3);
}

uint64_t sub_10015B080()
{
  sub_100006610();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100006BF4(v1);

  return sub_100159DA8(v3);
}

uint64_t sub_10015B104()
{
  sub_100006610();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100006BF4(v1);

  return sub_100159B84(v3);
}

uint64_t sub_10015B188()
{
  sub_100006610();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100006BF4(v1);

  return sub_100159844(v3);
}

uint64_t sub_10015B20C()
{
  sub_100006610();
  v1 = *v0;
  sub_100006870();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10015B2F4()
{
  sub_100006610();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100006BF4(v1);

  return sub_100159620(v3);
}

uint64_t sub_10015B378()
{
  sub_100006610();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100006BF4(v1);

  return sub_1001593FC(v3);
}

uint64_t sub_10015B3FC()
{
  sub_100006610();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100006BF4(v1);

  return sub_100159154(v3);
}

uint64_t sub_10015B538()
{
  v1 = *(v0 + OBJC_IVAR___PHScreenSharingButtonViewModel_call + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t sub_10015B5F4()
{
  v1 = *(v0 + OBJC_IVAR___PHScreenSharingButtonViewModel_conversationProvider + 24);
  v2 = *(v0 + OBJC_IVAR___PHScreenSharingButtonViewModel_conversationProvider + 32);
  sub_100008878((v0 + OBJC_IVAR___PHScreenSharingButtonViewModel_conversationProvider), v1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100006C24();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  (*(v2 + 24))(v1, v2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(v1) = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v1 & 1;
}

char *sub_10015B74C(uint64_t a1, void *a2)
{
  v4 = sub_10014EA98(&qword_1003AAC08, &qword_1002FB108);
  sub_100006C24();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v17 - v11;
  v13 = [objc_opt_self() defaultCenter];
  if (qword_1003A9FC0 != -1)
  {
    swift_once();
  }

  v14 = NSNotificationCenter.notifications(named:object:)();

  v17[1] = v14;
  type metadata accessor for NSNotificationCenter.Notifications();
  sub_10014EA98(&qword_1003AAC10, &qword_1002FB118);
  sub_10015D908();
  AsyncCompactMapSequence.init(_:transform:)();
  swift_getObjectType();
  (*(v6 + 16))(v10, v12, v4);
  v15 = sub_10015D960(a1, a2, v10);
  (*(v6 + 8))(v12, v4);
  swift_deallocPartialClassInstance();
  return v15;
}

uint64_t sub_10015B970(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(sub_10015B990, 0, 0);
}

uint64_t sub_10015B990()
{
  sub_100006610();
  Notification.object.getter();
  v1 = *(v0 + 48);
  if (*(v0 + 40))
  {
    sub_10014EA98(&qword_1003AAC10, &qword_1002FB118);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v2 = *(v0 + 48);
      *v2 = 0;
      v2[1] = 0;
    }
  }

  else
  {
    sub_10015E258(v0 + 16);
    *v1 = 0;
    v1[1] = 0;
  }

  sub_10000535C();

  return v3();
}

uint64_t sub_10015BA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[14] = type metadata accessor for MainActor();
  v5[15] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[16] = v7;
  v5[17] = v6;

  return _swift_task_switch(sub_10015BB24, v7, v6);
}

uint64_t sub_10015BB24()
{
  sub_100006880();
  v1 = v0[12];
  v2 = v1[3];
  v3 = sub_100008878(v1, v2);
  sub_100006C24();
  v5 = v4;
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  sub_10015DFA8(v0 + 2);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  swift_beginAccess();
  v7 = static MainActor.shared.getter();
  v0[18] = v7;
  sub_10015E208((v0 + 2), v0[5]);
  swift_task_alloc();
  sub_1000094BC();
  v0[19] = v8;
  *v8 = v9;
  sub_100006C04(v8);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 10, v7, &protocol witness table for MainActor);
}

uint64_t sub_10015BCE0()
{
  sub_100006610();
  v2 = *v1;
  sub_1000068BC();
  *v3 = v2;
  v4 = *v1;
  sub_1000068BC();
  *v5 = v4;

  if (!v0)
  {

    v7 = *(v2 + 128);
    v8 = *(v2 + 136);

    return _swift_task_switch(sub_10015BDE8, v7, v8);
  }

  return result;
}

uint64_t sub_10015BDE8()
{
  sub_100006880();
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[11];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_10015C2D0(v1, v2);
    }

    swift_unknownObjectRelease();
    v5 = static MainActor.shared.getter();
    v0[18] = v5;
    sub_10015E208((v0 + 2), v0[5]);
    swift_task_alloc();
    sub_1000094BC();
    v0[19] = v6;
    *v6 = v7;
    sub_100006C04(v6);

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 10, v5, &protocol witness table for MainActor);
  }

  else
  {

    sub_100005B2C(v0 + 2);
    sub_10000535C();

    return v8();
  }
}

void sub_10015BF34(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___PHScreenSharingButtonViewModel_call + 8);
  ObjectType = swift_getObjectType();
  if (((*(v3 + 16))(ObjectType, v3) & 1) != 0 && *(v1 + OBJC_IVAR___PHScreenSharingButtonViewModel_userRequestedScreenSharingEnd) != 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = (sub_10015B5F4() & 1) == 0;
  }

  sub_10015CEA4(v5, a1);
}

uint64_t sub_10015BFD4()
{
  v2 = v0;
  if (qword_1003A9F50 != -1)
  {
    sub_10000706C(&qword_1003A9F50);
  }

  v3 = type metadata accessor for Logger();
  sub_100008A14(v3, &unk_1003B8850);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    swift_slowAlloc();
    v13 = sub_10000A378();
    *v1 = 136315394;
    v6 = sub_100007EB4("/Library/Caches/com.apple.xbs/Sources/MobilePhone/InCallService/ScreenSharingButtonViewModel.swift", v12);
    sub_1000068AC(v6);
    *(v1 + 14) = 114;
    sub_10000B408(&_mh_execute_header, v7, v8, "%s[%ld]: userDidRequestScreenSharingToEnd");
    sub_100005B2C(v13);
    sub_100005BB8(v13);
    sub_100005BB8(v1);
  }

  *(v2 + OBJC_IVAR___PHScreenSharingButtonViewModel_userRequestedScreenSharingEnd) = 1;
  sub_10015BF34(128);
  v9 = *(v2 + OBJC_IVAR___PHScreenSharingButtonViewModel_call + 8);
  ObjectType = swift_getObjectType();
  return (*(v9 + 24))(0, ObjectType, v9);
}

void sub_10015C16C()
{
  v2 = v0;
  if (qword_1003A9F50 != -1)
  {
    sub_10000706C(&qword_1003A9F50);
  }

  v3 = type metadata accessor for Logger();
  sub_100008A14(v3, &unk_1003B8850);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    swift_slowAlloc();
    v10 = sub_10000A378();
    *v1 = 136315394;
    v6 = sub_100007EB4("/Library/Caches/com.apple.xbs/Sources/MobilePhone/InCallService/ScreenSharingButtonViewModel.swift", v9);
    sub_1000068AC(v6);
    *(v1 + 14) = 122;
    sub_10000B408(&_mh_execute_header, v7, v8, "%s[%ld]: userIsPresentingShareSheet");
    sub_100005B2C(v10);
    sub_100005BB8(v10);
    sub_100005BB8(v1);
  }

  *(v2 + OBJC_IVAR___PHScreenSharingButtonViewModel_userRequestedScreenSharingEnd) = 0;

  sub_10015BF34(128);
}

void sub_10015C2D0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = (*(a2 + 8))(ObjectType, a2);
  v7 = v6;
  v8 = *&v2[OBJC_IVAR___PHScreenSharingButtonViewModel_call + 8];
  v9 = swift_getObjectType();
  if (v5 == (*(v8 + 8))(v9, v8) && v7 == v10)
  {

LABEL_8:
    v13 = *(v8 + 16);
    v14 = v13(v9, v8);
    if (qword_1003A9F50 != -1)
    {
      sub_10000706C(&qword_1003A9F50);
    }

    v15 = type metadata accessor for Logger();
    sub_100008A14(v15, &unk_1003B8850);
    v16 = v2;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v23 = v14;
      v19 = swift_slowAlloc();
      v22 = v13;
      v20 = swift_slowAlloc();
      v24 = v20;
      *v19 = 136315650;
      *(v19 + 4) = sub_100008ADC(0xD000000000000062, 0x80000001002A5D20, &v24);
      *(v19 + 12) = 2048;
      *(v19 + 14) = 131;
      *(v19 + 22) = 1026;
      *(v19 + 24) = v22(v9, v8) & 1;

      _os_log_impl(&_mh_execute_header, v17, v18, "%s[%ld]: isSharingScreen updated to %{BOOL,public}d", v19, 0x1Cu);
      sub_100005B2C(v20);
      sub_100005BB8(v20);
      v21 = v19;
      v14 = v23;
      sub_100005BB8(v21);

      if ((v23 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {

      if ((v14 & 1) == 0)
      {
LABEL_15:
        sub_10015BF34(v14 & 1 | 0x40u);
        return;
      }
    }

    v16[OBJC_IVAR___PHScreenSharingButtonViewModel_userRequestedScreenSharingEnd] = 0;
    goto LABEL_15;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_8;
  }
}

id sub_10015C5A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenSharingButtonViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10015C644(uint64_t a1, uint64_t a2)
{
  v5 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  sub_100006848(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = v2;

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  v11[5] = a1;
  v11[6] = a2;
  sub_1001621BC();
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  return AnyCancellable.init(_:)();
}

uint64_t sub_10015C794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_10014EA98(&qword_1003AABD8, &qword_1002FB0E8);
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v8 = sub_10014EA98(&qword_1003AABE0, &qword_1002FB0F0);
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = type metadata accessor for MainActor();
  v6[16] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[17] = v10;
  v6[18] = v9;

  return _swift_task_switch(sub_10015C904, v10, v9);
}

uint64_t sub_10015C904()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v0[4] = *(v0[6] + OBJC_IVAR___PHScreenSharingButtonViewModel_state);
  sub_10014EA98(&qword_1003AABE8, &qword_1002FB0F8);
  sub_100027E08(&qword_1003AABF0, &qword_1003AABE8, &qword_1002FB0F8, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  Publisher<>.values.getter();
  AsyncPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[19] = static MainActor.shared.getter();
  sub_1000259F8(&qword_1003AABF8, &qword_1003AABE0, &qword_1002FB0F0);
  swift_task_alloc();
  sub_1000094BC();
  v0[20] = v4;
  *v4 = v5;
  v6 = sub_10000C2A4(v4);

  return dispatch thunk of AsyncIteratorProtocol.next()(v6);
}

uint64_t sub_10015CA60()
{
  v2 = *v1;
  sub_1000068BC();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 168) = v0;

  v5 = *(v2 + 152);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v10 = sub_10015CD84;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v9;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v10 = sub_10015CBE8;
  }

  return _swift_task_switch(v10, v6, v8);
}

uint64_t sub_10015CBE8()
{
  sub_100006610();

  *(v0 + 176) = *(v0 + 16);
  *(v0 + 25) = *(v0 + 24);
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return _swift_task_switch(sub_10015CC58, v1, v2);
}

uint64_t sub_10015CC58()
{
  if (*(v0 + 25) == 1)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    sub_10000535C();

    return v1();
  }

  else
  {
    (*(v0 + 56))(*(v0 + 176));
    *(v0 + 152) = static MainActor.shared.getter();
    sub_1000259F8(&qword_1003AABF8, &qword_1003AABE0, &qword_1002FB0F0);
    swift_task_alloc();
    sub_1000094BC();
    *(v0 + 160) = v3;
    *v3 = v4;
    v5 = sub_10000C2A4(v3);

    return dispatch thunk of AsyncIteratorProtocol.next()(v5);
  }
}

uint64_t sub_10015CD84()
{
  sub_100006610();
  *(v0 + 40) = *(v0 + 168);
  sub_10014EA98(&qword_1003AAC00, &qword_1002FB100);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

void sub_10015CEA4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  CurrentValueSubject.value.getter();
  if (v24 == a1)
  {
    if (qword_1003A9F50 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008A14(v4, &unk_1003B8850);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v7 = 136315906;
      *(v7 + 4) = sub_100008ADC(0xD000000000000062, 0x80000001002A5D20, &v24);
      *(v7 + 12) = 2048;
      *(v7 + 14) = 162;
      *(v7 + 22) = 2082;
      v8 = sub_10015D3C4(a1);
      v10 = sub_100008ADC(v8, v9, &v24);

      *(v7 + 24) = v10;
      *(v7 + 32) = 2082;
      v11 = sub_10015D458(v2);
      v13 = sub_100008ADC(v11, v12, &v24);

      *(v7 + 34) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s[%ld]: not updating button state to %{public}s, with reason: %{public}s because we are already in that state", v7, 0x2Au);
      swift_arrayDestroy();
    }
  }

  else
  {
    if (qword_1003A9F50 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008A14(v14, &unk_1003B8850);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100008ADC(0xD000000000000062, 0x80000001002A5D20, &v24);
      *(v17 + 12) = 2048;
      *(v17 + 14) = 166;
      *(v17 + 22) = 2082;
      v18 = sub_10015D3C4(a1);
      v20 = sub_100008ADC(v18, v19, &v24);

      *(v17 + 24) = v20;
      *(v17 + 32) = 2082;
      v21 = sub_10015D458(v2);
      v23 = sub_100008ADC(v21, v22, &v24);

      *(v17 + 34) = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s[%ld]: updating button state to %{public}s, with reason: %{public}s", v17, 0x2Au);
      swift_arrayDestroy();
    }

    v24 = a1;
    CurrentValueSubject.send(_:)();
  }
}

void sub_10015D228(char a1)
{
  if (qword_1003A9F50 != -1)
  {
    sub_10000706C(&qword_1003A9F50);
  }

  v3 = type metadata accessor for Logger();
  sub_100008A14(v3, &unk_1003B8850);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    swift_slowAlloc();
    v8 = sub_10000A378();
    *v1 = 136315650;
    v6 = sub_100007EB4("/Library/Caches/com.apple.xbs/Sources/MobilePhone/InCallService/ScreenSharingButtonViewModel.swift", v7);
    sub_1000068AC(v6);
    *(v1 + 14) = 194;
    *(v1 + 22) = 1026;
    *(v1 + 24) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s[%ld]: available updated to %{BOOL,public}d", v1, 0x1Cu);
    sub_100005B2C(v8);
    sub_100005BB8(v8);
    sub_100005BB8(v1);
  }

  sub_10015BF34(a1 & 1);
}

uint64_t sub_10015D3C4(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x64656C62616E65;
    case 2:
      v1 = 0x7463656C6573;
      return v1 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
    case 1:
      v1 = 0x6C6261736964;
      return v1 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

unint64_t sub_10015D458(unsigned __int8 a1)
{
  switch(a1 >> 6)
  {
    case 1:
      _StringGuts.grow(_:)(17);

      v2 = 0x68736E6565726373;
      goto LABEL_12;
    case 2:
      if (a1 == 128)
      {
        result = 0xD00000000000001DLL;
      }

      else
      {
        result = 0xD00000000000001ALL;
      }

      break;
    case 3:
      if (a1 == 192)
      {
        result = 0x6C616974696E69;
      }

      else
      {
        result = 0x6163696669746F6ELL;
      }

      break;
    default:
      v2 = 0x6C62616C69617661;
LABEL_12:
      v8 = v2;
      if (a1)
      {
        v4 = 1702195828;
      }

      else
      {
        v4 = 0x65736C6166;
      }

      if (a1)
      {
        v5 = 0xE400000000000000;
      }

      else
      {
        v5 = 0xE500000000000000;
      }

      v6 = v5;
      String.append(_:)(*&v4);

      v7._countAndFlagsBits = 41;
      v7._object = 0xE100000000000000;
      String.append(_:)(v7);
      result = v8;
      break;
  }

  return result;
}

uint64_t sub_10015D5DC(unsigned __int8 a1, unsigned __int8 a2)
{
  switch(a1 >> 6)
  {
    case 1:
      v2 = a2 ^ a1 ^ 1;
      if ((a2 & 0xC0) != 0x40)
      {
        v2 = 0;
      }

      break;
    case 2:
      v3 = a2 == 128;
      v4 = a2 == 129;
      v5 = a1 == 128;
      goto LABEL_6;
    case 3:
      v3 = a2 == 192;
      v4 = a2 == 193;
      v5 = a1 == 192;
LABEL_6:
      if (v5)
      {
        v2 = v3;
      }

      else
      {
        v2 = v4;
      }

      break;
    default:
      v2 = a2 ^ a1 ^ 1;
      if (a2 >= 0x40u)
      {
        v2 = 0;
      }

      break;
  }

  return v2 & 1;
}

id sub_10015D684@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10015D6B0();
  *a1 = result;
  return result;
}

id sub_10015D6B0()
{
  v1 = [v0 conversationManager];

  return v1;
}

unint64_t sub_10015D7D8()
{
  result = qword_1003AABC8;
  if (!qword_1003AABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AABC8);
  }

  return result;
}

uint64_t sub_10015D854()
{
  sub_100006880();
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  swift_task_alloc();
  sub_1000094BC();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_10015E4B0;
  v7 = sub_100008BC0();

  return sub_10015C794(v7, v8, v9, v2, v3, v4);
}

unint64_t sub_10015D908()
{
  result = qword_1003AAC18;
  if (!qword_1003AAC18)
  {
    type metadata accessor for NSNotificationCenter.Notifications();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AAC18);
  }

  return result;
}

char *sub_10015D960(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10014EA98(&qword_1003AAC08, &qword_1002FB108);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  (*(v7 + 32))(&v17 - v11, a3, v6);
  v13 = objc_allocWithZone(type metadata accessor for ScreenSharingButtonViewModel());
  (*(v7 + 16))(v10, v12, v6);
  v14 = a2;
  v15 = sub_10015DAD4(a1, v14, v10, v13);
  (*(v7 + 8))(v12, v6);

  return v15;
}

char *sub_10015DAD4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v36 = sub_1000064BC(0, &qword_1003AAC20, TUCallCenter_ptr);
  v37 = &off_1003AAB58;
  v35[0] = a2;
  v11 = sub_10014EA98(&qword_1003AAC08, &qword_1002FB108);
  v34[3] = v11;
  v34[4] = sub_100027E08(&qword_1003AAC28, &qword_1003AAC08, &qword_1002FB108, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>);
  v12 = sub_10015DFA8(v34);
  (*(*(v11 - 8) + 32))(v12, a3, v11);
  *&a4[OBJC_IVAR___PHScreenSharingButtonViewModel_cancellables] = _swiftEmptyArrayStorage;
  v13 = OBJC_IVAR___PHScreenSharingButtonViewModel_state;
  *&v32[0] = 0;
  sub_10014EA98(&qword_1003AABE8, &qword_1002FB0F8);
  swift_allocObject();
  *&a4[v13] = CurrentValueSubject.init(_:)();
  a4[OBJC_IVAR___PHScreenSharingButtonViewModel_userRequestedScreenSharingEnd] = 0;
  v14 = &a4[OBJC_IVAR___PHScreenSharingButtonViewModel_call];
  *v14 = a1;
  v14[1] = &off_10035B368;
  sub_10015E008(v35, &a4[OBJC_IVAR___PHScreenSharingButtonViewModel_conversationProvider]);
  v15 = type metadata accessor for ScreenSharingButtonViewModel();
  v33.receiver = a4;
  v33.super_class = v15;
  v16 = objc_msgSendSuper2(&v33, "init");
  v17 = type metadata accessor for TaskPriority();
  sub_100006848(v10, 1, 1, v17);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10015E008(v34, v32);
  type metadata accessor for MainActor();
  v19 = v16;

  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = &protocol witness table for MainActor;
  sub_1000304E0(v32, (v21 + 4));
  v21[9] = v18;

  sub_1001621BC();
  type metadata accessor for AnyCancellable();
  swift_allocObject();

  AnyCancellable.init(_:)();
  v22 = OBJC_IVAR___PHScreenSharingButtonViewModel_cancellables;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_100216928(*((*(v19 + v22) & 0xFFFFFFFFFFFFFF8) + 0x10));
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v23 = sub_100008878(v35, v36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v27 = (&v31 - v26);
  *v27 = [*v23 conversationManager];
  sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
  v28 = static OS_dispatch_queue.main.getter();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v19, v28, AssociatedTypeWitness, AssociatedConformanceWitness);

  (*(v25 + 8))(v27, AssociatedTypeWitness);
  sub_10015BF34(192);

  sub_100005B2C(v34);
  sub_100005B2C(v35);
  return v19;
}

uint64_t *sub_10015DFA8(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_10015E008(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10015E06C()
{
  sub_100006880();
  v2 = *(v0 + 72);
  swift_task_alloc();
  sub_1000094BC();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_10015E118;
  v5 = sub_100008BC0();

  return sub_10015BA88(v5, v6, v7, v8, v2);
}

uint64_t sub_10015E118()
{
  sub_100006610();
  v1 = *v0;
  sub_1000068BC();
  *v2 = v1;

  sub_10000535C();

  return v3();
}

uint64_t sub_10015E208(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_10015E258(uint64_t a1)
{
  v2 = sub_10014EA98(&unk_1003AAF50, &qword_1002FB170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScreenSharingButtonViewModel.Reason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7D)
  {
    if (a2 + 131 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 131) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 132;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v5 >= 0x7C)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for ScreenSharingButtonViewModel.Reason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 131 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 131) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7D)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7C)
  {
    v6 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10015E43C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 6;
  v4 = (v1 | 0xFFFFFFFE) + 2 * (v1 >> 6);
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_BYTE *sub_10015E46C(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    LOBYTE(v2) = *result & 1 | (a2 << 6);
  }

  else
  {
    v2 = (a2 & 1 | (a2 >> 1 << 6)) + 64;
  }

  *result = v2;
  return result;
}

uint64_t sub_10015E598@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___MPVoicemailAccount_uuid;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10015E76C()
{
  v1 = *(v0 + OBJC_IVAR___MPVoicemailAccount_accountDescription);

  return v1;
}

id sub_10015E7A8(uint64_t a1, char a2, char a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v15 = OBJC_IVAR___MPVoicemailAccount_uuid;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v8[v15], a1, v16);
  v8[OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported] = a2;
  v8[OBJC_IVAR___MPVoicemailAccount_subscribed] = a3;
  v8[OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported] = a4;
  v8[OBJC_IVAR___MPVoicemailAccount_provisioned] = a5;
  v8[OBJC_IVAR___MPVoicemailAccount_hasHandle] = a6;
  v18 = &v8[OBJC_IVAR___MPVoicemailAccount_accountDescription];
  *v18 = a7;
  v18[1] = a8;
  v24.receiver = v8;
  v24.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v24, "init");
  (*(v17 + 8))(a1, v16);
  return v19;
}

id sub_10015E9E8(void *a1, char a2, char a3, char a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for UUID();
  sub_10000688C();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v12 + 32))(&v4[OBJC_IVAR___MPVoicemailAccount_uuid], v15, v10);
  v17 = sub_10015FE1C(a1);
  v18 = &v4[OBJC_IVAR___MPVoicemailAccount_accountDescription];
  *v18 = v17;
  v18[1] = v19;
  v4[OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported] = a2;
  v4[OBJC_IVAR___MPVoicemailAccount_subscribed] = a3;
  v4[OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported] = a4;
  v20 = [a1 isProvisioned];
  v4[OBJC_IVAR___MPVoicemailAccount_provisioned] = v20;
  v21 = [a1 handle];
  v22 = v21;
  if (v21)
  {
  }

  v4[OBJC_IVAR___MPVoicemailAccount_hasHandle] = v22 != 0;
  v25.receiver = v4;
  v25.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v25, "init");

  return v23;
}

uint64_t sub_10015EC3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001002A5E30 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6269726373627573 && a2 == 0xEA00000000006465;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x80000001002A5E60 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F697369766F7270 && a2 == 0xEB0000000064656ELL;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6C646E6148736168 && a2 == 0xE900000000000065;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000012 && 0x80000001002A5E90 == a2)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10015EEA0(char a1)
{
  result = 1684632949;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x6269726373627573;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x6F697369766F7270;
      break;
    case 5:
      result = 0x6C646E6148736168;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_10015EFA8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10015EFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10015EC3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10015F03C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10015EE8C();
  *a1 = result;
  return result;
}

uint64_t sub_10015F064(uint64_t a1)
{
  v2 = sub_10015FDC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015F0A0(uint64_t a1)
{
  v2 = sub_10015FDC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for VoicemailAccount(uint64_t a1)
{
  result = qword_1003AAC58;
  if (!qword_1003AAC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10015F1B0(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10015F25C(void *a1)
{
  v3 = v1;
  v5 = sub_10014EA98(&qword_1003AAC68, &unk_1002FB228);
  sub_10000688C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v17[-v9];
  sub_100008878(a1, a1[3]);
  sub_10015FDC8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22[1] = 0;
  type metadata accessor for UUID();
  sub_10015FEF0(&qword_1003AAC78, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported);
    v22[0] = 1;
    sub_100025A1C(v11, v22);
    v12 = *(v3 + OBJC_IVAR___MPVoicemailAccount_subscribed);
    v21 = 2;
    sub_100025A1C(v12, &v21);
    v13 = *(v3 + OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported);
    v20 = 3;
    sub_100025A1C(v13, &v20);
    v14 = *(v3 + OBJC_IVAR___MPVoicemailAccount_provisioned);
    v19 = 4;
    sub_100025A1C(v14, &v19);
    v15 = *(v3 + OBJC_IVAR___MPVoicemailAccount_hasHandle);
    v18 = 5;
    sub_100025A1C(v15, &v18);
    v17[9] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

void *sub_10015F4F4(void *a1)
{
  v3 = v1;
  v26 = v3;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UUID();
  sub_10000688C();
  v25 = v6;
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10014EA98(&qword_1003AAC90, &qword_1002FB240);
  sub_10000688C();
  __chkstk_darwin(v10);
  v11 = a1[3];
  v27 = a1;
  sub_100008878(a1, v11);
  sub_10015FDC8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v12 = v26;
    sub_100005B2C(v27);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = 0;
    sub_10015FEF0(&qword_1003AAC98, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v26;
    (*(v25 + 32))(v26 + OBJC_IVAR___MPVoicemailAccount_uuid, v9, v5);
    sub_1000075B0(1);
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000068C8(v15, OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported);
    sub_1000075B0(2);
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000068C8(v16, OBJC_IVAR___MPVoicemailAccount_subscribed);
    sub_1000075B0(3);
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000068C8(v17, OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported);
    sub_1000075B0(4);
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000068C8(v18, OBJC_IVAR___MPVoicemailAccount_provisioned);
    sub_1000075B0(5);
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000068C8(v19, OBJC_IVAR___MPVoicemailAccount_hasHandle);
    sub_1000075B0(6);
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v21 = &v14[OBJC_IVAR___MPVoicemailAccount_accountDescription];
    *v21 = v20;
    v21[1] = v22;
    v29.receiver = v14;
    v29.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v29, "init");
    v23 = sub_1000094C8();
    v24(v23);
    sub_100005B2C(v27);
  }

  return v12;
}

void *sub_10015F8EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10015F4B0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10015F9A4()
{
  _StringGuts.grow(_:)(119);
  v1._countAndFlagsBits = 0xD000000000000017;
  v1._object = 0x80000001002A5F70;
  String.append(_:)(v1);
  type metadata accessor for UUID();
  sub_10015FEF0(&qword_1003AAC80, &protocol conformance descriptor for UUID);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  sub_10000855C(", callVoicemailSupported: ");
  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  v6._countAndFlagsBits = 0x6972637362757320;
  v6._object = 0xED0000203A646562;
  String.append(_:)(v6);
  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_subscribed))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_subscribed))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v9 = v8;
  String.append(_:)(*&v7);

  sub_10000855C(" greetingChangeSupported: ");
  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  v13._countAndFlagsBits = 0xD000000000000015;
  v13._object = 0x80000001002A5FD0;
  String.append(_:)(v13);

  sub_10014EA98(&qword_1003AAC88, &qword_1002FB238);
  v14._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v14);

  return 0;
}

uint64_t sub_10015FBC8(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  v4 = *(a1 + OBJC_IVAR___MPVoicemailAccount_accountDescription + 8);
  v5 = *(a2 + OBJC_IVAR___MPVoicemailAccount_accountDescription + 8);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_18;
    }

    v6 = *(a1 + OBJC_IVAR___MPVoicemailAccount_accountDescription) == *(a2 + OBJC_IVAR___MPVoicemailAccount_accountDescription) && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v5)
  {
    goto LABEL_18;
  }

  sub_100006C34();
  if (v6)
  {
    sub_100006C34();
    if (v6)
    {
      sub_100006C34();
      if (v6)
      {
        sub_100006C34();
        if (v6)
        {
          v7 = *(a1 + OBJC_IVAR___MPVoicemailAccount_hasHandle) ^ *(a2 + OBJC_IVAR___MPVoicemailAccount_hasHandle) ^ 1;
          return v7 & 1;
        }
      }
    }
  }

LABEL_18:
  v7 = 0;
  return v7 & 1;
}

uint64_t sub_10015FCB0(uint64_t a1)
{
  swift_getObjectType();
  sub_10015FE80(a1, v6);
  if (!v7)
  {
    sub_10015E258(v6);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  v3 = sub_10015FBC8(v1, v5);

  return v3 & 1;
}

unint64_t sub_10015FDC8()
{
  result = qword_1003AAC70;
  if (!qword_1003AAC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AAC70);
  }

  return result;
}

uint64_t sub_10015FE1C(void *a1)
{
  v1 = [a1 accountDescription];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10015FE80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&unk_1003AAF50, &qword_1002FB170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015FEF0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VoicemailAccount.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VoicemailAccount.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10016009C()
{
  result = qword_1003AACA0;
  if (!qword_1003AACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AACA0);
  }

  return result;
}

unint64_t sub_1001600F4()
{
  result = qword_1003AACA8;
  if (!qword_1003AACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AACA8);
  }

  return result;
}

unint64_t sub_10016014C()
{
  result = qword_1003AACB0;
  if (!qword_1003AACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AACB0);
  }

  return result;
}

id sub_1001609C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LayoutGuidesProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100160A34()
{
  v1 = [objc_allocWithZone(type metadata accessor for iOSAudioCallLayoutViewController()) init];
  [v0 addChildViewController:v1];
  v2 = sub_100006C60();
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  v4 = sub_100006BD0();
  if (!v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  [v3 addSubview:v4];

  v6 = sub_100006BD0();
  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v8 = sub_100008580(v7);
  *(v8 + 16) = xmmword_1002FB360;
  v9 = sub_100006BD0();

  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = [v9 topAnchor];

  v11 = sub_100006C60();
  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v11;
  v13 = [v11 topAnchor];

  v14 = sub_1000094D8();
  *(v8 + 32) = v14;
  v15 = sub_100006BD0();

  if (!v15)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = [v15 bottomAnchor];

  v17 = sub_100006C60();
  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  v19 = [v17 bottomAnchor];

  v20 = sub_1000094D8();
  *(v8 + 40) = v20;
  v21 = sub_100006BD0();

  if (!v21)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = [v21 leadingAnchor];

  v23 = sub_100006C60();
  if (!v23)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = v23;
  v25 = [v23 leadingAnchor];

  v26 = sub_1000094D8();
  *(v8 + 48) = v26;
  v27 = sub_100006BD0();

  if (!v27)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v28 = [v27 trailingAnchor];

  v29 = sub_100006C60();
  if (v29)
  {
    v30 = v29;
    v31 = objc_opt_self();
    v32 = [v30 trailingAnchor];

    v33 = [v28 constraintEqualToAnchor:v32];
    sub_100008BD4();
    sub_1000068D4();
    sub_100007EF8();
    [v31 activateConstraints:v28];

    [v1 didMoveToParentViewController:v0];
    v34 = type metadata accessor for LayoutGuidesProvider();
    v35 = objc_allocWithZone(v34);
    *&v35[OBJC_IVAR____TtC13InCallServiceP33_3A2EB68C5C25FCC9E5BD65EDE8C03F7D20LayoutGuidesProvider_viewController] = v1;
    v38.receiver = v35;
    v38.super_class = v34;
    v36 = v1;
    v37 = objc_msgSendSuper2(&v38, "init");
    [v0 setLayoutGuidesProvider:{v37, v38.receiver, v38.super_class}];

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_100160F08(void *a1, char a2, double a3)
{
  v7 = [v3 layoutGuidesProvider];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v57 = [v7 middleShelfLayoutGuide];

  v9 = [a1 superview];
  if (v9)
  {

    [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = sub_100245C4C();
    if (!v10 || (v11 = v10, v12 = [v10 topAnchor], v11, !v12))
    {
      v12 = [v57 bottomAnchor];
    }

    v13 = objc_opt_self();
    v14 = sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
    if (a2)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1002FB370;
      v16 = [a1 topAnchor];
      v17 = [v57 topAnchor];
      v18 = [v16 constraintGreaterThanOrEqualToAnchor:v17];

      v19 = sub_1000072A4();
      v20 = [v57 v17[260]];
      v21 = sub_100006C44();

      v22 = sub_10000A394();
      v23 = [v57 v20[135]];
      v24 = sub_100006C44();

      *(v15 + 48) = v24;
      v25 = [a1 heightAnchor];
      v26 = [objc_opt_self() mainScreen];
      [v26 bounds];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;

      v59.origin.x = v28;
      v59.origin.y = v30;
      v59.size.width = v32;
      v59.size.height = v34;
      v35 = [v25 constraintGreaterThanOrEqualToConstant:CGRectGetHeight(v59) * 0.4];

      *(v15 + 56) = v35;
      v36 = (v15 + 64);
    }

    else
    {
      v37 = sub_100008580(v14);
      *(v37 + 16) = xmmword_1002FB360;
      v38 = [a1 topAnchor];
      v39 = [v57 topAnchor];
      v40 = sub_100006C44();

      v41 = sub_1000072A4();
      v42 = [v57 v39[260]];
      v43 = sub_100006C44();

      v44 = sub_10000A394();
      v45 = [v57 v42[135]];
      v46 = sub_100006C44();

      *(v37 + 48) = v46;
      v36 = (v37 + 56);
    }

    v47 = [a1 bottomAnchor];
    v48 = [v47 constraintEqualToAnchor:v12 constant:a3];

    *v36 = v48;
    sub_100162160();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v13 activateConstraints:isa];

    [a1 setAlpha:0.0];
    [v3 setMiddleContentView:a1];
    v50 = [v3 layoutGuidesProvider];
    if (v50)
    {
      v51 = v50;
      v52 = swift_allocObject();
      *(v52 + 16) = a1;
      aBlock[4] = sub_1001621A4;
      aBlock[5] = v52;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002E570;
      aBlock[3] = &unk_10035B598;
      v53 = _Block_copy(aBlock);
      v54 = a1;

      [v51 updateMiddleShelfStateWithIsOpen:1 contentView:v54 animation:v53 completion:0];

      _Block_release(v53);
LABEL_11:
      sub_1000070AC();
      return;
    }
  }

  sub_1000070AC();
}

void sub_1001614FC()
{
  if ([v0 isViewLoaded])
  {
    v1 = [v0 layoutGuidesProvider];
    if (v1)
    {
      v2 = v1;
      v20 = [v1 monogramPosterLayoutGuide];

      v3 = [v0 defaultNoPosterAvatarView];
      if (v3)
      {
        v4 = v3;
        v5 = objc_opt_self();
        v6 = sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
        v7 = sub_100008580(v6);
        *(v7 + 16) = xmmword_1002FB360;
        v8 = [v4 centerXAnchor];
        v9 = [v20 centerXAnchor];
        v10 = sub_10000C2D8();

        *(v7 + 32) = v10;
        v11 = [v4 centerYAnchor];
        v12 = sub_1000075C8([v20 centerYAnchor]);

        *(v7 + 40) = v12;
        v13 = [v4 widthAnchor];
        v14 = [v20 widthAnchor];
        v15 = [v13 constraintEqualToAnchor:v14 multiplier:0.8];

        *(v7 + 48) = v15;
        v16 = [v4 heightAnchor];
        v17 = [v20 heightAnchor];
        v18 = [v16 constraintEqualToAnchor:v17 multiplier:0.8];

        sub_100008BD4();
        sub_1000068D4();
        sub_100007EF8();
        [v5 activateConstraints:v16];

        v19 = v16;
      }

      else
      {
        v19 = v20;
      }
    }
  }
}

void sub_100161800(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000301B0();
  v21 = [v20 layoutGuidesProvider];
  if (v21)
  {
    v22 = v21;
    v40 = [v21 middleShelfLayoutGuide];

    v23 = sub_100245C4C();
    if (v23)
    {
      v24 = v23;
      v25 = objc_opt_self();
      v26 = sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
      v27 = sub_100008580(v26);
      *(v27 + 16) = xmmword_1002FB360;
      v28 = v24;
      v29 = [v28 topAnchor];
      v30 = [v40 topAnchor];
      v31 = [v29 constraintGreaterThanOrEqualToAnchor:v30];

      *(v27 + 32) = v31;
      v32 = [v28 bottomAnchor];
      v33 = [v40 bottomAnchor];
      v34 = sub_10000C2D8();

      *(v27 + 40) = v34;
      v35 = [v28 leadingAnchor];
      v36 = sub_1000075C8([v40 leadingAnchor]);

      *(v27 + 48) = v36;
      v37 = [v28 trailingAnchor];

      sub_1000075C8([v40 trailingAnchor]);
      sub_100008BD4();
      sub_1000068D4();
      sub_100007EF8();
      [v25 activateConstraints:v37];
    }

    sub_100007EE0();
  }

  else
  {
    sub_100007EE0();
  }
}

void sub_100161AA0()
{
  sub_1000301B0();
  v2 = v1;
  v3 = [v0 layoutGuidesProvider];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 bottomShelfLayoutGuide];

    v6 = objc_opt_self();
    sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1002F96C0;
    v8 = [v2 centerXAnchor];
    v9 = [v5 centerXAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];

    *(v7 + 32) = v10;
    v11 = [v2 widthAnchor];
    v12 = [v11 constraintEqualToConstant:320.0];

    *(v7 + 40) = v12;
    sub_100162160();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 activateConstraints:isa];

    sub_100007EE0();
  }

  else
  {
    sub_100007EE0();
  }
}

void sub_100161CB8()
{
  sub_1000301B0();
  v2 = v1;
  v3 = [v0 layoutGuidesProvider];
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_self();
    sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1002F96C0;
    v7 = [v2 centerXAnchor];
    v8 = [v4 bottomShelfLayoutGuide];
    v9 = [v8 centerXAnchor];

    v10 = [v7 constraintEqualToAnchor:v9];
    *(v6 + 32) = v10;
    v11 = [v2 widthAnchor];
    v12 = [v11 constraintEqualToConstant:340.0];

    *(v6 + 40) = v12;
    sub_100162160();
    isa = sub_1000068D4().super.isa;

    [v5 activateConstraints:isa];

    sub_100007EE0();
  }

  else
  {
    sub_100007EE0();
  }
}

void sub_100161EC8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000301B0();
  v21 = [v20 layoutGuidesProvider];
  if (v21)
  {
    v22 = v21;
    v38 = [v21 bottomShelfLayoutGuide];

    v23 = [v20 bottomShelfContainer];
    if (v23)
    {
      v24 = v23;
      v25 = objc_opt_self();
      v26 = sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
      v27 = sub_100008580(v26);
      *(v27 + 16) = xmmword_1002FB360;
      v28 = [v24 topAnchor];
      v29 = [v38 topAnchor];
      v30 = sub_10000C2D8();

      *(v27 + 32) = v30;
      v31 = [v24 leadingAnchor];
      v32 = sub_1000075C8([v38 leadingAnchor]);

      *(v27 + 40) = v32;
      v33 = [v24 trailingAnchor];
      v34 = sub_1000075C8([v38 trailingAnchor]);

      *(v27 + 48) = v34;
      v35 = [v24 bottomAnchor];
      sub_1000075C8([v38 bottomAnchor]);

      sub_100008BD4();
      sub_1000068D4();
      sub_100007EF8();
      [v25 activateConstraints:v35];
    }

    sub_100007EE0();
  }

  else
  {
    sub_100007EE0();
  }
}

unint64_t sub_100162160()
{
  result = qword_1003AAF70;
  if (!qword_1003AAF70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AAF70);
  }

  return result;
}

void sub_1001621BC()
{
  sub_100005D28();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  sub_100005568(v10);
  sub_100005BE0();
  __chkstk_darwin(v11);
  sub_100007F10(v12, v21);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_100006AC0(v0, 1, v13);

  if (v14 == 1)
  {
    v15 = sub_100006AE8(v0);
  }

  else
  {
    v14 = TaskPriority.rawValue.getter();
    v15 = (*(*(v13 - 8) + 8))(v0, v13);
  }

  sub_100025E80(v15, v16);

  if (v1)
  {
    ObjectType = swift_getObjectType();
    sub_1000083C4(ObjectType);
    sub_1000361AC();
    if (v9)
    {
LABEL_6:
      sub_100007B40();
      sub_100008D10();
      sub_100006BE8();
      v18 = swift_allocObject();
      *(v18 + 16) = v5;
      *(v18 + 24) = v3;

      if (v14 | v0)
      {
        sub_1000070D4();
      }

      else
      {
        v19 = 0;
      }

      sub_100008598(v19);
      swift_task_create();

      sub_100006AE8(v7);

      goto LABEL_14;
    }
  }

  else
  {
    sub_100030350();
    if (v9)
    {
      goto LABEL_6;
    }
  }

  sub_100006AE8(v7);
  sub_100006BE8();
  v20 = swift_allocObject();
  *(v20 + 16) = v5;
  *(v20 + 24) = v3;
  if (v14 | v0)
  {
    sub_100026ED0();
  }

  swift_task_create();
LABEL_14:
  sub_100014214();
  sub_100007B28();
}

void sub_1001623E4()
{
  sub_100005D28();
  sub_100006C78();
  v5 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  sub_100005568(v5);
  sub_100005BE0();
  __chkstk_darwin(v6);
  sub_100007F10(v7, v21);
  v8 = type metadata accessor for TaskPriority();
  sub_1000094F4(v8);
  if (v3 == 1)
  {
    v9 = sub_100006AE8(v0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_1000068EC();
    v11 = sub_1000088C8();
    v12(v11);
    sub_10000C128();
  }

  sub_100025E80(v9, v10);

  if (!v4)
  {
    sub_100030350();
    if (v1)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_100006AE8(v2);
    sub_100006BE8();
    v16 = swift_allocObject();
    sub_100012AF0(v16);
    sub_10014EA98(&qword_1003AAE20, &qword_1002FB4E0);
    sub_100008DF4();
    if (v19)
    {
      sub_100026ED0();
    }

    else
    {
      v20 = 0;
    }

    sub_100164084(v17, v20, v18, &unk_1002FB4D8);
    goto LABEL_14;
  }

  ObjectType = swift_getObjectType();
  sub_1000083C4(ObjectType);
  sub_1000361AC();
  if (!v1)
  {
    goto LABEL_10;
  }

LABEL_6:
  sub_100007B40();
  sub_100008D10();
  sub_100006BE8();
  v14 = swift_allocObject();
  sub_10000FF84(v14);

  sub_10014EA98(&qword_1003AAE20, &qword_1002FB4E0);
  sub_100008DF4();
  if (v15)
  {
    sub_1000070D4();
  }

  sub_100008598(v15);
  sub_100008BEC();
  swift_task_create();

  sub_100006AE8(v2);

LABEL_14:
  sub_100014214();
  sub_100007B28();
}

void sub_1001625C0()
{
  sub_100005D28();
  sub_100006C78();
  v5 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  sub_100005568(v5);
  sub_100005BE0();
  __chkstk_darwin(v6);
  sub_100007F10(v7, v21);
  v8 = type metadata accessor for TaskPriority();
  sub_1000094F4(v8);
  if (v3 == 1)
  {
    v9 = sub_100006AE8(v0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_1000068EC();
    v11 = sub_1000088C8();
    v12(v11);
    sub_10000C128();
  }

  sub_100025E80(v9, v10);

  if (v4)
  {
    ObjectType = swift_getObjectType();
    sub_1000083C4(ObjectType);
    sub_1000361AC();
    if (v1)
    {
LABEL_6:
      sub_100007B40();
      sub_100008D10();
      sub_100006BE8();
      v14 = swift_allocObject();
      sub_10000FF84(v14);
      type metadata accessor for AnyCancellable();

      if (v3 | v0)
      {
        sub_1000070D4();
      }

      else
      {
        v15 = 0;
      }

      sub_100008598(v15);
      sub_100008BEC();
      swift_task_create();

      sub_100006AE8(v2);

      goto LABEL_15;
    }
  }

  else
  {
    sub_100030350();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_100006AE8(v2);
  sub_100006BE8();
  v16 = swift_allocObject();
  sub_100012AF0(v16);
  type metadata accessor for AnyCancellable();
  sub_100008DF4();
  if (v19)
  {
    sub_100026ED0();
  }

  else
  {
    v20 = 0;
  }

  sub_100164084(v17, v20, v18, &unk_1002FB4A0);
LABEL_15:
  sub_100014214();
  sub_100007B28();
}

void sub_100162798()
{
  sub_100005D28();
  sub_100006C78();
  v5 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  sub_100005568(v5);
  sub_100005BE0();
  __chkstk_darwin(v6);
  sub_100007F10(v7, v21);
  v8 = type metadata accessor for TaskPriority();
  sub_1000094F4(v8);
  if (v3 == 1)
  {
    v9 = sub_100006AE8(v0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_1000068EC();
    v11 = sub_1000088C8();
    v12(v11);
    sub_10000C128();
  }

  sub_100025E80(v9, v10);

  if (!v4)
  {
    sub_100030350();
    if (v1)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_100006AE8(v2);
    sub_100006BE8();
    v16 = swift_allocObject();
    sub_100012AF0(v16);
    sub_10014EA98(&qword_1003AAE18, &qword_1002FB4C0);
    sub_100008DF4();
    if (v19)
    {
      sub_100026ED0();
    }

    else
    {
      v20 = 0;
    }

    sub_100164084(v17, v20, v18, &unk_1002FB4B8);
    goto LABEL_14;
  }

  ObjectType = swift_getObjectType();
  sub_1000083C4(ObjectType);
  sub_1000361AC();
  if (!v1)
  {
    goto LABEL_10;
  }

LABEL_6:
  sub_100007B40();
  sub_100008D10();
  sub_100006BE8();
  v14 = swift_allocObject();
  sub_10000FF84(v14);

  sub_10014EA98(&qword_1003AAE18, &qword_1002FB4C0);
  sub_100008DF4();
  if (v15)
  {
    sub_1000070D4();
  }

  sub_100008598(v15);
  sub_100008BEC();
  swift_task_create();

  sub_100006AE8(v2);

LABEL_14:
  sub_100014214();
  sub_100007B28();
}

void sub_100162974()
{
  sub_100005D28();
  sub_100006C78();
  v5 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  sub_100005568(v5);
  sub_100005BE0();
  __chkstk_darwin(v6);
  sub_100007F10(v7, v21);
  v8 = type metadata accessor for TaskPriority();
  sub_1000094F4(v8);
  if (v3 == 1)
  {
    v9 = sub_100006AE8(v0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_1000068EC();
    v11 = sub_1000088C8();
    v12(v11);
    sub_10000C128();
  }

  sub_100025E80(v9, v10);

  if (v4)
  {
    ObjectType = swift_getObjectType();
    sub_1000083C4(ObjectType);
    sub_1000361AC();
    if (v1)
    {
LABEL_6:
      sub_100007B40();
      sub_100008D10();
      sub_100006BE8();
      v14 = swift_allocObject();
      sub_10000FF84(v14);
      type metadata accessor for CachedVoicemailManager.Cache();

      if (v3 | v0)
      {
        sub_1000070D4();
      }

      else
      {
        v15 = 0;
      }

      sub_100008598(v15);
      sub_100008BEC();
      swift_task_create();

      sub_100006AE8(v2);

      goto LABEL_15;
    }
  }

  else
  {
    sub_100030350();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_100006AE8(v2);
  sub_100006BE8();
  v16 = swift_allocObject();
  sub_100012AF0(v16);
  type metadata accessor for CachedVoicemailManager.Cache();
  sub_100008DF4();
  if (v19)
  {
    sub_100026ED0();
  }

  else
  {
    v20 = 0;
  }

  sub_100164084(v17, v20, v18, &unk_1002FB488);
LABEL_15:
  sub_100014214();
  sub_100007B28();
}

uint64_t MessageControlService.selectionsPublisher.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

void *sub_100162C14(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void MessageControlService.presentingViewController.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*MessageControlService.presentingViewController.modify(void *a1))(id **a1, char a2)
{
  v3 = sub_100162C14(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_100162D44;
}

void sub_100162D44(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id sub_100162DC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2[7];
  v5 = v4;
  if (v4 != 1)
  {
    goto LABEL_7;
  }

  sub_1000087D0((v3 + 5), a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v7 = v3[3];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_10000B594();
    v10 = v3[6];
    v11 = v7;
    swift_unknownObjectRetain();
    v5 = sub_100162E98(v11, v9, v10);
LABEL_6:
    v12 = v3[7];
    v3[7] = v5;
    v13 = v5;
    sub_1001638E4(v12);
LABEL_7:
    sub_100164030(v4);
    return v5;
  }

  __break(1u);
  return result;
}

id sub_100162E98(void *a1, void *a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIncomingCall:a1 customMessagePresentingViewController:a2 declineCallService:a3];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t MessageControlService.__allocating_init(call:callCenter:)(uint64_t a1, uint64_t a2)
{
  v2 = swift_allocObject();
  MessageControlService.init(call:callCenter:)();
  return v2;
}

void MessageControlService.init(call:callCenter:)()
{
  sub_100005D28();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_10014EA98(&qword_1003AACE8, &qword_1002FB3C0);
  sub_100005568(v6);
  sub_100005BE0();
  __chkstk_darwin(v7);
  swift_unknownObjectWeakInit();
  v1[7] = 1;
  v1[3] = v5;
  v1[4] = v3;
  v8 = objc_allocWithZone(type metadata accessor for DeclineCallServiceFactory());
  v9 = v5;
  v10 = v3;

  type metadata accessor for DeclineCallService();
  swift_allocObject();
  v11 = v10;
  v1[6] = sub_1002025F4(v11);
  sub_10014EA98(&qword_1003AACF0, &qword_1002FB3C8);
  type metadata accessor for ControlSelection();
  *(swift_allocObject() + 16) = xmmword_1002FB3B0;
  type metadata accessor for SystemImage();
  sub_100164064();
  ControlSelection.init(uniqueIdentifier:label:systemImage:)();
  static SystemImage.walk.getter();
  sub_100164044();
  ControlSelection.init(uniqueIdentifier:label:systemImage:)();
  static SystemImage.clock.getter();
  sub_100164044();
  ControlSelection.init(uniqueIdentifier:label:systemImage:)();
  sub_100164064();
  ControlSelection.init(uniqueIdentifier:label:systemImage:)();
  sub_10014EA98(&qword_1003AACF8, &unk_1002FB3D0);
  swift_allocObject();
  v12 = CurrentValueSubject.init(_:)();

  v1[2] = v12;
  sub_100007B28();
}

void MessageControlService.requestSendMessage(for:)()
{
  v1 = v0;
  v2 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  sub_100005568(v2);
  sub_100005BE0();
  v4 = __chkstk_darwin(v3);
  v6 = &v17 - v5;
  v8 = sub_100162DC0(v4, v7);
  if (v8)
  {
    v18 = v8;
    if (ControlSelection.uniqueIdentifier.getter() == 0x6D6F74737543 && v9 == 0xE600000000000000)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        ControlSelection.label.getter();
        v12 = String._bridgeToObjectiveC()();

        [v18 sendDeclineWithMessageResponse:v12];

        v13 = type metadata accessor for TaskPriority();
        sub_100006848(v6, 1, 1, v13);
        type metadata accessor for MainActor();

        v14 = static MainActor.shared.getter();
        v15 = swift_allocObject();
        v15[2] = v14;
        v15[3] = &protocol witness table for MainActor;
        v15[4] = v1;
        sub_1001621BC();

        return;
      }
    }

    [v18 showCustomReplyWithMessageComposer];
    v16 = v18;
  }
}

uint64_t sub_100163414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  type metadata accessor for MainActor();
  v4[19] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[20] = v6;
  v4[21] = v5;

  return _swift_task_switch(sub_1001634AC, v6, v5);
}

uint64_t sub_1001634AC()
{
  v1 = v0[18];
  v2 = *(v1 + 48);
  v3 = *(v1 + 24);
  v4 = String._bridgeToObjectiveC()();
  v0[22] = v4;
  v0[2] = v0;
  v0[3] = sub_100163600;
  v5 = swift_continuation_init();
  v0[17] = sub_10014EA98(&qword_1003AAE28, &qword_1002FCE00);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001ADEBC;
  v0[13] = &unk_10035B818;
  v0[14] = v5;
  [v2 declineAnsweringWithCall:v3 anayticsSourceForDismissal:v4 reason:4 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100163600()
{
  sub_100006610();
  sub_1000058C4();
  sub_1000058F8();
  *v1 = v0;
  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return _swift_task_switch(sub_1001636F8, v4, v3);
}

uint64_t sub_1001636F8()
{
  sub_100006610();
  v1 = *(v0 + 176);

  sub_10000535C();

  return v2();
}

id *MessageControlService.deinit()
{

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectRelease();
  sub_1001638E4(v0[7]);
  return v0;
}

uint64_t MessageControlService.__deallocating_deinit()
{
  MessageControlService.deinit();

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_10016383C()
{
  sub_1000058A8();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_100005B88(v6);
  *v7 = v8;
  v7[1] = sub_100008208;

  return sub_100163414(v2, v3, v4, v5);
}

void sub_1001638E4(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_100163918(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100163988(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_100163A7C;

  return v5(v2 + 16);
}

uint64_t sub_100163A7C()
{
  sub_100006610();
  sub_1000058C4();
  v2 = v1;
  sub_1000058F8();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v0;
  sub_100006870();
  *v7 = v6;

  *v5 = *(v2 + 16);
  sub_10000535C();

  return v8();
}

uint64_t sub_100163B74(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_100164040;

  return v5(v2 + 16);
}

uint64_t sub_100163C68(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_100163D5C;

  return v5(v2 + 16);
}

uint64_t sub_100163D5C()
{
  sub_1000058A8();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  sub_100006870();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_100163E80()
{
  sub_1000058A8();
  sub_1000301C8();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v3 = sub_1000075E8(v1);

  return v4(v3);
}

uint64_t sub_100163F10()
{
  sub_1000058A8();
  sub_1000301C8();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v3 = sub_1000075E8(v1);

  return v4(v3);
}

uint64_t sub_100163FA0()
{
  sub_1000058A8();
  sub_1000301C8();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v3 = sub_1000075E8(v1);

  return v4(v3);
}

id sub_100164030(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100164044()
{

  return sub_100006848(v0, 0, 1, v1);
}

uint64_t sub_100164064()
{

  return sub_100006848(v0, 1, 1, v1);
}

uint64_t sub_100164084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_task_create();
}

void sub_10016409C(uint64_t a1)
{
  v1 = a1;
  v37 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v44 = _swiftEmptyArrayStorage;
    sub_10021D75C(0, v2 & ~(v2 >> 63), 0);
    v39 = _swiftEmptyArrayStorage;
    v41 = sub_1000082FC(v1);
    v42 = v3;
    v43 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v35 = v1 + 56;
      v34 = v1 + 64;
      v36 = v2;
      while (!__OFADD__(v5++, 1))
      {
        v7 = v41;
        v8 = v43;
        v38 = v42;
        v9 = v1;
        sub_1000082E8(v41, v42, v43, v1);
        v11 = v10;
        v12 = [v10 handle];
        v13 = [v12 value];

        if (!v13)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = String._bridgeToObjectiveC()();
        }

        v14 = sub_10023BEC4(v13);
        if (!v15)
        {
          goto LABEL_39;
        }

        v16 = v14;
        v17 = v15;

        v18 = v39;
        v44 = v39;
        v20 = v39[2];
        v19 = v39[3];
        if (v20 >= v19 >> 1)
        {
          sub_10021D75C((v19 > 1), v20 + 1, 1);
          v18 = v44;
        }

        v18[2] = v20 + 1;
        v21 = &v18[2 * v20];
        v21[4] = v16;
        v21[5] = v17;
        v39 = v18;
        if (v37)
        {
          if (!v8)
          {
            goto LABEL_40;
          }

          v1 = v9;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v26 = v36;
          sub_10014EA98(&unk_1003AAFD0, &qword_1002FB800);
          v27 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v27(v40, 0);
        }

        else
        {
          if (v8)
          {
            goto LABEL_41;
          }

          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_35;
          }

          v1 = v9;
          v22 = 1 << *(v9 + 32);
          if (v7 >= v22)
          {
            goto LABEL_35;
          }

          v23 = v7 >> 6;
          v24 = *(v35 + 8 * (v7 >> 6));
          if (((v24 >> v7) & 1) == 0)
          {
            goto LABEL_36;
          }

          if (*(v9 + 36) != v38)
          {
            goto LABEL_37;
          }

          v25 = v24 & (-2 << (v7 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v7 & 0x7FFFFFFFFFFFFFC0;
            v26 = v36;
          }

          else
          {
            v28 = v23 << 6;
            v29 = v23 + 1;
            v30 = (v34 + 8 * v23);
            v26 = v36;
            while (v29 < (v22 + 63) >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                sub_100005884(v7, v38, 0);
                v22 = __clz(__rbit64(v31)) + v28;
                goto LABEL_30;
              }
            }

            sub_100005884(v7, v38, 0);
          }

LABEL_30:
          v33 = *(v9 + 36);
          v41 = v22;
          v42 = v33;
          v43 = 0;
        }

        if (v5 == v26)
        {
          sub_100005884(v41, v42, v43);
          return;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void *sub_100164430()
{
  v1 = *(v0 + OBJC_IVAR___ICSPosterConfigurationWrapper_configuration);
  v2 = v1;
  return v1;
}

void *sub_100164494()
{
  v1 = *(v0 + OBJC_IVAR___ICSPosterConfigurationWrapper_titleStyleAttributes);
  v2 = v1;
  return v1;
}

uint64_t sub_100164520(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___ICSPosterConfigurationWrapper_titleStyleAttributes);
  *(v1 + OBJC_IVAR___ICSPosterConfigurationWrapper_titleStyleAttributes) = a1;
  return _objc_release_x1(a1, v2);
}

id DetailsCoordinatorCreationResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1001646A4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001646DC()
{
  v1 = [v0 remoteMembers];
  sub_1000087EC();
  sub_1000064BC(v2, v3, v4);
  sub_1000085A8();
  sub_1000087EC();
  sub_10003012C(v5, v6, v7, v8);
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10016409C(v9);
  v11 = v10;

  return sub_1000055F4(v11);
}

void PHAudioCallViewController.presentWaitOnHoldEndForAnotherCallAlert(callerName:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 delegate];

  if (v7)
  {
    objc_opt_self();
    sub_10000FF90();
    if (swift_dynamicCastObjCClass() && (v8 = ICSApplicationDelegate.bannerPresentationManager.getter(), v9 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter(), v8, v9))
    {
      v10 = String._bridgeToObjectiveC()();
      v14[4] = a3;
      v14[5] = a4;
      sub_100006C90();
      v14[1] = 1107296256;
      v14[2] = sub_100164920;
      v14[3] = &unk_10035B840;
      v11 = _Block_copy(v14);

      v12 = sub_100005DE8();
      [v12 v13];
      _Block_release(v11);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100164920(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

BOOL sub_100164A2C()
{
  type metadata accessor for PhoneLockStateObserver();
  v0 = static PhoneLockStateObserver.shared.getter();
  v1 = PhoneLockStateObserver.fetchLockState()();

  return v1;
}

uint64_t PHAudioCallViewController.makeLockObserver(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for PhoneLockStateObserver();
  v6 = static PhoneLockStateObserver.shared.getter();
  sub_100006BE8();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  v8 = PhoneLockStateObserver.listen(wantsCurrentValue:with:)();

  result = type metadata accessor for AnyCancellable();
  a3[3] = result;
  *a3 = v8;
  return result;
}

void sub_100164C38()
{
  v1 = v0;
  v2 = [v0 features];
  v3 = [v2 isNameAndPhotoC3Enabled];

  if (v3)
  {
    type metadata accessor for NameAndPhotoUtilities();
    v4 = static NameAndPhotoUtilities.shared.getter();
    sub_10003012C(&qword_1003AAFB8, &qword_1003AAEF8, off_1003531E0, &protocol conformance descriptor for PHAudioCallViewController);
    swift_unknownObjectRetain();
    NameAndPhotoUtilities.delegate.setter();

    swift_unknownObjectWeakInit();
    sub_100165444(v1, v5);
    swift_unknownObjectWeakDestroy();
  }
}

void sub_100164D18()
{
  sub_100005D28();
  v1 = v0;
  v78 = v2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000688C();
  v85 = v4;
  __chkstk_darwin(v5);
  sub_100005BD0();
  v84 = v7 - v6;
  sub_100008A4C();
  v8 = type metadata accessor for DispatchQoS();
  sub_10000688C();
  v83 = v9;
  __chkstk_darwin(v10);
  sub_100005BD0();
  v82 = v12 - v11;
  sub_100008A4C();
  type metadata accessor for ConversationControlsType();
  sub_10000688C();
  v76 = v14;
  v77 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  v75 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008A4C();
  type metadata accessor for DispatchTime();
  sub_10000688C();
  v80 = v18;
  v81 = v17;
  v19 = __chkstk_darwin(v17);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v79 = &v69 - v22;
  sub_100008A4C();
  v23 = type metadata accessor for UUID();
  sub_10000688C();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_100005BD0();
  v29 = v28 - v27;
  v30 = v1;
  v31 = [v1 callCenter];
  v32 = [v31 callsWithStatus:1];

  sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_10000CF28(v33))
  {
    v74 = v3;
    v34 = sub_100005D40();
    sub_100017238(v34, v35, v33);
    v72 = v16;
    v73 = v8;
    if ((v33 & 0xC000000000000001) != 0)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v36 = *(v33 + 32);
    }

    v37 = v36;
    v38 = v30;

    v39 = [v30 callUUIDsThatPresentedSNaPHUD];
    v40 = v37;
    v41 = [v37 uniqueProxyIdentifierUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    v43 = *(v25 + 8);
    v43(v29, v23);
    v44 = [v39 containsObject:isa];

    if (v44)
    {
      if (qword_1003A9F48 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_1000058D0(v45, &unk_1003B8838);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = sub_100005924();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "We have already present SNaPHUD once. So dismiss this time.", v48, 2u);
        sub_100005BB8(v48);
      }
    }

    else
    {
      v50 = [v38 callUUIDsThatPresentedSNaPHUD];
      v71 = v40;
      v51 = [v40 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v52 = UUID._bridgeToObjectiveC()().super.isa;
      v43(v29, v23);
      [v50 addObject:v52];

      sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
      v70 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      type metadata accessor for NameAndPhotoUtilities();
      static NameAndPhotoUtilities.secondsDelayBeforeShowingNameAndPhotoBanner.getter();
      + infix(_:_:)();
      v80 = *(v80 + 8);
      (v80)(v21, v81);
      v54 = v75;
      v53 = v76;
      v55 = v77;
      (*(v76 + 16))(v75, v78, v77);
      v56 = (*(v53 + 80) + 16) & ~*(v53 + 80);
      v57 = (v72 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
      v58 = swift_allocObject();
      (*(v53 + 32))(v58 + v56, v54, v55);
      *(v58 + v57) = v38;
      v86[4] = sub_10016D30C;
      v86[5] = v58;
      sub_10000A3B4();
      v86[1] = 1107296256;
      sub_1000070E4();
      v86[2] = v59;
      v86[3] = &unk_10035BBD0;
      v60 = _Block_copy(v86);
      v61 = v38;

      v62 = v82;
      static DispatchQoS.unspecified.getter();
      v86[0] = _swiftEmptyArrayStorage;
      sub_100025A38();
      sub_10002D8E4(v63, v64, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10014EA98(&unk_1003AAAC0, &unk_1002FB790);
      sub_100032638();
      v65 = v84;
      v66 = v74;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v67 = v70;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v60);

      (*(v85 + 8))(v65, v66);
      (*(v83 + 8))(v62, v73);
      v68 = sub_10016D3E0();
      (v80)(v68);
    }

    sub_100007B28();
  }

  else
  {
    sub_100007B28();
  }
}

void sub_100165444(void *a1, uint64_t a2)
{
  v3 = sub_10014EA98(&unk_1003AAE40, &qword_1002FB520);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for ConversationControlsType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 callCenter];
  v11 = [v10 callsWithStatus:1];

  sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_10000CF28(v12))
  {
    sub_100017238(0, (v12 & 0xC000000000000001) == 0, v12);
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v13 = *(v12 + 32);
    }

    v14 = v13;

    type metadata accessor for NameAndPhotoUtilities();
    v15 = static NameAndPhotoUtilities.shared.getter();
    sub_10003012C(&qword_1003AAE60, &qword_1003ADBE0, TUCall_ptr, &protocol conformance descriptor for TUCall);
    v16 = v14;
    NameAndPhotoUtilities.suggestedBannerType(for:)();

    if (sub_100006AC0(v5, 1, v6) == 1)
    {

      sub_10000830C(v5, &unk_1003AAE40, &qword_1002FB520);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      if ([v16 status] == 1)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v18 = Strong;
          sub_100164D18();

          v16 = v18;
        }

        (*(v7 + 8))(v9, v6);
      }

      else
      {
        (*(v7 + 8))(v9, v6);
      }
    }
  }

  else
  {
  }
}

void sub_100165888()
{
  sub_100005D28();
  v2 = v1;
  v4 = v3;
  sub_100007DB8();
  type metadata accessor for Features();
  v5 = static Features.shared.getter();
  v6 = Features.isMoreMenuEnabled.getter();

  if (v6)
  {
    v7 = [v2 frontmostCall];
    if (v7)
    {
      v8 = v7;
      v9 = direct field offset for CNKBannerPresentationManager.value;
      sub_100008D1C();
      swift_beginAccess();
      v10 = *(v0 + v9);
      v11 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter();

      if (v11)
      {
        sub_10000B428(&qword_1003AAF88, &qword_1003AAEF8, off_1003531E0);
        v12 = v11;
        v13 = v2;
        dispatch thunk of ConversationControlsManager.systemAudioConversationControlsDelegate.setter();
      }

      type metadata accessor for CallCenterFacade();
      static CallCenterFacade.shared.getter();
      v14 = [v8 uniqueProxyIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10016D3E0();
      v15 = CallCenterFacade.call(with:)();

      if (v15)
      {

        static CallCenterFacade.shared.getter();
        sub_100007DB8();
        v16 = type metadata accessor for FTMenuItemStateProvider();
        sub_10016D3F8(v16);
        v53 = FTMenuItemStateProvider.init(call:callCenter:)();
        type metadata accessor for FTMenuItemRegistry();
        v17 = static FTMenuItemRegistry.shared.getter();
        v18 = [v8 uniqueProxyIdentifier];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100165D3C(v76);
        v75 = 0;
        v73 = 0u;
        v74 = 0u;
        v72 = 0;
        v70 = 0u;
        v71 = 0u;
        v69 = 0;
        v67 = 0u;
        v68 = 0u;
        v66 = 0;
        v64 = 0u;
        v65 = 0u;
        v63 = 0;
        v61 = 0u;
        v62 = 0u;
        v60 = 0;
        v58 = 0u;
        v59 = 0u;
        v57 = 0;
        v55 = 0u;
        v56 = 0u;
        sub_100165DF8(v54);
        sub_100165E6C();
        FTMenuItemRegistry.register(with:punchOutProvider:callRecording:deskView:routes:liveCaptions:liveTranslation:screenShare:sharePlay:splitCalls:conferenceParticipants:)();

        sub_1000361C8();
        sub_10000830C(v19, v20, v21);
        sub_1000361C8();
        sub_10000830C(v22, v23, v24);
        sub_1000361C8();
        sub_10000830C(v25, v26, v27);
        sub_1000361C8();
        sub_10000830C(v28, v29, v30);
        sub_1000361C8();
        sub_10000830C(v31, v32, v33);
        sub_1000361C8();
        sub_10000830C(v34, v35, v36);
        sub_1000361C8();
        sub_10000830C(v37, v38, v39);
        sub_1000361C8();
        sub_10000830C(v40, v41, v42);
        sub_1000361C8();
        sub_10000830C(v43, v44, v45);
        if (v11)
        {
          v76[3] = v16;
          v76[4] = &protocol witness table for FTMenuItemStateProvider;
          v76[0] = v53;
          sub_100007608();
          v46 = swift_allocObject();
          sub_1000067F8(v46);
          sub_100007608();
          v47 = swift_allocObject();
          sub_1000067F8(v47);
          sub_100006BE8();
          v48 = swift_allocObject();
          *(v48 + 16) = v47;
          *(v48 + 24) = v4;
          sub_100007608();
          v49 = swift_allocObject();
          sub_1000067F8(v49);
          sub_100007608();
          v50 = swift_allocObject();
          sub_1000067F8(v50);
          v51 = v4;

          v52 = v11;

          ConversationControlsManager.presentMoreMenu(isBannerView:source:arrowDirection:provider:alongsideTransition:presentContactCard:presentAddParticipantSheet:startCallRecording:stopCallRecording:)();

          sub_10000830C(v76, &qword_1003AAFB0, &qword_1002FEA80);
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  sub_100007B28();
}

uint64_t sub_100165D3C@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 frontmostCall];
  *(swift_allocObject() + 16) = v1;
  v4 = type metadata accessor for AudioCallPunchOutMoreMenuViewModel();
  swift_allocObject();
  v5 = v1;
  result = AudioCallPunchOutMoreMenuViewModel.init(call:action:)();
  a1[3] = v4;
  a1[4] = &protocol witness table for AudioCallPunchOutMoreMenuViewModel;
  *a1 = result;
  return result;
}

uint64_t sub_100165DF8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CallCenterFacade();
  static CallCenterFacade.shared.getter();
  v2 = type metadata accessor for AudioCallSplitCallMoreMenuViewModel();
  swift_allocObject();
  result = AudioCallSplitCallMoreMenuViewModel.init(callCenter:)();
  a1[3] = v2;
  a1[4] = &protocol witness table for AudioCallSplitCallMoreMenuViewModel;
  *a1 = result;
  return result;
}

void *sub_100165E6C()
{
  v1 = [v0 callCenter];
  v2 = [v1 conferenceParticipantCalls];

  sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = sub_10000CF28(v3);
  v5 = result;
  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v5 == v6)
    {

      return v7;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      result = *(v3 + 8 * v6 + 32);
    }

    v8 = result;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    type metadata accessor for CallCenterFacade();
    v9 = v8;
    static CallCenterFacade.shared.getter();
    v10 = type metadata accessor for AudioCallConferenceParticipantMoreMenuViewModel();
    swift_allocObject();
    v11 = AudioCallConferenceParticipantMoreMenuViewModel.init(call:callCenter:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10023F628();
      v7 = v13;
    }

    v12 = v7[2];
    if (v12 >= v7[3] >> 1)
    {
      sub_10023F628();
      v7 = v14;
    }

    v16 = v10;
    v17 = &protocol witness table for AudioCallConferenceParticipantMoreMenuViewModel;
    *&v15 = v11;
    v7[2] = v12 + 1;
    result = sub_1000304E0(&v15, &v7[5 * v12 + 4]);
    ++v6;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_100166064(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong frontmostCall];

    if (v3)
    {
      v4 = [v3 provider];
      v5 = [v4 isTelephonyProvider];

      if (v5)
      {
        swift_beginAccess();
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          v7 = v6;
          [v6 presentContactCard];
        }

        goto LABEL_9;
      }
    }
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
    return;
  }

  v3 = v8;
  [v8 callDetailsViewButtonTapped];
LABEL_9:
}

void sub_10016617C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() sharedInstance];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 isIPadIdiom];

  if (v5)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v7 = Strong;
    [Strong presentFullScreenPeoplePicker];
  }

  else
  {
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (!v8)
    {
      return;
    }

    v7 = v8;
    [v8 audioCallControlsViewControllerRequestedAddCallPresentation:0 forView:a2];
  }
}

void sub_100166254(uint64_t a1, SEL *a2)
{
  sub_100008D1C();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong *a2];
  }
}

id sub_100166390()
{
  v1 = [objc_allocWithZone(UIVisualEffectView) init];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setFrame:{v5, v7, v9, v11}];
    static CallsColorMatrix.background.getter();
    v12 = static ColorMatrixConvertion.colorEffect(_:)();
    v13 = [objc_opt_self() effectWithBlurRadius:100.0];
    sub_10014EA98(&qword_1003AAF98, &qword_1002FB7E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002FB510;
    *(inited + 32) = v13;
    *(inited + 40) = v12;
    v15 = v12;
    v16 = v13;
    for (i = 0; i != 2; ++i)
    {
      v18 = *(inited + 8 * i + 32);
      if (v18)
      {
        v19 = v18;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }

    swift_setDeallocating();
    sub_10014EA20();
    sub_1000064BC(0, &unk_1003AAFA0, UIVisualEffect_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setBackgroundEffects:isa];

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001665D4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000064BC(0, &qword_1003AAE50, TUHandle_ptr);
    sub_10003012C(&qword_1003AAE58, &qword_1003AAE50, TUHandle_ptr, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v2 = v23;
    v3 = v24;
    v4 = v25;
    v5 = v26;
    v6 = v27;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v22 = _swiftEmptyArrayStorage;
  while (v2 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000064BC(0, &qword_1003AAE50, TUHandle_ptr), swift_dynamicCast(), (v12 = v28) == 0))
    {
LABEL_26:
      sub_10016D304(v2);
      return;
    }

LABEL_17:
    v13 = [v12 value];
    if (!v13)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = String._bridgeToObjectiveC()();
    }

    v14 = TUCopyIDSCanonicalAddressForDestinationID();

    if (v14)
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10023F728();
        v22 = v19;
      }

      v17 = v22[2];
      if (v17 >= v22[3] >> 1)
      {
        sub_10023F728();
        v22 = v20;
      }

      v22[2] = v17 + 1;
      v18 = &v22[2 * v17];
      v18[4] = v15;
      v18[5] = v21;
    }

    else
    {
    }
  }

  v10 = v5;
  v11 = v6;
  if (v6)
  {
LABEL_13:
    v6 = (v11 - 1) & v11;
    v12 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v11 = *(v3 + 8 * v5);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1001668D0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000064BC(0, &qword_1003AAE50, TUHandle_ptr);
    sub_10003012C(&qword_1003AAE58, &qword_1003AAE50, TUHandle_ptr, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v2 = v24;
    v3 = v25;
    v4 = v26;
    v5 = v27;
    v6 = v28;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v22 = _swiftEmptyArrayStorage;
  v23 = v2;
LABEL_8:
  v10 = v5;
  v11 = v6;
  while (1)
  {
    if (v2 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_24;
      }

      sub_1000064BC(0, &qword_1003AAE50, TUHandle_ptr);
      swift_dynamicCast();
      v14 = v29;
      v5 = v10;
      v6 = v11;
      if (!v29)
      {
LABEL_25:
        v2 = v23;
LABEL_24:
        sub_10016D304(v2);
        return;
      }

      goto LABEL_18;
    }

    v12 = v10;
    v13 = v11;
    v5 = v10;
    if (!v11)
    {
      break;
    }

LABEL_14:
    v6 = (v13 - 1) & v13;
    v14 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_25;
    }

LABEL_18:
    v15 = sub_1001BE0EC(v14);
    v17 = v16;

    v10 = v5;
    v11 = v6;
    v2 = v23;
    if (v17)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10023F728();
        v22 = v20;
      }

      v18 = v22[2];
      if (v18 >= v22[3] >> 1)
      {
        sub_10023F728();
        v22 = v21;
      }

      v22[2] = v18 + 1;
      v19 = &v22[2 * v18];
      v19[4] = v15;
      v19[5] = v17;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v13 = *(v3 + 8 * v5);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_100166BC4(void *a1, double a2)
{
  sub_10014EA98(&qword_1003AAF90, &qword_1002FB7E0);
  if (swift_dynamicCastClass() && a2 > 0.0)
  {
    v4 = a1;
    v5 = LockStateViewController.contentViewController.getter();
    CallScreeningViewController.updateTextFieldPadding(_:)();
  }
}

void sub_100166CE0(uint64_t a1, objc_class *a2)
{
  v3 = v2;
  v6 = direct field offset for CNKBannerPresentationManager.value;
  sub_100008D1C();
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter();

  if (v8)
  {
    sub_10000B428(&qword_1003AAF88, &qword_1003AAEF8, off_1003531E0);
    v9 = v8;
    v10 = v3;
    dispatch thunk of ConversationControlsManager.systemAudioConversationControlsDelegate.setter();

    v11 = v9;
    v12.value.super.super.isa = a2;
    ConversationControlsManager.presentShareCard(source:)(v12);
  }
}

void sub_100166E24(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = type metadata accessor for ConversationControlsType();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  if (qword_1003A9F48 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008A14(v10, &unk_1003B8838);
  v34 = *(v4 + 16);
  v35 = v4 + 16;
  v34(v9, a1, v3);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v32 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v36 = v15;
    *v14 = 136315138;
    v16 = ConversationControlsType.debugDescription.getter();
    v31 = v7;
    v18 = v17;
    v19 = *(v4 + 8);
    v19(v9, v3);
    v20 = sub_100008ADC(v16, v18, &v36);
    v7 = v31;

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "we are going to present SNaP hud, because suggestedBannerType = %s.", v14, 0xCu);
    sub_100005B2C(v15);

    a1 = v32;

    v21 = v19;
  }

  else
  {

    v21 = *(v4 + 8);
    v21(v9, v3);
  }

  v22 = [objc_opt_self() sharedApplication];
  v23 = [v22 delegate];

  if (v23)
  {
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (!v24)
    {
LABEL_14:
      swift_unknownObjectRelease();
      return;
    }

    v25 = v24;
    v34(v7, a1, v3);
    v26 = (*(v4 + 88))(v7, v3);
    if (v26 == enum case for ConversationControlsType.shareNameAndPhoto(_:))
    {
      v27 = [v25 bannerPresentationManager];
      v28 = v27;
      v29 = "PHAudioCallViewController requesting showShareNameAndPhotoHUD";
      v30 = &BannerPresentationManager.showShareNameAndPhotoHUD();
    }

    else
    {
      if (v26 != enum case for ConversationControlsType.shareName(_:))
      {
        if (v26 != enum case for ConversationControlsType.incomingNameUpdate(_:))
        {
          swift_unknownObjectRelease();
          v21(v7, v3);
          return;
        }

        v28 = [v25 bannerPresentationManager];
        sub_100167374(v28);
        goto LABEL_13;
      }

      v27 = [v25 bannerPresentationManager];
      v28 = v27;
      v29 = "PHAudioCallViewController requesting showShareNameHUD";
      v30 = &BannerPresentationManager.showShareNameHUD();
    }

    sub_100167240(v27, v29, v30);
LABEL_13:

    goto LABEL_14;
  }
}

void sub_100167240(uint64_t a1, const char *a2, void (*a3)(void))
{
  v7 = [v3 features];
  v8 = [v7 isNameAndPhotoC3Enabled];

  if (v8)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v9 = type metadata accessor for Logger();
    sub_1000058D0(v9, &unk_1003B8820);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = sub_100005924();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, a2, v12, 2u);
      sub_100005BB8(v12);
    }

    v13 = direct field offset for CNKBannerPresentationManager.value;
    sub_100008D1C();
    swift_beginAccess();
    v14 = *(a1 + v13);
    a3();
  }
}

void sub_100167374(uint64_t a1)
{
  v3 = [v1 features];
  v4 = [v3 isNameAndPhotoC3Enabled];

  if (v4)
  {
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008A14(v5, &unk_1003B8820);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "PHAudioCallViewController requesting showIncomingNameUpdateHUD", v8, 2u);
    }

    v9 = [objc_opt_self() sharedApplication];
    v10 = [v9 delegate];

    if (v10)
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        [v11 setIsShowingIncomingNameUpdate:1];
      }

      swift_unknownObjectRelease();
    }

    v12 = direct field offset for CNKBannerPresentationManager.value;
    swift_beginAccess();
    v13 = *(a1 + v12);
    BannerPresentationManager.showIncomingNameUpdateHUD()();
  }
}

void sub_100167538()
{
  v2 = [v0 callRecordingButtonViewController];
  if (v2)
  {
    type metadata accessor for CallRecordingButtonViewController();
    if (swift_dynamicCastClass())
    {
      v1 = v2;
      CallRecordingButtonViewController.buttonTapped()();
      [v0 updateLayoutSupplementalButtons];
    }
  }
}

void sub_100167638()
{
  v1 = [v0 callRecordingPillViewController];
  if (v1)
  {
    v3 = v1;
    type metadata accessor for CallRecordingPillViewController();
    if (swift_dynamicCastClass())
    {
      v2 = v3;
      v3 = CallRecordingPillViewController.recordingView.getter();
      CallRecordingRecordingView.handleTapStopRecording()();
    }
  }
}

id sub_100167728()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = [result isIPadIdiom];

    if (v3)
    {
      v4 = "presentFullScreenPeoplePicker";
      v5 = v0;
    }

    else
    {
      sub_100008D1C();
    }

    return [v5 v4];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100167824()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v6[4] = sub_10016D238;
    v6[5] = v3;
    sub_100006C90();
    v6[1] = 1107296256;
    v6[2] = sub_100164920;
    v6[3] = &unk_10035BA18;
    v4 = _Block_copy(v6);
    v5 = v0;

    [v2 requestPasscodeUnlockWithCompletion:v4];
    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_100167910(char a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 && (v12 = [a2 frontmostCall]) != 0)
  {
    v13 = v12;
    v57 = [objc_opt_self() tu_contactStoreConfigurationForCall:v12];
    v14 = objc_allocWithZone(CNContactStore);
    v58 = [v14 initWithConfiguration:v57];
    v15 = sub_1000140C4(v13);
    if (v15)
    {
      if (*(v15 + 16))
      {
        v56 = v9;
        v16 = *(v15 + 32);

        v17 = sub_1000140C4(v13);
        v55 = v8;
        if (!v17 || (v18 = *(v17 + 16), , v18 != 1))
        {
          v54 = v16;
          if (qword_1003A9F40 != -1)
          {
            swift_once();
          }

          v19 = type metadata accessor for Logger();
          sub_100008A14(v19, &unk_1003B8820);
          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 0;
            _os_log_impl(&_mh_execute_header, v20, v21, "There is more than one contact associated with this call, using the first identifier.", v22, 2u);
            v8 = v55;
          }
        }

        v23 = String._bridgeToObjectiveC()();

        isa = [objc_opt_self() contactKeysToFetch];
        if (!isa)
        {
          sub_10014EA98(&qword_1003AAF80, &unk_1002FB7D0);
          static Array._unconditionallyBridgeFromObjectiveC(_:)();
          isa = Array._bridgeToObjectiveC()().super.isa;
        }

        v25 = [v58 contactForIdentifier:v23 keysToFetch:isa];

        v9 = v56;
        if (v25)
        {
          v54 = v5;
          v26 = objc_opt_self();
          v53 = v25;
          v27 = [v26 viewControllerForContact:v25];
LABEL_27:
          [v27 setContactStore:v58];
          [v27 setShouldShowSharedProfileBanner:1];
          [v27 setDelegate:a2];
          v60 = sub_1000064BC(0, &qword_1003AAEF8, off_1003531E0);
          aBlock[0] = a2;
          v37 = objc_allocWithZone(UIBarButtonItem);
          v38 = a2;
          v39 = sub_1001E1580(0, aBlock, "dismissNavigationControllerAndUpdateScene");
          v52 = v39;
          v40 = [v27 navigationItem];
          [v40 setLeftBarButtonItem:v39];

          v41 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v27];
          sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
          v42 = static OS_dispatch_queue.main.getter();
          v43 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v44 = swift_allocObject();
          *(v44 + 16) = v43;
          *(v44 + 24) = v41;
          v61 = sub_10016D240;
          v62 = v44;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10002E570;
          v60 = &unk_10035BA68;
          v45 = _Block_copy(aBlock);
          v46 = v41;

          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          sub_10002D8E4(&qword_1003B0530, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_10014EA98(&unk_1003AAAC0, &unk_1002FB790);
          sub_100032638();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v45);
          (*(v54 + 8))(v7, v4);
          (*(v56 + 8))(v11, v55);
          return;
        }
      }

      else
      {
      }
    }

    v32 = [v13 handle];
    if (v32)
    {
      v33 = v32;
      v55 = v8;
      v56 = v9;
      v54 = v5;
      sub_1000064BC(0, &qword_1003AAF78, CNMutableContact_ptr);
      v34 = v33;
      v35 = CNMutableContact.init(handle:)();
      v36 = [objc_opt_self() viewControllerForUnknownContact:v35];

      v27 = v36;
      [v27 setActions:{objc_msgSend(v27, "actions") | 0x800}];

      v53 = 0;
      goto LABEL_27;
    }

    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100008A14(v47, &unk_1003B8820);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Failed to present contact card: no handle", v50, 2u);
    }

    v31 = v57;
  }

  else
  {
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008A14(v28, &unk_1003B8820);
    v58 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v58, v29, "Failed to present contact card: no frontmost call", v30, 2u);
    }

    v31 = v58;
  }
}
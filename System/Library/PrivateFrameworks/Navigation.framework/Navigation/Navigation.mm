id MNGetMNLocationProviderLog()
{
  if (MNGetMNLocationProviderLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNLocationProviderLog_onceToken, &__block_literal_global_49);
  }

  v1 = MNGetMNLocationProviderLog_log;

  return v1;
}

id MNGetPuckTrackingLog()
{
  if (MNGetPuckTrackingLog_onceToken != -1)
  {
    dispatch_once(&MNGetPuckTrackingLog_onceToken, &__block_literal_global_109);
  }

  v1 = MNGetPuckTrackingLog_log;

  return v1;
}

void _registerStateCaptureCallbacks()
{
  if (_registerStateCaptureCallbacks_onceToken != -1)
  {
    dispatch_once(&_registerStateCaptureCallbacks_onceToken, &__block_literal_global_23);
  }
}

__CFString *MNLocaleDidChangeNotification()
{
  if (MNLocaleDidChangeNotification_onceToken != -1)
  {
    dispatch_once(&MNLocaleDidChangeNotification_onceToken, &__block_literal_global_8383);
  }

  return @"MNLocaleDidChangeNotification";
}

void __MNLocaleDidChangeNotification_block_invoke()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  v1 = *MEMORY[0x1E695E6E0];

  CFNotificationCenterAddObserver(LocalCenter, 0, _currentLocaleChanged, v1, 0, CFNotificationSuspensionBehaviorCoalesce);
}

void __MNGetMNNavigationServiceLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNNavigationService");
  v1 = MNGetMNNavigationServiceLog_log;
  MNGetMNNavigationServiceLog_log = v0;
}

id MNGetMNNavigationServiceLog()
{
  if (MNGetMNNavigationServiceLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNNavigationServiceLog_onceToken, &__block_literal_global_55);
  }

  v1 = MNGetMNNavigationServiceLog_log;

  return v1;
}

void sub_1D3120F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D31217DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

id MNGetMNNavigationDetailsLog()
{
  if (MNGetMNNavigationDetailsLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNNavigationDetailsLog_onceToken, &__block_literal_global_53);
  }

  v1 = MNGetMNNavigationDetailsLog_log;

  return v1;
}

void __MNGetMNNavigationDetailsLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNNavigationDetails");
  v1 = MNGetMNNavigationDetailsLog_log;
  MNGetMNNavigationDetailsLog_log = v0;
}

void MNRunAsyncOnNavigationQueue(void *a1)
{
  v1 = a1;
  v2 = MNNavigationQueue();
  dispatch_async(v2, v1);
}

id MNNavigationQueue()
{
  if (MNNavigationQueue_onceToken != -1)
  {
    dispatch_once(&MNNavigationQueue_onceToken, &__block_literal_global_9783);
  }

  v1 = MNNavigationQueue_queue;

  return v1;
}

void sub_1D31220AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id GetAudioLogForMNUserOptionsEngineCategory()
{
  if (GetAudioLogForMNUserOptionsEngineCategory_onceToken != -1)
  {
    dispatch_once(&GetAudioLogForMNUserOptionsEngineCategory_onceToken, &__block_literal_global_86);
  }

  v1 = GetAudioLogForMNUserOptionsEngineCategory_log;

  return v1;
}

void sub_1D3122290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id GetAudioLogForMNVoiceLanguageUtilCategory()
{
  if (GetAudioLogForMNVoiceLanguageUtilCategory_onceToken != -1)
  {
    dispatch_once(&GetAudioLogForMNVoiceLanguageUtilCategory_onceToken, &__block_literal_global_17382);
  }

  v1 = GetAudioLogForMNVoiceLanguageUtilCategory_log;

  return v1;
}

void __GetAudioLogForMNVoiceLanguageUtilCategory_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation.Audio", "MNVoiceLanguageUtil");
  v1 = GetAudioLogForMNVoiceLanguageUtilCategory_log;
  GetAudioLogForMNVoiceLanguageUtilCategory_log = v0;
}

uint64_t sub_1D3122E14(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_1D3122E64()
{
  result = qword_1EC75BE10;
  if (!qword_1EC75BE10)
  {
    sub_1D3276FB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75BE10);
  }

  return result;
}

unint64_t sub_1D3122EBC()
{
  result = qword_1EC75BE00;
  if (!qword_1EC75BE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC75C468, &qword_1D328C630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75BE00);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D3123330(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D3123398(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D3152F1C;

  return sub_1D3123588(a1, v4);
}

uint64_t sub_1D3123450(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D3125778;

  return sub_1D3123680(a1, v4, v5, v6);
}

id MNGetMNLocationTrackerLog()
{
  if (MNGetMNLocationTrackerLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNLocationTrackerLog_onceToken, &__block_literal_global_51);
  }

  v1 = MNGetMNLocationTrackerLog_log;

  return v1;
}

uint64_t sub_1D3123588(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D312586C;

  return v6(a1);
}

uint64_t sub_1D3123680(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1D3125778;

  return v7();
}

uint64_t sub_1D3123768()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D3152F1C;

  return sub_1D3123828(v2, v3, v4);
}

uint64_t sub_1D3123828(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1D3152F1C;

  return v6();
}

unint64_t sub_1D3123910()
{
  result = qword_1EC75BDD8;
  if (!qword_1EC75BDD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC75BDD8);
  }

  return result;
}

void sub_1D3123AFC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___MNDestinationArrivalInfoUpdater__navigationSessionState;
  v5 = *(v1 + OBJC_IVAR___MNDestinationArrivalInfoUpdater__navigationSessionState);
  v6 = v5;
  v50 = sub_1D3123F5C(v5);

  [a1 copy];
  sub_1D3277610();
  swift_unknownObjectRelease();
  sub_1D3126084(0, &unk_1EC75BD70, off_1E8428DC0);
  swift_dynamicCast();
  v7 = *(v1 + v4);
  *(v1 + v4) = v53;

  v51 = [a1 location];
  if (!v51)
  {

    return;
  }

  [*(v1 + OBJC_IVAR___MNDestinationArrivalInfoUpdater__remainingTimeUpdater) setNavigationSessionState_];
  v54 = MEMORY[0x1E69E7CC0];
  v8 = [a1 currentRouteInfo];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D312A6FC(v51, v8);
    v12 = v11;
    v14 = v13;
    v15 = v10;
    v16 = v2 + OBJC_IVAR___MNDestinationArrivalInfoUpdater_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v16 + 8);
      ObjectType = swift_getObjectType();
      (*(v17 + 8))(v2, v15, ObjectType, v17, v12, v14);
      swift_unknownObjectRelease();
    }

    v19 = v9;
    MEMORY[0x1D38B4040]();
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D32771B0();
    }

    sub_1D32771D0();
  }

  v20 = [a1 alternateRouteInfos];
  if (v20)
  {
    v21 = v20;
    sub_1D3126084(0, &qword_1EC75BDA8, off_1E8428C20);
    v22 = sub_1D32771A0();

    sub_1D312AA90(v22);
  }

  v23 = v54;
  v47 = a1;
  v49 = v2;
  if (!(v54 >> 62))
  {
    v24 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v50;
    v26 = v51;
    if (v24)
    {
      goto LABEL_12;
    }

LABEL_24:

    return;
  }

  v46 = sub_1D3277660();
  v23 = v54;
  v24 = v46;
  v25 = v50;
  v26 = v51;
  if (!v46)
  {
    goto LABEL_24;
  }

LABEL_12:
  if (v24 >= 1)
  {
    v27 = 0;
    v28 = v49 + OBJC_IVAR___MNDestinationArrivalInfoUpdater_delegate;
    v29 = v23 & 0xC000000000000001;
    v52 = v23;
    v48 = v23 & 0xC000000000000001;
    do
    {
      if (v29)
      {
        v30 = MEMORY[0x1D38B45D0](v27);
      }

      else
      {
        v30 = *(v23 + 8 * v27 + 32);
      }

      v31 = v30;
      sub_1D312ADF4(v26, v30);
      v33 = v32;
      v35 = v34;
      sub_1D312B39C(v31, v32, v34);
      v37 = v36;
      [v31 setRemainingDistanceInfo_];
      v38 = sub_1D312B6D0(v31, v33, v35);
      [v31 setBatteryChargeInfo_];
      if (v25 || !swift_unknownObjectWeakLoadStrong())
      {
      }

      else
      {
        v39 = v28;
        v40 = *(v28 + 8);
        v41 = swift_getObjectType();
        v42 = [v31 displayETAInfo];
        v43 = *(v40 + 16);
        v44 = v41;
        v25 = v50;
        v45 = v40;
        v28 = v39;
        v29 = v48;
        v43(v49, v42, v37, v38, v44, v45);

        v26 = v51;
        swift_unknownObjectRelease();
      }

      ++v27;

      v23 = v52;
    }

    while (v24 != v27);
    goto LABEL_24;
  }

  __break(1u);
}

uint64_t sub_1D3123F5C(void *a1)
{
  v2 = v1;
  v76 = a1;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CDA0, &qword_1D328CE48);
  v74 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v4 = &v72 - v3;
  v5 = sub_1D3276D70();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CDB0, &unk_1D328B750);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v72 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C570, &qword_1D328B720);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v73 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v72 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v77 = &v72 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v72 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v72 - v22;
  v75 = v2;
  v24 = [v2 currentRouteInfo];
  v78 = v23;
  if (v24)
  {
    v25 = v24;
    v26 = [v24 route];

    v27 = [v26 uniqueRouteID];
    if (v27)
    {
      sub_1D3276D60();

      v28 = *(v6 + 56);
      v28(v21, 0, 1, v5);
    }

    else
    {
      v28 = *(v6 + 56);
      v28(v21, 1, 1, v5);
    }

    v23 = v78;
    sub_1D3124894(v21, v78);
    v29 = v76;
    v30 = v77;
    if (!v76)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v28 = *(v6 + 56);
    v28(v23, 1, 1, v5);
    v29 = v76;
    v30 = v77;
    if (!v76)
    {
      goto LABEL_11;
    }
  }

  v31 = [v29 currentRouteInfo];
  if (!v31)
  {
LABEL_11:
    v28(v30, 1, 1, v5);
    goto LABEL_14;
  }

  v32 = v31;
  v33 = [v31 route];

  v34 = [v33 uniqueRouteID];
  if (v34)
  {
    sub_1D3276D60();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v23 = v78;
  v28(v16, v35, 1, v5);
  v30 = v77;
  sub_1D3124894(v16, v77);
LABEL_14:
  v36 = *(v8 + 48);
  sub_1D31254DC(v23, v10);
  sub_1D31254DC(v30, &v10[v36]);
  v37 = *(v6 + 48);
  if (v37(v10, 1, v5) == 1)
  {
    v38 = v37(&v10[v36], 1, v5);
    v39 = v76;
    if (v38 == 1)
    {
      sub_1D3125FBC(v10, &qword_1EC75C570, &qword_1D328B720);
      v40 = 0;
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v41 = v73;
  sub_1D31254DC(v10, v73);
  if (v37(&v10[v36], 1, v5) == 1)
  {
    (*(v6 + 8))(v41, v5);
    v39 = v76;
LABEL_19:
    sub_1D3125FBC(v10, &unk_1EC75CDB0, &unk_1D328B750);
    v40 = 1;
    goto LABEL_21;
  }

  v42 = v72;
  (*(v6 + 32))(v72, &v10[v36], v5);
  sub_1D3125484();
  v43 = sub_1D32770A0();
  v44 = *(v6 + 8);
  v44(v42, v5);
  v44(v41, v5);
  sub_1D3125FBC(v10, &qword_1EC75C570, &qword_1D328B720);
  v40 = ~v43 & 1;
  v39 = v76;
LABEL_21:
  v45 = [v75 alternateRouteInfos];
  if (v45)
  {
    v46 = v45;
    sub_1D312490C();
    v47 = sub_1D32771A0();
  }

  else
  {
    v47 = MEMORY[0x1E69E7CC0];
  }

  v48 = MEMORY[0x1E69E7CC0];
  if (v39)
  {
    v49 = [v39 alternateRouteInfos];
    if (v49)
    {
      v50 = v49;
      sub_1D312490C();
      v51 = sub_1D32771A0();
    }

    else
    {
      v51 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v51 = MEMORY[0x1E69E7CC0];
  }

  v80 = v51;
  v81 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C368, &qword_1D328AE68);
  sub_1D3124958(&qword_1EC75BDF8, &qword_1EC75C368, &qword_1D328AE68, MEMORY[0x1E69E6310]);
  sub_1D3277070();

  result = sub_1D3277820();
  v53 = result;
  v54 = 0;
  v81 = v48;
  v55 = *(result + 16);
  v56 = result + 57;
LABEL_30:
  v57 = (v56 + 32 * v54);
  while (v55 != v54)
  {
    if (v54 >= *(v53 + 16))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      return result;
    }

    v58 = v57 + 32;
    ++v54;
    v59 = *v57;
    v57 += 32;
    if ((v59 & 1) == 0)
    {
      v60 = *(v58 - 49);
      MEMORY[0x1D38B4040]();
      if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D32771B0();
      }

      result = sub_1D32771D0();
      goto LABEL_30;
    }
  }

  result = sub_1D3277830();
  v61 = result;
  v62 = 0;
  v81 = v48;
  v63 = *(result + 16);
  v64 = result + 57;
LABEL_38:
  v65 = (v64 + 32 * v62);
  v66 = v78;
  while (v63 != v62)
  {
    if (v62 >= *(v61 + 16))
    {
      goto LABEL_49;
    }

    v67 = v65 + 32;
    ++v62;
    v68 = *v65;
    v65 += 32;
    if (v68 == 1)
    {
      v69 = *(v67 - 49);
      MEMORY[0x1D38B4040]();
      if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D32771B0();
      }

      result = sub_1D32771D0();
      goto LABEL_38;
    }
  }

  sub_1D3124958(&qword_1EC75BD48, &qword_1EC75CDA0, &qword_1D328CE48, MEMORY[0x1E69E6F00]);
  v70 = v79;
  sub_1D3277340();
  sub_1D3277360();
  v71 = sub_1D3277350();
  (*(v74 + 8))(v4, v70);
  sub_1D3125FBC(v77, &qword_1EC75C570, &qword_1D328B720);
  sub_1D3125FBC(v66, &qword_1EC75C570, &qword_1D328B720);
  if (v71 >= 1)
  {
    return v40 | 2;
  }

  else
  {
    return v40;
  }
}

uint64_t sub_1D3124894(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C570, &qword_1D328B720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D312490C()
{
  result = qword_1EC75BDA8;
  if (!qword_1EC75BDA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC75BDA8);
  }

  return result;
}

uint64_t sub_1D3124958(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void MNRemainingTimeUpdater.navigationSessionState.setter(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v29 - v4);
  v6 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__navigationSessionState;
  v7 = *(v1 + OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__navigationSessionState);
  v8 = v7;
  LOBYTE(v7) = sub_1D3124D50(a1, v7);

  [a1 copy];
  sub_1D3277610();
  swift_unknownObjectRelease();
  sub_1D3126084(0, &unk_1EC75BD70, off_1E8428DC0);
  swift_dynamicCast();
  v9 = v38;
  v10 = *(v1 + v6);
  v37 = v1;
  *(v1 + v6) = v38;
  v11 = v9;

  v12 = 1;
  if (v7)
  {
    v12 = 2;
  }

  v31 = v12;
  v13 = [v11 location];

  v36 = v13;
  if (v13)
  {
    v14 = *(v37 + OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__routes);
    v30 = a1;
    if (v14 >> 62)
    {
      goto LABEL_25;
    }

    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
    v16 = v14;
    v14 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_dateOverride;
    v17 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_delegate;

    swift_beginAccess();
    v33 = v17;
    swift_beginAccess();
    if (v15)
    {
      v18 = 0;
      v34 = v16 & 0xFFFFFFFFFFFFFF8;
      v35 = v16 & 0xC000000000000001;
      v32 = v15;
      do
      {
        if (v35)
        {
          v19 = MEMORY[0x1D38B45D0](v18, v16);
          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
LABEL_21:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v18 >= *(v34 + 16))
          {
            __break(1u);
LABEL_25:
            v15 = sub_1D3277660();
            goto LABEL_6;
          }

          v19 = *(v16 + 8 * v18 + 32);

          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_21;
          }
        }

        sub_1D312601C(v37 + v14, v5, &qword_1EC75C4F0, &qword_1D328B580);
        v21 = sub_1D312596C(v19, v36);
        sub_1D3126114(v21, v5, v22);
        v24 = v23;
        sub_1D3125FBC(v5, &qword_1EC75C4F0, &qword_1D328B580);
        if ((v24 & 1) != 0 && (v25 = [*(v19 + 16) displayETAInfo]) != 0)
        {
          v26 = v25;
          v27 = v37;
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            [Strong remainingTimeUpdater:v27 didUpdateDisplayETAInfo:v26 reason:v31];

            swift_unknownObjectRelease();
          }

          else
          {
          }

          v15 = v32;
        }

        else
        {
        }

        ++v18;
      }

      while (v20 != v15);
    }

    a1 = v30;
  }
}

BOOL sub_1D3124D50(unint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_1D3123F5C(a2);
  v7 = v5;
  if (v5)
  {
    v8 = MEMORY[0x1E69E7CC0];
    v48 = MEMORY[0x1E69E7CC0];
    v9 = &qword_1EC75C000;
    v45 = v5;
    v46 = v6;
    if (v5)
    {
      v10 = v6;
      v14 = [a1 currentRouteInfo];
      if (v14)
      {
        v15 = v14;
        v16 = *(v3 + OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__stabilizeETA);
        type metadata accessor for MNRouteRemainingTimeInfo(0);
        swift_allocObject();
        v17 = v15;
        sub_1D31490EC(v17, 1, v16);

        MEMORY[0x1D38B4040](v18);
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D32771B0();
        }

        a1 = &v48;
        sub_1D32771D0();

        v9 = &qword_1EC75C000;
      }

      goto LABEL_25;
    }

    a1 = *(v3 + OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__routes);
    v10 = v3;
    if (a1 >> 62)
    {
      goto LABEL_56;
    }

    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

    if (v11)
    {
      v7 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1D38B45D0](v7, a1);
          v13 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_15;
          }
        }

        else
        {
          if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v12 = *(a1 + 8 * v7 + 32);

          v13 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }
        }

        if (*(v12 + 24))
        {

          MEMORY[0x1D38B4040](v19);
          v7 = v45;
          v3 = v10;
          v9 = &qword_1EC75C000;
          if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_70;
          }

          goto LABEL_23;
        }

        ++v7;
      }

      while (v13 != v11);
    }

    v7 = v45;
    v3 = v10;
    v9 = 0x1EC75C000;
    while (1)
    {
      v10 = v46;
LABEL_25:

      if ((v7 & 2) == 0)
      {
        break;
      }

LABEL_40:
      v23 = v10;
      if (v10 >> 62)
      {
        v36 = sub_1D3277660();
        v23 = v10;
        v24 = v36;
        if (!v36)
        {
LABEL_59:

          goto LABEL_60;
        }
      }

      else
      {
        v24 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v24)
        {
          goto LABEL_59;
        }
      }

      if (v24 >= 1)
      {
        v25 = 0;
        v44 = v3;
        v26 = *(v3 + OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__stabilizeETA);
        v27 = v23 & 0xC000000000000001;
        do
        {
          if (v27)
          {
            v28 = MEMORY[0x1D38B45D0](v25);
          }

          else
          {
            v28 = *(v23 + 8 * v25 + 32);
          }

          v29 = v28;
          type metadata accessor for MNRouteRemainingTimeInfo(0);
          v30 = swift_allocObject();
          v31 = OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo__targetArrivalDate;
          v32 = sub_1D3276D30();
          (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
          *(v30 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage____routeMatcher) = 0;
          *(v30 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage___dateFormatter) = 0;
          *(v30 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage___dateComponentsFormatter) = 0;
          *(v30 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage___dateComponentsFormatterWithSeconds) = 0;
          *(v30 + 16) = v29;
          *(v30 + 24) = 0;
          v7 = v7 & 0xFFFFFFFF00000000 | 0x20;
          *(v30 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo__stabilizeETA) = v26;
          v33 = v29;
          *(v30 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo__enableLogging) = GEOConfigGetBOOL();

          MEMORY[0x1D38B4040](v34);
          if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D32771B0();
          }

          ++v25;
          sub_1D32771D0();

          v23 = v46;
        }

        while (v24 != v25);

        v3 = v44;
        v7 = v45;
        v9 = 0x1EC75C000;
        goto LABEL_60;
      }

      __break(1u);
LABEL_70:
      sub_1D32771B0();
LABEL_23:
      a1 = &v48;
      sub_1D32771D0();
    }

    v20 = *(v3 + *(v9 + 1224));
    v47 = v8;
    if (v20 >> 62)
    {
      v21 = sub_1D3277660();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v21)
    {
      v10 = v3;
      v9 = 0;
      v3 = v20 & 0xC000000000000001;
      v7 = v20 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v3)
        {
          v22 = MEMORY[0x1D38B45D0](v9, v20);
          v8 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }
        }

        else
        {
          if (v9 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            v11 = sub_1D3277660();
            goto LABEL_5;
          }

          v22 = *(v20 + 8 * v9 + 32);

          v8 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
            goto LABEL_39;
          }
        }

        if (*(v22 + 24))
        {
        }

        else
        {
          sub_1D3277750();
          sub_1D3277780();
          sub_1D3277790();
          a1 = &v47;
          sub_1D3277760();
        }

        ++v9;
        if (v8 == v21)
        {
          v35 = v47;
          v7 = v45;
          v3 = v10;
          v9 = 0x1EC75C000;
          goto LABEL_53;
        }
      }
    }

    v35 = MEMORY[0x1E69E7CC0];
LABEL_53:

    sub_1D31402E8(v35);
LABEL_60:
    v37 = v48;
    *(v3 + *(v9 + 1224)) = v48;

    if (qword_1EC75BE40 != -1)
    {
      swift_once();
    }

    v38 = sub_1D3276F80();
    __swift_project_value_buffer(v38, qword_1EC760710);

    v39 = sub_1D3276F60();
    v40 = sub_1D32773B0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      if (v37 >> 62)
      {
        v42 = sub_1D3277660();
      }

      else
      {
        v42 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v41 + 4) = v42;

      _os_log_impl(&dword_1D311E000, v39, v40, "Routes changed. Now tracking %ld routes.", v41, 0xCu);
      MEMORY[0x1D38B6000](v41, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
LABEL_16:
  }

  return v7 != 0;
}

unint64_t sub_1D3125484()
{
  result = qword_1EC75BFB0;
  if (!qword_1EC75BFB0)
  {
    sub_1D3276D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75BFB0);
  }

  return result;
}

uint64_t sub_1D31254DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C570, &qword_1D328B720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D3125778()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D312586C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_1D312596C(uint64_t a1, void *a2)
{
  v4 = sub_1D3276D70();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CDB0, &unk_1D328B750);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C570, &qword_1D328B720);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v42 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - v18;
  if (*(a1 + 24) == 1)
  {
    v20 = [a2 routeMatch];
    if (v20)
    {
      v43 = v7;
      v21 = v20;
      v22 = [v20 route];
      if (!v22)
      {

        goto LABEL_15;
      }

      v45 = v21;
      v46 = v5;
      v42 = a2;
      v47 = a1;
      v44 = v22;
      v23 = [v22 uniqueRouteID];
      if (v23)
      {
        v24 = v23;
        sub_1D3276D60();

        v25 = v46;
        v26 = *(v46 + 56);
        v26(v19, 0, 1, v4);
      }

      else
      {
        v25 = v46;
        v26 = *(v46 + 56);
        v26(v19, 1, 1, v4);
      }

      v27 = [*(v47 + 16) routeID];
      sub_1D3276D60();

      v26(v17, 0, 1, v4);
      v28 = *(v8 + 48);
      sub_1D312601C(v19, v10, &qword_1EC75C570, &qword_1D328B720);
      sub_1D312601C(v17, &v10[v28], &qword_1EC75C570, &qword_1D328B720);
      v29 = *(v25 + 48);
      if (v29(v10, 1, v4) == 1)
      {
        sub_1D3125FBC(v17, &qword_1EC75C570, &qword_1D328B720);
        sub_1D3125FBC(v19, &qword_1EC75C570, &qword_1D328B720);
        if (v29(&v10[v28], 1, v4) == 1)
        {
          sub_1D3125FBC(v10, &qword_1EC75C570, &qword_1D328B720);
LABEL_21:
          v41 = v45;
          v36 = [v45 routeCoordinate];

          return v36;
        }
      }

      else
      {
        sub_1D312601C(v10, v14, &qword_1EC75C570, &qword_1D328B720);
        if (v29(&v10[v28], 1, v4) != 1)
        {
          v37 = v46;
          v38 = v43;
          (*(v46 + 32))(v43, &v10[v28], v4);
          sub_1D31260CC(&qword_1EC75BFB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v39 = sub_1D32770A0();
          v40 = *(v37 + 8);
          v40(v38, v4);
          sub_1D3125FBC(v17, &qword_1EC75C570, &qword_1D328B720);
          sub_1D3125FBC(v19, &qword_1EC75C570, &qword_1D328B720);
          v40(v14, v4);
          sub_1D3125FBC(v10, &qword_1EC75C570, &qword_1D328B720);
          if (v39)
          {
            goto LABEL_21;
          }

          goto LABEL_14;
        }

        sub_1D3125FBC(v17, &qword_1EC75C570, &qword_1D328B720);
        sub_1D3125FBC(v19, &qword_1EC75C570, &qword_1D328B720);
        (*(v46 + 8))(v14, v4);
      }

      sub_1D3125FBC(v10, &unk_1EC75CDB0, &unk_1D328B750);
LABEL_14:

      a2 = v42;
    }
  }

LABEL_15:
  result = [objc_allocWithZone(MEMORY[0x1E69A1E70]) initWithCLLocation_];
  if (result)
  {
    v31 = result;
    [result setCourse_];
    sub_1D312CBA0();
    v33 = v32;
    v34 = [v32 matchToRouteWithLocation_];

    if (v34)
    {
      v35 = [v34 routeCoordinate];

      return v35;
    }

    else
    {
      v36 = *MEMORY[0x1E69A1918];
    }

    return v36;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D3125FBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D312601C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D3126084(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1D31260CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D3126114(unsigned int a1, _DWORD *a2, float a3)
{
  v90 = a2;
  v7 = sub_1D3276D70();
  v91 = *(v7 - 8);
  v92 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v83 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v84 = &v83 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v83 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = (&v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v83 - v17;
  v19 = sub_1D3276D30();
  v93 = *(v19 - 8);
  v94 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = *(v3 + 2);
  v22 = [v89 route];
  v23 = [v22 routeCoordinateRange];
  v25 = v24;
  v26 = (a1 | (LODWORD(a3) << 32));
  IsABeforeB = GEOPolylineCoordinateIsABeforeB();
  if (IsABeforeB)
  {
    v28 = v25;
  }

  else
  {
    v28 = v23;
  }

  if (!IsABeforeB)
  {
    v23 = v25;
  }

  if (!GEOPolylineCoordinateIsABeforeB())
  {
    v26 = v28;
  }

  if (!GEOPolylineCoordinateIsABeforeB())
  {
    v26 = v23;
  }

  v29 = [v22 legIndexForRouteCoordinate_];
  if ((v29 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v29;
    v85 = v16;
    v87 = v3;
    v16 = &selRef_initWithPattern_options_error_;
    v30 = [v22 legs];
    if (!v30)
    {
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v31 = v30;
    sub_1D3126084(0, &qword_1EC75BD90, 0x1E69A1C80);
    v28 = sub_1D32771A0();

    if (!(v28 >> 62))
    {
      v32 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);

      goto LABEL_14;
    }
  }

  v32 = sub_1D3277660();

  if ((v32 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_49;
  }

LABEL_14:
  v33 = v94;
  if (v4 >= v32)
  {

    return;
  }

  v86 = v21;
  v96 = 0;
  sub_1D312601C(v90, v18, &qword_1EC75C4F0, &qword_1D328B580);
  v34 = v93;
  v35 = *(v93 + 48);
  if (v35(v18, 1, v33) == 1)
  {
    v3 = v86;
    sub_1D3276D10();
    if (v35(v18, 1, v33) != 1)
    {
      sub_1D3125FBC(v18, &qword_1EC75C4F0, &qword_1D328B580);
    }
  }

  else
  {
    v36 = *(v34 + 32);
    v3 = v86;
    v36(v86, v18, v33);
  }

  v37 = [v22 v16[243]];
  if (!v37)
  {
    goto LABEL_67;
  }

  v38 = v37;
  v18 = sub_1D32771A0();

  v28 = v18 >> 62;
  if (!(v18 >> 62))
  {
    v39 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39 >= v4)
    {
      goto LABEL_23;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_49:
  v66 = sub_1D3277660();
  if (v66 < v4)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v39 = v66;
  if (sub_1D3277660() < v4)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (sub_1D3277660() < v39)
  {
    __break(1u);
    goto LABEL_53;
  }

LABEL_23:
  if ((v18 & 0xC000000000000001) == 0 || v4 == v39)
  {

LABEL_30:

    if (v28)
    {
      sub_1D32777E0();
      v43 = v46;
      v45 = v47;
      v44 = v48;
    }

    else
    {
      v43 = ((v18 & 0xFFFFFFFFFFFFFF8) + 32);
      v44 = (2 * v39) | 1;
      v45 = v4;
    }

    MEMORY[0x1EEE9AC00](v42);
    *(&v83 - 6) = v4;
    *(&v83 - 5) = v22;
    *(&v83 - 4) = v26;
    v16 = v87;
    *(&v83 - 3) = v87;
    *(&v83 - 2) = &v96;
    *(&v83 - 1) = v3;
    v4 = sub_1D3127E84(sub_1D3127FD8, (&v83 - 8), v43, v45, v44);
    swift_unknownObjectRelease();
    v26 = [objc_allocWithZone(MNDisplayETAInfo) init];
    v18 = v89;
    v49 = [v89 routeID];
    v50 = v88;
    sub_1D3276D60();

    v51 = sub_1D3276D40();
    v28 = *(v91 + 8);
    (v28)(v50, v92);
    [v26 setRouteID_];

    sub_1D3126084(0, &qword_1EC75BD80, off_1E8428C88);
    v52 = sub_1D3277190();
    [v26 setLegInfos_];

    if (!(v4 >> 62))
    {
      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_35:
        v53 = v4 & 0xC000000000000001;
        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1D38B45D0](0, v4);
          swift_unknownObjectRelease();
          v54 = v94;
LABEL_37:
          v55 = [v18 displayETAInfo];
          if (v55)
          {
            v56 = v55;
            sub_1D3126084(0, &unk_1EC75BDB8, off_1E8428C80);
            v57 = v26;
            v58 = sub_1D32775F0();

            if (v58)
            {

              if (!v53)
              {
LABEL_40:
                if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v59 = *(v4 + 32);
LABEL_45:
                  v61 = v59;
                  v62 = v93;

                  v63 = [v61 eta];

                  v64 = v85;
                  sub_1D3276D00();

                  (*(v62 + 56))(v64, 0, 1, v54);
                  v65 = OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo__targetArrivalDate;
                  swift_beginAccess();
                  sub_1D3128E74(v64, v16 + v65);
                  swift_endAccess();
                  (*(v62 + 8))(v86, v54);
                  return;
                }

                __break(1u);
                goto LABEL_66;
              }

LABEL_44:
              v59 = MEMORY[0x1D38B45D0](0, v4);
              goto LABEL_45;
            }
          }

          else
          {
            v60 = v26;
          }

          [v18 setDisplayETAInfo_];

          if (!v53)
          {
            goto LABEL_40;
          }

          goto LABEL_44;
        }

        v54 = v94;
        if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        __break(1u);
        goto LABEL_63;
      }

LABEL_55:

      if (qword_1EC75BE40 == -1)
      {
        goto LABEL_56;
      }

      goto LABEL_64;
    }

LABEL_54:
    if (sub_1D3277660())
    {
      goto LABEL_35;
    }

    goto LABEL_55;
  }

  if (v4 < v39)
  {

    v40 = v4;
    do
    {
      v41 = v40 + 1;
      sub_1D3277700();
      v40 = v41;
    }

    while (v39 != v41);
    goto LABEL_30;
  }

LABEL_63:
  __break(1u);
LABEL_64:
  swift_once();
LABEL_56:
  v67 = sub_1D3276F80();
  __swift_project_value_buffer(v67, qword_1EC760710);
  v68 = v22;
  v69 = sub_1D3276F60();
  v70 = sub_1D32773A0();
  if (!os_log_type_enabled(v69, v70))
  {

    goto LABEL_60;
  }

  v71 = swift_slowAlloc();
  v89 = swift_slowAlloc();
  v95[0] = v89;
  v90 = v71;
  *v71 = 136315138;
  v72 = [v68 uniqueRouteID];

  if (v72)
  {
    v73 = v83;
    sub_1D3276D60();

    v74 = v84;
    v75 = v73;
    v76 = v92;
    (*(v91 + 32))(v84, v75, v92);
    sub_1D31260CC(&qword_1EC75C590, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v77 = sub_1D3277890();
    v79 = v78;
    (v28)(v74, v76);
    v80 = sub_1D312BA30(v77, v79, v95);

    v81 = v90;
    *(v90 + 1) = v80;
    _os_log_impl(&dword_1D311E000, v69, v70, "We somehow computed no MNDisplayETALegInfos from route %s", v81, 0xCu);
    v82 = v89;
    __swift_destroy_boxed_opaque_existential_0(v89);
    MEMORY[0x1D38B6000](v82, -1, -1);
    MEMORY[0x1D38B6000](v81, -1, -1);

LABEL_60:
    (*(v93 + 8))(v86, v94);
    return;
  }

LABEL_70:
  __break(1u);
}

void sub_1D3126B70(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, unint64_t a5, float a6)
{
  v12 = a1;
  v13 = [*(a4 + 16) etaRoute];
  v14 = v13;
  if (v12)
  {
    [a2 remainingTimeToEndOfCurrentLegFrom:a3 | (LODWORD(a6) << 32) etaRoute:v13];
LABEL_35:

    return;
  }

  v15 = &selRef_initWithPattern_options_error_;
  if (!v13)
  {
    goto LABEL_29;
  }

  v16 = [a2 legs];
  if (!v16)
  {
    goto LABEL_50;
  }

  v17 = v16;
  sub_1D3126084(0, &qword_1EC75BD90, 0x1E69A1C80);
  v18 = sub_1D32771A0();

  if (v18 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D3277660())
  {

    v19 = [v14 v15[243]];
    v20 = sub_1D3126084(0, &qword_1EC75C5A8, 0x1E69A1C58);
    v21 = sub_1D32771A0();

    if (v21 >> 62)
    {
      v22 = sub_1D3277660();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = i - v22;
    if (__OFSUB__(i, v22))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    i = a5 - v23;
    if (__OFSUB__(a5, v23))
    {
      goto LABEL_42;
    }

    v24 = [v14 v15[243]];
    v25 = sub_1D32771A0();

    if (!(v25 >> 62))
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);

      goto LABEL_13;
    }

LABEL_43:
    v26 = sub_1D3277660();

    if ((v26 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_45:
      swift_once();
      goto LABEL_22;
    }

LABEL_13:
    if (i < v26)
    {
      v27 = [v14 v15[243]];
      v28 = sub_1D32771A0();

      if ((v28 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1D38B45D0](i, v28);
      }

      else
      {
        if (i >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_48:
          v36 = sub_1D3277660();
          goto LABEL_26;
        }

        v29 = *(v28 + 8 * i + 32);
      }

      v30 = v29;

      v31 = [v30 originalLegIndex];
      if ((a5 & 0x8000000000000000) == 0 && v31 == a5)
      {
        [v30 travelDuration];

        v14 = v30;
        goto LABEL_35;
      }
    }

    if (qword_1EC75BE40 != -1)
    {
      goto LABEL_45;
    }

LABEL_22:
    v32 = sub_1D3276F80();
    __swift_project_value_buffer(v32, qword_1EC760710);
    i = a2;
    v28 = v14;
    v20 = sub_1D3276F60();
    v7 = sub_1D32773A0();

    if (!os_log_type_enabled(v20, v7))
    {

      v20 = i;
      goto LABEL_28;
    }

    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v27 = 134218498;
    *(v27 + 1) = a5;
    *(v27 + 6) = 2048;
    v33 = [i v15[243]];
    if (!v33)
    {
      goto LABEL_51;
    }

    v34 = v33;
    v35 = sub_1D32771A0();

    if (v35 >> 62)
    {
      goto LABEL_48;
    }

    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_26:

    *(v27 + 14) = v36;

    *(v27 + 11) = 2112;
    *(v27 + 3) = v28;
    *v40 = v14;
    i = v28;
    _os_log_impl(&dword_1D311E000, v20, v7, "Could not find corresponding ETA route leg. Falling back to travel duration from route. Leg index: %ld, route legs count: %ld, etaRoute: %@", v27, 0x20u);
    sub_1D3125FBC(v40, &qword_1EC75C5B0, &unk_1D328C300);
    MEMORY[0x1D38B6000](v40, -1, -1);
    MEMORY[0x1D38B6000](v27, -1, -1);
    v15 = &selRef_initWithPattern_options_error_;
LABEL_28:

LABEL_29:
    v37 = [a2 v15[243]];
    if (!v37)
    {
      break;
    }

    a2 = v37;
    sub_1D3126084(0, &qword_1EC75BD90, 0x1E69A1C80);
    v38 = sub_1D32771A0();

    if ((v38 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x1D38B45D0](a5, v38);
      goto LABEL_34;
    }

    if ((a5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) > a5)
    {
      v39 = *(v38 + 8 * a5 + 32);
LABEL_34:
      v14 = v39;

      [v14 travelDuration];
      goto LABEL_35;
    }

    __break(1u);
LABEL_39:
    ;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:

  __break(1u);
}

uint64_t sub_1D31270C0(char *a1, char *a2, double a3, uint64_t a4, uint64_t a5)
{
  v73 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v61 - v9;
  v11 = sub_1D3276D30();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v71 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v61 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v61 - v18;
  sub_1D3276D20();
  sub_1D3276CA0();
  fmod(v20, 60.0);
  sub_1D3276CB0();
  sub_1D312601C(a5, v10, &qword_1EC75C4F0, &qword_1D328B580);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D3125FBC(v10, &qword_1EC75C4F0, &qword_1D328B580);
    (*(v12 + 16))(a1, v19, v11);
    return (*(v12 + 32))(v73, v19, v11);
  }

  v70 = a1;
  v22 = (v12 + 32);
  v23 = *(v12 + 32);
  v23(v17, v10, v11);
  sub_1D3276CC0();
  v25 = round(fabs(v24) / 60.0);
  if (v25 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v26 = a3 / 60.0;
  if (COERCE__INT64(fabs(a3 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL || (*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_31;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v27 = v25;
  v28 = v26;
  if (v26 < 11)
  {
    if (v27 <= 0)
    {
      goto LABEL_22;
    }

    v68 = v25;
    v29 = 1;
  }

  else if (v28 < 0x1A)
  {
    if (v27 < 2)
    {
      goto LABEL_22;
    }

    v68 = v25;
    v29 = 2;
  }

  else if (v28 <= 0x28)
  {
    if (v27 < 3)
    {
      goto LABEL_22;
    }

    v68 = v25;
    v29 = 3;
  }

  else
  {
    if (v28 > 0x3C)
    {
      if (v27 >= 5)
      {
        v68 = v25;
        v29 = 5;
        goto LABEL_24;
      }

LABEL_22:
      v23(v70, v17, v11);
      return (v23)(v73, v19, v11);
    }

    if (v27 < 4)
    {
      goto LABEL_22;
    }

    v68 = v25;
    v29 = 4;
  }

LABEL_24:
  v66 = v29;
  v22 = v71;
  if (qword_1EC75BE40 != -1)
  {
LABEL_34:
    swift_once();
  }

  v30 = sub_1D3276F80();
  __swift_project_value_buffer(v30, qword_1EC760710);
  v31 = *(v12 + 16);
  v31(v22, v17, v11);

  v32 = sub_1D3276F60();
  v33 = sub_1D32773B0();

  v67 = v33;
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v69 = v11;
    v35 = v34;
    v63 = swift_slowAlloc();
    v74[0] = v63;
    *v35 = 136315906;
    v62 = v32;
    v36 = sub_1D312B9CC();
    v64 = v17;
    v65 = v31;
    v37 = v22;
    v38 = v36;
    v39 = sub_1D3276CD0();
    v40 = [v38 stringFromDate_];

    v41 = sub_1D32770C0();
    v43 = v42;

    v44 = *(v12 + 8);
    v31 = v65;
    v44(v37, v69);
    v45 = sub_1D312BA30(v41, v43, v74);

    *(v35 + 4) = v45;
    *(v35 + 12) = 2080;
    v46 = *(v72 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage___dateFormatter);
    swift_beginAccess();
    v47 = v46;
    v48 = sub_1D3276CD0();
    v49 = [v47 stringFromDate_];

    v50 = sub_1D32770C0();
    v52 = v51;

    v53 = v44;
    v54 = sub_1D312BA30(v50, v52, v74);

    *(v35 + 14) = v54;
    *(v35 + 22) = 2048;
    *(v35 + 24) = v68;
    *(v35 + 32) = 2048;
    *(v35 + 34) = v66;
    v55 = v62;
    _os_log_impl(&dword_1D311E000, v62, v67, "Ignoring target ETA %s. Computed arrival ETA %s is %ld minutes away. Threshold is %ld minutes.", v35, 0x2Au);
    v56 = v63;
    swift_arrayDestroy();
    MEMORY[0x1D38B6000](v56, -1, -1);
    v57 = v35;
    v11 = v69;
    MEMORY[0x1D38B6000](v57, -1, -1);

    v44(v64, v11);
  }

  else
  {

    v58 = v22;
    v53 = *(v12 + 8);
    v53(v58, v11);
    v53(v17, v11);
  }

  v59 = v73;
  v60 = v70;
  swift_beginAccess();
  v31(v60, v19, v11);
  v31(v59, v19, v11);
  return (v53)(v19, v11);
}

uint64_t sub_1D31277D8(uint64_t a1)
{
  v2 = sub_1D3276DB0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75C580, &qword_1D328B730);
    v9 = sub_1D32776D0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1D31260CC(&qword_1EC75BFA8, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v16 = sub_1D3277060();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1D31260CC(&qword_1EC75BFA0, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v23 = sub_1D32770A0();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1D3127B00(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1D3127B68(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = (&v28 - v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [*(Strong + OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__navigationSessionState) location];
    if (v6)
    {
      v7 = v6;
      v8 = *&v5[OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__routes];
      if (v8 >> 62)
      {
        goto LABEL_27;
      }

      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v10 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_dateOverride;
      v11 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_delegate;

      swift_beginAccess();
      v28 = v11;
      swift_beginAccess();
      if (v9)
      {
        v12 = 0;
        v31 = v8 & 0xFFFFFFFFFFFFFF8;
        v32 = v8 & 0xC000000000000001;
        v29 = v10;
        v30 = v9;
        do
        {
          if (v32)
          {
            v15 = MEMORY[0x1D38B45D0](v12, v8);
            v16 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
LABEL_22:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v12 >= *(v31 + 16))
            {
              __break(1u);
LABEL_27:
              v9 = sub_1D3277660();
              goto LABEL_5;
            }

            v15 = *(v8 + 8 * v12 + 32);

            v16 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_22;
            }
          }

          v34 = v16;
          v17 = v33;
          sub_1D312601C(&v5[v10], v33, &qword_1EC75C4F0, &qword_1D328B580);
          v18 = sub_1D312596C(v15, v7);
          sub_1D3126114(v18, v17, v19);
          v20 = v10;
          v21 = v7;
          v23 = v22;
          sub_1D3125FBC(v17, &qword_1EC75C4F0, &qword_1D328B580);
          if (v23)
          {
            v13 = v30;
            v24 = [*(v15 + 16) displayETAInfo];
            if (v24)
            {
              v25 = v24;
              v26 = swift_unknownObjectWeakLoadStrong();
              v14 = v34;
              if (v26)
              {
                [v26 remainingTimeUpdater:v5 didUpdateDisplayETAInfo:v25 reason:3];

                swift_unknownObjectRelease();
              }

              else
              {
              }

              v7 = v21;
              v10 = v29;
              goto LABEL_9;
            }

            v7 = v21;
            v10 = v29;
          }

          else
          {

            v7 = v21;
            v13 = v30;
            v10 = v20;
          }

          v14 = v34;
LABEL_9:
          ++v12;
        }

        while (v14 != v13);
      }
    }

    v27 = *&v5[OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__timerToNextMinute];
    *&v5[OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__timerToNextMinute] = 0;

    sub_1D31295E0();
  }
}

uint64_t sub_1D3127E84(void (*a1)(char **__return_ptr, id *), uint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v15 = a5 >> 1;
  v7 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v5;
  result = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return result;
  }

  v6 = a3;
  v18 = MEMORY[0x1E69E7CC0];
  sub_1D3277770();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = &v6[8 * a4];
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ((a4 + v11) >= v15 || v11 >= v7)
      {
        goto LABEL_13;
      }

      v16 = *&v12[8 * v11];
      v6 = v16;
      a1(&v17, &v16);
      if (v8)
      {
        goto LABEL_16;
      }

      v8 = 0;

      v6 = v17;
      sub_1D3277750();
      sub_1D3277780();
      sub_1D3277790();
      sub_1D3277760();
      ++v11;
      if (v13 == v7)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
LABEL_16:

  __break(1u);
  return result;
}

uint64_t sub_1D31280CC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, double *a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>, float a9@<S0>)
{
  v137 = a7;
  v123 = a6;
  LODWORD(v122) = a4;
  v121 = a3;
  v111 = a8;
  v13 = sub_1D3276E00();
  v108 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1D3276D70();
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v118 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D3276DC0();
  v127 = *(v16 - 8);
  v128 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v135 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D3276B00();
  v129 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v125 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v124 = &v105 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v126 = &v105 - v23;
  v24 = sub_1D3276D30();
  v138 = *(v24 - 8);
  v139 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v134 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C598, &qword_1D328B738);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v105 - v30;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5A0, &unk_1D328B740);
  v32 = MEMORY[0x1EEE9AC00](v131);
  v110 = &v105 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v130 = &v105 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v105 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v136 = &v105 - v39;
  v133 = *a1;
  result = [v133 legIndex];
  if (result < 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v41 = result;
  sub_1D3126B70(result == a2, v121, v122, a5, result, a9);
  v43 = v42 + *v123;
  *v123 = v43;
  v112 = v41;
  v106 = v13;
  v140 = v18;
  v132 = v37;
  if (v41 == a2 && *(a5 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo__stabilizeETA) == 1)
  {
    v44 = OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo__targetArrivalDate;
    swift_beginAccess();
    v45 = a5;
    v46 = a5 + v44;
    v47 = v136;
    sub_1D312601C(v46, v136, &qword_1EC75C4F0, &qword_1D328B580);
    v49 = v138;
    v48 = v139;
  }

  else
  {
    v45 = a5;
    v49 = v138;
    v48 = v139;
    v47 = v136;
    (*(v138 + 56))(v136, 1, 1, v139);
  }

  v105 = *(v26 + 48);
  v117 = v31;
  v116 = v45;
  sub_1D31270C0(v31, &v31[v105], v43, v137, v47);
  sub_1D312601C(v31, v29, &qword_1EC75C598, &qword_1D328B738);
  v50 = *(v26 + 48);
  v51 = *(v49 + 32);
  v123 = (v49 + 32);
  v122 = v51;
  v51(v134, v29, v48);
  v52 = *(v49 + 8);
  v138 = v49 + 8;
  v109 = v52;
  v52(&v29[v50], v48);
  sub_1D3276DA0();
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C578, &qword_1D328B728);
  v53 = sub_1D3276DB0();
  v54 = *(v53 - 8);
  v55 = *(v54 + 72);
  v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1D328B560;
  v115 = *MEMORY[0x1E6969A58];
  v58 = *(v54 + 104);
  v58(v57 + v56);
  v114 = *MEMORY[0x1E6969A88];
  v58(v57 + v56 + v55);
  v121 = sub_1D31277D8(v57);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1D328B570;
  (v58)(v59 + v56, *MEMORY[0x1E6969A68], v53);
  (v58)(v59 + v56 + v55, *MEMORY[0x1E6969A78], v53);
  (v58)(v59 + v56 + 2 * v55, *MEMORY[0x1E6969A48], v53);
  v60 = v134;
  (v58)(v59 + v56 + 3 * v55, v115, v53);
  (v58)(v59 + v56 + 4 * v55, v114, v53);
  sub_1D31277D8(v59);
  swift_setDeallocating();
  v61 = v116;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v62 = v124;
  v63 = v135;
  sub_1D3276D90();
  v64 = v125;
  v65 = v60;
  v66 = v63;
  sub_1D3276D90();

  v67 = v126;
  sub_1D3276D80();

  v68 = v129;
  v69 = *(v129 + 8);
  v70 = v64;
  v71 = v140;
  v69(v70, v140);
  v72 = v62;
  v73 = v117;
  v125 = v69;
  v69(v72, v71);
  (*(v127 + 8))(v66, v128);
  if (*(v61 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo__enableLogging) == 1 && *(v61 + 24) == 1)
  {
    sub_1D31491D4(v65, v67, v137, v136, v73 + v105, v43);
  }

  v74 = v131;
  v75 = *(v131 + 48);
  sub_1D3125FBC(v73, &qword_1EC75C598, &qword_1D328B738);
  v76 = v132;
  (*(v68 + 32))(v132, v67, v140);
  v122(v76 + v75, v65, v139);
  v77 = [objc_allocWithZone(MNDisplayETALegInfo) init];
  v78 = [v133 destination];
  result = [v78 uniqueID];
  v79 = v130;
  if (!result)
  {
    goto LABEL_26;
  }

  v80 = result;

  v81 = v118;
  sub_1D3276D60();

  v82 = sub_1D3276D40();
  (*(v119 + 8))(v81, v120);
  [v77 setWaypointID_];

  [v77 setLegIndex_];
  sub_1D312601C(v76, v79, &qword_1EC75C5A0, &unk_1D328B740);
  v83 = sub_1D3276AE0();
  v85 = v84;
  result = sub_1D3276AD0();
  if (v86)
  {
    v87 = 0;
  }

  else
  {
    v87 = result;
  }

  v88 = 60 * v87;
  if ((v87 * 60) >> 64 != (60 * v87) >> 63)
  {
    goto LABEL_23;
  }

  if (v85)
  {
    v89 = 0;
  }

  else
  {
    v89 = v83;
  }

  v90 = v88 + v89;
  if (__OFADD__(v88, v89))
  {
    goto LABEL_24;
  }

  v91 = *(v74 + 48);
  v92 = v125;
  result = (v125)(v79, v140);
  if (v90 < 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v93 = v79 + v91;
  v94 = v139;
  v95 = v76;
  v96 = v109;
  v109(v93, v139);
  [v77 setRemainingMinutes_];
  v97 = v74;
  v98 = v110;
  sub_1D312601C(v95, v110, &qword_1EC75C5A0, &unk_1D328B740);
  v99 = *(v97 + 48);
  v100 = sub_1D3276CD0();
  v96(v98 + v99, v94);
  v92(v98, v140);
  [v77 setEta_];

  v101 = [v133 destination];
  v102 = [v101 timezone];

  if (v102)
  {
    v103 = v107;
    sub_1D3276DE0();

    v102 = sub_1D3276DD0();
    (*(v108 + 8))(v103, v106);
  }

  v104 = v111;
  [v77 setTimeZone_];

  sub_1D3125FBC(v132, &qword_1EC75C5A0, &unk_1D328B740);
  result = sub_1D3125FBC(v136, &qword_1EC75C4F0, &qword_1D328B580);
  *v104 = v77;
  return result;
}

uint64_t sub_1D3128E74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D3128F88(void *a1, uint64_t a2)
{
  v5 = sub_1D3276D70();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  if ((a2 - 3) <= 1)
  {
    v12 = [*(v2 + OBJC_IVAR___MNDestinationArrivalInfoUpdater__navigationSessionState) currentRouteInfo];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 routeID];
      sub_1D3276D60();

      v15 = [a1 routeID];
      sub_1D3276D60();

      LOBYTE(v15) = sub_1D3276D50();
      v16 = *(v6 + 8);
      v16(v9, v5);
      v16(v11, v5);
      if ((v15 & 1) != 0 && (v17 = v2 + OBJC_IVAR___MNDestinationArrivalInfoUpdater_delegate, swift_unknownObjectWeakLoadStrong()))
      {
        v18 = *(v17 + 8);
        ObjectType = swift_getObjectType();
        v20 = [v13 displayETAInfo];
        v21 = [v13 remainingDistanceInfo];
        v22 = [v13 batteryChargeInfo];
        (*(v18 + 16))(v2, v20, v21, v22, ObjectType, v18);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

BOOL MNProtocolDeclaresSelector(void *a1, const char *a2)
{
  v3 = a1;
  v4 = 1;
  if (!protocol_getMethodDescription(v3, a2, 1, 1).name)
  {
    v4 = protocol_getMethodDescription(v3, a2, 0, 1).name != 0;
  }

  return v4;
}

void sub_1D31295E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &aBlock[-1] - v3;
  v5 = sub_1D3276D30();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__timerToNextMinute;
  [*(v1 + OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__timerToNextMinute) invalidate];
  v10 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_dateOverride;
  swift_beginAccess();
  sub_1D312601C(v1 + v10, v4, &qword_1EC75C4F0, &qword_1D328B580);
  v11 = *(v6 + 48);
  if (v11(v4, 1, v5) == 1)
  {
    sub_1D3276D10();
    if (v11(v4, 1, v5) != 1)
    {
      sub_1D3125FBC(v4, &qword_1EC75C4F0, &qword_1D328B580);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  sub_1D3276CA0();
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  v14 = 60.0 - fmod(v13, 60.0);
  v15 = objc_opt_self();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1D3127E7C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3127B00;
  aBlock[3] = &block_descriptor_1;
  v17 = _Block_copy(aBlock);

  v18 = [v15 scheduledTimerWithTimeInterval:0 repeats:v17 block:v14];
  _Block_release(v17);
  v19 = *(v1 + v9);
  *(v1 + v9) = v18;
}

uint64_t sub_1D31298E8()
{
  MEMORY[0x1D38B60C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3129920(id *a1, void **a2)
{
  v4 = sub_1D3276D70();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CDB0, &unk_1D328B750);
  MEMORY[0x1EEE9AC00](v34);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C570, &qword_1D328B720);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  v17 = *a2;
  v18 = [*a1 route];
  v19 = [v18 uniqueRouteID];

  if (v19)
  {
    sub_1D3276D60();

    v20 = *(v5 + 56);
    v20(v16, 0, 1, v4);
  }

  else
  {
    v20 = *(v5 + 56);
    v20(v16, 1, 1, v4);
  }

  v21 = [v17 route];
  v22 = [v21 uniqueRouteID];

  if (v22)
  {
    sub_1D3276D60();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v20(v14, v23, 1, v4);
  v24 = *(v34 + 48);
  sub_1D31254DC(v16, v8);
  sub_1D31254DC(v14, &v8[v24]);
  v25 = *(v5 + 48);
  if (v25(v8, 1, v4) != 1)
  {
    v27 = v33;
    sub_1D31254DC(v8, v33);
    if (v25(&v8[v24], 1, v4) != 1)
    {
      v28 = v32;
      (*(v5 + 32))(v32, &v8[v24], v4);
      sub_1D3125484();
      v26 = sub_1D32770A0();
      v29 = *(v5 + 8);
      v29(v28, v4);
      sub_1D3125FBC(v14, &qword_1EC75C570, &qword_1D328B720);
      sub_1D3125FBC(v16, &qword_1EC75C570, &qword_1D328B720);
      v29(v27, v4);
      sub_1D3125FBC(v8, &qword_1EC75C570, &qword_1D328B720);
      return v26 & 1;
    }

    sub_1D3125FBC(v14, &qword_1EC75C570, &qword_1D328B720);
    sub_1D3125FBC(v16, &qword_1EC75C570, &qword_1D328B720);
    (*(v5 + 8))(v27, v4);
    goto LABEL_12;
  }

  sub_1D3125FBC(v14, &qword_1EC75C570, &qword_1D328B720);
  sub_1D3125FBC(v16, &qword_1EC75C570, &qword_1D328B720);
  if (v25(&v8[v24], 1, v4) != 1)
  {
LABEL_12:
    sub_1D3125FBC(v8, &unk_1EC75CDB0, &unk_1D328B750);
    v26 = 0;
    return v26 & 1;
  }

  sub_1D3125FBC(v8, &qword_1EC75C570, &qword_1D328B720);
  v26 = 1;
  return v26 & 1;
}

void sub_1D3129DDC(void *a1, void *a2, uint64_t a3)
{
  if (a1 && a2)
  {
    v12 = a1;
    v11 = a2;
    v5 = [v3 observers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CDC0, &qword_1D328CF70);
    v6 = sub_1D32771A0();

    if (v6 >> 62)
    {
      goto LABEL_17;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      while (1)
      {
        v8 = 0;
        while ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1D38B45D0](v8, v6);
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_14:
            __break(1u);
            return;
          }

LABEL_10:
          if ([v9 respondsToSelector_])
          {
            [v9 navigationSession:v3 didUpdateDisplayETA:v12 remainingDistance:v11 batteryChargeInfo:a3];
          }

          swift_unknownObjectRelease();
          ++v8;
          if (v10 == v7)
          {
            goto LABEL_18;
          }
        }

        if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v7 = sub_1D3277660();
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      v9 = *(v6 + 8 * v8 + 32);
      swift_unknownObjectRetain();
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_18:
  }
}

unint64_t sub_1D312A6FC(void *a1, void *a2)
{
  v4 = [a1 routeMatch];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [v4 step];
  if (!v6)
  {
    v9 = 0;
LABEL_12:

    return v9;
  }

  v7 = v6;
  result = [v7 stepIndex];
  if ((result & 0x8000000000000000) == 0)
  {
    v9 = result;
    if ([a1 state] == 1)
    {
      v10 = [a2 route];
      v11 = [v7 maneuverStartRouteCoordinate];
      v12 = [v5 routeCoordinate];
      if (!GEOPolylineCoordinateIsABeforeB())
      {
        v12 = v11;
      }

      [v10 distanceBetweenRouteCoordinate:v12 andRouteCoordinate:v11];
      v13 = sub_1D32774D0();
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v20 = [a2 etaRoute];
      [v10 travelDurationForRange:v13 | (v15 << 32) etaRoute:{v17 | (v19 << 32), v20}];

      v5 = v7;
      v7 = v10;
    }

    else
    {
      v20 = v7;
    }

    v5 = v20;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D312A900(uint64_t a1, double a2, double a3)
{
  v7 = [v3 observers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CDC0, &qword_1D328CF70);
  v8 = sub_1D32771A0();

  if (v8 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D3277660())
  {
    v10 = 0;
    while ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1D38B45D0](v10, v8);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_14;
      }

LABEL_9:
      if ([v11 respondsToSelector_])
      {
        if (a1 < 0)
        {
          goto LABEL_16;
        }

        [v11 navigationSession:v14 currentStepIndex:a1 didUpdateDistanceUntilManeuver:a2 timeUntilManeuver:a3];
      }

      swift_unknownObjectRelease();
      ++v10;
      if (v12 == i)
      {
        goto LABEL_18;
      }
    }

    if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    v11 = *(v8 + 8 * v10 + 32);
    swift_unknownObjectRetain();
    v12 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
}

uint64_t sub_1D312AAA8(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1D3277660();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1D3277660();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1D312ABA0(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D312ABA0(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1D3277660();
LABEL_9:
  result = sub_1D3277720();
  *v2 = result;
  return result;
}

uint64_t sub_1D312AC40(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D3277660();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D3277660();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D3124958(&qword_1EC75BDF0, &qword_1EC75C368, &qword_1D328AE68, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C368, &qword_1D328AE68);
            v9 = sub_1D312CC48(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D3126084(0, &qword_1EC75BDA8, off_1E8428C20);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D312ADF4(void *a1, void *a2)
{
  v4 = sub_1D3276D70();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CDB0, &unk_1D328B750);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C570, &qword_1D328B720);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v38 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - v18;
  v20 = [a1 routeMatch];
  if (v20)
  {
    v39 = v7;
    v40 = v14;
    v41 = a1;
    v43 = v20;
    v21 = [v20 routeID];
    if (v21)
    {
      v22 = v21;
      sub_1D3276D60();

      v23 = *(v5 + 56);
      v23(v19, 0, 1, v4);
    }

    else
    {
      v23 = *(v5 + 56);
      v23(v19, 1, 1, v4);
    }

    v42 = a2;
    v24 = [a2 routeID];
    sub_1D3276D60();

    v23(v17, 0, 1, v4);
    v25 = *(v8 + 48);
    sub_1D31254DC(v19, v10);
    sub_1D31254DC(v17, &v10[v25]);
    v26 = *(v5 + 48);
    if (v26(v10, 1, v4) == 1)
    {
      sub_1D3125FBC(v17, &qword_1EC75C570, &qword_1D328B720);
      sub_1D3125FBC(v19, &qword_1EC75C570, &qword_1D328B720);
      if (v26(&v10[v25], 1, v4) == 1)
      {
        sub_1D3125FBC(v10, &qword_1EC75C570, &qword_1D328B720);
LABEL_18:
        v37 = v43;
        [v43 routeCoordinate];

        return;
      }
    }

    else
    {
      v27 = v40;
      sub_1D31254DC(v10, v40);
      if (v26(&v10[v25], 1, v4) != 1)
      {
        v34 = v39;
        (*(v5 + 32))(v39, &v10[v25], v4);
        sub_1D3125484();
        v35 = sub_1D32770A0();
        v36 = *(v5 + 8);
        v36(v34, v4);
        sub_1D3125FBC(v17, &qword_1EC75C570, &qword_1D328B720);
        sub_1D3125FBC(v19, &qword_1EC75C570, &qword_1D328B720);
        v36(v27, v4);
        sub_1D3125FBC(v10, &qword_1EC75C570, &qword_1D328B720);
        a2 = v42;
        if (v35)
        {
          goto LABEL_18;
        }

        goto LABEL_11;
      }

      sub_1D3125FBC(v17, &qword_1EC75C570, &qword_1D328B720);
      sub_1D3125FBC(v19, &qword_1EC75C570, &qword_1D328B720);
      (*(v5 + 8))(v27, v4);
    }

    sub_1D3125FBC(v10, &unk_1EC75CDB0, &unk_1D328B750);
    a2 = v42;
LABEL_11:

    a1 = v41;
  }

  v28 = [objc_allocWithZone(MEMORY[0x1E69A1E70]) initWithCLLocation_];
  if (!v28)
  {
    __break(1u);
    goto LABEL_20;
  }

  v29 = v28;
  [v28 setCourse_];
  v30 = [a2 route];
  v31 = [objc_allocWithZone(MEMORY[0x1E69A2548]) initWithRoute:v30 auditToken:0];

  if (!v31)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v32 = [v31 matchToRouteWithLocation_];
  if (v32)
  {
    v33 = v32;
    [v32 routeCoordinate];
  }

  else
  {
  }
}

void sub_1D312B39C(void *a1, uint64_t a2, float a3)
{
  v6 = a2;
  v8 = sub_1D3276D70();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 route];
  v13 = [v12 legIndexForRouteCoordinate_];
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v13;
    v34 = v9;
    v4 = &selRef_initWithPattern_options_error_;
    v14 = [v12 legs];
    if (!v14)
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v15 = v14;
    sub_1D3126084(0, &qword_1EC75BD90, 0x1E69A1C80);
    v16 = sub_1D32771A0();

    if (!(v16 >> 62))
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

      goto LABEL_5;
    }
  }

  v17 = sub_1D3277660();

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_5:
  if (v3 >= v17)
  {

    return;
  }

  v18 = [v12 v4[243]];
  if (!v18)
  {
    goto LABEL_21;
  }

  v19 = v18;
  v17 = sub_1D32771A0();

  if ((v17 & 0xC000000000000001) != 0)
  {
LABEL_18:
    v20 = MEMORY[0x1D38B45D0](v3, v17);
    goto LABEL_10;
  }

  if (v3 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_20;
  }

  v20 = *(v17 + 8 * v3 + 32);
LABEL_10:
  v21 = v20;

  [v12 distanceToEndFromRouteCoordinate_];
  v23 = v22;
  [v21 endRouteCoordinate];
  v24 = sub_1D32774D0();
  [v12 distanceForRange_];
  v29 = v28;
  v30 = [v12 uniqueRouteID];
  if (v30)
  {
    v31 = v30;
    sub_1D3276D60();

    v32 = sub_1D3276D40();
    (*(v34 + 8))(v11, v8);
  }

  else
  {
    v32 = 0;
  }

  [objc_allocWithZone(MNRouteDistanceInfo) initWithDistanceRemainingToEndOfLeg:v3 distanceRemainingToEndOfRoute:v32 forLegIndex:v29 forRouteID:v23];
}

id sub_1D312B6D0(void *a1, unint64_t a2, float a3)
{
  v6 = sub_1D3276D70();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 route];
  v11 = [v10 legIndexForRouteCoordinate_];
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    a2 = v11;
    result = [v10 legs];
    if (!result)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v13 = result;
    sub_1D3126084(0, &qword_1EC75BD90, 0x1E69A1C80);
    v14 = sub_1D32771A0();

    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

      goto LABEL_5;
    }
  }

  v15 = sub_1D3277660();

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_5:
  if (a2 >= v15)
  {
LABEL_12:

    return 0;
  }

  v16 = [v10 lastEVStepInLegWithIndex_];
  v17 = [v16 evInfo];

  v18 = [v10 lastEVStep];
  v19 = [v18 evInfo];

  if (!v17)
  {

    return 0;
  }

  if (!v19)
  {

    goto LABEL_12;
  }

  v20 = [v17 remainingBatteryPercentage];
  v21 = [v19 remainingBatteryCharge];
  v22 = [v10 uniqueRouteID];
  if (v22)
  {
    v23 = v22;
    sub_1D3276D60();

    v24 = sub_1D3276D40();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_allocWithZone(MNBatteryChargeInfo) initWithBatteryChargeRemainingAtEndOfLeg:a2 batteryChargeRemainingAtEndOfRoute:v24 forLegIndex:v20 forRouteID:v21];

  return v25;
}

id sub_1D312B9CC()
{
  v1 = OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage___dateFormatter);
  }

  else
  {
    sub_1D314A110(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

unint64_t sub_1D312BA30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D312BAFC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1D312BEE8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1D312BAFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D312BC08(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1D3277730();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1D312BC08(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D312BC54(a1, a2);
  sub_1D312BDFC(&unk_1F4EB11E8);
  return v3;
}

void *sub_1D312BC54(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D312BD84(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D3277730();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D3277150();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D312BD84(v10, 0);
        result = sub_1D32776E0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_1D312BD84(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C3E8, &unk_1D328AED0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1D312BDFC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D31415D4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D312BEE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void MNOfflineCoordinator.navigationSessionState.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__navigationSessionState;
  v5 = *&v1[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__navigationSessionState];
  if (v5 && (v6 = [v5 currentRouteInfo]) != 0)
  {
    v7 = v6;
    v8 = [v6 route];
  }

  else
  {
    v8 = 0;
  }

  v9 = [a1 currentRouteInfo];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 route];
  }

  else
  {
    v11 = 0;
  }

  [a1 copy];
  sub_1D3277610();
  swift_unknownObjectRelease();
  sub_1D3126084(0, &unk_1EC75BD70, off_1E8428DC0);
  v12 = swift_dynamicCast();
  v13 = v72;
  if (!v12)
  {
    v13 = 0;
  }

  v14 = *&v2[v4];
  *&v2[v4] = v13;

  if (!v11)
  {
    if (qword_1EC75BE58 != -1)
    {
      swift_once();
    }

    v28 = sub_1D3276F80();
    __swift_project_value_buffer(v28, qword_1EC760758);
    v11 = sub_1D3276F60();
    v29 = sub_1D3277390();
    if (os_log_type_enabled(v11, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D311E000, v11, v29, "Got a nil route, which should not happen.", v30, 2u);
      MEMORY[0x1D38B6000](v30, -1, -1);
    }

    goto LABEL_43;
  }

  if (!v8)
  {
    goto LABEL_30;
  }

  v15 = v8;
  if (([v15 isOfflineRoute] & 1) != 0 || (-[NSObject isOfflineRoute](v11, sel_isOfflineRoute) & 1) == 0)
  {
    goto LABEL_29;
  }

  v16 = [objc_opt_self() shared];
  v17 = [v16 state];

  if (v17 == 2)
  {
    if (qword_1EC75BE58 != -1)
    {
      swift_once();
    }

    v18 = sub_1D3276F80();
    __swift_project_value_buffer(v18, qword_1EC760758);
    v19 = sub_1D3276F60();
    v20 = sub_1D32773B0();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_28;
    }

    bufa = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v73[0] = v70;
    *bufa = 136315138;
    v21 = GEOOfflineModeAsString();
    v22 = sub_1D32770C0();
    v24 = v23;

    v25 = sub_1D312BA30(v22, v24, v73);

    v26 = bufa;
    *(bufa + 4) = v25;
  }

  else
  {
    if (qword_1EC75BE58 != -1)
    {
      swift_once();
    }

    v31 = sub_1D3276F80();
    __swift_project_value_buffer(v31, qword_1EC760758);
    v19 = sub_1D3276F60();
    v20 = sub_1D32773B0();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_28;
    }

    bufb = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v73[0] = v70;
    *bufb = 136315138;
    v32 = GEOOfflineModeAsString();
    v33 = sub_1D32770C0();
    v35 = v34;

    v36 = sub_1D312BA30(v33, v35, v73);

    v26 = bufb;
    *(bufb + 4) = v36;
  }

  _os_log_impl(&dword_1D311E000, v19, v20, v27, v26, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v70);
  MEMORY[0x1D38B6000](v70, -1, -1);
  MEMORY[0x1D38B6000](v26, -1, -1);
LABEL_28:

LABEL_29:
  sub_1D3126084(0, &unk_1EC75BDC8, 0x1E69A1C68);
  v37 = v15;
  v38 = v11;
  v39 = sub_1D32775F0();

  if ((v39 & 1) == 0)
  {
LABEL_30:
    sub_1D3155224([a1 lastRerouteReason]);
  }

  if ([a1 navigationState] == 5)
  {
    goto LABEL_43;
  }

  v40 = &v2[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__pendingRerouteFinishedState];
  if (v2[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__pendingRerouteFinishedState + 4])
  {
    goto LABEL_43;
  }

  v41 = *v40;
  if (qword_1EC75BE58 != -1)
  {
    swift_once();
  }

  v42 = sub_1D3276F80();
  __swift_project_value_buffer(v42, qword_1EC760758);
  v43 = v2;
  v44 = sub_1D3276F60();
  v45 = sub_1D32773B0();

  if (os_log_type_enabled(v44, v45))
  {
    buf = v44;
    v46 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v73[0] = v66;
    *v46 = 136315650;
    v71 = v41;
    v47 = GEOOfflineStateAsString();
    v48 = sub_1D32770C0();
    v50 = v49;

    v51 = sub_1D312BA30(v48, v50, v73);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2080;
    v53 = *&v43[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState];
    if (v53)
    {
      v54 = (*(*v53 + 104))(v52);
      v56 = v55;
    }

    else
    {
      v56 = 0xE700000000000000;
      v54 = 0x6E776F6E6B6E55;
    }

    v57 = sub_1D312BA30(v54, v56, v73);

    *(v46 + 14) = v57;
    *(v46 + 22) = 2080;
    v58 = [objc_opt_self() shared];
    [v58 state];

    v59 = GEOOfflineStateAsString();
    v60 = sub_1D32770C0();
    v62 = v61;

    v63 = sub_1D312BA30(v60, v62, v73);

    *(v46 + 24) = v63;
    _os_log_impl(&dword_1D311E000, buf, v45, "We have a pending state and are no longer in the rerouting state. Attempting to apply: %s, current state: %s, offline state: %s", v46, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38B6000](v66, -1, -1);
    MEMORY[0x1D38B6000](v46, -1, -1);

    v41 = v71;
  }

  else
  {
  }

  *v40 = 0;
  *(v40 + 4) = 1;
  v64 = *&v43[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState];
  if (v64)
  {
    v65 = *(*v64 + 88);

    v65(v41);

LABEL_43:

    return;
  }

  __break(1u);
}

void sub_1D312CBA0()
{
  v1 = OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage____routeMatcher;
  v2 = *(v0 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage____routeMatcher);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [*(v0 + 16) route];
  v4 = [objc_allocWithZone(MEMORY[0x1E69A2548]) initWithRoute:v3 auditToken:0];

  if (v4)
  {
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v4;

    v2 = 0;
LABEL_4:
    v6 = v2;
    return;
  }

  __break(1u);
}

void (*sub_1D312CC48(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D38B45D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D312CCC8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D312CEB4()
{
  v63 = v0;
  if ((*((*MEMORY[0x1E69E7D40] & **(v0 + 600)) + 0xD8))())
  {
    v1 = *(v0 + 584);
    if (*(v1 + 8))
    {
      v2 = *(v0 + 64);
      *(v0 + 192) = *(v0 + 48);
      *(v0 + 208) = v2;
      *(v0 + 224) = *(v0 + 80);
      v3 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v3;
      goto LABEL_4;
    }

    v42 = (v0 + 232);
    v43 = *(v0 + 600) + OBJC_IVAR___MNETAUpdateRequester_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v44 = *(v0 + 600);
      v45 = *(v0 + 576);
      v46 = *(v43 + 8);
      ObjectType = swift_getObjectType();
      (*(v46 + 8))(&v58, v44, v45, ObjectType, v46);
      swift_unknownObjectRelease();
      if (*(&v58 + 1))
      {
        v48 = v61;
        *(v0 + 192) = v60;
        *(v0 + 208) = v48;
        *(v0 + 224) = v62;
        v49 = v59;
        *(v0 + 160) = v58;
        *(v0 + 176) = v49;
        v1 = *(v0 + 584);
LABEL_4:
        v4 = *(v0 + 160);
        *(v0 + 104) = *(v0 + 176);
        v5 = *(v0 + 208);
        *(v0 + 120) = *(v0 + 192);
        *(v0 + 136) = v5;
        v6 = *(v0 + 600);
        v7 = *(v0 + 872);
        v8 = *(v0 + 576);
        *(v0 + 152) = *(v0 + 224);
        *(v0 + 88) = v4;
        v9 = *(v6 + OBJC_IVAR___MNETAUpdateRequester__auditToken);
        v10 = type metadata accessor for ETAUpdateRequester.AsyncETARequester();
        v11 = objc_allocWithZone(v10);
        v12 = &v11[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__pendingRequest];
        *v12 = 0u;
        *(v12 + 1) = 0u;
        *&v11[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__auditToken] = v9;
        v13 = v9;
        sub_1D312601C(v1, v0 + 304, &qword_1EC75C5D8, &qword_1D328B950);
        *(v0 + 560) = v11;
        *(v0 + 568) = v10;
        v14 = objc_msgSendSuper2((v0 + 560), sel_init);
        *(v0 + 688) = v14;
        sub_1D3126084(0, &qword_1EC75BD68, 0x1E69A1D48);
        v15 = *(v6 + OBJC_IVAR___MNETAUpdateRequester__requestingAppIdentifier);
        v16 = *(v6 + OBJC_IVAR___MNETAUpdateRequester__requestingAppIdentifier + 8);
        v17 = *(v6 + OBJC_IVAR___MNETAUpdateRequester__tripOrigin);
        v18 = *(v6 + OBJC_IVAR___MNETAUpdateRequester__tripOrigin + 8);

        sub_1D312D6C8(v15, v16, 2uLL, v17, v18);
        v20 = v19;
        *(v0 + 696) = v19;
        v21 = swift_allocObject();
        *(v0 + 704) = v21;
        swift_unknownObjectWeakInit();
        v22 = swift_allocObject();
        *(v0 + 712) = v22;
        *(v22 + 16) = v21;
        *(v22 + 40) = *(v0 + 104);
        *(v22 + 56) = *(v0 + 120);
        *(v22 + 72) = *(v0 + 136);
        v23 = *(v0 + 152);
        *(v22 + 24) = *(v0 + 88);
        *(v22 + 88) = v23;
        *(v22 + 96) = v8;
        if (v7)
        {
          sub_1D312601C(v0 + 160, v0 + 376, &qword_1EC75C5D8, &qword_1D328B950);

          v24 = swift_task_alloc();
          *(v0 + 744) = v24;
          *v24 = v0;
          v24[1] = sub_1D3178870;
          v25 = *(v0 + 576);

          return sub_1D31799A4(v20, v21, v0 + 88, v25);
        }

        else
        {
          v31 = *(v0 + 648);
          v32 = *(v0 + 592);
          v33 = *(v0 + 576);
          v34 = v22;
          sub_1D312601C(v0 + 160, v0 + 448, &qword_1EC75C5D8, &qword_1D328B950);

          sub_1D3276D10();
          v35 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v36 = swift_allocObject();
          *(v0 + 720) = v36;
          v36[2] = v35;
          v36[3] = &unk_1D328CBE8;
          v36[4] = v34;
          v36[5] = v20;
          v37 = swift_task_alloc();
          *(v0 + 728) = v37;
          v37[2] = v14;
          v37[3] = v31;
          v37[4] = v33;
          v37[5] = v20;
          v37[6] = v32;
          v37[7] = sub_1D317F324;
          v37[8] = v36;

          v38 = v20;
          v39 = swift_task_alloc();
          *(v0 + 736) = v39;
          *v39 = v0;
          v39[1] = sub_1D312EBE4;
          v40 = *(v0 + 680);
          v41 = *(v0 + 656);

          return MEMORY[0x1EEE6DDE0](v40, 0, 0, 0xD000000000000047, 0x80000001D32903C0, sub_1D312E1E8, v37, v41);
        }
      }

      v50 = v61;
      *(v0 + 264) = v60;
      *(v0 + 280) = v50;
      *(v0 + 296) = v62;
      v51 = v59;
      *v42 = v58;
      *(v0 + 248) = v51;
    }

    else
    {
      *(v0 + 296) = 0;
      *(v0 + 264) = 0u;
      *(v0 + 280) = 0u;
      *v42 = 0u;
      *(v0 + 248) = 0u;
    }

    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v52 = sub_1D3276F80();
    __swift_project_value_buffer(v52, qword_1EC760740);
    v53 = sub_1D3276F60();
    v54 = sub_1D3277390();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1D311E000, v53, v54, "Aborting ETA update request because we have no navigation info.", v55, 2u);
      MEMORY[0x1D38B6000](v55, -1, -1);
    }

    v56 = *(v0 + 608);
    v57 = *(v0 + 576);

    sub_1D3276D10();
    sub_1D3276A30();
    v29 = sub_1D317EA60(v57, 2, 3u, v56);
    sub_1D3125FBC(v0 + 232, &qword_1EC75C5D8, &qword_1D328B950);
  }

  else
  {
    v27 = *(v0 + 608);
    v28 = *(v0 + 576);
    sub_1D3276D10();
    sub_1D3276A30();
    v29 = sub_1D317EA60(v28, 4, 3u, v27);
  }

  v30 = *(v0 + 8);

  return v30(v29);
}

uint64_t sub_1D312D5A0()
{

  v1 = *(v0 + 32);
  if (v1)
  {

    v2 = *(v0 + 72);
    if (v2 >> 60 != 15)
    {
      sub_1D31422C8(*(v0 + 64), v2);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1D312D614()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D312D680(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

void sub_1D312D6C8(uint64_t a1, uint64_t a2, unint64_t a3, double a4, double a5)
{
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 sharedPlatform];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 clientCapabilities];

    [v12 setClientCapabilities_];
    v16 = [objc_allocWithZone(MEMORY[0x1E69A1C20]) init];
    v17 = v16;
    if (v16)
    {
      [v16 setIncludeTravelTimeAggressive_];
      [v17 setIncludeTravelTimeConservative_];
      [v17 setIncludeTravelTimeEstimate_];
      [v17 setExcludeGuidance_];
    }

    [v12 setCommonOptions_];

    v18 = [objc_opt_self() sharedInstance];
    if (!v18)
    {
      goto LABEL_16;
    }

    v19 = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = v12;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1D312DA98;
    *(v21 + 24) = v20;
    v26[4] = sub_1D312DA70;
    v26[5] = v21;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 1107296256;
    v26[2] = sub_1D312DA3C;
    v26[3] = &block_descriptor_141;
    v22 = _Block_copy(v26);
    v23 = v12;

    [v19 shortSessionValues_];
    _Block_release(v22);

    if (a2)
    {
      v24 = sub_1D32770B0();
    }

    else
    {
      v24 = 0;
    }

    [v23 setRequestingAppId_];

    if ((a3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(a3))
    {
      [v23 setMaxAlternateRouteCount_];
      v25 = [objc_allocWithZone(MEMORY[0x1E69A1E70]) initWithGEOCoordinate_];
      [v23 setTripOrigin_];

      return;
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_1D312D9F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1D312DAA0(uint64_t a1, uint64_t a2, int a3, id a4, double a5, double a6, double a7, double a8)
{
  [a4 setSessionID_];
  result = [a4 setSessionRelativeTimestamp_];
  if ((*&a8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a8 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a8 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return [a4 setSessionCreateHour_];
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D312DB9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D312DBEC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(), uint64_t a7, double a8)
{
  v46 = a6;
  v47 = a7;
  v43 = a4;
  v44 = a5;
  v42 = a3;
  v45 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CC78, &qword_1D328CBD0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = sub_1D3276D30();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v48 = a2;
  swift_unknownObjectWeakInit();
  (*(v15 + 16))(v17, v42, v14);
  (*(v11 + 16))(v13, v45, v10);
  v19 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v20 = (v16 + *(v11 + 80) + v19) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  (*(v15 + 32))(v21 + v19, v17, v14);
  v22 = *(v11 + 32);
  v45 = v21;
  v22(v21 + v20, v13, v10);
  if (qword_1EC75BE50 != -1)
  {
    swift_once();
  }

  v23 = sub_1D3276F80();
  __swift_project_value_buffer(v23, qword_1EC760740);
  v24 = sub_1D3276F60();
  v25 = sub_1D32773B0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1D311E000, v24, v25, "Starting opportunistic ETA update request.", v26, 2u);
    MEMORY[0x1D38B6000](v26, -1, -1);
  }

  v27 = [objc_allocWithZone(MEMORY[0x1E69A1C50]) init];
  v28 = v48;
  v29 = &v48[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__pendingRequest];
  v30 = *&v48[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__pendingRequest];
  v31 = *&v48[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__pendingRequest + 8];
  v32 = *&v48[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__pendingRequest + 16];
  v33 = *&v48[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__pendingRequest + 24];
  *v29 = v43;
  v29[1] = v27;
  v34 = v44;
  v29[2] = MEMORY[0x1E69E7CC0];
  v29[3] = v34;
  v35 = v34;
  v36 = v27;
  sub_1D312E1FC(v30, v31, v32, v33);
  v37 = *&v28[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__auditToken];
  v54 = v46;
  v55 = v47;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_1D317DF6C;
  v53 = &block_descriptor_73;
  v38 = _Block_copy(&aBlock);

  v54 = sub_1D312E2E8;
  v55 = v45;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_1D312E254;
  v53 = &block_descriptor_76;
  v39 = _Block_copy(&aBlock);

  v40 = type metadata accessor for ETAUpdateRequester.AsyncETARequester();
  v49.receiver = v28;
  v49.super_class = v40;
  objc_msgSendSuper2(&v49, sel_sendConditionalETATrafficUpdateRequest_timeWindowDuration_auditToken_throttleToken_willSendRequestHandler_finishedHandler_, v35, v37, 0, v38, v39, a8);
  _Block_release(v39);
  _Block_release(v38);
}

uint64_t sub_1D312E08C()
{
  v1 = sub_1D3276D30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CC78, &qword_1D328CBD0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

void sub_1D312E1FC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a2)
  {
  }
}

void sub_1D312E25C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1D312E2E8(void *a1, void *a2)
{
  v5 = *(sub_1D3276D30() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CC78, &qword_1D328CBD0) - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_1D312E3DC(a1, a2, v9, v2 + v6, v10);
}

void sub_1D312E3DC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a5;
  v48 = a4;
  v7 = sub_1D3276D30();
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v47 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - v10;
  v12 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v49 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v42 - v15);
  if (qword_1EC75BE50 != -1)
  {
    swift_once();
  }

  v17 = sub_1D3276F80();
  __swift_project_value_buffer(v17, qword_1EC760740);
  v18 = sub_1D3276F60();
  v19 = sub_1D3277380();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = a2;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1D311E000, v18, v19, "Opportunistic request finished handler.", v21, 2u);
    v22 = v21;
    a2 = v20;
    MEMORY[0x1D38B6000](v22, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    if (a2)
    {
      v52 = a2;
      v25 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C348, &qword_1D328ACD0);
      sub_1D3126084(0, &qword_1EC75C350, 0x1E696ABC0);
      if (swift_dynamicCast())
      {
        v26 = v51;
        if ([v51 code] == -2)
        {
          v27 = sub_1D3276F60();
          v28 = sub_1D3277380();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            *v29 = 0;
            _os_log_impl(&dword_1D311E000, v27, v28, "Got error callback but request was cancelled. Ignoring.", v29, 2u);
            MEMORY[0x1D38B6000](v29, -1, -1);
          }

          return;
        }
      }
    }

    v43 = a2;
    v44 = a1;
    v30 = &v24[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__pendingRequest];
    v31 = *&v24[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__pendingRequest + 8];
    v42 = v24;
    if (v31)
    {
      v32 = *(v30 + 2);
      v33 = *(v30 + 3);
      v34 = *v30;
      *v30 = 0u;
      *(v30 + 1) = 0u;
      (*(v45 + 16))(v11, v48, v46);
      v35 = v31;

      v36 = v33;
      sub_1D3276D10();
      sub_1D3276A20();

      *v16 = v34;
      v37 = (v16 + v12[6]);
      *v37 = v34;
      v37[1] = v31;
      v37[2] = v32;
      v37[3] = v33;
      v39 = v43;
      v38 = v44;
      *(v16 + v12[7]) = v44;
      *(v16 + v12[8]) = v39;
      sub_1D312E8CC(v16, v49);
      v40 = v39;
      v41 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CC78, &qword_1D328CBD0);
      sub_1D3277230();

      sub_1D312EB88(v16);
    }

    else
    {
      sub_1D32777B0("Fatal error", 11, 2, 0xD000000000000026, 0x80000001D3290490, "Navigation/ETAUpdateRequester.swift", 35, 2, 682, 0);
      __break(1u);
    }
  }
}

uint64_t sub_1D312E894(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D312E8CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D312EB88(uint64_t a1)
{
  v2 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D312EBE4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D312ED84, 0, 0);
}

uint64_t sub_1D312ECFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D312ED44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D312ED84()
{
  v1 = v0[87];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[79];

  (*(v3 + 8))(v2, v4);

  v5 = v0[85];
  v6 = v0[82];
  v7 = *(v5 + *(v6 + 32));
  v0[99] = v7;
  if (v7 && (v8 = (v5 + *(v6 + 24)), v9 = v8[1], (v0[100] = v9) != 0))
  {
    v10 = v8[3];
    v0[101] = v10;
    v11 = v8[2];
    v0[102] = v11;
    v12 = *v8;
    v13 = v7;
    sub_1D3130A0C(v12, v9, v11, v10);
    v14 = swift_task_alloc();
    v0[103] = v14;
    *v14 = v0;
    v14[1] = sub_1D31336A0;
    v15 = v0[78];

    return sub_1D317AEE8(v15, v12, v9, v11, v10, v7);
  }

  else
  {
    v17 = v0[75];
    v18 = sub_1D312F05C(v5);
    v0[104] = v18;
    v19 = swift_allocObject();
    v0[105] = v19;
    *(v19 + 16) = v17;
    *(v19 + 24) = v18;
    v20 = v18;
    v21 = v17;
    v22 = MNNavigationQueue();
    v0[106] = v22;
    if (v22)
    {
      v30 = v22;
      v31 = swift_task_alloc();
      v0[107] = v31;
      v31[2] = v30;
      v31[3] = sub_1D31311B0;
      v31[4] = v19;
      v22 = swift_task_alloc();
      v0[108] = v22;
      *v22 = v0;
      v22[1] = sub_1D317918C;
      v27 = sub_1D3130CE8;
      v26 = 0x80000001D32903A0;
      v29 = MEMORY[0x1E69E7CA8] + 8;
      v23 = 0;
      v24 = 0;
      v25 = 0xD000000000000010;
      v28 = v31;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DDE0](v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_1D312F01C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1D312F05C(uint64_t *a1)
{
  v108 = sub_1D3276D70();
  v110 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CDB0, &unk_1D328B750);
  MEMORY[0x1EEE9AC00](v109);
  v4 = &v98 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C570, &qword_1D328B720);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v98 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v98 - v12;
  v14 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D312E8CC(a1, v16);
  v17 = *(a1 + v14[7]);
  sub_1D312FE88(v17, *(a1 + v14[8]));
  if (v19 != 0xFF)
  {
    v20 = v18;
    v21 = v19;
    v22 = sub_1D3130814(v18, v19, 1, v16);
    sub_1D317F8C8(v20, v21);
LABEL_44:
    sub_1D312EB88(v16);
    return v22;
  }

  v103 = v11;
  v104 = v13;
  v102 = v8;
  v105 = v4;
  v106 = v16;
  if (!v17 || (v23 = (a1 + v14[6]), (v24 = v23[1]) == 0))
  {
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v40 = sub_1D3276F80();
    __swift_project_value_buffer(v40, qword_1EC760740);
    v41 = sub_1D3276F60();
    v42 = sub_1D32773A0();
    v43 = os_log_type_enabled(v41, v42);
    v16 = v106;
    if (v43)
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1D311E000, v41, v42, "Got a successful response but missing request information.", v44, 2u);
      MEMORY[0x1D38B6000](v44, -1, -1);
    }

    v22 = sub_1D3130814(0, 1, 1, v16);
    goto LABEL_44;
  }

  v25 = v17;
  v26 = *v23;
  v28 = v23[2];
  v27 = v23[3];
  v29 = v111;
  v30 = &v111[OBJC_IVAR___MNETAUpdateRequester_delegate];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v45 = v25;
    v46 = v26;
    v31 = v24;
    v47 = v27;
    sub_1D3130A0C(v46, v24, v28, v27);
    v121 = 0;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
LABEL_16:
    v16 = v106;
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v48 = sub_1D3276F80();
    __swift_project_value_buffer(v48, qword_1EC760740);
    v49 = sub_1D3276F60();
    v50 = sub_1D32773B0();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1D311E000, v49, v50, "Got a successful response but we got no navigation info. Ignoring response.", v51, 2u);
      MEMORY[0x1D38B6000](v51, -1, -1);
    }

    v22 = sub_1D3130814(2, 3, 1, v16);

    sub_1D3125FBC(&v117, &qword_1EC75C5D8, &qword_1D328B950);
    goto LABEL_44;
  }

  v31 = v24;
  v32 = *(v30 + 1);
  ObjectType = swift_getObjectType();
  v33 = *a1;
  v99 = *(v32 + 8);
  v98 = v25;
  v101 = v28;
  sub_1D3130A0C(v26, v31, v28, v27);
  v99(v122, v29, v33, ObjectType, v32);
  v114 = v122[2];
  v115 = v122[3];
  v116 = v123;
  v113 = v122[1];
  v112 = v122[0];
  swift_unknownObjectRelease();
  if (!*(&v122[0] + 1))
  {
    v47 = v27;
    v119 = v114;
    v120 = v115;
    v121 = v116;
    v117 = v112;
    v118 = v113;
    goto LABEL_16;
  }

  v111 = v27;
  v34 = [*(&v122[0] + 1) route];
  v35 = v31;
  v36 = [v34 uniqueRouteID];
  v99 = v31;
  ObjectType = v34;
  if (v36)
  {
    v37 = v104;
    v38 = v36;
    sub_1D3276D60();

    v39 = 0;
  }

  else
  {
    v39 = 1;
    v37 = v104;
  }

  v52 = v103;
  v53 = v109;
  v54 = v110;
  v55 = *(v110 + 56);
  v56 = v108;
  v55(v37, v39, 1, v108);
  v57 = [v35 uniqueRouteID];
  sub_1D3276D60();

  v55(v52, 0, 1, v56);
  v58 = *(v53 + 48);
  v59 = v105;
  sub_1D312601C(v37, v105, &qword_1EC75C570, &qword_1D328B720);
  v60 = v56;
  v61 = v54;
  sub_1D312601C(v52, v59 + v58, &qword_1EC75C570, &qword_1D328B720);
  v62 = *(v54 + 48);
  if (v62(v59, 1, v60) == 1)
  {
    sub_1D3125FBC(v52, &qword_1EC75C570, &qword_1D328B720);
    v63 = v105;
    sub_1D3125FBC(v37, &qword_1EC75C570, &qword_1D328B720);
    v64 = v62(v63 + v58, 1, v60);
    v65 = ObjectType;
    if (v64 == 1)
    {
      sub_1D3125FBC(v63, &qword_1EC75C570, &qword_1D328B720);
      v16 = v106;
      v66 = v111;
      v67 = v98;
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  v68 = v102;
  sub_1D312601C(v59, v102, &qword_1EC75C570, &qword_1D328B720);
  if (v62(v59 + v58, 1, v60) == 1)
  {
    sub_1D3125FBC(v103, &qword_1EC75C570, &qword_1D328B720);
    v63 = v105;
    sub_1D3125FBC(v104, &qword_1EC75C570, &qword_1D328B720);
    (*(v61 + 8))(v68, v60);
    v65 = ObjectType;
LABEL_27:
    sub_1D3125FBC(v63, &unk_1EC75CDB0, &unk_1D328B750);
    v16 = v106;
    v66 = v111;
    v67 = v98;
LABEL_28:
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v69 = sub_1D3276F80();
    __swift_project_value_buffer(v69, qword_1EC760740);
    v70 = sub_1D3276F60();
    v71 = sub_1D32773B0();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_1D311E000, v70, v71, "Got a successful response but the current route is different from the one in the request. Ignoring response.", v72, 2u);
      MEMORY[0x1D38B6000](v72, -1, -1);
    }

    v73 = 3;
    goto LABEL_43;
  }

  v74 = v107;
  (*(v61 + 32))(v107, v59 + v58, v60);
  sub_1D3125484();
  v75 = sub_1D32770A0();
  v76 = *(v61 + 8);
  v76(v74, v60);
  sub_1D3125FBC(v103, &qword_1EC75C570, &qword_1D328B720);
  sub_1D3125FBC(v104, &qword_1EC75C570, &qword_1D328B720);
  v76(v68, v60);
  sub_1D3125FBC(v59, &qword_1EC75C570, &qword_1D328B720);
  v16 = v106;
  v65 = ObjectType;
  v66 = v111;
  v67 = v98;
  if ((v75 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_34:
  if (![v35 updateForResponse:v67 route:v65])
  {
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v87 = sub_1D3276F80();
    __swift_project_value_buffer(v87, qword_1EC760740);
    v88 = sub_1D3276F60();
    v89 = sub_1D32773A0();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_1D311E000, v88, v89, "Got a successful response but we somehow failed to update the ETA route. Check the GEOComposedETARoute category logs.", v90, 2u);
      MEMORY[0x1D38B6000](v90, -1, -1);
    }

    v73 = 1;
LABEL_43:
    v22 = sub_1D3130814(v73, 3, 1, v16);

    sub_1D3125FBC(v122, &qword_1EC75C5D8, &qword_1D328B950);

    goto LABEL_44;
  }

  v77 = [v66 routeAttributes];
  if (v77)
  {
    v78 = v77;
    v79 = v67;
    v80 = [v65 styleAttributes];
    v81 = objc_allocWithZone(MEMORY[0x1E69A2538]);
    sub_1D3126084(0, &qword_1EC75BD88, 0x1E69A1CC8);
    v82 = sub_1D3277190();
    v83 = [v81 initWithWaypoints:v82 routeAttributes:v78 etauResponse:v79 styleAttributes:v80];

    v84 = [v83 allETAUAlternateRouteInfos];
    if (v84)
    {
      v85 = v84;
      sub_1D3126084(0, &qword_1EC75BDA8, off_1E8428C20);
      v86 = sub_1D32771A0();
    }

    else
    {
      v86 = 0;
    }

    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v92 = sub_1D3276F80();
    __swift_project_value_buffer(v92, qword_1EC760740);

    v93 = sub_1D3276F60();
    v94 = sub_1D32773B0();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 134217984;
      if (v86)
      {
        if (v86 >> 62)
        {
          v96 = sub_1D3277660();
        }

        else
        {
          v96 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }

      else
      {
        v96 = 0;
      }

      *(v95 + 4) = v96;

      _os_log_impl(&dword_1D311E000, v93, v94, "Got a successful ETA update response with %ld alternate routes.", v95, 0xCu);
      MEMORY[0x1D38B6000](v95, -1, -1);
    }

    else
    {
    }

    v97 = v35;
    v22 = sub_1D3130814(v99, v86, 0, v16);

    sub_1D3125FBC(v122, &qword_1EC75C5D8, &qword_1D328B950);
    goto LABEL_44;
  }

  result = sub_1D312EB88(v16);
  __break(1u);
  return result;
}

void sub_1D312FE88(void *a1, id a2)
{
  if (!a2)
  {
    if (a1)
    {
      v13 = a1;
      if ([v13 status])
      {
        if (qword_1EC75BE50 != -1)
        {
          swift_once();
        }

        v14 = sub_1D3276F80();
        __swift_project_value_buffer(v14, qword_1EC760740);
        v15 = v13;
        v16 = sub_1D3276F60();
        v17 = sub_1D3277390();
        if (!os_log_type_enabled(v16, v17))
        {

          return;
        }

        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v56[0] = v19;
        *v18 = 136315138;
        v20 = [v15 status];
        if (v20 <= 19)
        {
          if (v20 > 1)
          {
            if (v20 == 2)
            {
              v21 = @"STATUS_INCOMPLETE";
              v47 = @"STATUS_INCOMPLETE";
              goto LABEL_53;
            }

            if (v20 == 5)
            {
              v21 = @"INVALID_REQUEST";
              v44 = @"INVALID_REQUEST";
              goto LABEL_53;
            }
          }

          else
          {
            if (!v20)
            {
              v21 = @"STATUS_SUCCESS";
              v46 = @"STATUS_SUCCESS";
              goto LABEL_53;
            }

            if (v20 == 1)
            {
              v21 = @"STATUS_FAILED";
              v43 = @"STATUS_FAILED";
              goto LABEL_53;
            }
          }
        }

        else if (v20 <= 39)
        {
          if (v20 == 20)
          {
            v21 = @"FAILED_NO_RESULT";
            v49 = @"FAILED_NO_RESULT";
            goto LABEL_53;
          }

          if (v20 == 30)
          {
            v21 = @"NEEDS_REFINEMENT";
            v45 = @"NEEDS_REFINEMENT";
            goto LABEL_53;
          }
        }

        else
        {
          switch(v20)
          {
            case '(':
              v21 = @"FAILED_NOT_AUTHORIZED";
              v48 = @"FAILED_NOT_AUTHORIZED";
              goto LABEL_53;
            case '2':
              v21 = @"STATUS_DEDUPED";
              v50 = @"STATUS_DEDUPED";
              goto LABEL_53;
            case '<':
              v21 = @"VERSION_MISMATCH";
              v22 = @"VERSION_MISMATCH";
              goto LABEL_53;
          }
        }

        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v20];
LABEL_53:
        v51 = v21;

        if (v51)
        {
          v52 = sub_1D32770C0();
          v54 = v53;

          v55 = sub_1D312BA30(v52, v54, v56);

          *(v18 + 4) = v55;
          _os_log_impl(&dword_1D311E000, v16, v17, "Got an ETA update response with error code: %s", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v19);
          MEMORY[0x1D38B6000](v19, -1, -1);
          MEMORY[0x1D38B6000](v18, -1, -1);
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }

    else
    {
      if (qword_1EC75BE50 != -1)
      {
        swift_once();
      }

      v32 = sub_1D3276F80();
      __swift_project_value_buffer(v32, qword_1EC760740);
      v13 = sub_1D3276F60();
      v33 = sub_1D3277390();
      if (os_log_type_enabled(v13, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1D311E000, v13, v33, "Got an ETA request callback with no response or error.", v34, 2u);
        MEMORY[0x1D38B6000](v34, -1, -1);
      }
    }

    return;
  }

  v56[2] = a2;
  v3 = a2;
  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C348, &qword_1D328ACD0);
  if (swift_dynamicCast())
  {
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v5 = sub_1D3276F80();
    __swift_project_value_buffer(v5, qword_1EC760740);
    v6 = a2;
    v7 = sub_1D3276F60();
    v8 = sub_1D3277390();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1D311E000, v7, v8, "Error requesting an ETA update: %@", v9, 0xCu);
      sub_1D3125FBC(v10, &qword_1EC75C5B0, &unk_1D328C300);
      MEMORY[0x1D38B6000](v10, -1, -1);
      MEMORY[0x1D38B6000](v9, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v23 = sub_1D3276BE0();
    v24 = [v23 _geo_etaTrafficUpdateErrorInfo];

    if (v24)
    {
      if (qword_1EC75BE50 != -1)
      {
        swift_once();
      }

      v25 = sub_1D3276F80();
      __swift_project_value_buffer(v25, qword_1EC760740);
      v26 = v24;
      v27 = sub_1D3276F60();
      v28 = sub_1D3277390();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        *(v29 + 4) = v26;
        *v30 = v24;
        v31 = v26;
        _os_log_impl(&dword_1D311E000, v27, v28, "Error requesting an ETA update: %@", v29, 0xCu);
        sub_1D3125FBC(v30, &qword_1EC75C5B0, &unk_1D328C300);
        MEMORY[0x1D38B6000](v30, -1, -1);
        MEMORY[0x1D38B6000](v29, -1, -1);
      }
    }

    else
    {
      if (qword_1EC75BE50 != -1)
      {
        swift_once();
      }

      v35 = sub_1D3276F80();
      __swift_project_value_buffer(v35, qword_1EC760740);
      v36 = a2;
      v37 = sub_1D3276F60();
      v38 = sub_1D3277390();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = a2;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_1D311E000, v37, v38, "Error requesting an ETA update: %@", v39, 0xCu);
        sub_1D3125FBC(v40, &qword_1EC75C5B0, &unk_1D328C300);
        MEMORY[0x1D38B6000](v40, -1, -1);
        MEMORY[0x1D38B6000](v39, -1, -1);
      }
    }
  }
}

__n128 sub_1D3130628@<Q0>(uint64_t a1@<X8>)
{
  sub_1D3130A60(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

id sub_1D3130814(void *a1, uint64_t a2, int a3, char *a4)
{
  v28 = a3;
  v29 = a2;
  v6 = sub_1D3276A60();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a4;
  v11 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
  v12 = &a4[v11[6]];
  if (*(v12 + 1))
  {
    v13 = *(v12 + 3);
    v14 = v13;
  }

  else
  {
    v13 = 0;
  }

  v27 = *&a4[v11[7]];
  v15 = *(v7 + 16);
  v15(v9, &a4[v11[5]], v6);
  v16 = type metadata accessor for ETAUpdateRequester.ResponseInfo(0);
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_reason] = v10;
  v18 = &v17[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_result];
  v19 = v6;
  v26 = v6;
  v20 = v29;
  *v18 = a1;
  *(v18 + 1) = v20;
  v21 = v28 & 1;
  v18[16] = v28 & 1;
  *&v17[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_request] = v13;
  v22 = v27;
  *&v17[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_response] = v27;
  v15(&v17[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_responseTime], v9, v19);
  sub_1D3130C98(a1, v20, v21);
  v30.receiver = v17;
  v30.super_class = v16;
  v23 = v22;
  v24 = objc_msgSendSuper2(&v30, sel_init);
  (*(v7 + 8))(v9, v26);
  return v24;
}

void sub_1D3130A0C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2;

    v5 = a4;
  }
}

void sub_1D3130A60(void *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 navigationSessionState];
  v5 = [v4 currentRouteInfo];
  if (!v5)
  {

    v6 = 0;
LABEL_8:
    v9 = 0;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
LABEL_14:
    *a1 = v18;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v9;
    a1[4] = v17;
    a1[5] = v12;
    a1[6] = v14;
    a1[7] = v15;
    a1[8] = v16;
    return;
  }

  v6 = [v4 location];
  if (!v6)
  {

    v5 = 0;
    goto LABEL_8;
  }

  v7 = [v4 navigationState];
  v8 = [v4 targetLegIndex];
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v8;
    v22 = v7;
    v21 = [v2 hasVisitedFirstStop];
    v10 = [v2 serverSessionState];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1D3276C80();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xF000000000000000;
    }

    v15 = [v2 recentLocationHistory];
    v19 = [v4 userIncidentReports];
    if (v19)
    {
      v20 = v19;
      sub_1D3126084(0, &qword_1EC75CC88, 0x1E69A2700);
      v16 = sub_1D32771A0();
    }

    else
    {

      v16 = 0;
    }

    v18 = v22;
    v17 = v21;
    goto LABEL_14;
  }

  __break(1u);
}

id sub_1D3130C98(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return sub_1D317EF94(a1, a2);
  }

  else
  {

    return a1;
  }
}

uint64_t sub_1D3130CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  v24 = a2;
  v5 = sub_1D3276FB0();
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D3276FD0();
  v8 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA10, &unk_1D328B960);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  (*(v12 + 16))(&v20 - v13, a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 16) = v20;
  *(v16 + 24) = v17;
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = sub_1D3131110;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3122E0C;
  aBlock[3] = &block_descriptor_2;
  v18 = _Block_copy(aBlock);

  sub_1D3276FC0();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1D3122E64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C468, &qword_1D328C630);
  sub_1D3122EBC();
  sub_1D3277630();
  MEMORY[0x1D38B42B0](0, v10, v7, v18);
  _Block_release(v18);
  (*(v23 + 8))(v7, v5);
  (*(v8 + 8))(v10, v22);
}

uint64_t sub_1D3131040()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA10, &unk_1D328B960);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D3131110()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA10, &unk_1D328B960);
  (*(v0 + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA10, &unk_1D328B960);
  return sub_1D3277230();
}

uint64_t sub_1D31311B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR___MNETAUpdateRequester_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 24))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D313125C(__objc2_class **a1)
{
  v2 = v1;
  v4 = sub_1D3276D70();
  v51 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v45[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CDB0, &unk_1D328B750);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C570, &qword_1D328B720);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v50 = &v45[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v45[-v13];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v45[-v15];
  if (qword_1EC75C028 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v17 = sub_1D3276F80();
    __swift_project_value_buffer(v17, qword_1EC7608D0);
    v18 = sub_1D3276F60();
    v19 = sub_1D3277380();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D311E000, v18, v19, "Received didReceiveResponseInfo callback.", v20, 2u);
      MEMORY[0x1D38B6000](v20, -1, -1);
    }

    v21 = [v2 navigationSessionState];
    v22 = [v21 currentRouteInfo];

    if (!v22)
    {
      break;
    }

    if (*(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_result + 16))
    {
      goto LABEL_35;
    }

    v48 = *(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_result);
    v23 = [v22 route];
    v24 = [v23 uniqueRouteID];

    v52 = v2;
    v47 = a1;
    if (v24)
    {
      sub_1D3276D60();

      v25 = v51;
      v26 = *(v51 + 56);
      v26(v16, 0, 1, v4);
    }

    else
    {
      v25 = v51;
      v26 = *(v51 + 56);
      v26(v16, 1, 1, v4);
    }

    v27 = [(__objc2_class *)v48 uniqueRouteID];
    sub_1D3276D60();

    v26(v14, 0, 1, v4);
    v28 = *(v6 + 48);
    sub_1D31254DC(v16, v8);
    sub_1D31254DC(v14, &v8[v28]);
    v29 = *(v25 + 48);
    if (v29(v8, 1, v4) == 1)
    {
      sub_1D3125FBC(v14, &qword_1EC75C570, &qword_1D328B720);
      sub_1D3125FBC(v16, &qword_1EC75C570, &qword_1D328B720);
      v30 = v29(&v8[v28], 1, v4);
      v31 = v52;
      a1 = v47;
      if (v30 != 1)
      {
        goto LABEL_14;
      }

      sub_1D3125FBC(v8, &qword_1EC75C570, &qword_1D328B720);
    }

    else
    {
      v32 = v50;
      sub_1D31254DC(v8, v50);
      if (v29(&v8[v28], 1, v4) == 1)
      {
        sub_1D3125FBC(v14, &qword_1EC75C570, &qword_1D328B720);
        sub_1D3125FBC(v16, &qword_1EC75C570, &qword_1D328B720);
        (*(v51 + 8))(v32, v4);
        a1 = v47;
LABEL_14:
        sub_1D3125FBC(v8, &unk_1EC75CDB0, &unk_1D328B750);
LABEL_34:

LABEL_35:
        sub_1D31332C4(a1);

        return;
      }

      v33 = v51;
      v34 = &v8[v28];
      v35 = v49;
      (*(v51 + 32))(v49, v34, v4);
      sub_1D3125484();
      v46 = sub_1D32770A0();
      v36 = *(v33 + 8);
      v36(v35, v4);
      sub_1D3125FBC(v14, &qword_1EC75C570, &qword_1D328B720);
      sub_1D3125FBC(v16, &qword_1EC75C570, &qword_1D328B720);
      v36(v32, v4);
      sub_1D3125FBC(v8, &qword_1EC75C570, &qword_1D328B720);
      v31 = v52;
      a1 = v47;
      if ((v46 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    [v22 updateWithETARoute:v48 etaResponse:*(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_response)];
    v37 = [v31 locationTracker];
    v38 = objc_allocWithZone(type metadata accessor for MNETAUpdateResponseInfo(0));
    v39 = a1;
    v40 = sub_1D3131A3C(v39);

    [v37 updateForETAUpdateResponse_];
    v41 = [v31 destinationArrivalInfoUpdater];
    if (v41)
    {
      v42 = v41;
      sub_1D3131CE0();
    }

    v43 = [v31 observers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CDC0, &qword_1D328CF70);
    v44 = sub_1D32771A0();

    if (v44 >> 62)
    {
      v6 = sub_1D3277660();
      if (!v6)
      {
LABEL_33:

        a1 = v47;
        goto LABEL_34;
      }
    }

    else
    {
      v6 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_33;
      }
    }

    v14 = 0;
    v8 = (v44 & 0xFFFFFFFFFFFFFF8);
    v2 = &selRef_navigationServiceDidArrive_;
    a1 = &off_1E8431000;
    while ((v44 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1D38B45D0](v14, v44);
      v16 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        goto LABEL_29;
      }

LABEL_25:
      if ([v4 respondsToSelector_])
      {
        [v4 navigationSession:v52 didUpdateETAResponseForRoute:v22];
      }

      swift_unknownObjectRelease();
      ++v14;
      if (v16 == v6)
      {
        goto LABEL_33;
      }
    }

    if (v14 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

    v4 = *(v44 + 8 * v14 + 32);
    swift_unknownObjectRetain();
    v16 = (v14 + 1);
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_25;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }
}

id sub_1D3131A3C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_reason] = *(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_reason);
  v3 = *(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_request);
  *&v1[OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_request] = v3;
  v4 = *(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_response);
  *&v1[OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_response] = v4;
  v5 = OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_responseTime;
  v6 = OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_responseTime;
  v7 = sub_1D3276A60();
  (*(*(v7 - 8) + 16))(&v1[v6], a1 + v5, v7);
  v8 = a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_result;
  v10 = *(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_result);
  v9 = *(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_result + 8);
  if (*(v8 + 16))
  {
    sub_1D317EF40();
    v11 = swift_allocError();
    *v12 = v10;
    *(v12 + 8) = v9;
    sub_1D3130C98(v10, v9, 1);
    v13 = v4;
    v14 = v3;
    sub_1D3130C98(v10, v9, 1);
    v15 = sub_1D3276BE0();
    sub_1D3132068(v10, v9, 1);
    *&v1[OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_error] = v15;

    *&v1[OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_etaRoute] = 0;
    *&v1[OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_alternateRoutes] = 0;
  }

  else
  {
    *&v1[OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_error] = 0;
    *&v1[OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_etaRoute] = v10;
    *&v1[OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_alternateRoutes] = v9;
    v16 = v4;
    v17 = v3;
    sub_1D3130C98(v10, v9, 0);
  }

  v19.receiver = v1;
  v19.super_class = type metadata accessor for MNETAUpdateResponseInfo(0);
  return objc_msgSendSuper2(&v19, sel_init);
}

id sub_1D3131CE0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v30 - v3);
  if (qword_1EC75BE40 != -1)
  {
LABEL_28:
    swift_once();
  }

  v5 = sub_1D3276F80();
  __swift_project_value_buffer(v5, qword_1EC760710);
  v6 = sub_1D3276F60();
  v7 = sub_1D3277370();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D311E000, v6, v7, "Updating display ETAs because of a new ETAU response.", v8, 2u);
    MEMORY[0x1D38B6000](v8, -1, -1);
  }

  result = [*(v1 + OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__navigationSessionState) location];
  if (result)
  {
    v10 = result;
    v11 = *(v1 + OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__routes);
    if (v11 >> 62)
    {
      v12 = sub_1D3277660();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_dateOverride;
    v14 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_delegate;

    swift_beginAccess();
    v30[1] = v14;
    swift_beginAccess();
    if (v12)
    {
      v15 = 0;
      v34 = v11 & 0xFFFFFFFFFFFFFF8;
      v35 = v11 & 0xC000000000000001;
      v31 = v13;
      v32 = v4;
      v33 = v11;
      do
      {
        if (v35)
        {
          v17 = MEMORY[0x1D38B45D0](v15, v11);
          v18 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
LABEL_24:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v15 >= *(v34 + 16))
          {
            __break(1u);
            goto LABEL_28;
          }

          v17 = *(v11 + 8 * v15 + 32);

          v18 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_24;
          }
        }

        v36 = v18;
        v19 = v1;
        sub_1D312601C(v1 + v13, v4, &qword_1EC75C4F0, &qword_1D328B580);
        v20 = sub_1D312596C(v17, v10);
        sub_1D3126114(v20, v4, v21);
        v22 = v10;
        v24 = v23;
        sub_1D3125FBC(v4, &qword_1EC75C4F0, &qword_1D328B580);
        if (v24)
        {
          v25 = v33;
          v26 = v22;
          v27 = [*(v17 + 16) displayETAInfo];
          if (v27)
          {
            v28 = v27;
            Strong = swift_unknownObjectWeakLoadStrong();
            v16 = v36;
            if (Strong)
            {
              [Strong remainingTimeUpdater:v19 didUpdateDisplayETAInfo:v28 reason:4];

              swift_unknownObjectRelease();
            }

            else
            {
            }

            v1 = v19;
            v10 = v26;
            v11 = v25;
            v13 = v31;
            v4 = v32;
            goto LABEL_11;
          }

          v10 = v22;
          v11 = v25;
          v13 = v31;
          v4 = v32;
        }

        else
        {

          v10 = v22;
          v11 = v33;
        }

        v16 = v36;
LABEL_11:
        ++v15;
      }

      while (v16 != v12);
    }
  }

  return result;
}

void sub_1D3132068(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {

    sub_1D317EFB8(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1D31323C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1D3132404(uint64_t *a1@<X8>, double a2@<D0>)
{
  v3 = a2 * 1000.0;
  v4 = COERCE_UNSIGNED_INT64(a2 * 1000.0) & 0x7FF0000000000000;
  if (v4 != 0x7FF0000000000000 || (COERCE_UNSIGNED_INT64(a2 * 1000.0) & 0xFFFFFFFFFFFFFLL) == 0)
  {
    if (v3 >= 9.22337204e18)
    {
      if (qword_1EC75BFF8 != -1)
      {
        swift_once();
      }

      v8 = sub_1D3276F80();
      __swift_project_value_buffer(v8, qword_1EC760858);
      v9 = sub_1D3277390();
      v10 = sub_1D3276F60();
      if (!os_log_type_enabled(v10, v9))
      {

        v6 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      v11 = swift_slowAlloc();
      *v11 = 134218496;
      *(v11 + 4) = v3;
      *(v11 + 12) = 2048;
      *(v11 + 14) = 0x43E0000000000000;
      *(v11 + 22) = 2048;
      v6 = 0x7FFFFFFFFFFFFFFFLL;
      *(v11 + 24) = 0x7FFFFFFFFFFFFFFFLL;
      v12 = "DispatchTimeInterval: timeInterval (%f) too large for platform Double(Int.max) %f. Clamped to Int.max (%ld)";
      goto LABEL_19;
    }

    if (v3 <= -9.22337204e18)
    {
      if (qword_1EC75BFF8 == -1)
      {
LABEL_17:
        v13 = sub_1D3276F80();
        __swift_project_value_buffer(v13, qword_1EC760858);
        v9 = sub_1D3277390();
        v10 = sub_1D3276F60();
        if (!os_log_type_enabled(v10, v9))
        {

          v6 = 0x8000000000000000;
          goto LABEL_22;
        }

        v11 = swift_slowAlloc();
        *v11 = 134218496;
        *(v11 + 4) = v3;
        *(v11 + 12) = 2048;
        *(v11 + 14) = 0xC3E0000000000000;
        *(v11 + 22) = 2048;
        v6 = 0x8000000000000000;
        *(v11 + 24) = 0x8000000000000000;
        v12 = "DispatchTimeInterval: timeInterval (%f) too small for platform Double(Int.min) %f. Clamped to Int.min (%ld)";
LABEL_19:
        _os_log_impl(&dword_1D311E000, v10, v9, v12, v11, 0x20u);
        MEMORY[0x1D38B6000](v11, -1, -1);

        goto LABEL_22;
      }
    }

    else
    {
      if (v4 != 0x7FF0000000000000)
      {
        if (v3 <= -9.22337204e18)
        {
          __break(1u);
        }

        else if (v3 < 9.22337204e18)
        {
          v6 = v3;
LABEL_22:
          *a1 = v6;
          v7 = MEMORY[0x1E69E7F38];
          goto LABEL_23;
        }

        __break(1u);
        return;
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_17;
  }

  v7 = MEMORY[0x1E69E7F40];
LABEL_23:
  v14 = *v7;
  v15 = sub_1D3276F90();
  v16 = *(*(v15 - 8) + 104);

  v16(a1, v14, v15);
}

id MNGetRouteFromSubpathWithID(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    *v30 = 0;
    v31 = v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__2637;
    v34 = __Block_byref_object_dispose__2638;
    v35 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__2637;
    v28 = __Block_byref_object_dispose__2638;
    v29 = 0;
    v7 = MNGetMNRouteStorageLog();
    v8 = os_signpost_id_generate(v7);

    v9 = MNGetMNRouteStorageLog();
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ActiveRouteInfoDiskRead", "", buf, 2u);
    }

    v11 = _routeStorageQueue();
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __MNGetRouteFromSubpathWithID_block_invoke;
    v18[3] = &unk_1E842A8F0;
    v19 = v6;
    v20 = v5;
    v21 = &v24;
    v22 = v30;
    dispatch_sync(v11, v18);

    v12 = MNGetMNRouteStorageLog();
    v13 = v12;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v13, OS_SIGNPOST_INTERVAL_END, v8, "ActiveRouteInfoDiskRead", "", buf, 2u);
    }

    if (a3)
    {
      v14 = v25[5];
      if (v14)
      {
        *a3 = v14;
      }
    }

    v15 = *(v31 + 5);

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(v30, 8);
  }

  else
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v30 = 0;
      _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_ERROR, "No route ID passed for retrieving.", v30, 2u);
    }

    v15 = 0;
  }

  return v15;
}

void __MNGetRouteFromSubpathWithID_block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = MNRouteStorageDirectory(*(a1 + 32));
  v3 = [*(a1 + 40) UUIDString];
  v4 = [v2 stringByAppendingPathComponent:v3];
  v5 = +[MNFilePaths routeHandleExtension];
  v6 = [v4 stringByAppendingPathExtension:v5];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(v4) = [v7 fileExistsAtPath:v6];

  if (v4)
  {
    v8 = *(*(a1 + 48) + 8);
    obj = *(v8 + 40);
    v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v6 options:0 error:&obj];
    objc_storeStrong((v8 + 40), obj);
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412546;
        v35 = v11;
        v36 = 2112;
        v37 = v6;
        _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Encountered error <%@> while reading route %@", buf, 0x16u);
      }

      goto LABEL_15;
    }

    v16 = objc_alloc(MEMORY[0x1E696ACD0]);
    v17 = *(*(a1 + 48) + 8);
    v30 = *(v17 + 40);
    v10 = [v16 initForReadingFromData:v9 error:&v30];
    objc_storeStrong((v17 + 40), v30);
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v18 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412546;
        v35 = v19;
        v36 = 2112;
        v37 = v6;
        _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_ERROR, "Encountered error <%@> while reading route %@", buf, 0x16u);
      }
    }

    else
    {
      v20 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"_route"];
      v21 = *(*(a1 + 56) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      v23 = [MEMORY[0x1E696AC08] defaultManager];
      v32 = *MEMORY[0x1E696A350];
      v24 = [MEMORY[0x1E695DF00] date];
      v33 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v26 = *(*(a1 + 48) + 8);
      v29 = *(v26 + 40);
      [v23 setAttributes:v25 ofItemAtPath:v6 error:&v29];
      objc_storeStrong((v26 + 40), v29);

      if (!*(*(*(a1 + 48) + 8) + 40))
      {
LABEL_15:

        goto LABEL_16;
      }

      v18 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v27 = *(*(*(a1 + 48) + 8) + 40);
        v28 = [*(a1 + 40) UUIDString];
        *buf = 138412546;
        v35 = v27;
        v36 = 2112;
        v37 = v28;
        _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_ERROR, "Encountered error <%@> when touching route %@", buf, 0x16u);
      }
    }

    goto LABEL_15;
  }

  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = [*(a1 + 40) UUIDString];
    *buf = 138412290;
    v35 = v13;
    _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "Route file for ID %@ could not be found on disk.", buf, 0xCu);
  }

  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
  v15 = *(*(a1 + 48) + 8);
  v9 = *(v15 + 40);
  *(v15 + 40) = v14;
LABEL_16:
}

id MNRouteStorageDirectory(void *a1)
{
  v1 = a1;
  v2 = +[MNFilePaths navTempDirectoryPath];
  if ([v1 length])
  {
    v3 = [v2 stringByAppendingPathComponent:v1];

    v2 = v3;
  }

  return v2;
}

id MNGetMNRouteStorageLog()
{
  if (MNGetMNRouteStorageLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNRouteStorageLog_onceToken, &__block_literal_global_76);
  }

  v1 = MNGetMNRouteStorageLog_log;

  return v1;
}

id _routeStorageQueue()
{
  if (_routeStorageQueue_onceToken != -1)
  {
    dispatch_once(&_routeStorageQueue_onceToken, &__block_literal_global_2631);
  }

  v1 = _routeStorageQueue_routeStorageQueue;

  return v1;
}

void sub_1D31332C4(uint64_t a1)
{
  v3 = sub_1D3276D30();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - v8;
  v10 = *(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_request);
  if (v10)
  {
    v34 = v10;
    v11 = [v1 traceRecorder];
    if (v11)
    {
      v12 = v11;
      v14 = *(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_result);
      v13 = *(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_result + 8);
      if (*(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_result + 16) == 1)
      {
        sub_1D317EF40();
        v33 = swift_allocError();
        *v15 = v14;
        *(v15 + 8) = v13;
        v16 = v12;
        sub_1D3130C98(v14, v13, 1);
      }

      else
      {
        v18 = v11;
        sub_1D3130C98(v14, v13, 0);

        v33 = 0;
      }

      v19 = [v1 navigationSessionState];
      v20 = [v19 destination];

      if (v20)
      {
        v21 = [v20 name];

        if (v21)
        {
          sub_1D32770C0();
        }
      }

      sub_1D3276A40();
      v22 = [v12 recordingStartDate];
      sub_1D3276D00();

      sub_1D3276CC0();
      v24 = v23;
      v25 = *(v4 + 8);
      v25(v7, v3);
      v25(v9, v3);
      sub_1D3276A50();
      v27 = v24 + v26;
      v28 = *(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_response);
      v29 = v33;
      if (v33)
      {
        v30 = v33;
        v31 = sub_1D3276BE0();
      }

      else
      {
        v31 = 0;
      }

      v32 = sub_1D32770B0();

      [v12 recordETAURequest:v34 response:v28 error:v31 destinationName:v32 requestTimestamp:v24 responseTimestamp:v27];
    }

    else
    {
      v17 = v34;
    }
  }
}

uint64_t sub_1D31336A0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D313379C, 0, 0);
}

uint64_t sub_1D313379C()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 800);
  v3 = *(v0 + 664);
  v4 = *(v0 + 656);
  v5 = *(v0 + 624);
  v6 = *(v0 + 616);

  sub_1D317F2B4(v5, v6);
  v7 = *(v3 + 48);
  v8 = v7(v6, 1, v4);
  v9 = *(v0 + 680);
  v10 = *(v0 + 672);
  if (v8 == 1)
  {
    v11 = *(v0 + 656);
    v12 = *(v0 + 616);
    sub_1D314CDF0(v9, *(v0 + 672));
    if (v7(v12, 1, v11) != 1)
    {
      sub_1D3125FBC(*(v0 + 616), &qword_1EC75C5C8, &unk_1D328B900);
    }
  }

  else
  {
    v13 = *(v0 + 616);
    sub_1D312EB88(v9);
    sub_1D314CDF0(v13, v10);
  }

  sub_1D314CDF0(*(v0 + 672), *(v0 + 680));
  v14 = *(v0 + 600);
  v15 = sub_1D312F05C(*(v0 + 680));
  *(v0 + 832) = v15;
  v16 = swift_allocObject();
  *(v0 + 840) = v16;
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v17 = v15;
  v18 = v14;
  v19 = MNNavigationQueue();
  *(v0 + 848) = v19;
  if (v19)
  {
    v27 = v19;
    v28 = swift_task_alloc();
    *(v0 + 856) = v28;
    v28[2] = v27;
    v28[3] = sub_1D31311B0;
    v28[4] = v16;
    v19 = swift_task_alloc();
    *(v0 + 864) = v19;
    *v19 = v0;
    v19[1] = sub_1D317918C;
    v24 = sub_1D3130CE8;
    v23 = 0x80000001D32903A0;
    v26 = MEMORY[0x1E69E7CA8] + 8;
    v20 = 0;
    v21 = 0;
    v22 = 0xD000000000000010;
    v25 = v28;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DDE0](v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_1D3133A3C(void *a1)
{

  return MEMORY[0x1EEE6DFA0](sub_1D3134C24, 0, 0);
}

void sub_1D313489C(double a1)
{
  v2 = v1;
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))())
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v5 = sub_1D3276F80();
    __swift_project_value_buffer(v5, qword_1EC760740);
    v6 = sub_1D3276F60();
    v7 = sub_1D3277380();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23[0] = v9;
      *v8 = 136315138;
      sub_1D3277AC0();
      v10 = sub_1D3277AA0();
      v12 = sub_1D312BA30(v10, v11, v23);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1D311E000, v6, v7, "Scheduling timer for %s.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1D38B6000](v9, -1, -1);
      MEMORY[0x1D38B6000](v8, -1, -1);
    }

    v13 = OBJC_IVAR___MNETAUpdateRequester__requestTimer;
    v14 = *(v2 + OBJC_IVAR___MNETAUpdateRequester__requestTimer);
    if (v14)
    {
      if (v14[OBJC_IVAR___MNDispatchTimer__isRunning] == 1)
      {
        v14[OBJC_IVAR___MNDispatchTimer__isRunning] = 0;
        swift_getObjectType();
        v15 = v14;
        sub_1D3277440();
      }
    }

    v16 = MNNavigationQueue();
    if (v16)
    {
      v17 = v16;
      v18 = objc_allocWithZone(type metadata accessor for DispatchTimer());
      v23[4] = sub_1D317F80C;
      v23[5] = v4;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 1107296256;
      v23[2] = sub_1D3122E0C;
      v23[3] = &block_descriptor_145;
      v19 = _Block_copy(v23);
      swift_retain_n();

      v20 = [v18 initWithTime:0 repeating:v17 queue:v19 handler:a1];

      _Block_release(v19);
      v21 = *(v2 + v13);
      *(v2 + v13) = v20;
      v22 = v20;

      if (v22)
      {
        if (*(v22 + OBJC_IVAR___MNDispatchTimer__isRunning) == 1)
        {

          return;
        }

        *(v22 + OBJC_IVAR___MNDispatchTimer__isRunning) = 1;
        swift_getObjectType();
        sub_1D3277450();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D3134BE8()
{
  MEMORY[0x1D38B60C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3134C24()
{
  sub_1D313489C(*(*(v0 + 88) + OBJC_IVAR___MNETAUpdateRequester__etaRequestInterval));
  v1 = *(v0 + 8);

  return v1();
}

id sub_1D3134C9C(int a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v48 = a4;
  v47 = a3;
  v49 = a1;
  v8 = sub_1D3276FF0();
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v52 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v45 - v11;
  v54 = sub_1D3276F90();
  v59 = *(v54 - 8);
  v12 = MEMORY[0x1EEE9AC00](v54);
  v50 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v51 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v58 = (&v45 - v16);
  v46 = sub_1D3276FB0();
  v17 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1D3276FD0();
  v20 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D3277410();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v5;
  v5[OBJC_IVAR___MNDispatchTimer__isRunning] = 0;
  sub_1D3135294();
  sub_1D3277400();
  v27 = a2;
  v28 = sub_1D3277420();

  (*(v24 + 8))(v26, v23);
  ObjectType = swift_getObjectType();
  aBlock[4] = v47;
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3122E0C;
  aBlock[3] = &block_descriptor_20;
  v30 = _Block_copy(aBlock);

  sub_1D3276FC0();
  sub_1D31352E0();
  v48 = ObjectType;
  sub_1D3277430();
  _Block_release(v30);
  (*(v17 + 8))(v19, v46);
  v31 = v22;
  v32 = v58;
  (*(v20 + 8))(v31, v45);

  sub_1D3132404(v32, a5);
  v33 = v51;
  v34 = v54;
  if (v49)
  {
    (*(v59 + 16))(v51, v32, v54);
  }

  else
  {
    (*(v59 + 104))(v51, *MEMORY[0x1E69E7F40], v54);
  }

  v35 = v52;
  sub_1D3276FE0();
  v36 = v53;
  MEMORY[0x1D38B3ED0](v35, v32);
  v37 = v56;
  v38 = *(v55 + 8);
  v38(v35, v56);
  v39 = v50;
  *v50 = 0;
  v40 = v59;
  (*(v59 + 104))(v39, *MEMORY[0x1E69E7F28], v34);
  MEMORY[0x1D38B4420](v36, v33, v39, v48);
  v41 = *(v40 + 8);
  v41(v39, v34);
  v38(v36, v37);
  v41(v33, v34);
  v41(v58, v34);
  v42 = v57;
  *&v57[OBJC_IVAR___MNDispatchTimer__internalTimer] = v28;
  v43 = type metadata accessor for DispatchTimer();
  v60.receiver = v42;
  v60.super_class = v43;
  return objc_msgSendSuper2(&v60, sel_init);
}

unint64_t sub_1D3135294()
{
  result = qword_1EC75BD98;
  if (!qword_1EC75BD98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC75BD98);
  }

  return result;
}

uint64_t sub_1D31352E0()
{
  sub_1D3276FB0();
  sub_1D3122E64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C468, &qword_1D328C630);
  sub_1D3122EBC();
  return sub_1D3277630();
}

uint64_t MNInstructionsCalculateScaledDistanceUnits(int a1, int a2, uint64_t a3, int a4, double a5)
{
  if (a1)
  {
    if (a5 >= 1000.0)
    {
      goto LABEL_17;
    }

    if (a3 == 2 || a5 <= 500.0)
    {
      if (a3 == 2 || a5 <= 100.0)
      {
        if (a3 == 2 || a5 <= 30.0)
        {
          if (a5 <= 5.0)
          {
            v11 = floor(a5);
          }

          else
          {
            v11 = round(a5 * 0.2) * 5.0;
          }

LABEL_15:
          if (v11 < 1000.0)
          {
            v12 = 0;
            goto LABEL_18;
          }

LABEL_17:
          v12 = 1;
LABEL_18:
          if (a4)
          {
            return v12;
          }

          else
          {
            return 0;
          }
        }

        v5 = round(a5 * 0.1);
        v10 = 10.0;
LABEL_14:
        v11 = v5 * v10;
        goto LABEL_15;
      }

      v5 = round(a5 * 0.02);
      v6 = 0x4049000000000000;
    }

    else
    {
      v5 = round(a5 * 0.01);
      v6 = 0x4059000000000000;
    }

    v10 = *&v6;
    goto LABEL_14;
  }

  v7 = a5 * 3.2808399;
  if (!a2)
  {
    if (a3 == 2 || v7 <= 500.0)
    {
      if (a3 == 2 || v7 <= 100.0)
      {
        if (v7 <= 30.0)
        {
          v8 = floor(a5 * 0.656167979);
          v14 = 5.0;
        }

        else
        {
          v8 = round(a5 * 0.32808399);
          v14 = 10.0;
        }

        goto LABEL_25;
      }

      v8 = round(a5 * 0.0656167979);
      v9 = 0x4049000000000000;
    }

    else
    {
      v8 = round(a5 * 0.032808399);
      v9 = 0x4059000000000000;
    }

    v14 = *&v9;
LABEL_25:
    v7 = v8 * v14;
  }

  v15 = a5 * 0.000621371192;
  v16 = a5 * 0.000621371192;
  if (a3 != 1)
  {
    v16 = a5 * 0.000621371192;
    if (v15 > 0.1)
    {
      if (a3 == 2 && v15 < 1.0)
      {
        v16 = round(a5 * 0.0124274238) * 0.05;
      }

      else
      {
        v16 = round(a5 * 0.00621371192) * 0.1;
      }
    }
  }

  if (v7 >= 1000.0)
  {
    if (a3 == 1 && v16 < 0.875)
    {
      v17 = 5;
      if (v16 < 0.625)
      {
        v17 = 5;
      }
    }

    else
    {
      v17 = 4;
    }
  }

  else if (a2)
  {
    v17 = 2;
  }

  else
  {
    v17 = 3;
  }

  if (a4)
  {
    return v17;
  }

  else
  {
    return 3;
  }
}

id navDisplayNameForMapItem(void *a1, int a2, _DWORD *a3)
{
  v5 = a1;
  v6 = [v5 contactName];
  if (!a2)
  {
    goto LABEL_23;
  }

  v7 = [v5 contactAddressType];
  switch(v7)
  {
    case 3:
      if (a3)
      {
        *a3 = 3;
      }

      if ([v5 contactIsMe])
      {
        v8 = @"MapsExtra_School";
        goto LABEL_17;
      }

      if (![v6 length])
      {
        goto LABEL_23;
      }

      v10 = MEMORY[0x1E696AEC0];
      v11 = @"MapsExtra_ContactSchool";
      break;
    case 2:
      if (a3)
      {
        *a3 = 3;
      }

      if ([v5 contactIsMe])
      {
        v8 = @"MapsExtras_Work";
        goto LABEL_17;
      }

      if (!v6)
      {
        goto LABEL_32;
      }

      if (![v6 length])
      {
        goto LABEL_24;
      }

      v10 = MEMORY[0x1E696AEC0];
      v11 = @"MapsExtras_ContactWork";
      break;
    case 1:
      if (a3)
      {
        *a3 = 3;
      }

      if ([v5 contactIsMe])
      {
        v8 = @"MapsExtras_Home";
LABEL_17:
        v9 = _MNLocalizedStringFromThisBundle(v8);
LABEL_27:
        v12 = v9;
        goto LABEL_45;
      }

      if (v6)
      {
        if ([v6 length])
        {
          v10 = MEMORY[0x1E696AEC0];
          v11 = @"MapsExtras_ContactHome";
          break;
        }

LABEL_24:
        if (a3)
        {
          *a3 = 3;
        }

        v9 = v6;
        goto LABEL_27;
      }

LABEL_32:
      if ([v5 _hasTransit])
      {
        v13 = [v5 _transitInfo];
        v15 = [v13 displayName];
        v16 = [v15 length];

        if (v16)
        {
          if (a3)
          {
            *a3 = 4;
          }

          v14 = [v13 displayName];
          goto LABEL_44;
        }
      }

      v17 = [v5 name];
      v13 = v17;
      if (v17 && [v17 length])
      {
        if (a3)
        {
          *a3 = 4;
        }

        v14 = v13;
      }

      else
      {
        v14 = navDisplayAddressForMapItem(v5, a3);
      }

      goto LABEL_44;
    default:
LABEL_23:
      if (v6)
      {
        goto LABEL_24;
      }

      goto LABEL_32;
  }

  v13 = _MNLocalizedStringFromThisBundle(v11);
  v14 = [v10 stringWithFormat:v13, v6];
LABEL_44:
  v12 = v14;

LABEL_45:

  return v12;
}

id _MNLocalizedStringFromThisBundle(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  v3 = [v1 _navigationBundle];
  v4 = [v3 _navigation_localizedStringForKey:v2 value:@"<unlocalized>" table:@"Navigation"];

  return v4;
}

id MNGetMNGuidanceManagerLog()
{
  if (MNGetMNGuidanceManagerLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNGuidanceManagerLog_onceToken, &__block_literal_global_44_1185);
  }

  v1 = MNGetMNGuidanceManagerLog_log;

  return v1;
}

id navDisplayAddressForMapItem(void *a1, _DWORD *a2)
{
  v3 = [a1 addressObject];
  v4 = [v3 shortAddress];

  if (a2)
  {
    *a2 = 2;
  }

  return v4;
}

void sub_1D3139AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id GetAudioLogForMNAudioManagerCategory()
{
  if (GetAudioLogForMNAudioManagerCategory_onceToken != -1)
  {
    dispatch_once(&GetAudioLogForMNAudioManagerCategory_onceToken, &__block_literal_global_22410);
  }

  v1 = GetAudioLogForMNAudioManagerCategory_log;

  return v1;
}

id sub_1D313A7A0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    a3 = 0;
  }

  else if (a3 != 1)
  {
    return 0;
  }

  return [a1 supportsGuidancePreferenceType_];
}

uint64_t sub_1D313AAEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D313AB54@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1D313AC0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_dateOverride;
  swift_beginAccess();
  return sub_1D312601C(v3 + v4, a2, &qword_1EC75C4F0, &qword_1D328B580);
}

id sub_1D313AC7C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationSessionState];
  *a2 = result;
  return result;
}

uint64_t sub_1D313ACCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D313AD14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D313AD4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D313AD84()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D313ADC4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D313AE18()
{
  MEMORY[0x1D38B60C0](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D313AE50@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

id sub_1D313AF08@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationSessionState];
  *a2 = result;
  return result;
}

uint64_t sub_1D313AF58()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D313AF98()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D313B044()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D313B07C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D313B0B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D313B104()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D313B164()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D313B1B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D313B1F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D313B234(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D313B244()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D313B28C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D313B2C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D313B2FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CB40, &qword_1D328C600);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D313B3E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CB58, &qword_1D328C628);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D313B4E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D313B520()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D313B568()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D313B5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D3276A60();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1D313B670(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D3276A60();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1D313B730()
{
  v1 = sub_1D3276D30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CC78, &qword_1D328CBD0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1D313B8A4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D313B8DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D313B934()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CC80, &qword_1D328CC20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D313B9C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D313BA10()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D313BA48()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D313BA88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D313BAD0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D313BB20()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D313BB6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D313BBBC()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 96);
  if (v1 >> 60 != 15)
  {
    sub_1D31422C8(*(v0 + 88), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1D313BC34()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 88);
  if (v1 >> 60 != 15)
  {
    sub_1D31422C8(*(v0 + 80), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D313BCAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D313C840(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D313C8B4(uint64_t a1, int a2)
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

uint64_t sub_1D313C8D4(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RoutePartitionTree.CircleBounds(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RoutePartitionTree.CircleBounds(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CommuteRouteRequestParameters.CacheOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CommuteRouteRequestParameters.CacheOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void *sub_1D313CA34@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_1D313CA44@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D313CA68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D313CABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

void sub_1D313CB58(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t static TestUtility.waypoint(for:requireMapItem:)(char a1, double a2, double a3)
{
  *(v3 + 72) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D313CBEC, 0, 0);
}

uint64_t sub_1D313CBEC()
{
  v1 = *(v0 + 72);
  v2 = [objc_allocWithZone(MEMORY[0x1E69A1E70]) initWithGEOCoordinate_];
  *(v0 + 40) = v2;
  if (v1 == 1)
  {
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    *(v3 + 16) = v2;
    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    v5 = sub_1D313D1D4();
    *v4 = v0;
    v4[1] = sub_1D313CD94;
    v6 = sub_1D313D1CC;
    v7 = (v0 + 16);
    v8 = 0x80000001D328D8D0;
    v9 = 0;
    v10 = 0;
    v11 = 0xD00000000000001DLL;
    v12 = v3;

    return MEMORY[0x1EEE6DE38](v7, v9, v10, v11, v8, v6, v12, v5);
  }

  v7 = [objc_allocWithZone(MEMORY[0x1E69A1CC8]) initWithLocation:v2 isCurrentLocation:0];
  if (!v7)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE38](v7, v9, v10, v11, v8, v6, v12, v5);
  }

  v13 = v7;

  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_1D313CD94()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D313CF18;
  }

  else
  {

    v2 = sub_1D313CEB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D313CEB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D313CF18()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D313CF84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C310, &qword_1D328ACB0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  v10 = [objc_opt_self() sharedService];
  if (v10)
  {
    v11 = v10;
    v12 = objc_opt_self();
    v13 = [v11 defaultTraits];

    aBlock[4] = sub_1D313E2BC;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D312E25C;
    aBlock[3] = &block_descriptor_14;
    v14 = _Block_copy(aBlock);

    v15 = [v12 composedWaypointForLocation:a2 mapItem:0 traits:v13 completionHandler:v14 networkActivityHandler:0];
    _Block_release(v14);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1D313D1D4()
{
  result = qword_1EC75BD88;
  if (!qword_1EC75BD88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC75BD88);
  }

  return result;
}

uint64_t sub_1D313D220(void *a1, id a2)
{
  if (a1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C310, &qword_1D328ACB0);
    return sub_1D3277230();
  }

  else
  {
    if (a2)
    {
      v4 = a2;
    }

    else
    {
      sub_1D313E1E4();
      swift_allocError();
      *v5 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C310, &qword_1D328ACB0);
    return sub_1D3277220();
  }
}

uint64_t static TestUtility.routes(for:transportType:maxRouteCount:routeAttributes:traits:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 88) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D313D2F8, 0, 0);
}

uint64_t sub_1D313D2F8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 32);
  v3 = [objc_allocWithZone(MEMORY[0x1E69A1D30]) init];
  *(v0 + 56) = v3;
  [v3 setRequestType_];
  sub_1D313D1D4();
  v4 = sub_1D3277190();
  [v3 setWaypoints_];

  v5 = [v3 setTransportType_];
  if (v2 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = *(v0 + 40);
  [v3 setMaxRouteCount_];
  if (v13)
  {
    v14 = *(v0 + 40);
    v15 = v14;
  }

  else
  {
    v5 = [objc_opt_self() defaultRouteAttributesForTransportType_];
    if (!v5)
    {
LABEL_18:
      __break(1u);
      return MEMORY[0x1EEE6DE38](v5, v6, v7, v8, v9, v10, v11, v12);
    }

    v15 = v5;
    v14 = *(v0 + 40);
  }

  v16 = *(v0 + 48);
  v17 = v14;
  [v3 setRouteAttributes_];

  if (v16)
  {
    v18 = *(v0 + 48);
    [v3 setTraits_];
    v19 = objc_allocWithZone(MEMORY[0x1E69A1B68]);
    v20 = sub_1D32770B0();
    v21 = [v19 initWithProxiedApplicationBundleId_];

    [v3 setAuditToken_];
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E69A1C20]) init];
  if (!v5)
  {
    goto LABEL_16;
  }

  v22 = v5;
  if (*(v0 + 88) == 2)
  {
    [v5 setSupportsArMode_];
  }

  [v3 setCommonOptions_];

  v5 = [objc_allocWithZone(MEMORY[0x1E69A1D00]) init];
  if (!v5)
  {
    goto LABEL_17;
  }

  v23 = v5;
  [v5 setSource_];
  [v23 setPurpose_];
  [v3 setFeedback_];

  v24 = swift_task_alloc();
  *(v0 + 64) = v24;
  *(v24 + 16) = v3;
  v25 = swift_task_alloc();
  *(v0 + 72) = v25;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C2F0, &qword_1D328AC20);
  *v25 = v0;
  v25[1] = sub_1D313D64C;
  v10 = sub_1D313DF24;
  v5 = (v0 + 16);
  v9 = 0x80000001D328D8F0;
  v6 = 0;
  v7 = 0;
  v8 = 0xD00000000000003FLL;
  v11 = v24;

  return MEMORY[0x1EEE6DE38](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1D313D64C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D313D7D0;
  }

  else
  {

    v2 = sub_1D313D768;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D313D768()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D313D7D0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D313D83C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C300, &qword_1D328ACA8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() sharedService];
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_1D313E150;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D315EA10;
  aBlock[3] = &block_descriptor;
  v11 = _Block_copy(aBlock);

  v12 = [v8 requestRoutes:a2 handler:v11];
  _Block_release(v11);
}

uint64_t sub_1D313DA28(uint64_t a1, id a2, void *a3)
{
  if (a1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C300, &qword_1D328ACA8);
    return sub_1D3277230();
  }

  else
  {
    if (a3)
    {
      sub_1D313E1E4();
      swift_allocError();
      *v5 = a3;
      v6 = a3;
    }

    else if (a2)
    {
      v7 = a2;
    }

    else
    {
      sub_1D313E1E4();
      swift_allocError();
      *v8 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C300, &qword_1D328ACA8);
    return sub_1D3277220();
  }
}

id static TestUtility.route(for:stepRanges:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < 2uLL)
  {
    result = sub_1D32777B0("Fatal error", 11, 2, 0xD000000000000033, 0x80000001D328D970, "Navigation/TestUtility.swift", 28, 2, 95, 0);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69A2508]) init];
    [v4 setTransportType_];
    v5 = sub_1D313DCBC(a1);
    [v4 setRawRouteGeometry_];

    v6 = [objc_allocWithZone(MEMORY[0x1E69A23A8]) init];
    if (a2)
    {
      v7 = *(a2 + 16);
      if (v7)
      {
        v8 = (a2 + 40);
        do
        {
          [v6 addCoordinateRange_];
          v8 += 2;
          --v7;
        }

        while (v7);
      }
    }

    [v4 setStepRanges_];

    v9 = [v4 buildRoute];
    if (v9)
    {
      v10 = v9;

      return v10;
    }

    result = sub_1D32777B0("Fatal error", 11, 2, 0xD000000000000015, 0x80000001D328D950, "Navigation/TestUtility.swift", 28, 2, 126, 0);
  }

  __break(1u);
  return result;
}

id sub_1D313DCBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D314B404(0, v1, 0);
    v2 = v25;
    v4 = a1 + 40;
    v5 = v1;
    do
    {
      sub_1D3277500();
      v10 = *(v25 + 16);
      v9 = *(v25 + 24);
      if (v10 >= v9 >> 1)
      {
        v12 = v6;
        v13 = v7;
        v14 = v8;
        sub_1D314B404((v9 > 1), v10 + 1, 1);
        v8 = v14;
        v7 = v13;
        v6 = v12;
      }

      *(v25 + 16) = v10 + 1;
      v11 = v25 + 40 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v7;
      *(v11 + 48) = v8;
      *(v11 + 56) = 0xBFF0000000000000;
      *(v11 + 64) = 0;
      v4 += 16;
      --v5;
    }

    while (v5);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D3180ED4(v2);
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E69A2410]) initWithCoordinates:v2 + 32 count:v1 allSupportPoints:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C2F8, &unk_1D328B8D0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D328AC00;
  v17 = [v15 rawData];
  v18 = sub_1D3276C80();
  v20 = v19;

  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  v21 = objc_allocWithZone(MEMORY[0x1E69A2418]);
  v22 = sub_1D3277190();

  v23 = [v21 initWithRawData_];

  return v23;
}

void static TestUtility.pushLocation(_:)(MNLocation *a1)
{
  if (qword_1EC75BF68 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  NavigationLocationManager.push(_:)(a1);
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

uint64_t getEnumTagSinglePayload for TestUtility(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for TestUtility(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1D313E060(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D313E0B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D313E104(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1D313E120(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1D313E150(uint64_t a1, void *a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C300, &qword_1D328ACA8);

  return sub_1D313DA28(a1, a2, a3);
}

unint64_t sub_1D313E1E4()
{
  result = qword_1EC75C308;
  if (!qword_1EC75C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C308);
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1D313E2BC(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C310, &qword_1D328ACB0);

  return sub_1D313D220(a1, a2);
}

id sub_1D313E350(void *a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  *&v3[OBJC_IVAR____TtC10Navigation22MNTraceSelectStatement____lazy_storage____columnToIndexLookup] = 0;
  v5 = sub_1D32770B0();

  v10[0] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for MNTraceSelectStatement();
  v6 = objc_msgSendSuper2(&v9, sel_initForTrace_statement_outError_, a1, v5, v10);

  v7 = v10[0];
  if (v10[0])
  {
    swift_willThrow();
    v7;
  }

  else
  {
    sub_1D313E444();
  }

  return v6;
}

void sub_1D313E444()
{
  v1 = v0;
  v2 = sqlite3_column_count([v0 rawStatement]);
  if (v2 < 0)
  {
    goto LABEL_25;
  }

  v3 = v2;
  if (v2)
  {
    v4 = 0;
    v5 = OBJC_IVAR____TtC10Navigation22MNTraceSelectStatement____lazy_storage____columnToIndexLookup;
    while (1)
    {
      if (!sqlite3_column_name([v1 rawStatement], v4))
      {
        goto LABEL_7;
      }

      v8 = sub_1D3277130();
      v10 = v9;
      v11 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        break;
      }

LABEL_6:

LABEL_7:
      if (v3 == ++v4)
      {
        return;
      }
    }

    v12 = v8;
    v13 = sub_1D313E628();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v13;
    v15 = sub_1D31416C8(v12, v10);
    v17 = v13[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      sub_1D3277920();
      __break(1u);
      return;
    }

    v21 = v16;
    if (v13[3] >= v20)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = v15;
        sub_1D3141BB0();
        v15 = v26;
        if ((v21 & 1) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_4;
      }
    }

    else
    {
      sub_1D3141784(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_1D31416C8(v12, v10);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_26;
      }
    }

    if ((v21 & 1) == 0)
    {
LABEL_18:
      v7 = v13;
      v13[(v15 >> 6) + 8] |= 1 << v15;
      v23 = (v13[6] + 16 * v15);
      *v23 = v12;
      v23[1] = v10;
      *(v13[7] + 4 * v15) = v4;
      v24 = v13[2];
      v19 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      v13[2] = v25;
      goto LABEL_5;
    }

LABEL_4:
    v6 = v15;

    v7 = v27;
    *(v27[7] + 4 * v6) = v4;
LABEL_5:
    *&v1[v5] = v7;
    goto LABEL_6;
  }
}

unint64_t sub_1D313E628()
{
  v1 = OBJC_IVAR____TtC10Navigation22MNTraceSelectStatement____lazy_storage____columnToIndexLookup;
  if (*(v0 + OBJC_IVAR____TtC10Navigation22MNTraceSelectStatement____lazy_storage____columnToIndexLookup))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10Navigation22MNTraceSelectStatement____lazy_storage____columnToIndexLookup);
  }

  else
  {
    v2 = sub_1D3142064(MEMORY[0x1E69E7CC0]);
    *(v0 + v1) = v2;
  }

  return v2;
}

id MNTraceSelectStatement.__allocating_init(for:statement:outError:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(v4);
  v8 = sub_1D32770B0();

  v9 = [v7 initForTrace:a1 statement:v8 outError:a4];

  return v9;
}

uint64_t MNTraceSelectStatement.allRows<A>(handler:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a1;
  v26 = a2;
  v23 = sub_1D3277600();
  v6 = *(v23 - 8);
  v7 = MEMORY[0x1EEE9AC00](v23);
  v9 = &v20 - v8;
  v10 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v22 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  v15 = sub_1D3277030();
  v27 = v15;
  v24 = v4;
  if ([v4 stepRow])
  {
    v16 = (v10 + 48);
    v21 = (v10 + 32);
    v17 = (v10 + 16);
    v18 = (v10 + 8);
    do
    {
      v25();
      if ((*v16)(v9, 1, a3) == 1)
      {
        (*(v6 + 8))(v9, v23);
      }

      else
      {
        (*v21)(v14, v9, a3);
        (*v17)(v22, v14, a3);
        sub_1D32771F0();
        sub_1D32771E0();
        (*v18)(v14, a3);
      }
    }

    while (([v24 stepRow] & 1) != 0);
    return v27;
  }

  return v15;
}

Swift::Int __swiftcall MNTraceSelectStatement.intValue(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = sub_1D313E628();
  if (*(v5 + 16) && (v6 = sub_1D31416C8(countAndFlagsBits, object), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 4 * v6);

    return sqlite3_column_int([v2 rawStatement], v8);
  }

  else
  {

    if (qword_1EC75C030 != -1)
    {
      swift_once();
    }

    v10 = sub_1D3276F80();
    __swift_project_value_buffer(v10, qword_1EC7608E8);

    v11 = sub_1D3276F60();
    v12 = sub_1D3277390();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1D312BA30(countAndFlagsBits, object, &v15);
      _os_log_impl(&dword_1D311E000, v11, v12, "No column named '%s' found.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1D38B6000](v14, -1, -1);
      MEMORY[0x1D38B6000](v13, -1, -1);
    }

    return 0;
  }
}

Swift::Double __swiftcall MNTraceSelectStatement.doubleValue(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = sub_1D313E628();
  if (*(v5 + 16) && (v6 = sub_1D31416C8(countAndFlagsBits, object), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 4 * v6);

    v9 = [v2 rawStatement];

    return sqlite3_column_double(v9, v8);
  }

  else
  {

    if (qword_1EC75C030 != -1)
    {
      swift_once();
    }

    v11 = sub_1D3276F80();
    __swift_project_value_buffer(v11, qword_1EC7608E8);

    v12 = sub_1D3276F60();
    v13 = sub_1D3277390();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1D312BA30(countAndFlagsBits, object, &v16);
      _os_log_impl(&dword_1D311E000, v12, v13, "No column named '%s' found.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1D38B6000](v15, -1, -1);
      MEMORY[0x1D38B6000](v14, -1, -1);
    }

    return 0.0;
  }
}

Swift::String_optional __swiftcall MNTraceSelectStatement.stringValue(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = sub_1D313E628();
  if (!*(v5 + 16) || (v6 = sub_1D31416C8(countAndFlagsBits, object), (v7 & 1) == 0))
  {

    if (qword_1EC75C030 != -1)
    {
      swift_once();
    }

    v11 = sub_1D3276F80();
    __swift_project_value_buffer(v11, qword_1EC7608E8);

    v12 = sub_1D3276F60();
    v13 = sub_1D3277390();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1D312BA30(countAndFlagsBits, object, &v17);
      _os_log_impl(&dword_1D311E000, v12, v13, "No column named '%s' found.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1D38B6000](v15, -1, -1);
      MEMORY[0x1D38B6000](v14, -1, -1);
    }

    v9 = 0;
    goto LABEL_10;
  }

  v8 = *(*(v5 + 56) + 4 * v6);

  v9 = sqlite3_column_text([v2 rawStatement], v8);
  if (!v9)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v9 = sub_1D3277140();
LABEL_11:
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

_BYTE *MNTraceSelectStatement.dataValue(_:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1D313E628();
  if (!*(v6 + 16) || (v7 = sub_1D31416C8(a1, a2), (v8 & 1) == 0))
  {

    if (qword_1EC75C030 != -1)
    {
      swift_once();
    }

    v13 = sub_1D3276F80();
    __swift_project_value_buffer(v13, qword_1EC7608E8);

    v14 = sub_1D3276F60();
    v15 = sub_1D3277390();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1D312BA30(a1, a2, &v18);
      _os_log_impl(&dword_1D311E000, v14, v15, "No column named '%s' found.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1D38B6000](v17, -1, -1);
      MEMORY[0x1D38B6000](v16, -1, -1);
    }

    return 0;
  }

  v9 = *(*(v6 + 56) + 4 * v7);

  v10 = sqlite3_column_bytes([v3 rawStatement], v9);
  if (v10 < 1)
  {
    return 0;
  }

  v11 = v10;
  result = sqlite3_column_blob([v3 rawStatement], v9);
  if (result)
  {
    return sub_1D3142218(result, v11);
  }

  __break(1u);
  return result;
}

uint64_t MNTraceSelectStatement.objectValue<A>(_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D32770B0();
  v6 = [v4 dataValue_];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_1D3276C80();
  v9 = v8;

  sub_1D3126084(0, &qword_1EC75C9D0, 0x1E696ACD0);
  v10 = sub_1D32773C0();
  sub_1D31422C8(v7, v9);
  return v10;
}

Swift::OpaquePointer_optional __swiftcall MNTraceSelectStatement.objectsValue(_:of:)(Swift::String _, Swift::OpaquePointer of)
{
  v3 = sub_1D32770B0();
  v4 = [v2 dataValue_];

  if (v4)
  {
    v6 = sub_1D3276C80();
    v8 = v7;

    sub_1D3126084(0, &qword_1EC75C9D0, 0x1E696ACD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C318, &qword_1D328ACC0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D328AC00;
    *(v9 + 32) = sub_1D3126084(0, &qword_1EC75C970, 0x1E696AEC0);
    v11 = sub_1D32773D0();

    if (v11)
    {
      sub_1D313F638(v11);
      v13 = v12;
      sub_1D31422C8(v6, v8);

      v10 = v13;
      goto LABEL_7;
    }

    sub_1D31422C8(v6, v8);
  }

  v10 = 0;
LABEL_7:
  result.value._rawValue = v10;
  result.is_nil = v5;
  return result;
}

void sub_1D313F638(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C3D8, &qword_1D328AEC0);
    v2 = sub_1D3277810();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = sub_1D3126084(0, &qword_1EC75C970, 0x1E696AEC0);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x1E69E6158])
  {
    v26 = v8 >> 6;

    v27 = 0;
    if (v7)
    {
      goto LABEL_30;
    }

LABEL_31:
    while (1)
    {
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v31 >= v26)
      {
        goto LABEL_47;
      }

      v7 = *(v4 + 8 * v31);
      ++v27;
      if (v7)
      {
        while (1)
        {
          v32 = __clz(__rbit64(v7)) | (v31 << 6);
          sub_1D31427CC(*(a1 + 48) + 40 * v32, &v48);
          sub_1D312BEE8(*(a1 + 56) + 32 * v32, &v50 + 8);
          v45 = v50;
          v46 = v51;
          v47 = v52;
          v43 = v48;
          v44 = v49;
          v33 = sub_1D3277690();
          objc_opt_self();
          v34 = swift_dynamicCastObjCClass();
          if (!v34)
          {
            break;
          }

          v35 = v34;
          sub_1D312BEE8(&v45 + 8, v42);
          sub_1D3142828(&v43);
          if ((swift_dynamicCast() & 1) == 0)
          {

            goto LABEL_47;
          }

          v7 &= v7 - 1;
          v36 = sub_1D3141740(v35);
          if (v37)
          {
            v28 = *(v2 + 48);
            v29 = *(v28 + 8 * v36);
            *(v28 + 8 * v36) = v35;
            v30 = v36;

            *(*(v2 + 56) + 8 * v30) = v41;
            swift_unknownObjectRelease();
            v27 = v31;
            if (!v7)
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (*(v2 + 16) >= *(v2 + 24))
            {
              goto LABEL_51;
            }

            *(v2 + 64 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
            *(*(v2 + 48) + 8 * v36) = v35;
            *(*(v2 + 56) + 8 * v36) = v41;
            v38 = *(v2 + 16);
            v39 = __OFADD__(v38, 1);
            v40 = v38 + 1;
            if (v39)
            {
              goto LABEL_52;
            }

            *(v2 + 16) = v40;
            v27 = v31;
            if (!v7)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v31 = v27;
        }

LABEL_45:
        sub_1D3142828(&v43);
LABEL_47:

        return;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v14 = __clz(__rbit64(v7)) | (v11 << 6);
      sub_1D31427CC(*(a1 + 48) + 40 * v14, &v48);
      sub_1D312BEE8(*(a1 + 56) + 32 * v14, &v50 + 8);
      v45 = v50;
      v46 = v51;
      v47 = v52;
      v43 = v48;
      v44 = v49;
      v15 = sub_1D3277690();
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (!v16)
      {

        goto LABEL_45;
      }

      v17 = v16;
      sub_1D312BEE8(&v45 + 8, v42);
      sub_1D3142828(&v43);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_47;
      }

      v18 = sub_1D32775E0();
      v19 = -1 << *(v2 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_49;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v2 + 48) + 8 * v12) = v17;
      *(*(v2 + 56) + 8 * v12) = v41;
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_47;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}
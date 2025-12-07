uint64_t sub_B9CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_5D08;

  return sub_B6B20(a1, a2, a3);
}

uint64_t sub_B9D98(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5D08;

  return sub_B9138(a1, a2);
}

uint64_t sub_B9E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_5D08;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)(a1, a2, a3, a4);
}

uint64_t sub_B9EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_5D08;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)(a1, a2, a3, a4);
}

uint64_t sub_B9FC0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_12392C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_12368C();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_BA0DC, 0, 0);
}

uint64_t sub_BA0DC()
{
  sub_12367C();
  sub_12391C();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1CFDC;
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[2];

  return sub_2F7D4(v4, v2, v3);
}

uint64_t sub_BA18C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_12392C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_12368C();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_BA2A8, 0, 0);
}

uint64_t sub_BA2A8()
{
  sub_12367C();
  sub_12391C();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1D494;
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[2];

  return sub_2F7D4(v4, v2, v3);
}

uint64_t sub_BA358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_503C;

  return ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)(a1, a2, a3, a4, a5);
}

uint64_t sub_BA424(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&unk_161EC0, &unk_126E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_BA494()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_161ED8);
  sub_5B30(v0, qword_161ED8);
  return sub_1257AC();
}

uint64_t sub_BA4E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_5AE8(&qword_15F6A8, &unk_129D30);
    v2 = sub_12612C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_8B50(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_99B0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_99B0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_99B0(v31, v32);
    result = sub_125F9C(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
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
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_99B0(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void (*sub_BA7CC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_125FFC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_BA84C;
  }

  __break(1u);
  return result;
}

void sub_BA854(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(SAUIAddViews) init];
  v5 = [objc_allocWithZone(SADialog) init];
  v6 = [objc_allocWithZone(SADialogText) init];
  v7 = sub_125B8C();
  [v6 setText:v7];

  [v5 setContent:v6];
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  v8 = &_s11SiriKitFlow013ConfirmIntentC13StrategyAsyncPAAE17makeErrorResponse5error17confirmParametersAA6Output_ps0I0_p_AA0E16ResolutionRecordVy0E4TypeQz0ejQ0QzGtYaKFTu_ptr;
  if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = sub_125FFC();
      }

      else
      {
        if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_38;
        }

        v9 = *(a1 + 32);
      }

      v10 = v9;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (!v11)
      {
        break;
      }

      v12 = v11;
      v13 = [objc_allocWithZone(v8[88]) init];
      [v13 setDialog:v5];
      v14 = v13;
      v15 = [v12 title];
      [v14 setTitle:v15];

      v16 = [v12 speakableText];
      [v14 setSpeakableText:v16];

      v17 = [v12 timers];
      if (!v17)
      {
        goto LABEL_41;
      }

      a1 = v17;
      v38 = v10;
      v39 = v6;
      v40 = v5;
      sub_30B8C(0, &qword_161FA0, SATimerObject_ptr);
      v6 = sub_125C6C();

      v41 = _swiftEmptyArrayStorage;
      if (v6 >> 62)
      {
        v18 = sub_1260FC();
        if (!v18)
        {
LABEL_40:

          isa = sub_125C4C().super.isa;

          [v14 setTimers:isa];

          v6 = v39;
          v5 = v40;
          v10 = v38;
LABEL_41:
          sub_5AE8(&qword_160810, &unk_127420);
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_126EB0;
          *(v35 + 32) = v14;
          sub_30B8C(0, &qword_15FBE0, SAAceView_ptr);
          v33.super.isa = sub_125C4C().super.isa;

          [v4 setViews:v33.super.isa];

          goto LABEL_42;
        }
      }

      else
      {
        v18 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
        if (!v18)
        {
          goto LABEL_40;
        }
      }

      v37 = v4;
      v19 = 0;
      v4 = (v6 & 0xC000000000000001);
      while (1)
      {
        if (v4)
        {
          v20 = sub_125FFC();
        }

        else
        {
          if (v19 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_33;
          }

          v20 = *(v6 + 8 * v19 + 32);
        }

        a1 = v20;
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v5 = [objc_allocWithZone(SATimerObject) init];
        v22 = [a1 timerValue];
        [v5 setTimerValue:v22];

        sub_125C3C();
        if (*(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v41 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_125C9C();
        }

        a1 = &v41;
        sub_125CCC();
        ++v19;
        if (v21 == v18)
        {
          v4 = v37;
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      v8 = &_s11SiriKitFlow013ConfirmIntentC13StrategyAsyncPAAE17makeErrorResponse5error17confirmParametersAA6Output_ps0I0_p_AA0E16ResolutionRecordVy0E4TypeQz0ejQ0QzGtYaKFTu_ptr;
      if (!sub_1260FC())
      {
        goto LABEL_27;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v23 = sub_125FFC();
    }

    else
    {
      if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return;
      }

      v23 = *(a1 + 32);
    }

    v24 = v23;
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v26 = v25;
      v14 = v24;
      [v26 setDialog:v5];
      sub_5AE8(&qword_160810, &unk_127420);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_126EB0;
      *(v27 + 32) = v26;
      goto LABEL_31;
    }
  }

LABEL_27:
  if (qword_15EF00 != -1)
  {
LABEL_38:
    swift_once();
  }

  v28 = sub_125ABC();
  sub_5B30(v28, qword_161ED8);
  v29 = sub_125AAC();
  v30 = sub_125DFC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_0, v29, v30, "Snippet did not contain a timer snippet. Only logging dialog.", v31, 2u);
  }

  v14 = [objc_allocWithZone(v8[88]) init];
  [v14 setDialog:v5];
  sub_5AE8(&qword_160810, &unk_127420);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_126EB0;
  *(v32 + 32) = v14;
LABEL_31:
  sub_30B8C(0, &qword_15FBE0, SAAceView_ptr);
  v33.super.isa = sub_125C4C().super.isa;

  [v4 setViews:v33.super.isa];
LABEL_42:

  sub_12366C();
  v36 = sub_125B8C();

  [v4 setDialogPhase:v36];
}

void sub_BAF10(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1237EC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1239AC();
  v50 = *(v9 - 8);
  v51 = v9;
  __chkstk_darwin(v9);
  v49 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_12397C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_15EF00 != -1)
  {
    swift_once();
  }

  v15 = sub_125ABC();
  sub_5B30(v15, qword_161ED8);
  v16 = *(v12 + 16);
  v53 = a2;
  v16(v14, a2, v11);
  v17 = sub_125AAC();
  v18 = sub_125DFC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v48 = a3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v46 = v7;
    v22 = v21;
    *&v54 = v21;
    *v20 = 136315138;
    v23 = sub_12395C();
    v47 = v6;
    v24 = a1;
    v26 = v25;
    (*(v12 + 8))(v14, v11);
    v27 = sub_8530(v23, v26, &v54);
    a1 = v24;
    v6 = v47;

    *(v20 + 4) = v27;
    _os_log_impl(&dword_0, v17, v18, "logTimerSnippetAndDialog called for intent: %s", v20, 0xCu);
    sub_5BB0(v22);
    v7 = v46;
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v28 = sub_12396C();
  if (*(v28 + 16))
  {
    v29 = v49;
    v30 = v50;
    v31 = v51;
    (*(v50 + 16))(v49, v28 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v51);

    v32 = v52;
    sub_12399C();
    (*(v30 + 8))(v29, v31);
    v33 = sub_1237DC();
    v35 = v34;
    (*(v7 + 8))(v32, v6);
  }

  else
  {

    v35 = 0x800000000012E5A0;
    v33 = 0xD000000000000013;
  }

  sub_BA854(a1, v33, v35);
  v37 = v36;

  sub_5AE8(&qword_15F680, &unk_129D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_126CB0;
  strcpy((inited + 32), "ClientFlowView");
  *(inited + 47) = -18;
  v39 = [v37 dictionary];
  if (v39)
  {
    v40 = v39;
    v55 = sub_30B8C(0, &qword_161F98, NSMutableDictionary_ptr);
    *&v54 = v40;
    sub_99B0(&v54, (inited + 48));
  }

  else
  {
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 7104878;
    *(inited + 56) = 0xE300000000000000;
  }

  v41 = sub_DBD0(inited);
  swift_setDeallocating();
  sub_BB4C4(inited + 32);
  v42 = [objc_opt_self() sharedAnalytics];
  if (v42)
  {
    v43 = v42;
    sub_BA4E0(v41);

    isa = sub_125B5C().super.isa;

    [v43 logEventWithType:3700 context:isa];
  }

  else
  {
  }
}

uint64_t sub_BB4C4(uint64_t a1)
{
  v2 = sub_5AE8(&qword_15F688, &qword_1270D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_BB53C()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_161FA8);
  sub_5B30(v0, qword_161FA8);
  return sub_1257AC();
}

uint64_t sub_BB588(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  sub_124EDC();
  v3[11] = swift_task_alloc();
  v4 = sub_125ABC();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = sub_124FFC();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v6 = sub_12501C();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v7 = sub_5AE8(&qword_161FC0, &qword_129DE0);
  v3[21] = v7;
  v3[22] = *(v7 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v8 = sub_12392C();
  v3[25] = v8;
  v3[26] = *(v8 - 8);
  v3[27] = swift_task_alloc();
  v9 = sub_12368C();
  v3[28] = v9;
  v3[29] = *(v9 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_BB874, 0, 0);
}

uint64_t sub_BB874()
{
  v47 = v0;
  v1 = sub_123B5C();
  v2 = &selRef_archivedDataWithRootObject_requiringSecureCoding_error_;
  v3 = [v1 unsupportedReason];

  sub_12361C();
  sub_12391C();
  if (qword_15EF08 != -1)
  {
    swift_once();
  }

  v4 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[9];
  v8 = sub_5B30(v0[12], qword_161FA8);
  v9 = *(v5 + 16);
  v9(v4, v7, v6);
  v45 = v8;
  v10 = sub_125AAC();
  v11 = sub_125DFC();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[24];
  if (v12)
  {
    v44 = v3;
    v14 = v0[22];
    v15 = v0[23];
    v16 = v0[21];
    v17 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v46 = v43;
    *v17 = 136315138;
    v9(v15, v13, v16);
    v18 = sub_125BAC();
    v20 = v19;
    v21 = v16;
    v2 = &selRef_archivedDataWithRootObject_requiringSecureCoding_error_;
    (*(v14 + 8))(v13, v21);
    v22 = v18;
    v3 = v44;
    v23 = sub_8530(v22, v20, &v46);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_0, v10, v11, "[SetTimerAttribute.UnsupportedValueStrategy.makeUnsupportedValueOutput] Called with resolveRecord: %s", v17, 0xCu);
    sub_5BB0(v43);
  }

  else
  {
    v24 = v0[21];
    v25 = v0[22];

    (*(v25 + 8))(v13, v24);
  }

  v26 = v0[14];
  v27 = v0[12];
  v28 = v0[13];
  (*(v0[16] + 104))(v0[17], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[15]);
  (*(v28 + 16))(v26, v45, v27);
  mach_absolute_time();
  sub_12502C();
  v29 = sub_123B5C();
  v30 = [v29 v2[45]];

  if (v30 == &dword_4 + 3)
  {
    v31 = v0[31];
    v32 = v0[32];
    v33 = v0[28];
    v34 = v0[29];
    v35 = v0[9];
    sub_12364C();
    v36 = *(v34 + 8);
    v0[33] = v36;
    v0[34] = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v36(v32, v33);
    (*(v34 + 32))(v32, v31, v33);
    type metadata accessor for TimerBaseCATPatternsExecutor(0);
    sub_124ECC();
    v0[35] = sub_124DBC();
    v37 = swift_task_alloc();
    v0[36] = v37;
    *(v37 + 16) = v35;
    v38 = swift_task_alloc();
    v0[37] = v38;
    *v38 = v0;
    v38[1] = sub_BBCD4;

    return sub_104D80(sub_BDA30, v37);
  }

  else
  {
    v40 = swift_task_alloc();
    v0[39] = v40;
    *v40 = v0;
    v40[1] = sub_BBEF4;
    v41 = v0[30];
    v42 = v0[9];

    return sub_BC780(v41, v3, 0, v42);
  }
}

uint64_t sub_BBCD4(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[38] = v1;

  if (v1)
  {
    v4 = sub_BC3A8;
  }

  else
  {
    v4 = sub_BBE30;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_BBE30()
{
  v1 = v0[3];
  v0[41] = v0[33];
  v0[42] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[43] = v2;
  *v2 = v0;
  v2[1] = sub_BC124;
  v3 = v0[32];
  v4 = v0[27];
  v5 = v0[20];
  v6 = v0[8];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v3, v4, v5, 0);
}

uint64_t sub_BBEF4(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[40] = v1;

  if (v1)
  {
    v4 = sub_BC4E0;
  }

  else
  {
    v4 = sub_BC010;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_BC010()
{
  v1 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
  v5 = *(v3 + 8);
  v5(v1, v4);
  (*(v3 + 32))(v1, v2, v4);
  v6 = v0[6];
  v0[41] = v5;
  v0[42] = v6;
  v6;
  v7 = swift_task_alloc();
  v0[43] = v7;
  *v7 = v0;
  v7[1] = sub_BC124;
  v8 = v0[32];
  v9 = v0[27];
  v10 = v0[20];
  v11 = v0[8];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v11, v8, v9, v10, 0);
}

uint64_t sub_BC124()
{
  v2 = *(*v1 + 336);
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_BC628;
  }

  else
  {
    v3 = sub_BC250;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_BC250()
{
  v1 = *(v0 + 256);
  v11 = *(v0 + 328);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  v8 = *(v0 + 144);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v11(v1, v2);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_BC3A8()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  (*(v2 + 8))(v1, v3);
  (*(v0 + 264))(*(v0 + 256), *(v0 + 224));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_BC4E0()
{
  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v0[32], v0[28]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_BC628()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 144);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  (*(v0 + 328))(*(v0 + 256), *(v0 + 224));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_BC780(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 120) = a2;
  *(v4 + 128) = a4;
  *(v4 + 248) = a3;
  *(v4 + 112) = a1;
  v5 = sub_12368C();
  *(v4 + 136) = v5;
  *(v4 + 144) = *(v5 - 8);
  *(v4 + 152) = swift_task_alloc();
  sub_124EDC();
  *(v4 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_BC874, 0, 0);
}

uint64_t sub_BC874()
{
  v1 = *(v0 + 248);
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  *(v0 + 168) = sub_124DBC();
  sub_12361C();
  if (v1)
  {
    goto LABEL_5;
  }

  v2 = *(v0 + 120);
  if (v2 != 2)
  {
    if (v2 == 1)
    {
      v22 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v3 = swift_task_alloc();
      *(v0 + 176) = v3;
      *v3 = v0;
      v3[1] = sub_BCC5C;
      v4 = 0x800000000012C5A0;
      v5 = 0xD000000000000012;
LABEL_10:

      return (v22)(v5, v4, _swiftEmptyArrayStorage);
    }

LABEL_5:
    sub_5AE8(&qword_161FC0, &qword_129DE0);
    v6 = sub_123B4C();
    v7 = [v6 toLabel];

    if (v7)
    {

      if (qword_15EEC8 != -1)
      {
        swift_once();
      }

      v22 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v8 = swift_task_alloc();
      *(v0 + 216) = v8;
      *v8 = v0;
      v8[1] = sub_BD068;
      v5 = 0xD00000000000001ELL;
      v4 = 0x800000000012CB20;
    }

    else
    {
      v10 = *(v0 + 144);
      v9 = *(v0 + 152);
      v11 = *(v0 + 136);
      v12 = *(v0 + 112);
      sub_12364C();
      (*(v10 + 8))(v12, v11);
      (*(v10 + 32))(v12, v9, v11);
      v22 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v13 = swift_task_alloc();
      *(v0 + 232) = v13;
      *v13 = v0;
      v13[1] = sub_BD2B4;
      v4 = 0xEF726F7272652365;
      v5 = 0x73614272656D6974;
    }

    goto LABEL_10;
  }

  v16 = *(v0 + 144);
  v15 = *(v0 + 152);
  v18 = *(v0 + 128);
  v17 = *(v0 + 136);
  v19 = *(v0 + 112);
  sub_12364C();
  (*(v16 + 8))(v19, v17);
  (*(v16 + 32))(v19, v15, v17);
  v20 = swift_task_alloc();
  *(v0 + 192) = v20;
  *(v20 + 16) = v18;
  v21 = swift_task_alloc();
  *(v0 + 200) = v21;
  *v21 = v0;
  v21[1] = sub_BCEA8;

  return sub_104D80(sub_BDA4C, v20);
}

uint64_t sub_BCC5C(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[23] = v1;

  if (v1)
  {
    v4 = sub_BCE00;
  }

  else
  {
    v4 = sub_BCD78;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_BCD78()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_BCE00()
{
  v1 = v0[18];
  v2 = v0[17];
  v3 = v0[14];

  (*(v1 + 8))(v3, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_BCEA8(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[26] = v1;

  if (v1)
  {
    v4 = sub_BD500;
  }

  else
  {
    v4 = sub_BCFE0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_BCFE0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_BD068(uint64_t a1)
{
  v3 = *v2;
  v3[8] = v2;
  v3[9] = a1;
  v3[10] = v1;
  v3[28] = v1;

  if (v1)
  {
    v4 = sub_BD20C;
  }

  else
  {
    v4 = sub_BD184;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_BD184()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_BD20C()
{
  v1 = v0[18];
  v2 = v0[17];
  v3 = v0[14];

  (*(v1 + 8))(v3, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_BD2B4(uint64_t a1)
{
  v3 = *v2;
  v3[11] = v2;
  v3[12] = a1;
  v3[13] = v1;
  v3[30] = v1;

  if (v1)
  {
    v4 = sub_BD458;
  }

  else
  {
    v4 = sub_BD3D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_BD3D0()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_BD458()
{
  v1 = v0[18];
  v2 = v0[17];
  v3 = v0[14];

  (*(v1 + 8))(v3, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_BD500()
{
  v1 = v0[18];
  v2 = v0[17];
  v3 = v0[14];

  (*(v1 + 8))(v3, v2);

  v4 = v0[1];

  return v4();
}

void sub_BD5A8(uint64_t a1)
{
  sub_5AE8(&qword_161FC0, &qword_129DE0);
  v4 = sub_123B4C();
  sub_12550C();
  sub_1258DC();
  v3 = v2;

  *a1 = v3;
  *(a1 + 8) = 0;
}

uint64_t sub_BD62C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_BD6D4;

  return sub_BB588(a1, a2);
}

uint64_t sub_BD6D4()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_BD808, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_BD808()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_BD8F4()
{
  sub_5AE8(&qword_161FC0, &qword_129DE0);
  v1 = sub_123B4C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_BD96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_503C;

  return UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t sub_BDA50()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_161FC8);
  sub_5B30(v0, qword_161FC8);
  return sub_12578C();
}

uint64_t sub_BDA9C@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 identifier];
  if (v3)
  {
    v4 = v3;
    sub_125B9C();

    sub_12373C();
    v5 = 0;
  }

  else
  {
    if (qword_15EF10 != -1)
    {
      swift_once();
    }

    v6 = sub_125ABC();
    sub_5B30(v6, qword_161FC8);
    v7 = v1;
    v8 = sub_125AAC();
    v9 = sub_125DEC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      v12 = v7;
      v13 = [v12 description];
      v14 = sub_125B9C();
      v16 = v15;

      v17 = sub_8530(v14, v16, &v21);

      *(v10 + 4) = v17;
      _os_log_impl(&dword_0, v8, v9, "Error making descriptive hint for timer. Missing identifier: %s", v10, 0xCu);
      sub_5BB0(v11);
    }

    v5 = 1;
  }

  v18 = sub_12374C();
  v19 = *(*(v18 - 8) + 56);

  return v19(a1, v5, 1, v18);
}

uint64_t sub_BDD04()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_161FE0);
  sub_5B30(v0, qword_161FE0);
  return sub_1257AC();
}

uint64_t sub_BDD50(uint64_t a1, uint64_t a2)
{
  v2[73] = a2;
  v2[72] = a1;
  v3 = sub_123B3C();
  v2[74] = v3;
  v2[75] = *(v3 - 8);
  v2[76] = swift_task_alloc();
  v2[77] = type metadata accessor for CreateTimerHandledParameters(0);
  v2[78] = swift_task_alloc();
  v4 = sub_12503C();
  v2[79] = v4;
  v2[80] = *(v4 - 8);
  v2[81] = swift_task_alloc();
  v5 = sub_1260DC();
  v2[82] = v5;
  v2[83] = *(v5 - 8);
  v2[84] = swift_task_alloc();
  sub_5AE8(&unk_15F170, &unk_126E00);
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v6 = sub_1250BC();
  v2[88] = v6;
  v2[89] = *(v6 - 8);
  v2[90] = swift_task_alloc();
  v7 = sub_125ABC();
  v2[91] = v7;
  v2[92] = *(v7 - 8);
  v2[93] = swift_task_alloc();
  v8 = sub_124FFC();
  v2[94] = v8;
  v2[95] = *(v8 - 8);
  v2[96] = swift_task_alloc();
  v9 = sub_12501C();
  v2[97] = v9;
  v2[98] = *(v9 - 8);
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v10 = sub_124F2C();
  v2[101] = v10;
  v2[102] = *(v10 - 8);
  v2[103] = swift_task_alloc();
  v11 = sub_124F1C();
  v2[104] = v11;
  v2[105] = *(v11 - 8);
  v2[106] = swift_task_alloc();
  v12 = sub_123D1C();
  v2[107] = v12;
  v2[108] = *(v12 - 8);
  v2[109] = swift_task_alloc();
  v13 = sub_12392C();
  v2[110] = v13;
  v2[111] = *(v13 - 8);
  v2[112] = swift_task_alloc();
  v2[113] = swift_task_alloc();
  v14 = sub_12368C();
  v2[114] = v14;
  v2[115] = *(v14 - 8);
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();

  return _swift_task_switch(sub_BE2E4, 0, 0);
}

uint64_t sub_BE2E4()
{
  v52 = v0;
  if (qword_15EF18 != -1)
  {
    swift_once();
  }

  v0[119] = sub_5B30(v0[91], qword_161FE0);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "CreateTimer.HandleIntentStrategy.makeIntentHandledResponse() called.", v3, 2u);
  }

  sub_5AE8(&unk_161EB0, &qword_129CB0);
  v4 = sub_123A9C();
  v5 = [v4 createdTimer];
  v0[120] = v5;

  if (v5)
  {
    v6 = v0[113];
    sub_12361C();
    v0[121] = sub_5AE8(&qword_160810, &unk_127420);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_126EB0;
    *(inited + 32) = v5;
    v8 = v5;
    sub_FF26C(inited, v6);
    swift_setDeallocating();
    swift_arrayDestroy();
    v9 = v8;
    v10 = [v9 identifier];
    if (v10)
    {
      v11 = v0[109];
      v12 = v0[108];
      v13 = v0[107];
      v14 = v10;
      v15 = sub_125B9C();
      v17 = v16;

      sub_D4F0(v15, v17, v11);

      sub_12386C();
      (*(v12 + 8))(v11, v13);
    }

    v18 = v0[106];
    v19 = v0[105];
    v20 = v0[104];
    v21 = v0[103];
    v22 = v0[102];
    v23 = v0[101];
    (*(v19 + 104))(v18, enum case for TipKitSiriTimeSource.timerPlugin(_:), v20);
    (*(v22 + 104))(v21, enum case for TipKitSiriTimeContext.timerCreatedWithSiri(_:), v23);
    sub_12537C();
    (*(v22 + 8))(v21, v23);
    (*(v19 + 8))(v18, v20);
    v24 = v9;
    v25 = sub_125AAC();
    v26 = sub_125DFC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v51 = v28;
      *v27 = 136315138;
      v29 = [v24 identifier];
      if (v29)
      {
        v30 = v29;
        v31 = sub_125B9C();
        v33 = v32;
      }

      else
      {
        v31 = 0;
        v33 = 0;
      }

      v0[69] = v31;
      v0[70] = v33;
      sub_5AE8(&qword_162000, &qword_129F18);
      v40 = sub_125BAC();
      v42 = sub_8530(v40, v41, &v51);

      *(v27 + 4) = v42;
      _os_log_impl(&dword_0, v25, v26, "[CreateTimer.HandleIntentStrategy.makeIntentHandledResponse] Created timer has ID %s", v27, 0xCu);
      sub_5BB0(v28);
    }

    v43 = [v24 identifier];
    if (v43)
    {
      v44 = v43;
      v45 = sub_125B9C();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0;
    }

    v0[122] = v47;
    sub_12573C();
    sub_12572C();
    v48 = v0[10];
    v49 = v0[11];
    sub_23B08(v0 + 7, v48);
    v50 = swift_task_alloc();
    v0[123] = v50;
    *v50 = v0;
    v50[1] = sub_BEA08;

    return dispatch thunk of SessionManaging.sessionIDString(for:)(v45, v47, v48, v49);
  }

  else
  {
    v34 = sub_125AAC();
    v35 = sub_125DEC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "Can NOT retrieve intentResponse.createdTimer.", v36, 2u);
    }

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v37 = 1;
    swift_willThrow();

    v38 = v0[1];

    return v38();
  }
}

uint64_t sub_BEA08(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 992) = a1;
  *(v3 + 1000) = a2;

  return _swift_task_switch(sub_BEB58, 0, 0);
}

uint64_t sub_BEB58()
{
  v146 = *(v0 + 952);
  v1 = *(v0 + 768);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v4 = *(v0 + 744);
  v5 = *(v0 + 736);
  v6 = *(v0 + 728);
  sub_5BB0((v0 + 56));
  *(v0 + 1008) = sub_12524C();
  sub_12523C();
  sub_12522C();

  sub_23B08((v0 + 96), *(v0 + 120));
  *(v0 + 1232) = sub_1235DC() & 1;
  sub_5BB0((v0 + 96));
  v7 = v3;
  v8 = v0;
  v140 = *(v2 + 104);
  v140(v1, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v7);
  v9 = *(v5 + 16);
  v9(v4, v146, v6);
  mach_absolute_time();
  sub_12502C();
  sub_124D9C();
  v10 = sub_124D8C();
  *(v0 + 1016) = sub_113D6C(0, v10);

  sub_12357C();
  sub_23B08((v0 + 136), *(v0 + 160));
  v11 = sub_123A7C();
  *(v0 + 1024) = v12;
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v15 = *(v0 + 952);
    v16 = *(v0 + 768);
    v17 = *(v0 + 752);
    v18 = *(v0 + 744);
    v19 = *(v0 + 728);
    sub_5BB0((v0 + 136));
    v140(v16, enum case for SiriTimeMeasurement.LogDescription.siriSuggestionsDonation(_:), v17);
    v9(v18, v15, v19);
    mach_absolute_time();
    sub_12502C();
    v20 = swift_task_alloc();
    *(v0 + 1032) = v20;
    *v20 = v0;
    v20[1] = sub_BFFB0;
    v21 = *(v0 + 584);

    return sub_C4D14(v13, v14, v21);
  }

  sub_5BB0((v0 + 136));
  if (*(v0 + 1000))
  {
    v23 = *(v0 + 1232);
  }

  else
  {
    v23 = 0;
  }

  sub_12523C();
  sub_12522C();

  sub_23B08(v8 + 22, v8[25]);
  v24 = sub_1235DC();
  sub_5BB0(v8 + 22);
  if ((v24 & 1) != 0 && !v23)
  {
    v25 = v8[120];

    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_126EB0;
    *(v26 + 32) = v25;
    v27 = v25;
    v28 = sub_648C8(v26, 13);
    v8[145] = v28;

    if (v28)
    {
      v29 = objc_opt_self();
      v8[71] = 0;
      v30 = [v29 archivedDataWithRootObject:v28 requiringSecureCoding:1 error:v8 + 71];
      v31 = v8[71];
      if (v30)
      {
        v32 = v30;
        v33 = v31;
        v34 = sub_122EFC();
        v36 = v35;

        v8[146] = v34;
        v8[147] = v36;
        if (qword_15EE18 != -1)
        {
          swift_once();
        }

        v37 = v8[127];
        v38 = v8[73];
        v39 = swift_task_alloc();
        v8[148] = v39;
        v39[2] = v34;
        v39[3] = v36;
        v39[4] = v37;
        v39[5] = v38;
        v40 = swift_task_alloc();
        v8[149] = v40;
        *v40 = v8;
        v40[1] = sub_C3020;

        return sub_3183C(sub_C4D08, v39);
      }

      v113 = v8[115];
      v142 = v8[120];
      v145 = v8[114];
      v155 = v8[113];
      v80 = v8[111];
      v150 = v8[118];
      v152 = v8[110];
      v139 = v8[100];
      v114 = v8[98];
      v115 = v8[97];
      v116 = v31;

      sub_122E8C();

      swift_willThrow();

      (*(v114 + 8))(v139, v115);
      (*(v113 + 8))(v150, v145);
      goto LABEL_43;
    }

    v75 = sub_125AAC();
    v76 = sub_125DEC();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_0, v75, v76, "[CreateTimer.HandleIntentStrategy.makeIntentHandledResponse] Could not get timer action from timer.", v77, 2u);
    }

    v78 = v8[120];
    v79 = v8[115];
    v143 = v8[114];
    v148 = v8[118];
    v80 = v8[111];
    v152 = v8[110];
    v155 = v8[113];
    v81 = v8[100];
    v82 = v8[98];
    v83 = v8[97];

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v84 = 1;
LABEL_34:
    swift_willThrow();

    (*(v82 + 8))(v81, v83);
    (*(v79 + 8))(v148, v143);
LABEL_43:
    (*(v80 + 8))(v155, v152);

    v117 = v8[1];

    return v117();
  }

  v41 = [v8[120] type];
  if (v41 >= 2)
  {
    if (v41 == &dword_0 + 2)
    {

      if (qword_15EE18 != -1)
      {
        swift_once();
      }

      v67 = v8[127];
      sub_5AE8(&qword_15F180, &unk_126E10);
      v68 = swift_allocObject();
      v8[138] = v68;
      *(v68 + 16) = xmmword_126CB0;
      strcpy((v68 + 32), "createdTimer");
      *(v68 + 45) = 0;
      *(v68 + 46) = -5120;
      *(v68 + 72) = type metadata accessor for TimerTimer(0);
      *(v68 + 48) = v67;
      v69 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      swift_retain_n();
      v70 = swift_task_alloc();
      v8[139] = v70;
      *v70 = v8;
      v70[1] = sub_C25C4;
      v71 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v69);
      v72 = 0xD000000000000018;
      v73 = 0x800000000012CEE0;
      v74 = v68;
    }

    else
    {

      if (qword_15EE18 != -1)
      {
        swift_once();
      }

      v108 = sub_124EAC();
      sub_12523C();
      sub_12522C();

      v109 = sub_124E9C();
      v8[141] = v109;
      sub_5AE8(&qword_15F180, &unk_126E10);
      v110 = swift_allocObject();
      v8[142] = v110;
      *(v110 + 16) = xmmword_126CB0;
      *(v110 + 32) = 0x656369766564;
      *(v110 + 40) = 0xE600000000000000;
      *(v110 + 72) = v108;
      *(v110 + 48) = v109;
      v111 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);

      v112 = swift_task_alloc();
      v8[143] = v112;
      *v112 = v8;
      v112[1] = sub_C2AF0;
      v71 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v111);
      v73 = 0x800000000012C010;
      v72 = 0xD000000000000011;
      v74 = v110;
    }

    goto LABEL_54;
  }

  v42 = v8[90];
  v43 = v8[89];
  v44 = v8[88];
  sub_1250AC();
  v45 = sub_12504C();
  (*(v43 + 8))(v42, v44);
  if (!v45)
  {

    if (qword_15EE18 != -1)
    {
      swift_once();
    }

    v85 = v8[127];
    v86 = v8[78];
    v87 = v8[77];
    *v86 = 0;
    v88 = *(v87 + 20);
    v89 = sub_124E4C();
    v90 = *(v89 - 8);
    v91 = *(v90 + 56);
    v91(&v86[v88], 1, 1, v89);
    *v86 = v85;
    v92 = *(v85 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_duration);
    if (v92)
    {
      v93 = v8[84];
      v138 = v8[86];
      v141 = v91;
      v94 = v8[83];
      v149 = v90;
      v95 = v8[82];
      v137 = v92;
      swift_retain_n();
      v136 = v93;
      sub_1260CC();
      v8[35] = v95;
      v8[36] = &off_1592B0;
      v96 = sub_23B4C(v8 + 32);
      (*(v94 + 16))(v96, v93, v95);
      v135 = type metadata accessor for DefaultCircuitBreaker();
      v153 = v89;
      v97 = v8;
      v98 = swift_allocObject();
      v144 = v86;
      v99 = v88;
      v100 = v97[35];
      v101 = sub_23C74((v97 + 32), v100);
      v102 = *(v100 - 8);
      v103 = swift_task_alloc();
      v104 = v100;
      v88 = v99;
      v86 = v144;
      (*(v102 + 16))(v103, v101, v104);
      *(v98 + 56) = v95;
      *(v98 + 64) = &off_1592B0;
      v105 = sub_23B4C((v98 + 32));
      (*(v94 + 32))(v105, v103, v95);
      *(v98 + 72) = sub_1262EC();
      *(v98 + 80) = v106;
      *(v98 + 16) = xmmword_129E00;
      sub_5BB0(v97 + 32);

      v107 = v95;
      v90 = v149;
      (*(v94 + 8))(v136, v107);
      v97[30] = v135;
      v97[31] = &off_1592C0;
      v97[27] = v98;
      v8 = v97;
      v89 = v153;
      sub_A983C(v137, v8 + 27, v138);
      sub_5BB0(v8 + 27);
      v141(v138, 0, 1, v153);
    }

    else
    {
      v91(v8[86], 1, 1, v89);
      swift_retain_n();
    }

    v122 = v8[127];
    v123 = v8[85];
    sub_22A1C(v8[86], &v86[v88]);
    sub_5AE8(&qword_15F180, &unk_126E10);
    v124 = swift_allocObject();
    v8[135] = v124;
    *(v124 + 16) = xmmword_1270C0;
    strcpy((v124 + 32), "createdTimer");
    *(v124 + 45) = 0;
    *(v124 + 46) = -5120;
    v125 = type metadata accessor for TimerTimer(0);
    *(v124 + 48) = v122;
    *(v124 + 72) = v125;
    *(v124 + 80) = 0xD000000000000016;
    *(v124 + 88) = 0x800000000012CEA0;
    sub_E344(&v86[v88], v123, &unk_15F170, &unk_126E00);
    v126 = (*(v90 + 48))(v123, 1, v89);
    v127 = v8[85];
    if (v126 == 1)
    {
      sub_5CA8(v8[85], &unk_15F170, &unk_126E00);
      *(v124 + 96) = 0u;
      *(v124 + 112) = 0u;
    }

    else
    {
      *(v124 + 120) = v89;
      v128 = sub_23B4C((v124 + 96));
      (*(v90 + 32))(v128, v127, v89);
    }

    v129 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
    v130 = swift_task_alloc();
    v8[136] = v130;
    *v130 = v8;
    v130[1] = sub_C206C;
    v71 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v129);
    v72 = 0xD000000000000013;
    v73 = 0x800000000012CEC0;
    v74 = v124;
LABEL_54:

    return v71(v72, v73, v74);
  }

  v46 = sub_125AAC();
  v47 = sub_125DFC();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_0, v46, v47, "[CreateTimer.HandleIntentStrategy.makeIntentHandledResponse] Using RF 2.0 multi-timer path", v48, 2u);
  }

  v49 = v8[120];

  v50 = [v49 identifier];
  if (!v50)
  {

    v118 = sub_125AAC();
    v119 = sub_125DEC();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&dword_0, v118, v119, "[CreateTimer.HandleIntentStrategy.makeIntentHandledResponse] Invalid Timer ID! Cannot continue.", v120, 2u);
    }

    v78 = v8[120];
    v79 = v8[115];
    v143 = v8[114];
    v148 = v8[118];
    v80 = v8[111];
    v152 = v8[110];
    v155 = v8[113];
    v81 = v8[100];
    v82 = v8[98];
    v83 = v8[97];

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v121 = 0;
    goto LABEL_34;
  }

  if (qword_15EE10 != -1)
  {
    swift_once();
  }

  v51 = v8[127];
  v52 = v8[87];
  if (*(v51 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_duration))
  {
    v53 = v8[84];
    v151 = *(v51 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_duration);
    v154 = v8[87];
    v54 = v8[83];
    v55 = v8[82];

    sub_1260CC();
    v8[55] = v55;
    v8[56] = &off_1592B0;
    v56 = sub_23B4C(v8 + 52);
    (*(v54 + 16))(v56, v53, v55);
    v147 = type metadata accessor for DefaultCircuitBreaker();
    v57 = swift_allocObject();
    v58 = v8;
    v59 = v8[55];
    v60 = sub_23C74((v58 + 52), v59);
    v61 = *(v59 - 8);
    v62 = swift_task_alloc();
    v63 = v59;
    v8 = v58;
    (*(v61 + 16))(v62, v60, v63);
    *(v57 + 56) = v55;
    *(v57 + 64) = &off_1592B0;
    v64 = sub_23B4C((v57 + 32));
    (*(v54 + 32))(v64, v62, v55);
    *(v57 + 72) = sub_1262EC();
    *(v57 + 80) = v65;
    *(v57 + 16) = xmmword_129E00;
    sub_5BB0(v58 + 52);

    (*(v54 + 8))(v53, v55);
    v58[50] = v147;
    v58[51] = &off_1592C0;
    v58[47] = v57;
    sub_A983C(v151, v58 + 47, v154);
    sub_5BB0(v58 + 47);
    v66 = sub_124E4C();
    (*(*(v66 - 8) + 56))(v154, 0, 1, v66);
  }

  else
  {
    v131 = sub_124E4C();
    (*(*(v131 - 8) + 56))(v52, 1, 1, v131);
  }

  v132 = v8[127];
  v133 = swift_task_alloc();
  v8[130] = v133;
  *v133 = v8;
  v133[1] = sub_C12FC;
  v134 = v8[87];

  return sub_8ED04(v132, v134);
}

uint64_t sub_BFFB0()
{

  return _swift_task_switch(sub_C00F4, 0, 0);
}

uint64_t sub_C00F4(uint64_t a1)
{
  v2 = *(v1 + 792);
  v3 = *(v1 + 784);
  v4 = *(v1 + 776);
  sub_12500C();
  (*(v3 + 8))(v2, v4);
  if (*(v1 + 1000))
  {
    v5 = *(v1 + 1232);
  }

  else
  {
    v5 = 0;
  }

  sub_12523C();
  sub_12522C();

  sub_23B08((v1 + 176), *(v1 + 200));
  v6 = sub_1235DC();
  sub_5BB0((v1 + 176));
  if ((v6 & 1) != 0 && !v5)
  {
    v7 = *(v1 + 960);

    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_126EB0;
    *(v8 + 32) = v7;
    v9 = v7;
    v10 = sub_648C8(v8, 13);
    *(v1 + 1160) = v10;

    if (v10)
    {
      v11 = objc_opt_self();
      *(v1 + 568) = 0;
      v12 = [v11 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v1 + 568];
      v13 = *(v1 + 568);
      if (v12)
      {
        v14 = v12;
        v15 = v13;
        v16 = sub_122EFC();
        v18 = v17;

        *(v1 + 1168) = v16;
        *(v1 + 1176) = v18;
        if (qword_15EE18 != -1)
        {
          swift_once();
        }

        v19 = *(v1 + 1016);
        v20 = *(v1 + 584);
        v21 = swift_task_alloc();
        *(v1 + 1184) = v21;
        v21[2] = v16;
        v21[3] = v18;
        v21[4] = v19;
        v21[5] = v20;
        v22 = swift_task_alloc();
        *(v1 + 1192) = v22;
        *v22 = v1;
        v22[1] = sub_C3020;

        return sub_3183C(sub_C4D08, v21);
      }

      v94 = *(v1 + 920);
      v123 = *(v1 + 960);
      v126 = *(v1 + 912);
      v136 = *(v1 + 904);
      v95 = *(v1 + 888);
      v130 = *(v1 + 944);
      v134 = *(v1 + 880);
      v121 = *(v1 + 800);
      v96 = *(v1 + 784);
      v97 = *(v1 + 776);
      v98 = v13;

      sub_122E8C();

      swift_willThrow();

      (*(v96 + 8))(v121, v97);
      (*(v94 + 8))(v130, v126);
      (*(v95 + 8))(v136, v134);
      goto LABEL_39;
    }

    v57 = sub_125AAC();
    v58 = sub_125DEC();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_0, v57, v58, "[CreateTimer.HandleIntentStrategy.makeIntentHandledResponse] Could not get timer action from timer.", v59, 2u);
    }

    v60 = *(v1 + 960);
    v61 = *(v1 + 920);
    v124 = *(v1 + 912);
    v128 = *(v1 + 944);
    v62 = *(v1 + 888);
    v132 = *(v1 + 880);
    v135 = *(v1 + 904);
    v63 = *(v1 + 800);
    v64 = *(v1 + 784);
    v65 = *(v1 + 776);

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v66 = 1;
LABEL_30:
    swift_willThrow();

    (*(v64 + 8))(v63, v65);
    (*(v61 + 8))(v128, v124);
    (*(v62 + 8))(v135, v132);
LABEL_39:

    v99 = *(v1 + 8);

    return v99();
  }

  v24 = [*(v1 + 960) type];
  if (v24 >= 2)
  {
    if (v24 == &dword_0 + 2)
    {

      if (qword_15EE18 != -1)
      {
        swift_once();
      }

      v49 = *(v1 + 1016);
      sub_5AE8(&qword_15F180, &unk_126E10);
      v50 = swift_allocObject();
      *(v1 + 1104) = v50;
      *(v50 + 16) = xmmword_126CB0;
      strcpy((v50 + 32), "createdTimer");
      *(v50 + 45) = 0;
      *(v50 + 46) = -5120;
      *(v50 + 72) = type metadata accessor for TimerTimer(0);
      *(v50 + 48) = v49;
      v51 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      swift_retain_n();
      v52 = swift_task_alloc();
      *(v1 + 1112) = v52;
      *v52 = v1;
      v52[1] = sub_C25C4;
      v53 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v51);
      v54 = 0xD000000000000018;
      v55 = 0x800000000012CEE0;
      v56 = v50;
    }

    else
    {

      if (qword_15EE18 != -1)
      {
        swift_once();
      }

      v89 = sub_124EAC();
      sub_12523C();
      sub_12522C();

      v90 = sub_124E9C();
      *(v1 + 1128) = v90;
      sub_5AE8(&qword_15F180, &unk_126E10);
      v91 = swift_allocObject();
      *(v1 + 1136) = v91;
      *(v91 + 16) = xmmword_126CB0;
      *(v91 + 32) = 0x656369766564;
      *(v91 + 40) = 0xE600000000000000;
      *(v91 + 72) = v89;
      *(v91 + 48) = v90;
      v92 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);

      v93 = swift_task_alloc();
      *(v1 + 1144) = v93;
      *v93 = v1;
      v93[1] = sub_C2AF0;
      v53 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v92);
      v55 = 0x800000000012C010;
      v54 = 0xD000000000000011;
      v56 = v91;
    }

    goto LABEL_50;
  }

  v25 = *(v1 + 720);
  v26 = *(v1 + 712);
  v27 = *(v1 + 704);
  sub_1250AC();
  v28 = sub_12504C();
  (*(v26 + 8))(v25, v27);
  if (!v28)
  {

    if (qword_15EE18 != -1)
    {
      swift_once();
    }

    v67 = *(v1 + 1016);
    v68 = *(v1 + 624);
    v69 = *(v1 + 616);
    *v68 = 0;
    v70 = *(v69 + 20);
    v71 = sub_124E4C();
    v72 = *(v71 - 8);
    v73 = *(v72 + 56);
    v73(&v68[v70], 1, 1, v71);
    *v68 = v67;
    v74 = *(v67 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_duration);
    if (v74)
    {
      v75 = *(v1 + 672);
      v120 = *(v1 + 688);
      v122 = v73;
      v76 = *(v1 + 664);
      v133 = v71;
      v77 = *(v1 + 656);
      v119 = v74;
      swift_retain_n();
      v118 = v75;
      sub_1260CC();
      *(v1 + 280) = v77;
      *(v1 + 288) = &off_1592B0;
      v78 = sub_23B4C((v1 + 256));
      (*(v76 + 16))(v78, v75, v77);
      v117 = type metadata accessor for DefaultCircuitBreaker();
      v125 = v68;
      v129 = v72;
      v79 = swift_allocObject();
      v80 = v70;
      v81 = *(v1 + 280);
      v82 = sub_23C74(v1 + 256, v81);
      v83 = *(v81 - 8);
      v84 = swift_task_alloc();
      v85 = v81;
      v70 = v80;
      v68 = v125;
      (*(v83 + 16))(v84, v82, v85);
      *(v79 + 56) = v77;
      *(v79 + 64) = &off_1592B0;
      v86 = sub_23B4C((v79 + 32));
      (*(v76 + 32))(v86, v84, v77);
      *(v79 + 72) = sub_1262EC();
      *(v79 + 80) = v87;
      *(v79 + 16) = xmmword_129E00;
      sub_5BB0((v1 + 256));

      v88 = v77;
      v71 = v133;
      (*(v76 + 8))(v118, v88);
      *(v1 + 240) = v117;
      *(v1 + 248) = &off_1592C0;
      *(v1 + 216) = v79;
      v72 = v129;
      sub_A983C(v119, (v1 + 216), v120);
      sub_5BB0((v1 + 216));
      v122(v120, 0, 1, v133);
    }

    else
    {
      v73(*(v1 + 688), 1, 1, v71);
      swift_retain_n();
    }

    v104 = *(v1 + 1016);
    v105 = *(v1 + 680);
    sub_22A1C(*(v1 + 688), &v68[v70]);
    sub_5AE8(&qword_15F180, &unk_126E10);
    v106 = swift_allocObject();
    *(v1 + 1080) = v106;
    *(v106 + 16) = xmmword_1270C0;
    strcpy((v106 + 32), "createdTimer");
    *(v106 + 45) = 0;
    *(v106 + 46) = -5120;
    v107 = type metadata accessor for TimerTimer(0);
    *(v106 + 48) = v104;
    *(v106 + 72) = v107;
    *(v106 + 80) = 0xD000000000000016;
    *(v106 + 88) = 0x800000000012CEA0;
    sub_E344(&v68[v70], v105, &unk_15F170, &unk_126E00);
    v108 = (*(v72 + 48))(v105, 1, v71);
    v109 = *(v1 + 680);
    if (v108 == 1)
    {
      sub_5CA8(*(v1 + 680), &unk_15F170, &unk_126E00);
      *(v106 + 96) = 0u;
      *(v106 + 112) = 0u;
    }

    else
    {
      *(v106 + 120) = v71;
      v110 = sub_23B4C((v106 + 96));
      (*(v72 + 32))(v110, v109, v71);
    }

    v111 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
    v112 = swift_task_alloc();
    *(v1 + 1088) = v112;
    *v112 = v1;
    v112[1] = sub_C206C;
    v53 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v111);
    v54 = 0xD000000000000013;
    v55 = 0x800000000012CEC0;
    v56 = v106;
LABEL_50:

    return v53(v54, v55, v56);
  }

  v29 = sub_125AAC();
  v30 = sub_125DFC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_0, v29, v30, "[CreateTimer.HandleIntentStrategy.makeIntentHandledResponse] Using RF 2.0 multi-timer path", v31, 2u);
  }

  v32 = *(v1 + 960);

  v33 = [v32 identifier];
  if (!v33)
  {

    v100 = sub_125AAC();
    v101 = sub_125DEC();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_0, v100, v101, "[CreateTimer.HandleIntentStrategy.makeIntentHandledResponse] Invalid Timer ID! Cannot continue.", v102, 2u);
    }

    v60 = *(v1 + 960);
    v61 = *(v1 + 920);
    v124 = *(v1 + 912);
    v128 = *(v1 + 944);
    v62 = *(v1 + 888);
    v132 = *(v1 + 880);
    v135 = *(v1 + 904);
    v63 = *(v1 + 800);
    v64 = *(v1 + 784);
    v65 = *(v1 + 776);

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v103 = 0;
    goto LABEL_30;
  }

  if (qword_15EE10 != -1)
  {
    swift_once();
  }

  v34 = *(v1 + 1016);
  v35 = *(v1 + 696);
  if (*(v34 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_duration))
  {
    v36 = *(v1 + 672);
    v131 = *(v34 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_duration);
    v37 = *(v1 + 664);
    v38 = *(v1 + 656);

    sub_1260CC();
    *(v1 + 440) = v38;
    *(v1 + 448) = &off_1592B0;
    v39 = sub_23B4C((v1 + 416));
    (*(v37 + 16))(v39, v36, v38);
    v127 = type metadata accessor for DefaultCircuitBreaker();
    v40 = swift_allocObject();
    v41 = *(v1 + 440);
    v42 = sub_23C74(v1 + 416, v41);
    v43 = *(v41 - 8);
    v44 = v35;
    v45 = swift_task_alloc();
    (*(v43 + 16))(v45, v42, v41);
    *(v40 + 56) = v38;
    *(v40 + 64) = &off_1592B0;
    v46 = sub_23B4C((v40 + 32));
    (*(v37 + 32))(v46, v45, v38);
    *(v40 + 72) = sub_1262EC();
    *(v40 + 80) = v47;
    *(v40 + 16) = xmmword_129E00;
    sub_5BB0((v1 + 416));

    (*(v37 + 8))(v36, v38);
    *(v1 + 400) = v127;
    *(v1 + 408) = &off_1592C0;
    *(v1 + 376) = v40;
    sub_A983C(v131, (v1 + 376), v44);
    sub_5BB0((v1 + 376));
    v48 = sub_124E4C();
    (*(*(v48 - 8) + 56))(v44, 0, 1, v48);
  }

  else
  {
    v113 = sub_124E4C();
    (*(*(v113 - 8) + 56))(v35, 1, 1, v113);
  }

  v114 = *(v1 + 1016);
  v115 = swift_task_alloc();
  *(v1 + 1040) = v115;
  *v115 = v1;
  v115[1] = sub_C12FC;
  v116 = *(v1 + 696);

  return sub_8ED04(v114, v116);
}

uint64_t sub_C12FC(uint64_t a1)
{
  v3 = *v2;
  v3[131] = a1;
  v3[132] = v1;

  sub_5CA8(v3[87], &unk_15F170, &unk_126E00);

  if (v1)
  {

    v4 = sub_C371C;
  }

  else
  {
    v4 = sub_C14B8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_C14B8(uint64_t a1)
{
  v41 = v1;
  v2 = *(v1 + 1000);
  if (v2)
  {

    v3 = sub_125AAC();
    v4 = sub_125DFC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v1 + 992);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v40 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_8530(v5, v2, &v40);
      _os_log_impl(&dword_0, v3, v4, "[CreateTimer.HandleIntentStrategy.makeIntentHandledResponse] We have a live activity: %s", v6, 0xCu);
      sub_5BB0(v7);
    }

    v8 = *(v1 + 1232);
    v9 = *(v1 + 1000);
    v10 = *(v1 + 904);
    v11 = *(v1 + 896);
    v12 = *(v1 + 888);
    v13 = *(v1 + 880);
    sub_12361C();
    (*(v12 + 16))(v11, v10, v13);
    if (v8 == 1 && v9)
    {
      *(v1 + 368) = 0;
      *(v1 + 336) = 0u;
      *(v1 + 352) = 0u;
    }

    else
    {
      v31 = *(v1 + 648);
      v32 = *(v1 + 640);
      v33 = *(v1 + 632);
      sub_5AE8(&qword_15F940, &unk_127410);
      v34 = *(sub_124F4C() - 8);
      v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_126CB0;
      sub_1135FC(v36 + v35);
      sub_12521C();
      (*(v32 + 104))(v31, enum case for SiriTimePluginModel.timerMulti(_:), v33);
      *(v1 + 360) = v33;
      *(v1 + 368) = sub_C5B0C(&qword_15F930, &type metadata accessor for SiriTimePluginModel, &protocol conformance descriptor for SiriTimePluginModel);
      v37 = sub_23B4C((v1 + 336));
      (*(v32 + 32))(v37, v31, v33);
    }

    v38 = swift_task_alloc();
    *(v1 + 1064) = v38;
    *v38 = v1;
    v38[1] = sub_C1A70;
    v30 = *(v1 + 1000);
    v29 = *(v1 + 992);
    v24 = *(v1 + 936);
    v25 = *(v1 + 896);
    v26 = *(v1 + 800);
    v27 = *(v1 + 576);
    v44 = 2;
    v43 = 0x800000000012CEC0;
    v28 = v1 + 336;
  }

  else
  {
    v14 = sub_125AAC();
    v15 = sub_125DFC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "[CreateTimer.HandleIntentStrategy.makeIntentHandledResponse] No live activity - use snippet model.", v16, 2u);
    }

    v17 = *(v1 + 640);
    v18 = *(v1 + 632);

    sub_12361C();
    *(v1 + 320) = v18;
    *(v1 + 328) = sub_C5B0C(&qword_15F930, &type metadata accessor for SiriTimePluginModel, &protocol conformance descriptor for SiriTimePluginModel);
    v19 = sub_23B4C((v1 + 296));
    sub_5AE8(&qword_15F940, &unk_127410);
    v20 = *(sub_124F4C() - 8);
    v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_126CB0;
    sub_1135FC(v22 + v21);
    sub_12521C();
    (*(v17 + 104))(v19, enum case for SiriTimePluginModel.timerMulti(_:), v18);
    v23 = swift_task_alloc();
    *(v1 + 1072) = v23;
    *v23 = v1;
    v23[1] = sub_C1C94;
    v24 = *(v1 + 928);
    v25 = *(v1 + 904);
    v26 = *(v1 + 800);
    v27 = *(v1 + 576);
    v44 = 2;
    v43 = 0x800000000012CEC0;
    v28 = v1 + 296;
    v29 = 0;
    v30 = 0;
  }

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v27, v24, v25, v28, v26, v29, v30, 0xD000000000000013);
}

uint64_t sub_C1A70()
{
  v1 = *v0;
  v2 = *(*v0 + 936);
  v3 = *(*v0 + 920);
  v4 = *(*v0 + 912);
  v5 = *(*v0 + 896);
  v6 = *(*v0 + 888);
  v7 = *(*v0 + 880);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_5CA8(v1 + 336, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_C5B5C, 0, 0);
}

uint64_t sub_C1C94()
{
  v1 = *v0;
  v2 = *(*v0 + 928);
  v3 = *(*v0 + 920);
  v4 = *(*v0 + 912);

  (*(v3 + 8))(v2, v4);
  sub_5CA8(v1 + 296, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_C1E38, 0, 0);
}

uint64_t sub_C1E38()
{
  v1 = *(v0 + 960);

  v2 = *(v0 + 944);
  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = *(v0 + 904);
  v6 = *(v0 + 888);
  v7 = *(v0 + 880);
  v8 = *(v0 + 800);
  v9 = *(v0 + 784);
  v10 = *(v0 + 776);

  (*(v9 + 8))(v8, v10);
  (*(v3 + 8))(v2, v4);
  (*(v6 + 8))(v5, v7);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_C206C(uint64_t a1)
{
  v3 = *v2;
  v3[57] = v2;
  v3[58] = a1;
  v3[59] = v1;
  v3[137] = v1;

  if (v1)
  {

    v4 = sub_C2378;
  }

  else
  {
    v4 = sub_C21EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_C21EC()
{
  sub_C5A60(v0[78], type metadata accessor for CreateTimerHandledParameters);
  v1 = v0[58];
  v2 = v0[125];
  v3 = v0[124];
  v4 = v0[118];
  v5 = v0[116];
  v6 = v0[115];
  v7 = v0[114];
  v8 = v0[113];
  v0[151] = v1;
  (*(v6 + 16))(v5, v4, v7);
  v9 = swift_task_alloc();
  v9[2] = v3;
  v9[3] = v2;
  v9[4] = v8;
  v1;
  sub_123B0C();

  v10 = swift_task_alloc();
  v0[152] = v10;
  *v10 = v0;
  v10[1] = sub_C3334;
  v11 = v0[100];
  v12 = v0[76];
  v13 = v0[72];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v13, v12, v11);
}

uint64_t sub_C2378()
{
  v1 = v0[120];
  v2 = v0[118];
  v3 = v0[115];
  v4 = v0[114];
  v5 = v0[111];
  v11 = v0[110];
  v12 = v0[113];
  v6 = v0[100];
  v7 = v0[98];
  v8 = v0[97];
  sub_C5A60(v0[78], type metadata accessor for CreateTimerHandledParameters);

  (*(v7 + 8))(v6, v8);
  (*(v3 + 8))(v2, v4);
  (*(v5 + 8))(v12, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_C25C4(uint64_t a1)
{
  v3 = *v2;
  v3[60] = v2;
  v3[61] = a1;
  v3[62] = v1;
  v3[140] = v1;

  if (v1)
  {

    v4 = sub_C28BC;
  }

  else
  {
    v4 = sub_C2744;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_C2744()
{

  v1 = v0[61];
  v2 = v0[125];
  v3 = v0[124];
  v4 = v0[118];
  v5 = v0[116];
  v6 = v0[115];
  v7 = v0[114];
  v8 = v0[113];
  v0[151] = v1;
  (*(v6 + 16))(v5, v4, v7);
  v9 = swift_task_alloc();
  v9[2] = v3;
  v9[3] = v2;
  v9[4] = v8;
  v1;
  sub_123B0C();

  v10 = swift_task_alloc();
  v0[152] = v10;
  *v10 = v0;
  v10[1] = sub_C3334;
  v11 = v0[100];
  v12 = v0[76];
  v13 = v0[72];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v13, v12, v11);
}

uint64_t sub_C28BC()
{
  v1 = v0[120];
  v2 = v0[118];
  v3 = v0[115];
  v4 = v0[114];
  v12 = v0[113];
  v5 = v0[111];
  v6 = v0[110];
  v7 = v0[100];
  v8 = v0[98];
  v9 = v0[97];

  (*(v8 + 8))(v7, v9);
  (*(v3 + 8))(v2, v4);
  (*(v5 + 8))(v12, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_C2AF0(uint64_t a1)
{
  v3 = *v2;
  v3[63] = v2;
  v3[64] = a1;
  v3[65] = v1;
  v3[144] = v1;

  if (v1)
  {

    v4 = sub_C2DE8;
  }

  else
  {
    v4 = sub_C2C70;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_C2C70()
{

  v1 = v0[64];
  v2 = v0[125];
  v3 = v0[124];
  v4 = v0[118];
  v5 = v0[116];
  v6 = v0[115];
  v7 = v0[114];
  v8 = v0[113];
  v0[151] = v1;
  (*(v6 + 16))(v5, v4, v7);
  v9 = swift_task_alloc();
  v9[2] = v3;
  v9[3] = v2;
  v9[4] = v8;
  v1;
  sub_123B0C();

  v10 = swift_task_alloc();
  v0[152] = v10;
  *v10 = v0;
  v10[1] = sub_C3334;
  v11 = v0[100];
  v12 = v0[76];
  v13 = v0[72];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v13, v12, v11);
}

uint64_t sub_C2DE8()
{
  v1 = v0[120];
  v2 = v0[118];
  v3 = v0[115];
  v4 = v0[114];
  v5 = v0[111];
  v11 = v0[110];
  v12 = v0[113];
  v6 = v0[100];
  v7 = v0[98];
  v8 = v0[97];

  (*(v7 + 8))(v6, v8);
  (*(v3 + 8))(v2, v4);
  (*(v5 + 8))(v12, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_C3020(uint64_t a1)
{
  v3 = *v2;
  v3[66] = v2;
  v3[67] = a1;
  v3[68] = v1;
  v3[150] = v1;

  if (v1)
  {

    v4 = sub_C394C;
  }

  else
  {

    v4 = sub_C31A8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_C31A8()
{
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1168);

  sub_E498(v2, v1);
  v3 = *(v0 + 536);
  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  v6 = *(v0 + 944);
  v7 = *(v0 + 928);
  v8 = *(v0 + 920);
  v9 = *(v0 + 912);
  v10 = *(v0 + 904);
  *(v0 + 1208) = v3;
  (*(v8 + 16))(v7, v6, v9);
  v11 = swift_task_alloc();
  v11[2] = v5;
  v11[3] = v4;
  v11[4] = v10;
  v3;
  sub_123B0C();

  v12 = swift_task_alloc();
  *(v0 + 1216) = v12;
  *v12 = v0;
  v12[1] = sub_C3334;
  v13 = *(v0 + 800);
  v14 = *(v0 + 608);
  v15 = *(v0 + 576);

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v15, v14, v13);
}

uint64_t sub_C3334()
{
  v2 = *v1;
  *(*v1 + 1224) = v0;

  v3 = v2[151];
  (*(v2[75] + 8))(v2[76], v2[74]);

  if (v0)
  {
    v4 = sub_C3B94;
  }

  else
  {
    v4 = sub_C34E8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_C34E8()
{
  v1 = *(v0 + 960);

  v2 = *(v0 + 944);
  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = *(v0 + 904);
  v6 = *(v0 + 888);
  v7 = *(v0 + 880);
  v8 = *(v0 + 800);
  v9 = *(v0 + 784);
  v10 = *(v0 + 776);

  (*(v9 + 8))(v8, v10);
  (*(v3 + 8))(v2, v4);
  (*(v6 + 8))(v5, v7);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_C371C()
{
  v1 = v0[120];
  v2 = v0[118];
  v3 = v0[115];
  v4 = v0[114];
  v12 = v0[113];
  v5 = v0[111];
  v6 = v0[110];
  v7 = v0[100];
  v8 = v0[98];
  v9 = v0[97];

  (*(v8 + 8))(v7, v9);
  (*(v3 + 8))(v2, v4);
  (*(v5 + 8))(v12, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_C394C()
{
  v1 = v0[145];
  v2 = v0[120];
  v3 = v0[115];
  v4 = v0[114];
  v13 = v0[113];
  v5 = v0[111];
  v11 = v0[118];
  v12 = v0[110];
  v6 = v0[100];
  v7 = v0[98];
  v8 = v0[97];
  sub_E498(v0[146], v0[147]);

  (*(v7 + 8))(v6, v8);
  (*(v3 + 8))(v11, v4);
  (*(v5 + 8))(v13, v12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_C3B94()
{
  v1 = *(v0 + 960);
  v2 = *(v0 + 944);
  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = *(v0 + 888);
  v11 = *(v0 + 880);
  v12 = *(v0 + 904);
  v6 = *(v0 + 800);
  v7 = *(v0 + 784);
  v8 = *(v0 + 776);

  (*(v7 + 8))(v6, v8);
  (*(v3 + 8))(v2, v4);
  (*(v5 + 8))(v12, v11);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_C3DCC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1260DC();
  v39 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5AE8(&unk_15F170, &unk_126E00);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  sub_122EEC(0);
  sub_124E1C();
  v15 = sub_124E4C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v18 = 1;
  v41 = v16 + 56;
  v17(v14, 0, 1, v15);
  TimerHandledOnWatchParameters = type metadata accessor for CreateTimerHandledOnWatchParameters(0);
  sub_22A1C(v14, a1 + *(TimerHandledOnWatchParameters + 28));

  a1[1] = a4;
  v19 = *(a4 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_duration);
  if (v19)
  {
    v37 = v8;
    v38 = v19;
    sub_1260CC();
    v43 = v6;
    v44 = &off_1592B0;
    v20 = sub_23B4C(v42);
    v21 = v39;
    (*(v39 + 16))(v20, v8, v6);
    v36 = type metadata accessor for DefaultCircuitBreaker();
    v22 = swift_allocObject();
    v23 = sub_23C74(v42, v43);
    v35 = &v35;
    __chkstk_darwin(v23);
    v25 = v15;
    v26 = v12;
    v27 = v17;
    v28 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v28);
    *(v22 + 56) = v6;
    *(v22 + 64) = &off_1592B0;
    v30 = sub_23B4C((v22 + 32));
    v31 = v28;
    v17 = v27;
    v12 = v26;
    v15 = v25;
    (*(v21 + 32))(v30, v31, v6);
    *(v22 + 72) = sub_1262EC();
    *(v22 + 80) = v32;
    *(v22 + 16) = xmmword_129E00;
    sub_5BB0(v42);
    (*(v21 + 8))(v37, v6);
    v43 = v36;
    v44 = &off_1592C0;
    v42[0] = v22;
    sub_A983C(v38, v42, v12);
    sub_5BB0(v42);
    v18 = 0;
  }

  v17(v12, v18, 1, v15);
  sub_22A1C(v12, a1 + *(TimerHandledOnWatchParameters + 24));
  sub_124DEC();
  sub_5AE8(&unk_161EB0, &qword_129CB0);
  sub_123AAC();
  v33 = sub_124DDC();

  *a1 = v33;
  return result;
}

uint64_t sub_C41E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_5AE8(&unk_162190, &unk_128500);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;

  sub_123B2C();
  v8 = sub_12392C();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a4, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  return sub_123B1C();
}

void sub_C4304(void **a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_122F6C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if ([v9 state] == &dword_0 + 3)
  {
    sub_5AE8(&unk_161EB0, &qword_129CB0);
    v10 = sub_123A9C();
    v11 = [v10 createdTimer];

    if (!v11 || (v12 = [v11 identifier], v11, !v12))
    {
      v20 = *a3 + 1;
      if (!__OFADD__(*a3, 1))
      {
LABEL_9:
        *a3 = v20;
        return;
      }

      goto LABEL_15;
    }

    v13 = sub_125B9C();
    v23 = v14;

    v15 = [v9 timerID];
    if (!v15)
    {
LABEL_16:
      __break(1u);
      return;
    }

    v16 = v15;
    sub_122F4C();

    v17 = sub_122F3C();
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    if (v17 == v13 && v19 == v23)
    {

      return;
    }

    v21 = sub_1261BC();

    if ((v21 & 1) == 0)
    {
      v20 = *a3 + 1;
      if (!__OFADD__(*a3, 1))
      {
        goto LABEL_9;
      }

      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }
}

void sub_C4534(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_125F6C();
    sub_C5AC0();
    sub_C5B0C(&qword_162018, sub_C5AC0, &protocol conformance descriptor for NSObject);
    sub_125D6C();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        a1(&v26);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_125F8C())
        {
          goto LABEL_19;
        }

        sub_C5AC0();
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      v18 = v20;
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_19:
      v18 = v5;
    }

    sub_C5B54(v18);
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_C4764(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_C4804;

  return sub_BDD50(a1, a2);
}

uint64_t sub_C4804()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_C4938, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_C4938()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_C4A04(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_C4AA4;

  return sub_BDD50(a1, a2);
}

uint64_t sub_C4AA4()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_C4BD8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_C4BD8()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

unint64_t sub_C4CA8()
{
  result = qword_161FF8;
  if (!qword_161FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_161FF8);
  }

  return result;
}

uint64_t sub_C4D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1254DC();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for TimeSuggestionExecutionParameters(0);
  v3[10] = swift_task_alloc();
  sub_5AE8(&qword_162008, &qword_129F20);
  v3[11] = swift_task_alloc();
  v5 = sub_12532C();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v6 = sub_1250FC();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v7 = sub_1250BC();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  sub_5AE8(&qword_15F960, &qword_12BAF0);
  v3[21] = swift_task_alloc();
  v8 = sub_122F6C();
  v3[22] = v8;
  v3[23] = *(v8 - 8);
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_C4FE8, 0, 0);
}

uint64_t sub_C4FE8()
{
  v19 = v0;
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  sub_122F2C();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_5CA8(v0[21], &qword_15F960, &qword_12BAF0);
    if (qword_15EF18 != -1)
    {
      swift_once();
    }

    v4 = sub_125ABC();
    sub_5B30(v4, qword_161FE0);

    v5 = sub_125AAC();
    v6 = sub_125DEC();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[3];
      v7 = v0[4];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_8530(v8, v7, v18);
      _os_log_impl(&dword_0, v5, v6, "CreateTimer - unable to parse %s to a UUID", v9, 0xCu);
      sub_5BB0(v10);
    }

    goto LABEL_12;
  }

  v12 = v0[19];
  v11 = v0[20];
  v13 = v0[18];
  (*(v0[23] + 32))(v0[24], v0[21], v0[22]);
  sub_1250AC();
  v14 = sub_12507C();
  (*(v12 + 8))(v11, v13);
  if (!v14)
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
LABEL_12:

    v16 = v0[1];

    return v16();
  }

  v0[2] = 0;
  sub_1254EC();
  sub_1250CC();
  v15 = swift_task_alloc();
  v0[25] = v15;
  *v15 = v0;
  v15[1] = sub_C530C;

  return SiriTimeDeviceContextProvider.fetchTimerContexts()();
}

uint64_t sub_C530C(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  *(*v1 + 208) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_C546C, 0, 0);
}

uint64_t sub_C546C()
{
  v1 = v0[26];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[13];
    v4 = *(v3 + 16);
    v3 += 16;
    v31 = v4;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v30 = *(v3 + 56);
    v6 = (v3 - 8);
    do
    {
      v7 = v0[14];
      v8 = v0[12];
      v9 = v0[5];
      v31(v7, v5, v8);
      v10 = sub_12531C();
      v11 = swift_task_alloc();
      *(v11 + 16) = v9;
      *(v11 + 24) = v0 + 2;
      sub_C4534(sub_C5A44, v11, v10);

      (*v6)(v7, v8);
      v5 += v30;
      --v2;
    }

    while (v2);
  }

  v33 = AFDeviceSupportsEchoCancellation();
  v12 = [objc_opt_self() sharedPreferences];
  v32 = [v12 deviceUsesCompactVoiceTrigger];

  sub_124C7C();
  if (sub_124C5C())
  {
    sub_124C3C();

    sub_1254FC();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v0[10];
  v15 = v0[11];
  v17 = v0[8];
  v16 = v0[9];
  v19 = v0[6];
  v18 = v0[7];
  v20 = sub_124CCC();
  (*(*(v20 - 8) + 56))(v15, v13, 1, v20);
  sub_5AE8(&unk_161EB0, &qword_129CB0);
  v21 = sub_123ABC();
  sub_1255CC();
  v23 = v22;

  v24 = v0[2];
  sub_E344(v15, v14 + *(v16 + 28), &qword_162008, &qword_129F20);
  *v14 = v23;
  *(v14 + 8) = v24;
  *(v14 + 16) = v33;
  *(v14 + *(v16 + 32)) = v32;
  v25 = sub_DF600();
  v0[27] = v25;
  sub_C5A60(v14, type metadata accessor for TimeSuggestionExecutionParameters);
  *v17 = sub_123ABC();
  (*(v18 + 104))(v17, enum case for SiriSuggestions.Intent.inIntent(_:), v19);
  v26 = swift_task_alloc();
  v0[28] = v26;
  *v26 = v0;
  v26[1] = sub_C57D4;
  v27 = v0[24];
  v28 = v0[8];

  return sub_11C83C(v27, v28, v25);
}

uint64_t sub_C57D4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_C5948, 0, 0);
}

uint64_t sub_C5948()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_5CA8(v0[11], &qword_162008, &qword_129F20);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_C5A60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_C5AC0()
{
  result = qword_162010;
  if (!qword_162010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_162010);
  }

  return result;
}

uint64_t sub_C5B0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_C5B5C()
{

  return sub_C1E38();
}

uint64_t sub_C5BD0(uint64_t a1)
{
  v1 = sub_C69B0(a1);
  result = 0;
  switch(v1)
  {
    case 1:
    case 3:
    case 4:
    case 9:
    case 15:
    case 16:
    case 17:
    case 18:
      return result;
    case 2:
      sub_12437C();
      if (v20)
      {
        sub_12455C();
        if (swift_dynamicCast())
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_5CA8(v19, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v10 = sub_125ABC();
      sub_5B30(v10, qword_162020);
      v4 = sub_125AAC();
      v5 = sub_125DFC();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_89;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Parse entity: timer entity not found on deleteTimerTask.";
      goto LABEL_88;
    case 5:
      sub_12437C();
      if (v20)
      {
        sub_1244AC();
        if (swift_dynamicCast())
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_5CA8(v19, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v13 = sub_125ABC();
      sub_5B30(v13, qword_162020);
      v4 = sub_125AAC();
      v5 = sub_125DFC();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_89;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Parse entity: timer entity not found on pauseTimerTask.";
      goto LABEL_88;
    case 6:
      sub_12437C();
      if (v20)
      {
        sub_1245FC();
        if (swift_dynamicCast())
        {

          sub_12486C();
          if (v18)
          {

            return v18;
          }

          sub_12485C();
          goto LABEL_37;
        }
      }

      else
      {
        sub_5CA8(v19, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v8 = sub_125ABC();
      sub_5B30(v8, qword_162020);
      v4 = sub_125AAC();
      v5 = sub_125DFC();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = "Parse entity: timer entity not found on requestTimerTask.";
        goto LABEL_88;
      }

      goto LABEL_89;
    case 7:
      sub_12437C();
      if (v20)
      {
        sub_1244CC();
        if (swift_dynamicCast())
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_5CA8(v19, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v9 = sub_125ABC();
      sub_5B30(v9, qword_162020);
      v4 = sub_125AAC();
      v5 = sub_125DFC();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_89;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Parse entity: timer entity not found on resetTimerTask.";
      goto LABEL_88;
    case 8:
      sub_12437C();
      if (v20)
      {
        sub_1245BC();
        if (swift_dynamicCast())
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_5CA8(v19, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v12 = sub_125ABC();
      sub_5B30(v12, qword_162020);
      v4 = sub_125AAC();
      v5 = sub_125DFC();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_89;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Parse entity: timer entity not found on resumeTimerTask.";
      goto LABEL_88;
    case 10:
      sub_12437C();
      if (v20)
      {
        sub_12445C();
        if (swift_dynamicCast())
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_5CA8(v19, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v16 = sub_125ABC();
      sub_5B30(v16, qword_162020);
      v4 = sub_125AAC();
      v5 = sub_125DFC();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_89;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Parse entity: timer entity not found on stopTimerTask.";
      goto LABEL_88;
    case 11:
      sub_12437C();
      if (v20)
      {
        sub_12472C();
        if (swift_dynamicCast())
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_5CA8(v19, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v11 = sub_125ABC();
      sub_5B30(v11, qword_162020);
      v4 = sub_125AAC();
      v5 = sub_125DFC();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_89;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Parse entity: timer entity not found on summariseTimerTask.";
      goto LABEL_88;
    case 12:
      sub_12437C();
      if (v20)
      {
        sub_1245DC();
        if (swift_dynamicCast())
        {
LABEL_36:

          sub_12489C();
          goto LABEL_37;
        }
      }

      else
      {
        sub_5CA8(v19, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v17 = sub_125ABC();
      sub_5B30(v17, qword_162020);
      v4 = sub_125AAC();
      v5 = sub_125DFC();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_89;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Parse entity: timer entity not found on updateTimerTask.";
      goto LABEL_88;
    case 13:
      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v3 = sub_125ABC();
      sub_5B30(v3, qword_162020);
      v4 = sub_125AAC();
      v5 = sub_125DEC();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_89;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Parse entity: failed to parse task with unknown verb. Returning nil entity";
      goto LABEL_88;
    case 14:
      sub_12437C();
      if (v20)
      {
        sub_12458C();
        if (swift_dynamicCast())
        {

          sub_123F3C();
          goto LABEL_37;
        }
      }

      else
      {
        sub_5CA8(v19, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v15 = sub_125ABC();
      sub_5B30(v15, qword_162020);
      v4 = sub_125AAC();
      v5 = sub_125DFC();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_89;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Parse entity: timer entity not found on noVerbTimerTask.";
      goto LABEL_88;
    default:
      sub_12437C();
      if (v20)
      {
        sub_124A5C();
        if (swift_dynamicCast())
        {
LABEL_33:

          sub_12450C();
LABEL_37:

          return v19[0];
        }
      }

      else
      {
        sub_5CA8(v19, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v14 = sub_125ABC();
      sub_5B30(v14, qword_162020);
      v4 = sub_125AAC();
      v5 = sub_125DFC();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = "Parse entity: timer entity not found on checkExistenceTimerTask.";
LABEL_88:
        _os_log_impl(&dword_0, v4, v5, v7, v6, 2u);
      }

LABEL_89:

      return 0;
  }
}

uint64_t sub_C66F0()
{
  sub_12437C();
  sub_E344(v11, v9, &unk_161840, &qword_128110);
  if (v10)
  {
    sub_1246BC();
    if (swift_dynamicCast())
    {
      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v0 = sub_125ABC();
      sub_5B30(v0, qword_162020);
      v1 = sub_125AAC();
      v2 = sub_125DFC();
      if (!os_log_type_enabled(v1, v2))
      {
        goto LABEL_15;
      }

      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "TimerFlowDelegatePlugin found UsoTask_stop_common_MediaItem.trigger";
LABEL_14:
      _os_log_impl(&dword_0, v1, v2, v4, v3, 2u);

LABEL_15:

      v6 = sub_12491C();

      sub_5CA8(v11, &unk_161840, &qword_128110);
      return v6;
    }
  }

  else
  {
    sub_5CA8(v9, &unk_161840, &qword_128110);
  }

  sub_E344(v11, v9, &unk_161840, &qword_128110);
  if (v10)
  {
    sub_12446C();
    if (swift_dynamicCast())
    {
      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v5 = sub_125ABC();
      sub_5B30(v5, qword_162020);
      v1 = sub_125AAC();
      v2 = sub_125DFC();
      if (!os_log_type_enabled(v1, v2))
      {
        goto LABEL_15;
      }

      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "TimerFlowDelegatePlugin found UsoTask_stop_uso_NoEntity.trigger";
      goto LABEL_14;
    }

    v8 = v11;
  }

  else
  {
    sub_5CA8(v11, &unk_161840, &qword_128110);
    v8 = v9;
  }

  sub_5CA8(v8, &unk_161840, &qword_128110);
  return 0;
}

unint64_t sub_C69B0(uint64_t a1)
{
  v1 = sub_124B8C();
  result = sub_B66D0(v1, v2);
  if (result == 19)
  {
    if (qword_15EF20 != -1)
    {
      swift_once();
    }

    v4 = sub_125ABC();
    sub_5B30(v4, qword_162020);

    v5 = sub_125AAC();
    v6 = sub_125DEC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      v9 = sub_124B8C();
      v11 = sub_8530(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_0, v5, v6, "Unexpected timer verb: %s", v7, 0xCu);
      sub_5BB0(v8);
    }

    return 13;
  }

  return result;
}

uint64_t sub_C6BD8()
{
  sub_12437C();
  if (!v4)
  {
    goto LABEL_6;
  }

  sub_E344(v3, v2, &unk_161840, &qword_128110);
  sub_1246BC();
  if (!swift_dynamicCast())
  {
    sub_12446C();
    if (!swift_dynamicCast())
    {
      sub_5BB0(v2);
LABEL_6:
      v0 = 0;
      goto LABEL_7;
    }
  }

  sub_5BB0(v2);
  v0 = 1;
LABEL_7:
  sub_5CA8(v3, &unk_161840, &qword_128110);
  return v0;
}

uint64_t sub_C6CBC()
{
  v0 = sub_5AE8(&qword_162038, &qword_129F28);
  __chkstk_darwin(v0 - 8);
  v83 = v77 - v1;
  v2 = sub_123E4C();
  v84 = *(v2 - 8);
  v85 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v77 - v6;
  v8 = sub_12441C();
  v81 = *(v8 - 8);
  v82 = v8;
  __chkstk_darwin(v8);
  v10 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_12442C();
  v86 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_123F5C();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  switch(sub_C69B0(v16))
  {
    case 1u:
      sub_12437C();
      if (v89)
      {
        sub_12454C();
        if (swift_dynamicCast())
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_5CA8(v88, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v66 = sub_125ABC();
      sub_5B30(v66, qword_162020);
      v58 = sub_125AAC();
      v59 = sub_125DFC();
      if (!os_log_type_enabled(v58, v59))
      {
        goto LABEL_146;
      }

      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = "Parse entity: timer entity not found on createTimerTask.";
      goto LABEL_145;
    case 2u:
      sub_12437C();
      if (v89)
      {
        sub_12455C();
        if (swift_dynamicCast())
        {
          goto LABEL_70;
        }
      }

      else
      {
        sub_5CA8(v88, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v68 = sub_125ABC();
      sub_5B30(v68, qword_162020);
      v58 = sub_125AAC();
      v59 = sub_125DFC();
      if (!os_log_type_enabled(v58, v59))
      {
        goto LABEL_146;
      }

      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = "Parse entity: timer entity not found on deleteTimerTask.";
      goto LABEL_145;
    case 3u:
      if (!MSVDeviceIsAppleTV())
      {
        return 0;
      }

      sub_12437C();
      if (!v89)
      {
        sub_5CA8(v88, &unk_161840, &qword_128110);
LABEL_136:
        if (qword_15EF20 != -1)
        {
          swift_once();
        }

        v74 = sub_125ABC();
        sub_5B30(v74, qword_162020);
        v58 = sub_125AAC();
        v59 = sub_125DFC();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          v61 = "Parse entity: disable common setting entity not found on disable common setting task.";
LABEL_145:
          _os_log_impl(&dword_0, v58, v59, v61, v60, 2u);
        }

LABEL_146:

        return 0;
      }

      sub_12471C();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_136;
      }

      v20 = v87;
      sub_1249AC();
      swift_allocObject();
      v80 = sub_12499C();
      sub_12466C();
      swift_allocObject();
      v21 = sub_12465C();
      sub_123FFC();
      swift_allocObject();
      sub_123FEC();
      (*(v15 + 104))(v18, enum case for UsoEntity_appleTimer_TimerAttribute.DefinedValues.appleTimer_TimerAttribute_TimerTypeSleep(_:), v14);
      sub_123FDC();
      (*(v15 + 8))(v18, v14);
      v22 = v21;

      sub_12461C();

      v23 = sub_12494C();

      if (!v23)
      {
        goto LABEL_151;
      }

      v24 = sub_12467C();

      if (!v24)
      {
        goto LABEL_151;
      }

      v25 = sub_1246DC();

      if (!v25)
      {
        goto LABEL_151;
      }

      v26 = sub_1243BC();

      if (!v26)
      {
        goto LABEL_151;
      }

      sub_1243FC();
      v28 = v27;
      v29 = v27;

      sub_12481C();
      swift_allocObject();
      v30 = sub_12480C();
      v31 = v86;
      (*(v86 + 104))(v13, enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Second(_:), v11);
      v79 = v30;
      sub_1247FC();
      (*(v31 + 8))(v13, v11);
      sub_12476C();
      swift_allocObject();
      sub_12475C();
      if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_161:
        __break(1u);
        goto LABEL_162;
      }

      v86 = v20;
      v78 = v22;
      if (fabs(v28) >= 9.22337204e18)
      {
LABEL_162:
        __break(1u);
        JUMPOUT(0xC88BCLL);
      }

      sub_12474C();
      sub_124B3C();
      swift_allocObject();
      sub_124B2C();

      sub_124B0C();

      sub_124B1C();

      sub_1247EC();
      swift_allocObject();
      sub_1247DC();
      v33 = v81;
      v32 = v82;
      (*(v81 + 104))(v10, enum case for UsoEntity_common_Duration.DefinedValues.common_Duration_TotalDuration(_:), v82);
      sub_1247CC();
      (*(v33 + 8))(v10, v32);

      sub_1247BC();

      sub_12463C();

      sub_12473C();
      sub_124BAC();
      v34 = sub_12422C();
      v35 = v83;
      (*(*(v34 - 8) + 56))(v83, 1, 1, v34);

      sub_C9C60(v36, v35, v7);

      sub_5CA8(v35, &qword_162038, &qword_129F28);
      sub_123DCC();
      sub_12437C();

      if (!v89)
      {
        (*(v84 + 8))(v7, v85);

LABEL_155:

        sub_5CA8(v88, &unk_161840, &qword_128110);
        return 0;
      }

      sub_12454C();
      if ((swift_dynamicCast() & 1) == 0)
      {
        (*(v84 + 8))(v7, v85);

LABEL_157:

        goto LABEL_158;
      }

      sub_12436C();

      (*(v84 + 8))(v7, v85);
      return v88[0];
    case 4u:
      if (!MSVDeviceIsAppleTV())
      {
        return 0;
      }

      sub_12437C();
      if (v89)
      {
        sub_12469C();
        if (swift_dynamicCast())
        {
          v80 = v87;
          sub_1249AC();
          swift_allocObject();
          v78 = sub_12499C();
          sub_12466C();
          swift_allocObject();
          v37 = sub_12465C();
          sub_123FFC();
          swift_allocObject();
          v38 = sub_123FEC();
          (*(v15 + 104))(v18, enum case for UsoEntity_appleTimer_TimerAttribute.DefinedValues.appleTimer_TimerAttribute_TimerTypeSleep(_:), v14);
          sub_123FDC();
          (*(v15 + 8))(v18, v14);

          v77[1] = v37;
          sub_12461C();
          v79 = v38;

          v39 = sub_12494C();

          if (v39 && (v40 = sub_12467C(), , v40) && (v41 = sub_1246EC(), , v41) || sub_12494C() && (v42 = sub_12467C(), , v42) && (v43 = sub_1246CC(), , v43) && (v44 = sub_1243BC(), , v44) || sub_12494C() && (v45 = sub_12468C(), , v45) && (v46 = sub_1243BC(), , v46))
          {
            sub_1243FC();
            v48 = v47;
            v49 = v47;

            sub_12481C();
            swift_allocObject();
            v50 = sub_12480C();
            v51 = v86;
            (*(v86 + 104))(v13, enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Second(_:), v11);
            sub_1247FC();
            (*(v51 + 8))(v13, v11);
            sub_12476C();
            swift_allocObject();
            sub_12475C();
            if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              __break(1u);
            }

            else
            {
              v86 = v50;
              if (fabs(v48) < 9.22337204e18)
              {
                sub_12474C();
                sub_124B3C();
                swift_allocObject();
                sub_124B2C();

                sub_124B0C();

                sub_124B1C();

                sub_1247EC();
                swift_allocObject();
                sub_1247DC();
                v53 = v81;
                v52 = v82;
                (*(v81 + 104))(v10, enum case for UsoEntity_common_Duration.DefinedValues.common_Duration_TotalDuration(_:), v82);
                sub_1247CC();
                (*(v53 + 8))(v10, v52);

                sub_1247BC();

                sub_12463C();

                sub_12473C();
                sub_124BAC();
                v54 = sub_12422C();
                v55 = v83;
                (*(*(v54 - 8) + 56))(v83, 1, 1, v54);

                sub_C9C60(v56, v55, v5);

                sub_5CA8(v55, &qword_162038, &qword_129F28);
                sub_123DCC();
                sub_12437C();

                if (v89)
                {
                  sub_12454C();
                  if (swift_dynamicCast())
                  {

                    sub_12436C();

                    (*(v84 + 8))(v5, v85);
                    return v88[0];
                  }

                  (*(v84 + 8))(v5, v85);

                  goto LABEL_157;
                }

                (*(v84 + 8))(v5, v85);

                goto LABEL_155;
              }
            }

            __break(1u);
            goto LABEL_161;
          }

LABEL_151:

LABEL_158:

          return 0;
        }
      }

      else
      {
        sub_5CA8(v88, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v75 = sub_125ABC();
      sub_5B30(v75, qword_162020);
      v58 = sub_125AAC();
      v59 = sub_125DFC();
      if (!os_log_type_enabled(v58, v59))
      {
        goto LABEL_146;
      }

      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = "Parse entity: enable common setting entity not found on enable common setting task.";
      goto LABEL_145;
    case 5u:
      sub_12437C();
      if (v89)
      {
        sub_1244AC();
        if (swift_dynamicCast())
        {
          goto LABEL_70;
        }
      }

      else
      {
        sub_5CA8(v88, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v64 = sub_125ABC();
      sub_5B30(v64, qword_162020);
      v58 = sub_125AAC();
      v59 = sub_125DFC();
      if (!os_log_type_enabled(v58, v59))
      {
        goto LABEL_146;
      }

      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = "Parse entity: timer entity not found on pauseTimerTask.";
      goto LABEL_145;
    case 6u:
      sub_12437C();
      if (v89)
      {
        sub_1245FC();
        if (swift_dynamicCast())
        {

          sub_12486C();
          v19 = v87;
          if (v87)
          {

            return v19;
          }

          sub_12485C();
          goto LABEL_74;
        }
      }

      else
      {
        sub_5CA8(v88, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v69 = sub_125ABC();
      sub_5B30(v69, qword_162020);
      v58 = sub_125AAC();
      v59 = sub_125DFC();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        v61 = "Parse entity: timer entity not found on requestTimerTask.";
        goto LABEL_145;
      }

      goto LABEL_146;
    case 7u:
      sub_12437C();
      if (v89)
      {
        sub_1244CC();
        if (swift_dynamicCast())
        {
          goto LABEL_73;
        }
      }

      else
      {
        sub_5CA8(v88, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v62 = sub_125ABC();
      sub_5B30(v62, qword_162020);
      v58 = sub_125AAC();
      v59 = sub_125DFC();
      if (!os_log_type_enabled(v58, v59))
      {
        goto LABEL_146;
      }

      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = "Parse entity: timer entity not found on resetTimerTask.";
      goto LABEL_145;
    case 8u:
      sub_12437C();
      if (v89)
      {
        sub_1245BC();
        if (swift_dynamicCast())
        {
          goto LABEL_70;
        }
      }

      else
      {
        sub_5CA8(v88, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v63 = sub_125ABC();
      sub_5B30(v63, qword_162020);
      v58 = sub_125AAC();
      v59 = sub_125DFC();
      if (!os_log_type_enabled(v58, v59))
      {
        goto LABEL_146;
      }

      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = "Parse entity: timer entity not found on resumeTimerTask.";
      goto LABEL_145;
    case 9u:
      sub_12437C();
      if (v89)
      {
        sub_1244DC();
        if (swift_dynamicCast())
        {
LABEL_34:

          sub_12436C();
          goto LABEL_74;
        }
      }

      else
      {
        sub_5CA8(v88, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v67 = sub_125ABC();
      sub_5B30(v67, qword_162020);
      v58 = sub_125AAC();
      v59 = sub_125DFC();
      if (!os_log_type_enabled(v58, v59))
      {
        goto LABEL_146;
      }

      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = "Parse entity: timer entity not found on startTimerTask.";
      goto LABEL_145;
    case 0xAu:
      sub_12437C();
      if (v89)
      {
        sub_12445C();
        if (swift_dynamicCast())
        {
          goto LABEL_70;
        }
      }

      else
      {
        sub_5CA8(v88, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v72 = sub_125ABC();
      sub_5B30(v72, qword_162020);
      v58 = sub_125AAC();
      v59 = sub_125DFC();
      if (!os_log_type_enabled(v58, v59))
      {
        goto LABEL_146;
      }

      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = "Parse entity: timer entity not found on stopTimerTask.";
      goto LABEL_145;
    case 0xBu:
      sub_12437C();
      if (v89)
      {
        sub_12472C();
        if (swift_dynamicCast())
        {
          goto LABEL_70;
        }
      }

      else
      {
        sub_5CA8(v88, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v65 = sub_125ABC();
      sub_5B30(v65, qword_162020);
      v58 = sub_125AAC();
      v59 = sub_125DFC();
      if (!os_log_type_enabled(v58, v59))
      {
        goto LABEL_146;
      }

      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = "Parse entity: timer entity not found on summariseTimerTask.";
      goto LABEL_145;
    case 0xCu:
      sub_12437C();
      if (v89)
      {
        sub_1245DC();
        if (swift_dynamicCast())
        {
LABEL_73:

          sub_12489C();
          goto LABEL_74;
        }
      }

      else
      {
        sub_5CA8(v88, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v73 = sub_125ABC();
      sub_5B30(v73, qword_162020);
      v58 = sub_125AAC();
      v59 = sub_125DFC();
      if (!os_log_type_enabled(v58, v59))
      {
        goto LABEL_146;
      }

      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = "Parse entity: timer entity not found on updateTimerTask.";
      goto LABEL_145;
    case 0xDu:
      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v57 = sub_125ABC();
      sub_5B30(v57, qword_162020);
      v58 = sub_125AAC();
      v59 = sub_125DEC();
      if (!os_log_type_enabled(v58, v59))
      {
        goto LABEL_146;
      }

      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = "Parse entity: failed to parse task with unknown verb. Returning nil entity";
      goto LABEL_145;
    case 0xEu:
      sub_12437C();
      if (v89)
      {
        sub_12458C();
        if (swift_dynamicCast())
        {

          sub_123F3C();
          goto LABEL_74;
        }
      }

      else
      {
        sub_5CA8(v88, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v71 = sub_125ABC();
      sub_5B30(v71, qword_162020);
      v58 = sub_125AAC();
      v59 = sub_125DFC();
      if (!os_log_type_enabled(v58, v59))
      {
        goto LABEL_146;
      }

      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = "Parse entity: timer entity not found on noVerbTimerTask.";
      goto LABEL_145;
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
      return v19;
    default:
      sub_12437C();
      if (v89)
      {
        sub_124A5C();
        if (swift_dynamicCast())
        {
LABEL_70:

          sub_12450C();
LABEL_74:

          return v88[0];
        }
      }

      else
      {
        sub_5CA8(v88, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v70 = sub_125ABC();
      sub_5B30(v70, qword_162020);
      v58 = sub_125AAC();
      v59 = sub_125DFC();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        v61 = "Parse entity: timer entity not found on checkExistenceTimerTask.";
        goto LABEL_145;
      }

      goto LABEL_146;
  }
}

uint64_t sub_C8908()
{
  v0 = sub_12452C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v103 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_5AE8(&qword_160CF8, &qword_1286E0);
  __chkstk_darwin(v111);
  v5 = &v103 - v4;
  v6 = sub_5AE8(&qword_160D00, &qword_1286E8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v103 - v11;
  __chkstk_darwin(v10);
  v112 = &v103 - v13;
  v14 = sub_123F9C();
  v135 = *(v14 - 8);
  v136 = v14;
  __chkstk_darwin(v14);
  v116 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_5AE8(&qword_162050, &qword_129F70);
  v16 = __chkstk_darwin(v133);
  v114 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v103 - v18;
  v20 = sub_5AE8(&qword_162058, &qword_129F78);
  v21 = __chkstk_darwin(v20 - 8);
  v115 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v121 = &v103 - v24;
  v25 = __chkstk_darwin(v23);
  v123 = &v103 - v26;
  v27 = __chkstk_darwin(v25);
  v119 = &v103 - v28;
  v29 = __chkstk_darwin(v27);
  v132 = &v103 - v30;
  __chkstk_darwin(v29);
  v118 = &v103 - v31;
  sub_12437C();
  if (!v138[3])
  {
LABEL_31:
    sub_5CA8(v138, &unk_161840, &qword_128110);
LABEL_32:
    if (qword_15EF20 != -1)
    {
      goto LABEL_81;
    }

    goto LABEL_33;
  }

  sub_1246AC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v104 = v9;
  v32 = v137;
  if (qword_15EF20 != -1)
  {
    swift_once();
  }

  v109 = v1;
  v33 = sub_125ABC();
  v107 = sub_5B30(v33, qword_162020);
  v34 = sub_125AAC();
  v35 = sub_125DFC();
  v36 = os_log_type_enabled(v34, v35);
  v108 = v12;
  if (v36)
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_0, v34, v35, "Searching for room confirmation in UsoTask_noVerb_common_Setting", v37, 2u);
  }

  v105 = v5;
  v106 = v0;

  v38 = sub_123F2C();
  if (v38)
  {
    v39 = v38;
  }

  else
  {
    v39 = _swiftEmptyArrayStorage;
  }

  v110 = v32;
  v103 = v3;
  if (v39 >> 62)
  {
    v40 = sub_1260FC();
  }

  else
  {
    v40 = *(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8));
  }

  v41 = v118;
  if (!v40)
  {
LABEL_56:

    sub_123F3C();

    if (v138[0] && (v79 = sub_12420C(), , v79))
    {
      v80 = v112;
      sub_12451C();

      v81 = v106;
      v82 = v105;
      v83 = v109;
    }

    else
    {
      v83 = v109;
      v80 = v112;
      v81 = v106;
      (*(v109 + 56))(v112, 1, 1, v106);
      v82 = v105;
    }

    v84 = v111;
    v85 = v108;
    (*(v83 + 104))(v108, enum case for UsoEntity_common_Quantifier.DefinedValues.common_Quantifier_All(_:), v81);
    (*(v83 + 56))(v85, 0, 1, v81);
    v86 = *(v84 + 48);
    sub_E344(v80, v82, &qword_160D00, &qword_1286E8);
    sub_E344(v85, v82 + v86, &qword_160D00, &qword_1286E8);
    v87 = *(v83 + 48);
    if (v87(v82, 1, v81) == 1)
    {
      sub_5CA8(v85, &qword_160D00, &qword_1286E8);
      sub_5CA8(v80, &qword_160D00, &qword_1286E8);
      if (v87(v82 + v86, 1, v81) == 1)
      {
        sub_5CA8(v82, &qword_160D00, &qword_1286E8);
        goto LABEL_72;
      }
    }

    else
    {
      v88 = v104;
      sub_E344(v82, v104, &qword_160D00, &qword_1286E8);
      if (v87(v82 + v86, 1, v81) != 1)
      {
        v92 = v109;
        v93 = v82 + v86;
        v94 = v103;
        (*(v109 + 32))(v103, v93, v81);
        sub_CE020(&qword_160D08, &type metadata accessor for UsoEntity_common_Quantifier.DefinedValues, &protocol conformance descriptor for UsoEntity_common_Quantifier.DefinedValues);
        v95 = sub_125B7C();
        v96 = *(v92 + 8);
        v96(v94, v81);
        sub_5CA8(v108, &qword_160D00, &qword_1286E8);
        sub_5CA8(v80, &qword_160D00, &qword_1286E8);
        v96(v88, v81);
        sub_5CA8(v82, &qword_160D00, &qword_1286E8);
        if (v95)
        {
LABEL_72:
          v97 = sub_125AAC();
          v98 = sub_125DFC();
          if (os_log_type_enabled(v97, v98))
          {
            v61 = 2;
            v99 = swift_slowAlloc();
            *v99 = 0;
            _os_log_impl(&dword_0, v97, v98, "Found .all", v99, 2u);
          }

          else
          {

            return 2;
          }

          return v61;
        }

LABEL_66:

        return 3;
      }

      sub_5CA8(v108, &qword_160D00, &qword_1286E8);
      sub_5CA8(v80, &qword_160D00, &qword_1286E8);
      (*(v109 + 8))(v88, v81);
    }

    sub_5CA8(v82, &qword_160CF8, &qword_1286E0);
    goto LABEL_66;
  }

  v42 = 0;
  v130 = v39 & 0xFFFFFFFFFFFFFF8;
  v131 = v39 & 0xC000000000000001;
  v128 = (v135 + 56);
  v120 = enum case for UsoEntity_common_UserEntity.DefinedValues.common_UserEntity_Everywhere(_:);
  v127 = (v135 + 104);
  v122 = (v135 + 48);
  v113 = (v135 + 32);
  v117 = (v135 + 8);
  v125 = v40;
  v129 = v39;
  do
  {
    if (v131)
    {
      v45 = sub_125FFC();
      v44 = v132;
      v46 = (v42 + 1);
      if (__OFADD__(v42, 1))
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {
      v44 = v132;
      if (v42 >= *(v130 + 16))
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        swift_once();
LABEL_33:
        v57 = sub_125ABC();
        sub_5B30(v57, qword_162020);
        v58 = sub_125AAC();
        v59 = sub_125DFC();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_0, v58, v59, "No UsoTask_noVerb_common_Setting found when searching for room confirmation", v60, 2u);
        }

        return 3;
      }

      v45 = *(v39 + 8 * v42 + 32);

      v46 = (v42 + 1);
      if (__OFADD__(v42, 1))
      {
        goto LABEL_30;
      }
    }

    v134 = v46;
    sub_1241FC();
    v135 = v45;
    if (v138[0])
    {
      sub_123F8C();

      v47 = v128;
    }

    else
    {
      v47 = v128;
      (*v128)(v41, 1, 1, v136);
    }

    v48 = v136;
    v124 = *v127;
    v124(v44, v120, v136);
    v126 = *v47;
    v126(v44, 0, 1, v48);
    v49 = *(v133 + 48);
    sub_E344(v41, v19, &qword_162058, &qword_129F78);
    sub_E344(v44, &v19[v49], &qword_162058, &qword_129F78);
    v50 = v44;
    v51 = *v122;
    if ((*v122)(v19, 1, v48) == 1)
    {

      sub_5CA8(v50, &qword_162058, &qword_129F78);
      sub_5CA8(v41, &qword_162058, &qword_129F78);
      if (v51(&v19[v49], 1, v48) == 1)
      {
        sub_5CA8(v19, &qword_162058, &qword_129F78);
LABEL_68:

        v89 = sub_125AAC();
        v90 = sub_125DFC();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = 0;
          _os_log_impl(&dword_0, v89, v90, "Found .everywhere", v91, 2u);
        }

        return 0;
      }

      goto LABEL_15;
    }

    v52 = v119;
    sub_E344(v19, v119, &qword_162058, &qword_129F78);
    if (v51(&v19[v49], 1, v48) == 1)
    {

      sub_5CA8(v132, &qword_162058, &qword_129F78);
      v41 = v118;
      sub_5CA8(v118, &qword_162058, &qword_129F78);
      (*v117)(v52, v136);
LABEL_15:
      sub_5CA8(v19, &qword_162050, &qword_129F70);
      goto LABEL_16;
    }

    v53 = v116;
    v54 = v136;
    (*v113)(v116, &v19[v49], v136);
    sub_CE020(&qword_162060, &type metadata accessor for UsoEntity_common_UserEntity.DefinedValues, &protocol conformance descriptor for UsoEntity_common_UserEntity.DefinedValues);
    v55 = sub_125B7C();

    v56 = *v117;
    (*v117)(v53, v54);
    sub_5CA8(v132, &qword_162058, &qword_129F78);
    v41 = v118;
    sub_5CA8(v118, &qword_162058, &qword_129F78);
    v56(v119, v54);
    sub_5CA8(v19, &qword_162058, &qword_129F78);
    if (v55)
    {
      goto LABEL_68;
    }

LABEL_16:
    ++v42;
    v43 = v123;
    v39 = v129;
  }

  while (v134 != v125);
  v134 = v51;
  v63 = 0;
  LODWORD(v132) = enum case for UsoEntity_common_UserEntity.DefinedValues.common_UserEntity_Here(_:);
  v64 = v114;
  v65 = v126;
  while (1)
  {
    if (v131)
    {
      sub_125FFC();
      v67 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (v63 >= *(v130 + 16))
      {
        goto LABEL_80;
      }

      v67 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    v135 = v67;
    sub_1241FC();
    if (v138[0])
    {
      sub_123F8C();
    }

    else
    {
      v65(v43, 1, 1, v136);
    }

    v68 = v121;
    v69 = v136;
    v124(v121, v132, v136);
    v65(v68, 0, 1, v69);
    v70 = *(v133 + 48);
    sub_E344(v43, v64, &qword_162058, &qword_129F78);
    sub_E344(v68, v64 + v70, &qword_162058, &qword_129F78);
    v71 = v69;
    v72 = v134;
    if (v134(v64, 1, v71) == 1)
    {
      break;
    }

    v73 = v115;
    sub_E344(v64, v115, &qword_162058, &qword_129F78);
    if (v72((v64 + v70), 1, v136) == 1)
    {

      sub_5CA8(v121, &qword_162058, &qword_129F78);
      v43 = v123;
      sub_5CA8(v123, &qword_162058, &qword_129F78);
      (*v117)(v73, v136);
      v65 = v126;
      goto LABEL_40;
    }

    v74 = v64 + v70;
    v75 = v116;
    v76 = v136;
    (*v113)(v116, v74, v136);
    sub_CE020(&qword_162060, &type metadata accessor for UsoEntity_common_UserEntity.DefinedValues, &protocol conformance descriptor for UsoEntity_common_UserEntity.DefinedValues);
    v120 = sub_125B7C();

    v77 = *v117;
    v78 = v75;
    v64 = v114;
    (*v117)(v78, v76);
    sub_5CA8(v121, &qword_162058, &qword_129F78);
    v43 = v123;
    sub_5CA8(v123, &qword_162058, &qword_129F78);
    v77(v73, v76);
    sub_5CA8(v64, &qword_162058, &qword_129F78);
    v65 = v126;
    if (v120)
    {
      goto LABEL_76;
    }

LABEL_41:
    ++v63;
    if (v135 == v125)
    {
      goto LABEL_56;
    }
  }

  sub_5CA8(v68, &qword_162058, &qword_129F78);
  sub_5CA8(v43, &qword_162058, &qword_129F78);
  v66 = v72((v64 + v70), 1, v136);
  v65 = v126;
  if (v66 != 1)
  {
LABEL_40:
    sub_5CA8(v64, &qword_162050, &qword_129F70);
    goto LABEL_41;
  }

  sub_5CA8(v64, &qword_162058, &qword_129F78);
LABEL_76:

  v100 = sub_125AAC();
  v101 = sub_125DFC();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 0;
    _os_log_impl(&dword_0, v100, v101, "Found .here", v102, 2u);
  }

  return 1;
}

uint64_t sub_C9C14()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162020);
  sub_5B30(v0, qword_162020);
  return sub_1257AC();
}

uint64_t sub_C9C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = sub_123D7C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v30 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_123E8C();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = __chkstk_darwin(v8);
  v31 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v32 = v29 - v11;
  v12 = sub_5AE8(&qword_162040, &qword_129F30);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v29 - v17;
  __chkstk_darwin(v16);
  v20 = v29 - v19;
  v21 = *(v6 + 56);
  v21(v29 - v19, 1, 1, v5);
  if (a1)
  {
    sub_5AE8(&qword_160810, &unk_127420);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_126EB0;
    *(v22 + 32) = a1;
  }

  v29[1] = a2;
  v23 = sub_1241EC();

  sub_12423C();
  sub_12427C();
  swift_allocObject();
  sub_12426C();
  v29[2] = v23;
  sub_123F1C();
  sub_5CA8(v20, &qword_162040, &qword_129F30);

  v21(v18, 0, 1, v5);
  sub_CD970(v18, v20);
  v24 = v32;
  sub_123E7C();
  sub_E344(v20, v15, &qword_162040, &qword_129F30);
  v25 = *(v6 + 48);
  if (v25(v15, 1, v5) == 1)
  {
    sub_1241EC();

    sub_123F1C();

    if (v25(v15, 1, v5) != 1)
    {
      sub_5CA8(v15, &qword_162040, &qword_129F30);
    }
  }

  else
  {

    (*(v6 + 32))(v30, v15, v5);
  }

  sub_123E6C();
  sub_123E3C();
  v27 = v33;
  v26 = v34;
  (*(v33 + 16))(v31, v24, v34);
  sub_123E1C();

  (*(v27 + 8))(v24, v26);
  return sub_5CA8(v20, &qword_162040, &qword_129F30);
}

uint64_t sub_CA148()
{
  v0 = sub_5AE8(&qword_162038, &qword_129F28);
  __chkstk_darwin(v0 - 8);
  v69 = v61 - v1;
  v2 = sub_123E4C();
  v66 = *(v2 - 8);
  v67 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v61 - v6;
  v8 = sub_12441C();
  v68 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_12442C();
  v70 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_123F5C();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_C69B0(v16);
  result = 0;
  if (v19 <= 2u)
  {
    if (v19 != 1)
    {
      return result;
    }

    sub_12437C();
    if (v73)
    {
      sub_12454C();
      if (swift_dynamicCast())
      {
LABEL_15:

        sub_12436C();
        goto LABEL_16;
      }
    }

    else
    {
      sub_5CA8(v72, &unk_161840, &qword_128110);
    }

    if (qword_15EF20 != -1)
    {
      swift_once();
    }

    v52 = sub_125ABC();
    sub_5B30(v52, qword_162020);
    v53 = sub_125AAC();
    v54 = sub_125DFC();
    if (!os_log_type_enabled(v53, v54))
    {
      goto LABEL_75;
    }

    v55 = swift_slowAlloc();
    *v55 = 0;
    v56 = "Parse entity: timer entity not found on createTimerTask.";
    goto LABEL_74;
  }

  if (v19 <= 0x12u)
  {
    if (((1 << v19) & 0x7FD60) != 0)
    {
      return result;
    }

    if (v19 == 7)
    {
      sub_12437C();
      if (v73)
      {
        sub_1244CC();
        if (swift_dynamicCast())
        {

          sub_12488C();
LABEL_16:

          return v72[0];
        }
      }

      else
      {
        sub_5CA8(v72, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v57 = sub_125ABC();
      sub_5B30(v57, qword_162020);
      v53 = sub_125AAC();
      v54 = sub_125DFC();
      if (!os_log_type_enabled(v53, v54))
      {
        goto LABEL_75;
      }

      v55 = swift_slowAlloc();
      *v55 = 0;
      v56 = "Parse entity: timer entity not found on resetTimerTask.";
      goto LABEL_74;
    }

    if (v19 == 9)
    {
      sub_12437C();
      if (v73)
      {
        sub_1244DC();
        if (swift_dynamicCast())
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_5CA8(v72, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v58 = sub_125ABC();
      sub_5B30(v58, qword_162020);
      v53 = sub_125AAC();
      v54 = sub_125DFC();
      if (!os_log_type_enabled(v53, v54))
      {
        goto LABEL_75;
      }

      v55 = swift_slowAlloc();
      *v55 = 0;
      v56 = "Parse entity: timer entity not found on startTimerTask.";
LABEL_74:
      _os_log_impl(&dword_0, v53, v54, v56, v55, 2u);

LABEL_75:

      return 0;
    }
  }

  if (v19 == 3)
  {
    if (MSVDeviceIsAppleTV())
    {
      sub_12437C();
      if (v73)
      {
        sub_12471C();
        if (swift_dynamicCast())
        {
          v64 = v71;
          sub_1249AC();
          swift_allocObject();
          v63 = sub_12499C();
          sub_12466C();
          swift_allocObject();
          v65 = sub_12465C();
          sub_123FFC();
          swift_allocObject();
          v21 = sub_123FEC();
          (*(v15 + 104))(v18, enum case for UsoEntity_appleTimer_TimerAttribute.DefinedValues.appleTimer_TimerAttribute_TimerTypeSleep(_:), v14);
          sub_123FDC();
          (*(v15 + 8))(v18, v14);

          sub_12461C();
          v62 = v21;

          v22 = sub_12494C();

          if (v22)
          {
            v23 = sub_12467C();

            if (v23)
            {
              v24 = sub_1246DC();

              if (v24)
              {
                v25 = sub_1243BC();

                if (v25)
                {
                  sub_1243FC();
                  v27 = v26;
                  v28 = v26;

                  sub_12481C();
                  swift_allocObject();
                  v29 = sub_12480C();
                  v30 = v70;
                  (*(v70 + 104))(v13, enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Second(_:), v11);
                  v61[1] = v29;
                  sub_1247FC();
                  (*(v30 + 8))(v13, v11);
                  sub_12476C();
                  swift_allocObject();
                  result = sub_12475C();
                  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                  {
                    if (fabs(v27) < 9.22337204e18)
                    {
                      sub_12474C();
                      sub_124B3C();
                      swift_allocObject();
                      sub_124B2C();

                      sub_124B0C();

                      sub_124B1C();

                      sub_1247EC();
                      swift_allocObject();
                      sub_1247DC();
                      v31 = v68;
                      (*(v68 + 104))(v10, enum case for UsoEntity_common_Duration.DefinedValues.common_Duration_TotalDuration(_:), v8);
                      sub_1247CC();
                      (*(v31 + 8))(v10, v8);

                      sub_1247BC();

                      sub_12463C();

                      sub_12473C();
                      sub_124BAC();
                      v32 = sub_12422C();
                      v33 = v69;
                      (*(*(v32 - 8) + 56))(v69, 1, 1, v32);

                      sub_C9C60(v34, v33, v7);

                      sub_5CA8(v33, &qword_162038, &qword_129F28);
                      sub_123DCC();
                      sub_12437C();

                      if (v73)
                      {
                        sub_12454C();
                        if (swift_dynamicCast())
                        {

                          sub_12436C();

                          (*(v66 + 8))(v7, v67);
                          return v72[0];
                        }

                        (*(v66 + 8))(v7, v67);

                        goto LABEL_84;
                      }

                      (*(v66 + 8))(v7, v67);

                      goto LABEL_82;
                    }

LABEL_89:
                    __break(1u);
                    return result;
                  }

LABEL_88:
                  __break(1u);
                  goto LABEL_89;
                }
              }
            }
          }

          goto LABEL_78;
        }
      }

      else
      {
        sub_5CA8(v72, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v59 = sub_125ABC();
      sub_5B30(v59, qword_162020);
      v53 = sub_125AAC();
      v54 = sub_125DFC();
      if (!os_log_type_enabled(v53, v54))
      {
        goto LABEL_75;
      }

      v55 = swift_slowAlloc();
      *v55 = 0;
      v56 = "Parse entity: disable common setting not found on disable common setting task.";
      goto LABEL_74;
    }
  }

  else if (MSVDeviceIsAppleTV())
  {
    sub_12437C();
    if (v73)
    {
      sub_12469C();
      if (swift_dynamicCast())
      {
        v64 = v71;
        sub_1249AC();
        swift_allocObject();
        v63 = sub_12499C();
        sub_12466C();
        swift_allocObject();
        v65 = sub_12465C();
        sub_123FFC();
        swift_allocObject();
        v35 = sub_123FEC();
        (*(v15 + 104))(v18, enum case for UsoEntity_appleTimer_TimerAttribute.DefinedValues.appleTimer_TimerAttribute_TimerTypeSleep(_:), v14);
        sub_123FDC();
        (*(v15 + 8))(v18, v14);

        sub_12461C();
        v62 = v35;

        v36 = sub_12494C();

        if (v36 && (v37 = sub_12467C(), , v37) && (v38 = sub_1246EC(), , v38) || sub_12494C() && (v39 = sub_12467C(), , v39) && (v40 = sub_1246CC(), , v40) && (v41 = sub_1243BC(), , v41) || sub_12494C() && (v42 = sub_12468C(), , v42) && (v43 = sub_1243BC(), , v43))
        {
          sub_1243FC();
          v45 = v44;
          v46 = v44;

          sub_12481C();
          swift_allocObject();
          sub_12480C();
          v47 = v70;
          (*(v70 + 104))(v13, enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Second(_:), v11);
          sub_1247FC();
          (*(v47 + 8))(v13, v11);
          sub_12476C();
          swift_allocObject();
          result = sub_12475C();
          if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (fabs(v45) < 9.22337204e18)
          {
            sub_12474C();
            sub_124B3C();
            swift_allocObject();
            sub_124B2C();

            sub_124B0C();

            sub_124B1C();

            sub_1247EC();
            swift_allocObject();
            sub_1247DC();
            v48 = v68;
            (*(v68 + 104))(v10, enum case for UsoEntity_common_Duration.DefinedValues.common_Duration_TotalDuration(_:), v8);
            sub_1247CC();
            (*(v48 + 8))(v10, v8);

            sub_1247BC();

            sub_12463C();

            sub_12473C();
            sub_124BAC();
            v49 = sub_12422C();
            v50 = v69;
            (*(*(v49 - 8) + 56))(v69, 1, 1, v49);

            sub_C9C60(v51, v50, v5);

            sub_5CA8(v50, &qword_162038, &qword_129F28);
            sub_123DCC();
            sub_12437C();

            if (v73)
            {
              sub_12454C();
              if (swift_dynamicCast())
              {

                sub_12436C();

                (*(v66 + 8))(v5, v67);
                return v72[0];
              }

              (*(v66 + 8))(v5, v67);

LABEL_84:

              goto LABEL_85;
            }

            (*(v66 + 8))(v5, v67);

LABEL_82:

            sub_5CA8(v72, &unk_161840, &qword_128110);
            return 0;
          }

          __break(1u);
          goto LABEL_88;
        }

LABEL_78:

LABEL_85:

        return 0;
      }
    }

    else
    {
      sub_5CA8(v72, &unk_161840, &qword_128110);
    }

    if (qword_15EF20 != -1)
    {
      swift_once();
    }

    v60 = sub_125ABC();
    sub_5B30(v60, qword_162020);
    v53 = sub_125AAC();
    v54 = sub_125DFC();
    if (!os_log_type_enabled(v53, v54))
    {
      goto LABEL_75;
    }

    v55 = swift_slowAlloc();
    *v55 = 0;
    v56 = "Parse entity: enable common setting not found on enable common setting task.";
    goto LABEL_74;
  }

  return 0;
}

uint64_t sub_CB454(uint64_t a1)
{
  v1 = sub_C69B0(a1);
  result = 0;
  switch(v1)
  {
    case 2:
      sub_12437C();
      if (v18)
      {
        sub_12456C();
        if (swift_dynamicCast())
        {
          goto LABEL_31;
        }
      }

      else
      {
        sub_5CA8(v17, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v9 = sub_125ABC();
      sub_5B30(v9, qword_162020);
      v4 = sub_125AAC();
      v5 = sub_125DEC();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_84;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Parse entity: failed to parse entity from delete_NoEntity.";
      goto LABEL_83;
    case 5:
      sub_12437C();
      if (v18)
      {
        sub_1244BC();
        if (swift_dynamicCast())
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_5CA8(v17, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v12 = sub_125ABC();
      sub_5B30(v12, qword_162020);
      v4 = sub_125AAC();
      v5 = sub_125DEC();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_84;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Parse entity: failed to parse entity from pause_NoEntity.";
      goto LABEL_83;
    case 8:
      sub_12437C();
      if (v18)
      {
        sub_1245CC();
        if (swift_dynamicCast())
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_5CA8(v17, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v3 = sub_125ABC();
      sub_5B30(v3, qword_162020);
      v4 = sub_125AAC();
      v5 = sub_125DEC();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_84;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Parse entity: failed to parse entity from resume_NoEntity.";
      goto LABEL_83;
    case 9:
      sub_12437C();
      if (v18)
      {
        sub_1244EC();
        if (swift_dynamicCast())
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_5CA8(v17, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v8 = sub_125ABC();
      sub_5B30(v8, qword_162020);
      v4 = sub_125AAC();
      v5 = sub_125DEC();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_84;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Parse entity: failed to parse entity from start_NoEntity.";
      goto LABEL_83;
    case 12:
      sub_12437C();
      if (v18)
      {
        sub_1245EC();
        if (swift_dynamicCast())
        {

          sub_12489C();
          goto LABEL_32;
        }
      }

      else
      {
        sub_5CA8(v17, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v11 = sub_125ABC();
      sub_5B30(v11, qword_162020);
      v4 = sub_125AAC();
      v5 = sub_125DEC();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_84;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Parse entity: failed to parse entity from update_NoEntity.";
      goto LABEL_83;
    case 14:
      sub_12437C();
      if (v18)
      {
        sub_12459C();
        if (swift_dynamicCast())
        {

          return 0;
        }
      }

      else
      {
        sub_5CA8(v17, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v15 = sub_125ABC();
      sub_5B30(v15, qword_162020);
      v4 = sub_125AAC();
      v5 = sub_125DEC();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_84;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Parse entity: failed to parse entity from noVerb_NoEntity.";
      goto LABEL_83;
    case 15:
      sub_12437C();
      if (v18)
      {
        sub_12443C();
        if (swift_dynamicCast())
        {
          goto LABEL_31;
        }
      }

      else
      {
        sub_5CA8(v17, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v10 = sub_125ABC();
      sub_5B30(v10, qword_162020);
      v4 = sub_125AAC();
      v5 = sub_125DEC();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_84;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Parse entity: failed to parse entity from open_NoEntity.";
      goto LABEL_83;
    case 16:
      sub_12437C();
      if (v18)
      {
        sub_12444C();
        if (swift_dynamicCast())
        {
LABEL_31:

          sub_12450C();
          goto LABEL_32;
        }
      }

      else
      {
        sub_5CA8(v17, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v16 = sub_125ABC();
      sub_5B30(v16, qword_162020);
      v4 = sub_125AAC();
      v5 = sub_125DEC();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_84;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Parse entity: failed to parse entity from read_NoEntity.";
      goto LABEL_83;
    case 17:
      sub_12437C();
      if (v18)
      {
        sub_1245AC();
        if (swift_dynamicCast())
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_5CA8(v17, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v13 = sub_125ABC();
      sub_5B30(v13, qword_162020);
      v4 = sub_125AAC();
      v5 = sub_125DEC();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_84;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Parse entity: failed to parse entity from repeat_NoEntity.";
      goto LABEL_83;
    case 18:
      sub_12437C();
      if (v18)
      {
        sub_12460C();
        if (swift_dynamicCast())
        {
LABEL_25:

          sub_12492C();
LABEL_32:

          return v17[0];
        }
      }

      else
      {
        sub_5CA8(v17, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v14 = sub_125ABC();
      sub_5B30(v14, qword_162020);
      v4 = sub_125AAC();
      v5 = sub_125DEC();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = "Parse entity: failed to parse entity from restart_NoEntity.";
LABEL_83:
        _os_log_impl(&dword_0, v4, v5, v7, v6, 2u);
      }

LABEL_84:

      return 0;
    default:
      return result;
  }
}

uint64_t sub_CBF6C(uint64_t (*a1)(uint64_t), const char *a2, const char *a3, const char *a4, const char *a5, const char *a6, const char *a7, const char *a8, const char *a9, const char *a10, const char *a11, const char *a12, const char *a13, const char *a14, const char *a15, const char *a16)
{
  v17 = sub_C69B0(a1);
  result = 0;
  switch(v17)
  {
    case 1:
      sub_12437C();
      if (v68)
      {
        sub_12454C();
        if (swift_dynamicCast())
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v40 = sub_125ABC();
      sub_5B30(v40, qword_162020);
      v21 = sub_125AAC();
      v41 = sub_125DEC();
      if (!os_log_type_enabled(v21, v41))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v41;
      v25 = v21;
      a16 = a3;
      goto LABEL_122;
    case 2:
      sub_12437C();
      if (v68)
      {
        sub_12455C();
        if (swift_dynamicCast())
        {
          goto LABEL_44;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v44 = sub_125ABC();
      sub_5B30(v44, qword_162020);
      v21 = sub_125AAC();
      v45 = sub_125DEC();
      if (!os_log_type_enabled(v21, v45))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v45;
      v25 = v21;
      a16 = a7;
      goto LABEL_122;
    case 3:
      sub_12437C();
      if (v68)
      {
        sub_12471C();
        if (swift_dynamicCast())
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v35 = sub_125ABC();
      sub_5B30(v35, qword_162020);
      v21 = sub_125AAC();
      v36 = sub_125DEC();
      if (!os_log_type_enabled(v21, v36))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v36;
      v25 = v21;
      a16 = a4;
      goto LABEL_122;
    case 4:
      sub_12437C();
      if (v68)
      {
        sub_12469C();
        if (swift_dynamicCast())
        {
LABEL_34:

          v19 = sub_12493C();
          goto LABEL_48;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v48 = sub_125ABC();
      sub_5B30(v48, qword_162020);
      v21 = sub_125AAC();
      v49 = sub_125DEC();
      if (!os_log_type_enabled(v21, v49))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v49;
      v25 = v21;
      a16 = a5;
      goto LABEL_122;
    case 5:
      sub_12437C();
      if (v68)
      {
        sub_1244AC();
        if (swift_dynamicCast())
        {
          goto LABEL_44;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v33 = sub_125ABC();
      sub_5B30(v33, qword_162020);
      v21 = sub_125AAC();
      v34 = sub_125DEC();
      if (!os_log_type_enabled(v21, v34))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v34;
      v25 = v21;
      a16 = a9;
      goto LABEL_122;
    case 6:
      sub_12437C();
      if (v68)
      {
        sub_1245FC();
        if (swift_dynamicCast())
        {

          v19 = sub_12484C();
          goto LABEL_48;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v46 = sub_125ABC();
      sub_5B30(v46, qword_162020);
      v21 = sub_125AAC();
      v47 = sub_125DEC();
      if (!os_log_type_enabled(v21, v47))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v47;
      v25 = v21;
      a16 = a12;
      goto LABEL_122;
    case 7:
      sub_12437C();
      if (v68)
      {
        sub_1244CC();
        if (swift_dynamicCast())
        {
          goto LABEL_47;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v29 = sub_125ABC();
      sub_5B30(v29, qword_162020);
      v21 = sub_125AAC();
      v30 = sub_125DEC();
      if (!os_log_type_enabled(v21, v30))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v30;
      v25 = v21;
      a16 = a11;
      goto LABEL_122;
    case 8:
      sub_12437C();
      if (v68)
      {
        sub_1245BC();
        if (swift_dynamicCast())
        {
          goto LABEL_44;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v31 = sub_125ABC();
      sub_5B30(v31, qword_162020);
      v21 = sub_125AAC();
      v32 = sub_125DEC();
      if (!os_log_type_enabled(v21, v32))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v32;
      v25 = v21;
      a16 = a10;
      goto LABEL_122;
    case 9:
      sub_12437C();
      if (v68)
      {
        sub_1244DC();
        if (swift_dynamicCast())
        {
LABEL_25:

          v19 = sub_12435C();
          goto LABEL_48;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v42 = sub_125ABC();
      sub_5B30(v42, qword_162020);
      v21 = sub_125AAC();
      v43 = sub_125DEC();
      if (!os_log_type_enabled(v21, v43))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v43;
      v25 = v21;
      a16 = a6;
      goto LABEL_122;
    case 10:
      sub_12437C();
      if (v68)
      {
        sub_12445C();
        if (swift_dynamicCast())
        {
          goto LABEL_44;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v56 = sub_125ABC();
      sub_5B30(v56, qword_162020);
      v21 = sub_125AAC();
      v57 = sub_125DEC();
      if (!os_log_type_enabled(v21, v57))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v57;
      v25 = v21;
      a16 = a8;
      goto LABEL_122;
    case 11:
      sub_12437C();
      if (v68)
      {
        sub_12472C();
        if (swift_dynamicCast())
        {
          goto LABEL_44;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v37 = sub_125ABC();
      sub_5B30(v37, qword_162020);
      v21 = sub_125AAC();
      v38 = sub_125DEC();
      if (!os_log_type_enabled(v21, v38))
      {
        goto LABEL_124;
      }

      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v21, v38, a13, v39, 2u);
      goto LABEL_123;
    case 12:
      sub_12437C();
      if (v68)
      {
        sub_1245DC();
        if (swift_dynamicCast())
        {
LABEL_47:

          v19 = sub_12487C();
          goto LABEL_48;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v58 = sub_125ABC();
      sub_5B30(v58, qword_162020);
      v21 = sub_125AAC();
      v59 = sub_125DEC();
      if (!os_log_type_enabled(v21, v59))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v59;
      v25 = v21;
      a16 = a15;
      goto LABEL_122;
    case 13:
      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v20 = sub_125ABC();
      sub_5B30(v20, qword_162020);
      v21 = sub_125AAC();
      v22 = sub_125DEC();
      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v22;
      v25 = v21;
      goto LABEL_122;
    case 14:
      sub_12437C();
      if (v68)
      {
        sub_12458C();
        if (swift_dynamicCast())
        {

          v19 = sub_123F2C();
          goto LABEL_48;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v54 = sub_125ABC();
      sub_5B30(v54, qword_162020);
      v21 = sub_125AAC();
      v55 = sub_125DEC();
      if (os_log_type_enabled(v21, v55))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        v24 = v55;
        v25 = v21;
        a16 = a2;
LABEL_122:
        _os_log_impl(&dword_0, v25, v24, a16, v23, 2u);
LABEL_123:
      }

LABEL_124:

      return 0;
    case 15:
    case 16:
    case 17:
    case 18:
      return result;
    default:
      sub_12437C();
      if (!v68)
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
LABEL_102:
        if (qword_15EF20 != -1)
        {
          swift_once();
        }

        v50 = sub_125ABC();
        sub_5B30(v50, qword_162020);
        v51 = sub_125AAC();
        v52 = sub_125DEC();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_0, v51, v52, a14, v53, 2u);
        }

        return 0;
      }

      sub_124A5C();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_102;
      }

LABEL_44:

      v19 = sub_1244FC();
LABEL_48:
      v27 = v19;

      if (v27)
      {
        v28 = a1(v27);

        return v28;
      }

      return 0;
  }
}

char *sub_CCEF8(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1260FC())
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    while ((a1 & 0xC000000000000001) != 0)
    {
      sub_125FFC();
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v6 = sub_CD380();

      v7 = *(v6 + 2);
      v8 = *(v4 + 2);
      v9 = v8 + v7;
      if (__OFADD__(v8, v7))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v9 <= *(v4 + 3) >> 1)
      {
        if (*(v6 + 2))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v8 <= v9)
        {
          v11 = v8 + v7;
        }

        else
        {
          v11 = v8;
        }

        v4 = sub_CD9E0(isUniquelyReferenced_nonNull_native, v11, 1, v4);
        if (*(v6 + 2))
        {
LABEL_18:
          if ((*(v4 + 3) >> 1) - *(v4 + 2) < v7)
          {
            goto LABEL_28;
          }

          swift_arrayInitWithCopy();

          if (v7)
          {
            v12 = *(v4 + 2);
            v13 = __OFADD__(v12, v7);
            v14 = v12 + v7;
            if (v13)
            {
              goto LABEL_29;
            }

            *(v4 + 2) = v14;
          }

          goto LABEL_5;
        }
      }

      if (v7)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v3;
      if (v5 == i)
      {
        goto LABEL_32;
      }
    }

    if (v3 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_25;
    }

    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_32:
  if (!*(v4 + 2))
  {

    return 0;
  }

  return v4;
}

unint64_t sub_CD0DC(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_30;
  }

  v2 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
  if (v2)
  {
    do
    {
      v3 = 0;
      v4 = _swiftEmptyArrayStorage;
      while ((v1 & 0xC000000000000001) != 0)
      {
        sub_125FFC();
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_24;
        }

LABEL_9:
        v6 = sub_CD764();

        v7 = *(v6 + 2);
        v8 = *(v4 + 2);
        v9 = v8 + v7;
        if (__OFADD__(v8, v7))
        {
          goto LABEL_26;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v9 <= *(v4 + 3) >> 1)
        {
          if (*(v6 + 2))
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v8 <= v9)
          {
            v11 = v8 + v7;
          }

          else
          {
            v11 = v8;
          }

          v4 = sub_CD9E0(isUniquelyReferenced_nonNull_native, v11, 1, v4);
          if (*(v6 + 2))
          {
LABEL_18:
            if ((*(v4 + 3) >> 1) - *(v4 + 2) < v7)
            {
              goto LABEL_28;
            }

            swift_arrayInitWithCopy();

            if (v7)
            {
              v12 = *(v4 + 2);
              v13 = __OFADD__(v12, v7);
              v14 = v12 + v7;
              if (v13)
              {
                goto LABEL_29;
              }

              *(v4 + 2) = v14;
            }

            goto LABEL_5;
          }
        }

        if (v7)
        {
          goto LABEL_27;
        }

LABEL_5:
        ++v3;
        if (v5 == v2)
        {
          goto LABEL_32;
        }
      }

      if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_25;
      }

      v5 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_9;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      result = sub_1260FC();
      v2 = result;
    }

    while (result);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_32:
  v15 = *(v4 + 2);
  if (v15)
  {
    v16 = 0;
    v17 = (v4 + 40);
    v18 = _swiftEmptyArrayStorage;
    while (v16 < *(v4 + 2))
    {
      v20 = *(v17 - 1);
      v19 = *v17;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_CD9E0(0, *(v18 + 2) + 1, 1, v18);
        v18 = result;
      }

      v22 = *(v18 + 2);
      v21 = *(v18 + 3);
      if (v22 >= v21 >> 1)
      {
        result = sub_CD9E0((v21 > 1), v22 + 1, 1, v18);
        v18 = result;
      }

      ++v16;
      *(v18 + 2) = v22 + 1;
      v23 = &v18[16 * v22];
      *(v23 + 4) = v20;
      *(v23 + 5) = v19;
      v17 += 2;
      if (v15 == v16)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
LABEL_42:

    if (!*(v18 + 2))
    {

      return 0;
    }

    return v18;
  }

  return result;
}

char *sub_CD380()
{
  sub_1241FC();
  if (!v31)
  {
    return _swiftEmptyArrayStorage;
  }

  v0 = sub_123F7C();

  if (!v0)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1260FC())
  {
    v3 = 0;
    v26 = v0 & 0xC000000000000001;
    v4 = _swiftEmptyArrayStorage;
    v24 = v1;
    v25 = v0;
    v23 = i;
    while (v26)
    {
      sub_125FFC();
      v5 = __OFADD__(v3++, 1);
      if (v5)
      {
        goto LABEL_57;
      }

LABEL_11:
      sub_1241FC();
      if (!v30)
      {

        v8 = _swiftEmptyArrayStorage;
        goto LABEL_41;
      }

      v27 = v4;
      v6 = sub_123FAC();

      if (v6)
      {
        swift_getKeyPath();
        if (v6 >> 62)
        {
          v7 = sub_1260FC();
          if (v7)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
          if (v7)
          {
LABEL_15:
            v0 = 0;
            v1 = v6 & 0xC000000000000001;
            v8 = _swiftEmptyArrayStorage;
            do
            {
              v9 = v0;
              while (1)
              {
                if (v1)
                {
                  sub_125FFC();
                  v0 = v9 + 1;
                  if (__OFADD__(v9, 1))
                  {
                    goto LABEL_55;
                  }
                }

                else
                {
                  if (v9 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
                  {
                    goto LABEL_56;
                  }

                  v0 = v9 + 1;
                  if (__OFADD__(v9, 1))
                  {
LABEL_55:
                    __break(1u);
LABEL_56:
                    __break(1u);
                    goto LABEL_57;
                  }
                }

                swift_getAtKeyPath();

                if (v29)
                {
                  break;
                }

                ++v9;
                if (v0 == v7)
                {
                  goto LABEL_39;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = sub_CD9E0(0, *(v8 + 2) + 1, 1, v8);
              }

              v11 = *(v8 + 2);
              v10 = *(v8 + 3);
              v12 = v11 + 1;
              if (v11 >= v10 >> 1)
              {
                v14 = sub_CD9E0((v10 > 1), v11 + 1, 1, v8);
                v12 = v11 + 1;
                v8 = v14;
              }

              *(v8 + 2) = v12;
              v13 = &v8[16 * v11];
              *(v13 + 4) = v28;
              *(v13 + 5) = v29;
            }

            while (v0 != v7);
            goto LABEL_39;
          }
        }

        v8 = _swiftEmptyArrayStorage;
LABEL_39:

        v1 = v24;
        v0 = v25;
        i = v23;
        goto LABEL_40;
      }

      v8 = _swiftEmptyArrayStorage;
LABEL_40:
      v4 = v27;
LABEL_41:
      v15 = *(v8 + 2);
      v16 = *(v4 + 2);
      v17 = v16 + v15;
      if (__OFADD__(v16, v15))
      {
        goto LABEL_59;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v17 <= *(v4 + 3) >> 1)
      {
        if (*(v8 + 2))
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v16 <= v17)
        {
          v19 = v16 + v15;
        }

        else
        {
          v19 = v16;
        }

        v4 = sub_CD9E0(isUniquelyReferenced_nonNull_native, v19, 1, v4);
        if (*(v8 + 2))
        {
LABEL_50:
          if ((*(v4 + 3) >> 1) - *(v4 + 2) < v15)
          {
            goto LABEL_61;
          }

          swift_arrayInitWithCopy();

          if (v15)
          {
            v20 = *(v4 + 2);
            v5 = __OFADD__(v20, v15);
            v21 = v20 + v15;
            if (v5)
            {
              goto LABEL_62;
            }

            *(v4 + 2) = v21;
          }

          goto LABEL_7;
        }
      }

      if (v15)
      {
        goto LABEL_60;
      }

LABEL_7:
      if (v3 == i)
      {
        goto LABEL_65;
      }
    }

    if (v3 >= *(v1 + 16))
    {
      goto LABEL_58;
    }

    v5 = __OFADD__(v3++, 1);
    if (!v5)
    {
      goto LABEL_11;
    }

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
    ;
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_65:

  return v4;
}

char *sub_CD764()
{
  sub_1241FC();
  if (v13)
  {
    v0 = sub_123FAC();

    if (v0)
    {
      swift_getKeyPath();
      if (v0 >> 62)
      {
LABEL_25:
        v1 = sub_1260FC();
        if (v1)
        {
LABEL_5:
          v2 = 0;
          v3 = _swiftEmptyArrayStorage;
          do
          {
            v4 = v2;
            while (1)
            {
              if ((v0 & 0xC000000000000001) != 0)
              {
                sub_125FFC();
                v2 = v4 + 1;
                if (__OFADD__(v4, 1))
                {
                  goto LABEL_23;
                }
              }

              else
              {
                if (v4 >= *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)))
                {
                  goto LABEL_24;
                }

                v2 = v4 + 1;
                if (__OFADD__(v4, 1))
                {
LABEL_23:
                  __break(1u);
LABEL_24:
                  __break(1u);
                  goto LABEL_25;
                }
              }

              swift_getAtKeyPath();

              if (v12)
              {
                break;
              }

              ++v4;
              if (v2 == v1)
              {
                goto LABEL_27;
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_CD9E0(0, *(v3 + 2) + 1, 1, v3);
            }

            v6 = *(v3 + 2);
            v5 = *(v3 + 3);
            v7 = v6 + 1;
            if (v6 >= v5 >> 1)
            {
              v9 = sub_CD9E0((v5 > 1), v6 + 1, 1, v3);
              v7 = v6 + 1;
              v3 = v9;
            }

            *(v3 + 2) = v7;
            v8 = &v3[16 * v6];
            *(v8 + 4) = v11;
            *(v8 + 5) = v12;
          }

          while (v2 != v1);
          goto LABEL_27;
        }
      }

      else
      {
        v1 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
        if (v1)
        {
          goto LABEL_5;
        }
      }

      v3 = _swiftEmptyArrayStorage;
LABEL_27:

      return v3;
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_CD970(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_162040, &qword_129F30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_CD9E0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_5AE8(&qword_162048, &qword_129F38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_CDAEC@<D0>(_OWORD *a1@<X8>)
{
  sub_1241FC();
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_CDBA0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_5AE8(&qword_162090, &qword_129FA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_5AE8(&qword_162098, &qword_129FB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_CDCFC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_5AE8(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_CDED8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_5AE8(&qword_162068, &qword_129F80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_5AE8(&qword_162070, &qword_129F88);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_CE020(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_CE088()
{
  v1 = [*(v0 + 24) timers];
  *(v0 + 32) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *(v3 + 16) = v2;
    v4 = swift_task_alloc();
    *(v0 + 48) = v4;
    v5 = sub_5AE8(&qword_160868, qword_12B5A0);
    *v4 = v0;
    v4[1] = sub_CE1EC;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000010, 0x800000000012D4F0, sub_7CDC0, v3, v5);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_CE1EC()
{

  return _swift_task_switch(sub_CE304, 0, 0);
}

uint64_t sub_CE304()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_CE368(uint64_t a1, void *a2)
{
  v15 = a2;
  v18 = a1;
  v4 = sub_5AE8(&qword_1620A8, &qword_129FC0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v17 = *(v5 + 16);
  v17(&v15 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  v16 = *(v5 + 32);
  v16(v9 + v8, v7, v4);
  v23 = sub_CE6A0;
  v24 = v9;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_CE71C;
  v22 = &unk_159770;
  v10 = _Block_copy(&aBlock);

  v11 = [a2 addSuccessBlock:v10];
  _Block_release(v10);

  v17(v7, v18, v4);
  v12 = swift_allocObject();
  v16(v12 + v8, v7, v4);
  v23 = sub_CE830;
  v24 = v12;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_105C50;
  v22 = &unk_1597C0;
  v13 = _Block_copy(&aBlock);

  v14 = [v15 addFailureBlock:v13];
  _Block_release(v13);
}

uint64_t sub_CE620(uint64_t a1)
{
  sub_CE8D0();
  sub_125C5C();
  sub_5AE8(&qword_1620A8, &qword_129FC0);
  return sub_125D1C();
}

uint64_t sub_CE6A0(uint64_t a1)
{
  sub_5AE8(&qword_1620A8, &qword_129FC0);

  return sub_CE620(a1);
}

void sub_CE71C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_CE784(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_CE79C()
{
  v1 = sub_5AE8(&qword_1620A8, &qword_129FC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_CE830()
{
  sub_5AE8(&qword_1620A8, &qword_129FC0);
  sub_5AE8(&qword_1620A8, &qword_129FC0);
  return sub_125D1C();
}

unint64_t sub_CE8D0()
{
  result = qword_1620B0;
  if (!qword_1620B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1620B0);
  }

  return result;
}

uint64_t sub_CE938()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_1620B8);
  sub_5B30(v0, qword_1620B8);
  return sub_1257AC();
}

uint64_t sub_CE984()
{
  v0 = sub_1250BC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1250AC();
  v4 = sub_12506C();
  (*(v1 + 8))(v3, v0);
  if (!v4)
  {
    goto LABEL_6;
  }

  sub_5AE8(&qword_1620D8, &qword_12A120);
  v5 = sub_123B4C();
  v6 = [v5 targetTimer];

  v7 = [v6 shouldMatchAny];
  sub_8BAC();
  v8.super.super.isa = sub_125EFC(1).super.super.isa;
  if (!v7)
  {
    goto LABEL_5;
  }

  v9 = sub_125F0C();

  if (v9)
  {
    v10 = sub_123B4C();
    v8.super.super.isa = [v10 targetingInfo];

    if (!v8.super.super.isa)
    {
      if (qword_15EF28 != -1)
      {
        swift_once();
      }

      v17 = sub_125ABC();
      sub_5B30(v17, qword_1620B8);
      v12 = sub_125AAC();
      v18 = sub_125DFC();
      if (!os_log_type_enabled(v12, v18))
      {
        v15 = 1;
        goto LABEL_12;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v12, v18, "ResolveRecord indicates we are searching for a room confirmation", v19, 2u);
      v15 = 1;
      goto LABEL_10;
    }

LABEL_5:
  }

LABEL_6:
  if (qword_15EF28 != -1)
  {
    swift_once();
  }

  v11 = sub_125ABC();
  sub_5B30(v11, qword_1620B8);
  v12 = sub_125AAC();
  v13 = sub_125DFC();
  if (!os_log_type_enabled(v12, v13))
  {
    v15 = 0;
    goto LABEL_12;
  }

  v14 = swift_slowAlloc();
  *v14 = 0;
  _os_log_impl(&dword_0, v12, v13, "ResolveRecord not searching for room confirmation", v14, 2u);
  v15 = 0;
LABEL_10:

LABEL_12:

  return v15;
}

uint64_t sub_CEC9C@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5AE8(&unk_15F1B0, qword_126E30);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  if (qword_15EF28 != -1)
  {
    swift_once();
  }

  v10 = sub_125ABC();
  sub_5B30(v10, qword_1620B8);
  v11 = sub_125AAC();
  v12 = sub_125DFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "ResetTimer.NeedsConfirmationStrategy.actionForInput() called)", v13, 2u);
  }

  v14 = sub_12532C();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = sub_CE984();
  v16 = &enum case for DecideAction.PromptExpectation.roomConfirmation(_:);
  if ((v15 & 1) == 0)
  {
    v16 = &enum case for DecideAction.PromptExpectation.confirmation(_:);
  }

  v17 = *v16;
  v18 = sub_12514C();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v6, v17, v18);
  (*(v19 + 56))(v6, 0, 1, v18);
  sub_3D63C(a1, v9, 0, v6, a2);
  sub_5CA8(v6, &unk_15F1B0, qword_126E30);
  return sub_5CA8(v9, &qword_15FFB0, &unk_1270A0);
}

uint64_t sub_CEF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  sub_5AE8(&unk_161EC0, &unk_126E20);
  v4[11] = swift_task_alloc();
  v5 = sub_12379C();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_CF064, 0, 0);
}

uint64_t sub_CF064()
{
  if (qword_15EF28 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_1620B8);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ResetTimer.NeedsConfirmationStrategy.parseConfirmationResponse() called", v4, 2u);
  }

  sub_5AE8(&qword_1620D8, &qword_12A120);
  v5 = sub_123B5C();
  v6 = [v5 itemToConfirm];

  sub_125F4C();
  swift_unknownObjectRelease();
  sub_1257EC();
  if (!swift_dynamicCast())
  {
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v14 = 3;
    swift_willThrow();

    v15 = *(v0 + 8);
    goto LABEL_28;
  }

  v7 = *(v0 + 48);
  v8 = sub_123B4C();
  [v8 setTargetTimer:v7];
  if ((sub_CE984() & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_9D860(*(v0 + 64), 1, *(v0 + 120));
  v9 = sub_A8C70();
  if (v9 <= 1)
  {
    if (v9)
    {
      v10 = sub_125AAC();
      v11 = sub_125DFC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_0, v10, v11, "Received explicit 'here' confirmation – only local timers for pauseMultiple", v12, 2u);
      }

      v13 = [v8 targetTimer];
      if (!v13)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

LABEL_15:
    v16 = sub_125AAC();
    v17 = sub_125DFC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "Received explicit 'everywhere' confirmation to include remote timers for pauseMultiple", v18, 2u);
    }

    v19 = [v8 targetTimer];
    if (!v19)
    {
      goto LABEL_25;
    }

    v20 = v19;
    v21 = 1;
    goto LABEL_24;
  }

  if (v9 == 2)
  {
    goto LABEL_15;
  }

  v22 = *(v0 + 112);
  v23 = *(v0 + 96);
  v24 = *(v0 + 104);
  sub_12377C();
  v25 = sub_12375C();
  v26 = *(v24 + 8);
  v26(v22, v23);
  v27 = sub_125AAC();
  v28 = sub_125DFC();
  v29 = os_log_type_enabled(v27, v28);
  if ((v25 & 1) == 0)
  {
    v46 = v26;
    if (v29)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v27, v28, "Defaulting confirmation to reject for no/cancel", v38, 2u);
    }

    v45 = *(v0 + 120);
    v40 = *(v0 + 88);
    v39 = *(v0 + 96);

    v41 = enum case for ConfirmationResponse.rejected(_:);
    v42 = sub_123A1C();
    v43 = *(v42 - 8);
    (*(v43 + 104))(v40, v41, v42);
    (*(v43 + 56))(v40, 0, 1, v42);
    v44 = v8;
    sub_125EDC();

    sub_12558C();
    sub_123AEC();

    v46(v45, v39);
    goto LABEL_27;
  }

  if (v29)
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v27, v28, "Confirming use only local timers for pauseMultiple", v30, 2u);
  }

  v13 = [v8 targetTimer];
  if (!v13)
  {
    goto LABEL_25;
  }

LABEL_23:
  v20 = v13;
  v21 = 0;
LABEL_24:
  sub_8BAC();
  isa = sub_125EEC(v21).super.super.isa;
  [v20 setShouldMatchRemote:isa];

LABEL_25:
  (*(*(v0 + 104) + 8))(*(v0 + 120), *(v0 + 96));
LABEL_26:
  v32 = *(v0 + 88);
  v33 = enum case for ConfirmationResponse.confirmed(_:);
  v34 = sub_123A1C();
  v35 = *(v34 - 8);
  (*(v35 + 104))(v32, v33, v34);
  (*(v35 + 56))(v32, 0, 1, v34);
  v36 = v8;
  sub_125EDC();

  sub_12558C();
  sub_123AEC();

LABEL_27:

  v15 = *(v0 + 8);
LABEL_28:

  return v15();
}

uint64_t sub_CF764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a1;
  v3[14] = a3;
  sub_5AE8(&unk_162190, &unk_128500);
  v3[15] = swift_task_alloc();
  sub_124EDC();
  v3[16] = swift_task_alloc();
  v4 = sub_125ABC();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v5 = sub_124FFC();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v6 = sub_12501C();
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v7 = sub_12392C();
  v3[28] = v7;
  v3[29] = *(v7 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v8 = sub_1250BC();
  v3[33] = v8;
  v3[34] = *(v8 - 8);
  v3[35] = swift_task_alloc();
  v9 = sub_12368C();
  v3[36] = v9;
  v3[37] = *(v9 - 8);
  v3[38] = swift_task_alloc();

  return _swift_task_switch(sub_CFA84, 0, 0);
}

uint64_t sub_CFA84()
{
  if (qword_15EF28 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[17], qword_1620B8);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ResetTimer.NeedsConfirmationStrategy.makePromptForConfirmation() called", v4, 2u);
  }

  sub_5AE8(&qword_1620D8, &qword_12A120);
  v5 = sub_123B5C();
  v6 = [v5 itemToConfirm];

  sub_125F4C();
  swift_unknownObjectRelease();
  sub_1257EC();
  if (swift_dynamicCast())
  {
    v55 = v1;
    v8 = v0[34];
    v7 = v0[35];
    v9 = v0[33];
    v10 = v0[12];
    v0[39] = v10;
    sub_12362C();
    sub_1250AC();
    v11 = sub_12506C();
    (*(v8 + 8))(v7, v9);
    if (!v11)
    {
      goto LABEL_16;
    }

    v12 = [v10 shouldMatchAny];
    sub_8BAC();
    v13.super.super.isa = sub_125EFC(1).super.super.isa;
    if (v12)
    {
      v14 = sub_125F0C();

      if ((v14 & 1) == 0)
      {
        goto LABEL_11;
      }

      v15 = sub_123B4C();
      v13.super.super.isa = [v15 targetingInfo];

      if (!v13.super.super.isa)
      {
        v49 = v0[21];
        v48 = v0[22];
        v51 = v0[19];
        v50 = v0[20];
        v52 = v0[17];
        v53 = v0[18];
        sub_FFF04(7, v0[32]);
        (*(v49 + 104))(v48, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v50);
        (*(v53 + 16))(v51, v1, v52);
        mach_absolute_time();
        sub_12502C();
        type metadata accessor for ResetTimerCATsSimple(0);
        sub_124ECC();
        v0[40] = sub_124E7C();
        v43 = "resetTimer#confirmResetMultiple";
        v56 = &async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
        v54 = swift_task_alloc();
        v0[41] = v54;
        *v54 = v0;
        v54[1] = sub_D03C0;
        v45 = _swiftEmptyArrayStorage;
        v26 = 0xD000000000000020;
LABEL_27:
        v27 = v43 | 0x8000000000000000;
        goto LABEL_28;
      }
    }

LABEL_11:
    v16 = [v10 device];
    if (v16)
    {
      v17 = v0[21];
      v18 = v0[22];
      v20 = v0[19];
      v19 = v0[20];
      v22 = v0[17];
      v21 = v0[18];

      sub_FFAE8(7);
      (*(v17 + 104))(v18, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v19);
      (*(v21 + 16))(v20, v1, v22);
      mach_absolute_time();
      sub_12502C();
      type metadata accessor for TimerBaseCATsSimple(0);
      sub_124ECC();
      v0[45] = sub_124E7C();
      v23 = sub_113D6C(0, 0);
      v0[46] = v23;
      sub_5AE8(&qword_15F180, &unk_126E10);
      v24 = swift_allocObject();
      v0[47] = v24;
      *(v24 + 16) = xmmword_126CB0;
      *(v24 + 32) = 0x72656D6974;
      *(v24 + 40) = 0xE500000000000000;
      *(v24 + 72) = type metadata accessor for TimerTimer(0);
      *(v24 + 48) = v23;
      v56 = &async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);

      v25 = swift_task_alloc();
      v0[48] = v25;
      *v25 = v0;
      v25[1] = sub_D0964;
      v26 = 0xD000000000000023;
      v27 = 0x800000000012DD90;
LABEL_25:
      v45 = v24;
LABEL_28:

      return (v56)(v26, v27, v45);
    }

LABEL_16:
    v31 = v0[21];
    v32 = v0[22];
    v34 = v0[19];
    v33 = v0[20];
    v36 = v0[17];
    v35 = v0[18];
    sub_FFAE8(7);
    (*(v31 + 104))(v32, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v33);
    (*(v35 + 16))(v34, v55, v36);
    mach_absolute_time();
    sub_12502C();
    v37 = sub_123B4C();
    v38 = [v37 targetTimer];

    v39 = [v38 shouldMatchAny];
    sub_8BAC();
    v40.super.super.isa = sub_125EFC(1).super.super.isa;
    isa = v40.super.super.isa;
    if (v39)
    {
      v42 = sub_125F0C();

      if (v42)
      {
        if (qword_15EE20 != -1)
        {
          swift_once();
        }

        v43 = "resetTimer#confirmTargetTimer";
        v56 = &async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
        v44 = swift_task_alloc();
        v0[52] = v44;
        *v44 = v0;
        v44[1] = sub_D0F30;
        v45 = _swiftEmptyArrayStorage;
        v26 = 0xD00000000000001FLL;
        goto LABEL_27;
      }
    }

    else
    {
    }

    if (qword_15EE20 != -1)
    {
      swift_once();
    }

    v46 = sub_113D6C(0, 0);
    v0[54] = v46;
    sub_5AE8(&qword_15F180, &unk_126E10);
    v24 = swift_allocObject();
    v0[55] = v24;
    *(v24 + 16) = xmmword_126CB0;
    strcpy((v24 + 32), "speakableTimer");
    *(v24 + 47) = -18;
    *(v24 + 72) = type metadata accessor for TimerTimer(0);
    *(v24 + 48) = v46;
    v56 = &async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);

    v47 = swift_task_alloc();
    v0[56] = v47;
    *v47 = v0;
    v47[1] = sub_D1290;
    v27 = 0x800000000012E7E0;
    v26 = 0xD00000000000001DLL;
    goto LABEL_25;
  }

  sub_5AE8(&unk_15F1A0, &unk_126ED0);
  sub_84CC();
  swift_allocError();
  *v28 = 3;
  swift_willThrow();

  v29 = v0[1];

  return v29();
}

uint64_t sub_D03C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_D07EC, 0, 0);
  }

  else
  {

    v4[43] = a1;
    v6 = swift_task_alloc();
    v4[44] = v6;
    *v6 = v5;
    v6[1] = sub_D0570;
    v7 = v4[38];
    v8 = v4[32];
    v9 = v4[27];
    v10 = v4[13];

    return DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)(v10, v7, v8, v9, 0, 0, 0, 0);
  }
}

uint64_t sub_D0570()
{
  v1 = *(*v0 + 344);

  return _swift_task_switch(sub_D0684, 0, 0);
}

uint64_t sub_D0684()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 256);
  v5 = *(v0 + 232);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v8 = *(v0 + 184);
  v9 = *(v0 + 192);

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_D07EC()
{
  v1 = v0[39];
  v2 = v0[37];
  v12 = v0[38];
  v3 = v0[36];
  v4 = v0[32];
  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[27];
  v9 = v0[23];
  v8 = v0[24];

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v12, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_D0964(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_D0DA4, 0, 0);
  }

  else
  {

    v4[50] = a1;
    v6 = swift_task_alloc();
    v4[51] = v6;
    *v6 = v5;
    v6[1] = sub_D0B28;
    v7 = v4[38];
    v8 = v4[31];
    v9 = v4[26];
    v10 = v4[13];

    return DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)(v10, v7, v8, v9, 0, 0, 0, 0);
  }
}

uint64_t sub_D0B28()
{
  v1 = *(*v0 + 400);

  return _swift_task_switch(sub_D0C3C, 0, 0);
}

uint64_t sub_D0C3C()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 248);
  v5 = *(v0 + 232);
  v6 = *(v0 + 224);
  v7 = *(v0 + 208);
  v8 = *(v0 + 184);
  v9 = *(v0 + 192);

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_D0DA4()
{
  v1 = v0[39];
  v2 = v0[37];
  v11 = v0[36];
  v12 = v0[38];
  v10 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[26];
  v7 = v0[23];
  v6 = v0[24];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v10, v4);
  (*(v2 + 8))(v12, v11);

  v8 = v0[1];

  return v8();
}

uint64_t sub_D0F30(uint64_t a1)
{
  v3 = *v2;
  v3[6] = v2;
  v3[7] = a1;
  v3[8] = v1;
  v3[53] = v1;

  if (v1)
  {
    v4 = sub_D1124;
  }

  else
  {
    v4 = sub_D104C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_D104C()
{
  v1 = v0[7];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[15];
  v0[58] = v1;
  (*(v3 + 56))(v4, 1, 1, v2);
  v1;
  v5 = swift_task_alloc();
  v0[59] = v5;
  *v5 = v0;
  v5[1] = sub_D1610;
  v6 = v0[25];
  v7 = v0[15];
  v8 = v0[13];

  return sub_F2BE4(v8, 7, v7, v6);
}

uint64_t sub_D1124()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  v9 = *(v0 + 184);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_D1290(uint64_t a1)
{
  v3 = *v2;
  v3[9] = v2;
  v3[10] = a1;
  v3[11] = v1;
  v3[57] = v1;

  if (v1)
  {
    v4 = sub_D1494;
  }

  else
  {

    v4 = sub_D13BC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_D13BC()
{
  v1 = v0[10];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[15];
  v0[58] = v1;
  (*(v3 + 56))(v4, 1, 1, v2);
  v1;
  v5 = swift_task_alloc();
  v0[59] = v5;
  *v5 = v0;
  v5[1] = sub_D1610;
  v6 = v0[25];
  v7 = v0[15];
  v8 = v0[13];

  return sub_F2BE4(v8, 7, v7, v6);
}

uint64_t sub_D1494()
{
  v1 = v0[39];
  v2 = v0[37];
  v11 = v0[36];
  v12 = v0[38];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[28];
  v6 = v0[24];
  v7 = v0[25];
  v8 = v0[23];

  (*(v6 + 8))(v7, v8);
  (*(v3 + 8))(v4, v5);
  (*(v2 + 8))(v12, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_D1610()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  v3 = *(v2 + 464);
  sub_5CA8(*(v2 + 120), &unk_162190, &unk_128500);

  if (v0)
  {
    v4 = sub_D18DC;
  }

  else
  {
    v4 = sub_D176C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_D176C()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  v9 = *(v0 + 192);

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_D18DC()
{
  v1 = *(v0 + 464);
  v12 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v12, v2);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_D1A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = sub_D1B08;

  return sub_CEF5C(a1, a2, a3);
}

uint64_t sub_D1B08()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_D1C3C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_D1C3C()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_D1D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = sub_D1DB8;

  return sub_CF764(a1, a2, a3);
}

uint64_t sub_D1DB8()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_D1EEC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_D1EEC()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

unint64_t sub_D1FBC()
{
  result = qword_1620D0;
  if (!qword_1620D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1620D0);
  }

  return result;
}

uint64_t sub_D2024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_12532C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_D20E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_12532C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s21ConfirmIntentStrategyVMa_0(uint64_t a1)
{
  result = qword_162150;
  if (!qword_162150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_D21D4(uint64_t a1)
{
  result = sub_54018();
  if (v2 <= 0x3F)
  {
    result = sub_12532C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_D2258()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_1620E0);
  sub_5B30(v0, qword_1620E0);
  return sub_1257AC();
}

uint64_t sub_D22A4@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5AE8(&unk_15F1B0, qword_126E30);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  if (qword_15EF30 != -1)
  {
    swift_once();
  }

  v10 = sub_125ABC();
  sub_5B30(v10, qword_1620E0);
  v11 = sub_125AAC();
  v12 = sub_125DFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "DismissTimer.ConfirmIntentStrategy.actionForInput() called.", v13, 2u);
  }

  v14 = sub_12532C();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = enum case for DecideAction.PromptExpectation.confirmation(_:);
  v16 = sub_12514C();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v6, v15, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  sub_405FC(a1, v9, 0, v6, a2);
  sub_5CA8(v6, &unk_15F1B0, qword_126E30);
  return sub_5CA8(v9, &qword_15FFB0, &unk_1270A0);
}

uint64_t sub_D2538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  v4 = sub_123CDC();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v5 = sub_1252AC();
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v6 = sub_123D1C();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v7 = sub_123E4C();
  v3[32] = v7;
  v3[33] = *(v7 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v8 = sub_123DAC();
  v3[38] = v8;
  v3[39] = *(v8 - 8);
  v3[40] = swift_task_alloc();
  v9 = sub_123D6C();
  v3[41] = v9;
  v3[42] = *(v9 - 8);
  v3[43] = swift_task_alloc();
  v10 = sub_123A1C();
  v3[44] = v10;
  v3[45] = *(v10 - 8);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  sub_5AE8(&unk_161EC0, &unk_126E20);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = type metadata accessor for TimerNLv3Intent(0);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v11 = sub_123D3C();
  v3[59] = v11;
  v3[60] = *(v11 - 8);
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v12 = sub_124BCC();
  v3[63] = v12;
  v3[64] = *(v12 - 8);
  v3[65] = swift_task_alloc();

  return _swift_task_switch(sub_D2A10, 0, 0);
}

uint64_t sub_D2A10()
{
  v293 = v0;
  v1 = v0;
  v2 = *(v0 + 496);
  v3 = *(v0 + 480);
  v4 = *(v1 + 472);
  sub_5AE8(&qword_1621A0, &unk_12A210);
  v5 = sub_123ABC();
  sub_123CCC();
  v6 = (*(v3 + 88))(v2, v4);
  if (v6 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(*(v1 + 480) + 96))(*(v1 + 496), *(v1 + 472));
LABEL_5:
    v7 = *(v1 + 520);
    v8 = *(v1 + 504);
    v9 = *(v1 + 464);
    v10 = *(*(v1 + 512) + 32);
    v10(v7, *(v1 + 496), v8);
    v10(v9, v7, v8);
    if (qword_15EF30 != -1)
    {
      swift_once();
    }

    v12 = *(v1 + 456);
    v11 = *(v1 + 464);
    v13 = sub_125ABC();
    sub_5B30(v13, qword_1620E0);
    sub_9848(v11, v12);
    v14 = sub_125AAC();
    v15 = sub_125DFC();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v1 + 456);
    v18 = v1;
    if (v16)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v292[0] = v20;
      *v19 = 136315138;
      sub_98AC(&qword_161ED0, &unk_12A9D8);
      v21 = sub_12618C();
      v23 = v22;
      sub_97EC(v17);
      v24 = sub_8530(v21, v23, v292);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_0, v14, v15, "TimerNLIntent: %s", v19, 0xCu);
      sub_5BB0(v20);
    }

    else
    {

      sub_97EC(v17);
    }

    if (qword_15EF98 != -1)
    {
      swift_once();
    }

    v1 = v18;
    sub_98AC(&qword_15FFA0, &unk_12AA00);
    sub_12428C();
    if (*(v18 + 532) == 2 || (sub_12428C(), *(v18 + 533) == 1))
    {
      v25 = *(v18 + 464);
      v26 = *(v18 + 440);
      v28 = *(v18 + 352);
      v27 = *(v18 + 360);
      v29 = &enum case for ConfirmationResponse.rejected(_:);
    }

    else
    {
      v25 = *(v18 + 464);
      v26 = *(v18 + 440);
      v28 = *(v18 + 352);
      v27 = *(v18 + 360);
      v29 = &enum case for ConfirmationResponse.confirmed(_:);
    }

    (*(v27 + 104))(v26, *v29, v28);
    (*(v27 + 56))(v26, 0, 1, v28);
    sub_1256CC();
    sub_1239CC();
    sub_97EC(v25);
    goto LABEL_22;
  }

  if (v6 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(*(v1 + 480) + 96))(*(v1 + 496), *(v1 + 472));
    sub_5AE8(&unk_15FF80, &unk_126EE0);

    goto LABEL_5;
  }

  v289 = v1;
  if (v6 == enum case for Parse.directInvocation(_:))
  {
    v30 = *(v1 + 496);
    v31 = *(v1 + 248);
    v33 = *(v1 + 208);
    v32 = *(v1 + 216);
    (*(*(v1 + 480) + 96))(v30, *(v1 + 472));
    (*(v32 + 32))(v31, v30, v33);
    if (qword_15EF30 != -1)
    {
      swift_once();
    }

    v35 = *(v1 + 240);
    v34 = *(v1 + 248);
    v37 = *(v1 + 208);
    v36 = *(v1 + 216);
    v38 = sub_125ABC();
    sub_5B30(v38, qword_1620E0);
    v39 = *(v36 + 16);
    v39(v35, v34, v37);
    v40 = sub_125AAC();
    v41 = sub_125DFC();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v1 + 240);
    v282 = v39;
    if (v42)
    {
      v44 = v1;
      v45 = *(v1 + 232);
      v46 = *(v44 + 216);
      v285 = v5;
      v47 = *(v289 + 208);
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v292[0] = v49;
      *v48 = 136315138;
      v39(v45, v43, v47);
      v50 = sub_125BAC();
      v52 = v51;
      v53 = v47;
      v5 = v285;
      v287 = *(v46 + 8);
      v287(v43, v53);
      v54 = v50;
      v1 = v289;
      v55 = sub_8530(v54, v52, v292);

      *(v48 + 4) = v55;
      _os_log_impl(&dword_0, v40, v41, "Handling direct invocation: %s", v48, 0xCu);
      sub_5BB0(v49);
    }

    else
    {
      v76 = *(v1 + 208);
      v77 = *(v1 + 216);

      v287 = *(v77 + 8);
      v287(v43, v76);
    }

    v78 = *(v1 + 400);
    v79 = *(v1 + 352);
    v80 = *(v1 + 360);
    sub_12527C();
    if ((*(v80 + 48))(v78, 1, v79) != 1)
    {
      v170 = *(v1 + 440);
      v171 = *(v1 + 376);
      v172 = *(v1 + 352);
      v173 = *(v1 + 360);
      v174 = *(v1 + 248);
      v175 = *(v1 + 208);
      (*(v173 + 32))(v171, *(v1 + 400), v172);
LABEL_84:
      (*(v173 + 16))(v170, v171, v172);
      (*(v173 + 56))(v170, 0, 1, v172);
      sub_1256CC();
      sub_1239CC();
      (*(v173 + 8))(v171, v172);
      v287(v174, v175);
      goto LABEL_22;
    }

    sub_5CA8(*(v1 + 400), &unk_161EC0, &unk_126E20);
    v81 = sub_123D0C();
    if (!v81)
    {
      goto LABEL_115;
    }

    v82 = v81;
    v83 = v5;
    v84 = *(v1 + 200);
    v85 = v1;
    v86 = *(v1 + 184);
    v87 = *(v85 + 176);
    v88 = *(v86 + 104);
    v88(v84, enum case for DirectInvocationUtils.Timer.UserInfoKey.buttonPressed(_:), v87);
    v89 = sub_12529C();
    v91 = v90;
    v92 = *(v86 + 8);
    v92(v84, v87);
    if (*(v82 + 16))
    {
      v93 = sub_8AD8(v89, v91);
      v95 = v94;

      if (v95)
      {
        sub_8B50(*(v82 + 56) + 32 * v93, v289 + 16);
        if (swift_dynamicCast())
        {
          v96._rawValue = &off_157950;
          v97 = sub_12613C(v96, *(v289 + 80));

          if (!v97)
          {
            LODWORD(v286) = 0;
LABEL_123:
            v263 = *(v289 + 192);
            v264 = *(v289 + 176);
            v88(v263, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v264);
            v265 = sub_12529C();
            v267 = v266;
            v92(v263, v264);
            if (*(v82 + 16))
            {
              v268 = sub_8AD8(v265, v267);
              v270 = v269;

              v5 = v83;
              if (v270)
              {
                v1 = v289;
                sub_8B50(*(v82 + 56) + 32 * v268, v289 + 48);

                if (swift_dynamicCast())
                {
                  v271 = sub_B66D0(*(v289 + 96), *(v289 + 104));
                  if (v271 != 19)
                  {
                    if (sub_B6264(v271) == 1886352499 && v272 == 0xE400000000000000)
                    {

LABEL_137:
                      v274 = sub_125AAC();
                      v275 = sub_125DFC();
                      if (os_log_type_enabled(v274, v275))
                      {
                        v276 = swift_slowAlloc();
                        v277 = swift_slowAlloc();
                        v292[0] = v277;
                        *v276 = 136315138;
                        if (v286)
                        {
                          v278 = 0x6C65636E6163;
                        }

                        else
                        {
                          v278 = 7562617;
                        }

                        if (v286)
                        {
                          v279 = 0xE600000000000000;
                        }

                        else
                        {
                          v279 = 0xE300000000000000;
                        }

                        v280 = sub_8530(v278, v279, v292);

                        *(v276 + 4) = v280;
                        _os_log_impl(&dword_0, v274, v275, "Received confirmation directionInvocation, buttonPressed: %s", v276, 0xCu);
                        sub_5BB0(v277);
                      }

                      v170 = *(v1 + 440);
                      v173 = *(v1 + 360);
                      v171 = *(v1 + 368);
                      v172 = *(v1 + 352);
                      v174 = *(v1 + 248);
                      v175 = *(v1 + 208);
                      v281 = &enum case for ConfirmationResponse.rejected(_:);
                      if (!v286)
                      {
                        v281 = &enum case for ConfirmationResponse.confirmed(_:);
                      }

                      (*(*(v1 + 360) + 104))(*(v1 + 368), *v281, *(v1 + 352));
                      goto LABEL_84;
                    }

LABEL_136:
                    v273 = sub_1261BC();

                    if (v273)
                    {
                      goto LABEL_137;
                    }
                  }
                }

LABEL_115:
                v282(*(v1 + 224), *(v1 + 248), *(v1 + 208));
                v242 = sub_125AAC();
                v243 = sub_125DEC();
                if (os_log_type_enabled(v242, v243))
                {
                  v245 = *(v1 + 224);
                  v244 = *(v1 + 232);
                  v246 = *(v289 + 208);
                  v247 = swift_slowAlloc();
                  v248 = swift_slowAlloc();
                  v292[0] = v248;
                  *v247 = 136315138;
                  v282(v244, v245, v246);
                  v249 = sub_125BAC();
                  v251 = v250;
                  v252 = v245;
                  v253 = v287;
                  v287(v252, v246);
                  v254 = sub_8530(v249, v251, v292);
                  v1 = v289;

                  *(v247 + 4) = v254;
                  _os_log_impl(&dword_0, v242, v243, "Received unsupported directInvocation for timer confirmation: %s", v247, 0xCu);
                  sub_5BB0(v248);
                }

                else
                {
                  v255 = *(v1 + 224);
                  v256 = *(v1 + 208);

                  v253 = v287;
                  v287(v255, v256);
                }

                v257 = *(v1 + 248);
                v258 = *(v1 + 208);
                *(v1 + 529) = 0;
                sub_5AE8(&unk_15F1A0, &unk_126ED0);
                sub_84CC();
                swift_allocError();
                sub_1251BC();
                swift_willThrow();

                v253(v257, v258);
                goto LABEL_22;
              }
            }

            else
            {

              v5 = v83;
            }

            v1 = v289;
            goto LABEL_115;
          }

          if (v97 == 1)
          {
            LODWORD(v286) = 1;
            goto LABEL_123;
          }
        }
      }
    }

    else
    {
    }

    v1 = v289;
    v5 = v83;
    goto LABEL_115;
  }

  if (v6 == enum case for Parse.NLv4IntentOnly(_:))
  {
    v58 = *(v1 + 496);
    v59 = *(v1 + 432);
    v61 = *(v1 + 352);
    v60 = *(v1 + 360);
    (*(*(v1 + 480) + 96))(v58, *(v1 + 472));
    v62 = *v58;
    v63 = *(v60 + 56);
    v63(v59, 1, 1, v61);
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      if (qword_15EF30 != -1)
      {
        swift_once();
      }

      v64 = sub_125ABC();
      sub_5B30(v64, qword_1620E0);
      swift_unknownObjectRetain();
      v65 = sub_125AAC();
      v66 = sub_125DFC();
      swift_unknownObjectRelease();
      v67 = os_log_type_enabled(v65, v66);
      v68 = *(v1 + 432);
      if (v67)
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v292[0] = v70;
        *v69 = 136315138;
        *(v1 + 120) = v62;
        swift_unknownObjectRetain();
        sub_5AE8(&unk_160610, &unk_129CC0);
        v71 = sub_125BAC();
        v73 = v63;
        v74 = v5;
        v75 = sub_8530(v71, v72, v292);

        *(v69 + 4) = v75;
        v5 = v74;
        v63 = v73;
        _os_log_impl(&dword_0, v65, v66, "Received UserDialogAct - %s", v69, 0xCu);
        sub_5BB0(v70);
      }

      else
      {
      }

      sub_5CA8(v68, &unk_161EC0, &unk_126E20);
      v191 = *(v1 + 432);
      v192 = *(v1 + 352);
      (*(*(v1 + 360) + 104))(v191, enum case for ConfirmationResponse.confirmed(_:), v192);
      v63(v191, 0, 1, v192);
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      if (qword_15EF30 != -1)
      {
        swift_once();
      }

      v193 = sub_125ABC();
      sub_5B30(v193, qword_1620E0);
      v194 = sub_125AAC();
      v195 = sub_125DFC();
      if (os_log_type_enabled(v194, v195))
      {
        v196 = swift_slowAlloc();
        *v196 = 0;
        _os_log_impl(&dword_0, v194, v195, "Received UserDialogAct - UserRejected", v196, 2u);
      }

      v197 = *(v1 + 432);
      v198 = *(v1 + 352);
      v199 = *(v1 + 360);

      sub_5CA8(v197, &unk_161EC0, &unk_126E20);
      (*(v199 + 104))(v197, enum case for ConfirmationResponse.rejected(_:), v198);
      v63(v197, 0, 1, v198);
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      if (qword_15EF30 != -1)
      {
        swift_once();
      }

      v200 = sub_125ABC();
      sub_5B30(v200, qword_1620E0);
      v201 = sub_125AAC();
      v202 = sub_125DFC();
      if (os_log_type_enabled(v201, v202))
      {
        v203 = swift_slowAlloc();
        *v203 = 0;
        _os_log_impl(&dword_0, v201, v202, "Received UserDialogAct - UserCancelled", v203, 2u);
      }

      v204 = *(v1 + 432);
      v205 = *(v1 + 352);
      v206 = *(v1 + 360);

      sub_5CA8(v204, &unk_161EC0, &unk_126E20);
      (*(v206 + 104))(v204, enum case for ConfirmationResponse.rejected(_:), v205);
      v63(v204, 0, 1, v205);
    }

    v207 = *(v1 + 424);
    v208 = *(v1 + 352);
    v209 = *(v1 + 360);
    sub_E344(*(v1 + 432), v207, &unk_161EC0, &unk_126E20);
    if ((*(v209 + 48))(v207, 1, v208) == 1)
    {
      sub_5CA8(*(v1 + 424), &unk_161EC0, &unk_126E20);
      if (qword_15EF30 != -1)
      {
        swift_once();
      }

      v210 = sub_125ABC();
      sub_5B30(v210, qword_1620E0);
      swift_unknownObjectRetain();
      v211 = sub_125AAC();
      v212 = sub_125DEC();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v211, v212))
      {
        v213 = swift_slowAlloc();
        v214 = swift_slowAlloc();
        v292[0] = v214;
        *v213 = 136315138;
        *(v1 + 112) = v62;
        swift_unknownObjectRetain();
        sub_5AE8(&unk_160610, &unk_129CC0);
        v215 = sub_125BAC();
        v217 = v1;
        v218 = sub_8530(v215, v216, v292);

        *(v213 + 4) = v218;
        v1 = v217;
        _os_log_impl(&dword_0, v211, v212, "Received unsupported userDialogAct for confirmation: %s", v213, 0xCu);
        sub_5BB0(v214);
      }

      v219 = *(v1 + 432);
      *(v1 + 531) = 0;
      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_84CC();
      swift_allocError();
      sub_1251BC();
      swift_willThrow();

      swift_unknownObjectRelease();
      sub_5CA8(v219, &unk_161EC0, &unk_126E20);
    }

    else
    {
      v220 = *(v1 + 440);
      v291 = *(v1 + 432);
      v221 = *(v1 + 424);
      v222 = *(v1 + 392);
      v223 = v63;
      v224 = v1;
      v225 = *(v1 + 360);
      v226 = *(v224 + 352);
      (*(v225 + 32))(v222, v221, v226);
      (*(v225 + 16))(v220, v222, v226);
      v223(v220, 0, 1, v226);
      sub_1256CC();
      sub_1239CC();
      swift_unknownObjectRelease();
      (*(v225 + 8))(v222, v226);
      v1 = v224;
      sub_5CA8(v291, &unk_161EC0, &unk_126E20);
    }
  }

  else if (v6 == enum case for Parse.uso(_:))
  {
    v98 = *(v1 + 496);
    v99 = *(v1 + 472);
    v100 = *(v1 + 480);
    v101 = *(v1 + 416);
    v102 = *(v1 + 360);
    v286 = v5;
    v288 = *(v1 + 352);
    v103 = *(v1 + 336);
    v104 = *(v1 + 344);
    v106 = *(v1 + 320);
    v105 = *(v1 + 328);
    v107 = v1;
    v110 = v1 + 304;
    v109 = *(v1 + 304);
    v108 = *(v110 + 8);
    v5 = *(v107 + 264);
    (*(v100 + 96))(v98, v99);
    (*(v103 + 32))(v104, v98, v105);
    sub_123D5C();
    v111 = sub_123D9C();
    (*(v108 + 8))(v106, v109);
    v112 = v288;
    v287 = (v102 + 56);
    v284 = *(v102 + 56);
    v284(v101, 1, 1, v112);
    v113 = 0;
    v114 = *(v111 + 16);
    v1 = v5 + 8;
    while (v114 != v113)
    {
      if (v113 >= *(v111 + 16))
      {
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

      v115 = *(v289 + 296);
      v116 = *(v289 + 256);
      (*(v5 + 16))(v115, v111 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v113++, v116);
      v117 = sub_123DDC();
      (*(v5 + 8))(v115, v116);
      if (v117)
      {
        if (qword_15EF30 != -1)
        {
          swift_once();
        }

        v118 = sub_125ABC();
        sub_5B30(v118, qword_1620E0);
        v119 = sub_125AAC();
        v120 = sub_125DFC();
        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          *v121 = 0;
          _os_log_impl(&dword_0, v119, v120, "USO parse userDialogActs contains hasAccepted; response is .confirmed.)", v121, 2u);
        }

        v122 = *(v289 + 416);
        v124 = *(v289 + 352);
        v123 = *(v289 + 360);

        sub_5CA8(v122, &unk_161EC0, &unk_126E20);
        (*(v123 + 104))(v122, enum case for ConfirmationResponse.confirmed(_:), v124);
        v284(v122, 0, 1, v124);
        break;
      }
    }

    v125 = 0;
    while (v114 != v125)
    {
      if (v125 >= *(v111 + 16))
      {
        goto LABEL_133;
      }

      v126 = *(v289 + 288);
      v127 = *(v289 + 256);
      (*(v5 + 16))(v126, v111 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v125++, v127);
      v128 = sub_123E2C();
      (*(v5 + 8))(v126, v127);
      if (v128)
      {
        if (qword_15EF30 != -1)
        {
          swift_once();
        }

        v129 = sub_125ABC();
        sub_5B30(v129, qword_1620E0);
        v130 = sub_125AAC();
        v131 = sub_125DFC();
        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          *v132 = 0;
          _os_log_impl(&dword_0, v130, v131, "USO parse userDialogActs contains hasWantedToProceed; response is .confirmed (unexpected!)", v132, 2u);
        }

        v133 = *(v289 + 416);
        v135 = *(v289 + 352);
        v134 = *(v289 + 360);

        sub_5CA8(v133, &unk_161EC0, &unk_126E20);
        (*(v134 + 104))(v133, enum case for ConfirmationResponse.confirmed(_:), v135);
        v284(v133, 0, 1, v135);
        break;
      }
    }

    v136 = 0;
    while (v114 != v136)
    {
      if (v136 >= *(v111 + 16))
      {
        goto LABEL_134;
      }

      v137 = *(v289 + 280);
      v138 = *(v289 + 256);
      (*(v5 + 16))(v137, v111 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v136++, v138);
      v139 = sub_123DEC();
      (*(v5 + 8))(v137, v138);
      if (v139)
      {
        if (qword_15EF30 != -1)
        {
          swift_once();
        }

        v140 = sub_125ABC();
        sub_5B30(v140, qword_1620E0);
        v141 = sub_125AAC();
        v142 = sub_125DFC();
        if (os_log_type_enabled(v141, v142))
        {
          v143 = swift_slowAlloc();
          *v143 = 0;
          _os_log_impl(&dword_0, v141, v142, "USO parse userDialogActs contains hasRejected; response is .rejected.", v143, 2u);
        }

        v144 = *(v289 + 416);
        v146 = *(v289 + 352);
        v145 = *(v289 + 360);

        sub_5CA8(v144, &unk_161EC0, &unk_126E20);
        (*(v145 + 104))(v144, enum case for ConfirmationResponse.rejected(_:), v146);
        v284(v144, 0, 1, v146);
        break;
      }
    }

    v147 = 0;
    while (v114 != v147)
    {
      if (v147 >= *(v111 + 16))
      {
        goto LABEL_135;
      }

      v148 = *(v289 + 272);
      v149 = *(v289 + 256);
      (*(v5 + 16))(v148, v111 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v147++, v149);
      v150 = sub_123DFC();
      (*(v5 + 8))(v148, v149);
      if (v150)
      {
        if (qword_15EF30 != -1)
        {
          swift_once();
        }

        v151 = sub_125ABC();
        sub_5B30(v151, qword_1620E0);
        v152 = sub_125AAC();
        v153 = sub_125DFC();
        if (os_log_type_enabled(v152, v153))
        {
          v154 = swift_slowAlloc();
          *v154 = 0;
          _os_log_impl(&dword_0, v152, v153, "USO parse userDialogActs contains hasCancelled; response is .rejected.", v154, 2u);
        }

        v155 = *(v289 + 416);
        v157 = *(v289 + 352);
        v156 = *(v289 + 360);

        sub_5CA8(v155, &unk_161EC0, &unk_126E20);
        (*(v156 + 104))(v155, enum case for ConfirmationResponse.rejected(_:), v157);
        v284(v155, 0, 1, v157);
        break;
      }
    }

    v1 = v289;
    v158 = *(v289 + 408);
    v160 = *(v289 + 352);
    v159 = *(v289 + 360);
    sub_E344(*(v289 + 416), v158, &unk_161EC0, &unk_126E20);
    if ((*(v159 + 48))(v158, 1, v160) == 1)
    {
      sub_5CA8(*(v289 + 408), &unk_161EC0, &unk_126E20);
      if (qword_15EF30 != -1)
      {
        swift_once();
      }

      v161 = sub_125ABC();
      sub_5B30(v161, qword_1620E0);

      v162 = sub_125AAC();
      v163 = sub_125DEC();

      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        v292[0] = v165;
        *v164 = 136315138;
        v166 = sub_125C7C();
        v168 = v167;

        v169 = sub_8530(v166, v168, v292);
        v1 = v289;

        *(v164 + 4) = v169;
        _os_log_impl(&dword_0, v162, v163, "Received unsupported userDialogActs for confirmation: %s", v164, 0xCu);
        sub_5BB0(v165);
      }

      else
      {
      }

      v259 = *(v1 + 416);
      v261 = *(v1 + 336);
      v260 = *(v1 + 344);
      v262 = *(v1 + 328);
      *(v1 + 530) = 0;
      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_84CC();
      swift_allocError();
      sub_1251BC();
      swift_willThrow();

      sub_5CA8(v259, &unk_161EC0, &unk_126E20);
      (*(v261 + 8))(v260, v262);
    }

    else
    {
      v233 = *(v289 + 440);
      v235 = *(v289 + 408);
      v234 = *(v289 + 416);
      v236 = *(v289 + 384);
      v237 = *(v289 + 360);
      v238 = *(v289 + 352);
      v283 = *(v289 + 344);
      v239 = *(v289 + 336);
      v240 = *(v289 + 328);

      (*(v237 + 32))(v236, v235, v238);
      (*(v237 + 16))(v233, v236, v238);
      v284(v233, 0, 1, v238);
      sub_1256CC();
      sub_1239CC();
      v241 = v236;
      v1 = v289;
      (*(v237 + 8))(v241, v238);
      sub_5CA8(v234, &unk_161EC0, &unk_126E20);
      (*(v239 + 8))(v283, v240);
    }
  }

  else
  {
    if (qword_15EF30 != -1)
    {
      swift_once();
    }

    v177 = *(v1 + 160);
    v176 = *(v1 + 168);
    v178 = *(v1 + 152);
    v179 = *(v1 + 136);
    v180 = sub_125ABC();
    sub_5B30(v180, qword_1620E0);
    (*(v177 + 16))(v176, v179, v178);
    v181 = sub_125AAC();
    v182 = sub_125DEC();
    if (os_log_type_enabled(v181, v182))
    {
      v184 = *(v1 + 160);
      v183 = *(v1 + 168);
      v290 = *(v1 + 152);
      v185 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      v292[0] = v186;
      *v185 = 136315138;
      sub_123CCC();
      v187 = sub_125BAC();
      v189 = v188;
      (*(v184 + 8))(v183, v290);
      v190 = sub_8530(v187, v189, v292);

      *(v185 + 4) = v190;
      _os_log_impl(&dword_0, v181, v182, "Received not an supported input: %s", v185, 0xCu);
      sub_5BB0(v186);
    }

    else
    {
      v228 = *(v1 + 160);
      v227 = *(v1 + 168);
      v229 = *(v1 + 152);

      (*(v228 + 8))(v227, v229);
    }

    v230 = *(v1 + 496);
    v231 = *(v1 + 472);
    v232 = *(v1 + 480);
    *(v1 + 528) = 0;
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    sub_1251BC();
    swift_willThrow();

    (*(v232 + 8))(v230, v231);
  }

LABEL_22:

  v56 = *(v1 + 8);

  return v56();
}
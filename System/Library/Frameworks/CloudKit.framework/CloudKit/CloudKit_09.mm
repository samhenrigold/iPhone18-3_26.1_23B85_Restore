id sub_1884C3BA4()
{
  type metadata accessor for CKSymptomDiagnosticsReporter();
  v1 = swift_allocObject();
  *&v0[OBJC_IVAR___CKSymptomDiagnosticsReporter_wrapped] = sub_1883F9324(v1);
  v3.receiver = v0;
  v3.super_class = CKSymptomDiagnosticsReporter;
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1884C3C20(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CKSymptomDiagnosticsReporter();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *&v2[OBJC_IVAR___CKSymptomDiagnosticsReporter_wrapped] = v5;
  v7.receiver = v2;
  v7.super_class = CKSymptomDiagnosticsReporter;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1884C3CF0(uint64_t a1)
{
  v1 = (*(a1 + 16))();

  return v1;
}

uint64_t sub_1884C3D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[11] = a10;
  v11[12] = v10;
  v11[9] = a8;
  v11[10] = a9;
  v11[7] = a6;
  v11[8] = a7;
  v11[5] = a4;
  v11[6] = a5;
  v11[3] = a2;
  v11[4] = a3;
  v11[2] = a1;
  sub_1883F7FD8();
  return sub_1883FDB04(v12, v13, v14);
}

uint64_t sub_1884C3D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1883F7120();
  v11 = swift_task_alloc();
  v10[13] = v11;
  *v11 = v10;
  v11[1] = sub_1884C3E20;
  v12 = v10[8];
  v13 = v10[9];
  v14 = v10[6];
  v15 = v10[7];
  v16 = v10[4];
  v17 = v10[5];
  v19 = v10[2];
  v18 = v10[3];

  return CKSymptomDiagnosticsReporter.report(type:subType:reason:context:processName:)(v19, v18, v16, v17, v14, v15, v12, v13, a9, a10);
}

uint64_t sub_1884C3E20()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  sub_1883F816C();

  return v3();
}

uint64_t sub_1884C3FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock, void *a7, int a8, uint64_t a9, uint64_t a10)
{
  v10[2] = a7;
  v10[3] = _Block_copy(aBlock);
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v10[4] = v15;
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v10[5] = v17;
  if (a3)
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v27 = 0;
    v20 = 0;
  }

  v10[6] = v20;
  if (a4)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v22;
  }

  else
  {
    v21 = 0;
  }

  v10[7] = a4;
  if (a5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v10[8] = v24;
  a7;
  v25 = swift_task_alloc();
  v10[9] = v25;
  *v25 = v10;
  v25[1] = sub_1884C4154;

  return sub_1884C3D24(v29, v16, v28, v18, v27, v20, v21, a4, a9, a10);
}

uint64_t sub_1884C4154()
{
  sub_1883F78EC();
  v3 = v2;
  sub_1883F78D4();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *(v5 + 16);
  v8 = *v1;
  sub_1883F7110();
  *v9 = v8;

  if (v0)
  {
    if (v6)
    {
      v10 = *(v3 + 24);
      v11 = _convertErrorToNSError(_:)();

      (v10)[2](v10, v11);
      _Block_release(v10);
    }

    else
    {
    }
  }

  else if (v6)
  {
    v12 = *(v3 + 24);
    v12[2](v12, 0);
    _Block_release(v12);
  }

  sub_1883F816C();

  return v13();
}

uint64_t sub_1884C4390(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_188442BE4;

  return v6();
}

uint64_t sub_1884C4478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  sub_1884C2128(a3, v22 - v10);
  v12 = type metadata accessor for TaskPriority();
  if (sub_1883F971C(v11, 1, v12) == 1)
  {
    sub_18845B1B0(v11, &qword_1EA90E6A0, &qword_1886F7030);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = String.utf8CString.getter() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_18845B1B0(a3, &qword_1EA90E6A0, &qword_1886F7030);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_18845B1B0(a3, &qword_1EA90E6A0, &qword_1886F7030);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1884C4744(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18840FF64;

  return v6(a1);
}

id sub_1884C483C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v17 = MEMORY[0x18CFD5010](a1);

  v18 = MEMORY[0x18CFD5010](a3, a4);
  v19 = MEMORY[0x18CFD5010](a5, a6);
  v20 = MEMORY[0x18CFD5010](a7, a8);
  v21 = MEMORY[0x18CFD5010](a9, a10);

  v22 = [a11 signatureWithDomain:v17 type:v18 subType:v19 detectedProcess:v20 triggerThresholdValues:v21];

  return v22;
}

unint64_t type metadata accessor for CKSymptomDiagnosticsReporter()
{
  result = qword_1EA90E380;
  if (!qword_1EA90E380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA90E380);
  }

  return result;
}

uint64_t sub_1884C49F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_188442BE4;
  v2 = sub_1883FF1A0();

  return v3(v2);
}

uint64_t sub_1884C4AC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_188442BE4;
  v2 = sub_1883FF1A0();

  return v3(v2);
}

uint64_t sub_1884C4B7C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1884C4BBC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_1883F7E38(v6);
  *v7 = v8;
  v7[1] = sub_1884061E0;

  return sub_1883FADD0(a1, v3, v4, v5);
}

uint64_t sub_1884C4C80()
{
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883F78B4(v1);

  return v4(v3);
}

uint64_t sub_1884C4D18()
{
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883F78B4(v1);

  return v4(v3);
}

uint64_t sub_1884C4DB8(uint64_t a1)
{
  sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);

  return sub_1884C3648(a1);
}

uint64_t sub_1884C4E34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1884C4E4C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = [a7 snapshotWithSignature:isa delay:v11 events:v12 payload:v13 actions:a6 reply:a1];

  return v14;
}

uint64_t sub_1884C4F80(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1884C4FC4()
{
  sub_1883F7120();
  sub_1884CDDA8();
  v0 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1884C5020()
{
  sub_1883F7120();

  sub_1883F816C();

  return v0();
}

uint64_t sub_1884C5098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  sub_188404C04();
  a17 = v19;
  a18 = v20;
  sub_1883F653C();
  a16 = v18;
  sub_188402EBC(v18[5] + 16);
  Strong = swift_weakLoadStrong();
  v18[6] = Strong;
  if (Strong)
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v22 = type metadata accessor for Logger();
    sub_1883FDE5C(v22, qword_1EA90C9F8);
    sub_1883FEFE0();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = sub_1883F9984();
      v26 = sub_1883FE540();
      a9 = v26;
      *v25 = 136315138;

      v27 = sub_1883FE43C();
      v29 = v28;

      v30 = sub_1883FE340(v27, v29, &a9);

      *(v25 + 4) = v30;
      sub_1883FDDA4();
      _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
      sub_1883FE944(v26);
      sub_1883F7B60();
      sub_1883FD784();
    }

    v36 = swift_task_alloc();
    v18[7] = v36;
    *v36 = v18;
    v36[1] = sub_1884C5274;
    sub_1883F6548();

    return sub_188435D04();
  }

  else
  {
    sub_1883F816C();
    sub_1883F6548();

    return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
  }
}

uint64_t sub_1884C5274()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1884C5358(uint64_t a1, uint64_t a2)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1884C5378, 0, 0);
}

uint64_t sub_1884C5378()
{
  sub_1883FC738();
  v32 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (!Strong)
  {
LABEL_22:
    sub_1883F816C();
    sub_1883F9968();

    __asm { BRAA            X1, X16 }
  }

  v2 = Strong;
  Notification.object.getter();
  if (!*(v0 + 80))
  {

    v28 = v0 + 56;
LABEL_18:
    sub_1883F9FEC(v28, &qword_1EA90DD10, &qword_1886F8770);
    goto LABEL_22;
  }

  sub_1883F4C5C(0, &unk_1EA90E450, off_1E70BA4C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:

    goto LABEL_22;
  }

  v3 = *(v0 + 160);
  *(v0 + 200) = v3;
  v4 = [v3 resolvedConfiguration];
  v5 = [v4 container];

  if (!v5 || (v6 = [v5 containerID], *(v0 + 208) = v6, v5, !v6))
  {
LABEL_20:

    goto LABEL_21;
  }

  sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
  v7 = [*(v2 + 144) containerID];
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {

    goto LABEL_20;
  }

  v9 = Notification.userInfo.getter();
  if (!v9)
  {

    *(v0 + 104) = 0u;
    *(v0 + 88) = 0u;
LABEL_27:
    v28 = v0 + 88;
    goto LABEL_18;
  }

  v10 = v9;
  *(v0 + 144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 152) = v11;
  AnyHashable.init<A>(_:)();
  sub_18847E6E4(v10, (v0 + 88));

  sub_1884889C4(v0 + 16);
  if (!*(v0 + 112))
  {

    goto LABEL_27;
  }

  sub_1883F4C5C(0, &unk_1EA90E460, off_1E70BA758);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_21;
  }

  v12 = *(v0 + 168);
  *(v0 + 216) = v12;
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480(&qword_1EA90C9F0);
  }

  v13 = type metadata accessor for Logger();
  sub_1883FDE5C(v13, qword_1EA90C9F8);
  sub_1883FEFE0();

  v14 = v12;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = sub_1883FE540();
    v31 = v19;
    *v17 = 136315394;

    v20 = sub_1883FE43C();
    v22 = v21;

    v23 = sub_1883FE340(v20, v22, &v31);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v14;
    *v18 = v14;
    v24 = v14;
    _os_log_impl(&dword_1883EA000, v15, v16, "%s share accepted: %@", v17, 0x16u);
    sub_1883F9FEC(v18, &qword_1EA90DC70, &unk_1886FA190);
    sub_1883F7B60();
    sub_1883FE944(v19);
    sub_1883F7B60();
    sub_1883FD784();
  }

  v25 = swift_task_alloc();
  *(v0 + 224) = v25;
  *v25 = v0;
  v25[1] = sub_1884C5804;
  sub_1883F9968();

  return sub_1884E523C();
}

uint64_t sub_1884C5804()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1884C58E8()
{
  sub_1883F78E0();
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);

  sub_1883F816C();

  return v3();
}

uint64_t sub_1884C595C(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v6 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if ((a3 & 1) == 0)
    {
      v11 = a2;
      v12 = sub_1884C5C7C();
      if (v12 == [*(v10 + 136) scope])
      {
        if (qword_1EA90C9F0 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_1883FDE5C(v13, qword_1EA90C9F8);
        sub_18844264C();

        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();

        sub_18844CAFC(a2);
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v28 = v27;
          *v16 = 136315394;

          v18 = sub_1883FE43C();
          v20 = v19;

          v21 = sub_1883FE340(v18, v20, &v28);

          *(v16 + 4) = v21;
          *(v16 + 12) = 2112;
          *(v16 + 14) = v11;
          *v17 = a2;
          v22 = v11;
          _os_log_impl(&dword_1883EA000, v14, v15, "%s share did save: %@", v16, 0x16u);
          sub_1883F9FEC(v17, &qword_1EA90DC70, &unk_1886FA190);
          MEMORY[0x18CFD7E80](v17, -1, -1);
          v23 = v27;
          sub_1883FE944(v27);
          MEMORY[0x18CFD7E80](v23, -1, -1);
          MEMORY[0x18CFD7E80](v16, -1, -1);
        }

        v24 = type metadata accessor for TaskPriority();
        sub_1883F90F4(v8, 1, 1, v24);
        v25 = swift_allocObject();
        v25[2] = 0;
        v25[3] = 0;
        v25[4] = v10;
        v25[5] = v11;

        sub_188453610();
      }

      else
      {
        sub_18844CAFC(a2);
      }
    }
  }

  return result;
}

uint64_t sub_1884C5C7C()
{
  v1 = [v0 recordID];
  v2 = [v1 zoneID];

  v3 = [v2 databaseScope];
  if (qword_1EA90CB18 != -1)
  {
    swift_once();
  }

  if (v3 == qword_1EA90D4A0)
  {
    v4 = [v0 owner];
    v5 = [v4 isCurrentUser];

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    v7 = [v2 databaseScope];

    return v7;
  }
}

uint64_t sub_1884C5D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_188442BE4;

  return sub_1884E523C();
}

uint64_t sub_1884C5E24(char a1, char a2, uint64_t a3)
{
  v5 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = type metadata accessor for TaskPriority();
    sub_1883F90F4(v7, 1, 1, v10);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = v9;
    *(v11 + 40) = a1 & 1;
    *(v11 + 41) = a2 & 1;
    sub_188453610();
  }

  return result;
}

uint64_t sub_1884C5F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1884061E0;

  return sub_188410048(a5, a6);
}

uint64_t sub_1884C5FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1884C608C, a4, 0);
}

uint64_t sub_1884C608C()
{
  sub_1883F7120();
  sub_18841FD50();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1884C6120;

  return sub_1884204A8(v1);
}

uint64_t sub_1884C6120()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1884C6204()
{
  sub_1883F653C();
  v22 = v0;
  if ((sub_188403050() & 1) == 0)
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v12 = *(v0 + 16);
    v13 = type metadata accessor for Logger();
    sub_1883FDE5C(v13, qword_1EA90C9F8);

    v14 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_1883FF744();
    if (sub_1883F9084())
    {
      sub_1883F9984();
      v21 = sub_1883F8C00();
      *v12 = 136315138;
      v15 = sub_1883FE43C();
      sub_1883FE340(v15, v16, &v21);
      sub_1883FE2FC();
      *(v12 + 4) = v1;
      sub_1883F7A44(&dword_1883EA000, v17, v18, "%s automatic syncing is disabled.");
      sub_1883F8EAC();
      sub_1883F82B8();
    }

    sub_1883F816C();
    sub_1883F614C();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480(&qword_1EA90C9F0);
  }

  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  sub_1883FDE5C(v3, qword_1EA90C9F8);

  v4 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1883FF744();
  if (sub_1883F9084())
  {
    sub_1883F9984();
    v21 = sub_1883F8C00();
    *v2 = 136315138;
    v5 = sub_1883FE43C();
    sub_1883FE340(v5, v6, &v21);
    sub_1883FE2FC();
    *(v2 + 4) = v1;
    sub_1883F7A44(&dword_1883EA000, v7, v8, "%s automatic syncing is enabled. Preparing and scheduling initial sync.");
    sub_1883F8EAC();
    sub_1883F82B8();
  }

  v9 = swift_task_alloc();
  *(v0 + 40) = v9;
  *v9 = v0;
  v9[1] = sub_1884C6440;
  sub_1883F614C();

  return sub_18840307C();
}

uint64_t sub_1884C6440()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1884C6524()
{
  sub_1883F7120();
  type metadata accessor for Date();
  sub_18844334C();
  sub_1883F90F4(v1, v2, v3, v4);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1884C65D0;

  return sub_18840EDE4();
}

uint64_t sub_1884C65D0()
{
  sub_1883F78E0();
  v1 = *v0;
  v2 = *v0;
  sub_1883F7110();
  *v3 = v2;
  v4 = *(v1 + 24);
  v5 = *v0;
  *v3 = *v0;

  sub_1883F9FEC(v4, &unk_1EA90D7B0, &dword_1886F8780);
  v6 = swift_task_alloc();
  *(v2 + 56) = v6;
  *v6 = v5;
  v6[1] = sub_1884C6730;

  return sub_1884E5908();
}

uint64_t sub_1884C6730()
{
  sub_1883F7120();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1884C6834()
{
  sub_18841AE3C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1884C6868()
{
  os_unfair_lock_lock((v0 + 224));
  v1 = *(v0 + 232);
  os_unfair_lock_unlock((v0 + 224));
  return v1;
}

uint64_t sub_1884C689C()
{
  sub_1883F78E0();
  v3 = v2;
  *(v1 + 152) = v4;
  *(v1 + 160) = v0;
  *(v1 + 144) = v5;
  v6 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8AE4(v6);
  *(v1 + 168) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v1 + 176) = v7;
  v8 = *(v7 - 8);
  *(v1 + 184) = v8;
  *(v1 + 192) = *(v8 + 64);
  *(v1 + 200) = swift_task_alloc();
  *(v1 + 208) = swift_task_alloc();
  *(v1 + 264) = *v3;
  *(v1 + 216) = *(v3 + 8);
  *(v1 + 232) = *(v3 + 24);
  v9 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1884C69C0(uint64_t a1)
{
  v2 = v1[29];
  v34 = *(v1 + 264);
  v3 = v1[26];
  v4 = v1[25];
  v6 = v1[22];
  v5 = v1[23];
  v7 = v1[20];
  v32 = v1[19];
  v33 = v1[27];
  v30 = v1[21];
  v31 = v1[18];
  v35 = v1[28];
  v36 = v3;
  UUID.init()();
  sub_1883F7B88();
  v8 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v4, v3, v6);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  (*(v5 + 32))(v10 + v9, v4, v6);
  v1[6] = sub_1884CD334;
  v1[7] = v10;
  v1[2] = MEMORY[0x1E69E9820];
  v1[3] = 1107296256;
  v1[4] = sub_1884C4F80;
  v1[5] = &unk_1EFA2BE20;
  v11 = _Block_copy(v1 + 2);

  [v2 setCancellationHandler_];
  _Block_release(v11);
  type metadata accessor for TaskPriority();
  sub_18844334C();
  sub_1883F90F4(v12, v13, v14, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v31;
  *(v16 + 40) = v32;
  *(v16 + 48) = v34;
  *(v16 + 56) = v33;
  *(v16 + 64) = v35;
  *(v16 + 72) = v2;

  v17 = v33;
  v18 = v35;
  v19 = v2;
  v20 = sub_1884101D8();
  v23 = sub_1884E0724(v20, v21, v30, v22, v16);
  v1[30] = v23;
  sub_18840C690(v7 + 256, (v1 + 8));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v7 + 256);
  sub_1884AF4E0(v23, v36, isUniquelyReferenced_nonNull_native);
  *(v7 + 256) = v37;
  swift_endAccess();
  v25 = swift_task_alloc();
  v1[31] = v25;
  v26 = sub_1883F4C5C(0, &qword_1EA90C690, off_1E70B9FD0);
  v27 = sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  *v25 = v1;
  v25[1] = sub_1884C6CDC;
  v28 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v1 + 17, v23, v26, v27, v28);
}

uint64_t sub_1884C6CDC()
{
  sub_1883F78E0();
  sub_18840F6A8();
  sub_1883F7B78();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 256) = v0;

  sub_18840FB28();
  sub_1883F8004();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884C6DF0()
{
  sub_1883F653C();
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[17];
  sub_18840C690(v0[20] + 256, (v0 + 14));
  sub_1884DE234(v1);
  swift_endAccess();

  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1884C6EDC()
{
  sub_1883FC738();
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[23];
  sub_18840C690(v0[20] + 256, (v0 + 11));
  sub_1884DE234(v1);
  swift_endAccess();

  swift_willThrow();

  (*(v3 + 8))(v1, v2);

  sub_1883F816C();

  return v4();
}

uint64_t sub_1884C6FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  sub_1883F90F4(v9, 1, 1, v10);
  (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v11 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = a1;
  (*(v5 + 32))(&v12[v11], &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_1884538D0();
}

uint64_t sub_1884C7188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884C71AC, 0, 0);
}

uint64_t sub_1884C71AC()
{
  sub_1883F7120();
  sub_188402EBC(*(v0 + 72) + 16);
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1884C725C, Strong, 0);
  }

  else
  {
    **(v0 + 64) = 1;
    sub_1883F816C();

    return v2();
  }
}

uint64_t sub_1884C725C()
{
  sub_1883F7120();
  v1 = *(v0 + 88);
  swift_beginAccess();
  *(v0 + 96) = *(v1 + 256);

  v2 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1884C72DC()
{
  sub_1883F7120();
  sub_18847E748(*(v1 + 80), *(v1 + 96));
  sub_1883FEFE0();

  if (v0)
  {
    v2 = sub_1883F4C5C(0, &qword_1EA90C690, off_1E70B9FD0);
    v3 = sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
    MEMORY[0x18CFD54D0](v0, v2, v3, MEMORY[0x1E69E7288]);
  }

  **(v1 + 64) = v0 == 0;
  sub_1883F816C();

  return v4();
}

uint64_t sub_1884C73A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a6;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 40) = v13;
  *(v8 + 48) = a1;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  *(v8 + 56) = v9;
  *v9 = v8;
  v9[1] = sub_1884C74B0;

  return v11(v8 + 16);
}

uint64_t sub_1884C74B0()
{
  sub_1883F78E0();
  v3 = v2;
  sub_1883F78EC();
  v5 = v4;
  sub_1883F7B78();
  *v6 = v5;
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v5 + 64) = v0;

  if (!v0)
  {
    *(v5 + 72) = v3;
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1884C760C()
{
  sub_1883FC738();
  v1 = *(v0 + 64);
  sub_188402EBC(v1 + 248);
  v2 = *(v1 + 248);
  sub_188405F14();
  v5 = v4 & v3;
  v7 = (63 - v6) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CA8];
  v10 = MEMORY[0x1E69E7288];
  if (v5)
  {
    while (1)
    {
      v11 = v8;
LABEL_7:
      v12 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v13 = *(*(v2 + 56) + ((v11 << 9) | (8 * v12)));

      v14 = sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
      MEMORY[0x18CFD54D0](v13, v9 + 8, v14, v10);

      if (!v5)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v11 >= v7)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_7;
    }
  }

  v15 = *(v0 + 64);

  swift_beginAccess();
  v16 = *(v15 + 256);
  sub_188405F14();
  v19 = v18 & v17;
  v21 = (63 - v20) >> 6;

  v22 = 0;
  v23 = MEMORY[0x1E69E7288];
  if (!v19)
  {
    goto LABEL_11;
  }

  do
  {
    v24 = v22;
LABEL_15:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v26 = *(*(v16 + 56) + ((v24 << 9) | (8 * v25)));
    v27 = sub_1883F4C5C(0, &qword_1EA90C690, off_1E70B9FD0);

    v28 = sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
    MEMORY[0x18CFD54D0](v26, v27, v28, v23);
  }

  while (v19);
LABEL_11:
  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      sub_1883F816C();
      sub_1883F9968();

      __asm { BRAA            X1, X16 }
    }

    v19 = *(v16 + 64 + 8 * v24);
    ++v22;
    if (v19)
    {
      v22 = v24;
      goto LABEL_15;
    }
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_1884C7858(char a1)
{
  v3 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v4 = sub_1883F8AE4(v3);
  MEMORY[0x1EEE9AC00](v4);
  v5 = v1 + OBJC_IVAR____TtC8CloudKit10SyncEngine_isAutomaticSyncEnabledMutex;
  os_unfair_lock_lock(v5);
  *(v5 + 4) = a1;
  os_unfair_lock_unlock(v5);
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480(&qword_1EA90C9F0);
  }

  v6 = type metadata accessor for Logger();
  sub_1883FDE5C(v6, qword_1EA90C9F8);
  sub_1883FEFE0();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = sub_1883FE540();
    v20 = v10;
    *v9 = 136315394;
    v11 = sub_1883FE43C();
    v13 = sub_1883FE340(v11, v12, &v20);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1024;
    *(v9 + 14) = a1 & 1;
    _os_log_impl(&dword_1883EA000, v7, v8, "%s setting automaticallySync=%{BOOL}d", v9, 0x12u);
    sub_1883FE944(v10);
    sub_1883F7B60();
    sub_1883F7B60();
  }

  type metadata accessor for TaskPriority();
  sub_18844334C();
  sub_1883F90F4(v14, v15, v16, v17);
  v18 = swift_allocObject();
  sub_188402E3C(v18);
  sub_1884101D8();
  sub_188453610();
}

uint64_t sub_1884C7A80()
{
  sub_1883F7120();
  sub_18841FD50();
  sub_1883F816C();

  return v0();
}

void sub_1884C7AD8(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC8CloudKit10SyncEngine_automaticSyncOptionsMutex);
  os_unfair_lock_lock(v3);
  memcpy(__dst, &v3[2], sizeof(__dst));
  memcpy(a1, &v3[2], 0x60uLL);
  sub_18845457C(__dst, &v4, &unk_1EA90E4D0, &unk_1886FB460);
  os_unfair_lock_unlock(v3);
}

void sub_1884C7B58(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480(&qword_1EA90C9F0);
  }

  v4 = type metadata accessor for Logger();
  sub_1883FDE5C(v4, qword_1EA90C9F8);
  sub_1883FEFE0();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    sub_1883F9984();
    v12[0] = sub_1883F8C00();
    *v2 = 136315138;
    v7 = sub_1883FE43C();
    sub_1883FE340(v7, v8, v12);
    sub_1883FE2FC();
    *(v2 + 4) = v3;
    sub_1884CDD88(&dword_1883EA000, v9, v10, "%s setting automaticSyncOptions");
    sub_1883F8EAC();
    sub_1883F82B8();
  }

  v11 = (v1 + OBJC_IVAR____TtC8CloudKit10SyncEngine_automaticSyncOptionsMutex);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC8CloudKit10SyncEngine_automaticSyncOptionsMutex));
  memcpy(v12, &v11[2], sizeof(v12));
  sub_1883F9FEC(v12, &unk_1EA90E4D0, &unk_1886FB460);
  memcpy(&v11[2], __dst, 0x60uLL);
  os_unfair_lock_unlock(v11);
}

void sub_1884C7CB8(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC8CloudKit10SyncEngine_accountProviderMutex);
  os_unfair_lock_lock(v3);
  sub_18845457C(&v3[2], a1, &qword_1EA90E3D8, &qword_1886FAF80);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1884C7D3C()
{
  sub_1883F7120();
  *(v0 + 40) = *(v0 + 144);
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1884C7DC4()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1884C7EA8()
{
  sub_1883F7120();
  (*(v0[11] + 8))(v0[12], v0[10]);
  sub_188405614();
  sub_1884CCC70(v1, v2, MEMORY[0x1E6969F00]);
  swift_task_alloc();
  sub_1883FF2B8();
  v0[17] = v3;
  *v3 = v4;
  v5 = sub_1884CDC6C(v3);

  return MEMORY[0x1EEE6D8C8](v5);
}

void sub_1884C7F58()
{
  v1 = v0 + OBJC_IVAR____TtC8CloudKit10SyncEngine_notificationObserverTasksMutex;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC8CloudKit10SyncEngine_notificationObserverTasksMutex));
  sub_1884C7FB8((v1 + 8));

  os_unfair_lock_unlock(v1);
}

uint64_t *sub_1884C7FB8(uint64_t *result)
{
  v1 = 0;
  v2 = *result;
  v3 = *(*result + 16);
  v4 = MEMORY[0x1E69E7CA8];
  v5 = MEMORY[0x1E69E73E0];
  v6 = MEMORY[0x1E69E7410];
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v7 = v1 + 1;

    MEMORY[0x18CFD54D0](v8, v4 + 8, v5, v6);

    v1 = v7;
  }

  return result;
}

uint64_t sub_1884C8090()
{
  sub_1883FEB90();
  result = MEMORY[0x18CFD5010](0xD000000000000021);
  qword_1EA919C80 = result;
  return result;
}

uint64_t sub_1884C80C4()
{
  sub_1883FEB90();
  result = MEMORY[0x18CFD5010](0xD000000000000020);
  qword_1EA919C88 = result;
  return result;
}

uint64_t sub_1884C80F8()
{
  sub_1883FEB90();
  result = MEMORY[0x18CFD5010](0xD000000000000026);
  qword_1EA919C90 = result;
  return result;
}

uint64_t sub_1884C812C()
{
  sub_1883FEB90();
  result = MEMORY[0x18CFD5010](0xD00000000000001CLL);
  qword_1EA919C98 = result;
  return result;
}

BOOL sub_1884C8160(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();

    return v4 & 1;
  }

  else
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    v6 = NSObject._rawHashValue(seed:)(*(a2 + 40));
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v10 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v11 = *(*(a2 + 48) + 8 * v8);
      v12 = static NSObject.== infix(_:_:)();

      v6 = v8 + 1;
    }

    while ((v12 & 1) == 0);
    return v10;
  }
}

uint64_t sub_1884C8278@<X0>(uint64_t a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v6 = result;
    swift_unknownObjectRetain();
    sub_18844E6FC(&qword_1EA90E730, &qword_1886FB1D8);
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      return sub_18843E080(v4, a1);
    }

    else
    {
      v5 = 0;
      memset(v4, 0, sizeof(v4));
      sub_1883F9FEC(v4, &qword_1EA90E740, &qword_1886FB170);
      *&v4[0] = 0;
      *(&v4[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      MEMORY[0x18CFD5140](0xD00000000000003CLL, 0x8000000188701DD0);
      swift_getObjectType();
      v6 = v3;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, *&v4[0], *(&v4[0] + 1), "CloudKit/CKSyncEngineDelegate.swift", 35, 2, 237);
      __break(1u);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1884C83D0(void *a1)
{
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  type metadata accessor for CKAsyncSerialQueue();
  swift_allocObject();
  *(v1 + 120) = sub_18841CFB4(0);
  sub_18848CE70(a1, v4);
  sub_18844E6FC(&qword_1EA90E730, &qword_1886FB1D8);
  _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  sub_1883FE944(a1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1884C848C()
{
  sub_1883FB4AC();
  v7 = *(v1 + 64);
  v2 = sub_1884021B4(&protocol descriptor for CKSyncEngineDelegatePrivate);
  *(v1 + 88) = v2;
  v4 = sub_1884038A4(v2, v3);
  *(v1 + 96) = v4;
  *(v4 + 16) = v7;
  *(v4 + 32) = v0;
  v5 = swift_task_alloc();
  *(v1 + 104) = v5;
  *v5 = v1;
  v5[1] = sub_1884C856C;

  return sub_1884C994C(0, &unk_1886FAFD0, v4);
}

uint64_t sub_1884C856C()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v4 = v3;
  sub_18840F6A8();
  sub_1883F7110();
  *v5 = v1;
  *v5 = *v2;
  *(v1 + 112) = v0;

  sub_18840FB28();
  if (!v0)
  {
    *(v1 + 120) = v4;
  }

  sub_188404D5C();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884C86AC()
{
  sub_1883F7120();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);
  v2 = *(v0 + 120);

  return v1(v2);
}

uint64_t sub_1884C870C()
{
  sub_1883FB4AC();
  sub_1883FE89C();
  sub_188404BE0();
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_1883FF65C();
  return sub_188410C3C("Fatal error", v0, v1, v2, v3, "CloudKit/CKSyncEngineDelegate.swift", v4, v5, v7, v8);
}

uint64_t sub_1884C8798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return sub_188405594(sub_1884C87B4);
}

uint64_t sub_1884C87B4()
{
  sub_1883FB4AC();
  sub_1884CDCE4();
  v1 = sub_1884021B4(&protocol descriptor for CKSyncEngineDelegate);
  *(v0 + 96) = v1;
  v3 = sub_1884038A4(v1, v2);
  sub_1883FDF34(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
  swift_task_alloc();
  sub_1883FF2B8();
  *(v0 + 112) = v13;
  *v13 = v14;
  v13[1] = sub_1884C8874;
  sub_1884110E4();

  return sub_1884CA9B0(v15, v16, v17, v18);
}

uint64_t sub_1884C8874()
{
  sub_1883F78E0();
  sub_18840F6A8();
  sub_1883F7B78();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v0;

  sub_18840FB28();
  sub_1883F8004();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884C89A4()
{
  sub_1883FB4AC();
  sub_1883FE89C();
  sub_188404BE0();
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_1883FF65C();
  return sub_188410C3C("Fatal error", v0, v1, v2, v3, "CloudKit/CKSyncEngineDelegate.swift", v4, v5, v7, v8);
}

uint64_t sub_1884C8A30(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return sub_188405594(sub_1884C8A4C);
}

uint64_t sub_1884C8A4C()
{
  sub_1883FB4AC();
  v4 = *(v0 + 88);
  sub_1884C8278(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *(v1 + 16) = v4;
  *(v1 + 32) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1884C8B30;

  return sub_1884CB1A4(0, &unk_1886FB200, v1);
}

uint64_t sub_1884C8B30()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v4 = v3;
  sub_18840F6A8();
  sub_1883F7110();
  *v5 = v1;
  *v5 = *v2;
  *(v1 + 128) = v0;

  sub_18840FB28();
  if (!v0)
  {
    *(v1 + 136) = v4;
  }

  sub_188404D5C();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884C8C70()
{
  sub_1883F7120();
  v1 = *(v0 + 136);
  sub_1883F9FEC(v0 + 16, &qword_1EA90E740, &qword_1886FB170);
  v2 = *(v0 + 8);

  return v2(v1 & 1);
}

uint64_t sub_1884C8CE4()
{
  sub_1883FB4AC();
  sub_1883FE89C();
  sub_188404BE0();
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_1883FF65C();
  return sub_188410C3C("Fatal error", v0, v1, v2, v3, "CloudKit/CKSyncEngineDelegate.swift", v4, v5, v7, v8);
}

uint64_t sub_1884C8D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1884C8D94, 0, 0);
}

uint64_t sub_1884C8D94()
{
  sub_1883FB4AC();
  if (qword_1EA90C838 != -1)
  {
    sub_1883FEAB4(&qword_1EA90C838);
  }

  v1 = sub_18841BAD0();
  sub_1884052D8(v1);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  sub_18844E6FC(&unk_1EA90E3E0, &qword_1886FAFF0);
  *v2 = v0;
  v2[1] = sub_1884C8EB0;
  sub_188414794();
  sub_188404D5C();

  return MEMORY[0x1EEE6DE98](v3);
}

void sub_1884C8EB0()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = *(v3 + 32);
    v8 = *(v5 + 8);

    v8(v7);
  }
}

uint64_t sub_1884C8FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a2;
  v5[6] = a3;
  v5[3] = a5;
  v5[4] = a1;
  v5[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1884C8FF8, 0, 0);
}

uint64_t sub_1884C8FF8()
{
  sub_1883F78E0();
  if (qword_1EA90C838 != -1)
  {
    sub_1883FEAB4(&qword_1EA90C838);
  }

  v1 = sub_18841BAD0();
  sub_1884052D8(v1);
  swift_task_alloc();
  sub_1883FF2B8();
  *(v0 + 64) = v2;
  *v2 = v3;
  v2[1] = sub_1884073F0;
  sub_188414794();

  return MEMORY[0x1EEE6DE98](v4);
}

uint64_t sub_1884C9100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884C9124, 0, 0);
}

uint64_t sub_1884C9124()
{
  sub_1883FB4AC();
  if (qword_1EA90C838 != -1)
  {
    sub_1883FEAB4(&qword_1EA90C838);
  }

  v1 = *(v0 + 32);
  *(v0 + 57) = 1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  sub_18844E6FC(&qword_1EA90E0F0, &qword_1886F7090);
  *v3 = v0;
  v3[1] = sub_1884C9260;
  sub_188414794();
  sub_188404D5C();

  return MEMORY[0x1EEE6DE98](v4);
}

void sub_1884C9260()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = *(v3 + 56);
    v8 = *(v5 + 8);

    v8(v7);
  }
}

uint64_t sub_1884C9380(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v7 = a1 + *a1;
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1884C9484;

  return (v7)(v4 + 4, v4 + 2);
}

uint64_t sub_1884C9484()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1884C9570(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v9 = a2 + *a2;
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1884C967C;

  return (v9)(a1, v5 + 2);
}

uint64_t sub_1884C967C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1884C9760(int *a1, uint64_t a2, uint64_t a3)
{
  v7 = (a1 + *a1);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1884C9860;

  return v7(v3 + 24, a3);
}

uint64_t sub_1884C9860()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1884C994C(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 72) = a3;
  *(v4 + 80) = v3;
  *(v4 + 64) = a2;
  *(v4 + 184) = a1;
  *(v4 + 88) = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1884C999C, v3, 0);
}

uint64_t sub_1884C999C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18840618C();
  a19 = v22;
  a20 = v23;
  sub_1883FC738();
  a18 = v20;
  v24 = *(v20 + 88);
  v25 = sub_188405E54();
  sub_1883F7468();
  v28 = sub_1884CCC70(v26, v27, &unk_1886FE220);
  v29 = sub_188410EC8(v28);
  sub_188404C5C(v29, v25);
  sub_1883FF014();
  if (v24)
  {
    sub_1883F9E4C();
    v69 = v30;
    swift_task_alloc();
    sub_1883FF2B8();
    *(v20 + 104) = v31;
    *v31 = v32;
    v31[1] = sub_1884C9D50;
    sub_18840DEA4();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, v69, a10, a11, a12);
  }

  sub_1883FDBD0();
  if (!v42)
  {
    sub_1883F9064();
    sub_1883FDCD4();
    if (!v59)
    {
      *(v24 + 128) = 1;
      if (*(v20 + 184) == 1)
      {
        static Task<>.checkCancellation()();
      }

      *(v20 + 48) = sub_18840F8F4();
      v60 = Identifiable<>.id.getter();
      sub_188404AE8(&a10, v60);
      if (qword_1EA90C828 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    sub_1883F89B8(&qword_1EA90C828);
LABEL_15:
    v61 = sub_1884062D8();
    sub_188443300(v61);
    sub_1883F7468();
    sub_1884CCC70(v62, v63, &unk_1886FE258);
    v64 = swift_task_alloc();
    *(v20 + 168) = v64;
    sub_18844E6FC(&unk_1EA90E3E0, &qword_1886FAFF0);
    sub_1883FA6DC();
    *v64 = v65;
    sub_188404A28(v66);
    sub_1883FA170();
    sub_1883FE22C();

    return MEMORY[0x1EEE6DE98](v67);
  }

  sub_1883FAAC8();
  if (v44)
  {
    __break(1u);
    goto LABEL_19;
  }

  v45 = *(v20 + 184);
  *(v24 + 120) = v43;
  v46 = swift_task_alloc();
  *(v20 + 120) = v46;
  *(v46 + 16) = v45;
  *(v46 + 24) = v21;
  *(v46 + 32) = v24;
  v47 = swift_task_alloc();
  *(v20 + 128) = v47;
  *(v47 + 16) = v45;
  *(v47 + 24) = v24;
  *(v47 + 32) = v21;
  sub_1883F7468();
  sub_1884CCC70(v48, v49, &unk_1886FE258);
  v50 = swift_task_alloc();
  *(v20 + 136) = v50;
  *v50 = v20;
  v50[1] = sub_1884C9E90;
  sub_1883F960C();
  sub_18840DEA4();

  return MEMORY[0x1EEE6DE18](v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12);
}

uint64_t sub_1884C9D50()
{
  sub_1883F78E0();
  sub_18840F6A8();
  sub_1883F7B78();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 112) = v0;

  sub_18840FB28();
  sub_1883F8004();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884C9E90()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
    v7 = *(v3 + 80);
    v8 = sub_1884C9FA8;
  }

  else
  {
    v9 = *(v3 + 80);

    v8 = sub_1884CA00C;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1884C9FA8()
{
  sub_1883F7120();

  sub_1883F816C();

  return v0();
}

uint64_t sub_1884CA00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18840618C();
  a19 = v21;
  a20 = v22;
  sub_1883FC738();
  a18 = v20;
  sub_1883FF2C4();
  if (!v23)
  {
    __break(1u);
  }

  if (*(v20 + 184) == 1 && (v24 = *(v20 + 144), static Task<>.checkCancellation()(), v24))
  {
    sub_18840506C();
    sub_1883FA18C();
    sub_18840DEA4();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
  }

  else
  {
    *(v20 + 48) = sub_188405E54();
    v34 = Identifiable<>.id.getter();
    sub_188404AE8(&a10, v34);
    if (qword_1EA90C828 != -1)
    {
      sub_1883F89B8(&qword_1EA90C828);
    }

    v35 = sub_1884062D8();
    sub_188443300(v35);
    sub_1883F7468();
    sub_1884CCC70(v36, v37, &unk_1886FE258);
    v38 = swift_task_alloc();
    *(v20 + 168) = v38;
    sub_18844E6FC(&unk_1EA90E3E0, &qword_1886FAFF0);
    sub_1883FA6DC();
    *v38 = v39;
    sub_188404A28(v40);
    sub_1883FA170();
    sub_1883FE22C();

    return MEMORY[0x1EEE6DE98](v41);
  }
}

uint64_t sub_1884CA1C8()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 176) = v0;

  sub_1884022BC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884CA2E8()
{
  sub_1883F7120();
  sub_18840506C();
  v1 = *(v0 + 40);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1884CA34C()
{
  sub_1883F7120();
  sub_18840506C();
  sub_1883F816C();

  return v0();
}

uint64_t sub_1884CA3A8()
{
  sub_1883F78E0();
  sub_18840F6A8();
  sub_1883F7B78();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v0;

  sub_18840FB28();
  sub_1883F8004();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884CA4D4()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (v0)
  {
    v7 = *(v3 + 72);
    v8 = sub_1884CA5EC;
  }

  else
  {
    v9 = *(v3 + 72);

    v8 = sub_1884CA650;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1884CA5EC()
{
  sub_1883F7120();

  v0 = sub_1883F8C1C();

  return v1(v0);
}

uint64_t sub_1884CA650()
{
  sub_1883F653C();
  if (*(*(v0 + 72) + 128) != 1)
  {
    __break(1u);
  }

  if (*(v0 + 177) == 1 && (v1 = *(v0 + 136), static Task<>.checkCancellation()(), v1))
  {
    sub_18840506C();
    v2 = sub_1883F8C1C();

    return v3(v2);
  }

  else
  {
    v5 = sub_188405E54();
    v6 = sub_1883FC768(v5);
    sub_1884CDCF4(v6, v7, v8, v9, v10, v11, v12, v13, v21);
    if (qword_1EA90C828 != -1)
    {
      sub_1883F89B8(&qword_1EA90C828);
    }

    v14 = sub_188400870();
    sub_1884022A8(v14);
    sub_1883F7468();
    sub_1884CCC70(v15, v16, &unk_1886FE258);
    swift_task_alloc();
    sub_1883FF2B8();
    *(v0 + 160) = v17;
    *v17 = v18;
    sub_18840E7E4(v17);
    sub_1883FAECC();
    sub_1884CDD5C();
    sub_1883FA170();
    sub_1883F614C();

    return MEMORY[0x1EEE6DE98](v19);
  }
}

uint64_t sub_1884CA7EC()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 168) = v0;

  sub_1883F950C();

  sub_1884022BC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884CA8FC()
{
  sub_1883F7120();
  sub_18840506C();
  v0 = sub_1883FB354();

  return v1(v0);
}

uint64_t sub_1884CA954()
{
  sub_1883F7120();
  sub_18840506C();
  v0 = sub_1883F8C1C();

  return v1(v0);
}

uint64_t sub_1884CA9B0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 176) = a2;
  *(v5 + 56) = a1;
  *(v5 + 64) = a3;
  *(v5 + 88) = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1884CAA00, v4, 0);
}

uint64_t sub_1884CAA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1883FC738();
  v13 = v12[11];
  v14 = sub_188405E54();
  sub_1883F7468();
  v17 = sub_1884CCC70(v15, v16, &unk_1886FE220);
  v18 = sub_188410EC8(v17);
  sub_188404C5C(v18, v14);
  sub_1883FF014();
  if (v13)
  {
    sub_1883F9E4C();
    swift_task_alloc();
    sub_1883FF2B8();
    v12[13] = v19;
    *v19 = v20;
    sub_188404FA4(v19);
    sub_1884CDCCC();

    __asm { BRAA            X1, X16 }
  }

  sub_1883FDBD0();
  if (!v23)
  {
    sub_1883F9064();
    sub_1883FDCD4();
    if (!v41)
    {
      sub_18840AE7C();
      if (v23)
      {
        static Task<>.checkCancellation()();
      }

      v42 = sub_18840F8F4();
      v43 = sub_188404238(v42);
      sub_1883F813C(v43, v44, v45, v46, v47);
      if (qword_1EA90C828 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    sub_1883F89B8(&qword_1EA90C828);
LABEL_16:
    v48 = sub_188400870();
    sub_1883F984C(v48);
    sub_1883F7468();
    sub_1884CCC70(v49, v50, &unk_1886FE258);
    swift_task_alloc();
    sub_1883FF2B8();
    v12[20] = v51;
    *v51 = v52;
    sub_1883FC650(v51);
    sub_1883FAECC();
    sub_1883FA170();
    sub_188410CA4();

    return MEMORY[0x1EEE6DE98](v53);
  }

  sub_1883FAAC8();
  if (v25)
  {
    __break(1u);
    goto LABEL_20;
  }

  v26 = sub_1884CDCB0(v24);
  v27 = sub_1883F9A44(v26);
  sub_1883FF604(v27);
  sub_1883F7468();
  sub_1884CCC70(v28, v29, &unk_1886FE258);
  v30 = swift_task_alloc();
  v31 = sub_188404A84(v30);
  *v31 = v32;
  v31[1] = sub_1884CAD38;
  sub_1883F960C();
  sub_1884CDCCC();

  return MEMORY[0x1EEE6DE18](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_1884CAD38()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (v0)
  {
    v7 = *(v3 + 80);
    v8 = sub_1884CAE48;
  }

  else
  {
    sub_188442BE8();

    v8 = sub_1884CAEAC;
    v7 = v3;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1884CAE48()
{
  sub_1883F7120();

  sub_1883F816C();

  return v0();
}

uint64_t sub_1884CAEAC()
{
  sub_1883F653C();
  sub_1883FF2C4();
  if (!v1)
  {
    __break(1u);
  }

  sub_1884137AC();
  if (v1 && (v2 = *(v0 + 136), static Task<>.checkCancellation()(), v2))
  {
    sub_18840506C();
    sub_1883FA18C();

    return v3();
  }

  else
  {
    v5 = sub_188405E54();
    v6 = sub_1883FC768(v5);
    sub_1884CDCF4(v6, v7, v8, v9, v10, v11, v12, v13, v21);
    if (qword_1EA90C828 != -1)
    {
      sub_1883F89B8(&qword_1EA90C828);
    }

    v14 = sub_188400870();
    sub_1883F984C(v14);
    sub_1883F7468();
    sub_1884CCC70(v15, v16, &unk_1886FE258);
    swift_task_alloc();
    sub_1883FF2B8();
    *(v0 + 160) = v17;
    *v17 = v18;
    sub_1883FC650(v17);
    sub_1883FAECC();
    sub_1883FA170();
    sub_1883F614C();

    return MEMORY[0x1EEE6DE98](v19);
  }
}

uint64_t sub_1884CB038()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 168) = v0;

  sub_1883F5A54();

  sub_1884022BC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884CB148()
{
  sub_1883F7120();
  sub_18840506C();
  sub_1883F816C();

  return v0();
}

uint64_t sub_1884CB1A4(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 56) = a2;
  *(v4 + 177) = a1;
  *(v4 + 80) = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1884CB1F4, v3, 0);
}

uint64_t sub_1884CB1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_18840618C();
  sub_1883FC738();
  v14 = v12[10];
  v15 = sub_188405E54();
  sub_1883F7468();
  v18 = sub_1884CCC70(v16, v17, &unk_1886FE220);
  v19 = sub_1884CDD68(v18);
  sub_188404C5C(v19, v15);
  sub_1883FF014();
  if (v14)
  {
    sub_1883F9E4C();
    v64 = v20;
    swift_task_alloc();
    sub_1883FF2B8();
    v12[12] = v21;
    *v21 = v22;
    sub_1883FF534(v21);
    sub_18840DEA4();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, v64, a10, a11, a12);
  }

  v32 = v12[9];
  if (*(v32 + 128) == 1)
  {
    sub_1883FAAC8();
    if (!v34)
    {
      *(v32 + 120) = v33;
      v35 = swift_task_alloc();
      v36 = sub_1883F9A44(v35);
      sub_1883FF604(v36);
      sub_1883F7468();
      sub_1884CCC70(v37, v38, &unk_1886FE258);
      v39 = swift_task_alloc();
      v40 = sub_188404A84(v39);
      *v40 = v41;
      v40[1] = sub_1884CB690;
      sub_1883F960C();
      sub_18840DEA4();

      return MEMORY[0x1EEE6DE18](v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
    }

    __break(1u);
  }

  else
  {
    sub_1883F9064();
    sub_1883FDCD4();
    if (!v50)
    {
      sub_1884CDD48();
      if (v51)
      {
        static Task<>.checkCancellation()();
      }

      v52 = sub_188405E54();
      v53 = sub_188404238(v52);
      sub_1883FDEB0(v53, v54, v55);
      if (qword_1EA90C828 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_20:
  sub_1883F89B8(&qword_1EA90C828);
LABEL_15:
  v56 = sub_188400870();
  sub_1884022A8(v56);
  sub_1883F7468();
  sub_1884CCC70(v57, v58, &unk_1886FE258);
  v59 = swift_task_alloc();
  sub_1883FF4C8(v59);
  sub_18844E6FC(&qword_1EA90E0F0, &qword_1886F7090);
  sub_1883FA6DC();
  *v13 = v60;
  sub_188404A28(v61);
  sub_1884CDD5C();
  sub_1883FA170();
  sub_1883FE22C();

  return MEMORY[0x1EEE6DE98](v62);
}

uint64_t sub_1884CB558()
{
  sub_1883F78E0();
  sub_18840F6A8();
  sub_1883F7B78();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v0;

  sub_18840FB28();
  sub_1883F8004();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884CB690()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (v0)
  {
    v7 = *(v3 + 72);
    v8 = sub_1884CAE48;
  }

  else
  {
    v9 = *(v3 + 72);

    v8 = sub_1884CB7A8;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1884CB7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_18840618C();
  sub_1883FC738();
  if (*(*(v12 + 72) + 128) != 1)
  {
    __break(1u);
  }

  if (*(v12 + 177) == 1 && (v14 = *(v12 + 136), static Task<>.checkCancellation()(), v14))
  {
    sub_18840506C();
    sub_1883FA18C();
    sub_18840DEA4();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
  }

  else
  {
    v24 = sub_188405E54();
    v25 = sub_1883FC768(v24);
    sub_1883FDEB0(v25, v26, v27);
    if (qword_1EA90C828 != -1)
    {
      sub_1883F89B8(&qword_1EA90C828);
    }

    v28 = sub_188400870();
    sub_1884022A8(v28);
    sub_1883F7468();
    sub_1884CCC70(v29, v30, &unk_1886FE258);
    v31 = swift_task_alloc();
    sub_1883FF4C8(v31);
    sub_18844E6FC(&qword_1EA90E0F0, &qword_1886F7090);
    sub_1883FA6DC();
    *v13 = v32;
    sub_188404A28(v33);
    sub_1884CDD5C();
    sub_1883FA170();
    sub_1883FE22C();

    return MEMORY[0x1EEE6DE98](v34);
  }
}

uint64_t sub_1884CB948()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 168) = v0;

  sub_1883F950C();

  sub_1884022BC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884CBA58()
{
  sub_1883F7120();
  sub_18840506C();
  sub_1883F816C();

  return v0();
}

uint64_t sub_1884CBAB4()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (v0)
  {
    v7 = *(v3 + 80);
    v8 = sub_1884CDC5C;
  }

  else
  {
    sub_188442BE8();

    v8 = sub_1884CBBC4;
    v7 = v3;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1884CBBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_18840618C();
  sub_1883FC738();
  sub_1883FF2C4();
  if (!v14)
  {
    __break(1u);
  }

  sub_1884137AC();
  if (v14 && (v15 = *(v12 + 136), static Task<>.checkCancellation()(), v15))
  {
    sub_18840506C();
    sub_1883FA18C();
    sub_18840DEA4();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  else
  {
    v25 = sub_188405E54();
    v26 = sub_1883FC768(v25);
    sub_1883FDEB0(v26, v27, v28);
    if (qword_1EA90C828 != -1)
    {
      sub_1883F89B8(&qword_1EA90C828);
    }

    v29 = sub_188400870();
    sub_1883F984C(v29);
    sub_1883F7468();
    sub_1884CCC70(v30, v31, &unk_1886FE258);
    v32 = swift_task_alloc();
    sub_1883FF4C8(v32);
    sub_18844E6FC(&qword_1EA90E3F8, &qword_1886FB0D0);
    sub_1883FA6DC();
    *v13 = v33;
    sub_1883FDD90(v34);
    sub_1883FA170();
    sub_1883FE22C();

    return MEMORY[0x1EEE6DE98](v35);
  }
}

uint64_t sub_1884CBD5C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (v0)
  {
    v7 = *(v3 + 80);
    v8 = sub_1884CDC5C;
  }

  else
  {
    sub_188442BE8();

    v8 = sub_1884CBE6C;
    v7 = v3;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1884CBE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_18840618C();
  sub_1883FC738();
  sub_1883FF2C4();
  if (!v14)
  {
    __break(1u);
  }

  sub_1884137AC();
  if (v14 && (v15 = *(v12 + 136), static Task<>.checkCancellation()(), v15))
  {
    sub_18840506C();
    sub_1883FA18C();
    sub_18840DEA4();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  else
  {
    v25 = sub_188405E54();
    v26 = sub_1883FC768(v25);
    sub_1883FDEB0(v26, v27, v28);
    if (qword_1EA90C828 != -1)
    {
      sub_1883F89B8(&qword_1EA90C828);
    }

    v29 = sub_188400870();
    sub_1883F984C(v29);
    sub_1883F7468();
    sub_1884CCC70(v30, v31, &unk_1886FE258);
    v32 = swift_task_alloc();
    sub_1883FF4C8(v32);
    sub_18844E6FC(&qword_1EA90E408, &qword_1886FB158);
    sub_1883FA6DC();
    *v13 = v33;
    sub_1883FDD90(v34);
    sub_1883FA170();
    sub_1883FE22C();

    return MEMORY[0x1EEE6DE98](v35);
  }
}

uint64_t sub_1884CC004()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (v0)
  {
    v7 = *(v3 + 80);
    v8 = sub_1884CDC5C;
  }

  else
  {
    sub_188442BE8();

    v8 = sub_1884CC114;
    v7 = v3;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1884CC114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_18840618C();
  sub_1883FC738();
  sub_1883FF2C4();
  if (!v14)
  {
    __break(1u);
  }

  sub_1884137AC();
  if (v14 && (v15 = *(v12 + 136), static Task<>.checkCancellation()(), v15))
  {
    sub_18840506C();
    sub_1883FA18C();
    sub_18840DEA4();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  else
  {
    v25 = sub_188405E54();
    v26 = sub_1883FC768(v25);
    sub_1883FDEB0(v26, v27, v28);
    if (qword_1EA90C828 != -1)
    {
      sub_1883F89B8(&qword_1EA90C828);
    }

    v29 = sub_188400870();
    sub_1883F984C(v29);
    sub_1883F7468();
    sub_1884CCC70(v30, v31, &unk_1886FE258);
    v32 = swift_task_alloc();
    sub_1883FF4C8(v32);
    sub_18844E6FC(&qword_1EA90E400, &qword_1886FB110);
    sub_1883FA6DC();
    *v13 = v33;
    sub_1883FDD90(v34);
    sub_1883FA170();
    sub_1883FE22C();

    return MEMORY[0x1EEE6DE98](v35);
  }
}

uint64_t sub_1884CC2AC(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1884CC39C;

  return v4(v1 + 16);
}

uint64_t sub_1884CC39C()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v3 = v2;
  v4 = *v1;
  sub_1883F7110();
  *v5 = v4;
  *(v6 + 32) = v0;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884CC4C4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_188442BE4;

  return v6(a1);
}

uint64_t sub_1884CC5BC()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v3 = v2;
  v4 = *v1;
  sub_1883F7110();
  *v5 = v4;
  *(v6 + 24) = v0;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884CC6D0(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1884CC7C0;

  return v4(v1 + 32);
}

uint64_t sub_1884CC7C0()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v3 = v2;
  v4 = *v1;
  sub_1883F7110();
  *v5 = v4;
  *(v6 + 24) = v0;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884CC8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v4 + 16) = a1;
  v7 = *a4;
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_1884CC994;

  return sub_1884C8D70(a2, a3, v7, v8);
}

uint64_t sub_1884CC994()
{
  sub_1883F78E0();
  v3 = v2;
  sub_1883F78EC();
  v5 = v4;
  sub_1883F7B78();
  *v6 = v5;
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  sub_188428FD0();

  return v9();
}

uint64_t sub_1884CCA84(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1884CDC50;

  return sub_1884CC2AC(a2);
}

uint64_t sub_1884CCB24(uint64_t a1, int *a2, uint64_t a3, uint64_t *a4)
{
  *(v4 + 16) = a1;
  v7 = *a4;
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_1884CDC50;

  return sub_1884C9380(a2, a3, v7, v8);
}

uint64_t sub_1884CCBD8()
{
  sub_1883F78E0();
  sub_1884056DC();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883FF1B4(v1);

  return sub_18840B9F8(v3, v4, v5, v6);
}

uint64_t sub_1884CCC70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1884CCCB8()
{
  sub_1883F78E0();
  sub_1883FB548();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v1[1] = sub_1884061E0;
  v3 = sub_1883FE6A0();

  return sub_1884C7A60(v3, v4, v5, v6);
}

uint64_t sub_1884CCD48()
{
  sub_1883F78E0();
  v3 = v2;
  sub_1883F78EC();
  v5 = v4;
  sub_1883F7B78();
  *v6 = v5;
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3 & 1;
  }

  sub_188428FD0();

  return v9();
}

uint64_t sub_1884CCE3C()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883FB548();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F933C(v1);
  sub_188404D5C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1884CCECC()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v1[1] = sub_188442BE4;
  v3 = sub_1883F8BF0();

  return v4(v3);
}

uint64_t sub_1884CCF6C()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883FB548();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F933C(v1);
  sub_188404D5C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1884CCFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_188442BE4;

  return sub_1884C8FD0(a1, a2, a3, v8, v9);
}

uint64_t sub_1884CD0C0()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883FB548();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F933C(v1);
  sub_188404D5C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1884CD150()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883F7A30(v1);

  return sub_1884CC4C4(v3, v4);
}

uint64_t sub_1884CD1E0(uint64_t a1, int *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_188442BE4;

  return sub_1884C9570(a1, a2, a3, v8, v9);
}

uint64_t sub_1884CD2A4()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883FB548();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F933C(v1);
  sub_188404D5C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1884CD334()
{
  v1 = type metadata accessor for UUID();
  sub_1883F8AE4(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_1884C6FCC(v3, v4);
}

uint64_t sub_1884CD394()
{
  sub_1883FC738();
  sub_1883F8674();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v1[1] = sub_188442BE4;
  sub_1883F97D4();
  sub_1883F9968();

  return sub_1884C73A8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1884CD45C()
{
  sub_1883FB4AC();
  v1 = type metadata accessor for UUID();
  sub_1883F8AE4(v1);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_1883F7E38(v3);
  *v4 = v5;
  v4[1] = sub_188442BE4;
  v6 = sub_1883F97D4();

  return sub_1884C7188(v6, v7, v8, v2, v9);
}

uint64_t sub_1884CD538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1884CCD48;

  return sub_1884C9100(a2, a3, a4);
}

uint64_t sub_1884CD5E8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1884CDC44;

  return sub_1884CC6D0(a2);
}

uint64_t sub_1884CD688(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1884CDC44;

  return sub_1884C9760(a2, a3, a4);
}

uint64_t sub_1884CD740()
{
  sub_1883F78E0();
  sub_1883FB548();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v1[1] = sub_188442BE4;
  v3 = sub_1883FE6A0();

  return sub_1884C5FEC(v3, v4, v5, v6);
}

uint64_t sub_1884CD7DC()
{
  sub_1883F7120();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1884CDC9C(v1);

  return sub_1884C5358(v2, v3);
}

uint64_t sub_1884CD864()
{
  sub_1883F7120();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1884CDC9C(v1);

  return sub_1884C5078(v2, v3);
}

uint64_t sub_1884CD8EC()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883F8674();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v1[1] = sub_188442BE4;
  sub_1883F97D4();
  sub_188404D5C();

  return sub_1884C5D88(v3, v4, v5, v6, v7);
}

uint64_t sub_1884CD988()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883FB548();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F933C(v1);
  sub_188404D5C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1884CDA18()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v1[1] = sub_188442BE4;
  v3 = sub_1883F8BF0();

  return v4(v3);
}

uint64_t sub_1884CDAB8()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883FB548();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F933C(v1);
  sub_188404D5C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1884CDB48(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1884CDB94()
{
  sub_1883FB4AC();
  sub_1883F8674();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 41);
  v4 = swift_task_alloc();
  v5 = sub_1883F7E38(v4);
  *v5 = v6;
  v5[1] = sub_188442BE4;
  v7 = sub_1883F97D4();

  return sub_1884C5F40(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_1884CDCB0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 120) = a1;

  return swift_task_alloc();
}

BOOL sub_1884CDCF4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_188404AE8(&a9, a1);
}

uint64_t sub_1884CDD10()
{

  return swift_allocObject();
}

uint64_t sub_1884CDD2C(uint64_t a1)
{

  return swift_weakInit();
}

uint64_t sub_1884CDD68(uint64_t a1)
{
  *(v1 + 88) = a1;

  return Identifiable<>.id.getter();
}

void sub_1884CDD88(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_1884CDDA8()
{
  v1 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  if (!*(v0 + 272))
  {
    v4 = type metadata accessor for TaskPriority();
    sub_1883F90F4(v3, 1, 1, v4);
    v5 = sub_18840F920();
    v6 = swift_allocObject();
    v6[2] = v0;
    v6[3] = v5;
    v6[4] = v0;
    swift_retain_n();
    sub_188453610();
    *(v0 + 272) = v7;
  }
}

uint64_t sub_1884CDEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = type metadata accessor for ContinuousClock();
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1884CDF70, a4, 0);
}

uint64_t sub_1884CDF70()
{
  sub_1883F78E0();
  static Duration.seconds(_:)();
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1884CE048;

  return sub_18840F5B8();
}

uint64_t sub_1884CE048()
{
  sub_1883FB4AC();
  v2 = *v1;
  v3 = *v1;
  sub_1883F7110();
  *v4 = v3;

  v5 = v2[5];
  v6 = v2[4];
  v7 = v2[3];
  if (v0)
  {
  }

  (*(v6 + 8))(v5, v7);
  sub_1884022BC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1884CE1E4()
{
  sub_1883F7120();
  *(*(v0 + 16) + 272) = 0;

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1884CE280;

  return sub_18840307C();
}

uint64_t sub_1884CE280()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  sub_1883F816C();

  return v3();
}

uint64_t sub_1884CE37C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1884CE474()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F78D4();
  *v3 = v2;
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  memcpy((v2 + 16), (v2 + 96), 0x50uLL);
  sub_1883FBF6C(v2 + 16);
  sub_1884022BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884CE584()
{
  sub_1883F7120();
  sub_1884D1648(*(v0 + 400), *(v0 + 408), *(v0 + 273));
  v1 = swift_task_alloc();
  *(v0 + 440) = v1;
  *v1 = v0;
  sub_1883F89D8(v1);

  return sub_18840E178();
}

uint64_t sub_1884CE5FC()
{
  sub_1883F78E0();
  v1 = *v0;
  v2 = *v0;
  sub_1883F7110();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  v5 = swift_task_alloc();
  *(v2 + 448) = v5;
  *v5 = v4;
  v5[1] = sub_1884CE734;
  v6 = *(v1 + 280);

  return sub_1884D1284(v6);
}

uint64_t sub_1884CE734()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;
  *(v6 + 274) = v5;

  v7 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884CE830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1883F8680();
  sub_1883FC738();
  v17 = *(v14 + 274);
  v18 = *(v14 + 304);
  v19 = *(v14 + 273) != 255;
  v20 = sub_18850BCF0();
  *(v14 + 456) = v20;
  *(v14 + 464) = v21;
  if (!v20)
  {
    goto LABEL_12;
  }

  sub_188404FB8();
  *(v14 + 472) = v22;
  if ([v23 accountStatus] == 1)
  {
    if (!v18)
    {

      goto LABEL_12;
    }

    if ((v17 | v19))
    {

      v24 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      sub_1883FF744();
      if (sub_1883F9084())
      {
        sub_1883FF1D0();
        v25 = swift_slowAlloc();
        sub_1883F9860();
        swift_slowAlloc();
        sub_1883FF2D4();
        *v25 = 136315138;
        v26 = sub_1883FE43C();
        sub_1883FC788(v26, v27, v28, v29);
        sub_1883FE2FC();
        *(v25 + 4) = v15;
        sub_1883F7A44(&dword_1883EA000, v30, v31, "%s scheduling sync after account change or update");
        sub_1883F8EAC();
        v32 = sub_1884055A0();
        MEMORY[0x18CFD7E80](v32);
      }

      v33 = *(v14 + 288);
      v34 = type metadata accessor for Date();
      sub_1883F90F4(v33, 1, 1, v34);
      v35 = swift_task_alloc();
      *(v14 + 480) = v35;
      *v35 = v14;
      v35[1] = sub_1884CEAB0;
      sub_1883F7E58();

      return sub_18840EDE4();
    }
  }

LABEL_12:
  sub_1883FC7A0();
  if (v38)
  {
    v39 = [objc_opt_self() defaultCenter];
    if (qword_1EA90CBC0 != -1)
    {
      sub_1883F7D14(&qword_1EA90CBC0);
    }

    sub_1883FDC6C();
    v40 = *(v14 + 273);
    [v39 postNotificationName:qword_1EA919C88 object:?];

    sub_1884D1780();
    v41 = sub_1883F7E8C();
    sub_1884D1648(v41, v42, v40);
    sub_1883FE944((v14 + 176));
  }

  else
  {
    sub_1883F9A68();
    sub_1884D1648(v12, v18, v16);
  }

  sub_1883F816C();
  sub_1883F7E58();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
}

uint64_t sub_1884CEAB0()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 288);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  sub_188442B84(v2, &unk_1EA90D7B0, &dword_1886F8780);
  sub_1884022BC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1884CEBD8()
{
  v2 = *(v0 + 464);
  v3 = *(v0 + 456);

  sub_1883FC7A0();
  if (v4)
  {
    v5 = [objc_opt_self() defaultCenter];
    if (qword_1EA90CBC0 != -1)
    {
      sub_1883F7D14(&qword_1EA90CBC0);
    }

    sub_1883FDC6C();
    v6 = *(v0 + 273);
    [v5 postNotificationName:qword_1EA919C88 object:?];

    sub_1884D1780();
    v7 = sub_1883F7E8C();
    sub_1884D1648(v7, v8, v6);
    sub_1883FE944((v0 + 176));
  }

  else
  {
    sub_1883F9A68();
    sub_1884D1648(v3, v2, v1);
  }

  sub_1883F816C();

  return v9();
}

uint64_t sub_1884CED08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1883F8680();
  sub_1883FC738();
  v13 = *(v12 + 392);
  v14 = *(v12 + 336);
  v16 = *(v12 + 320);
  v15 = *(v12 + 328);
  v17 = *(v12 + 312);

  sub_1884D11E8(v17, v16, v15, v14);

  v18 = v13;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v12 + 392);
  if (v21)
  {
    v23 = swift_slowAlloc();
    sub_1884038C8();
    v24 = swift_slowAlloc();
    sub_1883F9860();
    a10 = swift_slowAlloc();
    *v23 = 136315394;
    v25 = sub_1883FE43C();
    v29 = sub_1883FC788(v25, v26, v27, v28);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2112;
    v30 = v22;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v31;
    *v24 = v31;
    _os_log_impl(&dword_1883EA000, v19, v20, "%s error updating account info: %@", v23, 0x16u);
    sub_188442B84(v24, &qword_1EA90DC70, &unk_1886FA190);
    sub_1883FECE8();
    MEMORY[0x18CFD7E80]();
    sub_1884101E8();
    sub_1883FECE8();
    MEMORY[0x18CFD7E80]();
    v32 = sub_1884055A0();
    MEMORY[0x18CFD7E80](v32);
  }

  else
  {
  }

  sub_1883FE944((v12 + 176));

  sub_1883F816C();
  sub_1883F7E58();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_1884CEED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[9] = a7;
  v8[10] = v7;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  return sub_1883F8EA4(sub_1884CEEF8, 0);
}

uint64_t sub_1884CEEF8()
{
  sub_1883F7120();
  sub_188400B68(*(v0 + 32), *(*(v0 + 32) + 24));
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  sub_188410EE8(v1);

  return sub_1884D0AC0();
}

uint64_t sub_1884CEF8C()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 96) = v4;

  if (v0)
  {
    sub_1883F816C();

    return v5();
  }

  else
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1884CF0AC()
{
  sub_1883F7120();
  sub_188400B68(*(v0 + 32), *(*(v0 + 32) + 24));
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  sub_188410EE8(v1);

  return sub_1884D0E58();
}

uint64_t sub_1884CF140()
{
  sub_1883F78E0();
  v3 = v2;
  sub_1883F78EC();
  v5 = v4;
  sub_1883F78D4();
  *v6 = v5;
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v5 + 112) = v0;

  if (!v0)
  {
    *(v5 + 120) = v3;
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1884CF250()
{
  v1 = *(v0 + 120);
  v51 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = v1;
  v4 = sub_188505EAC(v2);
  v6 = v5;
  v7 = *(v0 + 96);
  v50 = v3;
  if (v5)
  {
    v8 = v4;
  }

  else
  {

    v7 = 0;
    v8 = 0;
    v1 = 0;
  }

  v9 = *(v0 + 72);
  v49 = *(v0 + 64);
  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  v12 = *(v0 + 40);
  type metadata accessor for SyncEngine(0);
  v13 = sub_1883F9360();
  sub_1884D123C(v13, v14, v15, v16);
  v17 = sub_1884CF8E8(v12, v11, v10, v49, v7, v8, v6, v1, v9);
  v20 = *(v0 + 96);
  if (v51)
  {
    v21 = sub_1883F9360();
    sub_1884D11E8(v21, v22, v23, v24);

    v25 = sub_1883F9360();
    sub_1884D11E8(v25, v26, v27, v28);
    sub_1883F816C();
    sub_1883FF618();

    __asm { BRAA            X1, X16 }
  }

  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = sub_1883F9360();
  sub_1884D11E8(v34, v35, v36, v37);

  v38 = v33;
  switch(v33)
  {
    case 1u:
      v39 = sub_1883F9360();
      sub_1884D11E8(v39, v40, v41, v42);
      v38 = 0;
      v33 = 1;
      break;
    case 2u:
      v43 = v31;
      v44 = v32;
      v33 = 2;
      sub_18844CAB0(v31, v32, 2u);
      v38 = v32;
      break;
    case 3u:
      v31 = 0;
      v33 = -1;
      if (!v7 || v1)
      {
        v38 = 0;
      }

      else
      {
        v38 = *(v0 + 40);
        if (v38)
        {
          v45 = *(v0 + 64);
          v31 = 0;
          v38 = 0;
        }

        else
        {
          v31 = 0;
        }

        v33 = -1;
      }

      break;
    default:
      break;
  }

  v46 = *(v0 + 24);
  *v46 = v31;
  *(v46 + 8) = v38;
  *(v46 + 16) = v33;
  sub_1883F9360();
  sub_1883FF618();

  __asm { BRAA            X5, X16 }
}

uint64_t sub_1884CF490()
{
  v55 = v0;
  if (__sTestOverridesAvailable)
  {
    v1 = [objc_opt_self() defaultCenter];
    if (qword_1EA90CBC8 != -1)
    {
      swift_once();
    }

    v2 = qword_1EA919C90;
    *(v0 + 16) = *(v0 + 80);
    sub_18844E6FC(&qword_1EA90E478, &qword_1886FB308);
    [v1 postNotificationName:v2 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
  }

  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F74A0();
    swift_once();
  }

  v3 = *(v0 + 112);
  v4 = type metadata accessor for Logger();
  sub_1883FDE5C(v4, qword_1EA90C9F8);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 112);
  if (v8)
  {
    v10 = swift_slowAlloc();
    sub_1884038C8();
    v11 = swift_slowAlloc();
    sub_1883F9860();
    swift_slowAlloc();
    sub_1883FF2D4();
    *v10 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = sub_1883FE340(v12, v13, &v54);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2112;
    v15 = v9;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v16;
    *v11 = v16;
    _os_log_impl(&dword_1883EA000, v6, v7, "%s error updating userRecordID: %@", v10, 0x16u);
    sub_188442B84(v11, &qword_1EA90DC70, &unk_1886FA190);
    sub_1883FECE8();
    MEMORY[0x18CFD7E80]();
    sub_1883F8EAC();
    sub_1883FECE8();
    MEMORY[0x18CFD7E80]();
  }

  else
  {
  }

  v17 = sub_188505EAC(*(v0 + 96));
  v19 = v18;
  v20 = *(v0 + 96);
  if (v18)
  {
    v21 = v17;
  }

  else
  {

    v20 = 0;
    v21 = 0;
  }

  v22 = *(v0 + 64);
  v23 = *(v0 + 72);
  v25 = *(v0 + 48);
  v24 = *(v0 + 56);
  v26 = *(v0 + 40);
  type metadata accessor for SyncEngine(0);
  v27 = sub_1883FA19C();
  sub_1884D123C(v27, v28, v29, v30);
  v31 = sub_1884CF8E8(v26, v25, v24, v22, v20, v21, v19, 0, v23);
  v32 = *(v0 + 96);
  v33 = v31;
  v35 = v34;
  v37 = v36;
  v38 = sub_1883FA19C();
  sub_1884D11E8(v38, v39, v40, v41);

  v42 = v37;
  v43 = v37;
  switch(v37)
  {
    case 1u:
      v44 = sub_1883FA19C();
      sub_1884D11E8(v44, v45, v46, v47);
      v19 = 0;
      v21 = 0;
      v20 = 0;
      v42 = 0;
      v43 = 0;
      v37 = 1;
      goto LABEL_23;
    case 2u:
      v48 = v33;
      v49 = v35;
      v37 = 2;
      sub_18844CAB0(v33, v35, 2u);
      v42 = 0;
      v43 = v35;
      goto LABEL_23;
    case 3u:
      if (!v20)
      {
        v42 = 0;
        goto LABEL_20;
      }

      v43 = *(v0 + 40);
      if (v43)
      {
        v42 = *(v0 + 64);
        v50 = v42;
LABEL_20:
        v33 = 0;
        v43 = 0;
        goto LABEL_22;
      }

      v42 = 0;
      v33 = 0;
LABEL_22:
      v37 = -1;
LABEL_23:
      v51 = *(v0 + 24);
      *v51 = v33;
      *(v51 + 8) = v43;
      *(v51 + 16) = v37;
      v52 = *(v0 + 8);

      return v52(v20, v21, v19, v42);
    default:
      goto LABEL_23;
  }
}

void *sub_1884CF8E8(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  if (!a1)
  {
    if (a5)
    {
      if (!a8)
      {
        v16 = a5;

        v37 = 0xD000000000000050;
        v38 = 0x80000001887020A0;
        goto LABEL_19;
      }

      if (a9)
      {
        sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
        sub_1883FE060();
        v19 = a8;
        v20 = a8;
        v21 = a9;
        v22 = static NSObject.== infix(_:_:)();

        if (v22)
        {

          return 0;
        }
      }

      else
      {
        sub_1883FE060();
        v19 = a8;
        v39 = a8;
      }

      if (qword_1EA90C9F0 != -1)
      {
        sub_1883F74A0();
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_1883FDE5C(v40, qword_1EA90C9F8);
      v9 = v19;
      v41 = v19;
      v42 = a5;

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v43, v44))
      {
        sub_1883F9860();
        v45 = swift_slowAlloc();
        sub_1884038C8();
        v58 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v45 = 136315650;
        v46 = _typeName(_:qualified:)();
        v47 = v9;
        v48 = v42;
        v50 = sub_1883FE340(v46, v49, &v63);

        *(v45 + 4) = v50;
        *(v45 + 12) = 2080;
        v51 = CKStringFromAccountStatus([v42 accountStatus]);
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        v55 = sub_1883FE340(v52, v54, &v63);

        *(v45 + 14) = v55;
        *(v45 + 22) = 2112;
        *(v45 + 24) = v41;
        v9 = v47;
        *v58 = v47;
        v56 = v41;
        _os_log_impl(&dword_1883EA000, v43, v44, "%s Account signed in with status: %s, and userRecordID: %@", v45, 0x20u);
        sub_188442B84(v58, &qword_1EA90DC70, &unk_1886FA190);
        sub_1883FECE8();
        MEMORY[0x18CFD7E80]();
        swift_arrayDestroy();
        sub_1883FECE8();
        MEMORY[0x18CFD7E80]();
        sub_1883FECE8();
        MEMORY[0x18CFD7E80]();
      }

      else
      {
      }

      return v9;
    }

    return 0;
  }

  v9 = a4;
  if (!a5)
  {
    if (a4)
    {
      sub_1884D123C(a1, a2, a3, a4);
      v23 = qword_1EA90C9F0;
      v24 = v9;
      if (v23 != -1)
      {
        sub_1883F74A0();
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_1883FDE5C(v25, qword_1EA90C9F8);
      v26 = v24;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        sub_1884038C8();
        v30 = swift_slowAlloc();
        sub_1883F9860();
        v59 = swift_slowAlloc();
        v63 = v59;
        *v29 = 136315394;
        v31 = _typeName(_:qualified:)();
        v32 = v27;
        v34 = sub_1883FE340(v31, v33, &v63);

        *(v29 + 4) = v34;
        *(v29 + 12) = 2112;
        *(v29 + 14) = v26;
        *v30 = v9;
        v35 = v26;
        _os_log_impl(&dword_1883EA000, v32, v28, "%s Account signed out, with previous userRecordID: %@", v29, 0x16u);
        sub_188442B84(v30, &qword_1EA90DC70, &unk_1886FA190);
        sub_1883FECE8();
        MEMORY[0x18CFD7E80]();
        sub_1883FE944(v59);
        sub_1883FECE8();
        MEMORY[0x18CFD7E80]();
        v36 = sub_1884055A0();
        MEMORY[0x18CFD7E80](v36);
      }

      else
      {
      }

      return v9;
    }

    v16 = a1;

    v38 = 0x8000000188702100;
    v37 = 0xD00000000000004ELL;
LABEL_19:
    related decl 'e' for CKErrorCode.init(_:description:)(1, v37, v38);
    swift_willThrow();

    goto LABEL_20;
  }

  type metadata accessor for SyncEngine(0);
  sub_1884D123C(a1, a2, a3, v9);
  sub_1884D123C(a5, a6, a7, a8);
  v16 = v9;
  v17 = v9;
  v9 = a8;
  v18 = v61;
  v62 = sub_1884CFEFC(a1, a2, a3, v17, a5, a6, a7, a8);

  if (v18)
  {

LABEL_20:
    return v9;
  }

  return v62;
}

void *sub_1884CFEFC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_188505EAC(a1);
  v15 = v14;
  v16 = sub_188505EAC(a5);
  if (!v15)
  {
    if (!v17)
    {
      return 0;
    }

LABEL_13:

    if (a4)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (!v17)
  {
    goto LABEL_13;
  }

  if (v13 == v16 && v15 == v17)
  {

    return 0;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    return 0;
  }

  if (a4)
  {
LABEL_9:
    if (a8)
    {
      sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
      v20 = a8;
      v21 = a4;
      if (static NSObject.== infix(_:_:)())
      {

        return 0;
      }

      v69[3] = v8;
      _StringGuts.grow(_:)(28);

      v43 = CKStringFromAccountStatus([a1 accountStatus]);
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      MEMORY[0x18CFD5140](v44, v46);

      MEMORY[0x18CFD5140](0xD000000000000010, 0x8000000188702150);
      v47 = [v21 description];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      MEMORY[0x18CFD5140](v48, v50);

      _StringGuts.grow(_:)(28);

      v69[0] = 0x203A737574617473;
      v69[1] = 0xE800000000000000;
      v51 = CKStringFromAccountStatus([a5 accountStatus]);
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      MEMORY[0x18CFD5140](v52, v54);

      MEMORY[0x18CFD5140](0xD000000000000010, 0x8000000188702150);
      v55 = [v20 description];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      MEMORY[0x18CFD5140](v56, v58);

      if (qword_1EA90C9F0 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_1883FDE5C(v59, qword_1EA90C9F8);

      v36 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v36, v60))
      {
        v61 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v69[0] = v67;
        *v61 = 136315650;
        v62 = _typeName(_:qualified:)();
        v68 = v60;
        v64 = sub_1883FE340(v62, v63, v69);

        *(v61 + 4) = v64;
        *(v61 + 12) = 2080;
        v65 = sub_1883FE340(0x203A737574617473, 0xE800000000000000, v69);

        *(v61 + 14) = v65;
        *(v61 + 22) = 2080;
        v66 = sub_1883FE340(0x203A737574617473, 0xE800000000000000, v69);

        *(v61 + 24) = v66;
        _os_log_impl(&dword_1883EA000, v36, v68, "%s Account switched from previous: %s to current: %s", v61, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x18CFD7E80](v67, -1, -1);
        MEMORY[0x18CFD7E80](v61, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v33 = qword_1EA90C9F0;
      v34 = a4;
      if (v33 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_1883FDE5C(v35, qword_1EA90C9F8);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v69[0] = v39;
        *v38 = 136315138;
        v40 = _typeName(_:qualified:)();
        v42 = sub_1883FE340(v40, v41, v69);

        *(v38 + 4) = v42;
        _os_log_impl(&dword_1883EA000, v36, v37, "%s Insufficient info to determine account switch. Posting a SignOut event as a fallback", v38, 0xCu);
        sub_1883FE944(v39);
        MEMORY[0x18CFD7E80](v39, -1, -1);
        MEMORY[0x18CFD7E80](v38, -1, -1);
      }
    }

    return a4;
  }

LABEL_14:
  if (a8)
  {
    v22 = qword_1EA90C9F0;
    v23 = a8;
    if (v22 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1883FDE5C(v24, qword_1EA90C9F8);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v69[0] = v28;
      *v27 = 136315138;
      v29 = _typeName(_:qualified:)();
      v31 = sub_1883FE340(v29, v30, v69);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1883EA000, v25, v26, "%s Insufficient info to determine account switch. Posting a SignIn event as a fallback", v27, 0xCu);
      sub_1883FE944(v28);
      MEMORY[0x18CFD7E80](v28, -1, -1);
      MEMORY[0x18CFD7E80](v27, -1, -1);
    }

    return a8;
  }

  else
  {
    related decl 'e' for CKErrorCode.init(_:description:)(1, 0xD000000000000039, 0x8000000188702170);
    swift_willThrow();
  }

  return a4;
}

uint64_t sub_1884D0684(uint64_t a1)
{
  v4 = *(v2[2] + 128);
  v2[3] = v4;
  if (sub_18850BCF0())
  {
    sub_188404FB8();
    v6 = [v5 accountStatus];

    if (v6 == 1)
    {
      if (v4)
      {

        sub_1883F816C();

        return v7();
      }
    }

    else
    {
    }
  }

  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F74A0();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1883FDE5C(v9, qword_1EA90C9F8);

  v10 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1883FF744();
  if (sub_1883F9084())
  {
    sub_1884147B0();
    v11 = swift_slowAlloc();
    sub_1883F9860();
    swift_slowAlloc();
    sub_1883FF2D4();
    *v11 = 136315138;
    v12 = sub_1883FE43C();
    sub_1883FC788(v12, v13, v14, v15);
    sub_1883FE2FC();
    *(v11 + 4) = v3;
    sub_1883F7A44(&dword_1883EA000, v16, v17, "%s will fetch the latest account status because our cached account is not ready to sync");
    sub_1883F8EAC();
    v18 = sub_1884055A0();
    MEMORY[0x18CFD7E80](v18);
  }

  v19 = swift_task_alloc();
  v2[4] = v19;
  *v19 = v2;
  v19[1] = sub_1884D086C;

  return sub_18840307C();
}

uint64_t sub_1884D086C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1884D0964(uint64_t a1)
{
  v3 = *(v2 + 24);
  if (sub_18850BCF0())
  {
    sub_188404FB8();
    v5 = [v4 accountStatus];

    if (v5 == 1)
    {
      if (v3)
      {

        sub_1883F816C();
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v7 = sub_18850BCF0();
  v11 = v7;
  if (v7)
  {
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = v7;
    sub_1884D11E8(v11, v12, v13, v14);
    v11 = [v15 accountStatus];
  }

  if (![objc_opt_self() errorForAccountStatus_])
  {
    related decl 'e' for CKErrorCode.init(_:description:)(1, 0xD000000000000044, 0x8000000188702050);
  }

  swift_willThrow();
  sub_1883F816C();
LABEL_11:

  return v6();
}

uint64_t sub_1884D0AC0()
{
  sub_1883F7120();
  v1[19] = v0;
  v2 = sub_18844E6FC(&qword_1EA90E488, &unk_1886FB320);
  sub_1883FDBE0(v2);
  v1[21] = v3;
  v1[22] = swift_task_alloc();
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884D0B78(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1883FD7A0();
  sub_1883FC738();
  v21 = v20;
  v22 = v20;
  v23 = v20 + 10;
  v24 = v20 + 18;
  v25 = v20[21];
  v26 = v20[20];
  v39 = *(v21[19] + 16);
  v21[2] = v22;
  v21[7] = v24;
  v21[3] = sub_1884D0CF4;
  swift_continuation_init();
  v21[17] = v26;
  v27 = sub_188403664(v21 + 14);
  sub_1883F4C5C(0, &unk_1EA90C790, off_1E70B9FA0);
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  sub_1884056EC();
  v28 = sub_18840AE90();
  v29(v28);
  sub_1883F83B4();
  v21[11] = 1107296256;
  v21[12] = sub_18840EED8;
  v21[13] = &unk_1EFA2BFA0;
  [v39 accountInfoWithCompletionHandler_];
  (*(v25 + 8))(v27, v26);
  sub_1883F9968();

  return MEMORY[0x1EEE6DEC8](v30, v31, v32, v33, v34, v35, v36, v37, v39, a10, a11, a12, a13, a14);
}

uint64_t sub_1884D0CF4()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884D0DF4()
{
  sub_1883F7120();
  v1 = *(v0 + 144);

  sub_1883F7910();

  return v2(v1);
}

uint64_t sub_1884D0E58()
{
  sub_1883F7120();
  v1[19] = v0;
  v2 = sub_18844E6FC(&qword_1EA90E480, &unk_1886FB310);
  sub_1883FDBE0(v2);
  v1[21] = v3;
  v1[22] = swift_task_alloc();
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884D0F10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1883FD7A0();
  sub_1883FC738();
  v21 = v20;
  v22 = v20;
  v23 = v20 + 10;
  v24 = v20 + 18;
  v25 = v20[21];
  v26 = v20[20];
  v39 = *(v21[19] + 16);
  v21[2] = v22;
  v21[7] = v24;
  v21[3] = sub_1884D108C;
  swift_continuation_init();
  v21[17] = v26;
  v27 = sub_188403664(v21 + 14);
  sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  sub_1884056EC();
  v28 = sub_18840AE90();
  v29(v28);
  sub_1883F83B4();
  v21[11] = 1107296256;
  v21[12] = sub_18840ABB0;
  v21[13] = &unk_1EFA2BF78;
  [v39 fetchUserRecordIDWithCompletionHandler_];
  (*(v25 + 8))(v27, v26);
  sub_1883F9968();

  return MEMORY[0x1EEE6DEC8](v30, v31, v32, v33, v34, v35, v36, v37, v39, a10, a11, a12, a13, a14);
}

uint64_t sub_1884D108C()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884D118C()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1884D11E8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
  }
}

double sub_1884D123C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v5 = a4;
    v6 = a1;
  }

  return result;
}

uint64_t sub_1884D12A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1883FD7A0();
  a19 = v22;
  a20 = v23;
  sub_1883FC738();
  a18 = v20;
  v24 = sub_18850BCF0();
  if (!v24)
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F74A0();
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1883FDE5C(v34, qword_1EA90C9F8);

    v33 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1883FF744();
    if (sub_1883F9084())
    {
      sub_1884147B0();
      v35 = swift_slowAlloc();
      sub_1883F9860();
      a9 = swift_slowAlloc();
      *v35 = 136315138;
      v36 = sub_1883FE43C();
      sub_1883FE340(v36, v37, &a9);
      sub_1883FE2FC();
      *(v35 + 4) = v21;
      sub_1883F7A44(&dword_1883EA000, v38, v39, "%s Unable to fetch latest accountInfo to check readiness.");
      sub_1883F8EAC();
      v40 = sub_1884055A0();
      MEMORY[0x18CFD7E80](v40);
    }

    goto LABEL_9;
  }

  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  v32 = *(v20 + 16);
  v33 = v24;
  sub_1884D11E8(v28, v29, v30, v31);
  if ((*(v32 + 280) & 1) != 0 && ([v33 deviceToDeviceEncryptionAvailability] & 2) != 0)
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F74A0();
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1883FDE5C(v41, qword_1EA90C9F8);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v42, v43))
    {
      sub_1884147B0();
      v44 = swift_slowAlloc();
      sub_1883F9860();
      a9 = swift_slowAlloc();
      *v44 = 136315138;
      v45 = sub_1883FE43C();
      v47 = sub_1883FE340(v45, v46, &a9);

      *(v44 + 4) = v47;
      sub_1883F8468(&dword_1883EA000, v48, v49, "%s we were waiting for device to device encryption, and our patience was rewarded. Now we have it! Let's schedule a sync.");
      sub_1884101E8();
      sub_1883FECE8();
      MEMORY[0x18CFD7E80]();
      sub_1883FECE8();
      MEMORY[0x18CFD7E80]();
    }

    *(v32 + 280) = 0;
  }

  v50 = *(v20 + 16);
  if (*(v50 + 281) != 1 || ([v33 needsToVerifyTerms] & 1) != 0)
  {
LABEL_9:

    goto LABEL_23;
  }

  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F74A0();
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_1883FDE5C(v51, qword_1EA90C9F8);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v52, v53))
  {
    sub_1884147B0();
    v54 = swift_slowAlloc();
    sub_1883F9860();
    a9 = swift_slowAlloc();
    *v54 = 136315138;
    v55 = sub_1883FE43C();
    v57 = sub_1883FE340(v55, v56, &a9);

    *(v54 + 4) = v57;
    sub_1883F8468(&dword_1883EA000, v58, v59, "%s terms have been verified. Scheduling sync.");
    sub_1884101E8();
    sub_1883FECE8();
    MEMORY[0x18CFD7E80]();
    sub_1883FECE8();
    MEMORY[0x18CFD7E80]();
  }

  *(v50 + 281) = 0;
LABEL_23:
  sub_1883F7910();
  sub_1883F9968();

  return v62(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12);
}

void sub_1884D1648(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_18844CAB0(a1, a2, a3);
  }
}

id sub_1884D165C(id result, void *a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1884D1670(result, a2, a3);
  }

  return result;
}

id sub_1884D1670(id result, void *a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return result;
    }

    v4 = result;
    result = a2;
  }

  return result;
}

uint64_t sub_1884D16BC()
{
  sub_1883F78E0();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_1883FDA74(v6);
  *v7 = v8;
  v7[1] = sub_1884061E0;

  return sub_1884CDEAC(v2, v3, v4, v5);
}

void sub_1884D1780()
{

  sub_1884D11E8(v3, v2, v1, v0);
}

uint64_t sub_1884D17A0()
{
  sub_1883F7120();
  *(v1 + 64) = v0;
  *(v1 + 72) = *v2;
  *(v1 + 88) = *(v2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1884D183C, 0, 0);
}

uint64_t sub_1884D183C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  *(v0 + 56) = 0;
  *(v0 + 48) = 0;
  v4 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v5 = _os_activity_create(&dword_1883EA000, "engine/fetch-asset", v4, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 96) = v5;
  os_activity_scope_enter(v5, (v0 + 48));
  *(v0 + 16) = 1;
  *(v0 + 24) = v3;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  v6 = v3;
  v7 = v2;
  v8 = v1;
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_1884D197C;

  return sub_1884D1C14(v0 + 16);
}

uint64_t sub_1884D197C()
{
  sub_1883F78E0();
  v3 = v2;
  v4 = *v1;
  sub_1883F7B78();
  *v5 = v4;
  v6 = *v1;
  sub_1883F7110();
  *v7 = v6;
  *(v4 + 112) = v0;

  if (v0)
  {
    v8 = sub_1884D1B68;
  }

  else
  {
    *(v4 + 120) = v3;
    v8 = sub_1884D1AB8;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1884D1AB8()
{
  sub_1883F78E0();
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);

  os_activity_scope_leave((v0 + 48));
  swift_unknownObjectRelease();
  sub_1883F7910();
  v4 = *(v0 + 120);

  return v3(v4);
}

uint64_t sub_1884D1B68()
{
  sub_1883F78E0();
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);

  os_activity_scope_leave((v0 + 48));
  swift_unknownObjectRelease();
  sub_1883F816C();

  return v3();
}

uint64_t sub_1884D1C14(uint64_t a1)
{
  *(v2 + 48) = v1;
  *(v2 + 96) = *a1;
  *(v2 + 56) = *(a1 + 8);
  *(v2 + 72) = *(a1 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1884D1C4C, v1, 0);
}

uint64_t sub_1884D1C4C()
{
  sub_1883F7120();
  v1 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 24) = *(v0 + 56);
  *(v0 + 40) = v1;

  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_1884D1D1C;

  return sub_1884C689C();
}

uint64_t sub_1884D1D1C()
{
  sub_1883F78E0();
  v3 = v2;
  sub_1883F78EC();
  v5 = v4;
  sub_1883F7B78();
  *v6 = v5;
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v5 + 88) = v0;

  if (v0)
  {
    v9 = *(v5 + 48);

    return MEMORY[0x1EEE6DFA0](sub_1884D1E5C, v9, 0);
  }

  else
  {

    v10 = *(v7 + 8);

    return v10(v3);
  }
}

uint64_t sub_1884D1E5C()
{
  sub_1883F7120();

  sub_1883F816C();

  return v0();
}

uint64_t sub_1884D1EB8(uint64_t a1)
{
  *(v1 + 16) = *a1;
  v2 = *(a1 + 24);
  *(v1 + 24) = *(a1 + 8);
  *(v1 + 40) = v2;
  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v1;
  v3[1] = sub_1884D1F68;

  return sub_1884D2090();
}

uint64_t sub_1884D1F68()
{
  sub_1883F7120();
  v3 = v2;
  sub_1883F78EC();
  v4 = *v1;
  sub_1883F7110();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_188415198, 0, 0);
  }

  else
  {
    sub_1883F7910();

    return v7(v3);
  }
}

uint64_t sub_1884D2090()
{
  sub_1883F78E0();
  v3 = v2;
  *(v1 + 536) = v0;
  v4 = type metadata accessor for URL();
  *(v1 + 544) = v4;
  *(v1 + 552) = *(v4 - 8);
  *(v1 + 560) = swift_task_alloc();
  *(v1 + 728) = *v3;
  *(v1 + 568) = *(v3 + 8);
  *(v1 + 584) = *(v3 + 24);
  v5 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1884D216C()
{
  v38 = v0;
  if (qword_1EA90C9F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = type metadata accessor for Logger();
  *(v0 + 592) = sub_1883FDE5C(v4, qword_1EA90C9F8);

  v5 = v3;
  v6 = v2;
  v7 = v1;
  v8 = Logger.logObject.getter();
  LOBYTE(v2) = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v2))
  {
    v9 = *(v0 + 584);
    v10 = *(v0 + 576);
    v11 = *(v0 + 568);
    v32 = *(v0 + 728);
    v12 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = sub_1883FE43C();
    v15 = sub_1883FE340(v13, v14, &v33);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v34 = v32;
    v35 = v11;
    v36 = v10;
    v37 = v9;
    v16 = v11;
    v17 = v10;
    v18 = v9;
    Asset = CKSyncEngine.FetchAssetContext.description.getter();
    v21 = v20;
    v22 = v36;
    v23 = v37;

    v24 = sub_1883FE340(Asset, v21, &v33);

    *(v12 + 14) = v24;
    sub_1884037B8(&dword_1883EA000, v25, v26, "%s fetching asset with context %s");
    swift_arrayDestroy();
    sub_1883F7B60();
    sub_1883F7B60();
  }

  static Task<>.checkCancellation()();
  v27 = *(v0 + 576);
  sub_1883FB6F8(*(v0 + 568));
  v28 = v27;
  *(v0 + 96) = v27;
  *(v0 + 144) = 0;
  *(v0 + 160) = 0xC000000000000000;
  v29 = v28;
  v30 = swift_task_alloc();
  *(v0 + 600) = v30;
  *v30 = v0;
  sub_1883FE6B8(v30);

  return sub_1883FBEA8();
}

uint64_t sub_1884D2474()
{
  sub_1883F78E0();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  memcpy(v1 + 2, v1 + 12, 0x50uLL);
  sub_1883FBF6C((v1 + 2));
  v4 = swift_task_alloc();
  v1[76] = v4;
  *v4 = v3;
  v4[1] = sub_1884D25C0;

  return sub_1884D0668();
}

uint64_t sub_1884D25C0()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 616) = v0;

  if (v0)
  {
    v7 = *(v3 + 536);

    v8 = sub_1884D38D0;
    v9 = v7;
  }

  else
  {
    v9 = *(v3 + 536);
    v8 = sub_1884D26D0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, 0);
}

uint64_t sub_1884D26D0()
{
  v4 = v1[72];
  v1[78] = [objc_allocWithZone(CKOperationConfiguration) init];
  v5 = [v4 recordID];
  if (!v5 || (v0 = v5, v13 = [v5 zoneID], v1[79] = v13, v0, !v13))
  {
    sub_1883F8EE0(v5, v6, v7, v8, v9, v10, v11, v12, v29, v30);
    v21 = sub_1883F986C();
    v22 = v3;
    v23 = v2;
    v24 = v21;
    v25 = v0;
    v26 = swift_task_alloc();
    v1[83] = v26;
    *v26 = v1;
    sub_1883F9374(v26);
    sub_1883F7E58();

    __asm { BR              X8 }
  }

  sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
  inited = swift_initStackObject();
  v1[80] = inited;
  *(inited + 16) = xmmword_1886F79A0;
  *(inited + 32) = v13;
  v15 = v13;
  v16 = swift_task_alloc();
  v1[81] = v16;
  *v16 = v1;
  sub_1883FE6B8(v16);
  sub_1883F7E58();

  return sub_1884E5CF0(v17, v18);
}

uint64_t sub_1884D288C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;
  *(v4 + 656) = v3;

  swift_setDeallocating();
  sub_1884E3A30();
  v5 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1884D29AC()
{
  v4 = v1[82];
  if (v4)
  {
    v5 = v1[79];
    if (v4[2])
    {
      v0 = v1[78];
      v6 = v4[4];
      v7 = v4[5];

      sub_1884DFA94(v6, v7, v0);
    }

    else
    {
    }
  }

  else
  {
    v5 = v1[79];
  }

  sub_1883F8EE0(v8, v9, v10, v11, v12, v13, v14, v15, v24, v25);
  v16 = sub_1883F986C();
  v17 = v3;
  v18 = v2;
  v19 = v16;
  v20 = v0;
  v21 = swift_task_alloc();
  v1[83] = v21;
  *v21 = v1;
  sub_1883F9374(v21);
  sub_1883F7E58();

  __asm { BR              X8 }
}

uint64_t sub_1884D2AA8()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 672) = v5;
  *(v3 + 680) = v0;

  if (v0)
  {
    v6 = *(v3 + 536);
    v7 = sub_1884D39B4;
  }

  else
  {
    v8 = *(v3 + 536);

    v7 = sub_1884D2BC4;
    v6 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1884D2BC4()
{
  v21 = v0;
  v1 = *(v0 + 672);
  if (!v1)
  {
    v11 = *(v0 + 576);

    if ((*(v0 + 728) & 1) == 0)
    {
      sub_18840D758();
      v15 = *(v0 + 576);
      v20 = v15;
      if (v16)
      {
        sub_18850BE74(&v20, 0);
      }

      else
      {
        sub_18850BEFC(&v20);
      }

      goto LABEL_15;
    }

LABEL_7:

LABEL_15:
    *(v0 + 696) = 0;
    v17 = swift_task_alloc();
    v18 = sub_1883FDB3C(v17);
    *v18 = v19;
    sub_1883F74B4(v18);

    return sub_18840E178();
  }

  v2 = [*(v0 + 672) fileURL];
  if (v2)
  {
    v3 = *(v0 + 560);
    v4 = *(v0 + 552);
    v5 = *(v0 + 544);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v6);
    v2 = v7;
    (*(v4 + 8))(v3, v5);
  }

  v8 = *(v0 + 576);
  v9 = *(v0 + 728);
  [v8 setFileURL_];

  [v8 setDownloaded_];
  v10 = *(v0 + 576);
  if (v9)
  {

    goto LABEL_7;
  }

  *(v0 + 416) = v10;
  *(v0 + 464) = 0;
  *(v0 + 480) = 0xD000000000000000;
  v12 = v10;
  v13 = swift_task_alloc();
  *(v0 + 688) = v13;
  *v13 = v0;
  sub_1883FE6B8(v13);

  return sub_1883FBEA8();
}

uint64_t sub_1884D2DEC()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  memcpy((v2 + 336), (v2 + 416), 0x50uLL);
  sub_1883FBF6C(v2 + 336);
  v6 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884D2EF4()
{
  sub_1883F78E0();
  v10 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 576);

  sub_18840D758();
  v3 = *(v0 + 576);
  v9 = v3;
  if (v4)
  {
    sub_18850BE74(&v9, 0);
  }

  else
  {
    sub_18850BEFC(&v9);
  }

  *(v0 + 696) = 0;
  v5 = swift_task_alloc();
  v6 = sub_1883FDB3C(v5);
  *v6 = v7;
  sub_1883F74B4(v6);

  return sub_18840E178();
}

uint64_t sub_1884D2FC0()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1884D30B8()
{
  sub_1883F7120();
  v1 = v0[72];
  v0[32] = v1;
  v0[33] = 0;
  v0[38] = 0;
  v0[40] = 0xE000000000000000;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[89] = v3;
  *v3 = v0;
  sub_1883FE6B8(v3);

  return sub_1883FBEA8();
}

uint64_t sub_1884D3164()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  memcpy((v2 + 176), (v2 + 256), 0x50uLL);
  sub_1883FBF6C(v2 + 176);
  v6 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884D326C()
{
  v74 = v0;
  v1 = *(v0 + 696);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  v5 = *(v0 + 568);
  if (!v1)
  {

    v34 = v5;
    v35 = v4;
    v36 = v3;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 584);
      v40 = *(v0 + 576);
      v41 = *(v0 + 568);
      v67 = *(v0 + 728);
      v42 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v42 = 136315394;
      v43 = sub_1883FE43C();
      v45 = sub_1883FE340(v43, v44, &v69);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2080;
      v70 = v67;
      v71 = v41;
      v72 = v40;
      v73 = v39;
      v68 = v41;
      v46 = v40;
      v47 = v39;
      Asset = CKSyncEngine.FetchAssetContext.description.getter();
      v50 = v49;
      v51 = v72;
      v52 = v73;

      v53 = sub_1883FE340(Asset, v50, &v69);

      *(v42 + 14) = v53;
      sub_1884037B8(&dword_1883EA000, v54, v55, "%s finished fetching asset with context %s");
      swift_arrayDestroy();
      sub_1883F7B60();
      sub_1883F7B60();
    }

    else
    {
      v60 = *(v0 + 576);
      v61 = *(v0 + 568);
    }

    sub_1883F7910();
    sub_1883F8300();

    __asm { BRAA            X2, X16 }
  }

  v6 = v1;

  v7 = v5;
  v8 = v4;
  v9 = v3;
  v10 = v6;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 584);
    v66 = v10;
    v14 = *(v0 + 576);
    v15 = *(v0 + 568);
    v64 = *(v0 + 728);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v69 = v65;
    *v16 = 136315650;
    v18 = sub_1883FE43C();
    v20 = sub_1883FE340(v18, v19, &v69);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v70 = v64;
    v71 = v15;
    v72 = v14;
    v73 = v13;
    v21 = v15;
    v22 = v14;
    v23 = v13;
    v24 = CKSyncEngine.FetchAssetContext.description.getter();
    v26 = v25;
    v27 = v72;
    v28 = v73;

    v10 = v66;
    v29 = sub_1883FE340(v24, v26, &v69);

    *(v16 + 14) = v29;
    *(v16 + 22) = 2112;
    v30 = v66;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v31;
    *v17 = v31;
    _os_log_impl(&dword_1883EA000, v11, v12, "%s error fetching asset with context %s: %@", v16, 0x20u);
    sub_188462FE0(v17);
    sub_1883F7B60();
    v2 = v65;
    swift_arrayDestroy();
    sub_1883F7B60();
    sub_1883F7B60();
  }

  if (*(v0 + 728))
  {
    sub_1883F8C2C();

    sub_1883F816C();
    sub_1883F8300();

    __asm { BRAA            X1, X16 }
  }

  v56 = v10;
  v57 = swift_task_alloc();
  *(v0 + 720) = v57;
  *v57 = v0;
  v57[1] = sub_1884D3738;
  sub_1883F8300();

  return sub_1884115F4();
}

uint64_t sub_1884D3738()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 696);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  v5 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1884D3848()
{
  sub_1883F8C2C();

  sub_1883F816C();

  return v3();
}

uint64_t sub_1884D38D0()
{
  sub_1883F78E0();
  v1 = sub_18840EFC4(*(v0 + 616));
  if (*(v0 + 728))
  {
  }

  else
  {
    sub_18840D758();
    v2 = *(v0 + 576);
    if (v3)
    {
      sub_18840B028();
      sub_18850BE74(v4, 0);
    }

    else
    {
      sub_18840B028();
      sub_18850BEFC(v5);
    }
  }

  *(v0 + 696) = v1;
  if (v1)
  {
    v6 = v1;
    sub_18840F1E8(v1);
  }

  v7 = swift_task_alloc();
  v8 = sub_1883FDB3C(v7);
  *v8 = v9;
  sub_1883F74B4(v8);

  return sub_18840E178();
}

uint64_t sub_1884D39B4()
{
  sub_1883F78E0();
  v1 = *(v0 + 624);
  v2 = *(v0 + 568);

  v3 = sub_18840EFC4(*(v0 + 680));
  if (*(v0 + 728))
  {
  }

  else
  {
    sub_18840D758();
    v4 = *(v0 + 576);
    if (v5)
    {
      sub_18840B028();
      sub_18850BE74(v6, 0);
    }

    else
    {
      sub_18840B028();
      sub_18850BEFC(v7);
    }
  }

  *(v0 + 696) = v3;
  if (v3)
  {
    v8 = v3;
    sub_18840F1E8(v3);
  }

  v9 = swift_task_alloc();
  v10 = sub_1883FDB3C(v9);
  *v10 = v11;
  sub_1883F74B4(v10);

  return sub_18840E178();
}

uint64_t sub_1884D3AB0()
{
  sub_1883F7120();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1884D3B44;

  return sub_1884D1EB8(v2);
}

uint64_t sub_1884D3B44()
{
  sub_1883F7120();
  v2 = v1;
  sub_1883F78EC();
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  sub_1883F7910();

  return v5(v2);
}

uint64_t sub_1884D3C2C()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F78D4();
  *v6 = v5;
  *(v8 + 2016) = v7;
  *(v8 + 1952) = v0;

  v9 = *(v2 + 1856);

  if (v0)
  {
    v10 = sub_1884D3D70;
  }

  else
  {
    v10 = sub_1884D3E08;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1884D3D70()
{
  sub_1883F78E0();
  v3 = sub_18840EFC4(*(v2 + 1952));
  v4 = sub_1883FE500(v3);
  v5 = sub_18842D4B4();
  sub_18840F1E8(v5);

  *(v2 + 1984) = v0;
  v6 = swift_task_alloc();
  v7 = sub_188410CE8(v6);
  *v7 = v8;
  sub_1883F74DC(v7);

  return sub_18840E178();
}

uint64_t sub_1884D3E08(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *(v9 + 2016);
  if ((*(v9 + 1928) & 2) != 0)
  {
LABEL_13:
    *(v9 + 2017) = v10;
    v23 = sub_1883FA45C();
    sub_1883F8010(v23);
    v24 = swift_task_alloc();
    *(v9 + 1968) = v24;
    *v24 = v9;
    sub_1883F8F18(v24);
    goto LABEL_14;
  }

  if ((*(v9 + 2016) & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1884E01C8(a1, a2, a3, a4, a5, a6, a7, a8, v28);
  sub_1884023F4();
  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(v9 + 88);
  *(v9 + 1928) = v12;
  if ((v12 & 1) == 0)
  {
    if ((v12 & 2) == 0)
    {
LABEL_6:
      v13 = sub_1884D44E8();
      v14 = v13;
      if (v13)
      {
        v15 = v13;
        v16 = sub_18842D4B4();
        sub_18840F1E8(v16);
      }

      *(v9 + 1984) = v14;
      v17 = swift_task_alloc();
      v18 = sub_188410CE8(v17);
      *v18 = v19;
      sub_1883F74DC(v18);

      return sub_18840E178();
    }

    v10 = 0;
    goto LABEL_13;
  }

  v21 = sub_1883FA45C();
  sub_1883FAAD4(v21);
  v22 = swift_task_alloc();
  *(v9 + 1944) = v22;
  *v22 = v9;
  sub_1883FE6C4(v22);
LABEL_14:
  v25 = sub_1883FEB9C();

  return sub_188427A34(v25, v26, v27);
}

uint64_t sub_1884D3FA4()
{
  sub_1883FB4AC();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 1976) = v0;

  v7 = *(v4 + 1856);
  if (v0)
  {

    v8 = sub_1884D4290;
  }

  else
  {
    *(v5 + 2018) = v3 & 1;

    v8 = sub_1884D40F8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1884D40F8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if ((*(v9 + 2017) & 1) == 0 && !*(v9 + 2018))
  {
    goto LABEL_6;
  }

  sub_1884E01C8(a1, a2, a3, a4, a5, a6, a7, a8, v27);
  sub_1884023F4();
  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(v9 + 88);
  *(v9 + 1928) = v11;
  if (v11)
  {
    v20 = sub_1883FA45C();
    sub_1883FAAD4(v20);
    v21 = swift_task_alloc();
    *(v9 + 1944) = v21;
    *v21 = v9;
    sub_1883FE6C4(v21);
  }

  else
  {
    if ((v11 & 2) == 0)
    {
LABEL_6:
      v12 = sub_1884D44E8();
      v13 = v12;
      if (v12)
      {
        v14 = v12;
        v15 = sub_18842D4B4();
        sub_18840F1E8(v15);
      }

      *(v9 + 1984) = v13;
      v16 = swift_task_alloc();
      v17 = sub_188410CE8(v16);
      *v17 = v18;
      sub_1883F74DC(v17);

      return sub_18840E178();
    }

    *(v9 + 2017) = 0;
    v22 = sub_1883FA45C();
    sub_1883F8010(v22);
    v23 = swift_task_alloc();
    *(v9 + 1968) = v23;
    *v23 = v9;
    sub_1883F8F18(v23);
  }

  v24 = sub_1883FEB9C();

  return sub_188427A34(v24, v25, v26);
}

uint64_t sub_1884D4290()
{
  sub_1883F78E0();
  v3 = sub_18840EFC4(*(v2 + 1976));
  v4 = sub_1883FE500(v3);
  v5 = sub_18842D4B4();
  sub_18840F1E8(v5);

  *(v2 + 1984) = v0;
  v6 = swift_task_alloc();
  v7 = sub_188410CE8(v6);
  *v7 = v8;
  sub_1883F74DC(v7);

  return sub_18840E178();
}

uint64_t sub_1884D4328()
{
  sub_1883F78E0();

  v3 = sub_18840EFC4(*(v2 + 1920));
  v4 = sub_1883FE500(v3);
  v5 = sub_18842D4B4();
  sub_18840F1E8(v5);

  *(v2 + 1984) = v0;
  v6 = swift_task_alloc();
  v7 = sub_188410CE8(v6);
  *v7 = v8;
  sub_1883F74DC(v7);

  return sub_18840E178();
}

void sub_1884D43C8(void *a1, uint64_t a2)
{
  v3 = v2;
  os_unfair_lock_lock((v3 + 96));
  if (a1)
  {
    v6 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v3 + 104);
    sub_1884AF4F4(v6, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + 104) = v8;
  }

  else
  {
  }

  os_unfair_lock_unlock((v3 + 96));
}

void *sub_1884D4468()
{
  os_unfair_lock_lock((v0 + 112));
  v1 = *(v0 + 120);
  v2 = v1;
  os_unfair_lock_unlock((v0 + 112));
  return v1;
}

void sub_1884D44A0(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 112));

  *(v1 + 120) = a1;

  os_unfair_lock_unlock((v1 + 112));
}

void *sub_1884D44E8()
{
  result = sub_1884D4468();
  if (!result)
  {
    os_unfair_lock_lock((v0 + 96));
    v2 = *(v0 + 104);

    os_unfair_lock_unlock((v0 + 96));
    if (*(v2 + 16))
    {
      sub_18847F360(v2);
      v4 = v3;

      return sub_18847FB50(v4, 0xD000000000000023, 0x8000000188702300);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *sub_1884D4574()
{
  v1 = v0;
  v2 = sub_1884D4468();
  if (!v2)
  {
    os_unfair_lock_lock((v1 + 96));
    v3 = *(v1 + 104);
    if (*(v3 + 16) && (sub_188486310(), (v5 & 1) != 0))
    {
      v2 = *(*(v3 + 56) + 8 * v4);
      v6 = v2;
    }

    else
    {
      v2 = 0;
    }

    os_unfair_lock_unlock((v1 + 96));
  }

  return v2;
}

uint64_t sub_1884D45EC()
{
  sub_1883F78E0();
  v3 = v2;
  sub_1883F78EC();
  v5 = v4;
  sub_1883F7B78();
  *v6 = v5;
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3 & 1;
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1884D4720()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F78D4();
  *v6 = v5;
  *(v8 + 1056) = v7;
  *(v8 + 1064) = v9;
  *(v8 + 1072) = v10;
  *(v8 + 1121) = v11;
  *(v8 + 1080) = v0;

  v12 = *(v2 + 960);
  if (v0)
  {
    v13 = sub_1884D56F4;
  }

  else
  {
    v13 = sub_1884D4854;
  }

  return MEMORY[0x1EEE6DFA0](v13, v12, 0);
}

uint64_t sub_1884D4854()
{
  sub_1884E0128();
  v54 = v0;
  v2 = *(v0 + 1056);
  [*(*(v0 + 992) + 16) setServerChangeTokenForDatabase_];
  v3 = v2[2];
  *(v0 + 1088) = v3;
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = *(v0 + 1056);
    *(v0 + 944) = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = (v5 + 32);
    do
    {
      v7 = *v6++;
      v8 = v7;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
    v4 = *(v0 + 944);
  }

  v9 = (v0 + 1016);
  v10 = *(v0 + 1064);
  sub_18850BFF4(1, v4);

  v11 = 0;
  v12 = *(v10 + 16);
  v13 = (v10 + 32);
  while (v12 != v11)
  {
    if (v11 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_26;
    }

    ++v11;
    v14 = *v13;
    v13 += 2;
    [*(*(v0 + 992) + 16) removeRecordZoneWithZoneID_];
  }

  if (!(v2[2] | v12))
  {

    if ((*(v0 + 1121) & 1) == 0)
    {
      sub_1884E00A8();
      v38 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      sub_1883FF744();
      if (sub_1883F9084())
      {
        sub_1883F9984();
        v2 = sub_1883F8C00();
        __src[0] = v2;
        *v13 = 136315138;
        v39 = sub_1883FE43C();
        sub_1883FE340(v39, v40, __src);
        sub_1883FE2FC();
        *(v13 + 4) = &off_1E70C3000;
        sub_1883F831C();
        _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
        sub_1883FE944(v2);
        sub_1883FD784();
        sub_1883F82B8();
      }

      [sub_1883F988C() setNeedsToFetchDatabaseChanges_];
      v46 = *(v11 + 16);
      Date.init()();
      Date._bridgeToObjectiveC()();
      v47 = sub_1884E000C();
      v48(v47);
      [v46 setLastFetchDatabaseChangesDate_];

      sub_1883F7910();
      sub_18840DDB4();

      __asm { BRAA            X2, X16 }
    }

    v1 = *(v0 + 1040);
    v51 = *v9;

    *v9 = v51;
    if (qword_1EA90C9F0 != -1)
    {
LABEL_26:
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v22 = sub_188428FE0();
    *(v0 + 1032) = sub_1883F85F4(v22, qword_1EA90C9F8);

    v23 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1883FF744();

    if (sub_1883F9084())
    {
      sub_18840FB34();
      v52 = sub_1883FEEE0();
      *v13 = 136315394;
      v24 = sub_1883FE43C();
      sub_1883FE340(v24, v25, &v52);
      sub_1883FE2FC();
      sub_1883FED4C();
      sub_1883FDED8((v0 + 736));
      v1 = *(v0 + 760);
      sub_1883FDED8(__src);
      sub_1883FB38C();
      CKSyncEngine.FetchChangesContext.description.getter();
      sub_188404258();
      memcpy((v0 + 656), __src, 0x50uLL);
      v26 = sub_1883FB300(v0 + 656);
      sub_18840C150(v26, v27, &v52);
      sub_188404FC8();

      *(v13 + 14) = __src;
      sub_1883F831C();
      _os_log_impl(v28, v29, v30, v31, v32, 0x16u);
      sub_1884022C8();
      sub_1883FD784();
      sub_1883F82B8();
    }

    *(v0 + 1040) = v1;
    sub_1883F7B10(&unk_1886F7EF0);
    v33 = swift_task_alloc();
    v34 = sub_1884E0140(v33);
    *v34 = v35;
    sub_1883F8A00(v34);
    sub_18840DDB4();

    __asm { BR              X5 }
  }

  v15 = *(v0 + 1064);
  v16 = *(v0 + 1016) & 1;
  v17 = *(v0 + 1024) & 1 | 0x2000000000000000;
  *(v0 + 336) = *(v0 + 1056);
  *(v0 + 344) = v15;
  *(v0 + 384) = v16;
  *(v0 + 400) = v17;

  swift_task_alloc();
  sub_1883FF2B8();
  *(v0 + 1096) = v18;
  *v18 = v19;
  v18[1] = sub_1884D4CE8;
  sub_18840DDB4();

  return sub_1883FBEA8();
}

uint64_t sub_1884D4CE8()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  memcpy((v2 + 256), (v2 + 336), 0x50uLL);
  sub_1883FBF6C(v2 + 256);
  v6 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884D51F4()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1884D52EC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *__src, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_188417250();
  a31 = v35;
  a32 = v36;
  sub_1884E0128();
  a30 = v33;
  p_src = *(v33 + 1032);
  v38 = *(v33 + 960);
  v39 = *(v33 + 952);

  v40 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_1883FF744();

  if (sub_1883F9084())
  {
    v41 = *(v33 + 1104);
    sub_1883FE540();
    v39 = sub_1883FEEE0();
    a11 = v39;
    *v38 = 136315650;
    v42 = sub_1883FE43C();
    sub_1883FE340(v42, v43, &a11);
    sub_1883FE2FC();
    *(v38 + 4) = v34;
    *(v38 + 6) = 2048;
    *(v38 + 14) = v41;
    *(v38 + 11) = 2080;
    sub_18841397C((v33 + 496));
    v44 = *(v33 + 520);
    sub_18841397C(&__src);
    sub_1883FAB38(v33 + 496, v33 + 576);
    p_src = &__src;
    CKSyncEngine.FetchChangesContext.description.getter();
    sub_188404258();
    memcpy((v33 + 416), &__src, 0x50uLL);
    v45 = sub_1883FB300(v33 + 416);
    sub_18840C150(v45, v46, &a11);
    sub_188404FC8();

    *(v38 + 3) = &__src;
    sub_1883F831C();
    _os_log_impl(v47, v48, v49, v50, v51, 0x20u);
    swift_arrayDestroy();
    sub_1883FD784();
    sub_1883F82B8();
  }

  else
  {

    v44 = *(v33 + 1040);
  }

  if (*(v33 + 1121))
  {
    sub_188404A90();
    *(v33 + 1024) = p_src;
    *(v33 + 1016) = v40;
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v52 = sub_188428FE0();
    *(v33 + 1032) = sub_1883F85F4(v52, qword_1EA90C9F8);

    v53 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1883FF744();

    if (sub_1883F9084())
    {
      sub_18840FB34();
      a11 = sub_1883FEEE0();
      *v38 = 136315394;
      v54 = sub_1883FE43C();
      sub_1883FE340(v54, v55, &a11);
      sub_1883FE2FC();
      sub_1883FED4C();
      sub_18841397C((v33 + 736));
      v44 = *(v33 + 760);
      sub_18841397C(&__src);
      sub_1883FB38C();
      CKSyncEngine.FetchChangesContext.description.getter();
      sub_188404258();
      memcpy((v33 + 656), &__src, 0x50uLL);
      v56 = sub_1883FB300(v33 + 656);
      sub_18840C150(v56, v57, &a11);
      sub_188404FC8();

      *(v38 + 14) = &__src;
      sub_1883F831C();
      _os_log_impl(v58, v59, v60, v61, v62, 0x16u);
      swift_arrayDestroy();
      sub_1883FD784();
      sub_1883F82B8();
    }

    *(v33 + 1040) = v44;
    sub_1883F7B10(&unk_1886F7EF0);
    v95 = v63;
    v64 = swift_task_alloc();
    v65 = sub_1884E0140(v64);
    *v65 = v66;
    sub_1883F8A00(v65);
    sub_18840562C();

    return v72(v67, v68, v69, v70, v71, v72, v73, v74, a9, v95, a11, __src, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }

  else
  {
    sub_1884E00A8();
    v76 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1883FF744();
    if (sub_1883F9084())
    {
      sub_1883F9984();
      v39 = sub_1883F8C00();
      __src = v39;
      *v38 = 136315138;
      v77 = sub_1883FE43C();
      sub_1883FE340(v77, v78, &__src);
      sub_1883FE2FC();
      *(v38 + 4) = v34;
      sub_1883F831C();
      _os_log_impl(v79, v80, v81, v82, v83, 0xCu);
      sub_1883FE944(v39);
      sub_1883FD784();
      sub_1883F82B8();
    }

    [sub_1883F988C() setNeedsToFetchDatabaseChanges_];
    v84 = *(v32 + 16);
    Date.init()();
    Date._bridgeToObjectiveC()();
    v85 = sub_1884E000C();
    v86(v85);
    [v84 setLastFetchDatabaseChangesDate_];

    sub_1883F7910();
    sub_18840562C();

    return v89(v87, v88, v89, v90, v91, v92, v93, v94, a9, a10, a11, __src, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }
}

uint64_t sub_1884D56F4()
{
  v30 = v0;
  v1 = v0 + 116;
  v2 = v0 + 117;
  v3 = v0[135];
  v4 = v3;
  v5 = sub_18840EFC4(v3);

  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[119];
    v10 = sub_1883FE540();
    v11 = sub_18840DEBC();
    v28 = sub_18840BE14();
    *v10 = 136315650;
    v12 = sub_1883FE43C();
    v14 = sub_1883FE340(v12, v13, &v28);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    memcpy(v0 + 12, (v9 + 16), 0x50uLL);
    v15 = (v9 + 16);
    v1 = v0 + 116;
    memcpy(__dst, v15, sizeof(__dst));
    sub_1883FAB38((v0 + 12), (v0 + 22));
    Changes = CKSyncEngine.FetchChangesContext.description.getter();
    v18 = v17;
    memcpy(v0 + 2, __dst, 0x50uLL);
    sub_1883FB300((v0 + 2));
    v19 = sub_1883FE340(Changes, v18, &v28);
    v2 = v0 + 117;

    *(v10 + 14) = v19;
    *(v10 + 22) = 2112;
    v20 = v6;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v21;
    *v11 = v21;
    _os_log_impl(&dword_1883EA000, v7, v8, "%s failed to fetch database changes for context %s: %@", v10, 0x20u);
    sub_188442B84(v11, &qword_1EA90DC70, &unk_1886FA190);
    sub_1883F7B60();
    swift_arrayDestroy();
    sub_1883F7B60();
    sub_1883FC7E4();
  }

  *v1 = v6;
  type metadata accessor for CKError(0);
  sub_1883F93BC();
  sub_188400BF0(v22, v23, &unk_1886F6978);
  _BridgedStoredNSError.code.getter();
  if (*v2 == 21)
  {
    [*(v0[124] + 16) setServerChangeTokenForDatabase_];
  }

  v24 = v0[135];
  swift_willThrow();

  v25 = sub_1883F8C1C();

  return v26(v25);
}

uint64_t sub_1884D59D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1884D5A70;

  return sub_1884D5BD4(a3);
}

uint64_t sub_1884D5A70()
{
  sub_1883F78E0();
  v3 = v2;
  sub_1883F78EC();
  v5 = v4;
  sub_1883F7B78();
  *v6 = v5;
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3 & 1;
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1884D5BA4()
{
  **(v0 + 16) = *(v0 + 32);
  sub_1883F816C();
  return v1();
}

uint64_t sub_1884D5BD4(uint64_t a1)
{
  v2[163] = v1;
  v2[162] = a1;
  v4 = type metadata accessor for CancellationError();
  v2[164] = v4;
  v2[165] = *(v4 - 8);
  v2[166] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[167] = v5;
  *v5 = v2;
  v5[1] = sub_1884D5CD4;

  return sub_1884DA744((v2 + 2), a1);
}

uint64_t sub_1884D5CD4()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1884D5DCC()
{
  v66 = v0;
  v1 = *(v0 + 16);
  *(v0 + 1344) = v1;
  v2 = *(v0 + 32);
  *(v0 + 1352) = v2;
  v3 = *(v0 + 40);
  v4 = *(v0 + 88);
  *(v0 + 1376) = v4;
  *(v0 + 1360) = v3;
  *(v0 + 105) = *(v0 + 104);
  if (!v2)
  {
LABEL_31:
    if (qword_1EA90C9F0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_32;
  }

  v5 = v4;
  v6 = sub_1883F4C9C(v4);
  if (!v6)
  {

    goto LABEL_31;
  }

  v7 = v6;
  v61 = v5;
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480(&qword_1EA90C9F0);
  }

  v8 = type metadata accessor for Logger();
  *(v0 + 1392) = sub_1883F85F4(v8, qword_1EA90C9F8);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v63 = v0;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_18840FB34();
    v64 = sub_18840BE14();
    *v11 = 136315394;
    v12 = sub_1883FE43C();
    v14 = sub_1883FE340(v12, v13, &v64);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    sub_1884439D8((v0 + 512));
    sub_1884439D8(__src);
    sub_1883FAB38(v0 + 512, v0 + 112);
    Changes = CKSyncEngine.FetchChangesContext.description.getter();
    v17 = v16;
    memcpy((v0 + 592), __src, 0x50uLL);
    sub_1883FB300(v0 + 592);
    v1 = sub_1883FE340(Changes, v17, &v64);

    *(v11 + 14) = v1;
    _os_log_impl(&dword_1883EA000, v9, v10, "%s will fetch next record zone changes for context %s", v11, 0x16u);
    swift_arrayDestroy();
    sub_1883F7B60();
    sub_1883FC7E4();
  }

  v18 = *(v0 + 1304);
  __src[0] = MEMORY[0x1E69E7CC0];
  sub_1883FE5A0(v18 + 216, v0 + 1072);
  v19 = 0;
  v20 = v61 & 0xC000000000000001;
  v21 = v61 & 0xFFFFFFFFFFFFFF8;
  v62 = v18;
LABEL_8:
  while (v19 != v7)
  {
    if (v20)
    {
      v22 = MEMORY[0x18CFD59D0](v19, v61);
    }

    else
    {
      if (v19 >= *(v21 + 16))
      {
        goto LABEL_45;
      }

      v22 = *(v61 + 32 + 8 * v19);
    }

    v23 = v22;
    if (__OFADD__(v19++, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      sub_1883F7480(&qword_1EA90C9F0);
LABEL_32:
      v37 = *(v0 + 1304);
      v38 = type metadata accessor for Logger();
      sub_1883F85F4(v38, qword_1EA90C9F8);

      v39 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      sub_1883FF744();

      if (sub_1883F9084())
      {
        sub_18840FB34();
        v64 = sub_1883FEEE0();
        *v37 = 136315394;
        v40 = sub_1883FE43C();
        sub_1883FE340(v40, v41, &v64);
        sub_1883FE2FC();
        sub_1883FED4C();
        sub_1883FDED8((v0 + 912));
        sub_1883FDED8(__src);
        sub_1883FAB38(v0 + 912, v0 + 272);
        CKSyncEngine.FetchChangesContext.description.getter();
        sub_188404258();
        memcpy((v0 + 832), __src, 0x50uLL);
        v42 = sub_1883FB300(v0 + 832);
        sub_18840C150(v42, v43, &v64);
        sub_188404FC8();

        *(v37 + 14) = __src;
        sub_1883F831C();
        _os_log_impl(v44, v45, v46, v47, v48, 0x16u);
        sub_1884022C8();
        sub_1883FD784();
        sub_1883F82B8();
      }

      sub_1883F8C1C();
      sub_188407640();

      __asm { BRAA            X2, X16 }
    }

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v25 = *(v18 + 216);
    if ((v25 & 0xC000000000000001) != 0)
    {

      v1 = v23;
      v26 = __CocoaSet.contains(_:)();

      if ((v26 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (*(v25 + 16))
      {
        v27 = v7;
        sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
        v28 = *(v25 + 40);

        v29 = NSObject._rawHashValue(seed:)(v28);
        v30 = ~(-1 << *(v25 + 32));
        while (1)
        {
          v31 = v29 & v30;
          if (((*(v25 + 56 + (((v29 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v30)) & 1) == 0)
          {
            break;
          }

          v32 = *(*(v25 + 48) + 8 * v31);
          v1 = static NSObject.== infix(_:_:)();

          v29 = v31 + 1;
          if (v1)
          {

            v18 = v62;
            v0 = v63;
            v7 = v27;
            v21 = v61 & 0xFFFFFFFFFFFFFF8;
            v20 = v61 & 0xC000000000000001;
            goto LABEL_8;
          }
        }

        v18 = v62;
        v0 = v63;
        v7 = v27;
        v21 = v61 & 0xFFFFFFFFFFFFFF8;
        v20 = v61 & 0xC000000000000001;
      }

LABEL_24:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1 = __src;
      specialized ContiguousArray._endMutation()();
    }
  }

  v33 = __src[0];
  *(v0 + 1400) = __src[0];
  result = sub_1883F4C9C(v33);
  *(v0 + 1408) = result;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 1416) = 0;
      v35 = *(v0 + 1400);
      if ((v35 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x18CFD59D0](0);
      }

      else
      {
        v36 = *(v35 + 32);
      }

      sub_1883FF3C8(v36);
      v56 = v1;
      sub_188406C1C(__src, v56);
      swift_endAccess();

      sub_1883F9B24();
      v57 = v56;
      swift_task_alloc();
      sub_1883FF2B8();
      *(v0 + 1432) = v58;
      *v58 = v59;
      sub_1884052F0(v58);
      sub_188407640();

      return sub_1883FBEA8();
    }
  }

  else
  {
    *(v0 + 1440) = *(*(v0 + 1304) + 128);
    *(v0 + 1448) = [objc_allocWithZone(CKOperationConfiguration) init];
    v51 = swift_task_alloc();
    *(v0 + 1456) = v51;
    *v51 = v0;
    sub_1883F909C(v51);
    sub_1883FF484(v52);
    sub_188407640();

    return sub_1884E5CF0(v53, v54);
  }

  return result;
}

uint64_t sub_1884D64DC()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  memcpy((v2 + 352), (v2 + 432), 0x50uLL);
  sub_1883FBF6C(v2 + 352);
  v6 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884D65E4()
{
  sub_1883F78E0();
  v17 = v0;
  v1 = v0[178];
  v2 = v0[177];
  v3 = v0[176];

  if (v2 + 1 == v3)
  {
    v0[180] = *(v0[163] + 128);
    v0[181] = [objc_allocWithZone(CKOperationConfiguration) init];
    v4 = swift_task_alloc();
    v0[182] = v4;
    *v4 = v0;
    sub_1883F909C(v4);
    v6 = sub_1883FF484(v5);

    return sub_1884E5CF0(v6, v7);
  }

  else
  {
    v9 = v0[177] + 1;
    v0[177] = v9;
    v10 = v0[175];
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x18CFD59D0]();
    }

    else
    {
      v11 = *(v10 + 8 * v9 + 32);
    }

    sub_1883FF3C8(v11);
    v12 = v1;
    sub_188406C1C(&v16, v12);
    swift_endAccess();

    sub_1883F9B24();
    v13 = v12;
    swift_task_alloc();
    sub_1883FF2B8();
    v0[179] = v14;
    *v14 = v15;
    sub_1884052F0(v14);

    return sub_1883FBEA8();
  }
}

uint64_t sub_1884D6760()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;
  *(v6 + 1464) = v5;

  v7 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884D685C()
{
  sub_1883FB4AC();
  v1 = v0[183];
  if (v1 && v1[2])
  {
    v2 = v0[181];
    v3 = v1[4];
    v4 = v1[5];

    sub_1884DFA94(v3, v4, v2);
  }

  v5 = v0[181];
  v6 = v0[169];
  v7 = v0[163];
  v8 = sub_18844C2F0(MEMORY[0x1E69E7CC0]);
  v0[149] = 0;
  v0[150] = v8;
  v0[184] = *(v7 + 136);

  v9 = v5;
  v10 = v6;
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

id sub_1884D6940()
{
  sub_1883FB4AC();
  v1 = v0[184];
  v2 = v0[181];
  v3 = v0[169];
  sub_1883F4C5C(0, &qword_1EA90CAB0, off_1E70BA0C8);
  v4 = v2;
  v5 = v3;
  v6 = sub_1884296E8(v2, v3);
  v0[185] = v6;
  result = [v1 container];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  v9 = v0[184];
  swift_getObjectType();

  result = [v9 container];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = v0[184];
  v12 = [result implementation];

  v13 = v6;
  v14 = sub_1884276B8(v12, v6);
  v0[186] = v14;
  v0[187] = [v14 databaseWithDatabaseScope_];
  v15 = swift_task_alloc();
  v0[188] = v15;
  *v15 = v0;
  v15[1] = sub_1884D6AF4;
  v16 = sub_1883FF484(v0[172]);

  return sub_18846D398(v16, v17, v18);
}

uint64_t sub_1884D6AF4()
{
  sub_1883F78E0();
  v3 = v2;
  sub_1883F78EC();
  v5 = v4;
  sub_1883F7B78();
  *v6 = v5;
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v5 + 1512) = v0;

  if (!v0)
  {
    *(v5 + 1520) = v3;
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1884D6C00()
{
  v1 = *(v0 + 1488);
  v2 = *(v0 + 1480);
  v3 = *(v0 + 1448);
  v4 = *(v0 + 1352);
  v5 = *(v0 + 1304);

  return MEMORY[0x1EEE6DFA0](sub_1884D6CBC, v5, 0);
}

void sub_1884D6CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  v12 = v10;
  v243 = (v10 + 152);
  v251 = v10 + 155;
  v253 = (v10 + 156);
  v259 = v10 + 158;
  v260 = v10 + 157;
  v255 = v10 + 159;
  v13 = v10[190];
  v10[191] = 0;
  v14 = MEMORY[0x1E69E7CC0];
  v10[160] = MEMORY[0x1E69E7CC0];
  v10[159] = v14;
  v15 = *(v13 + 64);
  v16 = -1 << *(v13 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v258 = v10[180];
  v18 = (v17 & v15);
  v249 = 0x80000001886FFF40;
  v247 = (v10[165] + 8);
  v248 = *MEMORY[0x1E696A578];
  v254 = "ine_FetchChanges.swift";
  v244 = v10[189];
  BYTE4(v256) = v244 != 0;
  a9.n128_u64[0] = 136315650;
  v257 = a9;
  *(&v19 + 1) = 3;
  *&v19 = 136315394;
  v252 = v19;
  v245 = xmmword_1886F7400;
  v250 = (v10 + 161);
  while (1)
  {
    v12[192] = v14;
    v261 = v14;
LABEL_6:
    sub_1883F96EC(a1, a2, a3, a4, a5, a6, a7, a8, v232, v233, v234, v235, isUnique, v238, v239, v240, v241, v242, v243, v244, v245, *(&v245 + 1), v246, v247, v248, v249, v250, v251, v252, *(&v252 + 1), v253, v254, v255, v256, SBYTE4(v256));
    if (!v18)
    {
      break;
    }

    while (1)
    {
      v23 = v20;
LABEL_11:
      sub_1883FEEFC();
      sub_18840F90C();
      v25 = *v24;
      v270 = *v24;
      v271 = v24[2];
      v268 = *(v24 + 32);
      v267 = v24[3];
      v269 = v24[1];
      if ((*(v24 + 33) & 1) == 0)
      {
        break;
      }

      v26 = *v24;
      sub_188415154(v25);
      v27 = v10;
      sub_188415154(v26);
      v28 = sub_18840EFC4(v26);

      v29 = v27;
      v30 = v28;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      v11 = v30;

      if (os_log_type_enabled(v31, v32))
      {
        v33 = sub_1883FE540();
        v34 = swift_slowAlloc();
        v272 = sub_1883FE540();
        *v33 = v257.n128_u32[0];
        v35 = sub_1883FE43C();
        sub_188405F34(v35, v36);
        sub_1883F9B0C();
        *(v33 + 4) = v26;
        v12 = v266;
        *(v33 + 12) = 2112;
        *(v33 + 14) = v29;
        *v34 = v29;
        *(v33 + 22) = 2112;
        v37 = v29;
        v38 = v11;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 24) = v39;
        v34[1] = v39;
        _os_log_impl(&dword_1883EA000, v31, v32, "%s error fetching changes for zone %@: %@", v33, 0x20u);
        v40 = sub_18844E6FC(&qword_1EA90DC70, &unk_1886FA190);
        sub_188426CB8(v40, v41, v40);
        v14 = v261;
        sub_1883F7B60();
        sub_1883FE944(v272);
        sub_1883F7B60();
        sub_1883FD784();
      }

      else
      {

        v12 = v266;
        v14 = v261;
      }

      *v259 = v11;
      type metadata accessor for CKError(0);
      sub_1883F93BC();
      sub_188400BF0(&qword_1EA90CAE0, v42, &unk_1886F6978);
      v10 = v260;
      _BridgedStoredNSError.code.getter();
      v43 = *v260;
      v44 = *v260 == 28 || v43 == 26;
      if (v44)
      {
        sub_188412578(*(v258 + 16), sel_setServerChangeToken_forZoneID_);
      }

      else if (v43 == 21)
      {
        sub_188412578(*(v258 + 16), sel_setServerChangeToken_forZoneID_);
        v45 = 1;
        goto LABEL_24;
      }

      v45 = 0;
LABEL_24:
      v46 = v11;
      sub_18840D758();
      if ((v47 & 1) == 0)
      {
        v48 = sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
        v49 = sub_1884E02E0(v48);
        sub_1883F85E4(v49, v50, v51, v52, v53, v54, v55, v56, v57, v232, v233, v234, v235, isUnique, v238, v239, v240, v241, v242, v243, v244, v245, *(&v245 + 1), v246, v247, v248, v249, v250, v251, v252, *(&v252 + 1), v253, v254, v255, v256, v257.n128_i64[0], v257.n128_i64[1], v58);
        *(v59 + 32) = v29;
        v60 = v29;
        sub_1884E02B0();
        swift_setDeallocating();
        sub_1884E3A30();
      }

      if ((v45 & 1) == 0)
      {
        v264 = v11;
        v61 = v12[150];
        v10 = *(v61 + 16);
        if (v12[149])
        {

          sub_188404D70();
          v11 = v62;
          v10 = v63;

          v9 = v267;
          if ((v11 & 1) == 0)
          {
            goto LABEL_34;
          }

LABEL_33:
          sub_1884DE724(v29, v10);
        }

        else
        {
          sub_1884DECAC(v29, v61 + 32, *(v61 + 16));
          v9 = v267;
          if (v64)
          {
            v10 = 0;
            goto LABEL_33;
          }
        }

LABEL_34:
        sub_1884D43C8(v264, v29);

        sub_188410204();
        sub_1884DFE14(v270, v269, v271, v9, v268, 1);

        goto LABEL_6;
      }

      sub_1884DFE14(v270, v269, v271, v267, v268, 1);
      v20 = v23;
    }

    v65 = v25 + 64;
    v66 = -1 << v25[32];
    if (-v66 < 64)
    {
      v67 = ~(-1 << -v66);
    }

    else
    {
      v67 = -1;
    }

    v9 = v67 & *(v25 + 8);
    v241 = v10;
    sub_1884061B8();
    sub_1884DFDA8(v68, v69, v70, v71, v72, v73);
    v74 = (63 - v66) >> 6;

    v75 = 0;
    v242 = MEMORY[0x1E69E7CC8];
    v14 = v261;
    v265 = v74;
LABEL_39:
    if (v9)
    {
      goto LABEL_44;
    }

    while (1)
    {
      v76 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        __break(1u);
LABEL_128:

        sub_1884E0208();
        sub_1883F6164();
        swift_getErrorValue();
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        sub_1884E0108();
        sub_1884E0188("Fatal error", v225, v226, v227, v228, "CloudKit/CKError.swift", v229, v230, v232, v233);
        sub_188410EF4();
        return;
      }

      if (v76 >= v74)
      {
        break;
      }

      v9 = *&v65[8 * v76];
      ++v75;
      if (v9)
      {
        v75 = v76;
LABEL_44:
        sub_1883FE0AC();
        v78 = v77 | (v75 << 6);
        v80 = *(*(v79 + 48) + 8 * v78);
        v81 = *(v79 + 56) + 16 * v78;
        v82 = *v81;
        if ((*(v81 + 8) & 1) == 0)
        {
          sub_18844264C();
          sub_18844264C();
          v83 = v80;
          sub_188404FC8();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1884773D4(0, *(v14 + 16) + 1, 1, v14);
            v14 = v110;
          }

          v84 = v14;
          v85 = *(v14 + 16);
          v86 = v84;
          v87 = *(v84 + 24);
          if (v85 >= v87 >> 1)
          {
            v111 = sub_1883F8DD4(v87);
            sub_1884773D4(v111, v85 + 1, 1, v86);
            v86 = v112;
          }

          sub_18844CAFC(v82);

          *(v86 + 16) = v85 + 1;
          v88 = v86 + 8 * v85;
          v14 = v86;
          *(v88 + 32) = v82;
          v74 = v265;
          goto LABEL_39;
        }

        v262 = v14;
        *v253 = v82;
        sub_18844264C();
        sub_18844264C();
        v240 = v80;
        v89 = sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
        type metadata accessor for CKError(0);
        HIDWORD(isUnique) = v90;
        HIDWORD(v238) = HIDWORD(v89);
        v239 = v82;
        if (swift_dynamicCast())
        {
          v236 = *v251;
          v91 = v253;
          goto LABEL_54;
        }

        v14 = v266;

        *(v266 + 1288) = v82;
        v92 = v82;
        if (!swift_dynamicCast())
        {
          goto LABEL_128;
        }

        v238 = *(v266 + 1328);
        v234 = *(v266 + 1312);
        sub_18844E6FC(&qword_1EA90D728, &qword_1886F8720);
        v93 = swift_allocObject();
        *(v93 + 16) = v245;
        *(v93 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v93 + 40) = v94;
        sub_1884E011C();
        *(v93 + 48) = v95;
        *(v93 + 56) = v249;
        Dictionary.init(dictionaryLiteral:)();
        *(v266 + 1224) = 20;
        sub_18847E984();
        sub_188402E5C();

        sub_1883F93BC();
        sub_188400BF0(&qword_1EA90CAE0, v96, &unk_1886F6978);
        _BridgedStoredNSError.init(_:userInfo:)();
        v236 = *(v266 + 1232);
        (*v247)(v238, v234);
        v91 = v250;
LABEL_54:

        LODWORD(isUnique) = swift_isUniquelyReferenced_nonNull_native();
        sub_188486398();
        LODWORD(v238) = v97;
        sub_1883FE314();
        v101 = v99 + v100;
        if (__OFADD__(v99, v100))
        {
          goto LABEL_133;
        }

        v102 = v98;
        sub_18844E6FC(&unk_1EA90E4B0, &qword_1886FB450);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v101))
        {
          sub_188486398();
          sub_188442C00();
          v14 = v262;
          if (!v44)
          {
            sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
            sub_188410EF4();

            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            return;
          }

          v102 = v103;
        }

        else
        {
          v14 = v262;
          v104 = v238;
        }

        if (v104)
        {
          sub_188413F84(v242, v232, v233, v234, v236);
          sub_18844CAFC(v239);
        }

        else
        {
          sub_1883F9628(v102 >> 6);
          sub_1884E00F4(v105, v232, v233, v234, v236);
          sub_18844CAFC(v106);
          v107 = *(v242 + 16);
          v108 = __OFADD__(v107, 1);
          v109 = v107 + 1;
          if (v108)
          {
            goto LABEL_134;
          }

          *(v242 + 16) = v109;
        }

        goto LABEL_39;
      }
    }

    v12 = v266;
    sub_1884723C0(v113);

    sub_188472474(v114);
    v11 = v242;
    if (*(v242 + 16))
    {
      v10 = *(v266 + 1304);
      sub_18847F374(v242);
      v116 = v115;

      sub_1884E011C();
      v9 = sub_18847FB50(v116, v117 + 17, v254 | 0x8000000000000000);
      v11 = v241;
      sub_1884D43C8(v9, v241);
      sub_18840D758();
      v118 = v268;
      if (v119)
      {
        v10 = *(v266 + 1304);

        v120 = v241;
        v121 = Logger.logObject.getter();
        v11 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v121, v11))
        {
          v10 = sub_18840FB34();
          v263 = v14;
          v122 = sub_18840DEBC();
          v273 = sub_1883FE540();
          *v10 = v252;
          v123 = sub_1883FE43C();
          sub_188405F34(v123, v124);
          sub_1883F9B0C();
          *(v10 + 4) = v266;
          v12 = v266;
          sub_1884062FC();
          *(v10 + 14) = v120;
          *v122 = v120;
          v125 = v120;
          _os_log_impl(&dword_1883EA000, v121, v11, "%s not clearing needsToFetchChanges for %@ due to retryable record-level error", v10, 0x16u);
          sub_188442B84(v122, &qword_1EA90DC70, &unk_1886FA190);
          v14 = v263;
          sub_1883F7B60();
          sub_1883FE944(v273);
          v118 = v268;
          sub_1883F7B60();
          sub_1883F7B60();
        }

        if (v118)
        {

          goto LABEL_74;
        }

        sub_188410204();
        v11 = 1;
LABEL_78:
        v138 = v12[149];
        v139 = v12[150];
        v12[152] = v241;
        v9 = swift_task_alloc();
        *(v9 + 16) = v138;
        *(v9 + 24) = v139;
        sub_18840581C(v9, v243);
        LOBYTE(v139) = v140;
        v10 = v141;

        if (v139)
        {
          sub_1884DE724(v241, v10);
        }

        if (v11)
        {

          sub_188443358();
          sub_1884061B8();
          sub_1884DFE14(v142, v143, v144, v145, v146, v147);
        }

        else
        {
          v148 = sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
          v149 = sub_1884E02E0(v148);
          sub_1883F85E4(v149, v150, v151, v152, v153, v154, v155, v156, v157, v232, v233, v234, v235, isUnique, v238, v239, v240, v241, v242, v243, v244, v245, *(&v245 + 1), v246, v247, v248, v249, v250, v251, v252, *(&v252 + 1), v253, v254, v255, v256, v257.n128_i64[0], v257.n128_i64[1], v158);
          *(v159 + 32) = v241;
          v9 = v241;
          sub_1884E02B0();

          sub_188443358();
          sub_1884061B8();
          sub_1884DFE14(v160, v161, v162, v163, v164, v165);
          swift_setDeallocating();
          a1 = sub_1884E3A30();
        }
      }

      else
      {

        if ((v268 & 1) == 0)
        {
          v11 = 0;
          sub_188410204();
          goto LABEL_78;
        }

        sub_188443358();
LABEL_74:
        sub_1884061B8();
        sub_1884DFE14(v132, v133, v134, v135, v136, v137);
        sub_188410204();
      }
    }

    else
    {

      v10 = v241;
      [*(v258 + 16) setServerChangeToken:v267 forZoneID:v241];
      if ((v268 & 1) == 0)
      {
        v11 = 0;
        goto LABEL_78;
      }

      sub_1884061B8();
      sub_1884DFE14(v126, v127, v128, v129, v130, v131);
    }
  }

  while (2)
  {
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_111:

      goto LABEL_112;
    }

    if (v23 < v21)
    {
      v18 = *(v22 + 8 * v23);
      ++v20;
      if (v18)
      {
        goto LABEL_11;
      }

      continue;
    }

    break;
  }

  v166 = *(v14 + 16);
  v167 = v12[160];
  v12[193] = v167;
  if (v166)
  {
    v10 = *v255;
    goto LABEL_87;
  }

  v10 = *v255;
  if (!*(v167 + 16) && !v10[2])
  {
    v12[196] = v10;

    v172 = sub_1884DD690(v171);
    v174 = sub_1884E0068(v172, v173);
    v176 = sub_1884059A0(v174, v175);
    if (v177)
    {
      v10 = v176;
      v178 = v12[163];
      v12[202] = sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);

      sub_1883FE5A0(v178 + 216, (v12 + 143));
      v179 = 0;
      v9 = -1;
      v11 = "BUG IN CLOUDKIT: CKSyncEngine finished fetching changes for a zone that it never started: %@";
      while (1)
      {
        v12[205] = v179;
        sub_18841E620();
        if (v181)
        {
          break;
        }

        sub_1883FDCE0(v180);
        if (v44)
        {
          if (*(v14 + 16))
          {
            v187 = *(v14 + 40);
            v188 = v23;
            sub_1884E02C8();
            NSObject._rawHashValue(seed:)(v187);
            sub_18840F8C8();
            while (1)
            {
              sub_1884E0090();
              if ((v189 & 1) == 0)
              {
                break;
              }

              v190 = *(*(v14 + 48) + 8 * &dword_1883EA000);
              v191 = static NSObject.== infix(_:_:)();

              v12 = v266;
              if (v191)
              {

                goto LABEL_109;
              }
            }

            v9 = -1;
          }

          else
          {
            v192 = v23;
          }
        }

        else
        {
          sub_1883FC674();
          v182 = v23;
          sub_1884E02C8();
          v183 = __CocoaSet.contains(_:)();

          if (v183)
          {
LABEL_109:
            v193 = v12[162];
            v194 = v23;
            v195 = sub_1884D4574();
            sub_1883FEE7C(v195);
            v196 = v194;
            v197 = v193;
            swift_task_alloc();
            sub_1883F9524();
            v12[208] = v198;
            *v198 = v199;
            sub_1883FE084(v198);
            goto LABEL_88;
          }
        }

        v10 = v23;
        v184 = Logger.logObject.getter();
        v185 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v184, v185))
        {
          v23 = sub_1883F9984();
          v186 = sub_18840DEBC();
          sub_1883FB368(v186);
          sub_1884E0020();
          sub_188442B84(v18, &qword_1EA90DC70, &unk_1886FA190);
          sub_1883F7B60();
          sub_1883F7B60();
        }

        else
        {
          v14 = v184;
          v184 = v10;
        }

        v12 = v266;
        sub_1884E00E8();
        if (v44)
        {
          goto LABEL_111;
        }
      }

      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      return;
    }

LABEL_112:
    if (*(v12 + 106) == 1)
    {
      if (!sub_1884D44E8())
      {
        goto LABEL_135;
      }

      sub_18840F6B4();

      v200 = v9;
      v201 = Logger.logObject.getter();
      v202 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v201, v202))
      {
        v10 = sub_18840FB34();
        v203 = sub_18840DEBC();
        v14 = sub_1883FE540();
        *v10 = v252;
        v204 = sub_1883FE43C();
        v206 = sub_188405F34(v204, v205);

        *(v10 + 4) = v206;
        sub_1884062FC();
        v207 = v200;
        v208 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 14) = v208;
        *v203 = v208;
        sub_1884E0168(&dword_1883EA000, v209, v210, "%s error fetching record zone changes: %@");
        sub_188442B84(v203, &qword_1EA90DC70, &unk_1886FA190);
        sub_1883F7B60();
        sub_1883FE944(v14);
        sub_1883FC7E4();
        sub_1883F7B60();
      }

      v211 = v200;
      v212 = sub_1883FE860();
      sub_18840F1E8(v212);

      v213 = v10;
      v214 = _convertErrorToNSError(_:)();

      ShouldDefer = CKErrorShouldDefer(v214);
      sub_1883F8488();
      if (ShouldDefer)
      {
        swift_willThrow();

        sub_1883F8C1C();
        goto LABEL_124;
      }
    }

    else
    {
      sub_1884110F8();

      v216 = Logger.logObject.getter();
      v217 = static os_log_type_t.debug.getter();

      os_log_type_enabled(v216, v217);
      sub_188405714();
      if (v218)
      {
        sub_1883F9984();
        v274 = sub_1883F8C00();
        *v11 = 136315138;
        v219 = sub_1883FE43C();
        sub_188405F34(v219, v220);
        sub_1883FE2FC();
        *(v11 + 4) = v14;
        sub_18841006C(&dword_1883EA000, v221, v222, "%s finished fetch record zone changes request");
        sub_1883FE944(v274);
        sub_1883FD784();
        sub_1883F82B8();
      }

      else
      {
      }
    }

    sub_188400894();
LABEL_124:
    sub_188410EF4();

    __asm { BRAA            X2, X16 }
  }

LABEL_87:
  v12[194] = v10;
  v12[124] = v14;
  sub_1883F5A6C();

  swift_task_alloc();
  sub_1883F9524();
  v12[195] = v168;
  *v168 = v169;
  sub_1883FF75C(v168);
LABEL_88:
  sub_188410EF4();

  sub_1883FBEA8();
}

uint64_t sub_1884D8098()
{
  sub_1883FB4AC();
  v1 = *(v0 + 1488);
  v2 = *(v0 + 1480);
  v3 = *(v0 + 1304);

  return MEMORY[0x1EEE6DFA0](sub_1884D8138, v3, 0);
}

void sub_1884D8138()
{
  v2 = v0;
  v240 = (v0 + 152);
  v248 = v0 + 155;
  v253 = (v0 + 156);
  v259 = v0 + 158;
  v260 = v0 + 157;
  v254 = v0 + 159;
  v247 = (v0 + 161);
  v3 = v0[189];
  v4 = v2[172];
  v5 = v2[169];

  v6 = sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  sub_18844E6FC(&qword_1EA90E278, &unk_1886FB440);
  sub_18841A9C8();
  v7 = MEMORY[0x1E69E7CC0];
  v251 = v6;
  v8 = Dictionary.init(dictionaryLiteral:)();
  v9 = v3;
  v10 = sub_18840EFC4(v3);
  v11 = v10;
  sub_1884D44A0(v10);
  sub_1884DC7DC(v4);

  v241 = 0;
  v2[191] = v11;
  v2[160] = v7;
  v2[159] = v7;
  v21 = -1 << *(v8 + 32);
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = (v22 & *(v8 + 64));
  v258 = v2[180];
  v246 = 0x80000001886FFF40;
  v244 = (v2[165] + 8);
  v245 = *MEMORY[0x1E696A578];
  v252 = "ine_FetchChanges.swift";
  BYTE4(v255) = v2[189] != 0;
  *&v20 = 136315650;
  v256 = v20;
  *(&v24 + 1) = 3;
  *&v24 = 136315394;
  v249 = v24;
  v242 = xmmword_1886F7400;
  v261 = v2;
  while (1)
  {
    v257 = v7;
    v2[192] = v7;
LABEL_6:
    sub_1883F96EC(v12, v13, v14, v15, v16, v17, v18, v19, v231, v232, v233, v234, isUnique, v237, v238, v239, v240, v241, v242, *(&v242 + 1), v243, v244, v245, v246, v247, v248, v249, *(&v249 + 1), v250, v251, v252, v253, v254, v255, SBYTE4(v255));
    if (!v23)
    {
      break;
    }

    while (1)
    {
      v28 = v25;
LABEL_11:
      sub_1883FEEFC();
      sub_18840F90C();
      v30 = *v29;
      v268 = *v29;
      v263 = *(v29 + 32);
      v262 = *(v29 + 24);
      v264 = *(v29 + 8);
      if ((*(v29 + 33) & 1) == 0)
      {
        break;
      }

      sub_1883FB624();
      sub_1884DFDA8(v31, v32, v33, v34, v35, 1);
      v36 = v3;
      p_isa = v268;
      sub_1883FB624();
      sub_1884DFDA8(v37, v38, v39, v40, v41, 1);
      v42 = sub_18840EFC4(v268);

      v43 = v36;
      v44 = v42;
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();

      v265 = v44;
      if (os_log_type_enabled(v45, v46))
      {
        v47 = sub_1883FE540();
        v48 = swift_slowAlloc();
        v269 = sub_1883FE540();
        *v47 = v256;
        v49 = sub_1883FE43C();
        sub_188405F34(v49, v50);
        sub_1883F9B0C();
        *(v47 + 4) = v2;
        *(v47 + 12) = 2112;
        *(v47 + 14) = v43;
        *v48 = v43;
        *(v47 + 22) = 2112;
        v51 = v43;
        v52 = v44;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v47 + 24) = v53;
        v48[1] = v53;
        _os_log_impl(&dword_1883EA000, v45, v46, "%s error fetching changes for zone %@: %@", v47, 0x20u);
        v54 = sub_18844E6FC(&qword_1EA90DC70, &unk_1886FA190);
        sub_188426CB8(v54, v55, v54);
        p_isa = v268;
        v56 = v260;
        sub_1883F7B60();
        sub_1883FE944(v269);
        sub_1883F7B60();
        sub_1883F7B60();
      }

      else
      {

        v56 = v260;
      }

      *v259 = v44;
      type metadata accessor for CKError(0);
      sub_1883F93BC();
      sub_188400BF0(&qword_1EA90CAE0, v57, &unk_1886F6978);
      _BridgedStoredNSError.code.getter();
      v58 = *v56;
      v59 = *v56 == 28 || v58 == 26;
      v11 = v263;
      if (v59)
      {
        sub_188412578(*(v258 + 16), sel_setServerChangeToken_forZoneID_);
        v60 = 0;
        v2 = v261;
      }

      else
      {
        v2 = v261;
        if (v58 == 21)
        {
          sub_188412578(*(v258 + 16), sel_setServerChangeToken_forZoneID_);
          v60 = 1;
        }

        else
        {
          v60 = 0;
        }
      }

      v3 = v265;
      v61 = v265;
      sub_18840D758();
      if ((v62 & 1) == 0)
      {
        v63 = sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
        v64 = sub_1884E02E0(v63);
        sub_1883F85E4(v64, v65, v66, v67, v68, v69, v70, v71, v72, v231, v232, v233, v234, isUnique, v237, v238, v239, v240, v241, v242, *(&v242 + 1), v243, v244, v245, v246, v247, v248, v249, *(&v249 + 1), v250, v251, v252, v253, v254, v255, v256, *(&v256 + 1), v73);
        *(v74 + 32) = v43;
        v75 = v43;
        sub_1884E02B0();
        swift_setDeallocating();
        sub_1884E3A30();
      }

      if ((v60 & 1) == 0)
      {
        v4 = v2[150];
        v3 = *(v4 + 16);
        if (v2[149])
        {

          sub_188404D70();
          v4 = v76;
          v3 = v77;

          if ((v4 & 1) == 0)
          {
            goto LABEL_34;
          }

LABEL_33:
          sub_1884DE724(v43, v3);
        }

        else
        {
          sub_1884DECAC(v43, v4 + 32, *(v4 + 16));
          if (v78)
          {
            v3 = 0;
            goto LABEL_33;
          }
        }

LABEL_34:
        sub_1884D43C8(v265, v43);

        sub_188410204();
        sub_188405EBC();

        goto LABEL_6;
      }

      sub_188405EBC();
      v25 = v28;
    }

    v79 = v30 + 8;
    v266 = -1 << *(v30 + 32);
    if (-v266 < 64)
    {
      v80 = ~(-1 << -v266);
    }

    else
    {
      v80 = -1;
    }

    v81 = v80 & v30[8];
    v239 = v3;
    sub_1883FB624();
    sub_1884DFDA8(v82, v83, v84, v85, v86, 0);
    v4 = (63 - v266) >> 6;

    v11 = 0;
    v267 = MEMORY[0x1E69E7CC8];
LABEL_39:
    v87 = v253;
    if (v81)
    {
      goto LABEL_44;
    }

    while (1)
    {
      v88 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_128:

        sub_1884E0208();
        sub_1883F6164();
        swift_getErrorValue();
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        sub_1884E0108();
        sub_1884E0188("Fatal error", v224, v225, v226, v227, "CloudKit/CKError.swift", v228, v229, v231, v232);
        sub_188410EF4();
        return;
      }

      if (v88 >= v4)
      {
        break;
      }

      v81 = v79[v88];
      ++v11;
      if (v81)
      {
        v11 = v88;
LABEL_44:
        v89 = __clz(__rbit64(v81));
        v81 &= v81 - 1;
        v90 = v89 | (v11 << 6);
        v91 = *(v268[6] + 8 * v90);
        v92 = v268[7] + 16 * v90;
        v93 = *v92;
        if ((*(v92 + 8) & 1) == 0)
        {
          sub_18844264C();
          sub_18844264C();
          v94 = v91;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1884773D4(0, *(v257 + 16) + 1, 1, v257);
            v257 = v117;
          }

          v96 = *(v257 + 16);
          v95 = *(v257 + 24);
          if (v96 >= v95 >> 1)
          {
            v118 = sub_1883F8DD4(v95);
            sub_1884773D4(v118, v96 + 1, 1, v257);
            v257 = v119;
          }

          sub_18844CAFC(v93);

          *(v257 + 16) = v96 + 1;
          *(v257 + 8 * v96 + 32) = v93;
          goto LABEL_39;
        }

        *v253 = v93;
        sub_1884E0134();
        sub_18844264C();
        sub_1884E0134();
        sub_18844264C();
        v238 = v91;
        sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
        type metadata accessor for CKError(0);
        HIDWORD(v237) = v97;
        if (swift_dynamicCast())
        {
          v235 = *v248;
          goto LABEL_54;
        }

        v87 = v261;

        *(v261 + 1288) = v93;
        v98 = v93;
        if (!swift_dynamicCast())
        {
          goto LABEL_128;
        }

        isUnique = *(v261 + 1328);
        v233 = *(v261 + 1312);
        sub_18844E6FC(&qword_1EA90D728, &qword_1886F8720);
        v99 = swift_allocObject();
        *(v99 + 16) = v242;
        *(v99 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v99 + 40) = v100;
        sub_1884E011C();
        *(v99 + 48) = v101;
        *(v99 + 56) = v246;
        Dictionary.init(dictionaryLiteral:)();
        *(v261 + 1224) = 20;
        sub_18847E984();
        sub_188402E5C();

        sub_1883F93BC();
        sub_188400BF0(&qword_1EA90CAE0, v102, &unk_1886F6978);
        _BridgedStoredNSError.init(_:userInfo:)();
        v235 = *(v261 + 1232);
        (*v244)(isUnique, v233);
        v87 = v247;
LABEL_54:

        LODWORD(isUnique) = swift_isUniquelyReferenced_nonNull_native();
        sub_188486398();
        LODWORD(v237) = v103;
        sub_1883FE314();
        v107 = v105 + v106;
        if (__OFADD__(v105, v106))
        {
          goto LABEL_133;
        }

        v108 = v104;
        sub_18844E6FC(&unk_1EA90E4B0, &qword_1886FB450);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v107))
        {
          sub_188486398();
          sub_188442C00();
          if (!v59)
          {
            sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
            sub_188410EF4();

            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            return;
          }

          v108 = v109;
        }

        else
        {
          v110 = v237;
        }

        if (v110)
        {
          sub_188413F84(v267, v231, v232, v233, v235);
          v111 = sub_1884E0134();
          sub_18844CAFC(v111);
        }

        else
        {
          sub_1883F9628(v108 >> 6);
          sub_1884E00F4(v112, v231, v232, v233, v235);
          v113 = sub_1884E0134();
          sub_18844CAFC(v113);
          v114 = *(v267 + 16);
          v115 = __OFADD__(v114, 1);
          v116 = v114 + 1;
          if (v115)
          {
            goto LABEL_134;
          }

          *(v267 + 16) = v116;
        }

        goto LABEL_39;
      }
    }

    p_isa = v268;

    v2 = v261;
    sub_1884723C0(v120);

    sub_188472474(v121);
    if (*(v267 + 16))
    {
      sub_18847F374(v267);
      v123 = v122;

      sub_1884E011C();
      v125 = sub_18847FB50(v123, v124 + 17, v252 | 0x8000000000000000);
      v4 = v239;
      sub_1884D43C8(v125, v239);
      sub_18840D758();
      if (v126)
      {

        v11 = v261;
        v127 = v239;
        v128 = Logger.logObject.getter();
        v4 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v128, v4))
        {
          v129 = sub_18840FB34();
          v130 = sub_18840DEBC();
          v11 = sub_1883FE540();
          *v129 = v249;
          v131 = sub_1883FE43C();
          v133 = sub_188405F34(v131, v132);

          *(v129 + 4) = v133;
          sub_1884062FC();
          *(v129 + 14) = v127;
          *v130 = v127;
          v134 = v127;
          _os_log_impl(&dword_1883EA000, v128, v4, "%s not clearing needsToFetchChanges for %@ due to retryable record-level error", v129, 0x16u);
          sub_188442B84(v130, &qword_1EA90DC70, &unk_1886FA190);
          p_isa = v268;
          sub_1883F7B60();
          sub_1883FE944(v11);
          sub_1883F82B8();
          sub_1883F7B60();
        }

        v3 = v262;
        if (v263)
        {

          v135 = sub_1883F9AB0();
          sub_1884DFE14(v135, v136, v137, v262, v263, 0);
          sub_188410204();
          v2 = v261;
          goto LABEL_74;
        }

        sub_188410204();
        v11 = 1;
        v2 = v261;
      }

      else
      {

        v3 = v262;
        if (v263)
        {

          v142 = sub_1883F9AB0();
          sub_1884DFE14(v142, v143, v144, v262, v263, 0);
          sub_188410204();
          goto LABEL_74;
        }

        v11 = 0;
        sub_188410204();
      }
    }

    else
    {

      v3 = v239;
      [*(v258 + 16) setServerChangeToken:v262 forZoneID:v239];
      if (v263)
      {
        v138 = sub_1883F9AB0();
        sub_1884DFE14(v138, v139, v140, v262, v141, 0);

        goto LABEL_74;
      }

      v11 = 0;
    }

    v145 = v2[149];
    v146 = v2[150];
    v2[152] = v239;
    v4 = swift_task_alloc();
    *(v4 + 16) = v145;
    *(v4 + 24) = v146;
    sub_18840581C(v4, v240);
    LOBYTE(v146) = v147;
    v3 = v148;

    if (v146)
    {
      sub_1884DE724(v239, v3);
    }

    if (v11)
    {

      v149 = sub_1883F9AB0();
      sub_1884DFE14(v149, v150, v151, v262, v263, 0);
    }

    else
    {
      v152 = sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
      v153 = sub_1884E02E0(v152);
      sub_1883F85E4(v153, v154, v155, v156, v157, v158, v159, v160, v161, v231, v232, v233, v234, isUnique, v237, v238, v239, v240, v241, v242, *(&v242 + 1), v243, v244, v245, v246, v247, v248, v249, *(&v249 + 1), v250, v251, v252, v253, v254, v255, v256, *(&v256 + 1), v162);
      *(v163 + 32) = v239;
      v4 = v239;
      sub_1884E02B0();

      v164 = sub_1883F9AB0();
      sub_1884DFE14(v164, v165, v166, v262, v263, 0);
      swift_setDeallocating();
      v12 = sub_1884E3A30();
    }

LABEL_74:
    v7 = v257;
  }

  while (2)
  {
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_111:

      goto LABEL_112;
    }

    if (v28 < v26)
    {
      v23 = *(v27 + 8 * v28);
      ++v25;
      if (v23)
      {
        goto LABEL_11;
      }

      continue;
    }

    break;
  }

  v167 = *(v257 + 16);
  v168 = v2[160];
  v2[193] = v168;
  if (v167)
  {
    v3 = *v254;
    goto LABEL_87;
  }

  v3 = *v254;
  if (!*(v168 + 16) && !v3[2])
  {
    v2[196] = v3;

    v173 = sub_1884DD690(v172);
    v175 = sub_1884E0068(v173, v174);
    sub_1884059A0(v175, v176);
    if (v177)
    {
      v3 = v2[163];
      v2[202] = v251;

      sub_1883FE5A0((v3 + 27), (v2 + 143));
      v178 = 0;
      v4 = -1;
      v11 = "BUG IN CLOUDKIT: CKSyncEngine finished fetching changes for a zone that it never started: %@";
      while (1)
      {
        v2[205] = v178;
        sub_18841E620();
        if (v180)
        {
          break;
        }

        sub_1883FDCE0(v179);
        if (v59)
        {
          if (p_isa[2])
          {
            v186 = p_isa[5];
            v187 = v28;
            sub_1884E02C8();
            NSObject._rawHashValue(seed:)(v186);
            sub_18840F8C8();
            while (1)
            {
              sub_1884E0090();
              if ((v188 & 1) == 0)
              {
                break;
              }

              v189 = *(p_isa[6] + 8 * &dword_1883EA000);
              v190 = static NSObject.== infix(_:_:)();

              v2 = v261;
              if (v190)
              {

                goto LABEL_109;
              }
            }

            v4 = -1;
          }

          else
          {
            v191 = v28;
          }
        }

        else
        {
          sub_1883FC674();
          v181 = v28;
          sub_1884E02C8();
          v182 = __CocoaSet.contains(_:)();

          if (v182)
          {
LABEL_109:
            v192 = v2[162];
            v193 = v28;
            v194 = sub_1884D4574();
            sub_1883FEE7C(v194);
            v195 = v193;
            v196 = v192;
            swift_task_alloc();
            sub_1883F9524();
            v2[208] = v197;
            *v197 = v198;
            sub_1883FE084(v197);
            goto LABEL_88;
          }
        }

        v3 = v28;
        v183 = Logger.logObject.getter();
        v184 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v183, v184))
        {
          v28 = sub_1883F9984();
          v185 = sub_18840DEBC();
          sub_1883FB368(v185);
          sub_1884E0020();
          sub_188442B84(v23, &qword_1EA90DC70, &unk_1886FA190);
          sub_1883F7B60();
          sub_1883F7B60();
        }

        else
        {
          p_isa = &v183->isa;
          v183 = v3;
        }

        v2 = v261;
        sub_1884E00E8();
        if (v59)
        {
          goto LABEL_111;
        }
      }

      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      return;
    }

LABEL_112:
    if (*(v2 + 106) == 1)
    {
      if (!sub_1884D44E8())
      {
        goto LABEL_135;
      }

      sub_18840F6B4();

      v199 = v4;
      v200 = Logger.logObject.getter();
      v201 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v200, v201))
      {
        v3 = sub_18840FB34();
        v202 = sub_18840DEBC();
        p_isa = sub_1883FE540();
        *v3 = v249;
        v203 = sub_1883FE43C();
        v205 = sub_188405F34(v203, v204);

        *(v3 + 4) = v205;
        sub_1884062FC();
        v206 = v199;
        v207 = _swift_stdlib_bridgeErrorToNSError();
        *(v3 + 14) = v207;
        *v202 = v207;
        sub_1884E0168(&dword_1883EA000, v208, v209, "%s error fetching record zone changes: %@");
        sub_188442B84(v202, &qword_1EA90DC70, &unk_1886FA190);
        sub_1883F7B60();
        sub_1883FE944(p_isa);
        sub_1883FC7E4();
        sub_1883F7B60();
      }

      v210 = v199;
      v211 = sub_1883FE860();
      sub_18840F1E8(v211);

      v212 = v3;
      v213 = _convertErrorToNSError(_:)();

      ShouldDefer = CKErrorShouldDefer(v213);
      sub_1883F8488();
      if (ShouldDefer)
      {
        swift_willThrow();

        sub_1883F8C1C();
        goto LABEL_124;
      }
    }

    else
    {
      sub_1884110F8();

      v215 = Logger.logObject.getter();
      v216 = static os_log_type_t.debug.getter();

      os_log_type_enabled(v215, v216);
      sub_188405714();
      if (v217)
      {
        sub_1883F9984();
        v270 = sub_1883F8C00();
        *v11 = 136315138;
        v218 = sub_1883FE43C();
        sub_188405F34(v218, v219);
        sub_1883FE2FC();
        *(v11 + 4) = p_isa;
        sub_18841006C(&dword_1883EA000, v220, v221, "%s finished fetch record zone changes request");
        sub_1883FE944(v270);
        sub_1883FD784();
        sub_1883F82B8();
      }

      else
      {
      }
    }

    sub_188400894();
LABEL_124:
    sub_188410EF4();

    __asm { BRAA            X2, X16 }
  }

LABEL_87:
  v2[194] = v3;
  v2[124] = v257;
  sub_1883F5A6C();

  swift_task_alloc();
  sub_1883F9524();
  v2[195] = v169;
  *v169 = v170;
  sub_1883FF75C(v169);
LABEL_88:
  sub_188410EF4();

  sub_1883FBEA8();
}

uint64_t sub_1884D957C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  memcpy((v2 + 192), (v2 + 992), 0x50uLL);
  sub_1883FBF6C(v2 + 192);
  v6 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884D9DE8()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  memcpy((v2 + 752), (v2 + 672), 0x50uLL);
  sub_1883FBF6C(v2 + 752);
  v6 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884DA58C()
{
  sub_1883FB4AC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1883F78EC();
  v11 = v10;
  sub_1883F7B78();
  *v12 = v11;
  v13 = *v1;
  sub_1883F7110();
  *v14 = v13;
  *(v11 + 48) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v15, v16, v17);
  }

  else
  {

    v18 = *(v13 + 8);

    return v18(v9, v7, v5, v3 & 1);
  }
}

uint64_t sub_1884DA6E4()
{
  sub_1883F7120();

  sub_1883F816C();

  return v1();
}

uint64_t sub_1884DA744(uint64_t a1, uint64_t a2)
{
  v3[151] = v2;
  v3[150] = a2;
  v3[149] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884DA76C, v2, 0);
}

void sub_1884DA76C()
{
  v203 = v0;
  v1 = v0;
  Strong = swift_weakLoadStrong();
  *(v0 + 1216) = Strong;
  if (!Strong)
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v63 = type metadata accessor for Logger();
    sub_1883F85F4(v63, qword_1EA90C9F8);

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = sub_1883F9984();
      v67 = sub_1883FE540();
      __src[0].n128_u64[0] = v67;
      *v66 = 136315138;
      v68 = sub_1883FE43C();
      v70 = sub_1883FE340(v68, v69, __src);

      *(v66 + 4) = v70;
      _os_log_impl(&dword_1883EA000, v64, v65, "%s not fetching changes for deallocated engine", v66, 0xCu);
      sub_1883FE944(v67);
      sub_1883F82B8();
      sub_1883F7B60();
    }

    v71 = *(v1 + 1192);
    *(v71 + 73) = 0u;
    v71[3] = 0u;
    v71[4] = 0u;
    v71[1] = 0u;
    v71[2] = 0u;
    *v71 = 0u;
LABEL_139:
    sub_18841B948();

    __asm { BRAA            X1, X16 }
  }

  v3 = Strong;
  memcpy((v1 + 112), (*(v1 + 1200) + 16), 0x50uLL);
  sub_1884C7AD8(__src);
  memcpy((v1 + 16), __src, 0x60uLL);
  if (!*(v1 + 24))
  {
    sub_188443314();
    v77 = swift_allocObject();
    *(v1 + 1224) = v77;
    memcpy((v77 + 16), (v1 + 112), 0x50uLL);
    *(v77 + 96) = v3;
    sub_1883FAB38(v1 + 112, v1 + 192);

    v78 = swift_task_alloc();
    *(v1 + 1232) = v78;
    *v78 = v1;
    v78[1] = sub_1884DB620;
    sub_18841B948();

    __asm { BR              X3 }
  }

  sub_188442B84(v1 + 16, &unk_1EA90E4D0, &unk_1886FB460);
  v4 = *(v1 + 120);
  LODWORD(v5) = *(v1 + 128);
  v7 = *(v1 + 136);
  v6 = *(v1 + 144);
  v8 = *(v1 + 152);
  v9 = *(v1 + 160);
  v10 = *(v1 + 168);
  v11 = *(v1 + 176);
  v12 = *(v1 + 184);
  sub_1883FAB38(v1 + 112, v1 + 512);
  v187 = v4;
  *(v1 + 664) = v4;
  LODWORD(v192) = v5;
  *(v1 + 672) = v5;
  *(v1 + 680) = v7;
  *(v1 + 688) = v6;
  v184 = v8;
  *(v1 + 696) = v8;
  HIDWORD(v181) = v9;
  *(v1 + 704) = v9 & 1;
  v178 = v10;
  *(v1 + 712) = v10;
  *(v1 + 720) = v11 & 1;
  *(v1 + 728) = v12;
  if (qword_1EA90C9F0 != -1)
  {
LABEL_157:
    sub_1883F7480(&qword_1EA90C9F0);
  }

  v13 = type metadata accessor for Logger();
  sub_1883F85F4(v13, qword_1EA90C9F8);
  sub_1883FAB38(v1 + 112, v1 + 272);

  sub_1883F697C(v1 + 664, v1 + 736);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  sub_1883FB300(v1 + 112);
  sub_1883F7768(v1 + 664);
  v197 = v6;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = sub_1883FE540();
    v202[0] = swift_slowAlloc();
    *v16 = 136315650;
    v17 = sub_1883FE43C();
    sub_1883FE340(v17, v18, v202);
    sub_1883FE2FC();
    *(v16 + 4) = v10;
    v6 = 2080;
    *(v16 + 12) = 2080;
    memcpy(__src, (v1 + 112), 0x50uLL);
    sub_1883FAB38(v1 + 112, v1 + 432);
    CKSyncEngine.FetchChangesContext.description.getter();
    sub_188404258();
    memcpy((v1 + 352), __src, 0x50uLL);
    v19 = sub_1883FB300(v1 + 352);
    sub_18840C150(v19, v20, v202);
    sub_188404FC8();

    *(v16 + 14) = __src;
    *(v16 + 22) = 2080;
    memcpy(__src, (v1 + 664), 0x48uLL);
    sub_1883F697C(v1 + 664, v1 + 880);
    CKSyncEngine.FetchChangesOptions.description.getter();
    sub_188404258();
    memcpy((v1 + 808), __src, 0x48uLL);
    v21 = sub_1883F7768(v1 + 808);
    sub_18840C150(v21, v22, v202);
    sub_188404FC8();

    *(v16 + 24) = __src;
    sub_1883F6560(&dword_1883EA000, v23, v15, "%s next fetch changes options for context %s: %s");
    swift_arrayDestroy();
    sub_1883FD784();
    sub_1883F82B8();
  }

  v24 = (v1 + 952);
  v179 = *(*(v1 + 1208) + 128);
  v25 = CKSyncEngine.State.zoneIDsWithUnfetchedServerChanges.getter();
  v182 = MEMORY[0x1E69E7CC0];
  __src[0].n128_u64[0] = MEMORY[0x1E69E7CC0];
  v26 = sub_1883F4C9C(v25);
  v34.n128_f64[0] = sub_1884E00C4(v26, v27, v28, v29, v30, v31, v32, v33, v177, v178, v179, v181, v182, v184, v1 + 1176, v1 + 1168, v187, v1 + 1064, v1 + 1184, v192, v194, v1, v1 + 1008, v197);
  v35 = 0;
  v199 = 0;
  while (v1 != v35)
  {
    if (v194)
    {
      v36 = MEMORY[0x18CFD59D0](v35, v25, v34);
    }

    else
    {
      if (v35 >= *(v6 + 16))
      {
        goto LABEL_146;
      }

      v36 = *(v25 + 8 * v35 + 32);
    }

    v37 = v36;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_145;
    }

    if (v193)
    {
      if (v193 != 1 || (v14 = v185, v38 = sub_1884E0298(), sub_188402ED8(v38, v39, v40, v41, v42, v43, v44, v45, v177, v178, v180, v181, v183, v184, v185, v186, v188), v46 = sub_1883FDBF4(), sub_1884E0268(v46, v47), sub_1883FF670(), , , (v5 & 1) != 0))
      {
LABEL_15:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v5 = *(__src[0].n128_u64[0] + 16);
        sub_1883FAA5C();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        sub_1883FAA5C();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_18;
      }
    }

    else
    {
      v14 = v186;
      v48 = sub_1884E0298();
      sub_188402ED8(v48, v49, v50, v51, v52, v53, v54, v55, v177, v178, v180, v181, v183, v184, v185, v186, v188);
      v56 = sub_1883FDBF4();
      sub_1884E0268(v56, v57);
      sub_1883FF670();

      if ((v5 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

LABEL_18:
    ++v35;
  }

  v6 = __src[0].n128_u64[0];
  __src[0].n128_u64[0] = MEMORY[0x1E69E7CC0];
  v58 = v198;
  v59 = sub_1883F4C9C(v198);
  v10 = 0;
  v1 = v195;
  while (v59 != v10)
  {
    sub_1884E01E8();
    if ((v198 & 0xC000000000000001) != 0)
    {
      v60 = MEMORY[0x18CFD59D0](v10, v58);
    }

    else
    {
      v60 = *(v58 + 8 * v10 + 32);
    }

    v61 = v60;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_147;
    }

    v14 = v190;
    v190->isa = v60;
    v62 = swift_task_alloc();
    sub_1883FC7AC(v62);
    sub_1883FF670();

    if (v5)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = *(__src[0].n128_u64[0] + 16);
      sub_1883FAA5C();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      sub_1883FAA5C();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v10;
    v58 = v198;
  }

  sub_188472318(v6);
  v73 = sub_1884DD690(__src[0].n128_u64[0]);
  v201 = v72;
  if (!*(v72 + 16))
  {
    v173 = v195[149];

    sub_1883F7768((v195 + 83));

    *(v173 + 73) = 0u;
    v173[3] = 0u;
    v173[4] = 0u;
    v173[1] = 0u;
    v173[2] = 0u;
    *v173 = 0u;
    goto LABEL_139;
  }

  v14 = sub_1884DE588(0, v72);
  if (*(v184 + 16) && (sub_188486310(), (v75 & 1) != 0))
  {
    v76 = *(*(v184 + 56) + 16 * v74);
  }

  else
  {
    v76 = HIDWORD(v181);
  }

  LODWORD(v185) = v76;
  v6 = MEMORY[0x1E69E7CC8];
  v202[0] = MEMORY[0x1E69E7CC0];
  v81 = v73;
  v191 = v14;
LABEL_44:
  v192 = v6 & 0xC000000000000001;
  v82 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 < 0)
  {
    v82 = v6;
  }

  v186 = v6;
  v187 = v82;
  while (1)
  {
    if (v192)
    {
      v83 = __CocoaSet.count.getter();
    }

    else
    {
      v83 = *(v186 + 16);
    }

    v84 = *(v1 + 1208);
    if (v83 >= sub_1884C6868() || (v5 = v201, !*(v201 + 16)))
    {

LABEL_137:
      v172 = *(v1 + 1192);

      memcpy(v172, (v1 + 664), 0x48uLL);
      *(v172 + 72) = v183;
      *(v172 + 80) = v186;
      *(v172 + 88) = v185 & 1;

      goto LABEL_139;
    }

    if (!v81)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1885143C8();
        v201 = v5;
      }

      v99 = *(v5 + 16);
      if (!v99)
      {
        goto LABEL_154;
      }

      sub_1883FF1E0(v99);
      *(v5 - 16) = v84;
      specialized ContiguousArray._endMutation()();
      v81 = 0;
      goto LABEL_115;
    }

    v194 = v73;
    sub_18841105C();
    v85 = v84;
    NSObject._rawHashValue(seed:)(v83);
    sub_18840767C();
    if (v86)
    {
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

    v87 = sub_188410B90();
    v89 = v88;
    v91 = v90;

    __src[0].n128_u64[0] = v10;
    __src[0].n128_u64[1] = v83;
    __src[1].n128_u64[0] = v6;
    __src[1].n128_u64[1] = v87;
    __src[2].n128_u64[0] = v89;
    __src[2].n128_u64[1] = v91;
    __src[3].n128_u8[0] = 0;
    if (!v87)
    {
      goto LABEL_158;
    }

    while (1)
    {
      v92 = __src[1];
      *v24 = __src[0];
      v24[1] = v92;
      v24[2] = __src[2];
      v24[3].n128_u8[0] = __src[3].n128_u8[0];
      v93 = _HashTable.BucketIterator.currentValue.getter();
      if ((v94 & 1) == 0 && !v93)
      {
        break;
      }

      _HashTable.BucketIterator.advance()();
      if (!__src[1].n128_u64[1])
      {
        goto LABEL_158;
      }
    }

    if (!v195[122])
    {
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
      return;
    }

    v6 = __src[1].n128_i64[0];

    v96 = *(v5 + 16);
    v1 = v195;
    sub_1883FE844(v95, (v195 + 143));
    v97 = sub_188413F40();
    if (v98)
    {
      if (!v96)
      {
        goto LABEL_70;
      }
    }

    else if (v96 <= MEMORY[0x18CFD4CC0](v97))
    {
LABEL_70:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1885143C8();
        v201 = v5;
      }

      v100 = *(v5 + 16);
      if (!v100)
      {
        goto LABEL_156;
      }

      sub_1883FF1E0(v100);
      *(v5 - 16) = v96;
      v101 = specialized ContiguousArray._endMutation()();
      sub_1883FE844(v101, (v195 + 140));
      v102 = v201;
      v103 = *(v201 + 16);
      v104 = *(v73 + 24) & 0x3FLL;
      if (v104 || v103 >= 0x10)
      {
        v138 = MEMORY[0x18CFD4CE0](v103);
        if (v104 <= v138)
        {
          v139 = v138;
        }

        else
        {
          v139 = v104;
        }

        v73 = sub_1884DE9B0(v102, v139, 0, v104, sub_1884DEBA8);

        v81 = v73;
      }

      else
      {

        v73 = 0;
        v81 = 0;
      }

      v14 = v191;
      goto LABEL_115;
    }

    if (swift_isUniquelyReferenced_native())
    {
      v14 = v191;
    }

    else
    {
      v14 = v191;
      if (!v73)
      {
        goto LABEL_164;
      }

      v105 = _HashTable.copy()();

      v73 = v105;
    }

    if (!v73)
    {
      goto LABEL_163;
    }

    v1 = v73 + 32;
    sub_1883FE1E0();
    v106 = _HashTable.UnsafeHandle._startIterator(bucket:)();
    __src[0].n128_u64[0] = v73 + 16;
    __src[0].n128_u64[1] = v73 + 32;
    __src[1].n128_u64[0] = v6;
    __src[1].n128_u64[1] = v106;
    __src[2].n128_u64[0] = v107;
    __src[2].n128_u64[1] = v108;
    __src[3].n128_u8[0] = 0;
    _HashTable.BucketIterator.advance()();
    if (__src[1].n128_u64[1])
    {
      break;
    }

    sub_1884038D4();

LABEL_111:

    sub_1883FF02C();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1885143C8();
      v201 = v5;
    }

    v1 = v195;
    v140 = *(v5 + 16);
    if (!v140)
    {
      goto LABEL_155;
    }

    sub_1883FF1E0(v140);
    *(v5 - 16) = __src;
    specialized ContiguousArray._endMutation()();
    v81 = v73;
LABEL_115:
    v141 = sub_1884D4574();
    if (!v141)
    {
      if (*(v184 + 16) && (sub_188486310(), (v144 & 1) != 0))
      {
        v145 = (*(v184 + 56) + 16 * v143);
        v146 = *v145;
        v147 = *(v145 + 1);
      }

      else
      {
        v146 = HIDWORD(v181);
        v147 = v178;
      }

      if ((v185 ^ v146))
      {
        goto LABEL_148;
      }

      v148 = [*(v180 + 16) fetchChangesZoneConfigurationForZoneID_];
      [v148 setResultsLimit_];
      v149 = v6;
      v150 = v148;
      v151 = v186;
      if (v192)
      {
        v152 = __CocoaSet.count.getter();
        if (__OFADD__(v152, 1))
        {
          goto LABEL_160;
        }

        v151 = sub_1885112B4(v187, v152 + 1);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __src[0].n128_u64[0] = v151;
      sub_188486310();
      sub_1883FE314();
      v158 = v156 + v157;
      if (__OFADD__(v156, v157))
      {
        goto LABEL_159;
      }

      v159 = v154;
      v160 = v155;
      sub_18844E6FC(&unk_1EA90E4F0, &qword_1886FB488);
      v161 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v158);
      v162 = __src[0].n128_u64[0];
      if (v161)
      {
        sub_188486310();
        v1 = v195;
        if ((v160 & 1) != (v164 & 1))
        {
          goto LABEL_150;
        }

        v159 = v163;
        if (v160)
        {
LABEL_132:
          v168 = *(v162 + 56);
          v169 = *(v168 + 8 * v159);
          *(v168 + 8 * v159) = v150;

          goto LABEL_133;
        }
      }

      else
      {
        v1 = v195;
        if (v160)
        {
          goto LABEL_132;
        }
      }

      sub_1883F9628(v159 >> 6);
      *(v165 + 8 * v159) = v149;
      *(*(v162 + 56) + 8 * v159) = v150;
      v166 = *(v162 + 16);
      v86 = __OFADD__(v166, 1);
      v167 = v166 + 1;
      if (v86)
      {
        goto LABEL_161;
      }

      *(v162 + 16) = v167;
LABEL_133:
      v6 = v162;
      v170 = v149;
      MEMORY[0x18CFD52F0]();
      v10 = *((v202[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      v171 = *((v202[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (v10 >= v171 >> 1)
      {
        sub_1883F8DD4(v171);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v183 = v202[0];
      v14 = v191;
      goto LABEL_44;
    }

    v142 = v141;
  }

  sub_1883FE1E0();
  v10 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
  v194 = v73;

  while (1)
  {
    v117 = sub_1883FD92C(__src[0], __src[1], v109, v110, v111, v112, v113, v114, v115, v116, v177, v178, v180, v181, v183, v184, v185, v186, v187, v189, v191, v192, v194, v195, v196, v198, v199, __src[0].n128_i64[0], __src[0].n128_i64[1], __src[1].n128_i64[0], __src[1].n128_i64[1], *&__src[2], __src[3].n128_i8[0]);
    if (v118)
    {
      goto LABEL_162;
    }

    if ((v117 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:

      goto LABEL_137;
    }

    if (v117 >= *(v5 + 16))
    {
      goto LABEL_143;
    }

    v119 = *(v198 + 8 * v117);
    v120 = sub_188402E5C();
    v121 = NSObject._rawHashValue(seed:)(v120);

    sub_188410C10();
    if (v86)
    {
      goto LABEL_144;
    }

    v130 = v73 & v121;
    if (v6 >= v10)
    {
      if (v130 < v10 || v6 < v130)
      {
        goto LABEL_103;
      }
    }

    else if (v130 < v10 && v6 < v130)
    {
      goto LABEL_103;
    }

    sub_1883FD92C(__src[0], __src[1], v122, v123, v124, v125, v126, v127, v128, v129, v177, v178, v180, v181, v183, v184, v185, v186, v187, v189, v191, v192, v194, v195, v196, v198, v199, __src[0].n128_i64[0], __src[0].n128_i64[1], __src[1].n128_i64[0], __src[1].n128_i64[1], *&__src[2], __src[3].n128_i8[0]);
    if (v133)
    {
      v134 = 0;
    }

    else
    {
      sub_188404C1C();
    }

    sub_1883F7F50(v134);
    if (!v137)
    {
      break;
    }

LABEL_102:
    v6 = v195[135];
LABEL_103:
    _HashTable.BucketIterator.advance()();
    if (!__src[1].n128_u64[1])
    {
      sub_1884038D4();
      v14 = v191;
      v73 = v194;
      goto LABEL_111;
    }
  }

  if (!__OFADD__(v136 << v136, 64))
  {
    sub_18840AD78(v135);
    goto LABEL_102;
  }

  __break(1u);
LABEL_150:
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  sub_18841B948();

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}
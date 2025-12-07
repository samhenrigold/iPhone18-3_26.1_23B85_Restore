Swift::Int sub_100001648()
{
  sub_10000438C();
  sub_10000439C(0);
  return sub_1000043AC();
}

Swift::Int sub_1000016B4(uint64_t a1)
{
  sub_10000438C();
  sub_10000439C(0);
  return sub_1000043AC();
}

uint64_t sub_100001708(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003770(&qword_10000C1A0, &qword_100004830);
    v2 = sub_10000432C();
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
    sub_100003814(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100003870(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100003870(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100003870(v31, v32);
    result = sub_10000431C(v2[5]);
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
    result = sub_100003870(v32, (v2[7] + 32 * v10));
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

uint64_t sub_1000019D0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_10000410C();
    v10 = v9;

    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = 0xF000000000000000;
  if (a3)
  {
LABEL_3:
    a3 = sub_1000042BC();
  }

LABEL_4:
  v11 = a4;
  v7(v6, v10, a3, a4);

  sub_1000038E0(v6, v10);
}

unint64_t sub_100001AC4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003770(&qword_10000C188, &qword_100004818);
    v2 = sub_10000432C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1000037B8(*(a1 + 48) + 40 * v12, v27);
        sub_100003814(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_1000037B8(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_100003814(v25 + 8, v20);
        sub_100003880(v24, &qword_10000C190, &qword_100004820);
        v21 = v18;
        sub_100003870(v20, v22);
        v13 = v21;
        sub_100003870(v22, v23);
        sub_100003870(v23, &v21);
        result = sub_100002950(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_100003F34(v10);
          result = sub_100003870(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_100003870(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_100003880(v24, &qword_10000C190, &qword_100004820);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100001DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100001EAC;

  return PFLTaskRunner.resolveTask(for:taskPreferences:)(a1, a2, a3, a4, a5);
}

uint64_t sub_100001EAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100001FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100001EAC;

  return PFLTaskRunner.ensureDataAvailability(taskPreferences:)(a1, a2, a3);
}

uint64_t sub_100002050()
{
  v1 = sub_10000419C();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_1000020C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002170;

  return sub_100002C64(a1);
}

uint64_t sub_100002170(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100002278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000040C0;

  return PFLTaskRunner.handleNoTasksAvailable(taskPreferences:)(a1, a2, a3);
}

uint64_t sub_100002328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000040C0;

  return PFLTaskRunner.handleNoAvailableTasks(taskPreferences:)(a1, a2, a3);
}

uint64_t sub_1000023D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000040C4;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_100002488(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002530;

  return sub_1000038F4(a1);
}

uint64_t sub_100002530(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10000262C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1000040C0;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100002710(uint64_t a1)
{
  v2 = sub_100002898();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000027B8();
  sub_10000411C();
  return 0;
}

unint64_t sub_1000027B8()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

unint64_t sub_100002898()
{
  result = qword_10000C178;
  if (!qword_10000C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C178);
  }

  return result;
}

uint64_t sub_1000028EC(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

unint64_t sub_100002950(uint64_t a1, uint64_t a2)
{
  sub_10000438C();
  sub_1000042CC();
  v4 = sub_1000043AC();

  return sub_1000029C8(a1, a2, v4);
}

unint64_t sub_1000029C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10000433C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100002A80(uint64_t *a1)
{
  v2 = sub_10000429C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (*a1)
  {
    swift_errorRetain();
    sub_10000415C();
    swift_errorRetain();
    v7 = sub_10000427C();
    v8 = sub_1000042FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "%@", v9, 0xCu);
      sub_100003880(v10, &qword_10000C198, &qword_100004828);
    }

    (*(v3 + 8))(v5, v2);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100002C64(uint64_t a1)
{
  v1[21] = a1;
  v2 = sub_1000040FC();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v3 = sub_10000429C();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_100002DAC, 0, 0);
}

uint64_t sub_100002DAC()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_10000428C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100004680;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  v6 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1000040EC();

  v7 = objc_allocWithZone(PHPhotoLibrary);
  sub_1000040DC(v8);
  v10 = v9;
  v11 = [v7 initWithPhotoLibraryURL:v9];

  (*(v2 + 8))(v1, v3);
  v0[20] = 0;
  v48 = v11;
  v12 = [v11 openAndWaitWithUpgrade:0 error:v0 + 20];
  v13 = v0[20];
  if (v12)
  {
    v14 = v4;
    v15 = objc_allocWithZone(PHAPrivateFederatedLearningFacade);
    v0[6] = nullsub_1;
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000028EC;
    v0[5] = &unk_100008630;
    v16 = _Block_copy(v0 + 2);
    v17 = v13;
    v46 = [v15 initWithPhotosLibrary:v11 graphManagerProgress:v16];
    v18 = v16;
    v19 = v14;
    _Block_release(v18);

    sub_10000423C();
    isa = sub_1000042DC().super.isa;

    v21 = sub_10000424C();
    sub_100001708(v21);

    v22 = sub_1000042AC().super.isa;

    v23 = swift_allocObject();
    v23[2] = v14;
    v23[3] = v5;
    v23[4] = v47;
    v0[12] = sub_1000035CC;
    v0[13] = v23;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_1000019D0;
    v0[11] = &unk_100008680;
    v24 = _Block_copy(v0 + 8);

    [v46 runPFLWithAttachments:isa recipeUserInfo:v22 resultBlock:v24];
    _Block_release(v24);

    sub_100002A80((v47 + 16));
    swift_beginAccess();
    if (*(v5 + 16))
    {

      v32 = sub_100001AC4(v31);

      if (v32)
      {
        v33 = sub_10000427C();
        v34 = sub_1000042EC();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v33, v34, "Successfully submitted results", v35, 2u);
        }

        v37 = v0[26];
        v36 = v0[27];
        v38 = v0[25];

        swift_beginAccess();
        v39 = *(v19 + 16);
        v40 = *(v19 + 24);
        sub_10000417C();
        swift_allocObject();
        sub_100003708(v39, v40);
        v41 = sub_10000416C();

        (*(v37 + 8))(v36, v38);

        v42 = v0[1];

        return v42(v41);
      }
    }

    v44 = v0[26];
    v43 = v0[27];
    v45 = v0[25];
    sub_1000036B4();
    swift_allocError();
    swift_willThrow();

    (*(v44 + 8))(v43, v45);
  }

  else
  {
    v26 = v0[26];
    v25 = v0[27];
    v27 = v0[25];
    v28 = v13;
    sub_1000040CC();

    swift_willThrow();
    (*(v26 + 8))(v25, v27);
  }

  v29 = v0[1];

  return v29();
}

uint64_t sub_100003460()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_1000034A8(*(v0 + 16), v1);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000034A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000034FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003534()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000356C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003584()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000035CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[2];
  v10 = v4[3];
  v11 = v4[4];
  swift_beginAccess();
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_100003708(a1, a2);
  sub_1000038E0(v12, v13);
  swift_beginAccess();
  *(v10 + 16) = a3;

  swift_beginAccess();
  *(v11 + 16) = a4;
  swift_errorRetain();
}

unint64_t sub_1000036B4()
{
  result = qword_10000C180;
  if (!qword_10000C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C180);
  }

  return result;
}

uint64_t sub_100003708(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000371C(a1, a2);
  }

  return a1;
}

uint64_t sub_10000371C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100003770(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003814(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_100003870(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100003880(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003770(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000038E0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000034A8(result, a2);
  }

  return result;
}

uint64_t sub_1000038F4(uint64_t a1)
{
  v1[8] = a1;
  v2 = sub_1000041FC();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_10000422C();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_100003A10, 0, 0);
}

uint64_t sub_100003A10()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  sub_100003770(&qword_10000C1A8, &qword_100004840);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100004690;
  sub_10000421C();
  sub_10000420C();
  v0[7] = v4;
  sub_100003EEC(&qword_10000C1B0, 255, &type metadata accessor for PFLPluginConsent, &protocol conformance descriptor for PFLPluginConsent);
  sub_100003770(&qword_10000C1B8, &qword_100004848);
  sub_100003E40();
  sub_10000430C();
  (*(v3 + 104))(v1, enum case for PFLTaskSource.CKProd(_:), v2);
  sub_10000426C();
  swift_allocObject();
  v0[15] = sub_10000425C();
  v5 = type metadata accessor for PhotosPFLTaskRunner();
  v6 = swift_allocObject();
  v0[16] = v6;
  v0[5] = v5;
  v8 = sub_100003EEC(&qword_10000C1C8, v7, type metadata accessor for PhotosPFLTaskRunner, &unk_100004758);
  v0[2] = v6;
  v0[6] = v8;
  v12 = &async function pointer to dispatch thunk of PFLPlugin.run(context:runner:) + async function pointer to dispatch thunk of PFLPlugin.run(context:runner:);

  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_100003CAC;
  v10 = v0[8];

  return (v12)(v10, v0 + 2);
}

uint64_t sub_100003CAC(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 144) = a1;

  sub_100003F34((v2 + 16));

  return _swift_task_switch(sub_100003DB4, 0, 0);
}

uint64_t sub_100003DB4()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 144);

  return v1(v2);
}

unint64_t sub_100003E40()
{
  result = qword_10000C1C0;
  if (!qword_10000C1C0)
  {
    sub_100003EA4(&qword_10000C1B8, &qword_100004848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1C0);
  }

  return result;
}

uint64_t sub_100003EA4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003EEC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003F34(void *a1)
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

uint64_t getEnumTagSinglePayload for PhotosPFLPluginError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PhotosPFLPluginError(_WORD *result, int a2, int a3)
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

unint64_t sub_100004068()
{
  result = qword_10000C1D0;
  if (!qword_10000C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1D0);
  }

  return result;
}
uint64_t HostInferenceProvider.init()()
{
  v11[3] = type metadata accessor for RemoteXPCProvider();
  v11[4] = &off_100019080;
  v11[0] = swift_allocObject();
  v9 = &type metadata for RemoteServiceDiscoveryProvider;
  v10 = &off_100018C18;
  type metadata accessor for SysctlProvider();
  v0 = swift_allocObject();
  sub_10000170C(v11, v7, &qword_10001C6A8, &qword_1000105B0);
  sub_10000170C(v8, v6, &qword_10001C6B0, &qword_1000105B8);
  v5[3] = &type metadata for MobileGestaltProvider;
  v5[4] = &off_100018D80;
  v4[3] = &type metadata for OSVariantProvider;
  v4[4] = &off_100018D50;
  type metadata accessor for HostInferenceProviderImplementation(0);
  v1 = swift_allocObject();
  sub_100001774(v5, &type metadata for MobileGestaltProvider);
  sub_100001774(v4, &type metadata for OSVariantProvider);
  v2 = sub_1000024D4(v0, v7, v6, v1);
  sub_100002938(v4);
  sub_100002938(v5);
  sub_100002984(v8, &qword_10001C6B0, &qword_1000105B8);
  sub_100002984(v11, &qword_10001C6A8, &qword_1000105B0);
  return v2;
}

uint64_t sub_1000016C4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000170C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000016C4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100001774(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t HostInferenceProvider.isVersionSupported(requestVersion:)()
{
  sub_100002C60();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001858;

  return sub_100003D20();
}

uint64_t sub_100001858()
{
  sub_100002C60();
  v3 = v2;
  sub_100002C6C();
  v4 = *v1;
  sub_100002C50();
  *v5 = v4;

  v6 = *(v4 + 8);
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t _s28HostInferenceProviderService0abC0V14requestOneShot10clientData13configuration20ModelManagerServices06ClientI0VAI_AG0bC20RequestConfigurationVtYaAG0B5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v6 = sub_10000F984();
  v5[3] = v6;
  v5[4] = *(v6 - 8);
  v5[5] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[6] = v7;
  *v7 = v5;
  v7[1] = sub_100001A98;

  return sub_10000527C();
}

uint64_t sub_100001A98()
{
  sub_100002C60();
  sub_100002C6C();
  v2 = *v1;
  sub_100002C50();
  *v3 = v2;

  if (v0)
  {

    return _swift_task_switch(sub_100001BBC, 0, 0);
  }

  else
  {

    sub_100002C78();

    return v4();
  }
}

uint64_t sub_100001BBC()
{
  sub_100002C60();
  (*(v0[4] + 32))(v0[2], v0[5], v0[3]);

  sub_100002C78();

  return v1();
}

uint64_t sub_100001C58@<X0>(uint64_t *a1@<X8>)
{
  result = HostInferenceProvider.init()();
  *a1 = result;
  return result;
}

uint64_t sub_100001C80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002C4C;

  return HostInferenceProvider.isVersionSupported(requestVersion:)();
}

uint64_t sub_100001D1C()
{
  v1 = sub_10000FB04();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100001DC4()
{
  sub_10000FB14();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100001E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = sub_10000F984();
  v3[3] = v4;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[6] = v5;
  *v5 = v3;
  v5[1] = sub_100002C48;

  return _s28HostInferenceProviderService0abC0V15transitionAsset_2toy20ModelManagerServices0bcF10DescriptorV_AF9LoadStateOtYaAF0B5ErrorOYKF(v5, v6);
}

uint64_t sub_100001F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100002C44;

  return InferenceProviding.requestInputStreamStep(clientDataArray:configuration:)(a1, a2, a3, a4, a5);
}

uint64_t sub_100001FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100002090;

  return InferenceProviding.inputStreamEnded(requestID:)(a1, a2, a3);
}

uint64_t sub_100002090()
{
  sub_100002C60();
  sub_100002C6C();
  v1 = *v0;
  sub_100002C50();
  *v2 = v1;

  sub_100002C78();

  return v3();
}

uint64_t sub_100002170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a4;
  v9 = sub_10000F984();
  v5[3] = v9;
  v5[4] = *(v9 - 8);
  v10 = swift_task_alloc();
  v5[5] = v10;
  v11 = *v4;
  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_100002298;

  return _s28HostInferenceProviderService0abC0V14requestOneShot10clientData13configuration20ModelManagerServices06ClientI0VAI_AG0bC20RequestConfigurationVtYaAG0B5ErrorOYKF(a1, a2, a3, v11, v10);
}

uint64_t sub_100002298()
{
  sub_100002C60();
  sub_100002C6C();
  v3 = v2;
  v4 = *v1;
  sub_100002C50();
  *v5 = v4;

  if (v0)
  {
    (*(v3[4] + 32))(v3[2], v3[5], v3[3]);
  }

  sub_100002C78();

  return v6();
}

uint64_t sub_1000023B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[3] = type metadata accessor for RemoteXPCProvider();
  v12[4] = &off_100019080;
  v12[0] = a3;
  v11[3] = &type metadata for RemoteServiceDiscoveryProvider;
  v11[4] = &off_100018C18;
  v10[3] = &type metadata for OSVariantProvider;
  v10[4] = &off_100018D50;
  sub_10000F9A4();
  sub_100002A50(v11, v9);
  sub_100002A50(v10, v8);
  sub_100002A50(v12, v7);
  v4 = swift_allocObject();
  sub_100002A38(v9, v4 + 16);
  sub_100002A38(v8, v4 + 56);
  sub_100002A38(v7, v4 + 96);

  v5 = sub_10000F994();
  sub_100002938(v12);
  sub_100002938(v11);
  sub_100002938(v10);
  return v5;
}

uint64_t sub_1000024D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000FB74();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000FBA4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[3] = type metadata accessor for SysctlProvider();
  v42[4] = &off_100018E20;
  v42[0] = a1;
  v40 = &type metadata for MobileGestaltProvider;
  v41 = &off_100018D80;
  v37 = &type metadata for OSVariantProvider;
  v38 = &off_100018D50;
  swift_defaultActor_initialize();
  sub_100002A50(v42, a4 + 112);
  if (!sub_10000B85C())
  {
    *(a4 + 152) = 0;
    (*(v9 + 104))(v12, enum case for RemoteInterfaceInformation.RemoteSource.physical(_:), v8);
    sub_1000029F4(v39, v40);
    sub_1000039DC();
    sub_10000FB94();
    sub_100002984(a3, &qword_10001C6B0, &qword_1000105B8);
    sub_100002984(a2, &qword_10001C6A8, &qword_1000105B0);
    v23 = v36;
    goto LABEL_6;
  }

  sub_10000170C(a2, &v33, &qword_10001C6A8, &qword_1000105B0);
  if (v34)
  {
    v30 = a2;
    sub_100002A38(&v33, v35);
    sub_10000170C(a3, &v31, &qword_10001C6B0, &qword_1000105B8);
    v29 = a3;
    if (v32)
    {
      sub_100002A38(&v31, &v33);
      v18 = sub_10000FA54();
      v20 = v19;
      v21 = sub_1000029F4(v35, v35[3]);
      sub_1000029F4(&v33, v34);
      sub_1000029F4(v36, v37);
      v22 = sub_1000023B4(v18, v20, *v21);

      *(a4 + 152) = v22;
      (*(v9 + 104))(v12, enum case for RemoteInterfaceInformation.RemoteSource.vm(_:), v8);
      sub_1000029F4(v39, v40);
      sub_1000039DC();
      sub_10000FB94();
      sub_100002984(v29, &qword_10001C6B0, &qword_1000105B8);
      sub_100002984(v30, &qword_10001C6A8, &qword_1000105B0);
      sub_100002938(v36);
      sub_100002938(&v33);
      v23 = v35;
LABEL_6:
      sub_100002938(v23);
      (*(v14 + 32))(a4 + OBJC_IVAR____TtC28HostInferenceProviderService35HostInferenceProviderImplementation_interface, v17, v13);
      sub_100002938(v39);
      sub_100002938(v42);
      return a4;
    }

    sub_100002938(v35);
    v25 = &qword_10001C6B0;
    v26 = &qword_1000105B8;
    v27 = &v31;
  }

  else
  {
    v25 = &qword_10001C6A8;
    v26 = &qword_1000105B0;
    v27 = &v33;
  }

  sub_100002984(v27, v25, v26);
  result = sub_10000FE14();
  __break(1u);
  return result;
}

uint64_t sub_100002938(void *a1)
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

uint64_t sub_100002984(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000016C4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_1000029F4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100002A38(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100002A50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002AB4()
{
  sub_100002938(v0 + 2);
  sub_100002938(v0 + 7);
  sub_100002938(v0 + 12);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_100002AFC()
{
  sub_100002C60();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002090;

  return sub_10000D76C();
}

uint64_t sub_100002BAC(uint64_t a1, int a2)
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

uint64_t sub_100002BCC(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_10001C6B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10001C6B8);
    }
  }
}

uint64_t sub_100002CB8()
{
  v0 = sub_10000FB54();

  return _swift_deallocClassInstance(v0, 16, 7);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for HostInferenceProviderService(0);
  sub_100002D94();
  sub_10000F8D4();
  return 0;
}

uint64_t type metadata accessor for HostInferenceProviderService(uint64_t a1)
{
  result = qword_10001C728;
  if (!qword_10001C728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100002D94()
{
  result = qword_10001C720;
  if (!qword_10001C720)
  {
    type metadata accessor for HostInferenceProviderService(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C720);
  }

  return result;
}

uint64_t sub_100002E44()
{
  type = remote_device_get_type();
  if (type == 9)
  {
    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  if (type == 18)
  {
    v1 = 0;
  }

  if (type == 1)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

void sub_100002E90(uint64_t a1)
{
  v2 = sub_1000016C4(&qword_10001C778, &qword_100010790);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = aBlock - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = &_swiftEmptyArrayStorage;
  sub_1000030D0();
  v9 = sub_10000FDB4();
  (*(v3 + 16))(v7, a1, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v7, v2);
  *(v11 + ((v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
  aBlock[4] = sub_1000032BC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003534;
  aBlock[3] = &unk_100018C78;
  v12 = _Block_copy(aBlock);

  remote_device_browse_present();
  _Block_release(v12);
}

uint64_t sub_100003098()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000030D0()
{
  result = qword_10001C780;
  if (!qword_10001C780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001C780);
  }

  return result;
}

uint64_t sub_100003114(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 1) != 0 || !a1)
  {
    swift_beginAccess();

    sub_100003374(v13);

    sub_1000016C4(&qword_10001C778, &qword_100010790);
    return sub_10000FD54();
  }

  else
  {
    v5 = a1;
    v6 = sub_100002E44();
    v8 = v7;
    swift_beginAccess();
    sub_1000035C4();
    v9 = *(*(a4 + 16) + 16);
    sub_100003610(v9);
    v10 = *(a4 + 16);
    *(v10 + 16) = v9 + 1;
    v11 = v10 + 16 * v9;
    *(v11 + 32) = v6;
    *(v11 + 40) = v8;
    *(a4 + 16) = v10;
    return swift_endAccess();
  }
}

uint64_t sub_100003214()
{
  v1 = sub_1000016C4(&qword_10001C778, &qword_100010790);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000032BC(void *a1, char a2)
{
  v5 = *(sub_1000016C4(&qword_10001C778, &qword_100010790) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100003114(a1, a2, v2 + v6, v7);
}

unint64_t *sub_100003374(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v25 = &_swiftEmptyArrayStorage;
    sub_10000375C(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 8);
      v6 = *v4;
      v23 = &type metadata for RemoteDevice;
      v24 = &off_100018D20;
      LOBYTE(v22[0]) = v5;
      v22[1] = v6;
      v25 = v2;
      v8 = v2[2];
      v7 = v2[3];
      v9 = v6;
      v10 = &type metadata for RemoteDevice;
      if (v8 >= v7 >> 1)
      {
        sub_10000375C((v7 > 1), v8 + 1, 1);
        v10 = v23;
        v2 = v25;
      }

      v11 = sub_100001774(v22, v10);
      __chkstk_darwin(v11, v11);
      v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v13);
      v15 = *v13;
      v16 = *(v13 + 1);
      v20 = &type metadata for RemoteDevice;
      v21 = &off_100018D20;
      LOBYTE(v19) = v15;
      *(&v19 + 1) = v16;
      v2[2] = v8 + 1;
      sub_100002A38(&v19, &v2[5 * v8 + 4]);
      sub_100002938(v22);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_100003534(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

uint64_t sub_1000035AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1000035C4()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_100003650(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_100003610(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_100003650((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

char *sub_100003650(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000016C4(&qword_10001C788, &qword_100010798);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000375C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000377C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000377C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000016C4(&qword_10001C790, &qword_1000107A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000016C4(&qword_10001C798, &qword_1000107A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

__n128 sub_1000038B4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000038C0(uint64_t a1, int a2)
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

uint64_t sub_100003900(uint64_t result, int a2, int a3)
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

uint64_t sub_10000396C()
{
  v0 = sub_10000FC04();
  sub_100003C50(v0, qword_10001C7A0);
  sub_100003C18(v0, qword_10001C7A0);
  sub_10000F904();
  return sub_10000FBF4();
}

id sub_1000039DC()
{
  v0 = sub_10000F8C4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v6 = result;
    v7 = MobileGestalt_copy_uniqueDeviceID_obj();

    if (v7)
    {
      v8 = sub_10000FCD4();

      return v8;
    }

    else
    {
      sub_10000F8B4();
      v9 = sub_10000F8A4();
      v11 = v10;
      (*(v1 + 8))(v4, v0);
      if (qword_10001C680 != -1)
      {
        swift_once();
      }

      v12 = sub_10000FC04();
      sub_100003C18(v12, qword_10001C7A0);

      v13 = sub_10000FBE4();
      v14 = sub_10000FD84();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v18 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_100009B7C(v9, v11, &v18);
        _os_log_impl(&_mh_execute_header, v13, v14, "Mobile Gestalt failed to query UniqueDeviceID, returning a generated UUID instead: %s", v15, 0xCu);
        sub_100002938(v16);
      }

      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100003C18(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003C50(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100003CB4()
{
  v0 = sub_10000FC04();
  sub_100003C50(v0, qword_10001C7B8);
  sub_100003C18(v0, qword_10001C7B8);
  sub_10000F904();
  return sub_10000FBF4();
}

uint64_t sub_100003D20()
{
  sub_100002C60();
  v1[2] = v0;
  v2 = sub_10000FA84();
  v1[3] = v2;
  sub_10000AD14(v2);
  v1[4] = v3;
  v1[5] = sub_10000B064();
  v4 = sub_1000016C4(&qword_10001C8C0, &qword_100010958);
  sub_10000AF5C(v4);
  v1[6] = sub_10000B064();
  v5 = sub_10000FAA4();
  v1[7] = v5;
  sub_10000AD14(v5);
  v1[8] = v6;
  v1[9] = sub_10000B064();

  return _swift_task_switch(sub_100003E44, v0, 0);
}

uint64_t sub_100003E44()
{
  if (qword_10001C688 != -1)
  {
    sub_10000ACF4(&qword_10001C688);
  }

  v1 = sub_10000FC04();
  v0[10] = sub_10000B0FC(v1, qword_10001C7B8);
  v2 = sub_10000FBE4();
  v3 = sub_10000FD74();
  if (sub_10000B1F8(v3))
  {
    v4 = sub_10000B07C();
    sub_10000B294(v4);
    sub_10000B094(&_mh_execute_header, v5, v6, "HostInferenceProvider isVersionSupported called to check host modelmanagerd availability");
    sub_10000AF30();
  }

  v7 = v0[2];

  v8 = *(v7 + 152);
  v0[11] = v8;
  if (v8)
  {
    v9 = v0[6];
    v10 = v0[2];
    v11 = OBJC_IVAR____TtC28HostInferenceProviderService35HostInferenceProviderImplementation_interface;
    v12 = sub_10000FBA4();
    sub_10000AD24();
    (*(v13 + 16))(v9, v10 + v11, v12);
    sub_10000B288();
    sub_100009A8C(v14, v15, v16, v12);

    sub_10000FA94();
    sub_10000ADFC(&qword_100010980);
    v29 = v17;
    swift_task_alloc();
    sub_10000AF08();
    v0[12] = v18;
    *v18 = v19;
    v18[1] = sub_100004088;
    v20 = v0[9];
    v21 = v0[5];

    return v29(v21, v20);
  }

  else
  {
    v23 = sub_10000FBE4();
    v24 = sub_10000FD74();
    if (sub_10000AE9C(v24))
    {
      v25 = sub_10000B07C();
      sub_10000AEB8(v25);
      sub_10000AD9C(&_mh_execute_header, v26, v27, "HostInferenceProvider is running on a physical device, automatically returning false");
      sub_10000AE28();
    }

    v28 = v0[1];

    return v28(0);
  }
}

uint64_t sub_100004088()
{
  sub_10000AE1C();
  sub_10000AFD4();
  sub_10000AD5C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v0;

  sub_10000AFE0();
  v5 = *(v4 + 16);
  if (v0)
  {
    v6 = sub_100004284;
  }

  else
  {
    v6 = sub_1000041A0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000041A0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_10000FA74();

  (*(v2 + 8))(v1, v3);
  v5 = sub_10000B0F0();
  v6(v5);

  v7 = v0[1];

  return v7(v4 & 1);
}

uint64_t sub_100004284()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  swift_errorRetain();
  v1 = sub_10000FBE4();
  v2 = sub_10000FD84();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_10000B1E0();
    v4 = sub_10000B320();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    sub_10000B2AC(&_mh_execute_header, v6, v7, "HostInferenceProvider failed due to: %@");
    sub_10000AC60(v4, &qword_10001C8D0, &qword_100010970);
    sub_10000AF14();
    sub_10000AF30();
  }

  v8 = sub_10000F984();
  sub_10000ACDC();
  sub_100009B34(v9, v10, &protocol conformance descriptor for InferenceError);
  swift_allocError();
  v12 = v11;
  sub_10000FCC4();
  sub_10000AE8C();
  sub_10000F914();
  (*(*(v8 - 8) + 104))(v12, enum case for InferenceError.hostFailed(_:), v8);
  swift_willThrow();

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_1000044C0(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v5[4] = a2;
  v5[5] = v2;
  v5[3] = a1;
  v7 = sub_10000F8E4();
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v5[8] = swift_task_alloc();
  v12 = (&async function pointer to dispatch thunk of IPCCachedSession.sendAsync<A>(_:) + async function pointer to dispatch thunk of IPCCachedSession.sendAsync<A>(_:));
  v8 = swift_task_alloc();
  v5[9] = v8;
  v9 = sub_10000FAA4();
  v5[10] = v9;
  v10 = sub_100009B34(&qword_10001C8F0, &type metadata accessor for RemoteIPCRequest.CheckAvailabilityRequest, &protocol conformance descriptor for RemoteIPCRequest.CheckAvailabilityRequest);
  v5[11] = v10;
  *v8 = v5;
  v8[1] = sub_10000463C;

  return v12(a1, a2, v9, v10);
}

uint64_t sub_10000463C()
{
  sub_10000AE1C();
  sub_100002C6C();
  v3 = v2;
  sub_10000AD5C();
  *v4 = v3;
  v5 = *v1;
  sub_100002C50();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    sub_10000F9A4();
    sub_10000AD44();
    sub_100009B34(v7, v8, &protocol conformance descriptor for IPCCachedSession);
    v9 = sub_10000FD44();
    sub_10000B168(v9, v10);
    v11 = sub_10000B114();

    return _swift_task_switch(v11, v13, v12);
  }

  else
  {

    sub_10000AE0C();

    return v14();
  }
}

uint64_t sub_1000047A8()
{
  sub_10000AE1C();
  sub_10000AF9C();
  v1 = sub_1000016C4(&qword_10001CD50, &qword_100010968);
  if (sub_10000AF78(v1))
  {
    v2 = sub_10000B120();
    if ((*(v3 + 88))(v2) == enum case for ModelManagerError.ipcError(_:))
    {
      sub_10000B26C();
      v4 = sub_10000B178();
      v5(v4);
      if (qword_10001C698 != -1)
      {
        sub_10000AD7C(&qword_10001C698);
      }

      v6 = sub_10000FC04();
      sub_10000B0FC(v6, qword_10001CD30);
      v7 = sub_10000FBE4();
      v8 = sub_10000FD84();
      if (sub_10000AE9C(v8))
      {
        v9 = sub_10000B07C();
        sub_10000AEB8(v9);
        sub_10000AD9C(&_mh_execute_header, v10, v11, "IPCCachedSession performing a retry on sendAsync");
        sub_10000AE28();
      }

      sub_10000ADFC(&async function pointer to dispatch thunk of IPCCachedSession.sendAsync<A>(_:));
      swift_task_alloc();
      sub_10000AF08();
      *(v0 + 120) = v12;
      *v12 = v13;
      v14 = sub_10000ADE0(v12);

      return v15(v14);
    }

    v17 = sub_10000B120();
    (*(v18 + 8))(v17);
  }

  sub_10000B234();

  sub_100002C78();

  return v19();
}

uint64_t sub_100004954()
{
  sub_10000AE1C();
  sub_10000AFD4();
  sub_10000AD5C();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 128) = v0;

  sub_10000AFE0();
  v6 = *(v5 + 112);
  v7 = *(v1 + 104);
  if (v0)
  {
    v8 = sub_10000ACBC;
  }

  else
  {
    v8 = sub_10000ACC0;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100004A7C(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v5[4] = a2;
  v5[5] = v2;
  v5[3] = a1;
  v7 = sub_10000F8E4();
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v5[8] = swift_task_alloc();
  v12 = (&async function pointer to dispatch thunk of IPCCachedSession.sendAsync<A>(_:) + async function pointer to dispatch thunk of IPCCachedSession.sendAsync<A>(_:));
  v8 = swift_task_alloc();
  v5[9] = v8;
  v9 = sub_10000FA44();
  v5[10] = v9;
  v10 = sub_100009B34(&qword_10001C8E0, &type metadata accessor for RemoteIPCRequest.ExecuteRemoteRequest, &protocol conformance descriptor for RemoteIPCRequest.ExecuteRemoteRequest);
  v5[11] = v10;
  *v8 = v5;
  v8[1] = sub_10000463C;

  return v12(a1, a2, v9, v10);
}

uint64_t sub_100004BF8(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v5[4] = a2;
  v5[5] = v2;
  v5[3] = a1;
  v7 = sub_10000F8E4();
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v5[8] = swift_task_alloc();
  v12 = (&async function pointer to dispatch thunk of IPCCachedSession.sendAsync<A>(_:) + async function pointer to dispatch thunk of IPCCachedSession.sendAsync<A>(_:));
  v8 = swift_task_alloc();
  v5[9] = v8;
  v9 = sub_10000FA04();
  v5[10] = v9;
  v10 = sub_100009B34(&qword_10001C9C0, &type metadata accessor for RemoteIPCRequest.ExecuteRemoteStreamingRequest, &protocol conformance descriptor for RemoteIPCRequest.ExecuteRemoteStreamingRequest);
  v5[11] = v10;
  *v8 = v5;
  v8[1] = sub_100004D74;

  return v12(a1, a2, v9, v10);
}

uint64_t sub_100004D74()
{
  sub_10000AE1C();
  sub_100002C6C();
  v3 = v2;
  sub_10000AD5C();
  *v4 = v3;
  v5 = *v1;
  sub_100002C50();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    sub_10000F9A4();
    sub_10000AD44();
    sub_100009B34(v7, v8, &protocol conformance descriptor for IPCCachedSession);
    v9 = sub_10000FD44();
    sub_10000B168(v9, v10);
    v11 = sub_10000B114();

    return _swift_task_switch(v11, v13, v12);
  }

  else
  {

    sub_10000AE0C();

    return v14();
  }
}

uint64_t sub_100004EE0()
{
  sub_10000AE1C();
  sub_10000AF9C();
  v1 = sub_1000016C4(&qword_10001CD50, &qword_100010968);
  if (sub_10000AF78(v1))
  {
    v2 = sub_10000B120();
    if ((*(v3 + 88))(v2) == enum case for ModelManagerError.ipcError(_:))
    {
      sub_10000B26C();
      v4 = sub_10000B178();
      v5(v4);
      if (qword_10001C698 != -1)
      {
        sub_10000AD7C(&qword_10001C698);
      }

      v6 = sub_10000FC04();
      sub_10000B0FC(v6, qword_10001CD30);
      v7 = sub_10000FBE4();
      v8 = sub_10000FD84();
      if (sub_10000AE9C(v8))
      {
        v9 = sub_10000B07C();
        sub_10000AEB8(v9);
        sub_10000AD9C(&_mh_execute_header, v10, v11, "IPCCachedSession performing a retry on sendAsync");
        sub_10000AE28();
      }

      sub_10000ADFC(&async function pointer to dispatch thunk of IPCCachedSession.sendAsync<A>(_:));
      swift_task_alloc();
      sub_10000AF08();
      *(v0 + 120) = v12;
      *v12 = v13;
      v14 = sub_10000ADE0(v12);

      return v15(v14);
    }

    v17 = sub_10000B120();
    (*(v18 + 8))(v17);
  }

  sub_10000B234();

  sub_100002C78();

  return v19();
}

uint64_t sub_10000508C()
{
  sub_10000AE1C();
  sub_10000AFD4();
  sub_10000AD5C();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 128) = v0;

  sub_10000AFE0();
  v6 = *(v5 + 112);
  v7 = *(v1 + 104);
  if (v0)
  {
    v8 = sub_100005214;
  }

  else
  {
    v8 = sub_1000051B4;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000051B4()
{
  sub_100002C60();

  sub_10000AD6C();

  return v0();
}

uint64_t sub_100005214()
{
  sub_100002C60();

  sub_100002C78();

  return v0();
}

uint64_t sub_10000527C()
{
  sub_100002C60();
  v1[7] = v0;
  v1[8] = v2;
  v1[5] = v3;
  v1[6] = v4;
  v1[4] = v5;
  v6 = sub_10000F964();
  v1[9] = v6;
  sub_10000AD14(v6);
  v1[10] = v7;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v8 = sub_10000F8E4();
  v1[14] = v8;
  sub_10000AD14(v8);
  v1[15] = v9;
  v1[16] = sub_10000B064();
  v10 = sub_10000FA24();
  v1[17] = v10;
  sub_10000AD14(v10);
  v1[18] = v11;
  v1[19] = sub_10000B064();
  v12 = sub_10000F8F4();
  v1[20] = v12;
  sub_10000AD14(v12);
  v1[21] = v13;
  v1[22] = sub_10000B064();
  v14 = sub_10000FBD4();
  sub_10000AF5C(v14);
  v1[23] = sub_10000B064();
  v15 = sub_1000016C4(&qword_10001C8C0, &qword_100010958);
  sub_10000AF5C(v15);
  v1[24] = sub_10000B064();
  v16 = sub_10000FA44();
  v1[25] = v16;
  sub_10000AD14(v16);
  v1[26] = v17;
  v1[27] = sub_10000B064();

  return _swift_task_switch(sub_1000054CC, v0, 0);
}

void sub_1000054CC()
{
  if (qword_10001C688 != -1)
  {
    sub_10000ACF4(&qword_10001C688);
  }

  v1 = sub_10000FC04();
  v0[28] = sub_10000B0FC(v1, qword_10001C7B8);
  v2 = sub_10000FBE4();
  v3 = sub_10000FD74();
  if (sub_10000B1F8(v3))
  {
    v4 = sub_10000B07C();
    sub_10000B294(v4);
    sub_10000B094(&_mh_execute_header, v5, v6, "Request entered HostInferenceProvider.requestOneShot");
    sub_10000AF30();
  }

  v7 = v0[7];

  v8 = *(v7 + 152);
  v0[29] = v8;
  if (v8)
  {
    v9 = v0[24];
    v11 = v0[21];
    v10 = v0[22];
    v36 = v0[20];
    v12 = v0[7];
    v35 = v0[5];
    v13 = OBJC_IVAR____TtC28HostInferenceProviderService35HostInferenceProviderImplementation_interface;
    v14 = sub_10000FBA4();
    sub_10000AD24();
    (*(v15 + 16))(v9, v12 + v13, v14);
    sub_10000B288();
    sub_100009A8C(v16, v17, v18, v14);

    sub_10000FBB4();
    sub_10000FBC4();
    (*(v11 + 16))(v10, v35, v36);
    sub_10000FA34();
    sub_10000ADFC(&qword_100010960);
    swift_task_alloc();
    sub_10000AF08();
    v0[30] = v19;
    *v19 = v20;
    v19[1] = sub_10000582C;
    sub_10000B194();

    __asm { BR              X2 }
  }

  v23 = sub_10000FBE4();
  v24 = sub_10000FD94();
  if (sub_10000B1F8(v24))
  {
    v25 = sub_10000B07C();
    sub_10000AEB8(v25);
    sub_10000B0B4(&_mh_execute_header, v26, v27, "requestOneShot cannot be called on a physical device");
    sub_10000AE28();
  }

  sub_10000FCC4();
  sub_10000AE8C();
  sub_10000F914();
  sub_10000F984();
  sub_10000AD24();
  v28 = sub_10000B158();
  v29(v28);
  sub_10000ACDC();
  v32 = sub_100009B34(v30, v31, &protocol conformance descriptor for InferenceError);
  sub_10000B250(v32);
  sub_10000B12C();

  sub_10000AD34();
  sub_10000B194();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_10000582C()
{
  sub_10000AE1C();
  sub_10000AFD4();
  sub_10000AD5C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 248) = v0;

  sub_10000AFE0();
  v5 = *(v4 + 56);
  if (v0)
  {
    v6 = sub_100005A68;
  }

  else
  {
    v6 = sub_100005944;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100005944()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  sub_10000FA14();

  (*(v2 + 8))(v1, v3);
  v4 = sub_10000B0F0();
  v5(v4);

  sub_10000AD6C();

  return v6();
}

uint64_t sub_100005A68()
{
  v60 = v0;
  v1 = v0[31];
  (*(v0[26] + 8))(v0[27], v0[25]);
  v0[2] = v1;
  swift_errorRetain();
  sub_1000016C4(&qword_10001CD50, &qword_100010968);
  if (swift_dynamicCast())
  {
    if ((*(v0[15] + 88))(v0[16], v0[14]) == enum case for ModelManagerError.inferenceError(_:))
    {
      v2 = v0[16];
      (*(v0[15] + 96))(v2, v0[14]);
      v3 = sub_10000F984();
      sub_10000B2A0();
      v5 = v4;
      if ((*(v4 + 88))(v2, v3) == enum case for InferenceError.notImplemented(_:))
      {
        v6 = v0[16];
        v8 = v0[12];
        v7 = v0[13];
        v9 = v0[9];
        v10 = v0[10];

        (*(v5 + 96))(v6, v3);
        (*(v10 + 32))(v7, v6, v9);
        v58 = *(v10 + 16);
        v58(v8, v7, v9);
        v11 = sub_10000FBE4();
        v12 = sub_10000FD94();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = sub_10000B1E0();
          v56 = swift_slowAlloc();
          v59 = v56;
          *v13 = 136315138;
          v54 = sub_10000F924();
          v15 = v14;
          sub_10000AF4C();
          v57 = v16;
          v17 = sub_10000B1B0();
          v18(v17);
          v19 = sub_100009B7C(v54, v15, &v59);

          *(v13 + 4) = v19;
          sub_10000B2CC(&_mh_execute_header, v20, v21, "execute failed without allowing fallback with: %s");
          sub_100002938(v56);
          sub_10000B02C(v56);
          sub_10000AF14();
        }

        else
        {

          sub_10000AF4C();
          v57 = v45;
          v46 = sub_10000B1B0();
          v47(v46);
        }

        v48 = v0[13];
        v49 = v0[11];
        v50 = v0[8];
        v55 = v0[9];
        v53 = sub_10000F924();
        sub_10000F944();
        sub_10000F934();
        sub_10000F954();
        sub_10000B210(v53);
        v58(v50, v49, v55);
        (*(v5 + 104))(v50, enum case for InferenceError.hostFailed(_:), v3);
        sub_10000ACDC();
        sub_100009B34(v51, v52, &protocol conformance descriptor for InferenceError);
        swift_willThrowTypedImpl();

        v57(v49, v55);
        v57(v48, v55);

        goto LABEL_11;
      }
    }

    else
    {
      v3 = v0[14];
      v5 = v0[15];
    }

    (*(v5 + 8))(v0[16], v3);
  }

  swift_errorRetain();
  v22 = sub_10000FBE4();
  v23 = sub_10000FD84();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = sub_10000B1E0();
    v25 = sub_10000B320();
    *v24 = 138412290;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 4) = v26;
    *v25 = v26;
    sub_10000B2EC(&_mh_execute_header, v27, v28, "HostInferenceProvider execute failed due to: %@");
    sub_10000AC60(v25, &qword_10001C8D0, &qword_100010970);
    sub_10000B02C(v25);
    sub_10000AF14();
  }

  v29 = v0[31];
  v30 = v0[10];
  v31 = v0[8];

  v32 = sub_10000F894();
  v0[3] = v29;
  swift_errorRetain();
  sub_10000FCE4();
  v34 = v33;
  v35 = [v32 domain];
  sub_10000FCD4();

  [v32 code];
  sub_10000FCC4();
  sub_10000AFF8();
  v36 = sub_10000B0D4();
  v37(v36);
  v38 = enum case for InferenceError.hostFailed(_:);
  v39 = sub_10000F984();
  sub_10000AD24();
  (*(v40 + 104))(v31, v38, v39);
  sub_10000ACDC();
  sub_100009B34(v41, v42, &protocol conformance descriptor for InferenceError);
  swift_willThrowTypedImpl();

  (*(v30 + 8))(v32, v34);
LABEL_11:
  sub_10000B12C();

  sub_10000AD34();

  return v43();
}

uint64_t sub_1000060B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a1;
  v4 = sub_10000F8F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000FBD4();
  v10 = sub_10000AF5C(v9);
  __chkstk_darwin(v10, v11);
  v12 = sub_1000016C4(&qword_10001C8C0, &qword_100010958);
  v13 = sub_10000AF5C(v12);
  __chkstk_darwin(v13, v14);
  v16 = &v30 - v15;
  if (qword_10001C688 != -1)
  {
    sub_10000ACF4(&qword_10001C688);
  }

  v17 = sub_10000FC04();
  sub_10000B0FC(v17, qword_10001C7B8);
  v18 = sub_10000FBE4();
  v19 = sub_10000FD74();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = sub_10000B07C();
    sub_10000B294(v20);
    _os_log_impl(&_mh_execute_header, v18, v19, "Request entered HostInferenceProvider.requestStreaming", v2, 2u);
    sub_10000AF30();
  }

  v21 = OBJC_IVAR____TtC28HostInferenceProviderService35HostInferenceProviderImplementation_interface;
  v22 = sub_10000FBA4();
  sub_10000AD24();
  v24 = v31;
  (*(v23 + 16))(v16, v31 + v21, v22);
  sub_10000B288();
  sub_100009A8C(v25, v26, v27, v22);
  sub_10000FBB4();
  sub_10000FBC4();
  (*(v5 + 16))(v8, v30, v4);
  a2[3] = type metadata accessor for HostInferenceProviderImplementation.HostStream(0);
  a2[4] = sub_100009B34(&qword_10001C8C8, type metadata accessor for HostInferenceProviderImplementation.HostStream, &unk_100010A38);
  v28 = sub_100009AD4(a2);
  sub_10000F9F4();
  *v28 = *(v24 + 152);
}

uint64_t sub_100006390@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = *(type metadata accessor for HostInferenceProviderImplementation.HostStream(0) + 20);
  v5 = type metadata accessor for HostInferenceProviderImplementation.HostStream.Iterator(0);
  v6 = *(v5 + 20);
  sub_10000FA04();
  sub_10000AD24();
  (*(v7 + 16))(&a1[v6], &v1[v4]);
  v8 = &a1[*(v5 + 24)];
  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *a1 = v3;
}

uint64_t sub_100006440()
{
  sub_100002C60();
  v1[5] = v0;
  v1[6] = v2;
  v1[4] = v3;
  v4 = sub_10000F964();
  v1[7] = v4;
  sub_10000AD14(v4);
  v1[8] = v5;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v6 = sub_10000F8E4();
  v1[12] = v6;
  sub_10000AD14(v6);
  v1[13] = v7;
  v1[14] = sub_10000B064();
  sub_10000B188();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100006558()
{
  sub_10000AFEC();
  v1 = v0[5];
  v2 = *v1;
  v0[15] = *v1;
  if (v2)
  {
    v3 = *(type metadata accessor for HostInferenceProviderImplementation.HostStream.Iterator(0) + 20);

    swift_task_alloc();
    sub_10000AF08();
    v0[16] = v4;
    *v4 = v5;
    v4[1] = sub_1000067B0;
    v6 = v0[4];

    return sub_100004BF8(v6, v1 + v3);
  }

  else
  {
    if (qword_10001C688 != -1)
    {
      sub_10000ACF4(&qword_10001C688);
    }

    v8 = sub_10000FC04();
    sub_10000B0FC(v8, qword_10001C7B8);
    v9 = sub_10000FBE4();
    v10 = sub_10000FD94();
    if (sub_10000B1F8(v10))
    {
      v11 = sub_10000B07C();
      sub_10000AEB8(v11);
      sub_10000B0B4(&_mh_execute_header, v12, v13, "requestStream cannot create a HostStream on a physical device");
      sub_10000AE28();
    }

    sub_10000FCC4();
    sub_10000AE8C();
    sub_10000F914();
    sub_10000F984();
    sub_10000AD24();
    v14 = sub_10000B158();
    v15(v14);
    sub_10000ACDC();
    v18 = sub_100009B34(v16, v17, &protocol conformance descriptor for InferenceError);
    sub_10000B250(v18);

    sub_10000AD34();

    return v19();
  }
}

uint64_t sub_1000067B0()
{
  sub_100002C60();
  sub_100002C6C();
  v2 = *v1;
  sub_100002C50();
  *v3 = v2;
  *(v4 + 136) = v0;

  sub_10000B188();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000068B0()
{
  sub_10000AE1C();

  sub_10000AD6C();

  return v0();
}

uint64_t sub_100006938()
{
  v66 = v0;
  v0[2] = v0[17];
  swift_errorRetain();
  sub_1000016C4(&qword_10001CD50, &qword_100010968);
  if (swift_dynamicCast())
  {
    if ((*(v0[13] + 88))(v0[14], v0[12]) == enum case for ModelManagerError.inferenceError(_:))
    {
      (*(v0[13] + 96))(v0[14], v0[12]);
      v1 = sub_10000F984();
      sub_10000B2A0();
      v3 = v2;
      v4 = sub_10000B1B0();
      if (v5(v4) == enum case for InferenceError.notImplemented(_:))
      {
        v6 = v0[14];
        v7 = v0[11];
        v8 = v0[7];
        v9 = v0[8];

        v64 = v1;
        (*(v3 + 96))(v6, v1);
        (*(v9 + 32))(v7, v6, v8);
        if (qword_10001C688 != -1)
        {
          sub_10000ACF4(&qword_10001C688);
        }

        v11 = v0[10];
        v10 = v0[11];
        v12 = v0[7];
        v13 = v0[8];
        v14 = sub_10000FC04();
        sub_100003C18(v14, qword_10001C7B8);
        v63 = *(v13 + 16);
        v63(v11, v10, v12);
        v15 = sub_10000FBE4();
        v16 = sub_10000FD94();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = sub_10000B1E0();
          v18 = swift_slowAlloc();
          v65 = v18;
          *v17 = 136315138;
          sub_10000F924();
          v20 = v19;
          sub_10000AF4C();
          v61 = v21;
          v22 = sub_10000B1B0();
          v62 = v23;
          (v23)(v22);
          v24 = sub_100009B7C(v61, v20, &v65);

          *(v17 + 4) = v24;
          sub_10000B2CC(&_mh_execute_header, v25, v26, "execute stream erroring without fallback: %s");
          sub_100002938(v18);
          sub_10000B02C(v18);
          sub_10000AF14();
        }

        else
        {

          sub_10000AF4C();
          v62 = v51;
          v52 = sub_10000B1B0();
          v53(v52);
        }

        v54 = v0[11];
        v55 = v0[9];
        v56 = v0[6];
        v60 = v0[7];
        v57 = sub_10000F924();
        sub_10000F944();
        sub_10000F934();
        sub_10000F954();
        sub_10000B210(v57);
        v63(v56, v55, v60);
        (*(v3 + 104))(v56, enum case for InferenceError.hostFailed(_:), v64);
        sub_10000ACDC();
        sub_100009B34(v58, v59, &protocol conformance descriptor for InferenceError);
        swift_willThrowTypedImpl();

        v62(v55, v60);
        v62(v54, v60);

        goto LABEL_15;
      }
    }

    else
    {
      v1 = v0[12];
      v3 = v0[13];
    }

    (*(v3 + 8))(v0[14], v1);
  }

  if (qword_10001C688 != -1)
  {
    sub_10000ACF4(&qword_10001C688);
  }

  v27 = sub_10000FC04();
  sub_10000B0FC(v27, qword_10001C7B8);
  swift_errorRetain();
  v28 = sub_10000FBE4();
  v29 = sub_10000FD84();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = sub_10000B1E0();
    v31 = sub_10000B320();
    *v30 = 138412290;
    swift_errorRetain();
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 4) = v32;
    *v31 = v32;
    sub_10000B2EC(&_mh_execute_header, v33, v34, "HostSteam erroring out with error %@");
    sub_10000AC60(v31, &qword_10001C8D0, &qword_100010970);
    sub_10000B02C(v31);
    sub_10000AF14();
  }

  v35 = v0[17];
  v36 = v0[8];
  v37 = v0[6];

  v38 = sub_10000F894();
  v0[3] = v35;
  swift_errorRetain();
  sub_10000FCE4();
  v40 = v39;
  v41 = [v38 domain];
  sub_10000FCD4();

  [v38 code];
  sub_10000FCC4();
  sub_10000AFF8();
  v42 = sub_10000B0D4();
  v43(v42);
  v44 = enum case for InferenceError.hostFailed(_:);
  v45 = sub_10000F984();
  sub_10000AD24();
  (*(v46 + 104))(v37, v44, v45);
  sub_10000ACDC();
  sub_100009B34(v47, v48, &protocol conformance descriptor for InferenceError);
  swift_willThrowTypedImpl();

  (*(v36 + 8))(v38, v40);
LABEL_15:

  sub_10000AD34();

  return v49();
}

uint64_t sub_100006FB0()
{
  sub_100002C60();
  v1[18] = v0;
  v1[19] = v2;
  v1[17] = v3;
  v4 = sub_1000016C4(&qword_10001C8C0, &qword_100010958);
  sub_10000AF5C(v4);
  v1[20] = sub_10000B064();
  v5 = sub_10000FBA4();
  v1[21] = v5;
  sub_10000AD14(v5);
  v1[22] = v6;
  v1[23] = sub_10000B064();
  v7 = sub_10000F984();
  v1[24] = v7;
  sub_10000AD14(v7);
  v1[25] = v8;
  v1[26] = sub_10000B064();
  v9 = type metadata accessor for HostInferenceProviderImplementation.HostStream.Iterator(0);
  v1[27] = v9;
  sub_10000AF5C(v9);
  v1[28] = sub_10000B064();
  v10 = sub_10000F9E4();
  v1[29] = v10;
  sub_10000AD14(v10);
  v1[30] = v11;
  v1[31] = sub_10000B064();
  sub_10000B188();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_100007144()
{
  sub_10000AE1C();
  v1 = *(v0 + 144);
  v2 = *(*(v0 + 216) + 24);
  *(v0 + 288) = v2;
  sub_10000A370(v1 + v2, v0 + 16);
  v3 = *(v0 + 40);
  sub_10000AC60(v0 + 16, &qword_10001C9A8, &qword_100010AA0);
  if (v3)
  {
    if (qword_10001C688 != -1)
    {
      sub_10000ACF4(&qword_10001C688);
    }

    v4 = sub_10000FC04();
    *(v0 + 264) = sub_100003C18(v4, qword_10001C7B8);
    v5 = sub_10000FBE4();
    v6 = sub_10000FD74();
    if (sub_10000AE9C(v6))
    {
      v7 = sub_10000B07C();
      sub_10000AEB8(v7);
      sub_10000AD9C(&_mh_execute_header, v8, v9, "HostStream iterator is calling next on its internal iterator");
      sub_10000AE28();
    }

    v10 = *(v0 + 288);
    v11 = *(v0 + 144);

    if (*(v11 + v10 + 24))
    {
      sub_10000B1BC();
      swift_task_alloc();
      sub_10000AF08();
      *(v0 + 272) = v12;
      *v12 = v13;
      v14 = sub_10000AE44(v12);

      return dispatch thunk of AsyncIteratorProtocol.next()(v14);
    }

    else
    {
      sub_10000F8F4();
      v17 = sub_10000AFC0();
      sub_100009A8C(v17, v18, v19, v20);
      sub_10000ADBC();

      sub_10000AD6C();

      return v21();
    }
  }

  else
  {
    sub_10000A3E0(*(v0 + 144), *(v0 + 224));
    swift_task_alloc();
    sub_10000AF08();
    *(v0 + 256) = v15;
    *v15 = v16;
    v15[1] = sub_100007374;

    return sub_100006440();
  }
}

uint64_t sub_100007374()
{
  sub_100002C60();
  sub_100002C6C();
  v2 = *(v1 + 224);
  v3 = *v0;
  sub_100002C50();
  *v4 = v3;

  sub_10000A52C(v2, type metadata accessor for HostInferenceProviderImplementation.HostStream.Iterator);
  sub_10000B188();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000074A0()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  sub_10000F9C4();
  if (sub_10000A15C(v2, 1, v1) == 1)
  {
    sub_10000AC60(*(v0 + 160), &qword_10001C8C0, &qword_100010958);
LABEL_11:
    if (qword_10001C688 != -1)
    {
      sub_10000ACF4(&qword_10001C688);
    }

    v21 = sub_10000FC04();
    sub_10000B0FC(v21, qword_10001C7B8);
    v22 = sub_10000FBE4();
    v23 = sub_10000FD84();
    if (sub_10000AE9C(v23))
    {
      v24 = sub_10000B07C();
      sub_10000AEB8(v24);
      sub_10000AD9C(&_mh_execute_header, v25, v26, "HostStream received a response from a modelmanager version that does not support true streaming. Falling back to v0 of streaming");
      sub_10000AE28();
    }

    v27 = *(v0 + 288);
    v29 = *(v0 + 240);
    v28 = *(v0 + 248);
    v30 = *(v0 + 232);
    v31 = *(v0 + 144);

    v32 = type metadata accessor for HostInferenceProviderImplementation.HostStream.Iterator.StreamIteratorV0(0);
    *(v0 + 80) = v32;
    *(v0 + 88) = sub_100009B34(&qword_10001C9B0, type metadata accessor for HostInferenceProviderImplementation.HostStream.Iterator.StreamIteratorV0, &unk_100010BF0);
    v33 = sub_100009AD4((v0 + 56));
    (*(v29 + 32))(v33, v28, v30);
    v34 = (v33 + *(v32 + 20));
    *v34 = 0;
    v34[1] = 0;
    v19 = v0 + 56;
    v20 = v31 + v27;
    goto LABEL_16;
  }

  (*(*(v0 + 176) + 32))(*(v0 + 184), *(v0 + 160), *(v0 + 168));
  if (!sub_10000FB84())
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    goto LABEL_11;
  }

  if (qword_10001C688 != -1)
  {
    sub_10000ACF4(&qword_10001C688);
  }

  v3 = sub_10000FC04();
  sub_10000B0FC(v3, qword_10001C7B8);
  v4 = sub_10000FBE4();
  v5 = sub_10000FD74();
  if (sub_10000B1F8(v5))
  {
    v6 = sub_10000B07C();
    sub_10000B294(v6);
    sub_10000B094(&_mh_execute_header, v7, v8, "Creating a new StreamIteratorV1");
    sub_10000AF30();
  }

  v9 = *(v0 + 144);

  v10 = *v9;
  if (!*v9)
  {
    v51 = sub_10000FBE4();
    v52 = sub_10000FD94();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = sub_10000B07C();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "HostStream session cannot be nil after initial creation", v53, 2u);
      sub_10000B02C(v53);
    }

    v54 = *(v0 + 240);
    v68 = *(v0 + 248);
    v55 = *(v0 + 232);
    v57 = *(v0 + 192);
    v56 = *(v0 + 200);
    v58 = *(v0 + 152);

    sub_10000FCC4();
    sub_10000AE8C();
    sub_10000F914();
    (*(v56 + 104))(v58, enum case for InferenceError.internalError(_:), v57);
    sub_10000ACDC();
    sub_100009B34(v59, v60, &protocol conformance descriptor for InferenceError);
    swift_willThrowTypedImpl();
    v61 = sub_10000B0F0();
    v62(v61);
    (*(v54 + 8))(v68, v55);
    sub_10000ADBC();

    sub_10000AD34();
LABEL_28:
    sub_10000B194();

    __asm { BRAA            X1, X16 }
  }

  v12 = *(v0 + 240);
  v11 = *(v0 + 248);
  v13 = *(v0 + 232);
  v14 = *(v0 + 184);
  v15 = *(v0 + 168);
  v66 = *(v0 + 144);
  v67 = *(v0 + 288);
  v16 = *(*(v0 + 176) + 8);

  v16(v14, v15);
  v17 = type metadata accessor for HostInferenceProviderImplementation.HostStream.Iterator.StreamIteratorV1(0);
  *(v0 + 120) = v17;
  *(v0 + 128) = sub_100009B34(&qword_10001C9B8, type metadata accessor for HostInferenceProviderImplementation.HostStream.Iterator.StreamIteratorV1, &unk_100010BC8);
  v18 = sub_100009AD4((v0 + 96));
  (*(v12 + 32))(v18 + *(v17 + 20), v11, v13);
  *v18 = v10;
  *(v18 + *(v17 + 24)) = 1;
  v19 = v0 + 96;
  v20 = v66 + v67;
LABEL_16:
  sub_10000A464(v19, v20);
  if (qword_10001C688 != -1)
  {
    sub_10000ACF4(&qword_10001C688);
  }

  v35 = sub_10000FC04();
  *(v0 + 264) = sub_100003C18(v35, qword_10001C7B8);
  v36 = sub_10000FBE4();
  v37 = sub_10000FD74();
  if (sub_10000AE9C(v37))
  {
    v38 = sub_10000B07C();
    sub_10000AEB8(v38);
    sub_10000AD9C(&_mh_execute_header, v39, v40, "HostStream iterator is calling next on its internal iterator");
    sub_10000AE28();
  }

  v41 = *(v0 + 288);
  v42 = *(v0 + 144);

  if (!*(v42 + v41 + 24))
  {
    sub_10000F8F4();
    v47 = sub_10000AFC0();
    sub_100009A8C(v47, v48, v49, v50);
    sub_10000ADBC();

    sub_10000AD6C();
    goto LABEL_28;
  }

  sub_10000B1BC();
  swift_task_alloc();
  sub_10000AF08();
  *(v0 + 272) = v43;
  *v43 = v44;
  sub_10000AE44(v43);
  sub_10000B194();

  return dispatch thunk of AsyncIteratorProtocol.next()(v45);
}

uint64_t sub_100007A4C()
{
  sub_10000AE1C();
  sub_100002C6C();
  v3 = v2;
  sub_10000AD5C();
  *v4 = v3;
  v5 = *v1;
  sub_100002C50();
  *v6 = v5;
  *(v3 + 280) = v0;

  if (v0)
  {
    sub_10000B188();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    sub_10000AD6C();

    return v10();
  }
}

uint64_t sub_100007BA4()
{
  sub_10000AE1C();
  (*(v0[25] + 32))(v0[19], v0[26], v0[24]);
  sub_10000ADBC();

  sub_10000AD34();

  return v1();
}

uint64_t sub_100007C3C()
{
  sub_10000AE1C();
  v0 = sub_10000FBE4();
  v1 = sub_10000FDA4();
  if (sub_10000AE9C(v1))
  {
    v2 = sub_10000B07C();
    sub_10000AEB8(v2);
    sub_10000AD9C(&_mh_execute_header, v3, v4, "Ensuring HostStream returns an error represented as an InferenceError.");
    sub_10000AE28();
  }

  swift_errorRetain();
  sub_10000F974();
  sub_10000ACDC();
  sub_100009B34(v5, v6, &protocol conformance descriptor for InferenceError);
  swift_willThrowTypedImpl();

  sub_10000ADBC();

  sub_10000AD34();

  return v7();
}

uint64_t sub_100007D50(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  sub_10000B188();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100007D7C()
{
  sub_10000AFEC();
  v1 = *(v0 + 24);
  result = type metadata accessor for HostInferenceProviderImplementation.HostStream.Iterator.StreamIteratorV0(0);
  v3 = (v1 + *(result + 20));
  v4 = *v3;
  if (*v3)
  {
    v5 = v3[1];
  }

  else
  {
    result = sub_10000F9B4();
    v4 = result;
    v5 = 0;
    *v3 = result;
    v3[1] = 0;
  }

  v6 = *(v4 + 16);
  if (v5 == v6)
  {
    sub_10000F8F4();
    v7 = sub_10000AFC0();
  }

  else
  {
    if (v5 >= v6)
    {
      __break(1u);
      return result;
    }

    v11 = *(v0 + 16);
    v12 = sub_10000F8F4();
    sub_10000AD24();
    (*(v13 + 16))(v11, v4 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v5, v12);
    v3[1] = v5 + 1;
    sub_10000B288();
    v10 = v12;
  }

  sub_100009A8C(v7, v8, v9, v10);
  sub_10000AD6C();

  return v14();
}

uint64_t sub_100007EA0(uint64_t a1)
{
  v3 = sub_10000F984();
  v1[2] = v3;
  v1[3] = *(v3 - 8);
  v1[4] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  v4[1] = sub_100007F94;

  return sub_100007D50(a1);
}

uint64_t sub_100007F94()
{
  sub_10000AE1C();
  sub_100002C6C();
  v3 = v2;
  sub_10000AD5C();
  *v4 = v3;
  v5 = *v1;
  sub_100002C50();
  *v6 = v5;

  if (v0)
  {
    v8 = v3[3];
    v7 = v3[4];
    v9 = v3[2];
    sub_10000ACDC();
    sub_100009B34(v10, v11, &protocol conformance descriptor for InferenceError);
    swift_allocError();
    (*(v8 + 32))(v12, v7, v9);
  }

  sub_100002C78();

  return v13();
}

uint64_t sub_1000080F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v8 = sub_10000F984();
  v4[3] = v8;
  v4[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v4[5] = v9;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100008228;

  return sub_100008338(a1, a2, a3, v9);
}

uint64_t sub_100008228()
{
  sub_100002C60();
  sub_100002C6C();
  v3 = v2;
  sub_10000AD5C();
  *v4 = v3;
  v5 = *v1;
  sub_100002C50();
  *v6 = v5;

  if (v0)
  {
    (*(v3[4] + 32))(v3[2], v3[5], v3[3]);

    sub_10000AD34();
  }

  else
  {

    sub_100002C78();
  }

  return v7();
}

uint64_t sub_100008338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v6 = sub_10000F984();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[9] = v7;
  *v7 = v4;
  v7[1] = sub_100008434;

  return sub_100007D50(a1);
}

uint64_t sub_100008434()
{
  sub_10000AFEC();
  sub_10000AFD4();
  sub_100002C50();
  *v3 = v1;
  *v3 = *v2;

  sub_10000AFE0();
  if (!v0)
  {

    sub_10000AE0C();
    sub_10000B30C();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v1 + 24);
  sub_10000ACDC();
  v7 = sub_100009B34(v5, v6, &protocol conformance descriptor for InferenceError);
  v8 = sub_10000AEE4(v7);
  v10 = sub_10000AE74(v8, v9);
  v11(v10);
  if (v4)
  {
    swift_getObjectType();
    sub_10000FD44();
  }

  *(v1 + 88) = v1;
  sub_10000B114();
  sub_10000B30C();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_1000085E0()
{
  sub_10000AFEC();
  *(v0 + 16) = *(v0 + 88);
  sub_1000016C4(&qword_10001CD50, &qword_100010968);
  swift_dynamicCast();
  swift_willThrowTypedImpl();

  sub_10000AD34();

  return v1();
}

uint64_t sub_100008698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v5 = sub_10000F984();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[9] = v6;
  *v6 = v4;
  v6[1] = sub_1000087A4;

  return sub_100008A5C();
}

uint64_t sub_1000087A4()
{
  sub_10000AFEC();
  sub_10000AFD4();
  sub_100002C50();
  *v3 = v1;
  *v3 = *v2;

  sub_10000AFE0();
  if (!v0)
  {

    sub_10000AE0C();
    sub_10000B30C();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v1 + 24);
  sub_10000ACDC();
  v7 = sub_100009B34(v5, v6, &protocol conformance descriptor for InferenceError);
  v8 = sub_10000AEE4(v7);
  v10 = sub_10000AE74(v8, v9);
  v11(v10);
  if (v4)
  {
    swift_getObjectType();
    sub_10000FD44();
  }

  *(v1 + 88) = v1;
  sub_10000B114();
  sub_10000B30C();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_100008950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v5 = sub_10000F984();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[9] = v6;
  *v6 = v4;
  v6[1] = sub_1000087A4;

  return sub_100006FB0();
}

uint64_t sub_100008A5C()
{
  sub_100002C60();
  v1[3] = v0;
  v1[4] = v2;
  v1[2] = v3;
  v4 = sub_10000FBA4();
  sub_10000AF5C(v4);
  v1[5] = sub_10000B064();
  v5 = sub_10000FAE4();
  v1[6] = v5;
  sub_10000AD14(v5);
  v1[7] = v6;
  v1[8] = sub_10000B064();
  v7 = sub_10000FAC4();
  v1[9] = v7;
  sub_10000AD14(v7);
  v1[10] = v8;
  v1[11] = sub_10000B064();
  v9 = sub_1000016C4(&qword_10001CBB8, &qword_100010C28);
  sub_10000AF5C(v9);
  v1[12] = sub_10000B064();
  v10 = sub_10000F8C4();
  v1[13] = v10;
  sub_10000AD14(v10);
  v1[14] = v11;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  sub_10000B188();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_100008C00()
{
  v1 = v0[3];
  v2 = *(type metadata accessor for HostInferenceProviderImplementation.HostStream.Iterator.StreamIteratorV1(0) + 24);
  if (*(v1 + v2) == 1)
  {
    v3 = v0[2];
    *(v1 + v2) = 0;
    v4 = sub_10000F9B4();
    sub_1000093A4(v4, v3);

    sub_10000AEC4();

    sub_10000AD6C();
LABEL_9:

    return v5();
  }

  v7 = v0[12];
  v6 = v0[13];
  sub_10000F9D4();
  if (sub_10000A15C(v7, 1, v6) == 1)
  {
    sub_10000AC60(v0[12], &qword_10001CBB8, &qword_100010C28);
    if (qword_10001C688 != -1)
    {
      sub_10000ACF4(&qword_10001C688);
    }

    v8 = sub_10000FC04();
    sub_10000B0FC(v8, qword_10001C7B8);
    v9 = sub_10000FBE4();
    v10 = sub_10000FD94();
    if (sub_10000B1F8(v10))
    {
      v11 = sub_10000B07C();
      sub_10000AEB8(v11);
      sub_10000B0B4(&_mh_execute_header, v12, v13, "Cannot call FetchNextStreamingResult of a request that is not associated with a requestID");
      sub_10000AE28();
    }

    sub_10000FCC4();
    sub_10000AE8C();
    sub_10000F914();
    sub_10000F984();
    sub_10000AD24();
    v14 = sub_10000B158();
    v15(v14);
    sub_10000ACDC();
    v18 = sub_100009B34(v16, v17, &protocol conformance descriptor for InferenceError);
    sub_10000B250(v18);
    sub_10000AEC4();

    sub_10000AD34();
    goto LABEL_9;
  }

  v21 = v0[15];
  v20 = v0[16];
  v22 = v0[13];
  v23 = v0[14];
  (*(v23 + 32))(v20, v0[12], v22);
  sub_10000FB64();
  (*(v23 + 16))(v21, v20, v22);
  sub_10000FAD4();
  sub_10000ADFC(&async function pointer to dispatch thunk of IPCCachedSession.sendAsync<A>(_:));
  v30 = v24;
  v25 = swift_task_alloc();
  v0[17] = v25;
  v26 = sub_100009B34(&qword_10001CBC0, &type metadata accessor for RemoteIPCRequest.FetchNextStreamingResult, &protocol conformance descriptor for RemoteIPCRequest.FetchNextStreamingResult);
  *v25 = v0;
  v25[1] = sub_100008F98;
  v27 = v0[11];
  v28 = v0[8];
  v29 = v0[6];

  return v30(v27, v28, v29, v26);
}

uint64_t sub_100008F98()
{
  sub_10000AE1C();
  sub_100002C6C();
  v3 = v2[8];
  v4 = v2[7];
  v5 = v2[6];
  v6 = *v1;
  sub_100002C50();
  *v7 = v6;
  *(v8 + 144) = v0;

  (*(v4 + 8))(v3, v5);
  sub_10000B188();

  return _swift_task_switch(v9, v10, v11);
}

void sub_1000090F4()
{
  sub_10000AFEC();
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  sub_10000FAB4();
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  sub_10000AEC4();

  sub_10000AD6C();
  sub_10000B30C();

  __asm { BRAA            X1, X16 }
}

void sub_1000091C4()
{
  sub_10000AFEC();
  if (qword_10001C688 != -1)
  {
    sub_10000ACF4(&qword_10001C688);
  }

  v0 = sub_10000FC04();
  sub_10000B0FC(v0, qword_10001C7B8);
  swift_errorRetain();
  v1 = sub_10000FBE4();
  v2 = sub_10000FD84();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_10000B1E0();
    v4 = sub_10000B320();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    sub_10000B2AC(&_mh_execute_header, v6, v7, "RemoteIPCRequest.FetchNextStreamingResult failed with %@");
    sub_10000AC60(v4, &qword_10001C8D0, &qword_100010970);
    sub_10000AF14();
    sub_10000AF30();
  }

  swift_errorRetain();
  sub_10000F974();
  sub_10000F984();
  sub_10000ACDC();
  sub_100009B34(v8, v9, &protocol conformance descriptor for InferenceError);
  swift_willThrowTypedImpl();

  v10 = sub_10000B0F0();
  v11(v10);
  sub_10000AEC4();

  sub_10000AD34();
  sub_10000B30C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000093A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_10000F8F4();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_100009A8C(a2, v7, 1, v6);
}

uint64_t sub_10000944C()
{
  v1 = sub_10000F984();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_10000ACD4;

  return sub_100008A5C();
}

uint64_t sub_100009550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v8 = sub_10000F984();
  v4[3] = v8;
  v4[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v4[5] = v9;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10000ACD0;

  return sub_100008698(a1, a2, a3, v9);
}

uint64_t sub_100009684()
{
  v1 = sub_10000F984();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_10000ACD4;

  return sub_100006FB0();
}

uint64_t sub_100009788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v8 = sub_10000F984();
  v4[3] = v8;
  v4[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v4[5] = v9;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10000ACD0;

  return sub_100008950(a1, a2, a3, v9);
}

uint64_t sub_1000098F0()
{
  sub_100002938((v0 + 112));

  v1 = OBJC_IVAR____TtC28HostInferenceProviderService35HostInferenceProviderImplementation_interface;
  sub_10000FBA4();
  sub_10000AD24();
  (*(v2 + 8))(v0 + v1);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100009960()
{
  sub_1000098F0();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000099B4(uint64_t a1)
{
  result = sub_10000FBA4();
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

uint64_t *sub_100009AD4(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_100009B34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009B7C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_10000B188();
  v9 = sub_100009C3C(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_10000A0E8(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_100002938(v14);
  return v10;
}

unint64_t sub_100009C3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100009D3C(a5, a6);
    *a1 = v9;
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
    result = sub_10000FDF4();
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

char *sub_100009D3C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100009D88(a1, a2);
  sub_100009EA0(&off_100018A30);
  return v3;
}

char *sub_100009D88(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_10000FD34())
  {
    result = sub_100009F84(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_10000FDD4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_10000FDF4();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100009EA0(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_100009FF4(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100009F84(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000016C4(&qword_10001C8D8, &qword_100010978);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100009FF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000016C4(&qword_10001C8D8, &qword_100010978);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10000A0E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10000A19C(uint64_t a1)
{
  sub_10000A220(319);
  if (v1 <= 0x3F)
  {
    sub_10000FA04();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000A220(uint64_t a1)
{
  if (!qword_10001C960)
  {
    sub_10000F9A4();
    v1 = sub_10000FDC4();
    if (!v2)
    {
      atomic_store(v1, &qword_10001C960);
    }
  }
}

uint64_t sub_10000A370(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000016C4(&qword_10001C9A8, &qword_100010AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A3E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostInferenceProviderImplementation.HostStream.Iterator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A464(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000016C4(&qword_10001C9A8, &qword_100010AA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A4F4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000A52C(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_10000AD24();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10000A598(unint64_t *a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    sub_10000F9E4();
    v4 = sub_10000AF68();

    return sub_10000A15C(v4, v5, v6);
  }
}

void *sub_10000A62C(void *result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_10000F9E4();
    v4 = sub_10000AF68();

    return sub_100009A8C(v4, v5, a2, v6);
  }

  return result;
}

uint64_t sub_10000A6A4(uint64_t a1)
{
  result = sub_10000F9A4();
  if (v2 <= 0x3F)
  {
    result = sub_10000F9E4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000A744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000F9E4();
  sub_10000B2A0();
  if (*(v7 + 84) != a2)
  {
    return sub_10000B044(*(a1 + *(a3 + 20)));
  }

  return sub_10000A15C(a1, a2, v6);
}

void sub_10000A7F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_10000F9E4();
  sub_10000B2A0();
  if (*(v9 + 84) == a3)
  {

    sub_100009A8C(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }
}

void sub_10000A898(uint64_t a1)
{
  sub_10000F9E4();
  if (v1 <= 0x3F)
  {
    sub_10000AB44(319, &qword_10001CAC8, &unk_10001CAD0, &qword_100010AF8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10000A934(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000A990(unint64_t *a1, int a2)
{
  if (a2 == 2147483646)
  {
    return sub_10000B044(*a1);
  }

  sub_10000FA04();
  v3 = sub_10000AF68();

  return sub_10000A15C(v3, v4, v5);
}

void *sub_10000AA18(void *result, uint64_t a2, int a3)
{
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    sub_10000FA04();
    v4 = sub_10000AF68();

    return sub_100009A8C(v4, v5, a2, v6);
  }

  return result;
}

void sub_10000AA90(uint64_t a1)
{
  sub_10000A220(319);
  if (v1 <= 0x3F)
  {
    sub_10000FA04();
    if (v2 <= 0x3F)
    {
      sub_10000AB44(319, &qword_10001CB68, &unk_10001CB70, qword_100010B10);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000AB44(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000A934(a3, a4);
    v5 = sub_10000FDC4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10000AC60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1000016C4(a2, a3);
  sub_10000AD24();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10000ACF4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000AD7C(uint64_t a1)
{

  return swift_once();
}

void sub_10000AD9C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_10000ADBC()
{
}

uint64_t sub_10000AE28()
{
}

BOOL sub_10000AE9C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10000AEC4()
{
}

uint64_t sub_10000AEE4(uint64_t a1)
{
  *(v1 + 80) = a1;

  return swift_allocError();
}

uint64_t sub_10000AF14()
{
}

uint64_t sub_10000AF30()
{
}

uint64_t sub_10000AF78(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_10000AF9C()
{
  *(v0 + 16) = *(v0 + 96);

  return swift_errorRetain();
}

uint64_t sub_10000AFF8()
{

  return sub_10000F914();
}

uint64_t sub_10000B02C(uint64_t a1)
{
}

uint64_t sub_10000B044@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10000B064()
{

  return swift_task_alloc();
}

uint64_t sub_10000B07C()
{

  return swift_slowAlloc();
}

void sub_10000B094(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_10000B0B4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_10000B12C()
{
}

uint64_t sub_10000B168(uint64_t result, uint64_t a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2;
  return result;
}

uint64_t sub_10000B1BC()
{
  v3 = *(v1 + 144) + *(v1 + 288);

  return sub_100001774(v3, v0);
}

uint64_t sub_10000B1E0()
{

  return swift_slowAlloc();
}

BOOL sub_10000B1F8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10000B210(uint64_t a1)
{

  return sub_10000F914();
}

uint64_t sub_10000B234()
{
}

uint64_t sub_10000B250(uint64_t a1)
{

  return swift_willThrowTypedImpl();
}

uint64_t sub_10000B26C()
{
}

void sub_10000B2AC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void sub_10000B2CC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_10000B2EC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t sub_10000B320()
{

  return swift_slowAlloc();
}

unint64_t sub_10000B338(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100018A58;
  v6._object = a2;
  v4 = sub_10000FE24(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10000B384(char a1)
{
  result = 0x6B636162706F6F6CLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      return result;
    case 3:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

Swift::Int sub_10000B43C(uint64_t a1)
{
  v1 = a1;
  sub_10000FE54();
  sub_10000B48C(v3, v1);
  return sub_10000FE64();
}

uint64_t sub_10000B48C(uint64_t a1, char a2)
{
  sub_10000FD04();
}

Swift::Int sub_10000B56C(uint64_t a1, char a2)
{
  sub_10000FE54();
  sub_10000B48C(v4, a2);
  return sub_10000FE64();
}

unint64_t sub_10000B5B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000B338(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10000B5E0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000B384(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for RemoteDeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RemoteDeviceType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x10000B76CLL);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10000B7BC()
{
  result = qword_10001CBC8;
  if (!qword_10001CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CBC8);
  }

  return result;
}

uint64_t sub_10000B810()
{
  v0 = sub_10000FC04();
  sub_100003C50(v0, qword_10001CBD0);
  sub_100003C18(v0, qword_10001CBD0);
  return sub_10000FAF4();
}

BOOL sub_10000B85C()
{
  v5 = 8;
  v6 = 0;
  if (sysctlbyname("kern.hv_vmm_present", &v6, &v5, 0, 0))
  {
    if (qword_10001C690 != -1)
    {
      swift_once();
    }

    v0 = sub_10000FC04();
    sub_100003C18(v0, qword_10001CBD0);
    v1 = sub_10000FBE4();
    v2 = sub_10000FD84();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Sysctl failed to get VM state, assuming physical device", v3, 2u);
    }
  }

  return v6 != 0;
}

uint64_t IPCCachedSession.sendAsyncWithRetry<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v10 = sub_10000F8E4();
  v5[8] = v10;
  v5[9] = *(v10 - 8);
  v5[10] = swift_task_alloc();
  v11 = sub_10000E6BC();
  v5[11] = v11;
  *v11 = v5;
  v11[1] = sub_10000BB30;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_10000BB30()
{
  sub_10000AE1C();
  v2 = *v1;
  sub_10000AD5C();
  *v3 = v2;
  v4 = *v1;
  v2[12] = v0;

  if (v0)
  {
    sub_10000F9A4();
    sub_10000E33C(&qword_10001C8E8, &type metadata accessor for IPCCachedSession, &protocol conformance descriptor for IPCCachedSession);
    v6 = sub_10000FD44();
    v2[13] = v6;
    v2[14] = v5;

    return _swift_task_switch(sub_10000BCCC, v6, v5);
  }

  else
  {

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_10000BCCC()
{
  sub_10000AE1C();
  v0[2] = v0[12];
  swift_errorRetain();
  sub_1000016C4(&qword_10001CD50, &qword_100010968);
  if (swift_dynamicCast())
  {
    if ((*(v0[9] + 88))(v0[10], v0[8]) == enum case for ModelManagerError.ipcError(_:))
    {
      v2 = v0[9];
      v1 = v0[10];
      v3 = v0[8];

      (*(v2 + 8))(v1, v3);
      if (qword_10001C698 != -1)
      {
        sub_10000E5D4();
        swift_once();
      }

      v4 = sub_10000FC04();
      sub_100003C18(v4, qword_10001CD30);
      v5 = sub_10000FBE4();
      sub_10000FD84();
      v6 = sub_10000E6B0();
      if (os_log_type_enabled(v6, v7))
      {
        *swift_slowAlloc() = 0;
        sub_10000AD9C(&_mh_execute_header, v8, v9, "IPCCachedSession performing a retry on sendAsync");
        sub_10000E644();
      }

      v10 = sub_10000E6BC();
      v0[15] = v10;
      *v10 = v0;
      v10[1] = sub_10000BEFC;
      v11 = v0[6];
      v12 = v0[4];
      v13 = v0[5];
      v14 = v0[3];

      return v17(v14, v12, v13, v11);
    }

    (*(v0[9] + 8))(v0[10], v0[8]);
  }

  sub_100002C78();

  return v16();
}

uint64_t sub_10000BEFC()
{
  sub_10000AE1C();
  v2 = *v1;
  sub_10000AD5C();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 128) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_10000C090;
  }

  else
  {
    v7 = sub_10000C02C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10000C02C()
{
  sub_100002C60();

  sub_100002C78();

  return v0();
}

uint64_t sub_10000C090()
{
  sub_100002C60();

  sub_100002C78();

  return v0();
}

uint64_t sub_10000C0F8(unsigned __int8 a1, char a2)
{
  v2 = 0x6B636162706F6F6CLL;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = "virtualMachineUntrustedHost";
  v6 = 0x6B636162706F6F6CLL;
  v7 = "virtualMachineHost";
  switch(v4)
  {
    case 1:
      v3 = 0x8000000100011010;
      v6 = 0xD00000000000001BLL;
      break;
    case 2:
      break;
    case 3:
      v3 = 0xE700000000000000;
      v6 = sub_10000E5E8();
      break;
    default:
      v6 = sub_10000E684();
      v3 = (v7 - 32) | 0x8000000000000000;
      break;
  }

  v8 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v8 = (v5 - 32) | 0x8000000000000000;
      v2 = 0xD00000000000001BLL;
      break;
    case 2:
      break;
    case 3:
      v8 = 0xE700000000000000;
      sub_10000E614();
      break;
    default:
      v2 = 0xD000000000000012;
      v8 = (v7 - 32) | 0x8000000000000000;
      break;
  }

  if (v6 == v2 && v3 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_10000FE44();
  }

  return v10 & 1;
}

uint64_t sub_10000C258()
{
  v0 = sub_10000FC04();
  sub_100003C50(v0, qword_10001CD30);
  sub_100003C18(v0, qword_10001CD30);
  sub_10000F904();
  return sub_10000FBF4();
}

uint64_t sub_10000C2C4()
{
  v1 = *sub_1000029F4(v0, v0[3]);

  return _xpc_remote_connection_activate(v1);
}

void sub_10000C2F8()
{
  sub_1000029F4(v0, v0[3]);
  xpc_remote_connection_cancel();
  v1 = v0[5];
  os_unfair_lock_lock((v1 + 32));
  sub_10000C364((v1 + 16));

  os_unfair_lock_unlock((v1 + 32));
}

uint64_t (**sub_10000C364(uint64_t (**result)()))()
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (*result)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    sub_10000E528(v3, v2);

    (v3)(v5);

    sub_10000E538(v3, v2);
    result = swift_allocObject();
    v2 = result;
    result[2] = sub_10000E5C8;
    result[3] = v4;
    v6 = sub_10000E5D0;
  }

  else
  {
    v6 = 0;
  }

  *v1 = v6;
  v1[1] = v2;
  return result;
}

void sub_10000C438()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 32));
  sub_10000E570((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
}

uint64_t sub_10000C490(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *a1;
  if (v8)
  {
    sub_10000E538(v8, a1[1]);
  }

  sub_1000029F4(a4, a4[3]);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v12[4] = sub_10000E590;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10000E118;
  v12[3] = &unk_100018FC0;
  v10 = _Block_copy(v12);
  swift_retain_n();

  xpc_remote_connection_set_event_handler();
  _Block_release(v10);

  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  *a1 = sub_10000E5D0;
  a1[1] = result;
  return result;
}

const _xpc_type_s *sub_10000C5F0(void *a1, uint64_t (*a2)(void))
{
  type = xpc_get_type(a1);
  result = sub_10000FC14();
  if (type == result)
  {
    return a2();
  }

  return result;
}

uint64_t sub_10000C638()
{
  v2 = sub_10000FCA4();
  sub_10000E69C();
  v4 = v3;
  __chkstk_darwin(v5, v6);
  sub_10000E650();
  sub_10000E628();
  sub_10000FC84();
  if (!v1)
  {
    sub_1000016C4(&qword_10001CD88, &unk_100010E90);
    sub_10000FC64();
    sub_1000029F4(v0, v0[3]);
    xpc_remote_connection_send_message();
    swift_unknownObjectRelease();
  }

  return (*(v4 + 8))(v0, v2);
}

uint64_t sub_10000C780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_10000FCA4();
  sub_10000E69C();
  v15 = v14;
  __chkstk_darwin(v16, v17);
  sub_10000E650();
  sub_10000E628();
  sub_10000FC84();
  if (v9)
  {
    (*(v15 + 8))(v8, v13);
    *&v32[0] = 0;
    *(&v32[0] + 1) = 0xE000000000000000;
    sub_10000FDE4(18);
    v34._object = 0x8000000100011360;
    v34._countAndFlagsBits = 0xD000000000000010;
    sub_10000FD14(v34);
    v33 = v9;
    sub_1000016C4(&qword_10001CD50, &qword_100010968);
    sub_10000FE04();
    *a8 = 0;
    a8[1] = 0xE000000000000000;
    v18 = enum case for ModelManagerError.remoteXPCError(_:);
    v19 = sub_10000F8E4();
    sub_10000E690();
    (*(v20 + 104))(a8, v18, v19);
    sub_10000E5FC();
    sub_10000E33C(v21, v22, &protocol conformance descriptor for ModelManagerError);
    swift_willThrowTypedImpl();
  }

  else
  {
    sub_1000016C4(&qword_10001CD88, &unk_100010E90);
    sub_10000FC64();
    v24 = *&v32[0];
    sub_10000E434(v8, v32);
    v25 = swift_allocObject();
    *(v25 + 16) = a4;
    *(v25 + 24) = a5;
    *(v25 + 32) = a6;
    *(v25 + 40) = a7;
    v26 = v32[1];
    *(v25 + 48) = v32[0];
    *(v25 + 64) = v26;
    *(v25 + 80) = v32[2];
    *(v25 + 96) = a2;
    *(v25 + 104) = a3;
    v27 = *sub_1000029F4(v8, v8[3]);

    sub_10000F624(v24, sub_10000E4B4, v25, v27);
    swift_unknownObjectRelease();

    return (*(v15 + 8))(v8, v13);
  }
}

uint64_t sub_10000CA88(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39[0] = a2;
  v39[1] = a8;
  v42 = a4;
  v43 = a3;
  v10 = sub_10000FCA4();
  v11 = *(v10 - 8);
  v13 = __chkstk_darwin(v10, v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a6 - 8);
  __chkstk_darwin(v13, v17);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000F8E4();
  sub_10000E33C(&qword_10001CD78, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
  v21 = sub_10000FE74();
  v40 = *(v21 - 8);
  v41 = v21;
  __chkstk_darwin(v21, v22);
  v24 = (v39 - v23);
  type = xpc_get_type(a1);
  if (type == sub_10000FC14())
  {
    v26 = v39[0];
    if (qword_10001C698 != -1)
    {
      swift_once();
    }

    v27 = sub_10000FC04();
    sub_100003C18(v27, qword_10001CD30);
    swift_unknownObjectRetain();
    v28 = sub_10000FBE4();
    v29 = sub_10000FD84();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44 = v31;
      *v30 = 136315138;
      xpc_copy_description(a1);
      v32 = sub_10000FD24();
      v34 = sub_100009B7C(v32, v33, &v44);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "RemoteXPCSession errored out with error: %s", v30, 0xCu);
      sub_100002938(v31);
    }

    v35 = *(v26 + 40);
    os_unfair_lock_lock((v35 + 32));
    sub_10000CFE8((v35 + 16));
    os_unfair_lock_unlock((v35 + 32));
    *v24 = 0xD000000000000010;
    v24[1] = 0x8000000100011380;
    (*(*(v20 - 8) + 104))(v24, enum case for ModelManagerError.ipcError(_:), v20);
    v36 = v41;
    swift_storeEnumTagMultiPayload();
    v43(v24);
    return (*(v40 + 8))(v24, v36);
  }

  else
  {
    swift_unknownObjectRetain();
    sub_10000FCB4();
    sub_10000FC74();
    (*(v11 + 8))(v15, v10);
    (*(v16 + 16))(v24, v19, a6);
    v37 = v41;
    swift_storeEnumTagMultiPayload();
    v43(v24);
    (*(v40 + 8))(v24, v37);
    return (*(v16 + 8))(v19, a6);
  }
}

uint64_t (**sub_10000CFE8(uint64_t (**result)()))()
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (*result)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    sub_10000E528(v3, v2);

    (v3)(v5);

    sub_10000E538(v3, v2);
    result = swift_allocObject();
    v2 = result;
    result[2] = sub_10000E500;
    result[3] = v4;
    v6 = sub_10000E548;
  }

  else
  {
    v6 = 0;
  }

  *v1 = v6;
  v1[1] = v2;
  return result;
}

uint64_t sub_10000D104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v23 = a7;
  v14 = sub_10000F8E4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = (&v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v24;
  result = sub_10000C780(a1, a2, a3, a4, a5, a6, v23, v18);
  if (v19)
  {
    return (*(v15 + 32))(v22, v18, v14);
  }

  return result;
}

uint64_t sub_10000D230@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = result;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0x6B636162706F6F6CLL;
    v5 = a2 + 32;
    v42 = 0x8000000100011010;
    v6 = a2 + 32;
    v7 = v3;
    while (1)
    {
      sub_10000E1E0(v6, &v40);
      v8 = *sub_1000029F4(&v40, v41);
      v9 = 0xE800000000000000;
      v10 = 0x6B636162706F6F6CLL;
      switch(v8)
      {
        case 1:
          sub_10000E678();
          v10 = v11 + 9;
          v9 = v42;
          break;
        case 2:
          break;
        case 3:
          v9 = 0xE700000000000000;
          v10 = sub_10000E5E8();
          break;
        default:
          v10 = sub_10000E684();
          v9 = 0x8000000100010FF0;
          break;
      }

      v12 = 0xE800000000000000;
      v13 = 0x6B636162706F6F6CLL;
      switch(v39)
      {
        case 1:
          sub_10000E678();
          v13 = v14 + 9;
          v12 = v42;
          break;
        case 2:
          break;
        case 3:
          v12 = 0xE700000000000000;
          sub_10000E614();
          break;
        default:
          v13 = 0xD000000000000012;
          v12 = 0x8000000100010FF0;
          break;
      }

      if (v10 == v13 && v9 == v12)
      {
        break;
      }

      v16 = sub_10000FE44();

      result = sub_100002938(&v40);
      if (v16)
      {
        goto LABEL_19;
      }

      v6 += 40;
      if (!--v7)
      {
        goto LABEL_17;
      }
    }

    sub_100002938(&v40);
    do
    {
LABEL_19:
      sub_10000E1E0(v5, &v40);
      v17 = *sub_1000029F4(&v40, v41);
      v18 = 0xE800000000000000;
      v19 = 0x6B636162706F6F6CLL;
      switch(v17)
      {
        case 1:
          sub_10000E678();
          v19 = v20 + 9;
          v18 = v42;
          break;
        case 2:
          break;
        case 3:
          v18 = 0xE700000000000000;
          v19 = sub_10000E5E8();
          break;
        default:
          v19 = sub_10000E684();
          v18 = 0x8000000100010FF0;
          break;
      }

      v21 = 0xE800000000000000;
      v22 = 0x6B636162706F6F6CLL;
      switch(v39)
      {
        case 1:
          sub_10000E678();
          v22 = v23 + 9;
          v21 = v42;
          break;
        case 2:
          break;
        case 3:
          v21 = 0xE700000000000000;
          sub_10000E614();
          break;
        default:
          v22 = 0xD000000000000012;
          v21 = 0x8000000100010FF0;
          break;
      }

      if (v19 == v22 && v18 == v21)
      {

        return sub_100002A38(&v40, a3);
      }

      v25 = sub_10000FE44();

      if (v25)
      {
        return sub_100002A38(&v40, a3);
      }

      sub_100002938(&v40);
      v5 += 40;
      --v3;
    }

    while (v3);
    if (qword_10001C698 != -1)
    {
      sub_10000E5D4();
      swift_once();
    }

    v26 = sub_10000FC04();
    sub_100003C18(v26, qword_10001CD30);
    v27 = sub_10000FBE4();
    v28 = sub_10000FD94();
    v29 = sub_10000E6B0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v40 = v32;
      *v31 = 136315138;
      v33 = 0xE800000000000000;
      v34 = v32;
      switch(v39)
      {
        case 1:
          sub_10000E678();
          v4 = v35 + 9;
          v33 = v42;
          break;
        case 2:
          break;
        case 3:
          v33 = 0xE700000000000000;
          v4 = 0x6E776F6E6B6E75;
          break;
        default:
          v4 = 0xD000000000000012;
          v33 = 0x8000000100010FF0;
          break;
      }

      v36 = sub_100009B7C(v4, v33, &v40);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "HostInferenceProvider could not find %s device even though it was found by RSD", v31, 0xCu);
      sub_100002938(v34);
      sub_10000E644();

      sub_10000E644();
    }

    sub_10000F984();
    sub_10000E33C(&qword_10001CD80, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
    swift_allocError();
    sub_10000E690();
    (*(v37 + 104))();
    return swift_willThrow();
  }

  else
  {
LABEL_17:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10000D76C()
{
  sub_100002C60();
  v0[40] = v1;
  v0[41] = v2;
  v3 = swift_task_alloc();
  v0[42] = v3;
  v4 = sub_1000016C4(&qword_10001CD58, &qword_100010E00);
  *v3 = v0;
  v3[1] = sub_10000D854;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 39, 0, 0, 0xD000000000000015, 0x8000000100011310, sub_100002E90, 0, v4);
}

uint64_t sub_10000D854()
{
  sub_100002C60();

  return _swift_task_switch(sub_10000D94C, 0, 0);
}

uint64_t sub_10000D94C()
{
  v38 = v0;
  v1 = *(v0 + 312);
  has_internal_content = os_variant_has_internal_content();
  v3 = 0;
  if (has_internal_content)
  {
    v4 = &off_100018AD8;
  }

  else
  {
    v4 = &off_100018B00;
  }

  v5 = v4[2];
  if (has_internal_content)
  {
    v6 = &unk_100018AF8;
  }

  else
  {
    v6 = &unk_100018B20;
  }

  while (v5 != v3)
  {
    if (v3 >= v4[2])
    {
      __break(1u);
      goto LABEL_29;
    }

    v7 = v6[v3];
    sub_10000D230(v7, v1, v0 + 152);
    if (*(v0 + 176))
    {

      sub_100002A38((v0 + 152), v0 + 112);
      if (qword_10001C698 != -1)
      {
        sub_10000E5D4();
        swift_once();
      }

      v20 = sub_10000FC04();
      sub_100003C18(v20, qword_10001CD30);
      v21 = sub_10000FBE4();
      v22 = sub_10000FD74();
      v23 = sub_10000E6B0();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v37 = v26;
        *v25 = 136315138;
        v27 = 0xE800000000000000;
        v28 = 0x6B636162706F6F6CLL;
        switch(v7)
        {
          case 1:
            v27 = 0x8000000100011010;
            v28 = 0xD00000000000001BLL;
            break;
          case 2:
            break;
          case 3:
            v27 = 0xE700000000000000;
            v28 = sub_10000E5E8();
            break;
          default:
            v28 = sub_10000E684();
            v27 = 0x8000000100010FF0;
            break;
        }

        v29 = sub_100009B7C(v28, v27, &v37);

        *(v25 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v21, v22, "HostInferenceProvider is connecting to %s", v25, 0xCu);
        sub_100002938(v26);
        sub_10000E644();

        sub_10000E644();
      }

      v30 = *(v0 + 320);
      v31 = *(v0 + 328);
      sub_10000E1E0(v0 + 112, v0 + 192);
      v32 = sub_10000FA54();
      v34 = v33;
      *(v0 + 344) = v33;
      sub_10000E1E0(v31, v0 + 232);
      v30[3] = &type metadata for RemoteXPCSession;
      v30[4] = sub_10000E240();
      v35 = swift_allocObject();
      *(v0 + 352) = v35;
      *v30 = v35;
      sub_1000029F4((v0 + 232), *(v0 + 256));
      v36 = swift_task_alloc();
      *(v0 + 360) = v36;
      *v36 = v0;
      v36[1] = sub_10000DE24;

      return sub_10000E918(v0 + 272, v0 + 192, v32, v34);
    }

    sub_10000E178(v0 + 152);
    ++v3;
  }

  if (qword_10001C698 == -1)
  {
    goto LABEL_12;
  }

LABEL_29:
  sub_10000E5D4();
  swift_once();
LABEL_12:
  v8 = sub_10000FC04();
  sub_100003C18(v8, qword_10001CD30);
  v9 = sub_10000FBE4();
  sub_10000FD84();
  v10 = sub_10000E6B0();
  if (os_log_type_enabled(v10, v11))
  {
    *swift_slowAlloc() = 0;
    sub_10000AD9C(&_mh_execute_header, v12, v13, "HostInferenceProvider could not find any host to connect with and failed");
    sub_10000E644();
  }

  sub_10000F8E4();
  sub_10000E5FC();
  sub_10000E33C(v14, v15, &protocol conformance descriptor for ModelManagerError);
  swift_allocError();
  *v16 = 1701736302;
  v16[1] = 0xE400000000000000;
  sub_10000E690();
  (*(v17 + 104))();
  swift_willThrow();
  sub_100002C78();

  return v18();
}

uint64_t sub_10000DE24()
{
  sub_10000AE1C();
  sub_10000AD5C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 368) = v0;

  if (v0)
  {
    v4 = sub_10000E0A0;
  }

  else
  {
    v4 = sub_10000DF4C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000DF4C()
{
  sub_10000AE1C();
  v1 = *(v0 + 352);
  sub_100002A38((v0 + 272), v0 + 16);
  sub_1000029F4((v0 + 16), *(v0 + 40));
  *(v0 + 96) = nullsub_1;
  *(v0 + 104) = 0;
  *(v0 + 64) = _NSConcreteStackBlock;
  *(v0 + 72) = 1107296256;
  *(v0 + 80) = sub_10000E118;
  *(v0 + 88) = &unk_100018E78;
  v2 = _Block_copy((v0 + 64));

  xpc_remote_connection_set_event_handler();
  _Block_release(v2);
  sub_1000016C4(&qword_10001CD70, &qword_100010E10);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  sub_100002938((v0 + 192));
  *(v0 + 56) = v3;
  v4 = *(v0 + 16);
  v5 = *(v0 + 48);
  v1[2] = *(v0 + 32);
  v1[3] = v5;
  v1[1] = v4;
  sub_100002938((v0 + 232));
  sub_100002938((v0 + 112));
  sub_100002C78();

  return v6();
}

uint64_t sub_10000E0A0()
{
  sub_100002C60();
  v1 = v0[40];
  sub_100002938(v0 + 24);
  sub_100002938(v0 + 29);
  sub_100002938(v0 + 14);
  sub_10000E2D4(v1);
  sub_100002C78();

  return v2();
}

uint64_t sub_10000E118(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10000E178(uint64_t a1)
{
  v2 = sub_1000016C4(&qword_10001CD60, &qword_100010E08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000E1E0(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  sub_10000E690();
  (*v3)(a2);
  return a2;
}

unint64_t sub_10000E240()
{
  result = qword_10001CD68;
  if (!qword_10001CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD68);
  }

  return result;
}

uint64_t sub_10000E294()
{
  sub_100002938((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

void *sub_10000E2D4(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t sub_10000E324(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E33C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_10000E384(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000E398(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_10000E3D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000E46C()
{
  sub_100002938((v0 + 48));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10000E4C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E528(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000E538(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000E650()
{

  return XPCDictionary.init()();
}

uint64_t sub_10000E6BC()
{

  return swift_task_alloc();
}

uint64_t sub_10000E720(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10000FC44();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10000E7B0, 0, 0);
}

uint64_t sub_10000E7B0()
{
  sub_10000FA64();
  v1 = sub_10000FCF4();

  xpc_connection_create_mach_service((v1 + 32), 0, 0);

  xpc_connection_enable_sim2host_4sim();
  v2 = sub_10000FC54();
  swift_unknownObjectRetain();
  sub_10000FC34();
  v3 = sub_10000FC24();
  v4 = *(v0 + 16);
  v4[3] = v2;
  v4[4] = &protocol witness table for XPCSession;
  swift_unknownObjectRelease();
  *v4 = v3;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10000E918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return _swift_task_switch(sub_10000E93C, 0, 0);
}

uint64_t sub_10000E93C()
{
  sub_100002A50(v0[8], (v0 + 2));

  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_10000E9F0;
  v2 = v0[9];
  v3 = v0[10];

  return sub_10000EBB0((v0 + 2), v2, v3);
}

uint64_t sub_10000E9F0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_10000EB50;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_10000EB18;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000EB18()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 56);
  v2[3] = &type metadata for RemoteXPCConnection;
  v2[4] = &off_100019120;
  *v2 = v1;
  return (*(v0 + 8))();
}

uint64_t sub_10000EBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return _swift_task_switch(sub_10000EBD4, 0, 0);
}

uint64_t sub_10000EBD4()
{
  sub_100002A50(*(v0 + 80), v0 + 16);
  sub_1000016C4(&qword_10001C798, &qword_1000107A8);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 64);
    *(v0 + 104) = v2;
    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    v5 = sub_10000F6F4(0, &qword_10001CFE0, OS_remote_device_ptr);
    *v4 = v0;
    v4[1] = sub_10000EEB4;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 72, 0, 0, 0xD00000000000001BLL, 0x8000000100011490, sub_10000F6E8, v3, v5);
  }

  else
  {

    if (qword_10001C6A0 != -1)
    {
      sub_10000F874(&qword_10001C6A0);
    }

    v6 = sub_10000FC04();
    sub_100003C18(v6, qword_10001CFC8);
    v7 = sub_10000FBE4();
    v8 = sub_10000FD94();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Detected a RemoteDeviceMock in RemoteXPCConnection", v9, 2u);
    }

    v10 = sub_10000F8E4();
    sub_10000F340();
    swift_allocError();
    strcpy(v11, "Internal Error");
    v11[15] = -18;
    (*(*(v10 - 8) + 104))(v11, enum case for ModelManagerError.remoteXPCError(_:), v10);
    swift_willThrow();
    sub_100002938(*(v0 + 80));
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_10000EEB4()
{

  return _swift_task_switch(sub_10000EFCC, 0, 0);
}

uint64_t sub_10000EFCC()
{
  v25 = v0;
  v1 = v0[9];
  sub_10000FCF4();
  v2 = remote_device_copy_service();

  if (v2)
  {
    v3 = v0[13];
    v4 = v0[10];

    v5 = xpc_remote_connection_create_with_remote_service();

    sub_100002938(v4);
    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    if (qword_10001C6A0 != -1)
    {
      sub_10000F874(&qword_10001C6A0);
    }

    v8 = sub_10000FC04();
    sub_100003C18(v8, qword_10001CFC8);

    v9 = sub_10000FBE4();
    v10 = sub_10000FD94();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = v0[11];
      v11 = v0[12];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_100009B7C(v12, v11, &v23);
      _os_log_impl(&_mh_execute_header, v9, v10, "No remote service with name %s", v13, 0xCu);
      sub_100002938(v14);
    }

    v15 = v0[12];
    v16 = v0[13];
    v17 = v0[11];
    v18 = sub_10000F8E4();
    sub_10000F340();
    swift_allocError();
    v20 = v19;
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_10000FDE4(30);

    v23 = 0xD00000000000001CLL;
    v24 = 0x80000001000114B0;
    v27._countAndFlagsBits = v17;
    v27._object = v15;
    sub_10000FD14(v27);

    v21 = v24;
    *v20 = v23;
    v20[1] = v21;
    (*(*(v18 - 8) + 104))(v20, enum case for ModelManagerError.remoteXPCError(_:), v18);
    swift_willThrow();

    sub_100002938(v0[10]);
    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_10000F2D4()
{
  v0 = sub_10000FC04();
  sub_100003C50(v0, qword_10001CFC8);
  sub_100003C18(v0, qword_10001CFC8);
  sub_10000F904();
  return sub_10000FBF4();
}

unint64_t sub_10000F340()
{
  result = qword_10001CD78;
  if (!qword_10001CD78)
  {
    sub_10000F8E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD78);
  }

  return result;
}

void sub_10000F398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000016C4(&qword_10001CFE8, &qword_100010FB0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = aBlock - v7;
  sub_10000F6F4(0, &qword_10001C780, OS_dispatch_queue_ptr);
  v9 = sub_10000FDB4();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_10000F7C8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F5BC;
  aBlock[3] = &unk_1000190D0;
  v12 = _Block_copy(aBlock);

  remote_device_set_connected_callback();
  _Block_release(v12);
}

uint64_t sub_10000F56C(void *a1)
{
  v1 = a1;
  sub_1000016C4(&qword_10001CFE8, &qword_100010FB0);
  return sub_10000FD54();
}

void sub_10000F5BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_10000F624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a2;
  v5[5] = a3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10000E118;
  v5[3] = &unk_100019160;
  v4 = _Block_copy(v5);

  xpc_remote_connection_send_message_with_reply();
  _Block_release(v4);
}

uint64_t sub_10000F6F4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000F734()
{
  v1 = sub_1000016C4(&qword_10001CFE8, &qword_100010FB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000F7C8(void *a1)
{
  sub_1000016C4(&qword_10001CFE8, &qword_100010FB0);

  return sub_10000F56C(a1);
}

uint64_t sub_10000F844(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000F874(uint64_t a1)
{

  return swift_once();
}
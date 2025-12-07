id sub_368F0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v3 = Strong, v4 = sub_32AC4(), v3, (v4 & 1) != 0))
    {
      if (qword_55988 != -1)
      {
        swift_once();
      }

      v5 = *(qword_572C0 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo);
      if (v5 && ([v5 isMirrored] & 1) != 0)
      {
        goto LABEL_14;
      }

      result = MobileGestalt_get_current_device();
      if (!result)
      {
        __break(1u);
        goto LABEL_18;
      }

      v6 = result;
      deviceSupportsEnhancedMultitasking = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

      if ((deviceSupportsEnhancedMultitasking & 1) == 0)
      {
        result = MobileGestalt_get_current_device();
        if (result)
        {
          v8 = result;
          MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();

          goto LABEL_14;
        }

LABEL_18:
        __break(1u);
        return result;
      }
    }

    else
    {
      sub_371D4(Strong);
    }

LABEL_14:
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_3C8A4();
  }

  return result;
}

uint64_t type metadata accessor for MultiTaskingSectionViewModel(uint64_t a1)
{
  result = qword_56FB8;
  if (!qword_56FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_36E10(uint64_t a1)
{
  sub_A260(319, &qword_56FC8, &type metadata for MultiTaskingWindowType);
  if (v1 <= 0x3F)
  {
    sub_A260(319, &qword_55A10, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_A2AC(319, &qword_55D10, type metadata accessor for UIDeviceOrientation);
      if (v3 <= 0x3F)
      {
        sub_A2AC(319, &qword_55D18, type metadata accessor for MultiTaskingDisplayManager);
        if (v4 <= 0x3F)
        {
          sub_A260(319, &qword_56FD0, &type metadata for MultiTaskingSectionViewModel.DisplaySection);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

unint64_t sub_37060()
{
  result = qword_56FE0;
  if (!qword_56FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56FE0);
  }

  return result;
}

void sub_370DC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v3;
}

uint64_t sub_3715C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return sub_3C8A4();
}

id sub_371D4(uint64_t a1)
{
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v2 = result;
  deviceSupportsEnhancedMultitasking = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

  if ((deviceSupportsEnhancedMultitasking & 1) == 0)
  {
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v4 = result;
      deviceSupportsSingleDisplayEnhancedMultitasking = MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();

      if (!deviceSupportsSingleDisplayEnhancedMultitasking)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    }

LABEL_22:
    __break(1u);
    return result;
  }

LABEL_5:
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v6 = qword_572E8;
  v7 = sub_3D4C4();
  LOBYTE(v6) = [v6 BOOLForKey:v7];

  if (v6)
  {
    return &dword_0 + 3;
  }

LABEL_9:
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v8 = qword_572E8;
  v9 = sub_3D4C4();
  v10 = [v8 objectForKey:v9];

  if (v10)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_526C(v14);
    return &dword_0 + 2;
  }

  if (!swift_dynamicCast())
  {
    return &dword_0 + 2;
  }

  if (v11)
  {
    return &dword_0 + 2;
  }

  else
  {
    return 0;
  }
}

double sub_373CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_3D3B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3D3D4();
  v21 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + 24) && a2 && (a1 == 0xD00000000000001BLL && 0x8000000000042A30 == a2 || (sub_3D804() & 1) != 0 || a1 == 0xD000000000000019 && 0x8000000000042A60 == a2 || (sub_3D804() & 1) != 0))
  {
    sub_ACD0();
    v20 = sub_3D624();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = ObjectType;
    aBlock[4] = sub_377F8;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_BFC0;
    aBlock[3] = &unk_53828;
    v17 = _Block_copy(aBlock);

    sub_3D3C4();
    v22 = _swiftEmptyArrayStorage;
    sub_ADAC(&qword_55D28, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v19 = v11;
    sub_4FF4(&qword_55D30, &qword_3EF70);
    sub_56BC(&qword_55D38, &qword_55D30, &qword_3EF70, &protocol conformance descriptor for [A]);
    sub_3D694();
    v18 = v20;
    sub_3D634();
    _Block_release(v17);

    (*(v8 + 8))(v10, v7);
    (*(v21 + 8))(v14, v19);
  }

  return result;
}

uint64_t sub_37788()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_377C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_37800(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_378D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_587C;

  return sub_33B54(a1, v4, v5, v6);
}

uint64_t sub_3798C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5440;

  return sub_34634(a1, v4, v5, v6);
}

uint64_t sub_37A4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_587C;

  return sub_34F60(a1, v4, v5, v6);
}

uint64_t sub_37B0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_587C;

  return sub_3598C(a1, v4, v5, v6);
}

uint64_t sub_37BC0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_37C0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_587C;

  return sub_3612C(a1, v4, v5, v6);
}

__n128 sub_37D74(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_37D88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_37DD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_37E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v29 = a5;
  v9 = a4 >> 8;
  v10 = sub_4FF4(&qword_57048, &qword_41F28);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  v14 = sub_4FF4(&qword_559B0, &unk_41F30);
  (*(*(v14 - 8) + 16))(v13, a1, v14);
  v15 = &v13[*(sub_4FF4(&qword_559B8, &unk_3E360) + 36)];
  *v15 = v9;
  v15[1] = 1;
  v32 = a2;
  v33 = a3;
  v34 = v5;
  sub_4FF4(&qword_57050, &qword_41F40);
  sub_3D264();
  if (v30 == 10)
  {
    goto LABEL_2;
  }

  v18 = sub_C0B4(v30);
  v20 = v19;
  if (v18 == sub_C0B4(HIBYTE(v5)) && v20 == v21)
  {

LABEL_7:
    v17 = sub_3D0A4();
    goto LABEL_8;
  }

  v22 = sub_3D804();

  if (v22)
  {
    goto LABEL_7;
  }

LABEL_2:
  v16 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v17 = sub_3D114();
LABEL_8:
  v23 = v17;
  v24 = sub_3D354();
  v32 = a2;
  v33 = a3;
  v34 = v5;
  sub_3D264();
  v30 = v23;
  v31 = v24;
  sub_4FF4(&qword_57058, &qword_41F48);
  sub_38128();
  v25 = sub_3D254();
  v26 = v29;
  (*(v11 + 32))(v29, v13, v10);
  result = sub_4FF4(&qword_57078, &qword_41F58);
  *(v26 + *(result + 36)) = v25;
  return result;
}

unint64_t sub_38128()
{
  result = qword_57060;
  if (!qword_57060)
  {
    sub_5674(&qword_57058, &qword_41F48);
    sub_56BC(&qword_57068, &qword_57070, &qword_41F50, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_57060);
  }

  return result;
}

unint64_t sub_381E4()
{
  result = qword_57080;
  if (!qword_57080)
  {
    sub_5674(&qword_57078, &qword_41F58);
    sub_5674(&qword_559B0, &unk_41F30);
    sub_56BC(&qword_57088, &qword_559B0, &unk_41F30, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_D2A4();
    swift_getOpaqueTypeConformance2();
    sub_56BC(&qword_57090, &qword_57098, &unk_41F60, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_57080);
  }

  return result;
}

__n128 sub_3832C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_38350(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_38398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_38420()
{
  v1 = sub_3CC54();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 80);
  v5 = *(v0 + 72);
  v9 = v5;
  if (v10 != 1)
  {

    sub_3D604();
    v6 = sub_3CE74();
    sub_3C844();

    sub_3CC44();
    swift_getAtKeyPath();
    sub_11A14(&v9, &qword_57200, &unk_422E0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_38580()
{
  v1 = *(v0 + 7);
  if (v1)
  {
    v2 = 0xEE00737070416E65;
    v3 = 0x657263536C6C7566;
    v4 = *v0;
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v1;
    sub_3C894();

    v6 = 0x6465776F646E6977;
    v7 = 0xEC00000073707041;
    if (v4 != 1)
    {
      v6 = 0x6E614D6567617473;
      v7 = 0xEC00000072656761;
    }

    if (v4)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0x657263536C6C7566;
    }

    if (v4)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0xEE00737070416E65;
    }

    if (v12)
    {
      if (v12 != 1)
      {
        v2 = 0xEC00000072656761;
        if (v8 != 0x6E614D6567617473)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      v3 = 0x6465776F646E6977;
      v2 = 0xEC00000073707041;
    }

    if (v8 != v3)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (v9 == v2)
    {
      v10 = 1;
LABEL_19:

      return v10 & 1;
    }

LABEL_18:
    v10 = sub_3D804();
    goto LABEL_19;
  }

  type metadata accessor for MultitaskingWindowManagementViewModel(0);
  sub_3C044(&qword_56BC0, type metadata accessor for MultitaskingWindowManagementViewModel, &unk_3EA88);
  result = sub_3CB34();
  __break(1u);
  return result;
}

uint64_t sub_38770@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v2 = sub_3CAE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_4FF4(&qword_570A0, &qword_42080);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - v8;
  v17[0] = sub_4FF4(&qword_570A8, &qword_42088);
  __chkstk_darwin(v17[0]);
  v11 = v17 - v10;
  v12 = swift_allocObject();
  v13 = *(v1 + 80);
  v12[5] = *(v1 + 64);
  v12[6] = v13;
  v12[7] = *(v1 + 96);
  v14 = *(v1 + 16);
  v12[1] = *v1;
  v12[2] = v14;
  v15 = *(v1 + 48);
  v12[3] = *(v1 + 32);
  v12[4] = v15;
  v18 = v1;
  sub_2C1C0(v1, &v19);
  sub_4FF4(&qword_570B0, &qword_42090);
  sub_3B870();
  sub_3D1D4();
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_3D6E4(45);

  v19 = 0xD00000000000002BLL;
  v20 = 0x8000000000043430;
  sub_3D534(*(v1 + 40));
  sub_56BC(&qword_570F0, &qword_570A0, &qword_42080, &protocol conformance descriptor for Button<A>);
  sub_3D074();

  (*(v7 + 8))(v9, v6);
  sub_3CAD4();
  sub_3B9D8();
  sub_3C044(&qword_56440, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  sub_3D014();
  (*(v3 + 8))(v5, v2);
  return sub_11A14(v11, &qword_570A8, &qword_42088);
}

uint64_t sub_38AEC(char *a1)
{
  v1 = *(a1 + 7);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    return sub_3C8A4();
  }

  else
  {
    type metadata accessor for MultitaskingWindowManagementViewModel(0);
    sub_3C044(&qword_56BC0, type metadata accessor for MultitaskingWindowManagementViewModel, &unk_3EA88);
    result = sub_3CB34();
    __break(1u);
  }

  return result;
}

uint64_t sub_38BBC(char *a1)
{
  v3 = sub_4FF4(&qword_570E8, &qword_420A8);
  __chkstk_darwin(v3);
  v5 = &v18 - v4;
  v6 = sub_4FF4(&qword_57100, &qword_420B0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = sub_4FF4(&qword_570D8, &qword_420A0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  if (sub_38420())
  {
    *v5 = sub_3CC84();
    *(v5 + 1) = 0x4024000000000000;
    v5[16] = 0;
    v12 = sub_4FF4(&qword_57108, &qword_420B8);
    sub_3A51C(a1, &v5[*(v12 + 44)]);
    sub_E1E8(v5, v8, &qword_570E8, &qword_420A8);
    swift_storeEnumTagMultiPayload();
    sub_56BC(&qword_570D0, &qword_570D8, &qword_420A0, &protocol conformance descriptor for VStack<A>);
    sub_56BC(&qword_570E0, &qword_570E8, &qword_420A8, &protocol conformance descriptor for HStack<A>);
    sub_3CDB4();
    v13 = v5;
    v14 = &qword_570E8;
    v15 = &qword_420A8;
  }

  else
  {
    *v11 = sub_3CCE4();
    *(v11 + 1) = 0x4024000000000000;
    v11[16] = 0;
    v16 = sub_4FF4(&qword_57110, &qword_420C0);
    sub_38EE4(a1, &v11[*(v16 + 44)]);
    sub_E1E8(v11, v8, &qword_570D8, &qword_420A0);
    swift_storeEnumTagMultiPayload();
    sub_56BC(&qword_570D0, &qword_570D8, &qword_420A0, &protocol conformance descriptor for VStack<A>);
    sub_56BC(&qword_570E0, &qword_570E8, &qword_420A8, &protocol conformance descriptor for HStack<A>);
    sub_3CDB4();
    v13 = v11;
    v14 = &qword_570D8;
    v15 = &qword_420A0;
  }

  return sub_11A14(v13, v14, v15);
}

uint64_t sub_38EE4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v55 = sub_4FF4(&qword_57118, &qword_420C8);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v51 = &v51 - v3;
  v52 = sub_4FF4(&qword_57120, &qword_420D0);
  v4 = __chkstk_darwin(v52);
  v59 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v53 = &v51 - v7;
  __chkstk_darwin(v6);
  v58 = &v51 - v8;
  v9 = sub_4FF4(&qword_57128, &qword_420D8);
  v10 = __chkstk_darwin(v9 - 8);
  v57 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v51 - v12;
  v14 = type metadata accessor for MultitaskingWindowManagementChoicePackage(0);
  v15 = (v14 - 8);
  v16 = __chkstk_darwin(v14);
  v56 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v51 - v18;
  v20 = *a1;
  v21 = sub_38580();
  v69 = *(a1 + 88);
  v70 = *(a1 + 13);
  v71 = *(a1 + 88);
  *&v72 = *(a1 + 13);
  sub_4FF4(&qword_57130, &qword_420E0);
  sub_3D1B4();
  v22 = v62;
  v23 = v63;
  v24 = v15[8];
  *&v19[v24] = swift_getKeyPath();
  sub_4FF4(&qword_569D0, &qword_409C8);
  swift_storeEnumTagMultiPayload();
  v25 = v15[9];
  *&v19[v25] = swift_getKeyPath();
  sub_4FF4(&qword_569D8, &qword_409D0);
  v26 = v13;
  swift_storeEnumTagMultiPayload();
  *v19 = v20;
  v19[1] = v21 & 1;
  v27 = &v19[v15[11]];
  *v27 = v22;
  *(v27 + 1) = v23;
  v28 = swift_allocObject();
  *(v28 + 16) = v20;
  v29 = &v19[v15[10]];
  *v29 = sub_3BB88;
  *(v29 + 1) = v28;
  v29[16] = 0;
  *v13 = sub_3CCA4();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v30 = sub_4FF4(&qword_57138, &qword_42158);
  sub_39680(&v13[*(v30 + 44)]);
  sub_3B538(&v62);
  v31 = v62;
  v32 = v63;
  v33 = *(&v63 + 1);
  KeyPath = swift_getKeyPath();
  v35 = sub_3CEF4();
  v36 = swift_getKeyPath();
  LOBYTE(v61) = v32;
  v62 = v31;
  LOBYTE(v63) = v32;
  *(&v63 + 1) = v33;
  v37 = v51;
  *&v64 = KeyPath;
  BYTE8(v64) = 0;
  *&v65 = v36;
  *(&v65 + 1) = v35;
  sub_3CED4();
  sub_4FF4(&qword_57140, &qword_421C0);
  sub_3BC70();
  sub_3D004();
  v71 = v62;
  v72 = v63;
  v73 = v64;
  v74 = v65;
  sub_11A14(&v71, &qword_57140, &qword_421C0);
  v62 = v69;
  *&v63 = v70;
  sub_3D194();
  sub_3D334();
  sub_3CB14();
  v38 = v53;
  (*(v54 + 32))(v53, v37, v55);
  v39 = (v38 + *(v52 + 36));
  v40 = v67;
  v39[4] = v66;
  v39[5] = v40;
  v39[6] = v68;
  v41 = v63;
  *v39 = v62;
  v39[1] = v41;
  v42 = v65;
  v39[2] = v64;
  v39[3] = v42;
  v43 = v58;
  sub_3BE5C(v38, v58);
  v44 = v56;
  sub_3BECC(v19, v56);
  v45 = v57;
  sub_E1E8(v26, v57, &qword_57128, &qword_420D8);
  v46 = v26;
  v47 = v59;
  sub_E1E8(v43, v59, &qword_57120, &qword_420D0);
  v48 = v60;
  sub_3BECC(v44, v60);
  v49 = sub_4FF4(&qword_57170, &qword_421D8);
  sub_E1E8(v45, v48 + *(v49 + 48), &qword_57128, &qword_420D8);
  sub_E1E8(v47, v48 + *(v49 + 64), &qword_57120, &qword_420D0);
  sub_11A14(v43, &qword_57120, &qword_420D0);
  sub_11A14(v46, &qword_57128, &qword_420D8);
  sub_3BF30(v19);
  sub_11A14(v47, &qword_57120, &qword_420D0);
  sub_11A14(v45, &qword_57128, &qword_420D8);
  return sub_3BF30(v44);
}

uint64_t sub_39680@<X0>(uint64_t a2@<X8>)
{
  v65 = a2;
  v63 = sub_4FF4(&qword_57180, &qword_421E0);
  v2 = __chkstk_darwin(v63);
  v66 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v64 = &v53 - v4;
  v59 = sub_3D3A4();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_3D384();
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_4FF4(&qword_57188, &qword_421E8);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = (&v53 - v11);
  v13 = sub_4FF4(&qword_57190, &qword_421F0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v54 = &v53 - v15;
  v60 = sub_4FF4(&qword_57198, &qword_421F8);
  __chkstk_darwin(v60);
  v17 = &v53 - v16;
  v58 = sub_4FF4(&qword_571A0, &qword_42200);
  v18 = __chkstk_darwin(v58);
  v62 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v53 - v21;
  __chkstk_darwin(v20);
  v61 = &v53 - v23;
  sub_38580();
  v24 = sub_3D144();
  sub_3D374();
  sub_3D394();
  v25 = (v12 + *(v10 + 44));
  sub_4FF4(&qword_571A8, &qword_42208);
  sub_3C044(&qword_571B0, &type metadata accessor for ReplaceSymbolEffect, &protocol conformance descriptor for ReplaceSymbolEffect);
  v26 = v55;
  sub_3CB24();
  (*(v57 + 8))(v6, v59);
  (*(v56 + 8))(v8, v26);
  *v25 = swift_getKeyPath();
  v27 = v54;
  *v12 = v24;
  v28 = sub_3CF04();
  KeyPath = swift_getKeyPath();
  sub_17214(v12, v27, &qword_57188, &qword_421E8);
  v30 = (v27 + *(v14 + 44));
  *v30 = KeyPath;
  v30[1] = v28;
  if (sub_38580())
  {
    v31 = sub_3D0B4();
  }

  else
  {
    v32 = [objc_opt_self() tertiaryLabelColor];
    v31 = sub_3D114();
  }

  v33 = v31;
  sub_17214(v27, v17, &qword_57190, &qword_421F0);
  *&v17[*(v60 + 36)] = v33;
  sub_17214(v17, v22, &qword_57198, &qword_421F8);
  *&v22[*(v58 + 36)] = 256;
  v34 = v61;
  sub_17214(v22, v61, &qword_571A0, &qword_42200);
  v35 = qword_55980;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = qword_572B8;
  v37 = sub_3CF84();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = swift_getKeyPath();
  v45 = sub_3CF04();
  v46 = swift_getKeyPath();
  v71 = v41 & 1;
  *&v67 = v37;
  *(&v67 + 1) = v39;
  LOBYTE(v68) = v41 & 1;
  *(&v68 + 1) = v43;
  *&v69 = v44;
  BYTE8(v69) = 0;
  *&v70 = v46;
  *(&v70 + 1) = v45;
  sub_3CED4();
  sub_4FF4(&qword_564C8, &unk_42240);
  sub_16F8C();
  v47 = v64;
  sub_3D004();
  v72[0] = v67;
  v72[1] = v68;
  v72[2] = v69;
  v72[3] = v70;
  sub_11A14(v72, &qword_564C8, &unk_42240);
  *(v47 + *(v63 + 36)) = sub_3CE04();
  v48 = v62;
  sub_E1E8(v34, v62, &qword_571A0, &qword_42200);
  v49 = v66;
  sub_E1E8(v47, v66, &qword_57180, &qword_421E0);
  v50 = v65;
  sub_E1E8(v48, v65, &qword_571A0, &qword_42200);
  v51 = sub_4FF4(&qword_571B8, &qword_42250);
  sub_E1E8(v49, v50 + *(v51 + 48), &qword_57180, &qword_421E0);
  sub_11A14(v47, &qword_57180, &qword_421E0);
  sub_11A14(v34, &qword_571A0, &qword_42200);
  sub_11A14(v49, &qword_57180, &qword_421E0);
  return sub_11A14(v48, &qword_571A0, &qword_42200);
}

uint64_t sub_39E54()
{
  v1 = sub_3C6F4();
  v46 = *(v1 - 8);
  v47 = v1;
  __chkstk_darwin(v1);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_3C704();
  v4 = *(v45 - 8);
  __chkstk_darwin(v45);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3C724();
  __chkstk_darwin(v7 - 8);
  v8 = sub_4FF4(&qword_56188, &qword_3F650);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_4FF4(&qword_56AD0, &qword_40BE8);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - v12;
  v14 = sub_3C744();
  v48 = *(v14 - 8);
  v49 = v14;
  v15 = __chkstk_darwin(v14);
  v43 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v44 = &v42 - v17;
  v18 = sub_3C7E4();
  __chkstk_darwin(v18 - 8);
  v19 = sub_3D4B4();
  __chkstk_darwin(v19 - 8);
  v20 = *v0;
  sub_3D4A4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v21 = qword_572B8;
  sub_3C7D4();
  v22._countAndFlagsBits = sub_3D504();
  if (v20 == 2)
  {
    v50 = 23328;
    v51 = 0xE200000000000000;
    sub_3D534(v22);

    v52._countAndFlagsBits = 10333;
    v52._object = 0xE200000000000000;
    sub_3D534(v52);
    v53._object = 0x8000000000043B50;
    v53._countAndFlagsBits = 0xD000000000000059;
    sub_3D534(v53);
    v54._countAndFlagsBits = 41;
    v54._object = 0xE100000000000000;
    sub_3D534(v54);
    v23 = sub_3C7C4();
    (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
    (*(v4 + 104))(v6, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v45);
    (*(v46 + 104))(v3, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v47);
    sub_3C714();
    sub_3C734();
    v25 = v48;
    v24 = v49;
    (*(v48 + 56))(v13, 0, 1, v49);
    v26 = v44;
    (*(v25 + 32))(v44, v13, v24);
    sub_3CCB4();
    v27 = sub_3CF84();
    v29 = v28;
    v31 = v30;
    (*(v25 + 16))(v43, v26, v24);
    v32 = sub_3CF94();
    v34 = v33;
    v36 = v35;
    v37 = sub_3CF44();
    v46 = v38;
    v47 = v37;
    LODWORD(v45) = v39;
    v43 = v40;
    sub_BAF8(v32, v34, v36 & 1);

    sub_BAF8(v27, v29, v31 & 1);

    (*(v25 + 8))(v44, v24);
    return v47;
  }

  else
  {

    sub_3CCB4();
    return sub_3CF84();
  }
}

uint64_t sub_3A51C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4FF4(&qword_571C0, &qword_422A0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_4FF4(&qword_571C8, &qword_422A8);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  *v15 = sub_3CCA4();
  *(v15 + 1) = 0x4024000000000000;
  v15[16] = 0;
  v16 = sub_4FF4(&qword_571D0, &qword_422B0);
  sub_3A764(a1, &v15[*(v16 + 44)]);
  *v9 = sub_3CCE4();
  *(v9 + 1) = 0x4014000000000000;
  v9[16] = 0;
  v17 = sub_4FF4(&qword_571D8, &qword_422B8);
  sub_3B030(&v9[*(v17 + 44)]);
  sub_E1E8(v15, v13, &qword_571C8, &qword_422A8);
  sub_E1E8(v9, v7, &qword_571C0, &qword_422A0);
  sub_E1E8(v13, a2, &qword_571C8, &qword_422A8);
  v18 = sub_4FF4(&qword_571E0, &qword_422C0);
  sub_E1E8(v7, a2 + *(v18 + 48), &qword_571C0, &qword_422A0);
  sub_11A14(v9, &qword_571C0, &qword_422A0);
  sub_11A14(v15, &qword_571C8, &qword_422A8);
  sub_11A14(v7, &qword_571C0, &qword_422A0);
  return sub_11A14(v13, &qword_571C8, &qword_422A8);
}

uint64_t sub_3A764@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v73 = type metadata accessor for MultitaskingWindowManagementChoicePackage(0);
  __chkstk_darwin(v73);
  v76 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_4FF4(&qword_571F0, &qword_422D0);
  v4 = __chkstk_darwin(v74);
  v78 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v75 = &v64 - v7;
  __chkstk_darwin(v6);
  v77 = &v64 - v8;
  v69 = sub_3D3A4();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_3D384();
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_4FF4(&qword_57188, &qword_421E8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = (&v64 - v15);
  v17 = sub_4FF4(&qword_57190, &qword_421F0);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v64 - v19;
  v70 = sub_4FF4(&qword_57198, &qword_421F8);
  __chkstk_darwin(v70);
  v66 = &v64 - v21;
  v67 = sub_4FF4(&qword_571A0, &qword_42200);
  v22 = __chkstk_darwin(v67);
  v72 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v64 - v25;
  __chkstk_darwin(v24);
  v71 = &v64 - v27;
  sub_38580();
  v28 = sub_3D144();
  sub_3D374();
  sub_3D394();
  v29 = (v16 + *(v14 + 44));
  sub_4FF4(&qword_571A8, &qword_42208);
  sub_3C044(&qword_571B0, &type metadata accessor for ReplaceSymbolEffect, &protocol conformance descriptor for ReplaceSymbolEffect);
  v30 = v20;
  v31 = v64;
  sub_3CB24();
  (*(v68 + 8))(v10, v69);
  (*(v65 + 8))(v12, v31);
  *v29 = swift_getKeyPath();
  *v16 = v28;
  v32 = sub_3CF04();
  KeyPath = swift_getKeyPath();
  sub_17214(v16, v30, &qword_57188, &qword_421E8);
  v34 = (v30 + *(v18 + 44));
  *v34 = KeyPath;
  v34[1] = v32;
  if (sub_38580())
  {
    v35 = sub_3D0B4();
  }

  else
  {
    v36 = [objc_opt_self() tertiaryLabelColor];
    v35 = sub_3D114();
  }

  v37 = v35;
  v38 = v30;
  v39 = v66;
  sub_17214(v38, v66, &qword_57190, &qword_421F0);
  *(v39 + *(v70 + 36)) = v37;
  sub_17214(v39, v26, &qword_57198, &qword_421F8);
  *&v26[*(v67 + 36)] = 256;
  v40 = v26;
  v41 = v71;
  sub_17214(v40, v71, &qword_571A0, &qword_42200);
  v42 = *a1;
  LOBYTE(v37) = sub_38580();
  v80 = *(a1 + 88);
  v81 = *(a1 + 13);
  sub_4FF4(&qword_57130, &qword_420E0);
  sub_3D1B4();
  v43 = v82;
  v44 = v83;
  v45 = v73;
  v46 = *(v73 + 24);
  v47 = swift_getKeyPath();
  v48 = v76;
  *&v76[v46] = v47;
  sub_4FF4(&qword_569D0, &qword_409C8);
  swift_storeEnumTagMultiPayload();
  v49 = v45[7];
  *&v48[v49] = swift_getKeyPath();
  sub_4FF4(&qword_569D8, &qword_409D0);
  swift_storeEnumTagMultiPayload();
  *v48 = v42;
  v48[1] = v37 & 1;
  v50 = &v48[v45[9]];
  *v50 = v43;
  v50[1] = v44;
  v51 = swift_allocObject();
  *(v51 + 16) = v42;
  v52 = &v48[v45[8]];
  *v52 = sub_3C15C;
  *(v52 + 1) = v51;
  v52[16] = 0;
  sub_3D324();
  sub_3CB14();
  v53 = v75;
  sub_22FC4(v48, v75);
  v54 = (v53 + *(v74 + 36));
  v55 = v87;
  v54[4] = v86;
  v54[5] = v55;
  v54[6] = v88;
  v56 = v83;
  *v54 = v82;
  v54[1] = v56;
  v57 = v85;
  v54[2] = v84;
  v54[3] = v57;
  v58 = v77;
  sub_17214(v53, v77, &qword_571F0, &qword_422D0);
  v59 = v72;
  sub_E1E8(v41, v72, &qword_571A0, &qword_42200);
  v60 = v78;
  sub_E1E8(v58, v78, &qword_571F0, &qword_422D0);
  v61 = v79;
  sub_E1E8(v59, v79, &qword_571A0, &qword_42200);
  v62 = sub_4FF4(&qword_571F8, &qword_422D8);
  sub_E1E8(v60, v61 + *(v62 + 48), &qword_571F0, &qword_422D0);
  sub_11A14(v58, &qword_571F0, &qword_422D0);
  sub_11A14(v41, &qword_571A0, &qword_42200);
  sub_11A14(v60, &qword_571F0, &qword_422D0);
  return sub_11A14(v59, &qword_571A0, &qword_42200);
}

uint64_t sub_3B030@<X0>(uint64_t a2@<X8>)
{
  v44 = a2;
  v42 = sub_4FF4(&qword_57118, &qword_420C8);
  v41 = *(v42 - 8);
  v2 = __chkstk_darwin(v42);
  v43 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v39 = &v38 - v4;
  v5 = sub_4FF4(&qword_57180, &qword_421E0);
  v6 = __chkstk_darwin(v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v38 - v8;
  v10 = qword_55980;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_572B8;
  v12 = sub_3CF84();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  KeyPath = swift_getKeyPath();
  v20 = sub_3CF04();
  v21 = swift_getKeyPath();
  LOBYTE(v45) = v16 & 1;
  *&v51 = v12;
  *(&v51 + 1) = v14;
  LOBYTE(v52) = v16 & 1;
  *(&v52 + 1) = v18;
  *&v53 = KeyPath;
  BYTE8(v53) = 0;
  *&v54 = v21;
  *(&v54 + 1) = v20;
  sub_3CED4();
  sub_4FF4(&qword_564C8, &unk_42240);
  sub_16F8C();
  sub_3D004();
  v50[0] = v51;
  v50[1] = v52;
  v50[2] = v53;
  v50[3] = v54;
  sub_11A14(v50, &qword_564C8, &unk_42240);
  *&v9[*(v5 + 36)] = sub_3CE04();
  v38 = v9;
  sub_3B538(&v51);
  v22 = v51;
  LOBYTE(v20) = v52;
  v23 = *(&v52 + 1);
  v24 = swift_getKeyPath();
  v25 = sub_3CEF4();
  v26 = swift_getKeyPath();
  v49 = v20;
  v45 = v22;
  LOBYTE(v46) = v20;
  *(&v46 + 1) = v23;
  *&v47 = v24;
  BYTE8(v47) = 0;
  *&v48 = v26;
  *(&v48 + 1) = v25;
  sub_3CED4();
  sub_4FF4(&qword_57140, &qword_421C0);
  sub_3BC70();
  v27 = v39;
  sub_3D004();
  v51 = v45;
  v52 = v46;
  v53 = v47;
  v54 = v48;
  sub_11A14(&v51, &qword_57140, &qword_421C0);
  v28 = v40;
  sub_E1E8(v9, v40, &qword_57180, &qword_421E0);
  v29 = v41;
  v30 = *(v41 + 16);
  v31 = v43;
  v32 = v42;
  v30(v43, v27, v42);
  v33 = v44;
  sub_E1E8(v28, v44, &qword_57180, &qword_421E0);
  v34 = sub_4FF4(&qword_571E8, &qword_422C8);
  v30((v33 + *(v34 + 48)), v31, v32);
  v35 = v33 + *(v34 + 64);
  *v35 = 0;
  *(v35 + 8) = 1;
  v36 = *(v29 + 8);
  v36(v27, v32);
  sub_11A14(v38, &qword_57180, &qword_421E0);
  v36(v31, v32);
  return sub_11A14(v28, &qword_57180, &qword_421E0);
}

uint64_t sub_3B538@<X0>(uint64_t a2@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  v3 = sub_3CF84();
  v5 = v4;
  v7 = v6;
  sub_3CE14();
  v8 = sub_3CF34();
  v28 = v9;
  v27 = v10;
  sub_BAF8(v3, v5, v7 & 1);

  v11 = sub_39E54();
  v13 = v12;
  LOBYTE(v5) = v14;
  sub_3CA64();
  sub_3BF8C();
  v15 = sub_3CF34();
  v17 = v16;
  v19 = v18;
  sub_BAF8(v11, v13, v5 & 1);

  v20 = sub_3CF44();
  v22 = v21;
  LOBYTE(v5) = v23;
  v26 = v24;
  sub_BAF8(v15, v17, v19 & 1);

  sub_BAF8(v8, v28, v27 & 1);

  *a2 = v20;
  *(a2 + 8) = v22;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v26;
  return result;
}

uint64_t sub_3B7F0()
{

  sub_3B854(*(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 128, 7);
}

double sub_3B854(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_3B870()
{
  result = qword_570B8;
  if (!qword_570B8)
  {
    sub_5674(&qword_570B0, &qword_42090);
    sub_3B8F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_570B8);
  }

  return result;
}

unint64_t sub_3B8F4()
{
  result = qword_570C0;
  if (!qword_570C0)
  {
    sub_5674(&qword_570C8, &qword_42098);
    sub_56BC(&qword_570D0, &qword_570D8, &qword_420A0, &protocol conformance descriptor for VStack<A>);
    sub_56BC(&qword_570E0, &qword_570E8, &qword_420A8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_570C0);
  }

  return result;
}

unint64_t sub_3B9D8()
{
  result = qword_570F8;
  if (!qword_570F8)
  {
    sub_5674(&qword_570A8, &qword_42088);
    sub_56BC(&qword_570F0, &qword_570A0, &qword_42080, &protocol conformance descriptor for Button<A>);
    sub_3C044(&qword_55DE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_570F8);
  }

  return result;
}

uint64_t sub_3BB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_3BC70()
{
  result = qword_57148;
  if (!qword_57148)
  {
    sub_5674(&qword_57140, &qword_421C0);
    sub_3BD28();
    sub_56BC(&qword_564F8, &qword_56500, &qword_3FE60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_57148);
  }

  return result;
}

unint64_t sub_3BD28()
{
  result = qword_57150;
  if (!qword_57150)
  {
    sub_5674(&qword_57158, &qword_421C8);
    sub_3BDE0();
    sub_56BC(&qword_564E8, &qword_564F0, &qword_3FE58, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_57150);
  }

  return result;
}

unint64_t sub_3BDE0()
{
  result = qword_57160;
  if (!qword_57160)
  {
    sub_5674(&qword_57168, &qword_421D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_57160);
  }

  return result;
}

uint64_t sub_3BE5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4FF4(&qword_57120, &qword_420D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3BECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultitaskingWindowManagementChoicePackage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3BF30(uint64_t a1)
{
  v2 = type metadata accessor for MultitaskingWindowManagementChoicePackage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_3BF8C()
{
  result = qword_57178;
  if (!qword_57178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_57178);
  }

  return result;
}

uint64_t sub_3C044(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3C0A4()
{
  sub_5674(&qword_570A8, &qword_42088);
  sub_3CAE4();
  sub_3B9D8();
  sub_3C044(&qword_56440, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_3C18C(int a1, int a2, int a3, int a4)
{
  if (qword_59D60 == -1)
  {
    if (qword_59D68)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_3C654();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_59D68)
    {
      return _availability_version_check();
    }
  }

  if (qword_59D58 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_3C66C();
    a3 = v10;
    a4 = v9;
    v8 = dword_59D48 < v11;
    if (dword_59D48 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_59D4C > a3)
      {
        return 1;
      }

      if (dword_59D4C >= a3)
      {
        return dword_59D50 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_59D48 < a2;
  if (dword_59D48 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_3C320(uint64_t result)
{
  v1 = qword_59D68;
  if (qword_59D68)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_59D68 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_59D48, &dword_59D4C, &dword_59D50);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}
uint64_t type metadata accessor for HealthFeaturesViewController(uint64_t a1)
{
  result = qword_149B8;
  if (!qword_149B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1930(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

char *sub_1978(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + qword_149B0) = 0;
  *(v1 + qword_149A8) = a1;
  sub_24E8(0);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_AB48();

  type metadata accessor for HealthFeaturesSetupFlowController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();

  v5 = [v4 bundleForClass:ObjCClassFromMetadata];
  v18._countAndFlagsBits = 0xE000000000000000;
  v20._object = 0x800000000000C070;
  v20._countAndFlagsBits = 0xD000000000000022;
  v22.value._countAndFlagsBits = 0;
  v22.value._object = 0;
  v6.super.isa = v5;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  sub_AB38(v20, v22, v6, v24, 0, v18);

  v7 = [v4 bundleForClass:ObjCClassFromMetadata];
  v19._countAndFlagsBits = 0xE000000000000000;
  v21._countAndFlagsBits = 0xD000000000000023;
  v21._object = 0x800000000000C0A0;
  v23.value._countAndFlagsBits = 0;
  v23.value._object = 0;
  v8.super.isa = v7;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_AB38(v21, v23, v8, v25, 0, v19);

  v9 = sub_ACB8();
  v10 = [v9 hxui_addContinueButtonWithAccessibilityIdentifier:{0, 0, 0}];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {

    v11 = 0;
  }

  v12 = qword_149B0;
  v13 = *&v9[qword_149B0];
  *&v9[qword_149B0] = v11;

  v14 = *&v9[v12];
  v15 = v9;
  if (v14)
  {
    v16 = v14;
    v15 = BPSPillSelectedColor();
    [v16 setTintColor:v15];
  }

  return v9;
}

void sub_1C34()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  sub_AF58();
  __break(1u);
}

void sub_1CAC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for HealthFeaturesViewController(0);
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "viewDidLoad");
  sub_38C0();
}

uint64_t sub_1D10()
{
  v1 = *(v0 + qword_149B0);
  if (v1)
  {
    [v1 showsBusyIndicator];
  }

  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_40C0(sub_2734, v2);
}

void sub_1DB4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + qword_149B0);
    if (v5)
    {
      [v5 hidesBusyIndicator];
    }

    v6 = *(a1 + 8);
    if (v6)
    {
      sub_1EC0(*a1, v6, *(a1 + 16), *(a1 + 24), *(a1 + 32) & 1);
    }

    else
    {
      v7 = swift_unknownObjectWeakLoadStrong();
      if (!v7)
      {
        __break(1u);
        return;
      }

      [v7 miniFlowStepComplete:v4];
      swift_unknownObjectRelease();
    }
  }
}

void sub_1E78(void *a1)
{
  v1 = a1;
  sub_1D10();
}

void sub_1EC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v37[1] = swift_getObjectType();
  v10 = sub_AD28();
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin(v10);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_ADA8();
  v38 = a3;
  v14 = sub_ADA8();
  v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

  type metadata accessor for HealthFeaturesSetupFlowController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v36._countAndFlagsBits = 0xE000000000000000;
  v43._object = 0x800000000000C180;
  v43._countAndFlagsBits = 0xD000000000000029;
  v44.value._countAndFlagsBits = 0;
  v44.value._object = 0;
  v18.super.isa = v17;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  sub_AB38(v43, v44, v18, v45, 0, v36);

  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = v6;
  v20 = v6;
  v21 = sub_ADA8();

  aBlock[4] = sub_279C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2394;
  aBlock[3] = &unk_10810;
  v22 = _Block_copy(aBlock);

  v23 = [objc_opt_self() actionWithTitle:v21 style:1 handler:v22];
  _Block_release(v22);

  [v15 addAction:v23];
  sub_AD08();

  v39 = v12;
  v24 = sub_AD18();
  v25 = sub_AE38();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v26 = 136315651;
    v27 = sub_AFA8();
    v29 = a4;
    v30 = v15;
    v31 = v20;
    v32 = sub_9AA8(v27, v28, aBlock);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2080;
    if (a5)
    {
      v33 = 1702195828;
    }

    else
    {
      v33 = 0x65736C6166;
    }

    if (a5)
    {
      v34 = 0xE400000000000000;
    }

    else
    {
      v34 = 0xE500000000000000;
    }

    v35 = sub_9AA8(v33, v34, aBlock);
    v20 = v31;
    v15 = v30;

    *(v26 + 14) = v35;
    *(v26 + 22) = 2081;
    *(v26 + 24) = sub_9AA8(v38, v29, aBlock);
    _os_log_impl(&dword_0, v24, v25, "%s Showing alert (progress after: %s) with message: %{private}s", v26, 0x20u);
    swift_arrayDestroy();
  }

  (*(v40 + 8))(v39, v41);
  [v20 presentViewController:v15 animated:1 completion:0];
}

void sub_2324(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong miniFlowStepComplete:a3];

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2394(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_23FC()
{
  sub_273C(v0 + qword_149A0);

  v1 = *(v0 + qword_149B0);
}

id sub_244C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthFeaturesViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_2484(uint64_t a1)
{
  sub_273C(a1 + qword_149A0);

  v2 = *(a1 + qword_149B0);
}

void sub_24E8(uint64_t a1)
{
  if (!qword_14AC8)
  {
    type metadata accessor for HealthFeaturesViewModel();
    sub_2550();
    v1 = sub_AB68();
    if (!v2)
    {
      atomic_store(v1, &qword_14AC8);
    }
  }
}

unint64_t sub_2550()
{
  result = qword_14AD0;
  if (!qword_14AD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_14AD0);
  }

  return result;
}

double sub_25B0@<D0>(_OWORD *a2@<X8>)
{
  sub_24E8(0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB48();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_2658(__int128 *a1, uint64_t *a2)
{
  sub_24E8(0);
  swift_getKeyPath();
  swift_getKeyPath();

  swift_unknownObjectRetain();
  return sub_AB58();
}

uint64_t sub_26FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2764()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_27A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27C0()
{
  sub_24E8(0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB48();

  return v1;
}

uint64_t sub_2858(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_24E8(0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB48();

  swift_getObjectType();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v5;

  sub_AC38();
  swift_unknownObjectRelease();
}

uint64_t sub_2998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v23 = a2;
  v5 = sub_AD38();
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AD68();
  v26 = *(v8 - 8);
  v27 = v8;
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7D94(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7310();
  v15 = sub_AE48();
  sub_7E80(a1, v14, sub_7D94);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_8018(v14, v18 + v16, sub_7D94);
  v19 = (v18 + v17);
  v20 = v24;
  *v19 = v23;
  v19[1] = v20;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = v25;
  aBlock[4] = sub_8080;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_387C;
  aBlock[3] = &unk_10A18;
  v21 = _Block_copy(aBlock);

  sub_AD58();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_8280(&qword_14CC8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_73B8(0, &unk_14DC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_740C();
  sub_AE98();
  sub_AE58();
  _Block_release(v21);

  (*(v28 + 8))(v7, v5);
  return (*(v26 + 8))(v10, v27);
}

uint64_t sub_2D40(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v63 = a3;
  v64 = a2;
  v5 = sub_AD28();
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v58 - v10;
  __chkstk_darwin(v9);
  v13 = &v58 - v12;
  v14 = sub_ABC8();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v58 - v19;
  sub_7D94(0);
  __chkstk_darwin(v21);
  v23 = (&v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_7E80(a1, v23, sub_7D94);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v37 = *v23;
    if ((*v23 & 0xC000000000000001) != 0)
    {
      if (sub_AEF8())
      {
LABEL_6:
        sub_ACF8();

        v38 = sub_AD18();
        v39 = sub_AE38();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          *v40 = 136315395;
          v41 = sub_AFA8();
          v43 = sub_9AA8(v41, v42, &v66);

          *(v40 + 4) = v43;
          *(v40 + 12) = 2081;
          v44 = sub_346C(v37);

          v65 = v44;
          sub_82C8(0, &qword_14D10, &type metadata accessor for Array);
          sub_8164();
          v45 = sub_AD88();
          v47 = v46;

          v48 = sub_9AA8(v45, v47, &v66);

          *(v40 + 14) = v48;
          _os_log_impl(&dword_0, v38, v39, "[%s] Should display with advertisable features: %{private}s", v40, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        (*(v61 + 8))(v11, v62);
        v57 = 1;
        return v64(v57);
      }
    }

    else if (*(v37 + 16))
    {
      goto LABEL_6;
    }

    sub_ACF8();
    v50 = sub_AD18();
    v51 = sub_AE38();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v66 = v53;
      *v52 = 136315138;
      v54 = sub_AFA8();
      v56 = sub_9AA8(v54, v55, &v66);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_0, v50, v51, "[%s] No advertisable features to display", v52, 0xCu);
      sub_8320(v53);
    }

    (*(v61 + 8))(v8, v62);
    v57 = 0;
    return v64(v57);
  }

  (*(v15 + 32))(v20, v23, v14);
  sub_ACF8();
  (*(v15 + 16))(v18, v20, v14);
  v24 = sub_AD18();
  v25 = sub_AE18();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v58 = v24;
    v27 = v26;
    v59 = swift_slowAlloc();
    v66 = v59;
    *v27 = 136315394;
    v28 = sub_AFA8();
    LODWORD(v60) = v25;
    v30 = sub_9AA8(v28, v29, &v66);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_8280(&qword_14CC0, &type metadata accessor for AdvertisableFeatureError, &protocol conformance descriptor for AdvertisableFeatureError);
    v31 = sub_AF88();
    v33 = v32;
    v34 = *(v15 + 8);
    v34(v18, v14);
    v35 = sub_9AA8(v31, v33, &v66);

    *(v27 + 14) = v35;
    v36 = v58;
    _os_log_impl(&dword_0, v58, v60, "[%s] Error when determining advertisable features, should not display: %{public}s", v27, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v34 = *(v15 + 8);
    v34(v18, v14);
  }

  (*(v61 + 8))(v13, v62);
  v64(0);
  return (v34)(v20, v14);
}

void *sub_346C(uint64_t a1)
{
  v40 = sub_ABA8();
  v3 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_AEF8();
  }

  else
  {
    v5 = *(a1 + 16);
  }

  result = &_swiftEmptyArrayStorage;
  if (v5)
  {
    v48 = &_swiftEmptyArrayStorage;
    sub_7864(0, v5 & ~(v5 >> 63), 0);
    v43 = v48;
    if (v41)
    {
      result = sub_AEB8();
    }

    else
    {
      result = sub_AEA8();
      v7 = *(a1 + 36);
    }

    v45 = result;
    v46 = v7;
    v47 = v41 != 0;
    if ((v5 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      v37 = v5;
      v38 = (v3 + 8);
      v9 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v9 = a1;
      }

      v35 = a1 + 56;
      v36 = v9;
      v33 = v1;
      v34 = a1 + 64;
      while (v8 < v5)
      {
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_37;
        }

        v12 = v45;
        v13 = v47;
        v42 = v46;
        v14 = a1;
        sub_79A0(v45, v46, v47, a1);
        v15 = v39;
        sub_ABD8();
        v16 = sub_AB98();
        v18 = v17;
        (*v38)(v15, v40);

        v19 = v43;
        v48 = v43;
        v21 = v43[2];
        v20 = v43[3];
        if (v21 >= v20 >> 1)
        {
          result = sub_7864((v20 > 1), v21 + 1, 1);
          v19 = v48;
        }

        v19[2] = v21 + 1;
        v22 = &v19[2 * v21];
        *(v22 + 4) = v16;
        *(v22 + 5) = v18;
        v43 = v19;
        if (v41)
        {
          if (!v13)
          {
            goto LABEL_42;
          }

          a1 = v14;
          if (sub_AEC8())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v5 = v37;
          sub_81D8(0, &qword_14D20, &type metadata accessor for Set.Index);
          v10 = sub_AE08();
          sub_AF18();
          result = v10(v44, 0);
          if (v8 == v5)
          {
LABEL_34:
            sub_8274(v45, v46, v47);
            return v43;
          }
        }

        else
        {
          if (v13)
          {
            goto LABEL_43;
          }

          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v14;
          v23 = (1 << *(v14 + 32));
          if (v12 >= v23)
          {
            goto LABEL_38;
          }

          v24 = v12 >> 6;
          v25 = *(v35 + 8 * (v12 >> 6));
          if (((v25 >> v12) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v14 + 36) != v42)
          {
            goto LABEL_40;
          }

          v26 = v25 & (-2 << (v12 & 0x3F));
          if (v26)
          {
            v23 = (__clz(__rbit64(v26)) | v12 & 0x7FFFFFFFFFFFFFC0);
            v5 = v37;
          }

          else
          {
            v27 = v24 << 6;
            v28 = v24 + 1;
            v29 = (v34 + 8 * v24);
            v5 = v37;
            while (v28 < (v23 + 63) >> 6)
            {
              v31 = *v29++;
              v30 = v31;
              v27 += 64;
              ++v28;
              if (v31)
              {
                result = sub_8274(v12, v42, 0);
                v23 = (__clz(__rbit64(v30)) + v27);
                goto LABEL_33;
              }
            }

            result = sub_8274(v12, v42, 0);
          }

LABEL_33:
          v32 = *(v14 + 36);
          v45 = v23;
          v46 = v32;
          v47 = 0;
          if (v8 == v5)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_387C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_38C0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_AD28();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1[8] & 1) == 0)
  {
    *(v1 + 64) = 1;
    sub_ACF8();
    v8 = sub_AD18();
    v9 = sub_AE38();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      v12 = sub_AFA8();
      v15[0] = v2;
      v14 = sub_9AA8(v12, v13, &v16);
      v2 = v15[0];

      *(v10 + 4) = v14;
      _os_log_impl(&dword_0, v8, v9, "[%s] Performing prerequisite work", v10, 0xCu);
      sub_8320(v11);
    }

    (*(v4 + 8))(v7, v3);
    sub_24E8(0);
    swift_getKeyPath();
    swift_getKeyPath();
    v15[1] = v1;

    sub_AB48();

    swift_getObjectType();
    *(swift_allocObject() + 16) = v2;
    sub_AC08();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_3B6C(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = sub_ABC8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v44 - v8;
  __chkstk_darwin(v7);
  v50 = &v44 - v10;
  v11 = sub_AD28();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v44 - v16;
  sub_74CC(0);
  __chkstk_darwin(v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7E80(a1, v20, sub_74CC);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = v12;
    v47 = v11;
    v21 = v50;
    (*(v4 + 32))(v50, v20, v3);
    sub_ACF8();
    v22 = *(v4 + 16);
    v22(v9, v21, v3);
    v23 = sub_AD18();
    v24 = sub_AE18();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v51 = v45;
      *v25 = 136315394;
      v26 = sub_AFA8();
      LODWORD(v49) = v24;
      v28 = sub_9AA8(v26, v27, &v51);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2082;
      v22(v48, v9, v3);
      v29 = sub_ADB8();
      v31 = v30;
      v32 = *(v4 + 8);
      v32(v9, v3);
      v33 = sub_9AA8(v29, v31, &v51);

      *(v25 + 14) = v33;
      _os_log_impl(&dword_0, v23, v49, "[%s] Prerequisite work failed to complete with error: %{public}s", v25, 0x16u);
      swift_arrayDestroy();

      (*(v46 + 8))(v15, v47);
      return (v32)(v50, v3);
    }

    else
    {

      v43 = *(v4 + 8);
      v43(v9, v3);
      (*(v46 + 8))(v15, v47);
      return (v43)(v50, v3);
    }
  }

  else
  {
    sub_ACF8();
    v35 = sub_AD18();
    v36 = sub_AE38();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v51 = v38;
      *v37 = 136315138;
      v39 = sub_AFA8();
      v41 = v12;
      v42 = sub_9AA8(v39, v40, &v51);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_0, v35, v36, "[%s] Prerequisite work completed", v37, 0xCu);
      sub_8320(v38);

      return (*(v41 + 8))(v17, v11);
    }

    else
    {

      return (*(v12 + 8))(v17, v11);
    }
  }
}

uint64_t sub_40C0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v5;

  sub_577C(sub_7858, v6);
}

uint64_t sub_4174(uint64_t a1, void (*a2)(_OWORD *), uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v53 = a3;
  v54 = a2;
  v5 = sub_ABC8();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v47 - v11;
  __chkstk_darwin(v10);
  v14 = &v47 - v13;
  v15 = sub_AD28();
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = __chkstk_darwin(v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v47 - v19;
  sub_74CC(0);
  __chkstk_darwin(v21);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7E80(a1, v23, sub_74CC);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v14, v23, v5);
    sub_ACF8();
    v24 = *(v6 + 16);
    v24(v12, v14, v5);
    v25 = sub_AD18();
    v26 = sub_AE18();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v49 = v14;
      v47 = v25;
      v28 = v27;
      v48 = swift_slowAlloc();
      *&v55[0] = v48;
      *v28 = 136315394;
      v29 = sub_AFA8();
      v31 = sub_9AA8(v29, v30, v55);
      LODWORD(v50) = v26;
      v32 = v31;

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      v24(v9, v12, v5);
      v33 = sub_ADB8();
      v35 = v34;
      v36 = *(v6 + 8);
      v36(v12, v5);
      v37 = sub_9AA8(v33, v35, v55);

      *(v28 + 14) = v37;
      v38 = v47;
      _os_log_impl(&dword_0, v47, v50, "[%s] Commit enablement failed with error: %{public}s", v28, 0x16u);
      swift_arrayDestroy();

      v14 = v49;
    }

    else
    {

      v36 = *(v6 + 8);
      v36(v12, v5);
    }

    (*(v51 + 8))(v18, v52);
    sub_7C00(v55);
    v54(v55);
    sub_7D40(v55);
    return (v36)(v14, v5);
  }

  else
  {
    sub_ACF8();
    v39 = sub_AD18();
    v40 = sub_AE38();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v55[0] = v42;
      *v41 = 136315138;
      v43 = sub_AFA8();
      v45 = sub_9AA8(v43, v44, v55);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_0, v39, v40, "[%s] Commit enablement completed", v41, 0xCu);
      sub_8320(v42);
    }

    (*(v51 + 8))(v20, v52);
    v56 = 0;
    memset(v55, 0, sizeof(v55));
    return (v54)(v55);
  }
}

uint64_t sub_46B8(char *a1, void (*a2)(void), uint64_t a3)
{
  v119 = a2;
  v120 = a3;
  v118 = *v3;
  v5 = sub_AD28();
  v6 = *(v5 - 8);
  v114 = v5;
  v115 = v6;
  v7 = __chkstk_darwin(v5);
  v117 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v108 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v108 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v108 - v16;
  __chkstk_darwin(v15);
  v19 = &v108 - v18;
  v20 = sub_AC48();
  v116 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v23 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v108 - v25;
  __chkstk_darwin(v24);
  v28 = &v108 - v27;
  type metadata accessor for HealthFeaturesViewController(0);
  if (swift_dynamicCastClass())
  {
    v29 = swift_allocObject();
    v30 = v119;
    v31 = v120;
    v29[2] = v3;
    v29[3] = v30;
    v32 = v118;
    v29[4] = v31;
    v29[5] = v32;

    sub_5EF0(sub_784C, v29);
  }

  v110 = v26;
  v111 = v23;
  v108 = v19;
  v109 = v17;
  v34 = v116;
  v35 = v117;
  v112 = v28;
  v113 = v20;
  swift_getObjectType();
  v36 = a1;
  if (swift_conformsToProtocol2() && a1)
  {
    v37 = v3[9];
    if (v37)
    {
      v38 = v112;
      v39 = v113;
      (*(v34 + 13))(v112, enum case for AdvertisableFeaturePostCommitWorkItem.showMedicationsThatAffectHeartRate(_:), v113);
      swift_unknownObjectRetain();

      result = sub_565C(v38, v37);
      if (v40)
      {
        v41 = v14;
        sub_ACF8();
        v117 = *(v34 + 2);
        (v117)(v111, v38, v39);

        v42 = sub_AD18();
        v43 = sub_AE18();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v121[0] = v109;
          *v44 = 136315651;
          v45 = sub_AFA8();
          v47 = sub_9AA8(v45, v46, v121);
          v118 = v41;
          v48 = v34;
          LODWORD(v108) = v43;
          v49 = v47;

          *(v44 + 4) = v49;
          *(v44 + 12) = 2081;
          v50 = v111;
          (v117)(v110, v111, v113);
          v51 = sub_ADB8();
          v53 = v52;
          v54 = *(v48 + 1);
          v54(v50, v113);
          v55 = sub_9AA8(v51, v53, v121);
          v39 = v113;

          *(v44 + 14) = v55;
          *(v44 + 22) = 2081;
          v56 = sub_ADE8();
          v58 = v57;

          v59 = sub_9AA8(v56, v58, v121);

          *(v44 + 24) = v59;
          _os_log_impl(&dword_0, v42, v108, "[%s] completed post-commit work item not found: %{private}s, in list %{private}s", v44, 0x20u);
          swift_arrayDestroy();

          v38 = v112;

          (*(v115 + 8))(v118, v114);
        }

        else
        {

          v54 = *(v34 + 1);
          v54(v111, v39);
          (*(v115 + 8))(v41, v114);
        }

        v119(0);
        swift_unknownObjectRelease();
        return (v54)(v38, v39);
      }

      v80 = result + 1;
      if (__OFADD__(result, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      v81 = v110;
      if (v80 < *(v37 + 16))
      {
        if ((v80 & 0x8000000000000000) == 0)
        {
          v117 = v36;
          (*(v34 + 2))(v110, v37 + ((v34[80] + 32) & ~v34[80]) + *(v34 + 9) * v80, v39);

          v82 = sub_6C08(v81);
          v111 = v83;
          v84 = *(v34 + 1);
          (v84)(v81, v39);
          v85 = v108;
          sub_ACF8();
          v86 = v82;
          v87 = sub_AD18();
          v88 = sub_AE38();

          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v116 = v84;
            v122 = v90;
            *v89 = 136315395;
            v91 = sub_AFA8();
            v93 = sub_9AA8(v91, v92, &v122);

            *(v89 + 4) = v93;
            *(v89 + 12) = 2081;
            v121[0] = v82;
            v121[1] = v111;
            sub_7738(0);
            v94 = v86;
            v95 = sub_ADB8();
            v97 = sub_9AA8(v95, v96, &v122);

            *(v89 + 14) = v97;
            v39 = v113;
            _os_log_impl(&dword_0, v87, v88, "[%s] next post-commit work item view controller: %{private}s", v89, 0x16u);
            swift_arrayDestroy();
            v84 = v116;

            v38 = v112;
          }

          (*(v115 + 8))(v85, v114);
          v98 = v119;
          v99 = v86;
          v98(v82);
          swift_unknownObjectRelease();

          return (v84)(v38, v39);
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v100 = v109;
      sub_ACF8();
      v101 = sub_AD18();
      v102 = sub_AE38();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v121[0] = v104;
        *v103 = 136315138;
        v105 = sub_AFA8();
        v107 = sub_9AA8(v105, v106, v121);

        *(v103 + 4) = v107;
        v39 = v113;
        _os_log_impl(&dword_0, v101, v102, "[%s] completed post-commit work item is the last item.", v103, 0xCu);
        sub_8320(v104);
      }

      (*(v115 + 8))(v100, v114);
      v119(0);
      swift_unknownObjectRelease();
      return (*(v34 + 1))(v38, v39);
    }

    else
    {
      swift_unknownObjectRetain();
      v72 = v11;
      sub_ACF8();
      v73 = sub_AD18();
      v74 = sub_AE18();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v121[0] = v76;
        *v75 = 136315138;
        v77 = sub_AFA8();
        v79 = sub_9AA8(v77, v78, v121);

        *(v75 + 4) = v79;
        _os_log_impl(&dword_0, v73, v74, "[%s] post-commit work items list not found. Must determinePostCommitWork() first", v75, 0xCu);
        sub_8320(v76);
      }

      (*(v115 + 8))(v72, v114);
      v119(0);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v60 = v35;
    sub_ACF8();
    swift_unknownObjectRetain();
    v61 = sub_AD18();
    v62 = sub_AE18();
    swift_unknownObjectRelease();
    v63 = os_log_type_enabled(v61, v62);
    v64 = v115;
    if (v63)
    {
      v65 = swift_slowAlloc();
      v121[0] = swift_slowAlloc();
      *v65 = 136315395;
      v66 = sub_AFA8();
      v68 = sub_9AA8(v66, v67, v121);

      *(v65 + 4) = v68;
      *(v65 + 12) = 2081;
      v122 = a1;
      sub_76D4();
      swift_unknownObjectRetain();
      v69 = sub_ADB8();
      v71 = sub_9AA8(v69, v70, v121);

      *(v65 + 14) = v71;
      _os_log_impl(&dword_0, v61, v62, "[%s] unable to determine next step view controller for: %{private}s", v65, 0x16u);
      swift_arrayDestroy();
    }

    (*(v64 + 8))(v60, v114);
    return (v119)(0);
  }
}

void sub_527C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = sub_AD28();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  *(a2 + 72) = a1;

  if (*(a1 + 16))
  {
    v45 = v10;
    v46 = v9;
    v16 = *(sub_AC48() - 8);
    v17 = sub_6C08(a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80)));
    v19 = v18;
    sub_ACF8();
    v20 = v17;
    v21 = sub_AD18();
    v22 = sub_AE38();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v43 = a3;
      v24 = v23;
      v48 = swift_slowAlloc();
      *v24 = 136315395;
      v25 = sub_AFA8();
      v27 = sub_9AA8(v25, v26, &v48);
      v44 = a4;
      v28 = v27;

      *(v24 + 4) = v28;
      *(v24 + 12) = 2081;
      v47[0] = v17;
      v47[1] = v19;
      sub_7738(0);
      v29 = v20;
      v30 = sub_ADB8();
      v32 = sub_9AA8(v30, v31, &v48);

      *(v24 + 14) = v32;
      _os_log_impl(&dword_0, v21, v22, "[%s] first post-commit work item view controller: %{private}s", v24, 0x16u);
      swift_arrayDestroy();

      a3 = v43;
    }

    (*(v45 + 8))(v15, v46);
    v33 = v20;
    a3(v17);
  }

  else
  {
    sub_ACF8();
    v34 = sub_AD18();
    v35 = sub_AE38();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v44 = a4;
      v38 = v37;
      v47[0] = v37;
      *v36 = 136315138;
      v39 = sub_AFA8();
      v41 = sub_9AA8(v39, v40, v47);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_0, v34, v35, "[%s] determined post-commit work is not necessary", v36, 0xCu);
      sub_8320(v38);
    }

    (*(v10 + 8))(v13, v9);
    a3(0);
  }
}

uint64_t sub_565C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_AC48() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_8280(&qword_14CF0, &type metadata accessor for AdvertisableFeaturePostCommitWorkItem, &protocol conformance descriptor for AdvertisableFeaturePostCommitWorkItem);
  v7 = 0;
  while ((sub_AD98() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_577C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_AD28();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ACF8();
  v10 = sub_AD18();
  v11 = sub_AE38();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23 = a1;
    v15 = v14;
    v26 = v14;
    *v13 = 136315138;
    v16 = sub_AFA8();
    v18 = sub_9AA8(v16, v17, &v26);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_0, v10, v11, "[%s] Commit enablement starting", v13, 0xCu);
    sub_8320(v15);
    a1 = v23;

    a2 = v24;
  }

  (*(v7 + 8))(v9, v6);
  sub_24E8(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v3;

  sub_AB48();

  swift_getObjectType();
  sub_AC18();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v3;

  sub_AB48();

  swift_getObjectType();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a1;
  v20[4] = a2;

  sub_ABF8();
  swift_unknownObjectRelease();
}

uint64_t sub_5AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v7 = sub_AD38();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AD68();
  v25 = *(v10 - 8);
  v26 = v10;
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_74CC(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  sub_7310();
  v24 = sub_AE48();
  sub_7E80(a1, &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), sub_74CC);
  v16 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v17 = swift_allocObject();
  v18 = v23;
  v17[2] = a2;
  v17[3] = v18;
  v17[4] = a4;
  sub_8018(&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, sub_74CC);
  aBlock[4] = sub_766C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_387C;
  aBlock[3] = &unk_10928;
  v19 = _Block_copy(aBlock);

  sub_AD58();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_8280(&qword_14CC8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_73B8(0, &unk_14DC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_740C();
  sub_AE98();
  v20 = v24;
  sub_AE58();
  _Block_release(v19);

  (*(v27 + 8))(v9, v7);
  return (*(v25 + 8))(v12, v26);
}

uint64_t sub_5E7C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 65) = 1;
  }

  return a2(a4);
}

uint64_t sub_5EF0(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_AD28();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  if (*(v3 + 65) == 1)
  {
    sub_ACF8();
    v14 = sub_AD18();
    v15 = sub_AE38();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v38 = a1;
      v18 = a2;
      v19 = v17;
      v41 = v17;
      *v16 = 136315138;
      v20 = sub_AFA8();
      v37 = v6;
      v22 = sub_9AA8(v20, v21, &v41);
      v39 = v7;
      v23 = v22;

      *(v16 + 4) = v23;
      _os_log_impl(&dword_0, v14, v15, "[%s] Determine post-commit work starting", v16, 0xCu);
      sub_8320(v19);
      a2 = v18;
      a1 = v38;

      v24 = v13;
      v25 = v37;
      (*(v8 + 8))(v24, v39);
    }

    else
    {

      (*(v8 + 8))(v13, v7);
      v25 = v6;
    }

    sub_24E8(0);
    swift_getKeyPath();
    swift_getKeyPath();
    v40 = v3;

    sub_AB48();

    swift_getObjectType();
    v35 = swift_allocObject();
    v35[2] = a1;
    v35[3] = a2;
    v35[4] = v25;

    sub_AC28();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_ACF8();
    v26 = sub_AD18();
    v27 = sub_AE18();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39 = v7;
      v30 = v29;
      v41 = v29;
      *v28 = 136315138;
      v31 = sub_AFA8();
      v33 = a1;
      v34 = sub_9AA8(v31, v32, &v41);

      *(v28 + 4) = v34;
      a1 = v33;
      _os_log_impl(&dword_0, v26, v27, "[%s] Commit enablement must be called at least once before post-commit work", v28, 0xCu);
      sub_8320(v30);

      (*(v8 + 8))(v11, v39);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    return a1(&_swiftEmptyArrayStorage);
  }
}

uint64_t sub_6328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v23 = a2;
  v5 = sub_AD38();
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AD68();
  v26 = *(v8 - 8);
  v27 = v8;
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_72D4(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7310();
  v15 = sub_AE48();
  sub_7E80(a1, v14, sub_72D4);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_8018(v14, v18 + v16, sub_72D4);
  v19 = (v18 + v17);
  v20 = v24;
  *v19 = v23;
  v19[1] = v20;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = v25;
  aBlock[4] = sub_7374;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_387C;
  aBlock[3] = &unk_10888;
  v21 = _Block_copy(aBlock);

  sub_AD58();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_8280(&qword_14CC8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_73B8(0, &unk_14DC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_740C();
  sub_AE98();
  sub_AE58();
  _Block_release(v21);

  (*(v28 + 8))(v7, v5);
  return (*(v26 + 8))(v10, v27);
}

uint64_t sub_66D0(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v55 = a3;
  v56 = a2;
  v5 = sub_ABC8();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v48 - v11;
  __chkstk_darwin(v10);
  v14 = &v48 - v13;
  v15 = sub_AD28();
  v53 = *(v15 - 8);
  v54 = v15;
  v16 = __chkstk_darwin(v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v48 - v19;
  sub_72D4(0);
  __chkstk_darwin(v21);
  v23 = (&v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_7E80(a1, v23, sub_72D4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v14, v23, v5);
    sub_ACF8();
    v24 = *(v6 + 16);
    v24(v12, v14, v5);
    v25 = sub_AD18();
    v26 = sub_AE18();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v51 = v14;
      v49 = v25;
      v28 = v27;
      v50 = swift_slowAlloc();
      v57 = v50;
      *v28 = 136315394;
      v29 = sub_AFA8();
      v31 = sub_9AA8(v29, v30, &v57);
      LODWORD(v52) = v26;
      v32 = v31;

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      v24(v9, v12, v5);
      v33 = sub_ADB8();
      v35 = v34;
      v36 = *(v6 + 8);
      v36(v12, v5);
      v37 = sub_9AA8(v33, v35, &v57);

      *(v28 + 14) = v37;
      v38 = v49;
      _os_log_impl(&dword_0, v49, v52, "[%s] Determine post-commit work failed with error: %{public}s", v28, 0x16u);
      swift_arrayDestroy();

      v14 = v51;
    }

    else
    {

      v36 = *(v6 + 8);
      v36(v12, v5);
    }

    (*(v53 + 8))(v18, v54);
    v56(&_swiftEmptyArrayStorage);
    return (v36)(v14, v5);
  }

  else
  {
    v39 = *v23;
    sub_ACF8();
    v40 = sub_AD18();
    v41 = sub_AE38();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v57 = v43;
      *v42 = 136315138;
      v44 = sub_AFA8();
      v46 = sub_9AA8(v44, v45, &v57);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_0, v40, v41, "[%s] Determine post-commit work completed", v42, 0xCu);
      sub_8320(v43);
    }

    (*(v53 + 8))(v20, v54);
    v56(v39);
  }
}

void *sub_6C08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_AD28();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_ACC8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AC48();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 != enum case for AdvertisableFeaturePostCommitWorkItem.cancelPendingHealthAppDeepLinkIfPresent(_:))
  {
    if (v15 == enum case for AdvertisableFeaturePostCommitWorkItem.showMedicationsThatAffectHeartRate(_:))
    {
      v16 = *(v2 + 16);
      v17 = objc_allocWithZone(type metadata accessor for MedicationsThatAffectHeartRateMiniFlowStepController(0));
      swift_unknownObjectWeakInit();
      (*(v8 + 104))(v10, enum case for MedicationsAffectHeartRateOnboardingViewController.ActionStyle.continue(_:), v7);
      v18 = v16;
      v19 = BPSPillSelectedColor();
      v20 = sub_ACD8();
      sub_8280(&qword_14CA8, type metadata accessor for MedicationsThatAffectHeartRateMiniFlowStepController, &unk_B998);
      v21 = v20;
      sub_ACE8();

      return v20;
    }

    sub_ACF8();

    v23 = sub_AD18();
    v24 = sub_AE28();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v25 = 136315394;
      v26 = sub_AFA8();
      v28 = sub_9AA8(v26, v27, &v37);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      v36 = v2;
      type metadata accessor for HealthFeaturesViewModel();

      v29 = sub_ADB8();
      v31 = sub_9AA8(v29, v30, &v37);

      *(v25 + 14) = v31;
      _os_log_impl(&dword_0, v23, v24, "[%s] Unrecognized value: %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    (*(v34 + 8))(v6, v35);
  }

  (*(v12 + 8))(v14, v11);
  return 0;
}

uint64_t sub_7094()
{
  sub_8320((v0 + 24));

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_7110@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_ABB8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7244((*a1 + 24), *(*a1 + 48));
  (*(v5 + 104))(v7, enum case for AdvertisableFeature.Location.watchPairing(_:), v4);
  v8 = sub_AC88();
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  a2[1] = v10;
  return result;
}

void *sub_7244(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_7290()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_7310()
{
  result = qword_14DB0;
  if (!qword_14DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_14DB0);
  }

  return result;
}

uint64_t sub_73A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_73B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_ADF8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_740C()
{
  result = qword_14CD0;
  if (!qword_14CD0)
  {
    sub_73B8(255, &unk_14DC0, &type metadata accessor for DispatchWorkItemFlags);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14CD0);
  }

  return result;
}

uint64_t sub_7480()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_74CC(uint64_t a1)
{
  if (!qword_14CD8)
  {
    sub_ABC8();
    sub_8280(&qword_14CC0, &type metadata accessor for AdvertisableFeatureError, &protocol conformance descriptor for AdvertisableFeatureError);
    v1 = sub_AF98();
    if (!v2)
    {
      atomic_store(v1, &qword_14CD8);
    }
  }
}

uint64_t sub_756C()
{
  sub_74CC(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_ABC8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_766C()
{
  sub_74CC(0);
  v2 = *(v1 - 8);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return sub_5E7C(v3, v4, v5, v6);
}

unint64_t sub_76D4()
{
  result = qword_14DA0;
  if (!qword_14DA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_14DA0);
  }

  return result;
}

void sub_7738(uint64_t a1)
{
  if (!qword_14CE0)
  {
    sub_77A0(255, &qword_14CE8, &protocol descriptor for AdvertisableFeaturePostCommitWorkItemMiniFlowStepViewController);
    v1 = sub_AE78();
    if (!v2)
    {
      atomic_store(v1, &qword_14CE0);
    }
  }
}

uint64_t sub_77A0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_7800(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

char *sub_7864(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_7884(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_7884(char *result, int64_t a2, char a3, char *a4)
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
    sub_82C8(0, &unk_14D30, &type metadata accessor for _ContiguousArrayStorage);
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
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_79A0(unint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_AF08();
      sub_ABE8();
      swift_dynamicCast();
      return v9;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    sub_ABE8();
    result = sub_AED8();
    if (result != *(a4 + 36))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    sub_AEE8();
    swift_dynamicCast();
    sub_8280(&qword_14D08, &type metadata accessor for AdvertisableFeatureModel, &protocol conformance descriptor for AdvertisableFeatureModel);
    v6 = sub_AD78();
    v7 = -1 << *(a4 + 32);
    v5 = v6 & ~v7;
    if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v8 = ~v7;
      sub_8280(&qword_14D28, &type metadata accessor for AdvertisableFeatureModel, &protocol conformance descriptor for AdvertisableFeatureModel);
      while ((sub_AD98() & 1) == 0)
      {
        v5 = (v5 + 1) & v8;
        if (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_16;
    }

LABEL_10:

    __break(1u);
  }

  if ((v5 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v5)
  {
    goto LABEL_20;
  }

  if (((*(a4 + 8 * (v5 >> 6) + 56) >> v5) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }
}

void sub_7C00(uint64_t a1@<X8>)
{
  type metadata accessor for HealthFeaturesSetupFlowController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass:ObjCClassFromMetadata];
  v14._countAndFlagsBits = 0xE000000000000000;
  v16._object = 0x800000000000C310;
  v16._countAndFlagsBits = 0xD000000000000028;
  v18.value._countAndFlagsBits = 0;
  v18.value._object = 0;
  v5.super.isa = v4;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v6 = sub_AB38(v16, v18, v5, v20, 0, v14);
  v8 = v7;

  v9 = [v3 bundleForClass:ObjCClassFromMetadata];
  v15._countAndFlagsBits = 0xE000000000000000;
  v17._countAndFlagsBits = 0xD00000000000002ALL;
  v17._object = 0x800000000000C340;
  v19.value._countAndFlagsBits = 0;
  v19.value._object = 0;
  v10.super.isa = v9;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v11 = sub_AB38(v17, v19, v10, v21, 0, v15);
  v13 = v12;

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v11;
  *(a1 + 24) = v13;
  *(a1 + 32) = 1;
}

void sub_7DD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    sub_ABC8();
    sub_8280(&qword_14CC0, &type metadata accessor for AdvertisableFeatureError, &protocol conformance descriptor for AdvertisableFeatureError);
    v6 = sub_AF98();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_7E80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_7F00(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_ABC8();
    (*(*(v6 - 8) + 8))(v1 + v4, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v1, ((((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_8018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_80AC(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v2 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v2 + v6);

  return a2(v2 + v4, v8, v9, v10);
}

unint64_t sub_8164()
{
  result = qword_14D18;
  if (!qword_14D18)
  {
    sub_82C8(255, &qword_14D10, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14D18);
  }

  return result;
}

void sub_81D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_ABE8();
    v7 = sub_8280(&qword_14D08, &type metadata accessor for AdvertisableFeatureModel, &protocol conformance descriptor for AdvertisableFeatureModel);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_8274(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_8280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_82C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_8320(void *a1)
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

uint64_t sub_836C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_8384(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_8398(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_83E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_8448(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

char *sub_8498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC31HealthFeaturesBridgeSetupPlugin33HealthFeaturesSetupFlowController____lazy_storage___firstStepViewController;
  v5 = *&v3[OBJC_IVAR____TtC31HealthFeaturesBridgeSetupPlugin33HealthFeaturesSetupFlowController____lazy_storage___firstStepViewController];
  if (v5)
  {
    v6 = *&v3[OBJC_IVAR____TtC31HealthFeaturesBridgeSetupPlugin33HealthFeaturesSetupFlowController____lazy_storage___firstStepViewController];
  }

  else
  {
    sub_A710(0, &qword_14D90, a3, type metadata accessor for HealthFeaturesSetupFlowController, type metadata accessor for HealthFeaturesViewModel);
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v3;
    v8 = v3;
    sub_AB48();

    v9 = objc_allocWithZone(type metadata accessor for HealthFeaturesViewController(0));
    v10 = sub_1978(v14);
    swift_unknownObjectWeakAssign();
    v11 = *&v3[v4];
    *&v8[v4] = v10;
    v6 = v10;

    v5 = 0;
  }

  v12 = v5;
  return v6;
}

uint64_t sub_85DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_A710(0, &qword_14D90, a3, type metadata accessor for HealthFeaturesSetupFlowController, type metadata accessor for HealthFeaturesViewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_AB48();

  return v6;
}

_BYTE *sub_86A8()
{
  v1 = v0;
  v2 = sub_AD38();
  v24 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_AD68();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AD48();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC31HealthFeaturesBridgeSetupPlugin33HealthFeaturesSetupFlowController_featureIdentifiers;
  *&v1[v12] = sub_AB88();
  *&v1[OBJC_IVAR____TtC31HealthFeaturesBridgeSetupPlugin33HealthFeaturesSetupFlowController____lazy_storage___firstStepViewController] = 0;
  v13 = OBJC_IVAR____TtC31HealthFeaturesBridgeSetupPlugin33HealthFeaturesSetupFlowController__viewModel;
  sub_A710(0, &qword_14D90, v14, type metadata accessor for HealthFeaturesSetupFlowController, type metadata accessor for HealthFeaturesViewModel);
  swift_allocObject();
  *&v1[v13] = sub_AB78();
  v1[OBJC_IVAR____TtC31HealthFeaturesBridgeSetupPlugin33HealthFeaturesSetupFlowController_isLoadingConfiguration] = 0;
  v15 = type metadata accessor for HealthFeaturesSetupFlowController();
  v27.receiver = v1;
  v27.super_class = v15;
  v16 = objc_msgSendSuper2(&v27, "init");
  v16[OBJC_IVAR____TtC31HealthFeaturesBridgeSetupPlugin33HealthFeaturesSetupFlowController_isLoadingConfiguration] = 1;
  sub_A7AC(0, &qword_14DB0, OS_dispatch_queue_ptr);
  (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.userInitiated(_:), v8);
  v17 = v16;
  v18 = sub_AE68();
  (*(v9 + 8))(v11, v8);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  aBlock[4] = sub_A63C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_387C;
  aBlock[3] = &unk_10B48;
  v20 = _Block_copy(aBlock);
  sub_AD58();
  v25 = &_swiftEmptyArrayStorage;
  sub_A6C8(&qword_14CC8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_A65C(0, &unk_14DC0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_740C();
  sub_AE98();
  sub_AE58();
  _Block_release(v20);

  (*(v24 + 8))(v4, v2);
  (*(v5 + 8))(v7, v23);

  return v17;
}

uint64_t sub_8B20(void *a1, uint64_t a2, uint64_t a3)
{
  sub_A710(0, &qword_14D90, a3, type metadata accessor for HealthFeaturesSetupFlowController, type metadata accessor for HealthFeaturesViewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  sub_AB48();

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2858(sub_A6C0, v5);
}

void sub_8C40(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(Strong + OBJC_IVAR____TtC31HealthFeaturesBridgeSetupPlugin33HealthFeaturesSetupFlowController_isLoadingConfiguration) = 0;
    v5 = [Strong delegate];
    if (a1)
    {
      if (v5)
      {
        v6 = &selRef_buddyControllerReleaseHold_;
LABEL_7:
        [v5 *v6];
        swift_unknownObjectRelease();

        return;
      }

      __break(1u);
    }

    else if (v5)
    {
      v6 = &selRef_buddyControllerReleaseHoldAndSkip_;
      goto LABEL_7;
    }

    __break(1u);
  }
}

uint64_t sub_8DB4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_A710(0, &qword_14D90, v4, type metadata accessor for HealthFeaturesSetupFlowController, type metadata accessor for HealthFeaturesViewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v1;
  sub_AB48();

  if (a1)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = a1;
    v8[4] = ObjectType;

    v9 = swift_unknownObjectRetain();
    sub_46B8(v9, sub_A15C, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_8F28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_AD28();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a1)
    {
      v12 = a1;
      sub_92EC(v12);
    }

    else
    {
      sub_ACF8();
      swift_unknownObjectRetain();
      v13 = sub_AD18();
      v14 = sub_AE38();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v23[0] = swift_slowAlloc();
        v24 = v23[0];
        *v15 = 136315394;
        v16 = sub_AFA8();
        v18 = sub_9AA8(v16, v17, &v24);

        *(v15 + 4) = v18;
        *(v15 + 12) = 2082;
        v23[1] = a3;
        sub_A65C(0, &qword_14D98, sub_76D4, &type metadata accessor for Optional);
        swift_unknownObjectRetain();
        v19 = sub_ADB8();
        v21 = sub_9AA8(v19, v20, &v24);

        *(v15 + 14) = v21;
        _os_log_impl(&dword_0, v13, v14, "[%s] no controllers to present after %{public}s", v15, 0x16u);
        swift_arrayDestroy();
      }

      (*(v7 + 8))(v9, v6);
      v22 = [v11 delegate];
      if (v22)
      {
        [v22 buddyControllerDone:v11];

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_92EC(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_AD28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ACF8();
  v8 = a1;
  v9 = sub_AD18();
  v10 = sub_AE38();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = v4;
    v12 = v11;
    v23 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = sub_AFA8();
    v15 = sub_9AA8(v13, v14, &v23);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    swift_getObjectType();
    v22 = v8;
    swift_getWitnessTable();
    v16 = sub_AF78();
    v18 = sub_9AA8(v16, v17, &v23);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_0, v9, v10, "[%s] pushing next step controller %{public}s", v12, 0x16u);
    swift_arrayDestroy();

    (*(v5 + 8))(v7, v21);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  [v8 setMiniFlowDelegate:v2];
  return [v2 pushController:v8 animated:1];
}

uint64_t sub_9568(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  v4 = a2;
  LOBYTE(v2) = v3(v2);

  return v2 & 1;
}

id sub_95B4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HealthFeaturesSetupFlowController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_9668@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_AC58();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = [objc_allocWithZone(HKHealthStore) init];
  v10 = sub_ACA8();
  swift_allocObject();
  v11 = v9;
  v12 = sub_AC98();
  v21 = v10;
  v22 = sub_A6C8(&qword_14DD0, &type metadata accessor for CountryOracle, &protocol conformance descriptor for CountryOracle);
  *&v20 = v12;
  (*(v5 + 104))(v7, enum case for PluginAdvertisableFeatureSourceContext.DeviceSource.activeDevice(_:), v4);
  v13 = sub_AC78();
  swift_allocObject();
  v14 = sub_AC68();
  v15 = *(v8 + OBJC_IVAR____TtC31HealthFeaturesBridgeSetupPlugin33HealthFeaturesSetupFlowController_featureIdentifiers);
  v21 = v13;
  v22 = &protocol witness table for HealthPluginAdvertisableFeatureManagerFactory;
  *&v20 = v14;
  type metadata accessor for HealthFeaturesViewModel();
  v16 = swift_allocObject();
  *(v16 + 64) = 0;
  *(v16 + 72) = 0;
  sub_A710(0, &qword_14AC8, 255, type metadata accessor for HealthFeaturesViewModel, sub_2550);
  swift_allocObject();

  v17 = sub_AB78();
  *(v16 + 16) = v11;
  *(v16 + 80) = v15;
  *(v16 + 88) = v17;
  result = sub_A784(&v20, v16 + 24);
  *a2 = v16;
  return result;
}

uint64_t sub_98EC@<X0>(void **a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = *a1;
  sub_A710(0, &qword_14D90, a2, type metadata accessor for HealthFeaturesSetupFlowController, type metadata accessor for HealthFeaturesViewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  sub_AB48();

  *a3 = v7;
  return result;
}

uint64_t sub_99C0(uint64_t *a1, void **a2, uint64_t a3)
{
  v3 = *a2;
  sub_A710(0, &qword_14D90, a3, type metadata accessor for HealthFeaturesSetupFlowController, type metadata accessor for HealthFeaturesViewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;

  return sub_AB58();
}

id sub_9A7C()
{
  v0 = HKPreferredRegulatoryDomainProvider();

  return v0;
}

unint64_t sub_9AA8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_9B74(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_A080(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_8320(v11);
  return v7;
}

unint64_t sub_9B74(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_9C80(a5, a6);
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
    result = sub_AF48();
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

char *sub_9C80(uint64_t a1, unint64_t a2)
{
  v3 = sub_9CCC(a1, a2);
  sub_9DFC(&off_10798);
  return v3;
}

char *sub_9CCC(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_9EE8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_AF48();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_ADC8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_9EE8(v10, 0);
        result = sub_AF28();
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

uint64_t sub_9DFC(uint64_t result)
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

  result = sub_9F74(result, v11, 1, v3);
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

void *sub_9EE8(uint64_t a1, uint64_t a2)
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

  sub_A878(0, &qword_14D88, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_9F74(char *result, int64_t a2, char a3, char *a4)
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
    sub_A878(0, &qword_14D88, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_A080(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_A0E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_A11C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_A168()
{
  v0 = sub_AD28();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = [v4 sharedInstance];
  if (!v5)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v4 activeDeviceSelectorBlock];
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = swift_allocObject();
    v7 = sub_A900;
    *(v9 + 16) = sub_A900;
    *(v9 + 24) = v8;
    v20 = sub_A938;
    v21 = v9;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v19 = sub_9568;
    *(&v19 + 1) = &unk_10BC0;
    v10 = _Block_copy(&aBlock);
  }

  else
  {
    v10 = 0;
    v8 = 0;
  }

  v11 = [v6 getAllDevicesWithArchivedAltAccountDevicesMatching:v10];
  sub_A79C(v7, v8);
  _Block_release(v10);

  if (!v11)
  {
    goto LABEL_24;
  }

  sub_A7AC(0, &qword_14DD8, NRDevice_ptr);
  v12 = sub_ADD8();

  if (v12 >> 62)
  {
    if (sub_AF68())
    {
      goto LABEL_8;
    }
  }

  else if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_8:
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = sub_AF38();
      goto LABEL_11;
    }

    if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
    {
      v13 = *(v12 + 32);
LABEL_11:
      v14 = v13;

      if ([v14 valueForProperty:NRDevicePropertyIsAltAccount])
      {
        sub_AE88();

        swift_unknownObjectRelease();
      }

      else
      {

        v22 = 0u;
        v23 = 0u;
      }

      aBlock = v22;
      v19 = v23;
      if (*(&v23 + 1))
      {
        swift_dynamicCast();
      }

      else
      {
        sub_A7F4(&aBlock);
      }

      return;
    }

    __break(1u);
    goto LABEL_23;
  }

  sub_ACF8();
  v15 = sub_AD18();
  v16 = sub_AE18();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "Unable to get activePairingDevice", v17, 2u);
  }

  (*(v1 + 8))(v3, v0);
}

void sub_A530(uint64_t a1)
{
  if (a1)
  {
    sub_A7AC(0, &qword_14DA8, UIViewController_ptr);
    if (swift_dynamicCastMetatype())
    {
      v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v3 = swift_dynamicCastObjCProtocolConditional();
      if (v3)
      {
        sub_92EC(v3);

        return;
      }
    }
  }

  v4 = [v1 delegate];
  if (v4)
  {
    [v4 buddyControllerDone:v1];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_A604()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_A644(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_A65C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_A6C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_A710(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a4(a3);
    a5(255);
    v7 = sub_AB68();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_A784(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_A79C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_A7AC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_A7F4(uint64_t a1)
{
  sub_A878(0, &unk_14DE0, &type metadata for Any + 8, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_A878(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_A8C8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t type metadata accessor for MedicationsThatAffectHeartRateMiniFlowStepController(uint64_t a1)
{
  result = qword_14DF8;
  if (!qword_14DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_AA04(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_AA8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationsThatAffectHeartRateMiniFlowStepController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_AADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, Swift::String a9)
{
  v10._countAndFlagsBits = swift_unknownObjectWeakLoadStrong();
  if (v10._countAndFlagsBits)
  {
    [v10._countAndFlagsBits miniFlowStepComplete:v9];

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
    return sub_AB38(v10, v11, v12, v13, v14, a9);
  }
}
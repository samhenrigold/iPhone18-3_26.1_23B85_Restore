id sub_385F68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaSocialProfileCoordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MediaSocialProfileCoordinator(uint64_t a1)
{
  result = qword_E01218;
  if (!qword_E01218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3860D0(uint64_t a1)
{
  sub_2EB24(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication29MediaSocialProfileCoordinatorC5State016_9A98D6C3F884101J15A442A2EB43F19F8LLO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_3861B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 152))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_38620C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *(result + 144) = 0;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

double sub_386280(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_3862D8()
{

  return swift_deallocObject();
}

double block_copy_helper_118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_386328(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

unint64_t sub_386394()
{
  result = qword_E01240;
  if (!qword_E01240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E01240);
  }

  return result;
}

uint64_t sub_386418()
{

  return swift_deallocObject();
}

uint64_t sub_386460()
{

  return swift_deallocObject();
}

double sub_3864C4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

double sub_386500(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_386514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230, "|,\r");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_386584()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_3865BC()
{

  if (*(v0 + 32) >= 4uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_386610()
{

  if (*(v0 + 48) >= 4uLL)
  {
  }

  return swift_deallocObject();
}

double sub_386674(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

double sub_386688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB7C10();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_AB7C50();
  v10 = *(v18 - 8);
  __chkstk_darwin();
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v3[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accessQueue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  sub_AB7C30();
  v19 = _swiftEmptyArrayStorage;
  sub_11533C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
  sub_809E0(&qword_DF06D0, &unk_DE9C30, &qword_AF8920);
  sub_ABABB0();
  sub_ABA160();
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
  _Block_release(v14);

  return result;
}

void sub_386934(char a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230, "|,\r");
  __chkstk_darwin();
  v6 = v29 - v5;
  v7 = sub_AB7CC0();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accessQueue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v13 = v12;
  LOBYTE(v12) = sub_AB7CF0();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    sub_AB3420();
    v14 = sub_AB3430();
    (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
    v15 = OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_lastAuthenticationAttempt;
    swift_beginAccess();
    sub_386514(v6, v2 + v15);
    swift_endAccess();
    if (a1)
    {
      sub_383228();
    }

    else
    {
      sub_C32A0(v31);
      v16 = v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state;
      v17 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 112);
      v33[6] = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 96);
      v33[7] = v17;
      v33[8] = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 128);
      v34 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 144);
      v18 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 48);
      v33[2] = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 32);
      v33[3] = v18;
      v19 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 80);
      v33[4] = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 64);
      v33[5] = v19;
      v20 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 16);
      v33[0] = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state);
      v33[1] = v20;
      v21 = v31[7];
      *(v16 + 96) = v31[6];
      *(v16 + 112) = v21;
      *(v16 + 128) = v31[8];
      *(v16 + 144) = v32;
      v22 = v31[3];
      *(v16 + 32) = v31[2];
      *(v16 + 48) = v22;
      v23 = v31[5];
      *(v16 + 64) = v31[4];
      *(v16 + 80) = v23;
      v24 = v31[1];
      *v16 = v31[0];
      *(v16 + 16) = v24;
      sub_3863E8(v33);
      v25 = *(v16 + 112);
      v35[6] = *(v16 + 96);
      v35[7] = v25;
      v35[8] = *(v16 + 128);
      v36 = *(v16 + 144);
      v26 = *(v16 + 48);
      v35[2] = *(v16 + 32);
      v35[3] = v26;
      v27 = *(v16 + 80);
      v35[4] = *(v16 + 64);
      v35[5] = v27;
      v28 = *(v16 + 16);
      v35[0] = *v16;
      v35[1] = v28;
      if (((1 << sub_90064(v35)) & 0xB) != 0)
      {
        *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_retryCount) = 0;
      }

      sub_C32A0(v29);
      v37[6] = v29[6];
      v37[7] = v29[7];
      v37[8] = v29[8];
      v38 = v30;
      v37[2] = v29[2];
      v37[3] = v29[3];
      v37[4] = v29[4];
      v37[5] = v29[5];
      v37[0] = v29[0];
      v37[1] = v29[1];
      sub_384938(v37, a2);
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_386C50(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

uint64_t sub_386C8C()
{
  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_386D5C()
{

  return swift_deallocObject();
}

uint64_t sub_386DC8()
{

  return swift_deallocObject();
}

uint64_t sub_386E30(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(a1 + 112);
  v9[6] = *(a1 + 96);
  v9[7] = v4;
  v9[8] = *(a1 + 128);
  v10 = *(a1 + 144);
  v5 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v5;
  v6 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v6;
  v7 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v7;
  return v3(v9, *a2);
}

uint64_t sub_386EBC()
{

  v1 = *(v0 + 64);
  if (v1 != &dword_0 + 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_386F4C()
{

  return swift_deallocObject();
}

uint64_t sub_386FC8()
{
  v1 = sub_AB2BD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_387128()
{
  v1 = [v0 navigationItem];
  v2 = [v0 parentViewController];
  if (v2)
  {
    v3 = v2;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v4 = v3;
      v5 = [v4 navigationItem];

      v3 = [v4 parentViewController];
      v1 = v5;
      if (!v3)
      {
        return v5;
      }
    }
  }

  return v1;
}

uint64_t sub_38720C()
{
  if (qword_DE6B08 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_E01278))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v2;
    }
  }

  else
  {
    sub_9BC10(v5);
    return 0;
  }

  return result;
}

uint64_t sub_3872E8(uint64_t a1)
{
  v2 = a1;
  result = sub_387998();
  if (result == 4)
  {
    if (v2 == 4)
    {
      return result;
    }

LABEL_11:

    return sub_388E7C(v2, v1);
  }

  if (v2 != 4)
  {
    result = sub_3B266C(result, v2);
    if (result)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (qword_DE6B20 != -1)
  {
    swift_once();
  }

  v4 = qword_E01290;
  v5 = sub_AB9260();
  objc_setAssociatedObject(v1, v4, v5, &dword_0 + 1);

  [v1 _setManualScrollEdgeAppearanceEnabled:0];
  [v1 _setAutoScrollEdgeTransitionDistance:16.0];

  return [v1 _setManualScrollEdgeAppearanceEnabled:1];
}

void sub_387430(uint64_t a1, uint64_t a2)
{
  v5 = sub_3875B8();
  if (v6)
  {
    if (a2)
    {
      if (v5 == a1 && v6 == a2)
      {

LABEL_10:

LABEL_15:

        [v2 setLargeTitleDisplayMode:2];
        return;
      }

      v7 = sub_ABB3C0();

      if (v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  else if (!a2)
  {
    return;
  }

  if (qword_DE6B18 != -1)
  {
    swift_once();
  }

  v8 = qword_E01288;
  if (a2)
  {

    v9 = sub_AB9260();

    objc_setAssociatedObject(v2, v8, v9, &dword_0 + 1);

    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v10 = qword_E01288;

  objc_setAssociatedObject(v2, v10, 0, &dword_0 + 1);
}

uint64_t sub_3875B8()
{
  if (qword_DE6B18 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_E01288))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_9BC10(v5);
    return 0;
  }
}

void sub_3876A0()
{
  v1 = [v0 subviews];
  sub_13C80(0, &qword_DF12A0, UIView_ptr);
  v2 = sub_AB9760();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v10 = v1;
    v5 = 0;
    v1 = &loc_71BA60 + 2;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_3605EC(v5, v3);
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v6 tag] == &loc_71BA60 + 2)
      {
        sub_ABAE90();
        sub_ABAED0();
        sub_ABAEE0();
        sub_ABAEA0();
        v1 = &loc_71BA60 + 2;
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        v1 = v10;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    if (!sub_ABB060())
    {
      goto LABEL_24;
    }
  }

  else if (!_swiftEmptyArrayStorage[2])
  {
LABEL_24:

    return;
  }

  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    sub_3605EC(0, _swiftEmptyArrayStorage);
    goto LABEL_24;
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v9 = _swiftEmptyArrayStorage[4];
    goto LABEL_24;
  }

  __break(1u);
}

unint64_t sub_3878B0()
{
  if (qword_DE6B10 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_E01280))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (!*(&v4 + 1))
  {
    sub_9BC10(v5);
    return 3;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 3;
  }

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_387998()
{
  if (qword_DE6B20 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_E01290))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return sub_3891C8(v2, v3);
    }
  }

  else
  {
    sub_9BC10(v6);
  }

  return 4;
}

uint64_t sub_387A78()
{
  if (qword_DE6B28 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_E01298))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_9BC10(v5);
    return 0;
  }
}

void sub_387B6C(uint64_t a1, char a2)
{
  v5 = COERCE_DOUBLE(sub_3890C0());
  if (v6)
  {
    if (a2)
    {
      return;
    }
  }

  else if ((a2 & 1) == 0 && v5 == *&a1)
  {
    return;
  }

  if (qword_DE6B30 != -1)
  {
    swift_once();
  }

  v7 = qword_E012A0;
  if (a2)
  {
    isa = 0;
  }

  else
  {
    isa = sub_AB3A30().super.super.isa;
  }

  objc_setAssociatedObject(v2, v7, isa, &dword_0 + 3);

  v9 = [v2 navigationBar];
  if (v9)
  {
    v10 = *&a1;
    if (a2)
    {
      v10 = 1.0;
    }

    v11 = v9;
    [v9 _setTitleOpacity:v10];
  }
}

void sub_387CB0(uint64_t a1, id a2, char a3)
{
  v4 = v3;
  v8 = [v4 topViewController];
  if (v8)
  {
    v9 = v8;
    v10 = [v4 overrideTraitCollectionForChildViewController:v8];
    if (v10)
    {
      v11 = v10;
      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_AF7C50;
        *(v12 + 32) = v11;
        *(v12 + 40) = a2;
        sub_13C80(0, &qword_E00AB0, UITraitCollection_ptr);
        v13 = a2;
        v14 = v11;
        isa = sub_AB9740().super.isa;
        a2 = [objc_opt_self() traitCollectionWithTraitsFromCollections:isa];
      }

      else
      {

        a2 = v11;
      }
    }

    else
    {

      v17 = a2;
    }
  }

  else
  {
    v16 = a2;
  }

  [v4 setOverrideTraitCollection:a2 forChildViewController:a1];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for TraitNavigationController();
  objc_msgSendSuper2(&v18, "pushViewController:animated:", a1, a3 & 1);
}

unint64_t sub_387EE8(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = [v3 viewControllers];
  sub_13C80(0, &qword_DE7500, UIViewController_ptr);
  v9 = sub_AB9760();
  v10 = v9;
  if (!(v9 >> 62))
  {
    v11 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_34:

    return [v4 pushViewController:a1 overrideTraitCollection:a2 animated:a3 & 1];
  }

  v11 = sub_ABB060();
  if (!v11)
  {
    goto LABEL_34;
  }

LABEL_3:
  v12 = __OFSUB__(v11, 1);
  result = v11 - 1;
  if (v12)
  {
    __break(1u);
    goto LABEL_37;
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_37:
    v14 = sub_35F8D4(result, v10);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
  {
    v14 = *(v10 + 8 * result + 32);
LABEL_8:
    v15 = v14;

    type metadata accessor for AlbumDetailViewController(0);
    v16 = swift_dynamicCastClass();

    if (!v16 || (v17 = swift_dynamicCastClass()) == 0)
    {

      return [v4 pushViewController:a1 overrideTraitCollection:a2 animated:a3 & 1];
    }

    v18 = (v16 + *&stru_298.segname[swift_isaMask & *v16]);
    v48 = *v18;
    v19 = v18[4];
    v21 = v18[1];
    v20 = v18[2];
    v51 = v18[3];
    v52 = v19;
    v49 = v21;
    v50 = v20;
    v22 = (v17 + *&stru_298.segname[*v17 & swift_isaMask]);
    v24 = v22[1];
    v23 = v22[2];
    v25 = v22[4];
    v56 = v22[3];
    v57 = v25;
    *v54 = v24;
    v55 = v23;
    v53 = *v22;
    v26 = v49;
    if (v49)
    {
      v27 = a1;
      v28 = v15;
      sub_70EB0(&v48, v47);
      sub_70EB0(&v53, v47);
      v29 = [v26 identifiers];
      v30 = v54[0];
      if (!v54[0])
      {
        if (!v29)
        {
          goto LABEL_26;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v31 = a1;
      v32 = v15;
      sub_70EB0(&v48, v47);
      sub_70EB0(&v53, v47);
      v30 = v54[0];
      if (!v54[0])
      {
        goto LABEL_26;
      }

      v29 = 0;
    }

    v33 = [v30 identifiers];
    v34 = v33;
    if (v29)
    {
      if (!v33)
      {
LABEL_21:

LABEL_25:
        sub_70F0C(&v53);
        sub_70F0C(&v48);
        return [v4 pushViewController:a1 overrideTraitCollection:a2 animated:a3 & 1];
      }

      sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);
      v35 = sub_ABA790();

      if (v35)
      {
LABEL_26:
        v36 = v51;
        v37 = v56;
        if (v51)
        {
          if (v56)
          {
            sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);
            v38 = v37;
            v39 = v36;
            v40 = sub_ABA790();

            if (v40)
            {
              goto LABEL_32;
            }
          }
        }

        else if (!v56)
        {
LABEL_32:

          sub_70F0C(&v53);
          return sub_70F0C(&v48);
        }

        v41 = *&stru_298.sectname[swift_isaMask & *v16];
        v42 = *(v16 + v41);
        *(v16 + v41) = v37;
        v43 = v37;

        v44 = *(v16 + *(&stru_248.reloff + (swift_isaMask & *v16)));
        v45 = *(v44 + qword_E08848);
        *(v44 + qword_E08848) = v37;
        v46 = v43;

        *(v44 + qword_E08860) = 0;
        sub_1F5728();
        goto LABEL_32;
      }
    }

    else
    {
      if (!v33)
      {
        goto LABEL_26;
      }
    }

    v29 = a1;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

id sub_38836C(uint64_t a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for TraitNavigationController();
  v3 = objc_msgSendSuper2(&v18, "_traitCollectionForChildEnvironment:", a1);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return v3;
  }

  v5 = v4;
  swift_unknownObjectRetain();
  v6 = [v1 childViewControllers];
  sub_13C80(0, &qword_DE7500, UIViewController_ptr);
  v7 = sub_AB9760();
  v17 = v5;
  __chkstk_darwin();
  v16[2] = &v17;
  v8 = sub_1B3840(sub_389344, v16, v7);

  if ((v8 & 1) != 0 || (v9 = [v1 overrideTraitCollectionForChildViewController:v5]) == 0)
  {
    swift_unknownObjectRelease();
    return v3;
  }

  v10 = v9;
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_AF7C50;
    *(v11 + 32) = v3;
    *(v11 + 40) = v10;
    sub_13C80(0, &qword_E00AB0, UITraitCollection_ptr);
    v12 = v3;
    v13 = v10;
    isa = sub_AB9740().super.isa;
    v10 = [objc_opt_self() traitCollectionWithTraitsFromCollections:isa];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v10;
}

id sub_38861C(void *a1, char a2)
{
  v3 = v2;
  v6 = [v3 viewControllers];
  sub_13C80(0, &qword_DE7500, UIViewController_ptr);
  v7 = sub_AB9760();
  aBlock[0] = a1;
  v19[2] = aBlock;
  v8 = sub_1B3840(sub_72E3C, v19, v7);

  if (v8)
  {
    v9 = type metadata accessor for TraitNavigationController();
    v20.receiver = v3;
    v20.super_class = v9;
    return objc_msgSendSuper2(&v20, "removeChildViewController:notifyDidMove:", a1, a2 & 1);
  }

  else
  {
    v11 = [a1 transitionCoordinator];
    if (v11)
    {
      v12 = v11;
      v13 = swift_allocObject();
      *(v13 + 16) = v3;
      *(v13 + 24) = a1;
      aBlock[4] = sub_389254;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_CF24C;
      aBlock[3] = &block_descriptor_119;
      v14 = _Block_copy(aBlock);
      v15 = v3;
      v16 = a1;

      [v12 animateAlongsideTransition:0 completion:v14];
      _Block_release(v14);
      swift_unknownObjectRelease();
      v17 = type metadata accessor for TraitNavigationController();
      v22.receiver = v15;
      v22.super_class = v17;
      objc_msgSendSuper2(&v22, "removeChildViewController:notifyDidMove:", v16, a2 & 1);
      return [v16 _music_setParentTraitEnvironmentOverride:v15];
    }

    else
    {
      [v3 setOverrideTraitCollection:0 forChildViewController:a1];
      [a1 _music_setParentTraitEnvironmentOverride:0];
      v18 = type metadata accessor for TraitNavigationController();
      v22.receiver = v3;
      v22.super_class = v18;
      return objc_msgSendSuper2(&v22, "removeChildViewController:notifyDidMove:", a1, a2 & 1);
    }
  }
}

id sub_388A70(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TraitNavigationController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_388AC8()
{
  result = swift_slowAlloc();
  qword_E01278 = result;
  return result;
}

uint64_t sub_388AF0()
{
  result = swift_slowAlloc();
  qword_E01280 = result;
  return result;
}

uint64_t sub_388B18()
{
  result = swift_slowAlloc();
  qword_E01288 = result;
  return result;
}

uint64_t sub_388B40()
{
  result = swift_slowAlloc();
  qword_E01290 = result;
  return result;
}

uint64_t sub_388B68()
{
  result = swift_slowAlloc();
  qword_E01298 = result;
  return result;
}

uint64_t sub_388B90()
{
  result = swift_slowAlloc();
  qword_E012A0 = result;
  return result;
}

Swift::Int sub_388BC4()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_388C7C(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_388D20(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

unint64_t sub_388DD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_3891C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_388E04(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000002DLL;
  v3 = "tem.noNavigationBarTransition";
  v4 = 0xD000000000000032;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000035;
    v3 = "tionBarTransitions";
  }

  if (*v1)
  {
    v5 = "gationBarTransition";
  }

  else
  {
    v2 = 0xD000000000000033;
    v5 = "u";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v4;
    v6 = v3;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

id sub_388E7C(unsigned __int8 a1, void *a2)
{
  if (qword_DE6B20 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v3 = qword_E01290;
  v4 = a1;
  v5 = sub_AB9260();

  objc_setAssociatedObject(a2, v3, v5, &dword_0 + 1);

  if (v4 <= 1)
  {
    if (v4)
    {
      [a2 _setManualScrollEdgeAppearanceEnabled:0];
      [a2 _setAutoScrollEdgeTransitionDistance:0.0];
      [a2 _setManualScrollEdgeAppearanceEnabled:1];
      v6 = "_setManualScrollEdgeAppearanceProgress:";
    }

    else
    {
      [a2 _setManualScrollEdgeAppearanceEnabled:1];
      [a2 _setManualScrollEdgeAppearanceProgress:1.0];
      [a2 _setManualScrollEdgeAppearanceEnabled:0];
      v6 = "_setAutoScrollEdgeTransitionDistance:";
    }

LABEL_9:
    v7 = 0.0;
    v8 = a2;

    return [v8 v6];
  }

  if (v4 == 2)
  {
    [a2 _setManualScrollEdgeAppearanceEnabled:0];
    [a2 _setAutoScrollEdgeTransitionDistance:0.0];
    [a2 _setManualScrollEdgeAppearanceEnabled:1];
    [a2 _setManualScrollEdgeAppearanceProgress:1.0];
    v6 = "_setManualScrollEdgeAppearanceProgress:";
    goto LABEL_9;
  }

  [a2 _setManualScrollEdgeAppearanceEnabled:0];
  [a2 _setAutoScrollEdgeTransitionDistance:16.0];
  v6 = "_setManualScrollEdgeAppearanceEnabled:";
  v8 = a2;

  return [v8 v6];
}

uint64_t sub_3890C0()
{
  if (qword_DE6B30 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_E012A0))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_9BC10(v5);
    return 0;
  }
}

unint64_t sub_3891C8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CEF820;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_389214()
{

  return swift_deallocObject();
}

id sub_389254(void *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (([a1 isCancelled] & 1) == 0)
  {
    [v3 setOverrideTraitCollection:0 forChildViewController:v2];
  }

  return [v2 _music_setParentTraitEnvironmentOverride:0];
}

double block_copy_helper_119(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_3892F0()
{
  result = qword_E012D0;
  if (!qword_E012D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E012D0);
  }

  return result;
}

void *sub_3893E0()
{
  v1 = *(*(*v0 + 24) + 128);
  v2 = v1;
  return v1;
}

void *sub_389410()
{
  v1 = *(*(*v0 + 24) + 120);
  v2 = v1;
  return v1;
}

uint64_t sub_3894A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = (*(*v6 + 24) + *a5);
  v8 = *v7;
  v9 = v7[1];
  *v7 = a1;
  v7[1] = a2;
  return a6(v8, v9, a3, a4);
}

void sub_3894C8(char a1)
{
  v2 = *(*v1 + 24);
  v3 = *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed);
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) = a1;
  sub_76070(v3);
}

void sub_38952C()
{
  v1 = *(v0 + 24);
  if (*(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1 && (*(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && *(v1 + 72))
  {
    *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_needsArtworkReload) = 1;
    v2 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
    *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
    if (v2)
    {
      [v2 invalidate];
    }

    v3 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v3)
    {
      v4 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);

      v3(v5);

      sub_17654(v3, v4);
    }
  }
}

double sub_389604@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + qword_DEF910);
  if (v3)
  {
    v4 = type metadata accessor for ScrollViewArtworkVideoPlaybackController(0);
    v5 = &off_D0E3E8;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;

  return result;
}

uint64_t sub_389674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_ABA9C0();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v16 - v11;
  (*(a2 + 32))(a1, a2, v10);
  v13 = *(AssociatedTypeWitness - 8);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v9 + 8))(v12, v8);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *(a3 + 24) = AssociatedTypeWitness;
    *(a3 + 32) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(v13 + 32))(boxed_opaque_existential_0, v12, AssociatedTypeWitness);
  }

  return result;
}

double sub_389834(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_AB4BC0();
  v5 = *(v4 - 8);
  *&result = __chkstk_darwin().n128_u64[0];
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 56);
  if (v9 != v3)
  {
    v10 = *(v2 + 40);
    if (v10)
    {
      v11 = *(v2 + 48);

      v10(v9);
      sub_17654(v10, v11);
    }

    v12 = Logger.motion.unsafeMutableAddressor();
    (*(v5 + 16))(v8, v12, v4);

    v13 = sub_AB4BA0();
    v14 = sub_AB9F10();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67240192;
      *(v15 + 4) = *(v2 + 56);

      _os_log_impl(&dword_0, v13, v14, "isVideoArtworkAllowed changed to %{BOOL,public}d", v15, 8u);

      (*(v5 + 8))(v8, v4);
    }

    else
    {
      (*(v5 + 8))(v8, v4);
    }
  }

  return result;
}

double sub_389A1C(char a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  return sub_389834(v2);
}

uint64_t sub_389A40(void (*a1)(void, void), void (*a2)(void, void), void (*a3)(void, void))
{
  a1(*(v3 + 16), *(v3 + 24));

  sub_17654(*(v3 + 40), *(v3 + 48));
  a2(*(v3 + 64), *(v3 + 72));
  a3(*(v3 + 80), *(v3 + 88));
  a2(*(v3 + 96), *(v3 + 104));
  a2(*(v3 + 112), *(v3 + 120));
  a2(*(v3 + 128), *(v3 + 136));

  return v3;
}

uint64_t sub_389AE4()
{
  sub_17654(*(v0 + 16), *(v0 + 24));

  sub_17654(*(v0 + 40), *(v0 + 48));
  sub_17654(*(v0 + 64), *(v0 + 72));
  sub_17654(*(v0 + 80), *(v0 + 88));
  sub_17654(*(v0 + 96), *(v0 + 104));
  sub_17654(*(v0 + 112), *(v0 + 120));
  sub_17654(*(v0 + 128), *(v0 + 136));

  return v0;
}

uint64_t sub_389B54()
{
  sub_389AE4();

  return swift_deallocClassInstance();
}

uint64_t sub_389BA0(void *a1, void *a2)
{
  v3 = v2;
  *(v3 + 184) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 200) = 1;
  *(v3 + 224) = 0;
  *(v3 + 240) = _swiftEmptyArrayStorage;
  *(v3 + 248) = &_swiftEmptySetSingleton;
  *(v3 + 208) = a1;
  *(v3 + 216) = a2;
  v6 = objc_allocWithZone(type metadata accessor for CollectionViewMaterialRendererVideoCoordinator());
  v7 = a2;
  v8 = a1;
  *(v3 + 232) = sub_1135A8(v8);
  v9 = v8;
  v10 = sub_252988(v8);

  v11 = swift_allocObject();
  swift_weakInit();
  v12 = *(v10 + 16);
  v13 = *(v10 + 24);
  *(v10 + 16) = sub_38F77C;
  *(v10 + 24) = v11;
  swift_retain_n();
  sub_17654(v12, v13);

  return v10;
}

char *sub_389CBC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = Strong;
  v3 = *(Strong + 248);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v5 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v5 = sub_13067C(*(v3 + 16), 0);
  v6 = *(sub_AB3820() - 8);
  sub_131440(&v12, &v5[(*(v6 + 80) + 32) & ~*(v6 + 80)], v4, v3);
  v8 = v7;
  v9 = v12;
  swift_bridgeObjectRetain_n();
  result = sub_2BB88(v9);
  if (v8 == v4)
  {

LABEL_7:
    v11 = [*(v2 + 208) indexPathsForVisibleItems];
    sub_AB3820();
    sub_AB9760();

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_389E3C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a2;
  sub_38EF30();
  v10 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01C68, &qword_B0C3E0);
  if (swift_dynamicCast())
  {
    sub_70DF8(v35, v38);
    v11 = *(v3 + 56);
    v12 = v39;
    v13 = v40;
    __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    (*(v13 + 104))(v11, v12, v13);
    v14 = swift_allocObject();
    swift_weakInit();
    v33 = v3;
    v34 = *(v7 + 16);
    v34(v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    v32 = a1;
    v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    v31 = *(v7 + 32);
    v31(v16 + v15, v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v30[0] = v6;
    v30[1] = v8;
    v17 = v39;
    v18 = v40;
    __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    (*(v18 + 32))(sub_38F51C, v16, v17, v18);
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = v30[0];
    v34(v9, v32, v30[0]);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    v22 = v20;
    v31(v21 + v15, v9, v20);
    v23 = v39;
    v24 = v40;
    __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    (*(v24 + 56))(sub_38F534, v21, v23, v24);
    v25 = swift_allocObject();
    swift_weakInit();
    v34(v9, v32, v22);
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v31(v26 + v15, v9, v22);
    v27 = v39;
    v28 = v40;
    __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    (*(v28 + 80))(sub_38F698, v26, v27, v28);
    return __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    return sub_12E1C(v35, &qword_E01C70, &qword_B0C3E8);
  }
}

void sub_38A234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 208);

    isa = sub_AB3770().super.isa;
    v8 = [v6 cellForItemAtIndexPath:isa];

    if (v8)
    {
      if (a1)
      {
        swift_beginAccess();
        v9 = swift_weakLoadStrong();
        if (v9)
        {
          v10 = *(v9 + 64);
          if (v10)
          {
            v11 = *(v9 + 72);
            sub_307CC(*(v9 + 64), v11);

            v10(a3);
            sub_17654(v10, v11);
          }

          else
          {
          }
        }
      }

      swift_beginAccess();
      v12 = swift_weakLoadStrong();
      if (v12)
      {
        v13 = *(v12 + 248);

        v14 = sub_4732A8(a3, v13);

        if (v14)
        {
          v15 = [v8 window];
          if (v15)
          {
            v16 = v15;
            v17 = [v15 windowScene];

            if (v17)
            {
              v18 = [v17 activationState];

              if (!v18)
              {
                swift_beginAccess();
                if (swift_weakLoadStrong())
                {
                  sub_38B7E0(a3);
                }
              }
            }
          }
        }
      }
    }
  }
}

double sub_38A434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 128);
    if (v6)
    {
      v7 = *(Strong + 136);
      sub_307CC(*(Strong + 128), v7);

      v6(a3);
      sub_17654(v6, v7);
    }

    else
    {
    }
  }

  return result;
}

void sub_38A4CC(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v57 - v9;
  __chkstk_darwin();
  v12 = &v57 - v11;
  __chkstk_darwin();
  v14 = &v57 - v13;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v16 = *(Strong + 96);
      if (v16)
      {
        v17 = *(Strong + 104);
        sub_307CC(*(Strong + 96), v17);

        v16(a3);
        sub_17654(v16, v17);
      }

      else
      {
      }
    }

    if (qword_DE6B38 != -1)
    {
      swift_once();
    }

    v21 = sub_AB4BC0();
    __swift_project_value_buffer(v21, qword_E012D8);
    v22 = *(v6 + 16);
    v22(v14, a3, v5);
    v22(v12, a3, v5);

    v23 = sub_AB4BA0();
    v24 = sub_AB9F50();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v60 = v58;
      *v25 = 136446466;
      sub_21B3B0();
      v26 = sub_ABB330();
      v28 = v27;
      v57 = *(v6 + 8);
      v57(v14, v5);
      v29 = sub_425E68(v26, v28, &v60);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      swift_beginAccess();
      v30 = swift_weakLoadStrong();
      if (v30)
      {
        v31 = *(v30 + 208);

        isa = sub_AB3770().super.isa;
        v33 = [v31 cellForItemAtIndexPath:isa];
      }

      else
      {
        v33 = 0;
      }

      v59 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01C78, &unk_B0C3F0);
      v49 = sub_AB9350();
      v51 = v50;
      v57(v12, v5);
      v52 = sub_425E68(v49, v51, &v60);

      *(v25 + 14) = v52;
      _os_log_impl(&dword_0, v23, v24, "Playback started at %{public}s on cell=%{public}s", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v34 = *(v6 + 8);
      v34(v12, v5);
      v34(v14, v5);
    }
  }

  else
  {
    swift_beginAccess();
    v18 = swift_weakLoadStrong();
    if (v18)
    {
      v19 = *(v18 + 112);
      if (v19)
      {
        v20 = *(v18 + 120);
        sub_307CC(*(v18 + 112), v20);

        v19(a3);
        sub_17654(v19, v20);
      }

      else
      {
      }
    }

    if (qword_DE6B38 != -1)
    {
      swift_once();
    }

    v35 = sub_AB4BC0();
    __swift_project_value_buffer(v35, qword_E012D8);
    v36 = *(v6 + 16);
    v36(v10, a3, v5);
    v36(v8, a3, v5);

    v37 = sub_AB4BA0();
    v38 = sub_AB9F50();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v60 = v58;
      *v39 = 136446466;
      sub_21B3B0();
      v40 = sub_ABB330();
      v42 = v41;
      v57 = *(v6 + 8);
      v57(v10, v5);
      v43 = sub_425E68(v40, v42, &v60);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2082;
      swift_beginAccess();
      v44 = swift_weakLoadStrong();
      if (v44)
      {
        v45 = *(v44 + 208);

        v46 = sub_AB3770().super.isa;
        v47 = [v45 cellForItemAtIndexPath:v46];
      }

      else
      {
        v47 = 0;
      }

      v59 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01C78, &unk_B0C3F0);
      v53 = sub_AB9350();
      v55 = v54;
      v57(v8, v5);
      v56 = sub_425E68(v53, v55, &v60);

      *(v39 + 14) = v56;
      _os_log_impl(&dword_0, v37, v38, "Playback stopped at %{public}s on cell=%{public}s", v39, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v48 = *(v6 + 8);
      v48(v8, v5);
      v48(v10, v5);
    }
  }
}

void sub_38AC10()
{
  v1 = v0;
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v73 = &v62 - v6;
  __chkstk_darwin();
  v74 = &v62 - v7;
  __chkstk_darwin();
  v9 = &v62 - v8;
  __chkstk_darwin();
  v72 = &v62 - v10;
  __chkstk_darwin();
  v12 = &v62 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin().n128_u64[0];
  v71 = &v62 - v16;
  v17 = *(v0 + 208);
  v18 = [v17 window];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 windowScene];

    if (v20)
    {
      v21 = [v20 activationState];

      if (!v21 && (*(v1 + 200) & 1) == 0)
      {
        v75 = v3;
        v76 = &_swiftEmptySetSingleton;
        v22 = *(v1 + 224);
        v63 = [v17 indexPathsForVisibleItems];
        v70 = sub_AB9760();
        v23 = *(v70 + 16);
        if (v22)
        {
          if (v23)
          {
            v62 = v1;
            v24 = *(v75 + 16);
            v25 = v70 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
            v26 = *(v75 + 72);
            v75 += 16;
            v27 = (v75 - 8);
            v71 = v26;
            v24(v5, v25, v2);
            while (1)
            {
              isa = sub_AB3770().super.isa;
              v29 = [v17 cellForItemAtIndexPath:isa];

              if (v29)
              {
                [v29 frame];
                if (sub_ABA450())
                {
                  v30 = v17;
                  v31 = v73;
                  v24(v73, v5, v2);
                  v72 = v23;
                  v32 = v2;
                  v33 = v24;
                  v34 = v74;
                  v35 = v31;
                  v17 = v30;
                  v26 = v71;
                  sub_1C47C(v74, v35);

                  v36 = *v27;
                  v37 = v34;
                  v24 = v33;
                  v2 = v32;
                  v23 = v72;
                  (*v27)(v37, v2);
                  v36(v5, v2);
                }

                else
                {
                  (*v27)(v5, v2);
                }
              }

              else
              {
                (*v27)(v5, v2);
              }

              v25 += v26;
              if (!--v23)
              {
                break;
              }

              v24(v5, v25, v2);
            }

            v1 = v62;
          }

          else
          {
          }

          goto LABEL_42;
        }

        if (!v23)
        {
          v39 = v75;
          v40 = v71;
          (*(v75 + 56))(v71, 1, 1, v2);
LABEL_21:

          sub_38F70C(v40, v14);
          v41 = (*(v39 + 48))(v14, 1, v2);
          v42 = v72;
          if (v41 == 1)
          {
            sub_12E1C(v40, &unk_DE8E20, &qword_AF7990);
            v43 = v14;
LABEL_41:
            sub_12E1C(v43, &unk_DE8E20, &qword_AF7990);
LABEL_42:
            v61 = *(v1 + 248);
            *(v1 + 248) = v76;
            sub_38C0B4(v61);

            return;
          }

          (*(v39 + 32))(v72, v14, v2);
          v44 = sub_AB3770().super.isa;
          v45 = [v17 cellForItemAtIndexPath:v44];

          if (v45)
          {
            [v45 frame];
            if (sub_ABA450())
            {
              v46 = v73;
              (*(v39 + 16))(v73, v42, v2);
              v47 = v74;
              sub_1C47C(v74, v46);

              v48 = *(v39 + 8);
              v48(v47, v2);
              v48(v42, v2);
LABEL_40:
              v43 = v40;
              goto LABEL_41;
            }
          }

          (*(v39 + 8))(v42, v2);
          goto LABEL_40;
        }

        v62 = v1;
        v38 = *(v75 + 16);
        v67 = v70 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
        v68 = v38;
        v69 = v75 + 16;
        (v38)(v12);
        if (v23 == &dword_0 + 1)
        {
LABEL_17:
          v39 = v75;
          v40 = v71;
          (*(v75 + 32))(v71, v12, v2);
          (*(v39 + 56))(v40, 0, 1, v2);
          v1 = v62;
          goto LABEL_21;
        }

        v49 = (v75 + 8);
        v64 = (v75 + 32);
        v65 = (v75 + 8);
        v50 = 1;
        p_name = (&JSDateDescriptor + 24);
        v66 = v14;
        while (1)
        {
          if (v50 >= *(v70 + 16))
          {
            __break(1u);
            return;
          }

          v68(v9, v67 + *(v75 + 72) * v50, v2);
          v52 = sub_AB3770().super.isa;
          v53 = [v17 p_name[401]];

          if (!v53)
          {
            break;
          }

          v54 = sub_AB3770().super.isa;
          v55 = [v17 p_name[401]];

          if (v55)
          {
            [v53 center];
            sub_ABA4C0();
            sub_ABA700();
            v57 = v56;
            [v55 center];
            sub_ABA4C0();
            sub_ABA700();
            v59 = v58;

            v49 = v65;
            v60 = *v65;
            if (v57 >= v59)
            {
              p_name = (&JSDateDescriptor + 24);
              goto LABEL_37;
            }

            v60(v12, v2);
          }

          else
          {
            v49 = v65;
            (*v65)(v12, v2);
          }

          p_name = &JSDateDescriptor.name;
          v14 = v66;
          (*v64)(v12, v9, v2);
LABEL_29:
          if (v23 == ++v50)
          {
            goto LABEL_17;
          }
        }

        v60 = *v49;
LABEL_37:
        v14 = v66;
        v60(v9, v2);
        goto LABEL_29;
      }
    }
  }
}

void sub_38B528()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 248);
  v6 = v5 + 56;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v20[1] = v2 + 16;
  v11 = (v2 + 8);
  v21 = v5;
  v22 = v0;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v9)
  {
    v13 = v12;
LABEL_11:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    (*(v2 + 16))(v4, *(v21 + 48) + *(v2 + 72) * (v14 | (v13 << 6)), v1);
    v15 = *(v22 + 208);
    v16 = v1;
    isa = sub_AB3770().super.isa;
    v18 = [v15 cellForItemAtIndexPath:isa];

    if (v18)
    {
      sub_38E908(v4, v18);
      (*v11)(v4, v16);
    }

    else
    {
      (*v11)(v4, v16);
    }

    v12 = v13;
    v1 = v16;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      v19 = *(v22 + 248);
      *(v22 + 248) = &_swiftEmptySetSingleton;
      sub_38C0B4(v19);

      return;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_38B768(char a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  v3 = sub_389834(v2);
  if (v2 != *(v1 + 56))
  {
    v4 = *(v1 + 216);
    if (v4)
    {
      if ([v4 hasVideoArtwork])
      {
        v5 = *(v1 + 208);

        [v5 reloadData];
      }
    }
  }
}

void sub_38B7E0(uint64_t a1)
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 208);
  isa = sub_AB3770().super.isa;
  v9 = [v7 cellForItemAtIndexPath:isa];

  if (v9)
  {
    v31 = v9;
    sub_38EF30();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01C68, &qword_B0C3E0);
    if (swift_dynamicCast())
    {
      v11 = *(&v33 + 1);
      v12 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      v13 = (*(v12 + 8))(v11, v12);
      __swift_destroy_boxed_opaque_existential_0(&v32);
      if (v13)
      {
        [v13 playScenes];
        if (qword_DE6B38 != -1)
        {
          swift_once();
        }

        v14 = sub_AB4BC0();
        __swift_project_value_buffer(v14, qword_E012D8);
        (*(v4 + 16))(v6, a1, v3);
        v15 = v10;
        v16 = sub_AB4BA0();
        v17 = sub_AB9F20();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *&v32 = v30;
          *v18 = 136446466;
          sub_21B3B0();
          v28 = v16;
          v19 = sub_ABB330();
          v27 = v17;
          v20 = v13;
          v22 = v21;
          (*(v4 + 8))(v6, v3);
          v23 = sub_425E68(v19, v22, &v32);
          v13 = v20;

          *(v18 + 4) = v23;
          *(v18 + 12) = 2114;
          *(v18 + 14) = v15;
          v24 = v29;
          *v29 = v9;
          v25 = v15;
          v16 = v28;
          _os_log_impl(&dword_0, v28, v27, "CollectionViewArtworkVideoPlaybackController: Called playScenes() at %{public}s on %{public}@", v18, 0x16u);
          sub_12E1C(v24, &qword_DF9B20, &unk_AF8C60);

          __swift_destroy_boxed_opaque_existential_0(v30);
        }

        else
        {
          (*(v4 + 8))(v6, v3);
        }

        sub_113844(v15);
      }

      else
      {
      }
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;

      sub_12E1C(&v32, &qword_E01C70, &qword_B0C3E8);
    }
  }
}

void sub_38BBAC(uint64_t a1)
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 208);
  isa = sub_AB3770().super.isa;
  v9 = [v7 cellForItemAtIndexPath:isa];

  if (v9)
  {
    v38 = v9;
    sub_38EF30();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01C68, &qword_B0C3E0);
    if (swift_dynamicCast())
    {
      v11 = *(&v40 + 1);
      v12 = v41;
      __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
      v13 = (*(v12 + 8))(v11, v12);
      __swift_destroy_boxed_opaque_existential_0(&v39);
      if (v13)
      {
        [v13 pauseScenes];
        if (qword_DE6B38 != -1)
        {
          swift_once();
        }

        v14 = sub_AB4BC0();
        __swift_project_value_buffer(v14, qword_E012D8);
        (*(v4 + 16))(v6, a1, v3);
        v15 = v10;
        v16 = sub_AB4BA0();
        v17 = sub_AB9F20();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v37 = v13;
          v19 = v18;
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          *&v39 = v36;
          *v19 = 136446466;
          sub_21B3B0();
          v20 = sub_ABB330();
          v22 = v21;
          (*(v4 + 8))(v6, v3);
          v23 = sub_425E68(v20, v22, &v39);

          *(v19 + 4) = v23;
          *(v19 + 12) = 2114;
          *(v19 + 14) = v15;
          v24 = v35;
          *v35 = v9;
          v25 = v15;
          _os_log_impl(&dword_0, v16, v17, "CollectionViewArtworkVideoPlaybackController: Called pauseScenes() at %{public}s on %{public}@", v19, 0x16u);
          sub_12E1C(v24, &qword_DF9B20, &unk_AF8C60);

          __swift_destroy_boxed_opaque_existential_0(v36);

          v13 = v37;
        }

        else
        {
          (*(v4 + 8))(v6, v3);
        }

        ObjectType = swift_getObjectType();
        v27 = swift_conformsToProtocol2();
        if (v27)
        {
          v28 = *(v27 + 8);
          v29 = *(v28 + 8);
          v30 = v15;
          v31 = v29(ObjectType, v28);
          if (v31)
          {
            v32 = v31;
            [v31 setEnableSetNeedsDisplay:1];
          }

          v33 = v29(ObjectType, v28);
          if (v33)
          {
            v34 = v33;
            [v33 setPaused:1];
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
      v41 = 0;
      v39 = 0u;
      v40 = 0u;

      sub_12E1C(&v39, &qword_E01C70, &qword_B0C3E8);
    }
  }
}

void sub_38C014(uint64_t a1)
{
  v3 = *(v1 + 208);
  isa = sub_AB3770().super.isa;
  v5 = [v3 cellForItemAtIndexPath:isa];

  if (v5)
  {
    sub_38E908(a1, v5);
  }
}

void sub_38C0B4(void *a1)
{
  v2 = v1;
  v4 = sub_AB3820();
  v60 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v49 - v7;

  sub_4CA680(v9, a1);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    v12 = v1[31];
    v13 = a1[2];
    v14 = v12[2];
    v54 = a1;
    v55 = v6;
    if (v13 <= v14 >> 3)
    {
      v64[0] = v12;

      sub_1C4FD8(a1);
      v15 = v64[0];
    }

    else
    {

      v15 = sub_1C7540(a1, v12);
    }

    v16 = v15 + 7;
    v17 = 1 << *(v15 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v15[7];
    v20 = (v17 + 63) >> 6;
    v58 = (v60 + 8);
    v59 = v60 + 16;

    v21 = 0;
    v56 = v15;
    v57 = v4;
    while (v19)
    {
LABEL_15:
      (*(v60 + 16))(v8, v15[6] + *(v60 + 72) * (__clz(__rbit64(v19)) | (v21 << 6)), v4);
      v23 = v2[26];
      isa = sub_AB3770().super.isa;
      v25 = [v23 cellForItemAtIndexPath:isa];

      if (v25)
      {
        v63 = v25;
        sub_38EF30();
        v26 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01C68, &qword_B0C3E0);
        if (swift_dynamicCast())
        {
          sub_70DF8(v61, v64);
          if (v2[10])
          {
            v51 = v2[10];
            v52 = v26;
            v53 = v2;
            v27 = v2[11];
            v28 = v65;
            v29 = v66;
            __swift_project_boxed_opaque_existential_1(v64, v65);
            v49 = *(v29 + 16);
            v50 = v27;

            v30 = v49(v28, v29);
            if (v30)
            {
              v31 = v30;
              v32 = [v30 layer];
              objc_opt_self();
              v33 = [swift_dynamicCastObjCClassUnconditional() isReadyForDisplay];
            }

            else
            {
              v33 = 0;
            }

            v34 = v33;
            v35 = v50;
            v36 = v51;
            v51(v8, v34);
            sub_17654(v36, v35);
            v26 = v52;
            v2 = v53;
            v15 = v56;
          }

          sub_38B7E0(v8);

          __swift_destroy_boxed_opaque_existential_0(v64);
        }

        else
        {
          v62 = 0;
          memset(v61, 0, sizeof(v61));

          sub_12E1C(v61, &qword_E01C70, &qword_B0C3E8);
        }
      }

      v19 &= v19 - 1;
      v4 = v57;
      (*v58)(v8, v57);
    }

    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v22 >= v20)
      {
        break;
      }

      v19 = v16[v22];
      ++v21;
      if (v19)
      {
        v21 = v22;
        goto LABEL_15;
      }
    }

    v37 = v2[31];
    v38 = v54;
    if (v37[2] <= v54[2] >> 3)
    {
      v64[0] = v54;

      sub_1C4FD8(v37);

      v39 = v64[0];
    }

    else
    {

      v39 = sub_1C7540(v37, v38);
    }

    v40 = v55;
    v41 = 1 << *(v39 + 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & v39[7];
    v44 = (v41 + 63) >> 6;

    v45 = 0;
    v46 = v60;
    while (v43)
    {
      v47 = v45;
LABEL_34:
      v48 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
      (*(v46 + 16))(v40, v39[6] + *(v46 + 72) * (v48 | (v47 << 6)), v4);
      sub_38BBAC(v40);
      (*(v46 + 8))(v40, v4);
    }

    while (1)
    {
      v47 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v47 >= v44)
      {

        return;
      }

      v43 = v39[v47 + 7];
      ++v45;
      if (v43)
      {
        v45 = v47;
        goto LABEL_34;
      }
    }

LABEL_39:
    __break(1u);
  }
}

double sub_38C61C()
{

  return result;
}

uint64_t sub_38C664()
{
  v0 = sub_389A40(sub_3FC30, sub_3FC30, sub_3FC30);
  v1 = *(v0 + 208);

  return swift_deallocClassInstance();
}

__n128 sub_38C7BC(uint64_t a1)
{
  v2 = *v1;
  result = *a1;
  v4 = *(a1 + 16);
  *(v2 + 168) = *a1;
  *(v2 + 184) = v4;
  *(v2 + 200) = *(a1 + 32);
  return result;
}

id sub_38C7D8()
{
  result = *(*v0 + 216);
  if (result)
  {
    return [result hasVideoArtwork];
  }

  return result;
}

void *sub_38C8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = Strong;
  v7 = UIScrollView.normalizedContentOffset.getter();
  v9 = v8;
  [*(*(v6 + 168) + 112) frame];
  MaxY = CGRectGetMaxY(v13);

  if (v9 > MaxY)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF4EC0;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;

  return v11;
}

double sub_38C998(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 184);
    v4 = *(Strong + 192);

    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    if (v6)
    {
      v7 = *(v6 + 64);
      if (v7)
      {
        v8 = *(v6 + 72);
        sub_307CC(*(v6 + 64), v8);

        v9[0] = v5;
        v9[1] = v4;
        v7(v9);
        sub_17654(v7, v8);
      }

      else
      {
      }
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_38CAB4();
    }

    else
    {
    }
  }

  return result;
}

void sub_38CAB4()
{
  v1 = v0;
  v2 = UIScrollView.normalizedContentOffset.getter();
  v4 = v3;
  v5 = *(v0 + 168);
  [*(v5 + 112) frame];
  if (v4 <= CGRectGetMaxY(v15))
  {
    v6 = *(v5 + 120);
    if (v6)
    {
      v7 = v6;
      v8 = [v7 layer];
      objc_opt_self();
      v9 = [swift_dynamicCastObjCClassUnconditional() isReadyForDisplay];

      v10 = *(v1 + 80);
      if (!v10)
      {
LABEL_8:
        sub_38F298(&selRef_playScenes, "ScrollViewArtworkVideoPlaybackController: Called playScenes() on %s", v13[0]);
        return;
      }
    }

    else
    {
      v9 = 0;
      v10 = *(v1 + 80);
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    v11 = *(v1 + 88);
    v12 = *(v1 + 192);
    v13[0] = *(v1 + 184);
    v13[1] = v12;

    v10(v13, v9);
    sub_17654(v10, v11);
    goto LABEL_8;
  }

  sub_38E748();
}

uint64_t sub_38CC08()
{

  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return sub_17654(v1, v2);
}

uint64_t sub_38CC48()
{
  v0 = sub_389A40(sub_3FC30, sub_3FC30, sub_3FC30);

  sub_17654(*(v0 + 200), *(v0 + 208));

  return swift_deallocClassInstance();
}

__n128 sub_38CD88(uint64_t a1)
{
  v2 = *v1;
  result = *a1;
  v4 = *(a1 + 16);
  *(v2 + 216) = *a1;
  *(v2 + 232) = v4;
  *(v2 + 248) = *(a1 + 32);
  return result;
}

uint64_t sub_38CDA4()
{
  v1 = *(*v0 + 200);
  if (v1)
  {
    return v1() & 1;
  }

  else
  {
    return 0;
  }
}

void *sub_38CE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = sub_38D3C0();

  if ((v5 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF4EC0;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;

  return v6;
}

double sub_38CEF8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 200);
    v4 = *(Strong + 208);

    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    if (v6)
    {
      v7 = *(v6 + 64);
      if (v7)
      {
        v8 = *(v6 + 72);
        sub_307CC(*(v6 + 64), v8);

        v9[0] = v5;
        v9[1] = v4;
        v7(v9);
        sub_17654(v7, v8);
      }

      else
      {
      }
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_38D1A8();
    }

    else
    {
    }
  }

  return result;
}

double sub_38D018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 128);
    if (v8)
    {
      v9 = *(Strong + 136);
      sub_307CC(*(Strong + 128), v9);

      v10[0] = a3;
      v10[1] = a4;
      v8(v10);
      sub_17654(v8, v9);
    }

    else
    {
    }
  }

  return result;
}

double sub_38D0C8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      return result;
    }

    v8 = *(Strong + 96);
    if (v8)
    {
      v9 = *(Strong + 104);
LABEL_8:
      sub_307CC(v8, v9);

      v11[0] = a3;
      v11[1] = a4;
      v8(v11);
      sub_17654(v8, v9);
      return result;
    }
  }

  else
  {
    swift_beginAccess();
    v10 = swift_weakLoadStrong();
    if (!v10)
    {
      return result;
    }

    v8 = *(v10 + 112);
    if (v8)
    {
      v9 = *(v10 + 120);
      goto LABEL_8;
    }
  }

  return result;
}

void sub_38D1A8()
{
  v1 = v0;
  if (sub_38D3C0())
  {
    swift_beginAccess();
    v2 = v0[21];
    v3 = v1[22];
    ObjectType = swift_getObjectType();
    v12[0] = v2;
    v5 = (*(v3 + 16))(ObjectType, v3);
    if (v5)
    {
      v6 = v5;
      v7 = [v5 layer];
      objc_opt_self();
      v8 = [swift_dynamicCastObjCClassUnconditional() isReadyForDisplay];

      v9 = v1[10];
      if (!v9)
      {
LABEL_5:
        sub_38F0F4(&selRef_playScenes, "ParallaxArtworkVideoPlaybackController: Called playScenes() on %@");
        return;
      }
    }

    else
    {
      v8 = 0;
      v9 = v1[10];
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v10 = v1[11];
    v11 = v1[26];
    v12[0] = v1[25];
    v12[1] = v11;

    v9(v12, v8);
    sub_17654(v9, v10);
    goto LABEL_5;
  }

  sub_38E2AC();
}

uint64_t sub_38D354()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
  ObjectType = swift_getObjectType();
  return (*(v1 + 120))(ObjectType, v1);
}

id sub_38D3C0()
{
  result = [*(v0 + 184) _isInAWindow];
  if (result)
  {
    v2 = *(v0 + 184);
    UIScrollView.normalizedContentOffset.getter();
    v4 = v3;

    swift_beginAccess();
    [*(v0 + 168) bounds];
    Height = CGRectGetHeight(v17);
    v6 = *(v0 + 192);
    if (v6)
    {
      result = [v6 _backgroundView];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v7 = result;
      [result bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v18.origin.x = v9;
      v18.origin.y = v11;
      v18.size.width = v13;
      v18.size.height = v15;
      v16 = CGRectGetHeight(v18);
    }

    else
    {
      v16 = 0.0;
    }

    return (v4 <= Height - v16);
  }

  return result;
}

double sub_38D4D0()
{

  return result;
}

uint64_t sub_38D510()
{
  v0 = sub_389A40(sub_3FC30, sub_3FC30, sub_3FC30);
  v1 = *(v0 + 168);

  return swift_deallocClassInstance();
}

void sub_38D778()
{
  v6 = 0;
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication28JSLiveRadioCaseModelResponse_jsResults);
  v2 = swift_allocObject();
  *(v2 + 16) = &v6;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_38F014;
  *(v3 + 24) = v2;
  aBlock[4] = sub_15AB68;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_48D4FC;
  aBlock[3] = &block_descriptor_181;
  v4 = _Block_copy(aBlock);

  [v1 enumerateItemsUsingBlock:v4];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
  }
}

double sub_38D8E4(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  type metadata accessor for JSLiveRadioCaseItem(0);
  swift_unknownObjectRetain();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_videoBackgroundArtwork;
    v8 = v6;
    swift_beginAccess();
    v9 = *(v8 + v7);
    v10 = v9;
    swift_unknownObjectRelease();
    if (v9)
    {

      *a4 = 1;
      *a3 = 1;
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_38D9BC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication28JSLiveRadioCaseModelResponse_jsResults);
  isa = sub_AB3770().super.isa;
  v4 = [v2 itemAtIndexPath:isa];

  type metadata accessor for JSLiveRadioCaseItem(0);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_videoBackgroundArtwork;
    v7 = v5;
    swift_beginAccess();
    v8 = *(v7 + v6);
    v9 = v8;
    swift_unknownObjectRelease();
    if (v8)
    {

      return 1;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 0;
}

void sub_38DBC4()
{
  v6 = 0;
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults);
  v2 = swift_allocObject();
  *(v2 + 16) = &v6;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_38EFE4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_15AB68;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_48D4FC;
  aBlock[3] = &block_descriptor_171;
  v4 = _Block_copy(aBlock);

  [v1 enumerateItemsUsingBlock:v4];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_38DD84()
{
  v6 = 0;
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults);
  v2 = swift_allocObject();
  *(v2 + 16) = &v6;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_38EF8C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_5794C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_48D4FC;
  aBlock[3] = &block_descriptor_120;
  v4 = _Block_copy(aBlock);

  [v1 enumerateItemsUsingBlock:v4];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
  }
}

double sub_38DEF0(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, void (*a5)(void))
{
  (a5)(0, a2);
  swift_unknownObjectRetain();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = (*&stru_1A8.sectname[swift_isaMask & *v7])();
    swift_unknownObjectRelease();
    if (v8)
    {

      *a4 = 1;
      *a3 = 1;
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return result;
}

BOOL sub_38DFE8(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(void))
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = *&a1[*a4];
  v14 = a3;
  v15 = a1;
  isa = sub_AB3770().super.isa;
  v17 = [v13 itemAtIndexPath:isa];

  a5(0);
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = (*&stru_1A8.sectname[swift_isaMask & *v18])();
    (*(v10 + 8))(v12, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v10 + 8))(v12, v9);
    v19 = 0;
  }

  return v19 != 0;
}

unint64_t sub_38E1D0()
{
  result = qword_E01C60;
  if (!qword_E01C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E01C60);
  }

  return result;
}

uint64_t sub_38E224()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E012D8);
  __swift_project_value_buffer(v0, qword_E012D8);
  return static Logger.music(_:)(0xD000000000000014, 0x8000000000B61850);
}

void sub_38E2AC()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 176);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 8))(ObjectType, v2);
  [v4 pauseScenes];

  v5 = *(v1 + 176);
  v6 = swift_getObjectType();
  v7 = (*(v5 + 8))(v6, v5);
  [v7 restartScenes];

  if (qword_DE6B38 != -1)
  {
    swift_once();
  }

  v8 = sub_AB4BC0();
  __swift_project_value_buffer(v8, qword_E012D8);

  v9 = sub_AB4BA0();
  v10 = sub_AB9F20();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = *(v1 + 168);
    *(v11 + 4) = v13;
    *v12 = v13;
    v14 = v13;
    _os_log_impl(&dword_0, v9, v10, "ParallaxArtworkVideoPlaybackController: Called pauseScenes() + restartScenes() on %@", v11, 0xCu);
    sub_12E1C(v12, &qword_DF9B20, &unk_AF8C60);
  }
}

uint64_t sub_38E490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for ScrollViewArtworkVideoPlaybackController(0);
  v12 = swift_allocObject();
  *(v12 + 216) = 0u;
  *(v12 + 232) = 0u;
  *(v12 + 248) = 1;
  *(v12 + 168) = a1;
  *(v12 + 176) = a2;
  *(v12 + 184) = a3;
  *(v12 + 192) = a4;
  *(v12 + 200) = a5;
  *(v12 + 208) = a6;
  v13 = *(a1 + 112);

  v14 = v13;
  v15 = sub_251E7C(v13);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a3;
  v17[4] = a4;
  v18 = *(v15 + 16);
  v19 = *(v15 + 24);
  *(v15 + 16) = sub_38F484;
  *(v15 + 24) = v17;
  swift_retain_n();

  sub_17654(v18, v19);

  v20 = swift_allocObject();
  swift_weakInit();
  v21 = (a1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
  v22 = *(a1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
  v23 = *(a1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler + 8);
  *v21 = sub_38F490;
  v21[1] = v20;

  sub_17654(v22, v23);

  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 2) = v24;
  *(v25 + 3) = a3;
  *(v25 + 4) = a4;
  v26 = (a1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidFailHandler);
  v27 = *(a1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidFailHandler);
  v28 = *(a1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidFailHandler + 8);
  *v26 = sub_38F498;
  v26[1] = v25;

  sub_17654(v27, v28);

  v29 = swift_allocObject();
  swift_weakInit();

  v30 = swift_allocObject();
  *(v30 + 2) = v29;
  *(v30 + 3) = a3;
  *(v30 + 4) = a4;
  v31 = (a1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isPlayingDidChangeHandler);
  v32 = *(a1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isPlayingDidChangeHandler);
  v33 = *(a1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isPlayingDidChangeHandler + 8);
  *v31 = sub_38F4F8;
  v31[1] = v30;

  sub_17654(v32, v33);

  return v15;
}

void sub_38E748()
{
  v1 = *(v0 + 168);
  [*(v1 + 128) pauseScenes];
  [*(v1 + 128) restartScenes];
  if (qword_DE6B38 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  __swift_project_value_buffer(v2, qword_E012D8);

  oslog = sub_AB4BA0();
  v3 = sub_AB9F20();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    _s9ComponentCMa(0);

    v6 = sub_AB9350();
    v8 = sub_425E68(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, oslog, v3, "ScrollViewArtworkVideoPlaybackController: Called pauseScenes() + restartScenes() on %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
  }
}

void sub_38E908(uint64_t a1, void *a2)
{
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v49 - v8;
  v52 = a2;
  sub_38EF30();
  v10 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01C68, &qword_B0C3E0);
  if (swift_dynamicCast())
  {
    v11 = *(&v54 + 1);
    v12 = v55;
    __swift_project_boxed_opaque_existential_1(&v53, *(&v54 + 1));
    v13 = (*(v12 + 8))(v11, v12);
    __swift_destroy_boxed_opaque_existential_0(&v53);
    if (v13)
    {
      [v13 pauseScenes];
      [v13 restartScenes];
      if (qword_DE6B38 != -1)
      {
        swift_once();
      }

      v14 = sub_AB4BC0();
      __swift_project_value_buffer(v14, qword_E012D8);
      (*(v5 + 16))(v9, a1, v4);
      v15 = v10;
      v16 = sub_AB4BA0();
      v17 = sub_AB9F20();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v51 = v13;
        v20 = v19;
        v50 = swift_slowAlloc();
        *&v53 = v50;
        *v18 = 136446466;
        sub_21B3B0();
        v21 = sub_ABB330();
        v23 = v22;
        (*(v5 + 8))(v9, v4);
        v24 = sub_425E68(v21, v23, &v53);

        *(v18 + 4) = v24;
        *(v18 + 12) = 2114;
        *(v18 + 14) = v15;
        *v20 = v15;
        v25 = v15;
        _os_log_impl(&dword_0, v16, v17, "CollectionViewArtworkVideoPlaybackController: Called pauseScenes() + restartScenes() at %{public}s on %{public}@", v18, 0x16u);
        sub_12E1C(v20, &qword_DF9B20, &unk_AF8C60);
        v13 = v51;

        __swift_destroy_boxed_opaque_existential_0(v50);
      }

      else
      {
        (*(v5 + 8))(v9, v4);
      }

      swift_getObjectType();
      v39 = swift_conformsToProtocol2();
      if (v39 && v15)
      {
        v40 = v39;
        ObjectType = swift_getObjectType();
        v42 = *(v40 + 8);
        v43 = *(v42 + 8);
        v44 = v15;
        v45 = v43(ObjectType, v42);
        if (v45)
        {
          v46 = v45;
          [v45 setEnableSetNeedsDisplay:1];
        }

        v47 = v43(ObjectType, v42);
        v48 = v44;
        if (v47)
        {
          v48 = v47;
          [v47 setPaused:1];
        }

        sub_112C24(ObjectType, v42);
      }

      return;
    }
  }

  else
  {
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    sub_12E1C(&v53, &qword_E01C70, &qword_B0C3E8);
  }

  if (qword_DE6B38 != -1)
  {
    swift_once();
  }

  v26 = sub_AB4BC0();
  __swift_project_value_buffer(v26, qword_E012D8);
  (*(v5 + 16))(v7, a1, v4);
  v27 = v10;
  v28 = sub_AB4BA0();
  v29 = sub_AB9F20();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v53 = v32;
    *v30 = 136446466;
    sub_21B3B0();
    v33 = sub_ABB330();
    v34 = v4;
    v36 = v35;
    (*(v5 + 8))(v7, v34);
    v37 = sub_425E68(v33, v36, &v53);

    *(v30 + 4) = v37;
    *(v30 + 12) = 2114;
    *(v30 + 14) = v27;
    *v31 = v27;
    v38 = v27;
    _os_log_impl(&dword_0, v28, v29, "CollectionViewArtworkVideoPlaybackController: Didn't have a videoLooper in restart(at:cell:): indexPath=%{public}s cell=%{public}@", v30, 0x16u);
    sub_12E1C(v31, &qword_DF9B20, &unk_AF8C60);

    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }
}

unint64_t sub_38EF30()
{
  result = qword_DFE230;
  if (!qword_DFE230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DFE230);
  }

  return result;
}

double block_copy_helper_120(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_38F01C()
{
  v1 = *(v0 + 168);
  if (*(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1 && (*(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && *(v1 + 72))
  {
    *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_needsArtworkReload) = 1;
    v2 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
    *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
    if (v2)
    {
      [v2 invalidate];
    }

    v3 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v3)
    {
      v4 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);

      v3(v5);

      sub_17654(v3, v4);
    }
  }
}

void sub_38F0F4(SEL *a1, const char *a2, ...)
{
  v5 = v2;
  swift_beginAccess();
  v6 = *(v2 + 176);
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 8))(ObjectType, v6);
  [v8 *a1];

  if (qword_DE6B38 != -1)
  {
    swift_once();
  }

  v9 = sub_AB4BC0();
  __swift_project_value_buffer(v9, qword_E012D8);

  v10 = sub_AB4BA0();
  v11 = sub_AB9F20();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = *(v5 + 168);
    *(v12 + 4) = v14;
    *v13 = v14;
    v15 = v14;
    _os_log_impl(&dword_0, v10, v11, a2, v12, 0xCu);
    sub_12E1C(v13, &qword_DF9B20, &unk_AF8C60);
  }
}

void sub_38F298(SEL *a1, const char *a2, ...)
{
  [*(*(v2 + 168) + 128) *a1];
  if (qword_DE6B38 != -1)
  {
    swift_once();
  }

  v4 = sub_AB4BC0();
  __swift_project_value_buffer(v4, qword_E012D8);

  oslog = sub_AB4BA0();
  v5 = sub_AB9F20();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    _s9ComponentCMa(0);

    v8 = sub_AB9350();
    v10 = sub_425E68(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, oslog, v5, a2, v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
  }
}

uint64_t sub_38F448()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t objectdestroy_186Tm()
{

  return swift_deallocObject();
}

uint64_t sub_38F54C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_AB3820() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t objectdestroy_201Tm()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_38F698(char a1)
{
  v3 = *(sub_AB3820() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_38A4CC(a1, v4, v5);
}

uint64_t sub_38F70C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_38F7B8(_OWORD *a1)
{
  swift_getObjectType();
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_paddingForExcessiveHeightCharacters] = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_overlayLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v1[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_hasExcessiveHeightCharacters] = 0;
  v6 = &v1[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties];
  v7 = a1[3];
  v6[2] = a1[2];
  v6[3] = v7;
  v8 = a1[1];
  *v6 = *a1;
  v6[1] = v8;
  sub_390344(a1, v18);
  v17.receiver = v1;
  v17.super_class = type metadata accessor for VibrancyLabelCompositingView();
  v9 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 clearColor];
  [v11 setBackgroundColor:v12];

  v13 = OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel;
  [v11 addSubview:*(v11 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel)];
  v14 = OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_overlayLabel;
  [v11 addSubview:*(v11 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_overlayLabel)];
  sub_38FDFC();
  [*(v11 + v13) setAdjustsFontForContentSizeCategory:1];
  [*(v11 + v14) setAdjustsFontForContentSizeCategory:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF37F0, qword_B01640);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF4EC0;
  *(v15 + 32) = sub_AB4F60();
  *(v15 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_ABA6F0();
  swift_unknownObjectRelease();

  sub_3903A0(a1);

  return v11;
}

void sub_38FB24(uint64_t a1, uint64_t a2, double a3)
{
  v4 = (v3 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text);
  v5 = *(v3 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text + 8);
  if (!v5)
  {
    if (!a2)
    {
      return;
    }

    v8 = 0;
    v7 = *(v3 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel);
    goto LABEL_11;
  }

  if (!a2 || (*v4 == a1 ? (v6 = v5 == a2) : (v6 = 0), !v6 && (sub_ABB3C0() & 1) == 0))
  {
    v7 = *(v3 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel);

    v8 = sub_AB9260();

LABEL_11:
    [v7 setText:v8];

    v9 = *(v3 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_overlayLabel);
    if (v4[1])
    {

      v10 = sub_AB9260();
    }

    else
    {
      v10 = 0;
    }

    [v9 setText:v10];

    v11 = v4[1];
    if (v11)
    {
      v12 = *v4;

      v13 = String.containsExcessiveHeightCharacters.getter(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    *(v3 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_hasExcessiveHeightCharacters) = v13 & 1;
  }
}

void sub_38FDFC()
{
  v1 = v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties);
  v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties + 8);
  v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties + 32);
  v5 = *(v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel);
  v6 = *(v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties + 40);
  v7 = *(v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties + 48);
  v8 = *(v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_overlayLabel);
  v9 = *(v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties + 24);
  [v5 setAdjustsFontSizeToFitWidth:v2];
  v10 = v9;
  [v5 setFont:v10];
  [v5 setLineBreakMode:v4];
  [v5 setMinimumScaleFactor:v6];
  [v5 setNumberOfLines:v7];
  [v5 setTextAlignment:v3];
  [v5 setTextColor:*(v1 + 16)];
  [v8 setAdjustsFontSizeToFitWidth:v2];
  [v8 setFont:v10];

  [v8 setLineBreakMode:v4];
  [v8 setMinimumScaleFactor:v6];
  [v8 setNumberOfLines:v7];
  [v8 setTextAlignment:v3];
  [v8 setTextColor:*(v1 + 56)];
  [*(v1 + 56) alphaComponent];
  v12 = v11 < 1.0 && !UIAccessibilityIsReduceTransparencyEnabled();
  v13 = [v20 traitCollection];
  v14 = [v5 layer];
  if (v12)
  {
    [v13 userInterfaceStyle];
    sub_AB92A0();
    v15 = sub_AB9260();
  }

  else
  {
    v15 = 0;
  }

  [v14 setCompositingFilter:v15];

  swift_unknownObjectRelease();
  v16 = [v8 layer];
  if (v12)
  {
    [v13 userInterfaceStyle];
    sub_AB92A0();
    v17 = sub_AB9260();
  }

  else
  {
    v17 = 0;
  }

  [v16 setCompositingFilter:v17];

  swift_unknownObjectRelease();
  [v8 setHidden:!v12];
  v18 = [v20 layer];
  [v18 setAllowsGroupOpacity:!v12];

  v21 = [v20 layer];
  [v21 setAllowsGroupBlending:!v12];
}

id sub_3901BC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VibrancyLabelCompositingView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_39029C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_3902E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_3903D0()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_paddingForExcessiveHeightCharacters) = 0;
  v2 = OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel;
  *(v0 + v2) = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_overlayLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_hasExcessiveHeightCharacters) = 0;
  sub_ABAFD0();
  __break(1u);
}

id sub_3904BC()
{
  if (qword_DE6B48 != -1)
  {
    swift_once();
  }

  if ([v0 hasLoadedValuesForPropertySet:qword_E01CE0])
  {
    result = [v0 classicalWork];
    if (!result)
    {
      sub_390A08();
      v3 = v2 != 0;

      return v3;
    }

LABEL_8:

    return &dword_0 + 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_AF4EC0;
  *(v4 + 32) = sub_AB92A0();
  *(v4 + 40) = v5;
  isa = sub_AB9740().super.isa;
  v7 = [objc_opt_self() propertySetWithProperties:isa];

  LODWORD(v4) = [v0 hasLoadedValuesForPropertySet:v7];
  if (v4)
  {
    result = [v0 classicalWork];
    if (!result)
    {
      return result;
    }

    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_390640()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF4EC0;
  *(v1 + 32) = sub_AB92A0();
  *(v1 + 40) = v2;
  isa = sub_AB9740().super.isa;
  v4 = [objc_opt_self() propertySetWithProperties:isa];

  LODWORD(v1) = [v0 hasLoadedValuesForPropertySet:v4];
  if (!v1 || [v0 classicalMovementNumber] < 1)
  {
    return 0;
  }

  v5 = [v0 classicalMovementNumber];
  if (qword_DE6B40 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    swift_beginAccess();
    v6 = off_E01CD8[0];
    if (*(off_E01CD8[0] + &dword_10))
    {
      v7 = sub_2F5A90(v5);
      if (v8)
      {
        break;
      }
    }

    swift_endAccess();
    v11 = 0;
    v12 = v5;
    while (1)
    {
      v13 = &off_CEF918 + 3 * v11;
      v14 = v13[4];
      if (v12 >= v14)
      {
        break;
      }

LABEL_9:
      if (++v11 == 13)
      {
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = off_E01CD8[0];
        off_E01CD8[0] = 0x8000000000000000;
        sub_92368(0, 0xE000000000000000, v5, isUniquelyReferenced_nonNull_native);
        off_E01CD8[0] = v19;
        swift_endAccess();
        return 0;
      }
    }

    v16 = v13[5];
    v15 = v13[6];

    while (1)
    {
      v17 = __OFSUB__(v12, v14);
      v12 -= v14;
      if (v17)
      {
        break;
      }

      v20._countAndFlagsBits = v16;
      v20._object = v15;
      sub_AB94A0(v20);
      if (v12 < v14)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

  v9 = *(*&stru_20.segname[v6 + 16] + 16 * v7);
  swift_endAccess();

  return v9;
}

int *sub_3908D8()
{
  result = sub_96D90(_swiftEmptyArrayStorage);
  off_E01CD8[0] = result;
  return result;
}

void sub_390900()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF8600;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  isa = sub_AB9740().super.isa;
  v7 = [objc_opt_self() propertySetWithProperties:isa];

  qword_E01CE0 = v7;
}

uint64_t sub_390A08()
{
  if (qword_DE6B48 != -1)
  {
    swift_once();
  }

  if (![v0 hasLoadedValuesForPropertySet:qword_E01CE0])
  {
    return 0;
  }

  v1._countAndFlagsBits = [v0 grouping];
  if (v1._countAndFlagsBits)
  {
    countAndFlagsBits = v1._countAndFlagsBits;
    v3 = sub_AB92A0();
    v5 = v4;

    if (![v0 shouldShowComposer])
    {

      v3 = 0;
      v5 = 0;
    }

    v6 = *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor();
    v1._countAndFlagsBits = v3;
    if (v6 == 1 && v5)
    {
      v1._object = v5;
      sub_AB94A0(v1);

      v1._countAndFlagsBits = 10794;
    }
  }

  return v1._countAndFlagsBits;
}

uint64_t sub_390B20()
{
  v42 = sub_AB2B70();
  v1 = *(v42 - 8);
  __chkstk_darwin();
  v3 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAC40, &qword_AFA040);
  __chkstk_darwin();
  v5 = v40 - v4;
  if (qword_DE6B48 != -1)
  {
    swift_once();
  }

  if (![v0 hasLoadedValuesForPropertySet:qword_E01CE0])
  {
    return 0;
  }

  v6 = [v0 title];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = sub_AB92A0();
  v10 = v9;

  v11 = [v0 classicalWork];
  if (v11)
  {
    v12 = v11;
    v13 = sub_AB92A0();
    v15 = v14;
  }

  else
  {
    v16 = sub_390A08();
    if (!v17)
    {
LABEL_29:

      return 0;
    }

    v13 = v16;
    v15 = v17;
  }

  v47 = v13;
  v48 = v15;
  v41 = DeviceCapabilities.isInternalInstall.unsafeMutableAddressor();
  if (*v41 == 1)
  {
    v45 = v13;
    v46 = v15;
    v43 = 10794;
    v44 = 0xE200000000000000;
    v18 = sub_AB35C0();
    (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
    sub_36A48();

    v19 = sub_ABAAE0();
    v21 = v20;
    sub_72894(v5);

    if ((v21 & 1) == 0 && !(v19 >> 14))
    {
      sub_AB93C0();
    }
  }

  v45 = v8;
  v46 = v10;
  v43 = v47;
  v44 = v48;
  v22 = sub_AB35C0();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  sub_36A48();

  v23 = sub_ABAAE0();
  v25 = v24;
  v27 = v26;
  sub_72894(v5);
  swift_bridgeObjectRelease_n();
  if ((v27 & 1) != 0 || v23 >> 14)
  {
    goto LABEL_29;
  }

  v40[1] = v10;
  sub_391020(v25, v8, v10);
  v28 = sub_AB93B0();
  v30 = v29;

  v45 = v28;
  v46 = v30;
  v31 = objc_opt_self();
  v32 = (v1 + 8);
  while (1)
  {
    v43 = v28;
    v44 = v30;

    v33 = sub_AB9260();
    v34 = [v31 characterSetWithCharactersInString:v33];

    sub_AB2B30();
    v35 = sub_ABAA70();
    LOBYTE(v33) = v36;
    (*v32)(v3, v42);

    if ((v33 & 1) != 0 || v35 >> 14)
    {
      break;
    }

    sub_AB93C0();
    v28 = v45;
    v30 = v46;
  }

  if (*v41 == 1)
  {
    v37 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v37 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v37)
    {
      v43 = 10794;
      v44 = 0xE200000000000000;
      v49._countAndFlagsBits = v28;
      v49._object = v30;
      sub_AB94A0(v49);

      v28 = v43;
      v30 = v44;
    }
  }

  v38 = (v30 & 0x2000000000000000) != 0 ? HIBYTE(v30) & 0xF : v28 & 0xFFFFFFFFFFFFLL;

  if (!v38)
  {
    goto LABEL_29;
  }

  return v28;
}

unint64_t sub_391020(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_AB9590();
  }

  __break(1u);
  return result;
}

uint64_t sub_39106C(uint64_t result)
{
  v2 = v1;
  v3 = *&stru_298.segname[(swift_isaMask & *v1) + 16];
  v4 = *(v1 + v3);
  if (v4)
  {
    if (v4 == result)
    {
      return result;
    }

    result = [*(v1 + v3) results];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    v6 = [result totalItemCount];
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v6 = 0;
  }

  if (qword_DE6940 != -1)
  {
    swift_once();
  }

  v7 = sub_AB4BC0();
  __swift_project_value_buffer(v7, qword_E71120);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134349056;
    *(v10 + 4) = v6;
    _os_log_impl(&dword_0, v8, v9, "Did update containerResponse with result count: %{public}ld", v10, 0xCu);
  }

  result = sub_391FC4();
  if ((result & 1) == 0)
  {
    v11 = *(v2 + *(&stru_248.reloff + (swift_isaMask & *v2)));
    v12 = *(v2 + v3);
    v13 = v12;
    sub_1F48E8(v12);
    sub_397854();
    sub_2D6B2C();
    sub_2E494C(0, _swiftEmptyArrayStorage);
    if (!*(v2 + *&stru_298.segname[swift_isaMask & *v2] + 32) && *(v2 + v3))
    {
      sub_396C9C(1);
    }

    v15 = *(v11 + qword_DFE298);
    if (v15)
    {
      v16 = *(v2 + v3);
      v17 = *(v15 + 32);
      *(v15 + 32) = v16;

      v18 = v16;
    }

    sub_398330(v14);

    return sub_39382C();
  }

  return result;
}

uint64_t sub_3912DC(uint64_t result)
{
  v2 = v1;
  v3 = *&stru_298.segname[(swift_isaMask & *v1) + 16];
  v4 = *(v1 + v3);
  if (v4)
  {
    if (v4 == result)
    {
      return result;
    }

    result = [*(v1 + v3) results];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    v6 = [result totalItemCount];
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v6 = 0;
  }

  if (qword_DE6940 != -1)
  {
    swift_once();
  }

  v7 = sub_AB4BC0();
  __swift_project_value_buffer(v7, qword_E71120);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134349056;
    *(v10 + 4) = v6;
    _os_log_impl(&dword_0, v8, v9, "Did update containerResponse with result count: %{public}ld", v10, 0xCu);
  }

  result = sub_392A04();
  if ((result & 1) == 0)
  {
    v11 = *(v2 + *(&stru_248.reloff + (swift_isaMask & *v2)));
    v12 = *(v2 + v3);
    v13 = v12;
    sub_4FDF0(v12);
    sub_3979CC();
    sub_2D6E18();
    (*(&stru_6F8.offset + (swift_isaMask & *v2)))(0, _swiftEmptyArrayStorage);
    if (!*(v2 + *&stru_298.segname[swift_isaMask & *v2] + 32) && *(v2 + v3))
    {
      sub_396EB4(1);
    }

    v15 = *(v11 + qword_DFE298);
    if (v15)
    {
      v16 = *(v2 + v3);
      v17 = *(v15 + 32);
      *(v15 + 32) = v16;

      v18 = v16;
    }

    sub_397BD0(v14);

    return sub_393984();
  }

  return result;
}

void sub_391588(void *a1)
{
  v2 = v1;
  v4 = *(&stru_298.size + (swift_isaMask & *v1));
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = v5;
    v7 = [v6 identifier];
    v8 = sub_AB92A0();
    v10 = v9;

    if (!a1)
    {
      if (!v10)
      {
        return;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v10 = 0;
    v8 = 0;
  }

  v11 = [a1 identifier];
  v12 = sub_AB92A0();
  v14 = v13;

  if (!v10)
  {
    if (!v14)
    {
      return;
    }

LABEL_18:

    v17 = *(v2 + v4);
    if (!v17)
    {
LABEL_19:
      v20 = 0;
      v21 = swift_isaMask & *v2;
      goto LABEL_20;
    }

LABEL_15:
    v18 = objc_allocWithZone(SLAttributionView);
    v19 = v17;
    v20 = [v18 initWithHighlight:v19];
    [*(v2 + *(&stru_248.reserved2 + (swift_isaMask & *v2))) frame];
    [v20 prepareLayoutWithMaxWidth:CGRectGetWidth(v31)];

    v21 = swift_isaMask & *v2;
LABEL_20:
    v22 = *(v2 + *(v21 + 640));
    v23 = *&v22[qword_E08840];
    *&v22[qword_E08840] = v20;

    v24 = *(v2 + *&stru_298.segname[swift_isaMask & *v2] + 8);
    if (v24)
    {
      v25 = *(v2 + v4) != 0;
      v26 = v24;
      JSContainerDetail.hasSharedContent.setter(v25);
    }

    if ([v2 isViewLoaded])
    {
      sub_2D62C0();
      sub_3933A4();
      v27 = *(v2 + *(&stru_248.reserved2 + (swift_isaMask & *v2)));
      (*(&stru_748.offset + (swift_isaMask & *v2)))(v27, 1);
      [v27 setNeedsLayout];
      [v22 loadViewIfNeeded];
      v28 = *&v22[qword_DFE2F8];
      if (v28)
      {
        [v28 reloadData];

        sub_397BD0(v29);
      }

      else
      {
        __break(1u);
      }
    }

    return;
  }

  if (!v14)
  {
    goto LABEL_18;
  }

  if (v8 != v12 || v10 != v14)
  {
    v16 = sub_ABB3C0();

    if (v16)
    {
      return;
    }

    v17 = *(v2 + v4);
    if (!v17)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }
}

void sub_391910(void *a1)
{
  v2 = v1;
  v4 = *(&stru_298.size + (swift_isaMask & *v1));
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = v5;
    v7 = [v6 identifier];
    v8 = sub_AB92A0();
    v10 = v9;

    if (!a1)
    {
      if (!v10)
      {
        return;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v10 = 0;
    v8 = 0;
  }

  v11 = [a1 identifier];
  v12 = sub_AB92A0();
  v14 = v13;

  if (!v10)
  {
    if (!v14)
    {
      return;
    }

LABEL_18:

    v17 = *(v2 + v4);
    if (!v17)
    {
LABEL_19:
      v20 = 0;
      v21 = swift_isaMask & *v2;
      goto LABEL_20;
    }

LABEL_15:
    v18 = objc_allocWithZone(SLAttributionView);
    v19 = v17;
    v20 = [v18 initWithHighlight:v19];
    [*(v2 + *(&stru_248.reserved2 + (swift_isaMask & *v2))) frame];
    [v20 prepareLayoutWithMaxWidth:CGRectGetWidth(v31)];

    v21 = swift_isaMask & *v2;
LABEL_20:
    v22 = *(v2 + *(v21 + 640));
    v23 = *&v22[qword_E08840];
    *&v22[qword_E08840] = v20;

    v24 = *(v2 + *&stru_298.segname[swift_isaMask & *v2] + 8);
    if (v24)
    {
      v25 = *(v2 + v4) != 0;
      v26 = v24;
      JSContainerDetail.hasSharedContent.setter(v25);
    }

    if ([v2 isViewLoaded])
    {
      sub_2D5EA4();
      sub_3933A4();
      v27 = *(v2 + *(&stru_248.reserved2 + (swift_isaMask & *v2)));
      (*(&stru_748.offset + (swift_isaMask & *v2)))(v27, 1);
      [v27 setNeedsLayout];
      [v22 loadViewIfNeeded];
      v28 = *&v22[qword_DFE2F8];
      if (v28)
      {
        [v28 reloadData];

        sub_398330(v29);
      }

      else
      {
        __break(1u);
      }
    }

    return;
  }

  if (!v14)
  {
    goto LABEL_18;
  }

  if (v8 != v12 || v10 != v14)
  {
    v16 = sub_ABB3C0();

    if (v16)
    {
      return;
    }

    v17 = *(v2 + v4);
    if (!v17)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }
}

void sub_391C98(char a1)
{
  v2 = swift_isaMask & *v1;
  v3 = *(&stru_298.reloff + v2);
  v4 = *(v1 + v3);
  if (v4 != (a1 & 1))
  {
    v5 = v1;
    if (v4)
    {
      v6 = 2;
    }

    else
    {
      v7 = v1 + *&stru_298.segname[swift_isaMask & *v1];
      if (v7[56])
      {
        v6 = 1;
      }

      else
      {
        v8 = *(v7 + 8);
        v31 = *(v7 + 9);
        v9 = *(v7 + 5);
        v10 = *(v7 + 3);
        v11 = *(v7 + 4);
        v13 = *(v7 + 1);
        v12 = *(v7 + 2);
        v14 = *v7;
        v32 = *(v7 + 6);
        v35 = v14;
        v34 = v13;
        v33 = v12;
        v15 = v10;
        v16 = v11;
        v17 = v9;
        sub_9007C(v8, v31);
        LOBYTE(v10) = sub_39719C(v10, 0x6B63617065646973, 0xEE006D6574496465);

        sub_466A4(v8, v31);
        v6 = v10;
        v2 = swift_isaMask & *v5;
      }
    }

    v18 = *(v2 + 864);
    v19 = *(v5 + v18);
    *(v5 + v18) = v6;
    if ((sub_3B3030(v6, v19) & 1) == 0)
    {
      *(*(v5 + *(&stru_248.reserved2 + (swift_isaMask & *v5))) + OBJC_IVAR____TtC16MusicApplication12DetailHeader_layout) = 0x20001u >> (8 * *(v5 + v18));
      sub_2A0600();
    }

    v20 = *(v5 + *(&stru_298.reserved2 + (swift_isaMask & *v5)));
    if (v20)
    {
      v21 = *(v5 + v3);
      v22 = v20[OBJC_IVAR____TtC16MusicApplication12ParallaxView_hideVideoBackground];
      v20[OBJC_IVAR____TtC16MusicApplication12ParallaxView_hideVideoBackground] = v21;
      if (v21 != v22)
      {
        v23 = *&v20[OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView];
        v24 = v20;
        v25 = v23;
        sub_4F1A58(v21);
      }
    }

    sub_393564();
    sub_393984();
    v26 = sub_4D3DD0();
    [v26 setKeyboardDismissMode:*(v5 + v3)];

    if (*(v5 + v3) == 1)
    {
      v27 = *&stru_298.sectname[swift_isaMask & *v5];
      v28 = *(v5 + v27);
      *(v5 + v27) = 0;

      v29 = *(v5 + *(&stru_248.reloff + (swift_isaMask & *v5)));
      v30 = *(v29 + qword_E08848);
      *(v29 + qword_E08848) = 0;

      *(v29 + qword_E08860) = 0;
      sub_49134();
    }
  }
}

id sub_391FC4()
{
  v1 = v0;
  result = (*&stru_4C8.segname[swift_isaMask & *v0])();
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = [result results];
  if (!result)
  {
LABEL_56:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = [result totalItemCount];

  if (v5 || (v6 = v1 + *&stru_298.segname[swift_isaMask & *v1], (v7 = *(v6 + 1)) == 0))
  {

    return 0;
  }

  v8 = *(v6 + 2);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    v12 = MPModelObject.bestIdentifier(for:)(*v11, 0);
    v14 = v13;

    if (v14)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v15 = v7;
  }

  v12 = JSContainerDetail.containerStoreID.getter();
  v14 = v16;

  if (!v14)
  {

    return 0;
  }

LABEL_13:
  (*(&stru_478.reserved2 + (swift_isaMask & *v1)))(v78);
  v76[2] = v78[2];
  v76[3] = v78[3];
  v77 = v79;
  v76[0] = v78[0];
  v76[1] = v78[1];
  sub_12E1C(v76, &unk_DFDD48, &unk_B08B58);
  if (*(v1 + *(&stru_298.reloff + (swift_isaMask & *v1))) == 1)
  {

    return 0;
  }

  v17 = *&stru_2E8.sectname[swift_isaMask & *v1];
  if (*(v17 + v1) > 2)
  {
    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v27 = sub_AB4BC0();
    __swift_project_value_buffer(v27, qword_E71120);

    v28 = sub_AB4BA0();
    v29 = sub_AB9F50();

    if (!os_log_type_enabled(v28, v29))
    {

      return 0;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v78[0] = v31;
    *v30 = 136446210;
    v32 = sub_425E68(v12, v14, v78);

    *(v30 + 4) = v32;
    _os_log_impl(&dword_0, v28, v29, "ContainerDetailRequest had no results, and exceeded maximum retries for container with id: %{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);

    goto LABEL_26;
  }

  JSContainerDetail.containerDetailedResponseIsReady.getter();
  if ((v18 & 1) == 0)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      if (qword_DE6940 != -1)
      {
        swift_once();
      }

      v33 = sub_AB4BC0();
      __swift_project_value_buffer(v33, qword_E71120);

      v74 = v1;
      v34 = sub_AB4BA0();
      v35 = sub_AB9F50();

      if (!os_log_type_enabled(v34, v35))
      {

        goto LABEL_41;
      }

      v73 = v35;
      v36 = swift_slowAlloc();
      result = swift_slowAlloc();
      v71 = result;
      *&v78[0] = result;
      *v36 = 134218242;
      v37 = *(v17 + v1);
      v25 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (!v25)
      {
        *(v36 + 4) = v38;

        *(v36 + 12) = 2082;
        v12 = sub_425E68(v12, v14, v78);

        *(v36 + 14) = v12;
        _os_log_impl(&dword_0, v34, v73, "ContainerDetailRequest had no library results but we have catalog results. Scheduling a catalog request retry (#%ld) for container with id: %{public}s", v36, 0x16u);
        v14 = v71;
        __swift_destroy_boxed_opaque_existential_0(v71);

        goto LABEL_41;
      }

      __break(1u);
      goto LABEL_56;
    }

    if (qword_DE6940 != -1)
    {
LABEL_54:
      swift_once();
    }

    v39 = sub_AB4BC0();
    __swift_project_value_buffer(v39, qword_E71120);
    v28 = sub_AB4BA0();
    v40 = sub_AB9F50();
    if (!os_log_type_enabled(v28, v40))
    {
LABEL_27:

      return 0;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_0, v28, v40, "Container detail response isn't ready yet, still waiting for JS to provide the container's detailed track data.", v41, 2u);
LABEL_26:

    goto LABEL_27;
  }

  v74 = v17;
  if (qword_DE6940 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v19 = sub_AB4BC0();
    __swift_project_value_buffer(v19, qword_E71120);

    v20 = v1;
    v21 = sub_AB4BA0();
    v22 = sub_AB9F50();

    if (os_log_type_enabled(v21, v22))
    {
      v72 = v22;
      v23 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&v78[0] = v70;
      *v23 = 134218242;
      v24 = *(v74 + v1);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        goto LABEL_54;
      }

      *(v23 + 4) = v26;

      *(v23 + 12) = 2082;
      v12 = sub_425E68(v12, v14, v78);

      *(v23 + 14) = v12;
      _os_log_impl(&dword_0, v21, v72, "ContainerDetailRequest had no results, scheduling a retry (#%ld) for container with id: %{public}s", v23, 0x16u);
      v14 = v70;
      __swift_destroy_boxed_opaque_existential_0(v70);
    }

    else
    {
    }

    v17 = v74;
LABEL_41:
    v42 = *(v17 + v1);
    v25 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (!v25)
    {
      break;
    }

    __break(1u);
LABEL_52:
    swift_once();
  }

  *(v17 + v1) = v43;
  v44 = type metadata accessor for JSContainerDetailModelRequest();
  v45 = objc_allocWithZone(v44);
  v46 = &v45[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
  *v46 = 0;
  v46[1] = 0;
  v45[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
  swift_unknownObjectWeakInit();
  v47 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
  *&v45[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
  v45[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
  *&v45[v47] = v7;
  v75.receiver = v45;
  v75.super_class = v44;
  v48 = v7;
  v49 = objc_msgSendSuper2(&v75, "init");
  if ((v48[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind] & 0xFE) == 2)
  {
    sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
    v50 = v49;
    v51 = static MPModelAlbum.defaultMusicKind.getter();
    [v50 setSectionKind:v51];

    v52 = [objc_opt_self() kindWithVariants:3];
    v53 = v52;
  }

  else
  {
    sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
    v52 = static MPModelPlaylistEntry.defaultMusicKind.getter();
    v54 = objc_opt_self();
    v53 = v49;
    v55 = [v54 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v52 options:0];
    [v53 setSectionKind:v55];

    v50 = v52;
  }

  [v49 setItemKind:v52];

  v56 = *v6;
  *v6 = v49;

  v57 = [v1 traitCollection];
  v58 = UITraitCollection.mediaPickerConfiguration.getter();
  if (v58)
  {
    v59 = v58;

    v60 = objc_allocWithZone(type metadata accessor for JSMediaPickerEnvironment());
    v61 = v59;
    v62 = JSMediaPickerEnvironment.init(configuration:)(v61);
    v63 = *(v6 + 4);
    if (v63)
    {
      v64 = *&stru_108.segname[(swift_isaMask & *v63) - 8];
      v65 = v63;
      v66 = v62;
      v67 = v64(v78);
      v69 = *v68;
      *v68 = v62;

      v67(v78, 0);
    }

    else
    {
    }

    return &dword_0 + 1;
  }

  else
  {

    return &dword_0 + 1;
  }
}

id sub_392A04()
{
  v1 = v0;
  result = (*&stru_4C8.segname[swift_isaMask & *v0])();
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = [result results];
  if (!result)
  {
LABEL_59:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = [result totalItemCount];

  if (v5 || (v6 = v1 + *&stru_298.segname[swift_isaMask & *v1], (v7 = *(v6 + 1)) == 0))
  {

    return 0;
  }

  v8 = *(v6 + 2);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    v12 = MPModelObject.bestIdentifier(for:)(*v11, 0);
    v14 = v13;

    if (v14)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v15 = v7;
  }

  v12 = JSContainerDetail.containerStoreID.getter();
  v14 = v16;

  if (!v14)
  {

LABEL_44:
    return 0;
  }

LABEL_13:
  (*(&stru_478.reserved2 + (swift_isaMask & *v1)))(&v72);
  v81[6] = v78;
  v81[7] = v79;
  v82 = v80;
  v81[2] = v74;
  v81[3] = v75;
  v81[4] = v76;
  v81[5] = v77;
  v81[0] = v72;
  v81[1] = v73;
  if (sub_11D03C(v81) == 1)
  {
    v69 = v78;
    v70 = v79;
    v71 = v80;
    v65 = v74;
    v66 = v75;
    v67 = v76;
    v68 = v77;
    v63 = v72;
    v64 = v73;
LABEL_21:
    v20 = sub_12E1C(&v63, &unk_DFDD90, &unk_B08BA8);
    goto LABEL_22;
  }

  v69 = v78;
  v70 = v79;
  v71 = v80;
  v65 = v74;
  v66 = v75;
  v67 = v76;
  v68 = v77;
  v63 = v72;
  v64 = v73;
  if (!*(&v75 + 1))
  {
    goto LABEL_21;
  }

  v17 = MPModelPropertyPlaylistIsOwner;
  v18 = *(&v66 + 1);
  if (![v18 hasLoadedValueForKey:v17])
  {

    goto LABEL_21;
  }

  v19 = [v18 isOwner];

  v20 = sub_12E1C(&v63, &unk_DFDD90, &unk_B08BA8);
  if (v19)
  {
    goto LABEL_23;
  }

LABEL_22:
  if ((*(&stru_4C8.reserved2 + (swift_isaMask & *v1)))(v20))
  {
LABEL_23:

    return 0;
  }

  v21 = *&stru_2E8.sectname[swift_isaMask & *v1];
  if (*(v1 + v21) > 2)
  {
    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v32 = sub_AB4BC0();
    __swift_project_value_buffer(v32, qword_E71120);

    v33 = sub_AB4BA0();
    v34 = sub_AB9F50();

    if (!os_log_type_enabled(v33, v34))
    {

      goto LABEL_44;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v72 = v36;
    *v35 = 136446210;
    v37 = sub_425E68(v12, v14, &v72);

    *(v35 + 4) = v37;
    _os_log_impl(&dword_0, v33, v34, "ContainerDetailRequest had no results, and exceeded maximum retries for container with id: %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);

    goto LABEL_34;
  }

  JSContainerDetail.containerDetailedResponseIsReady.getter();
  if ((v22 & 1) == 0)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      if (qword_DE6940 != -1)
      {
        swift_once();
      }

      v38 = sub_AB4BC0();
      __swift_project_value_buffer(v38, qword_E71120);

      v24 = v1;
      v25 = sub_AB4BA0();
      v26 = sub_AB9F50();

      if (!os_log_type_enabled(v25, v26))
      {
        goto LABEL_45;
      }

      v61 = v24;
      v27 = swift_slowAlloc();
      result = swift_slowAlloc();
      v59 = result;
      *&v72 = result;
      *v27 = 134218242;
      v39 = *(v1 + v21);
      v29 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (!v29)
      {
        *(v27 + 4) = v40;

        *(v27 + 12) = 2082;
        v12 = sub_425E68(v12, v14, &v72);

        *(v27 + 14) = v12;
        v31 = "ContainerDetailRequest had no library results but we have catalog results. Scheduling a catalog request retry (#%ld) for container with id: %{public}s";
        goto LABEL_42;
      }

      __break(1u);
      goto LABEL_59;
    }

    if (qword_DE6940 != -1)
    {
LABEL_57:
      swift_once();
    }

    v56 = sub_AB4BC0();
    __swift_project_value_buffer(v56, qword_E71120);
    v33 = sub_AB4BA0();
    v57 = sub_AB9F50();
    if (!os_log_type_enabled(v33, v57))
    {
      goto LABEL_35;
    }

    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_0, v33, v57, "Container detail response isn't ready yet, still waiting for JS to provide the container's detailed track data.", v58, 2u);
LABEL_34:

LABEL_35:

    goto LABEL_44;
  }

  if (qword_DE6940 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v23 = sub_AB4BC0();
    __swift_project_value_buffer(v23, qword_E71120);

    v24 = v1;
    v25 = sub_AB4BA0();
    v26 = sub_AB9F50();

    if (os_log_type_enabled(v25, v26))
    {
      v60 = v24;
      v27 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v72 = v59;
      *v27 = 134218242;
      v28 = *(v1 + v21);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        __break(1u);
        goto LABEL_57;
      }

      *(v27 + 4) = v30;

      *(v27 + 12) = 2082;
      v12 = sub_425E68(v12, v14, &v72);

      *(v27 + 14) = v12;
      v31 = "ContainerDetailRequest had no results, scheduling a retry (#%ld) for container with id: %{public}s";
LABEL_42:
      _os_log_impl(&dword_0, v25, v26, v31, v27, 0x16u);
      v14 = v59;
      __swift_destroy_boxed_opaque_existential_0(v59);
    }

    else
    {
LABEL_45:
    }

    v41 = *(v1 + v21);
    v29 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (!v29)
    {
      break;
    }

    __break(1u);
LABEL_55:
    swift_once();
  }

  *(v1 + v21) = v42;
  v43 = type metadata accessor for JSContainerDetailModelRequest();
  v44 = objc_allocWithZone(v43);
  v45 = &v44[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
  *v45 = 0;
  v45[1] = 0;
  v44[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
  swift_unknownObjectWeakInit();
  v46 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
  *&v44[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
  v44[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
  *&v44[v46] = v7;
  v62.receiver = v44;
  v62.super_class = v43;
  v47 = v7;
  v48 = objc_msgSendSuper2(&v62, "init");
  if ((v47[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind] & 0xFE) == 2)
  {
    sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
    v49 = v48;
    v50 = static MPModelAlbum.defaultMusicKind.getter();
    [v49 setSectionKind:v50];

    v51 = [objc_opt_self() kindWithVariants:3];
    v52 = v51;
  }

  else
  {
    sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
    v51 = static MPModelPlaylistEntry.defaultMusicKind.getter();
    v53 = objc_opt_self();
    v52 = v48;
    v54 = [v53 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v51 options:0];
    [v52 setSectionKind:v54];

    v49 = v51;
  }

  [v48 setItemKind:{v51, v59}];

  v55 = *v6;
  *v6 = v48;

  sub_23E9B8();
  return &dword_0 + 1;
}

void sub_3933A4()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;

  v5 = [v0 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  if (v4 <= 592.0)
  {

    goto LABEL_6;
  }

  v7 = sub_ABA340();

  if ((v7 & 1) == 0)
  {
LABEL_6:
    v9 = swift_isaMask & *v0;
    v10 = 2 * (*(v0 + *(&stru_298.reserved2 + v9)) != 0);
    v8 = 1;
    goto LABEL_7;
  }

  v8 = 0;
  v9 = swift_isaMask & *v0;
  v10 = 1;
LABEL_7:
  v11 = *(v0 + *(v9 + 640));
  *(v11 + qword_E08830) = v10;
  if (*(v11 + qword_E08840))
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {

      [v12 updateAlignment:v8];
    }
  }
}

void sub_393564()
{
  v1 = *(v0 + *(&stru_298.reserved2 + (swift_isaMask & *v0)));
  if (v1)
  {
    v27 = v1;
    v2 = sub_4D3DD0();
    [v2 bounds];
    [v27 setFrame:?];

    v3 = *(v0 + *(&stru_248.reserved2 + (swift_isaMask & *v0)));
    v4 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView;
    [*(v0 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView) bounds];
    Width = CGRectGetWidth(v29);
    [*(v0 + v4) bounds];
    [v3 sizeThatFits:{Width, CGRectGetHeight(v30)}];
    v7 = v6;
    v8 = [v0 view];
    if (v8)
    {
      v9 = v8;
      [v8 safeAreaInsets];
      v11 = v10;

      v12 = v27;
      v13 = *&v27[OBJC_IVAR____TtC16MusicApplication12ParallaxView_preferredContentViewHeight];
      *&v27[OBJC_IVAR____TtC16MusicApplication12ParallaxView_preferredContentViewHeight] = v7 + v11;
      if (v7 + v11 != v13)
      {
        [v27 setNeedsLayout];
        v12 = v27;
      }

      v14 = *(*(v0 + *(&stru_248.reloff + (swift_isaMask & *v0))) + qword_E08820);
      v15 = v12;
      if (v14)
      {
        v15 = v14;
        [v27 bounds];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v31.origin.x = v17;
        v31.origin.y = v19;
        v31.size.width = v21;
        v31.size.height = v23;
        CGRectGetWidth(v31);
        [v15 bounds];
        [v15 setBounds:?];
      }

      v24 = *(v0 + *&stru_338.segname[(swift_isaMask & *v0) + 8]);
      if (v24)
      {
        v25 = *(*v24 + 264);

        v25(v26);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_39382C()
{
  if (*(v0 + *(&stru_298.reloff + (swift_isaMask & *v0))) == 1 && (v1 = (*&stru_4C8.segname[swift_isaMask & *v0])()) != 0)
  {
    v2 = v1;
    v3 = [v1 isEmpty];
  }

  else
  {
    v3 = 0;
  }

  v4 = swift_isaMask & *v0;
  v5 = *(v0 + *(&stru_298.reserved2 + v4));
  if (v5)
  {
    [*(*(v5 + OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView) + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_controlsView) setHidden:v3];
    v4 = swift_isaMask & *v0;
  }

  v6 = *(*(v0 + *(v4 + 640)) + qword_E08820);

  return [v6 setHidden:v3];
}

id sub_393984()
{
  if (((*(&stru_4C8.reserved2 + (swift_isaMask & *v0)))() & 1) != 0 && (v1 = (*&stru_4C8.segname[swift_isaMask & *v0])()) != 0)
  {
    v2 = v1;
    v3 = [v1 isEmpty];
  }

  else
  {
    v3 = 0;
  }

  v4 = swift_isaMask & *v0;
  v5 = *(v0 + *(&stru_298.reserved2 + v4));
  if (v5)
  {
    [*(*(v5 + OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView) + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_controlsView) setHidden:v3];
    v4 = swift_isaMask & *v0;
  }

  v6 = *(*(v0 + *(v4 + 640)) + qword_E08820);

  return [v6 setHidden:v3];
}

void sub_393AE4(void *a1, uint64_t a2)
{
  v3 = v2;
  v67 = a2;
  v68 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v5 = &v61 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v7 = &v61 - v6;
  v8 = type metadata accessor for PlaybackIntentDescriptor(0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v65 = v10;
  v66 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v61 - v12;
  v14 = swift_isaMask & *v2;
  v15 = *(v2 + *(&stru_248.reloff + v14));
  v63 = *&stru_4C8.segname[v14];
  v64 = (v14 + 1240);
  v16 = v63(v11);
  v17 = sub_AB3820();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  sub_5002C(v16, v5, v7);
  sub_12E1C(v5, &unk_DE8E20, &qword_AF7990);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_12E1C(v7, &unk_DEA510, "\b]\r");
    return;
  }

  sub_140E58(v7, v13);
  v18 = v68;
  [v68 bounds];
  v79[0] = v18;
  v79[1] = v19;
  v79[2] = v20;
  v79[3] = v21;
  v79[4] = v22;
  v80 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v79, 15, v71);
  v75[0] = v71[0];
  v75[1] = v71[1];
  v76 = v72;
  v77 = v73;
  v78 = v74;
  v23 = v18;
  v24 = v3;
  v29 = PresentationSource.init(viewController:position:)(v24, v75, v70);
  v30 = *(v15 + qword_DFE2F0);
  v31 = v13;
  v62 = v13;
  if (v30)
  {
    v32 = [v30 results];
    if (!v32)
    {
      __break(1u);
      return;
    }

    v33 = v32;
    v34 = [v32 firstSection];

    if (v34)
    {
      objc_opt_self();
      v35 = swift_dynamicCastObjCClass();
      if (v35)
      {
        v68 = v35;
        if (qword_DE6838 != -1)
        {
          v35 = swift_once();
        }

        v61 = qword_E70E48;
        v64 = (v63)(v35, v36);
        v37 = v66;
        sub_3A7240(v31, v66, type metadata accessor for PlaybackIntentDescriptor);
        sub_15F28(v70, v69);
        v38 = (*(v9 + 80) + 16) & ~*(v9 + 80);
        v39 = (v65 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
        v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
        v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
        v42 = swift_allocObject();
        sub_140E58(v37, v42 + v38);
        v43 = v68;
        *(v42 + v39) = v67;
        *(v42 + v40) = v24;
        *(v42 + v41) = v43;
        sub_17704(v69, v42 + ((v41 + 15) & 0xFFFFFFFFFFFFFFF8));
        v44 = v24;
        swift_unknownObjectRetain();
        v45 = v64;
        sub_1109D4(v43, v64, 0, 1, v70, sub_3A745C, v42);
        swift_unknownObjectRelease();

        goto LABEL_12;
      }

      v30 = swift_unknownObjectRelease();
    }
  }

  v46 = PlaybackIntentDescriptor.intent.getter(v29, v30, v25, v26, v27, v28);
  [v46 setShuffleMode:v67];

  v53 = PlaybackIntentDescriptor.intent.getter(v52, v47, v48, v49, v50, v51);
  [v53 setRepeatMode:0];

  sub_37D3DC(0);
LABEL_12:
  v54 = [v24 navigationItem];
  v55 = [v24 parentViewController];
  if (v55)
  {
    v56 = v55;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v57 = v56;
      v58 = [v57 navigationItem];

      v56 = [v57 parentViewController];
      v54 = v58;
      if (!v56)
      {
        goto LABEL_19;
      }
    }
  }

  v58 = v54;
LABEL_19:
  v59 = [v58 searchController];
  if (v59)
  {
    v60 = v59;

    v58 = [v60 searchBar];
    [v58 resignFirstResponder];
  }

  sub_1611C(v70);
  sub_1914D8(v62);
}

void sub_394134(unsigned __int8 a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a1;
  v12 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  if (v11 != 1)
  {
    return;
  }

  v14 = sub_15F28(a6, v42);
  v20 = PlaybackIntentDescriptor.intent.getter(v19, v14, v15, v16, v17, v18);
  [v20 setShuffleMode:a3];

  v27 = PlaybackIntentDescriptor.intent.getter(v26, v21, v22, v23, v24, v25);
  [v27 setRepeatMode:0];

  v35[1] = a5;
  sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
  v28 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA9B0, &qword_B059E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    goto LABEL_10;
  }

  if (!*(&v37 + 1))
  {
LABEL_10:
    sub_12E1C(&v36, &unk_DFA9A0, &qword_B059D8);
LABEL_12:
    sub_37D3DC(0);
    sub_12E1C(v42, &unk_DEA520, &unk_AFDBF0);
    return;
  }

  sub_70DF8(&v36, v39);
  v29 = v40;
  v30 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  if (((*(v30 + 16))(v29, v30) & 1) != 0 || (v31 = (*&stru_4C8.segname[swift_isaMask & *a4])()) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v39);
    goto LABEL_12;
  }

  v32 = v31;
  if (qword_DE6838 != -1)
  {
    swift_once();
  }

  sub_3A7240(a2, v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaybackIntentDescriptor);
  v33 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v34 = swift_allocObject();
  sub_140E58(v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33);
  sub_111FD0(v39, v32, v42, sub_3A764C, v34);
  sub_12E1C(v42, &unk_DEA520, &unk_AFDBF0);

  __swift_destroy_boxed_opaque_existential_0(v39);
}

void sub_39446C()
{
  v1 = (*&stru_4C8.segname[swift_isaMask & *v0])();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 results];

    if (v3)
    {
      v4 = [v3 firstSection];

      if (v4)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_39453C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02D30, &unk_B0C620);
  v7 = v1;
  v6[0] = v0;
  v2 = v0;
  sub_29CBEC(v6, "link:", 0);
  sub_12E1C(v6, &unk_DE8E40, &unk_AF8050);
  v7 = v1;
  v6[0] = v2;
  v3 = v2;
  sub_29CBEC(v6, "play:", 1);
  sub_12E1C(v6, &unk_DE8E40, &unk_AF8050);
  v7 = v1;
  v6[0] = v3;
  v4 = v3;
  sub_29CBEC(v6, "shuffle:", 2);
  sub_12E1C(v6, &unk_DE8E40, &unk_AF8050);
  v7 = v1;
  v6[0] = v4;
  v4;
  sub_29CBEC(v6, "more:", 3);
  sub_12E1C(v6, &unk_DE8E40, &unk_AF8050);
  sub_397BD0(v5);
}

double sub_394688(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (*(&stru_6F8.flags + (swift_isaMask & *v2)))();
  v8 = *&stru_2E8.segname[swift_isaMask & *v2];
  if (v6)
  {
    *(v2 + v8) = 0;
    v9 = (*&stru_748.segname[(swift_isaMask & *v2) + 8])();
    v10 = [v2 traitCollection];
    if ((UITraitCollection.legacyLibraryFilter.getter().rawValue & 2) != 0)
    {
      v11 = *(v3 + *&stru_298.segname[swift_isaMask & *v3] + 56);

      if ((v11 & 1) == 0)
      {
        goto LABEL_7;
      }

      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {
        goto LABEL_7;
      }

      v13 = v12;
      v10 = v9;
      [v13 setFilteringOptions:{objc_msgSend(v13, "filteringOptions") | 2}];
    }

LABEL_7:
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a1;
    v15[4] = a2;
    v24[4] = sub_3A7730;
    v24[5] = v15;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 1107296256;
    v24[2] = sub_151E0;
    v24[3] = &block_descriptor_263;
    v16 = _Block_copy(v24);
    sub_307CC(a1, a2);

    [v9 performWithResponseHandler:v16];
    _Block_release(v16);

    return result;
  }

  *(v2 + v8) = 1;
  if (a1)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    v18 = *&stru_2E8.segname[(swift_isaMask & *v3) + 8];
    swift_beginAccess();
    v19 = *(v3 + v18);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v18) = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_6AFC0(0, v19[2] + 1, 1, v19);
      *(v3 + v18) = v19;
    }

    v22 = v19[2];
    v21 = v19[3];
    if (v22 >= v21 >> 1)
    {
      v19 = sub_6AFC0((v21 > 1), v22 + 1, 1, v19);
    }

    v19[2] = v22 + 1;
    v23 = &v19[2 * v22];
    v23[4] = sub_381190;
    v23[5] = v17;
    *(v3 + v18) = v19;
    swift_endAccess();
  }

  return result;
}

double sub_3949D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&stru_2E8.segname[swift_isaMask & *v2];
  if (*(v2 + *&stru_2E8.segname[(swift_isaMask & *v2) - 8]) == 1)
  {
    *(v2 + v6) = 0;
    v7 = (*&stru_748.segname[(swift_isaMask & *v2) + 8])();
    v8 = [v2 traitCollection];
    if ((UITraitCollection.legacyLibraryFilter.getter().rawValue & 2) != 0)
    {
      v9 = *(v3 + *&stru_298.segname[swift_isaMask & *v3] + 56);

      if ((v9 & 1) == 0)
      {
        goto LABEL_7;
      }

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (!v10)
      {
        goto LABEL_7;
      }

      v11 = v10;
      v8 = v7;
      [v11 setFilteringOptions:{objc_msgSend(v11, "filteringOptions") | 2}];
    }

LABEL_7:
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = a1;
    v13[4] = a2;
    v23[4] = sub_3A7F3C;
    v23[5] = v13;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 1107296256;
    v23[2] = sub_151E0;
    v23[3] = &block_descriptor_481;
    v14 = _Block_copy(v23);
    sub_307CC(a1, a2);

    [v7 performWithResponseHandler:v14];
    _Block_release(v14);

    return result;
  }

  *(v2 + v6) = 1;
  if (a1)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    v17 = *&stru_2E8.segname[(swift_isaMask & *v3) + 8];
    swift_beginAccess();
    v18 = *(v3 + v17);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v17) = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_6AFC0(0, v18[2] + 1, 1, v18);
      *(v3 + v17) = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      v18 = sub_6AFC0((v20 > 1), v21 + 1, 1, v18);
    }

    v18[2] = v21 + 1;
    v22 = &v18[2 * v21];
    v22[4] = sub_3A8170;
    v22[5] = v16;
    *(v3 + v17) = v18;
    swift_endAccess();
  }

  return result;
}

double sub_394D34(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      swift_errorRetain();
      sub_3951E0(a2, 1);
    }
  }

  else
  {
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = a1;
      v14 = a1;
      v15 = v12;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3A777C, v13);
    }
  }

  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a1;
  sub_307CC(a4, a5);
  v17 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3A7788, v16);

  return result;
}

double sub_394EE0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      swift_errorRetain();
      sub_395784(a2, 1);
    }
  }

  else
  {
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = a1;
      v14 = a1;
      v15 = v12;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3A7F48, v13);
    }
  }

  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a1;
  sub_307CC(a4, a5);
  v17 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3A8180, v16);

  return result;
}

void sub_39508C()
{
  v1 = v0;
  v6 = (*&stru_748.segname[(swift_isaMask & *v0) + 8])();
  v2 = [v0 traitCollection];
  if ((UITraitCollection.legacyLibraryFilter.getter().rawValue & 2) == 0)
  {
    goto LABEL_5;
  }

  v3 = *(v1 + *&stru_298.segname[swift_isaMask & *v1] + 56);

  if (v3 == 1)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v2 = v6;
      [v5 setFilteringOptions:{objc_msgSend(v5, "filteringOptions") | 2}];
LABEL_5:
    }
  }

  sub_3F12EC(v6);
}

void sub_3951E0(void *a1, char a2)
{
  if (a2)
  {
    v4 = v2 + *&stru_298.segname[swift_isaMask & *v2];
    v5 = *(v4 + 2);
    if (v5)
    {
      sub_21A5DC(a1, 1);
      v6 = v5;
      v7 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
      v8 = MPModelObject.bestIdentifier(for:)(*v7, 0);
      if (v9)
      {
LABEL_13:
        v11 = v8;
        v13 = v9;

        goto LABEL_14;
      }

      v10 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
      v11 = MPModelObject.bestIdentifier(for:)(*v10, 0);
      v13 = v12;

      if (v13)
      {
LABEL_14:
        if (qword_DE6940 != -1)
        {
          swift_once();
        }

        v20 = sub_AB4BC0();
        __swift_project_value_buffer(v20, qword_E71120);
        sub_21A5DC(a1, 1);

        v21 = sub_AB4BA0();
        v22 = sub_AB9F50();

        sub_21A5E8(a1, 1);
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v23 = 136315394;
          v24 = sub_425E68(v11, v13, &v37);

          *(v23 + 4) = v24;
          *(v23 + 12) = 2082;
          swift_getErrorValue();
          v25 = sub_ABB520();
          v27 = sub_425E68(v25, v26, &v37);

          *(v23 + 14) = v27;
          _os_log_impl(&dword_0, v21, v22, "Error processing new container response for container id: %s, error: %{public}s", v23, 0x16u);
          swift_arrayDestroy();

          sub_21A5E8(a1, 1);
        }

        else
        {
          sub_21A5E8(a1, 1);
        }

        return;
      }

      v14 = *(v4 + 3);
      if (!v14)
      {
        goto LABEL_22;
      }
    }

    else
    {
      swift_errorRetain();
      v14 = *(v4 + 3);
      if (!v14)
      {
        goto LABEL_22;
      }
    }

    v17 = *(&stru_B8.offset + (swift_isaMask & *v14));
    v18 = v14;
    v6 = v17();

    if (v6)
    {

      v8 = (*(&stru_B8.reserved2 + (swift_isaMask & *v6)))(v19);
      if (v9)
      {
        goto LABEL_13;
      }

      v11 = (*(&stru_B8.offset + (swift_isaMask & *v6)))(v8);
      v13 = v28;

      if (v13)
      {
        goto LABEL_14;
      }
    }

LABEL_22:
    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v29 = sub_AB4BC0();
    __swift_project_value_buffer(v29, qword_E71120);
    swift_errorRetain();
    oslog = sub_AB4BA0();
    v30 = sub_AB9F50();
    sub_21A5E8(a1, 1);
    if (os_log_type_enabled(oslog, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37 = v32;
      *v31 = 136446210;
      swift_getErrorValue();
      v33 = sub_ABB520();
      v35 = sub_425E68(v33, v34, &v37);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_0, oslog, v30, "Error processing new container response, error: %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);

      sub_21A5E8(a1, 1);
    }

    else
    {
      sub_21A5E8(a1, 1);
    }

    return;
  }

  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = a1;
  sub_21A5DC(a1, 0);
  sub_21A5DC(a1, 0);
  v16 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3A80F0, v15);

  sub_21A5E8(a1, 0);
}

void sub_395784(void *a1, char a2)
{
  if (a2)
  {
    v4 = v2 + *&stru_298.segname[swift_isaMask & *v2];
    v5 = *(v4 + 2);
    if (v5)
    {
      sub_21A5DC(a1, 1);
      v6 = v5;
      v7 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
      v8 = MPModelObject.bestIdentifier(for:)(*v7, 0);
      if (v9)
      {
LABEL_13:
        v11 = v8;
        v13 = v9;

        goto LABEL_14;
      }

      v10 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
      v11 = MPModelObject.bestIdentifier(for:)(*v10, 0);
      v13 = v12;

      if (v13)
      {
LABEL_14:
        if (qword_DE6940 != -1)
        {
          swift_once();
        }

        v20 = sub_AB4BC0();
        __swift_project_value_buffer(v20, qword_E71120);
        sub_21A5DC(a1, 1);

        v21 = sub_AB4BA0();
        v22 = sub_AB9F50();

        sub_21A5E8(a1, 1);
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v23 = 136315394;
          v24 = sub_425E68(v11, v13, &v37);

          *(v23 + 4) = v24;
          *(v23 + 12) = 2082;
          swift_getErrorValue();
          v25 = sub_ABB520();
          v27 = sub_425E68(v25, v26, &v37);

          *(v23 + 14) = v27;
          _os_log_impl(&dword_0, v21, v22, "Error processing new container response for container id: %s, error: %{public}s", v23, 0x16u);
          swift_arrayDestroy();

          sub_21A5E8(a1, 1);
        }

        else
        {
          sub_21A5E8(a1, 1);
        }

        return;
      }

      v14 = *(v4 + 3);
      if (!v14)
      {
        goto LABEL_22;
      }
    }

    else
    {
      swift_errorRetain();
      v14 = *(v4 + 3);
      if (!v14)
      {
        goto LABEL_22;
      }
    }

    v17 = *(&stru_B8.offset + (swift_isaMask & *v14));
    v18 = v14;
    v6 = v17();

    if (v6)
    {

      v8 = (*(&stru_B8.reserved2 + (swift_isaMask & *v6)))(v19);
      if (v9)
      {
        goto LABEL_13;
      }

      v11 = (*(&stru_B8.offset + (swift_isaMask & *v6)))(v8);
      v13 = v28;

      if (v13)
      {
        goto LABEL_14;
      }
    }

LABEL_22:
    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v29 = sub_AB4BC0();
    __swift_project_value_buffer(v29, qword_E71120);
    swift_errorRetain();
    oslog = sub_AB4BA0();
    v30 = sub_AB9F50();
    sub_21A5E8(a1, 1);
    if (os_log_type_enabled(oslog, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37 = v32;
      *v31 = 136446210;
      swift_getErrorValue();
      v33 = sub_ABB520();
      v35 = sub_425E68(v33, v34, &v37);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_0, oslog, v30, "Error processing new container response, error: %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);

      sub_21A5E8(a1, 1);
    }

    else
    {
      sub_21A5E8(a1, 1);
    }

    return;
  }

  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = a1;
  sub_21A5DC(a1, 0);
  sub_21A5DC(a1, 0);
  v16 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3A80F4, v15);

  sub_21A5E8(a1, 0);
}

void sub_395D28(void *a1, void *a2)
{
  v4 = *&stru_4C8.segname[(swift_isaMask & *a1) + 8];
  v5 = a2;
  v4(a2);
  v6 = *&stru_2E8.segname[(swift_isaMask & *a1) + 8];
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = _swiftEmptyArrayStorage;
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 40;
    do
    {
      v10 = *(v9 - 8);
      v29 = a2;

      v10(&v29);

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  if (![objc_opt_self() isEnabled])
  {
    goto LABEL_6;
  }

  static ApplicationCapabilities.shared.getter(&v29);
  sub_70C54(&v29);
  if ((v30 & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(a1 + *&stru_298.segname[swift_isaMask & *a1] + 40);
  if (v11)
  {
    v12 = v11;

    v13 = *(&stru_298.size + (swift_isaMask & *a1));
    v14 = *(a1 + v13);
    *(a1 + v13) = v11;
    v15 = v12;
    sub_391588(v14);

    return;
  }

  if (a2)
  {
    v16 = [v5 results];
    if (v16)
    {
      v17 = v16;

      v18 = [v17 firstSection];

      if (v18)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass() && (v19 = MPModelObject.bestIdentifier(for:)(3, 2u), v20))
        {
          v21 = v19;
          v22 = v20;
          v23 = swift_allocObject();
          *(v23 + 16) = a1;
          v24 = objc_allocWithZone(type metadata accessor for Interstellar.HighlightsSource());
          v25 = a1;
          v26 = [v24 init];
          v27 = swift_allocObject();
          v27[2] = v26;
          v27[3] = v21;
          v27[4] = v22;
          v27[5] = sub_3A77CC;
          v27[6] = v23;
          v28 = v26;

          sub_449D54(1, sub_3A7800, v27);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
LABEL_6:
  }
}

void sub_39605C(void *a1, void *a2)
{
  v4 = *&stru_4C8.segname[(swift_isaMask & *a1) + 8];
  v5 = a2;
  v4(a2);
  v6 = *&stru_2E8.segname[(swift_isaMask & *a1) + 8];
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = _swiftEmptyArrayStorage;
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 40;
    do
    {
      v10 = *(v9 - 8);
      v29 = a2;

      v10(&v29);

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  if (![objc_opt_self() isEnabled])
  {
    goto LABEL_6;
  }

  static ApplicationCapabilities.shared.getter(&v29);
  sub_70C54(&v29);
  if ((v30 & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(a1 + *&stru_298.segname[swift_isaMask & *a1] + 40);
  if (v11)
  {
    v12 = v11;

    v13 = *(&stru_298.size + (swift_isaMask & *a1));
    v14 = *(a1 + v13);
    *(a1 + v13) = v11;
    v15 = v12;
    sub_391910(v14);

    return;
  }

  if (a2)
  {
    v16 = [v5 results];
    if (v16)
    {
      v17 = v16;

      v18 = [v17 firstSection];

      if (v18)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass() && (v19 = MPModelObject.bestIdentifier(for:)(3, 2u), v20))
        {
          v21 = v19;
          v22 = v20;
          v23 = swift_allocObject();
          *(v23 + 16) = a1;
          v24 = objc_allocWithZone(type metadata accessor for Interstellar.HighlightsSource());
          v25 = a1;
          v26 = [v24 init];
          v27 = swift_allocObject();
          v27[2] = v26;
          v27[3] = v21;
          v27[4] = v22;
          v27[5] = sub_3A7F98;
          v27[6] = v23;
          v28 = v26;

          sub_449D54(1, sub_3A80DC, v27);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
LABEL_6:
  }
}

void sub_396390(void *a1, void *a2, void (*a3)(id))
{
  v4 = *(&stru_298.size + (swift_isaMask & *a2));
  v6 = *(a2 + v4);
  *(a2 + v4) = a1;
  v5 = a1;
  a3(v6);
}

uint64_t sub_396410(uint64_t a1, char a2)
{
  v3 = v2;
  (*(&stru_478.reserved2 + (swift_isaMask & *v2)))(&v41);
  if (!v44)
  {
    v38 = v43;
    v39 = v44;
    v40 = v45;
    *v36 = v41;
    v37 = v42;
    return sub_12E1C(v36, &unk_DFDD48, &unk_B08B58);
  }

  *v36 = v41;
  v37 = v42;
  v38 = v43;
  v39 = v44;
  v40 = v45;
  v6 = v41;
  v34 = a2;
  if (v41 && [v41 hasLoadedValueForKey:MPModelPropertyAlbumTitle] && (v7 = objc_msgSend(v6, "title")) != 0)
  {
    v8 = v7;
    v9 = sub_AB92A0();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v35 = a1;
  v12 = *(a1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView);
  v13 = *&v12[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField];
  v14 = &v13[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
  v15 = *&v13[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
  v16 = *&v13[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8];
  v17 = v13[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16];
  if (v17 || (v9 == v15 ? (v19 = v16 == v11) : (v19 = 0), !v19 && (sub_ABB3C0() & 1) == 0))
  {
    *v14 = v9;
    *(v14 + 1) = v11;
    v14[16] = 0;
    v18 = v13;

    sub_2372F0(v15, v16, v17);
    sub_2366F4();
  }

  sub_2A2D6C();
  if (!v6)
  {
LABEL_21:
    v24 = v12[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite];
    v12[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite] = 0;
    if ((v24 & 1) == 0)
    {
LABEL_23:
      if ((v34 & 1) == 0)
      {
        goto LABEL_42;
      }

      if (!v6)
      {
        goto LABEL_28;
      }

      v21 = v6;
LABEL_26:
      if ([v21 hasLoadedValueForKey:MPModelPropertyAlbumArtwork])
      {
        v25 = [v21 artworkCatalog];
        goto LABEL_29;
      }

LABEL_28:
      v25 = 0;
LABEL_29:
      v26 = *(*(v35 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkComponent) + 64);
      if (v26)
      {
        v27 = v25 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        if (v26)
        {
          v28 = v25 == 0;
        }

        else
        {
          v28 = 0;
        }

        if (!v28)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v29 = [v26 isArtworkVisuallyIdenticalToCatalog:v25];
        if ((v29 & 1) == 0)
        {
LABEL_41:
          sub_74EA4(v25);
          goto LABEL_42;
        }
      }

      goto LABEL_42;
    }

LABEL_22:
    sub_2A4304();
    goto LABEL_23;
  }

  v20 = MPModelPropertyAlbumIsFavorite;
  v21 = v6;
  if (([v21 hasLoadedValueForKey:v20] & 1) == 0)
  {

    goto LABEL_21;
  }

  v22 = [v21 isFavorite];

  v23 = v12[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite];
  v12[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite] = v22;
  if (v22 != v23)
  {
    goto LABEL_22;
  }

  if (v34)
  {
    goto LABEL_26;
  }

LABEL_42:
  sub_23C6F4(v35);
  v30 = [v3 traitCollection];
  v31 = UITraitCollection.isMediaPicker.getter(v30);

  v32 = *(v35 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_shouldHideHeaderControls);
  *(v35 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_shouldHideHeaderControls) = v31;
  if (v31 != v32)
  {
    v12[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_shouldHideHeaderControls] = v31;
    [v12 setNeedsLayout];
  }

  return sub_12E1C(v36, &unk_DFDD48, &unk_B08B58);
}

uint64_t sub_3967A8(uint64_t a1, char a2)
{
  v3 = v2;
  (*(&stru_478.reserved2 + (swift_isaMask & *v2)))(&v34);
  v52[6] = v40;
  v52[7] = v41;
  v53 = v42;
  v52[2] = v36;
  v52[3] = v37;
  v52[4] = v38;
  v52[5] = v39;
  v52[0] = v34;
  v52[1] = v35;
  if (sub_11D03C(v52) == 1)
  {
    v49 = v40;
    v50 = v41;
    v51 = v42;
    v45 = v36;
    v46 = v37;
    v47 = v38;
    v48 = v39;
    v43 = v34;
    v44 = v35;
    v6 = &v43;
    return sub_12E1C(v6, &unk_DFDD90, &unk_B08BA8);
  }

  v30 = a2;
  v32[6] = v40;
  v32[7] = v41;
  v32[2] = v36;
  v32[3] = v37;
  v32[4] = v38;
  v32[5] = v39;
  v32[0] = v34;
  v32[1] = v35;
  v43 = v34;
  v44 = v35;
  v45 = v36;
  v49 = v40;
  v50 = v41;
  v33 = v42;
  v7 = *(&v37 + 1);
  v51 = v42;
  v47 = v38;
  v48 = v39;
  v46 = v37;
  v8 = sub_D1FC0();
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v31 = a1;
  v11 = *(a1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView);
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  v13 = *&v11[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField];
  v14 = &v13[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
  v15 = *&v13[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
  v16 = *&v13[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8];
  v17 = v13[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16];
  if (v17 || (v10 != v15 || v16 != v12) && (sub_ABB3C0() & 1) == 0)
  {
    *v14 = v10;
    *(v14 + 1) = v12;
    v14[16] = 0;
    v18 = v13;

    sub_2372F0(v15, v16, v17);
    sub_2366F4();
  }

  sub_2A2D6C();
  if (!v7)
  {
LABEL_19:
    v23 = v11[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite];
    v11[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite] = 0;
    if ((v23 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v19 = MPModelPropertyPlaylistIsFavorite;
  v20 = v7;
  if (([v20 hasLoadedValueForKey:v19] & 1) == 0)
  {

    goto LABEL_19;
  }

  v21 = [v20 isFavorite];

  v22 = v11[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite];
  v11[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite] = v21;
  if (v21 != v22)
  {
LABEL_20:
    sub_2A4304();
  }

LABEL_21:
  if (v30)
  {
    v24 = sub_D1DC8();
    v25 = *(*(v31 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkComponent) + 64);
    if (v25 && v24)
    {
      if (([v25 isArtworkVisuallyIdenticalToCatalog:v24] & 1) == 0)
      {
LABEL_29:
        sub_74EA4(v24);
        goto LABEL_30;
      }
    }

    else if (!v25 || v24)
    {
      goto LABEL_29;
    }
  }

LABEL_30:
  sub_23C6F4(v31);
  v26 = [v3 traitCollection];
  v27 = UITraitCollection.isMediaPicker.getter(v26);

  v28 = *(v31 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_shouldHideHeaderControls);
  *(v31 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_shouldHideHeaderControls) = v27;
  if (v27 != v28)
  {
    v11[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_shouldHideHeaderControls] = v27;
    [v11 setNeedsLayout];
  }

  v6 = v32;
  return sub_12E1C(v6, &unk_DFDD90, &unk_B08BA8);
}

char *sub_396B50()
{
  v1 = *(&stru_338.reloff + (swift_isaMask & *v0));
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = *&v0[v1];
LABEL_7:
    v12 = v2;
    return v3;
  }

  v4 = v0;
  v5 = objc_allocWithZone(type metadata accessor for LoadingView());
  v6 = LoadingView.init(title:style:usesSubtitleTextColor:)(0, 0, 0x10000000000, 1);
  v7 = qword_DE6C58;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  [v8 setBackgroundColor:qword_E71898];
  result = [v4 view];
  if (result)
  {
    v10 = result;
    [result bounds];
    [v8 setFrame:?];

    v11 = *&v4[v1];
    *&v4[v1] = v8;
    v3 = v8;

    v2 = 0;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_396C9C(char a1)
{
  if (a1)
  {
    v2 = *(&stru_338.offset + (swift_isaMask & *v1));
    [*(v1 + v2) invalidate];
    v3 = *(v1 + v2);
    *(v1 + v2) = 0;
  }

  v4 = sub_396B50();
  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 isDescendantOfView:v5];

    if (v7)
    {
      v8 = objc_opt_self();
      v9 = swift_allocObject();
      *(v9 + 16) = v1;
      v19 = sub_3A7E78;
      v20 = v9;
      v15 = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_1B5EB4;
      v18 = &block_descriptor_450;
      v10 = _Block_copy(&v15);
      v11 = v1;

      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      v19 = sub_3A7ED0;
      v20 = v12;
      v15 = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_1811AC;
      v18 = &block_descriptor_456;
      v13 = _Block_copy(&v15);
      v14 = v11;

      [v8 animateWithDuration:v10 animations:v13 completion:0.5];
      _Block_release(v13);
      _Block_release(v10);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_396EB4(char a1)
{
  if (a1)
  {
    v2 = *(&stru_338.offset + (swift_isaMask & *v1));
    [*(v1 + v2) invalidate];
    v3 = *(v1 + v2);
    *(v1 + v2) = 0;
  }

  v4 = sub_396B50();
  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 isDescendantOfView:v5];

    if (v7)
    {
      v8 = objc_opt_self();
      v9 = swift_allocObject();
      *(v9 + 16) = v1;
      v19 = sub_3A80C8;
      v20 = v9;
      v15 = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_1B5EB4;
      v18 = &block_descriptor_308;
      v10 = _Block_copy(&v15);
      v11 = v1;

      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      v19 = sub_3A817C;
      v20 = v12;
      v15 = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_1811AC;
      v18 = &block_descriptor_314;
      v13 = _Block_copy(&v15);
      v14 = v11;

      [v8 animateWithDuration:v10 animations:v13 completion:0.5];
      _Block_release(v13);
      _Block_release(v10);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_3970CC(uint64_t a1, void *a2)
{
  v3 = sub_396B50();
  [v3 removeFromSuperview];

  v4 = *&stru_338.segname[(swift_isaMask & *a2) - 8];
  v5 = *(a2 + v4);
  *(a2 + v4) = 1;
  if (v5 != 1)
  {
    v6 = a2 + *&stru_338.segname[swift_isaMask & *a2];
    v7 = *v6;
    if (*v6)
    {
      v8 = *(v6 + 1);

      v7(v9);

      sub_17654(v7, v8);
    }
  }
}

uint64_t sub_39719C(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = [v3 traitCollection];
  v9 = UITraitCollection.isMediaPicker.getter(v8);

  v10 = [v4 traitCollection];
  v11 = [v10 userInterfaceIdiom];

  v12 = [v4 traitCollection];
  v13 = [v12 horizontalSizeClass];

  result = 1;
  if (v9 || v11 || v13 != &dword_0 + 1)
  {
    return result;
  }

  if (!a1)
  {
    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v25 = sub_AB4BC0();
    __swift_project_value_buffer(v25, qword_E71120);

    v26 = sub_AB4BA0();
    v27 = sub_AB9F50();

    if (!os_log_type_enabled(v26, v27))
    {

      return 3;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v52[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_425E68(a2, a3, v52);
    _os_log_impl(&dword_0, v26, v27, "Layout undetermined, no %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);

LABEL_20:

    return 3;
  }

  v15 = (*&stru_1A8.segname[(swift_isaMask & *a1) + 8])(1);
  if (!v15)
  {
    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v30 = sub_AB4BC0();
    __swift_project_value_buffer(v30, qword_E71120);
    v31 = a1;

    v32 = v31;
    v26 = sub_AB4BA0();
    v33 = sub_AB9F50();

    if (!os_log_type_enabled(v26, v33))
    {

      return 3;
    }

    v34 = swift_slowAlloc();
    v52[0] = swift_slowAlloc();
    *v34 = 136315394;
    *(v34 + 4) = sub_425E68(a2, a3, v52);
    *(v34 + 12) = 2082;
    v35 = [v32 description];
    v36 = sub_AB92A0();
    v38 = v37;

    v39 = sub_425E68(v36, v38, v52);

    *(v34 + 14) = v39;
    _os_log_impl(&dword_0, v26, v33, "Layout undetermined %s: %{public}s", v34, 0x16u);
    swift_arrayDestroy();

    goto LABEL_20;
  }

  v16 = v15;
  v17 = OBJC_IVAR____TtC11MusicJSCore14JSVideoArtwork_supportsUberArtwork;
  swift_beginAccess();
  v18 = v16[v17];
  if (v18 == 2)
  {
    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v19 = sub_AB4BC0();
    __swift_project_value_buffer(v19, qword_E71120);
    v20 = v16;
    v21 = sub_AB4BA0();
    v22 = sub_AB9F50();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138543362;
      *(v23 + 4) = v20;
      *v24 = v16;
      v20 = v20;
      _os_log_impl(&dword_0, v21, v22, "Layout undetermined (supportsUberArtwork not provided) videoDetailArtwork: %{public}@", v23, 0xCu);
      sub_12E1C(v24, &qword_DF9B20, &unk_AF8C60);
    }

    return 3;
  }

  v40 = (v18 & 1) == 0;
  if (qword_DE6940 != -1)
  {
    swift_once();
  }

  v41 = sub_AB4BC0();
  __swift_project_value_buffer(v41, qword_E71120);
  v42 = v16;
  v43 = sub_AB4BA0();
  v44 = sub_AB9F50();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v51 = v47;
    *v45 = 136315394;
    if (v18)
    {
      v48 = 1819042164;
    }

    else
    {
      v48 = 0x6C616D726F6ELL;
    }

    if (v18)
    {
      v49 = 0xE400000000000000;
    }

    else
    {
      v49 = 0xE600000000000000;
    }

    v50 = sub_425E68(v48, v49, &v51);

    *(v45 + 4) = v50;
    *(v45 + 12) = 2114;
    *(v45 + 14) = v42;
    *v46 = v16;
    v42 = v42;
    _os_log_impl(&dword_0, v43, v44, "Layout determined as %s, videoDetailArtwork: %{public}@", v45, 0x16u);
    sub_12E1C(v46, &qword_DF9B20, &unk_AF8C60);

    __swift_destroy_boxed_opaque_existential_0(v47);
  }

  return v40;
}

double sub_397854()
{
  v1 = v0;
  v2 = (*&stru_4C8.segname[swift_isaMask & *v0])();
  if (v2)
  {
    v3 = v2;
    v4 = MPModelResponseDidInvalidateNotification;
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v6 = v4;
    v7 = v3;
    v8 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v6, v3, 1, 1, sub_3A7EEC, v5);

    if (([v7 isValid] & 1) == 0)
    {
      sub_3949D4(0, 0);
    }
  }

  else
  {
    v8 = 0;
  }

  *(v1 + *&stru_388.sectname[swift_isaMask & *v1]) = v8;

  return result;
}

double sub_3979CC()
{
  v1 = v0;
  v2 = (*&stru_4C8.segname[swift_isaMask & *v0])();
  if (v2)
  {
    v3 = v2;
    v4 = MPModelResponseDidInvalidateNotification;
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v6 = v4;
    v7 = v3;
    v8 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v6, v3, 1, 1, sub_3A78A4, v5);

    if (([v7 isValid] & 1) == 0)
    {
      (*(&stru_6F8.reserved2 + (swift_isaMask & *v1)))(0, 0);
    }
  }

  else
  {
    v8 = 0;
  }

  *(v1 + *&stru_388.sectname[swift_isaMask & *v1]) = v8;

  return result;
}

void sub_397B74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_3949D4(0, 0);
  }
}

void sub_397BD0(double a1)
{
  v2 = v1;
  v62 = 0;
  v3 = *(*(v1 + *(&stru_248.reloff + (swift_isaMask & *v1))) + qword_DFE298);
  if (!v3)
  {
    LODWORD(v6) = 0;
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v4 = *(&stru_478.reserved2 + (swift_isaMask & *v1));

  v4(&v51, v5);
  v60[6] = v57;
  v60[7] = v58;
  v61 = v59;
  v60[2] = v53;
  v60[3] = v54;
  v60[4] = v55;
  v60[5] = v56;
  v60[0] = v51;
  v60[1] = v52;
  if (sub_11D03C(v60) == 1)
  {

    v48 = v57;
    v49 = v58;
    v50 = v59;
    v44 = v53;
    v45 = v54;
    v46 = v55;
    v47 = v56;
    v42 = v51;
    v43 = v52;
    sub_12E1C(&v42, &unk_DFDD90, &unk_B08BA8);
LABEL_4:
    LODWORD(v6) = 0;
LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  v33[6] = v57;
  v33[7] = v58;
  v33[2] = v53;
  v33[3] = v54;
  v33[4] = v55;
  v33[5] = v56;
  v33[0] = v51;
  v33[1] = v52;
  v39 = v57;
  v40 = v58;
  v35[2] = v53;
  v36 = v54;
  v37 = v55;
  v38 = v56;
  v35[0] = v51;
  v35[1] = v52;
  v48 = v57;
  v49 = v58;
  v44 = v53;
  v45 = v54;
  v46 = v55;
  v47 = v56;
  v34 = v59;
  v41 = v59;
  v50 = v59;
  v42 = v51;
  v43 = v52;
  sub_2E2538(v35, aBlock);
  sub_12E1C(&v42, &unk_DFDD90, &unk_B08BA8);
  v6 = *(&v36 + 1);
  v7 = *(&v36 + 1);
  sub_12E1C(v33, &unk_DFDD90, &unk_B08BA8);
  if (!v6)
  {

    goto LABEL_10;
  }

  v8 = v7;
  if ((sub_2FBDBC(v8) & 1) == 0)
  {
    v11 = [v8 pickableObjectFor:2];

    if (!v11 || (v11, v19 = [v2 traitCollection], v11 = UITraitCollection.mediaPickerConfiguration.getter(), v19, !v11))
    {

      LODWORD(v6) = 0;
      v3 = 0;
      goto LABEL_12;
    }

    v20 = [v11 selectionMode];

    if (v20 == &dword_0 + 1)
    {
      v21 = *&stru_4C8.segname[swift_isaMask & *v2];
      v22 = v21();
      if (v22)
      {
        v23 = v22;
        v24 = [v22 results];

        if (!v24)
        {
          goto LABEL_33;
        }

        v25 = [v24 totalItemCount];

        if (v25 > 0)
        {
          v62 = 257;
          v26 = v21();
          if (!v26)
          {

            v3 = 0;
            v11 = 0;
            LODWORD(v6) = 1;
            goto LABEL_12;
          }

          v27 = v26;
          v28 = [v26 results];

          if (!v28)
          {
LABEL_34:
            __break(1u);
            return;
          }

          v11 = swift_allocObject();
          v11[2] = &v62 + 1;
          v11[3] = v3;
          v11[4] = &v62;
          v29 = swift_allocObject();
          *(v29 + 16) = sub_256C20;
          *(v29 + 24) = v11;
          aBlock[4] = sub_5794C;
          aBlock[5] = v29;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_48D4FC;
          aBlock[3] = &block_descriptor_284_0;
          v30 = _Block_copy(aBlock);

          [v28 enumerateItemsUsingBlock:v30];

          _Block_release(v30);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            v3 = sub_256C20;
            LODWORD(v6) = HIBYTE(v62);
            goto LABEL_12;
          }

          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }
      }
    }

    goto LABEL_4;
  }

  LODWORD(v6) = 1;
  HIBYTE(v62) = 1;
  v10 = sub_304104(v8, v9);

  v3 = 0;
  v11 = 0;
  LOBYTE(v62) = v10;
LABEL_12:
  v12 = *(&stru_2E8.flags + (swift_isaMask & *v2));
  v13 = *(v2 + v12);
  *(v2 + v12) = v6;
  if (v6 != v13)
  {
    v14 = *&stru_248.segname[swift_isaMask & *v2];
    v15 = *(v2 + v14);
    if (v6)
    {
      [*(v2 + v14) setSelected:*(v2 + *(&stru_2E8.reloff + (swift_isaMask & *v2)))];
    }

    [v15 setHidden:v6 ^ 1];
  }

  v16 = v62;
  v17 = *(&stru_2E8.reloff + (swift_isaMask & *v2));
  v18 = *(v2 + v17);
  *(v2 + v17) = v62;
  if (v16 != v18)
  {
    [*(v2 + *&stru_248.segname[swift_isaMask & *v2]) setSelected:?];
  }

  sub_17654(v3, v11);
}

void sub_398330(double a1)
{
  v2 = v1;
  v46 = 0;
  v3 = *(*(v1 + *(&stru_248.reloff + (swift_isaMask & *v1))) + qword_DFE298);
  if (!v3)
  {
    LODWORD(v6) = 0;
LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v4 = *(&stru_478.reserved2 + (swift_isaMask & *v1));

  v4(&v41, v5);
  if (!v44)
  {

    v38 = v43;
    v39 = v44;
    v40 = v45;
    v36 = v41;
    v37 = v42;
    sub_12E1C(&v36, &unk_DFDD48, &unk_B08B58);
LABEL_8:
    LODWORD(v6) = 0;
LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  v34[2] = v43;
  v34[3] = v44;
  v34[0] = v41;
  v34[1] = v42;
  v35 = v45;
  v6 = v41;
  v38 = v43;
  v39 = v44;
  v40 = v45;
  v36 = v41;
  v37 = v42;

  v7 = v6;
  sub_12E1C(&v36, &unk_DFDD48, &unk_B08B58);
  v8 = v7;
  sub_12E1C(v34, &unk_DFDD48, &unk_B08B58);
  if (!v6)
  {

    goto LABEL_10;
  }

  v9 = v8;
  if ((sub_2FBDBC(v9) & 1) == 0)
  {
    v12 = [v9 pickableObjectFor:2];

    if (!v12 || (v12, v20 = [v2 traitCollection], v12 = UITraitCollection.mediaPickerConfiguration.getter(), v20, !v12))
    {

      LODWORD(v6) = 0;
      v3 = 0;
      goto LABEL_12;
    }

    v21 = [v12 selectionMode];

    if (v21 == &dword_0 + 1)
    {
      v22 = *&stru_4C8.segname[swift_isaMask & *v2];
      v23 = v22();
      if (v23)
      {
        v24 = v23;
        v25 = [v23 results];

        if (!v25)
        {
          goto LABEL_33;
        }

        v26 = [v25 totalItemCount];

        if (v26 >= 1)
        {
          v46 = 257;
          v27 = v22();
          if (!v27)
          {

            v3 = 0;
            v12 = 0;
            LODWORD(v6) = 1;
            goto LABEL_12;
          }

          v28 = v27;
          v29 = [v27 results];

          if (!v29)
          {
LABEL_34:
            __break(1u);
            return;
          }

          v12 = swift_allocObject();
          v12[2] = &v46 + 1;
          v12[3] = v3;
          v12[4] = &v46;
          v30 = swift_allocObject();
          *(v30 + 16) = sub_3A8100;
          *(v30 + 24) = v12;
          v33[4] = sub_15AB68;
          v33[5] = v30;
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 1107296256;
          v33[2] = sub_48D4FC;
          v33[3] = &block_descriptor_467;
          v31 = _Block_copy(v33);

          [v29 enumerateItemsUsingBlock:v31];

          _Block_release(v31);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            v3 = sub_3A8100;
            LODWORD(v6) = HIBYTE(v46);
            goto LABEL_12;
          }

          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }
      }
    }

    goto LABEL_8;
  }

  LODWORD(v6) = 1;
  HIBYTE(v46) = 1;
  v11 = sub_304104(v9, v10);

  v3 = 0;
  v12 = 0;
  LOBYTE(v46) = v11;
LABEL_12:
  v13 = *(&stru_2E8.flags + (swift_isaMask & *v2));
  v14 = *(v2 + v13);
  *(v2 + v13) = v6;
  if (v6 != v14)
  {
    v15 = *&stru_248.segname[swift_isaMask & *v2];
    v16 = *(v2 + v15);
    if (v6)
    {
      [*(v2 + v15) setSelected:*(v2 + *(&stru_2E8.reloff + (swift_isaMask & *v2)))];
    }

    [v16 setHidden:v6 ^ 1];
  }

  v17 = v46;
  v18 = *(&stru_2E8.reloff + (swift_isaMask & *v2));
  v19 = *(v2 + v18);
  *(v2 + v18) = v46;
  if (v17 != v19)
  {
    [*(v2 + *&stru_248.segname[swift_isaMask & *v2]) setSelected:?];
  }

  sub_17654(v3, v12);
}

void *sub_39891C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v36 = &v33 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDD40, &qword_B08B50);
  __chkstk_darwin();
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v33 - v7;
  *(v2 + qword_E71630) = 0;
  *(v2 + qword_E01CF0) = 0;
  *(v2 + qword_E01CF8) = 0;
  *(v2 + qword_E01D00) = 0;
  v9 = (v2 + qword_E01D08);
  *v9 = 0;
  v9[1] = 0;
  *(v2 + qword_E01D10) = 1;
  *(v2 + qword_E71638) = 1;
  *(v2 + qword_E01D18) = 0;
  *(v2 + qword_E01D20) = 0;
  *(v2 + qword_E01D28) = 0;
  *(v2 + qword_E01D30) = 0;
  *(v2 + qword_E01D38) = _swiftEmptyArrayStorage;
  v10 = v2 + qword_E01D40;
  sub_2E2464(v43);
  v11 = v43[7];
  *(v10 + 96) = v43[6];
  *(v10 + 112) = v11;
  *(v10 + 128) = v44;
  v12 = v43[3];
  *(v10 + 32) = v43[2];
  *(v10 + 48) = v12;
  v13 = v43[5];
  *(v10 + 64) = v43[4];
  *(v10 + 80) = v13;
  v14 = v43[1];
  *v10 = v43[0];
  *(v10 + 16) = v14;
  *(v2 + qword_E01D48) = 0;
  v15 = v2 + qword_E01D50;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0u;
  *(v15 + 64) = 0u;
  *(v15 + 80) = 0u;
  *(v15 + 96) = 0u;
  *(v15 + 112) = 0;
  *(v2 + qword_E01D60) = _swiftEmptyArrayStorage;
  *(v2 + qword_E01D68) = 0;
  *(v2 + qword_E01D70) = 0;
  *(v2 + qword_E01D78) = 0;
  *(v2 + qword_E01D80) = 0;
  *(v2 + qword_E01D88) = 0;
  *(v2 + qword_E01D90) = 0;
  v16 = qword_E01D98;
  *(v2 + qword_E01D98) = 0;
  *(v2 + qword_E01DA0) = 0;
  *(v2 + v16) = a2 != 0;
  *(v2 + qword_E01D58) = a2;
  v17 = a2;
  sub_70EB0(a1, v41);
  v18 = sub_2D15C8(a1);
  v19 = MetricsEvent.Page.libraryPlaylistDetail.unsafeMutableAddressor();
  sub_3A7240(v19, v8, type metadata accessor for MetricsEvent.Page);
  v20 = type metadata accessor for MetricsEvent.Page(0);
  v35 = *(*(v20 - 8) + 56);
  v35(v8, 0, 1, v20);
  v21 = *(&stru_298.flags + (swift_isaMask & *v18));
  swift_beginAccess();
  sub_2DBC38(v8, v18 + v21);
  swift_endAccess();
  v22 = sub_AB9260();
  [v18 setPlayActivityFeatureName:v22];

  v40 = *(a1 + 16);
  if (v40 && (objc_opt_self(), (v23 = swift_dynamicCastObjCClass()) != 0))
  {
    v24 = v23;
    v34 = v17;
    sub_15F84(&v40, v41, &unk_E02C90, &unk_B0C5C0);
    sub_15F84(&v40, v41, &unk_E02C90, &unk_B0C5C0);
    sub_D328C(v24, v38);
    UIScreen.Dimensions.size.getter();
    v41[6] = v38[6];
    v41[7] = v38[7];
    v42 = v39;
    v41[2] = v38[2];
    v41[3] = v38[3];
    v41[4] = v38[4];
    v41[5] = v38[5];
    v41[0] = v38[0];
    v41[1] = v38[1];
    sub_39BBA0(v41);
    if ([v24 hasLoadedValueForKey:MPModelPropertyPlaylistType] && objc_msgSend(v24, "type") == &dword_8 + 1)
    {
      v25 = MPModelObject.bestIdentifier(for:)(3, 2u);
      if (v26)
      {
        v27 = v25;
      }

      else
      {
        v27 = 0x657469726F766146;
      }

      if (v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = 0xED000073676E6F53;
      }

      sub_12E1C(&v40, &unk_E02C90, &unk_B0C5C0);
      sub_70F0C(a1);

      v29 = sub_AB31C0();
      v30 = v36;
      (*(*(v29 - 8) + 56))(v36, 1, 1, v29);
      v31 = v37;
      MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v27, v28, 0x7473696C79616C50, 0xE800000000000000, v30, 0, 0, 0, v37, 1, 0, 0, 2);
      v35(v31, 0, 1, v20);
      swift_beginAccess();
      sub_2DBC38(v31, v18 + v21);
      swift_endAccess();
    }

    else
    {
      sub_12E1C(&v40, &unk_E02C90, &unk_B0C5C0);
      sub_70F0C(a1);
    }
  }

  else
  {

    sub_70F0C(a1);
  }

  return v18;
}

double sub_398F9C(uint64_t a1)
{
  v3 = qword_E71630;
  v4 = *(v1 + qword_E71630);
  if (v4)
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = *(v4 + 64);
    v7 = *(v4 + 72);
    *(v4 + 64) = sub_3A7BF8;
    *(v4 + 72) = v5;

    sub_17654(v6, v7);
  }

  if (!a1 && *(v1 + v3))
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v9;

    sub_394688(sub_3A80FC, v10);
  }

  return result;
}

double sub_3990F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v6;

    sub_394688(sub_3A80FC, v7);
  }

  return result;
}

id sub_3991C4()
{
  v1 = qword_E01CF0;
  v2 = *&v0[qword_E01CF0];
  if (v2)
  {
    v3 = *&v0[qword_E01CF0];
  }

  else
  {
    v4 = sub_399228(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_399228(void *a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v2 = [objc_allocWithZone(UISearchController) initWithSearchResultsController:0];
  [v2 setSearchResultsUpdater:a1];
  v3 = [v2 searchBar];
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v4 = sub_AB9260();

  [v3 setPlaceholder:v4];

  v5 = [v2 searchBar];
  [v5 setReturnKeyType:9];

  v6 = [a1 navigationItem];
  v7 = [a1 parentViewController];
  if (v7)
  {
    v8 = v7;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v9 = v8;
      v10 = [v9 navigationItem];

      v8 = [v9 parentViewController];
      v6 = v10;
      if (!v8)
      {
        goto LABEL_8;
      }
    }
  }

  v10 = v6;
LABEL_8:
  [v10 setHidesSearchBarWhenScrolling:1];
  [v10 setPreferredSearchBarPlacement:2];
  v11 = sub_387998();
  if (v11 > 1)
  {
    if (v11 != 2 && v11 != 3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v11)
  {
LABEL_14:
    v12 = sub_ABB3C0();

    if (v12)
    {
LABEL_18:

      return v2;
    }

LABEL_15:
    if (qword_DE6B20 != -1)
    {
      swift_once();
    }

    v13 = qword_E01290;
    v14 = sub_AB9260();
    objc_setAssociatedObject(v10, v13, v14, &dword_0 + 1);

    [v10 _setManualScrollEdgeAppearanceEnabled:1];
    [v10 _setManualScrollEdgeAppearanceProgress:1.0];
    [v10 _setManualScrollEdgeAppearanceEnabled:0];
    [v10 _setAutoScrollEdgeTransitionDistance:0.0];
    goto LABEL_18;
  }

  return v2;
}

id sub_399618()
{
  v1 = qword_E01CF8;
  v2 = *(v0 + qword_E01CF8);
  if (v2)
  {
    v3 = *(v0 + qword_E01CF8);
  }

  else
  {
    sub_13C80(0, &qword_E02D50, UIKeyCommand_ptr);
    v4 = v0;
    v5 = sub_3991C4();
    v6 = static UIKeyCommand.findKeyCommand(affecting:)();

    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_3996B4(char a1)
{
  v2 = *(v1 + qword_E01D00);
  *(v1 + qword_E01D00) = a1;
  if (v2 != (a1 & 1))
  {
    v4 = *(v1 + *(&stru_248.reloff + (swift_isaMask & *v1)));
    v5 = sub_399618();
    if (a1)
    {
      [v4 addKeyCommand:v5];

      v6 = [v1 navigationItem];
      v7 = [v1 parentViewController];
      if (v7)
      {
        v8 = v7;
        while (1)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          v9 = v8;
          v10 = [v9 navigationItem];

          v8 = [v9 parentViewController];
          v6 = v10;
          if (!v8)
          {
            goto LABEL_16;
          }
        }
      }

      v10 = v6;
LABEL_16:
      v17 = sub_3991C4();
      [v10 setSearchController:?];
    }

    else
    {
      [v4 removeKeyCommand:v5];

      v11 = [v1 navigationItem];
      v12 = [v1 parentViewController];
      if (v12)
      {
        v13 = v12;
        while (1)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          v14 = v13;
          v16 = [v14 navigationItem];

          v13 = [v14 parentViewController];
          v15 = v16;
          v11 = v16;
          if (!v13)
          {
            goto LABEL_19;
          }
        }
      }

      v15 = v11;
LABEL_19:
      v17 = v15;
      [v15 setSearchController:0];
    }
  }
}

void sub_399938(char a1)
{
  v3 = *(v1 + *&stru_298.segname[(swift_isaMask & *v1) + 16]);
  if (!v3)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v4 = [v3 results];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 totalItemCount];

    v7 = v6 > 0;
LABEL_5:
    if (([v1 isEditing] & 1) != 0 || *(v1 + qword_E01D30) == 1)
    {
      v8 = qword_E01D40;
    }

    else
    {
      v8 = *&stru_298.segname[(swift_isaMask & *v1) + 8];
    }

    v9 = v1 + v8;
    swift_beginAccess();
    v10 = *(v9 + 7);
    v46 = *(v9 + 6);
    v47 = v10;
    v48 = v9[128];
    v11 = *(v9 + 3);
    v42 = *(v9 + 2);
    v43 = v11;
    v12 = *(v9 + 5);
    v44 = *(v9 + 4);
    v45 = v12;
    v13 = *(v9 + 1);
    v41[0] = *v9;
    v41[1] = v13;
    v37 = v41[0];
    v38 = v13;
    v39 = v42;
    v14 = *(&v43 + 1);
    v40 = v43;
    v36 = v48;
    v31 = v48;
    v34 = v46;
    v35 = v47;
    v32 = v44;
    v33 = v12;
    v30[1] = v13;
    v30[2] = v42;
    v30[0] = v41[0];
    v30[6] = v46;
    v30[7] = v47;
    v30[4] = v44;
    v30[5] = v12;
    v30[3] = v43;
    if (sub_11D03C(v30) == 1)
    {
      v20 = v37;
      v21 = v38;
      v22 = v39;
      v23 = v40;
      v24 = v14;
      v27 = v34;
      v28 = v35;
      v29 = v36;
      v25 = v32;
      v26 = v33;
      sub_15F84(v41, v19, &unk_DFDD90, &unk_B08BA8);
      sub_12E1C(&v20, &unk_DFDD90, &unk_B08BA8);
    }

    else
    {
      v20 = v37;
      v21 = v38;
      v22 = v39;
      v23 = v40;
      v24 = v14;
      v27 = v34;
      v28 = v35;
      v29 = v36;
      v25 = v32;
      v26 = v33;
      sub_15F84(v41, v19, &unk_DFDD90, &unk_B08BA8);
      v15 = v14;
      sub_12E1C(&v20, &unk_DFDD90, &unk_B08BA8);
      if (v14)
      {
        v16 = [v15 type];

        if (a1)
        {
          goto LABEL_19;
        }

        v17 = v16 == &dword_0 + 2;
        if (!v7)
        {
LABEL_17:
          if (*(v1 + *(&stru_298.reloff + (swift_isaMask & *v1))) == 1)
          {
            goto LABEL_18;
          }

LABEL_19:
          v18 = 0;
          goto LABEL_20;
        }

LABEL_18:
        v18 = !v17;
LABEL_20:
        sub_3996B4(v18);
        return;
      }
    }

    if (a1)
    {
      goto LABEL_19;
    }

    v17 = 0;
    if (!v7)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  __break(1u);
}

void sub_399C34(char a1)
{
  v2 = *(&stru_298.reloff + (swift_isaMask & *v1));
  v3 = *(v1 + v2);
  if (v3 != (a1 & 1))
  {
    v4 = v1;
    v5 = *(v1 + *(&stru_248.reloff + (swift_isaMask & *v1)));
    v6 = v5[qword_E08828];
    v5[qword_E08828] = v3;
    sub_495FC(v6);
    if (*(v4 + v2) == 1)
    {
      aBlock[0] = _swiftEmptyArrayStorage;
      v7 = v5;
      sub_AB9730();
      if (*(&dword_10 + (aBlock[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
      sub_4D4068(aBlock[0], 0);
    }

    else
    {
      sub_2E494C(0, _swiftEmptyArrayStorage);
    }

    v8 = *(v4 + v2);
    *(v4 + v2) = v8;
    sub_391C98(v8);
    if (*(v4 + v2) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D00, &qword_B0C600);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF4EC0;
      strcpy((inited + 32), "playlistType");
      *(inited + 45) = 0;
      *(inited + 46) = -5120;
      sub_39446C();
      if (v10)
      {
        v11 = v10;
        v12 = [v10 type];

        v13 = sub_399F58(v12);
        v15 = (inited + 48);
        *(inited + 72) = &type metadata for String;
        *(inited + 80) = &off_D19220;
        if (v14)
        {
          *v15 = v13;
LABEL_13:
          *(inited + 56) = v14;
          v16 = sub_979E0(inited);
          swift_setDeallocating();
          sub_12E1C(inited + 32, &qword_DE9D08, &unk_AF8980);
          v17 = sub_AB9260();
          v18 = swift_allocObject();
          *(v18 + 16) = v16;
          aBlock[4] = sub_3A8144;
          aBlock[5] = v18;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_3A598C;
          aBlock[3] = &block_descriptor_418;
          v19 = _Block_copy(aBlock);

          AnalyticsSendEventLazy();
          _Block_release(v19);

          return;
        }
      }

      else
      {
        v15 = (inited + 48);
        *(inited + 72) = &type metadata for String;
        *(inited + 80) = &off_D19220;
      }

      *v15 = 7104878;
      v14 = 0xE300000000000000;
      goto LABEL_13;
    }
  }
}

uint64_t sub_399F58(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0x7375696E6547;
      }

      if (a1 == 3)
      {
        return 0x7265646C6F46;
      }

      return 0x644520656C707041;
    }

    if (!a1)
    {
      return 0x72616C75676552;
    }

    if (a1 == 1)
    {
      return 0x7472616D53;
    }

    return 0x6E776F6E6B6E55;
  }

  if (a1 > 6)
  {
    switch(a1)
    {
      case 7:
        return 0x6C616E6F73726550;
      case 8:
        return 0x64656B6E6152;
      case 9:
        return 0x657469726F766146;
    }

    return 0x6E776F6E6B6E55;
  }

  if (a1 == 5)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x646572616853;
  }
}

double sub_39A0D4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_E01D08);
  v4 = *(v2 + qword_E01D08);
  v5 = *(v2 + qword_E01D08 + 8);
  *v3 = a1;
  v3[1] = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == a1 && v5 == a2;
      if (v6 || (sub_ABB3C0() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  sub_39508C();
LABEL_11:

  return result;
}

void sub_39A154(char a1, uint64_t a2)
{
  if (*(v2 + *(&stru_298.reloff + (swift_isaMask & *v2))) == 1)
  {
    v4 = *(v2 + *(&stru_248.reloff + (swift_isaMask & *v2)));
    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    sub_4D4068(_swiftEmptyArrayStorage, a1 & 1);
  }

  else
  {

    sub_2E494C(0, a2);
  }
}

void sub_39A29C(uint64_t a1)
{
  v3 = *(v1 + qword_E01D08 + 8);
  v4 = (a1 + OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText);
  *v4 = *(v1 + qword_E01D08);
  v4[1] = v3;

  v5 = *(v1 + qword_E71630);
  if (v5)
  {
    v6 = objc_opt_self();

    v7 = [v6 standardUserDefaults];
    v8 = NSUserDefaults.sortType(for:keyDomain:)(194, *(v5 + 24), *(v5 + 32));

    v9 = SortOptions.ContentType.availableSortTypes(withSelectedType:)(v8, 194);
    v10 = 0;
    v11 = *(v9 + 2);
    while (1)
    {
      if (v11 == v10)
      {
        LOBYTE(v12) = 13;
LABEL_9:

        goto LABEL_10;
      }

      if (v10 >= *(v9 + 2))
      {
        break;
      }

      v12 = v9[v10++ + 32];
      v13 = SortOptions.SortType.sortDescriptors(for:)(194, v12);
      v14 = *(v5 + 96);

      v15 = sub_12C900(v13, v14);

      if (v15)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    LOBYTE(v12) = 13;
LABEL_10:
    *(a1 + OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption) = v12;
  }
}

double sub_39A414()
{
  if (([v0 isEditing] & 1) != 0 || *(v0 + qword_E01D30) == 1)
  {
    v1 = qword_E01D40;
  }

  else
  {
    v1 = *&stru_298.segname[(swift_isaMask & *v0) + 8];
  }

  v2 = v0 + v1;
  swift_beginAccess();
  v3 = *(v2 + 7);
  v41 = *(v2 + 6);
  v42 = v3;
  v43 = v2[128];
  v4 = *(v2 + 3);
  v37 = *(v2 + 2);
  v38 = v4;
  v5 = *(v2 + 5);
  v39 = *(v2 + 4);
  v40 = v5;
  v6 = *(v2 + 1);
  v36[0] = *v2;
  v36[1] = v6;
  v32 = v36[0];
  v33 = v6;
  v34 = v37;
  v7 = *(&v38 + 1);
  v35 = v38;
  v31 = v43;
  v26 = v43;
  v29 = v41;
  v30 = v42;
  v27 = v39;
  v28 = v5;
  v25[1] = v6;
  v25[2] = v37;
  v25[0] = v36[0];
  v25[6] = v41;
  v25[7] = v42;
  v25[4] = v39;
  v25[5] = v5;
  v25[3] = v38;
  if (sub_11D03C(v25) == 1)
  {
    v15 = v32;
    v16 = v33;
    v17 = v34;
    v18 = v35;
    v19 = v7;
    v22 = v29;
    v23 = v30;
    v24 = v31;
    v20 = v27;
    v21 = v28;
    sub_15F84(v36, v14, &unk_DFDD90, &unk_B08BA8);
    sub_12E1C(&v15, &unk_DFDD90, &unk_B08BA8);
LABEL_9:
    v12 = *(v0 + qword_E71630);
    *(v0 + qword_E71630) = 0;
    sub_398F9C(v12);
    goto LABEL_10;
  }

  v15 = v32;
  v16 = v33;
  v17 = v34;
  v18 = v35;
  v19 = v7;
  v22 = v29;
  v23 = v30;
  v24 = v31;
  v20 = v27;
  v21 = v28;
  sub_15F84(v36, v14, &unk_DFDD90, &unk_B08BA8);
  v8 = v7;
  sub_12E1C(&v15, &unk_DFDD90, &unk_B08BA8);
  if (!v7)
  {
    goto LABEL_9;
  }

  v9 = v8;
  v10 = sub_226C8C(v9);

  v11 = *(v0 + qword_E71630);
  *(v0 + qword_E71630) = v10;

  sub_398F9C(v11);

LABEL_10:

  return result;
}

double sub_39A694(void *a1)
{
  v2 = v1;
  v4 = UISearchController.searchText.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v8 && ([a1 isBeingPresented] & 1) == 0 && (objc_msgSend(a1, "isActive") & 1) == 0)
    {
      [a1 setActive:1];
    }
  }

  v9 = [a1 isActive];
  v10 = *(&stru_298.reloff + (swift_isaMask & *v2));
  v11 = *(v2 + v10);
  *(v2 + v10) = v9;
  sub_391C98(v11);
  sub_399C34(v11);
  v12 = UISearchController.searchText.getter();

  return sub_39A0D4(v12, v13);
}

void sub_39A798(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_39A694(v4);
}

void sub_39A800(void *a1, uint64_t a2, void *a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for PlaylistDetailViewController(0);
  v4 = a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, "traitCollectionDidChange:", v4);
  sub_3A1E14();
}

uint64_t sub_39A874()
{
  v1 = v0;
  v31.receiver = v0;
  v31.super_class = type metadata accessor for PlaylistDetailViewController(0);
  objc_msgSendSuper2(&v31, "viewDidLoad");
  v2 = [v0 navigationItem];
  v3 = [v1 parentViewController];
  if (v3)
  {
    v4 = v3;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v5 = v4;
      v6 = [v5 navigationItem];

      v4 = [v5 parentViewController];
      v2 = v6;
      if (!v4)
      {
        goto LABEL_8;
      }
    }
  }

  v6 = v2;
LABEL_8:
  if (*(v1 + *(&stru_248.offset + (swift_isaMask & *v1))) == 1 && (sub_39B768(), v7))
  {
    v8 = sub_AB9260();
  }

  else
  {
    v8 = 0;
  }

  [v6 setTitle:v8];

  v9 = *ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange.unsafeMutableAddressor();
  v10 = ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  v11 = *v10;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  *(v1 + qword_E01D80) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v9, v11, 1, 1, UIScreen.Dimensions.size.getter, v12);

  if (qword_DE67B0 != -1)
  {
    swift_once();
  }

  v13 = qword_DE67A8;
  v14 = qword_E70D40;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_E70D38;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();

  *(v1 + qword_E01D88) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v14, v15, 1, 1, UIScreen.Dimensions.size.getter, v16);

  v17 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
  v18 = *v10;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  v20 = v17;

  *(v1 + qword_E01D90) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v20, v18, 1, 1, sub_3A7C48, v19);

  v21 = *(v1 + *(&stru_248.reloff + (swift_isaMask & *v1)));
  v22 = *(v21 + qword_E70B50);
  *(v21 + qword_E70B50) = 0;
  sub_47338(v22);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = (v21 + qword_E70B70);
  v25 = *(v21 + qword_E70B70);
  v26 = *(v21 + qword_E70B70 + 8);
  *v24 = sub_3A7C50;
  v24[1] = v23;

  sub_17654(v25, v26);

  v27 = (v21 + qword_E70B90);
  v28 = *(v21 + qword_E70B90);
  v29 = *(v21 + qword_E70B90 + 8);
  *v27 = sub_39ADA4;
  v27[1] = 0;
  return sub_17654(v28, v29);
}

void sub_39AD50(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_3A2F2C();
  }
}

double sub_39ADA4(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v5 = &v12 - v4;
  v6 = sub_AB9990();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_AB9940();
  v7 = a1;
  v8 = a2;
  v9 = sub_AB9930();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = a1;
  v10[5] = v8;
  sub_DBDC8(0, 0, v5, &unk_B0C650, v10);

  return result;
}

uint64_t sub_39AEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_AB9940();
  v5[5] = sub_AB9930();
  v7 = sub_AB98B0();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_39AF74, v7, v6);
}

uint64_t sub_39AF74()
{
  if (*(v0 + 24))
  {

    return _swift_task_switch(sub_39B014, 0, 0);
  }

  else
  {

    v1 = *(v0 + 8);

    return v1();
  }
}

uint64_t sub_39B014()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_39B110;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0x65286574656C6564, 0xEE00293A7972746ELL, sub_3A7D60, v3, &type metadata for () + 8);
}

uint64_t sub_39B110()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_39B2A4;
  }

  else
  {

    v2 = sub_39B22C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_39B244()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_39B2A4()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_39B308, v1, v2);
}

uint64_t sub_39B308()
{
  v14 = v0;
  if (qword_DE67E0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E70DC0);
  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
    v8 = sub_AB9350();
    v10 = sub_425E68(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v2, v3, "DeleteEntryHandler failed with error=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  v11 = v0[1];

  return v11();
}

void sub_39B4DC(void *a1)
{
  v1 = a1;
  sub_39A874();
}

void sub_39B524(void *a1, uint64_t a2, uint64_t a3)
{
  v12.receiver = a1;
  v12.super_class = type metadata accessor for PlaylistDetailViewController(0);
  v4 = v12.receiver;
  objc_msgSendSuper2(&v12, "viewWillAppear:", a3);
  v4[qword_E01D78] = 1;
  sub_3A3464(0);
  v5 = &v4[qword_E01D50];
  v6 = *&v4[qword_E01D50 + 48];
  v8 = *&v4[qword_E01D50];
  v7 = *&v4[qword_E01D50 + 16];
  v13[2] = *&v4[qword_E01D50 + 32];
  v13[3] = v6;
  v13[0] = v8;
  v13[1] = v7;
  v10 = *&v4[qword_E01D50 + 80];
  v9 = *&v4[qword_E01D50 + 96];
  v11 = *&v4[qword_E01D50 + 64];
  v14 = *&v4[qword_E01D50 + 112];
  v13[5] = v10;
  v13[6] = v9;
  v13[4] = v11;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 14) = 0;
  sub_12E1C(v13, &qword_E02CA8, &qword_B0C608);
}

uint64_t sub_39B604()
{
  v1 = qword_E01D10;
  v2 = *(v0 + qword_E01D10);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = sub_AB9260();
    v5 = [objc_opt_self() keyCommandWithInput:v4 modifierFlags:0 action:"tabAction"];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_AF82B0;
    *(v3 + 32) = v5;
    v6 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_3A715C(v6);
  }

  sub_3A7BE8(v2);
  return v3;
}

Class sub_39B6E8(void *a1)
{
  v1 = a1;
  v2 = sub_39B604();

  if (v2)
  {
    sub_13C80(0, &qword_E02D50, UIKeyCommand_ptr);
    v3.super.isa = sub_AB9740().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

uint64_t sub_39B768()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  if ([v0 isEditing])
  {
    sub_AB91E0();
    sub_AB3550();
    return sub_AB9320();
  }

  else
  {
    if (([v0 isEditing] & 1) != 0 || *(v0 + qword_E01D30) == 1)
    {
      v2 = qword_E01D40;
    }

    else
    {
      v2 = *&stru_298.segname[(swift_isaMask & *v0) + 8];
    }

    v3 = v0 + v2;
    swift_beginAccess();
    v4 = *(v3 + 7);
    v18 = *(v3 + 6);
    v19 = v4;
    v20 = v3[128];
    v5 = *(v3 + 3);
    v14 = *(v3 + 2);
    v15 = v5;
    v6 = *(v3 + 5);
    v16 = *(v3 + 4);
    v17 = v6;
    v7 = *(v3 + 1);
    v12 = *v3;
    v13 = v7;
    v10[6] = v18;
    v10[7] = v19;
    v11 = v20;
    v10[2] = v14;
    v10[3] = v15;
    v10[4] = v16;
    v10[5] = v6;
    v10[0] = v12;
    v10[1] = v7;
    if (sub_11D03C(v10) == 1)
    {
      return 0;
    }

    else
    {
      v27 = v18;
      v28 = v19;
      v29 = v20;
      v23 = v14;
      v24 = v15;
      v25 = v16;
      v26 = v17;
      v21 = v12;
      v22 = v13;
      sub_15F84(&v12, &v9, &unk_DFDD90, &unk_B08BA8);
      v8 = sub_D1FC0();
      sub_12E1C(&v12, &unk_DFDD90, &unk_B08BA8);
      return v8;
    }
  }
}
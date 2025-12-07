uint64_t sub_100001678@<X0>(uint64_t *a1@<X8>)
{
  sub_100008C18();
  swift_allocObject();
  sub_100008C28();
  sub_100008BE8();
  swift_allocObject();

  sub_100008BF8();
  sub_100001C28(&qword_100015FA8, &qword_100009B70);
  sub_100008B88();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100009AF0;
  sub_100001C70(&qword_100015FB0, &type metadata accessor for PRRenderingConfiguration, &protocol conformance descriptor for PRRenderingConfiguration);

  sub_100008B78();
  sub_100001C70(&qword_100015FB8, &type metadata accessor for PREditingConfiguration, &protocol conformance descriptor for PREditingConfiguration);

  sub_100008B78();

  *a1 = v2;
  return result;
}

id sub_1000018D4(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_100001918()
{
  [objc_allocWithZone(type metadata accessor for ClockUpdater()) init];
  sub_100001C28(&unk_100015F90, &unk_100009B00);
  swift_allocObject();
  sub_100008C08();
  sub_100001D94(&qword_100015FA0, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_100008BB8();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001A7C();
  sub_100001D94(&qword_100015F88, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_100008B98();
  return 0;
}

unint64_t sub_100001A7C()
{
  result = qword_100015F80;
  if (!qword_100015F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100015F80);
  }

  return result;
}

uint64_t sub_100001AD0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of ClockUpdater.descriptors()
{
  v0 = sub_1000023F8();
  if (v0 >> 62)
  {
    sub_100001B94();
    v1 = sub_100008E38();
  }

  else
  {

    sub_100008E88();
    sub_100001B94();
    v1 = v0;
  }

  return v1;
}

unint64_t sub_100001B94()
{
  result = qword_100016220;
  if (!qword_100016220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100016220);
  }

  return result;
}

uint64_t sub_100001C28(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001C70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_100001CB8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001CC8(uint64_t a1, int a2)
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

uint64_t sub_100001CE8(uint64_t result, int a2, int a3)
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

void type metadata accessor for CGPoint()
{
  if (!qword_100016080)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100016080);
    }
  }
}

uint64_t sub_100001D94(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100001AD0(&unk_100015F90, &unk_100009B00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id ClockUpdater.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ClockUpdater.init()()
{
  v1 = v0;
  v2 = sub_100001C28(&qword_100016210, qword_100009BA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_100008A18();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001C28(&qword_100016218, &qword_100009CE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_1000023F8();
  if (v12 >> 62)
  {
    sub_100001B94();
    v13 = sub_100008E38();
  }

  else
  {

    sub_100008E88();
    sub_100001B94();
    v13 = v12;
  }

  *&v1[OBJC_IVAR____TtC20ClockPosterExtension12ClockUpdater_descriptors] = v13;
  v14 = type metadata accessor for ClockUpdater();
  v22.receiver = v1;
  v22.super_class = v14;
  v15 = objc_msgSendSuper2(&v22, "init");
  sub_100008A68();
  v16 = v15;
  sub_1000089F8();
  v17 = enum case for ClockLogger.Role.update(_:);
  v18 = sub_100008A28();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v11, v17, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  (*(v6 + 104))(v8, enum case for ClockLogger.Host.ambient(_:), v5);
  v20 = sub_100008AE8();
  (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  sub_100008A08();

  sub_100002760(v4, &qword_100016210, qword_100009BA0);
  (*(v6 + 8))(v8, v5);
  sub_100002760(v11, &qword_100016218, &qword_100009CE0);
  return v16;
}

id ClockUpdater.__deallocating_deinit()
{
  v1 = sub_100008A28();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008A68();
  sub_1000089F8();
  (*(v2 + 104))(v4, enum case for ClockLogger.Role.update(_:), v1);
  sub_100008A48();

  (*(v2 + 8))(v4, v1);
  v5 = type metadata accessor for ClockUpdater();
  v7.receiver = v0;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void *sub_1000023F8()
{
  v0 = sub_100008AA8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100008AE8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100008A88();
  v9 = *(v8 + 16);
  if (v9)
  {
    v29 = _swiftEmptyArrayStorage;
    sub_100008DF8();
    v27 = objc_opt_self();
    v10 = v5 + 16;
    v25 = *(v5 + 16);
    v26 = PRPosterRoleAmbient;
    v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v21[1] = v8;
    v22 = v0;
    v12 = v8 + v11;
    v13 = (v5 + 8);
    v28 = v10;
    v23 = *(v10 + 56);
    v24 = (v1 + 8);
    do
    {
      v25(v7, v12, v4);
      v14 = *(sub_100008A78() + 16);

      sub_100008AD8();
      v15 = v4;
      v16 = sub_100008C68();

      v17 = [v27 mutableDescriptorWithIdentifier:v16 role:v26];

      v18 = [objc_allocWithZone(PRPosterAmbientConfiguration) initWithSupportedDataLayout:3 creationBehavior:0 editingBehavior:v14 < 2 deletionBehavior:2];
      [v17 setAmbientConfiguration:v18];
      sub_100008AB8();
      sub_100008A98();
      (*v24)(v3, v22);
      v19 = sub_100008C68();
      v4 = v15;

      [v17 setDisplayNameLocalizationKey:v19];

      (*v13)(v7, v15);
      sub_100008DD8();
      sub_100008E08();
      sub_100008E18();
      sub_100008DE8();
      v12 += v23;
      --v9;
    }

    while (v9);

    return v29;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_100002760(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001C28(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t ClockUpdater.updateDescriptors(_:with:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  v5 = *(a1 + 16);
  v6 = *(v3 + OBJC_IVAR____TtC20ClockPosterExtension12ClockUpdater_descriptors);
  if (v6 >> 62)
  {
    v9 = a1;
    v10 = v6;
    v11 = sub_100008E48();
    v6 = v10;
    a1 = v9;
    if (v5 == v11)
    {
      goto LABEL_3;
    }

    return a3(v6, 0);
  }

  if (v5 != *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return a3(v6, 0);
  }

LABEL_3:
  v7 = sub_1000028B0(a1);
  a3(v7, 0);
}

void *sub_1000028B0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_100008DF8();
    v4 = v1 + 64;
    result = sub_100008D88();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v18 = v1 + 72;
    v19 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v6;
      v10 = *(*(v1 + 56) + 8 * v5);
      sub_100008DD8();
      sub_100008E08();
      v1 = v19;
      sub_100008E18();
      result = sub_100008DE8();
      v8 = 1 << *(v19 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v19 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (v18 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_100002FE8(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_100002FE8(v5, v7, 0);
      }

LABEL_4:
      v6 = v20 + 1;
      v5 = v8;
      if (v20 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100002C80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001C28(&qword_100016210, qword_100009BA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = [a1 descriptorIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_100008C78();
    v11 = v10;

    sub_100008AC8();
    v12 = sub_100008AE8();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v6, 1, v12) != 1)
    {
      swift_unknownObjectRelease();

      return (*(v13 + 32))(a2, v6, v12);
    }

    sub_100002760(v6, &qword_100016210, qword_100009BA0);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_100008DA8(47);

    v15 = 0xD00000000000001CLL;
    v16 = 0x800000010000C060;
    v17._countAndFlagsBits = v9;
    v17._object = v11;
    sub_100008CB8(v17);
    v18._object = 0x800000010000C080;
    v18._countAndFlagsBits = 0xD000000000000011;
    sub_100008CB8(v18);
  }

  result = sub_100008E28();
  __break(1u);
  return result;
}

void sub_100002EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + OBJC_IVAR____TtC20ClockPosterExtension12ClockUpdater_descriptors);
  if (v5 >> 62)
  {
    v6 = a1;
    v7 = sub_100008E48();
    a1 = v6;
    if (v4 == v7)
    {
      goto LABEL_3;
    }
  }

  else if (v4 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_1000028B0(a1);
    sub_100001B94();
    isa = sub_100008CE8().super.isa;
    (*(a3 + 16))(a3);

    goto LABEL_6;
  }

  sub_100001B94();
  isa = sub_100008CE8().super.isa;
  (*(a3 + 16))(a3);
LABEL_6:
}

uint64_t sub_100002FE8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

id sub_100002FF4()
{
  v1 = sub_100008A28();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008A68();
  sub_1000089F8();
  v11 = &OBJC_PROTOCOL___PREditingDelegate;
  v5 = swift_dynamicCastObjCProtocolConditional();
  v6 = &enum case for ClockLogger.Role.render(_:);
  if (v5)
  {
    v6 = &enum case for ClockLogger.Role.edit(_:);
  }

  (*(v2 + 104))(v4, *v6, v1);
  sub_100008A48();

  (*(v2 + 8))(v4, v1);
  v7 = type metadata accessor for ClockPosterExtensionController();
  v10.receiver = v0;
  v10.super_class = v7;
  return objc_msgSendSuper2(&v10, "dealloc");
}

uint64_t sub_1000032C0(uint64_t a1)
{
  v2 = sub_100008BD8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100008AE8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35[3] = &OBJC_PROTOCOL___PRPosterEditingEnvironment;
  v10 = swift_dynamicCastObjCProtocolConditional();
  if (v10)
  {
    v11 = &selRef_sourceContents;
  }

  else
  {
    v35[2] = &OBJC_PROTOCOL___PRPosterRenderingEnvironment;
    v10 = swift_dynamicCastObjCProtocolConditional();
    if (!v10)
    {
      v35[0] = 0;
      v35[1] = 0xE000000000000000;
      sub_100008DA8(78);
      v36._object = 0x800000010000C320;
      v36._countAndFlagsBits = 0xD00000000000004CLL;
      sub_100008CB8(v36);
      v34 = a1;
      swift_unknownObjectRetain();
      sub_100001C28(&unk_100016530, &qword_100009D20);
      v37._countAndFlagsBits = sub_100008C88();
      sub_100008CB8(v37);

      result = sub_100008E28();
      __break(1u);
      return result;
    }

    v11 = &selRef_contents;
  }

  v12 = [v10 *v11];
  v13 = swift_unknownObjectRetain();
  sub_100002C80(v13, v9);
  v35[0] = 0;
  v14 = [v12 loadUserInfoWithError:v35];
  v15 = v35[0];
  if (v14)
  {
    v16 = v14;
    sub_100008C48();
    v17 = v15;
  }

  else
  {
    v32 = v3;
    v33 = v2;
    v18 = v35[0];
    sub_100008918();

    swift_willThrow();
    sub_100008A68();
    sub_100008A38();
    swift_errorRetain();
    v19 = sub_100008BC8();
    v20 = sub_100008D68();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v31 = v19;
      v22 = v21;
      v30 = swift_slowAlloc();
      v35[0] = v30;
      *v22 = 136446210;
      swift_getErrorValue();
      v29 = v20;
      v23 = sub_100008EA8();
      v25 = sub_100006404(v23, v24, v35);

      *(v22 + 4) = v25;
      v26 = v31;
      _os_log_impl(&_mh_execute_header, v31, v29, "Error loading user info contents %{public}s", v22, 0xCu);
      sub_100007230(v30);
    }

    else
    {
    }

    (*(v32 + 8))(v5, v33);
  }

  sub_100008B28();
  swift_unknownObjectRelease();

  return (*(v7 + 8))(v9, v6);
}

void sub_1000037A4(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  sub_1000072E0(a2, v3);
  v6 = *(v3 + OBJC_IVAR____TtC20ClockPosterExtension39ClockPosterExtensionRenderingController_renderer);
  *(v3 + OBJC_IVAR____TtC20ClockPosterExtension39ClockPosterExtensionRenderingController_renderer) = a1;
  v7 = a1;

  v8 = [v7 foregroundView];
  v9 = [v8 window];

  v10 = [v9 rootViewController];
  v14 = [v7 foregroundView];
  v11 = OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController;
  if (!*(v3 + OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1000089D8();

  if (!*(v3 + v11))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1000041FC();
  sub_100008978();

  if (!*(v3 + v11))
  {
LABEL_13:
    __break(1u);
    return;
  }

  v12 = sub_100008988();

  if (v12)
  {
    aBlock[4] = sub_1000039FC;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003A0C;
    aBlock[3] = &unk_100010928;
    v13 = _Block_copy(aBlock);

    [v7 updatePreferences:v13];

    _Block_release(v13);
    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_100003A0C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, v6);

  return swift_unknownObjectRelease();
}

uint64_t sub_100003C10(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a1;
  *(v6 + 56) = a2;
  *(v6 + 40) = a6;
  sub_100008D38();
  *(v6 + 64) = sub_100008D28();
  v8 = sub_100008D18();

  return _swift_task_switch(sub_100003CAC, v8, v7);
}

char *sub_100003CAC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    if (!*&result[OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController])
    {
      __break(1u);
      return result;
    }

    sub_100008928();
  }

  else
  {
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100003D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001C28(&qword_100016460, &qword_100009CE8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000086DC(a3, v25 - v10);
  v12 = sub_100008D58();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100002760(v11, &qword_100016460, &qword_100009CE8);
  }

  else
  {
    sub_100008D48();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100008D18();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100008C98() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100002760(a3, &qword_100016460, &qword_100009CE8);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100002760(a3, &qword_100016460, &qword_100009CE8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_1000041FC()
{
  v1 = sub_100008BD8();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC20ClockPosterExtension39ClockPosterExtensionRenderingController_renderer);
  if (v8)
  {
    v9 = v8;
    v10 = [objc_msgSend(v9 "environment")];
    swift_unknownObjectRelease();
    if (v10)
    {
      v11 = [v10 isDisplayStyleRedMode];

      swift_unknownObjectRelease();
      return v11;
    }

    sub_100008A68();
    sub_100008A58();
    v16 = sub_100008BC8();
    v17 = sub_100008D68();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Ambient enviroment is nil. Cannot set red mode.", v18, 2u);
    }

    (*(v2 + 8))(v7, v1);
  }

  else
  {
    sub_100008A68();
    sub_100008A58();
    v13 = sub_100008BC8();
    v14 = sub_100008D68();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Render is nil. Cannot set red mode.", v15, 2u);
    }

    (*(v2 + 8))(v5, v1);
  }

  return 0;
}

void sub_10000492C()
{
  v1 = sub_100008B08();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController;
  if (!*(v0 + OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = sub_100008958();

  if (!*(v0 + v8))
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_1000089A8();

  v10 = sub_100004B60(v7, v9);

  if (v10)
  {
    (*(v2 + 8))(v7, v1);
  }

  else
  {
    (*(v2 + 16))(v5, v7, v1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_10000622C(0, v9[2] + 1, 1, v9);
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_10000622C((v11 > 1), v12 + 1, 1, v9);
    }

    (*(v2 + 8))(v7, v1);
    v9[2] = v12 + 1;
    (*(v2 + 32))(v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12, v5, v1);
  }
}

BOOL sub_100004B60(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_100008B08();
    ++v2;
    sub_100008490(&qword_100016448, &type metadata accessor for ClockFaceLook, &protocol conformance descriptor for ClockFaceLook);
  }

  while ((sub_100008C58() & 1) == 0);
  return v3 != v4;
}

void sub_100004C6C()
{
  v1 = v0;
  v2 = sub_100008B08();
  v61 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v64 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v63 = &v49 - v6;
  __chkstk_darwin(v5);
  v8 = &v49 - v7;
  if (!*(v0 + OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController))
  {
    goto LABEL_25;
  }

  sub_1000089A8();

  v9 = [objc_allocWithZone(PREditorContentStylePickerConfiguration) init];
  v51 = v8;
  [v9 setSelectedStyle:sub_100005344()];
  swift_unknownObjectRelease();
  v66 = _swiftEmptyArrayStorage;
  v10 = swift_allocObject();
  *(v10 + 16) = &_swiftEmptyDictionarySingleton;
  sub_10000492C();
  v60 = *(v11 + 16);
  if (v60)
  {
    v50 = v9;
    v12 = 0;
    v59 = v11 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
    v57 = v0;
    v58 = v61 + 16;
    v52 = (v61 + 40);
    v53 = (v61 + 32);
    v54 = (v61 + 8);
    v55 = v11;
    v56 = v10;
    while (1)
    {
      if (v12 >= *(v11 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        sub_100008E98();
        __break(1u);
        return;
      }

      v62 = *(v61 + 72);
      v13 = *(v61 + 16);
      v14 = v63;
      v13(v63, v59 + v62 * v12, v2);
      v15 = [sub_100005344() identifier];
      v16 = sub_100008C78();
      v18 = v17;

      v19 = v14;
      v20 = v2;
      v13(v64, v19, v2);
      v21 = *(v10 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v21;
      *(v10 + 16) = 0x8000000000000000;
      v24 = sub_1000069AC(v16, v18);
      v25 = *(v21 + 16);
      v26 = (v23 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        goto LABEL_23;
      }

      v28 = v23;
      if (*(v21 + 24) >= v27)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v2 = v20;
          if (v23)
          {
            goto LABEL_12;
          }
        }

        else
        {
          sub_100006E5C();
          v2 = v20;
          if (v28)
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
        sub_100006A24(v27, isUniquelyReferenced_nonNull_native);
        v29 = sub_1000069AC(v16, v18);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_27;
        }

        v24 = v29;
        v2 = v20;
        if (v28)
        {
LABEL_12:

          v31 = aBlock[0];
          (*v52)(*(aBlock[0] + 56) + v24 * v62, v64, v2);
          goto LABEL_16;
        }
      }

      v32 = v64;
      v31 = aBlock[0];
      *(aBlock[0] + 8 * (v24 >> 6) + 64) |= 1 << v24;
      v33 = (v31[6] + 16 * v24);
      *v33 = v16;
      v33[1] = v18;
      (*v53)(v31[7] + v24 * v62, v32, v2);
      v34 = v31[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_24;
      }

      v31[2] = v36;
LABEL_16:
      v10 = v56;
      *(v56 + 16) = v31;

      swift_unknownObjectRetain();
      sub_100008CD8();
      v1 = v57;
      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100008CF8();
      }

      ++v12;
      sub_100008D08();
      swift_unknownObjectRelease();
      (*v54)(v63, v2);
      v11 = v55;
      if (v60 == v12)
      {
        v9 = v50;
        break;
      }
    }
  }

  v37 = objc_allocWithZone(PREditorContentStylePalette);
  sub_100001C28(&qword_100016410, &qword_100009CB0);
  isa = sub_100008CE8().super.isa;
  v39 = [v37 initWithContentStyles:isa localizedName:0];

  [v9 setStylePalette:v39];
  v40 = [objc_opt_self() mainBundle];
  v48._countAndFlagsBits = 0x800000010000C240;
  v67._object = 0x800000010000C220;
  v67._countAndFlagsBits = 0xD000000000000012;
  v68.value._countAndFlagsBits = 0;
  v68.value._object = 0;
  v41.super.isa = v40;
  v69._countAndFlagsBits = 0;
  v69._object = 0xE000000000000000;
  sub_100008908(v67, v68, v41, v69, 0xD000000000000012, v48);

  v42 = sub_100008C68();

  [v9 setPrompt:v42];

  v43 = *(v1 + OBJC_IVAR____TtC20ClockPosterExtension37ClockPosterExtensionEditingController_editor);
  if (!v43)
  {
    goto LABEL_26;
  }

  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = v10;
  aBlock[4] = sub_100007154;
  aBlock[5] = v45;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E9C;
  aBlock[3] = &unk_100010900;
  v46 = _Block_copy(aBlock);
  v47 = v43;

  [v47 presentContentStylePickerWithConfiguration:v9 changeHandler:v46];

  _Block_release(v46);
  (*(v61 + 8))(v51, v2);
}

id sub_100005344()
{
  v1 = v0;
  v2 = sub_100008B08();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for ClockFaceLook.color(_:))
  {
    (*(v3 + 96))(v5, v2);

    sub_1000071D4(v5, v30);
    sub_100001C28(&qword_100016428, &qword_100009CC8);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100009C00;
    sub_1000071EC(v30, v31);
    *(v7 + 32) = sub_100008B18();
    v8 = objc_allocWithZone(PRPosterContentDiscreteColorsStyle);
    sub_100008448(0, &qword_100016430, UIColor_ptr);
    isa = sub_100008CE8().super.isa;

    v10 = [v8 initWithOpaqueColors:isa];

LABEL_3:
    sub_100007230(v30);
    return v10;
  }

  if (v6 != enum case for ClockFaceLook.gradient(_:))
  {
    if (v6 != enum case for ClockFaceLook.splitTone(_:))
    {
      if (v6 != enum case for ClockFaceLook.uncustomizable(_:))
      {
        (*(v3 + 8))(v5, v2);
      }

      return [objc_allocWithZone(PRPosterContentDiscreteColorsStyle) init];
    }

    (*(v3 + 96))(v5, v2);

    sub_1000071D4(v5, v30);
    sub_1000071D4((v5 + 40), v29);
    sub_100001C28(&qword_100016428, &qword_100009CC8);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100009BF0;
    sub_1000071EC(v30, v31);
    *(v15 + 32) = sub_100008B18();
    sub_1000071EC(v29, v29[3]);
    *(v15 + 40) = sub_100008B18();
    v16 = objc_allocWithZone(PRPosterContentDiscreteColorsStyle);
    sub_100008448(0, &qword_100016430, UIColor_ptr);
    v17 = sub_100008CE8().super.isa;

    v10 = [v16 initWithOpaqueColors:v17];

    sub_100007230(v29);
    goto LABEL_3;
  }

  (*(v3 + 96))(v5, v2);
  v11 = *v5;

  v12 = *(v11 + 16);
  if (v12)
  {
    if (v12 == 2)
    {
      v29[0] = _swiftEmptyArrayStorage;
      sub_100008DF8();
      sub_10000727C(v11 + 32, v30);
      sub_1000071EC(v30, v31);
      sub_100008B18();
      sub_100007230(v30);
      sub_100008DD8();
      sub_100008E08();
      sub_100008E18();
      sub_100008DE8();
      sub_10000727C(v11 + 72, v30);
      sub_1000071EC(v30, v31);
      sub_100008B18();
      sub_100007230(v30);
      sub_100008DD8();
      sub_100008E08();
      sub_100008E18();
      sub_100008DE8();

      v13 = objc_allocWithZone(PRPosterContentGradientStyle);
      sub_100008448(0, &qword_100016430, UIColor_ptr);
      v14 = sub_100008CE8().super.isa;

      v10 = [v13 initWithColors:v14];

      return v10;
    }

    v29[0] = _swiftEmptyArrayStorage;
    sub_100008DF8();
    v21 = v11 + 32;
    v22 = v12;
    do
    {
      sub_10000727C(v21, v30);
      sub_1000071EC(v30, v31);
      sub_100008B18();
      sub_100007230(v30);
      sub_100008DD8();
      sub_100008E08();
      sub_100008E18();
      sub_100008DE8();
      v21 += 40;
      --v22;
    }

    while (v22);

    v23 = 1.0 / v12;
    v30[0] = _swiftEmptyArrayStorage;
    v19 = v23 * 0.5;
    v24 = v23 * 0.5;
    do
    {
      [objc_allocWithZone(NSNumber) initWithDouble:v24];
      sub_100008CD8();
      if (*((v30[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100008CF8();
      }

      result = sub_100008D08();
      v24 = v23 + v24;
      --v12;
    }

    while (v12);
    v20 = v30[0];
  }

  else
  {

    v30[0] = _swiftEmptyArrayStorage;
    v19 = INFINITY;
    v20 = _swiftEmptyArrayStorage;
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
    sub_100008DB8();
    goto LABEL_24;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v20 + 32);
LABEL_24:
    sub_100008CD8();
    if (*((v30[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100008CF8();
    }

    sub_100008D08();
    v26 = objc_allocWithZone(PRPosterContentGradientStyle);
    sub_100008448(0, &qword_100016430, UIColor_ptr);
    v27 = sub_100008CE8().super.isa;

    sub_100008448(0, &qword_100016438, NSNumber_ptr);
    v28 = sub_100008CE8().super.isa;
    v10 = [v26 initWithColors:v27 gradientType:2 locations:v28 startPoint:0.5 endPoint:{0.5, 1.0, v19}];

    return v10;
  }

  __break(1u);
  return result;
}

char *sub_100005AC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100008BD8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100008B08();
  v40 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v38 = v7;
    v39 = v6;
    v18 = [a1 identifier];
    v19 = sub_100008C78();
    v21 = v20;

    swift_beginAccess();
    v22 = *(a4 + 16);
    if (*(v22 + 16))
    {
      v23 = sub_1000069AC(v19, v21);
      v25 = v24;

      if (v25)
      {
        v26 = v40;
        v27 = *(v40 + 16);
        v27(v15, *(v22 + 56) + *(v40 + 72) * v23, v10);
        result = swift_endAccess();
        if (*&v17[OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController])
        {
          v27(v13, v15, v10);

          sub_1000089B8();

          return (*(v26 + 8))(v15, v10);
        }

        else
        {
          __break(1u);
        }

        return result;
      }
    }

    else
    {
    }

    swift_endAccess();
    sub_100008A68();
    sub_100008A38();
    swift_unknownObjectRetain();
    v28 = sub_100008BC8();
    v29 = sub_100008D68();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41[0] = v31;
      *v30 = 136446210;
      v32 = [a1 identifier];
      v33 = sub_100008C78();
      v35 = v34;

      v36 = sub_100006404(v33, v35, v41);

      *(v30 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "Unknown style provided back from content style picker. Identifier='%{public}s'. Editor failed to take effect.", v30, 0xCu);
      sub_100007230(v31);
    }

    else
    {
    }

    return (*(v38 + 8))(v9, v39);
  }

  return result;
}

uint64_t sub_100005E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);

  v5 = swift_unknownObjectRetain();
  v4(v5, a3);

  return swift_unknownObjectRelease();
}

id sub_100005F24(char *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  *&a1[*a3] = 0;
  v5.receiver = a1;
  v5.super_class = a4();
  return objc_msgSendSuper2(&v5, "init");
}

id sub_100005F98(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100006004()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000603C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100006134;

  return v6(a1);
}

uint64_t sub_100006134()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_10000622C(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001C28(&qword_100016440, &unk_100009CD0);
  v10 = *(sub_100008B08() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100008B08() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_100006404(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000064D0(v11, 0, 0, 1, a1, a2);
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
    sub_100007174(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007230(v11);
  return v7;
}

unint64_t sub_1000064D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000065DC(a5, a6);
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
    result = sub_100008DC8();
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

void *sub_1000065DC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100006628(a1, a2);
  sub_100006758(&off_1000107C0);
  return v3;
}

void *sub_100006628(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100006844(v5, 0);
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

  result = sub_100008DC8();
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
        v10 = sub_100008CC8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100006844(v10, 0);
        result = sub_100008D98();
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

uint64_t sub_100006758(uint64_t result)
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

  result = sub_1000068B8(result, v11, 1, v3);
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

void *sub_100006844(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100001C28(&qword_100016420, &qword_100009CC0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000068B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001C28(&qword_100016420, &qword_100009CC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_1000069AC(uint64_t a1, uint64_t a2)
{
  sub_100008EB8();
  sub_100008CA8();
  v4 = sub_100008EC8();

  return sub_100006DA4(a1, a2, v4);
}

void sub_100006A24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = sub_100008B08();
  v5 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100001C28(&qword_100016418, &qword_100009CB8);
  v43 = v4;
  v8 = sub_100008E68();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v39 = v2;
    v40 = (v5 + 16);
    v41 = v7;
    v42 = v5;
    v44 = (v5 + 32);
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v42 + 72);
      v28 = v23 + v27 * v22;
      if (v43)
      {
        (*v44)(v45, v28, v46);
      }

      else
      {
        (*v40)(v45, v28, v46);
      }

      sub_100008EB8();
      sub_100008CA8();
      v29 = sub_100008EC8();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      (*v44)((*(v9 + 56) + v27 * v17), v45, v46);
      ++*(v9 + 16);
      v7 = v41;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

unint64_t sub_100006DA4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100008E78())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_100006E5C()
{
  v1 = v0;
  v35 = sub_100008B08();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001C28(&qword_100016418, &qword_100009CB8);
  v3 = *v0;
  v4 = sub_100008E58();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

uint64_t sub_1000070DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007114()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000715C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007174(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000071D4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1000071EC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

double sub_100007230(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t sub_10000727C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_1000072E0(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = sub_100001C28(&qword_100016210, qword_100009BA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v28 = sub_100008A18();
  v6 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001C28(&qword_100016218, &qword_100009CE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v30 = sub_100008B68();
  v12 = *(v30 - 8);
  v13 = __chkstk_darwin(v30);
  v27 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  sub_1000032C0(a1);
  sub_100008A68();
  sub_1000089F8();
  v31 = &OBJC_PROTOCOL___PREditingDelegate;
  v17 = swift_dynamicCastObjCProtocolConditional();
  v18 = sub_100008A28();
  v19 = *(v18 - 8);
  v20 = &enum case for ClockLogger.Role.render(_:);
  if (v17)
  {
    v20 = &enum case for ClockLogger.Role.edit(_:);
  }

  (*(*(v18 - 8) + 104))(v11, *v20, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  v21 = v28;
  (*(v6 + 104))(v8, enum case for ClockLogger.Host.ambient(_:), v28);
  sub_100008B48();
  v22 = sub_100008AE8();
  (*(*(v22 - 8) + 56))(v5, 0, 1, v22);
  sub_100008A08();

  sub_100002760(v5, &qword_100016210, qword_100009BA0);
  (*(v6 + 8))(v8, v21);
  sub_100002760(v11, &qword_100016218, &qword_100009CE0);
  v23 = v30;
  (*(v12 + 16))(v27, v16, v30);
  sub_1000089E8();
  swift_allocObject();
  v24 = sub_1000089C8();
  (*(v12 + 8))(v16, v23);
  *(v29 + OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController) = v24;

  return result;
}

void sub_100007700(uint64_t a1, char *a2)
{
  v4 = sub_100008B08();
  __chkstk_darwin(v4 - 8);
  v54 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100008BD8();
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v53 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100008AE8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v44 - v13;
  v55 = sub_100008B68();
  v15 = *(v55 - 8);
  v16 = __chkstk_darwin(v55);
  v52 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v44 - v18;
  sub_1000032C0(a1);
  sub_100008B48();
  v20 = OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController;
  v56 = a2;
  if (!*&a2[OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController])
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100008998();

  sub_100008490(&qword_100016458, &type metadata accessor for ClockFaceKind, &protocol conformance descriptor for ClockFaceKind);
  v21 = sub_100008C58();
  v22 = *(v9 + 8);
  v22(v12, v8);
  v22(v14, v8);
  v14 = v55;
  if (v21)
  {
LABEL_7:
    if (*&v56[v20])
    {

      sub_100008B58();
      sub_1000089B8();

      (*(v15 + 8))(v19, v14);
      return;
    }

    goto LABEL_10;
  }

  v49 = v20;
  sub_100008A68();
  v23 = v53;
  sub_100008A38();
  v24 = *(v15 + 16);
  v48 = v15;
  v25 = v52;
  v24(v52, v19, v14);
  v26 = v56;
  v14 = v56;
  v27 = sub_100008BC8();
  v47 = sub_100008D78();
  if (!os_log_type_enabled(v27, v47))
  {

    v43 = v48;
    v14 = v55;
    (*(v48 + 8))(v25, v55);
    (*(v50 + 8))(v23, v51);
    v20 = v49;
    v15 = v43;
    goto LABEL_7;
  }

  v46 = v27;
  v28 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  v57 = v45;
  v29 = v28;
  *v28 = 136446466;
  v20 = v49;
  if (*&v26[v49])
  {

    sub_100008998();

    v30 = sub_100008AD8();
    v32 = v31;
    v22(v12, v8);
    v33 = sub_100006404(v30, v32, &v57);

    v44 = v29;
    *(v29 + 1) = v33;
    *(v29 + 6) = 2082;
    v34 = v52;
    sub_100008B48();
    v35 = sub_100008AD8();
    v37 = v36;
    v22(v12, v8);
    v15 = v48;
    v38 = v34;
    v39 = v55;
    (*(v48 + 8))(v38, v55);
    v40 = sub_100006404(v35, v37, &v57);
    v14 = v39;

    v41 = v44;
    *(v44 + 14) = v40;
    v42 = v46;
    _os_log_impl(&_mh_execute_header, v46, v47, "Cannot change kind when switching configuration from %{public}s to %{public}s", v41, 0x16u);
    swift_arrayDestroy();

    (*(v50 + 8))(v53, v51);
    goto LABEL_7;
  }

LABEL_11:

  __break(1u);
}

id sub_100007CE0(uint64_t a1, void *a2)
{
  v3 = sub_100008BD8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  if (sub_100008B38())
  {
    v10 = [a2 targetConfiguration];
    isa = sub_100008C38().super.isa;

    v27 = 0;
    v12 = [v10 storeUserInfo:isa error:&v27];

    v13 = v27;
    if (v12)
    {

      return v13;
    }

    else
    {
      v26 = v27;
      v18 = v27;
      sub_100008918();

      swift_willThrow();
      sub_100008A68();
      sub_100008A38();
      swift_errorRetain();
      v19 = sub_100008BC8();
      v20 = sub_100008D68();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v27 = v22;
        *v21 = 136446210;
        swift_getErrorValue();
        v23 = sub_100008EA8();
        v25 = sub_100006404(v23, v24, &v27);

        *(v21 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v19, v20, "Error storing user info: %{public}s", v21, 0xCu);
        sub_100007230(v22);
      }

      else
      {
      }

      return (*(v4 + 8))(v7, v3);
    }
  }

  else
  {
    sub_100008A68();
    sub_100008A38();
    v15 = sub_100008BC8();
    v16 = sub_100008D68();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Dictionary must not be nil for configuration", v17, 2u);
    }

    return (*(v4 + 8))(v9, v3);
  }
}

void sub_1000080A0(void *a1)
{
  v2 = OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController;
  if (!*(v1 + OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController))
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_100008938();

  if (!*(v1 + v2))
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_100008948();

  *(v1 + v2) = 0;

  v4 = *(v1 + *a1);
  *(v1 + *a1) = 0;
}

void *sub_10000813C()
{
  v1 = sub_100008B08();
  v2 = *(v1 - 8);
  result = __chkstk_darwin(v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController))
  {

    v6 = sub_100008958();

    v7 = *(v6 + 16);
    if (v7)
    {
      v17 = _swiftEmptyArrayStorage;
      sub_100008DF8();
      v9 = *(v2 + 16);
      v8 = v2 + 16;
      v15[1] = v6;
      v16 = v9;
      v10 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
      v11 = *(v8 + 56);
      do
      {
        v16(v5, v10, v1);
        sub_100008AF8();
        v12 = objc_allocWithZone(PREditingLook);
        v13 = sub_100008C68();

        v14 = sub_100008C68();
        [v12 initWithIdentifier:v13 displayName:v14];

        (*(v8 - 8))(v5, v1);
        sub_100008DD8();
        sub_100008E08();
        sub_100008E18();
        sub_100008DE8();
        v10 += v11;
        --v7;
      }

      while (v7);

      return v17;
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100008358(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController))
  {

    v3 = [a1 foregroundView];
    v4 = [v3 window];

    v5 = [v4 rootViewController];
    v6 = [a1 foregroundView];
    sub_1000089D8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100008448(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100008490(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000084D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100008518(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000085E8;

  return sub_100003C10(v7, v8, a1, v4, v5, v6);
}

uint64_t sub_1000085E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000086DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001C28(&qword_100016460, &qword_100009CE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000874C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008784(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008900;

  return sub_10000603C(a1, v4);
}

uint64_t sub_10000883C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000085E8;

  return sub_10000603C(a1, v4);
}
uint64_t sub_14B8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1500(uint64_t a1)
{
  sub_3204(v1 + 16, v4);
  sub_1838(a1, v1 + 16, &qword_8128, &qword_37E0);
  return swift_endAccess();
}

double sub_15A0@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1600(uint64_t a1)
{
  sub_3204(v1 + 136, v4);
  sub_1838(a1, v1 + 136, &qword_8130, &qword_37E8);
  return swift_endAccess();
}

uint64_t sub_16A4()
{
  sub_321C();
  sub_31C4();
  v0 = swift_allocObject();
  sub_16F8();
  return v0;
}

uint64_t sub_16F8()
{
  sub_321C();
  bzero((v1 + 16), 0xA0uLL);
  sub_1820(v4, v38);
  sub_3198(v1 + 16, v5, v6, v7, v8, v9, v10, v11, v34);
  sub_1838(v38, v1 + 16, &qword_8128, &qword_37E0);
  swift_endAccess();
  sub_1820(v3, v38);
  sub_3198(v1 + 136, v12, v13, v14, v15, v16, v17, v18, v35);
  sub_1838(v38, v1 + 136, &qword_8130, &qword_37E8);
  swift_endAccess();
  sub_1820(v2, v38);
  sub_3198(v1 + 56, v19, v20, v21, v22, v23, v24, v25, v36);
  sub_1838(v38, v1 + 56, &qword_8138, &qword_37F0);
  swift_endAccess();
  sub_1820(v0, v38);
  sub_3198(v1 + 96, v26, v27, v28, v29, v30, v31, v32, v37);
  sub_1838(v38, v1 + 96, &qword_8140, &qword_37F8);
  swift_endAccess();
  return v1;
}

uint64_t sub_1820(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1838(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_3230(a1, a2, a3, a4);
  sub_31D4();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t sub_1888(uint64_t a1)
{
  sub_31C4();
  v1 = swift_allocObject();
  sub_18B8();
  return v1;
}

uint64_t sub_18B8()
{
  v31 = sub_3268();
  sub_3174();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_3188();
  v6 = v5 - v4;
  v7 = sub_14B8(&qword_8148, qword_3800);
  __chkstk_darwin(v7 - 8);
  sub_31E4();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = sub_32A8();
  sub_3174();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_3188();
  v20 = (v19 - v18);
  sub_3448();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = v0;
  bzero((v0 + 16), 0xA0uLL);
  v32 = objc_opt_self();
  v22 = [v32 bundleForClass:ObjCClassFromMetadata];
  v23 = [v22 resourceURL];
  if (v23)
  {
    v24 = v23;
    sub_3278();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  sub_1C50(v10, v25, 1, v14);
  sub_1C78(v10, v13);
  if (sub_1CE8(v13, 1, v14) == 1)
  {
    sub_2A50(v13, &qword_8148, qword_3800);
    sub_33D8();
    type metadata accessor for ContactsFlowDelegatePlugin();
    v26 = [v32 bundleForClass:swift_getObjCClassFromMetadata()];
    sub_33C8();
  }

  else
  {
    v34 = 0x6574616C706D6554;
    v35 = 0xE900000000000073;
    v27 = v31;
    (*(v2 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v31);
    sub_1D34();
    sub_3298();
    (*(v2 + 8))(v6, v27);
    v28 = *(v16 + 8);
    v28(v13, v14);
    sub_3288(1);
    v28(v20, v14);
    sub_33D8();
    type metadata accessor for ContactsFlowDelegatePlugin();
    v26 = [v32 bundleForClass:swift_getObjCClassFromMetadata()];
    sub_33B8();
  }

  return v33;
}

uint64_t sub_1C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_14B8(&qword_8148, qword_3800);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D34()
{
  result = qword_8150;
  if (!qword_8150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8150);
  }

  return result;
}

uint64_t sub_1D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v67 = a2;
  v63 = sub_3538();
  sub_3174();
  v62 = v5;
  __chkstk_darwin(v6);
  sub_31E4();
  sub_31B4();
  __chkstk_darwin(v7);
  v60 = &v56[-v8];
  v9 = sub_3388();
  sub_3174();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_31E4();
  sub_31B4();
  __chkstk_darwin(v13);
  sub_31B4();
  __chkstk_darwin(v14);
  v16 = &v56[-v15];
  v17 = sub_3468();
  sub_3174();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_3188();
  v23 = v22 - v21;
  v66 = sub_34E8();
  sub_3174();
  v65 = v24;
  __chkstk_darwin(v25);
  sub_3188();
  v28 = v27 - v26;
  sub_3458();
  v64 = v28;
  sub_34F8();
  (*(v19 + 8))(v23, v17);
  v29 = *(v11 + 16);
  v29(v16, a1, v9);
  LODWORD(v17) = (*(v11 + 88))(v16, v9);
  LODWORD(v23) = enum case for Parse.NLv3IntentOnly(_:);
  v30 = *(v11 + 8);
  v31 = v30(v16, v9);
  if (v17 == v23)
  {
    (*(*v3 + 184))(&v74, v31);
    if (v75)
    {
      sub_1820(&v74, &v76);
    }

    else
    {
      v77 = sub_32D8();
      v78 = sub_30AC(&qword_8160, 255, &type metadata accessor for FindMyFriendFlowProvider, "U\n");
      sub_29F0(&v76);
      sub_32C8();
      if (v75)
      {
        sub_2A50(&v74, &qword_8130, &qword_37E8);
      }
    }

    sub_2948(&v76, v77);
    if (sub_34A8())
    {
      sub_3018(&v76);
      v32 = v60;
      sub_34C8();
      v33 = v59;
      v29(v59, a1, v9);
      v34 = sub_3528();
      v35 = sub_3568();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v76 = v61;
        *v36 = 136315138;
        v57 = v35;
        v29(v58, v33, v9);
        v37 = sub_3548();
        v38 = v33;
        v39 = v37;
        v41 = v40;
        v30(v38, v9);
        v42 = sub_2AA8(v39, v41, &v76);

        *(v36 + 4) = v42;
        _os_log_impl(&dword_0, v34, v57, "[ContactsFlowDelegatePlugin] SiriFindMy provided a flow for parse: %s", v36, 0xCu);
        sub_3018(v61);

        sub_31F4();
        v44 = v60;
      }

      else
      {

        v30(v33, v9);
        sub_31F4();
        v44 = v32;
      }

      v43(v44, v63);
      sub_32F8();

      goto LABEL_29;
    }

    sub_3018(&v76);
  }

  sub_3250(v3 + 56, v73);
  sub_28F8(v3 + 56, &v74, &qword_8138, &qword_37F0);
  if (v75)
  {
    sub_1820(&v74, &v76);
    v45 = v61;
  }

  else
  {
    v46 = sub_3488();
    swift_allocObject();
    v47 = sub_3478();
    v77 = v46;
    v78 = &protocol witness table for PluginPrewarmProvider;
    v76 = v47;
    v45 = v61;
    if (v75)
    {
      sub_2A50(&v74, &qword_8138, &qword_37F0);
    }
  }

  sub_3250(v3 + 96, v70);
  sub_28F8(v3 + 96, &v71, &qword_8140, &qword_37F8);
  if (v72)
  {
    sub_1820(&v71, &v74);
  }

  else
  {
    sub_3368();
    if (v72)
    {
      sub_2A50(&v71, &qword_8140, &qword_37F8);
    }
  }

  sub_2948(&v74, v75);
  v48 = sub_3378();
  if (v49)
  {
    sub_34C8();
    v50 = sub_3528();
    v51 = sub_3568();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_0, v50, v51, "[ContactsFlowDelegatePlugin] Prewarming plugin...", v52, 2u);
    }

    sub_31F4();
    v53(v45, v63);
    sub_2948(&v76, v77);
    sub_3498();
  }

  (*(*v3 + 112))(&v68, v48);
  if (v69)
  {
    sub_1820(&v68, &v71);
  }

  else
  {
    sub_2694(&v71);
    if (v69)
    {
      sub_2A50(&v68, &qword_8128, &qword_37E0);
    }
  }

  sub_298C(&v71, &v68);
  sub_3428();
  swift_allocObject();
  *&v68 = sub_3418();
  sub_30AC(&qword_8158, 255, &type metadata accessor for ContactsDelegateFlow, &protocol conformance descriptor for ContactsDelegateFlow);
  sub_32E8();

  sub_32F8();

  sub_3018(&v71);
  sub_3018(&v74);
  sub_3018(&v76);
LABEL_29:
  v54 = v64;
  sub_34D8();
  return (*(v65 + 8))(v54, v66);
}

uint64_t sub_2694@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_33F8();
  __chkstk_darwin(v2 - 8);
  sub_3188();
  sub_3518();
  sub_3508();
  sub_3398();
  sub_3408();
  sub_33E8();
  sub_33A8();
  sub_34B8();
  sub_33E8();
  sub_33A8();
  sub_3358();
  v3 = sub_3448();
  swift_allocObject();
  result = sub_3438();
  a1[3] = v3;
  a1[4] = &protocol witness table for FlowFactory;
  *a1 = result;
  return result;
}

uint64_t sub_27C0()
{
  sub_2A50(v0 + 16, &qword_8128, &qword_37E0);
  sub_2A50(v0 + 56, &qword_8138, &qword_37F0);
  sub_2A50(v0 + 96, &qword_8140, &qword_37F8);
  sub_2A50(v0 + 136, &qword_8130, &qword_37E8);
  return v0;
}

uint64_t sub_2838()
{
  sub_27C0();
  v0 = sub_31C4();

  return _swift_deallocClassInstance(v0);
}

uint64_t sub_28A8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 216))();
  *a1 = result;
  return result;
}

uint64_t sub_28F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_3230(a1, a2, a3, a4);
  sub_31D4();
  (*(v6 + 16))(v4, v5);
  return v4;
}

void *sub_2948(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_298C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_29F0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2A50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_14B8(a2, a3);
  sub_31D4();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_2AA8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2B6C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_30F4(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_3018(v11);
  return v7;
}

unint64_t sub_2B6C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2C6C(a5, a6);
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
    result = sub_3588();
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

char *sub_2C6C(uint64_t a1, unint64_t a2)
{
  v3 = sub_2CB8(a1, a2);
  sub_2DD0(&off_4398);
  return v3;
}

char *sub_2CB8(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_3558())
  {
    result = sub_2EB4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_3578();
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
          result = sub_3588();
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

uint64_t sub_2DD0(uint64_t result)
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

    result = sub_2F24(result, v7, 1, v3);
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

void *sub_2EB4(uint64_t a1, uint64_t a2)
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

  sub_14B8(&unk_82A0, &qword_38F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2F24(char *result, int64_t a2, char a3, char *a4)
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
    sub_14B8(&unk_82A0, &qword_38F8);
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

uint64_t sub_3018(void *a1)
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

uint64_t sub_30AC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_30F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_3198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return _swift_beginAccess(a1, &a9, 33, 0);
}

uint64_t sub_3204(uint64_t a1, uint64_t a2)
{

  return _swift_beginAccess(a1, a2, 33, 0);
}

uint64_t sub_3230(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_14B8(a3, a4);
}

uint64_t sub_3250(uint64_t a1, uint64_t a2)
{

  return _swift_beginAccess(a1, a2, 0, 0);
}
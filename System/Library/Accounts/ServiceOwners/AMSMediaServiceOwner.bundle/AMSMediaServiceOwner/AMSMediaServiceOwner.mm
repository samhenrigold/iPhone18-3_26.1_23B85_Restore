uint64_t _s20AMSMediaServiceOwnerAAC17supportedServicesSaySo15AIDAServiceTypeaGvgZ_0()
{
  v0 = sub_11880();
  v15 = *(v0 - 8);
  v16 = v0;
  __chkstk_darwin(v0);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1780("supportedServices", 17, 2, 0);
  sub_A4D0(&qword_1C818, &qword_12788);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_125C0;
  v4 = AIDAServiceTypeStore;
  *(v3 + 32) = AIDAServiceTypeStore;
  v5 = v4;
  sub_11840();
  sub_A4D0(&qword_1C6A8, &qword_126D8);
  sub_117E0();
  *(swift_allocObject() + 16) = xmmword_125D0;
  sub_A4D0(&qword_1C6B0, &qword_126E0);
  v6 = AMSSetLogKeyIfNeeded();
  sub_118F0();

  sub_117C0();

  v18 = &type metadata for String;
  v17[0] = 0xD000000000000011;
  v17[1] = 0x8000000000013A10;
  sub_117A0();
  sub_1E30(v17, &qword_1C6B8, &qword_126E8);
  sub_11790();
  v17[0] = _swiftEmptyArrayStorage;
  sub_2018(0, 1, 0);
  v7 = v17[0];
  v8 = sub_118F0();
  v10 = v9;
  v12 = *(v7 + 16);
  v11 = *(v7 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_2018((v11 > 1), v12 + 1, 1);
    v7 = v17[0];
  }

  *(v7 + 16) = v12 + 1;
  v13 = v7 + 16 * v12;
  *(v13 + 32) = v8;
  *(v13 + 40) = v10;
  v18 = sub_A4D0(&qword_1C820, &qword_12790);
  v17[0] = v7;
  sub_117A0();
  sub_1E30(v17, &qword_1C6B8, &qword_126E8);
  sub_11850();

  (*(v15 + 8))(v2, v16);
  sub_203C("supportedServices", 0x11uLL, 2);
  return v3;
}

uint64_t sub_1780(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v35 = a4;
  LODWORD(v48) = a3;
  *(&v47 + 1) = a2;
  *&v47 = a1;
  v4 = sub_11880();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_11840();
  v8 = sub_A4D0(&qword_1C6A8, &qword_126D8);
  v9 = *(sub_117E0() - 8);
  v10 = *(v9 + 72);
  v11 = *(v9 + 80);
  v12 = (v11 + 32) & ~v11;
  v42 = 3 * v10;
  v44 = v11;
  v45 = v8;
  v13 = swift_allocObject();
  v41 = xmmword_125E0;
  *(v13 + 16) = xmmword_125E0;
  v43 = v12;
  v14 = sub_A4D0(&qword_1C6B0, &qword_126E0);
  v15 = AMSSetLogKeyIfNeeded();
  sub_118F0();

  v40 = v14;
  sub_117C0();

  *(&v56[0] + 1) = &type metadata for StaticString;
  v55 = v47;
  LOBYTE(v56[0]) = v48;
  sub_117A0();
  sub_1E30(&v55, &qword_1C6B8, &qword_126E8);
  *(&v56[0] + 1) = &type metadata for String;
  *&v55 = 0x64657472617473;
  *(&v55 + 1) = 0xE700000000000000;
  sub_117B0();
  sub_1E30(&v55, &qword_1C6B8, &qword_126E8);
  sub_11850();

  v16 = *(v5 + 8);
  v46 = v7;
  *(&v47 + 1) = v4;
  *&v47 = v5 + 8;
  v39 = v16;
  v16(v7, v4);
  result = v35;
  if (v35)
  {
    v19 = v35 + 64;
    v18 = *(v35 + 64);
    v37 = 2 * v10;
    v20 = 1 << *(v35 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v18;
    v23 = (v20 + 63) >> 6;

    v24 = 0;
    v38 = v19;
    v36 = v23;
    if (v22)
    {
      while (1)
      {
        v25 = v24;
LABEL_10:
        v26 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v27 = v26 | (v25 << 6);
        v28 = (*(v35 + 48) + 16 * v27);
        v30 = *v28;
        v29 = v28[1];
        sub_2E64(*(v35 + 56) + 32 * v27, &v50);
        *&v52 = v30;
        *(&v52 + 1) = v29;
        sub_2EC0(&v50, &v53);

LABEL_11:
        v55 = v52;
        v56[0] = v53;
        v56[1] = v54;
        v31 = *(&v52 + 1);
        if (!*(&v52 + 1))
        {
        }

        v48 = v55;
        sub_2EC0(v56, &v52);
        v32 = v46;
        sub_11840();
        *(swift_allocObject() + 16) = v41;
        v33 = AMSSetLogKeyIfNeeded();
        sub_118F0();

        sub_117C0();

        *(&v49 + 1) = v31;
        *&v50 = 58;
        *(&v50 + 1) = 0xE100000000000000;
        *&v49 = v48;
        *&v49 = sub_11940();
        *(&v49 + 1) = v34;
        sub_11920();
        v51 = &type metadata for String;
        v19 = v38;
        v50 = v49;
        sub_117A0();
        sub_1E30(&v50, &qword_1C6B8, &qword_126E8);
        sub_2E64(&v52, &v50);
        v23 = v36;
        sub_117A0();
        sub_1E30(&v50, &qword_1C6B8, &qword_126E8);
        sub_11850();

        v39(v32, *(&v47 + 1));
        result = sub_2ED0(&v52);
        if (!v22)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v25 >= v23)
        {
          v22 = 0;
          v53 = 0u;
          v54 = 0u;
          v52 = 0u;
          goto LABEL_11;
        }

        v22 = *(v19 + 8 * v25);
        ++v24;
        if (v22)
        {
          v24 = v25;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D58(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1DE8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1DE8()
{
  result = qword_1C8B0;
  if (!qword_1C8B0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1C8B0);
  }

  return result;
}

uint64_t sub_1E30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_A4D0(a2, a3);
  sub_1039C();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1E8C(uint64_t a1)
{

  return AMSErrorWithMultipleUnderlyingErrors();
}

void sub_1EB0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

char *sub_1F10(char *result, int64_t a2, char a3, char *a4)
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
    sub_A4D0(qword_1C828, qword_12798);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_2018(char *a1, int64_t a2, char a3)
{
  result = sub_1F10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_203C(uint64_t a1, unint64_t a2, int a3)
{
  v11 = a3;
  v10 = a2;
  v12 = sub_11880();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_11840();
  sub_A4D0(&qword_1C6A8, &qword_126D8);
  sub_117E0();
  *(swift_allocObject() + 16) = xmmword_125E0;
  sub_A4D0(&qword_1C6B0, &qword_126E0);
  v7 = AMSSetLogKeyIfNeeded();
  sub_118F0();

  sub_117C0();

  v16 = &type metadata for StaticString;
  v13 = a1;
  v14 = v10;
  v15 = v11;
  sub_117A0();
  sub_1E30(&v13, &qword_1C6B8, &qword_126E8);
  v16 = &type metadata for String;
  v13 = 0x64656873696E6966;
  v14 = 0xE800000000000000;
  sub_117B0();
  sub_1E30(&v13, &qword_1C6B8, &qword_126E8);
  sub_11850();

  return (*(v4 + 8))(v6, v12);
}

id AMSMediaServiceOwner.init(accountStore:)()
{
  sub_10800();
  swift_getObjectType();
  sub_10428(v0 + OBJC_IVAR____TtC20AMSMediaServiceOwner20AMSMediaServiceOwner_serviceOwner);
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, "init");
}

void *sub_23C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v69 = sub_11880();
  v72 = *(v69 - 8);
  v9 = __chkstk_darwin(v69);
  v60 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v57 = &v57 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v57 - v14;
  __chkstk_darwin(v13);
  v61 = &v57 - v16;
  v76 = a2;
  sub_A4D0(&qword_1C680, &qword_126B0);
  inited = swift_initStackObject();
  v71 = xmmword_125C0;
  *(inited + 16) = xmmword_125C0;
  *(inited + 32) = 0x5465636976726573;
  *(inited + 40) = 0xEB00000000657079;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = sub_118F0();
  *(inited + 56) = v18;
  v19 = sub_118B0();
  sub_1780("account(forService:)", 20, 2, v19);

  sub_A4D0(&qword_1C6F8, &qword_12730);
  v20 = swift_initStackObject();
  *(v20 + 16) = v71;
  v21 = AMSAccountMediaTypeProduction;
  *(v20 + 32) = AMSAccountMediaTypeProduction;
  v65 = "account(forService:)";
  v70 = v21;
  sub_11840();
  v22 = sub_A4D0(&qword_1C6A8, &qword_126D8);
  *&v71 = *(*(sub_117E0() - 8) + 72);
  v66 = 3 * v71;
  v64 = v22;
  v23 = swift_allocObject();
  v59 = xmmword_125E0;
  *(v23 + 16) = xmmword_125E0;
  v62 = sub_A4D0(&qword_1C6B0, &qword_126E0);
  v75 = v62;
  v24 = swift_allocObject();
  v73 = v24;
  *(v24 + 16) = a2;
  *(v24 + 24) = a3;
  v67 = a3;
  *(v24 + 32) = a4;
  v63 = a5 & 1;
  *(v24 + 40) = a5;
  v58 = a2;
  v68 = a4;

  v25 = AMSLogKey();
  if (v25)
  {
    v26 = v25;
    sub_118F0();
  }

  sub_117D0();

  sub_2ED0(&v73);
  v27 = v71;
  sub_11790();
  v65 = (2 * v27);
  v28 = sub_118F0();
  v75 = &type metadata for String;
  v73 = v28;
  v74 = v29;
  sub_117B0();
  sub_1E30(&v73, &qword_1C6B8, &qword_126E8);
  sub_11850();

  v30 = *(v72 + 8);
  v31 = v69;
  v72 += 8;
  v32 = v30;
  v30(v15, v69);
  sub_2F50(0, &qword_1C690, ACAccountStore_ptr);
  sub_2F90(&qword_1C728, &qword_1C690, ACAccountStore_ptr, &protocol conformance descriptor for ACAccountStore);
  sub_11820();
  v39 = v73;
  if (v73)
  {
    swift_setDeallocating();
    sub_2FD4();
    v40 = v39;
    sub_11840();
    *(swift_allocObject() + 16) = xmmword_125D0;
    v75 = v62;
    v41 = swift_allocObject();
    v73 = v41;
    v42 = v58;
    v43 = v67;
    *(v41 + 16) = v58;
    *(v41 + 24) = v43;
    *(v41 + 32) = v68;
    *(v41 + 40) = v63;
    v44 = v42;

    v45 = AMSLogKey();
    if (v45)
    {
      v46 = v45;
      sub_118F0();
    }

    sub_117D0();

    sub_2ED0(&v73);
    v75 = &type metadata for String;
    v73 = 0xD000000000000014;
    v74 = 0x80000000000141B0;
    sub_117A0();
    sub_1E30(&v73, &qword_1C6B8, &qword_126E8);
    sub_11790();
    v75 = sub_2F50(0, &qword_1C6C0, ACAccount_ptr);
    v73 = v40;
    sub_117A0();
    sub_1E30(&v73, &qword_1C6B8, &qword_126E8);
    v55 = v57;
    sub_11850();
  }

  else
  {
    sub_11840();
    *(swift_allocObject() + 16) = v59;
    v75 = v62;
    v33 = swift_allocObject();
    v73 = v33;
    v34 = v58;
    v35 = v67;
    *(v33 + 16) = v58;
    *(v33 + 24) = v35;
    *(v33 + 32) = v68;
    *(v33 + 40) = v63;
    v36 = v34;

    v37 = AMSLogKey();
    if (v37)
    {
      v38 = v37;
      sub_118F0();
    }

    sub_117D0();

    sub_2ED0(&v73);
    sub_11790();
    type metadata accessor for AMSAccountMediaType(0);
    v75 = v47;
    v73 = v70;
    v48 = v70;
    sub_117A0();
    sub_1E30(&v73, &qword_1C6B8, &qword_126E8);
    v49 = v60;
    sub_11850();

    v31 = v69;
    v32(v49, v69);
    swift_setDeallocating();
    sub_2FD4();
    sub_11840();
    *(swift_allocObject() + 16) = v59;
    v75 = v62;
    v50 = swift_allocObject();
    v73 = v50;
    v51 = v67;
    *(v50 + 16) = v36;
    *(v50 + 24) = v51;
    *(v50 + 32) = v68;
    *(v50 + 40) = v63;
    v52 = v36;

    v53 = AMSLogKey();
    if (v53)
    {
      v54 = v53;
      sub_118F0();
    }

    sub_117D0();

    sub_2ED0(&v73);
    v75 = &type metadata for String;
    v73 = 0xD000000000000014;
    v74 = 0x80000000000141B0;
    sub_117A0();
    sub_1E30(&v73, &qword_1C6B8, &qword_126E8);
    sub_11790();
    v55 = v61;
    sub_11850();
    v39 = 0;
  }

  v32(v55, v31);
  sub_203C("account(forService:)", 0x14uLL, 2);
  return v39;
}

ACAccount_optional __swiftcall AMSMediaServiceOwner.account(forService:)(__C::AIDAServiceType forService)
{
  v2 = sub_23C8(forService._rawValue, *(v1 + OBJC_IVAR____TtC20AMSMediaServiceOwner20AMSMediaServiceOwner_serviceOwner), *(v1 + OBJC_IVAR____TtC20AMSMediaServiceOwner20AMSMediaServiceOwner_serviceOwner + 8), *(v1 + OBJC_IVAR____TtC20AMSMediaServiceOwner20AMSMediaServiceOwner_serviceOwner + 16), *(v1 + OBJC_IVAR____TtC20AMSMediaServiceOwner20AMSMediaServiceOwner_serviceOwner + 24));
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

uint64_t sub_2E64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2EC0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2ED0(void *a1)
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

uint64_t sub_2F30()
{

  return sub_11790();
}

uint64_t sub_2F50(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2F90(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2F50(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2FD4()
{
  type metadata accessor for AMSAccountMediaType(0);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

NSString sub_3108@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_39B8(a2);
  *a1 = result;
  return result;
}

uint64_t sub_3160()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3198()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_32D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3330@<X0>(uint64_t *a1@<X8>)
{
  result = sub_335C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_3360(uint64_t a2@<X8>)
{
  sub_3394();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_33CC(uint64_t a1)
{
  v2 = sub_32D0(&qword_1C530, type metadata accessor for AIDAServiceType, &unk_1237C);
  v3 = sub_32D0(&qword_1C538, type metadata accessor for AIDAServiceType, &unk_122A4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_3560@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_118C0();

  *a2 = v3;
  return result;
}

uint64_t sub_35A8(uint64_t a1)
{
  v2 = sub_32D0(&qword_1C560, type metadata accessor for AMSAccountMediaType, &unk_124EC);
  v3 = sub_32D0(&qword_1C568, type metadata accessor for AMSAccountMediaType, &unk_1248C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_373C(uint64_t a1, uint64_t a2)
{
  sub_118F0();
  sub_11910();
}

Swift::Int sub_3790(uint64_t a1, uint64_t a2)
{
  sub_118F0();
  sub_11A00();
  sub_11910();
  v2 = sub_11A10();

  return v2;
}

uint64_t sub_3804(uint64_t a1, uint64_t a2)
{
  v2 = sub_118F0();
  v4 = v3;
  if (v2 == sub_118F0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_119F0();
  }

  return v7 & 1;
}

uint64_t sub_3888(uint64_t a1)
{
  sub_118F0();
  v1 = sub_11930();

  return v1;
}

uint64_t sub_38C0(uint64_t a1, id *a2)
{
  result = sub_118D0();
  *a2 = 0;
  return result;
}

uint64_t sub_3938(uint64_t a1, id *a2)
{
  v3 = sub_118E0();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_39B8(uint64_t a1)
{
  sub_118F0();
  v1 = sub_118C0();

  return v1;
}

unint64_t sub_3A14(uint64_t a1)
{
  result = sub_3A3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_3A3C()
{
  result = qword_1C5D0;
  if (!qword_1C5D0)
  {
    type metadata accessor for AIDAServiceOperationUIPermissions(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D0);
  }

  return result;
}

uint64_t sub_3A94(uint64_t a1)
{
  *(a1 + 8) = sub_3AFC(&qword_1C530, &unk_1237C);
  result = sub_3AFC(&qword_1C518, &unk_12344);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_3AFC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AIDAServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id AMSMediaServiceOwner.__allocating_init(accountStore:)()
{
  v1 = objc_allocWithZone(sub_10800());
  sub_10428(v1 + OBJC_IVAR____TtC20AMSMediaServiceOwner20AMSMediaServiceOwner_serviceOwner);
  v4.receiver = v2;
  v4.super_class = v0;
  return objc_msgSendSuper2(&v4, "init");
}

id sub_3B90@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = objc_allocWithZone(AMSAuthenticateTask);

  v7 = a2;
  result = sub_E4E4(a1, a2);
  *a3 = result;
  return result;
}

id AMSMediaServiceOwner.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AMSMediaServiceOwner.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::String_optional __swiftcall AMSMediaServiceOwner.altDSID(for:service:)(ACAccount a1, __C::AIDAServiceType service)
{
  v2 = sub_435C(a1.super.isa, service._rawValue, sub_3CB4);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

void *sub_3CB4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v34 = a6;
  v35 = a5;
  v33 = a4;
  v37 = sub_11880();
  v36 = *(v37 - 8);
  v8 = __chkstk_darwin(v37);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v32 - v11;
  v41 = a1;
  sub_A4D0(&qword_1C680, &qword_126B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_125F0;
  *(inited + 32) = 0x746E756F636361;
  *(inited + 40) = 0xE700000000000000;
  v14 = sub_2F50(0, &qword_1C6C0, ACAccount_ptr);
  *(inited + 48) = a1;
  *(inited + 72) = v14;
  *(inited + 80) = 0x5465636976726573;
  *(inited + 88) = 0xEB00000000657079;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = sub_118F0();
  *(inited + 104) = v15;
  v16 = a1;
  v17 = sub_118B0();
  sub_1780("altDSID(for:service:)", 21, 2, v17);

  sub_2F90(&qword_1C6C8, &qword_1C6C0, ACAccount_ptr, &protocol conformance descriptor for ACAccount);
  result = sub_11730();
  if (v38)
  {

    v19 = sub_11750();
    v21 = v20;
    if (v20)
    {

      sub_11840();
      sub_A4D0(&qword_1C6A8, &qword_126D8);
      sub_117E0();
      *(swift_allocObject() + 16) = xmmword_125D0;
      v40 = sub_A4D0(&qword_1C6B0, &qword_126E0);
      v22 = swift_allocObject();
      v38 = v22;
      v23 = v33;
      *(v22 + 16) = a3;
      *(v22 + 24) = v23;
      *(v22 + 32) = v35;
      *(v22 + 40) = v34 & 1;
      v24 = a3;

      v25 = AMSLogKey();
      if (v25)
      {
        v26 = v25;
        sub_118F0();
      }

      sub_117D0();

      sub_2ED0(&v38);
      v40 = &type metadata for String;
      v38 = 0xD000000000000015;
      v39 = 0x8000000000014140;
      sub_117A0();
      sub_1E30(&v38, &qword_1C6B8, &qword_126E8);
      sub_11790();
      v40 = &type metadata for String;
      v38 = v19;
      v39 = v21;
      sub_117A0();
      sub_1E30(&v38, &qword_1C6B8, &qword_126E8);
      sub_11850();
    }

    else
    {
      sub_11840();
      sub_A4D0(&qword_1C6A8, &qword_126D8);
      sub_117E0();
      *(swift_allocObject() + 16) = xmmword_125E0;
      v40 = sub_A4D0(&qword_1C6B0, &qword_126E0);
      v27 = swift_allocObject();
      v38 = v27;
      v28 = v33;
      *(v27 + 16) = a3;
      *(v27 + 24) = v28;
      *(v27 + 32) = v35;
      *(v27 + 40) = v34 & 1;
      v29 = a3;

      v30 = AMSLogKey();
      if (v30)
      {
        v31 = v30;
        sub_118F0();
      }

      sub_117D0();

      sub_2ED0(&v38);
      v40 = &type metadata for String;
      v38 = 0xD000000000000015;
      v39 = 0x8000000000014140;
      sub_117A0();
      sub_1E30(&v38, &qword_1C6B8, &qword_126E8);
      sub_11790();
      sub_11850();
      v12 = v10;
    }

    (*(v36 + 8))(v12, v37);
    sub_203C("altDSID(for:service:)", 0x15uLL, 2);
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::String_optional __swiftcall AMSMediaServiceOwner.dsid(for:service:)(ACAccount a1, __C::AIDAServiceType service)
{
  v2 = sub_435C(a1.super.isa, service._rawValue, sub_4380);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

void *sub_4380(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v35 = a6;
  v36 = a5;
  v34 = a4;
  v38 = sub_11880();
  v37 = *(v38 - 8);
  v8 = __chkstk_darwin(v38);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  v42 = a1;
  sub_A4D0(&qword_1C680, &qword_126B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_125F0;
  *(inited + 32) = 0x746E756F636361;
  *(inited + 40) = 0xE700000000000000;
  v14 = sub_2F50(0, &qword_1C6C0, ACAccount_ptr);
  *(inited + 48) = a1;
  *(inited + 72) = v14;
  *(inited + 80) = 0x5465636976726573;
  *(inited + 88) = 0xEB00000000657079;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = sub_118F0();
  *(inited + 104) = v15;
  v16 = a1;
  v17 = sub_118B0();
  sub_1780("dsid(for:service:)", 18, 2, v17);

  sub_2F90(&qword_1C6C8, &qword_1C6C0, ACAccount_ptr, &protocol conformance descriptor for ACAccount);
  result = sub_11730();
  if (v39)
  {

    v19 = sub_11740();
    if (v20)
    {
      sub_11840();
      sub_A4D0(&qword_1C6A8, &qword_126D8);
      sub_117E0();
      *(swift_allocObject() + 16) = xmmword_125E0;
      v41 = sub_A4D0(&qword_1C6B0, &qword_126E0);
      v21 = swift_allocObject();
      v39 = v21;
      v22 = v34;
      *(v21 + 16) = a3;
      *(v21 + 24) = v22;
      *(v21 + 32) = v36;
      *(v21 + 40) = v35 & 1;
      v23 = a3;

      v24 = AMSLogKey();
      if (v24)
      {
        v25 = v24;
        sub_118F0();
      }

      sub_117D0();

      sub_2ED0(&v39);
      v41 = &type metadata for String;
      v39 = 0xD000000000000012;
      v40 = 0x8000000000014100;
      sub_117A0();
      sub_1E30(&v39, &qword_1C6B8, &qword_126E8);
      sub_11790();
      sub_11850();

      (*(v37 + 8))(v10, v38);
      v32 = 0;
    }

    else
    {
      v26 = v19;
      sub_11840();
      sub_A4D0(&qword_1C6A8, &qword_126D8);
      sub_117E0();
      *(swift_allocObject() + 16) = xmmword_125D0;
      v41 = sub_A4D0(&qword_1C6B0, &qword_126E0);
      v27 = swift_allocObject();
      v39 = v27;
      v28 = v34;
      *(v27 + 16) = a3;
      *(v27 + 24) = v28;
      *(v27 + 32) = v36;
      *(v27 + 40) = v35 & 1;
      v29 = a3;

      v30 = AMSLogKey();
      if (v30)
      {
        v31 = v30;
        sub_118F0();
      }

      sub_117D0();

      sub_2ED0(&v39);
      v41 = &type metadata for String;
      v39 = 0xD000000000000012;
      v40 = 0x8000000000014100;
      sub_117A0();
      sub_1E30(&v39, &qword_1C6B8, &qword_126E8);
      sub_11790();
      v41 = &type metadata for Int64;
      v39 = v26;
      sub_117A0();
      sub_1E30(&v39, &qword_1C6B8, &qword_126E8);
      sub_11850();

      (*(v37 + 8))(v12, v38);
      v39 = v26;
      v32 = sub_119E0();
    }

    sub_203C("dsid(for:service:)", 0x12uLL, 2);
    return v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_4A5C(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(id, id))
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  a5(v8, v9);
  v12 = v11;

  if (v12)
  {
    sub_10C90();
    v13 = sub_118C0();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void *sub_4B24@<X0>(void *a1@<X0>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v45 = a6;
  v46 = a5;
  v44 = a4;
  v49 = a7;
  v48 = sub_11880();
  v47 = *(v48 - 8);
  v9 = __chkstk_darwin(v48);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v42 - v11;
  v13 = sub_A4D0(&qword_1C678, &qword_126A8);
  __chkstk_darwin(v13 - 8);
  v15 = &v42 - v14;
  v53 = a1;
  sub_A4D0(&qword_1C680, &qword_126B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_125F0;
  *(inited + 32) = 0x746E756F636361;
  *(inited + 40) = 0xE700000000000000;
  v17 = sub_2F50(0, &qword_1C6C0, ACAccount_ptr);
  *(inited + 48) = a1;
  *(inited + 72) = v17;
  *(inited + 80) = 0x5465636976726573;
  *(inited + 88) = 0xEB00000000657079;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = sub_118F0();
  *(inited + 104) = v18;
  v19 = a1;
  v20 = sub_118B0();
  sub_1780("nameComponents(for:service:)", 28, 2, v20);

  sub_2F90(&qword_1C6C8, &qword_1C6C0, ACAccount_ptr, &protocol conformance descriptor for ACAccount);
  result = sub_11730();
  if (v50)
  {

    sub_11770();
    v23 = v22;
    sub_11760();
    if (v23)
    {
    }

    else if (!v24)
    {
      v36 = v43;
      sub_11840();
      sub_A4D0(&qword_1C6A8, &qword_126D8);
      sub_117E0();
      *(swift_allocObject() + 16) = xmmword_125E0;
      v52 = &type metadata for String;
      v50 = 0xD00000000000001CLL;
      v51 = 0x80000000000140A0;
      sub_117A0();
      sub_1E30(&v50, &qword_1C6B8, &qword_126E8);
      v52 = sub_A4D0(&qword_1C6B0, &qword_126E0);
      v37 = swift_allocObject();
      v50 = v37;
      v38 = v44;
      *(v37 + 16) = a3;
      *(v37 + 24) = v38;
      *(v37 + 32) = v46;
      *(v37 + 40) = v45 & 1;
      v39 = a3;

      v40 = AMSLogKey();
      if (v40)
      {
        v41 = v40;
        sub_118F0();
      }

      sub_117D0();

      sub_2ED0(&v50);
      sub_11790();
      sub_11850();

      (*(v47 + 8))(v36, v48);
      v35 = sub_11710();
      v33 = v49;
      v34 = 1;
      goto LABEL_8;
    }

    sub_11770();
    sub_11760();
    v25 = sub_11710();
    sub_A518(v15, 1, 1, v25);
    sub_116F0();
    sub_11840();
    sub_A4D0(&qword_1C6A8, &qword_126D8);
    sub_117E0();
    *(swift_allocObject() + 16) = xmmword_125D0;
    v52 = sub_A4D0(&qword_1C6B0, &qword_126E0);
    v26 = swift_allocObject();
    v50 = v26;
    v27 = v44;
    *(v26 + 16) = a3;
    *(v26 + 24) = v27;
    *(v26 + 32) = v46;
    *(v26 + 40) = v45 & 1;
    v28 = a3;

    v29 = AMSLogKey();
    if (v29)
    {
      v30 = v29;
      sub_118F0();
    }

    sub_117D0();

    sub_2ED0(&v50);
    v52 = &type metadata for String;
    v50 = 0xD00000000000001CLL;
    v51 = 0x80000000000140A0;
    sub_117A0();
    sub_1E30(&v50, &qword_1C6B8, &qword_126E8);
    sub_11790();
    v52 = v25;
    v31 = sub_F8E4(&v50);
    v32 = v49;
    (*(*(v25 - 8) + 16))(v31, v49, v25);
    sub_117A0();
    sub_1E30(&v50, &qword_1C6B8, &qword_126E8);
    sub_11850();

    (*(v47 + 8))(v12, v48);
    v33 = v32;
    v34 = 0;
    v35 = v25;
LABEL_8:
    sub_A518(v33, v34, 1, v35);
    return sub_203C("nameComponents(for:service:)", 0x1CuLL, 2);
  }

  __break(1u);
  return result;
}

uint64_t AMSMediaServiceOwner.sign(inService:with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_10564();
}

uint64_t sub_5470()
{
  sub_10558();
  sub_10DC4();
  v1 = sub_10F40();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = sub_10668(v1);

  return v3(v2);
}

uint64_t sub_5510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 916) = a6;
  *(v6 + 736) = a5;
  *(v6 + 728) = a4;
  *(v6 + 720) = a3;
  *(v6 + 712) = a2;
  *(v6 + 704) = a1;
  v7 = sub_11880();
  *(v6 + 744) = v7;
  *(v6 + 752) = *(v7 - 8);
  *(v6 + 760) = swift_task_alloc();
  *(v6 + 768) = swift_task_alloc();
  *(v6 + 776) = swift_task_alloc();
  *(v6 + 784) = swift_task_alloc();
  *(v6 + 792) = swift_task_alloc();

  return _swift_task_switch(sub_5614, 0, 0);
}

uint64_t sub_5614()
{
  sub_10DB8();
  v3 = *(v0 + 712);
  v4 = AMSSetLogKeyIfNeeded();
  sub_118F0();
  sub_10DAC();

  *(v0 + 800) = v1;
  sub_A4D0(&qword_1C680, &qword_126B0);
  inited = swift_initStackObject();
  sub_10640(inited, xmmword_125F0)[4].n128_u64[1] = &type metadata for String;
  inited[3].n128_u64[0] = sub_118F0();
  inited[3].n128_u64[1] = v6;
  sub_10C24();
  inited[5].n128_u64[0] = v7;
  inited[5].n128_u64[1] = v8;
  inited[7].n128_u64[1] = sub_2F50(0, &qword_1C688, AIDAServiceContext_ptr);
  inited[6].n128_u64[0] = v3;
  v9 = v3;
  v10 = sub_118B0();
  sub_105A0();
  sub_1780(v11, v12, v13, v10);

  v14 = sub_F568(v9);
  *(v0 + 808) = v14;
  if (!v14)
  {
    v18 = *(v0 + 916);
    v19 = *(v0 + 736);

    sub_11840();
    sub_A4D0(&qword_1C6A8, &qword_126D8);
    v20 = sub_117E0();
    sub_1009C(v20);
    sub_100E0();
    *(sub_11020() + 16) = xmmword_125E0;
    *(v0 + 208) = sub_A4D0(&qword_1C6B0, &qword_126E0);
    sub_102AC();
    v21 = swift_allocObject();
    *(v0 + 184) = v21;
    v31 = sub_108A4(v21, v22, v23, v24, v25, v26, v27, v28, v29, v97, v98, v30).n128_u64[0];
    *(v32 + 32) = v19;
    *(v32 + 40) = v18;
    v33 = v31;

    v34 = AMSLogKey();
    if (v34)
    {
      v35 = v34;
      sub_118F0();
      sub_10DAC();
    }

    v87 = *(v0 + 792);
    v88 = *(v0 + 752);
    v89 = *(v0 + 744);
    sub_10CB4(v0 + 184);

    sub_2ED0((v0 + 184));
    *(v0 + 240) = &type metadata for String;
    *(v0 + 216) = 0xD000000000000015;
    *(v0 + 224) = 0x8000000000013B30;
    sub_117A0();
    sub_1E30(v0 + 216, &qword_1C6B8, &qword_126E8);
    sub_11790();
    sub_11860();

    (*(v88 + 8))(v87, v89);
    v90 = sub_118C0();
    v91 = sub_118C0();
    sub_104C4();
    AMSError();

    swift_willThrow();
    sub_103D0();
    sub_105A0();
    sub_203C(v92, v93, v94);

    v95 = sub_10274();

    return v96(v95);
  }

  v15 = v14;
  v99 = v1;
  v16 = sub_F5E4(*(v0 + 712));
  if (!v16)
  {
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    goto LABEL_9;
  }

  sub_C2FC(v16, (v0 + 248), AIDAServiceTypeStore);

  if (!*(v0 + 272))
  {
LABEL_9:
    sub_1E30(v0 + 248, &qword_1C6B8, &qword_126E8);
    goto LABEL_10;
  }

  sub_2F50(0, &qword_1C720, AMSSignInContext_ptr);
  if (!swift_dynamicCast())
  {
LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

  v17 = *(v0 + 696);
LABEL_11:
  v36 = *(v0 + 916);
  v37 = *(v0 + 736);
  sub_11840();
  *(v0 + 816) = sub_A4D0(&qword_1C6A8, &qword_126D8);
  v38 = sub_117E0();
  sub_1009C(v38);
  *(v0 + 824) = *(v39 + 72);
  *(v0 + 912) = *(v40 + 80);
  *(sub_10874() + 16) = xmmword_125D0;
  v41 = sub_A4D0(&qword_1C6B0, &qword_126E0);
  *(v0 + 832) = v41;
  *(v0 + 304) = v41;
  sub_102AC();
  v42 = swift_allocObject();
  *(v0 + 280) = v42;
  v52 = sub_108A4(v42, v43, v44, v45, v46, v47, v48, v49, v50, v2, v99, v51).n128_u64[0];
  *(v53 + 32) = v37;
  *(v53 + 40) = v36;
  v54 = v52;

  v55 = AMSLogKey();
  if (v55)
  {
    v56 = v55;
    sub_118F0();
  }

  sub_117D0();

  sub_2ED0((v0 + 280));
  *(v0 + 336) = &type metadata for String;
  *(v0 + 312) = 0xD000000000000015;
  *(v0 + 320) = 0x8000000000013B30;
  sub_117A0();
  sub_1E30(v0 + 312, &qword_1C6B8, &qword_126E8);
  sub_11790();
  if (v17)
  {
    v57 = sub_2F50(0, &qword_1C720, AMSSignInContext_ptr);
    v58 = v17;
  }

  else
  {
    v58 = 0;
    v57 = 0;
    *(v0 + 352) = 0;
    *(v0 + 360) = 0;
  }

  *(v0 + 840) = v58;
  v59 = *(v0 + 752);
  *(v0 + 344) = v58;
  *(v0 + 368) = v57;
  v60 = v58;
  sub_117A0();
  sub_1E30(v0 + 344, &qword_1C6B8, &qword_126E8);
  sub_11870();

  *(v0 + 848) = *(v59 + 8);
  *(v0 + 856) = (v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v61 = sub_10B20();
  v62(v61);
  sub_A4D0(&qword_1C6F8, &qword_12730);
  v63 = swift_initStackObject();
  *(v0 + 864) = v63;
  *(v63 + 16) = xmmword_125C0;
  v64 = AMSAccountMediaTypeProduction;
  *(v0 + 872) = AMSAccountMediaTypeProduction;
  *(v63 + 32) = v64;
  v65 = v64;
  v66 = v65;
  if (v17)
  {
    v67 = v60;
    v68 = v66;
    if ([v67 skipAuthentication])
    {
      v69 = swift_task_alloc();
      *(v0 + 880) = v69;
      *v69 = v0;
      v69[1] = sub_5E8C;
      v70 = *(v0 + 916);
      v71 = *(v0 + 736);
      v72 = *(v0 + 728);
      v73 = *(v0 + 720);
      v74 = *(v0 + 712);

      return sub_CFD4(v15, v68, v74, v67, v73, v72, v71, v70);
    }
  }

  else
  {
    v76 = v65;
  }

  v77 = swift_task_alloc();
  *(v0 + 896) = v77;
  *v77 = v0;
  v77[1] = sub_6B0C;
  sub_106A0();

  return sub_AA3C(v78, v79, v80, v81, v82, v83, v84, v85);
}

uint64_t sub_5E8C()
{
  sub_102D8();
  v3 = v2;
  sub_102F8();
  sub_1011C();
  *v5 = v4;
  v6 = *v1;
  sub_10078();
  *v7 = v6;
  *(v8 + 888) = v0;

  if (!v0)
  {
  }

  sub_107A8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_6B0C()
{
  sub_102D8();
  sub_102F8();
  sub_1011C();
  *v3 = v2;
  v4 = *v1;
  sub_10078();
  *v5 = v4;
  *(v6 + 904) = v0;

  sub_107A8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_7794(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1000C;

  return AMSMediaServiceOwner.sign(inService:with:)(v8, v9);
}

uint64_t sub_786C(uint64_t a1, uint64_t a2)
{
  v4 = sub_A4D0(&qword_1C670, &qword_12658);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_11990();
  sub_A518(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_12668;
  v9[5] = v8;
  sub_E9AC(0, 0, v6, &unk_12678, v9);
}

uint64_t AMSMediaServiceOwner.signOutService(_:with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_10564();
}

uint64_t sub_7994()
{
  sub_10558();
  sub_10DC4();
  v1 = sub_10F40();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = sub_10668(v1);

  return v3(v2);
}

uint64_t sub_7A34()
{
  sub_102D8();
  v3 = v2;
  sub_102F8();
  v4 = *v1;
  sub_10078();
  *v5 = v4;

  sub_10510();
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

uint64_t sub_7B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 744) = a6;
  *(v6 + 584) = a5;
  *(v6 + 576) = a4;
  *(v6 + 568) = a3;
  *(v6 + 560) = a2;
  *(v6 + 552) = a1;
  v8 = sub_11880();
  *(v6 + 592) = v8;
  *(v6 + 600) = *(v8 - 8);
  *(v6 + 608) = swift_task_alloc();
  *(v6 + 616) = swift_task_alloc();
  *(v6 + 624) = swift_task_alloc();
  *(v6 + 632) = swift_task_alloc();
  *(v6 + 512) = a3;

  return _swift_task_switch(sub_7C28, 0, 0);
}

uint64_t sub_7C28()
{
  sub_10B2C();
  v1 = v0[70];
  sub_A4D0(&qword_1C680, &qword_126B0);
  inited = swift_initStackObject();
  sub_10640(inited, xmmword_125F0)[4].n128_u64[1] = &type metadata for String;
  inited[3].n128_u64[0] = sub_118F0();
  inited[3].n128_u64[1] = v3;
  sub_10C24();
  inited[5].n128_u64[0] = v4;
  inited[5].n128_u64[1] = v5;
  inited[7].n128_u64[1] = sub_2F50(0, &qword_1C688, AIDAServiceContext_ptr);
  inited[6].n128_u64[0] = v1;
  v6 = v1;
  v7 = sub_118B0();
  sub_105E4();
  sub_1780(v8, v9, v10, v7);

  sub_102AC();
  v11 = swift_allocObject();
  v0[80] = v11;
  sub_10E04(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
  sub_10574(v21);
  v23 = v22;

  v24 = swift_task_alloc();
  v0[81] = v24;
  *v24 = v0;
  v24[1] = sub_7DE4;

  return sub_A7D8(2, &unk_126C0, v11);
}

uint64_t sub_7DE4()
{
  sub_102D8();
  sub_102F8();
  sub_1011C();
  *v2 = v1;
  v3 = *v0;
  sub_10078();
  *v4 = v3;
  *(v6 + 656) = v5;

  sub_107A8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_7EE8()
{
  v2 = *(v1 + 656);
  v3 = *(v2 + 16);
  *(v1 + 664) = v3;
  if (v3)
  {
    *(v1 + 680) = _swiftEmptyArrayStorage;
    *(v1 + 672) = 0;
    v4 = *(v2 + 32);
    *(v1 + 688) = v4;
    v5 = v4;
    sub_10800();
    v6 = swift_task_alloc();
    sub_10C78(v6);
    v7 = sub_103F4();
    v9 = sub_2F50(v7, v8, ACAccountStore_ptr);
    sub_10C18(v9);
    sub_10014();
    sub_105AC();
    v14 = sub_2F90(v10, v11, v12, v13);
    sub_103C0(v14);
    *v0 = v15;
    v16 = sub_1002C();

    return AccountStoreProtocol.activeiTunesAccount(for:)(v16);
  }

  else
  {
    v17 = *(v1 + 744);
    v18 = *(v1 + 584);

    sub_11840();
    sub_A4D0(&qword_1C6A8, &qword_126D8);
    v19 = sub_117E0();
    sub_1009C(v19);
    sub_103B4();
    *(sub_11020() + 16) = xmmword_125E0;
    *(v1 + 424) = sub_A4D0(&qword_1C6B0, &qword_126E0);
    sub_102AC();
    v20 = swift_allocObject();
    *(v1 + 400) = v20;
    v30 = sub_10E04(v20, v21, v22, v23, v24, v25, v26, v27, v28, v29).n128_u64[0];
    *(v31 + 32) = v18;
    *(v31 + 40) = v17;
    v32 = v30;

    v33 = AMSLogKey();
    if (v33)
    {
      v34 = v33;
      sub_118F0();
      sub_10990();
    }

    else
    {
      sub_109EC();
    }

    sub_10D30(v1 + 400);

    sub_2ED0((v1 + 400));
    *(v1 + 456) = &type metadata for String;
    *(v1 + 432) = 0xD000000000000017;
    *(v1 + 440) = 0x8000000000013A40;
    sub_117A0();
    sub_1E30(v1 + 432, &qword_1C6B8, &qword_126E8);
    sub_11790();
    sub_11870();

    v35 = sub_10B20();
    v36(v35);
    sub_105E4();
    sub_203C(v37, v38, v39);

    v40 = sub_10088();

    return v41(v40);
  }
}

uint64_t sub_8220()
{
  sub_102D8();
  sub_102F8();
  sub_1011C();
  *v3 = v2;
  v4 = *v1;
  sub_10078();
  *v5 = v4;
  *(v6 + 720) = v0;

  sub_107A8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_91E0()
{
  sub_102D8();
  sub_102F8();
  sub_1011C();
  *v3 = v2;
  v4 = *v1;
  sub_10078();
  *v5 = v4;
  *(v6 + 736) = v0;

  sub_107A8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_A124(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  sub_10B38();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v11;
  v12[5] = a1;
  v13 = a3;
  v14 = a4;
  v15 = a1;

  return sub_786C(a7, v12);
}

uint64_t sub_A1A8(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_A280;

  return AMSMediaServiceOwner.signOutService(_:with:)(v8, v9);
}

uint64_t sub_A280()
{
  sub_10B2C();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  sub_10078();
  *v7 = v6;
  v8 = v5[4];
  v9 = v5[3];
  v10 = v5[2];
  v11 = *v1;
  *v7 = *v1;

  v12 = v5[5];
  if (v2)
  {
    v13 = sub_11720();

    (*(v12 + 16))(v12, 0, v13);
  }

  else
  {
    (*(v12 + 16))(v5[5], v4 & 1, 0);
  }

  _Block_release(v6[5]);
  v14 = v11[1];

  return v14();
}

uint64_t sub_A43C()
{
  sub_1107C();
  sub_10558();
  v0 = swift_task_alloc();
  v1 = sub_105D8(v0);
  *v1 = v2;
  sub_10204(v1);
  sub_11068();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_A4D0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_A540(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  sub_2F50(0, &qword_1C690, ACAccountStore_ptr);
  sub_2F90(&qword_1C698, &qword_1C690, ACAccountStore_ptr, &protocol conformance descriptor for ACAccountStore);
  *v3 = v2;
  v3[1] = sub_A64C;

  return AccountStoreProtocol.activeiTunesAccount(for:)(v2 + 24);
}

uint64_t sub_A64C()
{
  sub_102D8();
  sub_102F8();
  v2 = *v1;
  sub_10078();
  *v3 = v2;

  if (v0)
  {
  }

  sub_107A8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_A750()
{
  sub_102D8();
  v1 = *(v0 + 24);
  if (v1)
  {
  }

  sub_10510();

  return v2();
}

uint64_t sub_A7D8(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 56) = a1;
  return _swift_task_switch(sub_A7FC, 0, 0);
}

uint64_t sub_A7FC()
{
  sub_106BC();
  v1 = *(v0 + 56);
  sub_A4D0(&qword_1C6D8, &qword_126F8);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  sub_A4D0(&qword_1C6E0, &qword_12710);
  swift_task_alloc();
  sub_103A8();
  *(v0 + 48) = v4;
  *v4 = v5;
  v4[1] = sub_A914;
  sub_1051C();

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v6);
}

uint64_t sub_A914()
{
  sub_102D8();
  sub_102F8();
  v1 = *v0;
  sub_10078();
  *v2 = v1;

  sub_107A8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_AA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 612) = v14;
  *(v8 + 424) = a8;
  *(v8 + 432) = v13;
  *(v8 + 408) = a6;
  *(v8 + 416) = a7;
  *(v8 + 392) = a4;
  *(v8 + 400) = a5;
  *(v8 + 376) = a2;
  *(v8 + 384) = a3;
  *(v8 + 368) = a1;
  v10 = sub_11880();
  *(v8 + 440) = v10;
  *(v8 + 448) = *(v10 - 8);
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 288) = a7;

  return _swift_task_switch(sub_AB54, 0, 0);
}

uint64_t sub_AB54()
{
  sub_10858();
  sub_10C6C();
  sub_11840();
  *(v0 + 496) = sub_A4D0(&qword_1C6A8, &qword_126D8);
  v1 = sub_117E0();
  sub_1009C(v1);
  *(v0 + 504) = *(v2 + 72);
  *(v0 + 608) = *(v3 + 80);
  *(sub_11020() + 16) = xmmword_125E0;
  v4 = sub_A4D0(&qword_1C6B0, &qword_126E0);
  *(v0 + 512) = v4;
  *(v0 + 40) = v4;
  sub_102AC();
  v5 = swift_allocObject();
  *(v0 + 16) = v5;
  sub_10E04(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  sub_10574(v15);
  v17 = v16;

  if (AMSLogKey())
  {
    sub_118F0();
    sub_10D48();
  }

  else
  {
    sub_10CA8();
  }

  v18 = *(v0 + 448);
  v19 = *(v0 + 376);
  sub_117D0();

  sub_2ED0((v0 + 16));
  sub_11790();
  type metadata accessor for AMSAccountMediaType(0);
  *(v0 + 72) = v20;
  *(v0 + 48) = v19;
  v21 = v19;
  sub_117A0();
  sub_1E30(v0 + 48, &qword_1C6B8, &qword_126E8);
  sub_11870();

  *(v0 + 520) = *(v18 + 8);
  *(v0 + 528) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22 = sub_10C9C();
  v23(v22);
  v24 = swift_task_alloc();
  *(v0 + 536) = v24;
  v25 = sub_103F4();
  *(v0 + 544) = sub_2F50(v25, v26, ACAccountStore_ptr);
  sub_10014();
  sub_1051C();
  *(v0 + 552) = sub_2F90(v27, v28, v29, v30);
  *v24 = v0;
  v24[1] = sub_AE20;
  sub_10480();

  return AccountStoreProtocol.activeiTunesAccount(for:)(v31);
}

uint64_t sub_AE20()
{
  sub_102D8();
  sub_102F8();
  v2 = *v1;
  sub_10078();
  *v3 = v2;

  if (v0)
  {
  }

  sub_107A8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_BD84()
{
  sub_102D8();
  sub_102F8();
  v3 = v2;
  v4 = *v1;
  sub_10078();
  *v5 = v4;
  *(v3 + 584) = v0;

  if (!v0)
  {
  }

  sub_107A8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_BE9C()
{
  sub_106BC();

  sub_103E8();

  return v1();
}

uint64_t sub_BF30()
{
  sub_1107C();
  sub_10558();

  sub_103E8();
  sub_11068();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_BFC4()
{
  sub_102D8();
  sub_102F8();
  sub_1011C();
  *v3 = v2;
  v4 = *v1;
  sub_10078();
  *v5 = v4;
  *(v6 + 600) = v0;

  sub_107A8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_C0BC()
{
  sub_106BC();

  v1 = sub_10304();
  *(v0 + 568) = v1;
  *(v0 + 312) = v1;
  v2 = sub_103F4();
  sub_2F50(v2, v3, AMSAuthenticateTask_ptr);
  sub_100F0(&qword_1C800);
  swift_task_alloc();
  sub_103A8();
  *(v0 + 576) = v4;
  *v4 = v5;
  v6 = sub_100AC(v4);

  return dispatch thunk of AuthenticateTaskProtocol.performAuthentication()(v6);
}

uint64_t sub_C178()
{
  sub_10B2C();
  v1 = *(v0 + 560);
  v2 = sub_118C0();
  v3 = sub_118C0();
  v4 = sub_11720();
  sub_10784();
  AMSError();

  swift_willThrow();

  sub_103E8();

  return v5();
}

uint64_t sub_C2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_F05C(a1, a2);
  if (v3)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

double sub_C2FC@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_F0D4(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_2E64(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_C360(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(__int128 *__return_ptr, void **, uint64_t, id))
{
  v25 = a1;
  v10 = sub_F5E4(a1);
  if (!v10)
  {
    v23 = 0u;
    v24 = 0u;
    goto LABEL_6;
  }

  sub_C2FC(v10, &v23, AIDAServiceTypeStore);

  if (!*(&v24 + 1))
  {
LABEL_6:
    sub_1E30(&v23, &qword_1C6B8, &qword_126E8);
    goto LABEL_7;
  }

  sub_2F50(0, &qword_1C720, AMSSignInContext_ptr);
  if (swift_dynamicCast())
  {
    v11 = v22;
    v12 = [v22 canMakeAccountActive];
    goto LABEL_8;
  }

LABEL_7:
  v11 = 0;
  v12 = &dword_0 + 1;
LABEL_8:
  v13 = [objc_allocWithZone(AMSAuthenticateOptions) init];
  sub_2F50(0, &unk_1C808, AMSProcessInfo_ptr);
  v14 = sub_C6C8(0xD000000000000013, 0x8000000000014040);
  [v13 setClientInfo:v14];

  [v13 setAllowServerDialogs:{objc_msgSend(a1, "operationUIPermissions") == &dword_0 + 1}];
  [v13 setAuthenticationType:{objc_msgSend(a1, "operationUIPermissions") != &dword_0 + 1}];
  [v13 setCanMakeAccountActive:v12];
  v15 = [v13 clientInfo];
  [v15 setAccountMediaType:a2];

  v16 = sub_118C0();
  [v13 setDebugReason:v16];

  if (v11)
  {
    isa = [v11 customHTTPHeaders];
    if (isa)
    {
      sub_118A0();

      isa = sub_11890().super.isa;
    }

    [v13 setHTTPHeaders:isa];

    v18 = [v11 ignoreAccountConversion];
  }

  else
  {
    [v13 setHTTPHeaders:0];
    v18 = &dword_0 + 1;
  }

  [v13 setIgnoreAccountConversion:v18];
  v19 = sub_118C0();
  [v13 setLogKey:v19];

  a7(&v23, &v25, a3, v13);
  return v23;
}

id sub_C6C8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_118C0();

  v4 = [v2 initWithBundleIdentifier:v3];

  return v4;
}

uint64_t sub_C73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[16] = a1;
  v5 = sub_A4D0(&qword_1C6E8, &qword_12720);
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v6 = sub_A4D0(&qword_1C6F0, &qword_12728);
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  sub_A4D0(&qword_1C670, &qword_12658);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return _swift_task_switch(sub_C8C4, 0, 0);
}

uint64_t sub_C8C4()
{
  sub_10E48();
  sub_10DB8();
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  sub_A4D0(&qword_1C6F8, &qword_12730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_125C0;
  v7 = AMSAccountMediaTypeProduction;
  *(inited + 32) = AMSAccountMediaTypeProduction;
  v31 = *v5;
  v8 = sub_11990();
  v9 = v7;
  sub_A518(v2, 1, 1, v8);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v4;
  v10[5] = v3;
  v10[6] = v9;
  sub_EC78(v2, v1);
  LODWORD(v1) = sub_ECE8(v1, 1, v8);
  v30 = v9;

  if (v1 == 1)
  {
    sub_1E30(v0[26], &qword_1C670, &qword_12658);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    sub_11980();
    sub_1039C();
    v13 = sub_106FC();
    v14(v13);
    if (v10[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v11 = sub_11960();
      v12 = v15;
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  v16 = swift_allocObject();
  *(v16 + 16) = &unk_12740;
  *(v16 + 24) = v10;

  sub_A4D0(&qword_1C6D8, &qword_126F8);
  v17 = (v12 | v11);
  if (v12 | v11)
  {
    v17 = v0 + 7;
    v0[7] = 0;
    v0[8] = 0;
    v0[9] = v11;
    v0[10] = v12;
  }

  v18 = v0[27];
  v19 = v0[24];
  v20 = v0[25];
  v21 = v0[22];
  v22 = v0[23];
  v0[11] = 1;
  v0[12] = v17;
  v0[13] = v31;
  swift_task_create();

  sub_1E30(v18, &qword_1C670, &qword_12658);
  swift_setDeallocating();
  sub_2FD4();
  v0[14] = v31;
  v23 = sub_10790();
  sub_A4D0(v23, v24);
  type metadata accessor for AMSAccountMediaType(0);
  sub_FF68(&qword_1C708, &qword_1C700, &qword_12750, &protocol conformance descriptor for TaskGroup<A>);
  sub_119D0();
  (*(v22 + 16))(v19, v20, v21);
  sub_FF68(&qword_1C710, &qword_1C6F0, &qword_12728, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>);
  sub_119A0();
  v0[28] = _swiftEmptyArrayStorage;
  sub_1061C(&qword_1C718, &qword_1C6E8, &qword_12720);
  swift_task_alloc();
  sub_103A8();
  v0[29] = v25;
  *v25 = v26;
  sub_10400(v25);
  sub_106A0();

  return dispatch thunk of AsyncIteratorProtocol.next()(v27);
}

uint64_t sub_CCD0()
{
  sub_1107C();
  sub_10558();
  sub_102F8();
  v3 = v2;
  v4 = *v1;
  sub_10078();
  *v5 = v4;

  if (v0)
  {
    v7 = v3[20];
    v6 = v3[21];
    v8 = v3[19];

    (*(v7 + 8))(v6, v8);
  }

  sub_107A8();
  sub_11068();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_CE08()
{
  sub_10B2C();
  v1 = v0[15];
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = v0[28];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_F444(0, v3[2] + 1, 1, v3);
    }

    v5 = v3[2];
    v4 = v3[3];
    if (v5 >= v4 >> 1)
    {
      v3 = sub_F444((v4 > 1), v5 + 1, 1, v3);
    }

    v3[2] = v5 + 1;
    v3[v5 + 4] = v1;
    v0[28] = v3;
    sub_1061C(&qword_1C718, &qword_1C6E8, &qword_12720);
    swift_task_alloc();
    sub_103A8();
    v0[29] = v6;
    *v6 = v7;
    sub_10400(v6);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 15);
  }

  else
  {
    v8 = v0[25];
    v9 = v0[22];
    v10 = v0[23];
    (*(v0[20] + 8))(v0[21], v0[19]);
    (*(v10 + 8))(v8, v9);

    sub_10510();
    v12 = v0[28];

    return v11(v12);
  }
}

uint64_t sub_CFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 392) = a8;
  *(v8 + 240) = a6;
  *(v8 + 248) = a7;
  *(v8 + 224) = a4;
  *(v8 + 232) = a5;
  *(v8 + 208) = a2;
  *(v8 + 216) = a3;
  *(v8 + 200) = a1;
  v10 = sub_11880();
  *(v8 + 256) = v10;
  *(v8 + 264) = *(v10 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 112) = a5;

  return _swift_task_switch(sub_D0B8, 0, 0);
}

uint64_t sub_D698()
{
  sub_102D8();
  sub_102F8();
  v2 = *v1;
  sub_10078();
  *v3 = v2;

  if (v0)
  {
  }

  sub_107A8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_D79C()
{
  sub_106BC();
  *(v0 + 144) = 0;
  v1 = sub_103F4();
  sub_2F50(v1, v2, ACAccount_ptr);
  sub_10060();
  sub_1051C();
  sub_2F90(v3, v4, v5, v6);
  sub_10DE4();
  sub_11780();
  swift_task_alloc();
  sub_103A8();
  *(v0 + 376) = v7;
  *v7 = v8;
  sub_10690(v7);

  return AccountStoreProtocol.save(_:)(v0 + 120);
}

uint64_t sub_D888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_10E48();
  sub_10DB8();
  v18 = *(v16 + 144);
  *(v16 + 320) = v18;
  if (!v18)
  {
    sub_10DE4();
    sub_2F50(v32, v33, v34);
    sub_10060();
    sub_10DE4();
    sub_2F90(v35, v36, v37, v38);
    sub_11780();
    v39 = swift_task_alloc();
    *(v16 + 376) = v39;
    *v39 = v16;
    sub_10690(v39);
LABEL_13:
    sub_106A0();

    return AccountStoreProtocol.save(_:)(v44);
  }

  *(v16 + 152) = v18;
  v19 = sub_103F4();
  v21 = sub_2F50(v19, v20, ACAccount_ptr);
  sub_10060();
  sub_104C4();
  v26 = sub_2F90(v22, v23, v24, v25);
  v27 = v18;
  sub_11750();
  sub_107B4();
  v28 = sub_11750();
  if (!v29)
  {

    goto LABEL_11;
  }

  if (v17 == v28 && v18 == v29)
  {

    goto LABEL_20;
  }

  v31 = sub_119F0();

  if (v31)
  {
LABEL_20:
    v57 = *(v16 + 392);
    v58 = *(v16 + 248);
    v89 = *(v16 + 232);
    sub_11840();
    sub_A4D0(&qword_1C6A8, &qword_126D8);
    v59 = sub_1088C();
    sub_1009C(v59);
    sub_103B4();
    v90 = v60;
    *(sub_10874() + 16) = xmmword_125F0;
    *(v16 + 72) = sub_A4D0(&qword_1C6B0, &qword_126E0);
    sub_102AC();
    v61 = swift_allocObject();
    *(v16 + 48) = v61;
    v71 = sub_10E04(v61, v62, v63, v64, v65, v66, v67, v68, v69, v70).n128_u64[0];
    *(v72 + 32) = v58;
    *(v72 + 40) = v57;
    v73 = v71;

    v74 = AMSLogKey();
    v91 = v27;
    if (v74)
    {
      v75 = v74;
      sub_118F0();
      sub_10990();
    }

    else
    {
      sub_109EC();
    }

    v76 = *(v16 + 296);
    v77 = *(v16 + 264);
    v78 = *(v16 + 272);
    v79 = *(v16 + 256);
    sub_106FC();
    sub_117D0();

    sub_2ED0((v16 + 48));
    sub_11790();
    sub_11870();

    (*(v77 + 8))(v78, v79);

    sub_10510();
    sub_106A0();

    return v82(v80, v81, v82, v83, v84, v85, v86, v87, v89, *(&v89 + 1), v90, v91, a13, a14, a15, a16);
  }

LABEL_11:
  v40 = *(v16 + 216);
  *(v16 + 160) = v27;
  v41 = v27;
  if ([v40 shouldForceOperation])
  {
    *(v16 + 328) = v21;
    *(v16 + 336) = v26;
    sub_11780();
    swift_task_alloc();
    sub_103A8();
    *(v16 + 344) = v42;
    *v42 = v43;
    sub_10690(v42);
    goto LABEL_13;
  }

  v46 = *(v16 + 296);

  v47 = sub_118C0();
  v48 = sub_118C0();
  AMSError();

  swift_willThrow();

  sub_103E8();
  sub_106A0();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_DDA4()
{
  sub_102D8();
  sub_102F8();
  sub_1011C();
  *v3 = v2;
  v4 = *v1;
  sub_10078();
  *v5 = v4;
  *(v6 + 352) = v0;

  sub_107A8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_DE9C()
{
  sub_102D8();
  sub_11780();
  swift_task_alloc();
  sub_103A8();
  *(v0 + 360) = v1;
  *v1 = v2;
  sub_10690(v1);

  return AccountStoreProtocol.save(_:)(v0 + 120);
}

uint64_t sub_DF44()
{
  sub_102D8();
  sub_102F8();
  sub_1011C();
  *v3 = v2;
  v4 = *v1;
  sub_10078();
  *v5 = v4;
  *(v6 + 368) = v0;

  sub_107A8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_E03C()
{
  sub_10B2C();
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  v4 = sub_1049C();
  v5 = sub_118C0();
  sub_11720();
  sub_106C8();

  swift_willThrow();

  sub_103E8();

  return v6();
}

uint64_t sub_E134()
{
  sub_102D8();
  v1 = *(v0 + 320);

  v2 = *(v0 + 120);

  sub_10510();

  return v3(v2);
}

uint64_t sub_E1B0()
{
  sub_10B2C();
  v2 = *(v0 + 320);
  v3 = sub_1049C();
  v4 = sub_118C0();
  sub_11720();
  sub_106C8();

  swift_willThrow();

  sub_103E8();

  return v5();
}

uint64_t sub_E2A8()
{
  sub_102D8();
  sub_102F8();
  sub_1011C();
  *v3 = v2;
  v4 = *v1;
  sub_10078();
  *v5 = v4;
  *(v6 + 384) = v0;

  sub_107A8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_E3A0()
{
  sub_102D8();
  v1 = *(v0 + 120);

  sub_10510();

  return v2(v1);
}

uint64_t sub_E40C()
{
  sub_1107C();
  sub_10558();
  v2 = sub_1049C();
  v3 = sub_118C0();
  sub_11720();
  sub_106C8();

  swift_willThrow();

  sub_103E8();
  sub_11068();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

id sub_E4E4(uint64_t a1, void *a2)
{
  sub_A4D0(&qword_1C7F0, &qword_12780);
  isa = sub_11890().super.isa;

  v5 = [v2 initWithAuthenticationResults:isa options:a2];

  return v5;
}

uint64_t sub_E574(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10008;

  return v6();
}

uint64_t sub_E65C()
{
  sub_1107C();
  sub_10558();
  v0 = swift_task_alloc();
  v1 = sub_105D8(v0);
  *v1 = v2;
  sub_10204(v1);
  sub_11068();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_E6F0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_E7D8;

  return v7();
}

uint64_t sub_E7D8()
{
  sub_102D8();
  sub_102F8();
  v1 = *v0;
  sub_10078();
  *v2 = v1;

  sub_103E8();

  return v3();
}

uint64_t sub_E8B8()
{
  swift_unknownObjectRelease();

  v0 = sub_10B38();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_E8F0()
{
  sub_10558();
  v0 = swift_task_alloc();
  v1 = sub_102C8(v0);
  *v1 = v2;
  v1[1] = sub_10008;
  sub_10784();

  return v3();
}

uint64_t sub_E9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_A4D0(&qword_1C670, &qword_12658);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_EC78(a3, v22 - v10);
  v12 = sub_11990();
  if (sub_ECE8(v11, 1, v12) == 1)
  {
    sub_1E30(v11, &qword_1C670, &qword_12658);
  }

  else
  {
    sub_11980();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_11960();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_11900() + 32;
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

      sub_1E30(a3, &qword_1C670, &qword_12658);

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

  sub_1E30(a3, &qword_1C670, &qword_12658);
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

uint64_t sub_EC78(uint64_t a1, uint64_t a2)
{
  v4 = sub_A4D0(&qword_1C670, &qword_12658);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_ED10(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_EE08;

  return v6(a1);
}

uint64_t sub_EE08()
{
  sub_102D8();
  sub_102F8();
  v1 = *v0;
  sub_10078();
  *v2 = v1;

  sub_103E8();

  return v3();
}

uint64_t sub_EEEC()
{
  sub_106BC();
  v0 = swift_task_alloc();
  v1 = sub_102C8(v0);
  *v1 = v2;
  v3 = sub_10254(v1);

  return v4(v3);
}

uint64_t sub_EF80()
{
  _Block_release(*(v0 + 32));

  v1 = sub_10B38();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_EFC8()
{
  sub_1107C();
  sub_10558();
  v0 = swift_task_alloc();
  v1 = sub_105D8(v0);
  *v1 = v2;
  sub_10204(v1);
  sub_11068();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_F05C(uint64_t a1, uint64_t a2)
{
  sub_11A00();
  sub_11910();
  v4 = sub_11A10();

  return sub_F168(a1, a2, v4);
}

unint64_t sub_F0D4(uint64_t a1)
{
  sub_118F0();
  sub_11A00();
  sub_11910();
  v2 = sub_11A10();

  return sub_F21C(a1, v2);
}

unint64_t sub_F168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_119F0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_F21C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_118F0();
    v7 = v6;
    if (v5 == sub_118F0() && v7 == v8)
    {

      return i;
    }

    v10 = sub_119F0();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

void *sub_F314(void *result, int64_t a2, char a3, void *a4)
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
    sub_A4D0(&qword_1C6D0, &qword_126F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_A4D0(&qword_1C6A0, &qword_126D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_F444(void *result, int64_t a2, char a3, void *a4)
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
    sub_A4D0(&qword_1C6F8, &qword_12730);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AMSAccountMediaType(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_F568(void *a1)
{
  v1 = [a1 authenticationResults];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_A4D0(&qword_1C7F0, &qword_12780);
  v3 = sub_118A0();

  return v3;
}

uint64_t sub_F5E4(void *a1)
{
  v1 = [a1 signInContexts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for AIDAServiceType(0);
  sub_FFB0();
  v3 = sub_118A0();

  return v3;
}

uint64_t sub_F65C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_F71C;

  return sub_A540(a1, v4);
}

uint64_t sub_F71C()
{
  sub_102D8();
  v2 = v1;
  sub_102F8();
  v3 = *v0;
  sub_10078();
  *v4 = v3;

  sub_10510();

  return v5(v2);
}

uint64_t sub_F804()
{
  sub_106BC();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = sub_105D8(v3);
  *v4 = v5;
  v4[1] = sub_F71C;

  return sub_F65C(v2, (v0 + 16));
}

uint64_t sub_F8A8()
{

  sub_102AC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t *sub_F8E4(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_F944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_F9FC;

  return sub_C73C(a2, a3, a4, a5);
}

uint64_t sub_F9FC()
{
  sub_102D8();
  v2 = v1;
  sub_102F8();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_10078();
  *v6 = v5;

  *v4 = v2;
  sub_103E8();

  return v7();
}

uint64_t sub_FAF8()
{
  sub_10558();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  v9 = sub_102C8(v8);
  *v9 = v10;
  v9[1] = sub_10008;

  return sub_F944(v4, v2, v7, v5, v6);
}

uint64_t sub_FBBC(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_FCB0;

  return v5(v2 + 16);
}

uint64_t sub_FCB0()
{
  sub_106BC();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  sub_10078();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_FDD4()
{
  sub_10558();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = sub_102C8(v4);
  *v5 = v6;
  v5[1] = sub_E7D8;
  sub_10784();

  return sub_113E8(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_FE8C()
{
  sub_106BC();
  v0 = swift_task_alloc();
  v1 = sub_102C8(v0);
  *v1 = v2;
  v3 = sub_10254(v1);

  return v4(v3);
}

uint64_t sub_FF20(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_FF68(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_FF20(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_FFB0()
{
  result = qword_1C530;
  if (!qword_1C530)
  {
    type metadata accessor for AIDAServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C530);
  }

  return result;
}

uint64_t sub_100F0(unint64_t *a1)
{

  return sub_2F90(a1, v2, v1, &protocol conformance descriptor for AMSAuthenticateTask);
}

uint64_t sub_1012C@<X0>(uint64_t a1@<X8>)
{
  v2[25] = v1;
  v2[22] = 0xD000000000000017;
  v2[23] = a1;

  return sub_117A0();
}

uint64_t sub_10158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(a1 + 16) = v15;
  *(a1 + 24) = a13;
  *(a1 + 32) = v14;
  *(a1 + 40) = a14;

  return _objc_retain_x28();
}

uint64_t sub_1019C@<X0>(uint64_t a1@<X8>)
{
  v2[49] = v1;
  v2[46] = 0xD000000000000017;
  v2[47] = a1;

  return sub_117A0();
}

id sub_101E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  *(a1 + 16) = v17;
  *(a1 + 24) = a15;
  *(a1 + 32) = v16;
  *(a1 + 40) = a16;

  return v17;
}

uint64_t sub_10228()
{

  return sub_203C(v0, 0x17uLL, 2);
}

uint64_t sub_10284()
{

  return sub_117D0();
}

uint64_t sub_10304()
{
  v2 = v0[53];
  v3 = v0[51];
  v4 = v0[52];
  v5 = v0[50];
  v7 = v0[47];
  v6 = v0[48];
  v8 = v0[46];

  return sub_C360(v6, v7, v8, v5, v3, v4, v2);
}

void *sub_10330@<X0>(unint64_t a1@<X8>)
{

  return sub_F314((a1 > 1), v2, 1, v1);
}

uint64_t sub_10354()
{

  return sub_117D0();
}

void *sub_10378()
{
  v2 = v0[2] + 1;

  return sub_F314(0, v2, 1, v0);
}

void sub_10428(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = sub_3B90;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

NSString sub_1049C()
{

  return sub_118C0();
}

uint64_t sub_10574(uint64_t result)
{
  *(result + 32) = v1;
  *(result + 40) = v2;
  return result;
}

uint64_t sub_10580()
{

  return sub_117D0();
}

uint64_t sub_105B8()
{

  return swift_allocObject();
}

uint64_t sub_1061C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_FF68(a1, a2, a3, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>.Iterator);
}

__n128 *sub_10640(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x5465636976726573;
  result[2].n128_u64[1] = 0xEB00000000657079;
  return result;
}

uint64_t sub_106C8()
{

  return AMSError();
}

uint64_t sub_10708()
{

  return sub_117D0();
}

uint64_t sub_10740()
{

  return sub_117D0();
}

uint64_t sub_1080C()
{

  return swift_getErrorValue();
}

uint64_t sub_10874()
{

  return swift_allocObject();
}

uint64_t sub_1088C()
{

  return sub_117E0();
}

__n128 sub_108A4(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, uint64_t a9, uint64_t a10, __n128 a12)
{
  result = a12;
  a1[1] = a12;
  return result;
}

uint64_t *sub_108B0()
{
  v0[29] = v0[59];

  return sub_F8E4(v0 + 26);
}

uint64_t *sub_108CC()
{
  v0[41] = v0[62];

  return sub_F8E4(v0 + 38);
}

uint64_t sub_108E8()
{

  return swift_getErrorValue();
}

uint64_t sub_10914()
{

  return swift_getErrorValue();
}

id sub_1094C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *(a1 + 32) = v9;
  *(a1 + 40) = a9;

  return v10;
}

uint64_t sub_10968@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 272) = v1;
  *(v2 + 280) = a1;

  return sub_117A0();
}

uint64_t sub_109A8(uint64_t a1)
{

  return sub_11840();
}

uint64_t sub_10A14()
{
}

uint64_t sub_10A58()
{

  return sub_11790();
}

uint64_t sub_10A74()
{

  return sub_11790();
}

NSString sub_10AAC()
{

  return sub_118C0();
}

uint64_t sub_10AC8(uint64_t a1)
{

  return sub_11840();
}

uint64_t sub_10AF4@<X0>(uint64_t a1@<X8>)
{
  v1[78] = a1;
  v1[75] = 0xD000000000000015;
  v1[76] = v2;

  return sub_117A0();
}

uint64_t sub_10B48()
{
  *(v0 + 16) = v1;
  *(v0 + 32 + 8 * v2) = v3;
}

uint64_t sub_10B70@<X0>(uint64_t a1@<X8>)
{
  v1[54] = a1;
  v1[51] = 0xD000000000000015;
  v1[52] = v2;

  return sub_117A0();
}

uint64_t sub_10B98()
{

  return sub_117D0();
}

uint64_t sub_10BC0()
{

  return sub_117D0();
}

__n128 *sub_10C3C(__n128 *result, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  result[1] = a2;
  *(v15 + 400) = a15;
  return result;
}

uint64_t sub_10CB4(uint64_t a1)
{

  return sub_117D0();
}

void sub_10CD0()
{
}

id sub_10CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{
  *(a1 + 16) = a13;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;

  return a13;
}

uint64_t sub_10D0C(uint64_t a1)
{

  return AMSErrorWithMultipleUnderlyingErrors();
}

uint64_t sub_10D30(uint64_t a1)
{

  return sub_117D0();
}

void sub_10D48()
{
}

__n128 *sub_10D98(__n128 *result, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  result[1] = a2;
  *(v15 + 496) = a15;
  return result;
}

__n128 sub_10DF0(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a14)
{
  result = a14;
  a1[1] = a14;
  return result;
}

__n128 sub_10E04(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  a1[1] = a10;
  return result;
}

uint64_t *sub_10E80()
{
  v0[58] = v0[80];

  return sub_F8E4(v0 + 55);
}

uint64_t sub_10EA0(uint64_t a1)
{

  return sub_11840();
}

uint64_t sub_10EC0(uint64_t a1)
{

  return sub_11840();
}

uint64_t sub_10EE0(uint64_t a1)
{

  return sub_11840();
}

uint64_t sub_10F00(uint64_t a1)
{

  return sub_11840();
}

uint64_t *sub_10F20()
{
  v0[70] = v0[83];

  return sub_F8E4(v0 + 67);
}

uint64_t sub_10F40()
{

  return swift_task_alloc();
}

uint64_t *sub_10F60()
{
  v0[58] = v0[80];

  return sub_F8E4(v0 + 55);
}

uint64_t *sub_10F80()
{
  v0[70] = v0[83];

  return sub_F8E4(v0 + 67);
}

uint64_t sub_10FA0@<X0>(uint64_t a1@<X8>)
{
  v1[66] = a1;
  v1[63] = v3;
  v1[64] = v2;

  return sub_117A0();
}

uint64_t sub_10FC0@<X0>(uint64_t a1@<X8>)
{
  v1[66] = a1;
  v1[63] = v3;
  v1[64] = v2;

  return sub_117A0();
}

uint64_t sub_10FE0()
{
  *(v0 + 600) = v2;
  *(v0 + 608) = v1;

  return sub_117A0();
}

id sub_11000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13)
{
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 32) = v13;
  *(a1 + 40) = a13;

  return v14;
}

uint64_t sub_11020()
{

  return swift_allocObject();
}

Class sub_11038(uint64_t a1)
{

  return sub_11950().super.isa;
}

uint64_t sub_11050()
{

  return sub_117A0();
}

uint64_t sub_11090(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_ECE8(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_111E4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_A518(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_113E8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a6;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_114E4;

  return v10(a6);
}

uint64_t sub_114E4(char a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_115E4, 0, 0);
}

uint64_t sub_115E4()
{
  if (*(v0 + 40) == 1)
  {
    v1 = *(v0 + 24);
    v2 = v1;
  }

  else
  {
    v1 = 0;
  }

  **(v0 + 16) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_11660(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_11684, 0, 0);
}

uint64_t sub_11684()
{
  v1 = *(v0 + 24);
  **(v0 + 16) = v1;
  v4 = *(v0 + 8);
  v2 = v1;

  return v4();
}
uint64_t sub_1DA8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_5697C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_2AFC(&qword_71640, &qword_58938);
  sub_202C(a1 + *(v2 + 44));
  v3 = sub_56CCC();
  sub_5668C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a1 + *(sub_2AFC(&qword_71648, &qword_58940) + 36);
  *v12 = v3;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  sub_571DC();
  sub_566EC();
  v13 = (a1 + *(sub_2AFC(&qword_71650, &qword_58948) + 36));
  *v13 = v32;
  v13[1] = v33;
  v13[2] = v34;
  v14 = [objc_opt_self() tertiarySystemFillColor];
  v15 = sub_56F5C();
  v16 = sub_56CAC();
  v17 = a1 + *(sub_2AFC(&qword_71658, &qword_58950) + 36);
  *v17 = v15;
  *(v17 + 8) = v16;
  v18 = (a1 + *(sub_2AFC(&qword_71660, &qword_58958) + 36));
  v19 = *(sub_567BC() + 20);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = sub_56A0C();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #10.0 }

  *v18 = _Q0;
  *&v18[*(sub_2AFC(&qword_71668, &qword_58960) + 36)] = 256;
  v27 = (a1 + *(sub_2AFC(&qword_71670, &qword_58968) + 36));
  v28 = *(sub_2AFC(&qword_71678, &qword_58970) + 28);
  v29 = enum case for Image.Scale.small(_:);
  v30 = sub_5704C();
  (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
  result = swift_getKeyPath();
  *v27 = result;
  return result;
}

uint64_t sub_202C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2AFC(&qword_71680, &qword_589A8);
  __chkstk_darwin(v2 - 8);
  v54 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v53 = &v49 - v5;
  sub_571DC();
  v48._object = v6;
  sub_567CC();
  *&v69[55] = v74;
  *&v69[71] = v75;
  *&v69[87] = v76;
  *&v69[103] = v77;
  *&v69[7] = v71;
  *&v69[23] = v72;
  v70 = 1;
  *&v69[39] = v73;
  type metadata accessor for Localization();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v48._countAndFlagsBits = 0xE700000000000000;
  v85._countAndFlagsBits = 0x736E6F6974704FLL;
  v85._object = 0xE700000000000000;
  v86.value._countAndFlagsBits = 0;
  v86.value._object = 0;
  v9.super.isa = v8;
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  v10 = sub_55EFC(v85, v86, v9, v87, 0x736E6F6974704FLL, v48);
  v12 = v11;

  *&v78 = v10;
  *(&v78 + 1) = v12;
  sub_2B4C();
  v13 = sub_56E0C();
  v15 = v14;
  LOBYTE(v12) = v16;
  v18 = v17;
  KeyPath = swift_getKeyPath();
  v20 = sub_56CDC();
  v21 = swift_getKeyPath();
  v22 = v12 & 1;
  LOBYTE(v78) = v12 & 1;
  LOBYTE(v67[0]) = 0;
  v23 = sub_56FCC();
  v24 = swift_getKeyPath();
  *&v78 = v13;
  *(&v78 + 1) = v15;
  LOBYTE(v79) = v22;
  *(&v79 + 1) = v18;
  *&v80 = KeyPath;
  *(&v80 + 1) = 1;
  LOBYTE(v81) = 0;
  *(&v81 + 1) = v21;
  *&v82 = v20;
  *(&v82 + 1) = v24;
  *&v83 = v23;
  sub_2AFC(&qword_71690, &qword_58A40);
  sub_2BB8();
  v25 = v53;
  sub_56ECC();
  v67[2] = v80;
  v67[3] = v81;
  v67[4] = v82;
  v68 = v83;
  v67[0] = v78;
  v67[1] = v79;
  sub_2E90(v67, &qword_71690, &qword_58A40);
  v26 = sub_5702C();
  v27 = swift_getKeyPath();
  v52 = sub_56CDC();
  v28 = swift_getKeyPath();
  v50 = v28;
  v29 = [objc_opt_self() tertiaryLabelColor];
  v51 = sub_56F5C();
  v30 = swift_getKeyPath();
  LOBYTE(v78) = 0;
  sub_571DC();
  sub_567CC();
  *&v65[55] = v81;
  *&v65[71] = v82;
  *&v65[87] = v83;
  *&v65[103] = v84;
  *&v65[7] = v78;
  *&v65[23] = v79;
  v66 = 1;
  *&v65[39] = v80;
  v31 = v54;
  sub_2E28(v25, v54, &qword_71680, &qword_589A8);
  v32 = *&v69[80];
  *(a1 + 73) = *&v69[64];
  *(a1 + 89) = v32;
  *(a1 + 105) = *&v69[96];
  v33 = *&v69[16];
  *(a1 + 9) = *v69;
  *(a1 + 25) = v33;
  v34 = *&v69[48];
  *(a1 + 41) = *&v69[32];
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 120) = *&v69[111];
  *(a1 + 57) = v34;
  v35 = sub_2AFC(&qword_716F0, &qword_58A70);
  sub_2E28(v31, a1 + v35[12], &qword_71680, &qword_589A8);
  v36 = a1 + v35[16];
  *v36 = 0;
  *(v36 + 8) = 1;
  v37 = (a1 + v35[20]);
  *&v55 = v26;
  *(&v55 + 1) = v27;
  *&v56 = 1;
  BYTE8(v56) = 0;
  *&v57 = v28;
  v38 = v52;
  *(&v57 + 1) = v52;
  *&v58 = v30;
  v39 = v30;
  v40 = v51;
  *(&v58 + 1) = v51;
  v41 = v56;
  *v37 = v55;
  v37[1] = v41;
  v42 = v58;
  v37[2] = v57;
  v37[3] = v42;
  v43 = a1 + v35[24];
  v44 = *&v65[80];
  *(v43 + 73) = *&v65[64];
  *(v43 + 89) = v44;
  *(v43 + 105) = *&v65[96];
  v45 = *&v65[16];
  *(v43 + 9) = *v65;
  *(v43 + 25) = v45;
  v46 = *&v65[48];
  *(v43 + 41) = *&v65[32];
  *v43 = 0;
  *(v43 + 8) = 1;
  *(v43 + 120) = *&v65[111];
  *(v43 + 57) = v46;
  sub_2E28(&v55, v59, &qword_716F8, &qword_58A78);
  sub_2E90(v53, &qword_71680, &qword_589A8);
  v59[0] = v26;
  v59[1] = v27;
  v59[2] = 1;
  v60 = 0;
  v61 = v50;
  v62 = v38;
  v63 = v39;
  v64 = v40;
  sub_2E90(v59, &qword_716F8, &qword_58A78);
  return sub_2E90(v54, &qword_71680, &qword_589A8);
}

uint64_t sub_2608(uint64_t a1, id *a2)
{
  result = sub_5776C();
  *a2 = 0;
  return result;
}

uint64_t sub_2680(uint64_t a1, id *a2)
{
  v3 = sub_5777C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2700@<X0>(uint64_t *a1@<X8>)
{
  sub_5778C();
  v2 = sub_5774C();

  *a1 = v2;
  return result;
}

uint64_t sub_2744()
{
  sub_5778C();
  v0 = sub_577FC();

  return v0;
}

uint64_t sub_2780(uint64_t a1)
{
  sub_5778C();
  sub_577CC();
}

Swift::Int sub_27D4(uint64_t a1)
{
  sub_5778C();
  sub_57C2C();
  sub_577CC();
  v1 = sub_57C4C();

  return v1;
}

uint64_t sub_2848(void *a1, uint64_t *a2)
{
  v2 = sub_5778C();
  v4 = v3;
  if (v2 == sub_5778C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_57B8C();
  }

  return v7 & 1;
}

uint64_t sub_28D0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_5774C();

  *a2 = v3;
  return result;
}

uint64_t sub_2918@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5778C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2968(uint64_t a1)
{
  v2 = sub_2A68(&qword_71700, &unk_588A4);
  v3 = sub_2A68(&qword_71708, &unk_587F8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_2A68(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2AFC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2B4C()
{
  result = qword_71688;
  if (!qword_71688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71688);
  }

  return result;
}

unint64_t sub_2BB8()
{
  result = qword_71698;
  if (!qword_71698)
  {
    sub_2C70(&qword_71690, &qword_58A40);
    sub_2CB8();
    sub_3260(&qword_716E0, &qword_716E8, &qword_5B6C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71698);
  }

  return result;
}

uint64_t sub_2C70(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2CB8()
{
  result = qword_716A0;
  if (!qword_716A0)
  {
    sub_2C70(&qword_716A8, &qword_58A48);
    sub_2D70();
    sub_3260(&qword_716D0, &qword_716D8, &unk_58A60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_716A0);
  }

  return result;
}

unint64_t sub_2D70()
{
  result = qword_716B0;
  if (!qword_716B0)
  {
    sub_2C70(&qword_716B8, &qword_58A50);
    sub_3260(&qword_716C0, &qword_716C8, &qword_58A58, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_716B0);
  }

  return result;
}

uint64_t sub_2E28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2AFC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2E90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2AFC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2EF4()
{
  result = qword_71710;
  if (!qword_71710)
  {
    sub_2C70(&qword_71670, &qword_58968);
    sub_2FAC();
    sub_3260(&qword_71760, &qword_71678, &qword_58970, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71710);
  }

  return result;
}

unint64_t sub_2FAC()
{
  result = qword_71718;
  if (!qword_71718)
  {
    sub_2C70(&qword_71660, &qword_58958);
    sub_3064();
    sub_3260(&qword_71758, &qword_71668, &qword_58960, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71718);
  }

  return result;
}

unint64_t sub_3064()
{
  result = qword_71720;
  if (!qword_71720)
  {
    sub_2C70(&qword_71658, &qword_58950);
    sub_311C();
    sub_3260(&qword_71748, &qword_71750, &qword_58A88, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71720);
  }

  return result;
}

unint64_t sub_311C()
{
  result = qword_71728;
  if (!qword_71728)
  {
    sub_2C70(&qword_71650, &qword_58948);
    sub_31A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71728);
  }

  return result;
}

unint64_t sub_31A8()
{
  result = qword_71730;
  if (!qword_71730)
  {
    sub_2C70(&qword_71648, &qword_58940);
    sub_3260(&qword_71738, &qword_71740, &qword_58A80, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71730);
  }

  return result;
}

uint64_t sub_3260(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2C70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_32AC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_32B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_32D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 sub_3318(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_3324(uint64_t a1, int a2)
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

uint64_t sub_3344(uint64_t result, int a2, int a3)
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

void sub_3394(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_33E8()
{
  v0 = sub_5736C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_5738C();
  sub_B17C(v4, qword_71780);
  sub_B144(v4, qword_71780);
  (*(v1 + 104))(v3, enum case for ContactFormatter.Style.shortName(_:), v0);
  return sub_5737C();
}

uint64_t sub_34EC()
{
  v0 = sub_573DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v16 - v5;
  sub_573EC();
  (*(v1 + 104))(v3, enum case for _CommunicationHandle.Kind.phoneNumber(_:), v0);
  sub_B758(&qword_717D8, &type metadata accessor for _CommunicationHandle.Kind, &protocol conformance descriptor for _CommunicationHandle.Kind);
  sub_5780C();
  sub_5780C();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  v9 = v16[0];
  v8 = v16[1];
  result = sub_573FC();
  if (v8 == v9)
  {
    v11 = objc_allocWithZone(CNPhoneNumber);
    v12 = sub_5774C();

    v13 = [v11 initWithStringValue:v12];

    v14 = [v13 formattedStringValue];
    if (v14)
    {
      v15 = sub_5778C();

      return v15;
    }

    else
    {
      return sub_573FC();
    }
  }

  return result;
}

uint64_t sub_3730(void *a1)
{
  v2 = v1;
  v4 = sub_2AFC(&qword_71820, &qword_59550);
  __chkstk_darwin(v4 - 8);
  v6 = &v60 - v5;
  v65 = type metadata accessor for MessagesContext(0);
  v61 = *(v65 - 8);
  __chkstk_darwin(v65);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v7;
  __chkstk_darwin(v9);
  v11 = &v60 - v10;
  v12 = *(v1 + 72);
  v13 = *(v12 + OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter_originalPayload);
  v14 = sub_5763C();

  v15 = (v12 + OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter_messagesContext);
  sub_AF78(v12 + OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter_messagesContext, v11);
  v16 = v15[1];
  v63 = *v15;
  v17 = qword_715B8;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = sub_562FC();
  v19 = sub_B144(v18, qword_75758);

  v20 = a1;
  v21 = v14;
  v64 = v19;
  v22 = sub_562DC();
  v23 = sub_5794C();
  v67 = v21;

  v66 = v20;

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412802;
    if (v16)
    {
      sub_B8D8();
      swift_allocError();
      *v26 = v63;
      v26[1] = v16;

      v27 = _swift_stdlib_bridgeErrorToNSError();
      v28 = v27;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    *(v24 + 4) = v27;
    *(v24 + 12) = 2112;
    v29 = v66;
    v30 = v67;
    *(v24 + 14) = v66;
    *v25 = v28;
    v25[1] = v29;
    *(v24 + 22) = 2112;
    *(v24 + 24) = v30;
    v25[2] = v30;
    v31 = v29;
    v32 = v30;
    _os_log_impl(&dword_0, v22, v23, "%@: User selected answer choice. answerChoice: %@, question: %@", v24, 0x20u);
    sub_2AFC(&qword_71828, &qword_598B0);
    swift_arrayDestroy();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v34 = Strong, v35 = [Strong activeConversation], v34, v35))
  {

    v36 = v67;
    v37 = [v35 senderAddress];
    sub_5778C();

    v38 = objc_allocWithZone(sub_5725C());
    v39 = v66;
    v40 = sub_5723C();
    v41 = sub_578CC();
    (*(*(v41 - 8) + 56))(v6, 1, 1, v41);
    sub_AF78(v11, v8);
    sub_578AC();

    v42 = v40;
    v43 = v35;
    v44 = sub_5789C();
    v45 = v8;
    v46 = v11;
    v47 = (*(v61 + 80) + 56) & ~*(v61 + 80);
    v48 = swift_allocObject();
    v48[2] = v44;
    v48[3] = &protocol witness table for MainActor;
    v48[4] = v2;
    v48[5] = v42;
    v48[6] = v43;
    v49 = v48 + v47;
    v11 = v46;
    sub_BA54(v45, v49);
    sub_31894(0, 0, v6, &unk_58B90, v48);
  }

  else
  {

    v50 = v66;
    v51 = sub_562DC();
    v52 = sub_5792C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412546;
      if (v16)
      {
        sub_B8D8();
        swift_allocError();
        *v55 = v63;
        v55[1] = v16;
        v56 = _swift_stdlib_bridgeErrorToNSError();
        v57 = v56;
      }

      else
      {
        v56 = 0;
        v57 = 0;
      }

      *(v53 + 4) = v56;
      *(v53 + 12) = 2112;
      *(v53 + 14) = v50;
      *v54 = v57;
      v54[1] = v50;
      v58 = v50;
      _os_log_impl(&dword_0, v51, v52, "%@: Could not send response because activeConversation was nil. answerChoice: %@", v53, 0x16u);
      sub_2AFC(&qword_71828, &qword_598B0);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  return sub_AFDC(v11);
}

uint64_t sub_3D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = sub_578AC();
  v7[7] = sub_5789C();

  return _swift_task_switch(sub_3E1C, 0, 0);
}

uint64_t sub_3E1C()
{
  *(v0 + 64) = sub_5789C();
  v2 = sub_5788C();

  return _swift_task_switch(sub_3EA8, v2, v1);
}

uint64_t sub_3EA8()
{

  v1 = sub_300E8();
  v4 = v1;
  if (v1 >> 62)
  {
    v1 = sub_57B1C();
    v5 = v1;
    if (!v1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return _swift_task_switch(v1, v2, v3);
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_57AEC();
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    v9 = *&v7[OBJC_IVAR____TtC13AskToMessages6Choice_setEnabled];

    v9(0);
  }

  while (v5 != v6);
LABEL_10:

  v10 = sub_5788C();
  v3 = v11;
  *(v0 + 72) = v10;
  *(v0 + 80) = v11;
  v1 = sub_4000;
  v2 = v10;

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_4000()
{
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_40A0;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];

  return sub_14234(v4, v2, v3);
}

uint64_t sub_40A0()
{

  return _swift_task_switch(sub_419C, 0, 0);
}

uint64_t sub_419C()
{
  *(v0 + 96) = sub_5789C();
  v2 = sub_5788C();

  return _swift_task_switch(sub_4228, v2, v1);
}

uint64_t sub_4228()
{
  v1 = v0[2];

  v5 = *(v1 + 80);
  if (v5 >> 62)
  {
    v2 = sub_57B1C();
    v6 = v2;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return _swift_task_switch(v2, v3, v4);
  }

  v7 = 0;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = sub_57AEC();
    }

    else
    {
      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    ++v7;
    v10 = *&v8[OBJC_IVAR____TtC13AskToMessages6Choice_setEnabled];

    v10(1);
  }

  while (v6 != v7);

LABEL_10:
  sub_43CC();
  v3 = v0[9];
  v4 = v0[10];
  v2 = sub_436C;

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_436C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_43CC()
{
  v1 = v0;
  v2 = *(v0 + 72);
  v4 = *(v2 + OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter_messagesContext);
  v3 = *(v2 + OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter_messagesContext + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_5662C();

  if (v31 == 255)
  {
    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v13 = sub_562FC();
    sub_B144(v13, qword_75758);

    v14 = sub_562DC();
    v15 = sub_5792C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      if (v3)
      {
        sub_B8D8();
        swift_allocError();
        *v18 = v4;
        v18[1] = v3;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        v20 = v19;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      *(v16 + 4) = v19;
      *v17 = v20;
      _os_log_impl(&dword_0, v14, v15, "%@: responseTransmitter.sendResult is nil", v16, 0xCu);
      sub_2E90(v17, &qword_71828, &qword_598B0);
    }

    else
    {
    }
  }

  else if (v31)
  {
    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v5 = sub_562FC();
    sub_B144(v5, qword_75758);

    sub_BCC0(v30, v31);
    v6 = sub_562DC();
    v7 = sub_5792C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      if (v3)
      {
        sub_B8D8();
        swift_allocError();
        *v10 = v4;
        v10[1] = v3;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        v12 = v11;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      *(v8 + 4) = v11;
      *v9 = v12;
      *(v8 + 12) = 2112;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v29;
      v9[1] = v29;
      _os_log_impl(&dword_0, v6, v7, "%@: Error sending response: %@", v8, 0x16u);
      sub_2AFC(&qword_71828, &qword_598B0);
      swift_arrayDestroy();
    }

    else
    {

      sub_BCE4(v30, v31);
    }

    sub_BCE4(v30, v31);
    *(v1 + 104) = 1;
  }

  else
  {
    sub_BCD8(v30, 0);
    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v21 = sub_562FC();
    sub_B144(v21, qword_75758);

    sub_BCC0(v30, v31);
    v22 = sub_562DC();
    v23 = sub_5794C();

    sub_BCE4(v30, v31);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412546;
      if (v3)
      {
        sub_B8D8();
        swift_allocError();
        *v26 = v4;
        v26[1] = v3;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        v28 = v27;
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      *(v24 + 4) = v27;
      *(v24 + 12) = 2112;
      *(v24 + 14) = v30;
      *v25 = v28;
      v25[1] = v30;
      sub_BCD8(v30, 0);
      _os_log_impl(&dword_0, v22, v23, "%@: Successfully sent response: %@", v24, 0x16u);
      sub_2AFC(&qword_71828, &qword_598B0);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v1 + 88))();
    sub_BCE4(v30, v31);
    sub_BCE4(v30, v31);
  }
}

void sub_4944()
{
  v1 = sub_5605C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v76 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_561CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v73 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v75 = &v69 - v8;
  v82 = sub_5773C();
  v74 = *(v82 - 8);
  __chkstk_darwin(v82);
  v72 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v81 = &v69 - v11;
  v93 = sub_561AC();
  v80 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_5606C();
  v13 = *(v94 - 8);
  __chkstk_darwin(v94);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v90 = &v69 - v17;
  v98 = &_swiftEmptyArrayStorage;
  v95 = v0;
  v18 = *(*(v0 + 72) + OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter_originalPayload);
  v19 = sub_5763C();

  v20 = sub_5637C();
  if (v20 >> 62)
  {
    v21 = sub_57B1C();
  }

  else
  {
    v21 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
  }

  v79 = v13;
  v83 = v15;
  v78 = v1;
  v77 = v2;
  if (v21)
  {
    if (v21 >= 1)
    {
      v70 = v5;
      v71 = v4;
      v22 = 0;
      v91 = v20 & 0xC000000000000001;
      v84 = 0x800000000005BE80;
      v85 = 0x800000000005BE50;
      v87 = (v13 + 16);
      v88 = (v80 + 8);
      v86 = (v13 + 8);
      v89 = v21;
      while (1)
      {
        if (v91)
        {
          v23 = sub_57AEC();
        }

        else
        {
          v23 = *(v20 + 8 * v22 + 32);
        }

        v24 = v23;
        sub_564CC();
        v25 = sub_564BC();
        if (v25 == sub_564BC())
        {
          goto LABEL_14;
        }

        if (sub_564AC() == 0xD000000000000025 && v85 == v26)
        {
          break;
        }

        v27 = sub_57B8C();

        if (v27)
        {
          goto LABEL_14;
        }

        if (sub_564AC() == 0xD000000000000028 && v84 == v44)
        {
          break;
        }

        v45 = sub_57B8C();

        if (v45)
        {
          goto LABEL_14;
        }

LABEL_17:
        ++v22;

        if (v21 == v22)
        {

          v4 = v71;
          v5 = v70;
          goto LABEL_24;
        }
      }

LABEL_14:
      v28 = v20;

      v29 = v90;
      sub_5604C();
      v30 = swift_allocObject();
      swift_weakInit();
      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      *(v31 + 24) = v24;

      v32 = v24;
      v33 = v92;
      sub_5619C();
      v34 = sub_5615C();
      v36 = v35;
      (*v88)(v33, v93);
      v37 = type metadata accessor for Choice(0);
      v38 = objc_allocWithZone(v37);
      v39 = &v38[OBJC_IVAR____TtC13AskToMessages6Choice_setEnabled];
      *v39 = nullsub_1;
      v39[1] = 0;
      v40 = &v38[OBJC_IVAR____TtC13AskToMessages6Choice_id];
      *v40 = v34;
      v40[1] = v36;
      v41 = v94;
      (*v87)(&v38[OBJC_IVAR____TtC13AskToMessages6Choice_title], v29, v94);
      v38[OBJC_IVAR____TtC13AskToMessages6Choice_buttonType] = 0;
      *&v38[OBJC_IVAR____TtC13AskToMessages6Choice_tintColor] = 0;
      v42 = &v38[OBJC_IVAR____TtC13AskToMessages6Choice_accessibilityIdentifier];
      *v42 = 0;
      v42[1] = 0;
      v43 = &v38[OBJC_IVAR____TtC13AskToMessages6Choice_action];
      *v43 = sub_B8D0;
      v43[1] = v31;
      v96.receiver = v38;
      v96.super_class = v37;
      objc_msgSendSuper2(&v96, "init");
      (*v86)(v29, v41);

      sub_5782C();
      if (*(&dword_10 + (v98 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v98 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_5786C();
      }

      sub_5787C();
      v20 = v28;
      v21 = v89;
      goto LABEL_17;
    }

    __break(1u);
  }

  else
  {

LABEL_24:
    sub_576DC();
    sub_B038();
    v46 = sub_5796C();
    if (v46)
    {
      v47 = v46;
      v48 = v5;
      v49 = v4;
    }

    else
    {
      v48 = v5;
      v49 = v4;
      v47 = [objc_opt_self() mainBundle];
    }

    v50 = v75;
    sub_561BC();
    v51 = v74;
    v52 = v81;
    (*(v74 + 16))(v72, v81, v82);
    (*(v48 + 16))(v73, v50, v49);
    v53 = [v47 bundleURL];
    v54 = v76;
    sub_560AC();

    (*(v77 + 104))(v54, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v78);
    sub_5607C();

    (*(v48 + 8))(v50, v49);
    (*(v51 + 8))(v52, v82);
    v55 = swift_allocObject();
    swift_weakInit();

    v56 = v92;
    sub_5619C();
    v57 = sub_5615C();
    v59 = v58;
    (*(v80 + 8))(v56, v93);
    v60 = type metadata accessor for Choice(0);
    v61 = objc_allocWithZone(v60);
    v62 = &v61[OBJC_IVAR____TtC13AskToMessages6Choice_setEnabled];
    *v62 = nullsub_1;
    v62[1] = 0;
    v63 = &v61[OBJC_IVAR____TtC13AskToMessages6Choice_id];
    *v63 = v57;
    v63[1] = v59;
    v64 = v79;
    v65 = v83;
    v66 = v94;
    (*(v79 + 16))(&v61[OBJC_IVAR____TtC13AskToMessages6Choice_title], v83, v94);
    v61[OBJC_IVAR____TtC13AskToMessages6Choice_buttonType] = 1;
    *&v61[OBJC_IVAR____TtC13AskToMessages6Choice_tintColor] = 0;
    v67 = &v61[OBJC_IVAR____TtC13AskToMessages6Choice_accessibilityIdentifier];
    *v67 = 0;
    v67[1] = 0;
    v68 = &v61[OBJC_IVAR____TtC13AskToMessages6Choice_action];
    *v68 = sub_B888;
    v68[1] = v55;
    v97.receiver = v61;
    v97.super_class = v60;
    objc_msgSendSuper2(&v97, "init");
    (*(v64 + 8))(v65, v66);

    sub_5782C();
    if (*(&dword_10 + (v98 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v98 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_5786C();
    }

    sub_5787C();
  }
}

uint64_t sub_5408(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_3730(a3);
  }

  return result;
}

uint64_t sub_5468(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 88);

    v3(v4);
  }

  return result;
}

uint64_t sub_54E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = sub_573DC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6240(a3, v15);
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 != enum case for _CommunicationHandle.Kind.phoneNumber(_:))
  {
    if (v16 == enum case for _CommunicationHandle.Kind.emailAddress(_:))
    {
      if (a5)
      {
        if (!a2)
        {
          v36 = 0x800000000005BDE0;
          sub_2AFC(&qword_717E0, &qword_58B68);
          v59 = swift_allocObject();
          *(v59 + 16) = xmmword_58B00;
          *(v59 + 56) = &type metadata for String;
          v60 = sub_B088();
          *(v59 + 32) = a4;
          *(v59 + 40) = a5;
          *(v59 + 96) = &type metadata for String;
          *(v59 + 104) = v60;
          *(v59 + 64) = v60;
          *(v59 + 72) = a4;
          *(v59 + 80) = a5;
          type metadata accessor for Localization();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v62 = objc_opt_self();
          swift_bridgeObjectRetain_n();

          v41 = [v62 bundleForClass:ObjCClassFromMetadata];
          v93._countAndFlagsBits = 0x800000000005BDE0;
          v42._countAndFlagsBits = 0xD00000000000002BLL;
          v43 = 0xD00000000000002BLL;
          goto LABEL_26;
        }

        v17 = 0x800000000005BE10;
        sub_2AFC(&qword_717E0, &qword_58B68);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_58AF0;
        *(v25 + 56) = &type metadata for String;
        v26 = sub_B088();
        *(v25 + 32) = a4;
        *(v25 + 40) = a5;
        *(v25 + 96) = &type metadata for String;
        *(v25 + 104) = v26;
        *(v25 + 64) = v26;
        *(v25 + 72) = a1;
        *(v25 + 80) = a2;
        *(v25 + 136) = &type metadata for String;
        *(v25 + 144) = v26;
        *(v25 + 112) = a4;
        *(v25 + 120) = a5;
        type metadata accessor for Localization();
        v27 = swift_getObjCClassFromMetadata();
        v28 = objc_opt_self();
        swift_bridgeObjectRetain_n();

        v22 = [v28 bundleForClass:v27];
        v93._countAndFlagsBits = 0x800000000005BE10;
        v23._countAndFlagsBits = 0xD000000000000032;
        v24 = 0xD000000000000032;
      }

      else
      {
        if (!a2)
        {
          v54 = 0x800000000005BD60;
          type metadata accessor for Localization();
          v69 = swift_getObjCClassFromMetadata();
          v56 = [objc_opt_self() bundleForClass:v69];
          v93._countAndFlagsBits = 0x800000000005BD60;
          v57._countAndFlagsBits = 0xD000000000000034;
          v58 = 0xD000000000000034;
          goto LABEL_30;
        }

        v17 = 0x800000000005BDA0;
        sub_2AFC(&qword_717E0, &qword_58B68);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_58B10;
        *(v44 + 56) = &type metadata for String;
        *(v44 + 64) = sub_B088();
        *(v44 + 32) = a1;
        *(v44 + 40) = a2;
        type metadata accessor for Localization();
        v45 = swift_getObjCClassFromMetadata();
        v46 = objc_opt_self();

        v22 = [v46 bundleForClass:v45];
        v93._countAndFlagsBits = 0x800000000005BDA0;
        v23._countAndFlagsBits = 0xD00000000000003BLL;
        v24 = 0xD00000000000003BLL;
      }
    }

    else
    {
      if (v16 != enum case for _CommunicationHandle.Kind.custom(_:))
      {
        (*(v13 + 8))(v15, v12);
      }

      if (a5)
      {
        if (!a2)
        {
          v36 = 0x800000000005BBE0;
          sub_2AFC(&qword_717E0, &qword_58B68);
          v63 = swift_allocObject();
          *(v63 + 16) = xmmword_58B00;
          *(v63 + 56) = &type metadata for String;
          v64 = sub_B088();
          *(v63 + 32) = a4;
          *(v63 + 40) = a5;
          *(v63 + 96) = &type metadata for String;
          *(v63 + 104) = v64;
          *(v63 + 64) = v64;
          *(v63 + 72) = a4;
          *(v63 + 80) = a5;
          type metadata accessor for Localization();
          v65 = swift_getObjCClassFromMetadata();
          v66 = objc_opt_self();
          swift_bridgeObjectRetain_n();

          v41 = [v66 bundleForClass:v65];
          v93._countAndFlagsBits = 0x800000000005BBE0;
          v42._countAndFlagsBits = 0xD00000000000002CLL;
          v43 = 0xD00000000000002CLL;
          goto LABEL_26;
        }

        v17 = 0x800000000005BC10;
        sub_2AFC(&qword_717E0, &qword_58B68);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_58AF0;
        *(v29 + 56) = &type metadata for String;
        v30 = sub_B088();
        *(v29 + 32) = a4;
        *(v29 + 40) = a5;
        *(v29 + 96) = &type metadata for String;
        *(v29 + 104) = v30;
        *(v29 + 64) = v30;
        *(v29 + 72) = a1;
        *(v29 + 80) = a2;
        *(v29 + 136) = &type metadata for String;
        *(v29 + 144) = v30;
        *(v29 + 112) = a4;
        *(v29 + 120) = a5;
        type metadata accessor for Localization();
        v31 = swift_getObjCClassFromMetadata();
        v32 = objc_opt_self();
        swift_bridgeObjectRetain_n();

        v22 = [v32 bundleForClass:v31];
        v93._countAndFlagsBits = 0x800000000005BC10;
        v23._countAndFlagsBits = 0xD000000000000033;
        v24 = 0xD000000000000033;
      }

      else
      {
        if (!a2)
        {
          v54 = 0x800000000005BB60;
          type metadata accessor for Localization();
          v70 = swift_getObjCClassFromMetadata();
          v56 = [objc_opt_self() bundleForClass:v70];
          v93._countAndFlagsBits = 0x800000000005BB60;
          v57._countAndFlagsBits = 0xD000000000000035;
          v58 = 0xD000000000000035;
          goto LABEL_30;
        }

        v17 = 0x800000000005BBA0;
        sub_2AFC(&qword_717E0, &qword_58B68);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_58B10;
        *(v47 + 56) = &type metadata for String;
        *(v47 + 64) = sub_B088();
        *(v47 + 32) = a1;
        *(v47 + 40) = a2;
        type metadata accessor for Localization();
        v48 = swift_getObjCClassFromMetadata();
        v49 = objc_opt_self();

        v22 = [v49 bundleForClass:v48];
        v93._countAndFlagsBits = 0x800000000005BBA0;
        v23._countAndFlagsBits = 0xD00000000000003CLL;
        v24 = 0xD00000000000003CLL;
      }
    }

LABEL_21:
    v23._object = v17;
    v101.value._countAndFlagsBits = 0;
    v101.value._object = 0;
    v50.super.isa = v22;
    v106._countAndFlagsBits = 0;
    v106._object = 0xE000000000000000;
    sub_55EFC(v23, v101, v50, v106, v24, v93);

    v51 = sub_5775C();
    v53 = v52;

    if ((a6 & 1) == 0)
    {
      return v51;
    }

    goto LABEL_31;
  }

  if (!a5)
  {
    if (a2)
    {
      v17 = 0x800000000005BC90;
      sub_2AFC(&qword_717E0, &qword_58B68);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_58B10;
      *(v33 + 56) = &type metadata for String;
      *(v33 + 64) = sub_B088();
      *(v33 + 32) = a1;
      *(v33 + 40) = a2;
      type metadata accessor for Localization();
      v34 = swift_getObjCClassFromMetadata();
      v35 = objc_opt_self();

      v22 = [v35 bundleForClass:v34];
      v93._countAndFlagsBits = 0x800000000005BC90;
      v23._countAndFlagsBits = 0xD000000000000041;
      v24 = 0xD000000000000041;
      goto LABEL_21;
    }

    v54 = 0x800000000005BC50;
    type metadata accessor for Localization();
    v55 = swift_getObjCClassFromMetadata();
    v56 = [objc_opt_self() bundleForClass:v55];
    v93._countAndFlagsBits = 0x800000000005BC50;
    v57._countAndFlagsBits = 0xD00000000000003ALL;
    v58 = 0xD00000000000003ALL;
LABEL_30:
    v57._object = v54;
    v103.value._countAndFlagsBits = a1;
    v103.value._object = 0;
    v71.super.isa = v56;
    v108._countAndFlagsBits = 0;
    v108._object = 0xE000000000000000;
    v51 = sub_55EFC(v57, v103, v71, v108, v58, v93);
    v53 = v72;

    if ((a6 & 1) == 0)
    {
      return v51;
    }

    goto LABEL_31;
  }

  if (a2)
  {
    v17 = 0x800000000005BD20;
    sub_2AFC(&qword_717E0, &qword_58B68);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_58AF0;
    *(v18 + 56) = &type metadata for String;
    v19 = sub_B088();
    *(v18 + 32) = a4;
    *(v18 + 40) = a5;
    *(v18 + 96) = &type metadata for String;
    *(v18 + 104) = v19;
    *(v18 + 64) = v19;
    *(v18 + 72) = a1;
    *(v18 + 80) = a2;
    *(v18 + 136) = &type metadata for String;
    *(v18 + 144) = v19;
    *(v18 + 112) = a4;
    *(v18 + 120) = a5;
    type metadata accessor for Localization();
    v20 = swift_getObjCClassFromMetadata();
    v21 = objc_opt_self();
    swift_bridgeObjectRetain_n();

    v22 = [v21 bundleForClass:v20];
    v93._countAndFlagsBits = 0x800000000005BD20;
    v23._countAndFlagsBits = 0xD000000000000038;
    v24 = 0xD000000000000038;
    goto LABEL_21;
  }

  v36 = 0x800000000005BCE0;
  sub_2AFC(&qword_717E0, &qword_58B68);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_58B00;
  *(v37 + 56) = &type metadata for String;
  v38 = sub_B088();
  *(v37 + 32) = a4;
  *(v37 + 40) = a5;
  *(v37 + 96) = &type metadata for String;
  *(v37 + 104) = v38;
  *(v37 + 64) = v38;
  *(v37 + 72) = a4;
  *(v37 + 80) = a5;
  type metadata accessor for Localization();
  v39 = swift_getObjCClassFromMetadata();
  v40 = objc_opt_self();
  swift_bridgeObjectRetain_n();

  v41 = [v40 bundleForClass:v39];
  v93._countAndFlagsBits = 0x800000000005BCE0;
  v42._countAndFlagsBits = 0xD000000000000031;
  v43 = 0xD000000000000031;
LABEL_26:
  v42._object = v36;
  v102.value._countAndFlagsBits = a1;
  v102.value._object = 0;
  v67.super.isa = v41;
  v107._countAndFlagsBits = 0;
  v107._object = 0xE000000000000000;
  sub_55EFC(v42, v102, v67, v107, v43, v93);

  v51 = sub_5775C();
  v53 = v68;

  if ((a6 & 1) == 0)
  {
    return v51;
  }

LABEL_31:
  v95 = v51;
  v96 = v53;

  if (a5)
  {

    v97._countAndFlagsBits = 32;
    v97._object = 0xE100000000000000;
    sub_577DC(v97);

    v74 = v95;
    v73 = v96;
    sub_2AFC(&qword_717E0, &qword_58B68);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_58B10;
    *(v75 + 56) = &type metadata for String;
    *(v75 + 64) = sub_B088();
    *(v75 + 32) = a4;
    *(v75 + 40) = a5;
    type metadata accessor for Localization();
    v76 = swift_getObjCClassFromMetadata();
    v77 = objc_opt_self();

    v78 = [v77 bundleForClass:v76];
    v98._object = 0xEC0000006567616ELL;
    v94._countAndFlagsBits = 0xEC0000006567616ELL;
    v98._countAndFlagsBits = 0x614D6E6143756F59;
    v104.value._countAndFlagsBits = 0;
    v104.value._object = 0;
    v79.super.isa = v78;
    v109._countAndFlagsBits = 0;
    v109._object = 0xE000000000000000;
    sub_55EFC(v98, v104, v79, v109, 0x614D6E6143756F59, v94);

    v80 = sub_5775C();
    v82 = v81;

    v95 = v74;
    v96 = v73;

    v83._countAndFlagsBits = v80;
    v83._object = v82;
  }

  else
  {
    v99._countAndFlagsBits = 32;
    v99._object = 0xE100000000000000;
    sub_577DC(v99);

    v85 = v95;
    v84 = v96;
    type metadata accessor for Localization();
    v86 = swift_getObjCClassFromMetadata();
    v87 = [objc_opt_self() bundleForClass:v86];
    v94._countAndFlagsBits = 0x800000000005B7D0;
    v100._countAndFlagsBits = 0xD000000000000015;
    v100._object = 0x800000000005B7D0;
    v105.value._countAndFlagsBits = a4;
    v105.value._object = 0;
    v88.super.isa = v87;
    v110._countAndFlagsBits = 0;
    v110._object = 0xE000000000000000;
    v89 = sub_55EFC(v100, v105, v88, v110, 0xD000000000000015, v94);
    v91 = v90;

    v95 = v85;
    v96 = v84;

    v83._countAndFlagsBits = v89;
    v83._object = v91;
  }

  sub_577DC(v83);

  return v95;
}

uint64_t sub_6240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v55 = sub_573DC();
  v3 = *(v55 - 8);
  __chkstk_darwin(v55);
  v46 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2AFC(&qword_717F0, &qword_58B70);
  __chkstk_darwin(v5);
  v7 = &v40 - v6;
  v8 = sub_2AFC(&qword_717F8, &qword_58B78);
  __chkstk_darwin(v8 - 8);
  v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v54 = &v40 - v12;
  v16 = __chkstk_darwin(v13);
  v17 = &v40 - v14;
  v18 = *(a1 + 16);
  v42 = v3;
  if (!v18)
  {
    (*(v3 + 56))(&v40 - v14, 1, 1, v55, v16);
LABEL_11:
    v35 = v41;
    sub_B0DC(v17, v41, &qword_717F8, &qword_58B78);
    v36 = v42;
    v37 = *(v42 + 48);
    if (v37(v35, 1, v55) != 1)
    {
      return (*(v36 + 32))(v43, v35, v55);
    }

    v38 = v55;
    (*(v36 + 104))(v43, enum case for _CommunicationHandle.Kind.custom(_:), v55);
    result = (v37)(v35, 1, v38);
    if (result != 1)
    {
      return sub_2E90(v35, &qword_717F8, &qword_58B78);
    }

    return result;
  }

  v49 = v15;
  v19 = sub_5748C();
  v52 = v5;
  v20 = *(v19 - 8);
  v21 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v22 = sub_5747C();
  sub_573EC();

  v50 = *(v3 + 56);
  v50(v17, 0, 1, v55);
  v23 = v3 + 56;
  v24 = (v3 + 48);
  v51 = v23;
  v44 = (v23 - 24);
  v45 = (v23 - 48);
  v48 = *(v20 + 72);
  v53 = v17;
  while (1)
  {
    v25 = sub_5747C();
    v26 = v54;
    sub_573EC();

    v27 = v55;
    v50(v26, 0, 1, v55);
    v28 = *(v52 + 48);
    sub_2E28(v26, v7, &qword_717F8, &qword_58B78);
    sub_2E28(v17, &v7[v28], &qword_717F8, &qword_58B78);
    v29 = *v24;
    if ((*v24)(v7, 1, v27) != 1)
    {
      break;
    }

    sub_2E90(v54, &qword_717F8, &qword_58B78);
    if (v29(&v7[v28], 1, v55) != 1)
    {
      goto LABEL_16;
    }

    sub_2E90(v7, &qword_717F8, &qword_58B78);
    v17 = v53;
LABEL_3:
    v21 += v48;
    if (!--v18)
    {
      goto LABEL_11;
    }
  }

  v30 = v49;
  sub_2E28(v7, v49, &qword_717F8, &qword_58B78);
  if (v29(&v7[v28], 1, v55) != 1)
  {
    v31 = &v7[v28];
    v32 = v55;
    v33 = v46;
    (*v44)(v46, v31, v55);
    sub_B758(&qword_71800, &type metadata accessor for _CommunicationHandle.Kind, &protocol conformance descriptor for _CommunicationHandle.Kind);
    v47 = sub_576CC();
    v34 = *v45;
    (*v45)(v33, v32);
    sub_2E90(v54, &qword_717F8, &qword_58B78);
    v34(v49, v32);
    sub_2E90(v7, &qword_717F8, &qword_58B78);
    v17 = v53;
    if ((v47 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_3;
  }

  sub_2E90(v54, &qword_717F8, &qword_58B78);
  (*v45)(v30, v55);
LABEL_16:
  sub_2E90(v7, &qword_717F0, &qword_58B70);
  v17 = v53;
LABEL_17:
  sub_2E90(v17, &qword_717F8, &qword_58B78);
  return (*(v42 + 104))(v43, enum case for _CommunicationHandle.Kind.custom(_:), v55);
}

uint64_t sub_6878@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_6900(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_BCC0(v2, v3);
  return sub_5663C();
}

char *sub_6990(char *result, int64_t a2, char a3, char *a4)
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
    sub_2AFC(&qword_717D0, &qword_58B60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6AAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2AFC(&qword_71838, &qword_5AA00);
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

void *sub_6C08(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_2AFC(a5, a6);
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

unint64_t sub_6DE4(uint64_t a1, uint64_t a2)
{
  sub_57C2C();
  sub_577CC();
  v4 = sub_57C4C();

  return sub_714C(a1, a2, v4);
}

unint64_t sub_6E5C(uint64_t a1)
{
  sub_5778C();
  sub_57C2C();
  sub_577CC();
  v2 = sub_57C4C();

  return sub_7204(a1, v2);
}

unint64_t sub_6EF0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_57A3C(*(v2 + 40));

  return sub_7308(a1, v4);
}

uint64_t sub_6F34(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_57A1C();

    if (v9)
    {

      sub_5740C();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_57A0C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_77E0(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_79C0(v20 + 1);
    }

    v18 = v8;
    sub_7BE8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_5740C();
  v11 = sub_5797C(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_7C6C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_5798C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

unint64_t sub_714C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_57B8C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_7204(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_5778C();
      v8 = v7;
      if (v6 == sub_5778C() && v8 == v9)
      {
        break;
      }

      v11 = sub_57B8C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_7308(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_B7A0(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_57A4C();
      sub_B7FC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_73D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2AFC(&qword_717C0, &qword_58B50);
  v35 = v4;
  result = sub_57B3C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_57C2C();
      sub_577CC();
      result = sub_57C4C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_7674()
{
  v1 = v0;
  sub_2AFC(&qword_717C0, &qword_58B50);
  v2 = *v0;
  v3 = sub_57B2C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int sub_77E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_2AFC(&qword_717C8, &qword_58B58);
    v2 = sub_57A8C();
    v15 = v2;
    sub_579FC();
    if (sub_57A2C())
    {
      sub_5740C();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_79C0(v9 + 1);
        }

        v2 = v15;
        result = sub_5797C(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_57A2C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_79C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2AFC(&qword_717C8, &qword_58B58);
  result = sub_57A7C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_5797C(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_7BE8(uint64_t a1, void *a2)
{
  sub_5797C(a2[5]);
  result = sub_579EC();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_7C6C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_79C0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_7DCC();
      goto LABEL_12;
    }

    sub_7F1C(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_5797C(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_5740C();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_5798C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_57B9C();
  __break(1u);
}

id sub_7DCC()
{
  v1 = v0;
  sub_2AFC(&qword_717C8, &qword_58B58);
  v2 = *v0;
  v3 = sub_57A6C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_7F1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2AFC(&qword_717C8, &qword_58B58);
  result = sub_57A7C();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_5797C(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_8130(uint64_t a1)
{
  v2 = sub_5732C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (!v7)
  {
    return v6;
  }

  sub_572FC();
  v17._countAndFlagsBits = v6;
  v17._object = v7;
  v6 = sub_5730C(v17);
  (*(v3 + 8))(v5, v2);
  if (!v6)
  {
    return v6;
  }

  if (!(v6 >> 62))
  {
    result = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_5;
    }

LABEL_15:

    return 0;
  }

  result = sub_57B1C();
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v9 = sub_57AEC();
LABEL_8:
    v10 = v9;

    if (qword_715A0 != -1)
    {
      swift_once();
    }

    v11 = sub_5738C();
    sub_B144(v11, qword_71780);
    v12.super.isa = v10;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v6 = sub_5735C(v12, 1, v18);
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      return v6;
    }

    goto LABEL_15;
  }

  if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
  {
    v9 = *(v6 + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_8310(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_57B1C())
    {
LABEL_3:
      sub_2AFC(&qword_717C8, &qword_58B58);
      v3 = sub_57A9C();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_57B1C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_57AEC();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_5797C(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_5740C();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_5798C();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = sub_5797C(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_5740C();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_5798C();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_85DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2AFC(&qword_717C0, &qword_58B50);
    v3 = sub_57B4C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_6DE4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_86E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v129 = a8;
  v14 = sub_573DC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v18 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v18 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      if (a7)
      {
        if (a4)
        {
          v19 = 0x800000000005BB00;
          sub_2AFC(&qword_717E0, &qword_58B68);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_58B20;
          *(v20 + 56) = &type metadata for String;
          v21 = sub_B088();
          *(v20 + 32) = a6;
          *(v20 + 40) = a7;
          *(v20 + 96) = &type metadata for String;
          *(v20 + 104) = v21;
          *(v20 + 64) = v21;
          *(v20 + 72) = a1;
          *(v20 + 80) = a2;
          *(v20 + 136) = &type metadata for String;
          *(v20 + 144) = v21;
          *(v20 + 112) = a3;
          *(v20 + 120) = a4;
          *(v20 + 176) = &type metadata for String;
          *(v20 + 184) = v21;
          *(v20 + 152) = a6;
          *(v20 + 160) = a7;
          type metadata accessor for Localization();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v23 = objc_opt_self();
          swift_bridgeObjectRetain_n();

          v24 = [v23 bundleForClass:ObjCClassFromMetadata];
          v126._countAndFlagsBits = 0x800000000005BB00;
          v25._countAndFlagsBits = 0xD000000000000032;
          v26 = 0xD000000000000032;
LABEL_23:
          v25._object = v19;
          v136.value._countAndFlagsBits = 0;
          v136.value._object = 0;
          v48.super.isa = v24;
          v141._countAndFlagsBits = 0;
          v141._object = 0xE000000000000000;
          sub_55EFC(v25, v136, v48, v141, v26, v126);

          v49 = sub_5775C();
          v51 = v50;
LABEL_33:

          goto LABEL_34;
        }

        sub_2AFC(&qword_717E0, &qword_58B68);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_58AF0;
        *(v55 + 56) = &type metadata for String;
        v56 = sub_B088();
        *(v55 + 32) = a6;
        *(v55 + 40) = a7;
        *(v55 + 96) = &type metadata for String;
        *(v55 + 104) = v56;
        *(v55 + 64) = v56;
        *(v55 + 72) = a1;
        *(v55 + 80) = a2;
        *(v55 + 136) = &type metadata for String;
        *(v55 + 144) = v56;
        *(v55 + 112) = a6;
        *(v55 + 120) = a7;
        type metadata accessor for Localization();
        v57 = swift_getObjCClassFromMetadata();
        v58 = objc_opt_self();
        swift_bridgeObjectRetain_n();

        v59 = [v58 bundleForClass:v57];
        v126._countAndFlagsBits = 0x800000000005BAD0;
        v60._countAndFlagsBits = 0xD00000000000002BLL;
        v60._object = 0x800000000005BAD0;
        v61.value._countAndFlagsBits = a3;
        v61.value._object = 0;
        v62.super.isa = v59;
        v63._countAndFlagsBits = 0;
        v63._object = 0xE000000000000000;
        v64 = 0xD00000000000002BLL;
      }

      else
      {
        if (a4)
        {
          v19 = 0x800000000005BA90;
          sub_2AFC(&qword_717E0, &qword_58B68);
          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_58B00;
          *(v44 + 56) = &type metadata for String;
          v45 = sub_B088();
          *(v44 + 32) = a1;
          *(v44 + 40) = a2;
          *(v44 + 96) = &type metadata for String;
          *(v44 + 104) = v45;
          *(v44 + 64) = v45;
          *(v44 + 72) = a3;
          *(v44 + 80) = a4;
          type metadata accessor for Localization();
          v46 = swift_getObjCClassFromMetadata();
          v47 = objc_opt_self();

          v24 = [v47 bundleForClass:v46];
          v126._countAndFlagsBits = 0x800000000005BA90;
          v25._countAndFlagsBits = 0xD00000000000003BLL;
          v26 = 0xD00000000000003BLL;
          goto LABEL_23;
        }

        sub_2AFC(&qword_717E0, &qword_58B68);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_58B10;
        *(v103 + 56) = &type metadata for String;
        *(v103 + 64) = sub_B088();
        *(v103 + 32) = a1;
        *(v103 + 40) = a2;
        type metadata accessor for Localization();
        v104 = swift_getObjCClassFromMetadata();
        v105 = objc_opt_self();

        v59 = [v105 bundleForClass:v104];
        v126._countAndFlagsBits = 0x800000000005BA50;
        v60._countAndFlagsBits = 0xD000000000000034;
        v64 = 0xD000000000000034;
        v60._object = 0x800000000005BA50;
        v61.value._countAndFlagsBits = a3;
        v61.value._object = 0;
        v62.super.isa = v59;
        v63._countAndFlagsBits = 0;
        v63._object = 0xE000000000000000;
      }

      sub_55EFC(v60, v61, v62, v63, v64, v126);

      v49 = sub_5775C();
      v51 = v106;

LABEL_34:

      if ((v129 & 1) == 0)
      {
        return v49;
      }

      goto LABEL_35;
    }
  }

  sub_573EC();
  v27 = (*(v15 + 88))(v17, v14);
  if (v27 != enum case for _CommunicationHandle.Kind.phoneNumber(_:))
  {
    if (v27 == enum case for _CommunicationHandle.Kind.emailAddress(_:))
    {
      if (!a7)
      {
        if (a4)
        {
          v28 = 0x800000000005B9B0;
          sub_2AFC(&qword_717E0, &qword_58B68);
          v75 = swift_allocObject();
          *(v75 + 16) = xmmword_58B10;
          *(v75 + 56) = &type metadata for String;
          *(v75 + 64) = sub_B088();
          *(v75 + 32) = a3;
          *(v75 + 40) = a4;
          type metadata accessor for Localization();
          v76 = swift_getObjCClassFromMetadata();
          v77 = objc_opt_self();

          v33 = [v77 bundleForClass:v76];
          v126._countAndFlagsBits = 0x800000000005B9B0;
          v34._countAndFlagsBits = 0xD000000000000035;
          v35 = 0xD000000000000035;
          goto LABEL_32;
        }

        v107 = 0x800000000005B980;
        type metadata accessor for Localization();
        v122 = swift_getObjCClassFromMetadata();
        v109 = [objc_opt_self() bundleForClass:v122];
        v126._countAndFlagsBits = 0x800000000005B980;
        v110._countAndFlagsBits = 0xD00000000000002ELL;
        v111 = 0xD00000000000002ELL;
        goto LABEL_49;
      }

      if (a4)
      {
        v28 = 0x800000000005BA20;
        sub_2AFC(&qword_717E0, &qword_58B68);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_58AF0;
        *(v36 + 56) = &type metadata for String;
        v37 = sub_B088();
        *(v36 + 32) = a6;
        *(v36 + 40) = a7;
        *(v36 + 96) = &type metadata for String;
        *(v36 + 104) = v37;
        *(v36 + 64) = v37;
        *(v36 + 72) = a3;
        *(v36 + 80) = a4;
        *(v36 + 136) = &type metadata for String;
        *(v36 + 144) = v37;
        *(v36 + 112) = a6;
        *(v36 + 120) = a7;
        type metadata accessor for Localization();
        v38 = swift_getObjCClassFromMetadata();
        v39 = objc_opt_self();
        swift_bridgeObjectRetain_n();

        v33 = [v39 bundleForClass:v38];
        v126._countAndFlagsBits = 0x800000000005BA20;
        v34._countAndFlagsBits = 0xD00000000000002CLL;
        v35 = 0xD00000000000002CLL;
        goto LABEL_32;
      }

      v112 = 0x800000000005B9F0;
      sub_2AFC(&qword_717E0, &qword_58B68);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_58B00;
      *(v113 + 56) = &type metadata for String;
      v114 = sub_B088();
      *(v113 + 32) = a6;
      *(v113 + 40) = a7;
      *(v113 + 96) = &type metadata for String;
      *(v113 + 104) = v114;
      *(v113 + 64) = v114;
      *(v113 + 72) = a6;
      *(v113 + 80) = a7;
      type metadata accessor for Localization();
      v115 = swift_getObjCClassFromMetadata();
      v116 = objc_opt_self();
      swift_bridgeObjectRetain_n();

      v69 = [v116 bundleForClass:v115];
      v70._countAndFlagsBits = 0xD000000000000025;
    }

    else
    {
      if (v27 != enum case for _CommunicationHandle.Kind.custom(_:))
      {
        (*(v15 + 8))(v17, v14);
      }

      if (!a7)
      {
        if (a4)
        {
          v28 = 0x800000000005B7F0;
          sub_2AFC(&qword_717E0, &qword_58B68);
          v78 = swift_allocObject();
          *(v78 + 16) = xmmword_58B10;
          *(v78 + 56) = &type metadata for String;
          *(v78 + 64) = sub_B088();
          *(v78 + 32) = a3;
          *(v78 + 40) = a4;
          type metadata accessor for Localization();
          v79 = swift_getObjCClassFromMetadata();
          v80 = objc_opt_self();

          v33 = [v80 bundleForClass:v79];
          v126._countAndFlagsBits = 0x800000000005B7F0;
          v34._countAndFlagsBits = 0xD000000000000036;
          v35 = 0xD000000000000036;
          goto LABEL_32;
        }

        v107 = 0x800000000005B7A0;
        type metadata accessor for Localization();
        v123 = swift_getObjCClassFromMetadata();
        v109 = [objc_opt_self() bundleForClass:v123];
        v126._countAndFlagsBits = 0x800000000005B7A0;
        v110._countAndFlagsBits = 0xD00000000000002FLL;
        v111 = 0xD00000000000002FLL;
        goto LABEL_49;
      }

      if (a4)
      {
        v28 = 0x800000000005B860;
        sub_2AFC(&qword_717E0, &qword_58B68);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_58AF0;
        *(v40 + 56) = &type metadata for String;
        v41 = sub_B088();
        *(v40 + 32) = a6;
        *(v40 + 40) = a7;
        *(v40 + 96) = &type metadata for String;
        *(v40 + 104) = v41;
        *(v40 + 64) = v41;
        *(v40 + 72) = a3;
        *(v40 + 80) = a4;
        *(v40 + 136) = &type metadata for String;
        *(v40 + 144) = v41;
        *(v40 + 112) = a6;
        *(v40 + 120) = a7;
        type metadata accessor for Localization();
        v42 = swift_getObjCClassFromMetadata();
        v43 = objc_opt_self();
        swift_bridgeObjectRetain_n();

        v33 = [v43 bundleForClass:v42];
        v126._countAndFlagsBits = 0x800000000005B860;
        v34._countAndFlagsBits = 0xD00000000000002DLL;
        v35 = 0xD00000000000002DLL;
        goto LABEL_32;
      }

      v112 = 0x800000000005B830;
      sub_2AFC(&qword_717E0, &qword_58B68);
      v117 = swift_allocObject();
      *(v117 + 16) = xmmword_58B00;
      *(v117 + 56) = &type metadata for String;
      v118 = sub_B088();
      *(v117 + 32) = a6;
      *(v117 + 40) = a7;
      *(v117 + 96) = &type metadata for String;
      *(v117 + 104) = v118;
      *(v117 + 64) = v118;
      *(v117 + 72) = a6;
      *(v117 + 80) = a7;
      type metadata accessor for Localization();
      v119 = swift_getObjCClassFromMetadata();
      v120 = objc_opt_self();
      swift_bridgeObjectRetain_n();

      v69 = [v120 bundleForClass:v119];
      v70._countAndFlagsBits = 0xD000000000000026;
    }

    v126._countAndFlagsBits = v112;
    v70._object = v112;
    v71.value._countAndFlagsBits = a3;
    v71.value._object = 0;
    v72.super.isa = v69;
    v73._countAndFlagsBits = 0;
    v73._object = 0xE000000000000000;
    countAndFlagsBits = v70._countAndFlagsBits;
    goto LABEL_46;
  }

  if (a7)
  {
    if (a4)
    {
      v28 = 0x800000000005B940;
      sub_2AFC(&qword_717E0, &qword_58B68);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_58AF0;
      *(v29 + 56) = &type metadata for String;
      v30 = sub_B088();
      *(v29 + 32) = a6;
      *(v29 + 40) = a7;
      *(v29 + 96) = &type metadata for String;
      *(v29 + 104) = v30;
      *(v29 + 64) = v30;
      *(v29 + 72) = a3;
      *(v29 + 80) = a4;
      *(v29 + 136) = &type metadata for String;
      *(v29 + 144) = v30;
      *(v29 + 112) = a6;
      *(v29 + 120) = a7;
      type metadata accessor for Localization();
      v31 = swift_getObjCClassFromMetadata();
      v32 = objc_opt_self();
      swift_bridgeObjectRetain_n();

      v33 = [v32 bundleForClass:v31];
      v126._countAndFlagsBits = 0x800000000005B940;
      v34._countAndFlagsBits = 0xD000000000000032;
      v35 = 0xD000000000000032;
LABEL_32:
      v34._object = v28;
      v137.value._countAndFlagsBits = 0;
      v137.value._object = 0;
      v81.super.isa = v33;
      v142._countAndFlagsBits = 0;
      v142._object = 0xE000000000000000;
      sub_55EFC(v34, v137, v81, v142, v35, v126);

      v49 = sub_5775C();
      v51 = v82;
      goto LABEL_33;
    }

    sub_2AFC(&qword_717E0, &qword_58B68);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_58B00;
    *(v65 + 56) = &type metadata for String;
    v66 = sub_B088();
    *(v65 + 32) = a6;
    *(v65 + 40) = a7;
    *(v65 + 96) = &type metadata for String;
    *(v65 + 104) = v66;
    *(v65 + 64) = v66;
    *(v65 + 72) = a6;
    *(v65 + 80) = a7;
    type metadata accessor for Localization();
    v67 = swift_getObjCClassFromMetadata();
    v68 = objc_opt_self();
    swift_bridgeObjectRetain_n();

    v69 = [v68 bundleForClass:v67];
    v126._countAndFlagsBits = 0x800000000005B910;
    v70._countAndFlagsBits = 0xD00000000000002BLL;
    v70._object = 0x800000000005B910;
    v71.value._countAndFlagsBits = a3;
    v71.value._object = 0;
    v72.super.isa = v69;
    v73._countAndFlagsBits = 0;
    v73._object = 0xE000000000000000;
    countAndFlagsBits = 0xD00000000000002BLL;
LABEL_46:
    sub_55EFC(v70, v71, v72, v73, countAndFlagsBits, v126);

    v49 = sub_5775C();
    v51 = v121;

    goto LABEL_34;
  }

  if (a4)
  {
    v28 = 0x800000000005B8D0;
    sub_2AFC(&qword_717E0, &qword_58B68);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_58B10;
    *(v52 + 56) = &type metadata for String;
    *(v52 + 64) = sub_B088();
    *(v52 + 32) = a3;
    *(v52 + 40) = a4;
    type metadata accessor for Localization();
    v53 = swift_getObjCClassFromMetadata();
    v54 = objc_opt_self();

    v33 = [v54 bundleForClass:v53];
    v126._countAndFlagsBits = 0x800000000005B8D0;
    v34._countAndFlagsBits = 0xD00000000000003BLL;
    v35 = 0xD00000000000003BLL;
    goto LABEL_32;
  }

  v107 = 0x800000000005B890;
  type metadata accessor for Localization();
  v108 = swift_getObjCClassFromMetadata();
  v109 = [objc_opt_self() bundleForClass:v108];
  v126._countAndFlagsBits = 0x800000000005B890;
  v110._countAndFlagsBits = 0xD000000000000034;
  v111 = 0xD000000000000034;
LABEL_49:
  v110._object = v107;
  v140.value._countAndFlagsBits = a3;
  v140.value._object = 0;
  v124.super.isa = v109;
  v145._countAndFlagsBits = 0;
  v145._object = 0xE000000000000000;
  v49 = sub_55EFC(v110, v140, v124, v145, v111, v126);
  v51 = v125;

  if ((v129 & 1) == 0)
  {
    return v49;
  }

LABEL_35:
  v130 = v49;
  v131 = v51;

  if (a7)
  {

    v132._countAndFlagsBits = 32;
    v132._object = 0xE100000000000000;
    sub_577DC(v132);

    v84 = v130;
    v83 = v131;
    sub_2AFC(&qword_717E0, &qword_58B68);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_58B10;
    *(v85 + 56) = &type metadata for String;
    *(v85 + 64) = sub_B088();
    *(v85 + 32) = a6;
    *(v85 + 40) = a7;
    type metadata accessor for Localization();
    v86 = swift_getObjCClassFromMetadata();
    v87 = objc_opt_self();

    v88 = [v87 bundleForClass:v86];
    v133._object = 0xEC0000006567616ELL;
    v127._countAndFlagsBits = 0xEC0000006567616ELL;
    v133._countAndFlagsBits = 0x614D6E6143756F59;
    v138.value._countAndFlagsBits = 0;
    v138.value._object = 0;
    v89.super.isa = v88;
    v143._countAndFlagsBits = 0;
    v143._object = 0xE000000000000000;
    sub_55EFC(v133, v138, v89, v143, 0x614D6E6143756F59, v127);

    v90 = sub_5775C();
    v92 = v91;

    v130 = v84;
    v131 = v83;

    v93._countAndFlagsBits = v90;
    v93._object = v92;
  }

  else
  {
    v134._countAndFlagsBits = 32;
    v134._object = 0xE100000000000000;
    sub_577DC(v134);

    v95 = v130;
    v94 = v131;
    type metadata accessor for Localization();
    v96 = swift_getObjCClassFromMetadata();
    v97 = [objc_opt_self() bundleForClass:v96];
    v135._countAndFlagsBits = 0xD000000000000015;
    v127._countAndFlagsBits = 0x800000000005B7D0;
    v135._object = 0x800000000005B7D0;
    v139.value._countAndFlagsBits = a6;
    v139.value._object = 0;
    v98.super.isa = v97;
    v144._countAndFlagsBits = 0;
    v144._object = 0xE000000000000000;
    v99 = sub_55EFC(v135, v139, v98, v144, 0xD000000000000015, v127);
    v101 = v100;

    v130 = v95;
    v131 = v94;

    v93._countAndFlagsBits = v99;
    v93._object = v101;
  }

  sub_577DC(v93);

  return v130;
}

uint64_t sub_98CC(uint64_t a1, void *a2)
{
  v4 = sub_561CC();
  __chkstk_darwin(v4 - 8);
  v5 = sub_5773C();
  __chkstk_darwin(v5 - 8);
  __chkstk_darwin(v6);
  v7 = sub_5771C();
  __chkstk_darwin(v7 - 8);
  if (a2)
  {
    sub_5770C();
    v11._countAndFlagsBits = 0x206F7420646441;
    v11._object = 0xE700000000000000;
    sub_576FC(v11);
    v12._countAndFlagsBits = a1;
    v12._object = a2;
    sub_576EC(v12);
    v13._countAndFlagsBits = 0x6E6F4320739980E2;
    v13._object = 0xAD00007374636174;
    sub_576FC(v13);
    sub_5772C();
    sub_B038();
    if (!sub_5796C())
    {
      v8 = [objc_opt_self() mainBundle];
    }
  }

  else
  {
    sub_576DC();
    sub_B038();
    if (!sub_5796C())
    {
      v9 = [objc_opt_self() mainBundle];
    }
  }

  sub_561BC();
  return sub_5779C();
}

uint64_t sub_9B44(uint64_t a1)
{
  v2 = sub_5748C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7 == 1)
  {
    (*(v3 + 16))(v6, a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2, v4);
    v8._countAndFlagsBits = sub_5745C();
    v16 = 0x9C80E220646441;
    v17 = 0xA700000000000000;
    if (!v8._object)
    {
      v10 = sub_5747C();
      v11 = sub_34EC();
      v13 = v12;

      v8._countAndFlagsBits = v11;
      v8._object = v13;
    }

    sub_577DC(v8);

    v20._countAndFlagsBits = 10322146;
    v20._object = 0xA300000000000000;
    sub_577DC(v20);
    v9 = v16;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v16 = 543450177;
    v17 = 0xE400000000000000;
    v15[1] = v7;
    v18._countAndFlagsBits = sub_57B7C();
    sub_577DC(v18);

    v19._countAndFlagsBits = 0x746361746E6F4320;
    v19._object = 0xE900000000000073;
    sub_577DC(v19);
    return v16;
  }

  return v9;
}

uint64_t sub_9D34(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v172 = a4;
  v177 = a3;
  v10 = sub_561CC();
  __chkstk_darwin(v10 - 8);
  v188 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_5773C();
  __chkstk_darwin(v12 - 8);
  v187 = &v168 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_5771C();
  __chkstk_darwin(v14 - 8);
  v186 = &v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_5600C();
  v16 = *(v185 - 8);
  __chkstk_darwin(v185);
  v184 = &v168 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MessagesContext(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v168 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_2AFC(&qword_71798, &qword_58B40);
  v194 = *(v198 - 8);
  __chkstk_darwin(v198);
  v179 = (&v168 - v21);
  v203 = sub_5732C();
  v22 = *(v203 - 8);
  __chkstk_darwin(v203);
  v202 = &v168 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2AFC(&qword_717A0, &qword_58B48);
  __chkstk_darwin(v24 - 8);
  v197 = &v168 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v196 = &v168 - v27;
  v28 = sub_5748C();
  v181 = *(v28 - 8);
  __chkstk_darwin(v28);
  v204 = &v168 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v169 = &v168 - v31;
  __chkstk_darwin(v32);
  v34 = &v168 - v33;
  v35 = sub_8130(a2);
  v171 = v36;
  v176 = a6;
  v175 = a5;
  v174 = a2;
  v173 = v20;
  v193 = v16;
  if (!(&_swiftEmptyArrayStorage >> 62))
  {
    v37 = &_swiftEmptySetSingleton;
    goto LABEL_3;
  }

  while (1)
  {
    v165 = v22;
    v166 = v35;
    if (sub_57B1C())
    {
      sub_8310(&_swiftEmptyArrayStorage);
      v37 = v167;
    }

    else
    {
      v37 = &_swiftEmptySetSingleton;
    }

    v35 = v166;
    v22 = v165;
LABEL_3:
    v170 = v35;
    v209 = v37;
    v178 = a1;
    v38 = sub_574AC();
    v39 = *(v38 + 16);
    if (v39)
    {
      v201 = v22;
      v40 = *(v181 + 16);
      v41 = (*(v181 + 80) + 32) & ~*(v181 + 80);
      v205 = v38;
      v42 = v38 + v41;
      v43 = *(v181 + 72);
      v44 = v28;
      v45 = (v181 + 8);
      do
      {
        v40(v34, v42, v44);
        v46 = sub_5747C();
        (*v45)(v34, v44);
        sub_6F34(v210, v46);

        v42 += v43;
        --v39;
      }

      while (v39);

      v37 = v209;
      v28 = v44;
      v22 = v201;
    }

    else
    {
    }

    v35 = sub_85DC(&_swiftEmptyArrayStorage);
    v199 = v35;
    if ((v37 & 0xC000000000000001) != 0)
    {
      sub_579FC();
      sub_5740C();
      sub_B758(&qword_717A8, &type metadata accessor for _CommunicationHandle, &protocol conformance descriptor for NSObject);
      v35 = sub_578FC();
      v37 = v210[0];
      v47 = v210[1];
      v48 = v210[2];
      v49 = v210[3];
      a1 = v210[4];
    }

    else
    {
      v49 = 0;
      v50 = -1 << *(v37 + 32);
      v47 = (v37 + 56);
      v48 = ~v50;
      v51 = -v50;
      v52 = v51 < 64 ? ~(-1 << v51) : -1;
      a1 = v52 & *(v37 + 56);
    }

    v192 = v48;
    v53 = (v48 + 64) >> 6;
    v201 = (v22 + 8);
    v200 = xmmword_58B30;
    v205 = v47;
    v195 = v53;
    while (1)
    {
      v34 = v49;
      v54 = a1;
      if ((v37 & 0x8000000000000000) == 0)
      {
        break;
      }

      while (1)
      {
        v58 = sub_57A2C();
        if (!v58)
        {
          goto LABEL_44;
        }

        v206 = v58;
        sub_5740C();
        swift_dynamicCast();
        v57 = v207;
        v49 = v34;
        v22 = v54;
        if (!v207)
        {
          goto LABEL_44;
        }

LABEL_24:
        v59 = v22;
        a1 = v37;
        v60 = v202;
        sub_572FC();
        sub_2AFC(&qword_717B8, &unk_58EF0);
        inited = swift_initStackObject();
        *(inited + 16) = v200;
        *(inited + 32) = v57;
        v22 = v57;
        sub_8310(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        v62 = sub_5731C();

        (*v201)(v60, v203);
        v63 = v62 >> 62 ? sub_57B1C() : *(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8));
        v37 = a1;
        v47 = v205;
        if (v63)
        {
          break;
        }

        v34 = v49;
        v54 = v59;
        v53 = v195;
        if ((a1 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }
      }

      a1 = v59;
      if ((v62 & 0xC000000000000001) != 0)
      {
        v64 = sub_57AEC();
        v53 = v195;
      }

      else
      {
        v53 = v195;
        if (!*(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          result = sub_57BAC();
          __break(1u);
          return result;
        }

        v64 = *(v62 + 32);
      }

      v190 = v22;
      v65 = sub_573FC();
      v67 = v66;
      v191 = v64;
      v68 = v199;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v207 = v68;
      v22 = v67;
      v70 = sub_6DE4(v65, v67);
      v72 = *(v68 + 16);
      v73 = (v71 & 1) == 0;
      v74 = __OFADD__(v72, v73);
      v75 = v72 + v73;
      if (v74)
      {
        goto LABEL_86;
      }

      v76 = v71;
      if (*(v68 + 24) >= v75)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v86 = v70;
          sub_7674();
          v70 = v86;
        }
      }

      else
      {
        sub_73D0(v75, isUniquelyReferenced_nonNull_native);
        v70 = sub_6DE4(v65, v22);
        if ((v76 & 1) != (v77 & 1))
        {
          goto LABEL_88;
        }
      }

      v78 = v207;
      v199 = v207;
      if (v76)
      {
        v79 = *(v207 + 56);
        v80 = *(v79 + 8 * v70);
        v81 = v191;
        *(v79 + 8 * v70) = v191;

        v47 = v205;
      }

      else
      {
        *(v207 + 8 * (v70 >> 6) + 64) |= 1 << v70;
        v82 = (v78[6] + 16 * v70);
        *v82 = v65;
        v82[1] = v22;
        v83 = v191;
        *(v78[7] + 8 * v70) = v191;
        v84 = v78[2];
        v74 = __OFADD__(v84, 1);
        v85 = v84 + 1;
        if (v74)
        {
          goto LABEL_87;
        }

        v78[2] = v85;

        v47 = v205;
      }
    }

LABEL_16:
    v55 = v34;
    v56 = v54;
    v49 = v34;
    if (v54)
    {
      break;
    }

    while (1)
    {
      v49 = (v55 + 1);
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v49 >= v53)
      {
        goto LABEL_44;
      }

      v56 = *&v47[8 * v49];
      ++v55;
      if (v56)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
  }

LABEL_20:
  v22 = (v56 - 1) & v56;
  v57 = *(*(v37 + 48) + ((v49 << 9) | (8 * __clz(__rbit64(v56)))));
  if (v57)
  {
    goto LABEL_24;
  }

LABEL_44:
  sub_AF70(v37);
  v35 = sub_574AC();
  v87 = v35;
  v88 = 0;
  v89 = *(v35 + 16);
  v180 = v181 + 16;
  v195 = (v194 + 7);
  v194 += 6;
  v189 = (v181 + 32);
  v183 = (v193 + 1);
  v182 = "supports-askto-v2";
  v193 = (v181 + 8);
  v205 = &_swiftEmptyArrayStorage;
  v192 = v28;
  v191 = v35;
  v190 = v89;
  while (1)
  {
    v90 = v198;
    v91 = v197;
    a1 = v196;
    if (v88 == v89)
    {
      v92 = 1;
      v93 = v89;
      v94 = v204;
    }

    else
    {
      if ((v88 & 0x8000000000000000) != 0)
      {
        goto LABEL_79;
      }

      v94 = v204;
      if (v88 >= v87[2])
      {
        goto LABEL_80;
      }

      v93 = v88 + 1;
      v95 = v181;
      v96 = v87 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v88;
      v97 = *(v198 + 48);
      v98 = v179;
      *v179 = v88;
      (*(v95 + 16))(v98 + v97, v96, v28);
      sub_B0DC(v98, v91, &qword_71798, &qword_58B40);
      v92 = 0;
    }

    (*v195)(v91, v92, 1, v90);
    sub_B0DC(v91, a1, &qword_717A0, &qword_58B48);
    if ((*v194)(a1, 1, v90) == 1)
    {
      break;
    }

    v203 = v93;
    v99 = *a1;
    (*v189)(v94, a1 + *(v90 + 48), v28);
    v100 = sub_5747C();
    v101 = sub_573FC();
    v103 = v102;

    v104 = v199;
    if (*(v199 + 16))
    {
      v105 = sub_6DE4(v101, v103);
      v107 = v106;

      if (v107)
      {
        v108 = *(*(v104 + 56) + 8 * v105);
        v109 = v108;
        goto LABEL_56;
      }
    }

    else
    {
    }

    v108 = 0;
LABEL_56:
    v110 = sub_5741C();
    if (v110)
    {
      v111 = v110;
      v202 = [objc_allocWithZone(UIImage) initWithCGImage:v110];

      v112 = 1;
      goto LABEL_58;
    }

    v121 = sub_5745C();
    if (!v122)
    {
      v202 = 0;
      v112 = 2;
LABEL_58:
      LODWORD(v200) = v112;
      v201 = 0;
      if (!v108)
      {
        goto LABEL_64;
      }

      goto LABEL_59;
    }

    v202 = v121;
    LODWORD(v200) = 0;
    v201 = v122;
    if (!v108)
    {
LABEL_64:
      v119 = 0;
      v34 = 0xE000000000000000;
      goto LABEL_65;
    }

LABEL_59:
    v113 = v108;
    v114 = v184;
    sub_25D9C();

    v115 = sub_55FEC();
    v117 = v116;
    (*v183)(v114, v185);
    sub_5770C();
    v211._object = (v182 | 0x8000000000000000);
    v211._countAndFlagsBits = 0x1000000000000017;
    sub_576FC(v211);
    v212._countAndFlagsBits = v115;
    v212._object = v117;
    sub_576EC(v212);

    v213._countAndFlagsBits = 10322146;
    v213._object = 0xA300000000000000;
    sub_576FC(v213);
    sub_5772C();
    sub_B038();
    if (!sub_5796C())
    {
      v118 = [objc_opt_self() mainBundle];
    }

    sub_561BC();
    v119 = sub_5779C();
    v34 = v120;
LABEL_65:
    v123._countAndFlagsBits = sub_5745C();
    if (v123._object)
    {
      v207 = 10256610;
      v208 = 0xA300000000000000;
      sub_577DC(v123);

      v214._countAndFlagsBits = 10322146;
      v214._object = 0xA300000000000000;
      sub_577DC(v214);
      v124 = v207;
      v125 = v208;
    }

    else
    {
      v124 = 0;
      v125 = 0xE000000000000000;
    }

    v126 = sub_5747C();
    v127 = sub_34EC();
    v129 = v128;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v205 = sub_6990(0, *(v205 + 2) + 1, 1, v205);
    }

    v22 = *(v205 + 2);
    v130 = *(v205 + 3);
    if (v22 >= v130 >> 1)
    {
      v205 = sub_6990((v130 > 1), v22 + 1, 1, v205);
    }

    v28 = v192;
    v35 = (*v193)(v204, v192);
    v131 = v205;
    *(v205 + 2) = v22 + 1;
    v132 = &v131[80 * v22];
    *(v132 + 4) = v99;
    *(v132 + 5) = v124;
    *(v132 + 6) = v125;
    *(v132 + 7) = v127;
    *(v132 + 8) = v129;
    *(v132 + 9) = v119;
    v133 = v201;
    v134 = v202;
    *(v132 + 10) = v34;
    *(v132 + 11) = v134;
    *(v132 + 12) = v133;
    v132[104] = v200;
    v87 = v191;
    v89 = v190;
    v88 = v203;
  }

  v135 = sub_575FC();
  v137 = v136;
  v138 = v178;
  v139 = sub_574AC();
  if (*(v139 + 16) == 1)
  {
    v140 = v181;
    v141 = v169;
    (*(v181 + 16))(v169, v139 + ((*(v140 + 80) + 32) & ~*(v140 + 80)), v28);

    v142 = sub_5745C();
    v144 = v143;
    v145 = sub_5747C();
    v146 = v170;
    v147 = v171;
    v148 = sub_86E0(v142, v144, v135, v137, v145, v170, v171, v172 & 1);
    v150 = v149;

    v151 = v141;
    v138 = v178;
    (*(v140 + 8))(v151, v28);
  }

  else
  {
    v146 = v170;
    v147 = v171;
    v148 = sub_54E0(v135, v137, v139, v170, v171, v172 & 1);
    v150 = v152;
  }

  v153 = sub_98CC(v146, v147);
  v155 = v154;

  v156 = sub_574AC();
  v157 = sub_9B44(v156);
  v159 = v158;

  v160 = v174;
  v161 = v173;
  sub_AF78(v174, v173);
  type metadata accessor for ResponseTransmitter(0);
  swift_allocObject();
  v162 = sub_14F68(v161, v177);

  sub_AFDC(v160);

  type metadata accessor for CommLimitsReviewSheetViewModel();
  result = swift_allocObject();
  *(result + 104) = 0;
  *(result + 16) = v153;
  *(result + 24) = v155;
  *(result + 32) = v148;
  *(result + 40) = v150;
  *(result + 48) = v157;
  *(result + 56) = v159;
  *(result + 64) = v205;
  *(result + 72) = v162;
  v164 = v175;
  *(result + 80) = 0;
  *(result + 88) = v164;
  *(result + 96) = v176;
  return result;
}

uint64_t sub_AF78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_AFDC(uint64_t a1)
{
  v2 = type metadata accessor for MessagesContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_B038()
{
  result = qword_717B0;
  if (!qword_717B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_717B0);
  }

  return result;
}

unint64_t sub_B088()
{
  result = qword_717E8;
  if (!qword_717E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_717E8);
  }

  return result;
}

uint64_t sub_B0DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2AFC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_B144(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_B17C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_B1E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2AFC(&qword_71860, &unk_58C00);
    v3 = sub_57B4C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2E28(v4, &v13, qword_71868, &qword_59330);
      v5 = v13;
      v6 = v14;
      result = sub_6DE4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_BD08(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_B310(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2AFC(&qword_71840, &qword_58BE0);
    v3 = sub_57B4C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2E28(v4, &v11, &qword_71848, &qword_58BE8);
      v5 = v11;
      result = sub_6E5C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_BD08(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_B438(uint64_t a1)
{
  v2 = sub_574CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2AFC(&qword_71808, &qword_58B80);
    v9 = sub_57A9C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_B758(&qword_71810, &type metadata accessor for ATCommunicationMetadata.Action, &protocol conformance descriptor for ATCommunicationMetadata.Action);
      v16 = sub_5769C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_B758(&qword_71818, &type metadata accessor for ATCommunicationMetadata.Action, &protocol conformance descriptor for ATCommunicationMetadata.Action);
          v23 = sub_576CC();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_B758(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_B850()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B890()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_B8D8()
{
  result = qword_71830;
  if (!qword_71830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71830);
  }

  return result;
}

uint64_t sub_B920()
{
  v1 = (type metadata accessor for MessagesContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[9];
  v6 = sub_561AC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_BA54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_BAB8(uint64_t a1)
{
  v4 = *(type metadata accessor for MessagesContext(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_BBC4;

  return sub_3D9C(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_BBC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_BCC0(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_BCD8(result, a2 & 1);
  }

  return result;
}

id sub_BCD8(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_BCE4(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_BCFC(result, a2 & 1);
  }
}

void sub_BCFC(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

_OWORD *sub_BD08(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_BD6C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_BDC4()
{
  result = swift_allocObject();
  *(result + 16) = &_swiftEmptyArrayStorage;
  *(result + 24) = 0;
  return result;
}

void sub_BDF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v65 = a1;
  v5 = sub_56C4C();
  __chkstk_darwin(v5 - 8);
  v59 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(a2 + 16);
  __chkstk_darwin(v7);
  v58 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2AFC(qword_71950, qword_58E10);
  __chkstk_darwin(v9 - 8);
  v11 = &v56 - v10;
  v12 = sub_5606C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v56 - v18;
  v60 = *(v13 + 16);
  v61 = v13 + 16;
  v60(&v56 - v18, v3, v12, v17);
  v62 = v19;
  sub_577AC();
  v20 = v3;
  sub_D770(v3 + *(a2 + 36), v11);
  v21 = *(v13 + 48);
  v63 = v12;
  v22 = v21(v11, 1, v12);
  v23 = 0;
  if (v22 != 1)
  {
    v24 = v62;
    v25 = v11;
    v26 = v63;
    (*(v13 + 32))(v62, v25, v63);
    (v60)(v15, v24, v26);
    sub_577AC();
    v23 = v27;
    (*(v13 + 8))(v24, v26);
  }

  v28 = *(v20 + *(a2 + 40));
  v29 = sub_5774C();

  if (v23)
  {
    v30 = sub_5774C();
  }

  else
  {
    v30 = 0;
  }

  v31 = [objc_allocWithZone(OBWelcomeController) initWithTitle:v29 detailText:v30 icon:v28];

  v32 = [v31 headerView];
  [v32 setAllowFullWidthIcon:1];

  sub_56A9C();
  (*(v20 + *(a2 + 48)))();
  v33 = sub_56A7C();
  sub_56C2C();
  sub_56A5C();
  v34 = v31;
  v35 = v33;
  [v34 addChildViewController:v35];
  v36 = [v34 contentView];
  v37 = [v35 view];
  if (!v37)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v38 = v37;
  [v36 addSubview:v37];

  v39 = [v35 view];
  if (v39)
  {
    v40 = [v34 contentView];
    sub_C58C(v40);

    v57 = v35;
    [v35 didMoveToParentViewController:v34];

    v41 = [v34 buttonTray];
    swift_getWitnessTable();
    v59 = sub_56C7C();
    sub_56C6C();
    v42 = *(v66 + 24);
    *(v66 + 24) = v41;
    v64 = v41;

    [v34 setShouldMoveHeaderViewTitleToNavigationTitleWhenScrolledOffScreen:0];
    v43 = *(v20 + *(a2 + 44));
    v58 = v34;
    if (v43 >> 62)
    {
      v44 = sub_57B1C();
      if (v44)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v44 = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8));
      if (v44)
      {
LABEL_10:
        if (v44 >= 1)
        {
          v45 = 0;
          do
          {
            if ((v43 & 0xC000000000000001) != 0)
            {
              v46 = sub_57AEC();
            }

            else
            {
              v46 = *(v43 + 8 * v45 + 32);
            }

            v47 = v46;
            if (v46[OBJC_IVAR____TtC13AskToMessages6Choice_buttonType])
            {
              v48 = &selRef_linkButton;
            }

            else
            {
              v48 = &selRef_boldButton;
            }

            v49 = [objc_opt_self() *v48];
            v50 = v49;
            if (*&v47[OBJC_IVAR____TtC13AskToMessages6Choice_tintColor])
            {
              [v49 setTintColor:?];
            }

            v51 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v52 = &v47[OBJC_IVAR____TtC13AskToMessages6Choice_setEnabled];
            *v52 = sub_D818;
            v52[1] = v51;
            v53 = v50;

            [v53 addTarget:v47 action:"tappedWithSender:" forControlEvents:64];
            (v60)(v62, &v47[OBJC_IVAR____TtC13AskToMessages6Choice_title], v63);
            sub_577AC();
            v54 = sub_5774C();

            [v53 setTitle:v54 forState:0];

            [v64 addButton:v53];
            sub_56C6C();
            v55 = v67;
            swift_beginAccess();
            sub_5782C();
            if (*(*(v55 + 16) + 16) >= *(*(v55 + 16) + 24) >> 1)
            {
              sub_5786C();
            }

            ++v45;
            sub_5787C();
            swift_endAccess();
          }

          while (v44 != v45);
          goto LABEL_25;
        }

        __break(1u);
        goto LABEL_27;
      }
    }

LABEL_25:

    return;
  }

LABEL_28:
  __break(1u);
}

void sub_C58C(void *a1)
{
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  sub_2AFC(&qword_717B8, &unk_58EF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_58C10;
  v5 = [v1 topAnchor];
  v6 = [a1 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v1 leftAnchor];
  v9 = [a1 leftAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [v1 rightAnchor];
  v12 = [a1 rightAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v4 + 48) = v13;
  v14 = [v1 bottomAnchor];
  v15 = [a1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v4 + 56) = v16;
  sub_D820(0, &qword_71A00, NSLayoutConstraint_ptr);
  isa = sub_5783C().super.isa;

  [v3 activateConstraints:isa];
}

void sub_C7F8(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = a1 & 1;
    v5 = Strong;
    [Strong setEnabled:v4];
  }
}

uint64_t sub_C86C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  result = sub_D734(*(a1 + 16), *(a1 + 24), a3, a4);
  *a2 = result;
  return result;
}

uint64_t sub_C8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_C954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_C9D0(uint64_t a1)
{
  swift_getWitnessTable();
  sub_56C0C();
  __break(1u);
}

uint64_t sub_CA10(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1802398060;
  }

  else
  {
    v2 = 1684828002;
  }

  if (*a2)
  {
    v3 = 1802398060;
  }

  else
  {
    v3 = 1684828002;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_57B8C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_CA88()
{
  sub_57C2C();
  sub_577CC();

  return sub_57C4C();
}

uint64_t sub_CAF0(uint64_t a1)
{
  sub_577CC();
}

Swift::Int sub_CB3C(uint64_t a1)
{
  sub_57C2C();
  sub_577CC();

  return sub_57C4C();
}

uint64_t sub_CBA0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_6E3B0;
  v8._object = v3;
  v5 = sub_57B6C(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_CC00(uint64_t *a1@<X8>)
{
  v2 = 1684828002;
  if (*v1)
  {
    v2 = 1802398060;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

id sub_CD44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Choice(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for Choice(uint64_t a1)
{
  result = qword_71928;
  if (!qword_71928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_CE9C(uint64_t a1)
{
  result = sub_5606C();
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

uint64_t getEnumTagSinglePayload for Choice.ButtonType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Choice.ButtonType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_D0D8()
{
  result = qword_71938;
  if (!qword_71938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71938);
  }

  return result;
}

uint64_t sub_D138@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC13AskToMessages6Choice_id);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

unint64_t sub_D154()
{
  result = qword_71940;
  if (!qword_71940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71940);
  }

  return result;
}

uint64_t sub_D1A8(uint64_t a1)
{
  v2 = sub_2AFC(&qword_71948, &qword_58E08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D210(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_D258(uint64_t a1)
{
  sub_5606C();
  if (v1 <= 0x3F)
  {
    sub_D658(319, &qword_719D8, &type metadata accessor for LocalizedStringResource, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_D5F0(319);
      if (v3 <= 0x3F)
      {
        sub_D658(319, &qword_719F0, type metadata accessor for Choice, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_D6BC();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_D398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5606C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2AFC(qword_71950, qword_58E10);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 44));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_D4C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_5606C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2AFC(qword_71950, qword_58E10);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 44)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

void sub_D5F0(uint64_t a1)
{
  if (!qword_719E0)
  {
    sub_D820(255, &qword_719E8, UIImage_ptr);
    v1 = sub_579AC();
    if (!v2)
    {
      atomic_store(v1, &qword_719E0);
    }
  }
}

void sub_D658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_D6BC()
{
  result = qword_719F8;
  if (!qword_719F8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_719F8);
  }

  return result;
}

uint64_t sub_D734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WelcomeController.Coordinator(0, a1, a2, a4);
  result = swift_allocObject();
  *(result + 16) = &_swiftEmptyArrayStorage;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_D770(uint64_t a1, uint64_t a2)
{
  v4 = sub_2AFC(qword_71950, qword_58E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D7E0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D820(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_D868(uint64_t a1)
{
  v2 = type metadata accessor for MessagesContext(0);
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PayloadViewModel(0);
  sub_E9D8(a1 + *(v5 + 36), v4, type metadata accessor for MessagesContext);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_EA90(v4, type metadata accessor for MessagesContext);
  if (Strong)
  {
    [Strong dismiss];
  }
}

uint64_t sub_D94C(uint64_t a1, unint64_t a2)
{
  v65 = a2;
  v3 = sub_2AFC(&qword_71A08, "0Z");
  __chkstk_darwin(v3 - 8);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v64 = &v58 - v7;
  v8 = type metadata accessor for MessagesContext(0);
  __chkstk_darwin(v8 - 8);
  v63 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2AFC(&qword_71A10, &qword_5A5A0);
  __chkstk_darwin(v10 - 8);
  v12 = (&v58 - v11);
  v61 = type metadata accessor for PayloadViewModel(0);
  v59 = *(v61 - 8);
  v13 = *(v59 + 64);
  __chkstk_darwin(v61);
  v60 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v62 = &v58 - v15;
  __chkstk_darwin(v16);
  v18 = &v58 - v17;
  v19 = sub_56C4C();
  __chkstk_darwin(v19);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ContentModel(0);
  __chkstk_darwin(v22);
  v24 = (&v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E9D8(a1, v24, type metadata accessor for ContentModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v58 = v21;
    sub_E5D4(v24, v18);
    if (v65 >= 2)
    {
      if (v65 != 2)
      {
        if (qword_715D0 != -1)
        {
          swift_once();
        }

        v47 = sub_562FC();
        sub_B144(v47, qword_757A0);
        v48 = sub_562DC();
        v49 = sub_5793C();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_0, v48, v49, "Unsupported presentation style", v50, 2u);
        }

        sub_E638();
        v51 = swift_allocError();
        *v52 = 2;
        v66 = v51;
        v53 = objc_allocWithZone(sub_2AFC(&qword_71A20, &qword_58F30));
        swift_errorRetain();
        v29 = sub_56A8C();
        sub_2AFC(&qword_71A28, &qword_58F38);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_58B00;
        sub_56C3C();
        sub_56C2C();
        v66 = v54;
        sub_EA48(&qword_71A30, &type metadata accessor for UIHostingControllerSizingOptions, &protocol conformance descriptor for UIHostingControllerSizingOptions);
        sub_2AFC(&qword_71A38, &qword_58F40);
        sub_E68C();
        sub_579DC();
        sub_56A5C();
        sub_56A6C();

        v46 = v18;
        goto LABEL_18;
      }

      v31 = v64;
      sub_22820();
      sub_E6F0(v31, v5);
      v32 = objc_allocWithZone(sub_2AFC(&qword_71A48, &qword_58F48));
      v29 = sub_56A8C();
      sub_2AFC(&qword_71A28, &qword_58F38);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_58B00;
      sub_56C3C();
      sub_56C2C();
      v66 = v33;
      sub_EA48(&qword_71A30, &type metadata accessor for UIHostingControllerSizingOptions, &protocol conformance descriptor for UIHostingControllerSizingOptions);
      sub_2AFC(&qword_71A38, &qword_58F40);
      sub_E68C();
      sub_579DC();
      sub_56A5C();
      sub_56A6C();
      sub_2E90(v31, &qword_71A08, "0Z");
    }

    else
    {
      v25 = sub_5763C();
      sub_5630C();

      v26 = sub_5636C();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v12, 1, v26) == 1)
      {
        sub_2E90(v12, &qword_71A10, &qword_5A5A0);
      }

      else
      {
        if ((*(v27 + 88))(v12, v26) == enum case for ATQuestion.TopicMetadata.communication(_:))
        {
          (*(v27 + 96))(v12, v26);
          v64 = *v12;
          v34 = v62;
          sub_E9D8(v18, v62, type metadata accessor for PayloadViewModel);
          v35 = v60;
          sub_E9D8(v18, v60, type metadata accessor for PayloadViewModel);
          v36 = (*(v59 + 80) + 16) & ~*(v59 + 80);
          v59 = swift_allocObject();
          sub_E5D4(v35, v59 + v36);
          v37 = v61;
          v38 = v63;
          sub_E9D8(v34 + *(v61 + 36), v63, type metadata accessor for MessagesContext);
          v39 = *(v34 + 24);
          v40 = *(v34 + *(v37 + 40));
          swift_getKeyPath();
          v66 = v40;
          sub_EA48(&qword_71A58, type metadata accessor for ManageContactsSetting, &unk_5A4C8);
          v65 = v18;
          v41 = v64;
          v64 = v41;
          v42 = v39;
          sub_561FC();

          v43 = sub_9D34(v41, v38, v42, *(v40 + 24), sub_E978, v59);
          sub_EA90(v34, type metadata accessor for PayloadViewModel);
          v66 = v43;
          v67 = 0;
          v44 = objc_allocWithZone(sub_2AFC(&qword_71A60, &unk_58F80));

          v29 = sub_56A8C();
          sub_2AFC(&qword_71A28, &qword_58F38);
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_58B00;
          sub_56C3C();
          sub_56C2C();
          v66 = v45;
          sub_EA48(&qword_71A30, &type metadata accessor for UIHostingControllerSizingOptions, &protocol conformance descriptor for UIHostingControllerSizingOptions);
          sub_2AFC(&qword_71A38, &qword_58F40);
          sub_E68C();
          sub_579DC();
          sub_56A5C();
          sub_56A6C();

          v46 = v65;
LABEL_18:
          sub_EA90(v46, type metadata accessor for PayloadViewModel);
          return v29;
        }

        (*(v27 + 8))(v12, v26);
      }

      v55 = objc_allocWithZone(sub_2AFC(&qword_71A50, &qword_58F50));
      v29 = sub_56A8C();
      sub_2AFC(&qword_71A28, &qword_58F38);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_58B00;
      sub_56C3C();
      sub_56C2C();
      v66 = v56;
      sub_EA48(&qword_71A30, &type metadata accessor for UIHostingControllerSizingOptions, &protocol conformance descriptor for UIHostingControllerSizingOptions);
      sub_2AFC(&qword_71A38, &qword_58F40);
      sub_E68C();
      sub_579DC();
      sub_56A5C();
      sub_56A6C();
    }

    v46 = v18;
    goto LABEL_18;
  }

  v66 = *v24;
  v28 = objc_allocWithZone(sub_2AFC(&qword_71A20, &qword_58F30));
  swift_errorRetain();
  v29 = sub_56A8C();
  sub_2AFC(&qword_71A28, &qword_58F38);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_58B00;
  sub_56C3C();
  sub_56C2C();
  v66 = v30;
  sub_EA48(&qword_71A30, &type metadata accessor for UIHostingControllerSizingOptions, &protocol conformance descriptor for UIHostingControllerSizingOptions);
  sub_2AFC(&qword_71A38, &qword_58F40);
  sub_E68C();
  sub_579DC();
  sub_56A5C();
  sub_56A6C();

  return v29;
}

uint64_t sub_E5D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PayloadViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_E638()
{
  result = qword_71A18;
  if (!qword_71A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71A18);
  }

  return result;
}

unint64_t sub_E68C()
{
  result = qword_71A40;
  if (!qword_71A40)
  {
    sub_2C70(&qword_71A38, &qword_58F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71A40);
  }

  return result;
}

uint64_t sub_E6F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2AFC(&qword_71A08, "0Z");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E760()
{
  v1 = type metadata accessor for PayloadViewModel(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  v5 = v1[7];
  v6 = sub_5756C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  v9 = v1[8];
  if (!v8(v4 + v9, 1, v6))
  {
    (*(v7 + 8))(v4 + v9, v6);
  }

  v10 = v4 + v1[9];

  v11 = *(type metadata accessor for MessagesContext(0) + 28);
  v12 = sub_561AC();
  (*(*(v12 - 8) + 8))(v10 + v11, v12);

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, v3 + v14, v2 | 7);
}

void sub_E978()
{
  v1 = *(type metadata accessor for PayloadViewModel(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_D868(v2);
}

uint64_t sub_E9D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_EA48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_EA90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_EB20(void (*a1)(char *, char *, void))
{
  v98 = a1;
  v97 = sub_560CC();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v90 = &v85 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v93 = &v85 - v3;
  v4 = sub_5613C();
  v91 = *(v4 - 8);
  v92 = v4;
  __chkstk_darwin(v4);
  v88 = (&v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v89 = &v85 - v7;
  v8 = sub_2AFC(&qword_71B18, &qword_59008);
  __chkstk_darwin(v8 - 8);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v85 - v12;
  __chkstk_darwin(v14);
  v16 = &v85 - v15;
  v17 = sub_5759C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5758C();
  sub_5765C();
  sub_1308C(&qword_71B20, &type metadata accessor for ATPayload, &protocol conformance descriptor for ATPayload);
  sub_1308C(&qword_71B28, &type metadata accessor for ATPayload, &protocol conformance descriptor for ATPayload);
  v21 = v96;
  sub_5757C();
  if (v21)
  {
    (*(v18 + 8))(v20, v17);
    if (qword_715B0 != -1)
    {
      swift_once();
    }

    v22 = sub_562FC();
    v23 = sub_B144(v22, qword_75740);
    v24 = v95;
    v25 = *(v95 + 16);
    v26 = v93;
    v27 = v97;
    v28 = v98;
    v89 = (v95 + 16);
    v92 = v25;
    v25(v93, v98, v97);
    swift_errorRetain();
    v91 = v23;
    v29 = sub_562DC();
    v30 = sub_5794C();

    v31 = os_log_type_enabled(v29, v30);
    v96 = v21;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = v27;
      v34 = v26;
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v99 = v88;
      *v32 = 136315394;
      v35 = sub_5608C();
      v37 = v36;
      v93 = *(v24 + 8);
      (v93)(v34, v33);
      v38 = sub_293C0(v35, v37, &v99);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2112;
      swift_errorRetain();
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v39;
      v40 = v87;
      *v87 = v39;
      _os_log_impl(&dword_0, v29, v30, "Failed to parse an ATPayload from the MSMessage. Trying to parse MessageDetails instead. url: %s %@", v32, 0x16u);
      sub_2E90(v40, &qword_71828, &qword_598B0);

      sub_13040(v88);
      v28 = v98;
    }

    else
    {

      v93 = *(v24 + 8);
      (v93)(v26, v27);
    }

    v47 = sub_565CC();
    v48 = *(v47 - 8);
    __chkstk_darwin(v47);
    v50 = &v85 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = sub_2AFC(&qword_71B30, &qword_59010);
    __chkstk_darwin(v51 - 8);
    v53 = &v85 - v52;
    sub_FE6C(v28, &v85 - v52);
    if ((*(v48 + 48))(v53, 1, v47) == 1)
    {
      sub_2E90(v53, &qword_71B30, &qword_59010);
      v54 = v90;
      v42 = v97;
      v92(v90, v28, v97);
      v55 = sub_562DC();
      v56 = sub_5792C();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v99 = v58;
        *v57 = 136315138;
        v59 = sub_5608C();
        v61 = v60;
        (v93)(v54, v97);
        v62 = sub_293C0(v59, v61, &v99);

        *(v57 + 4) = v62;
        _os_log_impl(&dword_0, v55, v56, "Failed to parse an ATPayload or MessageDetails from the MSMessage. url: %s", v57, 0xCu);
        sub_13040(v58);

        v42 = v97;
      }

      else
      {

        (v93)(v54, v42);
      }

      type metadata accessor for MessageParser.Error(0);
      sub_1308C(&qword_71B38, type metadata accessor for MessageParser.Error, &unk_59078);
      swift_allocError();
      v92(v66, v28, v42);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      (*(v48 + 32))(v50, v53, v47);
      v63 = sub_562DC();
      v64 = sub_5794C();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_0, v63, v64, "Successfully parsed MessageDetails from MSMessage", v65, 2u);
      }

      v42 = sub_11224(v50);
      (*(v48 + 8))(v50, v47);
    }
  }

  else
  {
    v41 = v13;
    v93 = v20;
    v90 = v10;
    v95 = v18;
    v97 = v17;
    v42 = v99;
    v43 = sub_5763C();

    sub_5639C();
    v44 = v92;
    v45 = v91;
    v46 = *(v91 + 48);
    if (v46(v16, 1, v92) == 1)
    {
      v87 = v42;
      sub_2E90(v16, &qword_71B18, &qword_59008);
      sub_F84C(v41);
      if (v46(v41, 1, v44) == 1)
      {
        (*(v95 + 8))(v93, v97);
        sub_2E90(v41, &qword_71B18, &qword_59008);
        return v87;
      }

      else
      {
        v67 = v45;
        v68 = *(v45 + 32);
        v69 = v89;
        v68(v89, v41, v44);
        if (qword_715B0 != -1)
        {
          swift_once();
        }

        v70 = sub_562FC();
        sub_B144(v70, qword_75740);
        v71 = v88;
        v98 = *(v67 + 16);
        v98(v88, v69, v44);
        v72 = v67;
        v73 = sub_562DC();
        v74 = sub_5794C();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v99 = v86;
          *v75 = 136315138;
          sub_1308C(&qword_71B40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v76 = sub_57B7C();
          v96 = 0;
          v78 = v77;
          v94 = *(v72 + 8);
          v94(v71, v44);
          v79 = sub_293C0(v76, v78, &v99);

          *(v75 + 4) = v79;
          _os_log_impl(&dword_0, v73, v74, "Using legacy payload expiration date: %s", v75, 0xCu);
          sub_13040(v86);
        }

        else
        {

          v94 = *(v72 + 8);
          v94(v71, v44);
        }

        v80 = v87;
        v81 = sub_5763C();
        v82 = v89;
        v83 = v90;
        v98(v90, v89, v44);
        (*(v72 + 56))(v83, 0, 1, v44);
        sub_563AC();

        v94(v82, v44);
        v42 = v80;
        (*(v95 + 8))(v93, v97);
      }
    }

    else
    {
      (*(v95 + 8))(v93, v97);
      sub_2E90(v16, &qword_71B18, &qword_59008);
    }
  }

  return v42;
}

uint64_t sub_F84C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_2AFC(&qword_71B18, &qword_59008);
  __chkstk_darwin(v3 - 8);
  v5 = &v44 - v4;
  v51 = sub_55DFC();
  v6 = *(v51 - 8);
  __chkstk_darwin(v51);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2AFC(&qword_71B08, &qword_58FF8);
  __chkstk_darwin(v9 - 8);
  v50 = &v44 - v10;
  v11 = sub_2AFC(&qword_71B10, &qword_59000);
  __chkstk_darwin(v11 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  v17 = sub_5613C();
  v18 = *(v17 - 8);
  v48 = *(v18 + 56);
  v49 = v17;
  v47 = v18 + 56;
  v48(a2, 1, 1);
  sub_55E4C();
  sub_2E28(v16, v13, &qword_71B10, &qword_59000);
  v19 = sub_55E9C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v13, 1, v19) == 1)
  {
    v21 = &qword_71B10;
    v22 = &qword_59000;
    v23 = v13;
LABEL_17:
    sub_2E90(v23, v21, v22);
    goto LABEL_18;
  }

  v44 = v5;
  v24 = sub_55E2C();
  (*(v20 + 8))(v13, v19);
  if (!v24)
  {
    goto LABEL_18;
  }

  v45 = a2;
  v46 = v16;
  v16 = *(v24 + 16);
  v25 = v51;
  if (v16)
  {
    v26 = 0;
    while (v26 < *(v24 + 16))
    {
      (*(v6 + 16))(v8, v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v26, v25);
      if (sub_55DDC() == 0x73657269707865 && v27 == 0xE700000000000000)
      {

LABEL_14:

        v31 = v50;
        (*(v6 + 32))(v50, v8, v25);
        v29 = 0;
        v30 = v45;
        v16 = v46;
        goto LABEL_15;
      }

      v28 = sub_57B8C();

      if (v28)
      {
        v25 = v51;
        goto LABEL_14;
      }

      ++v26;
      v25 = v51;
      (*(v6 + 8))(v8, v51);
      if (v16 == v26)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_11:

  v29 = 1;
  v30 = v45;
  v16 = v46;
  v31 = v50;
LABEL_15:
  (*(v6 + 56))(v31, v29, 1, v25);
  if ((*(v6 + 48))(v31, 1, v25) == 1)
  {
    v21 = &qword_71B08;
    v22 = &qword_58FF8;
    v23 = v31;
    goto LABEL_17;
  }

  v37 = sub_55DEC();
  v38 = v25;
  v39 = v37;
  v41 = v40;
  (*(v6 + 8))(v31, v38);
  if (v41)
  {
    v52 = 0;
    v42 = sub_1112C(v39, v41, &v52);

    if (v42)
    {
      v43 = v44;
      sub_5610C();
      sub_2E90(v16, &qword_71B10, &qword_59000);
      sub_2E90(v30, &qword_71B18, &qword_59008);
      (v48)(v43, 0, 1, v49);
      return sub_B0DC(v43, v30, &qword_71B18, &qword_59008);
    }
  }

LABEL_18:
  if (qword_715A8 != -1)
  {
LABEL_26:
    swift_once();
  }

  v32 = sub_562FC();
  sub_B144(v32, qword_75728);
  v33 = sub_562DC();
  v34 = sub_5792C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v33, v34, "Failed to get expiration date from URL", v35, 2u);
  }

  return sub_2E90(v16, &qword_71B10, &qword_59000);
}

uint64_t sub_FE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_560CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2AFC(&qword_71B10, &qword_59000);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_55E9C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_55E4C();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2E90(v10, &qword_71B10, &qword_59000);
    if (qword_715B0 != -1)
    {
      swift_once();
    }

    v15 = sub_562FC();
    sub_B144(v15, qword_75740);
    (*(v5 + 16))(v7, a1, v4);
    v16 = sub_562DC();
    v17 = sub_5792C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = a2;
      v20 = swift_slowAlloc();
      v35 = v20;
      *v18 = 136315138;
      v21 = sub_5608C();
      v23 = v22;
      (*(v5 + 8))(v7, v4);
      v24 = sub_293C0(v21, v23, &v35);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_0, v16, v17, "Couldn't parse MessageDetails because the URLComponents derived from %s were nil.", v18, 0xCu);
      sub_13040(v20);
      a2 = v19;
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    v31 = sub_565CC();
    return (*(*(v31 - 8) + 56))(a2, 1, 1, v31);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v25 = sub_2AFC(&qword_71B30, &qword_59010);
    __chkstk_darwin(v25 - 8);
    v27 = &v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    __chkstk_darwin(v28);
    v30 = &v34 - v29;
    sub_5656C();
    (*(v12 + 8))(v14, v11);
    v32 = sub_565CC();
    (*(*(v32 - 8) + 56))(v30, 0, 1, v32);
    sub_B0DC(v30, v27, &qword_71B30, &qword_59010);
    return sub_B0DC(v27, a2, &qword_71B30, &qword_59010);
  }
}

uint64_t sub_104E4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v71 = a3;
  v73 = a2;
  v74 = a1;
  v5 = sub_5756C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v72 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = &v69 - v9;
  __chkstk_darwin(v10);
  v70 = &v69 - v11;
  __chkstk_darwin(v12);
  v14 = &v69 - v13;
  __chkstk_darwin(v15);
  v17 = &v69 - v16;
  v18 = sub_2AFC(&qword_71A10, &qword_5A5A0);
  __chkstk_darwin(v18 - 8);
  v20 = (&v69 - v19);
  v21 = sub_2AFC(&qword_71B00, &unk_593C0);
  __chkstk_darwin(v21 - 8);
  v78 = &v69 - v22;
  v23 = sub_572EC();
  v75 = *(v23 - 8);
  v76 = v23;
  __chkstk_darwin(v23);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v69 - v27;
  v29 = objc_opt_self();
  v30 = [v29 currentTraitCollection];
  [v30 displayScale];

  sub_572CC();
  v77 = a4;
  v31 = sub_5763C();
  sub_5630C();

  v32 = sub_5636C();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v20, 1, v32) != 1)
  {
    if ((*(v33 + 88))(v20, v32) != enum case for ATQuestion.TopicMetadata.communication(_:))
    {
      (*(v33 + 8))(v20, v32);
      goto LABEL_8;
    }

    (*(v33 + 96))(v20, v32);
    v72 = *v20;
    v34 = *(v6 + 56);
    v34(v78, 1, 1, v5);
    v35 = sub_5763C();
    v36 = sub_5643C();

    v37 = sub_5640C();
    v39 = v38;

    if (v37 == 0xD00000000000002DLL && 0x800000000005BFB0 == v39)
    {

      v40 = v78;
    }

    else
    {
      v59 = sub_57B8C();

      v40 = v78;
      if ((v59 & 1) == 0)
      {
LABEL_25:
        sub_5729C();
LABEL_27:
        v64 = sub_5755C();

        (*(v75 + 8))(v28, v76);
        if (v64)
        {
          (*(v6 + 8))(v17, v5);
          v65 = v73;
          v66 = 1;
        }

        else
        {
          v67 = v73;
          (*(v6 + 32))(v73, v17, v5);
          v65 = v67;
          v66 = 0;
        }

        v34(v65, v66, 1, v5);
        return sub_B0DC(v40, v74, &qword_71B00, &unk_593C0);
      }
    }

    v60 = sub_5762C();
    if (v61)
    {
      if (v60 == 0xD000000000000013 && v61 == 0x800000000005BFE0)
      {

        goto LABEL_25;
      }

      v63 = sub_57B8C();

      if (v63)
      {
        goto LABEL_25;
      }
    }

    sub_5728C();
    goto LABEL_27;
  }

  sub_2E90(v20, &qword_71A10, &qword_5A5A0);
LABEL_8:
  sub_5726C();
  v41 = sub_5755C();
  v40 = v78;
  if (v41)
  {
    v42 = sub_125BC(v71);
    if (v43 >> 60 == 15)
    {
LABEL_12:
      sub_5728C();
      (*(v6 + 8))(v14, v5);
      (*(v75 + 8))(v28, v76);
      v51 = *(v6 + 56);
      v51(v40, 0, 1, v5);
      v51(v73, 1, 1, v5);
      return sub_B0DC(v40, v74, &qword_71B00, &unk_593C0);
    }

    v44 = v42;
    v45 = v29;
    v46 = v43;
    v47 = [v45 currentTraitCollection];
    [v47 displayScale];

    sub_572CC();
    v48 = v69;
    sub_572BC();
    sub_12F8C(v44, v46);
    (*(v75 + 8))(v25, v76);
    v49 = *(v6 + 32);
    v50 = v70;
    v49(v70, v48, v5);
    if (sub_5755C())
    {
      (*(v6 + 8))(v50, v5);
      v40 = v78;
      goto LABEL_12;
    }

    v62 = v78;
    v49(v78, v50, v5);
    v40 = v62;
  }

  else
  {
    (*(v6 + 16))(v78, v14, v5);
  }

  v52 = v72;
  v53 = *(v6 + 56);
  v53(v40, 0, 1, v5);
  sub_5728C();
  v54 = sub_5755C();
  v55 = *(v6 + 8);
  v55(v14, v5);
  (*(v75 + 8))(v28, v76);
  if (v54)
  {
    v55(v52, v5);
    v56 = v73;
    v57 = 1;
  }

  else
  {
    v58 = v73;
    (*(v6 + 32))(v73, v52, v5);
    v56 = v58;
    v57 = 0;
  }

  v53(v56, v57, 1, v5);
  v40 = v78;
  return sub_B0DC(v40, v74, &qword_71B00, &unk_593C0);
}

uint64_t sub_10D94(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_57B1C();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v1 >> 62))
  {
    v4 = *(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8));
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_57B1C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10E84(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10FAC(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10E84(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_57B1C();
LABEL_9:
  result = sub_57AFC();
  *v2 = result;
  return result;
}

void (*sub_10F24(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_57AEC();
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
    return sub_10FA4;
  }

  __break(1u);
  return result;
}

uint64_t sub_10FAC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_57B1C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_57B1C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_131A0();
          for (i = 0; i != v6; ++i)
          {
            sub_2AFC(&qword_71B60, &qword_59020);
            v9 = sub_10F24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_564FC();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1112C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *(&stru_20.cmd + (a2 & 0xFFFFFFFFFFFFFFFLL));
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_57ABC();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

char *sub_11224(char *a1)
{
  v153 = a1;
  v1 = sub_2AFC(&qword_71B48, &qword_5A780);
  __chkstk_darwin(v1 - 8);
  v3 = &v135 - v2;
  v4 = sub_561AC();
  v150 = *(v4 - 8);
  v151 = v4;
  __chkstk_darwin(v4);
  v147 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v149 = &v135 - v7;
  if (qword_715B0 != -1)
  {
    swift_once();
  }

  v148 = v3;
  v8 = sub_562FC();
  v152 = sub_B144(v8, qword_75740);
  v9 = sub_562DC();
  v10 = sub_5794C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "Trying to derive ATPayload from MessageDetails", v11, 2u);
  }

  v12 = sub_5655C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  __chkstk_darwin(v12);
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v135 - v15;
  v17 = sub_2AFC(&qword_71B50, &qword_59018);
  __chkstk_darwin(v17 - 8);
  v19 = &v135 - v18;
  sub_5657C();
  if ((*(v13 + 6))(v19, 1, v12) == 1)
  {
    sub_2E90(v19, &qword_71B50, &qword_59018);
LABEL_9:
    v26 = sub_562DC();
    v27 = sub_5792C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "MessageDetails.eventSource was unknown", v28, 2u);
    }

    type metadata accessor for MessageParser.Error(0);
    sub_1308C(&qword_71B38, type metadata accessor for MessageParser.Error, &unk_59078);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v13;
  }

  v146 = &v135;
  v20 = (*(v13 + 4))(&v135 - v15, v19, v12);
  v145 = v14;
  v21 = __chkstk_darwin(v20);
  v22 = &v135 - v15;
  v23 = enum case for MessageDetails.EventSource.unknown(_:);
  (*(v13 + 13))(v22, enum case for MessageDetails.EventSource.unknown(_:), v12, v21);
  sub_13154();
  v24 = sub_576CC();
  v25 = *(v13 + 1);
  v25(v22, v12);
  if (v24)
  {
    v25(v16, v12);
    goto LABEL_9;
  }

  v141 = v25;
  v142 = v13 + 8;
  v143 = v12;
  v144 = v16;
  v30 = sub_565BC();
  v32 = v31;

  v34 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v34 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    v35 = __chkstk_darwin(v33);
    v37 = &v135 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = v13 + 16;
    v39 = *(v13 + 2);
    v41 = v143;
    v40 = v144;
    v39(v37, v144, v143, v35);
    v42 = (*(v13 + 11))(v37, v41);
    if (&enum case for MessageDetails.EventSource.unknown(_:) && v42 == v23 || &enum case for MessageDetails.EventSource.askToBuy(_:) && v42 == enum case for MessageDetails.EventSource.askToBuy(_:))
    {
      v43 = __chkstk_darwin(v42);
      v45 = &v135 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
      v153 = v38;
      v151 = v39;
      v39(v45, v40, v41, v43);
      v46 = sub_562DC();
      v47 = sub_5792C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v152 = &v135;
        v49 = v48;
        v50 = v41;
        v51 = swift_slowAlloc();
        v154 = v51;
        *v49 = 136315138;
        v52 = sub_5654C();
        v54 = v53;
        v55 = v45;
        v56 = v141;
        v13 = v142;
        v141(v55, v50);
        v57 = sub_293C0(v52, v54, &v154);

        *(v49 + 4) = v57;
        _os_log_impl(&dword_0, v46, v47, "MessageDetails.eventSource was unsupported %s", v49, 0xCu);
        sub_13040(v51);

        v58 = v56;
      }

      else
      {

        v66 = v45;
        v58 = v141;
        v13 = v142;
        v141(v66, v41);
        v50 = v41;
      }

      type metadata accessor for MessageParser.Error(0);
      sub_1308C(&qword_71B38, type metadata accessor for MessageParser.Error, &unk_59078);
      swift_allocError();
      v67 = v144;
      v151(v68, v144, v50);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v58(v67, v50);
    }

    else if (&enum case for MessageDetails.EventSource.screenTime(_:) && v42 == enum case for MessageDetails.EventSource.screenTime(_:))
    {
      v62 = objc_allocWithZone(sub_5641C());
      v13 = sub_563FC();
      sub_565BC();
      v63 = v148;
      sub_5614C();

      v65 = v150;
      v64 = v151;
      if ((*(v150 + 6))(v63, 1, v151) == 1)
      {
        sub_2E90(v63, &qword_71B48, &qword_5A780);
        type metadata accessor for MessageParser.Error(0);
        sub_1308C(&qword_71B38, type metadata accessor for MessageParser.Error, &unk_59078);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v141(v144, v143);
      }

      else
      {
        v140 = &v135;
        v88 = v149;
        (*(v65 + 4))(v149, v63, v64);
        sub_5647C();
        (*(v65 + 2))(v147, v88, v64);
        type metadata accessor for Localization();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v148 = ObjCClassFromMetadata;
        v90 = objc_opt_self();
        v91 = v13;
        v92 = [v90 bundleForClass:ObjCClassFromMetadata];
        v155._countAndFlagsBits = 0xD000000000000011;
        v130._countAndFlagsBits = 0x800000000005C050;
        v155._object = 0x800000000005C050;
        v160.value._countAndFlagsBits = 0;
        v160.value._object = 0;
        v93.super.isa = v92;
        v165._countAndFlagsBits = 0;
        v165._object = 0xE000000000000000;
        sub_55EFC(v155, v160, v93, v165, 0xD000000000000011, v130);

        sub_5658C();
        v139 = v91;
        v94 = sub_563CC();
        v137 = sub_2AFC(&qword_717B8, &unk_58EF0);
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_58FD0;
        v154 = (&dword_0 + 1);
        v147 = v94;
        sub_57B7C();
        v136 = v96;
        v97 = v90;
        v98 = v90;
        v145 = v90;
        v99 = v148;
        v100 = [v97 bundleForClass:v148];
        v156._countAndFlagsBits = 0xD000000000000019;
        v131._countAndFlagsBits = 0x800000000005C070;
        v156._object = 0x800000000005C070;
        v161.value._countAndFlagsBits = 0;
        v161.value._object = 0;
        v101.super.isa = v100;
        v166._countAndFlagsBits = 0;
        v166._object = 0xE000000000000000;
        v138 = 0xD000000000000019;
        sub_55EFC(v156, v161, v101, v166, 0xD000000000000019, v131);

        v102 = sub_564FC();
        v103 = objc_allocWithZone(v102);
        *(v95 + 32) = sub_5649C();
        v154 = (&dword_0 + 2);
        sub_57B7C();
        v136 = v104;
        v105 = [v98 bundleForClass:v99];
        v132._countAndFlagsBits = 0x800000000005C090;
        v157._countAndFlagsBits = 0xD00000000000001BLL;
        v157._object = 0x800000000005C090;
        v162.value._countAndFlagsBits = 0;
        v162.value._object = 0;
        v106.super.isa = v105;
        v167._countAndFlagsBits = 0;
        v167._object = 0xE000000000000000;
        sub_55EFC(v157, v162, v106, v167, 0xD00000000000001BLL, v132);

        v107 = objc_allocWithZone(v102);
        *(v95 + 40) = sub_5649C();
        v154 = (&dword_0 + 3);
        sub_57B7C();
        v108 = [v145 bundleForClass:v99];
        v158._countAndFlagsBits = 0xD00000000000001ALL;
        v133._countAndFlagsBits = 0x800000000005C0B0;
        v158._object = 0x800000000005C0B0;
        v163.value._countAndFlagsBits = 0;
        v163.value._object = 0;
        v109.super.isa = v108;
        v168._countAndFlagsBits = 0;
        v168._object = 0xE000000000000000;
        sub_55EFC(v158, v163, v109, v168, 0xD00000000000001ALL, v133);

        v110 = objc_allocWithZone(v102);
        *(v95 + 48) = sub_5649C();
        v111 = *(&dword_10 + (v95 & 0xFFFFFFFFFFFFFF8));
        if (v111)
        {
          for (i = 0; i != v111; ++i)
          {
            if ((v95 & 0xC000000000000001) != 0)
            {
              v113 = sub_57AEC();
            }

            else
            {
              v113 = *(v95 + 8 * i + 32);
            }

            v114 = v113;
            sub_564DC();
          }
        }

        inited = swift_initStackObject();
        *(inited + 16) = xmmword_58B30;
        v154 = 0;
        sub_57B7C();
        v116 = [v145 bundleForClass:v148];
        v134._countAndFlagsBits = 0x800000000005C0D0;
        v159._countAndFlagsBits = 0xD00000000000001BLL;
        v159._object = 0x800000000005C0D0;
        v164.value._countAndFlagsBits = 0;
        v164.value._object = 0;
        v117.super.isa = v116;
        v169._countAndFlagsBits = 0;
        v169._object = 0xE000000000000000;
        sub_55EFC(v159, v164, v117, v169, 0xD00000000000001BLL, v134);

        v118 = objc_allocWithZone(v102);
        *(inited + 32) = sub_5649C();
        v119 = *(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8));
        v120 = v147;
        v121 = v151;
        if (v119)
        {
          for (j = 0; j != v119; ++j)
          {
            if ((inited & 0xC000000000000001) != 0)
            {
              v123 = sub_57AEC();
            }

            else
            {
              v123 = *(inited + 8 * j + 32);
            }

            v124 = v123;
            sub_564DC();
          }
        }

        v154 = v95;
        sub_10D94(inited);
        sub_5638C();
        sub_5659C();
        sub_563DC();

        (*(v150 + 1))(v149, v121);
        sub_5765C();
        sub_565AC();
        sub_5650C();
        v13 = sub_575CC();
        v125 = sub_562DC();
        v126 = sub_5794C();

        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          *v127 = 138412290;
          *(v127 + 4) = v13;
          *v128 = v13;
          v129 = v13;
          _os_log_impl(&dword_0, v125, v126, "Got payload from MessageDetails: %@", v127, 0xCu);
          sub_2E90(v128, &qword_71828, &qword_598B0);
        }

        v141(v144, v143);
      }
    }

    else
    {
      v150 = v37;
      v140 = &v135;
      v69 = __chkstk_darwin(v42);
      v71 = &v135 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
      v153 = v38;
      v151 = v39;
      v39(v71, v40, v41, v69);
      v72 = sub_562DC();
      v73 = sub_5792C();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v152 = &v135;
        v75 = v74;
        v76 = v41;
        v77 = swift_slowAlloc();
        v154 = v77;
        *v75 = 136315138;
        v78 = sub_5654C();
        v80 = v79;
        v81 = v71;
        v82 = v141;
        v13 = v142;
        v141(v81, v76);
        v83 = sub_293C0(v78, v80, &v154);

        *(v75 + 4) = v83;
        _os_log_impl(&dword_0, v72, v73, "MessageDetails.eventSource was unsupported %s", v75, 0xCu);
        sub_13040(v77);

        v84 = v82;
      }

      else
      {

        v85 = v71;
        v84 = v141;
        v13 = v142;
        v141(v85, v41);
        v76 = v41;
      }

      type metadata accessor for MessageParser.Error(0);
      sub_1308C(&qword_71B38, type metadata accessor for MessageParser.Error, &unk_59078);
      swift_allocError();
      v86 = v144;
      v151(v87, v144, v76);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v84(v86, v76);
      v84(v150, v76);
    }
  }

  else
  {
    v59 = sub_562DC();
    v60 = sub_5792C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_0, v59, v60, "MessageDetails.requestID was empty", v61, 2u);
    }

    type metadata accessor for MessageParser.Error(0);
    sub_1308C(&qword_71B38, type metadata accessor for MessageParser.Error, &unk_59078);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v141(v144, v143);
  }

  return v13;
}

uint64_t sub_125BC(uint64_t a1)
{
  v1 = sub_55DFC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v85 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v71 - v5;
  v7 = sub_2AFC(&qword_71B08, &qword_58FF8);
  __chkstk_darwin(v7 - 8);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v71 - v11;
  __chkstk_darwin(v13);
  v86 = &v71 - v14;
  v15 = sub_2AFC(&qword_71B10, &qword_59000);
  __chkstk_darwin(v15 - 8);
  v84 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v71 - v18;
  __chkstk_darwin(v20);
  v22 = &v71 - v21;
  sub_55E4C();
  sub_2E28(v22, v19, &qword_71B10, &qword_59000);
  v23 = sub_55E9C();
  v24 = *(v23 - 8);
  v83 = *(v24 + 48);
  if (v83(v19, 1, v23) != 1)
  {
    v81 = v24 + 48;
    v28 = sub_55E2C();
    v29 = v24;
    v30 = v28;
    v79 = *(v29 + 8);
    v80 = v29 + 8;
    v79(v19, v23);
    if (v30)
    {
      v77 = v12;
      v78 = v23;
      v87 = v1;
      v88 = v2;
      v76 = v9;
      v82 = v22;
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = 0;
        v33 = (v88 + 8);
        while (1)
        {
          if (v32 >= *(v30 + 16))
          {
            __break(1u);
LABEL_55:
            __break(1u);
          }

          (*(v88 + 16))(v6, v30 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v32, v1);
          if (sub_55DDC() == 0x69616E626D756874 && v34 == 0xED0000617461446CLL)
          {

            goto LABEL_14;
          }

          v35 = sub_57B8C();

          if (v35)
          {
            break;
          }

          ++v32;
          v1 = v87;
          (*v33)(v6, v87);
          if (v31 == v32)
          {
            goto LABEL_11;
          }
        }

        v1 = v87;
LABEL_14:

        v37 = v88;
        v38 = v86;
        (*(v88 + 32))(v86, v6, v1);
        v36 = 0;
        v22 = v82;
      }

      else
      {
LABEL_11:

        v36 = 1;
        v22 = v82;
        v37 = v88;
        v38 = v86;
      }

      v39 = v37[7];
      v39(v38, v36, 1, v1);
      v40 = v37[6];
      if (v40(v38, 1, v1) == 1)
      {
        sub_2E90(v22, &qword_71B10, &qword_59000);
        v26 = &qword_71B08;
        v27 = &qword_58FF8;
        v25 = v38;
        goto LABEL_24;
      }

      sub_55DEC();
      v42 = v41;
      v86 = v37[1];
      (v86)(v38, v1);
      if (v42)
      {
        v82 = v39;
        v43 = sub_560DC();
        v45 = v44;

        if (v45 >> 60 != 15)
        {
          isa = sub_560EC().super.isa;
          v89 = 0;
          v47 = [(objc_class *)isa decompressedDataUsingAlgorithm:3 error:&v89];

          v48 = v89;
          if (v47)
          {
            v72 = sub_560FC();
            v73 = v49;

            v50 = v84;
            sub_2E28(v22, v84, &qword_71B10, &qword_59000);
            v51 = v78;
            v52 = v83(v50, 1, v78);
            v74 = v40;
            v75 = v43;
            if (v52 == 1)
            {
              sub_2E90(v50, &qword_71B10, &qword_59000);
            }

            else
            {
              v55 = sub_55E2C();
              v79(v50, v51);
              if (v55)
              {
                v83 = v45;
                v56 = *(v55 + 16);
                if (v56)
                {
                  v57 = 0;
                  v84 = v88 + 16;
                  while (1)
                  {
                    if (v57 >= *(v55 + 16))
                    {
                      goto LABEL_55;
                    }

                    (*(v88 + 16))(v85, v55 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v57, v87);
                    if (sub_55DDC() == 0xD000000000000023 && 0x800000000005C000 == v58)
                    {
                      break;
                    }

                    v59 = sub_57B8C();

                    if (v59)
                    {
                      goto LABEL_37;
                    }

                    ++v57;
                    (v86)(v85, v87);
                    if (v56 == v57)
                    {
                      goto LABEL_34;
                    }
                  }

LABEL_37:

                  v61 = v77;
                  (*(v88 + 32))(v77, v85, v87);
                  v60 = 0;
                }

                else
                {
LABEL_34:

                  v60 = 1;
                  v61 = v77;
                }

                v62 = v76;
                v45 = v83;
LABEL_39:
                v63 = v87;
                (v82)(v61, v60, 1, v87);
                sub_2E28(v61, v62, &qword_71B08, &qword_58FF8);
                if (v74(v62, 1, v63) == 1)
                {
                  sub_12F8C(v75, v45);
                  sub_2E90(v61, &qword_71B08, &qword_58FF8);
                  sub_2E90(v22, &qword_71B10, &qword_59000);
                  v64 = v62;
                  v65 = &qword_71B08;
                  v66 = &qword_58FF8;
                }

                else
                {
                  v67 = sub_55DEC();
                  v69 = v68;
                  (v86)(v62, v63);
                  if (v69)
                  {
                    v70 = v75;
                    if (v67 == 1702195828 && v69 == 0xE400000000000000 || (sub_57B8C() & 1) != 0)
                    {
                      sub_12F8C(v70, v45);

                      sub_2E90(v61, &qword_71B08, &qword_58FF8);
                      sub_2E90(v22, &qword_71B10, &qword_59000);
                      return v72;
                    }

                    if (v67 != 0x65736C6166 || v69 != 0xE500000000000000)
                    {
                      sub_57B8C();
                    }

                    sub_12F8C(v70, v45);
                  }

                  else
                  {
                    sub_12F8C(v75, v45);
                  }

                  sub_2E90(v61, &qword_71B08, &qword_58FF8);
                  v65 = &qword_71B10;
                  v66 = &qword_59000;
                  v64 = v22;
                }

                sub_2E90(v64, v65, v66);
                return v72;
              }
            }

            v60 = 1;
            v62 = v76;
            v61 = v77;
            goto LABEL_39;
          }

          v53 = v48;
          sub_5603C();

          swift_willThrow();
          sub_12F8C(v43, v45);
        }
      }
    }

    v26 = &qword_71B10;
    v27 = &qword_59000;
    v25 = v22;
    goto LABEL_24;
  }

  sub_2E90(v22, &qword_71B10, &qword_59000);
  v25 = v19;
  v26 = &qword_71B10;
  v27 = &qword_59000;
LABEL_24:
  sub_2E90(v25, v26, v27);
  return 0;
}

uint64_t sub_12F8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_12FA0(a1, a2);
  }

  return a1;
}

uint64_t sub_12FA0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t type metadata accessor for MessageParser.Error(uint64_t a1)
{
  result = qword_71BE0;
  if (!qword_71BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_13040(void *a1)
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

uint64_t sub_1308C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_130D4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_13154()
{
  result = qword_71B58;
  if (!qword_71B58)
  {
    sub_5655C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71B58);
  }

  return result;
}

unint64_t sub_131A0()
{
  result = qword_71B68;
  if (!qword_71B68)
  {
    sub_2C70(&qword_71B60, &qword_59020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71B68);
  }

  return result;
}

uint64_t sub_13254(uint64_t a1)
{
  result = sub_560CC();
  if (v2 <= 0x3F)
  {
    result = sub_5655C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_13310()
{
  v0 = sub_562FC();
  sub_B17C(v0, qword_75728);
  sub_B144(v0, qword_75728);
  return sub_562EC();
}

uint64_t sub_133EC()
{
  v0 = sub_562FC();
  sub_B17C(v0, qword_75770);
  sub_B144(v0, qword_75770);
  return sub_562EC();
}

uint64_t sub_13474()
{
  v0 = sub_562FC();
  sub_B17C(v0, qword_75788);
  sub_B144(v0, qword_75788);
  return sub_562EC();
}

uint64_t sub_134FC()
{
  v0 = sub_562FC();
  sub_B17C(v0, qword_757A0);
  sub_B144(v0, qword_757A0);
  return sub_562EC();
}

uint64_t sub_135B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_562FC();
  sub_B17C(v5, a2);
  sub_B144(v5, a2);
  return sub_562EC();
}

uint64_t sub_13634()
{
  v0 = sub_562FC();
  sub_B17C(v0, qword_757D0);
  sub_B144(v0, qword_757D0);
  return sub_562EC();
}

uint64_t sub_136BC()
{
  v0 = sub_562FC();
  sub_B17C(v0, qword_757E8);
  sub_B144(v0, qword_757E8);
  return sub_562EC();
}

uint64_t sub_13744(char a1, char a2)
{
  v4 = sub_5721C();
  v5 = sub_564CC();

  if (!v5)
  {
    sub_2AFC(&qword_717E0, &qword_58B68);
    if (a1)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (v5 != 2)
  {
    if (v5 == 1)
    {
      v6 = sub_5721C();
      v7 = sub_5648C();
      v9 = v8;

      if (!v9)
      {
        v10 = sub_5721C();
        v7 = sub_564EC();
      }

      if ((a2 & 1) == 0)
      {

        if (a1)
        {
          v11 = 0x800000000005C350;
          type metadata accessor for Localization();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
LABEL_14:
          v19 = v13;
          v59._countAndFlagsBits = v11;
          v60._countAndFlagsBits = 0xD000000000000022;
          v60._object = v11;
          v61.value._countAndFlagsBits = 0;
          v61.value._object = 0;
          v20.super.isa = v19;
          v62._countAndFlagsBits = 0;
          v62._object = 0xE000000000000000;
          v7 = sub_55EFC(v60, v61, v20, v62, 0xD000000000000022, v59);

          return v7;
        }

        v21 = 0x800000000005C330;
        sub_2AFC(&qword_717E0, &qword_58B68);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_58B10;
        v53 = sub_5724C();
        v55 = v54;
        *(v52 + 56) = &type metadata for String;
        *(v52 + 64) = sub_B088();
        *(v52 + 32) = v53;
        *(v52 + 40) = v55;
        type metadata accessor for Localization();
        v56 = swift_getObjCClassFromMetadata();
        v57 = objc_opt_self();

        v51 = [v57 bundleForClass:v56];
LABEL_22:
        v29 = v51;
        v59._countAndFlagsBits = v21;
        v30._countAndFlagsBits = 0xD00000000000001FLL;
        v31 = 0xD00000000000001FLL;
        goto LABEL_23;
      }

      return v7;
    }

    sub_2AFC(&qword_717E0, &qword_58B68);
    if (a1)
    {
LABEL_18:
      v21 = 0x800000000005C2B0;
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_58B10;
      v23 = sub_5721C();
      v24 = sub_564EC();
      v26 = v25;

      *(v22 + 56) = &type metadata for String;
      *(v22 + 64) = sub_B088();
      *(v22 + 32) = v24;
      *(v22 + 40) = v26;
      type metadata accessor for Localization();
      v27 = swift_getObjCClassFromMetadata();
      v28 = objc_opt_self();

      v29 = [v28 bundleForClass:v27];
      v59._countAndFlagsBits = 0x800000000005C2B0;
      v30._countAndFlagsBits = 0xD000000000000021;
      v31 = 0xD000000000000021;
LABEL_23:
      v30._object = v21;
      v42.value._countAndFlagsBits = 0;
      v42.value._object = 0;
      v43.super.isa = v29;
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      goto LABEL_24;
    }

LABEL_19:
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_58B00;
    v33 = sub_5721C();
    v34 = sub_564EC();
    v36 = v35;

    *(v32 + 56) = &type metadata for String;
    v37 = sub_B088();
    *(v32 + 64) = v37;
    *(v32 + 32) = v34;
    *(v32 + 40) = v36;
    v38 = sub_5724C();
    *(v32 + 96) = &type metadata for String;
    *(v32 + 104) = v37;
    *(v32 + 72) = v38;
    *(v32 + 80) = v39;
    type metadata accessor for Localization();
    v40 = swift_getObjCClassFromMetadata();
    v41 = objc_opt_self();

    v29 = [v41 bundleForClass:v40];
    v59._countAndFlagsBits = 0x800000000005C290;
    v30._countAndFlagsBits = 0xD00000000000001ELL;
    v30._object = 0x800000000005C290;
    v42.value._countAndFlagsBits = 0;
    v42.value._object = 0;
    v43.super.isa = v29;
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    v31 = 0xD00000000000001ELL;
LABEL_24:
    sub_55EFC(v30, v42, v43, v44, v31, v59);

    v7 = sub_5775C();

    return v7;
  }

  v14 = sub_5721C();
  v7 = sub_5648C();
  v16 = v15;

  if (!v16)
  {
    v17 = sub_5721C();
    v7 = sub_564EC();
  }

  if ((a2 & 1) == 0)
  {

    if (a1)
    {
      v11 = 0x800000000005C300;
      type metadata accessor for Localization();
      v18 = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass:v18];
      goto LABEL_14;
    }

    v21 = 0x800000000005C2E0;
    sub_2AFC(&qword_717E0, &qword_58B68);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_58B10;
    v46 = sub_5724C();
    v48 = v47;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = sub_B088();
    *(v45 + 32) = v46;
    *(v45 + 40) = v48;
    type metadata accessor for Localization();
    v49 = swift_getObjCClassFromMetadata();
    v50 = objc_opt_self();

    v51 = [v50 bundleForClass:v49];
    goto LABEL_22;
  }

  return v7;
}

uint64_t sub_13E94(char a1)
{
  v2 = sub_5722C();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = sub_5721C();
  v7 = sub_564CC();

  if (v7 == 2)
  {
    if (a1)
    {
      v8 = 0x800000000005C200;
      type metadata accessor for Localization();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v35._countAndFlagsBits = 0x800000000005C200;
      v11._countAndFlagsBits = 0xD000000000000023;
      v12 = 0xD000000000000023;
      goto LABEL_11;
    }

    sub_2AFC(&qword_717E0, &qword_58B68);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_58B10;
    v30 = sub_5724C();
    v32 = v31;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_B088();
    *(v29 + 32) = v30;
    *(v29 + 40) = v32;
    type metadata accessor for Localization();
    v33 = swift_getObjCClassFromMetadata();
    v34 = objc_opt_self();

    v23 = [v34 bundleForClass:v33];
    v35._countAndFlagsBits = 0x800000000005C1D0;
    v25._countAndFlagsBits = 0xD000000000000020;
    v25._object = 0x800000000005C1D0;
    v26.value._countAndFlagsBits = 0;
    v26.value._object = 0;
    v27.super.isa = v23;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v24 = 0xD000000000000020;
LABEL_14:
    sub_55EFC(v25, v26, v27, v28, v24, v35);

    v16 = sub_5775C();

    return v16;
  }

  if (v7 != 1)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    sub_2AFC(&qword_717E0, &qword_58B68);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_58B10;
    v18 = sub_5724C();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_B088();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    type metadata accessor for Localization();
    v21 = swift_getObjCClassFromMetadata();
    v22 = objc_opt_self();

    v23 = [v22 bundleForClass:v21];
    v35._countAndFlagsBits = 0x800000000005C230;
    v25._countAndFlagsBits = 0xD000000000000022;
    v24 = 0xD000000000000022;
    v25._object = 0x800000000005C230;
    v26.value._countAndFlagsBits = 0;
    v26.value._object = 0;
    v27.super.isa = v23;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    goto LABEL_14;
  }

  v8 = 0x800000000005C260;
  type metadata accessor for Localization();
  v9 = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass:v9];
  v35._countAndFlagsBits = 0x800000000005C260;
  v11._countAndFlagsBits = 0xD000000000000025;
  v12 = 0xD000000000000025;
LABEL_11:
  v11._object = v8;
  v36.value._countAndFlagsBits = 0;
  v36.value._object = 0;
  v15.super.isa = v10;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v16 = sub_55EFC(v11, v36, v15, v37, v12, v35);

  return v16;
}

uint64_t sub_14234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return _swift_task_switch(sub_14258, 0, 0);
}

uint64_t sub_14258()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  if (*(v0 + 25))
  {
    if (qword_715C8 != -1)
    {
      swift_once();
    }

    v1 = sub_562FC();
    sub_B144(v1, qword_75788);
    v2 = sub_562DC();
    v3 = sub_5794C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "Not sending response because one is already in-flight.", v4, 2u);
    }

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    *(v0 + 80) = sub_578AC();
    *(v0 + 88) = sub_5789C();
    v8 = sub_5788C();

    return _swift_task_switch(sub_14430, v8, v7);
  }
}

uint64_t sub_14430()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 26) = 1;

  sub_5663C();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_14524;
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);

  return sub_15168(v4, v3, v2);
}

uint64_t sub_14524()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_148CC;
  }

  else
  {
    v2 = sub_14638;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_14638()
{
  *(v0 + 112) = sub_5789C();
  v2 = sub_5788C();

  return _swift_task_switch(sub_146C4, v2, v1);
}

uint64_t sub_146C4()
{
  v1 = *(v0 + 48);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;

  v2 = v1;
  sub_5663C();

  return _swift_task_switch(sub_14790, 0, 0);
}

uint64_t sub_14790()
{
  *(v0 + 120) = sub_5789C();
  v2 = sub_5788C();

  return _swift_task_switch(sub_1481C, v2, v1);
}

uint64_t sub_1481C()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 27) = 0;

  sub_5663C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_148CC()
{
  if (qword_715C8 != -1)
  {
    swift_once();
  }

  v1 = sub_562FC();
  sub_B144(v1, qword_75788);
  swift_errorRetain();
  v2 = sub_562DC();
  v3 = sub_5792C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Error sending response: %@", v4, 0xCu);
    sub_2E90(v5, &qword_71828, &qword_598B0);
  }

  *(v0 + 128) = sub_5602C();
  *(v0 + 136) = sub_5789C();
  v8 = sub_5788C();

  return _swift_task_switch(sub_14A9C, v8, v7);
}

uint64_t sub_14A9C()
{
  v1 = *(v0 + 128);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = v1;
  *(v0 + 24) = 1;

  v2 = v1;
  sub_5663C();

  return _swift_task_switch(sub_14B68, 0, 0);
}

uint64_t sub_14B68()
{
  v1 = *(v0 + 128);

  *(v0 + 120) = sub_5789C();
  v3 = sub_5788C();

  return _swift_task_switch(sub_1481C, v3, v2);
}

uint64_t sub_14C04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  return v1;
}

unint64_t sub_14C7C(char a1)
{
  sub_2AFC(&qword_71D48, &qword_59328);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_58B10;
  *(inited + 32) = 1868983913;
  v3 = inited + 32;
  v4 = 0xD000000000000025;
  v5 = "_send(_:in:messagesContext:)";
  if (a1)
  {
    v4 = 0xD000000000000039;
  }

  else
  {
    v5 = "D to send a response for.";
  }

  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v5 | 0x8000000000000000;
  v6 = sub_B1E0(inited);
  swift_setDeallocating();
  sub_2E90(v3, qword_71868, &qword_59330);
  return v6;
}

Swift::Int sub_14D78()
{
  v1 = *v0;
  sub_57C2C();
  sub_57C3C(v1);
  return sub_57C4C();
}

Swift::Int sub_14DEC(uint64_t a1)
{
  v2 = *v1;
  sub_57C2C();
  sub_57C3C(v2);
  return sub_57C4C();
}

unint64_t sub_14E30()
{
  if (*v0)
  {
    return 0xD000000000000039;
  }

  else
  {
    return 0xD000000000000025;
  }
}

uint64_t sub_14E7C(uint64_t a1)
{
  v2 = sub_175B8();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_14EB8(uint64_t a1)
{
  v2 = sub_175B8();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_14EF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  return v1;
}

uint64_t sub_14F68(uint64_t a1, uint64_t a2)
{
  v5 = sub_2AFC(&qword_71D08, &qword_59128);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = sub_2AFC(&qword_71D10, &qword_59130);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  v13 = OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter__isWaitingForSendResult;
  v18 = 0;
  sub_5661C();
  (*(v10 + 32))(v2 + v13, v12, v9);
  v14 = OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter__sendResult;
  v16 = 0;
  v17 = -1;
  sub_2AFC(&unk_71C70, "jV");
  sub_5661C();
  (*(v6 + 32))(v2 + v14, v8, v5);
  sub_BA54(a1, v2 + OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter_messagesContext);
  *(v2 + OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter_originalPayload) = a2;
  return v2;
}

uint64_t sub_15168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  v5 = sub_55DBC();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_1522C, 0, 0);
}

uint64_t sub_1522C()
{
  v40 = v0;
  v1 = v0[25];
  v0[30] = *v1;
  v2 = v1[1];
  v0[31] = v2;
  if (v2)
  {
    v3 = v0[26];
    v5 = v0[23];
    v4 = v0[24];
    sub_5765C();
    v6 = *(v3 + OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter_originalPayload);
    v7 = v5;
    v0[32] = sub_575EC();
    v8 = [v4 recipientAddresses];
    v9 = sub_5784C();
    v0[33] = v9;

    v0[34] = sub_575DC();
    if ((v10 & 1) == 0)
    {
      v11 = sub_5760C();
      if (v11 == sub_5650C())
      {
        v12 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
        v0[35] = v12;
        v0[2] = v0;
        v0[7] = v0 + 22;
        v0[3] = sub_15784;
        v13 = swift_continuation_init();
        v0[17] = sub_2AFC(&qword_71D20, &unk_591E0);
        v0[10] = _NSConcreteStackBlock;
        v0[11] = 1107296256;
        v0[12] = sub_16E90;
        v0[13] = &unk_6E890;
        v0[14] = v13;
        [v12 startRequestWithCompletionHandler:v0 + 10];

        return _swift_continuation_await(v0 + 2);
      }
    }

    v0[37] = v9;
    if (qword_715C8 != -1)
    {
      swift_once();
    }

    v14 = v0[32];
    v15 = sub_562FC();
    v0[38] = sub_B144(v15, qword_75788);

    v16 = v14;
    v17 = sub_562DC();
    v18 = sub_5794C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[31];
      v20 = v0[32];
      v21 = v0[30];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v22 = 136315650;
      *(v22 + 4) = sub_293C0(v21, v19, v39);
      *(v22 + 12) = 2080;

      v24 = sub_5785C();
      v26 = v25;

      v27 = sub_293C0(v24, v26, v39);

      *(v22 + 14) = v27;
      *(v22 + 22) = 2112;
      *(v22 + 24) = v20;
      *v23 = v20;
      v28 = v20;
      _os_log_impl(&dword_0, v17, v18, "%s: Calling into daemon to send response payload. recipientAddresses: %s, responsePayload: %@", v22, 0x20u);
      sub_2E90(v23, &qword_71828, &qword_598B0);

      swift_arrayDestroy();
    }

    v29 = sub_5764C();
    v0[39] = v29;
    if (v29)
    {
      v30 = v0[31];
      sub_5752C();
      swift_allocObject();
      v0[40] = sub_5751C();

      v31 = swift_task_alloc();
      v0[41] = v31;
      *v31 = v0;
      v31[1] = sub_162E0;
      v32 = v0[32];
      v33 = v0[30];

      return ATDaemonConnectionManager.sendResponse(_:to:requestMessageGUID:)(v32, v9, v33, v30);
    }

    v35 = v0[32];
    sub_173F4();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();
  }

  else
  {
    sub_173F4();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();
  }

  v37 = v0[1];

  return v37();
}

uint64_t sub_15784()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_16660;
  }

  else
  {
    v2 = sub_15894;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_15894()
{
  v94 = v0;
  v88 = v0[22];
  v1 = [v88 members];
  sub_174BC();
  v2 = sub_5784C();

  if (v2 >> 62)
  {
LABEL_40:
    v3 = sub_57B1C();
    v91 = v0;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_41:

    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v37 = sub_562FC();
    sub_B144(v37, qword_75758);
    v38 = sub_562DC();
    v39 = sub_5792C();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v0[35];
    if (v40)
    {
      v42 = v0[34];
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v93[0] = v44;
      *v43 = 136315394;
      *(v43 + 4) = sub_293C0(0xD00000000000001CLL, 0x800000000005C430, v93);
      *(v43 + 12) = 2048;
      *(v43 + 14) = v42;
      _os_log_impl(&dword_0, v38, v39, "%s: current user is not in same family as requester with DSID %ld", v43, 0x16u);
      sub_13040(v44);
    }

    v7 = v0[33];
    goto LABEL_46;
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  v91 = v0;
  if (!v3)
  {
    goto LABEL_41;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_57AEC();
    }

    else
    {
      if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_39;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = (v4 + 1);
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v8 = [v5 dsid];
    if (v8)
    {
      v9 = v0[34];
      v10 = v8;
      v92 = v6;
      v11 = [v8 integerValue];

      v12 = v11 == v9;
      v0 = v91;
      v6 = v92;
      if (v12)
      {
        break;
      }
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_41;
    }
  }

  if (qword_715B8 != -1)
  {
    swift_once();
  }

  v13 = sub_562FC();
  sub_B144(v13, qword_75758);
  v14 = sub_562DC();
  v15 = sub_5794C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v93[0] = v4;
    *v16 = 136315138;
    *(v16 + 4) = sub_293C0(0xD00000000000001CLL, 0x800000000005C430, v93);
    _os_log_impl(&dword_0, v14, v15, "%s: verified user is in same family as original requester", v16, 0xCu);
    sub_13040(v4);
  }

  v17 = sub_5795C();
  v18 = v17;
  if (!(v17 >> 62))
  {
    v19 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
    if (v19)
    {
      goto LABEL_20;
    }

LABEL_58:
    v7 = &_swiftEmptyArrayStorage;
    goto LABEL_59;
  }

  v19 = sub_57B1C();
  if (!v19)
  {
    goto LABEL_58;
  }

LABEL_20:
  if (v19 >= 1)
  {
    v20 = 0;
    v90 = (v91[28] + 8);
    v7 = &_swiftEmptyArrayStorage;
    v89 = v19;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = sub_57AEC();
      }

      else
      {
        v21 = *(v18 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = [v21 appleID];
      if (v23)
      {
        v24 = v91[29];
        v25 = v91[27];
        v26 = v23;
        v27 = sub_5778C();
        v29 = v28;

        v91[20] = v27;
        v91[21] = v29;
        sub_55DAC();
        sub_2B4C();
        v30 = sub_579BC();
        v32 = v31;
        (*v90)(v24, v25);

        v33 = HIBYTE(v32) & 0xF;
        if ((v32 & 0x2000000000000000) == 0)
        {
          v33 = v30 & 0xFFFFFFFFFFFFLL;
        }

        if (v33)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_6AAC(0, *(v7 + 2) + 1, 1, v7);
          }

          v35 = *(v7 + 2);
          v34 = *(v7 + 3);
          if (v35 >= v34 >> 1)
          {
            v7 = sub_6AAC((v34 > 1), v35 + 1, 1, v7);
          }

          *(v7 + 2) = v35 + 1;
          v36 = &v7[16 * v35];
          *(v36 + 4) = v30;
          *(v36 + 5) = v32;
        }

        else
        {
        }

        v19 = v89;
      }

      else
      {
      }

      ++v20;
    }

    while (v19 != v20);
LABEL_59:

    v69 = [v92 appleID];
    if (!v69)
    {
      v0 = v91;
      v85 = v91[35];

      goto LABEL_46;
    }

    v71 = v91[28];
    v70 = v91[29];
    v72 = v91[27];
    v73 = v69;
    v74 = sub_5778C();
    v76 = v75;

    v91[18] = v74;
    v91[19] = v76;
    sub_55DAC();
    sub_2B4C();
    v4 = sub_579BC();
    v19 = v77;
    (*(v71 + 8))(v70, v72);

    v78 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v78 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (!v78)
    {
      v86 = v91[35];

      v0 = v91;
      goto LABEL_46;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_64;
    }

    goto LABEL_70;
  }

  __break(1u);
LABEL_70:
  v7 = sub_6AAC(0, *(v7 + 2) + 1, 1, v7);
LABEL_64:
  v79 = v7;
  v80 = *(v7 + 2);
  v81 = v79;
  v82 = *(v79 + 3);
  if (v80 >= v82 >> 1)
  {
    v81 = sub_6AAC((v82 > 1), v80 + 1, 1, v81);
  }

  v83 = v91[35];

  v0 = v91;
  *(v81 + 2) = v80 + 1;
  v84 = &v81[16 * v80];
  v7 = v81;
  *(v84 + 4) = v4;
  *(v84 + 5) = v19;

LABEL_46:
  v45 = v7;
  v0[37] = v7;
  if (qword_715C8 != -1)
  {
    swift_once();
  }

  v46 = v0[32];
  v47 = sub_562FC();
  v0[38] = sub_B144(v47, qword_75788);

  v48 = v46;
  v49 = sub_562DC();
  v50 = sub_5794C();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = v0[31];
    v52 = v0[32];
    v53 = v0[30];
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v93[0] = swift_slowAlloc();
    *v54 = 136315650;
    *(v54 + 4) = sub_293C0(v53, v51, v93);
    *(v54 + 12) = 2080;

    v56 = sub_5785C();
    v58 = v57;

    v59 = sub_293C0(v56, v58, v93);

    *(v54 + 14) = v59;
    *(v54 + 22) = 2112;
    *(v54 + 24) = v52;
    *v55 = v52;
    v60 = v52;
    _os_log_impl(&dword_0, v49, v50, "%s: Calling into daemon to send response payload. recipientAddresses: %s, responsePayload: %@", v54, 0x20u);
    sub_2E90(v55, &qword_71828, &qword_598B0);
    v0 = v91;

    swift_arrayDestroy();
  }

  v61 = sub_5764C();
  v0[39] = v61;
  if (v61)
  {
    v62 = v0[31];
    sub_5752C();
    swift_allocObject();
    v0[40] = sub_5751C();

    v63 = swift_task_alloc();
    v0[41] = v63;
    *v63 = v0;
    v63[1] = sub_162E0;
    v64 = v0[32];
    v65 = v0[30];

    return ATDaemonConnectionManager.sendResponse(_:to:requestMessageGUID:)(v64, v45, v65, v62);
  }

  else
  {
    v66 = v0[32];
    sub_173F4();
    swift_allocError();
    *v67 = 0;
    swift_willThrow();

    v68 = v0[1];

    return v68();
  }
}

uint64_t sub_162E0()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_16C80;
  }

  else
  {

    v2 = sub_163FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_163FC()
{
  v22 = v0;
  v1 = v0[32];

  v2 = v1;
  v3 = sub_562DC();
  v4 = sub_5794C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[39];
  v8 = v0[31];
  v7 = v0[32];
  if (v5)
  {
    v9 = v0[30];
    v20 = v0[39];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v10 = 136315650;
    v12 = sub_293C0(v9, v8, &v21);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;

    v13 = sub_5785C();
    v15 = v14;

    v16 = sub_293C0(v13, v15, &v21);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2112;
    *(v10 + 24) = v7;
    *v11 = v7;
    v17 = v7;
    _os_log_impl(&dword_0, v3, v4, "%s: Updated Messages DB with response. recipientAddresses: %s, responsePayload: %@", v10, 0x20u);
    sub_2E90(v11, &qword_71828, &qword_598B0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_16660(uint64_t a1)
{
  v42 = v1;
  swift_willThrow();
  v2 = &selRef_conformsToProtocol_;
  if (qword_715B8 != -1)
  {
    swift_once();
  }

  v3 = sub_562FC();
  sub_B144(v3, qword_75758);
  swift_errorRetain();
  v4 = sub_562DC();
  v5 = sub_5792C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v41[0] = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_293C0(0xD00000000000001CLL, 0x800000000005C430, v41);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_0, v4, v5, "%s: failed to fetch family circler with error %@", v6, 0x16u);
    sub_2E90(v7, &qword_71828, &qword_598B0);

    sub_13040(v8);

    v2 = &selRef_conformsToProtocol_;
  }

  else
  {
  }

  if (v2[183] != -1)
  {
    swift_once();
  }

  sub_B144(v3, qword_75758);
  v10 = sub_562DC();
  v11 = sub_5792C();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v1[35];
  if (v12)
  {
    v14 = v1[34];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v41[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_293C0(0xD00000000000001CLL, 0x800000000005C430, v41);
    *(v15 + 12) = 2048;
    *(v15 + 14) = v14;
    _os_log_impl(&dword_0, v10, v11, "%s: current user is not in same family as requester with DSID %ld", v15, 0x16u);
    sub_13040(v16);
  }

  v17 = v1[33];
  v1[37] = v17;
  if (qword_715C8 != -1)
  {
    swift_once();
  }

  v18 = v1[32];
  v1[38] = sub_B144(v3, qword_75788);

  v19 = v18;
  v20 = sub_562DC();
  v21 = sub_5794C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = v1[31];
    v23 = v1[32];
    v24 = v1[30];
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v41[0] = swift_slowAlloc();
    *v25 = 136315650;
    *(v25 + 4) = sub_293C0(v24, v22, v41);
    *(v25 + 12) = 2080;

    v27 = sub_5785C();
    v29 = v28;

    v30 = sub_293C0(v27, v29, v41);

    *(v25 + 14) = v30;
    *(v25 + 22) = 2112;
    *(v25 + 24) = v23;
    *v26 = v23;
    v31 = v23;
    _os_log_impl(&dword_0, v20, v21, "%s: Calling into daemon to send response payload. recipientAddresses: %s, responsePayload: %@", v25, 0x20u);
    sub_2E90(v26, &qword_71828, &qword_598B0);

    swift_arrayDestroy();
  }

  v32 = sub_5764C();
  v1[39] = v32;
  if (v32)
  {
    v33 = v1[31];
    sub_5752C();
    swift_allocObject();
    v1[40] = sub_5751C();

    v34 = swift_task_alloc();
    v1[41] = v34;
    *v34 = v1;
    v34[1] = sub_162E0;
    v35 = v1[32];
    v36 = v1[30];

    return ATDaemonConnectionManager.sendResponse(_:to:requestMessageGUID:)(v35, v17, v36, v33);
  }

  else
  {
    v37 = v1[32];
    sub_173F4();
    swift_allocError();
    *v38 = 0;
    swift_willThrow();

    v39 = v1[1];

    return v39();
  }
}

uint64_t sub_16C80()
{
  v15 = v0;

  swift_errorRetain();
  v1 = sub_562DC();
  v2 = sub_5792C();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[30];
    v3 = v0[31];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v5 = 136315394;
    v8 = sub_293C0(v4, v3, &v14);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_0, v1, v2, "%s: Received error from daemon while sending response over IDS: %@", v5, 0x16u);
    sub_2E90(v6, &qword_71828, &qword_598B0);

    sub_13040(v7);
  }

  else
  {
  }

  v10 = v0[39];
  v11 = v0[32];
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_16E90(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_17508((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_2AFC(&qword_71D30, &qword_5A740);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_16F68()
{
  v1 = OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter__isWaitingForSendResult;
  v2 = sub_2AFC(&qword_71D10, &qword_59130);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter__sendResult;
  v4 = sub_2AFC(&qword_71D08, &qword_59128);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_AFDC(v0 + OBJC_IVAR____TtC13AskToMessages19ResponseTransmitter_messagesContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ResponseTransmitter(uint64_t a1)
{
  result = qword_71C50;
  if (!qword_71C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_170D0(uint64_t a1)
{
  sub_171E0();
  if (v1 <= 0x3F)
  {
    sub_17230(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MessagesContext(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_171E0()
{
  if (!qword_71C60)
  {
    v0 = sub_5664C();
    if (!v1)
    {
      atomic_store(v0, &qword_71C60);
    }
  }
}

void sub_17230(uint64_t a1)
{
  if (!qword_71C68)
  {
    sub_2C70(&unk_71C70, "jV");
    v1 = sub_5664C();
    if (!v2)
    {
      atomic_store(v1, &qword_71C68);
    }
  }
}

uint64_t sub_172A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5660C();
  *a1 = result;
  return result;
}

uint64_t sub_172F8@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  *a2 = v4;
  return result;
}

uint64_t sub_1737C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_5663C();
}

unint64_t sub_173F4()
{
  result = qword_71D18;
  if (!qword_71D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71D18);
  }

  return result;
}

uint64_t sub_17458(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_174BC()
{
  result = qword_71D28;
  if (!qword_71D28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_71D28);
  }

  return result;
}

void *sub_17508(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_17564()
{
  result = qword_71D38;
  if (!qword_71D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71D38);
  }

  return result;
}

unint64_t sub_175B8()
{
  result = qword_71D40;
  if (!qword_71D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71D40);
  }

  return result;
}

id sub_17650(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for Localization();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_176A8()
{
  v1 = sub_5695C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (v0[8] == 1)
  {
    return *v0;
  }

  sub_5793C();
  v7 = sub_56C8C();
  sub_562CC();

  sub_5694C();
  swift_getAtKeyPath();
  sub_1FAB8(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

uint64_t sub_177F4()
{
  v1 = sub_5613C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2AFC(&qword_71B18, &qword_59008);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for LegacyBalloonView(0);
  v12 = *(v0 + *(v11 + 28));
  v13 = v12;
  if (!v12)
  {
    v14 = v11;
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = v2;
    sub_5662C();

    v15 = v26;

    if (v28 != 255)
    {
      v13 = v27;
      if ((v28 & 1) == 0)
      {
        goto LABEL_12;
      }

      sub_BCE4(v27, v28);
    }

    v25 = v0;
    sub_5639C();
    v16 = *(v15 + 48);
    v17 = v16(v10, 1, v1);
    sub_2E90(v10, &qword_71B18, &qword_59008);
    if (v17 == 1)
    {
      goto LABEL_11;
    }

    sub_5639C();
    if (v16(v7, 1, v1))
    {
      sub_2E90(v7, &qword_71B18, &qword_59008);
      v18 = 0.0;
      v19 = v26;
    }

    else
    {
      v19 = v26;
      (*(v26 + 16))(v4, v7, v1);
      sub_2E90(v7, &qword_71B18, &qword_59008);
      sub_5611C();
      v18 = v20;
      (*(v19 + 8))(v4, v1);
    }

    sub_5612C();
    sub_5611C();
    v22 = v21;
    (*(v19 + 8))(v4, v1);
    if (v18 >= v22)
    {
LABEL_11:
      v13 = ~*(v25 + *(v14 + 40) + 32) & 1;
    }

    else
    {
      v13 = 2;
    }
  }

LABEL_12:
  v23 = v12;
  return v13;
}

id sub_17B14()
{
  v1 = type metadata accessor for MessagesContext(0);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LegacyBalloonView(0);
  sub_21F14(v0 + *(v4 + 40), v3, type metadata accessor for MessagesContext);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_21F7C(v3, type metadata accessor for MessagesContext);
  if (!Strong)
  {
    return 0;
  }

  v6 = [Strong activeConversation];

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 selectedMessage];

  if (!v7)
  {
    return 0;
  }

  v8 = [v7 isPending];

  return v8;
}
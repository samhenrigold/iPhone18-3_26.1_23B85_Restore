void sub_10007C0E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_10007C1E0()
{
  result = qword_1000E1680;
  if (!qword_1000E1680)
  {
    sub_100005818(&unk_1000E1310, &unk_10009A690);
    sub_10007D038(&qword_1000E1688, sub_10007C294, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1680);
  }

  return result;
}

unint64_t sub_10007C294()
{
  result = qword_1000E0480;
  if (!qword_1000E0480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000E0480);
  }

  return result;
}

uint64_t sub_10007C2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for ProximityCardHeaderView(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1000789FC(v9, v5, v6, v7);
}

uint64_t sub_10007C364(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007C3CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10007C42C()
{
  result = qword_1000E16A0;
  if (!qword_1000E16A0)
  {
    sub_100005818(&qword_1000E1698, &qword_10009AA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E16A0);
  }

  return result;
}

unint64_t sub_10007C4BC()
{
  result = qword_1000E16D8;
  if (!qword_1000E16D8)
  {
    sub_100005818(&qword_1000DBA20, &qword_10009AA90);
    sub_10000EE58(&qword_1000E16E0, &qword_1000E16E8, &qword_10009AA98, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E16D8);
  }

  return result;
}

uint64_t sub_10007C57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for ProximityCardHeaderView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = *(*v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*v5 + 64);
  swift_unknownObjectRelease();
  v9 = v4 + v7 + v5[12];
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 8))(v9, v10);
  type metadata accessor for ActivityIcon(0);

  sub_1000056EC(qword_1000E15D8, &qword_10009A9C8);

  return _swift_deallocObject(v4, v7 + v8, v6 | 7);
}

uint64_t sub_10007C6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  type metadata accessor for ProximityCardHeaderView(0, v5, v6, a4);
  v7 = *(v6 + 64);
  swift_unknownObjectRetain();
  v7(1, v5, v6);

  return swift_unknownObjectRelease();
}

unint64_t sub_10007C76C()
{
  result = qword_1000E1708;
  if (!qword_1000E1708)
  {
    sub_100005818(&qword_1000E1700, &qword_10009AAB8);
    sub_10000EE58(&qword_1000DC200, &qword_1000DC208, &unk_10009AAC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1708);
  }

  return result;
}

unint64_t sub_10007C840()
{
  result = qword_1000E1730;
  if (!qword_1000E1730)
  {
    sub_100005818(&qword_1000E1720, &unk_10009AB40);
    sub_10000EE58(&qword_1000E1738, &qword_1000DBA28, &qword_100092F80, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1730);
  }

  return result;
}

uint64_t sub_10007C900(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005818(a2, a3);
    a4();
    sub_10000EE58(&qword_1000DB898, &qword_1000DB8A0, &qword_10009AAA0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10007C9B0()
{
  result = qword_1000E1778;
  if (!qword_1000E1778)
  {
    sub_100005818(&qword_1000DBA30, &qword_100092F88);
    sub_10007CA3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1778);
  }

  return result;
}

unint64_t sub_10007CA3C()
{
  result = qword_1000E1780;
  if (!qword_1000E1780)
  {
    sub_100005818(&qword_1000E1788, &qword_10009ABA8);
    sub_10007CAF4();
    sub_10000EE58(&qword_1000DF010, &qword_1000DF018, &qword_10009C760, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1780);
  }

  return result;
}

unint64_t sub_10007CAF4()
{
  result = qword_1000E1790;
  if (!qword_1000E1790)
  {
    sub_100005818(&qword_1000E1798, &qword_10009ABB0);
    sub_10007CB80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1790);
  }

  return result;
}

unint64_t sub_10007CB80()
{
  result = qword_1000E17A0;
  if (!qword_1000E17A0)
  {
    sub_100005818(&qword_1000E17A8, &qword_10009ABB8);
    sub_10000EE58(&qword_1000E17B0, &qword_1000E17B8, &unk_10009ABC0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E17A0);
  }

  return result;
}

unint64_t sub_10007CC38()
{
  result = qword_1000E17D0;
  if (!qword_1000E17D0)
  {
    sub_100005818(&qword_1000DBA48, &unk_10009AB60);
    sub_10007CCF0();
    sub_10000EE58(&qword_1000DB898, &qword_1000DB8A0, &qword_10009AAA0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E17D0);
  }

  return result;
}

unint64_t sub_10007CCF0()
{
  result = qword_1000E17D8;
  if (!qword_1000E17D8)
  {
    sub_100005818(&qword_1000DBA40, &qword_10009AB70);
    sub_10007CD7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E17D8);
  }

  return result;
}

unint64_t sub_10007CD7C()
{
  result = qword_1000E17E0;
  if (!qword_1000E17E0)
  {
    sub_100005818(&qword_1000E17C8, &qword_10009ABD8);
    sub_10007D038(&qword_1000E17E8, type metadata accessor for ActivityIconView, &unk_100096C94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E17E0);
  }

  return result;
}

unint64_t sub_10007CE38()
{
  result = qword_1000E1810;
  if (!qword_1000E1810)
  {
    sub_100005818(&qword_1000E1808, &qword_10009AC08);
    sub_10007CEC4();
    sub_10007CF7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1810);
  }

  return result;
}

unint64_t sub_10007CEC4()
{
  result = qword_1000E1818;
  if (!qword_1000E1818)
  {
    sub_100005818(&qword_1000DBA58, &unk_100092F90);
    sub_10007CF7C();
    sub_10000EE58(&qword_1000DB898, &qword_1000DB8A0, &qword_10009AAA0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1818);
  }

  return result;
}

unint64_t sub_10007CF7C()
{
  result = qword_1000E1820;
  if (!qword_1000E1820)
  {
    sub_100005818(&qword_1000DBA50, &qword_10009AC00);
    sub_10007D038(&qword_1000D9C48, type metadata accessor for MovieView, &unk_100090E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1820);
  }

  return result;
}

uint64_t sub_10007D038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007D080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10007D0EC()
{
  result = qword_1000E1828;
  if (!qword_1000E1828)
  {
    sub_100005818(&qword_1000E1690, &qword_10009AA58);
    sub_100005818(&qword_1000E1668, &qword_10009AA48);
    sub_100005818(&unk_1000E1310, &unk_10009A690);
    sub_10000EE58(&qword_1000E1678, &qword_1000E1668, &qword_10009AA48, &protocol conformance descriptor for HStack<A>);
    sub_10007C1E0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1828);
  }

  return result;
}

uint64_t sub_10007D21C(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_10007D23C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3C && *(a1 + 57))
  {
    return (*a1 + 60);
  }

  v3 = ((*(a1 + 56) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 56) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x3B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10007D290(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3B)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 60;
    if (a3 >= 0x3C)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3C)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 56) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_10007D310(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 56) = *(result + 56) & 3 | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0x80;
  }

  return result;
}

unint64_t sub_10007D35C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 56);
  v4 = v3 >> 5;
  if (v3 >> 5 <= 1)
  {
    if (!v4)
    {
      _StringGuts.grow(_:)(22);

      v16 = 0xD000000000000012;
      v7._countAndFlagsBits = v1;
      v7._object = v2;
      String.append(_:)(v7);
LABEL_19:
      v14._countAndFlagsBits = 10528;
      v14._object = 0xE200000000000000;
      String.append(_:)(v14);
      return v16;
    }

    _StringGuts.grow(_:)(17);
    v15 = 0;
    v12._countAndFlagsBits = 0x202864656C696166;
    v12._object = 0xEE003D726F727265;
    String.append(_:)(v12);
    _print_unlocked<A, B>(_:_:)();
    v9 = 32;
    v10 = 0xE100000000000000;
LABEL_16:
    String.append(_:)(*&v9);
    return v15;
  }

  if (v4 == 2)
  {
    _StringGuts.grow(_:)(19);

    v15 = 0x726F737365636361;
    v8._countAndFlagsBits = sub_100071978();
    String.append(_:)(v8);

    v9 = 10528;
    v10 = 0xE200000000000000;
    goto LABEL_16;
  }

  if (v4 == 3)
  {
    v5 = 0x65756E69746E6F63;
    _StringGuts.grow(_:)(19);

    v16 = 0x6F69746163756465;
    if (v1)
    {
      if (v1 == 1)
      {
        v6 = 0xEF74756F656D6954;
      }

      else
      {
        v5 = 0xD000000000000012;
        v6 = 0x80000001000A5B70;
      }
    }

    else
    {
      v6 = 0xEE00646570706154;
    }

    v13._countAndFlagsBits = v5;
    v13._object = v6;
    String.append(_:)(v13);

    goto LABEL_19;
  }

  if ((v2 | v1 | *(v0 + 16) | *(v0 + 24) | *(v0 + 32) | *(v0 + 40) | *(v0 + 48)) == 0 && v3 == 128)
  {
    return 0x69746E6573657270;
  }

  else
  {
    return 0x65746E6573657270;
  }
}

uint64_t sub_10007D660(void *a1)
{
  v2 = v1;
  v4 = sub_1000056EC(&qword_1000E18B0, &qword_10009AE20);
  v55 = *(v4 - 8);
  *&v56 = v4;
  __chkstk_darwin(v4);
  v54 = &v44 - v5;
  v53 = sub_1000056EC(&qword_1000E18B8, &qword_10009AE28);
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v51 = &v44 - v6;
  v57 = sub_1000056EC(&qword_1000E18C0, &qword_10009AE30);
  v50 = *(v57 - 8);
  __chkstk_darwin(v57);
  v8 = &v44 - v7;
  v9 = sub_1000056EC(&qword_1000E18C8, &qword_10009AE38);
  v49 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v44 - v10;
  v48 = sub_1000056EC(&qword_1000E18D0, &qword_10009AE40);
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v44 - v12;
  v45 = sub_1000056EC(&qword_1000E18D8, &qword_10009AE48);
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v14 = &v44 - v13;
  v15 = sub_1000056EC(&qword_1000E18E0, &qword_10009AE50);
  v60 = *(v15 - 8);
  v61 = v15;
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  sub_100006768(a1, a1[3]);
  sub_10007F460();
  v59 = v17;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = *v2;
  v19 = v2[1];
  v20 = *(v2 + 4);
  v21 = *(v2 + 5);
  v22 = *(v2 + 6);
  v23 = *(v2 + 56);
  v24 = v23 >> 5;
  if (v23 >> 5 <= 1)
  {
    v30 = v57;
    v58 = v18;
    if (v24)
    {
      LOBYTE(v62) = 3;
      v56 = v19;
      sub_10007F604();
      v40 = v8;
      v41 = v61;
      v42 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v62 = v58;
      v63 = v56;
      v64 = v20;
      v65 = v21;
      v66 = v22;
      sub_100073FB8();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v50 + 8))(v40, v30);
      return (*(v60 + 8))(v42, v41);
    }

    else
    {
      LOBYTE(v62) = 2;
      sub_10007F658();
      v31 = v61;
      v32 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v49 + 8))(v11, v9);
      return (*(v60 + 8))(v32, v31);
    }
  }

  else if (v24 == 2)
  {
    v33 = v23 & 0x1F;
    LOBYTE(v62) = 4;
    v58 = v18;
    v56 = v19;
    sub_10007F55C();
    v34 = v51;
    v35 = v61;
    v36 = v59;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v62 = v58;
    v63 = v56;
    v64 = v20;
    v65 = v21;
    v66 = v22;
    v67 = v33;
    sub_10007F7A8();
    v37 = v53;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v52 + 8))(v34, v37);
    return (*(v60 + 8))(v36, v35);
  }

  else if (v24 == 3)
  {
    LOBYTE(v62) = 5;
    v58 = v18;
    sub_10007F4B4();
    v25 = v54;
    v26 = v61;
    v27 = v59;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LOBYTE(v62) = v58;
    sub_10007F754();
    v28 = v56;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v55 + 8))(v25, v28);
    return (*(v60 + 8))(v27, v26);
  }

  else
  {
    if (v19 | v18 | *(&v18 + 1) | *(&v19 + 1) | v20 | v21 | v22 || v23 != 128)
    {
      LOBYTE(v62) = 1;
      sub_10007F6AC();
      v43 = v46;
      v38 = v61;
      v39 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v47 + 8))(v43, v48);
    }

    else
    {
      LOBYTE(v62) = 0;
      sub_10007F700();
      v38 = v61;
      v39 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v44 + 8))(v14, v45);
    }

    return (*(v60 + 8))(v39, v38);
  }
}

uint64_t sub_10007DEA0(uint64_t a1)
{
  v2 = sub_10007F55C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007DEDC(uint64_t a1)
{
  v2 = sub_10007F55C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007DF18()
{
  v1 = *v0;
  v2 = 0x69746E6573657270;
  v3 = 0x64656C696166;
  v4 = 0x726F737365636361;
  if (v1 != 4)
  {
    v4 = 0x6F69746163756465;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65746E6573657270;
  if (v1 != 1)
  {
    v5 = 0x657373696D736964;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10007DFF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10007E6C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10007E020(uint64_t a1)
{
  v2 = sub_10007F460();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007E05C(uint64_t a1)
{
  v2 = sub_10007F460();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007E098(uint64_t a1)
{
  v2 = sub_10007F658();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007E0D4(uint64_t a1)
{
  v2 = sub_10007F658();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007E110(uint64_t a1)
{
  v2 = sub_10007F4B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007E14C(uint64_t a1)
{
  v2 = sub_10007F4B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007E188(uint64_t a1)
{
  v2 = sub_10007F604();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007E1C4(uint64_t a1)
{
  v2 = sub_10007F604();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007E200(uint64_t a1)
{
  v2 = sub_10007F6AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007E23C(uint64_t a1)
{
  v2 = sub_10007F6AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007E278(uint64_t a1)
{
  v2 = sub_10007F700();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007E2B4(uint64_t a1)
{
  v2 = sub_10007F700();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10007E2F0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_10007E8E0(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

BOOL sub_10007E358(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_10007E3B4(v5, v7);
}

BOOL sub_10007E3B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 56);
  v3 = v2 >> 5;
  if (v2 >> 5 <= 1)
  {
    if (v3)
    {
      if ((a2[7] & 0xE0) == 0x20)
      {
        return 1;
      }
    }

    else if (*(a2 + 56) < 0x20u)
    {
      return 1;
    }
  }

  else
  {
    v5 = *a1;
    v4 = a1[1];
    v6 = a1[2];
    v7 = a1[3];
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    if (v3 == 2)
    {
      v12 = *(a2 + 56);
      if ((v12 & 0xE0) == 0x40)
      {
        v13 = v12 & 0x1F;
        v14 = v2 & 0x1F;
        if (v14)
        {
          if (v14 == 1)
          {
            if (v13 == 1)
            {
              return 1;
            }
          }

          else
          {
            v20 = *a2;
            v19 = a2[1];
            v22 = a2[2];
            v21 = a2[3];
            v24 = a2[4];
            v23 = a2[5];
            v25 = a2[6];
            v26 = v8 | v9 | v10;
            if (v6 | v4 | v5 | v7 | v26)
            {
              v27 = v6 | v4 | v7 | v26;
              if (v5 != 1 || v27)
              {
                if (v5 != 2 || v27)
                {
                  if (v5 != 3 || v27)
                  {
                    if (v5 != 4 || v27)
                    {
                      if (v13 == 2 && v20 == 5 && !(v22 | v19 | v21 | v24 | v23 | v25))
                      {
                        return 1;
                      }
                    }

                    else if (v13 == 2 && v20 == 4 && !(v22 | v19 | v21 | v24 | v23 | v25))
                    {
                      return 1;
                    }
                  }

                  else if (v13 == 2 && v20 == 3 && !(v22 | v19 | v21 | v24 | v23 | v25))
                  {
                    return 1;
                  }
                }

                else if (v13 == 2 && v20 == 2 && !(v22 | v19 | v21 | v24 | v23 | v25))
                {
                  return 1;
                }
              }

              else if (v13 == 2 && v20 == 1 && !(v22 | v19 | v21 | v24 | v23 | v25))
              {
                return 1;
              }
            }

            else if (v13 == 2 && !(v22 | v19 | v20 | v21 | v24 | v23 | v25))
            {
              return 1;
            }
          }
        }

        else if ((v12 & 0x1F) == 0)
        {
          return 1;
        }
      }
    }

    else if (v3 == 3)
    {
      if ((a2[7] & 0xE0) == 0x60)
      {
        return *a2 == v5;
      }
    }

    else if (v6 | v4 | v5 | v7 | v8 | v9 | v10 || v2 != 128)
    {
      v17 = *(a2 + 56);
      if ((v17 & 0xE0) == 0x80 && v17 == 128 && *a2 == 1)
      {
        v18 = vorrq_s8(*(a2 + 3), *(a2 + 5));
        if (!(*&vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)) | a2[2] | a2[1]))
        {
          return 1;
        }
      }
    }

    else
    {
      v15 = *(a2 + 56);
      if ((v15 & 0xE0) == 0x80 && v15 == 128)
      {
        v16 = vorrq_s8(*(a2 + 3), *(a2 + 5));
        if (!(*&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)) | a2[2] | a2[1] | *a2))
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10007E6C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746E6573657270 && a2 == 0xEA0000000000676ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746E6573657270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657373696D736964 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00007765695679 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F69746163756465 && a2 == 0xED0000776569566ELL)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

double sub_10007E8E0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v61 = sub_1000056EC(&qword_1000E1830, &qword_10009ADE0);
  v63 = *(v61 - 8);
  __chkstk_darwin(v61);
  v68 = &v49 - v3;
  v59 = sub_1000056EC(&qword_1000E1838, &qword_10009ADE8);
  v62 = *(v59 - 8);
  __chkstk_darwin(v59);
  v67 = &v49 - v4;
  v57 = sub_1000056EC(&qword_1000E1840, &qword_10009ADF0);
  v60 = *(v57 - 8);
  __chkstk_darwin(v57);
  v66 = &v49 - v5;
  v55 = sub_1000056EC(&qword_1000E1848, &qword_10009ADF8);
  v58 = *(v55 - 8);
  __chkstk_darwin(v55);
  v65 = &v49 - v6;
  v56 = sub_1000056EC(&qword_1000E1850, &qword_10009AE00);
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v8 = &v49 - v7;
  v9 = sub_1000056EC(&qword_1000E1858, &qword_10009AE08);
  v53 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  v12 = sub_1000056EC(&qword_1000E1860, &unk_10009AE10);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = a1[3];
  v81 = a1;
  sub_100006768(a1, v16);
  sub_10007F460();
  v17 = v69;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    goto LABEL_12;
  }

  v18 = v11;
  v50 = v9;
  v51 = v8;
  v20 = v65;
  v19 = v66;
  v21 = v67;
  v22 = v68;
  v52 = 0;
  *&v69 = v13;
  v23 = v15;
  v24 = KeyedDecodingContainer.allKeys.getter();
  v25 = (2 * *(v24 + 16)) | 1;
  v77 = v24;
  v78 = v24 + 32;
  v79 = 0;
  v80 = v25;
  v26 = sub_100074830();
  if (v26 == 6 || v79 != v80 >> 1)
  {
    v33 = type metadata accessor for DecodingError();
    swift_allocError();
    v35 = v34;
    sub_1000056EC(&qword_1000DBA80, &qword_100094060);
    *v35 = &type metadata for CardEvent;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v33 - 8) + 104))(v35, enum case for DecodingError.typeMismatch(_:), v33);
    swift_willThrow();
    goto LABEL_10;
  }

  if (v26 > 2u)
  {
    if (v26 == 3)
    {
      LOBYTE(v70) = 3;
      sub_10007F604();
      v40 = v52;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v64;
      if (!v40)
      {
        sub_100073EBC();
        v41 = v57;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v52 = 0;
        (*(v60 + 8))(v19, v41);
        (*(v69 + 8))(v23, v12);
        swift_unknownObjectRelease();
        v31 = v70;
        v29 = v71;
        v12 = v72;
        v21 = v73;
        v22 = v74;
        v30 = 32;
        v69 = v75;
        goto LABEL_26;
      }
    }

    else
    {
      v32 = v64;
      if (v26 == 4)
      {
        LOBYTE(v70) = 4;
        sub_10007F55C();
        v37 = v52;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v37)
        {
          sub_10007F5B0();
          v38 = v59;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v52 = 0;
          (*(v62 + 8))(v21, v38);
          (*(v69 + 8))(v23, v12);
          swift_unknownObjectRelease();
          v31 = v70;
          v29 = v71;
          v12 = v72;
          v21 = v73;
          v22 = v74;
          v69 = v75;
          v30 = v76 & 3 | 0x40;
          goto LABEL_26;
        }
      }

      else
      {
        LOBYTE(v70) = 5;
        sub_10007F4B4();
        v46 = v52;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v46)
        {
          sub_10007F508();
          v47 = v61;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v29 = 0;
          v52 = 0;
          (*(v63 + 8))(v22, v47);
          (*(v69 + 8))(v23, v12);
          swift_unknownObjectRelease();
          v31 = v70;
          v30 = 96;
          goto LABEL_26;
        }
      }
    }

    (*(v69 + 8))(v23, v12);
    goto LABEL_11;
  }

  if (!v26)
  {
    LOBYTE(v70) = 0;
    sub_10007F700();
    v39 = v52;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v39;
    if (!v39)
    {
      v52 = 0;
      (*(v53 + 8))(v18, v50);
      (*(v69 + 8))(v15, v12);
      swift_unknownObjectRelease();
      v31 = 0;
      v12 = 0;
      v21 = 0;
      v22 = 0;
      v69 = 0u;
      v30 = 0x80;
      v32 = v64;
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  if (v26 != 1)
  {
    LOBYTE(v70) = 2;
    sub_10007F658();
    v22 = v20;
    v42 = v52;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v42)
    {
      v43 = v55;
      v44 = KeyedDecodingContainer.decode(_:forKey:)();
      v45 = v69;
      v52 = 0;
      v31 = v44;
      v29 = v48;
      (*(v58 + 8))(v22, v43);
      (*(v45 + 8))(v15, v12);
      swift_unknownObjectRelease();
      v30 = 0;
      v32 = v64;
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  LOBYTE(v70) = 1;
  sub_10007F6AC();
  v27 = v51;
  v28 = v52;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v29 = v28;
  if (v28)
  {
LABEL_10:
    (*(v69 + 8))(v15, v12);
LABEL_11:
    swift_unknownObjectRelease();
LABEL_12:
    sub_10000529C(v81);
    return result;
  }

  v52 = 0;
  (*(v54 + 8))(v27, v56);
  (*(v69 + 8))(v15, v12);
  swift_unknownObjectRelease();
  v12 = 0;
  v21 = 0;
  v22 = 0;
  v69 = 0u;
  v30 = 0x80;
  v31 = 1;
  v32 = v64;
LABEL_26:
  sub_10000529C(v81);
  *v32 = v31;
  *(v32 + 8) = v29;
  *(v32 + 16) = v12;
  *(v32 + 24) = v21;
  *(v32 + 32) = v22;
  result = *&v69;
  *(v32 + 40) = v69;
  *(v32 + 56) = v30;
  return result;
}

unint64_t sub_10007F460()
{
  result = qword_1000E1868;
  if (!qword_1000E1868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1868);
  }

  return result;
}

unint64_t sub_10007F4B4()
{
  result = qword_1000E1870;
  if (!qword_1000E1870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1870);
  }

  return result;
}

unint64_t sub_10007F508()
{
  result = qword_1000E1878;
  if (!qword_1000E1878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1878);
  }

  return result;
}

unint64_t sub_10007F55C()
{
  result = qword_1000E1880;
  if (!qword_1000E1880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1880);
  }

  return result;
}

unint64_t sub_10007F5B0()
{
  result = qword_1000E1888;
  if (!qword_1000E1888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1888);
  }

  return result;
}

unint64_t sub_10007F604()
{
  result = qword_1000E1890;
  if (!qword_1000E1890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1890);
  }

  return result;
}

unint64_t sub_10007F658()
{
  result = qword_1000E1898;
  if (!qword_1000E1898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1898);
  }

  return result;
}

unint64_t sub_10007F6AC()
{
  result = qword_1000E18A0;
  if (!qword_1000E18A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E18A0);
  }

  return result;
}

unint64_t sub_10007F700()
{
  result = qword_1000E18A8;
  if (!qword_1000E18A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E18A8);
  }

  return result;
}

unint64_t sub_10007F754()
{
  result = qword_1000E18E8;
  if (!qword_1000E18E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E18E8);
  }

  return result;
}

unint64_t sub_10007F7A8()
{
  result = qword_1000E18F0;
  if (!qword_1000E18F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E18F0);
  }

  return result;
}

unint64_t sub_10007F870()
{
  result = qword_1000E18F8;
  if (!qword_1000E18F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E18F8);
  }

  return result;
}

unint64_t sub_10007F8C8()
{
  result = qword_1000E1900;
  if (!qword_1000E1900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1900);
  }

  return result;
}

unint64_t sub_10007F920()
{
  result = qword_1000E1908;
  if (!qword_1000E1908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1908);
  }

  return result;
}

unint64_t sub_10007F978()
{
  result = qword_1000E1910;
  if (!qword_1000E1910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1910);
  }

  return result;
}

unint64_t sub_10007F9D0()
{
  result = qword_1000E1918;
  if (!qword_1000E1918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1918);
  }

  return result;
}

unint64_t sub_10007FA28()
{
  result = qword_1000E1920;
  if (!qword_1000E1920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1920);
  }

  return result;
}

unint64_t sub_10007FA80()
{
  result = qword_1000E1928;
  if (!qword_1000E1928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1928);
  }

  return result;
}

unint64_t sub_10007FAD8()
{
  result = qword_1000E1930;
  if (!qword_1000E1930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1930);
  }

  return result;
}

unint64_t sub_10007FB30()
{
  result = qword_1000E1938;
  if (!qword_1000E1938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1938);
  }

  return result;
}

unint64_t sub_10007FB88()
{
  result = qword_1000E1940;
  if (!qword_1000E1940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1940);
  }

  return result;
}

unint64_t sub_10007FBE0()
{
  result = qword_1000E1948;
  if (!qword_1000E1948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1948);
  }

  return result;
}

unint64_t sub_10007FC38()
{
  result = qword_1000E1950;
  if (!qword_1000E1950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1950);
  }

  return result;
}

unint64_t sub_10007FC90()
{
  result = qword_1000E1958;
  if (!qword_1000E1958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1958);
  }

  return result;
}

unint64_t sub_10007FCE8()
{
  result = qword_1000E1960;
  if (!qword_1000E1960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1960);
  }

  return result;
}

unint64_t sub_10007FD40()
{
  result = qword_1000E1968;
  if (!qword_1000E1968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1968);
  }

  return result;
}

unint64_t sub_10007FD98()
{
  result = qword_1000E1970;
  if (!qword_1000E1970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1970);
  }

  return result;
}

unint64_t sub_10007FDF0()
{
  result = qword_1000E1978;
  if (!qword_1000E1978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1978);
  }

  return result;
}

unint64_t sub_10007FE48()
{
  result = qword_1000E1980;
  if (!qword_1000E1980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1980);
  }

  return result;
}

unint64_t sub_10007FEA0()
{
  result = qword_1000E1988;
  if (!qword_1000E1988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1988);
  }

  return result;
}

uint64_t sub_10007FEF4()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100080CBC();
  static DispatchQoS.default.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_100080D08(&qword_1000E1A48, 255, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_1000056EC(&qword_1000E1A50, qword_10009B670);
  sub_100080D50();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1000F3D18 = result;
  return result;
}

uint64_t sub_100080130()
{
  type metadata accessor for WorkActor();
  v0 = swift_allocObject();
  if (qword_1000D9800 != -1)
  {
    swift_once();
  }

  result = OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();
  *(v0 + 16) = result;
  *(v0 + 24) = v2;
  qword_1000F3D20 = v0;
  return result;
}

uint64_t sub_1000801C0()
{
  if (qword_1000D9808 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10008021C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

uint64_t sub_100080254()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2);
  LODWORD(result) = (*(v3 + 88))(v5, v2);
  if (result == enum case for DispatchTimeInterval.seconds(_:))
  {
    v7 = *(v3 + 96);
    v3 += 96;
    v7(v5, v2);
    result = 1000000000 * *v5;
    if ((*v5 * 1000000000) >> 64 == result >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    v8 = *(v3 + 96);
    v3 += 96;
    v8(v5, v2);
    result = 1000000 * *v5;
    if ((*v5 * 1000000) >> 64 == result >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == enum case for DispatchTimeInterval.microseconds(_:))
  {
    v9 = *(v3 + 96);
    v3 += 96;
    v9(v5, v2);
    result = 1000 * *v5;
    if ((*v5 * 1000) >> 64 == result >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v3 + 96))(v5, v2);
    return *v5;
  }

  else if (result == enum case for DispatchTimeInterval.never(_:))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

BOOL static DispatchTimeInterval.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = enum case for DispatchTimeInterval.never(_:);
  v7 = *(v3 + 104);
  v7(v5, enum case for DispatchTimeInterval.never(_:), v2);
  v8 = static DispatchTimeInterval.== infix(_:_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v8)
  {
    return 0;
  }

  v7(v5, v6, v2);
  v11 = static DispatchTimeInterval.== infix(_:_:)();
  v9(v5, v2);
  if (v11)
  {
    return 1;
  }

  v12 = sub_100080254();
  return v12 < sub_100080254();
}

BOOL sub_100080680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  __chkstk_darwin(a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = enum case for DispatchTimeInterval.never(_:);
  v8 = *(v4 + 104);
  (v8)(v6, enum case for DispatchTimeInterval.never(_:));
  v9 = static DispatchTimeInterval.== infix(_:_:)();
  v10 = *(v4 + 8);
  v10(v6, a3);
  if (v9)
  {
    return 0;
  }

  v8(v6, v7, a3);
  v12 = static DispatchTimeInterval.== infix(_:_:)();
  v10(v6, a3);
  if (v12)
  {
    return 1;
  }

  v13 = sub_100080254();
  return v13 < sub_100080254();
}

BOOL sub_1000807F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  __chkstk_darwin(a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = enum case for DispatchTimeInterval.never(_:);
  v8 = *(v4 + 104);
  (v8)(v6, enum case for DispatchTimeInterval.never(_:));
  v9 = static DispatchTimeInterval.== infix(_:_:)();
  v10 = *(v4 + 8);
  v10(v6, a3);
  if (v9)
  {
    return 1;
  }

  v8(v6, v7, a3);
  v12 = static DispatchTimeInterval.== infix(_:_:)();
  v10(v6, a3);
  if (v12)
  {
    return 0;
  }

  v13 = sub_100080254();
  return v13 >= sub_100080254();
}

BOOL sub_100080968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  __chkstk_darwin(a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = enum case for DispatchTimeInterval.never(_:);
  v8 = *(v4 + 104);
  (v8)(v6, enum case for DispatchTimeInterval.never(_:));
  v9 = static DispatchTimeInterval.== infix(_:_:)();
  v10 = *(v4 + 8);
  v10(v6, a3);
  if (v9)
  {
    return 1;
  }

  v8(v6, v7, a3);
  v12 = static DispatchTimeInterval.== infix(_:_:)();
  v10(v6, a3);
  if (v12)
  {
    return 0;
  }

  v13 = sub_100080254();
  return v13 >= sub_100080254();
}

BOOL sub_100080ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  __chkstk_darwin(a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = enum case for DispatchTimeInterval.never(_:);
  v8 = *(v4 + 104);
  (v8)(v6, enum case for DispatchTimeInterval.never(_:));
  v9 = static DispatchTimeInterval.== infix(_:_:)();
  v10 = *(v4 + 8);
  v10(v6, a3);
  if (v9)
  {
    return 0;
  }

  v8(v6, v7, a3);
  v12 = static DispatchTimeInterval.== infix(_:_:)();
  v10(v6, a3);
  if (v12)
  {
    return 1;
  }

  v13 = sub_100080254();
  return v13 < sub_100080254();
}

unint64_t sub_100080CBC()
{
  result = qword_1000E1A40;
  if (!qword_1000E1A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000E1A40);
  }

  return result;
}

uint64_t sub_100080D08(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_100080D50()
{
  result = qword_1000E1A58[0];
  if (!qword_1000E1A58[0])
  {
    sub_100005818(&qword_1000E1A50, qword_10009B670);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000E1A58);
  }

  return result;
}

BOOL sub_100080DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for Weak(0, a3, a4, a4);
  v5 = sub_100080E2C(v4);
  return v5 == sub_100080E2C(v4);
}

Swift::Int sub_100080E2C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100080E80(v3, a1);
  return Hasher._finalize()();
}

void sub_100080E80(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v5 = &v8 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    dispatch thunk of Identifiable.id.getter();
    swift_unknownObjectRelease();
    swift_getAssociatedConformanceWitness();
    v7 = dispatch thunk of Hashable.hashValue.getter();
    (*(v3 + 8))(v5, AssociatedTypeWitness);
  }

  else
  {
    v9 = 0;
    swift_stdlib_random();
    v7 = v9;
  }

  Hasher._combine(_:)(v7);
}

Swift::Int sub_100080FF8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  sub_100080E80(v4, a2);
  return Hasher._finalize()();
}

uint64_t sub_100081054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100081090(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000810B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1000810D8(double a1)
{
  v2 = [objc_allocWithZone(NSNumberFormatter) init];
  [v2 setMaximumFractionDigits:3];
  if (a1 >= 0.001)
  {
    v4 = [objc_allocWithZone(NSNumber) initWithDouble:a1];
    v5 = [v2 stringFromNumber:v4];

    if (v5)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = v6;
      v7._countAndFlagsBits = 115;
      v7._object = 0xE100000000000000;
      String.append(_:)(v7);
    }

    else
    {
      v8 = 0;
      Double.write<A>(to:)();
    }

    return v8;
  }

  else
  {

    return 0x736D31203CLL;
  }
}

uint64_t sub_100081204(void *a1)
{
  v3 = sub_1000056EC(&qword_1000E1B08, &qword_10009B910);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100006768(a1, a1[3]);
  sub_100081F00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1000813C4()
{
  v1 = 0x646F43726F727265;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x6D6F44726F727265;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100081450@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100081AE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100081478(uint64_t a1)
{
  v2 = sub_100081F00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000814B4(uint64_t a1)
{
  v2 = sub_100081F00();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000814F0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100081C5C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_100081560(uint64_t a1)
{
  v2 = sub_100081F54();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10008159C(uint64_t a1)
{
  v2 = sub_100081F54();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000815D8(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v6 = a2[3];
  v7 = a2[4];
  v9 = a2[5];
  v8 = a2[6];
  if (a1[1] == a2[1] && a1[2] == a2[2] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v2 == v6 && v4 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    if (v5)
    {
      if (v8 && (v3 == v9 && v5 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1000816E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  *&v25[0] = a1;
  swift_errorRetain();
  sub_1000056EC(&qword_1000E0F08, &qword_1000999E8);
  if (swift_dynamicCast())
  {

    v4 = v28[0];
    v5 = v28[1];
    v6 = v28[2];
    v7 = v29;
    v8 = v30;
    v9 = v31;
    v10 = v32;
  }

  else
  {
    v27 = a1;
    swift_errorRetain();
    sub_1000056EC(&qword_1000E1AE0, &qword_10009B768);
    if (swift_dynamicCast())
    {
      sub_10002AF0C(v25, v28);
      v11 = _convertErrorToNSError(_:)();
      v24 = [v11 code];
      v12 = [v11 domain];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v13;

      sub_100006768(v28, v29);
      v7 = Error.localizedDescription.getter();
      v8 = v14;
      sub_100006768(v28, v29);
      v9 = dispatch thunk of LocalizedError.failureReason.getter();
      v10 = v15;

      sub_10000529C(v28);
    }

    else
    {
      v26 = 0;
      memset(v25, 0, sizeof(v25));
      sub_10008197C(v25);
      v16 = _convertErrorToNSError(_:)();
      v24 = [v16 code];
      v17 = [v16 domain];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v18;

      v19 = [v16 localizedDescription];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v20;

      v21 = [v16 localizedFailureReason];
      if (v21)
      {
        v22 = v21;
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v23;
      }

      else
      {

        v10 = 0;
        v9 = 0;
      }
    }

    v4 = v24;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
}

uint64_t sub_10008197C(uint64_t a1)
{
  v2 = sub_1000056EC(&qword_1000E1AE8, &qword_10009B770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000819E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100081A2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100081A88()
{
  result = qword_1000E1AF0;
  if (!qword_1000E1AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1AF0);
  }

  return result;
}

uint64_t sub_100081AE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000A6250 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001000A6270 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_100081C5C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000056EC(&qword_1000E1AF8, &qword_10009B908);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_100006768(a1, a1[3]);
  sub_100081F00();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000529C(a1);
  }

  else
  {
    v29 = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v28 = 1;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    v25 = v10;
    v27 = 2;
    v23 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v13;
    v26 = 3;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = v15;
    v17 = *(v6 + 8);
    v22 = v14;
    v17(v8, v5);

    v18 = v24;

    sub_10000529C(a1);

    v19 = v25;
    *a2 = v9;
    a2[1] = v19;
    v20 = v22;
    v21 = v23;
    a2[2] = v12;
    a2[3] = v21;
    a2[4] = v18;
    a2[5] = v20;
    a2[6] = v16;
  }
}

unint64_t sub_100081F00()
{
  result = qword_1000E1B00;
  if (!qword_1000E1B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1B00);
  }

  return result;
}

unint64_t sub_100081F54()
{
  result = qword_1000E1B10;
  if (!qword_1000E1B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1B10);
  }

  return result;
}

unint64_t sub_100081FBC()
{
  result = qword_1000E1B18;
  if (!qword_1000E1B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1B18);
  }

  return result;
}

unint64_t sub_100082014()
{
  result = qword_1000E1B20;
  if (!qword_1000E1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1B20);
  }

  return result;
}

unint64_t sub_10008206C()
{
  result = qword_1000E1B28;
  if (!qword_1000E1B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1B28);
  }

  return result;
}

uint64_t sub_1000820D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000056EC(&qword_1000DBF90, &qword_100097670);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100052798(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000A628(v11, &qword_1000DBF90, &qword_100097670);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
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

      sub_10000A628(a3, &qword_1000DBF90, &qword_100097670);

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

  sub_10000A628(a3, &qword_1000DBF90, &qword_100097670);
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

uint64_t sub_1000823C0(void *a1)
{
  v2 = [a1 userInfo];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = sub_1000450CC(v11), (v6 & 1) == 0))
  {

    sub_10000EEEC(v11);
LABEL_8:
    v12 = 0u;
    v13 = 0u;
    goto LABEL_9;
  }

  sub_10000A150(*(v4 + 56) + 32 * v5, &v12);
  sub_10000EEEC(v11);

  if (!*(&v13 + 1))
  {
LABEL_9:
    sub_10000A628(&v12, &qword_1000D9E38, &qword_100091570);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v7 = v11[0];
    v8 = v11[1];
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    type metadata accessor for PCUserAlertPresentationContext(0);
    sub_10008547C(&qword_1000DB470, type metadata accessor for PCUserAlertPresentationContext, &protocol conformance descriptor for PCUserAlertPresentationContext);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    return sub_100008A9C(v7, v8);
  }

LABEL_10:
  sub_1000056EC(&qword_1000E1B80, &qword_10009BA98);
  sub_10000EE58(&qword_1000E1B88, &qword_1000E1B80, &qword_10009BA98, &unk_10009C950);
  swift_allocError();
  *v10 = 0xD000000000000013;
  v10[1] = 0x80000001000A62E0;
  return swift_willThrow();
}

uint64_t sub_100082628()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000E1B30);
  sub_1000047A0(v0, qword_1000E1B30);
  return Logger.init(subsystem:category:)();
}

void sub_1000826A8(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for PCUserAlertPresentationContext(0);
  __chkstk_darwin(v8 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D9810 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_1000047A0(v11, qword_1000E1B30);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v25[1] = v12;
    v25[3] = a3;
    v26 = a2;
    v16 = 7104878;
    v17 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_1000343F8(0xD00000000000001BLL, 0x80000001000A1160, v28);
    *(v17 + 12) = 2080;
    v25[2] = v4;
    if (a1 && (v18 = [v13 userInfo]) != 0)
    {
      v19 = v18;
      v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = v20;
      sub_1000056EC(qword_1000DA200, &unk_100091790);
      v16 = String.init<A>(describing:)();
      v22 = v21;
    }

    else
    {
      v22 = 0xE300000000000000;
    }

    v23 = sub_1000343F8(v16, v22, v28);

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s: context=%s", v17, 0x16u);
    swift_arrayDestroy();

    a2 = v26;
  }

  else
  {
  }

  if (a1)
  {
    sub_1000823C0(v13);
    sub_100082F44(v10);
    v24 = sub_100024270(v10);
    if (!a2)
    {
      while (1)
      {
        __break(1u);
      }
    }

    a2(v24);
  }

  else
  {
    __break(1u);
  }
}

double sub_100082B68(uint64_t a1)
{
  v2 = v1;
  if (qword_1000D9810 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000047A0(v4, qword_1000E1B30);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1000343F8(0x5F28656C646E6168, 0xEA0000000000293ALL, aBlock);
    *(v7 + 12) = 2080;
    sub_10000ED88(0, &qword_1000DA1E0, SBUIRemoteAlertButtonAction_ptr);
    sub_10000EDD0();
    v8 = Set.description.getter();
    v10 = sub_1000343F8(v8, v9, aBlock);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: buttonActions=%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  sub_10000C3B4(a1);
  v12 = *(v11 + 16);
  v13 = 32;
  while (v12)
  {
    v14 = *(v11 + v13);
    v13 += 8;
    --v12;
    if (v14 == 16)
    {

      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1000854D8;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100035630;
      aBlock[3] = &unk_1000CC460;
      v16 = _Block_copy(aBlock);

      [v2 dismissViewControllerAnimated:1 completion:v16];
      _Block_release(v16);
      return result;
    }
  }

  return result;
}

void sub_100082ED0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_10000B2D4();

    if (v3)
    {
      [v3 invalidate];
      swift_unknownObjectRelease();
    }
  }
}

void sub_100082F44(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v2 - 8);
  v53 = v2;
  __chkstk_darwin(v2);
  v50 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchQoS();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchTime();
  v47 = *(v54 - 8);
  v5 = __chkstk_darwin(v54);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = &v45 - v7;
  v8 = type metadata accessor for PCUserAlertPresentationContext(0);
  v59 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v58 = v10;
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 24);
  v13 = *(a1 + *(v9 + 20) + 8);
  v63 = a1;
  v14 = *(a1 + v12 + 8);
  if (v13)
  {
    v15 = String._bridgeToObjectiveC()();
    if (v14)
    {
LABEL_3:
      v16 = String._bridgeToObjectiveC()();
      goto LABEL_6;
    }
  }

  else
  {
    v15 = 0;
    if (v14)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
LABEL_6:
  v17 = [objc_opt_self() alertControllerWithTitle:v15 message:v16 preferredStyle:1];

  v18 = (v63 + *(v8 + 28));
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18;
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v19;
    v68 = sub_100084764;
    v69 = v21;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_1000854F0;
    v67 = &unk_1000CC398;
    v22 = _Block_copy(&aBlock);

    [v17 addTextFieldWithConfigurationHandler:v22];
    _Block_release(v22);
  }

  v55 = v8;
  v60 = *(v63 + *(v8 + 40));
  v61 = v17;
  v57 = *(v60 + 16);
  if (v57)
  {
    v23 = 0;
    v56 = &v66;
    v24 = v61;
    v25 = v60 + 40;
    while (v23 < *(v60 + 16))
    {
      v26 = v23 + 1;
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_10002420C(v63, v11);
      v28 = (*(v59 + 80) + 40) & ~*(v59 + 80);
      v29 = swift_allocObject();
      v29[2] = v24;
      v29[3] = v27;
      v29[4] = v23;
      sub_100084630(v11, v29 + v28);

      v30 = v24;

      v31 = String._bridgeToObjectiveC()();

      v68 = sub_100084694;
      v69 = v29;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_1000854F0;
      v67 = &unk_1000CC320;
      v32 = _Block_copy(&aBlock);

      v33 = [objc_opt_self() actionWithTitle:v31 style:0 handler:v32];
      _Block_release(v32);

      [v30 addAction:v33];
      v25 += 16;
      v23 = v26;
      if (v57 == v26)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v34 = v61;
    [v62 presentViewController:v61 animated:1 completion:0];
    v35 = v55;
    if ((*(v63 + *(v55 + 32) + 8) & 1) == 0)
    {
      sub_10000ED88(0, &qword_1000DA460, OS_dispatch_queue_ptr);
      v36 = static OS_dispatch_queue.main.getter();
      v37 = v45;
      static DispatchTime.now()();
      v38 = v46;
      + infix(_:_:)();
      v60 = *(v47 + 8);
      (v60)(v37, v54);
      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v68 = sub_100084724;
      v69 = v39;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_100035630;
      v67 = &unk_1000CC348;
      v40 = _Block_copy(&aBlock);

      v41 = v48;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_10008547C(&qword_1000D9FA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000056EC(&qword_1000D9FA8, &unk_100091780);
      sub_10000EE58(&qword_1000D9FB0, &qword_1000D9FA8, &unk_100091780, &protocol conformance descriptor for [A]);
      v42 = v50;
      v43 = v53;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v40);

      (*(v52 + 8))(v42, v43);
      v35 = v55;
      (*(v49 + 8))(v41, v51);
      (v60)(v38, v54);
      v34 = v61;
    }

    if (*(v63 + *(v35 + 36)) == 1 && (v44 = sub_10000B2D4()) != 0)
    {
      [v44 setDesiredHardwareButtonEvents:16];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1000837A0(void *a1)
{
  [a1 setAutocapitalizationType:2];
  v2 = String._bridgeToObjectiveC()();
  [a1 setPlaceholder:v2];
}

void sub_100083824(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for PCUserAlertPresentationContext(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000056EC(&qword_1000DBF90, &qword_100097670);
  __chkstk_darwin(v12 - 8);
  v14 = &v29 - v13;
  v15 = [a2 textFields];
  if (!v15)
  {
    v20 = 0;
    goto LABEL_13;
  }

  sub_10000ED88(0, &qword_1000E1B70, UITextField_ptr);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v16 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_4:
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v17 = *(v16 + 32);
      }

      v18 = v17;

      v19 = [v18 text];

      if (v19)
      {
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v21;

        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }

LABEL_12:
  v20 = 0;
  v15 = 0;
LABEL_13:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
    sub_10002420C(a5, &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    type metadata accessor for MainActor();
    v24 = static MainActor.shared.getter();
    v25 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    *(v27 + 24) = &protocol witness table for MainActor;
    sub_100084630(v11, v27 + v25);
    *(v27 + v26) = a4;
    v28 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v28 = v20;
    v28[1] = v15;
    sub_1000820D0(0, 0, v14, &unk_10009BA60, v27);
  }

  else
  {
  }
}

void sub_100083B50(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10008476C;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100035630;
    aBlock[3] = &unk_1000CC3C0;
    v4 = _Block_copy(aBlock);

    [v2 dismissViewControllerAnimated:1 completion:v4];
    _Block_release(v4);
  }
}

uint64_t sub_100083C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v9 = type metadata accessor for PCProximityHandoffServiceInvocations.UserAlertAction.Parameters();
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();
  v10 = type metadata accessor for PCProximityHandoffClient.Identifier();
  v7[12] = v10;
  v7[13] = *(v10 - 8);
  v7[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[15] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[16] = v12;
  v7[17] = v11;

  return _swift_task_switch(sub_100083E00, v12, v11);
}

uint64_t sub_100083E00()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  v7 = v0[2];
  type metadata accessor for PCProximityHandoffClient();
  (*(v2 + 104))(v1, enum case for PCProximityHandoffClient.Identifier.pcViewService(_:), v3);
  v0[18] = PCProximityHandoffClient.__allocating_init(identifier:)();
  (*(v5 + 16))(v4, v7, v6);

  PCProximityHandoffServiceInvocations.UserAlertAction.Parameters.init(id:actionIndex:textResponse:)();
  v11 = (&async function pointer to dispatch thunk of PCProximityHandoffClient.userAlertAction(params:) + async function pointer to dispatch thunk of PCProximityHandoffClient.userAlertAction(params:));
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_100083F64;
  v9 = v0[11];

  return v11(v9);
}

uint64_t sub_100083F64()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_100084188;
  }

  else
  {
    v8 = sub_1000840FC;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000840FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100084188()
{

  if (qword_1000D9810 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000047A0(v1, qword_1000E1B30);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "### Failed to handle action: %@", v4, 0xCu);
    sub_10000A628(v5, &qword_1000DA8D0, &qword_100091B60);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

id sub_100084478()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PCUserAlertViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000844D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100084508()
{
  v1 = *(type metadata accessor for PCUserAlertPresentationContext(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100084630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PCUserAlertPresentationContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100084694(uint64_t a1)
{
  v3 = *(type metadata accessor for PCUserAlertPresentationContext(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_100083824(a1, v4, v5, v6, v7);
}

uint64_t sub_10008470C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008472C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100084774()
{
  v1 = *(type metadata accessor for PCUserAlertPresentationContext(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1000848B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PCUserAlertPresentationContext(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100031D80;

  return sub_100083C50(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_1000849F8(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_100084A30(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100084B28;

  return v6(a1);
}

uint64_t sub_100084B28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100084C20()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100084C58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000854DC;

  return sub_100084A30(a1, v4);
}

uint64_t sub_100084D10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100031D80;

  return sub_100084A30(a1, v4);
}

void sub_100084DC8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

char *sub_100084E3C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100084E7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100084E5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100084F80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100084E7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000056EC(&qword_1000E1B78, &unk_10009BA88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_100084F80(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000056EC(&qword_1000E1B90, &qword_10009BAA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000056EC(&qword_1000E1B98, &qword_10009BAA8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1000850C8(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10000ED88(0, &qword_1000DA1E0, SBUIRemoteAlertButtonAction_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000ED88(0, &qword_1000DA1E0, SBUIRemoteAlertButtonAction_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_100085434()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008547C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1000854F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10008564C(a1);
  if (v3)
  {
    v13 = v3;
    sub_100085850();

    if (v13 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v8 = *(v13 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (*(a2 + 16))
        {
          v11 = sub_100045110(v8);
          if (v12)
          {
            [v9 setClipsToBounds:*(*(a2 + 56) + v11)];
          }
        }

        ++v7;
        if (v10 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
  }

  return result;
}

uint64_t sub_10008564C(uint64_t a1)
{
  v2 = v1;
  sub_10000ED88(0, &qword_1000E0F00, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    sub_1000056EC(&qword_1000DA8E0, &qword_100091BB8);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100091A40;
    *(v4 + 32) = v2;
    v5 = v2;
    return v4;
  }

  else
  {
    v7 = [v1 subviews];
    sub_10000ED88(0, &qword_1000DAD20, UIView_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v14 = sub_10008564C(a1);
        if (v14)
        {
          v15 = v14;

          sub_1000056EC(&qword_1000DA8E0, &qword_100091BB8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100091A40;
          *(inited + 32) = v2;
          v17 = v2;
          sub_1000859C8(inited);

          return v15;
        }

        ++v10;
        if (v13 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:

    return 0;
  }
}

void sub_100085850()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
      if (v3)
      {
        sub_100085DE0(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_100085928(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
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

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

void sub_1000859C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    v6 = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  v6 = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100085928(v6, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100085AB8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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
    return;
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
}

uint64_t sub_100085AB8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100085EB8();
          for (i = 0; i != v6; ++i)
          {
            sub_1000056EC(&qword_1000E1BA0, &unk_10009BAB0);
            v9 = sub_100085C48(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000ED88(0, &qword_1000DAD20, UIView_ptr);
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

void (*sub_100085C48(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100085CC8;
  }

  __break(1u);
  return result;
}

uint64_t sub_100085CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_10000ED88(0, &qword_1000DAD20, UIView_ptr);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100085DE0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_100085928(result, 1);

  return sub_100085CD0(v5, v3, 0);
}

unint64_t sub_100085EB8()
{
  result = qword_1000E1BA8;
  if (!qword_1000E1BA8)
  {
    sub_100005818(&qword_1000E1BA0, &unk_10009BAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1BA8);
  }

  return result;
}

uint64_t sub_100085F1C(uint64_t a1)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

unint64_t sub_100085F48()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 56))
  {
    v4 = v0[2];
    v3 = v0[3];
    if (*(v0 + 56) == 1)
    {
      v5._countAndFlagsBits = 0x202864656C696166;
      v5._object = 0xE800000000000000;
      String.append(_:)(v5);
      _print_unlocked<A, B>(_:_:)();
      v6._countAndFlagsBits = 10528;
      v6._object = 0xE200000000000000;
      String.append(_:)(v6);
      return 0;
    }

    else
    {
      v9 = v0[4] | v0[5] | v0[6];
      if (v4 | v2 | v1 | v3 | v9)
      {
        v10 = v4 | v2 | v3 | v9;
        if (v1 != 1 || v10)
        {
          if (v10)
          {
            v11 = 0x61546C65636E6163;
          }

          else
          {
            v11 = 0xD000000000000010;
          }

          if (v1 == 2)
          {
            return v11;
          }

          else
          {
            return 0x61546C65636E6163;
          }
        }

        else
        {
          return 0x65746E6573657270;
        }
      }

      else
      {
        return 0x69746E6573657270;
      }
    }
  }

  else
  {
    String.append(_:)(*v0);
    v8._countAndFlagsBits = 10528;
    v8._object = 0xE200000000000000;
    String.append(_:)(v8);
    return 0x657373696D736964;
  }
}

uint64_t sub_100086110(void *a1)
{
  v2 = v1;
  v4 = sub_1000056EC(&qword_1000E1C20, &qword_10009BC58);
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v47 = &v43 - v5;
  v46 = sub_1000056EC(&qword_1000E1C28, &qword_10009BC60);
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v44 = &v43 - v6;
  v7 = sub_1000056EC(&qword_1000E1C30, &qword_10009BC68);
  v57 = *(v7 - 8);
  v58 = v7;
  __chkstk_darwin(v7);
  v56 = &v43 - v8;
  v9 = sub_1000056EC(&qword_1000E1C38, &qword_10009BC70);
  v55 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v43 - v10;
  v12 = sub_1000056EC(&qword_1000E1C40, &qword_10009BC78);
  v51 = *(v12 - 8);
  v52 = v12;
  __chkstk_darwin(v12);
  v50 = &v43 - v13;
  v14 = sub_1000056EC(&qword_1000E1C48, &qword_10009BC80);
  v53 = *(v14 - 8);
  v54 = v14;
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  v17 = sub_1000056EC(&qword_1000E1C50, &qword_10009BC88);
  v60 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  sub_100006768(a1, a1[3]);
  sub_100087A70();
  v59 = v19;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = *v2;
  v20 = v2[1];
  if (!*(v2 + 56))
  {
    LOBYTE(v61) = 2;
    sub_100087BC0();
    v32 = v59;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v55 + 8))(v11, v9);
    return (*(v60 + 8))(v32, v17);
  }

  v22 = v17;
  v23 = v2[2];
  v24 = v2[3];
  v26 = v2[4];
  v25 = v2[5];
  v27 = v2[6];
  if (*(v2 + 56) == 1)
  {
    LOBYTE(v61) = 3;
    v55 = v27;
    sub_100087B6C();
    v28 = v56;
    v43 = v22;
    v29 = v59;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v61 = v21;
    v62 = v20;
    v63 = v23;
    v64 = v24;
    v65 = v26;
    v66 = v25;
    v67 = v55;
    sub_100073FB8();
    v30 = v58;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v57 + 8))(v28, v30);
    return (*(v60 + 8))(v29, v43);
  }

  v33 = v26 | v25 | v27;
  if (!(v23 | v20 | v21 | v24 | v33))
  {
    LOBYTE(v61) = 0;
    sub_100087C68();
    v40 = v22;
    v41 = v59;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v53 + 8))(v16, v54);
    return (*(v60 + 8))(v41, v40);
  }

  v34 = v23 | v20 | v24 | v33;
  v35 = v22;
  if (v21 == 1 && !v34)
  {
    LOBYTE(v61) = 1;
    sub_100087C14();
    v36 = v50;
    v37 = v59;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v39 = v51;
    v38 = v52;
LABEL_14:
    (*(v39 + 8))(v36, v38);
    return (*(v60 + 8))(v37, v35);
  }

  if (v21 != 2 || v34)
  {
    LOBYTE(v61) = 5;
    sub_100087AC4();
    v36 = v47;
    v37 = v59;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v39 = v48;
    v38 = v49;
    goto LABEL_14;
  }

  LOBYTE(v61) = 4;
  sub_100087B18();
  v42 = v44;
  v37 = v59;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v45 + 8))(v42, v46);
  return (*(v60 + 8))(v37, v35);
}

uint64_t sub_100086830(uint64_t a1)
{
  v2 = sub_100087AC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008686C(uint64_t a1)
{
  v2 = sub_100087AC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000868A8()
{
  v1 = *v0;
  v2 = 0x69746E6573657270;
  v3 = 0x64656C696166;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0x61546C65636E6163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65746E6573657270;
  if (v1 != 1)
  {
    v5 = 0x657373696D736964;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100086978@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100086DE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000869A0(uint64_t a1)
{
  v2 = sub_100087A70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000869DC(uint64_t a1)
{
  v2 = sub_100087A70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100086A18(uint64_t a1)
{
  v2 = sub_100087BC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100086A54(uint64_t a1)
{
  v2 = sub_100087BC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100086A90(uint64_t a1)
{
  v2 = sub_100087B6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100086ACC(uint64_t a1)
{
  v2 = sub_100087B6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100086B08(uint64_t a1)
{
  v2 = sub_100087C14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100086B44(uint64_t a1)
{
  v2 = sub_100087C14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100086B80(uint64_t a1)
{
  v2 = sub_100087C68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100086BBC(uint64_t a1)
{
  v2 = sub_100087C68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100086BF8(uint64_t a1)
{
  v2 = sub_100087B18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100086C34(uint64_t a1)
{
  v2 = sub_100087B18();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100086C70@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100087000(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

BOOL sub_100086CD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (*(a1 + 56) == 1)
    {
      return v2 == 1;
    }

    v4 = *a1;
    v3 = a1[1];
    v6 = *a2;
    v5 = a2[1];
    v8 = a2[2];
    v7 = a2[3];
    v10 = a2[4];
    v9 = a2[5];
    v11 = a2[6];
    v12 = a1[3];
    v13 = a1[4];
    v14 = a1[2];
    v15 = a1[5] | a1[6];
    v16 = v12 | v14 | v3;
    if (!(v15 | v4 | v13 | v16))
    {
      return v2 == 2 && !(v8 | v5 | v6 | v7 | v10 | v9 | v11);
    }

    v17 = v15 | v13 | v16;
    if (v4 != 1 || v17)
    {
      if (v4 != 2 || v17)
      {
        if (v2 != 2 || v6 != 3)
        {
          return 0;
        }
      }

      else if (v2 != 2 || v6 != 2)
      {
        return 0;
      }
    }

    else if (v2 != 2 || v6 != 1)
    {
      return 0;
    }

    if (!(v8 | v5 | v7 | v10 | v9 | v11))
    {
      return 1;
    }
  }

  else if (!*(a2 + 56))
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100086DE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746E6573657270 && a2 == 0xEA0000000000676ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746E6573657270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657373696D736964 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000A6320 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61546C65636E6163 && a2 == 0xEC00000064657070)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100087000@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_1000056EC(&qword_1000E1BB0, &qword_10009BC18);
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v67 = &v49 - v4;
  v5 = sub_1000056EC(&qword_1000E1BB8, &qword_10009BC20);
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v63 = &v49 - v6;
  v55 = sub_1000056EC(&qword_1000E1BC0, &qword_10009BC28);
  v58 = *(v55 - 8);
  __chkstk_darwin(v55);
  v66 = &v49 - v7;
  v57 = sub_1000056EC(&qword_1000E1BC8, &qword_10009BC30);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v65 = &v49 - v8;
  v54 = sub_1000056EC(&qword_1000E1BD0, &qword_10009BC38);
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v10 = &v49 - v9;
  v11 = sub_1000056EC(&qword_1000E1BD8, &qword_10009BC40);
  v52 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  v14 = sub_1000056EC(&qword_1000E1BE0, &unk_10009BC48);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49 - v16;
  v18 = a1[3];
  v80 = a1;
  sub_100006768(a1, v18);
  sub_100087A70();
  v19 = v68;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v20 = v19;
  if (v19)
  {
    return sub_10000529C(v80);
  }

  v21 = v13;
  v50 = v11;
  v51 = v10;
  v22 = v65;
  v23 = v66;
  v24 = v67;
  v68 = v15;
  v25 = v17;
  v26 = KeyedDecodingContainer.allKeys.getter();
  v27 = (2 * *(v26 + 16)) | 1;
  v76 = v26;
  v77 = v26 + 32;
  v78 = 0;
  v79 = v27;
  v28 = sub_100074830();
  if (v28 == 6 || v78 != v79 >> 1)
  {
    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    sub_1000056EC(&qword_1000DBA80, &qword_100094060);
    *v40 = &type metadata for NearbySharingInteractionViewEvent;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v38);
    swift_willThrow();
    (*(v68 + 8))(v17, v14);
    swift_unknownObjectRelease();
    return sub_10000529C(v80);
  }

  if (v28 > 2u)
  {
    if (v28 == 3)
    {
      LOBYTE(v69) = 3;
      sub_100087B6C();
      v44 = v17;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v37 = v64;
      v45 = v68;
      sub_100073EBC();
      v46 = v55;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v49 = 0;
      (*(v58 + 8))(v23, v46);
      (*(v45 + 8))(v44, v14);
      swift_unknownObjectRelease();
      v36 = v69;
      v31 = v70;
      v32 = v71;
      v33 = v72;
      v34 = v73;
      v20 = v74;
      v35 = 1;
      v14 = v75;
    }

    else
    {
      v37 = v64;
      v42 = v68;
      if (v28 == 4)
      {
        LOBYTE(v69) = 4;
        sub_100087B18();
        v43 = v63;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v49 = 0;
        (*(v59 + 8))(v43, v60);
        (*(v42 + 8))(v25, v14);
        swift_unknownObjectRelease();
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v14 = 0;
        v36 = 2;
        v35 = 2;
      }

      else
      {
        LOBYTE(v69) = 5;
        sub_100087AC4();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v49 = 0;
        (*(v61 + 8))(v24, v62);
        (*(v42 + 8))(v25, v14);
        swift_unknownObjectRelease();
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v14 = 0;
        v35 = 2;
        v36 = 3;
      }
    }
  }

  else if (v28)
  {
    if (v28 == 1)
    {
      LOBYTE(v69) = 1;
      sub_100087C14();
      v29 = v51;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v30 = v68;
      v49 = 0;
      (*(v53 + 8))(v29, v54);
      (*(v30 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v14 = 0;
      v35 = 2;
      v36 = 1;
      v37 = v64;
    }

    else
    {
      LOBYTE(v69) = 2;
      sub_100087BC0();
      v33 = v22;
      v34 = v17;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v37 = v64;
      v47 = v68;
      v32 = v57;
      v20 = 0;
      v36 = KeyedDecodingContainer.decode(_:forKey:)();
      v31 = v48;
      v49 = 0;
      (*(v56 + 8))(v33, v32);
      (*(v47 + 8))(v34, v14);
      swift_unknownObjectRelease();
      v35 = 0;
    }
  }

  else
  {
    LOBYTE(v69) = 0;
    sub_100087C68();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v49 = 0;
    (*(v52 + 8))(v21, v50);
    (*(v68 + 8))(v17, v14);
    swift_unknownObjectRelease();
    v36 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v14 = 0;
    v35 = 2;
    v37 = v64;
  }

  result = sub_10000529C(v80);
  *v37 = v36;
  *(v37 + 8) = v31;
  *(v37 + 16) = v32;
  *(v37 + 24) = v33;
  *(v37 + 32) = v34;
  *(v37 + 40) = v20;
  *(v37 + 48) = v14;
  *(v37 + 56) = v35;
  return result;
}

unint64_t sub_100087A70()
{
  result = qword_1000E1BE8;
  if (!qword_1000E1BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1BE8);
  }

  return result;
}

unint64_t sub_100087AC4()
{
  result = qword_1000E1BF0;
  if (!qword_1000E1BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1BF0);
  }

  return result;
}

unint64_t sub_100087B18()
{
  result = qword_1000E1BF8;
  if (!qword_1000E1BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1BF8);
  }

  return result;
}

unint64_t sub_100087B6C()
{
  result = qword_1000E1C00;
  if (!qword_1000E1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C00);
  }

  return result;
}

unint64_t sub_100087BC0()
{
  result = qword_1000E1C08;
  if (!qword_1000E1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C08);
  }

  return result;
}

unint64_t sub_100087C14()
{
  result = qword_1000E1C10;
  if (!qword_1000E1C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C10);
  }

  return result;
}

unint64_t sub_100087C68()
{
  result = qword_1000E1C18;
  if (!qword_1000E1C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C18);
  }

  return result;
}

unint64_t sub_100087D30()
{
  result = qword_1000E1C58;
  if (!qword_1000E1C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C58);
  }

  return result;
}

unint64_t sub_100087D88()
{
  result = qword_1000E1C60;
  if (!qword_1000E1C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C60);
  }

  return result;
}

unint64_t sub_100087DE0()
{
  result = qword_1000E1C68;
  if (!qword_1000E1C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C68);
  }

  return result;
}

unint64_t sub_100087E38()
{
  result = qword_1000E1C70;
  if (!qword_1000E1C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C70);
  }

  return result;
}

unint64_t sub_100087E90()
{
  result = qword_1000E1C78;
  if (!qword_1000E1C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C78);
  }

  return result;
}

unint64_t sub_100087EE8()
{
  result = qword_1000E1C80;
  if (!qword_1000E1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C80);
  }

  return result;
}

unint64_t sub_100087F40()
{
  result = qword_1000E1C88;
  if (!qword_1000E1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C88);
  }

  return result;
}

unint64_t sub_100087F98()
{
  result = qword_1000E1C90;
  if (!qword_1000E1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C90);
  }

  return result;
}

unint64_t sub_100087FF0()
{
  result = qword_1000E1C98;
  if (!qword_1000E1C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C98);
  }

  return result;
}

unint64_t sub_100088048()
{
  result = qword_1000E1CA0;
  if (!qword_1000E1CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1CA0);
  }

  return result;
}

unint64_t sub_1000880A0()
{
  result = qword_1000E1CA8;
  if (!qword_1000E1CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1CA8);
  }

  return result;
}

unint64_t sub_1000880F8()
{
  result = qword_1000E1CB0;
  if (!qword_1000E1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1CB0);
  }

  return result;
}

unint64_t sub_100088150()
{
  result = qword_1000E1CB8;
  if (!qword_1000E1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1CB8);
  }

  return result;
}

unint64_t sub_1000881A8()
{
  result = qword_1000E1CC0;
  if (!qword_1000E1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1CC0);
  }

  return result;
}

unint64_t sub_100088200()
{
  result = qword_1000E1CC8;
  if (!qword_1000E1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1CC8);
  }

  return result;
}

unint64_t sub_100088258()
{
  result = qword_1000E1CD0;
  if (!qword_1000E1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1CD0);
  }

  return result;
}

unint64_t sub_1000882B0()
{
  result = qword_1000E1CD8;
  if (!qword_1000E1CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1CD8);
  }

  return result;
}

uint64_t PCInteractionDirection.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 1701736302;
    case 1:
      return 1752397168;
    case 2:
      return 1819047280;
  }

  _StringGuts.grow(_:)(19);

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0xD000000000000011;
}

unint64_t sub_100088498()
{
  result = qword_1000E1CE0;
  if (!qword_1000E1CE0)
  {
    type metadata accessor for PCInteractionDirection(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1CE0);
  }

  return result;
}

uint64_t static StaticString.== infix(_:_:)(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v9 = sub_10008C388(a1, a2, a3);
  v11 = v10;
  if (v9 == sub_10008C388(a4, a5, v6) && v11 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_100088590()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000F3D28);
  sub_1000047A0(v0, qword_1000F3D28);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100088610()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000E1CF0);
  v1 = sub_1000047A0(v0, qword_1000E1CF0);
  if (qword_1000D9818 != -1)
  {
    swift_once();
  }

  v2 = sub_1000047A0(v0, qword_1000F3D28);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

os_activity_t _makeActivity(named:dso:)(char *description, int a2, char a3, void *dso)
{
  if ((a3 & 1) == 0)
  {
    if (description)
    {
      if (dso)
      {
        if (qword_1000D9828 == -1)
        {
LABEL_5:
          v5 = qword_1000E1D08;

          return _os_activity_create(dso, description, v5, OS_ACTIVITY_FLAG_DEFAULT);
        }

LABEL_19:
        v14 = dso;
        swift_once();
        dso = v14;
        goto LABEL_5;
      }

LABEL_28:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (description >> 32)
  {
    goto LABEL_18;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
  }

  else if (description <= 0x7F)
  {
    v7 = description + 1;
    goto LABEL_13;
  }

  v8 = (description & 0x3F) << 8;
  v9 = (description >> 6) + v8 + 33217;
  v10 = (v8 | (description >> 6) & 0x3F) << 8;
  v11 = (description >> 18) + ((v10 | (description >> 12) & 0x3F) << 8) - 2122219023;
  v12 = (description >> 12) + v10 + 8487393;
  if (description >> 16)
  {
    v7 = v11;
  }

  else
  {
    v7 = v12;
  }

  if (description < 0x800)
  {
    v7 = v9;
  }

LABEL_13:
  *descriptiona = (v7 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v7) & 0x18)));
  if (!dso)
  {
    goto LABEL_28;
  }

  if (qword_1000D9828 != -1)
  {
    v13 = dso;
    swift_once();
    dso = v13;
  }

  return _os_activity_create(dso, descriptiona, qword_1000E1D08, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t sub_1000888E4()
{
  sub_100088928();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 72, 7);
}

void sub_100088928()
{
  if (v0[4].opaque[0])
  {
    v1 = v0;
    if (qword_1000D9820 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000047A0(v2, qword_1000E1CF0);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10[0] = v6;
      *v5 = 136315138;
      v7 = StaticString.description.getter();
      v9 = sub_1000343F8(v7, v8, v10);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Stopping %s", v5, 0xCu);
      sub_10000529C(v6);
    }

    swift_beginAccess();
    os_activity_scope_leave(v1 + 3);
    swift_endAccess();
    v1[4].opaque[0] = 0;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100088AC0(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  v3 = *(*a2 + 24);
  v4 = *(*a2 + 32);
  v5 = sub_10008C388(*(*a1 + 16), *(*a1 + 24), *(*a1 + 32));
  v7 = v6;
  if (v5 == sub_10008C388(v2, v3, v4) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

Swift::Int sub_100088B68()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10008C388(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100088BD0(uint64_t a1)
{
  sub_10008C388(*(*v1 + 16), *(*v1 + 24), *(*v1 + 32));
  String.hash(into:)();

  return result;
}

Swift::Int sub_100088C2C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10008C388(*(*v1 + 16), *(*v1 + 24), *(*v1 + 32));
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100088C90(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 16);
  v5 = sub_10008C388(*a1, *(a1 + 8), *(a1 + 16));
  v7 = v6;
  if (v5 == sub_10008C388(v2, v3, v4) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

double StaticString.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10008C388(a2, a3, a4);
  String.hash(into:)();

  return result;
}

Swift::Int StaticString.hashValue.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  Hasher.init(_seed:)();
  sub_10008C388(a1, a2, v3);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100088E10()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_10008C388(v1, v2, v3);
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100088E88(uint64_t a1)
{
  sub_10008C388(*v1, *(v1 + 8), *(v1 + 16));
  String.hash(into:)();

  return result;
}

Swift::Int sub_100088EE0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  sub_10008C388(v2, v3, v4);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100088F54()
{
  qword_1000E1D08 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

unint64_t sub_100088F94()
{
  result = qword_1000E1D10;
  if (!qword_1000E1D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1D10);
  }

  return result;
}

unint64_t sub_100089010()
{
  result = qword_1000E1F00;
  if (!qword_1000E1F00)
  {
    type metadata accessor for Transaction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1F00);
  }

  return result;
}

id sub_100089064@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 forceKillPCViewService];
  *a2 = result;
  return result;
}

uint64_t sub_1000890AC()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000E1F10);
  sub_1000047A0(v0, qword_1000E1F10);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10008912C()
{
  v1 = OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___daemonBridge;
  if (*(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___daemonBridge))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___daemonBridge);
  }

  else
  {
    v3 = v0;
    v4 = sub_1000891DC();
    v5 = *(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_daemonBridgeState);
    type metadata accessor for NearbySharingInteractionAlertDaemonBridgeClient();
    swift_allocObject();

    v2 = sub_10004C988(v4, v5);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1000891DC()
{
  v1 = OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___daemonBridgeModel;
  if (*(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___daemonBridgeModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___daemonBridgeModel);
  }

  else
  {
    sub_1000056EC(&qword_1000E2120, &qword_10009C5F0);
    sub_10000EE58(&qword_1000E2128, &qword_1000E2120, &qword_10009C5F0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v3 = v0;
    v4 = Publisher.eraseToAnyPublisher()();
    type metadata accessor for NearbySharingInteractionAlertDaemonBridgeClientModel();
    v2 = swift_allocObject();
    *(v2 + 16) = v4;
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1000892D8()
{
  v1 = OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___nearbySharingInteractionViewPresenter;
  if (*(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___nearbySharingInteractionViewPresenter))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___nearbySharingInteractionViewPresenter);
  }

  else
  {
    v3 = v0;
    v4 = sub_100089388();
    v5 = *(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_nearbySharingInteractionViewPresenterState);
    type metadata accessor for NearbySharingInteractionViewPresenter();
    swift_allocObject();

    v2 = sub_10004E3F8(v4, v5);
    *(v3 + v1) = v2;
  }

  return v2;
}

void *sub_100089388()
{
  v1 = OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___nearbySharingInteractionViewPresenterModel;
  if (*(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___nearbySharingInteractionViewPresenterModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___nearbySharingInteractionViewPresenterModel);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_rootViewController);
    v4 = *(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_host);
    v5 = *(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_daemonBridgeState);
    swift_beginAccess();
    v6 = *(v5 + 16);
    type metadata accessor for NearbySharingInteractionViewPresenterModel();
    v2 = swift_allocObject();
    v2[2] = v3;
    v2[3] = v4;
    v2[4] = v6;
    *(v0 + v1) = v2;
    v7 = v3;
    swift_unknownObjectRetain();
  }

  return v2;
}

uint64_t sub_10008945C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v82 = a4;
  v83 = a5;
  v73 = a3;
  v85 = a2;
  v7 = sub_1000056EC(&qword_1000E0000, &qword_100097908);
  v69 = *(v7 - 8);
  v70 = v7;
  __chkstk_darwin(v7);
  v67 = &v64 - v8;
  v9 = sub_1000056EC(&qword_1000E0008, &unk_100097910);
  v71 = *(v9 - 8);
  v72 = v9;
  __chkstk_darwin(v9);
  v68 = &v64 - v10;
  v11 = sub_1000056EC(&qword_1000E2130, &qword_10009C5F8);
  v78 = *(v11 - 8);
  v79 = v11;
  __chkstk_darwin(v11);
  v77 = &v64 - v12;
  v13 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  v14 = __chkstk_darwin(v13 - 8);
  v74 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v76 = &v64 - v17;
  __chkstk_darwin(v16);
  v19 = &v64 - v18;
  v66 = type metadata accessor for NearbySharingInteractionViewServiceContext(0);
  v20 = __chkstk_darwin(v66);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v64 - v23;
  *(v5 + 16) = &_swiftEmptySetSingleton;
  UUID.init()();
  v25 = OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment__isActive;
  sub_1000056EC(&qword_1000E0010, qword_10009C600);
  swift_allocObject();
  *(v5 + v25) = sub_1000543E8(1, 0, 0, 0, 0, 0);
  v26 = (v5 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_finishedHandler);
  *v26 = 0;
  v26[1] = 0;
  *(v5 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___daemonBridge) = 0;
  *(v5 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___daemonBridgeModel) = 0;
  *(v5 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___nearbySharingInteractionViewPresenter) = 0;
  *(v5 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___nearbySharingInteractionViewPresenterModel) = 0;
  v27 = OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_nearbySharingInteractionViewPresenterState;
  type metadata accessor for NearbySharingInteractionViewPresenterState();
  v28 = swift_allocObject();
  v75 = sub_1000056EC(&qword_1000E2120, &qword_10009C5F0);
  swift_allocObject();
  *(v28 + 16) = PassthroughSubject.init()();
  v84 = v5;
  *(v5 + v27) = v28;
  if (qword_1000D9830 != -1)
  {
    swift_once();
  }

  v80 = v5 + 16;
  v29 = type metadata accessor for Logger();
  sub_1000047A0(v29, qword_1000E1F10);
  sub_10008AED0(a1, v24, type metadata accessor for NearbySharingInteractionViewServiceContext);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v81 = a1;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v86[0] = v65;
    *v33 = 136315138;
    sub_10008AED0(v24, v22, type metadata accessor for NearbySharingInteractionViewServiceContext);
    v34 = String.init<A>(describing:)();
    v36 = v35;
    sub_10008AF38(v24, type metadata accessor for NearbySharingInteractionViewServiceContext);
    v37 = sub_1000343F8(v34, v36, v86);
    a1 = v81;

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v30, v31, "Init: context=%s", v33, 0xCu);
    sub_10000529C(v65);
  }

  else
  {

    sub_10008AF38(v24, type metadata accessor for NearbySharingInteractionViewServiceContext);
  }

  v38 = v84;
  sub_10008AED0(a1, v84 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_context, type metadata accessor for NearbySharingInteractionViewServiceContext);
  *(v38 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_host) = v85;
  v39 = v73;
  *(v38 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_rootViewController) = v73;
  v40 = *v26;
  v41 = v26[1];
  v43 = v82;
  v42 = v83;
  *v26 = v82;
  v26[1] = v42;
  swift_unknownObjectRetain();
  v44 = v39;
  sub_10000B16C(v43, v42);
  sub_10000B17C(v40, v41);
  sub_10008AED0(a1, v19, type metadata accessor for NearbySharingInteractionDisplayContext);
  type metadata accessor for NearbySharingInteractionAlertDaemonBridgeClientState();
  v45 = swift_allocObject();
  sub_1000056EC(&qword_1000E0018, &unk_100097920);
  swift_allocObject();
  *(v45 + 24) = PassthroughSubject.init()();
  v46 = v76;
  sub_10008AED0(v19, v76, type metadata accessor for NearbySharingInteractionDisplayContext);
  swift_beginAccess();
  v47 = v74;
  sub_10008AED0(v46, v74, type metadata accessor for NearbySharingInteractionDisplayContext);
  sub_1000056EC(&qword_1000DF920, &qword_100097490);
  swift_allocObject();
  v48 = sub_1000597B8(v47, 0, 0, 0, 0, 0);
  sub_10008AF38(v46, type metadata accessor for NearbySharingInteractionDisplayContext);
  *(v45 + 16) = v48;
  swift_endAccess();
  sub_10008AF38(v19, type metadata accessor for NearbySharingInteractionDisplayContext);
  *(v38 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_daemonBridgeState) = v45;
  v86[0] = *(v45 + 24);
  swift_allocObject();
  swift_weakInit();
  sub_10000EE58(&qword_1000E0020, &qword_1000E0018, &unk_100097920, &protocol conformance descriptor for PassthroughSubject<A, B>);

  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v76 = v44;
  v86[0] = *&v44[OBJC_IVAR___MainViewController_homeGestureEventSubject];
  v49 = swift_allocObject();
  swift_weakInit();
  v50 = swift_allocObject();
  *(v50 + 16) = sub_10008AFD8;
  *(v50 + 24) = v49;

  sub_1000056EC(&qword_1000DA1D0, &qword_100091778);
  sub_10000EE58(&qword_1000DFF98, &qword_1000DA1D0, &qword_100091778, &protocol conformance descriptor for PassthroughSubject<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v86[0] = *(*(v38 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_nearbySharingInteractionViewPresenterState) + 16);
  sub_10000EE58(&qword_1000E2128, &qword_1000E2120, &qword_10009C5F0, &protocol conformance descriptor for PassthroughSubject<A, B>);

  v51 = v77;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();

  sub_10000EE58(&qword_1000E2138, &qword_1000E2130, &qword_10009C5F8, &protocol conformance descriptor for Publishers.Filter<A>);
  v52 = v79;
  Publisher<>.sink(receiveValue:)();

  (*(v78 + 8))(v51, v52);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10008912C();
  sub_10004CC24();

  sub_1000892D8();
  sub_10004E650();

  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v53 = *(qword_1000F3C58 + 880);
  v54 = *(v53 + *((swift_isaMask & *v53) + 0x70));
  if (v54)
  {
    v55 = v53;
    v56 = v54;
    v57 = String._bridgeToObjectiveC()();
    [v56 setBool:0 forKey:v57];
  }

  v58 = v81;
  if (qword_1000D9838 != -1)
  {
    swift_once();
  }

  if (qword_1000F3D78)
  {
    swift_getKeyPath();
    v59 = v67;
    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    sub_10000EE58(&qword_1000E0028, &qword_1000E0000, &qword_100097908, &protocol conformance descriptor for NSObject.KeyValueObservingPublisher<A, B>);
    v60 = v68;
    v61 = v70;
    Publisher.filter(_:)();
    (*(v69 + 8))(v59, v61);
    sub_10000EE58(&qword_1000E0030, &qword_1000E0008, &unk_100097910, &protocol conformance descriptor for Publishers.Filter<A>);
    v62 = v72;
    Publisher<>.sink(receiveValue:)();
    (*(v71 + 8))(v60, v62);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    sub_10000B17C(v82, v83);
    swift_unknownObjectRelease();

    sub_10008AF38(v58, type metadata accessor for NearbySharingInteractionViewServiceContext);
  }

  else
  {
    sub_10008AF38(v58, type metadata accessor for NearbySharingInteractionViewServiceContext);
    sub_10000B17C(v82, v83);

    swift_unknownObjectRelease();
  }

  return v84;
}

uint64_t sub_10008A1D8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10008AA88(v2, v3);
  }

  return result;
}

uint64_t sub_10008A248(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10008AA88(0x74756220656D6F48, 0xEB000000006E6F74);
  }

  return result;
}

BOOL sub_10008A2BC(uint64_t *a1)
{
  if (*(a1 + 56) < 2u)
  {
    return 0;
  }

  v1 = a1[4];
  v2 = *a1;
  v3 = a1[5] | a1[6];
  v4 = a1[3] | a1[2] | a1[1];
  if (!(v3 | *a1 | v1 | v4))
  {
    return 0;
  }

  v5 = v3 | v1 | v4;
  if (v2 == 1 && v5 == 0)
  {
    return 0;
  }

  return v2 != 2 || v5 != 0;
}

uint64_t sub_10008A320(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10008AA88(0x74206C65636E6143, 0xED00006465707061);
  }

  return result;
}

void sub_10008A398()
{
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v0 = *(qword_1000F3C58 + 880);
  v1 = *(v0 + *((swift_isaMask & *v0) + 0x70));
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = String._bridgeToObjectiveC()();
    [v3 setBool:0 forKey:v4];
  }

  if (qword_1000D9830 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000047A0(v5, qword_1000E1F10);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "### forceKillPCViewService set to true, exiting...", v8, 2u);
  }

  exit(0);
}

uint64_t sub_10008A548()
{
  v1 = v0;
  if (qword_1000D9830 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000E1F10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  sub_10008A904();

  v6 = OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_id;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  sub_10008AF38(v1 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_context, type metadata accessor for NearbySharingInteractionViewServiceContext);
  swift_unknownObjectRelease();

  sub_10000B17C(*(v1 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_finishedHandler), *(v1 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_finishedHandler + 8));

  return v1;
}

uint64_t sub_10008A740()
{
  sub_10008A548();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for NearbySharingInteractionAlertEnvironment(uint64_t a1)
{
  result = qword_1000E1F78;
  if (!qword_1000E1F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008A7EC(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NearbySharingInteractionDisplayContext(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10008A904()
{
  if (qword_1000D9830 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000E1F10);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000343F8(0x6164696C61766E69, 0xEC00000029286574, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000529C(v4);
  }

  sub_10008912C();
  sub_10004D454();

  sub_1000892D8();
  sub_10004ED8C();
}

id sub_10008AA88(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1000D9830 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000047A0(v6, qword_1000E1F10);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_1000343F8(0xD000000000000011, 0x80000001000A5970, &v18);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1000343F8(a1, a2, &v18);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: reason=%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v10 = *(v2 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_finishedHandler);
  if (v10)
  {
    v11 = *(v2 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_finishedHandler + 8);

    v10(v12);

    return sub_10000B17C(v10, v11);
  }

  else
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "### No finished handler?", v16, 2u);
    }

    v17 = *(v3 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_host);

    return [v17 invalidate];
  }
}

uint64_t sub_10008AD04()
{
  _StringGuts.grow(_:)(52);
  v0._object = 0x80000001000A6520;
  v0._countAndFlagsBits = 0xD000000000000032;
  String.append(_:)(v0);
  type metadata accessor for UUID();
  sub_10006A8F8(&qword_1000DFF80, &protocol conformance descriptor for UUID);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  return 0;
}

uint64_t sub_10008ADCC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10008AE48(char a1)
{

  sub_100052940(a1);
}

uint64_t sub_10008AED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008AF38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10008AF98()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008AFE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10008B020@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 forceKillPCViewService];
  *a2 = result;
  return result;
}

uint64_t sub_10008B094@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v65 = a2;
  v67 = a1;
  v66 = a3;
  v4 = sub_1000056EC(&qword_1000DBD08, &qword_1000937D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v62 - v5;
  v7 = sub_1000056EC(&qword_1000E2140, &qword_10009C6D8);
  __chkstk_darwin(v7);
  v9 = &v62 - v8;
  v10 = sub_1000056EC(&qword_1000E2148, &qword_10009C6E0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v62 - v12;
  v14 = sub_1000056EC(&qword_1000E2150, &qword_10009C6E8);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v62 - v16;
  v18 = sub_1000056EC(&qword_1000E2158, &qword_10009C6F0);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v64 = &v62 - v20;
  v21 = sub_1000056EC(&qword_1000E2160, &qword_10009C6F8);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v63 = &v62 - v23;
  ButtonStyleConfiguration.label.getter();
  v24 = type metadata accessor for Font.Design();
  (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
  v25 = static Font.system(size:weight:design:)();
  sub_10000A628(v6, &qword_1000DBD08, &qword_1000937D0);
  KeyPath = swift_getKeyPath();
  v27 = &v9[*(v7 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  static Font.Weight.medium.getter();
  sub_10008B888();
  View.fontWeight(_:)();
  sub_10000A628(v9, &qword_1000E2140, &qword_10009C6D8);
  LOBYTE(v25) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = &v13[*(sub_1000056EC(&qword_1000E2178, &qword_10009C738) + 36)];
  *v36 = v25;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v37 = &v13[*(v11 + 44)];
  v38 = v70;
  *v37 = v69;
  *(v37 + 1) = v38;
  *(v37 + 2) = v71;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001F170(v13, v17, &qword_1000E2148, &qword_10009C6E0);
  v39 = &v17[*(v15 + 44)];
  v40 = v77;
  v41 = v78;
  *(v39 + 4) = v76;
  *(v39 + 5) = v40;
  *(v39 + 6) = v41;
  v42 = v73;
  *v39 = v72;
  *(v39 + 1) = v42;
  v43 = v75;
  *(v39 + 2) = v74;
  *(v39 + 3) = v43;
  sub_10008B66C(v65, &v68);
  v44 = v68;
  LOBYTE(v11) = static Edge.Set.all.getter();
  v45 = v17;
  v46 = v64;
  sub_10001F170(v45, v64, &qword_1000E2150, &qword_10009C6E8);
  v47 = v46 + *(v19 + 44);
  *v47 = v44;
  *(v47 + 8) = v11;
  v48 = v63;
  v49 = &v63[*(v22 + 44)];
  v50 = *(type metadata accessor for RoundedRectangle() + 20);
  v51 = enum case for RoundedCornerStyle.continuous(_:);
  v52 = type metadata accessor for RoundedCornerStyle();
  (*(*(v52 - 8) + 104))(&v49[v50], v51, v52);
  __asm { FMOV            V0.2D, #12.0 }

  *v49 = _Q0;
  *&v49[*(sub_1000056EC(&qword_1000DEFD8, &qword_10009C740) + 36)] = 256;
  sub_10001F170(v46, v48, &qword_1000E2158, &qword_10009C6F0);
  v58 = static Animation.easeOut(duration:)();
  LOBYTE(v49) = ButtonStyleConfiguration.isPressed.getter();
  v59 = v66;
  sub_10001F170(v48, v66, &qword_1000E2160, &qword_10009C6F8);
  result = sub_1000056EC(&qword_1000E2180, &qword_10009C748);
  v61 = v59 + *(result + 36);
  *v61 = v58;
  *(v61 + 8) = v49 & 1;
  return result;
}

uint64_t sub_10008B66C@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Material();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000056EC(&qword_1000E2188, &qword_10009C750);
  __chkstk_darwin(v8);
  v10 = v17 - v9;
  if (a1)
  {
    static Material.thin.getter();
    if (ButtonStyleConfiguration.isPressed.getter())
    {
      v11 = 0.7;
    }

    else
    {
      v11 = 1.0;
    }

    (*(v5 + 32))(v10, v7, v4);
    *&v10[*(v8 + 36)] = v11;
    sub_10000EE58(&qword_1000E2190, &qword_1000E2188, &qword_10009C750, &protocol conformance descriptor for _OpacityShapeStyle<A>);
  }

  else
  {
    v12 = ButtonStyleConfiguration.isPressed.getter();
    v13 = objc_opt_self();
    v14 = &selRef_systemGray5Color;
    if ((v12 & 1) == 0)
    {
      v14 = &selRef_systemGray6Color;
    }

    v15 = [v13 *v14];
    v17[1] = Color.init(_:)();
  }

  result = AnyShapeStyle.init<A>(_:)();
  *a2 = result;
  return result;
}

unint64_t sub_10008B888()
{
  result = qword_1000E2168;
  if (!qword_1000E2168)
  {
    sub_100005818(&qword_1000E2140, &qword_10009C6D8);
    sub_10008B940();
    sub_10000EE58(&qword_1000DC200, &qword_1000DC208, &unk_10009AAC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E2168);
  }

  return result;
}

unint64_t sub_10008B940()
{
  result = qword_1000E2170;
  if (!qword_1000E2170)
  {
    type metadata accessor for ButtonStyleConfiguration.Label();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E2170);
  }

  return result;
}

unint64_t sub_10008B99C()
{
  result = qword_1000E2198;
  if (!qword_1000E2198)
  {
    sub_100005818(&qword_1000E2180, &qword_10009C748);
    sub_10008BA54();
    sub_10000EE58(&qword_1000DF010, &qword_1000DF018, &qword_10009C760, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E2198);
  }

  return result;
}

unint64_t sub_10008BA54()
{
  result = qword_1000E21A0;
  if (!qword_1000E21A0)
  {
    sub_100005818(&qword_1000E2160, &qword_10009C6F8);
    sub_10008BB0C();
    sub_10000EE58(&qword_1000E21D8, &qword_1000DEFD8, &qword_10009C740, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E21A0);
  }

  return result;
}

unint64_t sub_10008BB0C()
{
  result = qword_1000E21A8;
  if (!qword_1000E21A8)
  {
    sub_100005818(&qword_1000E2158, &qword_10009C6F0);
    sub_10008BBC4();
    sub_10000EE58(&qword_1000E21C8, &qword_1000E21D0, &qword_10009C758, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E21A8);
  }

  return result;
}

unint64_t sub_10008BBC4()
{
  result = qword_1000E21B0;
  if (!qword_1000E21B0)
  {
    sub_100005818(&qword_1000E2150, &qword_10009C6E8);
    sub_10008BC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E21B0);
  }

  return result;
}

unint64_t sub_10008BC50()
{
  result = qword_1000E21B8;
  if (!qword_1000E21B8)
  {
    sub_100005818(&qword_1000E2148, &qword_10009C6E0);
    sub_10008BCDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E21B8);
  }

  return result;
}

unint64_t sub_10008BCDC()
{
  result = qword_1000E21C0;
  if (!qword_1000E21C0)
  {
    sub_100005818(&qword_1000E2178, &qword_10009C738);
    sub_100005818(&qword_1000E2140, &qword_10009C6D8);
    sub_10008B888();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E21C0);
  }

  return result;
}

uint64_t sub_10008BDA4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  sub_10000B17C(v1, v2);

  return _swift_deallocClassInstance(v0, 760, 7);
}

uint64_t sub_10008BE20(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10008C240(uint64_t a1, uint64_t a2)
{
  __chkstk_darwin(a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  return String.init<A>(describing:)();
}

uint64_t sub_10008C2F8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v2;
}

unint64_t sub_10008C388(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return static String._fromUTF8Repairing(_:)();
    }

LABEL_9:
    __break(1u);
    return static String._fromUTF8Repairing(_:)();
  }

  __break(1u);
  return result;
}

uint64_t sub_10008C49C()
{
  v1 = *v0;

  return v1;
}

uint64_t static Optional<A>.allCases.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v14[-v6];
  v8 = type metadata accessor for Optional();
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  (*(*(a1 - 8) + 56))(v9, 1, 1, a1);
  type metadata accessor for Array();
  dispatch thunk of static CaseIterable.allCases.getter();
  v15 = a1;
  v16 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_10008BE20(sub_10008C788, v14, AssociatedTypeWitness, v8, &type metadata for Never, AssociatedConformanceWitness, &protocol witness table for Never, v11);
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  v12 = static Array.+ infix(_:_:)();

  return v12;
}

void sub_10008C718()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  qword_1000F3D78 = v2;
}

uint64_t sub_10008C788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

unint64_t sub_10008C840()
{
  result = qword_1000E25A0;
  if (!qword_1000E25A0)
  {
    sub_100005818(qword_1000E25A8, qword_10009C820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E25A0);
  }

  return result;
}

uint64_t sub_10008C8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10008C8E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10008C93C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t PCActivityAssetType.description.getter(uint64_t a1)
{
  v1 = sub_100064F5C(a1);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t sub_10008CA1C()
{
  result = qword_1000E2630;
  if (!qword_1000E2630)
  {
    sub_100005818(&qword_1000E2638, qword_10009C990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E2630);
  }

  return result;
}

uint64_t sub_10008CB40()
{
  v1 = sub_100064F5C(*v0);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t sub_10008CB90()
{
  result = qword_1000E2640;
  if (!qword_1000E2640)
  {
    type metadata accessor for PCActivityAssetType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E2640);
  }

  return result;
}

uint64_t sub_10008CBFC()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000E2648);
  sub_1000047A0(v0, qword_1000E2648);
  return Logger.init(subsystem:category:)();
}

void sub_10008CC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000D9840 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000047A0(v5, qword_1000E2648);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000343F8(0xD000000000000014, 0x80000001000A0CE0, v12);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_10000529C(v9);
  }

  v12[0] = a2;
  v12[1] = a3;
  sub_1000056EC(&qword_1000E2668, &qword_10009CBA8);
  State.wrappedValue.getter();
  v10 = [v11 view];

  if (!v10)
  {
    __break(1u);
  }
}

uint64_t sub_10008CE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10008CF18();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10008CE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10008CF18();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10008CEF0(uint64_t a1)
{
  sub_10008CF18();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10008CF18()
{
  result = qword_1000E2660;
  if (!qword_1000E2660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E2660);
  }

  return result;
}

void sub_10008CF6C()
{
  if (qword_1000D9840 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000E2648);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000343F8(0xD000000000000018, 0x80000001000A0CC0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000529C(v3);
  }
}

uint64_t Publisher<>.switchToLatest()()
{
  return Publisher<>.switchToLatest()();
}

{
  return Publisher<>.switchToLatest()();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}
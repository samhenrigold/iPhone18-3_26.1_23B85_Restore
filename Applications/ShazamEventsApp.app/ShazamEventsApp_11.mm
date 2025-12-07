uint64_t sub_1001574E4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for EntertainmentEventView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

void sub_100157588(uint64_t a1@<X3>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  type metadata accessor for EntertainmentEventView(0, v4, v5, a1);

  sub_100155940(v4, v5, v6, a2);
}

uint64_t sub_100157614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for EntertainmentEventView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));

  v7 = *(v5 + 40);
  sub_100009F70(&qword_100219710, &qword_1001B29A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DismissAction();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  sub_100027EB0(*(v6 + *(v5 + 44)), *(v6 + *(v5 + 44) + 8));

  return swift_deallocObject();
}

double sub_100157764(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for EntertainmentEventView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_100155A4C(a1, v9, v6, v7);
}

uint64_t sub_1001577F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for NavigationPath();
  OpaqueTypeMetadata2 = v1;
  v45 = &type metadata for DefaultHeroImageView;
  v46 = v2;
  v47 = sub_10006FEE0();
  type metadata accessor for HeaderModule(255, &OpaqueTypeMetadata2);
  v3 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v55 = &protocol witness table for _PaddingLayout;
  v4 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v3;
  v45 = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for DetailsModule(255, v1, v2, v5);
  v45 = type metadata accessor for ModifiedContent();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule(255, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v46 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule(255, v1, v2, v9);
  v47 = type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  v10 = type metadata accessor for ScrollView();
  v11 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v10;
  v45 = v11;
  v12 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v10;
  v45 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v12;
  v45 = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v12;
  v45 = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v14;
  v45 = v15;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_1002188F8, &unk_1001ADC20);
  v16 = type metadata accessor for ModifiedContent();
  OpaqueTypeMetadata2 = v14;
  v45 = v15;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = sub_10000D1EC(&qword_1002188F0, &qword_1002188F8, &unk_1001ADC20, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  v52 = v17;
  v53 = v18;
  v19 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v16;
  v45 = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v16;
  v45 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_100027068();
  OpaqueTypeMetadata2 = v20;
  v45 = &type metadata for String;
  v46 = v21;
  v47 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v20;
  v45 = &type metadata for String;
  v46 = v21;
  v47 = v22;
  v24 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v23;
  v45 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v23;
  v45 = v24;
  v26 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v25;
  v45 = &type metadata for Bool;
  v46 = v26;
  v47 = &protocol witness table for Bool;
  v27 = swift_getOpaqueTypeMetadata2();
  v28 = sub_10000B3DC(&qword_10021E3C0, &qword_1001BA350);
  OpaqueTypeMetadata2 = v25;
  v45 = &type metadata for Bool;
  v46 = v26;
  v47 = &protocol witness table for Bool;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = sub_10000B3DC(&qword_10021A8B8, &qword_1001B01D0);
  v31 = sub_1000DB938();
  OpaqueTypeMetadata2 = v30;
  v45 = v31;
  v32 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v27;
  v45 = v28;
  v46 = v29;
  v47 = v32;
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v27;
  v45 = v28;
  v46 = v29;
  v47 = v32;
  swift_getOpaqueTypeConformance2();
  type metadata accessor for NavigationStack();
  type metadata accessor for AccessibilityAttachmentModifier();
  v33 = type metadata accessor for ModifiedContent();
  v35 = type metadata accessor for EntertainmentEventView(255, v1, v2, v34);
  v36 = swift_getWitnessTable();
  v37 = sub_1000A3F28(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v50 = v36;
  v51 = v37;
  v38 = swift_getWitnessTable();
  v39 = *(v2 + 16);
  v40 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v33;
  v45 = v1;
  v46 = v35;
  v47 = v38;
  v48 = v39;
  v49 = v40;
  swift_getOpaqueTypeMetadata2();
  v41 = type metadata accessor for ModifiedContent();
  OpaqueTypeMetadata2 = v33;
  v45 = v1;
  v46 = v35;
  v47 = v38;
  v48 = v39;
  v49 = v40;
  swift_getOpaqueTypeConformance2();
  v42 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v41;
  v45 = v42;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100157F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100158060(v3 + 40, v12);
  v7 = v13;
  if (v13)
  {
    v8 = v14;
    sub_100028124(v12, v13);
    (*(v8 + 40))(a1, a2, 0, v7, v8);
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(a3, 0, 1, v10);
    return sub_100021498(v12);
  }

  else
  {
    sub_1001580D0(v12);
    v9 = type metadata accessor for URL();
    return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  }
}

uint64_t sub_100158060(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100219768, &qword_1001AE760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001580D0(uint64_t a1)
{
  v2 = sub_100009F70(&qword_100219768, &qword_1001AE760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_100158138(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10015815C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1001581A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10015820C(uint64_t a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    sub_100010780(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        type metadata accessor for ObservationRegistrar();
        if (v4 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1001583A0@<X0>(uint64_t a1@<X8>)
{
  v6 = *(*v1 + 80);
  KeyPath = swift_getKeyPath();
  sub_10015B5EC(KeyPath);

  v4 = *(*v1 + 144);
  swift_beginAccess();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_10015847C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  sub_1001583A0(&v9 - v5);
  v7 = (*(*(*(v2 + 88) + 8) + 136))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_1001585D0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v10 - v6;
  if (sub_10015C80C(v5))
  {
    v8 = 0;
  }

  else
  {
    sub_1001583A0(v7);
    v8 = sub_1000A0020(v3, *(*(v2 + 88) + 8));
    (*(v4 + 8))(v7, v3);
  }

  return v8 & 1;
}

uint64_t sub_1001586F4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v11 - v6;
  v8 = sub_10015C80C(v5);
  sub_1001583A0(v7);
  v9 = *(v2 + 88);
  if (v8)
  {
    (*(v9 + 96))(v3);
  }

  else
  {
    (*(v9 + 88))(v3);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100158830(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10015847C(a1);
  }

  else
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  return sub_10015B764(v1, v2);
}

uint64_t sub_100158868(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  sub_1001583A0(&v9 - v5);
  v7 = (*(*(*(v2 + 88) + 8) + 120))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_10015897C@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_10015B5EC(KeyPath);

  v4 = *(*v1 + 128);
  swift_beginAccess();
  return sub_10000F680(v1 + v4, a1);
}

uint64_t sub_100158A2C()
{
  v0 = sub_10015D804();

  return v0;
}

uint64_t sub_100158A64(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  sub_1001583A0(&v9 - v5);
  v7 = sub_1000A199C(v6, v3, *(*(v2 + 88) + 8));
  (*(v4 + 8))(v6, v3);
  return v7;
}

void *sub_100158B60()
{
  v0 = sub_10015D504();
  v1 = v0;
  return v0;
}

uint64_t sub_100158B8C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v8 - v5;
  sub_1001583A0(&v8 - v5);
  (*(*(*(v2 + 88) + 8) + 176))(v3);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100158C98()
{
  v1 = *(*(*v0 + 88) + 8);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = __chkstk_darwin(AssociatedTypeWitness);
  v5 = *(v2 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-v6];
  sub_1001583A0(&v23[-v6]);
  (*(v1 + 128))(v2, v1);
  (*(v5 + 8))(v7, v2);
  sub_100009F70(&qword_10021C558, &qword_1001B2FA8);
  if (swift_dynamicCast())
  {
    v9 = v24;
    v8 = v25;
    v11 = v26;
    v10 = v27;
    sub_100009F70(qword_1002217A8, &unk_1001BA7F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001ACB00;
    *(inited + 32) = static EventCategory<>.tennis.getter();
    *(inited + 40) = v13;
    *(inited + 48) = v14;
    *(inited + 56) = v15;
    *(inited + 64) = static EventCategory<>.golf.getter();
    *(inited + 72) = v16;
    *(inited + 80) = v17;
    *(inited + 88) = v18;
    v24 = sub_10015D890();
    type metadata accessor for Array();
    swift_getWitnessTable();
    v19 = Collection.isEmpty.getter();
    if ((v19 & 1) == 0)
    {
      v24 = v9;
      v25 = v8;
      v26 = v11;
      v27 = v10;
      __chkstk_darwin(v19);
      *&v23[-16] = &v24;
      v21 = sub_10015B460(sub_10015E3B0, &v23[-32], inited);
      swift_setDeallocating();
      swift_arrayDestroy();

      v20 = v21 ^ 1;
      return v20 & 1;
    }

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  v20 = 0;
  return v20 & 1;
}

uint64_t sub_100158FB0(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v17 - v4;
  v7 = *(v6 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - v11;
  sub_1001583A0(v5);
  (*(v7 + 80))(v2, v7);
  (*(v3 + 8))(v5, v2);
  v13 = *(AssociatedTypeWitness - 8);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v12, v9);
    return 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v13 + 8))(v12, AssociatedTypeWitness);
    return v16;
  }
}

uint64_t sub_100159240()
{
  sub_10015D890();
}

uint64_t sub_100159268@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_10015B5EC(KeyPath);

  v4 = *(*v1 + 96);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  return (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
}

uint64_t sub_100159350(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = &v20 - v6;
  v8 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_10001EF0C(a1);
  if (!v12)
  {
    goto LABEL_5;
  }

  v13 = v11;
  v14 = v12;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
LABEL_5:
    sub_10015C5C4(v11);
    v16 = type metadata accessor for URL();
    v17 = (*(*(v16 - 8) + 48))(v10, 1, v16);
    sub_10000D52C(v10, qword_100218748, &unk_1001AD110);
    if (v17 == 1)
    {
      LOBYTE(v15) = 0;
    }

    else
    {
      sub_1001583A0(v7);
      v18 = sub_1000A0020(v4, *(*(v3 + 88) + 8));
      (*(v5 + 8))(v7, v4);
      LOBYTE(v15) = v18 ^ 1;
    }
  }

  return v15 & 1;
}

uint64_t sub_100159560()
{
  v0 = sub_10015D478();

  return v0;
}

uint64_t sub_100159598()
{
  KeyPath = swift_getKeyPath();
  sub_10015B5EC(KeyPath);

  return *(v0 + *(*v0 + 112));
}

double sub_100159620(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v13 = *(v1 + v4);
  v12 = a1;
  v11 = *(v3 + 80);
  sub_10001EBF4();
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v5)
  {
    *(v1 + v4) = a1;
  }

  else
  {
    __chkstk_darwin(v5);
    v10 = *(&v11 + 1);
    KeyPath = swift_getKeyPath();
    v8 = __chkstk_darwin(KeyPath);
    v9[2] = v1;
    LOBYTE(v10) = a1;
    sub_10015B68C(v8, sub_10015E2A8, v9, &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_100159780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v17 - v7;
  v9 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  sub_1001583A0(v8);
  (*(*(v4 + 88) + 64))(v5);
  (*(v6 + 8))(v8, v5);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  if (v14 == 1)
  {
    sub_10000D52C(v11, qword_100218748, &unk_1001AD110);
    v15 = 1;
  }

  else
  {
    sub_10015C6CC(v14);
    URL.appending(queryItems:)();

    (*(v13 + 8))(v11, v12);
    v15 = 0;
  }

  return (*(v13 + 56))(a2, v15, 1, v12);
}

uint64_t sub_1001599B8()
{
  v0 = sub_100009F70(qword_100218748, &unk_1001AD110);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  sub_10015C5C4(v1);
  v4 = type metadata accessor for URL();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
  v6 = sub_10000D52C(v3, qword_100218748, &unk_1001AD110);
  if (v5 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_10015C80C(v6);
  }

  return v7 & 1;
}

void sub_100159AAC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v9 = a1;
  v10 = sub_100158868(a1);
  v12 = v11;
  v13 = sub_100158A64(v10);
  sub_100009F70(qword_100218F38, &unk_1001ADA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v10;
  *(inited + 48) = v12;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = v13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = v9;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = a2;
  *(inited + 160) = a3;
  *(inited + 168) = a4;
  if (*(a5 + 72))
  {
    v15 = *(a5 + 64);
    v16 = *(a5 + 72);
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v23 = v15;
  v24 = v16;

  sub_1000109A4(a2, a3, a4);

  v17 = sub_1001666DC(1, 5, 1, inited);
  v21 = v17;
  sub_1000109BC(&aBlock, v28);
  sub_1000EB0D0(4, v28, &v21, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  v19[2] = 0xD00000000000001ELL;
  v19[3] = 0x80000001001BDDE0;
  v19[4] = v17;
  v26 = sub_100038F2C;
  v27 = v19;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_1000DCA40;
  v25 = &unk_100210C90;
  v20 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();

  _Block_release(v20);
}

uint64_t sub_100159D44(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_10015CC04(a1);
  return v2;
}

void sub_100159D84(uint64_t a1)
{
  v2 = sub_100158868(a1);
  v4 = v3;
  v5 = sub_100158A64(v2);
  sub_1000DCEDC(v2, v4, v5, a1);

  v7 = sub_10015C80C(v6);
  if ((v7 & 1) == 0)
  {
    v8 = sub_100158868(v7);
    v10 = v9;
    v11 = sub_100158A64(v8);
    sub_100009F70(qword_100218F38, &unk_1001ADA10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001AD8A0;
    *(inited + 56) = &type metadata for AnalyticsString;
    *(inited + 64) = &off_10021CBD0;
    *(inited + 32) = 0;
    *(inited + 40) = v8;
    *(inited + 48) = v10;
    *(inited + 96) = &type metadata for AnalyticsPageName;
    *(inited + 104) = &off_10021CBA8;
    *(inited + 72) = v11;
    *(inited + 136) = &type metadata for AnalyticsModuleName;
    *(inited + 144) = &off_10021CC30;
    *(inited + 112) = 1;
    *(inited + 176) = &type metadata for AnalyticsModuleAction;
    *(inited + 184) = &off_10021CC08;
    *(inited + 152) = xmmword_1001BA4C0;
    *(inited + 168) = 3;
    if (*(a1 + 72))
    {
      v13 = *(a1 + 64);
      v14 = *(a1 + 72);
    }

    else
    {
      v13 = 0;
      v14 = 0xE000000000000000;
    }

    LOBYTE(aBlock) = 1;
    v21 = v13;
    v22 = v14;

    v15 = sub_1001666DC(1, 5, 1, inited);
    v19 = v15;
    sub_1000109BC(&aBlock, v26);
    sub_1000EB0D0(4, v26, &v19, &type metadata for AnalyticsString, &off_10021CBD0);
    sub_100010A18(&aBlock);
    v16 = String._bridgeToObjectiveC()();
    v17 = swift_allocObject();
    v17[2] = 0xD00000000000001ELL;
    v17[3] = 0x80000001001BDDE0;
    v17[4] = v15;
    v24 = sub_100010AAC;
    v25 = v17;
    aBlock = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_1000DCA40;
    v23 = &unk_100210C40;
    v18 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v18);
  }
}

uint64_t sub_10015A038()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *(*(*v0 + 88) + 8);
  v1[4] = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[5] = AssociatedTypeWitness;
  v1[6] = *(AssociatedTypeWitness - 8);
  v1[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v5;
  v1[10] = v4;

  return _swift_task_switch(sub_10015A174, v5, v4);
}

uint64_t sub_10015A174()
{
  if (sub_10015D504())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    sub_100158B8C(0);
    v3 = swift_task_alloc();
    v0[11] = v3;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *v3 = v0;
    v3[1] = sub_10015A298;
    v5 = v0[7];
    v6 = v0[5];

    return sub_10019C8F0(v5, v6, AssociatedConformanceWitness);
  }
}

uint64_t sub_10015A298(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 48);

  v7 = (v6 + 8);
  v8 = v4[7];
  v9 = v4[5];
  if (v1)
  {

    (*v7)(v8, v9);
    v10 = v5[9];
    v11 = v5[10];
    v12 = sub_10015A4B8;
  }

  else
  {
    v5[12] = a1;
    (*v7)(v8, v9);
    v10 = v5[9];
    v11 = v5[10];
    v12 = sub_10015A440;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_10015A440()
{
  v1 = *(v0 + 96);

  sub_10015BDAC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10015A4B8()
{

  sub_10015BDAC(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015A52C()
{
  v1[42] = v0;
  v1[43] = *v0;
  v2 = type metadata accessor for URLComponents();
  v1[44] = v2;
  v1[45] = *(v2 - 8);
  v1[46] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[47] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[48] = v4;
  v1[49] = v3;

  return _swift_task_switch(sub_10015A648, v4, v3);
}

uint64_t sub_10015A648()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = swift_task_alloc();
  *(v0 + 400) = v7;
  *v7 = v0;
  v7[1] = sub_10015A774;

  return sub_10013AF88(v0 + 144, v4, v6);
}

uint64_t sub_10015A774()
{
  v1 = *v0;

  v2 = *(v1 + 392);
  v3 = *(v1 + 384);

  return _swift_task_switch(sub_10015A894, v3, v2);
}

uint64_t sub_10015A894()
{

  sub_10015C02C((v0 + 18));
  sub_10015DBEC((v0 + 10));
  if (v0[15] && v0[17])
  {
    sub_100009F70(&qword_10021C438, &qword_1001BD7E0);
    type metadata accessor for URLQueryItem();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1001ACB00;
    sub_10008319C((v0 + 10), (v0 + 34));
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    sub_1000831F8((v0 + 10));
    v2 = v1;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v3 = v2[2];

  if (v3)
  {
    URLComponents.init()();
    sub_10015DBEC((v0 + 2));
    if (v0[7] && v0[9])
    {
      sub_100009F70(&qword_10021C438, &qword_1001BD7E0);
      type metadata accessor for URLQueryItem();
      *(swift_allocObject() + 16) = xmmword_1001ACB00;
      sub_10008319C((v0 + 2), (v0 + 26));
      URLQueryItem.init(name:value:)();
      URLQueryItem.init(name:value:)();
      sub_1000831F8((v0 + 2));
    }

    v5 = v0[45];
    v4 = v0[46];
    v6 = v0[44];
    URLComponents.queryItems.setter();
    v7 = URLComponents.percentEncodedQuery.getter();
    sub_10015C180(v7, v8);
    (*(v5 + 8))(v4, v6);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10015AB78()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *(*v0 + 88);
  v3 = *(v2 + 80);
  v1[4] = v3;
  v1[5] = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v1[6] = v4;
  v1[7] = *(v4 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[13] = v6;
  v1[14] = v5;

  return _swift_task_switch(sub_10015AD20, v6, v5);
}

uint64_t sub_10015AD20()
{
  v1 = v0[3];
  sub_1001583A0(v0[11]);
  v2 = *(v1 + 8);
  v6 = (*(v2 + 184) + **(v2 + 184));
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_10015AE48;
  v4 = v0[4];

  return v6(v4, v2);
}

uint64_t sub_10015AE48(uint64_t a1)
{
  v4 = *v2;
  v4[16] = v1;

  v5 = v4[11];
  v6 = v4[9];
  v7 = v4[4];
  if (v1)
  {
    v8 = *(v6 + 8);
    v4[18] = v8;
    v4[19] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v7);
    v9 = v4[13];
    v10 = v4[14];
    v11 = sub_10015B068;
  }

  else
  {
    v4[17] = a1;
    (*(v6 + 8))(v5, v7);
    v9 = v4[13];
    v10 = v4[14];
    v11 = sub_10015AFDC;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_10015AFDC()
{
  v1 = *(v0 + 136);

  sub_10015B8DC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10015B068()
{
  v26 = v0;
  v1 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10001FDF4(v2, qword_100230610);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0 + 5;
    v6 = v1[5];
    v22 = v1[18];
    v7 = v1[10];
    v8 = v1[8];
    v10 = v1[3];
    v9 = v1[4];
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v11 = 136315394;
    sub_1001583A0(v7);
    (*(v10 + 80))(v9, v10);
    v22(v7, v9);
    v12 = *(v6 - 8);
    if ((*(v12 + 48))(v8, 1, v6) == 1)
    {
      v12 = v1[7];
      v5 = v1 + 6;
      v13 = 0xE100000000000000;
      v14 = 45;
    }

    else
    {
      v15 = v1[5];
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v14 = (*(AssociatedConformanceWitness + 40))(v15, AssociatedConformanceWitness);
      v13 = v17;
    }

    (*(v12 + 8))(v1[8], *v5);
    v18 = sub_10005D4E8(v14, v13, &v25);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v19;
    *v23 = v19;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch schedule for league: %s, error: %@", v11, 0x16u);
    sub_10000D52C(v23, &qword_10021B938, &unk_1001B16A0);

    sub_100021498(v24);
  }

  else
  {
  }

  v20 = v1[1];

  return v20();
}

uint64_t sub_10015B3E4()
{
  v0 = sub_100009F70(qword_100218748, &unk_1001AD110);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v5 - v2;
  sub_100159780(v1, &v5 - v2);
  return sub_10015BB0C(v3);
}

uint64_t sub_10015B460(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 2);
      v14[0] = *(v7 - 3);
      v14[1] = v10;
      v14[2] = v8;
      v14[3] = v9;

      v11 = a1(v14);

      if (v3)
      {
        break;
      }

      v7 += 4;
      v12 = v6-- == 0;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_10015B524()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 574;
  }

  else
  {
    return 312;
  }
}

uint64_t sub_10015B588()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 1020;
  }

  else
  {
    return 555;
  }
}

uint64_t sub_10015B764(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = (v2 + *(*v2 + 104));
  v7 = v6[1];
  v16 = *v6;
  v17 = v7;
  v14 = a1;
  v15 = a2;
  v13 = *(v5 + 80);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v8)
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    __chkstk_darwin(v8);
    v12[5] = *(&v13 + 1);
    KeyPath = swift_getKeyPath();
    v11 = __chkstk_darwin(KeyPath);
    v12[2] = v2;
    v12[3] = a1;
    v12[4] = a2;
    sub_10015B68C(v11, sub_10015E358, v12, &type metadata for () + 8);
  }
}

uint64_t sub_10015B8DC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 120);
  v6 = *(v2 + v5);
  v11[6] = a1;
  v11[7] = v6;
  type metadata accessor for Array();
  v11[5] = *(*(*(*(v4 + 88) + 8) + 8) + 8);
  swift_getWitnessTable();
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v7)
  {
    *(v2 + v5) = a1;
  }

  else
  {
    __chkstk_darwin(v7);
    KeyPath = swift_getKeyPath();
    v10 = __chkstk_darwin(KeyPath);
    v11[2] = v2;
    v11[3] = a1;
    sub_10015B68C(v10, sub_1000EB1F0, v11, &type metadata for () + 8);
  }
}

uint64_t sub_10015BA78(uint64_t a1)
{
  v2 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10000F680(a1, &v6 - v3);
  return sub_10015BB0C(v4);
}

uint64_t sub_10015BB0C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v5);
  v7 = v14 - v6;
  v8 = *(v4 + 128);
  swift_beginAccess();
  sub_10000F680(v1 + v8, v7);
  v14[0] = *(v4 + 80);
  sub_1000BA1A0();
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = sub_10000D52C(v7, qword_100218748, &unk_1001AD110);
  if (v9)
  {
    swift_beginAccess();
    sub_1000BA254(a1, v2 + v8);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v10);
    v14[-1] = v14[0];
    KeyPath = swift_getKeyPath();
    v12 = __chkstk_darwin(KeyPath);
    *&v14[-1] = v2;
    *(&v14[-1] + 1) = a1;
    sub_10015B68C(v12, sub_10015D958, &v14[-2], &type metadata for () + 8);
  }

  return sub_10000D52C(a1, qword_100218748, &unk_1001AD110);
}

uint64_t sub_10015BD34(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 128);
  swift_beginAccess();
  sub_1000BA254(a2, a1 + v4);
  return swift_endAccess();
}

void sub_10015BDAC(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 136);
  v6 = *(v2 + v5);
  v13 = a1;
  v14 = v6;
  sub_100009F70(&qword_10021D568, &qword_1001B47A0);
  v12 = *(v4 + 80);
  sub_1000BB21C();
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v7)
  {
    v8 = *(v2 + v5);
    *(v2 + v5) = a1;
  }

  else
  {
    __chkstk_darwin(v7);
    KeyPath = swift_getKeyPath();
    v10 = __chkstk_darwin(KeyPath);
    v11[2] = v2;
    v11[3] = a1;
    sub_10015B68C(v10, sub_10015E1CC, v11, &type metadata for () + 8);
  }
}

uint64_t sub_10015BF24(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 144);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 24))(&a1[v5], a2);
  return swift_endAccess();
}

double sub_10015BFE0@<D0>(_OWORD *a2@<X8>)
{
  sub_10015DBEC(v7);
  sub_10008319C(v7, &v6);
  v3 = v7[1];
  *a2 = v7[0];
  a2[1] = v3;
  result = *&v8;
  v5 = v9;
  a2[2] = v8;
  a2[3] = v5;
  return result;
}

double sub_10015C02C(uint64_t a1)
{
  v8 = *(*v1 + 80);
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_10015B68C(KeyPath, sub_10015DD38, &v5, &type metadata for () + 8);
  sub_1000831F8(a1);

  return result;
}

uint64_t sub_10015C0DC(uint64_t a1, _OWORD *a2)
{
  v2 = (a1 + *(*a1 + 152));
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  v4 = a2[3];
  v2[2] = a2[2];
  v2[3] = v4;
  sub_10008319C(a2, &v6);
}

uint64_t sub_10015C180(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = v3 + *(v6 + 160);
  v16 = *v7;
  v14 = a1;
  v15 = a2;
  sub_100009F70(&qword_100219F00, &qword_1001AF350);
  v13 = *(v6 + 80);
  sub_10007CA7C();
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v8)
  {
    *v7 = a1;
    *(v7 + 1) = a2;
  }

  else
  {
    __chkstk_darwin(v8);
    v12[5] = *(&v13 + 1);
    KeyPath = swift_getKeyPath();
    v11 = __chkstk_darwin(KeyPath);
    v12[2] = v3;
    v12[3] = a1;
    v12[4] = a2;
    sub_10015B68C(v11, sub_10015E0FC, v12, &type metadata for () + 8);
  }
}

uint64_t sub_10015C30C(uint64_t a1, uint64_t a2)
{
  v27[0] = a1;
  v27[1] = a2;
  v3 = *(*(*v2 + 88) + 8);
  v4 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = __chkstk_darwin(AssociatedTypeWitness);
  v9 = v27 - v8;
  v10 = *(v4 - 8);
  v11 = __chkstk_darwin(v7);
  v13 = v27 - v12;
  v14 = sub_10015C80C(v11);
  v15 = 0;
  v16 = 0;
  if ((v14 & 1) == 0)
  {
    sub_1001583A0(v13);
    (*(v3 + 168))(v4, v3);
    (*(v10 + 8))(v13, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v15 = sub_1000FC8F4(AssociatedTypeWitness, AssociatedConformanceWitness);
    v16 = v18;
    v14 = (*(v6 + 8))(v9, AssociatedTypeWitness);
  }

  v19 = v15;
  v20 = sub_10015C80C(v14);
  if (v20)
  {
    result = sub_10015CB74();
    if (!v16)
    {
      return result;
    }
  }

  else
  {
    result = sub_100158FB0(v20);
    if (!v16)
    {
      return result;
    }
  }

  if (!v22)
  {
    return v15;
  }

  v23 = result;
  v24 = v22;
  sub_100009F70(&qword_100219EF8, &qword_1001AF310);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1001ACB00;
  *(v25 + 56) = &type metadata for String;
  v26 = sub_100096600();
  *(v25 + 32) = v19;
  *(v25 + 40) = v16;
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = v26;
  *(v25 + 64) = v26;
  *(v25 + 72) = v23;
  *(v25 + 80) = v24;
  return String.init(format:_:)();
}

uint64_t sub_10015C5C4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v8 - v5;
  sub_1001583A0(&v8 - v5);
  (*(*(v2 + 88) + 64))(v3);
  return (*(v4 + 8))(v6, v3);
}

void *sub_10015C6CC(uint64_t a1)
{
  sub_10015DBEC(v4);
  if (!v5 || !v6)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100009F70(&qword_10021C438, &qword_1001BD7E0);
  type metadata accessor for URLQueryItem();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1001ACB00;
  sub_10008319C(v4, &v3);
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  sub_1000831F8(v4);
  return v1;
}

uint64_t sub_10015C80C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v24[-v4];
  v7 = *(v6 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-v11];
  v13 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v13 - 8);
  v15 = &v24[-v14];
  sub_1001583A0(v5);
  (*(v7 + 96))(v2, v7);
  (*(v3 + 8))(v5, v2);
  v16 = *(AssociatedTypeWitness - 8);
  v17 = 1;
  if ((*(v16 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    v18 = 0;
    AssociatedTypeWitness = v9;
  }

  else
  {
    v19 = sub_10015B588();
    v20 = sub_10015B524();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(v19, v20, AssociatedTypeWitness, AssociatedConformanceWitness);
    v17 = 0;
    v18 = 1;
    v10 = v16;
  }

  (*(v10 + 8))(v12, AssociatedTypeWitness);
  v22 = type metadata accessor for URL();
  (*(*(v22 - 8) + 56))(v15, v17, 1, v22);
  sub_10000D52C(v15, qword_100218748, &unk_1001AD110);
  return v18;
}

id sub_10015CB74()
{
  result = sub_10015D504();
  if (result)
  {
    result = [result addressRepresentations];
    if (result)
    {
      v1 = result;
      v2 = [result cityName];

      if (v2)
      {
        v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v3;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_10015CC04(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v4 - 8);
  v6 = &v36[-v5];
  v7 = *(v3 + 80);
  v8 = type metadata accessor for Optional();
  __chkstk_darwin(v8 - 8);
  v10 = &v36[-v9];
  (*(*(v7 - 8) + 56))(&v36[-v9], 1, 1, v7);
  v11 = *(*v1 + 96);
  v12 = type metadata accessor for Optional();
  (*(*(v12 - 8) + 32))(v1 + v11, v10, v12);
  v13 = (v1 + *(*v1 + 104));
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  *(v1 + *(*v1 + 112)) = 1;
  *(v1 + *(*v1 + 120)) = static Array._allocateUninitialized(_:)();
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_1000B9AEC(v6, v1 + *(*v1 + 128));
  *(v1 + *(*v1 + 136)) = 0;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  memset(v41, 0, 64);
  sub_10008319C(&v37, v36);
  sub_1000831F8(v41);
  v15 = (v1 + *(*v1 + 152));
  v16 = v40;
  v15[2] = v39;
  v15[3] = v16;
  v17 = v38;
  *v15 = v37;
  v15[1] = v17;
  v18 = (v1 + *(*v1 + 160));
  *v18 = 0;
  v18[1] = 0;
  v19 = (v1 + *(*v1 + 168));
  v20 = objc_opt_self();
  v21 = [v20 mainBundle];
  v42._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0xD00000000000002ALL;
  v22._object = 0x80000001001BF370;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v42._countAndFlagsBits = 0;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v42);

  *v19 = v24;
  v25 = (v1 + *(*v1 + 176));
  v26 = [v20 mainBundle];
  v43._object = 0xE000000000000000;
  v27._object = 0x80000001001C0320;
  v27._countAndFlagsBits = 0xD000000000000029;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v43._countAndFlagsBits = 0;
  v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v43);

  *v25 = v29;
  v30 = (v1 + *(*v1 + 184));
  v31 = [v20 mainBundle];
  v44._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0xD000000000000037;
  v32._object = 0x80000001001C0350;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v44._countAndFlagsBits = 0;
  v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v44);

  *v30 = v34;
  ObservationRegistrar.init()();
  (*(*(*(*v1 + 80) - 8) + 32))(v1 + *(*v1 + 144), a1);
  return v1;
}

uint64_t sub_10015D0D8()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);

  sub_10000D52C(v0 + *(*v0 + 128), qword_100218748, &unk_1001AD110);

  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 144), v2);

  v4 = *(*v0 + 192);
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_10015D340()
{
  sub_10015D0D8();

  return swift_deallocClassInstance();
}

uint64_t sub_10015D3B0(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for Sport();
  sub_10015E3D0(&qword_100221510, &type metadata accessor for Sport, &protocol conformance descriptor for Sport);
  return static EventCategory.== infix<A, B>(_:_:)() & 1;
}

uint64_t sub_10015D478()
{
  KeyPath = swift_getKeyPath();
  sub_10015B5EC(KeyPath);

  return *(v0 + *(*v0 + 104));
}

uint64_t sub_10015D504()
{
  KeyPath = swift_getKeyPath();
  sub_10015B5EC(KeyPath);

  return *(v0 + *(*v0 + 136));
}

uint64_t sub_10015D58C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v30 = a3;
  v8 = *v4;
  v9 = sub_100009F70(qword_100218748, &unk_1001AD110);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v29 - v11;
  v13 = *(v8 + 80);
  v14 = *(v13 - 8);
  __chkstk_darwin(v10);
  v16 = &v29 - v15;
  sub_1001583A0(&v29 - v15);
  v17 = sub_1000A0020(v13, *(*(v8 + 88) + 8));
  v18 = (*(v14 + 8))(v16, v13);
  sub_10015C5C4(v18);
  v19 = type metadata accessor for URL();
  v20 = (*(*(v19 - 8) + 48))(v12, 1, v19);
  sub_10000D52C(v12, qword_100218748, &unk_1001AD110);
  v21 = [a4 isHidden];
  v22 = *(a1 + 72);
  if (!v22)
  {
    v23 = 0;
    v24 = 0;
    if ((v20 == 1 || (v17 & 1) == 0) | v21 & 1)
    {
      return v24 & 1;
    }

    goto LABEL_11;
  }

  if (*(a1 + 64) == a2 && v22 == v30)
  {
    if (!((v20 == 1 || (v17 & 1) == 0) | v21 & 1))
    {
      v23 = 1;
LABEL_11:
      v24 = v23 ^ 1;
      return v24 & 1;
    }
  }

  else
  {
    v25 = v20 == 1;
    v26 = v21;
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (!((v25 || (v17 & 1) == 0) | v26 & 1))
    {
      v23 = v27;
      goto LABEL_11;
    }
  }

  v24 = 0;
  return v24 & 1;
}

uint64_t sub_10015D804()
{
  KeyPath = swift_getKeyPath();
  sub_10015B5EC(KeyPath);

  return *(v0 + *(*v0 + 160));
}

uint64_t sub_10015D890()
{
  KeyPath = swift_getKeyPath();
  sub_10015B5EC(KeyPath);

  return *(v0 + *(*v0 + 120));
}

__n128 sub_10015D94C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_10015D974(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - v8;
  v10 = *(v4 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v10, v6);
  v11 = *(v4 + 88);
  v16[4] = *(*(*(v11 + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = (*(v7 + 8))(v9, v6);
  if (v4)
  {
    swift_beginAccess();
    (*(v7 + 24))(v2 + v10, a1, v6);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v12);
    v16[-2] = v5;
    v16[-1] = v11;
    KeyPath = swift_getKeyPath();
    v15 = __chkstk_darwin(KeyPath);
    v16[-2] = v2;
    v16[-1] = a1;
    sub_10015B68C(v15, sub_1000EB9CC, &v16[-4], &type metadata for () + 8);
  }

  return result;
}

__n128 sub_10015DBEC@<Q0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_10015B5EC(KeyPath);

  v4 = v1 + *(*v1 + 152);
  v5 = *(v4 + 16);
  *a1 = *v4;
  *(a1 + 16) = v5;
  result = *(v4 + 32);
  v7 = *(v4 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v7;
  return result;
}

uint64_t sub_10015DC90@<X0>(_OWORD *a1@<X8>)
{
  sub_10015DBEC(v6);
  v2 = v6[1];
  *a1 = v6[0];
  a1[1] = v2;
  v3 = v6[3];
  a1[2] = v6[2];
  a1[3] = v3;
  return sub_10008319C(v6, &v5);
}

double sub_10015DCE0(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  sub_10008319C(v5, &v4);
  return sub_10015C02C(v5);
}

double sub_10015DDA8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v15[-v7];
  v9 = *(v4 + 144);
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  v10 = *(v4 + 88);
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = (*(v6 + 8))(v8, v5);
  if (v4)
  {
    swift_beginAccess();
    (*(v6 + 24))(v2 + v9, a1, v5);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v11);
    *&v15[-16] = v5;
    *&v15[-8] = v10;
    KeyPath = swift_getKeyPath();
    v14 = __chkstk_darwin(KeyPath);
    *&v15[-16] = v2;
    *&v15[-8] = a1;
    sub_10015B68C(v14, sub_10015DFE0, &v15[-32], &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_10015DFFC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_10015D890();
}

uint64_t sub_10015E070@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_10015D804();
  a1[1] = v2;
}

uint64_t sub_10015E0B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_10015C180(v1, v2);
}

uint64_t sub_10015E0FC()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 160));
  *v2 = v0[3];
  v2[1] = v1;
}

id sub_10015E154@<X0>(void *a1@<X8>)
{
  v2 = sub_10015D504();
  *a1 = v2;

  return v2;
}

void sub_10015E190(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10015BDAC(v1);
}

void sub_10015E1CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*v1 + 136);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v5 = v2;
}

uint64_t sub_10015E21C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10015E248@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100159598();
  *a1 = result;
  return result;
}

uint64_t sub_10015E2CC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_10015D478();
  a1[1] = v2;
}

uint64_t sub_10015E30C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_10015B764(v1, v2);
}

uint64_t sub_10015E358()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 104));
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_10015E3D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10015E444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  type metadata accessor for FilterViewModel.FilterState(255, v4, v5, a4);
  type metadata accessor for Published();
  if (v6 <= 0x3F)
  {
    type metadata accessor for Array();
    type metadata accessor for Published();
    if (v7 <= 0x3F)
    {
      sub_1001631B4(319);
      if (v8 <= 0x3F)
      {
        sub_10016320C(319);
        if (v9 <= 0x3F)
        {
          swift_getAssociatedTypeWitness();
          type metadata accessor for Array();
          type metadata accessor for Published();
          if (v10 <= 0x3F)
          {
            swift_getAssociatedConformanceWitness();
            type metadata accessor for Set();
            type metadata accessor for Published();
            if (v11 <= 0x3F)
            {
              sub_100163270(319, &qword_100221840, &type metadata for EdgeInsets);
              if (v12 <= 0x3F)
              {
                sub_100163270(319, qword_100221848, &type metadata for CGFloat);
                if (v14 <= 0x3F)
                {
                  type metadata accessor for FilterViewModel.FilterConfiguration(255, v4, v5, v13);
                  type metadata accessor for Binding();
                  if (v15 <= 0x3F)
                  {
                    swift_initClassMetadata2();
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

uint64_t sub_10015E7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  v15 = type metadata accessor for FilterViewModel.FilterConfiguration(0, a8, a10, a4);
  v16 = v15[11];
  v17 = type metadata accessor for DateInterval();
  (*(*(v17 - 8) + 32))(&a9[v16], a4, v17);
  result = sub_10000F618(a5, &a9[v15[12]], &qword_10021F5E0, &qword_1001B76F0);
  *&a9[v15[13]] = a6;
  *&a9[v15[14]] = a7;
  return result;
}

double sub_10015E890()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10015E9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for CompactDatePickerConfiguration(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100164A50(a1, v11);
  return sub_10015EA84(v11, a5, a6);
}

uint64_t sub_10015EA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = type metadata accessor for CompactDatePickerConfiguration(0);
  __chkstk_darwin(v6 - 8);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + 80);
  v9 = v13;
  v10 = *(v5 + 88);
  v14 = v10;
  swift_getKeyPath();
  v12[0] = v9;
  v12[1] = v10;
  swift_getKeyPath();
  sub_100164A50(a1, v8);

  static Published.subscript.setter();
  return sub_100164AB4(a1);
}

uint64_t sub_10015EBC0@<X0>(char *a1@<X8>)
{
  v22 = a1;
  v2 = *v1;
  v21 = type metadata accessor for CompactDatePickerConfiguration(0) - 8;
  __chkstk_darwin(v21);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = sub_100009F70(&qword_10021F5E0, &qword_1001B76F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v25 = *(v2 + 80);
  v15 = v25;
  v26 = *(v2 + 88);
  v16 = v26;
  swift_getKeyPath();
  v23 = v15;
  v24 = v16;
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = *(v6 + 16);
  v17(v11, v14, v5);
  sub_10000D52C(v14, &qword_10021F5E0, &qword_1001B76F0);
  v18 = sub_10015E994();
  (v17)(v9, &v4[*(v21 + 28)], v5, v18);
  sub_100164AB4(v4);
  sub_100106088(v11, v9, v22);
  v19 = *(v6 + 8);
  v19(v9, v5);
  return (v19)(v11, v5);
}

double sub_10015EE5C()
{
  v0 = type metadata accessor for CompactDatePickerConfiguration(0);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015E948();
  LOBYTE(v1) = v3[*(v1 + 32)];
  sub_100164AB4(v3);
  result = 0.0;
  if ((v1 & 1) == 0)
  {
    return sub_10015EB98() * -0.5;
  }

  return result;
}

double sub_10015EF24(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_10015EFEC(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10015F0A4@<X0>(char *a1@<X8>)
{
  v25 = a1;
  v2 = *v1;
  v24 = sub_100009F70(&qword_10021F5E0, &qword_1001B76F0) - 8;
  __chkstk_darwin(v24);
  v23 = &v22 - v3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = type metadata accessor for CompactDatePickerConfiguration(0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10015E948();
  v16 = *(v5 + 16);
  v16(v10, &v14[*(v12 + 28)], v4, v15);
  sub_100164AB4(v14);
  v28 = *(v2 + 80);
  v17 = v28;
  v18 = *(v2 + 88);
  v29 = v18;
  swift_getKeyPath();
  v26 = v17;
  v27 = v18;
  swift_getKeyPath();
  v19 = v23;
  static Published.subscript.getter();

  (v16)(v8, v19 + *(v24 + 44), v4);
  sub_10000D52C(v19, &qword_10021F5E0, &qword_1001B76F0);
  sub_100106088(v10, v8, v25);
  v20 = *(v5 + 8);
  v20(v8, v4);
  return (v20)(v10, v4);
}

void sub_10015F350()
{
  v0 = type metadata accessor for CompactDatePickerConfiguration(0);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015E948();
  sub_100164AB4(v3);
  sub_10015E994();
  LOBYTE(v1) = v3[*(v1 + 32)];
  sub_100164AB4(v3);
  if ((v1 & 1) == 0)
  {
    sub_10015EF10();
  }
}

BOOL sub_10015F430(void (*a1)(uint64_t))
{
  v2 = type metadata accessor for Date();
  v22 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v21 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  v7 = type metadata accessor for DateInterval();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v14 = sub_100161D54();
  a1(v14);
  v15 = *(v8 + 8);
  v15(v13, v7);
  v16 = sub_100161A9C(v11);
  v17 = v21;
  a1(v16);
  v15(v11, v7);
  sub_100165340(&qword_10021FDF8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v22 + 8);
  v19(v17, v2);
  v19(v6, v2);
  return (v18 & 1) == 0;
}

BOOL sub_10015F69C()
{
  sub_10015F768();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v0 = Collection.isEmpty.getter();

  return (v0 & 1) == 0;
}

uint64_t sub_10015F77C(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v6 = __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v27 = type metadata accessor for Optional();
  v11 = *(v27 - 8);
  __chkstk_darwin(v27);
  v13 = &v26 - v12;
  v14 = sub_10015FE70(a1);
  if (v14)
  {
    __chkstk_darwin(v14);
    *(&v26 - 2) = v4;
    *(&v26 - 1) = v3;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v26 - 2) = v4;
    *(&v26 - 1) = v3;
    swift_getKeyPath();
    v29 = KeyPath;
    v16 = static Published.subscript.modify();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Set();
    Set.remove(_:)();
    (*(v11 + 8))(v13, v27);
    v16(v30, 0);
  }

  else
  {
    v17 = v28;
    v18 = (*(v28 + 16))(v8, a1, AssociatedTypeWitness);
    __chkstk_darwin(v18);
    *(&v26 - 2) = v4;
    *(&v26 - 1) = v3;
    v19 = swift_getKeyPath();
    __chkstk_darwin(v19);
    *(&v26 - 2) = v4;
    *(&v26 - 1) = v3;
    swift_getKeyPath();
    v29 = v19;
    v20 = static Published.subscript.modify();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Set();
    Set.insert(_:)();
    (*(v17 + 8))(v10, AssociatedTypeWitness);
    v20(v30, 0);
  }

  return sub_10015FF70(v21, v22, v23, v24);
}

void sub_10015FB7C(char a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  sub_100009F70(qword_100218F38, &unk_1001ADA10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001AD8A0;
  v11 = sub_100160DE4();
  *(v10 + 56) = &type metadata for AnalyticsString;
  *(v10 + 64) = &off_10021CBD0;
  *(v10 + 32) = 0;
  *(v10 + 40) = v11;
  *(v10 + 48) = v12;
  *(v10 + 96) = &type metadata for AnalyticsPageName;
  *(v10 + 104) = &off_10021CBA8;
  *(v10 + 72) = 12;
  *(v10 + 136) = &type metadata for AnalyticsModuleName;
  *(v10 + 144) = &off_10021CC30;
  *(v10 + 112) = a1;
  *(v10 + 176) = &type metadata for AnalyticsModuleAction;
  *(v10 + 184) = &off_10021CC08;
  *(v10 + 152) = a2;
  *(v10 + 160) = a3;
  *(v10 + 168) = a4;
  if (*(a5 + 72))
  {
    v13 = *(a5 + 64);
    v14 = *(a5 + 72);
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  v28 = &type metadata for AnalyticsString;
  v29 = &off_10021CBD0;
  LOBYTE(aBlock) = 1;
  v26 = v13;
  v27 = v14;
  sub_1000109A4(a2, a3, a4);
  v31 = v10;
  v15 = *(v10 + 16);
  v16 = *(v10 + 24);

  if (v15 >= v16 >> 1)
  {
    v10 = sub_1001666DC((v16 > 1), v15 + 1, 1, v10);
    v31 = v10;
  }

  v17 = sub_100031420(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v17);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  sub_1000EB0D0(v15, v19, &v31, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100021498(&aBlock);
  v21 = String._bridgeToObjectiveC()();
  v22 = swift_allocObject();
  v22[2] = 0xD00000000000001ELL;
  v22[3] = 0x80000001001BDDE0;
  v22[4] = v10;
  v29 = sub_100010AAC;
  v30 = v22;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_1000DCA40;
  v28 = &unk_100210E60;
  v23 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v23);
}

uint64_t sub_10015FE70(uint64_t a1)
{
  sub_10015FF3C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v1 = Set.contains(_:)();

  return v1 & 1;
}

uint64_t sub_10015FF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 80);
  v6 = *(*v4 + 88);
  v7 = type metadata accessor for FilterViewModel.FilterConfiguration(0, v5, v6, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - v9;
  v20[2] = v5;
  v20[3] = v6;
  swift_getKeyPath();
  v20[0] = v5;
  v20[1] = v6;
  swift_getKeyPath();
  LOBYTE(v21) = 0;

  static Published.subscript.setter();
  v11 = static Array._allocateUninitialized(_:)();
  v12 = sub_100161800(v11, &unk_1001BAA08, &unk_1001BAA40);
  sub_100161178(v12, v13, v14, v15);
  v16 = *(v10 + 1);
  v17 = *(v8 + 8);

  v17(v10, v7);
  v21 = v16;
  type metadata accessor for Array();
  swift_getWitnessTable();
  v18 = _ArrayProtocol.filter(_:)();
  return sub_100161800(v18, &unk_1001BAA08, &unk_1001BAA40);
}

uint64_t sub_100160174()
{
  if (sub_1001618B8())
  {
    return 1;
  }

  return sub_100161954();
}

uint64_t sub_1001601AC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10016027C(uint64_t a1)
{
  v2 = sub_100160DE4();
  sub_1000DCEDC(v2, v3, 12, a1);
}

uint64_t sub_1001602C4()
{
  v1 = *v0;
  v2 = sub_100009F70(&qword_10021F5E0, &qword_1001B76F0);
  __chkstk_darwin(v2 - 8);
  v60 = &v52 - v3;
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v7 = type metadata accessor for FilterViewModel.FilterConfiguration(0, v4, v5, v6);
  v8 = *(v7 - 8);
  v55 = v7;
  v56 = v8;
  v9 = __chkstk_darwin(v7);
  v57 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v52 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v52 - v15;
  __chkstk_darwin(v14);
  v58 = &v52 - v17;
  v63 = type metadata accessor for DateInterval();
  v18 = *(v63 - 8);
  v19 = __chkstk_darwin(v63);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v52 - v22;
  if (sub_100161F04())
  {
    sub_100161D54();
    if (!sub_100161F04())
    {
      goto LABEL_3;
    }

LABEL_6:
    v54 = sub_1001621E4();
    if (!sub_100161F04())
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_100161A9C(v23);
  if (sub_100161F04())
  {
    goto LABEL_6;
  }

LABEL_3:
  v54 = 0;
  if (!sub_100161F04())
  {
LABEL_4:
    v24 = static Array._allocateUninitialized(_:)();
    goto LABEL_8;
  }

LABEL_7:
  v24 = sub_100161368();
LABEL_8:
  v53 = v24;
  v62 = v23;
  v25 = sub_100161F04();
  v61 = v4;
  v59 = v5;
  if (v25)
  {
    v26 = sub_10015FF3C();
    v52 = v26;
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v31 = static Array._allocateUninitialized(_:)();
    if (Array._getCount()())
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v52 = sub_100164D7C(v31, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8));
    }

    else
    {

      v52 = &_swiftEmptySetSingleton;
    }
  }

  sub_100161178(v26, v27, v28, v29);
  v33 = *(v16 + 1);
  v34 = *(v56 + 8);

  v35 = v55;
  v34(v16, v55);
  v36 = (*(v18 + 16))(v21, v62, v63);
  sub_100161178(v36, v37, v38, v39);
  v40 = v60;
  sub_10000D58C(&v13[*(v35 + 48)], v60, &qword_10021F5E0, &qword_1001B76F0);
  v41 = (v34)(v13, v35);
  v42 = v57;
  sub_100161178(v41, v43, v44, v45);
  v46 = *&v42[*(v35 + 52)];

  v34(v42, v35);
  v47 = v58;
  sub_10015E7B8(v54, v33, v53, v21, v40, v46, v52, v61, v58, v59);
  sub_10016516C(v47, v48, v49, v50);
  v34(v47, v35);
  return (*(v18 + 8))(v62, v63);
}

uint64_t sub_100160734()
{
  if (sub_1001618B8())
  {
    sub_100009F70(&qword_100219EF8, &qword_1001AF310);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1001AEB90;
    sub_100161368();
    v2 = Array.count.getter();

    *(v1 + 56) = &type metadata for Int;
    *(v1 + 64) = &protocol witness table for Int;
    *(v1 + 32) = v2;
    return String.init(format:_:)();
  }

  else
  {
    if (sub_100161954())
    {
      v4 = *(v0 + 32);
    }

    else
    {
      v4 = *(v0 + 16);
    }

    return v4;
  }
}

uint64_t sub_10016082C()
{
  v1 = *v0;
  v2 = type metadata accessor for Date();
  v33 = *(v2 - 8);
  v3 = v33;
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v5;
  v31 = sub_100009F70(&qword_10021F5E0, &qword_1001B76F0) - 8;
  __chkstk_darwin(v31);
  v7 = &v26 - v6;
  v48 = *(v1 + 80);
  v8 = v48;
  v9 = *(v1 + 88);
  v49 = v9;
  swift_getKeyPath();
  v46 = v8;
  v47 = v9;
  swift_getKeyPath();
  static Published.subscript.getter();

  v29 = *(v3 + 16);
  v30 = v3 + 16;
  v10 = v5;
  v11 = v2;
  v29(v10, v7, v2);
  sub_10000D52C(v7, &qword_10021F5E0, &qword_1001B76F0);
  v44 = v8;
  v45 = v9;
  swift_getKeyPath();
  v42 = v8;
  v43 = v9;
  swift_getKeyPath();
  v12 = static Published.subscript.modify();
  v14 = v13;
  v28 = type metadata accessor for CompactDatePickerConfiguration(0);
  v15 = *(v28 + 20);
  v16 = *(v33 + 40);
  v33 += 40;
  v27 = v16;
  v16(v14 + v15, v32, v11);
  v12(v50, 0);

  v40 = v8;
  v41 = v9;
  swift_getKeyPath();
  v38 = v8;
  v39 = v9;
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = v32;
  v29(v32, &v7[*(v31 + 44)], v11);
  sub_10000D52C(v7, &qword_10021F5E0, &qword_1001B76F0);
  v36 = v8;
  v37 = v9;
  swift_getKeyPath();
  v34 = v8;
  v35 = v9;
  swift_getKeyPath();
  v18 = static Published.subscript.modify();
  v27(v19 + *(v28 + 20), v17, v11);
  v18(v50, 0);

  v20 = static Array._allocateUninitialized(_:)();
  sub_100161800(v20, &unk_1001BAA08, &unk_1001BAA40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = static Array._allocateUninitialized(_:)();
  if (Array._getCount()())
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v24 = sub_100164D7C(v22, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8));
  }

  else
  {
    v24 = &_swiftEmptySetSingleton;
  }

  return sub_100161800(v24, &unk_1001BAA60, &unk_1001BAA98);
}

Swift::Int sub_100160D20(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100160D9C()
{
  Hasher.init(_seed:)();
  sub_100160CF8(v2, *v0);
  return Hasher._finalize()();
}

uint64_t sub_100160DE4()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v26 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  v28 = AssociatedTypeWitness;
  __chkstk_darwin(AssociatedTypeWitness);
  v5 = &v26 - v4;
  v7 = type metadata accessor for FilterViewModel.FilterConfiguration(0, v2, v1, v6);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v26 - v14;
  sub_100161178(v13, v16, v17, v18);
  v19 = *(v10 + 1);
  v20 = *(v8 + 8);

  v20(v10, v7);
  v29 = v19;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();

  v21 = *(v2 - 8);
  if ((*(v21 + 48))(v15, 1, v2) == 1)
  {
    (*(v12 + 8))(v15, v11);
    return ResourceID.init(stringLiteral:)();
  }

  else
  {
    (*(v26 + 176))(v2, v26);
    (*(v21 + 8))(v15, v2);
    v23 = v28;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = (*(AssociatedConformanceWitness + 40))(v23, AssociatedConformanceWitness);
    (*(v27 + 8))(v5, v23);
    return v25;
  }
}

uint64_t sub_100161178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  type metadata accessor for FilterViewModel.FilterConfiguration(255, *(*v4 + 80), *(*v4 + 88), a4);
  v6 = type metadata accessor for Binding();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  (*(v7 + 16))(&v11 - v8, v4 + *(v5 + 200), v6);
  Binding.wrappedValue.getter();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1001612B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10016137C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_100161430(uint64_t a1)
{
  v2 = type metadata accessor for CompactDatePickerConfiguration(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_100164A50(a1, &v9 - v6);
  sub_100164A50(v7, v5);
  Published.init(initialValue:)();
  sub_100164AB4(a1);
  return sub_100164AB4(v7);
}

uint64_t sub_10016150C(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021F5E0, &qword_1001B76F0);
  v3 = __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_10000D58C(a1, &v9 - v6, &qword_10021F5E0, &qword_1001B76F0);
  sub_10000D58C(v7, v5, &qword_10021F5E0, &qword_1001B76F0);
  Published.init(initialValue:)();
  sub_10000D52C(a1, &qword_10021F5E0, &qword_1001B76F0);
  return sub_10000D52C(v7, &qword_10021F5E0, &qword_1001B76F0);
}

double sub_100161638()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t sub_1001616EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Array();
  return sub_1001639D8(&v5, v3);
}

uint64_t sub_100161758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for Set();
  return sub_1001639D8(&v5, v3);
}

uint64_t sub_100161800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

BOOL sub_1001618B8()
{
  sub_100161368();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v0 = Collection.isEmpty.getter();

  return (v0 & 1) == 0;
}

uint64_t sub_100161954()
{
  if (sub_100161FC0() && (sub_100161368(), type metadata accessor for Array(), swift_getWitnessTable(), v0 = Collection.isEmpty.getter(), , (v0 & 1) != 0))
  {
    v1 = 1;
  }

  else if (sub_100161FC0() && sub_10016211C())
  {
    sub_100161368();
    type metadata accessor for Array();
    swift_getWitnessTable();
    v1 = Collection.isEmpty.getter();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_100161A9C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = *v1;
  v22 = type metadata accessor for Date();
  v3 = *(v22 - 8);
  v4 = __chkstk_darwin(v22);
  v23 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  v21 = &v21 - v6;
  v8 = sub_100009F70(&qword_10021F5E0, &qword_1001B76F0);
  v9 = v8 - 8;
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v31 = *(v2 + 80);
  v15 = v31;
  v32 = *(v2 + 88);
  v16 = v32;
  swift_getKeyPath();
  v29 = v15;
  v30 = v16;
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = *(v3 + 16);
  v18 = v7;
  v19 = v22;
  v17(v18, v14, v22);
  sub_10000D52C(v14, &qword_10021F5E0, &qword_1001B76F0);
  v27 = v15;
  v28 = v16;
  swift_getKeyPath();
  v25 = v15;
  v26 = v16;
  swift_getKeyPath();
  static Published.subscript.getter();

  v17(v23, &v12[*(v9 + 44)], v19);
  sub_10000D52C(v12, &qword_10021F5E0, &qword_1001B76F0);
  return DateInterval.init(start:end:)();
}

uint64_t sub_100161D54()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v18 - v5;
  v7 = type metadata accessor for CompactDatePickerConfiguration(0);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  v14 = sub_10015E948();
  v15 = *(v1 + 16);
  v15(v6, &v13[*(v8 + 28)], v0, v14);
  sub_100164AB4(v13);
  v16 = sub_10015E994();
  v15(v4, &v11[*(v8 + 28)], v0, v16);
  sub_100164AB4(v11);
  return DateInterval.init(start:end:)();
}

BOOL sub_100161F04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return (v1 & 1) == 0;
}

BOOL sub_100161FC0()
{
  v0 = type metadata accessor for DateInterval();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  sub_100161D54();
  sub_100161A9C(v4);
  sub_100165340(&qword_100221980, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return (v7 & 1) == 0;
}

BOOL sub_10016211C()
{
  sub_10015FF3C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v0 = Set.isEmpty.getter();

  return (v0 & 1) == 0;
}

uint64_t sub_1001621E4()
{
  v0 = sub_10015F430(&DateInterval.start.getter);
  v1 = sub_10015F430(&DateInterval.end.getter);
  v2 = 1;
  if (v0)
  {
    v2 = 2;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = v0;
  }

  sub_10015FF3C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = Set.count.getter();

  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001622FC(uint64_t a1, void *a2)
{
  v87 = a1;
  v3 = *a2;
  v83 = type metadata accessor for Calendar.Component();
  v88 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for CompactDatePickerConfiguration(0) - 8;
  __chkstk_darwin(v84);
  v79 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Date();
  v89 = *(v75 - 8);
  v6 = __chkstk_darwin(v75);
  v74 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v73 = v55 - v8;
  v9 = type metadata accessor for DateInterval();
  v64 = v9;
  v85 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = *(v3 + 88);
  v12 = *(v76 + 8);
  v13 = *(v3 + 80);
  v78 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v17 = v55 - v16;
  v82 = type metadata accessor for Calendar();
  v86 = *(v82 - 8);
  __chkstk_darwin(v82);
  v77 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v19 = *(v12 + 168);
  v70 = v12 + 168;
  v71 = v19;
  v80 = v13;
  v69 = v12;
  v19(v13, v12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v56 = v11;
  v61 = AssociatedTypeWitness;
  sub_1000FBF34(AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v20 = *(v15 + 8);
  v66 = v15 + 8;
  v67 = v20;
  v20(v17, AssociatedTypeWitness);
  v21 = v73;
  DateInterval.start.getter();
  v22 = *(v85 + 8);
  v85 += 8;
  v65 = v22;
  v22(v11, v9);
  v23 = v79;
  v24 = sub_10015E948();
  v25 = *(v84 + 28);
  v26 = *(v89 + 16);
  v62 = v89 + 16;
  v63 = v26;
  v28 = v74;
  v27 = v75;
  v26(v74, v23 + v25, v75, v24);
  sub_100164AB4(v23);
  v60 = enum case for Calendar.Component.day(_:);
  v29 = v88;
  v30 = *(v88 + 104);
  v55[1] = v88 + 104;
  v59 = v30;
  v31 = v81;
  v32 = v83;
  v30(v81);
  v33 = v28;
  v34 = v77;
  v72 = Calendar.compare(_:to:toGranularity:)();
  v35 = *(v29 + 8);
  v88 = v29 + 8;
  v58 = v35;
  v35(v31, v32);
  v36 = *(v89 + 8);
  v89 += 8;
  v36(v28, v27);
  v37 = v21;
  v38 = v27;
  v36(v21, v27);
  v39 = *(v86 + 8);
  v86 += 8;
  v57 = v39;
  v39(v34, v82);
  static Calendar.current.getter();
  v71(v80, v69);
  v40 = v56;
  v41 = v61;
  sub_1000FBF34(v61, AssociatedConformanceWitness, v56);
  v67(v17, v41);
  v42 = v37;
  DateInterval.start.getter();
  v65(v40, v64);
  v43 = v79;
  v44 = sub_10015E994();
  v63(v33, v43 + *(v84 + 28), v38, v44);
  sub_100164AB4(v43);
  v45 = v81;
  v46 = v83;
  v59(v81, v60, v83);
  v47 = v45;
  v48 = v77;
  v49 = Calendar.compare(_:to:toGranularity:)();
  v58(v47, v46);
  v36(v33, v38);
  v36(v42, v38);
  v57(v48, v82);
  v51 = v72 < 2 && (v49 + 1) < 2;
  v90 = (*(v76 + 96))(v80, v76);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  Set.init<A>(_:)();
  sub_10015FF3C();
  Set.intersection(_:)();

  v52 = Set.isEmpty.getter();

  if (!sub_100161FC0() || (v53 = v51, sub_10016211C()))
  {
    v53 = v52 ^ 1;
    if (sub_100161FC0() || !sub_10016211C())
    {
      v53 &= v51;
    }
  }

  return v53 & 1;
}

char *sub_100162B98()
{
  v1 = *v0;

  v2 = *(*v0 + 120);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for FilterViewModel.FilterState(255, v3, v4, v5);
  v6 = type metadata accessor for Published();
  (*(*(v6 - 8) + 8))(&v0[v2], v6);
  v7 = *(*v0 + 128);
  type metadata accessor for Array();
  v8 = type metadata accessor for Published();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  v9 = *(*v0 + 136);
  v10 = sub_100009F70(&qword_100221950, &qword_1001BA978);
  v11 = *(*(v10 - 8) + 8);
  v11(&v0[v9], v10);
  v11(&v0[*(*v0 + 144)], v10);
  v12 = *(*v0 + 152);
  v13 = sub_100009F70(&qword_100221958, &qword_1001BA980);
  (*(*(v13 - 8) + 8))(&v0[v12], v13);
  v14 = *(*v0 + 160);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  v15 = type metadata accessor for Published();
  (*(*(v15 - 8) + 8))(&v0[v14], v15);
  v16 = *(*v0 + 168);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  v17 = type metadata accessor for Published();
  (*(*(v17 - 8) + 8))(&v0[v16], v17);
  v18 = *(*v0 + 176);
  v19 = sub_100009F70(&qword_100221960, &qword_1001BA988);
  (*(*(v19 - 8) + 8))(&v0[v18], v19);
  v20 = *(*v0 + 184);
  v21 = sub_100009F70(&qword_100221968, &qword_1001BA990);
  v22 = *(*(v21 - 8) + 8);
  v22(&v0[v20], v21);
  v22(&v0[*(*v0 + 192)], v21);
  v23 = *(*v0 + 200);
  type metadata accessor for FilterViewModel.FilterConfiguration(255, v3, v4, v24);
  v25 = type metadata accessor for Binding();
  (*(*(v25 - 8) + 8))(&v0[v23], v25);

  return v0;
}

uint64_t sub_10016312C()
{
  sub_100162B98();

  return swift_deallocClassInstance();
}

void sub_1001631B4(uint64_t a1)
{
  if (!qword_100221830)
  {
    type metadata accessor for CompactDatePickerConfiguration(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100221830);
    }
  }
}

void sub_10016320C(uint64_t a1)
{
  if (!qword_100221838)
  {
    sub_10000B3DC(&qword_10021F5E0, &qword_1001B76F0);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100221838);
    }
  }
}

void sub_100163270(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1001632DC(uint64_t a1)
{
  type metadata accessor for Array();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DateInterval();
    if (v2 <= 0x3F)
    {
      sub_10011E490(319);
      if (v3 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        type metadata accessor for Array();
        if (v4 <= 0x3F)
        {
          swift_getAssociatedConformanceWitness();
          type metadata accessor for Set();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100163430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DateInterval();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(&qword_10021F5E0, &qword_1001B76F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100163574(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for DateInterval();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(&qword_10021F5E0, &qword_1001B76F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

double sub_1001636C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t sub_100163758(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = sub_100009F70(&qword_10021F5E0, &qword_1001B76F0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v14 - v11;
  sub_10000D58C(a1, v14 - v11, &qword_10021F5E0, &qword_1001B76F0);
  v14[2] = v5;
  v14[3] = v6;
  swift_getKeyPath();
  v14[0] = v5;
  v14[1] = v6;
  swift_getKeyPath();
  sub_10000D58C(v12, v10, &qword_10021F5E0, &qword_1001B76F0);

  static Published.subscript.setter();
  return sub_10000D52C(v12, &qword_10021F5E0, &qword_1001B76F0);
}

void sub_1001638A4(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v5;
}

uint64_t sub_100163944(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1001639D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  Published.init(initialValue:)();
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_100163AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100009F70(&qword_100221970, &qword_1001BA998);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = (&v20 - v10);
  result = sub_10000F618(v4, &v20 - v10, &qword_100221978, &unk_1001BA9A0);
  v13 = *(v9 + 44);
  *(v11 + v13) = 0;
  if (!a2)
  {
LABEL_11:
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_14:
    sub_10000F618(v11, a1, &qword_100221970, &qword_1001BA998);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = a3;
    v21 = a1;
    v14 = 0;
    v15 = *v11;
    a1 = a3 - 1;
    while (1)
    {
      if (v15 == v14)
      {
        a3 = v15;
        a1 = v21;
        goto LABEL_14;
      }

      if (v14 >= v15)
      {
        break;
      }

      v16 = v14 + 1;
      v17 = *(sub_100009F70(&qword_100221978, &unk_1001BA9A0) + 28);
      *(v11 + v13) = v14 + 1;
      v18 = type metadata accessor for GridItem();
      v19 = *(v18 - 8);
      result = (*(v19 + 16))(a2, v11 + v17, v18);
      if (a1 == v14)
      {
        a3 = v20;
        a1 = v21;
        goto LABEL_14;
      }

      a2 += *(v19 + 72);
      ++v14;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::String *sub_100163C90(uint64_t a1)
{
  v2 = v1;
  v108 = a1;
  countAndFlagsBits = v1->_countAndFlagsBits;
  v4 = sub_100009F70(&qword_10021F5E0, &qword_1001B76F0);
  __chkstk_darwin(v4 - 8);
  v111 = &v107 - v5;
  v109 = type metadata accessor for CompactDatePickerConfiguration(0);
  __chkstk_darwin(v109);
  v110 = (&v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(countAndFlagsBits + 80);
  v125 = *(countAndFlagsBits + 88);
  v126 = v7;
  v9 = type metadata accessor for FilterViewModel.FilterConfiguration(0, v7, v125, v8);
  v113 = *(v9 - 8);
  v114 = v9;
  __chkstk_darwin(v9);
  v112 = &v107 - v10;
  v11 = sub_100009F70(&qword_100221970, &qword_1001BA998);
  __chkstk_darwin(v11 - 8);
  v124 = &v107 - v12;
  v13 = type metadata accessor for GridItem.Size();
  v121 = *(v13 - 8);
  v122 = v13;
  __chkstk_darwin(v13);
  v120 = (&v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v119 = sub_100009F70(&qword_100221978, &unk_1001BA9A0) - 8;
  v15 = __chkstk_darwin(v119);
  v123 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v118 = &v107 - v17;
  v116 = sub_100009F70(&qword_100221968, &qword_1001BA990);
  v18 = *(v116 - 8);
  __chkstk_darwin(v116);
  v20 = &v107 - v19;
  v115 = sub_100009F70(&qword_100221960, &qword_1001BA988);
  v21 = *(v115 - 8);
  __chkstk_darwin(v115);
  v23 = &v107 - v22;
  v24 = objc_opt_self();
  v25 = [v24 mainBundle];
  v26._countAndFlagsBits = 0xD000000000000024;
  v117 = 0xD000000000000024;
  v130._object = 0xE000000000000000;
  v26._object = 0x80000001001C1BC0;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v130._countAndFlagsBits = 0;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v130);

  v2[1] = v28;
  v29 = [v24 mainBundle];
  v131._object = 0xE000000000000000;
  v30._object = 0x80000001001C1BF0;
  v30._countAndFlagsBits = 0xD000000000000025;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v131._countAndFlagsBits = 0;
  v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v29, v31, v131);

  v2[2] = v32;
  v33 = [v24 mainBundle];
  v132._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0xD00000000000002CLL;
  v34._object = 0x80000001001C1C20;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v132._countAndFlagsBits = 0;
  v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v132);

  v2[3] = v36;
  v37 = *(v2->_countAndFlagsBits + 176);
  v127 = 0;
  v128 = 0u;
  Published.init(initialValue:)();
  (*(v21 + 32))(v2 + v37, v23, v115);
  v38 = *(v2->_countAndFlagsBits + 184);
  v127._countAndFlagsBits = 0;
  Published.init(initialValue:)();
  v39 = *(v18 + 32);
  v40 = v116;
  v39(v2 + v38, v20, v116);
  v41 = *(v2->_countAndFlagsBits + 192);
  v127._countAndFlagsBits = 0;
  Published.init(initialValue:)();
  v39(v2 + v41, v20, v40);
  v42 = v2 + *(v2->_countAndFlagsBits + 208);
  *v42 = LocalizedStringKey.init(stringLiteral:)();
  *(v42 + 1) = v43;
  v42[16] = v44 & 1;
  *(v42 + 3) = v45;
  v46 = (&v2->_countAndFlagsBits + *(v2->_countAndFlagsBits + 216));
  v47 = v24;
  v48 = [v24 mainBundle];
  v133._object = 0xE000000000000000;
  v49._countAndFlagsBits = 0xD000000000000030;
  v49._object = 0x80000001001C1C80;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v133._countAndFlagsBits = 0;
  v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, 0, v48, v50, v133);

  v127 = v51;
  sub_100027068();
  v52 = StringProtocol.localizedUppercase.getter();
  v54 = v53;

  *v46 = v52;
  v46[1] = v54;
  v55 = v2 + *(v2->_countAndFlagsBits + 224);
  *v55 = LocalizedStringKey.init(stringLiteral:)();
  *(v55 + 1) = v56;
  v55[16] = v57 & 1;
  *(v55 + 3) = v58;
  v59 = v2 + *(v2->_countAndFlagsBits + 232);
  *v59 = LocalizedStringKey.init(stringLiteral:)();
  *(v59 + 1) = v60;
  v59[16] = v61 & 1;
  *(v59 + 3) = v62;
  v63 = v2 + *(v2->_countAndFlagsBits + 240);
  *v63 = LocalizedStringKey.init(stringLiteral:)();
  *(v63 + 1) = v64;
  v63[16] = v65 & 1;
  *(v63 + 3) = v66;
  v67 = v2 + *(v2->_countAndFlagsBits + 248);
  *v67 = LocalizedStringKey.init(stringLiteral:)();
  *(v67 + 1) = v68;
  v67[16] = v69 & 1;
  *(v67 + 3) = v70;
  v71 = v2 + *(v2->_countAndFlagsBits + 256);
  *v71 = LocalizedStringKey.init(stringLiteral:)();
  *(v71 + 1) = v72;
  v71[16] = v73 & 1;
  *(v71 + 3) = v74;
  v76 = v120;
  v75 = v121;
  *v120 = xmmword_1001AF670;
  (*(v75 + 104))(v76, enum case for GridItem.Size.flexible(_:), v122);
  v77 = v118;
  GridItem.init(_:spacing:alignment:)();
  *v77 = 2;
  v78 = sub_100166CEC(2, 0);
  v79 = *(type metadata accessor for GridItem() - 8);
  v80 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  sub_10000D58C(v77, v123, &qword_100221978, &unk_1001BA9A0);
  v81 = v124;
  v82 = sub_100163AC8(v124, &v78[v80], 2);
  sub_10000D52C(v81, &qword_100221970, &qword_1001BA998);
  result = sub_10000D52C(v77, &qword_100221978, &unk_1001BA9A0);
  if (v82 == 2)
  {
    *(&v2->_countAndFlagsBits + *(v2->_countAndFlagsBits + 264)) = v78;
    v84 = *(v2->_countAndFlagsBits + 200);
    v85 = v114;
    v86 = type metadata accessor for Binding();
    (*(*(v86 - 8) + 16))(v2 + v84, v108, v86);
    v87 = v112;
    Binding.wrappedValue.getter();
    LOBYTE(v86) = *v87 < 1;
    swift_beginAccess();
    LOBYTE(v129[0]) = v86;
    v89 = type metadata accessor for FilterViewModel.FilterState(0, v126, v125, v88);
    sub_1001639D8(v129, v89);
    swift_endAccess();
    v90 = v87[2];
    swift_beginAccess();

    v129[0] = v90;
    v91 = type metadata accessor for Array();
    sub_1001639D8(v129, v91);
    swift_endAccess();
    v92 = [v47 mainBundle];
    v134._object = 0xE000000000000000;
    v93._object = 0x80000001001C1D60;
    v93._countAndFlagsBits = 0xD000000000000025;
    v94._countAndFlagsBits = 0;
    v94._object = 0xE000000000000000;
    v134._countAndFlagsBits = 0;
    v95 = NSLocalizedString(_:tableName:bundle:value:comment:)(v93, 0, v92, v94, v134);

    v96 = v109;
    v97 = v110;
    DateInterval.start.getter();
    *v97 = v95;
    *(&v97->_countAndFlagsBits + *(v96 + 24)) = 0;
    swift_beginAccess();
    sub_100161430(v97);
    swift_endAccess();
    v98 = [v47 mainBundle];
    v99._countAndFlagsBits = 0xD000000000000023;
    v135._object = 0xE000000000000000;
    v99._object = 0x80000001001C1D90;
    v100._countAndFlagsBits = 0;
    v100._object = 0xE000000000000000;
    v135._countAndFlagsBits = 0;
    v101 = NSLocalizedString(_:tableName:bundle:value:comment:)(v99, 0, v98, v100, v135);

    DateInterval.end.getter();
    *v97 = v101;
    *(&v97->_countAndFlagsBits + *(v96 + 24)) = 0;
    swift_beginAccess();
    sub_100161430(v97);
    swift_endAccess();
    v102 = v111;
    sub_10000D58C(v87 + *(v85 + 48), v111, &qword_10021F5E0, &qword_1001B76F0);
    swift_beginAccess();
    sub_10016150C(v102);
    swift_endAccess();
    swift_beginAccess();

    v105 = v125;
    v104 = v126;
    sub_1001616EC(v103, v126, v125);
    swift_endAccess();
    swift_beginAccess();

    sub_100161758(v106, v104, v105);
    swift_endAccess();
    (*(v113 + 8))(v87, v85);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100164A50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompactDatePickerConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100164AB4(uint64_t a1)
{
  v2 = type metadata accessor for CompactDatePickerConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100164B10()
{

  return swift_deallocObject();
}

uint64_t sub_100164B50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100164B68(uint64_t a1@<X8>)
{
  *a1 = sub_10015E890();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_100164BD0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100164BDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100161368();
  *a1 = result;
  return result;
}

uint64_t sub_100164C28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10015FF3C();
  *a1 = result;
  return result;
}

_BYTE *sub_100164D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v50 = &v38 - v11;
  v39 = v12;
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  if (Array.count.getter())
  {
    type metadata accessor for _SetStorage();
    v15 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v15 = &_swiftEmptySetSingleton;
  }

  v43 = Array._getCount()();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = _ArrayBuffer._getElementSlowPath(_:)();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v22 = v15;
    v23 = -1 << v15[32];
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *&v49[8 * (v24 >> 6)];
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (v22[6] + v28 * v24), a2);
        v30 = a3;
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *&v49[8 * (v24 >> 6)];
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *&v49[8 * v25] = v27 | v26;
    v34 = v22[6] + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = v22[2];
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    v22[2] = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10016516C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = type metadata accessor for FilterViewModel.FilterConfiguration(0, *(*v4 + 80), *(*v4 + 88), a4);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - v9;
  v11 = type metadata accessor for Binding();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - v13;
  (*(v12 + 16))(&v16 - v13, v4 + *(v6 + 200), v11);
  (*(v8 + 16))(v10, a1, v7);
  Binding.wrappedValue.setter();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100165340(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100165388@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10015F768();
  *a1 = result;
  return result;
}

void *sub_1001654F8()
{
  v0 = type metadata accessor for Song();
  v33 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v32 = &v26 - v4;
  v5 = sub_100009F70(&qword_100221AB0, &qword_1001BAE00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = sub_100009F70(&qword_100221AB8, &qword_1001BAE08);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_100009F70(&qword_100221AC0, &qword_1001BAE10);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  Artist.topSongs.getter();
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_10000D52C(v14, &qword_100221AC0, &qword_1001BAE10);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v26 = v14;
    v27 = v6;
    (*(v6 + 16))(v8, v14, v5);
    sub_10000D1EC(&qword_100221AC8, &qword_100221AB0, &qword_1001BAE00, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Sequence.makeIterator()();
    v16 = *(v9 + 36);
    v17 = sub_10000D1EC(&qword_100221AD0, &qword_100221AB0, &qword_1001BAE00, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.endIndex.getter();
    if (*&v11[v16] == v34[0])
    {
      v15 = _swiftEmptyArrayStorage;
    }

    else
    {
      v19 = v32;
      v28 = (v33 + 16);
      v20 = (v33 + 32);
      v15 = _swiftEmptyArrayStorage;
      v30 = v16;
      v31 = v0;
      v29 = v17;
      do
      {
        v21 = dispatch thunk of Collection.subscript.read();
        (*v28)(v19);
        v21(v34, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v22 = *v20;
        (*v20)(v3, v19, v0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_100166980(0, v15[2] + 1, 1, v15, &qword_100221AD8, &unk_1001BAE18, &type metadata accessor for Song);
        }

        v24 = v15[2];
        v23 = v15[3];
        if (v24 >= v23 >> 1)
        {
          v15 = sub_100166980((v23 > 1), v24 + 1, 1, v15, &qword_100221AD8, &unk_1001BAE18, &type metadata accessor for Song);
        }

        v15[2] = v24 + 1;
        v25 = v15 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v24;
        v0 = v31;
        v22(v25, v3, v31);
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*&v11[v30] != v34[0]);
    }

    sub_10000D52C(v11, &qword_100221AB8, &qword_1001BAE08);
    (*(v27 + 8))(v26, v5);
  }

  return v15;
}

void *sub_100165A08()
{
  v0 = type metadata accessor for Playlist();
  v33 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v32 = &v26 - v4;
  v5 = sub_100009F70(&qword_100221A80, &qword_1001BADE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = sub_100009F70(&qword_100221A88, &qword_1001BADE8);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_100009F70(&qword_100221A90, &qword_1001BADF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  Artist.featuredPlaylists.getter();
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_10000D52C(v14, &qword_100221A90, &qword_1001BADF0);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v26 = v14;
    v27 = v6;
    (*(v6 + 16))(v8, v14, v5);
    sub_10000D1EC(&qword_100221A98, &qword_100221A80, &qword_1001BADE0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Sequence.makeIterator()();
    v16 = *(v9 + 36);
    v17 = sub_10000D1EC(&qword_100221AA0, &qword_100221A80, &qword_1001BADE0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.endIndex.getter();
    if (*&v11[v16] == v34[0])
    {
      v15 = _swiftEmptyArrayStorage;
    }

    else
    {
      v19 = v32;
      v28 = (v33 + 16);
      v20 = (v33 + 32);
      v15 = _swiftEmptyArrayStorage;
      v30 = v16;
      v31 = v0;
      v29 = v17;
      do
      {
        v21 = dispatch thunk of Collection.subscript.read();
        (*v28)(v19);
        v21(v34, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v22 = *v20;
        (*v20)(v3, v19, v0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_100166980(0, v15[2] + 1, 1, v15, &qword_100221AA8, &qword_1001BADF8, &type metadata accessor for Playlist);
        }

        v24 = v15[2];
        v23 = v15[3];
        if (v24 >= v23 >> 1)
        {
          v15 = sub_100166980((v23 > 1), v24 + 1, 1, v15, &qword_100221AA8, &qword_1001BADF8, &type metadata accessor for Playlist);
        }

        v15[2] = v24 + 1;
        v25 = v15 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v24;
        v0 = v31;
        v22(v25, v3, v31);
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*&v11[v30] != v34[0]);
    }

    sub_10000D52C(v11, &qword_100221A88, &qword_1001BADE8);
    (*(v27 + 8))(v26, v5);
  }

  return v15;
}

void *sub_100165F18()
{
  v0 = type metadata accessor for Album();
  v33 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v32 = &v26 - v4;
  v5 = sub_100009F70(&qword_100221A50, &qword_1001BADC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = sub_100009F70(&qword_100221A58, &qword_1001BADC8);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_100009F70(&qword_100221A60, &qword_1001BADD0);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  Artist.featuredAlbums.getter();
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_10000D52C(v14, &qword_100221A60, &qword_1001BADD0);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v26 = v14;
    v27 = v6;
    (*(v6 + 16))(v8, v14, v5);
    sub_10000D1EC(&qword_100221A68, &qword_100221A50, &qword_1001BADC0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Sequence.makeIterator()();
    v16 = *(v9 + 36);
    v17 = sub_10000D1EC(&qword_100221A70, &qword_100221A50, &qword_1001BADC0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.endIndex.getter();
    if (*&v11[v16] == v34[0])
    {
      v15 = _swiftEmptyArrayStorage;
    }

    else
    {
      v19 = v32;
      v28 = (v33 + 16);
      v20 = (v33 + 32);
      v15 = _swiftEmptyArrayStorage;
      v30 = v16;
      v31 = v0;
      v29 = v17;
      do
      {
        v21 = dispatch thunk of Collection.subscript.read();
        (*v28)(v19);
        v21(v34, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v22 = *v20;
        (*v20)(v3, v19, v0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_100166980(0, v15[2] + 1, 1, v15, &qword_100221A78, &qword_1001BADD8, &type metadata accessor for Album);
        }

        v24 = v15[2];
        v23 = v15[3];
        if (v24 >= v23 >> 1)
        {
          v15 = sub_100166980((v23 > 1), v24 + 1, 1, v15, &qword_100221A78, &qword_1001BADD8, &type metadata accessor for Album);
        }

        v15[2] = v24 + 1;
        v25 = v15 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v24;
        v0 = v31;
        v22(v25, v3, v31);
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*&v11[v30] != v34[0]);
    }

    sub_10000D52C(v11, &qword_100221A58, &qword_1001BADC8);
    (*(v27 + 8))(v26, v5);
  }

  return v15;
}

uint64_t sub_100166438(uint64_t a1)
{
  result = sub_100166694(&qword_1002219F0, &type metadata accessor for Artist, &unk_1001BAD4C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001664D8()
{
  Artist.id.getter();

  return ResourceID.init(_:)();
}

double sub_100166504()
{
  sub_100009F70(&qword_100221A48, &qword_1001BADB8);
  swift_allocObject();
  MusicAttributeProperty.init(_:)();
  Artist.subscript.getter();

  return result;
}

uint64_t sub_100166610(uint64_t a1)
{
  *(a1 + 8) = sub_100166694(&qword_100221A38, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
  result = sub_100166694(&qword_100221A40, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100166694(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1001666DC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100009F70(qword_100218F38, &unk_1001ADA10);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100009F70(&qword_100221AE0, &qword_1001BAE28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10016684C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009F70(qword_100220E10, &unk_1001B9A40);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100166980(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009F70(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_0(v17);
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

char *sub_100166B5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009F70(&qword_100220E08, &qword_1001BD830);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100166C68(uint64_t a1, uint64_t a2)
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

  sub_100009F70(qword_100220E10, &unk_1001B9A40);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_100166D3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100009F70(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size_0(v11);
  if (v9)
  {
    if (&result[-v10] != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * (&result[-v10] / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100166E4C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_100218D00, &unk_1001AD7D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_100166F1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100009F70(&qword_100218D00, &unk_1001AD7D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AppModule(uint64_t a1)
{
  result = qword_100221B48;
  if (!qword_100221B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100167018(uint64_t a1)
{
  type metadata accessor for AppViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1001670E4(319);
    if (v2 <= 0x3F)
    {
      sub_10000B304(319);
      if (v3 <= 0x3F)
      {
        sub_10000E648(319);
        if (v4 <= 0x3F)
        {
          sub_100050558();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001670E4(uint64_t a1)
{
  if (!qword_100221B58)
  {
    sub_10000B3DC(&qword_100219F00, &qword_1001AF350);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_100221B58);
    }
  }
}

uint64_t sub_100167164()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 32);
  if (v5)
  {
    if (*(v5 + 88) && *(v5 + 80) == 1)
    {
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v6 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    v7 = [objc_opt_self() currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if (v8 == 1)
    {
      v9 = v0 + *(type metadata accessor for AppModule(0) + 32);
      v10 = *v9;
      if (*(v9 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v11 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100027EB0(v10, 0);
        (*(v2 + 8))(v4, v1);
        LOBYTE(v10) = v14[15];
      }

      v12 = v10 ^ 1;
      return v12 & 1;
    }

LABEL_11:
    v12 = 0;
    return v12 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10016A208(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001673E8@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v2 = type metadata accessor for AppModule(0);
  v74 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v75 = v3;
  v76 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009F70(&qword_100221B98, &qword_1001BAE98);
  __chkstk_darwin(v4 - 8);
  v6 = &v71 - v5;
  v7 = sub_100009F70(&qword_100221BA0, &qword_1001BAEA0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v71 - v9;
  v11 = sub_100009F70(&qword_100221BA8, &qword_1001BAEA8);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v71 - v13;
  v15 = sub_100009F70(&qword_100221BB0, &qword_1001BAEB0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v71 = &v71 - v17;
  v72 = sub_100009F70(&qword_100221BB8, &qword_1001BAEB8);
  __chkstk_darwin(v72);
  v73 = &v71 - v18;
  v19 = static HorizontalAlignment.leading.getter();
  v20 = 0x4024000000000000;
  if (*(*v1 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_shouldShowDiscoveryDetail))
  {
    v20 = 0;
  }

  *v6 = v19;
  *(v6 + 1) = v20;
  v6[16] = 0;
  v21 = sub_100009F70(&qword_100221BC0, &qword_1001BAEC0);
  sub_100167970(v1, &v6[*(v21 + 44)]);
  v22 = static Edge.Set.leading.getter();
  sub_100167164();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_10000F618(v6, v10, &qword_100221B98, &qword_1001BAE98);
  v31 = &v10[*(v8 + 44)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10000F618(v10, v14, &qword_100221BA0, &qword_1001BAEA0);
  v41 = &v14[*(v12 + 44)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = static Edge.Set.bottom.getter();
  v43 = v71;
  EdgeInsets.init(_all:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_10000F618(v14, v43, &qword_100221BA8, &qword_1001BAEA8);
  v52 = v43 + *(v16 + 44);
  *v52 = v42;
  *(v52 + 8) = v45;
  *(v52 + 16) = v47;
  *(v52 + 24) = v49;
  *(v52 + 32) = v51;
  *(v52 + 40) = 0;
  v53 = static SafeAreaRegions.container.getter();
  sub_100009F70(&qword_100218DC0, &qword_1001AD860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  v55 = static Edge.Set.horizontal.getter();
  *(inited + 32) = v55;
  v56 = static Edge.Set.bottom.getter();
  *(inited + 33) = v56;
  v57 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v55)
  {
    v57 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v56)
  {
    v57 = Edge.Set.init(rawValue:)();
  }

  v58 = static Alignment.center.getter();
  v60 = v59;
  v61 = v43;
  v62 = v73;
  sub_10000F618(v61, v73, &qword_100221BB0, &qword_1001BAEB0);
  v63 = v62 + *(v72 + 36);
  *v63 = v53;
  *(v63 + 8) = v57;
  *(v63 + 16) = v58;
  *(v63 + 24) = v60;
  v64 = v76;
  sub_10016983C(v1, v76);
  v65 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v66 = swift_allocObject();
  sub_1000D3274(v64, v66 + v65);
  v67 = sub_100009F70(&qword_100221BC8, &qword_1001BAED8);
  v68 = v77;
  v69 = (v77 + *(v67 + 36));
  type metadata accessor for _TaskModifier();
  static TaskPriority.userInitiated.getter();
  *v69 = &unk_1001BAED0;
  v69[1] = v66;
  return sub_10000F618(v62, v68, &qword_100221BB8, &qword_1001BAEB8);
}

uint64_t sub_100167970@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v156 = a2;
  v3 = sub_100009F70(&qword_100218DA8, &qword_1001AD848);
  __chkstk_darwin(v3 - 8);
  v153 = &v144 - v4;
  v152 = sub_100009F70(&qword_100218DB0, &qword_1001AD850);
  v5 = __chkstk_darwin(v152);
  v172 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v151 = &v144 - v8;
  __chkstk_darwin(v7);
  v171 = &v144 - v9;
  v150 = sub_100009F70(&qword_100221BD8, &qword_1001BAEE8);
  v10 = __chkstk_darwin(v150);
  v155 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v170 = &v144 - v12;
  v157 = type metadata accessor for AccessibilityTraits();
  v147 = *(v157 - 8);
  __chkstk_darwin(v157);
  v145 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100009F70(&qword_1002197C0, &qword_1001AE810);
  __chkstk_darwin(v14 - 8);
  v148 = &v144 - v15;
  v146 = sub_100009F70(&qword_100221BE0, &qword_1001BAEF0);
  __chkstk_darwin(v146);
  v158 = &v144 - v16;
  v173 = sub_100009F70(&qword_100221BE8, &qword_1001BAEF8);
  __chkstk_darwin(v173);
  v159 = &v144 - v17;
  v18 = sub_100009F70(&qword_100221BF0, &qword_1001BAF00);
  v19 = __chkstk_darwin(v18 - 8);
  v169 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v174 = &v144 - v21;
  v154 = a1;
  v22 = *a1;
  v160 = OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_shouldShowDiscoveryDetail;
  v161 = v22;
  if (*(v22 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_shouldShowDiscoveryDetail) == 1)
  {

    v23 = Text.init(_:tableName:bundle:comment:)();
    v25 = v24;
    v27 = v26;
    static Font.footnote.getter();
    static Font.Weight.semibold.getter();
    Font.weight(_:)();

    v28 = Text.font(_:)();
    v30 = v29;
    v32 = v31;

    sub_10000D60C(v23, v25, v27 & 1);

    if (qword_100218338 != -1)
    {
      swift_once();
    }

    v189 = qword_100230570;

    *&v167 = Text.foregroundStyle<A>(_:)();
    *(&v167 + 1) = v33;
    v35 = v34;
    v168 = v36;
    sub_10000D60C(v28, v30, v32 & 1);

    KeyPath = swift_getKeyPath();
    v37 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v149 = v44;
    LOBYTE(v189) = v35 & 1;
    LOBYTE(v182) = 0;
    LOBYTE(v201) = 0;
    v164 = v35 & 1;
    v165 = 0;
    v162 = 1;
    v163 = v37;
  }

  else
  {
    v164 = 0;
    v165 = 0;
    v162 = 0;
    v163 = 0;
    KeyPath = 0;
    v167 = 0uLL;
    v168 = 0;
    v149 = 0;
    v43 = 0;
    v41 = 0;
    v39 = 0;
  }

  LocalizedStringKey.init(stringLiteral:)();
  v45 = Text.init(_:tableName:bundle:comment:)();
  v47 = v46;
  v49 = v48;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v50 = Text.font(_:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;

  sub_10000D60C(v45, v47, v49 & 1);

  v57 = swift_getKeyPath();
  v189 = v50;
  v190 = v52;
  v58 = v54 & 1;
  LOBYTE(v191) = v54 & 1;
  v192 = v56;
  v193 = v57;
  v194 = 2;
  LOBYTE(v195) = 0;
  v59 = v145;
  static AccessibilityTraits.isHeader.getter();
  sub_100009F70(&qword_1002197F0, &unk_1001AE860);
  sub_10002764C();
  v60 = v148;
  View.accessibility(addTraits:)();
  (*(v147 + 8))(v59, v157);
  sub_10000D60C(v50, v52, v58);

  LOBYTE(v45) = static Edge.Set.bottom.getter();
  v62 = v160;
  v61 = v161;
  EdgeInsets.init(_all:)();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v158;
  sub_10000F618(v60, v158, &qword_1002197C0, &qword_1001AE810);
  v72 = v71 + *(v146 + 36);
  *v72 = v45;
  *(v72 + 8) = v64;
  *(v72 + 16) = v66;
  *(v72 + 24) = v68;
  *(v72 + 32) = v70;
  *(v72 + 40) = 0;
  LOBYTE(v45) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = v159;
  sub_10000F618(v71, v159, &qword_100221BE0, &qword_1001BAEF0);
  v82 = v81 + *(v173 + 36);
  *v82 = v45;
  *(v82 + 8) = v74;
  *(v82 + 16) = v76;
  *(v82 + 24) = v78;
  *(v82 + 32) = v80;
  *(v82 + 40) = 0;
  sub_10016A0CC(&qword_100221BF8, &qword_100221BE8, &qword_1001BAEF8, sub_100169978);
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v81, &qword_100221BE8, &qword_1001BAEF8);
  v173 = 0;
  v157 = 0;
  v158 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  if (*(v61 + v62) == 1)
  {

    v89 = Text.init(_:tableName:bundle:comment:)();
    v91 = v90;
    v93 = v92;
    static Font.subheadline.getter();
    static Font.Weight.regular.getter();
    Font.weight(_:)();

    v94 = Text.font(_:)();
    v96 = v95;
    v98 = v97;

    sub_10000D60C(v89, v91, v93 & 1);

    if (qword_100218338 != -1)
    {
      swift_once();
    }

    v189 = qword_100230570;

    v173 = Text.foregroundStyle<A>(_:)();
    v157 = v100;
    v158 = v99;
    v102 = v101;
    sub_10000D60C(v94, v96, v98 & 1);

    v83 = swift_getKeyPath();
    v103 = static Edge.Set.bottom.getter();
    LOBYTE(v189) = v102 & 1;
    LOBYTE(v182) = 0;
    LOBYTE(v201) = 1;
    v88 = v102 & 1;
    v86 = 1;
    if (*(v161 + v160))
    {
      v85 = 0x3FF0000000000000;
    }

    else
    {
      v85 = 0;
    }

    v87 = v103;
    v84 = 4;
  }

  v159 = 0;
  v160 = v83;
  v147 = v87;
  v148 = v85;
  v161 = v86;
  v104 = v170;
  v105 = v88;
  v145 = v84;
  v146 = v88;
  v106 = v84;
  Divider.init()();
  v107 = static Edge.Set.bottom.getter();
  v108 = v104 + *(sub_100009F70(&qword_100219C30, &qword_1001AECE0) + 36);
  *v108 = v107;
  *(v108 + 8) = 0u;
  *(v108 + 24) = 0u;
  *(v108 + 40) = 1;
  v109 = static SafeAreaRegions.container.getter();
  v110 = static Edge.Set.horizontal.getter();
  v111 = v104 + *(v150 + 36);
  *v111 = v109;
  *(v111 + 8) = v110;
  v112 = v153;
  sub_100168854(v154, v153);
  v113 = static Edge.Set.trailing.getter();
  sub_100167164();
  EdgeInsets.init(_all:)();
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v121 = v120;
  v122 = v151;
  sub_10000F618(v112, v151, &qword_100218DA8, &qword_1001AD848);
  v123 = v122 + *(v152 + 36);
  *v123 = v113;
  *(v123 + 8) = v115;
  *(v123 + 16) = v117;
  *(v123 + 24) = v119;
  *(v123 + 32) = v121;
  *(v123 + 40) = 0;
  v124 = v171;
  sub_10000F618(v122, v171, &qword_100218DB0, &qword_1001AD850);
  v125 = v169;
  sub_10000D58C(v174, v169, &qword_100221BF0, &qword_1001BAF00);
  v126 = v155;
  sub_10000D58C(v104, v155, &qword_100221BD8, &qword_1001BAEE8);
  sub_1001699A8(v124, v172);
  v175 = v167;
  *&v176 = v164;
  *(&v176 + 1) = v168;
  *&v177 = KeyPath;
  *(&v177 + 1) = v162;
  *&v178 = v165;
  *(&v178 + 1) = v163;
  *&v179 = v39;
  *(&v179 + 1) = v41;
  v127 = v149;
  *&v180 = v43;
  *(&v180 + 1) = v149;
  v181 = 0;
  v128 = v156;
  *(v156 + 96) = 0;
  v129 = v180;
  v128[4] = v179;
  v128[5] = v129;
  v130 = v176;
  *v128 = v175;
  v128[1] = v130;
  v131 = v178;
  v128[2] = v177;
  v128[3] = v131;
  v132 = sub_100009F70(&qword_100221C08, &qword_1001BAF38);
  sub_10000D58C(v125, v128 + v132[12], &qword_100221BF0, &qword_1001BAF00);
  v133 = (v128 + v132[16]);
  v134 = v158;
  *&v182 = v173;
  *(&v182 + 1) = v158;
  *&v183 = v105;
  v135 = v157;
  *(&v183 + 1) = v157;
  *&v184 = v160;
  *(&v184 + 1) = v106;
  *&v185 = v159;
  v136 = v147;
  v137 = v148;
  *(&v185 + 1) = v147;
  v186 = 0u;
  v187 = 0u;
  *&v188 = v161;
  *(&v188 + 1) = v148;
  v138 = v183;
  *v133 = v182;
  v133[1] = v138;
  v139 = v185;
  v133[2] = v184;
  v133[3] = v139;
  v140 = v187;
  v133[4] = v186;
  v133[5] = v140;
  v133[6] = v188;
  sub_10000D58C(v126, v128 + v132[20], &qword_100221BD8, &qword_1001BAEE8);
  v141 = v128 + v132[24];
  v142 = v172;
  sub_1001699A8(v172, v141);
  sub_10000D58C(&v175, &v189, &qword_100221C10, &qword_1001BAF40);
  sub_10000D58C(&v182, &v189, &qword_100221C18, &qword_1001BAF48);
  sub_100169A18(v171);
  sub_10000D52C(v170, &qword_100221BD8, &qword_1001BAEE8);
  sub_10000D52C(v174, &qword_100221BF0, &qword_1001BAF00);
  sub_100169A18(v142);
  sub_10000D52C(v126, &qword_100221BD8, &qword_1001BAEE8);
  v189 = v173;
  v190 = v134;
  v191 = v146;
  v192 = v135;
  v193 = v160;
  v194 = v145;
  v195 = v159;
  v196 = v136;
  v197 = 0u;
  v198 = 0u;
  v199 = v161;
  v200 = v137;
  sub_10000D52C(&v189, &qword_100221C18, &qword_1001BAF48);
  sub_10000D52C(v169, &qword_100221BF0, &qword_1001BAF00);
  v201 = v167;
  v202 = v164;
  v203 = v168;
  v204 = KeyPath;
  v205 = v162;
  v206 = v165;
  v207 = v163;
  v208 = v39;
  v209 = v41;
  v210 = v43;
  v211 = v127;
  v212 = 0;
  return sub_10000D52C(&v201, &qword_100221C10, &qword_1001BAF40);
}

uint64_t sub_100168854@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v66 = type metadata accessor for RedactionReasons();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100009F70(&qword_100218DE0, &qword_1001AD880);
  __chkstk_darwin(v71);
  v5 = (v59 - v4);
  v6 = type metadata accessor for AppModule(0);
  v67 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v68 = v7;
  v69 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100009F70(&qword_100218DE8, &qword_1001AD888);
  v64 = *(v72 - 8);
  __chkstk_darwin(v72);
  v9 = v59 - v8;
  v10 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v10 - 8);
  v12 = v59 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v62 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v59 - v17;
  v70 = a1;
  v19 = *a1;
  sub_10000D58C(v19 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_eventURL, v12, qword_100218748, &unk_1001AD110);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000D52C(v12, qword_100218748, &unk_1001AD110);
    if (*(v19 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_queryAppID + 8))
    {
      v20 = *(v19 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_queryAppID);
      v21 = *(v19 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_queryAppID + 8);
      if ((*(v19 + 16) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if ((*(v19 + 16) & 1) == 0)
      {
        v20 = 0x3534333939343832;
        v21 = 0xE900000000000039;
LABEL_17:

        goto LABEL_18;
      }

      v20 = 0x3838383736343436;
      v21 = 0xEA00000000003932;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      v27 = 0;
      v28 = 0;
LABEL_19:
      *&v74 = v20;
      *(&v74 + 1) = v21;
      *&v75 = v27;
      *(&v75 + 1) = v28;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v31 = v63;
      static RedactionReasons.placeholder.getter();
      v32 = sub_10000F758();
      View.redacted(reason:)();
      (*(v65 + 8))(v31, v66);
      v82 = v76;
      v83 = v77;
      v84 = v78;
      v85 = v79;
      v80 = v74;
      v81 = v75;
      sub_10000F7AC(&v80);
      v33 = v64;
      v34 = v72;
      (*(v64 + 16))(v5, v9, v72);
      swift_storeEnumTagMultiPayload();
      *&v74 = &type metadata for AppStoreComponent;
      *(&v74 + 1) = v32;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      return (*(v33 + 8))(v9, v34);
    }

LABEL_18:
    v28 = 0x80000001001C1E40;
    v27 = 0xD000000000000024;
    goto LABEL_19;
  }

  v22 = *(v14 + 32);
  v59[1] = v14 + 32;
  v59[0] = v22;
  v22(v18, v12, v13);
  v23 = *(v19 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_queryAppID + 8);
  if (v23)
  {
    v66 = *(v19 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_queryAppID);
    v24 = *(v19 + 16);
    v65 = v23;
    v25 = v67;
    if ((v24 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v25 = v67;
    if ((*(v19 + 16) & 1) == 0)
    {
      v66 = 0x3534333939343832;
      v65 = 0xE900000000000039;
LABEL_21:

      goto LABEL_22;
    }

    v66 = 0x3838383736343436;
    v65 = 0xEA00000000003932;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
LABEL_22:
    v30 = v70;
    v67 = 0x80000001001C1E40;
    v64 = 0xD000000000000024;
    goto LABEL_23;
  }

  v64 = 0;
  v67 = 0;
  v30 = v70;
LABEL_23:
  v36 = *(v30 + 24);
  v80 = *(v30 + 8);
  *&v81 = v36;
  sub_100009F70(&qword_100221BD0, &qword_1001BAEE0);
  State.wrappedValue.getter();
  v61 = *(&v74 + 1);
  v63 = v74;
  if (sub_10009860C())
  {
    v60 = v18;
    sub_10016983C(v30, v69);
    v37 = v62;
    (*(v14 + 16))(v62, v60, v13);
    v38 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v39 = *(v14 + 80);
    v40 = v14;
    v41 = v25;
    v42 = (v68 + v39 + v38) & ~v39;
    v43 = swift_allocObject();
    v44 = v43 + v38;
    v45 = v69;
    v46 = v60;
    sub_1000D3274(v69, v44);
    v47 = v37;
    v48 = v13;
    v49 = v13;
    v50 = v46;
    (v59[0])(v43 + v42, v47, v49);
    v51 = v70;
    v52 = sub_100169E2C;
  }

  else
  {
    v51 = v30;
    v52 = 0;
    v43 = 0;
    v45 = v69;
    v48 = v13;
    v50 = v18;
    v40 = v14;
    v41 = v25;
  }

  sub_10016983C(v51, v45);
  v53 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v54 = swift_allocObject();
  sub_1000D3274(v45, v54 + v53);
  v55 = v65;
  *v5 = v66;
  v5[1] = v55;
  v56 = v67;
  v5[2] = v64;
  v5[3] = v56;
  v5[4] = 0;
  v5[5] = 0;
  v57 = v61;
  v5[6] = v63;
  v5[7] = v57;
  v5[8] = v52;
  v5[9] = v43;
  v5[10] = sub_100169BD4;
  v5[11] = v54;
  swift_storeEnumTagMultiPayload();
  v58 = sub_10000F758();
  *&v80 = &type metadata for AppStoreComponent;
  *(&v80 + 1) = v58;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  return (*(v40 + 8))(v50, v48);
}

void sub_10016925C(uint64_t a1, uint64_t a2)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return;
    }
  }

  v9 = *(a2 + 32);
  if (v9)
  {

    sub_100098D54(6, 0, 3u, v9);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10016A208(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_10016939C(uint64_t a1)
{
  v1[7] = a1;
  type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v3;
  v1[10] = v2;

  return _swift_task_switch(sub_100169434, v3, v2);
}

uint64_t sub_100169434()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1001694C8;

  return sub_100098748();
}

uint64_t sub_1001694C8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = a2;

  v5 = *(v3 + 80);
  v6 = *(v3 + 72);

  return _swift_task_switch(sub_1001695F0, v6, v5);
}

uint64_t sub_1001695F0()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 56);

  v4 = *(v3 + 24);
  *(v0 + 16) = *(v3 + 8);
  *(v0 + 32) = v4;
  *(v0 + 40) = v2;
  *(v0 + 48) = v1;
  sub_100009F70(&qword_100221BD0, &qword_1001BAEE0);
  State.wrappedValue.setter();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10016969C(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for OpenURLAction();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppModule(0);
  sub_100023FD4(v6);
  OpenURLAction.callAsFunction(_:)();
  (*(v4 + 8))(v6, v3);
  v7 = a1[4];
  if (v7)
  {
    if (*(*a1 + 16))
    {
      v8 = 10;
    }

    else
    {
      v8 = 8;
    }

    sub_100098D54(v8, 0, 3u, v7);

    return sub_10000FCD8(v8, 0, 3u);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10016A208(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10016983C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppModule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001698A4()
{
  v2 = *(type metadata accessor for AppModule(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000D890;

  return sub_10016939C(v0 + v3);
}

uint64_t sub_1001699A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100218DB0, &qword_1001AD850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100169A18(uint64_t a1)
{
  v2 = sub_100009F70(&qword_100218DB0, &qword_1001AD850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100169A80()
{
  v1 = type metadata accessor for AppModule(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 28);
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for OpenURLAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_100027EB0(*(v2 + *(v1 + 32)), *(v2 + *(v1 + 32) + 8));

  return swift_deallocObject();
}

void sub_100169BD4(uint64_t a1)
{
  v3 = *(type metadata accessor for AppModule(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_10016925C(a1, v4);
}

uint64_t sub_100169C44()
{
  v1 = type metadata accessor for AppModule(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = *(v1 + 28);
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for OpenURLAction();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  sub_100027EB0(*(v7 + *(v1 + 32)), *(v7 + *(v1 + 32) + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_100169E2C()
{
  v1 = *(type metadata accessor for AppModule(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for URL() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_10016969C((v0 + v2), v5);
}

unint64_t sub_100169EFC()
{
  result = qword_100221C20;
  if (!qword_100221C20)
  {
    sub_10000B3DC(&qword_100221BC8, &qword_1001BAED8);
    sub_100169FB8();
    sub_10016A208(&qword_100218490, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221C20);
  }

  return result;
}

unint64_t sub_100169FB8()
{
  result = qword_100221C28;
  if (!qword_100221C28)
  {
    sub_10000B3DC(&qword_100221BB8, &qword_1001BAEB8);
    sub_10016A0CC(&qword_100221C30, &qword_100221BB0, &qword_1001BAEB0, sub_10016A09C);
    sub_10000D1EC(&qword_100221C50, qword_100221C58, &unk_1001BAF50, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221C28);
  }

  return result;
}

uint64_t sub_10016A0CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10016A150()
{
  result = qword_100221C40;
  if (!qword_100221C40)
  {
    sub_10000B3DC(&qword_100221BA0, &qword_1001BAEA0);
    sub_10000D1EC(&qword_100221C48, &qword_100221B98, &qword_1001BAE98, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221C40);
  }

  return result;
}

uint64_t sub_10016A208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10016A254(void *a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    v1 = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      v1 = type metadata accessor for Optional();
      if (v4 <= 0x3F)
      {
        v1 = type metadata accessor for ObservationRegistrar();
        if (v5 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return v1;
}

uint64_t sub_10016A3E4@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_10016AF0C(KeyPath);

  v4 = *(*v1 + 144);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  return (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
}

uint64_t sub_10016A528()
{
  KeyPath = swift_getKeyPath();
  sub_10016AF0C(KeyPath);

  return *(v0 + *(*v0 + 152));
}

uint64_t sub_10016A5B0()
{
  v1[3] = v0;
  v2 = *v0;
  v1[4] = *(*v0 + 104);
  v1[5] = v2[11];
  v1[6] = swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = v2[12];
  v1[11] = v2[10];
  v1[12] = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[16] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[17] = v6;
  v1[18] = v5;

  return _swift_task_switch(sub_10016A7A4, v6, v5);
}

uint64_t sub_10016A7A4()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = v0[3];
  v6 = sub_10016B17C(1);
  v0[19] = *(*v5 + 112);
  v0[2] = (*(v4 + 112))(v3, v4, v6);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();

  v7 = *(v2 - 8);
  if ((*(v7 + 48))(v1, 1, v2) == 1)
  {
    v8 = v0[15];
    v9 = v0[13];
    v10 = v0[14];

    (*(v10 + 8))(v8, v9);
    sub_10016B17C(0);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[15];
    v14 = v0[12];
    v24 = v0[4];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = (*(AssociatedConformanceWitness + 24))(v14, AssociatedConformanceWitness);
    v18 = v17;
    v0[20] = v17;
    (*(v7 + 8))(v13, v14);
    v23 = (*(v24 + 48) + **(v24 + 48));
    v19 = swift_task_alloc();
    v0[21] = v19;
    *v19 = v0;
    v19[1] = sub_10016AAC8;
    v20 = v0[9];
    v22 = v0[4];
    v21 = v0[5];

    return v23(v20, v16, v18, v21, v22);
  }
}

uint64_t sub_10016AAC8()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_10016AD18;
  }

  else
  {
    v5 = sub_10016AC20;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10016AC20()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = sub_10016B960(v1);
  (*(v2 + 8))(v1, v3, v5);
  sub_10016B17C(0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10016AD18()
{
  v14 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = (*(*(v5 + 8) + 120))(v4);
    v10 = sub_10005D4E8(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch playlist for eventID: %s", v6, 0xCu);
    sub_100021498(v7);
  }

  sub_10016B17C(0);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10016AFAC(char *a1, uint64_t a2)
{
  v4 = *(*a1 + 144);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(&a1[v4], a2, v5);
  return swift_endAccess();
}

double sub_10016B17C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v16 = *(v1 + v3);
  v4 = a1 & 1;
  v15 = a1;
  v5 = *(v2 + 80);
  v13 = *(v2 + 96);
  v14 = v5;
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v6)
  {
    *(v1 + v3) = v4;
  }

  else
  {
    __chkstk_darwin(v6);
    v10 = v14;
    v12 = *(&v13 + 1);
    KeyPath = swift_getKeyPath();
    v9 = __chkstk_darwin(KeyPath);
    v11 = v1;
    LOBYTE(v12) = v4;
    sub_10016B0A4(v9, sub_1000BB504, &v10, &type metadata for () + 8);
  }

  return result;
}

uint64_t *sub_10016B2DC()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 128), *(v1 + 88));
  v2 = *(*v0 + 144);
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 160);
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_10016B4A0()
{
  sub_10016B2DC();

  return swift_deallocClassInstance();
}

__n128 sub_10016B524(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t *sub_10016B530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v22 = a3;
  v23 = a4;
  v21 = a2;
  v7 = *v5;
  v8 = *(*v5 + 96);
  v9 = *(*v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  v15 = *(v7 + 144);
  v16 = *(v7 + 88);
  v17 = swift_getAssociatedTypeWitness();
  (*(*(v17 - 8) + 56))(v5 + v15, 1, 1, v17);
  *(v5 + *(*v5 + 152)) = 0;
  ObservationRegistrar.init()();
  (*(*(v9 - 8) + 16))(v5 + *(*v5 + 112), a1, v9);
  v18 = (v5 + *(*v5 + 120));
  v19 = v22;
  *v18 = v21;
  v18[1] = v19;
  (*(*(v16 - 8) + 16))(v5 + *(*v5 + 128), v23, v16);
  v24 = (*(v8 + 112))(v9, v8);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();

  LOBYTE(a1) = (*(*(AssociatedTypeWitness - 8) + 48))(v14, 1, AssociatedTypeWitness) != 1;
  (*(v12 + 8))(v14, v11);
  *(v5 + *(*v5 + 136)) = a1;
  sub_10016B17C(a1);
  return v5;
}

double sub_10016B960(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 88);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v11 = v4[18];
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v21 = v4[10];
  v12 = v4[12];
  v13 = a1;
  v22 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (a1)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, v13, v7);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    *&v16 = v21;
    *(&v16 + 1) = v6;
    *&v17 = v12;
    *(&v17 + 1) = v5;
    *(&v20 - 2) = v16;
    *(&v20 - 1) = v17;
    KeyPath = swift_getKeyPath();
    v19 = __chkstk_darwin(KeyPath);
    *(&v20 - 2) = v2;
    *(&v20 - 1) = v13;
    sub_10016B0A4(v19, sub_10016BC58, (&v20 - 4), &type metadata for () + 8);
  }

  return result;
}

Swift::Int sub_10016BC84()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10016BD60(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10016BE28()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10016BF00@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10016D870(*a1);
  *a2 = result;
  return result;
}

void sub_10016BF30(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x746E657665;
  v5 = 0xE500000000000000;
  v6 = 0x65756E6576;
  v7 = 0xD000000000000011;
  v8 = 0x80000001001BDB30;
  if (v2 != 3)
  {
    v7 = 0xD000000000000016;
    v8 = 0x80000001001BDB50;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x747369747261;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_10016BFD0()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_10016BFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10016C0CC(uint64_t a1)
{
  v2 = sub_10016DCC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016C108(uint64_t a1)
{
  v2 = sub_10016DCC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016C144(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7473696C79616C70;
  v4 = 0xEA00000000006449;
  if (v2 != 1)
  {
    v3 = 0x6449707061;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7972746E756F63;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7473696C79616C70;
  v8 = 0xEA00000000006449;
  if (*a2 != 1)
  {
    v7 = 0x6449707061;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7972746E756F63;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10016C248()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10016C2EC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10016C37C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10016C41C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10016D8BC(*a1);
  *a2 = result;
  return result;
}

void sub_10016C44C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEA00000000006449;
  v5 = 0x7473696C79616C70;
  if (v2 != 1)
  {
    v5 = 0x6449707061;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7972746E756F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10016C4AC()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6574656D61726170;
  }
}

uint64_t sub_10016C4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574656D61726170 && a2 == 0xE900000000000072;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10016C5C8(uint64_t a1)
{
  v2 = sub_10016DFD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016C604(uint64_t a1)
{
  v2 = sub_10016DFD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016C640()
{
  v1 = *v0;
  v2 = 0x65636976726573;
  v3 = 0x7470697263736564;
  v4 = 0xD000000000000019;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574497972657571;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10016C6F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10016D908(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10016C728(uint64_t a1)
{
  v2 = sub_10016D5AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016C764(uint64_t a1)
{
  v2 = sub_10016D5AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016C7A0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10016C82C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10016C874(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10016C8F4(void *a1)
{
  v3 = v1;
  v5 = sub_100009F70(&qword_100221DF8, &qword_1001BB3D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_100028124(a1, a1[3]);
  sub_10016D5AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  *&v14 = *(v3 + 16);
  *(&v14 + 1) = v9;
  v15 = v10;
  v13 = 0;
  sub_10016D6FC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v14 = *(v3 + 40);
    v13 = 1;
    sub_100009F70(&qword_100221DD8, &qword_1001BB3D0);
    sub_10016D750(&qword_100221E08, sub_10016D7C8, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 3;

    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    v14 = *(v3 + 80);
    v13 = 4;
    sub_10016D81C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t *sub_10016CBA4(void *a1)
{
  v13[1] = *v1;
  v4 = sub_100009F70(&qword_100221DC0, &qword_1001BB3C8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - v6;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  sub_100028124(a1, a1[3]);
  sub_10016D5AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = 0;
    sub_10016D600();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = *(&v14 + 1);
    v9 = v15;
    *(v1 + 16) = v14;
    *(v1 + 24) = v8;
    *(v1 + 32) = v9;
    sub_100009F70(&qword_100221DD8, &qword_1001BB3D0);
    v16 = 1;
    sub_10016D750(&qword_100221DE0, sub_10016D654, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + 40) = v14;
    LOBYTE(v14) = 2;
    *(v1 + 48) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v1 + 56) = v11;
    LOBYTE(v14) = 3;
    *(v1 + 64) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v1 + 72) = v12;

    v16 = 4;
    sub_10016D6A8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    *(v1 + 80) = v14;
  }

  sub_100021498(a1);
  return v1;
}

uint64_t sub_10016CF3C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = a4;
  v6 = sub_100009F70(&qword_100221E38, &qword_1001BB3E8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_100028124(a1, a1[3]);
  sub_10016DCC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v14 = v12;
    v13 = 1;
    sub_10016DD6C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10016D0C8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v7 = sub_100009F70(&qword_100221E68, &qword_1001BB3F8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_100028124(a1, a1[3]);
  sub_10016DFD8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_10016E080();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t *sub_10016D270@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_10016CBA4(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_10016D2EC@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_10016D2FC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10016DAD4(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_10016D40C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10016DE14(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_10016D558(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10016D5AC()
{
  result = qword_100221DC8;
  if (!qword_100221DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221DC8);
  }

  return result;
}

unint64_t sub_10016D600()
{
  result = qword_100221DD0;
  if (!qword_100221DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221DD0);
  }

  return result;
}

unint64_t sub_10016D654()
{
  result = qword_100221DE8;
  if (!qword_100221DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221DE8);
  }

  return result;
}

unint64_t sub_10016D6A8()
{
  result = qword_100221DF0;
  if (!qword_100221DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221DF0);
  }

  return result;
}

unint64_t sub_10016D6FC()
{
  result = qword_100221E00;
  if (!qword_100221E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E00);
  }

  return result;
}

uint64_t sub_10016D750(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(&qword_100221DD8, &qword_1001BB3D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10016D7C8()
{
  result = qword_100221E10;
  if (!qword_100221E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E10);
  }

  return result;
}

unint64_t sub_10016D81C()
{
  result = qword_100221E18;
  if (!qword_100221E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E18);
  }

  return result;
}

unint64_t sub_10016D870(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100209970, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10016D8BC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100209A08, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10016D908(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636976726573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574497972657571 && a2 == 0xEA0000000000736DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001001C1F20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001001C1F40 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10016DAD4(void *a1)
{
  v3 = sub_100009F70(&qword_100221E20, &qword_1001BB3E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_100028124(a1, a1[3]);
  sub_10016DCC4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[13] = 1;
    sub_10016DD18();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100021498(a1);
  return v7;
}

unint64_t sub_10016DCC4()
{
  result = qword_100221E28;
  if (!qword_100221E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E28);
  }

  return result;
}

unint64_t sub_10016DD18()
{
  result = qword_100221E30;
  if (!qword_100221E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E30);
  }

  return result;
}

unint64_t sub_10016DD6C()
{
  result = qword_100221E40;
  if (!qword_100221E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E40);
  }

  return result;
}

unint64_t sub_10016DDC0()
{
  result = qword_100221E48;
  if (!qword_100221E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E48);
  }

  return result;
}

uint64_t sub_10016DE14(void *a1)
{
  v3 = sub_100009F70(&qword_100221E50, &qword_1001BB3F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_100028124(a1, v7);
  sub_10016DFD8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[14] = 0;
    sub_10016E02C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v9[15];
    v9[13] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100021498(a1);
  return v7;
}

unint64_t sub_10016DFD8()
{
  result = qword_100221E58;
  if (!qword_100221E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E58);
  }

  return result;
}

unint64_t sub_10016E02C()
{
  result = qword_100221E60;
  if (!qword_100221E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E60);
  }

  return result;
}

unint64_t sub_10016E080()
{
  result = qword_100221E70;
  if (!qword_100221E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E70);
  }

  return result;
}

unint64_t sub_10016E0D4()
{
  result = qword_100221E78;
  if (!qword_100221E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E78);
  }

  return result;
}

unint64_t sub_10016E184()
{
  result = qword_100221E80;
  if (!qword_100221E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E80);
  }

  return result;
}

unint64_t sub_10016E1DC()
{
  result = qword_100221E88;
  if (!qword_100221E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E88);
  }

  return result;
}

unint64_t sub_10016E234()
{
  result = qword_100221E90;
  if (!qword_100221E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E90);
  }

  return result;
}

unint64_t sub_10016E28C()
{
  result = qword_100221E98;
  if (!qword_100221E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E98);
  }

  return result;
}

unint64_t sub_10016E2E4()
{
  result = qword_100221EA0;
  if (!qword_100221EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221EA0);
  }

  return result;
}

unint64_t sub_10016E33C()
{
  result = qword_100221EA8;
  if (!qword_100221EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221EA8);
  }

  return result;
}

unint64_t sub_10016E394()
{
  result = qword_100221EB0;
  if (!qword_100221EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221EB0);
  }

  return result;
}

unint64_t sub_10016E3EC()
{
  result = qword_100221EB8;
  if (!qword_100221EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221EB8);
  }

  return result;
}

unint64_t sub_10016E444()
{
  result = qword_100221EC0;
  if (!qword_100221EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221EC0);
  }

  return result;
}

unint64_t sub_10016E49C()
{
  result = qword_100221EC8;
  if (!qword_100221EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221EC8);
  }

  return result;
}

unint64_t sub_10016E4F4()
{
  result = qword_100221ED0[0];
  if (!qword_100221ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100221ED0);
  }

  return result;
}

id sub_10016E564(id result)
{
  if (result)
  {
    v1 = result;
    v2 = [result addressRepresentations];
    if (!v2 || (v3 = v2, v4 = [v2 fullAddressIncludingRegion:0 singleLine:1], v3, !v4))
    {
      result = [v1 address];
      if (!result)
      {
        return result;
      }

      v5 = result;
      v4 = [result fullAddress];
    }

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v6;
  }

  return result;
}

uint64_t sub_10016E640(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 40) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_10016E668, 0, 0);
}

uint64_t sub_10016E668()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  if (!v1)
  {
    goto LABEL_5;
  }

  if (v2)
  {
    v3 = *(v0 + 24);
    if (v3 == 0.0 || *(v0 + 32) == 0.0)
    {
LABEL_5:
      v4 = v2;
LABEL_6:
      v5 = *(v0 + 8);

      return v5(v2);
    }

    v11 = v1;
    v12 = v2;
    [v12 size];
    v14 = vabdd_f64(v13, v3);
    [v12 size];
    if (v14 < 15.0 && vabdd_f64(v15, *(v0 + 32)) < 15.0)
    {

      v2 = *(v0 + 16);
      goto LABEL_6;
    }
  }

  else
  {
    v7 = v1;
  }

  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_10016E7E8;
  v9.n128_u64[0] = *(v0 + 24);
  v10.n128_u64[0] = *(v0 + 32);

  return (sub_10019DEE8)(v1, v9, v10);
}

uint64_t sub_10016E7E8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_10016E97C;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_10016E910;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10016E910()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10016E97C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10016E9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[0] = a2;
  v8 = *(a3 + 16);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - v11;
  (*(v10 + 16))(v17 - v11, v4 + *(a3 + 40), v9);
  v13 = *(v8 - 8);
  v14 = 1;
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    v8 = v9;
  }

  else
  {
    (*(*(a3 + 24) + 40))(a1, v17[0], 0, v8);
    v14 = 0;
    v10 = v13;
  }

  (*(v10 + 8))(v12, v8);
  v15 = type metadata accessor for URL();
  return (*(*(v15 - 8) + 56))(a4, v14, 1, v15);
}

uint64_t sub_10016EBE4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  (*(v5 + 16))(&v12 - v6, v1 + *(a1 + 40), v4);
  v8 = *(v3 - 8);
  if ((*(v8 + 48))(v7, 1, v3) == 1)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v9 = (*(*(a1 + 24) + 24))(v3);
    (*(v8 + 8))(v7, v3);
    if (v9)
    {
      return Color.init(cgColor:)();
    }
  }

  v11 = [objc_opt_self() tertiarySystemFillColor];
  return Color.init(uiColor:)();
}

uint64_t sub_10016ED9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>, uint64_t a7@<X5>, uint64_t a8@<X6>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v10 = *(type metadata accessor for ArtistEventListHeaderViewModel(0, a7, a8, a4) + 40);
  v11 = type metadata accessor for Optional();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a6[v10], a5, v11);
}

uint64_t sub_10016EE4C(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10016EED4(_OWORD *a1)
{
  v1 = a1[2];
  v11 = a1[1];
  v12 = v1;
  v2 = a1[4];
  v13 = a1[3];
  v14 = v2;
  type metadata accessor for ArtistEventViewModel(255, &v11);
  v3 = type metadata accessor for State();
  if (v4 <= 0x3F)
  {
    v15 = 0;
    *&v11 = v3;
    sub_10000B304(319);
    if (v6 <= 0x3F)
    {
      v16 = 0;
      *(&v11 + 1) = v5;
      sub_10016F298(319, &qword_1002198B8, &type metadata accessor for ColorScheme);
      if (v8 <= 0x3F)
      {
        v17 = 0;
        *&v12 = v7;
        sub_10016F298(319, &qword_10021A308, &type metadata accessor for DismissAction);
        if (v10 <= 0x3F)
        {
          v18 = 0;
          *(&v12 + 1) = v9;
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10016EFF4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_100219838, &qword_1001B2330);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 88);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(&qword_100218950, &unk_1001B5000);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 92);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10016F144(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_100219838, &qword_1001B2330);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 88);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(&qword_100218950, &unk_1001B5000);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 92);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10016F298(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10016F338(_OWORD *a1)
{
  v2 = v1[1];
  v7 = *v1;
  v8 = v2;
  v3 = a1[2];
  v6[0] = a1[1];
  v6[1] = v3;
  v4 = a1[4];
  v6[2] = a1[3];
  v6[3] = v4;
  type metadata accessor for ArtistEventViewModel(255, v6);
  type metadata accessor for State();
  State.wrappedValue.getter();
  return *&v6[0];
}

uint64_t sub_10016F39C(_OWORD *a1)
{
  v2 = v1[1];
  v7 = *v1;
  v8 = v2;
  v3 = a1[2];
  v6[0] = a1[1];
  v6[1] = v3;
  v4 = a1[4];
  v6[2] = a1[3];
  v6[3] = v4;
  type metadata accessor for ArtistEventViewModel(255, v6);
  type metadata accessor for State();
  State.projectedValue.getter();
  return *&v6[0];
}

uint64_t sub_10016F404@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v188 = a2;
  v3 = type metadata accessor for TaskPriority();
  v186 = *(v3 - 8);
  v187 = v3;
  v4 = __chkstk_darwin(v3);
  v185 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = *(a1 - 1);
  v202 = *(v208 + 64);
  __chkstk_darwin(v4);
  v197 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  type metadata accessor for Optional();
  v198 = type metadata accessor for Binding();
  v201 = *(v198 - 8);
  __chkstk_darwin(v198);
  v196 = &v157 - v8;
  *&v210 = type metadata accessor for NavigationPath();
  v9 = a1[2];
  *&v10 = v9;
  *(&v10 + 1) = v7;
  v209 = v10;
  v11 = a1[6];
  v200 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v205 = v11;
  v206 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ArtistEventListHeader(255, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  v15 = type metadata accessor for Section();
  WitnessTable = swift_getWitnessTable();
  v245 = &protocol witness table for EmptyView;
  v246 = WitnessTable;
  v247 = &protocol witness table for EmptyView;
  v195 = &protocol conformance descriptor for <> Section<A, B, C>;
  v17 = swift_getWitnessTable();
  v230 = v15;
  v231 = v17;
  v194 = &opaque type descriptor for <<opaque return type of View.listSectionSeparator(_:edges:)>>;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021A310, &qword_1001AF8F0);
  v248 = type metadata accessor for ModifiedContent();
  v199 = sub_10000B3DC(&qword_100221FD8, &qword_1001BB970);
  v204 = a1[7];
  v203 = v7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedConformanceWitness();
  v230 = v9;
  v231 = v18;
  *&v232 = v11;
  *(&v232 + 1) = v19;
  type metadata accessor for PromotionalAssetsEntryView(255, &v230);
  swift_getWitnessTable();
  v20 = type metadata accessor for Button();
  v21 = type metadata accessor for PlainButtonStyle();
  v22 = swift_getWitnessTable();
  v23 = sub_10017CF40(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v230 = v20;
  v231 = v21;
  *&v232 = v22;
  *(&v232 + 1) = v23;
  swift_getOpaqueTypeMetadata2();
  v24 = type metadata accessor for Section();
  v230 = v20;
  v231 = v21;
  *&v232 = v22;
  *(&v232 + 1) = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v242 = &protocol witness table for EmptyView;
  v243 = OpaqueTypeConformance2;
  v244 = &protocol witness table for EmptyView;
  v26 = swift_getWitnessTable();
  v230 = v24;
  v231 = v26;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  v249 = type metadata accessor for Optional();
  v250 = sub_10000B3DC(&qword_100221FE0, &qword_1001BB978);
  v193 = sub_10000B3DC(&qword_100221FE8, &qword_1001BB980);
  v27 = type metadata accessor for Array();
  v199 = *(*(v204 + 8) + 16);
  v28 = swift_getAssociatedTypeWitness();
  v29 = sub_10000B3DC(&qword_100221FF0, &qword_1001BB988);
  v30 = swift_getWitnessTable();
  v31 = swift_getAssociatedConformanceWitness();
  v230 = v27;
  v231 = v28;
  *&v232 = v29;
  *(&v232 + 1) = v30;
  v233 = v31;
  type metadata accessor for ForEach();
  v32 = type metadata accessor for Section();
  v241 = sub_10017AC40();
  v33 = swift_getWitnessTable();
  v238 = &protocol witness table for EmptyView;
  v239 = v33;
  v240 = &protocol witness table for EmptyView;
  v34 = swift_getWitnessTable();
  v230 = v32;
  v231 = v34;
  swift_getOpaqueTypeMetadata2();
  v251 = type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata();
  v35 = type metadata accessor for TupleView();
  v36 = swift_getWitnessTable();
  v230 = &type metadata for Never;
  v231 = v35;
  *&v232 = &protocol witness table for Never;
  *(&v232 + 1) = v36;
  v37 = type metadata accessor for List();
  v38 = type metadata accessor for PlainListStyle();
  v39 = swift_getWitnessTable();
  v230 = v37;
  v231 = v38;
  *&v232 = v39;
  *(&v232 + 1) = &protocol witness table for PlainListStyle;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v230 = v37;
  v231 = v38;
  *&v232 = v39;
  *(&v232 + 1) = &protocol witness table for PlainListStyle;
  v41 = swift_getOpaqueTypeConformance2();
  v230 = OpaqueTypeMetadata2;
  v231 = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  v230 = OpaqueTypeMetadata2;
  v231 = v41;
  v43 = swift_getOpaqueTypeConformance2();
  v230 = v42;
  v231 = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  v230 = v42;
  v231 = v43;
  v45 = swift_getOpaqueTypeConformance2();
  v230 = v44;
  v231 = v45;
  v46 = swift_getOpaqueTypeMetadata2();
  v230 = v44;
  v231 = v45;
  v47 = swift_getOpaqueTypeConformance2();
  v230 = v46;
  v231 = v47;
  v48 = swift_getOpaqueTypeMetadata2();
  v230 = v46;
  v231 = v47;
  v49 = swift_getOpaqueTypeConformance2();
  v230 = v48;
  v231 = &type metadata for Bool;
  *&v232 = v49;
  *(&v232 + 1) = &protocol witness table for Bool;
  v50 = swift_getOpaqueTypeMetadata2();
  v51 = sub_10000B3DC(&qword_100222020, &qword_1001BB9A0);
  v230 = v48;
  v231 = &type metadata for Bool;
  *&v232 = v49;
  *(&v232 + 1) = &protocol witness table for Bool;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = sub_10000D1EC(&qword_100222028, &qword_100222020, &qword_1001BB9A0, &protocol conformance descriptor for TupleToolbarContent<A>);
  v230 = v50;
  v231 = v51;
  *&v232 = v52;
  *(&v232 + 1) = v53;
  v190 = swift_getOpaqueTypeMetadata2();
  v230 = v50;
  v231 = v51;
  *&v232 = v52;
  *(&v232 + 1) = v53;
  v189 = swift_getOpaqueTypeConformance2();
  v54 = type metadata accessor for NavigationStack();
  v176 = *(v54 - 8);
  __chkstk_darwin(v54);
  v193 = &v157 - v55;
  v56 = sub_100042730();
  v57 = sub_100042784();
  v58 = v203;
  v59 = v204;
  v230 = v203;
  v231 = &type metadata for ArtistFetcher;
  *&v232 = &type metadata for PromotionalPlaylistFetcher;
  *(&v232 + 1) = v204;
  v233 = v56;
  v234 = v57;
  v60 = type metadata accessor for MusicEventView(255, &v230);
  v61 = swift_getWitnessTable();
  v62 = swift_getWitnessTable();
  v230 = v54;
  v63 = v54;
  v163 = v61;
  v164 = v54;
  v231 = v58;
  *&v232 = v60;
  v161 = v60;
  v162 = v62;
  *(&v232 + 1) = v61;
  v64 = v199;
  v233 = v199;
  v234 = v62;
  v65 = v62;
  v191 = swift_getOpaqueTypeMetadata2();
  v181 = *(v191 - 8);
  __chkstk_darwin(v191);
  v195 = &v157 - v66;
  v67 = type metadata accessor for AppleMusicFetcher();
  v68 = sub_10017CF40(&qword_10021AFB0, type metadata accessor for AppleMusicFetcher, &unk_1001BC3B0);
  v230 = v58;
  v231 = v67;
  *&v232 = v59;
  *(&v232 + 1) = v68;
  v69 = type metadata accessor for PromotionalAssetsView(255, &v230);
  v230 = v63;
  v231 = v58;
  v70 = v58;
  *&v232 = v60;
  *(&v232 + 1) = v61;
  v233 = v64;
  v234 = v65;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = swift_getWitnessTable();
  v73 = v191;
  v230 = v191;
  v231 = v70;
  v74 = v70;
  *&v232 = v69;
  v75 = v69;
  v165 = v69;
  v166 = v72;
  *(&v232 + 1) = v71;
  v167 = v71;
  v233 = v64;
  v76 = v64;
  v234 = v72;
  v77 = v72;
  v170 = swift_getOpaqueTypeMetadata2();
  v174 = *(v170 - 8);
  __chkstk_darwin(v170);
  v192 = &v157 - v78;
  v79 = type metadata accessor for ModifiedContent();
  v173 = v79;
  v183 = *(v79 - 8);
  __chkstk_darwin(v79);
  v194 = &v157 - v80;
  v230 = v73;
  v231 = v74;
  v81 = v74;
  *&v232 = v75;
  *(&v232 + 1) = v71;
  v233 = v76;
  v234 = v77;
  v168 = swift_getOpaqueTypeConformance2();
  v236 = v168;
  v237 = &protocol witness table for _AppearanceActionModifier;
  v184 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v172 = swift_getWitnessTable();
  v230 = v79;
  v231 = v172;
  v178 = &unk_1001C2954;
  v175 = swift_getOpaqueTypeMetadata2();
  v179 = *(v175 - 8);
  __chkstk_darwin(v175);
  v169 = &v157 - v82;
  type metadata accessor for AccessibilityAttachmentModifier();
  v180 = type metadata accessor for ModifiedContent();
  v182 = *(v180 - 8);
  v83 = __chkstk_darwin(v180);
  v171 = &v157 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v83);
  v177 = &v157 - v85;
  v86 = v205;
  *&v87 = v205;
  *(&v87 + 1) = v59;
  v227 = v207;
  v88 = v200;
  v89 = *(v200 + 2);
  v223 = v209;
  v224 = v89;
  v209 = *(v200 + 4);
  v210 = v89;
  v225 = v87;
  v226 = v209;
  NavigationStack.init<>(root:)();
  v90 = sub_10016F39C(v88);
  v92 = v91;
  v94 = v93;
  v95 = v206;
  v217 = v206;
  v218 = v81;
  v219 = v210;
  v220 = v86;
  v221 = v59;
  v222 = v209;
  swift_getKeyPath();
  v248 = v90;
  v249 = v92;
  v250 = v94;
  v230 = v95;
  v231 = v81;
  v232 = v210;
  v233 = v86;
  v234 = v59;
  v96 = v59;
  v235 = v209;
  type metadata accessor for ArtistEventViewModel(255, &v230);
  v157 = type metadata accessor for Binding();
  Binding.subscript.getter();

  v97 = v208;
  v98 = *(v208 + 16);
  v159 = v208 + 16;
  v160 = v98;
  v99 = v197;
  v100 = v200;
  v98(v197, v207, v200);
  v189 = *(v97 + 80);
  v101 = (v189 + 80) & ~v189;
  v158 = v101;
  v102 = swift_allocObject();
  v103 = v206;
  v104 = v203;
  *(v102 + 16) = v206;
  *(v102 + 24) = v104;
  v105 = v209;
  *(v102 + 32) = v210;
  *(v102 + 48) = v86;
  *(v102 + 56) = v96;
  v106 = v96;
  *(v102 + 64) = v105;
  v107 = *(v97 + 32);
  v208 = v97 + 32;
  v190 = v107;
  v108 = v100;
  v107(v102 + v101, v99, v100);
  swift_checkMetadataState();
  v109 = v196;
  v110 = v164;
  v111 = v193;
  View.sheet<A, B>(item:onDismiss:content:)();

  v112 = *(v201 + 8);
  v201 += 8;
  v163 = v112;
  v112(v109, v198);
  (*(v176 + 8))(v111, v110);
  v113 = sub_10016F39C(v108);
  v115 = v114;
  v117 = v116;
  v211 = v103;
  v212 = v104;
  v213 = v210;
  v118 = v205;
  v214 = v205;
  v215 = v106;
  v216 = v209;
  swift_getKeyPath();
  v230 = v113;
  v231 = v115;
  *&v232 = v117;
  Binding.subscript.getter();

  v119 = swift_allocObject();
  v120 = v203;
  *(v119 + 16) = v103;
  *(v119 + 24) = v120;
  v121 = v209;
  *(v119 + 32) = v210;
  *(v119 + 48) = v118;
  *(v119 + 56) = v106;
  *(v119 + 64) = v121;
  swift_checkMetadataState();
  v122 = v191;
  v123 = v120;
  v124 = v195;
  View.sheet<A, B>(item:onDismiss:content:)();

  v163(v109, v198);
  (*(v181 + 8))(v124, v122);
  v125 = v197;
  v126 = v207;
  v127 = v200;
  v128 = v160;
  v160(v197, v207, v200);
  v129 = v158;
  v130 = swift_allocObject();
  v131 = v205;
  *(v130 + 16) = v206;
  *(v130 + 24) = v123;
  v132 = v209;
  *(v130 + 32) = v210;
  v133 = v204;
  *(v130 + 48) = v131;
  *(v130 + 56) = v133;
  *(v130 + 64) = v132;
  v190(v130 + v129, v125, v127);
  v134 = v170;
  v135 = v192;
  View.onAppear(perform:)();

  (*(v174 + 8))(v135, v134);
  v128(v125, v126, v127);
  type metadata accessor for MainActor();
  v136 = static MainActor.shared.getter();
  v137 = (v189 + 96) & ~v189;
  v138 = swift_allocObject();
  *(v138 + 16) = v136;
  *(v138 + 24) = &protocol witness table for MainActor;
  v139 = v205;
  *(v138 + 32) = v206;
  *(v138 + 40) = v123;
  v140 = v209;
  *(v138 + 48) = v210;
  v141 = v204;
  *(v138 + 64) = v139;
  *(v138 + 72) = v141;
  *(v138 + 80) = v140;
  v190(v138 + v137, v125, v127);
  v142 = v185;
  v144 = v172;
  v143 = v173;
  j___sScP13userInitiatedScPvgZ();
  v145 = v169;
  v146 = v142;
  v147 = v142;
  v148 = v194;
  sub_100009FB8(0, v146, 0xD000000000000025, 0x80000001001C1F60, 211, &unk_1001BBA20, v138, v169, v143, v144);
  (*(v186 + 8))(v147, v187);
  (*(v183 + 8))(v148, v143);
  v230 = v143;
  v231 = v144;
  v149 = swift_getOpaqueTypeConformance2();
  v150 = v171;
  v151 = v175;
  View.accessibilityIdentifier(_:)();
  (*(v179 + 8))(v145, v151);
  v152 = sub_10017CF40(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v228 = v149;
  v229 = v152;
  v153 = v180;
  swift_getWitnessTable();
  v154 = v177;
  sub_100157EFC();
  v155 = *(v182 + 8);
  v155(v150, v153);
  sub_100157EFC();
  return (v155)(v154, v153);
}

uint64_t sub_100170AEC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v182 = a5;
  v183 = a8;
  v181 = a4;
  v179 = a1;
  v176 = a9;
  v185 = a10;
  v212 = a2;
  v213 = a3;
  v214 = a4;
  v215 = a5;
  v216 = a6;
  v217 = a7;
  v218 = a8;
  v219 = a10;
  v180 = type metadata accessor for ArtistEventView(0, &v212);
  v175 = *(v180 - 1);
  v173 = *(v175 + 64);
  __chkstk_darwin(v180);
  v174 = &v127 - v14;
  v15 = type metadata accessor for ContentMarginPlacement();
  v171 = *(v15 - 8);
  v172 = v15;
  __chkstk_darwin(v15);
  v170 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v168 = *(v17 - 8);
  v169 = v17;
  __chkstk_darwin(v17);
  v167 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ScrollIndicatorVisibility();
  v165 = *(v19 - 8);
  v166 = v19;
  __chkstk_darwin(v19);
  v164 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for PlainListStyle();
  v163 = *(v177 - 8);
  __chkstk_darwin(v177);
  v162 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v186 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ArtistEventListHeader(255, AssociatedTypeWitness, AssociatedConformanceWitness, v24);
  v25 = type metadata accessor for Section();
  WitnessTable = swift_getWitnessTable();
  v205 = &protocol witness table for EmptyView;
  v206 = WitnessTable;
  v207 = &protocol witness table for EmptyView;
  v178 = &protocol conformance descriptor for <> Section<A, B, C>;
  v27 = swift_getWitnessTable();
  v212 = v25;
  v213 = v27;
  v161 = &opaque type descriptor for <<opaque return type of View.listSectionSeparator(_:edges:)>>;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021A310, &qword_1001AF8F0);
  v208 = type metadata accessor for ModifiedContent();
  v160 = sub_10000B3DC(&qword_100221FD8, &qword_1001BB970);
  v187 = a3;
  v188 = a7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v28 = swift_getAssociatedTypeWitness();
  v29 = swift_getAssociatedConformanceWitness();
  v212 = v184;
  v213 = v28;
  v214 = a6;
  v215 = v29;
  type metadata accessor for PromotionalAssetsEntryView(255, &v212);
  swift_getWitnessTable();
  v30 = type metadata accessor for Button();
  v31 = type metadata accessor for PlainButtonStyle();
  v32 = swift_getWitnessTable();
  v33 = sub_10017CF40(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v212 = v30;
  v213 = v31;
  v214 = v32;
  v215 = v33;
  swift_getOpaqueTypeMetadata2();
  v34 = type metadata accessor for Section();
  v212 = v30;
  v213 = v31;
  v214 = v32;
  v215 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v202 = &protocol witness table for EmptyView;
  v203 = OpaqueTypeConformance2;
  v204 = &protocol witness table for EmptyView;
  v36 = swift_getWitnessTable();
  v212 = v34;
  v213 = v36;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  v209 = type metadata accessor for Optional();
  v210 = sub_10000B3DC(&qword_100221FE0, &qword_1001BB978);
  v160 = sub_10000B3DC(&qword_100221FE8, &qword_1001BB980);
  v37 = type metadata accessor for Array();
  v38 = swift_getAssociatedTypeWitness();
  v39 = sub_10000B3DC(&qword_100221FF0, &qword_1001BB988);
  v40 = swift_getWitnessTable();
  v41 = swift_getAssociatedConformanceWitness();
  v212 = v37;
  v213 = v38;
  v214 = v39;
  v215 = v40;
  v216 = v41;
  type metadata accessor for ForEach();
  v42 = type metadata accessor for Section();
  v201 = sub_10017AC40();
  v43 = swift_getWitnessTable();
  v198 = &protocol witness table for EmptyView;
  v199 = v43;
  v200 = &protocol witness table for EmptyView;
  v44 = swift_getWitnessTable();
  v212 = v42;
  v213 = v44;
  swift_getOpaqueTypeMetadata2();
  v211 = type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata();
  v45 = type metadata accessor for TupleView();
  v132 = v45;
  v131 = swift_getWitnessTable();
  v212 = &type metadata for Never;
  v213 = v45;
  v214 = &protocol witness table for Never;
  v215 = v131;
  v46 = type metadata accessor for List();
  v133 = *(v46 - 8);
  __chkstk_darwin(v46);
  v130 = &v127 - v47;
  v48 = swift_getWitnessTable();
  v128 = v46;
  v49 = v177;
  v212 = v46;
  v213 = v177;
  v214 = v48;
  v215 = &protocol witness table for PlainListStyle;
  v50 = v48;
  v129 = v48;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v150 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v127 = &v127 - v52;
  v212 = v46;
  v213 = v49;
  v214 = v50;
  v215 = &protocol witness table for PlainListStyle;
  v53 = swift_getOpaqueTypeConformance2();
  v212 = OpaqueTypeMetadata2;
  v213 = v53;
  v54 = swift_getOpaqueTypeMetadata2();
  v157 = *(v54 - 8);
  __chkstk_darwin(v54);
  v154 = &v127 - v55;
  v152 = OpaqueTypeMetadata2;
  v212 = OpaqueTypeMetadata2;
  v213 = v53;
  v135 = v53;
  v56 = swift_getOpaqueTypeConformance2();
  v212 = v54;
  v213 = v56;
  v57 = swift_getOpaqueTypeMetadata2();
  v153 = *(v57 - 8);
  __chkstk_darwin(v57);
  v146 = &v127 - v58;
  v160 = v54;
  v212 = v54;
  v213 = v56;
  v143 = v56;
  v59 = swift_getOpaqueTypeConformance2();
  v212 = v57;
  v213 = v59;
  v60 = swift_getOpaqueTypeMetadata2();
  v147 = *(v60 - 8);
  __chkstk_darwin(v60);
  v140 = &v127 - v61;
  v155 = v57;
  v212 = v57;
  v213 = v59;
  v137 = v59;
  v62 = swift_getOpaqueTypeConformance2();
  v212 = v60;
  v213 = v62;
  v63 = swift_getOpaqueTypeMetadata2();
  v159 = *(v63 - 8);
  __chkstk_darwin(v63);
  v178 = &v127 - v64;
  v148 = v60;
  v212 = v60;
  v213 = v62;
  v134 = v62;
  v65 = swift_getOpaqueTypeConformance2();
  v212 = v63;
  v213 = &type metadata for Bool;
  v214 = v65;
  v215 = &protocol witness table for Bool;
  v66 = swift_getOpaqueTypeMetadata2();
  v156 = *(v66 - 8);
  __chkstk_darwin(v66);
  v151 = &v127 - v67;
  v68 = sub_10000B3DC(&qword_100222020, &qword_1001BB9A0);
  v161 = v63;
  v212 = v63;
  v213 = &type metadata for Bool;
  v142 = v65;
  v214 = v65;
  v215 = &protocol witness table for Bool;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = sub_10000D1EC(&qword_100222028, &qword_100222020, &qword_1001BB9A0, &protocol conformance descriptor for TupleToolbarContent<A>);
  v158 = v66;
  v212 = v66;
  v213 = v68;
  v149 = v68;
  v71 = v127;
  v141 = v69;
  v214 = v69;
  v215 = v70;
  v139 = v70;
  v72 = swift_getOpaqueTypeMetadata2();
  v144 = *(v72 - 8);
  v145 = v72;
  v73 = __chkstk_darwin(v72);
  v136 = &v127 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v138 = &v127 - v75;
  v189 = v184;
  v190 = v187;
  v191 = v181;
  v192 = v182;
  v193 = v186;
  v194 = v188;
  v195 = v183;
  v196 = v185;
  v76 = v179;
  v197 = v179;
  v77 = v130;
  List<>.init(content:)();
  v78 = v162;
  PlainListStyle.init()();
  v79 = v128;
  v80 = v177;
  View.listStyle<A>(_:)();
  (*(v163 + 8))(v78, v80);
  (*(v133 + 8))(v77, v79);
  v81 = v164;
  static ScrollIndicatorVisibility.never.getter();
  sub_100009F70(&qword_10021A390, &qword_1001B6A40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  LOBYTE(v39) = static Axis.Set.vertical.getter();
  *(inited + 32) = v39;
  v83 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v83;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v39)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v83)
  {
    Axis.Set.init(rawValue:)();
  }

  v84 = v154;
  v85 = v152;
  View.scrollIndicators(_:axes:)();
  (*(v165 + 8))(v81, v166);
  (*(v150 + 8))(v71, v85);
  v86 = v76;
  sub_10016F338(v180);
  v87 = sub_1001A5918();

  v212 = v87;
  v88 = v187;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.isEmpty.getter();

  v89 = v146;
  v90 = v160;
  View.scrollDisabled(_:)();
  (*(v157 + 8))(v84, v90);
  v92 = v167;
  v91 = v168;
  v93 = v169;
  (*(v168 + 104))(v167, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v169);
  v94 = v140;
  v95 = v155;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v91 + 8))(v92, v93);
  (*(v153 + 8))(v89, v95);
  static Edge.Set.top.getter();
  v96 = v170;
  static ContentMarginPlacement.automatic.getter();
  v97 = v148;
  View.contentMargins(_:_:for:)();
  (*(v171 + 8))(v96, v172);
  (*(v147 + 8))(v94, v97);
  v99 = v174;
  v98 = v175;
  v100 = v180;
  (*(v175 + 16))(v174, v86, v180);
  v101 = (*(v98 + 80) + 80) & ~*(v98 + 80);
  v102 = swift_allocObject();
  v103 = v183;
  v104 = v184;
  *(v102 + 2) = v184;
  *(v102 + 3) = v88;
  v106 = v181;
  v105 = v182;
  *(v102 + 4) = v181;
  *(v102 + 5) = v105;
  v107 = v188;
  *(v102 + 6) = v186;
  *(v102 + 7) = v107;
  v108 = v185;
  *(v102 + 8) = v103;
  *(v102 + 9) = v108;
  (*(v98 + 32))(&v102[v101], v99, v100);
  v126 = &protocol witness table for Bool;
  v109 = v151;
  v110 = v161;
  v111 = v178;
  View.onScrollGeometryChange<A>(for:of:action:)();

  v112 = (*(v159 + 8))(v111, v110);
  __chkstk_darwin(v112);
  v114 = v186;
  v113 = v187;
  *(&v127 - 10) = v104;
  *(&v127 - 9) = v113;
  *(&v127 - 8) = v106;
  *(&v127 - 7) = v105;
  v115 = v188;
  *(&v127 - 6) = v114;
  *(&v127 - 5) = v115;
  v116 = v185;
  *(&v127 - 4) = v103;
  *(&v127 - 3) = v116;
  v126 = v179;
  v117 = v136;
  v118 = v158;
  v119 = v149;
  v120 = v141;
  v121 = v139;
  View.toolbar<A>(content:)();
  (*(v156 + 8))(v109, v118);
  v212 = v118;
  v213 = v119;
  v214 = v120;
  v215 = v121;
  swift_getOpaqueTypeConformance2();
  v122 = v138;
  v123 = v145;
  sub_100157EFC();
  v124 = *(v144 + 8);
  v124(v117, v123);
  sub_100157EFC();
  return (v124)(v122, v123);
}

uint64_t sub_100171F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v360 = a8;
  v362 = a5;
  v356 = a4;
  v361 = a2;
  v364 = a1;
  v335 = a9;
  v363 = a10;
  v328 = type metadata accessor for Array();
  v406 = v328;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v408 = sub_10000B3DC(&qword_100221FF0, &qword_1001BB988);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for ForEach();
  v14 = type metadata accessor for Section();
  v316 = *(v14 - 8);
  __chkstk_darwin(v14);
  v313 = v268 - v15;
  v423 = sub_10017AC40();
  v314 = v13;
  v16 = swift_getWitnessTable();
  v420 = &protocol witness table for EmptyView;
  v421 = v16;
  v309 = v16;
  v422 = &protocol witness table for EmptyView;
  v352 = &protocol conformance descriptor for <> Section<A, B, C>;
  v17 = swift_getWitnessTable();
  v347 = v14;
  v406 = v14;
  v346 = v17;
  AssociatedTypeWitness = v17;
  v338 = &opaque type descriptor for <<opaque return type of View.listSectionSeparator(_:edges:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v315 = *(OpaqueTypeMetadata2 - 8);
  v19 = __chkstk_darwin(OpaqueTypeMetadata2);
  v312 = v268 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v311 = v268 - v21;
  v332 = sub_100009F70(&qword_100222060, &qword_1001BBAD0);
  __chkstk_darwin(v332);
  v307 = v268 - v22;
  v23 = sub_100009F70(&qword_100221FE8, &qword_1001BB980);
  v310 = *(v23 - 8);
  __chkstk_darwin(v23);
  v308 = v268 - v24;
  v329 = v25;
  v330 = OpaqueTypeMetadata2;
  v334 = type metadata accessor for _ConditionalContent();
  v333 = *(v334 - 8);
  v26 = __chkstk_darwin(v334);
  v345 = v268 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v331 = v268 - v28;
  v29 = sub_100009F70(&qword_100222068, &qword_1001BBAD8);
  v325 = *(v29 - 8);
  v326 = v29;
  __chkstk_darwin(v29);
  v306 = v268 - v30;
  v303 = sub_100009F70(&qword_100222070, &qword_1001BBAE0);
  v301 = *(v303 - 8);
  __chkstk_darwin(v303);
  v299 = v268 - v31;
  v302 = sub_100009F70(&qword_100222078, &qword_1001BBAE8);
  __chkstk_darwin(v302);
  v300 = v268 - v32;
  v33 = sub_100009F70(&qword_100222080, &qword_1001BBAF0);
  v34 = __chkstk_darwin(v33 - 8);
  v305 = v268 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v304 = v268 - v36;
  v37 = sub_100009F70(&qword_10021A320, &qword_1001AF900);
  v290 = *(v37 - 8);
  v291 = v37;
  __chkstk_darwin(v37);
  v289 = v268 - v38;
  v39 = sub_100009F70(&qword_100222088, &qword_1001BBAF8);
  v295 = *(v39 - 8);
  v296 = v39;
  __chkstk_darwin(v39);
  v294 = v268 - v40;
  v293 = sub_100009F70(&qword_100222090, &qword_1001BBB00);
  v41 = __chkstk_darwin(v293);
  v298 = v268 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v292 = v268 - v44;
  __chkstk_darwin(v43);
  v297 = v268 - v45;
  v327 = sub_100009F70(&qword_100221FE0, &qword_1001BB978);
  v46 = __chkstk_darwin(v327);
  v344 = v268 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v355 = v268 - v48;
  v358 = a7;
  v359 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v49 = swift_getAssociatedTypeWitness();
  v50 = swift_getAssociatedConformanceWitness();
  v51 = v361;
  v406 = v361;
  AssociatedTypeWitness = v49;
  v52 = a6;
  v408 = a6;
  WitnessTable = v50;
  type metadata accessor for PromotionalAssetsEntryView(255, &v406);
  swift_getWitnessTable();
  v53 = type metadata accessor for Button();
  v54 = type metadata accessor for PlainButtonStyle();
  v55 = swift_getWitnessTable();
  v56 = sub_10017CF40(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v406 = v53;
  AssociatedTypeWitness = v54;
  v408 = v55;
  WitnessTable = v56;
  v270 = swift_getOpaqueTypeMetadata2();
  v57 = type metadata accessor for Section();
  v271 = *(v57 - 8);
  __chkstk_darwin(v57);
  v269 = v268 - v58;
  v406 = v53;
  AssociatedTypeWitness = v54;
  v408 = v55;
  WitnessTable = v56;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v417 = &protocol witness table for EmptyView;
  v418 = OpaqueTypeConformance2;
  v268[1] = OpaqueTypeConformance2;
  v419 = &protocol witness table for EmptyView;
  v60 = swift_getWitnessTable();
  v349 = v57;
  v406 = v57;
  v348 = v60;
  AssociatedTypeWitness = v60;
  v61 = swift_getOpaqueTypeMetadata2();
  v275 = *(v61 - 8);
  __chkstk_darwin(v61);
  v273 = v268 - v62;
  v351 = sub_10000B3DC(&qword_10021A310, &qword_1001AF8F0);
  v276 = v61;
  v63 = type metadata accessor for ModifiedContent();
  v278 = *(v63 - 8);
  v64 = __chkstk_darwin(v63);
  v277 = v268 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __chkstk_darwin(v64);
  v272 = v268 - v67;
  __chkstk_darwin(v66);
  v274 = v268 - v68;
  v69 = sub_100009F70(&qword_100222098, &qword_1001BBB08);
  v283 = *(v69 - 8);
  v284 = v69;
  __chkstk_darwin(v69);
  v282 = v268 - v70;
  v71 = sub_100009F70(&qword_1002220A0, &qword_1001BBB10);
  v286 = *(v71 - 8);
  v287 = v71;
  __chkstk_darwin(v71);
  v281 = v268 - v72;
  v73 = sub_100009F70(&qword_100221FD8, &qword_1001BB970);
  v74 = __chkstk_darwin(v73);
  v285 = v268 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v288 = v268 - v76;
  v77 = v362;
  v78 = swift_getAssociatedTypeWitness();
  v336 = v78;
  v79 = type metadata accessor for Optional();
  v279 = *(v79 - 8);
  v280 = v79;
  v80 = __chkstk_darwin(v79);
  v321 = (v268 - v81);
  v319 = *(v78 - 8);
  __chkstk_darwin(v80);
  v320 = v268 - v82;
  v317 = v73;
  v343 = v63;
  v340 = type metadata accessor for _ConditionalContent();
  v342 = type metadata accessor for Optional();
  v341 = *(v342 - 8);
  v83 = __chkstk_darwin(v342);
  v354 = v268 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v83);
  v353 = v268 - v85;
  v357 = v52;
  v86 = v51;
  v87 = swift_getAssociatedTypeWitness();
  v88 = swift_getAssociatedConformanceWitness();
  type metadata accessor for ArtistEventListHeader(255, v87, v88, v89);
  v90 = type metadata accessor for Section();
  v337 = *(v90 - 8);
  __chkstk_darwin(v90);
  v92 = v268 - v91;
  v93 = swift_getWitnessTable();
  v414 = &protocol witness table for EmptyView;
  v415 = v93;
  v416 = &protocol witness table for EmptyView;
  v322 = swift_getWitnessTable();
  v406 = v90;
  AssociatedTypeWitness = v322;
  v94 = swift_getOpaqueTypeMetadata2();
  v95 = *(v94 - 8);
  v323 = v94;
  v324 = v95;
  __chkstk_darwin(v94);
  v318 = v268 - v96;
  v352 = type metadata accessor for ModifiedContent();
  v339 = *(v352 - 1);
  v97 = __chkstk_darwin(v352);
  v351 = v268 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v97);
  v350 = v268 - v99;
  v365 = v86;
  v100 = v359;
  v366 = v359;
  v101 = v356;
  v367 = v356;
  v368 = v77;
  v102 = v357;
  v369 = v357;
  v370 = v358;
  v371 = v360;
  v103 = v363;
  v372 = v363;
  v373 = v364;
  v104 = v358;
  v105 = v360;
  Section<>.init(content:)();
  static VerticalEdge.Set.all.getter();
  v106 = v322;
  View.listSectionSeparator(_:edges:)();
  v337[1](v92, v90);
  v406 = v361;
  AssociatedTypeWitness = v100;
  v408 = v101;
  WitnessTable = v362;
  AssociatedConformanceWitness = v102;
  v411 = v104;
  v412 = v105;
  v413 = v103;
  v107 = type metadata accessor for ArtistEventView(0, &v406);
  sub_100174B3C(v107);
  v406 = v108;
  AssociatedTypeWitness = v109;
  v408 = v110;
  WitnessTable = v111;
  LOBYTE(AssociatedConformanceWitness) = 0;
  v424 = *&v90;
  v425 = *&v106;
  v112 = swift_getOpaqueTypeConformance2();
  v113 = v351;
  v114 = v323;
  v115 = v318;
  View.listRowInsets(_:)();
  (*(v324 + 8))(v115, v114);
  v116 = sub_10000D1EC(&qword_10021A498, &qword_10021A310, &qword_1001AF8F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v404 = v112;
  v117 = v336;
  v338 = v116;
  v405 = v116;
  v118 = v352;
  v322 = swift_getWitnessTable();
  sub_100157EFC();
  v119 = v339 + 8;
  v323 = *(v339 + 8);
  v323(v113, v118);
  v120 = v319;
  sub_10016F338(v107);
  v121 = v321;
  sub_10019FAF8(v321);
  v122 = v121;

  v123 = (*(v120 + 48))(v121, 1, v117);
  v324 = v119;
  v337 = v107;
  if (v123 != 1)
  {
    v137 = v320;
    v138 = (*(v120 + 32))(v320, v122, v117);
    __chkstk_darwin(v138);
    v139 = v359;
    v268[-10] = v361;
    v268[-9] = v139;
    v140 = v362;
    v268[-8] = v356;
    v268[-7] = v140;
    v141 = v358;
    v268[-6] = v357;
    v268[-5] = v141;
    v142 = v363;
    v268[-4] = v360;
    v268[-3] = v142;
    v143 = v364;
    v268[-2] = v137;
    v268[-1] = v143;
    type metadata accessor for PromotionalPlaylistModule(0);
    sub_10017CF40(&qword_1002220B8, type metadata accessor for PromotionalPlaylistModule, &unk_1001B235C);
    v144 = v282;
    Section<>.init(content:)();
    static VerticalEdge.Set.all.getter();
    sub_10017B930();
    v145 = v281;
    v146 = v284;
    View.listSectionSeparator(_:edges:)();
    (*(v283 + 8))(v144, v146);
    v147 = *(v143 + 16);
    if (!v147)
    {
      goto LABEL_41;
    }

    if (*(v147 + 88) && *(v147 + 80) == 1)
    {
    }

    else
    {
      v148 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v148 & 1) == 0)
      {

        goto LABEL_20;
      }
    }

    v149 = [objc_opt_self() currentDevice];
    v150 = v145;
    v151 = [v149 userInterfaceIdiom];

    v152 = v151 == 1;
    v145 = v150;
    if (v152)
    {
      v153 = v120;
      v154 = 13.0;
      v155 = 28.0;
      v156 = 100.0;
LABEL_21:
      v169 = v285;
      (*(v286 + 32))(v285, v145, v287);
      v170 = v317;
      v171 = v169 + *(v317 + 36);
      *v171 = v155;
      *(v171 + 8) = v156;
      *(v171 + 16) = v154;
      *(v171 + 24) = v156;
      *(v171 + 32) = 0;
      v172 = v288;
      sub_10000F618(v169, v288, &qword_100221FD8, &qword_1001BB970);
      v173 = sub_10017B83C();
      v424 = *&v349;
      v425 = *&v348;
      v376 = swift_getOpaqueTypeConformance2();
      v377 = v338;
      v174 = v343;
      v175 = swift_getWitnessTable();
      v176 = v354;
      sub_100061878(v172, v170, v174, v173, v175);
      sub_10000D52C(v172, &qword_100221FD8, &qword_1001BB970);
      (*(*(v340 - 8) + 56))(v176, 0, 1, v340);
      v374 = v173;
      v375 = v175;
      swift_getWitnessTable();
      sub_100150FB8(v176, v353);
      v321 = *(v341 + 8);
      v321(v176, v342);
      (*(v153 + 8))(v320, v336);
      v160 = v357;
      v161 = v363;
      v126 = v356;
      v162 = v359;
      goto LABEL_25;
    }

LABEL_20:
    v153 = v120;
    v156 = 16.0;
    v154 = 13.0;
    v155 = 28.0;
    goto LABEL_21;
  }

  v124 = v359;
  v125 = v363;
  v126 = v356;
  v127 = v362;
  v128 = v357;
  (*(v279 + 8))(v121, v280);
  sub_10016F338(v107);
  v129 = sub_10019FD9C();

  if ((v129 & 1) == 0)
  {
    v157 = v354;
    (*(*(v340 - 8) + 56))(v354, 1, 1, v340);
    v158 = sub_10017B83C();
    v424 = *&v349;
    v425 = *&v348;
    v402 = swift_getOpaqueTypeConformance2();
    v403 = v338;
    v159 = swift_getWitnessTable();
    v400 = v158;
    v401 = v159;
    swift_getWitnessTable();
    sub_100150FB8(v157, v353);
    v321 = *(v341 + 8);
    v321(v157, v342);
    v160 = v128;
    v161 = v125;
    v162 = v124;
    goto LABEL_25;
  }

  __chkstk_darwin(v130);
  v268[-10] = v361;
  v268[-9] = v124;
  v268[-8] = v126;
  v268[-7] = v127;
  v131 = v358;
  v268[-6] = v128;
  v268[-5] = v131;
  v268[-4] = v360;
  v268[-3] = v125;
  v132 = v364;
  v268[-2] = v364;
  v133 = v269;
  Section<>.init(content:)();
  static VerticalEdge.Set.all.getter();
  v134 = v273;
  v135 = v349;
  View.listSectionSeparator(_:edges:)();
  (*(v271 + 8))(v133, v135);
  v136 = *(v132 + 16);
  if (!v136)
  {
    goto LABEL_41;
  }

  if (*(v136 + 88) && *(v136 + 80) == 1)
  {
  }

  else
  {
    v163 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v163 & 1) == 0)
    {

      goto LABEL_23;
    }
  }

  v164 = [objc_opt_self() currentDevice];
  v165 = [v164 userInterfaceIdiom];

  if (v165 != 1)
  {
LABEL_23:
    v168 = 16.0;
    v166 = 13.0;
    v167 = 28.0;
    goto LABEL_24;
  }

  v166 = 13.0;
  v167 = 28.0;
  v168 = 100.0;
LABEL_24:
  v424 = v167;
  v425 = v168;
  v426 = v166;
  v427 = v168;
  v428 = 0;
  v396 = v349;
  v397 = v348;
  v177 = swift_getOpaqueTypeConformance2();
  v178 = v272;
  v179 = v276;
  View.listRowInsets(_:)();
  (*(v275 + 8))(v134, v179);
  v380 = v177;
  v381 = v338;
  v180 = v343;
  v181 = swift_getWitnessTable();
  v182 = v274;
  sub_100157EFC();
  v183 = *(v278 + 8);
  v183(v178, v180);
  v184 = v277;
  sub_100157EFC();
  v185 = sub_10017B83C();
  v186 = v354;
  sub_100061970(v184, v317, v180, v185, v181);
  v183(v184, v180);
  v183(v182, v180);
  (*(*(v340 - 8) + 56))(v186, 0, 1, v340);
  v378 = v185;
  v379 = v181;
  swift_getWitnessTable();
  sub_100150FB8(v186, v353);
  v321 = *(v341 + 8);
  v321(v186, v342);
  v162 = v359;
  v160 = v357;
  v161 = v363;
LABEL_25:
  v187 = v337;
  sub_10016F338(v337);
  v188 = sub_1001A0A1C();

  if (v188)
  {
    __chkstk_darwin(v189);
    v268[-10] = v361;
    v268[-9] = v162;
    v190 = v362;
    v268[-8] = v126;
    v268[-7] = v190;
    v191 = v358;
    v268[-6] = v160;
    v268[-5] = v191;
    v268[-4] = v360;
    v268[-3] = v161;
    v192 = v364;
    v268[-2] = v364;
    sub_100009F70(&qword_10021A4A0, &qword_1001AFB50);
    sub_10017BBA0(&qword_10021A4A8, &qword_10021A4A0, &qword_1001AFB50, sub_1000433DC);
    v193 = v289;
    Section<>.init(content:)();
    static VerticalEdge.Set.all.getter();
    sub_1000434AC();
    v194 = v294;
    v195 = v291;
    View.listSectionSeparator(_:edges:)();
    (*(v290 + 8))(v193, v195);
    v196 = *(v192 + 16);
    if (v196)
    {
      if (*(v196 + 88) && *(v196 + 80) == 1)
      {

        v197 = v361;
      }

      else
      {
        v202 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v197 = v361;
        if ((v202 & 1) == 0)
        {

          goto LABEL_35;
        }
      }

      v203 = [objc_opt_self() currentDevice];
      v204 = [v203 userInterfaceIdiom];

      if (v204 == 1)
      {
        v205 = 2.0;
        v206 = 100.0;
LABEL_36:
        v207 = v292;
        (*(v295 + 32))(v292, v194, v296);
        v208 = v207 + *(v293 + 36);
        *v208 = 0;
        *(v208 + 8) = v206;
        *(v208 + 16) = v205;
        *(v208 + 24) = v206;
        *(v208 + 32) = 0;
        v209 = v297;
        v210 = sub_10000F618(v207, v297, &qword_100222090, &qword_1001BBB00);
        __chkstk_darwin(v210);
        v211 = v359;
        v268[-10] = v197;
        v268[-9] = v211;
        v212 = v362;
        v268[-8] = v356;
        v268[-7] = v212;
        v213 = v358;
        v268[-6] = v160;
        v268[-5] = v213;
        v214 = v363;
        v268[-4] = v360;
        v268[-3] = v214;
        v268[-2] = v364;
        sub_100009F70(&qword_1002220D8, &qword_1001BBB18);
        sub_10000D1EC(&qword_1002220E0, &qword_1002220D8, &qword_1001BBB18, &protocol conformance descriptor for VStack<A>);
        v215 = v299;
        Section<>.init(content:)();
        static VerticalEdge.Set.all.getter();
        sub_10017BC6C();
        v216 = v300;
        v217 = v303;
        View.listSectionSeparator(_:edges:)();
        (*(v301 + 8))(v215, v217);
        v218 = v216 + *(v302 + 36);
        *v218 = 0;
        *(v218 + 8) = 0;
        *(v218 + 16) = xmmword_1001ACAE0;
        *(v218 + 32) = 0;
        sub_10017BD28();
        v219 = v304;
        View.accessibilityIdentifier(_:)();
        sub_10000D52C(v216, &qword_100222078, &qword_1001BBAE8);
        v220 = v209;
        v221 = v209;
        v222 = v298;
        sub_10000D58C(v221, v298, &qword_100222090, &qword_1001BBB00);
        v223 = v305;
        sub_10000D58C(v219, v305, &qword_100222080, &qword_1001BBAF0);
        v224 = v306;
        sub_10000D58C(v222, v306, &qword_100222090, &qword_1001BBB00);
        v225 = sub_100009F70(&qword_1002220F8, &qword_1001BBB20);
        sub_10000D58C(v223, v224 + *(v225 + 48), &qword_100222080, &qword_1001BBAF0);
        sub_10000D52C(v219, &qword_100222080, &qword_1001BBAF0);
        sub_10000D52C(v220, &qword_100222090, &qword_1001BBB00);
        v126 = v356;
        v162 = v359;
        sub_10000D52C(v223, &qword_100222080, &qword_1001BBAF0);
        v200 = v362;
        sub_10000D52C(v222, &qword_100222090, &qword_1001BBB00);
        v199 = v355;
        sub_10000F618(v224, v355, &qword_100222068, &qword_1001BBAD8);
        v198 = 0;
        v201 = v347;
        v187 = v337;
        goto LABEL_37;
      }

LABEL_35:
      v206 = 16.0;
      v205 = 2.0;
      goto LABEL_36;
    }

LABEL_41:
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v198 = 1;
  v199 = v355;
  v200 = v362;
  v201 = v347;
LABEL_37:
  (*(v325 + 56))(v199, v198, 1, v326);
  v226 = v364;
  sub_10016F338(v187);
  v227 = sub_1001A5918();

  v396 = v227;
  swift_getWitnessTable();
  v228 = Collection.isEmpty.getter();

  __chkstk_darwin(v229);
  v268[-10] = v361;
  v268[-9] = v162;
  v268[-8] = v126;
  v268[-7] = v200;
  v230 = v358;
  v268[-6] = v357;
  v268[-5] = v230;
  v231 = v363;
  v268[-4] = v360;
  v268[-3] = v231;
  v268[-2] = v226;
  if (v228)
  {
    sub_100009F70(&qword_10021A4E0, &qword_1001AFB60);
    sub_10017BBA0(&qword_10021A4D8, &qword_10021A4E0, &qword_1001AFB60, sub_10002DB5C);
    v232 = v307;
    Section<>.init(content:)();
    v233 = v332;
    v234 = v232 + *(v332 + 36);
    *v234 = 0x4049000000000000;
    *(v234 + 8) = 0;
    *(v234 + 16) = 0;
    *(v234 + 24) = 0;
    *(v234 + 32) = 0;
    static VerticalEdge.Set.all.getter();
    v235 = sub_10017BA08();
    v236 = v308;
    View.listSectionSeparator(_:edges:)();
    sub_10000D52C(v232, &qword_100222060, &qword_1001BBAD0);
    v396 = v233;
    v397 = v235;
    v237 = swift_getOpaqueTypeConformance2();
    v396 = v201;
    v397 = v346;
    v238 = swift_getOpaqueTypeConformance2();
    v239 = v331;
    v240 = v329;
    sub_100061878(v236, v329, v330, v237, v238);
    (*(v310 + 8))(v236, v240);
  }

  else
  {
    v241 = v313;
    Section<>.init(content:)();
    static VerticalEdge.Set.all.getter();
    v242 = v312;
    v243 = v346;
    View.listSectionSeparator(_:edges:)();
    (*(v316 + 8))(v241, v201);
    v396 = v201;
    v397 = v243;
    v244 = swift_getOpaqueTypeConformance2();
    v245 = v311;
    v246 = v330;
    sub_100157EFC();
    v247 = *(v315 + 8);
    v247(v242, v246);
    sub_100157EFC();
    v248 = sub_10017BA08();
    v233 = v332;
    v396 = v332;
    v397 = v248;
    v249 = swift_getOpaqueTypeConformance2();
    v239 = v331;
    sub_100061970(v242, v329, v246, v249, v244);
    v247(v242, v246);
    v247(v245, v246);
  }

  v250 = v351;
  v251 = v352;
  (*(v339 + 16))(v351, v350);
  v396 = v250;
  v252 = v354;
  v253 = v342;
  (*(v341 + 16))(v354, v353, v342);
  v397 = v252;
  v254 = v344;
  sub_10000D58C(v355, v344, &qword_100221FE0, &qword_1001BB978);
  v398 = v254;
  v255 = v333;
  v256 = v345;
  v257 = v334;
  (*(v333 + 16))(v345, v239, v334);
  v399 = v256;
  v395[0] = v251;
  v395[1] = v253;
  v395[2] = v327;
  v395[3] = v257;
  v391 = v322;
  v258 = sub_10017B83C();
  v389 = v349;
  v390 = v348;
  v387 = swift_getOpaqueTypeConformance2();
  v388 = v338;
  v259 = swift_getWitnessTable();
  v385 = v258;
  v386 = v259;
  v384 = swift_getWitnessTable();
  v392 = swift_getWitnessTable();
  v393 = sub_10017BAC0();
  v260 = sub_10017BA08();
  v389 = v233;
  v390 = v260;
  v261 = swift_getOpaqueTypeConformance2();
  v389 = v347;
  v390 = v346;
  v262 = swift_getOpaqueTypeConformance2();
  v382 = v261;
  v383 = v262;
  v394 = swift_getWitnessTable();
  sub_100151024(&v396, 4uLL, v395);
  v263 = *(v255 + 8);
  v263(v239, v257);
  sub_10000D52C(v355, &qword_100221FE0, &qword_1001BB978);
  v264 = v321;
  v321(v353, v253);
  v265 = v352;
  v266 = v323;
  v323(v350, v352);
  v263(v345, v257);
  sub_10000D52C(v344, &qword_100221FE0, &qword_1001BB978);
  v264(v354, v253);
  return v266(v351, v265);
}

uint64_t sub_100174808@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v41 = a4;
  v42 = a6;
  v39 = a2;
  v40 = a3;
  v45 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  __chkstk_darwin(v13 - 8);
  v44 = &v38 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for ArtistEventListHeaderViewModel(0, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  __chkstk_darwin(v17 - 8);
  v38 = &v38 - v18;
  v20 = type metadata accessor for ArtistEventListHeader(0, AssociatedTypeWitness, AssociatedConformanceWitness, v19);
  v43 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v38 - v24;
  v46[0] = a1;
  v46[1] = v39;
  v46[2] = v40;
  v46[3] = v41;
  v46[4] = a5;
  v46[5] = v42;
  v46[6] = a7;
  v46[7] = a9;
  v26 = type metadata accessor for ArtistEventView(0, v46);
  sub_10016F338(v26);
  v27 = sub_10019FA10();
  v41 = v28;
  v42 = v27;

  v29 = sub_10016F338(v26);
  v30 = (v29 + *(*v29 + 256));
  v32 = *v30;
  v31 = v30[1];

  sub_10016F338(v26);
  v33 = v44;
  sub_10019FA84();

  v34 = v38;
  sub_10016ED9C(v42, v41, v32, v31, v33, v38, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_100090B9C(v34, AssociatedTypeWitness, AssociatedConformanceWitness, v23, v35);
  swift_getWitnessTable();
  sub_100157EFC();
  v36 = *(v43 + 8);
  v36(v23, v20);
  sub_100157EFC();
  return (v36)(v25, v20);
}

void sub_100174B3C(_OWORD *a1)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
    return;
  }

  if (*(v2 + 88) && *(v2 + 80) == 1)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {

      goto LABEL_11;
    }
  }

  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    sub_10016F338(a1);
    v7 = sub_10019FD9C();

    if ((v7 & 1) == 0)
    {
      sub_10016F338(a1);
      sub_1001A31F4();
    }

    return;
  }

LABEL_11:
  sub_10016F338(a1);
  v8 = sub_10019FD9C();

  if ((v8 & 1) == 0)
  {
    sub_10016F338(a1);
    sub_1001A31F4();
  }
}

uint64_t sub_100174D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10)
{
  *&v36 = a7;
  *(&v36 + 1) = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = sub_100043D3C(&v37);
  (*(*(AssociatedTypeWitness - 8) + 16))(v18, a1, AssociatedTypeWitness);
  v19 = *(a2 + 16);
  if (v19)
  {
    v21 = *(v19 + 64);
    v20 = *(v19 + 72);

    *&v40 = a3;
    *(&v40 + 1) = a4;
    *&v41 = a5;
    *(&v41 + 1) = a6;
    v42 = v36;
    v43 = a10;
    v22 = type metadata accessor for ArtistEventView(0, &v40);
    sub_10016F338(v22);
    v23 = sub_10019FC4C();

    if (qword_100218450 != -1)
    {
      swift_once();
    }

    *&v40 = qword_100230608;

    *(&v40 + 1) = LocalizedStringKey.init(stringLiteral:)();
    *&v41 = v24;
    BYTE8(v41) = v25 & 1;
    *&v42 = v26;
    sub_100071318(&v37, &v42 + 8);
    *v45 = v21;
    *&v45[8] = v20;
    *&v45[16] = v23;
    *&v45[24] = 1793;
    v27 = *v45;
    *(a9 + 64) = v44;
    *(a9 + 80) = v27;
    *(a9 + 90) = *&v45[10];
    v28 = v41;
    *a9 = v40;
    *(a9 + 16) = v28;
    v29 = v43;
    *(a9 + 32) = v42;
    *(a9 + 48) = v29;
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    *(a9 + 112) = EnvironmentObject.init()();
    *(a9 + 120) = v30;
    v31 = type metadata accessor for PromotionalPlaylistModule(0);
    v32 = v31[6];
    *(a9 + v32) = swift_getKeyPath();
    sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
    swift_storeEnumTagMultiPayload();
    v33 = v31[7];
    *(a9 + v33) = swift_getKeyPath();
    sub_100009F70(&qword_100219718, &qword_1001B1810);
    swift_storeEnumTagMultiPayload();
    v34 = v31[8];
    *(a9 + v34) = swift_getKeyPath();
    sub_100009F70(&qword_100219720, &qword_1001B23D0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001750C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v73 = a8;
  v72 = a5;
  v71 = a4;
  v78 = a1;
  v76 = a9;
  v70 = a10;
  v17 = type metadata accessor for PlainButtonStyle();
  v59 = v17;
  v75 = *(v17 - 8);
  __chkstk_darwin(v17);
  v74 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = a2;
  v89 = a3;
  v90 = a4;
  v91 = a5;
  v92 = a6;
  v93 = a7;
  v94 = a8;
  v95 = a10;
  v77 = type metadata accessor for ArtistEventView(0, &v88);
  v19 = *(v77 - 8);
  v69 = *(v19 + 64);
  __chkstk_darwin(v77);
  v21 = &v53 - v20;
  v54 = &v53 - v20;
  v67 = a7;
  swift_getAssociatedTypeWitness();
  v53 = a3;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v88 = a2;
  v89 = AssociatedTypeWitness;
  v90 = a6;
  v91 = AssociatedConformanceWitness;
  v24 = a6;
  v66 = type metadata accessor for PromotionalAssetsEntryView(255, &v88);
  WitnessTable = swift_getWitnessTable();
  v25 = type metadata accessor for Button();
  v68 = *(v25 - 8);
  __chkstk_darwin(v25);
  v61 = &v53 - v26;
  v28 = v27;
  v60 = v27;
  v29 = swift_getWitnessTable();
  v58 = v29;
  v57 = sub_10017CF40(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v88 = v28;
  v89 = v17;
  v90 = v29;
  v91 = v57;
  v62 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v64 = *(OpaqueTypeMetadata2 - 8);
  v30 = __chkstk_darwin(OpaqueTypeMetadata2);
  v55 = &v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v56 = &v53 - v32;
  v33 = v19;
  (*(v19 + 16))(v21, v78, v77);
  v34 = (*(v19 + 80) + 80) & ~*(v19 + 80);
  v35 = swift_allocObject();
  v36 = a2;
  *(v35 + 2) = a2;
  *(v35 + 3) = a3;
  v37 = v71;
  v38 = v72;
  *(v35 + 4) = v71;
  *(v35 + 5) = v38;
  v39 = v67;
  *(v35 + 6) = v24;
  *(v35 + 7) = v39;
  v40 = v73;
  v41 = v70;
  *(v35 + 8) = v73;
  *(v35 + 9) = v41;
  (*(v33 + 32))(&v35[v34], v54, v77);
  v79 = v36;
  v80 = v53;
  v81 = v37;
  v82 = v38;
  v83 = v24;
  v84 = v39;
  v85 = v40;
  v86 = v41;
  v87 = v78;
  v42 = v61;
  Button.init(action:label:)();
  v43 = v74;
  PlainButtonStyle.init()();
  v44 = v55;
  v45 = v60;
  v46 = v59;
  v47 = v58;
  v48 = v57;
  View.buttonStyle<A>(_:)();
  (*(v75 + 8))(v43, v46);
  (*(v68 + 8))(v42, v45);
  v88 = v45;
  v89 = v46;
  v90 = v47;
  v91 = v48;
  swift_getOpaqueTypeConformance2();
  v49 = v56;
  v50 = OpaqueTypeMetadata2;
  sub_100157EFC();
  v51 = *(v64 + 8);
  v51(v44, v50);
  sub_100157EFC();
  return (v51)(v49, v50);
}

void sub_10017576C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a7;
  v12[6] = a8;
  v12[7] = a9;
  v10 = type metadata accessor for ArtistEventView(0, v12);
  sub_10016F338(v10);
  sub_1001A0014();

  sub_10016F338(v10);
  if (*(a1 + 16))
  {

    sub_1001A00EC(v11);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100175868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v49 = a1;
  v50 = a8;
  v47 = a4;
  v48 = a5;
  v51 = a9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  v16 = __chkstk_darwin(v15 - 8);
  v46 = &v41 - v17;
  v45 = *(a2 - 8);
  __chkstk_darwin(v16);
  v44 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v52 = a2;
  v53 = AssociatedTypeWitness;
  v54 = a6;
  v55 = AssociatedConformanceWitness;
  v20 = AssociatedConformanceWitness;
  v43 = AssociatedConformanceWitness;
  v21 = type metadata accessor for PromotionalAssetsEntryViewModel(0, &v52);
  __chkstk_darwin(v21 - 8);
  v41 = a6;
  v42 = &v41 - v22;
  v52 = a2;
  v53 = AssociatedTypeWitness;
  v54 = a6;
  v55 = v20;
  v23 = a6;
  v24 = type metadata accessor for PromotionalAssetsEntryView(0, &v52);
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v41 - v29;
  v52 = a2;
  v53 = a3;
  v54 = v47;
  v55 = v48;
  v56 = v23;
  v57 = a7;
  v58 = v50;
  v59 = a10;
  v31 = type metadata accessor for ArtistEventView(0, &v52);
  v32 = sub_10016F338(v31);
  v33 = v44;
  (*(v45 + 16))(v44, v32 + *(*v32 + 200), a2);

  sub_10016F338(v31);
  v34 = v46;
  sub_1001A06AC(v46);

  v35 = v41;
  v36 = v42;
  v37 = v34;
  v38 = v43;
  sub_1000863B0(v33, v37, 1, a2, AssociatedTypeWitness, v41, v43, v42);
  sub_100144FAC(v36, a2, AssociatedTypeWitness, v35, v38, v28, 0.0, 0.0);
  swift_getWitnessTable();
  sub_100157EFC();
  v39 = *(v25 + 8);
  v39(v28, v24);
  sub_100157EFC();
  return (v39)(v30, v24);
}

uint64_t sub_100175C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v32 = a9;
  v9 = type metadata accessor for ArtistEventView(0, &v25);
  sub_10016F338(v9);

  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_10000D60C(v10, v12, v14 & 1);

  v22 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v25 = v15;
  v26 = v17;
  LOBYTE(v27) = v19 & 1;
  v28 = v21;
  v29 = KeyPath;
  v30 = v22;
  sub_100009F70(&qword_10021A4B8, &qword_1001AFB58);
  sub_1000433DC();
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v15, v17, v19 & 1);
}

uint64_t sub_100175E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, double (*a5)(uint64_t a1, unint64_t a2)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)()@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = static HorizontalAlignment.leading.getter();
  *(a9 + 8) = 0x4030000000000000;
  *(a9 + 16) = 0;
  v19 = sub_100009F70(&qword_100222100, &qword_1001BBBB8);
  return sub_100175F1C(a1, a2, a3, a4, a5, a6, a7, a8, a9 + *(v19 + 44), a10);
}

uint64_t sub_100175F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, double (*a5)(uint64_t a1, unint64_t a2)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)()@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v75 = a9;
  v79 = type metadata accessor for Divider();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_100009F70(&qword_100219C30, &qword_1001AECE0);
  v19 = __chkstk_darwin(v76);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v67 = &v67 - v23;
  __chkstk_darwin(v22);
  v80 = &v67 - v24;
  v68 = a2;
  v90 = a2;
  v91 = a3;
  v69 = a3;
  v71 = a4;
  v92 = a4;
  v93 = a5;
  v72 = a5;
  v73 = a6;
  v94 = a6;
  v95 = a7;
  KeyPath = a7;
  v25 = a8;
  v96 = a8;
  v97 = a10;
  v70 = a10;
  v26 = type metadata accessor for ArtistEventView(0, &v90);
  v27 = *(v26 - 1);
  v28 = __chkstk_darwin(v26);
  v30 = &v67 - v29;
  sub_10016F338(v28);
  v31 = *(a1 + 16);
  if (v31)
  {
    v32 = *(v31 + 88);
    v81 = v21;
    if (v32 && (*(v31 + 80) & 1) != 0)
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v33 = 1;
    }

    v84 = sub_1001A0AB4(v33 & 1);

    sub_10016F338(v26);
    v83 = sub_1001A5D5C();
    v82 = v34;
    sub_1000E4108(v83, v34);

    (*(v27 + 16))(v30, a1, v26);
    v35 = (*(v27 + 80) + 80) & ~*(v27 + 80);
    v36 = swift_allocObject();
    v37 = v69;
    *(v36 + 2) = v68;
    *(v36 + 3) = v37;
    v38 = v72;
    *(v36 + 4) = v71;
    *(v36 + 5) = v38;
    v39 = KeyPath;
    *(v36 + 6) = v73;
    *(v36 + 7) = v39;
    v40 = v70;
    *(v36 + 8) = v25;
    *(v36 + 9) = v40;
    (*(v27 + 32))(&v36[v35], v30, v26);
    KeyPath = swift_getKeyPath();
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    v73 = EnvironmentObject.init()();
    v72 = v41;
    v99 = 0;
    v42 = v77;
    Divider.init()();
    v43 = static Edge.Set.leading.getter();
    if (*(v31 + 88) && *(v31 + 80) == 1)
    {
    }

    else
    {
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v44 & 1) == 0)
      {

        goto LABEL_12;
      }
    }

    v45 = [objc_opt_self() currentDevice];
    [v45 userInterfaceIdiom];

LABEL_12:
    EdgeInsets.init(_all:)();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = v67;
    (*(v78 + 32))(v67, v42, v79);
    v55 = v54 + *(v76 + 36);
    *v55 = v43;
    *(v55 + 8) = v47;
    *(v55 + 16) = v49;
    *(v55 + 24) = v51;
    *(v55 + 32) = v53;
    *(v55 + 40) = 0;
    v56 = v80;
    sub_10017C098(v54, v80);
    v57 = v99;
    v58 = v81;
    sub_10000D58C(v56, v81, &qword_100219C30, &qword_1001AECE0);
    *&v85 = v84;
    *(&v85 + 1) = v83;
    *&v86 = v82;
    *(&v86 + 1) = sub_10017BFC4;
    v59 = v73;
    *&v87 = v36;
    *(&v87 + 1) = v73;
    v60 = v72;
    v61 = KeyPath;
    *&v88 = v72;
    *(&v88 + 1) = KeyPath;
    v89 = v57;
    v62 = v75;
    *(v75 + 64) = v57;
    v63 = v88;
    v62[2] = v87;
    v62[3] = v63;
    v64 = v86;
    *v62 = v85;
    v62[1] = v64;
    v65 = sub_100009F70(&qword_100222108, &qword_1001BBBC0);
    sub_10000D58C(v58, v62 + *(v65 + 48), &qword_100219C30, &qword_1001AECE0);
    sub_1000E256C(&v85, &v90);
    sub_10000D52C(v56, &qword_100219C30, &qword_1001AECE0);
    sub_10000D52C(v58, &qword_100219C30, &qword_1001AECE0);
    v90 = v84;
    v91 = v83;
    v92 = v82;
    v93 = sub_10017BFC4;
    v94 = v36;
    v95 = v59;
    v96 = v60;
    v97 = v61;
    v98 = v57;
    return sub_10017C108(&v90);
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}
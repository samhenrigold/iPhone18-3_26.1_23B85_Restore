void sub_1D60ECF10(uint64_t a1)
{
  v4 = type metadata accessor for FormatOption(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v32 - v15;
  if (*(v1 + 16) == 1)
  {
    v35 = v2;
    v36 = v5;
    v17 = *v1;
    v18 = *(v1 + 8);
    v19 = sub_1D5E26E28(&unk_1F50F6580);
    v33 = v17;
    v34 = v18;
    v20 = v17;
    v21 = v36;
    FormatOptionCollection.subscript.getter(v20, v18, v12);
    if ((*(v21 + 48))(v12, 1, v4) == 1)
    {

      sub_1D5D28248(v12, sub_1D5E04C00);
      if (*(a1 + 48))
      {
        v22 = 1;
LABEL_7:
        (*(v21 + 56))(v16, v22, 1, v4);
        sub_1D5D28248(v16, sub_1D5E04C00);
        return;
      }

      type metadata accessor for FormatLayoutError(0);
      sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v24 = v34;
      *v25 = v33;
      v25[1] = v24;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      sub_1D5D247E0(v12, v8);
      v37 = v8[2];

      FormatOptionValue.type.getter(v23, &v38);
      if (sub_1D6183C84(v38, v19))
      {
        swift_bridgeObjectRelease_n();
        sub_1D5D247E0(v8, v16);
        v22 = 0;
        v21 = v36;
        goto LABEL_7;
      }

      type metadata accessor for FormatDerivedDataError(0);
      sub_1D5B572B8(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
      swift_allocError();
      v27 = v26;
      v29 = *v8;
      v28 = v8[1];
      v37 = v8[2];

      FormatOptionValue.type.getter(v30, &v38);
      v31 = v38;
      *v27 = v29;
      *(v27 + 8) = v28;
      *(v27 + 16) = v31;
      *(v27 + 24) = v19;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1D5D28248(v8, type metadata accessor for FormatOption);
    }
  }
}

unint64_t sub_1D60ED2C0(uint64_t a1)
{
  result = sub_1D5FBA208();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D60ED2E8(void *a1)
{
  a1[1] = sub_1D5CDCE98();
  a1[2] = sub_1D60ED320();
  result = sub_1D60ED374();
  a1[3] = result;
  return result;
}

unint64_t sub_1D60ED320()
{
  result = qword_1EDF11E88;
  if (!qword_1EDF11E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11E88);
  }

  return result;
}

unint64_t sub_1D60ED374()
{
  result = qword_1EC8839E0;
  if (!qword_1EC8839E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8839E0);
  }

  return result;
}

uint64_t FeedPuzzleRankProgress.rawState.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  v5 = *MEMORY[0x1E69D7870];
  v6 = sub_1D725D38C();
  (*(*(v6 - 8) + 104))(a1, v5, v6);
}

uint64_t FeedPuzzleRankProgress.rankText.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static FeedPuzzleRankProgress.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t sub_1D60ED4C8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  v5 = *MEMORY[0x1E69D7870];
  v6 = sub_1D725D38C();
  (*(*(v6 - 8) + 104))(a1, v5, v6);
}

uint64_t sub_1D60ED574()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D7264A2C();
  return sub_1D7264A5C();
}

uint64_t sub_1D60ED610(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D7264A2C();
  return sub_1D7264A5C();
}

unint64_t sub_1D60ED674()
{
  result = qword_1EDF2DB98[0];
  if (!qword_1EDF2DB98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF2DB98);
  }

  return result;
}

uint64_t sub_1D60ED6C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 40);
  v5 = v1;
  do
  {
    v7 = *(v4 - 1);
    v6 = *v4;
    v11 = result;

    MEMORY[0x1DA6F9910](v7, v6);

    result = v11;
    v4 += 3;
    --v5;
  }

  while (v5);
  v8 = 0;
  v9 = (a1 + 48);
  do
  {
    v10 = *v9;
    v9 += 24;
    v8 |= v10;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t FormatViewNodeLayoutAttributes.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatViewNodeLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatViewNodeLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

double FormatViewNodeLayoutAttributes.resizing.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 104);

  return result;
}

double FormatViewNodeLayoutAttributes.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

void FormatViewNodeLayoutAttributes.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = *(v1 + 136);
  *(a1 + 8) = v2;
}

uint64_t FormatViewNodeLayoutAttributes.__allocating_init(identifier:layoutIdentifier:nodeIdentifier:frame:style:resizing:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t *a14, char a15, uint64_t *a16)
{
  result = swift_allocObject();
  v26 = *a8;
  v27 = *a14;
  v28 = *a16;
  v29 = *(a16 + 8);
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a9;
  *(result + 72) = a10;
  *(result + 80) = a11;
  *(result + 88) = a12;
  *(result + 96) = a7;
  *(result + 104) = v26;
  *(result + 112) = a13;
  *(result + 120) = v27;
  *(result + 128) = a15;
  *(result + 136) = v28;
  *(result + 144) = v29;
  if (a7)
  {
    v30 = result;
    sub_1D60EDBBC(0, &qword_1EDF195B8, sub_1D60D65D0, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v32 = inited;
    *(inited + 16) = xmmword_1D7273AE0;
    v33 = *(a7 + 64);
    if ((~v33 & 0xF000000000000007) != 0)
    {
      v36 = &protocol witness table for FormatBackground;
      v35 = &type metadata for FormatBackground;
      v34 = *(a7 + 64);
    }

    else
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      *(inited + 40) = 0;
      *(inited + 48) = 0;
    }

    *(inited + 32) = v34;
    *(inited + 56) = v35;
    *(inited + 64) = v36;

    sub_1D5D04BD4(v33);
    v37 = sub_1D6E27AC0();
    swift_setDeallocating();
    sub_1D60EEB74(v32 + 32);

    result = v30;
  }

  else
  {
    v37 = MEMORY[0x1E69E7CD0];
  }

  *(result + 152) = v37;
  return result;
}

uint64_t FormatViewNodeLayoutAttributes.init(identifier:layoutIdentifier:nodeIdentifier:frame:style:resizing:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t *a14, char a15, uint64_t *a16)
{
  v17 = *a8;
  v18 = *a14;
  v19 = *a16;
  v20 = *(a16 + 8);
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  *(v16 + 56) = a6;
  *(v16 + 64) = a9;
  *(v16 + 72) = a10;
  *(v16 + 80) = a11;
  *(v16 + 88) = a12;
  *(v16 + 96) = a7;
  *(v16 + 104) = v17;
  *(v16 + 112) = a13;
  *(v16 + 120) = v18;
  *(v16 + 128) = a15;
  *(v16 + 136) = v19;
  *(v16 + 144) = v20;
  if (a7)
  {
    sub_1D60EDBBC(0, &qword_1EDF195B8, sub_1D60D65D0, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v23 = inited;
    *(inited + 16) = xmmword_1D7273AE0;
    v24 = *(a7 + 64);
    if ((~v24 & 0xF000000000000007) != 0)
    {
      v27 = &protocol witness table for FormatBackground;
      v26 = &type metadata for FormatBackground;
      v25 = *(a7 + 64);
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      *(inited + 40) = 0;
      *(inited + 48) = 0;
    }

    *(inited + 32) = v25;
    *(inited + 56) = v26;
    *(inited + 64) = v27;

    sub_1D5D04BD4(v24);
    v28 = sub_1D6E27AC0();
    swift_setDeallocating();
    sub_1D60EEB74(v23 + 32);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CD0];
  }

  *(v16 + 152) = v28;
  return v16;
}

void sub_1D60EDBBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D60EDC20(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x696669746E656469;
    v6 = 0x6E65644965646F6ELL;
    v7 = 0x656D617266;
    if (a1 != 3)
    {
      v7 = 0x656C797473;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    if (a1 == 9)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000018;
    }

    v2 = 0x676E697A69736572;
    v3 = 0x7865646E497ALL;
    if (a1 != 6)
    {
      v3 = 0x696C696269736976;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D60EDD94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D60EEFF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D60EDDBC(uint64_t a1)
{
  v2 = sub_1D60EEBD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60EDDF8(uint64_t a1)
{
  v2 = sub_1D60EEBD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *FormatViewNodeLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 120));

  return v0;
}

uint64_t FormatViewNodeLayoutAttributes.__deallocating_deinit()
{
  FormatViewNodeLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t FormatViewNodeLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D60EEC24(0, &qword_1EC8839E8, sub_1D60EEBD0, &type metadata for FormatViewNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60EEBD0();
  sub_1D7264B5C();
  LOBYTE(v14[0]) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    LOBYTE(v14[0]) = 1;
    sub_1D72643FC();
    LOBYTE(v14[0]) = 2;
    sub_1D72643FC();
    swift_beginAccess();
    v12 = *(v3 + 80);
    v14[0] = *(v3 + 64);
    v14[1] = v12;
    v15 = 3;
    type metadata accessor for CGRect(0);
    sub_1D60EF374(&qword_1EC8801E8, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
    sub_1D726443C();
    *&v14[0] = *(v3 + 96);
    v15 = 4;
    type metadata accessor for FormatViewNodeStyle();
    sub_1D60EF374(&qword_1EDF2BA98, 255, type metadata accessor for FormatViewNodeStyle, &protocol conformance descriptor for FormatViewNodeStyle);
    sub_1D72643BC();
    *&v14[0] = *(v3 + 104);
    v15 = 5;
    sub_1D5F8F3E0();

    sub_1D72643BC();

    LOBYTE(v14[0]) = 6;
    sub_1D726442C();
    *&v14[0] = *(v3 + 120);
    v15 = 7;
    sub_1D5EB1500(*&v14[0]);
    sub_1D5DF6A60();
    sub_1D726443C();
    sub_1D5EB15C4(*&v14[0]);
    LOBYTE(v14[0]) = 8;
    sub_1D726440C();
    v13 = *(v3 + 144);
    *&v14[0] = *(v3 + 136);
    BYTE8(v14[0]) = v13;
    v15 = 9;
    sub_1D5F8F434();
    sub_1D72643BC();
    *&v14[0] = *(v3 + 152);
    v15 = 10;
    sub_1D60EEC24(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    sub_1D60EEC8C(&qword_1EC881AF0, sub_1D5F8F488, MEMORY[0x1E69E64F0]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t FormatViewNodeLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatViewNodeLayoutAttributes.init(from:)(a1);
  return v2;
}

void *FormatViewNodeLayoutAttributes.init(from:)(void *a1)
{
  sub_1D60EEC24(0, &qword_1EC8839F8, sub_1D60EEBD0, &type metadata for FormatViewNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v16 = *(v4 - 8);
  v17 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v15 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60EEBD0();
  v18 = v7;
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v16;
    LOBYTE(v19) = 0;
    *(v1 + 16) = sub_1D72642BC();
    *(v1 + 24) = v9;
    LOBYTE(v19) = 1;
    *(v1 + 32) = sub_1D72642BC();
    *(v1 + 40) = v11;
    LOBYTE(v19) = 2;
    *(v1 + 48) = sub_1D72642BC();
    *(v1 + 56) = v12;
    type metadata accessor for CGRect(0);
    v21 = 3;
    sub_1D60EF374(&qword_1EDF1A740, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    sub_1D726431C();
    v13 = v20;
    *(v1 + 64) = v19;
    *(v1 + 80) = v13;
    type metadata accessor for FormatViewNodeStyle();
    v21 = 4;
    sub_1D60EF374(&qword_1EDF2BA90, 255, type metadata accessor for FormatViewNodeStyle, &protocol conformance descriptor for FormatViewNodeStyle);
    sub_1D726427C();
    *(v1 + 96) = v19;
    v21 = 5;
    sub_1D5F8FC50();
    sub_1D726427C();
    *(v1 + 104) = v19;
    LOBYTE(v19) = 6;
    *(v1 + 112) = sub_1D72642FC();
    v21 = 7;
    sub_1D5DF6A0C();
    sub_1D726431C();
    *(v1 + 120) = v19;
    LOBYTE(v19) = 8;
    *(v1 + 128) = sub_1D72642CC() & 1;
    v21 = 9;
    sub_1D5C6F27C();
    sub_1D726427C();
    v14 = BYTE8(v19);
    *(v1 + 136) = v19;
    *(v1 + 144) = v14;
    sub_1D60EEC24(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    v21 = 10;
    sub_1D60EEC8C(&qword_1EC881B10, sub_1D5F8FD48, MEMORY[0x1E69E6510]);
    sub_1D726431C();
    (*(v8 + 8))(v18, v17);
    *(v1 + 152) = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

void *sub_1D60EEA4C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatViewNodeLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D60EEAC8(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  sub_1D60EF374(&qword_1EC883A38, a2, type metadata accessor for FormatViewNodeLayoutAttributes, &protocol conformance descriptor for FormatViewNodeLayoutAttributes);

  return sub_1D725A24C();
}

uint64_t sub_1D60EEB74(uint64_t a1)
{
  sub_1D60D65D0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D60EEBD0()
{
  result = qword_1EC8839F0;
  if (!qword_1EC8839F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8839F0);
  }

  return result;
}

void sub_1D60EEC24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D60EEC8C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D60EEC24(255, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D60EEEF4()
{
  result = qword_1EC883A20;
  if (!qword_1EC883A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883A20);
  }

  return result;
}

unint64_t sub_1D60EEF4C()
{
  result = qword_1EC883A28;
  if (!qword_1EC883A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883A28);
  }

  return result;
}

unint64_t sub_1D60EEFA4()
{
  result = qword_1EC883A30;
  if (!qword_1EC883A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883A30);
  }

  return result;
}

uint64_t sub_1D60EEFF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C05F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644965646F6ELL && a2 == 0xEE00726569666974 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D617266 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E697A69736572 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7865646E497ALL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73C48A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C0340 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C48E0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1D60EF374(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

char *SportsDataVisualizationRequest.tagIds.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  if (!*(v4 + 32))
  {
    return SportsDataVisualizationRecentRequest.tagIds.getter();
  }

  if (*(v4 + 32) == 1)
  {
    sub_1D5C3C480();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7273AE0;
    v9 = *(v5 + 16);
    v10 = *(v5 + 24);
    if (*(v5 + 32))
    {

      v11 = v10;
    }

    else
    {
      v15 = [swift_unknownObjectRetain() identifier];
      v16 = sub_1D726207C();
      v11 = v17;

      sub_1D5F82F20(v9, v10, 0);
      v9 = v16;
    }

    result = v8;
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
  }

  else
  {
    sub_1D5C3C480();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D7273AE0;
    if (v7)
    {

      v14 = v6;
    }

    else
    {
      v18 = [swift_unknownObjectRetain() identifier];
      v19 = sub_1D726207C();
      v14 = v20;

      sub_1D5F82F20(v5, v6, 0);
      v5 = v19;
    }

    result = v13;
    *(v13 + 32) = v5;
    *(v13 + 40) = v14;
  }

  return result;
}

uint64_t SportsDataVisualizationRequest.fetchType.getter()
{
  v1 = 5000257;
  if (*(v0 + 32) != 1)
  {
    v1 = 0x544E455645;
  }

  if (*(v0 + 32))
  {
    return v1;
  }

  else
  {
    return 0x544E45434552;
  }
}

uint64_t SportsDataVisualizationRequest.traits.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  if (*(v1 + 32) && *(v1 + 32) == 1)
  {
    v2 = *(*v1 + 48);
  }

  *a1 = v2;
}

uint64_t SportsDataVisualizationRequest.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (*(v1 + 32))
  {
    if (*(v1 + 32) == 1)
    {
      MEMORY[0x1DA6FC0B0](1);
      return SportsDataVisualizationAllRequest.hash(into:)(a1);
    }

    else
    {
      MEMORY[0x1DA6FC0B0](2);
      if (v6)
      {
      }

      else
      {
        v8 = [swift_unknownObjectRetain() identifier];
        sub_1D726207C();

        sub_1D5F82F20(v3, v4, 0);
      }

      sub_1D72621EC();

      return sub_1D5E2D298(a1, v5);
    }
  }

  else
  {
    MEMORY[0x1DA6FC0B0](0);
    return SportsDataVisualizationRecentRequest.hash(into:)(a1);
  }
}

uint64_t SportsDataVisualizationRequest.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1D7264A0C();
  SportsDataVisualizationRequest.hash(into:)(v4);
  return sub_1D7264A5C();
}

uint64_t sub_1D60EF774()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1D7264A0C();
  SportsDataVisualizationRequest.hash(into:)(v4);
  return sub_1D7264A5C();
}

uint64_t sub_1D60EF7CC(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_1D7264A0C();
  SportsDataVisualizationRequest.hash(into:)(v5);
  return sub_1D7264A5C();
}

uint64_t _s8NewsFeed30SportsDataVisualizationRequestO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      v16 = *(a2 + 24);
      v17 = v3;
      LOWORD(v18) = v2 & 0x101;
      v19 = v5;
      v20 = v4;
      v13 = v8;
      LOWORD(v14) = v7 & 0x101;
      v15 = v10;
      sub_1D60EFC38(v8, v7, v10, v9, 0);
      sub_1D60EFC38(v3, v2, v5, v4, 0);
      sub_1D60EFC38(v3, v2, v5, v4, 0);
      sub_1D60EFC38(v8, v7, v10, v9, 0);
      v11 = _s8NewsFeed36SportsDataVisualizationRecentRequestV2eeoiySbAC_ACtFZ_0(&v17, &v13);
      sub_1D5F82E88(v3, v2, v5, v4, 0);
      sub_1D5F82E88(v8, v7, v10, v9, 0);
      sub_1D5F82E88(v8, v7, v10, v9, 0);
      sub_1D5F82E88(v3, v2, v5, v4, 0);
      return v11 & 1;
    }

LABEL_9:
    sub_1D60EFC38(*a1, v2, v5, v4, v6);
    sub_1D60EFC38(v8, v7, v10, v9, v11);
    sub_1D5F82E88(v3, v2, v5, v4, v6);
    sub_1D5F82E88(v8, v7, v10, v9, v11);
    LOBYTE(v11) = 0;
    return v11 & 1;
  }

  if (v6 != 1)
  {
    if (v11 == 2)
    {
      v17 = *a1;
      v18 = v2;
      LOBYTE(v19) = v5 & 1;
      v20 = v4;
      v13 = v8;
      v14 = v7;
      LOBYTE(v15) = v10 & 1;
      v16 = v9;
      sub_1D60EFC38(v8, v7, v10, v9, 2);
      sub_1D60EFC38(v3, v2, v5, v4, 2);
      sub_1D60EFC38(v3, v2, v5, v4, 2);
      sub_1D60EFC38(v8, v7, v10, v9, 2);
      LOBYTE(v11) = _s8NewsFeed35SportsDataVisualizationEventRequestV2eeoiySbAC_ACtFZ_0(&v17, &v13);
      sub_1D5F82E88(v3, v2, v5, v4, 2);
      sub_1D5F82E88(v8, v7, v10, v9, 2);
      sub_1D5F82E88(v8, v7, v10, v9, 2);
      sub_1D5F82E88(v3, v2, v5, v4, 2);
      return v11 & 1;
    }

    goto LABEL_9;
  }

  if (v11 != 1)
  {
    goto LABEL_9;
  }

  sub_1D60EFC38(*a1, v2, v5, v4, 1);
  sub_1D60EFC38(v8, v7, v10, v9, 1);
  LOBYTE(v11) = _s8NewsFeed33SportsDataVisualizationAllRequestC2eeoiySbAC_ACtFZ_0(v3, v8);
  sub_1D5F82E88(v3, v2, v5, v4, 1);
  sub_1D5F82E88(v8, v7, v10, v9, 1);
  return v11 & 1;
}

uint64_t sub_1D60EFB90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D60EFBD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void sub_1D60EFC38(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
    sub_1D60EFCC8(a1, a2, a3 & 1);
LABEL_9:

    return;
  }

  if (a5 != 1)
  {
    if (a5)
    {
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1D60EFCC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1D60EFCE0()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D60EFD64(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

void sub_1D60EFDC0(BOOL *a2@<X8>)
{
  v3 = sub_1D72641CC();

  *a2 = v3 != 0;
}

uint64_t FormatCustomItemBinding.URL.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D60EFF6C()
{
  result = qword_1EC883A40;
  if (!qword_1EC883A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883A40);
  }

  return result;
}

unint64_t sub_1D60EFFC0(uint64_t a1)
{
  result = sub_1D60EFFE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D60EFFE8()
{
  result = qword_1EC883A48;
  if (!qword_1EC883A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883A48);
  }

  return result;
}

unint64_t sub_1D60F003C(void *a1)
{
  a1[1] = sub_1D60F0074();
  a1[2] = sub_1D60F00C8();
  result = sub_1D60EFF6C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D60F0074()
{
  result = qword_1EDF27710;
  if (!qword_1EDF27710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27710);
  }

  return result;
}

unint64_t sub_1D60F00C8()
{
  result = qword_1EDF0D528;
  if (!qword_1EDF0D528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D528);
  }

  return result;
}

unint64_t sub_1D60F0170()
{
  result = qword_1EC883A50;
  if (!qword_1EC883A50)
  {
    sub_1D60F01C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883A50);
  }

  return result;
}

void sub_1D60F01C8()
{
  if (!qword_1EC883A58)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC883A58);
    }
  }
}

unint64_t sub_1D60F021C()
{
  result = qword_1EC883A60;
  if (!qword_1EC883A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883A60);
  }

  return result;
}

unint64_t sub_1D60F0270()
{
  result = qword_1EDF27720;
  if (!qword_1EDF27720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27720);
  }

  return result;
}

uint64_t sub_1D60F02C4@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  sub_1D5B5DF44(0, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v26 - v6;
  sub_1D5B5DF44(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v26 - v10;
  v12 = type metadata accessor for FeedCustomItem(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60F0578(a1, v16);
  v17 = *(v13 + 28);
  v18 = type metadata accessor for FormatCustomItem.Resolved(0);
  sub_1D60F05DC(&v16[v17 + *(v18 + 24)], v7);
  v19 = type metadata accessor for FormatCustomItem.Action(0);
  v20 = 1;
  v21 = (*(*(v19 - 8) + 48))(v7, 1, v19);
  v22 = sub_1D72585BC();
  v23 = *(v22 - 8);
  if (v21 != 1)
  {
    (*(*(v22 - 8) + 32))(v11, v7, v22);
    v20 = 0;
  }

  (*(v23 + 56))(v11, v20, 1, v22);
  sub_1D711FCD0(0x4F206E6F69746341, 0xEF4C5255206E6570, v11, a2);
  sub_1D60F065C(v16);
  v24 = type metadata accessor for FormatInspectionItem(0);
  return (*(*(v24 - 8) + 56))(a2, 0, 1, v24);
}

uint64_t sub_1D60F0578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedCustomItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60F05DC(uint64_t a1, uint64_t a2)
{
  sub_1D5B5DF44(0, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60F065C(uint64_t a1)
{
  v2 = type metadata accessor for FeedCustomItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 FeedWeather.location.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t FeedWeather.condition.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FeedWeather.conditionIcon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedWeather(0) + 28);
  v4 = sub_1D7261CAC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedWeather.partOfDay.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FeedWeather(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t FeedWeather.forecastDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeedWeather(0) + 40));

  return v1;
}

uint64_t sub_1D60F083C()
{
  v1 = 0x746E6572727563;
  v2 = 7827308;
  if (*v0 != 2)
  {
    v2 = 0x6B694C736C656566;
  }

  if (*v0)
  {
    v1 = 1751607656;
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

uint64_t sub_1D60F08AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D60F17B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D60F08D4(uint64_t a1)
{
  v2 = sub_1D60F0B7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60F0910(uint64_t a1)
{
  v2 = sub_1D60F0B7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedWeather.Temperature.encode(to:)(void *a1)
{
  sub_1D60F1120(0, &qword_1EC883A68, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60F0B7C();
  sub_1D7264B5C();
  v14 = 0;
  sub_1D5B7A110(0);
  sub_1D60F1184(&qword_1EC883A78, MEMORY[0x1E6968078]);
  sub_1D726443C();
  if (!v1)
  {
    type metadata accessor for FeedWeather.Temperature(0);
    v13 = 1;
    sub_1D726443C();
    v12 = 2;
    sub_1D726443C();
    v11 = 3;
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D60F0B7C()
{
  result = qword_1EC883A70;
  if (!qword_1EC883A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883A70);
  }

  return result;
}

uint64_t FeedWeather.Temperature.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  sub_1D5B7A110(0);
  v44 = v3;
  v42 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v41 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v35 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v43 = &v35 - v16;
  sub_1D60F1120(0, &qword_1EC883A80, MEMORY[0x1E69E6F48]);
  v45 = *(v17 - 8);
  v46 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v35 - v19;
  v21 = type metadata accessor for FeedWeather.Temperature(0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60F0B7C();
  v47 = v20;
  v25 = v48;
  sub_1D7264B0C();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v9;
  v39 = v13;
  v48 = v24;
  v52 = 0;
  v26 = sub_1D60F1184(&qword_1EC883A88, MEMORY[0x1E6968098]);
  v28 = v43;
  v27 = v44;
  v29 = v46;
  sub_1D726431C();
  v43 = *(v42 + 32);
  (v43)(v48, v28, v27);
  v51 = 1;
  v30 = v39;
  v37 = v26;
  sub_1D726431C();
  v36 = v21;
  v31 = v48;
  (v43)(&v48[*(v21 + 20)], v30, v27);
  v50 = 2;
  v32 = v38;
  sub_1D726431C();
  (v43)(v31 + *(v36 + 24), v32, v27);
  v49 = 3;
  v33 = v41;
  sub_1D726431C();
  (*(v45 + 8))(v47, v29);
  (v43)(v31 + *(v36 + 28), v33, v27);
  sub_1D60F145C(v31, v40, type metadata accessor for FeedWeather.Temperature);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D60F11C8(v31);
}

void sub_1D60F1120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D60F0B7C();
    v7 = a3(a1, &type metadata for FeedWeather.Temperature.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D60F1184(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B7A110(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D60F11C8(uint64_t a1)
{
  v2 = type metadata accessor for FeedWeather.Temperature(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FeedWeather.init(location:condition:conditionCode:conditionIcon:forecastDescription:partOfDay:temperature:highTemperature:lowTemperature:feelsLikeTemperature:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = *a4;
  v18 = *a8;
  *a9 = *a1;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = v17;
  v19 = type metadata accessor for FeedWeather(0);
  v20 = v19[7];
  v21 = sub_1D7261CAC();
  (*(*(v21 - 8) + 32))(a9 + v20, a5, v21);
  v22 = (a9 + v19[10]);
  *v22 = a6;
  v22[1] = a7;
  *(a9 + v19[8]) = v18;
  v23 = a9 + v19[9];
  sub_1D5B7A110(0);
  v25 = v24;
  v29 = *(*(v24 - 8) + 32);
  (v29)((v24 - 8), v23, a10, v24);
  v26 = type metadata accessor for FeedWeather.Temperature(0);
  v29(v23 + v26[5], a11, v25);
  v29(v23 + v26[6], a12, v25);
  v27 = v23 + v26[7];

  return (v29)(v27, a13, v25);
}

uint64_t FeedWeather.groupItem.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D60F145C(v1, a1, type metadata accessor for FeedWeather);
  type metadata accessor for FeedGroupItem(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D60F145C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D60F14C4@<X0>(uint64_t a1@<X8>)
{
  sub_1D60F145C(v1, a1, type metadata accessor for FeedWeather);
  type metadata accessor for FeedGroupItem(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t FeedWeather.identifier.getter()
{
  sub_1D7262ABC();
  MEMORY[0x1DA6F9910](47, 0xE100000000000000);
  sub_1D7262ABC();
  return 0;
}

void FeedWeather.url.getter()
{
  sub_1D5B5A498(0, &qword_1EDF043B0, 0x1E695DFF8);
  v1 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*v0 longitude:v0[1]];
  sub_1D726324C();
}

unint64_t sub_1D60F16B0()
{
  result = qword_1EC883A90;
  if (!qword_1EC883A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883A90);
  }

  return result;
}

unint64_t sub_1D60F1708()
{
  result = qword_1EC883A98;
  if (!qword_1EC883A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883A98);
  }

  return result;
}

unint64_t sub_1D60F1760()
{
  result = qword_1EC883AA0;
  if (!qword_1EC883AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883AA0);
  }

  return result;
}

uint64_t sub_1D60F17B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6572727563 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1751607656 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7827308 && a2 == 0xE300000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B694C736C656566 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D60F1930()
{
  if (qword_1EC87D4E0 != -1)
  {
    swift_once();
  }

  qword_1EC9BA7D8 = qword_1EC881F18;
  unk_1EC9BA7E0 = unk_1EC881F20;
}

uint64_t sub_1D60F199C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v17 = a3;
  sub_1D5B9EB44(0, &qword_1EC883AC8, sub_1D60F2D38, &type metadata for FeedBlobEntity.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60F2D38();
  sub_1D7264B5C();
  v19 = a2;
  v18 = 0;
  sub_1D5BA2FE0(0, &qword_1EDF17538, MEMORY[0x1E69D6160]);
  sub_1D60311A0(&qword_1EC8828B8, MEMORY[0x1E69D6168]);
  sub_1D726443C();
  if (!v4)
  {
    v13 = v16;
    v19 = v17;
    v18 = 1;
    sub_1D726443C();
    v19 = v13;
    v18 = 2;
    sub_1D5B9EB44(0, &unk_1EDF17570, sub_1D5B9EC68, MEMORY[0x1E6969080], MEMORY[0x1E69D6160]);
    sub_1D60F2D8C(&qword_1EC883AD0, MEMORY[0x1E69D6168]);
    sub_1D726443C();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D60F1C38()
{
  v1 = 0x6449726F73727563;
  if (*v0 != 1)
  {
    v1 = 1635017060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D60F1C80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D60F251C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D60F1CA8(uint64_t a1)
{
  v2 = sub_1D60F2D38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60F1CE4(uint64_t a1)
{
  v2 = sub_1D60F2D38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D60F1D20()
{
  if (qword_1EC87D528 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC9BA7D8;

  return v0;
}

uint64_t sub_1D60F1D88(uint64_t a1)
{
  v2 = sub_1D5B9FEBC();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1D60F1DD4(uint64_t a1)
{
  v2 = sub_1D5B9FEBC();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1D60F1E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5B9FEBC();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

char *sub_1D60F1E84@<X0>(char **a1@<X8>, void *a2@<X0>)
{
  result = sub_1D60F262C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1D60F1ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5B9FEBC();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1D60F1F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5B9FEBC();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1D60F1F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5B9FEBC();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

unint64_t sub_1D60F1FE0()
{
  result = qword_1EC883AA8;
  if (!qword_1EC883AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883AA8);
  }

  return result;
}

uint64_t sub_1D60F2034(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v38 = a5;
  v39 = a6;
  v36 = a3;
  v37 = a4;
  v34 = a1;
  v35 = a2;
  sub_1D5B9EBAC(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v32 - v11;
  sub_1D5B9ECBC(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v32 - v19;
  sub_1D5BA2FE0(0, &qword_1EDF17448, MEMORY[0x1E69D6200]);
  v22 = v21;
  v23 = *(*(v21 - 8) + 56);
  v23(v20, 1, 1, v21);
  v23(v16, 1, 1, v22);
  sub_1D5BA2FE0(0, &qword_1EDF173B0, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2FE0(0, &qword_1EDF17538, MEMORY[0x1E69D6160]);
  swift_allocObject();
  v24 = sub_1D725C4BC();
  v23(v20, 1, 1, v22);
  v23(v16, 1, 1, v22);
  swift_allocObject();

  sub_1D725C71C();
  swift_allocObject();
  sub_1D725C4BC();
  v25 = MEMORY[0x1E6969080];
  sub_1D5B9EB44(0, &qword_1EDF174C8, sub_1D5B9EC68, MEMORY[0x1E6969080], MEMORY[0x1E69D6200]);
  v27 = v26;
  v28 = *(*(v26 - 8) + 56);
  v28(v12, 1, 1, v26);
  v28(v33, 1, 1, v27);
  sub_1D5B9EB44(0, &qword_1EDF173E8, sub_1D5B9EC68, v25, MEMORY[0x1E69D6208]);
  swift_allocObject();

  sub_1D725C71C();
  sub_1D5B9EB44(0, &unk_1EDF17570, sub_1D5B9EC68, v25, MEMORY[0x1E69D6160]);
  swift_allocObject();
  sub_1D725C4BC();

  sub_1D725C4CC();
  v40 = v34;
  v41 = v35;
  sub_1D725C74C();

  sub_1D725C4CC();
  v40 = v36;
  v41 = v37;
  sub_1D725C74C();

  sub_1D725C4CC();
  v30 = v38;
  v29 = v39;
  v40 = v38;
  v41 = v39;
  sub_1D5E3E824(v38, v39);
  sub_1D725C74C();

  sub_1D5B952F8(v30, v29);

  return v24;
}

uint64_t sub_1D60F251C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449726F73727563 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

char *sub_1D60F262C(void *a1)
{
  v37 = a1;
  sub_1D5B9EB44(0, &qword_1EC883AB0, sub_1D60F2D38, &type metadata for FeedBlobEntity.CodingKeys, MEMORY[0x1E69E6F48]);
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v36 = &v32 - v3;
  sub_1D5B9EBAC(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v32 - v9;
  sub_1D5B9ECBC(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v32 - v17;
  sub_1D5BA2FE0(0, &qword_1EDF17448, MEMORY[0x1E69D6200]);
  v20 = v19;
  v21 = *(*(v19 - 8) + 56);
  v21(v18, 1, 1, v19);
  v21(v14, 1, 1, v20);
  sub_1D5BA2FE0(0, &qword_1EDF173B0, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2FE0(0, &qword_1EDF17538, MEMORY[0x1E69D6160]);
  swift_allocObject();
  v34 = sub_1D725C4BC();
  v21(v18, 1, 1, v20);
  v21(v14, 1, 1, v20);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v22 = sub_1D725C4BC();
  v23 = MEMORY[0x1E6969080];
  sub_1D5B9EB44(0, &qword_1EDF174C8, sub_1D5B9EC68, MEMORY[0x1E6969080], MEMORY[0x1E69D6200]);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v26(v10, 1, 1, v24);
  v26(v35, 1, 1, v25);
  v28 = v36;
  v27 = v37;
  sub_1D5B9EB44(0, &qword_1EDF173E8, sub_1D5B9EC68, v23, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9EB44(0, &unk_1EDF17570, sub_1D5B9EC68, v23, MEMORY[0x1E69D6160]);
  swift_allocObject();
  sub_1D725C4BC();
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1D60F2D38();
  v29 = v38;
  sub_1D7264B0C();
  if (v29)
  {
  }

  else
  {
    v38 = v22;
    v39 = 0;
    sub_1D60311A0(&qword_1EC882880, MEMORY[0x1E69D6170]);
    sub_1D726431C();

    v30 = v28;
    v28 = v40;
    v39 = 1;
    sub_1D726431C();

    v39 = 2;
    sub_1D60F2D8C(&qword_1EC883AC0, MEMORY[0x1E69D6170]);
    sub_1D726431C();
    (*(v32 + 8))(v30, v33);
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  return v28;
}

unint64_t sub_1D60F2D38()
{
  result = qword_1EC883AB8;
  if (!qword_1EC883AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883AB8);
  }

  return result;
}

uint64_t sub_1D60F2D8C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B9EB44(255, &unk_1EDF17570, sub_1D5B9EC68, MEMORY[0x1E6969080], MEMORY[0x1E69D6160]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D60F2E1C()
{
  result = qword_1EC883AD8;
  if (!qword_1EC883AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883AD8);
  }

  return result;
}

unint64_t sub_1D60F2E74()
{
  result = qword_1EC883AE0;
  if (!qword_1EC883AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883AE0);
  }

  return result;
}

unint64_t sub_1D60F2ECC()
{
  result = qword_1EC883AE8;
  if (!qword_1EC883AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883AE8);
  }

  return result;
}

void *sub_1D60F2F30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 112);
  v41[6] = *(a1 + 96);
  v41[7] = v3;
  v41[8] = *(a1 + 128);
  v42 = *(a1 + 144);
  v4 = *(a1 + 48);
  v41[2] = *(a1 + 32);
  v41[3] = v4;
  v5 = *(a1 + 80);
  v41[4] = *(a1 + 64);
  v41[5] = v5;
  v6 = *(a1 + 16);
  v41[0] = *a1;
  v41[1] = v6;
  sub_1D5B56150(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7274590;
  v32 = a2;
  sub_1D5ECF4A0(sub_1D60F3284, v31, &unk_1F50F7378);
  sub_1D6795150(0x6E61656C6F6F42, 0xE700000000000000, 0, 0, v8, v33);

  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v9 = swift_allocObject();
  *(inited + 32) = v9;
  *(v9 + 48) = v34;
  v10 = v33[1];
  *(v9 + 16) = v33[0];
  *(v9 + 32) = v10;
  v29 = a2;
  v30 = v41;
  v11 = sub_1D5FBCC78(sub_1D60F32A4, v28, &unk_1F50F73A0);
  sub_1D6795150(0x646E616D6D6F43, 0xE700000000000000, 0, 0, v11, v35);

  *(inited + 96) = &type metadata for FormatInspectionGroup;
  *(inited + 104) = &off_1F518B2C0;
  v12 = swift_allocObject();
  *(inited + 72) = v12;
  *(v12 + 48) = v36;
  v13 = v35[1];
  *(v12 + 16) = v35[0];
  *(v12 + 32) = v13;
  v26 = a2;
  v27 = v41;
  sub_1D7199984(sub_1D60F32C0, v25, &unk_1F50F7328);
  v15 = sub_1D5F62998(v14);

  sub_1D6795150(0x74617265706D6554, 0xEB00000000657275, 0, 0, v15, v37);

  *(inited + 136) = &type metadata for FormatInspectionGroup;
  *(inited + 144) = &off_1F518B2C0;
  v16 = swift_allocObject();
  *(inited + 112) = v16;
  *(v16 + 48) = v38;
  v17 = v37[1];
  *(v16 + 16) = v37[0];
  *(v16 + 32) = v17;
  v24[2] = a2;
  v24[3] = v41;
  sub_1D7199984(sub_1D60F32DC, v24, &unk_1F50F7350);
  v19 = sub_1D5F62998(v18);

  sub_1D6795150(1954047316, 0xE400000000000000, 0, 0, v19, v39);

  *(inited + 176) = &type metadata for FormatInspectionGroup;
  *(inited + 184) = &off_1F518B2C0;
  v20 = swift_allocObject();
  *(inited + 152) = v20;
  *(v20 + 48) = v40;
  v21 = v39[1];
  *(v20 + 16) = v39[0];
  *(v20 + 32) = v21;
  v22 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  return v22;
}

uint64_t sub_1D60F32F8@<X0>(char *a1@<X8>)
{
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v20 - v13;
  swift_getObjectType();
  FCTagProviding.recipeCatalogSearchURL.getter(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D5E3E404(v5);
    v15 = objc_opt_self();
    sub_1D7257B5C();
    v16 = sub_1D726265C();
    v17 = [v15 nss:v16 NewsURLForRecipeCatalog:?];

    sub_1D72584EC();
    (*(v7 + 32))(a1, v10, v6);
  }

  else
  {
    v18 = *(v7 + 32);
    v18(v14, v5, v6);
    v18(a1, v14, v6);
  }

  return (*(v7 + 56))(a1, 0, 1, v6);
}

uint64_t sub_1D60F353C@<X0>(char *a1@<X8>)
{
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v20 - v13;
  swift_getObjectType();
  FCTagProviding.recipeCatalogSearchURL.getter(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D5E3E404(v5);
    v15 = objc_opt_self();
    sub_1D7257B5C();
    v16 = sub_1D726265C();
    v17 = [v15 nss:v16 NewsURLForRecipeCatalog:?];

    sub_1D72584EC();
    (*(v7 + 32))(a1, v10, v6);
  }

  else
  {
    v18 = *(v7 + 32);
    v18(v14, v5, v6);
    v18(a1, v14, v6);
  }

  return (*(v7 + 56))(a1, 0, 1, v6);
}

uint64_t sub_1D60F3778()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D60F37F4(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

void sub_1D60F384C(BOOL *a2@<X8>)
{
  v3 = sub_1D72641CC();

  *a2 = v3 != 0;
}

void sub_1D60F38A0(uint64_t a1@<X8>)
{
  strcpy(a1, "recipeSearch");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t FormatTagBinding.URL.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D60F39F4()
{
  result = qword_1EC883AF0;
  if (!qword_1EC883AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883AF0);
  }

  return result;
}

unint64_t sub_1D60F3A48(uint64_t a1)
{
  result = sub_1D60F3A70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D60F3A70()
{
  result = qword_1EC883AF8;
  if (!qword_1EC883AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883AF8);
  }

  return result;
}

unint64_t sub_1D60F3AC4(void *a1)
{
  a1[1] = sub_1D60F3AFC();
  a1[2] = sub_1D60F3B50();
  result = sub_1D60F39F4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D60F3AFC()
{
  result = qword_1EC883B00;
  if (!qword_1EC883B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883B00);
  }

  return result;
}

unint64_t sub_1D60F3B50()
{
  result = qword_1EC883B08;
  if (!qword_1EC883B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883B08);
  }

  return result;
}

unint64_t sub_1D60F3BF8()
{
  result = qword_1EC883B10;
  if (!qword_1EC883B10)
  {
    sub_1D60F3C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883B10);
  }

  return result;
}

void sub_1D60F3C50()
{
  if (!qword_1EC883B18)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC883B18);
    }
  }
}

unint64_t sub_1D60F3CA4()
{
  result = qword_1EC883B20;
  if (!qword_1EC883B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883B20);
  }

  return result;
}

unint64_t sub_1D60F3CF8()
{
  result = qword_1EC883B28;
  if (!qword_1EC883B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883B28);
  }

  return result;
}

uint64_t sub_1D60F3D5C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1D60F3DC8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  *(v4 + 48) = v3;

  return v4;
}

void sub_1D60F3DC8()
{
  if (!qword_1EC88EF80)
  {
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88EF80);
    }
  }
}

void sub_1D60F3E18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D60F418C(v2, v37);
      sub_1D60F418C(v37, v34);
      v4 = v35;
      if (v35)
      {
        v5 = v36;
        __swift_project_boxed_opaque_existential_1(v34, v35);
        v6 = (*(v5 + 8))(v4, v5);
        sub_1D60F42AC(v37);
        __swift_destroy_boxed_opaque_existential_1(v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1D69921A4(0, v3[2] + 1, 1, v3);
        }

        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          v3 = sub_1D69921A4((v7 > 1), v8 + 1, 1, v3);
        }

        v3[2] = v8 + 1;
        v3[v8 + 4] = v6;
      }

      else
      {
        sub_1D60F42AC(v37);
        sub_1D60F42AC(v34);
      }

      v2 += 40;
      --v1;
    }

    while (v1);

    v9 = v3[2];
    if (v9)
    {
      goto LABEL_12;
    }
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
    v9 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v9)
    {
LABEL_12:
      v10 = 0;
      v11 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v10 >= v3[2])
        {
          goto LABEL_43;
        }

        v12 = v3[v10 + 4];
        v13 = *(v12 + 16);
        v14 = *(v11 + 2);
        v15 = v14 + v13;
        if (__OFADD__(v14, v13))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v15 <= *(v11 + 3) >> 1)
        {
          if (!*(v12 + 16))
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v14 <= v15)
          {
            v17 = v14 + v13;
          }

          else
          {
            v17 = v14;
          }

          v11 = sub_1D6992190(isUniquelyReferenced_nonNull_native, v17, 1, v11);
          if (!*(v12 + 16))
          {
LABEL_13:

            if (v13)
            {
              goto LABEL_45;
            }

            goto LABEL_14;
          }
        }

        if ((*(v11 + 3) >> 1) - *(v11 + 2) < v13)
        {
          goto LABEL_46;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v18 = *(v11 + 2);
          v19 = __OFADD__(v18, v13);
          v20 = v18 + v13;
          if (v19)
          {
            goto LABEL_47;
          }

          *(v11 + 2) = v20;
        }

LABEL_14:
        if (v9 == ++v10)
        {
          goto LABEL_31;
        }
      }
    }
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_31:

  v21 = 0;
  v22 = *(v11 + 2);
  v23 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v24 = &v11[24 * v21 + 48];
  while (1)
  {
    if (v22 == v21)
    {

      return;
    }

    if (v21 >= *(v11 + 2))
    {
      break;
    }

    ++v21;
    v25 = v24 + 24;
    v26 = *v24;
    v27 = *(*v24 + 16);
    v24 += 24;
    if (v27)
    {
      v29 = *(v25 - 40);
      v28 = *(v25 - 32);

      v30 = swift_isUniquelyReferenced_nonNull_native();
      v37[0] = v23;
      if ((v30 & 1) == 0)
      {
        sub_1D6998C08(0, *(v23 + 16) + 1, 1);
        v23 = v37[0];
      }

      v32 = *(v23 + 16);
      v31 = *(v23 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1D6998C08((v31 > 1), v32 + 1, 1);
        v23 = v37[0];
      }

      *(v23 + 16) = v32 + 1;
      v33 = (v23 + 24 * v32);
      v33[4] = v29;
      v33[5] = v28;
      v33[6] = v26;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_1D60F418C(uint64_t a1, uint64_t a2)
{
  sub_1D60F41F0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D60F41F0(uint64_t a1)
{
  if (!qword_1EC88EF90)
  {
    sub_1D60F4248();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88EF90);
    }
  }
}

unint64_t sub_1D60F4248()
{
  result = qword_1EC883B30;
  if (!qword_1EC883B30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC883B30);
  }

  return result;
}

uint64_t sub_1D60F42AC(uint64_t a1)
{
  sub_1D60F41F0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_s23CustomStringConvertible_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D60F433C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D60F4378(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D60F43C8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t type metadata accessor for DebugFormatWorkspaceGroup(uint64_t a1)
{
  result = qword_1EC883B38;
  if (!qword_1EC883B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D60F4478(uint64_t a1)
{
  type metadata accessor for FormatWorkspaceGroup(319);
  if (v1 <= 0x3F)
  {
    sub_1D60F458C(319, &qword_1EC883B48, type metadata accessor for DebugFormatPackageInventory, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D60F458C(319, &qword_1EC883560, sub_1D60F45F0, MEMORY[0x1E69D6A80]);
      if (v3 <= 0x3F)
      {
        sub_1D60F4660();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D60F458C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D60F45F0(uint64_t a1)
{
  if (!qword_1EC883568)
  {
    type metadata accessor for DebugFormatBindingResult(255);
    sub_1D5BA6EF4();
    v1 = sub_1D726297C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC883568);
    }
  }
}

void sub_1D60F4660()
{
  if (!qword_1EC883B50)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC883B50);
    }
  }
}

unint64_t sub_1D60F46C4()
{
  v1 = *v0;
  v2 = 0xD000000000000030;
  v3 = 0xD000000000000027;
  if (v1 != 3)
  {
    v3 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000028;
  if (!*v0)
  {
    v4 = 0xD000000000000025;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D60F4754@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D60F92EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D60F477C(uint64_t a1)
{
  v2 = sub_1D60F5AF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60F47B8(uint64_t a1)
{
  v2 = sub_1D60F5AF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D60F47F4(uint64_t a1)
{
  v2 = sub_1D60F5954();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60F4830(uint64_t a1)
{
  v2 = sub_1D60F5954();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D60F486C()
{
  v1 = 0x65676175676E616CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1D60F48C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D60F949C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D60F48E8(uint64_t a1)
{
  v2 = sub_1D60F59A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60F4924(uint64_t a1)
{
  v2 = sub_1D60F59A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D60F4960(uint64_t a1)
{
  v2 = sub_1D60F59FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60F499C(uint64_t a1)
{
  v2 = sub_1D60F59FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D60F49D8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D6E6F7269766E65 && a2 == 0xEC00000073746E65;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C9AE0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D60F4AC0(uint64_t a1)
{
  v2 = sub_1D60F5A50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60F4AFC(uint64_t a1)
{
  v2 = sub_1D60F5A50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D60F4B38(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C9AE0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D60F4C14(uint64_t a1)
{
  v2 = sub_1D60F5900();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60F4C50(uint64_t a1)
{
  v2 = sub_1D60F5900();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FormatDerivedDataWarningError.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1D60F6BE0(0, &qword_1EC883B58, sub_1D60F5900, &type metadata for FormatDerivedDataWarningError.UsedDeprecatedFeatureCodingKeys, MEMORY[0x1E69E6F58]);
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v72 = &v65 - v5;
  v66 = type metadata accessor for FormatDeprecationWarning(0);
  MEMORY[0x1EEE9AC00](v66, v6);
  v73 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60F6BE0(0, &qword_1EC883B68, sub_1D60F5954, &type metadata for FormatDerivedDataWarningError.MalformedNewsroomEnvironmentsIdentifierCodingKeys, v2);
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v65 = &v65 - v10;
  sub_1D60F6BE0(0, &qword_1EC883B78, sub_1D60F59A8, &type metadata for FormatDerivedDataWarningError.MissingLanguageLocalizationsForStringIdentifiersCodingKeys, v2);
  v70 = *(v11 - 8);
  v71 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v67 = &v65 - v13;
  sub_1D60F6BE0(0, &qword_1EC883B88, sub_1D60F59FC, &type metadata for FormatDerivedDataWarningError.MissingLocalizationsForStringIdentifiersCodingKeys, v2);
  v78 = *(v14 - 8);
  v79 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v77 = &v65 - v16;
  sub_1D60F6BE0(0, &qword_1EC883B98, sub_1D60F5A50, &type metadata for FormatDerivedDataWarningError.MissingNewsroomEnvironmentsIdentifierCodingKeys, v2);
  v18 = v17;
  v76 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v65 - v20;
  v22 = type metadata accessor for FormatDerivedDataWarningError(0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = (&v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D60F6BE0(0, &qword_1EC883BA8, sub_1D60F5AF0, &type metadata for FormatDerivedDataWarningError.CodingKeys, v2);
  v82 = *(v26 - 8);
  v83 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v65 - v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60F5AF0();
  v84 = v29;
  sub_1D7264B5C();
  sub_1D60F95B4(v80, v25, type metadata accessor for FormatDerivedDataWarningError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v37 = v21;
    v38 = v18;
    v39 = v76;
    v40 = v77;
    v41 = v78;
    v42 = v79;
    if (EnumCaseMultiPayload)
    {
      v58 = *v25;
      v80 = v25[1];
      LOBYTE(v86) = 1;
      sub_1D60F59FC();
      v59 = v40;
      v60 = v83;
      v61 = v84;
      sub_1D726436C();
      v86 = v58;
      v85 = 0;
      sub_1D5BBE0A8();
      sub_1D5B99688(&qword_1EDF04A90, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
      v62 = v81;
      sub_1D726443C();

      if (v62)
      {
        (*(v41 + 8))(v59, v42);
        (*(v82 + 8))(v61, v60);
      }

      else
      {
        LOBYTE(v86) = 1;
        sub_1D72643FC();

        (*(v41 + 8))(v59, v42);
        (*(v82 + 8))(v61, v60);
      }
    }

    else
    {
      v43 = *v25;
      v80 = v25[1];
      LOBYTE(v86) = 0;
      sub_1D60F5A50();
      v44 = v83;
      v45 = v84;
      sub_1D726436C();
      v86 = v43;
      v85 = 0;
      sub_1D5BBE0A8();
      sub_1D5B99688(&qword_1EDF04A90, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
      v46 = v81;
      sub_1D726443C();
      if (v46)
      {

        (*(v39 + 8))(v37, v38);
        (*(v82 + 8))(v45, v44);
        goto LABEL_9;
      }

      LOBYTE(v86) = 1;
      sub_1D72643FC();

      (*(v39 + 8))(v37, v38);
      (*(v82 + 8))(v84, v44);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v48 = *v25;
    v47 = v25[1];
    v79 = v25[3];
    v80 = v47;
    LOBYTE(v86) = 2;
    sub_1D60F59A8();
    v49 = v67;
    v51 = v83;
    v50 = v84;
    sub_1D726436C();
    v86 = v48;
    v85 = 0;
    sub_1D5BBE0A8();
    sub_1D5B99688(&qword_1EDF04A90, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    v52 = v71;
    v53 = v81;
    sub_1D726443C();

    if (v53)
    {

      (*(v70 + 8))(v49, v52);
      (*(v82 + 8))(v50, v51);
    }

    else
    {
      LOBYTE(v86) = 1;
      sub_1D72643FC();

      LOBYTE(v86) = 2;
      sub_1D72643FC();
      v63 = v83;
      v64 = v84;

      (*(v70 + 8))(v49, v52);
      (*(v82 + 8))(v64, v63);
    }
  }

  else
  {
    v31 = v84;
    if (EnumCaseMultiPayload == 3)
    {
      v32 = *v25;
      LOBYTE(v86) = 3;
      sub_1D60F5954();
      v33 = v65;
      v34 = v83;
      sub_1D726436C();
      v86 = v32;
      v85 = 0;
      sub_1D5BBE0A8();
      sub_1D5B99688(&qword_1EDF04A90, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
      v35 = v69;
      v36 = v81;
      sub_1D726443C();
      if (v36)
      {

        (*(v68 + 8))(v33, v35);
        (*(v82 + 8))(v31, v34);
LABEL_9:

        return;
      }

      LOBYTE(v86) = 1;
      sub_1D72643FC();

      (*(v68 + 8))(v33, v35);
    }

    else
    {
      sub_1D60F81B0(0, &qword_1EC883BB8, type metadata accessor for FormatDeprecationWarning, " packageIdentifier ");
      v54 = v73;
      sub_1D60F6D80(v25, v73, type metadata accessor for FormatDeprecationWarning);
      LOBYTE(v86) = 4;
      sub_1D60F5900();
      v55 = v72;
      v34 = v83;
      sub_1D726436C();
      LOBYTE(v86) = 0;
      sub_1D60F805C(&qword_1EC883BC0, type metadata accessor for FormatDeprecationWarning, &protocol conformance descriptor for FormatDeprecationWarning);
      v56 = v75;
      v57 = v81;
      sub_1D726443C();
      if (!v57)
      {
        LOBYTE(v86) = 1;
        sub_1D72643FC();
      }

      (*(v74 + 8))(v55, v56);
      sub_1D60F7F38(v54, type metadata accessor for FormatDeprecationWarning);
    }

    (*(v82 + 8))(v31, v34);
  }
}

unint64_t sub_1D60F5900()
{
  result = qword_1EC883B60;
  if (!qword_1EC883B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883B60);
  }

  return result;
}

unint64_t sub_1D60F5954()
{
  result = qword_1EC883B70;
  if (!qword_1EC883B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883B70);
  }

  return result;
}

unint64_t sub_1D60F59A8()
{
  result = qword_1EC883B80;
  if (!qword_1EC883B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883B80);
  }

  return result;
}

unint64_t sub_1D60F59FC()
{
  result = qword_1EC883B90;
  if (!qword_1EC883B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883B90);
  }

  return result;
}

unint64_t sub_1D60F5A50()
{
  result = qword_1EC883BA0;
  if (!qword_1EC883BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883BA0);
  }

  return result;
}

uint64_t type metadata accessor for FormatDerivedDataWarningError(uint64_t a1)
{
  result = qword_1EC883C08;
  if (!qword_1EC883C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D60F5AF0()
{
  result = qword_1EC883BB0;
  if (!qword_1EC883BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883BB0);
  }

  return result;
}

uint64_t FormatDerivedDataWarningError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D60F6BE0(0, &qword_1EC883BC8, sub_1D60F5900, &type metadata for FormatDerivedDataWarningError.UsedDeprecatedFeatureCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = *(v4 - 8);
  v133 = v4;
  v134 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v136 = &v119 - v7;
  sub_1D60F6BE0(0, &qword_1EC883BD0, sub_1D60F5954, &type metadata for FormatDerivedDataWarningError.MalformedNewsroomEnvironmentsIdentifierCodingKeys, v3);
  v132 = v8;
  v130 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v141 = &v119 - v10;
  sub_1D60F6BE0(0, &qword_1EC883BD8, sub_1D60F59A8, &type metadata for FormatDerivedDataWarningError.MissingLanguageLocalizationsForStringIdentifiersCodingKeys, v3);
  v131 = v11;
  v135 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v140 = &v119 - v13;
  sub_1D60F6BE0(0, &qword_1EC883BE0, sub_1D60F59FC, &type metadata for FormatDerivedDataWarningError.MissingLocalizationsForStringIdentifiersCodingKeys, v3);
  v128 = *(v14 - 8);
  v129 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v139 = &v119 - v16;
  sub_1D60F6BE0(0, &qword_1EC883BE8, sub_1D60F5A50, &type metadata for FormatDerivedDataWarningError.MissingNewsroomEnvironmentsIdentifierCodingKeys, v3);
  v127 = v17;
  v125 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v138 = &v119 - v19;
  sub_1D60F6BE0(0, &qword_1EC883BF0, sub_1D60F5AF0, &type metadata for FormatDerivedDataWarningError.CodingKeys, v3);
  v143 = *(v20 - 8);
  v144 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v119 - v22;
  v137 = type metadata accessor for FormatDerivedDataWarningError(0);
  MEMORY[0x1EEE9AC00](v137, v24);
  v126 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v119 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v119 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v119 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v119 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v119 - v44;
  v46 = a1[3];
  v146 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v46);
  sub_1D60F5AF0();
  v47 = v145;
  sub_1D7264B0C();
  if (!v47)
  {
    v120 = v41;
    v121 = v37;
    v122 = v29;
    v119 = v33;
    v48 = v138;
    v124 = 0;
    v49 = v139;
    v50 = v141;
    v123 = v45;
    v51 = v142;
    v52 = v144;
    v145 = v23;
    v53 = sub_1D726433C();
    if (*(v53 + 16) != 1 || (v54 = *(v53 + 32), v54 == 5))
    {
      v59 = sub_1D7263E3C();
      swift_allocError();
      v61 = v60;
      sub_1D5EEA608(0);
      *v61 = v137;
      v62 = v145;
      sub_1D72641FC();
      sub_1D7263DFC();
      (*(*(v59 - 8) + 104))(v61, *MEMORY[0x1E69E6AF8], v59);
      swift_willThrow();
      (*(v143 + 8))(v62, v52);
LABEL_22:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v146);
    }

    if (*(v53 + 32) > 1u)
    {
      if (v54 == 2)
      {
        LOBYTE(v148) = 2;
        sub_1D60F59A8();
        v65 = v145;
        v66 = v124;
        sub_1D72641EC();
        if (!v66)
        {
          sub_1D5BBE0A8();
          v147 = 0;
          sub_1D5B99688(&qword_1EDF3C830, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
          v73 = v131;
          sub_1D726431C();
          v76 = v148;
          v147 = 1;
          v77 = sub_1D72642BC();
          v94 = v93;
          v141 = v77;
          v147 = 2;
          v113 = sub_1D72642BC();
          v114 = *(v135 + 8);
          v140 = v115;
          v114(0, v73);
          (*(v143 + 8))(v145, v52);
          swift_unknownObjectRelease();
          v116 = v119;
          v117 = v140;
          v118 = v141;
          *v119 = v76;
          v116[1] = v118;
          v116[2] = v94;
          v116[3] = v113;
          v116[4] = v117;
          swift_storeEnumTagMultiPayload();
          v100 = v116;
          goto LABEL_25;
        }

        (*(v143 + 8))(v65, v52);
        goto LABEL_22;
      }

      v140 = v53;
      v55 = v124;
      if (v54 == 3)
      {
        LOBYTE(v148) = 3;
        sub_1D60F5954();
        v56 = v50;
        v57 = v145;
        sub_1D72641EC();
        if (!v55)
        {
          sub_1D5BBE0A8();
          v147 = 0;
          sub_1D5B99688(&qword_1EDF3C830, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
          v58 = v132;
          sub_1D726431C();
          v79 = v148;
          v147 = 1;
          v80 = sub_1D72642BC();
          v81 = (v143 + 8);
          v95 = v80;
          v96 = v56;
          v98 = v97;
          (*(v130 + 8))(v96, v58);
          (*v81)(v145, v52);
          swift_unknownObjectRelease();
          v99 = v122;
          *v122 = v79;
          v99[1] = v95;
          v99[2] = v98;
          swift_storeEnumTagMultiPayload();
          v100 = v99;
LABEL_25:
          v105 = v123;
          sub_1D60F6D80(v100, v123, type metadata accessor for FormatDerivedDataWarningError);
          v68 = v51;
          goto LABEL_26;
        }

        goto LABEL_13;
      }

      LOBYTE(v148) = 4;
      sub_1D60F5900();
      v67 = v145;
      sub_1D72641EC();
      if (!v55)
      {
        v68 = v51;
        type metadata accessor for FormatDeprecationWarning(0);
        LOBYTE(v148) = 0;
        sub_1D60F805C(&qword_1EC883BF8, type metadata accessor for FormatDeprecationWarning, &protocol conformance descriptor for FormatDeprecationWarning);
        v69 = v126;
        v70 = v133;
        v71 = v136;
        sub_1D726431C();
        LOBYTE(v148) = 1;
        v82 = sub_1D72642BC();
        v83 = v71;
        v84 = v134;
        v141 = v101;
        v139 = v82;
        sub_1D60F81B0(0, &qword_1EC883BB8, type metadata accessor for FormatDeprecationWarning, " packageIdentifier ");
        v103 = (v69 + *(v102 + 48));
        (*(v84 + 8))(v83, v70);
        (*(v143 + 8))(v67, v52);
        swift_unknownObjectRelease();
        v104 = v141;
        *v103 = v139;
        v103[1] = v104;
        swift_storeEnumTagMultiPayload();
        v105 = v123;
        sub_1D60F6D80(v69, v123, type metadata accessor for FormatDerivedDataWarningError);
LABEL_26:
        sub_1D60F6D80(v105, v68, type metadata accessor for FormatDerivedDataWarningError);
        return __swift_destroy_boxed_opaque_existential_1(v146);
      }

LABEL_19:
      (*(v143 + 8))(v67, v52);
      goto LABEL_22;
    }

    v140 = v53;
    if (v54)
    {
      LOBYTE(v148) = 1;
      sub_1D60F59FC();
      v67 = v145;
      v72 = v124;
      sub_1D72641EC();
      if (v72)
      {
        goto LABEL_19;
      }

      sub_1D5BBE0A8();
      v74 = v49;
      v147 = 0;
      sub_1D5B99688(&qword_1EDF3C830, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
      v75 = v129;
      sub_1D726431C();
      v89 = v143;
      v90 = v148;
      v147 = 1;
      v91 = sub_1D72642BC();
      v92 = v75;
      v110 = *(v128 + 8);
      v111 = v91;
      v143 = v112;
      v110(v74, v92);
      (*(v89 + 8))(v145, v144);
      swift_unknownObjectRelease();
      v109 = v121;
      *v121 = v90;
      v109[1] = v111;
      v109[2] = v143;
    }

    else
    {
      LOBYTE(v148) = 0;
      sub_1D60F5A50();
      v57 = v145;
      v63 = v124;
      sub_1D72641EC();
      if (v63)
      {
LABEL_13:
        (*(v143 + 8))(v57, v52);
        goto LABEL_22;
      }

      sub_1D5BBE0A8();
      v147 = 0;
      sub_1D5B99688(&qword_1EDF3C830, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
      v64 = v127;
      sub_1D726431C();
      v85 = v148;
      v147 = 1;
      v86 = v48;
      v87 = sub_1D72642BC();
      v88 = (v143 + 8);
      v106 = *(v125 + 8);
      v107 = v87;
      v143 = v108;
      v106(v86, v64);
      (*v88)(v145, v52);
      swift_unknownObjectRelease();
      v109 = v120;
      *v120 = v85;
      v109[1] = v107;
      v109[2] = v143;
    }

    swift_storeEnumTagMultiPayload();
    v100 = v109;
    goto LABEL_25;
  }

  return __swift_destroy_boxed_opaque_existential_1(v146);
}

void sub_1D60F6BE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1D60F6C48(uint64_t a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  if (v4 == v3 >> 1)
  {
    v5 = type metadata accessor for FormatSlotDefinitionItemSet(0);
    v6 = *(*(v5 - 8) + 56);
    v7 = v5;
    v8 = a1;
    v9 = 1;
  }

  else
  {
    if (v4 >= (v3 >> 1))
    {
      __break(1u);
      return;
    }

    v10 = v1[1];
    v11 = type metadata accessor for FormatSlotDefinitionItemSet(0);
    v12 = *(v11 - 8);
    sub_1D60F95B4(v10 + *(v12 + 72) * v4, a1, type metadata accessor for FormatSlotDefinitionItemSet);
    v1[1] = v10;
    v1[2] = v4 + 1;
    v1[3] = v3;
    v6 = *(v12 + 56);
    v8 = a1;
    v9 = 0;
    v7 = v11;
  }

  v6(v8, v9, 1, v7);
}

uint64_t sub_1D60F6D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D60F6DE8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D60F6E1C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D60F6E50()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D60F6E84()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D60F6EB8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D60F6EEC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 11;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FormatDerivedDataWarningError.errorDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FormatDeprecationWarning(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FormatDerivedDataWarningError(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D60F95B4(v1, v9, type metadata accessor for FormatDerivedDataWarningError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v18 = *v9;
    if (EnumCaseMultiPayload)
    {

      v39 = 0;
      v40 = 0xE000000000000000;
      sub_1D7263D4C();
      v33 = *(v18 + 16);

      v38 = v33;
      v34 = sub_1D72644BC();
      v36 = v35;

      v39 = v34;
      v40 = v36;
      v16 = "' localizations for strings";
      v17 = 0xD00000000000002ALL;
    }

    else
    {

      v39 = 0;
      v40 = 0xE000000000000000;
      sub_1D7263D4C();
      v19 = *(v18 + 16);

      v38 = v19;
      v20 = sub_1D72644BC();
      v22 = v21;

      v39 = v20;
      v40 = v22;
      v16 = "ations entries for strings";
      v17 = 0xD00000000000001DLL;
    }

LABEL_10:
    v30 = v16 | 0x8000000000000000;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      sub_1D60F81B0(0, &qword_1EC883BB8, type metadata accessor for FormatDeprecationWarning, " packageIdentifier ");

      sub_1D60F6D80(v9, v5, type metadata accessor for FormatDeprecationWarning);
      v31 = FormatDeprecationWarning.message.getter();
      sub_1D60F7F38(v5, type metadata accessor for FormatDeprecationWarning);
      return v31;
    }

    v11 = *v9;

    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1D7263D4C();
    v12 = *(v11 + 16);

    v38 = v12;
    v13 = sub_1D72644BC();
    v15 = v14;

    v39 = v13;
    v40 = v15;
    v16 = "f keys found, expected one.";
    v17 = 0xD00000000000001FLL;
    goto LABEL_10;
  }

  v24 = *v9;
  v23 = v9[1];
  v25 = v9[2];

  v39 = 0;
  v40 = 0xE000000000000000;
  sub_1D7263D4C();
  v26 = *(v24 + 16);

  v38 = v26;
  v27 = sub_1D72644BC();
  v29 = v28;

  v39 = v27;
  v40 = v29;
  MEMORY[0x1DA6F9910](0x676E697373696D20, 0xEA00000000002720);
  MEMORY[0x1DA6F9910](v23, v25);

  v30 = 0x80000001D73C9800;
  v17 = 0xD00000000000001BLL;
LABEL_11:
  MEMORY[0x1DA6F9910](v17, v30);
  return v39;
}

unint64_t FormatDerivedDataWarningError.errorHint.getter()
{
  v1 = v0;
  sub_1D60F7EE0(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v94 - v8;
  v10 = type metadata accessor for FormatDeprecationWarning(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FormatDerivedDataWarningError(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D60F95B4(v1, v17, type metadata accessor for FormatDerivedDataWarningError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v66 = *v17;

      v100 = 0;
      v101 = 0xE000000000000000;
      sub_1D7263D4C();

      v100 = 0xD000000000000024;
      v101 = 0x80000001D73C99F0;
      v97 = v66;

      sub_1D60F7F98(&v97);

      v67 = v97;
      v68 = *(v97 + 16);
      if (v68)
      {
        v99 = MEMORY[0x1E69E7CC0];
        sub_1D5BFC364(0, v68, 0);
        v22 = v99;
        v96 = v67;
        v69 = (v67 + 40);
        do
        {
          v70 = *(v69 - 1);
          v71 = *v69;
          v97 = 0x2220A280E2;
          v98 = 0xA500000000000000;

          MEMORY[0x1DA6F9910](v70, v71);
          MEMORY[0x1DA6F9910](34, 0xE100000000000000);

          v72 = v97;
          v73 = v98;
          v99 = v22;
          v75 = *(v22 + 16);
          v74 = *(v22 + 24);
          if (v75 >= v74 >> 1)
          {
            sub_1D5BFC364((v74 > 1), v75 + 1, 1);
            v22 = v99;
          }

          *(v22 + 16) = v75 + 1;
          v76 = v22 + 16 * v75;
          *(v76 + 32) = v72;
          *(v76 + 40) = v73;
          v69 += 2;
          --v68;
        }

        while (v68);
        goto LABEL_31;
      }
    }

    else
    {
      v31 = *v17;

      v100 = 0;
      v101 = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD00000000000007BLL, 0x80000001D73C9A20);
      v97 = v31;

      sub_1D60F7F98(&v97);

      v32 = v97;
      v33 = *(v97 + 16);
      if (v33)
      {
        v99 = MEMORY[0x1E69E7CC0];
        sub_1D5BFC364(0, v33, 0);
        v22 = v99;
        v96 = v32;
        v34 = (v32 + 40);
        do
        {
          v35 = *(v34 - 1);
          v36 = *v34;
          v97 = 547520738;
          v98 = 0xA400000000000000;

          MEMORY[0x1DA6F9910](v35, v36);

          v37 = v97;
          v38 = v98;
          v99 = v22;
          v40 = *(v22 + 16);
          v39 = *(v22 + 24);
          if (v40 >= v39 >> 1)
          {
            sub_1D5BFC364((v39 > 1), v40 + 1, 1);
            v22 = v99;
          }

          *(v22 + 16) = v40 + 1;
          v41 = v22 + 16 * v40;
          *(v41 + 32) = v37;
          *(v41 + 40) = v38;
          v34 += 2;
          --v33;
        }

        while (v33);
        goto LABEL_31;
      }
    }

LABEL_32:

    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v43 = *v17;
    v42 = v17[1];
    v44 = v17[2];

    v100 = 0;
    v101 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0x20676E697373694DLL, 0xE900000000000027);
    MEMORY[0x1DA6F9910](v42, v44);
    MEMORY[0x1DA6F9910](0xD00000000000001ELL, 0x80000001D73C9930);
    v97 = v43;

    sub_1D60F7F98(&v97);

    v45 = v97;
    v46 = *(v97 + 16);
    if (v46)
    {
      v95 = v42;
      v96 = v44;
      v99 = MEMORY[0x1E69E7CC0];
      sub_1D5BFC364(0, v46, 0);
      v47 = v99;
      v94[1] = v45;
      v48 = (v45 + 40);
      do
      {
        v49 = *(v48 - 1);
        v50 = *v48;
        v97 = 0x2220A280E2;
        v98 = 0xA500000000000000;

        MEMORY[0x1DA6F9910](v49, v50);
        MEMORY[0x1DA6F9910](34, 0xE100000000000000);

        v52 = v97;
        v51 = v98;
        v99 = v47;
        v54 = *(v47 + 16);
        v53 = *(v47 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_1D5BFC364((v53 > 1), v54 + 1, 1);
          v47 = v99;
        }

        *(v47 + 16) = v54 + 1;
        v55 = v47 + 16 * v54;
        *(v55 + 32) = v52;
        *(v55 + 40) = v51;
        v48 += 2;
        --v46;
      }

      while (v46);

      v42 = v95;
      v44 = v96;
    }

    else
    {

      v47 = MEMORY[0x1E69E7CC0];
    }

    v97 = v47;
    sub_1D5BBE0A8();
    sub_1D60F805C(&qword_1EDF3C840, sub_1D5BBE0A8, MEMORY[0x1E69E6310]);
    v80 = sub_1D7261F3C();
    v82 = v81;

    MEMORY[0x1DA6F9910](v80, v82);

    MEMORY[0x1DA6F9910](0xD000000000000071, 0x80000001D73C9950);
    MEMORY[0x1DA6F9910](v42, v44);

    MEMORY[0x1DA6F9910](0xD000000000000016, 0x80000001D73C99D0);
    return v100;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v19 = *v17;

    v100 = 0;
    v101 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD000000000000061, 0x80000001D73C98C0);
    v97 = v19;

    sub_1D60F7F98(&v97);

    v20 = v97;
    v21 = *(v97 + 16);
    if (v21)
    {
      v99 = MEMORY[0x1E69E7CC0];
      sub_1D5BFC364(0, v21, 0);
      v22 = v99;
      v96 = v20;
      v23 = (v20 + 40);
      do
      {
        v24 = *(v23 - 1);
        v25 = *v23;
        v97 = 547520738;
        v98 = 0xA400000000000000;

        MEMORY[0x1DA6F9910](v24, v25);

        v26 = v97;
        v27 = v98;
        v99 = v22;
        v29 = *(v22 + 16);
        v28 = *(v22 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1D5BFC364((v28 > 1), v29 + 1, 1);
          v22 = v99;
        }

        *(v22 + 16) = v29 + 1;
        v30 = v22 + 16 * v29;
        *(v30 + 32) = v26;
        *(v30 + 40) = v27;
        v23 += 2;
        --v21;
      }

      while (v21);
LABEL_31:

LABEL_33:
      v97 = v22;
      sub_1D5BBE0A8();
      sub_1D60F805C(&qword_1EDF3C840, sub_1D5BBE0A8, MEMORY[0x1E69E6310]);
      v77 = sub_1D7261F3C();
      v79 = v78;

      MEMORY[0x1DA6F9910](v77, v79);

      return v100;
    }

    goto LABEL_32;
  }

  sub_1D60F81B0(0, &qword_1EC883BB8, type metadata accessor for FormatDeprecationWarning, " packageIdentifier ");

  sub_1D60F6D80(v17, v13, type metadata accessor for FormatDeprecationWarning);
  v56 = &v13[*(v10 + 24)];
  v57 = *(v56 + 1);
  if (v57)
  {
    v58 = *v56;
    v100 = 0;
    v101 = 0xE000000000000000;
    sub_1D7263D4C();
    v59 = FormatDeprecationWarning.message.getter();
    v61 = v60;

    v100 = v59;
    v101 = v61;
    MEMORY[0x1DA6F9910](0x2074410A0A3ALL, 0xE600000000000000);
    sub_1D60F95B4(&v13[*(v10 + 28)], v9, sub_1D60F7EE0);
    v62 = sub_1D725A90C();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v9, 1, v62) == 1)
    {
      v64 = 7104878;
      sub_1D60F7F38(v9, sub_1D60F7EE0);
      v65 = 0xE300000000000000;
    }

    else
    {
      v64 = sub_1D725A8AC();
      v65 = v89;
      (*(v63 + 8))(v9, v62);
    }

    MEMORY[0x1DA6F9910](v64, v65);

    MEMORY[0x1DA6F9910](0x657361656C500A0ALL, 0xED00002065737520);
    MEMORY[0x1DA6F9910](v58, v57);
    v90 = 0x64616574736E6920;
    v91 = 0xE90000000000002ELL;
  }

  else
  {
    v100 = 0;
    v101 = 0xE000000000000000;
    sub_1D7263D4C();
    v84 = FormatDeprecationWarning.message.getter();
    MEMORY[0x1DA6F9910](v84);

    MEMORY[0x1DA6F9910](0x2074410A0A3ALL, 0xE600000000000000);
    sub_1D60F95B4(&v13[*(v10 + 28)], v5, sub_1D60F7EE0);
    v85 = sub_1D725A90C();
    v86 = *(v85 - 8);
    if ((*(v86 + 48))(v5, 1, v85) == 1)
    {
      v87 = 7104878;
      sub_1D60F7F38(v5, sub_1D60F7EE0);
      v88 = 0xE300000000000000;
    }

    else
    {
      v87 = sub_1D725A8AC();
      v88 = v92;
      (*(v86 + 8))(v5, v85);
    }

    MEMORY[0x1DA6F9910](v87, v88);

    v90 = 0xD000000000000044;
    v91 = 0x80000001D73C9870;
  }

  MEMORY[0x1DA6F9910](v90, v91);
  v93 = v100;
  sub_1D60F7F38(v13, type metadata accessor for FormatDeprecationWarning);
  return v93;
}

void sub_1D60F7EE0(uint64_t a1)
{
  if (!qword_1EDF17F38)
  {
    sub_1D725A90C();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17F38);
    }
  }
}

uint64_t sub_1D60F7F38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D60F7F98(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D62FF9B4(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1D60F8920(v4);
  *a1 = v2;
}

uint64_t sub_1D60F8004(uint64_t a1)
{
  result = sub_1D60F805C(&qword_1EC883C00, type metadata accessor for FormatDerivedDataWarningError, &protocol conformance descriptor for FormatDerivedDataWarningError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D60F805C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D60F80A4(uint64_t a1)
{
  sub_1D60F81B0(319, &qword_1EC883C18, sub_1D5BBE0A8, "environments packageIdentifier ");
  if (v1 <= 0x3F)
  {
    sub_1D60F81B0(319, &qword_1EC883C20, sub_1D5BBE0A8, " packageIdentifier ");
    if (v2 <= 0x3F)
    {
      sub_1D60F8220(319);
      if (v3 <= 0x3F)
      {
        sub_1D60F81B0(319, &qword_1EC883BB8, type metadata accessor for FormatDeprecationWarning, " packageIdentifier ");
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1D60F81B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D60F8220(uint64_t a1)
{
  if (!qword_1EC883C28)
  {
    sub_1D5BBE0A8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC883C28);
    }
  }
}

unint64_t sub_1D60F82F4()
{
  result = qword_1EC883C30;
  if (!qword_1EC883C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C30);
  }

  return result;
}

unint64_t sub_1D60F834C()
{
  result = qword_1EC883C38;
  if (!qword_1EC883C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C38);
  }

  return result;
}

unint64_t sub_1D60F83A4()
{
  result = qword_1EC883C40;
  if (!qword_1EC883C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C40);
  }

  return result;
}

unint64_t sub_1D60F83FC()
{
  result = qword_1EC883C48;
  if (!qword_1EC883C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C48);
  }

  return result;
}

unint64_t sub_1D60F8454()
{
  result = qword_1EC883C50;
  if (!qword_1EC883C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C50);
  }

  return result;
}

unint64_t sub_1D60F84AC()
{
  result = qword_1EC883C58;
  if (!qword_1EC883C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C58);
  }

  return result;
}

unint64_t sub_1D60F8504()
{
  result = qword_1EC883C60;
  if (!qword_1EC883C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C60);
  }

  return result;
}

unint64_t sub_1D60F855C()
{
  result = qword_1EC883C68;
  if (!qword_1EC883C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C68);
  }

  return result;
}

unint64_t sub_1D60F85B4()
{
  result = qword_1EC883C70;
  if (!qword_1EC883C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C70);
  }

  return result;
}

unint64_t sub_1D60F860C()
{
  result = qword_1EC883C78;
  if (!qword_1EC883C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C78);
  }

  return result;
}

unint64_t sub_1D60F8664()
{
  result = qword_1EC883C80;
  if (!qword_1EC883C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C80);
  }

  return result;
}

unint64_t sub_1D60F86BC()
{
  result = qword_1EC883C88;
  if (!qword_1EC883C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C88);
  }

  return result;
}

unint64_t sub_1D60F8714()
{
  result = qword_1EC883C90;
  if (!qword_1EC883C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C90);
  }

  return result;
}

unint64_t sub_1D60F876C()
{
  result = qword_1EC883C98;
  if (!qword_1EC883C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C98);
  }

  return result;
}

unint64_t sub_1D60F87C4()
{
  result = qword_1EC883CA0;
  if (!qword_1EC883CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883CA0);
  }

  return result;
}

unint64_t sub_1D60F881C()
{
  result = qword_1EC883CA8;
  if (!qword_1EC883CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883CA8);
  }

  return result;
}

unint64_t sub_1D60F8874()
{
  result = qword_1EC883CB0;
  if (!qword_1EC883CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883CB0);
  }

  return result;
}

unint64_t sub_1D60F88CC()
{
  result = qword_1EC883CB8;
  if (!qword_1EC883CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883CB8);
  }

  return result;
}

void sub_1D60F8920(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D726449C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D726276C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1D60F8AE8(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D60F8A18(0, v2, 1, a1);
  }
}

uint64_t sub_1D60F8A18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    v10 = *v9;
    v11 = v9[1];
    v12 = v8;
    v13 = v7;
    while (1)
    {
      result = *(v13 - 2);
      v14 = result == v10 && *(v13 - 1) == v11;
      if (v14 || (result = sub_1D72646CC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v10 = *v13;
      v11 = v13[1];
      *v13 = *(v13 - 1);
      *(v13 - 1) = v11;
      *(v13 - 2) = v10;
      v13 -= 2;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D60F8AE8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_1D62FF50C(v8);
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1D60F90C4((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      if (*v11 == *v10 && v11[1] == v10[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_1D72646CC();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (*(v14 - 1) == v14[1] && *v14 == v16)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ sub_1D72646CC()))
          {
            goto LABEL_23;
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D698BA94(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_1D698BA94((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1D60F90C4((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D62FF50C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_1D62FF480(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = *(v36 - 2) == v33 && *(v36 - 1) == v34;
    if (v37 || (sub_1D72646CC() & 1) == 0)
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_1D60F90C4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (!v16 && (sub_1D72646CC() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = *(v6 - 2) == v19 && *(v6 - 1) == v20;
      if (!v21 && (sub_1D72646CC() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1D60F92EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000025 && 0x80000001D73C9B00 == a2;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000028 && 0x80000001D73C9B30 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000030 && 0x80000001D73C9B60 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000027 && 0x80000001D73C9BA0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D73C9BD0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D60F949C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C9AE0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D60F95B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static CoverChannelViewLayout.make18ColumnCatalogLayout(context:factories:options:)(uint64_t a1)
{
  v2 = sub_1D725A36C();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v9 = a1;
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D7378], v4);
  sub_1D60FB214(0, &qword_1EC883CC0, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  return sub_1D725A4CC();
}

uint64_t sub_1D60F9758(uint64_t a1, void *a2)
{
  sub_1D60FB390(0, &qword_1EC883CD8, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v23[-v8];
  v10 = a2[23];
  v11 = a2[24];
  __swift_project_boxed_opaque_existential_1(a2 + 20, v10);
  v12 = (*(v11 + 48))(v10, v11);
  v13 = a2[23];
  v14 = a2[24];
  __swift_project_boxed_opaque_existential_1(a2 + 20, v13);
  v15 = (*(v14 + 56))(v13, v14);
  v16 = v12 + v15 + v15;
  v17 = sub_1D60FB040(a2);
  if (a2[9])
  {
    v18 = 0.0;
  }

  else
  {
    v18 = 20.0;
  }

  v19 = v17;
  sub_1D726334C();
  [v19 boundingRectWithSize:35 options:0 context:?];
  v20 = v18 + v16 + 20.0 + CGRectGetWidth(v30) + 10.0;
  v29 = a1;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D74A8], v5);
  v24 = v20;
  v25 = a2;
  v26 = 0x4024000000000000;
  v27 = v19;
  v28 = v18;
  v21 = MEMORY[0x1E69D7150];
  sub_1D60FB214(0, &qword_1EC883CE0, MEMORY[0x1E69D7150]);
  sub_1D60FB298(&qword_1EC883CE8, &qword_1EC883CE0, v21, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D60F9A08()
{
  result = qword_1EC883CC8;
  if (!qword_1EC883CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883CC8);
  }

  return result;
}

unint64_t sub_1D60F9A5C()
{
  result = qword_1EC883CD0;
  if (!qword_1EC883CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883CD0);
  }

  return result;
}

uint64_t sub_1D60F9AB0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v44 = a2;
  v45 = a3;
  sub_1D60FB390(0, &qword_1EC883CD8, MEMORY[0x1E69D74B0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = (v38 - v14);
  v52 = a1;
  v16 = swift_allocObject();
  *(v16 + 16) = 0x4024000000000000;
  *v15 = v16;
  v46 = *MEMORY[0x1E69D7488];
  v17 = *(v12 + 104);
  v17(v15);
  v18 = MEMORY[0x1E69D6F38];
  sub_1D60FB214(0, &qword_1EC883CF0, MEMORY[0x1E69D6F38]);
  v20 = v19;
  v21 = sub_1D60FB298(&qword_1EC883CF8, &qword_1EC883CF0, v18, MEMORY[0x1E69D6F40]);
  sub_1D7259A9C();
  v22 = *(v12 + 8);
  v22(v15, v11);
  v52 = a1;
  v23 = *MEMORY[0x1E69D74A8];
  v39 = v17;
  (v17)(v15, v23, v11);
  v38[1] = v21;
  v43 = v20;
  sub_1D7259A2C();
  v40 = v22;
  v41 = v12 + 8;
  v22(v15, v11);
  v52 = a1;
  v42 = a1;
  v24 = swift_allocObject();
  *(v24 + 16) = 0x4030000000000000;
  *v15 = v24;
  (v17)(v15, v46, v11);
  sub_1D7259A9C();
  v22(v15, v11);
  v52 = a1;
  sub_1D5EF9444(0);
  v26 = v25;
  v27 = swift_allocBox();
  v29 = v28;
  v30 = *(v26 + 48);
  v31 = *MEMORY[0x1E69D71E8];
  v32 = sub_1D725A09C();
  v33 = *(*(v32 - 8) + 104);
  v33(v29, v31, v32);
  v33(v29 + v30, *MEMORY[0x1E69D7208], v32);
  *v15 = v27;
  v34 = v39;
  (v39)(v15, *MEMORY[0x1E69D7468], v11);
  v47 = a4;
  v48 = v44;
  v49 = a5;
  v50 = v45;
  v51 = a6;
  sub_1D72599EC();
  v35 = v40;
  v40(v15, v11);
  v52 = v42;
  v36 = swift_allocObject();
  *(v36 + 16) = 0x404C000000000000;
  *v15 = v36;
  (v34)(v15, v46, v11);
  sub_1D7259A9C();
  return v35(v15, v11);
}

uint64_t sub_1D60F9F28(uint64_t *a1)
{
  sub_1D60FB390(0, &qword_1EC883CD8, MEMORY[0x1E69D74B0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (v15 - v6);
  v15[1] = a1;
  swift_getKeyPath();
  v8 = sub_1D725A35C();
  v9 = swift_allocBox();
  v11 = v10;
  v12 = *MEMORY[0x1E69D7340];
  v13 = sub_1D725A34C();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  (*(*(v8 - 8) + 104))(v11, *MEMORY[0x1E69D7360], v8);
  *v7 = v9;
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7478], v3);
  sub_1D60FB298(&qword_1EC883CF8, &qword_1EC883CF0, MEMORY[0x1E69D6F38], MEMORY[0x1E69D6F40]);
  sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  sub_1D7259A7C();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D60FA1C4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v52 = a1;
  v53 = a3;
  sub_1D60FB390(0, &qword_1EC883CD8, MEMORY[0x1E69D74B0]);
  v51 = v11;
  v54 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v47 - v13);
  v58 = a1;
  sub_1D5EF9444(0);
  v16 = v15;
  v17 = swift_allocBox();
  v19 = v18;
  v49 = *(v16 + 48);
  v50 = v17;
  v20 = sub_1D725A09C();
  v21 = swift_allocBox();
  v23 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *v23 = v24;
  v25 = *MEMORY[0x1E69D71F0];
  v26 = *(*(v20 - 8) + 104);
  v26(v23, v25, v20);
  *v19 = v21;
  v26(v19, *MEMORY[0x1E69D71F8], v20);
  v27 = swift_allocObject();
  v28 = a2;
  v48 = a2;
  v29 = *(a2 + 184);
  v30 = *(v28 + 192);
  __swift_project_boxed_opaque_existential_1((v28 + 160), v29);
  *(v27 + 16) = (*(v30 + 32))(v29, v30);
  v31 = v49;
  *(v19 + v49) = v27;
  v26((v19 + v31), v25, v20);
  v32 = v51;
  *v14 = v50;
  v33 = v54;
  v34 = *(v54 + 104);
  v34(v14, *MEMORY[0x1E69D7468], v32);
  v57 = v48;
  v35 = MEMORY[0x1E69D6F38];
  sub_1D60FB214(0, &qword_1EC883CF0, MEMORY[0x1E69D6F38]);
  sub_1D60FB298(&qword_1EC883CF8, &qword_1EC883CF0, v35, MEMORY[0x1E69D6F40]);
  sub_1D72599EC();
  v36 = *(v33 + 8);
  v36(v14, v32);
  v54 = v33 + 8;
  v37 = v52;
  v58 = v52;
  v38 = swift_allocObject();
  *(v38 + 16) = a5;
  *v14 = v38;
  v34(v14, *MEMORY[0x1E69D7480], v32);
  sub_1D7259A9C();
  v36(v14, v32);
  v58 = v37;
  v34(v14, *MEMORY[0x1E69D74A8], v32);
  sub_1D60FB31C(0);
  sub_1D60FB390(0, &qword_1EC883D08, MEMORY[0x1E69D70D8]);
  v40 = v39;
  v41 = *(v39 - 8);
  v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1D7273AE0;
  v44 = *MEMORY[0x1E69D7070];
  sub_1D60FB390(0, &qword_1EC883D10, MEMORY[0x1E69D7078]);
  (*(*(v45 - 8) + 104))(v43 + v42, v44, v45);
  (*(v41 + 104))(v43 + v42, *MEMORY[0x1E69D7080], v40);
  v55 = v53;
  v56 = a6;
  sub_1D72599EC();

  return (v36)(v14, v32);
}

uint64_t sub_1D60FA730(uint64_t a1, uint64_t a2)
{
  sub_1D60FB390(0, &qword_1EC883CD8, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v29 - v8);
  v10 = sub_1D7261B9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29[1] = a1;
  swift_getKeyPath();
  v15 = *(a2 + 200);
  if (*(v15 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), *v14 = sub_1D726308C(), (*(v11 + 104))(v14, *MEMORY[0x1E69E8018], v10), v16 = sub_1D7261BBC(), result = (*(v11 + 8))(v14, v10), (v16))
  {
    v18 = swift_allocObject();
    v19 = *(v15 + *(*v15 + 136));
    *(v18 + 16) = v19;
    *v9 = v18;
    (*(v6 + 104))(v9, *MEMORY[0x1E69D7440], v5);
    sub_1D60FB31C(0);
    sub_1D60FB390(0, &qword_1EC883D08, MEMORY[0x1E69D70D8]);
    v21 = v20;
    v22 = *(v20 - 8);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7273AE0;
    v25 = *MEMORY[0x1E69D7068];
    sub_1D60FB390(0, &qword_1EC883D10, MEMORY[0x1E69D7078]);
    (*(*(v26 - 8) + 104))(v24 + v23, v25, v26);
    (*(v22 + 104))(v24 + v23, *MEMORY[0x1E69D7080], v21);
    v27 = MEMORY[0x1E69D6F38];
    sub_1D60FB214(0, &qword_1EC883CF0, MEMORY[0x1E69D6F38]);
    sub_1D60FB298(&qword_1EC883CF8, &qword_1EC883CF0, v27, MEMORY[0x1E69D6F40]);
    sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
    v28 = v19;
    sub_1D7259A7C();

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D60FAB84(uint64_t a1, void *a2, double a3)
{
  v40 = a2;
  v47 = a1;
  sub_1D60FB390(0, &qword_1EC883CD8, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  v42 = v6;
  v43 = v8;
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = (&v35 - v10);
  v48 = a1;
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v41 = v11;
  *v11 = v12;
  v13 = *MEMORY[0x1E69D73E8];
  v14 = *(v8 + 104);
  v45 = v8 + 104;
  v46 = v14;
  v14(v11, v13, v7);
  sub_1D60FB31C(0);
  sub_1D60FB390(0, &qword_1EC883D08, MEMORY[0x1E69D70D8]);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v39 = v20;
  *(v20 + 16) = xmmword_1D7270C10;
  v21 = v20 + v19;
  *(v20 + v19) = a3;
  v37 = *MEMORY[0x1E69D7240];
  v22 = v37;
  v23 = sub_1D725A13C();
  v24 = *(v23 - 8);
  v36 = *(v24 + 104);
  v38 = v24 + 104;
  v36(v21, v22, v23);
  v25 = *MEMORY[0x1E69D72D8];
  v26 = sub_1D725A29C();
  v27 = *(*(v26 - 8) + 104);
  v27(v21, v25, v26);
  v28 = *(v17 + 104);
  v28(v21, *MEMORY[0x1E69D6FC0], v16);
  *(v21 + v18) = 0x4008000000000000;
  v36(v21 + v18, v37, v23);
  v27(v21 + v18, v25, v26);
  v28(v21 + v18, *MEMORY[0x1E69D6FD0], v16);
  v29 = MEMORY[0x1E69D6F38];
  sub_1D60FB214(0, &qword_1EC883CF0, MEMORY[0x1E69D6F38]);
  sub_1D60FB298(&qword_1EC883CF8, &qword_1EC883CF0, v29, MEMORY[0x1E69D6F40]);
  sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  v30 = v40;
  v31 = v41;
  sub_1D7259A7C();

  v32 = v42;
  v33 = *(v43 + 8);
  v33(v31, v42);
  v48 = v47;
  swift_getKeyPath();
  v46(v31, *MEMORY[0x1E69D7470], v32);
  sub_1D7259A7C();

  return (v33)(v31, v32);
}

uint64_t sub_1D60FB040(uint64_t a1)
{
  v2 = sub_1D7261B9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = qword_1EDF347F8;
  if ((*(a1 + 72) & 1) == 0)
  {
    v8 = *(a1 + 224);
    if (*(v8 + qword_1EDF347F8))
    {
      return *(v8 + *(*v8 + 136));
    }

    sub_1D5B5DA7C();
    *v6 = sub_1D726308C();
    (*(v3 + 104))(v6, *MEMORY[0x1E69E8018], v2);
    a1 = sub_1D7261BBC();
    v9 = *(v3 + 8);
    v3 += 8;
    v9(v6, v2);
    if (a1)
    {
      return *(v8 + *(*v8 + 136));
    }

    __break(1u);
  }

  v8 = *(a1 + 232);
  if (*(v8 + v7))
  {
    return *(v8 + *(*v8 + 136));
  }

  sub_1D5B5DA7C();
  *v6 = sub_1D726308C();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8018], v2);
  v10 = sub_1D7261BBC();
  result = (*(v3 + 8))(v6, v2);
  if (v10)
  {
    return *(v8 + *(*v8 + 136));
  }

  __break(1u);
  return result;
}

void sub_1D60FB214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for CoverChannelViewLayout;
    v8[1] = &type metadata for CoverChannelViewLayout.Attributes;
    v8[2] = sub_1D60F9A08();
    v8[3] = sub_1D60F9A5C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D60FB298(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D60FB214(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D60FB31C(uint64_t a1)
{
  if (!qword_1EC883D00)
  {
    sub_1D60FB390(255, &qword_1EC883D08, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC883D00);
    }
  }
}

void sub_1D60FB390(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D60F9A08();
    v7 = a3(a1, &type metadata for CoverChannelViewLayout, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t FormatSplitBackground.xInsets.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void sub_1D60FB43C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];

  *a2 = v3;
  a2[1] = v4;
}

__n128 FormatSplitBackground.xInsets.setter(__n128 *a1)
{

  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t FormatSplitBackground.leftSide.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v9 = *(v1 + 64);
  v10 = v2;
  v11 = *(v1 + 96);
  v3 = v11;
  v4 = *(v1 + 48);
  v8[0] = *(v1 + 32);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D60FB55C(v8, v7);
}

uint64_t FormatSplitBackground.rightSide.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 152);
  v9 = *(v1 + 136);
  v10 = v3;
  v11 = *(v1 + 168);
  v4 = v11;
  v8[0] = *(v1 + 104);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_1D60FB55C(v8, v7);
}

__n128 sub_1D60FB644@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 5);
  v32 = *(v1 + 4);
  v33 = v7;
  v34 = *(v1 + 96);
  v8 = *(v1 + 3);
  v30 = *(v1 + 2);
  v31 = v8;
  v9 = *(v1 + 13);
  v10 = *(v1 + 15);
  v11 = *(v1 + 17);
  v12 = *(v1 + 19);
  v39 = *(v1 + 168);
  v37 = v11;
  v38 = v12;
  v35 = v9;
  v36 = v10;
  v13 = v30;
  v26 = v32;
  v27 = v31;
  v14 = v33;
  v28 = v3;
  v24 = v33;
  v25 = *(&v30 + 1);
  v23 = *(&v33 + 1);

  if (v34)
  {
    sub_1D60FB55C(&v30, v29);

    sub_1D5D615EC(v14, *(&v14 + 1));
    v15 = sub_1D600A03C(v13);
    sub_1D60FBD38(&v30);
    v16 = 1;
    LOBYTE(v29[0]) = 1;
  }

  else
  {
    sub_1D6E0CAE0(v29);
    v16 = 0;
    v15 = v29[0];
  }

  v17 = v35;
  v21 = v37;
  v22 = v36;
  v18 = v38;
  if (v39)
  {
    sub_1D60FB55C(&v35, v29);

    sub_1D5D615EC(v18, *(&v18 + 1));
    sub_1D600A03C(v17);
    sub_1D60FBD38(&v35);
    v19 = 1;
    LOBYTE(v29[0]) = 1;
  }

  else
  {
    sub_1D6E0CAE0(v29);
    v19 = 0;
  }

  *a1 = v28;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v15;
  *(a1 + 40) = v25;
  *(a1 + 48) = v27;
  *(a1 + 64) = v26;
  *(a1 + 80) = v24;
  *(a1 + 88) = v23;
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;
  result = v21;
  *(a1 + 120) = v22;
  *(a1 + 136) = v21;
  *(a1 + 152) = v18;
  *(a1 + 168) = v19;
  return result;
}

uint64_t _s8NewsFeed21FormatSplitBackgroundV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v6 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 5);
  v58[2] = *(a1 + 4);
  v58[3] = v8;
  v59 = *(a1 + 96);
  v9 = *(a1 + 3);
  v58[0] = *(a1 + 2);
  v58[1] = v9;
  v10 = *(a1 + 13);
  v11 = *(a1 + 15);
  v12 = *(a1 + 17);
  v13 = *(a1 + 19);
  v64 = *(a1 + 168);
  v62 = v12;
  v63 = v13;
  v60 = v10;
  v61 = v11;
  v14 = *a2;
  v16 = a2[1];
  v15 = a2[2];
  v17 = a2[3];
  v18 = *(a2 + 5);
  v65[2] = *(a2 + 4);
  v65[3] = v18;
  v66 = *(a2 + 96);
  v19 = *(a2 + 3);
  v65[0] = *(a2 + 2);
  v65[1] = v19;
  v20 = *(a2 + 13);
  v71 = *(a2 + 168);
  v21 = *(a2 + 19);
  v69 = *(a2 + 17);
  v70 = v21;
  v22 = *(a2 + 15);
  v67 = v20;
  v68 = v22;
  sub_1D633A310(v4, v14);
  if (v23 & 1) != 0 && (sub_1D633A310(v6, v16), (v24) && (sub_1D633A310(v5, v15), (v25) && (sub_1D633A310(v7, v17), (v26) && (v27 = *(a1 + 5), v51 = *(a1 + 4), v52 = v27, v53 = *(a1 + 96), v28 = *(a1 + 3), v49 = *(a1 + 2), v50 = v28, v29 = *(a2 + 5), v46 = *(a2 + 4), v47 = v29, v48 = *(a2 + 96), v30 = *(a2 + 3), v44 = *(a2 + 2), v45 = v30, sub_1D60FB55C(v58, &v39), sub_1D60FB55C(v65, &v39), v31 = _s8NewsFeed25FormatSplitBackgroundSideO2eeoiySbAC_ACtFZ_0(&v49, &v44), v54[2] = v46, v54[3] = v47, v55 = v48, v54[0] = v44, v54[1] = v45, sub_1D60FBD38(v54), v56[2] = v51, v56[3] = v52, v57 = v53, v56[0] = v49, v56[1] = v50, sub_1D60FBD38(v56), (v31))
  {
    v41 = v62;
    v42 = v63;
    v43 = v64;
    v39 = v60;
    v40 = v61;
    v36 = v69;
    v37 = v70;
    v38 = v71;
    v34 = v67;
    v35 = v68;
    sub_1D60FB55C(&v60, &v49);
    sub_1D60FB55C(&v67, &v49);
    v32 = _s8NewsFeed25FormatSplitBackgroundSideO2eeoiySbAC_ACtFZ_0(&v39, &v34);
    v46 = v36;
    v47 = v37;
    v48 = v38;
    v44 = v34;
    v45 = v35;
    sub_1D60FBD38(&v44);
    v51 = v41;
    v52 = v42;
    v53 = v43;
    v49 = v39;
    v50 = v40;
    sub_1D60FBD38(&v49);
  }

  else
  {
    v32 = 0;
  }

  return v32 & 1;
}

unint64_t sub_1D60FBA7C(uint64_t a1)
{
  result = sub_1D60FBAA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D60FBAA4()
{
  result = qword_1EC883D18;
  if (!qword_1EC883D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883D18);
  }

  return result;
}

unint64_t sub_1D60FBAF8(void *a1)
{
  a1[1] = sub_1D60FBB30();
  a1[2] = sub_1D60FBB84();
  result = sub_1D60FBBD8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D60FBB30()
{
  result = qword_1EDF0DEF8;
  if (!qword_1EDF0DEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DEF8);
  }

  return result;
}

unint64_t sub_1D60FBB84()
{
  result = qword_1EDF0DF00;
  if (!qword_1EDF0DF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DF00);
  }

  return result;
}

unint64_t sub_1D60FBBD8()
{
  result = qword_1EC883D20;
  if (!qword_1EC883D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883D20);
  }

  return result;
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1D60FBC74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 169))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D60FBCBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1D60FBD8C(uint64_t a1, __int128 *a2)
{
  v3 = a2[9];
  v101 = a2[8];
  v102[0] = v3;
  *(v102 + 9) = *(a2 + 153);
  v4 = a2[5];
  v97 = a2[4];
  v98 = v4;
  v5 = a2[6];
  v100 = a2[7];
  v99 = v5;
  v6 = a2[1];
  v93 = *a2;
  v94 = v6;
  v7 = a2[2];
  v96 = a2[3];
  v95 = v7;
  v8 = MEMORY[0x1E69E6F90];
  sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D7273AE0;
  sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v8);
  sub_1D5EA74B8(0);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7284F00;
  v14 = (v13 + v12);
  v15 = a2[9];
  v111 = a2[8];
  v112[0] = v15;
  *(v112 + 9) = *(a2 + 153);
  v16 = a2[5];
  v107 = a2[4];
  v108 = v16;
  v17 = a2[6];
  v110 = a2[7];
  v109 = v17;
  v18 = a2[1];
  v103 = *a2;
  v104 = v18;
  v19 = a2[2];
  v106 = a2[3];
  v105 = v19;
  enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0 = get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v103);
  v21 = 0;
  v22 = 0;
  if (enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0 != 1)
  {
    v21 = sub_1D6936F98(v104);
    v22 = v23;
  }

  sub_1D711F844(0x726F68636E412058, 0xE800000000000000, v21, v22, v14);
  v24 = type metadata accessor for FormatInspectionItem(0);
  v25 = *(*(v24 - 8) + 56);
  v25(v14, 0, 1, v24);
  v85[8] = v101;
  v86[0] = v102[0];
  *(v86 + 9) = *(v102 + 9);
  v85[4] = v97;
  v85[5] = v98;
  v85[6] = v99;
  v85[7] = v100;
  v85[0] = v93;
  v85[1] = v94;
  v85[2] = v95;
  v85[3] = v96;
  v26 = 0;
  v27 = 0;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v85) != 1)
  {

    v26 = sub_1D6936F98(v28);
    v27 = v29;
  }

  v30 = sub_1D711F844(0x737465736E492058, 0xEF297466654C2820, v26, v27, &v14[v11]);
  (v25)(&v14[v11], 0, 1, v24, v30);
  v83[8] = v101;
  v84[0] = v102[0];
  *(v84 + 9) = *(v102 + 9);
  v83[4] = v97;
  v83[5] = v98;
  v83[6] = v99;
  v83[7] = v100;
  v83[0] = v93;
  v83[1] = v94;
  v83[2] = v95;
  v83[3] = v96;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v83) == 1)
  {
    v31 = 0;
    v32 = 0;
  }

  else
  {

    v31 = sub_1D6936F98(v33);
    v32 = v34;
  }

  v35 = sub_1D711F844(0xD000000000000010, 0x80000001D73C9BF0, v31, v32, &v14[2 * v11]);
  (v25)(&v14[2 * v11], 0, 1, v24, v35);
  v81 = v101;
  v82[0] = v102[0];
  *(v82 + 9) = *(v102 + 9);
  v77 = v97;
  v78 = v98;
  v79 = v99;
  v80 = v100;
  v73 = v93;
  v74 = v94;
  v75 = v95;
  v76 = v96;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v73) == 1)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v36 = sub_1D6936F98(*(&v74 + 1));
    v37 = v38;
  }

  v39 = sub_1D711F844(0x73656572676544, 0xE700000000000000, v36, v37, &v14[3 * v11]);
  (v25)(&v14[3 * v11], 0, 1, v24, v39);
  v71 = v101;
  v72[0] = v102[0];
  *(v72 + 9) = *(v102 + 9);
  v67 = v97;
  v68 = v98;
  v69 = v99;
  v70 = v100;
  v64[0] = v93;
  v64[1] = v94;
  v65 = v95;
  v66 = v96;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v64) == 1)
  {
    v40 = -1;
    v41 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v44 = 0uLL;
  }

  else
  {
    v58 = v66;
    v60 = v65;
    v54 = v68;
    v56 = v67;
    v40 = v69;
    sub_1D60FB55C(&v65, v62);
    v44 = v54;
    v43 = v56;
    v42 = v58;
    v41 = v60;
  }

  v91[0] = v41;
  v91[1] = v42;
  v91[2] = v43;
  v91[3] = v44;
  v92 = v40;
  sub_1D7123DE0(0x646953207466654CLL, 0xE900000000000065, v91, &v14[4 * v11]);
  v25(&v14[4 * v11], 0, 1, v24);
  *&v63[32] = v101;
  *&v63[48] = v102[0];
  *&v63[57] = *(v102 + 9);
  v62[4] = v97;
  v62[5] = v98;
  *v63 = v99;
  *&v63[16] = v100;
  v62[0] = v93;
  v62[1] = v94;
  v62[2] = v95;
  v62[3] = v96;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v62) == 1)
  {
    v45 = -1;
    v46 = 0uLL;
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
  }

  else
  {
    v59 = *&v63[24];
    v61 = *&v63[8];
    v55 = *&v63[56];
    v57 = *&v63[40];
    v45 = v63[72];
    sub_1D60FB55C(&v63[8], v89);
    v46 = v59;
    v49 = v61;
    v48 = v55;
    v47 = v57;
  }

  v89[0] = v49;
  v89[1] = v46;
  v89[2] = v47;
  v89[3] = v48;
  v90 = v45;
  sub_1D7123DE0(0x6953207468676952, 0xEA00000000006564, v89, &v14[5 * v11]);
  v25(&v14[5 * v11], 0, 1, v24);
  sub_1D6795150(0x69562074696C7053, 0xEA00000000007765, 0, 0, v13, v87);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v9 + 56) = &type metadata for FormatInspectionGroup;
  *(v9 + 64) = &off_1F518B2C0;
  v50 = swift_allocObject();
  *(v9 + 32) = v50;
  v51 = v87[1];
  *(v50 + 16) = v87[0];
  *(v50 + 32) = v51;
  *(v50 + 48) = v88;
  v52 = sub_1D7073500(v9);
  swift_setDeallocating();
  sub_1D5F10AA0(v9 + 32);
  swift_deallocClassInstance();
  return v52;
}

uint64_t sub_1D60FC500(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x1E69E7CC0];
  sub_1D6998C58(0, v1, 0);
  v2 = v27;
  v3 = a1 + 64;
  result = sub_1D7263B7C();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v8 = *(a1 + 36);
  v25 = v1;
  v26 = v8;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v11 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v6 + 36))
    {
      goto LABEL_23;
    }

    v12 = *(*(v6 + 56) + 8 * v5);
    v14 = *(v27 + 16);
    v13 = *(v27 + 24);
    v15 = v6;

    if (v14 >= v13 >> 1)
    {
      result = sub_1D6998C58((v13 > 1), v14 + 1, 1);
    }

    *(v27 + 16) = v14 + 1;
    *(v27 + 8 * v14 + 32) = v12;
    v9 = 1 << *(v15 + 32);
    if (v5 >= v9)
    {
      goto LABEL_24;
    }

    v3 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v11);
    if ((v16 & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    v6 = v15;
    v17 = *(v15 + 36);
    v8 = v26;
    if (v26 != v17)
    {
      goto LABEL_26;
    }

    v18 = v16 & (-2 << (v5 & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v10 = v25;
    }

    else
    {
      v19 = v11 << 6;
      v20 = v11 + 1;
      v21 = (a1 + 72 + 8 * v11);
      v10 = v25;
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_1D5C25E1C(v5, v26, 0);
          v6 = a1;
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v5, v26, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v9;
    if (v7 == v10)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D60FC754(uint64_t a1, void *a2)
{
  v22 = type metadata accessor for FormatDerivedDataWarningError(0);
  v5 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v19 = v2;
    v23 = MEMORY[0x1E69E7CC0];
    sub_1D6998D98(0, v9, 0);
    v10 = v23;
    v11 = *(type metadata accessor for FormatDeprecationWarning(0) - 8);
    v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v21 = *(v11 + 72);
    sub_1D610AE40(0);
    v20 = v13;
    do
    {
      v14 = &v8[*(v20 + 48)];
      sub_1D610B210(v12, v8, type metadata accessor for FormatDeprecationWarning);
      v15 = a2[1];
      *v14 = *a2;
      *(v14 + 1) = v15;
      swift_storeEnumTagMultiPayload();
      v23 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);

      if (v17 >= v16 >> 1)
      {
        sub_1D6998D98((v16 > 1), v17 + 1, 1);
        v10 = v23;
      }

      *(v10 + 16) = v17 + 1;
      sub_1D610B500(v8, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, type metadata accessor for FormatDerivedDataWarningError);
      v12 += v21;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void sub_1D60FC98C(char *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v424 = a2;
  v420 = a3;
  v402 = a4;
  v401 = type metadata accessor for FormatFile(0);
  MEMORY[0x1EEE9AC00](v401, v8);
  v403 = &v391 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v404 = &v391 - v12;
  v13 = type metadata accessor for FormatPackage(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v405 = (&v391 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for FormatDerivedDataResultOptionReference(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v415 = &v391 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6107408(0);
  v400 = v19;
  v411 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v410 = &v391 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FormatSlotDefinitionItemSet(0);
  v396 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v397 = &v391 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v398 = &v391 - v27;
  v409 = type metadata accessor for FormatSlotDefinition(0);
  v414 = *(v409 - 8);
  MEMORY[0x1EEE9AC00](v409, v28);
  v399 = (&v391 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30, v31);
  v412 = &v391 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v408 = &v391 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v413 = (&v391 - v38);
  MEMORY[0x1EEE9AC00](v39, v40);
  v407 = &v391 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v406 = &v391 - v44;
  sub_1D5C4BC40(0, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
  v421 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v418 = (&v391 - v47);
  sub_1D5C4BC40(0, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
  v417 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v419 = (&v391 - v50);
  v428 = type metadata accessor for FormatDerivedDataOption(0);
  MEMORY[0x1EEE9AC00](v428, v51);
  v422 = &v391 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v431 = type metadata accessor for FormatCompilingSlotDefinition(0);
  v435 = *(v431 - 1);
  MEMORY[0x1EEE9AC00](v431, v53);
  v416 = (&v391 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v55, v56);
  v430 = (&v391 - v57);
  v58 = type metadata accessor for FormatCompilerProperty(0);
  v434 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58 - 8, v59);
  v432 = &v391 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v427 = type metadata accessor for FormatPropertyDefinition(0);
  v433 = *(v427 - 1);
  MEMORY[0x1EEE9AC00](v427, v61);
  v395 = &v391 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63, v64);
  v394 = &v391 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v393 = &v391 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v392 = &v391 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v426 = &v391 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v425 = &v391 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v438 = (&v391 - v80);
  v81 = type metadata accessor for FormatCompilerSlotDefinition(0);
  v437 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81 - 8, v82);
  v85 = &v391 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v439 = a1;
  v429 = &a1[OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions];
  v86 = *&a1[OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions + 8];
  v436 = *(v86 + 16);
  if (v436)
  {
    v87 = 0;
    v88 = MEMORY[0x1E69E7CC0];
    while (v87 < *(v86 + 16))
    {
      v89 = sub_1D610B210(v86 + ((v437[80] + 32) & ~v437[80]) + *(v437 + 9) * v87, v85, type metadata accessor for FormatCompilerSlotDefinition);
      if ((*(v85 + 8) & 0x8000000000000000) != 0)
      {
        goto LABEL_64;
      }

      MEMORY[0x1EEE9AC00](v89, v90);
      *(&v391 - 2) = v85;
      v92 = sub_1D5D6791C(sub_1D5D67AA0, (&v391 - 4), 0, v91);
      MEMORY[0x1EEE9AC00](v92, v93);
      v94 = v439;
      *(&v391 - 2) = v85;
      *(&v391 - 1) = v94;
      v95 = sub_1D5ECAE04(sub_1D6107470, (&v391 - 4), v92);
      v441 = v6;
      if (v6)
      {

        sub_1D610B0A8(v85, type metadata accessor for FormatCompilerSlotDefinition);
        return;
      }

      v5 = v95;
      v440 = v87;

      v87 = v85;
      sub_1D610B0A8(v85, type metadata accessor for FormatCompilerSlotDefinition);
      v96 = *(v5 + 2);
      v6 = *(v88 + 2);
      v97 = (v6 + v96);
      if (__OFADD__(v6, v96))
      {
        goto LABEL_65;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v97 > *(v88 + 3) >> 1)
      {
        if (v6 <= v97)
        {
          v99 = v6 + v96;
        }

        else
        {
          v99 = v6;
        }

        v88 = sub_1D6992E5C(isUniquelyReferenced_nonNull_native, v99, 1, v88);
      }

      v6 = v441;
      if (*(v5 + 2))
      {
        v87 = v440;
        if ((*(v88 + 3) >> 1) - *(v88 + 2) < v96)
        {
          goto LABEL_70;
        }

        swift_arrayInitWithCopy();

        if (v96)
        {
          v100 = *(v88 + 2);
          v101 = __OFADD__(v100, v96);
          v102 = v100 + v96;
          if (v101)
          {
            goto LABEL_71;
          }

          *(v88 + 2) = v102;
        }
      }

      else
      {

        v87 = v440;
        if (v96)
        {
          goto LABEL_66;
        }
      }

      if (v436 == ++v87)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v434 = v88;

    sub_1D6C4FB24(&unk_1F5111958, &v457);
    if (v6)
    {

      v526 = v452.i64[0];
      sub_1D610B0A8(&v526, sub_1D5B81B04);
      v525 = v452.i64[1];
      sub_1D610B0A8(&v525, sub_1D5B81B04);
      v524 = v453;
      sub_1D6107490(&v524);
      v523 = v454;
      sub_1D6107524(&v523, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference);
      v522 = v455;
      sub_1D610B0A8(&v522, sub_1D6107594);
      v521 = v456;
      sub_1D6107524(&v521, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference);
      goto LABEL_74;
    }

LABEL_72:
    v520 = v452.i64[0];
    sub_1D610B0A8(&v520, sub_1D5B81B04);
    v519 = v452.i64[1];
    sub_1D610B0A8(&v519, sub_1D5B81B04);
    v518 = v453;
    sub_1D6107490(&v518);
    v517 = v454;
    sub_1D6107524(&v517, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference);
    v516 = v455;
    sub_1D610B0A8(&v516, sub_1D6107594);
    v515 = v456;
    sub_1D6107524(&v515, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference);
    v513 = v458;
    v514 = v460;
    v512 = v457;
    v103 = v5;
    sub_1D6C9B6D4(v457, v458, v460);
    if (!v6)
    {
      v431 = v85;
      sub_1D610B0A8(&v512, sub_1D5B81B04);
      v508 = *(&v457 + 1);
      sub_1D610B0A8(&v508, sub_1D5B81B04);
      sub_1D6107490(&v513);
      v507 = v459;
      sub_1D6107524(&v507, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference);
      sub_1D610B0A8(&v514, sub_1D6107594);
      v506 = v461;
      sub_1D6107524(&v506, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference);
      v447 = MEMORY[0x1E69E7CD0];
      v446 = MEMORY[0x1E69E7CD0];
      v159 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups;
      v85 = v87;
      v160 = swift_beginAccess();
      v161 = *(v87 + v159);
      MEMORY[0x1EEE9AC00](v160, v162);
      *(&v391 - 6) = v420;
      *(&v391 - 5) = &v447;
      v163 = v440;
      *(&v391 - 4) = v424;
      *(&v391 - 3) = v163;
      *(&v391 - 2) = v103;
      *(&v391 - 1) = &v446;

      v83 = sub_1D5ECC230(sub_1D6107628, (&v391 - 8), v161);
      goto LABEL_79;
    }

    sub_1D610B0A8(&v512, sub_1D5B81B04);
    v511 = *(&v457 + 1);
    sub_1D610B0A8(&v511, sub_1D5B81B04);
    sub_1D6107490(&v513);
    v510 = v459;
    sub_1D6107524(&v510, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference);
    sub_1D610B0A8(&v514, sub_1D6107594);
    v509 = v461;
    sub_1D6107524(&v509, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference);

LABEL_74:

    goto LABEL_51;
  }

  v88 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v5 = *v429;
  v87 = *(*v429 + 16);
  v103 = MEMORY[0x1E69E7CC0];
  if (!v87)
  {
    goto LABEL_33;
  }

  v441 = v88;
  v448 = MEMORY[0x1E69E7CC0];
  sub_1D6998644(0, v87, 0);
  v104 = 0;
  v105 = &v5[(v434[80] + 32) & ~v434[80]];
  do
  {
    if (v104 >= *(v5 + 2))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v106 = v432;
    sub_1D610B210(&v105[*(v434 + 9) * v104], v432, type metadata accessor for FormatCompilerProperty);
    sub_1D7075A68(v439, v438);
    if (v6)
    {
      sub_1D610B0A8(v106, type metadata accessor for FormatCompilerProperty);

      return;
    }

    sub_1D610B0A8(v106, type metadata accessor for FormatCompilerProperty);
    v103 = v448;
    v85 = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D6998644(0, *(v103 + 2) + 1, 1);
      v103 = v448;
    }

    v108 = *(v103 + 2);
    v107 = *(v103 + 3);
    if (v108 >= v107 >> 1)
    {
      sub_1D6998644((v107 > 1), v108 + 1, 1);
      v103 = v448;
    }

    ++v104;
    *(v103 + 2) = v108 + 1;
    v83 = sub_1D610B500(v438, &v103[((*(v433 + 80) + 32) & ~*(v433 + 80)) + *(v433 + 72) * v108], type metadata accessor for FormatPropertyDefinition);
    v6 = 0;
  }

  while (v87 != v104);
  v88 = v441;
LABEL_33:
  v438 = v103;
  v451 = MEMORY[0x1E69E7CD0];
  v437 = *(v88 + 2);
  v109 = v430;
  if (!v437)
  {
LABEL_48:
    type metadata accessor for FormatDerivedDataState();
    v125 = swift_allocObject();
    v126 = MEMORY[0x1E69E7CC8];
    *(v125 + 5) = MEMORY[0x1E69E7CC8];
    *(v125 + 6) = v126;
    *(v125 + 7) = v126;
    v127 = v424;
    *(v125 + 2) = v439;
    *(v125 + 3) = v127;
    v448 = v88;
    sub_1D610A360(0, &qword_1EC883D48, type metadata accessor for FormatCompilingSlotDefinition, MEMORY[0x1E69E62F8]);
    v129 = v128;
    v130 = sub_1D610AFE0(&qword_1EC883D50, &qword_1EC883D48, type metadata accessor for FormatCompilingSlotDefinition);
    v131 = sub_1D610AEAC(&qword_1EC883D58, type metadata accessor for FormatCompilingSlotDefinition, &unk_1D728F430);

    v132 = v129;
    v133 = v130;
    *(v125 + 4) = sub_1D72623BC();

    sub_1D6E02B2C();
    sub_1D69AA6B8(v134);
    if (v6)
    {

      goto LABEL_51;
    }

    v434 = v132;
    v432 = v131;

    v135 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
    swift_beginAccess();

    sub_1D69AA6B8(v136);
    v430 = v135;
    v431 = v130;
    v440 = v125;
    v441 = v88;

    v137 = v438;
    v138 = v438[2];
    if (!v138)
    {
LABEL_56:
      v146 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles;
      v147 = v439;
      swift_beginAccess();
      v436 = v146;
      v6 = *&v147[v146];
      v148 = *(v6 + 16);

      if (!v148)
      {
        v151 = v440;
LABEL_62:

        type metadata accessor for FormatDerivedDataBinder();
        v153 = swift_allocObject();
        v154 = v441;
        v5 = v153;
        *(v153 + 3) = MEMORY[0x1E69E7CC8];
        v155 = MEMORY[0x1E69E7CC0];
        *(v153 + 4) = MEMORY[0x1E69E7CC0];
        v429 = v153 + 32;
        *(v153 + 5) = v155;
        v156 = MEMORY[0x1E69E7CD0];
        *(v153 + 6) = MEMORY[0x1E69E7CD0];
        v88 = v153 + 48;
        *(v153 + 7) = v156;
        v85 = v153 + 56;
        v448 = v154;

        v157 = v151;
        *(v5 + 2) = sub_1D72623BC();

        v87 = v439;
        v158 = *(&v430->Kind + v439);

        sub_1D70E2A84(v157, v158, &v452);
        v6 = 0;
        goto LABEL_67;
      }

      v133 = 0;
      v151 = v440;
      while (v133 < *(v6 + 16))
      {

        sub_1D69AA6B8(v152);

        v133 = (v133 + 1);
        if (v148 == v133)
        {
          goto LABEL_62;
        }
      }

      __break(1u);
      goto LABEL_104;
    }

    v6 = 0;
    v436 = v438 + ((*(v433 + 80) + 32) & ~*(v433 + 80));
    v139 = v422;
    while (v6 < v137[2])
    {
      v140 = v425;
      sub_1D610B210(&v436[*(v433 + 72) * v6], v425, type metadata accessor for FormatPropertyDefinition);
      *v139 = FormatPropertyDefinition.identifier.getter();
      *(v139 + 8) = v141;
      v133 = v426;
      sub_1D610B210(v140, v426, type metadata accessor for FormatPropertyDefinition);
      v142 = qword_1D729C598[swift_getEnumCaseMultiPayload()];
      sub_1D610B0A8(v133, type metadata accessor for FormatPropertyDefinition);
      *(v139 + 24) = 0;
      *(v139 + 32) = 0;
      *(v139 + 16) = v142;
      *(v139 + 40) = 0;
      sub_1D610B0A8(v140, type metadata accessor for FormatPropertyDefinition);
      *(v139 + 48) = MEMORY[0x1E69E7CC0];
      v143 = *(v428 + 7);
      v144 = type metadata accessor for FormatVersionRequirement(0);
      v145.n128_f64[0] = (*(*(v144 - 8) + 56))(v139 + v143, 1, 1, v144);
      sub_1D69AA824(v139, v145);
      ++v6;
      sub_1D610B0A8(v139, type metadata accessor for FormatDerivedDataOption);
      v137 = v438;
      if (v138 == v6)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_101:
    v150 = sub_1D62DCBF4(&unk_1F5111980);
    v149 = v447;
    if (*(v447 + 16) > *(v150 + 16) >> 3)
    {
      v180 = sub_1D6E154E0(v447, v150);
      goto LABEL_105;
    }

LABEL_104:
    v448 = v150;
    sub_1D68365A4(v149);
    v180 = v448;
LABEL_105:
    if (*(v180 + 2))
    {

      type metadata accessor for FormatDerivedDataError(0);
      sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
      swift_allocError();
      v182 = v181;
      v448 = sub_1D5E1E2D8(v180);

      sub_1D5E239F4(&v448);
      if (v6)
      {
        v390 = v6;
        goto LABEL_314;
      }

      v183 = v448;
      v184 = sub_1D62DCBF4(&unk_1F51119B8);
      v448 = sub_1D5E1E2D8(v184);

      sub_1D5E239F4(&v448);

      v185 = v448;

      *v182 = v183;
      v182[1] = v185;
      swift_storeEnumTagMultiPayload();
    }

    else
    {

      v186 = v451;
      v187 = v446;
      if (*(v446 + 16) <= *(v451 + 16) >> 3)
      {
        v448 = v451;

        sub_1D6836478(v187);
        v188 = v448;
      }

      else
      {

        v188 = sub_1D6E14F70(v187, v186);
      }

      if (!*(v188 + 2))
      {

        v85 = v439;
        goto LABEL_80;
      }

      type metadata accessor for FormatDerivedDataError(0);
      sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
      swift_allocError();
      v194 = v193;
      v448 = sub_1D5E1E408(v188);

      v195 = v6;
      sub_1D5F81CCC(&v448);
      if (v6)
      {
        goto LABEL_312;
      }

      v196 = v448;

      *v194 = v196;
      swift_storeEnumTagMultiPayload();
    }

    swift_willThrow();

    goto LABEL_77;
  }

  v110 = 0;
  v440 = &v88[(*(v435 + 80) + 32) & ~*(v435 + 80)];
  while (v110 < *(v88 + 2))
  {
    v85 = v88;
    v441 = v6;
    sub_1D610B210(&v440[*(v435 + 9) * v110], v109, type metadata accessor for FormatCompilingSlotDefinition);
    v113 = v451;
    if (*(v451 + 16))
    {
      Kind = v109->Kind;
      Description = v109->Description;
      sub_1D7264A0C();
      sub_1D72621EC();
      v116 = sub_1D7264A5C();
      v117 = -1 << *(v113 + 32);
      v118 = v116 & ~v117;
      if ((*(v113 + 56 + ((v118 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v118))
      {
        v119 = ~v117;
        do
        {
          v120 = (*(v113 + 48) + 16 * v118);
          v121 = *v120 == Kind && v120[1] == Description;
          if (v121 || (sub_1D72646CC() & 1) != 0)
          {

            type metadata accessor for FormatDerivedDataError(0);
            sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
            swift_allocError();
            v122 = v430;
            v123 = v430->Description;
            *v124 = v430->Kind;
            v124[1] = v123;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            sub_1D610B0A8(v122, type metadata accessor for FormatCompilingSlotDefinition);
            return;
          }

          v118 = (v118 + 1) & v119;
        }

        while (((*(v113 + 56 + ((v118 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v118) & 1) != 0);
      }
    }

    ++v110;
    v109 = v430;
    v111 = v430->Kind;
    v112 = v430->Description;

    v103 = &v451;
    sub_1D5B860D0(&v448, v111, v112);

    v83 = sub_1D610B0A8(v109, type metadata accessor for FormatCompilingSlotDefinition);
    v6 = v441;
    v88 = v85;
    if (v110 == v437)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_79:
  v133 = v83;
  v432 = v103;

  if ((v85[OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role] & 0xFE) != 4)
  {
    goto LABEL_101;
  }

LABEL_80:
  v427 = v133;
  v164 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__decorations;
  swift_beginAccess();
  v165 = *(*&v85[v164] + 16);

  v428 = v165;
  if (v165)
  {
    v167 = 0;
    v168 = &type metadata for FormatDerivedDataResultBlockReference;
    v169 = &type metadata for FormatDerivedDataResultItemReference;
    v430 = v166;
    while (v167 < *(v166 + 16))
    {
      sub_1D5CF82C4(v166 + ((v417[80] + 32) & ~v417[80]) + *(v417 + 9) * v167, v419, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
      __swift_project_boxed_opaque_existential_1(v420, v420[3]);
      if (sub_1D725B2DC())
      {

        type metadata accessor for FormatDerivedDataError(0);
        sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v201 = v419;
LABEL_123:
        sub_1D6107650(v201);
        goto LABEL_76;
      }

      v170 = v424;
      v171 = v419;
      if (!*(v424 + 16) || (v172 = sub_1D6D62FB0(*v419, v419[1], 6), (v173 & 1) == 0))
      {

        type metadata accessor for FormatDerivedDataError(0);
        sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        swift_allocError();
        v189 = v171;
        v190 = *v171;
        v191 = v171[1];
        *v192 = v190;
        *(v192 + 8) = v191;
        *(v192 + 16) = 6;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D6107650(v189);
        goto LABEL_77;
      }

      v133 = *(*(v170 + 56) + 8 * v172);

      sub_1D70E2F38(v440, v133, &v462);
      if (v6)
      {

        v201 = v171;
        goto LABEL_123;
      }

      sub_1D6C4FB24(&unk_1F51119F0, &v467);
      v6 = 0;
      v505[0] = v462.i64[0];
      sub_1D610B0A8(v505, sub_1D5B81B04);
      v504 = v462.i64[1];
      sub_1D610B0A8(&v504, sub_1D5B81B04);
      v503 = v463;
      sub_1D6107490(&v503);
      v502 = v464;
      sub_1D6107524(&v502, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference);
      v501 = v465;
      sub_1D610B0A8(&v501, sub_1D6107594);
      v500 = v466;
      sub_1D6107524(&v500, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference);
      v499 = v470;
      v498 = v468;
      v497 = v467;
      sub_1D6C9B6D4(v467, v468, v470);
      ++v167;
      sub_1D6107650(v419);
      sub_1D610B0A8(&v497, sub_1D5B81B04);
      v496[0] = *(&v467 + 1);
      sub_1D610B0A8(v496, sub_1D5B81B04);
      sub_1D6107490(&v498);
      v495 = v469;
      sub_1D6107524(&v495, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference);
      sub_1D610B0A8(&v499, sub_1D6107594);
      v494 = v471;
      sub_1D6107524(&v494, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference);

      v166 = v430;
      if (v428 == v167)
      {
        goto LABEL_88;
      }
    }

    __break(1u);
LABEL_133:
    v176 = v166;

    __swift_project_boxed_opaque_existential_1(v420, v420[3]);
    if (sub_1D725B2DC())
    {

LABEL_99:

      type metadata accessor for FormatDerivedDataError(0);
      sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

LABEL_119:

      goto LABEL_76;
    }
  }

  else
  {
LABEL_88:

    v174 = *(*&v436[v439] + 16);
    v436 = *&v436[v439];

    v430 = v174;
    if (!v174)
    {
LABEL_96:

      __swift_project_boxed_opaque_existential_1(v420, v420[3]);
      if (sub_1D725B2DC())
      {
      }

      else
      {
        sub_1D61016BC(v427, sub_1D61016A8, 0);
        if (v6)
        {

          goto LABEL_119;
        }

        v168 = v197;
        __swift_project_boxed_opaque_existential_1(v420, v420[3]);
        if (sub_1D725B2DC())
        {
        }

        else
        {
          sub_1D61016BC(v427, sub_1D6101B30, 0);
          v133 = v202;
          __swift_project_boxed_opaque_existential_1(v420, v420[3]);
          if ((sub_1D725B2DC() & 1) == 0)
          {
            sub_1D61016BC(v427, sub_1D6101B44, 0);
            v169 = 0;
            goto LABEL_133;
          }
        }
      }

      goto LABEL_99;
    }

    v175 = 0;
    v176 = &qword_1EC883D68;
    v169 = &type metadata for FormatDerivedDataResultItemReference;
    v168 = &qword_1EC883D78;
    while (v175 < *(v436 + 2))
    {
      sub_1D5CF82C4(&v436[((v421[80] + 32) & ~v421[80]) + *(v421 + 9) * v175], v418, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
      __swift_project_boxed_opaque_existential_1(v420, v420[3]);
      if (sub_1D725B2DC())
      {

        type metadata accessor for FormatDerivedDataError(0);
        sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

LABEL_128:
        sub_1D5C8C86C(v418);
        goto LABEL_76;
      }

      v177 = v424;
      if (!*(v424 + 16) || (v178 = sub_1D6D62FB0(*v418, v418[1], 3), (v179 & 1) == 0))
      {

        type metadata accessor for FormatDerivedDataError(0);
        sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        swift_allocError();
        v198 = v418;
        v199 = v418[1];
        *v200 = *v418;
        *(v200 + 8) = v199;
        *(v200 + 16) = 3;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D5C8C86C(v198);
        goto LABEL_77;
      }

      v133 = *(*(v177 + 56) + 8 * v178);

      sub_1D70E2F38(v440, v133, &v472);
      if (v6)
      {

        goto LABEL_128;
      }

      sub_1D6C4FB24(&unk_1F5111A18, &v477);
      v6 = 0;
      v493[0] = v472.i64[0];
      sub_1D610B0A8(v493, sub_1D5B81B04);
      v492 = v472.i64[1];
      sub_1D610B0A8(&v492, sub_1D5B81B04);
      v491 = v473;
      sub_1D6107490(&v491);
      v490 = v474;
      sub_1D6107524(&v490, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference);
      v489 = v475;
      sub_1D610B0A8(&v489, sub_1D6107594);
      v488 = v476;
      sub_1D6107524(&v488, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference);
      v487 = v480;
      v486 = v478;
      v485 = v477;
      sub_1D6C9B6D4(v477, v478, v480);
      ++v175;
      sub_1D5C8C86C(v418);
      sub_1D610B0A8(&v485, sub_1D5B81B04);
      v484[0] = *(&v477 + 1);
      sub_1D610B0A8(v484, sub_1D5B81B04);
      sub_1D6107490(&v486);
      v483 = v479;
      sub_1D6107524(&v483, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference);
      sub_1D610B0A8(&v487, sub_1D6107594);
      v482 = v481;
      sub_1D6107524(&v482, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference);

      if (v430 == v175)
      {
        goto LABEL_96;
      }
    }

    __break(1u);
  }

  v448 = v168;
  sub_1D69859BC(v133);
  sub_1D69859BC(v176);
  v195 = v169;
  v203 = sub_1D61091B4(v448, MEMORY[0x1E69E7CD0]);
  v430 = v169;
  if (v169)
  {

LABEL_138:

    return;
  }

  v204 = v203;

  v448 = v204;
  sub_1D610A360(0, &qword_1EDF43BD0, type metadata accessor for FormatSlotDefinition, MEMORY[0x1E69E62F8]);
  sub_1D610AFE0(&qword_1EC883D80, &qword_1EDF43BD0, type metadata accessor for FormatSlotDefinition);
  sub_1D610AEAC(&qword_1EC883D88, type metadata accessor for FormatSlotDefinition, &protocol conformance descriptor for FormatSlotDefinition);
  v436 = sub_1D72623BC();

  if (v437)
  {
    v205 = 0;
    v427 = (v441 + ((*(v435 + 80) + 32) & ~*(v435 + 80)));
    v428 = MEMORY[0x1E69E7CC0];
    while (v205 < *(v441 + 16))
    {
      sub_1D610B210(v427 + *(v435 + 9) * v205, v416, type metadata accessor for FormatCompilingSlotDefinition);
      if (*(v436 + 2) && (v206 = sub_1D5B69D90(*v416, v416[1]), (v207 & 1) != 0))
      {
        v208 = *(v436 + 7);
        v425 = *(v414 + 72);
        v209 = v408;
        sub_1D610B210(v208 + v425 * v206, v408, type metadata accessor for FormatSlotDefinition);
        v210 = v413;
        v211 = sub_1D610B500(v209, v413, type metadata accessor for FormatSlotDefinition);
        v212 = v210[1];
        v424 = *v210;
        v213 = v210[2];
        v214 = v210[3];
        v215 = v210[5];
        v421 = v210[4];
        v422 = v213;
        v216 = v210[6];
        MEMORY[0x1EEE9AC00](v211, v217);
        v218 = v439;
        *(&v391 - 2) = v416;
        *(&v391 - 1) = v218;

        v219 = v214;

        v426 = v215;

        v220 = v216;
        v195 = v430;
        v221 = sub_1D5ECAFC8(sub_1D610AE20, (&v391 - 4), v220);
        v430 = v195;
        if (v195)
        {

          sub_1D610B0A8(v413, type metadata accessor for FormatSlotDefinition);
          sub_1D610B0A8(v416, type metadata accessor for FormatCompilingSlotDefinition);

          goto LABEL_138;
        }

        v222 = v221;
        v223 = v413;
        v225 = v413[7];
        v224 = v413[8];
        v226 = v407;
        sub_1D5CDE26C(v413 + *(v409 + 40), &v407[*(v409 + 40)], &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
        *v226 = v424;
        v226[1] = v212;
        v227 = v421;
        v226[2] = v422;
        v226[3] = v219;
        v228 = v426;
        v226[4] = v227;
        v226[5] = v228;
        v226[6] = v222;
        v226[7] = v225;
        v226[8] = v224;

        sub_1D610B0A8(v223, type metadata accessor for FormatSlotDefinition);
        sub_1D610B0A8(v416, type metadata accessor for FormatCompilingSlotDefinition);
        v229 = v406;
        sub_1D610B500(v226, v406, type metadata accessor for FormatSlotDefinition);
        sub_1D610B500(v229, v412, type metadata accessor for FormatSlotDefinition);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v428 = sub_1D5D5CA88(0, v428[2] + 1, 1, v428);
        }

        v231 = v428[2];
        v230 = v428[3];
        if (v231 >= v230 >> 1)
        {
          v428 = sub_1D5D5CA88((v230 > 1), v231 + 1, 1, v428);
        }

        v232 = v428;
        v428[2] = v231 + 1;
        sub_1D610B500(v412, v232 + ((*(v414 + 80) + 32) & ~*(v414 + 80)) + v231 * v425, type metadata accessor for FormatSlotDefinition);
      }

      else
      {
        sub_1D610B0A8(v416, type metadata accessor for FormatCompilingSlotDefinition);
      }

      if (v437 == ++v205)
      {

        goto LABEL_154;
      }
    }

    __break(1u);
LABEL_301:

    sub_1D610B500(v404, v402, type metadata accessor for FormatFile);
    goto LABEL_293;
  }

  v428 = MEMORY[0x1E69E7CC0];
LABEL_154:
  v445 = MEMORY[0x1E69E7CC8];
  v419 = v428[2];
  if (!v419)
  {
LABEL_261:
    v342 = OBJC_IVAR____TtC8NewsFeed25FormatDerivedDataCompiler_settings;
    v195 = v430;
    sub_1D6102FDC(v439, v432);
    v441 = v195;
    if (v195)
    {
      v343 = *(v423 + v342);
      if (!*(v343 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v344 = sub_1D7264A5C(), v345 = -1 << *(v343 + 32), v346 = v344 & ~v345, ((*(v343 + 56 + ((v346 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v346) & 1) == 0))
      {
LABEL_269:

        swift_willThrow();

        goto LABEL_76;
      }

      v347 = ~v345;
      v437 = "unusedProperties";
      v435 = 0;
      v436 = "duplicateNewsroomIdentifiers";
      while (1)
      {
        v348 = *(*(v343 + 48) + v346);
        if (v348 != 1 && v348 != 2)
        {
          break;
        }

        v349 = sub_1D72646CC();

        if (v349)
        {
          goto LABEL_279;
        }

        v346 = (v346 + 1) & v347;
        if (((*(v343 + 56 + ((v346 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v346) & 1) == 0)
        {
          goto LABEL_269;
        }
      }

LABEL_279:
    }

    else
    {
      v435 = 0;
    }

    v355 = v429;
    swift_beginAccess();
    v356 = *v355;
    v357 = *(*v355 + 16);
    if (v357)
    {
      v358 = v410 + *(v400 + 48);
      v359 = v356 + ((*(v411 + 80) + 32) & ~*(v411 + 80));

      v360 = 0;
      while (v360 < *(v356 + 16))
      {
        v361 = v410;
        sub_1D610B210(v359 + *(v411 + 72) * v360, v410, sub_1D6107408);
        sub_1D6007718(*v358, *(v358 + 8), *(v358 + 16));
        v362 = v361;
        v363 = v415;
        sub_1D610B500(v362, v415, type metadata accessor for FormatDerivedDataResultOptionReference);
        v365 = *(v363 + 8);
        v364 = *(v363 + 16);
        swift_beginAccess();
        if (v445[2] && (sub_1D5B69D90(v365, v364), (v366 & 1) != 0))
        {
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
          if ((*(v415 + 32) & 1) == 0)
          {

            type metadata accessor for FormatDerivedDataError(0);
            sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
            v441 = swift_allocError();
            v374 = v415;
            v375 = *(v415 + 40);
            v376 = *(v415 + 48);
            v377 = *(v415 + 56);
            *v378 = v365;
            *(v378 + 8) = v364;
            *(v378 + 16) = v375;
            *(v378 + 24) = v376;
            *(v378 + 32) = v377;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            sub_1D5DEA210(v375, v376, v377);

            sub_1D610B0A8(v374, type metadata accessor for FormatDerivedDataResultOptionReference);
            goto LABEL_76;
          }
        }

        ++v360;
        sub_1D610B0A8(v415, type metadata accessor for FormatDerivedDataResultOptionReference);
        if (v357 == v360)
        {

          goto LABEL_289;
        }
      }

      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
      goto LABEL_311;
    }

LABEL_289:
    v367 = v434;
    swift_beginAccess();
    v368 = *v367;
    v369 = v431;
    swift_beginAccess();
    v370 = *v369;
    v371 = v439;

    sub_1D6878C04(v371, v428, v438, v368, v370, v405);
    __swift_project_boxed_opaque_existential_1(v420, v420[3]);
    if ((sub_1D725B2DC() & 1) == 0)
    {
      v372 = v435;
      sub_1D6103428(v405, v432);
      if (v372)
      {
        goto LABEL_292;
      }

      v379 = v373;
      __swift_project_boxed_opaque_existential_1(v420, v420[3]);
      if ((sub_1D725B2DC() & 1) == 0)
      {
        v380 = v405;
        sub_1D610B210(v405, v404, type metadata accessor for FormatPackage);
        swift_storeEnumTagMultiPayload();
        v442 = MEMORY[0x1E69E7CC0];
        v381 = sub_1D60FC754(v379, v380);

        sub_1D69870D0(v381);
        v382 = *v431;

        v383 = sub_1D6105564(v439, v382, v380);

        sub_1D69870D0(v383);
        v384 = sub_1D610A6C8(v380);
        sub_1D69870D0(v384);
        v385 = v442;
        if (!*(v442 + 16))
        {
          goto LABEL_301;
        }

        v387 = v403;
        v386 = v404;
        sub_1D610B210(v404, v403, type metadata accessor for FormatFile);
        type metadata accessor for FormatDerivedDataWarning(0);
        v388 = swift_allocObject();
        sub_1D610B500(v387, v388 + OBJC_IVAR____TtC8NewsFeed24FormatDerivedDataWarning_file, type metadata accessor for FormatFile);
        *(v388 + OBJC_IVAR____TtC8NewsFeed24FormatDerivedDataWarning_errors) = v385;
        sub_1D610AEAC(&qword_1EC883D90, type metadata accessor for FormatDerivedDataWarning, &protocol conformance descriptor for FormatDerivedDataWarning);
        swift_allocError();
        *v389 = v388;
        swift_willThrow();

        sub_1D610B0A8(v386, type metadata accessor for FormatFile);
LABEL_293:
        v353 = type metadata accessor for FormatPackage;
        v354 = v405;
        goto LABEL_277;
      }
    }

    type metadata accessor for FormatDerivedDataError(0);
    sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_292:

    goto LABEL_293;
  }

  v425 = OBJC_IVAR____TtC8NewsFeed25FormatDerivedDataCompiler_settings;
  v426 = 0;
  v421 = v428 + ((*(v414 + 80) + 32) & ~*(v414 + 80));
  v436 = "unusedProperties";
  v437 = "bility-news-plus-via-hardware";
  v435 = "duplicateNewsroomIdentifiers";
  while (1)
  {
    if (v426 >= v428[2])
    {
      goto LABEL_304;
    }

    v233 = v399;
    sub_1D610B210(&v421[*(v414 + 72) * v426], v399, type metadata accessor for FormatSlotDefinition);
    v427 = v233[8];
    v422 = v427[2];
    if (v422)
    {
      v234 = 0;
      v424 = v427 + ((*(v433 + 80) + 32) & ~*(v433 + 80));
      do
      {
        if (v234 >= v427[2])
        {
          goto LABEL_303;
        }

        v242 = v392;
        sub_1D610B210(v424 + *(v433 + 72) * v234, v392, type metadata accessor for FormatPropertyDefinition);
        v195 = v430;
        sub_1D6101B60(v432, v242, v399);
        v441 = v195;
        if (v195)
        {
          v243 = *(v423 + v425);
          if (!*(v243 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v244 = sub_1D7264A5C(), v245 = -1 << *(v243 + 32), v246 = v244 & ~v245, ((*(v243 + 56 + ((v246 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v246) & 1) == 0))
          {
LABEL_270:

            swift_willThrow();

            v350 = type metadata accessor for FormatPropertyDefinition;
            v351 = v392;
LABEL_276:
            sub_1D610B0A8(v351, v350);

            v353 = type metadata accessor for FormatSlotDefinition;
            v354 = v399;
LABEL_277:
            sub_1D610B0A8(v354, v353);
LABEL_76:

LABEL_77:

LABEL_51:

            return;
          }

          v430 = 0;
          v247 = ~v245;
          while (1)
          {
            v248 = *(*(v243 + 48) + v246);
            if (v248 != 1 && v248 != 2)
            {
              break;
            }

            v249 = sub_1D72646CC();

            if (v249)
            {
              goto LABEL_173;
            }

            v246 = (v246 + 1) & v247;
            if (((*(v243 + 56 + ((v246 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v246) & 1) == 0)
            {
              goto LABEL_270;
            }
          }

LABEL_173:
        }

        else
        {
          v430 = 0;
        }

        v250 = *v399;
        v251 = v399[1];
        v252 = FormatPropertyDefinition.identifier.getter();
        v254 = v253;
        swift_beginAccess();
        if (v445[2])
        {
          sub_1D5B69D90(v252, v254);
          v256 = v255;

          v235 = MEMORY[0x1E69E7CD0];
          if (v256)
          {
          }
        }

        else
        {

          v235 = MEMORY[0x1E69E7CD0];
        }

        ++v234;
        v444 = v235;
        swift_endAccess();

        sub_1D5FEE050(&v448, v250, v251, 0);
        sub_1D6007718(v448, v449, v450);
        v236 = v392;
        v237 = FormatPropertyDefinition.identifier.getter();
        v239 = v238;
        v240 = v444;
        swift_beginAccess();
        v241 = swift_isUniquelyReferenced_nonNull_native();
        v443 = v445;
        sub_1D6D79E00(v240, v237, v239, v241);

        v445 = v443;
        swift_endAccess();
        sub_1D610B0A8(v236, type metadata accessor for FormatPropertyDefinition);
      }

      while (v234 != v422);
    }

    v422 = v399[6];
    v413 = *(v422 + 2);
    if (v413)
    {
      break;
    }

LABEL_260:
    v341 = v426 + 1;
    sub_1D610B0A8(v399, type metadata accessor for FormatSlotDefinition);
    v426 = v341;
    if (v341 == v419)
    {
      goto LABEL_261;
    }
  }

  v424 = 0;
  v409 = (*(v396 + 80) + 32) & ~*(v396 + 80);
  v416 = &v422[v409];
  while (2)
  {
    if (v424 >= *(v422 + 2))
    {
      goto LABEL_307;
    }

    v412 = *(v396 + 72);
    v257 = v398;
    sub_1D610B210(v416 + v412 * v424, v398, type metadata accessor for FormatSlotDefinitionItemSet);
    v427 = *(v257 + 16);
    v417 = v427[2];
    if (v417)
    {
      v441 = 0;
      v418 = (v427 + ((*(v433 + 80) + 32) & ~*(v433 + 80)));
      do
      {
        if (v441 >= v427[2])
        {
          goto LABEL_305;
        }

        v260 = v393;
        sub_1D610B210(v418 + *(v433 + 72) * v441, v393, type metadata accessor for FormatPropertyDefinition);
        v195 = v430;
        sub_1D6102204(v432, v260, v399);
        if (v195)
        {
          v261 = *(v423 + v425);
          if (!*(v261 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v262 = sub_1D7264A5C(), v263 = -1 << *(v261 + 32), v264 = v262 & ~v263, ((*(v261 + 56 + ((v264 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v264) & 1) == 0))
          {
LABEL_273:

            swift_willThrow();

            v352 = v393;
LABEL_275:
            sub_1D610B0A8(v352, type metadata accessor for FormatPropertyDefinition);
            v350 = type metadata accessor for FormatSlotDefinitionItemSet;
            v351 = v398;
            goto LABEL_276;
          }

          v430 = 0;
          v265 = ~v263;
          while (1)
          {
            v266 = *(*(v261 + 48) + v264);
            if (v266 != 1 && v266 != 2)
            {
              break;
            }

            v267 = sub_1D72646CC();

            if (v267)
            {
              goto LABEL_196;
            }

            v264 = (v264 + 1) & v265;
            if (((*(v261 + 56 + ((v264 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v264) & 1) == 0)
            {
              goto LABEL_273;
            }
          }

LABEL_196:
        }

        else
        {
          v430 = 0;
        }

        v268 = *v399;
        v269 = v399[1];
        v270 = FormatPropertyDefinition.identifier.getter();
        v272 = v271;
        swift_beginAccess();
        if (v445[2])
        {
          sub_1D5B69D90(v270, v272);
          v274 = v273;

          v275 = MEMORY[0x1E69E7CD0];
          if (v274)
          {
          }
        }

        else
        {

          v275 = MEMORY[0x1E69E7CD0];
        }

        v444 = v275;
        swift_endAccess();

        sub_1D5FEE050(&v448, v268, v269, 2);
        sub_1D6007718(v448, v449, v450);
        v276 = FormatPropertyDefinition.identifier.getter();
        v278 = v277;
        v279 = v444;
        swift_beginAccess();
        v280 = swift_isUniquelyReferenced_nonNull_native();
        v281 = v445;
        v443 = v445;
        v283 = sub_1D5B69D90(v276, v278);
        v284 = v281[2];
        v285 = (v282 & 1) == 0;
        v286 = v284 + v285;
        if (__OFADD__(v284, v285))
        {
          goto LABEL_306;
        }

        v287 = v282;
        if (v281[3] >= v286)
        {
          if (v280)
          {
            if (v282)
            {
              goto LABEL_182;
            }
          }

          else
          {
            sub_1D6D81F94();
            if (v287)
            {
              goto LABEL_182;
            }
          }
        }

        else
        {
          sub_1D6D6CF88(v286, v280);
          v288 = sub_1D5B69D90(v276, v278);
          if ((v287 & 1) != (v289 & 1))
          {
            goto LABEL_315;
          }

          v283 = v288;
          if (v287)
          {
LABEL_182:

            v258 = v443;
            *(v443[7] + 8 * v283) = v279;

            goto LABEL_183;
          }
        }

        v258 = v443;
        v443[(v283 >> 6) + 8] |= 1 << v283;
        v290 = (v258[6] + 16 * v283);
        *v290 = v276;
        v290[1] = v278;
        *(v258[7] + 8 * v283) = v279;
        v291 = v258[2];
        v101 = __OFADD__(v291, 1);
        v292 = v291 + 1;
        if (v101)
        {
          goto LABEL_308;
        }

        v258[2] = v292;
LABEL_183:
        v259 = (v441 + 1);
        v445 = v258;
        swift_endAccess();
        sub_1D610B0A8(v393, type metadata accessor for FormatPropertyDefinition);
        v441 = v259;
      }

      while (v259 != v417);
    }

    v427 = *(v398 + 24);
    if (!v427)
    {
      goto LABEL_259;
    }

    v408 = *(v398 + 32);
    v417 = v427[2];
    if (v417)
    {
      v418 = (v427 + ((*(v433 + 80) + 32) & ~*(v433 + 80)));

      v293 = 0;
      while (v293 < v427[2])
      {
        v300 = v394;
        sub_1D610B210(v418 + *(v433 + 72) * v293, v394, type metadata accessor for FormatPropertyDefinition);
        v195 = v430;
        sub_1D61027EC(v432, v300, v399);
        v441 = v195;
        if (v195)
        {
          v301 = *(v423 + v425);
          if (!*(v301 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v302 = sub_1D7264A5C(), v303 = -1 << *(v301 + 32), v304 = v302 & ~v303, ((*(v301 + 56 + ((v304 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v304) & 1) == 0))
          {
LABEL_274:

            swift_willThrow();

            v352 = v394;
            goto LABEL_275;
          }

          v430 = 0;
          v305 = ~v303;
          while (1)
          {
            v306 = *(*(v301 + 48) + v304);
            if (v306 != 1 && v306 != 2)
            {
              break;
            }

            v307 = sub_1D72646CC();

            if (v307)
            {
              goto LABEL_229;
            }

            v304 = (v304 + 1) & v305;
            if (((*(v301 + 56 + ((v304 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v304) & 1) == 0)
            {
              goto LABEL_274;
            }
          }

LABEL_229:
        }

        else
        {
          v430 = 0;
        }

        v308 = *v399;
        v309 = v399[1];
        v310 = FormatPropertyDefinition.identifier.getter();
        v312 = v311;
        swift_beginAccess();
        if (v445[2])
        {
          sub_1D5B69D90(v310, v312);
          v314 = v313;

          v294 = MEMORY[0x1E69E7CD0];
          if (v314)
          {
          }
        }

        else
        {

          v294 = MEMORY[0x1E69E7CD0];
        }

        ++v293;
        v444 = v294;
        swift_endAccess();

        sub_1D5FEE050(&v448, v308, v309, 3);
        sub_1D6007718(v448, v449, v450);
        v295 = v394;
        v296 = FormatPropertyDefinition.identifier.getter();
        v298 = v297;
        v299 = v444;
        swift_beginAccess();
        sub_1D6D60F2C(v299, v296, v298);
        swift_endAccess();
        sub_1D610B0A8(v295, type metadata accessor for FormatPropertyDefinition);
        if (v293 == v417)
        {

          goto LABEL_234;
        }
      }

      goto LABEL_309;
    }

LABEL_234:
    v391 = *(v408 + 16);
    if (!v391)
    {
LABEL_259:
      v340 = (v424 + 1);
      sub_1D610B0A8(v398, type metadata accessor for FormatSlotDefinitionItemSet);
      v424 = v340;
      if (v340 == v413)
      {
        goto LABEL_260;
      }

      continue;
    }

    break;
  }

  v406 = v408 + v409;

  v418 = 0;
  while (v418 < *(v408 + 16))
  {
    v315 = v397;
    sub_1D610B210(v406 + v418 * v412, v397, type metadata accessor for FormatSlotDefinitionItemSet);
    v427 = *(v315 + 16);
    v407 = v427[2];
    if (v407)
    {
      v316 = 0;
      v417 = v427 + ((*(v433 + 80) + 32) & ~*(v433 + 80));
      while (v316 < v427[2])
      {
        v324 = v395;
        sub_1D610B210(&v417[*(v433 + 72) * v316], v395, type metadata accessor for FormatPropertyDefinition);
        v195 = v430;
        sub_1D6102C44(v432, v324, v399);
        v441 = v195;
        if (v195)
        {
          v325 = *(v423 + v425);
          if (!*(v325 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v326 = sub_1D7264A5C(), v327 = -1 << *(v325 + 32), v328 = v326 & ~v327, ((*(v325 + 56 + ((v328 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v328) & 1) == 0))
          {
LABEL_297:

            swift_willThrow();

            sub_1D610B0A8(v395, type metadata accessor for FormatPropertyDefinition);
            sub_1D610B0A8(v397, type metadata accessor for FormatSlotDefinitionItemSet);
            v351 = v398;
            v350 = type metadata accessor for FormatSlotDefinitionItemSet;
            goto LABEL_276;
          }

          v430 = 0;
          v329 = ~v327;
          while (1)
          {
            v330 = *(*(v325 + 48) + v328);
            if (v330 != 1 && v330 != 2)
            {
              break;
            }

            v331 = sub_1D72646CC();

            if (v331)
            {
              goto LABEL_253;
            }

            v328 = (v328 + 1) & v329;
            if (((*(v325 + 56 + ((v328 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v328) & 1) == 0)
            {
              goto LABEL_297;
            }
          }

LABEL_253:
        }

        else
        {
          v430 = 0;
        }

        v332 = *v399;
        v333 = v399[1];
        v334 = FormatPropertyDefinition.identifier.getter();
        v336 = v335;
        swift_beginAccess();
        if (v445[2])
        {
          sub_1D5B69D90(v334, v336);
          v338 = v337;

          v317 = MEMORY[0x1E69E7CD0];
          if (v338)
          {
          }
        }

        else
        {

          v317 = MEMORY[0x1E69E7CD0];
        }

        ++v316;
        v444 = v317;
        swift_endAccess();

        sub_1D5FEE050(&v448, v332, v333, 4);
        sub_1D6007718(v448, v449, v450);
        v318 = v395;
        v319 = FormatPropertyDefinition.identifier.getter();
        v321 = v320;
        v322 = v444;
        swift_beginAccess();
        v323 = swift_isUniquelyReferenced_nonNull_native();
        v443 = v445;
        sub_1D6D79E00(v322, v319, v321, v323);

        v445 = v443;
        swift_endAccess();
        sub_1D610B0A8(v318, type metadata accessor for FormatPropertyDefinition);
        if (v316 == v407)
        {
          goto LABEL_257;
        }
      }

      goto LABEL_310;
    }

LABEL_257:
    v339 = (v418 + 1);
    sub_1D610B0A8(v397, type metadata accessor for FormatSlotDefinitionItemSet);
    v418 = v339;
    if (v339 == v391)
    {

      goto LABEL_259;
    }
  }

LABEL_311:
  __break(1u);
LABEL_312:
  v390 = v195;
LABEL_314:

  __break(1u);
LABEL_315:
  sub_1D726493C();
  __break(1u);
}

double sub_1D61010FC@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a8@<X7>, uint64_t x8_0@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (sub_1D725B2DC())
  {
    type metadata accessor for FormatDerivedDataError(0);
    sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
    v14 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    *a8 = v14;
  }

  else
  {

    sub_1D6E464C0(v16);
    v18 = *a1;
    v17 = a1[1];
    if (*(a4 + 16) && (v19 = sub_1D6D62FB0(*a1, a1[1], 0), (v20 & 1) != 0))
    {
      v21 = *(*(a4 + 56) + 8 * v19);

      sub_1D70E2F38(a5, v21, &v26);
      if (v9)
      {

        *a8 = v9;
      }

      else
      {
        sub_1D6C4FB24(&unk_1F5111A40, &v31);
        v46 = v26.i64[0];
        sub_1D610B0A8(&v46, sub_1D5B81B04);
        v45 = v26.i64[1];
        sub_1D610B0A8(&v45, sub_1D5B81B04);
        v44 = v27;
        sub_1D6107490(&v44);
        v43 = v28;
        sub_1D6107524(&v43, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference);
        v42 = v29;
        sub_1D610B0A8(&v42, sub_1D6107594);
        v41 = v30;
        sub_1D6107524(&v41, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference);
        v40 = v34;
        v38 = v31;
        v39 = v32;
        sub_1D6C9B6D4(v31, v32, v34);

        sub_1D5B886D0(v24);
        sub_1D6C95D8C(a1, &v31, x8_0);
        sub_1D610B0A8(&v38, sub_1D5B81B04);

        sub_1D6107490(&v39);
        v37 = v33;
        sub_1D6107524(&v37, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference);
        sub_1D610B0A8(&v40, sub_1D6107594);
        v36 = v35;
        sub_1D6107524(&v36, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference);
      }
    }

    else
    {
      type metadata accessor for FormatDerivedDataError(0);
      sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
      v22 = swift_allocError();
      *v23 = v18;
      *(v23 + 8) = v17;
      *(v23 + 16) = 0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      *a8 = v22;
    }
  }

  return result;
}

void sub_1D61016BC(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = type metadata accessor for FormatDerivedDataBinderResult(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v45 - v17;

  sub_1D62EDC68(a2, a3, a1);
  v51 = MEMORY[0x1E69E7CD0];
  v20 = *(v19 + 16);
  if (!v20)
  {
    v31 = MEMORY[0x1E69E7CC8];
LABEL_10:

    v5 = sub_1D6109024(v31);

    if (!v4)
    {
      v14 = sub_1D60FC500(v5);
      v49 = 0;

      v32 = *(v14 + 2);
      if (v32)
      {
        v33 = 0;
        v34 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v33 >= *(v14 + 2))
          {
            goto LABEL_35;
          }

          v35 = *&v14[8 * v33 + 32];
          v5 = *(v35 + 16);
          v36 = v34[2];
          v37 = v5 + v36;
          if (__OFADD__(v36, v5))
          {
            goto LABEL_36;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && v37 <= v34[3] >> 1)
          {
            if (!*(v35 + 16))
            {
              goto LABEL_13;
            }
          }

          else
          {
            if (v36 <= v37)
            {
              v39 = v5 + v36;
            }

            else
            {
              v39 = v36;
            }

            v34 = sub_1D5D5CA88(isUniquelyReferenced_nonNull_native, v39, 1, v34);
            if (!*(v35 + 16))
            {
LABEL_13:

              if (v5)
              {
                goto LABEL_37;
              }

              goto LABEL_14;
            }
          }

          v40 = (v34[3] >> 1) - v34[2];
          type metadata accessor for FormatSlotDefinition(0);
          if (v40 < v5)
          {
            goto LABEL_38;
          }

          swift_arrayInitWithCopy();

          if (v5)
          {
            v41 = v34[2];
            v42 = __OFADD__(v41, v5);
            v43 = v5 + v41;
            if (v42)
            {
              goto LABEL_39;
            }

            v34[2] = v43;
          }

LABEL_14:
          if (v32 == ++v33)
          {
            goto LABEL_30;
          }
        }
      }

      v34 = MEMORY[0x1E69E7CC0];
LABEL_30:

      v44 = v49;
      sub_1D61091B4(v34, v51);
      if (!v44)
      {

        return;
      }
    }

    return;
  }

  v21 = *(v10 + 28);
  v48 = v6;
  v49 = v21;
  v22 = *(v11 + 80);
  v46 = v20;
  v47 = v19;
  v23 = v19 + ((v22 + 32) & ~v22);
  v24 = *(v11 + 72);
  v25 = v23;
  v26 = v20;
  do
  {
    sub_1D610B210(v25, v18, type metadata accessor for FormatDerivedDataBinderResult);
    v27 = *&v18[v49];

    sub_1D610B0A8(v18, type metadata accessor for FormatDerivedDataBinderResult);
    sub_1D5B886D0(v27);
    v25 += v24;
    --v26;
  }

  while (v26);
  v28 = 0;
  v50 = MEMORY[0x1E69E7CC8];
  v29 = v47;
  v30 = v46;
  while (v28 < *(v29 + 16))
  {
    sub_1D610B210(v23, v14, type metadata accessor for FormatDerivedDataBinderResult);
    sub_1D610612C(&v50, v14);
    if (v4)
    {
      goto LABEL_40;
    }

    ++v28;
    sub_1D610B0A8(v14, type metadata accessor for FormatDerivedDataBinderResult);
    v23 += v24;
    if (v30 == v28)
    {
      v31 = v50;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:

  sub_1D610B0A8(v14, type metadata accessor for FormatDerivedDataBinderResult);

  __break(1u);
}

BOOL sub_1D6101B44(uint64_t a1)
{
  v1 = *(a1 + 128);
  v2 = v1 & 0xE0;
  v3 = v1 - 195;
  return v2 != 192 || v3 < 0xFFFFFFFD;
}

void sub_1D6101B60(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  v5 = *(a1 + 24);

  v6 = FormatPropertyDefinition.identifier.getter();
  if (*(v5 + 16))
  {
    v8 = sub_1D5B69D90(v6, v7);
    v10 = v9;

    if (v10)
    {
      v11 = *(*(v5 + 56) + 8 * v8);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

  if (sub_1D695B3BC())
  {
LABEL_7:

    return;
  }

  v12 = sub_1D695BC10();
  if (*(v12 + 16))
  {
    sub_1D7264A0C();
    sub_1D72621EC();
    v13 = sub_1D7264A5C();
    v14 = -1 << *(v12 + 32);
    v15 = v13 & ~v14;
    if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      v16 = ~v14;
      while (1)
      {
        v17 = *(*(v12 + 48) + v15);
        if (v17 != 1 && v17 != 2)
        {
          break;
        }

        v18 = sub_1D72646CC();

        if (v18)
        {

          goto LABEL_7;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_7;
    }
  }

LABEL_15:

  v19 = *a3;
  v20 = a3[1];
  if (*(v11 + 16))
  {
    sub_1D7264A0C();
    MEMORY[0x1DA6FC0B0](1);
    sub_1D72621EC();
    v21 = sub_1D7264A5C();
    v22 = v11 + 56;
    v23 = -1 << *(v11 + 32);
    v24 = v21 & ~v23;
    if ((*(v11 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
    {
      v25 = ~v23;
      v26 = *(v11 + 48);
      do
      {
        v27 = v26 + 24 * v24;
        if (!*(v27 + 16))
        {
          v28 = *v27 == v19 && *(v27 + 8) == v20;
          if (v28 || (sub_1D72646CC() & 1) != 0)
          {
            goto LABEL_7;
          }
        }

        v24 = (v24 + 1) & v25;
      }

      while (((*(v22 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0);
    }

    if (*(v11 + 16))
    {
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](2);
      sub_1D72621EC();
      v29 = sub_1D7264A5C();
      v30 = -1 << *(v11 + 32);
      v31 = v29 & ~v30;
      if ((*(v22 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
      {
        v32 = ~v30;
        v33 = *(v11 + 48);
        do
        {
          v34 = v33 + 24 * v31;
          if (*(v34 + 16) == 1)
          {
            v35 = *v34 == v19 && *(v34 + 8) == v20;
            if (v35 || (sub_1D72646CC() & 1) != 0)
            {
              goto LABEL_7;
            }
          }

          v31 = (v31 + 1) & v32;
        }

        while (((*(v22 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0);
      }

      if (*(v11 + 16))
      {
        sub_1D7264A0C();
        MEMORY[0x1DA6FC0B0](3);
        sub_1D72621EC();
        v36 = sub_1D7264A5C();
        v37 = -1 << *(v11 + 32);
        v38 = v36 & ~v37;
        if ((*(v22 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
        {
          v39 = ~v37;
          v40 = *(v11 + 48);
          do
          {
            v41 = v40 + 24 * v38;
            if (*(v41 + 16) == 2)
            {
              v42 = *v41 == v19 && *(v41 + 8) == v20;
              if (v42 || (sub_1D72646CC() & 1) != 0)
              {
                goto LABEL_7;
              }
            }

            v38 = (v38 + 1) & v39;
          }

          while (((*(v22 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0);
        }

        if (*(v11 + 16))
        {
          sub_1D7264A0C();
          MEMORY[0x1DA6FC0B0](4);
          sub_1D72621EC();
          v43 = sub_1D7264A5C();
          v44 = -1 << *(v11 + 32);
          v45 = v43 & ~v44;
          if ((*(v22 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
          {
            v46 = ~v44;
            v47 = *(v11 + 48);
            do
            {
              v48 = v47 + 24 * v45;
              if (*(v48 + 16) == 3)
              {
                v49 = *v48 == v19 && *(v48 + 8) == v20;
                if (v49 || (sub_1D72646CC() & 1) != 0)
                {
                  goto LABEL_7;
                }
              }

              v45 = (v45 + 1) & v46;
            }

            while (((*(v22 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) != 0);
          }

          if (*(v11 + 16))
          {
            sub_1D7264A0C();
            MEMORY[0x1DA6FC0B0](5);
            sub_1D72621EC();
            v50 = sub_1D7264A5C();
            v51 = -1 << *(v11 + 32);
            v52 = v50 & ~v51;
            if ((*(v22 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
            {
              v53 = ~v51;
              v54 = *(v11 + 48);
              do
              {
                v55 = v54 + 24 * v52;
                if (*(v55 + 16) == 4)
                {
                  v56 = *v55 == v19 && *(v55 + 8) == v20;
                  if (v56 || (sub_1D72646CC() & 1) != 0)
                  {
                    goto LABEL_7;
                  }
                }

                v52 = (v52 + 1) & v53;
              }

              while (((*(v22 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) != 0);
            }
          }
        }
      }
    }
  }

  type metadata accessor for FormatDerivedDataError(0);
  sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
  swift_allocError();
  v58 = v57;

  v59 = FormatPropertyDefinition.identifier.getter();
  *v58 = v19;
  v58[1] = v20;
  v58[2] = v59;
  v58[3] = v60;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

void sub_1D6102204(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  v5 = *(a1 + 24);

  v6 = FormatPropertyDefinition.identifier.getter();
  if (*(v5 + 16))
  {
    v8 = sub_1D5B69D90(v6, v7);
    v10 = v9;

    if (v10)
    {
      v11 = *(*(v5 + 56) + 8 * v8);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

  if (sub_1D695B3BC())
  {
LABEL_7:

    return;
  }

  v12 = sub_1D695BC10();
  if (*(v12 + 16))
  {
    sub_1D7264A0C();
    sub_1D72621EC();
    v13 = sub_1D7264A5C();
    v14 = -1 << *(v12 + 32);
    v15 = v13 & ~v14;
    if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      v16 = ~v14;
      while (1)
      {
        v17 = *(*(v12 + 48) + v15);
        if (v17 != 1 && v17 != 2)
        {
          break;
        }

        v18 = sub_1D72646CC();

        if (v18)
        {

          goto LABEL_7;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_7;
    }
  }

LABEL_15:

  v19 = *a3;
  v20 = a3[1];
  if (*(v11 + 16))
  {
    sub_1D7264A0C();
    MEMORY[0x1DA6FC0B0](2);
    sub_1D72621EC();
    v21 = sub_1D7264A5C();
    v22 = v11 + 56;
    v23 = -1 << *(v11 + 32);
    v24 = v21 & ~v23;
    if ((*(v11 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
    {
      v25 = ~v23;
      v26 = *(v11 + 48);
      do
      {
        v27 = v26 + 24 * v24;
        if (*(v27 + 16) == 1)
        {
          v28 = *v27 == v19 && *(v27 + 8) == v20;
          if (v28 || (sub_1D72646CC() & 1) != 0)
          {
            goto LABEL_7;
          }
        }

        v24 = (v24 + 1) & v25;
      }

      while (((*(v22 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0);
    }

    if (*(v11 + 16))
    {
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](3);
      sub_1D72621EC();
      v29 = sub_1D7264A5C();
      v30 = -1 << *(v11 + 32);
      v31 = v29 & ~v30;
      if ((*(v22 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
      {
        v32 = ~v30;
        v33 = *(v11 + 48);
        do
        {
          v34 = v33 + 24 * v31;
          if (*(v34 + 16) == 2)
          {
            v35 = *v34 == v19 && *(v34 + 8) == v20;
            if (v35 || (sub_1D72646CC() & 1) != 0)
            {
              goto LABEL_7;
            }
          }

          v31 = (v31 + 1) & v32;
        }

        while (((*(v22 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0);
      }

      if (*(v11 + 16))
      {
        sub_1D7264A0C();
        MEMORY[0x1DA6FC0B0](4);
        sub_1D72621EC();
        v36 = sub_1D7264A5C();
        v37 = -1 << *(v11 + 32);
        v38 = v36 & ~v37;
        if ((*(v22 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
        {
          v39 = ~v37;
          v40 = *(v11 + 48);
          do
          {
            v41 = v40 + 24 * v38;
            if (*(v41 + 16) == 3)
            {
              v42 = *v41 == v19 && *(v41 + 8) == v20;
              if (v42 || (sub_1D72646CC() & 1) != 0)
              {
                goto LABEL_7;
              }
            }

            v38 = (v38 + 1) & v39;
          }

          while (((*(v22 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0);
        }

        if (*(v11 + 16))
        {
          sub_1D7264A0C();
          MEMORY[0x1DA6FC0B0](5);
          sub_1D72621EC();
          v43 = sub_1D7264A5C();
          v44 = -1 << *(v11 + 32);
          v45 = v43 & ~v44;
          if ((*(v22 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
          {
            v46 = ~v44;
            v47 = *(v11 + 48);
            do
            {
              v48 = v47 + 24 * v45;
              if (*(v48 + 16) == 4)
              {
                v49 = *v48 == v19 && *(v48 + 8) == v20;
                if (v49 || (sub_1D72646CC() & 1) != 0)
                {
                  goto LABEL_7;
                }
              }

              v45 = (v45 + 1) & v46;
            }

            while (((*(v22 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) != 0);
          }
        }
      }
    }
  }

  type metadata accessor for FormatDerivedDataError(0);
  sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
  swift_allocError();
  v51 = v50;

  v52 = FormatPropertyDefinition.identifier.getter();
  *v51 = v19;
  v51[1] = v20;
  v51[2] = v52;
  v51[3] = v53;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

void sub_1D61027EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  v5 = *(a1 + 24);

  v6 = FormatPropertyDefinition.identifier.getter();
  if (*(v5 + 16))
  {
    v8 = sub_1D5B69D90(v6, v7);
    v10 = v9;

    if (v10)
    {
      v11 = *(*(v5 + 56) + 8 * v8);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

  if (sub_1D695B3BC())
  {
LABEL_7:

    return;
  }

  v40 = a3;
  v12 = sub_1D695BC10();
  if (*(v12 + 16))
  {
    sub_1D7264A0C();
    sub_1D72621EC();
    v13 = sub_1D7264A5C();
    v14 = -1 << *(v12 + 32);
    v15 = v13 & ~v14;
    if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      v16 = ~v14;
      while (1)
      {
        v17 = *(*(v12 + 48) + v15);
        if (v17 != 1 && v17 != 2)
        {
          break;
        }

        v18 = sub_1D72646CC();

        if (v18)
        {

          goto LABEL_7;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_7;
    }
  }

LABEL_15:

  v19 = *v40;
  v20 = v40[1];
  if (*(v11 + 16))
  {
    sub_1D7264A0C();
    MEMORY[0x1DA6FC0B0](4);
    sub_1D72621EC();
    v21 = sub_1D7264A5C();
    v22 = v11 + 56;
    v23 = -1 << *(v11 + 32);
    v24 = v21 & ~v23;
    if ((*(v11 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
    {
      v25 = ~v23;
      v26 = *(v11 + 48);
      do
      {
        v27 = v26 + 24 * v24;
        if (*(v27 + 16) == 3)
        {
          v28 = *v27 == v19 && *(v27 + 8) == v20;
          if (v28 || (sub_1D72646CC() & 1) != 0)
          {
            goto LABEL_7;
          }
        }

        v24 = (v24 + 1) & v25;
      }

      while (((*(v22 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0);
    }

    if (*(v11 + 16))
    {
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](5);
      sub_1D72621EC();
      v29 = sub_1D7264A5C();
      v30 = -1 << *(v11 + 32);
      v31 = v29 & ~v30;
      if ((*(v22 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
      {
        v32 = ~v30;
        v33 = *(v11 + 48);
        do
        {
          v34 = v33 + 24 * v31;
          if (*(v34 + 16) == 4)
          {
            v35 = *v34 == v19 && *(v34 + 8) == v20;
            if (v35 || (sub_1D72646CC() & 1) != 0)
            {
              goto LABEL_7;
            }
          }

          v31 = (v31 + 1) & v32;
        }

        while (((*(v22 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0);
      }
    }
  }

  type metadata accessor for FormatDerivedDataError(0);
  sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
  swift_allocError();
  v37 = v36;

  v38 = FormatPropertyDefinition.identifier.getter();
  *v37 = v19;
  v37[1] = v20;
  v37[2] = v38;
  v37[3] = v39;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

void sub_1D6102C44(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  v5 = *(a1 + 24);

  v6 = FormatPropertyDefinition.identifier.getter();
  if (*(v5 + 16))
  {
    v8 = sub_1D5B69D90(v6, v7);
    v10 = v9;

    if (v10)
    {
      v11 = *(*(v5 + 56) + 8 * v8);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

  if ((sub_1D695B3BC() & 1) == 0)
  {
    v32 = a3;
    v12 = sub_1D695BC10();
    if (*(v12 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v13 = sub_1D7264A5C(), v14 = -1 << *(v12 + 32), v15 = v13 & ~v14, ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0))
    {
      v16 = ~v14;
      while (1)
      {
        v17 = *(*(v12 + 48) + v15);
        if (v17 != 1 && v17 != 2)
        {
          break;
        }

        v18 = sub_1D72646CC();

        if (v18)
        {

          goto LABEL_29;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:

      v20 = *v32;
      v19 = v32[1];
      if (!*(v11 + 16) || (sub_1D7264A0C(), MEMORY[0x1DA6FC0B0](5), sub_1D72621EC(), v21 = sub_1D7264A5C(), v22 = -1 << *(v11 + 32), v23 = v21 & ~v22, ((*(v11 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0))
      {
LABEL_25:

        type metadata accessor for FormatDerivedDataError(0);
        sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        swift_allocError();
        v29 = v28;

        v30 = FormatPropertyDefinition.identifier.getter();
        *v29 = v20;
        v29[1] = v19;
        v29[2] = v30;
        v29[3] = v31;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return;
      }

      v24 = ~v22;
      v25 = *(v11 + 48);
      while (1)
      {
        v26 = v25 + 24 * v23;
        if (*(v26 + 16) == 4)
        {
          v27 = *v26 == v20 && *(v26 + 8) == v19;
          if (v27 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }
        }

        v23 = (v23 + 1) & v24;
        if (((*(v11 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_25;
        }
      }
    }
  }

LABEL_29:
}

void sub_1D6102FDC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatCompilerProperty(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a1 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions);
  v32 = *(v34 + 16);
  if (v32)
  {
    v33 = v34 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    swift_beginAccess();
    v10 = 0;
    v35 = 0x80000001D73BA2A0;
    v31 = v2;
    v30 = a2;
    v29 = v6;
    do
    {
      if (v10 >= *(v34 + 16))
      {
        __break(1u);
        return;
      }

      sub_1D610B210(v33 + *(v6 + 72) * v10, v9, type metadata accessor for FormatCompilerProperty);
      if ((sub_1D70772D4() & 1) == 0)
      {
        v11 = *(a2 + 24);

        v12 = FormatCompilerProperty.identifier.getter();
        if (*(v11 + 16))
        {
          sub_1D5B69D90(v12, v13);
          v15 = v14;

          if (v15)
          {
            goto LABEL_5;
          }
        }

        else
        {
        }

        v16 = sub_1D7077D18();
        if (!*(v16 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v17 = sub_1D7264A5C(), v18 = -1 << *(v16 + 32), v19 = v17 & ~v18, ((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0))
        {
LABEL_19:

          type metadata accessor for FormatDerivedDataError(0);
          sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
          swift_allocError();
          v24 = v23;
          sub_1D5B49760(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D7273AE0;
          *(inited + 32) = FormatCompilerProperty.identifier.getter();
          *(inited + 40) = v26;
          v27 = sub_1D5BFAC38(inited);
          swift_setDeallocating();
          sub_1D5BFB68C(inited + 32);
          *v24 = v27;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_1D610B0A8(v9, type metadata accessor for FormatCompilerProperty);
          return;
        }

        v20 = ~v18;
        while (1)
        {
          v21 = *(*(v16 + 48) + v19);
          if (v21 != 1 && v21 != 2)
          {
            break;
          }

          v22 = sub_1D72646CC();

          if (v22)
          {
            goto LABEL_4;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

LABEL_4:

        a2 = v30;
        v6 = v29;
      }

LABEL_5:
      ++v10;
      sub_1D610B0A8(v9, type metadata accessor for FormatCompilerProperty);
    }

    while (v10 != v32);
  }
}
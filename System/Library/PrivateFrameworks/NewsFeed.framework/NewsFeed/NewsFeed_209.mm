uint64_t sub_1D6E125A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1D725895C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CB9EB0(a2, v43);
  memcpy(v44, a3, sizeof(v44));
  if ((v43[392] & 1) == 0)
  {
    sub_1D6CB9EB0(v43, v41);
    memcpy(v42, a3, 0x181uLL);
    if (sub_1D67480B8(v42) != 1)
    {
      nullsub_1();
      v39 = v38;
      v40 = swift_allocObject();
      memcpy((v40 + 16), v41, 0x188uLL);
      memcpy((v40 + 408), v39, 0x180uLL);
      *(v40 + 792) = a1;
      v32 = v40 | 0x5000000000000000;
      goto LABEL_9;
    }

    nullsub_1();
    sub_1D5EF93F0(v41);
LABEL_7:
    v33 = swift_allocObject();
    sub_1D725894C();
    v34 = sub_1D725893C();
    v36 = v35;
    (*(v9 + 8))(v12, v8);
    *(v33 + 16) = v34;
    *(v33 + 24) = v36;
    *a4 = v33;
    return sub_1D6CB9F60(v43);
  }

  sub_1D6CB9EB0(v43, v41);
  memcpy(v42, a3, 0x181uLL);
  if (sub_1D67480B8(v42) != 1)
  {
    nullsub_1();
    sub_1D6CB9F0C(v41);
    goto LABEL_7;
  }

  nullsub_1();
  v14 = v13;
  v15 = swift_allocObject();
  v16 = v41[13];
  *(v15 + 208) = v41[12];
  *(v15 + 224) = v16;
  *(v15 + 240) = v41[14];
  *(v15 + 256) = *&v41[15];
  v17 = v41[9];
  *(v15 + 144) = v41[8];
  *(v15 + 160) = v17;
  v18 = v41[11];
  *(v15 + 176) = v41[10];
  *(v15 + 192) = v18;
  v19 = v41[5];
  *(v15 + 80) = v41[4];
  *(v15 + 96) = v19;
  v20 = v41[7];
  *(v15 + 112) = v41[6];
  *(v15 + 128) = v20;
  v21 = v41[1];
  *(v15 + 16) = v41[0];
  *(v15 + 32) = v21;
  v22 = v41[3];
  *(v15 + 48) = v41[2];
  *(v15 + 64) = v22;
  v23 = *v14;
  v24 = v14[1];
  v25 = v14[3];
  *(v15 + 296) = v14[2];
  *(v15 + 312) = v25;
  *(v15 + 264) = v23;
  *(v15 + 280) = v24;
  v26 = v14[4];
  v27 = v14[5];
  v28 = v14[7];
  *(v15 + 360) = v14[6];
  *(v15 + 376) = v28;
  *(v15 + 328) = v26;
  *(v15 + 344) = v27;
  v29 = v14[8];
  v30 = v14[9];
  v31 = v14[11];
  *(v15 + 424) = v14[10];
  *(v15 + 440) = v31;
  *(v15 + 392) = v29;
  *(v15 + 408) = v30;
  *(v15 + 456) = a1;
  v32 = v15 | 0x6000000000000000;
LABEL_9:
  *a4 = v32;
  return sub_1D6CBA01C(v43);
}

unint64_t sub_1D6E128A8(uint64_t a1)
{
  *(a1 + 8) = sub_1D6E128D8();
  result = sub_1D6E1292C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6E128D8()
{
  result = qword_1EC896918;
  if (!qword_1EC896918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896918);
  }

  return result;
}

unint64_t sub_1D6E1292C()
{
  result = qword_1EC896920;
  if (!qword_1EC896920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896920);
  }

  return result;
}

uint64_t type metadata accessor for H12_V1.Bound(uint64_t a1)
{
  result = qword_1EC896930;
  if (!qword_1EC896930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6E129F4(uint64_t a1)
{
  result = sub_1D6E12A4C(&qword_1EC896940, type metadata accessor for H12_V1.Bound, &unk_1D735B54C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6E12A4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D6E12AB8()
{
  result = qword_1EC896950;
  if (!qword_1EC896950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896950);
  }

  return result;
}

unint64_t sub_1D6E12B0C()
{
  result = qword_1EC896958;
  if (!qword_1EC896958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896958);
  }

  return result;
}

void sub_1D6E12B60(uint64_t a1)
{
  if (!qword_1EC896968)
  {
    sub_1D6E13148(255, &qword_1EC896970, sub_1D6E12AB8, &type metadata for H12_V1.Layout, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC896968);
    }
  }
}

uint64_t sub_1D6E12BF8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6E12C3C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6E12C3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for H12_V1.Layout;
    v8[1] = &type metadata for H12_V1.Layout.Attributes;
    v8[2] = sub_1D6E12AB8();
    v8[3] = sub_1D6E12B0C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D6E12CE4()
{
  result = qword_1EC8969A0;
  if (!qword_1EC8969A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8969A0);
  }

  return result;
}

unint64_t sub_1D6E12D3C()
{
  result = qword_1EC8969A8;
  if (!qword_1EC8969A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8969A8);
  }

  return result;
}

unint64_t sub_1D6E12D94()
{
  result = qword_1EC8969B0;
  if (!qword_1EC8969B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8969B0);
  }

  return result;
}

unint64_t sub_1D6E12DEC()
{
  result = qword_1EC8969B8;
  if (!qword_1EC8969B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8969B8);
  }

  return result;
}

uint64_t sub_1D6E12E40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6E13148(0, &qword_1EC8969C0, sub_1D6E130F4, &type metadata for H12_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E130F4();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D6E12A4C(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D6CBA34C(0, &qword_1EC894A88, &type metadata for HMultiLayoutItem, MEMORY[0x1E69E62F8]);
  v20 = 1;
  sub_1D6CBA8E0(&qword_1EC894B28, sub_1D6749080, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D6E130F4()
{
  result = qword_1EC8969C8;
  if (!qword_1EC8969C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8969C8);
  }

  return result;
}

void sub_1D6E13148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D6E131C4()
{
  result = qword_1EC8969D8;
  if (!qword_1EC8969D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8969D8);
  }

  return result;
}

unint64_t sub_1D6E1321C()
{
  result = qword_1EC8969E0;
  if (!qword_1EC8969E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8969E0);
  }

  return result;
}

unint64_t sub_1D6E13274()
{
  result = qword_1EC8969E8;
  if (!qword_1EC8969E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8969E8);
  }

  return result;
}

NewsFeed::FeedFontLoadResult __swiftcall FeedFontLoadResult.init(loadedFonts:missingFonts:)(Swift::OpaquePointer loadedFonts, Swift::OpaquePointer missingFonts)
{
  v2->_rawValue = loadedFonts._rawValue;
  v2[1]._rawValue = missingFonts._rawValue;
  result.missingFonts = missingFonts;
  result.loadedFonts = loadedFonts;
  return result;
}

void *LoadedFont.assetHandle.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t LoadedFont.hashValue.getter()
{
  sub_1D7264A0C();
  v0 = sub_1D726372C();
  MEMORY[0x1DA6FC0B0](v0);
  return sub_1D7264A5C();
}

uint64_t sub_1D6E133CC()
{
  sub_1D7264A0C();
  v0 = sub_1D726372C();
  MEMORY[0x1DA6FC0B0](v0);
  return sub_1D7264A5C();
}

uint64_t sub_1D6E13444(uint64_t a1)
{
  sub_1D7264A0C();
  v1 = sub_1D726372C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D6E134F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5D07804(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  sub_1D5D07804(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D72816C0;
  *(v5 + 32) = sub_1D6E13648(a2, a3);
  v6 = sub_1D725B92C();
  sub_1D6E16948(0);
  sub_1D6E169C8(&qword_1EDF05358, sub_1D6E16948, MEMORY[0x1E69E6340]);
  v7 = sub_1D725BA3C();

  return v7;
}

uint64_t sub_1D6E13648(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_1D6E16A10(a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1D5D07804(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  sub_1D5D07804(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D728AF30;
  v10 = sub_1D6E13844(v4);

  *(v9 + 32) = v10;
  v11 = sub_1D6E13CB0(v6);

  *(v9 + 40) = v11;
  v12 = sub_1D6E13E1C(v8, v2);

  *(v9 + 48) = v12;
  sub_1D725BA4C();

  v13 = sub_1D725B92C();
  v14 = sub_1D725BA8C();

  return v14;
}

uint64_t sub_1D6E137B8(uint64_t a1, void (*a2)(__int128 *__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{
  a2(&v5, a4);
  sub_1D5D07804(0, &qword_1EDF3B9B0, &type metadata for FeedFontLoadResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

uint64_t sub_1D6E13844(uint64_t a1)
{
  v40[2] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for FeedFontManager.LocalFont(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v34 + 24);
    v36 = *(v4 + 72);
    v37 = v9;
    v33 = xmmword_1D7273AE0;
    v32 = xmmword_1D7270C10;
    do
    {
      sub_1D5BE8D70(v8, v6, type metadata accessor for FeedFontManager.LocalFont);
      v20 = sub_1D725844C();
      v38 = 0;
      v21 = [v37 registerFontWithURL:v20 error:&v38];

      if (v21)
      {
        v10 = v38;
        v11 = sub_1D7262EAC();
        sub_1D5C384A0(0);
        v12 = swift_allocObject();
        *(v12 + 16) = v33;
        v13 = *v6;
        v14 = [v13 description];
        v15 = sub_1D726207C();
        v17 = v16;

        *(v12 + 56) = MEMORY[0x1E69E6158];
        *(v12 + 64) = sub_1D5B7E2C0();
        *(v12 + 32) = v15;
        *(v12 + 40) = v17;
        sub_1D5B5A498(0, &qword_1EDF3C6A0, 0x1E69E9BF8);
        v18 = sub_1D72638FC();
        sub_1D725C30C("Font manager registered a local font, font=%@", 45, 2, &dword_1D5B42000, v18, v11, v12);

        sub_1D725A76C();
        swift_beginAccess();
        sub_1D5FF0BA8(v40, v13, 0);
        swift_endAccess();
        v19 = v40[1];

        sub_1D725A77C();
      }

      else
      {
        v22 = v38;
        v23 = sub_1D725829C();

        swift_willThrow();
        v35 = sub_1D7262EBC();
        sub_1D5C384A0(0);
        v24 = swift_allocObject();
        *(v24 + 16) = v32;
        v38 = 0;
        v39 = 0xE000000000000000;
        sub_1D7263F9C();
        v25 = v38;
        v26 = v39;
        *(v24 + 56) = MEMORY[0x1E69E6158];
        v27 = sub_1D5B7E2C0();
        *(v24 + 64) = v27;
        *(v24 + 32) = v25;
        *(v24 + 40) = v26;
        v38 = 0;
        v39 = 0xE000000000000000;
        v40[0] = v23;
        sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
        sub_1D7263F9C();
        v28 = v38;
        v29 = v39;
        *(v24 + 96) = MEMORY[0x1E69E6158];
        *(v24 + 104) = v27;
        *(v24 + 72) = v28;
        *(v24 + 80) = v29;
        sub_1D5B5A498(0, &qword_1EDF3C6A0, 0x1E69E9BF8);
        v30 = sub_1D72638FC();
        sub_1D725C30C("Failed to register font, url=%@, error=%{public}@", 49, 2, &dword_1D5B42000, v30, v35, v24);
      }

      sub_1D5BEA770(v6, type metadata accessor for FeedFontManager.LocalFont);
      v8 += v36;
      --v7;
    }

    while (v7);
  }

  sub_1D5D07804(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

uint64_t sub_1D6E13CB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    do
    {
      v3 = *v2;
      v4 = [v3 fontName];
      if (v4)
      {
        v5 = v4;
        v6 = [objc_opt_self() fontWithName:v4 size:0.0];

        if (v6)
        {

          sub_1D725A76C();
          swift_beginAccess();
          sub_1D5FF0BA8(v9, v3, 0);
          swift_endAccess();
          v7 = v9[1];

          sub_1D725A77C();
        }
      }

      ++v2;
      --v1;
    }

    while (v1);
  }

  sub_1D5D07804(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

uint64_t sub_1D6E13E1C(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CA8];
  if (v2)
  {
    sub_1D7263ECC();
    v5 = (a1 + 32);
    sub_1D5D07804(0, &qword_1EDF3B8E0, v3 + 8, MEMORY[0x1E69D6B18]);
    do
    {
      v8 = *v5++;
      MEMORY[0x1EEE9AC00](v6, v7);
      swift_allocObject();
      v9 = v8;
      sub_1D725BBAC();

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      v6 = sub_1D7263EAC();
      --v2;
    }

    while (v2);
  }

  sub_1D5D07804(0, &qword_1EDF3B8E0, v3 + 8, MEMORY[0x1E69D6B18]);
  v10 = sub_1D725B92C();
  sub_1D6E16948(0);
  sub_1D6E169C8(&qword_1EDF05358, sub_1D6E16948, MEMORY[0x1E69E6340]);
  sub_1D725BA3C();

  v11 = sub_1D725B92C();
  v12 = sub_1D725BA8C();

  return v12;
}

void sub_1D6E1404C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char a7)
{
  v12 = sub_1D72585BC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v39[1] = a5;
  v18 = *(a5 + 16);

  v19 = [a6 fontURL];
  if (v19)
  {
    v20 = v19;
    sub_1D72584EC();

    v21 = sub_1D725844C();
    (*(v13 + 8))(v16, v12);
    v22 = [v18 assetHandleForURL:v21 lifetimeHint:1];

    if ((a7 & 1) == 0)
    {
      v23 = [v22 filePath];
      if (!v23)
      {

        a1(v38);
LABEL_9:

        return;
      }
    }

    v24 = [v22 filePath];
    if (v24)
    {
      v26 = v24;
      v27 = sub_1D726207C();
      v29 = v28;

      v39[2] = v27;
      v39[3] = v29;
      sub_1D5D07804(0, qword_1EDF179A0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
      swift_allocObject();
      sub_1D725BB1C();
    }

    else
    {
      MEMORY[0x1EEE9AC00](0, v25);
      v39[-2] = v22;
      sub_1D5D07804(v30, qword_1EDF179A0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
      swift_allocObject();
      sub_1D725BBAC();
    }

    v31 = swift_allocObject();
    *(v31 + 16) = a6;
    *(v31 + 24) = v22;
    v32 = a6;
    v33 = v22;
    v34 = sub_1D725B92C();
    type metadata accessor for FeedFontManager();
    sub_1D725BAAC();

    *(swift_allocObject() + 16) = v32;
    v35 = v32;
    v36 = sub_1D725B92C();
    sub_1D725BACC();

    v37 = swift_allocObject();
    *(v37 + 16) = sub_1D5DF743C;
    *(v37 + 24) = v17;
    v22 = sub_1D725B92C();
    sub_1D725BB2C();

    goto LABEL_9;
  }

  __break(1u);
}

void sub_1D6E14458(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v37 = a4;
  v40[2] = *MEMORY[0x1E69E9840];
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v12 = a1[1];
  v14 = *(a2 + 24);
  sub_1D725840C();
  v15 = sub_1D725844C();
  (*(v8 + 8))(v11, v7);
  v38 = 0;
  LODWORD(v14) = [v14 registerFontWithURL:v15 error:&v38];

  if (v14)
  {
    v16 = v38;
    v17 = sub_1D7262EAC();
    sub_1D5C384A0(0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7273AE0;
    v19 = a3;
    v20 = [v19 description];
    v21 = sub_1D726207C();
    v23 = v22;

    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1D5B7E2C0();
    *(v18 + 32) = v21;
    *(v18 + 40) = v23;
    sub_1D5B5A498(0, &qword_1EDF3C6A0, 0x1E69E9BF8);
    v24 = sub_1D72638FC();
    sub_1D725C30C("Font manager registered a downloaded font, font=%@", 50, 2, &dword_1D5B42000, v24, v17, v18);

    sub_1D725A76C();
    swift_beginAccess();
    v25 = v37;
    v26 = v37;
    sub_1D5FF0BA8(v40, v19, v25);
    swift_endAccess();
    v27 = v40[1];

    sub_1D725A77C();
  }

  else
  {
    v28 = v38;
    v29 = sub_1D725829C();

    swift_willThrow();
    v30 = sub_1D7262EBC();
    sub_1D5C384A0(0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D7270C10;
    v32 = MEMORY[0x1E69E6158];
    *(v31 + 56) = MEMORY[0x1E69E6158];
    v33 = sub_1D5B7E2C0();
    *(v31 + 64) = v33;
    *(v31 + 32) = v13;
    *(v31 + 40) = v12;
    v38 = 0;
    v39 = 0xE000000000000000;
    v40[0] = v29;
    sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);

    sub_1D7263F9C();
    v34 = v38;
    v35 = v39;
    *(v31 + 96) = v32;
    *(v31 + 104) = v33;
    *(v31 + 72) = v34;
    *(v31 + 80) = v35;
    sub_1D5B5A498(0, &qword_1EDF3C6A0, 0x1E69E9BF8);
    v36 = sub_1D72638FC();
    sub_1D725C30C("Failed to register font, url=%@, error=%{public}@", 49, 2, &dword_1D5B42000, v36, v30, v31);
  }
}

void sub_1D6E14810(uint64_t a1, void *a2)
{
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7262EBC();
  sub_1D5C384A0(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7270C10;
  v11 = [a2 fontURL];
  if (v11)
  {
    v12 = v11;
    sub_1D72584EC();

    v13 = sub_1D72583DC();
    v15 = v14;
    v16 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v17 = sub_1D5B7E2C0();
    *(v10 + 64) = v17;
    *(v10 + 32) = v13;
    *(v10 + 40) = v15;
    (*(v5 + 8))(v8, v4);
    v22 = 0;
    v23 = 0xE000000000000000;
    v21[1] = a1;
    sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    sub_1D7263F9C();
    v18 = v22;
    v19 = v23;
    *(v10 + 96) = v16;
    *(v10 + 104) = v17;
    *(v10 + 72) = v18;
    *(v10 + 80) = v19;
    sub_1D5B5A498(0, &qword_1EDF3C6A0, 0x1E69E9BF8);
    v20 = sub_1D72638FC();
    sub_1D725C30C("Failed to download font, url=%@, error=%{public}@", 49, 2, &dword_1D5B42000, v20, v9, v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t FeedFontManager.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t FeedFontManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6E14AA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D60075F0(0, &qword_1EDF042D8, &qword_1EDF1AAF0, 0x1E69B5380, &qword_1EDF1AAE0);
    v2 = sub_1D7263CCC();
    v15 = v2;
    sub_1D7263BBC();
    if (sub_1D7263C2C())
    {
      sub_1D5B5A498(0, &qword_1EDF1AAF0, 0x1E69B5380);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1D5FF2190(v9 + 1);
        }

        v2 = v15;
        result = sub_1D72636FC();
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

      while (sub_1D7263C2C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D6E14CA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D60075F0(0, &qword_1EC87FB00, &qword_1EDF1A710, 0x1E69DD250, &qword_1EC87FB08);
    v2 = sub_1D7263CCC();
    v15 = v2;
    sub_1D7263BBC();
    if (sub_1D7263C2C())
    {
      sub_1D5B5A498(0, &qword_1EDF1A710, 0x1E69DD250);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1D5FF618C(v9 + 1);
        }

        v2 = v15;
        result = sub_1D72636FC();
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

      while (sub_1D7263C2C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t sub_1D6E14EE4()
{
  result = qword_1EDF12988;
  if (!qword_1EDF12988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12988);
  }

  return result;
}

uint64_t sub_1D6E14F70(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v68 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v55 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v59 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v63 = (a2 + 56);

  v15 = 0;
  v61 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v62 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_1D7264A0C();

    sub_1D72621EC();
    v23 = sub_1D7264A5C();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v61;
    v15 = v62;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_1D72646CC() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v61;
  v27 = v62;
  v65 = v59;
  v66 = v62;
  v67 = v11;
  v64[0] = v61;
  v64[1] = v7;

  v30 = *(v5 + 32);
  v56 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v56;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v57 = &v55;
    MEMORY[0x1EEE9AC00](v28, v29);
    v2 = &v55 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v63, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v60 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v58 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v27;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_1D6EC09F8(v60, v56, v58, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v27 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v62 = v27;
            v40 = (v39 + ((v27 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            sub_1D7264A0C();

            sub_1D72621EC();
            v42 = sub_1D7264A5C();
            v43 = -1 << *(v5 + 32);
            v8 = v42 & ~v43;
            v2 = v8 >> 6;
            v44 = 1 << v8;
            if (((1 << v8) & v63[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v62;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v45 = (*(v5 + 48) + 16 * v8);
          if (*v45 != v41 || v45[1] != v4)
          {
            v47 = ~v43;
            while ((sub_1D72646CC() & 1) == 0)
            {
              v8 = (v8 + 1) & v47;
              v2 = v8 >> 6;
              v44 = 1 << v8;
              if (((1 << v8) & v63[v8 >> 6]) == 0)
              {
                v3 = v61;
                goto LABEL_45;
              }

              v48 = (*(v5 + 48) + 16 * v8);
              if (*v48 == v41 && v48[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v61;
          v35 = v60[v2];
          v60[v2] = v35 & ~v44;
          v26 = (v35 & v44) == 0;
          v27 = v62;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v58 - 1;
        if (__OFSUB__(v58, 1))
        {
          __break(1u);
        }

        if (v58 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v50 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v62;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v63, v50);
  v52 = v55;
  sub_1D6E15B8C(v51, v56, v5, v2, v64);
  v54 = v53;

  if (!v52)
  {

    MEMORY[0x1DA6FD500](v51, -1, -1);
    v3 = v64[0];
    v59 = v65;
    v5 = v54;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_1D5B87E38(v13);
    return v5;
  }

  result = MEMORY[0x1DA6FD500](v51, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1D6E154E0(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v54 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v48 = a1;
    v49 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v48;
          v16 = v49;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v49 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v48;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v4 = *(*(v15 + 48) + ((v49 << 9) | (8 * v18)));
        v19 = sub_1D72649FC();
        v20 = -1 << *(v6 + 32);
        v5 = v19 & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
      }

      while (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (*(v21 + 8 * v5) == v4)
      {
        break;
      }

      while (1)
      {
        v5 = (v5 + 1) & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
        if (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v5) == v4)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v51 = v47;
    v52 = v49;
    v53 = v11;
    v50[0] = v48;
    v50[1] = v8;
    v4 = (63 - v20) >> 6;
    v14 = 8 * v4;

    if (v4 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v41 = swift_slowAlloc();
      memcpy(v41, (v6 + 56), v14);
      v42 = sub_1D6E15DC4(v41, v4, v6, v5, v50);

      MEMORY[0x1DA6FD500](v41, -1, -1);
      v2 = v50[0];
      v47 = v51;
      v49 = v52;
      v6 = v42;
      goto LABEL_41;
    }

LABEL_18:
    v44 = v4;
    v45 = &v43;
    MEMORY[0x1EEE9AC00](v22, v23);
    v5 = &v43 - v24;
    memcpy(&v43 - v24, (v6 + 56), v14);
    v25 = *(v6 + 16);
    *(v5 + 8 * v3) &= ~v2;
    v26 = v25 - 1;
    v14 = -1;
    v4 = 1;
    v2 = v48;
LABEL_19:
    v46 = v26;
    while (v11)
    {
LABEL_27:
      v30 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v3 = *(*(v2 + 48) + ((v49 << 9) | (8 * v30)));
      v31 = sub_1D72649FC();
      v32 = -1 << *(v6 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v35 = 1 << v33;
      if (((1 << v33) & *(v13 + 8 * (v33 >> 6))) != 0)
      {
        v36 = *(v6 + 48);
        if (*(v36 + 8 * v33) == v3)
        {
LABEL_20:
          v27 = *(v5 + 8 * v34);
          *(v5 + 8 * v34) = v27 & ~v35;
          if ((v27 & v35) != 0)
          {
            v26 = v46 - 1;
            if (__OFSUB__(v46, 1))
            {
              __break(1u);
            }

            if (v46 == 1)
            {

              v6 = MEMORY[0x1E69E7CD0];
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v37 = ~v32;
          while (1)
          {
            v33 = (v33 + 1) & v37;
            v34 = v33 >> 6;
            v35 = 1 << v33;
            if (((1 << v33) & *(v13 + 8 * (v33 >> 6))) == 0)
            {
              break;
            }

            if (*(v36 + 8 * v33) == v3)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v28 = v49;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v29 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v29);
      ++v28;
      if (v11)
      {
        v49 = v29;
        goto LABEL_27;
      }
    }

    if (v12 <= v49 + 1)
    {
      v38 = v49 + 1;
    }

    else
    {
      v38 = v12;
    }

    v49 = v38 - 1;
    v6 = sub_1D6EC100C(v5, v44, v46, v6);
LABEL_41:
    v39 = v2;
LABEL_43:
    sub_1D5B87E38(v39);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v6;
}

void sub_1D6E1593C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v30 = a3 + 56;
  while (2)
  {
    v27 = v8;
    do
    {
      while (1)
      {
        if (*v5 >> 62)
        {
          v9 = sub_1D7263BFC();
        }

        else
        {
          v9 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = v5[1];
        if (v10 == v9)
        {

          sub_1D6EC0E24(a1, a2, v27, a3);
          return;
        }

        v11 = *v5;
        if ((*v5 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1DA6FB460](v5[1]);
          v25 = v5[1];
          v13 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_27;
          }
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            return;
          }

          if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v12 = *(v11 + 8 * v10 + 32);
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_27;
          }
        }

        v5[1] = v13;
        v14 = sub_1D72636FC();
        v15 = -1 << *(a3 + 32);
        v16 = v14 & ~v15;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v30 + 8 * (v16 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_1D5B5A498(0, &qword_1EDF1AAF0, 0x1E69B5380);
        v19 = *(*(a3 + 48) + 8 * v16);
        v20 = sub_1D726370C();

        if (v20)
        {
          break;
        }

        v21 = ~v15;
        while (1)
        {
          v16 = (v16 + 1) & v21;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v30 + 8 * (v16 >> 6))) == 0)
          {
            break;
          }

          v22 = *(*(a3 + 48) + 8 * v16);
          v23 = sub_1D726370C();

          if (v23)
          {
            goto LABEL_16;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_16:
      v5 = a5;

      v24 = a1[v17];
      a1[v17] = v24 & ~v18;
    }

    while ((v24 & v18) == 0);
    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_29;
    }

    if (v27 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1D6E15B8C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          sub_1D6EC09F8(a1, a2, v30, a3);
          return;
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_1D7264A0C();

        sub_1D72621EC();
        v19 = sub_1D7264A5C();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_1D72646CC() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = a1[v22];
      a1[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1D6E15DC4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
  while (1)
  {
    v13 = a5[3];
    v14 = a5[4];
    if (!v14)
    {
      break;
    }

    v15 = a5[3];
LABEL_9:
    v18 = *(*(*a5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    a5[3] = v15;
    a5[4] = (v14 - 1) & v14;
    result = sub_1D72649FC();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + 8 * v20) == v18)
      {
LABEL_2:
        v12 = v8[v21];
        v8[v21] = v12 & ~v22;
        if ((v12 & v22) != 0)
        {
          if (__OFSUB__(v10--, 1))
          {
LABEL_23:
            __break(1u);
            return result;
          }

          if (!v10)
          {
            return MEMORY[0x1E69E7CD0];
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + 8 * v20) == v18)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v16 = (a5[2] + 64) >> 6;
  v17 = a5[3];
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= v16)
    {
      break;
    }

    v14 = *(a5[1] + 8 * v15);
    ++v17;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (v16 <= v13 + 1)
  {
    v26 = v13 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_1D6EC100C(v8, a2, v10, a3);
}

void sub_1D6E15F80(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v76[0] = a2;
  sub_1D6E17484(0, qword_1EDF38750, type metadata accessor for FeedLayoutCacheKey);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v83 = v76 - v11;
  v88 = type metadata accessor for FeedLayoutCacheKey(0);
  MEMORY[0x1EEE9AC00](v88, v12);
  v14 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v91 = v76 - v17;
  v18 = *(a3 + 16);
  v19 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v20 = *(a1 + v19) & ((-1 << a4) - 1);
  v78 = a1;
  *(a1 + v19) = v20;
  v21 = v18 - 1;
  v82 = (v22 + 56);
  v84 = v22;
  v81 = (v22 + 48);
  v103 = a3 + 56;
  v104 = a3;
  v79 = xmmword_1D728D640;
  v80 = a5;
  do
  {
    v77 = v21;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v34 = 1;
              v33 = v83;
              goto LABEL_14;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_64:
          __break(1u);
          return;
        }

        v28 = a5[3];
LABEL_13:
        v32 = (v27 - 1) & v27;
        v33 = v83;
        sub_1D5BE8D70(*(v23 + 48) + *(v84 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v83, type metadata accessor for FeedLayoutCacheKey);
        v34 = 0;
        v31 = v28;
LABEL_14:
        v35 = v88;
        (*v82)(v33, v34, 1, v88);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v81)(v33, 1, v35) == 1)
        {
          sub_1D6E174D8(v33, qword_1EDF38750, type metadata accessor for FeedLayoutCacheKey);
          v75 = v104;

          sub_1D5BF4BE0(v78, v76[0], v77, v75);
          return;
        }

        v36 = v91;
        sub_1D5BF49C4(v33, v91, type metadata accessor for FeedLayoutCacheKey);
        sub_1D7264A0C();
        v37 = *v36;
        v38 = v36[1];
        v39 = v36[2];
        v40 = v36[3];
        v41 = v36[4];
        v42 = v36[5];
        v43 = v36[6];
        v96 = v36[7];
        v44 = v36[9];
        v95 = v36[8];
        v94 = v44;
        v109 = v38;
        v110 = v37;
        sub_1D72621EC();
        v106 = v39;
        v100 = v40;
        sub_1D72621EC();
        v99 = v41;
        v98 = v42;
        sub_1D72621EC();
        MEMORY[0x1DA6FC0B0](*(v43 + 16));
        v45 = *(v43 + 16);
        v97 = v43;
        if (v45)
        {
          v46 = v43 + 40;
          do
          {

            sub_1D72621EC();

            v46 += 16;
            --v45;
          }

          while (v45);
        }

        sub_1D72621EC();
        sub_1D5BE251C(&v111, v94);
        v47 = v91;
        v48 = *(v91 + 80);
        v93 = *(v91 + 136);
        v92 = *(v91 + 120);
        v90 = *(v91 + 104);
        v89 = *(v91 + 88);
        v87 = v48;
        MEMORY[0x1DA6FC0B0](v48);
        sub_1D5BE7138(v89.f64[0], v89.f64[1]);
        sub_1D5BE7138(v90.f64[0], v90.f64[1]);
        v49 = v92.f64[0];
        if (v92.f64[0] == 0.0)
        {
          v49 = 0.0;
        }

        MEMORY[0x1DA6FC0E0](*&v49);
        v50 = v92.f64[1];
        if (v92.f64[1] == 0.0)
        {
          v50 = 0.0;
        }

        MEMORY[0x1DA6FC0E0](*&v50);
        v51 = v93.f64[0];
        if (v93.f64[0] == 0.0)
        {
          v51 = 0.0;
        }

        MEMORY[0x1DA6FC0E0](*&v51);
        v52 = v93.f64[1];
        if (v93.f64[1] == 0.0)
        {
          v52 = 0.0;
        }

        MEMORY[0x1DA6FC0E0](*&v52);
        v53 = (v47 + *(v88 + 24));
        sub_1D5BE7138(*v53, v53[1]);
        sub_1D72621EC();
        v54 = type metadata accessor for FeedLayoutCacheDynamicKey(0);
        sub_1D725A19C();
        sub_1D6E169C8(&qword_1EDF3BFB0, MEMORY[0x1E69D7280], MEMORY[0x1E69D7290]);
        sub_1D7261E8C();
        sub_1D7264A2C();
        sub_1D7264A2C();
        v55 = *(v54 + 36);
        v85 = v53;
        sub_1D5BE71D0(&v111, *(v53 + v55));
        v56 = sub_1D7264A5C();
        v57 = -1 << *(v104 + 32);
        v58 = v56 & ~v57;
        v59 = v58 >> 6;
        v60 = 1 << v58;
        if (((1 << v58) & *(v103 + 8 * (v58 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_1D5BEA770(v91, type metadata accessor for FeedLayoutCacheKey);
        a5 = v80;
      }

      v101 = ~v57;
      v102 = *(v84 + 72);
      v86 = (v97 + 40);
      while (1)
      {
        if (sub_1D5BE8D70(*(v104 + 48) + v102 * v58, v14, type metadata accessor for FeedLayoutCacheKey), v61 = *v14, v62 = *(v14 + 1), v63 = *(v14 + 2), v64 = *(v14 + 3), v65 = *(v14 + 4), v66 = *(v14 + 5), v68 = *(v14 + 6), v67 = *(v14 + 7), v69 = *(v14 + 9), v107 = *(v14 + 8), v108 = v67, v105 = v69, v61 == v110) && v62 == v109 || (sub_1D72646CC())
        {
          if (v63 == v106 && v64 == v100 || (sub_1D72646CC()) && (v65 == v99 && v66 == v98 || (sub_1D72646CC()))
          {
            v70 = *(v68 + 16);
            if (v70 == *(v97 + 16))
            {
              if (v70 && v68 != v97)
              {
                v71 = (v68 + 40);
                v72 = v86;
                do
                {
                  v73 = *(v71 - 1) == *(v72 - 1) && *v71 == *v72;
                  if (!v73 && (sub_1D72646CC() & 1) == 0)
                  {
                    goto LABEL_28;
                  }

                  v71 += 2;
                  v72 += 2;
                }

                while (--v70);
              }

              if (v108 == v96 && v107 == v95 || (sub_1D72646CC()) && (sub_1D5BFC390(v105, v94) & 1) != 0 && *(v14 + 10) == v87 && vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(v14 + 88), v89), vceqq_f64(*(v14 + 104), v90)), vuzp1q_s32(vceqq_f64(*(v14 + 120), v92), vceqq_f64(*(v14 + 136), v93))), v79)) == 255 && (sub_1D5C1968C(&v14[*(v88 + 24)], v85))
              {
                break;
              }
            }
          }
        }

LABEL_28:
        sub_1D5BEA770(v14, type metadata accessor for FeedLayoutCacheKey);
        v58 = (v58 + 1) & v101;
        v59 = v58 >> 6;
        v60 = 1 << v58;
        if ((*(v103 + 8 * (v58 >> 6)) & (1 << v58)) == 0)
        {
          goto LABEL_3;
        }
      }

      sub_1D5BEA770(v14, type metadata accessor for FeedLayoutCacheKey);
      sub_1D5BEA770(v91, type metadata accessor for FeedLayoutCacheKey);
      v74 = v78[v59];
      v78[v59] = v74 & ~v60;
      a5 = v80;
    }

    while ((v74 & v60) == 0);
    v21 = v77 - 1;
    if (__OFSUB__(v77, 1))
    {
      goto LABEL_64;
    }
  }

  while (v77 != 1);
}

void sub_1D6E16948(uint64_t a1)
{
  if (!qword_1EDF05360)
  {
    sub_1D5D07804(255, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    v1 = sub_1D72627FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF05360);
    }
  }
}

uint64_t sub_1D6E169C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D6E16A10(uint64_t a1)
{
  v84 = type metadata accessor for FeedFontManager.LocalFont(0);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v2);
  v85 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1D72585BC();
  v4 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v5);
  v90 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v92 = &v81 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v93 = &v81 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v82 = &v81 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v96 = &v81 - v18;
  sub_1D6E17484(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v98 = &v81 - v21;
  v104 = MEMORY[0x1E69E7CC0];
  v105 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D7263BBC();
    sub_1D5B5A498(0, &qword_1EDF1AAF0, 0x1E69B5380);
    sub_1D5E2A738(&qword_1EDF1AAE0, &qword_1EDF1AAF0, 0x1E69B5380);
    sub_1D7262B8C();
    a1 = v106;
    v22 = v107;
    v23 = v108;
    v24 = v109;
    v25 = v110;
  }

  else
  {
    v26 = -1 << *(a1 + 32);
    v22 = a1 + 56;
    v27 = ~v26;
    v28 = -v26;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v25 = v29 & *(a1 + 56);

    v23 = v27;
    v24 = 0;
  }

  v86 = v23;
  v30 = (v23 + 64) >> 6;
  v97 = (v4 + 56);
  v81 = (v4 + 32);
  v31 = &selRef_superfeedConfigResourceID;
  v91 = xmmword_1D7273AE0;
  v88 = MEMORY[0x1E69E7CC0];
  v89 = MEMORY[0x1E69E7CC0];
  v87 = MEMORY[0x1E69E7CC0];
  v94 = v22;
  v95 = v30;
  v100 = (v4 + 8);
LABEL_8:
  v32 = v24;
  for (i = v25; a1 < 0; v31 = &selRef_superfeedConfigResourceID)
  {
    v37 = sub_1D7263C2C();
    if (!v37)
    {
      goto LABEL_46;
    }

    v102 = v37;
    sub_1D5B5A498(0, &qword_1EDF1AAF0, 0x1E69B5380);
    swift_dynamicCast();
    v36 = v103;
    v24 = v32;
    v25 = i;
    if (!v103)
    {
      goto LABEL_46;
    }

LABEL_17:
    v38 = [v36 v31[82]];
    if (!v38)
    {
      v73 = v98;
      (*v97)(v98, 1, 1, v101);
      sub_1D6E174D8(v73, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v74 = v36;
      MEMORY[0x1DA6F9CE0]();
      if (*(v105 + 16) >= *(v105 + 24) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();

      v87 = v105;
      goto LABEL_8;
    }

    v39 = v38;
    v99 = v25;
    v40 = v98;
    sub_1D72584EC();

    v41 = v101;
    (*v97)(v40, 0, 1, v101);
    sub_1D6E174D8(v40, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v42 = [v36 v31[82]];
    v43 = v100;
    if (!v42)
    {
      goto LABEL_48;
    }

    v44 = v42;
    v45 = v96;
    sub_1D72584EC();

    v46 = sub_1D725839C();
    v47 = *v43;
    (*v43)(v45, v41);
    v48 = [v36 v31[82]];
    v49 = v48;
    if (v46)
    {
      if (!v48)
      {
        goto LABEL_52;
      }

      v75 = v82;
      sub_1D72584EC();

      v76 = v85;
      *v85 = v36;
      (*v81)(&v76[*(v84 + 20)], v75, v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = &selRef_superfeedConfigResourceID;
      v25 = v99;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v89 = sub_1D69965E0(0, v89[2] + 1, 1, v89);
      }

      v22 = v94;
      v30 = v95;
      v79 = v89[2];
      v78 = v89[3];
      if (v79 >= v78 >> 1)
      {
        v89 = sub_1D69965E0((v78 > 1), v79 + 1, 1, v89);
      }

      v80 = v89;
      v89[2] = v79 + 1;
      sub_1D5BF49C4(v85, v80 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v79, type metadata accessor for FeedFontManager.LocalFont);
      goto LABEL_8;
    }

    if (!v48)
    {
      goto LABEL_49;
    }

    v50 = v93;
    sub_1D72584EC();

    v51 = sub_1D725853C();
    v53 = v52;
    v47(v50, v41);
    if (v53)
    {
      if (v51 == 1886680168 && v53 == 0xE400000000000000)
      {
LABEL_33:

LABEL_34:
        v72 = v36;
        MEMORY[0x1DA6F9CE0]();
        if (*(v104 + 16) >= *(v104 + 24) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();

        v88 = v104;
        v22 = v94;
        v30 = v95;
        v31 = &selRef_superfeedConfigResourceID;
        v25 = v99;
        goto LABEL_8;
      }

      v54 = sub_1D72646CC();

      if (v54)
      {
        goto LABEL_34;
      }
    }

    v55 = [v36 fontURL];
    if (!v55)
    {
      goto LABEL_50;
    }

    v56 = v55;
    v57 = v92;
    sub_1D72584EC();

    v58 = sub_1D725853C();
    v60 = v59;
    v47(v57, v41);
    if (v60)
    {
      if (v58 == 0x7370747468 && v60 == 0xE500000000000000)
      {
        goto LABEL_33;
      }

      v61 = sub_1D72646CC();

      if (v61)
      {
        goto LABEL_34;
      }
    }

    v62 = a1;
    v63 = sub_1D7262EBC();
    sub_1D5C384A0(0);
    v64 = swift_allocObject();
    *(v64 + 16) = v91;
    v65 = [v36 fontURL];
    if (!v65)
    {
      goto LABEL_51;
    }

    v66 = v65;
    v67 = v90;
    sub_1D72584EC();

    v68 = sub_1D72583DC();
    v70 = v69;
    *(v64 + 56) = MEMORY[0x1E69E6158];
    *(v64 + 64) = sub_1D5B7E2C0();
    *(v64 + 32) = v68;
    *(v64 + 40) = v70;
    v47(v67, v101);
    sub_1D5B5A498(0, &qword_1EDF3C6A0, 0x1E69E9BF8);
    v71 = sub_1D72638FC();
    sub_1D725C30C("Unsupported font URL= %{public}@ , skipping", 43, 2, &dword_1D5B42000, v71, v63, v64);

    v32 = v24;
    i = v99;
    a1 = v62;
    v22 = v94;
    v30 = v95;
  }

  v34 = v32;
  v35 = i;
  v24 = v32;
  if (i)
  {
LABEL_13:
    v25 = (v35 - 1) & v35;
    v36 = *(*(a1 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v35)))));
    if (v36)
    {
      goto LABEL_17;
    }

LABEL_46:
    sub_1D5B87E38(a1);
    return;
  }

  while (1)
  {
    v24 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v24 >= v30)
    {
      goto LABEL_46;
    }

    v35 = *(v22 + 8 * v24);
    ++v34;
    if (v35)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

uint64_t type metadata accessor for FeedFontManager.LocalFont(uint64_t a1)
{
  result = qword_1EDF15428;
  if (!qword_1EDF15428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6E17484(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6E174D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6E17484(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6E1755C(uint64_t a1)
{
  result = sub_1D5B5A498(319, &qword_1EDF1AAF0, 0x1E69B5380);
  if (v2 <= 0x3F)
  {
    result = sub_1D72585BC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t FormatOptionEnum.init(name:value:selectors:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

void FormatOptionEnum.init(type:value:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 48);
  v67 = *(a1 + 32);
  v68 = v3;
  v69 = *(a1 + 64);
  v70 = *(a1 + 80);
  v4 = v70;
  v5 = *(a1 + 16);
  v66[0] = *a1;
  v66[1] = v5;
  v7 = a2[1];
  v6 = a2[2];
  if (v70 > 0x3Fu)
  {

    type metadata accessor for FormatLayoutError(0);
    sub_1D5D285FC();
    swift_allocError();
    v63 = *(a1 + 16);
    LOBYTE(v65) = *(a1 + 80);
    v19 = *(a1 + 48);
    v64 = *(a1 + 64);
    v20 = *(a1 + 32);
    *v21 = *a1;
    *(v21 + 16) = v63;
    *(v21 + 48) = v19;
    *(v21 + 64) = v64;
    *(v21 + 32) = v20;
    *(v21 + 80) = v65;
    *(v21 + 88) = 0xD000000000000025;
    *(v21 + 96) = 0x80000001D73F3DB0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v8 = *a2;
    v9 = v67;
    v10 = *(v67 + 16);
    v71 = a2[2];
    v59 = *(&v67 + 1);
    v60 = v67;
    v54 = v8;
    v55 = *(&v69 + 1);
    v53 = v70;
    v57 = *(&v68 + 1);
    v58 = v68;
    v56 = v69;
    if (v10)
    {
      sub_1D618EC0C(v67, *(&v67 + 1), v68, *(&v68 + 1), v69, *(&v69 + 1), v70);
      v62 = MEMORY[0x1E69E7CC0];

      sub_1D5BFC364(0, v10, 0);
      v11 = v62;
      v12 = (v67 + 40);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        v16 = *(v62 + 16);
        v15 = *(v62 + 24);

        if (v16 >= v15 >> 1)
        {
          sub_1D5BFC364((v15 > 1), v16 + 1, 1);
        }

        *(v62 + 16) = v16 + 1;
        v17 = v62 + 16 * v16;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        v12 += 6;
        --v10;
      }

      while (v10);
      v9 = v60;
      v4 = v53;
      sub_1D60CF6F4(v60, v59, v58, v57, v56, v55, v53);
      v6 = v71;
      v8 = v54;
    }

    else
    {
      sub_1D618EC0C(v67, *(&v67 + 1), v68, *(&v68 + 1), v69, *(&v69 + 1), v70);
      v11 = MEMORY[0x1E69E7CC0];
    }

    v22 = sub_1D5B86020(v11);

    v23 = sub_1D5BE240C(v8, v7, v22);

    if (v23)
    {
      v24 = *(&v66[0] + 1);
      v46 = *&v66[0];

      sub_1D62B7D78(v66);
      v25 = *(v6 + 16);
      if (v25)
      {
        v45 = v24;
        v61 = MEMORY[0x1E69E7CC0];
        sub_1D6997388(0, v25, 0);
        v26 = 0;
        v27 = v61;
        v48 = v7;
        v49 = v6 + 32;
        v28 = v22 + 56;
        v47 = v25;
        while (v26 < *(v6 + 16))
        {
          v52 = v27;
          v29 = (v49 + 32 * v26);
          v30 = v29[2];
          v31 = v29[3];
          v51 = v29[1];
          if (!*(v22 + 16))
          {

            swift_bridgeObjectRetain_n();

            goto LABEL_30;
          }

          v32 = *v29;
          sub_1D7264A0C();

          swift_bridgeObjectRetain_n();
          sub_1D72621EC();
          v33 = sub_1D7264A5C();
          v34 = -1 << *(v22 + 32);
          v35 = v33 & ~v34;
          if (((*(v28 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
          {
LABEL_29:

LABEL_30:
            type metadata accessor for FormatLayoutError(0);
            sub_1D5D285FC();
            swift_allocError();
            *v43 = v30;
            v43[1] = v31;
            v43[2] = v60;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            return;
          }

          ++v26;
          v36 = ~v34;
          while (1)
          {
            v37 = (*(v22 + 48) + 16 * v35);
            v38 = *v37 == v30 && v37[1] == v31;
            if (v38 || (sub_1D72646CC() & 1) != 0)
            {
              break;
            }

            v35 = (v35 + 1) & v36;
            if (((*(v28 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          v27 = v52;
          v40 = *(v52 + 16);
          v39 = *(v52 + 24);
          if (v40 >= v39 >> 1)
          {
            sub_1D6997388((v39 > 1), v40 + 1, 1);
            v27 = v52;
          }

          *(v27 + 16) = v40 + 1;
          v41 = (v27 + 32 * v40);
          v41[4] = v32;
          v41[5] = v51;
          v41[6] = v30;
          v41[7] = v31;
          v7 = v48;
          v6 = v71;
          if (v26 == v47)
          {
            v44 = v27;
            sub_1D60CF6F4(v60, v59, v58, v57, v56, v55, v53);

            v8 = v54;
            v24 = v45;
            goto LABEL_32;
          }
        }

        __break(1u);
      }

      else
      {
        sub_1D60CF6F4(v9, v59, v58, v57, v56, v55, v4);

        v44 = MEMORY[0x1E69E7CC0];
LABEL_32:
        *a3 = v46;
        a3[1] = v24;
        a3[2] = v8;
        a3[3] = v7;
        a3[4] = v44;
      }
    }

    else
    {

      sub_1D62B7D78(v66);
      type metadata accessor for FormatLayoutError(0);
      sub_1D5D285FC();
      swift_allocError();
      *v42 = v8;
      v42[1] = v7;
      v42[2] = v9;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }
}

{
  v3 = *(a1 + 48);
  v66 = *(a1 + 32);
  v67 = v3;
  v68 = *(a1 + 64);
  v69 = *(a1 + 80);
  v4 = v69;
  v5 = *(a1 + 16);
  v65[0] = *a1;
  v65[1] = v5;
  v6 = a2[1];
  v8 = a2[3];
  v7 = a2[4];
  if (v69 > 0x3Fu)
  {

    type metadata accessor for FormatLayoutError(0);
    sub_1D5D285FC();
    swift_allocError();
    v62 = *(a1 + 16);
    LOBYTE(v64) = *(a1 + 80);
    v13 = *(a1 + 48);
    v63 = *(a1 + 64);
    v14 = *(a1 + 32);
    *v15 = *a1;
    *(v15 + 16) = v62;
    *(v15 + 48) = v13;
    *(v15 + 64) = v63;
    *(v15 + 32) = v14;
    *(v15 + 80) = v64;
    *(v15 + 88) = 0xD000000000000025;
    *(v15 + 96) = 0x80000001D73F3DB0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v9 = *a2;
  v10 = a2[2];
  v11 = v66;
  v56 = v67;
  v57 = v68;
  if (v65[0] == *a2)
  {

    sub_1D62B7D78(v65);
  }

  else
  {
    v16 = sub_1D72646CC();

    sub_1D62B7D78(v65);
    if ((v16 & 1) == 0)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5D285FC();
      swift_allocError();
      *v47 = v9;
      v47[1] = v6;
      v47[2] = v11;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    }
  }

  v51 = v9;
  v70 = v10;
  v17 = *(v11 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  v55 = v6;
  v58 = v8;
  v59 = v7;
  if (v17)
  {
    v61 = MEMORY[0x1E69E7CC0];

    sub_1D5BFC364(0, v17, 0);
    v19 = v61;
    v20 = (v11 + 40);
    do
    {
      v22 = *(v20 - 1);
      v21 = *v20;
      v24 = *(v61 + 16);
      v23 = *(v61 + 24);

      if (v24 >= v23 >> 1)
      {
        sub_1D5BFC364((v23 > 1), v24 + 1, 1);
      }

      *(v61 + 16) = v24 + 1;
      v25 = v61 + 16 * v24;
      *(v25 + 32) = v22;
      *(v25 + 40) = v21;
      v20 += 6;
      --v17;
    }

    while (v17);
    sub_1D60CF6F4(v11, *(&v11 + 1), v56, *(&v56 + 1), v57, *(&v57 + 1), v4);
    v6 = v55;
    v8 = v58;
    v7 = v59;
    v18 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v26 = sub_1D5B86020(v19);

  v27 = v70;
  v28 = sub_1D5BE240C(v70, v8, v26);

  if (v28)
  {

    v29 = *(v7 + 16);
    if (v29)
    {
      v49 = *(v7 + 16);
      sub_1D6997388(0, v29, 0);
      v30 = 0;
      v31 = v18;
      v50 = v7 + 32;
      v32 = v26 + 56;
      while (v30 < *(v7 + 16))
      {
        v33 = v31;
        v34 = (v50 + 32 * v30);
        v35 = v34[2];
        v36 = v34[3];
        v54 = v34[1];
        if (!*(v26 + 16))
        {

          swift_bridgeObjectRetain_n();

          goto LABEL_34;
        }

        v52 = *v34;
        sub_1D7264A0C();

        swift_bridgeObjectRetain_n();
        sub_1D72621EC();
        v37 = sub_1D7264A5C();
        v38 = -1 << *(v26 + 32);
        v39 = v37 & ~v38;
        if (((*(v32 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
        {
LABEL_33:

LABEL_34:
          type metadata accessor for FormatLayoutError(0);
          sub_1D5D285FC();
          swift_allocError();
          *v48 = v35;
          v48[1] = v36;
          v48[2] = v11;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          return;
        }

        ++v30;
        v40 = ~v38;
        while (1)
        {
          v41 = (*(v26 + 48) + 16 * v39);
          v42 = *v41 == v35 && v41[1] == v36;
          if (v42 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v39 = (v39 + 1) & v40;
          if (((*(v32 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        v31 = v33;
        v60 = v33;
        v43 = *(v33 + 16);
        v44 = *(v31 + 24);
        if (v43 >= v44 >> 1)
        {
          sub_1D6997388((v44 > 1), v43 + 1, 1);
          v31 = v60;
        }

        *(v31 + 16) = v43 + 1;
        v45 = (v31 + 32 * v43);
        v45[4] = v52;
        v45[5] = v54;
        v45[6] = v35;
        v45[7] = v36;
        v8 = v58;
        v7 = v59;
        v27 = v70;
        if (v30 == v49)
        {
          sub_1D60CF6F4(v11, *(&v11 + 1), v56, *(&v56 + 1), v57, *(&v57 + 1), v4);

          v6 = v55;
          goto LABEL_36;
        }
      }

      __break(1u);
    }

    else
    {
      sub_1D60CF6F4(v11, *(&v11 + 1), v56, *(&v56 + 1), v57, *(&v57 + 1), v4);

      v31 = MEMORY[0x1E69E7CC0];
LABEL_36:
      *a3 = v51;
      a3[1] = v6;
      a3[2] = v27;
      a3[3] = v8;
      a3[4] = v31;
    }
  }

  else
  {

    type metadata accessor for FormatLayoutError(0);
    sub_1D5D285FC();
    swift_allocError();
    *v46 = v27;
    v46[1] = v8;
    v46[2] = v11;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t static FormatOptionEnum.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D72646CC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D72646CC();
    }
  }

  return result;
}

uint64_t FormatOptionEnum.description.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  MEMORY[0x1DA6F9910](v1, v2);
  return v4;
}

void sub_1D6E182F8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = *(v8 + 16);
  if (v9)
  {
    v22 = v2[1];
    v23 = v2[2];
    v21 = *v2;

    v24 = v7;

    v10 = 0;
    v11 = v8 + 56;
LABEL_3:
    v12 = (v11 + 32 * v10);
    while (1)
    {
      if (v9 == v10)
      {

        *a2 = v21;
        a2[1] = v22;
        a2[2] = v23;
        a2[3] = v24;
        a2[4] = MEMORY[0x1E69E7CC0];
        goto LABEL_10;
      }

      if (v10 >= *(v8 + 16))
      {
        break;
      }

      ++v10;
      v13 = v12 + 4;
      v15 = *(v12 - 1);
      v14 = *v12;
      v16 = *(v12 - 3);
      v17 = *(v12 - 2);

      v18 = sub_1D5FAAEB0(a1, v16, v17, v15, v14);
      v20 = v19;

      v12 = v13;
      if (v20)
      {

        v23 = v18;
        v24 = v20;
        v11 = v8 + 56;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
    *a2 = *v2;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
    a2[4] = v8;

LABEL_10:
  }
}

uint64_t FormatOptionEnum.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatOptionEnum.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D6E18520()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  MEMORY[0x1DA6F9910](v1, v2);
  return v4;
}

unint64_t sub_1D6E18580(uint64_t a1)
{
  result = sub_1D6E185A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6E185A8()
{
  result = qword_1EC8969F0;
  if (!qword_1EC8969F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8969F0);
  }

  return result;
}

unint64_t sub_1D6E185FC(void *a1)
{
  a1[1] = sub_1D5CC6C48();
  a1[2] = sub_1D66F45E0();
  result = sub_1D6E18634();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6E18634()
{
  result = qword_1EC8969F8;
  if (!qword_1EC8969F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8969F8);
  }

  return result;
}

void sub_1D6E18698(void *a1, uint64_t a2)
{
  sub_1D6AC4E74(0);
  *&v84 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v76 - v11;
  v13 = a1[1];
  *(&v84 + 1) = *a1;
  v85 = v13;
  v14 = a1[3];
  v86 = a1[2];
  v82 = a1[4];
  v83 = v14;
  v15 = *v2;
  v16 = v2[1];
  v17 = v2[3];
  v104 = v2[2];
  v87 = v17;
  v18 = v2[4];
  v19 = a2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
  swift_beginAccess();
  v20 = *(v19 + 8);
  v21 = *(v20 + 16);

  if (!v21)
  {
    goto LABEL_25;
  }

  v22 = sub_1D5B69D90(v15, v16);
  if ((v23 & 1) == 0)
  {

LABEL_25:
    type metadata accessor for FormatLayoutError(0);
    sub_1D5D285FC();
    swift_allocError();
    *v58 = v15;
    v58[1] = v16;
    v58[2] = v15;
    v58[3] = v16;
    v59 = v87;
    v58[4] = v104;
    v58[5] = v59;
    v58[6] = v18;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return;
  }

  v24 = *(v84 + 72);
  sub_1D6E18DC8(*(v20 + 56) + v24 * v22, v12);
  v25 = *(v12 + 3);
  v100 = *(v12 + 2);
  v101 = v25;
  v102 = *(v12 + 4);
  v103 = v12[80];
  v26 = *(v12 + 1);
  v98 = *v12;
  v99 = v26;
  sub_1D62B7D1C(&v98, v88);
  sub_1D6E18E2C(v12);

  v27 = *(v19 + 8);
  v28 = *(v27 + 16);
  v29 = v85;

  v30 = v86;
  v31 = *(&v84 + 1);
  if (!v28)
  {
LABEL_27:
    type metadata accessor for FormatLayoutError(0);
    sub_1D5D285FC();
    swift_allocError();
    *v60 = v31;
    v60[1] = v29;
    v60[2] = v31;
    v60[3] = v29;
    v62 = v82;
    v61 = v83;
    v60[4] = v30;
    v60[5] = v61;
    v60[6] = v62;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_32:
    sub_1D62B7D78(&v98);
    return;
  }

  v32 = sub_1D5B69D90(v31, v29);
  if ((v33 & 1) == 0)
  {

    goto LABEL_27;
  }

  sub_1D6E18DC8(*(v27 + 56) + v32 * v24, v8);
  v34 = *(v8 + 3);
  v94 = *(v8 + 2);
  v95 = v34;
  v96 = *(v8 + 4);
  v97 = v8[80];
  v35 = *(v8 + 1);
  v92 = *v8;
  v93 = v35;
  sub_1D62B7D1C(&v92, v88);
  sub_1D6E18E2C(v8);

  v36 = v98;
  if (v98 != v92 && (sub_1D72646CC() & 1) == 0)
  {
    type metadata accessor for FormatLayoutError(0);
    sub_1D5D285FC();
    swift_allocError();
    v88[2] = v100;
    v89 = v101;
    v90 = v102;
    LOBYTE(v91[0]) = v103;
    v88[0] = v98;
    v88[1] = v99;
    *(&v91[1] + 8) = v93;
    *(v91 + 8) = v92;
    BYTE8(v91[5]) = v97;
    *(&v91[4] + 8) = v96;
    *(&v91[3] + 8) = v95;
    *(&v91[2] + 8) = v94;
    v63 = v98;
    v64 = v100;
    v65[1] = v99;
    v65[2] = v64;
    *v65 = v63;
    v66 = v89;
    v67 = v90;
    v68 = v91[1];
    v65[5] = v91[0];
    v65[6] = v68;
    v65[3] = v66;
    v65[4] = v67;
    v69 = v91[2];
    v70 = v91[3];
    v71 = v91[4];
    *(v65 + 153) = *(&v91[4] + 9);
    v65[8] = v70;
    v65[9] = v71;
    v65[7] = v69;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v37 = v100;
  v80 = *(&v101 + 1);
  v38 = v101;
  v81 = *(&v100 + 1);
  v78 = *(&v102 + 1);
  v79 = v102;
  v39 = v103;
  v82 = *(&v94 + 1);
  v40 = v94;
  v84 = v95;
  v41 = *(&v96 + 1);
  v85 = v96;
  v42 = v97;
  sub_1D6E18E88();
  if (v42 > 0x3F)
  {
    goto LABEL_30;
  }

  if (v39 <= 0x3F)
  {
    v77 = v41;
    v43 = (v37 + 40);
    v44 = *(v37 + 16) + 1;
    v45 = v87;
    v46 = v104;
    do
    {
      if (!--v44)
      {
        v73 = v46;
        type metadata accessor for FormatLayoutError(0);
        sub_1D5D285FC();
        swift_allocError();
        *v74 = v73;
        v74[1] = v45;
        v74[2] = v37;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1D618EC0C(v37, v81, v38, v80, v79, v78, v39);
        goto LABEL_31;
      }

      if (*(v43 - 1) == v46 && *v43 == v45)
      {
        break;
      }

      v43 += 6;
      v48 = sub_1D72646CC();
      v46 = v104;
    }

    while ((v48 & 1) == 0);
    v49 = (v40 + 40);
    v50 = *(v40 + 16) + 1;
    v51 = v83;
    v52 = v86;
    while (--v50)
    {
      if (*(v49 - 1) != v52 || *v49 != v51)
      {
        v49 += 6;
        if ((sub_1D72646CC() & 1) == 0)
        {
          continue;
        }
      }

      v54 = v82;
      v55 = v84;
      v56 = v85;
      v57 = v77;
      sub_1D618EC0C(v40, v82, v84, *(&v84 + 1), v85, v77, v42);
      sub_1D62B7D78(&v92);
      sub_1D62B7D78(&v98);
      sub_1D60CF6F4(v40, v54, v55, *(&v55 + 1), v56, v57, v42);
      return;
    }

    type metadata accessor for FormatLayoutError(0);
    sub_1D5D285FC();
    swift_allocError();
    *v75 = v52;
    v75[1] = v51;
    v75[2] = v40;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D618EC0C(v40, v82, v84, *(&v84 + 1), v85, v77, v42);
    goto LABEL_31;
  }

  if ((v39 >> 6) - 1 <= 1)
  {
LABEL_30:
    type metadata accessor for FormatLayoutError(0);
    sub_1D5D285FC();
    swift_allocError();
    *v72 = v36;
    *(v72 + 16) = 0xD00000000000002ELL;
    *(v72 + 24) = 0x80000001D73F3DE0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_31:

    sub_1D62B7D78(&v92);
    goto LABEL_32;
  }

  sub_1D618EC0C(v40, v82, v84, *(&v84 + 1), v85, v41, v42);
  sub_1D72646BC();
  __break(1u);
}

uint64_t sub_1D6E18DC8(uint64_t a1, uint64_t a2)
{
  sub_1D6AC4E74(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6E18E2C(uint64_t a1)
{
  sub_1D6AC4E74(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6E18E88()
{
  if (!qword_1EDF2A868)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF2A868);
    }
  }
}

uint64_t SharingPuzzleTypeActivityTypeProvider.__allocating_init(supportedActivityTypes:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SharingPuzzleTypeActivityTypeProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PuzzleMetadata.dataResourceID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PuzzleMetadata.description.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PuzzleMetadata.language.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t PuzzleMetadata.minNewsVersion.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t PuzzleMetadata.liverpooledAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PuzzleMetadata(0) + 64);

  return sub_1D5B76E3C(v3, a1);
}

uint64_t type metadata accessor for PuzzleMetadata(uint64_t a1)
{
  result = qword_1EC896A20;
  if (!qword_1EC896A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PuzzleMetadata.publishDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PuzzleMetadata(0) + 68);

  return sub_1D5B76E3C(v3, a1);
}

uint64_t PuzzleMetadata.puzzleTypeID.getter()
{
  v1 = *(v0 + *(type metadata accessor for PuzzleMetadata(0) + 72));

  return v1;
}

uint64_t PuzzleMetadata.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for PuzzleMetadata(0) + 76));

  return v1;
}

uint64_t PuzzleMetadata.teaserConfiguration.getter()
{
  type metadata accessor for PuzzleMetadata(0);
}

uint64_t PuzzleMetadata.thumbnailLarge.getter()
{
  v1 = *(v0 + *(type metadata accessor for PuzzleMetadata(0) + 84));

  return v1;
}

uint64_t PuzzleMetadata.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for PuzzleMetadata(0) + 88));

  return v1;
}

uint64_t PuzzleMetadata.init(allowedStorefrontIDs:authors:behaviorFlags:blockedStorefrontIDs:dataResourceID:description:difficulty:isDraft:isPaid:language:minNewsVersion:liverpooledAt:publishDate:puzzleTypeID:relatedPuzzleIDs:subtitle:teaserConfiguration:thumbnailLarge:title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 81) = a12;
  *(a9 + 88) = a13;
  *(a9 + 104) = a14;
  *(a9 + 112) = a15;
  v28 = type metadata accessor for PuzzleMetadata(0);
  sub_1D5DF42F8(a16, a9 + v28[16]);
  result = sub_1D5DF42F8(a17, a9 + v28[17]);
  v30 = (a9 + v28[18]);
  *v30 = a18;
  v30[1] = a19;
  *(a9 + 72) = a20;
  v31 = (a9 + v28[19]);
  *v31 = a21;
  v31[1] = a22;
  *(a9 + v28[20]) = a23;
  v32 = (a9 + v28[21]);
  *v32 = a24;
  v32[1] = a25;
  v33 = (a9 + v28[22]);
  *v33 = a26;
  v33[1] = a27;
  return result;
}

unint64_t sub_1D6E19410(char a1)
{
  result = 0x73726F68747561;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x726F697661686562;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6F73655261746164;
      break;
    case 5:
      result = 0x7470697263736564;
      break;
    case 6:
      result = 0x6C75636966666964;
      break;
    case 7:
      result = 0x74666172447369;
      break;
    case 8:
      result = 0x646961507369;
      break;
    case 9:
      result = 0x65676175676E616CLL;
      break;
    case 10:
      result = 0x567377654E6E696DLL;
      break;
    case 11:
      result = 0x6F6F70726576696CLL;
      break;
    case 12:
      result = 0x446873696C627570;
      break;
    case 13:
      result = 0x7954656C7A7A7570;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x656C746974627573;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0x69616E626D756874;
      break;
    case 18:
      result = 0x656C746974;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1D6E19660@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6E1A914(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6E19694(uint64_t a1)
{
  v2 = sub_1D6E1A3E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E196D0(uint64_t a1)
{
  v2 = sub_1D6E1A3E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PuzzleMetadata.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  sub_1D6E1A38C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PuzzleMetadata(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D6E1A3E8();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    v66 = v13;
    v67 = v6;
    v65 = v10;
    sub_1D5B58244(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
    v70 = 0;
    sub_1D5F983EC();
    sub_1D726427C();
    v15 = v66;
    *v66 = v71;
    v70 = 1;
    sub_1D726427C();
    v15[1] = v71;
    LOBYTE(v71) = 2;
    v64 = 0;
    v16 = sub_1D726425C();
    if (v17)
    {
      v18 = 0;
    }

    else
    {
      v18 = v16;
    }

    v15[2] = v18;
    v70 = 3;
    sub_1D726427C();
    v15[3] = v71;
    LOBYTE(v71) = 4;
    v15[4] = sub_1D726422C();
    v15[5] = v19;
    LOBYTE(v71) = 5;
    v15[6] = sub_1D726422C();
    v15[7] = v20;
    LOBYTE(v71) = 6;
    v21 = sub_1D726429C();
    if (v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = v21;
    }

    v15[8] = v23;
    LOBYTE(v71) = 7;
    v24 = sub_1D726425C();
    v66[80] = (v24 != 0) & ~v25;
    LOBYTE(v71) = 8;
    v26 = sub_1D726425C();
    v66[81] = (v26 != 0) & ~v27;
    LOBYTE(v71) = 9;
    v28 = sub_1D726422C();
    v29 = v66;
    *(v66 + 11) = v28;
    *(v29 + 12) = v30;
    LOBYTE(v71) = 10;
    v31 = sub_1D726422C();
    v33 = 3157561;
    if (v32)
    {
      v33 = v31;
    }

    v34 = 0xE300000000000000;
    if (v32)
    {
      v34 = v32;
    }

    v35 = v66;
    *(v66 + 13) = v33;
    *(v35 + 14) = v34;
    LOBYTE(v71) = 11;
    sub_1D726424C();
    if (v36)
    {
      v37 = v65[16];
      v38 = sub_1D725891C();
      (*(*(v38 - 8) + 56))(&v66[v37], 1, 1, v38);
    }

    else
    {
      v39 = v66;
      v40 = v65[16];
      sub_1D725888C();
      v41 = sub_1D725891C();
      (*(*(v41 - 8) + 56))(&v39[v40], 0, 1, v41);
    }

    LOBYTE(v71) = 12;
    sub_1D726424C();
    if (v42)
    {
      v43 = v65[17];
      v44 = sub_1D725891C();
      (*(*(v44 - 8) + 56))(&v66[v43], 1, 1, v44);
    }

    else
    {
      v45 = v66;
      v46 = v65[17];
      sub_1D725888C();
      v47 = sub_1D725891C();
      (*(*(v47 - 8) + 56))(&v45[v46], 0, 1, v47);
    }

    LOBYTE(v71) = 13;
    v48 = sub_1D726422C();
    if (v49)
    {
      v50 = v48;
    }

    else
    {
      v50 = 0;
    }

    v51 = 0xE000000000000000;
    if (v49)
    {
      v51 = v49;
    }

    v52 = &v66[v65[18]];
    *v52 = v50;
    v52[1] = v51;
    v70 = 14;
    sub_1D726427C();
    *(v66 + 9) = v71;
    LOBYTE(v71) = 15;
    v53 = sub_1D726422C();
    v54 = &v66[v65[19]];
    *v54 = v53;
    v54[1] = v55;
    sub_1D6E1A43C(0);
    v70 = 16;
    sub_1D6E1A4A4();
    sub_1D726427C();
    *&v66[v65[20]] = v71;
    LOBYTE(v71) = 17;
    v56 = sub_1D726422C();
    v57 = &v66[v65[21]];
    *v57 = v56;
    v57[1] = v58;
    LOBYTE(v71) = 18;
    v59 = sub_1D726422C();
    v61 = v60;
    (*(v67 + 8))(v9, v5);
    v62 = v66;
    v63 = &v66[v65[22]];
    *v63 = v59;
    v63[1] = v61;
    sub_1D6E1A594(v62, v68);
    __swift_destroy_boxed_opaque_existential_1(v69);
    sub_1D6E1A5F8(v62);
  }
}

void sub_1D6E1A38C(uint64_t a1)
{
  if (!qword_1EC896A00)
  {
    sub_1D6E1A3E8();
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC896A00);
    }
  }
}

unint64_t sub_1D6E1A3E8()
{
  result = qword_1EC896A08;
  if (!qword_1EC896A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896A08);
  }

  return result;
}

void sub_1D6E1A43C(uint64_t a1)
{
  if (!qword_1EC896A10)
  {
    sub_1D614A45C();
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC896A10);
    }
  }
}

unint64_t sub_1D6E1A4A4()
{
  result = qword_1EC896A18;
  if (!qword_1EC896A18)
  {
    sub_1D6E1A43C(255);
    sub_1D6E1A524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896A18);
  }

  return result;
}

unint64_t sub_1D6E1A524()
{
  result = qword_1EC884430;
  if (!qword_1EC884430)
  {
    sub_1D614A45C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884430);
  }

  return result;
}

uint64_t sub_1D6E1A594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6E1A5F8(uint64_t a1)
{
  v2 = type metadata accessor for PuzzleMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6E1A694(uint64_t a1)
{
  sub_1D5BDA604(319);
  if (v1 <= 0x3F)
  {
    sub_1D5B58244(319, &qword_1EDF43BE0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D5B7B644(319, &qword_1EDF45B00, MEMORY[0x1E6969530]);
      if (v3 <= 0x3F)
      {
        sub_1D5B7B644(319, &qword_1EC896A30, sub_1D6E1A43C);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1D6E1A810()
{
  result = qword_1EC896A38;
  if (!qword_1EC896A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896A38);
  }

  return result;
}

unint64_t sub_1D6E1A868()
{
  result = qword_1EC896A40;
  if (!qword_1EC896A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896A40);
  }

  return result;
}

unint64_t sub_1D6E1A8C0()
{
  result = qword_1EC896A48;
  if (!qword_1EC896A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896A48);
  }

  return result;
}

uint64_t sub_1D6E1A914(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001D73F3E50 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73726F68747561 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F697661686562 && a2 == 0xED00007367616C46 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73F3E70 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F73655261746164 && a2 == 0xEE00444965637275 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C75636966666964 && a2 == 0xEA00000000007974 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74666172447369 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x646961507369 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x567377654E6E696DLL && a2 == 0xEE006E6F69737265 || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F6F70726576696CLL && a2 == 0xED0000744164656CLL || (sub_1D72646CC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x446873696C627570 && a2 == 0xEB00000000657461 || (sub_1D72646CC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7954656C7A7A7570 && a2 == 0xEC00000044496570 || (sub_1D72646CC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73F3E90 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73F3EB0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xEE00656772614C6CLL || (sub_1D72646CC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 18;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

uint64_t sub_1D6E1AF2C(void *a1)
{
  v3 = v1;
  sub_1D5C2B05C(0, &qword_1EC896A80, sub_1D6E1CA88, &type metadata for DebugFormatWorkspaceSnapshotManifestSnapshot.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E1CA88();
  sub_1D7264B5C();
  LOBYTE(v12) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1D72643FC();
    v12 = *(v3 + 32);
    v13 = 2;
    sub_1D6E1CB30();
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6E1B104()
{
  v1 = 1802658148;
  if (*v0 != 1)
  {
    v1 = 0x636170736B726F77;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_1D6E1B158@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6E1CC9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6E1B180(uint64_t a1)
{
  v2 = sub_1D6E1CA88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E1B1BC(uint64_t a1)
{
  v2 = sub_1D6E1CA88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6E1B1F8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D6E1C018(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

void sub_1D6E1B254(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v98 = v1;
  if (v1)
  {
    v3 = 0;
    v103 = a1 + 32;
    while (1)
    {
      v4 = *(v103 + 48 * v3 + 40);
      v5 = *(v4 + 16);

      if (v5)
      {
        break;
      }

LABEL_3:
      ++v3;

      v1 = v98;
      if (v3 == v98)
      {
        goto LABEL_23;
      }
    }

    v6 = (v4 + 32);
    v7 = -v5;
    v8 = 4;
    while (1)
    {
      v9 = v8 - 4;
      if ((v8 - 4) >= *(v4 + 16))
      {
        break;
      }

      v10 = *v6;
      v11 = v6[2];
      v110 = v6[1];
      v111 = v11;
      v109 = v10;
      v12 = v6[3];
      v13 = v6[4];
      v14 = v6[6];
      v114 = v6[5];
      v115 = v14;
      v112 = v12;
      v113 = v13;
      v15 = *v6;
      v16 = v6[2];
      *&v106[16] = v6[1];
      *&v106[32] = v16;
      v17 = v6[3];
      v18 = v6[4];
      v19 = v6[6];
      *&v106[80] = v6[5];
      *&v106[96] = v19;
      *&v106[48] = v17;
      *&v106[64] = v18;
      *v106 = v15;
      v20 = v2[2];
      if (v9 >= v20)
      {
        sub_1D6E1C7E8(&v109, v108);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1D6994704(0, v20 + 1, 1, v2);
        }

        v22 = v2[2];
        v21 = v2[3];
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          v2 = sub_1D6994704((v21 > 1), v22 + 1, 1, v2);
        }

        v2[2] = v23;
        v2[v22 + 4] = MEMORY[0x1E69E7CC0];
        if (v9 >= v23)
        {
          goto LABEL_55;
        }
      }

      else
      {
        sub_1D6E1C7E8(&v109, v108);
        if (v9 >= v2[2])
        {
          goto LABEL_55;
        }
      }

      v24 = v2[v8];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1D699472C(0, *(v24 + 2) + 1, 1, v24);
      }

      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1D699472C((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      v27 = &v24[112 * v26];
      v28 = *v106;
      v29 = *&v106[32];
      *(v27 + 3) = *&v106[16];
      *(v27 + 4) = v29;
      *(v27 + 2) = v28;
      v30 = *&v106[48];
      v31 = *&v106[64];
      v32 = *&v106[96];
      *(v27 + 7) = *&v106[80];
      *(v27 + 8) = v32;
      *(v27 + 5) = v30;
      *(v27 + 6) = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1D5EC3BF0(v2);
      }

      v2[v8] = v24;

      ++v8;
      v6 += 7;
      if (v7 + v8 == 4)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_23:
  v33 = v2[2];
  v34 = MEMORY[0x1E69E7CC0];
  if (v33)
  {
    *v106 = MEMORY[0x1E69E7CC0];
    sub_1D6999588(0, v33, 0);
    v35 = *v106;
    v36 = v2 + 4;
    sub_1D6E1C844();
    sub_1D6E1C894();
    do
    {
      *&v109 = *v36;

      v37 = sub_1D72623CC();
      v38 = sub_1D6E1B9EC(v37);

      *v106 = v35;
      v40 = *(v35 + 16);
      v39 = *(v35 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1D6999588((v39 > 1), v40 + 1, 1);
        v35 = *v106;
      }

      *(v35 + 16) = v40 + 1;
      *(v35 + 8 * v40 + 32) = v38;
      ++v36;
      --v33;
    }

    while (v33);
    v1 = v98;
    v34 = MEMORY[0x1E69E7CC0];
    v41 = v35;
    if (v98)
    {
LABEL_29:
      v107 = v34;
      sub_1D6999568(0, v1, 0);
      v42 = 0;
      v88 = a1 + 32;
      v43 = v34;
      v101 = v41 + 32;
      while (1)
      {
        v94 = v42;
        v96 = v43;
        v44 = (v88 + 48 * v42);
        v45 = v44[3];
        v89 = v44[2];
        v90 = *v44;
        v46 = v44[4];
        v47 = v44[5];
        v48 = *(v47 + 16);
        v93 = v44[1];

        v92 = v45;

        v91 = v46;

        v104 = v48;
        v49 = 0;
        if (v48)
        {
          break;
        }

LABEL_41:
        v43 = v96;
        v107 = v96;
        v74 = *(v96 + 16);
        v73 = *(v96 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_1D6999568((v73 > 1), v74 + 1, 1);
          v43 = v107;
        }

        v42 = v94 + 1;
        *(v43 + 16) = v74 + 1;
        v75 = (v43 + 56 * v74);
        v75[4] = v90;
        v75[5] = v93;
        v75[6] = v89;
        v75[7] = v92;
        v75[8] = v91;
        v75[9] = v47;
        v75[10] = v49;
        if (v94 + 1 == v98)
        {

          v34 = MEMORY[0x1E69E7CC0];
          goto LABEL_47;
        }
      }

      v50 = 0;
      v51 = (v47 + 32);
      while (v50 < *(v47 + 16))
      {
        v52 = *v51;
        v53 = v51[2];
        v110 = v51[1];
        v111 = v53;
        v109 = v52;
        v54 = v51[3];
        v55 = v51[4];
        v56 = v51[6];
        v114 = v51[5];
        v115 = v56;
        v112 = v54;
        v113 = v55;
        v58 = *v51;
        v57 = v51[1];
        v60 = v51[5];
        v59 = v51[6];
        v62 = v51[3];
        v61 = v51[4];
        v63 = v51[2];
        *v106 = v50;
        *&v106[56] = v62;
        *&v106[72] = v61;
        *&v106[88] = v60;
        *&v106[104] = v59;
        *&v106[8] = v58;
        *&v106[24] = v57;
        *&v106[40] = v63;
        if (v50 >= *(v41 + 16))
        {
          goto LABEL_57;
        }

        v64 = *(v101 + 8 * v50);
        if (*(v64 + 16))
        {
          v65 = v47;
          v66 = v41;
          v67 = *&v106[24];
          v68 = *&v106[32];
          sub_1D6E1C7E8(&v109, v108);

          v69 = sub_1D5B69D90(v67, v68);
          if (v70)
          {
            v71 = *(*(v64 + 56) + 8 * v69);
            sub_1D6E1C8EC(v106, sub_1D6E1C94C);
          }

          else
          {

            sub_1D6E1C8EC(v106, sub_1D6E1C94C);
            v71 = 0;
          }

          v41 = v66;
          v47 = v65;
          v72 = __OFADD__(v49, v71);
          v49 += v71;
          if (v72)
          {
            goto LABEL_58;
          }
        }

        else
        {
          sub_1D6E1C7E8(&v109, v108);
          sub_1D6E1C8EC(v106, sub_1D6E1C94C);
        }

        ++v50;
        v51 += 7;
        if (v104 == v50)
        {
          goto LABEL_41;
        }
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
    if (v1)
    {
      goto LABEL_29;
    }
  }

LABEL_47:
  sub_1D6E1C9B0();
  v76 = sub_1D72626AC();

  v77 = *(v76 + 16);
  if (!v77)
  {
LABEL_53:

    return;
  }

  *v106 = v34;
  sub_1D6999548(0, v77, 0);
  v78 = 0;
  v79 = *v106;
  v80 = (v76 + 72);
  v95 = v77;
  v97 = v76;
  while (v78 < *(v76 + 16))
  {
    v81 = *(v80 - 4);
    v82 = *(v80 - 2);
    v99 = *(v80 - 3);
    v102 = *(v80 - 5);
    v83 = *(v80 - 1);
    v84 = *v80;
    *v106 = v79;
    v85 = *(v79 + 16);
    v86 = *(v79 + 24);
    v105 = v85 + 1;

    if (v85 >= v86 >> 1)
    {
      sub_1D6999548((v86 > 1), v105, 1);
      v79 = *v106;
    }

    ++v78;
    *(v79 + 16) = v105;
    v87 = (v79 + 48 * v85);
    v87[4] = v102;
    v87[5] = v81;
    v76 = v97;
    v87[6] = v99;
    v87[7] = v82;
    v87[8] = v83;
    v87[9] = v84;
    v80 += 7;
    if (v95 == v78)
    {
      goto LABEL_53;
    }
  }

LABEL_59:
  __break(1u);
}

uint64_t sub_1D6E1B9CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  *a2 = v3;
  a2[1] = v2;
}

void *sub_1D6E1B9EC(uint64_t a1)
{
  v66 = a1;
  sub_1D6E1C844();
  sub_1D6E1C894();
  v1 = sub_1D72623DC();
  sub_1D6E1CA10(0);
  v2 = sub_1D72640FC();
  v3 = v2;
  v4 = 0;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  for (i = v2 + 64; v7; v3[2] = v17)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_10:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v1 + 48) + 8 * v12);

    v14 = sub_1D72626AC();

    *(i + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    *(v3[6] + 8 * v12) = v13;
    *(v3[7] + 8 * v12) = v14;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      goto LABEL_63;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_58;
    }

    if (v4 >= v8)
    {
      break;
    }

    v11 = *(v1 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_10;
    }
  }

  v18 = v3[2];
  if (v18)
  {
    sub_1D5C104B8(v3[2], 0);
    v19 = sub_1D5E2A8C4();

    sub_1D5B87E38(v66);
    if (v19 != v18)
    {
      __break(1u);
    }
  }

  v20 = sub_1D72626AC();

  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = MEMORY[0x1E69E7CC0];
    v23 = 32;
    v24 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v3[2] && (v25 = sub_1D5C5E034(*(v20 + v23)), (v26 & 1) != 0))
      {
        v27 = *(v3[7] + 8 * v25);
      }

      else
      {
        v27 = v22;
      }

      v28 = *(v27 + 16);
      v29 = *(v24 + 2);
      v30 = v29 + v28;
      if (__OFADD__(v29, v28))
      {
        goto LABEL_59;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v30 <= *(v24 + 3) >> 1)
      {
        if (*(v27 + 16))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v29 <= v30)
        {
          v32 = v29 + v28;
        }

        else
        {
          v32 = v29;
        }

        v24 = sub_1D699472C(isUniquelyReferenced_nonNull_native, v32, 1, v24);
        if (*(v27 + 16))
        {
LABEL_33:
          if ((*(v24 + 3) >> 1) - *(v24 + 2) < v28)
          {
            goto LABEL_61;
          }

          swift_arrayInitWithCopy();

          if (v28)
          {
            v33 = *(v24 + 2);
            v16 = __OFADD__(v33, v28);
            v34 = v33 + v28;
            if (v16)
            {
              goto LABEL_62;
            }

            *(v24 + 2) = v34;
          }

          goto LABEL_19;
        }
      }

      if (v28)
      {
        goto LABEL_60;
      }

LABEL_19:
      v23 += 8;
      if (!--v21)
      {

        v35 = *(v24 + 2);
        if (v35)
        {
          goto LABEL_38;
        }

LABEL_53:
        v37 = MEMORY[0x1E69E7CC8];
LABEL_54:

        return v37;
      }
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
  v35 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v35)
  {
    goto LABEL_53;
  }

LABEL_38:
  v36 = &v24[112 * v35 - 80];
  v37 = MEMORY[0x1E69E7CC8];
  v38 = 1;
  while (v35 <= *(v24 + 2))
  {
    v39 = *v36;
    v40 = *(v36 + 2);
    v60 = *(v36 + 1);
    v61 = v40;
    v41 = *(v36 + 3);
    v42 = *(v36 + 4);
    v43 = *(v36 + 6);
    v64 = *(v36 + 5);
    v65 = v43;
    v62 = v41;
    v63 = v42;
    v59 = v39;
    v70 = v41;
    v71 = v42;
    v72 = v64;
    v73 = v43;
    v67 = v39;
    v68 = v60;
    v69 = v40;
    v66 = v38 - 1;
    v44 = v60;
    sub_1D6E1C7E8(&v59, &v58);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v37;
    v46 = sub_1D5B69D90(v44, *(&v44 + 1));
    v48 = v37[2];
    v49 = (v47 & 1) == 0;
    v16 = __OFADD__(v48, v49);
    v50 = v48 + v49;
    if (v16)
    {
      goto LABEL_56;
    }

    v51 = v47;
    if (v37[3] < v50)
    {
      sub_1D6D69220(v50, v45);
      v46 = sub_1D5B69D90(v44, *(&v44 + 1));
      if ((v51 & 1) != (v52 & 1))
      {
        goto LABEL_64;
      }

LABEL_47:
      v37 = v58;
      if (v51)
      {
        goto LABEL_39;
      }

      goto LABEL_48;
    }

    if (v45)
    {
      goto LABEL_47;
    }

    v55 = v46;
    sub_1D6D7FBD4();
    v46 = v55;
    v37 = v58;
    if (v51)
    {
LABEL_39:
      *(v37[7] + 8 * v46) = v38;
      sub_1D6E1C8EC(&v66, sub_1D6E1C94C);
      goto LABEL_40;
    }

LABEL_48:
    v37[(v46 >> 6) + 8] |= 1 << v46;
    *(v37[6] + 16 * v46) = v44;
    *(v37[7] + 8 * v46) = v38;

    sub_1D6E1C8EC(&v66, sub_1D6E1C94C);
    v53 = v37[2];
    v16 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v16)
    {
      goto LABEL_57;
    }

    v37[2] = v54;
LABEL_40:
    v36 -= 112;
    ++v38;
    if (!--v35)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D6E1BFB8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 48);
  if (v2 == 0x8000000000000000)
  {
    __break(1u);
  }

  else
  {
    *a2 = -v2;
  }

  return result;
}

uint64_t sub_1D6E1BFD8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 56);
  if (v2 == 0x8000000000000000)
  {
    __break(1u);
  }

  else
  {
    *a2 = -v2;
  }

  return result;
}

uint64_t sub_1D6E1BFF8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  if (v2 == 0x8000000000000000)
  {
    __break(1u);
  }

  else
  {
    *a2 = -v2;
  }

  return result;
}

void sub_1D6E1C018(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_1D5C2B05C(0, &qword_1EC896A68, sub_1D6E1CA88, &type metadata for DebugFormatWorkspaceSnapshotManifestSnapshot.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E1CA88();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = v6;
    v11 = v21;
    LOBYTE(v22) = 0;
    v12 = sub_1D72642BC();
    v14 = v13;
    v20 = v12;
    LOBYTE(v22) = 1;
    v18 = sub_1D72642BC();
    v19 = v15;
    v23 = 2;
    sub_1D6E1CADC();
    sub_1D726431C();
    (*(v10 + 8))(v9, v5);
    v17 = v22;
    __swift_destroy_boxed_opaque_existential_1(a1);
    *v11 = v20;
    *(v11 + 8) = v14;
    v16 = v19;
    *(v11 + 16) = v18;
    *(v11 + 24) = v16;
    *(v11 + 32) = v17;
  }
}

void sub_1D6E1C2B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v74 = a5;
  v75 = a6;
  v71 = a3;
  v72 = a4;
  v73 = a7;
  sub_1D5C2B05C(0, &qword_1EDF450D0, sub_1D5B5931C, &type metadata for FormatCodingEmptyNewsroomStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v82 = &v69 - v11;
  v12 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v81 = (&v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = type metadata accessor for FormatCompilerOptions(0);
  MEMORY[0x1EEE9AC00](v80, v15);
  v79 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 160);
  v18 = *(a1 + 192);
  v88[11] = *(a1 + 176);
  v89 = v18;
  v19 = *(a1 + 96);
  v20 = *(a1 + 128);
  v21 = *(a1 + 144);
  v88[7] = *(a1 + 112);
  v88[8] = v20;
  v88[9] = v21;
  v88[10] = v17;
  v22 = *(a1 + 32);
  v23 = *(a1 + 64);
  v24 = *(a1 + 80);
  v88[3] = *(a1 + 48);
  v88[4] = v23;
  v88[5] = v24;
  v88[6] = v19;
  v25 = *(a1 + 16);
  v88[0] = *a1;
  v90 = *(a1 + 208);
  v26 = *(&v89 + 1);
  v88[1] = v25;
  v88[2] = v22;
  if (*(&v89 + 1) >> 62)
  {
    v64 = *(&v89 + 1);
    v65 = sub_1D7263BFC();
    v26 = v64;
    v27 = v65;
  }

  else
  {
    v27 = *((*(&v89 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    v29 = v26;
    *&v86[0] = MEMORY[0x1E69E7CC0];
    sub_1D6999528(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
      goto LABEL_31;
    }

    v70 = a2;
    v30 = 0;
    v31 = *&v86[0];
    v32 = v29;
    v76 = v29 & 0xC000000000000001;
    v77 = v27;
    v78 = v29;
    do
    {
      if (v76)
      {
        v33 = MEMORY[0x1DA6FB460](v30, v32);
      }

      else
      {
        v33 = *(v32 + 8 * v30 + 32);
      }

      v34 = *(v33 + 16);
      v35 = *(v34 + 24);
      v84 = *(v34 + 16);
      v36 = v79;
      sub_1D5EF3B18(v34 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, v79);
      v37 = v82;
      sub_1D6C7CC68(v36 + *(v80 + 24), v82);
      v85 = v35;

      sub_1D6E1C8EC(v36, type metadata accessor for FormatCompilerOptions);
      v38 = v37;
      v39 = v81;
      sub_1D5E4B86C(v38, v81);
      v40 = v39[1];
      v41 = v39[2];
      v42 = v39[3];
      v43 = v39[4];
      v44 = v39[5];
      v83 = *v39;
      sub_1D5E4B8D0(v83, v40, v41, v42, v43, v44);
      sub_1D6E1C8EC(v39, type metadata accessor for FormatCompilerOptions.Newsroom);

      *&v86[0] = v31;
      v46 = *(v31 + 16);
      v45 = *(v31 + 24);
      v47 = v31;
      if (v46 >= v45 >> 1)
      {
        sub_1D6999528((v45 > 1), v46 + 1, 1);
        v47 = *&v86[0];
      }

      ++v30;
      *(v47 + 16) = v46 + 1;
      v48 = (v47 + (v46 << 6));
      v49 = v85;
      v48[4] = v84;
      v48[5] = v49;
      v48[6] = v83;
      v48[7] = v40;
      v48[8] = v41;
      v48[9] = v42;
      v48[10] = v43;
      v48[11] = v44;
      v32 = v78;
      v31 = v47;
    }

    while (v77 != v30);
    sub_1D5F2B134(v88);
    a2 = v70;
    v28 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1D5F2B134(v88);
    v31 = MEMORY[0x1E69E7CC0];
  }

  v50 = a2 + OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_bindResult;
  v51 = *(v50 + *(type metadata accessor for DebugFormatCanvasBindResult(0) + 20));
  if (!(v51 >> 62))
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
      goto LABEL_16;
    }

LABEL_28:

    v54 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v66 = v73;
    v67 = v72;
    *v73 = v71;
    v66[1] = v67;
    v68 = v75;
    v66[2] = v74;
    v66[3] = v68;
    v66[4] = v31;
    v66[5] = v54;
    return;
  }

  v52 = sub_1D7263BFC();
  if (!v52)
  {
    goto LABEL_28;
  }

LABEL_16:
  v87 = v28;

  sub_1D6999508(0, v52 & ~(v52 >> 63), 0);
  if ((v52 & 0x8000000000000000) == 0)
  {
    v85 = v31;
    v53 = 0;
    v54 = v87;
    if ((v51 & 0xC000000000000001) == 0)
    {
      goto LABEL_19;
    }

LABEL_18:
    for (i = MEMORY[0x1DA6FB460](v53, v51); ; i = )
    {
      sub_1D7059644(i, v86);
      v87 = v54;
      v57 = *(v54 + 16);
      v56 = *(v54 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_1D6999508((v56 > 1), v57 + 1, 1);
        v54 = v87;
      }

      *(v54 + 16) = v57 + 1;
      v58 = (v54 + 112 * v57);
      v59 = v86[0];
      v60 = v86[2];
      v58[3] = v86[1];
      v58[4] = v60;
      v58[2] = v59;
      v61 = v86[3];
      v62 = v86[4];
      v63 = v86[6];
      v58[7] = v86[5];
      v58[8] = v63;
      v58[5] = v61;
      v58[6] = v62;
      if (v52 - 1 == v53)
      {
        break;
      }

      ++v53;
      if ((v51 & 0xC000000000000001) != 0)
      {
        goto LABEL_18;
      }

LABEL_19:
      ;
    }

    v31 = v85;
    goto LABEL_29;
  }

LABEL_31:
  __break(1u);
}

void sub_1D6E1C844()
{
  if (!qword_1EC88F268)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F268);
    }
  }
}

unint64_t sub_1D6E1C894()
{
  result = qword_1EC896A50;
  if (!qword_1EC896A50)
  {
    sub_1D6E1C844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896A50);
  }

  return result;
}

uint64_t sub_1D6E1C8EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6E1C94C()
{
  if (!qword_1EC896A58)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC896A58);
    }
  }
}

void sub_1D6E1C9B0()
{
  if (!qword_1EC88F248)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88F248);
    }
  }
}

void sub_1D6E1CA10(uint64_t a1)
{
  if (!qword_1EC896A60)
  {
    sub_1D6E1C844();
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC896A60);
    }
  }
}

unint64_t sub_1D6E1CA88()
{
  result = qword_1EC896A70;
  if (!qword_1EC896A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896A70);
  }

  return result;
}

unint64_t sub_1D6E1CADC()
{
  result = qword_1EC896A78;
  if (!qword_1EC896A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896A78);
  }

  return result;
}

unint64_t sub_1D6E1CB30()
{
  result = qword_1EC896A88;
  if (!qword_1EC896A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896A88);
  }

  return result;
}

unint64_t sub_1D6E1CB98()
{
  result = qword_1EC896A90;
  if (!qword_1EC896A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896A90);
  }

  return result;
}

unint64_t sub_1D6E1CBF0()
{
  result = qword_1EC896A98;
  if (!qword_1EC896A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896A98);
  }

  return result;
}

unint64_t sub_1D6E1CC48()
{
  result = qword_1EC896AA0;
  if (!qword_1EC896AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896AA0);
  }

  return result;
}

uint64_t sub_1D6E1CC9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746867696CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1802658148 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636170736B726F77 && a2 == 0xE900000000000065)
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

uint64_t sub_1D6E1CDB8()
{
  sub_1D6E1CF10(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerWorkspaceStackEntry_workspaceFrame);
  sub_1D6E1CF10(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerWorkspaceStackEntry_selectedWorkspaceFrame);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatDebuggerWorkspaceStackEntry(uint64_t a1)
{
  result = qword_1EC896AB0;
  if (!qword_1EC896AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6E1CE80(uint64_t a1)
{
  result = type metadata accessor for FormatDebuggerWorkspaceStackFrame(319);
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

uint64_t sub_1D6E1CF10(uint64_t a1)
{
  v2 = type metadata accessor for FormatDebuggerWorkspaceStackFrame(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1D6E1CF6C()
{
  v44 = sub_1D725946C();
  v40 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v1);
  v43 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5 = MEMORY[0x1EEE9AC00](v3, v4).n128_u64[0];
  v39 = &v34 - v6;
  v7 = [v0 topicsConfig];
  sub_1D6E1D3C8();
  v8 = sub_1D726267C();

  if (v8 >> 62)
  {
LABEL_26:
    v9 = sub_1D7263BFC();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v37 = v8 & 0xFFFFFFFFFFFFFF8;
      v38 = v8 & 0xC000000000000001;
      v41 = (v40 + 32);
      v34 = v40 + 40;
      v11 = MEMORY[0x1E69E7CC8];
      v35 = v9;
      v36 = v8;
      while (1)
      {
        if (v38)
        {
          v12 = MEMORY[0x1DA6FB460](v10, v8);
        }

        else
        {
          if (v10 >= *(v37 + 16))
          {
            goto LABEL_23;
          }

          v12 = *(v8 + 8 * v10 + 32);
        }

        v13 = v12;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v42 = v10 + 1;
        v14 = [v12 topicID];
        v15 = sub_1D726207C();
        v17 = v16;

        [v13 capAtBaseline];
        [v13 halfLifeCoefficientOverride];
        v8 = [v13 limitInGroup];
        [v13 publisherTopicWeight];
        [v13 scoreMultiplier];
        [v13 shouldLimitInGroup];
        [v13 tagWeight];
        [v13 useHalfLifeCoefficientOverride];
        v18 = v39;
        sub_1D725945C();
        v19 = *v41;
        (*v41)(v43, v18, v44);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = v11;
        v22 = sub_1D5B69D90(v15, v17);
        v23 = v11[2];
        v24 = (v21 & 1) == 0;
        v25 = v23 + v24;
        if (__OFADD__(v23, v24))
        {
          goto LABEL_24;
        }

        v8 = v21;
        if (v11[3] >= v25)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v21)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1D6D86D8C();
            if (v8)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1D6D75A80(v25, isUniquelyReferenced_nonNull_native);
          v26 = sub_1D5B69D90(v15, v17);
          if ((v8 & 1) != (v27 & 1))
          {
            result = sub_1D726493C();
            __break(1u);
            return result;
          }

          v22 = v26;
          if (v8)
          {
LABEL_4:

            v11 = v45;
            (*(v40 + 40))(v45[7] + *(v40 + 72) * v22, v43, v44);

            goto LABEL_5;
          }
        }

        v28 = v44;
        v11 = v45;
        v45[(v22 >> 6) + 8] |= 1 << v22;
        v29 = (v11[6] + 16 * v22);
        *v29 = v15;
        v29[1] = v17;
        v19((v11[7] + *(v40 + 72) * v22), v43, v28);

        v30 = v11[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_25;
        }

        v11[2] = v32;
LABEL_5:
        ++v10;
        v8 = v36;
        if (v42 == v35)
        {
          goto LABEL_28;
        }
      }
    }
  }

  v11 = MEMORY[0x1E69E7CC8];
LABEL_28:

  return v11;
}

unint64_t sub_1D6E1D3C8()
{
  result = qword_1EDF043F0;
  if (!qword_1EDF043F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF043F0);
  }

  return result;
}

uint64_t FeedJournalGroupResultKind.rawValue.getter()
{
  v1 = *v0;
  v2 = 1954047342;
  v3 = 1885956979;
  if (v1 != 5)
  {
    v3 = 1701736302;
  }

  v4 = 0x646570706F7264;
  if (v1 != 3)
  {
    v4 = 0x7972746572;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1953718636;
  if (v1 != 1)
  {
    v5 = 1819242352;
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

NewsFeed::FeedJournalGroupResultKind_optional __swiftcall FeedJournalGroupResultKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

double sub_1D6E1D538(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

void sub_1D6E1D630(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1954047342;
  v5 = 0xE400000000000000;
  v6 = 1885956979;
  if (v2 != 5)
  {
    v6 = 1701736302;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x646570706F7264;
  if (v2 != 3)
  {
    v8 = 0x7972746572;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 1953718636;
  if (v2 != 1)
  {
    v9 = 1819242352;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t FeedJournalGroupResultKind.description.getter()
{
  sub_1D5BF4D9C();
  v0 = sub_1D7263A0C();

  return v0;
}

unint64_t sub_1D6E1D7F4()
{
  result = qword_1EC896AC0;
  if (!qword_1EC896AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896AC0);
  }

  return result;
}

uint64_t sub_1D6E1D85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D5BEAC54(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v17[-v13];
  v21 = a1;
  (*(v10 + 104))(&v17[-v13], *MEMORY[0x1E69D7460], v9, v12);
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v15 = MEMORY[0x1E69D7150];
  sub_1D5C203B4(0, &qword_1EDF3C068, MEMORY[0x1E69D7150]);
  sub_1D5BEAD60(&qword_1EDF3C070, &qword_1EDF3C068, v15, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();
  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_1D6E1DA20(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v65 = a4;
  sub_1D5BEAC54(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v8 = v7;
  v66 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v67 = (&v59 - v10);
  sub_1D61F78FC(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for HeadlineViewLayout.Context(0) + 20);
  v63 = a2;
  v16 = *(a2 + v15 + 40);
  v17 = [v16 hasThumbnail];
  v64 = a3;
  if (v17 && (*a3 & 2) == 0)
  {
    v68 = a1;
    KeyPath = swift_getKeyPath();
    v18 = sub_1D725A35C();
    v61 = swift_allocBox();
    v20 = v19;
    v21 = type metadata accessor for HeadlineViewLayout.Options(0);
    sub_1D6E1F650(&a3[*(v21 + 20)], v14, sub_1D61F78FC);
    v22 = sub_1D725A34C();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    if (v24(v14, 1, v22) == 1)
    {
      (*(v23 + 104))(v20, *MEMORY[0x1E69D7348], v22);
      if (v24(v14, 1, v22) != 1)
      {
        sub_1D61F79B8(v14);
      }
    }

    else
    {
      (*(v23 + 32))(v20, v14, v22);
    }

    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69D7360], v18);
    v25 = v66;
    v26 = v67;
    *v67 = v61;
    v27 = *MEMORY[0x1E69D7478];
    v61 = *(v25 + 104);
    (v61)(v26, v27, v8);
    v28 = MEMORY[0x1E69D6F38];
    sub_1D5C203B4(0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
    v30 = v29;
    sub_1D5BEAD60(&qword_1EDF3C1D0, &qword_1EDF3C1C8, v28, MEMORY[0x1E69D6F40]);
    sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
    v60 = v30;
    sub_1D7259A7C();

    v31 = *(v25 + 8);
    v31(v26, v8);
    if ([v16 hasVideo])
    {
      v68 = a1;
      v32 = v67;
      (v61)(v67, *MEMORY[0x1E69D7460], v8);
      sub_1D7259B2C();
      v31(v32, v8);
    }
  }

  v68 = a1;
  sub_1D6E1E15C(0);
  v34 = v33;
  v35 = swift_allocBox();
  v37 = v36;
  v60 = *(v34 + 48);
  v61 = *(v34 + 64);
  KeyPath = v35;
  v38 = *MEMORY[0x1E69D6F90];
  sub_1D5BEAC54(0, &qword_1EDF3C130, MEMORY[0x1E69D6F98]);
  (*(*(v39 - 8) + 104))(v37, v38, v39);
  sub_1D5EF9444(0);
  v41 = v40;
  v42 = swift_allocBox();
  v44 = v43;
  v45 = v8;
  v46 = *(v41 + 48);
  v47 = *MEMORY[0x1E69D71E8];
  v48 = sub_1D725A09C();
  v49 = v66;
  v50 = *(*(v48 - 8) + 104);
  v50(v44, v47, v48);
  v50(v44 + v46, *MEMORY[0x1E69D7208], v48);
  v51 = v60;
  *(v37 + v60) = v42;
  v52 = *(v49 + 104);
  v52((v37 + v51), *MEMORY[0x1E69D7468], v45);
  v52((v37 + v61), *MEMORY[0x1E69D7460], v45);
  v53 = v67;
  *v67 = KeyPath;
  v54 = v45;
  v55 = v52(v53, *MEMORY[0x1E69D7458], v45);
  MEMORY[0x1EEE9AC00](v55, v56);
  v57 = MEMORY[0x1E69D6F38];
  sub_1D5C203B4(0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
  sub_1D5BEAD60(&qword_1EDF3C1D0, &qword_1EDF3C1C8, v57, MEMORY[0x1E69D6F40]);
  sub_1D7259A2C();
  return (*(v49 + 8))(v53, v54);
}

void sub_1D6E1E15C(uint64_t a1)
{
  if (!qword_1EDF3C128)
  {
    sub_1D5BEAC54(255, &qword_1EDF3C130, MEMORY[0x1E69D6F98]);
    sub_1D5BEAC54(255, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDF3C128);
    }
  }
}

uint64_t sub_1D6E1E20C(uint64_t *a1)
{
  sub_1D5BEAC54(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v16 - v6;
  v16[1] = a1;
  swift_getKeyPath();
  sub_1D5BEB9A0();
  sub_1D725A51C();
  sub_1D5BEADA4(0);
  sub_1D5BEAC54(0, &qword_1EDF3C0C8, MEMORY[0x1E69D70D8]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7273AE0;
  v13 = *MEMORY[0x1E69D7058];
  sub_1D5BEAC54(0, &qword_1EDF3C0F0, MEMORY[0x1E69D7078]);
  (*(*(v14 - 8) + 104))(v12 + v11, v13, v14);
  (*(v10 + 104))(v12 + v11, *MEMORY[0x1E69D7080], v9);
  sub_1D5BEAD60(&qword_1EDF3C1D0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38], MEMORY[0x1E69D6F40]);
  sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  sub_1D7259A7C();

  return (*(v4 + 8))(v7, v3);
}

void sub_1D6E1E548(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v107 = a4;
  v6 = type metadata accessor for HeadlineViewLayout.Context(0);
  v101 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v105 = v8;
  v106 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BEAC54(0, &qword_1EDF3C130, MEMORY[0x1E69D6F98]);
  v103 = *(v9 - 8);
  v104 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v102 = &v92 - v11;
  v100 = sub_1D7261B9C();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v12);
  v98 = (&v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5BEAC54(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = (&v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v92 - v22;
  v114 = a1;
  v121 = a1;
  swift_getKeyPath();
  sub_1D725A18C();
  v25 = v24;
  if (qword_1EDF34BB8 != -1)
  {
    swift_once();
  }

  sub_1D7264C3C();
  v26 = round(v25 * 56.0 * 0.25);
  if (v120)
  {
    v27 = v26;
  }

  else
  {
    v27 = 14.0;
  }

  v111 = v6;
  v28 = [*(a3 + *(v6 + 20) + 40) sourceChannel];
  v115 = a3;
  if (v28)
  {
    v29 = [v28 theme];
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0;
  }

  v30 = [objc_opt_self() defaultMetrics];
  sub_1D5BEAE2C(v29, v30, v23, v27);

  swift_unknownObjectRelease();
  v31 = MEMORY[0x1E69D6F38];
  sub_1D5C203B4(0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
  v33 = v32;
  v34 = sub_1D5BEAD60(&qword_1EDF3C1D0, &qword_1EDF3C1C8, v31, MEMORY[0x1E69D6F40]);
  v110 = sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  sub_1D7259A7C();

  v35 = *(v16 + 8);
  (v35)(v23, v15);
  v118 = v35;
  v36 = v114;
  v121 = v114;
  v37 = swift_allocObject();
  *(v37 + 16) = 0x4014000000000000;
  *v19 = v37;
  v38 = *(v16 + 104);
  v109 = *MEMORY[0x1E69D7488];
  v38(v19);
  sub_1D7259A9C();
  v39 = (v35)(v19, v15);
  v108 = &v92;
  v121 = v36;
  v41 = MEMORY[0x1EEE9AC00](v39, v40);
  v42 = v115;
  v90 = v115;
  v43 = *MEMORY[0x1E69D7460];
  v117 = v16 + 104;
  v112 = v38;
  (v38)(v19, v43, v15, v41);
  v119 = v34;
  v91 = v34;
  v113 = v33;
  v89[1] = v89;
  v90 = v33;
  v89[0] = sub_1D6E1F648;
  sub_1D7259B2C();
  v116 = v16 + 8;
  (v118)(v19, v15);
  v121 = v36;
  swift_getKeyPath();
  v44 = *(v42 + v111[7]);
  if (*(v44 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), v45 = sub_1D726308C(), v46 = v98, *v98 = v45, v47 = v99, v48 = v100, (*(v99 + 104))(v46, *MEMORY[0x1E69E8018], v100), v49 = sub_1D7261BBC(), (*(v47 + 8))(v46, v48), (v49))
  {
    v50 = swift_allocObject();
    v51 = *(v44 + *(*v44 + 136));
    *(v50 + 16) = v51;
    *v19 = v50;
    LODWORD(v108) = *MEMORY[0x1E69D7440];
    v112(v19);
    sub_1D5BEADA4(0);
    v53 = v52;
    sub_1D5BEAC54(0, &qword_1EDF3C0C8, MEMORY[0x1E69D70D8]);
    v55 = v54;
    v56 = *(v54 - 8);
    v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v95 = *(v56 + 72);
    v96 = v53;
    v58 = swift_allocObject();
    v94 = xmmword_1D7273AE0;
    *(v58 + 16) = xmmword_1D7273AE0;
    v59 = type metadata accessor for HeadlineViewLayout.Options(0);
    v60 = v107;
    *(v58 + v57) = *&v107[*(v59 + 24)];
    v61 = *MEMORY[0x1E69D6FE0];
    v62 = *(v56 + 104);
    v97 = v55;
    v93 = v62;
    v62(v58 + v57, v61, v55);
    v63 = v51;
    sub_1D7259A7C();

    (v118)(v19, v15);
    if ((*v60 & 1) == 0)
    {
      goto LABEL_16;
    }

    v64 = *(v115 + v111[8]);
    if (!v64)
    {
      goto LABEL_16;
    }

    if (*(v64 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), v65 = sub_1D726308C(), v66 = v98, *v98 = v65, v67 = v99, v68 = v100, (*(v99 + 104))(v66, *MEMORY[0x1E69E8018], v100), v69 = sub_1D7261BBC(), (*(v67 + 8))(v66, v68), (v69))
    {
      v70 = *(v64 + *(*v64 + 136));
      v71 = v114;
      v121 = v114;
      v72 = swift_allocObject();
      *(v72 + 16) = 0x401C000000000000;
      *v19 = v72;
      v73 = v112;
      (v112)(v19, v109, v15);
      v111 = v70;
      sub_1D7259A9C();
      v74 = v118;
      (v118)(v19, v15);
      v121 = v71;
      swift_getKeyPath();
      v75 = swift_allocObject();
      v76 = v111;
      *(v75 + 16) = v111;
      *v19 = v75;
      (v73)(v19, v108, v15);
      v77 = swift_allocObject();
      *(v77 + 16) = v94;
      *(v77 + v57) = 2;
      v93(v77 + v57, *MEMORY[0x1E69D6FE8], v97);
      v78 = v76;
      sub_1D7259A7C();

      (v74)(v19, v15);
LABEL_16:
      v79 = v114;
      v121 = v114;
      v80 = swift_allocObject();
      *(v80 + 16) = 0x4024000000000000;
      *v19 = v80;
      (v112)(v19, v109, v15);
      sub_1D7259A9C();
      (v118)(v19, v15);
      v121 = v79;
      v82 = v103;
      v81 = v104;
      v83 = v102;
      (*(v103 + 104))(v102, *MEMORY[0x1E69D6F90], v104);
      v118 = type metadata accessor for HeadlineViewLayout.Context;
      v84 = v115;
      v85 = v106;
      sub_1D6E1F650(v115, v106, type metadata accessor for HeadlineViewLayout.Context);
      v86 = (*(v101 + 80) + 16) & ~*(v101 + 80);
      v87 = swift_allocObject();
      sub_1D5C165B8(v85, v87 + v86);
      sub_1D72599DC();

      (*(v82 + 8))(v83, v81);
      sub_1D6E1F650(v84, v85, v118);
      v88 = swift_allocObject();
      sub_1D5C165B8(v85, v88 + v86);
      sub_1D725A5CC();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D6E1F244(uint64_t a1, uint64_t a2)
{
  sub_1D5BEAC54(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v27 - v8);
  v10 = sub_1D7261B9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27[1] = a1;
  swift_getKeyPath();
  v15 = *(a2 + *(type metadata accessor for HeadlineViewLayout.Context(0) + 36));
  if (*(v15 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), *v14 = sub_1D726308C(), (*(v11 + 104))(v14, *MEMORY[0x1E69E8018], v10), v16 = sub_1D7261BBC(), result = (*(v11 + 8))(v14, v10), (v16))
  {
    v18 = swift_allocObject();
    v19 = *(v15 + *(*v15 + 136));
    *(v18 + 16) = v19;
    *v9 = v18;
    (*(v6 + 104))(v9, *MEMORY[0x1E69D73E8], v5);
    sub_1D5BEADA4(0);
    sub_1D5BEAC54(0, &qword_1EDF3C0C8, MEMORY[0x1E69D70D8]);
    v21 = v20;
    v22 = *(v20 - 8);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7273AE0;
    *(v24 + v23) = 1;
    (*(v22 + 104))(v24 + v23, *MEMORY[0x1E69D6FE0], v21);
    v25 = MEMORY[0x1E69D6F38];
    sub_1D5C203B4(0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
    sub_1D5BEAD60(&qword_1EDF3C1D0, &qword_1EDF3C1C8, v25, MEMORY[0x1E69D6F40]);
    sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
    v26 = v19;
    sub_1D7259A7C();

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6E1F650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_13Tm_2()
{
  v1 = type metadata accessor for HeadlineViewLayout.Context(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 20);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v4 = type metadata accessor for FeedHeadline(0);
  v5 = v4[10];
  v6 = v3 + v5 + *(type metadata accessor for FeedHeadline.State(0) + 24);
  v7 = type metadata accessor for SharedItem(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = sub_1D725891C();
    (*(*(v8 - 8) + 8))(v6, v8);

    v9 = *(v7 + 28);
    v10 = sub_1D72585BC();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  v11 = v4[11];
  v12 = sub_1D726045C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v3 + v11, v12);
  }

  if (*(v3 + v4[12] + 8) >= 0x12uLL)
  {
  }

  if (*(v3 + v4[13]) >= 3uLL)
  {
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1((v2 + *(v1 + 24)));

  return swift_deallocObject();
}

uint64_t sub_1D6E1F9AC(void *a1)
{
  v3 = v1;
  sub_1D6E2350C(0, &qword_1EC896B68, sub_1D6E234B8, &type metadata for A12_V7.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E234B8();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6E23574(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6E1FBF4(uint64_t a1)
{
  v2 = sub_1D6E234B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E1FC30(uint64_t a1)
{
  v2 = sub_1D6E234B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6E1FC6C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D6E23218(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D6E1FCCC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D6E22F4C();

  return sub_1D725A24C();
}

uint64_t sub_1D6E1FD48@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6E2350C(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_1D6E1FE04(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v119 = a2;
  v136 = a1;
  v108 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v120 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v123 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v118 = &v107 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v124 = &v107 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v121 = &v107 - v17;
  v18 = sub_1D725895C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for GroupLayoutContext(0);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v23);
  v117 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v107 - v27;
  v113 = &v107 - v27;
  v122 = type metadata accessor for GroupLayoutBindingContext(0);
  v29 = *(v122 - 1);
  MEMORY[0x1EEE9AC00](v122, v30);
  v32 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v5;
  v112 = *v5;
  v34 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  sub_1D5BE3ED8(v136, v32, type metadata accessor for GroupLayoutBindingContext);
  v114 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v119, v28, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v111 = sub_1D725893C();
  v110 = v35;
  (*(v19 + 8))(v22, v18);
  v134 = &type metadata for A12_V7;
  v36 = sub_1D5ECE778();
  v135 = v36;
  LOBYTE(v132) = v33;
  *(&v132 + 1) = v34;
  v133 = v5;
  type metadata accessor for GroupLayoutKey(0);
  v37 = swift_allocObject();
  v38 = v34;
  sub_1D5BEE8A0(v34, v5);
  v125[0] = sub_1D7264C5C();
  v125[1] = v39;
  v130 = 95;
  v131 = 0xE100000000000000;
  v128 = 45;
  v129 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v40 = sub_1D7263A6C();
  v42 = v41;
  v43 = v117;

  *(v37 + 16) = v40;
  *(v37 + 24) = v42;
  v44 = (v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v45 = v110;
  *v44 = v111;
  v44[1] = v45;
  sub_1D5B68374(&v132, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v46 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v32, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v29 + 56))(v37 + v46, 0, 1, v122);
  v47 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v113, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v48 = *(v115 + 56);
  v115 = v37;
  v48(v37 + v47, 0, 1, v116);
  __swift_destroy_boxed_opaque_existential_1(&v132);
  v134 = &type metadata for A12_V7;
  v135 = v36;
  LOBYTE(v132) = v112;
  v49 = v38;
  *(&v132 + 1) = v38;
  v133 = v5;
  sub_1D5BE3ED8(v119, v43, v114);
  sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  v119 = v50;
  inited = swift_initStackObject();
  v52 = MEMORY[0x1E69E7CC0];
  v116 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v53 = inited + 16;
  swift_beginAccess();
  sub_1D5BEE8A0(v49, v5);
  v54 = sub_1D5C0F8FC(0, 1, 1, v52);
  v56 = *(v54 + 16);
  v55 = *(v54 + 24);
  v57 = (v56 + 1);
  if (v56 >= v55 >> 1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    *(v54 + 16) = v57;
    v58 = v54 + 16 * v56;
    *(v58 + 32) = sub_1D63106DC;
    *(v58 + 40) = 0;
    *v53 = v54;
    swift_endAccess();
    v56 = v122[14];
    v59 = v136;
    v60 = *&v136[v56];
    if (v60[2] && (v61 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v62 & 1) != 0) && (v60 = *&v60[7][8 * v61], v63 = , v57 = sub_1D5C14D80(v63), , v57))
    {
      v114 = v56;
      v52 = *(v57 + 2);
      if (v52)
      {
        v43 = 0;
        v56 = MEMORY[0x1E69E7CC0];
        v53 = v120;
        v54 = v121;
        while (1)
        {
          v55 = *(v57 + 2);
          if (v43 >= v55)
          {
            break;
          }

          v64 = (*(v53 + 80) + 32) & ~*(v53 + 80);
          v42 = *(v53 + 72);
          sub_1D5BE3ED8(&v57[v64 + v42 * v43], v54, type metadata accessor for FeedHeadline);
          if ((*(v54 + 32) & 4) != 0)
          {
            sub_1D5BDA904(v54, v124, type metadata accessor for FeedHeadline);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v125[0] = v56;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D5C0F91C(0, *(v56 + 16) + 1, 1);
              v53 = v120;
              v56 = v125[0];
            }

            v37 = *(v56 + 16);
            v66 = *(v56 + 24);
            if (v37 >= v66 >> 1)
            {
              sub_1D5C0F91C((v66 > 1), v37 + 1, 1);
              v53 = v120;
              v56 = v125[0];
            }

            *(v56 + 16) = v37 + 1;
            sub_1D5BDA904(v124, v56 + v64 + v37 * v42, type metadata accessor for FeedHeadline);
            v54 = v121;
          }

          else
          {
            sub_1D5BE780C(v54, type metadata accessor for FeedHeadline);
          }

          if (v52 == ++v43)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_67;
      }

      v56 = MEMORY[0x1E69E7CC0];
LABEL_22:
      v59 = v136;
      if ((*v136 & 1) == 0)
      {

        sub_1D62F071C(v56);
        v71 = v70;

        v56 = v71;
      }

      v43 = v117;
      v52 = MEMORY[0x1E69E7CC0];
      v72 = *&v59[v122[18]];
      v73 = *&v59[v122[19]];
      if (__OFSUB__(v72, v73))
      {
        __break(1u);
        goto LABEL_72;
      }

      v74 = sub_1D5C0FAD4(v56, v72 - v73);
      v42 = sub_1D5C11E10(&unk_1F5113938, v74, v57);

      if (v42)
      {
      }

      else
      {
        v42 = sub_1D5C11E10(&unk_1F5113938, v56, v57);

        if (!v42)
        {
          v125[0] = &unk_1F5113938;
          v4 = v109;
          sub_1D5E239F4(v125);
          if (v4)
          {
            goto LABEL_76;
          }

          if (!*(v125[0] + 2))
          {
            goto LABEL_74;
          }

          v103 = *(v125[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v104, "FeedHeadline");
          v104[13] = 0;
          *(v104 + 7) = -5120;
          *(v104 + 2) = 0;
          *(v104 + 3) = 0;
          *(v104 + 4) = 4;
          *(v104 + 5) = v103;
          *(v104 + 6) = 0;
          *(v104 + 7) = 0;
          v104[64] = 0;
          swift_willThrow();
          goto LABEL_65;
        }
      }

      strcpy(v125, "FeedHeadline");
      BYTE5(v125[1]) = 0;
      HIWORD(v125[1]) = -5120;
      v126 = 0;
      v127 = 0;

      v76 = sub_1D5C107C4(v75);

      sub_1D5BDACA8(v125, v76);
      swift_setDeallocating();

      v56 = v114;
    }

    else
    {
      if (qword_1F5113958)
      {
        v125[0] = &unk_1F5113938;
        v4 = v109;
        sub_1D5E239F4(v125);
        if (v4)
        {
          goto LABEL_76;
        }

        v67 = *(v125[0] + 2);
        if (v67)
        {
          v68 = *(v125[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v69, "FeedHeadline");
          v69[13] = 0;
          *(v69 + 7) = -5120;
          *(v69 + 2) = 0;
          *(v69 + 3) = 0;
          *(v69 + 4) = 4;
          *(v69 + 5) = v68;
          *(v69 + 6) = 0;
          *(v69 + 7) = 0;
          v69[64] = 0;
          swift_willThrow();
LABEL_47:

          sub_1D5BE780C(v43, type metadata accessor for GroupLayoutContext);
          __swift_destroy_boxed_opaque_existential_1(&v132);
          return;
        }

        __break(1u);
LABEL_70:
        v57 = sub_1D5C0F8FC((v67 > 1), v37, 1, v57);
        goto LABEL_30;
      }

      v42 = MEMORY[0x1E69E7CC0];
    }

    v77 = swift_initStackObject();
    v124 = v77;
    *(v77 + 16) = v52;
    v60 = (v77 + 16);
    swift_beginAccess();
    v57 = sub_1D5C0F8FC(0, 1, 1, v52);
    v54 = *(v57 + 2);
    v67 = *(v57 + 3);
    v37 = v54 + 1;
    if (v54 >= v67 >> 1)
    {
      goto LABEL_70;
    }

LABEL_30:
    *(v57 + 2) = v37;
    v78 = &v57[16 * v54];
    *(v78 + 4) = sub_1D63106DC;
    *(v78 + 5) = 0;
    *v60 = v57;
    swift_endAccess();
    if (!*(*&v59[v56] + 16))
    {
      break;
    }

    sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
    if ((v79 & 1) == 0)
    {
      break;
    }

    v37 = sub_1D5C14D80(v80);

    if (!v37)
    {
      break;
    }

    v121 = v42;
    v43 = *(v37 + 16);
    if (!v43)
    {
      v57 = MEMORY[0x1E69E7CC0];
LABEL_50:
      if ((*v59 & 1) == 0)
      {

        sub_1D62F071C(v57);
        v89 = v88;

        v57 = v89;
      }

      v42 = v121;
      v90 = *&v59[v122[18]];
      v91 = *&v59[v122[19]];
      if (__OFSUB__(v90, v91))
      {
        goto LABEL_73;
      }

      v92 = sub_1D5C0FAD4(v57, v90 - v91);
      v93 = sub_1D5C11E10(&unk_1F5113960, v92, v37);

      if (v93)
      {

        strcpy(v125, "FeedHeadline");
        BYTE5(v125[1]) = 0;
        HIWORD(v125[1]) = -5120;
        v126 = 0;
        v127 = 0;

        v95 = sub_1D5C107C4(v94);

        sub_1D5BDACA8(v125, v95);
        swift_setDeallocating();

        v87 = v93;
LABEL_57:
        v43 = v117;
        goto LABEL_58;
      }

      v96 = sub_1D5C11E10(&unk_1F5113960, v57, v37);

      if (v96)
      {
        strcpy(v125, "FeedHeadline");
        BYTE5(v125[1]) = 0;
        HIWORD(v125[1]) = -5120;
        v126 = 0;
        v127 = 0;

        v98 = sub_1D5C107C4(v97);

        sub_1D5BDACA8(v125, v98);
        swift_setDeallocating();

        v87 = v96;
        goto LABEL_57;
      }

      v125[0] = &unk_1F5113960;
      v4 = v109;
      sub_1D5E239F4(v125);
      if (v4)
      {
        goto LABEL_76;
      }

      v43 = v117;
      if (!*(v125[0] + 2))
      {
        goto LABEL_75;
      }

      v105 = *(v125[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v106, "FeedHeadline");
      v106[13] = 0;
      *(v106 + 7) = -5120;
      *(v106 + 2) = 0;
      *(v106 + 3) = 0;
      *(v106 + 4) = 0;
      *(v106 + 5) = v105;
      *(v106 + 6) = 0;
      *(v106 + 7) = 0;
      v106[64] = 0;
      swift_willThrow();
LABEL_65:
      swift_setDeallocating();
      goto LABEL_47;
    }

    v42 = 0;
    v57 = MEMORY[0x1E69E7CC0];
    v53 = v120;
    while (1)
    {
      v55 = *(v37 + 16);
      if (v42 >= v55)
      {
        break;
      }

      v81 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v52 = *(v53 + 72);
      v82 = v118;
      sub_1D5BE3ED8(v37 + v81 + v52 * v42, v118, type metadata accessor for FeedHeadline);
      sub_1D5BDA904(v82, v123, type metadata accessor for FeedHeadline);
      v83 = swift_isUniquelyReferenced_nonNull_native();
      v125[0] = v57;
      if ((v83 & 1) == 0)
      {
        sub_1D5C0F91C(0, *(v57 + 2) + 1, 1);
        v53 = v120;
        v57 = v125[0];
      }

      v54 = *(v57 + 2);
      v84 = *(v57 + 3);
      v56 = v54 + 1;
      if (v54 >= v84 >> 1)
      {
        sub_1D5C0F91C((v84 > 1), v54 + 1, 1);
        v53 = v120;
        v57 = v125[0];
      }

      ++v42;
      *(v57 + 2) = v56;
      sub_1D5BDA904(v123, &v57[v81 + v54 * v52], type metadata accessor for FeedHeadline);
      v59 = v136;
      if (v43 == v42)
      {
        goto LABEL_50;
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    v54 = sub_1D5C0F8FC((v55 > 1), v57, 1, v54);
  }

  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqzq_s64(xmmword_1F5113980), vceqzq_s64(unk_1F5113990)))) & 1) != 0 || !qword_1F51139A0)
  {

    v87 = MEMORY[0x1E69E7CC0];
LABEL_58:
    v125[0] = v42;
    sub_1D5C122E4(v87);
    v99 = v125[0];
    v100 = type metadata accessor for A12_V7.Bound(0);
    v101 = v108;
    v108[3] = v100;
    v101[4] = sub_1D6E23574(&qword_1EC896AD8, type metadata accessor for A12_V7.Bound, &unk_1D735C2CC);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v101);
    *boxed_opaque_existential_1 = v115;
    sub_1D5B63F14(&v132, (boxed_opaque_existential_1 + 1));
    sub_1D5BDA904(v43, boxed_opaque_existential_1 + *(v100 + 24), type metadata accessor for GroupLayoutContext);
    *(boxed_opaque_existential_1 + *(v100 + 28)) = v99;
    return;
  }

  v125[0] = &unk_1F5113960;
  v4 = v109;
  sub_1D5E239F4(v125);
  if (!v4)
  {

    if (*(v125[0] + 2))
    {
      v85 = *(v125[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v86, "FeedHeadline");
      v86[13] = 0;
      *(v86 + 7) = -5120;
      *(v86 + 2) = 0;
      *(v86 + 3) = 0;
      *(v86 + 4) = 0;
      *(v86 + 5) = v85;
      *(v86 + 6) = 0;
      *(v86 + 7) = 0;
      v86[64] = 0;
      swift_willThrow();
      goto LABEL_47;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
  }

LABEL_76:

  __break(1u);
}

void sub_1D6E21058(_BYTE *a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  *&v41 = sub_1D725A36C();
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ED811C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v8 = type metadata accessor for A12_V7.Bound(0);
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext(0);
  v11 = *(v9 + *(v10 + 40));
  v12 = *(v11 + 16);
  v13 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v12 + 16, v48);
  sub_1D5B68374(v12 + 56, v47);
  v14 = v13 * *(v12 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v15 = swift_initStackObject();
  sub_1D5B63F14(v48, v15 + 16);
  sub_1D5B63F14(v47, v15 + 56);
  *(v15 + 96) = v14;
  LOBYTE(v46[0]) = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v46, (inited + 32));
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v15 + 16));
  __swift_destroy_boxed_opaque_existential_1((v15 + 56));
  v16 = *(v11 + 16);
  sub_1D5B68374(v16 + 16, v47);
  sub_1D5B68374(v16 + 56, v46);
  v17 = v13 * *(v16 + 96);
  v18 = swift_initStackObject();
  sub_1D5B63F14(v47, v18 + 16);
  sub_1D5B63F14(v46, v18 + 56);
  *(v18 + 96) = v17;
  v45[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v45, v48);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v18 + 16));
  __swift_destroy_boxed_opaque_existential_1((v18 + 56));
  v19 = sub_1D6F50B74(v48, *(*(v2 + *(v8 + 28)) + 16) - 1);
  *&v48[0] = inited;
  sub_1D698609C(v19);
  v20 = *&v48[0];
  v42 = v2;
  v44[2] = v2;

  v22 = sub_1D6310828(v21, v20, sub_1D6E22EE8, v44);

  v23 = *(v22 + 16);
  if (v23)
  {
    v37 = (2 * v23) | 1;
    v38 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    sub_1D5EC2DC4(v22, v22 + ((*(v38 + 80) + 32) & ~*(v38 + 80)), 1, v37);
    v24 = v39;
  }

  else
  {

    v24 = v22;
  }

  *&v48[0] = v24;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D60DF67C(&qword_1EC880610, MEMORY[0x1E69E6340]);
  sub_1D7262C1C();

  v25 = *MEMORY[0x1E69D7130];
  v26 = sub_1D7259D1C();
  (*(*(v26 - 8) + 104))(v6, v25, v26);
  v27 = (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v41);
  MEMORY[0x1EEE9AC00](v27, v28);
  sub_1D6E22FF4(0, &qword_1EC896AF8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  sub_1D725A4CC();

  sub_1D725A4DC();
  v29 = v49;
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  sub_1D60DF67C(&qword_1EDF1B248, MEMORY[0x1E69E6328]);
  v30 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v40 = v48[1];
  v41 = v48[0];
  *&v48[0] = v22;
  *&v47[0] = v29;
  MEMORY[0x1EEE9AC00](v30, v31);

  v32 = sub_1D725C00C();

  v33 = v43;
  *v43 = 0;
  v34 = v41;
  *(v33 + 24) = v40;
  *(v33 + 8) = v34;
  *&v48[0] = v32;
  sub_1D5B49714(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v35 = sub_1D72623BC();

  v36 = MEMORY[0x1E69E7CC0];
  *(v33 + 5) = v35;
  *(v33 + 6) = v36;
}

uint64_t sub_1D6E216A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D6E21778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6E2350C(0, &qword_1EC896B10, sub_1D6E22EF8, &type metadata for A12_V7.Layout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16[-v10];
  v19 = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = 12;
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D7490], v7);
  v17 = a2;
  v18 = a3;
  v13 = MEMORY[0x1E69D7150];
  sub_1D6E22FF4(0, &qword_1EC896B18, MEMORY[0x1E69D7150]);
  sub_1D6E22FB0(&qword_1EC896B20, &qword_1EC896B18, v13, MEMORY[0x1E69D7158], v14);
  sub_1D7259A2C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D6E21968(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v55 = a2;
  v56 = a3;
  v44 = a1;
  sub_1D6E2350C(0, &qword_1EC896B10, sub_1D6E22EF8, &type metadata for A12_V7.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v44 - v8);
  v59 = a1;
  v10 = sub_1D725994C();
  v11 = swift_allocBox();
  v12 = *(v10 - 8);
  v13 = *(v12 + 104);
  v14 = *MEMORY[0x1E69D6F50];
  v15 = v10;
  v49 = v12 + 104;
  v50 = v13;
  (v13)(v16);
  *v9 = v11;
  v17 = *MEMORY[0x1E69D73C0];
  v18 = v6 + 104;
  v52 = *(v6 + 104);
  v53 = v5;
  v48 = v17;
  v52(v9);
  v19 = MEMORY[0x1E69D6F38];
  sub_1D6E22FF4(0, &qword_1EC896B28, MEMORY[0x1E69D6F38]);
  v57 = v20;
  v22 = sub_1D6E22FB0(&qword_1EC896B30, &qword_1EC896B28, v19, MEMORY[0x1E69D6F40], v21);
  sub_1D7259A9C();
  v23 = v6 + 8;
  v24 = *(v6 + 8);
  v51 = v23;
  v24(v9, v5);
  v25 = v44;
  v59 = v44;
  sub_1D60DF7C0(0);
  v27 = v26;
  v54 = swift_allocBox();
  v29 = v28;
  v30 = *(v27 + 48);
  *v28 = 7;
  v31 = *MEMORY[0x1E69D7348];
  v32 = sub_1D725A34C();
  (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
  v33 = v53;
  *v9 = v54;
  v34 = *MEMORY[0x1E69D73E0];
  v47 = v18;
  (v52)(v9, v34, v33);
  v58 = v55;
  v46 = v22;
  sub_1D72599EC();
  v35 = v33;
  result = (v24)(v9, v33);
  v37 = *(v56 + 16);
  if (v37)
  {
    v38 = (v56 + 32);
    v45 = *MEMORY[0x1E69D7460];
    do
    {
      v54 = *v38;
      v55 = v38 + 1;
      v56 = v37;
      v59 = v25;
      v39 = swift_allocBox();
      v50(v40, v14, v15);
      *v9 = v39;
      v41 = v52;
      (v52)(v9, v48, v35);

      sub_1D7259A9C();
      v24(v9, v35);
      v59 = v25;
      v42 = (v41)(v9, v45, v35);
      MEMORY[0x1EEE9AC00](v42, v43);
      sub_1D72599EC();

      v35 = v53;
      result = (v24)(v9);
      v38 = v55;
      v37 = v56 - 1;
    }

    while (v56 != 1);
  }

  return result;
}

uint64_t sub_1D6E21E28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HeadlineViewLayout.Context(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6E2350C(0, &qword_1EC896B10, sub_1D6E22EF8, &type metadata for A12_V7.Layout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v28 - v17;
  v28[1] = a1;
  swift_getKeyPath();
  result = (*(v15 + 104))(v18, *MEMORY[0x1E69D7460], v14);
  if (*(a2 + 16))
  {
    sub_1D5BE3ED8(a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v12, type metadata accessor for HeadlineViewLayout.Context);
    v28[0] = v14;
    v20 = v4[5];
    v21 = *MEMORY[0x1E69D7348];
    v22 = sub_1D725A34C();
    v23 = *(v22 - 8);
    (*(v23 + 104))(&v7[v20], v21, v22);
    (*(v23 + 56))(&v7[v20], 0, 1, v22);
    v24 = *MEMORY[0x1E69DDC70];
    *v7 = 1;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v24;
    v25 = v24;
    sub_1D61F750C(v12, v7);
    sub_1D5BE780C(v7, type metadata accessor for HeadlineViewLayout.Options);
    sub_1D5BE780C(v12, type metadata accessor for HeadlineViewLayout.Context);
    v26 = MEMORY[0x1E69D6F38];
    sub_1D6E22FF4(0, &qword_1EC896B28, MEMORY[0x1E69D6F38]);
    sub_1D6E22FB0(&qword_1EC896B30, &qword_1EC896B28, v26, MEMORY[0x1E69D6F40], v27);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v15 + 8))(v18, v28[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6E22204(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v19 = a1;
  sub_1D6E2350C(0, &qword_1EC896B10, sub_1D6E22EF8, &type metadata for A12_V7.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v18 - v8);
  v22 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 6;
  *v9 = v10;
  v11 = *MEMORY[0x1E69D7490];
  v12 = *(v6 + 104);
  v12(v9, v11, v5);
  v21 = a2;
  v13 = MEMORY[0x1E69D6F38];
  sub_1D6E22FF4(0, &qword_1EC896B28, MEMORY[0x1E69D6F38]);
  sub_1D6E22FB0(&qword_1EC896B30, &qword_1EC896B28, v13, MEMORY[0x1E69D6F40], v14);
  sub_1D7259A2C();
  v15 = *(v6 + 8);
  v15(v9, v5);
  v22 = v19;
  v16 = swift_allocObject();
  *(v16 + 16) = 6;
  *v9 = v16;
  v12(v9, v11, v5);
  v20 = v18;
  sub_1D7259A2C();
  return (v15)(v9, v5);
}

uint64_t sub_1D6E224A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6E2350C(0, &qword_1EC896B10, sub_1D6E22EF8, &type metadata for A12_V7.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (&v31 - v12);
  v34 = a1;
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = 0x4060E00000000000;
  *v13 = v14;
  result = (*(v10 + 104))(v13, *MEMORY[0x1E69D73D8], v9);
  if (*(a2 + 16))
  {
    v16 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v18 = v4[5];
    v19 = *MEMORY[0x1E69D7348];
    v20 = sub_1D725A34C();
    v21 = *(v20 - 8);
    v32 = v9;
    v22 = v21;
    (*(v21 + 104))(&v7[v18], v19, v20);
    (*(v22 + 56))(&v7[v18], 0, 1, v20);
    v23 = *MEMORY[0x1E69DDC70];
    *v7 = 0;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v23;
    v24 = *MEMORY[0x1E69DDCE0];
    v25 = *(MEMORY[0x1E69DDCE0] + 8);
    v26 = *(MEMORY[0x1E69DDCE0] + 16);
    v27 = *(MEMORY[0x1E69DDCE0] + 24);
    v28 = v23;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(a2 + v17, v7, v24, v25, v26, v27);
    sub_1D5BE780C(v7, type metadata accessor for HeadlineViewLayout.Options);
    v29 = MEMORY[0x1E69D6F38];
    sub_1D6E22FF4(0, &qword_1EC896B28, MEMORY[0x1E69D6F38]);
    sub_1D6E22FB0(&qword_1EC896B30, &qword_1EC896B28, v29, MEMORY[0x1E69D6F40], v30);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v10 + 8))(v13, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6E22858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6E2350C(0, &qword_1EC896B10, sub_1D6E22EF8, &type metadata for A12_V7.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v33 - v12);
  v35 = a1;
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = 0x4060E00000000000;
  *v13 = v15;
  result = (*(v10 + 104))(v13, *MEMORY[0x1E69D73D8], v9);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v17 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = a2 + *(v17 + 72);
    v33[1] = KeyPath;
    v20 = v4[5];
    v21 = *MEMORY[0x1E69D7348];
    v22 = sub_1D725A34C();
    v23 = *(v22 - 8);
    v34 = v9;
    v24 = v23;
    (*(v23 + 104))(&v7[v20], v21, v22);
    (*(v24 + 56))(&v7[v20], 0, 1, v22);
    v25 = *MEMORY[0x1E69DDC70];
    *v7 = 0;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v25;
    v26 = *MEMORY[0x1E69DDCE0];
    v27 = *(MEMORY[0x1E69DDCE0] + 8);
    v28 = *(MEMORY[0x1E69DDCE0] + 16);
    v29 = *(MEMORY[0x1E69DDCE0] + 24);
    v30 = v25;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v19 + v18, v7, v26, v27, v28, v29);
    sub_1D5BE780C(v7, type metadata accessor for HeadlineViewLayout.Options);
    v31 = MEMORY[0x1E69D6F38];
    sub_1D6E22FF4(0, &qword_1EC896B28, MEMORY[0x1E69D6F38]);
    sub_1D6E22FB0(&qword_1EC896B30, &qword_1EC896B28, v31, MEMORY[0x1E69D6F40], v32);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v10 + 8))(v13, v34);
  }

  return result;
}

uint64_t sub_1D6E22C30@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A12_V7.Bound(0) + 24);
  result = type metadata accessor for GroupLayoutContext(0);
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D6E22D44(uint64_t a1)
{
  *(a1 + 8) = sub_1D6E22D74();
  result = sub_1D6E22DC8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6E22D74()
{
  result = qword_1EC896AC8;
  if (!qword_1EC896AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896AC8);
  }

  return result;
}

unint64_t sub_1D6E22DC8()
{
  result = qword_1EC896AD0;
  if (!qword_1EC896AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896AD0);
  }

  return result;
}

uint64_t type metadata accessor for A12_V7.Bound(uint64_t a1)
{
  result = qword_1EC896AE0;
  if (!qword_1EC896AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6E22E90(uint64_t a1)
{
  result = sub_1D6E23574(&qword_1EC896AF0, type metadata accessor for A12_V7.Bound, &unk_1D735C2A4);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6E22EF8()
{
  result = qword_1EC896B00;
  if (!qword_1EC896B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896B00);
  }

  return result;
}

unint64_t sub_1D6E22F4C()
{
  result = qword_1EC896B08;
  if (!qword_1EC896B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896B08);
  }

  return result;
}

uint64_t sub_1D6E22FB0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4, __n128 a5)
{
  result = *a1;
  if (!result)
  {
    sub_1D6E22FF4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6E22FF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V7.Layout;
    v8[1] = &type metadata for A12_V7.Layout.Attributes;
    v8[2] = sub_1D6E22EF8();
    v8[3] = sub_1D6E22F4C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D6E230BC()
{
  result = qword_1EC896B38;
  if (!qword_1EC896B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896B38);
  }

  return result;
}

unint64_t sub_1D6E23114()
{
  result = qword_1EC896B40;
  if (!qword_1EC896B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896B40);
  }

  return result;
}

unint64_t sub_1D6E2316C()
{
  result = qword_1EC896B48;
  if (!qword_1EC896B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896B48);
  }

  return result;
}

unint64_t sub_1D6E231C4()
{
  result = qword_1EC896B50;
  if (!qword_1EC896B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896B50);
  }

  return result;
}

uint64_t sub_1D6E23218@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6E2350C(0, &qword_1EC896B58, sub_1D6E234B8, &type metadata for A12_V7.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E234B8();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D6E23574(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D6E234B8()
{
  result = qword_1EC896B60;
  if (!qword_1EC896B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896B60);
  }

  return result;
}

void sub_1D6E2350C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D6E23574(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D6E235D0()
{
  result = qword_1EC896B70;
  if (!qword_1EC896B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896B70);
  }

  return result;
}

unint64_t sub_1D6E23628()
{
  result = qword_1EC896B78;
  if (!qword_1EC896B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896B78);
  }

  return result;
}

unint64_t sub_1D6E23680()
{
  result = qword_1EC896B80;
  if (!qword_1EC896B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896B80);
  }

  return result;
}

unint64_t sub_1D6E236D4(char a1)
{
  result = 0x5320656E6F685069;
  switch(a1)
  {
    case 1:
      result = 0x5820656E6F685069;
      break;
    case 2:
      result = 0x5820656E6F685069;
      break;
    case 3:
      return result;
    case 4:
      result = 0x3120656E6F685069;
      break;
    case 5:
      result = 0x3120656E6F685069;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x3120656E6F685069;
      break;
    case 8:
      result = 0x3120656E6F685069;
      break;
    case 9:
      result = 0x3120656E6F685069;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x3120656E6F685069;
      break;
    case 12:
      result = 0x3120656E6F685069;
      break;
    case 13:
      result = 0x3120656E6F685069;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x3120656E6F685069;
      break;
    case 16:
      result = 0x3120656E6F685069;
      break;
    case 17:
      result = 0x3120656E6F685069;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0x3120656E6F685069;
      break;
    case 20:
      result = 0x3120656E6F685069;
      break;
    case 21:
      result = 0x3120656E6F685069;
      break;
    case 22:
      result = 0xD000000000000011;
      break;
    case 23:
      result = 0x3120656E6F685069;
      break;
    case 24:
      result = 0x3120656E6F685069;
      break;
    case 25:
      result = 0x3120656E6F685069;
      break;
    case 26:
      result = 0xD000000000000011;
      break;
    case 27:
      result = 1684099177;
      break;
    case 28:
      result = 0x7269412064615069;
      break;
    case 29:
      result = 0x6E694D2064615069;
      break;
    case 30:
    case 31:
    case 32:
      result = 0x6F72502064615069;
      break;
    case 33:
      result = 6512973;
      break;
    case 34:
      result = 0x20746E6572727543;
      break;
    default:
      result = 0x5820656E6F685069;
      break;
  }

  return result;
}

uint64_t sub_1D6E23ADC(char a1)
{
  result = 0x7258656E6F685069;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x7358656E6F685069;
      break;
    case 3:
      result = 0x4553656E6F685069;
      break;
    case 4:
      result = 0x3131656E6F685069;
      break;
    case 5:
      result = 0x3131656E6F685069;
      break;
    case 6:
      result = 0x3131656E6F685069;
      break;
    case 7:
      result = 0x3231656E6F685069;
      break;
    case 8:
      result = 0x3231656E6F685069;
      break;
    case 9:
      result = 0x3231656E6F685069;
      break;
    case 10:
      result = 0x3231656E6F685069;
      break;
    case 11:
      result = 0x3331656E6F685069;
      break;
    case 12:
      result = 0x3331656E6F685069;
      break;
    case 13:
      result = 0x3331656E6F685069;
      break;
    case 14:
      result = 0x3331656E6F685069;
      break;
    case 15:
      result = 0x3431656E6F685069;
      break;
    case 16:
      result = 0x3431656E6F685069;
      break;
    case 17:
      result = 0x3431656E6F685069;
      break;
    case 18:
      result = 0x3431656E6F685069;
      break;
    case 19:
      result = 0x3531656E6F685069;
      break;
    case 20:
      result = 0x3531656E6F685069;
      break;
    case 21:
      result = 0x3531656E6F685069;
      break;
    case 22:
      result = 0x3531656E6F685069;
      break;
    case 23:
      result = 0x3631656E6F685069;
      break;
    case 24:
      result = 0x3631656E6F685069;
      break;
    case 25:
      result = 0x3631656E6F685069;
      break;
    case 26:
      result = 0x3631656E6F685069;
      break;
    case 27:
      result = 1684099177;
      break;
    case 28:
      result = 0x72694164615069;
      break;
    case 29:
      result = 0x696E694D64615069;
      break;
    case 30:
    case 31:
    case 32:
      result = 0x5F6F725064615069;
      break;
    case 33:
      result = 6513005;
      break;
    case 34:
      result = 0x6465727265666E69;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D6E23DE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6E241AC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D6E23E14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6E23ADC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D6E23E50(uint64_t a1)
{
  v2 = sub_1D6E2474C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D6E23EA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D6E2474C();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D6E23F00(uint64_t a1)
{
  v2 = sub_1D6E2474C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t sub_1D6E24004(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D6E23ADC(*a1);
  v5 = v4;
  if (v3 == sub_1D6E23ADC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6E2408C()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6E23ADC(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6E240F0(uint64_t a1)
{
  sub_1D6E23ADC(*v1);
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6E24144(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D6E23ADC(v2);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6E241AC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72648CC();

  if (v2 >= 0x23)
  {
    return 35;
  }

  else
  {
    return v2;
  }
}

double sub_1D6E24200(void *a1, double a2, double a3, double a4, double a5)
{
  [a1 adjustedContentInset];
  v11 = v10;
  [a1 adjustedContentInset];
  v13 = v12;
  [a1 adjustedContentInset];
  v15 = v14;
  [a1 contentOffset];
  v17 = v15 + v16;
  if (v15 + v16 >= v13)
  {
    v17 = v13;
  }

  v18 = v11 - v17;
  if (v18 < 0.0)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v18;
  }

  [a1 contentOffset];
  v21 = v20 + a4;
  if (v21 >= a4)
  {
    v21 = a4;
  }

  v22 = a4 - v21;
  if (v22 < 0.0)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  [a1 adjustedContentInset];
  v25 = v24;
  [a1 contentInset];

  return UIEdgeInsetsInsetRect_2(0.0, 0.0, a2, a3, v19, v23, v25 - v26, a5);
}

double sub_1D6E24328(char a1, id a2)
{
  result = 375.0;
  switch(a1)
  {
    case 1:
    case 4:
    case 5:
    case 8:
    case 12:
      return 375.0;
    case 3:
      return result;
    case 7:
    case 9:
    case 11:
    case 13:
      v5 = 0x600000000000;
      goto LABEL_12;
    case 10:
    case 14:
    case 24:
      v7 = 0xE00000000000;
      goto LABEL_16;
    case 15:
    case 17:
    case 19:
    case 21:
    case 23:
      v5 = 0x900000000000;
LABEL_12:
      *&result = v5 & 0xFFFFFFFFFFFFLL | 0x4078000000000000;
      return result;
    case 16:
    case 18:
    case 20:
    case 22:
      v7 = 0xC00000000000;
LABEL_16:
      *&result = v7 & 0xFFFFFFFFFFFFLL | 0x407A000000000000;
      return result;
    case 25:
      v6 = 0x200000000000;
      goto LABEL_14;
    case 26:
      return 440.0;
    case 27:
      v9 = 0x500000000000;
      goto LABEL_10;
    case 28:
      v9 = 0xA00000000000;
LABEL_10:
      *&result = v9 & 0xFFFFFFFFFFFFLL | 0x4089000000000000;
      break;
    case 29:
      result = 744.0;
      break;
    case 30:
    case 31:
      result = 834.0;
      break;
    case 32:
      result = 1024.0;
      break;
    case 33:
    case 34:
      [a2 bounds];
      result = v8;
      break;
    default:
      v6 = 0xE00000000000;
LABEL_14:
      *&result = v6 & 0xFFFFFFFFFFFFLL | 0x4079000000000000;
      break;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DebugFormatDevice(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDE)
  {
    goto LABEL_17;
  }

  if (a2 + 34 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 34) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 34;
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

      return (*a1 | (v4 << 8)) - 34;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 34;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v8 = v6 - 35;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DebugFormatDevice(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDE)
  {
    v4 = 0;
  }

  if (a2 > 0xDD)
  {
    v5 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
    *result = a2 + 34;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D6E2464C()
{
  result = qword_1EC896B88;
  if (!qword_1EC896B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896B88);
  }

  return result;
}

unint64_t sub_1D6E246A4()
{
  result = qword_1EC896B90;
  if (!qword_1EC896B90)
  {
    sub_1D6E246FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896B90);
  }

  return result;
}

void sub_1D6E246FC()
{
  if (!qword_1EC896B98)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC896B98);
    }
  }
}

unint64_t sub_1D6E2474C()
{
  result = qword_1EC896BA0;
  if (!qword_1EC896BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896BA0);
  }

  return result;
}

uint64_t ShareLinkProviderType.shareLink(for:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D72585BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v34 - v15;
  *&v19 = MEMORY[0x1EEE9AC00](v17, v18).n128_u64[0];
  v21 = &v34 - v20;
  if ([a1 contentType] != 1)
  {
    v22 = [a1 articleID];
    if (!v22)
    {
      sub_1D726207C();
      v22 = sub_1D726203C();
    }

    v23 = [a1 routeURL];
    if (v23)
    {
      v24 = v23;
      sub_1D72584EC();

      v25 = sub_1D725844C();
      (*(v9 + 8))(v16, v8);
    }

    else
    {
      v25 = 0;
    }

    v26 = [objc_opt_self() nss:v22 NewsURLForArticleID:v25 routeURL:?];

    if (v26)
    {
      sub_1D72584EC();

      v27 = *(v9 + 32);
      v27(v21, v12, v8);
      v28 = [a1 sourceChannel];
      if (!v28 || (v29 = [v28 isPublic], swift_unknownObjectRelease(), v29))
      {
        v27(a2, v21, v8);
        return (*(v9 + 56))(a2, 0, 1, v8);
      }

      (*(v9 + 8))(v21, v8);
    }
  }

  v31 = [a1 contentURL];
  if (v31)
  {
    v32 = v31;
    sub_1D72584EC();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  (*(v9 + 56))(v7, v33, 1, v8);
  return sub_1D5EB8540(v7, a2);
}

void sub_1D6E24B2C(void *a1)
{
  v2 = [a1 identifier];
  if (!v2)
  {
    sub_1D726207C();
    v2 = sub_1D726203C();
  }

  v3 = [a1 articles];
  sub_1D5B5D6A0();
  v4 = sub_1D726267C();

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  if (!sub_1D7263BFC())
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1DA6FB460](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v5 = *(v4 + 32);
    swift_unknownObjectRetain();
  }

  v6 = [v5 identifier];
  swift_unknownObjectRelease();
  if (!v6)
  {
    sub_1D726207C();
    v6 = sub_1D726203C();
LABEL_12:
  }

  v7 = [objc_opt_self() nss:v2 NewsURLForRecipeID:v6 articleID:?];

  sub_1D72584EC();
}

void ShareLinkProviderType.shareLink(for:)(void *a1)
{
  v2 = [a1 identifier];
  if (!v2)
  {
    sub_1D726207C();
    v2 = sub_1D726203C();
  }

  v3 = [a1 articles];
  sub_1D5B5D6A0();
  v4 = sub_1D726267C();

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  if (!sub_1D7263BFC())
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1DA6FB460](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v5 = *(v4 + 32);
    swift_unknownObjectRetain();
  }

  v6 = [v5 identifier];
  swift_unknownObjectRelease();
  if (!v6)
  {
    sub_1D726207C();
    v6 = sub_1D726203C();
LABEL_12:
  }

  v7 = [objc_opt_self() nss:v2 NewsURLForRecipeID:v6 articleID:?];

  sub_1D72584EC();
}

uint64_t dispatch thunk of ShareLinkProviderType.shareLink(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))(a1, a2);
}

{
  return (*(a3 + 16))(a1, a2);
}

uint64_t sub_1D6E24EF8(uint64_t a1)
{
  result = sub_1D725FACC();
  if (v2 <= 0x3F)
  {
    result = sub_1D725D34C();
    if (v3 <= 0x3F)
    {
      result = sub_1D725E9DC();
      if (v4 <= 0x3F)
      {
        result = sub_1D7260BAC();
        if (v5 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

id sub_1D6E25058(uint64_t *a1, uint64_t a2, void *a3)
{
  v23 = a3;
  v3 = *a1;
  v4 = *a1;
  v5 = *(*a1 + 104);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = *(v3 + 136);
  v7 = sub_1D725DDFC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v22 - v10;
  v12.width = *(v4 + 128);
  *&v13 = *(v4 + 96);
  *(&v13 + 1) = v5;
  v12.height = v6;
  v24 = v13;
  v25 = v12;
  sub_1D725D34C();
  sub_1D725D35C();
  sub_1D725DDEC();
  (*(v8 + 8))(v11, v7);
  sub_1D5B49474(0, &qword_1EDF37A58, &protocol descriptor for FeedAdLayoutProviding);
  if (swift_dynamicCast())
  {
    v14 = v23;
    sub_1D5B7DDE8(&v24, v27);
    v15 = v28;
    v16 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    (*(v16 + 8))(&v24, v15, v16);
    if (v26)
    {
      [v14 frame];
    }

    else
    {
      v18 = v25;
      v19 = v24;
      [v14 frame];
      MinX = CGRectGetMinX(v30);
      [v14 frame];
      MinY = CGRectGetMinY(v31);
      v32.origin = v19;
      v32.size = v18;
      CGRectOffset(v32, MinX, MinY);
    }

    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0;
    sub_1D5BFB774(&v24, &qword_1EDF37A50, &qword_1EDF37A58, &protocol descriptor for FeedAdLayoutProviding);
    return [v23 frame];
  }
}

uint64_t FormatNumberFormatRoundingMode.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x676E696C696563;
  v3 = 0x6E776F44666C6168;
  if (v1 != 5)
  {
    v3 = 0x7055666C6168;
  }

  v4 = 28789;
  if (v1 != 3)
  {
    v4 = 0x6E657645666C6168;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x726F6F6C66;
  if (v1 != 1)
  {
    v5 = 1853321060;
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

NewsFeed::FormatNumberFormatRoundingMode_optional __swiftcall FormatNumberFormatRoundingMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D6E254B0()
{
  result = qword_1EC896BA8;
  if (!qword_1EC896BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896BA8);
  }

  return result;
}

double sub_1D6E25510(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

void sub_1D6E25618(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x676E696C696563;
  v5 = 0xE800000000000000;
  v6 = 0x6E776F44666C6168;
  if (v2 != 5)
  {
    v6 = 0x7055666C6168;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28789;
  if (v2 != 3)
  {
    v8 = 0x6E657645666C6168;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x726F6F6C66;
  if (v2 != 1)
  {
    v10 = 1853321060;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1D6E256DC(uint64_t a1)
{
  *(a1 + 8) = sub_1D6E2570C();
  result = sub_1D6E25760();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6E2570C()
{
  result = qword_1EC896BB0;
  if (!qword_1EC896BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896BB0);
  }

  return result;
}

unint64_t sub_1D6E25760()
{
  result = qword_1EC896BB8;
  if (!qword_1EC896BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896BB8);
  }

  return result;
}

unint64_t sub_1D6E257B4(uint64_t a1)
{
  result = sub_1D6E257DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6E257DC()
{
  result = qword_1EC896BC0;
  if (!qword_1EC896BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896BC0);
  }

  return result;
}

unint64_t sub_1D6E25830(void *a1)
{
  a1[1] = sub_1D666C740();
  a1[2] = sub_1D666C94C();
  result = sub_1D6E254B0();
  a1[3] = result;
  return result;
}

uint64_t FormatTextNodeLayoutAttributes.__allocating_init(identifier:layoutIdentifier:nodeIdentifier:frame:style:resizing:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7, uint64_t *a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t *a14, char a15, uint64_t *a16, uint64_t a17, uint64_t a18)
{
  v28 = swift_allocObject();
  v29 = *a8;
  v30 = *a14;
  v31 = *a16;
  v32 = *(a16 + 8);
  *(v28 + 16) = a1;
  *(v28 + 24) = a2;
  *(v28 + 32) = a3;
  *(v28 + 40) = a4;
  *(v28 + 48) = a5;
  *(v28 + 56) = a6;
  *(v28 + 64) = a9;
  *(v28 + 72) = a10;
  *(v28 + 80) = a11;
  *(v28 + 88) = a12;
  *(v28 + 96) = a7;
  *(v28 + 104) = v29;
  *(v28 + 112) = a13;
  *(v28 + 120) = v30;
  swift_beginAccess();
  *(v28 + 128) = a15;
  *(v28 + 136) = v31;
  *(v28 + 144) = v32;
  *(v28 + 152) = a17;
  *(v28 + 160) = a18;
  if (a7)
  {
    sub_1D60EDBBC(0, &qword_1EDF195B8, sub_1D60D65D0, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v34 = a7[5];
    v35 = a7[7];
    v36 = a7[8];
    v51[2] = a7[6];
    v51[3] = v35;
    v37 = a7[9];
    v38 = a7[10];
    v51[4] = v36;
    v51[5] = v37;
    v39 = a7[11];
    v51[6] = v38;
    v51[7] = v39;
    v51[0] = a7[4];
    v51[1] = v34;
    memmove(__dst, a7 + 4, 0x80uLL);
    if (sub_1D5CFD0B8(__dst) == 1)
    {
      *(inited + 64) = 0;
      *(inited + 32) = 0u;
      *(inited + 48) = 0u;
    }

    else
    {
      *(inited + 56) = &type metadata for FormatFill;
      *(inited + 64) = &protocol witness table for FormatFill;
      v41 = swift_allocObject();
      *(inited + 32) = v41;
      v42 = __dst[1];
      v41[1] = __dst[0];
      v41[2] = v42;
      v43 = __dst[3];
      v41[3] = __dst[2];
      v41[4] = v43;
      v44 = __dst[5];
      v41[5] = __dst[4];
      v41[6] = v44;
      v45 = __dst[7];
      v41[7] = __dst[6];
      v41[8] = v45;
    }

    sub_1D6E27A58(v51, v50, sub_1D62DF9E8);
    v40 = sub_1D6E25BDC(inited, v46);
    swift_setDeallocating();
    sub_1D60EEB74(inited + 32);
  }

  else
  {
    v40 = MEMORY[0x1E69E7CD0];
  }

  *(v28 + 168) = v40;
  return v28;
}

uint64_t sub_1D6E25BDC(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v3 = a1 + 32;
  v4 = MEMORY[0x1E69E7CD0];
  do
  {
    sub_1D6E27A58(v3, v14, sub_1D60D65D0);
    sub_1D6E27A58(v14, &v9, sub_1D60D65D0);
    if (v10)
    {
      sub_1D5B63F14(&v9, v11);
      v5 = v12;
      v6 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v7 = (*(v6 + 8))(v5, v6);
      v4 = sub_1D5EECE3C(v7, v4);
      sub_1D60EEB74(v14);
      __swift_destroy_boxed_opaque_existential_1(v11);
    }

    else
    {
      sub_1D60EEB74(v14);
      sub_1D60EEB74(&v9);
    }

    v3 += 40;
    --v2;
  }

  while (v2);
  return v4;
}

uint64_t FormatTextNodeLayoutAttributes.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatTextNodeLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatTextNodeLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

double FormatTextNodeLayoutAttributes.resizing.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 104);

  return result;
}

double FormatTextNodeLayoutAttributes.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

void FormatTextNodeLayoutAttributes.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = *(v1 + 136);
  *(a1 + 8) = v2;
}

uint64_t FormatTextNodeLayoutAttributes.name.getter()
{
  v1 = *(v0 + 152);

  return v1;
}

uint64_t FormatTextNodeLayoutAttributes.init(identifier:layoutIdentifier:nodeIdentifier:frame:style:resizing:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7, uint64_t *a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t *a14, char a15, uint64_t *a16, uint64_t a17, uint64_t a18)
{
  v20 = *a8;
  v21 = *a14;
  v22 = *a16;
  v23 = *(a16 + 8);
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  *(v18 + 56) = a6;
  *(v18 + 64) = a9;
  *(v18 + 72) = a10;
  *(v18 + 80) = a11;
  *(v18 + 88) = a12;
  *(v18 + 96) = a7;
  *(v18 + 104) = v20;
  *(v18 + 112) = a13;
  *(v18 + 120) = v21;
  swift_beginAccess();
  *(v18 + 128) = a15;
  *(v18 + 136) = v22;
  *(v18 + 144) = v23;
  *(v18 + 152) = a17;
  *(v18 + 160) = a18;
  if (a7)
  {
    sub_1D60EDBBC(0, &qword_1EDF195B8, sub_1D60D65D0, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v25 = a7[5];
    v26 = a7[7];
    v27 = a7[8];
    v40[2] = a7[6];
    v40[3] = v26;
    v28 = a7[9];
    v29 = a7[10];
    v40[4] = v27;
    v40[5] = v28;
    v30 = a7[11];
    v40[6] = v29;
    v40[7] = v30;
    v40[0] = a7[4];
    v40[1] = v25;
    memmove(__dst, a7 + 4, 0x80uLL);
    if (sub_1D5CFD0B8(__dst) == 1)
    {
      *(inited + 64) = 0;
      *(inited + 32) = 0u;
      *(inited + 48) = 0u;
    }

    else
    {
      *(inited + 56) = &type metadata for FormatFill;
      *(inited + 64) = &protocol witness table for FormatFill;
      v32 = swift_allocObject();
      *(inited + 32) = v32;
      v33 = __dst[1];
      v32[1] = __dst[0];
      v32[2] = v33;
      v34 = __dst[3];
      v32[3] = __dst[2];
      v32[4] = v34;
      v35 = __dst[5];
      v32[5] = __dst[4];
      v32[6] = v35;
      v36 = __dst[7];
      v32[7] = __dst[6];
      v32[8] = v36;
    }

    sub_1D6E27A58(v40, v39, sub_1D62DF9E8);
    v31 = sub_1D6E25BDC(inited, v37);
    swift_setDeallocating();
    sub_1D60EEB74(inited + 32);
  }

  else
  {
    v31 = MEMORY[0x1E69E7CD0];
  }

  *(v18 + 168) = v31;
  return v18;
}

unint64_t sub_1D6E260F0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000011;
    v7 = 1701667182;
    if (a1 != 10)
    {
      v7 = 0xD000000000000013;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000018;
    if (a1 == 7)
    {
      v8 = 0x696C696269736976;
    }

    if (a1 == 6)
    {
      v8 = 0x7865646E497ALL;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0x656D617266;
    v3 = 0x656C797473;
    if (a1 != 4)
    {
      v3 = 0x676E697A69736572;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000010;
    if (a1 != 1)
    {
      v4 = 0x6E65644965646F6ELL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D6E2627C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6E27690(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6E262A4(uint64_t a1)
{
  v2 = sub_1D6E268C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E262E0(uint64_t a1)
{
  v2 = sub_1D6E268C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTextNodeLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 120));

  return v0;
}

uint64_t FormatTextNodeLayoutAttributes.__deallocating_deinit()
{
  FormatTextNodeLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t FormatTextNodeLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6E27180(0, &qword_1EC896BC8, sub_1D6E268C0, &type metadata for FormatTextNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E268C0();
  sub_1D7264B5C();
  LOBYTE(v16) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    sub_1D72643FC();
    LOBYTE(v16) = 2;
    sub_1D72643FC();
    swift_beginAccess();
    v12 = *(v3 + 80);
    v16 = *(v3 + 64);
    v17 = v12;
    LOBYTE(v14) = 3;
    type metadata accessor for CGRect(0);
    sub_1D6E26914(&qword_1EC8801E8, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
    sub_1D726443C();
    *&v16 = *(v3 + 96);
    LOBYTE(v14) = 4;
    type metadata accessor for FormatTextNodeStyle();
    sub_1D6E26914(&qword_1EDF0F888, 255, type metadata accessor for FormatTextNodeStyle, &protocol conformance descriptor for FormatTextNodeStyle);
    sub_1D72643BC();
    *&v16 = *(v3 + 104);
    LOBYTE(v14) = 5;
    sub_1D5F8F3E0();

    sub_1D72643BC();

    LOBYTE(v16) = 6;
    sub_1D726442C();
    *&v16 = *(v3 + 120);
    LOBYTE(v14) = 7;
    sub_1D5EB1500(v16);
    sub_1D5DF6A60();
    sub_1D726443C();
    sub_1D5EB15C4(v16);
    swift_beginAccess();
    if ((*(v3 + 128) & 1) == 0)
    {
      LOBYTE(v14) = 8;
      v18 = 0;
      sub_1D6E2695C();
      sub_1D72647EC();
    }

    v13 = *(v3 + 144);
    v14 = *(v3 + 136);
    v15 = v13;
    v18 = 9;
    sub_1D5F8F434();
    sub_1D72643BC();
    LOBYTE(v14) = 10;
    sub_1D726437C();
    v14 = *(v3 + 168);
    v18 = 11;
    sub_1D6E27180(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    sub_1D6E271E8(&qword_1EC881AF0, sub_1D5F8F488, MEMORY[0x1E69E64F0]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6E268C0()
{
  result = qword_1EC896BD0;
  if (!qword_1EC896BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896BD0);
  }

  return result;
}

uint64_t sub_1D6E26914(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1D6E2695C()
{
  result = qword_1EC896BD8;
  if (!qword_1EC896BD8)
  {
    sub_1D6E27180(255, &qword_1EC896BC8, sub_1D6E268C0, &type metadata for FormatTextNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896BD8);
  }

  return result;
}

uint64_t FormatTextNodeLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatTextNodeLayoutAttributes.init(from:)(a1);
  return v2;
}

void *FormatTextNodeLayoutAttributes.init(from:)(void *a1)
{
  sub_1D6E27180(0, &qword_1EC896BE0, sub_1D6E268C0, &type metadata for FormatTextNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v19 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E268C0();
  v8 = v22;
  sub_1D7264B0C();
  if (v8)
  {
    swift_deallocPartialClassInstance();
    v11 = a1;
  }

  else
  {
    v22 = a1;
    v9 = v21;
    LOBYTE(v23) = 0;
    *(v1 + 16) = sub_1D72642BC();
    *(v1 + 24) = v10;
    LOBYTE(v23) = 1;
    *(v1 + 32) = sub_1D72642BC();
    *(v1 + 40) = v13;
    LOBYTE(v23) = 2;
    *(v1 + 48) = sub_1D72642BC();
    *(v1 + 56) = v14;
    type metadata accessor for CGRect(0);
    v26 = 3;
    sub_1D6E26914(&qword_1EDF1A740, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    v20 = v4;
    sub_1D726431C();
    v15 = v24;
    *(v1 + 64) = v23;
    *(v1 + 80) = v15;
    type metadata accessor for FormatTextNodeStyle();
    v26 = 4;
    sub_1D6E26914(&qword_1EDF2BD80, 255, type metadata accessor for FormatTextNodeStyle, &protocol conformance descriptor for FormatTextNodeStyle);
    sub_1D726427C();
    *(v1 + 96) = v23;
    v26 = 5;
    sub_1D5F8FC50();
    sub_1D726427C();
    *(v1 + 104) = v23;
    LOBYTE(v23) = 6;
    *(v1 + 112) = sub_1D72642FC();
    v26 = 7;
    sub_1D5DF6A0C();
    sub_1D726431C();
    *(v1 + 120) = v23;
    LOBYTE(v23) = 8;
    if (sub_1D726434C())
    {
      v26 = 8;
      sub_1D726431C();
      v16 = v25;
    }

    else
    {
      v16 = 1;
    }

    *(v1 + 128) = v16;
    v26 = 9;
    sub_1D5C6F27C();
    sub_1D726427C();
    v17 = BYTE8(v23);
    *(v1 + 136) = v23;
    *(v1 + 144) = v17;
    LOBYTE(v23) = 10;
    *(v1 + 152) = sub_1D726422C();
    *(v1 + 160) = v18;
    sub_1D6E27180(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    v26 = 11;
    sub_1D6E271E8(&qword_1EC881B10, sub_1D5F8FD48, MEMORY[0x1E69E6510]);
    sub_1D726431C();
    (*(v9 + 8))(v7, v20);
    v11 = v22;
    *(v1 + 168) = v23;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v1;
}

void sub_1D6E27180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D6E271E8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D6E27180(255, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1D6E273DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatTextNodeLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D6E27458(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  sub_1D6E26914(&qword_1EC8940F0, a2, type metadata accessor for FormatTextNodeLayoutAttributes, &protocol conformance descriptor for FormatTextNodeLayoutAttributes);

  return sub_1D725A24C();
}

unint64_t sub_1D6E2758C()
{
  result = qword_1EC896BF8;
  if (!qword_1EC896BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896BF8);
  }

  return result;
}

unint64_t sub_1D6E275E4()
{
  result = qword_1EC896C00;
  if (!qword_1EC896C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896C00);
  }

  return result;
}

unint64_t sub_1D6E2763C()
{
  result = qword_1EC896C08;
  if (!qword_1EC896C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896C08);
  }

  return result;
}

uint64_t sub_1D6E27690(uint64_t a1, uint64_t a2)
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

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C48E0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1D6E27A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

NewsFeed::FormatFlexBoxNodeAlignContent_optional __swiftcall FormatFlexBoxNodeAlignContent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatFlexBoxNodeAlignContent.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7261745378656C66;
  v3 = 0x6F72416563617073;
  if (v1 != 5)
  {
    v3 = 0x6576456563617073;
  }

  v4 = 0x68637465727473;
  if (v1 != 3)
  {
    v4 = 0x7465426563617073;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x646E4578656C66;
  if (v1 != 1)
  {
    v5 = 0x7265746E6563;
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

unint64_t sub_1D6E27C30()
{
  result = qword_1EC896C10;
  if (!qword_1EC896C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896C10);
  }

  return result;
}

double sub_1D6E27C90(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

void sub_1D6E27DCC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 0x7261745378656C66;
  v5 = 0xEB00000000646E75;
  v6 = 0x6F72416563617073;
  if (v2 != 5)
  {
    v6 = 0x6576456563617073;
    v5 = 0xEB00000000796C6ELL;
  }

  v7 = 0xE700000000000000;
  v8 = 0x68637465727473;
  if (v2 != 3)
  {
    v8 = 0x7465426563617073;
    v7 = 0xEC0000006E656577;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x646E4578656C66;
  if (v2 != 1)
  {
    v10 = 0x7265746E6563;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}
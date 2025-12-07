uint64_t sub_242DD6310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_242DD6378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6C78;
  if (!qword_27ECF6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6C78);
  }

  return result;
}

unint64_t sub_242DD63CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6C88;
  if (!qword_27ECF6C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6C88);
  }

  return result;
}

unint64_t sub_242DD6420()
{
  result = qword_27ECF6C90;
  if (!qword_27ECF6C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2C90, &qword_242F172D8);
    sub_242DD6720(&qword_27ECF5750, type metadata accessor for Slot, &protocol conformance descriptor for Slot);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6C90);
  }

  return result;
}

uint64_t sub_242DD64D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_242DD6534(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF23E8, &unk_242F13C40);
    v4 = MEMORY[0x277CC95F0];
    sub_242DD6720(&qword_27ECF2158, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_242DD6720(&qword_27ECF2160, v4, MEMORY[0x277CC95F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242DD6608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6CA8;
  if (!qword_27ECF6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6CA8);
  }

  return result;
}

uint64_t sub_242DD665C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_242DD66C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6CB0;
  if (!qword_27ECF6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6CB0);
  }

  return result;
}

uint64_t sub_242DD6720(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_242DD67A0(uint64_t a1)
{
  sub_242D3B468(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_242DD686C();
      if (v3 <= 0x3F)
      {
        sub_242DD68BC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_242DD686C()
{
  if (!qword_27ECF6CC8)
  {
    v0 = sub_242F05860();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF6CC8);
    }
  }
}

void sub_242DD68BC(uint64_t a1)
{
  if (!qword_27ECF6CD0)
  {
    type metadata accessor for Slot(255);
    v1 = sub_242F053E0();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECF6CD0);
    }
  }
}

unint64_t sub_242DD6928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6CD8;
  if (!qword_27ECF6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6CD8);
  }

  return result;
}

unint64_t sub_242DD6980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6CE0;
  if (!qword_27ECF6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6CE0);
  }

  return result;
}

unint64_t sub_242DD69D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6CE8;
  if (!qword_27ECF6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6CE8);
  }

  return result;
}

uint64_t sub_242DD6A2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C62616B63617274 && a2 == 0xE900000000000065 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73746F6C73 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_242F06110();

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

unint64_t sub_242DD6C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6CF0;
  if (!qword_27ECF6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6CF0);
  }

  return result;
}

double sub_242DD6C78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;

  return result;
}

double sub_242DD6CD8()
{
  swift_beginAccess();

  return result;
}

double sub_242DD6D10(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

uint64_t LuaEncoder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_242CE6468(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_242DD6E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242F04F80();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v7 = *(v3 + 16);
  v8 = type metadata accessor for _LuaEncoder();
  v9 = swift_allocObject();
  v9[4] = 0;
  v9[2] = MEMORY[0x277D84F90];
  v9[3] = v7;
  v9[5] = 0;
  v21[3] = v8;
  v21[4] = sub_242DD7650(&qword_27ECF5538, v10, type metadata accessor for _LuaEncoder, &unk_242F30E1C);
  v21[0] = v9;

  v11 = v21[9];
  sub_242F04D70();
  if (v11)
  {

    __swift_destroy_boxed_opaque_existential_2Tm(v21);
    return v4;
  }

  v12 = v4;
  __swift_destroy_boxed_opaque_existential_2Tm(v21);
  if (v9[4])
  {
    v13 = v9[5];
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 8);
    swift_unknownObjectRetain();
    v15(ObjectType, v13);
    swift_unknownObjectRelease();
  }

  sub_242F04F70();
  v4 = sub_242F04F40();
  v17 = v16;

  result = (*(v20 + 8))(v6, v12);
  if (v17 >> 60 != 15)
  {

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t LuaEncoder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_242DD70D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_242DD6E14(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

uint64_t sub_242DD7108()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_242DD7150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (v4[4])
  {
    result = sub_242F05C60();
    __break(1u);
  }

  else
  {
    _s14KeyedContainerCMa(0, a2, a3, a4);
    v5 = v4[2];
    v6 = v4[3];

    v4[4] = sub_242D98B94(v5, v6);
    v4[5] = &off_2855892F8;

    swift_unknownObjectRelease();
    swift_getWitnessTable();
    return sub_242F05F40();
  }

  return result;
}

uint64_t sub_242DD7264@<X0>(void *a1@<X8>)
{
  if (v1[4])
  {
    result = sub_242F05C60();
    __break(1u);
  }

  else
  {
    v3 = v1[2];
    v4 = v1[3];
    v5 = _s16UnkeyedContainerCMa();
    v6 = swift_allocObject();
    v6[2] = MEMORY[0x277D84F90];
    v6[3] = v3;
    v6[4] = v4;
    v1[4] = v6;
    v1[5] = &off_285591A50;
    a1[3] = v5;
    a1[4] = sub_242DD7650(&qword_27ECF5540, 255, _s16UnkeyedContainerCMa, &unk_242F41424);
    *a1 = v6;
  }

  return result;
}

uint64_t sub_242DD7390@<X0>(uint64_t *a1@<X8>)
{
  if (v1[4])
  {
    result = sub_242F05C60();
    __break(1u);
  }

  else
  {
    v3 = v1[2];
    v4 = v1[3];
    v5 = _s20SingleValueContainerCMa();
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0xE000000000000000;
    *(v6 + 32) = 1;
    *(v6 + 40) = v3;
    *(v6 + 48) = v4;
    v1[4] = v6;
    v1[5] = &off_28558D568;
    a1[3] = v5;
    a1[4] = sub_242DD7650(&qword_27ECF5548, 255, _s20SingleValueContainerCMa, &unk_242F36F88);
    *a1 = v6;
  }

  return result;
}

uint64_t sub_242DD7650(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

CarPlayAssetUI::Texture::ContentMode_optional __swiftcall Texture.ContentMode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *Texture.imageAsset.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_242DD7788(v2, v3, v4, v5, v6);
}

void *sub_242DD7788(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  if ((~a5 & 0xFE) != 0)
  {
    return sub_242C7F6C4(a1, a2, a3, a4, a5);
  }

  return a1;
}

__n128 Texture.imageAsset.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_242DD77E4(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

void sub_242DD77E4(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  if ((~a5 & 0xFE) != 0)
  {
    sub_242C7F724(a1, a2, a3, a4, a5);
  }
}

uint64_t Texture.name.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void Texture.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

__n128 Texture.init(imageAsset:contentMode:name:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *a2;
  sub_242DD77E4(0, 0, 0, 0, 254);
  result = *a1;
  v13 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v13;
  *(a5 + 32) = v9;
  *(a5 + 40) = v10;
  *(a5 + 48) = v11;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  return result;
}

uint64_t Texture.identifier.getter()
{
  if ((~*(v0 + 8) & 0xFELL) == 0)
  {
    return 0x546E776F6E6B6E55;
  }

  if ((v0[4] & 0x80) != 0)
  {
    v1 = v0[1];
  }

  else
  {
    v1 = *v0;
  }

  return v1;
}

uint64_t Texture.assets.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  if ((~*(v0 + 32) & 0xFELL) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200, &qword_242F0A530);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_242F09510;
    *(v7 + 56) = &type metadata for ImageAsset;
    *(v7 + 64) = &protocol witness table for ImageAsset;
    v8 = swift_allocObject();
    *(v7 + 32) = v8;
    *(v8 + 16) = v2;
    *(v8 + 24) = v1;
    *(v8 + 32) = v3;
    *(v8 + 40) = v4;
    *(v8 + 48) = v5;
    *(v8 + 56) = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  sub_242DD7788(v2, v1, v3, v4, v5);
  return v7;
}

void Texture.restoreAssets(from:)(void *a1)
{
  if ((~*(v1 + 32) & 0xFELL) != 0)
  {
    ImageAsset.restore(from:)(a1);
  }
}

uint64_t sub_242DD7AE8()
{
  v1 = 0x4D746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 1701667182;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7373416567616D69;
  }
}

uint64_t sub_242DD7B48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242DD8EB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242DD7B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DD7E28(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DD7BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DD7E28(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Texture.encode(to:)(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6CF8, &qword_242F30E68);
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v4 = v28 - v3;
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  v40 = *(v1 + 48);
  v11 = *(v1 + 64);
  v28[2] = *(v1 + 56);
  v29 = v5;
  v28[1] = v11;
  v12 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_2Tm(a1, v12);
  v13 = v29;
  v14 = sub_242DD7788(v6, v29, v7, v8, v10);
  sub_242DD7E28(v14, v15, v16);
  v17 = sub_242F064C0();
  v34 = v6;
  v35 = v13;
  v36 = v7;
  v37 = v8;
  v18 = v4;
  v38 = v10;
  v39 = v9;
  v19 = v31;
  v41 = 0;
  sub_242C8B8E8(v17, v20, v21);
  v22 = v32;
  sub_242F05EB0();
  sub_242DD77E4(v34, v35, v36, v37, v38);
  if (v22)
  {
    return (*(v33 + 8))(v18, v19);
  }

  v27 = v33;
  LOBYTE(v34) = v40;
  v41 = 1;
  sub_242DD7E7C(v23, v24, v25);
  sub_242F05F20();
  LOBYTE(v34) = 2;
  sub_242F05E50();
  return (*(v27 + 8))(v18, v19);
}

unint64_t sub_242DD7E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6D00;
  if (!qword_27ECF6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6D00);
  }

  return result;
}

unint64_t sub_242DD7E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6D08;
  if (!qword_27ECF6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6D08);
  }

  return result;
}

void Texture.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6D10, &qword_242F30E70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DD7E28(v9, v10, v11);
  v12 = sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    sub_242DD77E4(0, 0, 0, 0, 254);
  }

  else
  {
    LOBYTE(v35) = 0;
    sub_242C8BA70(v12, v13, v14);
    sub_242F05D90();
    v31 = a2;
    v15 = v40;
    v16 = v41;
    v34 = v43;
    v17 = v44;
    v32 = v42;
    v33 = v45;
    sub_242DD77E4(0, 0, 0, 0, 254);
    LOBYTE(v35) = 1;
    sub_242DD81D8(v18, v19, v20);
    sub_242F05E00();
    v49 = v40;
    v50 = 2;
    v21 = sub_242F05D30();
    v22 = v8;
    v24 = v23;
    (*(v6 + 8))(v22, v5);
    *&v35 = v15;
    *(&v35 + 1) = v16;
    v26 = v32;
    v25 = v33;
    *&v36 = v32;
    *(&v36 + 1) = v34;
    *&v37 = v17;
    *(&v37 + 1) = v33;
    LOBYTE(v38) = v49;
    *(&v38 + 1) = v21;
    v39 = v24;
    v27 = v31;
    *(v31 + 64) = v24;
    v28 = v38;
    v27[2] = v37;
    v27[3] = v28;
    v29 = v36;
    *v27 = v35;
    v27[1] = v29;
    sub_242DD822C(&v35, &v40);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    v40 = v15;
    v41 = v16;
    v42 = v26;
    v43 = v34;
    v44 = v17;
    v45 = v25;
    v46 = v49;
    v47 = v21;
    v48 = v24;
    sub_242DD8264(&v40);
  }
}

unint64_t sub_242DD81D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6D18;
  if (!qword_27ECF6D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6D18);
  }

  return result;
}

uint64_t sub_242DD8294()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  if ((~*(v0 + 32) & 0xFELL) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200, &qword_242F0A530);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_242F09510;
    *(v7 + 56) = &type metadata for ImageAsset;
    *(v7 + 64) = &protocol witness table for ImageAsset;
    v8 = swift_allocObject();
    *(v7 + 32) = v8;
    *(v8 + 16) = v2;
    *(v8 + 24) = v1;
    *(v8 + 32) = v3;
    *(v8 + 40) = v4;
    *(v8 + 48) = v5;
    *(v8 + 56) = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  sub_242DD7788(v2, v1, v3, v4, v5);
  return v7;
}

void sub_242DD8378(void *a1)
{
  if ((~*(v1 + 32) & 0xFELL) != 0)
  {
    ImageAsset.restore(from:)(a1);
  }
}

double Texture.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 48);
  v8 = *(v6 + 64);
  sub_242DD8710(a1);
  MEMORY[0x245D279A0](v7);
  if (v8)
  {
    sub_242F063B0();

    sub_242F04DD0();
  }

  else
  {
    sub_242F063B0();
  }

  return result;
}

uint64_t Texture.hashValue.getter()
{
  v1 = v0[1];
  v6 = *v0;
  v7 = v1;
  v8 = v0[2];
  v2 = *(v0 + 48);
  v3 = *(v0 + 8);
  sub_242F06390();
  sub_242DD8710(v5);
  MEMORY[0x245D279A0](v2);
  sub_242F063B0();
  if (v3)
  {
    sub_242F04DD0();
  }

  return sub_242F063E0();
}

uint64_t sub_242DD8528()
{
  v1 = v0[1];
  v6 = *v0;
  v7 = v1;
  v8 = v0[2];
  v2 = *(v0 + 48);
  v3 = *(v0 + 8);
  sub_242F06390();
  sub_242DD8710(v5);
  MEMORY[0x245D279A0](v2);
  sub_242F063B0();
  if (v3)
  {
    sub_242F04DD0();
  }

  return sub_242F063E0();
}

double sub_242DD85C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 48);
  v8 = *(v6 + 64);
  sub_242DD8710(a1);
  MEMORY[0x245D279A0](v7);
  if (v8)
  {
    sub_242F063B0();

    sub_242F04DD0();
  }

  else
  {
    sub_242F063B0();
  }

  return result;
}

uint64_t sub_242DD8678(uint64_t a1)
{
  v2 = v1[1];
  v7 = *v1;
  v8 = v2;
  v9 = v1[2];
  v3 = *(v1 + 48);
  v4 = *(v1 + 8);
  sub_242F06390();
  sub_242DD8710(v6);
  MEMORY[0x245D279A0](v3);
  sub_242F063B0();
  if (v4)
  {
    sub_242F04DD0();
  }

  return sub_242F063E0();
}

void sub_242DD8710(uint64_t a1)
{
  v3 = *(v1 + 32);
  if ((~*(v1 + 32) & 0xFELL) == 0)
  {
    sub_242F063B0();
    return;
  }

  v4 = *v1;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 40);
  sub_242F063B0();
  if ((v3 & 0x80) != 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063B0();
    if (v4)
    {
      v9 = v4;
      sub_242F05820();
    }

    sub_242F04DD0();
    sub_242C78CCC(a1, v5);
    goto LABEL_15;
  }

  MEMORY[0x245D279A0](0);
  sub_242F04DD0();
  if (!v6)
  {
    sub_242F063B0();
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_242F063B0();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x245D279D0](v10);
    goto LABEL_15;
  }

  sub_242F063B0();
  v8 = v6;
  sub_242F05820();

  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  sub_242F063B0();
LABEL_15:
  MEMORY[0x245D279A0](v7);
}

uint64_t _s14CarPlayAssetUI7TextureV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = v12 & 0xFE;
  v46 = v3;
  if ((~*(a1 + 32) & 0xFELL) == 0)
  {
    v37 = *(a2 + 48);
    v39 = *(a1 + 48);
    v32 = *(a2 + 56);
    v33 = *(a1 + 56);
    v36 = *(a2 + 64);
    v41 = *(a1 + 64);
    v43 = *(a2 + 16);
    v44 = *a2;
    v45 = *a1;
    v34 = *(a1 + 16);
    v14 = *(a2 + 8);
    sub_242DD7788(v2, v3, v4, v5, v6);
    sub_242DD7788(v9, v14, v11, v10, v12);
    v15 = v10;
    v16 = v12;
    v17 = v14;
    v18 = v34;
    if (v13 == 254)
    {
      sub_242DD77E4(v45, v46, v34, v5, v6);
      v19 = v41;
      if (v39 == v37)
      {
        goto LABEL_13;
      }

      return 0;
    }

LABEL_7:
    sub_242DD77E4(v45, v46, v18, v5, v6);
    sub_242DD77E4(v44, v17, v43, v15, v16);
    return 0;
  }

  v35 = *(a2 + 40);
  if (v13 == 254)
  {
    v18 = *(a1 + 16);
    v45 = *a1;
    v16 = *(a2 + 32);
    v20 = *(a1 + 8);
    v17 = *(a2 + 8);
    sub_242DD7788(v2, v3, v4, v5, v6);
    v43 = v11;
    v44 = v9;
    v21 = v11;
    v15 = v10;
    sub_242DD7788(v9, v17, v21, v10, v16);
    sub_242DD7788(v45, v20, v18, v5, v6);
    sub_242C7F724(v45, v20, v18, v5, v6);
    goto LABEL_7;
  }

  v38 = *(a2 + 48);
  v40 = *(a1 + 48);
  v32 = *(a2 + 56);
  v33 = *(a1 + 56);
  v36 = *(a2 + 64);
  v42 = *(a1 + 64);
  v52 = *a1;
  v53 = v3;
  v54 = v4;
  v55 = v5;
  v56 = v6;
  v47 = v9;
  v48 = v8;
  v49 = v11;
  v50 = v10;
  v51 = v12;
  v23 = v11;
  v24 = v4;
  v25 = v5;
  v26 = v5;
  v27 = v6;
  v28 = v6;
  v29 = v8;
  v30 = v2;
  sub_242DD7788(v2, v3, v4, v26, v28);
  sub_242DD7788(v9, v29, v23, v10, v12);
  sub_242DD7788(v30, v46, v24, v25, v27);
  sub_242C7F6C4(v30, v46, v24, v25, v27);
  v31 = _s14CarPlayAssetUI05ImageC0V0E4TypeO2eeoiySbAE_AEtFZ_0(&v52, &v47);
  sub_242C7F724(v47, v48, v49, v50, v51);
  sub_242C7F724(v52, v53, v54, v55, v56);
  sub_242C7F724(v30, v46, v24, v25, v27);
  sub_242DD77E4(v30, v46, v24, v25, v27);
  result = 0;
  if (v31)
  {
    v19 = v42;
    if (v7 == v35 && ((v40 ^ v38) & 1) == 0)
    {
LABEL_13:
      if (v19)
      {
        if (v36 && (v33 == v32 && v19 == v36 || (sub_242F06110() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v36)
      {
        return 1;
      }

      return 0;
    }
  }

  return result;
}

unint64_t sub_242DD8BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6D20;
  if (!qword_27ECF6D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6D20);
  }

  return result;
}

unint64_t sub_242DD8C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6D28;
  if (!qword_27ECF6D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6D28);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI05ImageC0VSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1 & 0x7E) != 0)
  {
    return 128 - (v1 & 0x7E | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242DD8CB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_242DD8D14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

unint64_t sub_242DD8DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6D30;
  if (!qword_27ECF6D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6D30);
  }

  return result;
}

unint64_t sub_242DD8E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6D38;
  if (!qword_27ECF6D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6D38);
  }

  return result;
}

unint64_t sub_242DD8E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6D40;
  if (!qword_27ECF6D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6D40);
  }

  return result;
}

uint64_t sub_242DD8EB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7373416567616D69 && a2 == 0xEA00000000007465;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D746E65746E6F63 && a2 == 0xEB0000000065646FLL || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

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

unint64_t sub_242DD8FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6D48;
  if (!qword_27ECF6D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6D48);
  }

  return result;
}

uint64_t OverrideRule.value(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v34[-v11];
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v34[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v17 + 16))(v16, v18, a2, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = v16[1];
  v21 = *(v7 + 32);
  if (EnumCaseMultiPayload != 1)
  {
    v28 = *v16;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v21(v12, &v16[*(TupleTypeMetadata2 + 48)], v6);
    v34[12] = v28;
    v34[13] = v20;
    if (DriverSideRule.isValid(in:)(a1, v30, v31))
    {
      v26 = a3;
      v27 = v12;
      goto LABEL_6;
    }

    (*(v7 + 8))(v12, v6);
LABEL_9:
    v32 = 1;
    return (*(v7 + 56))(a3, v32, 1, v6);
  }

  v22 = *v16;
  v23 = swift_getTupleTypeMetadata2();
  v21(v9, &v16[*(v23 + 48)], v6);
  v34[14] = v22;
  v34[15] = v20;
  if (!PortSideIndicatorRule.isValid(in:)(a1, v24, v25))
  {
    (*(v7 + 8))(v9, v6);
    goto LABEL_9;
  }

  v26 = a3;
  v27 = v9;
LABEL_6:
  v21(v26, v27, v6);
  v32 = 0;
  return (*(v7 + 56))(a3, v32, 1, v6);
}

uint64_t DriverSideRule.isValid(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  sub_242DDB6F8(a1, a2, a3);
  sub_242F04010();
  return (v6 != 2) & (v4 ^ v6 ^ 1u);
}

BOOL PortSideIndicatorRule.isValid(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  sub_242DDB924(a1, a2, a3);
  sub_242F04010();
  v5 = v8 == 5;
  v6 = v4 == 5 || v8 == 5;
  if (v4 != 5)
  {
    v5 = 0;
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return v8 == v4;
  }
}

uint64_t static OverrideRule.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v70 = a2;
  v71 = v5;
  MEMORY[0x28223BE20](a1);
  v65 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v68 = &v63 - v8;
  MEMORY[0x28223BE20](v9);
  v64 = &v63 - v10;
  MEMORY[0x28223BE20](v11);
  v67 = &v63 - v12;
  v73[0] = v13;
  v73[1] = v14;
  v73[2] = v15;
  v73[3] = v16;
  v63 = v16;
  v17 = type metadata accessor for OverrideRule(0, v73);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v63 - v22;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v66 = *(TupleTypeMetadata2 - 8);
  v25 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v27 = &v63 - v26;
  v29 = &v63 + *(v28 + 48) - v26;
  v69 = v18;
  v30 = *(v18 + 16);
  v30(&v63 - v26, a1, v17, v25);
  (v30)(v29, v70, v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v30)(v23, v27, v17);
    v44 = v23[1];
    v45 = *(swift_getTupleTypeMetadata2() + 48);
    v33 = &v23[v45];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      goto LABEL_8;
    }

    LODWORD(v70) = v44;
    v47 = *v23;
    v48 = *v29;
    LODWORD(v68) = v29[1];
    v49 = *(v71 + 32);
    v49(v67, v33, a3);
    v50 = &v29[v45];
    v51 = v64;
    v49(v64, v50, a3);
    v39 = v69;
    if (v47 != v48)
    {
LABEL_10:
      v52 = *(v71 + 8);
      v52(v51, a3);
      v53 = v67;
LABEL_17:
      v52(v53, a3);
      v46 = 0;
      goto LABEL_21;
    }

    LOBYTE(v73[0]) = v70;
    v72 = v68;
    v54 = InstrumentDataIdentifier.rawValue.getter();
    v56 = v55;
    if (v54 == InstrumentDataIdentifier.rawValue.getter() && v56 == v57)
    {
    }

    else
    {
      v60 = sub_242F06110();

      if ((v60 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v38 = v51;
    v59 = v67;
    goto LABEL_20;
  }

  (v30)(v20, v27, v17);
  v31 = v20[1];
  v32 = *(swift_getTupleTypeMetadata2() + 48);
  v33 = &v20[v32];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    LODWORD(v70) = v31;
    v34 = *v20;
    v35 = *v29;
    LODWORD(v67) = v29[1];
    v36 = *(v71 + 32);
    v36(v68, v33, a3);
    v37 = &v29[v32];
    v38 = v65;
    v36(v65, v37, a3);
    v39 = v69;
    if (v34 == v35)
    {
      LOBYTE(v73[0]) = v70;
      v72 = v67;
      v40 = InstrumentDataIdentifier.rawValue.getter();
      v42 = v41;
      if (v40 == InstrumentDataIdentifier.rawValue.getter() && v42 == v43)
      {

LABEL_15:
        v59 = v68;
LABEL_20:
        v46 = sub_242F04EE0();
        v61 = *(v71 + 8);
        v61(v38, a3);
        v61(v59, a3);
        goto LABEL_21;
      }

      v58 = sub_242F06110();

      if (v58)
      {
        goto LABEL_15;
      }
    }

    v52 = *(v71 + 8);
    v52(v38, a3);
    v53 = v68;
    goto LABEL_17;
  }

LABEL_8:
  (*(v71 + 8))(v33, a3);
  v46 = 0;
  v39 = v66;
  v17 = TupleTypeMetadata2;
LABEL_21:
  (*(v39 + 8))(v27, v17);
  return v46 & 1;
}

uint64_t sub_242DD99EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6953726576697264 && a2 == 0xEA00000000006564;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F5B850 == a2)
  {

    return 1;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_242DD9AC8(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6953726576697264;
  }
}

uint64_t sub_242DD9B08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701606770 && a2 == 0xE400000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_242DD9BD0(char a1)
{
  sub_242F06390();
  MEMORY[0x245D279A0](a1 & 1);
  return sub_242F063E0();
}

uint64_t sub_242DD9C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242DD99EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242DD9CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_242DD9D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_242DD9DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242DD9B08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242DD9DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_242DD9E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_242DD9EC4(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void, void, void))
{
  sub_242F06390();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5]);
  return sub_242F063E0();
}

uint64_t sub_242DD9F3C@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t sub_242DD9F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_242DD9FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t OverrideRule.encode(to:)(void *a1, void *a2)
{
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v65 = a2[2];
  v5 = v65;
  v66 = v4;
  v67 = v7;
  v68 = v6;
  v52 = type metadata accessor for OverrideRule.PortSideIndicatorCodingKeys(255, &v65);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_242F05F30();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x28223BE20](v8);
  v54 = v48 - v9;
  v65 = v5;
  v66 = v4;
  v67 = v7;
  v68 = v6;
  v10 = type metadata accessor for OverrideRule.DriverSideCodingKeys(255, &v65);
  v11 = swift_getWitnessTable();
  v48[2] = v10;
  v48[1] = v11;
  v53 = sub_242F05F30();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v49 = v48 - v12;
  v57 = *(v5 - 8);
  MEMORY[0x28223BE20](v13);
  v64 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v63 = v48 - v16;
  v17 = *(a2 - 1);
  MEMORY[0x28223BE20](v18);
  v20 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v5;
  v65 = v5;
  v66 = v4;
  v48[0] = v7;
  v67 = v7;
  v68 = v6;
  type metadata accessor for OverrideRule.CodingKeys(255, &v65);
  swift_getWitnessTable();
  v58 = sub_242F05F30();
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v22 = v48 - v21;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F064C0();
  (*(v17 + 16))(v20, v59, a2);
  v23 = v57;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = v20[1];
  v26 = *(v23 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v27 = *v20;
    v28 = v62;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v26(v64, &v20[*(TupleTypeMetadata2 + 48)], v28);
    LOBYTE(v65) = 1;
    v30 = v54;
    v31 = v58;
    v32 = sub_242F05E40();
    LOBYTE(v65) = v27;
    BYTE1(v65) = v25;
    v69 = 0;
    sub_242DDCDAC(v32, v33, v34);
    v35 = v56;
    v36 = v61;
    sub_242F05F20();
    if (!v36)
    {
      LOBYTE(v65) = 1;
      sub_242F05F20();
    }

    (*(v55 + 8))(v30, v35);
    (*(v23 + 8))(v64, v28);
    return (*(v60 + 8))(v22, v31);
  }

  else
  {
    v38 = *v20;
    v39 = v62;
    v40 = swift_getTupleTypeMetadata2();
    v26(v63, &v20[*(v40 + 48)], v39);
    LOBYTE(v65) = 0;
    v41 = v49;
    v42 = v58;
    v43 = sub_242F05E40();
    LOBYTE(v65) = v38;
    BYTE1(v65) = v25;
    v69 = 0;
    sub_242DDCE00(v43, v44, v45);
    v46 = v53;
    v47 = v61;
    sub_242F05F20();
    if (!v47)
    {
      LOBYTE(v65) = 1;
      sub_242F05F20();
    }

    (*(v51 + 8))(v41, v46);
    (*(v23 + 8))(v63, v39);
    return (*(v60 + 8))(v22, v42);
  }
}

uint64_t OverrideRule.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v10, v12, a2, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = v10[1];
  v15 = *(v4 + 32);
  v16 = *v10;
  if (EnumCaseMultiPayload == 1)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v15(v6, &v10[*(TupleTypeMetadata2 + 48)], v3);
    MEMORY[0x245D279A0](1);
    MEMORY[0x245D279A0](2 * v16);
    v20[15] = v14;
  }

  else
  {
    v18 = swift_getTupleTypeMetadata2();
    v15(v6, &v10[*(v18 + 48)], v3);
    MEMORY[0x245D279A0](0);
    MEMORY[0x245D279A0](v16);
    v20[14] = v14;
  }

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  sub_242F04D90();
  return (*(v4 + 8))(v6, v3);
}

uint64_t OverrideRule.hashValue.getter(uint64_t a1)
{
  sub_242F06390();
  OverrideRule.hash(into:)(v3, a1);
  return sub_242F063E0();
}

uint64_t OverrideRule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v81 = a1;
  v59 = a6;
  *&v79 = a2;
  *(&v79 + 1) = a3;
  *&v80 = a4;
  *(&v80 + 1) = a5;
  v10 = type metadata accessor for OverrideRule.PortSideIndicatorCodingKeys(255, &v79);
  WitnessTable = swift_getWitnessTable();
  v67 = v10;
  v63 = sub_242F05E20();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v73 = &v55 - v11;
  *&v79 = a2;
  *(&v79 + 1) = a3;
  *&v80 = a4;
  *(&v80 + 1) = a5;
  v12 = type metadata accessor for OverrideRule.DriverSideCodingKeys(255, &v79);
  v13 = swift_getWitnessTable();
  v65 = v12;
  v64 = v13;
  v61 = sub_242F05E20();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v68 = &v55 - v14;
  *&v79 = a2;
  *(&v79 + 1) = a3;
  *&v80 = a4;
  *(&v80 + 1) = a5;
  type metadata accessor for OverrideRule.CodingKeys(255, &v79);
  v75 = swift_getWitnessTable();
  v72 = sub_242F05E20();
  v74 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v16 = &v55 - v15;
  v69 = a3;
  v70 = a2;
  *&v79 = a2;
  *(&v79 + 1) = a3;
  *&v80 = a4;
  *(&v80 + 1) = a5;
  v17 = type metadata accessor for OverrideRule(0, &v79);
  v58 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v55 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v55 - v24;
  __swift_project_boxed_opaque_existential_2Tm(v81, v81[3]);
  v71 = v16;
  v26 = v76;
  sub_242F06480();
  if (!v26)
  {
    v57 = v19;
    v75 = v22;
    v27 = v73;
    v56 = v25;
    v76 = v17;
    v29 = v71;
    v28 = v72;
    *&v77 = sub_242F05E10();
    sub_242F053E0();
    swift_getWitnessTable();
    *&v79 = sub_242F05910();
    *(&v79 + 1) = v30;
    *&v80 = v31;
    *(&v80 + 1) = v32;
    sub_242F05900();
    swift_getWitnessTable();
    sub_242F055C0();
    v33 = v77;
    if (v77 == 2 || (v55 = v79, v77 = v79, v78 = v80, (sub_242F05610() & 1) == 0))
    {
      v40 = sub_242F05B10();
      swift_allocError();
      v42 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10, &qword_242F095A0);
      *v42 = v76;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
      swift_willThrow();
      (*(v74 + 8))(v29, v28);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v33)
      {
        LOBYTE(v77) = 1;
        v34 = v27;
        v35 = sub_242F05D10();
        LOBYTE(v77) = 0;
        sub_242DDCE54(v35, v36, v37);
        v38 = v63;
        sub_242F05E00();
        v39 = v74;
        swift_getTupleTypeMetadata2();
        LOBYTE(v77) = 1;
        sub_242F05E00();
        (*(v62 + 8))(v34, v38);
        (*(v39 + 8))(v29, v28);
        swift_unknownObjectRelease();
        v50 = v57;
      }

      else
      {
        LOBYTE(v77) = 0;
        v43 = v68;
        v44 = sub_242F05D10();
        LOBYTE(v77) = 0;
        sub_242DDCEA8(v44, v45, v46);
        v47 = v61;
        sub_242F05E00();
        v48 = v74;
        swift_getTupleTypeMetadata2();
        LOBYTE(v77) = 1;
        sub_242F05E00();
        (*(v60 + 8))(v43, v47);
        (*(v48 + 8))(v29, v28);
        swift_unknownObjectRelease();
        v50 = v75;
      }

      v51 = v76;
      swift_storeEnumTagMultiPayload();
      v52 = v50;
      v53 = *(v58 + 32);
      v54 = v56;
      v53(v56, v52, v51);
      v53(v59, v54, v51);
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v81);
}

uint64_t sub_242DDB204(uint64_t a1, uint64_t a2)
{
  sub_242F06390();
  OverrideRule.hash(into:)(v4, a2);
  return sub_242F063E0();
}

uint64_t static OverrideComputedRule.driverSide(rule:transform:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v15 = *a1;
  v16 = a1[1];
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = a6;
  *(v17 + 40) = a7;
  *(v17 + 48) = v15;
  *(v17 + 49) = v16;
  *(v17 + 56) = a2;
  *(v17 + 64) = a3;
  *a8 = sub_242DDCEFC;
  a8[1] = v17;
}

double sub_242DDB35C@<D0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>)
{
  v13 = a2;
  v16 = a2 >> 8;
  swift_getTupleTypeMetadata2();
  *a8 = v13 & 1;
  a8[1] = v16;
  a3(a1);
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  type metadata accessor for OverrideRule(0, v18);
  swift_storeEnumTagMultiPayload();
  return result;
}

uint64_t static OverrideComputedRule.portSideIndicator(rule:transform:)@<X0>(__int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v15 = *a1;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 32) = a6;
  *(v16 + 40) = a7;
  *(v16 + 48) = v15;
  *(v16 + 56) = a2;
  *(v16 + 64) = a3;
  *a8 = sub_242DDCF18;
  a8[1] = v16;
}

double sub_242DDB4CC@<D0>(uint64_t a1@<X0>, __int16 a2@<W1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _WORD *a8@<X8>)
{
  swift_getTupleTypeMetadata2();
  *a8 = a2;
  a3(a1);
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  type metadata accessor for OverrideRule(0, v17);
  swift_storeEnumTagMultiPayload();
  return result;
}

uint64_t sub_242DDB590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_242DDDCF0(&qword_27ECF70A8, &qword_27ECF70B0, &qword_242F31E00, sub_242DDD1DC);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_242DDB620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_242DDDCF0(&qword_27ECF70B8, &qword_27ECF70C0, &qword_242F31E08, sub_242DDD28C);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void *EnvironmentValues.driverSide.getter(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_242DDB6F8(x0_0, a2, a3);

  return sub_242F04010();
}

unint64_t sub_242DDB6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6D58;
  if (!qword_27ECF6D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6D58);
  }

  return result;
}

uint64_t (*EnvironmentValues.driverSide.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  *a1 = v3;
  a1[1] = sub_242DDB6F8(a1, a2, a3);
  sub_242F04010();
  return sub_242DDB7CC;
}

void *EnvironmentValues.portSideIndicator.getter(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_242DDB924(x0_0, a2, a3);

  return sub_242F04010();
}

uint64_t (*EnvironmentValues.portSideIndicator.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  *a1 = v3;
  a1[1] = sub_242DDB924(a1, a2, a3);
  sub_242F04010();
  return sub_242DDB8EC;
}

CarPlayAssetUI::DriverSideRule::DriverSide_optional __swiftcall DriverSideRule.DriverSide.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_242DDB924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6D60;
  if (!qword_27ECF6D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6D60);
  }

  return result;
}

CarPlayAssetUI::DriverSideRule __swiftcall DriverSideRule.init(side:)(CarPlayAssetUI::DriverSideRule::DriverSide side)
{
  *v1 = *side;
  v1[1] = 19;
  result.side = side;
  return result;
}

void *sub_242DDBAB4@<X0>(void *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, _BYTE *a5@<X8>)
{
  if (*result != -1)
  {
    v6 = a2;
    v7 = a3;
    v8 = a5;
    result = swift_once();
    a2 = v6;
    a5 = v8;
    a3 = v7;
  }

  v5 = *a3;
  *a5 = *a2;
  a5[1] = v5;
  return result;
}

uint64_t sub_242DDBB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DDCF2C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DDBB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DDCF2C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DriverSideRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6D88, &qword_242F31228);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = *v1;
  v20 = v1[1];
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DDCF2C(v9, v10, v11);
  v12 = sub_242F064C0();
  v24 = v8;
  v23 = 0;
  sub_242DDCF80(v12, v13, v14);
  v15 = sub_242F05F20();
  if (!v2)
  {
    v22 = v20;
    v21 = 1;
    sub_242C8AC28(v15, v16, v17);
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

double DriverSideRule.hash(into:)(uint64_t a1)
{
  MEMORY[0x245D279A0](*v1);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return result;
}

uint64_t DriverSideRule.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](v1);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t DriverSideRule.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6DA0, &qword_242F31230);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DDCF2C(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    v24 = 0;
    sub_242DDCFD4(v12, v13, v14);
    v15 = sub_242F05E00();
    v16 = v25;
    v22 = 1;
    sub_242C8AC7C(v15, v17, v18);
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v20 = v23;
    *a2 = v16;
    a2[1] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242DDC000()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](v1);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

double sub_242DDC080(uint64_t a1)
{
  MEMORY[0x245D279A0](*v1);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return result;
}

uint64_t sub_242DDC0F8(uint64_t a1)
{
  v2 = *v1;
  sub_242F06390();
  MEMORY[0x245D279A0](v2);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

CarPlayAssetUI::PortSideIndicatorRule::PortSide_optional __swiftcall PortSideIndicatorRule.PortSide.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 8)
  {
    *v1 = 5;
  }

  else
  {
    *v1 = byte_242F31E12[rawValue];
  }

  return rawValue;
}

uint64_t sub_242DDC1D8()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](2 * v1);
  return sub_242F063E0();
}

uint64_t sub_242DDC250(uint64_t a1)
{
  v2 = *v1;
  sub_242F06390();
  MEMORY[0x245D279A0](2 * v2);
  return sub_242F063E0();
}

CarPlayAssetUI::PortSideIndicatorRule __swiftcall PortSideIndicatorRule.init(side:dataIdentifier:)(CarPlayAssetUI::PortSideIndicatorRule::PortSide side, CarPlayAssetUI::InstrumentDataIdentifier dataIdentifier)
{
  v3 = *dataIdentifier;
  *v2 = *side;
  v2[1] = v3;
  result.side = side;
  return result;
}

void sub_242DDC388(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701079411 && a2 == 0xE400000000000000;
  if (v5 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

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

uint64_t sub_242DDC46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DDD028(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DDC4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DDD028(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t PortSideIndicatorRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6DB0, &qword_242F31238);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = *v1;
  v20 = v1[1];
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DDD028(v9, v10, v11);
  v12 = sub_242F064C0();
  v24 = v8;
  v23 = 0;
  sub_242DDD07C(v12, v13, v14);
  v15 = sub_242F05F20();
  if (!v2)
  {
    v22 = v20;
    v21 = 1;
    sub_242C8AC28(v15, v16, v17);
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

double PortSideIndicatorRule.hash(into:)(uint64_t a1)
{
  MEMORY[0x245D279A0](2 * *v1);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return result;
}

uint64_t PortSideIndicatorRule.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](2 * v1);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t PortSideIndicatorRule.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6DC8, &qword_242F31240);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DDD028(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    v24 = 0;
    sub_242DDD0D0(v12, v13, v14);
    v15 = sub_242F05E00();
    v16 = v25;
    v22 = 1;
    sub_242C8AC7C(v15, v17, v18);
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v19 = v23;
    *a2 = v16;
    a2[1] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242DDC954()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](2 * v1);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

double sub_242DDC9D4(uint64_t a1)
{
  MEMORY[0x245D279A0](2 * *v1);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return result;
}

uint64_t sub_242DDCA50(uint64_t a1)
{
  v2 = *v1;
  sub_242F06390();
  MEMORY[0x245D279A0](2 * v2);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

double (*mirrored(in:)(double a1, double a2, double a3, double a4))(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  return sub_242DDD124;
}

double sub_242DDCB64(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v16.origin.x = a5;
  v16.origin.y = a6;
  v16.size.width = a7;
  v16.size.height = a8;
  Width = CGRectGetWidth(v16);
  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  v13 = Width - CGRectGetMinX(v17);
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  v14 = v13 - CGRectGetWidth(v18);
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  CGRectGetMinY(v19);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  CGRectGetWidth(v20);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  CGRectGetHeight(v21);
  return v14;
}

double (*fixed(_:)(double a1, double a2, double a3, double a4))()
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  return sub_242DDD130;
}

uint64_t _s14CarPlayAssetUI21PortSideIndicatorRuleV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = InstrumentDataIdentifier.rawValue.getter();
    v4 = v3;
    if (v2 == InstrumentDataIdentifier.rawValue.getter() && v4 == v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_242F06110();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_242DDCDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6D68;
  if (!qword_27ECF6D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6D68);
  }

  return result;
}

unint64_t sub_242DDCE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6D70;
  if (!qword_27ECF6D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6D70);
  }

  return result;
}

unint64_t sub_242DDCE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6D78;
  if (!qword_27ECF6D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6D78);
  }

  return result;
}

unint64_t sub_242DDCEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6D80;
  if (!qword_27ECF6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6D80);
  }

  return result;
}

unint64_t sub_242DDCF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6D90;
  if (!qword_27ECF6D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6D90);
  }

  return result;
}

unint64_t sub_242DDCF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6D98;
  if (!qword_27ECF6D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6D98);
  }

  return result;
}

unint64_t sub_242DDCFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6DA8;
  if (!qword_27ECF6DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6DA8);
  }

  return result;
}

unint64_t sub_242DDD028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6DB8;
  if (!qword_27ECF6DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6DB8);
  }

  return result;
}

unint64_t sub_242DDD07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6DC0;
  if (!qword_27ECF6DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6DC0);
  }

  return result;
}

unint64_t sub_242DDD0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6DD0;
  if (!qword_27ECF6DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6DD0);
  }

  return result;
}

uint64_t sub_242DDD13C(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

unint64_t sub_242DDD1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6DD8;
  if (!qword_27ECF6DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6DD8);
  }

  return result;
}

unint64_t sub_242DDD234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6DE0;
  if (!qword_27ECF6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6DE0);
  }

  return result;
}

unint64_t sub_242DDD28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6DE8;
  if (!qword_27ECF6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6DE8);
  }

  return result;
}

unint64_t sub_242DDD2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6DF0[0];
  if (!qword_27ECF6DF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ECF6DF0);
  }

  return result;
}

void *keypath_getTm@<X0>(uint64_t (*a1)(void)@<X3>, _BYTE *a3@<X8>)
{
  a1();
  result = sub_242F04010();
  *a3 = v5;
  return result;
}

uint64_t sub_242DDD3E4(uint64_t a1)
{
  result = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    result = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_242DDD48C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  if (!a2)
  {
    return 0;
  }

  v6 = ((v4 + 2) & ~v4) + v5;
  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 254) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v11 < 2)
    {
LABEL_23:
      v13 = *(a1 + v6);
      if (v13 >= 2)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_23;
  }

LABEL_12:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 255;
}

void sub_242DDD5D0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 80) + 2) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_242DDD7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for PortSideIndicatorRule(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for PortSideIndicatorRule(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242DDDA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7078;
  if (!qword_27ECF7078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7078);
  }

  return result;
}

unint64_t sub_242DDDA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7080;
  if (!qword_27ECF7080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7080);
  }

  return result;
}

unint64_t sub_242DDDAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7088;
  if (!qword_27ECF7088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7088);
  }

  return result;
}

unint64_t sub_242DDDB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7090;
  if (!qword_27ECF7090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7090);
  }

  return result;
}

unint64_t sub_242DDDB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7098;
  if (!qword_27ECF7098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7098);
  }

  return result;
}

unint64_t sub_242DDDBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF70A0;
  if (!qword_27ECF70A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF70A0);
  }

  return result;
}

uint64_t sub_242DDDCF0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242DDDD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF70C8;
  if (!qword_27ECF70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF70C8);
  }

  return result;
}

unint64_t sub_242DDDDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF70D0;
  if (!qword_27ECF70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF70D0);
  }

  return result;
}

uint64_t static DotMarkerConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_242C75C94(*a1, *a2) & (v2 == v3);
}

uint64_t sub_242DDDE84()
{
  v1 = 1801677172;
  if (*v0 != 1)
  {
    v1 = 0x6C6562616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7630692;
  }
}

uint64_t sub_242DDDECC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242DE6934(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242DDDEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE3ED4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DDDF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE3ED4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242DDDF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE4078(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DDDFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE4078(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242DDDFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE3F28(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DDE020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE3F28(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242DDE05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE3FD0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DDE098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE3FD0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DigiBarMarkerType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF70D8, &qword_242F31E20);
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v42 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF70E0, &qword_242F31E28);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v42 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF70E8, &qword_242F31E30);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF70F0, &qword_242F31E38);
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  v59 = *v1;
  v60 = v1[1];
  v11 = v1[3];
  v61 = v1[2];
  LODWORD(v9) = *(v1 + 16);
  v56 = v11;
  v57 = v9;
  v12 = *(v1 + 23);
  v13 = *(v1 + 21);
  v43 = *(v1 + 17);
  v14 = *(v1 + 4);
  v58 = *(v1 + 3);
  v46 = *(v1 + 14);
  v47 = *(v1 + 10);
  v15 = *(v1 + 10);
  v45 = *(v1 + 9);
  v44 = v15;
  v16 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DE3ED4(v16, v17, v18);
  v19 = sub_242F064C0();
  if (v14 >> 62)
  {
    if (v14 >> 62 == 1)
    {
      LOBYTE(v64) = 1;
      sub_242DE3FD0(v19, v20, v21);
      v22 = v50;
      v23 = v63;
      v24 = sub_242F05E40();
      v64 = __PAIR64__(v60, v59);
      LOBYTE(v65) = v61;
      v66 = v56;
      v67 = v57 & 1;
      v71 = v58;
      sub_242DE4024(v24, v25, v26);
      v27 = v52;
      sub_242F05F20();
      (*(v51 + 8))(v22, v27);
      return (*(v62 + 8))(v10, v23);
    }

    else
    {
      v35 = v43 | ((v13 | (v12 << 16)) << 32);
      LOBYTE(v64) = 2;
      sub_242DE3F28(v19, v20, v21);
      v36 = v53;
      v37 = v63;
      v38 = sub_242F05E40();
      v64 = __PAIR64__(v60, v59);
      v65 = v61;
      v66 = v56;
      v67 = v57;
      v70 = BYTE6(v35);
      v69 = WORD2(v35);
      v68 = v35;
      v71 = v58;
      v72 = v14 & 0x3FFFFFFFFFFFFFFFLL;
      v74 = v46;
      v73 = v47;
      v75 = v45;
      v76 = v44;
      sub_242DE3F7C(v38, v39, v40);
      v41 = v55;
      sub_242F05F20();
      (*(v54 + 8))(v36, v41);
      return (*(v62 + 8))(v10, v37);
    }
  }

  else
  {
    v29 = v59 | (v60 << 32);
    LOBYTE(v64) = 0;
    sub_242DE4078(v19, v20, v21);
    v30 = v63;
    v31 = sub_242F05E40();
    v64 = v29;
    v65 = v61;
    sub_242DE40CC(v31, v32, v33);
    v34 = v49;
    sub_242F05F20();
    (*(v48 + 8))(v7, v34);
    return (*(v62 + 8))(v10, v30);
  }
}

void DigiBarMarkerType.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 4) >> 62;
  if (v5)
  {
    if (v5 == 1)
    {
      MEMORY[0x245D279A0](1);
      TickMarkerConfiguration.hash(into:)(a1);
    }

    else
    {
      MEMORY[0x245D279A0](2);
      LabelMarkerConfiguration.hash(into:)(a1);
    }
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242C79698(a1, v4 | (v3 << 32));
    sub_242F063C0();
  }
}

uint64_t DigiBarMarkerType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7130, &qword_242F31E40);
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v63 = &v56 - v3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7138, &qword_242F31E48);
  v59 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v5 = &v56 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7140, &qword_242F31E50);
  v57 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v56 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7148, &unk_242F31E58);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - v11;
  v13 = a1[3];
  v65 = a1;
  v14 = __swift_project_boxed_opaque_existential_2Tm(a1, v13);
  sub_242DE3ED4(v14, v15, v16);
  v17 = v64;
  sub_242F06480();
  if (!v17)
  {
    v56 = 0;
    v19 = v62;
    v18 = v63;
    v64 = v10;
    v20 = sub_242F05E10();
    v21 = (2 * *(v20 + 16)) | 1;
    v76 = v20;
    v77 = v20 + 32;
    v78 = 0;
    v79 = v21;
    v22 = sub_242C7FBE8();
    if (v22 == 3 || v78 != v79 >> 1)
    {
      v30 = sub_242F05B10();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10, &qword_242F095A0);
      *v32 = &type metadata for DigiBarMarkerType;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
      swift_willThrow();
      (*(v64 + 8))(v12, v9);
    }

    else
    {
      if (v22)
      {
        if (v22 != 1)
        {
          LOBYTE(v66) = 2;
          sub_242DE3F28(v22, v23, v24);
          v38 = v56;
          v39 = sub_242F05D10();
          v55 = v61;
          v42 = v64;
          if (!v38)
          {
            sub_242DE4120(v39, v40, v41);
            v43 = v58;
            sub_242F05E00();
            (*(v60 + 8))(v18, v43);
            (*(v42 + 8))(v12, v9);
            swift_unknownObjectRelease();
            v48 = v66;
            v49 = v67;
            v50 = v68;
            v51 = v69;
            v52 = v70;
            v53 = v71;
            v44 = v73;
            v45 = v74;
            v46 = v75;
            v54 = v72 & 0x101 | 0x8000000000000000;
            v47 = v70 & 0xFFFFFFFFFFFFFF00;
            goto LABEL_18;
          }

          (*(v64 + 8))(v12, v9);
          goto LABEL_9;
        }

        LOBYTE(v66) = 1;
        sub_242DE3FD0(v22, v23, v24);
        v25 = v56;
        v26 = sub_242F05D10();
        v29 = v64;
        if (!v25)
        {
          sub_242DE4174(v26, v27, v28);
          sub_242F05E00();
          (*(v59 + 8))(v5, v19);
          (*(v29 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v47 = 0;
          v48 = v66;
          v49 = v67;
          v50 = v68;
          v51 = v69;
          v52 = v70;
          v53 = v71;
          v80 = v70;
          v54 = 0x4000000000000000;
          v55 = v61;
LABEL_18:
          *v55 = v48 | (v49 << 32);
          *(v55 + 8) = v50 | (v51 << 32);
          *(v55 + 16) = v47 | v52;
          *(v55 + 24) = v53;
          *(v55 + 32) = v54;
          *(v55 + 40) = v44;
          *(v55 + 56) = v45;
          *(v55 + 72) = v46;
          return __swift_destroy_boxed_opaque_existential_2Tm(v65);
        }
      }

      else
      {
        LOBYTE(v66) = 0;
        sub_242DE4078(v22, v23, v24);
        v34 = v56;
        v35 = sub_242F05D10();
        if (!v34)
        {
          sub_242DE41C8(v35, v36, v37);
          sub_242F05E00();
          (*(v57 + 8))(v8, v6);
          (*(v64 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v54 = 0;
          v47 = 0;
          v48 = v66;
          v49 = v67;
          v50 = v68;
          v55 = v61;
          goto LABEL_18;
        }

        v29 = v64;
      }

      (*(v29 + 8))(v12, v9);
    }

LABEL_9:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v65);
}

uint64_t sub_242DDEF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE4440(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DDEFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE4440(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242DDF020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE4494(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DDF05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE4494(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242DDF098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE44E8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DDF0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE44E8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DotMarkerConfiguration.Style.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7168, &qword_242F31E68);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7170, &qword_242F31E70);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7178, &qword_242F31E78);
  v9 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v11 = &v27 - v10;
  v12 = *v1;
  v29 = v1[1];
  v30 = v12;
  v13 = *(v1 + 16);
  v14 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DE4440(v14, v15, v16);
  v17 = sub_242F064C0();
  if (v13 == 255)
  {
    LOBYTE(v34) = 0;
    sub_242DE44E8(v17, v18, v19);
    v26 = v33;
    sub_242F05E40();
    (*(v27 + 8))(v8, v28);
    return (*(v9 + 8))(v11, v26);
  }

  else
  {
    LOBYTE(v34) = 1;
    sub_242DE4494(v17, v18, v19);
    v20 = v33;
    v21 = sub_242F05E40();
    v34 = v30;
    v35 = v29;
    v36 = v13;
    sub_242C7DEA0(v21, v22, v23);
    v24 = v32;
    sub_242F05F20();
    (*(v31 + 8))(v5, v24);
    return (*(v9 + 8))(v11, v20);
  }
}

uint64_t DotMarkerConfiguration.Style.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7198, &qword_242F31E80);
  v4 = *(v3 - 8);
  v42 = v3;
  v43 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF71A0, &qword_242F31E88);
  v44 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF71A8, &qword_242F31E90);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = a1[3];
  v53 = a1;
  v15 = __swift_project_boxed_opaque_existential_2Tm(a1, v14);
  sub_242DE4440(v15, v16, v17);
  v18 = v46;
  sub_242F06480();
  if (!v18)
  {
    v46 = v11;
    v20 = v44;
    v19 = v45;
    v21 = sub_242F05E10();
    v22 = (2 * *(v21 + 16)) | 1;
    v49 = v21;
    v50 = v21 + 32;
    v51 = 0;
    v52 = v22;
    v23 = sub_242C7FBE4();
    if (v23 == 2 || v51 != v52 >> 1)
    {
      v30 = sub_242F05B10();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10, &qword_242F095A0);
      *v32 = &type metadata for DotMarkerConfiguration.Style;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
      swift_willThrow();
      (*(v46 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v23)
      {
        LOBYTE(v47) = 1;
        sub_242DE4494(v23, v24, v25);
        v26 = v13;
        v27 = v6;
        v28 = sub_242F05D10();
        v29 = v46;
        sub_242C7DFAC(v28, v35, v36);
        v37 = v27;
        v38 = v42;
        sub_242F05E00();
        (*(v43 + 8))(v37, v38);
        (*(v29 + 8))(v26, v10);
        swift_unknownObjectRelease();
        v39 = v47;
        v40 = v48;
      }

      else
      {
        LOBYTE(v47) = 0;
        sub_242DE44E8(v23, v24, v25);
        sub_242F05D10();
        v34 = v46;
        (*(v20 + 8))(v9, v7);
        (*(v34 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v39 = 0uLL;
        v40 = -1;
      }

      *v19 = v39;
      *(v19 + 16) = v40;
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v53);
}

CarPlayAssetUI::DotMarkerConfiguration __swiftcall DotMarkerConfiguration.init(styles:radius:)(Swift::OpaquePointer styles, Swift::Float radius)
{
  *v2 = styles;
  *(v2 + 8) = radius;
  result.styles = styles;
  result.radius = radius;
  return result;
}

uint64_t sub_242DDFA14()
{
  if (*v0)
  {
    return 0x737569646172;
  }

  else
  {
    return 0x73656C797473;
  }
}

void sub_242DDFA40(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73656C797473 && a2 == 0xE600000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

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

uint64_t sub_242DDFB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE453C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DDFB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE453C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DotMarkerConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF71B0, &qword_242F31E98);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-v6];
  v8 = *v1;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DE453C(v9, v10, v11);

  sub_242F064C0();
  v14 = v8;
  v13[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF71C0, &qword_242F31EA0);
  sub_242DE4590();
  sub_242F05F20();

  if (!v2)
  {
    v13[6] = 1;
    sub_242F05EF0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DotMarkerConfiguration.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  sub_242C79698(v3, v1);
  sub_242F063C0();
  return sub_242F063E0();
}

void DotMarkerConfiguration.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF71D8, &qword_242F31EA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-v7];
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DE453C(v9, v10, v11);
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF71C0, &qword_242F31EA0);
    v15[7] = 0;
    sub_242DE4670();
    sub_242F05E00();
    v12 = v16;
    v15[6] = 1;
    sub_242F05DD0();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    *a2 = v12;
    *(a2 + 8) = v14;

    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }
}

uint64_t sub_242DE006C(uint64_t a1)
{
  v2 = *v1;
  sub_242F06390();
  sub_242C79698(v4, v2);
  sub_242F063C0();
  return sub_242F063E0();
}

uint64_t sub_242DE00D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_242C75C94(*a1, *a2) & (v2 == v3);
}

void sub_242DE0164(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1802723693 && a2 == 0xE400000000000000;
  if (v5 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

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

uint64_t sub_242DE023C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE4910(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DE0278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE4910(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_242DE02B4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 17481 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_242DE0334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE4964(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DE0370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE4964(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242DE03AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE49B8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DE03E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE49B8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t TickMarkerConfiguration.Style.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF71F0, &qword_242F31EB0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF71F8, &qword_242F31EB8);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7200, &qword_242F31EC0);
  v9 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v11 = &v27 - v10;
  v12 = *v1;
  v29 = v1[1];
  v30 = v12;
  v13 = *(v1 + 16);
  v14 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DE4910(v14, v15, v16);
  v17 = sub_242F064C0();
  if (v13 == 255)
  {
    LOBYTE(v34) = 0;
    sub_242DE49B8(v17, v18, v19);
    v26 = v33;
    sub_242F05E40();
    (*(v27 + 8))(v8, v28);
    return (*(v9 + 8))(v11, v26);
  }

  else
  {
    LOBYTE(v34) = 1;
    sub_242DE4964(v17, v18, v19);
    v20 = v33;
    v21 = sub_242F05E40();
    v34 = v30;
    v35 = v29;
    v36 = v13;
    sub_242C7DEA0(v21, v22, v23);
    v24 = v32;
    sub_242F05F20();
    (*(v31 + 8))(v5, v24);
    return (*(v9 + 8))(v11, v20);
  }
}

void _s14CarPlayAssetUI22DotMarkerConfigurationV5StyleO4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  if (*(v1 + 16) == 255)
  {
    MEMORY[0x245D279A0](0);
  }

  else
  {
    MEMORY[0x245D279A0](1);
    Theme.ColorID.rawValue.getter();
    sub_242F04DD0();
  }
}

uint64_t _s14CarPlayAssetUI22DotMarkerConfigurationV5StyleO9hashValueSivg_0()
{
  v1 = *(v0 + 16);
  sub_242F06390();
  if (v1 == 255)
  {
    MEMORY[0x245D279A0](0);
  }

  else
  {
    MEMORY[0x245D279A0](1);
    Theme.ColorID.rawValue.getter();
    sub_242F04DD0();
  }

  return sub_242F063E0();
}

uint64_t TickMarkerConfiguration.Style.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7220, &qword_242F31EC8);
  v4 = *(v3 - 8);
  v42 = v3;
  v43 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7228, &qword_242F31ED0);
  v44 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7230, &qword_242F31ED8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = a1[3];
  v53 = a1;
  v15 = __swift_project_boxed_opaque_existential_2Tm(a1, v14);
  sub_242DE4910(v15, v16, v17);
  v18 = v46;
  sub_242F06480();
  if (!v18)
  {
    v46 = v11;
    v20 = v44;
    v19 = v45;
    v21 = sub_242F05E10();
    v22 = (2 * *(v21 + 16)) | 1;
    v49 = v21;
    v50 = v21 + 32;
    v51 = 0;
    v52 = v22;
    v23 = sub_242C7FBE4();
    if (v23 == 2 || v51 != v52 >> 1)
    {
      v30 = sub_242F05B10();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10, &qword_242F095A0);
      *v32 = &type metadata for TickMarkerConfiguration.Style;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
      swift_willThrow();
      (*(v46 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v23)
      {
        LOBYTE(v47) = 1;
        sub_242DE4964(v23, v24, v25);
        v26 = v13;
        v27 = v6;
        v28 = sub_242F05D10();
        v29 = v46;
        sub_242C7DFAC(v28, v35, v36);
        v37 = v27;
        v38 = v42;
        sub_242F05E00();
        (*(v43 + 8))(v37, v38);
        (*(v29 + 8))(v26, v10);
        swift_unknownObjectRelease();
        v39 = v47;
        v40 = v48;
      }

      else
      {
        LOBYTE(v47) = 0;
        sub_242DE49B8(v23, v24, v25);
        sub_242F05D10();
        v34 = v46;
        (*(v20 + 8))(v9, v7);
        (*(v34 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v39 = 0uLL;
        v40 = -1;
      }

      *v19 = v39;
      *(v19 + 16) = v40;
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v53);
}

uint64_t sub_242DE0D98(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_242F06390();
  if (v2 == 255)
  {
    MEMORY[0x245D279A0](0);
  }

  else
  {
    MEMORY[0x245D279A0](1);
    Theme.ColorID.rawValue.getter();
    sub_242F04DD0();
  }

  return sub_242F063E0();
}

uint64_t TickMarkerConfiguration.cornerRadius.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result) & 1;
  return result;
}

void __swiftcall TickMarkerConfiguration.init(width:length:lineCap:styles:cornerRadius:)(CarPlayAssetUI::TickMarkerConfiguration *__return_ptr retstr, Swift::Float width, Swift::Float length, CarPlayAssetUI::LineCap lineCap, Swift::OpaquePointer styles, Swift::Float_optional *cornerRadius)
{
  v6 = *lineCap;
  retstr->width = width;
  retstr->length = length;
  retstr->lineCap = v6;
  *&retstr[1].width = styles;
  *(&retstr->cornerRadius.value + 3) = cornerRadius;
  LOBYTE(retstr->styles._rawValue) = BYTE4(cornerRadius) & 1;
}

uint64_t sub_242DE0F88()
{
  v1 = *v0;
  v2 = 0x6874646977;
  v3 = 0x706143656E696CLL;
  v4 = 0x615272656E726F63;
  if (v1 != 3)
  {
    v4 = 0x73656C797473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6874676E656CLL;
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

uint64_t sub_242DE1020@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242DE6A48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242DE1048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE4A0C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DE1084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE4A0C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t TickMarkerConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7238, &qword_242F31EE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v20 = *(v1 + 8);
  v19 = *(v1 + 12);
  HIDWORD(v18) = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DE4A0C(v9, v10, v11);
  sub_242F064C0();
  v28 = 0;
  sub_242F05EF0();
  if (!v2)
  {
    v13 = v20;
    v14 = BYTE4(v18);
    v27 = 1;
    v15 = sub_242F05EF0();
    v26 = v13;
    v25 = 2;
    sub_242CD0B40(v15, v16, v17);
    sub_242F05F20();
    v24 = 3;
    v22 = v14;
    sub_242F05E80();
    v21 = v8;
    v23 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7248, &qword_242F31EE8);
    sub_242DE4A60();
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t TickMarkerConfiguration.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  sub_242F063C0();
  sub_242F063C0();
  MEMORY[0x245D279A0](v4);
  sub_242F063B0();
  if (v5 != 1)
  {
    sub_242F063C0();
  }

  return sub_242C79698(a1, v6);
}

uint64_t TickMarkerConfiguration.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 3);
  v3 = *(v0 + 16);
  v4 = v0[3];
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_242F06390();
  TickMarkerConfiguration.hash(into:)(v6);
  return sub_242F063E0();
}

void TickMarkerConfiguration.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7260, &qword_242F31EF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DE4A0C(v9, v10, v11);
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    v28 = 0;
    sub_242F05DD0();
    v13 = v12;
    v27 = 1;
    v14 = sub_242F05DD0();
    v16 = v15;
    v25 = 2;
    sub_242CD0A98(v14, v17, v18);
    sub_242F05E00();
    v19 = v26;
    v24 = 3;
    v20 = sub_242F05D60();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7248, &qword_242F31EE8);
    v23 = 4;
    sub_242DE4B40();
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v21 = v22[1];
    *a2 = v13;
    *(a2 + 4) = v16;
    *(a2 + 8) = v19;
    *(a2 + 12) = v20;
    *(a2 + 16) = BYTE4(v20) & 1;
    *(a2 + 24) = v21;

    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }
}

uint64_t sub_242DE1734()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 3);
  v3 = *(v0 + 16);
  v4 = v0[3];
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_242F06390();
  TickMarkerConfiguration.hash(into:)(v6);
  return sub_242F063E0();
}

uint64_t sub_242DE17A4(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 3);
  v4 = *(v1 + 16);
  v5 = v1[3];
  v8 = *v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  sub_242F06390();
  TickMarkerConfiguration.hash(into:)(v7);
  return sub_242F063E0();
}

uint64_t LabelMarkerConfiguration.font.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v2;
  v8 = *(v1 + 32);
  v3 = v8;
  v9 = *(v1 + 48);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_242C94884(v7, v6);
}

__n128 LabelMarkerConfiguration.font.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  sub_242C954DC(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 48) = *(a1 + 48);
  return result;
}

uint64_t LabelMarkerConfiguration.init(font:textColorIDs:backgroundColorIDs:desiredLabelWidths:desiredLabelHeight:cornerRadius:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, float a6@<S0>, float a7@<S1>)
{
  v7 = *(result + 16);
  *a5 = *result;
  *(a5 + 16) = v7;
  *(a5 + 32) = *(result + 32);
  *(a5 + 48) = *(result + 48);
  *(a5 + 56) = a2;
  *(a5 + 64) = a3;
  *(a5 + 72) = a4;
  *(a5 + 80) = a6;
  *(a5 + 84) = a7;
  return result;
}

unint64_t sub_242DE1A64()
{
  v1 = *v0;
  v2 = 1953394534;
  v3 = 0xD000000000000012;
  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 0x615272656E726F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F6C6F4374786574;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
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

uint64_t sub_242DE1B34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242DE6BF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242DE1B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE4C20(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DE1B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE4C20(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t LabelMarkerConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7278, &unk_242F31EF8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = v1[1];
  v34 = *v1;
  v35 = v8;
  v36 = v1[2];
  v9 = *(v1 + 6);
  v38 = *(v1 + 7);
  v37 = v9;
  v10 = *(v1 + 9);
  v22 = *(v1 + 8);
  v21 = v10;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  v11 = sub_242C94884(&v34, &v30);
  sub_242DE4C20(v11, v12, v13);
  v14 = sub_242F064C0();
  v30 = v34;
  v31 = v35;
  v32 = v36;
  v15 = v4;
  v33 = v37;
  v29 = 0;
  sub_242C95488(v14, v16, v17);
  sub_242F05F20();
  if (v2)
  {
    v25 = v30;
    v26 = v31;
    v27 = v32;
    v28 = v33;
    sub_242C954DC(&v25);
  }

  else
  {
    v18 = v22;
    v19 = v21;
    v25 = v30;
    v26 = v31;
    v27 = v32;
    v28 = v33;
    sub_242C954DC(&v25);
    v24 = v38;
    v23 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
    sub_242DE4C74();
    sub_242F05F20();
    v24 = v18;
    v23 = 2;
    sub_242F05F20();
    v24 = v19;
    v23 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7288, &qword_242F31F08);
    sub_242DE4D8C(&qword_27ECF7290, MEMORY[0x277D83AA0], MEMORY[0x277D83948]);
    sub_242F05F20();
    LOBYTE(v24) = 4;
    sub_242F05EF0();
    LOBYTE(v24) = 5;
    sub_242F05EF0();
  }

  return (*(v5 + 8))(v7, v15);
}

void LabelMarkerConfiguration.hash(into:)(uint64_t a1)
{
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  RasterFont.hash(into:)(a1);
  sub_242C79508(a1, v3);
  sub_242C79508(a1, v4);
  sub_242C7BB70(a1, v5);
  sub_242F063C0();
  sub_242F063C0();
}

void LabelMarkerConfiguration.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7298, &qword_242F31F10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = a1[3];
  v54 = a1;
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, v9);
  sub_242DE4C20(v10, v11, v12);
  v13 = sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v54);
  }

  else
  {
    v32 = v6;
    v45 = 0;
    sub_242C95584(v13, v14, v15);
    v16 = v5;
    sub_242F05E00();
    v50 = v46;
    v51 = v47;
    v52 = v48;
    v53 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
    LOBYTE(v33[0]) = 1;
    sub_242DE4D00();
    sub_242F05E00();
    v17 = *&v37[0];
    LOBYTE(v33[0]) = 2;
    sub_242F05E00();
    v31 = *&v37[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7288, &qword_242F31F08);
    LOBYTE(v33[0]) = 3;
    sub_242DE4D8C(&qword_27ECF72A0, MEMORY[0x277D83AC8], MEMORY[0x277D83978]);
    sub_242F05E00();
    v18 = v32;
    v30 = *&v37[0];
    LOBYTE(v37[0]) = 4;
    sub_242F05DD0();
    v20 = v19;
    v44 = 5;
    sub_242F05DD0();
    v22 = v21;
    (*(v18 + 8))(v8, v16);
    v23 = v51;
    v33[0] = v50;
    v33[1] = v51;
    v24 = v52;
    v33[2] = v52;
    *&v34 = v53;
    *(&v34 + 1) = v17;
    v26 = v30;
    v25 = v31;
    *&v35 = v31;
    *(&v35 + 1) = v30;
    v36 = __PAIR64__(v22, v20);
    *a2 = v50;
    *(a2 + 16) = v23;
    v27 = v34;
    v28 = v35;
    *(a2 + 80) = v36;
    *(a2 + 48) = v27;
    *(a2 + 64) = v28;
    *(a2 + 32) = v24;
    sub_242DE4DF8(v33, v37);
    __swift_destroy_boxed_opaque_existential_2Tm(v54);
    v37[0] = v50;
    v37[1] = v51;
    v37[2] = v52;
    v38 = v53;
    v39 = v17;
    v40 = v25;
    v41 = v26;
    v42 = v20;
    v43 = v22;
    sub_242DE4E30(v37);
  }
}

uint64_t DigiBarSingleMarkerConfiguration.DigiBarMarkerConfiguration.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 64);
  v10 = *(v1 + 48);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 80);
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_242DE4E60(v9, v8);
}

__n128 DigiBarSingleMarkerConfiguration.DigiBarMarkerConfiguration.type.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v3;
  v8[4] = *(v1 + 64);
  v9 = *(v1 + 80);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  sub_242DE4E98(v8);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  return result;
}

__n128 DigiBarSingleMarkerConfiguration.DigiBarMarkerConfiguration.init(type:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  return result;
}

uint64_t static DigiBarSingleMarkerConfiguration.DigiBarMarkerConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v25 = *(a1 + 32);
  v26 = v2;
  v4 = *(a1 + 48);
  v27 = *(a1 + 64);
  v5 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v5;
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  v30 = *(a2 + 32);
  v31 = v6;
  v8 = *(a2 + 48);
  v32 = *(a2 + 64);
  v9 = *(a2 + 16);
  v29[0] = *a2;
  v29[1] = v9;
  v20 = v25;
  v21 = v4;
  v22 = *(a1 + 64);
  v18 = v24[0];
  v19 = v3;
  v14 = v30;
  v15 = v8;
  v16 = *(a2 + 64);
  v28 = *(a1 + 80);
  v33 = *(a2 + 80);
  v23 = *(a1 + 80);
  v17 = *(a2 + 80);
  v12 = v29[0];
  v13 = v7;
  sub_242DE4E60(v24, v36);
  sub_242DE4E60(v29, v36);
  v10 = _s14CarPlayAssetUI17DigiBarMarkerTypeO2eeoiySbAC_ACtFZ_0(&v18, &v12);
  v34[2] = v14;
  v34[3] = v15;
  v34[4] = v16;
  v35 = v17;
  v34[0] = v12;
  v34[1] = v13;
  sub_242DE4EC8(v34);
  v36[2] = v20;
  v36[3] = v21;
  v36[4] = v22;
  v37 = v23;
  v36[0] = v18;
  v36[1] = v19;
  sub_242DE4EC8(v36);
  return v10 & 1;
}

uint64_t sub_242DE2794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE4EF8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DE27D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE4EF8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DigiBarSingleMarkerConfiguration.DigiBarMarkerConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF72A8, &qword_242F31F18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - v5;
  v7 = v1[3];
  v26 = v1[2];
  v27 = v7;
  v28 = v1[4];
  v29 = *(v1 + 10);
  v8 = v1[1];
  v24 = *v1;
  v25 = v8;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  v9 = sub_242DE4E60(&v24, &v18);
  sub_242DE4EF8(v9, v10, v11);
  v12 = sub_242F064C0();
  v20 = v26;
  v21 = v27;
  v22 = v28;
  v23 = v29;
  v18 = v24;
  v19 = v25;
  sub_242DE4F4C(v12, v13, v14);
  sub_242F05F20();
  v16[2] = v20;
  v16[3] = v21;
  v16[4] = v22;
  v17 = v23;
  v16[0] = v18;
  v16[1] = v19;
  sub_242DE4EC8(v16);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_242DE29D4(uint64_t (*a1)(void *))
{
  sub_242F06390();
  a1(v3);
  return sub_242F063E0();
}

uint64_t DigiBarSingleMarkerConfiguration.DigiBarMarkerConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF72C0, &qword_242F31F20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-v7];
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DE4EF8(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    sub_242DE4FA0(v12, v13, v14);
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v15 = v21;
    *(a2 + 32) = v20;
    *(a2 + 48) = v15;
    *(a2 + 64) = v22;
    *(a2 + 80) = v23;
    v16 = v19;
    *a2 = *&v18[8];
    *(a2 + 16) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242DE2BDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_242F06390();
  a3(v5);
  return sub_242F063E0();
}

uint64_t sub_242DE2C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_242F06390();
  a4(v6);
  return sub_242F063E0();
}

uint64_t sub_242DE2C68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v25 = *(a1 + 32);
  v26 = v2;
  v4 = *(a1 + 48);
  v27 = *(a1 + 64);
  v5 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v5;
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  v30 = *(a2 + 32);
  v31 = v6;
  v8 = *(a2 + 48);
  v32 = *(a2 + 64);
  v9 = *(a2 + 16);
  v29[0] = *a2;
  v29[1] = v9;
  v20 = v25;
  v21 = v4;
  v22 = *(a1 + 64);
  v18 = v24[0];
  v19 = v3;
  v14 = v30;
  v15 = v8;
  v16 = *(a2 + 64);
  v28 = *(a1 + 80);
  v33 = *(a2 + 80);
  v23 = *(a1 + 80);
  v17 = *(a2 + 80);
  v12 = v29[0];
  v13 = v7;
  sub_242DE4E60(v24, v36);
  sub_242DE4E60(v29, v36);
  v10 = _s14CarPlayAssetUI17DigiBarMarkerTypeO2eeoiySbAC_ACtFZ_0(&v18, &v12);
  v34[2] = v14;
  v34[3] = v15;
  v34[4] = v16;
  v35 = v17;
  v34[0] = v12;
  v34[1] = v13;
  sub_242DE4EC8(v34);
  v36[2] = v20;
  v36[3] = v21;
  v36[4] = v22;
  v37 = v23;
  v36[0] = v18;
  v36[1] = v19;
  sub_242DE4EC8(v36);
  return v10 & 1;
}

uint64_t DigiBarSingleMarkerConfiguration.style.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 52);
  v9 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 52) = v8;
  *(a1 + 48) = v9;
  return sub_242DE4FF4(v2, v3, v4, v5, v6, v7, v9 | (v8 << 32));
}

__n128 DigiBarSingleMarkerConfiguration.style.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 52);
  sub_242D3CBB8(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48) | (*(v1 + 52) << 32));
  result = *a1;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 52) = v6;
  *(v1 + 48) = v5;
  return result;
}

uint64_t DigiBarSingleMarkerConfiguration.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 120);
  v10 = *(v1 + 104);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 136);
  v6 = *(v1 + 72);
  v9[0] = *(v1 + 56);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_242DE5038(v9, v8);
}

__n128 DigiBarSingleMarkerConfiguration.type.setter(uint64_t a1)
{
  v3 = *(v1 + 104);
  v8[2] = *(v1 + 88);
  v8[3] = v3;
  v8[4] = *(v1 + 120);
  v9 = *(v1 + 136);
  v4 = *(v1 + 72);
  v8[0] = *(v1 + 56);
  v8[1] = v4;
  sub_242DE4E98(v8);
  v5 = *(a1 + 48);
  *(v1 + 88) = *(a1 + 32);
  *(v1 + 104) = v5;
  *(v1 + 120) = *(a1 + 64);
  *(v1 + 136) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v7;
  return result;
}

__n128 DigiBarSingleMarkerConfiguration.init(style:type:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 32) = *(a1 + 32);
  v4 = *(a2 + 48);
  *(a3 + 88) = *(a2 + 32);
  *(a3 + 104) = v4;
  *(a3 + 120) = *(a2 + 64);
  result = *a2;
  v6 = *(a2 + 16);
  *(a3 + 56) = *a2;
  v7 = *(a1 + 48);
  *(a3 + 52) = *(a1 + 52);
  *(a3 + 48) = v7;
  *(a3 + 136) = *(a2 + 80);
  *(a3 + 72) = v6;
  return result;
}

uint64_t sub_242DE2FA4()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 0x656C797473;
  }
}

void sub_242DE2FD4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

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

uint64_t sub_242DE30AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE5070(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DE30E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DE5070(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DigiBarSingleMarkerConfiguration.encode(to:)(void *a1)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF72D0, &qword_242F31F28);
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v4 = &v32 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v1 + 40);
  v33 = *(v1 + 32);
  v10 = v33;
  v34 = v6;
  v37 = v5;
  v38 = v9;
  v11 = *(v1 + 48);
  v39 = *(v1 + 52);
  v40 = v11;
  v12 = *(v1 + 104);
  v54 = *(v1 + 88);
  v55 = v12;
  v56 = *(v1 + 120);
  v57 = *(v1 + 136);
  v13 = *(v1 + 72);
  v52 = *(v1 + 56);
  v53 = v13;
  v14 = a1[3];
  v35 = a1[4];
  v36 = v11 | (v39 << 32);
  __swift_project_boxed_opaque_existential_2Tm(a1, v14);
  v15 = v37;
  v16 = v6;
  v17 = v10;
  v18 = v38;
  v19 = v41;
  v20 = sub_242DE4FF4(v37, v16, v8, v7, v17, v38, v36);
  sub_242DE5070(v20, v21, v22);
  v23 = sub_242F064C0();
  *&v46 = v15;
  *(&v46 + 1) = v34;
  *&v47 = v8;
  *(&v47 + 1) = v7;
  *&v48 = v33;
  *(&v48 + 1) = v18;
  BYTE4(v49) = v39;
  LODWORD(v49) = v40;
  LOBYTE(v44[0]) = 0;
  sub_242DE50C4(v23, v24, v25);
  v26 = v42;
  sub_242F05F20();
  sub_242D3CBB8(v46, *(&v46 + 1), v47, *(&v47 + 1), v48, *(&v48 + 1), v49 | (BYTE4(v49) << 32));
  if (v26)
  {
    return (*(v43 + 8))(v4, v19);
  }

  v48 = v54;
  v49 = v55;
  v50 = v56;
  v51 = v57;
  v46 = v52;
  v47 = v53;
  v58 = 1;
  v28 = sub_242DE5038(&v52, v44);
  sub_242DE5118(v28, v29, v30);
  sub_242F05F20();
  v31 = (v43 + 8);
  v44[2] = v48;
  v44[3] = v49;
  v44[4] = v50;
  v45 = v51;
  v44[0] = v46;
  v44[1] = v47;
  sub_242DE4E98(v44);
  return (*v31)(v4, v19);
}

uint64_t DigiBarSingleMarkerConfiguration.hashValue.getter()
{
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)(v1);
  DigiBarMarkerType.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t DigiBarSingleMarkerConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v61 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF72F0, &qword_242F31F30);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DE5070(v8, v9, v10);
  v11 = sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v14 = v5;
  v15 = v61;
  LOBYTE(v37) = 0;
  sub_242DE516C(v11, v12, v13);
  v16 = sub_242F05E00();
  v35 = v41;
  v36 = v42;
  v17 = v45;
  v33 = v43;
  v34 = v44;
  v32 = v46 | (v47 << 32);
  v53 = 1;
  sub_242DE51C0(v16, v18, v19);
  sub_242F05E00();
  v31 = v17;
  (*(v14 + 8))(v7, v4);
  *&v60[35] = v56;
  *&v60[51] = v57;
  *&v60[67] = v58;
  *&v60[83] = v59;
  *&v60[3] = v54;
  *&v60[19] = v55;
  v37 = v35;
  v20 = v33;
  v21 = v34;
  *&v38 = v36;
  *(&v38 + 1) = v33;
  *&v39 = v34;
  *(&v39 + 1) = v17;
  LODWORD(v14) = v32;
  v22 = HIDWORD(v32);
  BYTE4(v40[0]) = BYTE4(v32);
  LODWORD(v40[0]) = v32;
  *(v40 + 5) = *v60;
  *(&v40[1] + 5) = *&v60[16];
  v40[5] = *&v60[75];
  *(&v40[4] + 5) = *&v60[64];
  *(&v40[3] + 5) = *&v60[48];
  *(&v40[2] + 5) = *&v60[32];
  v23 = v35;
  v24 = v38;
  v25 = v40[0];
  v15[2] = v39;
  v15[3] = v25;
  *v15 = v23;
  v15[1] = v24;
  v26 = v40[1];
  v27 = v40[2];
  v28 = v40[5];
  v29 = v40[3];
  v15[7] = v40[4];
  v15[8] = v28;
  v15[5] = v27;
  v15[6] = v29;
  v15[4] = v26;
  sub_242DE5214(&v37, &v41);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  v50 = *&v60[32];
  v51 = *&v60[48];
  v52[0] = *&v60[64];
  *(v52 + 11) = *&v60[75];
  v48 = *v60;
  v41 = v35;
  v42 = v36;
  v43 = v20;
  v44 = v21;
  v45 = v31;
  v47 = v22;
  v46 = v14;
  v49 = *&v60[16];
  return sub_242DE524C(&v41);
}

uint64_t sub_242DE387C()
{
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)(v1);
  DigiBarMarkerType.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242DE396C(uint64_t a1)
{
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)(v2);
  DigiBarMarkerType.hash(into:)(v2);
  return sub_242F063E0();
}

uint64_t _s14CarPlayAssetUI23TickMarkerConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v6 = *(a1 + 24);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 12) == *(a2 + 12))
    {
      v7 = *(a2 + 16);
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  return sub_242C76850(v6, *(a2 + 24));
}

uint64_t _s14CarPlayAssetUI24LabelMarkerConfigurationV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v29[0] = *a1;
  v29[1] = v2;
  v4 = *a1;
  v3 = a1[1];
  v29[2] = a1[2];
  v30 = *(a1 + 6);
  v6 = *(a1 + 8);
  v5 = *(a1 + 9);
  v7 = *a2;
  v8 = a2[2];
  v32 = a2[1];
  v33 = v8;
  v9 = *a2;
  v31 = v7;
  v11 = *(a1 + 20);
  v10 = *(a1 + 21);
  v12 = *(a2 + 7);
  v34 = *(a2 + 6);
  v14 = *(a2 + 8);
  v13 = *(a2 + 9);
  v25 = v4;
  v26 = v3;
  v27 = a1[2];
  v16 = *(a2 + 20);
  v15 = *(a2 + 21);
  v17 = *(a1 + 7);
  v28 = *(a1 + 6);
  v21 = v9;
  v22 = v32;
  v23 = a2[2];
  v24 = *(a2 + 6);
  sub_242C94884(v29, v37);
  sub_242C94884(&v31, v37);
  v18 = _s14CarPlayAssetUI10RasterFontV2eeoiySbAC_ACtFZ_0(&v25, &v21);
  v35[0] = v21;
  v35[1] = v22;
  v35[2] = v23;
  v36 = v24;
  sub_242C954DC(v35);
  v37[0] = v25;
  v37[1] = v26;
  v37[2] = v27;
  v38 = v28;
  sub_242C954DC(v37);
  if ((v18 & 1) == 0 || (sub_242C75A30(v17, v12) & 1) == 0 || (sub_242C75A30(v6, v14) & 1) == 0)
  {
    return 0;
  }

  v19 = sub_242C72F94(v5, v13) & (v11 == v16);
  if (v10 == v15)
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

uint64_t _s14CarPlayAssetUI17DigiBarMarkerTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *v41 = *(a1 + 32);
  *&v41[16] = v2;
  v4 = *(a1 + 48);
  *&v41[32] = *(a1 + 64);
  v5 = *(a1 + 16);
  v39 = *a1;
  v40 = v5;
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  *v44 = *(a2 + 32);
  *&v44[16] = v6;
  v8 = *(a2 + 48);
  *&v44[32] = *(a2 + 64);
  v9 = *(a2 + 16);
  v42 = *a2;
  v43 = v9;
  v45[2] = *v41;
  v45[3] = v4;
  v45[4] = *(a1 + 64);
  v45[0] = v39;
  v45[1] = v3;
  v51 = *(a2 + 64);
  v50 = v8;
  v49 = *v44;
  v47 = v42;
  *&v41[48] = *(a1 + 80);
  *&v44[48] = *(a2 + 80);
  v10 = *(a2 + 80);
  v46 = *(a1 + 80);
  v52 = v10;
  v48 = v7;
  if (*v41 >> 62)
  {
    if (*v41 >> 62 == 1)
    {
      if (*v44 >> 62 == 1)
      {
        *&v23 = v39;
        BYTE8(v23) = BYTE8(v39);
        HIDWORD(v23) = HIDWORD(v39);
        LOBYTE(v24) = v40 & 1;
        *(&v24 + 1) = *(&v40 + 1);
        v18 = v42;
        v19 = BYTE8(v42);
        v20 = HIDWORD(v42);
        v21 = v43 & 1;
        v22 = *(&v43 + 1);
        sub_242DE4E60(&v42, &v29);
        sub_242DE4E60(&v39, &v29);
        sub_242DE4E60(&v39, &v29);
        sub_242DE4E60(&v42, &v29);
        v11 = _s14CarPlayAssetUI23TickMarkerConfigurationV2eeoiySbAC_ACtFZ_0(&v23, &v18);
LABEL_9:
        v16 = v11;
        sub_242DE6E04(v45);
        sub_242DE4EC8(&v42);
        sub_242DE4EC8(&v39);
        return v16 & 1;
      }
    }

    else if (*v44 >> 62 == 2)
    {
      v29 = v39;
      v30 = v40;
      v31 = *(&v40 + 1);
      v33 = (*(&v40 + 1) | ((*(&v40 + 5) | (BYTE7(v40) << 16)) << 32)) >> 48;
      v32 = *(&v40 + 5);
      v34 = *(&v40 + 1);
      v35 = *v41 & 0x3FFFFFFFFFFFFFFFLL;
      v36 = *&v41[8];
      v37 = *&v41[24];
      v38 = *&v41[40];
      v23 = v42;
      v24 = v43;
      v25 = *v44 & 0x3FFFFFFFFFFFFFFFLL;
      v26 = *&v44[8];
      v27 = *&v44[24];
      v28 = *&v44[40];
      sub_242DE4E60(&v42, &v18);
      sub_242DE4E60(&v39, &v18);
      sub_242DE4E60(&v39, &v18);
      sub_242DE4E60(&v42, &v18);
      v11 = _s14CarPlayAssetUI24LabelMarkerConfigurationV2eeoiySbAC_ACtFZ_0(&v29, &v23);
      goto LABEL_9;
    }

LABEL_10:
    sub_242DE4E60(&v39, &v29);
    sub_242DE4E60(&v42, &v29);
    sub_242DE6E04(v45);
    v16 = 0;
    return v16 & 1;
  }

  if (*v44 >> 62)
  {
    goto LABEL_10;
  }

  v12 = *(&v42 + 2);
  v13 = v42;
  v14 = *(&v39 + 2);
  v15 = v39 | (DWORD1(v39) << 32);
  sub_242DE4E60(&v42, &v29);
  sub_242DE4E60(&v39, &v29);
  sub_242DE4E60(&v39, &v29);
  sub_242DE4E60(&v42, &v29);
  LOBYTE(v13) = sub_242C75C94(v15, v13);
  sub_242DE6E04(v45);
  sub_242DE4EC8(&v42);
  sub_242DE4EC8(&v39);
  v16 = v13 & (v12 == v14);
  return v16 & 1;
}

unint64_t sub_242DE3ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF70F8;
  if (!qword_27ECF70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF70F8);
  }

  return result;
}

unint64_t sub_242DE3F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7100;
  if (!qword_27ECF7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7100);
  }

  return result;
}

unint64_t sub_242DE3F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7108;
  if (!qword_27ECF7108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7108);
  }

  return result;
}

unint64_t sub_242DE3FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7110;
  if (!qword_27ECF7110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7110);
  }

  return result;
}

unint64_t sub_242DE4024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7118;
  if (!qword_27ECF7118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7118);
  }

  return result;
}

unint64_t sub_242DE4078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7120;
  if (!qword_27ECF7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7120);
  }

  return result;
}

unint64_t sub_242DE40CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7128;
  if (!qword_27ECF7128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7128);
  }

  return result;
}

unint64_t sub_242DE4120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7150;
  if (!qword_27ECF7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7150);
  }

  return result;
}

unint64_t sub_242DE4174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7158;
  if (!qword_27ECF7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7158);
  }

  return result;
}

unint64_t sub_242DE41C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7160;
  if (!qword_27ECF7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7160);
  }

  return result;
}

uint64_t _s14CarPlayAssetUI32DigiBarSingleMarkerConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = *(a1 + 52);
  v11 = *(a1 + 12);
  v12 = *(a1 + 13);
  v53 = *(a1 + 11);
  v54 = v12;
  v55 = *(a1 + 15);
  v56 = a1[17];
  v13 = *(a1 + 9);
  v51 = *(a1 + 7);
  v52 = v13;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v19 = a2[5];
  v20 = *(a2 + 52);
  v21 = *(a2 + 12);
  v22 = v21 | (v20 << 32);
  v23 = *(a2 + 13);
  v59 = *(a2 + 11);
  v60 = v23;
  v61 = *(a2 + 15);
  v62 = a2[17];
  v24 = *(a2 + 9);
  v57 = *(a2 + 7);
  v58 = v24;
  *&v45 = v4;
  *(&v45 + 1) = v5;
  *&v46 = v6;
  *(&v46 + 1) = v7;
  *&v47 = v8;
  *(&v47 + 1) = v9;
  BYTE4(v48) = v10;
  LODWORD(v48) = v11;
  *&v39 = v14;
  *(&v39 + 1) = v15;
  *&v40 = v16;
  *(&v40 + 1) = v17;
  *&v41 = v18;
  *(&v41 + 1) = v19;
  BYTE4(v42) = v20;
  LODWORD(v42) = v21;
  sub_242DE4FF4(v4, v5, v6, v7, v8, v9, v11 | (v10 << 32));
  sub_242DE4FF4(v14, v15, v16, v17, v18, v19, v22);
  LOBYTE(v14) = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO20DigiBarConfigurationV0G0O2eeoiySbAI_AItFZ_0(&v45, &v39);
  sub_242D3CBB8(v39, *(&v39 + 1), v40, *(&v40 + 1), v41, *(&v41 + 1), v42 | (BYTE4(v42) << 32));
  sub_242D3CBB8(v45, *(&v45 + 1), v46, *(&v46 + 1), v47, *(&v47 + 1), v48 | (BYTE4(v48) << 32));
  if (v14)
  {
    v35 = v53;
    v36 = v54;
    v37 = v55;
    v38 = v56;
    v33 = v51;
    v34 = v52;
    v29 = v59;
    v30 = v60;
    v31 = v61;
    v32 = v62;
    v27 = v57;
    v28 = v58;
    sub_242DE5038(&v51, &v45);
    sub_242DE5038(&v57, &v45);
    v25 = _s14CarPlayAssetUI17DigiBarMarkerTypeO2eeoiySbAC_ACtFZ_0(&v33, &v27);
    v41 = v29;
    v42 = v30;
    v43 = v31;
    v44 = v32;
    v39 = v27;
    v40 = v28;
    sub_242DE4EC8(&v39);
    v47 = v35;
    v48 = v36;
    v49 = v37;
    v50 = v38;
    v45 = v33;
    v46 = v34;
    sub_242DE4EC8(&v45);
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

unint64_t sub_242DE4440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7180;
  if (!qword_27ECF7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7180);
  }

  return result;
}

unint64_t sub_242DE4494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7188;
  if (!qword_27ECF7188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7188);
  }

  return result;
}

unint64_t sub_242DE44E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7190;
  if (!qword_27ECF7190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7190);
  }

  return result;
}

unint64_t sub_242DE453C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF71B8;
  if (!qword_27ECF71B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF71B8);
  }

  return result;
}

unint64_t sub_242DE4590()
{
  result = qword_27ECF71C8;
  if (!qword_27ECF71C8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF71C0, &qword_242F31EA0);
    sub_242DE461C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF71C8);
  }

  return result;
}

unint64_t sub_242DE461C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF71D0;
  if (!qword_27ECF71D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF71D0);
  }

  return result;
}

unint64_t sub_242DE4670()
{
  result = qword_27ECF71E0;
  if (!qword_27ECF71E0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF71C0, &qword_242F31EA0);
    sub_242DE46FC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF71E0);
  }

  return result;
}

unint64_t sub_242DE46FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF71E8;
  if (!qword_27ECF71E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF71E8);
  }

  return result;
}

uint64_t sub_242DE4750(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 16);
  v10 = *a2;
  v9 = a2[1];
  v11 = *(a2 + 16);
  if (v8 == 255)
  {
    if (v11 == 255)
    {
      a3(*a1, v6, 255);
      a3(v10, v9, 255);
      v16 = 1;
      return v16 & 1;
    }

    goto LABEL_7;
  }

  if (v11 == 255)
  {
LABEL_7:
    a4(*a2, a2[1], v11);
    a4(v7, v6, v8);
    a3(v7, v6, v8);
    a3(v10, v9, v11);
    v16 = 0;
    return v16 & 1;
  }

  a4(v10, v9, v11);
  a4(v7, v6, v8);
  v12 = Theme.ColorID.rawValue.getter();
  v14 = v13;
  if (v12 == Theme.ColorID.rawValue.getter() && v14 == v15)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_242F06110();
  }

  a3(v7, v6, v8);
  a3(v10, v9, v11);

  return v16 & 1;
}

unint64_t sub_242DE4910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7208;
  if (!qword_27ECF7208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7208);
  }

  return result;
}

unint64_t sub_242DE4964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7210;
  if (!qword_27ECF7210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7210);
  }

  return result;
}

unint64_t sub_242DE49B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7218;
  if (!qword_27ECF7218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7218);
  }

  return result;
}

unint64_t sub_242DE4A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7240;
  if (!qword_27ECF7240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7240);
  }

  return result;
}

unint64_t sub_242DE4A60()
{
  result = qword_27ECF7250;
  if (!qword_27ECF7250)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7248, &qword_242F31EE8);
    sub_242DE4AEC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7250);
  }

  return result;
}

unint64_t sub_242DE4AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7258;
  if (!qword_27ECF7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7258);
  }

  return result;
}

unint64_t sub_242DE4B40()
{
  result = qword_27ECF7268;
  if (!qword_27ECF7268)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7248, &qword_242F31EE8);
    sub_242DE4BCC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7268);
  }

  return result;
}

unint64_t sub_242DE4BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7270;
  if (!qword_27ECF7270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7270);
  }

  return result;
}

unint64_t sub_242DE4C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7280;
  if (!qword_27ECF7280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7280);
  }

  return result;
}

unint64_t sub_242DE4C74()
{
  result = qword_27ECF1C00;
  if (!qword_27ECF1C00)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF1BF8, &qword_242F180D0);
    sub_242C7DEA0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1C00);
  }

  return result;
}

unint64_t sub_242DE4D00()
{
  result = qword_27ECF1C10;
  if (!qword_27ECF1C10)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF1BF8, &qword_242F180D0);
    sub_242C7DFAC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1C10);
  }

  return result;
}

uint64_t sub_242DE4D8C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7288, &qword_242F31F08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242DE4EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF72B0;
  if (!qword_27ECF72B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF72B0);
  }

  return result;
}

unint64_t sub_242DE4F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF72B8;
  if (!qword_27ECF72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF72B8);
  }

  return result;
}

unint64_t sub_242DE4FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF72C8;
  if (!qword_27ECF72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF72C8);
  }

  return result;
}

uint64_t sub_242DE4FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (((a7 >> 38) & 3) == 2)
  {
    return sub_242DE5018(a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_242DE5018(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_242C7CE5C(a2, a3, a4);
  }

  return result;
}

unint64_t sub_242DE5070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF72D8;
  if (!qword_27ECF72D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF72D8);
  }

  return result;
}

unint64_t sub_242DE50C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF72E0;
  if (!qword_27ECF72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF72E0);
  }

  return result;
}

unint64_t sub_242DE5118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF72E8;
  if (!qword_27ECF72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF72E8);
  }

  return result;
}

unint64_t sub_242DE516C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF72F8;
  if (!qword_27ECF72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF72F8);
  }

  return result;
}

unint64_t sub_242DE51C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7300;
  if (!qword_27ECF7300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7300);
  }

  return result;
}

unint64_t sub_242DE5280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7308;
  if (!qword_27ECF7308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7308);
  }

  return result;
}

unint64_t sub_242DE52D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7310;
  if (!qword_27ECF7310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7310);
  }

  return result;
}

unint64_t sub_242DE5330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7318;
  if (!qword_27ECF7318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7318);
  }

  return result;
}

unint64_t sub_242DE5388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7320;
  if (!qword_27ECF7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7320);
  }

  return result;
}

unint64_t sub_242DE53E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7328;
  if (!qword_27ECF7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7328);
  }

  return result;
}

unint64_t sub_242DE5438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7330;
  if (!qword_27ECF7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7330);
  }

  return result;
}

unint64_t sub_242DE5490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7338;
  if (!qword_27ECF7338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7338);
  }

  return result;
}

unint64_t sub_242DE54E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7340;
  if (!qword_27ECF7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7340);
  }

  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_242DE5578(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_242DE55C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI22DotMarkerConfigurationV5StyleO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 4)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242DE5644(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242DE568C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = ~a2;
    }
  }

  return result;
}

uint64_t sub_242DE56E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_242DE572C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_242DE57BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 88) >> 2) & 0xFFFFFF80 | (*(a1 + 88) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_242DE5810(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 144) = 1;
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
      result = 0.0;
      *(a1 + 72) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 88) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      return result;
    }

    *(a1 + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242DE58A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 32) >> 2) & 0xFFFFFF80 | (*(a1 + 32) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_242DE58F8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 88) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      return result;
    }

    *(a1 + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_242DE5A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7348;
  if (!qword_27ECF7348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7348);
  }

  return result;
}

unint64_t sub_242DE5AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7350;
  if (!qword_27ECF7350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7350);
  }

  return result;
}

unint64_t sub_242DE5B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7358;
  if (!qword_27ECF7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7358);
  }

  return result;
}

unint64_t sub_242DE5B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7360;
  if (!qword_27ECF7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7360);
  }

  return result;
}

unint64_t sub_242DE5BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7368;
  if (!qword_27ECF7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7368);
  }

  return result;
}

unint64_t sub_242DE5C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7370;
  if (!qword_27ECF7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7370);
  }

  return result;
}

unint64_t sub_242DE5C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7378;
  if (!qword_27ECF7378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7378);
  }

  return result;
}

unint64_t sub_242DE5CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7380;
  if (!qword_27ECF7380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7380);
  }

  return result;
}

unint64_t sub_242DE5D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7388;
  if (!qword_27ECF7388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7388);
  }

  return result;
}

unint64_t sub_242DE5D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7390;
  if (!qword_27ECF7390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7390);
  }

  return result;
}

unint64_t sub_242DE5DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7398;
  if (!qword_27ECF7398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7398);
  }

  return result;
}

unint64_t sub_242DE5E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF73A0;
  if (!qword_27ECF73A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF73A0);
  }

  return result;
}

unint64_t sub_242DE5E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF73A8;
  if (!qword_27ECF73A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF73A8);
  }

  return result;
}

unint64_t sub_242DE5EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF73B0;
  if (!qword_27ECF73B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF73B0);
  }

  return result;
}

unint64_t sub_242DE5F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF73B8;
  if (!qword_27ECF73B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF73B8);
  }

  return result;
}

unint64_t sub_242DE5F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF73C0;
  if (!qword_27ECF73C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF73C0);
  }

  return result;
}

unint64_t sub_242DE5FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF73C8;
  if (!qword_27ECF73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF73C8);
  }

  return result;
}

unint64_t sub_242DE6048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF73D0;
  if (!qword_27ECF73D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF73D0);
  }

  return result;
}

unint64_t sub_242DE60A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF73D8;
  if (!qword_27ECF73D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF73D8);
  }

  return result;
}

unint64_t sub_242DE60F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF73E0;
  if (!qword_27ECF73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF73E0);
  }

  return result;
}

unint64_t sub_242DE6150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF73E8;
  if (!qword_27ECF73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF73E8);
  }

  return result;
}

unint64_t sub_242DE61A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF73F0;
  if (!qword_27ECF73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF73F0);
  }

  return result;
}

unint64_t sub_242DE6200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF73F8;
  if (!qword_27ECF73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF73F8);
  }

  return result;
}

unint64_t sub_242DE6258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7400;
  if (!qword_27ECF7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7400);
  }

  return result;
}

unint64_t sub_242DE62B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7408;
  if (!qword_27ECF7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7408);
  }

  return result;
}

unint64_t sub_242DE6308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7410;
  if (!qword_27ECF7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7410);
  }

  return result;
}

unint64_t sub_242DE6360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7418;
  if (!qword_27ECF7418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7418);
  }

  return result;
}

unint64_t sub_242DE63B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7420;
  if (!qword_27ECF7420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7420);
  }

  return result;
}

unint64_t sub_242DE6410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7428;
  if (!qword_27ECF7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7428);
  }

  return result;
}

unint64_t sub_242DE6468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7430;
  if (!qword_27ECF7430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7430);
  }

  return result;
}

unint64_t sub_242DE64C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7438;
  if (!qword_27ECF7438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7438);
  }

  return result;
}

unint64_t sub_242DE6518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7440;
  if (!qword_27ECF7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7440);
  }

  return result;
}

unint64_t sub_242DE6570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7448;
  if (!qword_27ECF7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7448);
  }

  return result;
}

unint64_t sub_242DE65C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7450;
  if (!qword_27ECF7450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7450);
  }

  return result;
}

unint64_t sub_242DE6620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7458;
  if (!qword_27ECF7458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7458);
  }

  return result;
}

unint64_t sub_242DE6678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7460;
  if (!qword_27ECF7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7460);
  }

  return result;
}

unint64_t sub_242DE66D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7468;
  if (!qword_27ECF7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7468);
  }

  return result;
}

unint64_t sub_242DE6728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7470;
  if (!qword_27ECF7470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7470);
  }

  return result;
}

unint64_t sub_242DE6780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7478;
  if (!qword_27ECF7478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7478);
  }

  return result;
}

unint64_t sub_242DE67D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7480;
  if (!qword_27ECF7480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7480);
  }

  return result;
}

unint64_t sub_242DE6830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7488;
  if (!qword_27ECF7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7488);
  }

  return result;
}

unint64_t sub_242DE6888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7490;
  if (!qword_27ECF7490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7490);
  }

  return result;
}

unint64_t sub_242DE68E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7498;
  if (!qword_27ECF7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7498);
  }

  return result;
}

uint64_t sub_242DE6934(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7630692 && a2 == 0xE300000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1801677172 && a2 == 0xE400000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242DE6A48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706143656E696CLL && a2 == 0xE700000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73656C797473 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242DE6BF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953394534 && a2 == 0xE400000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xEC00000073444972 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5B870 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5B890 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5B8B0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964)
  {

    return 5;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242DE6E04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF74A0, &qword_242F33940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242DE6EB0()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v16 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v15 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF74A8 = v16;
  *(&xmmword_27ECF74A8 + 1) = v15;
  qword_27ECF74B8 = v14;
  unk_27ECF74C0 = v7;
  *&xmmword_27ECF74C8 = v8;
  *(&xmmword_27ECF74C8 + 1) = v9;
  qword_27ECF74D8 = v10;
  unk_27ECF74E0 = v11;
  qword_27ECF74E8 = result;
  return result;
}

uint64_t static Color.Ticks.multicolor.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF680 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECF74D8;
  v8[2] = xmmword_27ECF74C8;
  v8[3] = *&qword_27ECF74D8;
  v9 = qword_27ECF74E8;
  v3 = qword_27ECF74E8;
  v4 = *&qword_27ECF74B8;
  v8[0] = xmmword_27ECF74A8;
  v5 = xmmword_27ECF74A8;
  v8[1] = *&qword_27ECF74B8;
  *(a1 + 32) = xmmword_27ECF74C8;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8CBA8(v8, &v7);
}

uint64_t static Color.Ticks.multicolor.setter(uint64_t a1)
{
  if (qword_27ECEF680 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECF74C8;
  v5[3] = *&qword_27ECF74D8;
  v6 = qword_27ECF74E8;
  v5[0] = xmmword_27ECF74A8;
  v5[1] = *&qword_27ECF74B8;
  v2 = *(a1 + 48);
  xmmword_27ECF74C8 = *(a1 + 32);
  *&qword_27ECF74D8 = v2;
  qword_27ECF74E8 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECF74A8 = *a1;
  *&qword_27ECF74B8 = v3;
  return sub_242C8CCB0(v5);
}

uint64_t (*static Color.Ticks.multicolor.modify(uint64_t a1))()
{
  if (qword_27ECEF680 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242DE738C()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v16 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v15 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF74F0 = v16;
  *(&xmmword_27ECF74F0 + 1) = v15;
  qword_27ECF7500 = v14;
  unk_27ECF7508 = v7;
  *&xmmword_27ECF7510 = v8;
  *(&xmmword_27ECF7510 + 1) = v9;
  qword_27ECF7520 = v10;
  unk_27ECF7528 = v11;
  qword_27ECF7530 = result;
  return result;
}

uint64_t static Color.ProgressBars.multicolor.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF688 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECF7520;
  v8[2] = xmmword_27ECF7510;
  v8[3] = *&qword_27ECF7520;
  v9 = qword_27ECF7530;
  v3 = qword_27ECF7530;
  v4 = *&qword_27ECF7500;
  v8[0] = xmmword_27ECF74F0;
  v5 = xmmword_27ECF74F0;
  v8[1] = *&qword_27ECF7500;
  *(a1 + 32) = xmmword_27ECF7510;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8D144(v8, &v7);
}

uint64_t static Color.ProgressBars.multicolor.setter(uint64_t a1)
{
  if (qword_27ECEF688 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECF7510;
  v5[3] = *&qword_27ECF7520;
  v6 = qword_27ECF7530;
  v5[0] = xmmword_27ECF74F0;
  v5[1] = *&qword_27ECF7500;
  v2 = *(a1 + 48);
  xmmword_27ECF7510 = *(a1 + 32);
  *&qword_27ECF7520 = v2;
  qword_27ECF7530 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECF74F0 = *a1;
  *&qword_27ECF7500 = v3;
  return sub_242C8D24C(v5);
}

uint64_t (*static Color.ProgressBars.multicolor.modify(uint64_t a1))()
{
  if (qword_27ECEF688 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242DE7894()
{
  v0 = sub_242F04700();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v1);
  result = sub_242F047A0();
  qword_27ECF7538 = result;
  return result;
}

uint64_t static Color.Modular.multicolor.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF690 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECF7538;
}

uint64_t static Color.Modular.multicolor.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27ECEF690 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECF7538 = v1;
}

uint64_t (*static Color.Modular.multicolor.modify(uint64_t a1))()
{
  if (qword_27ECEF690 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242DE7AF8()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF7540 = v14;
  *(&xmmword_27ECF7540 + 1) = v7;
  qword_27ECF7550 = v8;
  unk_27ECF7558 = v9;
  *&xmmword_27ECF7560 = v10;
  *(&xmmword_27ECF7560 + 1) = v11;
  qword_27ECF7570 = result;
  return result;
}

uint64_t static Color.ACC.multicolor.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF698 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27ECF7540 + 1);
  v3 = qword_27ECF7550;
  v4 = unk_27ECF7558;
  v5 = xmmword_27ECF7560;
  v6 = qword_27ECF7570;
  *a1 = xmmword_27ECF7540;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
}

uint64_t static Color.ACC.multicolor.setter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v3 = *(a1 + 32);
  v1 = *(a1 + 48);
  if (qword_27ECEF698 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECF7540 = v5;
  *&qword_27ECF7550 = v4;
  xmmword_27ECF7560 = v3;
  qword_27ECF7570 = v1;
}

uint64_t (*static Color.ACC.multicolor.modify(uint64_t a1))()
{
  if (qword_27ECEF698 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242DE7FC8()
{
  if (qword_27ECEF688 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v36 = xmmword_27ECF7510;
  v37 = *&qword_27ECF7520;
  v38 = qword_27ECF7530;
  v34 = xmmword_27ECF74F0;
  v35 = *&qword_27ECF7500;
  sub_242C8D144(&v34, &v39);
  if (qword_27ECEF680 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v41 = xmmword_27ECF74C8;
  v42 = *&qword_27ECF74D8;
  v43 = qword_27ECF74E8;
  v39 = xmmword_27ECF74A8;
  v40 = *&qword_27ECF74B8;
  sub_242C8CBA8(&v39, &v30);
  if (qword_27ECEF690 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27ECEF698;
  v28 = qword_27ECF7538;

  if (v0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(&xmmword_27ECF7540 + 1);
  v2 = qword_27ECF7550;
  v3 = unk_27ECF7558;
  v4 = xmmword_27ECF7560;
  v5 = qword_27ECF7570;
  v6 = qword_27ECEF0B0;
  v27 = xmmword_27ECF7540;

  v26 = v1;

  v25 = v2;

  v24 = v5;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_27ECF3678;
  v8 = qword_27ECF3680;
  v9 = qword_27ECEF0B8;
  v23 = qword_27ECF3670;

  v22 = v7;

  v21 = v8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_27ECEF0C0;
  v20 = qword_27ECF3688;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *algn_27ECF3698;
  v12 = qword_27ECF36A0;
  v13 = unk_27ECF36A8;
  v14 = qword_27ECF36B0;
  v15 = unk_27ECF36B8;
  v16 = qword_27ECF36C0;
  v17 = qword_27ECEF0C8;
  v19 = qword_27ECF3690;

  if (v17 != -1)
  {
    swift_once();
  }

  v30 = xmmword_27ECF36C8;
  v31 = *&qword_27ECF36D8;
  v32 = xmmword_27ECF36E8;
  v33 = *&qword_27ECF36F8;
  sub_242C8E7B0(&v30, v29);
  if (qword_27ECEF0D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECF7598 = v36;
  unk_27ECF75A8 = v37;
  xmmword_27ECF7578 = v34;
  unk_27ECF7588 = v35;
  *algn_27ECF75C0 = v39;
  *&algn_27ECF75C0[48] = v42;
  qword_27ECF75B8 = v38;
  *&algn_27ECF75C0[32] = v41;
  *&algn_27ECF75C0[16] = v40;
  qword_27ECF7600 = v43;
  unk_27ECF7608 = v28;
  qword_27ECF7610 = v23;
  unk_27ECF7618 = v22;
  qword_27ECF7620 = v21;
  unk_27ECF7628 = v27;
  qword_27ECF7630 = v26;
  qword_27ECF7638 = v25;
  unk_27ECF7640 = v3;
  xmmword_27ECF7648 = v4;
  qword_27ECF7658 = v24;
  unk_27ECF7660 = v20;
  qword_27ECF7668 = v19;
  qword_27ECF7670 = v11;
  unk_27ECF7678 = v12;
  qword_27ECF7680 = v13;
  unk_27ECF7688 = v14;
  qword_27ECF7690 = v15;
  unk_27ECF7698 = v16;
  xmmword_27ECF76C0 = v32;
  unk_27ECF76D0 = v33;
  xmmword_27ECF76A0 = v30;
  *algn_27ECF76B0 = v31;
  xmmword_27ECF76E0 = xmmword_27ECF3708;
  qword_27ECF76F0 = qword_27ECF3718;
  unk_27ECF76F8 = unk_27ECF3720;
  xmmword_27ECF7700 = xmmword_27ECF3728;
  qword_27ECF7710 = qword_27ECF3738;
}

uint64_t static Color.ColorValues.multicolor.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF6A0 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &xmmword_27ECF7578, sizeof(__dst));
  memcpy(a1, &xmmword_27ECF7578, 0x1A0uLL);
  return sub_242C8DFF4(__dst, &v3);
}

unint64_t sub_242DE8540()
{
  result = sub_242CE6EE4(MEMORY[0x277D84F90]);
  qword_27ECF7718 = result;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiBandLightMulticolor.modify(uint64_t a1))()
{
  if (qword_27ECEF6A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_242DE8638()
{
  result = sub_242CE6EE4(MEMORY[0x277D84F90]);
  qword_27ECF7720 = result;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiRingLightMulticolor.modify(uint64_t a1))()
{
  if (qword_27ECEF6B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242DE8730()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0758, &qword_242F0B4B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F0C2E0;
  *(inited + 32) = 0;
  v64[1] = inited + 32;
  *(inited + 40) = 0;
  *(inited + 48) = 1;
  v5 = *(v1 + 104);
  v68 = *MEMORY[0x277CE0EE0];
  v67 = v5;
  v5(v3);
  v6 = sub_242F047A0();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
  v7 = swift_initStackObject();
  v65 = xmmword_242F09510;
  *(v7 + 16) = xmmword_242F09510;
  *(v7 + 32) = 0;
  v8 = v7 + 32;
  *(v7 + 40) = v6;
  v9 = sub_242CE6C84(v7);
  swift_setDeallocating();

  sub_242C6E840(v8);
  v10 = sub_242E1E384(v9);

  if (*(v10 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v11 = sub_242F05CB0();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];
  }

  v69[0] = v11;

  sub_242E21B3C(v12, 1, v69);

  *(inited + 56) = v69[0];
  *(inited + 64) = xmmword_242F0B490;
  *(inited + 80) = 1;
  v67(v3, v68, v0);
  v13 = sub_242F047A0();
  v14 = swift_initStackObject();
  *(v14 + 16) = v65;
  *(v14 + 32) = 0;
  v15 = v14 + 32;
  *(v14 + 40) = v13;
  v16 = sub_242CE6C84(v14);
  swift_setDeallocating();

  sub_242C6E840(v15);
  v17 = sub_242E1E384(v16);

  if (*(v17 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v18 = sub_242F05CB0();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v69[0] = v18;

  sub_242E21B3C(v19, 1, v69);

  *(inited + 88) = v69[0];
  *(inited + 96) = xmmword_242F2FF90;
  *(inited + 112) = 1;
  v67(v3, v68, v0);
  v20 = sub_242F047A0();
  v21 = swift_initStackObject();
  *(v21 + 16) = v65;
  *(v21 + 32) = 0;
  v22 = v21 + 32;
  *(v21 + 40) = v20;
  v23 = sub_242CE6C84(v21);
  swift_setDeallocating();

  sub_242C6E840(v22);
  v24 = sub_242E1E384(v23);

  if (*(v24 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v25 = sub_242F05CB0();
  }

  else
  {
    v25 = MEMORY[0x277D84F98];
  }

  v69[0] = v25;

  sub_242E21B3C(v26, 1, v69);

  *(inited + 120) = v69[0];
  *(inited + 128) = xmmword_242F30530;
  *(inited + 144) = 1;
  v67(v3, v68, v0);
  v27 = sub_242F047A0();
  v28 = swift_initStackObject();
  *(v28 + 16) = v65;
  *(v28 + 32) = 0;
  v29 = v28 + 32;
  *(v28 + 40) = v27;
  v30 = sub_242CE6C84(v28);
  swift_setDeallocating();

  sub_242C6E840(v29);
  v31 = sub_242E1E384(v30);

  if (*(v31 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v32 = sub_242F05CB0();
  }

  else
  {
    v32 = MEMORY[0x277D84F98];
  }

  v69[0] = v32;

  sub_242E21B3C(v33, 1, v69);

  *(inited + 152) = v69[0];
  *(inited + 160) = xmmword_242F33990;
  *(inited + 176) = 1;
  v67(v3, v68, v0);
  v34 = sub_242F047A0();
  v35 = swift_initStackObject();
  *(v35 + 16) = v65;
  *(v35 + 32) = 0;
  v36 = v35 + 32;
  *(v35 + 40) = v34;
  v37 = sub_242CE6C84(v35);
  swift_setDeallocating();

  sub_242C6E840(v36);
  v38 = sub_242E1E384(v37);

  if (*(v38 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v39 = sub_242F05CB0();
  }

  else
  {
    v39 = MEMORY[0x277D84F98];
  }

  v69[0] = v39;

  sub_242E21B3C(v40, 1, v69);

  *(inited + 184) = v69[0];
  *(inited + 192) = xmmword_242F30540;
  *(inited + 208) = 1;
  v67(v3, v68, v0);
  v41 = sub_242F047A0();
  v42 = swift_initStackObject();
  *(v42 + 16) = v65;
  *(v42 + 32) = 0;
  v43 = v42 + 32;
  *(v42 + 40) = v41;
  v44 = sub_242CE6C84(v42);
  swift_setDeallocating();

  sub_242C6E840(v43);
  v45 = sub_242E1E384(v44);

  if (*(v45 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v46 = sub_242F05CB0();
  }

  else
  {
    v46 = MEMORY[0x277D84F98];
  }

  v69[0] = v46;

  sub_242E21B3C(v47, 1, v69);

  *(inited + 216) = v69[0];
  *(inited + 224) = xmmword_242F2FFA0;
  *(inited + 240) = 1;
  v67(v3, v68, v0);
  v48 = sub_242F047A0();
  v49 = swift_initStackObject();
  *(v49 + 16) = v65;
  *(v49 + 32) = 0;
  v50 = v49 + 32;
  *(v49 + 40) = v48;
  v51 = sub_242CE6C84(v49);
  swift_setDeallocating();

  sub_242C6E840(v50);
  v52 = sub_242E1E384(v51);

  if (*(v52 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v53 = sub_242F05CB0();
  }

  else
  {
    v53 = MEMORY[0x277D84F98];
  }

  v69[0] = v53;

  sub_242E21B3C(v54, 1, v69);

  *(inited + 248) = v69[0];
  *(inited + 256) = xmmword_242F0B4A0;
  *(inited + 272) = 1;
  v67(v3, v68, v0);
  v55 = sub_242F047A0();
  v56 = swift_initStackObject();
  *(v56 + 16) = v65;
  *(v56 + 32) = 0;
  v57 = v56 + 32;
  *(v56 + 40) = v55;
  v58 = sub_242CE6C84(v56);
  swift_setDeallocating();

  sub_242C6E840(v57);
  v59 = sub_242E1E384(v58);

  if (*(v59 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v60 = sub_242F05CB0();
  }

  else
  {
    v60 = MEMORY[0x277D84F98];
  }

  v69[0] = v60;

  sub_242E21B3C(v61, 1, v69);

  *(inited + 280) = v69[0];
  v62 = sub_242CE6EE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0760, &qword_242F0B4B8);
  result = swift_arrayDestroy();
  qword_27ECF7728 = v62;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesModularLightMulticolor.modify(uint64_t a1))()
{
  if (qword_27ECEF6B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_242DE92DC()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

uint64_t sub_242DE9350(uint64_t a1)
{
  v2 = *v1;
  sub_242F06390();
  MEMORY[0x245D279A0](v2);
  return sub_242F063E0();
}

uint64_t PersistentElements.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F06470();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_2Tm(v7, v7[3]);
    v5 = sub_242F06150();
    __swift_destroy_boxed_opaque_existential_2Tm(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t PersistentElements.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F064B0();
  if ((v2 & 1) == 0)
  {
    v3 = MEMORY[0x277D84F90];
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v3 = sub_242C82C04(0, 1, 1, MEMORY[0x277D84F90]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_242C82C04((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[16 * v5];
  *(v6 + 4) = 25441;
  *(v6 + 5) = 0xE200000000000000;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_242C82C04(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v7 = *(v3 + 3);
    if (v8 >= v7 >> 1)
    {
      v3 = sub_242C82C04((v7 > 1), v8 + 1, 1, v3);
    }

    *(v3 + 2) = v8 + 1;
    v9 = &v3[16 * v8];
    *(v9 + 4) = 7233894;
    *(v9 + 5) = 0xE300000000000000;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_242C82C04(0, *(v3 + 2) + 1, 1, v3);
    }

    v11 = *(v3 + 2);
    v10 = *(v3 + 3);
    if (v11 >= v10 >> 1)
    {
      v3 = sub_242C82C04((v10 > 1), v11 + 1, 1, v3);
    }

    *(v3 + 2) = v11 + 1;
    v12 = &v3[16 * v11];
    strcpy(v12 + 32, "frontDefrost");
    v12[45] = 0;
    *(v12 + 23) = -5120;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_242C82C04(0, *(v3 + 2) + 1, 1, v3);
  }

  v14 = *(v3 + 2);
  v13 = *(v3 + 3);
  if (v14 >= v13 >> 1)
  {
    v3 = sub_242C82C04((v13 > 1), v14 + 1, 1, v3);
  }

  *(v3 + 2) = v14 + 1;
  v15 = &v3[16 * v14];
  *(v15 + 4) = 0x7266654472616572;
  *(v15 + 5) = 0xEB0000000074736FLL;
  if ((v2 & 0x10) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_242C82C04(0, *(v3 + 2) + 1, 1, v3);
    }

    v17 = *(v3 + 2);
    v16 = *(v3 + 3);
    if (v17 >= v16 >> 1)
    {
      v3 = sub_242C82C04((v16 > 1), v17 + 1, 1, v3);
    }

    *(v3 + 2) = v17 + 1;
    v18 = &v3[16 * v17];
    *(v18 + 4) = 0xD000000000000011;
    *(v18 + 5) = 0x8000000242F5B900;
  }

LABEL_31:
  __swift_mutable_project_boxed_opaque_existential_1(v20, v20[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0160, &qword_242F0A500);
  sub_242C86D4C(&qword_27ECF01B8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_242F061B0();

  return __swift_destroy_boxed_opaque_existential_2Tm(v20);
}

unint64_t sub_242DE9C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7730;
  if (!qword_27ECF7730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7730);
  }

  return result;
}

unint64_t sub_242DE9C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7738;
  if (!qword_27ECF7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7738);
  }

  return result;
}

unint64_t sub_242DE9CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7740;
  if (!qword_27ECF7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7740);
  }

  return result;
}

unint64_t sub_242DE9D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7748;
  if (!qword_27ECF7748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7748);
  }

  return result;
}

uint64_t (*LayoutBackgroundViewBuilder.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)(uint64_t a1, uint64_t a2)@<X8>))(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 2) = a3;
  *(result + 3) = a4;
  *(result + 4) = a1;
  *(result + 5) = a2;
  *a5 = sub_242DE9E9C;
  a5[1] = result;
  return result;
}

uint64_t sub_242DE9DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v7[1];
  v11[0] = *v7;
  v11[1] = v8;
  v9(v11, v6);
  return sub_242F04940();
}

unint64_t sub_242DE9EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF7750;
  if (!qword_27ECF7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7750);
  }

  return result;
}

uint64_t CarouselConfiguration.init(style:platterPadding:alwaysHidePlatter:animationStyle:decorationsVisibilityDuration:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v6 = *(result + 32);
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *(result + 16);
  *a4 = *result;
  *(a4 + 16) = v9;
  *(a4 + 32) = v6;
  *(a4 + 40) = a5;
  *(a4 + 48) = a2;
  *(a4 + 56) = v7;
  *(a4 + 64) = v8;
  *(a4 + 72) = a6;
  return result;
}

double static CarouselConfiguration.CarouselStyle.default.getter@<D0>(uint64_t a1@<X8>)
{
  result = 56.0;
  *a1 = xmmword_242F33D10;
  *(a1 + 16) = xmmword_242F33D20;
  *(a1 + 32) = 0;
  return result;
}

uint64_t Carousel.init(model:content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X0>)
{
  result = sub_242DF6A98(a4);
  *a3 = result;
  a3[1] = v8;
  a3[2] = a1;
  a3[3] = a2;
  return result;
}

uint64_t sub_242DE9FD8(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_242F04B00();
}

char *CarouselModel.__allocating_init(items:activeItem:configuration:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  swift_allocObject();
  v6 = sub_242DFB478(a1, a2, a3);
  v7 = sub_242F05860();
  (*(*(v7 - 8) + 8))(a2, v7);
  return v6;
}

uint64_t sub_242DEA248(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_242DEA290()
{
  if (*v0)
  {
    return 0x61725472656E6E69;
  }

  else
  {
    return 0x617254726574756FLL;
  }
}

void sub_242DEA2D0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617254726574756FLL && a2 == 0xED0000676E696C69;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x61725472656E6E69 && a2 == 0xED0000676E696C69)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

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

uint64_t sub_242DEA3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DFBD50(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DEA3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DFBD50(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242DEA42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DFBDA4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DEA468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DFBDA4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242DEA4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DFBDF8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DEA4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DFBDF8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CarouselConfiguration.PageControlPosition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7758, &qword_242F33D40);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7760, &qword_242F33D48);
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7768, &qword_242F33D50);
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = *v1;
  v10 = v1[1];
  v38 = v1[2];
  v39 = v10;
  v12 = *(v1 + 24);
  v13 = a1[3];
  v14 = a1;
  v16 = &v37 - v15;
  v17 = __swift_project_boxed_opaque_existential_2Tm(v14, v13);
  sub_242DFBD50(v17, v18, v19);
  v20 = sub_242F064C0();
  if (v12)
  {
    LOBYTE(v47) = 1;
    sub_242DFBDA4(v20, v21, v22);
    v23 = sub_242F05E40();
    v47 = v11;
    v46 = 0;
    sub_242C7DB7C(v23, v24, v25);
    v27 = v43;
    v26 = v44;
    sub_242F05F20();
    if (!v26)
    {
      v47 = v39;
      v46 = 1;
      sub_242F05F20();
      v47 = v38;
      v46 = 2;
      sub_242F05F20();
      (*(v42 + 8))(v5, v27);
      return (*(v45 + 8))(v16, v9);
    }

    v28 = *(v42 + 8);
    v29 = v5;
    v30 = v27;
LABEL_8:
    v28(v29, v30);
    return (*(v45 + 8))(v16, v9);
  }

  LOBYTE(v47) = 0;
  sub_242DFBDF8(v20, v21, v22);
  v31 = sub_242F05E40();
  v47 = v11;
  v46 = 0;
  sub_242C7DB7C(v31, v32, v33);
  v34 = v41;
  v35 = v44;
  sub_242F05F20();
  if (v35)
  {
    v28 = *(v40 + 8);
    v29 = v8;
    v30 = v34;
    goto LABEL_8;
  }

  v47 = v39;
  v46 = 1;
  sub_242F05F20();
  v47 = v38;
  v46 = 2;
  sub_242F05F20();
  (*(v40 + 8))(v8, v34);
  return (*(v45 + 8))(v16, v9);
}

uint64_t CarouselConfiguration.PageControlPosition.hash(into:)()
{
  if ((*v0 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  if ((v0[1] & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v2 = v0[1];
  }

  else
  {
    v2 = 0;
  }

  if ((v0[2] & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v0[2];
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x245D279A0](*(v0 + 24));
  MEMORY[0x245D279D0](v1);
  MEMORY[0x245D279D0](v2);
  return MEMORY[0x245D279D0](v3);
}

uint64_t CarouselConfiguration.PageControlPosition.hashValue.getter()
{
  sub_242F06390();
  CarouselConfiguration.PageControlPosition.hash(into:)();
  return sub_242F063E0();
}

uint64_t CarouselConfiguration.PageControlPosition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7788, &qword_242F33D58);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7790, &qword_242F33D60);
  v48 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7798, &unk_242F33D68);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  v13 = a1[3];
  v53 = a1;
  v14 = __swift_project_boxed_opaque_existential_2Tm(a1, v13);
  sub_242DFBD50(v14, v15, v16);
  v17 = v52;
  sub_242F06480();
  if (!v17)
  {
    v47 = v6;
    v18 = v50;
    v19 = v51;
    v52 = v10;
    v20 = sub_242F05E10();
    v21 = (2 * *(v20 + 16)) | 1;
    v57 = v20;
    v58 = v20 + 32;
    v59 = 0;
    v60 = v21;
    v22 = sub_242C7FBE4();
    if (v22 == 2 || v59 != v60 >> 1)
    {
      v32 = sub_242F05B10();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10, &qword_242F095A0);
      *v34 = &type metadata for CarouselConfiguration.PageControlPosition;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
      (*(v52 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = v22;
      if (v22)
      {
        LOBYTE(v61) = 1;
        sub_242DFBDA4(v22, v23, v24);
        v25 = sub_242F05D10();
        v26 = v19;
        LOBYTE(v56) = 0;
        sub_242C7DBD0(v25, v27, v28);
        v29 = v18;
        sub_242F05E00();
        v30 = v52;
        v31 = v61;
        LOBYTE(v55) = 1;
        sub_242F05E00();
        v48 = v31;
        v45 = v56;
        v54 = 2;
        sub_242F05E00();
        (*(v49 + 8))(v5, v29);
        (*(v30 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v42 = v45;
        v43 = v55;
        v44 = v48;
      }

      else
      {
        LOBYTE(v61) = 0;
        sub_242DFBDF8(v22, v23, v24);
        v36 = v8;
        v37 = sub_242F05D10();
        v26 = v19;
        LOBYTE(v56) = 0;
        sub_242C7DBD0(v37, v38, v39);
        v40 = v47;
        sub_242F05E00();
        v44 = v61;
        LOBYTE(v55) = 1;
        sub_242F05E00();
        v41 = v48;
        v45 = v56;
        v54 = 2;
        sub_242F05E00();
        v42 = v45;
        (*(v41 + 8))(v36, v40);
        (*(v52 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v43 = v55;
      }

      *v26 = v44;
      *(v26 + 8) = v42;
      *(v26 + 16) = v43;
      *(v26 + 24) = v46 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v53);
}

uint64_t sub_242DEB098()
{
  sub_242F06390();
  CarouselConfiguration.PageControlPosition.hash(into:)();
  return sub_242F063E0();
}

uint64_t sub_242DEB0F8(uint64_t a1)
{
  sub_242F06390();
  CarouselConfiguration.PageControlPosition.hash(into:)();
  return sub_242F063E0();
}

BOOL static CarouselConfiguration.AnimationStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_242DEB1C0()
{
  if (*v0)
  {
    return 0x646E657065646E69;
  }

  else
  {
    return 0x6F63654468746977;
  }
}

void sub_242DEB210(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F63654468746977 && a2 == 0xEF736E6F69746172;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x646E657065646E69 && a2 == 0xEB00000000746E65)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

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

uint64_t sub_242DEB2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DFBE4C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DEB334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DFBE4C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242DEB370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DFBEA0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DEB3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DFBEA0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_242DEB3FC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_242DEB480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DFBEF4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DEB4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DFBEF4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CarouselConfiguration.AnimationStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF77A0, &qword_242F33D78);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF77A8, &qword_242F33D80);
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF77B0, &qword_242F33D88);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = *v1;
  v13 = *(v1 + 8);
  v14 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DFBE4C(v14, v15, v16);
  v17 = sub_242F064C0();
  if (v13)
  {
    v33 = 1;
    sub_242DFBEA0(v17, v18, v19);
    v20 = v26;
    sub_242F05E40();
    (*(v29 + 8))(v20, v30);
  }

  else
  {
    v32 = 0;
    sub_242DFBEF4(v17, v18, v19);
    v22 = sub_242F05E40();
    v31 = v12;
    sub_242C7DB7C(v22, v23, v24);
    v25 = v28;
    sub_242F05F20();
    (*(v27 + 8))(v7, v25);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t CarouselConfiguration.AnimationStyle.hash(into:)()
{
  if (v0[1])
  {
    return MEMORY[0x245D279A0](1);
  }

  v2 = *v0;
  MEMORY[0x245D279A0](0);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x245D279D0](v3);
}

uint64_t CarouselConfiguration.AnimationStyle.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_242F06390();
  if (v2)
  {
    MEMORY[0x245D279A0](1);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x245D279D0](v3);
  }

  return sub_242F063E0();
}

uint64_t CarouselConfiguration.AnimationStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF77D0, &qword_242F33D90);
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v4 = &v36[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF77D8, &qword_242F33D98);
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v36[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF77E0, &qword_242F33DA0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36[-v10];
  v12 = a1[3];
  v44 = a1;
  v13 = __swift_project_boxed_opaque_existential_2Tm(a1, v12);
  sub_242DFBE4C(v13, v14, v15);
  v16 = v43;
  sub_242F06480();
  if (!v16)
  {
    v17 = v7;
    v38 = v5;
    v43 = v9;
    v18 = v41;
    v19 = v42;
    v20 = sub_242F05E10();
    v21 = (2 * *(v20 + 16)) | 1;
    v45 = v20;
    v46 = v20 + 32;
    v47 = 0;
    v48 = v21;
    v22 = sub_242C7FBE4();
    if (v22 == 2 || v47 != v48 >> 1)
    {
      v26 = sub_242F05B10();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10, &qword_242F095A0);
      *v28 = &type metadata for CarouselConfiguration.AnimationStyle;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
      (*(v43 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = v22;
      if (v22)
      {
        LOBYTE(v49) = 1;
        sub_242DFBEA0(v22, v23, v24);
        sub_242F05D10();
        v25 = v43;
        (*(v18 + 8))(v4, v39);
        (*(v25 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v32 = 0;
      }

      else
      {
        LOBYTE(v49) = 0;
        sub_242DFBEF4(v22, v23, v24);
        v30 = sub_242F05D10();
        v31 = v43;
        sub_242C7DBD0(v30, v33, v34);
        v35 = v38;
        sub_242F05E00();
        (*(v40 + 8))(v17, v35);
        (*(v31 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v32 = v49;
      }

      *v19 = v32;
      *(v19 + 8) = v37 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v44);
}

uint64_t sub_242DEBDBC()
{
  if (v0[1])
  {
    return MEMORY[0x245D279A0](1);
  }

  v2 = *v0;
  MEMORY[0x245D279A0](0);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x245D279D0](v3);
}

uint64_t sub_242DEBE0C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_242F06390();
  if (v3)
  {
    MEMORY[0x245D279A0](1);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x245D279D0](v4);
  }

  return sub_242F063E0();
}

uint64_t sub_242DEBEA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    return *a1 == *a2;
  }

  return result;
}

uint64_t sub_242DEBEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DFC044(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DEBF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DFC044(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242DEBF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DFBF48(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DEBF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DFBF48(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242DEBFCC()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x615272656E726F63;
  }
}

void sub_242DEC014(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000242F5BAA0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

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

uint64_t sub_242DEC0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DFBF9C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DEC138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DFBF9C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CarouselConfiguration.CarouselStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF77E8, &qword_242F33DA8);
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF77F0, &qword_242F33DB0);
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF77F8, &qword_242F33DB8);
  v9 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v11 = &v32 - v10;
  v12 = *v1;
  v13 = v1[1];
  v34 = v1[2];
  v35 = v13;
  v33 = v1[3];
  v14 = *(v1 + 32);
  v15 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DFBF48(v15, v16, v17);
  v18 = sub_242F064C0();
  if (v14 == 255)
  {
    LOBYTE(v42) = 0;
    sub_242DFC044(v18, v19, v20);
    v31 = v40;
    sub_242F05E40();
    (*(v36 + 8))(v8, v37);
    return (*(v9 + 8))(v11, v31);
  }

  else
  {
    LOBYTE(v42) = 1;
    sub_242DFBF9C(v18, v19, v20);
    v21 = v40;
    v22 = sub_242F05E40();
    v42 = v12;
    v46 = 0;
    sub_242C7DB7C(v22, v23, v24);
    v25 = v39;
    v26 = v41;
    v27 = sub_242F05F20();
    if (!v26)
    {
      v42 = v35;
      v43 = v34;
      v44 = v33;
      v45 = v14 & 1;
      v46 = 1;
      sub_242DFBFF0(v27, v28, v29);
      sub_242F05F20();
    }

    (*(v38 + 8))(v5, v25);
    return (*(v9 + 8))(v11, v21);
  }
}

uint64_t CarouselConfiguration.CarouselStyle.hash(into:)()
{
  if (*(v0 + 32) == 255)
  {
    return MEMORY[0x245D279A0](0);
  }

  v1 = *v0;
  MEMORY[0x245D279A0](1);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x245D279D0](v2);
  return CarouselConfiguration.PageControlPosition.hash(into:)();
}

uint64_t CarouselConfiguration.CarouselStyle.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  sub_242F06390();
  if (v2 == 255)
  {
    MEMORY[0x245D279A0](0);
  }

  else
  {
    MEMORY[0x245D279A0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x245D279D0](v3);
    CarouselConfiguration.PageControlPosition.hash(into:)();
  }

  return sub_242F063E0();
}

uint64_t CarouselConfiguration.CarouselStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7820, &qword_242F33DC0);
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7828, &qword_242F33DC8);
  v41 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v39 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7830, &qword_242F33DD0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - v8;
  v10 = a1[3];
  v45 = a1;
  v11 = __swift_project_boxed_opaque_existential_2Tm(a1, v10);
  sub_242DFBF48(v11, v12, v13);
  v14 = v44;
  sub_242F06480();
  if (!v14)
  {
    v44 = v7;
    v15 = v43;
    v16 = v9;
    v17 = sub_242F05E10();
    v18 = (2 * *(v17 + 16)) | 1;
    v50 = v17;
    v51 = v17 + 32;
    v52 = 0;
    v53 = v18;
    v19 = sub_242C7FBE4();
    if (v19 == 2 || v52 != v53 >> 1)
    {
      v28 = sub_242F05B10();
      swift_allocError();
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10, &qword_242F095A0);
      *v30 = &type metadata for CarouselConfiguration.CarouselStyle;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v44 + 8))(v16, v6);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v19)
      {
        LOBYTE(v47) = 1;
        sub_242DFBF9C(v19, v20, v21);
        v22 = sub_242F05D10();
        v23 = v44;
        LOBYTE(v47) = 0;
        sub_242C7DBD0(v22, v24, v25);
        v26 = v40;
        v27 = sub_242F05E00();
        v33 = v54;
        v46 = 1;
        sub_242DFC098(v27, v34, v35);
        sub_242F05E00();
        (*(v42 + 8))(0, v26);
        (*(v23 + 8))(v16, v6);
        swift_unknownObjectRelease();
        v36 = v47;
        v37 = v48;
        v38 = v49;
      }

      else
      {
        LOBYTE(v47) = 0;
        sub_242DFC044(v19, v20, v21);
        sub_242F05D10();
        v32 = v44;
        (*(v41 + 8))(v5, v3);
        (*(v32 + 8))(v16, v6);
        swift_unknownObjectRelease();
        v33 = 0;
        v37 = 0;
        v36 = 0uLL;
        v38 = -1;
      }

      *v15 = v33;
      *(v15 + 8) = v36;
      *(v15 + 24) = v37;
      *(v15 + 32) = v38;
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v45);
}

uint64_t sub_242DECBDC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 32);
  sub_242F06390();
  if (v3 == 255)
  {
    MEMORY[0x245D279A0](0);
  }

  else
  {
    MEMORY[0x245D279A0](1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x245D279D0](v4);
    CarouselConfiguration.PageControlPosition.hash(into:)();
  }

  return sub_242F063E0();
}

__n128 CarouselConfiguration.style.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void CarouselConfiguration.animationStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
}

unint64_t sub_242DECCEC()
{
  v1 = *v0;
  v2 = 0x656C797473;
  v3 = 0xD000000000000011;
  v4 = 0x6F6974616D696E61;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5072657474616C70;
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

uint64_t sub_242DECDA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242DFC3D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242DECDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DFC0EC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DECE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DFC0EC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CarouselConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7840, &qword_242F33DD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = *(v3 + 32);
  v10 = *(v3 + 5);
  v33 = *(v3 + 48);
  v29 = *(v3 + 7);
  v28 = *(v3 + 64);
  v11 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DFC0EC(v11, v12, v13);
  v14 = sub_242F064C0();
  v15 = *v3;
  v31 = v3[1];
  v30 = v15;
  v32 = v9;
  v34 = 0;
  sub_242DFC140(v14, v16, v17);
  v18 = sub_242F05F20();
  if (!v2)
  {
    v21 = v28;
    v22 = v29;
    *&v30 = v10;
    v34 = 1;
    sub_242C7DB7C(v18, v19, v20);
    sub_242F05F20();
    LOBYTE(v30) = 2;
    v23 = sub_242F05ED0();
    *&v30 = v22;
    BYTE8(v30) = v21;
    v34 = 3;
    sub_242DFC194(v23, v24, v25);
    sub_242F05F20();
    LOBYTE(v30) = 4;
    sub_242F05EE0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CarouselConfiguration.hash(into:)()
{
  v1 = v0[5];
  v2 = *(v0 + 7);
  v3 = *(v0 + 64);
  v4 = v0[9];
  if (*(v0 + 32) == 255)
  {
    MEMORY[0x245D279A0](0);
  }

  else
  {
    v5 = *v0;
    MEMORY[0x245D279A0](1);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0.0;
    }

    MEMORY[0x245D279D0](*&v6);
    CarouselConfiguration.PageControlPosition.hash(into:)();
  }

  v7 = 0.0;
  if (v1 != 0.0)
  {
    v7 = v1;
  }

  MEMORY[0x245D279D0](*&v7);
  sub_242F063B0();
  if (v3)
  {
    MEMORY[0x245D279A0](1);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v2;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x245D279D0](v8);
  }

  v9 = 0.0;
  if (v4 != 0.0)
  {
    v9 = v4;
  }

  return MEMORY[0x245D279D0](*&v9);
}
BOOL sub_1D300DE78(void *a1, uint64_t *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_1D30E97CC()) && (v2 == v4 ? (v7 = v3 == v5) : (v7 = 0), v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1D30E97CC();
  }

  return (v8 & 1) == 0;
}

uint64_t sub_1D300DF2C(uint64_t *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  v6 = *a2 == *a1 && a2[1] == a1[1];
  if (v6 || (sub_1D30E97CC()) && v4 == v2 && v5 == v3)
  {
    return 0;
  }

  return sub_1D30E97CC();
}

uint64_t sub_1D300DFFC()
{
  sub_1D30E98AC();
  sub_1D30E90BC();
  sub_1D30E90BC();
  return sub_1D30E98EC();
}

uint64_t sub_1D300E064(uint64_t a1)
{
  sub_1D30E90BC();

  return sub_1D30E90BC();
}

uint64_t sub_1D300E0B4(uint64_t a1)
{
  sub_1D30E98AC();
  sub_1D30E90BC();
  sub_1D30E90BC();
  return sub_1D30E98EC();
}

uint64_t sub_1D300E118(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[4];
  v11 = a2[5];
  if (v5 && (v12 = a2[3]) != 0 && (a1[2] != a2[2] || v5 != v12))
  {
    v13 = sub_1D30E97CC();
    if (v3 == v8)
    {
LABEL_6:
      if (v4 == v9)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v13 = 1;
    if (v3 == v8)
    {
      goto LABEL_6;
    }
  }

  if ((sub_1D30E97CC() & 1) == 0)
  {
LABEL_11:
    v13 = 0;
    return v13 & 1;
  }

LABEL_8:
  if ((v6 != v10 || v7 != v11) && (sub_1D30E97CC() & 1) == 0)
  {
    goto LABEL_11;
  }

  return v13 & 1;
}

uint64_t AssetPackRecord.StaticRepresentation.globalID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v4;
}

uint64_t AssetPackRecord.StaticRepresentation.rootDirectoryComponent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AssetPackRecord.StaticRepresentation(0) + 28);
  v4 = sub_1D30E8D5C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AssetPackRecord.StaticRepresentation.description.getter()
{
  sub_1D30E948C();
  MEMORY[0x1D38B2610](0xD000000000000024, 0x80000001D30EBC20);
  v1 = AssetPackRecord.GlobalID.description.getter();
  MEMORY[0x1D38B2610](v1);

  MEMORY[0x1D38B2610](0x203A74736F6820, 0xE700000000000000);
  v2 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  v3 = AssetPackHost.description.getter();
  MEMORY[0x1D38B2610](v3);

  MEMORY[0x1D38B2610](0x6E6F697372657620, 0xEA0000000000203ALL);
  v4 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v4);

  MEMORY[0x1D38B2610](0xD00000000000001BLL, 0x80000001D30EBC50);
  sub_1D30E8D5C();
  sub_1D30117E0(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
  v5 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v5);

  MEMORY[0x1D38B2610](0x6961766120736920, 0xEF203A656C62616CLL);
  if (*(v0 + *(v2 + 32)))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + *(v2 + 32)))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1D38B2610](v6, v7);

  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D300E5F8()
{
  v1 = *v0;
  v2 = 0x44496C61626F6C67;
  v3 = 0x6E6F6973726576;
  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0x616C696176417369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1953722216;
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

uint64_t sub_1D300E698@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D3011AA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D300E6CC(uint64_t a1)
{
  v2 = sub_1D301178C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D300E708(uint64_t a1)
{
  v2 = sub_1D301178C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetPackRecord.StaticRepresentation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749A50, &qword_1D30F2320);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D301178C();
  sub_1D30E992C();
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[5];
  v14 = *v3;
  v15 = v9;
  v16 = v10;
  v17 = *(v3 + 3);
  v18 = v11;
  v13[15] = 0;
  sub_1D2FF6708();

  sub_1D30E974C();
  if (v2)
  {
  }

  else
  {

    type metadata accessor for AssetPackRecord.StaticRepresentation(0);
    LOBYTE(v14) = 1;
    type metadata accessor for AssetPackHost(0);
    sub_1D30117E0(&qword_1EC749A60, type metadata accessor for AssetPackHost, &protocol conformance descriptor for AssetPackHost);
    sub_1D30E974C();
    LOBYTE(v14) = 2;
    sub_1D30E973C();
    LOBYTE(v14) = 3;
    sub_1D30E8D5C();
    sub_1D30117E0(&qword_1EC749A68, MEMORY[0x1E69E8380], MEMORY[0x1E69E8388]);
    sub_1D30E974C();
    LOBYTE(v14) = 4;
    sub_1D30E971C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AssetPackRecord.StaticRepresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1D30E8D5C();
  v4 = *(v3 - 8);
  v28 = v3;
  v29 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for AssetPackHost(0);
  MEMORY[0x1EEE9AC00](v30);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749A70, &qword_1D30F2328);
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D301178C();
  v14 = v33;
  sub_1D30E990C();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = a1;
  v15 = v13;
  v39 = 0;
  sub_1D2FF67A4();
  sub_1D30E967C();
  v16 = v35;
  v17 = v37;
  v18 = v38;
  *v13 = v34;
  *(v13 + 1) = v16;
  *(v13 + 1) = v36;
  *(v13 + 4) = v17;
  *(v13 + 5) = v18;
  LOBYTE(v34) = 1;
  sub_1D30117E0(&qword_1EC749A78, type metadata accessor for AssetPackHost, &protocol conformance descriptor for AssetPackHost);
  sub_1D30E967C();
  sub_1D3011828(v7, &v13[v11[5]]);
  LOBYTE(v34) = 2;
  v19 = sub_1D30E966C();
  v20 = v29;
  *&v13[v11[6]] = v19;
  LOBYTE(v34) = 3;
  sub_1D30117E0(&qword_1EC749A80, MEMORY[0x1E69E8380], MEMORY[0x1E69E8398]);
  v21 = v27;
  v22 = v28;
  sub_1D30E967C();
  v23 = v33;
  v30 = v11;
  (*(v20 + 32))(v15 + v11[7], v21, v22);
  LOBYTE(v34) = 4;
  v24 = v32;
  LOBYTE(v21) = sub_1D30E964C();
  (*(v31 + 8))(v10, v24);
  *(v15 + *(v30 + 32)) = v21 & 1;
  sub_1D301188C(v15, v26, type metadata accessor for AssetPackRecord.StaticRepresentation);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_1D30118F4(v15, type metadata accessor for AssetPackRecord.StaticRepresentation);
}

uint64_t sub_1D300F098()
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D2FF67A4();
  sub_1D30E8F0C();
}

double sub_1D300F1A0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D2FF67A4();
  sub_1D30E8F0C();

  *a2 = v4;
  *(a2 + 8) = v5;
  result = *&v6;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_1D300F2C0(_OWORD *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8ADC();
}

uint64_t sub_1D300F39C(uint64_t a1, _OWORD *a2)
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D2FF6708();
  sub_1D30E8F1C();
}

uint64_t sub_1D300F454()
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30117E0(&qword_1EC749A78, type metadata accessor for AssetPackHost, &protocol conformance descriptor for AssetPackHost);
  sub_1D30E8F0C();
}

uint64_t sub_1D300F58C()
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30117E0(&qword_1EC749A78, type metadata accessor for AssetPackHost, &protocol conformance descriptor for AssetPackHost);
  sub_1D30E8F0C();
}

uint64_t sub_1D300F6C4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for AssetPackHost(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D301188C(a1, v6, type metadata accessor for AssetPackHost);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8ADC();

  return sub_1D30118F4(v6, type metadata accessor for AssetPackHost);
}

uint64_t sub_1D300F810(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30117E0(&qword_1EC749A60, type metadata accessor for AssetPackHost, &protocol conformance descriptor for AssetPackHost);
  sub_1D30E8F1C();
}

uint64_t sub_1D300F8E8()
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8F0C();

  return v0;
}

uint64_t sub_1D300F9EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8F0C();

  *a2 = v4;
  return result;
}

uint64_t sub_1D300FAF8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8ADC();
}

uint64_t sub_1D300FBC4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8F1C();
}

uint64_t sub_1D300FC6C()
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8F0C();

  return v0;
}

uint64_t sub_1D300FD70@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8F0C();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D300FE7C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8ADC();
}

uint64_t sub_1D300FF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8F1C();
}

uint64_t sub_1D3010008@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749940, &qword_1D30F1B10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v9 = v1;
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8F0C();

  sub_1D30E8D6C();
  v6 = sub_1D30E8D5C();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D30101E8()
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8F0C();

  return v1;
}

uint64_t sub_1D30102EC@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8F0C();

  *a2 = v4;
  return result;
}

uint64_t sub_1D30103F8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8ADC();
}

uint64_t sub_1D30104C8(uint64_t a1, char a2)
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8F1C();
}

__n128 sub_1D3010570@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D2FF67A4();
  sub_1D30E8F0C();

  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  v3 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  sub_1D30117E0(&qword_1EC749A78, type metadata accessor for AssetPackHost, &protocol conformance descriptor for AssetPackHost);
  sub_1D30E8F0C();

  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30E8F0C();

  sub_1D3010008(a1 + v3[7]);
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30E8F0C();

  result = v6;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + v3[6]) = v1;
  *(a1 + v3[8]) = v1;
  return result;
}

uint64_t AssetPackRecord.description.getter()
{
  v1 = type metadata accessor for AssetPackHost(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1D30E948C();
  v23 = v18;
  v24 = v19;
  MEMORY[0x1D38B2610](0xD000000000000020, 0x80000001D30EBC70);
  v18 = v0;
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D2FF67A4();
  sub_1D30E8F0C();

  v13 = v18;
  v14 = v19;
  v15 = v20;
  v12 = v21;
  v16 = v21;
  v17 = v22;
  v4 = AssetPackRecord.GlobalID.description.getter();
  v6 = v5;

  MEMORY[0x1D38B2610](v4, v6);

  MEMORY[0x1D38B2610](0x203A74736F6820, 0xE700000000000000);
  v18 = v0;
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EC749A78, type metadata accessor for AssetPackHost, &protocol conformance descriptor for AssetPackHost);
  sub_1D30E8F0C();

  v7 = AssetPackHost.description.getter();
  MEMORY[0x1D38B2610](v7);

  sub_1D30118F4(v3, type metadata accessor for AssetPackHost);
  MEMORY[0x1D38B2610](0x6E6F697372657620, 0xEA0000000000203ALL);
  v18 = v0;
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30E8F0C();

  v8 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v8);

  MEMORY[0x1D38B2610](0xD000000000000016, 0x80000001D30EBCA0);
  v18 = v0;
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30E8F0C();

  MEMORY[0x1D38B2610](v18, v19);

  MEMORY[0x1D38B2610](0x6961766120736920, 0xEF203A656C62616CLL);
  v18 = v0;
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30E8F0C();

  if (v18)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v18)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1D38B2610](v9, v10);

  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return v23;
}

uint64_t AssetPackRecord.persistentBackingData.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  sub_1D2FE02DC(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t (*AssetPackRecord.persistentBackingData.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1D2FE022C(v1 + 16, v4);
  return sub_1D2FF5E50;
}

uint64_t AssetPackRecord.__allocating_init(backingData:)(__int128 *a1)
{
  v2 = swift_allocObject();
  AssetPackRecord.init(backingData:)(a1);
  return v2;
}

uint64_t *AssetPackRecord.init(backingData:)(__int128 *a1)
{
  v1[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749A88, &qword_1D30FD030);
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  v1[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v1 + 2);
  sub_1D30E8ECC();
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  swift_getKeyPath();
  sub_1D30E8DEC();

  sub_1D30E8AFC();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  sub_1D2FE02DC(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t AssetPackRecord.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
  v2 = sub_1D30E8B0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AssetPackRecord.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
  v2 = sub_1D30E8B0C();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t AssetPackRecord.hashValue.getter()
{
  sub_1D30E98AC();
  sub_1D30117E0(&qword_1EE313608, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E903C();
  return sub_1D30E98EC();
}

uint64_t sub_1D3011224(__int128 *a1)
{
  v2 = swift_allocObject();
  AssetPackRecord.init(backingData:)(a1);
  return v2;
}

uint64_t (*sub_1D3011264(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1D2FE022C(v1 + 16, v4);
  return sub_1D2FF8C70;
}

uint64_t sub_1D30113E0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);

  return MEMORY[0x1EEDD9288](v3, v4, v2, v5);
}

BOOL _s29ManagedBackgroundAssetsHelper15AssetPackRecordC20StaticRepresentationV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[4];
  v12 = a2[5];
  if (v6 && (v13 = a2[3]) != 0 && (a1[2] != a2[2] || v6 != v13))
  {
    v19 = a1[5];
    v14 = sub_1D30E97CC();
    if (v4 == v10)
    {
      v8 = v19;
      if (v5 == v9)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v8 = v19;
    }
  }

  else
  {
    v14 = 1;
    if (v4 == v10 && v5 == v9)
    {
      if (v7 == v11 && v8 == v12)
      {
        goto LABEL_19;
      }

LABEL_17:
      if ((sub_1D30E97CC() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_18;
    }
  }

  v15 = v8;
  v16 = sub_1D30E97CC();
  v8 = v15;
  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  if (v7 != v11 || v8 != v12)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (v14)
  {
LABEL_19:
    v17 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
    return *(a1 + *(v17 + 24)) == *(a2 + *(v17 + 24));
  }

  return 0;
}

uint64_t _s29ManagedBackgroundAssetsHelper15AssetPackRecordC20StaticRepresentationV1loiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  v7 = a1[4];
  v16 = a1[5];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[4];
  v11 = a2[5];
  if (v6 && (v12 = a2[3]) != 0 && (a1[2] != a2[2] || v6 != v12))
  {
    v13 = sub_1D30E97CC();
    if (v4 == v8 && v5 == v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = 1;
    if (v4 == v8 && v5 == v9)
    {
      if (v7 == v10 && v16 == v11)
      {
        goto LABEL_17;
      }

LABEL_15:
      if ((sub_1D30E97CC() & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  if ((sub_1D30E97CC() & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  if (v7 != v10 || v16 != v11)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v13)
  {
LABEL_17:
    v14 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
    return *(a1 + *(v14 + 24)) < *(a2 + *(v14 + 24));
  }

LABEL_18:
  if (v4 == v8 && v5 == v9 || (sub_1D30E97CC()) && v7 == v10 && v16 == v11)
  {
    return 0;
  }

  return sub_1D30E97CC();
}

unint64_t sub_1D301178C()
{
  result = qword_1EC749A58;
  if (!qword_1EC749A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749A58);
  }

  return result;
}

uint64_t sub_1D30117E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D3011828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPackHost(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D301188C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D30118F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D3011974(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000444965;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496D616554707061 && a2 == 0xE900000000000044 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6361507465737361 && a2 == 0xEB0000000044496BLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D30E97CC();

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

uint64_t sub_1D3011AA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496C61626F6C67 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953722216 && a2 == 0xE400000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EBD30 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616C696176417369 && a2 == 0xEB00000000656C62)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D30E97CC();

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

uint64_t _s29ManagedBackgroundAssetsHelper15AssetPackRecordC14schemaMetadataSay9SwiftData6SchemaC08PropertyI0VGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491B8, &qword_1D30EEB60);
  sub_1D30E8F8C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D30F2300;
  swift_getKeyPath();
  sub_1D30E8F7C();
  swift_getKeyPath();
  sub_1D30E8F7C();
  swift_getKeyPath();
  sub_1D30E8F7C();
  swift_getKeyPath();
  sub_1D30E8F7C();
  swift_getKeyPath();
  sub_1D30E8F7C();
  return v0;
}

unint64_t sub_1D3011E9C()
{
  result = qword_1EE314428;
  if (!qword_1EE314428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314428);
  }

  return result;
}

uint64_t sub_1D30120F0(uint64_t a1)
{
  result = sub_1D30E8B0C();
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

uint64_t sub_1D3012204(uint64_t a1)
{
  result = type metadata accessor for AssetPackHost(319);
  if (v2 <= 0x3F)
  {
    result = sub_1D30E8D5C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetPackRecord.StaticRepresentation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
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

uint64_t storeEnumTagSinglePayload for AssetPackRecord.StaticRepresentation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
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
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D301241C()
{
  result = qword_1EC749A98;
  if (!qword_1EC749A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749A98);
  }

  return result;
}

unint64_t sub_1D3012474()
{
  result = qword_1EC749AA0;
  if (!qword_1EC749AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749AA0);
  }

  return result;
}

unint64_t sub_1D30124CC()
{
  result = qword_1EC749AA8;
  if (!qword_1EC749AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749AA8);
  }

  return result;
}

unint64_t sub_1D3012524()
{
  result = qword_1EC749AB0;
  if (!qword_1EC749AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749AB0);
  }

  return result;
}

unint64_t sub_1D301257C()
{
  result = qword_1EC749AB8;
  if (!qword_1EC749AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749AB8);
  }

  return result;
}

unint64_t sub_1D30125D4()
{
  result = qword_1EC749AC0;
  if (!qword_1EC749AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749AC0);
  }

  return result;
}

uint64_t sub_1D30126D0()
{
  v0 = sub_1D30E8F9C();
  __swift_allocate_value_buffer(v0, qword_1EE3152F8);
  __swift_project_value_buffer(v0, qword_1EE3152F8);
  return sub_1D30E8FAC();
}

char *sub_1D3012728()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749230, &unk_1D30F2B00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D30EE910;
  v1 = type metadata accessor for AppReviewRecord(0);
  v2 = sub_1D30129A4(&qword_1EE313708, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  v3 = type metadata accessor for AssetPackRecord(0);
  v4 = sub_1D30129A4(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = type metadata accessor for LicenseRecord(0);
  v6 = sub_1D30129A4(&qword_1EE313B08, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  result = sub_1D30D7C08(1, 3, 1, inited);
  *(result + 2) = 3;
  *(result + 8) = v5;
  *(result + 9) = v6;
  qword_1EE3152F0 = result;
  return result;
}

uint64_t sub_1D30128A0()
{
  if (qword_1EE313B28 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D30128FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE313B30 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8F9C();
  v3 = __swift_project_value_buffer(v2, qword_1EE3152F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D30129A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D30129EC()
{
  swift_getKeyPath();
  sub_1D3014680(&qword_1EE313710, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D3014680(&qword_1EE313708, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  sub_1D30E8F0C();

  return v0;
}

uint64_t sub_1D3012AF0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D3014680(&qword_1EE313710, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D3014680(&qword_1EE313708, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  sub_1D30E8F0C();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D3012BFC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D3014680(&qword_1EE313710, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  sub_1D30E8ADC();
}

uint64_t AppReviewRecord.StaticRepresentation.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t AppReviewRecord.StaticRepresentation.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D30E948C();

  MEMORY[0x1D38B2610](v1, v2);
  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return 0xD000000000000024;
}

uint64_t static AppReviewRecord.StaticRepresentation.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D30E97CC();
  }
}

uint64_t static AppReviewRecord.StaticRepresentation.< infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_1D30E97CC();
  }
}

uint64_t sub_1D3012E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D30E97CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D3012E90(uint64_t a1)
{
  v2 = sub_1D3013044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3012ECC(uint64_t a1)
{
  v2 = sub_1D3013044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppReviewRecord.StaticRepresentation.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749AC8, &qword_1D30F2B10);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D3013044();
  sub_1D30E992C();
  sub_1D30E970C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D3013044()
{
  result = qword_1EC749AD0;
  if (!qword_1EC749AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749AD0);
  }

  return result;
}

uint64_t AppReviewRecord.StaticRepresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749AD8, &qword_1D30F2B18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D3013044();
  sub_1D30E990C();
  if (!v2)
  {
    v9 = sub_1D30E963C();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D3013224(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749AC8, &qword_1D30F2B10);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D3013044();
  sub_1D30E992C();
  sub_1D30E970C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D3013360(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_1D30E97CC();
  }
}

uint64_t sub_1D3013390(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_1D30E97CC() ^ 1) & 1;
  }
}

uint64_t sub_1D30133D8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_1D30E97CC() ^ 1) & 1;
  }
}

uint64_t sub_1D301342C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_1D30E97CC();
  }
}

unint64_t sub_1D3013450()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D30E948C();

  MEMORY[0x1D38B2610](v1, v2);
  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return 0xD000000000000024;
}

uint64_t sub_1D30134DC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D30E97CC();
  }
}

uint64_t sub_1D301350C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1D3014680(&qword_1EE313708, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  sub_1D30E8F1C();
}

unint64_t AppReviewRecord.description.getter()
{
  sub_1D30E948C();

  swift_getKeyPath();
  sub_1D3014680(&qword_1EE313710, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D3014680(&qword_1EE313708, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  sub_1D30E8F0C();

  MEMORY[0x1D38B2610](v0);

  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return 0xD000000000000020;
}

uint64_t type metadata accessor for AppReviewRecord(uint64_t a1)
{
  result = qword_1EE3136E0;
  if (!qword_1EE3136E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppReviewRecord.persistentBackingData.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  sub_1D2FE02DC(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t (*AppReviewRecord.persistentBackingData.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1D2FE022C(v1 + 16, v4);
  return sub_1D2FF5E50;
}

uint64_t *AppReviewRecord.__allocating_init(backingData:)(__int128 *a1)
{
  v2 = swift_allocObject();
  v2[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749AE0, &qword_1D30F2B48);
  sub_1D3014680(&qword_1EE313708, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  v2[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v2 + 2);
  sub_1D30E8ECC();
  sub_1D30E8AFC();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v2 + 2);
  sub_1D2FE02DC(a1, (v2 + 2));
  swift_endAccess();
  return v2;
}

uint64_t *AppReviewRecord.init(backingData:)(__int128 *a1)
{
  v1[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749AE0, &qword_1D30F2B48);
  sub_1D3014680(&qword_1EE313708, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  v1[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v1 + 2);
  sub_1D30E8ECC();
  sub_1D30E8AFC();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  sub_1D2FE02DC(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t AppReviewRecord.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AppReviewRecord___observationRegistrar;
  v2 = sub_1D30E8B0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AppReviewRecord.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AppReviewRecord___observationRegistrar;
  v2 = sub_1D30E8B0C();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t AppReviewRecord.hashValue.getter()
{
  sub_1D30E98AC();
  sub_1D3014680(&qword_1EE313700, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  sub_1D30E903C();
  return sub_1D30E98EC();
}

uint64_t *sub_1D3013CE0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  v4[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749AE0, &qword_1D30F2B48);
  v4[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v4 + 2);
  sub_1D30E8ECC();
  sub_1D30E8AFC();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v4 + 2);
  sub_1D2FE02DC(a1, (v4 + 2));
  swift_endAccess();
  return v4;
}

uint64_t (*sub_1D3013DD0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1D2FE022C(v1 + 16, v4);
  return sub_1D2FF8C70;
}

uint64_t sub_1D3013F4C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1D3014680(&qword_1EE313708, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);

  return MEMORY[0x1EEDD9288](v3, v4, v2, v5);
}

uint64_t _s29ManagedBackgroundAssetsHelper15AppReviewRecordC14schemaMetadataSay9SwiftData6SchemaC08PropertyI0VGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491B8, &qword_1D30EEB60);
  sub_1D30E8F8C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D30EE930;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491C0, &qword_1D30EEB90);
  sub_1D30E8FCC();
  *(swift_allocObject() + 16) = xmmword_1D30EE930;
  sub_1D30E8FBC();
  sub_1D30E8FDC();
  swift_allocObject();
  sub_1D30E8FEC();
  sub_1D3014680(&qword_1EE3140E0, MEMORY[0x1E697BD30], MEMORY[0x1E697BD28]);
  sub_1D30E8F7C();
  return v0;
}

unint64_t sub_1D30141E4()
{
  result = qword_1EC749AE8;
  if (!qword_1EC749AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749AE8);
  }

  return result;
}

uint64_t sub_1D30143F0(uint64_t a1)
{
  result = sub_1D30E8B0C();
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

uint64_t sub_1D30144C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D301450C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D301457C()
{
  result = qword_1EC749AF0;
  if (!qword_1EC749AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749AF0);
  }

  return result;
}

unint64_t sub_1D30145D4()
{
  result = qword_1EC749AF8;
  if (!qword_1EC749AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749AF8);
  }

  return result;
}

unint64_t sub_1D301462C()
{
  result = qword_1EC749B00;
  if (!qword_1EC749B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749B00);
  }

  return result;
}

uint64_t sub_1D3014680(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MBAManifestDataSource.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        return 0x6976655220707041;
      case 4:
        return 0xD000000000000012;
      case 5:
        return 0xD000000000000014;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        return 0x726F745320707041;
      case 1:
        return 0x67696C4674736554;
      case 2:
        return 0x6143206C61636F4CLL;
    }
  }

  result = sub_1D30E957C();
  __break(1u);
  return result;
}

unint64_t sub_1D301482C()
{
  result = qword_1EC749B08;
  if (!qword_1EC749B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749B10, &qword_1D30F2F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749B08);
  }

  return result;
}

unint64_t sub_1D3014958()
{
  result = qword_1EC749B18;
  if (!qword_1EC749B18)
  {
    type metadata accessor for ManifestDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749B18);
  }

  return result;
}

uint64_t sub_1D30149C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D3015860(&qword_1EE313D80, &unk_1D30F1C74);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D3015860(&qword_1EE313D78, &unk_1D30F1D30);
  sub_1D30E8F0C();

  *a2 = v4;
  return result;
}

uint64_t sub_1D3014AD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D3015860(&qword_1EE313D80, &unk_1D30F1C74);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D3015860(&qword_1EE313D78, &unk_1D30F1D30);
  sub_1D300C378();
  sub_1D30E8F0C();

  *a2 = v4;
  return result;
}

uint64_t sub_1D3014BE4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1D3015860(&qword_1EE313D80, &unk_1D30F1C74);
  sub_1D30E8ADC();
}

unint64_t sub_1D3014C94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B50, &qword_1D30F30E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D30EF4A0;
  v1 = sub_1D3015764();
  *(v0 + 32) = &type metadata for Schema1_0_0;
  *(v0 + 40) = v1;
  v2 = sub_1D30157B8();
  *(v0 + 48) = &type metadata for Schema1_0_1;
  *(v0 + 56) = v2;
  result = sub_1D301580C();
  *(v0 + 64) = &type metadata for Schema1_0_2;
  *(v0 + 72) = result;
  qword_1EE315350 = v0;
  return result;
}

char *sub_1D3014D18()
{
  result = sub_1D3014D38();
  qword_1EE3152E8 = result;
  return result;
}

char *sub_1D3014D38()
{
  v0 = sub_1D30E8E6C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = sub_1D3015764();
  v8 = sub_1D30157B8();
  *v6 = &type metadata for Schema1_0_0;
  v6[1] = v7;
  v6[2] = &type metadata for Schema1_0_1;
  v6[3] = v8;
  v26 = v8;
  v6[4] = sub_1D3014FB0;
  v6[5] = 0;
  v6[6] = sub_1D3015554;
  v6[7] = 0;
  v9 = *MEMORY[0x1E697BBB0];
  v24 = *(v1 + 104);
  v24(v6, v9, v0);
  v10 = sub_1D30D7E38(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1D30D7E38((v11 > 1), v12 + 1, 1, v10);
  }

  v25 = v12 + 1;
  *(v10 + 2) = v12 + 1;
  v15 = *(v1 + 32);
  v13 = v1 + 32;
  v14 = v15;
  v16 = (*(v13 + 48) + 32) & ~*(v13 + 48);
  v17 = *(v13 + 40);
  v15(&v10[v16 + v17 * v12], v6, v0);
  v18 = sub_1D301580C();
  v19 = v26;
  *v4 = &type metadata for Schema1_0_1;
  v4[1] = v19;
  v4[2] = &type metadata for Schema1_0_2;
  v4[3] = v18;
  v24(v4, *MEMORY[0x1E697BBA8], v0);
  v20 = *(v10 + 3);
  v21 = v12 + 2;
  if (v21 > (v20 >> 1))
  {
    v10 = sub_1D30D7E38((v20 > 1), v21, 1, v10);
  }

  *(v10 + 2) = v21;
  v14(&v10[v16 + v17 * v25], v4, v0);
  return v10;
}

uint64_t sub_1D3014FB0(uint64_t a1)
{
  v27 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B38, &qword_1D30F3080);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B40, &qword_1D30F3088);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  if (qword_1EC749020 != -1)
  {
    swift_once();
  }

  v9 = sub_1D30E8B3C();
  v29 = __swift_project_value_buffer(v9, qword_1EC749B20);
  v10 = sub_1D30E8B1C();
  v11 = sub_1D30E92BC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1D2FD9000, v10, v11, "Migrating the database from Schema 1.0.0 to Schema 1.0.1…", v12, 2u);
    MEMORY[0x1D38B3760](v12, -1, -1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B48, &qword_1D30F3090);
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  type metadata accessor for Schema1_0_0.LicenseRecord(0);
  v14 = sub_1D3015860(&qword_1EE313D78, &unk_1D30F1D30);
  sub_1D30E8EBC();
  v15 = sub_1D30E8E1C();
  result = (*(v6 + 8))(v8, v5);
  if (!v1)
  {
    v18 = v15;
    if (v15 >> 62)
    {
      result = sub_1D30E958C();
      v33 = 0;
      if (result)
      {
        goto LABEL_8;
      }
    }

    else
    {
      result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v33 = 0;
      if (result)
      {
LABEL_8:
        if (result < 1)
        {
          __break(1u);
          return result;
        }

        v19 = 0;
        v31 = v15 & 0xC000000000000001;
        *&v17 = 134217984;
        v26 = v17;
        v30 = v14;
        v28 = v15;
        v32 = result;
        do
        {
          if (v31)
          {
            v20 = MEMORY[0x1D38B29E0](v19, v18);
          }

          else
          {
            v20 = *(v18 + 8 * v19 + 32);
          }

          v34 = v20;
          swift_getKeyPath();
          sub_1D3015860(&qword_1EE313D80, &unk_1D30F1C74);
          sub_1D30E8AEC();

          swift_getKeyPath();
          sub_1D300C378();
          sub_1D30E8F0C();

          if (v34 == 1)
          {
            v21 = sub_1D30E927C();

            v22 = sub_1D30E8B1C();
            if (os_log_type_enabled(v22, v21))
            {
              v23 = swift_slowAlloc();
              *v23 = v26;
              v34 = v20;
              swift_getKeyPath();
              sub_1D30E8AEC();

              swift_getKeyPath();
              sub_1D30E8F0C();

              *(v23 + 4) = v34;

              _os_log_impl(&dword_1D2FD9000, v22, v21, "Marking the requested license with the ID “%llu” as “pending”…", v23, 0xCu);
              MEMORY[0x1D38B3760](v23, -1, -1);
            }

            else
            {
            }

            v34 = v20;
            KeyPath = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](KeyPath);
            *(&v26 - 2) = v20;
            *(&v26 - 1) = 0;
            v25 = v33;
            sub_1D30E8ADC();
            v33 = v25;

            v18 = v28;
          }

          else
          {
            sub_1D30158A4(v34);
          }

          ++v19;
        }

        while (v32 != v19);
      }
    }

    return sub_1D30E8E0C();
  }

  return result;
}

void sub_1D3015554()
{
  if (qword_1EC749020 != -1)
  {
    swift_once();
  }

  v0 = sub_1D30E8B3C();
  __swift_project_value_buffer(v0, qword_1EC749B20);
  v1 = sub_1D30E8B1C();
  v2 = sub_1D30E92BC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D2FD9000, v1, v2, "The database was migrated to Schema 1.0.1.", v3, 2u);
    MEMORY[0x1D38B3760](v3, -1, -1);
  }
}

uint64_t sub_1D3015634()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EC749B20);
  __swift_project_value_buffer(v0, qword_1EC749B20);
  return sub_1D30E8B2C();
}

uint64_t sub_1D3015700(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

unint64_t sub_1D3015764()
{
  result = qword_1EE313C68;
  if (!qword_1EE313C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE313C68);
  }

  return result;
}

unint64_t sub_1D30157B8()
{
  result = qword_1EE313B38;
  if (!qword_1EE313B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE313B38);
  }

  return result;
}

unint64_t sub_1D301580C()
{
  result = qword_1EE313B20;
  if (!qword_1EE313B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE313B20);
  }

  return result;
}

uint64_t sub_1D3015860(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Schema1_0_0.LicenseRecord(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D30158A4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

void sub_1D3015904()
{
  v1 = v0[4];
  v2 = v0[2];
  if (v2 < v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v1 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v0[1] < v2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*v0)
  {
    swift_arrayDestroy();

LABEL_12:
    JUMPOUT(0x1D38B3760);
  }
}

uint64_t sub_1D3015990(uint64_t result)
{
  v2 = v1[2];
  v3 = v2 + 1;
  v4 = __OFADD__(v2, 1);
  if (__OFADD__(v2, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = result;
  v6 = v1[3];
  if (v6 >= v3)
  {
LABEL_13:
    v8 = *v1 + 56 * v2;
    v9 = *(v5 + 16);
    *v8 = *v5;
    *(v8 + 16) = v9;
    *(v8 + 32) = *(v5 + 32);
    *(v8 + 48) = *(v5 + 48);
    if (!v4)
    {
      v1[2] = v3;
      return result;
    }

    goto LABEL_16;
  }

  if (v6 + 0x4000000000000000 >= 0)
  {
    if (2 * v6 <= v3)
    {
      v7 = v2 + 1;
    }

    else
    {
      v7 = 2 * v6;
    }

    result = sub_1D3040908(v7);
    v2 = v1[2];
    v3 = v2 + 1;
    v4 = __OFADD__(v2, 1);
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D3015A2C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  if (v3 < v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v4 > result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 <= result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = *v2;
  v6 = v2[1];
  v7 = (*v2 + 56 * result);
  v8 = *(v7 + 1);
  v9 = *(v7 + 2);
  *a2 = *v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = *(v7 + 24);
  *(a2 + 40) = *(v7 + 40);
  if (result < -1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (result < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v3 - 1;
  if (!v5)
  {
    goto LABEL_11;
  }

  v11 = result + 1;
  if (v3 == result + 1)
  {
    goto LABEL_11;
  }

  v12 = v3 - v11;
  if (v10 - result >= v12)
  {
    result = memmove(v7, (v5 + 56 * v11), 56 * v12);
LABEL_11:
    v2[2] = v10;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D3015B04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8F0C();

  *a2 = v4;
  return result;
}

uint64_t sub_1D3015C18(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8ADC();
}

unint64_t sub_1D3015CE8(uint64_t a1)
{
  v2 = sub_1D30E88CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(a1 + 16);
  if (result == 2)
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1D30E948C();
    MEMORY[0x1D38B2610](10256610, 0xA300000000000000);
    sub_1D30E955C();
    MEMORY[0x1D38B2610](0x20646E61209D80E2, 0xAB000000009C80E2);
    goto LABEL_8;
  }

  v7 = result - 1;
  if (result == 1)
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    MEMORY[0x1D38B2610](10256610, 0xA300000000000000);
LABEL_8:
    sub_1D30E955C();
    MEMORY[0x1D38B2610](10322146, 0xA300000000000000);
    return v21;
  }

  if (!result)
  {
    return result;
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  result = sub_1D3016694(1uLL, a1);
  v11 = (v10 >> 1) - v9;
  if (v10 >> 1 == v9)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v18[2] = result;
    v18[3] = v7;
    if ((v10 >> 1) <= v9)
    {
      __break(1u);
      return result;
    }

    v12 = v8;
    v13 = v9;
    v18[0] = a1;
    v18[1] = v3;
    v14 = v3 + 16;
    v15 = *(v3 + 16);
    v16 = *(v14 + 56);

    v17 = v12 + v13 * v16;
    do
    {
      v15(v5, v17, v2);
      v19 = 0;
      v20 = 0xE000000000000000;
      MEMORY[0x1D38B2610](10256610, 0xA300000000000000);
      sub_1D30E955C();
      (*(v14 - 8))(v5, v2);
      MEMORY[0x1D38B2610](0x202C9D80E2, 0xA500000000000000);
      MEMORY[0x1D38B2610](v19, v20);

      v17 += v16;
      --v11;
    }

    while (v11);
    swift_unknownObjectRelease();
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  MEMORY[0x1D38B2610](0x9C80E220646E61, 0xA700000000000000);
  sub_1D30E955C();
  MEMORY[0x1D38B2610](10322146, 0xA300000000000000);
  MEMORY[0x1D38B2610](v19, v20);

  return v21;
}

uint64_t sub_1D3016078(void *a1)
{
  result = a1[2];
  if (result)
  {
    if (result == 2)
    {
      sub_1D30E948C();
      MEMORY[0x1D38B2610](10256610, 0xA300000000000000);
      sub_1D30E955C();
      MEMORY[0x1D38B2610](0x20646E61209D80E2, 0xAB000000009C80E2);
    }

    else
    {
      v3 = result - 1;
      if (result != 1)
      {

        v4 = a1 + 5;
        do
        {

          MEMORY[0x1D38B2610](10256610, 0xA300000000000000);
          sub_1D30E955C();

          MEMORY[0x1D38B2610](0x202C9D80E2, 0xA500000000000000);
          MEMORY[0x1D38B2610](0, 0xE000000000000000);

          v4 += 2;
          --v3;
        }

        while (v3);
        swift_unknownObjectRelease();
        MEMORY[0x1D38B2610](0x9C80E220646E61, 0xA700000000000000);
        sub_1D30E955C();
        MEMORY[0x1D38B2610](10322146, 0xA300000000000000);
        MEMORY[0x1D38B2610](0, 0xE000000000000000);

        return 0;
      }

      MEMORY[0x1D38B2610](10256610, 0xA300000000000000);
    }

    sub_1D30E955C();
    MEMORY[0x1D38B2610](10322146, 0xA300000000000000);
    return 0;
  }

  return result;
}

uint64_t sub_1D3016354(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    if (result == 2)
    {
      sub_1D30E948C();
      MEMORY[0x1D38B2610](10256610, 0xA300000000000000);
      sub_1D30E955C();
      MEMORY[0x1D38B2610](0x20646E61209D80E2, 0xAB000000009C80E2);
    }

    else
    {
      v3 = result - 1;
      if (result != 1)
      {

        v4 = a1 + 72;
        do
        {

          MEMORY[0x1D38B2610](10256610, 0xA300000000000000);
          sub_1D30E955C();

          MEMORY[0x1D38B2610](0x202C9D80E2, 0xA500000000000000);
          MEMORY[0x1D38B2610](0, 0xE000000000000000);

          v4 += 48;
          --v3;
        }

        while (v3);
        swift_unknownObjectRelease();
        MEMORY[0x1D38B2610](0x9C80E220646E61, 0xA700000000000000);
        sub_1D30E955C();
        MEMORY[0x1D38B2610](10322146, 0xA300000000000000);
        MEMORY[0x1D38B2610](0, 0xE000000000000000);

        return 0;
      }

      MEMORY[0x1D38B2610](10256610, 0xA300000000000000);
    }

    sub_1D30E955C();
    MEMORY[0x1D38B2610](10322146, 0xA300000000000000);
    return 0;
  }

  return result;
}

unint64_t sub_1D3016694(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    if ((v3 - result) >= 1 && v3 < result)
    {
      __break(1u);
    }

    sub_1D30E88CC();
    return a2;
  }

  return result;
}

id sub_1D3016728()
{
  result = [objc_opt_self() defaultCenter];
  qword_1EC749B58 = result;
  return result;
}

uint64_t sub_1D3016764()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EE313888);
  __swift_project_value_buffer(v0, qword_1EE313888);
  return sub_1D30E8B2C();
}

uint64_t sub_1D30167E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  swift_defaultActor_initialize();
  *(v3 + 136) = sub_1D30347D0(MEMORY[0x1E69E7CC0]);
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v10 = sub_1D30E8B3C();
  __swift_project_value_buffer(v10, qword_1EE313888);
  v11 = sub_1D30E928C();

  v12 = sub_1D30E8B1C();

  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v13 = 136446722;
    type metadata accessor for ContainerManager();

    v14 = sub_1D30E909C();
    v16 = sub_1D2FFEA04(v14, v15, &v29);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    type metadata accessor for CertificateManager();

    v17 = sub_1D30E909C();
    v19 = sub_1D2FFEA04(v17, v18, &v29);

    *(v13 + 14) = v19;
    *(v13 + 22) = 2082;
    sub_1D30E8EAC();

    v20 = sub_1D30E909C();
    v22 = sub_1D2FFEA04(v20, v21, &v29);

    *(v13 + 24) = v22;
    _os_log_impl(&dword_1D2FD9000, v12, v11, "Init container manager: %{public}s certificate manager: %{public}s model container: %{public}s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v28, -1, -1);
    v23 = v13;
    v5 = v4;
    MEMORY[0x1D38B3760](v23, -1, -1);
  }

  v6[14] = a1;
  v6[15] = a2;
  v6[16] = a3;

  v24 = sub_1D30E8B1C();
  v25 = sub_1D30E92BC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1D2FD9000, v24, v25, "Starting App License Delivery…", v26, 2u);
    MEMORY[0x1D38B3760](v26, -1, -1);
  }

  sub_1D2FFDE08(sub_1D3029914);

  if (v5)
  {

    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      return v6;
    }

    __break(1u);
  }

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v6;
  }

  __break(1u);
  return result;
}

void *sub_1D3016B9C()
{
  v1 = v0;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8B3C();
  v3 = __swift_project_value_buffer(v2, qword_1EE313888);
  v4 = sub_1D30E928C();
  v5 = sub_1D30E8B1C();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D2FD9000, v5, v4, "Deinit", v6, 2u);
    MEMORY[0x1D38B3760](v6, -1, -1);
  }

  v7 = sub_1D30E8B1C();
  v8 = sub_1D30E92BC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D2FD9000, v7, v8, "Stopping App License Delivery…", v9, 2u);
    MEMORY[0x1D38B3760](v9, -1, -1);
  }

  sub_1D2FFDE08(sub_1D30298FC);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  sub_1D3015904();
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1D3016E84()
{
  sub_1D3016B9C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D3016ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 768) = v6;
  *(v7 + 760) = a5;
  *(v7 + 752) = a4;
  *(v7 + 744) = a3;
  *(v7 + 736) = a2;
  *(v7 + 728) = a1;
  *(v7 + 776) = type metadata accessor for LicenseRecord.ElementID(0);
  *(v7 + 784) = swift_task_alloc();
  v9 = sub_1D30E8A4C();
  *(v7 + 792) = v9;
  *(v7 + 800) = *(v9 - 8);
  *(v7 + 808) = swift_task_alloc();
  v10 = *(a6 + 112);
  *(v7 + 112) = *(a6 + 96);
  *(v7 + 128) = v10;
  *(v7 + 144) = *(a6 + 128);
  v11 = *(a6 + 48);
  *(v7 + 48) = *(a6 + 32);
  *(v7 + 64) = v11;
  v12 = *(a6 + 80);
  *(v7 + 80) = *(a6 + 64);
  *(v7 + 96) = v12;
  v13 = *(a6 + 16);
  *(v7 + 16) = *a6;
  *(v7 + 32) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D3017004, v6, 0);
}

uint64_t sub_1D3017004()
{
  v74 = v0;
  v1 = (v0 + 16);
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 752);
  v6 = sub_1D30E8B3C();
  __swift_project_value_buffer(v6, qword_1EE313888);
  v7 = sub_1D30E928C();
  v8 = *(v3 + 16);
  v8(v2, v5, v4);

  sub_1D2FE2E8C(v0 + 16, v0 + 152);
  v9 = sub_1D30E8B1C();

  sub_1D2FE2EC4(v0 + 16);
  v10 = os_log_type_enabled(v9, v7);
  v11 = *(v0 + 808);
  v12 = *(v0 + 800);
  v13 = *(v0 + 792);
  if (v10)
  {
    v58 = *(v0 + 760);
    v62 = v8;
    v14 = *(v0 + 744);
    v60 = v7;
    v15 = *(v0 + 736);
    v16 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v64 = v59;
    *v16 = 136446978;
    *(v16 + 4) = sub_1D2FFEA04(v15, v14, &v64);
    *(v16 + 12) = 2082;
    sub_1D302B150(&qword_1EC749490, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v17 = sub_1D30E977C();
    v19 = v18;
    (*(v12 + 8))(v11, v13);
    v20 = v17;
    v8 = v62;
    v21 = sub_1D2FFEA04(v20, v19, &v64);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2048;
    *(v16 + 24) = v58;
    *(v16 + 32) = 2082;
    v22 = *(v0 + 128);
    v71 = *(v0 + 112);
    v72 = v22;
    v73 = *(v0 + 144);
    v23 = *(v0 + 64);
    v67 = *(v0 + 48);
    v68 = v23;
    v24 = *(v0 + 96);
    v69 = *(v0 + 80);
    v70 = v24;
    v25 = *(v0 + 32);
    v65 = *v1;
    v66 = v25;
    sub_1D2FE2E8C(v0 + 16, v0 + 424);
    v26 = AppInfo.description.getter();
    v28 = v27;
    v29 = v72;
    *(v0 + 384) = v71;
    *(v0 + 400) = v29;
    *(v0 + 416) = v73;
    v30 = v68;
    *(v0 + 320) = v67;
    *(v0 + 336) = v30;
    v31 = v70;
    *(v0 + 352) = v69;
    *(v0 + 368) = v31;
    v32 = v66;
    *(v0 + 288) = v65;
    *(v0 + 304) = v32;
    sub_1D2FE2EC4(v0 + 288);
    v33 = sub_1D2FFEA04(v26, v28, &v64);

    *(v16 + 34) = v33;
    _os_log_impl(&dword_1D2FD9000, v9, v60, "Request license for asset pack with ID: %{public}s version ID: %{public}s internal version ID: %llu app info: %{public}s", v16, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v59, -1, -1);
    MEMORY[0x1D38B3760](v16, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v34 = *(v0 + 792);
  v35 = *(v0 + 784);
  v36 = *(v0 + 776);
  v37 = *(v0 + 760);
  v38 = *(v0 + 752);
  v39 = *(v0 + 744);
  v40 = *(v0 + 736);
  v41 = *(v0 + 88);
  *(v0 + 560) = *(v0 + 48);
  *(v0 + 576) = v41;
  v61 = *(v0 + 576);
  v63 = *(v0 + 560);
  v8(v35 + *(v36 + 20), v38, v34);
  *v35 = v63;
  *(v35 + 16) = v61;
  *(v35 + 32) = v40;
  *(v35 + 40) = v39;
  *(v35 + *(v36 + 24)) = v37;
  v43 = *(v0 + 144);
  switch(v43)
  {
    case 3:
      v50 = *(v0 + 784);
      v51 = *(v0 + 768);
      v52 = sub_1D302B150(&qword_1EC749C78, v42, type metadata accessor for LicenseManager, &unk_1D30F31D0);
      v53 = swift_task_alloc();
      *(v0 + 848) = v53;
      v53[2] = v51;
      v53[3] = v50;
      v53[4] = v1;

      sub_1D302B080(v0 + 560, v0 + 624);
      sub_1D302B0DC(v0 + 576, v0 + 640, &qword_1EC749310, &unk_1D30EF350);
      v54 = swift_task_alloc();
      *(v0 + 856) = v54;
      *v54 = v0;
      v54[1] = sub_1D30179A8;
      v55 = MEMORY[0x1E69E76D8];

      return MEMORY[0x1EEE6DE38](v0 + 720, v51, v52, 0xD000000000000047, 0x80000001D30EBFC0, sub_1D302B144, v53, v55);
    case 1:

      sub_1D302B080(v0 + 560, v0 + 656);
      sub_1D302B0DC(v0 + 576, v0 + 672, &qword_1EC749310, &unk_1D30EF350);
      v48 = swift_task_alloc();
      *(v0 + 832) = v48;
      *v48 = v0;
      v48[1] = sub_1D301787C;
      v45 = *(v0 + 784);
      v46 = *(v0 + 728);
      v47 = 1;
      goto LABEL_11;
    case 0:

      sub_1D302B080(v0 + 560, v0 + 688);
      sub_1D302B0DC(v0 + 576, v0 + 704, &qword_1EC749310, &unk_1D30EF350);
      v44 = swift_task_alloc();
      *(v0 + 816) = v44;
      *v44 = v0;
      v44[1] = sub_1D3017750;
      v45 = *(v0 + 784);
      v46 = *(v0 + 728);
      v47 = 0;
LABEL_11:

      return sub_1D3018E04(v46, v45, v47);
    default:
      type metadata accessor for LicenseManagerError(0);
      sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError, &unk_1D30F34AC);
      swift_allocError();
      *v56 = v43;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1D302B080(v0 + 560, v0 + 592);
      sub_1D302B0DC(v0 + 576, v0 + 608, &qword_1EC749310, &unk_1D30EF350);
      sub_1D302A30C(*(v0 + 784), type metadata accessor for LicenseRecord.ElementID);

      v57 = *(v0 + 8);

      return v57();
  }
}

uint64_t sub_1D3017750()
{
  v2 = *v1;
  *(*v1 + 824) = v0;

  v3 = *(v2 + 768);
  if (v0)
  {
    v4 = sub_1D3017FC4;
  }

  else
  {
    v4 = sub_1D302B66C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D301787C()
{
  v2 = *v1;
  *(*v1 + 840) = v0;

  v3 = *(v2 + 768);
  if (v0)
  {
    v4 = sub_1D301805C;
  }

  else
  {
    v4 = sub_1D302B66C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D30179A8()
{
  v2 = *v1;
  *(*v1 + 864) = v0;

  if (v0)
  {
    v3 = *(v2 + 768);
    v4 = sub_1D30180F4;
  }

  else
  {
    v5 = *(v2 + 768);

    v4 = sub_1D3017AD0;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D3017AD0()
{
  v1 = v0[90];
  v0[109] = v1;
  v2 = swift_task_alloc();
  v0[110] = v2;
  *v2 = v0;
  v2[1] = sub_1D3017B6C;

  return sub_1D3024BFC(v1);
}

uint64_t sub_1D3017B6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 888) = a1;
  *(v4 + 896) = v1;

  v5 = *(v3 + 768);
  if (v1)
  {
    v6 = sub_1D3018194;
  }

  else
  {
    v6 = sub_1D3017CA4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D3017CA4()
{
  if (v0[111])
  {
    if (qword_1EE3132E0 != -1)
    {
      swift_once();
    }

    type metadata accessor for AppLicenseDelivery.Isolation();
    sub_1D302B150(&qword_1EE3132D8, 255, type metadata accessor for AppLicenseDelivery.Isolation, &protocol conformance descriptor for AppLicenseDelivery.Isolation);
    v2 = sub_1D30E91AC();

    return MEMORY[0x1EEE6DFA0](sub_1D3017E8C, v2, v1);
  }

  else
  {
    v3 = v0[109];
    type metadata accessor for LicenseManagerError(0);
    sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError, &unk_1D30F34AC);
    swift_allocError();
    *v4 = v3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D302A30C(v0[98], type metadata accessor for LicenseRecord.ElementID);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1D3017E8C()
{
  v1 = *(v0 + 896);
  sub_1D2FFBA44(*(v0 + 760), *(v0 + 888), *(v0 + 728));
  *(v0 + 904) = v1;
  if (v1)
  {
    v2 = *(v0 + 768);
    v3 = sub_1D301822C;
  }

  else
  {
    v4 = *(v0 + 768);

    v3 = sub_1D3017F34;
    v2 = v4;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

uint64_t sub_1D3017F34()
{
  sub_1D302A30C(*(v0 + 784), type metadata accessor for LicenseRecord.ElementID);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3017FC4()
{
  sub_1D302A30C(*(v0 + 784), type metadata accessor for LicenseRecord.ElementID);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D301805C()
{
  sub_1D302A30C(*(v0 + 784), type metadata accessor for LicenseRecord.ElementID);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D30180F4()
{

  sub_1D302A30C(*(v0 + 784), type metadata accessor for LicenseRecord.ElementID);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3018194()
{
  sub_1D302A30C(*(v0 + 784), type metadata accessor for LicenseRecord.ElementID);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D301822C()
{

  sub_1D302A30C(*(v0 + 784), type metadata accessor for LicenseRecord.ElementID);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D30182CC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;
  v11 = type metadata accessor for LicenseRecord.ElementID(0);
  v32 = *(v11 - 8);
  v12 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C70, &qword_1D30F3368);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v32 - v15;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = sub_1D30E921C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1D302B574(a3, &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LicenseRecord.ElementID);
  (*(v8 + 16))(v10, v33, v7);
  v19 = sub_1D302B150(&qword_1EC749C78, v18, type metadata accessor for LicenseManager, &unk_1D30F31D0);
  v20 = *(v32 + 80);
  v32 = v7;
  v33 = v16;
  v21 = (v20 + 40) & ~v20;
  v22 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = v10;
  v24 = (*(v8 + 80) + v22 + 136) & ~*(v8 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = a2;
  *(v25 + 3) = v19;
  *(v25 + 4) = a2;
  sub_1D302B5DC(v13, &v25[v21], type metadata accessor for LicenseRecord.ElementID);
  v26 = &v25[v22];
  v27 = *(a4 + 112);
  *(v26 + 6) = *(a4 + 96);
  *(v26 + 7) = v27;
  *(v26 + 16) = *(a4 + 128);
  v28 = *(a4 + 48);
  *(v26 + 2) = *(a4 + 32);
  *(v26 + 3) = v28;
  v29 = *(a4 + 80);
  *(v26 + 4) = *(a4 + 64);
  *(v26 + 5) = v29;
  v30 = *(a4 + 16);
  *v26 = *a4;
  *(v26 + 1) = v30;
  (*(v8 + 32))(&v25[v24], v23, v32);
  swift_retain_n();
  sub_1D2FE2E8C(a4, v34);
  sub_1D3018B04(0, 0, v33, &unk_1D30F3410, v25);
}

uint64_t sub_1D301864C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B88, &unk_1D30F3240);
  v7[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30186F0, a4, 0);
}

uint64_t sub_1D30186F0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C18, &qword_1D30F32C0);
  v5 = *(type metadata accessor for LicenseRecord.ElementID(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v0[8] = v7;
  *(v7 + 16) = xmmword_1D30EE930;
  sub_1D302B574(v3, v7 + v6, type metadata accessor for LicenseRecord.ElementID);
  v8 = *(v4 + 32);
  v9 = *(v4 + 40);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
  v0[9] = v10;
  v11 = *(v10 - 8);
  (*(v11 + 16))(v1, v2, v10);
  (*(v11 + 56))(v1, 0, 1, v10);
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1D30188E8;
  v13 = v0[7];

  return sub_1D301AF0C(v7, v8, v9, v13);
}

uint64_t sub_1D30188E8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 88) = v0;

  sub_1D2FF14DC(v3, &qword_1EC749B88, &unk_1D30F3240);

  if (v0)
  {
    v5 = *(v2 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1D3018A8C, v5, 0);
  }

  else
  {

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_1D3018A8C()
{
  v0[2] = v0[11];
  sub_1D30E91CC();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D3018B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C70, &qword_1D30F3368);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D302B0DC(a3, v25 - v10, &qword_1EC749C70, &qword_1D30F3368);
  v12 = sub_1D30E921C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D2FF14DC(v11, &qword_1EC749C70, &qword_1D30F3368);
  }

  else
  {
    sub_1D30E920C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D30E91AC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D30E90AC() + 32;
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

      sub_1D2FF14DC(a3, &qword_1EC749C70, &qword_1D30F3368);

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

  sub_1D2FF14DC(a3, &qword_1EC749C70, &qword_1D30F3368);
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

uint64_t sub_1D3018E04(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 832) = v3;
  *(v4 + 777) = a3;
  *(v4 + 824) = a2;
  *(v4 + 816) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CA0, &qword_1D30F33C0);
  *(v4 + 840) = v5;
  *(v4 + 848) = *(v5 - 8);
  *(v4 + 856) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CA8, &qword_1D30F33C8);
  *(v4 + 864) = v6;
  *(v4 + 872) = *(v6 - 8);
  *(v4 + 880) = swift_task_alloc();
  v7 = type metadata accessor for LicenseRecord.ElementID(0);
  *(v4 + 888) = v7;
  *(v4 + 896) = *(v7 - 8);
  *(v4 + 904) = swift_task_alloc();
  *(v4 + 912) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3018FAC, v3, 0);
}

uint64_t sub_1D3018FAC()
{
  v47 = v0;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 912);
  v2 = *(v0 + 824);
  v3 = sub_1D30E8B3C();
  *(v0 + 920) = __swift_project_value_buffer(v3, qword_1EE313888);
  v4 = sub_1D30E928C();
  sub_1D302B574(v2, v1, type metadata accessor for LicenseRecord.ElementID);
  v5 = sub_1D30E8B1C();
  v6 = os_log_type_enabled(v5, v4);
  v7 = *(v0 + 912);
  if (v6)
  {
    v8 = *(v0 + 777);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v46[0] = v10;
    *v9 = 136446466;
    v11 = LicenseRecord.ElementID.description.getter();
    v13 = v12;
    sub_1D302A30C(v7, type metadata accessor for LicenseRecord.ElementID);
    v14 = sub_1D2FFEA04(v11, v13, v46);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2082;
    if (v8)
    {
      v15 = 0x67696C4674736554;
    }

    else
    {
      v15 = 0x726F745320707041;
    }

    if (v8)
    {
      v16 = 0xEA00000000007468;
    }

    else
    {
      v16 = 0xE900000000000065;
    }

    v17 = sub_1D2FFEA04(v15, v16, v46);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1D2FD9000, v5, v4, "Request license from Commerce with: %{public}s request type: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v10, -1, -1);
    MEMORY[0x1D38B3760](v9, -1, -1);
  }

  else
  {

    sub_1D302A30C(v7, type metadata accessor for LicenseRecord.ElementID);
  }

  v18 = *(v0 + 824);
  v19 = *v18;
  v20 = v18[1];
  objc_allocWithZone(MEMORY[0x1E69635F8]);

  *(v0 + 928) = sub_1D3028864(v19, v20, 1);
  *(v0 + 936) = 0;
  sub_1D302B574(*(v0 + 824), *(v0 + 904), type metadata accessor for LicenseRecord.ElementID);
  v21 = sub_1D30E8B1C();
  v22 = sub_1D30E92BC();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 904);
  if (v23)
  {
    v25 = *(v0 + 777);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v46[0] = v27;
    *v26 = 136446722;
    v28 = (v25 & 1) == 0;
    if (v25)
    {
      v29 = 97;
    }

    else
    {
      v29 = 28257;
    }

    if (v25)
    {
      v30 = 0xE100000000000000;
    }

    else
    {
      v30 = 0xE200000000000000;
    }

    if (v28)
    {
      v31 = 0x726F745320707041;
    }

    else
    {
      v31 = 0x67696C4674736554;
    }

    if (v28)
    {
      v32 = 0xE900000000000065;
    }

    else
    {
      v32 = 0xEA00000000007468;
    }

    v33 = sub_1D2FFEA04(v29, v30, v46);

    *(v26 + 4) = v33;
    *(v26 + 12) = 2082;
    v34 = sub_1D2FFEA04(v31, v32, v46);

    *(v26 + 14) = v34;
    *(v26 + 22) = 2082;
    v35 = LicenseRecord.ElementID.description.getter();
    v37 = v36;
    sub_1D302A30C(v24, type metadata accessor for LicenseRecord.ElementID);
    v38 = sub_1D2FFEA04(v35, v37, v46);

    *(v26 + 24) = v38;
    _os_log_impl(&dword_1D2FD9000, v21, v22, "Requesting from Commerce %{public}s %{public}s license with the element ID “%{public}s”…", v26, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v27, -1, -1);
    MEMORY[0x1D38B3760](v26, -1, -1);
  }

  else
  {

    sub_1D302A30C(v24, type metadata accessor for LicenseRecord.ElementID);
  }

  v39 = *(v0 + 896);
  v40 = *(v0 + 824);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C18, &qword_1D30F32C0);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v42 = swift_allocObject();
  *(v0 + 944) = v42;
  *(v42 + 16) = xmmword_1D30EE930;
  sub_1D302B574(v40, v42 + v41, type metadata accessor for LicenseRecord.ElementID);
  sub_1D30E91FC();
  *(v0 + 952) = sub_1D30E91EC();
  v44 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D3019558, v44, v43);
}

uint64_t sub_1D3019558()
{
  v1 = v0[117];

  v0[120] = sub_1D3025380();
  v0[121] = v1;
  v2 = v0[104];
  if (v1)
  {
    v3 = sub_1D301AAE0;
  }

  else
  {
    v3 = sub_1D30195F0;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

uint64_t sub_1D30195F0()
{
  v1 = *(v0[104] + 120);

  v2 = swift_task_alloc();
  v0[122] = v2;
  *v2 = v0;
  v2[1] = sub_1D30196A8;
  v3 = v0[120];
  v4 = v0[118];

  return sub_1D2FF97F0((v0 + 80), v4, v3, 0, v1);
}

uint64_t sub_1D30196A8()
{
  v2 = *v1;
  *(*v1 + 984) = v0;

  v3 = *(v2 + 832);
  if (v0)
  {
    v4 = sub_1D301AB84;
  }

  else
  {
    v4 = sub_1D30197D4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D30197D4(uint64_t a1)
{
  v2 = sub_1D30E927C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Fetching the bag…", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  v5 = v1[110];
  v6 = v1[109];
  v7 = v1[108];

  v8 = objc_opt_self();
  v1[124] = v8;
  v9 = sub_1D30E906C();
  v10 = sub_1D30E906C();
  v11 = [v8 bagForProfile:v9 profileVersion:v10 processInfo:0];

  v12 = sub_1D30E906C();
  v13 = [v11 URLForKey_];
  v1[125] = v13;

  v1[2] = v1;
  v1[7] = v1 + 98;
  v1[3] = sub_1D3019AD4;
  swift_continuation_init();
  v1[71] = v7;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v1 + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CB0, &unk_1D30F33D0);
  v1[126] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493E0, &qword_1D30EF530);
  sub_1D30E91BC();
  (*(v6 + 32))(boxed_opaque_existential_0Tm, v5, v7);
  v1[64] = MEMORY[0x1E69E9820];
  v1[65] = 1107296256;
  v1[66] = sub_1D30364EC;
  v1[67] = &block_descriptor_1;
  [v13 valueWithCompletion_];
  (*(v6 + 8))(boxed_opaque_existential_0Tm, v7);

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1D3019AD4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1016) = v2;
  v3 = *(v1 + 832);
  if (v2)
  {
    v4 = sub_1D301AC1C;
  }

  else
  {
    v4 = sub_1D3019BF4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D3019BF4()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 928);
  v3 = *(v0 + 784);
  *(v0 + 1024) = v3;

  sub_1D300AC00(v2);
  if (v4 == 4)
  {
    v5 = *(v0 + 928);
    type metadata accessor for HelperError(0);
    sub_1D302B150(&qword_1EE313E48, 255, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    v7 = v6;
    v8 = [v5 bundleIdentifier];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1D30E908C();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v40 = *(v0 + 928);
    *v7 = v10;
    v7[1] = v12;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    AppLicenseDelivery.Request.deinit();

    v41 = *(v0 + 8);

    return v41();
  }

  else
  {
    v13 = *(v0 + 992);
    v14 = *(v0 + 928);
    v15 = *(v0 + 848);
    v16 = *(v0 + 840);
    v44 = *(v0 + 856);
    v43 = *(v0 + 777);
    v17 = v4;
    v18 = sub_1D30E906C();
    v19 = sub_1D30E906C();
    v20 = [v13 bagForProfile:v18 profileVersion:v19 processInfo:0];

    v21 = [objc_allocWithZone(MEMORY[0x1E698CB88]) initWithBag_];
    *(v0 + 1032) = v21;

    [v21 setRequestEncoding_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CB8, &qword_1D30F33E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D30F3120;
    *(inited + 32) = 0x64692D6D616461;
    *(inited + 40) = 0xE700000000000000;
    v23 = [v14 iTunesMetadata];
    v24 = [v23 storeItemIdentifier];

    v25 = MEMORY[0x1E69E76D8];
    *(inited + 48) = v24;
    *(inited + 72) = v25;
    *(inited + 80) = 25705;
    v26 = MEMORY[0x1E69E6530];
    *(inited + 88) = 0xE200000000000000;
    *(inited + 96) = 1;
    *(inited + 120) = v26;
    *(inited + 128) = 0x2D65736E6563696CLL;
    *(inited + 136) = 0xEA00000000006469;
    *(v0 + 800) = *(v0 + 648);
    v27 = sub_1D30E977C();
    v28 = MEMORY[0x1E69E6158];
    *(inited + 144) = v27;
    *(inited + 152) = v29;
    *(inited + 168) = v28;
    *(inited + 176) = 0xD000000000000013;
    *(inited + 184) = 0x80000001D30EBF50;
    *(inited + 192) = sub_1D30E892C();
    *(inited + 200) = v30;
    *(inited + 216) = v28;
    *(inited + 224) = 0xD000000000000014;
    *(inited + 232) = 0x80000001D30EBF70;
    *(inited + 240) = sub_1D30E892C();
    *(inited + 248) = v31;
    *(inited + 264) = v28;
    *(inited + 272) = 0x6D726F6674616C70;
    *(inited + 280) = 0xE800000000000000;
    sub_1D303B7F4(v17);
    *(inited + 288) = sub_1D30E908C();
    *(inited + 296) = v32;
    *(inited + 312) = v28;
    *(inited + 320) = 0x2D74736575716572;
    v33 = 0x45524F5453;
    if (v43)
    {
      v33 = 0x47494C4654534554;
    }

    v34 = 0xE500000000000000;
    if (v43)
    {
      v34 = 0xEA00000000005448;
    }

    *(inited + 360) = v28;
    *(inited + 328) = 0xEC00000065707974;
    *(inited + 336) = v33;
    *(inited + 344) = v34;
    sub_1D30349B8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CC0, &qword_1D30F33E8);
    swift_arrayDestroy();
    v35 = sub_1D30E901C();

    v36 = [v21 requestWithMethod:4 URL:v3 parameters:v35];
    *(v0 + 1040) = v36;

    v37 = [objc_opt_self() defaultSession];
    v38 = [v37 dataTaskPromiseWithRequestPromise_];
    *(v0 + 1048) = v38;

    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 808;
    *(v0 + 88) = sub_1D301A2B0;
    swift_continuation_init();
    *(v0 + 632) = v16;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 608));
    sub_1D302AF74();
    sub_1D30E91BC();
    (*(v15 + 32))(boxed_opaque_existential_0Tm, v44, v16);
    *(v0 + 576) = MEMORY[0x1E69E9820];
    *(v0 + 584) = 1107296256;
    *(v0 + 592) = sub_1D30365A4;
    *(v0 + 600) = &block_descriptor_59;
    [v38 resultWithCompletion_];
    (*(v15 + 8))(boxed_opaque_existential_0Tm, v16);

    return MEMORY[0x1EEE6DEC8](v0 + 80);
  }
}

uint64_t sub_1D301A2B0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1056) = v2;
  v3 = *(v1 + 832);
  if (v2)
  {
    v4 = sub_1D301ACF8;
  }

  else
  {
    v4 = sub_1D301A3D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D301A3D0()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 984);
  v3 = *(v0 + 808);
  v4 = [v3 data];

  v5 = sub_1D30E893C();
  v7 = v6;

  *(v0 + 1064) = v5;
  *(v0 + 1072) = v7;
  sub_1D30E855C();
  swift_allocObject();
  *(v0 + 1080) = sub_1D30E854C();
  sub_1D302AFC0();
  sub_1D30E853C();
  *(v0 + 1088) = v2;
  if (v2)
  {
    v8 = *(v0 + 1040);
    v9 = *(v0 + 1032);
    v10 = *(v0 + 1024);
    v11 = *(v0 + 928);

    sub_1D2FF1804(v5, v7);

LABEL_5:
    AppLicenseDelivery.Request.deinit();

    v16 = *(v0 + 8);

    return v16();
  }

  v12 = *(v0 + 760);
  *(v0 + 1096) = v12;
  v13 = *(v0 + 768);
  *(v0 + 1104) = v13;
  if (*(v0 + 776))
  {
    v24 = *(v0 + 1040);
    v25 = *(v0 + 1032);
    v23 = *(v0 + 1024);
    v14 = *(v0 + 928);
    *(v0 + 780) = v12;
    sub_1D302B014();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v15 = v12;

    sub_1D302B068(v12, v13, 1);

    sub_1D2FF1804(v5, v7);

    goto LABEL_5;
  }

  v18 = *(v0 + 648);
  v19 = *(v0 + 656);
  *(v0 + 696) = *(v0 + 640);
  *(v0 + 704) = v18;
  *(v0 + 712) = v19;
  v20 = *(v0 + 680);
  *(v0 + 720) = *(v0 + 664);
  *(v0 + 736) = v20;
  sub_1D302B074(v12, v13, 0);
  sub_1D302B074(v12, v13, 0);
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D302B150(&qword_1EE3132D8, 255, type metadata accessor for AppLicenseDelivery.Isolation, &protocol conformance descriptor for AppLicenseDelivery.Isolation);
  v22 = sub_1D30E91AC();
  *(v0 + 1112) = v22;
  *(v0 + 1120) = v21;

  return MEMORY[0x1EEE6DFA0](sub_1D301A740, v22, v21);
}

uint64_t sub_1D301A740()
{
  v1 = v0[136];
  v0[141] = sub_1D2FFFAA0((v0 + 87), v0[137], v0[138]);
  v0[142] = v1;
  if (v1)
  {
    v2 = v0[104];
    sub_1D302B068(v0[137], v0[138], 0);
    v3 = sub_1D301A8CC;
    v4 = v2;
  }

  else
  {
    v4 = v0[104];
    v3 = sub_1D301A7F4;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1D301A824()
{
  v1 = *(v0 + 1136);
  sub_1D2FFBA44(*(v0 + 1144), *(v0 + 1128), *(v0 + 816));
  *(v0 + 1152) = v1;
  if (v1)
  {
    v2 = *(v0 + 832);
    v3 = sub_1D301ADF0;
  }

  else
  {
    v4 = *(v0 + 832);

    v3 = sub_1D301A9C4;
    v2 = v4;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

uint64_t sub_1D301A8CC()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1064);
  v5 = *(v0 + 1040);
  v6 = *(v0 + 1032);
  v7 = *(v0 + 1024);

  sub_1D302B068(v2, v1, 0);

  sub_1D2FF1804(v4, v3);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D301A9C4()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1064);
  v5 = *(v0 + 1040);
  v6 = *(v0 + 1032);
  v7 = *(v0 + 1024);

  sub_1D302B068(v2, v1, 0);
  sub_1D302B068(v2, v1, 0);

  sub_1D2FF1804(v4, v3);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D301AAE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D301AB84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D301AC1C(uint64_t a1)
{
  v2 = v1[125];
  v3 = v1[116];
  swift_willThrow();

  AppLicenseDelivery.Request.deinit();

  v4 = v1[1];

  return v4();
}

uint64_t sub_1D301ACF8(uint64_t a1)
{
  v2 = v1[131];
  v3 = v1[130];
  v4 = v1[129];
  v5 = v1[128];
  v6 = v1[116];
  swift_willThrow();

  AppLicenseDelivery.Request.deinit();

  v7 = v1[1];

  return v7();
}

uint64_t sub_1D301ADF0()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1064);
  v5 = *(v0 + 1040);
  v6 = *(v0 + 1032);
  v7 = *(v0 + 1024);

  sub_1D302B068(v2, v1, 0);
  sub_1D302B068(v2, v1, 0);

  sub_1D2FF1804(v4, v3);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D301AF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C70, &qword_1D30F3368);
  v5[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = type metadata accessor for LicenseRecord.ElementID(0);
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B88, &unk_1D30F3240);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D301B0F0, v4, 0);
}

uint64_t sub_1D301B0F0()
{
  v41 = v0;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[10];
  v3 = sub_1D30E8B3C();
  v0[24] = __swift_project_value_buffer(v3, qword_1EE313888);
  v4 = sub_1D30E928C();
  sub_1D302B0DC(v2, v1, &qword_1EC749B88, &unk_1D30F3240);

  v5 = sub_1D30E8B1C();

  v6 = os_log_type_enabled(v5, v4);
  v7 = v0[23];
  if (v6)
  {
    v8 = v0[22];
    v9 = v0[17];
    v10 = v0[8];
    v39 = v0[9];
    v11 = v0[7];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v40[0] = v13;
    *v12 = 136446722;
    v14 = MEMORY[0x1D38B26B0](v11, v9);
    v16 = sub_1D2FFEA04(v14, v15, v40);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_1D2FFEA04(v10, v39, v40);
    *(v12 + 22) = 2082;
    sub_1D302B0DC(v7, v8, &qword_1EC749B88, &unk_1D30F3240);
    v17 = sub_1D30E909C();
    v19 = v18;
    sub_1D2FF14DC(v7, &qword_1EC749B88, &unk_1D30F3240);
    v20 = sub_1D2FFEA04(v17, v19, v40);

    *(v12 + 24) = v20;
    _os_log_impl(&dword_1D2FD9000, v5, v4, "Request license from App Review with: %{public}s app bundle ID: %{public}s continuation: %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v13, -1, -1);
    MEMORY[0x1D38B3760](v12, -1, -1);
  }

  else
  {

    sub_1D2FF14DC(v7, &qword_1EC749B88, &unk_1D30F3240);
  }

  v21 = v0[7];
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v0[18];
    v24 = v0[19];
    v25 = v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v26 = *(v23 + 72);
    do
    {
      v27 = v0[19];
      v29 = v0[8];
      v28 = v0[9];
      sub_1D302B574(v25, v27, type metadata accessor for LicenseRecord.ElementID);
      v30 = *v27;
      v31 = v0[19];
      if (v30 == v29 && *(v24 + 8) == v28)
      {
        sub_1D302A30C(v0[19], type metadata accessor for LicenseRecord.ElementID);
      }

      else
      {
        v33 = sub_1D30E97CC();
        sub_1D302A30C(v31, type metadata accessor for LicenseRecord.ElementID);
        if ((v33 & 1) == 0)
        {
          v35 = v0[8];
          v34 = v0[9];
          type metadata accessor for LicenseManagerError(0);
          sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError, &unk_1D30F34AC);
          swift_allocError();
          *v36 = v35;
          v36[1] = v34;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          v37 = v0[1];

          return v37();
        }
      }

      v25 += v26;
      --v22;
    }

    while (v22);
  }

  return MEMORY[0x1EEE6DFA0](sub_1D301B570, 0, 0);
}

uint64_t sub_1D301B570()
{
  sub_1D30E91FC();
  *(v0 + 200) = sub_1D30E91EC();
  v2 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D301B604, v2, v1);
}

uint64_t sub_1D301B604()
{

  sub_1D301BC80((v0 + 40));
  v1 = *(v0 + 88);
  *(v0 + 208) = *(v0 + 40);
  *(v0 + 49) = *(v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1D301B744, v1, 0);
}

uint64_t sub_1D301B744()
{
  if (*(v0 + 49))
  {
    type metadata accessor for LicenseManagerError(0);
    sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError, &unk_1D30F34AC);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v1 = *(v0 + 8);
  }

  else
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 112);
    v4 = *(v0 + 120);
    sub_1D302B0DC(*(v0 + 80), v2, &qword_1EC749B88, &unk_1D30F3240);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_1D2FF14DC(*(v0 + 168), &qword_1EC749B88, &unk_1D30F3240);
    }

    else
    {
      (*(*(v0 + 120) + 32))(*(v0 + 128), *(v0 + 168), *(v0 + 112));
      v5 = sub_1D30E8B1C();
      v6 = sub_1D30E92BC();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = *(v0 + 208);
        v8 = swift_slowAlloc();
        *v8 = 134217984;
        *(v8 + 4) = v7;
        _os_log_impl(&dword_1D2FD9000, v5, v6, "Storing the provided continuation for the license ID “%llu”…", v8, 0xCu);
        MEMORY[0x1D38B3760](v8, -1, -1);
      }

      v9 = *(v0 + 208);
      v10 = *(v0 + 176);
      v12 = *(v0 + 120);
      v11 = *(v0 + 128);
      v13 = *(v0 + 112);

      (*(v12 + 16))(v10, v11, v13);
      (*(v12 + 56))(v10, 0, 1, v13);
      swift_beginAccess();
      sub_1D301D57C(v10, v9);
      swift_endAccess();
      (*(v12 + 8))(v11, v13);
    }

    v14 = *(v0 + 208);
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);
    v18 = sub_1D30E921C();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    v20 = sub_1D302B150(&qword_1EC749C78, v19, type metadata accessor for LicenseManager, &unk_1D30F31D0);
    v21 = swift_allocObject();
    v21[2] = v17;
    v21[3] = v20;
    v21[4] = v14;
    v21[5] = v17;
    v21[6] = v16;
    swift_retain_n();
    sub_1D302A758(0, 0, v15, 0, 0, &unk_1D30F3378, v21);

    sub_1D2FF14DC(v15, &qword_1EC749C70, &qword_1D30F3368);
    v22 = sub_1D30E8B1C();
    v23 = sub_1D30E92BC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 208);
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = v24;
      _os_log_impl(&dword_1D2FD9000, v22, v23, "Posting a license-request notification for the license with the ID “%llu” from App Review…", v25, 0xCu);
      MEMORY[0x1D38B3760](v25, -1, -1);
    }

    if (qword_1EC749028 != -1)
    {
      swift_once();
    }

    v26 = qword_1EC749B58;
    if (qword_1EC749048 != -1)
    {
      v28 = qword_1EC749B58;
      swift_once();
      v26 = v28;
    }

    [v26 postNotificationName:qword_1EC749F88 object:0];

    v1 = *(v0 + 8);
  }

  return v1();
}

uint64_t sub_1D301BC80@<X0>(void *a6@<X8>)
{
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_1D30E8E7C();
  MEMORY[0x1EEE9AC00](v6);
  sub_1D30E8DFC();

  if (!v9)
  {
    *a6 = 0;
    *(a6 + 8) = 1;
  }

  return result;
}

uint64_t sub_1D301BDD4(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v128 = a5;
  v127 = a4;
  v126 = a3;
  v139 = a2;
  v144 = type metadata accessor for LicenseRecord.ElementID(0);
  isa = v144[-1].isa;
  v6 = MEMORY[0x1EEE9AC00](v144);
  v143 = v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v147 = v124 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v124 - v10;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v12 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v14 = v124 - v13;
  v15 = sub_1D30E91FC();
  v129 = sub_1D30E91EC();
  v141 = v15;
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *(a1 + 128);
  sub_1D30E8E7C();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = type metadata accessor for LicenseRecord(0);
  v19 = a1;
  v20 = sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8EBC();
  v21 = v145;
  v22 = sub_1D30E8E1C();
  (*(v12 + 8))(v14, v142);
  v130 = v21;
  if (v21)
  {
  }

  v140 = v20;
  v131 = v18;
  v132 = v16;
  v124[1] = v19;

  v148 = MEMORY[0x1E69E7CC0];
  v125 = v22;
  if (v22 >> 62)
  {
    goto LABEL_88;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D30E958C())
  {
    v24 = v147;
    v25 = v139;
    if (!i)
    {
      break;
    }

    v19 = 0;
    v14 = v125 & 0xC000000000000001;
    v137 = (v125 + 32);
    v138 = v125 & 0xFFFFFFFFFFFFFF8;
    v133 = v125 & 0xC000000000000001;
    v134 = i;
    while (1)
    {
      while (1)
      {
        if (v14)
        {
          v26 = MEMORY[0x1D38B29E0](v19, v125);
          v27 = __OFADD__(v19++, 1);
          if (v27)
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v19 >= *(v138 + 16))
          {
            goto LABEL_86;
          }

          v26 = v137[v19].isa;

          v27 = __OFADD__(v19++, 1);
          if (v27)
          {
LABEL_29:
            __break(1u);
LABEL_30:
            v36 = v148;
            goto LABEL_32;
          }
        }

        v142 = sub_1D30E91EC();
        sub_1D30E91AC();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v154 = v26;
        swift_getKeyPath();
        sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D302A5D8();
        sub_1D30E8F0C();

        v28 = v154;
        v29 = v154[2];
        if (v29 == *(v25 + 16))
        {
          break;
        }

        if (v19 == i)
        {
          goto LABEL_30;
        }
      }

      v135 = v26;
      v136 = v19;
      if (v29)
      {
        if (v154 != v139)
        {
          break;
        }
      }

LABEL_23:

      sub_1D30E950C();
      sub_1D30E953C();
      sub_1D30E954C();
      sub_1D30E951C();
LABEL_24:
      v25 = v139;
      v14 = v133;
      i = v134;
      v19 = v136;
      if (v136 == v134)
      {
        goto LABEL_30;
      }
    }

    v14 = 0;
    v30 = (*(isa + 80) + 32) & ~*(isa + 80);
    v145 = (v154 + v30);
    v31 = v139 + v30;
    while (v14 < v28[2])
    {
      v32 = *(isa + 9) * v14;
      sub_1D302B574(v145 + v32, v24, type metadata accessor for LicenseRecord.ElementID);
      if (v29 == v14)
      {
        goto LABEL_85;
      }

      v33 = v143;
      sub_1D302B574(v31 + v32, v143, type metadata accessor for LicenseRecord.ElementID);
      v34 = v144;
      v19 = *(v24 + SLODWORD(v144[3].isa));
      sub_1D302A30C(v24, type metadata accessor for LicenseRecord.ElementID);
      v35 = *(v33 + SLODWORD(v34[3].isa));
      sub_1D302A30C(v33, type metadata accessor for LicenseRecord.ElementID);
      if (v19 != v35)
      {

        v24 = v147;
        goto LABEL_24;
      }

      ++v14;
      v24 = v147;
      if (v29 == v14)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

  v36 = MEMORY[0x1E69E7CC0];
LABEL_32:

  v37 = v131;
  if (v36 < 0 || (v36 & 0x4000000000000000) != 0)
  {
    v38 = sub_1D30E958C();
    v39 = v140;
    if (v38)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v38 = *(v36 + 16);
    v39 = v140;
    if (v38)
    {
LABEL_35:
      v40 = 0;
      v142 = v36 & 0xC000000000000001;
      v137 = v38;
      v138 = v36;
      do
      {
        if (v142)
        {
          v42 = MEMORY[0x1D38B29E0](v40, v36);
          v41 = v42;
          v43 = (v40 + 1);
          if (__OFADD__(v40, 1))
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v40 >= *(v36 + 16))
          {
            goto LABEL_87;
          }

          v41 = *(v36 + 8 * v40 + 32);

          v43 = (v40 + 1);
          if (__OFADD__(v40, 1))
          {
LABEL_46:
            __break(1u);
LABEL_47:
            v144 = v14;
            v142 = v42;
            if (v43)
            {
            }

            else
            {

              sub_1D2FF804C(v38, v36, v19, v39, v41, v37);
            }

            v45 = v139;

            v46 = v142;
            v148 = v142;
            swift_getKeyPath();
            sub_1D30E8AEC();

            swift_getKeyPath();
            sub_1D30E8F0C();

            v47 = (v153 >> 60) & 3;
            if (v47)
            {
              if (v47 == 1)
              {
                v48 = 0x65726576696C6564;
                goto LABEL_54;
              }

              v49 = 0xE700000000000000;
              v48 = 0x676E69646E6570;
            }

            else
            {
              v48 = 0x6574736575716572;
LABEL_54:
              sub_1D2FF804C(v148, v149, v150, v151, v152, v153);
              v49 = 0xE900000000000064;
            }

            v50 = *(v45 + 16);
            v145 = v48;
            if (v50)
            {
              v51 = 115;
              if (v50 == 1)
              {
                v51 = 0;
              }

              v138 = v51;
              if (v50 == 1)
              {
                v52 = 0xE000000000000000;
              }

              else
              {
                v52 = 0xE100000000000000;
              }

              if (qword_1EE313880 != -1)
              {
                swift_once();
              }

              v53 = sub_1D30E8B3C();
              __swift_project_value_buffer(v53, qword_1EE313888);
              swift_retain_n();

              v54 = sub_1D30E8B1C();
              v55 = sub_1D30E92BC();

              LODWORD(v141) = v55;
              if (os_log_type_enabled(v54, v55))
              {
                v137 = v54;
                v56 = swift_slowAlloc();
                v136 = swift_slowAlloc();
                v148 = v136;
                *v56 = 136447746;
                v57 = sub_1D2FFEA04(v145, v49, &v148);

                *(v56 + 4) = v57;
                *(v56 + 12) = 2048;
                v154 = v46;
                swift_getKeyPath();
                sub_1D30E8AEC();

                swift_getKeyPath();
                sub_1D30E8F0C();

                *(v56 + 14) = v154;

                *(v56 + 22) = 2082;
                v58 = v138;
                *(v56 + 24) = sub_1D2FFEA04(v138, v52, &v148);
                *(v56 + 32) = 2082;
                if (v50 == 1)
                {
                  v59 = 0;
                }

                else
                {
                  v59 = 0x6974636570736572;
                }

                if (v50 == 1)
                {
                  v60 = 0xE000000000000000;
                }

                else
                {
                  v60 = 0xEB00000000206576;
                }

                v61 = sub_1D2FFEA04(v59, v60, &v148);

                *(v56 + 34) = v61;
                *(v56 + 42) = 2082;
                v62 = sub_1D2FFEA04(v58, v52, &v148);

                *(v56 + 44) = v62;
                v145 = v56;
                *(v56 + 52) = 2082;
                v154 = MEMORY[0x1E69E7CC0];
                sub_1D3028BC4(0, v50, 0);
                v63 = v154;
                v64 = v139 + ((*(isa + 80) + 32) & ~*(isa + 80));
                v65 = *(isa + 9);
                do
                {
                  v66 = v147;
                  sub_1D302B574(v64, v147, type metadata accessor for LicenseRecord.ElementID);
                  v67 = *(v66 + 32);
                  v68 = *(v66 + 40);

                  sub_1D302A30C(v66, type metadata accessor for LicenseRecord.ElementID);
                  v154 = v63;
                  v70 = v63[2];
                  v69 = v63[3];
                  if (v70 >= v69 >> 1)
                  {
                    sub_1D3028BC4((v69 > 1), v70 + 1, 1);
                    v63 = v154;
                  }

                  v63[2] = v70 + 1;
                  v71 = &v63[2 * v70];
                  v71[4] = v67;
                  v71[5] = v68;
                  v64 += v65;
                  --v50;
                }

                while (v50);
                v78 = sub_1D3016078(v63);
                v80 = v79;

                v81 = sub_1D2FFEA04(v78, v80, &v148);

                v82 = v145;
                *(v145 + 54) = v81;
                *(v82 + 62) = 2082;
                *(v82 + 64) = sub_1D2FFEA04(v126, v127, &v148);
                v83 = v137;
                _os_log_impl(&dword_1D2FD9000, v137, v141, "Reusing the existing, %{public}s license with the ID “%llu” for the asset pack%{public}s with the %{public}sID%{public}s %{public}s that are associated with the app with the bundle ID “%{public}s”…", v82, 0x48u);
                v84 = v136;
                swift_arrayDestroy();
                MEMORY[0x1D38B3760](v84, -1, -1);
                MEMORY[0x1D38B3760](v82, -1, -1);

                v85 = v128;
                v46 = v142;
              }

              else
              {

                v85 = v128;
              }
            }

            else
            {
              if (qword_1EE313880 != -1)
              {
                swift_once();
              }

              v72 = sub_1D30E8B3C();
              __swift_project_value_buffer(v72, qword_1EE313888);

              v73 = sub_1D30E8B1C();
              v74 = sub_1D30E92BC();

              if (os_log_type_enabled(v73, v74))
              {
                v75 = swift_slowAlloc();
                v76 = swift_slowAlloc();
                v148 = v76;
                *v75 = 136446466;
                v77 = sub_1D2FFEA04(v145, v49, &v148);

                *(v75 + 4) = v77;
                *(v75 + 12) = 2048;
                v154 = v46;
                swift_getKeyPath();
                sub_1D30E8AEC();
                v46 = v142;

                swift_getKeyPath();
                sub_1D30E8F0C();

                *(v75 + 14) = v154;

                _os_log_impl(&dword_1D2FD9000, v73, v74, "Reusing the existing, %{public}s license with the ID “%llu”…", v75, 0x16u);
                __swift_destroy_boxed_opaque_existential_1(v76);
                MEMORY[0x1D38B3760](v76, -1, -1);
                MEMORY[0x1D38B3760](v75, -1, -1);
              }

              else
              {
              }

              v85 = v128;
            }

            v148 = v46;
            swift_getKeyPath();
            sub_1D30E8AEC();

            swift_getKeyPath();
            sub_1D30E8F0C();

            v86 = v148;
LABEL_119:
            *v85 = v86;
            *(v85 + 8) = 0;
          }
        }

        v144 = v43;
        v145 = sub_1D30E91EC();
        sub_1D30E91AC();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v44 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper13LicenseRecord___observationRegistrar;
        v154 = v41;
        swift_getKeyPath();
        v14 = sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
        v143 = v44;
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D2FF7FF8();
        sub_1D30E8F0C();

        v38 = v148;
        v36 = v149;
        v42 = v41;
        v19 = v150;
        v39 = v151;
        v41 = v152;
        v37 = v153;
        v43 = ((v153 >> 60) & 3);
        if (v43 != 1)
        {
          goto LABEL_47;
        }

        sub_1D2FF804C(v38, v36, v19, v39, v41, v37);

        ++v40;
        v38 = v137;
        v36 = v138;
        v39 = v140;
        v37 = v131;
      }

      while (v144 != v137);
    }
  }

  v87 = v130;
  v88 = sub_1D3025380();
  v130 = v87;
  if (!v87)
  {
    v89 = v88;
    swift_allocObject();
    v90 = v139;

    v91 = sub_1D2FF5928(v89, v90);
    sub_1D30E8E7C();
    sub_1D30E8E4C();

    v92 = *(v90 + 16);
    if (v92)
    {
      if (v92 == 1)
      {
        v93 = 0;
      }

      else
      {
        v93 = 115;
      }

      if (v92 == 1)
      {
        v94 = 0xE000000000000000;
      }

      else
      {
        v94 = 0xE100000000000000;
      }

      if (qword_1EE313880 != -1)
      {
        swift_once();
      }

      v95 = sub_1D30E8B3C();
      __swift_project_value_buffer(v95, qword_1EE313888);
      swift_retain_n();

      v96 = sub_1D30E8B1C();
      v97 = sub_1D30E92BC();

      if (os_log_type_enabled(v96, v97))
      {
        LODWORD(v143) = v97;
        v144 = v96;
        v98 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v148 = v141;
        *v98 = 134219266;
        v154 = v91;
        swift_getKeyPath();
        sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        *(v98 + 4) = v154;
        v145 = v91;

        *(v98 + 12) = 2082;
        *(v98 + 14) = sub_1D2FFEA04(v93, v94, &v148);
        *(v98 + 22) = 2082;
        if (v92 == 1)
        {
          v99 = 0;
        }

        else
        {
          v99 = 0x6974636570736572;
        }

        if (v92 == 1)
        {
          v100 = 0xE000000000000000;
        }

        else
        {
          v100 = 0xEB00000000206576;
        }

        v101 = sub_1D2FFEA04(v99, v100, &v148);

        *(v98 + 24) = v101;
        *(v98 + 32) = 2082;
        v102 = sub_1D2FFEA04(v93, v94, &v148);

        *(v98 + 34) = v102;
        v142 = v98;
        *(v98 + 42) = 2082;
        v154 = MEMORY[0x1E69E7CC0];
        sub_1D3028BC4(0, v92, 0);
        v103 = v154;
        v104 = v139 + ((*(isa + 80) + 32) & ~*(isa + 80));
        v105 = *(isa + 9);
        do
        {
          v106 = v147;
          sub_1D302B574(v104, v147, type metadata accessor for LicenseRecord.ElementID);
          v107 = *(v106 + 32);
          v108 = *(v106 + 40);

          sub_1D302A30C(v106, type metadata accessor for LicenseRecord.ElementID);
          v154 = v103;
          v110 = v103[2];
          v109 = v103[3];
          if (v110 >= v109 >> 1)
          {
            sub_1D3028BC4((v109 > 1), v110 + 1, 1);
            v103 = v154;
          }

          v103[2] = v110 + 1;
          v111 = &v103[2 * v110];
          v111[4] = v107;
          v111[5] = v108;
          v104 += v105;
          --v92;
        }

        while (v92);
        v116 = sub_1D3016078(v103);
        v118 = v117;

        v119 = sub_1D2FFEA04(v116, v118, &v148);

        v120 = v142;
        *(v142 + 44) = v119;
        *(v120 + 52) = 2082;
        *(v120 + 54) = sub_1D2FFEA04(v126, v127, &v148);
        v121 = v144;
        _os_log_impl(&dword_1D2FD9000, v144, v143, "Saving a record of a pending license with the ID “%llu” for the asset pack%{public}s with the %{public}sID%{public}s %{public}s that are associated with the app with the bundle ID “%{public}s” to the database…", v120, 0x3Eu);
        v122 = v141;
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v122, -1, -1);
        MEMORY[0x1D38B3760](v120, -1, -1);

        v91 = v145;
      }

      else
      {
      }
    }

    else
    {
      if (qword_1EE313880 != -1)
      {
        swift_once();
      }

      v112 = sub_1D30E8B3C();
      __swift_project_value_buffer(v112, qword_1EE313888);

      v113 = sub_1D30E8B1C();
      v114 = sub_1D30E92BC();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 134217984;
        v148 = v91;
        swift_getKeyPath();
        sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        *(v115 + 4) = v148;

        _os_log_impl(&dword_1D2FD9000, v113, v114, "Saving a record of the pending license with the ID “%llu” to the database…", v115, 0xCu);
        MEMORY[0x1D38B3760](v115, -1, -1);
      }

      else
      {
      }
    }

    v148 = v91;
    swift_getKeyPath();
    sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    v86 = v148;
    v85 = v128;
    goto LABEL_119;
  }
}

uint64_t sub_1D301D57C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B88, &unk_1D30F3240);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1D2FF14DC(a1, &qword_1EC749B88, &unk_1D30F3240);
    v13 = sub_1D3032654(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D3033F9C();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_1D3029588(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D2FF14DC(v8, &qword_1EC749B88, &unk_1D30F3240);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1D30338DC(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1D301D7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_1D30E934C();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C80, &qword_1D30F3398);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D301D8E0, a5, 0);
}

uint64_t sub_1D301D8E0()
{
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313888);
  v2 = sub_1D30E8B1C();
  v3 = sub_1D30E92BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D2FD9000, v2, v3, "Awaiting a license-response notification for the license with the ID “%llu”…", v5, 0xCu);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v6 = *(v0 + 72);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 16);
  v14 = *(v0 + 24);

  (*(v8 + 56))(v6, 1, 1, v7);
  sub_1D302B150(&qword_1EC749C78, v10, type metadata accessor for LicenseManager, &unk_1D30F31D0);
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v9;
  *(v11 + 32) = v14;
  v12 = swift_task_alloc();
  *(v0 + 88) = v12;
  *v12 = v0;
  v12[1] = sub_1D301DB1C;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1D301DB1C()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1D301DC48, v1, 0);
}

uint64_t sub_1D301DC48()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  sub_1D302B0DC(v0[9], v1, &qword_1EC749C80, &qword_1D30F3398);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1D2FF14DC(v0[8], &qword_1EC749C80, &qword_1D30F3398);
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[8], v0[5]);
    if (qword_1EC749028 != -1)
    {
      swift_once();
    }

    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];
    sub_1D30E933C();
    (*(v5 + 8))(v4, v6);
  }

  sub_1D2FF14DC(v0[9], &qword_1EC749C80, &qword_1D30F3398);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D301DDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v29 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C88, &qword_1D30F33A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C80, &qword_1D30F3398);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - v14;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = a4;
  if (qword_1EC749028 != -1)
  {
    swift_once();
  }

  v26 = qword_1EC749B58;
  v16 = type metadata accessor for LicenseResponseMessage.Subject();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtCV29ManagedBackgroundAssetsHelper22LicenseResponseMessage7Subject_licenseID] = a3;
  v30.receiver = v17;
  v30.super_class = v16;
  v18 = objc_msgSendSuper2(&v30, sel_init);
  (*(v9 + 16))(v12, a1, v8);
  v19 = a3;
  v20 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v21 = (v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  (*(v9 + 32))(v22 + v20, v12, v8);
  v23 = v28;
  *(v22 + v21) = v27;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  sub_1D302AE74();

  sub_1D30E931C();

  v24 = sub_1D30E934C();
  (*(*(v24 - 8) + 56))(v15, 0, 1, v24);
  return sub_1D302AEC8(v15, v29);
}

uint64_t sub_1D301E0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D301E0D8, 0, 0);
}

uint64_t sub_1D301E0D8()
{
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313888);
  v2 = sub_1D30E8B1C();
  v3 = sub_1D30E92BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D2FD9000, v2, v3, "A license-response notification for the license with the ID “%llu” was received.", v5, 0xCu);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v6 = *(v0 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C88, &qword_1D30F33A0);
  sub_1D30E91DC();

  return MEMORY[0x1EEE6DFA0](sub_1D301E224, v6, 0);
}

uint64_t sub_1D301E224()
{
  sub_1D3025038(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D301E288(uint64_t a1, char a2)
{
  *(v3 + 688) = a2;
  *(v3 + 424) = a1;
  *(v3 + 432) = v2;
  *(v3 + 440) = *v2;
  *(v3 + 448) = *(type metadata accessor for LicenseRecord.ElementID(0) - 8);
  *(v3 + 456) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D301E370, v2, 0);
}

uint64_t sub_1D301E370()
{
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  *(v0 + 464) = __swift_project_value_buffer(v1, qword_1EE313888);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Next request", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  v5 = sub_1D30E8B1C();
  v6 = sub_1D30E92BC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D2FD9000, v5, v6, "Checking for submitted yet unfulfilled license requests…", v7, 2u);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1D301E4F8, 0, 0);
}

uint64_t sub_1D301E4F8()
{
  *(v0 + 472) = sub_1D30E91FC();
  *(v0 + 480) = sub_1D30E91EC();
  v2 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D301E590, v2, v1);
}

uint64_t sub_1D301E590()
{

  sub_1D301F9F0(v0 + 28);
  v0[61] = 0;
  v1 = v0[54];

  return MEMORY[0x1EEE6DFA0](sub_1D301E62C, v1, 0);
}

uint64_t sub_1D301E62C(uint64_t a1)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 232);
  *(v1 + 496) = v2;
  *(v1 + 504) = v3;
  v4 = *(v1 + 240);
  v5 = *(v1 + 248);
  *(v1 + 512) = v4;
  *(v1 + 520) = v5;
  v6 = *(v1 + 256);
  v7 = *(v1 + 264);
  *(v1 + 528) = v6;
  *(v1 + 536) = v7;
  if (!v3)
  {
    *(v1 + 568) = *(v1 + 488);
    v18 = sub_1D30E8B1C();
    v19 = sub_1D30E92BC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D2FD9000, v18, v19, "Checking for pending licenses…", v20, 2u);
      MEMORY[0x1D38B3760](v20, -1, -1);
    }

    v17 = sub_1D301EC38;
    goto LABEL_9;
  }

  v8 = *(v1 + 488);
  v9 = *(v1 + 432);
  *(v1 + 128) = v2;
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  *(v1 + 160) = v6;
  *(v1 + 168) = v7;
  swift_beginAccess();
  v10 = *(v9 + 144);
  v11 = *(v9 + 160);
  *(v1 + 352) = *(v9 + 176);
  *(v1 + 320) = v10;
  *(v1 + 336) = v11;
  sub_1D2FDCF94((v1 + 320), (v1 + 128));
  LOBYTE(v9) = v12;
  *(v1 + 544) = v8;
  sub_1D302A3D4(v2, v3, v4, v5, v6, v7);
  v13 = sub_1D30E8B1C();
  v14 = sub_1D30E92BC();
  v15 = os_log_type_enabled(v13, v14);
  if (v9)
  {
    if (v15)
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = v2;
      _os_log_impl(&dword_1D2FD9000, v13, v14, "The submitted yet unfulfilled request for the license with the ID “%llu” is stale; removing the record of the license from the database…", v16, 0xCu);
      MEMORY[0x1D38B3760](v16, -1, -1);
    }

    v17 = sub_1D301E978;
LABEL_9:

    return MEMORY[0x1EEE6DFA0](v17, 0, 0);
  }

  if (v15)
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = v2;
    _os_log_impl(&dword_1D2FD9000, v13, v14, "Resubmitting a request for the license with the ID “%llu”…", v21, 0xCu);
    MEMORY[0x1D38B3760](v21, -1, -1);
  }

  v22 = *(v1 + 424);
  sub_1D302A36C(v2, v3, v4, v5, v6, v7);

  *v22 = v2;
  v22[1] = v3;
  v22[2] = v4;
  v22[3] = v5;
  v22[4] = v6;
  v22[5] = v7;

  v23 = *(v1 + 8);

  return v23();
}

uint64_t sub_1D301E914()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D301E978()
{
  *(v0 + 552) = sub_1D30E91EC();
  v2 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D301EA04, v2, v1);
}

uint64_t sub_1D301EA04()
{
  v1 = v0[68];
  v2 = v0[54];

  sub_1D30200D8(v2, (v0 + 16));
  v0[70] = v1;
  if (v1)
  {
    v3 = v0[54];
    sub_1D302A36C(v0[62], v0[63], v0[64], v0[65], v0[66], v0[67]);
    v4 = sub_1D301EBBC;
    v5 = v3;
  }

  else
  {
    v5 = v0[54];
    v4 = sub_1D301EAC4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1D301EAC4()
{
  sub_1D302A36C(v0[62], v0[63], v0[64], v0[65], v0[66], v0[67]);
  v0[71] = v0[70];
  v1 = sub_1D30E8B1C();
  v2 = sub_1D30E92BC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D2FD9000, v1, v2, "Checking for pending licenses…", v3, 2u);
    MEMORY[0x1D38B3760](v3, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1D301EC38, 0, 0);
}

uint64_t sub_1D301EBBC()
{
  sub_1D302A36C(v0[62], v0[63], v0[64], v0[65], v0[66], v0[67]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D301EC38()
{
  *(v0 + 576) = sub_1D30E91EC();
  v2 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D301ECC4, v2, v1);
}

uint64_t sub_1D301ECC4()
{
  v1 = *(v0 + 568);

  sub_1D3020828((v0 + 408));
  *(v0 + 584) = v1;
  v2 = *(v0 + 432);
  if (v1)
  {
    v3 = sub_1D301F2D0;
  }

  else
  {
    *(v0 + 592) = *(v0 + 408);
    v3 = sub_1D301ED6C;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

uint64_t sub_1D301ED6C(uint64_t a1)
{
  v56 = v1;
  v2 = *(v1 + 600);
  if (!v2)
  {
    v18 = sub_1D30E8B1C();
    v19 = sub_1D30E92BC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D2FD9000, v18, v19, "There aren’t any pending licenses.", v20, 2u);
      MEMORY[0x1D38B3760](v20, -1, -1);
    }

    v21 = *(v1 + 424);
    sub_1D302A36C(*(v1 + 496), *(v1 + 504), *(v1 + 512), *(v1 + 520), *(v1 + 528), *(v1 + 536));

    v21[1] = 0u;
    v21[2] = 0u;
    *v21 = 0u;

    v22 = *(v1 + 8);
    goto LABEL_26;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    v23 = *(v1 + 536);
    v24 = *(v1 + 528);
    v25 = *(v1 + 520);
    v27 = *(v1 + 504);
    v26 = *(v1 + 512);
    v28 = *(v1 + 496);

    type metadata accessor for LicenseManagerError(0);
    sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError, &unk_1D30F34AC);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v29 = v28;
    v30 = v27;
    v31 = v26;
    v32 = v25;
    v33 = v24;
    v34 = v23;
    goto LABEL_25;
  }

  v4 = *(v1 + 448);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v2 + v5);
  v7 = *(v2 + v5 + 8);

  v8 = v3 - 1;
  if (!v8)
  {
LABEL_4:

    swift_bridgeObjectRetain_n();
    v9 = sub_1D30E8B1C();
    v10 = sub_1D30E92BC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v1 + 592);
      v12 = *(v1 + 688);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v55 = v14;
      *v13 = 136446466;
      if (v12)
      {
        v15 = 0x20636974617473;
      }

      else
      {
        v15 = 0;
      }

      if (v12)
      {
        v16 = 0xE700000000000000;
      }

      else
      {
        v16 = 0xE000000000000000;
      }

      v17 = sub_1D2FFEA04(v15, v16, &v55);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2048;

      *(v13 + 14) = v11;

      _os_log_impl(&dword_1D2FD9000, v9, v10, "Submitting a request for the %{public}slicense with the ID “%llu”…", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1D38B3760](v14, -1, -1);
      MEMORY[0x1D38B3760](v13, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v50 = *(*(v1 + 432) + 120);

    v51 = swift_task_alloc();
    *(v1 + 608) = v51;
    *v51 = v1;
    v51[1] = sub_1D301F34C;
    v52 = *(v1 + 592);
    v53 = *(v1 + 688);

    return sub_1D2FF97F0(v1 + 72, v2, v52, v53, v50);
  }

  v35 = *(v1 + 456);
  v36 = *(v4 + 72);
  v37 = v2 + v36 + v5;
  while (1)
  {
    v38 = *(v1 + 456);
    sub_1D302B574(v37, v38, type metadata accessor for LicenseRecord.ElementID);
    v39 = *v38;
    v40 = *(v1 + 456);
    if (v39 != v6 || *(v35 + 8) != v7)
    {
      break;
    }

    sub_1D302A30C(*(v1 + 456), type metadata accessor for LicenseRecord.ElementID);
LABEL_18:
    v37 += v36;
    if (!--v8)
    {
      goto LABEL_4;
    }
  }

  v42 = sub_1D30E97CC();
  sub_1D302A30C(v40, type metadata accessor for LicenseRecord.ElementID);
  if (v42)
  {
    goto LABEL_18;
  }

  v54 = *(v1 + 536);
  v43 = *(v1 + 528);
  v44 = *(v1 + 520);
  v46 = *(v1 + 504);
  v45 = *(v1 + 512);
  v47 = *(v1 + 496);
  swift_bridgeObjectRelease_n();

  type metadata accessor for LicenseManagerError(0);
  sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError, &unk_1D30F34AC);
  swift_allocError();
  *v48 = 0;
  v48[1] = 0;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v29 = v47;
  v30 = v46;
  v31 = v45;
  v32 = v44;
  v33 = v43;
  v34 = v54;
LABEL_25:
  sub_1D302A36C(v29, v30, v31, v32, v33, v34);

  v22 = *(v1 + 8);
LABEL_26:

  return v22();
}

uint64_t sub_1D301F2D0()
{
  sub_1D302A36C(v0[62], v0[63], v0[64], v0[65], v0[66], v0[67]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D301F34C()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  v3 = *(v2 + 432);
  if (v0)
  {
    v4 = sub_1D301F8B4;
  }

  else
  {
    v4 = sub_1D301F478;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D301F478()
{
  v1 = v0[10];
  v2 = v0[11];
  v0[78] = v1;
  v0[79] = v2;
  v3 = v0[12];
  v4 = v0[13];
  v0[80] = v3;
  v0[81] = v4;
  v5 = v0[14];
  v6 = v0[15];
  v0[82] = v5;
  v0[22] = v1;
  v0[83] = v6;
  v0[23] = v2;
  v0[24] = v3;
  v0[25] = v4;
  v0[26] = v5;
  v0[27] = v6;

  sub_1D302A25C((v0 + 22), (v0 + 34));

  sub_1D2FF17B0(v3, v4);
  sub_1D2FF17B0(v5, v6);
  v0[84] = sub_1D30E91EC();
  v8 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D301F588, v8, v7);
}

uint64_t sub_1D301F588()
{
  v1 = v0[77];
  v2 = v0[75];
  v3 = v0[74];
  v5 = v0[54];
  v4 = v0[55];

  sub_1D3025A6C(v3, v5, v3, v2, (v0 + 22), v4);
  v0[85] = v1;
  v6 = v0[54];
  if (v1)
  {
    v7 = sub_1D301F93C;
  }

  else
  {
    v7 = sub_1D301F644;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D301F644()
{
  v36 = v0;
  v1 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 104);
  *(v0 + 64) = *(v0 + 120);
  swift_beginAccess();
  sub_1D3015990(v0 + 16);
  swift_endAccess();

  v2 = sub_1D30E8B1C();
  v3 = sub_1D30E92BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 592);
    v33 = *(v0 + 528);
    v34 = *(v0 + 536);
    v31 = *(v0 + 512);
    v32 = *(v0 + 520);
    v30 = *(v0 + 504);
    v5 = *(v0 + 496);
    v6 = *(v0 + 688);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35 = v8;
    *v7 = 136446466;
    if (v6)
    {
      v9 = 0x20636974617473;
    }

    else
    {
      v9 = 0;
    }

    if (v6)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = 0xE000000000000000;
    }

    v11 = sub_1D2FFEA04(v9, v10, &v35);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;

    *(v7 + 14) = v4;

    _os_log_impl(&dword_1D2FD9000, v2, v3, "A request for the %{public}slicense with the ID “%llu” was submitted.", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
    v12 = v5;
    v13 = v30;
    v14 = v31;
    v15 = v32;
    v16 = v33;
    v17 = v34;
  }

  else
  {
    v18 = *(v0 + 536);
    v19 = *(v0 + 528);
    v20 = *(v0 + 520);
    v22 = *(v0 + 504);
    v21 = *(v0 + 512);
    v23 = *(v0 + 496);
    swift_bridgeObjectRelease_n();
    v12 = v23;
    v13 = v22;
    v14 = v21;
    v15 = v20;
    v16 = v19;
    v17 = v18;
  }

  sub_1D302A36C(v12, v13, v14, v15, v16, v17);

  v24 = *(v0 + 632);
  v25 = *(v0 + 424);
  v26 = *(v0 + 640);
  v27 = *(v0 + 656);
  *v25 = *(v0 + 624);
  *(v25 + 8) = v24;
  *(v25 + 16) = v26;
  *(v25 + 32) = v27;

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1D301F8B4()
{
  sub_1D302A36C(v0[62], v0[63], v0[64], v0[65], v0[66], v0[67]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D301F93C()
{
  sub_1D302A36C(v0[62], v0[63], v0[64], v0[65], v0[66], v0[67]);
  sub_1D302A2B8((v0 + 22));

  AppLicenseDelivery.Request.deinit();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D301F9F0@<X0>(void *a1@<X8>)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v40 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - v6;
  v8 = sub_1D30E91FC();
  v47 = sub_1D30E91EC();
  v51 = v8;
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D30E8E7C();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C60, &qword_1D30F3330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C68, &qword_1D30F3338);
  *(swift_allocObject() + 16) = xmmword_1D30EE910;
  swift_getKeyPath();
  sub_1D302B150(&qword_1EE313FC0, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  sub_1D30E86CC();
  swift_getKeyPath();
  sub_1D30E86CC();
  type metadata accessor for LicenseRecord(0);
  v10 = sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8EBC();
  v11 = v50;
  v12 = sub_1D30E8E1C();
  v13 = v11;
  (*(v5 + 8))(v7, v4);
  if (v11)
  {
  }

  if (v12 >> 62)
  {
LABEL_29:
    v50 = v12 & 0xFFFFFFFFFFFFFF8;
    v15 = sub_1D30E958C();
    v44 = v13;
    if (v15)
    {
LABEL_7:
      v48 = v10;
      v10 = 0;
      v49 = v12 & 0xC000000000000001;
      v16 = MEMORY[0x1E69E7CC0];
      do
      {
        v45 = v16;
        v17 = v10;
        while (1)
        {
          if (v49)
          {
            v18 = MEMORY[0x1D38B29E0](v17, v12);
            v10 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              goto LABEL_27;
            }
          }

          else
          {
            if (v17 >= *(v50 + 16))
            {
              goto LABEL_28;
            }

            v18 = *(v12 + 8 * v17 + 32);

            v10 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
LABEL_27:
              __break(1u);
LABEL_28:
              __break(1u);
              goto LABEL_29;
            }
          }

          v19 = v15;
          v13 = sub_1D30E91EC();
          sub_1D30E91AC();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v58 = v18;
          swift_getKeyPath();
          sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
          sub_1D30E8AEC();

          swift_getKeyPath();
          sub_1D2FF7FF8();
          sub_1D30E8F0C();

          if ((v57 & 0x3000000000000000) == 0)
          {
            break;
          }

          sub_1D2FF804C(v52, v53, v54, v55, v56, v57);

          ++v17;
          if (v10 == v15)
          {
            v16 = v45;
            goto LABEL_31;
          }
        }

        v42 = v53;
        v43 = v52;
        v20 = v54;
        v41 = v55;
        v21 = v56;
        v22 = v57;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1D30D7E60(0, *(v45 + 2) + 1, 1, v45);
        }

        v24 = *(v45 + 2);
        v23 = *(v45 + 3);
        v13 = v24 + 1;
        v25 = v41;
        v26 = v42;
        v27 = v43;
        if (v24 >= v23 >> 1)
        {
          v32 = sub_1D30D7E60((v23 > 1), v24 + 1, 1, v45);
          v25 = v41;
          v26 = v42;
          v30 = v20;
          v29 = v21;
          v28 = v22;
          v16 = v32;
          v27 = v43;
        }

        else
        {
          v28 = v22;
          v29 = v21;
          v30 = v20;
          v16 = v45;
        }

        *(v16 + 2) = v13;
        v31 = &v16[48 * v24];
        *(v31 + 4) = v27;
        *(v31 + 5) = v26;
        *(v31 + 6) = v30;
        *(v31 + 7) = v25;
        *(v31 + 8) = v29;
        *(v31 + 9) = v28;
        v15 = v19;
      }

      while (v10 != v19);
      goto LABEL_31;
    }
  }

  else
  {
    v50 = v12 & 0xFFFFFFFFFFFFFF8;
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v44 = 0;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_31:

  if (*(v16 + 2))
  {
    v34 = *(v16 + 4);
    v33 = *(v16 + 5);
    v35 = *(v16 + 6);
    v36 = *(v16 + 7);
    v37 = *(v16 + 8);
    v38 = *(v16 + 9);

    sub_1D2FF17B0(v35, v36);
    sub_1D2FF17B0(v37, v38);
  }

  else
  {
    v34 = 0;
    v33 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
  }

  v39 = v46;

  *v39 = v34;
  v39[1] = v33;
  v39[2] = v35;
  v39[3] = v36;
  v39[4] = v37;
  v39[5] = v38;
  return result;
}

uint64_t sub_1D30200D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D30E8E7C();
  v7 = type metadata accessor for LicenseRecord(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v11[-2] = a2;
  v11[1] = v8;
  sub_1D30E8ACC();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8E2C();
  sub_1D2FF14DC(v6, &qword_1EC749B68, &unk_1D30FD150);
  if (!v2)
  {

    sub_1D30E8E7C();
    sub_1D30E8E0C();
  }
}

uint64_t sub_1D302032C@<X0>(__int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C20, &qword_1D30F32C8);
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C28, &qword_1D30F32D0);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749BA8, &qword_1D30F3258);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749BB0, &qword_1D30F3260);
  v26 = *(v14 - 8);
  v27 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  sub_1D30E91FC();
  v25 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D2FF1768(&qword_1EC749BB8, &qword_1EC749BA8, &qword_1D30F3258, MEMORY[0x1E6968DA8]);
  sub_1D30E87BC();
  swift_getKeyPath();
  sub_1D30E876C();

  (*(v11 + 8))(v13, v10);
  v17 = a2[1];
  v33 = *a2;
  v34 = v17;
  v35 = a2[2];
  sub_1D30E87AC();
  swift_getKeyPath();
  sub_1D2FF1768(&qword_1EC749C30, &qword_1EC749C20, &qword_1D30F32C8, MEMORY[0x1E6968D20]);
  v18 = v29;
  sub_1D30E876C();

  (*(v28 + 8))(v6, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C38, &qword_1D30F32F8);
  v20 = v30;
  v30[3] = v19;
  v20[4] = sub_1D302A444(&qword_1EC749C40, &qword_1EC749C38, &qword_1D30F32F8, sub_1D302A4C8);
  __swift_allocate_boxed_opaque_existential_0Tm(v20);
  v21 = MEMORY[0x1E6968D58];
  sub_1D2FF1768(&qword_1EC749BE8, &qword_1EC749BB0, &qword_1D30F3260, MEMORY[0x1E6968D58]);
  sub_1D2FF1768(&qword_1EC749C58, &qword_1EC749C28, &qword_1D30F32D0, v21);
  v22 = v27;
  v23 = v32;
  sub_1D30E875C();
  (*(v31 + 8))(v9, v23);
  (*(v26 + 8))(v16, v22);
}

uint64_t sub_1D3020828@<X0>(uint64_t *a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  v9 = sub_1D30E91FC();
  v30 = sub_1D30E91EC();
  v38 = v9;
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D30E8E7C();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  type metadata accessor for LicenseRecord(0);
  v11 = sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8EBC();
  v12 = sub_1D30E8E1C();
  (*(v6 + 8))(v8, v5);
  if (v1)
  {
  }

  v28 = 0;
  if (v12 >> 62)
  {
LABEL_25:
    v14 = sub_1D30E958C();
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_26:

    v25 = 0;
    v26 = 0;
    goto LABEL_27;
  }

  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_26;
  }

LABEL_7:
  v15 = 0;
  v36 = v12 & 0xFFFFFFFFFFFFFF8;
  v37 = v12 & 0xC000000000000001;
  v34 = v12;
  v35 = v11;
  v33 = v14;
  while (v37)
  {
    v16 = MEMORY[0x1D38B29E0](v15, v12);
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_20;
    }

LABEL_12:
    v39 = sub_1D30E91EC();
    sub_1D30E91AC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v18 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper13LicenseRecord___observationRegistrar;
    v46 = v16;
    swift_getKeyPath();
    v31 = sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
    v32 = v18;
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D2FF7FF8();
    sub_1D30E8F0C();

    v19 = v40;
    v20 = v41;
    v21 = v42;
    v22 = v43;
    v24 = v44;
    v23 = v45;
    if ((v45 & 0x3000000000000000) == 0x2000000000000000 && !(v41 | v40 | v42 | v43 | v44) && v45 == 0x2000000000000000)
    {
      goto LABEL_21;
    }

    sub_1D2FF804C(v19, v20, v21, v22, v24, v23);

    ++v15;
    v12 = v34;
    v11 = v35;
    if (v17 == v33)
    {
      goto LABEL_26;
    }
  }

  if (v15 >= *(v36 + 16))
  {
    __break(1u);
    goto LABEL_25;
  }

  v16 = *(v12 + 8 * v15 + 32);

  v17 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_12;
  }

LABEL_20:
  __break(1u);
LABEL_21:

  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v40 = v16;
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30E8F0C();

  v25 = v40;
  v40 = v16;
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D302A5D8();
  sub_1D30E8F0C();

  v26 = v40;
LABEL_27:
  v27 = v29;
  *v29 = v25;
  v27[1] = v26;
  return result;
}

uint64_t sub_1D3020E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D2FF7FF8();
  sub_1D30E8F0C();

  if ((v17 & 0x3000000000000000) == 0x2000000000000000 && !(*(&v14 + 1) | v14 | v15 | *(&v15 + 1) | v16) && v17 == 0x2000000000000000)
  {
    if (qword_1EE313880 != -1)
    {
      swift_once();
    }

    v6 = sub_1D30E8B3C();
    __swift_project_value_buffer(v6, qword_1EE313888);

    v7 = sub_1D30E8B1C();
    v8 = sub_1D30E92BC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = a2;

      _os_log_impl(&dword_1D2FD9000, v7, v8, "Marking the license with the ID “%llu” as having been requested…", v9, 0xCu);
      MEMORY[0x1D38B3760](v9, -1, -1);
    }

    else
    {
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D30E8ADC();
  }

  else
  {
    sub_1D2FF804C(v14, *(&v14 + 1), v15, *(&v15 + 1), v16, v17);
    type metadata accessor for LicenseManagerError(0);
    sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError, &unk_1D30F34AC);
    swift_allocError();
    v11 = v10;
    *&v14 = a1;
    swift_getKeyPath();
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    swift_getKeyPath();
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    *v11 = v14;
    *(v11 + 16) = v15;
    *(v11 + 32) = v16;
    *(v11 + 40) = v17;
    *(v11 + 48) = a1;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_1D30212D4(uint64_t a1, uint64_t a2)
{
  v3[33] = a2;
  v3[34] = v2;
  v3[32] = a1;
  v3[35] = *v2;
  type metadata accessor for AssetPackHost(0);
  v3[36] = swift_task_alloc();
  v4 = sub_1D30E8A4C();
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();
  v5 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  v3[40] = v5;
  v3[41] = *(v5 - 8);
  v3[42] = swift_task_alloc();
  v6 = type metadata accessor for LicenseRecord.ElementID(0);
  v3[43] = v6;
  v3[44] = *(v6 - 8);
  v3[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30214A4, v2, 0);
}

uint64_t sub_1D30214A4()
{
  v52 = v0;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  v0[46] = __swift_project_value_buffer(v1, qword_1EE313888);
  v2 = sub_1D30E928C();

  v3 = sub_1D30E8B1C();

  if (os_log_type_enabled(v3, v2))
  {
    v4 = v0[40];
    v5 = v0[33];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v51 = v7;
    *v6 = 136446210;
    v8 = MEMORY[0x1D38B26B0](v5, v4);
    v10 = sub_1D2FFEA04(v8, v9, &v51);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "New static request for: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D38B3760](v7, -1, -1);
    MEMORY[0x1D38B3760](v6, -1, -1);
  }

  v11 = v0[33];
  v12 = *(v11 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v42 = v0[44];
    v43 = v0[45];
    v40 = v0[42];
    v41 = v0[43];
    v14 = v0[41];
    v44 = v0[40];
    v15 = v0[38];
    v51 = MEMORY[0x1E69E7CC0];
    sub_1D3028BE4(0, v12, 0);
    v13 = v51;
    v16 = v11 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v38 = (v15 + 8);
    v39 = (v15 + 32);
    v36 = v0;
    v37 = *(v14 + 72);
    while (1)
    {
      v17 = v0[42];
      v18 = v0[36];
      sub_1D302B574(v16, v17, type metadata accessor for AssetPackRecord.StaticRepresentation);
      sub_1D302B574(v17 + *(v44 + 20), v18, type metadata accessor for AssetPackHost);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C00, &qword_1D30F34F0);
      if ((*(*(v19 - 8) + 48))(v18, 1, v19) == 1)
      {
        break;
      }

      v49 = v12;
      v50 = v13;
      v20 = v0[45];
      v21 = v0[42];
      v22 = v0[39];
      v23 = v0[36];
      v24 = v0[37];
      v48 = *(v23 + *(v19 + 64));
      v25 = *v39;
      (*v39)(v22, v23 + *(v19 + 48), v24);
      (*v38)(v23, v24);
      v26 = v40[1];
      v46 = v40[2];
      v47 = *v21;
      v27 = v40[3];
      v45 = v40[4];
      v28 = v40[5];

      sub_1D302A30C(v21, type metadata accessor for AssetPackRecord.StaticRepresentation);
      v25(&v20[*(v41 + 20)], v22, v24);
      *v20 = v47;
      v43[1] = v26;
      v43[2] = v46;
      v43[3] = v27;
      v43[4] = v45;
      v43[5] = v28;
      *&v20[*(v41 + 24)] = v48;
      v13 = v50;
      v51 = v50;
      v30 = *(v50 + 16);
      v29 = *(v50 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1D3028BE4((v29 > 1), v30 + 1, 1);
        v13 = v51;
      }

      v0 = v36;
      v31 = v36[45];
      *(v13 + 16) = v30 + 1;
      sub_1D302B5DC(v31, v13 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v30, type metadata accessor for LicenseRecord.ElementID);
      v16 += v37;
      --v12;
      if (v49 == 1)
      {
        goto LABEL_11;
      }
    }

    v32 = v0[42];
    sub_1D302A30C(v0[36], type metadata accessor for AssetPackHost);
    type metadata accessor for LicenseManagerError(0);
    sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError, &unk_1D30F34AC);
    swift_allocError();
    sub_1D302B574(v32, v33, type metadata accessor for AssetPackRecord.StaticRepresentation);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D302A30C(v32, type metadata accessor for AssetPackRecord.StaticRepresentation);

    v34 = v0[1];

    return v34();
  }

  else
  {
LABEL_11:
    v0[47] = v13;

    return MEMORY[0x1EEE6DFA0](sub_1D3021A40, 0, 0);
  }
}

uint64_t sub_1D3021A40()
{
  *(v0 + 384) = sub_1D30E91FC();
  *(v0 + 392) = sub_1D30E91EC();
  v2 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D3021AD8, v2, v1);
}

uint64_t sub_1D3021AD8()
{
  v1 = v0[47];

  sub_1D3022214(v1, v0 + 31);
  v2 = v0[34];
  v0[50] = v0[31];

  return MEMORY[0x1EEE6DFA0](sub_1D3021BEC, v2, 0);
}

uint64_t sub_1D3021BEC()
{
  v1 = *(v0[34] + 120);

  v2 = swift_task_alloc();
  v0[51] = v2;
  *v2 = v0;
  v2[1] = sub_1D3021CA4;
  v3 = v0[50];
  v4 = v0[47];

  return sub_1D2FF97F0((v0 + 9), v4, v3, 1, v1);
}

uint64_t sub_1D3021CA4()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 272);
  if (v0)
  {
    v4 = sub_1D30220EC;
  }

  else
  {
    v4 = sub_1D3021DD0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D3021DD0()
{
  *(v0 + 128) = *(v0 + 80);
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  *(v0 + 136) = *(v0 + 88);
  *(v0 + 144) = v1;
  *(v0 + 152) = v2;
  *(v0 + 160) = v3;
  *(v0 + 168) = v4;
  v5 = *(v0 + 72);
  v6 = *(v0 + 88);
  v7 = *(v0 + 104);
  *(v0 + 64) = v4;
  *(v0 + 32) = v6;
  *(v0 + 48) = v7;
  *(v0 + 16) = v5;
  swift_beginAccess();

  sub_1D2FF17B0(v1, v2);
  sub_1D2FF17B0(v3, v4);
  sub_1D3015990(v0 + 16);
  swift_endAccess();
  v8 = sub_1D30E8B1C();
  v9 = sub_1D30E92BC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 400);
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v10;
    _os_log_impl(&dword_1D2FD9000, v8, v9, "A request for the static license with the ID “%llu” was submitted.", v11, 0xCu);
    MEMORY[0x1D38B3760](v11, -1, -1);
  }

  sub_1D302A25C(v0 + 128, v0 + 176);
  *(v0 + 424) = sub_1D30E91EC();
  v13 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D3021F98, v13, v12);
}

uint64_t sub_1D3021F98()
{
  v1 = v0[52];
  v2 = v0[50];
  v4 = v0[34];
  v3 = v0[35];

  sub_1D302606C(v2, v4, v2, v0 + 16, v3);
  v0[54] = v1;
  v5 = v0[34];
  if (v1)
  {
    v6 = sub_1D302217C;
  }

  else
  {
    v6 = sub_1D3022048;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D3022048()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 128);
  v3 = *(v0 + 160);
  v1[1] = *(v0 + 144);
  v1[2] = v3;
  *v1 = v2;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D30220EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D302217C()
{
  sub_1D302A2B8(v0 + 128);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3022214@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for LicenseRecord.ElementID(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v68 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D30E91FC();
  v8 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_1D3025380();
  if (v2)
  {
  }

  v10 = v9;
  v70 = v6;
  v66 = v8;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v65 = a2;
  v11 = sub_1D30E8B3C();
  __swift_project_value_buffer(v11, qword_1EE313888);
  v12 = sub_1D30E8B1C();
  v13 = sub_1D30E92BC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v10;
    _os_log_impl(&dword_1D2FD9000, v12, v13, "Submitting a request for the static license with the ID “%llu”…", v14, 0xCu);
    MEMORY[0x1D38B3760](v14, -1, -1);
  }

  type metadata accessor for LicenseRecord(0);
  swift_allocObject();

  v15 = sub_1D2FF5928(v10, a1);
  sub_1D30E8E7C();
  sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8E4C();

  sub_1D30E8E7C();
  sub_1D30E8E0C();
  v63 = v10;
  v64 = v15;

  v17 = *(a1 + 16);
  if (v17)
  {
    if (v17 == 1)
    {
      v18 = 0xE000000000000000;
    }

    else
    {
      v18 = 0xE100000000000000;
    }

    v19 = v64;
    swift_retain_n();

    v20 = sub_1D30E8B1C();
    v21 = sub_1D30E92BC();

    v22 = os_log_type_enabled(v20, v21);
    v23 = v65;
    if (v22)
    {
      v60 = v21;
      v61 = v20;
      v62 = 0;
      v24 = swift_slowAlloc();
      v69 = v18;
      v25 = v24;
      v58 = swift_slowAlloc();
      v72 = v58;
      *v25 = 134219010;
      v71 = v19;
      swift_getKeyPath();
      sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D30E8F0C();

      *(v25 + 4) = v71;

      if (v17 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = 115;
      }

      *(v25 + 12) = 2082;
      if (v17 == 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = 0x6974636570736572;
      }

      if (v17 == 1)
      {
        v28 = 0xE000000000000000;
      }

      else
      {
        v28 = 0xEB00000000206576;
      }

      v29 = v69;
      *(v25 + 14) = sub_1D2FFEA04(v26, v69, &v72);
      *(v25 + 22) = 2082;
      v30 = sub_1D2FFEA04(v27, v28, &v72);

      *(v25 + 24) = v30;
      *(v25 + 32) = 2082;
      v31 = sub_1D2FFEA04(v26, v29, &v72);

      *(v25 + 34) = v31;
      v59 = v25;
      *(v25 + 42) = 2082;
      v71 = MEMORY[0x1E69E7CC0];
      sub_1D3028C28(0, v17, 0);
      v32 = v71;
      v33 = a1 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
      v67 = *(v70 + 72);
      do
      {
        v70 = v17;
        v34 = v68;
        sub_1D302B574(v33, v68, type metadata accessor for LicenseRecord.ElementID);
        v35 = *v34;
        v36 = v34[1];
        v37 = v34[2];
        v38 = v34[3];
        v39 = v34[5];
        v69 = v34[4];

        sub_1D302A30C(v34, type metadata accessor for LicenseRecord.ElementID);
        v71 = v32;
        v41 = *(v32 + 16);
        v40 = *(v32 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_1D3028C28((v40 > 1), v41 + 1, 1);
          v32 = v71;
        }

        *(v32 + 16) = v41 + 1;
        v42 = (v32 + 48 * v41);
        v42[4] = v35;
        v42[5] = v36;
        v42[6] = v37;
        v42[7] = v38;
        v43 = v70;
        v42[8] = v69;
        v42[9] = v39;
        v33 += v67;
        v17 = v43 - 1;
      }

      while (v17);
      v51 = sub_1D3016354(v32);
      v53 = v52;

      v54 = sub_1D2FFEA04(v51, v53, &v72);

      v55 = v59;
      *(v59 + 44) = v54;
      v56 = v61;
      _os_log_impl(&dword_1D2FD9000, v61, v60, "A record of a pending license with the ID “%llu” for the asset pack%{public}s with the %{public}sglobal ID%{public}s %{public}s was saved to the database.", v55, 0x34u);
      v57 = v58;
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v57, -1, -1);
      MEMORY[0x1D38B3760](v55, -1, -1);

      *v65 = v63;
    }

    else
    {

      *v23 = v63;
    }
  }

  else
  {
    v44 = v64;

    v45 = sub_1D30E8B1C();
    v46 = sub_1D30E92BC();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v65;
    if (v47)
    {
      v49 = swift_slowAlloc();
      v62 = 0;
      v50 = v49;
      *v49 = 134217984;
      v72 = v44;
      swift_getKeyPath();
      sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D30E8F0C();

      *(v50 + 1) = v72;

      _os_log_impl(&dword_1D2FD9000, v45, v46, "A record of a pending license with the ID “%llu” was saved to the database.", v50, 0xCu);
      MEMORY[0x1D38B3760](v50, -1, -1);
    }

    else
    {
    }

    *v48 = v63;
  }

  return result;
}

uint64_t sub_1D3022A94(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_getKeyPath();
  sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D2FF7FF8();
  sub_1D30E8F0C();

  if ((v16 & 0x3000000000000000) == 0x2000000000000000 && !(*(&v13 + 1) | v13 | v14 | *(&v14 + 1) | v15) && v16 == 0x2000000000000000)
  {
    if (qword_1EE313880 != -1)
    {
      swift_once();
    }

    v5 = sub_1D30E8B3C();
    __swift_project_value_buffer(v5, qword_1EE313888);
    v6 = sub_1D30E8B1C();
    v7 = sub_1D30E92BC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a2;
      _os_log_impl(&dword_1D2FD9000, v6, v7, "Marking the license with the ID “%llu” as having been requested…", v8, 0xCu);
      MEMORY[0x1D38B3760](v8, -1, -1);
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D30E8ADC();
  }

  else
  {
    sub_1D2FF804C(v13, *(&v13 + 1), v14, *(&v14 + 1), v15, v16);
    type metadata accessor for LicenseManagerError(0);
    sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError, &unk_1D30F34AC);
    swift_allocError();
    v12 = v11;
    *&v13 = a1;
    swift_getKeyPath();
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    swift_getKeyPath();
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    *v12 = v13;
    *(v12 + 16) = v14;
    *(v12 + 32) = v15;
    *(v12 + 40) = v16;
    *(v12 + 48) = a1;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_1D3022F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[30] = a3;
  v4[31] = v3;
  v4[28] = a1;
  v4[29] = a2;
  v4[32] = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B88, &unk_1D30F3240);
  v4[33] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
  v4[34] = v5;
  v4[35] = *(v5 - 8);
  v4[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3023030, v3, 0);
}

uint64_t sub_1D3023030()
{
  v35 = v0;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = sub_1D30E8B3C();
  *(v0 + 296) = __swift_project_value_buffer(v3, qword_1EE313888);
  v4 = sub_1D30E928C();
  sub_1D2FF17B0(v2, v1);
  v5 = sub_1D30E8B1C();
  sub_1D2FF1804(v2, v1);
  if (os_log_type_enabled(v5, v4))
  {
    v6 = *(v0 + 240);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v7 = 136446466;
    v9 = sub_1D30E88EC();
    v11 = sub_1D2FFEA04(v9, v10, &v34);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    *(v7 + 14) = v6;
    _os_log_impl(&dword_1D2FD9000, v5, v4, "Process response data: %{public}s for license with ID: %llu", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v12 = *(v0 + 248);
  swift_beginAccess();
  v13 = v12[20];
  v14 = v12[22];
  v15 = v13 < v14;
  v16 = v13 - v14;
  if (v15)
  {
    __break(1u);
LABEL_20:
    swift_once();
  }

  else
  {
    v17 = *(v0 + 240);
    v18 = 1 - v14;
    v19 = (v12[18] + 56 * v14 + 8);
    do
    {
      if (!v16)
      {
        type metadata accessor for LicenseManagerError(0);
        sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError, &unk_1D30F34AC);
        swift_allocError();
        *v24 = v17;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v25 = *(v0 + 8);

        return v25();
      }

      v20 = *v19;
      v19 += 7;
      --v18;
      --v16;
    }

    while (v20 != v17);
    v21 = *(v0 + 248);
    swift_beginAccess();
    v22 = -v18;
    if (*(*(v21 + 136) + 16))
    {
      sub_1D3032654(*(v0 + 240));
    }

    else
    {
      v23 = 0;
    }

    *(v0 + 360) = v23 & 1;
    v28 = *(v0 + 224);
    v27 = *(v0 + 232);
    sub_1D3015A2C(v22, v0 + 16);
    v29 = *(v0 + 24);
    v30 = *(v0 + 32);
    *(v0 + 72) = *(v0 + 16);
    *(v0 + 80) = v29;
    *(v0 + 88) = v30;
    v31 = *(v0 + 56);
    *(v0 + 96) = *(v0 + 40);
    *(v0 + 112) = v31;
    sub_1D2FF17B0(v28, v27);
    if (qword_1EE3132E0 != -1)
    {
      goto LABEL_20;
    }
  }

  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D302B150(&qword_1EE3132D8, 255, type metadata accessor for AppLicenseDelivery.Isolation, &protocol conformance descriptor for AppLicenseDelivery.Isolation);
  v33 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D3023424, v33, v32);
}

uint64_t sub_1D3023424()
{
  v0[38] = sub_1D2FFFAA0((v0 + 9), v0[28], v0[29]);
  v0[39] = 0;
  v1 = v0[31];

  return MEMORY[0x1EEE6DFA0](sub_1D30234B4, v1, 0);
}

uint64_t sub_1D30234B4()
{
  sub_1D30E91FC();
  swift_bridgeObjectRetain_n();

  *(v0 + 320) = sub_1D30E91EC();
  v2 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D302356C, v2, v1);
}

uint64_t sub_1D302356C()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 304);
  v3 = *(v0 + 360);
  v4 = *(v0 + 248);
  v5 = *(v0 + 240);

  sub_1D30265EC(v5, v4, v3, v5, v4, v2);
  *(v0 + 328) = v1;
  if (v1)
  {
    v6 = *(v0 + 248);
    v7 = sub_1D3023CA4;
  }

  else
  {
    v8 = *(v0 + 248);
    swift_bridgeObjectRelease_n();
    v7 = sub_1D3023A0C;
    v6 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D302364C()
{
  v1 = v0[39];
  v0[42] = v1;
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[33];
  v5 = v0[30];
  swift_beginAccess();
  sub_1D3024214(v5, v4);
  swift_endAccess();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1D2FF14DC(v0[33], &qword_1EC749B88, &unk_1D30F3240);
    v6 = v1;
    v7 = sub_1D30E8B1C();
    v8 = sub_1D30E92BC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[30];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 134218242;
      *(v10 + 4) = v9;
      *(v10 + 12) = 2114;
      v12 = v1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1D2FD9000, v7, v8, "Removing the record of the license with the ID “%llu” from the database because an error (%{public}@) occurred…", v10, 0x16u);
      sub_1D2FF14DC(v11, &qword_1EC7493A0, &qword_1D30EF480);
      MEMORY[0x1D38B3760](v11, -1, -1);
      MEMORY[0x1D38B3760](v10, -1, -1);
    }

    sub_1D30E91FC();

    v0[43] = sub_1D30E91EC();
    v15 = sub_1D30E91AC();

    return MEMORY[0x1EEE6DFA0](sub_1D3023B60, v15, v14);
  }

  else
  {
    (*(v0[35] + 32))(v0[36], v0[33], v0[34]);
    v16 = v1;
    v17 = sub_1D30E8B1C();
    v18 = sub_1D30E92BC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[30];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 134218242;
      *(v20 + 4) = v19;
      *(v20 + 12) = 2114;
      v22 = v1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v23;
      *v21 = v23;
      _os_log_impl(&dword_1D2FD9000, v17, v18, "Resuming the continuation for the license ID “%llu” by throwing the error “%{public}@”…", v20, 0x16u);
      sub_1D2FF14DC(v21, &qword_1EC7493A0, &qword_1D30EF480);
      MEMORY[0x1D38B3760](v21, -1, -1);
      MEMORY[0x1D38B3760](v20, -1, -1);
    }

    v25 = v0[35];
    v24 = v0[36];
    v26 = v0[34];

    v0[27] = v1;
    v27 = v1;
    sub_1D30E91CC();
    (*(v25 + 8))(v24, v26);
    v28 = v0[39];
    swift_willThrow();
    if (!v28)
    {
    }

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_1D3023A0C()
{
  if (qword_1EC749028 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC749B58;
  if (qword_1EC749018 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 240);
  v3 = qword_1EC75A8D0;
  v4 = type metadata accessor for LicenseResponseMessage.Subject();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCV29ManagedBackgroundAssetsHelper22LicenseResponseMessage7Subject_licenseID] = v2;
  *(v0 + 200) = v5;
  *(v0 + 208) = v4;
  v6 = objc_msgSendSuper2((v0 + 200), sel_init);
  [v1 postNotificationName:v3 object:v6];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D3023B60()
{
  v1 = v0[30];
  v2 = v0[31];

  sub_1D3027024(v1, v2, v2, sub_1D302B668);
  v0[44] = 0;
  v3 = v0[31];

  return MEMORY[0x1EEE6DFA0](sub_1D3023C14, v3, 0);
}

uint64_t sub_1D3023C14(uint64_t a1)
{
  v2 = *(v1 + 312);
  swift_willThrow();
  if (!v2)
  {
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D3023CA4()
{

  v1 = v0[41];
  v0[42] = v1;
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[33];
  v5 = v0[30];
  swift_beginAccess();
  sub_1D3024214(v5, v4);
  swift_endAccess();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1D2FF14DC(v0[33], &qword_1EC749B88, &unk_1D30F3240);
    v6 = v1;
    v7 = sub_1D30E8B1C();
    v8 = sub_1D30E92BC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[30];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 134218242;
      *(v10 + 4) = v9;
      *(v10 + 12) = 2114;
      v12 = v1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1D2FD9000, v7, v8, "Removing the record of the license with the ID “%llu” from the database because an error (%{public}@) occurred…", v10, 0x16u);
      sub_1D2FF14DC(v11, &qword_1EC7493A0, &qword_1D30EF480);
      MEMORY[0x1D38B3760](v11, -1, -1);
      MEMORY[0x1D38B3760](v10, -1, -1);
    }

    sub_1D30E91FC();

    v0[43] = sub_1D30E91EC();
    v15 = sub_1D30E91AC();

    return MEMORY[0x1EEE6DFA0](sub_1D3023B60, v15, v14);
  }

  else
  {
    (*(v0[35] + 32))(v0[36], v0[33], v0[34]);
    v16 = v1;
    v17 = sub_1D30E8B1C();
    v18 = sub_1D30E92BC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[30];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 134218242;
      *(v20 + 4) = v19;
      *(v20 + 12) = 2114;
      v22 = v1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v23;
      *v21 = v23;
      _os_log_impl(&dword_1D2FD9000, v17, v18, "Resuming the continuation for the license ID “%llu” by throwing the error “%{public}@”…", v20, 0x16u);
      sub_1D2FF14DC(v21, &qword_1EC7493A0, &qword_1D30EF480);
      MEMORY[0x1D38B3760](v21, -1, -1);
      MEMORY[0x1D38B3760](v20, -1, -1);
    }

    v25 = v0[35];
    v24 = v0[36];
    v26 = v0[34];

    v0[27] = v1;
    v27 = v1;
    sub_1D30E91CC();
    (*(v25 + 8))(v24, v26);
    v28 = v0[39];
    swift_willThrow();
    if (!v28)
    {
    }

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_1D302406C()
{
  v1 = v0[44];
  v2 = sub_1D30E929C();
  v3 = v1;
  v4 = sub_1D30E8B1C();

  v5 = os_log_type_enabled(v4, v2);
  v6 = v0[44];
  if (v5)
  {
    v7 = v0[30];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134218242;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2114;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D2FD9000, v4, v2, "The record of the license with the ID “%llu” couldn’t be removed from the database: %{public}@", v8, 0x16u);
    sub_1D2FF14DC(v9, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v9, -1, -1);
    MEMORY[0x1D38B3760](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[39];
  swift_willThrow();
  if (!v12)
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D3024214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D3032654(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D3033F9C();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
    v18 = *(v11 - 8);
    (*(v18 + 32))(a2, v10 + *(v18 + 72) * v7, v11);
    sub_1D3029588(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1D302438C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B88, &unk_1D30F3240);
  v3[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3024494, v2, 0);
}

uint64_t sub_1D3024494()
{
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE313888);
  v3 = sub_1D30E928C();
  v4 = v1;
  v5 = sub_1D30E8B1C();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = v0[6];
    v7 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543618;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v7;
    _os_log_impl(&dword_1D2FD9000, v5, v3, "Report error: %{public}@ for license with ID: %llu", v8, 0x16u);
    sub_1D2FF14DC(v9, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v9, -1, -1);
    MEMORY[0x1D38B3760](v8, -1, -1);
  }

  v12 = v0[6];

  v13 = sub_1D30E929C();
  v14 = v12;
  v15 = sub_1D30E8B1C();

  if (os_log_type_enabled(v15, v13))
  {
    v16 = v0[6];
    v17 = v0[7];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 134218242;
    *(v18 + 4) = v17;
    *(v18 + 12) = 2114;
    v20 = v16;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v21;
    *v19 = v21;
    _os_log_impl(&dword_1D2FD9000, v15, v13, "The license with the ID “%llu” couldn’t be requested: %{public}@", v18, 0x16u);
    sub_1D2FF14DC(v19, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v19, -1, -1);
    MEMORY[0x1D38B3760](v18, -1, -1);
  }

  v22 = v0[10];
  v23 = v0[11];
  v24 = v0[9];
  v25 = v0[7];

  swift_beginAccess();
  sub_1D3024214(v25, v24);
  swift_endAccess();
  if ((*(v23 + 48))(v24, 1, v22) == 1)
  {
    v26 = v0[6];
    sub_1D2FF14DC(v0[9], &qword_1EC749B88, &unk_1D30F3240);
    v27 = v26;
    v28 = sub_1D30E8B1C();
    v29 = sub_1D30E92BC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v0[6];
      v31 = v0[7];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 134218242;
      *(v32 + 4) = v31;
      *(v32 + 12) = 2114;
      v34 = v30;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v35;
      *v33 = v35;
      _os_log_impl(&dword_1D2FD9000, v28, v29, "Removing the record of the license with the ID “%llu” from the database because an error (“%{public}@”) occurred…", v32, 0x16u);
      sub_1D2FF14DC(v33, &qword_1EC7493A0, &qword_1D30EF480);
      MEMORY[0x1D38B3760](v33, -1, -1);
      MEMORY[0x1D38B3760](v32, -1, -1);
    }

    sub_1D30E91FC();

    v0[13] = sub_1D30E91EC();
    v37 = sub_1D30E91AC();

    return MEMORY[0x1EEE6DFA0](sub_1D3024A68, v37, v36);
  }

  else
  {
    v38 = v0[6];
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
    v39 = v38;
    v40 = sub_1D30E8B1C();
    v41 = sub_1D30E92BC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = v0[6];
      v43 = v0[7];
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 134218242;
      *(v44 + 4) = v43;
      *(v44 + 12) = 2114;
      v46 = v42;
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 14) = v47;
      *v45 = v47;
      _os_log_impl(&dword_1D2FD9000, v40, v41, "Resuming the continuation for the license ID “%llu” by throwing the error “%{public}@”…", v44, 0x16u);
      sub_1D2FF14DC(v45, &qword_1EC7493A0, &qword_1D30EF480);
      MEMORY[0x1D38B3760](v45, -1, -1);
      MEMORY[0x1D38B3760](v44, -1, -1);
    }

    v49 = v0[11];
    v48 = v0[12];
    v50 = v0[10];
    v51 = v0[6];

    v0[5] = v51;
    v52 = v51;
    sub_1D30E91CC();
    (*(v49 + 8))(v48, v50);

    v53 = v0[1];

    return v53();
  }
}

uint64_t sub_1D3024A68()
{
  v1 = v0[7];
  v2 = v0[8];

  sub_1D3027024(v1, v2, v2, sub_1D302B668);
  v0[14] = 0;
  v3 = v0[8];

  return MEMORY[0x1EEE6DFA0](sub_1D3024B1C, v3, 0);
}

uint64_t sub_1D3024B1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3024B8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3024BFC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D3024C1C, v1, 0);
}

uint64_t sub_1D3024C1C()
{
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313888);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Response for license with ID: %llu", v5, 0xCu);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  sub_1D30E91FC();

  *(v0 + 32) = sub_1D30E91EC();
  v7 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D3024D84, v7, v6);
}

uint64_t sub_1D3024D84()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = sub_1D3029B44(v2, v1, v2, v1);
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1D3024E18(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D3024E3C, v2, 0);
}

uint64_t sub_1D3024E3C()
{
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313888);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Remove record of license with ID: %llu", v5, 0xCu);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  sub_1D30E91FC();

  *(v0 + 40) = sub_1D30E91EC();
  v7 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D3024FA4, v7, v6);
}

uint64_t sub_1D3024FA4()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  sub_1D30275C0(v2, v1, v3);
  v4 = v0[1];

  return v4();
}

void sub_1D3025038(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B88, &unk_1D30F3240);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7;
  swift_beginAccess();
  sub_1D3024214(a1, v4);
  swift_endAccess();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D2FF14DC(v4, &qword_1EC749B88, &unk_1D30F3240);
    if (qword_1EE313880 != -1)
    {
      swift_once();
    }

    v9 = sub_1D30E8B3C();
    __swift_project_value_buffer(v9, qword_1EE313888);
    v10 = sub_1D30E8B1C();
    v11 = sub_1D30E92BC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = a1;
      _os_log_impl(&dword_1D2FD9000, v10, v11, "No pending continuation is available for the license with the ID “%llu”.", v12, 0xCu);
      MEMORY[0x1D38B3760](v12, -1, -1);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    if (qword_1EE313880 != -1)
    {
      swift_once();
    }

    v13 = sub_1D30E8B3C();
    __swift_project_value_buffer(v13, qword_1EE313888);
    v14 = sub_1D30E8B1C();
    v15 = sub_1D30E92BC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = a1;
      _os_log_impl(&dword_1D2FD9000, v14, v15, "Resuming the continuation for the license ID “%llu”…", v16, 0xCu);
      MEMORY[0x1D38B3760](v16, -1, -1);
    }

    v17[1] = a1;
    sub_1D30E91DC();
    (*(v6 + 8))(v8, v5);
  }
}

char *sub_1D3025380()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v39 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v39 - v6;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v8 = sub_1D30E8B3C();
  v9 = __swift_project_value_buffer(v8, qword_1EE313888);
  v10 = sub_1D30E928C();
  v39[2] = v9;
  v11 = sub_1D30E8B1C();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1D2FD9000, v11, v10, "New license ID", v12, 2u);
    MEMORY[0x1D38B3760](v12, -1, -1);
  }

  sub_1D30E8E7C();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  type metadata accessor for LicenseRecord(0);
  v14 = sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  v15 = MEMORY[0x1E69E7CC0];
  sub_1D30E8EBC();
  v16 = sub_1D30E8E1C();
  (*(v5 + 8))(v7, v4);

  if (v0)
  {
    return v14;
  }

  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_21:

    v19 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v30 = sub_1D30D9594(v19);

    v43 = 0;
    MEMORY[0x1D38B3770](&v43, 8);
    v14 = v43 >> 1;
    if (*(v30 + 16))
    {
      v31 = v30 + 56;
      do
      {
        v32 = sub_1D30E989C();
        v33 = -1 << *(v30 + 32);
        v34 = v32 & ~v33;
        if (((*(v31 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          break;
        }

        v35 = ~v33;
        while (*(*(v30 + 48) + 8 * v34) != v14)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v31 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        v43 = 0;
        MEMORY[0x1D38B3770](&v43, 8);
        v14 = v43 >> 1;
      }

      while (*(v30 + 16));
    }

LABEL_30:

    v36 = sub_1D30E927C();
    v37 = sub_1D30E8B1C();
    if (os_log_type_enabled(v37, v36))
    {
      v38 = swift_slowAlloc();
      *v38 = 67109120;
      *(v38 + 4) = v14;
      _os_log_impl(&dword_1D2FD9000, v37, v36, "The license ID “%d” has been newly generated.", v38, 8u);
      MEMORY[0x1D38B3760](v38, -1, -1);
    }

    return v14;
  }

  v17 = sub_1D30E958C();
  if (!v17)
  {
    goto LABEL_21;
  }

LABEL_8:
  v41 = v14;
  v43 = v15;
  result = sub_1D3028B74(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v39[1] = 0;
    v19 = v43;
    v20 = v16;
    if ((v16 & 0xC000000000000001) != 0)
    {
      v21 = 0;
      do
      {
        v22 = v20;
        v42 = MEMORY[0x1D38B29E0](v21);
        swift_getKeyPath();
        sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
        swift_unknownObjectRetain();
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();
        swift_unknownObjectRelease_n();

        v23 = v42;
        v43 = v19;
        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1D3028B74((v24 > 1), v25 + 1, 1);
          v19 = v43;
        }

        ++v21;
        *(v19 + 16) = v25 + 1;
        *(v19 + 8 * v25 + 32) = v23;
        v20 = v22;
      }

      while (v17 != v21);
    }

    else
    {
      v40 = v16;
      v26 = 32;
      do
      {
        v42 = *(v40 + v26);
        swift_getKeyPath();
        sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
        swift_retain_n();
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v27 = v42;
        v43 = v19;
        v29 = *(v19 + 16);
        v28 = *(v19 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1D3028B74((v28 > 1), v29 + 1, 1);
          v19 = v43;
        }

        *(v19 + 16) = v29 + 1;
        *(v19 + 8 * v29 + 32) = v27;
        v26 += 8;
        --v17;
      }

      while (v17);
    }

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D3025A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37[1] = a6;
  v40 = a5;
  v37[0] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v37 - v13;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v41 = a1;
  v39 = a4;
  v15 = sub_1D30E8B3C();
  __swift_project_value_buffer(v15, qword_1EE313888);
  v16 = sub_1D30E928C();
  v17 = sub_1D30E8B1C();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v38 = v11;
    v19 = v18;
    v20 = swift_slowAlloc();
    v43 = v20;
    *v19 = 134218242;
    v21 = v41;
    *(v19 + 4) = v41;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, &v43);
    _os_log_impl(&dword_1D2FD9000, v17, v16, "With record of license with ID: %llu body: %{public}s", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1D38B3760](v20, -1, -1);
    v11 = v38;
    MEMORY[0x1D38B3760](v19, -1, -1);
  }

  else
  {

    v21 = v41;
  }

  v22 = sub_1D30E8E7C();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v22);
  v37[-2] = v21;
  v42 = type metadata accessor for LicenseRecord(0);
  sub_1D30E8ACC();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v23 - 8) + 56))(v10, 0, 1, v23);
  sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8EBC();
  v24 = v37[2];
  v25 = sub_1D30E8E1C();
  if (!v24)
  {
    v28 = v25;
    (*(v12 + 8))(v14, v11);

    v43 = v28;
    v29 = sub_1D3028020(sub_1D30E701C);
    v30 = v39;
    if (!v29)
    {

      type metadata accessor for LicenseManagerError(0);
      sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError, &unk_1D30F34AC);
      swift_allocError();
      *v34 = v41;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_9;
    }

    v31 = v29;
    if (v43 >> 62)
    {
      v35 = sub_1D30E958C();

      if (v35)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v32 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v32)
      {
LABEL_14:
        type metadata accessor for LicenseManagerError(0);
        sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError, &unk_1D30F34AC);
        swift_allocError();
        *v33 = v41;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        goto LABEL_8;
      }
    }

    v36 = v40;
    sub_1D3020E44(v31, v37[0], v30, v40);
    sub_1D30E8E7C();
    sub_1D30E8E0C();

    v26 = v36;
    return sub_1D302A2B8(v26);
  }

  (*(v12 + 8))(v14, v11);

LABEL_8:

LABEL_9:
  v26 = v40;
  return sub_1D302A2B8(v26);
}

uint64_t sub_1D302606C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v35 = a4;
  v31 = a3;
  v32 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v9 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v11 = &v30 - v10;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v36 = a1;
  v12 = sub_1D30E8B3C();
  __swift_project_value_buffer(v12, qword_1EE313888);
  v13 = sub_1D30E928C();
  v14 = sub_1D30E8B1C();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 134218242;
    v17 = v36;
    *(v15 + 4) = v36;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, &v38);
    _os_log_impl(&dword_1D2FD9000, v14, v13, "With record of license with ID: %llu body: %{public}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1D38B3760](v16, -1, -1);
    MEMORY[0x1D38B3760](v15, -1, -1);
  }

  else
  {

    v17 = v36;
  }

  v18 = sub_1D30E8E7C();
  MEMORY[0x1EEE9AC00](v18);
  *(&v30 - 2) = v17;
  v37 = type metadata accessor for LicenseRecord(0);
  sub_1D30E8ACC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8EBC();
  v20 = v34;
  v21 = sub_1D30E8E1C();
  (*(v9 + 8))(v11, v33);

  v22 = v35;
  if (!v20)
  {
    v38 = v21;
    v23 = sub_1D3028020(sub_1D30E701C);
    if (v23)
    {
      v24 = v23;
      if (v38 >> 62)
      {
        v28 = sub_1D30E958C();

        if (v28)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v25 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v25)
        {
LABEL_10:
          type metadata accessor for LicenseManagerError(0);
          sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError, &unk_1D30F34AC);
          swift_allocError();
          *v26 = v36;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
LABEL_14:

          return sub_1D302A2B8(v22);
        }
      }

      sub_1D3022A94(v24, v31, v22);
      sub_1D30E8E7C();
      sub_1D30E8E0C();

      goto LABEL_14;
    }

    type metadata accessor for LicenseManagerError(0);
    sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError, &unk_1D30F34AC);
    swift_allocError();
    *v27 = v36;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return sub_1D302A2B8(v22);
}

uint64_t sub_1D30265EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v58 = a6;
  v51 = a4;
  LODWORD(v53) = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v50 - v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v11 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v13 = &v50 - v12;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v59 = a1;
  v14 = sub_1D30E8B3C();
  v15 = __swift_project_value_buffer(v14, qword_1EE313888);
  v16 = sub_1D30E928C();
  *&v52 = v15;
  v17 = sub_1D30E8B1C();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v54 = a5;
    v19 = v18;
    v20 = swift_slowAlloc();
    *&v61 = v20;
    *v19 = 134218242;
    v21 = v59;
    *(v19 + 4) = v59;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, &v61);
    _os_log_impl(&dword_1D2FD9000, v17, v16, "With record of license with ID: %llu body: %{public}s", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1D38B3760](v20, -1, -1);
    v22 = v19;
    a5 = v54;
    MEMORY[0x1D38B3760](v22, -1, -1);
  }

  else
  {

    v21 = v59;
  }

  v23 = sub_1D30E8E7C();
  v57 = &v50;
  MEMORY[0x1EEE9AC00](v23);
  *(&v50 - 2) = v21;
  v65 = type metadata accessor for LicenseRecord(0);
  sub_1D30E8ACC();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
  sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8EBC();
  v25 = v56;
  v26 = sub_1D30E8E1C();
  v56 = v25;
  if (v25)
  {
    (*(v11 + 8))(v13, v55);
  }

  v28 = v26;
  (*(v11 + 8))(v13, v55);

  v70 = v28;
  v29 = sub_1D3028020(sub_1D30E701C);
  if (v29)
  {
    v30 = v29;
    if (v70 >> 62)
    {
      v34 = sub_1D30E958C();

      if (v34)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v31 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v31)
      {
LABEL_11:
        type metadata accessor for LicenseManagerError(0);
        sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError, &unk_1D30F34AC);
        swift_allocError();
        *v32 = v59;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

LABEL_16:
      }
    }

    v54 = a5;
    v35 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper13LicenseRecord___observationRegistrar;
    *&v61 = v30;
    swift_getKeyPath();
    v59 = sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D2FF7FF8();
    sub_1D30E8F0C();

    v36 = v64 & 0x3000000000000000;
    sub_1D2FF804C(v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64);
    if (v36)
    {
      v56 = type metadata accessor for LicenseManagerError(0);
      sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError, &unk_1D30F34AC);
      swift_allocError();
      v38 = v37;
      *&v61 = v30;
      swift_getKeyPath();
      v50 = v35;
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D30E8F0C();

      v39 = v63;
      v55 = v64;
      v60 = v30;
      v53 = v61;
      v52 = v62;
      swift_getKeyPath();
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D30E8F0C();

      v40 = v60;
      v41 = v52;
      *v38 = v53;
      *(v38 + 16) = v41;
      v42 = v55;
      *(v38 + 32) = v39;
      *(v38 + 40) = v42;
      *(v38 + 48) = v40;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      v43 = sub_1D30E8B1C();
      v44 = sub_1D30E92BC();
      v45 = os_log_type_enabled(v43, v44);
      if (v53)
      {
        if (v45)
        {
          v46 = swift_slowAlloc();
          *v46 = 134217984;
          *(v46 + 4) = v51;
          _os_log_impl(&dword_1D2FD9000, v43, v44, "Removing the record of the license with the ID “%llu” from the database because a continuation is about to take delivery of the license…", v46, 0xCu);
          MEMORY[0x1D38B3760](v46, -1, -1);
        }

        sub_1D30E8E7C();
        sub_1D30E8E3C();
      }

      else
      {
        v47 = v58;
        if (v45)
        {
          v48 = swift_slowAlloc();
          *v48 = 134217984;
          *(v48 + 4) = v51;
          _os_log_impl(&dword_1D2FD9000, v43, v44, "Marking the license with the ID “%llu” as having been delivered…", v48, 0xCu);
          MEMORY[0x1D38B3760](v48, -1, -1);
        }

        v66 = v47;
        v67 = 0u;
        v68 = 0u;
        v69 = 0x1000000000000000;
        *&v61 = v30;
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v50 - 2) = v30;
        *(&v50 - 1) = &v66;

        sub_1D30E8ADC();
      }

      sub_1D30E8E7C();
      sub_1D30E8E0C();
    }

    goto LABEL_16;
  }

  type metadata accessor for LicenseManagerError(0);
  sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError, &unk_1D30F34AC);
  swift_allocError();
  *v33 = v59;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

uint64_t sub_1D3027024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v8 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v10 = &v28 - v9;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v11 = sub_1D30E8B3C();
  __swift_project_value_buffer(v11, qword_1EE313888);
  v12 = sub_1D30E928C();
  v13 = sub_1D30E8B1C();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v8;
    v16 = a1;
    v17 = v15;
    v34 = v15;
    *v14 = 134218242;
    *(v14 + 4) = v16;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, &v34);
    _os_log_impl(&dword_1D2FD9000, v13, v12, "With record of license with ID: %llu body: %{public}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v18 = v17;
    a1 = v16;
    v8 = v31;
    MEMORY[0x1D38B3760](v18, -1, -1);
    MEMORY[0x1D38B3760](v14, -1, -1);
  }

  v19 = sub_1D30E8E7C();
  v31 = &v28;
  MEMORY[0x1EEE9AC00](v19);
  *(&v28 - 2) = a1;
  v33 = type metadata accessor for LicenseRecord(0);
  sub_1D30E8ACC();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v20 - 8) + 56))(v7, 0, 1, v20);
  sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8EBC();
  v21 = v30;
  v22 = sub_1D30E8E1C();
  (v8[1])(v10, v29);
  if (v21)
  {
    goto LABEL_6;
  }

  v34 = v22;
  if (!sub_1D3028020(sub_1D30E701C))
  {

    type metadata accessor for LicenseManagerError(0);
    sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError, &unk_1D30F34AC);
    swift_allocError();
    *v25 = a1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  if (v34 >> 62)
  {
    v27 = sub_1D30E958C();

    if (v27)
    {
      goto LABEL_10;
    }

LABEL_14:
    sub_1D30E8E7C();
    sub_1D30E8E3C();

    sub_1D30E8E7C();
    sub_1D30E8E0C();

    goto LABEL_6;
  }

  v23 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v23)
  {
    goto LABEL_14;
  }

LABEL_10:
  type metadata accessor for LicenseManagerError(0);
  sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError, &unk_1D30F34AC);
  swift_allocError();
  *v24 = a1;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
LABEL_6:
}

uint64_t sub_1D30275C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = a2;
  v35 = a1;
  v29 = a3;
  v3 = type metadata accessor for LicenseRecord.StaticRepresentation(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v8 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v29 - v9;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v11 = sub_1D30E8B3C();
  __swift_project_value_buffer(v11, qword_1EE313888);
  v12 = sub_1D30E928C();
  v13 = sub_1D30E8B1C();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = v8;
    v16 = v15;
    v37 = v15;
    *v14 = 134218242;
    v17 = v35;
    *(v14 + 4) = v35;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, &v37);
    _os_log_impl(&dword_1D2FD9000, v13, v12, "With record of license with ID: %llu body: %{public}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v8 = v33;
    MEMORY[0x1D38B3760](v16, -1, -1);
    MEMORY[0x1D38B3760](v14, -1, -1);
  }

  else
  {

    v17 = v35;
  }

  v18 = sub_1D30E8E7C();
  v33 = &v29;
  MEMORY[0x1EEE9AC00](v18);
  *(&v29 - 2) = v17;
  v36 = type metadata accessor for LicenseRecord(0);
  sub_1D30E8ACC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v19 - 8) + 56))(v7, 0, 1, v19);
  sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8EBC();
  v20 = v32;
  v21 = sub_1D30E8E1C();
  (v8[1])(v10, v31);
  if (!v20)
  {

    v37 = v21;
    if (!sub_1D3028020(sub_1D30E701C))
    {

      type metadata accessor for LicenseManagerError(0);
      sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError, &unk_1D30F34AC);
      swift_allocError();
      *v26 = v35;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    v23 = v35;
    if (v37 >> 62)
    {
      v27 = sub_1D30E958C();

      if (v27)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v24 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v24)
      {
LABEL_12:
        type metadata accessor for LicenseManagerError(0);
        sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError, &unk_1D30F34AC);
        swift_allocError();
        *v25 = v23;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }

    sub_1D30E8E7C();
    sub_1D30E8E3C();

    v28 = v30;
    sub_1D2FF5564(v30);
    sub_1D30E8E7C();
    sub_1D30E8E0C();

    sub_1D302B5DC(v28, v29, type metadata accessor for LicenseRecord.StaticRepresentation);
  }
}

uint64_t sub_1D3027C08@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a2;
  v20 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749BA0, &qword_1D30F3250);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749BA8, &qword_1D30F3258);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749BB0, &qword_1D30F3260);
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v12 = &v18 - v11;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D2FF1768(&qword_1EC749BB8, &qword_1EC749BA8, &qword_1D30F3258, MEMORY[0x1E6968DA8]);
  sub_1D30E87BC();
  swift_getKeyPath();
  sub_1D30E876C();

  (*(v7 + 8))(v9, v6);
  v23 = v18;
  sub_1D30E87AC();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749BC0, &qword_1D30F3268);
  v14 = v20;
  v20[3] = v13;
  v14[4] = sub_1D302A444(&qword_1EC749BC8, &qword_1EC749BC0, &qword_1D30F3268, sub_1D3029AC0);
  __swift_allocate_boxed_opaque_existential_0Tm(v14);
  sub_1D2FF1768(&qword_1EC749BE8, &qword_1EC749BB0, &qword_1D30F3260, MEMORY[0x1E6968D58]);
  sub_1D2FF1768(&qword_1EC749BF0, &qword_1EC749BA0, &qword_1D30F3250, MEMORY[0x1E6968D20]);
  v15 = v19;
  v16 = v22;
  sub_1D30E875C();
  (*(v21 + 8))(v5, v16);
  (*(v10 + 8))(v12, v15);
}

unint64_t sub_1D3028020(uint64_t (*a1)(uint64_t))
{
  if (!(*v1 >> 62))
  {
    result = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_1D302992C(a1);
    if (result)
    {
      return result;
    }

    if (*v1 >> 62)
    {
      v6 = sub_1D30E958C();
      v5 = __OFSUB__(v6, 1);
      result = v6 - 1;
      if (!v5)
      {
        return sub_1D30287CC(result, a1);
      }
    }

    else
    {
      v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v5)
      {
        return sub_1D30287CC(result, a1);
      }
    }

    __break(1u);
    return result;
  }

  result = sub_1D30E958C();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1D30280C8()
{
  v1 = v0;
  v2 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LicenseManagerError(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D302B574(v1, v7, type metadata accessor for LicenseManagerError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v9 = *v7;
        v37 = 0;
        v38 = 0xE000000000000000;
        sub_1D30E948C();
        v10 = "he license with the ID “";
        v11 = 0x1000000000000028;
      }

      else
      {
        v9 = *v7;
        v37 = 0;
        v38 = 0xE000000000000000;
        if (EnumCaseMultiPayload == 3)
        {
          sub_1D30E948C();
          v10 = "the license with the ID “";
          v11 = 0x100000000000002ALL;
        }

        else
        {
          sub_1D30E948C();
          v10 = "third-party host.";
          v11 = 0x100000000000002BLL;
        }
      }

      MEMORY[0x1D38B2610](v11, v10 | 0x8000000000000000);
      v36 = v9;
      v19 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v19);

      v20 = 0x20736177209D80E2;
      v21 = 0xAE002E646E756F66;
      goto LABEL_43;
    }

    if (EnumCaseMultiPayload)
    {
      v22 = *v7;
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x100000000000002ELL, 0x80000001D30EC1F0);
      v36 = v22;
      v15 = sub_1D30E977C();
LABEL_42:
      MEMORY[0x1D38B2610](v15, v23);

      v20 = 782074082;
      v21 = 0xA400000000000000;
LABEL_43:
      MEMORY[0x1D38B2610](v20, v21);
      return v37;
    }

    v13 = v7[1];
    if (!v13)
    {
      return 0xD00000000000002ALL;
    }

    v14 = *v7;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1D30E948C();
    MEMORY[0x1D38B2610](0x1000000000000032, 0x80000001D30EC290);
    v15 = v14;
LABEL_41:
    v23 = v13;
    goto LABEL_42;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_1D302B5DC(v7, v4, type metadata accessor for AssetPackRecord.StaticRepresentation);
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x1000000000000011, 0x80000001D30EC0E0);
      v16 = AssetPackRecord.StaticRepresentation.description.getter();
      MEMORY[0x1D38B2610](v16);

      MEMORY[0x1D38B2610](0x1000000000000031, 0x80000001D30EC100);
      v17 = v37;
      sub_1D302A30C(v4, type metadata accessor for AssetPackRecord.StaticRepresentation);
      return v17;
    }

    v24 = *v7;
    v25 = v7[1];
    v26 = v7[2];
    v27 = v7[3];
    v28 = v7[4];
    v29 = v7[5];
    v30 = v7[6];
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1D30E948C();
    MEMORY[0x1D38B2610](0x1000000000000029, 0x80000001D30EC080);
    v36 = v30;
    v31 = sub_1D30E977C();
    MEMORY[0x1D38B2610](v31);

    MEMORY[0x1D38B2610](0x1000000000000020, 0x80000001D30EC0B0);
    v32 = (v29 >> 60) & 3;
    if (v32)
    {
      if (v32 != 1)
      {
        v34 = 0xE700000000000000;
        v33 = 0x676E69646E6550;
        goto LABEL_34;
      }

      v33 = 0x65726576696C6544;
    }

    else
    {
      v33 = 0x6574736575716552;
    }

    v34 = 0xE900000000000064;
LABEL_34:
    MEMORY[0x1D38B2610](v33, v34);

    MEMORY[0x1D38B2610](782074082, 0xA400000000000000);
    sub_1D2FF804C(v24, v25, v26, v27, v28, v29);
    return v37;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v18 = *v7;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1D30E948C();
    MEMORY[0x1D38B2610](0x100000000000004BLL, 0x80000001D30EC030);
    if (v18 > 2)
    {
      switch(v18)
      {
        case 3:
          v13 = 0xEA00000000007765;
          v15 = 0x6976655220707041;
          goto LABEL_41;
        case 4:
          v15 = 0xD000000000000012;
          v13 = 0x80000001D30EA750;
          goto LABEL_41;
        case 5:
          v13 = 0x80000001D30EA730;
          v15 = 0xD000000000000014;
          goto LABEL_41;
      }
    }

    else
    {
      switch(v18)
      {
        case 0:
          v13 = 0xE900000000000065;
          v15 = 0x726F745320707041;
          goto LABEL_41;
        case 1:
          v15 = 0x67696C4674736554;
          v13 = 0xEA00000000007468;
          goto LABEL_41;
        case 2:
          v13 = 0xEB00000000656863;
          v15 = 0x6143206C61636F4CLL;
          goto LABEL_41;
      }
    }

    result = sub_1D30E957C();
    __break(1u);
  }

  else if (EnumCaseMultiPayload == 8)
  {
    return 0x1000000000000039;
  }

  else
  {
    return 0xD000000000000018;
  }

  return result;
}

uint64_t sub_1D30287CC(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

id sub_1D3028864(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D30E906C();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1D30E87DC();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1D3028940(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D3028A38;

  return v6(a1);
}

uint64_t sub_1D3028A38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_1D3028B30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D30292A0(a1, a2, a3, *v3, &qword_1EC749C08, &qword_1D30F32B0, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

char *sub_1D3028B74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D30291A4(a1, a2, a3, *v3, &qword_1EC749B80, &qword_1D30F3238);
  *v3 = result;
  return result;
}

char *sub_1D3028BA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D3028D64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D3028BC4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D3028F78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D3028BE4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D30292A0(a1, a2, a3, *v3, &qword_1EC749C18, &qword_1D30F32C0, type metadata accessor for LicenseRecord.ElementID);
  *v3 = result;
  return result;
}

char *sub_1D3028C28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D3029084(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D3028C48(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D30291A4(a1, a2, a3, *v3, &qword_1EC749D00, &qword_1D30F3438);
  *v3 = result;
  return result;
}

void *sub_1D3028C78(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D30292A0(a1, a2, a3, *v3, &qword_1EC749CE0, &qword_1D30F33F0, type metadata accessor for AssetPackRecord.StaticRepresentation);
  *v3 = result;
  return result;
}

void *sub_1D3028CBC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D30292A0(a1, a2, a3, *v3, &qword_1EC749CE8, &unk_1D30F33F8, MEMORY[0x1E69E83A8]);
  *v3 = result;
  return result;
}

void *sub_1D3028D00(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D30292A0(a1, a2, a3, *v3, &qword_1EC749CF0, &qword_1D30F3428, type metadata accessor for LicenseRecord.StaticRepresentation);
  *v3 = result;
  return result;
}

char *sub_1D3028D44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D302947C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D3028D64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749BF8, &unk_1D30F32A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D3028E84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7497B8, &unk_1D30F3440);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D3028F78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C98, &qword_1D30F33B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
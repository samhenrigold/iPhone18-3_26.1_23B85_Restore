uint64_t sub_1AF5D2B6C(uint64_t a1)
{
  v2 = sub_1AF5D331C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

float sub_1AF5D2BF8(void *a1)
{
  sub_1AF5D3370(0, &qword_1EB63C0D0, sub_1AF5D32C8, &type metadata for GenericLOD.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5D32C8();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF48C324();
    sub_1AF48C3D0(&qword_1ED7231A0, MEMORY[0x1E69E6478], MEMORY[0x1E69E66E0]);
    sub_1AFDFE768();
    (*(v6 + 8))(v8, v5);
    v2 = v11;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AF5D2DEC(void *a1)
{
  sub_1AF5D3370(0, &qword_1EB63C080, sub_1AF5D3018, &type metadata for LODState.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = sub_1AF441150(a1, a1[3]);
  sub_1AF5D3018();
  v9 = v8;
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF48C324();
    v11[15] = 0;
    sub_1AF48C3D0(&qword_1ED7231A0, MEMORY[0x1E69E6478], MEMORY[0x1E69E66E0]);
    sub_1AFDFE768();
    v11[14] = 1;
    v9 = sub_1AFDFE798();
    (*(v5 + 8))(v7, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

unint64_t sub_1AF5D3018()
{
  result = qword_1EB63C088;
  if (!qword_1EB63C088)
  {
    result = swift_getWitnessTable(aI_20, &type metadata for LODState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C088);
  }

  return result;
}

unint64_t sub_1AF5D306C()
{
  result = qword_1EB63C0A0;
  if (!qword_1EB63C0A0)
  {
    result = swift_getWitnessTable(aYi, &type metadata for PointOfCulling.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C0A0);
  }

  return result;
}

unint64_t sub_1AF5D3114()
{
  result = qword_1EB63C0A8;
  if (!qword_1EB63C0A8)
  {
    result = swift_getWitnessTable(aAv_0, &type metadata for LODState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C0A8);
  }

  return result;
}

unint64_t sub_1AF5D316C()
{
  result = qword_1EB63C0B0;
  if (!qword_1EB63C0B0)
  {
    result = swift_getWitnessTable(byte_1AFE63810, &type metadata for PointOfCulling.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C0B0);
  }

  return result;
}

unint64_t sub_1AF5D31C4()
{
  result = qword_1EB63C0B8;
  if (!qword_1EB63C0B8)
  {
    result = swift_getWitnessTable(byte_1AFE63838, &type metadata for PointOfCulling.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C0B8);
  }

  return result;
}

unint64_t sub_1AF5D321C()
{
  result = qword_1EB63C0C0;
  if (!qword_1EB63C0C0)
  {
    result = swift_getWitnessTable(byte_1AFE63758, &type metadata for LODState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C0C0);
  }

  return result;
}

unint64_t sub_1AF5D3274()
{
  result = qword_1EB63C0C8;
  if (!qword_1EB63C0C8)
  {
    result = swift_getWitnessTable(byte_1AFE63780, &type metadata for LODState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C0C8);
  }

  return result;
}

unint64_t sub_1AF5D32C8()
{
  result = qword_1EB63C0D8;
  if (!qword_1EB63C0D8)
  {
    result = swift_getWitnessTable(aQf, &type metadata for GenericLOD.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C0D8);
  }

  return result;
}

unint64_t sub_1AF5D331C()
{
  result = qword_1EB63C0F0;
  if (!qword_1EB63C0F0)
  {
    result = swift_getWitnessTable(byte_1AFE63AF8, &type metadata for LODCulled.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C0F0);
  }

  return result;
}

void sub_1AF5D3370(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF5D33D8()
{
  result = qword_1EB63C100;
  if (!qword_1EB63C100)
  {
    result = swift_getWitnessTable(byte_1AFE63AA8, &type metadata for FrustumCulled.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C100);
  }

  return result;
}

unint64_t sub_1AF5D3460()
{
  result = qword_1EB63C108;
  if (!qword_1EB63C108)
  {
    result = swift_getWitnessTable(aIt, &type metadata for GenericLOD.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C108);
  }

  return result;
}

unint64_t sub_1AF5D34B8()
{
  result = qword_1EB63C110;
  if (!qword_1EB63C110)
  {
    result = swift_getWitnessTable(byte_1AFE63A58, &type metadata for FrustumCulled.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C110);
  }

  return result;
}

unint64_t sub_1AF5D3510()
{
  result = qword_1EB63C118;
  if (!qword_1EB63C118)
  {
    result = swift_getWitnessTable(byte_1AFE63A80, &type metadata for FrustumCulled.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C118);
  }

  return result;
}

unint64_t sub_1AF5D3568()
{
  result = qword_1EB63C120;
  if (!qword_1EB63C120)
  {
    result = swift_getWitnessTable(byte_1AFE63A08, &type metadata for LODCulled.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C120);
  }

  return result;
}

unint64_t sub_1AF5D35C0()
{
  result = qword_1EB63C128;
  if (!qword_1EB63C128)
  {
    result = swift_getWitnessTable(byte_1AFE63A30, &type metadata for LODCulled.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C128);
  }

  return result;
}

unint64_t sub_1AF5D3618()
{
  result = qword_1EB63C130;
  if (!qword_1EB63C130)
  {
    result = swift_getWitnessTable(byte_1AFE63950, &type metadata for GenericLOD.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C130);
  }

  return result;
}

unint64_t sub_1AF5D3670()
{
  result = qword_1EB63C138;
  if (!qword_1EB63C138)
  {
    result = swift_getWitnessTable(byte_1AFE63978, &type metadata for GenericLOD.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C138);
  }

  return result;
}

void *sub_1AF5D3780@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1AF5D386C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5D3944(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF5D3A08(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF5D3ADC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5DAE40(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF5D3B0C(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x736E6F6974706FLL;
  v4 = 0xE900000000000065;
  v5 = 0x7A696C616D726F6ELL;
  if (*v1 != 2)
  {
    v5 = 0x6572726566657270;
    v4 = 0xEF726564616F4C64;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001AFF236F0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1AF5D3BA0()
{
  v1 = 0x736E6F6974706FLL;
  v2 = 0x7A696C616D726F6ELL;
  if (*v0 != 2)
  {
    v2 = 0x6572726566657270;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

unint64_t sub_1AF5D3C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5DAE40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF5D3C58(uint64_t a1)
{
  v2 = sub_1AF5DDF3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5D3C94(uint64_t a1)
{
  v2 = sub_1AF5DDF3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5D3CD0(void *a1, uint64_t a2, char a3)
{
  sub_1AF5DE3A8(0, &qword_1EB63C180, sub_1AF5DDF3C, &type metadata for MeshImportOptions.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5DDF3C();
  sub_1AFDFF3F8();
  v13 = a3 & 1;
  v12 = 3;
  sub_1AF5DE038();
  sub_1AFDFE918();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AF5D3E58@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF5DAE8C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 9) = HIBYTE(v5) & 1;
  }

  return result;
}

uint64_t sub_1AF5D3ED0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x696669746E656469;
  }

  else
  {
    v3 = 0x7465737361;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xEA00000000007265;
  }

  if (*a2)
  {
    v5 = 0x696669746E656469;
  }

  else
  {
    v5 = 0x7465737361;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007265;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF5D3F78()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5D3FFC(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF5D406C(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

void sub_1AF5D40F8(uint64_t *a1@<X8>)
{
  v2 = 0x7465737361;
  if (*v1)
  {
    v2 = 0x696669746E656469;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000007265;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AF5D4138()
{
  if (*v0)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 0x7465737361;
  }
}

uint64_t sub_1AF5D4180(uint64_t a1)
{
  v2 = sub_1AF5DE354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5D41BC(uint64_t a1)
{
  v2 = sub_1AF5DE354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5D41F8(void *a1)
{
  v3 = v1;
  sub_1AF5DE3A8(0, &qword_1EB63C1D8, sub_1AF5DE354, &type metadata for SceneFileAsset.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5DE354();
  sub_1AFDFF3F8();
  v10 = v3[1];
  v12[0] = *v3;
  v12[1] = v10;
  v12[2] = v3[2];
  v13 = 0;
  sub_1AF5DE27C();
  sub_1AFDFE918();
  if (!v2)
  {
    LOBYTE(v12[0]) = 1;
    sub_1AFDFE8B8();
  }

  return (*(v7 + 8))(v9, v6);
}

id sub_1AF5D43A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v5 = *(v1 + 32);
  *(a1 + 32) = v5;
  v7 = v5;

  return v7;
}

double sub_1AF5D442C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF5DB180(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_1AF5D4488@<X0>(void *a1@<X8>)
{
  v2 = sub_1AFDFC318();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFC308();
  v6 = sub_1AFDFC2B8();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = v6;
  a1[7] = v8;
  return result;
}

uint64_t sub_1AF5D4574(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6874615065646F6ELL;
  }

  else
  {
    v3 = 0x7465737361;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6874615065646F6ELL;
  }

  else
  {
    v5 = 0x7465737361;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF5D4618()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5D4698(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF5D4704(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5D478C@<X0>(char *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_1AF5D47E8(uint64_t *a1@<X8>)
{
  v2 = 0x7465737361;
  if (*v1)
  {
    v2 = 0x6874615065646F6ELL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AF5D4824()
{
  if (*v0)
  {
    return 0x6874615065646F6ELL;
  }

  else
  {
    return 0x7465737361;
  }
}

uint64_t sub_1AF5D4868@<X0>(char *a4@<X8>)
{
  v5 = sub_1AFDFE638();

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

  *a4 = v7;
  return result;
}

uint64_t sub_1AF5D48C8(uint64_t a1)
{
  v2 = sub_1AF5DE0E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5D4904(uint64_t a1)
{
  v2 = sub_1AF5DE0E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5D4940(void *a1)
{
  v3 = v1;
  sub_1AF5DE3A8(0, &qword_1EB63C1B0, sub_1AF5DE0E0, &type metadata for MeshFileAsset.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5DE0E0();
  sub_1AFDFF3F8();
  v10 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v10;
  v12[2] = *(v3 + 32);
  v13 = 0;
  sub_1AF5DE27C();
  sub_1AFDFE918();
  if (!v2 && *(v3 + 48))
  {
    *&v12[0] = *(v3 + 48);
    v13 = 1;
    sub_1AF5DE4E0(0, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    sub_1AF5DE2D0(&qword_1EB63C1C0, MEMORY[0x1E69E6538], MEMORY[0x1E69E6300]);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v9, v6);
}

double sub_1AF5D4B64@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AF5DB64C(a2, v6);
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

void sub_1AF5D4BCC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[5] = 0;
  a1[6] = 0;
  a1[4] = 0;
}

uint64_t sub_1AF5D4BE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = a5;
  v13[1] = a4;
  sub_1AF5DE3A8(0, &qword_1EB63C1A0, sub_1AF5DE08C, &type metadata for MeshReferenceAsset.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5DE08C();
  sub_1AFDFF3F8();
  v15 = 0;
  v11 = v13[3];
  sub_1AFDFE8B8();
  if (!v11)
  {
    v14 = 1;
    sub_1AFDFE8B8();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1AF5D4D80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6564496873656DLL;
  }

  else
  {
    v3 = 0x656449656E656373;
  }

  if (v2)
  {
    v4 = 0xEF7265696669746ELL;
  }

  else
  {
    v4 = 0xEE00726569666974;
  }

  if (*a2)
  {
    v5 = 0x6E6564496873656DLL;
  }

  else
  {
    v5 = 0x656449656E656373;
  }

  if (*a2)
  {
    v6 = 0xEE00726569666974;
  }

  else
  {
    v6 = 0xEF7265696669746ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF5D4E40()
{
  if (*v0)
  {
    return 0x6E6564496873656DLL;
  }

  else
  {
    return 0x656449656E656373;
  }
}

uint64_t sub_1AF5D4E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656449656E656373 && a2 == 0xEF7265696669746ELL;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6564496873656DLL && a2 == 0xEE00726569666974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

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

uint64_t sub_1AF5D4F80(uint64_t a1)
{
  v2 = sub_1AF5DE08C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5D4FBC(uint64_t a1)
{
  v2 = sub_1AF5DE08C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5D4FF8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF5DBA4C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void sub_1AF5D5048(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
}

void sub_1AF5D50BC(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  v6 = v1[7];
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  os_unfair_lock_unlock(*(v4 + 40));
  v8 = v1[12];
  swift_getObjectType();
  v9 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v8);

  sub_1AF6B1B20(a1, v9, v8);
  os_unfair_lock_unlock(*(v4 + 40));
  v10 = v1[17];
  swift_getObjectType();
  v11 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v10);

  sub_1AF6B1B20(a1, v11, v10);
  os_unfair_lock_unlock(*(v4 + 40));
  v12 = v1[22];
  swift_getObjectType();
  v13 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v12);

  sub_1AF6B1B20(a1, v13, v12);
  os_unfair_lock_unlock(*(v4 + 40));
  v14 = v1[27];
  swift_getObjectType();
  v15 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v14);

  sub_1AF6B1B20(a1, v15, v14);
  v16 = *(v4 + 40);

  os_unfair_lock_unlock(v16);
}

uint64_t sub_1AF5D53A4(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v76 = a8;
  v78 = a7;
  v80 = a5;
  v81 = a3;
  v10 = sub_1AFDFC128();
  v11 = *(v10 - 8);
  v82 = v10;
  v83 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[2];
  v15 = a2[3];
  v75 = a2;
  v16 = a2[4];
  v17 = a2[5];
  v79 = v17;
  if (v16)
  {
    ObjectType = swift_getObjectType();
    v19 = v13;
    (*(v17 + 1))(v14, v15, ObjectType, v17);
  }

  else
  {
    v19 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v86 = 0;
    v87 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF2C630);
    MEMORY[0x1B2718AE0](v14, v15);
    MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2C660);
    v20 = v86;
    v21 = v87;
    v22 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v86 = 0;
    sub_1AF0D4F18(v22, &v86, v20, v21);

    sub_1AFDFC018();
  }

  v23 = *(a1 + 8);
  v24 = *(a1 + 32);

  v25 = sub_1AF64B03C(&type metadata for MeshImportOptions, &off_1F252BE88);
  v27 = v26;

  if (v27)
  {
    v77 = 0;
  }

  else
  {
    v77 = *(v25 + 16 * v24);
  }

  sub_1AFDFBFD8();
  v28 = sub_1AFDFCF98();
  v30 = v29;

  v31 = v28 == 1752393069 && v30 == 0xE400000000000000;
  if (v31 || (sub_1AFDFEE28() & 1) != 0)
  {

    v32 = v79;
    if (*(v23 + 32) == 1)
    {
      LOBYTE(v86) = 0;
      sub_1AF80F414(0);
    }

    v33 = sub_1AF8C7D14(v14, v15, v16, v32, v80);
    (*(v83 + 8))(v19, v82);
    v34 = v81;

    *v34 = v33;
    return result;
  }

  v36 = v28 == 1718905959 && v30 == 0xE400000000000000;
  if (v36 || (sub_1AFDFEE28() & 1) != 0)
  {
    (*(v83 + 8))(v19, v82);
  }

  v37 = v28 == 2053403509 && v30 == 0xE400000000000000;
  if (v37 || (sub_1AFDFEE28() & 1) != 0 || v28 == 6583157 && v30 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0 || v28 == 6972015 && v30 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0 || v28 == 7107699 && v30 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0 || v28 == 6513249 && v30 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0 || v28 == 7957616 && v30 == 0xE300000000000000)
  {

LABEL_46:
    type metadata accessor for MDLImporter();
    swift_initStackObject();
    v38 = v78;

    v39 = sub_1AF6DF550(v77, v38);
    v40 = v84;
    sub_1AF6E4330();
    v41 = v40;
    if (v40)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v86 = 0;
      v87 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF2C690);
      swift_getErrorValue();
      sub_1AFDFEDD8();
      v43 = v86;
      v42 = v87;
      v44 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        v74 = v44;
        swift_once();
        v44 = v74;
      }

      v86 = 0;
      sub_1AF0D4F18(v44, &v86, v43, v42);

      v41 = 0;
    }

    v45 = v39[7];
    v46 = *(v45 + 16);
    if (v46 && (v47 = sub_1AF3CA3E4(*(v45 + 8 * v46 + 24)), v48))
    {
      v49 = v47;
      v50 = v48;
      v51 = v81;

      *v51 = v49;
      v52 = *(v50 + 16);
      if (v52)
      {
        v78 = v49;
        v79 = v19;
        v84 = v41;
        v80 = **(v76 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        v53 = MEMORY[0x1E69E7CC0];
        v86 = MEMORY[0x1E69E7CC0];
        sub_1AFC07194(0, v52, 0);
        v54 = v86;
        v77 = v50;
        v55 = v50 + 36;
        do
        {
          v56 = v39;
          v57 = v39[3];
          v58 = *(v55 - 4);
          v59 = sub_1AF42B4D0(v53);
          type metadata accessor for RemapContext();
          v60 = swift_allocObject();
          *(v60 + 16) = 0;
          *(v60 + 24) = sub_1AF42B4D0(v53);

          v61 = sub_1AF42B590(v53);
          *(v60 + 24) = v59;
          *(v60 + 32) = v61;

          *(v60 + 16) = 0;
          sub_1AF65B02C(v58, v60);
          v85 = 1;
          sub_1AF630BA4(v60, v57, 0x100000000uLL, 0, v80);
          v62 = 0xFFFFFFFFLL;
          if (*(*(v60 + 24) + 16))
          {
            sub_1AF449D3C(v58);
            v63 = *(v60 + 24);
            if (*(v63 + 16))
            {
              v64 = sub_1AF449D3C(v58);
              if (v65)
              {
                v62 = *(*(v63 + 56) + 8 * v64);
              }
            }
          }

          v86 = v54;
          v67 = *(v54 + 16);
          v66 = *(v54 + 24);
          if (v67 >= v66 >> 1)
          {
            sub_1AFC07194(v66 > 1, v67 + 1, 1);
            v54 = v86;
          }

          v55 += 8;
          *(v54 + 16) = v67 + 1;
          *(v54 + 8 * v67 + 32) = v62;
          --v52;
          v39 = v56;
        }

        while (v52);

        (*(v83 + 8))(v79, v82);
      }

      else
      {

        (*(v83 + 8))(v19, v82);
        v54 = MEMORY[0x1E69E7CC0];
      }

      v68 = v81;

      v68[1] = v54;
    }

    else
    {
      (*(v83 + 8))(v19, v82);
    }

    return result;
  }

  v69 = sub_1AFDFEE28();

  if (v69)
  {
    goto LABEL_46;
  }

  type metadata accessor for VFXCoreImporter();
  v70 = sub_1AF6E571C(v19, v75[6], v76);
  v72 = v71;
  result = (*(v83 + 8))(v19, v82);
  if (v72)
  {
    v73 = v81;

    *v73 = v70;
    v73[1] = v72;
  }

  return result;
}

uint64_t sub_1AF5D5E24(uint64_t result, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t, uint64_t))
{
  v23 = v3[10];
  v24 = result;
  if (v23 >= 1)
  {
    v5 = v3;
    v29 = v4;
    v6 = v3[5];
    v7 = v3[7];
    v8 = v3[8];
    v9 = v3[9];
    ecs_stack_allocator_push_snapshot(v9[4]);
    v10 = v9[4];
    if (v7)
    {
      v21 = v8;
      v41 = *(v8 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v11 = (v6 + 24);
      v22 = v5;
      while (1)
      {
        v13 = *(v11 - 6);
        v12 = *(v11 - 5);
        v14 = *(v11 - 4);
        v27 = *v11;
        v28 = *(v11 - 1);
        v16 = v11[1];
        v15 = v11[2];
        if (v41)
        {
          v17 = *(v15 + 376);

          os_unfair_lock_lock(v17);
          os_unfair_lock_lock(*(v15 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v10);

        sub_1AF630914(v18, v9, v30);

        v40 = 1;
        v35[0] = v21;
        v35[1] = v15;
        v35[2] = v9;
        v35[3] = v14;
        v35[4] = (v12 - v13 + v14);
        v35[5] = v23;
        v35[6] = v13;
        v35[7] = v12;
        v35[8] = 0;
        v35[9] = 0;
        v36 = 1;
        v37 = v28;
        v38 = v27;
        v39 = v16;
        a3(v35, v9, v24, a2);
        if (v29)
        {
          break;
        }

        v19 = *(v22 + 1);
        v31[0] = *v22;
        v31[1] = v19;
        v32 = v22[4];
        sub_1AF630994(v9, v31, v30);
        v29 = 0;
        sub_1AF62D29C(v15);
        ecs_stack_allocator_pop_snapshot(v10);
        if (v41)
        {
          os_unfair_lock_unlock(*(v15 + 344));
          os_unfair_lock_unlock(*(v15 + 376));
        }

        v11 += 6;
        if (!--v7)
        {
          v10 = v9[4];
          return ecs_stack_allocator_pop_snapshot(v10);
        }
      }

      v20 = *(v22 + 1);
      v33[0] = *v22;
      v33[1] = v20;
      v34 = v22[4];
      sub_1AF630994(v9, v33, v30);
      sub_1AF62D29C(v15);
      ecs_stack_allocator_pop_snapshot(v10);
      if (v41)
      {
        os_unfair_lock_unlock(*(v15 + 344));
        os_unfair_lock_unlock(*(v15 + 376));
      }

      return ecs_stack_allocator_pop_snapshot(v9[4]);
    }

    else
    {
      return ecs_stack_allocator_pop_snapshot(v10);
    }
  }

  return result;
}

void sub_1AF5D6070(uint64_t a1)
{
  v2 = 0;
  v3 = *(v1 + 176);
  v4 = *(v1 + 192);
  v374 = *(v1 + 208);
  v373[0] = v3;
  v373[1] = v4;
  sub_1AF6B06C0(a1, v373, 0x200000000, v316);
  if (*&v316[0])
  {
    if (v320 >= 1 && v318)
    {
      v5 = v317;
      v262 = v319;
      v6 = v317 + 48 * v318;
      v246 = v6;
      do
      {
        v7 = *(v5 + 40);
        v8 = *(v7 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v8);
        os_unfair_lock_lock(*(v7 + 344));
        v9 = *(v7 + 24);

        *&v357 = 0;
        v356 = 0u;
        v355 = 0u;
        memset(v334, 0, 40);
        v10 = sub_1AF65A4B4(v9, &type metadata for VertexLayoutCollection, &off_1F252BDA8, 0, 0, &v355, v334);

        sub_1AF5DD41C(v334);
        sub_1AF5DD41C(&v355);
        if (sub_1AF649CEC(v10))
        {
          sub_1AF649D40(v10, v262);
        }

        else
        {
          v12 = *(v7 + 232);
          v11 = *(v7 + 240);
          v273 = *(v7 + 120);
          v302 = *(v7 + 28);
          v296 = *(v7 + 32);
          v13 = *(v7 + 16);
          v14 = *(v7 + 40);
          v15 = *(v14 + 200);
          v285 = *(*(v13 + 88) + 8 * v10 + 32);

          if ((v15 & 1) != 0 || *(v285 + 200) == 1)
          {
            *(v13 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v14 = *(v7 + 40);
          }

          v16 = v273;
          v278 = *(v7 + 128);
          v17 = *(v7 + 256);
          sub_1AF5B4FCC(v14, v12, v11, 0, v7);
          v266 = *(v7 + 256);
          v18 = v266 - v17;
          if (v266 == v17)
          {
            v19 = 0;
          }

          else
          {
            v19 = v17;
          }

          *&v334[0] = v19;
          v20 = *(*(v7 + 40) + 24);
          v21 = *(v20 + 16);
          if (v21)
          {
            v251 = v5;
            v22 = v20 + 32;

            v23 = 0;
            v24 = v266 - v17;
            do
            {
              v25 = (v22 + 40 * v23);
              if ((v25[4] & 1) == 0)
              {
                v26 = *v25;
                v28 = v25[2];
                v27 = v25[3];
                v29 = *(v285 + 24);
                v30 = *(v29 + 16);
                if (v30)
                {
                  v31 = (v29 + 32);
                  while (*v31 != v26)
                  {
                    v31 += 5;
                    if (!--v30)
                    {
                      goto LABEL_16;
                    }
                  }
                }

                else
                {
LABEL_16:
                  sub_1AF640BC8(v278 + v28 * v19 + v27, v24);
                  v24 = v266 - v17;
                }
              }

              ++v23;
            }

            while (v23 != v21);
            v18 = v24;

            v5 = v251;
            v16 = v273;
          }

          if (*(v13 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v13 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v7 + 72) * v18);
          }

          if (*(v7 + 184))
          {
            v32 = 0;
          }

          else
          {
            v32 = *(v7 + 168);
          }

          *&v330[0] = 0;

          MEMORY[0x1EEE9AC00](v33);
          v34 = v302;
          v35 = v296;
          *&v356 = v32;
          DWORD2(v356) = -1;
          *&v357 = v17;
          *(&v357 + 1) = v266;
          *&v358 = v17;
          *(&v358 + 1) = v266;
          *&v355 = v17;
          *(&v355 + 1) = v266;
          if (v18 < 1)
          {

            v6 = v246;
          }

          else
          {
            v6 = v246;
            do
            {
              LOBYTE(v326[0]) = v35;
              sub_1AF6248A8(v10, v34 | (v35 << 32), v16, v13, &v355, sub_1AF5C5E08);
              v35 = v296;
              v34 = v302;
            }

            while ((*(&v355 + 1) - v355) > 0);
          }

          v36 = *(v7 + 192);
          if (v36)
          {
            v37 = *(v7 + 208);
            sub_1AF75D364(v17, v266, v36);
            sub_1AF75D364(v17, v266, v37);
          }
        }

        v5 += 48;
        os_unfair_lock_unlock(*(v7 + 344));
        os_unfair_lock_unlock(*(v7 + 376));
      }

      while (v5 != v6);
    }

    sub_1AF5DD530(v316, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF5DE4E0);
    v2 = 0;
  }

  v38 = *(v248 + 152);
  v371[0] = *(v248 + 136);
  v371[1] = v38;
  v372 = *(v248 + 168);
  sub_1AF6B06C0(a1, v371, 0x200000000, v321);
  if (*&v321[0])
  {
    if (v325 >= 1 && v323)
    {
      v39 = v322;
      v263 = v324;
      v40 = v322 + 48 * v323;
      v247 = v40;
      do
      {
        v41 = *(v39 + 40);
        v42 = *(v41 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v42);
        os_unfair_lock_lock(*(v41 + 344));
        v43 = *(v41 + 24);

        *&v357 = 0;
        v356 = 0u;
        v355 = 0u;
        memset(v334, 0, 40);
        v44 = sub_1AF65A4B4(v43, &type metadata for VertexLayoutCollection, &off_1F252BDA8, 0, 0, &v355, v334);

        sub_1AF5DD41C(v334);
        sub_1AF5DD41C(&v355);
        if (sub_1AF649CEC(v44))
        {
          sub_1AF649D40(v44, v263);
        }

        else
        {
          v46 = *(v41 + 232);
          v45 = *(v41 + 240);
          v274 = *(v41 + 120);
          v303 = *(v41 + 28);
          v297 = *(v41 + 32);
          v47 = *(v41 + 16);
          v48 = *(v41 + 40);
          v49 = *(v48 + 200);
          v286 = *(*(v47 + 88) + 8 * v44 + 32);

          if ((v49 & 1) != 0 || *(v286 + 200) == 1)
          {
            *(v47 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v48 = *(v41 + 40);
          }

          v50 = v274;
          v279 = *(v41 + 128);
          v51 = *(v41 + 256);
          sub_1AF5B4FCC(v48, v46, v45, 0, v41);
          v267 = *(v41 + 256);
          v52 = v267 - v51;
          if (v267 == v51)
          {
            v53 = 0;
          }

          else
          {
            v53 = v51;
          }

          *&v334[0] = v53;
          v54 = *(*(v41 + 40) + 24);
          v55 = *(v54 + 16);
          if (v55)
          {
            v252 = v39;
            v56 = v54 + 32;

            v57 = 0;
            v58 = v267 - v51;
            do
            {
              v59 = (v56 + 40 * v57);
              if ((v59[4] & 1) == 0)
              {
                v60 = *v59;
                v62 = v59[2];
                v61 = v59[3];
                v63 = *(v286 + 24);
                v64 = *(v63 + 16);
                if (v64)
                {
                  v65 = (v63 + 32);
                  while (*v65 != v60)
                  {
                    v65 += 5;
                    if (!--v64)
                    {
                      goto LABEL_54;
                    }
                  }
                }

                else
                {
LABEL_54:
                  sub_1AF640BC8(v279 + v62 * v53 + v61, v58);
                  v58 = v267 - v51;
                }
              }

              ++v57;
            }

            while (v57 != v55);
            v52 = v58;

            v39 = v252;
            v50 = v274;
          }

          if (*(v47 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v47 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v41 + 72) * v52);
          }

          if (*(v41 + 184))
          {
            v66 = 0;
          }

          else
          {
            v66 = *(v41 + 168);
          }

          *&v330[0] = 0;

          MEMORY[0x1EEE9AC00](v67);
          v68 = v303;
          v69 = v297;
          *&v356 = v66;
          DWORD2(v356) = -1;
          *&v357 = v51;
          *(&v357 + 1) = v267;
          *&v358 = v51;
          *(&v358 + 1) = v267;
          *&v355 = v51;
          *(&v355 + 1) = v267;
          if (v52 < 1)
          {

            v40 = v247;
          }

          else
          {
            v40 = v247;
            do
            {
              LOBYTE(v326[0]) = v69;
              sub_1AF6248A8(v44, v68 | (v69 << 32), v50, v47, &v355, sub_1AF5C44B0);
              v69 = v297;
              v68 = v303;
            }

            while ((*(&v355 + 1) - v355) > 0);
          }

          v70 = *(v41 + 192);
          if (v70)
          {
            v71 = *(v41 + 208);
            sub_1AF75D364(v51, v267, v70);
            sub_1AF75D364(v51, v267, v71);
          }
        }

        v39 += 48;
        os_unfair_lock_unlock(*(v41 + 344));
        os_unfair_lock_unlock(*(v41 + 376));
      }

      while (v39 != v40);
    }

    sub_1AF5DD530(v321, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF5DE4E0);
    v2 = 0;
  }

  v72 = *(v248 + 72);
  v369[0] = *(v248 + 56);
  v369[1] = v72;
  v370 = *(v248 + 88);
  sub_1AF6B06C0(a1, v369, 0x200000000, v326);
  if (*&v326[0])
  {
    if (v329 >= 1)
    {
      v275 = *(&v327 + 1);
      if (*(&v327 + 1))
      {
        v270 = *(&v326[2] + 1);
        v73 = *(&v328 + 1);
        v74 = *(*(&v328 + 1) + 32);
        v298 = *(v328 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v343 = *&v326[0];
        v344 = *(v326 + 8);
        v345 = *(&v326[1] + 8);
        v280 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
        v357 = v326[2];
        v358 = v327;
        v359 = v328;
        v360 = v329;
        v355 = v326[0];
        v356 = v326[1];
        sub_1AF5D15C0(v326, v334);
        sub_1AF5DD298(&v355, v334);
        v75 = 0;
        v268 = v74;
        do
        {
          v287 = v75;
          v291 = v2;
          v76 = (v270 + 48 * v75);
          v78 = *v76;
          v77 = v76[1];
          v79 = *(v76 + 3);
          v304 = *(v76 + 2);
          v80 = *(v76 + 4);
          v81 = *(v76 + 5);
          if (v298)
          {
            v82 = *(v81 + 376);

            os_unfair_lock_lock(v82);
            os_unfair_lock_lock(*(v81 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v74);
          v83 = *(v73 + 64);
          v367[0] = *(v73 + 48);
          v367[1] = v83;
          v368 = *(v73 + 80);
          v84 = *(*(*(*(v81 + 40) + 16) + 32) + 16) + 1;
          *(v73 + 48) = ecs_stack_allocator_allocate(*(v73 + 32), 48 * v84, 8);
          *(v73 + 56) = v84;
          *(v73 + 72) = 0;
          *(v73 + 80) = 0;
          *(v73 + 64) = 0;
          v85 = v304;
          v86 = sub_1AF64B110(&type metadata for ParticleMeshRenderer, &off_1F2550788, v304, v79, v80, v73);
          if (v304)
          {
            v87 = v280;
            if (v80)
            {
              for (i = 0; i != v80; ++i)
              {
                v90 = &v86[40 * i];
                v92 = *v90;
                v91 = *(v90 + 1);
                v93 = v92 == -1 && v91 == 0;
                if (!v93 && (v92 & 0x80000000) == 0 && v87[1] > v92)
                {
                  v94 = (*v87 + 12 * v92);
                  if (v91 == -1 || v94[2] == v91)
                  {
                    v96 = *(v94 + 2);
                    v97 = *(*(a1 + 144) + 8 * *v94 + 32);
                    v98 = *(v97 + 48);
                    v99 = (v98 + 32);
                    v100 = *(v98 + 16) + 1;
                    while (--v100)
                    {
                      v101 = v99 + 5;
                      v102 = *v99;
                      v99 += 5;
                      if (v102 == &type metadata for MeshModel)
                      {
                        v103 = *(&(*(v101 - 2))[v96].Kind + *(v97 + 128));
                        if (v103)
                        {
                          if (*(v103 + 24))
                          {
                            v255 = v85[i];
                            v259 = *(v103 + 24);
                            v253 = *(v103 + 16);
                            v104 = *(v81 + 64);
                            v105 = *(v81 + 96);
                            v330[2] = *(v81 + 80);
                            v331 = v105;
                            LOBYTE(v332) = *(v81 + 112);
                            v106 = *(v81 + 64);
                            v330[0] = *(v81 + 48);
                            v330[1] = v104;
                            v107 = *(v81 + 96);
                            v311 = v330[2];
                            v312 = v107;
                            LOBYTE(v313) = *(v81 + 112);
                            v309 = *(v81 + 48);
                            v310 = v106;
                            v249 = sub_1AF64FB24(&type metadata for VertexLayoutCollection);
                            v109 = v108;
                            v334[2] = v311;
                            v335 = v312;
                            LOBYTE(v336) = v313;
                            v334[0] = v309;
                            v334[1] = v310;

                            sub_1AF5DD36C(v330, v307);
                            sub_1AF5DD3C8(v334);
                            if (v109)
                            {
                            }

                            else
                            {
                              v110 = *(v81 + 128);

                              sub_1AF5DE4E0(0, &qword_1EB630A38, &type metadata for VertexLayout, MEMORY[0x1E69E6F90]);
                              v111 = swift_allocObject();
                              *(v111 + 16) = xmmword_1AFE431C0;
                              *(v111 + 32) = v253;
                              *(v111 + 40) = v259;
                              *(v110 + v249 + 8 * v255) = v111;
                            }

                            v87 = v280;
                          }

                          v85 = v304;
                        }

                        break;
                      }
                    }
                  }
                }
              }
            }
          }

          else
          {
            v89 = v280;
            if (v78 != v77)
            {
              do
              {
                v112 = &v86[40 * v78];
                v114 = *v112;
                v113 = *(v112 + 1);
                v115 = v114 == -1 && v113 == 0;
                if (!v115 && (v114 & 0x80000000) == 0 && v89[1] > v114)
                {
                  v116 = (*v89 + 12 * v114);
                  if (v113 == -1 || v116[2] == v113)
                  {
                    v118 = *(v116 + 2);
                    v119 = *(*(a1 + 144) + 8 * *v116 + 32);
                    v120 = *(v119 + 48);
                    v121 = (v120 + 32);
                    v122 = *(v120 + 16) + 1;
                    while (--v122)
                    {
                      v123 = v121 + 5;
                      v124 = *v121;
                      v121 += 5;
                      if (v124 == &type metadata for MeshModel)
                      {
                        v125 = *(&(*(v123 - 2))[v118].Kind + *(v119 + 128));
                        if (v125 && *(v125 + 24))
                        {
                          v260 = *(v125 + 16);
                          v264 = *(v125 + 24);
                          v126 = *(v81 + 64);
                          v127 = *(v81 + 96);
                          v330[2] = *(v81 + 80);
                          v331 = v127;
                          LOBYTE(v332) = *(v81 + 112);
                          v128 = *(v81 + 64);
                          v330[0] = *(v81 + 48);
                          v330[1] = v126;
                          v129 = *(v81 + 96);
                          v311 = v330[2];
                          v312 = v129;
                          LOBYTE(v313) = *(v81 + 112);
                          v309 = *(v81 + 48);
                          v310 = v128;
                          v256 = sub_1AF64FB24(&type metadata for VertexLayoutCollection);
                          v131 = v130;
                          v334[2] = v311;
                          v335 = v312;
                          LOBYTE(v336) = v313;
                          v334[0] = v309;
                          v334[1] = v310;

                          sub_1AF5DD36C(v330, v307);
                          sub_1AF5DD3C8(v334);
                          if (v131)
                          {
                          }

                          else
                          {
                            v132 = *(v81 + 128);

                            sub_1AF5DE4E0(0, &qword_1EB630A38, &type metadata for VertexLayout, MEMORY[0x1E69E6F90]);
                            v133 = swift_allocObject();
                            *(v133 + 16) = xmmword_1AFE431C0;
                            *(v133 + 32) = v260;
                            *(v133 + 40) = v264;
                            *(v132 + v256 + 8 * v78) = v133;
                          }

                          v89 = v280;
                        }

                        break;
                      }
                    }
                  }
                }

                ++v78;
              }

              while (v78 != v77);
            }
          }

          v2 = v291;
          sub_1AF630994(v73, &v343, v367);
          sub_1AF62D29C(v81);
          v74 = v268;
          ecs_stack_allocator_pop_snapshot(v268);
          if (v298)
          {
            os_unfair_lock_unlock(*(v81 + 344));
            os_unfair_lock_unlock(*(v81 + 376));
          }

          v75 = v287 + 1;
        }

        while (v287 + 1 != v275);
        v134 = MEMORY[0x1E69E6720];
        sub_1AF5DD530(v326, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF5DE4E0);
        sub_1AF5DD530(v326, &qword_1ED725EA0, &type metadata for QueryResult, v134, sub_1AF5DE4E0);
      }
    }
  }

  v261 = sub_1AF43BB9C(MEMORY[0x1E69E7CC0]);
  v315 = v261;
  v135 = *(v248 + 112);
  v307[0] = *(v248 + 96);
  v307[1] = v135;
  v308 = *(v248 + 128);
  sub_1AF6B06C0(a1, v307, 0x200000000, v330);
  v250 = *&v330[0];
  if (*&v330[0])
  {
    v136 = *(&v330[2] + 1);
    v137 = *(&v331 + 1);
    v281 = *(&v332 + 1);
    v341 = *(v330 + 8);
    v342 = *(&v330[1] + 8);
    if (v333 > 0 && *(&v331 + 1))
    {
      v276 = *(*(&v332 + 1) + 32);
      v271 = *(v332 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v254 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v357 = v330[2];
      v358 = v331;
      v359 = v332;
      v360 = v333;
      v355 = v330[0];
      v356 = v330[1];
      sub_1AF5DD298(&v355, v334);
      v138 = 0;
      v242 = v136;
      v243 = v137;
      while (1)
      {
        v269 = v138;
        v139 = (v136 + 48 * v138);
        v140 = *v139;
        v257 = v139[1];
        v141 = *(v139 + 2);
        v142 = *(v139 + 3);
        v143 = *(v139 + 5);
        v288 = *(v139 + 4);
        if (v271)
        {
          v144 = *(v143 + 376);

          os_unfair_lock_lock(v144);
          os_unfair_lock_lock(*(v143 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v276);
        v145 = *(v281 + 64);
        v365[0] = *(v281 + 48);
        v365[1] = v145;
        v366 = *(v281 + 80);
        v146 = *(*(*(*(v143 + 40) + 16) + 32) + 16) + 1;
        *(v281 + 48) = ecs_stack_allocator_allocate(*(v281 + 32), 48 * v146, 8);
        *(v281 + 56) = v146;
        *(v281 + 72) = 0;
        *(v281 + 80) = 0;
        *(v281 + 64) = 0;
        v265 = v143;
        v147 = sub_1AF64B110(&type metadata for ModelRenderer, &off_1F2562450, v141, v142, v288, v281);
        if (!v141)
        {
          break;
        }

        v148 = v254;
        if (v288)
        {
          v149 = v288;
          v141 = 0;
          while (1)
          {
            v152 = &v147[16 * v141];
            v153 = *(v152 + 1);
            v154 = *v152;
            v155 = v154 == -1 && v153 == 0;
            if (v155 || (v154 & 0x80000000) != 0 || v148[1] <= v154)
            {
              goto LABEL_149;
            }

            v156 = (*v148 + 12 * v154);
            if (v153 != -1 && v156[2] != v153)
            {
              goto LABEL_149;
            }

            v158 = *(v156 + 2);
            v159 = *(*(a1 + 144) + 8 * *v156 + 32);
            v160 = *(v159 + 48);
            v161 = (v160 + 32);
            v162 = *(v160 + 16) + 1;
            do
            {
              if (!--v162)
              {
                goto LABEL_149;
              }

              v163 = v161 + 5;
              v164 = *v161;
              v161 += 5;
            }

            while (v164 != &type metadata for MeshModel);
            v165 = (&(*(v163 - 2))[v158].Kind + *(v159 + 128));
            v166 = *v165;
            if (!*v165)
            {
              goto LABEL_149;
            }

            v305 = *(v166 + 24);
            if (!v305)
            {
              goto LABEL_149;
            }

            v167 = v165[1];
            v299 = *(v166 + 16);
            v258 = v167;
            if (*(v167 + 16))
            {
              break;
            }

            swift_retain_n();

            v174 = 0;
LABEL_177:
            v176 = *(v152 + 2);
            v177 = *(v152 + 3);
            if (__PAIR64__(v177, v176) == 0xFFFFFFFF)
            {

              sub_1AF0FB8EC(v174, 0);
            }

            else
            {
              v293 = v174;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v334[0] = v261;
              v171 = v176 | (v177 << 32);
              sub_1AF449D3C(v171);
              v180 = v179;
              if (v261[3] >= (v261[2] + ((v179 & 1) == 0)))
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1AF848180();
                }
              }

              else
              {
                sub_1AF8331BC(v261[2] + ((v179 & 1) == 0), isUniquelyReferenced_nonNull_native);
                sub_1AF449D3C(v171);
                if ((v180 & 1) != (v181 & 1))
                {
                  goto LABEL_270;
                }
              }

              v136 = v242;
              v189 = *&v334[0];
              if ((v180 & 1) == 0)
              {
                sub_1AF85B950();
              }

              v261 = v189;

              sub_1AF70D658(v334, v299, v305);

              sub_1AF0FB8EC(v293, 0);
              v137 = v243;
            }

            v148 = v254;
            v149 = v288;
LABEL_149:
            if (++v141 == v149)
            {
              goto LABEL_250;
            }
          }

          v239 = *(v167 + 16);
          v168 = *(v167 + 32);
          swift_bridgeObjectRetain_n();
          swift_retain_n();

          sub_1AF0FB8EC(0, 0);
          v169 = swift_isUniquelyReferenced_nonNull_native();
          *&v309 = v261;
          sub_1AF449D3C(v168);
          v171 = v170;
          v172 = v261[2] + ((v170 & 1) == 0);
          v292 = v2;
          v244 = v147;
          if (v261[3] >= v172)
          {
            if ((v169 & 1) == 0)
            {
              sub_1AF848180();
            }
          }

          else
          {
            sub_1AF8331BC(v172, v169);
            sub_1AF449D3C(v168);
            if ((v171 & 1) != (v173 & 1))
            {
              goto LABEL_270;
            }
          }

          v2 = v309;
          if ((v171 & 1) == 0)
          {
            sub_1AF85B950();
          }

          sub_1AF70D658(v334, v299, v305);

          v175 = v239 - 1;
          if (v239 == 1)
          {
LABEL_176:
            v261 = v2;

            v174 = sub_1AF5D818C;
            v2 = v292;
            v136 = v242;
            v137 = v243;
            v147 = v244;
            goto LABEL_177;
          }

          v182 = v258 + 44;
          while (1)
          {
            v171 = *(v182 - 4);
            sub_1AF0FB8EC(sub_1AF5D818C, 0);
            v183 = v2;
            v184 = swift_isUniquelyReferenced_nonNull_native();
            *&v309 = v183;
            sub_1AF449D3C(v171);
            v186 = v185;
            v187 = v183[2] + ((v185 & 1) == 0);
            if (v183[3] >= v187)
            {
              if ((v184 & 1) == 0)
              {
                sub_1AF848180();
                v2 = v309;
                if (v186)
                {
                  goto LABEL_183;
                }

LABEL_190:
                sub_1AF85B950();
                goto LABEL_183;
              }

              v2 = v183;
              if ((v185 & 1) == 0)
              {
                goto LABEL_190;
              }
            }

            else
            {
              sub_1AF8331BC(v187, v184);
              v2 = v309;
              sub_1AF449D3C(v171);
              if ((v186 & 1) != (v188 & 1))
              {
                goto LABEL_270;
              }

              if ((v186 & 1) == 0)
              {
                goto LABEL_190;
              }
            }

LABEL_183:
            v182 += 8;

            sub_1AF70D658(v334, v299, v305);

            if (!--v175)
            {
              goto LABEL_176;
            }
          }
        }

LABEL_251:
        v346 = v250;
        v347 = v341;
        v348 = v342;
        sub_1AF630994(v281, &v346, v365);
        sub_1AF62D29C(v265);
        ecs_stack_allocator_pop_snapshot(v276);
        if (v271)
        {
          os_unfair_lock_unlock(*(v265 + 344));
          os_unfair_lock_unlock(*(v265 + 376));
        }

        v138 = v269 + 1;
        if (v269 + 1 == v137)
        {
          v224 = MEMORY[0x1E69E6720];
          sub_1AF5DD530(v330, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF5DE4E0);
          sub_1AF5DD530(v330, &qword_1ED725EA0, &type metadata for QueryResult, v224, sub_1AF5DE4E0);
          goto LABEL_255;
        }
      }

      v150 = v254;
      v151 = v257;
      if (v140 == v257)
      {
        goto LABEL_251;
      }

      while (1)
      {
        v190 = &v147[16 * v140];
        v191 = *(v190 + 1);
        v192 = *v190;
        v193 = v192 == -1 && v191 == 0;
        if (v193 || (v192 & 0x80000000) != 0 || v150[1] <= v192)
        {
          goto LABEL_200;
        }

        v194 = (*v150 + 12 * v192);
        if (v191 != -1 && v194[2] != v191)
        {
          goto LABEL_200;
        }

        v196 = *(v194 + 2);
        v197 = *(*(a1 + 144) + 8 * *v194 + 32);
        v198 = *(v197 + 48);
        v199 = (v198 + 32);
        v200 = *(v198 + 16) + 1;
        do
        {
          if (!--v200)
          {
            goto LABEL_200;
          }

          v201 = v199 + 5;
          v202 = *v199;
          v199 += 5;
        }

        while (v202 != &type metadata for MeshModel);
        v203 = (&(*(v201 - 2))[v196].Kind + *(v197 + 128));
        v204 = *v203;
        if (!*v203)
        {
          goto LABEL_200;
        }

        v305 = *(v204 + 24);
        if (!v305)
        {
          goto LABEL_200;
        }

        v240 = &v147[16 * v140];
        v294 = v2;
        v205 = v203[1];
        v300 = *(v204 + 16);
        v206 = *(v205 + 16);
        v289 = v205;
        if (!v206)
        {
          swift_retain_n();

          v211 = 0;
          goto LABEL_227;
        }

        v2 = *(v205 + 32);
        swift_bridgeObjectRetain_n();
        swift_retain_n();

        sub_1AF0FB8EC(0, 0);
        v207 = swift_isUniquelyReferenced_nonNull_native();
        *&v309 = v261;
        sub_1AF449D3C(v2);
        v171 = v208;
        v209 = v261[2] + ((v208 & 1) == 0);
        v245 = v147;
        if (v261[3] < v209)
        {
          break;
        }

        if (v207)
        {
          goto LABEL_223;
        }

        sub_1AF848180();
        v212 = v309;
        if ((v171 & 1) == 0)
        {
          goto LABEL_224;
        }

LABEL_225:

        sub_1AF70D658(v334, v300, v305);

        v213 = v206 - 1;
        if (v206 != 1)
        {
          v219 = v289 + 44;
          do
          {
            v141 = *(v219 - 4);
            sub_1AF0FB8EC(sub_1AF5D818C, 0);
            v220 = swift_isUniquelyReferenced_nonNull_native();
            *&v309 = v212;
            sub_1AF449D3C(v141);
            v171 = v221;
            if (v212[3] >= (v212[2] + ((v221 & 1) == 0)))
            {
              if ((v220 & 1) == 0)
              {
                sub_1AF848180();
                v2 = v309;
                if (v171)
                {
                  goto LABEL_233;
                }

LABEL_240:
                sub_1AF85B950();
                goto LABEL_233;
              }

              v2 = v212;
            }

            else
            {
              sub_1AF8331BC(v212[2] + ((v221 & 1) == 0), v220);
              v2 = v309;
              sub_1AF449D3C(v141);
              if ((v171 & 1) != (v222 & 1))
              {
                goto LABEL_270;
              }
            }

            if ((v171 & 1) == 0)
            {
              goto LABEL_240;
            }

LABEL_233:
            v219 += 8;
            v212 = v2;

            sub_1AF70D658(v334, v300, v305);

            --v213;
          }

          while (v213);
        }

        v261 = v212;

        v211 = sub_1AF5D818C;
        v137 = v243;
        v147 = v245;
LABEL_227:
        v214 = *(v240 + 2);
        v141 = *(v240 + 3);
        v2 = v294;
        if (__PAIR64__(v141, v214) == 0xFFFFFFFF)
        {

          sub_1AF0FB8EC(v211, 0);
          v136 = v242;
          goto LABEL_199;
        }

        v241 = v211;
        v215 = swift_isUniquelyReferenced_nonNull_native();
        *&v334[0] = v261;
        v216 = sub_1AF449D3C(v214 | (v141 << 32));
        v171 = v217;
        if (v261[3] >= (v261[2] + ((v217 & 1) == 0)))
        {
          if ((v215 & 1) == 0)
          {
            v141 = v216;
            sub_1AF848180();
            v223 = *&v334[0];
            if (v171)
            {
              goto LABEL_198;
            }

LABEL_245:
            sub_1AF85B950();
            goto LABEL_198;
          }
        }

        else
        {
          sub_1AF8331BC(v261[2] + ((v217 & 1) == 0), v215);
          sub_1AF449D3C(v214 | (v141 << 32));
          if ((v171 & 1) != (v218 & 1))
          {
LABEL_270:
            sub_1AFDFF1A8();
            __break(1u);

            v349 = v281;
            v350 = v339;
            v351 = v340;
            sub_1AF630994(v305, &v349, v338);
            sub_1AF62D29C(v141);
            ecs_stack_allocator_pop_snapshot(v171);
            os_unfair_lock_unlock(*(v141 + 344));
            os_unfair_lock_unlock(*(v141 + 376));
            __break(1u);
            return;
          }
        }

        v223 = *&v334[0];
        if ((v171 & 1) == 0)
        {
          goto LABEL_245;
        }

LABEL_198:
        v261 = v223;

        sub_1AF70D658(v334, v300, v305);

        sub_1AF0FB8EC(v241, 0);
        v136 = v242;
        v137 = v243;
LABEL_199:
        v150 = v254;
        v151 = v257;
LABEL_200:
        if (++v140 == v151)
        {
LABEL_250:
          v315 = v261;
          goto LABEL_251;
        }
      }

      sub_1AF8331BC(v209, v207);
      sub_1AF449D3C(v2);
      if ((v171 & 1) != (v210 & 1))
      {
        goto LABEL_270;
      }

LABEL_223:
      v212 = v309;
      if (v171)
      {
        goto LABEL_225;
      }

LABEL_224:
      sub_1AF85B950();
      goto LABEL_225;
    }

    sub_1AF5DD530(v330, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF5DE4E0);
  }

LABEL_255:
  v225 = *(v248 + 232);
  v363[0] = *(v248 + 216);
  v363[1] = v225;
  v364 = *(v248 + 248);
  sub_1AF6B06C0(a1, v363, 0x200000000, v334);
  v282 = *&v334[0];
  if (*&v334[0])
  {
    v226 = *(&v334[2] + 1);
    v227 = *(&v335 + 1);
    v306 = *(&v336 + 1);
    v339 = *(v334 + 8);
    v340 = *(&v334[1] + 8);
    v272 = v337;
    v277 = v336;
    if (v337 <= 0)
    {
      sub_1AF5DD530(v326, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF5DE4E0);
      v237 = v334;
    }

    else
    {
      if (*(&v335 + 1))
      {
        v228 = *(*(&v336 + 1) + 32);
        v301 = *(v336 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v311 = v334[2];
        v312 = v335;
        v313 = v336;
        v314 = v337;
        v309 = v334[0];
        v310 = v334[1];
        sub_1AF5DD298(&v309, &v355);
        v229 = (v226 + 24);
        do
        {
          v231 = *(v229 - 6);
          v230 = *(v229 - 5);
          v232 = *(v229 - 4);
          v233 = *(v229 - 1);
          v290 = *v229;
          v295 = v2;
          v234 = v229[2];
          v284 = v229[1];
          if (v301)
          {
            v235 = *(v234 + 376);

            os_unfair_lock_lock(v235);
            os_unfair_lock_lock(*(v234 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v228);

          sub_1AF630914(v236, v306, v338);

          LOBYTE(v349) = 1;
          *&v355 = v277;
          *(&v355 + 1) = v234;
          *&v356 = v306;
          *(&v356 + 1) = v232;
          *&v357 = (v230 - v231 + v232);
          *(&v357 + 1) = v272;
          *&v358 = v231;
          *(&v358 + 1) = v230;
          v359 = 0uLL;
          LOBYTE(v360) = 1;
          *(&v360 + 1) = v233;
          v361 = v290;
          v362 = v284;
          v2 = v295;
          sub_1AFD101E0(&v355, &v315);
          v352 = v282;
          v353 = v339;
          v354 = v340;
          sub_1AF630994(v306, &v352, v338);
          sub_1AF62D29C(v234);
          ecs_stack_allocator_pop_snapshot(v228);
          if (v301)
          {
            os_unfair_lock_unlock(*(v234 + 344));
            os_unfair_lock_unlock(*(v234 + 376));
          }

          v229 += 6;
          --v227;
        }

        while (v227);
      }

      else
      {
        v357 = v334[2];
        v358 = v335;
        v359 = v336;
        v360 = v337;
        v355 = v334[0];
        v356 = v334[1];
        sub_1AF5DD298(&v355, &v309);
      }

      v238 = MEMORY[0x1E69E6720];
      sub_1AF5DD530(v326, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF5DE4E0);
      v237 = v334;
      sub_1AF5DD530(v334, &qword_1ED725EA0, &type metadata for QueryResult, v238, sub_1AF5DE4E0);
    }
  }

  else
  {
    v237 = v326;
  }

  sub_1AF5DD530(v237, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF5DE4E0);
}

uint64_t sub_1AF5D819C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF5D8220()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v44 = qword_1ED73B840;
  v45 = 0;
  v46 = 2;
  v47 = 0;
  v48 = 2;
  v49 = 0;
  sub_1AF702E9C(1, &v19);
  v1 = v20;
  v2 = v21;
  v3 = v23;
  v4 = v22 | 5;
  *(v0 + 16) = v19;
  *(v0 + 24) = v1;
  *(v0 + 28) = v2;
  *(v0 + 32) = v4;
  *(v0 + 40) = 2;
  *(v0 + 48) = v3;
  sub_1AF702EB0(1, &v24);
  v5 = v25;
  v6 = v26;
  v7 = v28;
  v8 = v27 | 4;
  *(v0 + 56) = v24;
  *(v0 + 64) = v5;
  *(v0 + 68) = v6;
  *(v0 + 72) = v8;
  *(v0 + 80) = 2;
  *(v0 + 88) = v7;
  sub_1AF702EC4(1, &v29);
  v9 = v30;
  v10 = v31;
  v11 = v33;
  v12 = v32 | 4;
  *(v0 + 96) = v29;
  *(v0 + 104) = v9;
  *(v0 + 108) = v10;
  *(v0 + 112) = v12;
  *(v0 + 120) = 2;
  *(v0 + 128) = v11;
  sub_1AF702EB0(1, v34);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for VertexLayoutCollection;
  *(inited + 40) = &off_1F252BD28;
  sub_1AF5D1EBC(inited);
  sub_1AF5DD530(v34, &unk_1ED723CF8, &type metadata for ParticleMeshRenderer, &off_1F2550788, sub_1AF5DD590);
  swift_setDeallocating();
  v14 = v36;
  *(v0 + 136) = v35;
  *(v0 + 152) = v14;
  *(v0 + 168) = v37;
  sub_1AF702ED8(1, v38);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  *(v15 + 32) = &type metadata for VertexLayoutCollection;
  *(v15 + 40) = &off_1F252BD28;
  sub_1AF5D1EBC(v15);
  sub_1AF5DD530(v38, &unk_1ED723BE8, &type metadata for Material, &off_1F253F848, sub_1AF5DD590);
  swift_setDeallocating();
  v16 = v40;
  *(v0 + 176) = v39;
  *(v0 + 192) = v16;
  *(v0 + 208) = v41;
  sub_1AFCC3318(1, 2, v42);
  v17 = v42[1];
  *(v0 + 216) = v42[0];
  *(v0 + 232) = v17;
  *(v0 + 248) = v43;
  return v0;
}

uint64_t sub_1AF5D8504(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v10 = result;
    v11 = *(v6 + 32);
    v31[0] = *(v6 + 16);
    v31[1] = v11;
    v32 = *(v6 + 48);

    sub_1AF6B06C0(v10, v31, 0x200000000, &v17);
    if (v17)
    {
      v27 = v20;
      v28 = v21;
      v29 = v22;
      v30 = v23;
      v25 = v18;
      v26 = v19;
      v24 = v17;
      MEMORY[0x1EEE9AC00](v12);
      v13[2] = v10;
      v13[3] = a2;
      v14 = a3;
      v15 = a2;
      v16 = v10;
      sub_1AF5D5E24(a6, v13, sub_1AF5D91AC);
      sub_1AF5DD530(&v17, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF5DE4E0);
    }

    sub_1AF5D6070(v10);
  }

  return result;
}

uint64_t sub_1AF5D86A0()
{
  v0 = swift_allocObject();
  sub_1AF5D8220();
  return v0;
}

uint64_t initializeBufferWithCopyOfBuffer for MeshImportOptions(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MeshImportOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MeshImportOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShaderArchive.Library(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for ShaderArchive.Library(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for MeshFileAsset(uint64_t a1)
{
}

uint64_t initializeWithCopy for MeshFileAsset(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v7 = *(a2 + 32);
  *(a1 + 32) = v7;
  *(a1 + 48) = *(a2 + 48);

  v5 = v7;

  return a1;
}

void *assignWithCopy for MeshFileAsset(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  v4 = a2[4];
  v5 = a2[5];
  v6 = a1[4];
  a1[4] = v4;
  v7 = v4;

  a1[5] = v5;
  a1[6] = a2[6];

  return a1;
}

uint64_t assignWithTake for MeshFileAsset(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  v5 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for MeshFileAsset(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for MeshFileAsset(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t destroy for SceneFileAsset(uint64_t a1)
{
}

uint64_t initializeWithCopy for SceneFileAsset(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v8 = *(a2 + 32);
  *(a1 + 32) = v8;
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;

  v6 = v8;

  return a1;
}

void *assignWithCopy for SceneFileAsset(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  v4 = a2[4];
  v5 = a2[5];
  v6 = a1[4];
  a1[4] = v4;
  v7 = v4;

  a1[5] = v5;
  a1[6] = a2[6];
  a1[7] = a2[7];

  return a1;
}

void *assignWithTake for SceneFileAsset(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;

  a1[2] = *(a2 + 16);

  v5 = *(a2 + 40);
  v6 = a1[4];
  *(a1 + 3) = *(a2 + 24);

  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  a1[5] = v5;
  a1[6] = v7;
  a1[7] = v8;

  return a1;
}

uint64_t getEnumTagSinglePayload for SceneFileAsset(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for SceneFileAsset(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AF5D8D78()
{
  result = qword_1EB63C140;
  if (!qword_1EB63C140)
  {
    result = swift_getWitnessTable(byte_1AFE63EA4, &type metadata for ImportOptions, v0, v1);
    atomic_store(result, &qword_1EB63C140);
  }

  return result;
}

unint64_t sub_1AF5D8DD0()
{
  result = qword_1EB63C148;
  if (!qword_1EB63C148)
  {
    result = swift_getWitnessTable(byte_1AFE63E74, &type metadata for ImportOptions, v0, v1);
    atomic_store(result, &qword_1EB63C148);
  }

  return result;
}

unint64_t sub_1AF5D8E28()
{
  result = qword_1EB63C150;
  if (!qword_1EB63C150)
  {
    result = swift_getWitnessTable(aUp_2, &type metadata for ImportOptions, v0, v1);
    atomic_store(result, &qword_1EB63C150);
  }

  return result;
}

unint64_t sub_1AF5D8E80()
{
  result = qword_1EB63C158;
  if (!qword_1EB63C158)
  {
    result = swift_getWitnessTable(byte_1AFE63F04, &type metadata for ImportOptions, v0, v1);
    atomic_store(result, &qword_1EB63C158);
  }

  return result;
}

uint64_t sub_1AF5D8EEC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  v4 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v15 = qword_1ED73B840;
  v16 = 0;
  v17 = 2;
  v18 = 0;
  v19 = 2;
  v20 = 0;
  a3(&v10, 1);
  v5 = v11;
  v6 = v12;
  v7 = v14;
  v8 = v13 | 4;
  *(v4 + 16) = v10;
  *(v4 + 24) = v5;
  *(v4 + 28) = v6;
  *(v4 + 32) = v8;
  *(v4 + 40) = 2;
  *(v4 + 48) = v7;
  return v4;
}

void sub_1AF5D8FEC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  v6 = *(v4 + 40);

  os_unfair_lock_unlock(v6);
}

unint64_t sub_1AF5D90A8(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_1AFDFD068();
    v13[0] = sub_1AFDFD1C8();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_1AF5D91AC(uint64_t *a1, uint64_t *a2, void (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];

  v9 = sub_1AF64B110(&type metadata for MeshFileAsset, &off_1F252BCD0, v5, v4, v6, v8);
  v10 = v54;
  sub_1AF649C6C(*(v7 + 40), &type metadata for MeshModel, &v58);
  v63 = v7;
  if (v58 == 1)
  {
    a2[9] = &type metadata for MeshModel;
    a2[10] = &off_1F2562500;
    v11 = sub_1AF64B110(&type metadata for MeshModel, &off_1F2562500, v5, v4, v6, v8);
    v12 = v11;
    if (v5)
    {
      if (v6)
      {
        v13 = v8;
        v14 = a1[3];
        v15 = *a1;
        do
        {
          v16 = *v5++;
          v59[0] = v15;
          v59[1] = v63;
          v59[2] = v13;
          v59[3] = v14;
          v59[4] = v16;
          a3(v59, v9, v12);
          if (v54)
          {
            break;
          }

          v12 += 16;
          v9 += 56;
          ++v14;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      v30 = v8;
      v31 = a1[3];
      v32 = a1[6];
      v33 = a1[7];
      v34 = &v9[56 * v32];
      v35 = &v11[16 * v32];
      do
      {
        if (v33 == v32)
        {
          break;
        }

        v36 = v32 + 1;
        v60[0] = *a1;
        v60[1] = v63;
        v60[2] = v30;
        v60[3] = v31;
        v60[4] = v32;
        a3(v60, v34, v35);
        ++v31;
        v34 += 56;
        v35 += 16;
        v32 = v36;
      }

      while (!v54);
    }
  }

  v17 = v6;
  if (!v5)
  {
    v17 = a1[7] - a1[6];
  }

  v55 = 16 * v17;
  v18 = ecs_stack_allocator_allocate(a2[4], 16 * v17, 8);
  v19 = v4;
  if (v17)
  {
    v20 = MEMORY[0x1E69E7CC0];
    if (v17 > 0x17)
    {
      v21 = 0;
      v47 = 2 * (v17 - 1);
      if (&v18[v47] >= v18 && &v18[v47 + 1] >= v18 + 1 && !((v17 - 1) >> 60))
      {
        v21 = v17 & 0x1FFFFFFFFFFFFFFCLL;
        v48 = v18 + 4;
        *&v49 = 0;
        *(&v49 + 1) = MEMORY[0x1E69E7CC0];
        v50 = v17 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          *(v48 - 2) = v49;
          *(v48 - 1) = v49;
          *v48 = v49;
          v48[1] = v49;
          v48 += 4;
          v50 -= 4;
        }

        while (v50);
        if (v17 == v21)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = v17 - v21;
    v23 = &v18[2 * v21 + 1];
    do
    {
      *(v23 - 1) = 0;
      *v23 = v20;
      v23 += 2;
      --v22;
    }

    while (v22);
  }

LABEL_15:
  v52 = v17;
  v53 = v18;
  v24 = v8;
  if (v5)
  {
    v25 = 0;
    v26 = v18;
    while (v6 != v25)
    {
      v27 = v5[v25];
      v28 = v25 + 1;
      v29 = v25 + a1[3];
      v61[0] = *a1;
      v61[1] = v63;
      v61[2] = v24;
      v61[3] = v29;
      v61[4] = v27;
      a3(v61, v9, v26);
      v19 = v4;
      v9 += 56;
      v26 += 16;
      v25 = v28;
      if (v10)
      {
        goto LABEL_27;
      }
    }

    v45 = v53;
    v46 = a2;
    sub_1AF5B6D6C(v5, v19, v6, v53, v52, a2);
  }

  else
  {
    v37 = 0;
    v38 = a1[6];
    v39 = &v9[56 * v38];
    v40 = v38 - a1[7];
    v41 = v18;
    while (v40 + v37)
    {
      v42 = v38 + v37;
      v43 = v37 + 1;
      v44 = v37 + a1[3];
      v62[0] = *a1;
      v62[1] = v63;
      v62[2] = v8;
      v62[3] = v44;
      v62[4] = v42;
      a3(v62, v39, v41);
      v41 += 16;
      v39 += 56;
      v37 = v43;
      if (v10)
      {
LABEL_27:
        ecs_stack_allocator_deallocate(a2[4], v53, v55);
      }
    }

    v45 = v53;
    v46 = a2;
    sub_1AF5B7298(*(v63 + 232), *(v63 + 240), v53, v52, a2);
  }

  ecs_stack_allocator_deallocate(v46[4], v45, v55);
}

uint64_t sub_1AF5D95B0(uint64_t *a1, uint64_t *a2, void (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];

  v9 = sub_1AF64B110(&type metadata for PrimitiveGenerator, &off_1F252F1F0, v5, v4, v6, v8);
  v10 = v55;
  sub_1AF649C6C(*(v7 + 40), &type metadata for MeshModel, &v59);
  v64 = v7;
  if (v59 == 1)
  {
    a2[9] = &type metadata for MeshModel;
    a2[10] = &off_1F2562500;
    v11 = sub_1AF64B110(&type metadata for MeshModel, &off_1F2562500, v5, v4, v6, v8);
    v12 = v11;
    if (v5)
    {
      if (v6)
      {
        v13 = v8;
        v14 = a1[3];
        v15 = *a1;
        do
        {
          v16 = *v5++;
          v60[0] = v15;
          v60[1] = v64;
          v60[2] = v13;
          v60[3] = v14;
          v60[4] = v16;
          a3(v60, v9, v12);
          if (v55)
          {
            break;
          }

          v12 += 16;
          v9 += 176;
          ++v14;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      v30 = v8;
      v31 = a1[3];
      v32 = a1[6];
      v33 = a1[7];
      v34 = &v9[176 * v32];
      v35 = &v11[16 * v32];
      do
      {
        if (v33 == v32)
        {
          break;
        }

        v36 = v32 + 1;
        v61[0] = *a1;
        v61[1] = v64;
        v61[2] = v30;
        v61[3] = v31;
        v61[4] = v32;
        a3(v61, v34, v35);
        ++v31;
        v34 += 176;
        v35 += 16;
        v32 = v36;
      }

      while (!v55);
    }
  }

  v17 = v6;
  if (!v5)
  {
    v17 = a1[7] - a1[6];
  }

  v56 = 16 * v17;
  v18 = ecs_stack_allocator_allocate(a2[4], 16 * v17, 8);
  v19 = v4;
  if (v17)
  {
    v20 = MEMORY[0x1E69E7CC0];
    if (v17 > 0x17)
    {
      v21 = 0;
      v47 = 2 * (v17 - 1);
      if (&v18[v47] >= v18 && &v18[v47 + 1] >= v18 + 1 && (v17 - 1) >> 60 == 0)
      {
        v21 = v17 & 0x1FFFFFFFFFFFFFFCLL;
        v49 = v18 + 4;
        *&v50 = 0;
        *(&v50 + 1) = MEMORY[0x1E69E7CC0];
        v51 = v17 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          *(v49 - 2) = v50;
          *(v49 - 1) = v50;
          *v49 = v50;
          v49[1] = v50;
          v49 += 4;
          v51 -= 4;
        }

        while (v51);
        if (v17 == v21)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = v17 - v21;
    v23 = &v18[2 * v21 + 1];
    do
    {
      *(v23 - 1) = 0;
      *v23 = v20;
      v23 += 2;
      --v22;
    }

    while (v22);
  }

LABEL_15:
  v53 = v17;
  v54 = v18;
  v24 = v8;
  if (v5)
  {
    v25 = 0;
    v26 = v18;
    while (v6 != v25)
    {
      v27 = v5[v25];
      v28 = v25 + 1;
      v29 = v25 + a1[3];
      v62[0] = *a1;
      v62[1] = v64;
      v62[2] = v24;
      v62[3] = v29;
      v62[4] = v27;
      a3(v62, v9, v26);
      v19 = v4;
      v9 += 176;
      v26 += 16;
      v25 = v28;
      if (v10)
      {
        goto LABEL_27;
      }
    }

    v45 = v54;
    v46 = a2;
    sub_1AF5B6D6C(v5, v19, v6, v54, v53, a2);
  }

  else
  {
    v37 = 0;
    v38 = a1[6];
    v39 = &v9[176 * v38];
    v40 = v38 - a1[7];
    v41 = v18;
    while (v40 + v37)
    {
      v42 = v38 + v37;
      v43 = v37 + 1;
      v44 = v37 + a1[3];
      v63[0] = *a1;
      v63[1] = v64;
      v63[2] = v8;
      v63[3] = v44;
      v63[4] = v42;
      a3(v63, v39, v41);
      v41 += 16;
      v39 += 176;
      v37 = v43;
      if (v10)
      {
LABEL_27:
        ecs_stack_allocator_deallocate(a2[4], v54, v56);
      }
    }

    v45 = v54;
    v46 = a2;
    sub_1AF5B7298(*(v64 + 232), *(v64 + 240), v54, v53, a2);
  }

  ecs_stack_allocator_deallocate(v46[4], v45, v56);
}

uint64_t sub_1AF5D99B0(uint64_t *a1, uint64_t *a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t a4)
{
  v61[7] = a4;
  v6 = a1[11];
  v5 = a1[12];
  v7 = a1[13];
  v8 = a1[1];
  v9 = a1[2];

  v10 = sub_1AF64B110(&type metadata for VideoCapture, &off_1F256EB00, v6, v5, v7, v9);
  sub_1AF649C6C(v8[5], &type metadata for VideoCaptureRuntime, v54);
  if (v54[0] == 1)
  {
    a2[9] = &type metadata for VideoCaptureRuntime;
    a2[10] = &off_1F256EBB8;
    v11 = sub_1AF64B110(&type metadata for VideoCaptureRuntime, &off_1F256EBB8, v6, v5, v7, v9);
    v12 = v11;
    if (v6)
    {
      if (v7)
      {
        v13 = a1[3];
        v14 = *a1;
        do
        {
          v15 = *v6++;
          v58[0] = v14;
          v58[1] = v8;
          v58[2] = v9;
          v58[3] = v13;
          v58[4] = v15;
          a3(v58, v10, v12);
          if (v51)
          {
            break;
          }

          v12 += 48;
          v10 += 40;
          ++v13;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      v29 = a1[3];
      v30 = a1[6];
      v31 = a1[7];
      v32 = &v10[40 * v30];
      v33 = &v11[48 * v30];
      do
      {
        if (v31 == v30)
        {
          break;
        }

        v34 = v30 + 1;
        v59[0] = *a1;
        v59[1] = v8;
        v59[2] = v9;
        v59[3] = v29;
        v59[4] = v30;
        a3(v59, v32, v33);
        ++v29;
        v32 += 40;
        v33 += 48;
        v30 = v34;
      }

      while (!v51);
    }
  }

  v47 = v5;
  v16 = v7;
  if (!v6)
  {
    v16 = a1[7] - a1[6];
  }

  sub_1AFCFF604(&v55);
  v49 = 48 * v16;
  v17 = ecs_stack_allocator_allocate(a2[4], 48 * v16, 8);
  v50 = v17;
  v48 = v16;
  if (!v16)
  {
    sub_1AF5DDEE8(&v55);
    v24 = 0;
    if (v6)
    {
      goto LABEL_15;
    }

LABEL_24:
    v35 = a1[6];
    v36 = &v10[40 * v35];
    v37 = v35 - a1[7];
    v38 = v50;
    while (v37 + v24)
    {
      v39 = v35 + v24;
      v40 = v24 + 1;
      v41 = v24 + a1[3];
      v61[0] = *a1;
      v61[1] = v8;
      v61[2] = v9;
      v61[3] = v41;
      v61[4] = v39;
      a3(v61, v36, v38);
      v38 += 48;
      v36 += 40;
      v24 = v40;
      if (v51)
      {
LABEL_27:
        v42 = a2[4];
        v43 = v50;
        goto LABEL_32;
      }
    }

    v44 = v50;
    v45 = a2;
    sub_1AF5BA748(v8[29], v8[30], v50, v48, a2);
    goto LABEL_31;
  }

  v18 = v55;
  v19 = v57;
  v17[1] = v56;
  v17[2] = v19;
  *v17 = v18;
  v20 = v16 - 1;
  if (v20)
  {
    v21 = v17 + 3;
    do
    {
      sub_1AF5DDE8C(&v55, v54);
      v22 = v55;
      v23 = v57;
      v21[1] = v56;
      v21[2] = v23;
      *v21 = v22;
      v21 += 3;
      --v20;
    }

    while (v20);
  }

  v24 = 0;
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_15:
  v25 = v50;
  while (v7 != v24)
  {
    v26 = v6[v24];
    v27 = v24 + 1;
    v28 = v24 + a1[3];
    v60[0] = *a1;
    v60[1] = v8;
    v60[2] = v9;
    v60[3] = v28;
    v60[4] = v26;
    a3(v60, v10, v25);
    v10 += 40;
    v25 += 48;
    v24 = v27;
    if (v51)
    {
      goto LABEL_27;
    }
  }

  v44 = v50;
  v45 = a2;
  sub_1AF5BA2B4(v6, v47, v7, v50, v48, a2);
LABEL_31:
  v42 = v45[4];
  v43 = v44;
LABEL_32:
  ecs_stack_allocator_deallocate(v42, v43, v49);
}

uint64_t sub_1AF5D9D68(uint64_t *a1, void *a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t a4)
{
  v70[7] = a4;
  v65 = a3;
  v6 = type metadata accessor for SceneKitRenderer(0);
  v62 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[11];
  v9 = a1[12];
  v11 = a1[13];
  v12 = a1[1];
  v13 = a1[2];

  v61 = v9;
  v64 = v13;
  v14 = sub_1AF64B110(&type metadata for SceneKitAssetInstance, &off_1F2546F58, v10, v9, v11, v13);
  v15 = v63;
  sub_1AF649C6C(*(v12 + 40), v6, &v66);
  if (v66 == 1)
  {
    a2[9] = v6;
    a2[10] = &off_1F2547010;
    v16 = sub_1AF705CF4(v12, a1);
    if (v10)
    {
      if (v11)
      {
        v17 = a1[3];
        v18 = *a1;
        v19 = v62[9];
        do
        {
          v20 = *v10++;
          v67[0] = v18;
          v67[1] = v12;
          v67[2] = v64;
          v67[3] = v17;
          v67[4] = v20;
          v65(v67, v14, v16);
          if (v15)
          {
            break;
          }

          v16 += v19;
          v14 += 12;
          ++v17;
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v38 = a1[3];
      v39 = a1[6];
      v40 = a1[7];
      v41 = &v14[12 * v39];
      v42 = v62;
      do
      {
        if (v40 == v39)
        {
          break;
        }

        v43 = v39 + 1;
        v68[0] = *a1;
        v68[1] = v12;
        v68[2] = v64;
        v68[3] = v38;
        v68[4] = v39;
        v65(v68, v41, &v16[v42[9] * v39]);
        ++v38;
        v41 += 12;
        v39 = v43;
      }

      while (!v15);
    }
  }

  else
  {
    v59 = v15;
    v21 = v11;
    if (!v10)
    {
      v21 = a1[7] - a1[6];
    }

    *v8 = 0;
    *(v8 + 1) = 0;
    v22 = *(v6 + 24);
    v23 = v21;
    v24 = sub_1AFDFC128();
    (*(*(v24 - 8) + 56))(&v8[v22], 1, 1, v24);
    v58 = a2;
    v25 = a2[4];
    v26 = v62[9];
    v27 = *(v62 + 80) + 1;
    v57 = v26 * v23;
    v62 = ecs_stack_allocator_allocate(v25, v26 * v23, v27);
    v60 = v23;
    if (v23)
    {
      v28 = v62;
      v29 = v60;
      do
      {
        sub_1AF5DDE28(v8, v28);
        v28 = (v28 + v26);
        --v29;
      }

      while (v29);
    }

    sub_1AF5DD2F4(v8, type metadata accessor for SceneKitRenderer);
    if (v10)
    {
      v30 = 0;
      v31 = v62;
      v32 = v59;
      while (v11 != v30)
      {
        v33 = v10[v30];
        v34 = v30 + 1;
        v35 = v30 + a1[3];
        v69[0] = *a1;
        v69[1] = v12;
        v69[2] = v64;
        v69[3] = v35;
        v69[4] = v33;
        v65(v69, v14, v31);
        v14 += 12;
        v31 = (v31 + v26);
        v30 = v34;
        if (v32)
        {
          v36 = v58[4];
          v37 = v62;
          goto LABEL_29;
        }
      }

      v53 = v62;
      v54 = v58;
      sub_1AF5BABD0(v10, v61, v11, v62, v60, v58);
    }

    else
    {
      v63 = v12;
      v44 = 0;
      v45 = a1[6];
      v46 = &v14[12 * v45];
      v47 = v45 - a1[7];
      v48 = v62;
      v49 = v59;
      while (v47 + v44)
      {
        v50 = v45 + v44;
        v51 = v44 + 1;
        v52 = v44 + a1[3];
        v70[0] = *a1;
        v70[1] = v63;
        v70[2] = v64;
        v70[3] = v52;
        v70[4] = v50;
        v65(v70, v46, v48);
        v48 = (v48 + v26);
        v46 += 12;
        v44 = v51;
        if (v49)
        {
          ecs_stack_allocator_deallocate(v58[4], v62, v57);
        }
      }

      v53 = v62;
      v54 = v58;
      sub_1AF5BB0FC(*(v63 + 232), *(v63 + 240), v62, v60, v58);
    }

    v36 = v54[4];
    v37 = v53;
LABEL_29:
    ecs_stack_allocator_deallocate(v36, v37, v57);
  }
}

uint64_t sub_1AF5DA2A0(uint64_t *a1, uint64_t *a2, void (*a3)(void *, uint64_t, unint64_t))
{
  v56 = a3;
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];

  v9 = sub_1AF64B110(&type metadata for PointCacheGenerator, &off_1F2567FB0, v5, v4, v6, v8);
  sub_1AF649C6C(*(v7 + 40), &type metadata for PointCacheRuntime, &v51);
  v46 = v48;
  v50 = v7;
  if (v51 == 1)
  {
    a2[9] = &type metadata for PointCacheRuntime;
    a2[10] = &off_1F2568CD0;
    v10 = v8;
    v11 = sub_1AF64B110(&type metadata for PointCacheRuntime, &off_1F2568CD0, v5, v4, v6, v8);
    v12 = v11;
    if (v5)
    {
      if (v6)
      {
        v13 = a1[3];
        v14 = *a1;
        do
        {
          v15 = *v5++;
          v52[0] = v14;
          v52[1] = v7;
          v52[2] = v10;
          v52[3] = v13;
          v52[4] = v15;
          v56(v52, v9, v12);
          if (v48)
          {
            break;
          }

          v12 += 32;
          v9 += 32;
          ++v13;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      v22 = a1[3];
      v23 = a1[6];
      v24 = a1[7];
      v25 = &v9[32 * v23];
      v26 = &v11[32 * v23];
      do
      {
        if (v24 == v23)
        {
          break;
        }

        v27 = v23 + 1;
        v53[0] = *a1;
        v53[1] = v7;
        v53[2] = v10;
        v53[3] = v22;
        v53[4] = v23;
        v56(v53, v25, v26);
        ++v22;
        v25 += 32;
        v26 += 32;
        v23 = v27;
      }

      while (!v48);
    }
  }

  else
  {
    v42 = v4;
    v49 = v8;
    v16 = v6;
    if (!v5)
    {
      v16 = a1[7] - a1[6];
    }

    v17 = sub_1AF42C7DC(MEMORY[0x1E69E7CC0]);
    v18 = a2;
    v44 = 32 * v16;
    v19 = ecs_stack_allocator_allocate(a2[4], 32 * v16, 8);
    v45 = v19;
    v43 = v16;
    if (v16)
    {
      *v19 = v17;
      v19[1] = 0x636143746E696F50;
      v19[2] = 0xEA00000000006568;
      v19[3] = 0;
      v20 = v16 - 1;
      if (v20)
      {
        v21 = v19 + 7;
        do
        {
          *(v21 - 3) = v17;
          *(v21 - 2) = 0x636143746E696F50;
          *(v21 - 1) = 0xEA00000000006568;
          *v21 = 0;

          v21 += 4;
          --v20;
        }

        while (v20);
      }
    }

    else
    {
    }

    v28 = 0;
    if (v5)
    {
      v29 = v45;
      while (v6 != v28)
      {
        v30 = v5[v28];
        v31 = v28 + 1;
        v32 = v28 + a1[3];
        v54[0] = *a1;
        v54[1] = v50;
        v54[2] = v49;
        v54[3] = v32;
        v54[4] = v30;
        v56(v54, v9, v29);
        v9 += 32;
        v29 += 32;
        v28 = v31;
        if (v46)
        {
          v18 = a2;
          goto LABEL_28;
        }
      }

      v40 = v45;
      v18 = a2;
      sub_1AF5BEFD0(v5, v42, v6, v45, v43, a2);
    }

    else
    {
      v33 = a1[6];
      v34 = &v9[32 * v33];
      v35 = v33 - a1[7];
      v36 = v45;
      while (v35 + v28)
      {
        v37 = v33 + v28;
        v38 = v28 + 1;
        v39 = v28 + a1[3];
        v55[0] = *a1;
        v55[1] = v50;
        v55[2] = v8;
        v55[3] = v39;
        v55[4] = v37;
        v56(v55, v34, v36);
        v36 += 32;
        v34 += 32;
        v28 = v38;
        if (v46)
        {
LABEL_28:
          ecs_stack_allocator_deallocate(v18[4], v45, v44);
        }
      }

      v40 = v45;
      sub_1AF5BF4BC(*(v50 + 232), *(v50 + 240), v45, v43, a2);
    }

    ecs_stack_allocator_deallocate(v18[4], v40, v44);
  }
}

uint64_t sub_1AF5DA684(uint64_t *a1, uint64_t *a2, void (*a3)(void *, uint64_t, unint64_t))
{
  v56 = a3;
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];

  v9 = sub_1AF64B110(&type metadata for PointCacheFileAsset, &off_1F2568060, v5, v4, v6, v8);
  sub_1AF649C6C(*(v7 + 40), &type metadata for PointCacheRuntime, &v51);
  v46 = v48;
  v50 = v7;
  if (v51 == 1)
  {
    a2[9] = &type metadata for PointCacheRuntime;
    a2[10] = &off_1F2568CD0;
    v10 = v8;
    v11 = sub_1AF64B110(&type metadata for PointCacheRuntime, &off_1F2568CD0, v5, v4, v6, v8);
    v12 = v11;
    if (v5)
    {
      if (v6)
      {
        v13 = a1[3];
        v14 = *a1;
        do
        {
          v15 = *v5++;
          v52[0] = v14;
          v52[1] = v7;
          v52[2] = v10;
          v52[3] = v13;
          v52[4] = v15;
          v56(v52, v9, v12);
          if (v48)
          {
            break;
          }

          v12 += 32;
          v9 += 48;
          ++v13;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      v22 = a1[3];
      v23 = a1[6];
      v24 = a1[7];
      v25 = &v9[48 * v23];
      v26 = &v11[32 * v23];
      do
      {
        if (v24 == v23)
        {
          break;
        }

        v27 = v23 + 1;
        v53[0] = *a1;
        v53[1] = v7;
        v53[2] = v10;
        v53[3] = v22;
        v53[4] = v23;
        v56(v53, v25, v26);
        ++v22;
        v25 += 48;
        v26 += 32;
        v23 = v27;
      }

      while (!v48);
    }
  }

  else
  {
    v42 = v4;
    v49 = v8;
    v16 = v6;
    if (!v5)
    {
      v16 = a1[7] - a1[6];
    }

    v17 = sub_1AF42C7DC(MEMORY[0x1E69E7CC0]);
    v18 = a2;
    v44 = 32 * v16;
    v19 = ecs_stack_allocator_allocate(a2[4], 32 * v16, 8);
    v45 = v19;
    v43 = v16;
    if (v16)
    {
      *v19 = v17;
      v19[1] = 0x636143746E696F50;
      v19[2] = 0xEA00000000006568;
      v19[3] = 0;
      v20 = v16 - 1;
      if (v20)
      {
        v21 = v19 + 7;
        do
        {
          *(v21 - 3) = v17;
          *(v21 - 2) = 0x636143746E696F50;
          *(v21 - 1) = 0xEA00000000006568;
          *v21 = 0;

          v21 += 4;
          --v20;
        }

        while (v20);
      }
    }

    else
    {
    }

    v28 = 0;
    if (v5)
    {
      v29 = v45;
      while (v6 != v28)
      {
        v30 = v5[v28];
        v31 = v28 + 1;
        v32 = v28 + a1[3];
        v54[0] = *a1;
        v54[1] = v50;
        v54[2] = v49;
        v54[3] = v32;
        v54[4] = v30;
        v56(v54, v9, v29);
        v9 += 48;
        v29 += 32;
        v28 = v31;
        if (v46)
        {
          v18 = a2;
          goto LABEL_28;
        }
      }

      v40 = v45;
      v18 = a2;
      sub_1AF5BEFD0(v5, v42, v6, v45, v43, a2);
    }

    else
    {
      v33 = a1[6];
      v34 = &v9[48 * v33];
      v35 = v33 - a1[7];
      v36 = v45;
      while (v35 + v28)
      {
        v37 = v33 + v28;
        v38 = v28 + 1;
        v39 = v28 + a1[3];
        v55[0] = *a1;
        v55[1] = v50;
        v55[2] = v8;
        v55[3] = v39;
        v55[4] = v37;
        v56(v55, v34, v36);
        v36 += 32;
        v34 += 48;
        v28 = v38;
        if (v46)
        {
LABEL_28:
          ecs_stack_allocator_deallocate(v18[4], v45, v44);
        }
      }

      v40 = v45;
      sub_1AF5BF4BC(*(v50 + 232), *(v50 + 240), v45, v43, a2);
    }

    ecs_stack_allocator_deallocate(v18[4], v40, v44);
  }
}

uint64_t sub_1AF5DAA6C(uint64_t *a1, uint64_t *a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t a4)
{
  v53[7] = a4;
  v6 = a1[11];
  v5 = a1[12];
  v7 = a1[13];
  v8 = a1[1];
  v9 = a1[2];

  v10 = sub_1AF64B110(&type metadata for TexturePlaceholder, &off_1F2546C68, v6, v5, v7, v9);
  v11 = v45;
  sub_1AF649C6C(v8[5], &type metadata for TextureGPURuntime, &v49);
  if (v49 == 1)
  {
    a2[9] = &type metadata for TextureGPURuntime;
    a2[10] = &off_1F2544388;
    v12 = sub_1AF64B110(&type metadata for TextureGPURuntime, &off_1F2544388, v6, v5, v7, v9);
    v13 = v12;
    if (v6)
    {
      if (v7)
      {
        v14 = a1[3];
        v15 = *a1;
        do
        {
          v16 = *v6++;
          v50[0] = v15;
          v50[1] = v8;
          v50[2] = v9;
          v50[3] = v14;
          v50[4] = v16;
          a3(v50, v10, v13);
          if (v45)
          {
            break;
          }

          v13 += 16;
          v10 += 16;
          ++v14;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      v26 = a1[3];
      v27 = a1[6];
      v28 = a1[7];
      v29 = &v10[16 * v27];
      v30 = &v12[16 * v27];
      do
      {
        if (v28 == v27)
        {
          break;
        }

        v31 = v27 + 1;
        v51[0] = *a1;
        v51[1] = v8;
        v51[2] = v9;
        v51[3] = v26;
        v51[4] = v27;
        a3(v51, v29, v30);
        ++v26;
        v29 += 16;
        v30 += 16;
        v27 = v31;
      }

      while (!v45);
    }
  }

  else
  {
    v46 = v5;
    v17 = v7;
    if (!v6)
    {
      v17 = a1[7] - a1[6];
    }

    v18 = v17;
    v19 = 16 * v17;
    v20 = ecs_stack_allocator_allocate(a2[4], 16 * v17, 8);
    v43 = v20;
    v41 = v18;
    if (v18)
    {
      bzero(v20, v19);
      v20 = v43;
    }

    v42 = v19;
    v21 = 0;
    if (v6)
    {
      v22 = v20;
      while (v7 != v21)
      {
        v23 = v6[v21];
        v24 = v21 + 1;
        v25 = v21 + a1[3];
        v52[0] = *a1;
        v52[1] = v8;
        v52[2] = v9;
        v52[3] = v25;
        v52[4] = v23;
        a3(v52, v10, v22);
        v10 += 16;
        v22 += 16;
        v21 = v24;
        if (v11)
        {
          goto LABEL_24;
        }
      }

      v38 = a2;
      v39 = v43;
      sub_1AF5B80C0(v6, v46, v7, v43, v41, a2);
    }

    else
    {
      v32 = a1[6];
      v33 = &v10[16 * v32];
      v47 = v32 - a1[7];
      v34 = v20;
      while (v47 + v21)
      {
        v35 = v32 + v21;
        v36 = v21 + 1;
        v37 = v21 + a1[3];
        v53[0] = *a1;
        v53[1] = v8;
        v53[2] = v9;
        v53[3] = v37;
        v53[4] = v35;
        a3(v53, v33, v34);
        v34 += 16;
        v33 += 16;
        v21 = v36;
        if (v11)
        {
LABEL_24:
          ecs_stack_allocator_deallocate(a2[4], v43, v42);
        }
      }

      v39 = v43;
      v38 = a2;
      sub_1AF5B85AC(v8[29], v8[30], v43, v41, a2);
    }

    ecs_stack_allocator_deallocate(v38[4], v39, v42);
  }
}

uint64_t sub_1AF5DADE8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1AFDFEE28() & 1;
  }
}

unint64_t sub_1AF5DAE40(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF5DAE8C(void *a1)
{
  sub_1AF5DE3A8(0, &qword_1EB63C160, sub_1AF5DDF3C, &type metadata for MeshImportOptions.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = a1[3];
  sub_1AF441150(a1, v8);
  sub_1AF5DDF3C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v9 = a1[3];
    v10 = a1[4];
    sub_1AF441150(a1, v9);
    if (sub_1AF69504C(1014, v9, v10))
    {
      v17 = 1;
      if (sub_1AFDFE6A8())
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }

      v16 = 2;
      v11 = sub_1AFDFE6A8();
      (*(v5 + 8))(v7, v4);
      if (v11 == 2 || (v11 & 1) != 0)
      {
        v8 |= 1uLL;
      }
    }

    else
    {
      v19 = 0;
      sub_1AF5DDF90();
      sub_1AFDFE6E8();
      v8 = v14;
      v13 = v15;
      v18 = 3;
      sub_1AF5DDFE4();
      sub_1AFDFE6E8();
      if (v13)
      {
        v8 = 0;
      }

      (*(v5 + 8))(v7, v4);
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8;
}

double sub_1AF5DB180@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v34 = a2;
  v3 = sub_1AFDFC128();
  v35 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF5DE3A8(0, &qword_1EB63C1C8, sub_1AF5DE354, &type metadata for SceneFileAsset.CodingKeys, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v10 = sub_1AFDFC318();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFC308();
  v37 = sub_1AFDFC2B8();
  v39 = v14;
  (*(v11 + 8))(v13, v10);
  sub_1AF441150(a1, a1[3]);
  sub_1AF5DE354();
  v15 = v38;
  sub_1AFDFF3B8();
  if (v15)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    v44 = 0;
    v45 = 0xE000000000000000;
    v46 = 0;
    v47 = 0xE000000000000000;
    v48 = 0;
    v49 = 0;
    v50 = v37;
    v51 = v39;
    sub_1AF5A3564(&v44);
  }

  else
  {
    v17 = v35;
    v38 = v7;
    v18 = a1[3];
    v19 = a1[4];
    sub_1AF441150(a1, v18);
    if (sub_1AF69504C(2031, v18, v19))
    {
      LOBYTE(v44) = 0;
      sub_1AF5DE224();
      v20 = v5;
      sub_1AFDFE768();
      v21 = sub_1AFDFC028();
      v23 = v22;
      (*(v17 + 8))(v20, v3);

      v24 = 0;
      v25 = 0;
      v26 = v23;
      v35 = v21;
    }

    else
    {
      LOBYTE(v40) = 0;
      sub_1AF5DE134();
      sub_1AFDFE768();
      v21 = v44;
      v26 = v45;
      v23 = v47;
      v35 = v46;
      v25 = v48;
      v24 = v49;
    }

    v52 = 1;
    v33 = sub_1AFDFE708();
    v28 = v27;
    (*(v36 + 8))(v9, v38);

    *&v40 = v21;
    *(&v40 + 1) = v26;
    *&v41 = v35;
    *(&v41 + 1) = v23;
    *&v42 = v25;
    *(&v42 + 1) = v24;
    v29 = v33;
    *&v43 = v33;
    *(&v43 + 1) = v28;
    sub_1AF4402F0(&v40, &v44);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    v44 = v21;
    v45 = v26;
    v46 = v35;
    v47 = v23;
    v48 = v25;
    v49 = v24;
    v50 = v29;
    v51 = v28;
    sub_1AF5A3564(&v44);
    v30 = v41;
    v31 = v34;
    *v34 = v40;
    v31[1] = v30;
    result = *&v42;
    v32 = v43;
    v31[2] = v42;
    v31[3] = v32;
  }

  return result;
}

uint64_t sub_1AF5DB64C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  v3 = sub_1AFDFC128();
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF5DE3A8(0, &unk_1EB630B30, sub_1AF5DE0E0, &type metadata for MeshFileAsset.CodingKeys, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5DE0E0();
  v10 = v32;
  sub_1AFDFF3B8();
  if (v10)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    v32 = v7;
    v11 = a1[3];
    v12 = a1[4];
    sub_1AF441150(a1, v11);
    if (sub_1AF69504C(2031, v11, v12))
    {
      LOBYTE(v33) = 0;
      sub_1AF5DE224();
      v13 = v5;
      v14 = v9;
      sub_1AFDFE768();
      v16 = sub_1AFDFC028();
      v18 = v17;
      v19 = v16;
      (*(v29 + 8))(v13, v3);

      v20 = 0;
      v28 = v19;
      v29 = 0;
      v21 = v18;
      v22 = v14;
    }

    else
    {
      v39 = 0;
      sub_1AF5DE134();
      v22 = v9;
      sub_1AFDFE768();
      v19 = v33;
      v21 = v34;
      v18 = v36;
      v20 = v37;
      v28 = v35;
      v29 = v38;
    }

    LOBYTE(v33) = 1;
    v23 = v32;
    if (sub_1AFDFE808())
    {
      v27 = v19;
      sub_1AF5822B0(0);
      v39 = 1;
      sub_1AF5DE188();
      sub_1AFDFE768();
      (*(v31 + 8))(v22, v23);
      v24 = v33;
      v19 = v27;
    }

    else
    {
      (*(v31 + 8))(v22, v23);
      v24 = 0;
    }

    result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    v25 = v30;
    *v30 = v19;
    v25[1] = v21;
    v26 = v29;
    v25[2] = v28;
    v25[3] = v18;
    v25[4] = v20;
    v25[5] = v26;
    v25[6] = v24;
  }

  return result;
}

uint64_t sub_1AF5DBA4C(void *a1)
{
  sub_1AF5DE3A8(0, &qword_1EB63C190, sub_1AF5DE08C, &type metadata for MeshReferenceAsset.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_1AF441150(a1, a1[3]);
  sub_1AF5DE08C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1AFDFE708();
    v11 = 1;
    sub_1AFDFE708();
    (*(v5 + 8))(v7, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8;
}

uint64_t sub_1AF5DBC48(uint64_t a1)
{
  sub_1AF0D4E74(0);
  v220 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v219 = &v203[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v218 = sub_1AFDFC298();
  v5 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v217 = &v203[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1AFDFC128();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v228 = &v203[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v229 = &v203[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v239 = &v203[-v13];
  v14 = *(a1 + 184);

  v15 = sub_1AF6D36F4(&type metadata for SceneAssetRegistryInstance, &off_1F2536D38, v14);
  v211 = 0;

  v240 = v15;
  if (!v15)
  {
    return result;
  }

  v17 = *(v1 + 32);
  v254[0] = *(v1 + 16);
  v254[1] = v17;
  v255 = *(v1 + 48);
  v212 = a1;
  sub_1AF6B06C0(a1, v254, 0x200000000, v245);
  v207 = *&v245[0];
  if (!*&v245[0])
  {
  }

  v206 = *(&v245[2] + 1);
  v18 = *(&v246 + 1);
  v210 = *(&v247 + 1);
  v249 = *(v245 + 8);
  v250 = *(&v245[1] + 8);
  if (v248 <= 0 || !*(&v246 + 1))
  {

    v201 = MEMORY[0x1E69E6720];
    return sub_1AF5DD530(v245, &qword_1ED725EA0, &type metadata for QueryResult, v201, sub_1AF5DE4E0);
  }

  v209 = v210[4];
  v19 = *(v247 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v221 = (v212 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v244[2] = v245[2];
  v244[3] = v246;
  v244[4] = v247;
  v244[5] = v248;
  v244[0] = v245[0];
  v244[1] = v245[1];
  sub_1AF5DD298(v244, v242);
  v20 = 0;
  v215 = "rl of an asset (";
  v216 = "_TtC3VFX19MeshReferenceSystem";
  v214 = (v5 + 32);
  v227 = (v8 + 16);
  v232 = v8 + 8;
  v213 = xmmword_1AFE431C0;
  v237 = v7;
  v21 = v228;
  v22 = v239;
  v205 = v18;
  v204 = v19;
  while (1)
  {
    v208 = v20;
    v23 = (v206 + 48 * v20);
    v24 = *v23;
    v25 = *(v23 + 2);
    v26 = *(v23 + 3);
    v224 = v23[1];
    v225 = v25;
    v27 = *(v23 + 4);
    v28 = *(v23 + 5);
    if (v19)
    {
      v29 = *(v28 + 376);

      os_unfair_lock_lock(v29);
      os_unfair_lock_lock(*(v28 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v209);
    v30 = v210;
    v31 = *(v210 + 4);
    v242[0] = *(v210 + 3);
    v242[1] = v31;
    v243 = v210[10];
    v32 = *(*(*(*(v28 + 40) + 16) + 32) + 16) + 1;
    v30[6] = ecs_stack_allocator_allocate(v210[4], 48 * v32, 8);
    v30[7] = v32;
    v30[9] = 0;
    v30[10] = 0;
    v30[8] = 0;
    v33 = v225;
    v34 = sub_1AF64B110(&type metadata for SceneFileAsset, &off_1F252BBF8, v225, v26, v27, v30);
    v230 = v232 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v231 = v34;
    v233 = v28;
    if (v33)
    {
      if (v27)
      {
        v35 = 0;
        v224 = v27;
        while (1)
        {
          v42 = v225[v35];

          if (*(v28 + 184))
          {
            goto LABEL_123;
          }

          v44 = *(*(v28 + 168) + 4 * v42);
          v45 = *(*(v43 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v44 + 8);

          if (v44 == -1 && v45 == 0)
          {
            goto LABEL_32;
          }

          v47 = 0;
          v48 = 0;
          if ((v44 & 0x80000000) == 0 && v221[1] > v44)
          {
            break;
          }

          v234 = 0;
LABEL_35:
          LODWORD(v235) = v47;
          v236 = v48;
          v58 = &v231[64 * v35];
          v59 = *(v58 + 2);
          v60 = *(v58 + 3);
          v61 = *(v58 + 4);
          v238 = v35;
          if (v61)
          {
            v62 = v7;
            v63 = *(v58 + 5);
            ObjectType = swift_getObjectType();
            (*(v63 + 8))(v59, v60, ObjectType, v63);
          }

          else
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v241[0] = 0;
            v241[1] = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000020, v216 | 0x8000000000000000);
            MEMORY[0x1B2718AE0](v59, v60);
            MEMORY[0x1B2718AE0](0xD000000000000016, v215 | 0x8000000000000000);
            v66 = v241[0];
            v65 = v241[1];
            v67 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v226 = v60;
            v223 = v59;
            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            v68 = qword_1ED73B890;
            sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v69 = swift_allocObject();
            *(v69 + 16) = v213;
            *(v69 + 56) = MEMORY[0x1E69E6158];
            *(v69 + 64) = sub_1AF0D544C();
            *(v69 + 32) = v66;
            *(v69 + 40) = v65;

            sub_1AFDFC4C8(v67, &dword_1AF0CE000, v68, "%{public}s", 10, 2, v69);

            v70 = v217;
            sub_1AFDFC288();
            v222 = v220[12];
            v71 = v220[16];
            v72 = v65;
            v73 = v66;
            v74 = v219;
            v75 = &v219[v220[20]];
            (*v214)(v219, v70, v218);
            *(v74 + v222) = v67;
            *(v74 + v71) = 0;
            *v75 = v73;
            v75[1] = v72;
            sub_1AFDFC608();

            sub_1AF5DD2F4(v74, sub_1AF0D4E74);
            v22 = v239;
            sub_1AFDFC018();
            v62 = v237;
          }

          v76 = *(v58 + 6);
          v77 = *(v58 + 7);
          if (*(*(v240 + 16) + 16))
          {

            sub_1AF419914(v76, v77);
            v79 = v78;

            if (v79)
            {
              v80 = *v232;
              v21 = v228;
              goto LABEL_15;
            }
          }

          v226 = v76;
          v81 = *v227;
          v82 = v229;
          (*v227)(v229, v22, v62);
          type metadata accessor for SceneAssetRegistryEntry(0);
          v83 = swift_allocObject();
          swift_weakInit();
          v84 = (v83 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry__rootNode);
          *v84 = 0;
          v84[1] = 0;
          *(v83 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_loaded) = 0;
          v85 = OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_idToEntity;

          v86 = MEMORY[0x1E69E7CC0];
          *(v83 + v85) = sub_1AF43B44C(MEMORY[0x1E69E7CC0]);
          v87 = OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_entityToId;
          *(v83 + v87) = sub_1AF43B558(v86);
          *(v83 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_counter) = 0;
          v88 = v240;
          swift_weakAssign();
          v223 = v81;
          (v81)(v83 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_asset, v82, v62);
          v89 = v226;
          v90 = v83 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_options;
          *v90 = v236;
          *(v90 + 8) = v235;
          *(v90 + 9) = v234;
          v91 = (v83 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_sceneIdentifier);
          *v91 = v89;
          v91[1] = v77;
          strcpy(v241, "registry for ");
          HIWORD(v241[1]) = -4864;
          v92 = sub_1AFDFC028();
          MEMORY[0x1B2718AE0](v92);

          v93 = v241[0];
          v94 = v241[1];
          type metadata accessor for EntityManager(0);
          swift_allocObject();
          v95 = sub_1AF66F180(v93, v94, 1, 0);
          v80 = *v232;
          (*v232)(v82, v62);
          *(v83 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry__entityManager) = v95;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v241[0] = *(v88 + 16);
          v97 = v241[0];
          *(v88 + 16) = 0x8000000000000000;
          v99 = sub_1AF419914(v89, v77);
          v100 = v98;
          v101 = *(v97 + 16) + ((v98 & 1) == 0);
          if (*(v97 + 24) >= v101)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v104 = v241[0];
              if ((v98 & 1) == 0)
              {
                goto LABEL_50;
              }
            }

            else
            {
              sub_1AF848168();
              v104 = v241[0];
              if ((v100 & 1) == 0)
              {
                goto LABEL_50;
              }
            }
          }

          else
          {
            sub_1AF8331A4(v101, isUniquelyReferenced_nonNull_native);
            v102 = sub_1AF419914(v89, v77);
            if ((v100 & 1) != (v103 & 1))
            {
              goto LABEL_124;
            }

            v99 = v102;
            v104 = v241[0];
            if ((v100 & 1) == 0)
            {
LABEL_50:
              sub_1AF85B958();
              goto LABEL_54;
            }
          }

          *(*(v104 + 56) + 8 * v99) = v83;

LABEL_54:
          v105 = v240;
          *(v240 + 16) = v104;

          v106 = swift_isUniquelyReferenced_nonNull_native();
          v241[0] = *(v105 + 24);
          v107 = v241[0];
          *(v105 + 24) = 0x8000000000000000;
          v108 = v239;
          v109 = sub_1AF41A390(v239);
          v111 = v110;
          v112 = *(v107 + 16) + ((v110 & 1) == 0);
          v62 = v237;
          v21 = v228;
          if (*(v107 + 24) < v112)
          {
            sub_1AF832DE0(v112, v106);
            v109 = sub_1AF41A390(v108);
            if ((v111 & 1) != (v113 & 1))
            {
              goto LABEL_125;
            }

LABEL_58:
            v114 = v241[0];
            if (v111)
            {
              goto LABEL_59;
            }

            goto LABEL_13;
          }

          if (v106)
          {
            goto LABEL_58;
          }

          v116 = v109;
          sub_1AF847EAC();
          v109 = v116;
          v114 = v241[0];
          if (v111)
          {
LABEL_59:
            v115 = (v114[7] + 16 * v109);
            *v115 = v89;
            v115[1] = v77;

            v22 = v239;
            v40 = v240;
            goto LABEL_14;
          }

LABEL_13:
          v36 = v109;
          v37 = v229;
          v38 = v239;
          (v223)(v229, v239, v62);
          v39 = v37;
          v22 = v38;
          sub_1AF84364C(v36, v39, v89, v77, v114);
          v40 = v240;
LABEL_14:
          *(v40 + 24) = v114;
LABEL_15:
          v28 = v233;
          v41 = v238;
          v80(v22, v62);
          v35 = v41 + 1;
          v7 = v62;
          if (v35 == v224)
          {
            goto LABEL_65;
          }
        }

        v49 = (*v221 + 12 * v44);
        if (v45 == -1 || v49[2] == v45)
        {
          v51 = *(v49 + 2);
          v52 = *(*(v212 + 144) + 8 * *v49 + 32);
          v53 = *(v52 + 48);
          v54 = (v53 + 32);
          v48 = *(v53 + 16) + 1;
          while (--v48)
          {
            v55 = v54 + 5;
            v56 = *v54;
            v54 += 5;
            if (v56 == &type metadata for MeshImportOptions)
            {
              v57 = &(*(v55 - 2))[v51] + *(v52 + 128);
              v48 = *v57;
              v47 = *(v57 + 8);
              v234 = *(v57 + 9);
              goto LABEL_35;
            }
          }
        }

        else
        {
LABEL_32:
          v48 = 0;
        }

        v47 = 0;
        v234 = 0;
        goto LABEL_35;
      }

      goto LABEL_65;
    }

    if (v24 != v224)
    {
      break;
    }

LABEL_65:
    v251 = v207;
    v252 = v249;
    v253 = v250;
    v117 = v211;
    sub_1AF630994(v210, &v251, v242);
    v211 = v117;
    sub_1AF62D29C(v28);
    ecs_stack_allocator_pop_snapshot(v209);
    v19 = v204;
    if (v204)
    {
      os_unfair_lock_unlock(*(v28 + 344));
      os_unfair_lock_unlock(*(v28 + 376));
    }

    v20 = v208 + 1;
    if (v208 + 1 == v205)
    {

      v202 = MEMORY[0x1E69E6720];
      sub_1AF5DD530(v245, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF5DE4E0);
      v201 = v202;
      return sub_1AF5DD530(v245, &qword_1ED725EA0, &type metadata for QueryResult, v201, sub_1AF5DE4E0);
    }
  }

  while (1)
  {

    if (*(v28 + 184))
    {
      break;
    }

    v128 = *(*(v28 + 168) + 4 * v24);
    v129 = *(*(v127 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v128 + 8);

    if (v128 == -1 && v129 == 0)
    {
      goto LABEL_85;
    }

    if ((v128 & 0x80000000) == 0 && v221[1] > v128)
    {
      v131 = (*v221 + 12 * v128);
      if (v129 == -1 || v131[2] == v129)
      {
        v133 = *(v131 + 2);
        v134 = *(*(v212 + 144) + 8 * *v131 + 32);
        v135 = *(v134 + 48);
        v136 = (v135 + 32);
        v137 = *(v135 + 16) + 1;
        while (--v137)
        {
          v138 = v136 + 5;
          v139 = *v136;
          v136 += 5;
          if (v139 == &type metadata for MeshImportOptions)
          {
            v140 = &(*(v138 - 2))[v133] + *(v134 + 128);
            v235 = *v140;
            v234 = *(v140 + 8);
            LODWORD(v226) = *(v140 + 9);
            goto LABEL_87;
          }
        }
      }

LABEL_85:
      v235 = 0;
      v234 = 0;
      LODWORD(v226) = 0;
      goto LABEL_87;
    }

    v235 = 0;
    v234 = 0;
    LODWORD(v226) = 0;
LABEL_87:
    v236 = v24;
    v141 = &v231[64 * v24];
    v142 = *(v141 + 2);
    v143 = *(v141 + 3);
    if (*(v141 + 4))
    {
      v144 = *(v141 + 5);
      v145 = swift_getObjectType();
      (*(v144 + 8))(v142, v143, v145, v144);
      v146 = v240;
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v241[0] = 0;
      v241[1] = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000020, v216 | 0x8000000000000000);
      MEMORY[0x1B2718AE0](v142, v143);
      MEMORY[0x1B2718AE0](0xD000000000000016, v215 | 0x8000000000000000);
      v148 = v241[0];
      v147 = v241[1];
      v149 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      v225 = v143;
      v238 = v142;
      if (qword_1ED730E98 != -1)
      {
        swift_once();
      }

      v150 = qword_1ED73B890;
      sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v151 = swift_allocObject();
      *(v151 + 16) = v213;
      *(v151 + 56) = MEMORY[0x1E69E6158];
      *(v151 + 64) = sub_1AF0D544C();
      *(v151 + 32) = v148;
      *(v151 + 40) = v147;

      sub_1AFDFC4C8(v149, &dword_1AF0CE000, v150, "%{public}s", 10, 2, v151);

      v223 = v148;
      v152 = v217;
      sub_1AFDFC288();
      v153 = v220[12];
      v154 = v220[16];
      v155 = v147;
      v156 = v149;
      v157 = v219;
      v158 = &v219[v220[20]];
      (*v214)(v219, v152, v218);
      *(v157 + v153) = v156;
      *(v157 + v154) = 0;
      *v158 = v223;
      v158[1] = v155;
      sub_1AFDFC608();

      sub_1AF5DD2F4(v157, sub_1AF0D4E74);
      v21 = v228;
      sub_1AFDFC018();
      v146 = v240;
      v28 = v233;
    }

    v160 = *(v141 + 6);
    v159 = *(v141 + 7);
    if (*(*(v146 + 16) + 16))
    {

      sub_1AF419914(v160, v159);
      v162 = v161;

      if (v162)
      {
        v126 = *v232;
LABEL_113:
        v22 = v239;
        v7 = v237;
        goto LABEL_68;
      }
    }

    v163 = *v227;
    v164 = v229;
    v238 = v160;
    v165 = v237;
    (v163)(v229, v21, v237);
    type metadata accessor for SceneAssetRegistryEntry(0);
    v166 = swift_allocObject();
    swift_weakInit();
    v167 = (v166 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry__rootNode);
    *v167 = 0;
    v167[1] = 0;
    *(v166 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_loaded) = 0;
    v168 = OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_idToEntity;

    v169 = MEMORY[0x1E69E7CC0];
    *(v166 + v168) = sub_1AF43B44C(MEMORY[0x1E69E7CC0]);
    v170 = OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_entityToId;
    *(v166 + v170) = sub_1AF43B558(v169);
    *(v166 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_counter) = 0;
    v171 = v240;
    swift_weakAssign();
    v225 = v163;
    (v163)(v166 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_asset, v164, v165);
    v172 = v166 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_options;
    *v172 = v235;
    *(v172 + 8) = v234;
    *(v172 + 9) = v226;
    v173 = (v166 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_sceneIdentifier);
    *v173 = v238;
    v173[1] = v159;
    strcpy(v241, "registry for ");
    HIWORD(v241[1]) = -4864;
    v174 = sub_1AFDFC028();
    MEMORY[0x1B2718AE0](v174);

    v175 = v241[0];
    v176 = v241[1];
    type metadata accessor for EntityManager(0);
    swift_allocObject();
    v177 = sub_1AF66F180(v175, v176, 1, 0);
    v126 = *v232;
    v178 = v164;
    v179 = v165;
    v180 = v238;
    v181 = v171;
    (*v232)(v178, v179);
    *(v166 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry__entityManager) = v177;

    v182 = swift_isUniquelyReferenced_nonNull_native();
    v241[0] = *(v171 + 16);
    v183 = v241[0];
    *(v171 + 16) = 0x8000000000000000;
    v184 = sub_1AF419914(v180, v159);
    v186 = v185;
    v187 = *(v183 + 16) + ((v185 & 1) == 0);
    if (*(v183 + 24) >= v187)
    {
      if ((v182 & 1) == 0)
      {
        v199 = v184;
        sub_1AF848168();
        v184 = v199;
      }
    }

    else
    {
      sub_1AF8331A4(v187, v182);
      v184 = sub_1AF419914(v180, v159);
      if ((v186 & 1) != (v188 & 1))
      {
        goto LABEL_124;
      }
    }

    v28 = v233;
    v189 = v241[0];
    if (v186)
    {
      *(*(v241[0] + 56) + 8 * v184) = v166;
    }

    else
    {
      sub_1AF85B958();
    }

    *(v181 + 16) = v189;

    v190 = swift_isUniquelyReferenced_nonNull_native();
    v241[0] = *(v181 + 24);
    v191 = v241[0];
    *(v181 + 24) = 0x8000000000000000;
    v21 = v228;
    v192 = sub_1AF41A390(v228);
    v194 = v193;
    v195 = *(v191 + 16) + ((v193 & 1) == 0);
    if (*(v191 + 24) < v195)
    {
      sub_1AF832DE0(v195, v190);
      v192 = sub_1AF41A390(v21);
      if ((v194 & 1) != (v196 & 1))
      {
        goto LABEL_126;
      }

LABEL_111:
      v197 = v241[0];
      if (v194)
      {
        goto LABEL_112;
      }

      goto LABEL_67;
    }

    if (v190)
    {
      goto LABEL_111;
    }

    v200 = v192;
    sub_1AF847EAC();
    v192 = v200;
    v197 = v241[0];
    if (v194)
    {
LABEL_112:
      v198 = (v197[7] + 16 * v192);
      *v198 = v180;
      v198[1] = v159;

      *(v181 + 24) = v197;
      goto LABEL_113;
    }

LABEL_67:
    v118 = v192;
    v119 = v229;
    v120 = v21;
    v121 = v159;
    v122 = v21;
    v123 = v126;
    v124 = v180;
    v7 = v237;
    (v225)(v229, v120, v237);
    v125 = v124;
    v126 = v123;
    v21 = v122;
    sub_1AF84364C(v118, v119, v125, v121, v197);
    v22 = v239;
    *(v240 + 24) = v197;
LABEL_68:
    v24 = v236 + 1;
    v126(v21, v7);
    if (v24 == v224)
    {
      goto LABEL_65;
    }
  }

LABEL_123:
  sub_1AFDFE518();
  __break(1u);
LABEL_124:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_125:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_126:
  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF5DD2F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF5DD41C(uint64_t a1)
{
  sub_1AF5DD4A4(0, &qword_1ED72C1C0, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF5DD4A4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1AF5C5358(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1AF5DD530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1AF5DD590(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for Query1(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AF5DD5E0(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a3)
  {
    v56 = v6;
    v57 = v7;
    v8 = result;
    v52 = a3;
    v55 = v5;
    v10 = *a2;
    v11 = a2[1];
    v13 = sub_1AF6EEA78(*a2, v11);
    if (!v13)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      sub_1AFDFE218();

      v54 = 0x80000001AFF2C6C0;
      MEMORY[0x1B2718AE0](v10, v11);
      v20 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        v45 = v20;
        swift_once();
        v20 = v45;
      }

      v53 = 0;
      sub_1AF0D4F18(v20, &v53, 0xD000000000000027, 0x80000001AFF2C6C0);
    }

    v14 = v13;
    v15 = a2[2];
    v16 = a2[3];
    if (*(v8 + 32))
    {
      LOBYTE(v53) = 0;
      sub_1AF80F414(0);
    }

    v17 = sub_1AF6EFBE0(v15, v16);
    if (v18)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      sub_1AFDFE218();

      v54 = 0x80000001AFF2C6F0;
      MEMORY[0x1B2718AE0](v15, v16);
      v19 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        v46 = v19;
        swift_once();
        v19 = v46;
      }

      v53 = 0;
      sub_1AF0D4F18(v19, &v53, 0xD000000000000026, 0x80000001AFF2C6F0);
    }

    v21 = v17;
    v50 = v15;
    v51 = v16;
    v22 = **(a5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    sub_1AF6EF324(0, 0);
    v23 = *(v14 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry__entityManager);
    v24 = MEMORY[0x1E69E7CC0];
    v25 = sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
    type metadata accessor for RemapContext();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = sub_1AF42B4D0(v24);

    v27 = sub_1AF42B590(v24);
    *(v26 + 24) = v25;
    *(v26 + 32) = v27;

    *(v26 + 16) = 0;
    sub_1AF65B02C(v21, v26);
    LOBYTE(v53) = 1;
    sub_1AF630BA4(v26, v23, 0x100000000uLL, 0, v22);
    if (*(*(v26 + 24) + 16) && (sub_1AF449D3C(v21), v28 = *(v26 + 24), *(v28 + 16)) && (v29 = sub_1AF449D3C(v21), (v30 & 1) != 0))
    {
      v31 = (*(v28 + 56) + 8 * v29);
      v33 = *v31;
      v32 = v31[1];
    }

    else
    {
      v32 = 0;
      v33 = -1;
    }

    if ((v33 != -1 || v32) && (, v34 = sub_1AF3CA3E4(v33 | (v32 << 32)), v36 = v35, , v36))
    {
      if (!v34)
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v40 = sub_1AFDFDA28();
        if (qword_1ED731058 != -1)
        {
          v48 = v40;
          swift_once();
          v40 = v48;
        }

        v53 = 0;
        sub_1AF0D4F18(v40, &v53, 0xD000000000000026, 0x80000001AFF2C750);
      }

      v37 = v52;
      *v52 = v34;
      swift_retain_n();

      v37[1] = v36;
      v53 = 32;
      v54 = 0xE100000000000000;
      MEMORY[0x1EEE9AC00](v38);
      v49[2] = &v53;
      sub_1AF5D90A8(sub_1AF5DDDD0, v49, v50, v51);
      v41 = sub_1AFDFD1F8();
      v42 = MEMORY[0x1B27189E0](v41);
      v44 = v43;

      *(v34 + 56) = v42;
      *(v34 + 64) = v44;
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v39 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        v47 = v39;
        swift_once();
        v39 = v47;
      }

      v53 = 0;
      sub_1AF0D4F18(v39, &v53, 0xD00000000000002ALL, 0x80000001AFF2C720);
    }
  }

  return result;
}

uint64_t sub_1AF5DDC4C(uint64_t a1)
{
  v3 = *(a1 + 184);

  v4 = sub_1AF6D36F4(&type metadata for SceneAssetRegistryInstance, &off_1F2536D38, v3);

  if (v4)
  {
    v6 = *(v1 + 32);
    v21[0] = *(v1 + 16);
    v21[1] = v6;
    v22 = *(v1 + 48);
    sub_1AF6B06C0(a1, v21, 0x200000000, &v7);
    if (v7)
    {
      v17 = v10;
      v18 = v11;
      v19 = v12;
      v20 = v13;
      v15 = v8;
      v16 = v9;
      v14 = v7;

      sub_1AFD167F8(&v14, v4, a1);

      return sub_1AF5DD530(&v7, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF5DE4E0);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AF5DDDD0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1AFDFEE28() & 1;
  }
}

uint64_t sub_1AF5DDE28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SceneKitRenderer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AF5DDF3C()
{
  result = qword_1EB63C168;
  if (!qword_1EB63C168)
  {
    result = swift_getWitnessTable(byte_1AFE646E8, &type metadata for MeshImportOptions.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C168);
  }

  return result;
}

unint64_t sub_1AF5DDF90()
{
  result = qword_1EB63C170;
  if (!qword_1EB63C170)
  {
    result = swift_getWitnessTable(byte_1AFE63FF4, &type metadata for ImportOptions, v0, v1);
    atomic_store(result, &qword_1EB63C170);
  }

  return result;
}

unint64_t sub_1AF5DDFE4()
{
  result = qword_1EB63C178;
  if (!qword_1EB63C178)
  {
    result = swift_getWitnessTable(byte_1AFE646C0, &type metadata for MeshImportOptions.Loader, v0, v1);
    atomic_store(result, &qword_1EB63C178);
  }

  return result;
}

unint64_t sub_1AF5DE038()
{
  result = qword_1EB63C188;
  if (!qword_1EB63C188)
  {
    result = swift_getWitnessTable(byte_1AFE64698, &type metadata for MeshImportOptions.Loader, v0, v1);
    atomic_store(result, &qword_1EB63C188);
  }

  return result;
}

unint64_t sub_1AF5DE08C()
{
  result = qword_1EB63C198;
  if (!qword_1EB63C198)
  {
    result = swift_getWitnessTable(aQ_43, &type metadata for MeshReferenceAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C198);
  }

  return result;
}

unint64_t sub_1AF5DE0E0()
{
  result = qword_1EB632308;
  if (!qword_1EB632308)
  {
    result = swift_getWitnessTable(byte_1AFE645F8, &type metadata for MeshFileAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632308);
  }

  return result;
}

unint64_t sub_1AF5DE134()
{
  result = qword_1EB633D08;
  if (!qword_1EB633D08)
  {
    result = swift_getWitnessTable(aEx_1, &type metadata for Asset, v0, v1);
    atomic_store(result, &qword_1EB633D08);
  }

  return result;
}

unint64_t sub_1AF5DE188()
{
  result = qword_1EB63C1A8;
  if (!qword_1EB63C1A8)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF5822B0(255);
    v4 = v3;
    v5[0] = sub_1AF5DE2D0(&qword_1ED726C40, MEMORY[0x1E69E6560], MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable(MEMORY[0x1E69E7C88], v4, v5);
    atomic_store(result, &qword_1EB63C1A8);
  }

  return result;
}

unint64_t sub_1AF5DE224()
{
  result = qword_1EB633060;
  if (!qword_1EB633060)
  {
    v3 = sub_1AFDFC128();
    result = swift_getWitnessTable(MEMORY[0x1E6968FD0], v3, v0, v1);
    atomic_store(result, &qword_1EB633060);
  }

  return result;
}

unint64_t sub_1AF5DE27C()
{
  result = qword_1EB63C1B8;
  if (!qword_1EB63C1B8)
  {
    result = swift_getWitnessTable(aT_7, &type metadata for Asset, v0, v1);
    atomic_store(result, &qword_1EB63C1B8);
  }

  return result;
}

uint64_t sub_1AF5DE2D0(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF5DE4E0(255, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF5DE354()
{
  result = qword_1EB63C1D0;
  if (!qword_1EB63C1D0)
  {
    result = swift_getWitnessTable(byte_1AFE645A8, &type metadata for SceneFileAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C1D0);
  }

  return result;
}

void sub_1AF5DE3A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF5DE464()
{
  result = qword_1EB63C1E0;
  if (!qword_1EB63C1E0)
  {
    sub_1AF5DE4E0(255, &qword_1EB63C1E8, &type metadata for MeshImportOptions.Loader, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB63C1E0);
  }

  return result;
}

void sub_1AF5DE4E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF5DE534()
{
  result = qword_1EB63C1F0;
  if (!qword_1EB63C1F0)
  {
    result = swift_getWitnessTable(aQl, &type metadata for MeshImportOptions.Loader, v0, v1);
    atomic_store(result, &qword_1EB63C1F0);
  }

  return result;
}

unint64_t sub_1AF5DE58C()
{
  result = qword_1EB63C1F8;
  if (!qword_1EB63C1F8)
  {
    result = swift_getWitnessTable(aAk_0, &type metadata for MeshImportOptions.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C1F8);
  }

  return result;
}

unint64_t sub_1AF5DE5E4()
{
  result = qword_1EB63C200;
  if (!qword_1EB63C200)
  {
    result = swift_getWitnessTable(byte_1AFE643A0, &type metadata for MeshReferenceAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C200);
  }

  return result;
}

unint64_t sub_1AF5DE63C()
{
  result = qword_1EB63C208;
  if (!qword_1EB63C208)
  {
    result = swift_getWitnessTable(byte_1AFE64490, &type metadata for MeshFileAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C208);
  }

  return result;
}

unint64_t sub_1AF5DE694()
{
  result = qword_1EB63C210;
  if (!qword_1EB63C210)
  {
    result = swift_getWitnessTable(byte_1AFE64580, &type metadata for SceneFileAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C210);
  }

  return result;
}

unint64_t sub_1AF5DE6EC()
{
  result = qword_1EB63C218;
  if (!qword_1EB63C218)
  {
    result = swift_getWitnessTable(a9v, &type metadata for SceneFileAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C218);
  }

  return result;
}

unint64_t sub_1AF5DE744()
{
  result = qword_1EB63C220;
  if (!qword_1EB63C220)
  {
    result = swift_getWitnessTable(aQr, &type metadata for SceneFileAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C220);
  }

  return result;
}

unint64_t sub_1AF5DE79C()
{
  result = qword_1EB6322F8;
  if (!qword_1EB6322F8)
  {
    result = swift_getWitnessTable(aW_3, &type metadata for MeshFileAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6322F8);
  }

  return result;
}

unint64_t sub_1AF5DE7F4()
{
  result = qword_1EB632300;
  if (!qword_1EB632300)
  {
    result = swift_getWitnessTable(aAs, &type metadata for MeshFileAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632300);
  }

  return result;
}

unint64_t sub_1AF5DE84C()
{
  result = qword_1EB63C228;
  if (!qword_1EB63C228)
  {
    result = swift_getWitnessTable(byte_1AFE64310, &type metadata for MeshReferenceAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C228);
  }

  return result;
}

unint64_t sub_1AF5DE8A4()
{
  result = qword_1EB63C230;
  if (!qword_1EB63C230)
  {
    result = swift_getWitnessTable(byte_1AFE64338, &type metadata for MeshReferenceAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C230);
  }

  return result;
}

unint64_t sub_1AF5DE8FC()
{
  result = qword_1EB63C238;
  if (!qword_1EB63C238)
  {
    result = swift_getWitnessTable(byte_1AFE64220, &type metadata for MeshImportOptions.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C238);
  }

  return result;
}

unint64_t sub_1AF5DE954()
{
  result = qword_1EB63C240;
  if (!qword_1EB63C240)
  {
    result = swift_getWitnessTable(byte_1AFE64248, &type metadata for MeshImportOptions.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C240);
  }

  return result;
}

unint64_t sub_1AF5DE9A8()
{
  result = qword_1EB63C248;
  if (!qword_1EB63C248)
  {
    result = swift_getWitnessTable(byte_1AFE64180, &type metadata for MeshImportOptions.Loader, v0, v1);
    atomic_store(result, &qword_1EB63C248);
  }

  return result;
}

uint64_t sub_1AF5DEA30()
{
  result = sub_1AF5DEA50();
  qword_1EB6C2A68 = result;
  return result;
}

uint64_t sub_1AF5DEA50()
{
  type metadata accessor for NavigationConfiguration();
  v0 = swift_allocObject();
  v1 = sub_1AF42C43C(MEMORY[0x1E69E7CC0]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1AF851618(&unk_1F24F38E8, 0, isUniquelyReferenced_nonNull_native, v3);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_1AF851618(&unk_1F24F3910, 1, v4, v5);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_1AF851618(&unk_1F24F3938, 2, v6, v7);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_1AF851618(&unk_1F24F3960, 3, v8, v9);
  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_1AF5DEB3C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1AF5DEBAC()
{
  result = qword_1EB6339A8;
  if (!qword_1EB6339A8)
  {
    result = swift_getWitnessTable(byte_1AFE647C4, &type metadata for FlyModeKeys, v0, v1);
    atomic_store(result, &qword_1EB6339A8);
  }

  return result;
}

uint64_t sub_1AF5DEC00(void *a1)
{
  v3 = v1;
  sub_1AF5E0838(0, &qword_1EB63C268, sub_1AF5E0790, &type metadata for _Navigation.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E0790();
  sub_1AFDFF3F8();
  v11 = *v3;
  v12 = 0;
  sub_1AF5E0838(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  sub_1AF5E08A0(&qword_1ED72F758, MEMORY[0x1E69E7458]);
  sub_1AFDFE918();
  if (!v2)
  {
    v11 = v3[1];
    v12 = 1;
    sub_1AFDFE918();
    LOBYTE(v11) = 2;
    sub_1AFDFE8E8();
    LOBYTE(v11) = 3;
    sub_1AFDFE8E8();
    LOBYTE(v11) = 4;
    sub_1AFDFE8E8();
    LOBYTE(v11) = 5;
    sub_1AFDFE8E8();
    LOBYTE(v11) = 6;
    sub_1AFDFE8E8();
    LOBYTE(v11) = *(v3 + 52);
    v12 = 7;
    sub_1AF5E091C();
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1AF5DEFC8()
{
  v1 = *v0;
  v2 = 0x7055646C726F77;
  v3 = 0x636F6C6556796C66;
  if (v1 != 6)
  {
    v3 = 0x6E6F697461746F72;
  }

  v4 = 0x69736E65536E6170;
  if (v1 != 4)
  {
    v4 = 0x6C754D7466696873;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 2)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AF5DF0FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AF5DF740(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AF5DF124(uint64_t a1)
{
  v2 = sub_1AF5E0790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5DF160(uint64_t a1)
{
  v2 = sub_1AF5E0790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AF5DF19C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AF5DF9F8(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *v7;
    *(a1 + 32) = v7[0];
    *(a1 + 45) = *(v7 + 13);
  }

  return result;
}

__n128 sub_1AF5DF200@<Q0>(uint64_t a1@<X8>)
{
  sub_1AF5DF688(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v5[6];
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1AF5DF250()
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5DF2CC(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5DF324@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1AFDFE638();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1AF5DF3BC@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1AF5DF414(uint64_t a1)
{
  v2 = sub_1AF5E012C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5DF450(uint64_t a1)
{
  v2 = sub_1AF5E012C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5DF48C(void *a1)
{
  v2 = v1;
  sub_1AF5E0838(0, &qword_1EB63C250, sub_1AF5E012C, &type metadata for Navigation.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E012C();
  sub_1AFDFF3F8();
  v9 = *(v2 + 16);
  v11[0] = *v2;
  v11[1] = v9;
  v12[0] = *(v2 + 32);
  *(v12 + 13) = *(v2 + 45);
  sub_1AF5E0204();
  sub_1AFDFE918();
  return (*(v6 + 8))(v8, v5);
}

__n128 sub_1AF5DF61C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AF5DFDC0(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v7[6];
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_1AF5DF688@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB633578 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1EB6C2A68;
  *a1 = xmmword_1AFE20160;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = xmmword_1AFE64740;
  *(a1 + 48) = 1065353216;
  *(a1 + 52) = 1;
  *(a1 + 56) = v1;
  *(a1 + 64) = 2;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 72) = MEMORY[0x1E69E7CC0];
  *(a1 + 80) = v2;
  *(a1 + 88) = v2;
  *(a1 + 96) = v2;
  *(a1 + 104) = v2;
}

uint64_t sub_1AF5DF740(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7055646C726F77 && a2 == 0xE700000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001AFF296C0 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001AFF296A0 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001AFF29680 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69736E65536E6170 && a2 == 0xEE00797469766974 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C754D7466696873 && a2 == 0xEF7265696C706974 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x636F6C6556796C66 && a2 == 0xEB00000000797469 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xEC00000065646F4DLL)
  {

    return 7;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1AF5DF9F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF5E0838(0, &qword_1EB633158, sub_1AF5E0790, &type metadata for _Navigation.CodingKeys, MEMORY[0x1E69E6F48]);
  v26 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E0790();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v9 = v6;
  sub_1AF5E0838(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v27 = 0;
  sub_1AF5E08A0(&qword_1ED72F748, MEMORY[0x1E69E7468]);
  v10 = v26;
  sub_1AFDFE768();
  v25 = v28;
  v27 = 1;
  sub_1AFDFE768();
  v24 = v28;
  LOBYTE(v28) = 2;
  sub_1AFDFE738();
  v12 = v11;
  LOBYTE(v28) = 3;
  sub_1AFDFE738();
  v14 = v13;
  LOBYTE(v28) = 4;
  sub_1AFDFE738();
  v16 = v15;
  LOBYTE(v28) = 5;
  sub_1AFDFE738();
  v18 = v17;
  LOBYTE(v28) = 6;
  sub_1AFDFE738();
  v20 = v19;
  v27 = 7;
  sub_1AF5E07E4();
  sub_1AFDFE768();
  (*(v9 + 8))(v8, v10);
  v21 = v28;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v23 = v24;
  *a2 = v25;
  *(a2 + 16) = v23;
  *(a2 + 32) = v12;
  *(a2 + 36) = v14;
  *(a2 + 40) = v16;
  *(a2 + 44) = v18;
  *(a2 + 48) = v20;
  *(a2 + 52) = v21;
  return result;
}

uint64_t sub_1AF5DFDC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF5E0838(0, &qword_1EB633170, sub_1AF5E012C, &type metadata for Navigation.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  *&v17 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  if (qword_1EB633578 != -1)
  {
    swift_once();
  }

  v9 = qword_1EB6C2A68;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E012C();

  sub_1AFDFF3B8();
  if (v2)
  {
    v23 = xmmword_1AFE20160;
    v24 = 0;
    v25 = 0;
    v26 = xmmword_1AFE64740;
    v27 = 1065353216;
    v28 = 1;
    v29 = v9;
    v30 = 2;
    v31 = MEMORY[0x1E69E7CC0];
    v32 = MEMORY[0x1E69E7CC0];
    v33 = MEMORY[0x1E69E7CC0];
    v34 = MEMORY[0x1E69E7CC0];
    v35 = MEMORY[0x1E69E7CC0];
    sub_1AF5E0180(&v23);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    sub_1AF5E01B0();
    sub_1AFDFE768();
    (*(v17 + 8))(v8, v6);
    v17 = v18;
    v16 = v19;
    v11 = v21;
    v12 = v22;
    v15 = v20;
    result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    v13 = v16;
    *a2 = v17;
    *(a2 + 16) = v13;
    *(a2 + 32) = v15;
    *(a2 + 48) = v11;
    *(a2 + 52) = v12;
    *(a2 + 53) = v37;
    *(a2 + 55) = v38;
    *(a2 + 56) = v9;
    *(a2 + 64) = 2;
    *(a2 + 65) = *v36;
    v14 = MEMORY[0x1E69E7CC0];
    *(a2 + 68) = *&v36[3];
    *(a2 + 72) = v14;
    *(a2 + 80) = v14;
    *(a2 + 88) = v14;
    *(a2 + 96) = v14;
    *(a2 + 104) = v14;
  }

  return result;
}

unint64_t sub_1AF5E012C()
{
  result = qword_1EB6339E0;
  if (!qword_1EB6339E0)
  {
    result = swift_getWitnessTable(byte_1AFE649D0, &type metadata for Navigation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6339E0);
  }

  return result;
}

unint64_t sub_1AF5E01B0()
{
  result = qword_1EB633940;
  if (!qword_1EB633940)
  {
    result = swift_getWitnessTable(byte_1AFE649A8, &type metadata for _Navigation, v0, v1);
    atomic_store(result, &qword_1EB633940);
  }

  return result;
}

unint64_t sub_1AF5E0204()
{
  result = qword_1EB63C258;
  if (!qword_1EB63C258)
  {
    result = swift_getWitnessTable(byte_1AFE64980, &type metadata for _Navigation, v0, v1);
    atomic_store(result, &qword_1EB63C258);
  }

  return result;
}

__n128 initializeWithCopy for _Navigation(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _Navigation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 53))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 52);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _Navigation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 53) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 53) = 0;
    }

    if (a2)
    {
      *(result + 52) = a2 + 1;
    }
  }

  return result;
}

uint64_t destroy for Navigation(void *a1)
{
}

uint64_t initializeWithCopy for Navigation(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v4;
  v5 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v5;
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t assignWithCopy for Navigation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t assignWithTake for Navigation(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t getEnumTagSinglePayload for Navigation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Navigation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AF5E068C()
{
  result = qword_1EB63C260;
  if (!qword_1EB63C260)
  {
    result = swift_getWitnessTable(byte_1AFE64958, &type metadata for Navigation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C260);
  }

  return result;
}

unint64_t sub_1AF5E06E4()
{
  result = qword_1EB6339D0;
  if (!qword_1EB6339D0)
  {
    result = swift_getWitnessTable(aAr, &type metadata for Navigation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6339D0);
  }

  return result;
}

unint64_t sub_1AF5E073C()
{
  result = qword_1EB6339D8;
  if (!qword_1EB6339D8)
  {
    result = swift_getWitnessTable(aYn, &type metadata for Navigation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6339D8);
  }

  return result;
}

unint64_t sub_1AF5E0790()
{
  result = qword_1EB633958;
  if (!qword_1EB633958)
  {
    result = swift_getWitnessTable(aU_17, &type metadata for _Navigation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633958);
  }

  return result;
}

unint64_t sub_1AF5E07E4()
{
  result = qword_1EB633580;
  if (!qword_1EB633580)
  {
    result = swift_getWitnessTable(aC_10, &type metadata for NavigationRotationMode, v0, v1);
    atomic_store(result, &qword_1EB633580);
  }

  return result;
}

void sub_1AF5E0838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AF5E08A0(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AF5E0838(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF5E091C()
{
  result = qword_1EB63C270;
  if (!qword_1EB63C270)
  {
    result = swift_getWitnessTable(byte_1AFE64C3C, &type metadata for NavigationRotationMode, v0, v1);
    atomic_store(result, &qword_1EB63C270);
  }

  return result;
}

unint64_t sub_1AF5E09A4()
{
  result = qword_1EB63C278;
  if (!qword_1EB63C278)
  {
    result = swift_getWitnessTable(byte_1AFE64A84, &type metadata for Navigation.ScrollMode, v0, v1);
    atomic_store(result, &qword_1EB63C278);
  }

  return result;
}

unint64_t sub_1AF5E09FC()
{
  result = qword_1EB63C280;
  if (!qword_1EB63C280)
  {
    sub_1AF5E0A54();
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB63C280);
  }

  return result;
}

void sub_1AF5E0A54()
{
  if (!qword_1EB63C288)
  {
    v0 = sub_1AFDFD538();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63C288);
    }
  }
}

unint64_t sub_1AF5E0AA8()
{
  result = qword_1EB63C290;
  if (!qword_1EB63C290)
  {
    result = swift_getWitnessTable(byte_1AFE64B5C, &type metadata for NavigationRotationMode, v0, v1);
    atomic_store(result, &qword_1EB63C290);
  }

  return result;
}

unint64_t sub_1AF5E0B00()
{
  result = qword_1EB63C298;
  if (!qword_1EB63C298)
  {
    result = swift_getWitnessTable(a5b, &type metadata for _Navigation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C298);
  }

  return result;
}

unint64_t sub_1AF5E0B58()
{
  result = qword_1EB633948;
  if (!qword_1EB633948)
  {
    result = swift_getWitnessTable(aMo, &type metadata for _Navigation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633948);
  }

  return result;
}

unint64_t sub_1AF5E0BB0()
{
  result = qword_1EB633950;
  if (!qword_1EB633950)
  {
    result = swift_getWitnessTable(byte_1AFE64BAC, &type metadata for _Navigation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633950);
  }

  return result;
}

unint64_t sub_1AF5E0C04()
{
  result = qword_1EB633588;
  if (!qword_1EB633588)
  {
    result = swift_getWitnessTable(aD_13, &type metadata for NavigationRotationMode, v0, v1);
    atomic_store(result, &qword_1EB633588);
  }

  return result;
}

uint64_t sub_1AF5E0C68()
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5E0CCC(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5E0D18@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1AFDFE638();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1AF5E0D84@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1AF5E0DDC(uint64_t a1)
{
  v2 = sub_1AF5E11D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E0E18(uint64_t a1)
{
  v2 = sub_1AF5E11D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E0E54@<X0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF5E0F38(a2);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1AF5E0E80(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v2, v2[3]);
  sub_1AF5E1280();
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

double sub_1AF5E0F28@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AFE201A0;
  return result;
}

uint64_t sub_1AF5E0F38(void *a1)
{
  sub_1AF5E117C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = a1[4];
  sub_1AF441150(a1, v8);
  if (sub_1AF694FF8(2000, v8, v9))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v1)
    {
      sub_1AF441150(&v12, v13);
      sub_1AF5E122C();
      sub_1AFDFEE88();
      v11[0] = v11[1];
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v12);
    }
  }

  else
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF5E11D8();
    sub_1AFDFF3B8();
    if (!v1)
    {
      sub_1AF5E122C();
      sub_1AFDFE768();
      (*(v5 + 8))(v7, v4);
      v11[0] = v12;
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

void sub_1AF5E117C(uint64_t a1)
{
  if (!qword_1EB633160)
  {
    sub_1AF5E11D8();
    v1 = sub_1AFDFE818();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB633160);
    }
  }
}

unint64_t sub_1AF5E11D8()
{
  result = qword_1EB633988;
  if (!qword_1EB633988)
  {
    result = swift_getWitnessTable(aUs_0, &type metadata for Orientation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633988);
  }

  return result;
}

unint64_t sub_1AF5E122C()
{
  result = qword_1EB633738;
  if (!qword_1EB633738)
  {
    result = swift_getWitnessTable(aM_17, &type metadata for QuaternionFCoder, v0, v1);
    atomic_store(result, &qword_1EB633738);
  }

  return result;
}

unint64_t sub_1AF5E1280()
{
  result = qword_1EB63C2A0;
  if (!qword_1EB63C2A0)
  {
    result = swift_getWitnessTable(aE_20, &type metadata for QuaternionFCoder, v0, v1);
    atomic_store(result, &qword_1EB63C2A0);
  }

  return result;
}

unint64_t sub_1AF5E12E8()
{
  result = qword_1EB63C2A8;
  if (!qword_1EB63C2A8)
  {
    result = swift_getWitnessTable(asc_1AFE64E3C, &type metadata for Orientation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C2A8);
  }

  return result;
}

unint64_t sub_1AF5E1340()
{
  result = qword_1EB633978;
  if (!qword_1EB633978)
  {
    result = swift_getWitnessTable(aM_18, &type metadata for Orientation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633978);
  }

  return result;
}

unint64_t sub_1AF5E1398()
{
  result = qword_1EB633980;
  if (!qword_1EB633980)
  {
    result = swift_getWitnessTable(byte_1AFE64D9C, &type metadata for Orientation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633980);
  }

  return result;
}

uint64_t sub_1AF5E1450(uint64_t a1)
{
  v2 = sub_1AF5E709C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E148C(uint64_t a1)
{
  v2 = sub_1AF5E709C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E14C8(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C358, sub_1AF5E709C, &type metadata for Particle.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E709C();
  sub_1AFDFF3F8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1AF5E1608@<X0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF5E52A8(a2);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1AF5E1634(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v3, v3[3]);
  v1 = MEMORY[0x1E69E74A8];
  sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  sub_1AF5E55F8(&qword_1ED72F710, &qword_1ED72F6E0, v1, MEMORY[0x1E69E74B0]);
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v3);
}

uint64_t sub_1AF5E1758(uint64_t a1)
{
  v2 = sub_1AF5E7144();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E1794(uint64_t a1)
{
  v2 = sub_1AF5E7144();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E187C(uint64_t a1)
{
  v2 = sub_1AF5E7198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E18B8(uint64_t a1)
{
  v2 = sub_1AF5E7198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E1944@<X0>(void *a1@<X0>, unint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X5>, uint64_t (*a5)(void)@<X6>, _DWORD *a6@<X8>)
{
  v19 = a6;
  sub_1AF5E7C00(0, a2, a3, a4, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v18 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  sub_1AF441150(a1, a1[3]);
  a5();
  sub_1AFDFF3B8();
  if (v6)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v14 = v18;
  v13 = v19;
  sub_1AFDFE738();
  v16 = v15;
  (*(v14 + 8))(v12, v10);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v13 = v16;
  return result;
}

uint64_t sub_1AF5E1B38(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void))
{
  sub_1AF5E7C00(0, a4, a5, a6, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  sub_1AF441150(a1, a1[3]);
  a7();
  sub_1AFDFF3F8();
  sub_1AFDFE8E8();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1AF5E1C98(uint64_t a1)
{
  v2 = sub_1AF5E71EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E1CD4(uint64_t a1)
{
  v2 = sub_1AF5E71EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E1DB0(uint64_t a1)
{
  v2 = sub_1AF5E7240();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E1DEC(uint64_t a1)
{
  v2 = sub_1AF5E7240();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E1EC8(uint64_t a1)
{
  v2 = sub_1AF5E7294();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E1F04(uint64_t a1)
{
  v2 = sub_1AF5E7294();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E1FE0(uint64_t a1)
{
  v2 = sub_1AF5E4E90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E201C(uint64_t a1)
{
  v2 = sub_1AF5E4E90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E20F8(void *a1, double a2)
{
  sub_1AF5E7C00(0, &qword_1EB63C378, sub_1AF5E70F0, &type metadata for ParticleRibbonLength.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E70F0();
  sub_1AFDFF3F8();
  *&v11[1] = a2;
  v9 = MEMORY[0x1E69E7428];
  sub_1AF5E7C00(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  sub_1AF5E55F8(&qword_1ED72F798, &unk_1ED72F770, v9, MEMORY[0x1E69E7430]);
  sub_1AFDFE918();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AF5E22DC(uint64_t a1)
{
  v2 = sub_1AF5E70F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E2318(uint64_t a1)
{
  v2 = sub_1AF5E70F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AF5E2354(double *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_1AF5E5C90(a2);
  if (!v2)
  {
    *a1 = v4;
  }
}

uint64_t sub_1AF5E23BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4D65737265766E69 && a2 == 0xEB00000000737361)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF5E2448(uint64_t a1)
{
  v2 = sub_1AF5E72E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E2484(uint64_t a1)
{
  v2 = sub_1AF5E72E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E2560(void *a1, __n128 a2)
{
  v10[0] = a2;
  sub_1AF5E7C00(0, &qword_1EB63C420, sub_1AF5E733C, &type metadata for LinearFactor.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E733C();
  sub_1AFDFF3F8();
  v10[1] = v10[0];
  v8 = MEMORY[0x1E69E7450];
  sub_1AF5E7C00(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  sub_1AF5E55F8(&qword_1ED72F758, &qword_1ED72F740, v8, MEMORY[0x1E69E7458]);
  sub_1AFDFE918();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AF5E2744(uint64_t a1)
{
  v2 = sub_1AF5E733C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E2780(uint64_t a1)
{
  v2 = sub_1AF5E733C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E27BC@<X0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF5E5EC4(a2);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1AF5E280C(void *a1, __n128 a2)
{
  v10[0] = a2;
  sub_1AF5E7C00(0, &qword_1EB63C438, sub_1AF5E7390, &type metadata for AngularFactor.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E7390();
  sub_1AFDFF3F8();
  v10[1] = v10[0];
  v8 = MEMORY[0x1E69E7450];
  sub_1AF5E7C00(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  sub_1AF5E55F8(&qword_1ED72F758, &qword_1ED72F740, v8, MEMORY[0x1E69E7458]);
  sub_1AFDFE918();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AF5E29F0(uint64_t a1)
{
  v2 = sub_1AF5E7390();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E2A2C(uint64_t a1)
{
  v2 = sub_1AF5E7390();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E2A68@<X0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF5E60F4(a2);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1AF5E2ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7A696C616D726F6ELL && a2 == 0xEF65756C61566465)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF5E2B6C(uint64_t a1)
{
  v2 = sub_1AF5E4EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E2BA8(uint64_t a1)
{
  v2 = sub_1AF5E4EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E2C84(void *a1, __n128 a2)
{
  v10[0] = a2;
  sub_1AF5E7C00(0, &qword_1EB63C450, sub_1AF5E73E4, &type metadata for ParticleTarget.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E73E4();
  sub_1AFDFF3F8();
  v10[1] = v10[0];
  v8 = MEMORY[0x1E69E7450];
  sub_1AF5E7C00(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  sub_1AF5E55F8(&qword_1ED72F758, &qword_1ED72F740, v8, MEMORY[0x1E69E7458]);
  sub_1AFDFE918();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AF5E2E68(uint64_t a1)
{
  v2 = sub_1AF5E73E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E2EA4(uint64_t a1)
{
  v2 = sub_1AF5E73E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E2EE0@<X0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF5E6324(a2);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1AF5E2F28(void *a1, __n128 a2)
{
  v10[0] = a2;
  sub_1AF5E7C00(0, &qword_1EB63C468, sub_1AF5E7438, &type metadata for UserData1.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E7438();
  sub_1AFDFF3F8();
  v10[1] = v10[0];
  v8 = MEMORY[0x1E69E74A8];
  sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  sub_1AF5E55F8(&qword_1ED72F710, &qword_1ED72F6E0, v8, MEMORY[0x1E69E74B0]);
  sub_1AFDFE918();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AF5E310C(uint64_t a1)
{
  v2 = sub_1AF5E7438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E3148(uint64_t a1)
{
  v2 = sub_1AF5E7438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E3184@<X0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF5E6554(a2);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1AF5E31CC(void *a1, __n128 a2)
{
  v10[0] = a2;
  sub_1AF5E7C00(0, &qword_1EB63C480, sub_1AF5E748C, &type metadata for UserData2.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E748C();
  sub_1AFDFF3F8();
  v10[1] = v10[0];
  v8 = MEMORY[0x1E69E74A8];
  sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  sub_1AF5E55F8(&qword_1ED72F710, &qword_1ED72F6E0, v8, MEMORY[0x1E69E74B0]);
  sub_1AFDFE918();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AF5E33B0(uint64_t a1)
{
  v2 = sub_1AF5E748C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E33EC(uint64_t a1)
{
  v2 = sub_1AF5E748C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E3428@<X0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF5E6784(a2);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1AF5E3470(void *a1, __n128 a2)
{
  v10[0] = a2;
  sub_1AF5E7C00(0, &qword_1EB63C498, sub_1AF5E74E0, &type metadata for UserData3.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E74E0();
  sub_1AFDFF3F8();
  v10[1] = v10[0];
  v8 = MEMORY[0x1E69E74A8];
  sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  sub_1AF5E55F8(&qword_1ED72F710, &qword_1ED72F6E0, v8, MEMORY[0x1E69E74B0]);
  sub_1AFDFE918();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AF5E3654(uint64_t a1)
{
  v2 = sub_1AF5E74E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E3690(uint64_t a1)
{
  v2 = sub_1AF5E74E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E36CC@<X0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF5E69B4(a2);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1AF5E3714(void *a1, __n128 a2)
{
  v10[0] = a2;
  sub_1AF5E7C00(0, &qword_1EB63C4B0, sub_1AF5E7534, &type metadata for UserData4.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E7534();
  sub_1AFDFF3F8();
  v10[1] = v10[0];
  v8 = MEMORY[0x1E69E74A8];
  sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  sub_1AF5E55F8(&qword_1ED72F710, &qword_1ED72F6E0, v8, MEMORY[0x1E69E74B0]);
  sub_1AFDFE918();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AF5E38F8(uint64_t a1)
{
  v2 = sub_1AF5E7534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E3934(uint64_t a1)
{
  v2 = sub_1AF5E7534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E3970@<X0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF5E6BE4(a2);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1AF5E39B8(uint64_t a1)
{
  v2 = sub_1AF5E7588();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E39F4(uint64_t a1)
{
  v2 = sub_1AF5E7588();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E3AD0(uint64_t a1)
{
  v2 = sub_1AF5E75DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E3B0C(uint64_t a1)
{
  v2 = sub_1AF5E75DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E3B48@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v13 = a2;
  sub_1AF5E7C00(0, &qword_1EB63C4D0, sub_1AF5E75DC, &type metadata for ParticlePivot.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E75DC();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v9 = v13;
  v10 = sub_1AFDFE7D8();
  (*(v6 + 8))(v8, v5);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v9 = v10;
  return result;
}

uint64_t sub_1AF5E3CF4(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C4E0, sub_1AF5E75DC, &type metadata for ParticlePivot.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E75DC();
  sub_1AFDFF3F8();
  sub_1AFDFE988();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1AF5E3E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4C65737265766E69 && a2 == 0xEF656D6974656669)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF5E3F18(uint64_t a1)
{
  v2 = sub_1AF5E4F38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E3F54(uint64_t a1)
{
  v2 = sub_1AF5E4F38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E4030(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7473727562;
  if (v2 != 1)
  {
    v3 = 0x74696D655FLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x7265764F65746172;
  }

  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xEC000000656D6954;
  }

  v6 = 0x7473727562;
  if (*a2 != 1)
  {
    v6 = 0x74696D655FLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7265764F65746172;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xEC000000656D6954;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();
  }

  return v9 & 1;
}

uint64_t sub_1AF5E4128()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5E41CC(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF5E425C(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF5E42FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5E50A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF5E432C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000656D6954;
  v4 = 0x7473727562;
  if (v2 != 1)
  {
    v4 = 0x74696D655FLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x7265764F65746172;
  }

  if (!v5)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1AF5E438C()
{
  v1 = 0x7473727562;
  if (*v0 != 1)
  {
    v1 = 0x74696D655FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265764F65746172;
  }
}

unint64_t sub_1AF5E43E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5E50A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF5E4410(uint64_t a1)
{
  v2 = sub_1AF5E7048();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E444C(uint64_t a1)
{
  v2 = sub_1AF5E7048();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AF5E4488@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1AF5E6E14(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  return result;
}

void sub_1AF5E44E4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = nullsub_106;
  *(a1 + 24) = 0;
}

uint64_t sub_1AF5E4504(void *a1, __n128 a2, float a3)
{
  v12 = a2;
  sub_1AF5E7C00(0, &qword_1EB63C4F8, sub_1AF5E789C, &type metadata for ParticleSphereAttractor.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E789C();
  sub_1AFDFF3F8();
  v13 = v12;
  v14 = 0;
  v10 = MEMORY[0x1E69E74A8];
  sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  sub_1AF5E55F8(&qword_1ED72F710, &qword_1ED72F6E0, v10, MEMORY[0x1E69E74B0]);
  sub_1AFDFE918();
  if (!v3)
  {
    v13.n128_u8[0] = 1;
    sub_1AFDFE8E8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AF5E471C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7469736E65746E69;
  }

  else
  {
    v3 = 0x657265687073;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE900000000000079;
  }

  if (*a2)
  {
    v5 = 0x7469736E65746E69;
  }

  else
  {
    v5 = 0x657265687073;
  }

  if (*a2)
  {
    v6 = 0xE900000000000079;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF5E47C4()
{
  if (*v0)
  {
    return 0x7469736E65746E69;
  }

  else
  {
    return 0x657265687073;
  }
}

uint64_t sub_1AF5E4800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657265687073 && a2 == 0xE600000000000000;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7469736E65746E69 && a2 == 0xE900000000000079)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

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

uint64_t sub_1AF5E48E0(uint64_t a1)
{
  v2 = sub_1AF5E789C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E491C(uint64_t a1)
{
  v2 = sub_1AF5E789C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E4958@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF5E7630(a2);
  if (!v2)
  {
    *a1 = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

double sub_1AF5E49A8@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AFE201A0;
  *(a1 + 16) = 1065353216;
  return result;
}

uint64_t sub_1AF5E49C0(void *a1, unint64_t a2, __n128 a3, __n128 a4)
{
  v14 = a4;
  v15 = a3;
  sub_1AF5E7C00(0, &qword_1EB63C510, sub_1AF5E7BAC, &type metadata for ParticleSDFAttractor.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E7BAC();
  sub_1AFDFF3F8();
  v16.n128_u64[0] = a2;
  v17 = 0;
  sub_1AF480018();
  sub_1AFDFE918();
  if (!v4)
  {
    v16 = v15;
    v17 = 1;
    v12 = MEMORY[0x1E69E7450];
    sub_1AF5E7C00(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AF5E55F8(&qword_1ED72F758, &qword_1ED72F740, v12, MEMORY[0x1E69E7458]);
    sub_1AFDFE918();
    v16 = v14;
    v17 = 2;
    sub_1AFDFE918();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1AF5E4C30(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x7265746E6563;
  if (v2 != 1)
  {
    v4 = 0x657A6953666C6168;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x61746144666473;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x7265746E6563;
  if (*a2 != 1)
  {
    v8 = 0x657A6953666C6168;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x61746144666473;
  }

  if (*a2)
  {
    v10 = v7;
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
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF5E4D2C()
{
  v1 = 0x7265746E6563;
  if (*v0 != 1)
  {
    v1 = 0x657A6953666C6168;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61746144666473;
  }
}

uint64_t sub_1AF5E4D84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AF5E4F8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AF5E4DAC(uint64_t a1)
{
  v2 = sub_1AF5E7BAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E4DE8(uint64_t a1)
{
  v2 = sub_1AF5E7BAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E4E24@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF5E78F0(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  return result;
}

__n128 sub_1AF5E4E78@<Q0>(__n128 *a1@<X8>)
{
  a1->n128_u64[0] = 0xFFFFFFFFLL;
  a1[1] = 0uLL;
  __asm { FMOV            V0.4S, #1.0 }

  a1[2] = result;
  return result;
}

unint64_t sub_1AF5E4E90()
{
  result = qword_1EB63C2B8;
  if (!qword_1EB63C2B8)
  {
    result = swift_getWitnessTable(aD_14, &type metadata for ParticleTextureFrame.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C2B8);
  }

  return result;
}

unint64_t sub_1AF5E4EE4()
{
  result = qword_1EB63C2D0;
  if (!qword_1EB63C2D0)
  {
    result = swift_getWitnessTable(aYd, &type metadata for ParticleAge.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C2D0);
  }

  return result;
}

unint64_t sub_1AF5E4F38()
{
  result = qword_1EB63C2E8;
  if (!qword_1EB63C2E8)
  {
    result = swift_getWitnessTable(byte_1AFE65D10, &type metadata for ParticleLifetime.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C2E8);
  }

  return result;
}

uint64_t sub_1AF5E4F8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746144666473 && a2 == 0xE700000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746E6563 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657A6953666C6168 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

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

unint64_t sub_1AF5E50A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF5E50EC(void *a1, float a2, float a3, float a4)
{
  sub_1AF5E7C00(0, &qword_1EB63C350, sub_1AF5E7048, &type metadata for ParticleCustomEmitter.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E7048();
  sub_1AFDFF3F8();
  v15 = 0;
  sub_1AFDFE8E8();
  if (!v4)
  {
    v14 = 1;
    sub_1AFDFE8E8();
    v13 = 2;
    sub_1AFDFE8E8();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1AF5E52A8(void *a1)
{
  sub_1AF5E7C00(0, &qword_1ED726A78, sub_1AF47986C, &type metadata for ValueCodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = a1[3];
  v9 = a1[4];
  sub_1AF441150(a1, v8);
  if (sub_1AF694FF8(2000, v8, v9))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v1)
    {
      sub_1AF441150(&v14, v15);
      v10 = MEMORY[0x1E69E74A8];
      sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
      sub_1AF5E55F8(&qword_1ED72F6F0, &qword_1ED72F6E0, v10, MEMORY[0x1E69E74C0]);
      sub_1AFDFEE88();
      v13[0] = v13[1];
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v14);
    }
  }

  else
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF47986C();
    sub_1AFDFF3B8();
    if (!v1)
    {
      v11 = MEMORY[0x1E69E74A8];
      sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
      sub_1AF5E55F8(&qword_1ED72F6F0, &qword_1ED72F6E0, v11, MEMORY[0x1E69E74C0]);
      sub_1AFDFE768();
      (*(v5 + 8))(v7, v4);
      v13[0] = v14;
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AF5E55F8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AF5E7C00(255, a2, sub_1AF43A0C8, MEMORY[0x1E69E6448], a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t initializeWithCopy for ParticleCustomEmitter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t assignWithCopy for ParticleCustomEmitter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t assignWithTake for ParticleCustomEmitter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for ParticleCustomEmitter(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for ParticleCustomEmitter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeWithCopy for ParticleSphereAttractor(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

unint64_t sub_1AF5E597C()
{
  result = qword_1EB63C2F8;
  if (!qword_1EB63C2F8)
  {
    result = swift_getWitnessTable(byte_1AFE65B58, &type metadata for ParticleTextureFrame.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C2F8);
  }

  return result;
}

unint64_t sub_1AF5E59D4()
{
  result = qword_1EB63C300;
  if (!qword_1EB63C300)
  {
    result = swift_getWitnessTable(a92_0, &type metadata for ParticleAge.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C300);
  }

  return result;
}

unint64_t sub_1AF5E5A2C()
{
  result = qword_1EB63C308;
  if (!qword_1EB63C308)
  {
    result = swift_getWitnessTable(byte_1AFE65CC8, &type metadata for ParticleLifetime.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C308);
  }

  return result;
}

unint64_t sub_1AF5E5A84()
{
  result = qword_1EB63C310;
  if (!qword_1EB63C310)
  {
    result = swift_getWitnessTable(byte_1AFE65C38, &type metadata for ParticleLifetime.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C310);
  }

  return result;
}

unint64_t sub_1AF5E5ADC()
{
  result = qword_1EB63C318;
  if (!qword_1EB63C318)
  {
    result = swift_getWitnessTable(byte_1AFE65C60, &type metadata for ParticleLifetime.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C318);
  }

  return result;
}

unint64_t sub_1AF5E5B34()
{
  result = qword_1EB63C320;
  if (!qword_1EB63C320)
  {
    result = swift_getWitnessTable(aQ_44, &type metadata for ParticleAge.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C320);
  }

  return result;
}

unint64_t sub_1AF5E5B8C()
{
  result = qword_1EB63C328;
  if (!qword_1EB63C328)
  {
    result = swift_getWitnessTable(byte_1AFE65BA8, &type metadata for ParticleAge.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C328);
  }

  return result;
}

unint64_t sub_1AF5E5BE4()
{
  result = qword_1EB63C330;
  if (!qword_1EB63C330)
  {
    result = swift_getWitnessTable(asc_1AFE65AC8, &type metadata for ParticleTextureFrame.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C330);
  }

  return result;
}

unint64_t sub_1AF5E5C3C()
{
  result = qword_1EB63C338;
  if (!qword_1EB63C338)
  {
    result = swift_getWitnessTable(aA_32, &type metadata for ParticleTextureFrame.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C338);
  }

  return result;
}

double sub_1AF5E5C90(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C368, sub_1AF5E70F0, &type metadata for ParticleRibbonLength.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E70F0();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v9 = MEMORY[0x1E69E7428];
    sub_1AF5E7C00(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    sub_1AF5E55F8(&qword_1ED72F780, &unk_1ED72F770, v9, MEMORY[0x1E69E7440]);
    sub_1AFDFE768();
    (*(v6 + 8))(v8, v5);
    v2 = *&v11[1];
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AF5E5EC4(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C410, sub_1AF5E733C, &type metadata for LinearFactor.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E733C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v8 = MEMORY[0x1E69E7450];
    sub_1AF5E7C00(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AF5E55F8(&qword_1ED72F748, &qword_1ED72F740, v8, MEMORY[0x1E69E7468]);
    sub_1AFDFE768();
    (*(v5 + 8))(v7, v4);
    v10[0] = v10[1];
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AF5E60F4(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C428, sub_1AF5E7390, &type metadata for AngularFactor.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E7390();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v8 = MEMORY[0x1E69E7450];
    sub_1AF5E7C00(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AF5E55F8(&qword_1ED72F748, &qword_1ED72F740, v8, MEMORY[0x1E69E7468]);
    sub_1AFDFE768();
    (*(v5 + 8))(v7, v4);
    v10[0] = v10[1];
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AF5E6324(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C440, sub_1AF5E73E4, &type metadata for ParticleTarget.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E73E4();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v8 = MEMORY[0x1E69E7450];
    sub_1AF5E7C00(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AF5E55F8(&qword_1ED72F748, &qword_1ED72F740, v8, MEMORY[0x1E69E7468]);
    sub_1AFDFE768();
    (*(v5 + 8))(v7, v4);
    v10[0] = v10[1];
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AF5E6554(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C458, sub_1AF5E7438, &type metadata for UserData1.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E7438();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v8 = MEMORY[0x1E69E74A8];
    sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    sub_1AF5E55F8(&qword_1ED72F6F0, &qword_1ED72F6E0, v8, MEMORY[0x1E69E74C0]);
    sub_1AFDFE768();
    (*(v5 + 8))(v7, v4);
    v10[0] = v10[1];
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AF5E6784(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C470, sub_1AF5E748C, &type metadata for UserData2.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E748C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v8 = MEMORY[0x1E69E74A8];
    sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    sub_1AF5E55F8(&qword_1ED72F6F0, &qword_1ED72F6E0, v8, MEMORY[0x1E69E74C0]);
    sub_1AFDFE768();
    (*(v5 + 8))(v7, v4);
    v10[0] = v10[1];
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AF5E69B4(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C488, sub_1AF5E74E0, &type metadata for UserData3.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E74E0();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v8 = MEMORY[0x1E69E74A8];
    sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    sub_1AF5E55F8(&qword_1ED72F6F0, &qword_1ED72F6E0, v8, MEMORY[0x1E69E74C0]);
    sub_1AFDFE768();
    (*(v5 + 8))(v7, v4);
    v10[0] = v10[1];
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AF5E6BE4(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C4A0, sub_1AF5E7534, &type metadata for UserData4.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E7534();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v8 = MEMORY[0x1E69E74A8];
    sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    sub_1AF5E55F8(&qword_1ED72F6F0, &qword_1ED72F6E0, v8, MEMORY[0x1E69E74C0]);
    sub_1AFDFE768();
    (*(v5 + 8))(v7, v4);
    v10[0] = v10[1];
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AF5E6E14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_1AF5E7C00(0, &qword_1EB63C340, sub_1AF5E7048, &type metadata for ParticleCustomEmitter.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E7048();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v9 = v6;
  v10 = v18;
  v21 = 0;
  sub_1AFDFE738();
  v12 = v11;
  v20 = 1;
  sub_1AFDFE738();
  v14 = v13;
  v19 = 2;
  sub_1AFDFE738();
  v16 = v15;
  (*(v9 + 8))(v8, v5);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v10 = v12;
  *(v10 + 4) = v14;
  *(v10 + 8) = v16;
  *(v10 + 16) = nullsub_106;
  *(v10 + 24) = 0;
  return result;
}

unint64_t sub_1AF5E7048()
{
  result = qword_1EB63C348;
  if (!qword_1EB63C348)
  {
    result = swift_getWitnessTable(byte_1AFE674A0, &type metadata for ParticleCustomEmitter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C348);
  }

  return result;
}

unint64_t sub_1AF5E709C()
{
  result = qword_1EB63C360;
  if (!qword_1EB63C360)
  {
    result = swift_getWitnessTable(aI_21, &type metadata for Particle.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C360);
  }

  return result;
}

unint64_t sub_1AF5E70F0()
{
  result = qword_1EB63C370;
  if (!qword_1EB63C370)
  {
    result = swift_getWitnessTable(byte_1AFE67400, &type metadata for ParticleRibbonLength.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C370);
  }

  return result;
}

unint64_t sub_1AF5E7144()
{
  result = qword_1EB63C388;
  if (!qword_1EB63C388)
  {
    result = swift_getWitnessTable(asc_1AFE673B0, &type metadata for ParticleRoughness.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C388);
  }

  return result;
}

unint64_t sub_1AF5E7198()
{
  result = qword_1EB63C3A0;
  if (!qword_1EB63C3A0)
  {
    result = swift_getWitnessTable(aY_37, &type metadata for ParticleMetalness.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C3A0);
  }

  return result;
}

unint64_t sub_1AF5E71EC()
{
  result = qword_1EB63C3B8;
  if (!qword_1EB63C3B8)
  {
    result = swift_getWitnessTable(byte_1AFE67310, &type metadata for ParticleEmission.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C3B8);
  }

  return result;
}

unint64_t sub_1AF5E7240()
{
  result = qword_1EB63C3D0;
  if (!qword_1EB63C3D0)
  {
    result = swift_getWitnessTable(byte_1AFE672C0, &type metadata for ParticleAngle.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C3D0);
  }

  return result;
}

unint64_t sub_1AF5E7294()
{
  result = qword_1EB63C3E8;
  if (!qword_1EB63C3E8)
  {
    result = swift_getWitnessTable(aI_22, &type metadata for ParticleAngleVelocity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C3E8);
  }

  return result;
}

unint64_t sub_1AF5E72E8()
{
  result = qword_1EB63C400;
  if (!qword_1EB63C400)
  {
    result = swift_getWitnessTable(byte_1AFE67220, &type metadata for Mass.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C400);
  }

  return result;
}

unint64_t sub_1AF5E733C()
{
  result = qword_1EB63C418;
  if (!qword_1EB63C418)
  {
    result = swift_getWitnessTable(byte_1AFE671D0, &type metadata for LinearFactor.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C418);
  }

  return result;
}

unint64_t sub_1AF5E7390()
{
  result = qword_1EB63C430;
  if (!qword_1EB63C430)
  {
    result = swift_getWitnessTable(a90, &type metadata for AngularFactor.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C430);
  }

  return result;
}

unint64_t sub_1AF5E73E4()
{
  result = qword_1EB63C448;
  if (!qword_1EB63C448)
  {
    result = swift_getWitnessTable(byte_1AFE67130, &type metadata for ParticleTarget.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C448);
  }

  return result;
}

unint64_t sub_1AF5E7438()
{
  result = qword_1EB63C460;
  if (!qword_1EB63C460)
  {
    result = swift_getWitnessTable(byte_1AFE670E0, &type metadata for UserData1.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C460);
  }

  return result;
}

unint64_t sub_1AF5E748C()
{
  result = qword_1EB63C478;
  if (!qword_1EB63C478)
  {
    result = swift_getWitnessTable(a1_23, &type metadata for UserData2.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C478);
  }

  return result;
}

unint64_t sub_1AF5E74E0()
{
  result = qword_1EB63C490;
  if (!qword_1EB63C490)
  {
    result = swift_getWitnessTable(aY1, &type metadata for UserData3.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C490);
  }

  return result;
}

unint64_t sub_1AF5E7534()
{
  result = qword_1EB63C4A8;
  if (!qword_1EB63C4A8)
  {
    result = swift_getWitnessTable(byte_1AFE66FF0, &type metadata for UserData4.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C4A8);
  }

  return result;
}

unint64_t sub_1AF5E7588()
{
  result = qword_1EB63C4C0;
  if (!qword_1EB63C4C0)
  {
    result = swift_getWitnessTable(byte_1AFE66FA0, &type metadata for NeighborCount.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C4C0);
  }

  return result;
}

unint64_t sub_1AF5E75DC()
{
  result = qword_1EB63C4D8;
  if (!qword_1EB63C4D8)
  {
    result = swift_getWitnessTable(aI2, &type metadata for ParticlePivot.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C4D8);
  }

  return result;
}

uint64_t sub_1AF5E7630(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C4E8, sub_1AF5E789C, &type metadata for ParticleSphereAttractor.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E789C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v8 = MEMORY[0x1E69E74A8];
    sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v11 = 0;
    sub_1AF5E55F8(&qword_1ED72F6F0, &qword_1ED72F6E0, v8, MEMORY[0x1E69E74C0]);
    sub_1AFDFE768();
    v10 = v12;
    LOBYTE(v12) = 1;
    sub_1AFDFE738();
    (*(v5 + 8))(v7, v4);
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

unint64_t sub_1AF5E789C()
{
  result = qword_1EB63C4F0;
  if (!qword_1EB63C4F0)
  {
    result = swift_getWitnessTable(byte_1AFE66F00, &type metadata for ParticleSphereAttractor.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C4F0);
  }

  return result;
}

uint64_t sub_1AF5E78F0(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C500, sub_1AF5E7BAC, &type metadata for ParticleSDFAttractor.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = a1[3];
  sub_1AF441150(a1, v8);
  sub_1AF5E7BAC();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v13 = 0;
    sub_1AF47FEB4();
    sub_1AFDFE768();
    v8 = v12;
    v9 = MEMORY[0x1E69E7450];
    sub_1AF5E7C00(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v13 = 1;
    sub_1AF5E55F8(&qword_1ED72F748, &qword_1ED72F740, v9, MEMORY[0x1E69E7468]);
    sub_1AFDFE768();
    v11[1] = v12;
    v13 = 2;
    sub_1AFDFE768();
    (*(v5 + 8))(v7, v4);
    v11[0] = v12;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8;
}

unint64_t sub_1AF5E7BAC()
{
  result = qword_1EB63C508;
  if (!qword_1EB63C508)
  {
    result = swift_getWitnessTable(a3_2, &type metadata for ParticleSDFAttractor.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C508);
  }

  return result;
}

void sub_1AF5E7C00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF5E7DAC()
{
  result = qword_1EB63C518;
  if (!qword_1EB63C518)
  {
    result = swift_getWitnessTable(byte_1AFE66148, &type metadata for ParticleCustomEmitter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C518);
  }

  return result;
}

unint64_t sub_1AF5E7E04()
{
  result = qword_1EB63C520;
  if (!qword_1EB63C520)
  {
    result = swift_getWitnessTable(byte_1AFE66250, &type metadata for ParticleRibbonLength.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C520);
  }

  return result;
}
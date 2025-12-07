uint64_t sub_1D2FDAC90@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1D2FDADD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D30E8C9C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D2FDAE3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D30E8C9C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D2FDAEB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D2FDAEFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1D2FE022C(v3 + 16, a2);
}

uint64_t sub_1D2FDAF4C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D30E8A4C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2FDAFF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D30E8A4C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2FDB09C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D30E8A2C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2FDB148(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D30E8A2C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2FDB2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = sub_1D300250C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1D2FDB304()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7498F8, qword_1D30F1A48);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

void *sub_1D2FDB334()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &unk_1F4EAE870;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1D2FDB3A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1D2FE022C(v3 + 16, a2);
}

uint64_t sub_1D2FDB3F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AssetPackHost(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1D30E8D5C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D2FDB514(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AssetPackHost(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1D30E8D5C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D2FDB640@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1D2FE022C(v3 + 16, a2);
}

uint64_t sub_1D2FDB700()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B60, &qword_1D30F31C8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D2FDB74C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D2FDB78C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D2FDB7C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C88, &qword_1D30F33A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1D2FDB874()
{
  v1 = (type metadata accessor for LicenseRecord.ElementID(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + 136) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  swift_unknownObjectRelease();

  v11 = v1[7];
  v12 = sub_1D30E8A4C();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v10 | 7);
}

uint64_t sub_1D2FDBA68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C00, &qword_1D30F34F0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2FDBAE0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C00, &qword_1D30F34F0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D2FDBB6C()
{
  if (*v0)
  {
    return 0x676E696E676973;
  }

  else
  {
    return 0x6974707972636E65;
  }
}

uint64_t sub_1D2FDBBAC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  v3 = *(result + 24) >> 1;
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1D2FDBDC8()
{
  v1 = 28532;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_1D2FDBE1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D30DAC9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D2FDBE44()
{
  if (*v0)
  {
    return 0x6B72616D6B6F6F62;
  }

  else
  {
    return 0x6150656372756F73;
  }
}

uint64_t sub_1D2FDBE90()
{
  if (*v0)
  {
    return 0x44496D616574;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1D2FDBED8()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1D2FDC3D0()
{
  if (*v0)
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return 1752457584;
  }
}

uint64_t sub_1D2FDC5A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D30E852C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D2FDC614(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D30E852C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D2FDC6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D30E8D9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D2FDC788(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D30E8D9C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D2FDC844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Helper.Message(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D2FDC900(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Helper.Message(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D2FDC9B8()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD20, &qword_1D30F6618);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D2FDC9E8()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD28, &qword_1D30F6620);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D2FDCA18()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD30, &qword_1D30F6628);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D2FDCA50()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD38, qword_1D30F66A8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D2FDCAB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B0A8, &qword_1D30FD1D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D2FDCBE0()
{
  v1 = 0x6574736575716572;
  if (*v0 != 1)
  {
    v1 = 0x65726576696C6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646E6570;
  }
}

_OWORD *sub_1D2FDCC64(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D2FDCC74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D2FDF438(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D2FDCD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[4];
  v6 = v3[2];
  if (v6 < v5)
  {
    __break(1u);
  }

  else
  {
    v7 = *v3;
    v8 = v3[1];
    v9 = *(a1 + 16);
    v10 = sub_1D2FDCEC0(v5, v6, v7, v8, v9);
    sub_1D2FDCF08(v10, v11, v9);
    v5 = v7;
    v6 = v8;
    a3 = v9;
  }

  return MEMORY[0x1EEE69C20](v5, v6, a3);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_1D2FDCDA8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t sub_1D2FDCDBC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2FDCDDC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D2FDCE38(uint64_t a1, int a2)
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

uint64_t sub_1D2FDCE58(uint64_t result, int a2, int a3)
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

uint64_t sub_1D2FDCEC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result < 0 || a4 < a2)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return 0;
    }

    if (!__OFSUB__(a2, result))
    {
      return a3 + *(*(a5 - 8) + 72) * result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2FDCF08(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    result = swift_arrayDestroy();
    if ((a2 * *(*(a3 - 8) + 72)) >> 64 == (a2 * *(*(a3 - 8) + 72)) >> 63)
    {
      return v3;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_1D2FDCF78@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *sub_1D2FDCF94(void *result, void *a2)
{
  v2 = result[4];
  v3 = result[2];
  if (v3 < v2)
  {
    __break(1u);
  }

  else
  {
    v4 = v2 - 1;
    v5 = 56 * v2 + 8;
    while (v4 - v3 != -1)
    {
      v6 = *(*result + v5);
      ++v4;
      v5 += 56;
      if (v6 == *a2)
      {
        return v4;
      }
    }

    return 0;
  }

  return result;
}

void sub_1D2FDD054(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1D2FDD0A0()
{
  v1 = *v0;
  sub_1D30E98AC();
  MEMORY[0x1D38B2DE0](v1);
  return sub_1D30E98EC();
}

uint64_t sub_1D2FDD0E8(uint64_t a1)
{
  v2 = *v1;
  sub_1D30E98AC();
  MEMORY[0x1D38B2DE0](v2);
  return sub_1D30E98EC();
}

uint64_t sub_1D2FDD138(uint64_t a1)
{
  v2 = sub_1D2FE0588();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FDD174(uint64_t a1)
{
  v2 = sub_1D2FE0588();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FDD1B0(void *a1, uint64_t a2)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749238, &qword_1D30EECF0);
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v23 = &v19 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749240, &qword_1D30EECF8);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749248, &qword_1D30EED00);
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749250, &qword_1D30EED08);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2FE0588();
  v15 = v26;
  sub_1D30E992C();
  if (!v15)
  {
    v28 = 0;
    sub_1D2FE06D8();
    sub_1D30E96DC();
    (*(v20 + 8))(v10, v8);
    return (*(v12 + 8))(v14, v11);
  }

  if (v15 == 1)
  {
    v29 = 1;
    sub_1D2FE0684();
    sub_1D30E96DC();
    (*(v21 + 8))(v7, v22);
    return (*(v12 + 8))(v14, v11);
  }

  v30 = 2;
  sub_1D2FE05DC();
  v17 = v23;
  sub_1D30E96DC();
  v27 = v15;
  sub_1D2FE0630();
  v18 = v25;
  sub_1D30E974C();
  (*(v24 + 8))(v17, v18);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1D2FDD58C()
{
  sub_1D30E98AC();
  MEMORY[0x1D38B2DE0](0);
  return sub_1D30E98EC();
}

uint64_t sub_1D2FDD5D0(uint64_t a1)
{
  sub_1D30E98AC();
  MEMORY[0x1D38B2DE0](0);
  return sub_1D30E98EC();
}

uint64_t sub_1D2FDD628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
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

uint64_t sub_1D2FDD6B0(uint64_t a1)
{
  v2 = sub_1D2FE05DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FDD6EC(uint64_t a1)
{
  v2 = sub_1D2FE05DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FDD734(uint64_t a1)
{
  v2 = sub_1D2FE06D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FDD770(uint64_t a1)
{
  v2 = sub_1D2FE06D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FDD7AC(uint64_t a1)
{
  v2 = sub_1D2FE0684();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FDD7E8(uint64_t a1)
{
  v2 = sub_1D2FE0684();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FDD824@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D2FDF560(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D2FDD86C()
{
  v1 = 0x65726576696C6544;
  if (*v0 == 1)
  {
    v1 = 0x6574736575716552;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646E6550;
  }
}

uint64_t sub_1D2FDD8D0()
{
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C58, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEA34);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEAF0);
  sub_1D30E8F0C();

  return v0;
}

uint64_t sub_1D2FDD9D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C58, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEA34);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEAF0);
  sub_1D30E8F0C();

  *a2 = v4;
  return result;
}

uint64_t sub_1D2FDDAE0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEAF0);
  sub_1D30E8F1C();
}

uint64_t sub_1D2FDDB88()
{
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C58, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEA34);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEAF0);
  sub_1D2FE0174(&qword_1EC749218, &qword_1EC749220, &protocol conformance descriptor for LicenseRecord.ElementID, MEMORY[0x1E69E6330]);
  sub_1D30E8F0C();

  return v0;
}

uint64_t sub_1D2FDDCC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C58, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEA34);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEAF0);
  sub_1D2FE0174(&qword_1EC749218, &qword_1EC749220, &protocol conformance descriptor for LicenseRecord.ElementID, MEMORY[0x1E69E6330]);
  sub_1D30E8F0C();

  *a2 = v4;
  return result;
}

uint64_t sub_1D2FDDE10(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C58, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEA34);
  sub_1D30E8ADC();
}

uint64_t sub_1D2FDDED4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEAF0);
  sub_1D2FE0174(&qword_1EC749200, &qword_1EC749210, &protocol conformance descriptor for LicenseRecord.ElementID, MEMORY[0x1E69E6300]);
  sub_1D30E8F1C();
}

uint64_t sub_1D2FDDFB8()
{
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C58, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEA34);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEAF0);
  sub_1D2FE0104();
  sub_1D30E8F0C();

  return v0;
}

uint64_t sub_1D2FDE0C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C58, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEA34);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEAF0);
  sub_1D2FE0104();
  sub_1D30E8F0C();

  *a2 = v4;
  return result;
}

uint64_t sub_1D2FDE1D0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEAF0);
  sub_1D2FE00B0();
  sub_1D30E8F1C();
}

uint64_t sub_1D2FDE27C()
{
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C58, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEA34);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEAF0);
  sub_1D2FDFFF8(&qword_1EC7491E0, &qword_1EC7491E8, MEMORY[0x1E6969558], MEMORY[0x1E69E7C88]);
  sub_1D30E8F0C();
}

uint64_t sub_1D2FDE3BC()
{
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C58, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEA34);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEAF0);
  sub_1D2FDFFF8(&qword_1EC7491E0, &qword_1EC7491E8, MEMORY[0x1E6969558], MEMORY[0x1E69E7C88]);
  sub_1D30E8F0C();
}

uint64_t sub_1D2FDE4FC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491C8, &qword_1D30EEC10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  sub_1D2FDFEBC(a1, &v9[-v5]);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_1D2FE0438(&qword_1EE313C58, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEA34);
  sub_1D30E8ADC();

  return sub_1D2FDFF48(v6);
}

uint64_t sub_1D2FDE62C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEAF0);
  sub_1D2FDFFF8(&qword_1EC7491D0, &qword_1EC7491D8, MEMORY[0x1E6969538], MEMORY[0x1E69E7C70]);
  sub_1D30E8F1C();
}

void *sub_1D2FDE70C(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491C8, &qword_1D30EEC10);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v11 - v6;
  v2[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749228, &unk_1D30EEC20);
  v8 = sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEAF0);
  v11[0] = v4;
  v11[1] = v4;
  v11[2] = v8;
  v11[3] = v8;
  v2[7] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v2 + 3);
  sub_1D30E8ECC();
  sub_1D30E896C();
  v9 = sub_1D30E8A2C();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
  swift_getKeyPath();
  sub_1D2FDFFF8(&qword_1EC7491D0, &qword_1EC7491D8, MEMORY[0x1E6969538], MEMORY[0x1E69E7C70]);
  sub_1D30E8DEC();

  sub_1D2FDFF48(v7);
  *(v2 + 16) = 0;
  sub_1D30E8AFC();
  *(v2 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v2 + 3);
  sub_1D2FE02DC(a1, (v2 + 3));
  swift_endAccess();
  return v2;
}

uint64_t sub_1D2FDE988()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v1 = OBJC_IVAR____TtCO29ManagedBackgroundAssetsHelper11Schema1_0_113LicenseRecord___observationRegistrar;
  v2 = sub_1D30E8B0C();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for Schema1_0_1.LicenseRecord(uint64_t a1)
{
  result = qword_1EE313C28;
  if (!qword_1EE313C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2FDEA80(uint64_t a1)
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

uint64_t sub_1D2FDEB5C()
{
  v0 = sub_1D30E8F9C();
  __swift_allocate_value_buffer(v0, qword_1EE315318);
  __swift_project_value_buffer(v0, qword_1EE315318);
  return sub_1D30E8FAC();
}

char *sub_1D2FDEBB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749230, &unk_1D30F2B00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D30EE910;
  v1 = type metadata accessor for AppReviewRecord(0);
  v2 = sub_1D2FE0438(&qword_1EE313708, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  v3 = type metadata accessor for AssetPackRecord(0);
  v4 = sub_1D2FE0438(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = type metadata accessor for Schema1_0_1.LicenseRecord(0);
  v6 = sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEAF0);
  result = sub_1D30D7C08(1, 3, 1, inited);
  *(result + 2) = 3;
  *(result + 8) = v5;
  *(result + 9) = v6;
  qword_1EE315310 = result;
  return result;
}

uint64_t sub_1D2FDED2C()
{
  if (qword_1EE313B48 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D2FDED88@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE313B50 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8F9C();
  v3 = __swift_project_value_buffer(v2, qword_1EE315318);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D2FDEE30(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1D2FDE70C(a1);
  return v2;
}

uint64_t sub_1D2FDEEB8(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1D2FE02DC(a1, v1 + 24);
  return swift_endAccess();
}

void (*sub_1D2FDEF10(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1D2FE022C(v1 + 24, v4);
  return sub_1D2FDEFA0;
}

void sub_1D2FDEFA0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1D2FE022C(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 24));
    sub_1D2FE02DC((v2 + 40), v3 + 24);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 24));
    sub_1D2FE02DC(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1D2FDF05C(uint64_t a1, uint64_t a2)
{
  sub_1D30E98AC();
  sub_1D30E903C();
  return sub_1D30E98EC();
}

uint64_t sub_1D2FDF134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D30E98AC();
  sub_1D30E903C();
  return sub_1D30E98EC();
}

uint64_t sub_1D2FDF208(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord, &unk_1D30EEAF0);

  return MEMORY[0x1EEDD9288](v3, v4, v2, v5);
}

uint64_t sub_1D2FDF438(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E6570 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574736575716572 && a2 == 0xE900000000000064 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65726576696C6564 && a2 == 0xE900000000000064)
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

uint64_t sub_1D2FDF560(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749280, &qword_1D30EED10);
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v28 - v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749288, &qword_1D30EED18);
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749290, &qword_1D30EED20);
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749298, &qword_1D30EED28);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = a1[3];
  v37 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D2FE0588();
  v14 = v36;
  sub_1D30E990C();
  if (!v14)
  {
    v29 = v5;
    v36 = 0;
    v15 = v34;
    v16 = sub_1D30E96AC();
    v17 = (2 * *(v16 + 16)) | 1;
    v38 = v16;
    v39 = v16 + 32;
    v40 = 0;
    v41 = v17;
    v18 = sub_1D302D668();
    v13 = v11;
    if (v18 == 3 || v40 != v41 >> 1)
    {
      v20 = sub_1D30E94EC();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7492A0, &qword_1D30EED30);
      *v22 = &type metadata for Schema1_0_1.LicenseRecord.State;
      sub_1D30E960C();
      sub_1D30E94DC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
    }

    else
    {
      if (v18)
      {
        if (v18 == 1)
        {
          LOBYTE(v42) = 1;
          sub_1D2FE0684();
          v19 = v36;
          sub_1D30E95FC();
          if (!v19)
          {
            (*(v32 + 8))(v4, v15);
            (*(v9 + 8))(v11, v8);
            swift_unknownObjectRelease();
            v13 = 1;
            goto LABEL_11;
          }
        }

        else
        {
          LOBYTE(v42) = 2;
          sub_1D2FE05DC();
          v25 = v36;
          sub_1D30E95FC();
          if (!v25)
          {
            v26 = v11;
            sub_1D2FE072C();
            v27 = v31;
            sub_1D30E967C();
            (*(v33 + 8))(0, v27);
            (*(v9 + 8))(v26, v8);
            swift_unknownObjectRelease();
            v13 = v42;
            goto LABEL_11;
          }
        }

        (*(v9 + 8))(v11, v8);
LABEL_10:
        swift_unknownObjectRelease();
        goto LABEL_11;
      }

      LOBYTE(v42) = 0;
      sub_1D2FE06D8();
      v24 = v36;
      sub_1D30E95FC();
      if (!v24)
      {
        (*(v30 + 8))(v7, v29);
        (*(v9 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v13 = 0;
        goto LABEL_11;
      }
    }

    (*(v9 + 8))(v13, v8);
    goto LABEL_10;
  }

LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v37);
  return v13;
}

uint64_t sub_1D2FDFB60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491B8, &qword_1D30EEB60);
  sub_1D30E8F8C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D30EE920;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491C0, &qword_1D30EEB90);
  sub_1D30E8FCC();
  *(swift_allocObject() + 16) = xmmword_1D30EE930;
  sub_1D30E8FBC();
  sub_1D30E8FDC();
  swift_allocObject();
  sub_1D30E8FEC();
  sub_1D2FE0438(&qword_1EE3140E0, MEMORY[0x1E697BD30], MEMORY[0x1E697BD28]);
  sub_1D30E8F7C();
  swift_getKeyPath();
  sub_1D30E8F7C();
  swift_getKeyPath();
  v2 = 0u;
  v3 = 0;
  sub_1D30E8F7C();
  swift_getKeyPath();
  v4 = sub_1D30E8A2C();
  __swift_allocate_boxed_opaque_existential_0Tm(&v2);
  sub_1D30E896C();
  sub_1D30E8F7C();
  return v0;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D2FDFEBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491C8, &qword_1D30EEC10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2FDFF48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491C8, &qword_1D30EEC10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D2FDFFF8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7491C8, &qword_1D30EEC10);
    sub_1D2FE0438(a2, MEMORY[0x1E6969530], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2FE00B0()
{
  result = qword_1EC7491F0;
  if (!qword_1EC7491F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7491F0);
  }

  return result;
}

unint64_t sub_1D2FE0104()
{
  result = qword_1EC7491F8;
  if (!qword_1EC7491F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7491F8);
  }

  return result;
}

uint64_t sub_1D2FE0174(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749208, &qword_1D30EEC18);
    sub_1D2FE0438(a2, type metadata accessor for LicenseRecord.ElementID, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D2FE022C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_1D2FE02DC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1D2FE0438(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_29ManagedBackgroundAssetsHelper11Schema1_0_1O13LicenseRecordC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D2FE04A4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2FE04F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1D2FE0558(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1D2FE0588()
{
  result = qword_1EC749258;
  if (!qword_1EC749258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749258);
  }

  return result;
}

unint64_t sub_1D2FE05DC()
{
  result = qword_1EC749260;
  if (!qword_1EC749260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749260);
  }

  return result;
}

unint64_t sub_1D2FE0630()
{
  result = qword_1EC749268;
  if (!qword_1EC749268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749268);
  }

  return result;
}

unint64_t sub_1D2FE0684()
{
  result = qword_1EC749270;
  if (!qword_1EC749270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749270);
  }

  return result;
}

unint64_t sub_1D2FE06D8()
{
  result = qword_1EC749278;
  if (!qword_1EC749278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749278);
  }

  return result;
}

unint64_t sub_1D2FE072C()
{
  result = qword_1EC7492A8;
  if (!qword_1EC7492A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7492A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Schema1_0_1.LicenseRecord.State.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Schema1_0_1.LicenseRecord.State.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Schema1_0_1.LicenseRecord.State.DeliveredCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Schema1_0_1.LicenseRecord.State.DeliveredCodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1D2FE09E8()
{
  result = qword_1EC7492B0;
  if (!qword_1EC7492B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7492B0);
  }

  return result;
}

unint64_t sub_1D2FE0A40()
{
  result = qword_1EC7492B8;
  if (!qword_1EC7492B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7492B8);
  }

  return result;
}

unint64_t sub_1D2FE0A98()
{
  result = qword_1EC7492C0;
  if (!qword_1EC7492C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7492C0);
  }

  return result;
}

unint64_t sub_1D2FE0AF0()
{
  result = qword_1EC7492C8;
  if (!qword_1EC7492C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7492C8);
  }

  return result;
}

unint64_t sub_1D2FE0B48()
{
  result = qword_1EC7492D0;
  if (!qword_1EC7492D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7492D0);
  }

  return result;
}

unint64_t sub_1D2FE0BA0()
{
  result = qword_1EC7492D8;
  if (!qword_1EC7492D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7492D8);
  }

  return result;
}

unint64_t sub_1D2FE0BF8()
{
  result = qword_1EC7492E0;
  if (!qword_1EC7492E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7492E0);
  }

  return result;
}

unint64_t sub_1D2FE0C50()
{
  result = qword_1EC7492E8;
  if (!qword_1EC7492E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7492E8);
  }

  return result;
}

unint64_t sub_1D2FE0CA8()
{
  result = qword_1EC7492F0;
  if (!qword_1EC7492F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7492F0);
  }

  return result;
}

unint64_t sub_1D2FE0D00()
{
  result = qword_1EC7492F8;
  if (!qword_1EC7492F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7492F8);
  }

  return result;
}

unint64_t sub_1D2FE0D5C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x4449656C646E7562;
    v6 = 0x6C646E7542707061;
    v7 = 0x65726F7453707061;
    if (a1 != 3)
    {
      v7 = 0x70756F7247707061;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x7542746E65726170;
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
    v1 = 0xD000000000000012;
    if (a1 == 9)
    {
      v1 = 0xD00000000000001FLL;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000017;
    }

    v2 = 0x44496D616574;
    v3 = 0xD000000000000010;
    if (a1 != 6)
    {
      v3 = 0x7473655461746562;
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

uint64_t sub_1D2FE0EF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D2FE32E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D2FE0F2C(uint64_t a1)
{
  v2 = sub_1D2FE2E38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FE0F68(uint64_t a1)
{
  v2 = sub_1D2FE2E38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppInfo.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AppInfo.parentBundleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AppInfo.appBundleID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AppInfo.appGroupID.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t AppInfo.teamID.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t AppInfo.distributorNameForCurrentLocale.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t AppInfo.description.getter()
{
  v1 = 0xE900000000000065;
  v3 = *v0;
  v2 = v0[1];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[5];
  v46 = v0[7];
  v47 = v0[8];
  v7 = v0[10];
  v48 = *(v0 + 88);
  v49 = *(v0 + 104);
  v8 = v0[15];
  v50 = v0[16];
  if (!v5)
  {
    if (v7)
    {
      v13 = v0[9];
      if (v8)
      {
        v43 = v0[14];
        v45 = v0[15];
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30EA610);
        MEMORY[0x1D38B2610](v3, v2);
        MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EA630);
        MEMORY[0x1D38B2610](v4, v6);
        MEMORY[0x1D38B2610](0xD000000000000014, 0x80000001D30EA650);
        v14 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v14);

        MEMORY[0x1D38B2610](0x6F72672070706120, 0xEF203A4449207075);
        MEMORY[0x1D38B2610](v46, v47);
        MEMORY[0x1D38B2610](0x4449206D61657420, 0xEA0000000000203ALL);
        MEMORY[0x1D38B2610](v13, v7);
        MEMORY[0x1D38B2610](0xD000000000000015, 0x80000001D30EA670);
        if (v48)
        {
          v15 = 1702195828;
        }

        else
        {
          v15 = 0x65736C6166;
        }

        if (v48)
        {
          v16 = 0xE400000000000000;
        }

        else
        {
          v16 = 0xE500000000000000;
        }

LABEL_45:
        MEMORY[0x1D38B2610](v15, v16);

        MEMORY[0x1D38B2610](0xD000000000000013, 0x80000001D30EA690);
        type metadata accessor for MIBetaTesterType(0);
        sub_1D30E955C();
        MEMORY[0x1D38B2610](0xD00000000000001DLL, 0x80000001D30EA6B0);
        if (v49)
        {
          v24 = 1702195828;
        }

        else
        {
          v24 = 0x65736C6166;
        }

        if (v49)
        {
          v25 = 0xE400000000000000;
        }

        else
        {
          v25 = 0xE500000000000000;
        }

        MEMORY[0x1D38B2610](v24, v25);

        MEMORY[0x1D38B2610](0xD000000000000026, 0x80000001D30EA770);
        MEMORY[0x1D38B2610](v43, v45);
        goto LABEL_100;
      }

      sub_1D30E948C();
      MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30EA610);
      MEMORY[0x1D38B2610](v3, v2);
      MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EA630);
      MEMORY[0x1D38B2610](v4, v6);
      MEMORY[0x1D38B2610](0xD000000000000014, 0x80000001D30EA650);
      v26 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v26);

      MEMORY[0x1D38B2610](0x6F72672070706120, 0xEF203A4449207075);
      MEMORY[0x1D38B2610](v46, v47);
      MEMORY[0x1D38B2610](0x4449206D61657420, 0xEA0000000000203ALL);
      MEMORY[0x1D38B2610](v13, v7);
      MEMORY[0x1D38B2610](0xD000000000000015, 0x80000001D30EA670);
      if (v48)
      {
        v27 = 1702195828;
      }

      else
      {
        v27 = 0x65736C6166;
      }

      if (v48)
      {
        v28 = 0xE400000000000000;
      }

      else
      {
        v28 = 0xE500000000000000;
      }

      MEMORY[0x1D38B2610](v27, v28);
    }

    else
    {
      if (v8)
      {
        v43 = v0[14];
        v45 = v0[15];
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30EA610);
        MEMORY[0x1D38B2610](v3, v2);
        MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EA630);
        MEMORY[0x1D38B2610](v4, v6);
        MEMORY[0x1D38B2610](0xD000000000000014, 0x80000001D30EA650);
        v23 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v23);

        MEMORY[0x1D38B2610](0x6F72672070706120, 0xEF203A4449207075);
        MEMORY[0x1D38B2610](v46, v47);
        MEMORY[0x1D38B2610](0xD000000000000015, 0x80000001D30EA670);
        if (v48)
        {
          v15 = 1702195828;
        }

        else
        {
          v15 = 0x65736C6166;
        }

        if (v48)
        {
          v16 = 0xE400000000000000;
        }

        else
        {
          v16 = 0xE500000000000000;
        }

        goto LABEL_45;
      }

      sub_1D30E948C();
      MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30EA610);
      MEMORY[0x1D38B2610](v3, v2);
      MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EA630);
      MEMORY[0x1D38B2610](v4, v6);
      MEMORY[0x1D38B2610](0xD000000000000014, 0x80000001D30EA650);
      v34 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v34);

      MEMORY[0x1D38B2610](0x6F72672070706120, 0xEF203A4449207075);
      MEMORY[0x1D38B2610](v46, v47);
      MEMORY[0x1D38B2610](0xD000000000000015, 0x80000001D30EA670);
      if (v48)
      {
        v35 = 1702195828;
      }

      else
      {
        v35 = 0x65736C6166;
      }

      if (v48)
      {
        v36 = 0xE400000000000000;
      }

      else
      {
        v36 = 0xE500000000000000;
      }

      MEMORY[0x1D38B2610](v35, v36);

      MEMORY[0x1D38B2610](0xD000000000000013, 0x80000001D30EA690);
      type metadata accessor for MIBetaTesterType(0);
      sub_1D30E955C();
    }

    MEMORY[0x1D38B2610](0xD00000000000001DLL, 0x80000001D30EA6B0);
    if (v49)
    {
      v37 = 1702195828;
    }

    else
    {
      v37 = 0x65736C6166;
    }

    if (v49)
    {
      v38 = 0xE400000000000000;
    }

    else
    {
      v38 = 0xE500000000000000;
    }

    MEMORY[0x1D38B2610](v37, v38);

LABEL_100:
    MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30EA6D0);
    if (v50 > 2)
    {
      switch(v50)
      {
        case 3:
          v39 = 0x6976655220707041;
          v1 = 0xEA00000000007765;
          break;
        case 4:
          v1 = 0x80000001D30EA750;
          v39 = 0xD000000000000012;
          break;
        case 5:
          v1 = 0x80000001D30EA730;
          v39 = 0xD000000000000014;
          break;
        default:
          goto LABEL_115;
      }
    }

    else if (v50)
    {
      if (v50 == 1)
      {
        v39 = 0x67696C4674736554;
        v1 = 0xEA00000000007468;
      }

      else
      {
        if (v50 != 2)
        {
          goto LABEL_115;
        }

        v39 = 0x6143206C61636F4CLL;
        v1 = 0xEB00000000656863;
      }
    }

    else
    {
      v39 = 0x726F745320707041;
    }

    MEMORY[0x1D38B2610](v39, v1);
    goto LABEL_114;
  }

  v9 = v0[2];
  if (v7)
  {
    v41 = v0[9];
    if (v8)
    {
      v42 = v0[14];
      v44 = v0[15];
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30EA610);
      MEMORY[0x1D38B2610](v3, v2);
      MEMORY[0x1D38B2610](0xD000000000000013, 0x80000001D30EA7A0);
      MEMORY[0x1D38B2610](v9, v5);
      MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EA630);
      MEMORY[0x1D38B2610](v4, v6);
      MEMORY[0x1D38B2610](0xD000000000000014, 0x80000001D30EA650);
      v10 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v10);

      MEMORY[0x1D38B2610](0x6F72672070706120, 0xEF203A4449207075);
      MEMORY[0x1D38B2610](v46, v47);
      MEMORY[0x1D38B2610](0x4449206D61657420, 0xEA0000000000203ALL);
      MEMORY[0x1D38B2610](v41, v7);
      MEMORY[0x1D38B2610](0xD000000000000015, 0x80000001D30EA670);
      if (v48)
      {
        v11 = 1702195828;
      }

      else
      {
        v11 = 0x65736C6166;
      }

      if (v48)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE500000000000000;
      }

LABEL_25:
      MEMORY[0x1D38B2610](v11, v12);

      MEMORY[0x1D38B2610](0xD000000000000013, 0x80000001D30EA690);
      type metadata accessor for MIBetaTesterType(0);
      sub_1D30E955C();
      MEMORY[0x1D38B2610](0xD00000000000001DLL, 0x80000001D30EA6B0);
      if (v49)
      {
        v18 = 1702195828;
      }

      else
      {
        v18 = 0x65736C6166;
      }

      if (v49)
      {
        v19 = 0xE400000000000000;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      MEMORY[0x1D38B2610](v18, v19);

      MEMORY[0x1D38B2610](0xD000000000000026, 0x80000001D30EA770);
      MEMORY[0x1D38B2610](v42, v44);
      goto LABEL_72;
    }

    sub_1D30E948C();
    MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30EA610);
    MEMORY[0x1D38B2610](v3, v2);
    MEMORY[0x1D38B2610](0xD000000000000013, 0x80000001D30EA7A0);
    MEMORY[0x1D38B2610](v9, v5);
    MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EA630);
    MEMORY[0x1D38B2610](v4, v6);
    MEMORY[0x1D38B2610](0xD000000000000014, 0x80000001D30EA650);
    v20 = sub_1D30E977C();
    MEMORY[0x1D38B2610](v20);

    MEMORY[0x1D38B2610](0x6F72672070706120, 0xEF203A4449207075);
    MEMORY[0x1D38B2610](v46, v47);
    MEMORY[0x1D38B2610](0x4449206D61657420, 0xEA0000000000203ALL);
    MEMORY[0x1D38B2610](v41, v7);
    MEMORY[0x1D38B2610](0xD000000000000015, 0x80000001D30EA670);
    if (v48)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (v48)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }
  }

  else
  {
    if (v8)
    {
      v42 = v0[14];
      v44 = v0[15];
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30EA610);
      MEMORY[0x1D38B2610](v3, v2);
      MEMORY[0x1D38B2610](0xD000000000000013, 0x80000001D30EA7A0);
      MEMORY[0x1D38B2610](v9, v5);
      MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EA630);
      MEMORY[0x1D38B2610](v4, v6);
      MEMORY[0x1D38B2610](0xD000000000000014, 0x80000001D30EA650);
      v17 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v17);

      MEMORY[0x1D38B2610](0x6F72672070706120, 0xEF203A4449207075);
      MEMORY[0x1D38B2610](v46, v47);
      MEMORY[0x1D38B2610](0xD000000000000015, 0x80000001D30EA670);
      if (v48)
      {
        v11 = 1702195828;
      }

      else
      {
        v11 = 0x65736C6166;
      }

      if (v48)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE500000000000000;
      }

      goto LABEL_25;
    }

    sub_1D30E948C();
    MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30EA610);
    MEMORY[0x1D38B2610](v3, v2);
    MEMORY[0x1D38B2610](0xD000000000000013, 0x80000001D30EA7A0);
    MEMORY[0x1D38B2610](v9, v5);
    MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EA630);
    MEMORY[0x1D38B2610](v4, v6);
    MEMORY[0x1D38B2610](0xD000000000000014, 0x80000001D30EA650);
    v29 = sub_1D30E977C();
    MEMORY[0x1D38B2610](v29);

    MEMORY[0x1D38B2610](0x6F72672070706120, 0xEF203A4449207075);
    MEMORY[0x1D38B2610](v46, v47);
    MEMORY[0x1D38B2610](0xD000000000000015, 0x80000001D30EA670);
    if (v48)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (v48)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }
  }

  MEMORY[0x1D38B2610](v21, v22);

  MEMORY[0x1D38B2610](0xD000000000000013, 0x80000001D30EA690);
  type metadata accessor for MIBetaTesterType(0);
  sub_1D30E955C();
  MEMORY[0x1D38B2610](0xD00000000000001DLL, 0x80000001D30EA6B0);
  if (v49)
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  if (v49)
  {
    v31 = 0xE400000000000000;
  }

  else
  {
    v31 = 0xE500000000000000;
  }

  MEMORY[0x1D38B2610](v30, v31);

LABEL_72:
  MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30EA6D0);
  if (v50 > 2)
  {
    switch(v50)
    {
      case 3:
        v32 = 0x6976655220707041;
        v33 = 0xEA00000000007765;
        goto LABEL_85;
      case 4:
        v33 = 0x80000001D30EA750;
        v32 = 0xD000000000000012;
        goto LABEL_85;
      case 5:
        v33 = 0x80000001D30EA730;
        v32 = 0xD000000000000014;
        goto LABEL_85;
    }
  }

  else
  {
    switch(v50)
    {
      case 0:
        v33 = 0xE900000000000065;
        v32 = 0x726F745320707041;
        goto LABEL_85;
      case 1:
        v32 = 0x67696C4674736554;
        v33 = 0xEA00000000007468;
LABEL_85:
        MEMORY[0x1D38B2610](v32, v33);
LABEL_114:

        MEMORY[0x1D38B2610](62, 0xE100000000000000);
        return 0;
      case 2:
        v32 = 0x6143206C61636F4CLL;
        v33 = 0xEB00000000656863;
        goto LABEL_85;
    }
  }

LABEL_115:
  result = sub_1D30E957C();
  __break(1u);
  return result;
}

uint64_t AppInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749300, &unk_1D30EF100);
  v5 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v7 = &v29 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2FE2E38();
  sub_1D30E990C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v43 = a2;
  v44 = v5;
  LOBYTE(v54) = 0;
  *&v42 = sub_1D30E963C();
  *(&v42 + 1) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749310, &unk_1D30EF350);
  LOBYTE(v45) = 1;
  v9 = sub_1D2FE2EF4(&qword_1EC749318, MEMORY[0x1E69E6190], MEMORY[0x1E69E7C88]);
  sub_1D30E967C();
  v39 = v9;
  v41 = *(&v54 + 1);
  v10 = v54;
  LOBYTE(v54) = 2;
  v37 = sub_1D30E963C();
  v38 = v10;
  v40 = v11;
  LOBYTE(v54) = 3;
  v36 = sub_1D30E969C();
  LOBYTE(v54) = 4;
  v34 = sub_1D30E963C();
  v35 = v12;
  LOBYTE(v45) = 5;
  sub_1D30E967C();
  v13 = v54;
  v32 = 0;
  v33 = *(&v54 + 1);
  LOBYTE(v54) = 6;
  v14 = sub_1D30E964C();
  v31 = v13;
  v30 = v14;
  LOBYTE(v54) = 7;
  v15 = sub_1D30E966C();
  LOBYTE(v54) = 8;
  v16 = sub_1D30E964C();
  LOBYTE(v45) = 9;
  sub_1D30E967C();
  v39 = *(&v54 + 1);
  v29 = v54;
  type metadata accessor for ManifestDataSource(0);
  v72 = 10;
  sub_1D2FE2F60(&qword_1EC749320, &protocol conformance descriptor for MBAManifestDataSource);
  sub_1D30E967C();
  v30 &= 1u;
  LOBYTE(v10) = v30;
  v17 = v16 & 1;
  LODWORD(v32) = v16 & 1;
  (*(v44 + 8))(v7, v76);
  v18 = v73;
  v45 = v42;
  v19 = v40;
  *&v46 = v38;
  *(&v46 + 1) = v41;
  *&v47 = v37;
  *(&v47 + 1) = v40;
  *&v48 = v36;
  *(&v48 + 1) = v34;
  *&v49 = v35;
  *(&v49 + 1) = v31;
  *&v50 = v33;
  BYTE8(v50) = v10;
  HIDWORD(v50) = *(v75 + 3);
  *(&v50 + 9) = v75[0];
  *&v51 = v15;
  BYTE8(v51) = v17;
  HIDWORD(v51) = *&v74[3];
  *(&v51 + 9) = *v74;
  v20 = v39;
  *&v52 = v29;
  *(&v52 + 1) = v39;
  v53 = v73;
  v21 = v51;
  v22 = v52;
  v23 = v43;
  *(v43 + 128) = v73;
  v23[6] = v21;
  v23[7] = v22;
  v24 = v45;
  v25 = v46;
  v26 = v50;
  v23[4] = v49;
  v23[5] = v26;
  v27 = v48;
  v23[2] = v47;
  v23[3] = v27;
  *v23 = v24;
  v23[1] = v25;
  sub_1D2FE2E8C(&v45, &v54);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v54 = v42;
  v55 = v38;
  v56 = v41;
  v57 = v37;
  v58 = v19;
  v59 = v36;
  v60 = v34;
  v61 = v35;
  v62 = v31;
  v63 = v33;
  v64 = v30;
  *v65 = v75[0];
  *&v65[3] = *(v75 + 3);
  v66 = v15;
  v67 = v32;
  *&v68[3] = *&v74[3];
  *v68 = *v74;
  v69 = v29;
  v70 = v20;
  v71 = v18;
  return sub_1D2FE2EC4(&v54);
}

uint64_t AppInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749328, &qword_1D30EF110);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = *(v1 + 16);
  v29 = *(v1 + 24);
  v30 = v7;
  v8 = *(v1 + 32);
  v27 = *(v1 + 40);
  v28 = v8;
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = *(v1 + 72);
  v25 = *(v1 + 64);
  v26 = v9;
  v22 = v11;
  v23 = *(v1 + 80);
  v24 = v10;
  v34 = *(v1 + 88);
  v21 = *(v1 + 96);
  v20 = *(v1 + 104);
  v12 = *(v1 + 120);
  v18 = *(v1 + 112);
  v19 = v12;
  v17 = *(v1 + 128);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2FE2E38();
  sub_1D30E992C();
  LOBYTE(v32) = 0;
  v13 = v31;
  sub_1D30E970C();
  if (!v13)
  {
    v32 = v30;
    v33 = v29;
    v35 = 1;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749310, &unk_1D30EF350);
    sub_1D2FE2EF4(&qword_1EC749330, MEMORY[0x1E69E6160], MEMORY[0x1E69E7C70]);
    sub_1D30E974C();
    v31 = v14;
    LOBYTE(v32) = 2;
    sub_1D30E970C();
    LOBYTE(v32) = 3;
    sub_1D30E975C();
    LOBYTE(v32) = 4;
    sub_1D30E970C();
    v32 = v22;
    v33 = v23;
    v35 = 5;
    sub_1D30E974C();
    LOBYTE(v32) = 6;
    sub_1D30E971C();
    LOBYTE(v32) = 7;
    sub_1D30E973C();
    LOBYTE(v32) = 8;
    sub_1D30E971C();
    v32 = v18;
    v33 = v19;
    v35 = 9;
    sub_1D30E974C();
    v32 = v17;
    v35 = 10;
    type metadata accessor for ManifestDataSource(0);
    sub_1D2FE2F60(&qword_1EC749338, &protocol conformance descriptor for MBAManifestDataSource);
    sub_1D30E974C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D2FE2E38()
{
  result = qword_1EC749308;
  if (!qword_1EC749308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749308);
  }

  return result;
}

uint64_t sub_1D2FE2EF4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749310, &unk_1D30EF350);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D2FE2F60(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ManifestDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1D2FE2FD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1D2FE3020(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D2FE31E4()
{
  result = qword_1EC749340;
  if (!qword_1EC749340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749340);
  }

  return result;
}

unint64_t sub_1D2FE323C()
{
  result = qword_1EC749348;
  if (!qword_1EC749348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749348);
  }

  return result;
}

unint64_t sub_1D2FE3294()
{
  result = qword_1EC749350;
  if (!qword_1EC749350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749350);
  }

  return result;
}

uint64_t sub_1D2FE32E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7542746E65726170 && a2 == 0xEE004449656C646ELL || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000444965 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726F7453707061 && a2 == 0xEE0044496D657449 || (sub_1D30E97CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x70756F7247707061 && a2 == 0xEA00000000004449 || (sub_1D30E97CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44496D616574 && a2 == 0xE600000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D30EA7C0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7473655461746562 && a2 == 0xEE00657079547265 || (sub_1D30E97CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D30EA7E0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001D30EA800 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D30EA820 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1D30E97CC();

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

uint64_t type metadata accessor for HelperError(uint64_t a1)
{
  result = qword_1EE313E30;
  if (!qword_1EE313E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2FE3730(uint64_t a1)
{
  sub_1D30E8D9C();
  if (v1 <= 0x3F)
  {
    sub_1D2FE38C0();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Helper.Reply(319);
      if (v3 <= 0x3F)
      {
        sub_1D2FE38F0();
        if (v4 <= 0x3F)
        {
          sub_1D30E8F6C();
          if (v5 <= 0x3F)
          {
            sub_1D2FE3920(319);
            if (v6 <= 0x3F)
            {
              sub_1D2FE3A3C(319, &qword_1EE313040, sub_1D2FE3998);
              if (v7 <= 0x3F)
              {
                type metadata accessor for MIBetaTesterType(319);
                if (v8 <= 0x3F)
                {
                  sub_1D2FE3A3C(319, &qword_1EE3140A8, sub_1D2FE39EC);
                  if (v9 <= 0x3F)
                  {
                    sub_1D2FE3A3C(319, &qword_1EE313098, MEMORY[0x1E69E83A8]);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
}

uint64_t sub_1D2FE38C0()
{
  result = qword_1EE313080;
  if (!qword_1EE313080)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE313080);
  }

  return result;
}

uint64_t sub_1D2FE38F0()
{
  result = qword_1EE313088;
  if (!qword_1EE313088)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE313088);
  }

  return result;
}

void sub_1D2FE3920(uint64_t a1)
{
  if (!qword_1EE313070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749310, &unk_1D30EF350);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE313070);
    }
  }
}

unint64_t sub_1D2FE3998()
{
  result = qword_1EE313038;
  if (!qword_1EE313038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC749360, qword_1D30EF360);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EE313038);
  }

  return result;
}

void sub_1D2FE39EC()
{
  if (!qword_1EE3140A0)
  {
    v0 = sub_1D30E938C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE3140A0);
    }
  }
}

void sub_1D2FE3A3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D2FE3AD0()
{
  v1 = sub_1D30E8F6C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Helper.Reply(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D30E8D9C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HelperError(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D2FE4818(v0, v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v41 = *v14;
      v42 = v14[1];
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x100000000000002DLL, 0x80000001D30EAD20);
      MEMORY[0x1D38B2610](v41, v42);
      goto LABEL_37;
    case 2u:
      v32 = *v14;
      v33 = v14[1];
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x1000000000000031, 0x80000001D30EACA0);
      MEMORY[0x1D38B2610](v32, v33);

      v34 = "e with the ID “";
      v35 = 0x100000000000003DLL;
      goto LABEL_27;
    case 3u:
      v38 = *v14;
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x1000000000000038, 0x80000001D30EAC60);
      v65 = v38;
      v19 = sub_1D30E977C();
      goto LABEL_36;
    case 4u:
      sub_1D2FE48C4(v14, v7);
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1D30E948C();

      v59 = 0x1000000000000028;
      v60 = 0x80000001D30EAC30;
      v23 = Helper.Reply.description.getter();
      MEMORY[0x1D38B2610](v23);

      MEMORY[0x1D38B2610](782074082, 0xA400000000000000);
      v24 = v59;
      sub_1D2FE4928(v7);
      return v24;
    case 5u:
      (*(v9 + 32))(v11, v14, v8);
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1D30E948C();

      v59 = 0x100000000000001DLL;
      v60 = 0x80000001D30EAC10;
      goto LABEL_24;
    case 6u:
      v48 = *v14;
      v49 = v14[1];
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x1000000000000024, 0x80000001D30EAB40);
      MEMORY[0x1D38B2610](v48, v49);

      v34 = "th the bundle ID “";
      v35 = 0x100000000000001ELL;
LABEL_27:
      v37 = v34 | 0x8000000000000000;
      goto LABEL_38;
    case 7u:
      v39 = *v14;
      v40 = v14[1];
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1D30E948C();

      v59 = 0x1000000000000020;
      v60 = 0x80000001D30EAAE0;
      MEMORY[0x1D38B2610](v39, v40);
      goto LABEL_17;
    case 8u:
      v51 = *v14;
      v50 = v14[1];
      v53 = v14[2];
      v52 = v14[3];
      v55 = v14[4];
      v54 = v14[5];
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1D30E948C();

      v65 = 0x1000000000000020;
      v66 = 0x80000001D30EAAB0;
      v59 = v51;
      v60 = v50;
      v61 = v53;
      v62 = v52;
      v63 = v55;
      v64 = v54;
      v56 = AssetPackRecord.GlobalID.description.getter();
      v58 = v57;

      MEMORY[0x1D38B2610](v56, v58);

      MEMORY[0x1D38B2610](0x20736177209D80E2, 0xAE002E646E756F66);
      return v65;
    case 9u:
      v30 = *v14;
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x100000000000002ALL, 0x80000001D30EAA80);
      v65 = v30;
      v31 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v31);
LABEL_17:

      v35 = 0x20736177209D80E2;
      v37 = 0xAE002E646E756F66;
      goto LABEL_38;
    case 0xAu:
      (*(v2 + 32))(v4, v14, v1);
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x1000000000000024, 0x80000001D30EAA50);
      sub_1D30E955C();
      MEMORY[0x1D38B2610](0x20736177209D80E2, 0xAE002E646E756F66);
      v24 = v59;
      (*(v2 + 8))(v4, v1);
      return v24;
    case 0xBu:
      (*(v9 + 32))(v11, v14, v8);
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1D30E948C();

      v59 = 0x1000000000000011;
      v60 = 0x80000001D30EA860;
      sub_1D2FE487C(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v20 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v20);

      v16 = "” is unexpectedly relative.";
      goto LABEL_7;
    case 0xCu:
      v26 = v14[1];
      v25 = v14[2];
      if (v26)
      {
        v27 = *v14;
        v59 = 0;
        v60 = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0x1000000000000017, 0x80000001D30EA9E0);
        MEMORY[0x1D38B2610](v27, v26);

        v28 = "The actual team ID, “";
        v29 = 0x100000000000002ELL;
      }

      else
      {
        v59 = 0;
        v60 = 0xE000000000000000;
        sub_1D30E948C();
        v28 = " couldn’t be created at “";
        v29 = 0x1000000000000052;
      }

      MEMORY[0x1D38B2610](v29, v28 | 0x8000000000000000);
      v19 = v25;
      goto LABEL_36;
    case 0xDu:
      (*(v9 + 32))(v11, v14, v8);
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x100000000000002DLL, 0x80000001D30EA950);
LABEL_24:
      sub_1D2FE487C(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v46 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v46);

      v22 = 782074082;
      v44 = 0xA400000000000000;
      goto LABEL_25;
    case 0xEu:
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1D30E948C();

      v59 = 0x1000000000000024;
      v60 = 0x80000001D30EA920;
      v19 = sub_1D30E995C();
LABEL_36:
      MEMORY[0x1D38B2610](v19);
LABEL_37:

      v35 = 782074082;
      v37 = 0xA400000000000000;
      goto LABEL_38;
    case 0xFu:
      v36 = *v14;
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x1000000000000018, 0x80000001D30EA900);
      v65 = v36;
      type metadata accessor for MIBetaTesterType(0);
      sub_1D30E955C();
      goto LABEL_14;
    case 0x10u:
      v17 = v14[1];
      if (v17)
      {
        v18 = *v14;
        v59 = 0;
        v60 = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0x100000000000002FLL, 0x80000001D30EA8D0);
        MEMORY[0x1D38B2610](v18, v17);

LABEL_14:
        v35 = 0x75207369209D80E2;
        v37 = 0xAF2E6E776F6E6B6ELL;
LABEL_38:
        MEMORY[0x1D38B2610](v35, v37);
        result = v59;
      }

      else
      {
        result = 0xD000000000000018;
      }

      break;
    case 0x11u:
      (*(v9 + 32))(v11, v14, v8);
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x1000000000000011, 0x80000001D30EA860);
      sub_1D2FE487C(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v43 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v43);

      v21 = "The file path “";
      v22 = 0x1000000000000027;
      goto LABEL_20;
    case 0x12u:
      return 0x1000000000000053;
    case 0x13u:
      return 0xD000000000000017;
    case 0x14u:
      return 0x1000000000000028;
    default:
      (*(v9 + 32))(v11, v14, v8);
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1D30E948C();

      v59 = 0x1000000000000011;
      v60 = 0x80000001D30EA860;
      sub_1D2FE487C(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v15 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v15);

      v16 = "” is unexpectedly absolute.";
LABEL_7:
      v21 = v16 - 32;
      v22 = 0x100000000000001DLL;
LABEL_20:
      v44 = v21 | 0x8000000000000000;
LABEL_25:
      MEMORY[0x1D38B2610](v22, v44);
      v47 = v59;
      (*(v9 + 8))(v11, v8);
      result = v47;
      break;
  }

  return result;
}

uint64_t sub_1D2FE478C(uint64_t a1)
{
  sub_1D2FE487C(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);

  return sub_1D30E984C();
}

uint64_t sub_1D2FE4818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HelperError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2FE487C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D2FE48C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Helper.Reply(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2FE4928(uint64_t a1)
{
  v2 = type metadata accessor for Helper.Reply(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2FE49A0()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EC749380);
  __swift_project_value_buffer(v0, qword_1EC749380);
  return sub_1D30E8B2C();
}

uint64_t XPCPeerRequirementValidator.init(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D30E8C9C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1D2FE4A8C(uint64_t a1, char a2)
{
  v60 = *MEMORY[0x1E69E9840];
  *token.val = sub_1D30E8C7C();
  token.val[2] = v4;
  token.val[3] = v5;
  token.val[4] = v6;
  token.val[5] = v7;
  token.val[6] = v8;
  token.val[7] = v9;
  v10 = SecTaskCreateWithAuditToken(0, &token);
  if (!v10)
  {
    if (qword_1EC748FE0 != -1)
    {
      swift_once();
    }

    v19 = sub_1D30E8B3C();
    __swift_project_value_buffer(v19, qword_1EC749380);
    v20 = sub_1D30E92AC();
    v21 = sub_1D30E8B1C();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1D2FD9000, v21, v20, "A security task couldn’t be created.", v22, 2u);
      MEMORY[0x1D38B3760](v22, -1, -1);
    }

    return 0;
  }

  v11 = v10;
  error = 0;
  v12 = SecTaskCopySigningIdentifier(v10, &error);
  if (!v12)
  {
LABEL_34:
    v15 = 0;
    v14 = 0;
    if (!error)
    {
      goto LABEL_6;
    }

LABEL_35:

    v40 = error;
    if (qword_1EC748FE0 != -1)
    {
      swift_once();
    }

    v41 = sub_1D30E8B3C();
    __swift_project_value_buffer(v41, qword_1EC749380);
    v42 = sub_1D30E929C();
    v43 = v40;
    v44 = sub_1D30E8B1C();

    if (os_log_type_enabled(v44, v42))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138543362;
      type metadata accessor for CFError(0);
      sub_1D2FE58E8();
      swift_allocError();
      *v47 = v43;
      v48 = v43;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v49;
      *v46 = v49;
      _os_log_impl(&dword_1D2FD9000, v44, v42, "The signing ID couldn’t be copied: %{public}@", v45, 0xCu);
      sub_1D2FE5940(v46);
      MEMORY[0x1D38B3760](v46, -1, -1);
      MEMORY[0x1D38B3760](v45, -1, -1);
      v43 = v44;
      v44 = v11;
      v11 = v48;
    }

    goto LABEL_40;
  }

  v13 = v12;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_34;
  }

  *token.val = 0;
  *&token.val[2] = 0;
  sub_1D30E907C();

  v14 = *&token.val[2];
  if (!*&token.val[2])
  {
    goto LABEL_34;
  }

  v15 = *token.val;
  if (error)
  {
    goto LABEL_35;
  }

LABEL_6:
  if (v14)
  {
    v16 = 1;
    *token.val = 1;
    v17 = *(a1 + 16);
    if (v17)
    {
      v55 = v11;
      v18 = (a1 + 40);
      v56 = a2;
      do
      {
        v24 = *(v18 - 1);
        v23 = *v18;
        v25 = v15 == v24 && v14 == v23;
        if (v25 || (sub_1D30E97CC() & 1) != 0)
        {
          v54 = *token.val;

          sub_1D2FE59A8(v54);

          goto LABEL_48;
        }

        v26 = sub_1D2FE511C(&token, v15, v14, a2 & 1);
        if (v26)
        {
          v27 = v26;
          v28 = [v26 containingBundleRecord];
          if (v28 && (v29 = v28, v30 = [v28 bundleIdentifier], v29, v30))
          {
            v31 = sub_1D30E908C();
            v33 = v32;

            if (v31 == v24 && v33 == v23)
            {

LABEL_52:
              sub_1D2FE59A8(*token.val);
LABEL_48:

              return 1;
            }

            v34 = sub_1D30E97CC();

            a2 = v56;
            if (v34)
            {
              goto LABEL_52;
            }
          }

          else
          {

            if (qword_1EC748FE0 != -1)
            {
              swift_once();
            }

            v35 = sub_1D30E8B3C();
            __swift_project_value_buffer(v35, qword_1EC749380);
            v36 = sub_1D30E92AC();

            v37 = sub_1D30E8B1C();

            if (os_log_type_enabled(v37, v36))
            {
              v38 = swift_slowAlloc();
              v39 = swift_slowAlloc();
              v57 = v39;
              *v38 = 136446210;
              *(v38 + 4) = sub_1D2FFEA04(v15, v14, &v57);
              _os_log_impl(&dword_1D2FD9000, v37, v36, "The app extension with the bundle ID “%{public}s” lacks a containing bundle.", v38, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v39);
              MEMORY[0x1D38B3760](v39, -1, -1);
              MEMORY[0x1D38B3760](v38, -1, -1);
            }
          }
        }

        else
        {
        }

        v18 += 2;
        --v17;
      }

      while (v17);
      v16 = *token.val;
      v11 = v55;
    }

    sub_1D2FE59A8(v16);

    goto LABEL_41;
  }

  if (qword_1EC748FE0 != -1)
  {
    swift_once();
  }

  v51 = sub_1D30E8B3C();
  __swift_project_value_buffer(v51, qword_1EC749380);
  v52 = sub_1D30E92AC();
  v44 = sub_1D30E8B1C();
  if (os_log_type_enabled(v44, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_1D2FD9000, v44, v52, "The peer lacks a signing ID.", v53, 2u);
    MEMORY[0x1D38B3760](v53, -1, -1);
  }

LABEL_40:

LABEL_41:
  return 0;
}

id sub_1D2FE511C(void **a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *a1;
  v5 = *a1;
  if (*a1 == 1)
  {
    v5 = sub_1D2FE51A8(a2, a3);
    swift_beginAccess();
    v7 = *a1;
    *a1 = v5;
    v8 = v5;
    sub_1D2FE59A8(v7);
  }

  sub_1D2FE59B8(v4);
  return v5;
}

id sub_1D2FE51A8(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E69635D0]);

  return sub_1D2FE581C(a1, a2);
}

uint64_t sub_1D2FE53A0(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  *token.val = sub_1D30E8C7C();
  token.val[2] = v4;
  token.val[3] = v5;
  token.val[4] = v6;
  token.val[5] = v7;
  token.val[6] = v8;
  token.val[7] = v9;
  v10 = SecTaskCreateWithAuditToken(0, &token);
  if (v10)
  {
    v11 = v10;
    v12 = SecTaskCopyTeamIdentifier();
    if (v12)
    {
      v13 = v12;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        *token.val = 0;
        *&token.val[2] = 0;
        sub_1D30E907C();

        v12 = *&token.val[2];
        if (*&token.val[2])
        {
          v14 = *token.val;
          goto LABEL_11;
        }
      }

      else
      {
      }

      v14 = 0;
      v12 = 0;
    }

    else
    {
      v14 = 0;
    }

LABEL_11:
    if (v12)
    {
      if (v14 == a1 && v12 == a2)
      {
        v19 = 1;
      }

      else
      {
        v19 = sub_1D30E97CC();
      }
    }

    else
    {
      v19 = 0;
    }

    return v19 & 1;
  }

  if (qword_1EC748FE0 != -1)
  {
    swift_once();
  }

  v15 = sub_1D30E8B3C();
  __swift_project_value_buffer(v15, qword_1EC749380);
  v16 = sub_1D30E92AC();
  v17 = sub_1D30E8B1C();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1D2FD9000, v17, v16, "A security task couldn’t be created.", v18, 2u);
    MEMORY[0x1D38B3760](v18, -1, -1);
  }

  v19 = 0;
  return v19 & 1;
}

uint64_t type metadata accessor for XPCPeerRequirementValidator(uint64_t a1)
{
  result = qword_1EE313128;
  if (!qword_1EE313128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2FE57B0(uint64_t a1)
{
  result = sub_1D30E8C9C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1D2FE581C(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1D30E906C();

  v8[0] = 0;
  v4 = [v2 initWithBundleIdentifier:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1D30E87DC();

    swift_willThrow();
  }

  return v4;
}

unint64_t sub_1D2FE58E8()
{
  result = qword_1EC749398;
  if (!qword_1EC749398)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749398);
  }

  return result;
}

uint64_t sub_1D2FE5940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493A0, &qword_1D30EF480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D2FE59A8(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1D2FE59B8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1D2FE59C8()
{
  sub_1D30E8B8C();
  result = sub_1D30E8B4C();
  qword_1EC7493A8 = result;
  byte_1EC7493B0 = 0;
  return result;
}

uint64_t sub_1D2FE5A24()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EE3134F8);
  __swift_project_value_buffer(v0, qword_1EE3134F8);
  return sub_1D30E8B2C();
}

void *sub_1D2FE5AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v12 = sub_1D30E8B3C();
  __swift_project_value_buffer(v12, qword_1EE3134F8);
  v13 = sub_1D30E928C();

  v14 = sub_1D30E8B1C();

  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v15 = 136446722;
    type metadata accessor for ContainerManager();

    v16 = sub_1D30E909C();
    v30 = v13;
    v18 = sub_1D2FFEA04(v16, v17, &v32);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    sub_1D30E8EAC();

    v19 = sub_1D30E909C();
    v21 = sub_1D2FFEA04(v19, v20, &v32);

    *(v15 + 14) = v21;
    *(v15 + 22) = 2082;
    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    *(v22 + 24) = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749468, &qword_1D30EF5D8);
    v23 = sub_1D30E909C();
    v25 = sub_1D2FFEA04(v23, v24, &v32);

    *(v15 + 24) = v25;
    _os_log_impl(&dword_1D2FD9000, v14, v30, "Init container manager: %{public}s model container: %{public}s TestFlight manifest request: %{public}s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v31, -1, -1);
    v26 = v15;
    v6 = v5;
    MEMORY[0x1D38B3760](v26, -1, -1);
  }

  v7[2] = a1;
  v7[3] = a2;
  type metadata accessor for StorefrontMap(0);
  swift_allocObject();
  swift_retain_n();

  v27 = v6;
  v28 = sub_1D303DF3C(a1);

  if (v27)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v7[4] = v28;
    v7[5] = a3;
    v7[6] = a4;
  }

  return v7;
}

void *sub_1D2FE5E08()
{
  v1 = v0;
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE3134F8);
  v3 = sub_1D30E928C();
  v4 = sub_1D30E8B1C();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Deinit", v5, 2u);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  return v1;
}

uint64_t sub_1D2FE5F04()
{
  sub_1D2FE5E08();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1D2FE5F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 112) = a4;
  *(v6 + 120) = v5;
  *(v6 + 385) = a5;
  *(v6 + 96) = a2;
  *(v6 + 104) = a3;
  *(v6 + 88) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493B8, &qword_1D30EF4F8);
  *(v6 + 128) = swift_task_alloc();
  v7 = sub_1D30E866C();
  *(v6 + 136) = v7;
  *(v6 + 144) = *(v7 - 8);
  *(v6 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();
  v8 = sub_1D30E88CC();
  *(v6 + 192) = v8;
  *(v6 + 200) = *(v8 - 8);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2FE6130, 0, 0);
}

uint64_t sub_1D2FE6130()
{
  v152 = v0;
  v1 = *(v0 + 112);
  v2 = &qword_1EE313000;
  if (v1)
  {
    if (qword_1EE3134F0 != -1)
    {
      swift_once();
    }

    v3 = sub_1D30E8B3C();
    __swift_project_value_buffer(v3, qword_1EE3134F8);
    v4 = sub_1D30E928C();

    v5 = sub_1D30E8B1C();

    if (!os_log_type_enabled(v5, v4))
    {
      goto LABEL_11;
    }

    v6 = *(v0 + 385);
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v9 = *(v0 + 88);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v151[0] = v11;
    *v10 = 136446722;
    *(v10 + 4) = sub_1D2FFEA04(v9, v8, v151);
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_1D2FFEA04(v7, v1, v151);
    *(v10 + 22) = 1024;
    *(v10 + 24) = v6;
    v2 = &qword_1EE313000;
    _os_log_impl(&dword_1D2FD9000, v5, v4, "Manifest data for app with bundle ID: %{public}s team ID: %{public}s bypass local cache: %{BOOL}d", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v11, -1, -1);
    v12 = v10;
  }

  else
  {
    if (qword_1EE3134F0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D30E8B3C();
    __swift_project_value_buffer(v13, qword_1EE3134F8);
    v14 = sub_1D30E928C();

    v5 = sub_1D30E8B1C();

    if (!os_log_type_enabled(v5, v14))
    {
      goto LABEL_11;
    }

    v15 = *(v0 + 385);
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v151[0] = v19;
    *v18 = 136446466;
    *(v18 + 4) = sub_1D2FFEA04(v17, v16, v151);
    *(v18 + 12) = 1024;
    *(v18 + 14) = v15;
    _os_log_impl(&dword_1D2FD9000, v5, v14, "Manifest data for app with bundle ID: %{public}s bypass local cache: %{BOOL}d", v18, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1D38B3760](v19, -1, -1);
    v12 = v18;
  }

  MEMORY[0x1D38B3760](v12, -1, -1);
LABEL_11:

  v20 = *(v0 + 88);
  v21 = *(v0 + 96);
  objc_allocWithZone(MEMORY[0x1E69635F8]);

  v22 = sub_1D3028864(v20, v21, 1);
  *(v0 + 232) = v22;
  *(v0 + 240) = 0;
  v23 = v22;
  v24 = [v23 bundleIdentifier];
  if (!v24)
  {
    goto LABEL_21;
  }

  v26 = *(v0 + 88);
  v25 = *(v0 + 96);
  v27 = v24;
  v28 = sub_1D30E908C();
  v30 = v29;

  if (v28 == v26 && v30 == v25)
  {

    goto LABEL_16;
  }

  v31 = sub_1D30E97CC();

  if ((v31 & 1) == 0)
  {
LABEL_21:
    type metadata accessor for ManifestManagerError(0);
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError, &unk_1D30EF648);
    swift_allocError();
    v41 = v40;
    v42 = [v23 bundleIdentifier];

    if (v42)
    {
      v43 = sub_1D30E908C();
      v45 = v44;
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    v46 = *(v0 + 88);
    v47 = *(v0 + 96);
    *v41 = v43;
    v41[1] = v45;
    v41[2] = v46;
    v41[3] = v47;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_25;
  }

LABEL_16:

  if (v1)
  {
    v32 = *(v0 + 112);

    v33 = [v23 teamIdentifier];
    if (v33)
    {
      v35 = *(v0 + 104);
      v34 = *(v0 + 112);
      v36 = v33;
      v37 = sub_1D30E908C();
      v39 = v38;

      if (v37 == v35 && v34 == v39)
      {

LABEL_34:

        goto LABEL_35;
      }

      v53 = sub_1D30E97CC();

      if (v53)
      {
        goto LABEL_34;
      }
    }

    if ((sub_1D30D94B0() & 1) == 0)
    {
      type metadata accessor for HelperError(0);
      sub_1D2FF1A68(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
      swift_allocError();
      v75 = v74;
      v76 = [v23 teamIdentifier];
      if (v76)
      {
        v77 = v76;
        v78 = sub_1D30E908C();
        v80 = v79;
      }

      else
      {
        v78 = 0;
        v80 = 0;
      }

      v104 = *(v0 + 104);
      *v75 = v78;
      v75[1] = v80;
      v75[2] = v104;
      v75[3] = v32;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if ((os_variant_allows_internal_security_policies() & 1) == 0)
  {
    v51 = *(v0 + 88);
    v50 = *(v0 + 96);
    type metadata accessor for ManifestManagerError(0);
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError, &unk_1D30EF648);
    swift_allocError();
    *v52 = v51;
    v52[1] = v50;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_25:

LABEL_26:

LABEL_27:

    v48 = *(v0 + 8);

    return v48();
  }

LABEL_35:
  if (os_variant_has_internal_content() & 1) == 0 && (![v23 isProfileValidated] || (objc_msgSend(v23, sel_isBeta)))
  {
LABEL_59:
    sub_1D30E91FC();
    *(v0 + 288) = sub_1D30E91EC();
    v87 = sub_1D30E91AC();

    return MEMORY[0x1EEE6DFA0](sub_1D2FE7904, v87, v86);
  }

  has_internal_content = os_variant_has_internal_content();
  v55 = v2[158];
  if (has_internal_content)
  {
    if (v55 != -1)
    {
      swift_once();
    }

    v56 = sub_1D30E8B3C();
    __swift_project_value_buffer(v56, qword_1EE3134F8);
    v57 = sub_1D30E927C();
    v58 = sub_1D30E8B1C();
    if (os_log_type_enabled(v58, v57))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1D2FD9000, v58, v57, "The system has internal content; checking for a URL override…", v59, 2u);
      v60 = v59;
LABEL_48:
      MEMORY[0x1D38B3760](v60, -1, -1);
    }
  }

  else
  {
    if (v55 != -1)
    {
      swift_once();
    }

    v61 = sub_1D30E8B3C();
    __swift_project_value_buffer(v61, qword_1EE3134F8);
    v62 = sub_1D30E927C();

    v58 = sub_1D30E8B1C();

    if (os_log_type_enabled(v58, v62))
    {
      v64 = *(v0 + 88);
      v63 = *(v0 + 96);
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v151[0] = v66;
      *v65 = 136446210;
      *(v65 + 4) = sub_1D2FFEA04(v64, v63, v151);
      _os_log_impl(&dword_1D2FD9000, v58, v62, "The app with the bundle ID “%{public}s” was installed for development; checking for a URL override…", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x1D38B3760](v66, -1, -1);
      v60 = v65;
      goto LABEL_48;
    }
  }

  v67 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v68 = sub_1D30E906C();
  v69 = [v67 initWithSuiteName_];
  *(v0 + 248) = v69;

  if (!v69)
  {
    (*(*(v0 + 200) + 56))(*(v0 + 184), 1, 1, *(v0 + 192));
LABEL_58:
    sub_1D2FF14DC(*(v0 + 184), &qword_1EC7493C0, &qword_1D30EF500);
    goto LABEL_59;
  }

  v70 = v69;
  v71 = sub_1D30E906C();
  v72 = [v70 URLForKey_];

  if (v72)
  {
    sub_1D30E886C();

    v73 = 0;
  }

  else
  {
    v73 = 1;
  }

  v81 = *(v0 + 192);
  v82 = *(v0 + 200);
  v84 = *(v0 + 176);
  v83 = *(v0 + 184);
  (*(v82 + 56))(v84, v73, 1, v81);
  sub_1D2FF03B4(v84, v83);
  v85 = *(v82 + 48);
  if (v85(v83, 1, v81) == 1)
  {

    goto LABEL_58;
  }

  v147 = (*(v0 + 200) + 32);
  v148 = v85;
  v146 = *v147;
  (*v147)(*(v0 + 224), *(v0 + 184), *(v0 + 192));
  if (v2[158] != -1)
  {
    swift_once();
  }

  v88 = sub_1D30E8B3C();
  __swift_project_value_buffer(v88, qword_1EE3134F8);
  v89 = sub_1D30E8B1C();
  v90 = sub_1D30E92BC();
  v150 = v70;
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v151[0] = v92;
    *v91 = 136446210;
    swift_beginAccess();
    sub_1D2FF1A68(&qword_1EC7493D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v93 = sub_1D30E977C();
    v95 = sub_1D2FFEA04(v93, v94, v151);

    *(v91 + 4) = v95;
    _os_log_impl(&dword_1D2FD9000, v89, v90, "A URL override with the value “%{public}s” is set.", v91, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v92);
    MEMORY[0x1D38B3760](v92, -1, -1);
    MEMORY[0x1D38B3760](v91, -1, -1);
  }

  swift_beginAccess();
  sub_1D30E887C();
  if (v96)
  {
  }

  else
  {
    v105 = sub_1D30E8B1C();
    v106 = sub_1D30E92BC();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v151[0] = v108;
      *v107 = 136446210;
      sub_1D2FF1A68(&qword_1EC7493D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v109 = sub_1D30E977C();
      v111 = sub_1D2FFEA04(v109, v110, v151);

      *(v107 + 4) = v111;
      _os_log_impl(&dword_1D2FD9000, v105, v106, "The development-override URL “%{public}s” lacks a host component; reinterpreting it as a string and constructing a URL explicitly…", v107, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v108);
      MEMORY[0x1D38B3760](v108, -1, -1);
      MEMORY[0x1D38B3760](v107, -1, -1);
    }

    v112 = v150;
    v113 = sub_1D30E906C();
    v114 = [v112 stringForKey_];

    if (!v114)
    {
      v126 = *(v0 + 224);
      v127 = *(v0 + 192);
      v128 = *(v0 + 200);
      type metadata accessor for ManifestManagerError(0);
      sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError, &unk_1D30EF648);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v128 + 8))(v126, v127);

      goto LABEL_26;
    }

    v115 = *(v0 + 192);
    v116 = *(v0 + 168);
    v117 = sub_1D30E908C();
    v119 = v118;

    sub_1D30E88AC();
    v120 = v148(v116, 1, v115);
    v121 = *(v0 + 224);
    if (v120 == 1)
    {
      v122 = *(v0 + 192);
      v123 = *(v0 + 200);
      sub_1D2FF14DC(*(v0 + 168), &qword_1EC7493C0, &qword_1D30EF500);
      type metadata accessor for ManifestManagerError(0);
      sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError, &unk_1D30EF648);
      swift_allocError();
      *v124 = v117;
      v124[1] = v119;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v123 + 8))(v121, v122);

      goto LABEL_26;
    }

    v129 = *(v0 + 216);
    v130 = *(v0 + 192);
    v131 = *(v0 + 200);
    v132 = *(v0 + 168);

    v146(v129, v132, v130);
    swift_beginAccess();
    (*(v131 + 40))(v121, v129, v130);
  }

  v97 = *(v0 + 136);
  v98 = *(v0 + 144);
  v99 = *(v0 + 128);
  sub_1D30E860C();
  if ((*(v98 + 48))(v99, 1, v97) == 1)
  {
    v100 = *(v0 + 224);
    v102 = *(v0 + 192);
    v101 = *(v0 + 200);
    sub_1D2FF14DC(*(v0 + 128), &qword_1EC7493B8, &qword_1D30EF4F8);
    type metadata accessor for ManifestManagerError(0);
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError, &unk_1D30EF648);
    swift_allocError();
    (*(v101 + 16))(v103, v100, v102);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v101 + 8))(v100, v102);

    goto LABEL_26;
  }

  (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 128), *(v0 + 136));
  MEMORY[0x1D38B1B60](0x736566696E616D2FLL, 0xE900000000000074);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493D0, &qword_1D30EF518);
  sub_1D30E85AC();
  *(swift_allocObject() + 16) = xmmword_1D30EE930;
  v125 = v23;
  sub_1D300AC00(v125);
  v133 = *(v0 + 192);
  v134 = *(v0 + 160);
  sub_1D30E859C();

  sub_1D30E85EC();
  sub_1D30E861C();
  v135 = v148(v134, 1, v133);
  v136 = *(v0 + 192);
  if (v135 == 1)
  {
    v149 = *(v0 + 224);
    v137 = *(v0 + 200);
    v138 = *(v0 + 144);
    v139 = *(v0 + 152);
    v140 = *(v0 + 136);
    sub_1D2FF14DC(*(v0 + 160), &qword_1EC7493C0, &qword_1D30EF500);
    type metadata accessor for ManifestManagerError(0);
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError, &unk_1D30EF648);
    swift_allocError();
    (*(v138 + 16))(v141, v139, v140);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v138 + 8))(v139, v140);
    (*(v137 + 8))(v149, v136);
    goto LABEL_27;
  }

  v146(*(v0 + 208), *(v0 + 160), *(v0 + 192));
  v142 = swift_task_alloc();
  *(v0 + 256) = v142;
  *v142 = v0;
  v142[1] = sub_1D2FE7544;
  v143 = *(v0 + 208);
  v144 = *(v0 + 88);
  v145 = *(v0 + 96);

  return sub_1D2FF0B48(v143, v144, v145);
}

uint64_t sub_1D2FE7544(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 264) = v2;

  if (v2)
  {
    v7 = sub_1D2FE77C8;
  }

  else
  {
    *(v6 + 272) = a2;
    *(v6 + 280) = a1;
    v7 = sub_1D2FE7678;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D2FE7678()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 136);

  v9 = *(v4 + 8);
  v9(v3, v5);
  (*(v7 + 8))(v6, v8);
  v9(v1, v5);
  v10 = *(v0 + 272);
  v13 = *(v0 + 280);

  v11 = *(v0 + 8);

  return v11(v13, v10, 5);
}

uint64_t sub_1D2FE77C8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 136);

  v9 = *(v4 + 8);
  v9(v3, v5);
  (*(v7 + 8))(v6, v8);
  v9(v1, v5);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D2FE7904()
{
  v1 = *(v0 + 240);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);

  sub_1D2FE81A8(v3, v2, (v0 + 384));
  *(v0 + 296) = v1;
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2FE7AA8, 0, 0);
  }

  else if (*(v0 + 385) != 1 || (*(v0 + 384) & 1) != 0)
  {
    v6 = swift_task_alloc();
    *(v0 + 344) = v6;
    *v6 = v0;
    v6[1] = sub_1D2FE7DB8;
    v7 = *(v0 + 232);

    return sub_1D2FE9884(v7);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 304) = v4;
    *v4 = v0;
    v4[1] = sub_1D2FE7B88;
    v5 = *(v0 + 232);

    return sub_1D2FE88A8(v5);
  }
}

uint64_t sub_1D2FE7AA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2FE7B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 312) = v3;

  if (v3)
  {
    v9 = sub_1D2FE7FE8;
  }

  else
  {
    v8[40] = a3;
    v8[41] = a2;
    v8[42] = a1;
    v9 = sub_1D2FE7CC4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D2FE7CC4()
{
  v4 = *(v0 + 328);
  v5 = *(v0 + 336);
  v1 = *(v0 + 320);

  v2 = *(v0 + 8);

  return v2(v5, v4, v1);
}

uint64_t sub_1D2FE7DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 352) = v3;

  if (v3)
  {
    v9 = sub_1D2FE80C8;
  }

  else
  {
    v8[45] = a3;
    v8[46] = a2;
    v8[47] = a1;
    v9 = sub_1D2FE7EF4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D2FE7EF4()
{
  v4 = *(v0 + 368);
  v5 = *(v0 + 376);
  v1 = *(v0 + 360);

  v2 = *(v0 + 8);

  return v2(v5, v4, v1);
}

uint64_t sub_1D2FE7FE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2FE80C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2FE81A8@<X0>(BOOL *a1@<X1>, BOOL *a2@<X2>, BOOL *a3@<X8>)
{
  v19 = a2;
  v17 = a3;
  v18 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749430, &unk_1D30FD0E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749438, &unk_1D30EF580);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_1D30E8E7C();
  MEMORY[0x1EEE9AC00](v10);
  v11 = v19;
  *(&v17 - 2) = v18;
  *(&v17 - 1) = v11;
  v21 = type metadata accessor for AppReviewRecord(0);
  sub_1D30E8ACC();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749440, &unk_1D30FD0F0);
  (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  sub_1D2FF1A68(&qword_1EE313708, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  sub_1D30E8EBC();
  v13 = v20;
  v14 = sub_1D30E8E1C();
  (*(v7 + 8))(v9, v6);
  if (v13)
  {
  }

  else
  {

    if (v14 >> 62)
    {
      v16 = sub_1D30E958C();
    }

    else
    {
      v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *v17 = v16 != 0;
  }

  return result;
}

uint64_t sub_1D2FE84D4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v22 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749448, &unk_1D30EF590);
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749450, &unk_1D30FD100);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749458, &qword_1D30EF5A0);
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v19 - v12;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D2FF1768(&qword_1EE313FD8, &qword_1EC749450, &unk_1D30FD100, MEMORY[0x1E6968DA8]);
  sub_1D30E87BC();
  swift_getKeyPath();
  sub_1D30E876C();

  (*(v8 + 8))(v10, v7);
  v25 = v19;
  v26 = v20;
  sub_1D30E87AC();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749460, &qword_1D30EF5D0);
  v15 = v22;
  v22[3] = v14;
  v15[4] = sub_1D2FF15A8();
  __swift_allocate_boxed_opaque_existential_0Tm(v15);
  sub_1D2FF1768(&qword_1EE313FF0, &qword_1EC749458, &qword_1D30EF5A0, MEMORY[0x1E6968D58]);
  sub_1D2FF1768(&qword_1EE314000, &qword_1EC749448, &unk_1D30EF590, MEMORY[0x1E6968D20]);
  v16 = v21;
  v17 = v24;
  sub_1D30E875C();
  (*(v23 + 8))(v6, v17);
  (*(v11 + 8))(v13, v16);
}

uint64_t sub_1D2FE88A8(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1D30E88CC();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2FE89AC, 0, 0);
}

uint64_t sub_1D2FE89AC()
{
  v52 = v0;
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE3134F8);
  v3 = sub_1D30E928C();
  v4 = v1;
  v5 = sub_1D30E8B1C();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1D2FD9000, v5, v3, "Manifest data from server for: %{public}@", v7, 0xCu);
    sub_1D2FF14DC(v8, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v10 = *(v0 + 48);

  v11 = [v10 bundleIdentifier];
  if (!v11)
  {
    type metadata accessor for ManifestManagerError(0);
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError, &unk_1D30EF648);
    swift_allocError();
LABEL_8:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_9:

    v17 = *(v0 + 8);

    return v17();
  }

  v12 = v11;
  v13 = sub_1D30E908C();
  v15 = v14;

  *(v0 + 104) = v15;
  v16 = sub_1D303B8B4();
  if (v16)
  {

    v19 = sub_1D30E8B1C();
    v20 = sub_1D30E92BC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v51[0] = v22;
      *v21 = 136446210;
      v23 = sub_1D2FFEA04(v13, v15, v51);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_1D2FD9000, v19, v20, "The app with the bundle ID “%{public}s” is configured to use Apple hosting.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1D38B3760](v22, -1, -1);
      MEMORY[0x1D38B3760](v21, -1, -1);
    }

    else
    {
    }

    v31 = [*(v0 + 48) iTunesMetadata];
    v32 = [v31 distributorInfo];

    v33 = [v32 betaTesterType];
    if ((v33 - 1) < 2)
    {
      v34 = swift_task_alloc();
      *(v0 + 120) = v34;
      *v34 = v0;
      v34[1] = sub_1D2FE945C;
      v35 = *(v0 + 48);

      return sub_1D2FEB804(v35);
    }

    if (!v33)
    {
      v41 = swift_task_alloc();
      *(v0 + 112) = v41;
      *v41 = v0;
      v41[1] = sub_1D2FE92E4;
      v42 = *(v0 + 48);

      return sub_1D2FEAF4C(v42);
    }

    v43 = *(v0 + 48);
    type metadata accessor for ManifestManagerError(0);
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError, &unk_1D30EF648);
    swift_allocError();
    v45 = v44;
    v46 = [v43 iTunesMetadata];
    v47 = [v46 distributorInfo];

    v48 = [v47 betaTesterType];
    *v45 = v48;
    goto LABEL_8;
  }

  v25 = *(v0 + 88);
  v24 = *(v0 + 96);
  v26 = *(v0 + 64);
  v27 = *(v0 + 72);
  v28 = [*(v0 + 48) infoDictionary];
  sub_1D2FEC2A4(0x6566696E614D4142, 0xED00004C52557473, v24);

  sub_1D2FF13B0(v24, v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    v29 = *(v0 + 96);
    sub_1D2FF14DC(*(v0 + 88), &qword_1EC7493C0, &qword_1D30EF500);
    type metadata accessor for ManifestManagerError(0);
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError, &unk_1D30EF648);
    swift_allocError();
    *v30 = v13;
    v30[1] = v15;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D2FF14DC(v29, &qword_1EC7493C0, &qword_1D30EF500);
    goto LABEL_9;
  }

  (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 88), *(v0 + 64));

  v36 = sub_1D30E8B1C();
  v37 = sub_1D30E92BC();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v51[0] = v39;
    *v38 = 136446210;
    *(v38 + 4) = sub_1D2FFEA04(v13, v15, v51);
    _os_log_impl(&dword_1D2FD9000, v36, v37, "The app with the bundle ID “%{public}s” is configured to use third-party hosting.", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1D38B3760](v39, -1, -1);
    MEMORY[0x1D38B3760](v38, -1, -1);
  }

  v40 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493D0, &qword_1D30EF518);
  sub_1D30E85AC();
  *(swift_allocObject() + 16) = xmmword_1D30EE930;
  sub_1D300AC00(v40);
  sub_1D30E859C();

  sub_1D30E889C();

  v49 = swift_task_alloc();
  *(v0 + 128) = v49;
  *v49 = v0;
  v49[1] = sub_1D2FE95D4;
  v50 = *(v0 + 80);

  return sub_1D2FF0B48(v50, v13, v15);
}

uint64_t sub_1D2FE92E4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  v10 = *(v6 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
    v9 = 0;
  }

  return v10(v7, v8, v9);
}

uint64_t sub_1D2FE945C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  v10 = *(v6 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
    v9 = 1;
  }

  return v10(v7, v8, v9);
}

uint64_t sub_1D2FE95D4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v4[17] = v2;

  if (v2)
  {
    v5 = sub_1D2FE97D0;
  }

  else
  {
    v5 = sub_1D2FE970C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D2FE970C()
{
  v1 = v0[12];
  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_1D2FF14DC(v1, &qword_1EC7493C0, &qword_1D30EF500);
  v3 = v0[3];
  v2 = v0[4];

  v4 = v0[1];

  return v4(v3, v2, 4);
}

uint64_t sub_1D2FE97D0()
{
  v1 = v0[12];
  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_1D2FF14DC(v1, &qword_1EC7493C0, &qword_1D30EF500);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D2FE9884(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D30E881C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  v2[7] = swift_task_alloc();
  v4 = sub_1D30E88CC();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_1D30E8D9C();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2FE9A84, 0, 0);
}

uint64_t sub_1D2FE9A84()
{
  v78 = v0;
  v77[1] = *MEMORY[0x1E69E9840];
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE3134F8);
  v3 = sub_1D30E928C();
  v4 = v1;
  v5 = sub_1D30E8B1C();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1D2FD9000, v5, v3, "Manifest data for: %{public}@", v7, 0xCu);
    sub_1D2FF14DC(v8, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v10 = *(v0 + 16);

  v11 = [v10 bundleIdentifier];
  if (!v11)
  {
    type metadata accessor for ManifestManagerError(0);
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError, &unk_1D30EF648);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_8:

    v17 = *(v0 + 8);

    return v17();
  }

  v12 = *(v0 + 128);
  v13 = v11;
  v14 = sub_1D30E908C();
  v16 = v15;

  sub_1D2FEABF8(v14, v16, v12);
  *(v0 + 232) = 1;
  v19 = [objc_opt_self() defaultManager];
  sub_1D30E8D3C();
  v20 = sub_1D30E906C();

  v21 = [v19 fileExistsAtPath:v20 isDirectory:v0 + 232];

  if ((v21 & 1) == 0)
  {
    (*(*(v0 + 96) + 16))(*(v0 + 120), *(v0 + 128), *(v0 + 88));

    v39 = sub_1D30E8B1C();
    v40 = sub_1D30E92BC();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 120);
    v43 = *(v0 + 88);
    v44 = *(v0 + 96);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v77[0] = v74;
      *v45 = 136446466;
      v46 = sub_1D2FFEA04(v14, v16, v77);

      *(v45 + 4) = v46;
      *(v45 + 12) = 2082;
      sub_1D2FF1A68(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v47 = sub_1D30E977C();
      v49 = v48;
      v50 = *(v44 + 8);
      v50(v42, v43);
      v51 = sub_1D2FFEA04(v47, v49, v77);

      *(v45 + 14) = v51;
      _os_log_impl(&dword_1D2FD9000, v39, v40, "The manifest for the app with the bundle ID “%{public}s” doesn’t exist locally at “%{public}s”; downloading it from the appropriate server…", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v74, -1, -1);
      MEMORY[0x1D38B3760](v45, -1, -1);
    }

    else
    {

      v50 = *(v44 + 8);
      v50(v42, v43);
    }

    *(v0 + 136) = v50;
    v62 = swift_task_alloc();
    *(v0 + 144) = v62;
    *v62 = v0;
    v63 = sub_1D2FEA4F0;
    goto LABEL_23;
  }

  v22 = *(v0 + 88);
  v23 = (*(v0 + 96) + 16);
  v24 = *(v0 + 128);
  if (*(v0 + 232) == 1)
  {
    v25 = *(v0 + 112);
    v26 = sub_1D30E92AC();
    (*v23)(v25, v24, v22);

    v27 = sub_1D30E8B1C();

    v28 = os_log_type_enabled(v27, v26);
    v29 = *(v0 + 112);
    v31 = *(v0 + 88);
    v30 = *(v0 + 96);
    if (v28)
    {
      log = v27;
      v32 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v77[0] = v73;
      *v32 = 136446466;
      sub_1D2FF1A68(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v33 = sub_1D30E977C();
      v70 = v26;
      v35 = v34;
      v36 = *(v30 + 8);
      v36(v29, v31);
      v37 = sub_1D2FFEA04(v33, v35, v77);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2082;
      v38 = sub_1D2FFEA04(v14, v16, v77);

      *(v32 + 14) = v38;
      _os_log_impl(&dword_1D2FD9000, log, v70, "The item at “%{public}s” is unexpectedly a directory; removing it and redownloading the manifest for the app with the bundle ID “%{public}s” from the appropriate server…", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v73, -1, -1);
      MEMORY[0x1D38B3760](v32, -1, -1);
    }

    else
    {

      v36 = *(v30 + 8);
      v36(v29, v31);
    }

    *(v0 + 184) = v36;
    v62 = swift_task_alloc();
    *(v0 + 192) = v62;
    *v62 = v0;
    v63 = sub_1D2FEA774;
LABEL_23:
    v62[1] = v63;
    v64 = *(v0 + 16);

    return sub_1D2FE88A8(v64);
  }

  v52 = *(v0 + 104);
  v53 = *(v0 + 72);
  v55 = *(v0 + 48);
  v54 = *(v0 + 56);
  v56 = *(v0 + 40);
  loga = *(v0 + 32);
  v75 = *(v0 + 64);

  v57 = *v23;
  (*v23)(v52, v24, v22);
  (*(v56 + 104))(v55, *MEMORY[0x1E6968F68], loga);
  sub_1D3040AB4(v52, v55, v54);
  if ((*(v53 + 48))(v54, 1, v75) == 1)
  {
    v58 = *(v0 + 128);
    v59 = *(v0 + 88);
    v60 = *(v0 + 96);
    sub_1D2FF14DC(*(v0 + 56), &qword_1EC7493C0, &qword_1D30EF500);
    type metadata accessor for HelperError(0);
    sub_1D2FF1A68(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    v57(v61, v58, v59);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v60 + 8))(v58, v59);
    goto LABEL_8;
  }

  (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
  v65 = sub_1D30E88DC();
  v76 = v66;
  v67 = v65;
  v68 = *(v0 + 96);
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  (*(v68 + 8))(*(v0 + 128), *(v0 + 88));

  v69 = *(v0 + 8);

  return v69(v67, v76, 2);
}

uint64_t sub_1D2FEA4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 152) = v3;

  if (v3)
  {
    v9 = sub_1D2FEA9FC;
  }

  else
  {
    v8[20] = a3;
    v8[21] = a2;
    v8[22] = a1;
    v9 = sub_1D2FEA654;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D2FEA654()
{
  v1 = *(v0 + 168);
  v5 = *(v0 + 176);
  v2 = *(v0 + 160);
  (*(v0 + 136))(*(v0 + 128), *(v0 + 88));

  v3 = *(v0 + 8);

  return v3(v5, v1, v2);
}

uint64_t sub_1D2FEA774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 200) = v3;

  if (v3)
  {
    v9 = sub_1D2FEAAF8;
  }

  else
  {
    v8[26] = a3;
    v8[27] = a2;
    v8[28] = a1;
    v9 = sub_1D2FEA8D8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D2FEA8D8()
{
  v1 = *(v0 + 216);
  v5 = *(v0 + 224);
  v2 = *(v0 + 208);
  (*(v0 + 184))(*(v0 + 128), *(v0 + 88));

  v3 = *(v0 + 8);

  return v3(v5, v1, v2);
}

uint64_t sub_1D2FEA9FC()
{
  (*(v0 + 136))(*(v0 + 128), *(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2FEAAF8()
{
  (*(v0 + 184))(*(v0 + 128), *(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2FEABF8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v32 = a1;
  v31 = a3;
  v4 = type metadata accessor for FilePath.ResolutionError(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1D30E8D9C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v27 - v12;
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v13 = sub_1D30E8B3C();
  __swift_project_value_buffer(v13, qword_1EE3134F8);
  v14 = sub_1D30E928C();

  v15 = sub_1D30E8B1C();

  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v29 = v4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v28 = v6;
    v19 = v8;
    v20 = v18;
    v34 = v18;
    *v17 = 136446210;
    v21 = v32;
    *(v17 + 4) = sub_1D2FFEA04(v32, a2, &v34);
    _os_log_impl(&dword_1D2FD9000, v15, v14, "Path to manifest for app with bundle ID: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v22 = v20;
    v8 = v19;
    v6 = v28;
    MEMORY[0x1D38B3760](v22, -1, -1);
    MEMORY[0x1D38B3760](v17, -1, -1);
  }

  else
  {

    v21 = v32;
  }

  v23 = v33;
  sub_1D302D670(v21, a2, v6, v11);
  if (v23)
  {
    sub_1D2FF1A68(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
    swift_allocError();
    return sub_1D2FF153C(v6, v24);
  }

  else
  {
    v26 = v30;
    sub_1D30E8D8C();
    sub_1D3003CF4(v26, 2, v31);
    return (*(v8 + 8))(v26, v7);
  }
}

uint64_t sub_1D2FEAF4C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D30E852C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2FEB00C, 0, 0);
}

uint64_t sub_1D2FEB00C()
{
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1D30E8B3C();
  v0[7] = __swift_project_value_buffer(v2, qword_1EE3134F8);
  v3 = sub_1D30E928C();
  v4 = v1;
  v5 = sub_1D30E8B1C();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1D2FD9000, v5, v3, "App Store manifest data for: %{public}@", v7, 0xCu);
    sub_1D2FF14DC(v8, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v10 = v0[2];

  v11 = [v10 bundleIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D30E908C();
    v15 = v14;

    v0[8] = v13;
    v0[9] = v15;
    v16 = swift_task_alloc();
    v0[10] = v16;
    *v16 = v0;
    v16[1] = sub_1D2FEB2B4;
    v17 = v0[6];
    v18 = v0[2];

    return sub_1D2FEC92C(v17, v18);
  }

  else
  {
    type metadata accessor for ManifestManagerError(0);
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError, &unk_1D30EF648);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1D2FEB2B4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {

    v2 = sub_1D2FEB7A0;
  }

  else
  {
    v2 = sub_1D2FEB3D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D2FEB3D0()
{
  v13 = v0;

  v1 = sub_1D30E8B1C();
  v2 = sub_1D30E92BC();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[9];
  if (v3)
  {
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = sub_1D2FFEA04(v5, v4, &v12);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_1D2FD9000, v1, v2, "Fetching the download manifest for the app with the bundle ID “%{public}s” from the App Store…", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D38B3760](v7, -1, -1);
    MEMORY[0x1D38B3760](v6, -1, -1);
  }

  else
  {
  }

  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_1D2FEB56C;
  v10 = v0[6];

  return sub_1D2FF0424(v10);
}

uint64_t sub_1D2FEB56C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v7 = sub_1D2FEB724;
  }

  else
  {
    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v7 = sub_1D2FEB6A0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D2FEB6A0()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v3 = v0[14];
  v2 = v0[15];

  return v1(v2, v3);
}

uint64_t sub_1D2FEB724()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D2FEB7A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2FEB804(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D30E852C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2FEB8C4, 0, 0);
}

uint64_t sub_1D2FEB8C4()
{
  v31 = v0;
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE3134F8);
  v3 = sub_1D30E928C();
  v4 = v1;
  v5 = sub_1D30E8B1C();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1D2FD9000, v5, v3, "TestFlight manifest data for: %{public}@", v7, 0xCu);
    sub_1D2FF14DC(v8, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v10 = v0[2];

  v11 = [v10 bundleIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D30E908C();
    v15 = v14;

    v16 = sub_1D30E8B1C();
    v17 = sub_1D30E92BC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30[0] = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1D2FFEA04(v13, v15, v30);
      _os_log_impl(&dword_1D2FD9000, v16, v17, "Asking the TestFlight extension via the App Store Dæmon for the URL request to use to fetch the download manifest for the app with the bundle ID “%{public}s”…", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1D38B3760](v19, -1, -1);
      MEMORY[0x1D38B3760](v18, -1, -1);
    }

    (*(v0[3] + 40))(v0[2]);

    v22 = sub_1D30E8B1C();
    v23 = sub_1D30E92BC();

    if (os_log_type_enabled(v22, v23))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30[0] = v26;
      *v25 = 136446210;
      v27 = sub_1D2FFEA04(v13, v15, v30);

      *(v25 + 4) = v27;
      _os_log_impl(&dword_1D2FD9000, v22, v23, "Fetching the download manifest for the app with the bundle ID “%{public}s” from TestFlight…", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1D38B3760](v26, -1, -1);
      MEMORY[0x1D38B3760](v25, -1, -1);
    }

    else
    {
    }

    v28 = swift_task_alloc();
    v0[7] = v28;
    *v28 = v0;
    v28[1] = sub_1D2FEBD44;
    v29 = v0[6];

    return sub_1D2FF0424(v29);
  }

  else
  {
    type metadata accessor for ManifestManagerError(0);
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError, &unk_1D30EF648);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1D2FEBD44(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v7 = sub_1D2FEBEFC;
  }

  else
  {
    *(v6 + 72) = a2;
    *(v6 + 80) = a1;
    v7 = sub_1D2FEBE78;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D2FEBE78()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v3 = v0[9];
  v2 = v0[10];

  return v1(v2, v3);
}

uint64_t sub_1D2FEBEFC()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D2FEBF78(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D3030DF0(MEMORY[0x1E69E6370]);
  if (v6)
  {
    *&v21 = a1;
    *(&v21 + 1) = a2;

    sub_1D30E911C();
    v7 = sub_1D30E906C();

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [v2 objectForKey:v7 ofClass:ObjCClassFromMetadata valuesOfClass:swift_getObjCClassFromMetadata()];
LABEL_5:
    v10 = v9;

    if (v10)
    {
      sub_1D30E93AC();
      swift_unknownObjectRelease();
      sub_1D2FDCC64(&v19, &v21);
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v11 = &qword_1EC749418;
    v12 = &qword_1D30F4A10;
    goto LABEL_9;
  }

  if (v5 != sub_1D2FF1494(0, &qword_1EC749410, 0x1E695DFF8))
  {
    goto LABEL_4;
  }

  *&v19 = a1;
  *(&v19 + 1) = a2;

  sub_1D30E911C();
  v14 = sub_1D30E906C();

  sub_1D2FF1494(0, &qword_1EC749400, 0x1E696AEC0);
  v15 = [v2 objectForKey:v14 ofClass:swift_getObjCClassFromMetadata()];

  if (v15)
  {
    sub_1D30E93AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (!*(&v20 + 1))
  {
    sub_1D2FF14DC(&v21, &qword_1EC749418, &qword_1D30F4A10);
    goto LABEL_4;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_4:
    *&v21 = a1;
    *(&v21 + 1) = a2;

    sub_1D30E911C();
    v7 = sub_1D30E906C();

    v9 = [v2 objectForKey:v7 ofClass:swift_getObjCClassFromMetadata()];
    goto LABEL_5;
  }

  v16 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
  v17 = sub_1D30E906C();

  v18 = [v16 initWithString_];

  *&v21 = v18;
  v11 = &unk_1EC749420;
  v12 = &unk_1D30EF570;
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v19) = 2;
  }

  return v19;
}

uint64_t sub_1D2FEC2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1D30E88CC();
  v8 = sub_1D3030DF0(v7);
  if (v9)
  {
    *&v25 = a1;
    *(&v25 + 1) = a2;

    sub_1D30E911C();
    v10 = sub_1D30E906C();

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [v3 objectForKey:v10 ofClass:ObjCClassFromMetadata valuesOfClass:swift_getObjCClassFromMetadata()];
  }

  else
  {
    if (v8 == sub_1D2FF1494(0, &qword_1EC749410, 0x1E695DFF8))
    {
      *&v23 = a1;
      *(&v23 + 1) = a2;

      sub_1D30E911C();
      v18 = sub_1D30E906C();

      sub_1D2FF1494(0, &qword_1EC749400, 0x1E696AEC0);
      v19 = [v3 objectForKey:v18 ofClass:swift_getObjCClassFromMetadata()];

      if (v19)
      {
        sub_1D30E93AC();
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = 0u;
        v24 = 0u;
      }

      v25 = v23;
      v26 = v24;
      if (*(&v24 + 1))
      {
        if (swift_dynamicCast())
        {
          v20 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
          v21 = sub_1D30E906C();

          v22 = [v20 initWithString_];

          *&v25 = v22;
          v14 = &unk_1EC749420;
          v15 = &unk_1D30EF570;
          goto LABEL_9;
        }
      }

      else
      {
        sub_1D2FF14DC(&v25, &qword_1EC749418, &qword_1D30F4A10);
      }
    }

    *&v25 = a1;
    *(&v25 + 1) = a2;

    sub_1D30E911C();
    v10 = sub_1D30E906C();

    v12 = [v3 objectForKey:v10 ofClass:swift_getObjCClassFromMetadata()];
  }

  v13 = v12;

  if (v13)
  {
    sub_1D30E93AC();
    swift_unknownObjectRelease();
    sub_1D2FDCC64(&v23, &v25);
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v14 = &qword_1EC749418;
  v15 = &qword_1D30F4A10;
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  v16 = swift_dynamicCast();
  return (*(*(v7 - 8) + 56))(a3, v16 ^ 1u, 1, v7);
}

uint64_t sub_1D2FEC604(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D3030DF0(MEMORY[0x1E69E6158]);
  if (v6)
  {
    *&v21 = a1;
    *(&v21 + 1) = a2;

    sub_1D30E911C();
    v7 = sub_1D30E906C();

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [v2 objectForKey:v7 ofClass:ObjCClassFromMetadata valuesOfClass:swift_getObjCClassFromMetadata()];
LABEL_5:
    v10 = v9;

    if (v10)
    {
      sub_1D30E93AC();
      swift_unknownObjectRelease();
      sub_1D2FDCC64(&v19, &v21);
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v11 = &qword_1EC749418;
    v12 = &qword_1D30F4A10;
    goto LABEL_9;
  }

  if (v5 != sub_1D2FF1494(0, &qword_1EC749410, 0x1E695DFF8))
  {
    goto LABEL_4;
  }

  *&v19 = a1;
  *(&v19 + 1) = a2;

  sub_1D30E911C();
  v14 = sub_1D30E906C();

  sub_1D2FF1494(0, &qword_1EC749400, 0x1E696AEC0);
  v15 = [v2 objectForKey:v14 ofClass:swift_getObjCClassFromMetadata()];

  if (v15)
  {
    sub_1D30E93AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (!*(&v20 + 1))
  {
    sub_1D2FF14DC(&v21, &qword_1EC749418, &qword_1D30F4A10);
    goto LABEL_4;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_4:
    *&v21 = a1;
    *(&v21 + 1) = a2;

    sub_1D30E911C();
    v7 = sub_1D30E906C();

    v9 = [v2 objectForKey:v7 ofClass:swift_getObjCClassFromMetadata()];
    goto LABEL_5;
  }

  v16 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
  v17 = sub_1D30E906C();

  v18 = [v16 initWithString_];

  *&v21 = v18;
  v11 = &unk_1EC749420;
  v12 = &unk_1D30EF570;
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v19;
}

uint64_t sub_1D2FEC92C(uint64_t a1, uint64_t a2)
{
  v3[38] = a2;
  v3[39] = v2;
  v3[37] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493F0, &qword_1D30EF558);
  v3[40] = v4;
  v3[41] = *(v4 - 8);
  v3[42] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493F8, &unk_1D30EF560);
  v3[43] = v5;
  v3[44] = *(v5 - 8);
  v3[45] = swift_task_alloc();
  v6 = sub_1D30E866C();
  v3[46] = v6;
  v3[47] = *(v6 - 8);
  v3[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2FECAC0, 0, 0);
}

uint64_t sub_1D2FECAC0()
{
  v48 = v0;
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = sub_1D30E8B3C();
  v0[49] = __swift_project_value_buffer(v2, qword_1EE3134F8);
  v3 = sub_1D30E928C();
  v4 = v1;
  v5 = sub_1D30E8B1C();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = v0[38];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1D2FD9000, v5, v3, "App Store manifest request for: %{public}@", v7, 0xCu);
    sub_1D2FF14DC(v8, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v10 = v0[38];

  v11 = [v10 bundleIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D30E908C();
    v15 = v14;
    v16 = sub_1D30E8B1C();
    v17 = sub_1D30E92BC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v47 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1D2FFEA04(v13, v15, &v47);
      _os_log_impl(&dword_1D2FD9000, v16, v17, "Constructing the request to use to fetch the download manifest for the app with the bundle ID “%{public}s” from the App Store…", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1D38B3760](v19, -1, -1);
      MEMORY[0x1D38B3760](v18, -1, -1);
    }

    v20 = [objc_allocWithZone(MEMORY[0x1E698CAC8]) initWithBundleIdentifier_];
    v0[50] = v20;

    v21 = objc_opt_self();
    v22 = sub_1D30E906C();
    v23 = sub_1D30E906C();
    v24 = [v21 bagForProfile:v22 profileVersion:v23 processInfo:0];

    v25 = objc_allocWithZone(MEMORY[0x1E698C9E8]);
    v26 = sub_1D30E906C();
    v27 = [v25 initWithClientIdentifier:v26 bag:v24];

    v28 = [objc_opt_self() createBagForSubProfile];
    if (v28)
    {
      v29 = v28;

      v30 = [objc_allocWithZone(MEMORY[0x1E698C9C0]) initWithTokenService:v27 bag:v29];
      v0[51] = v30;

      v31 = v20;
      [v30 setClientInfo_];
      sub_1D30E865C();
      sub_1D30E864C();
      v32 = sub_1D30E927C();
      v33 = sub_1D30E8B1C();
      if (os_log_type_enabled(v33, v32))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1D2FD9000, v33, v32, "Fetching the bag…", v34, 2u);
        MEMORY[0x1D38B3760](v34, -1, -1);
      }

      v36 = v0[44];
      v35 = v0[45];
      v37 = v0[43];

      v38 = sub_1D30E906C();
      v39 = sub_1D30E906C();
      v40 = [v21 bagForProfile:v38 profileVersion:v39 processInfo:v31];

      v41 = sub_1D30E906C();
      v42 = [v40 stringForKey_];

      v43 = [v42 valuePromise];
      v0[52] = v43;

      v0[2] = v0;
      v0[7] = v0 + 34;
      v0[3] = sub_1D2FED234;
      swift_continuation_init();
      v0[25] = v37;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 22);
      sub_1D2FF1494(0, &qword_1EC749400, 0x1E696AEC0);
      v0[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493E0, &qword_1D30EF530);
      sub_1D30E91BC();
      (*(v36 + 32))(boxed_opaque_existential_0Tm, v35, v37);
      v0[18] = MEMORY[0x1E69E9820];
      v0[19] = 1107296256;
      v0[20] = sub_1D2FEE198;
      v0[21] = &block_descriptor;
      [v43 resultWithTimeout:10.0 completion:?];
      (*(v36 + 8))(boxed_opaque_existential_0Tm, v37);
      v28 = v0 + 2;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEC8](v28);
  }

  else
  {
    type metadata accessor for ManifestManagerError(0);
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError, &unk_1D30EF648);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v45 = v0[1];

    return v45();
  }
}

uint64_t sub_1D2FED234()
{
  v1 = *(*v0 + 48);
  *(*v0 + 432) = v1;
  if (v1)
  {
    v2 = sub_1D2FEDDB4;
  }

  else
  {
    v2 = sub_1D2FED344;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D2FED344()
{
  v1 = v0[52];
  v2 = v0[34];
  v3 = sub_1D30E908C();
  v5 = v4;

  MEMORY[0x1D38B1B50](v3, v5);
  v6 = sub_1D30E927C();
  v7 = sub_1D30E8B1C();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D2FD9000, v7, v6, "Loading the storefront map…", v8, 2u);
    MEMORY[0x1D38B3760](v8, -1, -1);
  }

  v9 = v0[38];

  v10 = [v9 iTunesMetadata];
  v11 = [v10 storeFront];

  v12 = swift_task_alloc();
  v0[55] = v12;
  *v12 = v0;
  v12[1] = sub_1D2FED4B8;

  return sub_1D303E57C(v11);
}

uint64_t sub_1D2FED4B8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 448) = v2;

  if (v2)
  {
    v7 = sub_1D2FEE01C;
  }

  else
  {
    *(v6 + 456) = a2;
    *(v6 + 464) = a1;
    v7 = sub_1D2FED5EC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D2FED5EC()
{
  v35 = v0;
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[38];
  sub_1D30E948C();

  strcpy(v34, "/v1/catalog/");
  BYTE5(v34[1]) = 0;
  HIWORD(v34[1]) = -5120;
  MEMORY[0x1D38B2610](v1, v2);

  MEMORY[0x1D38B2610](0x702D74657373612FLL, 0xEC000000736B6361);
  MEMORY[0x1D38B1B60](v34[0], v34[1]);
  sub_1D300AC00(v3);
  if (v4 == 4)
  {
    v5 = v0[38];
    type metadata accessor for HelperError(0);
    sub_1D2FF1A68(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
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

    v28 = v0[50];
    v27 = v0[51];
    v29 = v0[47];
    v30 = v0[48];
    v31 = v0[46];
    *v7 = v10;
    v7[1] = v12;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v29 + 8))(v30, v31);

    v32 = v0[1];

    return v32();
  }

  else
  {
    v13 = v0[38];
    v14 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493D0, &qword_1D30EF518);
    sub_1D30E85AC();
    *(swift_allocObject() + 16) = xmmword_1D30EF4A0;
    sub_1D303B7F4(v14);
    sub_1D30E908C();
    sub_1D30E859C();

    v15 = [v13 iTunesMetadata];
    v16 = [v15 storeItemIdentifier];

    v0[35] = v16;
    sub_1D30E977C();
    sub_1D30E859C();

    sub_1D30E859C();
    sub_1D30E85EC();
    v17 = sub_1D30E927C();
    v18 = sub_1D30E8B1C();
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D2FD9000, v18, v17, "Encoding the request…", v19, 2u);
      MEMORY[0x1D38B3760](v19, -1, -1);
    }

    v20 = v0[51];
    v22 = v0[41];
    v21 = v0[42];
    v23 = v0[40];

    v24 = sub_1D30E85FC();
    v25 = [v20 requestWithComponents_];
    v0[59] = v25;

    v0[10] = v0;
    v0[15] = v0 + 36;
    v0[11] = sub_1D2FEDBC8;
    swift_continuation_init();
    v0[33] = v23;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 30);
    sub_1D2FF1494(0, &qword_1EC749408, 0x1E698CB80);
    sub_1D30E91BC();
    (*(v22 + 32))(boxed_opaque_existential_0Tm, v21, v23);
    v0[26] = MEMORY[0x1E69E9820];
    v0[27] = 1107296256;
    v0[28] = sub_1D2FEE1AC;
    v0[29] = &block_descriptor_20;
    [v25 resultWithCompletion_];
    (*(v22 + 8))(boxed_opaque_existential_0Tm, v23);

    return MEMORY[0x1EEE6DEC8](v0 + 10);
  }
}

uint64_t sub_1D2FEDBC8()
{
  v1 = *(*v0 + 112);
  *(*v0 + 480) = v1;
  if (v1)
  {
    v2 = sub_1D2FEE0CC;
  }

  else
  {
    v2 = sub_1D2FEDCD8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D2FEDCD8()
{
  v1 = v0[59];
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[47];
  v4 = v0[48];
  v6 = v0[46];
  v7 = v0[36];
  sub_1D30E850C();

  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D2FEDDB4(uint64_t a1)
{
  v2 = v1[54];
  v3 = v1[52];
  swift_willThrow();

  v4 = sub_1D30E929C();
  v5 = v2;
  v6 = sub_1D30E8B1C();

  if (os_log_type_enabled(v6, v4))
  {
    v7 = v1[54];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D2FD9000, v6, v4, "The Media API host couldn’t be fetched from the bag: %{public}@", v8, 0xCu);
    sub_1D2FF14DC(v9, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v9, -1, -1);
    MEMORY[0x1D38B3760](v8, -1, -1);
  }

  v12 = v1[54];

  MEMORY[0x1D38B1B50](0xD000000000000016, 0x80000001D30EAF20);
  v13 = sub_1D30E927C();
  v14 = sub_1D30E8B1C();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D2FD9000, v14, v13, "Loading the storefront map…", v15, 2u);
    MEMORY[0x1D38B3760](v15, -1, -1);
  }

  v16 = v1[38];

  v17 = [v16 iTunesMetadata];
  v18 = [v17 storeFront];

  v19 = swift_task_alloc();
  v1[55] = v19;
  *v19 = v1;
  v19[1] = sub_1D2FED4B8;

  return sub_1D303E57C(v18);
}

uint64_t sub_1D2FEE01C()
{
  v1 = *(v0 + 400);
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v4 = *(v0 + 368);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D2FEE0CC(uint64_t a1)
{
  v2 = v1[59];
  v4 = v1[50];
  v3 = v1[51];
  v6 = v1[47];
  v5 = v1[48];
  v7 = v1[46];
  swift_willThrow();

  (*(v6 + 8))(v5, v7);

  v8 = v1[1];

  return v8();
}

void sub_1D2FEE1C0(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v9 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    sub_1D30E91CC();
  }

  else if (a2)
  {
    v10 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    sub_1D30E91DC();
  }

  else
  {
    __break(1u);
  }
}

char *sub_1D2FEE270(void *a1)
{
  v2 = v1;
  v100[1] = *MEMORY[0x1E69E9840];
  v93 = sub_1D30E881C();
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v92 = &v86 - v6;
  v7 = sub_1D30E88CC();
  v94 = *(v7 - 8);
  v95 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v87 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D30E8D9C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v88 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v86 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v86 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v86 - v19;
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v21 = sub_1D30E8B3C();
  v22 = __swift_project_value_buffer(v21, qword_1EE3134F8);
  v23 = sub_1D30E928C();
  v24 = a1;
  v96 = v22;
  v25 = sub_1D30E8B1C();

  if (os_log_type_enabled(v25, v23))
  {
    v26 = swift_slowAlloc();
    v89 = v20;
    v97 = v9;
    v27 = v10;
    v28 = v15;
    v29 = v18;
    v30 = v26;
    v31 = swift_slowAlloc();
    *v30 = 138543362;
    *(v30 + 4) = v24;
    *v31 = v24;
    v32 = v24;
    _os_log_impl(&dword_1D2FD9000, v25, v23, "Local cache manifest data for: %{public}@", v30, 0xCu);
    sub_1D2FF14DC(v31, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v31, -1, -1);
    v33 = v30;
    v18 = v29;
    v15 = v28;
    v2 = v1;
    v10 = v27;
    v9 = v97;
    v20 = v89;
    MEMORY[0x1D38B3760](v33, -1, -1);
  }

  v34 = [v24 bundleIdentifier];
  if (v34)
  {
    v35 = v34;
    v36 = sub_1D30E908C();
    v38 = v37;

    sub_1D2FEABF8(v36, v38, v20);
    if (v2)
    {
    }

    else
    {
      v89 = v18;
      v98 = v10;
      v99 = 1;
      v40 = [objc_opt_self() defaultManager];
      sub_1D30E8D3C();
      v41 = sub_1D30E906C();

      v42 = [v40 fileExistsAtPath:v41 isDirectory:&v99];

      if (v42)
      {
        v86 = 0;

        v43 = v98;
        if (v99 == 1)
        {
          v44 = sub_1D30E92AC();
          (*(v43 + 16))(v15, v20, v9);
          v45 = v20;
          v46 = sub_1D30E8B1C();
          if (os_log_type_enabled(v46, v44))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v100[0] = v48;
            *v47 = 136446210;
            sub_1D2FF1A68(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
            v89 = v45;
            v49 = sub_1D30E977C();
            v51 = v50;
            v52 = *(v43 + 8);
            v52(v15, v9);
            v53 = sub_1D2FFEA04(v49, v51, v100);

            *(v47 + 4) = v53;
            _os_log_impl(&dword_1D2FD9000, v46, v44, "The item at “%{public}s” is unexpectedly a directory.", v47, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v48);
            MEMORY[0x1D38B3760](v48, -1, -1);
            MEMORY[0x1D38B3760](v47, -1, -1);

            v52(v89, v9);
          }

          else
          {

            v82 = *(v43 + 8);
            v82(v15, v9);
            v82(v45, v9);
          }

          return 0;
        }

        else
        {
          v72 = *(v98 + 16);
          v73 = v88;
          v72(v88, v20, v9);
          v74 = v90;
          (*(v91 + 104))(v90, *MEMORY[0x1E6968F68], v93);
          v75 = v92;
          sub_1D3040AB4(v73, v74, v92);
          v77 = v94;
          v76 = v95;
          v78 = v20;
          if ((*(v94 + 48))(v75, 1, v95) == 1)
          {
            sub_1D2FF14DC(v75, &qword_1EC7493C0, &qword_1D30EF500);
            v20 = type metadata accessor for HelperError(0);
            sub_1D2FF1A68(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
            swift_allocError();
            v72(v79, v78, v9);
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            (*(v43 + 8))(v78, v9);
          }

          else
          {
            v83 = v87;
            (*(v77 + 32))(v87, v75, v76);
            v84 = v86;
            v85 = sub_1D30E88DC();
            if (v84)
            {
              (*(v77 + 8))(v83, v76);
              (*(v43 + 8))(v20, v9);
            }

            else
            {
              v20 = v85;
              (*(v77 + 8))(v83, v76);
              (*(v43 + 8))(v78, v9);
            }
          }
        }
      }

      else
      {
        v54 = v98;
        v55 = v89;
        (*(v98 + 16))(v89, v20, v9);

        v56 = sub_1D30E8B1C();
        v97 = v9;
        v57 = v56;
        v58 = sub_1D30E92BC();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v86 = 0;
          v60 = v59;
          v96 = swift_slowAlloc();
          v100[0] = v96;
          *v60 = 136446466;
          v61 = sub_1D2FFEA04(v36, v38, v100);
          LODWORD(v95) = v58;
          v62 = v61;

          *(v60 + 4) = v62;
          *(v60 + 12) = 2082;
          sub_1D2FF1A68(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
          v63 = v97;
          v64 = sub_1D30E977C();
          v66 = v65;
          v67 = *(v54 + 8);
          v67(v55, v63);
          v68 = sub_1D2FFEA04(v64, v66, v100);
          v69 = v20;
          v70 = v68;

          *(v60 + 14) = v70;
          _os_log_impl(&dword_1D2FD9000, v57, v95, "The manifest for the app with the bundle ID “%{public}s” doesn’t exist locally at “%{public}s”.", v60, 0x16u);
          v71 = v96;
          swift_arrayDestroy();
          MEMORY[0x1D38B3760](v71, -1, -1);
          MEMORY[0x1D38B3760](v60, -1, -1);

          v67(v69, v63);
        }

        else
        {

          v80 = *(v54 + 8);
          v81 = v97;
          v80(v55, v97);
          v80(v20, v81);
        }

        return 0;
      }
    }
  }

  else
  {
    v20 = type metadata accessor for ManifestManagerError(0);
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError, &unk_1D30EF648);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v20;
}

uint64_t sub_1D2FEED7C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v74 = a2;
  v7 = sub_1D30E881C();
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v73 = &v58 - v10;
  v11 = sub_1D30E88CC();
  v69 = *(v11 - 8);
  v70 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D30E8D9C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v64 = &v58 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v58 - v20;
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v21 = sub_1D30E8B3C();
  v22 = __swift_project_value_buffer(v21, qword_1EE3134F8);
  v23 = sub_1D30E928C();
  v24 = v74;
  sub_1D2FF17B0(a1, v74);

  v61 = v22;
  v25 = sub_1D30E8B1C();
  sub_1D2FF1804(a1, v24);

  v26 = os_log_type_enabled(v25, v23);
  v62 = v17;
  v63 = a1;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v76 = v60;
    *v27 = 136446466;
    v28 = sub_1D30E88EC();
    v30 = sub_1D2FFEA04(v28, v29, &v76);
    v59 = v25;
    v31 = v14;
    v32 = v30;

    *(v27 + 4) = v32;
    v14 = v31;
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_1D2FFEA04(a3, a4, &v76);
    v25 = v59;
    _os_log_impl(&dword_1D2FD9000, v59, v23, "Install manifest from: %{public}s for app with bundle ID: %{public}s", v27, 0x16u);
    v33 = v60;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v33, -1, -1);
    MEMORY[0x1D38B3760](v27, -1, -1);
  }

  v34 = v72;
  result = sub_1D2FEABF8(a3, a4, v75);
  v36 = v73;
  if (!v34)
  {
    v71 = a3;
    v72 = a4;
    v37 = *(v14 + 16);
    v38 = v64;
    v37(v64, v75, v13);
    v39 = v65;
    (*(v66 + 104))(v65, *MEMORY[0x1E6968F68], v67);
    sub_1D3040AB4(v38, v39, v36);
    v40 = v69;
    v41 = v36;
    v42 = v36;
    v43 = v70;
    if ((*(v69 + 48))(v41, 1, v70) == 1)
    {
      sub_1D2FF14DC(v42, &qword_1EC7493C0, &qword_1D30EF500);
      type metadata accessor for HelperError(0);
      sub_1D2FF1A68(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
      swift_allocError();
      v37(v44, v75, v13);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (*(v14 + 8))(v75, v13);
    }

    else
    {
      v67 = v14;
      (*(v40 + 32))(v68, v42, v43);
      v45 = v62;
      v37(v62, v75, v13);
      v46 = v72;

      v47 = sub_1D30E8B1C();
      v48 = sub_1D30E92BC();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v73 = v13;
        v66 = v50;
        v76 = v50;
        *v49 = 136446466;
        sub_1D2FF1A68(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
        LODWORD(v65) = v48;
        v51 = sub_1D30E977C();
        v53 = v52;
        v54 = *(v67 + 8);
        v54(v45, v73);
        v55 = sub_1D2FFEA04(v51, v53, &v76);

        *(v49 + 4) = v55;
        *(v49 + 12) = 2082;
        *(v49 + 14) = sub_1D2FFEA04(v71, v46, &v76);
        _os_log_impl(&dword_1D2FD9000, v47, v65, "Installing a manifest at “%{public}s” for the app with the bundle ID “%{public}s”…", v49, 0x16u);
        v56 = v66;
        swift_arrayDestroy();
        v13 = v73;
        MEMORY[0x1D38B3760](v56, -1, -1);
        MEMORY[0x1D38B3760](v49, -1, -1);
      }

      else
      {

        v54 = *(v67 + 8);
        v54(v45, v13);
      }

      v57 = v68;
      sub_1D30E894C();
      (*(v69 + 8))(v57, v70);
      return (v54)(v75, v13);
    }
  }

  return result;
}

uint64_t sub_1D2FEF53C(uint64_t a1, unint64_t a2)
{
  v68[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D30E8D9C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v67 = &v58 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v58 - v11;
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v13 = sub_1D30E8B3C();
  v14 = __swift_project_value_buffer(v13, qword_1EE3134F8);
  v15 = sub_1D30E928C();

  v64 = v14;
  v16 = sub_1D30E8B1C();

  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v63 = v8;
    v19 = v5;
    v20 = v12;
    v21 = v4;
    v22 = v18;
    v68[0] = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1D2FFEA04(a1, a2, v68);
    _os_log_impl(&dword_1D2FD9000, v16, v15, "Uninstall manifest for app with bundle ID: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v23 = v22;
    v4 = v21;
    v12 = v20;
    v5 = v19;
    v8 = v63;
    MEMORY[0x1D38B3760](v23, -1, -1);
    MEMORY[0x1D38B3760](v17, -1, -1);
  }

  v24 = v66;
  result = sub_1D2FEABF8(a1, a2, v12);
  v26 = v67;
  if (!v24)
  {
    v27 = *(v5 + 16);
    v65 = (v5 + 16);
    v66 = 0;
    v63 = v27;
    (v27)(v67, v12, v4);

    v28 = sub_1D30E8B1C();
    v29 = sub_1D30E92BC();

    v30 = os_log_type_enabled(v28, v29);
    v61 = a1;
    v62 = v5;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v68[0] = v60;
      *v31 = 136446466;
      sub_1D2FF1A68(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v59 = v29;
      v32 = sub_1D30E977C();
      v33 = v26;
      v34 = v4;
      v36 = v35;
      v67 = *(v5 + 8);
      (v67)(v33, v34);
      v37 = sub_1D2FFEA04(v32, v36, v68);
      v4 = v34;

      *(v31 + 4) = v37;
      *(v31 + 12) = 2082;
      *(v31 + 14) = sub_1D2FFEA04(v61, a2, v68);
      _os_log_impl(&dword_1D2FD9000, v28, v59, "Uninstalling the manifest at “%{public}s” for the app with the bundle ID “%{public}s”…", v31, 0x16u);
      v38 = v60;
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v38, -1, -1);
      MEMORY[0x1D38B3760](v31, -1, -1);
    }

    else
    {

      v67 = *(v5 + 8);
      (v67)(v26, v4);
    }

    v39 = objc_opt_self();
    v40 = [v39 defaultManager];
    sub_1D30E8D3C();
    v41 = sub_1D30E906C();

    v42 = [v40 fileExistsAtPath_];

    if (v42)
    {
      v43 = [v39 defaultManager];
      sub_1D30E8D3C();
      v44 = sub_1D30E906C();

      v68[0] = 0;
      v45 = [v43 removeItemAtPath:v44 error:v68];

      if (v45)
      {
        v46 = v68[0];
      }

      else
      {
        v56 = v68[0];
        sub_1D30E87DC();

        swift_willThrow();
      }

      return (v67)(v12, v4);
    }

    else
    {
      (v63)(v8, v12, v4);

      v47 = sub_1D30E8B1C();
      v48 = sub_1D30E92BC();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v68[0] = v65;
        *v49 = 136446466;
        sub_1D2FF1A68(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
        v50 = sub_1D30E977C();
        v51 = v4;
        v58 = v4;
        v53 = v52;
        (v67)(v8, v51);
        v54 = sub_1D2FFEA04(v50, v53, v68);

        *(v49 + 4) = v54;
        *(v49 + 12) = 2082;
        *(v49 + 14) = sub_1D2FFEA04(v61, a2, v68);
        _os_log_impl(&dword_1D2FD9000, v47, v48, "No manifest exists at “%{public}s” for the app with the bundle ID “%{public}s”.", v49, 0x16u);
        v55 = v65;
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v55, -1, -1);
        MEMORY[0x1D38B3760](v49, -1, -1);

        return (v67)(v12, v58);
      }

      else
      {

        v57 = v67;
        (v67)(v8, v4);
        return v57(v12, v4);
      }
    }
  }

  return result;
}

uint64_t sub_1D2FEFCB8()
{
  v1 = v0;
  v2 = sub_1D30E866C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D30E88CC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ManifestManagerError(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D2FF1A04(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        (*(v3 + 32))(v5, v12, v2);
        v36 = 0;
        v37 = 0xE000000000000000;
        sub_1D30E948C();

        v36 = 0x1000000000000016;
        v37 = 0x80000001D30EB080;
        sub_1D2FF1A68(&qword_1EC749488, MEMORY[0x1E69681B8], MEMORY[0x1E69681D0]);
        v21 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v21);

        MEMORY[0x1D38B2610](0x1000000000000010, 0x80000001D30EB0A0);
        v22 = v36;
        (*(v3 + 8))(v5, v2);
        return v22;
      }

      v31 = *v12;
      v32 = v12[1];
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x1000000000000031, 0x80000001D30EACA0);
      MEMORY[0x1D38B2610](v31, v32);

      v27 = " app with the bundle ID “";
      v28 = 0x1000000000000036;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload)
    {
      (*(v7 + 32))(v9, v12, v6);
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_1D30E948C();

      v36 = 0x204C525520656854;
      v37 = 0xAB000000009C80E2;
      sub_1D2FF1A68(&qword_1EC7493D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v29 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v29);

      MEMORY[0x1D38B2610](0x69207369209D80E2, 0xAF2E64696C61766ELL);
      v30 = v36;
      (*(v7 + 8))(v9, v6);
      return v30;
    }

    v16 = v12[1];
    v15 = v12[2];
    v17 = v12[3];
    if (v16)
    {
      v18 = *v12;
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x1000000000000019, 0x80000001D30EB140);
      MEMORY[0x1D38B2610](v18, v16);

      v19 = "The actual bundle ID, “";
      v20 = 0x1000000000000030;
    }

    else
    {
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_1D30E948C();
      v19 = "The bundle ID is unavailable.";
      v20 = 0x1000000000000056;
    }

    MEMORY[0x1D38B2610](v20, v19 | 0x8000000000000000);
    MEMORY[0x1D38B2610](v15, v17);
LABEL_22:

    v28 = 782074082;
    v33 = 0xA400000000000000;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v34 = *v12;
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x1000000000000018, 0x80000001D30EAFE0);
      v35[1] = v34;
      type metadata accessor for MIBetaTesterType(0);
      sub_1D30E955C();
      v28 = 0x75207369209D80E2;
      v33 = 0xAF2E6E776F6E6B6ELL;
      goto LABEL_23;
    }

    v23 = *v12;
    v24 = v12[1];
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1D30E948C();
    MEMORY[0x1D38B2610](0x100000000000003BLL, 0x80000001D30EB000);
    MEMORY[0x1D38B2610](v23, v24);
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v25 = *v12;
    v26 = v12[1];
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1D30E948C();
    MEMORY[0x1D38B2610](0x6972747320656854, 0xAE009C80E220676ELL);
    MEMORY[0x1D38B2610](v25, v26);

    v27 = "The file path “";
    v28 = 0x1000000000000027;
LABEL_17:
    v33 = v27 | 0x8000000000000000;
LABEL_23:
    MEMORY[0x1D38B2610](v28, v33);
    return v36;
  }

  if (EnumCaseMultiPayload == 7)
  {
    return 0xD00000000000001DLL;
  }

  else
  {
    return 0xD000000000000020;
  }
}

uint64_t type metadata accessor for ManifestManagerError(uint64_t a1)
{
  result = qword_1EC749470;
  if (!qword_1EC749470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2FF03B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2FF0424(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_1D30E8B6C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_1D30E852C();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2FF054C, 0, 0);
}

uint64_t sub_1D2FF054C()
{
  v29 = v0;
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[3];
  v5 = sub_1D30E8B3C();
  __swift_project_value_buffer(v5, qword_1EE3134F8);
  v6 = sub_1D30E928C();
  v7 = *(v3 + 16);
  v7(v1, v4, v2);
  v8 = sub_1D30E8B1C();
  v9 = os_log_type_enabled(v8, v6);
  v10 = v0[10];
  v12 = v0[7];
  v11 = v0[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 136446210;
    sub_1D2FF1A68(&qword_1EC7493E8, MEMORY[0x1E6967EC8], MEMORY[0x1E6967EE0]);
    v26 = v6;
    v14 = v7;
    v15 = sub_1D30E977C();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v7 = v14;
    v19 = sub_1D2FFEA04(v18, v17, &v28);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1D2FD9000, v8, v26, "Manifest data for: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1D38B3760](v27, -1, -1);
    MEMORY[0x1D38B3760](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  if (qword_1EC748FE8 != -1)
  {
    swift_once();
  }

  v20 = qword_1EC7493A8;
  v0[11] = qword_1EC7493A8;
  if (byte_1EC7493B0)
  {
    v0[2] = v20;
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493E0, &qword_1D30EF530);
    swift_willThrowTypedImpl();

    v22 = v0[1];

    return v22();
  }

  else
  {
    v7(v0[9], v0[3], v0[7]);

    sub_1D30E8B7C();
    v24 = swift_task_alloc();
    v0[12] = v24;
    *v24 = v0;
    v24[1] = sub_1D2FF08DC;
    v25 = v0[6];

    return MEMORY[0x1EEE1ADC8](v25);
  }
}

uint64_t sub_1D2FF08DC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  v6[13] = v2;

  v8 = v6[11];
  if (v2)
  {
    (*(v6[5] + 8))(v6[6], v6[4]);
    sub_1D2FF13A4(v8, 0);

    return MEMORY[0x1EEE6DFA0](sub_1D2FF0AC8, 0, 0);
  }

  else
  {
    (*(v6[5] + 8))(v6[6], v6[4]);
    sub_1D2FF13A4(v8, 0);

    v9 = v7[1];

    return v9(a1, a2);
  }
}

uint64_t sub_1D2FF0AC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2FF0B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1D30E852C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1D30E88CC();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2FF0C80, 0, 0);
}

uint64_t sub_1D2FF0C80()
{
  v41 = v0;
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[2];
  v5 = sub_1D30E8B3C();
  __swift_project_value_buffer(v5, qword_1EE3134F8);
  v6 = sub_1D30E928C();
  v7 = *(v3 + 16);
  v7(v1, v4, v2);

  v8 = sub_1D30E8B1C();

  v9 = os_log_type_enabled(v8, v6);
  v10 = v0[12];
  v12 = v0[8];
  v11 = v0[9];
  if (v9)
  {
    v35 = v0[3];
    v36 = v0[4];
    v13 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40 = v37;
    *v13 = 136446466;
    sub_1D2FF1A68(&qword_1EC7493D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v14 = sub_1D30E977C();
    v15 = v7;
    v17 = v16;
    v39 = *(v11 + 8);
    v39(v10, v12);
    v18 = sub_1D2FFEA04(v14, v17, &v40);
    v7 = v15;

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_1D2FFEA04(v35, v36, &v40);
    _os_log_impl(&dword_1D2FD9000, v8, v6, "Manifest data at: %{public}s for app with bundle ID: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v37, -1, -1);
    MEMORY[0x1D38B3760](v13, -1, -1);
  }

  else
  {

    v39 = *(v11 + 8);
    v39(v10, v12);
  }

  v7(v0[11], v0[2], v0[8]);

  v19 = sub_1D30E8B1C();
  v20 = sub_1D30E92BC();

  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[11];
  v23 = v0[8];
  if (v21)
  {
    v38 = v7;
    v25 = v0[3];
    v24 = v0[4];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v40 = v27;
    *v26 = 136446466;
    *(v26 + 4) = sub_1D2FFEA04(v25, v24, &v40);
    *(v26 + 12) = 2082;
    sub_1D2FF1A68(&qword_1EC7493D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v28 = sub_1D30E977C();
    v30 = v29;
    v39(v22, v23);
    v31 = sub_1D2FFEA04(v28, v30, &v40);
    v7 = v38;

    *(v26 + 14) = v31;
    _os_log_impl(&dword_1D2FD9000, v19, v20, "Fetching the download manifest for the app with the bundle ID “%{public}s” at “%{public}s”…", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v27, -1, -1);
    MEMORY[0x1D38B3760](v26, -1, -1);
  }

  else
  {

    v39(v22, v23);
  }

  v7(v0[10], v0[2], v0[8]);
  sub_1D30E851C();
  v32 = swift_task_alloc();
  v0[13] = v32;
  *v32 = v0;
  v32[1] = sub_1D2FF1150;
  v33 = v0[7];

  return sub_1D2FF0424(v33);
}

uint64_t sub_1D2FF1150(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[14] = v2;

  if (v2)
  {
    (*(v6[6] + 8))(v6[7], v6[5]);

    return MEMORY[0x1EEE6DFA0](sub_1D2FF1318, 0, 0);
  }

  else
  {
    (*(v6[6] + 8))(v6[7], v6[5]);

    v7 = v6[1];

    return v7(a1, a2);
  }
}

uint64_t sub_1D2FF1318()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D2FF13A4(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1D2FF13B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2FF1430(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D2FF1494(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1D2FF14DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D2FF153C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilePath.ResolutionError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D2FF15A8()
{
  result = qword_1EE314010;
  if (!qword_1EE314010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749460, &qword_1D30EF5D0);
    sub_1D2FF1634();
    sub_1D2FF16E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314010);
  }

  return result;
}

unint64_t sub_1D2FF1634()
{
  result = qword_1EE313FF8;
  if (!qword_1EE313FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749458, &qword_1D30EF5A0);
    sub_1D2FF1768(&qword_1EE313FE0, &qword_1EC749450, &unk_1D30FD100, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE313FF8);
  }

  return result;
}

unint64_t sub_1D2FF16E4()
{
  result = qword_1EE314008;
  if (!qword_1EE314008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749448, &unk_1D30EF590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314008);
  }

  return result;
}

uint64_t sub_1D2FF1768(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D2FF17B0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1D2FF1804(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_1D2FF1884(uint64_t a1)
{
  sub_1D2FE3920(319);
  if (v1 <= 0x3F)
  {
    sub_1D30E88CC();
    if (v2 <= 0x3F)
    {
      sub_1D30E866C();
      if (v3 <= 0x3F)
      {
        sub_1D2FE38C0();
        if (v4 <= 0x3F)
        {
          sub_1D2FF195C();
          if (v5 <= 0x3F)
          {
            type metadata accessor for MIBetaTesterType(319);
            if (v6 <= 0x3F)
            {
              sub_1D2FF198C();
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D2FF195C()
{
  result = qword_1EE3140B8;
  if (!qword_1EE3140B8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE3140B8);
  }

  return result;
}

uint64_t sub_1D2FF198C()
{
  result = qword_1EC749480;
  if (!qword_1EC749480)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EC749480);
  }

  return result;
}

uint64_t sub_1D2FF1A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManifestManagerError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2FF1A68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t LicenseRecord.ElementID.globalID.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t LicenseRecord.ElementID.versionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LicenseRecord.ElementID(0) + 20);
  v4 = sub_1D30E8A4C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LicenseRecord.ElementID.description.getter()
{
  sub_1D30E948C();
  MEMORY[0x1D38B2610](0xD000000000000019, 0x80000001D30EB1A0);
  v0 = AssetPackRecord.GlobalID.description.getter();
  MEMORY[0x1D38B2610](v0);

  MEMORY[0x1D38B2610](0x6E6F697372657620, 0xED0000203A444920);
  type metadata accessor for LicenseRecord.ElementID(0);
  sub_1D30E8A4C();
  sub_1D2FF675C(&qword_1EC749490, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v1 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v1);

  MEMORY[0x1D38B2610](0xD000000000000016, 0x80000001D30EB1C0);
  v2 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v2);

  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_1D2FF1E04()
{
  v1 = 0x496E6F6973726576;
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
    return 0x44496C61626F6C67;
  }
}

uint64_t sub_1D2FF1E68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D2FF6A78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D2FF1E90(uint64_t a1)
{
  v2 = sub_1D2FF66B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FF1ECC(uint64_t a1)
{
  v2 = sub_1D2FF66B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LicenseRecord.ElementID.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749498, &qword_1D30EF6B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2FF66B4();
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

  if (!v2)
  {
    type metadata accessor for LicenseRecord.ElementID(0);
    LOBYTE(v14) = 1;
    sub_1D30E8A4C();
    sub_1D2FF675C(&qword_1EC7494B0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1D30E974C();
    LOBYTE(v14) = 2;
    sub_1D30E975C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t LicenseRecord.ElementID.hashValue.getter()
{
  sub_1D30E98AC();
  v1 = type metadata accessor for LicenseRecord.ElementID(0);
  MEMORY[0x1D38B2E00](*(v0 + *(v1 + 24)));
  return sub_1D30E98EC();
}

uint64_t LicenseRecord.ElementID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_1D30E8A4C();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7494B8, &qword_1D30EF6B8);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for LicenseRecord.ElementID(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D2FF66B4();
  sub_1D30E990C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v14 = v23;
  v31 = 0;
  sub_1D2FF67A4();
  sub_1D30E967C();
  v15 = v27;
  v16 = v29;
  v17 = v30;
  *v12 = v26;
  *(v12 + 1) = v15;
  *(v12 + 1) = v28;
  *(v12 + 4) = v16;
  *(v12 + 5) = v17;
  LOBYTE(v26) = 1;
  sub_1D2FF675C(&qword_1EC7494C8, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1D30E967C();
  (*(v22 + 32))(&v12[*(v10 + 20)], v6, v4);
  LOBYTE(v26) = 2;
  v18 = sub_1D30E969C();
  (*(v14 + 8))(v9, v24);
  *&v12[*(v10 + 24)] = v18;
  sub_1D2FF69B0(v12, v21, type metadata accessor for LicenseRecord.ElementID);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_1D2FF6A18(v12, type metadata accessor for LicenseRecord.ElementID);
}

uint64_t sub_1D2FF25D8(uint64_t a1)
{
  sub_1D30E98AC();
  MEMORY[0x1D38B2E00](*(v1 + *(a1 + 24)));
  return sub_1D30E98EC();
}

uint64_t sub_1D2FF2654(uint64_t a1, uint64_t a2)
{
  sub_1D30E98AC();
  MEMORY[0x1D38B2E00](*(v2 + *(a2 + 24)));
  return sub_1D30E98EC();
}

uint64_t sub_1D2FF26B4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749650, &qword_1D30F03C8);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749658, &qword_1D30F03D0);
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749660, &qword_1D30F03D8);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749668, &qword_1D30F03E0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v15 = v1[1];
  v32 = *v1;
  v23 = v15;
  v16 = *(v1 + 2);
  v24 = *(v1 + 1);
  v33 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2FF864C();
  sub_1D30E992C();
  v17 = (*(&v33 + 1) >> 60) & 3;
  if (!v17)
  {
    LOBYTE(v34) = 1;
    sub_1D2FF86F4();
    sub_1D30E96DC();
    v34 = v32;
    v35 = v23;
    v37 = v33;
    v36 = v24;
    sub_1D2FF87F0();
    v20 = v28;
    sub_1D30E974C();
    (*(v27 + 8))(v7, v20);
    return (*(v12 + 8))(v14, v11);
  }

  if (v17 == 1)
  {
    LOBYTE(v34) = 2;
    sub_1D2FF86A0();
    v18 = v29;
    sub_1D30E96DC();
    v34 = v32;
    sub_1D2FE0630();
    v19 = v31;
    sub_1D30E974C();
    (*(v30 + 8))(v18, v19);
    return (*(v12 + 8))(v14, v11);
  }

  LOBYTE(v34) = 0;
  sub_1D2FF879C();
  sub_1D30E96DC();
  (*(v25 + 8))(v10, v26);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1D2FF2AEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749608, &qword_1D30F03A8);
  v39 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v42 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749610, &qword_1D30F03B0);
  v5 = *(v4 - 8);
  v37 = v4;
  v38 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749618, &qword_1D30F03B8);
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749620, &qword_1D30F03C0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v13;
  v15 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D2FF864C();
  v16 = v43;
  sub_1D30E990C();
  if (!v16)
  {
    v43 = 0;
    v17 = v41;
    v18 = sub_1D30E96AC();
    v19 = (2 * *(v18 + 16)) | 1;
    v48 = v18;
    v49 = v18 + 32;
    v50 = 0;
    v51 = v19;
    v20 = sub_1D302D668();
    if (v20 == 3 || v50 != v51 >> 1)
    {
      v28 = sub_1D30E94EC();
      swift_allocError();
      v29 = v14;
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7492A0, &qword_1D30EED30);
      *v31 = &type metadata for LicenseRecord.State;
      sub_1D30E960C();
      sub_1D30E94DC();
      (*(*(v28 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v12 + 8))(v29, v11);
    }

    else
    {
      if (v20)
      {
        if (v20 == 1)
        {
          LOBYTE(v44) = 1;
          sub_1D2FF86F4();
          v21 = v43;
          sub_1D30E95FC();
          if (!v21)
          {
            sub_1D2FF8748();
            v22 = v37;
            sub_1D30E967C();
            (*(v38 + 8))(v7, v22);
            (*(v12 + 8))(v14, v11);
            swift_unknownObjectRelease();
            v23 = v44;
            v24 = v45;
            v26 = v46;
            v25 = v47;
            v27 = v40;
LABEL_16:
            *v27 = v23;
            *(v27 + 8) = v24;
            *(v27 + 16) = v26;
            *(v27 + 32) = v25;
            return __swift_destroy_boxed_opaque_existential_1(v52);
          }
        }

        else
        {
          LOBYTE(v44) = 2;
          sub_1D2FF86A0();
          v34 = v43;
          sub_1D30E95FC();
          v27 = v40;
          if (!v34)
          {
            v43 = v14;
            sub_1D2FE072C();
            v35 = v36;
            sub_1D30E967C();
            (*(v39 + 8))(0, v35);
            (*(v12 + 8))(v43, v11);
            swift_unknownObjectRelease();
            v24 = 0;
            v23 = v44;
            v25 = xmmword_1D30EF690;
            v26 = 0uLL;
            goto LABEL_16;
          }
        }
      }

      else
      {
        LOBYTE(v44) = 0;
        sub_1D2FF879C();
        v33 = v43;
        sub_1D30E95FC();
        if (!v33)
        {
          (*(v17 + 8))(v10, v8);
          (*(v12 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v23 = 0;
          v24 = 0;
          v25 = xmmword_1D30EF6A0;
          v26 = 0uLL;
          v27 = v40;
          goto LABEL_16;
        }
      }

      (*(v12 + 8))(v14, v11);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_1D2FF3140(uint64_t a1)
{
  v2 = sub_1D2FF864C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FF317C(uint64_t a1)
{
  v2 = sub_1D2FF864C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FF31B8(uint64_t a1)
{
  v2 = sub_1D2FF86A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FF31F4(uint64_t a1)
{
  v2 = sub_1D2FF86A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FF3230(uint64_t a1)
{
  v2 = sub_1D2FF879C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FF326C(uint64_t a1)
{
  v2 = sub_1D2FF879C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FF32B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_1D2FF3334(uint64_t a1)
{
  v2 = sub_1D2FF86F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FF3370(uint64_t a1)
{
  v2 = sub_1D2FF86F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FF33DC()
{
  v1 = (*(v0 + 40) >> 60) & 3;
  v2 = 0x676E69646E6550;
  if (v1 == 1)
  {
    v2 = 0x65726576696C6544;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x6574736575716552;
  }
}

uint64_t sub_1D2FF3444(void *a1, int a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749550, &qword_1D30EFDB8);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749558, &qword_1D30EFDC0);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749560, &qword_1D30EFDC8);
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749568, &qword_1D30EFDD0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2FF7EA8();
  sub_1D30E992C();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1D2FF7F50();
      sub_1D30E96DC();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1D2FF7EFC();
      v16 = v22;
      sub_1D30E96DC();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1D2FF7FA4();
    sub_1D30E96DC();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_1D2FF37C4(uint64_t a1)
{
  v2 = sub_1D2FF7EA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FF3800(uint64_t a1)
{
  v2 = sub_1D2FF7EA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FF383C(uint64_t a1)
{
  v2 = sub_1D2FF7EFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FF3878(uint64_t a1)
{
  v2 = sub_1D2FF7EFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FF38B4(uint64_t a1)
{
  v2 = sub_1D2FF7FA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FF38F0(uint64_t a1)
{
  v2 = sub_1D2FF7FA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FF392C(uint64_t a1)
{
  v2 = sub_1D2FF7F50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FF3968(uint64_t a1)
{
  v2 = sub_1D2FF7F50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FF39A4@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D2FF6BA0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D2FF39EC()
{
  v1 = 0x6574736575716552;
  if (*v0 != 1)
  {
    v1 = 0x65726576696C6544;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646E6550;
  }
}

uint64_t LicenseRecord.StaticRepresentation.description.getter()
{
  v1 = v0;
  sub_1D30E948C();
  MEMORY[0x1D38B2610](0xD000000000000025, 0x80000001D30EB1E0);
  v2 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v2);

  MEMORY[0x1D38B2610](0x746E656D656C6520, 0xEE00203A73444920);
  v3 = *(v0 + 8);
  v4 = type metadata accessor for LicenseRecord.ElementID(0);
  v5 = MEMORY[0x1D38B26B0](v3, v4);
  MEMORY[0x1D38B2610](v5);

  MEMORY[0x1D38B2610](0x203A657461747320, 0xE800000000000000);
  v6 = 0x6574736575716552;
  if (*(v1 + 16) != 1)
  {
    v6 = 0x65726576696C6544;
  }

  if (*(v1 + 16))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x676E69646E6550;
  }

  if (*(v1 + 16))
  {
    v8 = 0xE900000000000064;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  MEMORY[0x1D38B2610](v7, v8);

  MEMORY[0x1D38B2610](0x7473657571657220, 0xEF203A6574616420);
  type metadata accessor for LicenseRecord.StaticRepresentation(0);
  sub_1D30E8A2C();
  sub_1D2FF675C(&qword_1EC7494D0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v9 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v9);

  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return 0;
}

uint64_t static LicenseRecord.StaticRepresentation.< infix(_:_:)(void *a1, void *a2)
{
  type metadata accessor for LicenseRecord.StaticRepresentation(0);
  if (sub_1D30E89FC())
  {
    return *a1 < *a2;
  }

  return sub_1D30E89EC();
}

uint64_t sub_1D2FF3D24()
{
  v1 = 0x4965736E6563696CLL;
  v2 = 0x6574617473;
  if (*v0 != 2)
  {
    v2 = 0x4474736575716572;
  }

  if (*v0)
  {
    v1 = 0x49746E656D656C65;
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

uint64_t sub_1D2FF3DAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D2FF7110(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D2FF3DD4(uint64_t a1)
{
  v2 = sub_1D2FF6818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FF3E10(uint64_t a1)
{
  v2 = sub_1D2FF6818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LicenseRecord.StaticRepresentation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7494D8, &unk_1D30EF6C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2FF6818();
  sub_1D30E992C();
  v12 = 0;
  sub_1D30E975C();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749208, &qword_1D30EEC18);
    sub_1D2FF68C0(&qword_1EC749200, &qword_1EC749210, &protocol conformance descriptor for LicenseRecord.ElementID, MEMORY[0x1E69E6300]);
    sub_1D30E974C();
    v10[14] = *(v3 + 16);
    v10[13] = 2;
    sub_1D2FF686C();
    sub_1D30E974C();
    type metadata accessor for LicenseRecord.StaticRepresentation(0);
    v10[12] = 3;
    sub_1D30E8A2C();
    sub_1D2FF675C(&qword_1EC7491D8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D30E974C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t LicenseRecord.StaticRepresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1D30E8A2C();
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7494F0, &qword_1D30EF6D0);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for LicenseRecord.StaticRepresentation(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D2FF6818();
  sub_1D30E990C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v19 = v10;
  v20 = v6;
  v14 = v23;
  v15 = v24;
  v31 = 0;
  v16 = v12;
  *v12 = sub_1D30E969C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749208, &qword_1D30EEC18);
  v30 = 1;
  sub_1D2FF68C0(&qword_1EC749218, &qword_1EC749220, &protocol conformance descriptor for LicenseRecord.ElementID, MEMORY[0x1E69E6330]);
  sub_1D30E967C();
  *(v12 + 1) = v26;
  v28 = 2;
  sub_1D2FF695C();
  sub_1D30E967C();
  v12[16] = v29;
  v27 = 3;
  sub_1D2FF675C(&qword_1EC7491E8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v17 = v20;
  sub_1D30E967C();
  (*(v14 + 8))(v9, v15);
  (*(v21 + 32))(v16 + *(v19 + 28), v17, v4);
  sub_1D2FF69B0(v16, v22, type metadata accessor for LicenseRecord.StaticRepresentation);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_1D2FF6A18(v16, type metadata accessor for LicenseRecord.StaticRepresentation);
}

uint64_t sub_1D2FF4524(void *a1, void *a2, uint64_t a3)
{
  if (sub_1D30E89FC())
  {
    return *a1 < *a2;
  }

  return sub_1D30E89EC();
}

BOOL sub_1D2FF459C(void *a1, void *a2, uint64_t a3)
{
  if (sub_1D30E89FC())
  {
    v5 = *a2 < *a1;
  }

  else
  {
    v5 = sub_1D30E89EC();
  }

  return (v5 & 1) == 0;
}

BOOL sub_1D2FF4604(void *a1, void *a2, uint64_t a3)
{
  if (sub_1D30E89FC())
  {
    v5 = *a1 < *a2;
  }

  else
  {
    v5 = sub_1D30E89EC();
  }

  return (v5 & 1) == 0;
}

uint64_t sub_1D2FF466C(void *a1, void *a2, uint64_t a3)
{
  if (sub_1D30E89FC())
  {
    return *a2 < *a1;
  }

  return sub_1D30E89EC();
}

uint64_t sub_1D2FF46FC()
{
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B10, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8F0C();

  return v0;
}

uint64_t sub_1D2FF4800(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8F1C();
}

uint64_t sub_1D2FF48A8()
{
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B10, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D2FF68C0(&qword_1EC749218, &qword_1EC749220, &protocol conformance descriptor for LicenseRecord.ElementID, MEMORY[0x1E69E6330]);
  sub_1D30E8F0C();

  return v0;
}

uint64_t sub_1D2FF49E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B10, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D2FF68C0(&qword_1EC749218, &qword_1EC749220, &protocol conformance descriptor for LicenseRecord.ElementID, MEMORY[0x1E69E6330]);
  sub_1D30E8F0C();

  *a2 = v4;
  return result;
}

uint64_t sub_1D2FF4B30(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B10, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8ADC();
}

uint64_t sub_1D2FF4BFC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D2FF68C0(&qword_1EC749200, &qword_1EC749210, &protocol conformance descriptor for LicenseRecord.ElementID, MEMORY[0x1E69E6300]);
  sub_1D30E8F1C();
}

uint64_t sub_1D2FF4CE0()
{
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B10, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D2FF7FF8();
  sub_1D30E8F0C();
}

double sub_1D2FF4DE8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B10, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D2FF7FF8();
  sub_1D30E8F0C();

  *a2 = v4;
  a2[1] = v5;
  result = *&v6;
  a2[2] = v6;
  return result;
}

uint64_t sub_1D2FF4F00(_OWORD *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B10, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8ADC();
}

uint64_t sub_1D2FF4FDC(uint64_t a1, _OWORD *a2)
{
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D2FF8108();
  sub_1D30E8F1C();
}

uint64_t sub_1D2FF5094()
{
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B10, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D2FF675C(&qword_1EC7491E8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1D30E8F0C();
}

uint64_t sub_1D2FF51CC()
{
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B10, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D2FF675C(&qword_1EC7491E8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1D30E8F0C();
}

uint64_t sub_1D2FF5304(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1D30E8A2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1D2FF675C(&qword_1EE313B10, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8ADC();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D2FF548C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D2FF675C(&qword_1EC7491D8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1D30E8F1C();
}

uint64_t sub_1D2FF5564@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = sub_1D30E8A2C();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v20 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v1;
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B10, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8F0C();

  v19 = v25;
  v25 = v1;
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF68C0(&qword_1EC749218, &qword_1EC749220, &protocol conformance descriptor for LicenseRecord.ElementID, MEMORY[0x1E69E6330]);
  sub_1D30E8F0C();

  v4 = v25;
  v25 = v1;
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF7FF8();
  sub_1D30E8F0C();

  v17 = v26;
  v18 = v25;
  v5 = v27;
  v6 = v30;
  v15 = v29;
  v16 = v28;
  v24 = v1;
  swift_getKeyPath();
  v7 = v20;
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EC7491E8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1D30E8F0C();
  v8 = v21;

  *v8 = v19;
  *(v8 + 8) = v4;
  v9 = (v6 >> 60) & 3;
  if (v9)
  {
    if (v9 != 1)
    {
      v10 = 0;
      v12 = v22;
      v11 = v23;
      goto LABEL_7;
    }

    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v12 = v22;
  v11 = v23;
  sub_1D2FF804C(v18, v17, v5, v16, v15, v6);
LABEL_7:
  *(v8 + 16) = v10;
  v13 = type metadata accessor for LicenseRecord.StaticRepresentation(0);
  return (*(v12 + 32))(v8 + *(v13 + 28), v7, v11);
}

uint64_t *sub_1D2FF5928(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1D30E8A2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749500, &qword_1D30EF6D8);
  v11 = sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  *&v13 = v6;
  *(&v13 + 1) = v6;
  *&v14 = v11;
  *(&v14 + 1) = v11;
  v3[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v3 + 2);
  sub_1D30E8ECC();
  sub_1D30E8AFC();
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  swift_getKeyPath();
  *&v13 = a1;
  sub_1D30E8DEC();

  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  swift_getKeyPath();
  *&v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749208, &qword_1D30EEC18);
  sub_1D2FF68C0(&qword_1EC749200, &qword_1EC749210, &protocol conformance descriptor for LicenseRecord.ElementID, MEMORY[0x1E69E6300]);
  sub_1D30E8DEC();

  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  swift_getKeyPath();
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  v16 = 0x2000000000000000;
  sub_1D2FF8108();
  sub_1D30E8DEC();

  sub_1D30E8A0C();
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EC7491D8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1D30E8DEC();

  (*(v8 + 8))(v10, v7);
  return v3;
}

uint64_t sub_1D2FF5D04(uint64_t a1, uint64_t *a2)
{
  sub_1D2FE022C(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  sub_1D2FE02DC(v5, v3 + 16);
  return swift_endAccess();
}

uint64_t LicenseRecord.persistentBackingData.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  sub_1D2FE02DC(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t (*LicenseRecord.persistentBackingData.modify(uint64_t *a1))()
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

uint64_t *LicenseRecord.__allocating_init(backingData:)(__int128 *a1)
{
  v2 = swift_allocObject();
  v2[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749500, &qword_1D30EF6D8);
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
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

uint64_t *LicenseRecord.init(backingData:)(__int128 *a1)
{
  v1[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749500, &qword_1D30EF6D8);
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
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

uint64_t LicenseRecord.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper13LicenseRecord___observationRegistrar;
  v2 = sub_1D30E8B0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LicenseRecord.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper13LicenseRecord___observationRegistrar;
  v2 = sub_1D30E8B0C();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}
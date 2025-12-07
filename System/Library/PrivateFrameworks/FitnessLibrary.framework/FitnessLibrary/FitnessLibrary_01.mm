unint64_t sub_1E5AFE784()
{
  result = qword_1ED031B28;
  if (!qword_1ED031B28)
  {
    result = swift_getWitnessTable(aY_1, &type metadata for LibraryGalleryFeature.TaskIdentifier, v0, v1);
    atomic_store(result, &qword_1ED031B28);
  }

  return result;
}

uint64_t sub_1E5AFE7D8(uint64_t a1, int *a2)
{
  v2[2] = sub_1E5B3DAB4();
  v2[3] = sub_1E5B3DAA4();
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E5AF6058;

  return v6(0);
}

uint64_t sub_1E5AFE8EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5AF632C;

  return sub_1E5AFE7D8(a1, v4);
}

unint64_t sub_1E5AFE9A0()
{
  result = qword_1ED031B30;
  if (!qword_1ED031B30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryGalleryAction, &type metadata for LibraryGalleryAction, v0, v1);
    atomic_store(result, &qword_1ED031B30);
  }

  return result;
}

unint64_t sub_1E5AFE9F8()
{
  result = qword_1ED031B38;
  if (!qword_1ED031B38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryGalleryAction, &type metadata for LibraryGalleryAction, v0, v1);
    atomic_store(result, &qword_1ED031B38);
  }

  return result;
}

unint64_t sub_1E5AFEA50()
{
  result = qword_1ED031B40;
  if (!qword_1ED031B40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryGalleryState, &type metadata for LibraryGalleryState, v0, v1);
    atomic_store(result, &qword_1ED031B40);
  }

  return result;
}

unint64_t sub_1E5AFEAC8()
{
  result = qword_1ED031B48;
  if (!qword_1ED031B48)
  {
    result = swift_getWitnessTable(byte_1E5B40098, &type metadata for LibraryGalleryFeature.TaskIdentifier, v0, v1);
    atomic_store(result, &qword_1ED031B48);
  }

  return result;
}

uint64_t sub_1E5AFEB1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x796C746E65636572;
    v10 = 0xED00006465646441;
    if (a1 != 6)
    {
      v9 = 0x656E696C66666FLL;
      v10 = 0xE700000000000000;
    }

    v11 = 0xD000000000000014;
    v12 = 0x80000001E5B45B90;
    if (a1 != 4)
    {
      v11 = 0x64616F6C6E776F64;
      v12 = 0xEA00000000006465;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xE600000000000000;
    v5 = 0x736B63617473;
    if (a1 != 2)
    {
      v5 = 0x736D6172676F7270;
      v4 = 0xE800000000000000;
    }

    v6 = 0x697461746964656DLL;
    if (a1)
    {
      v3 = 0xEB00000000736E6FLL;
    }

    else
    {
      v6 = 0x7374756F6B726F77;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xED00006465646441;
        if (v7 != 0x796C746E65636572)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v7 != 0x656E696C66666FLL)
        {
LABEL_47:
          v14 = sub_1E5B3DDA4();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0x80000001E5B45B90;
      if (v7 != 0xD000000000000014)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xEA00000000006465;
      if (v7 != 0x64616F6C6E776F64)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE600000000000000;
      if (v7 != 0x736B63617473)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v7 != 0x736D6172676F7270)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEB00000000736E6FLL;
    if (v7 != 0x697461746964656DLL)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE800000000000000;
    if (v7 != 0x7374756F6B726F77)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_1E5AFEDC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6D6172676F7270;
  v3 = a1;
  v4 = 0xE700000000000000;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x74756F6B726F77;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v3 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0x80000001E5B45C10;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6B63617473;
    }

    else
    {
      v5 = 0x6D6172676F7270;
    }

    if (v3)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  v7 = 0x74756F6B726F77;
  v8 = 0x80000001E5B45C10;
  if (a2 == 2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (a2)
  {
    v2 = 0x6B63617473;
    v4 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E5B3DDA4();
  }

  return v11 & 1;
}

_WORD *LibraryGalleryState.init(layout:page:)@<X0>(_WORD *result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 2) = a2;
  return result;
}

uint64_t sub_1E5AFEF08()
{
  if (*v0)
  {
    return 1701273968;
  }

  else
  {
    return 0x74756F79616CLL;
  }
}

uint64_t sub_1E5AFEF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1E5B3DDA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701273968 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5B3DDA4();

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

uint64_t sub_1E5AFF010(uint64_t a1)
{
  v2 = sub_1E5AFF228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AFF04C(uint64_t a1)
{
  v2 = sub_1E5AFF228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryGalleryState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031B50, &qword_1E5B40100);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = *(v1 + 2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AFF228();
  sub_1E5B3DE14();
  v15 = v8;
  v14 = 0;
  sub_1E5AFBAC4();
  sub_1E5B3DD74();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_1E5AFBA70();
    sub_1E5B3DD74();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1E5AFF228()
{
  result = qword_1ED031B58;
  if (!qword_1ED031B58)
  {
    result = swift_getWitnessTable(aA, &type metadata for LibraryGalleryState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031B58);
  }

  return result;
}

uint64_t LibraryGalleryState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031B60, &qword_1E5B40108);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AFF228();
  sub_1E5B3DE04();
  if (!v2)
  {
    v16 = 0;
    sub_1E5AFC010();
    sub_1E5B3DCF4();
    v9 = v17;
    v10 = v18;
    v14 = 1;
    sub_1E5AFBF78();
    sub_1E5B3DCF4();
    (*(v6 + 8))(v8, v5);
    v11 = v15;
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static LibraryGalleryState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[2];
  v3 = a2[2];
  if ((sub_1E5B3CCB4() & 1) == 0)
  {
    return 0;
  }

  return sub_1E5AFEB1C(v2, v3);
}

uint64_t sub_1E5AFF4F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[2];
  v3 = a2[2];
  if ((sub_1E5B3CCB4() & 1) == 0)
  {
    return 0;
  }

  return sub_1E5AFEB1C(v2, v3);
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LibraryGalleryState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 3;
  v6 = v4 - 3;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryGalleryState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_1E5AFF694()
{
  result = qword_1ED031B68;
  if (!qword_1ED031B68)
  {
    result = swift_getWitnessTable(byte_1E5B40250, &type metadata for LibraryGalleryState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031B68);
  }

  return result;
}

unint64_t sub_1E5AFF6EC()
{
  result = qword_1ED031B70;
  if (!qword_1ED031B70)
  {
    result = swift_getWitnessTable(a1_0, &type metadata for LibraryGalleryState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031B70);
  }

  return result;
}

unint64_t sub_1E5AFF744()
{
  result = qword_1ED031B78;
  if (!qword_1ED031B78)
  {
    result = swift_getWitnessTable(aI_1, &type metadata for LibraryGalleryState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031B78);
  }

  return result;
}

uint64_t sub_1E5AFF798()
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

uint64_t sub_1E5AFF7CC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
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

uint64_t sub_1E5AFF800()
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

uint64_t sub_1E5AFF834()
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

uint64_t sub_1E5AFF88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x684374756F79616CLL && a2 == 0xED00006465676E61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5B3DDA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5AFF91C(uint64_t a1)
{
  v2 = sub_1E5AFFCB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AFF958(uint64_t a1)
{
  v2 = sub_1E5AFFCB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AFF9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5B3DDA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5AFFA2C(uint64_t a1)
{
  v2 = sub_1E5AFFD08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AFFA68(uint64_t a1)
{
  v2 = sub_1E5AFFD08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryGalleryAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031B80, &qword_1E5B402D0);
  v4 = *(v3 - 8);
  v15 = v3;
  v16 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031B88, &qword_1E5B402D8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AFFCB4();
  sub_1E5B3DE14();
  sub_1E5AFFD08();
  sub_1E5B3DD24();
  v17 = v11;
  sub_1E5AFBAC4();
  v12 = v15;
  sub_1E5B3DD74();
  (*(v16 + 8))(v6, v12);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1E5AFFCB4()
{
  result = qword_1ED031B90;
  if (!qword_1ED031B90)
  {
    result = swift_getWitnessTable(aA_0, &type metadata for LibraryGalleryAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031B90);
  }

  return result;
}

unint64_t sub_1E5AFFD08()
{
  result = qword_1ED031B98;
  if (!qword_1ED031B98)
  {
    result = swift_getWitnessTable(byte_1E5B40508, &type metadata for LibraryGalleryAction.LayoutChangedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031B98);
  }

  return result;
}

uint64_t LibraryGalleryAction.init(from:)@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031BA0, &qword_1E5B402E0);
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031BA8, &qword_1E5B402E8);
  v7 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AFFCB4();
  sub_1E5B3DE04();
  if (v2)
  {
    goto LABEL_5;
  }

  v19 = a1;
  v20 = v7;
  v10 = v23;
  if (*(sub_1E5B3DD04() + 16) != 1)
  {
    v12 = sub_1E5B3DC04();
    swift_allocError();
    v13 = v10;
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319C0, &qword_1E5B402F0);
    *v15 = &type metadata for LibraryGalleryAction;
    sub_1E5B3DCA4();
    sub_1E5B3DBF4();
    (*(*(v12 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v12);
    swift_willThrow();
    (*(v20 + 8))(v9, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_5:
    v17 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  sub_1E5AFFD08();
  sub_1E5B3DC94();
  v11 = v20;
  sub_1E5AFC010();
  sub_1E5B3DCF4();
  (*(v22 + 8))(v6, v4);
  (*(v11 + 8))(v9, v10);
  swift_unknownObjectRelease();
  *v21 = v24;
  v17 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t sub_1E5B00140()
{
  result = qword_1ED031BB0;
  if (!qword_1ED031BB0)
  {
    result = swift_getWitnessTable(asc_1E5B40428, &type metadata for LibraryGalleryAction.LayoutChangedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031BB0);
  }

  return result;
}

unint64_t sub_1E5B00198()
{
  result = qword_1ED031BB8;
  if (!qword_1ED031BB8)
  {
    result = swift_getWitnessTable(aI_2, &type metadata for LibraryGalleryAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031BB8);
  }

  return result;
}

unint64_t sub_1E5B001F0()
{
  result = qword_1ED031BC0;
  if (!qword_1ED031BC0)
  {
    result = swift_getWitnessTable(aY_2, &type metadata for LibraryGalleryAction.LayoutChangedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031BC0);
  }

  return result;
}

unint64_t sub_1E5B00248()
{
  result = qword_1ED031BC8;
  if (!qword_1ED031BC8)
  {
    result = swift_getWitnessTable(aQ_1, &type metadata for LibraryGalleryAction.LayoutChangedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031BC8);
  }

  return result;
}

unint64_t sub_1E5B002A0()
{
  result = qword_1ED031BD0;
  if (!qword_1ED031BD0)
  {
    result = swift_getWitnessTable(byte_1E5B40450, &type metadata for LibraryGalleryAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031BD0);
  }

  return result;
}

unint64_t sub_1E5B002F8()
{
  result = qword_1ED031BD8;
  if (!qword_1ED031BD8)
  {
    result = swift_getWitnessTable(byte_1E5B40478, &type metadata for LibraryGalleryAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031BD8);
  }

  return result;
}

uint64_t LibraryGalleryEnvironment.init(popCurrentView:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t sub_1E5B00370()
{
  v1 = 0x6168437375636F66;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x684374756F79616CLL;
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

uint64_t sub_1E5B00404@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5B01FE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5B00438(uint64_t a1)
{
  v2 = sub_1E5B00EA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B00474(uint64_t a1)
{
  v2 = sub_1E5B00EA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B004D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5064657375636F66 && a2 == 0xEB00000000656761)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5B3DDA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5B0055C(uint64_t a1)
{
  v2 = sub_1E5B00FF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B00598(uint64_t a1)
{
  v2 = sub_1E5B00FF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B005F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x756F79614C77656ELL && a2 == 0xE900000000000074)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5B3DDA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5B00680(uint64_t a1)
{
  v2 = sub_1E5B00FA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B006BC(uint64_t a1)
{
  v2 = sub_1E5B00FA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B006F8(uint64_t a1)
{
  v2 = sub_1E5B00F4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B00734(uint64_t a1)
{
  v2 = sub_1E5B00F4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B00770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701273968 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E5B3DDA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6361667265746E69 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5B3DDA4();

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

uint64_t sub_1E5B00854(uint64_t a1)
{
  v2 = sub_1E5B00EF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B00890(uint64_t a1)
{
  v2 = sub_1E5B00EF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryAction.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031BE0, &qword_1E5B405F0);
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031BE8, &qword_1E5B405F8);
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v28 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031BF0, &qword_1E5B40600);
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031BF8, &qword_1E5B40608);
  v29 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031C00, &qword_1E5B40610);
  v39 = *(v14 - 8);
  v40 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v37 = *v2;
  v17 = *(v2 + 2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B00EA4();
  sub_1E5B3DE14();
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v49 = 2;
      sub_1E5B00F4C();
      v20 = v31;
      v21 = v40;
      sub_1E5B3DD24();
      v22 = BYTE1(v37);
      v48 = v37;
      v47 = 0;
      sub_1E5AFBA70();
      v23 = v33;
      v24 = v38;
      sub_1E5B3DD74();
      if (!v24)
      {
        v46 = v22;
        v45 = 1;
        sub_1E5AEE494();
        sub_1E5B3DD74();
      }

      v25 = v32;
    }

    else
    {
      v54 = 3;
      sub_1E5B00EF8();
      v20 = v34;
      v21 = v40;
      sub_1E5B3DD24();
      v26 = BYTE1(v37);
      v53 = v37;
      v52 = 0;
      sub_1E5AFBA70();
      v23 = v36;
      v27 = v38;
      sub_1E5B3DD74();
      if (!v27)
      {
        v51 = v26;
        v50 = 1;
        sub_1E5AEE494();
        sub_1E5B3DD74();
      }

      v25 = v35;
    }

    (*(v25 + 8))(v20, v23);
  }

  else
  {
    if (!v17)
    {
      v42 = 0;
      sub_1E5B00FF4();
      v18 = v40;
      sub_1E5B3DD24();
      v41 = v37;
      sub_1E5AFBA70();
      sub_1E5B3DD74();
      (*(v29 + 8))(v13, v11);
      return (*(v39 + 8))(v16, v18);
    }

    v44 = 1;
    sub_1E5B00FA0();
    v21 = v40;
    sub_1E5B3DD24();
    v43 = v37;
    sub_1E5AFBAC4();
    sub_1E5B3DD74();
    (*(v30 + 8))(v10, v8);
  }

  return (*(v39 + 8))(v16, v21);
}

unint64_t sub_1E5B00EA4()
{
  result = qword_1ED031C08;
  if (!qword_1ED031C08)
  {
    result = swift_getWitnessTable(byte_1E5B40C1C, &type metadata for LibraryAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031C08);
  }

  return result;
}

unint64_t sub_1E5B00EF8()
{
  result = qword_1ED031C10;
  if (!qword_1ED031C10)
  {
    result = swift_getWitnessTable(byte_1E5B40BCC, &type metadata for LibraryAction.LibraryPageDisappearedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031C10);
  }

  return result;
}

unint64_t sub_1E5B00F4C()
{
  result = qword_1ED031C18;
  if (!qword_1ED031C18)
  {
    result = swift_getWitnessTable(asc_1E5B40B7C, &type metadata for LibraryAction.LibraryPageAppearedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031C18);
  }

  return result;
}

unint64_t sub_1E5B00FA0()
{
  result = qword_1ED031C20;
  if (!qword_1ED031C20)
  {
    result = swift_getWitnessTable(byte_1E5B40B2C, &type metadata for LibraryAction.LayoutChangedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031C20);
  }

  return result;
}

unint64_t sub_1E5B00FF4()
{
  result = qword_1ED031C28;
  if (!qword_1ED031C28)
  {
    result = swift_getWitnessTable(a5_3, &type metadata for LibraryAction.FocusChangedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031C28);
  }

  return result;
}

uint64_t LibraryAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031C30, &qword_1E5B40618);
  v56 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v58 = &v47 - v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031C38, &qword_1E5B40620);
  v55 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v57 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031C40, &qword_1E5B40628);
  v6 = *(v5 - 8);
  v51 = v5;
  v52 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031C48, &qword_1E5B40630);
  v50 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031C50, &unk_1E5B40638);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - v14;
  v16 = a1[3];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E5B00EA4();
  v17 = v60;
  sub_1E5B3DE04();
  if (!v17)
  {
    v47 = v11;
    v48 = v8;
    v18 = v57;
    v19 = v58;
    v49 = 0;
    v60 = v13;
    v20 = v59;
    v21 = v15;
    v22 = sub_1E5B3DD04();
    v23 = (2 * *(v22 + 16)) | 1;
    v62 = v22;
    v63 = v22 + 32;
    v64 = 0;
    v65 = v23;
    v24 = sub_1E5B00350();
    v25 = v12;
    if (v24 == 4 || v64 != v65 >> 1)
    {
      v29 = sub_1E5B3DC04();
      swift_allocError();
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319C0, &qword_1E5B402F0);
      *v31 = &type metadata for LibraryAction;
      sub_1E5B3DCA4();
      sub_1E5B3DBF4();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
      swift_willThrow();
      (*(v60 + 8))(v21, v12);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v61);
    }

    v66 = v24;
    if (v24 <= 1u)
    {
      v26 = v15;
      if (v24)
      {
        LOBYTE(v67) = 1;
        sub_1E5B00FA0();
        v40 = v48;
        v39 = v49;
        sub_1E5B3DC94();
        if (v39)
        {
LABEL_15:
          (*(v60 + 8))(v15, v25);
          goto LABEL_9;
        }

        sub_1E5AFC010();
        v43 = v51;
        sub_1E5B3DCF4();
        v44 = v60;
        (*(v52 + 8))(v40, v43);
        (*(v44 + 8))(v26, v25);
        swift_unknownObjectRelease();
        v42 = v67;
      }

      else
      {
        LOBYTE(v67) = 0;
        sub_1E5B00FF4();
        v27 = v47;
        v28 = v49;
        sub_1E5B3DC94();
        if (v28)
        {
          goto LABEL_15;
        }

        sub_1E5AFBF78();
        sub_1E5B3DCF4();
        (*(v50 + 8))(v27, v9);
        (*(v60 + 8))(v15, v25);
        swift_unknownObjectRelease();
        v42 = v67;
      }

LABEL_22:
      *v20 = v42;
      *(v20 + 2) = v66;
      return __swift_destroy_boxed_opaque_existential_1(v61);
    }

    v33 = v60;
    v34 = v15;
    if (v24 == 2)
    {
      LOBYTE(v67) = 2;
      sub_1E5B00F4C();
      v35 = v18;
      v36 = v25;
      v37 = v49;
      sub_1E5B3DC94();
      if (!v37)
      {
        v69 = 0;
        sub_1E5AFBF78();
        v38 = v53;
        sub_1E5B3DCF4();
        v46 = v67;
        v68 = 1;
        sub_1E5AEE75C();
        sub_1E5B3DCF4();
        (*(v55 + 8))(v35, v38);
LABEL_21:
        (*(v33 + 8))(v34, v25);
        swift_unknownObjectRelease();
        v42 = v46 | (v69 << 8);
        goto LABEL_22;
      }
    }

    else
    {
      LOBYTE(v67) = 3;
      sub_1E5B00EF8();
      v36 = v25;
      v41 = v49;
      sub_1E5B3DC94();
      if (!v41)
      {
        v69 = 0;
        sub_1E5AFBF78();
        v45 = v54;
        sub_1E5B3DCF4();
        v46 = v67;
        v68 = 1;
        sub_1E5AEE75C();
        sub_1E5B3DCF4();
        (*(v56 + 8))(v19, v45);
        goto LABEL_21;
      }
    }

    (*(v33 + 8))(v34, v36);
    goto LABEL_9;
  }

  return __swift_destroy_boxed_opaque_existential_1(v61);
}

uint64_t getEnumTagSinglePayload for LibraryAction(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = (a2 + 16776963) >> 24 == 255 ? 2 : 1;
    v3 = (a2 + 16776963) >> 24 ? v2 : 0;
    if (v3)
    {
      if (v3 == 2)
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776963;
        }
      }

      else
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776963;
        }
      }
    }
  }

  v6 = *(a1 + 2);
  if (v6 >= 4)
  {
    return (v6 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LibraryAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 16776963) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 16776963) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 2) = (a2 - 253) >> 16;
    if (v4)
    {
      v5 = ((a2 - 253) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    if (v4 == 2)
    {
      *(result + 3) = 0;
LABEL_13:
      if (!a2)
      {
        return result;
      }

LABEL_19:
      *(result + 2) = -a2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_1E5B01A10(unsigned __int16 *a1)
{
  result = *(a1 + 2);
  if (result >= 4)
  {
    return (*a1 | (result << 16)) - 262140;
  }

  return result;
}

uint64_t sub_1E5B01A38(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    v2 = a2 - 4;
    a2 = ((a2 - 4) >> 16) + 4;
    *result = v2;
  }

  *(result + 2) = a2;
  return result;
}

unint64_t sub_1E5B01ABC()
{
  result = qword_1ED031C58;
  if (!qword_1ED031C58)
  {
    result = swift_getWitnessTable(aU_1, &type metadata for LibraryAction.LibraryPageDisappearedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031C58);
  }

  return result;
}

unint64_t sub_1E5B01B14()
{
  result = qword_1ED031C60;
  if (!qword_1ED031C60)
  {
    result = swift_getWitnessTable(byte_1E5B4088C, &type metadata for LibraryAction.LibraryPageAppearedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031C60);
  }

  return result;
}

unint64_t sub_1E5B01B6C()
{
  result = qword_1ED031C68;
  if (!qword_1ED031C68)
  {
    result = swift_getWitnessTable(byte_1E5B40944, &type metadata for LibraryAction.LayoutChangedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031C68);
  }

  return result;
}

unint64_t sub_1E5B01BC4()
{
  result = qword_1ED031C70;
  if (!qword_1ED031C70)
  {
    result = swift_getWitnessTable(aM_3, &type metadata for LibraryAction.FocusChangedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031C70);
  }

  return result;
}

unint64_t sub_1E5B01C1C()
{
  result = qword_1ED031C78;
  if (!qword_1ED031C78)
  {
    result = swift_getWitnessTable(byte_1E5B40AB4, &type metadata for LibraryAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031C78);
  }

  return result;
}

unint64_t sub_1E5B01C74()
{
  result = qword_1ED031C80;
  if (!qword_1ED031C80)
  {
    result = swift_getWitnessTable(byte_1E5B4096C, &type metadata for LibraryAction.FocusChangedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031C80);
  }

  return result;
}

unint64_t sub_1E5B01CCC()
{
  result = qword_1ED031C88;
  if (!qword_1ED031C88)
  {
    result = swift_getWitnessTable(byte_1E5B40994, &type metadata for LibraryAction.FocusChangedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031C88);
  }

  return result;
}

unint64_t sub_1E5B01D24()
{
  result = qword_1ED031C90;
  if (!qword_1ED031C90)
  {
    result = swift_getWitnessTable(asc_1E5B408B4, &type metadata for LibraryAction.LayoutChangedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031C90);
  }

  return result;
}

unint64_t sub_1E5B01D7C()
{
  result = qword_1ED031C98;
  if (!qword_1ED031C98)
  {
    result = swift_getWitnessTable(aU_2, &type metadata for LibraryAction.LayoutChangedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031C98);
  }

  return result;
}

unint64_t sub_1E5B01DD4()
{
  result = qword_1ED031CA0;
  if (!qword_1ED031CA0)
  {
    result = swift_getWitnessTable(byte_1E5B407FC, &type metadata for LibraryAction.LibraryPageAppearedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031CA0);
  }

  return result;
}

unint64_t sub_1E5B01E2C()
{
  result = qword_1ED031CA8;
  if (!qword_1ED031CA8)
  {
    result = swift_getWitnessTable(asc_1E5B40824, &type metadata for LibraryAction.LibraryPageAppearedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031CA8);
  }

  return result;
}

unint64_t sub_1E5B01E84()
{
  result = qword_1ED031CB0;
  if (!qword_1ED031CB0)
  {
    result = swift_getWitnessTable(byte_1E5B40744, &type metadata for LibraryAction.LibraryPageDisappearedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031CB0);
  }

  return result;
}

unint64_t sub_1E5B01EDC()
{
  result = qword_1ED031CB8;
  if (!qword_1ED031CB8)
  {
    result = swift_getWitnessTable(aO5_0, &type metadata for LibraryAction.LibraryPageDisappearedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031CB8);
  }

  return result;
}

unint64_t sub_1E5B01F34()
{
  result = qword_1ED031CC0;
  if (!qword_1ED031CC0)
  {
    result = swift_getWitnessTable(a5_4, &type metadata for LibraryAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031CC0);
  }

  return result;
}

unint64_t sub_1E5B01F8C()
{
  result = qword_1ED031CC8;
  if (!qword_1ED031CC8)
  {
    result = swift_getWitnessTable(byte_1E5B40A4C, &type metadata for LibraryAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031CC8);
  }

  return result;
}

uint64_t sub_1E5B01FE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6168437375636F66 && a2 == 0xEC0000006465676ELL;
  if (v4 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x684374756F79616CLL && a2 == 0xED00006465676E61 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5B46000 == a2 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5B46020 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

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

uint64_t LibraryCanvasContentView.init(store:canvasViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *a7 = sub_1E5AEFB94;
  *(a7 + 8) = v13;
  *(a7 + 16) = 0;
  type metadata accessor for LibraryCanvasContentView(0, a5, a6, v14);

  a3(v15);
}

uint64_t sub_1E5B02250()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D18, "R~");
  sub_1E5AF13EC(&qword_1EE2C2400, &qword_1ED031D18, "R~", MEMORY[0x1E6999B78]);

  return sub_1E5B3CE44();
}

uint64_t LibraryCanvasContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v107 = sub_1E5B3CB44();
  v103 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v102 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = *(a1 - 8);
  v116 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v109 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031CD0, &qword_1E5B40C70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031CD8, &qword_1E5B40C78);
  v114 = *(a1 + 16);
  v6 = sub_1E5B3D164();
  v7 = sub_1E5B3D164();
  v8 = sub_1E5B3D774();
  v98 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v77 - v9;
  v81 = v8;
  v10 = sub_1E5B3CF34();
  v100 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v77 - v11;
  v83 = v10;
  v12 = sub_1E5B3CF34();
  v101 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031CE0, &qword_1E5B40C80);
  v15 = sub_1E5B02F64();
  v16 = sub_1E5AF13EC(&qword_1ED031D00, &qword_1ED031CD8, &qword_1E5B40C78, MEMORY[0x1E6981870]);
  v112 = *(a1 + 24);
  v129[0] = v16;
  v129[1] = v112;
  v17 = MEMORY[0x1E697F968];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697F968], v6, v129);
  v128[0] = v15;
  v128[1] = WitnessTable;
  v19 = swift_getWitnessTable(v17, v7, v128);
  v127[0] = MEMORY[0x1E6981E60];
  v127[1] = v19;
  v127[2] = MEMORY[0x1E6981E60];
  v80 = swift_getWitnessTable(MEMORY[0x1E697D6F0], v8, v127);
  v20 = MEMORY[0x1E69805D0];
  v126[0] = v80;
  v126[1] = MEMORY[0x1E69805D0];
  v21 = MEMORY[0x1E697E858];
  v82 = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v126);
  v125[0] = v82;
  v125[1] = v20;
  v22 = swift_getWitnessTable(v21, v12, v125);
  v23 = sub_1E5AF13EC(&qword_1ED031D08, &qword_1ED031CE0, &qword_1E5B40C80, MEMORY[0x1E69E6500]);
  v121 = v12;
  v122 = v14;
  v24 = v12;
  v84 = v12;
  v87 = v14;
  v123 = v22;
  v124 = v23;
  v25 = v22;
  v86 = v22;
  v26 = v23;
  v85 = v23;
  v27 = MEMORY[0x1E6981448];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v93 = OpaqueTypeMetadata2;
  v99 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v108 = &v77 - v29;
  v121 = v24;
  v122 = v14;
  v123 = v25;
  v124 = v26;
  v95 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v92 = OpaqueTypeConformance2;
  v91 = sub_1E5B03044();
  v121 = OpaqueTypeMetadata2;
  v122 = v107;
  v123 = OpaqueTypeConformance2;
  v124 = v91;
  v96 = swift_getOpaqueTypeMetadata2();
  v97 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v88 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v94 = &v77 - v33;
  v34 = v114;
  v35 = v112;
  v117 = v114;
  v118 = v112;
  v36 = v110;
  v119 = v110;
  v37 = v89;
  sub_1E5B3D764();
  v38 = v115;
  v105 = *(v115 + 16);
  v111 = v115 + 16;
  v39 = v109;
  v77 = a1;
  v105(v109, v36, a1);
  v113 = *(v38 + 80);
  v40 = v38;
  v41 = (v113 + 32) & ~v113;
  v42 = swift_allocObject();
  *(v42 + 16) = v34;
  *(v42 + 24) = v35;
  v43 = v34;
  v44 = v35;
  v78 = *(v40 + 32);
  v115 = v40 + 32;
  v78(v42 + v41, v39, a1);
  v45 = v90;
  v46 = v81;
  sub_1E5B3D554();

  (*(v98 + 8))(v37, v46);
  v47 = v39;
  v48 = v39;
  v49 = v110;
  v50 = v77;
  v51 = v105;
  v105(v48, v110, v77);
  v79 = v41;
  v52 = swift_allocObject();
  *(v52 + 16) = v43;
  *(v52 + 24) = v44;
  v53 = v78;
  v78(v52 + v41, v47, v50);
  v54 = v83;
  sub_1E5B3D454();

  (*(v100 + 8))(v45, v54);
  sub_1E5B02250();
  swift_getKeyPath();
  sub_1E5B3D904();

  v120 = v121;
  v55 = v109;
  v56 = v49;
  v57 = v49;
  v58 = v50;
  v51(v109, v56, v50);
  v59 = v79;
  v60 = swift_allocObject();
  v61 = v112;
  *(v60 + 16) = v114;
  *(v60 + 24) = v61;
  v53(v60 + v59, v55, v58);
  v62 = v84;
  v63 = v106;
  sub_1E5B3D574();

  (*(v101 + 8))(v63, v62);
  sub_1E5B02250();
  swift_getKeyPath();
  v64 = v102;
  sub_1E5B3D904();

  v105(v55, v57, v58);
  v65 = swift_allocObject();
  v66 = v112;
  *(v65 + 16) = v114;
  *(v65 + 24) = v66;
  v53(v65 + v59, v55, v58);
  v67 = v88;
  v68 = v93;
  v69 = v107;
  v70 = v92;
  v71 = v91;
  v72 = v108;
  sub_1E5B3D574();

  (*(v103 + 8))(v64, v69);
  (*(v99 + 8))(v72, v68);
  v121 = v68;
  v122 = v69;
  v123 = v70;
  v124 = v71;
  swift_getOpaqueTypeConformance2();
  v73 = v94;
  v74 = v96;
  sub_1E5AF144C();
  v75 = *(v97 + 8);
  v75(v67, v74);
  sub_1E5AF144C();
  return (v75)(v73, v74);
}

unint64_t sub_1E5B02F64()
{
  result = qword_1ED031CE8;
  if (!qword_1ED031CE8)
  {
    v5[6] = v0;
    v5[7] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031CD0, &qword_1E5B40C70);
    v4 = MEMORY[0x1E6981870];
    v5[0] = sub_1E5AF13EC(&qword_1ED031CF0, &qword_1ED031CF8, &qword_1E5B40C88, MEMORY[0x1E6981870]);
    v5[1] = sub_1E5AF13EC(&qword_1ED031D00, &qword_1ED031CD8, &qword_1E5B40C78, v4);
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v3, v5);
    atomic_store(result, &qword_1ED031CE8);
  }

  return result;
}

unint64_t sub_1E5B03044()
{
  result = qword_1ED031D10;
  if (!qword_1ED031D10)
  {
    v3 = sub_1E5B3CB44();
    result = swift_getWitnessTable(MEMORY[0x1E6969788], v3, v0, v1);
    atomic_store(result, &qword_1ED031D10);
  }

  return result;
}

uint64_t sub_1E5B0309C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a4;
  v67 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v66 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031CD8, &qword_1E5B40C78);
  v10 = sub_1E5B3D164();
  v73 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v64 - v13;
  v75 = v9;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v64 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D20, &qword_1E5B40D68);
  MEMORY[0x1EEE9AC00](v68);
  v18 = &v64 - v17;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031CF8, &qword_1E5B40C88);
  MEMORY[0x1EEE9AC00](v69);
  v20 = &v64 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031CD0, &qword_1E5B40C70);
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v64 - v22;
  State = type metadata accessor for LibraryCanvasContentLoadState(0);
  MEMORY[0x1EEE9AC00](State);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v21;
  v74 = v10;
  v26 = sub_1E5B3D164();
  v78 = *(v26 - 8);
  v79 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v77 = &v64 - v27;
  v80 = a3;
  type metadata accessor for LibraryCanvasContentView(0, a2, a3, v28);
  sub_1E5B02250();
  swift_getKeyPath();
  sub_1E5B3D904();

  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    sub_1E5B02250();
    swift_getKeyPath();
    sub_1E5B3D904();

    v39 = v83;
    v40 = sub_1E5B3D114();
    if (v39 == 1)
    {
      *v20 = v40;
      *(v20 + 1) = 0;
      v20[16] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D38, &qword_1E5B40DC0);
      sub_1E5B3CE64();
      v41 = &qword_1ED031CF8;
      v42 = &qword_1E5B40C88;
      sub_1E5B0429C(v20, v18, &qword_1ED031CF8, &qword_1E5B40C88);
      swift_storeEnumTagMultiPayload();
      v43 = MEMORY[0x1E6981870];
      sub_1E5AF13EC(&qword_1ED031CF0, &qword_1ED031CF8, &qword_1E5B40C88, MEMORY[0x1E6981870]);
      sub_1E5AF13EC(&qword_1ED031D00, &qword_1ED031CD8, &qword_1E5B40C78, v43);
      v44 = v70;
      sub_1E5B3D154();
      v45 = v20;
    }

    else
    {
      *v16 = v40;
      *(v16 + 1) = 0;
      v16[16] = 1;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D30, &qword_1E5B40D98);
      sub_1E5B03AC0(&v16[*(v46 + 44)]);
      v41 = &qword_1ED031CD8;
      v42 = &qword_1E5B40C78;
      sub_1E5B0429C(v16, v18, &qword_1ED031CD8, &qword_1E5B40C78);
      swift_storeEnumTagMultiPayload();
      v47 = MEMORY[0x1E6981870];
      sub_1E5AF13EC(&qword_1ED031CF0, &qword_1ED031CF8, &qword_1E5B40C88, MEMORY[0x1E6981870]);
      sub_1E5AF13EC(&qword_1ED031D00, &qword_1ED031CD8, &qword_1E5B40C78, v47);
      v44 = v70;
      sub_1E5B3D154();
      v45 = v16;
    }

    sub_1E5B04304(v45, v41, v42);
    v48 = v74;
    v49 = sub_1E5B02F64();
    v50 = sub_1E5AF13EC(&qword_1ED031D00, &qword_1ED031CD8, &qword_1E5B40C78, MEMORY[0x1E6981870]);
    v34 = v80;
    v82[0] = v50;
    v82[1] = v80;
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E697F968], v48, v82);
    v52 = v77;
    sub_1E5AF7058(v44, v76, v48, v49, WitnessTable);
    sub_1E5B04304(v44, &qword_1ED031CD0, &qword_1E5B40C70);
  }

  else
  {
    v29 = *v25;
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90) + 64);
    v31 = sub_1E5B3CB44();
    (*(*(v31 - 8) + 8))(&v25[v30], v31);
    v32 = *(v29 + 16);

    if (v32)
    {
      v33 = v65;
      v34 = v80;
      sub_1E5AF144C();
      v35 = v66;
      sub_1E5AF144C();
      v36 = sub_1E5AF13EC(&qword_1ED031D00, &qword_1ED031CD8, &qword_1E5B40C78, MEMORY[0x1E6981870]);
      v37 = v71;
      sub_1E5AF7150(v35, v75, a2, v36, v34);
      v38 = *(v67 + 8);
      v38(v35, a2);
      v38(v33, a2);
    }

    else
    {
      *v16 = sub_1E5B3D114();
      *(v16 + 1) = 0;
      v16[16] = 1;
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D30, &qword_1E5B40D98);
      sub_1E5B03AC0(&v16[*(v53 + 44)]);
      v54 = sub_1E5AF13EC(&qword_1ED031D00, &qword_1ED031CD8, &qword_1E5B40C78, MEMORY[0x1E6981870]);
      v37 = v71;
      v34 = v80;
      sub_1E5AF7058(v16, v75, a2, v54, v80);
      sub_1E5B04304(v16, &qword_1ED031CD8, &qword_1E5B40C78);
    }

    v86[0] = sub_1E5AF13EC(&qword_1ED031D00, &qword_1ED031CD8, &qword_1E5B40C78, MEMORY[0x1E6981870]);
    v86[1] = v34;
    v48 = v74;
    v55 = swift_getWitnessTable(MEMORY[0x1E697F968], v74, v86);
    v56 = v72;
    sub_1E5AF144C();
    v57 = sub_1E5B02F64();
    v52 = v77;
    sub_1E5AF7150(v56, v76, v48, v57, v55);
    v58 = *(v73 + 8);
    v58(v56, v48);
    v58(v37, v48);
  }

  v59 = sub_1E5B02F64();
  v85[0] = sub_1E5AF13EC(&qword_1ED031D00, &qword_1ED031CD8, &qword_1E5B40C78, MEMORY[0x1E6981870]);
  v85[1] = v34;
  v60 = MEMORY[0x1E697F968];
  v61 = swift_getWitnessTable(MEMORY[0x1E697F968], v48, v85);
  v84[0] = v59;
  v84[1] = v61;
  v62 = v79;
  swift_getWitnessTable(v60, v79, v84);
  sub_1E5AF144C();
  return (*(v78 + 8))(v52, v62);
}

uint64_t sub_1E5B03AC0@<X0>(uint64_t a2@<X8>)
{
  sub_1E5B02250();
  swift_getKeyPath();
  sub_1E5B3D904();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D40, &qword_1E5B40DE8);
  sub_1E5AF13EC(&qword_1ED031D48, &qword_1ED031D40, &qword_1E5B40DE8, MEMORY[0x1E697D658]);
  sub_1E5B3D1A4();
  MEMORY[0x1E6936190](0x62694C7974706D45, 0xED00002D79726172);
  sub_1E5B3DC24();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D50, &unk_1E5B40DF0);
  v4 = (a2 + *(result + 52));
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1E5B03CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for LibraryCanvasContentView(0, v6, v7, a4) - 8);
  return sub_1E5B03D28(v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7, a1);
}

uint64_t sub_1E5B03D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LibraryCanvasContentView(0, a2, a3, a4);
  sub_1E5B02250();
  sub_1E5B3D914();
}

uint64_t objectdestroy_2Tm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for LibraryCanvasContentView(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  sub_1E5AF0DEC(*(v4 + v7), *(v4 + v7 + 8));
  (*(*(v5 - 8) + 8))(v4 + v7 + v6[11], v5);

  return swift_deallocObject();
}

uint64_t sub_1E5B03EB8@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1E5B3D644();
  *a2 = result;
  return result;
}

uint64_t sub_1E5B03FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(void *, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_1E5B3CB44();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for LibraryCanvasContentView(0, a2, a3, v14);
  sub_1E5B02250();
  swift_getKeyPath();
  sub_1E5B3D904();

  v15 = a4(v13, a1);
  v17 = v16;
  (*(v11 + 8))(v13, v10);
  v22[0] = v15;
  v22[1] = v17;
  sub_1E5B04428();
  result = sub_1E5B3D394();
  *a5 = result;
  *(a5 + 8) = v19;
  *(a5 + 16) = v20 & 1;
  *(a5 + 24) = v21;
  return result;
}

void sub_1E5B04170(uint64_t a1)
{
  sub_1E5B041F8(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5B041F8(uint64_t a1)
{
  if (!qword_1EE2C2420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D18, "R~");
    sub_1E5AF13EC(&qword_1EE2C2400, &qword_1ED031D18, "R~", MEMORY[0x1E6999B78]);
    v1 = sub_1E5B3CE54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2C2420);
    }
  }
}

uint64_t sub_1E5B0429C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E5B04304(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1E5B04428()
{
  result = qword_1ED031D58;
  if (!qword_1ED031D58)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E61A8], MEMORY[0x1E69E6158], v0, v1);
    atomic_store(result, &qword_1ED031D58);
  }

  return result;
}

uint64_t localizedLibraryString(_:locale:comment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v7 = sub_1E5B3CB44();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1E5B3D9E4();
  v12 = MEMORY[0x1EEE9AC00](v11);
  (*(v14 + 16))(&v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v12);
  if (qword_1EE2C23D8 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE2C4020;
  (*(v8 + 16))(v10, a2, v7);
  v16 = v15;
  return sub_1E5B3DA04();
}

uint64_t sub_1E5B046D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5B3D1E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_1E5B3D1F4();
  if (sub_1E5B3D204())
  {
  }

  else
  {
    v7 = sub_1E5B3D5C4();
  }

  v8 = sub_1E5B3D2A4();
  (*(v4 + 32))(a1, v6, v3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D60, &qword_1E5B40E90);
  v10 = a1 + *(result + 36);
  *v10 = v7;
  *(v10 + 8) = v8;
  return result;
}

unint64_t sub_1E5B04800()
{
  result = qword_1ED031D68;
  if (!qword_1ED031D68)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D60, &qword_1E5B40E90);
    v4[0] = sub_1E5B0488C();
    v4[1] = sub_1E5B048E4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &qword_1ED031D68);
  }

  return result;
}

unint64_t sub_1E5B0488C()
{
  result = qword_1ED031D70;
  if (!qword_1ED031D70)
  {
    v3 = sub_1E5B3D1E4();
    result = swift_getWitnessTable(MEMORY[0x1E697C8C8], v3, v0, v1);
    atomic_store(result, &qword_1ED031D70);
  }

  return result;
}

unint64_t sub_1E5B048E4()
{
  result = qword_1ED031D78;
  if (!qword_1ED031D78)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D80, &qword_1E5B40E98);
    result = swift_getWitnessTable(MEMORY[0x1E6980468], v3, v0, v1);
    atomic_store(result, &qword_1ED031D78);
  }

  return result;
}

uint64_t LibraryCanvasContentState.init(allowedContentRatings:activeLayout:loadState:locale:page:isSubscribed:)@<X0>(uint64_t a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v13 = *a2;
  v14 = type metadata accessor for LibraryCanvasContentState(0);
  v15 = v14[9];
  *a7 = a1;
  *(a7 + 8) = v13;
  sub_1E5B04A10(a3, a7 + v14[7]);
  v16 = v14[8];
  v17 = sub_1E5B3CB44();
  result = (*(*(v17 - 8) + 32))(a7 + v16, a4, v17);
  *(a7 + 10) = a5;
  *(a7 + v15) = a6;
  return result;
}

uint64_t sub_1E5B04A10(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for LibraryCanvasContentLoadState(0);
  (*(*(State - 8) + 32))(a2, a1, State);
  return a2;
}

uint64_t LibraryCanvasContentState.loadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LibraryCanvasContentState(0) + 28);

  return sub_1E5B04B18(a1, v3);
}

uint64_t sub_1E5B04B18(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for LibraryCanvasContentLoadState(0);
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t LibraryCanvasContentState.isSubscribed.setter(char a1)
{
  result = type metadata accessor for LibraryCanvasContentState(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

unint64_t sub_1E5B04C60()
{
  v1 = *v0;
  v2 = 0x614C657669746361;
  v3 = 0x7461745364616F6CLL;
  v4 = 0x656C61636F6CLL;
  if (v1 != 4)
  {
    v4 = 0x7263736275537369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 1701273968;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_1E5B04D28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5B05F2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5B04D50(uint64_t a1)
{
  v2 = sub_1E5B05474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B04D8C(uint64_t a1)
{
  v2 = sub_1E5B05474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryCanvasContentState.withActiveLayout(_:)@<X0>(__int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = type metadata accessor for LibraryCanvasContentState(0);
  sub_1E5B05C2C(v2 + v6[7], a2 + v6[7], type metadata accessor for LibraryCanvasContentLoadState);
  v7 = v6[8];
  v8 = sub_1E5B3CB44();
  (*(*(v8 - 8) + 16))(a2 + v7, v2 + v7, v8);
  v9 = *(v2 + 10);
  v10 = v6[9];
  v11 = *(v2 + v10);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 10) = v9;
  *(a2 + v10) = v11;
}

uint64_t LibraryCanvasContentState.withLocale(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 4);
  v7 = type metadata accessor for LibraryCanvasContentState(0);
  sub_1E5B05C2C(v2 + v7[7], a2 + v7[7], type metadata accessor for LibraryCanvasContentLoadState);
  v8 = v7[8];
  v9 = sub_1E5B3CB44();
  (*(*(v9 - 8) + 16))(a2 + v8, a1, v9);
  v10 = *(v2 + 10);
  v11 = v7[9];
  v12 = *(v2 + v11);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 10) = v10;
  *(a2 + v11) = v12;
}

uint64_t LibraryCanvasContentState.withAllowedContentRatings(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = type metadata accessor for LibraryCanvasContentState(0);
  sub_1E5B05C2C(v2 + v6[7], a2 + v6[7], type metadata accessor for LibraryCanvasContentLoadState);
  v7 = v6[8];
  v8 = sub_1E5B3CB44();
  (*(*(v8 - 8) + 16))(a2 + v7, v2 + v7, v8);
  v9 = *(v2 + 10);
  v10 = v6[9];
  v11 = *(v2 + v10);
  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 10) = v9;
  *(a2 + v10) = v11;
}

uint64_t LibraryCanvasContentState.withSubscription(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 4);
  v7 = type metadata accessor for LibraryCanvasContentState(0);
  sub_1E5B05C2C(v2 + v7[7], a2 + v7[7], type metadata accessor for LibraryCanvasContentLoadState);
  v8 = v7[8];
  v9 = sub_1E5B3CB44();
  (*(*(v9 - 8) + 16))(a2 + v8, v2 + v8, v9);
  v10 = *(v2 + 10);
  v11 = v7[9];
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 10) = v10;
  *(a2 + v11) = a1;
}

uint64_t LibraryCanvasContentState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D88, &unk_1E5B40EA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B05474();
  sub_1E5B3DE14();
  v11 = *v3;
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031CE0, &qword_1E5B40C80);
  sub_1E5B05B18(&qword_1ED031D98, sub_1E5B054C8, MEMORY[0x1E69E64F0]);
  sub_1E5B3DD74();
  if (!v2)
  {
    LOWORD(v11) = *(v3 + 4);
    HIBYTE(v10) = 1;
    sub_1E5AFBAC4();
    sub_1E5B3DD74();
    LOBYTE(v11) = *(v3 + 10);
    HIBYTE(v10) = 2;
    sub_1E5AFBA70();
    sub_1E5B3DD74();
    type metadata accessor for LibraryCanvasContentState(0);
    LOBYTE(v11) = 3;
    type metadata accessor for LibraryCanvasContentLoadState(0);
    sub_1E5B05BE4(&qword_1ED031DA8, type metadata accessor for LibraryCanvasContentLoadState, protocol conformance descriptor for LibraryCanvasContentLoadState);
    sub_1E5B3DD74();
    LOBYTE(v11) = 4;
    sub_1E5B3CB44();
    sub_1E5B05BE4(&qword_1ED031AD0, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
    sub_1E5B3DD74();
    LOBYTE(v11) = 5;
    sub_1E5B3DD54();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E5B05474()
{
  result = qword_1ED031D90;
  if (!qword_1ED031D90)
  {
    result = swift_getWitnessTable(byte_1E5B41030, &type metadata for LibraryCanvasContentState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031D90);
  }

  return result;
}

unint64_t sub_1E5B054C8()
{
  result = qword_1ED031DA0;
  if (!qword_1ED031DA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentRating, &type metadata for ContentRating, v0, v1);
    atomic_store(result, &qword_1ED031DA0);
  }

  return result;
}

uint64_t LibraryCanvasContentState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_1E5B3CB44();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for LibraryCanvasContentLoadState(0);
  MEMORY[0x1EEE9AC00](State);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031DB0, &qword_1E5B40EB0);
  v30 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v10 = &v26 - v9;
  v11 = type metadata accessor for LibraryCanvasContentState(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E5B05474();
  v33 = v10;
  v15 = v35;
  sub_1E5B3DE04();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v35 = v8;
  v28 = v5;
  v16 = v30;
  v17 = v31;
  v18 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031CE0, &qword_1E5B40C80);
  v37 = 0;
  sub_1E5B05B18(&qword_1ED031DB8, sub_1E5B05B90, MEMORY[0x1E69E6510]);
  v19 = v33;
  sub_1E5B3DCF4();
  v20 = v38;
  *v13 = v38;
  v37 = 1;
  sub_1E5AFC010();
  sub_1E5B3DCF4();
  v27 = v20;
  *(v13 + 4) = v38;
  v37 = 2;
  sub_1E5AFBF78();
  sub_1E5B3DCF4();
  v13[10] = v38;
  LOBYTE(v38) = 3;
  sub_1E5B05BE4(&qword_1ED031DC8, type metadata accessor for LibraryCanvasContentLoadState, protocol conformance descriptor for LibraryCanvasContentLoadState);
  sub_1E5B3DCF4();
  v27 = v11;
  sub_1E5B04A10(v35, &v13[*(v11 + 28)]);
  LOBYTE(v38) = 4;
  sub_1E5B05BE4(&qword_1ED031AF8, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  v21 = v28;
  sub_1E5B3DCF4();
  v22 = v13;
  v23 = v27;
  (*(v17 + 32))(v22 + *(v27 + 32), v21, v18);
  LOBYTE(v38) = 5;
  LOBYTE(v21) = sub_1E5B3DCD4();
  v24 = *(v23 + 36);
  (*(v16 + 8))(v19, v34);
  *(v22 + v24) = v21 & 1;
  sub_1E5B05C2C(v22, v29, type metadata accessor for LibraryCanvasContentState);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return sub_1E5B05C94(v22, type metadata accessor for LibraryCanvasContentState);
}

uint64_t sub_1E5B05B18(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031CE0, &qword_1E5B40C80);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5B05B90()
{
  result = qword_1ED031DC0;
  if (!qword_1ED031DC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentRating, &type metadata for ContentRating, v0, v1);
    atomic_store(result, &qword_1ED031DC0);
  }

  return result;
}

uint64_t sub_1E5B05BE4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5B05C2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5B05C94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s14FitnessLibrary0B18CanvasContentStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1E5B0ED9C(*a1, *a2) & 1) != 0 && *(a1 + 8) == *(a2 + 8) && (sub_1E5B3CCB4() & 1) != 0 && (sub_1E5AFEB1C(*(a1 + 10), *(a2 + 10)) & 1) != 0 && (v4 = type metadata accessor for LibraryCanvasContentState(0), (_s14FitnessLibrary0B22CanvasContentLoadStateO2eeoiySbAC_ACtFZ_0(a1 + v4[7], a2 + v4[7])) && (MEMORY[0x1E6935290](a1 + v4[8], a2 + v4[8]))
  {
    v5 = *(a1 + v4[9]) ^ *(a2 + v4[9]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1E5B05E28()
{
  result = qword_1ED031DD0;
  if (!qword_1ED031DD0)
  {
    result = swift_getWitnessTable(aA5_0, &type metadata for LibraryCanvasContentState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031DD0);
  }

  return result;
}

unint64_t sub_1E5B05E80()
{
  result = qword_1ED031DD8;
  if (!qword_1ED031DD8)
  {
    result = swift_getWitnessTable(aY_3, &type metadata for LibraryCanvasContentState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031DD8);
  }

  return result;
}

unint64_t sub_1E5B05ED8()
{
  result = qword_1ED031DE0;
  if (!qword_1ED031DE0)
  {
    result = swift_getWitnessTable(byte_1E5B40FA0, &type metadata for LibraryCanvasContentState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031DE0);
  }

  return result;
}

uint64_t sub_1E5B05F2C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001E5B46070 == a2 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614C657669746361 && a2 == 0xEC00000074756F79 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701273968 && a2 == 0xE400000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7263736275537369 && a2 == 0xEC00000064656269)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E5B3DDA4();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E5B06150()
{
  v1 = 0x656E676953746F6ELL;
  if (*v0 == 1)
  {
    v1 = 0x6E4964656E676973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E4964656E676973;
  }
}

uint64_t sub_1E5B061B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5B06964(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5B061D8(uint64_t a1)
{
  v2 = sub_1E5B06744();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B06214(uint64_t a1)
{
  v2 = sub_1E5B06744();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B0625C(uint64_t a1)
{
  v2 = sub_1E5B06798();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B06298(uint64_t a1)
{
  v2 = sub_1E5B06798();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B062D4(uint64_t a1)
{
  v2 = sub_1E5B067EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B06310(uint64_t a1)
{
  v2 = sub_1E5B067EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B0634C(uint64_t a1)
{
  v2 = sub_1E5B06840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B06388(uint64_t a1)
{
  v2 = sub_1E5B06840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryAccountState.encode(to:)(void *a1, int a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031DE8, &qword_1E5B41080);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031DF0, &qword_1E5B41088);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031DF8, &qword_1E5B41090);
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031E00, &qword_1E5B41098);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B06744();
  sub_1E5B3DE14();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1E5B067EC();
      sub_1E5B3DD24();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1E5B06798();
      v16 = v22;
      sub_1E5B3DD24();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1E5B06840();
    sub_1E5B3DD24();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

unint64_t sub_1E5B06744()
{
  result = qword_1ED031E08;
  if (!qword_1ED031E08)
  {
    result = swift_getWitnessTable(aI_3, &type metadata for LibraryAccountState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031E08);
  }

  return result;
}

unint64_t sub_1E5B06798()
{
  result = qword_1ED031E10;
  if (!qword_1ED031E10)
  {
    result = swift_getWitnessTable(byte_1E5B41420, &type metadata for LibraryAccountState.NotSignedInCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031E10);
  }

  return result;
}

unint64_t sub_1E5B067EC()
{
  result = qword_1ED031E18;
  if (!qword_1ED031E18)
  {
    result = swift_getWitnessTable(byte_1E5B413D0, &type metadata for LibraryAccountState.SignedInAsGuestCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031E18);
  }

  return result;
}

unint64_t sub_1E5B06840()
{
  result = qword_1ED031E20;
  if (!qword_1ED031E20)
  {
    result = swift_getWitnessTable(a9, &type metadata for LibraryAccountState.SignedInCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031E20);
  }

  return result;
}

uint64_t sub_1E5B068AC@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5B06A88(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t LibraryAccountState.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5B3DDC4();
  MEMORY[0x1E6936540](a1);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B06964(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E4964656E676973 && a2 == 0xE800000000000000;
  if (v3 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E4964656E676973 && a2 == 0xEF74736575477341 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E676953746F6ELL && a2 == 0xEB000000006E4964)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

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

uint64_t sub_1E5B06A88(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031E78, &qword_1E5B414C0);
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v26 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031E80, &qword_1E5B414C8);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031E88, &qword_1E5B414D0);
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031E90, &qword_1E5B414D8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1E5B06744();
  v13 = v34;
  sub_1E5B3DE04();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = sub_1E5B3DD04();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_1E5B0034C();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_1E5B067EC();
          sub_1E5B3DC94();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v35);
          return v9;
        }

        v40 = 2;
        sub_1E5B06798();
        v24 = v11;
        sub_1E5B3DC94();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_1E5B06840();
        v24 = v11;
        sub_1E5B3DC94();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = sub_1E5B3DC04();
    swift_allocError();
    v22 = v21;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319C0, &qword_1E5B402F0) + 48);
    *v22 = &type metadata for LibraryAccountState;
    sub_1E5B3DCA4();
    sub_1E5B3DBF4();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v9;
}

unint64_t sub_1E5B06FFC()
{
  result = qword_1ED031E28;
  if (!qword_1ED031E28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryAccountState, &type metadata for LibraryAccountState, v0, v1);
    atomic_store(result, &qword_1ED031E28);
  }

  return result;
}

unint64_t sub_1E5B070A4()
{
  result = qword_1ED031E30;
  if (!qword_1ED031E30)
  {
    result = swift_getWitnessTable(byte_1E5B41358, &type metadata for LibraryAccountState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031E30);
  }

  return result;
}

unint64_t sub_1E5B070FC()
{
  result = qword_1ED031E38;
  if (!qword_1ED031E38)
  {
    result = swift_getWitnessTable(aY_4, &type metadata for LibraryAccountState.SignedInCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031E38);
  }

  return result;
}

unint64_t sub_1E5B07154()
{
  result = qword_1ED031E40;
  if (!qword_1ED031E40)
  {
    result = swift_getWitnessTable(byte_1E5B412A0, &type metadata for LibraryAccountState.SignedInCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031E40);
  }

  return result;
}

unint64_t sub_1E5B071AC()
{
  result = qword_1ED031E48;
  if (!qword_1ED031E48)
  {
    result = swift_getWitnessTable(aJ5_0, &type metadata for LibraryAccountState.SignedInAsGuestCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031E48);
  }

  return result;
}

unint64_t sub_1E5B07204()
{
  result = qword_1ED031E50;
  if (!qword_1ED031E50)
  {
    result = swift_getWitnessTable(byte_1E5B41250, &type metadata for LibraryAccountState.SignedInAsGuestCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031E50);
  }

  return result;
}

unint64_t sub_1E5B0725C()
{
  result = qword_1ED031E58;
  if (!qword_1ED031E58)
  {
    result = swift_getWitnessTable(byte_1E5B411D8, &type metadata for LibraryAccountState.NotSignedInCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031E58);
  }

  return result;
}

unint64_t sub_1E5B072B4()
{
  result = qword_1ED031E60;
  if (!qword_1ED031E60)
  {
    result = swift_getWitnessTable(a1_1, &type metadata for LibraryAccountState.NotSignedInCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031E60);
  }

  return result;
}

unint64_t sub_1E5B0730C()
{
  result = qword_1ED031E68;
  if (!qword_1ED031E68)
  {
    result = swift_getWitnessTable(asc_1E5B412C8, &type metadata for LibraryAccountState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031E68);
  }

  return result;
}

unint64_t sub_1E5B07364()
{
  result = qword_1ED031E70;
  if (!qword_1ED031E70)
  {
    result = swift_getWitnessTable(aA_1, &type metadata for LibraryAccountState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031E70);
  }

  return result;
}

uint64_t sub_1E5B073C8(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
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

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
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

  return sub_1E5B3D844();
}

uint64_t LibraryView.init(navigationViewBuilder:canvasViewBuilder:)(uint64_t (*a1)(void), uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12[0] = a5;
  v12[1] = a6;
  v12[2] = a7;
  v12[3] = a8;
  type metadata accessor for LibraryView(0, v12);
  v10 = a1();
  a3(v10);
}

uint64_t LibraryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_1E5B3D184();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A0, &qword_1E5B3E770);
  v5 = *(a1 + 24);
  v29 = *(a1 + 16);
  v30 = v5;
  swift_getTupleTypeMetadata2();
  v6 = sub_1E5B3D834();
  v7 = MEMORY[0x1E6981F48];
  swift_getWitnessTable(MEMORY[0x1E6981F48], v6);
  sub_1E5B3D704();
  sub_1E5B3CF34();
  swift_getTupleTypeMetadata2();
  v8 = sub_1E5B3D834();
  swift_getWitnessTable(v7, v8);
  v9 = sub_1E5B3D724();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981880], v9);
  v11 = sub_1E5B3CDF4();
  v28 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v15 = swift_getWitnessTable(MEMORY[0x1E697BE60], v11, v12);
  v41 = v11;
  v42 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28 - v21;
  v23 = sub_1E5B3D284();
  v37 = v29;
  v38 = v30;
  v39 = *(a1 + 32);
  v40 = v32;
  v24 = WitnessTable;
  v25 = v31;
  sub_1E5AF0C6C(v23, sub_1E5B07D00, v36, v9, v24);
  sub_1E5B3D174();
  LOBYTE(a1) = sub_1E5B3D284();
  sub_1E5B3D274();
  sub_1E5B3D274();
  if (sub_1E5B3D274() != a1)
  {
    sub_1E5B3D274();
  }

  sub_1E5B3D4E4();
  (*(v33 + 8))(v25, v34);
  (*(v28 + 8))(v14, v11);
  v41 = v11;
  v42 = v15;
  swift_getOpaqueTypeConformance2();
  sub_1E5AF144C();
  v26 = *(v17 + 8);
  v26(v19, OpaqueTypeMetadata2);
  sub_1E5AF144C();
  return (v26)(v22, OpaqueTypeMetadata2);
}

uint64_t sub_1E5B07A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22[0] = a5;
  v22[1] = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A0, &qword_1E5B3E770);
  swift_getTupleTypeMetadata2();
  v10 = sub_1E5B3D834();
  v11 = MEMORY[0x1E6981F48];
  swift_getWitnessTable(MEMORY[0x1E6981F48], v10);
  sub_1E5B3D704();
  sub_1E5B3CF34();
  swift_getTupleTypeMetadata2();
  v12 = sub_1E5B3D834();
  swift_getWitnessTable(v11, v12);
  v13 = sub_1E5B3D724();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v22 - v18;
  sub_1E5B3D7D4();
  v22[4] = a2;
  v22[5] = a3;
  v22[6] = a4;
  v22[7] = v22[0];
  v22[8] = a1;
  sub_1E5B3D714();
  swift_getWitnessTable(MEMORY[0x1E6981880], v13);
  sub_1E5AF144C();
  v20 = *(v14 + 8);
  v20(v16, v13);
  sub_1E5AF144C();
  return (v20)(v19, v13);
}

uint64_t sub_1E5B07D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a4;
  v41 = a5;
  v38 = a3;
  v39 = a1;
  v45 = a6;
  v36 = a2;
  swift_getTupleTypeMetadata2();
  v6 = sub_1E5B3D834();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981F48], v6);
  v7 = sub_1E5B3D704();
  v42 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = sub_1E5B3CF34();
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v33 - v14;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0317A0, &qword_1E5B3E770);
  v15 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - v19;
  v49 = 0;
  LOBYTE(v50) = 1;
  v21 = sub_1E5B3D284();
  sub_1E5B3D274();
  sub_1E5B3D274();
  if (sub_1E5B3D274() != v21)
  {
    sub_1E5B3D274();
  }

  sub_1E5B3D7E4();
  v22 = sub_1E5B3D4F4();
  MEMORY[0x1EEE9AC00](v22);
  v23 = v38;
  *(&v33 - 6) = v36;
  *(&v33 - 5) = v23;
  v24 = v41;
  *(&v33 - 4) = v40;
  *(&v33 - 3) = v24;
  *(&v33 - 2) = v39;
  sub_1E5B3D114();
  sub_1E5B3D6F4();
  sub_1E5B3D2B4();
  v25 = swift_getWitnessTable(MEMORY[0x1E6981870], v7);
  sub_1E5B3D534();
  (*(v42 + 8))(v9, v7);
  v51[0] = v25;
  v51[1] = MEMORY[0x1E697E5D8];
  v26 = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v51);
  v27 = v44;
  sub_1E5AF144C();
  v28 = v43;
  v34 = v20;
  v29 = *(v43 + 8);
  v29(v12, v10);
  v30 = v37;
  (*(v15 + 16))(v17, v20, v37);
  v49 = v17;
  (*(v28 + 16))(v12, v27, v10);
  v50 = v12;
  v48[0] = v30;
  v48[1] = v10;
  OpaqueTypeConformance2 = MEMORY[0x1E6981840];
  v47 = MEMORY[0x1E6981838];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v26;
  sub_1E5B073C8(&v49, 2uLL, v48);
  v29(v27, v10);
  v31 = *(v15 + 8);
  v31(v34, v30);
  v29(v12, v10);
  return (v31)(v17, v30);
}

uint64_t sub_1E5B08284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a6;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - v21;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  type metadata accessor for LibraryView(0, &v37);
  sub_1E5AF144C();
  v27 = a4;
  sub_1E5AF144C();
  (*(v16 + 16))(v19, v22, a3);
  v37 = v19;
  v28 = v33;
  (*(v10 + 16))(v33, v14, a2);
  v38 = v28;
  v36[0] = a3;
  v36[1] = a2;
  v34 = a5;
  v35 = v27;
  sub_1E5B073C8(&v37, 2uLL, v36);
  v29 = *(v10 + 8);
  v29(v14, a2);
  v30 = *(v16 + 8);
  v30(v22, a3);
  v29(v33, a2);
  return (v30)(v19, a3);
}

uint64_t sub_1E5B08510(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E5B0859C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1E5B08778(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_1E5B08A90()
{
  v1 = 0x647261646E617473;
  if (*v0 != 1)
  {
    v1 = 30324;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746361706D6F63;
  }
}

uint64_t sub_1E5B08AE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5B09B78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5B08B08(uint64_t a1)
{
  v2 = sub_1E5B090C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B08B44(uint64_t a1)
{
  v2 = sub_1E5B090C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B08B80(uint64_t a1)
{
  v2 = sub_1E5B091C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B08BBC(uint64_t a1)
{
  v2 = sub_1E5B091C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B08BF8(uint64_t a1)
{
  v2 = sub_1E5B09170();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B08C34(uint64_t a1)
{
  v2 = sub_1E5B09170();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B08C70(uint64_t a1)
{
  v2 = sub_1E5B0911C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B08CAC(uint64_t a1)
{
  v2 = sub_1E5B0911C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryInterface.hashValue.getter()
{
  v1 = *v0;
  sub_1E5B3DDC4();
  MEMORY[0x1E6936540](v1);
  return sub_1E5B3DDF4();
}

uint64_t LibraryInterface.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031E98, &qword_1E5B41560);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031EA0, &qword_1E5B41568);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031EA8, &qword_1E5B41570);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031EB0, &qword_1E5B41578);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B090C8();
  sub_1E5B3DE14();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1E5B09170();
      v9 = v21;
      sub_1E5B3DD24();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1E5B0911C();
      v9 = v24;
      sub_1E5B3DD24();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1E5B091C4();
    sub_1E5B3DD24();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1E5B090C8()
{
  result = qword_1ED031EB8;
  if (!qword_1ED031EB8)
  {
    result = swift_getWitnessTable(aA_2, &type metadata for LibraryInterface.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031EB8);
  }

  return result;
}

unint64_t sub_1E5B0911C()
{
  result = qword_1ED031EC0;
  if (!qword_1ED031EC0)
  {
    result = swift_getWitnessTable(byte_1E5B41928, &type metadata for LibraryInterface.TvCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031EC0);
  }

  return result;
}

unint64_t sub_1E5B09170()
{
  result = qword_1ED031EC8;
  if (!qword_1ED031EC8)
  {
    result = swift_getWitnessTable(byte_1E5B418D8, &type metadata for LibraryInterface.StandardCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031EC8);
  }

  return result;
}

unint64_t sub_1E5B091C4()
{
  result = qword_1ED031ED0;
  if (!qword_1ED031ED0)
  {
    result = swift_getWitnessTable(a1_2, &type metadata for LibraryInterface.CompactCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031ED0);
  }

  return result;
}

uint64_t LibraryInterface.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031ED8, &qword_1E5B41580);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031EE0, &qword_1E5B41588);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031EE8, &qword_1E5B41590);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031EF0, &unk_1E5B41598);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E5B090C8();
  v15 = v36;
  sub_1E5B3DE04();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1E5B3DD04();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1E5B0034C();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1E5B3DC04();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319C0, &qword_1E5B402F0);
      *v24 = &type metadata for LibraryInterface;
      sub_1E5B3DCA4();
      sub_1E5B3DBF4();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1E5B09170();
          sub_1E5B3DC94();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1E5B0911C();
          v26 = v17;
          sub_1E5B3DC94();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1E5B091C4();
        sub_1E5B3DC94();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t sub_1E5B0978C()
{
  result = qword_1ED031EF8;
  if (!qword_1ED031EF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryInterface, &type metadata for LibraryInterface, v0, v1);
    atomic_store(result, &qword_1ED031EF8);
  }

  return result;
}

unint64_t sub_1E5B09864()
{
  result = qword_1ED031F00;
  if (!qword_1ED031F00)
  {
    result = swift_getWitnessTable(byte_1E5B41860, &type metadata for LibraryInterface.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031F00);
  }

  return result;
}

unint64_t sub_1E5B098BC()
{
  result = qword_1ED031F08;
  if (!qword_1ED031F08)
  {
    result = swift_getWitnessTable(aQ_2, &type metadata for LibraryInterface.CompactCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031F08);
  }

  return result;
}

unint64_t sub_1E5B09914()
{
  result = qword_1ED031F10;
  if (!qword_1ED031F10)
  {
    result = swift_getWitnessTable(byte_1E5B417A8, &type metadata for LibraryInterface.CompactCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031F10);
  }

  return result;
}

unint64_t sub_1E5B0996C()
{
  result = qword_1ED031F18;
  if (!qword_1ED031F18)
  {
    result = swift_getWitnessTable(byte_1E5B41730, &type metadata for LibraryInterface.StandardCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031F18);
  }

  return result;
}

unint64_t sub_1E5B099C4()
{
  result = qword_1ED031F20;
  if (!qword_1ED031F20)
  {
    result = swift_getWitnessTable(byte_1E5B41758, &type metadata for LibraryInterface.StandardCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031F20);
  }

  return result;
}

unint64_t sub_1E5B09A1C()
{
  result = qword_1ED031F28;
  if (!qword_1ED031F28)
  {
    result = swift_getWitnessTable(byte_1E5B416E0, &type metadata for LibraryInterface.TvCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031F28);
  }

  return result;
}

unint64_t sub_1E5B09A74()
{
  result = qword_1ED031F30;
  if (!qword_1ED031F30)
  {
    result = swift_getWitnessTable(asc_1E5B41708, &type metadata for LibraryInterface.TvCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031F30);
  }

  return result;
}

unint64_t sub_1E5B09ACC()
{
  result = qword_1ED031F38;
  if (!qword_1ED031F38)
  {
    result = swift_getWitnessTable(asc_1E5B417D0, &type metadata for LibraryInterface.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031F38);
  }

  return result;
}

unint64_t sub_1E5B09B24()
{
  result = qword_1ED031F40;
  if (!qword_1ED031F40)
  {
    result = swift_getWitnessTable(a9_0, &type metadata for LibraryInterface.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031F40);
  }

  return result;
}

uint64_t sub_1E5B09B78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361706D6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x647261646E617473 && a2 == 0xE800000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 30324 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

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

uint64_t LibraryCanvasPlaceholder.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LibraryCanvasPlaceholder.secondaryIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall LibraryCanvasPlaceholder.init(identifier:secondaryIdentifier:referenceType:)(FitnessLibrary::LibraryCanvasPlaceholder *__return_ptr retstr, Swift::String identifier, Swift::String_optional secondaryIdentifier, FitnessLibrary::LibraryCanvasPlaceholderReferenceType referenceType)
{
  retstr->identifier = identifier;
  retstr->secondaryIdentifier = secondaryIdentifier;
  retstr->referenceType = referenceType;
}

unint64_t sub_1E5B09D00()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x636E657265666572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1E5B09D70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5B0A8C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5B09D98(uint64_t a1)
{
  v2 = sub_1E5B0A00C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B09DD4(uint64_t a1)
{
  v2 = sub_1E5B0A00C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryCanvasPlaceholder.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031F48, &qword_1E5B419D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v7;
  v12 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B0A00C();
  sub_1E5B3DE14();
  v16 = 0;
  v8 = v11[3];
  sub_1E5B3DD44();
  if (!v8)
  {
    v10 = v12;
    v15 = 1;
    sub_1E5B3DD34();
    v14 = v10;
    v13 = 2;
    sub_1E5B0A060();
    sub_1E5B3DD74();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E5B0A00C()
{
  result = qword_1ED031F50;
  if (!qword_1ED031F50)
  {
    result = swift_getWitnessTable(asc_1E5B41BAC, &type metadata for LibraryCanvasPlaceholder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031F50);
  }

  return result;
}

unint64_t sub_1E5B0A060()
{
  result = qword_1ED031F58;
  if (!qword_1ED031F58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryCanvasPlaceholderReferenceType, &type metadata for LibraryCanvasPlaceholderReferenceType, v0, v1);
    atomic_store(result, &qword_1ED031F58);
  }

  return result;
}

uint64_t LibraryCanvasPlaceholder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031F60, &qword_1E5B419D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B0A00C();
  sub_1E5B3DE04();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v9 = sub_1E5B3DCC4();
  v11 = v10;
  v19 = v9;
  v22 = 1;
  v17 = sub_1E5B3DCB4();
  v18 = v12;
  v20 = 2;
  sub_1E5B0A330();
  sub_1E5B3DCF4();
  (*(v6 + 8))(v8, v5);
  v13 = v21;
  v14 = v18;
  *a2 = v19;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17;
  *(a2 + 24) = v14;
  *(a2 + 32) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E5B0A330()
{
  result = qword_1ED031F68;
  if (!qword_1ED031F68)
  {
    result = swift_getWitnessTable("ٓ5\tlk", &type metadata for LibraryCanvasPlaceholderReferenceType, v0, v1);
    atomic_store(result, &qword_1ED031F68);
  }

  return result;
}

uint64_t LibraryCanvasPlaceholder.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1E5B3DA14();
  sub_1E5B3DDE4();
  if (v2)
  {
    sub_1E5B3DA14();
  }

  sub_1E5B3DA14();
}

uint64_t LibraryCanvasPlaceholder.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v4[9] = *v0;
  v4[10] = v1;
  v5 = *(v0 + 16);
  v6 = v2;
  sub_1E5B3DDC4();
  LibraryCanvasPlaceholder.hash(into:)(v4);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B0A518()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v4[9] = *v0;
  v4[10] = v1;
  v5 = *(v0 + 16);
  v6 = v2;
  sub_1E5B3DDC4();
  LibraryCanvasPlaceholder.hash(into:)(v4);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B0A578(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v5[9] = *v1;
  v5[10] = v2;
  v6 = *(v1 + 16);
  v7 = v3;
  sub_1E5B3DDC4();
  LibraryCanvasPlaceholder.hash(into:)(v5);
  return sub_1E5B3DDF4();
}

uint64_t _s14FitnessLibrary0B17CanvasPlaceholderV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v8 && (sub_1E5B3DDA4() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (v5)
    {
      v9 = v2 == v6 && v3 == v5;
      if (v9 || (sub_1E5B3DDA4() & 1) != 0)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_13:

  return sub_1E5AFEDC4(v4, v7);
}

unint64_t sub_1E5B0A6A4()
{
  result = qword_1ED031F70;
  if (!qword_1ED031F70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryCanvasPlaceholder, &type metadata for LibraryCanvasPlaceholder, v0, v1);
    atomic_store(result, &qword_1ED031F70);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E5B0A70C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1E5B0A754(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E5B0A7BC()
{
  result = qword_1ED031F78;
  if (!qword_1ED031F78)
  {
    result = swift_getWitnessTable(byte_1E5B41B84, &type metadata for LibraryCanvasPlaceholder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031F78);
  }

  return result;
}

unint64_t sub_1E5B0A814()
{
  result = qword_1ED031F80;
  if (!qword_1ED031F80)
  {
    result = swift_getWitnessTable(byte_1E5B41AF4, &type metadata for LibraryCanvasPlaceholder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031F80);
  }

  return result;
}

unint64_t sub_1E5B0A86C()
{
  result = qword_1ED031F88;
  if (!qword_1ED031F88)
  {
    result = swift_getWitnessTable(byte_1E5B41B1C, &type metadata for LibraryCanvasPlaceholder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031F88);
  }

  return result;
}

uint64_t sub_1E5B0A8C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5B46090 == a2 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006570795465)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

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

uint64_t sub_1E5B0A9F0(uint64_t a1)
{
  v2 = sub_1E5B0B404();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B0AA2C(uint64_t a1)
{
  v2 = sub_1E5B0B404();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B0AA68()
{
  v1 = 0x756F6D796E6F6E61;
  v2 = 0x65746F6D6572;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x6C61636F6CLL;
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

uint64_t sub_1E5B0AAE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5B0C734(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5B0AB08(uint64_t a1)
{
  v2 = sub_1E5B0B260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B0AB44(uint64_t a1)
{
  v2 = sub_1E5B0B260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B0AB80(uint64_t a1)
{
  v2 = sub_1E5B0B3B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B0ABBC(uint64_t a1)
{
  v2 = sub_1E5B0B3B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B0AC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5B3DDA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5B0AC84(uint64_t a1)
{
  v2 = sub_1E5B0B308();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B0ACC0(uint64_t a1)
{
  v2 = sub_1E5B0B308();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B0ACFC(uint64_t a1)
{
  v2 = sub_1E5B0B2B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B0AD38(uint64_t a1)
{
  v2 = sub_1E5B0B2B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BrowsingIdentity.encode(to:)(void *a1)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031F90, &qword_1E5B41C30);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v26 = &v22 - v3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031F98, &qword_1E5B41C38);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v27 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031FA0, &qword_1E5B41C40);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031FA8, &qword_1E5B41C48);
  v23 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031FB0, &qword_1E5B41C50);
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = v1[1];
  v22 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B0B260();
  sub_1E5B3DE14();
  switch(v14)
  {
    case 3:
      LOBYTE(v34) = 3;
      sub_1E5B0B2B4();
      v18 = v26;
      v17 = v33;
      sub_1E5B3DD24();
      (*(v28 + 8))(v18, v30);
      return (*(v32 + 8))(v13, v17);
    case 2:
      LOBYTE(v34) = 1;
      sub_1E5B0B3B0();
      v17 = v33;
      sub_1E5B3DD24();
      (*(v24 + 8))(v7, v25);
      return (*(v32 + 8))(v13, v17);
    case 1:
      LOBYTE(v34) = 0;
      sub_1E5B0B404();
      v15 = v33;
      sub_1E5B3DD24();
      (*(v23 + 8))(v10, v8);
      return (*(v32 + 8))(v13, v15);
    default:
      LOBYTE(v34) = 2;
      sub_1E5B0B308();
      v19 = v27;
      v20 = v33;
      sub_1E5B3DD24();
      v34 = v22;
      v35 = v14;
      sub_1E5B0B35C();
      v21 = v31;
      sub_1E5B3DD74();
      (*(v29 + 8))(v19, v21);
      return (*(v32 + 8))(v13, v20);
  }
}

unint64_t sub_1E5B0B260()
{
  result = qword_1ED031FB8;
  if (!qword_1ED031FB8)
  {
    result = swift_getWitnessTable(byte_1E5B421B4, &type metadata for BrowsingIdentity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031FB8);
  }

  return result;
}

unint64_t sub_1E5B0B2B4()
{
  result = qword_1ED031FC0;
  if (!qword_1ED031FC0)
  {
    result = swift_getWitnessTable(aU_3, &type metadata for BrowsingIdentity.UnknownCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031FC0);
  }

  return result;
}

unint64_t sub_1E5B0B308()
{
  result = qword_1ED031FC8;
  if (!qword_1ED031FC8)
  {
    result = swift_getWitnessTable(byte_1E5B42114, &type metadata for BrowsingIdentity.RemoteCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031FC8);
  }

  return result;
}

unint64_t sub_1E5B0B35C()
{
  result = qword_1ED031FD0;
  if (!qword_1ED031FD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryRemoteParticipant, &type metadata for LibraryRemoteParticipant, v0, v1);
    atomic_store(result, &qword_1ED031FD0);
  }

  return result;
}

unint64_t sub_1E5B0B3B0()
{
  result = qword_1ED031FD8;
  if (!qword_1ED031FD8)
  {
    result = swift_getWitnessTable(byte_1E5B420C4, &type metadata for BrowsingIdentity.LocalCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031FD8);
  }

  return result;
}

unint64_t sub_1E5B0B404()
{
  result = qword_1ED031FE0;
  if (!qword_1ED031FE0)
  {
    result = swift_getWitnessTable(aE_1, &type metadata for BrowsingIdentity.AnonymousCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031FE0);
  }

  return result;
}

uint64_t BrowsingIdentity.init(from:)@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v49 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031FE8, &qword_1E5B41C58);
  v43 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v37 - v3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031FF0, &qword_1E5B41C60);
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v46 = &v37 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031FF8, &qword_1E5B41C68);
  v42 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032000, &qword_1E5B41C70);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032008, &unk_1E5B41C78);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  v14 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E5B0B260();
  v15 = v50;
  sub_1E5B3DE04();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v56);
  }

  v37 = v7;
  v38 = v9;
  v16 = v45;
  v17 = v46;
  v39 = 0;
  v19 = v47;
  v18 = v48;
  v50 = v11;
  v20 = v49;
  v21 = sub_1E5B3DD04();
  v22 = (2 * *(v21 + 16)) | 1;
  v52 = v21;
  v53 = v21 + 32;
  v54 = 0;
  v55 = v22;
  v23 = sub_1E5B00350();
  if (v23 == 4 || v54 != v55 >> 1)
  {
    v28 = sub_1E5B3DC04();
    swift_allocError();
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319C0, &qword_1E5B402F0);
    *v30 = &type metadata for BrowsingIdentity;
    sub_1E5B3DCA4();
    sub_1E5B3DBF4();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
    (*(v50 + 8))(v13, v10);
LABEL_9:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v56);
  }

  if (v23 > 1u)
  {
    v27 = v20;
    v32 = v50;
    if (v23 == 2)
    {
      LOBYTE(v51) = 2;
      sub_1E5B0B308();
      v33 = v39;
      sub_1E5B3DC94();
      if (!v33)
      {
        sub_1E5B0BBC4();
        v36 = v41;
        sub_1E5B3DCF4();
        (*(v44 + 8))(v17, v36);
        (*(v32 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v26 = v51;
        goto LABEL_21;
      }
    }

    else
    {
      LOBYTE(v51) = 3;
      sub_1E5B0B2B4();
      v35 = v39;
      sub_1E5B3DC94();
      if (!v35)
      {
        (*(v43 + 8))(v19, v18);
        (*(v32 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v26 = xmmword_1E5B41C00;
        goto LABEL_21;
      }
    }

    (*(v32 + 8))(v13, v10);
    goto LABEL_9;
  }

  if (v23)
  {
    LOBYTE(v51) = 1;
    sub_1E5B0B3B0();
    v34 = v39;
    sub_1E5B3DC94();
    if (!v34)
    {
      (*(v42 + 8))(v6, v16);
      (*(v50 + 8))(v13, v10);
      swift_unknownObjectRelease();
      v26 = xmmword_1E5B41C10;
      v27 = v20;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  LOBYTE(v51) = 0;
  sub_1E5B0B404();
  v25 = v38;
  v24 = v39;
  sub_1E5B3DC94();
  if (v24)
  {
LABEL_15:
    (*(v50 + 8))(v13, v10);
    goto LABEL_9;
  }

  (*(v40 + 8))(v25, v37);
  (*(v50 + 8))(v13, v10);
  swift_unknownObjectRelease();
  v26 = xmmword_1E5B41C20;
  v27 = v20;
LABEL_21:
  *v27 = v26;
  return __swift_destroy_boxed_opaque_existential_1(v56);
}

unint64_t sub_1E5B0BBC4()
{
  result = qword_1ED032010;
  if (!qword_1ED032010)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryRemoteParticipant, &type metadata for LibraryRemoteParticipant, v0, v1);
    atomic_store(result, &qword_1ED032010);
  }

  return result;
}

uint64_t BrowsingIdentity.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  switch(v2)
  {
    case 3:
      v3 = 3;
      return MEMORY[0x1E6936540](v3);
    case 2:
      v3 = 1;
      return MEMORY[0x1E6936540](v3);
    case 1:
      v3 = 0;
      return MEMORY[0x1E6936540](v3);
  }

  MEMORY[0x1E6936540](2);
  if (!v2)
  {
    return sub_1E5B3DDE4();
  }

  sub_1E5B3DDE4();

  return sub_1E5B3DA14();
}

uint64_t BrowsingIdentity.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1E5B3DDC4();
  switch(v1)
  {
    case 3:
      v2 = 3;
      goto LABEL_7;
    case 2:
      v2 = 1;
      goto LABEL_7;
    case 1:
      v2 = 0;
LABEL_7:
      MEMORY[0x1E6936540](v2);
      return sub_1E5B3DDF4();
  }

  MEMORY[0x1E6936540](2);
  sub_1E5B3DDE4();
  if (v1)
  {
    sub_1E5B3DA14();
  }

  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B0BDB0(uint64_t a1)
{
  v2 = *(v1 + 8);
  switch(v2)
  {
    case 3:
      v3 = 3;
      return MEMORY[0x1E6936540](v3);
    case 2:
      v3 = 1;
      return MEMORY[0x1E6936540](v3);
    case 1:
      v3 = 0;
      return MEMORY[0x1E6936540](v3);
  }

  MEMORY[0x1E6936540](2);
  if (!v2)
  {
    return sub_1E5B3DDE4();
  }

  sub_1E5B3DDE4();

  return sub_1E5B3DA14();
}

uint64_t sub_1E5B0BE60(uint64_t a1)
{
  sub_1E5B3DDC4();
  v2 = *(v1 + 8);
  switch(v2)
  {
    case 3:
      v3 = 3;
      goto LABEL_7;
    case 2:
      v3 = 1;
      goto LABEL_7;
    case 1:
      v3 = 0;
LABEL_7:
      MEMORY[0x1E6936540](v3);
      return sub_1E5B3DDF4();
  }

  MEMORY[0x1E6936540](2);
  sub_1E5B3DDE4();
  if (v2)
  {
    sub_1E5B3DA14();
  }

  return sub_1E5B3DDF4();
}

BOOL _s14FitnessLibrary16BrowsingIdentityO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 == 3)
  {
    if (v5 != 3)
    {
      goto LABEL_12;
    }

    sub_1E5B0C8B0(*a1, 3);
    v6 = v4;
    v7 = 3;
    goto LABEL_10;
  }

  if (v3 == 2)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    sub_1E5B0C8B0(*a1, 2);
    v6 = v4;
    v7 = 2;
LABEL_10:
    sub_1E5B0C8B0(v6, v7);
    return 1;
  }

  if (v3 != 1)
  {
    if ((v5 - 1) < 3)
    {
      goto LABEL_12;
    }

    if (v3)
    {
      if (v5)
      {
        if (v2 != v4 || v3 != v5)
        {
          v11 = sub_1E5B3DDA4();
          sub_1E5B0C898(v4, v5);
          sub_1E5B0C898(v2, v3);
          sub_1E5B0C8B0(v2, v3);
          sub_1E5B0C8B0(v4, v5);
          return (v11 & 1) != 0;
        }

        sub_1E5B0C898(*a1, v3);
        sub_1E5B0C898(v2, v3);
        sub_1E5B0C8B0(v2, v3);
        v6 = v2;
        v7 = v3;
        goto LABEL_10;
      }

      sub_1E5B0C898(*a2, 0);
      sub_1E5B0C898(v2, v3);
      sub_1E5B0C8B0(v2, v3);
    }

    else
    {

      sub_1E5B0C898(v4, v5);
      sub_1E5B0C898(v2, 0);
      sub_1E5B0C8B0(v2, 0);
      sub_1E5B0C8B0(v4, v5);
      if (!v5)
      {
        sub_1E5B0C8B0(v4, 0);
        v6 = v2;
        v7 = 0;
        goto LABEL_10;
      }

      sub_1E5B0C8B0(v4, v5);
      v4 = v2;
    }

    v8 = v4;
    v9 = 0;
    goto LABEL_13;
  }

  if (v5 != 1)
  {
LABEL_12:
    sub_1E5B0C898(*a2, a2[1]);
    sub_1E5B0C898(v2, v3);
    sub_1E5B0C8B0(v2, v3);
    v8 = v4;
    v9 = v5;
LABEL_13:
    sub_1E5B0C8B0(v8, v9);
    return 0;
  }

  sub_1E5B0C8B0(*a1, 1);
  sub_1E5B0C8B0(v4, 1);
  return v5;
}

unint64_t sub_1E5B0C154()
{
  result = qword_1ED032018;
  if (!qword_1ED032018)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BrowsingIdentity, &type metadata for BrowsingIdentity, v0, v1);
    atomic_store(result, &qword_1ED032018);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14FitnessLibrary16BrowsingIdentityO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E5B0C1CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
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

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5B0C22C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_1E5B0C288(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t sub_1E5B0C318()
{
  result = qword_1ED032020;
  if (!qword_1ED032020)
  {
    result = swift_getWitnessTable("Uo5\tlO", &type metadata for BrowsingIdentity.RemoteCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032020);
  }

  return result;
}

unint64_t sub_1E5B0C370()
{
  result = qword_1ED032028;
  if (!qword_1ED032028)
  {
    result = swift_getWitnessTable(byte_1E5B4204C, &type metadata for BrowsingIdentity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032028);
  }

  return result;
}

unint64_t sub_1E5B0C3C8()
{
  result = qword_1ED032030;
  if (!qword_1ED032030)
  {
    result = swift_getWitnessTable(byte_1E5B41F6C, &type metadata for BrowsingIdentity.AnonymousCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032030);
  }

  return result;
}

unint64_t sub_1E5B0C420()
{
  result = qword_1ED032038;
  if (!qword_1ED032038)
  {
    result = swift_getWitnessTable(byte_1E5B41F94, &type metadata for BrowsingIdentity.AnonymousCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032038);
  }

  return result;
}

unint64_t sub_1E5B0C478()
{
  result = qword_1ED032040;
  if (!qword_1ED032040)
  {
    result = swift_getWitnessTable(byte_1E5B41F1C, &type metadata for BrowsingIdentity.LocalCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032040);
  }

  return result;
}

unint64_t sub_1E5B0C4D0()
{
  result = qword_1ED032048;
  if (!qword_1ED032048)
  {
    result = swift_getWitnessTable(byte_1E5B41F44, &type metadata for BrowsingIdentity.LocalCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032048);
  }

  return result;
}

unint64_t sub_1E5B0C528()
{
  result = qword_1ED032050;
  if (!qword_1ED032050)
  {
    result = swift_getWitnessTable(byte_1E5B41E64, &type metadata for BrowsingIdentity.RemoteCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032050);
  }

  return result;
}

unint64_t sub_1E5B0C580()
{
  result = qword_1ED032058;
  if (!qword_1ED032058)
  {
    result = swift_getWitnessTable(byte_1E5B41E8C, &type metadata for BrowsingIdentity.RemoteCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032058);
  }

  return result;
}

unint64_t sub_1E5B0C5D8()
{
  result = qword_1ED032060;
  if (!qword_1ED032060)
  {
    result = swift_getWitnessTable(byte_1E5B41E14, &type metadata for BrowsingIdentity.UnknownCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032060);
  }

  return result;
}

unint64_t sub_1E5B0C630()
{
  result = qword_1ED032068;
  if (!qword_1ED032068)
  {
    result = swift_getWitnessTable(byte_1E5B41E3C, &type metadata for BrowsingIdentity.UnknownCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032068);
  }

  return result;
}

unint64_t sub_1E5B0C688()
{
  result = qword_1ED032070;
  if (!qword_1ED032070)
  {
    result = swift_getWitnessTable("5{5\t8N", &type metadata for BrowsingIdentity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032070);
  }

  return result;
}

unint64_t sub_1E5B0C6E0()
{
  result = qword_1ED032078;
  if (!qword_1ED032078)
  {
    result = swift_getWitnessTable(aMw5, &type metadata for BrowsingIdentity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032078);
  }

  return result;
}

uint64_t sub_1E5B0C734(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F6D796E6F6E61 && a2 == 0xE900000000000073;
  if (v4 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

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

uint64_t sub_1E5B0C898(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

uint64_t sub_1E5B0C8B0(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

uint64_t TVLibraryPickerView.init(store:pages:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1E5AF4F0C();
  sub_1E5B3CDB4();
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  *(a4 + 40) = v11;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a4 = sub_1E5AEFB94;
  *(a4 + 8) = result;
  *(a4 + 16) = 0;
  *(a4 + 48) = a3;
  return result;
}

uint64_t TVLibraryPickerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v71 = sub_1E5B3D244();
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v64 = v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032080, &qword_1E5B42220);
  v3 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v59 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v58 = v51 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032088, &qword_1E5B42228);
  MEMORY[0x1EEE9AC00](v60);
  v8 = v51 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032090, &qword_1E5B42230);
  v62 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v74 = v51 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032098, &qword_1E5B42238);
  v67 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v75 = v51 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0320A0, &qword_1E5B42240);
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v63 = v51 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0320A8, &qword_1E5B42248);
  MEMORY[0x1EEE9AC00](v68);
  v65 = v51 - v12;
  v13 = v1[1];
  v84 = *v1;
  *v85 = v13;
  *&v85[16] = v1[2];
  v86 = *(v1 + 6);
  *v8 = sub_1E5B3D114();
  *(v8 + 1) = 0x4018000000000000;
  v8[16] = 0;
  v54 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0320B0, &unk_1E5B42250) + 44)];
  v87 = v86;
  *&v79 = v86;
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  v15 = v1[1];
  *(v14 + 16) = *v1;
  *(v14 + 32) = v15;
  *(v14 + 48) = v1[2];
  *(v14 + 64) = *(v1 + 6);
  sub_1E5B0DB74(&v87, &v81);
  sub_1E5B0DBE4(&v84, &v81);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319D0, &qword_1E5B3F2D8);
  v51[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0320B8, &qword_1E5B42280);
  v51[0] = sub_1E5AF13EC(&qword_1ED0320C0, &qword_1ED0319D0, &qword_1E5B3F2D8, MEMORY[0x1E69E6338]);
  v16 = sub_1E5AF4F0C();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0320C8, &qword_1E5B42288);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0320D0, &qword_1E5B42290);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0320D8, &qword_1E5B42298);
  v20 = type metadata accessor for TVLibraryItemCell(255);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0320E0, &qword_1E5B422A0);
  v56 = v21;
  v22 = sub_1E5B0DC1C();
  v55 = sub_1E5B0DC74();
  *&v81 = v20;
  *(&v81 + 1) = v21;
  v82 = v22;
  v83 = v55;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v81 = v19;
  *(&v81 + 1) = &type metadata for LibraryPage;
  v82 = OpaqueTypeConformance2;
  v83 = v16;
  v24 = swift_getOpaqueTypeConformance2();
  *&v81 = v18;
  *(&v81 + 1) = v24;
  v25 = swift_getOpaqueTypeConformance2();
  *&v81 = v17;
  *(&v81 + 1) = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v58;
  sub_1E5B3D744();
  v27 = *(v3 + 16);
  v28 = v59;
  v29 = v57;
  v27(v59, v26, v57);
  v30 = v54;
  v27(v54, v28, v29);
  v31 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0320F8, &qword_1E5B422A8) + 48)];
  *v31 = 0;
  v31[8] = 1;
  v32 = *(v3 + 8);
  v32(v26, v29);
  v32(v28, v29);
  v33 = sub_1E5AF13EC(&qword_1ED032100, &qword_1ED032088, &qword_1E5B42228, MEMORY[0x1E6981870]);
  v34 = v60;
  sub_1E5B3D3B4();
  sub_1E5B04304(v8, &qword_1ED032088, &qword_1E5B42228);
  v81 = *&v85[8];
  LOBYTE(v82) = v85[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032108, &unk_1E5B422B0);
  sub_1E5B3CDA4();
  v59 = v79;
  v81 = v79;
  LOBYTE(v82) = v80;
  v58 = *(&v84 + 1);
  v35 = v84;
  LODWORD(v30) = v85[0];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A68, qword_1E5B3F918);
  v36 = sub_1E5AF13EC(&qword_1EE2C23F8, &qword_1ED031A68, qword_1E5B3F918, MEMORY[0x1E6999B78]);
  v54 = v35;
  LODWORD(KeyPath) = v30;
  v52 = v36;
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  v78 = v76;
  v37 = v64;
  sub_1E5B3D234();
  *&v79 = v34;
  *(&v79 + 1) = v33;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v61;
  v40 = v56;
  v41 = v55;
  v42 = v74;
  MEMORY[0x1E6935BD0](&v81, &v78, v37, v61, v56, v38, v55);
  (*(v69 + 8))(v37, v71);

  (*(v62 + 8))(v42, v39);
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D924();

  v76 = v79;
  v77 = v80;
  *&v81 = v39;
  *(&v81 + 1) = v40;
  v82 = v38;
  v83 = v41;
  swift_getOpaqueTypeConformance2();
  sub_1E5B0DCF8();
  v43 = v63;
  v44 = v66;
  v45 = v75;
  sub_1E5B3D4D4();

  (*(v67 + 8))(v45, v44);
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  if (v81)
  {
    v46 = 0.3;
  }

  else
  {
    v46 = 1.0;
  }

  v47 = v65;
  (*(v70 + 32))(v65, v43, v72);
  *(v47 + *(v68 + 36)) = v46;
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  LOBYTE(v76) = v79;
  v48 = swift_allocObject();
  v49 = *v85;
  *(v48 + 16) = v84;
  *(v48 + 32) = v49;
  *(v48 + 48) = *&v85[16];
  *(v48 + 64) = v86;
  sub_1E5B0DBE4(&v84, &v81);
  sub_1E5B0DED8();
  sub_1E5B06FFC();
  sub_1E5B3D574();

  return sub_1E5B04304(v47, &qword_1ED0320A8, &qword_1E5B42248);
}

uint64_t sub_1E5B0D5F8@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = type metadata accessor for TVLibraryItemCell(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0320D8, &qword_1E5B42298);
  v9 = *(v8 - 8);
  v40 = v8;
  v41 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0320D0, &qword_1E5B42290);
  v12 = *(v11 - 8);
  v43 = v11;
  v44 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v37 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0320C8, &qword_1E5B42288);
  v15 = *(v14 - 8);
  v45 = v14;
  v46 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v42 = &v37 - v16;
  v17 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A68, qword_1E5B3F918);
  sub_1E5AF13EC(&qword_1EE2C23F8, &qword_1ED031A68, qword_1E5B3F918, MEMORY[0x1E6999B78]);
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  v18 = swift_allocObject();
  v19 = *(a2 + 1);
  *(v18 + 16) = *a2;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(a2 + 2);
  *(v18 + 64) = a2[6];
  *(v18 + 72) = v17;
  v7[*(v5 + 20)] = v17;
  v20 = &v7[*(v5 + 24)];
  *v20 = sub_1E5B0E1D8;
  v20[1] = v18;
  v52 = *(a2 + 3);
  v53 = *(a2 + 40);
  sub_1E5B0DBE4(a2, &v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032108, &unk_1E5B422B0);
  sub_1E5B3CDA4();
  LOBYTE(v52) = v17;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0320E0, &qword_1E5B422A0);
  v22 = sub_1E5B0DC1C();
  v23 = sub_1E5B0DC74();
  v24 = v38;
  sub_1E5B3D524();

  sub_1E5B0E1E4(v7);
  LOBYTE(v52) = v17;
  v48 = v5;
  v49 = v21;
  v50 = v22;
  v51 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_1E5AF4F0C();
  v28 = v39;
  v27 = v40;
  sub_1E5B3D434();
  v29 = v27;
  (*(v41 + 8))(v24, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032120, &qword_1E5B43450);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1E5B42210;
  v48 = 0;
  v49 = 0xE000000000000000;
  LOBYTE(v52) = v17;
  sub_1E5B3DC24();
  v31 = v49;
  *(v30 + 32) = v48;
  *(v30 + 40) = v31;
  v48 = v29;
  v49 = &type metadata for LibraryPage;
  v50 = OpaqueTypeConformance2;
  v51 = v26;
  v32 = swift_getOpaqueTypeConformance2();
  v34 = v42;
  v33 = v43;
  sub_1E5B3D3C4();

  (*(v44 + 8))(v28, v33);
  v48 = v33;
  v49 = v32;
  swift_getOpaqueTypeConformance2();
  v35 = v45;
  sub_1E5B3D3A4();
  return (*(v46 + 8))(v34, v35);
}

uint64_t sub_1E5B0DB74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319D0, &qword_1E5B3F2D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5B0DC1C()
{
  result = qword_1ED0320E8;
  if (!qword_1ED0320E8)
  {
    v3 = type metadata accessor for TVLibraryItemCell(255);
    result = swift_getWitnessTable(asc_1E5B44974, v3, v0, v1);
    atomic_store(result, &qword_1ED0320E8);
  }

  return result;
}

unint64_t sub_1E5B0DC74()
{
  result = qword_1ED0320F0;
  if (!qword_1ED0320F0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0320E0, &qword_1E5B422A0);
    v4[0] = sub_1E5AF4F0C();
    result = swift_getWitnessTable(MEMORY[0x1E69E7C78], v3, v4);
    atomic_store(result, &qword_1ED0320F0);
  }

  return result;
}

unint64_t sub_1E5B0DCF8()
{
  result = qword_1ED032110;
  if (!qword_1ED032110)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryPage, &type metadata for LibraryPage, v0, v1);
    atomic_store(result, &qword_1ED032110);
  }

  return result;
}

uint64_t sub_1E5B0DD4C(uint64_t *a1, unsigned __int8 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A68, qword_1E5B3F918);
  sub_1E5AF13EC(&qword_1EE2C23F8, &qword_1ED031A68, qword_1E5B3F918, MEMORY[0x1E6999B78]);
  sub_1E5B3CE44();
  sub_1E5B3D914();
}

uint64_t sub_1E5B0DE14(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A68, qword_1E5B3F918);
  sub_1E5AF13EC(&qword_1EE2C23F8, &qword_1ED031A68, qword_1E5B3F918, MEMORY[0x1E6999B78]);
  sub_1E5B3CE44();
  sub_1E5B3D914();
}

unint64_t sub_1E5B0DED8()
{
  result = qword_1ED032118;
  if (!qword_1ED032118)
  {
    v5[14] = v0;
    v5[15] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0320A8, &qword_1E5B42248);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032098, &qword_1E5B42238);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032090, &qword_1E5B42230);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0320E0, &qword_1E5B422A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032088, &qword_1E5B42228);
    sub_1E5AF13EC(&qword_1ED032100, &qword_1ED032088, &qword_1E5B42228, MEMORY[0x1E6981870]);
    swift_getOpaqueTypeConformance2();
    sub_1E5B0DC74();
    v5[2] = v4;
    v5[3] = &type metadata for LibraryPage;
    v5[4] = swift_getOpaqueTypeConformance2();
    v5[5] = sub_1E5B0DCF8();
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = MEMORY[0x1E697E5C0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
    atomic_store(result, &qword_1ED032118);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E5B0E0DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E5B0E124(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t objectdestroy_2Tm_1(uint64_t a1)
{
  sub_1E5AF0DEC(*(v1 + 16), *(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_1E5B0E1E4(uint64_t a1)
{
  v2 = type metadata accessor for TVLibraryItemCell(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 LibraryPageCountEnvironment.init(makeBookmarkUpdatedStream:makeCatalogUpdatedStream:makeDownloadedAssetsCountUpdateStream:makePlaylistCountUpdateStream:navigateToLibraryGalleryPage:queryLibraryPageCount:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, __n128 a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5] = a11;
  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1E5B0E280(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1E5B0E2C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E5B0E330(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = v3;
  v29[1] = a3;
  v7 = sub_1E5B3CB44();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v29 - v12;
  State = type metadata accessor for LibraryCanvasContentLoadState(0);
  MEMORY[0x1EEE9AC00](State);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  sub_1E5B0E5E0(v4, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v24 = *v16;
      v25 = v16[8];
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90);
      (*(v8 + 32))(v13, &v16[*(v26 + 64)], v7);
      v27 = sub_1E5B0E8D0(v24, a1);

      v19 = 1;
      if ((v27 & 1) == 0 || v25 != v17 || (sub_1E5B3CCB4() & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v20 = *v16;
      v21 = v16[8];
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90);
      (*(v8 + 32))(v10, &v16[*(v22 + 64)], v7);
      v23 = sub_1E5B0E8D0(v20, a1);

      v19 = 1;
      if ((v23 & 1) == 0 || v21 != v17)
      {
        v13 = v10;
        goto LABEL_13;
      }

      v13 = v10;
      if ((sub_1E5B3CCB4() & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    sub_1E5B03044();
    v19 = sub_1E5B3D974() ^ 1;
LABEL_13:
    (*(v8 + 8))(v13, v7);
    return v19 & 1;
  }

  v19 = 1;
  return v19 & 1;
}

uint64_t sub_1E5B0E5E0(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for LibraryCanvasContentLoadState(0);
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

uint64_t sub_1E5B0E644(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    v4 = (a1 + 64);
    do
    {
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v10 = *(v3 - 2);
      v9 = *(v3 - 1);
      v11 = *v3;
      v12 = *(v4 - 4) == *(v3 - 4) && *(v4 - 3) == *(v3 - 3);
      if (!v12 && (sub_1E5B3DDA4() & 1) == 0)
      {
        return 0;
      }

      if (v7)
      {
        if (!v9 || (v6 != v10 || v7 != v9) && (sub_1E5B3DDA4() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v9)
      {
        return 0;
      }

      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = 0xE700000000000000;
          v14 = 0x74756F6B726F77;
          if (v11 <= 1)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v14 = 0xD000000000000013;
          v13 = 0x80000001E5B45C10;
          if (v11 <= 1)
          {
LABEL_31:
            if (v11)
            {
              v15 = 0xE500000000000000;
              if (v14 != 0x6B63617473)
              {
                goto LABEL_5;
              }
            }

            else
            {
              v15 = 0xE700000000000000;
              if (v14 != 0x6D6172676F7270)
              {
                goto LABEL_5;
              }
            }

            goto LABEL_37;
          }
        }
      }

      else if (v8)
      {
        v13 = 0xE500000000000000;
        v14 = 0x6B63617473;
        if (v11 <= 1)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        v14 = 0x6D6172676F7270;
        if (v11 <= 1)
        {
          goto LABEL_31;
        }
      }

      if (v11 == 2)
      {
        v15 = 0xE700000000000000;
        if (v14 != 0x74756F6B726F77)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v15 = 0x80000001E5B45C10;
        if (v14 != 0xD000000000000013)
        {
          goto LABEL_5;
        }
      }

LABEL_37:
      if (v13 != v15)
      {
LABEL_5:
        v5 = sub_1E5B3DDA4();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      v4 += 40;
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1E5B0E8D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    v15 = a1;
    v16 = a2;
    while (1)
    {
      v4 = *(a1 + v3 + 48);
      v5 = *(a1 + v3 + 56);
      v7 = *(a1 + v3 + 64);
      v6 = *(a1 + v3 + 72);
      v18 = *(a1 + v3 + 80);
      v9 = *(a2 + v3 + 48);
      v8 = *(a2 + v3 + 56);
      v10 = *(a2 + v3 + 64);
      v11 = *(a2 + v3 + 72);
      v12 = *(a2 + v3 + 80);
      v19 = v8;
      if (*(a1 + v3 + 32) != *(a2 + v3 + 32) || *(a1 + v3 + 40) != *(a2 + v3 + 40))
      {
        v13 = sub_1E5B3DDA4();
        v8 = v19;
        if ((v13 & 1) == 0)
        {
          break;
        }
      }

      if (v5)
      {
        if (!v8 || (v4 != v9 || v5 != v8) && (sub_1E5B3DDA4() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      if (v6)
      {
        if (!v11 || (v7 != v10 || v6 != v11) && (sub_1E5B3DDA4() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v11)
      {
        return 0;
      }

      v17 = sub_1E5B0E644(v18, v12);

      if ((v17 & 1) == 0)
      {
        return 0;
      }

      v3 += 56;
      --v2;
      a1 = v15;
      a2 = v16;
      if (!v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t type metadata accessor for LibrarySidebarButtonStyle(uint64_t a1)
{
  result = qword_1ED032130;
  if (!qword_1ED032130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5B0EB4C(uint64_t a1)
{
  sub_1E5B0EBE8();
  if (v1 <= 0x3F)
  {
    sub_1E5B0EC38(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5B0EBE8()
{
  if (!qword_1ED032140)
  {
    v0 = sub_1E5B3CE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED032140);
    }
  }
}

void sub_1E5B0EC38(uint64_t a1)
{
  if (!qword_1ED032148)
  {
    sub_1E5B3CE14();
    v1 = sub_1E5B3CE24();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED032148);
    }
  }
}

uint64_t LibraryPageCountState.init(layout:locale:focusedLibraryPage:pageCounts:allowedContentRatings:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1E5B0FF28(MEMORY[0x1E69E7CC0]);
  v12 = type metadata accessor for LibraryPageCountState(0);
  sub_1E5B10060(a1, a6 + *(v12 + 28));
  v13 = *(v12 + 32);
  v14 = sub_1E5B3CB44();
  (*(*(v14 - 8) + 32))(a6 + v13, a2, v14);

  *(a6 + 8) = a3;
  *a6 = a4;
  *(a6 + 16) = a5;
  return result;
}

uint64_t sub_1E5B0ED9C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v25 = v9;
  v26 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_1E5B3DDC4();
    sub_1E5B3DA14();

    v16 = sub_1E5B3DDF4();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v27 = v12;
    v19 = ~v17;
    while (!*(*(a2 + 48) + v18))
    {
      v20 = 0xE500000000000000;
      v21 = 0x6E61656C63;
      if (!v15)
      {
        goto LABEL_27;
      }

LABEL_18:
      if (v15 == 1)
      {
        v22 = 0x746963696C707865;
      }

      else
      {
        v22 = 0x6669636570736E75;
      }

      if (v15 == 1)
      {
        v23 = 0xE800000000000000;
      }

      else
      {
        v23 = 0xEB00000000646569;
      }

      if (v21 == v22)
      {
        goto LABEL_28;
      }

LABEL_29:
      v24 = sub_1E5B3DDA4();

      if (v24)
      {
        goto LABEL_35;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*(a2 + 48) + v18) == 1)
    {
      v20 = 0xE800000000000000;
      v21 = 0x746963696C707865;
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    v21 = 0x6669636570736E75;
    v20 = 0xEB00000000646569;
    if (v15)
    {
      goto LABEL_18;
    }

LABEL_27:
    v23 = 0xE500000000000000;
    if (v21 != 0x6E61656C63)
    {
      goto LABEL_29;
    }

LABEL_28:
    if (v20 != v23)
    {
      goto LABEL_29;
    }

LABEL_35:
    v9 = v25;
    v3 = v26;
    v8 = v27;
  }

  while (v27);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t LibraryPageCountState.pageCounts.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

unint64_t sub_1E5B0F100()
{
  v1 = *v0;
  v2 = 0x6E756F4365676170;
  v3 = 0xD000000000000015;
  v4 = 0x74756F79616CLL;
  if (v1 != 3)
  {
    v4 = 0x656C61636F6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_1E5B0F1A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5B1050C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5B0F1CC(uint64_t a1)
{
  v2 = sub_1E5B100C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B0F208(uint64_t a1)
{
  v2 = sub_1E5B100C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryPageCountState.withAllowedContentRatings(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LibraryPageCountState(0);
  sub_1E5B101E4(v2 + *(v5 + 28), a2 + *(v5 + 28), type metadata accessor for LibraryPageCountLayout);
  v6 = *(v5 + 32);
  v7 = sub_1E5B3CB44();
  (*(*(v7 - 8) + 16))(a2 + v6, v2 + v6, v7);
  LOBYTE(v6) = *(v2 + 8);
  v8 = *v2;

  sub_1E5B0FF28(MEMORY[0x1E69E7CC0]);

  *(a2 + 8) = v6;
  *a2 = v8;
  *(a2 + 16) = a1;
}

uint64_t LibraryPageCountState.withFocusedLibraryPage(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LibraryPageCountState(0);
  sub_1E5B101E4(&v2[*(v5 + 28)], a2 + *(v5 + 28), type metadata accessor for LibraryPageCountLayout);
  v6 = *(v5 + 32);
  v7 = sub_1E5B3CB44();
  (*(*(v7 - 8) + 16))(a2 + v6, &v2[v6], v7);
  v8 = *v2;
  v9 = *(v2 + 2);

  sub_1E5B0FF28(MEMORY[0x1E69E7CC0]);

  *(a2 + 8) = a1;
  *a2 = v8;
  *(a2 + 16) = v9;
  return result;
}

uint64_t LibraryPageCountState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032150, &qword_1E5B42520);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B100C4();
  sub_1E5B3DE14();
  v11 = *v3;
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032160, &unk_1E5B42528);
  sub_1E5B10118(&qword_1ED032168, sub_1E5AFBA70, MEMORY[0x1E69E6538], MEMORY[0x1E69E5E38]);
  sub_1E5B3DD74();
  if (!v2)
  {
    LOBYTE(v11) = *(v3 + 8);
    HIBYTE(v10) = 1;
    sub_1E5AFBA70();
    sub_1E5B3DD74();
    v11 = v3[2];
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031CE0, &qword_1E5B40C80);
    sub_1E5B05B18(&qword_1ED031D98, sub_1E5B054C8, MEMORY[0x1E69E64F0]);
    sub_1E5B3DD74();
    type metadata accessor for LibraryPageCountState(0);
    LOBYTE(v11) = 3;
    type metadata accessor for LibraryPageCountLayout(0);
    sub_1E5B1019C(&qword_1ED032170, type metadata accessor for LibraryPageCountLayout, protocol conformance descriptor for LibraryPageCountLayout);
    sub_1E5B3DD74();
    LOBYTE(v11) = 4;
    sub_1E5B3CB44();
    sub_1E5B1019C(&qword_1ED031AD0, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
    sub_1E5B3DD74();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t LibraryPageCountState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_1E5B3CB44();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LibraryPageCountLayout(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032178, &qword_1E5B42538);
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v10 = v20 - v9;
  v24 = type metadata accessor for LibraryPageCountState(0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1E5B0FF28(MEMORY[0x1E69E7CC0]);
  v28 = a1;
  v29 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B100C4();
  v13 = v26;
  sub_1E5B3DE04();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    v20[1] = v6;
    v26 = v8;
    v14 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032160, &unk_1E5B42528);
    v30 = 0;
    sub_1E5B10118(&qword_1ED032180, sub_1E5AFBF78, MEMORY[0x1E69E6560], MEMORY[0x1E69E5E58]);
    sub_1E5B3DCF4();

    v16 = v31;
    v17 = v27;
    *v27 = v31;
    v30 = 1;
    sub_1E5AFBF78();
    sub_1E5B3DCF4();
    *(v17 + 8) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031CE0, &qword_1E5B40C80);
    v30 = 2;
    sub_1E5B05B18(&qword_1ED031DB8, sub_1E5B05B90, MEMORY[0x1E69E6510]);
    sub_1E5B3DCF4();
    *(v17 + 16) = v31;
    LOBYTE(v31) = 3;
    sub_1E5B1019C(&qword_1ED032188, type metadata accessor for LibraryPageCountLayout, protocol conformance descriptor for LibraryPageCountLayout);
    v18 = v26;
    sub_1E5B3DCF4();
    v29 = v16;
    v19 = v24;
    sub_1E5B10060(v18, v17 + *(v24 + 28));
    LOBYTE(v31) = 4;
    sub_1E5B1019C(&qword_1ED031AF8, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
    sub_1E5B3DCF4();
    (*(v14 + 8))(v10, v25);
    (*(v21 + 32))(v17 + *(v19 + 32), v5, v3);
    sub_1E5B101E4(v17, v22, type metadata accessor for LibraryPageCountState);
    __swift_destroy_boxed_opaque_existential_1(v28);
    return sub_1E5B1024C(v17, type metadata accessor for LibraryPageCountState);
  }
}

unint64_t sub_1E5B0FD70(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_1E5B1E10C(*(*(v3 + 48) + v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s14FitnessLibrary0B14PageCountStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1E5B0FD70(*a1, *a2) & 1) != 0 && (sub_1E5AFEB1C(*(a1 + 8), *(a2 + 8)) & 1) != 0 && (sub_1E5B0ED9C(*(a1 + 16), *(a2 + 16)))
  {
    v4 = type metadata accessor for LibraryPageCountState(0);
    if (MEMORY[0x1E69353B0](a1 + *(v4 + 28), a2 + *(v4 + 28)))
    {

      JUMPOUT(0x1E6935290);
    }
  }

  return 0;
}

unint64_t sub_1E5B0FF28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321C0, &unk_1E5B426F0);
    v3 = sub_1E5B3DC54();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1E5B1E10C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for LibraryPageCountState(uint64_t a1)
{
  result = qword_1ED032190;
  if (!qword_1ED032190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5B10060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryPageCountLayout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5B100C4()
{
  result = qword_1ED032158;
  if (!qword_1ED032158)
  {
    result = swift_getWitnessTable(byte_1E5B4269C, &type metadata for LibraryPageCountState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032158);
  }

  return result;
}

uint64_t sub_1E5B10118(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032160, &unk_1E5B42528);
    v10[0] = a2();
    v10[1] = a3;
    result = swift_getWitnessTable(a4, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5B1019C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5B101E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5B1024C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1E5B102D4(uint64_t a1)
{
  sub_1E5B10390(319);
  if (v1 <= 0x3F)
  {
    sub_1E5AE88E4(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for LibraryPageCountLayout(319);
      if (v3 <= 0x3F)
      {
        sub_1E5B3CB44();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E5B10390(uint64_t a1)
{
  if (!qword_1ED0321A0)
  {
    sub_1E5AF4F0C();
    v1 = sub_1E5B3D944();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED0321A0);
    }
  }
}

unint64_t sub_1E5B10408()
{
  result = qword_1ED0321A8;
  if (!qword_1ED0321A8)
  {
    result = swift_getWitnessTable(byte_1E5B42674, &type metadata for LibraryPageCountState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0321A8);
  }

  return result;
}

unint64_t sub_1E5B10460()
{
  result = qword_1ED0321B0;
  if (!qword_1ED0321B0)
  {
    result = swift_getWitnessTable(aU5, &type metadata for LibraryPageCountState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0321B0);
  }

  return result;
}

unint64_t sub_1E5B104B8()
{
  result = qword_1ED0321B8;
  if (!qword_1ED0321B8)
  {
    result = swift_getWitnessTable("%q5\ttI", &type metadata for LibraryPageCountState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0321B8);
  }

  return result;
}

uint64_t sub_1E5B1050C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E756F4365676170 && a2 == 0xEA00000000007374;
  if (v4 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5B45FC0 == a2 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5B46070 == a2 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

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

__n128 LibraryPageCountFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v2;
  v3 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v3;
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v5;
  return result;
}

void LibraryPageCountFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, _BYTE *a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v159 = a3;
  v161 = a2;
  v158 = a1;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A20, &unk_1E5B42720);
  v8 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v10 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v142 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v142 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v142 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v142 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v142 - v26;
  v28 = v5[3];
  v165 = v5[2];
  v166 = v28;
  v29 = v5[5];
  v167 = v5[4];
  v168 = v29;
  v30 = v5[1];
  v163 = *v5;
  v164 = v30;
  if (a4 >> 62)
  {
    if (a4 >> 62 == 1)
    {
      v31 = v161;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v162[0] = *v31;
      sub_1E5B1586C(a5, a4, isUniquelyReferenced_nonNull_native);
      *v31 = *&v162[0];
    }

    else if (a4 > 0x8000000000000001)
    {
      if (a4 ^ 0x8000000000000002 | a5)
      {
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319E8, &qword_1E5B3F448);
        v68 = v67[16];
        v69 = v67[20];
        v70 = &v10[v67[24]];
        LOBYTE(v162[0]) = 0;
        sub_1E5B116F0();
        sub_1E5B3DBC4();
        sub_1E5B3DAC4();
        v71 = *MEMORY[0x1E6999B60];
        v72 = sub_1E5B3D8E4();
        (*(*(v72 - 8) + 104))(&v10[v68], v71, v72);
        v73 = swift_allocObject();
        v74 = v166;
        v73[3] = v165;
        v73[4] = v74;
        v75 = v168;
        v73[5] = v167;
        v73[6] = v75;
        v76 = v164;
        v73[1] = v163;
        v73[2] = v76;
        *v70 = &unk_1E5B42738;
        *(v70 + 1) = v73;
        v77 = *MEMORY[0x1E6999B48];
        v78 = sub_1E5B3D8D4();
        (*(*(v78 - 8) + 104))(&v10[v69], v77, v78);
        v79 = v160;
        (*(v8 + 104))(v10, *MEMORY[0x1E6999AD8], v160);
        v80 = v159;
        v81 = *v159;
        sub_1E5B14944(&v163, v162);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_1E5AF67E4(0, v81[2] + 1, 1, v81);
        }

        v83 = v81[2];
        v82 = v81[3];
        if (v83 >= v82 >> 1)
        {
          v81 = sub_1E5AF67E4((v82 > 1), v83 + 1, 1, v81);
        }

        v81[2] = v83 + 1;
        (*(v8 + 32))(v81 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v83, v10, v79);
        *v80 = v81;
      }
    }

    else if (a4 ^ 0x8000000000000000 | a5)
    {
      if (!*(*v161 + 16))
      {
        v144 = v25;
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319E8, &qword_1E5B3F448);
        v85 = v84[16];
        v86 = v84[20];
        v87 = &v20[v84[24]];
        LOBYTE(v162[0]) = 3;
        v157 = sub_1E5B116F0();
        sub_1E5B3DBC4();
        sub_1E5B3DAE4();
        v88 = *MEMORY[0x1E6999B60];
        v89 = sub_1E5B3D8E4();
        v90 = *(v89 - 8);
        v91 = *(v90 + 104);
        v156 = v88;
        v155 = v89;
        v154 = v91;
        v153 = v90 + 104;
        (v91)(&v20[v85], v88);
        v92 = *MEMORY[0x1E6999B40];
        v93 = sub_1E5B3D8D4();
        v94 = *(v93 - 8);
        v95 = *(v94 + 104);
        v143 = v92;
        v152 = v93;
        v151 = v95;
        v150 = v94 + 104;
        (v95)(&v20[v86], v92);
        v96 = swift_allocObject();
        v97 = v166;
        v96[3] = v165;
        v96[4] = v97;
        v98 = v168;
        v96[5] = v167;
        v96[6] = v98;
        v99 = v164;
        v96[1] = v163;
        v96[2] = v99;
        *v87 = &unk_1E5B42748;
        *(v87 + 1) = v96;
        v100 = *(v8 + 104);
        v149 = *MEMORY[0x1E6999AD8];
        v148 = v100;
        v100(v20);
        v101 = *v159;
        sub_1E5B14944(&v163, v162);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_1E5AF67E4(0, *(v101 + 2) + 1, 1, v101);
        }

        v103 = *(v101 + 2);
        v102 = *(v101 + 3);
        v142 = v8 + 104;
        if (v103 >= v102 >> 1)
        {
          v101 = sub_1E5AF67E4((v102 > 1), v103 + 1, 1, v101);
        }

        *(v101 + 2) = v103 + 1;
        v105 = *(v8 + 32);
        v104 = v8 + 32;
        v146 = (*(v104 + 48) + 32) & ~*(v104 + 48);
        v145 = *(v104 + 40);
        v106 = v160;
        v147 = v105;
        v105(&v101[v146 + v145 * v103], v20, v160);
        v107 = v84[16];
        v108 = v84[20];
        v109 = &v17[v84[24]];
        LOBYTE(v162[0]) = 4;
        sub_1E5B3DBC4();
        sub_1E5B3DAE4();
        v154(&v17[v107], v156, v155);
        v151(&v17[v108], v143, v152);
        v110 = swift_allocObject();
        v111 = v166;
        v110[3] = v165;
        v110[4] = v111;
        v112 = v168;
        v110[5] = v167;
        v110[6] = v112;
        v113 = v164;
        v110[1] = v163;
        v110[2] = v113;
        *v109 = &unk_1E5B42758;
        *(v109 + 1) = v110;
        v148(v17, v149, v106);
        sub_1E5B14944(&v163, v162);
        v115 = *(v101 + 2);
        v114 = *(v101 + 3);
        if (v115 >= v114 >> 1)
        {
          v101 = sub_1E5AF67E4((v114 > 1), v115 + 1, 1, v101);
        }

        *(v101 + 2) = v115 + 1;
        v116 = v17;
        v117 = v160;
        v147(&v101[v146 + v115 * v145], v116, v160);
        v118 = v84[16];
        v119 = v84[20];
        v120 = &v14[v84[24]];
        LOBYTE(v162[0]) = 6;
        sub_1E5B3DBC4();
        sub_1E5B3DAE4();
        v154(&v14[v118], v156, v155);
        v121 = &v14[v119];
        v122 = v143;
        v151(v121, v143, v152);
        v123 = swift_allocObject();
        v124 = v166;
        v123[3] = v165;
        v123[4] = v124;
        v125 = v168;
        v123[5] = v167;
        v123[6] = v125;
        v126 = v164;
        v123[1] = v163;
        v123[2] = v126;
        *v120 = &unk_1E5B42768;
        *(v120 + 1) = v123;
        v148(v14, v149, v117);
        sub_1E5B14944(&v163, v162);
        v128 = *(v101 + 2);
        v127 = *(v101 + 3);
        if (v128 >= v127 >> 1)
        {
          v101 = sub_1E5AF67E4((v127 > 1), v128 + 1, 1, v101);
        }

        *(v101 + 2) = v128 + 1;
        v147(&v101[v146 + v128 * v145], v14, v117);
        v129 = v84[16];
        v130 = v84[20];
        v131 = v144;
        v132 = &v144[v84[24]];
        LOBYTE(v162[0]) = 5;
        sub_1E5B3DBC4();
        sub_1E5B3DAE4();
        v154(&v131[v129], v156, v155);
        v151(&v131[v130], v122, v152);
        v133 = swift_allocObject();
        v134 = v166;
        v133[3] = v165;
        v133[4] = v134;
        v135 = v168;
        v133[5] = v167;
        v133[6] = v135;
        v136 = v164;
        v133[1] = v163;
        v133[2] = v136;
        *v132 = &unk_1E5B42778;
        *(v132 + 1) = v133;
        v148(v131, v149, v117);
        sub_1E5B14944(&v163, v162);
        v138 = *(v101 + 2);
        v137 = *(v101 + 3);
        if (v138 >= v137 >> 1)
        {
          v101 = sub_1E5AF67E4((v137 > 1), v138 + 1, 1, v101);
        }

        v139 = v159;
        v140 = v161;
        v141 = v158;
        *(v101 + 2) = v138 + 1;
        v147(&v101[v146 + v138 * v145], v144, v117);
        *v139 = v101;
        v162[2] = v165;
        v162[3] = v166;
        v162[4] = v167;
        v162[5] = v168;
        v162[0] = v163;
        v162[1] = v164;
        LibraryPageCountFeature.reduce(localState:sharedState:sideEffects:action:)(v141, v140, v139, 0x8000000000000003, 0);
      }
    }

    else
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319E8, &qword_1E5B3F448);
      v51 = v50[16];
      v52 = v50[20];
      v53 = &v27[v50[24]];
      LOBYTE(v162[0]) = 1;
      sub_1E5B116F0();
      sub_1E5B3DBC4();
      sub_1E5B3DAE4();
      v54 = *MEMORY[0x1E6999B60];
      v55 = sub_1E5B3D8E4();
      (*(*(v55 - 8) + 104))(&v27[v51], v54, v55);
      v56 = swift_allocObject();
      v57 = v166;
      v56[3] = v165;
      v56[4] = v57;
      v58 = v168;
      v56[5] = v167;
      v56[6] = v58;
      v59 = v164;
      v56[1] = v163;
      v56[2] = v59;
      *v53 = &unk_1E5B42798;
      *(v53 + 1) = v56;
      v60 = *MEMORY[0x1E6999B48];
      v61 = sub_1E5B3D8D4();
      (*(*(v61 - 8) + 104))(&v27[v52], v60, v61);
      v62 = v160;
      (*(v8 + 104))(v27, *MEMORY[0x1E6999AD8], v160);
      v63 = v159;
      v64 = *v159;
      sub_1E5B14944(&v163, v162);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_1E5AF67E4(0, v64[2] + 1, 1, v64);
      }

      v66 = v64[2];
      v65 = v64[3];
      if (v66 >= v65 >> 1)
      {
        v64 = sub_1E5AF67E4((v65 > 1), v66 + 1, 1, v64);
      }

      v64[2] = v66 + 1;
      (*(v8 + 32))(v64 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v66, v27, v62);
      *v63 = v64;
    }
  }

  else
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319E8, &qword_1E5B3F448);
    v34 = v33[16];
    v35 = v33[20];
    v36 = &v23[v33[24]];
    LOBYTE(v162[0]) = 2;
    sub_1E5B116F0();
    sub_1E5B3DBC4();
    sub_1E5B3DAC4();
    v37 = *MEMORY[0x1E6999B50];
    v38 = sub_1E5B3D8E4();
    (*(*(v38 - 8) + 104))(&v23[v34], v37, v38);
    v39 = swift_allocObject();
    v40 = v166;
    *(v39 + 48) = v165;
    *(v39 + 64) = v40;
    v41 = v168;
    *(v39 + 80) = v167;
    *(v39 + 96) = v41;
    v42 = v164;
    *(v39 + 16) = v163;
    *(v39 + 32) = v42;
    *(v39 + 112) = a4;
    *v36 = &unk_1E5B42788;
    *(v36 + 1) = v39;
    v43 = *MEMORY[0x1E6999B48];
    v44 = sub_1E5B3D8D4();
    (*(*(v44 - 8) + 104))(&v23[v35], v43, v44);
    v45 = v160;
    (*(v8 + 104))(v23, *MEMORY[0x1E6999AD8], v160);
    v46 = v159;
    v47 = *v159;
    sub_1E5B14944(&v163, v162);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_1E5AF67E4(0, v47[2] + 1, 1, v47);
    }

    v49 = v47[2];
    v48 = v47[3];
    if (v49 >= v48 >> 1)
    {
      v47 = sub_1E5AF67E4((v48 > 1), v49 + 1, 1, v47);
    }

    v47[2] = v49 + 1;
    (*(v8 + 32))(v47 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v49, v23, v45);
    *v46 = v47;
    v161[8] = a4;
  }
}

unint64_t sub_1E5B116F0()
{
  result = qword_1ED0321C8;
  if (!qword_1ED0321C8)
  {
    result = swift_getWitnessTable(byte_1E5B428A0, &type metadata for LibraryPageCountFeature.TaskIdentifier, v0, v1);
    atomic_store(result, &qword_1ED0321C8);
  }

  return result;
}

uint64_t sub_1E5B11744(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_1E5B3DAB4();
  v2[5] = sub_1E5B3DAA4();
  v4 = sub_1E5B3DA84();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E5B117E0, v4, v3);
}

uint64_t sub_1E5B117E0()
{
  v4 = v0[1];
  v0[4].i64[0] = sub_1E5B3DAA4();
  v1 = swift_task_alloc();
  v0[4].i64[1] = v1;
  *(v1 + 16) = &unk_1F5F6DCC8;
  *(v1 + 24) = vextq_s8(v4, v4, 8uLL);
  v2 = swift_task_alloc();
  v0[5].i64[0] = v2;
  *v2 = v0;
  v2[1] = sub_1E5B118F8;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1E5B118F8()
{
  v2 = *v1;

  if (v0)
  {

    JUMPOUT(0x1E6936830);
  }

  v3 = *(v2 + 48);
  v4 = *(v2 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E5B16388, v3, v4);
}

uint64_t sub_1E5B11A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[35] = a4;
  v5[36] = a5;
  v5[33] = a2;
  v5[34] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F0, &qword_1E5B428F0);
  v5[37] = v6;
  v7 = *(v6 - 8);
  v5[38] = v7;
  v5[39] = *(v7 + 64);
  v5[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F8, &qword_1E5B428F8);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  sub_1E5B3DAB4();
  v5[43] = sub_1E5B3DAA4();
  v9 = sub_1E5B3DA84();

  return MEMORY[0x1EEE6DFA0](sub_1E5B11B88, v9, v8);
}

uint64_t sub_1E5B11B88()
{
  v1 = *(v0 + 272);

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (*(v0 + 272) + 32);
    v32 = **(v0 + 264);
    v33 = *(v0 + 304);
    v4 = sub_1E5B3DB04();
    v5 = *(v4 - 8);
    v31 = *(v5 + 56);
    v30 = (v5 + 48);
    v29 = (v5 + 8);
    do
    {
      v36 = v2;
      v8 = *(v0 + 336);
      v9 = *(v0 + 320);
      v10 = *(v0 + 288);
      v11 = *(v0 + 296);
      v12 = *(v0 + 280);
      v34 = *v3;
      v35 = *(v0 + 328);
      v31(v8, 1, 1, v4);
      (*(v33 + 16))(v9, v10, v11);
      v13 = v4;
      v14 = (*(v33 + 80) + 129) & ~*(v33 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      v17 = v12[4];
      v16 = v12[5];
      v18 = v12[3];
      *(v15 + 64) = v12[2];
      *(v15 + 80) = v18;
      *(v15 + 96) = v17;
      *(v15 + 112) = v16;
      v19 = v12[1];
      *(v15 + 32) = *v12;
      *(v15 + 48) = v19;
      *(v15 + 128) = v34;
      v20 = v15 + v14;
      v4 = v13;
      (*(v33 + 32))(v20, v9, v11);
      sub_1E5B15DE4(v8, v35);
      v21 = (*v30)(v35, 1, v13);
      v22 = *(v0 + 328);
      v23 = *(v0 + 280);
      if (v21 == 1)
      {
        sub_1E5B14944(v23, v0 + 16);
        sub_1E5B15E54(v22);
      }

      else
      {
        sub_1E5B14944(v23, v0 + 112);
        sub_1E5B3DAF4();
        (*v29)(v22, v4);
      }

      ++v3;
      if (*(v15 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v24 = sub_1E5B3DA84();
        v26 = v25;
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      if (v26 | v24)
      {
        v6 = v0 + 208;
        *(v0 + 208) = 0;
        *(v0 + 216) = 0;
        *(v0 + 224) = v24;
        *(v0 + 232) = v26;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 336);
      *(v0 + 240) = 1;
      *(v0 + 248) = v6;
      *(v0 + 256) = v32;
      swift_task_create();

      sub_1E5B15E54(v7);
      v2 = v36 - 1;
    }

    while (v36 != 1);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1E5B11EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  *(v6 + 56) = a5;
  v10 = (*(a4 + 80) + **(a4 + 80));
  v8 = swift_task_alloc();
  *(v6 + 40) = v8;
  *v8 = v6;
  v8[1] = sub_1E5B11FE4;

  return v10(a5);
}

uint64_t sub_1E5B11FE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 16) = *(v4 + 56) | 0x4000000000000000;
    *(v4 + 24) = a1;
    v8 = v4 + 16;
    v9 = swift_task_alloc();
    *(v8 + 32) = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F0, &qword_1E5B428F0);
    *v9 = v5;
    v9[1] = sub_1E5B16380;

    return MEMORY[0x1EEE01A40](v8, v10);
  }
}

uint64_t sub_1E5B12184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_1E5B3DAB4();
  v3[3] = sub_1E5B3DAA4();
  v8 = (*(a2 + 64) + **(a2 + 64));
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1E5AF6058;

  return v8(a3);
}

uint64_t sub_1E5B12298(uint64_t a1, int **a2)
{
  v2[14] = a1;
  v2[15] = sub_1E5B3DAB4();
  v2[16] = sub_1E5B3DAA4();
  v6 = (*a2 + **a2);
  v4 = swift_task_alloc();
  v2[17] = v4;
  *v4 = v2;
  v4[1] = sub_1E5B123AC;

  return v6(v2 + 2);
}

uint64_t sub_1E5B123AC()
{
  v2 = *v1;
  v2[18] = v0;

  v4 = sub_1E5B3DA84();
  v2[19] = v4;
  v2[20] = v3;
  if (v0)
  {
    v5 = sub_1E5B12B14;
  }

  else
  {
    v5 = sub_1E5B1250C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E5B1250C()
{
  v1 = v0[5];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_1E5B3DB34();

  v5 = sub_1E5B3DAA4();
  v0[21] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1E5B126DC;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 24, v5, v7);
}

uint64_t sub_1E5B126DC()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);

    return MEMORY[0x1EEE6DFA0](sub_1E5B127F0, v4, v5);
  }

  return result;
}

uint64_t sub_1E5B127F0()
{
  if (*(v0 + 192) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 96) = xmmword_1E5B42700;
    v3 = swift_task_alloc();
    *(v0 + 184) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F0, &qword_1E5B428F0);
    *v3 = v0;
    v3[1] = sub_1E5B12918;

    return MEMORY[0x1EEE01A40](v0 + 96, v4);
  }
}

uint64_t sub_1E5B12918()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E5B12A38, v3, v2);
}

uint64_t sub_1E5B12A38(uint64_t a1)
{
  v2 = sub_1E5B3DAA4();
  v1[21] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 7), v1[10]);
  v3 = swift_task_alloc();
  v1[22] = v3;
  *v3 = v1;
  v3[1] = sub_1E5B126DC;
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v1 + 24, v2, v4);
}

uint64_t sub_1E5B12B14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5B12B78(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = sub_1E5B3DAB4();
  v2[16] = sub_1E5B3DAA4();
  v6 = (*(a2 + 16) + **(a2 + 16));
  v4 = swift_task_alloc();
  v2[17] = v4;
  *v4 = v2;
  v4[1] = sub_1E5B12C8C;

  return v6(v2 + 2);
}

uint64_t sub_1E5B12C8C()
{
  v2 = *v1;
  v2[18] = v0;

  v4 = sub_1E5B3DA84();
  v2[19] = v4;
  v2[20] = v3;
  if (v0)
  {
    v5 = sub_1E5B16378;
  }

  else
  {
    v5 = sub_1E5B12DEC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E5B12DEC()
{
  v1 = v0[5];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_1E5B3DB34();

  v5 = sub_1E5B3DAA4();
  v0[21] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1E5B12FBC;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 24, v5, v7);
}

uint64_t sub_1E5B12FBC()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);

    return MEMORY[0x1EEE6DFA0](sub_1E5B130D0, v4, v5);
  }

  return result;
}

uint64_t sub_1E5B130D0()
{
  if (*(v0 + 192) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 96) = xmmword_1E5B42710;
    v3 = swift_task_alloc();
    *(v0 + 184) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F0, &qword_1E5B428F0);
    *v3 = v0;
    v3[1] = sub_1E5B131F8;

    return MEMORY[0x1EEE01A40](v0 + 96, v4);
  }
}

uint64_t sub_1E5B131F8()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E5B13318, v3, v2);
}

uint64_t sub_1E5B13318(uint64_t a1)
{
  v2 = sub_1E5B3DAA4();
  v1[21] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 7), v1[10]);
  v3 = swift_task_alloc();
  v1[22] = v3;
  *v3 = v1;
  v3[1] = sub_1E5B12FBC;
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v1 + 24, v2, v4);
}

uint64_t sub_1E5B133F4(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = sub_1E5B3DAB4();
  v2[18] = sub_1E5B3DAA4();
  v6 = (*(a2 + 48) + **(a2 + 48));
  v4 = swift_task_alloc();
  v2[19] = v4;
  *v4 = v2;
  v4[1] = sub_1E5B13508;

  return v6(v2 + 2);
}

uint64_t sub_1E5B13508()
{
  v2 = *v1;
  v2[20] = v0;

  v4 = sub_1E5B3DA84();
  v2[21] = v4;
  v2[22] = v3;
  if (v0)
  {
    v5 = sub_1E5B13C78;
  }

  else
  {
    v5 = sub_1E5B13668;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E5B13668()
{
  v1 = v0[5];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_1E5B3DB34();

  v5 = sub_1E5B3DAA4();
  v0[23] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_1E5B13838;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 14, v5, v7);
}

uint64_t sub_1E5B13838()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 168);
    v5 = *(v2 + 176);

    return MEMORY[0x1EEE6DFA0](sub_1E5B1394C, v4, v5);
  }

  return result;
}

uint64_t sub_1E5B1394C()
{
  if (*(v0 + 120) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 112);
    *(v0 + 96) = 0x4000000000000002;
    *(v0 + 104) = v3;
    v4 = swift_task_alloc();
    *(v0 + 200) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F0, &qword_1E5B428F0);
    *v4 = v0;
    v4[1] = sub_1E5B13A7C;

    return MEMORY[0x1EEE01A40](v0 + 96, v5);
  }
}

uint64_t sub_1E5B13A7C()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1E5B13B9C, v3, v2);
}

uint64_t sub_1E5B13B9C(uint64_t a1)
{
  v2 = sub_1E5B3DAA4();
  v1[23] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 7), v1[10]);
  v3 = swift_task_alloc();
  v1[24] = v3;
  *v3 = v1;
  v3[1] = sub_1E5B13838;
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v1 + 14, v2, v4);
}

uint64_t sub_1E5B13C78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5B13CDC(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = sub_1E5B3DAB4();
  v2[18] = sub_1E5B3DAA4();
  v6 = (*(a2 + 32) + **(a2 + 32));
  v4 = swift_task_alloc();
  v2[19] = v4;
  *v4 = v2;
  v4[1] = sub_1E5B13DF0;

  return v6(v2 + 2);
}

uint64_t sub_1E5B13DF0()
{
  v2 = *v1;
  v2[20] = v0;

  v4 = sub_1E5B3DA84();
  v2[21] = v4;
  v2[22] = v3;
  if (v0)
  {
    v5 = sub_1E5B1637C;
  }

  else
  {
    v5 = sub_1E5B13F50;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E5B13F50()
{
  v1 = v0[5];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_1E5B3DB34();

  v5 = sub_1E5B3DAA4();
  v0[23] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_1E5B14120;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 14, v5, v7);
}

uint64_t sub_1E5B14120()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 168);
    v5 = *(v2 + 176);

    return MEMORY[0x1EEE6DFA0](sub_1E5B14234, v4, v5);
  }

  return result;
}

uint64_t sub_1E5B14234()
{
  if (*(v0 + 120) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 112);
    *(v0 + 96) = 0x4000000000000005;
    *(v0 + 104) = v3;
    v4 = swift_task_alloc();
    *(v0 + 200) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F0, &qword_1E5B428F0);
    *v4 = v0;
    v4[1] = sub_1E5B14364;

    return MEMORY[0x1EEE01A40](v0 + 96, v5);
  }
}

uint64_t sub_1E5B14364()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1E5B14484, v3, v2);
}

uint64_t sub_1E5B14484(uint64_t a1)
{
  v2 = sub_1E5B3DAA4();
  v1[23] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 7), v1[10]);
  v3 = swift_task_alloc();
  v1[24] = v3;
  *v3 = v1;
  v3[1] = sub_1E5B14120;
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v1 + 14, v2, v4);
}

uint64_t sub_1E5B14560(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_1E5B3DAB4();
  v2[5] = sub_1E5B3DAA4();
  v4 = sub_1E5B3DA84();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E5B145FC, v4, v3);
}

uint64_t sub_1E5B145FC(uint64_t a1)
{
  v5 = v1[1];
  v1[4].i64[0] = sub_1E5B3DAA4();
  v2 = swift_task_alloc();
  v1[4].i64[1] = v2;
  v2[1] = vextq_s8(v5, v5, 8uLL);
  v3 = swift_task_alloc();
  v1[5].i64[0] = v3;
  *v3 = v1;
  v3[1] = sub_1E5B14708;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1E5B14708()
{
  v2 = *v1;

  if (v0)
  {

    JUMPOUT(0x1E6936830);
  }

  v3 = *(v2 + 48);
  v4 = *(v2 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E5B14848, v3, v4);
}

uint64_t sub_1E5B14848()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5B148AC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B16384;

  return sub_1E5B14560(a1, v1 + 16);
}

uint64_t sub_1E5B1497C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[34] = a3;
  v4[35] = a4;
  v4[33] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F0, &qword_1E5B428F0);
  v4[36] = v5;
  v6 = *(v5 - 8);
  v4[37] = v6;
  v4[38] = *(v6 + 64);
  v4[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F8, &qword_1E5B428F8);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  sub_1E5B3DAB4();
  v4[42] = sub_1E5B3DAA4();
  v8 = sub_1E5B3DA84();

  return MEMORY[0x1EEE6DFA0](sub_1E5B14ACC, v8, v7);
}

uint64_t sub_1E5B14ACC()
{
  v1 = v0[37];
  v2 = v0[33];

  v32 = *v2;
  v33 = v1;
  v3 = sub_1E5B3DB04();
  v4 = 0;
  v5 = *(v3 - 8);
  v31 = *(v5 + 56);
  v30 = (v5 + 48);
  v29 = (v5 + 8);
  do
  {
    v8 = v0[41];
    v35 = v0[40];
    v9 = v0[39];
    v10 = v0[35];
    v11 = v0[36];
    v12 = v0[34];
    v36 = v4;
    v34 = *(&unk_1F5F6D998 + v4 + 32);
    v31(v8, 1, 1, v3);
    (*(v33 + 16))(v9, v10, v11);
    v13 = v3;
    v14 = (*(v33 + 80) + 129) & ~*(v33 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    v17 = v12[4];
    v16 = v12[5];
    v18 = v12[3];
    *(v15 + 64) = v12[2];
    *(v15 + 80) = v18;
    *(v15 + 96) = v17;
    *(v15 + 112) = v16;
    v19 = v12[1];
    *(v15 + 32) = *v12;
    *(v15 + 48) = v19;
    *(v15 + 128) = v34;
    v20 = v15 + v14;
    v3 = v13;
    (*(v33 + 32))(v20, v9, v11);
    sub_1E5B15DE4(v8, v35);
    v21 = (*v30)(v35, 1, v13);
    v22 = v0[40];
    v23 = v0[34];
    if (v21 == 1)
    {
      sub_1E5B14944(v23, (v0 + 2));
      sub_1E5B15E54(v22);
    }

    else
    {
      sub_1E5B14944(v23, (v0 + 14));
      sub_1E5B3DAF4();
      (*v29)(v22, v3);
    }

    if (*(v15 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v24 = sub_1E5B3DA84();
      v26 = v25;
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    if (v26 | v24)
    {
      v6 = v0 + 26;
      v0[26] = 0;
      v0[27] = 0;
      v0[28] = v24;
      v0[29] = v26;
    }

    else
    {
      v6 = 0;
    }

    ++v4;
    v7 = v0[41];
    v0[30] = 1;
    v0[31] = v6;
    v0[32] = v32;
    swift_task_create();

    sub_1E5B15E54(v7);
  }

  while (v36 != 5);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1E5B14E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  *(v6 + 56) = a5;
  v10 = (*(a4 + 80) + **(a4 + 80));
  v8 = swift_task_alloc();
  *(v6 + 40) = v8;
  *v8 = v6;
  v8[1] = sub_1E5B14F28;

  return v10(a5);
}

uint64_t sub_1E5B14F28(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 16) = *(v4 + 56) | 0x4000000000000000;
    *(v4 + 24) = a1;
    v8 = v4 + 16;
    v9 = swift_task_alloc();
    *(v8 + 32) = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F0, &qword_1E5B428F0);
    *v9 = v5;
    v9[1] = sub_1E5B150C8;

    return MEMORY[0x1EEE01A40](v8, v10);
  }
}

uint64_t sub_1E5B150C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E5B151D0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B16384;

  return sub_1E5B12298(a1, (v1 + 16));
}

uint64_t sub_1E5B15268(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B16384;

  return sub_1E5B12B78(a1, v1 + 16);
}

uint64_t sub_1E5B15300(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B16384;

  return sub_1E5B133F4(a1, v1 + 16);
}

uint64_t sub_1E5B15398(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B16384;

  return sub_1E5B13CDC(a1, v1 + 16);
}

uint64_t sub_1E5B15430(uint64_t a1)
{
  v4 = *(v1 + 112);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5AF632C;

  return sub_1E5B12184(a1, v1 + 16, v4);
}

uint64_t sub_1E5B154D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321C0, &unk_1E5B426F0);
  result = sub_1E5B3DC44();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      sub_1E5B3DDC4();
      sub_1E5B3DA14();

      result = sub_1E5B3DDF4();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_1E5B1586C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1E5B1E10C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1E5B15EBC();
    result = v17;
    goto LABEL_8;
  }

  sub_1E5B154D8(v14, a3 & 1);
  result = sub_1E5B1E10C(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1E5B3DDB4();
  __break(1u);
  return result;
}

uint64_t objectdestroyTm(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_1E5B159FC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B16384;

  return sub_1E5B11744(a1, v1 + 16);
}

unint64_t sub_1E5B15A98()
{
  result = qword_1ED0321D0;
  if (!qword_1ED0321D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryPageCountAction, &type metadata for LibraryPageCountAction, v0, v1);
    atomic_store(result, &qword_1ED0321D0);
  }

  return result;
}

unint64_t sub_1E5B15AF0()
{
  result = qword_1ED0321D8;
  if (!qword_1ED0321D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryPageCountAction, &type metadata for LibraryPageCountAction, v0, v1);
    atomic_store(result, &qword_1ED0321D8);
  }

  return result;
}

unint64_t sub_1E5B15B48()
{
  result = qword_1ED0321E0;
  if (!qword_1ED0321E0)
  {
    v3 = type metadata accessor for LibraryPageCountState(255);
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryPageCountState, v3, v0, v1);
    atomic_store(result, &qword_1ED0321E0);
  }

  return result;
}

unint64_t sub_1E5B15BC4()
{
  result = qword_1ED0321E8;
  if (!qword_1ED0321E8)
  {
    result = swift_getWitnessTable(byte_1E5B42878, &type metadata for LibraryPageCountFeature.TaskIdentifier, v0, v1);
    atomic_store(result, &qword_1ED0321E8);
  }

  return result;
}

uint64_t sub_1E5B15C18(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1E5B16384;

  return sub_1E5B11A38(a1, a2, v6, v7, v8);
}

uint64_t sub_1E5B15CDC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F0, &qword_1E5B428F0) - 8);
  v5 = (*(v4 + 80) + 129) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 128);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5B16384;

  return sub_1E5B11EE8(a1, v6, v7, v1 + 32, v8, v1 + v5);
}

uint64_t sub_1E5B15DE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F8, &qword_1E5B428F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B15E54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F8, &qword_1E5B428F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1E5B15EBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321C0, &unk_1E5B426F0);
  v2 = *v0;
  v3 = sub_1E5B3DC34();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1E5B160BC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5B16384;

  return sub_1E5B1497C(a1, a2, v7, v6);
}

uint64_t objectdestroy_33Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F0, &qword_1E5B428F0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 129) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5B16270(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F0, &qword_1E5B428F0) - 8);
  v5 = (*(v4 + 80) + 129) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 128);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5B16384;

  return sub_1E5B14E2C(a1, v6, v7, v1 + 32, v8, v1 + v5);
}

uint64_t sub_1E5B1638C(uint64_t a1)
{
  v2 = sub_1E5B171D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B163C8(uint64_t a1)
{
  v2 = sub_1E5B171D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E5B16404()
{
  v1 = *v0;
  v2 = 0x6570704177656976;
  v3 = 0xD000000000000015;
  v4 = 0x4368736572666572;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6173694477656976;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_1E5B164E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5B1728C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5B16508(uint64_t a1)
{
  v2 = sub_1E5B16FE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B16544(uint64_t a1)
{
  v2 = sub_1E5B16FE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B16580(uint64_t a1)
{
  v2 = sub_1E5B170DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B165BC(uint64_t a1)
{
  v2 = sub_1E5B170DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B165F8(uint64_t a1)
{
  v2 = sub_1E5B17088();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B16634(uint64_t a1)
{
  v2 = sub_1E5B17088();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B16670()
{
  if (*v0)
  {
    return 0x746E756F63;
  }

  else
  {
    return 1701273968;
  }
}

uint64_t sub_1E5B166A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701273968 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E5B3DDA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5B3DDA4();

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

uint64_t sub_1E5B16778(uint64_t a1)
{
  v2 = sub_1E5B17034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B167B4(uint64_t a1)
{
  v2 = sub_1E5B17034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B167F0(uint64_t a1)
{
  v2 = sub_1E5B17184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B1682C(uint64_t a1)
{
  v2 = sub_1E5B17184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B16868(uint64_t a1)
{
  v2 = sub_1E5B17130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B168A4(uint64_t a1)
{
  v2 = sub_1E5B17130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryPageCountAction.encode(to:)(void *a1, unint64_t a2, uint64_t a3)
{
  v46 = a3;
  v47 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032200, &qword_1E5B42940);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032208, &qword_1E5B42948);
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v32 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032210, &qword_1E5B42950);
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032218, &qword_1E5B42958);
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v32 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032220, &qword_1E5B42960);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032228, &qword_1E5B42968);
  v33 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032230, &qword_1E5B42970);
  v48 = *(v19 - 8);
  v49 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B16FE0();
  v22 = v47;
  sub_1E5B3DE14();
  if (!(v22 >> 62))
  {
    v55 = 3;
    sub_1E5B170DC();
    v27 = v49;
    sub_1E5B3DD24();
    v54 = v22;
    sub_1E5AFBA70();
    sub_1E5B3DD74();
    (*(v42 + 8))(v10, v8);
    return (*(v48 + 8))(v21, v27);
  }

  if (v22 >> 62 != 1)
  {
    if (v22 > 0x8000000000000001)
    {
      if (v22 ^ 0x8000000000000002 | v46)
      {
        v56 = 4;
        sub_1E5B17088();
        v15 = v39;
        v29 = v49;
        sub_1E5B3DD24();
        v31 = v40;
        v30 = v41;
      }

      else
      {
        v53 = 2;
        sub_1E5B17130();
        v15 = v36;
        v29 = v49;
        sub_1E5B3DD24();
        v31 = v37;
        v30 = v38;
      }
    }

    else
    {
      if (!(v22 ^ 0x8000000000000000 | v46))
      {
        v51 = 0;
        sub_1E5B171D8();
        v29 = v49;
        sub_1E5B3DD24();
        (*(v33 + 8))(v18, v16);
        return (*(v48 + 8))(v21, v29);
      }

      v52 = 1;
      sub_1E5B17184();
      v29 = v49;
      sub_1E5B3DD24();
      v31 = v34;
      v30 = v35;
    }

    (*(v31 + 8))(v15, v30);
    return (*(v48 + 8))(v21, v29);
  }

  v60 = 5;
  sub_1E5B17034();
  v23 = v43;
  v24 = v49;
  sub_1E5B3DD24();
  v59 = v22;
  v58 = 0;
  sub_1E5AFBA70();
  v25 = v45;
  v26 = v50;
  sub_1E5B3DD74();
  if (!v26)
  {
    v57 = 1;
    sub_1E5B3DD64();
  }

  (*(v44 + 8))(v23, v25);
  return (*(v48 + 8))(v21, v24);
}

unint64_t sub_1E5B16FE0()
{
  result = qword_1ED032238;
  if (!qword_1ED032238)
  {
    result = swift_getWitnessTable(byte_1E5B4300C, &type metadata for LibraryPageCountAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032238);
  }

  return result;
}

unint64_t sub_1E5B17034()
{
  result = qword_1ED032240;
  if (!qword_1ED032240)
  {
    result = swift_getWitnessTable(byte_1E5B42FBC, &type metadata for LibraryPageCountAction.UpdateLibraryPageCountCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032240);
  }

  return result;
}

unint64_t sub_1E5B17088()
{
  result = qword_1ED032248;
  if (!qword_1ED032248)
  {
    result = swift_getWitnessTable("Mr5\tHA", &type metadata for LibraryPageCountAction.RefreshCountCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032248);
  }

  return result;
}

unint64_t sub_1E5B170DC()
{
  result = qword_1ED032250;
  if (!qword_1ED032250)
  {
    result = swift_getWitnessTable(byte_1E5B42F1C, &type metadata for LibraryPageCountAction.NavigateToLibraryPageCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032250);
  }

  return result;
}
uint64_t get_enum_tag_for_layout_string_14FitnessActions20ActionTaskIdentifierO(uint64_t a1)
{
  if ((*(a1 + 40) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 40) & 0xF;
  }
}

uint64_t sub_1E5BC2500(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 41))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 40);
  if (v3 >= 9)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5BC253C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E5BC2588(uint64_t result, unsigned int a2)
{
  if (a2 > 7)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 8;
    LOBYTE(a2) = 8;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1E5BC25C0(uint64_t a1)
{
  sub_1E5B6C48C(v1, &v7);
  if (v10 <= 3u)
  {
    if (v10 > 1u)
    {
      v4 = v7;
      v5 = v8;
      v6 = v9;
      if (v10 == 2)
      {
        v2 = 2;
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v4 = v7;
      v5 = v8;
      v6 = v9;
      v2 = v10 != 0;
    }
  }

  else if (v10 <= 5u)
  {
    v4 = v7;
    v5 = v8;
    v6 = v9;
    if (v10 == 4)
    {
      v2 = 4;
    }

    else
    {
      v2 = 5;
    }
  }

  else if (v10 == 6)
  {
    v4 = v7;
    v5 = v8;
    v6 = v9;
    v2 = 6;
  }

  else
  {
    if (v10 != 7)
    {
      return MEMORY[0x1E6937C10](7);
    }

    v4 = v7;
    v5 = v8;
    v6 = v9;
    v2 = 8;
  }

  MEMORY[0x1E6937C10](v2);
  sub_1E5BF7244();
  return sub_1E5B6E230(&v4);
}

uint64_t sub_1E5BC271C()
{
  sub_1E5BF74B4();
  sub_1E5BC25C0(v1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BC2760(uint64_t a1)
{
  sub_1E5BF74B4();
  sub_1E5BC25C0(v2);
  return sub_1E5BF7504();
}

unint64_t sub_1E5BC27A4()
{
  result = qword_1EE2C7238;
  if (!qword_1EE2C7238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7238);
  }

  return result;
}

uint64_t sub_1E5BC27F8(uint64_t a1, uint64_t a2)
{
  sub_1E5B6C48C(a1, v9);
  sub_1E5B6C48C(a2, v11);
  if (v10 > 3u)
  {
    if (v10 <= 5u)
    {
      if (v10 == 4)
      {
        sub_1E5B6C48C(v9, v8);
        if (v12 == 4)
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_1E5B6C48C(v9, v8);
        if (v12 == 5)
        {
          goto LABEL_19;
        }
      }

      goto LABEL_10;
    }

    if (v10 != 6)
    {
      if (v10 != 7)
      {
        if (v12 == 8)
        {
          v5 = vorrq_s8(*&v11[8], *&v11[24]);
          if (!(*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | *v11))
          {
            sub_1E5B6C53C(v9);
            v3 = 1;
            return v3 & 1;
          }
        }

        goto LABEL_11;
      }

      sub_1E5B6C48C(v9, v8);
      if (v12 == 7)
      {
        goto LABEL_19;
      }

      goto LABEL_10;
    }

    sub_1E5B6C48C(v9, v8);
    if (v12 != 6)
    {
      goto LABEL_10;
    }

LABEL_19:
    v6[0] = *v11;
    v6[1] = *&v11[16];
    v7 = *&v11[32];
    v3 = MEMORY[0x1E6937980](v8, v6);
    sub_1E5B6E230(v6);
    sub_1E5B6E230(v8);
    sub_1E5B6C53C(v9);
    return v3 & 1;
  }

  if (v10 > 1u)
  {
    if (v10 == 2)
    {
      sub_1E5B6C48C(v9, v8);
      if (v12 == 2)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_1E5B6C48C(v9, v8);
      if (v12 == 3)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_10;
  }

  if (v10)
  {
    sub_1E5B6C48C(v9, v8);
    if (v12 == 1)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  sub_1E5B6C48C(v9, v8);
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_10:
  sub_1E5B6E230(v8);
LABEL_11:
  sub_1E5BC29C0(v9);
  v3 = 0;
  return v3 & 1;
}

uint64_t sub_1E5BC29C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FFD0, &unk_1E5C01B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5BC2A40()
{
  if (*v0)
  {
    return 0x657474616C506F6ELL;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1E5BC2A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v6 || (sub_1E5BF7444() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657474616C506F6ELL && a2 == 0xE900000000000072)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5BF7444();

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

uint64_t sub_1E5BC2B64(uint64_t a1)
{
  v2 = sub_1E5BC2F7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BC2BA0(uint64_t a1)
{
  v2 = sub_1E5BC2F7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BC2BDC(uint64_t a1)
{
  v2 = sub_1E5BC3024();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BC2C18(uint64_t a1)
{
  v2 = sub_1E5BC3024();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BC2C54(uint64_t a1)
{
  v2 = sub_1E5BC2FD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BC2C90(uint64_t a1)
{
  v2 = sub_1E5BC2FD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DynamicBarButtonItemStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FFD8, &qword_1E5C01B80);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FFE0, &qword_1E5C01B88);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FFE8, &qword_1E5C01B90);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BC2F7C();
  sub_1E5BF7524();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1E5BC2FD0();
    v14 = v18;
    sub_1E5BF7394();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1E5BC3024();
    sub_1E5BF7394();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1E5BC2F7C()
{
  result = qword_1ED03FFF0;
  if (!qword_1ED03FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FFF0);
  }

  return result;
}

unint64_t sub_1E5BC2FD0()
{
  result = qword_1ED03FFF8;
  if (!qword_1ED03FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FFF8);
  }

  return result;
}

unint64_t sub_1E5BC3024()
{
  result = qword_1ED040000;
  if (!qword_1ED040000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040000);
  }

  return result;
}

uint64_t DynamicBarButtonItemStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040008, &qword_1E5C01B98);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040010, &qword_1E5C01BA0);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040018, &unk_1E5C01BA8);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BC2F7C();
  v12 = v31;
  sub_1E5BF7514();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1E5BF7374();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1E5B7FB0C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1E5BF7284();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770);
      *v22 = &type metadata for DynamicBarButtonItemStyle;
      sub_1E5BF72D4();
      sub_1E5BF7274();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1E5BC2FD0();
        sub_1E5BF72C4();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1E5BC3024();
        sub_1E5BF72C4();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t DynamicBarButtonItemStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](v1);
  return sub_1E5BF7504();
}

unint64_t sub_1E5BC35DC()
{
  result = qword_1ED040020;
  if (!qword_1ED040020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040020);
  }

  return result;
}

unint64_t sub_1E5BC3674()
{
  result = qword_1ED040028;
  if (!qword_1ED040028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040028);
  }

  return result;
}

unint64_t sub_1E5BC36CC()
{
  result = qword_1ED040030;
  if (!qword_1ED040030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040030);
  }

  return result;
}

unint64_t sub_1E5BC3724()
{
  result = qword_1ED040038;
  if (!qword_1ED040038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040038);
  }

  return result;
}

unint64_t sub_1E5BC377C()
{
  result = qword_1ED040040;
  if (!qword_1ED040040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040040);
  }

  return result;
}

unint64_t sub_1E5BC37D4()
{
  result = qword_1ED040048;
  if (!qword_1ED040048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040048);
  }

  return result;
}

unint64_t sub_1E5BC382C()
{
  result = qword_1ED040050;
  if (!qword_1ED040050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040050);
  }

  return result;
}

unint64_t sub_1E5BC3884()
{
  result = qword_1ED040058;
  if (!qword_1ED040058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040058);
  }

  return result;
}

uint64_t sub_1E5BC38D8(uint64_t result, uint64_t a2)
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
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1E5BF74B4();
    MEMORY[0x1E6937C10](v13);
    result = sub_1E5BF7504();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for StackButtonState(uint64_t a1)
{
  result = qword_1ED040080;
  if (!qword_1ED040080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StackButtonState.init(workoutIdentifier:locale:allowedMediaTypes:isEntitled:startWorkoutDetailLoadState:loadState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v14 = type metadata accessor for StackButtonState(0);
  v15 = v14[5];
  v16 = sub_1E5BF64B4();
  (*(*(v16 - 8) + 32))(&a8[v15], a3, v16);
  *&a8[v14[6]] = a4;
  sub_1E5B5F8D4(a5, &a8[v14[7]], &qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5B5F8D4(a6, &a8[v14[8]], &qword_1ED03E950, &unk_1E5BF95F0);
  return sub_1E5B5F8D4(a7, &a8[v14[9]], &qword_1ED03E238, &unk_1E5BF8A10);
}

unint64_t sub_1E5BC3C2C()
{
  v1 = *v0;
  v2 = 0x656C61636F6CLL;
  v3 = 0x6C7469746E457369;
  v4 = 0xD00000000000001BLL;
  if (v1 != 4)
  {
    v4 = 0x7461745364616F6CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1E5BC3D00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5BC5054(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5BC3D28(uint64_t a1)
{
  v2 = sub_1E5BC4C38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BC3D64(uint64_t a1)
{
  v2 = sub_1E5BC4C38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StackButtonState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040060, &unk_1E5C01F30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BC4C38();
  sub_1E5BF7524();
  v17 = 0;
  sub_1E5BF73E4();
  if (!v2)
  {
    v9 = type metadata accessor for StackButtonState(0);
    v16 = 1;
    sub_1E5BF64B4();
    sub_1E5BC4D94(&qword_1ED03E5C8, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
    sub_1E5BF7424();
    v11[1] = *(v3 + *(v9 + 24));
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F210, &qword_1E5BFBBD0);
    sub_1E5B8D750(&qword_1ED03F218, sub_1E5B8D528, MEMORY[0x1E69E64F0]);
    sub_1E5BF7424();
    v14 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
    sub_1E5B6968C(&qword_1ED03E5D0, MEMORY[0x1E6999B20]);
    sub_1E5BF7424();
    v11[0] = *(v9 + 32);
    v13 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
    sub_1E5B8D81C(&qword_1ED03F220, MEMORY[0x1E6999B20]);
    sub_1E5BF7424();
    v12 = 5;
    sub_1E5BF7424();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StackButtonState.hash(into:)(__int128 *a1)
{
  sub_1E5BF6FE4();
  v3 = type metadata accessor for StackButtonState(0);
  sub_1E5BF64B4();
  sub_1E5BC4D94(&qword_1ED03E5F0, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1E5BF6EF4();
  sub_1E5B8D230(a1, *(v1 + *(v3 + 24)));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5BF6DF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  sub_1E5B8D6FC();
  sub_1E5BF6DF4();
  return sub_1E5BF6DF4();
}

uint64_t StackButtonState.hashValue.getter()
{
  sub_1E5BF74B4();
  type metadata accessor for StackButtonState(0);
  sub_1E5BC4D94(&qword_1ED040070, type metadata accessor for StackButtonState, &protocol conformance descriptor for StackButtonState);
  sub_1E5BF6EF4();
  return sub_1E5BF7504();
}

uint64_t StackButtonState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  MEMORY[0x1EEE9AC00](v27);
  v28 = v25 - v3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  MEMORY[0x1EEE9AC00](v29);
  v30 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v25 - v6;
  v8 = sub_1E5BF64B4();
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040078, &qword_1E5C01F40);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v12 = v25 - v11;
  v13 = type metadata accessor for StackButtonState(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E5BC4C38();
  v34 = v12;
  v17 = v35;
  sub_1E5BF7514();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v35 = v7;
  v18 = v30;
  v19 = v32;
  v43 = 0;
  *v15 = sub_1E5BF7324();
  v15[1] = v20;
  v42 = 1;
  sub_1E5BC4D94(&qword_1ED03E600, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  sub_1E5BF7364();
  (*(v19 + 32))(v15 + v13[5], v10, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F210, &qword_1E5BFBBD0);
  v41 = 2;
  sub_1E5B8D750(&qword_1ED03F250, sub_1E5B8D7C8, MEMORY[0x1E69E6510]);
  sub_1E5BF7364();
  *(v15 + v13[6]) = v37;
  v40 = 3;
  sub_1E5B6968C(&qword_1ED03E608, MEMORY[0x1E6999B30]);
  v21 = v35;
  v25[1] = 0;
  sub_1E5BF7364();
  v22 = v13;
  sub_1E5B5F8D4(v21, v15 + v13[7], &qword_1ED03E238, &unk_1E5BF8A10);
  v39 = 4;
  sub_1E5B8D81C(&qword_1ED03F260, MEMORY[0x1E6999B30]);
  v23 = v28;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v23, v15 + v22[8], &qword_1ED03E950, &unk_1E5BF95F0);
  v38 = 5;
  sub_1E5BF7364();
  (*(v31 + 8))(v34, v33);
  sub_1E5B5F8D4(v18, v15 + v22[9], &qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5BC4C8C(v15, v26);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return sub_1E5BC4CF0(v15);
}

uint64_t sub_1E5BC49F4(__int128 *a1, uint64_t a2)
{
  sub_1E5BF6FE4();
  sub_1E5BF64B4();
  sub_1E5BC4D94(&qword_1ED03E5F0, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1E5BF6EF4();
  sub_1E5B8D230(a1, *(v2 + *(a2 + 24)));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5BF6DF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  sub_1E5B8D6FC();
  sub_1E5BF6DF4();
  return sub_1E5BF6DF4();
}

uint64_t _s14FitnessActions16StackButtonStateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E5BF7444() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for StackButtonState(0);
  if ((MEMORY[0x1E6936BF0](a1 + *(v5 + 20), a2 + *(v5 + 20)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E5BC38D8(*(a1 + *(v5 + 24)), *(a2 + *(v5 + 24))) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E5BF6DE4() & 1) == 0)
  {
    return 0;
  }

  sub_1E5B8DC2C();
  if ((sub_1E5BF6DE4() & 1) == 0)
  {
    return 0;
  }

  return sub_1E5BF6DE4();
}

unint64_t sub_1E5BC4C38()
{
  result = qword_1ED040068;
  if (!qword_1ED040068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040068);
  }

  return result;
}

uint64_t sub_1E5BC4C8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StackButtonState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5BC4CF0(uint64_t a1)
{
  v2 = type metadata accessor for StackButtonState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5BC4D94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E5BC4E04(uint64_t a1)
{
  sub_1E5BF64B4();
  if (v1 <= 0x3F)
  {
    sub_1E5B8DBC4(319, &qword_1EE2C6210, sub_1E5B8DB70, &type metadata for WorkoutMediaType, MEMORY[0x1E69E64E8]);
    if (v2 <= 0x3F)
    {
      sub_1E5B6A458();
      if (v3 <= 0x3F)
      {
        sub_1E5B8DBC4(319, &qword_1EE2C6278, sub_1E5B8DC2C, &type metadata for StartWorkoutDetail, MEMORY[0x1E6999B18]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1E5BC4F50()
{
  result = qword_1ED040090;
  if (!qword_1ED040090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040090);
  }

  return result;
}

unint64_t sub_1E5BC4FA8()
{
  result = qword_1ED040098;
  if (!qword_1ED040098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040098);
  }

  return result;
}

unint64_t sub_1E5BC5000()
{
  result = qword_1ED0400A0[0];
  if (!qword_1ED0400A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED0400A0);
  }

  return result;
}

uint64_t sub_1E5BC5054(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E5C07A80 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5C07AA0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C7469746E457369 && a2 == 0xEA00000000006465 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001E5C084B0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E5BF7444();

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

uint64_t static ModalPresentation.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a1;
  v53 = a2;
  v46 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v43[0] = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5BF71F4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v45 = v43 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v44 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v47 = a3;
  v48 = v43 - v14;
  v54[0] = a3;
  v54[1] = a4;
  v54[2] = a5;
  v54[3] = a6;
  v43[1] = a6;
  v15 = type metadata accessor for ModalPresentation(0, v54);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v43 - v17;
  v19 = swift_getTupleTypeMetadata2();
  v50 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v43 - v21;
  v24 = *(v23 + 48);
  v51 = v16;
  v25 = *(v16 + 16);
  v25(v43 - v21, v52, v15, v20);
  (v25)(&v22[v24], v53, v15);
  v53 = v12;
  v26 = *(v12 + 48);
  if (v26(v22, 1, v11) != 1)
  {
    (v25)(v18, v22, v15);
    if (v26(&v22[v24], 1, v11) == 1)
    {
      (*(v53 + 8))(v18, v11);
      goto LABEL_6;
    }

    v29 = v48;
    v30 = *(TupleTypeMetadata2 + 48);
    v31 = v53;
    v32 = *(v53 + 32);
    v32(v48, v18, v11);
    v32(&v29[v30], &v22[v24], v11);
    v34 = v46;
    v33 = v47;
    v35 = *(v46 + 48);
    if (v35(v29, 1, v47) == 1)
    {
      v36 = v35(&v29[v30], 1, v33);
      v28 = v51;
      if (v36 == 1)
      {
        (*(v31 + 8))(v29, v11);
        v27 = 1;
        goto LABEL_14;
      }
    }

    else
    {
      (*(v31 + 16))(v45, v29, v11);
      v37 = v35(&v29[v30], 1, v33);
      v28 = v51;
      if (v37 != 1)
      {
        v39 = &v29[v30];
        v40 = v43[0];
        (*(v34 + 32))(v43[0], v39, v33);
        v41 = v45;
        LODWORD(v52) = sub_1E5BF6F14();
        v42 = *(v34 + 8);
        v42(v40, v33);
        v42(v41, v33);
        (*(v31 + 8))(v48, v11);
        if (v52)
        {
          v27 = 1;
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      (*(v34 + 8))(v45, v33);
    }

    (*(v44 + 8))(v29, TupleTypeMetadata2);
LABEL_13:
    v27 = 0;
    goto LABEL_14;
  }

  v27 = 1;
  if (v26(&v22[v24], 1, v11) != 1)
  {
LABEL_6:
    v27 = 0;
    v28 = v50;
    v15 = v19;
    goto LABEL_14;
  }

  v28 = v51;
LABEL_14:
  (*(v28 + 8))(v22, v15);
  return v27;
}

uint64_t sub_1E5BC5818(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7373696D736964 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2003789939 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

uint64_t sub_1E5BC58E4(char a1)
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](a1 & 1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BC592C(char a1)
{
  if (a1)
  {
    return 2003789939;
  }

  else
  {
    return 0x7373696D736964;
  }
}

uint64_t sub_1E5BC595C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5BF7444();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5BC5A0C(uint64_t a1)
{
  sub_1E5BF74B4();
  sub_1E5B5C164(v3, *v1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BC5A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BC5818(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BC5AA0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E5BC72FC();
  *a2 = result;
  return result;
}

uint64_t sub_1E5BC5AD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5BC5B28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5BC5B7C@<X0>(_BYTE *a2@<X8>)
{
  v3 = sub_1E5B600CC();

  *a2 = v3 & 1;
  return result;
}

uint64_t sub_1E5BC5BE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5BC5C38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5BC5C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BC595C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E5BC5CC4@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E5BC5D04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5BC5D58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ModalPresentation.encode(to:)(void *a1, void *a2)
{
  v48 = a1;
  v3 = a2[3];
  v6 = a2[4];
  v5 = a2[5];
  v50 = a2[2];
  v4 = v50;
  v51 = v3;
  v52 = v6;
  v53 = v5;
  v40 = type metadata accessor for ModalPresentation.ShowCodingKeys(255, &v50);
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1E5BF7434();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v31 - v8;
  v9 = sub_1E5BF71F4();
  v10 = *(v9 - 8);
  v45 = v9;
  v46 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v31 - v11;
  v50 = v4;
  v51 = v3;
  v52 = v6;
  v53 = v5;
  v12 = type metadata accessor for ModalPresentation.DismissCodingKeys(255, &v50);
  v13 = swift_getWitnessTable();
  v36 = v12;
  v34 = v13;
  v35 = sub_1E5BF7434();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v32 = &v31 - v14;
  v15 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v6;
  v44 = v4;
  v50 = v4;
  v51 = v3;
  v52 = v6;
  v53 = v5;
  type metadata accessor for ModalPresentation.CodingKeys(255, &v50);
  swift_getWitnessTable();
  v47 = sub_1E5BF7434();
  v19 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v21 = &v31 - v20;
  __swift_project_boxed_opaque_existential_1(v48, v48[3]);
  v22 = v45;
  sub_1E5BF7524();
  (*(v15 + 16))(v18, v49, a2);
  v23 = v46;
  if ((*(v46 + 48))(v18, 1, v22) == 1)
  {
    LOBYTE(v50) = 0;
    v24 = v32;
    v25 = v47;
    sub_1E5BF7394();
    (*(v33 + 8))(v24, v35);
    return (*(v19 + 8))(v21, v25);
  }

  else
  {
    v49 = v19;
    v27 = v37;
    (*(v23 + 32))(v37, v18, v22);
    LOBYTE(v50) = 1;
    v28 = v39;
    v29 = v47;
    sub_1E5BF7394();
    v30 = v42;
    sub_1E5BF73D4();
    (*(v41 + 8))(v28, v30);
    (*(v23 + 8))(v27, v22);
    return (*(v49 + 8))(v21, v29);
  }
}

uint64_t ModalPresentation.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5BF71F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v2, a2, v9);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    return MEMORY[0x1E6937C10](0);
  }

  (*(v5 + 32))(v7, v11, v4);
  MEMORY[0x1E6937C10](1);
  sub_1E5BF7204();
  return (*(v5 + 8))(v7, v4);
}

uint64_t ModalPresentation.hashValue.getter(uint64_t a1)
{
  sub_1E5BF74B4();
  ModalPresentation.hash(into:)(v3, a1);
  return sub_1E5BF7504();
}

uint64_t ModalPresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v74 = a1;
  v63 = a6;
  *&v72 = a2;
  *(&v72 + 1) = a3;
  *&v73 = a4;
  *(&v73 + 1) = a5;
  v10 = type metadata accessor for ModalPresentation.ShowCodingKeys(255, &v72);
  WitnessTable = swift_getWitnessTable();
  v61 = v10;
  v54 = sub_1E5BF7384();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v62 = &v49 - v11;
  *&v72 = a2;
  *(&v72 + 1) = a3;
  *&v73 = a4;
  *(&v73 + 1) = a5;
  v12 = type metadata accessor for ModalPresentation.DismissCodingKeys(255, &v72);
  v58 = swift_getWitnessTable();
  v59 = v12;
  v52 = sub_1E5BF7384();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v57 = &v49 - v13;
  *&v72 = a2;
  *(&v72 + 1) = a3;
  *&v73 = a4;
  *(&v73 + 1) = a5;
  type metadata accessor for ModalPresentation.CodingKeys(255, &v72);
  v68 = swift_getWitnessTable();
  v64 = sub_1E5BF7384();
  v66 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v15 = &v49 - v14;
  v65 = a2;
  *&v72 = a2;
  *(&v72 + 1) = a3;
  v55 = a3;
  *&v73 = a4;
  *(&v73 + 1) = a5;
  v16 = type metadata accessor for ModalPresentation(0, &v72);
  v56 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49 - v20;
  v22 = v74;
  __swift_project_boxed_opaque_existential_1(v74, v74[3]);
  v67 = v15;
  v23 = v69;
  sub_1E5BF7514();
  v24 = v22;
  if (!v23)
  {
    v50 = v18;
    v68 = v21;
    v69 = v16;
    v25 = v64;
    v26 = v67;
    *&v70 = sub_1E5BF7374();
    sub_1E5BF7044();
    swift_getWitnessTable();
    *&v72 = sub_1E5BF7224();
    *(&v72 + 1) = v27;
    *&v73 = v28;
    *(&v73 + 1) = v29;
    sub_1E5BF7214();
    swift_getWitnessTable();
    sub_1E5BF7164();
    v30 = v70;
    if (v70 == 2 || (v49 = v72, v70 = v72, v71 = v73, (sub_1E5BF7174() & 1) == 0))
    {
      v34 = sub_1E5BF7284();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770);
      *v36 = v69;
      sub_1E5BF72D4();
      sub_1E5BF7274();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v66 + 8))(v26, v25);
      swift_unknownObjectRelease();
    }

    else if (v30)
    {
      LOBYTE(v70) = 1;
      v31 = v62;
      sub_1E5BF72C4();
      v32 = v63;
      v33 = v66;
      v41 = v50;
      v42 = v54;
      sub_1E5BF7314();
      (*(v53 + 8))(v31, v42);
      (*(v33 + 8))(v67, v25);
      swift_unknownObjectRelease();
      v45 = sub_1E5BF71F4();
      (*(*(v45 - 8) + 56))(v41, 0, 1, v45);
      v46 = *(v56 + 32);
      v48 = v68;
      v47 = v69;
      v46(v68, v41, v69);
      v46(v32, v48, v47);
    }

    else
    {
      LOBYTE(v70) = 0;
      v38 = v57;
      sub_1E5BF72C4();
      v39 = v63;
      v40 = v66;
      (*(v51 + 8))(v38, v52);
      (*(v40 + 8))(v26, v25);
      swift_unknownObjectRelease();
      v43 = sub_1E5BF71F4();
      v44 = v68;
      (*(*(v43 - 8) + 56))(v68, 1, 1, v43);
      (*(v56 + 32))(v39, v44, v69);
    }

    v24 = v74;
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1E5BC6D5C(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  ModalPresentation.hash(into:)(v4, a2);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BC6DCC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = v6 - 1;
  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (v5 < 2)
  {
    v7 = 0;
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_30;
  }

  v10 = 8 * v8;
  if (v8 > 3)
  {
    goto LABEL_10;
  }

  v12 = ((v9 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v8);
    if (v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_30;
      }

LABEL_10:
      v11 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_30;
      }

LABEL_17:
      v13 = (v11 - 1) << v10;
      if (v8 > 3)
      {
        v13 = 0;
      }

      if (v8)
      {
        if (v8 <= 3)
        {
          v14 = v8;
        }

        else
        {
          v14 = 4;
        }

        if (v14 > 2)
        {
          if (v14 == 3)
          {
            v15 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v15 = *a1;
          }
        }

        else if (v14 == 1)
        {
          v15 = *a1;
        }

        else
        {
          v15 = *a1;
        }
      }

      else
      {
        v15 = 0;
      }

      return v7 + (v15 | v13) + 1;
    }

    v11 = *(a1 + v8);
    if (*(a1 + v8))
    {
      goto LABEL_17;
    }
  }

LABEL_30:
  if (!v7)
  {
    return 0;
  }

  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  v17 = v16 >= 2;
  result = v16 - 2;
  if (result == 0 || !v17)
  {
    return 0;
  }

  return result;
}

void sub_1E5BC6F58(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v8 - 1;
  if (!v8)
  {
    v10 = 0;
  }

  v11 = v10 - 1;
  if (!v8)
  {
    ++v9;
  }

  if (v8 >= 2)
  {
    v12 = v9;
  }

  else
  {
    v11 = 0;
    v12 = v9 + 1;
  }

  v13 = a3 >= v11;
  v14 = a3 - v11;
  if (v14 == 0 || !v13)
  {
LABEL_20:
    if (v11 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v11 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
  {
    if (v15 < 0x100)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v11 < a2)
  {
LABEL_21:
    v17 = ~v11 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v12] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v12] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (a2 + 1 <= v10)
  {
    if (a2 != -1 && v8 >= 2)
    {
      v23 = *(v7 + 56);

      v23();
    }
  }

  else
  {
    if (v9 <= 3)
    {
      v20 = ~(-1 << (8 * v9));
    }

    else
    {
      v20 = -1;
    }

    if (v9)
    {
      v21 = v20 & (a2 - v10);
      if (v9 <= 3)
      {
        v22 = v9;
      }

      else
      {
        v22 = 4;
      }

      bzero(a1, v9);
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else
        {
          *a1 = v21;
        }
      }

      else if (v22 == 1)
      {
        *a1 = v21;
      }

      else
      {
        *a1 = v21;
      }
    }
  }
}

uint64_t sub_1E5BC733C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F6C6E776F447369 && a2 == 0xEC00000064656461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5BF7444();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5BC73C8(uint64_t a1)
{
  v2 = sub_1E5BC7578();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BC7404(uint64_t a1)
{
  v2 = sub_1E5BC7578();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoveBookmarkConfirmationData.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040228, &qword_1E5C02560);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BC7578();
  sub_1E5BF7524();
  sub_1E5BF73F4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1E5BC7578()
{
  result = qword_1ED040230;
  if (!qword_1ED040230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040230);
  }

  return result;
}

uint64_t RemoveBookmarkConfirmationData.hashValue.getter()
{
  sub_1E5BF74B4();
  sub_1E5BF74D4();
  return sub_1E5BF7504();
}

uint64_t RemoveBookmarkConfirmationData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040238, &unk_1E5C02568);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BC7578();
  sub_1E5BF7514();
  if (!v2)
  {
    v9 = sub_1E5BF7334();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E5BC77B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040228, &qword_1E5C02560);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BC7578();
  sub_1E5BF7524();
  sub_1E5BF73F4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1E5BC78E8()
{
  sub_1E5BF74B4();
  sub_1E5BF74D4();
  return sub_1E5BF7504();
}

uint64_t sub_1E5BC795C(uint64_t a1)
{
  sub_1E5BF74B4();
  sub_1E5BF74D4();
  return sub_1E5BF7504();
}

uint64_t sub_1E5BC7A48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t BookmarkButtonState.init(identifier:locale:presentationContextKey:removeConfirmation:isEntitled:loadState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v18 = type metadata accessor for BookmarkButtonState(0, a7, a8, v17);
  v19 = v18[9];
  v20 = sub_1E5BF64B4();
  (*(*(v20 - 8) + 32))(a9 + v19, a2, v20);
  v21 = v18[10];
  v22 = sub_1E5BF6494();
  (*(*(v22 - 8) + 32))(a9 + v21, a3, v22);
  sub_1E5B5F8D4(a4, a9 + v18[13], &qword_1ED03E5C0, &unk_1E5BF8A20);
  sub_1E5B5F8D4(a5, a9 + v18[11], &qword_1ED03E238, &unk_1E5BF8A10);
  return sub_1E5B5F8D4(a6, a9 + v18[12], &qword_1ED03E238, &unk_1E5BF8A10);
}

uint64_t sub_1E5BC7C70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5C077D0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C7469746E457369 && a2 == 0xEA00000000006465 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065 || (sub_1E5BF7444() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5C077F0 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E5BF7444();

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

uint64_t sub_1E5BC7E88(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x6C7469746E457369;
  v3 = 0x7461745364616F6CLL;
  if (a1 != 4)
  {
    v3 = 0xD000000000000012;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x656C61636F6CLL;
  if (a1 != 1)
  {
    v4 = 0xD000000000000016;
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

uint64_t sub_1E5BC7F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BC7C70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BC7F88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5BC7FDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t BookmarkButtonState.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  v5 = *(a2 + 24);
  v13 = *(a2 + 16);
  type metadata accessor for BookmarkButtonState.CodingKeys(255, v13, v5, a4);
  swift_getWitnessTable();
  v6 = sub_1E5BF7434();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BF7524();
  v20 = 0;
  v10 = v14;
  sub_1E5BF7424();
  if (!v10)
  {
    v19 = 1;
    sub_1E5BF64B4();
    sub_1E5BC1840(&qword_1ED03E5C8, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
    sub_1E5BF7424();
    v18 = 2;
    sub_1E5BF6494();
    sub_1E5BC1840(&qword_1EE2C7AF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1E5BF7424();
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
    sub_1E5B6968C(&qword_1ED03E5D0, MEMORY[0x1E6999B20]);
    sub_1E5BF7424();
    v16 = 4;
    sub_1E5BF7424();
    v15 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
    sub_1E5B69774(&qword_1ED03E5E0, &protocol conformance descriptor for ModalPresentation<A>);
    sub_1E5BF7424();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t BookmarkButtonState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v39 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v39 - v10;
  v52 = sub_1E5BF6494();
  v47 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5BF64B4();
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v57 = (&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for BookmarkButtonState.CodingKeys(255, a2, a3, v16);
  swift_getWitnessTable();
  v55 = sub_1E5BF7384();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v18 = &v39 - v17;
  v56 = a2;
  v54 = a3;
  v20 = type metadata accessor for BookmarkButtonState(0, a2, a3, v19);
  v21 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v39 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v58 = v18;
  v24 = v59;
  sub_1E5BF7514();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v59 = v21;
  v25 = v23;
  v26 = v51;
  v27 = v52;
  v65 = 0;
  v28 = v56;
  sub_1E5BF7364();
  v29 = *(v50 + 32);
  v54 = v25;
  v29(v25, v57, v28);
  v64 = 1;
  sub_1E5BC1840(&qword_1ED03E600, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  v30 = v49;
  sub_1E5BF7364();
  (*(v48 + 32))(v54 + v20[9], v26, v30);
  v63 = 2;
  sub_1E5BC1840(&qword_1EE2C7AE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v31 = v46;
  sub_1E5BF7364();
  v57 = a1;
  (*(v47 + 32))(v54 + v20[10], v31, v27);
  v62 = 3;
  sub_1E5B6968C(&qword_1ED03E608, MEMORY[0x1E6999B30]);
  v32 = v44;
  sub_1E5BF7364();
  v33 = v32;
  v34 = v54;
  sub_1E5B5F8D4(v33, v54 + v20[11], &qword_1ED03E238, &unk_1E5BF8A10);
  v61 = 4;
  sub_1E5BF7364();
  v35 = v53;
  sub_1E5B5F8D4(v43, v34 + v20[12], &qword_1ED03E238, &unk_1E5BF8A10);
  v60 = 5;
  sub_1E5B69774(qword_1ED03E618, &protocol conformance descriptor for ModalPresentation<A>);
  v36 = v41;
  sub_1E5BF7364();
  (*(v35 + 8))(v58, v55);
  sub_1E5B5F8D4(v36, v34 + v20[13], &qword_1ED03E5C0, &unk_1E5BF8A20);
  v37 = v59;
  (*(v59 + 16))(v40, v34, v20);
  __swift_destroy_boxed_opaque_existential_1(v57);
  return (*(v37 + 8))(v34, v20);
}

uint64_t static BookmarkButtonState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1E5BF6F14() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for BookmarkButtonState(0, a3, a4, v8);
  if ((MEMORY[0x1E6936BF0](a1 + *(v9 + 36), a2 + *(v9 + 36)) & 1) == 0 || (sub_1E5BF6474() & 1) == 0 || (sub_1E5BF6DE4() & 1) == 0 || (sub_1E5BF6DE4() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v9 + 52);

  return sub_1E5B65C60(a1 + v10, a2 + v10);
}

uint64_t BookmarkButtonState.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5BF6494();
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v22 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v23 = &v20 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  sub_1E5BF6EF4();
  sub_1E5BF64B4();
  sub_1E5BC1840(&qword_1ED03E5F0, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1E5BF6EF4();
  sub_1E5BC1840(&qword_1EE2C7AE8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v25 = v4;
  sub_1E5BF6EF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5BF6DF4();
  sub_1E5BF6DF4();
  sub_1E5B5F864(v2 + *(a2 + 52), v13, &qword_1ED03E5C0, &unk_1E5BF8A20);
  if ((*(v7 + 48))(v13, 1, v6) == 1)
  {
    return MEMORY[0x1E6937C10](0);
  }

  v15 = v23;
  sub_1E5B5F8D4(v13, v23, &qword_1ED03E5E8, &unk_1E5BF9600);
  MEMORY[0x1E6937C10](1);
  v16 = v22;
  sub_1E5B5F864(v15, v22, &qword_1ED03E5E8, &unk_1E5BF9600);
  v18 = v24;
  v17 = v25;
  if ((*(v24 + 48))(v16, 1, v25) == 1)
  {
    sub_1E5BF74D4();
  }

  else
  {
    v19 = v21;
    (*(v18 + 32))(v21, v16, v17);
    sub_1E5BF74D4();
    sub_1E5BF6EF4();
    (*(v18 + 8))(v19, v17);
  }

  return sub_1E5B5F804(v15, &qword_1ED03E5E8, &unk_1E5BF9600);
}

uint64_t BookmarkButtonState.hashValue.getter(uint64_t a1)
{
  sub_1E5BF74B4();
  BookmarkButtonState.hash(into:)(v3, a1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BC92AC(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  BookmarkButtonState.hash(into:)(v4, a2);
  return sub_1E5BF7504();
}

unint64_t sub_1E5BC92F4()
{
  result = qword_1ED040240[0];
  if (!qword_1ED040240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED040240);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoveBookmarkConfirmationData(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_1E5BC9420(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1E5BF64B4();
    if (v2 <= 0x3F)
    {
      sub_1E5BF6494();
      if (v3 <= 0x3F)
      {
        sub_1E5B6A458();
        if (v4 <= 0x3F)
        {
          sub_1E5B6A50C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E5BC94F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v48 = *(a3 + 16);
  v4 = *(v48 - 8);
  v5 = *(v4 + 84);
  v46 = sub_1E5BF64B4();
  v6 = *(v46 - 8);
  v47 = *(v6 + 84);
  if (v47 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v45 = sub_1E5BF6494();
  v8 = *(v45 - 8);
  v9 = *(v8 + 84);
  if (v9 > v7)
  {
    v7 = *(v8 + 84);
  }

  v10 = *(sub_1E5BF6464() - 8);
  v11 = *(v10 + 80);
  v12 = ((v11 + 1) & ~v11) + *(v10 + 64);
  v13 = 40;
  if (v12 > 0x28)
  {
    v13 = v12;
  }

  if (v13 >= 4)
  {
    v14 = 252;
  }

  else
  {
    v14 = 252 - (1u >> (8 * v13));
  }

  if (v14 <= v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = v14;
  }

  v16 = v9 - 1;
  if (!v9)
  {
    v16 = 0;
  }

  v17 = v16 - 1;
  if (v9 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > v15)
  {
    v15 = v18;
  }

  v19 = *(v6 + 80);
  v20 = *(v6 + 64);
  v21 = *(v8 + 80);
  v22 = *(v8 + 64);
  if (v9)
  {
    v23 = v9 < 2;
  }

  else
  {
    v23 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  v24 = *(v4 + 64) + v19;
  v25 = v11 | 7;
  v26 = v22 + (v11 | 7);
  v27 = v13 + 1 + (v11 | 7);
  v28 = v13 + 1 + v21;
  v29 = a1;
  if (a2 <= v15)
  {
    goto LABEL_48;
  }

  v30 = v23 + v22 + ((v28 + ((v27 + ((v26 + ((v20 + v21 + (v24 & ~v19)) & ~v21)) & ~v25)) & ~v25)) & ~v21);
  v31 = 8 * v30;
  if (v30 > 3)
  {
    goto LABEL_27;
  }

  v34 = ((a2 - v15 + ~(-1 << v31)) >> v31) + 1;
  if (HIWORD(v34))
  {
    v32 = *(a1 + v30);
    if (v32)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v34 <= 0xFF)
    {
      if (v34 < 2)
      {
        goto LABEL_48;
      }

LABEL_27:
      v32 = *(a1 + v30);
      if (!*(a1 + v30))
      {
        goto LABEL_48;
      }

LABEL_35:
      v35 = (v32 - 1) << v31;
      if (v30 > 3)
      {
        v35 = 0;
      }

      if (v30)
      {
        if (v30 <= 3)
        {
          v36 = v30;
        }

        else
        {
          v36 = 4;
        }

        if (v36 > 2)
        {
          if (v36 == 3)
          {
            v37 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v37 = *a1;
          }
        }

        else if (v36 == 1)
        {
          v37 = *a1;
        }

        else
        {
          v37 = *a1;
        }
      }

      else
      {
        v37 = 0;
      }

      return v15 + (v37 | v35) + 1;
    }

    v32 = *(a1 + v30);
    if (*(a1 + v30))
    {
      goto LABEL_35;
    }
  }

LABEL_48:
  if (v5 == v15)
  {
    v38 = v48;
    v39 = *(v4 + 48);
    v40 = v5;
LABEL_54:

    return v39(v29, v40, v38);
  }

  v29 = ((a1 + v24) & ~v19);
  v40 = v47;
  if (v47 == v15)
  {
    v39 = *(v6 + 48);
    v38 = v46;
    goto LABEL_54;
  }

  v41 = ~v21;
  v29 = ((v29 + v20 + v21) & ~v21);
  if (v9 == v15)
  {
    v39 = *(v8 + 48);
    v40 = v9;
    v38 = v45;
    goto LABEL_54;
  }

  v42 = (v29 + v26) & ~v25;
  if (v14 == v15)
  {
    v43 = *(v42 + v13);
    if (v14 <= (v43 ^ 0xFFu))
    {
      return 0;
    }

    else
    {
      return (256 - v43);
    }
  }

  else
  {
    result = 0;
    if (v9 >= 2 && v17)
    {
      v44 = (*(v8 + 48))((v28 + ((v27 + v42) & ~v25)) & v41, v9, v45);
      if (v44 >= 3)
      {
        return v44 - 2;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1E5BC9944(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v57 = *(a4 + 16);
  v4 = *(v57 - 8);
  v56 = v4;
  v5 = *(v4 + 84);
  v54 = sub_1E5BF64B4();
  v6 = *(v54 - 8);
  v55 = *(v6 + 84);
  if (v55 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v53 = sub_1E5BF6494();
  v8 = *(v53 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = 0;
  v12 = *(sub_1E5BF6464() - 8);
  v13 = *(v12 + 80);
  v14 = ((v13 + 1) & ~v13) + *(v12 + 64);
  if (v14 <= 0x28)
  {
    v15 = 40;
  }

  else
  {
    v15 = v14;
  }

  if (v15 >= 4)
  {
    v16 = 252;
  }

  else
  {
    v16 = 252 - (1u >> (8 * v15));
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  if (v9)
  {
    v18 = v9 - 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18 - 1;
  v20 = v9 < 2;
  if (v9 < 2)
  {
    v19 = 0;
  }

  if (v19 > v17)
  {
    v17 = v19;
  }

  v21 = *(v6 + 80);
  v22 = *(v4 + 64) + v21;
  v23 = *(v6 + 64);
  v24 = *(v8 + 80);
  v25 = *(v8 + 64);
  v26 = v13 | 7;
  v27 = v25 + (v13 | 7);
  v28 = (v27 + ((v23 + v24 + (v22 & ~v21)) & ~v24)) & ~(v13 | 7);
  v29 = v15 + 1 + (v13 | 7);
  v30 = (v29 + v28) & ~v26;
  v31 = v15 + 1 + v24;
  v32 = (v31 + v30) & ~v24;
  if (v9)
  {
    v33 = v9 < 2;
  }

  else
  {
    v33 = v20 + 1;
  }

  v34 = v33 + v25 + v32;
  if (a3 > v17)
  {
    if (v34 <= 3)
    {
      v35 = ((a3 - v17 + ~(-1 << (8 * v34))) >> (8 * v34)) + 1;
      if (HIWORD(v35))
      {
        v11 = 4;
      }

      else
      {
        if (v35 < 0x100)
        {
          v36 = 1;
        }

        else
        {
          v36 = 2;
        }

        if (v35 >= 2)
        {
          v11 = v36;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v17 < a2)
  {
    v37 = ~v17 + a2;
    if (v34 >= 4)
    {
      bzero(a1, v34);
      *a1 = v37;
      v38 = 1;
      if (v11 > 1)
      {
        goto LABEL_40;
      }

      goto LABEL_69;
    }

    v38 = (v37 >> (8 * v34)) + 1;
    if (v34)
    {
      v40 = v37 & ~(-1 << (8 * v34));
      bzero(a1, v34);
      if (v34 != 3)
      {
        if (v34 == 2)
        {
          *a1 = v40;
          if (v11 > 1)
          {
            goto LABEL_40;
          }
        }

        else
        {
          *a1 = v37;
          if (v11 > 1)
          {
LABEL_40:
            if (v11 == 2)
            {
              *&a1[v34] = v38;
            }

            else
            {
              *&a1[v34] = v38;
            }

            return;
          }
        }

LABEL_69:
        if (v11)
        {
          a1[v34] = v38;
        }

        return;
      }

      *a1 = v40;
      a1[2] = BYTE2(v40);
    }

    if (v11 > 1)
    {
      goto LABEL_40;
    }

    goto LABEL_69;
  }

  v39 = a1;
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v34] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_54;
    }

    *&a1[v34] = 0;
  }

  else if (v11)
  {
    a1[v34] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_54;
  }

  if (!a2)
  {
    return;
  }

LABEL_54:
  if (v5 != v17)
  {
    v39 = (&a1[v22] & ~v21);
    v44 = v55;
    if (v55 == v17)
    {
      v42 = *(v6 + 56);
      v43 = a2;
      v41 = v54;
      goto LABEL_64;
    }

    v39 = (&v39[v23 + v24] & ~v24);
    if (v9 == v17)
    {
      v42 = *(v8 + 56);
      v43 = a2;
LABEL_63:
      v44 = v9;
      v41 = v53;
      goto LABEL_64;
    }

    v45 = ~v26;
    v46 = &v39[v27] & ~v26;
    if (v16 == v17)
    {
      *(v46 + v15) = -a2;
      return;
    }

    v47 = ((v31 + ((v29 + v46) & v45)) & ~v24);
    if (v9)
    {
      if (v19 >= a2)
      {
        if (a2 + 1 <= v18)
        {
          if (a2 == -1 || v9 == 1)
          {
            return;
          }

          v42 = *(v8 + 56);
          v43 = a2 + 2;
          v39 = ((v31 + ((v29 + v46) & v45)) & ~v24);
          goto LABEL_63;
        }

        if (v25 <= 3)
        {
          v52 = ~(-1 << (8 * v25));
        }

        else
        {
          v52 = -1;
        }

        if (!v25)
        {
          return;
        }

        v50 = v52 & (a2 - v18);
        if (v25 <= 3)
        {
          v51 = v25;
        }

        else
        {
          v51 = 4;
        }

        bzero(v47, v25);
        if (v51 <= 2)
        {
          if (v51 == 1)
          {
            goto LABEL_89;
          }

          goto LABEL_100;
        }

LABEL_101:
        if (v51 == 3)
        {
          *v47 = v50;
          v47[2] = BYTE2(v50);
        }

        else
        {
          *v47 = v50;
        }

        return;
      }

      v48 = (v25 + v20);
    }

    else
    {
      v48 = (v25 + 2);
    }

    if (v48 <= 3)
    {
      v49 = ~(-1 << (8 * v48));
    }

    else
    {
      v49 = -1;
    }

    if (!v48)
    {
      return;
    }

    v50 = v49 & (~v19 + a2);
    if (v48 <= 3)
    {
      v51 = v48;
    }

    else
    {
      v51 = 4;
    }

    bzero(v47, v48);
    if (v51 <= 2)
    {
      if (v51 == 1)
      {
LABEL_89:
        *v47 = v50;
        return;
      }

LABEL_100:
      *v47 = v50;
      return;
    }

    goto LABEL_101;
  }

  v41 = v57;
  v42 = *(v56 + 56);
  v43 = a2;
  v44 = v5;
LABEL_64:

  v42(v39, v43, v44, v41);
}

unint64_t sub_1E5BC9EF0()
{
  result = qword_1ED040348;
  if (!qword_1ED040348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040348);
  }

  return result;
}

unint64_t sub_1E5BC9F9C()
{
  result = qword_1ED040350;
  if (!qword_1ED040350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040350);
  }

  return result;
}

unint64_t sub_1E5BC9FF4()
{
  result = qword_1ED040358;
  if (!qword_1ED040358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040358);
  }

  return result;
}

uint64_t sub_1E5BCA058(uint64_t a1)
{
  v2 = sub_1E5BCAAC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCA094(uint64_t a1)
{
  v2 = sub_1E5BCAAC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BCA0D0(uint64_t a1)
{
  v2 = sub_1E5BCA9CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCA10C(uint64_t a1)
{
  v2 = sub_1E5BCA9CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E5BCA148()
{
  v1 = *v0;
  v2 = 0x6570704177656976;
  v3 = 0xD000000000000017;
  v4 = 0xD00000000000001DLL;
  if (v1 == 3)
  {
    v4 = 0xD000000000000023;
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

uint64_t sub_1E5BCA1FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5BCAC40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5BCA224(uint64_t a1)
{
  v2 = sub_1E5BCA978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCA260(uint64_t a1)
{
  v2 = sub_1E5BCA978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BCA29C(uint64_t a1)
{
  v2 = sub_1E5BCAA20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCA2D8(uint64_t a1)
{
  v2 = sub_1E5BCAA20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BCA314(uint64_t a1)
{
  v2 = sub_1E5BCAA74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCA350(uint64_t a1)
{
  v2 = sub_1E5BCAA74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BCA38C(uint64_t a1)
{
  v2 = sub_1E5BCAB1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCA3C8(uint64_t a1)
{
  v2 = sub_1E5BCAB1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BookmarkButtonAction.encode(to:)(void *a1, int a2)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040360, &qword_1E5C029A0);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040368, &qword_1E5C029A8);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040370, &qword_1E5C029B0);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040378, &qword_1E5C029B8);
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040380, &qword_1E5C029C0);
  v38 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040388, &qword_1E5C029C8);
  v15 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v17 = &v29 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BCA978();
  sub_1E5BF7524();
  v18 = (v15 + 8);
  if (v40 <= 1u)
  {
    v24 = v38;
    v23 = v39;
    if (v40)
    {
      v43 = 1;
      sub_1E5BCAAC8();
      v28 = v41;
      sub_1E5BF7394();
      (*(v23 + 8))(v11, v9);
      return (*v18)(v17, v28);
    }

    v42 = 0;
    sub_1E5BCAB1C();
    v25 = v41;
    sub_1E5BF7394();
    (*(v24 + 8))(v14, v12);
    return (*v18)(v17, v25);
  }

  if (v40 == 2)
  {
    v44 = 2;
    sub_1E5BCAA74();
    v26 = v29;
    v25 = v41;
    sub_1E5BF7394();
    (*(v30 + 8))(v26, v31);
    return (*v18)(v17, v25);
  }

  if (v40 == 3)
  {
    v45 = 3;
    sub_1E5BCAA20();
    v19 = v32;
    v20 = v41;
    sub_1E5BF7394();
    v22 = v33;
    v21 = v34;
  }

  else
  {
    v46 = 4;
    sub_1E5BCA9CC();
    v19 = v35;
    v20 = v41;
    sub_1E5BF7394();
    v22 = v36;
    v21 = v37;
  }

  (*(v22 + 8))(v19, v21);
  return (*v18)(v17, v20);
}

unint64_t sub_1E5BCA978()
{
  result = qword_1ED040390;
  if (!qword_1ED040390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040390);
  }

  return result;
}

unint64_t sub_1E5BCA9CC()
{
  result = qword_1ED040398;
  if (!qword_1ED040398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040398);
  }

  return result;
}

unint64_t sub_1E5BCAA20()
{
  result = qword_1ED0403A0;
  if (!qword_1ED0403A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403A0);
  }

  return result;
}

unint64_t sub_1E5BCAA74()
{
  result = qword_1ED0403A8;
  if (!qword_1ED0403A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403A8);
  }

  return result;
}

unint64_t sub_1E5BCAAC8()
{
  result = qword_1ED0403B0;
  if (!qword_1ED0403B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403B0);
  }

  return result;
}

unint64_t sub_1E5BCAB1C()
{
  result = qword_1ED0403B8;
  if (!qword_1ED0403B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403B8);
  }

  return result;
}

uint64_t sub_1E5BCAB88@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5BCADF8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t BookmarkButtonAction.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](a1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BCAC40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5C084D0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5C084F0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001E5C08510 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001E5C08540 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

uint64_t sub_1E5BCADF8(void *a1)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040430, &qword_1E5C02FA0);
  v42 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v35 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040438, &qword_1E5C02FA8);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040440, &qword_1E5C02FB0);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040448, &qword_1E5C02FB8);
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040450, &qword_1E5C02FC0);
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040458, &unk_1E5C02FC8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  v17 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1E5BCA978();
  v18 = v50;
  sub_1E5BF7514();
  if (v18)
  {
    goto LABEL_9;
  }

  v19 = v12;
  v36 = v10;
  v20 = v48;
  v50 = v14;
  v21 = v16;
  v22 = sub_1E5BF7374();
  v23 = (2 * *(v22 + 16)) | 1;
  v51 = v22;
  v52 = v22 + 32;
  v53 = 0;
  v54 = v23;
  v24 = sub_1E5B7E69C();
  if (v24 == 5 || v53 != v54 >> 1)
  {
    v28 = v13;
    v29 = sub_1E5BF7284();
    v14 = swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770);
    *v31 = &type metadata for BookmarkButtonAction;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    (*(v50 + 8))(v21, v28);
    swift_unknownObjectRelease();
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v49);
    return v14;
  }

  v14 = v24;
  if (v24 <= 1u)
  {
    if (v24)
    {
      v55 = 1;
      sub_1E5BCAAC8();
      sub_1E5BF72C4();
      (*(v38 + 8))(v9, v39);
    }

    else
    {
      v55 = 0;
      sub_1E5BCAB1C();
      sub_1E5BF72C4();
      (*(v37 + 8))(v19, v36);
    }

    (*(v50 + 8))(v16, v13);
  }

  else if (v24 == 2)
  {
    v55 = 2;
    sub_1E5BCAA74();
    sub_1E5BF72C4();
    v33 = v50;
    (*(v40 + 8))(v20, v41);
    (*(v33 + 8))(v16, v13);
  }

  else
  {
    v25 = v50;
    v26 = v21;
    if (v24 == 3)
    {
      v55 = 3;
      sub_1E5BCAA20();
      v27 = v46;
      sub_1E5BF72C4();
      (*(v43 + 8))(v27, v44);
    }

    else
    {
      v55 = 4;
      sub_1E5BCA9CC();
      v34 = v47;
      sub_1E5BF72C4();
      (*(v42 + 8))(v34, v45);
    }

    (*(v25 + 8))(v26, v13);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v49);
  return v14;
}

unint64_t sub_1E5BCB560()
{
  result = qword_1ED0403C0;
  if (!qword_1ED0403C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403C0);
  }

  return result;
}

unint64_t sub_1E5BCB628()
{
  result = qword_1ED0403C8;
  if (!qword_1ED0403C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403C8);
  }

  return result;
}

unint64_t sub_1E5BCB680()
{
  result = qword_1ED0403D0;
  if (!qword_1ED0403D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403D0);
  }

  return result;
}

unint64_t sub_1E5BCB6D8()
{
  result = qword_1ED0403D8;
  if (!qword_1ED0403D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403D8);
  }

  return result;
}

unint64_t sub_1E5BCB730()
{
  result = qword_1ED0403E0;
  if (!qword_1ED0403E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403E0);
  }

  return result;
}

unint64_t sub_1E5BCB788()
{
  result = qword_1ED0403E8;
  if (!qword_1ED0403E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403E8);
  }

  return result;
}

unint64_t sub_1E5BCB7E0()
{
  result = qword_1ED0403F0;
  if (!qword_1ED0403F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403F0);
  }

  return result;
}

unint64_t sub_1E5BCB838()
{
  result = qword_1ED0403F8;
  if (!qword_1ED0403F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403F8);
  }

  return result;
}

unint64_t sub_1E5BCB890()
{
  result = qword_1ED040400;
  if (!qword_1ED040400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040400);
  }

  return result;
}

unint64_t sub_1E5BCB8E8()
{
  result = qword_1ED040408;
  if (!qword_1ED040408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040408);
  }

  return result;
}

unint64_t sub_1E5BCB940()
{
  result = qword_1ED040410;
  if (!qword_1ED040410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040410);
  }

  return result;
}

unint64_t sub_1E5BCB998()
{
  result = qword_1ED040418;
  if (!qword_1ED040418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040418);
  }

  return result;
}

unint64_t sub_1E5BCB9F0()
{
  result = qword_1ED040420;
  if (!qword_1ED040420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040420);
  }

  return result;
}

unint64_t sub_1E5BCBA48()
{
  result = qword_1ED040428;
  if (!qword_1ED040428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040428);
  }

  return result;
}

__n128 RemoveLibraryItemFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t RemoveLibraryItemFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v127 = a3;
  v119 = a1;
  v9 = a4 & 0xFFFFFFFFFFFFLL;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v103 - v14;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040460, &qword_1E5C02FD8);
  v121 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v122 = v103 - v16;
  v17 = *(a5 + 16);
  MEMORY[0x1EEE9AC00](v18);
  v120 = v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v103 - v21;
  v23 = v5[1];
  v131 = *v5;
  v132 = v23;
  v24 = v5[2];
  v25 = v5[3];
  v27 = v26;
  v133 = v24;
  v134 = v25;
  v124 = *(v26 + 16);
  v123 = v26 + 16;
  v124(v103 - v21, a2, v17);
  if ((a4 & 0x1000000000000) != 0)
  {
    v32 = a5;
    if (v9 <= 1)
    {
      if (v9)
      {
        (*(v27 + 8))(v22, v17);
        v96 = type metadata accessor for RemoveLibraryItemState(0, v17, *(a5 + 24), v95);
        v97 = *(v96 + 52);
        v98 = a2;
        sub_1E5B5F804(a2 + v97, &qword_1ED03E5C0, &unk_1E5BF8A20);
        v99 = *(v96 + 48);
        v100 = sub_1E5BF6494();
        v101 = *(v100 - 8);
        (*(v101 + 16))(v98 + v97, v98 + v99, v100);
        (*(v101 + 56))(v98 + v97, 0, 1, v100);
        v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
        return (*(*(v102 - 8) + 56))(v98 + v97, 0, 1, v102);
      }

      else
      {
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
        v108 = v53[12];
        v54 = v27;
        v55 = v53[16];
        v109 = v53[20];
        v56 = v122;
        v57 = &v122[v53[24]];
        v117 = v32;
        v58 = *(v32 + 24);
        v119 = *(v58 + 24);
        v59 = v58;
        v111 = v58;
        v60 = v22;
        v105 = v22;
        v61 = v17;
        sub_1E5BF72B4();
        v129 = 5;
        sub_1E5B6C48C(v128, v130);
        v116 = sub_1E5B6C4E8();
        sub_1E5BF7254();
        sub_1E5B6C53C(v128);
        v114 = *MEMORY[0x1E6999B50];
        v62 = v114;
        v113 = sub_1E5BF6E24();
        v63 = *(v113 - 8);
        v112 = *(v63 + 104);
        v115 = v63 + 104;
        v112(&v56[v55], v62, v113);
        v64 = v120;
        v124(v120, v60, v61);
        v118 = v54;
        v65 = (*(v54 + 80) + 96) & ~*(v54 + 80);
        v66 = swift_allocObject();
        *(v66 + 16) = v61;
        *(v66 + 24) = v59;
        v67 = v132;
        *(v66 + 32) = v131;
        *(v66 + 48) = v67;
        v68 = v134;
        *(v66 + 64) = v133;
        *(v66 + 80) = v68;
        v110 = *(v54 + 32);
        v110(v66 + v65, v64, v61);
        *v57 = &unk_1E5C03010;
        *(v57 + 1) = v66;
        v69 = *(v117 - 8);
        v106 = *(v69 + 16);
        v107 = v69 + 16;
        v106(v130, &v131);
        sub_1E5B6C8B8(&type metadata for RemoveLibraryItemAction);
        sub_1E5B6C8BC(&v56[v109]);
        LODWORD(v109) = *MEMORY[0x1E6999AD8];
        v121 = *(v121 + 104);
        (v121)(v56);
        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040468, &qword_1E5C02FF0);
        sub_1E5BF7034();
        v103[1] = v53[12];
        v70 = v53[16];
        v104 = v53[20];
        v71 = &v56[v53[24]];
        v72 = v105;
        sub_1E5BF72B4();
        v129 = 0;
        sub_1E5B6C48C(v128, v130);
        sub_1E5BF7254();
        sub_1E5B6C53C(v128);
        v112(&v56[v70], v114, v113);
        v124(v64, v72, v61);
        v73 = swift_allocObject();
        v74 = v111;
        *(v73 + 16) = v61;
        *(v73 + 24) = v74;
        v75 = v132;
        *(v73 + 32) = v131;
        *(v73 + 48) = v75;
        v76 = v134;
        *(v73 + 64) = v133;
        *(v73 + 80) = v76;
        v110(v73 + v65, v64, v61);
        *v71 = &unk_1E5C03020;
        *(v71 + 1) = v73;
        (v106)(v130, &v131, v117);
        sub_1E5B6C8B8(&type metadata for RemoveLibraryItemAction);
        sub_1E5B6C8BC(&v56[v104]);
        (v121)(v56, v109, v126);
        sub_1E5BF7034();
        return (*(v118 + 8))(v72, v61);
      }
    }

    else
    {
      v33 = v22;
      if (v9 == 2)
      {
        (*(v27 + 8))(v22, v17);
        v78 = *(type metadata accessor for RemoveLibraryItemState(0, v17, *(a5 + 24), v77) + 52);
        sub_1E5B5F804(a2 + v78, &qword_1ED03E5C0, &unk_1E5BF8A20);
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
        return (*(*(v79 - 8) + 56))(a2 + v78, 1, 1, v79);
      }

      else
      {
        v118 = v27;
        if (v9 == 3)
        {
          v34 = *(a5 + 24);
          v35 = v17;
          v36 = *(type metadata accessor for RemoveLibraryItemState(0, v17, v34, v28) + 44);
          sub_1E5B6C41C(a2 + v36, v15);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v37 = v34;
            v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F8, &unk_1E5BF91A0) + 48);
            v39 = sub_1E5BF6464();
            (*(*(v39 - 8) + 8))(&v15[v38], v39);
            sub_1E5B5F804(a2 + v36, &qword_1ED03E260, &qword_1E5BF9190);
            swift_storeEnumTagMultiPayload();
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
            v116 = v40[12];
            v41 = a5;
            v42 = v40[16];
            v119 = v40[20];
            v43 = v122;
            v44 = &v122[v40[24]];
            sub_1E5BF72B4();
            v129 = 3;
            sub_1E5B6C48C(v128, v130);
            sub_1E5B6C4E8();
            sub_1E5BF7254();
            sub_1E5B6C53C(v128);
            v45 = *MEMORY[0x1E6999B50];
            v46 = sub_1E5BF6E24();
            (*(*(v46 - 8) + 104))(&v43[v42], v45, v46);
            v47 = v120;
            v124(v120, v33, v35);
            v48 = v118;
            v49 = (*(v118 + 80) + 96) & ~*(v118 + 80);
            v50 = swift_allocObject();
            *(v50 + 16) = v35;
            *(v50 + 24) = v37;
            v51 = v132;
            *(v50 + 32) = v131;
            *(v50 + 48) = v51;
            v52 = v134;
            *(v50 + 64) = v133;
            *(v50 + 80) = v52;
            (*(v48 + 32))(v50 + v49, v47, v35);
            *v44 = &unk_1E5C03000;
            *(v44 + 1) = v50;
            (*(*(v41 - 8) + 16))(v130, &v131, v41);
            sub_1E5B6C8B8(&type metadata for RemoveLibraryItemAction);
            sub_1E5B6C8BC(&v43[v119]);
            (*(v121 + 104))(v43, *MEMORY[0x1E6999AD8], v126);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040468, &qword_1E5C02FF0);
            sub_1E5BF7034();
            return (*(v48 + 8))(v33, v35);
          }

          else
          {
            (*(v118 + 8))(v33, v17);
            return sub_1E5B5F804(v15, &qword_1ED03E260, &qword_1E5BF9190);
          }
        }

        else
        {
          v130[0] = v131;
          v130[1] = v132;
          v130[2] = v133;
          v130[3] = v134;
          LOBYTE(v128[0]) = 1;
          RemoveLibraryItemFeature.reduce(localState:sharedState:sideEffects:action:)(v119, a2, v127, 0x1000000000003, a5);
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
          v116 = v80[12];
          v81 = v22;
          v82 = v80[16];
          v119 = v80[20];
          v83 = v122;
          v84 = &v122[v80[24]];
          v85 = *(v32 + 24);
          v86 = v17;
          sub_1E5BF72B4();
          v129 = 2;
          sub_1E5B6C48C(v128, v130);
          sub_1E5B6C4E8();
          sub_1E5BF7254();
          sub_1E5B6C53C(v128);
          v87 = *MEMORY[0x1E6999B50];
          v88 = sub_1E5BF6E24();
          (*(*(v88 - 8) + 104))(&v83[v82], v87, v88);
          v89 = v120;
          v124(v120, v81, v86);
          v90 = v118;
          v91 = (*(v118 + 80) + 96) & ~*(v118 + 80);
          v92 = swift_allocObject();
          *(v92 + 16) = v86;
          *(v92 + 24) = v85;
          v93 = v132;
          *(v92 + 32) = v131;
          *(v92 + 48) = v93;
          v94 = v134;
          *(v92 + 64) = v133;
          *(v92 + 80) = v94;
          (*(v90 + 32))(v92 + v91, v89, v86);
          *v84 = &unk_1E5C02FE8;
          *(v84 + 1) = v92;
          (*(*(v32 - 8) + 16))(v130, &v131, v32);
          sub_1E5B6C8B8(&type metadata for RemoveLibraryItemAction);
          sub_1E5B6C8BC(&v83[v119]);
          (*(v121 + 104))(v83, *MEMORY[0x1E6999AD8], v126);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040468, &qword_1E5C02FF0);
          sub_1E5BF7034();
          return (*(v90 + 8))(v81, v86);
        }
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F8, &unk_1E5BF91A0);
    *v12 = a4;
    v12[4] = BYTE4(a4);
    v12[5] = BYTE5(v9) & 1;
    sub_1E5BF6444();
    (*(v27 + 8))(v22, v17);
    swift_storeEnumTagMultiPayload();
    v30 = type metadata accessor for RemoveLibraryItemState(0, v17, *(a5 + 24), v29);
    return sub_1E5B6C3AC(v12, a2 + *(v30 + 44));
  }
}

uint64_t sub_1E5BCCA24(uint64_t a1, int **a2, uint64_t a3)
{
  v3[2] = sub_1E5BF7084();
  v3[3] = sub_1E5BF7074();
  v8 = (*a2 + **a2);
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1E5B79670;

  return v8(a3);
}

uint64_t sub_1E5BCCB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = sub_1E5BF7084();
  v3[4] = sub_1E5BF7074();
  v8 = (*(a2 + 48) + **(a2 + 48));
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1E5BCCC50;

  return v8(a3);
}

uint64_t sub_1E5BCCC50()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {
    v4 = sub_1E5BF7054();

    return MEMORY[0x1EEE6DFA0](sub_1E5BCCE14, v4, v3);
  }

  else
  {
    *(v2 + 64) = 0;
    *(v2 + 68) = 256;
    *(v2 + 70) = 0;
    v5 = swift_task_alloc();
    *(v2 + 56) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040470, &qword_1E5C03108);
    *v5 = v2;
    v5[1] = sub_1E5BBF834;

    return MEMORY[0x1EEE01A40](v2 + 64, v6);
  }
}

uint64_t sub_1E5BCCE14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5BCCE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_1E5BF7084();
  v3[3] = sub_1E5BF7074();
  v8 = (*(a2 + 32) + **(a2 + 32));
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1E5BBB568;

  return v8(a3);
}

uint64_t sub_1E5BCCF8C(uint64_t a1)
{
  v4 = (*(*(*(v1 + 16) - 8) + 80) + 96) & ~*(*(*(v1 + 16) - 8) + 80);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5B6E314;

  return sub_1E5BCCE78(a1, v1 + 32, v1 + v4);
}

uint64_t sub_1E5BCD074(uint64_t a1)
{
  v4 = (*(*(*(v1 + 16) - 8) + 80) + 96) & ~*(*(*(v1 + 16) - 8) + 80);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5B6E314;

  return sub_1E5BCCB38(a1, v1 + 32, v1 + v4);
}

uint64_t sub_1E5BCD15C(uint64_t a1)
{
  v4 = (*(*(*(v1 + 16) - 8) + 80) + 96) & ~*(*(*(v1 + 16) - 8) + 80);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5B6E314;

  return sub_1E5BBB010(a1, v1 + 32, v1 + v4);
}

uint64_t objectdestroyTm_7()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5BCD318(uint64_t a1)
{
  v4 = (*(*(*(v1 + 16) - 8) + 80) + 96) & ~*(*(*(v1 + 16) - 8) + 80);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5B6D9A0;

  return sub_1E5BCCA24(a1, (v1 + 32), v1 + v4);
}

unint64_t sub_1E5BCD438()
{
  result = qword_1EE2C6EA8;
  if (!qword_1EE2C6EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6EA8);
  }

  return result;
}

unint64_t sub_1E5BCD490()
{
  result = qword_1EE2C6EB0[0];
  if (!qword_1EE2C6EB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C6EB0);
  }

  return result;
}

uint64_t sub_1E5BCD500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5BCD5C8(uint64_t a1)
{
  v2 = sub_1E5BCE598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCD604(uint64_t a1)
{
  v2 = sub_1E5BCE598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E5BCD640()
{
  v1 = *v0;
  v2 = 0x6570704177656976;
  v3 = 0xD000000000000023;
  if (v1 != 4)
  {
    v3 = 0xD000000000000015;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000020;
  }

  v4 = 0xD000000000000017;
  if (v1 != 1)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_1E5BCD710@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5BCE694(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5BCD738(uint64_t a1)
{
  v2 = sub_1E5BCE448();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCD774(uint64_t a1)
{
  v2 = sub_1E5BCE448();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BCD7B0(uint64_t a1)
{
  v2 = sub_1E5BCE49C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCD7EC(uint64_t a1)
{
  v2 = sub_1E5BCE49C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BCD828(uint64_t a1)
{
  v2 = sub_1E5BCE544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCD864(uint64_t a1)
{
  v2 = sub_1E5BCE544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BCD8A0(uint64_t a1)
{
  v2 = sub_1E5BCE4F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCD8DC(uint64_t a1)
{
  v2 = sub_1E5BCE4F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BCD918(uint64_t a1)
{
  v2 = sub_1E5BCE5EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCD954(uint64_t a1)
{
  v2 = sub_1E5BCE5EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BCD990(uint64_t a1)
{
  v2 = sub_1E5BCE640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCD9CC(uint64_t a1)
{
  v2 = sub_1E5BCE640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoveLibraryItemAction.encode(to:)(void *a1, uint64_t a2)
{
  v46 = a2;
  v47 = a2 & 0xFFFFFFFFFFFFLL;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040478, &qword_1E5C03130);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040480, &qword_1E5C03138);
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040488, &qword_1E5C03140);
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040490, &qword_1E5C03148);
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v30 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040498, &qword_1E5C03150);
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0404A0, &qword_1E5C03158);
  v31 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0404A8, &qword_1E5C03160);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BCE448();
  v21 = v46;
  sub_1E5BF7524();
  if ((v21 & 0x1000000000000) == 0)
  {
    v56 = 5;
    sub_1E5BCE49C();
    v22 = v43;
    sub_1E5BF7394();
    v53 = BYTE4(v21);
    v52 = v21;
    v54 = BYTE5(v47) & 1;
    sub_1E5B60FD0();
    v23 = v45;
    sub_1E5BF7424();
    (*(v44 + 8))(v22, v23);
    return (*(v18 + 8))(v20, v17);
  }

  v25 = (v18 + 8);
  if (v47 <= 1)
  {
    if (!v47)
    {
      v48 = 0;
      sub_1E5BCE640();
      sub_1E5BF7394();
      (*(v31 + 8))(v16, v14);
      return (*v25)(v20, v17);
    }

    v49 = 1;
    sub_1E5BCE5EC();
    v26 = v17;
    sub_1E5BF7394();
    (*(v32 + 8))(v13, v33);
  }

  else
  {
    if (v47 == 2)
    {
      v50 = 2;
      sub_1E5BCE598();
      v27 = v34;
      v26 = v17;
      sub_1E5BF7394();
      v29 = v35;
      v28 = v36;
    }

    else
    {
      v26 = v17;
      if (v47 == 3)
      {
        v51 = 3;
        sub_1E5BCE544();
        v27 = v37;
        sub_1E5BF7394();
        v29 = v38;
        v28 = v39;
      }

      else
      {
        v55 = 4;
        sub_1E5BCE4F0();
        v27 = v40;
        sub_1E5BF7394();
        v29 = v41;
        v28 = v42;
      }
    }

    (*(v29 + 8))(v27, v28);
  }

  return (*v25)(v20, v26);
}

uint64_t RemoveLibraryItemAction.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x1000000000000) != 0)
  {
    if ((a2 & 0xFFFFFFFFFFFFuLL) > 1)
    {
      if (v2 != 2)
      {
        if (v2 == 3)
        {
          v5 = 3;
        }

        else
        {
          v5 = 4;
        }

        return MEMORY[0x1E6937C10](v5);
      }

      goto LABEL_10;
    }

    if (v2)
    {
      v5 = 1;
      return MEMORY[0x1E6937C10](v5);
    }

LABEL_12:
    v5 = 0;
    return MEMORY[0x1E6937C10](v5);
  }

  v3 = a2 & 0xFFFFFFFFFFLL;
  MEMORY[0x1E6937C10](5);
  if ((v2 & 0x10000000000) != 0)
  {
    if (v3)
    {
LABEL_10:
      v5 = 2;
      return MEMORY[0x1E6937C10](v5);
    }

    goto LABEL_12;
  }

  MEMORY[0x1E6937C10](1);
  if ((v3 & 0x100000000) != 0)
  {
    return sub_1E5BF74D4();
  }

  sub_1E5BF74D4();
  return sub_1E5BF74E4();
}

uint64_t RemoveLibraryItemAction.hashValue.getter(unint64_t a1)
{
  sub_1E5BF74B4();
  RemoveLibraryItemAction.hash(into:)(v3, a1 & 0xFFFFFFFFFFFFLL | ((HIWORD(a1) & 1) << 48));
  return sub_1E5BF7504();
}

unint64_t sub_1E5BCE1BC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5BCE898(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 4) = WORD2(result);
    *(a1 + 6) = BYTE6(result) & 1;
  }

  return result;
}

uint64_t sub_1E5BCE234()
{
  v1 = *v0 | (*(v0 + 2) << 32);
  v2 = *(v0 + 6);
  sub_1E5BF74B4();
  RemoveLibraryItemAction.hash(into:)(v4, v1 | (v2 << 48));
  return sub_1E5BF7504();
}

uint64_t sub_1E5BCE2B8(uint64_t a1)
{
  v2 = *v1 | (*(v1 + 2) << 32);
  v3 = *(v1 + 6);
  sub_1E5BF74B4();
  RemoveLibraryItemAction.hash(into:)(v5, v2 | (v3 << 48));
  return sub_1E5BF7504();
}

BOOL sub_1E5BCE354(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFLL;
  v3 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a1 & 0x1000000000000) != 0)
  {
    if ((a1 & 0xFFFFFFFFFFFFuLL) <= 1)
    {
      if (v2)
      {
        return (a2 & 0x1000000000000) != 0 && v3 == 1;
      }

      else
      {
        return (a2 & 0x1000000000000) != 0 && !v3;
      }
    }

    else if (v2 == 2)
    {
      return (a2 & 0x1000000000000) != 0 && v3 == 2;
    }

    else if (v2 == 3)
    {
      return (a2 & 0x1000000000000) != 0 && v3 == 3;
    }

    else
    {
      return (a2 & 0x1000000000000) != 0 && v3 > 3;
    }
  }

  else
  {
    if ((a2 & 0x1000000000000) != 0)
    {
      return 0;
    }

    v5 = a2 & 0xFFFFFFFFFFLL;
    if ((a1 & 0x10000000000) != 0)
    {
      if ((a1 & 0xFFFFFFFFFFLL) != 0)
      {
        if ((a2 & 0x10000000000) == 0)
        {
          return 0;
        }

        return v5 != 0;
      }

      else
      {
        if ((a2 & 0x10000000000) == 0)
        {
          return 0;
        }

        return v5 == 0;
      }
    }

    else
    {
      if ((a2 & 0x10000000000) != 0)
      {
        return 0;
      }

      if ((a1 & 0x100000000) != 0)
      {
        return (a2 & 0x100000000) != 0;
      }

      else
      {
        return (a2 & 0x100000000) == 0 && *&a1 == *&a2;
      }
    }
  }
}

unint64_t sub_1E5BCE448()
{
  result = qword_1ED0404B0;
  if (!qword_1ED0404B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0404B0);
  }

  return result;
}

unint64_t sub_1E5BCE49C()
{
  result = qword_1ED0404B8;
  if (!qword_1ED0404B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0404B8);
  }

  return result;
}

unint64_t sub_1E5BCE4F0()
{
  result = qword_1ED0404C0;
  if (!qword_1ED0404C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0404C0);
  }

  return result;
}

unint64_t sub_1E5BCE544()
{
  result = qword_1ED0404C8;
  if (!qword_1ED0404C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0404C8);
  }

  return result;
}

unint64_t sub_1E5BCE598()
{
  result = qword_1ED0404D0;
  if (!qword_1ED0404D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0404D0);
  }

  return result;
}

unint64_t sub_1E5BCE5EC()
{
  result = qword_1ED0404D8;
  if (!qword_1ED0404D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0404D8);
  }

  return result;
}

unint64_t sub_1E5BCE640()
{
  result = qword_1ED0404E0;
  if (!qword_1ED0404E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0404E0);
  }

  return result;
}

uint64_t sub_1E5BCE694(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5C08560 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001E5C08580 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001E5C07630 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001E5C08510 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5C07660 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

unint64_t sub_1E5BCE898(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040570, &qword_1E5C03890);
  v3 = *(v2 - 8);
  v56 = v2;
  v57 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040578, &qword_1E5C03898);
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v45 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040580, &qword_1E5C038A0);
  v53 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v60 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040588, &qword_1E5C038A8);
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040590, &qword_1E5C038B0);
  v48 = *(v11 - 8);
  v49 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040598, &qword_1E5C038B8);
  v47 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0405A0, &unk_1E5C038C0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - v19;
  v21 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1E5BCE448();
  v22 = v62;
  sub_1E5BF7514();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v23 = v16;
  v45 = v14;
  v46 = v13;
  v24 = v59;
  v25 = v60;
  v26 = v61;
  v62 = v18;
  v27 = sub_1E5BF7374();
  v28 = (2 * *(v27 + 16)) | 1;
  v64 = v27;
  v65 = v27 + 32;
  v66 = 0;
  v67 = v28;
  v29 = sub_1E5B7E6D0();
  if (v29 == 6 || v66 != v67 >> 1)
  {
    v34 = sub_1E5BF7284();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770);
    *v36 = &type metadata for RemoveLibraryItemAction;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    (*(v62 + 8))(v20, v17);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  if (v29 > 2u)
  {
    if (v29 == 3)
    {
      LOBYTE(v68) = 3;
      sub_1E5BCE544();
      sub_1E5BF72C4();
      v39 = v62;
      (*(v53 + 8))(v25, v50);
      (*(v39 + 8))(v20, v17);
      swift_unknownObjectRelease();
      v33 = 1;
      v32 = 3;
    }

    else
    {
      v38 = v62;
      if (v29 == 4)
      {
        LOBYTE(v68) = 4;
        sub_1E5BCE4F0();
        sub_1E5BF72C4();
        (*(v55 + 8))(v26, v54);
        (*(v38 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v33 = 1;
        v32 = 4;
      }

      else
      {
        LOBYTE(v68) = 5;
        sub_1E5BCE49C();
        v42 = v58;
        sub_1E5BF72C4();
        sub_1E5B62934();
        v43 = v56;
        sub_1E5BF7364();
        (*(v57 + 8))(v42, v43);
        (*(v38 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v33 = 0;
        v44 = 0x10000000000;
        if (!v70)
        {
          v44 = 0;
        }

        v32 = v44 | v68 | (v69 << 32);
      }
    }
  }

  else if (v29)
  {
    if (v29 == 1)
    {
      LOBYTE(v68) = 1;
      sub_1E5BCE5EC();
      v30 = v46;
      sub_1E5BF72C4();
      v31 = v62;
      (*(v48 + 8))(v30, v49);
      (*(v31 + 8))(v20, v17);
      swift_unknownObjectRelease();
      v32 = 1;
      v33 = 1;
    }

    else
    {
      LOBYTE(v68) = 2;
      sub_1E5BCE598();
      v40 = v24;
      sub_1E5BF72C4();
      v41 = v62;
      (*(v51 + 8))(v40, v52);
      (*(v41 + 8))(v20, v17);
      swift_unknownObjectRelease();
      v33 = 1;
      v32 = 2;
    }
  }

  else
  {
    LOBYTE(v68) = 0;
    sub_1E5BCE640();
    sub_1E5BF72C4();
    (*(v47 + 8))(v23, v45);
    (*(v62 + 8))(v20, v17);
    swift_unknownObjectRelease();
    v32 = 0;
    v33 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v63);
  return v32 | (v33 << 48);
}

unint64_t sub_1E5BCF238()
{
  result = qword_1ED0404E8;
  if (!qword_1ED0404E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0404E8);
  }

  return result;
}

unint64_t sub_1E5BCF310()
{
  result = qword_1ED0404F0;
  if (!qword_1ED0404F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0404F0);
  }

  return result;
}

unint64_t sub_1E5BCF368()
{
  result = qword_1ED0404F8;
  if (!qword_1ED0404F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0404F8);
  }

  return result;
}

unint64_t sub_1E5BCF3C0()
{
  result = qword_1ED040500;
  if (!qword_1ED040500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040500);
  }

  return result;
}

unint64_t sub_1E5BCF418()
{
  result = qword_1ED040508;
  if (!qword_1ED040508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040508);
  }

  return result;
}

unint64_t sub_1E5BCF470()
{
  result = qword_1ED040510;
  if (!qword_1ED040510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040510);
  }

  return result;
}

unint64_t sub_1E5BCF4C8()
{
  result = qword_1ED040518;
  if (!qword_1ED040518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040518);
  }

  return result;
}

unint64_t sub_1E5BCF520()
{
  result = qword_1ED040520;
  if (!qword_1ED040520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040520);
  }

  return result;
}

unint64_t sub_1E5BCF578()
{
  result = qword_1ED040528;
  if (!qword_1ED040528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040528);
  }

  return result;
}

unint64_t sub_1E5BCF5D0()
{
  result = qword_1ED040530;
  if (!qword_1ED040530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040530);
  }

  return result;
}

unint64_t sub_1E5BCF628()
{
  result = qword_1ED040538;
  if (!qword_1ED040538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040538);
  }

  return result;
}

unint64_t sub_1E5BCF680()
{
  result = qword_1ED040540;
  if (!qword_1ED040540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040540);
  }

  return result;
}

unint64_t sub_1E5BCF6D8()
{
  result = qword_1ED040548;
  if (!qword_1ED040548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040548);
  }

  return result;
}

unint64_t sub_1E5BCF730()
{
  result = qword_1ED040550;
  if (!qword_1ED040550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040550);
  }

  return result;
}

unint64_t sub_1E5BCF788()
{
  result = qword_1ED040558;
  if (!qword_1ED040558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040558);
  }

  return result;
}

unint64_t sub_1E5BCF7E0()
{
  result = qword_1ED040560;
  if (!qword_1ED040560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040560);
  }

  return result;
}

unint64_t sub_1E5BCF838()
{
  result = qword_1ED040568;
  if (!qword_1ED040568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040568);
  }

  return result;
}

uint64_t sub_1E5BCF88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RemoveLibraryItemFeature(255, *(a1 + 16), *(a1 + 24), a4);
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();

  return sub_1E5BF6614();
}

uint64_t RemoveLibraryItemConfirmationDialog.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  type metadata accessor for RemoveLibraryItemFeature(255, a3, a4, v11);
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();
  result = sub_1E5BF6604();
  *a5 = result;
  *(a5 + 8) = v13;
  *(a5 + 16) = v14 & 1;
  return result;
}

uint64_t RemoveLibraryItemConfirmationDialog.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a1;
  v74 = a3;
  v5 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v76 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1E5BF64B4();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v75 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[2];
  v62 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5BF6F74();
  MEMORY[0x1EEE9AC00](v11 - 8);
  swift_getWitnessTable();
  v12 = sub_1E5BF6884();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0405A8, &qword_1E5C038D0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0405B0, &qword_1E5C038D8);
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1E5B5FC8C(&qword_1EE2C62A0, &qword_1ED0405A8, &qword_1E5C038D0, MEMORY[0x1E6981F48]);
  v17 = sub_1E5BD02E0();
  v65 = v12;
  v87 = v12;
  v88 = v13;
  v72 = v13;
  v71 = v14;
  v89 = v14;
  v90 = WitnessTable;
  v78 = v16;
  v79 = WitnessTable;
  v91 = v16;
  v92 = v17;
  v77 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v66 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v67 = &v60 - v20;
  v21 = *v3;
  v22 = *(v3 + 8);
  v23 = *(v3 + 16);
  sub_1E5BF6F64();
  sub_1E5BF6F54();
  v87 = v21;
  v88 = v22;
  LOBYTE(v89) = v23;
  sub_1E5BCF88C(a2, v24, v25, v26);
  v27 = a2[3];
  v28 = v8;
  v82 = v8;
  v83 = v27;
  swift_getKeyPath();
  v29 = v61;
  sub_1E5BF6E34();

  v84 = v21;
  v85 = v22;
  v86 = v23;
  v68 = a2;
  sub_1E5BCF88C(a2, v30, v31, v32);
  v80 = v28;
  v81 = v27;
  v33 = v28;
  swift_getKeyPath();
  v34 = v75;
  sub_1E5BF6E34();

  (*(v27 + 40))(v34, v33, v27);
  (*(v63 + 8))(v34, v64);
  (*(v62 + 8))(v29, v33);
  sub_1E5BF6F44();

  sub_1E5BF6F54();
  sub_1E5BF6F84();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v87 = v21;
  v88 = v22;
  LOBYTE(v89) = v23;
  v35 = qword_1EE2CD210;
  v36 = v68;
  v40 = sub_1E5BCF88C(v68, v37, v38, v39);
  MEMORY[0x1EEE9AC00](v40);
  swift_getKeyPath();
  sub_1E5BF6E34();

  v41 = sub_1E5BF69D4();
  v75 = v42;
  v76 = v41;
  v44 = v43;
  v64 = v45;
  v84 = v21;
  v85 = v22;
  v86 = v23;
  sub_1E5BCF88C(v36, v42, v43, v45);
  v46 = swift_allocObject();
  *(v46 + 16) = v21;
  *(v46 + 24) = v22;
  *(v46 + 32) = v23;
  sub_1E5B5F5EC(v21, v22);
  v47 = sub_1E5BF6D34();
  v68 = &v60;
  v62 = v88;
  LODWORD(v63) = v89;
  MEMORY[0x1EEE9AC00](v47);
  MEMORY[0x1EEE9AC00](v48);
  v65 = swift_checkMetadataState();
  v59[7] = v77;
  v59[6] = v78;
  v59[5] = v79;
  v49 = v71;
  v59[4] = v71;
  v50 = v72;
  v59[2] = v65;
  v59[3] = v72;
  v59[0] = sub_1E5BD2CBC;
  v59[1] = v59;
  v51 = v44;
  v52 = v66;
  v54 = v75;
  v53 = v76;
  sub_1E5BF6AB4();
  sub_1E5B7AD08(v53, v54, v51 & 1);

  v87 = v65;
  v88 = v50;
  v89 = v49;
  v90 = v79;
  v91 = v78;
  v92 = v77;
  swift_getOpaqueTypeConformance2();
  v55 = v67;
  v56 = OpaqueTypeMetadata2;
  sub_1E5B64D48();
  v57 = *(v69 + 8);
  v57(v52, v56);
  sub_1E5B64D48();
  return (v57)(v55, v56);
}

unint64_t sub_1E5BD02E0()
{
  result = qword_1EE2C6330;
  if (!qword_1EE2C6330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0405B0, &qword_1E5C038D8);
    sub_1E5BD039C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6330);
  }

  return result;
}

unint64_t sub_1E5BD039C()
{
  result = qword_1EE2C6338;
  if (!qword_1EE2C6338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0405B8, &qword_1E5C038E0);
    sub_1E5BD0428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6338);
  }

  return result;
}

unint64_t sub_1E5BD0428()
{
  result = qword_1EE2C6348;
  if (!qword_1EE2C6348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0405C0, &qword_1E5C038E8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6348);
  }

  return result;
}

uint64_t sub_1E5BD04DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _BYTE *a5@<X8>)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v52 = a5;
  v5 = *a1;
  v6 = sub_1E5BF6494();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E790, &qword_1E5BF9150);
  MEMORY[0x1EEE9AC00](v49);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v43 - v20;
  v22 = *(v5 + *MEMORY[0x1E6999B70]);
  v23 = *(v22 + 16);
  v24 = *(v22 + 24);
  v53 = v23;
  v54 = v24;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = (*(v11 + 48))(v21, 1, v10);
  if (result != 1)
  {
    sub_1E5B7AD6C(v21, v18);
    v55 = v46;
    v56 = v47;
    v57 = v48 & 1;
    v28 = type metadata accessor for RemoveLibraryItemConfirmationDialog(0, v23, v24, v27);
    v32 = sub_1E5BCF88C(v28, v29, v30, v31);
    MEMORY[0x1EEE9AC00](v32);
    *(&v43 - 2) = v23;
    *(&v43 - 1) = v24;
    swift_getKeyPath();
    sub_1E5BF6E34();

    v34 = v50;
    v33 = v51;
    (*(v50 + 56))(v15, 0, 1, v51);
    v35 = *(v49 + 48);
    sub_1E5B5F864(v18, v9, &qword_1ED03E5E8, &unk_1E5BF9600);
    sub_1E5B5F864(v15, &v9[v35], &qword_1ED03E5E8, &unk_1E5BF9600);
    v36 = *(v34 + 48);
    if (v36(v9, 1, v33) == 1)
    {
      sub_1E5B5F804(v15, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v18, &qword_1ED03E5E8, &unk_1E5BF9600);
      if (v36(&v9[v35], 1, v33) == 1)
      {
        result = sub_1E5B5F804(v9, &qword_1ED03E5E8, &unk_1E5BF9600);
        v37 = 1;
LABEL_10:
        v26 = v37 & 1;
        goto LABEL_11;
      }
    }

    else
    {
      v38 = v45;
      sub_1E5B5F864(v9, v45, &qword_1ED03E5E8, &unk_1E5BF9600);
      if (v36(&v9[v35], 1, v33) != 1)
      {
        v39 = &v9[v35];
        v40 = v44;
        (*(v34 + 32))(v44, v39, v33);
        sub_1E5B7AE4C();
        v41 = v38;
        v37 = sub_1E5BF6F14();
        v42 = *(v34 + 8);
        v42(v40, v33);
        sub_1E5B5F804(v15, &qword_1ED03E5E8, &unk_1E5BF9600);
        sub_1E5B5F804(v18, &qword_1ED03E5E8, &unk_1E5BF9600);
        v42(v41, v33);
        result = sub_1E5B5F804(v9, &qword_1ED03E5E8, &unk_1E5BF9600);
        goto LABEL_10;
      }

      sub_1E5B5F804(v15, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v18, &qword_1ED03E5E8, &unk_1E5BF9600);
      (*(v34 + 8))(v38, v33);
    }

    result = sub_1E5B5F804(v9, &qword_1ED03E790, &qword_1E5BF9150);
    v37 = 0;
    goto LABEL_10;
  }

  v26 = 0;
LABEL_11:
  *v52 = v26;
  return result;
}

_BYTE *sub_1E5BD0A90@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  if (*result)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *a2 = v2;
  *(a2 + 4) = WORD2(v2);
  *(a2 + 6) = 1;
  return result;
}

uint64_t sub_1E5BD0AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v89 = &v78 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E530, &qword_1E5BF8830);
  v94 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v78 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v83 = &v78 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v96 = &v78 - v21;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0405F0, &qword_1E5C03A98);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v78 - v22;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0405F8, &qword_1E5C03AA0);
  MEMORY[0x1EEE9AC00](v82);
  v24 = &v78 - v23;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040600, &qword_1E5C03AA8);
  MEMORY[0x1EEE9AC00](v80);
  v81 = (&v78 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v78 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040608, &qword_1E5C03AB0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v95 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v97 = &v78 - v32;
  v92 = a1;
  v93 = a2;
  v100 = a1;
  v101 = a2;
  v88 = a3;
  v102 = a3 & 1;
  v34 = type metadata accessor for RemoveLibraryItemConfirmationDialog(0, a4, a5, v33);
  sub_1E5BCF88C(v34, v35, v36, v37);
  v90 = a4;
  v91 = a5;
  v98 = a4;
  v99 = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v87 = a6;
  v84 = v14;
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v39 = v24;
      v40 = *v28 | (v28[4] << 32);
      v41 = v28[5];
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F8, &unk_1E5BF91A0) + 48);
      v43 = sub_1E5BF6464();
      (*(*(v43 - 8) + 8))(&v28[v42], v43);
      if (!v41)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    sub_1E5B5F804(v28, &qword_1ED03E260, &qword_1E5BF9190);
LABEL_12:
    swift_storeEnumTagMultiPayload();
    sub_1E5BD2E1C();
    sub_1E5BF6864();
    goto LABEL_13;
  }

  v40 = *v28 | (v28[4] << 32);
  v39 = v24;
  if (!v28[5])
  {
LABEL_9:
    v44 = v89;
    sub_1E5BF65C4();
    v45 = sub_1E5BF65E4();
    (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
    v46 = swift_allocObject();
    v47 = v91;
    *(v46 + 16) = v90;
    *(v46 + 24) = v47;
    v48 = v92;
    v49 = v93;
    *(v46 + 32) = v92;
    *(v46 + 40) = v49;
    *(v46 + 48) = v88 & 1;
    MEMORY[0x1EEE9AC00](v48);
    *(&v78 - 6) = v51;
    *(&v78 - 5) = v50;
    *(&v78 - 4) = v52;
    *(&v78 - 3) = v53;
    *(&v78 - 16) = v54;
    sub_1E5B5F5EC(v52, v53);
    v55 = v96;
    sub_1E5BF6C74();
    v56 = v94;
    (*(v94 + 16))(v79, v55, v14);
    swift_storeEnumTagMultiPayload();
    sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830, MEMORY[0x1E697D680]);
    sub_1E5BF6864();
    (*(v56 + 8))(v55, v14);
    goto LABEL_10;
  }

LABEL_7:
  if (v40)
  {
    goto LABEL_9;
  }

  swift_storeEnumTagMultiPayload();
  sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830, MEMORY[0x1E697D680]);
  sub_1E5BF6864();
LABEL_10:
  sub_1E5B5F864(v39, v81, &qword_1ED0405F8, &qword_1E5C03AA0);
  swift_storeEnumTagMultiPayload();
  sub_1E5BD2E1C();
  sub_1E5BF6864();
  sub_1E5B5F804(v39, &qword_1ED0405F8, &qword_1E5C03AA0);
LABEL_13:
  v57 = v89;
  sub_1E5BF65C4();
  v58 = sub_1E5BF65E4();
  v82 = *(*(v58 - 8) + 56);
  v82(v57, 0, 1, v58);
  v59 = swift_allocObject();
  v81 = &v78;
  v60 = v90;
  v61 = v91;
  *(v59 + 16) = v90;
  *(v59 + 24) = v61;
  v63 = v92;
  v62 = v93;
  *(v59 + 32) = v92;
  *(v59 + 40) = v62;
  v64 = v88 & 1;
  *(v59 + 48) = v88 & 1;
  MEMORY[0x1EEE9AC00](v59);
  *(&v78 - 6) = v60;
  *(&v78 - 5) = v61;
  *(&v78 - 4) = v63;
  *(&v78 - 3) = v62;
  *(&v78 - 16) = v64;
  sub_1E5B5F5EC(v63, v62);
  sub_1E5BF6C74();
  sub_1E5BF65D4();
  v82(v57, 0, 1, v58);
  v65 = swift_allocObject();
  *(v65 + 16) = v60;
  *(v65 + 24) = v61;
  *(v65 + 32) = v63;
  *(v65 + 40) = v62;
  *(v65 + 48) = v64;
  MEMORY[0x1EEE9AC00](v65);
  *(&v78 - 6) = v60;
  *(&v78 - 5) = v61;
  *(&v78 - 4) = v63;
  *(&v78 - 3) = v62;
  *(&v78 - 16) = v64;
  sub_1E5B5F5EC(v63, v62);
  v66 = v83;
  sub_1E5BF6C74();
  v67 = v95;
  sub_1E5B5F864(v97, v95, &qword_1ED040608, &qword_1E5C03AB0);
  v68 = v94;
  v69 = *(v94 + 16);
  v70 = v84;
  v71 = v85;
  v72 = v96;
  v69(v85, v96, v84);
  v73 = v86;
  v69(v86, v66, v70);
  v74 = v87;
  sub_1E5B5F864(v67, v87, &qword_1ED040608, &qword_1E5C03AB0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040610, &unk_1E5C03AB8);
  v69((v74 + *(v75 + 48)), v71, v70);
  v69((v74 + *(v75 + 64)), v73, v70);
  v76 = *(v68 + 8);
  v76(v66, v70);
  v76(v72, v70);
  sub_1E5B5F804(v97, &qword_1ED040608, &qword_1E5C03AB0);
  v76(v73, v70);
  v76(v71, v70);
  return sub_1E5B5F804(v95, &qword_1ED040608, &qword_1E5C03AB0);
}

uint64_t sub_1E5BD15D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE2CD210;
  v26[1] = a1;
  v26[2] = a2;
  v27 = a3 & 1;
  v16 = type metadata accessor for RemoveLibraryItemConfirmationDialog(0, a4, a5, v14);
  v17 = v15;
  v21 = sub_1E5BCF88C(v16, v18, v19, v20);
  MEMORY[0x1EEE9AC00](v21);
  v26[-2] = a4;
  v26[-1] = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a6 = result;
  *(a6 + 8) = v23;
  *(a6 + 16) = v24 & 1;
  *(a6 + 24) = v25;
  return result;
}

uint64_t sub_1E5BD17CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE2CD210;
  v26[1] = a1;
  v26[2] = a2;
  v27 = a3 & 1;
  v16 = type metadata accessor for RemoveLibraryItemConfirmationDialog(0, a4, a5, v14);
  v17 = v15;
  v21 = sub_1E5BCF88C(v16, v18, v19, v20);
  MEMORY[0x1EEE9AC00](v21);
  v26[-2] = a4;
  v26[-1] = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a6 = result;
  *(a6 + 8) = v23;
  *(a6 + 16) = v24 & 1;
  *(a6 + 24) = v25;
  return result;
}

uint64_t sub_1E5BD19C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = type metadata accessor for RemoveLibraryItemConfirmationDialog(0, a4, a5, a4);
  sub_1E5BCF88C(v6, v7, v8, v9);
  sub_1E5BF6E44();
}

uint64_t sub_1E5BD1A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE2CD210;
  v26[1] = a1;
  v26[2] = a2;
  v27 = a3 & 1;
  v16 = type metadata accessor for RemoveLibraryItemConfirmationDialog(0, a4, a5, v14);
  v17 = v15;
  v21 = sub_1E5BCF88C(v16, v18, v19, v20);
  MEMORY[0x1EEE9AC00](v21);
  v26[-2] = a4;
  v26[-1] = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a6 = result;
  *(a6 + 8) = v23;
  *(a6 + 16) = v24 & 1;
  *(a6 + 24) = v25;
  return result;
}

uint64_t sub_1E5BD1C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v146 = a6;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0405C8, &qword_1E5C03A40);
  MEMORY[0x1EEE9AC00](v145);
  v144 = v125 - v11;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0405D0, &qword_1E5C03A48);
  MEMORY[0x1EEE9AC00](v128);
  v129 = v125 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0405D8, &qword_1E5C03A50);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v140 = v125 - v14;
  v15 = sub_1E5BF64B4();
  v138 = *(v15 - 8);
  v139 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v137 = v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0405E0, &qword_1E5C03A58);
  v142 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v141 = v125 - v17;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0405C0, &qword_1E5C038E8);
  MEMORY[0x1EEE9AC00](v135);
  v127 = v125 - v18;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0405E8, &unk_1E5C03A60);
  MEMORY[0x1EEE9AC00](v132);
  v133 = v125 - v19;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  MEMORY[0x1EEE9AC00](v131);
  v130 = v125 - v20;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0405B8, &qword_1E5C038E0);
  MEMORY[0x1EEE9AC00](v143);
  v134 = v125 - v21;
  v22 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v150 = a1;
  v151 = a2;
  v126 = a3;
  v27 = a3 & 1;
  v152 = a3 & 1;
  v29 = type metadata accessor for RemoveLibraryItemConfirmationDialog(0, a4, a5, v28);
  sub_1E5BCF88C(v29, v30, v31, v32);
  v148 = a4;
  v149 = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  LOBYTE(a3) = (*(a5 + 32))(a4, a5);
  v34 = *(v22 + 8);
  v33 = v22 + 8;
  v34(v25, a4);
  v136 = v34;
  if ((a3 & 1) == 0)
  {
    v150 = v26;
    v151 = a2;
    v152 = v27;
    v52 = sub_1E5BCF88C(v29, v35, v36, v37);
    MEMORY[0x1EEE9AC00](v52);
    v125[-2] = a4;
    v125[-1] = a5;
    swift_getKeyPath();
    v135 = a4;
    sub_1E5BF6E34();

    v154 = v26;
    v155 = a2;
    v156 = v27;
    v56 = sub_1E5BCF88C(v29, v53, v54, v55);
    MEMORY[0x1EEE9AC00](v56);
    v57 = v135;
    v125[-2] = v135;
    v125[-1] = a5;
    swift_getKeyPath();
    v58 = v137;
    sub_1E5BF6E34();

    v59 = [objc_opt_self() mainBundle];
    v60 = sub_1E5BF71D4();

    v61 = (*(a5 + 48))(v58, v60 & 1, v57, a5);
    v63 = v62;
    (*(v138 + 8))(v58, v139);
    v136(v25, v57);
    v150 = v61;
    v151 = v63;
    sub_1E5B81070();
    v64 = sub_1E5BF69E4();
    v66 = v65;
    v150 = v64;
    v151 = v65;
    LOBYTE(v57) = v67 & 1;
    v152 = v67 & 1;
    v153 = v68;
    v69 = v140;
    sub_1E5BF68A4();
    v70 = sub_1E5BF68B4();
    (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
    v71 = MEMORY[0x1E6981148];
    v72 = MEMORY[0x1E6981138];
    v73 = v141;
    sub_1E5BF6AD4();
    sub_1E5B5F804(v69, &qword_1ED0405D8, &qword_1E5C03A50);
    sub_1E5B7AD08(v64, v66, v57);

    v74 = v142;
    v75 = v147;
    (*(v142 + 16))(v144, v73, v147);
    swift_storeEnumTagMultiPayload();
    sub_1E5BD039C();
    v150 = v71;
    v151 = v72;
    swift_getOpaqueTypeConformance2();
    sub_1E5BF6864();
    return (*(v74 + 8))(v73, v75);
  }

  v125[1] = v33;
  v150 = v26;
  v151 = a2;
  v125[0] = a2;
  v152 = v27;
  v38 = sub_1E5BCF88C(v29, v35, v36, v37);
  MEMORY[0x1EEE9AC00](v38);
  v125[-2] = a4;
  v125[-1] = a5;
  swift_getKeyPath();
  v39 = v130;
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v44 = v26;
    if (!EnumCaseMultiPayload)
    {
      v45 = *v39 | (*(v39 + 4) << 32);
      v46 = *(v39 + 5);
LABEL_8:
      if (!v46 || v45)
      {
        v150 = v44;
        v151 = v125[0];
        v102 = v126 & 1;
        v152 = v126 & 1;
        v103 = v125[0];
        v104 = sub_1E5BCF88C(v29, v41, v42, v43);
        MEMORY[0x1EEE9AC00](v104);
        v125[-2] = a4;
        v125[-1] = a5;
        swift_getKeyPath();
        sub_1E5BF6E34();

        v154 = v44;
        v155 = v103;
        v156 = v102;
        v108 = sub_1E5BCF88C(v29, v105, v106, v107);
        MEMORY[0x1EEE9AC00](v108);
        v125[-2] = a4;
        v125[-1] = a5;
        swift_getKeyPath();
        v109 = v137;
        sub_1E5BF6E34();

        v110 = [objc_opt_self() mainBundle];
        LOBYTE(v103) = sub_1E5BF71D4();

        v111 = (*(a5 + 56))(v109, v103 & 1, a4, a5);
        v113 = v112;
        (*(v138 + 8))(v109, v139);
        v136(v25, a4);
        v150 = v111;
        v151 = v113;
        sub_1E5B81070();
        v114 = sub_1E5BF69E4();
        v116 = v115;
        v150 = v114;
        v151 = v115;
        v118 = v117 & 1;
        v152 = v117 & 1;
        v153 = v119;
        v120 = v140;
        sub_1E5BF68A4();
        v121 = sub_1E5BF68B4();
        (*(*(v121 - 8) + 56))(v120, 0, 1, v121);
        v97 = MEMORY[0x1E6981148];
        v98 = MEMORY[0x1E6981138];
        v99 = v141;
        sub_1E5BF6AD4();
        sub_1E5B5F804(v120, &qword_1ED0405D8, &qword_1E5C03A50);
        sub_1E5B7AD08(v114, v116, v118);

        v100 = v142;
        v101 = v147;
        (*(v142 + 16))(v129, v99, v147);
      }

      else
      {
        v150 = v44;
        v151 = v125[0];
        v77 = v126 & 1;
        v152 = v126 & 1;
        v78 = v125[0];
        v79 = sub_1E5BCF88C(v29, v41, v42, v43);
        MEMORY[0x1EEE9AC00](v79);
        v125[-2] = a4;
        v125[-1] = a5;
        swift_getKeyPath();
        sub_1E5BF6E34();

        v154 = v44;
        v155 = v78;
        v156 = v77;
        v83 = sub_1E5BCF88C(v29, v80, v81, v82);
        MEMORY[0x1EEE9AC00](v83);
        v125[-2] = a4;
        v125[-1] = a5;
        swift_getKeyPath();
        v84 = v137;
        sub_1E5BF6E34();

        v85 = [objc_opt_self() mainBundle];
        LOBYTE(v78) = sub_1E5BF71D4();

        v86 = (*(a5 + 48))(v84, v78 & 1, a4, a5);
        v88 = v87;
        (*(v138 + 8))(v84, v139);
        v136(v25, a4);
        v150 = v86;
        v151 = v88;
        sub_1E5B81070();
        v89 = sub_1E5BF69E4();
        v91 = v90;
        v150 = v89;
        v151 = v90;
        v93 = v92 & 1;
        v152 = v92 & 1;
        v153 = v94;
        v95 = v140;
        sub_1E5BF68A4();
        v96 = sub_1E5BF68B4();
        (*(*(v96 - 8) + 56))(v95, 0, 1, v96);
        v97 = MEMORY[0x1E6981148];
        v98 = MEMORY[0x1E6981138];
        v99 = v141;
        sub_1E5BF6AD4();
        sub_1E5B5F804(v95, &qword_1ED0405D8, &qword_1E5C03A50);
        sub_1E5B7AD08(v89, v91, v93);

        v100 = v142;
        v101 = v147;
        (*(v142 + 16))(v129, v99, v147);
      }

      swift_storeEnumTagMultiPayload();
      v150 = v97;
      v151 = v98;
      swift_getOpaqueTypeConformance2();
      v122 = v127;
      sub_1E5BF6864();
      (*(v100 + 8))(v99, v101);
      sub_1E5B5F864(v122, v133, &qword_1ED0405C0, &qword_1E5C038E8);
      swift_storeEnumTagMultiPayload();
      sub_1E5BD0428();
      v123 = v134;
      sub_1E5BF6864();
      sub_1E5B5F804(v122, &qword_1ED0405C0, &qword_1E5C038E8);
      v124 = v144;
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v45 = *v39 | (*(v39 + 4) << 32);
      v46 = *(v39 + 5);
      v47 = v39;
      v48 = a4;
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F8, &unk_1E5BF91A0) + 48);
      v50 = sub_1E5BF6464();
      v51 = v47 + v49;
      a4 = v48;
      (*(*(v50 - 8) + 8))(v51, v50);
      goto LABEL_8;
    }

    sub_1E5B5F804(v39, &qword_1ED03E260, &qword_1E5BF9190);
  }

  swift_storeEnumTagMultiPayload();
  sub_1E5BD0428();
  v123 = v134;
  sub_1E5BF6864();
  v124 = v144;
LABEL_15:
  sub_1E5B5F864(v123, v124, &qword_1ED0405B8, &qword_1E5C038E0);
  swift_storeEnumTagMultiPayload();
  sub_1E5BD039C();
  v150 = MEMORY[0x1E6981148];
  v151 = MEMORY[0x1E6981138];
  swift_getOpaqueTypeConformance2();
  sub_1E5BF6864();
  return sub_1E5B5F804(v123, &qword_1ED0405B8, &qword_1E5C038E0);
}

uint64_t View.removeLibraryItemConfirmationDialog<A>(store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  RemoveLibraryItemConfirmationDialog.init(store:)(a1, a2, a4, a6, &v17);
  v15 = v17;
  v16 = v18;
  v13 = type metadata accessor for RemoveLibraryItemConfirmationDialog(0, a4, a6, v12);
  MEMORY[0x1E6937280](&v15, a3, v13, a5);
  return sub_1E5B5C0A8(v15, *(&v15 + 1));
}

unint64_t sub_1E5BD2E1C()
{
  result = qword_1EE2C6340;
  if (!qword_1EE2C6340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0405F8, &qword_1E5C03AA0);
    sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6340);
  }

  return result;
}

uint64_t sub_1E5BD2F54()
{
  if (*v0)
  {
    return 0x707954616964656DLL;
  }

  else
  {
    return 0x7669746341776172;
  }
}

uint64_t sub_1E5BD2FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7669746341776172 && a2 == 0xEF65707954797469;
  if (v6 || (sub_1E5BF7444() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5BF7444();

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

uint64_t sub_1E5BD308C(uint64_t a1)
{
  v2 = sub_1E5BD3C74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BD30C8(uint64_t a1)
{
  v2 = sub_1E5BD3C74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E5BD3104()
{
  v1 = 0x6570704177656976;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000024;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_1E5BD3198@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5BD3FE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5BD31C0(uint64_t a1)
{
  v2 = sub_1E5BD3B78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BD31FC(uint64_t a1)
{
  v2 = sub_1E5BD3B78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BD3254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5BF7444();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5BD32E4(uint64_t a1)
{
  v2 = sub_1E5BD3C20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BD3320(uint64_t a1)
{
  v2 = sub_1E5BD3C20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BD335C()
{
  if (*v0)
  {
    return 0x707954616964656DLL;
  }

  else
  {
    return 0x6465646461;
  }
}

uint64_t sub_1E5BD3398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465646461 && a2 == 0xE500000000000000;
  if (v6 || (sub_1E5BF7444() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5BF7444();

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

uint64_t sub_1E5BD3478(uint64_t a1)
{
  v2 = sub_1E5BD3BCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BD34B4(uint64_t a1)
{
  v2 = sub_1E5BD3BCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BD34F0(uint64_t a1)
{
  v2 = sub_1E5BD3CC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BD352C(uint64_t a1)
{
  v2 = sub_1E5BD3CC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StackButtonAction.encode(to:)(void *a1, uint64_t a2, int a3)
{
  v39 = a3;
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040618, &qword_1E5C03B10);
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v30 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040620, &qword_1E5C03B18);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v30 - v6;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040628, &qword_1E5C03B20);
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040630, &qword_1E5C03B28);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040638, &qword_1E5C03B30);
  v40 = *(v14 - 8);
  v41 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BD3B78();
  v17 = v39;
  sub_1E5BF7524();
  if ((v17 >> 6) > 1u)
  {
    if (v17 >> 6 == 2)
    {
      v53 = 3;
      sub_1E5BD3BCC();
      v22 = v35;
      v23 = v41;
      sub_1E5BF7394();
      v52 = 0;
      v25 = v37;
      v24 = BYTE1(v38);
      v26 = v42;
      sub_1E5BF73F4();
      if (!v26)
      {
        v51 = v24;
        v50 = 1;
        sub_1E5B8D528();
        sub_1E5BF7424();
      }

      (*(v36 + 8))(v22, v25);
      return (*(v40 + 8))(v16, v23);
    }

    else
    {
      v43 = 0;
      sub_1E5BD3CC8();
      v29 = v41;
      sub_1E5BF7394();
      (*(v11 + 8))(v13, v10);
      return (*(v40 + 8))(v16, v29);
    }
  }

  else if (v17 >> 6)
  {
    v49 = 2;
    sub_1E5BD3C20();
    v27 = v41;
    sub_1E5BF7394();
    v48 = v38;
    sub_1E5B8D528();
    v28 = v33;
    sub_1E5BF7424();
    (*(v31 + 8))(v7, v28);
    return (*(v40 + 8))(v16, v27);
  }

  else
  {
    v47 = 1;
    sub_1E5BD3C74();
    v18 = v41;
    sub_1E5BF7394();
    v46 = 0;
    v19 = v34;
    v20 = v42;
    sub_1E5BF7414();
    if (!v20)
    {
      v45 = v17;
      v44 = 1;
      sub_1E5B8D528();
      sub_1E5BF7424();
    }

    (*(v32 + 8))(v9, v19);
    return (*(v40 + 8))(v16, v18);
  }
}

unint64_t sub_1E5BD3B78()
{
  result = qword_1ED040640;
  if (!qword_1ED040640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040640);
  }

  return result;
}

unint64_t sub_1E5BD3BCC()
{
  result = qword_1ED040648;
  if (!qword_1ED040648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040648);
  }

  return result;
}

unint64_t sub_1E5BD3C20()
{
  result = qword_1ED040650;
  if (!qword_1ED040650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040650);
  }

  return result;
}

unint64_t sub_1E5BD3C74()
{
  result = qword_1ED040658;
  if (!qword_1ED040658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040658);
  }

  return result;
}

unint64_t sub_1E5BD3CC8()
{
  result = qword_1ED040660;
  if (!qword_1ED040660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040660);
  }

  return result;
}

unint64_t sub_1E5BD3D34@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5BD4158(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t StackButtonAction.hash(into:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 == 2)
    {
      MEMORY[0x1E6937C10](3);
      sub_1E5BF74D4();
      v5 = BYTE1(a2);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (a3 >> 6)
  {
    MEMORY[0x1E6937C10](2);
    v5 = a2;
  }

  else
  {
    MEMORY[0x1E6937C10](1);
    MEMORY[0x1E6937C10](a2);
    v5 = a3;
  }

  return MEMORY[0x1E6937C10](v5);
}

uint64_t StackButtonAction.hashValue.getter(uint64_t a1, unsigned __int8 a2)
{
  sub_1E5BF74B4();
  if ((a2 >> 6) > 1u)
  {
    v4 = 0;
    if (a2 >> 6 == 2)
    {
      MEMORY[0x1E6937C10](3);
      sub_1E5BF74D4();
      v4 = BYTE1(a1);
    }
  }

  else if (a2 >> 6)
  {
    MEMORY[0x1E6937C10](2);
    v4 = a1;
  }

  else
  {
    MEMORY[0x1E6937C10](1);
    MEMORY[0x1E6937C10](a1);
    v4 = a2;
  }

  MEMORY[0x1E6937C10](v4);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BD3EE8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1E5BF74B4();
  StackButtonAction.hash(into:)(v5, v2, v3);
  return sub_1E5BF7504();
}

BOOL _s14FitnessActions17StackButtonActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a2 >> 6) > 1u)
  {
    if (a2 >> 6 == 2)
    {
      if ((a4 & 0xC0) == 0x80)
      {
        return ((a3 ^ a1) & 1) == 0 && ((a3 ^ a1) & 0xFF00) == 0;
      }
    }

    else if (a4 >= 0xC0u && !a3 && a4 == 192)
    {
      return 1;
    }

    return 0;
  }

  if (a2 >> 6)
  {
    if ((a4 & 0xC0) == 0x40)
    {
      return a3 == a1;
    }

    return 0;
  }

  if (a4 > 0x3Fu)
  {
    return 0;
  }

  return a1 == a3 && a2 == a4;
}

uint64_t sub_1E5BD3FE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5C08640 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5C08660 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001E5C08680 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

unint64_t sub_1E5BD4158(void *a1)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0406E0, &qword_1E5C04170);
  v37 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v40 = &v31 - v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0406E8, &qword_1E5C04178);
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v39 = &v31 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0406F0, &qword_1E5C04180);
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0406F8, &qword_1E5C04188);
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040700, &unk_1E5C04190);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - v11;
  v13 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1E5BD3B78();
  v14 = v41;
  sub_1E5BF7514();
  if (!v14)
  {
    v15 = v8;
    v31 = v6;
    v41 = v5;
    v17 = v38;
    v16 = v39;
    v18 = v40;
    v19 = sub_1E5BF7374();
    v20 = (2 * *(v19 + 16)) | 1;
    v43 = v19;
    v44 = v19 + 32;
    v45 = 0;
    v46 = v20;
    v21 = sub_1E5B7FB10();
    v22 = v9;
    if (v21 == 4 || v45 != v46 >> 1)
    {
      v23 = sub_1E5BF7284();
      swift_allocError();
      v6 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770);
      *v6 = &type metadata for StackButtonAction;
      sub_1E5BF72D4();
      sub_1E5BF7274();
      (*(*(v23 - 8) + 104))(v6, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v10 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else if (v21 > 1u)
    {
      if (v21 == 2)
      {
        v48 = 2;
        sub_1E5BD3C20();
        v26 = v16;
        sub_1E5BF72C4();
        sub_1E5B8D7C8();
        v27 = v34;
        sub_1E5BF7364();
        (*(v36 + 8))(v26, v27);
        (*(v10 + 8))(v12, v22);
        swift_unknownObjectRelease();
        v6 = v48;
      }

      else
      {
        v48 = 3;
        sub_1E5BD3BCC();
        sub_1E5BF72C4();
        v48 = 0;
        v29 = v33;
        v30 = sub_1E5BF7334();
        v47 = 1;
        sub_1E5B8D7C8();
        sub_1E5BF7364();
        (*(v37 + 8))(v18, v29);
        (*(v10 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v6 = v30 & 1 | (v48 << 8);
      }
    }

    else if (v21)
    {
      v48 = 1;
      sub_1E5BD3C74();
      v28 = v41;
      sub_1E5BF72C4();
      v48 = 0;
      v6 = sub_1E5BF7354();
      v47 = 1;
      sub_1E5B8D7C8();
      sub_1E5BF7364();
      (*(v35 + 8))(v28, v17);
      (*(v10 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v48 = 0;
      sub_1E5BD3CC8();
      sub_1E5BF72C4();
      (*(v32 + 8))(v15, v31);
      (*(v10 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v6 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v42);
  return v6;
}

unint64_t sub_1E5BD4984()
{
  result = qword_1ED040668;
  if (!qword_1ED040668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040668);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StackButtonAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 9))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for StackButtonAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 8) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1E5BD4A7C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1E5BD4AA8(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 8) = *(result + 8) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = -64;
  }

  return result;
}

unint64_t sub_1E5BD4B38()
{
  result = qword_1ED040670;
  if (!qword_1ED040670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040670);
  }

  return result;
}

unint64_t sub_1E5BD4B90()
{
  result = qword_1ED040678;
  if (!qword_1ED040678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040678);
  }

  return result;
}

unint64_t sub_1E5BD4BE8()
{
  result = qword_1ED040680;
  if (!qword_1ED040680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040680);
  }

  return result;
}

unint64_t sub_1E5BD4C40()
{
  result = qword_1ED040688;
  if (!qword_1ED040688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040688);
  }

  return result;
}

unint64_t sub_1E5BD4C98()
{
  result = qword_1ED040690;
  if (!qword_1ED040690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040690);
  }

  return result;
}

unint64_t sub_1E5BD4CF0()
{
  result = qword_1ED040698;
  if (!qword_1ED040698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040698);
  }

  return result;
}

unint64_t sub_1E5BD4D48()
{
  result = qword_1ED0406A0;
  if (!qword_1ED0406A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0406A0);
  }

  return result;
}

unint64_t sub_1E5BD4DA0()
{
  result = qword_1ED0406A8;
  if (!qword_1ED0406A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0406A8);
  }

  return result;
}

unint64_t sub_1E5BD4DF8()
{
  result = qword_1ED0406B0;
  if (!qword_1ED0406B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0406B0);
  }

  return result;
}

unint64_t sub_1E5BD4E50()
{
  result = qword_1ED0406B8;
  if (!qword_1ED0406B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0406B8);
  }

  return result;
}

unint64_t sub_1E5BD4EA8()
{
  result = qword_1ED0406C0;
  if (!qword_1ED0406C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0406C0);
  }

  return result;
}

unint64_t sub_1E5BD4F00()
{
  result = qword_1ED0406C8;
  if (!qword_1ED0406C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0406C8);
  }

  return result;
}

unint64_t sub_1E5BD4F58()
{
  result = qword_1ED0406D0;
  if (!qword_1ED0406D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0406D0);
  }

  return result;
}

unint64_t sub_1E5BD4FB0()
{
  result = qword_1ED0406D8;
  if (!qword_1ED0406D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0406D8);
  }

  return result;
}

uint64_t sub_1E5BD504C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E5BD50A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1E5BD5124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v50 = a3;
  v4 = sub_1E5BF68D4();
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5BF6914();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040708, &qword_1E5C042A0);
  v10 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v12 = &v37 - v11;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040710, &qword_1E5C042A8);
  MEMORY[0x1EEE9AC00](v37);
  v14 = &v37 - v13;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040718, &qword_1E5C042B0);
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v38 = &v37 - v15;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040720, &qword_1E5C042B8);
  MEMORY[0x1EEE9AC00](v40);
  v17 = &v37 - v16;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040728, &qword_1E5C042C0);
  v45 = *(v46 - 8);
  v18 = MEMORY[0x1EEE9AC00](v46);
  v42 = &v37 - v19;
  (*(v8 + 16))(&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v18);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  (*(v8 + 32))(v21 + v20, &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v51 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040730, &qword_1E5C042C8);
  sub_1E5BD5D00();
  sub_1E5BF6C84();
  sub_1E5BF6D84();
  sub_1E5BF6704();
  (*(v10 + 32))(v14, v12, v39);
  v22 = &v14[*(v37 + 36)];
  v23 = v57;
  *(v22 + 4) = v56;
  *(v22 + 5) = v23;
  *(v22 + 6) = v58;
  v24 = v53;
  *v22 = v52;
  *(v22 + 1) = v24;
  v25 = v55;
  *(v22 + 2) = v54;
  *(v22 + 3) = v25;
  v26 = v44;
  sub_1E5BF68C4();
  sub_1E5BD5F10();
  sub_1E5BD62D4(&qword_1EE2C62F8, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
  v27 = v38;
  v28 = v47;
  sub_1E5BF6A44();
  (*(v48 + 8))(v26, v28);
  sub_1E5B5F804(v14, &qword_1ED040710, &qword_1E5C042A8);
  v29 = sub_1E5BF6D84();
  v31 = v30;
  (*(v41 + 32))(v17, v27, v43);
  v32 = &v17[*(v40 + 36)];
  *v32 = v49;
  v32[1] = v29;
  v32[2] = v31;

  sub_1E5BF6D74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040740, &qword_1E5C042E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040748, &qword_1E5C042F0);
  sub_1E5BD5FC8();
  sub_1E5BD610C();
  sub_1E5BD61C4();
  v33 = v42;
  sub_1E5BF6B64();
  sub_1E5B5F804(v17, &qword_1ED040720, &qword_1E5C042B8);
  v34 = sub_1E5BF6BA4();
  v35 = v50;
  (*(v45 + 32))(v50, v33, v46);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040778, &qword_1E5C04310);
  *(v35 + *(result + 36)) = v34;
  return result;
}

uint64_t sub_1E5BD583C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E328, &unk_1E5BFD530);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040738, &unk_1E5C042D0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  sub_1E5BF68F4();
  sub_1E5BF6974();
  sub_1E5BF6994();
  v8 = sub_1E5BF69A4();

  KeyPath = swift_getKeyPath();
  v10 = &v7[*(v5 + 36)];
  *v10 = KeyPath;
  v10[1] = v8;
  v11 = *MEMORY[0x1E697E728];
  v12 = sub_1E5BF66D4();
  (*(*(v12 - 8) + 104))(v4, v11, v12);
  sub_1E5BD62D4(&qword_1EE2C63B0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E5BF6F14();
  if (result)
  {
    sub_1E5BD5E28();
    sub_1E5B5FC8C(&qword_1EE2C61F0, &qword_1ED03E328, &unk_1E5BFD530, MEMORY[0x1E69E6ED8]);
    sub_1E5BF6A84();
    sub_1E5B5F804(v4, &qword_1ED03E328, &unk_1E5BFD530);
    sub_1E5B5F804(v7, &qword_1ED040738, &unk_1E5C042D0);
    v14 = sub_1E5BF6954();
    sub_1E5BF65F4();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040730, &qword_1E5C042C8);
    v23 = a1 + *(result + 36);
    *v23 = v14;
    *(v23 + 8) = v16;
    *(v23 + 16) = v18;
    *(v23 + 24) = v20;
    *(v23 + 32) = v22;
    *(v23 + 40) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5BD5AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040740, &qword_1E5C042E8) + 36);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1E5BF6824();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040768, &qword_1E5C04300) + 36)) = 256;

  return sub_1E5B5A898(a1, a2);
}

uint64_t sub_1E5BD5BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040748, &qword_1E5C042F0) + 36));
  v5 = *(sub_1E5BF66F4() + 20);
  v6 = *MEMORY[0x1E697F468];
  v7 = sub_1E5BF6824();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #12.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040770, &qword_1E5C04308) + 36)] = 256;

  return sub_1E5B5A898(a1, a2);
}

unint64_t sub_1E5BD5D00()
{
  result = qword_1EE2C6390;
  if (!qword_1EE2C6390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040730, &qword_1E5C042C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040738, &unk_1E5C042D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E328, &unk_1E5BFD530);
    sub_1E5BD5E28();
    sub_1E5B5FC8C(&qword_1EE2C61F0, &qword_1ED03E328, &unk_1E5BFD530, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6390);
  }

  return result;
}

unint64_t sub_1E5BD5E28()
{
  result = qword_1EE2C63A0;
  if (!qword_1EE2C63A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040738, &unk_1E5C042D0);
    sub_1E5BD62D4(&qword_1EE2C62E8, MEMORY[0x1E697CC80], MEMORY[0x1E697CC78]);
    sub_1E5B5FC8C(&qword_1EE2C62F0, &qword_1ED03EB00, &qword_1E5C042E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C63A0);
  }

  return result;
}

unint64_t sub_1E5BD5F10()
{
  result = qword_1EE2C6380;
  if (!qword_1EE2C6380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040710, &qword_1E5C042A8);
    sub_1E5B5FC8C(&qword_1EE2C62C0, &qword_1ED040708, &qword_1E5C042A0, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6380);
  }

  return result;
}

unint64_t sub_1E5BD5FC8()
{
  result = qword_1EE2C6398;
  if (!qword_1EE2C6398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040720, &qword_1E5C042B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040710, &qword_1E5C042A8);
    sub_1E5BF68D4();
    sub_1E5BD5F10();
    sub_1E5BD62D4(&qword_1EE2C62F8, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    swift_getOpaqueTypeConformance2();
    sub_1E5B5FC8C(&qword_1EE2C6350, &qword_1ED040750, &qword_1E5C042F8, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6398);
  }

  return result;
}

unint64_t sub_1E5BD610C()
{
  result = qword_1ED040758;
  if (!qword_1ED040758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040740, &qword_1E5C042E8);
    sub_1E5BD5FC8();
    sub_1E5B5FC8C(&qword_1ED040760, &qword_1ED040768, &qword_1E5C04300, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040758);
  }

  return result;
}

unint64_t sub_1E5BD61C4()
{
  result = qword_1EE2C6370;
  if (!qword_1EE2C6370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040748, &qword_1E5C042F0);
    sub_1E5BD5FC8();
    sub_1E5B5FC8C(&qword_1EE2C63D0, &qword_1ED040770, &qword_1E5C04308, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6370);
  }

  return result;
}

uint64_t sub_1E5BD627C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5BF6784();
  *a1 = result;
  return result;
}

uint64_t sub_1E5BD62D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E5BD631C()
{
  result = qword_1ED040780;
  if (!qword_1ED040780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040778, &qword_1E5C04310);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040720, &qword_1E5C042B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040740, &qword_1E5C042E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040748, &qword_1E5C042F0);
    sub_1E5BD5FC8();
    sub_1E5BD610C();
    sub_1E5BD61C4();
    swift_getOpaqueTypeConformance2();
    sub_1E5B5FC8C(&qword_1EE2C6300, &qword_1ED040788, &qword_1E5C04348, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040780);
  }

  return result;
}

uint64_t sub_1E5BD64A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v29 = a1;
  v8 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v11 = sub_1E5BF69D4();
  v26 = v12;
  v27 = v11;
  v24 = v13;
  v25 = v14;
  sub_1E5BF6614();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4 & 1;
  sub_1E5B5F5EC(a2, a3);
  v16 = sub_1E5BF6D34();
  v23 = v22;
  v22[1] = v30;
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040790, &unk_1E5C04460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E530, &qword_1E5BF8830);
  sub_1E5B5FC8C(&qword_1ED040798, &qword_1ED040790, &unk_1E5C04460, MEMORY[0x1E697FDF8]);
  sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830, MEMORY[0x1E697D680]);
  v18 = v24;
  v19 = v27;
  v20 = v26;
  sub_1E5BF6B04();
  sub_1E5B7AD08(v19, v20, v18 & 1);
}

uint64_t sub_1E5BD68D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, _BYTE *a4@<X8>)
{
  v36 = a3;
  v37 = a2;
  v35 = a1;
  v39 = a4;
  v4 = sub_1E5BF6494();
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E790, &qword_1E5BF9150);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v32 - v19;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = (*(v10 + 48))(v20, 1, v9);
  if (result != 1)
  {
    sub_1E5B7AD6C(v20, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
    sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0, MEMORY[0x1E6999B78]);
    sub_1E5BF6614();
    swift_getKeyPath();
    sub_1E5BF6E34();

    v23 = v38;
    (*(v38 + 56))(v14, 0, 1, v4);
    v24 = *(v6 + 48);
    sub_1E5B7ADDC(v17, v8);
    sub_1E5B7ADDC(v14, &v8[v24]);
    v25 = *(v23 + 48);
    if (v25(v8, 1, v4) == 1)
    {
      sub_1E5B5F804(v14, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v17, &qword_1ED03E5E8, &unk_1E5BF9600);
      if (v25(&v8[v24], 1, v4) == 1)
      {
        result = sub_1E5B5F804(v8, &qword_1ED03E5E8, &unk_1E5BF9600);
        v26 = 1;
LABEL_10:
        v22 = v26 & 1;
        goto LABEL_11;
      }
    }

    else
    {
      v27 = v34;
      sub_1E5B7ADDC(v8, v34);
      if (v25(&v8[v24], 1, v4) != 1)
      {
        v28 = &v8[v24];
        v29 = v33;
        (*(v23 + 32))(v33, v28, v4);
        sub_1E5B7AE4C();
        v30 = v23;
        v26 = sub_1E5BF6F14();
        v31 = *(v30 + 8);
        v31(v29, v4);
        sub_1E5B5F804(v14, &qword_1ED03E5E8, &unk_1E5BF9600);
        sub_1E5B5F804(v17, &qword_1ED03E5E8, &unk_1E5BF9600);
        v31(v27, v4);
        result = sub_1E5B5F804(v8, &qword_1ED03E5E8, &unk_1E5BF9600);
        goto LABEL_10;
      }

      sub_1E5B5F804(v14, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v17, &qword_1ED03E5E8, &unk_1E5BF9600);
      (*(v23 + 8))(v27, v4);
    }

    result = sub_1E5B5F804(v8, &qword_1ED03E790, &qword_1E5BF9150);
    v26 = 0;
    goto LABEL_10;
  }

  v22 = 0;
LABEL_11:
  *v39 = v22;
  return result;
}

uint64_t sub_1E5BD6E48(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12[-v7];
  sub_1E5BF65D4();
  v9 = sub_1E5BF65E4();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3 & 1;
  v13 = a1;
  v14 = a2;
  v15 = a3 & 1;
  sub_1E5B5F5EC(a1, a2);
  return sub_1E5BF6C74();
}

uint64_t sub_1E5BD6FA4(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  sub_1E5BF6E44();
}

uint64_t sub_1E5BD7068@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t sub_1E5BD7250@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

__n128 StartWorkoutButtonEnvironment.init(requireNewSessionsAllowed:resolveWorkoutDetail:fetchResumeTime:fetchSwappablePlannedWorkoutTitle:fetchFuturePlannedWorkoutDate:requestStartWorkout:requestStartWorkoutSwappingPlannedWorkout:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
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
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  return result;
}

unint64_t sub_1E5BD74D0()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6570704177656976;
  }
}

uint64_t sub_1E5BD7538@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5BD7CE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5BD7560(uint64_t a1)
{
  v2 = sub_1E5BD7AC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BD759C(uint64_t a1)
{
  v2 = sub_1E5BD7AC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BD75D8(uint64_t a1)
{
  v2 = sub_1E5BD7B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BD7614(uint64_t a1)
{
  v2 = sub_1E5BD7B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BD7650(uint64_t a1)
{
  v2 = sub_1E5BD7B14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BD768C(uint64_t a1)
{
  v2 = sub_1E5BD7B14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BD76C8(uint64_t a1)
{
  v2 = sub_1E5BD7BBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BD7704(uint64_t a1)
{
  v2 = sub_1E5BD7BBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SharingButtonAction.encode(to:)(void *a1, int a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0407A0, &qword_1E5C04520);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0407A8, &qword_1E5C04528);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0407B0, &qword_1E5C04530);
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0407B8, &qword_1E5C04538);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BD7AC0();
  sub_1E5BF7524();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1E5BD7B68();
      sub_1E5BF7394();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1E5BD7B14();
      v16 = v22;
      sub_1E5BF7394();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1E5BD7BBC();
    sub_1E5BF7394();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

unint64_t sub_1E5BD7AC0()
{
  result = qword_1ED0407C0;
  if (!qword_1ED0407C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0407C0);
  }

  return result;
}

unint64_t sub_1E5BD7B14()
{
  result = qword_1ED0407C8;
  if (!qword_1ED0407C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0407C8);
  }

  return result;
}

unint64_t sub_1E5BD7B68()
{
  result = qword_1ED0407D0;
  if (!qword_1ED0407D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0407D0);
  }

  return result;
}

unint64_t sub_1E5BD7BBC()
{
  result = qword_1ED0407D8;
  if (!qword_1ED0407D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0407D8);
  }

  return result;
}

uint64_t sub_1E5BD7C28@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5BD7E08(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t SharingButtonAction.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](a1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BD7CE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5C086B0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5C086D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

uint64_t sub_1E5BD7E08(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040830, &qword_1E5C04968);
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v26 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040838, &qword_1E5C04970);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040840, &qword_1E5C04978);
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040848, &unk_1E5C04980);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1E5BD7AC0();
  v13 = v34;
  sub_1E5BF7514();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = sub_1E5BF7374();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_1E5B7FB04();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_1E5BD7B68();
          sub_1E5BF72C4();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v35);
          return v9;
        }

        v40 = 2;
        sub_1E5BD7B14();
        v24 = v11;
        sub_1E5BF72C4();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_1E5BD7BBC();
        v24 = v11;
        sub_1E5BF72C4();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = sub_1E5BF7284();
    swift_allocError();
    v22 = v21;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
    *v22 = &type metadata for SharingButtonAction;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v9;
}

unint64_t sub_1E5BD837C()
{
  result = qword_1ED0407E0;
  if (!qword_1ED0407E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0407E0);
  }

  return result;
}

unint64_t sub_1E5BD8424()
{
  result = qword_1ED0407E8;
  if (!qword_1ED0407E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0407E8);
  }

  return result;
}

unint64_t sub_1E5BD847C()
{
  result = qword_1ED0407F0;
  if (!qword_1ED0407F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0407F0);
  }

  return result;
}

unint64_t sub_1E5BD84D4()
{
  result = qword_1ED0407F8;
  if (!qword_1ED0407F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0407F8);
  }

  return result;
}

unint64_t sub_1E5BD852C()
{
  result = qword_1ED040800;
  if (!qword_1ED040800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040800);
  }

  return result;
}

unint64_t sub_1E5BD8584()
{
  result = qword_1ED040808;
  if (!qword_1ED040808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040808);
  }

  return result;
}

unint64_t sub_1E5BD85DC()
{
  result = qword_1ED040810;
  if (!qword_1ED040810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040810);
  }

  return result;
}

unint64_t sub_1E5BD8634()
{
  result = qword_1ED040818;
  if (!qword_1ED040818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040818);
  }

  return result;
}

unint64_t sub_1E5BD868C()
{
  result = qword_1ED040820;
  if (!qword_1ED040820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040820);
  }

  return result;
}

unint64_t sub_1E5BD86E4()
{
  result = qword_1ED040828;
  if (!qword_1ED040828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040828);
  }

  return result;
}

uint64_t SharingButtonEnvironment.init(resolveSharingDetail:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1E5BD8740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t StartWorkoutModalPresentation.init(store:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t StartWorkoutModalPresentation.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040850, &qword_1E5C04A00);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040858, &qword_1E5C04A08) + 36);
  *v9 = sub_1E5BD8968;
  *(v9 + 8) = v7;
  *(v9 + 16) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040860, &qword_1E5C04A10) + 36);
  *v11 = sub_1E5BD8968;
  *(v11 + 8) = v10;
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v5;
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040868, &qword_1E5C04A18) + 36);
  *v13 = sub_1E5BD8968;
  *(v13 + 8) = v12;
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = v6;
  *(v14 + 24) = v5;
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040870, &qword_1E5C04A20) + 36);
  *v15 = sub_1E5BD8968;
  *(v15 + 8) = v14;
  *(v15 + 16) = 0;
  return swift_retain_n();
}

uint64_t sub_1E5BD8970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040850, &qword_1E5C04A00);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040858, &qword_1E5C04A08) + 36);
  *v9 = sub_1E5BD8FF8;
  *(v9 + 8) = v7;
  *(v9 + 16) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040860, &qword_1E5C04A10) + 36);
  *v11 = sub_1E5BD8FF8;
  *(v11 + 8) = v10;
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v5;
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040868, &qword_1E5C04A18) + 36);
  *v13 = sub_1E5BD8FF8;
  *(v13 + 8) = v12;
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = v6;
  *(v14 + 24) = v5;
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040870, &qword_1E5C04A20) + 36);
  *v15 = sub_1E5BD8FF8;
  *(v15 + 8) = v14;
  *(v15 + 16) = 0;
  return swift_retain_n();
}

uint64_t View.startWorkoutModalPresentation(store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a1;
  v7[1] = a2;

  MEMORY[0x1E6937280](v7, a3, &type metadata for StartWorkoutModalPresentation, a4);
}

unint64_t sub_1E5BD8BC0()
{
  result = qword_1EE2C6360;
  if (!qword_1EE2C6360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040870, &qword_1E5C04A20);
    sub_1E5BD8C4C();
    sub_1E5BD8F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6360);
  }

  return result;
}

unint64_t sub_1E5BD8C4C()
{
  result = qword_1EE2C6368;
  if (!qword_1EE2C6368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040868, &qword_1E5C04A18);
    sub_1E5BD8CD8();
    sub_1E5BD8EFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6368);
  }

  return result;
}

unint64_t sub_1E5BD8CD8()
{
  result = qword_1EE2C6378;
  if (!qword_1EE2C6378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040860, &qword_1E5C04A10);
    sub_1E5BD8D64();
    sub_1E5BD8EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6378);
  }

  return result;
}

unint64_t sub_1E5BD8D64()
{
  result = qword_1EE2C63A8;
  if (!qword_1EE2C63A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040858, &qword_1E5C04A08);
    sub_1E5BD8DF0();
    sub_1E5BD8E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C63A8);
  }

  return result;
}

unint64_t sub_1E5BD8DF0()
{
  result = qword_1EE2C6318;
  if (!qword_1EE2C6318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040850, &qword_1E5C04A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6318);
  }

  return result;
}

unint64_t sub_1E5BD8E54()
{
  result = qword_1EE2C7258[0];
  if (!qword_1EE2C7258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C7258);
  }

  return result;
}

unint64_t sub_1E5BD8EA8()
{
  result = qword_1EE2C65D8[0];
  if (!qword_1EE2C65D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C65D8);
  }

  return result;
}

unint64_t sub_1E5BD8EFC()
{
  result = qword_1EE2C6548[0];
  if (!qword_1EE2C6548[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C6548);
  }

  return result;
}

unint64_t sub_1E5BD8F50()
{
  result = qword_1EE2C6470;
  if (!qword_1EE2C6470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6470);
  }

  return result;
}

unint64_t sub_1E5BD8FA4()
{
  result = qword_1EE2C65D0;
  if (!qword_1EE2C65D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C65D0);
  }

  return result;
}

uint64_t CondensedVStack.init(limit:height:spacing:condensedHeight:condensedSpacing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

uint64_t CondensedVStack.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v17[3] = a2;
  v8 = sub_1E5BF66C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - v13;
  v15 = *v6;
  sub_1E5BDA7A4(&qword_1EE2C63B8, MEMORY[0x1E697E3D8]);
  sub_1E5BF7104();
  sub_1E5BF7144();
  sub_1E5BF7134();
  sub_1E5BF7104();
  sub_1E5BF7144();
  sub_1E5BF7134();
  sub_1E5BF7104();
  sub_1E5BF7144();
  if (sub_1E5BF7134() >= v15)
  {
    (*(v9 + 16))(v11, a5, v8);
    sub_1E5BD92E0(1);
    sub_1E5BF7104();
    sub_1E5BF7144();
    sub_1E5BF7134();
    return (*(v9 + 8))(v14, v8);
  }

  else
  {
    sub_1E5BF7104();
    sub_1E5BF7144();
    return sub_1E5BF7134();
  }
}

uint64_t sub_1E5BD92E0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = result;
  v3 = sub_1E5BF66C4();
  sub_1E5BDA7A4(&qword_1EE2C63B8, MEMORY[0x1E697E3D8]);
  result = sub_1E5BF7114();
  if (__OFSUB__(result, v2))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1E5BF7104();
  sub_1E5BF7144();
  sub_1E5BF7124();
  if (v5)
  {
    sub_1E5BF7144();
  }

  else
  {
    v7 = v4;
  }

  result = sub_1E5BF7104();
  if (v7 >= v6)
  {
    sub_1E5BF7184();
    return (*(*(v3 - 8) + 8))(v1, v3);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1E5BD9444(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_1E5BF66C4();
    sub_1E5BDA7A4(&qword_1EE2C63B8, MEMORY[0x1E697E3D8]);
    sub_1E5BF7144();
    sub_1E5BF7104();
    sub_1E5BDA7A4(&qword_1ED0408A0, MEMORY[0x1E697E3C8]);
    sub_1E5BF6F04();
    if (v4)
    {
      sub_1E5BF7104();
    }

    else
    {
      v6 = v3;
    }

    result = sub_1E5BF7104();
    if (v6 >= v5)
    {
      sub_1E5BF7184();
      return (*(*(v2 - 8) + 8))(v1, v2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5BD95A4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_1E5BF66C4();
    sub_1E5BDA7A4(&qword_1EE2C63B8, MEMORY[0x1E697E3D8]);
    sub_1E5BF7104();
    sub_1E5BF7144();
    sub_1E5BF7124();
    if (v4)
    {
      sub_1E5BF7144();
    }

    else
    {
      v6 = v3;
    }

    result = sub_1E5BF7144();
    if (v5 >= v6)
    {
      sub_1E5BF7184();
      return (*(*(v2 - 8) + 8))(v1, v2);
    }
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1E5BD97C0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1E5BF65A4();
  return sub_1E5BD9848;
}

void sub_1E5BD9848(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1E5BD9894(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v121 = sub_1E5BF66B4();
  v111 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  *&v118 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  *&v117 = &v98 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v119 = (&v98 - v15);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040880, &unk_1E5C056B0);
  MEMORY[0x1EEE9AC00](v120);
  v109 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v107 = &v98 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v108 = &v98 - v20;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040888, &qword_1E5C04BB8);
  MEMORY[0x1EEE9AC00](v114);
  v22 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v110 = &v98 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v98 - v26;
  v28 = sub_1E5BF66C4();
  v115 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v112 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040890, &unk_1E5C056C0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v116 = &v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v98 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v98 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v98 - v39;
  v41 = *v5;
  v42 = *(v5 + 8);
  v43 = *(v5 + 16);
  v44 = *(v5 + 24);
  v45 = *(v5 + 32);
  sub_1E5BDA7A4(&qword_1EE2C63B8, MEMORY[0x1E697E3D8]);
  sub_1E5BF7104();
  sub_1E5BF7144();
  v113 = a1;
  if (sub_1E5BF7134() < v41)
  {
    v46 = v115;
    v47 = v116;
    (*(v115 + 16))(v116, v113, v28);
    sub_1E5BDA734(v47, v37);
    (*(v46 + 32))(v112, v37, v28);
    sub_1E5BDA7A4(&qword_1EE2C63C0, MEMORY[0x1E697E3D0]);
    sub_1E5BF7004();
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040898, &qword_1E5C055A0) + 36);
    sub_1E5BF7144();
    if (*&v22[v48] == v122[0])
    {
      v49 = v47;
      v50 = 0;
      v51 = v114;
LABEL_15:
      v71 = (v51 + 36);
LABEL_28:
      v97 = *v71;
      sub_1E5B5F804(v49, &qword_1ED040890, &unk_1E5C056C0);
      *&v22[v97] = v50;
      return sub_1E5B5F804(v22, &qword_1ED040888, &qword_1E5C04BB8);
    }

    v63 = 0;
    v119 = (v111 + 16);
    v64 = (v111 + 32);
    v117 = v42;
    v65 = v109;
    while (1)
    {
      v66 = sub_1E5BF7194();
      v67 = v118;
      v68 = v121;
      (*v119)(COERCE_DOUBLE(*&v118));
      v66(v122, 0);
      sub_1E5BF7154();
      v69 = *(v120 + 48);
      *v65 = v63;
      result = (*v64)(&v65[v69], COERCE_DOUBLE(*&v67), v68);
      v50 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      v124.origin.x = a2;
      v124.origin.y = a3;
      v124.size.width = a4;
      v124.size.height = a5;
      CGRectGetMinX(v124);
      v125.origin.x = a2;
      v125.origin.y = a3;
      v125.size.width = a4;
      v125.size.height = a5;
      CGRectGetMinY(v125);
      v126.origin.x = a2;
      v126.origin.y = a3;
      v126.size.width = a4;
      v126.size.height = a5;
      CGRectGetWidth(v126);
      sub_1E5BF6DC4();
      LOBYTE(v122[0]) = 0;
      v123 = 0;
      sub_1E5BF66A4();
      sub_1E5B5F804(v65, &qword_1ED040880, &unk_1E5C056B0);
      sub_1E5BF7144();
      ++v63;
      if (*&v22[v48] == v122[0])
      {
        v51 = v114;
        v49 = v116;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v106 = v34;
  v52 = v113;
  sub_1E5BF7104();
  sub_1E5BF7144();
  if (v41 >= sub_1E5BF7134())
  {
    v45 = v43;
  }

  sub_1E5BF7104();
  sub_1E5BF7144();
  if (v41 >= sub_1E5BF7134())
  {
    v53 = v42;
  }

  else
  {
    v53 = v44;
  }

  v54 = v115;
  v55 = *(v115 + 16);
  v56 = v112;
  v103 = v115 + 16;
  v102 = v55;
  v55(v112, v52, v28);
  sub_1E5BD9444(2);
  v104 = v40;
  sub_1E5BDA734(v40, v37);
  v57 = *(v54 + 32);
  v105 = v37;
  v115 = v54 + 32;
  v101 = v57;
  v57(v56, v37, v28);
  v100 = sub_1E5BDA7A4(&qword_1EE2C63C0, MEMORY[0x1E697E3D0]);
  sub_1E5BF7004();
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040898, &qword_1E5C055A0);
  v58 = *(v99 + 36);
  v109 = v28;
  sub_1E5BF7144();
  if (*&v27[v58] != v122[0])
  {
    v72 = 0;
    *&v118 = v111 + 16;
    v73 = (v111 + 32);
    v98 = v45;
    v116 = *&v53;
    v74 = v108;
    while (1)
    {
      v75 = sub_1E5BF7194();
      v76 = v119;
      v77 = v121;
      (**&v118)(v119);
      v75(v122, 0);
      sub_1E5BF7154();
      v78 = *(v120 + 48);
      *v74 = v72;
      result = (*v73)(&v74[v78], v76, v77);
      v59 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      v127.origin.x = a2;
      v127.origin.y = a3;
      v127.size.width = a4;
      v127.size.height = a5;
      CGRectGetMinX(v127);
      v128.origin.x = a2;
      v128.origin.y = a3;
      v128.size.width = a4;
      v128.size.height = a5;
      CGRectGetMinY(v128);
      v129.origin.x = a2;
      v129.origin.y = a3;
      v129.size.width = a4;
      v129.size.height = a5;
      CGRectGetWidth(v129);
      sub_1E5BF6DC4();
      LOBYTE(v122[0]) = 0;
      v123 = 0;
      sub_1E5BF66A4();
      sub_1E5B5F804(v74, &qword_1ED040880, &unk_1E5C056B0);
      sub_1E5BF7144();
      ++v72;
      if (*&v27[v58] == v122[0])
      {
        v61 = v114;
        v60 = v111;
        v62 = v113;
        goto LABEL_20;
      }
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v59 = 0;
  v60 = v111;
  v61 = v114;
  v62 = v113;
LABEL_20:
  v80 = *(v61 + 36);
  v79 = v61 + 36;
  sub_1E5B5F804(v104, &qword_1ED040890, &unk_1E5C056C0);
  *&v27[v80] = v59;
  sub_1E5B5F804(v27, &qword_1ED040888, &qword_1E5C04BB8);
  v130.origin.x = a2;
  v130.origin.y = a3;
  v130.size.width = a4;
  v130.size.height = a5;
  Width = CGRectGetWidth(v130);
  v82 = v109;
  sub_1E5BF7104();
  sub_1E5BF7144();
  result = sub_1E5BF7134();
  v83 = result - 2;
  v84 = v106;
  v85 = v112;
  v86 = v105;
  if (__OFSUB__(result, 2))
  {
    goto LABEL_32;
  }

  v114 = v79;
  v102(v112, v62, v82);
  sub_1E5BD95A4(v83);
  sub_1E5BDA734(v84, v86);
  v101(v85, v86, v82);
  v87 = v110;
  sub_1E5BF7004();
  v88 = v84;
  v89 = *(v99 + 36);
  sub_1E5BF7144();
  if (*&v87[v89] == v122[0])
  {
    v50 = 0;
    v22 = v87;
    v49 = v88;
LABEL_27:
    v71 = v114;
    goto LABEL_28;
  }

  v90 = 0;
  v119 = (v60 + 16);
  v91 = (v60 + 32);
  v118 = (Width + -20.0) * 0.5;
  v116 = *&v53;
  v92 = v107;
  while (1)
  {
    v93 = sub_1E5BF7194();
    v94 = v117;
    v95 = v121;
    (*v119)(*&v117);
    v93(v122, 0);
    sub_1E5BF7154();
    v96 = *(v120 + 48);
    *v92 = v90;
    result = (*v91)(&v92[v96], *&v94, v95);
    v50 = v90 + 1;
    if (__OFADD__(v90, 1))
    {
      break;
    }

    v131.origin.x = a2;
    v131.origin.y = a3;
    v131.size.width = a4;
    v131.size.height = a5;
    CGRectGetMinX(v131);
    v132.origin.x = a2;
    v132.origin.y = a3;
    v132.size.width = a4;
    v132.size.height = a5;
    CGRectGetMinY(v132);
    sub_1E5BF6DC4();
    LOBYTE(v122[0]) = 0;
    v123 = 0;
    sub_1E5BF66A4();
    sub_1E5B5F804(v92, &qword_1ED040880, &unk_1E5C056B0);
    sub_1E5BF7144();
    ++v90;
    if (*&v87[v89] == v122[0])
    {
      v22 = v87;
      v49 = v106;
      goto LABEL_27;
    }
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1E5BDA610()
{
  result = qword_1ED040878;
  if (!qword_1ED040878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040878);
  }

  return result;
}

unint64_t sub_1E5BDA668()
{
  result = qword_1EE2C6358;
  if (!qword_1EE2C6358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6358);
  }

  return result;
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

uint64_t sub_1E5BDA6D0(uint64_t a1, int a2)
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

uint64_t sub_1E5BDA6F0(uint64_t result, int a2, int a3)
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

uint64_t sub_1E5BDA734(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040890, &unk_1E5C056C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5BDA7A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E5BF66C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5BDA7FC()
{
  v1 = 0x6F70707553746F6ELL;
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
    return 0x6C6E776F44746F6ELL;
  }
}

uint64_t sub_1E5BDA870@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5BDB908(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5BDA898(uint64_t a1)
{
  v2 = sub_1E5BDADE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BDA8D4(uint64_t a1)
{
  v2 = sub_1E5BDADE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BDA910(uint64_t a1)
{
  v2 = sub_1E5BDAEE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BDA94C(uint64_t a1)
{
  v2 = sub_1E5BDAEE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BDA988(uint64_t a1)
{
  v2 = sub_1E5BDAE8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BDA9C4(uint64_t a1)
{
  v2 = sub_1E5BDAE8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BDAA00(uint64_t a1)
{
  v2 = sub_1E5BDAE38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BDAA3C(uint64_t a1)
{
  v2 = sub_1E5BDAE38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DownloadError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0408A8, &qword_1E5C04BC0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0408B0, &qword_1E5C04BC8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0408B8, &qword_1E5C04BD0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0408C0, &qword_1E5C04BD8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BDADE4();
  sub_1E5BF7524();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1E5BDAE8C();
      v9 = v21;
      sub_1E5BF7394();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1E5BDAE38();
      v9 = v24;
      sub_1E5BF7394();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1E5BDAEE0();
    sub_1E5BF7394();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1E5BDADE4()
{
  result = qword_1ED0408C8;
  if (!qword_1ED0408C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0408C8);
  }

  return result;
}

unint64_t sub_1E5BDAE38()
{
  result = qword_1ED0408D0;
  if (!qword_1ED0408D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0408D0);
  }

  return result;
}

unint64_t sub_1E5BDAE8C()
{
  result = qword_1ED0408D8;
  if (!qword_1ED0408D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0408D8);
  }

  return result;
}

unint64_t sub_1E5BDAEE0()
{
  result = qword_1ED0408E0;
  if (!qword_1ED0408E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0408E0);
  }

  return result;
}

uint64_t DownloadError.hashValue.getter()
{
  v1 = *v0;
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](v1);
  return sub_1E5BF7504();
}

uint64_t DownloadError.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0408E8, &qword_1E5C04BE0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0408F0, &qword_1E5C04BE8);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0408F8, &qword_1E5C04BF0);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040900, &unk_1E5C04BF8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E5BDADE4();
  v15 = v36;
  sub_1E5BF7514();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1E5BF7374();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1E5B7FB04();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1E5BF7284();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770);
      *v24 = &type metadata for DownloadError;
      sub_1E5BF72D4();
      sub_1E5BF7274();
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
          sub_1E5BDAE8C();
          sub_1E5BF72C4();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1E5BDAE38();
          v26 = v17;
          sub_1E5BF72C4();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1E5BDAEE0();
        sub_1E5BF72C4();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t sub_1E5BDB54C()
{
  result = qword_1ED040908;
  if (!qword_1ED040908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040908);
  }

  return result;
}

unint64_t sub_1E5BDB5F4()
{
  result = qword_1ED040910;
  if (!qword_1ED040910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040910);
  }

  return result;
}

unint64_t sub_1E5BDB64C()
{
  result = qword_1ED040918;
  if (!qword_1ED040918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040918);
  }

  return result;
}

unint64_t sub_1E5BDB6A4()
{
  result = qword_1ED040920;
  if (!qword_1ED040920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040920);
  }

  return result;
}

unint64_t sub_1E5BDB6FC()
{
  result = qword_1ED040928;
  if (!qword_1ED040928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040928);
  }

  return result;
}

unint64_t sub_1E5BDB754()
{
  result = qword_1ED040930;
  if (!qword_1ED040930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040930);
  }

  return result;
}

unint64_t sub_1E5BDB7AC()
{
  result = qword_1ED040938;
  if (!qword_1ED040938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040938);
  }

  return result;
}

unint64_t sub_1E5BDB804()
{
  result = qword_1ED040940;
  if (!qword_1ED040940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040940);
  }

  return result;
}

unint64_t sub_1E5BDB85C()
{
  result = qword_1ED040948;
  if (!qword_1ED040948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040948);
  }

  return result;
}

unint64_t sub_1E5BDB8B4()
{
  result = qword_1ED040950;
  if (!qword_1ED040950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040950);
  }

  return result;
}

uint64_t sub_1E5BDB908(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6E776F44746F6ELL && a2 == 0xED0000646564616FLL;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F70707553746F6ELL && a2 == 0xEC00000064657472 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5C086F0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

uint64_t sub_1E5BDBA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SharingButtonFeature.TaskIdentifier(0, a3, a4, a4);
  v7 = *(*(v6 - 8) + 16);
  v7(v9, a1, v6);
  v7(v10, a2, v6);
  LOBYTE(a2) = MEMORY[0x1E6937980](v9, v10);
  sub_1E5B6E230(v10);
  sub_1E5B6E230(v9);
  return a2 & 1;
}

uint64_t sub_1E5BDBAF8(uint64_t a1, uint64_t a2)
{
  (*(*(a2 - 8) + 16))(v4, v2, a2);
  MEMORY[0x1E6937C10](0);
  sub_1E5BF7244();
  return sub_1E5B6E230(v4);
}

uint64_t sub_1E5BDBB74(uint64_t a1)
{
  sub_1E5BF74B4();
  sub_1E5BDBAF8(v3, a1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BDBBC4(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  sub_1E5BDBAF8(v4, a2);
  return sub_1E5BF7504();
}

__n128 SharingButtonFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t SharingButtonFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v59 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040958, &unk_1E5C05090);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = *(*(a5 + 16) - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v15 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v51 - v20;
  if (a4)
  {
    if (a4 == 1)
    {
      v24 = type metadata accessor for SharingButtonState(0, v18, *(a5 + 24), v19);
      v25 = *(v24 + 48);
      sub_1E5BBAFA8(a2 + v25);
      v26 = *(v24 + 40);
      v27 = sub_1E5BF6494();
      v28 = *(v27 - 8);
      (*(v28 + 16))(a2 + v25, a2 + v26, v27);
      (*(v28 + 56))(a2 + v25, 0, 1, v27);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
      v30 = *(*(v29 - 8) + 56);
      v31 = a2 + v25;
      v32 = 0;
    }

    else
    {
      v50 = *(type metadata accessor for SharingButtonState(0, v18, *(a5 + 24), v19) + 48);
      sub_1E5BBAFA8(a2 + v50);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
      v30 = *(*(v29 - 8) + 56);
      v31 = a2 + v50;
      v32 = 1;
    }

    return v30(v31, v32, 1, v29);
  }

  else
  {
    v33 = v5[1];
    v55 = *v5;
    v56 = v33;
    v34 = *(v12 + 16);
    v58 = v17;
    v35 = v18;
    v53 = v21;
    v34(&v51 - v20, a2, v18, v22);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
    v57 = v36[12];
    v37 = v36[20];
    v51 = v36[16];
    v52 = v37;
    v54 = &v11[v36[24]];
    v38 = *(a5 + 24);
    sub_1E5BF72B4();
    v40 = type metadata accessor for SharingButtonFeature.TaskIdentifier(0, v35, v38, v39);
    swift_getWitnessTable();
    sub_1E5BF72B4();
    (*(*(v40 - 8) + 8))(v60, v40);
    v41 = *MEMORY[0x1E6999B50];
    v42 = sub_1E5BF6E24();
    (*(*(v42 - 8) + 104))(&v11[v51], v41, v42);
    v43 = *MEMORY[0x1E6999B40];
    v44 = sub_1E5BF6E14();
    (*(*(v44 - 8) + 104))(&v11[v52], v43, v44);
    (v34)(v15, v23, v35);
    v45 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v46 = swift_allocObject();
    *(v46 + 2) = v35;
    *(v46 + 3) = v38;
    v47 = v56;
    *(v46 + 4) = v55;
    *(v46 + 5) = v47;
    (*(v12 + 32))(&v46[v45], v15, v35);
    v48 = v54;
    *v54 = &unk_1E5C050A8;
    *(v48 + 1) = v46;

    sub_1E5B6C8B8(&type metadata for SharingButtonAction);
    (*(v53 + 104))(v11, *MEMORY[0x1E6999AD8], v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED040960, &qword_1E5C050B0);
    sub_1E5BF7034();
    return (*(v12 + 8))(v23, v35);
  }
}

uint64_t sub_1E5BDC198(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1E5BF7084();
  v4[3] = sub_1E5BF7074();
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_1E5B6F8E4;

  return v9(a4);
}
uint64_t sub_1E5A94820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for TabBarAction(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v11 - v8);
  sub_1E5ACF9A8();
  *v9 = a1;
  swift_storeEnumTagMultiPayload();
  sub_1E5ACFA58();

  return (*(v7 + 8))(v9, v6);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E5A94974()
{
  result = qword_1ED026C48;
  if (!qword_1ED026C48)
  {
    sub_1E5ACFA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026C48);
  }

  return result;
}

uint64_t sub_1E5A94A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_1E5A94AC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E5A94B10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E5A94BA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65646469487369 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1835365481 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E5AD0348();

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

uint64_t sub_1E5A94CAC(char a1)
{
  sub_1E5AD0378();
  MEMORY[0x1E6934A50](a1 & 1);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5A94CF4(char a1)
{
  if (a1)
  {
    return 1835365481;
  }

  else
  {
    return 0x6E65646469487369;
  }
}

uint64_t sub_1E5A94D58(uint64_t a1)
{
  sub_1E5AD0378();
  sub_1E5A94C84(v3, *v1);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5A94DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5A94BA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5A94DE0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E5A959A8();
  *a2 = result;
  return result;
}

uint64_t sub_1E5A94E0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5A94E60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t TabBarItemDescriptor.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v13[0] = *(a2 + 24);
  v13[1] = v6;
  type metadata accessor for TabBarItemDescriptor.CodingKeys(255, v6, v13[0], a4);
  swift_getWitnessTable();
  v7 = sub_1E5AD0318();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AD03E8();
  v15 = 0;
  v11 = v13[3];
  sub_1E5AD02E8();
  if (!v11)
  {
    v14 = 1;
    sub_1E5AD0308();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t TabBarItemDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v28 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TabBarItemDescriptor.CodingKeys(255, v8, v9, v10);
  swift_getWitnessTable();
  v33 = sub_1E5AD02A8();
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v12 = &v25 - v11;
  v32 = a3;
  v14 = type metadata accessor for TabBarItemDescriptor(0, a2, a3, v13);
  v27 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v34;
  sub_1E5AD03D8();
  if (!v17)
  {
    v34 = v14;
    v18 = v30;
    v19 = v31;
    v36 = 0;
    v20 = sub_1E5AD0268();
    v26 = v16;
    *v16 = v20 & 1;
    v35 = 1;
    v21 = a2;
    sub_1E5AD0288();
    (*(v18 + 8))(v12, v33);
    v23 = v34;
    v24 = v26;
    (*(v28 + 32))(&v26[*(v34 + 36)], v19, v21);
    (*(v27 + 32))(v29, v24, v23);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TabBarItemDescriptor.hashValue.getter(uint64_t a1)
{
  sub_1E5AD0378();
  sub_1E5AD0398();
  sub_1E5ACFB48();
  return sub_1E5AD03C8();
}

uint64_t sub_1E5A95498(uint64_t a1, uint64_t a2)
{
  sub_1E5AD0378();
  TabBarItemDescriptor.hash(into:)(v4, a2);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5A95500(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E5A95580(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      v16 = v15 >= 2;
      v17 = (v15 + 2147483646) & 0x7FFFFFFF;
      if (v16)
      {
        return (v17 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1E5A9570C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 1;
  }
}

uint64_t DynamicContentFeature.init(environment:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + *(type metadata accessor for DynamicContentFeature(0) + 20)) = *a1;

  return MEMORY[0x1EEDC4ED8]();
}

uint64_t DynamicContentFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v48 = a3;
  v5 = type metadata accessor for DynamicContentFeature(0);
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E40, &unk_1E5AD3710);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v42[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v42[-v15];
  v17 = type metadata accessor for DynamicContentAction(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v42[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E5A96354(a4, v19, type metadata accessor for DynamicContentAction);
  sub_1E5A85D40(v19, v16);
  sub_1E5A95F34(v16, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v44 = v8;
    v45 = v7;
    v22 = v46;
    v23 = v47;
    v43 = *v14;
    if (EnumCaseMultiPayload)
    {
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E50, &unk_1E5AD5A60) + 48);
      v25 = sub_1E5ACEEA8();
      (*(*(v25 - 8) + 8))(&v14[v24], v25);
    }

    v26 = v23;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E48, &qword_1E5AD3720);
    v28 = v27[16];
    v47 = v27[20];
    v29 = &v10[v27[24]];
    *v10 = 0u;
    *(v10 + 1) = 0u;
    *(v10 + 4) = 0;
    sub_1E5A96354(v26, &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for DynamicContentFeature);
    v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v31 = swift_allocObject();
    sub_1E5A963BC(&v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v31 + v30);
    *(v31 + v30 + v6) = v43;
    *v29 = &unk_1E5AD3730;
    v29[1] = v31;
    sub_1E5ACFD88();
    v32 = *MEMORY[0x1E6999B58];
    v33 = sub_1E5ACFA28();
    (*(*(v33 - 8) + 104))(&v10[v28], v32, v33);
    v34 = *MEMORY[0x1E6999B48];
    v35 = sub_1E5ACFA18();
    (*(*(v35 - 8) + 104))(&v10[v47], v34, v35);
    v36 = v44;
    v37 = v45;
    (*(v44 + 104))(v10, *MEMORY[0x1E6999AD8], v45);
    v38 = v48;
    v39 = *v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_1E5A96948(0, v39[2] + 1, 1, v39, &qword_1ED026E88, qword_1E5AD37F8, &qword_1ED026E40, &unk_1E5AD3710);
    }

    v41 = v39[2];
    v40 = v39[3];
    if (v41 >= v40 >> 1)
    {
      v39 = sub_1E5A96948((v40 > 1), v41 + 1, 1, v39, &qword_1ED026E88, qword_1E5AD37F8, &qword_1ED026E40, &unk_1E5AD3710);
    }

    sub_1E5A9661C(v16);
    v39[2] = v41 + 1;
    result = (*(v36 + 32))(v39 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v41, v10, v37);
    *v38 = v39;
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1E5A9661C(v16);
    return sub_1E5A9661C(v14);
  }

  else
  {
    return sub_1E5A9661C(v16);
  }

  return result;
}

uint64_t sub_1E5A95F34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5A95FA4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 64) = a3;
  *(v3 + 16) = a2;
  sub_1E5ACFD78();
  *(v3 + 24) = sub_1E5ACFD68();
  v5 = sub_1E5ACFD48();
  *(v3 + 32) = v5;
  *(v3 + 40) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E5A96040, v5, v4);
}

uint64_t sub_1E5A96040()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = (v2 + *(type metadata accessor for DynamicContentFeature(0) + 20));
  v6 = (*v3 + **v3);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1E5A96150;

  return v6(v1 == 1);
}

uint64_t sub_1E5A96150()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_1E5A962F0;
  }

  else
  {
    v5 = sub_1E5A9628C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E5A9628C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5A962F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5A96354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5A963BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicContentFeature(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5A96420(uint64_t a1)
{
  v4 = *(type metadata accessor for DynamicContentFeature(0) - 8);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  v6 = *(v5 + *(v4 + 64));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5A96520;

  return sub_1E5A95FA4(a1, v5, v6);
}

uint64_t sub_1E5A96520()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E5A9661C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E5A96718()
{
  result = qword_1EE2FCA48;
  if (!qword_1EE2FCA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FCA48);
  }

  return result;
}

uint64_t sub_1E5A9676C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1E5A967DC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E78, &qword_1E5AD37E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E80, &qword_1E5AD37F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E5A96948(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_1E5A96B30(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E58, &qword_1E5AD37C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E60, &qword_1E5AD37D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E5A96C68()
{
  v1 = v0[1];
  if (v1)
  {
    return v1(*v0);
  }

  return result;
}

uint64_t sub_1E5A96CA0()
{
  v1 = v0[3];
  if (v1)
  {
    return v1(*v0);
  }

  return result;
}

id HeadlessFeatureHosting<>.attach<A>(store:onAppear:onDisappear:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = sub_1E5A97040(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);

  return v11;
}

uint64_t HeadlessFeatureHosting<>.onAppear()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 8))(a1, a3);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      sub_1E5A971B8(v5, v9);
      v6 = v10;
      v7 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v7 + 8))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1(v9);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

uint64_t HeadlessFeatureHosting<>.onDisappear()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 8))(a1, a3);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      sub_1E5A971B8(v5, v9);
      v6 = v10;
      v7 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v7 + 16))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1(v9);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

id sub_1E5A96F48@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>, uint64_t a10, uint64_t a11)
{
  v12 = sub_1E5A97040(a1, a2, a3, a5, a6, a7, a10, a8, a11, &protocol witness table for DynamicContentContainerViewController<A, B>, a9);
  *a4 = v12;

  return v12;
}

uint64_t sub_1E5A96FA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1E5A97348(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1E5A97040(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v29 = a1();
  v18 = *(a10 + 24);
  sub_1E5A972BC(a3, a4);
  sub_1E5A972BC(a5, a6);
  v19 = v18(v32, a7, a10);
  v21 = v20;
  v22 = *v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v21 = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_1E5A967DC(0, v22[2] + 1, 1, v22);
    *v21 = v22;
  }

  v26 = v22[2];
  v25 = v22[3];
  if (v26 >= v25 >> 1)
  {
    *v21 = sub_1E5A967DC((v25 > 1), v26 + 1, 1, v22);
  }

  v31[0] = v29;
  v31[1] = a3;
  v31[2] = a4;
  v31[3] = a5;
  v31[4] = a6;
  v27 = type metadata accessor for HeadlessFeature(0, a8, a11, v24);
  sub_1E5A96FA8(v26, v31, v21, v27, &off_1F5F69310);
  v19(v32, 0);
  return v12;
}

uint64_t sub_1E5A971B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E5A972BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
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

uint64_t sub_1E5A97348(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1E5A97360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_8DataFlow5StoreCyxGAA7FeatureRzlyxIsegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E5A973B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1E5A973FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 SignOutFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

double SignOutFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v108 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E70, &qword_1E5AD37E0);
  v9 = *(v8 - 8);
  v109 = v8;
  v110 = v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v95 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v95 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v95 - v19;
  v21 = type metadata accessor for SignOutAction(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = v4[1];
  v112 = *v4;
  v113 = v24;
  v25 = v4[3];
  v114 = v4[2];
  v115 = v25;
  sub_1E5A9A084(a4, v23, type metadata accessor for SignOutAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      result = v23[2];
      v94 = *(v23 + 24);
      *a1 = *v23;
      *(a1 + 16) = result;
      *(a1 + 24) = v94;
    }

    else
    {
      sub_1E5A999DC(v23, a2);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E48, &qword_1E5AD3720);
    v46 = v45[16];
    v47 = v45[20];
    v48 = &v20[v45[24]];
    v111[0] = 1;
    v107 = sub_1E5A97E08();
    sub_1E5AD0088();
    v49 = *MEMORY[0x1E6999B50];
    v50 = sub_1E5ACFA28();
    v51 = *(v50 - 8);
    v52 = *(v51 + 104);
    v106 = v49;
    v105 = v50;
    v104 = v52;
    v103 = v51 + 104;
    (v52)(&v20[v46], v49);
    v53 = *MEMORY[0x1E6999B40];
    v54 = sub_1E5ACFA18();
    v55 = *(v54 - 8);
    v56 = *(v55 + 104);
    v102 = v53;
    v101 = v54;
    v100 = v56;
    v99 = v55 + 104;
    (v56)(&v20[v47], v53);
    v57 = swift_allocObject();
    v58 = v113;
    v57[1] = v112;
    v57[2] = v58;
    v59 = v115;
    v57[3] = v114;
    v57[4] = v59;
    *v48 = &unk_1E5AD3940;
    *(v48 + 1) = v57;
    sub_1E5A9999C(&v112, v111);
    sub_1E5ACFD88();
    v60 = *(v110 + 104);
    v98 = *MEMORY[0x1E6999AD8];
    v97 = v60;
    v60(v20);
    v61 = *v108;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = sub_1E5A96924(0, *(v61 + 2) + 1, 1, v61);
    }

    v63 = *(v61 + 2);
    v62 = *(v61 + 3);
    if (v63 >= v62 >> 1)
    {
      v61 = sub_1E5A96924((v62 > 1), v63 + 1, 1, v61);
    }

    *(v61 + 2) = v63 + 1;
    v64 = v109;
    v65 = *(v110 + 32);
    v66 = (*(v110 + 80) + 32) & ~*(v110 + 80);
    v67 = *(v110 + 72);
    v110 += 32;
    v96 = v65;
    v65(&v61[v66 + v67 * v63], v20, v109);
    v68 = v45[16];
    v69 = v45[20];
    v70 = &v18[v45[24]];
    v111[0] = 2;
    sub_1E5AD0088();
    v104(&v18[v68], v106, v105);
    v100(&v18[v69], v102, v101);
    v71 = swift_allocObject();
    v72 = v113;
    v71[1] = v112;
    v71[2] = v72;
    v73 = v115;
    v71[3] = v114;
    v71[4] = v73;
    *v70 = &unk_1E5AD3950;
    *(v70 + 1) = v71;
    sub_1E5A9999C(&v112, v111);
    sub_1E5ACFD88();
    v97(v18, v98, v64);
    v75 = *(v61 + 2);
    v74 = *(v61 + 3);
    if (v75 >= v74 >> 1)
    {
      v61 = sub_1E5A96924((v74 > 1), v75 + 1, 1, v61);
    }

    v76 = v108;
    *(v61 + 2) = v75 + 1;
    v96(&v61[v66 + v75 * v67], v18, v64);
    *v76 = v61;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E48, &qword_1E5AD3720);
    v28 = v27[16];
    v29 = v27[20];
    v30 = &v15[v27[24]];
    v111[0] = 0;
    sub_1E5A97E08();
    sub_1E5AD0088();
    v31 = *MEMORY[0x1E6999B60];
    v32 = sub_1E5ACFA28();
    (*(*(v32 - 8) + 104))(&v15[v28], v31, v32);
    v33 = swift_allocObject();
    v34 = v113;
    v33[1] = v112;
    v33[2] = v34;
    v35 = v115;
    v33[3] = v114;
    v33[4] = v35;
    *v30 = &unk_1E5AD3930;
    *(v30 + 1) = v33;
    sub_1E5A9999C(&v112, v111);
    sub_1E5ACFD88();
    v36 = *MEMORY[0x1E6999B48];
    v37 = sub_1E5ACFA18();
    (*(*(v37 - 8) + 104))(&v15[v29], v36, v37);
    v38 = v109;
    v39 = v110;
    (*(v110 + 104))(v15, *MEMORY[0x1E6999AD8], v109);
    v40 = v108;
    v41 = *v108;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1E5A96924(0, v41[2] + 1, 1, v41);
    }

    v43 = v41[2];
    v42 = v41[3];
    if (v43 >= v42 >> 1)
    {
      v41 = sub_1E5A96924((v42 > 1), v43 + 1, 1, v41);
    }

    v41[2] = v43 + 1;
    (*(v39 + 32))(v41 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v43, v15, v38);
    *v40 = v41;
  }

  else
  {
    *(a2 + *(type metadata accessor for SignOutState(0) + 20)) = 0;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E48, &qword_1E5AD3720);
    v78 = v77[16];
    v79 = v77[20];
    v80 = &v12[v77[24]];
    v111[0] = 3;
    sub_1E5A97E08();
    sub_1E5AD0088();
    v81 = *MEMORY[0x1E6999B50];
    v82 = sub_1E5ACFA28();
    (*(*(v82 - 8) + 104))(&v12[v78], v81, v82);
    v83 = swift_allocObject();
    v84 = v113;
    v83[1] = v112;
    v83[2] = v84;
    v85 = v115;
    v83[3] = v114;
    v83[4] = v85;
    *v80 = &unk_1E5AD3920;
    *(v80 + 1) = v83;
    sub_1E5A9999C(&v112, v111);
    sub_1E5ACFD88();
    v86 = *MEMORY[0x1E6999B48];
    v87 = sub_1E5ACFA18();
    (*(*(v87 - 8) + 104))(&v12[v79], v86, v87);
    v88 = v109;
    v89 = v110;
    (*(v110 + 104))(v12, *MEMORY[0x1E6999AD8], v109);
    v90 = v108;
    v91 = *v108;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v91 = sub_1E5A96924(0, v91[2] + 1, 1, v91);
    }

    v93 = v91[2];
    v92 = v91[3];
    if (v93 >= v92 >> 1)
    {
      v91 = sub_1E5A96924((v92 > 1), v93 + 1, 1, v91);
    }

    v91[2] = v93 + 1;
    (*(v89 + 32))(v91 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v93, v12, v88);
    *v90 = v91;
  }

  return result;
}

unint64_t sub_1E5A97E08()
{
  result = qword_1ED026E90;
  if (!qword_1ED026E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026E90);
  }

  return result;
}

uint64_t sub_1E5A97E5C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = type metadata accessor for SignOutAction(0);
  v2[4] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026EC8, &qword_1E5AD3A90);
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026ED0, &qword_1E5AD3A98);
  v2[8] = v6;
  v2[9] = *(v6 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = sub_1E5ACFD78();
  v2[12] = sub_1E5ACFD68();
  v9 = (*(a2 + 16) + **(a2 + 16));
  v7 = swift_task_alloc();
  v2[13] = v7;
  *v7 = v2;
  v7[1] = sub_1E5A98078;

  return v9(v5);
}

uint64_t sub_1E5A98078()
{
  v1 = *v0;

  v3 = sub_1E5ACFD48();
  *(v1 + 112) = v3;
  *(v1 + 120) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E5A981BC, v3, v2);
}

uint64_t sub_1E5A981BC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E5ACFD98();
  (*(v2 + 8))(v1, v3);
  v4 = sub_1E5ACFD68();
  v0[16] = v4;
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1E5A982AC;
  v6 = v0[8];
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 19, v4, v7, v6);
}

uint64_t sub_1E5A982AC()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1E5A983F0, v3, v2);
}

uint64_t sub_1E5A983F0()
{
  if (*(v0 + 152) == 1)
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v3 = swift_task_alloc();
    *(v0 + 144) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026EC0, &qword_1E5AD3A88);
    *v3 = v0;
    v3[1] = sub_1E5A98540;
    v5 = *(v0 + 32);

    return MEMORY[0x1EEE01A40](v5, v4);
  }
}

uint64_t sub_1E5A98540()
{
  v1 = *v0;
  v2 = *(*v0 + 32);

  sub_1E5A9A0EC(v2, type metadata accessor for SignOutAction);
  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1E5A98698, v4, v3);
}

uint64_t sub_1E5A98698(uint64_t a1)
{
  v2 = sub_1E5ACFD68();
  v1[16] = v2;
  v3 = swift_task_alloc();
  v1[17] = v3;
  *v3 = v1;
  v3[1] = sub_1E5A982AC;
  v4 = v1[8];
  v5 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v1 + 19, v2, v5, v4);
}

uint64_t sub_1E5A98754(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = type metadata accessor for SignOutAction(0);
  v2[14] = swift_task_alloc();
  v2[15] = sub_1E5ACFD78();
  v2[16] = sub_1E5ACFD68();
  v6 = (*(a2 + 32) + **(a2 + 32));
  v4 = swift_task_alloc();
  v2[17] = v4;
  *v4 = v2;
  v4[1] = sub_1E5A98898;

  return v6(v2 + 7);
}

uint64_t sub_1E5A98898()
{
  v1 = *v0;

  v3 = sub_1E5ACFD48();
  *(v1 + 144) = v3;
  *(v1 + 152) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E5A989DC, v3, v2);
}

uint64_t sub_1E5A989DC()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E5ACFDB8();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_1E5ACFD68();
  v0[20] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_1E5A98BB4;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 23, v5, v7);
}

uint64_t sub_1E5A98BB4()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 144);
    v5 = *(v2 + 152);

    return MEMORY[0x1EEE6DFA0](sub_1E5A98CC8, v4, v5);
  }

  return result;
}

uint64_t sub_1E5A98CC8()
{
  if (*(v0 + 184) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v3 = swift_task_alloc();
    *(v0 + 176) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026EC0, &qword_1E5AD3A88);
    *v3 = v0;
    v3[1] = sub_1E5A98DE4;
    v5 = *(v0 + 112);

    return MEMORY[0x1EEE01A40](v5, v4);
  }
}

uint64_t sub_1E5A98DE4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  sub_1E5A9A0EC(v2, type metadata accessor for SignOutAction);
  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1E5A98F3C, v4, v3);
}

uint64_t sub_1E5A98F3C(uint64_t a1)
{
  v2 = sub_1E5ACFD68();
  v1[20] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[21] = v3;
  *v3 = v1;
  v3[1] = sub_1E5A98BB4;
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v1 + 23, v2, v4);
}

uint64_t sub_1E5A99018(uint64_t a1, int **a2)
{
  v2[2] = a1;
  v2[3] = type metadata accessor for SignOutAction(0);
  v2[4] = swift_task_alloc();
  type metadata accessor for AccountState(0);
  v4 = swift_task_alloc();
  v2[5] = v4;
  v2[6] = sub_1E5ACFD78();
  v2[7] = sub_1E5ACFD68();
  v7 = (*a2 + **a2);
  v5 = swift_task_alloc();
  v2[8] = v5;
  *v5 = v2;
  v5[1] = sub_1E5A99190;

  return v7(v4);
}

uint64_t sub_1E5A99190()
{
  v2 = *v1;
  v2[9] = v0;

  v4 = sub_1E5ACFD48();
  v2[10] = v4;
  v2[11] = v3;
  if (v0)
  {
    v5 = sub_1E5A995C4;
  }

  else
  {
    v5 = sub_1E5A992F0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E5A992F0()
{
  sub_1E5A9A084(v0[5], v0[4], type metadata accessor for AccountState);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[12] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026EC0, &qword_1E5AD3A88);
  *v1 = v0;
  v1[1] = sub_1E5A993D8;
  v3 = v0[4];

  return MEMORY[0x1EEE01A40](v3, v2);
}

uint64_t sub_1E5A993D8()
{
  v1 = *v0;
  v2 = *(*v0 + 32);

  sub_1E5A9A0EC(v2, type metadata accessor for SignOutAction);
  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1E5A99530, v4, v3);
}

uint64_t sub_1E5A99530()
{
  v1 = *(v0 + 40);

  sub_1E5A9A0EC(v1, type metadata accessor for AccountState);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5A995C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5A9963C(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1E5ACFD78();
  v2[3] = sub_1E5ACFD68();
  v6 = (*(a2 + 48) + **(a2 + 48));
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E5A99744;

  return v6();
}

uint64_t sub_1E5A99744()
{
  *(*v1 + 40) = v0;

  v3 = sub_1E5ACFD48();
  if (v0)
  {
    v4 = sub_1E5A998A0;
  }

  else
  {
    v4 = sub_1E5A9628C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1E5A998A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5A99904(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5A9A14C;

  return sub_1E5A9963C(a1, v1 + 16);
}

uint64_t sub_1E5A999DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5A99A40(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5A96520;

  return sub_1E5A99018(a1, (v1 + 16));
}

uint64_t sub_1E5A99AD8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5A9A14C;

  return sub_1E5A97E5C(a1, v1 + 16);
}

uint64_t objectdestroyTm()
{

  return swift_deallocObject();
}

uint64_t sub_1E5A99BC0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5A9A14C;

  return sub_1E5A98754(a1, v1 + 16);
}

unint64_t sub_1E5A99CEC()
{
  result = qword_1ED026EA8;
  if (!qword_1ED026EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026EA8);
  }

  return result;
}

uint64_t sub_1E5A99D88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E5A99DE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1E5A99E2C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SignOutFeature.TaskIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SignOutFeature.TaskIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5A99FE0()
{
  result = qword_1ED026EB8;
  if (!qword_1ED026EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026EB8);
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

uint64_t sub_1E5A9A084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5A9A0EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5A9A188(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = sub_1E5ACFA78();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDD638](v2, v3, v4, v5, WitnessTable);
}

uint64_t sub_1E5A9A204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = a8;
  v18[4] = a1;
  v18[5] = a2;
  sub_1E5ACFA78();
  swift_getWitnessTable();
  result = sub_1E5ACF0E8();
  *a9 = result;
  *(a9 + 8) = v20;
  *(a9 + 16) = v21 & 1;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  return result;
}

uint64_t HeadlessFeatureViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v33 = a1;
  v37 = a3;
  swift_getWitnessTable();
  sub_1E5ACF358();
  v32 = sub_1E5ACF1E8();
  v36 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v30 = &v29 - v5;
  v6 = sub_1E5ACF1E8();
  v35 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v29 - v9;
  v10 = v3[1];
  v43 = *v3;
  v44 = v10;
  v45 = v3[2];
  v46 = *(v3 + 6);
  v11 = swift_allocObject();
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  v14 = v3[1];
  *(v11 + 32) = *v3;
  *(v11 + 48) = v14;
  *(v11 + 64) = v3[2];
  *(v11 + 80) = *(v3 + 6);
  v15 = *(*(a2 - 8) + 16);
  v15(v42, &v43, a2);
  WitnessTable = swift_getWitnessTable();
  v17 = v30;
  sub_1E5ACF668();

  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  *(v18 + 24) = v13;
  v19 = v44;
  *(v18 + 32) = v43;
  *(v18 + 48) = v19;
  *(v18 + 64) = v45;
  *(v18 + 80) = v46;
  v15(v42, &v43, a2);
  v20 = MEMORY[0x1E69805D0];
  v40 = WitnessTable;
  v41 = MEMORY[0x1E69805D0];
  v21 = v32;
  v22 = swift_getWitnessTable();
  v23 = v31;
  sub_1E5ACF5C8();

  (*(v36 + 8))(v17, v21);
  v38 = v22;
  v39 = v20;
  swift_getWitnessTable();
  v24 = v35;
  v25 = *(v35 + 16);
  v26 = v34;
  v25(v34, v23, v6);
  v27 = *(v24 + 8);
  v27(v23, v6);
  v25(v37, v26, v6);
  return (v27)(v26, v6);
}

Swift::Void __swiftcall HeadlessFeatureViewModifier.onAppeared()()
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = sub_1E5A9A188(v0);
    v2(v3, v4, v5, v6);
  }
}

uint64_t objectdestroyTm_0()
{
  sub_1E5A9A6F8(v0[4], v0[5]);
  if (v0[7])
  {
  }

  if (v0[9])
  {
  }

  return swift_deallocObject();
}

Swift::Void __swiftcall HeadlessFeatureViewModifier.onDisappeared()()
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = sub_1E5A9A188(v0);
    v2(v3, v4, v5, v6, v7, v8, v9);
  }
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

uint64_t sub_1E5A9A970(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1E5A9A9CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1E5A9AA84@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5ACF3D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5ACF3E8();
  sub_1E5A9ABB0();
  sub_1E5A9AC08();
  sub_1E5ACF598();
  (*(v3 + 8))(v5, v2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026EE8, &qword_1E5AD3C70);
  v7 = (a1 + *(result + 36));
  *v7 = sub_1E5A80070;
  v7[1] = 0;
  return result;
}

unint64_t sub_1E5A9ABB0()
{
  result = qword_1ED026ED8;
  if (!qword_1ED026ED8)
  {
    sub_1E5ACF3D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026ED8);
  }

  return result;
}

unint64_t sub_1E5A9AC08()
{
  result = qword_1ED026EE0;
  if (!qword_1ED026EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026EE0);
  }

  return result;
}

unint64_t sub_1E5A9AC5C()
{
  result = qword_1ED026EF0;
  if (!qword_1ED026EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED026EE8, &qword_1E5AD3C70);
    sub_1E5ACF3D8();
    sub_1E5A9ABB0();
    sub_1E5A9AC08();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026EF0);
  }

  return result;
}

uint64_t sub_1E5A9AD40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1E5A9AD9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1E5A9AE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a4;
  v38 = a1;
  v43 = a6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026EF8, &qword_1E5AD3D78);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v37 - v10;
  v40 = v7 & 1;
  LOBYTE(v62[0]) = v7;
  *(&v62[0] + 1) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F00, &qword_1E5AD3D80);
  sub_1E5ACF798();
  LODWORD(v39) = v56;
  v12 = sub_1E5ACF8A8();
  v14 = v13;
  v41 = a3;
  v15 = a2;
  sub_1E5A9B234(v52);
  v58 = v53;
  v59 = v54;
  v60 = v55;
  v56 = v52[0];
  v57 = v52[1];
  *&v61 = v12;
  *(&v61 + 1) = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F08, &qword_1E5AD3D88);
  (*(*(v16 - 8) + 16))(v11, v38, v16);
  v17 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F10, &qword_1E5AD3D90) + 36)];
  v18 = v59;
  v19 = v60;
  v20 = v57;
  *(v17 + 2) = v58;
  *(v17 + 3) = v18;
  v21 = v61;
  *(v17 + 4) = v19;
  *(v17 + 5) = v21;
  v22 = v55;
  *v17 = v56;
  *(v17 + 1) = v20;
  v62[2] = v53;
  v62[3] = v54;
  v62[4] = v22;
  v62[0] = v52[0];
  v62[1] = v52[1];
  v63 = v12;
  v64 = v14;
  sub_1E5A9B464(&v56, &v45, &qword_1ED026F18, &qword_1E5AD3D98);
  sub_1E5A9B8E8(v62, &qword_1ED026F18, &qword_1E5AD3D98);
  v23 = sub_1E5ACF8A8();
  v25 = v24;
  LOBYTE(v45) = v7;
  *&v46 = a5;
  sub_1E5ACF798();
  if (LOBYTE(v52[0]) == 1)
  {
    sub_1E5ACF6A8();
    v26 = sub_1E5ACF6D8();
  }

  else
  {
    v26 = sub_1E5ACF6B8();
  }

  if (v39)
  {
    v27 = 1.16;
  }

  else
  {
    v27 = 1.0;
  }

  v39 = xmmword_1E5AD3C90;
  *(v52 + 8) = xmmword_1E5AD3C90;
  *&v52[0] = v26;
  *(&v52[1] + 1) = 0x4022000000000000;
  *&v53 = sub_1E5A9B978;
  *(&v53 + 1) = 0;
  *&v54 = v23;
  *(&v54 + 1) = v25;
  v28 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F20, &qword_1E5AD3DA0) + 36)];
  v29 = v52[1];
  *v28 = v52[0];
  *(v28 + 1) = v29;
  v30 = v54;
  *(v28 + 2) = v53;
  *(v28 + 3) = v30;
  v45 = v26;
  v46 = v39;
  v47 = 0x4022000000000000;
  v48 = sub_1E5A9B978;
  v49 = 0;
  v50 = v23;
  v51 = v25;
  sub_1E5A9B464(v52, v44, &qword_1ED026F28, &qword_1E5AD3DA8);
  sub_1E5A9B8E8(&v45, &qword_1ED026F28, &qword_1E5AD3DA8);
  sub_1E5ACF928();
  v31 = &v11[*(v42 + 36)];
  *v31 = v27;
  *(v31 + 1) = v27;
  *(v31 + 2) = v32;
  *(v31 + 3) = v33;
  v34 = v41 & 1;
  v44[0] = sub_1E5A9B4CC(v15, v41 & 1) & 1;
  v35 = swift_allocObject();
  *(v35 + 16) = v15;
  *(v35 + 24) = v34;
  *(v35 + 32) = v40;
  *(v35 + 40) = a5;
  sub_1E5A9B6B4(v15, v34);
  sub_1E5A9B6C0();

  sub_1E5ACF688();

  return sub_1E5A9B8E8(v11, &qword_1ED026EF8, &qword_1E5AD3D78);
}

void *sub_1E5A9B234@<X0>(uint64_t a3@<X8>)
{
  sub_1E5ACF118();
  v4 = sub_1E5ACF6C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F00, &qword_1E5AD3D80);
  result = sub_1E5ACF798();
  v6 = 1.0;
  if (!v7)
  {
    v6 = 0.0;
  }

  *a3 = 0xC004000000000000;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
  *(a3 + 40) = v12;
  *(a3 + 48) = v4;
  *(a3 + 56) = v6;
  *(a3 + 64) = sub_1E5A9B978;
  *(a3 + 72) = 0;
  return result;
}

uint64_t sub_1E5A9B334(uint64_t a1, char a2, char a3, uint64_t a4)
{
  sub_1E5ACF8B8();
  sub_1E5ACF198();
}

uint64_t sub_1E5A9B3D0(uint64_t a1, char a2)
{
  sub_1E5A9B4CC(a1, a2 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F00, &qword_1E5AD3D80);
  return sub_1E5ACF7A8();
}

uint64_t sub_1E5A9B464(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E5A9B4CC(uint64_t a1, char a2)
{
  v4 = sub_1E5ACF258();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    v8 = sub_1E5ACFF18();
    v9 = sub_1E5ACF4D8();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1E5AA2334(1819242306, 0xE400000000000000, &v13);
      _os_log_impl(&dword_1E5A79000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E6935190](v11, -1, -1);
      MEMORY[0x1E6935190](v10, -1, -1);
    }

    sub_1E5ACF248();
    swift_getAtKeyPath();
    sub_1E5A9B68C(a1, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(a1) = v14;
  }

  return a1 & 1;
}

uint64_t sub_1E5A9B68C(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_1E5A9B6B4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_1E5A9B6C0()
{
  result = qword_1ED026F30;
  if (!qword_1ED026F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED026EF8, &qword_1E5AD3D78);
    sub_1E5A9B74C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026F30);
  }

  return result;
}

unint64_t sub_1E5A9B74C()
{
  result = qword_1ED026F38;
  if (!qword_1ED026F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED026F20, &qword_1E5AD3DA0);
    sub_1E5A9B804();
    sub_1E5A8CEF0(&qword_1ED026F58, &qword_1ED026F28, &qword_1E5AD3DA8, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026F38);
  }

  return result;
}

unint64_t sub_1E5A9B804()
{
  result = qword_1ED026F40;
  if (!qword_1ED026F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED026F10, &qword_1E5AD3D90);
    sub_1E5A8CEF0(&qword_1ED026F48, &qword_1ED026F08, &qword_1E5AD3D88, MEMORY[0x1E697FDF8]);
    sub_1E5A8CEF0(&qword_1ED026F50, &qword_1ED026F18, &qword_1E5AD3D98, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026F40);
  }

  return result;
}

uint64_t sub_1E5A9B8E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E5A9B990(uint64_t a1)
{
  v2 = sub_1E5A9C04C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A9B9CC(uint64_t a1)
{
  v2 = sub_1E5A9C04C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A9BA08()
{
  v1 = 1701273968;
  if (*v0 != 1)
  {
    v1 = 0x686372616573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_1E5A9BA54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5A9CA74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5A9BA7C(uint64_t a1)
{
  v2 = sub_1E5A9BF50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A9BAB8(uint64_t a1)
{
  v2 = sub_1E5A9BF50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A9BAF4(uint64_t a1)
{
  v2 = sub_1E5A9BFF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A9BB30(uint64_t a1)
{
  v2 = sub_1E5A9BFF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A9BB6C(uint64_t a1)
{
  v2 = sub_1E5A9BFA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A9BBA8(uint64_t a1)
{
  v2 = sub_1E5A9BFA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TabBarItemKind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F60, &qword_1E5AD3DB0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F68, &qword_1E5AD3DB8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F70, &qword_1E5AD3DC0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F78, &qword_1E5AD3DC8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A9BF50();
  sub_1E5AD03E8();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1E5A9BFF8();
      v9 = v21;
      sub_1E5AD02B8();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1E5A9BFA4();
      v9 = v24;
      sub_1E5AD02B8();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1E5A9C04C();
    sub_1E5AD02B8();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1E5A9BF50()
{
  result = qword_1ED026F80;
  if (!qword_1ED026F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026F80);
  }

  return result;
}

unint64_t sub_1E5A9BFA4()
{
  result = qword_1ED026F88;
  if (!qword_1ED026F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026F88);
  }

  return result;
}

unint64_t sub_1E5A9BFF8()
{
  result = qword_1ED026F90;
  if (!qword_1ED026F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026F90);
  }

  return result;
}

unint64_t sub_1E5A9C04C()
{
  result = qword_1ED026F98;
  if (!qword_1ED026F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026F98);
  }

  return result;
}

uint64_t TabBarItemKind.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026FA0, &qword_1E5AD3DD0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026FA8, &qword_1E5AD3DD8);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026FB0, &qword_1E5AD3DE0);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026FB8, &unk_1E5AD3DE8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E5A9BF50();
  v15 = v36;
  sub_1E5AD03D8();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1E5AD0298();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1E5A82BF4();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1E5AD00F8();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266E8, &qword_1E5AD1910);
      *v24 = &type metadata for TabBarItemKind;
      sub_1E5AD0238();
      sub_1E5AD00E8();
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
          sub_1E5A9BFF8();
          sub_1E5AD0228();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1E5A9BFA4();
          v26 = v17;
          sub_1E5AD0228();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1E5A9C04C();
        sub_1E5AD0228();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t TabBarItemKind.hashValue.getter()
{
  v1 = *v0;
  sub_1E5AD0378();
  MEMORY[0x1E6934A50](v1);
  return sub_1E5AD03C8();
}

unint64_t sub_1E5A9C6B8()
{
  result = qword_1ED026FC0;
  if (!qword_1ED026FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026FC0);
  }

  return result;
}

unint64_t sub_1E5A9C760()
{
  result = qword_1ED026FC8;
  if (!qword_1ED026FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026FC8);
  }

  return result;
}

unint64_t sub_1E5A9C7B8()
{
  result = qword_1ED026FD0;
  if (!qword_1ED026FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026FD0);
  }

  return result;
}

unint64_t sub_1E5A9C810()
{
  result = qword_1ED026FD8;
  if (!qword_1ED026FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026FD8);
  }

  return result;
}

unint64_t sub_1E5A9C868()
{
  result = qword_1ED026FE0;
  if (!qword_1ED026FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026FE0);
  }

  return result;
}

unint64_t sub_1E5A9C8C0()
{
  result = qword_1ED026FE8;
  if (!qword_1ED026FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026FE8);
  }

  return result;
}

unint64_t sub_1E5A9C918()
{
  result = qword_1ED026FF0;
  if (!qword_1ED026FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026FF0);
  }

  return result;
}

unint64_t sub_1E5A9C970()
{
  result = qword_1ED026FF8;
  if (!qword_1ED026FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026FF8);
  }

  return result;
}

unint64_t sub_1E5A9C9C8()
{
  result = qword_1ED027000;
  if (!qword_1ED027000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027000);
  }

  return result;
}

unint64_t sub_1E5A9CA20()
{
  result = qword_1ED027008;
  if (!qword_1ED027008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027008);
  }

  return result;
}

uint64_t sub_1E5A9CA74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701273968 && a2 == 0xE400000000000000 || (sub_1E5AD0348() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x686372616573 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5AD0348();

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

id AppearanceHandlerAttaching<>.onAppear(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1E5A9CD5C(a1, a2, a3, a4, a5);

  return v5;
}

uint64_t View.attach<A>(store:onAppear:onDisappear:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  sub_1E5A972BC(a3, a4);
  sub_1E5A972BC(a5, a6);
  sub_1E5A9A204(a1, a2, a3, a4, a5, a6, a8, a10, &v27);
  v23 = v27;
  v24 = v28;
  v25 = v29;
  v26 = v30;
  v18 = type metadata accessor for HeadlessFeatureViewModifier(0, a8, a10, v17);
  MEMORY[0x1E6933D20](&v23, a7, v18, a9);
  v19 = v25;
  v20 = v26;
  sub_1E5A9A6F8(v23, *(&v23 + 1));
  sub_1E5A9CE98(v19, *(&v19 + 1));
  return sub_1E5A9CE98(v20, *(&v20 + 1));
}

id sub_1E5A9CD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = sub_1E5A9CD5C(a1, a2, a3, a4, &protocol witness table for DynamicContentContainerViewController<A, B>);
  *a5 = v6;

  return v6;
}

uint64_t sub_1E5A9CD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 24);

  v12 = v11(v21, a3, a5);
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1E5A96B30(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1E5A96B30((v17 > 1), v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  v19 = &v15[2 * v18];
  v19[4] = sub_1E5A9CED8;
  v19[5] = v10;
  v12(v21, 0);
  return v5;
}

uint64_t sub_1E5A9CE98(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_1E5A9CF5C(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for VibrantSegmentedControl();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_1E5A9CFB0(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v9 = type metadata accessor for VibrantSegmentedControl();
  v13.receiver = a1;
  v13.super_class = v9;
  v10 = *a4;
  v11 = a1;
  LODWORD(v10) = objc_msgSendSuper2(&v13, v10);
  v12.receiver = v11;
  v12.super_class = v9;
  objc_msgSendSuper2(&v12, *a5, a3);
  if (v10 != [v11 *a4])
  {
    sub_1E5A9DB14([v11 state]);
  }
}

id sub_1E5A9D05C(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC14FitnessAppRoot23VibrantSegmentedControl_lastTouchStayedOnSelectedSegment] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for VibrantSegmentedControl();
  v9 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setApportionsSegmentWidthsByContent_];
  v10 = [objc_opt_self() systemFillColor];
  [v9 setSelectedSegmentTintColor_];

  [v9 setTransparentBackground_];
  [v9 _setAlwaysEmitValueChanged_];

  return v9;
}

void sub_1E5A9D1F0(id a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = [v3 titleTextAttributesForState_];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  type metadata accessor for Key(0);
  sub_1E5A9E124();
  v10 = sub_1E5ACFAF8();

  if (!*(v10 + 16) || (v11 = sub_1E5AAD618(*MEMORY[0x1E69DB648]), (v12 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_1E5A9E0C8(*(v10 + 56) + 32 * v11, v17);

  sub_1E5A7C10C(0, &qword_1ED027018, 0x1E69DB878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v14 = a1;
    goto LABEL_10;
  }

  if (a1)
  {
    v13 = [objc_opt_self() configurationWithFont_];
    a1 = [a1 imageWithConfiguration_];
  }

LABEL_10:
  v16.receiver = v4;
  v16.super_class = type metadata accessor for VibrantSegmentedControl();
  objc_msgSendSuper2(&v16, sel_insertSegmentWithImage_atIndex_animated_, a1, a2, a3 & 1);
}

void sub_1E5A9D420(id a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 titleTextAttributesForState_];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for Key(0);
    sub_1E5A9E124();
    v8 = sub_1E5ACFAF8();

    if (a1)
    {
      a1 = sub_1E5A9DF40(v8);
    }
  }

  else
  {
    v9 = a1;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for VibrantSegmentedControl();
  objc_msgSendSuper2(&v10, sel_setImage_forSegmentAtIndex_, a1, a2);
}

void sub_1E5A9D67C(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4, char a5, SEL *a6)
{
  sub_1E5A7C10C(0, &qword_1ED027020, 0x1E69DD190);
  sub_1E5A9E17C();
  sub_1E5ACFE28();
  a1[OBJC_IVAR____TtC14FitnessAppRoot23VibrantSegmentedControl_lastTouchStayedOnSelectedSegment] = a5;
  v10 = a4;
  v11 = a1;
  v12 = sub_1E5ACFE18();

  v13.receiver = v11;
  v13.super_class = type metadata accessor for VibrantSegmentedControl();
  objc_msgSendSuper2(&v13, *a6, v12, v10);
}

void sub_1E5A9D764(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5A9D8D8(a1);
  if (v4)
  {
    v5 = v4;
    [v2 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v5 locationInView_];
    v19.x = v14;
    v19.y = v15;
    v20.origin.x = v7;
    v20.origin.y = v9;
    v20.size.width = v11;
    v20.size.height = v13;
    if (!CGRectContainsPoint(v20, v19))
    {
      *(v2 + OBJC_IVAR____TtC14FitnessAppRoot23VibrantSegmentedControl_lastTouchStayedOnSelectedSegment) = 0;
    }

    sub_1E5A7C10C(0, &qword_1ED027020, 0x1E69DD190);
    sub_1E5A9E17C();
    v16 = sub_1E5ACFE18();
    v17.receiver = v2;
    v17.super_class = type metadata accessor for VibrantSegmentedControl();
    objc_msgSendSuper2(&v17, sel_touchesEnded_withEvent_, v16, a2);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC14FitnessAppRoot23VibrantSegmentedControl_lastTouchStayedOnSelectedSegment) = 0;
    sub_1E5A7C10C(0, &qword_1ED027020, 0x1E69DD190);
    sub_1E5A9E17C();
    v16 = sub_1E5ACFE18();
    v18.receiver = v2;
    v18.super_class = type metadata accessor for VibrantSegmentedControl();
    objc_msgSendSuper2(&v18, sel_touchesEnded_withEvent_, v16, a2);
  }
}

uint64_t sub_1E5A9D8D8(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1E5AD0028();
    v5 = v4;
    v6 = sub_1E5AD0078();
    v8 = v7;
    v9 = MEMORY[0x1E6934700](v3, v5, v6, v7);
    sub_1E5A9E1E4(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1E5A9E1E4(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1E5AD0018();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1E5A9E1F0(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1E5A9E1E4(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_1E5A9DB14(id a1)
{
  v2 = v1;
  result = [v1 titleTextAttributesForState_];
  if (result)
  {
    v5 = result;
    type metadata accessor for Key(0);
    sub_1E5A9E124();
    v6 = MEMORY[0x1E69E7CA0];
    v7 = sub_1E5ACFAF8();

    if ([v2 state] != a1)
    {
      goto LABEL_14;
    }

    result = [v2 numberOfSegments];
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v8 = result;
    if (result)
    {
      v9 = 0;
      v10 = &off_1E8788000;
      v11 = *MEMORY[0x1E69DB648];
      do
      {
        v13 = [v2 v10[274]];
        if (v13)
        {
          v14 = v13;
          if (*(v7 + 16) && (v15 = sub_1E5AAD618(v11), (v16 & 1) != 0) && (sub_1E5A9E0C8(*(v7 + 56) + 32 * v15, v21), sub_1E5A7C10C(0, &qword_1ED027018, 0x1E69DB878), swift_dynamicCast()))
          {
            v17 = v11;
            v18 = v6;
            v19 = [objc_opt_self() configurationWithFont_];
            v12 = [v14 imageWithConfiguration_];

            v6 = v18;
            v11 = v17;
            v10 = &off_1E8788000;
          }

          else
          {
            v12 = v14;
          }

          [v2 setImage:v12 forSegmentAtIndex:v9];
        }

        ++v9;
      }

      while (v8 != v9);
    }

    else
    {
LABEL_14:
    }
  }

  return result;
}

void sub_1E5A9DD68(uint64_t a1, id a2)
{
  v3 = v2;
  if ([v3 state] == a2)
  {
    v5 = [v3 numberOfSegments];
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v6 = v5;
      if (v5)
      {
        v7 = 0;
        v8 = *MEMORY[0x1E69DB648];
        v9 = &qword_1ED027018;
        do
        {
          v11 = [v3 imageForSegmentAtIndex_];
          if (v11)
          {
            v12 = v11;
            if (a1 && *(a1 + 16) && (v13 = sub_1E5AAD618(v8), (v14 & 1) != 0) && (sub_1E5A9E0C8(*(a1 + 56) + 32 * v13, v20), sub_1E5A7C10C(0, v9, 0x1E69DB878), swift_dynamicCast()))
            {
              v18 = v19;
              v15 = v9;
              v16 = v8;
              v17 = [objc_opt_self() configurationWithFont_];
              v10 = [v12 imageWithConfiguration_];

              v8 = v16;
              v9 = v15;
            }

            else
            {
              v10 = v12;
            }

            [v3 setImage:v10 forSegmentAtIndex:{v7, v18}];
          }

          ++v7;
        }

        while (v6 != v7);
      }
    }
  }
}

id sub_1E5A9DF40(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    return v2;
  }

  if (!*(a1 + 16))
  {
    return v2;
  }

  v4 = sub_1E5AAD618(*MEMORY[0x1E69DB648]);
  if ((v5 & 1) == 0)
  {
    return v2;
  }

  sub_1E5A9E0C8(*(a1 + 56) + 32 * v4, v10);
  sub_1E5A7C10C(0, &qword_1ED027018, 0x1E69DB878);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return v2;
  }

  v6 = [objc_opt_self() configurationWithFont_];
  v7 = [v2 imageWithConfiguration_];

  return v7;
}

id sub_1E5A9E070(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VibrantSegmentedControl();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E5A9E0C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1E5A9E124()
{
  result = qword_1ED0265F8;
  if (!qword_1ED0265F8)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0265F8);
  }

  return result;
}

unint64_t sub_1E5A9E17C()
{
  result = qword_1ED027028;
  if (!qword_1ED027028)
  {
    sub_1E5A7C10C(255, &qword_1ED027020, 0x1E69DD190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027028);
  }

  return result;
}

uint64_t sub_1E5A9E1E4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_1E5A9E1F0(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1E6934730](a1, a2, v7);
      sub_1E5A7C10C(0, &qword_1ED027020, 0x1E69DD190);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1E5A7C10C(0, &qword_1ED027020, 0x1E69DD190);
    if (sub_1E5AD0048() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1E5AD0058();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_1E5ACFFA8();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1E5ACFFB8();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_1E5A9E49C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1E5ACFE88();
  if (!v19)
  {
    return sub_1E5ACFCA8();
  }

  v41 = v19;
  v45 = sub_1E5AD0148();
  v32 = sub_1E5AD0158();
  sub_1E5AD0128();
  result = sub_1E5ACFE68();
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
      v22 = sub_1E5ACFEE8();
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
      sub_1E5AD0138();
      result = sub_1E5ACFE98();
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

id sub_1E5A9E8BC(void *a1)
{
  v1 = a1;
  v2 = SidebarTabController.keyCommands.getter();

  if (v2)
  {
    sub_1E5A7C10C(0, &qword_1ED026CB0, 0x1E69DCBA0);
    v3 = sub_1E5ACFC68();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t SidebarTabController.keyCommands.getter()
{
  ObjectType = swift_getObjectType();
  v2 = SidebarTabController.selectedViewController.getter();
  if (!v2)
  {
    v9.receiver = v0;
    v9.super_class = ObjectType;
    v7 = objc_msgSendSuper2(&v9, sel_keyCommands);
    if (v7)
    {
      v3 = v7;
      sub_1E5A7C10C(0, &qword_1ED026CB0, 0x1E69DCBA0);
      v6 = sub_1E5ACFC78();
      goto LABEL_6;
    }

    return 0;
  }

  v3 = v2;
  v4 = [v2 keyCommands];
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  sub_1E5A7C10C(0, &qword_1ED026CB0, 0x1E69DCBA0);
  v6 = sub_1E5ACFC78();

LABEL_6:
  return v6;
}

id SidebarTabController.selectedViewController.getter()
{
  v1 = v0;
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = v1 + qword_1ED027038;
  swift_beginAccess();
  if (v3[8])
  {
    return 0;
  }

  v4 = *v3;
  swift_beginAccess();
  type metadata accessor for TabBarItemDescriptor(255, *(v2 + 80), *(v2 + 88), v5);
  sub_1E5ACFD08();
  swift_getWitnessTable();
  sub_1E5ACFE58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED026CA0, &unk_1E5AD3230);
  if ((sub_1E5ACFEF8() & 1) == 0)
  {
    return 0;
  }

  v6 = qword_1ED027050;
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1E69347A0](v4);
    goto LABEL_7;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v8 + 8 * v4 + 32);
LABEL_7:
    v10 = v9;
    swift_endAccess();
    return v10;
  }

  __break(1u);
  return result;
}

id sub_1E5A9EBE0(void *a1)
{
  v1 = a1;
  SidebarTabController.preferredFocusEnvironments.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED026D30, &qword_1E5AD43E0);
  v2 = sub_1E5ACFC68();

  return v2;
}

uint64_t SidebarTabController.preferredFocusEnvironments.getter()
{
  v4 = SidebarTabController.selectedViewController.getter();
  v0 = MEMORY[0x1E69E7CC0];
  v3 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v1 = swift_unknownObjectRetain();
    MEMORY[0x1E6934320](v1);
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E5ACFC98();
    }

    sub_1E5ACFCC8();
    v0 = v3;
  }

  sub_1E5A8DF58(&v4);
  return v0;
}

uint64_t SidebarTabController.selectedItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = v2 + qword_1ED027038;
  swift_beginAccess();
  if (v5[8] == 1)
  {
    v7 = *(v4 + 80);
    v8 = *(v4 + 88);
  }

  else
  {
    swift_beginAccess();
    v7 = *(v4 + 80);
    v8 = *(v4 + 88);
    v10 = type metadata accessor for TabBarItemDescriptor(255, v7, v8, v9);
    sub_1E5ACFD08();
    swift_getWitnessTable();
    sub_1E5ACFE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED026CA0, &unk_1E5AD3230);
    if (sub_1E5ACFEF8())
    {
      swift_beginAccess();
      sub_1E5ACFD38();
      swift_endAccess();
      return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
    }
  }

  v12 = type metadata accessor for TabBarItemDescriptor(0, v7, v8, v6);
  return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
}

uint64_t SidebarTabController.selectedIndex.getter()
{
  v1 = v0 + qword_1ED027038;
  swift_beginAccess();
  return *v1;
}

uint64_t (*SidebarTabController.init(store:viewBuilder:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4))(void)
{
  ObjectType = swift_getObjectType();
  v7 = *v4;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = v4 + qword_1ED027038;
  *v9 = 0;
  v9[8] = 1;
  v10 = qword_1ED027040;
  v11 = *((v8 & v7) + 0x50);
  v12 = *((v8 & v7) + 0x58);
  type metadata accessor for TabBarItemDescriptor(0, v11, v12, v13);
  *(v4 + v10) = sub_1E5ACFCA8();
  *(v4 + qword_1ED027050) = MEMORY[0x1E69E7CC0];
  type metadata accessor for TabBarFeature(255, v11, v12, v14);
  swift_getWitnessTable();
  sub_1E5ACF9D8();
  a1();
  *(v4 + qword_1ED027060) = sub_1E5ACF9B8();
  v15 = (v4 + qword_1ED027068);
  *v15 = a3;
  v15[1] = a4;
  v27.receiver = v4;
  v27.super_class = ObjectType;

  v16 = objc_msgSendSuper2(&v27, sel_initWithNibName_bundle_, 0, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v12;
  v18[4] = v17;
  sub_1E5ACFD08();
  v19 = v16;

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5ACF998();

  swift_getKeyPath();
  swift_getKeyPath();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = v11;
  v21[3] = v12;
  v21[4] = v20;

  sub_1E5ACF998();

  swift_getKeyPath();
  swift_getKeyPath();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v23 = swift_allocObject();
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v22;
  sub_1E5ACF998();

  return v19;
}

uint64_t sub_1E5A9F3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  v9 = *((*MEMORY[0x1E69E7D40] & v7) + 0x58);
  v10 = type metadata accessor for TabBarItemDescriptor(255, v8, v9, a4);
  v11 = sub_1E5ACFFD8();
  v66 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v72 = v61 - v13;
  v73 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v67 = v61 - v14;
  v15 = sub_1E5AD01E8();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v61 - v20;
  result = [v5 isViewLoaded];
  if (result)
  {
    v62 = v11;
    v68 = v8;
    v69 = v9;
    if (qword_1EE2FCA80 != -1)
    {
      swift_once();
    }

    v23 = sub_1E5ACF038();
    v24 = __swift_project_value_buffer(v23, qword_1EE300080);
    v61[1] = "ibrantSegmentedControl.swift";
    v61[2] = v24;
    sub_1E5ACF008();
    v75 = a1;
    v25 = qword_1ED027040;
    v70 = qword_1ED027040;
    swift_beginAccess();
    v74 = *&v5[v25];
    v26 = sub_1E5ACFD08();
    swift_getWitnessTable();
    v61[3] = swift_getWitnessTable();
    sub_1E5ACFB68();
    WitnessTable = swift_getWitnessTable();
    sub_1E5AD01F8();
    v71 = a1;
    v27 = *(v16 + 8);
    v27(v19, v15);
    v28 = sub_1E5AD01C8();
    v29 = (v27)(v21, v15);
    v65 = v61;
    v75 = v28;
    MEMORY[0x1EEE9AC00](v29);
    v30 = v68;
    v31 = v69;
    v61[-2] = v68;
    v61[-1] = v31;
    sub_1E5AD01D8();
    sub_1E5ACFD08();
    swift_getWitnessTable();
    v32 = sub_1E5ACFC38();

    v75 = v32;
    v65 = swift_getWitnessTable();
    v33 = WitnessTable;
    v34 = sub_1E5ACFE48();
    v63 = v61;
    v75 = *&v5[v70];
    MEMORY[0x1EEE9AC00](v75);
    v61[-4] = v30;
    v61[-3] = v31;
    v61[-2] = v34;

    swift_getWitnessTable();
    v35 = sub_1E5AD0118();

    v74 = v35;
    v36 = sub_1E5A7C10C(255, &unk_1EE2FC9D0, 0x1E69DD258);
    swift_getTupleTypeMetadata2();
    v37 = sub_1E5ACFCA8();
    v38 = sub_1E5AA2AC0(v37, v10, v36, v33);

    v77 = v38;
    MEMORY[0x1EEE9AC00](v39);
    v61[-2] = v5;
    sub_1E5ACFB08();
    sub_1E5ACFC48();

    v41 = v75;
    v75 = v71;
    MEMORY[0x1EEE9AC00](v40);
    v61[-2] = v41;
    v61[-1] = v5;
    v42 = swift_getWitnessTable();
    v44 = sub_1E5A9E49C(sub_1E5AA32F8, &v61[-4], v26, v36, MEMORY[0x1E69E73E0], v42, MEMORY[0x1E69E7410], v43);

    v45 = v72;
    SidebarTabController.selectedItem.getter(v72);
    v46 = v73;
    if ((*(v73 + 48))(v45, 1, v10) == 1)
    {
      (*(v66 + 8))(v45, v62);
      v47 = v71;
    }

    else
    {
      v48 = v67;
      (*(v46 + 32))(v67, v45, v10);
      v47 = v71;
      v74 = v71;
      sub_1E5ACFED8();
      if (v76 != 1)
      {
        sub_1E5AA0588(v75);
        (*(v46 + 8))(v48, v10);
        goto LABEL_24;
      }

      (*(v46 + 8))(v48, v10);
    }

    v49 = SidebarTabController.selectedViewController.getter();
    v50 = v69;
    if (v49)
    {
      v51 = v49;
      sub_1E5ACF008();
      [v51 willMoveToParentViewController_];
      result = [v51 view];
      if (!result)
      {
        goto LABEL_32;
      }

      v52 = result;
      [result removeFromSuperview];

      [v51 removeFromParentViewController];
    }

    v53 = &v5[qword_1ED027038];
    swift_beginAccess();
    v54 = v68;
    if ((v53[8] & 1) != 0 || (v55 = *v53, result = sub_1E5AA2EC4(v55, v47, v68, v50), (result & 1) == 0))
    {
      v55 = v5;
      sub_1E5AA0588(0);
      if (!sub_1E5AA2EC4(0, v47, v54, v50))
      {
LABEL_24:
        *&v5[v70] = v47;

        v59 = qword_1ED027050;
        swift_beginAccess();
        *&v5[v59] = v44;
      }

      if ((v44 & 0xC000000000000001) != 0)
      {
        v60 = 0;
LABEL_29:
        v57 = MEMORY[0x1E69347A0](v60, v44);
        goto LABEL_22;
      }

      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v56 = *(v44 + 32);
        goto LABEL_21;
      }

      __break(1u);
    }

    else if ((v44 & 0xC000000000000001) == 0)
    {
      if ((v55 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v55 < *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v56 = *(v44 + 8 * v55 + 32);
LABEL_21:
        v57 = v56;
LABEL_22:
        v58 = v57;
        sub_1E5AA18A4(v58, 0);

        goto LABEL_24;
      }

      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

    v60 = v55;
    goto LABEL_29;
  }

  return result;
}

void sub_1E5A9FDA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v7 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    a6(v7);
  }
}

void *sub_1E5A9FE18(uint64_t a1)
{
  if (qword_1EE2FCA80 != -1)
  {
    swift_once();
  }

  v3 = sub_1E5ACF038();
  __swift_project_value_buffer(v3, qword_1EE300080);
  sub_1E5ACF008();
  if ([v1 isViewLoaded])
  {
    v4 = &v1[qword_1ED027038];
    swift_beginAccess();
    return sub_1E5AA0664(a1, (v4[8] & 1) == 0, 0, 0);
  }

  else
  {

    return sub_1E5AA0588(a1);
  }
}

void sub_1E5A9FF48(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1E5A9FFA4(v3);
  }
}

uint64_t sub_1E5A9FFA4(uint64_t result)
{
  if (result)
  {
    result = [v1 isViewLoaded];
    if (result)
    {
      v2 = v1;
      v3 = SidebarTabController.selectedViewController.getter();
      if (v3)
      {
        v4 = v3;
        objc_opt_self();
        v5 = swift_dynamicCastObjCClass();
        if (v5)
        {
          v6 = v5;
          v7 = [v5 viewControllers];
          sub_1E5A7C10C(0, &unk_1EE2FC9D0, 0x1E69DD258);
          v8 = sub_1E5ACFC78();

          v9 = v8 >> 62 ? sub_1E5AD0178() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (v9 != 1)
          {

            if (qword_1EE2FCA80 != -1)
            {
              swift_once();
            }

            v10 = sub_1E5ACF038();
            __swift_project_value_buffer(v10, qword_1EE300080);
            sub_1E5ACF008();
            v11 = [v6 topViewController];
            if (v11)
            {
              v12 = v11;
              v13 = [v11 contentScrollViewForEdge_];
              if (v13)
              {
                v14 = v13;
                [v13 _scrollToTopIfPossible_];

                v4 = v14;
              }
            }
          }
        }
      }

      return sub_1E5AA0A94(v2);
    }
  }

  return result;
}

Swift::Void __swiftcall SidebarTabController.viewDidLoad()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  if (qword_1EE2FCA80 != -1)
  {
    swift_once();
  }

  v1 = sub_1E5ACF038();
  __swift_project_value_buffer(v1, qword_1EE300080);
  sub_1E5ACF008();
  sub_1E5ACF988();
}

void sub_1E5AA02BC(void *a1)
{
  v1 = a1;
  SidebarTabController.viewDidLoad()();
}

Swift::Void __swiftcall SidebarTabController.viewWillAppear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for TabBarAction(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50), *((*MEMORY[0x1E69E7D40] & *v1) + 0x58), v4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v9 - v7;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1);
  sub_1E5ACF9A8();
  swift_storeEnumTagMultiPayload();
  sub_1E5ACFA58();

  (*(v6 + 8))(v8, v5);
}

void sub_1E5AA0458(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  SidebarTabController.viewWillAppear(_:)(a3);
}

void __swiftcall SidebarTabController.contentScrollView(for:)(UIScrollView_optional *__return_ptr retstr, NSDirectionalRectEdge a2)
{
  ObjectType = swift_getObjectType();
  v5 = SidebarTabController.selectedViewController.getter();
  if (v5)
  {
    v6 = v5;
    [v5 contentScrollViewForEdge_];
  }

  else
  {
    v8.receiver = v2;
    v8.super_class = ObjectType;
    v7 = [(UIScrollView_optional *)&v8 contentScrollViewForEdge:a2];
  }
}

id sub_1E5AA053C(void *a1, uint64_t a2, NSDirectionalRectEdge a3)
{
  v4 = a1;
  SidebarTabController.contentScrollView(for:)(v5, a3);
  v7 = v6;

  return v7;
}

uint64_t sub_1E5AA0588(uint64_t a1)
{
  if (qword_1EE2FCA80 != -1)
  {
    swift_once();
  }

  v3 = sub_1E5ACF038();
  __swift_project_value_buffer(v3, qword_1EE300080);
  sub_1E5ACF008();
  v4 = v1 + qword_1ED027038;
  result = swift_beginAccess();
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

void *sub_1E5AA0664(uint64_t a1, char a2, uint64_t (*a3)(id), uint64_t a4)
{
  v7 = *MEMORY[0x1E69E7D40] & *v4;
  if (qword_1EE2FCA80 != -1)
  {
    swift_once();
  }

  v8 = sub_1E5ACF038();
  __swift_project_value_buffer(v8, qword_1EE300080);
  sub_1E5ACF008();
  swift_beginAccess();
  type metadata accessor for TabBarItemDescriptor(0, *(v7 + 80), *(v7 + 88), v9);

  v10 = sub_1E5ACFCD8();

  if (v10 > a1)
  {
    v11 = v4 + qword_1ED027038;
    result = swift_beginAccess();
    if ((v11[8] & 1) == 0 && *v11 == a1)
    {
      if (a3)
      {
        return a3(result);
      }

      return result;
    }

    swift_unknownObjectWeakInit();
    v18 = sub_1E5ACF018();
    v19 = sub_1E5ACFF28();
    v20 = os_log_type_enabled(v18, v19);
    if (a2)
    {
      if (v20)
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v31 = v22;
        *v21 = 136315394;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026C60, &unk_1E5AD3090);
        v23 = sub_1E5ACFFC8();
        v25 = sub_1E5AA2334(v23, v24, &v31);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2048;
        *(v21 + 14) = a1;
        v26 = "[SidebarTabController] Transitioning between item %s and %ld without custom animation";
LABEL_17:
        _os_log_impl(&dword_1E5A79000, v18, v19, v26, v21, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x1E6935190](v22, -1, -1);
        MEMORY[0x1E6935190](v21, -1, -1);
      }
    }

    else if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v21 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026C60, &unk_1E5AD3090);
      v27 = sub_1E5ACFFC8();
      v29 = sub_1E5AA2334(v27, v28, &v31);

      *(v21 + 4) = v29;
      *(v21 + 12) = 2048;
      *(v21 + 14) = a1;
      v26 = "[SidebarTabController] Non-animated transition between item %s and %ld";
      goto LABEL_17;
    }

    sub_1E5AA2058(v32, a1, a3);
    return MEMORY[0x1E6935220](v32);
  }

  v13 = v4;
  v14 = sub_1E5ACF018();
  v15 = sub_1E5ACFF08();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    *(v16 + 4) = a1;
    *(v16 + 12) = 2048;

    v17 = sub_1E5ACFCD8();

    *(v16 + 14) = v17;

    _os_log_impl(&dword_1E5A79000, v14, v15, "[SidebarTabController] Failed to select item at index out of bounds: %ld. Descriptor count: %ld", v16, 0x16u);
    MEMORY[0x1E6935190](v16, -1, -1);
  }

  else
  {

    v14 = v13;
  }

  return sub_1E5AA0588(a1);
}

uint64_t sub_1E5AA0A94(uint64_t *a1)
{
  v1 = *a1;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = sub_1E5ACFA88();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E5ACFAA8();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5A7C10C(0, &qword_1ED026C40, 0x1E69E9610);
  v10 = sub_1E5ACFF58();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = *((v2 & v1) + 0x50);
  v12[3] = *((v2 & v1) + 0x58);
  v12[4] = v11;
  aBlock[4] = sub_1E5AA3278;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5AC4684;
  aBlock[3] = &block_descriptor_1;
  v13 = _Block_copy(aBlock);

  sub_1E5ACFA98();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E5A94974();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026C50, &unk_1E5AD3460);
  sub_1E5A8C710();
  sub_1E5AD0008();
  MEMORY[0x1E6934630](0, v9, v6, v13);
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v16);
}

uint64_t sub_1E5AA0D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v8 = type metadata accessor for TabBarItemDescriptor(0, a2, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - v10;
  v12 = sub_1E5AD01D8();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  (*(v15 + 16))(v21 - v13, a1, v12);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED026C60, &unk_1E5AD3090);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v17 = *(TupleTypeMetadata3 + 48);
  if (a1 == 1)
  {
    (*(v9 + 56))(a5, 1, 1, v8);
    return (*(v9 + 8))(&v14[v17], v8);
  }

  else
  {
    v21[1] = v5;
    v19 = v14[*(TupleTypeMetadata3 + 64) + 8];
    v20 = *(v9 + 32);
    v20(v11, &v14[v17], v8);
    if (v19 == 1)
    {
      v20(a5, v11, v8);
      return (*(v9 + 56))(a5, 0, 1, v8);
    }

    else
    {
      (*(v9 + 8))(v11, v8);
      return (*(v9 + 56))(a5, 1, 1, v8);
    }
  }
}

BOOL sub_1E5AA100C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TabBarItemDescriptor(255, a3, a4, a4);
  sub_1E5AD0328();
  v6 = *(v5 - 8);
  swift_allocObject();
  sub_1E5ACFC88();
  (*(v6 + 16))(v7, a1, v5);
  sub_1E5ACFD08();
  swift_getWitnessTable();
  sub_1E5ACFE38();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  LOBYTE(v5) = sub_1E5ACFE78();

  return (v5 & 1) == 0;
}

void *sub_1E5AA11D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = type metadata accessor for TabBarItemDescriptor(0, *((*MEMORY[0x1E69E7D40] & *a3) + 0x50), *((*MEMORY[0x1E69E7D40] & *a3) + 0x58), a4);
  MEMORY[0x1EEE9AC00](v5);
  swift_beginAccess();
  sub_1E5ACFD08();
  swift_getWitnessTable();
  swift_getWitnessTable();
  result = sub_1E5ACFED8();
  if ((v11 & 1) == 0)
  {
    swift_beginAccess();
    sub_1E5ACFD38();
    swift_endAccess();
    v7 = qword_1ED027050;
    result = swift_beginAccess();
    v8 = *(a3 + v7);
    if ((v8 & 0xC000000000000001) == 0)
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v10 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v9 = *(v8 + 8 * v10 + 32);
LABEL_6:
        swift_endAccess();
        sub_1E5A7C10C(255, &unk_1EE2FC9D0, 0x1E69DD258);
        swift_getWitnessTable();
        sub_1E5ACFB08();
        return sub_1E5ACFB28();
      }

      __break(1u);
      return result;
    }

    MEMORY[0x1E69347A0]();
    goto LABEL_6;
  }

  return result;
}

void sub_1E5AA143C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v43 = a4;
  v46 = a2;
  v6 = *a3;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = sub_1E5ACEEE8();
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((v7 & v6) + 0x50);
  v12 = *((v7 & v6) + 0x58);
  v14 = type metadata accessor for TabBarItemDescriptor(0, v11, v12, v13);
  sub_1E5A7C10C(0, &unk_1EE2FC9D0, 0x1E69DD258);
  swift_getWitnessTable();
  v15 = a1;
  sub_1E5ACFB18();
  v16 = v44;
  if (v44)
  {
    goto LABEL_12;
  }

  v17 = v12;
  v39 = v10;
  v40 = v8;
  v46 = v11;
  v18 = *(v14 + 36);
  v41 = (*(a3 + qword_1ED027068))(v15 + v18);
  v38 = [v41 tabBarItem];
  if (!v38)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = sub_1E5ACF9A8();
  MEMORY[0x1EEE9AC00](v19);
  v20 = v46;
  *(&v37 - 2) = v46;
  *(&v37 - 1) = v12;
  v21 = v12;
  swift_getKeyPath();
  v22 = v39;
  sub_1E5ACFA48();

  v23 = *(v12 + 88);
  v37 = v18;
  v23(v22, v20, v12);
  v25 = v24;
  (*(v42 + 8))(v22, v40);
  if (v25)
  {
    v26 = sub_1E5ACFBA8();
  }

  else
  {
    v26 = 0;
  }

  v16 = v41;
  v27 = v38;
  [v38 setTitle_];

  v28 = v46;
  if (((*(v17 + 48))(v46, v17) & 1) == 0 || ((*(v21 + 80))(v28, v21), !v29))
  {
LABEL_10:
    v34 = [v16 tabBarItem];
    if (v34)
    {
      v35 = v34;
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_1E5AD00A8();
      MEMORY[0x1E69342D0](0xD000000000000013, 0x80000001E5ADFFC0);
      sub_1E5AD0338();
      v36 = sub_1E5ACFBA8();

      [v35 setAccessibilityIdentifier_];

LABEL_12:
      *v43 = v16;
      return;
    }

    goto LABEL_14;
  }

  v30 = [v16 tabBarItem];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1E5ACFBA8();

    v33 = [objc_opt_self() systemImageNamed_];

    [v31 setImage_];
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
}

id sub_1E5AA18A4(void *a1, uint64_t (*a2)(id))
{
  v3 = v2;
  if (qword_1EE2FCA80 != -1)
  {
    swift_once();
  }

  v6 = sub_1E5ACF038();
  __swift_project_value_buffer(v6, qword_1EE300080);
  sub_1E5ACF008();
  [v2 addChildViewController_];
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = result;
  result = [a1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  [v8 addSubview_];

  result = [a1 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026B50, &qword_1E5AD3470);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E5AD2EC0;
  result = [a1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = result;
  v13 = [result topAnchor];

  result = [v3 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = result;
  v15 = [result topAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v11 + 32) = v16;
  result = [a1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = result;
  v18 = [result bottomAnchor];

  result = [v3 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v19 = result;
  v20 = [result bottomAnchor];

  v21 = [v18 constraintEqualToAnchor_];
  *(v11 + 40) = v21;
  result = [a1 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v22 = result;
  v23 = [result leadingAnchor];

  result = [v3 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v24 = result;
  v25 = [result leadingAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  *(v11 + 48) = v26;
  result = [a1 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = result;
  v28 = [result trailingAnchor];

  result = [v3 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v29 = result;
  v30 = objc_opt_self();
  v31 = [v29 trailingAnchor];

  v32 = [v28 constraintEqualToAnchor_];
  *(v11 + 56) = v32;
  sub_1E5A7C10C(0, &qword_1EE2FC9C0, 0x1E696ACD8);
  v33 = sub_1E5ACFC68();

  [v30 activateConstraints_];

  [v3 setAdditionalSafeAreaInsets_];
  [a1 didMoveToParentViewController_];
  result = [a1 setNeedsFocusUpdate];
  if (a2)
  {
    return a2(result);
  }

  return result;
}

void sub_1E5AA1D84(uint64_t (*a1)(id), uint64_t a2)
{
  v3 = SidebarTabController.selectedViewController.getter();
  if (v3)
  {
    v4 = v3;
    sub_1E5AA2DAC(v3, a1);
  }

  else if (a1)
  {
    (a1)();
  }
}

void sub_1E5AA1E08(uint64_t (*a1)(id))
{
  v2 = SidebarTabController.selectedViewController.getter();
  if (v2)
  {
    v3 = v2;
    sub_1E5AA18A4(v2, a1);
  }

  else if (a1)
  {
    (a1)();
  }
}

id SidebarTabController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E5ACFBA8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_1E5AA1F40(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1E5AA3194();
}

id SidebarTabController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E5AA1FE8(uint64_t a1)
{
}

void sub_1E5AA2058(uint64_t a1, uint64_t a2, uint64_t (*a3)(id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E5AA1D84(0, 0);
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    sub_1E5AA0588(a2);
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    sub_1E5AA1E08(a3);
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 view];

    if (v13)
    {
      [v13 layoutIfNeeded];
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_1E5AA218C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for TabBarAction(0, a2, a3, a4);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;

    sub_1E5ACF9A8();

    swift_storeEnumTagMultiPayload();
    sub_1E5ACFA58();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

unint64_t sub_1E5AA2334(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E5AA2400(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1E5A9E0C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1E5AA2400(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1E5AA250C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1E5AD0108();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1E5AA250C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E5AA2558(a1, a2);
  sub_1E5AA2688(&unk_1F5F68228);
  return v3;
}

void *sub_1E5AA2558(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E5AA2774(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1E5AD0108();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1E5ACFC18();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E5AA2774(v10, 0);
        result = sub_1E5AD0098();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E5AA2688(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1E5AA27E8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1E5AA2774(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED0270F8, &unk_1E5AD43E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E5AA27E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED0270F8, &unk_1E5AD43E8);
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

unint64_t sub_1E5AA28DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5ACFB38();

  return sub_1E5AA2938(a1, v6, a2, a3);
}

unint64_t sub_1E5AA2938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_1E5ACFB78();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1E5AA2AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1E5ACFCD8())
  {
    sub_1E5AD01B8();
    v13 = sub_1E5AD01A8();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1E5ACFCD8();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1E5ACFCB8())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1E5AD00C8();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1E5AA28DC(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

id sub_1E5AA2DAC(void *a1, uint64_t (*a2)(id))
{
  if (qword_1EE2FCA80 != -1)
  {
    swift_once();
  }

  v4 = sub_1E5ACF038();
  __swift_project_value_buffer(v4, qword_1EE300080);
  sub_1E5ACF008();
  [a1 willMoveToParentViewController_];
  result = [a1 view];
  if (result)
  {
    v6 = result;
    [result removeFromSuperview];

    result = [a1 removeFromParentViewController];
    if (a2)
    {
      return a2(result);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1E5AA2EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TabBarItemDescriptor(0, a3, a4, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - v10;
  v19 = a2;
  sub_1E5ACFD08();
  swift_getWitnessTable();
  sub_1E5ACFE58();
  v17 = v18;
  v16[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED026CA0, &unk_1E5AD3230);
  if ((sub_1E5ACFEF8() & 1) != 0 && (sub_1E5ACFD38(), v12 = *v11, (*(v9 + 8))(v11, v8), (v12 & 1) == 0))
  {
    sub_1E5ACFD38();
    v14 = *(v8 + 36);
    v13 = TabBarItemProtocol.isSelectable.getter(a3, a4);
    (*(*(a3 - 8) + 8))(&v11[v14], a3);
  }

  else
  {
    return 0;
  }

  return v13;
}

void sub_1E5AA30B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = v4 + qword_1ED027038;
  *v7 = 0;
  v7[8] = 1;
  v8 = qword_1ED027040;
  type metadata accessor for TabBarItemDescriptor(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58), a4);
  *(v4 + v8) = sub_1E5ACFCA8();
  *(v4 + qword_1ED027050) = MEMORY[0x1E69E7CC0];
  sub_1E5AD0168();
  __break(1u);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E5AA3318(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001E5AE07D0 == a2 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74497463656C6573 && a2 == 0xEA00000000006D65 || (sub_1E5AD0348() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E497463656C6573 && a2 == 0xEB00000000786564 || (sub_1E5AD0348() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001E5AE07F0 == a2 || (sub_1E5AD0348() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    return 4;
  }

  else
  {
    v5 = sub_1E5AD0348();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1E5AA34E8(unsigned __int8 a1)
{
  v1 = 0x74497463656C6573;
  v2 = 0x6E497463656C6573;
  v3 = 0xD000000000000024;
  if (a1 != 3)
  {
    v3 = 0x6570704177656976;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (!a1)
  {
    v1 = 0xD000000000000013;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E5AA35A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5AD0348();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5AA3620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5AA3318(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5AA3650(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AA36A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5AA36F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5A80E1C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E5AA3728(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AA377C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5AA37E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AA383C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5AA3890(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AA38E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5AA3938(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AA398C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5AA39E0@<X0>(uint64_t a2@<X2>, uint64_t (*a3)(void, void)@<X4>, _BYTE *a4@<X8>)
{
  v5 = a3(*(a2 + 16), *(a2 + 24));

  *a4 = v5 & 1;
  return result;
}

uint64_t sub_1E5AA3A2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AA3A80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t TabBarAction.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = a2;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v8 = type metadata accessor for TabBarAction.ViewAppearedCodingKeys(255, v6, v5, a4);
  WitnessTable = swift_getWitnessTable();
  v68 = v8;
  v9 = sub_1E5AD0318();
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v51 - v10;
  v12 = type metadata accessor for TabBarAction.ScrolledToSelectedIndexContentOffsetCodingKeys(255, v6, v5, v11);
  v13 = swift_getWitnessTable();
  v63 = v12;
  v61 = v13;
  v62 = sub_1E5AD0318();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v51 - v14;
  v16 = type metadata accessor for TabBarAction.SelectIndexCodingKeys(255, v6, v5, v15);
  v17 = swift_getWitnessTable();
  v56 = v16;
  v54 = v17;
  v58 = sub_1E5AD0318();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v51 - v18;
  v20 = type metadata accessor for TabBarAction.SelectItemCodingKeys(255, v6, v5, v19);
  v75 = swift_getWitnessTable();
  v76 = v20;
  v52 = sub_1E5AD0318();
  v53 = *(v52 - 8);
  v21 = MEMORY[0x1EEE9AC00](v52);
  v74 = &v51 - v22;
  v72 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v77 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TabBarAction.HandleActionAtIndexCodingKeys(255, v6, v5, v24);
  v71 = swift_getWitnessTable();
  v70 = sub_1E5AD0318();
  v51 = *(v70 - 8);
  v25 = MEMORY[0x1EEE9AC00](v70);
  v69 = &v51 - v26;
  v27 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v5;
  type metadata accessor for TabBarAction.CodingKeys(255, v6, v5, v30);
  swift_getWitnessTable();
  v31 = sub_1E5AD0318();
  v81 = *(v31 - 8);
  v82 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v51 - v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v80 = v33;
  sub_1E5AD03E8();
  (*(v27 + 16))(v29, v79, v78);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v38 = v70;
    v39 = v74;
    v40 = v72;
    if (EnumCaseMultiPayload)
    {
      v48 = v6;
      (*(v72 + 32))(v77, v29, v6);
      v84 = 1;
      v49 = v39;
      v42 = v82;
      v43 = v80;
      sub_1E5AD02B8();
      v50 = v52;
      sub_1E5AD0308();
      (*(v53 + 8))(v49, v50);
      (*(v40 + 8))(v77, v48);
    }

    else
    {
      v83 = 0;
      v41 = v69;
      v42 = v82;
      v43 = v80;
      sub_1E5AD02B8();
      sub_1E5AD02F8();
      (*(v51 + 8))(v41, v38);
    }

    return (*(v81 + 8))(v43, v42);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v85 = 2;
    v44 = v55;
    v42 = v82;
    v43 = v80;
    sub_1E5AD02B8();
    v45 = v58;
    sub_1E5AD02F8();
    (*(v57 + 8))(v44, v45);
    return (*(v81 + 8))(v43, v42);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v86 = 3;
    v35 = v59;
    v36 = v82;
    v37 = v80;
    sub_1E5AD02B8();
    (*(v60 + 8))(v35, v62);
  }

  else
  {
    v87 = 4;
    v46 = v64;
    v36 = v82;
    v37 = v80;
    sub_1E5AD02B8();
    (*(v65 + 8))(v46, v66);
  }

  return (*(v81 + 8))(v37, v36);
}

uint64_t TabBarAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v106 = a5;
  v8 = type metadata accessor for TabBarAction.ViewAppearedCodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v104 = v8;
  v88 = sub_1E5AD02A8();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v102 = &v75 - v9;
  v11 = type metadata accessor for TabBarAction.ScrolledToSelectedIndexContentOffsetCodingKeys(255, a2, a3, v10);
  v100 = swift_getWitnessTable();
  v101 = v11;
  v86 = sub_1E5AD02A8();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v99 = &v75 - v12;
  v14 = type metadata accessor for TabBarAction.SelectIndexCodingKeys(255, a2, a3, v13);
  v15 = swift_getWitnessTable();
  v97 = v14;
  v96 = v15;
  v84 = sub_1E5AD02A8();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v98 = &v75 - v16;
  v18 = type metadata accessor for TabBarAction.SelectItemCodingKeys(255, a2, a3, v17);
  v19 = swift_getWitnessTable();
  v94 = v18;
  v93 = v19;
  v82 = sub_1E5AD02A8();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v95 = &v75 - v20;
  v22 = type metadata accessor for TabBarAction.HandleActionAtIndexCodingKeys(255, a2, a3, v21);
  v23 = swift_getWitnessTable();
  v91 = v22;
  v90 = v23;
  v80 = sub_1E5AD02A8();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v92 = &v75 - v24;
  type metadata accessor for TabBarAction.CodingKeys(255, a2, a3, v25);
  swift_getWitnessTable();
  v26 = sub_1E5AD02A8();
  v108 = *(v26 - 8);
  v109 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v75 - v27;
  v110 = a2;
  v89 = a3;
  v107 = type metadata accessor for TabBarAction(0, a2, a3, v29);
  v105 = *(v107 - 8);
  v30 = MEMORY[0x1EEE9AC00](v107);
  v32 = (&v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v75 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v75 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v75 - v39;
  v41 = a1[3];
  v111 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v41);
  v42 = v116;
  sub_1E5AD03D8();
  if (v42)
  {
    goto LABEL_15;
  }

  v76 = v38;
  v78 = v35;
  v77 = v32;
  v116 = v40;
  v43 = v109;
  v44 = v28;
  *&v112 = sub_1E5AD0298();
  sub_1E5ACFD08();
  swift_getWitnessTable();
  *&v114 = sub_1E5ACFFF8();
  *(&v114 + 1) = v45;
  *&v115 = v46;
  *(&v115 + 1) = v47;
  sub_1E5ACFFE8();
  swift_getWitnessTable();
  sub_1E5ACFEA8();
  v48 = v112;
  v49 = v43;
  if (v112 == 5 || (v75 = v114, v112 = v114, v113 = v115, (sub_1E5ACFEC8() & 1) == 0))
  {
    v52 = sub_1E5AD00F8();
    swift_allocError();
    v54 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266E8, &qword_1E5AD1910);
    *v54 = v107;
    sub_1E5AD0238();
    sub_1E5AD00E8();
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x1E69E6AF8], v52);
    swift_willThrow();
    (*(v108 + 8))(v44, v43);
    swift_unknownObjectRelease();
LABEL_15:
    v65 = v111;
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  if (v48 <= 1)
  {
    if (v48)
    {
      LOBYTE(v112) = 1;
      v62 = v95;
      sub_1E5AD0228();
      v63 = v78;
      v64 = v82;
      sub_1E5AD0288();
      (*(v81 + 8))(v62, v64);
      (*(v108 + 8))(v44, v43);
      swift_unknownObjectRelease();
      v72 = v107;
      swift_storeEnumTagMultiPayload();
      v73 = v105;
      v74 = v116;
      (*(v105 + 32))(v116, v63, v72);
    }

    else
    {
      LOBYTE(v112) = 0;
      v55 = v92;
      sub_1E5AD0228();
      v56 = v80;
      v57 = sub_1E5AD0278();
      v58 = v108;
      v70 = v57;
      (*(v79 + 8))(v55, v56);
      (*(v58 + 8))(v44, v43);
      swift_unknownObjectRelease();
      v71 = v76;
      *v76 = v70;
      v72 = v107;
      swift_storeEnumTagMultiPayload();
      v73 = v105;
      v74 = v116;
      (*(v105 + 32))(v116, v71, v72);
    }

    v69 = v111;
    v51 = v106;
  }

  else if (v48 == 2)
  {
    LOBYTE(v112) = 2;
    v59 = v98;
    sub_1E5AD0228();
    v51 = v106;
    v60 = v84;
    v67 = sub_1E5AD0278();
    (*(v83 + 8))(v59, v60);
    (*(v108 + 8))(v44, v49);
    swift_unknownObjectRelease();
    v68 = v77;
    *v77 = v67;
    v72 = v107;
    swift_storeEnumTagMultiPayload();
    v73 = v105;
    v74 = v116;
    (*(v105 + 32))(v116, v68, v72);
    v69 = v111;
  }

  else
  {
    if (v48 == 3)
    {
      LOBYTE(v112) = 3;
      v50 = v99;
      sub_1E5AD0228();
      v51 = v106;
      (*(v85 + 8))(v50, v86);
    }

    else
    {
      LOBYTE(v112) = 4;
      v61 = v102;
      sub_1E5AD0228();
      v51 = v106;
      (*(v87 + 8))(v61, v88);
    }

    (*(v108 + 8))(v44, v43);
    swift_unknownObjectRelease();
    v74 = v116;
    v72 = v107;
    swift_storeEnumTagMultiPayload();
    v69 = v111;
    v73 = v105;
  }

  (*(v73 + 32))(v51, v74, v72);
  v65 = v69;
  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t static TabBarAction.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a1;
  v43 = a2;
  v40 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v5;
  v7 = type metadata accessor for TabBarAction(0, v6, v5, v5);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v39 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v36 - v14);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  v18 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &v36 - v19;
  v21 = *(v18 + 48);
  v41 = v8;
  v22 = *(v8 + 16);
  v22(&v36 - v19, v42, v7);
  v22(&v20[v21], v43, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v24 = v13;
    v25 = a3;
    v26 = v40;
    if (EnumCaseMultiPayload)
    {
      v30 = v24;
      v22(v24, v20, v7);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = v26;
        v32 = v37;
        (*(v26 + 32))(v37, &v20[v21], v25);
        v29 = sub_1E5ACFB78();
        v33 = v30;
        v34 = *(v31 + 8);
        v34(v32, v25);
        v34(v33, v25);
        v17 = v41;
        goto LABEL_18;
      }

      (*(v26 + 8))(v30, v25);
      goto LABEL_17;
    }

    v22(v15, v20, v7);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_17;
    }

    v27 = *v15;
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_17;
        }

        goto LABEL_13;
      }

      if (swift_getEnumCaseMultiPayload() == 4)
      {
LABEL_13:
        v29 = 1;
        v17 = v41;
        goto LABEL_18;
      }

LABEL_17:
      v29 = 0;
      v7 = TupleTypeMetadata2;
      goto LABEL_18;
    }

    v28 = v39;
    v22(v39, v20, v7);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_17;
    }

    v27 = *v28;
  }

  v29 = v27 == *&v20[v21];
  v17 = v41;
LABEL_18:
  (*(v17 + 8))(v20, v7);
  return v29 & 1;
}

uint64_t TabBarAction.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9, v11, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v4 + 32))(v7, v9, v3);
      MEMORY[0x1E6934A50](1);
      sub_1E5ACFB48();
      return (*(v4 + 8))(v7, v3);
    }

    v14 = *v9;
    v15 = 0;
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v13 = 3;
      }

      else
      {
        v13 = 4;
      }

      return MEMORY[0x1E6934A50](v13);
    }

    v14 = *v9;
    v15 = 2;
  }

  MEMORY[0x1E6934A50](v15);
  v13 = v14;
  return MEMORY[0x1E6934A50](v13);
}

uint64_t TabBarAction.hashValue.getter(uint64_t a1)
{
  sub_1E5AD0378();
  TabBarAction.hash(into:)(v3, a1);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5AA57C0(uint64_t a1, uint64_t a2)
{
  sub_1E5AD0378();
  TabBarAction.hash(into:)(v4, a2);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5AA582C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E5AA589C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  v5 = 252 - (1u >> (8 * v4));
  if (v4 >= 4)
  {
    v5 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_27;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1E5AA59DC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = 252 - (1u >> (8 * v5));
  if (v5 >= 4)
  {
    v6 = 252;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_21;
  }

LABEL_17:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_37:
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_37;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_41:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v8)
  {
    a1[v7] = v14;
  }
}

uint64_t sub_1E5AA5D78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v4 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5AE0820 == a2)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E5AD0348();

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

uint64_t sub_1E5AA5E50(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6570704177656976;
  }
}

uint64_t sub_1E5AA5EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5AA5D78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5AA5ED4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AA5F28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5AA5F7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AA5FD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5AA6024@<X0>(_BYTE *a2@<X8>)
{
  v3 = sub_1E5A80E1C();

  *a2 = v3 & 1;
  return result;
}

uint64_t sub_1E5AA606C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AA60C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SidebarModalitiesAction.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v47 = a2;
  v43 = type metadata accessor for SidebarModalitiesAction.ModalitySelectedCodingKeys(255, v5, v6, a4);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1E5AD0318();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v42 = &v34 - v10;
  v49 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SidebarModalitiesAction.ViewAppearedCodingKeys(255, v5, v6, v12);
  v14 = swift_getWitnessTable();
  v39 = v13;
  v37 = v14;
  v38 = sub_1E5AD0318();
  v36 = *(v38 - 8);
  v15 = MEMORY[0x1EEE9AC00](v38);
  v35 = &v34 - v16;
  v17 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v6;
  type metadata accessor for SidebarModalitiesAction.CodingKeys(255, v5, v6, v20);
  swift_getWitnessTable();
  v50 = sub_1E5AD0318();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v22 = &v34 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v52 = v22;
  v23 = v49;
  sub_1E5AD03E8();
  (*(v17 + 16))(v19, v51, v47);
  v24 = v5;
  if ((*(v23 + 48))(v19, 1, v5) == 1)
  {
    v53 = 0;
    v25 = v35;
    v26 = v50;
    v27 = v52;
    sub_1E5AD02B8();
    (*(v36 + 8))(v25, v38);
    return (*(v48 + 8))(v27, v26);
  }

  else
  {
    v29 = v48;
    v30 = v40;
    (*(v23 + 32))(v40, v19, v24);
    v54 = 1;
    v31 = v42;
    v32 = v50;
    sub_1E5AD02B8();
    v33 = v45;
    sub_1E5AD0308();
    (*(v44 + 8))(v31, v33);
    (*(v23 + 8))(v30, v24);
    return (*(v29 + 8))(v52, v32);
  }
}

uint64_t SidebarModalitiesAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v65 = a5;
  v8 = type metadata accessor for SidebarModalitiesAction.ModalitySelectedCodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v63 = v8;
  v57 = sub_1E5AD02A8();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v64 = &v49 - v9;
  v11 = type metadata accessor for SidebarModalitiesAction.ViewAppearedCodingKeys(255, a2, a3, v10);
  v60 = swift_getWitnessTable();
  v61 = v11;
  v55 = sub_1E5AD02A8();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v59 = &v49 - v12;
  type metadata accessor for SidebarModalitiesAction.CodingKeys(255, a2, a3, v13);
  swift_getWitnessTable();
  v68 = sub_1E5AD02A8();
  v70 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v15 = &v49 - v14;
  v66 = a2;
  v69 = a3;
  v17 = type metadata accessor for SidebarModalitiesAction(0, a2, a3, v16);
  v58 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v49 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v67 = v15;
  v23 = v75;
  sub_1E5AD03D8();
  if (!v23)
  {
    v50 = v20;
    v51 = v22;
    v24 = v66;
    v53 = v17;
    v52 = 0;
    v75 = a1;
    v26 = v67;
    v25 = v68;
    *&v71 = sub_1E5AD0298();
    sub_1E5ACFD08();
    swift_getWitnessTable();
    *&v73 = sub_1E5ACFFF8();
    *(&v73 + 1) = v27;
    *&v74 = v28;
    *(&v74 + 1) = v29;
    sub_1E5ACFFE8();
    swift_getWitnessTable();
    sub_1E5ACFEA8();
    v30 = v71;
    if (v71 == 2 || (v49 = v73, v71 = v73, v72 = v74, (sub_1E5ACFEC8() & 1) == 0))
    {
      v37 = sub_1E5AD00F8();
      swift_allocError();
      v39 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266E8, &qword_1E5AD1910);
      *v39 = v53;
      sub_1E5AD0238();
      sub_1E5AD00E8();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
      swift_willThrow();
      (*(v70 + 8))(v26, v25);
    }

    else
    {
      if (v30)
      {
        LOBYTE(v71) = 1;
        v31 = v64;
        v32 = v52;
        sub_1E5AD0228();
        v33 = v70;
        if (!v32)
        {
          v34 = v50;
          v35 = v24;
          v36 = v57;
          sub_1E5AD0288();
          (*(v56 + 8))(v31, v36);
          (*(v33 + 8))(v26, v25);
          swift_unknownObjectRelease();
          (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
          v46 = *(v58 + 32);
          v47 = v51;
          v48 = v53;
          v46(v51, v34, v53);
          v46(v65, v47, v48);
LABEL_14:
          v40 = v75;
          return __swift_destroy_boxed_opaque_existential_1(v40);
        }
      }

      else
      {
        LOBYTE(v71) = 0;
        v42 = v59;
        v43 = v52;
        sub_1E5AD0228();
        v44 = v65;
        v33 = v70;
        if (!v43)
        {
          (*(v54 + 8))(v42, v55);
          (*(v33 + 8))(v26, v25);
          swift_unknownObjectRelease();
          v45 = v51;
          (*(*(v24 - 8) + 56))(v51, 1, 1, v24);
          (*(v58 + 32))(v44, v45, v53);
          goto LABEL_14;
        }
      }

      (*(v33 + 8))(v26, v25);
    }

    swift_unknownObjectRelease();
    a1 = v75;
  }

  v40 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_1E5AA6E8C(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1E5AA6EE8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1E5AA7068(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_1E5AA7374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  type metadata accessor for SidebarModalitiesFeature(255, *(a1 + 16), *(a1 + 24), a4);
  swift_getWitnessTable();
  v8 = sub_1E5ACFA78();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDD638](v5, v6, v7, v8, WitnessTable);
}

uint64_t sub_1E5AA7420(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1E5ACFFD8();
  swift_getWitnessTable();
  v3 = sub_1E5ACF0D8();
  return a2(v3);
}

uint64_t SidebarModalitiesView.init(store:textViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for SidebarModalitiesView(0, a5, a6, a4);
  sub_1E5ACF0C8();
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a1;
  v15[5] = a2;
  type metadata accessor for SidebarModalitiesFeature(255, a5, a6, v16);
  swift_getWitnessTable();
  sub_1E5ACFA78();
  swift_getWitnessTable();
  result = sub_1E5ACF0E8();
  *a7 = result;
  *(a7 + 8) = v18;
  *(a7 + 16) = v19 & 1;
  v20 = (a7 + *(v14 + 40));
  *v20 = a3;
  v20[1] = a4;
  return result;
}

uint64_t SidebarModalitiesView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v86 = a3;
  v4 = *(a1 + 16);
  v90 = *(a1 + 24);
  v83 = type metadata accessor for SidebarModality(255, v4, v90, a2);
  v5 = sub_1E5ACFD08();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027300, &qword_1E5AD4F40);
  v6 = sub_1E5ACFFD8();
  sub_1E5A8CEF0(&qword_1ED027308, &qword_1ED027300, &qword_1E5AD4F40, MEMORY[0x1E697D680]);
  v116 = *(v90 + 24);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  v115 = v116;
  sub_1E5ACF868();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v88 = swift_getOpaqueTypeConformance2();
  v109 = v116;
  v87 = OpaqueTypeMetadata2;
  v111 = OpaqueTypeMetadata2;
  v112 = v6;
  v85 = v6;
  v113 = v88;
  WitnessTable = swift_getWitnessTable();
  v84 = WitnessTable;
  v72 = swift_getOpaqueTypeMetadata2();
  v8 = sub_1E5ACF888();
  v75 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v74 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v73 = &v69 - v12;
  v13 = *(a1 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = swift_getWitnessTable();
  swift_getWitnessTable();
  v15 = sub_1E5ACFA08();
  v70 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v69 - v16;
  v71 = v5;
  v18 = sub_1E5ACF958();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v69 - v20;
  v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027310, &qword_1E5AD4F48);
  v83 = v8;
  v81 = sub_1E5ACF318();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v69 - v22;
  v77 = a1;
  sub_1E5AA7374(a1, v23, v24, v25);
  v82 = v4;
  v91 = v4;
  v92 = v90;
  swift_getKeyPath();
  sub_1E5ACFA48();

  sub_1E5ACF948();
  (*(v19 + 8))(v21, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v27 = MEMORY[0x1E6981138];
  v28 = MEMORY[0x1E6981E60];
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v29 = MEMORY[0x1E6981138];
    v30 = *v17;
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(v70 + 8))(v17, v15);
LABEL_8:
    v53 = sub_1E5ACF6B8();
    v54 = v76;
    v55 = v77;
    (*(v13 + 16))(v76, v89, v77);
    v56 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v57 = swift_allocObject();
    v58 = v90;
    *(v57 + 16) = v82;
    *(v57 + 24) = v58;
    (*(v13 + 32))(v57 + v56, v54, v55);
    v111 = v53;
    v112 = sub_1E5AAA464;
    v113 = v57;
    v59 = sub_1E5AAA3E0();
    WitnessTable = 0;
    v115 = 0;
    v51 = v87;
    v40 = v85;
    v96 = v87;
    v97 = v85;
    v41 = v84;
    v98 = v88;
    v99 = v84;
    v60 = swift_getOpaqueTypeConformance2();
    v93 = v27;
    v94 = v60;
    v95 = v28;
    v61 = v83;
    v62 = swift_getWitnessTable();
    v63 = v79;
    sub_1E5AA82CC(&v111, v78, v61, v59, v62);
    v49 = v63;

    goto LABEL_9;
  }

  v29 = MEMORY[0x1E6981138];
  v30 = *v17;
  v31 = sub_1E5ACEEA8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  EnumCaseMultiPayload = (*(*(v31 - 8) + 8))(&v17[*(TupleTypeMetadata2 + 48)], v31);
LABEL_6:
  v33 = MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
  v34 = v90;
  *(&v69 - 4) = v35;
  *(&v69 - 3) = v34;
  v36 = v89;
  *(&v69 - 2) = v30;
  *(&v69 - 1) = v36;
  MEMORY[0x1EEE9AC00](v33);
  *(&v69 - 4) = v38;
  *(&v69 - 3) = v37;
  *(&v69 - 2) = v39;
  v40 = v85;
  v111 = v87;
  v112 = v85;
  v41 = v84;
  v113 = v88;
  WitnessTable = v84;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = v74;
  sub_1E5AAA218(sub_1E5AA8ED4, (&v69 - 6), sub_1E5AAA20C, (&v69 - 6), MEMORY[0x1E6981148], v72, v29, v42);

  v105 = v29;
  v106 = v42;
  v107 = v28;
  v44 = v83;
  v45 = swift_getWitnessTable();
  v46 = v73;
  sub_1E5A9AA54();
  v47 = *(v75 + 8);
  v47(v43, v44);
  sub_1E5A9AA54();
  v48 = sub_1E5AAA3E0();
  v49 = v79;
  sub_1E5AAA2E8(v43, v78, v44, v48, v45);
  v50 = v43;
  v27 = v29;
  v51 = v87;
  v47(v50, v44);
  v52 = v46;
  v28 = MEMORY[0x1E6981E60];
  v47(v52, v44);
LABEL_9:
  v64 = sub_1E5AAA3E0();
  v111 = v51;
  v112 = v40;
  v113 = v88;
  WitnessTable = v41;
  v65 = swift_getOpaqueTypeConformance2();
  v102 = v27;
  v103 = v65;
  v104 = v28;
  v66 = swift_getWitnessTable();
  v100 = v64;
  v101 = v66;
  v67 = v81;
  swift_getWitnessTable();
  sub_1E5A9AA54();
  return (*(v80 + 8))(v49, v67);
}

uint64_t sub_1E5AA81A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SidebarModalitiesAction(0, a2, a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  v11 = type metadata accessor for SidebarModalitiesView(0, a2, a3, v10);
  sub_1E5AA7374(v11, v12, v13, v14);
  (*(*(a2 - 8) + 56))(v9, 1, 1, a2);
  sub_1E5ACFA58();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1E5AA82CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E5ACF2F8();
  MEMORY[0x1EEE9AC00](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1E5ACF308();
}

uint64_t sub_1E5AA83C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v105 = a2;
  v90 = a1;
  v102 = a5;
  v7 = sub_1E5ACFFD8();
  v8 = sub_1E5ACF838();
  v100 = *(v8 - 8);
  v101 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v99 = &KeyPath - v9;
  v98 = sub_1E5ACF4C8();
  v97 = *(v98 - 8);
  v10 = MEMORY[0x1EEE9AC00](v98);
  v95 = &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v92 = &KeyPath - v12;
  v119 = *(a4 + 24);
  v13 = v119;
  WitnessTable = swift_getWitnessTable();
  v94 = sub_1E5ACF0A8();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v91 = &KeyPath - v15;
  v104 = type metadata accessor for SidebarModalitiesView(0, a3, a4, v16);
  v86 = *(v104 - 8);
  v88 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v85 = &KeyPath - v17;
  type metadata accessor for SidebarModality(255, a3, a4, v18);
  v19 = sub_1E5ACFD08();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027300, &qword_1E5AD4F40);
  v21 = sub_1E5A8CEF0(&qword_1ED027308, &qword_1ED027300, &qword_1E5AD4F40, MEMORY[0x1E697D680]);
  v114 = v20;
  v115 = v7;
  v116 = v21;
  v117 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v114 = v20;
  v115 = v7;
  v116 = v21;
  v117 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v114 = OpaqueTypeMetadata2;
  v115 = a3;
  v116 = OpaqueTypeConformance2;
  v117 = v13;
  v24 = swift_getOpaqueTypeMetadata2();
  v76 = v24;
  v78 = v19;
  v75 = swift_getWitnessTable();
  v114 = v19;
  v115 = a3;
  v116 = v24;
  v117 = v75;
  v118 = v13;
  v25 = sub_1E5ACF868();
  v89 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v73 = &KeyPath - v26;
  v114 = OpaqueTypeMetadata2;
  v115 = a3;
  v116 = OpaqueTypeConformance2;
  v117 = v13;
  v67 = v13;
  v69 = swift_getOpaqueTypeConformance2();
  v113 = v69;
  v27 = swift_getWitnessTable();
  v114 = v25;
  v115 = v7;
  v71 = v25;
  v68 = v7;
  v116 = v27;
  v117 = WitnessTable;
  v28 = v27;
  v72 = v27;
  v70 = WitnessTable;
  v29 = swift_getOpaqueTypeMetadata2();
  v81 = v29;
  v87 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v103 = &KeyPath - v30;
  v114 = v25;
  v115 = v7;
  v116 = v28;
  v117 = WitnessTable;
  v31 = swift_getOpaqueTypeConformance2();
  v80 = v31;
  v112 = v13;
  v79 = swift_getWitnessTable();
  v114 = v29;
  v115 = v7;
  v116 = v31;
  v117 = v79;
  v82 = MEMORY[0x1E697D1A8];
  v83 = swift_getOpaqueTypeMetadata2();
  v84 = *(v83 - 8);
  v32 = MEMORY[0x1EEE9AC00](v83);
  v74 = &KeyPath - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v77 = &KeyPath - v34;
  v114 = v90;
  v110 = a3;
  v111 = a4;
  KeyPath = swift_getKeyPath();
  v35 = v86;
  v36 = v85;
  v37 = v104;
  (*(v86 + 16))(v85, v105, v104);
  v38 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = a3;
  *(v39 + 24) = a4;
  v65 = a3;
  v66 = a4;
  (*(v35 + 32))(v39 + v38, v36, v37);

  v40 = v73;
  sub_1E5ACF848();
  v41 = v91;
  sub_1E5AA7420(v37, MEMORY[0x1E697BDE8]);
  sub_1E5AA7374(v37, v42, v43, v44);
  v108 = a3;
  v109 = a4;
  swift_getKeyPath();
  v45 = v92;
  sub_1E5ACFA48();

  v46 = v95;
  v47 = v71;
  v48 = v68;
  v49 = v72;
  v50 = v70;
  sub_1E5AB6808(v71, v68, v72, v70);
  MEMORY[0x1E6933CA0](v41, v45, v46, v47, v48, v49, v50);
  (*(v97 + 8))(v46, v98);
  (*(v96 + 8))(v45, v48);
  (*(v93 + 8))(v41, v94);
  (*(v89 + 8))(v40, v47);
  sub_1E5AA7374(v104, v51, v52, v53);
  v106 = v65;
  v107 = v66;
  swift_getKeyPath();
  v54 = v99;
  sub_1E5ACFA68();

  v55 = v74;
  v56 = v81;
  v57 = v80;
  v58 = v79;
  v59 = v103;
  sub_1E5ACF608();
  (*(v100 + 8))(v54, v101);
  (*(v87 + 8))(v59, v56);
  v114 = v56;
  v115 = v48;
  v116 = v57;
  v117 = v58;
  swift_getOpaqueTypeConformance2();
  v60 = v77;
  v61 = v83;
  sub_1E5A9AA54();
  v62 = *(v84 + 8);
  v62(v55, v61);
  sub_1E5A9AA54();
  return (v62)(v60, v61);
}

uint64_t sub_1E5AA8EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v76 = a2;
  v77 = a1;
  v84 = a5;
  v7 = sub_1E5ACFFD8();
  v83 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v55 - v8;
  v86 = *(a4 + 24);
  v95 = v86;
  v9 = v7;
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1E5ACF0A8();
  v81 = *(v11 - 8);
  v82 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v55 - v12;
  v61 = a4;
  v60 = type metadata accessor for SidebarModality(0, a3, a4, v13);
  v59 = *(v60 - 8);
  v62 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v15 = &v55 - v14;
  v56 = &v55 - v14;
  v57 = type metadata accessor for SidebarModalitiesView(0, a3, a4, v16);
  v85 = *(v57 - 8);
  v17 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v19 = &v55 - v18;
  v55 = &v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027300, &qword_1E5AD4F40);
  v78 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v69 = &v55 - v21;
  v22 = sub_1E5A8CEF0(&qword_1ED027308, &qword_1ED027300, &qword_1E5AD4F40, MEMORY[0x1E697D680]);
  v91 = v20;
  v92 = v9;
  v65 = v20;
  v64 = v9;
  v93 = v22;
  v94 = WitnessTable;
  v23 = v22;
  v66 = v22;
  v67 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v70 = OpaqueTypeMetadata2;
  v75 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v63 = &v55 - v25;
  v91 = v20;
  v92 = v9;
  v93 = v23;
  v94 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v91 = OpaqueTypeMetadata2;
  v92 = a3;
  v93 = OpaqueTypeConformance2;
  v94 = v86;
  v72 = MEMORY[0x1E697CDA0];
  v73 = swift_getOpaqueTypeMetadata2();
  v74 = *(v73 - 8);
  v26 = MEMORY[0x1EEE9AC00](v73);
  v58 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v68 = &v55 - v28;
  v29 = v85;
  v30 = v76;
  v31 = v57;
  (*(v85 + 16))(v19, v76, v57);
  v32 = v59;
  v33 = v77;
  v34 = v60;
  (*(v59 + 16))(v15, v77, v60);
  v35 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v36 = (v17 + *(v32 + 80) + v35) & ~*(v32 + 80);
  v37 = swift_allocObject();
  v38 = v61;
  *(v37 + 16) = a3;
  *(v37 + 24) = v38;
  (*(v85 + 32))(v37 + v35, v55, v31);
  (*(v32 + 32))(v37 + v36, v56, v34);
  v87 = a3;
  v88 = v38;
  v39 = a3;
  v89 = v30;
  v90 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027320, &qword_1E5AD5058);
  sub_1E5A8CEF0(&qword_1ED027328, &qword_1ED027320, &qword_1E5AD5058, MEMORY[0x1E697D658]);
  v40 = v69;
  sub_1E5ACF7C8();
  v41 = v79;
  sub_1E5AA7420(v31, MEMORY[0x1E697BDE8]);
  v42 = *(v39 - 8);
  v43 = v80;
  (*(v42 + 16))(v80, v33, v39);
  (*(v42 + 56))(v43, 0, 1, v39);
  v44 = v63;
  v45 = v65;
  v46 = v64;
  sub_1E5ACF618();
  (*(v83 + 8))(v43, v46);
  (*(v81 + 8))(v41, v82);
  (*(v78 + 8))(v40, v45);
  v47 = v58;
  v48 = v70;
  v49 = OpaqueTypeConformance2;
  v50 = v86;
  sub_1E5ACF5A8();
  (*(v75 + 8))(v44, v48);
  v91 = v48;
  v92 = v39;
  v93 = v49;
  v94 = v50;
  swift_getOpaqueTypeConformance2();
  v51 = v68;
  v52 = v73;
  sub_1E5A9AA54();
  v53 = *(v74 + 8);
  v53(v47, v52);
  sub_1E5A9AA54();
  return (v53)(v51, v52);
}

uint64_t sub_1E5AA97CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SidebarModalitiesAction(0, a3, a4, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v12 = type metadata accessor for SidebarModalitiesView(0, a3, a4, v11);
  sub_1E5AA7374(v12, v13, v14, v15);
  v16 = *(a3 - 8);
  (*(v16 + 16))(v10, a2, a3);
  (*(v16 + 56))(v10, 0, 1, a3);
  sub_1E5ACFA58();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1E5AA993C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027330, &qword_1E5AD5060);
  sub_1E5AAADAC();
  return sub_1E5ACF768();
}

uint64_t sub_1E5AA99E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + *(type metadata accessor for SidebarModalitiesView(0, a3, a4, a4) + 40));
  v11 = type metadata accessor for SidebarModality(0, a3, a4, v10);
  result = v9(a2 + *(v11 + 40));
  *a5 = result;
  *(a5 + 8) = v13;
  *(a5 + 16) = v14 & 1;
  *(a5 + 24) = v15;
  return result;
}

uint64_t sub_1E5AA9A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v62 = a2;
  v60 = a5;
  v56 = sub_1E5ACF698();
  v54 = *(v56 - 8);
  v8 = MEMORY[0x1EEE9AC00](v56);
  v57 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5ACFFD8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v48 - v14;
  v16 = *(v11 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v58 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v48 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v48 - v22;
  v53 = *(type metadata accessor for SidebarModality(0, a3, a4, v24) + 36);
  v63 = *(a1 + v53);
  sub_1E5AB3288();
  v59 = sub_1E5ACF748();
  v50 = a4;
  v26 = type metadata accessor for SidebarModalitiesView(0, a3, a4, v25);
  sub_1E5AA7420(v26, MEMORY[0x1E697BDE0]);
  v27 = v61;
  v28 = *(v61 + 16);
  v55 = a1;
  v28(v21, a1, a3);
  v29 = v27;
  (*(v27 + 56))(v21, 0, 1, a3);
  v52 = TupleTypeMetadata2;
  v30 = *(TupleTypeMetadata2 + 48);
  v31 = *(v16 + 16);
  v31(v15, v23, v11);
  v62 = v11;
  v31(&v15[v30], v21, v11);
  v32 = *(v29 + 48);
  if (v32(v15, 1, a3) == 1)
  {
    v33 = *(v16 + 8);
    v34 = v21;
    v35 = v62;
    v33(v34, v62);
    v33(v23, v35);
    if (v32(&v15[v30], 1, a3) == 1)
    {
      v33(v15, v62);
LABEL_9:
      result = sub_1E5ACF6E8();
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v31(v58, v15, v62);
  if (v32(&v15[v30], 1, a3) == 1)
  {
    v36 = *(v16 + 8);
    v37 = v62;
    v36(v21, v62);
    v36(v23, v37);
    (*(v61 + 8))(v58, a3);
LABEL_6:
    (*(v51 + 8))(v15, v52);
    goto LABEL_7;
  }

  v39 = v61;
  v40 = v49;
  (*(v61 + 32))(v49, &v15[v30], a3);
  v41 = v58;
  v42 = sub_1E5ACFB78();
  v43 = *(v39 + 8);
  v43(v40, a3);
  v44 = *(v16 + 8);
  v45 = v21;
  v46 = v62;
  v44(v45, v62);
  v44(v23, v46);
  v43(v41, a3);
  v44(v15, v46);
  if (v42)
  {
    goto LABEL_9;
  }

LABEL_7:
  (*(v54 + 104))(v57, *MEMORY[0x1E69814D8], v56);
  result = sub_1E5ACF6F8();
LABEL_10:
  v47 = v60;
  *v60 = v59;
  v47[1] = result;
  return result;
}

uint64_t sub_1E5AAA064@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1E5ACEEE8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1E5ACFB98();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1E5ACFB88();
  type metadata accessor for LocalizableBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v11 = type metadata accessor for SidebarModalitiesView(0, a1, a2, v10);
  sub_1E5AA7374(v11, v12, v13, v14);
  swift_getKeyPath();
  sub_1E5ACFA48();

  result = sub_1E5ACF538();
  *a3 = result;
  *(a3 + 8) = v16;
  *(a3 + 16) = v17 & 1;
  *(a3 + 24) = v18;
  return result;
}

uint64_t sub_1E5AAA218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  v9(v8);
  return sub_1E5ACF878();
}

uint64_t sub_1E5AAA2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E5ACF2F8();
  MEMORY[0x1EEE9AC00](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1E5ACF308();
}

unint64_t sub_1E5AAA3E0()
{
  result = qword_1ED027318;
  if (!qword_1ED027318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027310, &qword_1E5AD4F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027318);
  }

  return result;
}

uint64_t sub_1E5AAA464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for SidebarModalitiesView(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1E5AA81A4(v9, v5, v6, v7);
}

uint64_t sub_1E5AAA530(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  if (v6)
  {
    v10 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v10 = *(*(*(a3 + 16) - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 | 7;
  v12 = v10 + 7;
  v13 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v9;
  if (v8 >= a2)
  {
    goto LABEL_34;
  }

  v14 = ((v10 - ((-18 - v11) | v11) - ((-9 - v13) | v9) + 5) & 0xFFFFFFFFFFFFFFF8) + 16;
  v15 = a2 - v8;
  v16 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_34;
      }
    }
  }

  else if (!v19 || (v20 = *(a1 + v14)) == 0)
  {
LABEL_34:
    v23 = (a1 + v11 + 17) & ~v11;
    if (v7 < 0x7FFFFFFF)
    {
      v25 = *((v12 + v23 + ((v13 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      return (v25 + 1);
    }

    else
    {
      v24 = (*(v5 + 48))(v23);
      if (v24 >= 2)
      {
        return v24 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v22 = v20 - 1;
  if (v16)
  {
    v22 = 0;
    LODWORD(v16) = *a1;
  }

  return v8 + (v16 | v22) + 1;
}

void sub_1E5AAA6F0(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(v6 + 80);
  v13 = v12 | 7;
  v14 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v14;
  }

  v15 = v14 + 7;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = ((v14 - ((-18 - v13) | v13) - ((-9 - v12 - v16) | v12) + 5) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 < a3)
  {
    v18 = a3 - v11;
    if (((v14 - ((-18 - v13) | v13) - ((-9 - v12 - v16) | v12) + 5) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v5 = v20;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v11)
  {
    if (((v14 - ((-18 - v13) | v13) - ((-9 - v12 - v16) | v12) + 5) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v21 = a2 - v11;
    }

    else
    {
      v21 = 1;
    }

    if (((v14 - ((-18 - v13) | v13) - ((-9 - v12 - v16) | v12) + 5) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v22 = ~v11 + a2;
      v23 = a1;
      bzero(a1, v17);
      a1 = v23;
      *v23 = v22;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v17) = v21;
      }

      else
      {
        *(a1 + v17) = v21;
      }
    }

    else if (v5)
    {
      *(a1 + v17) = v21;
    }

    return;
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (v5 == 2)
  {
    *(a1 + v17) = 0;
    goto LABEL_41;
  }

  *(a1 + v17) = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  v24 = ~v12;
  v25 = ((a1 + v13 + 17) & ~v13);
  if (v9 < 0x7FFFFFFF)
  {
    v30 = (&v25[v15 + ((v12 + v16 + 8) & v24)] & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v30 = a2 & 0x7FFFFFFF;
      v30[1] = 0;
    }

    else
    {
      *v30 = a2 - 1;
    }

    return;
  }

  if (v10 >= a2)
  {
    if (v9 >= a2)
    {
      v32 = *(v7 + 56);
      v33 = a2 + 1;
      v34 = (a1 + v13 + 17) & ~v13;

      v32(v34, v33);
    }

    else
    {
      if (v14 <= 3)
      {
        v31 = ~(-1 << (8 * v14));
      }

      else
      {
        v31 = -1;
      }

      if (v14)
      {
        v28 = v31 & (~v9 + a2);
        if (v14 <= 3)
        {
          v29 = v14;
        }

        else
        {
          v29 = 4;
        }

        bzero(v25, v14);
        if (v29 <= 2)
        {
          if (v29 == 1)
          {
            goto LABEL_53;
          }

          goto LABEL_69;
        }

LABEL_74:
        if (v29 == 3)
        {
          *v25 = v28;
          v25[2] = BYTE2(v28);
        }

        else
        {
          *v25 = v28;
        }
      }
    }
  }

  else
  {
    v26 = ((v12 + (v15 & 0xFFFFFFF8) + 8) & v24) + v14;
    if (v26 <= 3)
    {
      v27 = ~(-1 << (8 * v26));
    }

    else
    {
      v27 = -1;
    }

    if (v26)
    {
      v28 = v27 & (~v10 + a2);
      if (v26 <= 3)
      {
        v29 = v26;
      }

      else
      {
        v29 = 4;
      }

      bzero(v25, v26);
      if (v29 <= 2)
      {
        if (v29 == 1)
        {
LABEL_53:
          *v25 = v28;
          return;
        }

LABEL_69:
        *v25 = v28;
        return;
      }

      goto LABEL_74;
    }
  }
}

uint64_t objectdestroy_2Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for SidebarModalitiesView(0, v5, *(v4 + 24), a4);
  v14 = *(*(v6 - 8) + 80);
  v7 = (v4 + ((v14 + 32) & ~v14));
  sub_1E5A9A6F8(*v7, v7[1]);
  v8 = v7 + *(v6 + 36);
  v9 = *(v5 - 8);
  v10 = *(v9 + 48);
  if (!v10(v8, 1, v5))
  {
    (*(v9 + 8))(v8, v5);
  }

  sub_1E5ACFFD8();
  swift_getWitnessTable();
  v11 = sub_1E5ACF0D8();

  v12 = *(v11 + 40);
  if (!v10(&v8[v12], 1, v5))
  {
    (*(v9 + 8))(&v8[v12], v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5AAABFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for SidebarModalitiesView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1E5AA8EE0(a1, v9, v6, v7, a3);
}

uint64_t sub_1E5AAAC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SidebarModalitiesView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v11 = *(type metadata accessor for SidebarModality(0, v5, v6, v10) - 8);
  v12 = v4 + ((v8 + v9 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_1E5AA97CC(v4 + v8, v12, v5, v6);
}

unint64_t sub_1E5AAADAC()
{
  result = qword_1ED027338;
  if (!qword_1ED027338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027330, &qword_1E5AD5060);
    sub_1E5A8CEF0(&qword_1ED027340, &qword_1ED027348, &qword_1E5AD5068, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027338);
  }

  return result;
}

uint64_t sub_1E5AAAE64()
{
  v0 = sub_1E5ACF038();
  __swift_allocate_value_buffer(v0, qword_1EE300080);
  __swift_project_value_buffer(v0, qword_1EE300080);
  return sub_1E5ACF028();
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

uint64_t TabBarFeatureEnvironment.init(itemActionHandler:resolveUpNextCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1E5AAAF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1E5AAAF98(char a1)
{
  v2 = v1;
  v4 = [v2 selectedViewController];
  if (v4)
  {
    v17 = v4;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 topViewController];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 contentScrollViewForEdge:4];
        if (v8)
        {
          v9 = v8;
          [v8 adjustedContentInset];
          [v9 setContentOffset:a1 & 1 animated:0.0, -v10];
          v11 = v17;
          v17 = v9;
        }

        else
        {
          if (qword_1EE2FCA80 != -1)
          {
            swift_once();
          }

          v12 = sub_1E5ACF038();
          __swift_project_value_buffer(v12, qword_1EE300080);
          v11 = v7;
          v13 = sub_1E5ACF018();
          v14 = sub_1E5ACFF28();

          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            v16 = swift_slowAlloc();
            *v15 = 138412290;
            *(v15 + 4) = v11;
            *v16 = v7;
            v7 = v11;
            _os_log_impl(&dword_1E5A79000, v13, v14, "[TabBarController] Cannot find scroll view in %@", v15, 0xCu);
            sub_1E5AAB514(v16);
            MEMORY[0x1E6935190](v16, -1, -1);
            MEMORY[0x1E6935190](v15, -1, -1);
            v11 = v13;
          }

          else
          {
            v7 = v13;
          }
        }
      }
    }
  }
}

void sub_1E5AAB260()
{
  v1 = v0;
  v2 = [v0 parentViewController];
  if (!v2)
  {
    v2 = v0;
  }

  v3 = [v2 navigationItem];
  v4 = [v1 selectedViewController];
  if (v4 && (v5 = v4, v6 = [v4 navigationItem], v5, v7 = objc_msgSend(v6, sel_title), v6, v7))
  {
    sub_1E5ACFBD8();

    v9 = sub_1E5ACFBA8();

    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;
  [v3 setTitle_];
}

uint64_t sub_1E5AAB514(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027350, &qword_1E5AD50F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E5AAB57C(void *a1)
{
  v3 = [a1 delegate];
  if (!v3 || (v4 = v3, swift_unknownObjectRelease(), v4 != v1))
  {
    v5 = [a1 delegate];
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  return [a1 setDelegate_];
}

void *sub_1E5AAB620(void *a1)
{
  swift_getObjectType();
  sub_1E5ACEFB8();
  if ((v3 & 1) == 0)
  {
    v4 = *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_pendingScrollView];
    *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_pendingScrollView] = a1;

    v5 = a1;
  }

  [a1 contentSize];
  v7 = v6;
  [a1 bounds];
  if (CGRectGetHeight(v10) >= v7)
  {
    sub_1E5AABFF0();

    return [v1 setNeedsLayout];
  }

  else
  {

    return sub_1E5AAC1A4(a1);
  }
}

uint64_t sub_1E5AAB70C(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  [v3 height];
  v8 = v7;
  [v3 heightExtension];
  v10 = v8 + v9;
  v11 = OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_initialYContentOffsets;
  swift_beginAccess();
  v12 = *&v4[v11];
  if (*(v12 + 16) && (v13 = sub_1E5AAD57C(a1), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
    swift_endAccess();
    v16 = a3 - v15;
    [v4 height];
    if (v17 <= v10 - v16)
    {
      v17 = v10 - v16;
    }

    if (v10 >= v17)
    {
      v10 = v17;
    }
  }

  else
  {
    swift_endAccess();
  }

  return *&v10;
}

uint64_t sub_1E5AAB7F8()
{
  v0 = sub_1E5ACEF78();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - v5;
  swift_getObjectType();
  result = sub_1E5ACEFC8();
  v8 = result;
  v24 = *(result + 16);
  if (v24)
  {
    v9 = 0;
    v22 = (v1 + 32);
    v23 = v1 + 16;
    v18 = (v1 + 8);
    v10 = MEMORY[0x1E69E7CC0];
    v20 = v4;
    v21 = v0;
    v19 = result;
    while (v9 < *(v8 + 16))
    {
      v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v12 = *(v1 + 72);
      (*(v1 + 16))(v6, v8 + v11 + v12 * v9, v0);
      if (sub_1E5ACEF68())
      {
        result = (*v18)(v6, v0);
      }

      else
      {
        v13 = *v22;
        (*v22)(v4, v6, v0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E5AAD974(0, *(v10 + 16) + 1, 1);
          v10 = v25;
        }

        v16 = *(v10 + 16);
        v15 = *(v10 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1E5AAD974((v15 > 1), v16 + 1, 1);
          v10 = v25;
        }

        *(v10 + 16) = v16 + 1;
        v17 = v10 + v11 + v16 * v12;
        v4 = v20;
        v0 = v21;
        result = (v13)(v17, v20, v21);
        v8 = v19;
      }

      if (v24 == ++v9)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_13:

    return v10;
  }

  return result;
}

id sub_1E5AABA94()
{
  v1 = v0;
  v43.receiver = v0;
  v43.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v43, sel_layoutSubviews);
  v2 = [v0 superview];
  if (v2)
  {
    v3 = v2;
    [v2 setClipsToBounds_];
  }

  [v1 frame];
  v5 = v4;
  [v1 directionalLayoutMargins];
  v7 = v5 - v6;
  [v1 directionalLayoutMargins];
  Width = v7 - v8;
  v10 = *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_titleLabel];
  [v1 frame];
  [v10 sizeThatFits_];
  [v1 directionalLayoutMargins];
  v14 = v13;
  [v10 frame];
  [v10 setFrame_];
  if (_UISolariumEnabled())
  {
    [v1 bounds];
    v16 = v15;
    if (!_UISolariumEnabled())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  [v1 directionalLayoutMargins];
  v16 = v17;
  if (_UISolariumEnabled())
  {
LABEL_7:
    [v1 bounds];
    Width = CGRectGetWidth(v44);
  }

LABEL_8:
  v18 = *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_floatingTabBar];
  [v18 frame];
  v20 = v19;
  [v18 frame];
  [v18 setFrame_];
  v21 = OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isBouncing;
  v22 = &off_1E8788000;
  if (v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isBouncing] == 1 && (v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_delta + 8] & 1) == 0)
  {
    [v10 _lastLineBaseline];
    [v1 bounds];
    v23 = &v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_layout];
    v24 = *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_layout + 56];
    [v10 bounds];
    CGRectGetHeight(v46);
    v25 = [v1 traitCollection];
    sub_1E5ACEEF8();

    [v10 center];
    [v10 setCenter_];
    [v10 frame];
    v26 = CGRectGetMaxY(v47) - v23[4];
    if (v26 < 0.0)
    {
      v26 = 0.0;
    }

    v27 = v26 / v24;
    if (v27 <= 0.0)
    {
      v27 = 0.0;
    }

    if (v27 > 1.0)
    {
      v27 = 1.0;
    }

    [v10 setAlpha_];
    v22 = &off_1E8788000;
    [v10 frame];
    CGRectGetMaxY(v48);
    [v18 frame];
    [v18 setFrame_];
    v1[v21] = 0;
  }

  else
  {
    sub_1E5AABFF0();
  }

  [v18 frame];
  v28 = CGRectGetHeight(v49) + *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_layout] + *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_layout + 16];
  [v10 byte_1E87884FB];
  [v1 bounds];
  v29 = [v1 v22[237]];
  sub_1E5ACEEF8();
  v31 = v30;

  [v10 frame];
  v32 = v31 + CGRectGetHeight(v50);
  [v1 height];
  v34 = v33;
  [v1 heightExtension];
  if (v34 + v35 != v28 + v32)
  {
    if (qword_1EE2FCA80 != -1)
    {
      swift_once();
    }

    v36 = sub_1E5ACF038();
    __swift_project_value_buffer(v36, qword_1EE300080);
    v37 = sub_1E5ACF018();
    v38 = sub_1E5ACFF28();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1E5A79000, v37, v38, "[FloatingTitleView] Height changed. Clearing initial offsets", v39, 2u);
      MEMORY[0x1E6935190](v39, -1, -1);
    }

    v40 = sub_1E5A7C3E8(MEMORY[0x1E69E7CC0]);
    v41 = OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_initialYContentOffsets;
    swift_beginAccess();
    *&v1[v41] = v40;
  }

  [v1 setHeight_];
  return [v1 setHeightExtension_];
}

id sub_1E5AABFF0()
{
  v1 = *&v0[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_titleLabel];
  [v0 bounds];
  [v1 sizeThatFits_];
  v4 = *&v0[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_floatingTabBar];
  [v0 frame];
  CGRectGetMaxY(v10);
  [v4 intrinsicContentSize];
  v5 = &v0[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_layout];
  [v4 frame];
  [v4 setFrame_];
  [v4 frame];
  CGRectGetMinY(v11);
  [v1 frame];
  [v1 setFrame_];
  [v1 frame];
  v6 = CGRectGetMaxY(v12) - v5[4];
  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  v7 = v6 / v5[7];
  if (v7 <= 0.0)
  {
    v7 = 0.0;
  }

  if (v7 > 1.0)
  {
    v7 = 1.0;
  }

  return [v1 setAlpha_];
}

void *sub_1E5AAC1A4(id a1)
{
  v2 = v1;
  v4 = sub_1E5ACEF78();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v79 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v79 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v16 = &v79 - v15;
  if (v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isFrozen])
  {
    return result;
  }

  v93 = v14;
  v17 = result;
  v18 = *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_floatingTabBar];
  v19 = *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_floatingTabBar + 8];
  ObjectType = swift_getObjectType();
  v20 = sub_1E5ACEFB8();
  if (v21)
  {
    sub_1E5AABFF0();
LABEL_5:

    return [v2 setNeedsLayout];
  }

  v87 = v20;
  v22 = sub_1E5AAB7F8();
  if (v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isAnimating] == 1)
  {

    if (v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationStartingPoint + 16] & 1) != 0 || (v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationOffset + 8])
    {
      return result;
    }

    [a1 contentOffset];
    v23 = &v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_layout];
    v24 = *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_titleLabel];
    [*&v2[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_titleLabel] frame];
    CGRectGetMaxY(v97);
    [v18 frame];
    [v18 setFrame_];
    [v18 frame];
    CGRectGetMinY(v98);
    [v24 frame];
    CGRectGetHeight(v99);
    [v24 frame];
    [v24 setFrame_];
    [v24 frame];
    v25 = CGRectGetMaxY(v100) - v23[4];
    if (v25 < 0.0)
    {
      v25 = 0.0;
    }

    v26 = v25 / v23[7];
    if (v26 <= 0.0)
    {
      v26 = 0.0;
    }

    if (v26 > 1.0)
    {
      v26 = 1.0;
    }

    [v24 setAlpha_];
    goto LABEL_5;
  }

  v82 = v19;
  v83 = v18;
  v81 = v9;
  v88 = v17;
  v27 = OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_pendingScrollView;
  v28 = *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_pendingScrollView];
  v29 = &off_1E8788000;
  if (v28)
  {
    v30 = v22;
    v31 = v28;
    v32 = [a1 window];
    if (v32 && (v32, v31 == a1))
    {
      v33 = *&v2[v27];
      *&v2[v27] = 0;

      [v2 height];
      v35 = v34;
      [v2 heightExtension];
      v37 = v35 + v36;
      [v2 frame];
      v38 = v37 - CGRectGetHeight(v101);
      if (v38 > 0.0)
      {
        v39 = v38;
      }

      else
      {
        v39 = 0.0;
      }

      result = [a1 adjustedContentInset];
      if ((v87 & 0x8000000000000000) != 0)
      {
        goto LABEL_58;
      }

      if (v87 >= *(v30 + 16))
      {
LABEL_59:
        __break(1u);
        return result;
      }

      v41 = a1;
      v42 = -(v40 + v39);
      v43 = v88;
      (*(v5 + 16))(v16, v30 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v87, v88);

      v44 = OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_initialYContentOffsets;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94 = *&v2[v44];
      *&v2[v44] = 0x8000000000000000;
      sub_1E5AADF34(v16, isUniquelyReferenced_nonNull_native, v42);
      (*(v5 + 8))(v16, v43);
      *&v2[v44] = v94;
      swift_endAccess();

      a1 = v41;
    }

    else
    {
    }

    v29 = &off_1E8788000;
  }

  else
  {
  }

  [v2 height];
  v47 = v46;
  [v2 v29[266]];
  v49 = v47 + v48;
  [v2 bounds];
  if (v49 > CGRectGetHeight(v102) || (v50 = [a1 window]) == 0 || (v50, objc_msgSend(a1, sel_adjustedContentInset), v52 = -v51, objc_msgSend(a1, sel_contentOffset), v53 >= v52))
  {
    sub_1E5AABFF0();
    return [v2 setNeedsLayout];
  }

  v80 = a1;
  result = sub_1E5ACEFC8();
  v54 = result;
  v91 = result[2];
  if (v91)
  {
    v55 = 0;
    v89 = (v5 + 32);
    v90 = v5 + 16;
    v84 = (v5 + 8);
    v56 = MEMORY[0x1E69E7CC0];
    v57 = v88;
    v85 = result;
    v86 = v5;
    while (v55 < *(v54 + 2))
    {
      v58 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v59 = *(v5 + 72);
      (*(v5 + 16))(v12, &v54[v58 + v59 * v55], v57);
      if (sub_1E5ACEF68())
      {
        result = (*v84)(v12, v57);
      }

      else
      {
        v60 = *v89;
        (*v89)(v93, v12, v57);
        v61 = swift_isUniquelyReferenced_nonNull_native();
        v95 = v56;
        if ((v61 & 1) == 0)
        {
          sub_1E5AAD974(0, *(v56 + 16) + 1, 1);
          v56 = v95;
        }

        v63 = *(v56 + 16);
        v62 = *(v56 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_1E5AAD974((v62 > 1), v63 + 1, 1);
          v56 = v95;
        }

        *(v56 + 16) = v63 + 1;
        v57 = v88;
        result = v60(v56 + v58 + v63 * v59, v93, v88);
        v54 = v85;
        v5 = v86;
      }

      if (v91 == ++v55)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v56 = MEMORY[0x1E69E7CC0];
  v57 = v88;
LABEL_46:

  if ((v87 & 0x8000000000000000) != 0)
  {
    goto LABEL_56;
  }

  v64 = v80;
  if (v87 >= *(v56 + 16))
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v65 = v81;
  (*(v5 + 16))(v81, v56 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v87, v57);

  v66 = sub_1E5ACEFC8();
  v67 = sub_1E5A8B168(v65, v66);
  v69 = v68;

  if (v69)
  {
    return (*(v5 + 8))(v65, v57);
  }

  v70 = &v2[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_delegate];
  if (swift_unknownObjectWeakLoadStrong() && (v71 = *(v70 + 1), v72 = swift_getObjectType(), v73 = (*(v71 + 8))(v2, v67, v72, v71), swift_unknownObjectRelease(), (v73 & 1) != 0))
  {
    [v64 contentOffset];
    v75 = v74;
    v77 = v76;
    [v64 adjustedContentInset];
    sub_1E5AACA74(v75, v77, -v78);
  }

  else
  {
    sub_1E5AABFF0();
    [v2 setNeedsLayout];
  }

  return (*(v5 + 8))(v81, v57);
}

id sub_1E5AACA74(double a1, double a2, double a3)
{
  v3[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isBouncing] = 1;
  v4 = &v3[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_delta];
  *v4 = a2 - a3;
  *(v4 + 8) = 0;
  v5 = *&v3[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_titleLabel];
  [v5 _lastLineBaseline];
  [v3 bounds];
  v6 = &v3[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_layout];
  v7 = *&v3[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_layout + 56];
  [v5 bounds];
  CGRectGetHeight(v14);
  v8 = [v3 traitCollection];
  sub_1E5ACEEF8();

  [v5 center];
  [v5 setCenter_];
  [v5 frame];
  v9 = CGRectGetMaxY(v15) - v6[4];
  if (v9 < 0.0)
  {
    v9 = 0.0;
  }

  v10 = v9 / v7;
  if (v10 <= 0.0)
  {
    v10 = 0.0;
  }

  if (v10 > 1.0)
  {
    v10 = 1.0;
  }

  [v5 setAlpha_];
  v11 = *&v3[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_floatingTabBar];
  [v5 frame];
  CGRectGetMaxY(v16);
  [v11 frame];
  [v11 setFrame_];

  return [v3 setNeedsLayout];
}

uint64_t sub_1E5AACCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(v3, a3, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E5AACD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 24))(v3, a3, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E5AACE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 32))(v3, a3, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E5AACFE4(void *a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v6 scrollViewDidEndDragging:a1 willDecelerate:a2 & 1];
    }

    swift_unknownObjectRelease();
  }

  if ((a2 & 1) == 0 && *(v2 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isAnimating) == 1 && (*(v2 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isFrozen) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isAnimating) = 0;
    v7 = v2 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationOffset;
    *v7 = 0;
    *(v7 + 8) = 1;
    v8 = v2 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationStartingPoint;
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 1;
    v9 = a1;
    sub_1E5AAC1A4(v9);
  }
}

void sub_1E5AAD3A0(void *a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v6 *a2];
    }

    swift_unknownObjectRelease();
  }

  if (*(v2 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isAnimating) == 1 && (*(v2 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isFrozen) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isAnimating) = 0;
    v7 = v2 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationOffset;
    *v7 = 0;
    *(v7 + 8) = 1;
    v8 = v2 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationStartingPoint;
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 1;
    v9 = a1;
    sub_1E5AAC1A4(v9);
  }
}

uint64_t sub_1E5AAD510(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5AAD530(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_1E5AAD57C(uint64_t a1)
{
  sub_1E5ACEF78();
  sub_1E5AAE5D8(&unk_1EE2FDC68, 255, MEMORY[0x1E699DBE8], MEMORY[0x1E699DBF0]);
  v2 = sub_1E5ACFB38();

  return sub_1E5AAD6AC(a1, v2);
}

unint64_t sub_1E5AAD61C(uint64_t a1)
{
  sub_1E5ACFBD8();
  sub_1E5AD0378();
  sub_1E5ACFBF8();
  v2 = sub_1E5AD03C8();

  return sub_1E5AAD870(a1, v2);
}

unint64_t sub_1E5AAD6AC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1E5ACEF78();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1E5AAE5D8(&qword_1EE2FDC60, 255, MEMORY[0x1E699DBE8], MEMORY[0x1E699DBF8]);
      v15 = sub_1E5ACFB78();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1E5AAD870(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1E5ACFBD8();
      v8 = v7;
      if (v6 == sub_1E5ACFBD8() && v8 == v9)
      {
        break;
      }

      v11 = sub_1E5AD0348();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}
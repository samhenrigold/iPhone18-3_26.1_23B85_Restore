uint64_t sub_2525128C8@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0AE8, &qword_2526A3C98);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  v14 = *a1 * 0.0174532925;
  if (v14 > a4 && v14 < a5)
  {
    v30 = v11;
    v18 = sub_252692330();
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0B08, &qword_2526A3CA8) + 36);
    v20 = *MEMORY[0x277CE13B8];
    v21 = sub_2526929D0();
    (*(*(v21 - 8) + 104))(&v13[v19], v20, v21);
    *v13 = v18;
    *(v13 + 4) = 256;
    *(v13 + 2) = 0x3FD3333333333333;
    sub_252692920();
    sub_2526909C0();
    v22 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0AF8, &qword_2526A3CA0) + 36)];
    v23 = v32;
    *v22 = v31;
    *(v22 + 1) = v23;
    *(v22 + 2) = v33;
    v24 = (a2 + *(_s16ProgressDotsViewVMa(0) + 20));
    v25 = *v24;
    v26 = *v24 + v24[3] * -0.5;
    v27 = __sincos_stret(v14);
    v28 = &v13[*(v10 + 36)];
    *v28 = v25 + v27.__cosval * v26;
    v28[1] = v25 + v27.__sinval * v26;
    sub_252513AC4(v13, a3);
    return (*(v30 + 56))(a3, 0, 1, v10);
  }

  else
  {
    v16 = *(v11 + 56);

    return v16(a3, 1, 1, v10);
  }
}

BOOL sub_252512B60()
{
  v1 = _s4KnobVMa(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = _s9KnobStateOMa(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252513468(v0, v9, _s9KnobStateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return 0;
    }

    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09C0, &qword_2526A3A70) + 48);
    sub_252513770(v9, v6, _s4KnobVMa);
    sub_252513770(&v9[v13], v3, _s4KnobVMa);
    v12 = *&v6[*(v1 + 20)];
    sub_252512DD0(v6);
    v11 = *&v3[*(v1 + 20)];
    v6 = v3;
  }

  else if (EnumCaseMultiPayload)
  {
    sub_252513770(v9, v6, _s4KnobVMa);
    v12 = *&v6[*(v1 + 20)];
    v11 = 1.0;
  }

  else
  {
    sub_252513770(v9, v6, _s4KnobVMa);
    v11 = *&v6[*(v1 + 20)];
    v12 = 0.0;
  }

  sub_252512DD0(v6);
  v14 = v0 + *(_s16ProgressDotsViewVMa(0) + 24);
  v15 = *(v14 + 8);
  if (v15 == 4)
  {
    return 0;
  }

  v16 = sub_252511FD8(v0, v15, *v14);
  if (v18)
  {
    return 0;
  }

  v21 = v17;
  return sub_252514724(v12, v11, *&v16) || sub_252514724(v12, v11, v21);
}

uint64_t sub_252512DD0(uint64_t a1)
{
  v2 = _s4KnobVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252512E50()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_252693460();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x2530A5020](*&v3);
  MEMORY[0x2530A4FE0](v2);
  return sub_2526934C0();
}

uint64_t sub_252512EBC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x2530A5020](*&v1);
  return MEMORY[0x2530A4FE0](v2);
}

uint64_t sub_252512F0C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_252693460();
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  MEMORY[0x2530A5020](*&v4);
  MEMORY[0x2530A4FE0](v3);
  return sub_2526934C0();
}

uint64_t sub_252512FA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0A80, &qword_2526A3A78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_252513060()
{
  if (!qword_27F4E0A98)
  {
    v0 = sub_252693130();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4E0A98);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s9KnobStateOMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24) + 8);
    }

    v12 = v11 - 4;
    if (v10 >= 4)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s9KnobStateOMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2 + 4;
  }

  return result;
}

void sub_25251325C(uint64_t a1)
{
  _s9KnobStateOMa(319);
  if (v1 <= 0x3F)
  {
    sub_252513060();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t _s13ProgressStateVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s13ProgressStateVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_252513384()
{
  result = qword_27F4E0AB0;
  if (!qword_27F4E0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0AB0);
  }

  return result;
}

unint64_t sub_252513414()
{
  result = qword_27F4E0AB8;
  if (!qword_27F4E0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0AB8);
  }

  return result;
}

uint64_t sub_252513468(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2525134D0(double a1, double a2, double a3)
{
  v6 = a1 <= a2;
  if (a3 > 0.0)
  {
    v6 = a1 >= a2;
  }

  if (!v6)
  {
    v7 = -1;
    do
    {
      v8 = ++v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      v9 = a1 + v8 * a3;
      v10 = v9 <= a2;
      if (a3 > 0.0)
      {
        v10 = v9 >= a2;
      }
    }

    while (!v10);
    if (v7 == -1)
    {
      goto LABEL_18;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE630, qword_2526A3CC0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size_0(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    v14 = v13 >> 3;
    *(v11 + 2) = v8;
    *(v11 + 3) = 2 * v14;
    v15 = v11 + 4;
    v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v8;
    v17 = -1;
    v18 = a1;
    while (1)
    {
      v19 = v18 <= a2;
      if (a3 > 0.0)
      {
        v19 = v18 >= a2;
      }

      if (v19)
      {
        goto LABEL_47;
      }

      v20 = a1 + (v17 + 2) * a3;
      *v15++ = v18;
      ++v17;
      v18 = v20;
      if (v7 == v17)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_18:
  v11 = MEMORY[0x277D84F90];
  v21 = *(MEMORY[0x277D84F90] + 24);

  v8 = 0;
  v15 = v11 + 4;
  v16 = v21 >> 1;
  v20 = a1;
LABEL_19:
  v22 = v20 <= a2;
  if (a3 > 0.0)
  {
    v22 = v20 >= a2;
  }

  if (!v22)
  {
    while (!__OFADD__(v8, 1))
    {
      if (!v16)
      {
        v23 = *(v11 + 3);
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_48;
        }

        v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE630, qword_2526A3CC0);
        v26 = swift_allocObject();
        v27 = _swift_stdlib_malloc_size_0(v26);
        v28 = v27 - 32;
        if (v27 < 32)
        {
          v28 = v27 - 25;
        }

        v29 = v28 >> 3;
        *(v26 + 2) = v25;
        *(v26 + 3) = 2 * (v28 >> 3);
        v30 = (v26 + 4);
        v31 = *(v11 + 3) >> 1;
        if (*(v11 + 2))
        {
          v32 = v11 + 4;
          if (v26 != v11 || v30 >= v32 + 8 * v31)
          {
            memmove(v26 + 4, v32, 8 * v31);
          }

          v11[2] = 0.0;
        }

        v15 = (v30 + 8 * v31);
        v16 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v11 = v26;
      }

      v33 = __OFSUB__(v16--, 1);
      if (v33)
      {
        goto LABEL_46;
      }

      *v15++ = v20;
      v20 = a1 + (v8 + 1) * a3;
      v34 = v20 <= a2;
      if (a3 > 0.0)
      {
        v34 = v20 >= a2;
      }

      ++v8;
      if (v34)
      {
        goto LABEL_40;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_40:
  v35 = *(v11 + 3);
  if (v35 >= 2)
  {
    v36 = v35 >> 1;
    v33 = __OFSUB__(v36, v16);
    v37 = v36 - v16;
    if (v33)
    {
LABEL_49:
      __break(1u);
      return;
    }

    *(v11 + 2) = v37;
  }
}

uint64_t sub_252513770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525137D8@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s16ProgressDotsViewVMa(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_2525128C8(a1, v8, a2, v6, v7);
}

unint64_t sub_25251385C()
{
  result = qword_27F4E0AE0;
  if (!qword_27F4E0AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0AE8, &qword_2526A3C98);
    sub_2525138E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0AE0);
  }

  return result;
}

unint64_t sub_2525138E8()
{
  result = qword_27F4E0AF0;
  if (!qword_27F4E0AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0AF8, &qword_2526A3CA0);
    sub_252513974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0AF0);
  }

  return result;
}

unint64_t sub_252513974()
{
  result = qword_27F4E0B00;
  if (!qword_27F4E0B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0B08, &qword_2526A3CA8);
    sub_252513A20(&qword_27F4E0B10, &qword_27F4E0B18, &qword_2526A3CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0B00);
  }

  return result;
}

uint64_t sub_252513A20(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_252400FC8(&qword_27F4E0B20, &qword_27F4E0B28, &qword_2526A3CB8, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252513AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0AE8, &qword_2526A3C98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_252513B34()
{
  result = qword_27F4E0B40;
  if (!qword_27F4E0B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0B48, &qword_2526A3CE0);
    sub_252513BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0B40);
  }

  return result;
}

unint64_t sub_252513BC0()
{
  result = qword_27F4E0B50;
  if (!qword_27F4E0B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0B58, &qword_2526A3CE8);
    sub_252513C4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0B50);
  }

  return result;
}

unint64_t sub_252513C4C()
{
  result = qword_27F4E0B60;
  if (!qword_27F4E0B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0B68, &unk_2526A3CF0);
    sub_252513A20(&qword_27F4E0B70, &qword_27F4E0B78, &unk_2526A4860);
    sub_252400FC8(&qword_27F4E0B80, &qword_27F4E0B88, &qword_2526A3D00, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0B60);
  }

  return result;
}

uint64_t sub_252513D24(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_252513DA0()
{
  result = qword_27F4E0BA0;
  if (!qword_27F4E0BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0AC0, &unk_2526A3C60);
    sub_252513D24(&qword_27F4E0AD8, &qword_27F4E0AC8, &qword_2526A3C90, sub_25251385C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0BA0);
  }

  return result;
}

void sub_252513E74(uint64_t a1)
{
  _s4KnobVMa(319);
  if (v1 <= 0x3F)
  {
    sub_252513F08(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_252513F08(uint64_t a1)
{
  if (!qword_27F4E0BB8)
  {
    _s4KnobVMa(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4E0BB8);
    }
  }
}

uint64_t sub_252513FB8(uint64_t a1)
{
  result = _s4KnobV2IDOMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_252514080(uint64_t a1)
{
  v1 = sub_25268DA10();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2525140D8()
{
  v1 = v0;
  v2 = _s4KnobVMa(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = _s9KnobStateOMa(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25251609C(v1, v11, _s9KnobStateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09C0, &qword_2526A3A70) + 48);
      sub_252516038(v11, v8);
      sub_252516038(&v11[v15], v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C18, &qword_2526A3F78);
      v16 = *(v3 + 72);
      v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_252694EA0;
      v18 = v14 + v17;
      sub_25251609C(v8, v18, _s4KnobVMa);
      sub_252516038(v5, v18 + v16);
      sub_252516CCC(v8, _s4KnobVMa);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    sub_252516038(v11, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C18, &qword_2526A3F78);
    v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_252694E90;
    sub_252516038(v8, v14 + v13);
  }

  return v14;
}

uint64_t sub_25251434C(uint64_t a1, unint64_t a2, char a3, double a4)
{
  v9 = _s4KnobVMa(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v18 = _s9KnobStateOMa(0);
  MEMORY[0x28223BE20](v18);
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v41 - v20;
  if (a3)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = *&a2;
  }

  sub_25251609C(v4, &v41 - v20, _s9KnobStateOMa);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      return result;
    }

    sub_252516CCC(v4, _s9KnobStateOMa);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09C0, &qword_2526A3A70);
    v27 = *(v26 + 48);
    sub_252516038(v21, v14);
    sub_252516038(&v21[v27], v11);
    if ((sub_252516104(v14, a1) & 1) == 0)
    {
      goto LABEL_31;
    }

    if (a4 <= 0.0)
    {
      v28 = *(v9 + 20);
      v31 = *&v11[v28];
      if (v31 <= 0.0)
      {
        if (v22 < 0.0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v31 <= 1.0)
        {
          if (v31 <= v22)
          {
            goto LABEL_31;
          }

          goto LABEL_21;
        }

        if (v22 < 1.0)
        {
          goto LABEL_21;
        }
      }

LABEL_31:
      if ((sub_252516104(v11, a1) & 1) == 0)
      {
LABEL_59:
        v40 = *(v26 + 48);
        sub_252516038(v14, v4);
        v25 = v4 + v40;
        v24 = v11;
        goto LABEL_60;
      }

      if (a4 <= 0.0)
      {
        v34 = *(v9 + 20);
        v37 = *&v14[v34];
        if (v37 <= 0.0)
        {
          if (v22 >= 0.0)
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (v37 <= 1.0)
          {
            v38 = v22 + v37;
          }

          else
          {
            v38 = v22 + 1.0;
          }

          if (v38 >= 0.0)
          {
            goto LABEL_59;
          }
        }
      }

      else
      {
        v34 = *(v9 + 20);
        v35 = *&v14[v34];
        if (a4 <= 1.0)
        {
          if (v35 <= 0.0)
          {
            if (v22 >= a4)
            {
              goto LABEL_59;
            }
          }

          else
          {
            if (v35 <= 1.0)
            {
              v39 = v22 + v35;
            }

            else
            {
              v39 = v22 + 1.0;
            }

            if (v39 >= a4)
            {
              goto LABEL_59;
            }
          }
        }

        else if (v35 <= 0.0)
        {
          if (v22 >= 1.0)
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (v35 <= 1.0)
          {
            v36 = v22 + v35;
          }

          else
          {
            v36 = v22 + 1.0;
          }

          if (v36 >= 1.0)
          {
            goto LABEL_59;
          }
        }
      }

      v33 = &v11[v34];
LABEL_58:
      *v33 = a4;
      goto LABEL_59;
    }

    v28 = *(v9 + 20);
    v29 = *&v11[v28];
    if (a4 > 1.0)
    {
      if (v29 <= 0.0)
      {
        v29 = 0.0;
      }

      else if (v29 > 1.0)
      {
        v30 = 1.0 - v22;
        goto LABEL_24;
      }

      v30 = v29 - v22;
LABEL_24:
      if (v30 <= 1.0)
      {
        goto LABEL_31;
      }

LABEL_21:
      v33 = &v14[v28];
      goto LABEL_58;
    }

    if (v29 <= 0.0)
    {
      v29 = 0.0;
    }

    else if (v29 > 1.0)
    {
      v32 = 1.0 - v22;
      goto LABEL_30;
    }

    v32 = v29 - v22;
LABEL_30:
    if (v32 > a4)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  sub_252516CCC(v4, _s9KnobStateOMa);
  sub_252516038(v21, v17);
  *&v17[*(v9 + 20)] = a4;
  v24 = v17;
  v25 = v4;
LABEL_60:
  sub_252516038(v24, v25);
  return swift_storeEnumTagMultiPayload();
}

BOOL sub_252514724(double a1, double a2, double a3)
{
  if (a1 > 0.0)
  {
    if (a1 <= 1.0)
    {
      v3 = a2;
      if (a2 <= 0.0)
      {
        goto LABEL_17;
      }

      if (a2 > 1.0)
      {
        if (a1 >= 1.0)
        {
          v3 = a2;
        }

        else
        {
          v3 = a1;
        }

LABEL_17:
        if (a1 > 1.0 || a2 <= 0.0)
        {
          v4 = a1;
          if (v3 > 0.0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (a2 <= 1.0)
          {
            v7 = a1 < a2;
          }

          else
          {
            v7 = a1 < 1.0;
          }

          if (v7)
          {
            v4 = a2;
          }

          else
          {
            v4 = a1;
          }

          if (v3 > 0.0)
          {
            goto LABEL_22;
          }
        }

LABEL_28:
        if (a3 > 0.0)
        {
          v9 = 1.0;
          if (a3 > 1.0 || a3 > 0.0)
          {
            goto LABEL_41;
          }
        }

        return 0;
      }

      v3 = a1;
      if (a1 < a2)
      {
        goto LABEL_17;
      }

LABEL_16:
      v3 = a2;
      goto LABEL_17;
    }

    if (a2 > 0.0)
    {
      v5 = a2 == 1.0;
      v6 = a2 < 1.0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    if (!v6 && !v5)
    {
      goto LABEL_16;
    }

LABEL_21:
    v4 = a1;
    v3 = a2;
    if (a2 > 0.0)
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }

  if (a2 <= 0.0)
  {
    goto LABEL_21;
  }

  if (a2 > 1.0)
  {
    v4 = a2;
    v3 = a1;
    if (a1 > 0.0)
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }

  if (a2 <= 0.0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a1;
  }

  if (a2 <= 0.0)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (v3 <= 0.0)
  {
    goto LABEL_28;
  }

LABEL_22:
  result = 0;
  v9 = 1.0;
  if (v3 > 1.0 || a3 <= 0.0)
  {
    return result;
  }

  if (a3 > 1.0)
  {
    if (v3 < 1.0)
    {
      goto LABEL_41;
    }

    return 0;
  }

  if (v3 >= a3)
  {
    return 0;
  }

LABEL_41:
  if (a3 <= 0.0)
  {
    v9 = 0.0;
    v10 = 1.0;
    if (v4 <= 1.0)
    {
      v10 = v4;
    }

    if (v4 <= 0.0)
    {
      v10 = 0.0;
    }
  }

  else
  {
    v10 = 0.0;
    if (a3 <= v9)
    {
      if (v4 <= v9)
      {
        v9 = v4;
      }

      if (v4 > 0.0)
      {
        v10 = v9;
      }

      v9 = a3;
    }

    else
    {
      if (v4 <= v9)
      {
        v11 = v4;
      }

      else
      {
        v11 = v9;
      }

      if (v4 > 0.0)
      {
        v10 = v11;
      }
    }
  }

  return v9 < v10;
}

uint64_t sub_2525148C4(uint64_t a1)
{
  v61 = a1;
  v2 = sub_25268DA10();
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x28223BE20](v2);
  v57 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s4KnobV2IDOMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v56 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v56 - v13;
  v60 = _s4KnobVMa(0);
  MEMORY[0x28223BE20](v60);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v56 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v56 - v24;
  v26 = _s9KnobStateOMa(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25251609C(v1, v28, _s9KnobStateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return MEMORY[0x2530A4FE0](0);
    }

    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09C0, &qword_2526A3A70) + 48);
    sub_252516038(v28, v19);
    sub_252516038(&v28[v34], v16);
    MEMORY[0x2530A4FE0](3);
    sub_25251609C(v19, v8, _s4KnobV2IDOMa);
    v36 = v58;
    v35 = v59;
    v37 = *(v58 + 48);
    v38 = v37(v8, 2, v59);
    if (v38)
    {
      MEMORY[0x2530A4FE0](v38 != 1);
    }

    else
    {
      v45 = v57;
      (*(v36 + 32))(v57, v8, v35);
      MEMORY[0x2530A4FE0](2);
      sub_252515F60(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_252692B30();
      (*(v36 + 8))(v45, v35);
    }

    v49 = v60;
    v50 = v56;
    v51 = *&v19[*(v60 + 20)];
    if (v51 == 0.0)
    {
      v51 = 0.0;
    }

    MEMORY[0x2530A5020](*&v51);
    sub_2526922E0();
    sub_252693480();
    sub_252693480();
    sub_25251609C(v16, v50, _s4KnobV2IDOMa);
    v52 = v37(v50, 2, v35);
    if (v52)
    {
      MEMORY[0x2530A4FE0](v52 != 1);
    }

    else
    {
      v53 = v57;
      (*(v36 + 32))(v57, v50, v35);
      MEMORY[0x2530A4FE0](2);
      sub_252515F60(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_252692B30();
      (*(v36 + 8))(v53, v35);
    }

    v55 = *&v16[*(v49 + 20)];
    if (v55 == 0.0)
    {
      v55 = 0.0;
    }

    MEMORY[0x2530A5020](*&v55);
    sub_2526922E0();
    sub_252693480();
    sub_252693480();
    sub_252516CCC(v16, _s4KnobVMa);
    v48 = v19;
  }

  else if (EnumCaseMultiPayload)
  {
    sub_252516038(v28, v22);
    MEMORY[0x2530A4FE0](2);
    sub_25251609C(v22, v11, _s4KnobV2IDOMa);
    v40 = v58;
    v39 = v59;
    v41 = (*(v58 + 48))(v11, 2, v59);
    v42 = v60;
    if (v41)
    {
      MEMORY[0x2530A4FE0](v41 != 1);
    }

    else
    {
      v46 = v57;
      (*(v40 + 32))(v57, v11, v39);
      MEMORY[0x2530A4FE0](2);
      sub_252515F60(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_252692B30();
      (*(v40 + 8))(v46, v39);
    }

    v54 = *&v22[*(v42 + 20)];
    if (v54 == 0.0)
    {
      v54 = 0.0;
    }

    MEMORY[0x2530A5020](*&v54);
    sub_2526922E0();
    sub_252693480();
    sub_252693480();
    v48 = v22;
  }

  else
  {
    sub_252516038(v28, v25);
    MEMORY[0x2530A4FE0](1);
    sub_25251609C(v25, v14, _s4KnobV2IDOMa);
    v31 = v58;
    v30 = v59;
    v32 = (*(v58 + 48))(v14, 2, v59);
    v33 = v60;
    if (v32)
    {
      MEMORY[0x2530A4FE0](v32 != 1);
    }

    else
    {
      v44 = v57;
      (*(v31 + 32))(v57, v14, v30);
      MEMORY[0x2530A4FE0](2);
      sub_252515F60(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_252692B30();
      (*(v31 + 8))(v44, v30);
    }

    v47 = *&v25[*(v33 + 20)];
    if (v47 == 0.0)
    {
      v47 = 0.0;
    }

    MEMORY[0x2530A5020](*&v47);
    sub_2526922E0();
    sub_252693480();
    sub_252693480();
    v48 = v25;
  }

  return sub_252516CCC(v48, _s4KnobVMa);
}

double sub_252515198()
{
  v1 = _s4KnobVMa(0);
  if (*(v0 + v1[7]) != 1)
  {
    goto LABEL_7;
  }

  v2 = *(v0 + v1[5]);
  result = 0.0;
  v4 = 0.0;
  if (v2 > 0.0)
  {
    v4 = 1.0;
    if (v2 > 1.0 || v2 >= 0.3)
    {
LABEL_7:
      result = 1.0;
      if (*(v0 + v1[8]) == 1)
      {
        v6 = *(v0 + v1[5]);
        if (v6 > 0.0)
        {
          v7 = 1.0;
          v8 = 1.0;
          if (v6 > 1.0 || (v8 = *(v0 + v1[5]), v6 > 0.7))
          {
            if ((1.0 - v8) / 0.3 <= 1.0)
            {
              v7 = (1.0 - v8) / 0.3;
            }

            result = 0.0;
            if (v7 >= 0.0)
            {
              return v7;
            }
          }
        }
      }

      return result;
    }

    v9 = v2 / 0.3;
    if (v9 <= 1.0)
    {
      v4 = v9;
    }
  }

  if (v4 >= 0.0)
  {
    return v4;
  }

  return result;
}

uint64_t sub_252515290()
{
  v1 = v0;
  v2 = sub_25268DA10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s4KnobV2IDOMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252693460();
  sub_25251609C(v1, v8, _s4KnobV2IDOMa);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    MEMORY[0x2530A4FE0](v9 != 1);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x2530A4FE0](2);
    sub_252515F60(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_252692B30();
    (*(v3 + 8))(v5, v2);
  }

  return sub_2526934C0();
}

uint64_t sub_252515488(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25268DA10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s4KnobV2IDOMa(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25251609C(v2, v9, _s4KnobV2IDOMa);
  v10 = (*(v4 + 48))(v9, 2, v3);
  if (v10)
  {
    MEMORY[0x2530A4FE0](v10 != 1);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    MEMORY[0x2530A4FE0](2);
    sub_252515F60(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_252692B30();
    (*(v4 + 8))(v6, v3);
  }

  v11 = *(v2 + *(_s4KnobVMa(0) + 20));
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x2530A5020](*&v11);
  sub_2526922E0();
  sub_252693480();
  return sub_252693480();
}

uint64_t sub_2525156C4(uint64_t a1)
{
  v2 = sub_25268DA10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25251609C(v1, v8, _s4KnobV2IDOMa);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    return MEMORY[0x2530A4FE0](v9 != 1);
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x2530A4FE0](2);
  sub_252515F60(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_252692B30();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_25251589C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25268DA10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252693460();
  sub_25251609C(v2, v9, _s4KnobV2IDOMa);
  v10 = (*(v4 + 48))(v9, 2, v3);
  if (v10)
  {
    MEMORY[0x2530A4FE0](v10 != 1);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    MEMORY[0x2530A4FE0](2);
    sub_252515F60(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_252692B30();
    (*(v4 + 8))(v6, v3);
  }

  return sub_2526934C0();
}

unint64_t sub_252515AE8()
{
  result = qword_27F4E0BE8;
  if (!qword_27F4E0BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0BE8);
  }

  return result;
}

uint64_t sub_252515B88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_252693460();
  a3(v5);
  return sub_2526934C0();
}

uint64_t sub_252515BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_252693460();
  a4(v6);
  return sub_2526934C0();
}

uint64_t sub_252515C34()
{
  v1 = *v0;
  sub_252693460();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x2530A5020](*&v2);
  return sub_2526934C0();
}

uint64_t sub_252515C90()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x2530A5020](*&v1);
}

uint64_t sub_252515CCC(uint64_t a1)
{
  v2 = *v1;
  sub_252693460();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x2530A5020](*&v3);
  return sub_2526934C0();
}

BOOL sub_252515D38(double *a1, double *a2)
{
  v2 = *a2;
  if (*a1 <= 0.0)
  {
    v3 = 0.0;
    if (v2 <= 0.0)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
      if (v2 <= 1.0)
      {
        v4 = *a2;
      }
    }
  }

  else
  {
    v3 = 1.0;
    v4 = 0.0;
    if (*a1 <= 1.0)
    {
      if (v2 > 0.0)
      {
        if (v2 <= 1.0)
        {
          v4 = *a2;
        }

        else
        {
          v4 = 1.0;
        }
      }

      v3 = *a1;
    }

    else if (v2 > 0.0)
    {
      if (v2 <= 1.0)
      {
        v4 = *a2;
      }

      else
      {
        v4 = 1.0;
      }
    }
  }

  return v3 < v4;
}

BOOL sub_252515DB0(double *a1, double *a2)
{
  v2 = *a1;
  if (*a2 <= 0.0)
  {
    v3 = 0.0;
    if (v2 <= 0.0)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
      if (v2 <= 1.0)
      {
        v4 = *a1;
      }
    }
  }

  else
  {
    v3 = 1.0;
    v4 = 0.0;
    if (*a2 <= 1.0)
    {
      if (v2 > 0.0)
      {
        if (v2 <= 1.0)
        {
          v4 = *a1;
        }

        else
        {
          v4 = 1.0;
        }
      }

      v3 = *a2;
    }

    else if (v2 > 0.0)
    {
      if (v2 <= 1.0)
      {
        v4 = *a1;
      }

      else
      {
        v4 = 1.0;
      }
    }
  }

  return v3 >= v4;
}

BOOL sub_252515E28(double *a1, double *a2)
{
  v2 = *a2;
  if (*a1 <= 0.0)
  {
    v3 = 0.0;
    if (v2 <= 0.0)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
      if (v2 <= 1.0)
      {
        v4 = *a2;
      }
    }
  }

  else
  {
    v3 = 1.0;
    v4 = 0.0;
    if (*a1 <= 1.0)
    {
      if (v2 > 0.0)
      {
        if (v2 <= 1.0)
        {
          v4 = *a2;
        }

        else
        {
          v4 = 1.0;
        }
      }

      v3 = *a1;
    }

    else if (v2 > 0.0)
    {
      if (v2 <= 1.0)
      {
        v4 = *a2;
      }

      else
      {
        v4 = 1.0;
      }
    }
  }

  return v3 >= v4;
}

BOOL sub_252515EA0(double *a1, double *a2)
{
  v2 = *a1;
  if (*a2 <= 0.0)
  {
    v3 = 0.0;
    if (v2 <= 0.0)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
      if (v2 <= 1.0)
      {
        v4 = *a1;
      }
    }
  }

  else
  {
    v3 = 1.0;
    v4 = 0.0;
    if (*a2 <= 1.0)
    {
      if (v2 > 0.0)
      {
        if (v2 <= 1.0)
        {
          v4 = *a1;
        }

        else
        {
          v4 = 1.0;
        }
      }

      v3 = *a2;
    }

    else if (v2 > 0.0)
    {
      if (v2 <= 1.0)
      {
        v4 = *a1;
      }

      else
      {
        v4 = 1.0;
      }
    }
  }

  return v3 < v4;
}

uint64_t sub_252515F60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_252516038(uint64_t a1, uint64_t a2)
{
  v4 = _s4KnobVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25251609C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252516104(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268DA10();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s4KnobV2IDOMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C10, &qword_2526A3F70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_25251609C(a1, &v21 - v12, _s4KnobV2IDOMa);
  sub_25251609C(a2, &v13[v15], _s4KnobV2IDOMa);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (!v17)
  {
    sub_25251609C(v13, v10, _s4KnobV2IDOMa);
    if (!v16(&v13[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v18 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_252516CCC(v13, _s4KnobV2IDOMa);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v13[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v13[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_252372288(v13, &qword_27F4E0C10, &qword_2526A3F70);
    v18 = 0;
    return v18 & 1;
  }

  sub_252516CCC(v13, _s4KnobV2IDOMa);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_252516414(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268DA10();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s4KnobV2IDOMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C10, &qword_2526A3F70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - v12;
  v15 = *(v14 + 56);
  sub_25251609C(a1, &v24 - v12, _s4KnobV2IDOMa);
  sub_25251609C(a2, &v13[v15], _s4KnobV2IDOMa);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (!v17)
  {
    sub_25251609C(v13, v10, _s4KnobV2IDOMa);
    if (!v16(&v13[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v19 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      if ((v19 & 1) == 0)
      {
        sub_252516CCC(v13, _s4KnobV2IDOMa);
        v18 = 0;
        return v18 & 1;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_8;
  }

  if (v17 == 1)
  {
    if (v16(&v13[v15], 2, v4) == 1)
    {
      goto LABEL_10;
    }

LABEL_8:
    sub_252372288(v13, &qword_27F4E0C10, &qword_2526A3F70);
    v18 = 0;
    return v18 & 1;
  }

  if (v16(&v13[v15], 2, v4) != 2)
  {
    goto LABEL_8;
  }

LABEL_10:
  sub_252516CCC(v13, _s4KnobV2IDOMa);
  v21 = _s4KnobVMa(0);
  if (*(a1 + *(v21 + 20)) == *(a2 + *(v21 + 20)) && (v22 = v21, (sub_252692280() & 1) != 0) && *(a1 + *(v22 + 28)) == *(a2 + *(v22 + 28)))
  {
    v18 = *(a1 + *(v22 + 32)) ^ *(a2 + *(v22 + 32)) ^ 1;
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_25251678C(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = _s4KnobVMa(0);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v38 - v6;
  MEMORY[0x28223BE20](v7);
  v40 = &v38 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v15 = _s9KnobStateOMa(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C08, &qword_2526A3F68);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v38 - v25;
  v28 = &v38 + *(v27 + 56) - v25;
  sub_25251609C(a1, &v38 - v25, _s9KnobStateOMa);
  sub_25251609C(v41, v28, _s9KnobStateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_25251609C(v26, v20, _s9KnobStateOMa);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v17 = v20;
        goto LABEL_15;
      }

      sub_252516038(v28, v11);
      v34 = sub_252516414(v20, v11);
      sub_252516CCC(v11, _s4KnobVMa);
      v36 = v20;
LABEL_20:
      sub_252516CCC(v36, _s4KnobVMa);
      sub_252516CCC(v26, _s9KnobStateOMa);
      return v34 & 1;
    }

    sub_25251609C(v26, v23, _s9KnobStateOMa);
    if (swift_getEnumCaseMultiPayload())
    {
      v17 = v23;
LABEL_15:
      sub_252516CCC(v17, _s4KnobVMa);
      goto LABEL_16;
    }

    sub_252516038(v28, v14);
    v34 = sub_252516414(v23, v14);
    v35 = v14;
LABEL_19:
    sub_252516CCC(v35, _s4KnobVMa);
    v36 = v23;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_25251609C(v26, v17, _s9KnobStateOMa);
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09C0, &qword_2526A3A70) + 48);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_252516CCC(&v17[v30], _s4KnobVMa);
      goto LABEL_15;
    }

    v23 = v40;
    sub_252516038(v28, v40);
    v31 = v39;
    sub_252516038(&v17[v30], v39);
    v32 = v38;
    sub_252516038(&v28[v30], v38);
    v33 = sub_252516414(v17, v23);
    sub_252516CCC(v17, _s4KnobVMa);
    if ((v33 & 1) == 0)
    {
      sub_252516CCC(v32, _s4KnobVMa);
      sub_252516CCC(v31, _s4KnobVMa);
      sub_252516CCC(v23, _s4KnobVMa);
      sub_252516CCC(v26, _s9KnobStateOMa);
      goto LABEL_17;
    }

    v34 = sub_252516414(v31, v32);
    sub_252516CCC(v32, _s4KnobVMa);
    v35 = v31;
    goto LABEL_19;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_16:
    sub_252372288(v26, &qword_27F4E0C08, &qword_2526A3F68);
LABEL_17:
    v34 = 0;
    return v34 & 1;
  }

  sub_252516CCC(v26, _s9KnobStateOMa);
  v34 = 1;
  return v34 & 1;
}

uint64_t sub_252516CCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252516D30()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D30, &unk_2526A59C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D38, &qword_2526A4120);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  if (*(v1 + 24) == 1 && *(v1 + 16))
  {
    v34 = v8;
    v35 = v4;
    v36 = &v33;
    MEMORY[0x28223BE20](v16);
    v20 = type metadata accessor for AccessoryControl.ThermostatState(0);
    *(&v33 - 2) = v20;
    v21 = sub_25251CB3C(&qword_27F4E0D40, type metadata accessor for AccessoryControl.ThermostatState, &protocol conformance descriptor for AccessoryControl.ThermostatState);
    *(&v33 - 1) = v21;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v36 = v20;
    *(&v33 - 2) = v20;
    *(&v33 - 1) = v21;
    swift_getKeyPath();
    sub_252690680();

    if ((*(v6 + 48))(v19, 1, v5))
    {
      v23 = &qword_27F4E0D38;
      v24 = &qword_2526A4120;
      v25 = v19;
    }

    else
    {
      v26 = v34;
      sub_25237153C(v19, v34, &qword_27F4E0D30, &unk_2526A59C0);
      sub_252372288(v19, &qword_27F4E0D38, &qword_2526A4120);
      v27 = v35;
      sub_25251C950(v26 + *(v5 + 36), v35, type metadata accessor for AccessoryControl.ThermostatState);
      (*(*(v36 - 1) + 56))(v27, 0, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20, &qword_2526A9B80);
      sub_2526926B0();
      v25 = v26;
      v23 = &qword_27F4E0D30;
      v24 = &unk_2526A59C0;
    }

    sub_252372288(v25, v23, v24);
  }

  v28 = (*(v6 + 56))(v14, 1, 1, v5, v17);
  MEMORY[0x28223BE20](v28);
  v29 = type metadata accessor for AccessoryControl.ThermostatState(0);
  *(&v33 - 2) = v29;
  v30 = sub_25251CB3C(&qword_27F4E0D40, type metadata accessor for AccessoryControl.ThermostatState, &protocol conformance descriptor for AccessoryControl.ThermostatState);
  *(&v33 - 1) = v30;
  v31 = swift_getKeyPath();
  MEMORY[0x28223BE20](v31);
  *(&v33 - 2) = v29;
  *(&v33 - 1) = v30;
  swift_getKeyPath();
  sub_25237153C(v14, v11, &qword_27F4E0D38, &qword_2526A4120);

  sub_252690690();
  return sub_252372288(v14, &qword_27F4E0D38, &qword_2526A4120);
}

void (*sub_252517224(void **a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090) - 8) + 64);
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    *a1 = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v5 = malloc(v3);
  }

  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20, &qword_2526A9B80);
  a1[2] = v6;
  if (v4)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(*(v6 - 1) + 64));
  }

  a1[3] = v7;
  sub_25237153C(v1, v7, &qword_27F4E0C20, &qword_2526A9B80);
  MEMORY[0x2530A4210](v6);
  return sub_252517358;
}

void sub_252517358(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    sub_25237153C(*(a1 + 8), v3, &qword_27F4DB258, &unk_252696090);
    sub_2526926B0();
    sub_252372288(v2, &qword_27F4E0C20, &qword_2526A9B80);
    v5 = v4;
    v6 = &qword_27F4DB258;
    v7 = &unk_252696090;
  }

  else
  {
    sub_2526926B0();
    v6 = &qword_27F4E0C20;
    v7 = &qword_2526A9B80;
    v5 = v2;
  }

  sub_252372288(v5, v6, v7);
  free(v2);
  free(v4);

  free(v3);
}

uint64_t sub_252517430@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19[-v4];
  v6 = sub_2526910F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = type metadata accessor for ThermostatControlView(0);
  v11 = result;
  v12 = v1 + *(result + 32);
  v13 = *v12;
  if (*(v12 + 8) == 1)
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_252692F00();
    v14 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v13, 0);
    result = (*(v7 + 8))(v9, v6);
    if (v19[15] != 1)
    {
      goto LABEL_6;
    }
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20, &qword_2526A9B80);
  MEMORY[0x2530A4210](v15);
  v16 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v17 = (*(*(v16 - 8) + 48))(v5, 1, v16);
  result = sub_252372288(v5, &qword_27F4DB258, &unk_252696090);
  if (v17 != 1)
  {
    v18 = *(v1 + *(v11 + 20) + 24);
    goto LABEL_8;
  }

LABEL_6:
  v18 = 0;
LABEL_8:
  *a1 = v18;
  return result;
}

double sub_25251768C()
{
  v1 = sub_2526910F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ThermostatControlView(0) + 36);
  v16 = *(v5 + 64);
  v6 = *(v5 + 48);
  v15[2] = *(v5 + 32);
  v15[3] = v6;
  v7 = *(v5 + 16);
  v15[0] = *v5;
  v15[1] = v7;
  if ((v16 & 0x100) != 0)
  {
    v8 = *(v5 + 48);
    v12[2] = *(v5 + 32);
    v13 = v8;
    v14 = *(v5 + 64);
    v9 = *(v5 + 16);
    v12[0] = *v5;
    v12[1] = v9;
  }

  else
  {

    sub_252692F00();
    v10 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v15, &qword_27F4DC120, &qword_25269CED0);
    (*(v2 + 8))(v4, v1);
  }

  result = 40.0;
  if (BYTE1(v13))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_252517830@<X0>(uint64_t a1@<X8>)
{
  v194 = a1;
  v2 = sub_2526917F0();
  v192 = *(v2 - 8);
  v193 = v2;
  MEMORY[0x28223BE20](v2);
  v191 = &v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C70, &unk_2526A41A0);
  MEMORY[0x28223BE20](v181);
  v178 = &v151 - v4;
  v5 = sub_2526910F0();
  v189 = *(v5 - 8);
  v190 = v5;
  MEMORY[0x28223BE20](v5);
  v187 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = _s22StatusTextViewModifierVMa(0);
  MEMORY[0x28223BE20](v195);
  v198 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ThermostatControlView(0);
  v9 = *(v8 - 1);
  v201 = v8;
  v202 = v9;
  v199 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v203 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for RingControlView(0) - 8;
  MEMORY[0x28223BE20](v157);
  v156 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  OpaqueTypeConformance2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C78, &qword_2526A4060);
  MEMORY[0x28223BE20](OpaqueTypeConformance2);
  v161 = &v151 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C80, &qword_2526A4068);
  v164 = *(v13 - 8);
  v165 = v13;
  MEMORY[0x28223BE20](v13);
  v163 = &v151 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C88, &qword_2526A4070);
  v166 = *(v15 - 8);
  v167 = v15;
  MEMORY[0x28223BE20](v15);
  v196 = &v151 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C90, &qword_2526A4078);
  v168 = *(v17 - 8);
  v169 = v17;
  MEMORY[0x28223BE20](v17);
  v197 = &v151 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C98, &qword_2526A4080);
  v176 = *(v19 - 8);
  v177 = v19;
  MEMORY[0x28223BE20](v19);
  v175 = &v151 - v20;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0CA0, &qword_2526A4088);
  MEMORY[0x28223BE20](v172);
  v171 = &v151 - v21;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0CA8, &qword_2526A4090);
  MEMORY[0x28223BE20](v170);
  v174 = &v151 - v22;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0CB0, &qword_2526A4098);
  MEMORY[0x28223BE20](v173);
  v180 = &v151 - v23;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0CB8, &qword_2526A40A0);
  MEMORY[0x28223BE20](v184);
  v182 = &v151 - v24;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0CC0, &qword_2526A40A8);
  v185 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v183 = &v151 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0CC8, &qword_2526A40B0);
  MEMORY[0x28223BE20](v26 - 8);
  v186 = &v151 - v27;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v159);
  v29 = &v151 - v28;
  v155 = _s9KnobStateOMa(0);
  v30 = *(v155 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v155);
  v154 = &v151 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v151 - v33;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20, &qword_2526A9B80);
  MEMORY[0x2530A4210]();
  v204 = v1;
  sub_252518DAC(v29, v34);
  v160 = v29;
  sub_252372288(v29, &qword_27F4DB258, &unk_252696090);
  v200 = type metadata accessor for ThermostatControlView;
  sub_25251C950(v1, v203, type metadata accessor for ThermostatControlView);
  v179 = v34;
  sub_25251C950(v34, &v151 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), _s9KnobStateOMa);
  sub_252692E00();
  v35 = sub_252692DF0();
  v36 = *(v202 + 80);
  v37 = (v36 + 32) & ~v36;
  v38 = (v37 + v199 + *(v30 + 80)) & ~*(v30 + 80);
  v202 = v36 | 7;
  v39 = swift_allocObject();
  v40 = MEMORY[0x277D85700];
  *(v39 + 16) = v35;
  *(v39 + 24) = v40;
  v41 = v203;
  sub_25251C8E8(v203, v39 + v37, type metadata accessor for ThermostatControlView);
  sub_25251C8E8(v154, v39 + v38, _s9KnobStateOMa);
  v42 = v204;
  sub_25251C950(v204, v41, v200);
  v43 = sub_252692DF0();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  *(v44 + 24) = MEMORY[0x277D85700];
  sub_25251C8E8(v41, v44 + v37, type metadata accessor for ThermostatControlView);
  v45 = v156;
  sub_2526926E0();
  sub_252519894(v223);
  v46 = v201;
  v47 = (v42 + *(v201 + 13));
  v48 = v42;
  v49 = *v47;
  v50 = *(v47 + 1);
  LODWORD(v154) = v49;
  LOBYTE(v215) = v49;
  v155 = v50;
  *(&v215 + 1) = v50;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320, &unk_25269FA20);
  sub_252692500();
  v152 = *(&v225 + 1);
  v51 = v225;
  LOBYTE(v29) = v226;
  sub_25251C950(v48, v41, v200);
  v52 = (v36 + 16) & ~v36;
  v199 += v52;
  v53 = swift_allocObject();
  v200 = v52;
  sub_25251C8E8(v41, v53 + v52, type metadata accessor for ThermostatControlView);
  v54 = v157;
  v55 = v45 + *(v157 + 40);
  sub_2526908F0();
  v56 = v221;
  *v55 = v220;
  *(v55 + 16) = v56;
  *(v55 + 32) = v222;
  v57 = (v45 + v54[7]);
  *(v57 + 57) = *(v224 + 9);
  v58 = v224[0];
  v57[2] = v223[2];
  v57[3] = v58;
  v59 = v223[1];
  *v57 = v223[0];
  v57[1] = v59;
  v60 = v45 + v54[8];
  v61 = v152;
  *v60 = v51;
  *(v60 + 8) = v61;
  *(v60 + 16) = v29;
  v62 = (v45 + v54[9]);
  *v62 = sub_25251B9F0;
  v62[1] = v53;
  v63 = v48 + *(v46 + 9);
  v64 = *(v63 + 48);
  v227 = *(v63 + 32);
  v228 = v64;
  v229 = *(v63 + 64);
  v65 = *(v63 + 16);
  v225 = *v63;
  v226 = v65;
  if ((v229 & 0x100) != 0)
  {
    v66 = *(v63 + 48);
    v217 = *(v63 + 32);
    v218 = v66;
    v219 = *(v63 + 64);
    v67 = *(v63 + 16);
    v215 = *v63;
    v216 = v67;
  }

  else
  {

    sub_252692F00();
    v68 = sub_2526919C0();
    sub_252690570();

    v69 = v187;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(&v225, &qword_27F4DC120, &qword_25269CED0);
    (*(v189 + 8))(v69, v190);
  }

  v212 = v217;
  v213 = v218;
  v214 = v219;
  v210 = v215;
  v211 = v216;
  v70 = v198;
  v71 = v204;
  sub_25251CB88(&v198[*(v195 + 5)]);
  v72 = v213;
  *(v70 + 2) = v212;
  *(v70 + 3) = v72;
  v70[64] = v214;
  v73 = v211;
  *v70 = v210;
  *(v70 + 1) = v73;
  v74 = v161;
  sub_25251C8E8(v45, v161, type metadata accessor for RingControlView);
  v75 = OpaqueTypeConformance2;
  sub_25251C8E8(v70, v74 + *(OpaqueTypeConformance2 + 36), _s22StatusTextViewModifierVMa);
  v76 = v154;
  LOBYTE(v205) = v154;
  v77 = v155;
  v206 = v155;
  sub_2526924E0();
  LOBYTE(v205) = v209;
  v195 = type metadata accessor for ThermostatControlView;
  v78 = v203;
  sub_25251C950(v71, v203, type metadata accessor for ThermostatControlView);
  v79 = swift_allocObject();
  v198 = type metadata accessor for ThermostatControlView;
  sub_25251C8E8(v78, v200 + v79, type metadata accessor for ThermostatControlView);
  v157 = sub_25251BAD4();
  v80 = v163;
  sub_2526921D0();

  sub_252372288(v74, &qword_27F4E0C78, &qword_2526A4060);
  LOBYTE(v205) = v76;
  v206 = v77;
  sub_2526924E0();
  v81 = v78;
  v82 = v195;
  sub_25251C950(v204, v78, v195);
  v83 = swift_allocObject();
  v84 = v200;
  sub_25251C8E8(v81, v200 + v83, v198);
  v205 = v75;
  v206 = MEMORY[0x277D839B0];
  v207 = v157;
  v208 = MEMORY[0x277D839C8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v85 = v165;
  sub_2526921E0();

  (*(v164 + 8))(v80, v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C28, &unk_2526A3FD0);
  v86 = v204;
  v87 = v178;
  sub_2526924E0();
  v88 = v203;
  sub_25251C950(v86, v203, v82);
  v89 = v84 + swift_allocObject();
  v90 = v88;
  sub_25251C8E8(v88, v89, v198);
  v205 = v85;
  v206 = MEMORY[0x277D839B0];
  v207 = OpaqueTypeConformance2;
  v208 = MEMORY[0x277D839C8];
  v165 = MEMORY[0x277CE0E40];
  v91 = swift_getOpaqueTypeConformance2();
  v92 = sub_25251BC18();
  v93 = v196;
  v94 = v167;
  v95 = v181;
  sub_2526921E0();

  sub_252372288(v87, &qword_27F4E0C70, &unk_2526A41A0);
  (*(v166 + 8))(v93, v94);
  v96 = v160;
  v97 = v204;
  MEMORY[0x2530A4210](v158);
  sub_25251C950(v97, v90, v195);
  v98 = swift_allocObject();
  sub_25251C8E8(v90, v200 + v98, v198);
  v205 = v94;
  v206 = v95;
  v207 = v91;
  v208 = v92;
  swift_getOpaqueTypeConformance2();
  sub_25251BD4C();
  v99 = v175;
  v100 = v169;
  v101 = v197;
  sub_2526921D0();

  sub_252372288(v96, &qword_27F4DB258, &unk_252696090);
  (*(v168 + 8))(v101, v100);
  v102 = v204 + *(v201 + 8);
  v103 = *v102;
  if (*(v102 + 8) != 1)
  {

    sub_252692F00();
    v104 = sub_2526919C0();
    sub_252690570();

    v105 = v187;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v103, 0);
    (*(v189 + 8))(v105, v190);
    LOBYTE(v103) = v205;
  }

  v106 = v180;
  if (v103)
  {
    v107 = 1.0;
  }

  else
  {
    v107 = 0.5;
  }

  v108 = v171;
  (*(v176 + 32))(v171, v99, v177);
  *(v108 + *(v172 + 36)) = v107;
  v109 = *(v204 + *(v201 + 7));
  v110 = *(v204 + *(v201 + 6));
  v111 = v174;
  sub_2523714D4(v108, v174, &qword_27F4E0CA0, &qword_2526A4088);
  v112 = v111 + *(v170 + 36);
  *v112 = v109;
  *(v112 + 8) = v110;
  v113 = sub_252691A40();
  sub_252690760();
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v121 = v120;
  sub_2523714D4(v111, v106, &qword_27F4E0CA8, &qword_2526A4090);
  v122 = v106 + *(v173 + 36);
  *v122 = v113;
  *(v122 + 8) = v115;
  *(v122 + 16) = v117;
  *(v122 + 24) = v119;
  *(v122 + 32) = v121;
  *(v122 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4F8, &qword_252698910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252694EA0;
  v124 = sub_252691A50();
  *(inited + 32) = v124;
  v125 = sub_252691A70();
  *(inited + 33) = v125;
  v126 = sub_252691A60();
  sub_252691A60();
  if (sub_252691A60() != v124)
  {
    v126 = sub_252691A60();
  }

  sub_252691A60();
  if (sub_252691A60() != v125)
  {
    v126 = sub_252691A60();
  }

  v127 = v204;
  sub_25251768C();
  sub_252690760();
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v135 = v134;
  v136 = v182;
  sub_2523714D4(v106, v182, &qword_27F4E0CB0, &qword_2526A4098);
  v137 = v184;
  v138 = v136 + *(v184 + 36);
  *v138 = v126;
  *(v138 + 8) = v129;
  *(v138 + 16) = v131;
  *(v138 + 24) = v133;
  *(v138 + 32) = v135;
  *(v138 + 40) = 0;
  v139 = v191;
  sub_2526917D0();
  v140 = sub_25251BE00();
  v141 = v183;
  sub_252692020();
  (*(v192 + 8))(v139, v193);
  sub_25232249C(v136);
  v201 = type metadata accessor for ThermostatControlView;
  v142 = v203;
  sub_25251C950(v127, v203, type metadata accessor for ThermostatControlView);
  v143 = swift_allocObject();
  v198 = type metadata accessor for ThermostatControlView;
  v144 = v200;
  sub_25251C8E8(v142, v200 + v143, type metadata accessor for ThermostatControlView);
  v205 = v137;
  v206 = v140;
  swift_getOpaqueTypeConformance2();
  v145 = v186;
  v146 = v188;
  sub_2526920A0();

  (*(v185 + 8))(v141, v146);
  sub_25251C888(v179, _s9KnobStateOMa);
  sub_25251C950(v204, v142, v201);
  v147 = swift_allocObject();
  sub_25251C8E8(v142, v144 + v147, v198);
  v148 = v194;
  sub_2523714D4(v145, v194, &qword_27F4E0CC8, &qword_2526A40B0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D18, &qword_2526A40B8);
  v150 = (v148 + *(result + 36));
  *v150 = sub_25251C828;
  v150[1] = v147;
  v150[2] = 0;
  v150[3] = 0;
  return result;
}

uint64_t sub_252518DAC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = _s4KnobV2IDOMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v90 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v89 = &v88 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v88 - v9;
  MEMORY[0x28223BE20](v11);
  v96 = &v88 - v12;
  MEMORY[0x28223BE20](v13);
  v93 = &v88 - v14;
  v97 = _s4KnobVMa(0);
  MEMORY[0x28223BE20](v97);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v92 = &v88 - v18;
  MEMORY[0x28223BE20](v19);
  v91 = &v88 - v20;
  MEMORY[0x28223BE20](v21);
  v95 = &v88 - v22;
  MEMORY[0x28223BE20](v23);
  v94 = &v88 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v88 - v26;
  v28 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = (&v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25237153C(a1, v27, &qword_27F4DB258, &unk_252696090);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_252372288(v27, &qword_27F4DB258, &unk_252696090);
    goto LABEL_24;
  }

  sub_25251C8E8(v27, v31, type metadata accessor for AccessoryControl.ThermostatState);
  if (*(v31 + 32))
  {
    v32 = v98;
    if (*(v31 + 32) == 1)
    {
      v33 = v31[3];
      v34 = v31[2];
      v35 = (v32 + *(type metadata accessor for ThermostatControlView(0) + 20));
      v36 = v35[1] - *v35;
      v37 = (v34 - *v35) / v36;
      v38 = (v33 - *v35) / v36;
      v92 = a2;
      v39 = v97;
      v40 = v94;
      if (v38 < v37)
      {
        v41 = sub_25268F2C0();
        sub_252692F50();
        v43 = v42;

        v44 = v35[2];
        if (v43 < v44)
        {
          v43 = v43 * ceil(v44 / v43);
        }

        v37 = v38 - v43 / v36;
      }

      sub_252517430(&v100);
      if (v100 == 3)
      {
        if (qword_27F4DAAC8 != -1)
        {
          swift_once();
        }

        v45 = qword_27F4FB470;
      }

      else
      {
        v45 = sub_252692310();
      }

      v59 = v93;
      sub_25268DA00();
      v60 = sub_25268DA10();
      v61 = *(*(v60 - 8) + 56);
      v61(v59, 0, 2, v60);
      v62 = 0.0;
      if (v37 > 0.0)
      {
        v62 = v37;
      }

      if (v62 > 1.0)
      {
        v62 = 1.0;
      }

      v63 = v39[8];
      *(v40 + v39[5]) = v62;
      *(v40 + v39[6]) = v45;
      sub_25251C8E8(v59, v40, _s4KnobV2IDOMa);
      *(v40 + v63) = 0;
      sub_252517430(&v99);
      if (v99 == 3)
      {
        if (qword_27F4DAAC0 != -1)
        {
          swift_once();
        }

        v64 = qword_27F4FB468;
      }

      else
      {
        v64 = sub_252692310();
      }

      v65 = v96;
      sub_25268DA00();
      sub_25251C888(v31, type metadata accessor for AccessoryControl.ThermostatState);
      v61(v65, 0, 2, v60);
      v66 = 0.0;
      if (v38 > 0.0)
      {
        v66 = v38;
      }

      if (v66 > 1.0)
      {
        v66 = 1.0;
      }

      v67 = v39[7];
      v68 = v39[8];
      v69 = v95;
      *&v95[v39[5]] = v66;
      *(v69 + v39[6]) = v64;
      sub_25251C8E8(v65, v69, _s4KnobV2IDOMa);
      *(v69 + v67) = 0;
      *(v40 + v67) = 1;
      *(v69 + v68) = 1;
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09C0, &qword_2526A3A70) + 48);
      v71 = v92;
      sub_25251C8E8(v40, v92, _s4KnobVMa);
      sub_25251C8E8(v69, &v71[v70], _s4KnobVMa);
      _s9KnobStateOMa(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_25251C888(v31, type metadata accessor for AccessoryControl.ThermostatState);
LABEL_24:
    _s9KnobStateOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  v46 = v31[2];
  v47 = *(v31 + *(v28 + 40));
  v48 = type metadata accessor for ThermostatControlView(0);
  v49 = (v46 - *(v98 + *(v48 + 20))) / (*(v98 + *(v48 + 20) + 8) - *(v98 + *(v48 + 20)));
  v50 = sub_252692310();
  if (v47 == 1)
  {
    v72 = v89;
    sub_25268DA00();
    v73 = sub_25268DA10();
    (*(*(v73 - 8) + 56))(v72, 0, 2, v73);
    v74 = 0.0;
    if (v49 > 0.0)
    {
      v74 = v49;
    }

    if (v74 > 1.0)
    {
      v74 = 1.0;
    }

    v75 = v97[8];
    v76 = v92;
    *&v92[v97[5]] = v74;
    sub_25251C8E8(v72, v76, _s4KnobV2IDOMa);
    v76[v75] = 0;
    sub_252517430(&v102);
    if (v102 == 3)
    {
      if (qword_27F4DAAC8 != -1)
      {
        swift_once();
      }

      v77 = qword_27F4FB470;
    }

    else
    {
      v77 = sub_252692310();
    }

    v87 = v97[6];
    v86 = v97[7];
    sub_25251C888(v31, type metadata accessor for AccessoryControl.ThermostatState);

    *&v76[v87] = v77;
    v76[v86] = 1;
    sub_25251C950(v76, a2, _s4KnobVMa);
    _s9KnobStateOMa(0);
    swift_storeEnumTagMultiPayload();
    return sub_25251C888(v76, _s4KnobVMa);
  }

  else
  {
    v51 = a2;
    if (v47 != 2)
    {
      v78 = v90;
      sub_25268DA00();
      sub_25251C888(v31, type metadata accessor for AccessoryControl.ThermostatState);
      v79 = sub_25268DA10();
      (*(*(v79 - 8) + 56))(v78, 0, 2, v79);
      v80 = 0.0;
      if (v49 > 0.0)
      {
        v80 = v49;
      }

      if (v80 > 1.0)
      {
        v80 = 1.0;
      }

      v81 = v97;
      v82 = v97[7];
      v83 = v97[8];
      *&v16[v97[5]] = v80;
      *&v16[v81[6]] = v50;
      sub_25251C8E8(v78, v16, _s4KnobV2IDOMa);
      v16[v82] = 0;
      v16[v83] = 0;
      sub_25251C8E8(v16, a2, _s4KnobVMa);
      _s9KnobStateOMa(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_25268DA00();
    v52 = sub_25268DA10();
    (*(*(v52 - 8) + 56))(v10, 0, 2, v52);
    v53 = 0.0;
    if (v49 > 0.0)
    {
      v53 = v49;
    }

    if (v53 > 1.0)
    {
      v53 = 1.0;
    }

    v54 = v97;
    v55 = v97[7];
    v56 = v91;
    *&v91[v97[5]] = v53;
    sub_25251C8E8(v10, v56, _s4KnobV2IDOMa);
    *(v56 + v55) = 0;
    sub_252517430(&v101);
    if (v101 == 3)
    {
      if (qword_27F4DAAC0 != -1)
      {
        swift_once();
      }

      v57 = qword_27F4FB468;
    }

    else
    {
      v57 = sub_252692310();
    }

    v84 = v54[8];
    v85 = v54[6];
    sub_25251C888(v31, type metadata accessor for AccessoryControl.ThermostatState);

    *(v56 + v85) = v57;
    *(v56 + v84) = 1;
    sub_25251C950(v56, v51, _s4KnobVMa);
    _s9KnobStateOMa(0);
    swift_storeEnumTagMultiPayload();
    return sub_25251C888(v56, _s4KnobVMa);
  }
}

double sub_252519894@<D0>(uint64_t a1@<X8>)
{
  sub_252517430(&v19);
  v3 = v19;
  v4 = sub_25251A4DC();
  v6 = v5;
  v7 = v1 + *(type metadata accessor for ThermostatControlView(0) + 20);
  if (*(v7 + 96))
  {
    v8 = sub_25268F2C0();
    sub_252692F50();
    v10 = v9;

    v11 = *(v7 + 16);
    if (v10 < v11)
    {
      v10 = v10 * ceil(v11 / v10);
    }
  }

  else
  {
    v10 = *(v7 + 88);
  }

  v13 = *v7;
  v12 = *(v7 + 8);
  v14 = sub_25268F2C0();
  sub_252692F50();
  v16 = v15;

  v17 = *(v7 + 16);
  if (v16 < v17)
  {
    v16 = v16 * ceil(v17 / v16);
  }

  *a1 = 0x4012D97C7F3321D2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 32) = v10 / (v12 - v13);
  *(a1 + 40) = 0;
  result = v16 / (v12 - v13);
  *(a1 + 48) = result;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  return result;
}

uint64_t sub_2525199C4(char a1)
{
  v2 = v1;
  v4 = sub_25268DBC0();
  v57 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v56 - v8;
  v10 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20, &qword_2526A9B80);
  MEMORY[0x2530A4210](v14);
  v15 = *(v11 + 48);
  if (v15(v9, 1, v10) == 1)
  {
    return sub_252372288(v9, &qword_27F4DB258, &unk_252696090);
  }

  sub_25251C8E8(v9, v13, type metadata accessor for AccessoryControl.ThermostatState);
  v17 = sub_25268F2C0();
  sub_252692F50();
  v19 = v18;

  v20 = *(v2 + *(type metadata accessor for ThermostatControlView(0) + 20) + 16);
  if (v19 < v20)
  {
    v19 = v19 * ceil(v20 / v19);
  }

  if (a1)
  {
    v21 = sub_2526933B0();

    v22.n128_u64[0] = -1.0;
    if (v21)
    {
      v22.n128_f64[0] = 1.0;
    }
  }

  else
  {

    v22.n128_u64[0] = 1.0;
  }

  v23 = v19 * v22.n128_f64[0];
  if (!*(v13 + 32))
  {
    v50 = v13[2];
    v51 = sub_252517224(v58);
    v53 = v52;
    if (!v15(v52, 1, v10))
    {
      v54.n128_f64[0] = v23 + v50;
      sub_25251B27C(v54);
      *(v53 + 2) = v55;
      *(v53 + 3) = 0;
      v53[32] = 0;
    }

    v51(v58, 0);
    v48 = sub_25268F2E0();
    goto LABEL_21;
  }

  if (*(v13 + 32) == 1)
  {
    v24 = v13[2];
    v22.n128_f64[0] = v23 + v13[3];
    sub_25251B27C(v22);
    v26 = v25;
    v27.n128_f64[0] = v23 + v24;
    sub_25251B27C(v27);
    v29 = v28;
    v30 = sub_252517224(v58);
    v32 = v31;
    if (!v15(v31, 1, v10))
    {
      *(v32 + 2) = v29;
      *(v32 + 3) = v26;
      v32[32] = 1;
    }

    v30(v58, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE90, &qword_2526A9310);
    v33 = swift_allocObject();
    v56 = xmmword_252694EA0;
    *(v33 + 16) = xmmword_252694EA0;
    *(v33 + 32) = sub_25268F2E0();
    *(v33 + 40) = v34;
    *(v33 + 48) = sub_25268F2E0();
    *(v33 + 56) = v35;
    v58[0] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB570, &unk_2526965A0);
    sub_2523E15A4();
    v36 = sub_252692B40();
    v38 = v37;

    v39 = swift_allocObject();
    *(v39 + 16) = v56;
    *(v39 + 32) = sub_25268F2E0();
    *(v39 + 40) = v40;
    *(v39 + 48) = sub_25268F2E0();
    *(v39 + 56) = v41;
    v58[0] = v39;
    v42 = sub_252692B40();
    v44 = v43;

    v45 = [objc_opt_self() sharedApplication];
    v46 = [v45 userInterfaceLayoutDirection];

    if (v46)
    {
      v47 = v44;
    }

    else
    {
      v42 = v36;
      v47 = v38;
    }

    v48 = v42;
    v49 = v47;
LABEL_21:
    MEMORY[0x25309F740](v48, v49);
    sub_25268DBB0();
    (*(v57 + 8))(v6, v4);
  }

  return sub_25251C888(v13, type metadata accessor for AccessoryControl.ThermostatState);
}

double sub_252519F3C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if ((*a2 & 1) == 0)
  {
    type metadata accessor for ThermostatControlView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D20, &unk_2526A40C0);
    sub_2526924E0();
    sub_252516D30();
  }

  return result;
}

uint64_t sub_252519FB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D28, &unk_2526AB120);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  if (*(a1 + *(type metadata accessor for ThermostatControlView(0) + 40)))
  {

    sub_25251F98C(v7);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_25237153C(v7, v4, &qword_27F4E0D28, &unk_2526AB120);
    sub_252690690();
    return sub_252372288(v7, &qword_27F4E0D28, &unk_2526AB120);
  }

  else
  {
    type metadata accessor for AccessoryControlLegacyViewModel(0);
    sub_25251CB3C(&qword_27F4E0C50, type metadata accessor for AccessoryControlLegacyViewModel, &unk_2526AB130);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

void *sub_25251A150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C70, &unk_2526A41A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v15[-v8];
  v10 = (a3 + *(type metadata accessor for ThermostatControlView(0) + 52));
  v11 = *v10;
  v12 = *(v10 + 1);
  v15[16] = v11;
  v16 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320, &unk_25269FA20);
  result = sub_2526924E0();
  if ((v15[15] & 1) == 0)
  {
    v14 = _s9KnobStateOMa(0);
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    sub_25237153C(v9, v6, &qword_27F4E0C70, &unk_2526A41A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C28, &unk_2526A3FD0);
    sub_2526924F0();
    return sub_252372288(v9, &qword_27F4E0C70, &unk_2526A41A0);
  }

  return result;
}

uint64_t sub_25251A2E0(uint64_t a1)
{
  v2 = sub_252691900();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CDE498])
  {
    return sub_2525199C4(0);
  }

  if (v7 == *MEMORY[0x277CDE490])
  {
    return sub_2525199C4(1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_25251A424(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for ThermostatControlView(0) + 20);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C60, &unk_2526A4000);
  swift_allocObject();
  sub_25262576C(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D20, &unk_2526A40C0);
  return sub_2526924F0();
}

uint64_t sub_25251A4DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20, &qword_2526A9B80);
  MEMORY[0x2530A4210](v8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_252372288(v3, &qword_27F4DB258, &unk_252696090);
    return 0;
  }

  sub_25251C8E8(v3, v7, type metadata accessor for AccessoryControl.ThermostatState);
  if (v7[1])
  {
    sub_25251C888(v7, type metadata accessor for AccessoryControl.ThermostatState);
    return 0;
  }

  v10 = *v7;
  v11 = type metadata accessor for ThermostatControlView(0);
  v12 = (v10 - *(v0 + *(v11 + 20))) / (*(v0 + *(v11 + 20) + 8) - *(v0 + *(v11 + 20)));
  sub_25251C888(v7, type metadata accessor for AccessoryControl.ThermostatState);
  v13 = 0.0;
  if (v12 > 0.0)
  {
    v13 = v12;
  }

  if (v13 > 1.0)
  {
    v13 = 1.0;
  }

  return *&v13;
}

uint64_t sub_25251A6F8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C70, &unk_2526A41A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  type metadata accessor for ThermostatControlView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C28, &unk_2526A3FD0);
  sub_2526924E0();
  v7 = _s9KnobStateOMa(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) != 1)
  {
    return sub_25251C8E8(v6, a2, _s9KnobStateOMa);
  }

  sub_252372288(v6, &qword_27F4E0C70, &unk_2526A41A0);
  return sub_25251C950(a1, a2, _s9KnobStateOMa);
}

uint64_t sub_25251A84C(double *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C70, &unk_2526A41A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  sub_25251C950(a1, &v10 - v6, _s9KnobStateOMa);
  v8 = _s9KnobStateOMa(0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  type metadata accessor for ThermostatControlView(0);
  sub_25237153C(v7, v4, &qword_27F4E0C70, &unk_2526A41A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C28, &unk_2526A3FD0);
  sub_2526924F0();
  sub_252372288(v7, &qword_27F4E0C70, &unk_2526A41A0);
  return sub_25251A9C4(a1);
}

uint64_t sub_25251A9C4(double *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20, &qword_2526A9B80);
  MEMORY[0x28223BE20](v4);
  v6 = v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  v10 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25251AC28(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_252372288(v9, &qword_27F4DB258, &unk_252696090);
  }

  sub_25251C8E8(v9, v13, type metadata accessor for AccessoryControl.ThermostatState);
  v15 = (v2 + *(type metadata accessor for ThermostatControlView(0) + 44));
  v17 = *v15;
  v16 = v15[1];
  v18[2] = v17;
  v18[3] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D20, &unk_2526A40C0);
  sub_2526924E0();
  sub_2526926D0();
  sub_252535E4C(v6, v13);

  sub_252372288(v6, &qword_27F4E0C20, &qword_2526A9B80);
  return sub_25251C888(v13, type metadata accessor for AccessoryControl.ThermostatState);
}

uint64_t sub_25251AC28@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v67 = a1;
  v66 = _s9KnobStateOMa(0);
  MEMORY[0x28223BE20](v66);
  v68 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s4KnobVMa(0);
  MEMORY[0x28223BE20](v6);
  v63 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = &v60 - v9;
  MEMORY[0x28223BE20](v10);
  v64 = &v60 - v11;
  v12 = sub_2526910F0();
  v65 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v60 - v16;
  v18 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20, &qword_2526A9B80);
  MEMORY[0x2530A4210](v22);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_252372288(v17, &qword_27F4DB258, &unk_252696090);
    v23 = 1;
    return (*(v19 + 56))(a2, v23, 1, v18);
  }

  sub_25251C8E8(v17, v21, type metadata accessor for AccessoryControl.ThermostatState);
  v24 = type metadata accessor for ThermostatControlView(0);
  v25 = v3 + *(v24 + 32);
  v26 = *v25;
  if (*(v25 + 8) == 1)
  {
    if ((v26 & 1) == 0)
    {
LABEL_5:
      sub_25251C888(v21, type metadata accessor for AccessoryControl.ThermostatState);
      v23 = 1;
      return (*(v19 + 56))(a2, v23, 1, v18);
    }
  }

  else
  {

    sub_252692F00();
    v60 = v12;
    v27 = sub_2526919C0();
    v61 = v18;
    v28 = v6;
    v29 = a2;
    v30 = v27;
    sub_252690570();

    a2 = v29;
    v6 = v28;
    v18 = v61;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v26, 0);
    (*(v65 + 8))(v14, v60);
    if (v69 != 1)
    {
      goto LABEL_5;
    }
  }

  v31 = v68;
  sub_25251C950(v67, v68, _s9KnobStateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09C0, &qword_2526A3A70);
      v67 = v21;
      v40 = v24;
      v41 = v3;
      v42 = *(v39 + 48);
      v43 = v62;
      sub_25251C8E8(v31, v62, _s4KnobVMa);
      v44 = v31 + v42;
      v45 = v63;
      sub_25251C8E8(v44, v63, _s4KnobVMa);
      v46 = *(v6 + 20);
      v47.n128_u64[0] = *(v43 + v46);
      if (v47.n128_f64[0] <= 1.0)
      {
        v48 = *(v43 + v46);
      }

      else
      {
        v48 = 1.0;
      }

      if (v47.n128_f64[0] > 0.0)
      {
        v47.n128_f64[0] = v48;
      }

      else
      {
        v47.n128_f64[0] = 0.0;
      }

      v49 = *(v40 + 20);
      v21 = v67;
      v50 = (v41 + v49);
      v51 = *v50;
      v52 = v50[1] - *v50;
      v47.n128_f64[0] = *v50 + v47.n128_f64[0] * v52;
      sub_25251B27C(v47);
      v53 = v55.n128_u64[0];
      v54 = *(v6 + 20);
      v55.n128_u64[0] = *(v45 + v54);
      if (v55.n128_f64[0] <= 1.0)
      {
        v56 = *(v45 + v54);
      }

      else
      {
        v56 = 1.0;
      }

      if (v55.n128_f64[0] > 0.0)
      {
        v55.n128_f64[0] = v56;
      }

      else
      {
        v55.n128_f64[0] = 0.0;
      }

      v55.n128_f64[0] = v51 + v52 * v55.n128_f64[0];
      sub_25251B27C(v55);
      v58 = v57;
      sub_25251C888(v45, _s4KnobVMa);
      sub_25251C888(v43, _s4KnobVMa);
      *(v21 + 2) = v53;
      *(v21 + 3) = v58;
      *(v21 + 32) = 1;
    }

    else
    {
      sub_25251C888(v31, _s9KnobStateOMa);
    }
  }

  else
  {
    v33 = v64;
    sub_25251C8E8(v31, v64, _s4KnobVMa);
    v34.n128_u64[0] = *(v33 + *(v6 + 20));
    v35 = 1.0;
    if (v34.n128_f64[0] <= 1.0)
    {
      v35 = *(v33 + *(v6 + 20));
    }

    v36 = v34.n128_f64[0] > 0.0;
    v34.n128_u64[0] = 0;
    if (v36)
    {
      v34.n128_f64[0] = v35;
    }

    v34.n128_f64[0] = *(v3 + *(v24 + 20)) + v34.n128_f64[0] * (*(v3 + *(v24 + 20) + 8) - *(v3 + *(v24 + 20)));
    sub_25251B27C(v34);
    v38 = v37;
    sub_25251C888(v33, _s4KnobVMa);
    *(v21 + 2) = v38;
    v21[3] = 0.0;
    *(v21 + 32) = 0;
  }

  sub_25251C8E8(v21, a2, type metadata accessor for AccessoryControl.ThermostatState);
  v23 = 0;
  return (*(v19 + 56))(a2, v23, 1, v18);
}

void sub_25251B27C(__n128 a1)
{
  v1 = sub_25268F2C0();
  sub_252692F50();

  type metadata accessor for ThermostatControlView(0);
  v2 = sub_25268F2C0();
  sub_252692F50();
}

uint64_t sub_25251B338()
{
  result = sub_252692290();
  qword_27F4FB468 = result;
  return result;
}

uint64_t sub_25251B370()
{
  result = sub_252692290();
  qword_27F4FB470 = result;
  return result;
}

uint64_t type metadata accessor for ThermostatControlView(uint64_t a1)
{
  result = qword_27F4E0C30;
  if (!qword_27F4E0C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25251B454(uint64_t a1)
{
  sub_25251B6E8(319, &qword_27F4E0C40, &qword_27F4DB258, &unk_252696090, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_25248E21C(319, &qword_27F4DE328, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_25248E21C(319, &qword_27F4DBD08, &type metadata for AccessoryControlsStyle, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_25251B654(319);
        if (v4 <= 0x3F)
        {
          sub_25251B6E8(319, &qword_27F4E0C58, &qword_27F4E0C60, &unk_2526A4000, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_25251B6E8(319, &qword_27F4E0C68, &qword_27F4E0C70, &unk_2526A41A0, MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_25248E21C(319, &qword_27F4DE678, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_25251B654(uint64_t a1)
{
  if (!qword_27F4E0C48)
  {
    type metadata accessor for AccessoryControlLegacyViewModel(255);
    sub_25251CB3C(&qword_27F4E0C50, type metadata accessor for AccessoryControlLegacyViewModel, &unk_2526AB130);
    v1 = sub_252690E00();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4E0C48);
    }
  }
}

void sub_25251B6E8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_25251B768()
{
  result = *v0;
  if (*v0 > 1u || *v0)
  {
    type metadata accessor for _BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    return sub_252692440();
  }

  return result;
}

uint64_t sub_25251B8A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThermostatControlView(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(_s9KnobStateOMa(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_25251A6F8(v7, a1);
}

uint64_t sub_25251B97C(double *a1)
{
  type metadata accessor for ThermostatControlView(0);

  return sub_25251A84C(a1);
}

double sub_25251BA54(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for ThermostatControlView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_252519F3C(a1, a2, v6);
}

unint64_t sub_25251BAD4()
{
  result = qword_27F4E0CD0;
  if (!qword_27F4E0CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0C78, &qword_2526A4060);
    sub_25251CB3C(&qword_27F4E0CD8, type metadata accessor for RingControlView, &unk_2526A4508);
    sub_25251CB3C(&qword_27F4E0CE0, _s22StatusTextViewModifierVMa, &unk_2526A4200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0CD0);
  }

  return result;
}

unint64_t sub_25251BC18()
{
  result = qword_27F4E0CE8;
  if (!qword_27F4E0CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0C70, &unk_2526A41A0);
    sub_25251CB3C(&qword_27F4E0C00, _s9KnobStateOMa, &unk_2526A3F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0CE8);
  }

  return result;
}

void *sub_25251BCCC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ThermostatControlView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_25251A150(a1, a2, v6);
}

unint64_t sub_25251BD4C()
{
  result = qword_27F4E0CF0;
  if (!qword_27F4E0CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB258, &unk_252696090);
    sub_25251CB3C(&qword_27F4DCAA0, type metadata accessor for AccessoryControl.ThermostatState, &protocol conformance descriptor for AccessoryControl.ThermostatState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0CF0);
  }

  return result;
}

unint64_t sub_25251BE00()
{
  result = qword_27F4E0CF8;
  if (!qword_27F4E0CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0CB8, &qword_2526A40A0);
    sub_25251BE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0CF8);
  }

  return result;
}

unint64_t sub_25251BE8C()
{
  result = qword_27F4E0D00;
  if (!qword_27F4E0D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0CB0, &qword_2526A4098);
    sub_25251BF18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0D00);
  }

  return result;
}

unint64_t sub_25251BF18()
{
  result = qword_27F4E0D08;
  if (!qword_27F4E0D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0CA8, &qword_2526A4090);
    sub_25251BFA4();
    sub_252497E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0D08);
  }

  return result;
}

unint64_t sub_25251BFA4()
{
  result = qword_27F4E0D10;
  if (!qword_27F4E0D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0CA0, &qword_2526A4088);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0C90, &qword_2526A4078);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB258, &unk_252696090);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0C88, &qword_2526A4070);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0C70, &unk_2526A41A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0C80, &qword_2526A4068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0C78, &qword_2526A4060);
    sub_25251BAD4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_25251BC18();
    swift_getOpaqueTypeConformance2();
    sub_25251BD4C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0D10);
  }

  return result;
}

uint64_t sub_25251C188(uint64_t a1)
{
  type metadata accessor for ThermostatControlView(0);

  return sub_25251A2E0(a1);
}

uint64_t objectdestroy_7Tm_0()
{
  v1 = type metadata accessor for ThermostatControlView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20, &qword_2526A9B80) + 32);
  v7 = type metadata accessor for AccessoryControl.ThermostatState(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    goto LABEL_5;
  }

  v8 = v6 + *(v7 + 32);
  v9 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328, &unk_252696040);
      if ((*(*(v16 - 8) + 48))(v8, 1, v16))
      {
        goto LABEL_3;
      }

      v32 = v4;
      v17 = *(v16 + 48);
      v18 = sub_25268D990();
      (*(*(v18 - 8) + 8))(v8 + v17, v18);
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308, &unk_252699490);
      if ((*(*(v16 - 8) + 48))(v8, 3, v16))
      {
        goto LABEL_3;
      }

      v32 = v4;
      v22 = *(v16 + 48);
      v23 = sub_25268D990();
      v29 = *(v23 - 8);
      v31 = v22;
      v24 = v8 + v22;
      v25 = v23;
      if (!(*(v29 + 48))(v24, 1, v23))
      {
        (*(v29 + 8))(v8 + v31, v25);
      }
    }

    v26 = *(v16 + 64);
    v27 = sub_25268DB10();
    (*(*(v27 - 8) + 8))(v8 + v26, v27);
    v4 = v32;
  }

LABEL_3:
  if (*(v6 + *(v7 + 36) + 8) >= 8uLL)
  {
  }

LABEL_5:

  sub_25235E264(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v10 = v5 + v1[9];
  sub_252457A80(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 65));

  v11 = v5 + v1[12];
  v12 = _s9KnobStateOMa(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    goto LABEL_19;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v19 = sub_25268DA10();
    v20 = *(v19 - 8);
    v30 = *(v20 + 48);
    if (!v30(v11, 2, v19))
    {
      (*(v20 + 8))(v11, v19);
    }

    _s4KnobVMa(0);

    v21 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09C0, &qword_2526A3A70) + 48);
    if (!v30(v21, 2, v19))
    {
      (*(v20 + 8))(v21, v19);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_19;
    }

    v14 = sub_25268DA10();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v11, 2, v14))
    {
      (*(v15 + 8))(v11, v14);
    }

    _s4KnobVMa(0);
  }

LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C28, &unk_2526A3FD0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25251C828()
{
  v1 = *(type metadata accessor for ThermostatControlView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25251A424(v2);
}

uint64_t sub_25251C888(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25251C8E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25251C950(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25251C9B8()
{
  result = qword_27F4E0D48;
  if (!qword_27F4E0D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0D18, &qword_2526A40B8);
    sub_25251CA44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0D48);
  }

  return result;
}

unint64_t sub_25251CA44()
{
  result = qword_27F4E0D50;
  if (!qword_27F4E0D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0CC8, &qword_2526A40B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0CB8, &qword_2526A40A0);
    sub_25251BE00();
    swift_getOpaqueTypeConformance2();
    sub_25251CB3C(&qword_27F4DD380, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0D50);
  }

  return result;
}

uint64_t sub_25251CB3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25251CB88@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v23 = sub_25268D7D0();
  v5 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = [v8 systemFontOfSize:sub_25251E06C() weight:*MEMORY[0x277D74420]];
  if (qword_27F4DAAD0 != -1)
  {
    swift_once();
  }

  v10 = qword_27F4FB478;

  v11 = sub_25251E3AC();
  v13 = v12;
  sub_25251E89C();
  v15 = v14;
  sub_25251EBF4(v7);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20, &qword_2526A9B80);
  MEMORY[0x2530A4210](v16);
  v17 = type metadata accessor for AccessoryControl.ThermostatState(0);
  if ((*(*(v17 - 8) + 48))(v4, 1, v17))
  {
    v18 = 0;
  }

  else
  {
    v18 = v4[*(v17 + 40)] == 3;
  }

  sub_252372288(v4, &qword_27F4DB258, &unk_252696090);
  v19 = sub_25251F018();
  *a1 = v10;
  *(a1 + 1) = v11;
  *(a1 + 2) = v13;
  *(a1 + 3) = v15;
  v20 = _s22StatusTextViewModifierV6ConfigVMa(0);
  result = (*(v5 + 32))(&a1[v20[7]], v7, v23);
  *&a1[v20[8]] = v9;
  a1[v20[9]] = v18;
  *&a1[v20[10]] = v19;
  return result;
}

double sub_25251CE1C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = _s22StatusTextViewModifierVMa(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = *a1;
  if (v9)
  {
    sub_25252046C(a2, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), _s22StatusTextViewModifierVMa);
    v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    sub_2525200BC(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, _s22StatusTextViewModifierVMa);
    KeyPath = swift_getKeyPath();
    v13 = swift_getKeyPath();
    v14 = 0x3F847AE147AE147BLL;
    v15 = sub_252520804;
    v16 = 1;
  }

  else
  {
    v15 = 0;
    v11 = 0;
    KeyPath = 0;
    v14 = 0;
    v13 = 0;
    v16 = 0;
  }

  *a3 = v15;
  *(a3 + 8) = v11;
  *(a3 + 16) = KeyPath;
  *(a3 + 24) = v14;
  *(a3 + 32) = v13;
  *(a3 + 40) = v16;
  *(a3 + 48) = 0;

  return result;
}

uint64_t sub_25251CFAC@<X0>(uint64_t a1@<X0>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v142 = a4;
  v6 = sub_25268D7D0();
  v129 = *(v6 - 8);
  v130 = v6;
  MEMORY[0x28223BE20](v6);
  v128 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0DB0, &qword_2526A42C0);
  MEMORY[0x28223BE20](v132);
  v139 = &v116 - v8;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0DB8, &qword_2526A42C8);
  MEMORY[0x28223BE20](v133);
  v138 = &v116 - v9;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0DC0, &qword_2526A42D0);
  MEMORY[0x28223BE20](v136);
  v137 = &v116 - v10;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0DC8, &qword_2526A42D8);
  MEMORY[0x28223BE20](v135);
  v141 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v134 = &v116 - v13;
  MEMORY[0x28223BE20](v14);
  v140 = &v116 - v15;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0DD0, &qword_2526A42E0);
  MEMORY[0x28223BE20](v118);
  v17 = &v116 - v16;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0DD8, &qword_2526A42E8);
  MEMORY[0x28223BE20](v119);
  v122 = &v116 - v18;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0DE0, &qword_2526A42F0);
  MEMORY[0x28223BE20](v120);
  v123 = &v116 - v19;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0DE8, &qword_2526A42F8);
  MEMORY[0x28223BE20](v125);
  v126 = &v116 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0DF0, &qword_2526A4300);
  MEMORY[0x28223BE20](v21 - 8);
  v131 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v145 = &v116 - v24;
  type metadata accessor for CGPoint(0);
  v144 = a1;
  sub_252690A30();
  v25 = v155;
  v26 = &a3[*(_s22StatusTextViewModifierVMa(0) + 20)];
  v27 = *(v26 + 1);
  v28 = *(v26 + 2);
  v143 = v26;

  v121 = v27;
  v29 = sub_252691D00();
  v31 = v30;
  v33 = v32;
  v124 = v28;

  v127 = a3;
  if (*a3 == 1)
  {
    v34 = sub_2526922D0();
  }

  else
  {
    v34 = sub_252692380();
  }

  *&v155 = v34;
  v35 = sub_252691CD0();
  v37 = v36;
  v39 = v38;
  v117 = v40;
  sub_2524228D8(v29, v31, v33 & 1);

  KeyPath = swift_getKeyPath();
  v42 = &v17[*(v118 + 36)];
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD3F8, &qword_25269CD88) + 28);
  sub_252692870();
  v44 = sub_2526928A0();
  (*(*(v44 - 8) + 56))(v42 + v43, 0, 1, v44);
  *v42 = KeyPath;
  *v17 = v35;
  *(v17 + 1) = v37;
  v17[16] = v39 & 1;
  *(v17 + 3) = v117;
  v45 = swift_getKeyPath();
  v46 = v122;
  v47 = &v122[*(v119 + 36)];
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF00, &unk_25269F1C0) + 28);
  v49 = *MEMORY[0x277CDF3C0];
  v50 = sub_252690850();
  (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
  *v47 = v45;
  sub_2523714D4(v17, v46, &qword_27F4E0DD0, &qword_2526A42E0);
  sub_2526909F0();
  sub_252692920();
  sub_252690D70();
  v51 = v123;
  sub_2523714D4(v46, v123, &qword_27F4E0DD8, &qword_2526A42E8);
  v52 = (v51 + *(v120 + 36));
  v53 = v160;
  v52[4] = v159;
  v52[5] = v53;
  v52[6] = v161;
  v54 = v156;
  *v52 = v155;
  v52[1] = v54;
  v55 = v158;
  v52[2] = v157;
  v52[3] = v55;
  v56 = sub_25251DD08(*&v25);
  v58 = v57;
  v59 = v51;
  v60 = v126;
  sub_2523714D4(v59, v126, &qword_27F4E0DE0, &qword_2526A42F0);
  v61 = v124;
  v62 = (v60 + *(v125 + 36));
  *v62 = v56;
  *(v62 + 1) = v58;
  v63 = v121;
  if (v121 == 32 && v61 == 0xE100000000000000 || (sub_2526933B0() & 1) != 0)
  {
    v63 = 0;
    v61 = 0xE000000000000000;
  }

  else
  {
  }

  v153 = v63;
  v154 = v61;
  sub_252520BD0();
  sub_252404480();
  sub_252691FB0();

  sub_252372288(v60, &qword_27F4E0DE8, &qword_2526A42F8);
  v64 = _s22StatusTextViewModifierV6ConfigVMa(0);
  v65 = *(v64 + 28);
  v66 = v64;
  v127 = v64;
  v67 = v143;
  (*(v129 + 16))(v128, &v143[v65], v130);
  v68 = sub_252691D40();
  v70 = v69;
  v72 = v71;
  v128 = *&v67[*(v66 + 32)];
  sub_252691BE0();
  v73 = sub_252691D00();
  v75 = v74;
  LOBYTE(v66) = v76;
  v130 = v77;

  sub_2524228D8(v68, v70, v72 & 1);

  v78 = sub_252691D10();
  v80 = v79;
  LOBYTE(v70) = v81;
  sub_2524228D8(v73, v75, v66 & 1);

  v82 = v127;
  v83 = v67;
  v153 = *&v67[*(v127 + 10)];

  v84 = sub_252691CD0();
  v129 = v85;
  v130 = v84;
  v87 = v86;
  v89 = v88;
  sub_2524228D8(v78, v80, v70 & 1);

  sub_2526909F0();
  v90 = 0.0;
  sub_252692920();
  sub_252690D70();
  LOBYTE(v153) = v87 & 1;
  if (v83[*(v82 + 9)])
  {
    [v128 descender];
    v83 = v143;
    v90 = v91 * 0.5;
  }

  v92 = *(v83 + 3);
  v93 = v139;
  v94 = &v139[*(v132 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E01F0, &qword_2526A2BD8);
  sub_252690DA0();
  *v94 = swift_getKeyPath();
  v95 = v129;
  *v93 = v130;
  *(v93 + 8) = v95;
  *(v93 + 16) = v87 & 1;
  *(v93 + 24) = v89;
  v96 = v151;
  *(v93 + 96) = v150;
  *(v93 + 112) = v96;
  *(v93 + 128) = v152;
  v97 = v147;
  *(v93 + 32) = v146;
  *(v93 + 48) = v97;
  v98 = v149;
  *(v93 + 64) = v148;
  *(v93 + 80) = v98;
  *(v93 + 144) = v25;
  *(v93 + 152) = *(&v25 + 1) + v90;
  v99 = swift_getKeyPath();
  v100 = v138;
  v101 = &v138[*(v133 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0E20, &qword_2526A43D0);
  sub_252690DB0();
  *v101 = v99;
  v102 = sub_2523714D4(v93, v100, &qword_27F4E0DB0, &qword_2526A42C0);
  v103 = MEMORY[0x2530A4500](v102, 0.5, 0.7, 0.0);
  v104 = v137;
  sub_2523714D4(v100, v137, &qword_27F4E0DB8, &qword_2526A42C8);
  v105 = (v104 + *(v136 + 36));
  *v105 = v103;
  v105[1] = v92;
  v106 = swift_getKeyPath();
  v107 = v134;
  sub_2523714D4(v104, v134, &qword_27F4E0DC0, &qword_2526A42D0);
  v108 = v107 + *(v135 + 36);
  *v108 = v106;
  *(v108 + 8) = 1;
  v109 = v140;
  sub_2523714D4(v107, v140, &qword_27F4E0DC8, &qword_2526A42D8);
  v110 = v145;
  v111 = v131;
  sub_25237153C(v145, v131, &qword_27F4E0DF0, &qword_2526A4300);
  v112 = v141;
  sub_25237153C(v109, v141, &qword_27F4E0DC8, &qword_2526A42D8);
  v113 = v142;
  sub_25237153C(v111, v142, &qword_27F4E0DF0, &qword_2526A4300);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0E28, &unk_2526A4408);
  sub_25237153C(v112, v113 + *(v114 + 48), &qword_27F4E0DC8, &qword_2526A42D8);
  sub_252372288(v109, &qword_27F4E0DC8, &qword_2526A42D8);
  sub_252372288(v110, &qword_27F4E0DF0, &qword_2526A4300);
  sub_252372288(v112, &qword_27F4E0DC8, &qword_2526A42D8);
  return sub_252372288(v111, &qword_27F4E0DF0, &qword_2526A4300);
}

double sub_25251DD08(double a1)
{
  v3 = v1 + *(_s22StatusTextViewModifierVMa(0) + 20);
  v4 = _s22StatusTextViewModifierV6ConfigVMa(0);
  v5 = v4;
  if (*(v3 + *(v4 + 36)) == 1)
  {
    [*(v3 + *(v4 + 32)) descender];
  }

  [*(v3 + *(v5 + 32)) lineHeight];
  if (qword_27F4DAAE0 != -1)
  {
    swift_once();
  }

  return a1 + 0.0;
}

uint64_t sub_25251DE10(uint64_t a1)
{
  v2 = sub_252690DC0();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_252690FC0();
}

uint64_t sub_25251DEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  sub_25252046C(v7, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s22StatusTextViewModifierVMa);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_2525200BC(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, _s22StatusTextViewModifierVMa);
  v10 = sub_252692920();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0DA0, &qword_2526A4250);
  (*(*(v13 - 8) + 16))(a3, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0DA8, &qword_2526A4258);
  v15 = (a3 + *(result + 36));
  *v15 = sub_252520784;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v12;
  return result;
}

double sub_25251E06C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C70, &unk_2526A41A0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18 - v1;
  v3 = _s9KnobStateOMa(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ThermostatControlView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C28, &unk_2526A3FD0);
  sub_2526924E0();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_252372288(v2, &qword_27F4E0C70, &unk_2526A41A0);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20, &qword_2526A9B80);
    MEMORY[0x2530A4210](v14);
  }

  else
  {
    sub_2525200BC(v2, v6, _s9KnobStateOMa);
    sub_25251AC28(v6, v9);
    sub_2525204D4(v6, _s9KnobStateOMa);
  }

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_252372288(v9, &qword_27F4DB258, &unk_252696090);
    return 72.0;
  }

  sub_2525200BC(v9, v13, type metadata accessor for AccessoryControl.ThermostatState);
  v15 = v13[*(v10 + 40)];
  sub_2525204D4(v13, type metadata accessor for AccessoryControl.ThermostatState);
  if (v15 != 3)
  {
    return 72.0;
  }

  return 48.0;
}

uint64_t sub_25251E3AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C70, &unk_2526A41A0);
  MEMORY[0x28223BE20](v0 - 8);
  v34 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - v3;
  v5 = _s9KnobStateOMa(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = (&v29 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  v17 = *(type metadata accessor for ThermostatControlView(0) + 48);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C28, &unk_2526A3FD0);
  v32 = v17;
  sub_2526924E0();
  v18 = *(v6 + 48);
  v33 = v5;
  if (v18(v4, 1, v5) == 1)
  {
    sub_252372288(v4, &qword_27F4E0C70, &unk_2526A41A0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20, &qword_2526A9B80);
    MEMORY[0x2530A4210](v19);
  }

  else
  {
    sub_2525200BC(v4, v10, _s9KnobStateOMa);
    sub_25251AC28(v10, v16);
    sub_2525204D4(v10, _s9KnobStateOMa);
  }

  v20 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v21 = *(*(v20 - 8) + 48);
  if (v21(v16, 1, v20) == 1)
  {
    sub_252372288(v16, &qword_27F4DB258, &unk_252696090);
    v22 = 4;
  }

  else
  {
    v22 = v16[*(v20 + 40)];
    sub_2525204D4(v16, type metadata accessor for AccessoryControl.ThermostatState);
  }

  v23 = v34;
  sub_2526924E0();
  if (v18(v23, 1, v33) == 1)
  {
    sub_252372288(v23, &qword_27F4E0C70, &unk_2526A41A0);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20, &qword_2526A9B80);
    MEMORY[0x2530A4210](v24);
  }

  else
  {
    v25 = v30;
    sub_2525200BC(v23, v30, _s9KnobStateOMa);
    sub_25251AC28(v25, v13);
    sub_2525204D4(v25, _s9KnobStateOMa);
  }

  if (v21(v13, 1, v20) == 1)
  {
    sub_252372288(v13, &qword_27F4DB258, &unk_252696090);
    v26 = 255;
  }

  else
  {
    v26 = v13[32];
    sub_2525204D4(v13, type metadata accessor for AccessoryControl.ThermostatState);
  }

  v27 = 32;
  if (v22 <= 1)
  {
    if (!v22)
    {
      return v27;
    }

    return sub_252692C40();
  }

  if (v22 == 2)
  {
    return sub_252692C40();
  }

  if (v22 == 3)
  {
    if (v26 > 1)
    {
      return 32;
    }

    return sub_252692C40();
  }

  return v27;
}

uint64_t sub_25251E89C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C70, &unk_2526A41A0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = _s9KnobStateOMa(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ThermostatControlView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C28, &unk_2526A3FD0);
  sub_2526924E0();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_252372288(v2, &qword_27F4E0C70, &unk_2526A41A0);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20, &qword_2526A9B80);
    MEMORY[0x2530A4210](v14);
  }

  else
  {
    sub_2525200BC(v2, v6, _s9KnobStateOMa);
    sub_25251AC28(v6, v9);
    sub_2525204D4(v6, _s9KnobStateOMa);
  }

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_252372288(v9, &qword_27F4DB258, &unk_252696090);
  }

  sub_2525200BC(v9, v13, type metadata accessor for AccessoryControl.ThermostatState);
  return sub_2525204D4(v13, type metadata accessor for AccessoryControl.ThermostatState);
}

uint64_t sub_25251EBF4@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = sub_25268D810();
  MEMORY[0x28223BE20](v2 - 8);
  v20 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C70, &unk_2526A41A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = _s9KnobStateOMa(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ThermostatControlView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C28, &unk_2526A3FD0);
  sub_2526924E0();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_252372288(v6, &qword_27F4E0C70, &unk_2526A41A0);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20, &qword_2526A9B80);
    MEMORY[0x2530A4210](v18);
  }

  else
  {
    sub_2525200BC(v6, v10, _s9KnobStateOMa);
    sub_25251AC28(v10, v13);
    sub_2525204D4(v10, _s9KnobStateOMa);
  }

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_252372288(v13, &qword_27F4DB258, &unk_252696090);
    return sub_25268D790();
  }

  sub_2525200BC(v13, v17, type metadata accessor for AccessoryControl.ThermostatState);
  if (v17[*(v14 + 40)] <= 1u)
  {
    if (!v17[*(v14 + 40)])
    {
      goto LABEL_15;
    }

LABEL_10:
    if (!v17[32])
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v17[*(v14 + 40)] == 2)
  {
    goto LABEL_10;
  }

  if (!v17[32])
  {
LABEL_16:
    sub_25268F2E0();
    goto LABEL_17;
  }

  if (v17[32] != 1)
  {
LABEL_15:
    sub_252692C40();
LABEL_17:
    sub_25268D800();
    sub_25268D7E0();
    return sub_2525204D4(v17, type metadata accessor for AccessoryControl.ThermostatState);
  }

  sub_25251F1BC(v21);
  return sub_2525204D4(v17, type metadata accessor for AccessoryControl.ThermostatState);
}

uint64_t sub_25251F018()
{
  v1 = sub_2526910F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ThermostatControlView(0) + 36);
  v15 = *(v5 + 64);
  v6 = *(v5 + 48);
  v14[2] = *(v5 + 32);
  v14[3] = v6;
  v7 = *(v5 + 16);
  v14[0] = *v5;
  v14[1] = v7;
  if ((v15 & 0x100) != 0)
  {
    v8 = *(v5 + 48);
    v12[2] = *(v5 + 32);
    v12[3] = v8;
    v13 = *(v5 + 64);
    v9 = *(v5 + 16);
    v12[0] = *v5;
    v12[1] = v9;
  }

  else
  {

    sub_252692F00();
    v10 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v14, &qword_27F4DC120, &qword_25269CED0);
    (*(v2 + 8))(v4, v1);
  }

  if (LOBYTE(v12[0]) == 1)
  {
    return sub_252692360();
  }

  else
  {
    return sub_252692330();
  }
}

uint64_t sub_25251F1BC@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD40, &qword_2526A1820);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v33 - v4;
  v5 = sub_25268D810();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_25268D7D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v33 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v34 = &v33 - v10;
  MEMORY[0x28223BE20](v11);
  v35 = &v33 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v33 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v33 - v23;
  sub_25268F2E0();
  sub_25268D800();
  sub_25268D7E0();
  sub_25268F2E0();
  sub_25268D800();
  sub_25268D7E0();
  sub_25268D790();
  sub_25268D790();
  v38 = sub_25251F66C();
  sub_252501C00();
  sub_25268D7F0();
  if (qword_27F4DAAD8 != -1)
  {
    swift_once();
  }

  v38 = qword_27F4FB480;
  sub_252520554();

  sub_25268D7F0();
  sub_252691B40();
  v25 = sub_252691B00();
  v26 = v36;
  (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
  v27 = sub_252691B50();
  sub_252372288(v26, &qword_27F4DBD40, &qword_2526A1820);
  v38 = v27;
  sub_25268D7F0();
  v28 = v33;
  sub_25268D7A0();
  v29 = v34;
  sub_25268D7A0();
  v30 = *(v7 + 8);
  v30(v28, v6);
  v31 = v35;
  sub_25268D7A0();
  v30(v29, v6);
  sub_25268D7A0();
  v30(v31, v6);
  v30(v15, v6);
  v30(v18, v6);
  v30(v21, v6);
  return (v30)(v24, v6);
}

uint64_t sub_25251F66C()
{
  v1 = sub_2526910F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ThermostatControlView(0) + 36);
  v16 = *(v5 + 64);
  v6 = *(v5 + 48);
  v15[2] = *(v5 + 32);
  v15[3] = v6;
  v7 = *(v5 + 16);
  v15[0] = *v5;
  v15[1] = v7;
  if ((v16 & 0x100) != 0)
  {
    v8 = *(v5 + 48);
    v13[2] = *(v5 + 32);
    v13[3] = v8;
    v14 = *(v5 + 64);
    v9 = *(v5 + 16);
    v13[0] = *v5;
    v13[1] = v9;
  }

  else
  {

    sub_252692F00();
    v10 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v15, &qword_27F4DC120, &qword_25269CED0);
    (*(v2 + 8))(v4, v1);
  }

  if (LOBYTE(v13[0]) == 1)
  {
    return sub_252692380();
  }

  sub_252692330();
  v12 = sub_252692350();

  return v12;
}

uint64_t sub_25251F87C(double a1, uint64_t a2, double (*a3)(__n128), uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD40, &qword_2526A1820);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  a3(v7);
  v10 = sub_252691B00();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = sub_252691B50();
  result = sub_252372288(v9, &qword_27F4DBD40, &qword_2526A1820);
  *a4 = v11;
  return result;
}

uint64_t sub_25251F98C@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D60, &unk_2526A4190);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = &v48 - v3;
  v4 = type metadata accessor for Device(0);
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v48 - v7;
  v8 = type metadata accessor for AccessoryControlsHeaderConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v56 = (&v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v48 - v12;
  v14 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v57 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v54 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C70, &unk_2526A41A0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v48 - v17;
  v19 = _s9KnobStateOMa(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v58 = (&v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for ThermostatControlView(0);
  v23 = v1 + *(v22 + 52);
  v24 = *v23;
  v25 = *(v23 + 8);
  v60[0] = v24;
  v61 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320, &unk_25269FA20);
  sub_2526924E0();
  if (v62 != 1)
  {
    return (*(v9 + 56))(v59, 1, 1, v8);
  }

  v49 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C28, &unk_2526A3FD0);
  sub_2526924E0();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v26 = &qword_27F4E0C70;
    v27 = &unk_2526A41A0;
    v28 = v18;
LABEL_7:
    sub_252372288(v28, v26, v27);
    return (*(v9 + 56))(v59, 1, 1, v49);
  }

  v30 = v58;
  sub_2525200BC(v18, v58, _s9KnobStateOMa);
  sub_25251AC28(v30, v13);
  if ((*(v57 + 48))(v13, 1, v14) == 1)
  {
    sub_2525204D4(v30, _s9KnobStateOMa);
    v26 = &qword_27F4DB258;
    v27 = &unk_252696090;
    v28 = v13;
    goto LABEL_7;
  }

  v31 = v54;
  sub_2525200BC(v13, v54, type metadata accessor for AccessoryControl.ThermostatState);
  v32 = *(v1 + *(v22 + 40));
  if (v32)
  {
    v33 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_device;
    swift_beginAccess();
    v34 = v32 + v33;
    v35 = v55;
    sub_25237153C(v34, v55, &qword_27F4E0D60, &unk_2526A4190);
    v36 = (*(v52 + 48))(v35, 1, v53);
    v37 = v59;
    v38 = v49;
    v39 = v56;
    if (v36 == 1)
    {

      sub_252372288(v35, &qword_27F4E0D60, &unk_2526A4190);

      v40 = *(v38 + 24);
      v41 = type metadata accessor for AccessoryControlsHeaderConfig.Image(0);
      (*(*(v41 - 8) + 56))(v39 + v40, 1, 1, v41);
      *v39 = 0;
      v39[1] = 0xE000000000000000;
      v39[2] = 0;
      v39[3] = 0;
    }

    else
    {
      v42 = v35;
      v43 = v50;
      sub_2525200BC(v42, v50, type metadata accessor for Device);
      v44 = v51;
      sub_25252046C(v43, v51, type metadata accessor for Device);
      sub_252430364(v44, v39);
      sub_2525204D4(v43, type metadata accessor for Device);
    }

    v45 = sub_25252017C(v31);
    v47 = v46;
    sub_2525204D4(v31, type metadata accessor for AccessoryControl.ThermostatState);
    sub_2525204D4(v30, _s9KnobStateOMa);

    v39[2] = v45;
    v39[3] = v47;
    sub_25252046C(v39, v37, type metadata accessor for AccessoryControlsHeaderConfig);
    (*(v9 + 56))(v37, 0, 1, v38);
    return sub_2525204D4(v39, type metadata accessor for AccessoryControlsHeaderConfig);
  }

  else
  {
    type metadata accessor for AccessoryControlLegacyViewModel(0);
    sub_252520124();
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_2525200BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_252520124()
{
  result = qword_27F4E0C50;
  if (!qword_27F4E0C50)
  {
    type metadata accessor for AccessoryControlLegacyViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0C50);
  }

  return result;
}

uint64_t sub_25252017C(uint64_t a1)
{
  v2 = sub_25268F290();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(a1 + *(type metadata accessor for AccessoryControl.ThermostatState(0) + 40));
  v7 = *(a1 + 16);
  if (result > 1)
  {
    if (result == 2)
    {
      if (*(a1 + 32))
      {
        return 0;
      }
    }

    else if (*(a1 + 32))
    {
      if (*(a1 + 32) == 1)
      {
        v8 = *(a1 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE630, qword_2526A3CC0);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_252694EA0;
        *(v9 + 32) = v7;
        *(v9 + 40) = v8;
        v10 = sub_25268F2B0();

        return v10;
      }

      return 0;
    }

LABEL_13:
    sub_252422940(0, &qword_27F4E0D68, 0x277CCACA8);
    sub_252692C40();
    v11 = sub_252692BA0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360, &qword_25269F600);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_252694E90;
    (*(v3 + 104))(v5, *MEMORY[0x277D16048], v2);
    v13 = sub_25268F2D0();
    v15 = v14;
    (*(v3 + 8))(v5, v2);
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_2523AB7A4();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    v16 = sub_2526930A0();

    v10 = sub_252692BD0();
    return v10;
  }

  if (result)
  {
    if (!*(a1 + 32))
    {
      goto LABEL_13;
    }

    return 0;
  }

  return result;
}

uint64_t sub_25252046C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525204D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_252520554()
{
  result = qword_27F4E0D70;
  if (!qword_27F4E0D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0D70);
  }

  return result;
}

uint64_t sub_2525205D0(uint64_t a1)
{
  result = sub_25268D7D0();
  if (v2 <= 0x3F)
  {
    result = sub_252422940(319, &qword_27F4E0D88, 0x277D74300);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2525206EC(uint64_t a1)
{
  result = _s22StatusTextViewModifierV6ConfigVMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_252520784@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s22StatusTextViewModifierVMa(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_25251CE1C(a1, v6, a2);
}

uint64_t sub_252520804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s22StatusTextViewModifierVMa(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));

  return sub_25251CFAC(a1, v6, a2);
}

unint64_t sub_252520888()
{
  result = sub_2525208AC();
  byte_27F4E0D58 = result & 1;
  return result;
}

unint64_t sub_2525208AC()
{
  result = sub_252692C40();
  v2 = HIBYTE(v1) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((v1 & 0x1000000000000000) != 0)
  {
    v30 = 0;
    sub_252520E58(result, v1, 10);
    v6 = v25;
    v27 = v26;

    if (v27)
    {
      return 0;
    }

    return v6 > 0;
  }

  if ((v1 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_252693230();
      v3 = v28;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v15 + v14;
              if (__OFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_70;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        v6 = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              goto LABEL_61;
            }

            v6 = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      v6 = 0;
      LOBYTE(v3) = 1;
LABEL_62:
      v30 = v3;
      v24 = v3;

      if (v24)
      {
        return 0;
      }

      return v6 > 0;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        v6 = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              goto LABEL_61;
            }

            v6 = v9 - v8;
            if (__OFSUB__(v9, v8))
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v29[0] = result;
  v29[1] = v1 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        v6 = 0;
        v21 = v29;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if ((v6 * 10) >> 64 != (10 * v6) >> 63)
          {
            break;
          }

          v6 = v23 + v22;
          if (__OFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        v6 = 0;
        v10 = v29 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v6 * 10) >> 64 != (10 * v6) >> 63)
          {
            break;
          }

          v6 = v12 - v11;
          if (__OFSUB__(v12, v11))
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_69;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      v6 = 0;
      v16 = v29 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if ((v6 * 10) >> 64 != (10 * v6) >> 63)
        {
          break;
        }

        v6 = v18 + v17;
        if (__OFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_71:
  __break(1u);
  return result;
}

unint64_t sub_252520BD0()
{
  result = qword_27F4E0DF8;
  if (!qword_27F4E0DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0DE8, &qword_2526A42F8);
    sub_252520C5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0DF8);
  }

  return result;
}

unint64_t sub_252520C5C()
{
  result = qword_27F4E0E00;
  if (!qword_27F4E0E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0DE0, &qword_2526A42F0);
    sub_252520CE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0E00);
  }

  return result;
}

unint64_t sub_252520CE8()
{
  result = qword_27F4E0E08;
  if (!qword_27F4E0E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0DD8, &qword_2526A42E8);
    sub_252520DA0();
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00, &unk_25269F1C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0E08);
  }

  return result;
}

unint64_t sub_252520DA0()
{
  result = qword_27F4E0E10;
  if (!qword_27F4E0E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0DD0, &qword_2526A42E0);
    sub_252400FC8(&qword_27F4E0E18, &qword_27F4DD3F8, &qword_25269CD88, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0E10);
  }

  return result;
}

void sub_252520E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_252692D10();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2525213E4(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_252693230();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_2525213E4(uint64_t a1, unint64_t a2)
{
  v2 = sub_252692D20();
  v6 = sub_252521464(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_252521464(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_252693140();
    if (!v9 || (v10 = v9, v11 = sub_2525BDED0(v9, 0), v12 = sub_2525215BC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_252692C70();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_252692C70();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_252693230();
LABEL_4:

  return sub_252692C70();
}

unint64_t sub_2525215BC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2525217DC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_252692CD0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_252693230();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2525217DC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_252692CB0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_2525217DC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_252692CE0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2530A4830](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_252521858(uint64_t a1, uint64_t a2)
{
  if ((sub_252691AC0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v5 = _s22StatusTextViewModifierV6ConfigVMa(0);
  if ((sub_25268D7B0() & 1) == 0)
  {
    return 0;
  }

  sub_252422940(0, &qword_27F4E0E30, 0x277D82BB8);
  if ((sub_252693090() & 1) == 0 || *(a1 + *(v5 + 36)) != *(a2 + *(v5 + 36)))
  {
    return 0;
  }

  return sub_252692280();
}

unint64_t sub_252521958()
{
  result = qword_27F4E0E38;
  if (!qword_27F4E0E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0DA8, &qword_2526A4258);
    sub_252400FC8(&qword_27F4E0E40, &qword_27F4E0DA0, &qword_2526A4250, MEMORY[0x277CE04B0]);
    sub_252400FC8(&qword_27F4E0E48, &qword_27F4E0E50, &qword_2526A4418, MEMORY[0x277CE07F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0E38);
  }

  return result;
}

void sub_252521A84(uint64_t a1)
{
  sub_252510F9C(319);
  if (v1 <= 0x3F)
  {
    sub_252526320(319, &qword_27F4E0438, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_252526374(319, &qword_27F4DDD98, &qword_27F4DB010, &qword_25269E300, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_252521B9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 73))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_252521BE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_252521C48@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v24 = sub_2526912C0();
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RingControlView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = sub_252692310();
  v9 = sub_252692920();
  v11 = v10;
  sub_252525E20(v1, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RingControlView);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_252526C88(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for RingControlView);
  v14 = sub_252692530();
  LOBYTE(v12) = sub_252691A40();
  sub_252690760();
  v33 = 0;
  *&v25 = v8;
  WORD4(v25) = 256;
  *&v26 = sub_252525AEC;
  *(&v26 + 1) = v13;
  *&v27 = v9;
  *(&v27 + 1) = v11;
  *&v28 = v14;
  *(&v28 + 1) = sub_252522DBC;
  *&v29 = 0;
  BYTE8(v29) = v12;
  *&v30 = v15;
  *(&v30 + 1) = v16;
  *&v31 = v17;
  *(&v31 + 1) = v18;
  v32 = 0;
  sub_252691290();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0E70, &qword_2526A4560);
  sub_252525B6C();
  v19 = v23;
  sub_252692090();
  (*(v2 + 8))(v4, v24);
  v34[4] = v29;
  v34[5] = v30;
  v34[6] = v31;
  v35 = v32;
  v34[0] = v25;
  v34[1] = v26;
  v34[2] = v27;
  v34[3] = v28;
  sub_252372288(v34, &qword_27F4E0E70, &qword_2526A4560);
  sub_252525D94();
  LOBYTE(v13) = sub_252692F20();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0EC8, &qword_2526A45B8);
  v22 = v19 + *(result + 36);
  *v22 = KeyPath;
  *(v22 + 8) = v13 & 1;
  return result;
}

uint64_t sub_252521F40@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2526909F0();
  v6 = v5;
  sub_2526909F0();
  if (v7 < v6)
  {
    v6 = v7;
  }

  sub_2525220D8(a3, v6);
  v8 = ((*(a2 + *(type metadata accessor for RingControlView(0) + 20)) * -57.2957795 + 180.0) * 0.5 + 180.0) * 0.0174532925;
  sub_252692A40();
  v10 = v9;
  v12 = v11;
  v13 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0ED0, &qword_2526A45C0) + 36);
  *v13 = v8;
  *(v13 + 8) = v10;
  *(v13 + 16) = v12;
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0ED8, &qword_2526A45C8) + 36)) = 1;
  sub_252692920();
  sub_2526909C0();
  v14 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0EE0, &qword_2526A45D0) + 36));
  *v14 = v21;
  v14[1] = v22;
  v14[2] = v23;
  sub_2526909F0();
  v16 = v15 * 0.5;
  sub_2526909F0();
  v18 = v17 * 0.5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0EE8, &qword_2526A45D8);
  v20 = (a3 + *(result + 36));
  *v20 = v16;
  v20[1] = v18;
  return result;
}

uint64_t sub_2525220D8@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v133 = a1;
  v130 = _s19CurrentLocationViewVMa(0);
  MEMORY[0x28223BE20](v130);
  v142 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v132 = &v124 - v6;
  v129 = type metadata accessor for RingControlView.KnobsView(0);
  MEMORY[0x28223BE20](v129);
  v141 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v131 = &v124 - v9;
  v128 = _s13TapTargetViewVMa(0);
  MEMORY[0x28223BE20](v128);
  v140 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v143 = &v124 - v12;
  v127 = type metadata accessor for RingControlView.ColorTrackView(0);
  MEMORY[0x28223BE20](v127);
  v146 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v145 = &v124 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0EF0, &qword_2526A45E0);
  MEMORY[0x28223BE20](v16 - 8);
  v138 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v139 = &v124 - v19;
  MEMORY[0x28223BE20](v20);
  v147 = &v124 - v21;
  MEMORY[0x28223BE20](v22);
  v144 = &v124 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0EF8, &qword_2526A45E8);
  v25 = v24 - 8;
  MEMORY[0x28223BE20](v24);
  v137 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v124 - v28;
  v30 = _s16ProgressDotsViewVMa(0);
  v125 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v32 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a2 * 0.5;
  v34 = type metadata accessor for RingControlView(0);
  v35 = (v2 + *(v34 + 20));
  v36 = *v35;
  v37 = *v35 * 57.2957795;
  v38 = ((180.0 - v37) * 0.5 + 180.0) * 0.0174532925;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09B8, &qword_2526A3840);
  MEMORY[0x2530A4210]();
  v39 = *(v35 + 2);
  v40 = *(v35 + 24);
  v41 = &v32[*(v30 + 20)];
  *v41 = v33;
  *(v41 + 1) = v36;
  *(v41 + 2) = v38;
  v148 = xmmword_2526A4430;
  *(v41 + 24) = xmmword_2526A4430;
  v42 = &v32[*(v30 + 24)];
  *v42 = v39;
  v42[8] = v40;
  KeyPath = swift_getKeyPath();
  v158 = 0;
  *v29 = KeyPath;
  v29[65] = 0;
  v44 = type metadata accessor for ControlBackgroundView(0);
  v45 = v44[5];
  *&v29[v45] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210, &qword_25269CB70);
  swift_storeEnumTagMultiPayload();
  v46 = &v29[v44[6]];
  v29[v44[7]] = 2;
  v47 = v44[8];
  v48 = [objc_opt_self() systemGray4Color];
  *&v29[v47] = sub_252692240();
  *v46 = 0;
  v49 = 1;
  v46[8] = 1;
  v126 = v34;
  v50 = *(v34 + 32);
  v135 = v2;
  v51 = (v2 + v50);
  v52 = *v51;
  v54 = *(v51 + 2);
  v53 = *(v51 + 3);
  v55 = v51[2];
  v56 = v51[3];
  v57 = v37 / 360.0;
  v58 = v51[4];
  swift_bridgeObjectRetain_n();
  v59 = sub_252691A20();
  sub_252690760();
  LOBYTE(v154) = 0;
  v60 = *(v25 + 44);
  v136 = v29;
  v61 = &v29[v60];
  v62 = v32;
  *v61 = 0;
  *(v61 + 1) = v57;
  *(v61 + 2) = v52;
  *(v61 + 6) = v54;
  *(v61 + 7) = v53;
  *(v61 + 4) = v55;
  *(v61 + 5) = v56;
  *(v61 + 6) = v58;
  v61[56] = v59;
  *(v61 + 8) = v63;
  *(v61 + 9) = v64;
  *(v61 + 10) = v65;
  *(v61 + 11) = v66;
  v61[96] = 0;
  v67 = sub_252512B60();
  v68 = v144;
  if (!v67)
  {
    sub_252525E20(v32, v144, _s16ProgressDotsViewVMa);
    v49 = 0;
  }

  v69 = *(v125 + 56);
  v69(v68, v49, 1, v30);
  v70 = v145;
  MEMORY[0x2530A4210](v134);
  v71 = *(v35 + 8);
  v72 = v127;
  v73 = v70 + *(v127 + 20);
  *v73 = v33;
  *(v73 + 8) = v36;
  *(v73 + 16) = v38;
  *(v73 + 24) = v148;
  v74 = v70 + v72[6];
  *v74 = v52;
  *(v74 + 8) = v54;
  *(v74 + 12) = v53;
  *(v74 + 16) = v55;
  *(v74 + 24) = v56;
  *(v74 + 32) = v58;
  *(v70 + v72[7]) = v71;
  v75 = v70 + v72[8];
  *v75 = swift_getKeyPath();
  *(v75 + 8) = 0;
  v76 = sub_252512B60();
  v77 = 1;
  if (v76)
  {
    sub_252525E20(v32, v147, _s16ProgressDotsViewVMa);
    v77 = 0;
  }

  v69(v147, v77, 1, v30);
  v78 = v143;
  v79 = v134;
  v80 = v135;
  sub_2526926D0();
  v81 = v126;
  v82 = (v80 + *(v126 + 28));
  v83 = *v82;
  v84 = v82[1];
  v85 = v128;
  v86 = v78 + *(v128 + 20);
  *v86 = v33;
  *(v86 + 8) = v36;
  *(v86 + 16) = v38;
  *(v86 + 24) = v148;
  v87 = (v78 + *(v85 + 24));
  *v87 = v83;
  v87[1] = v84;
  sub_25235E21C(v83, v84);
  v88 = v131;
  sub_2526926D0();
  v89 = (v80 + *(v81 + 24));
  v90 = *v89;
  v91 = v89[1];
  LOBYTE(v89) = *(v89 + 16);
  *&v154 = v90;
  *(&v154 + 1) = v91;
  LOBYTE(v155) = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD300, &unk_2526A0CD0);
  sub_2526926D0();
  v92 = v151;
  v93 = v152;
  v94 = v153;
  v95 = *v35;
  v96 = *(v35 + 2);
  v97 = *(v35 + 24);
  v98 = *(v35 + 41);
  v154 = *(v35 + 25);
  v155 = v98;
  v156 = *(v35 + 57);
  v157 = v95;
  v99 = swift_getKeyPath();
  v100 = v129;
  v101 = v88 + v129[5];
  *v101 = v33;
  *(v101 + 8) = v36;
  *(v101 + 16) = v38;
  *(v101 + 24) = v148;
  v102 = v88 + v100[6];
  *v102 = v92;
  *(v102 + 8) = v93;
  *(v102 + 16) = v94;
  v103 = v88 + v100[7];
  *v103 = v157;
  v104 = v155;
  *(v103 + 25) = v154;
  *(v103 + 16) = v96;
  *(v103 + 24) = v97;
  *(v103 + 41) = v104;
  *(v103 + 57) = v156;
  v105 = v88 + v100[8];
  *v105 = v99;
  *(v105 + 8) = 0;
  v106 = v88 + v100[9];
  v149 = 0;
  v150 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0F00, &qword_2526A4680);
  sub_2526924D0();
  v107 = v152;
  v108 = v153;
  *v106 = v151;
  *(v106 + 8) = v107;
  *(v106 + 16) = v108;
  v129 = v62;
  v109 = v132;
  MEMORY[0x2530A4210](v79);
  v110 = v130;
  v111 = v109 + *(v130 + 20);
  *v111 = v33;
  *(v111 + 8) = v36;
  *(v111 + 16) = v38;
  *(v111 + 24) = v148;
  v112 = v109 + *(v110 + 24);
  *v112 = v96;
  *(v112 + 8) = v97;
  v113 = v137;
  sub_25237153C(v136, v137, &qword_27F4E0EF8, &qword_2526A45E8);
  v114 = v139;
  sub_25237153C(v144, v139, &qword_27F4E0EF0, &qword_2526A45E0);
  sub_252525E20(v145, v146, type metadata accessor for RingControlView.ColorTrackView);
  v115 = v138;
  sub_25237153C(v147, v138, &qword_27F4E0EF0, &qword_2526A45E0);
  sub_252525E20(v143, v140, _s13TapTargetViewVMa);
  sub_252525E20(v88, v141, type metadata accessor for RingControlView.KnobsView);
  sub_252525E20(v109, v142, _s19CurrentLocationViewVMa);
  v116 = v113;
  v117 = v133;
  sub_25237153C(v116, v133, &qword_27F4E0EF8, &qword_2526A45E8);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0F08, &qword_2526A4688);
  sub_25237153C(v114, v117 + v118[12], &qword_27F4E0EF0, &qword_2526A45E0);
  sub_252525E20(v146, v117 + v118[16], type metadata accessor for RingControlView.ColorTrackView);
  sub_25237153C(v115, v117 + v118[20], &qword_27F4E0EF0, &qword_2526A45E0);
  v119 = v140;
  sub_252525E20(v140, v117 + v118[24], _s13TapTargetViewVMa);
  v120 = v141;
  sub_252525E20(v141, v117 + v118[28], type metadata accessor for RingControlView.KnobsView);
  v121 = v117 + v118[32];
  v122 = v142;
  sub_252525E20(v142, v121, _s19CurrentLocationViewVMa);
  sub_252525E88(v109, _s19CurrentLocationViewVMa);
  sub_252525E88(v88, type metadata accessor for RingControlView.KnobsView);
  sub_252525E88(v143, _s13TapTargetViewVMa);
  sub_252372288(v147, &qword_27F4E0EF0, &qword_2526A45E0);
  sub_252525E88(v145, type metadata accessor for RingControlView.ColorTrackView);
  sub_252372288(v144, &qword_27F4E0EF0, &qword_2526A45E0);
  sub_252372288(v136, &qword_27F4E0EF8, &qword_2526A45E8);
  sub_252525E88(v129, _s16ProgressDotsViewVMa);
  sub_252525E88(v122, _s19CurrentLocationViewVMa);
  sub_252525E88(v120, type metadata accessor for RingControlView.KnobsView);
  sub_252525E88(v119, _s13TapTargetViewVMa);
  sub_252372288(v138, &qword_27F4E0EF0, &qword_2526A45E0);
  sub_252525E88(v146, type metadata accessor for RingControlView.ColorTrackView);
  sub_252372288(v139, &qword_27F4E0EF0, &qword_2526A45E0);
  return sub_252372288(v137, &qword_27F4E0EF8, &qword_2526A45E8);
}

double sub_252522DBC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;

  return result;
}

uint64_t sub_252522DC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v81 = a1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1048, &qword_2526A4880);
  MEMORY[0x28223BE20](v78);
  v72 = &v71 - v3;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1050, &qword_2526A4888);
  MEMORY[0x28223BE20](v74);
  v77 = &v71 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1058, &qword_2526A4890);
  MEMORY[0x28223BE20](v5);
  v7 = (&v71 - v6);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1060, &qword_2526A4898);
  MEMORY[0x28223BE20](v76);
  v73 = &v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1068, &qword_2526A48A0);
  v79 = *(v9 - 8);
  v80 = v9;
  MEMORY[0x28223BE20](v9);
  v75 = &v71 - v10;
  v11 = _s4KnobVMa(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v71 - v15;
  v17 = _s9KnobStateOMa(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  sub_252525E20(v2, v19, _s9KnobStateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v69 = 1;
      v68 = v81;
      return (*(v79 + 56))(v68, v69, 1, v80);
    }

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09C0, &qword_2526A3A70);
    v71 = v7;
    v25 = *(v24 + 48);
    sub_252526C88(v19, v16, _s4KnobVMa);
    v7 = v71;
    sub_252526C88(&v19[v25], v13, _s4KnobVMa);
    v23 = *&v16[*(v11 + 20)];
    sub_252525E88(v16, _s4KnobVMa);
    v22 = *&v13[*(v11 + 20)];
    v16 = v13;
  }

  else if (EnumCaseMultiPayload)
  {
    sub_252526C88(v19, v16, _s4KnobVMa);
    v23 = *&v16[*(v11 + 20)];
    v22 = 1.0;
  }

  else
  {
    sub_252526C88(v19, v16, _s4KnobVMa);
    v22 = *&v16[*(v11 + 20)];
    v23 = 0.0;
  }

  sub_252525E88(v16, _s4KnobVMa);
  v26 = type metadata accessor for RingControlView.ColorTrackView(0);
  LOBYTE(v93) = *(v20 + *(v26 + 28));
  v27 = sub_25251B768();
  if (v27)
  {
    v28 = v27;
    *v7 = sub_252692920();
    v7[1] = v29;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E10D8, &qword_2526A48D8);
    sub_2525236B0(v28, v20, v7 + *(v30 + 44));
    v31 = sub_252692920();
    v33 = v32;
    v34 = 0.0;
    if (v23 > 0.0)
    {
      v35 = v23;
    }

    else
    {
      v35 = 0.0;
    }

    if (v35 <= 1.0)
    {
      v36 = v35;
    }

    else
    {
      v36 = 1.0;
    }

    if (v22 > 0.0)
    {
      v34 = v22;
    }

    if (v34 <= 1.0)
    {
      v37 = v34;
    }

    else
    {
      v37 = 1.0;
    }

    v38 = *(v20 + *(v26 + 20) + 8) * 57.2957795 / 360.0;
    sub_2526908F0();
    v39 = v5;
    v40 = sub_252691A20();
    sub_252690760();
    LOBYTE(v82) = 0;
    v41 = v7 + *(v39 + 36);
    *v41 = v31;
    *(v41 + 1) = v33;
    *(v41 + 2) = 0;
    *(v41 + 3) = v38;
    *(v41 + 4) = v36;
    *(v41 + 5) = v37;
    *(v41 + 10) = v95;
    v42 = v94;
    *(v41 + 3) = v93;
    *(v41 + 4) = v42;
    v41[88] = v40;
    *(v41 + 12) = v43;
    *(v41 + 13) = v44;
    *(v41 + 14) = v45;
    *(v41 + 15) = v46;
    v41[128] = 0;
    sub_252526F14();
    v47 = v73;
    sub_252691EA0();
    sub_252372288(v7, &qword_27F4E1058, &qword_2526A4890);
    sub_25237153C(v47, v77, &qword_27F4E1060, &qword_2526A4898);
    swift_storeEnumTagMultiPayload();
    sub_252526E60(&qword_27F4E10A0, &qword_27F4E1060, &qword_2526A4898, sub_252526F14);
    sub_252526E60(&qword_27F4E10D0, &qword_27F4E1048, &qword_2526A4880, sub_252526CF0);
    v48 = v75;
    sub_252691470();

    v49 = v47;
    v50 = &qword_27F4E1060;
    v51 = &qword_2526A4898;
  }

  else
  {
    v52 = 0.0;
    if (v23 > 0.0)
    {
      v53 = v23;
    }

    else
    {
      v53 = 0.0;
    }

    if (v53 <= 1.0)
    {
      v54 = v53;
    }

    else
    {
      v54 = 1.0;
    }

    if (v22 > 0.0)
    {
      v52 = v22;
    }

    if (v52 <= 1.0)
    {
      v55 = v52;
    }

    else
    {
      v55 = 1.0;
    }

    v56 = *(v20 + *(v26 + 20) + 8) * 57.2957795 / 360.0;
    sub_2526908F0();
    v57 = sub_252691A20();
    sub_252690760();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v101 = 0;
    v66 = sub_2526922D0();
    *&v82 = 0;
    *(&v82 + 1) = v56;
    *&v83 = v54;
    *(&v83 + 1) = v55;
    v84 = v90;
    v85 = v91;
    *&v86 = v92;
    BYTE8(v86) = v57;
    *&v87 = v59;
    *(&v87 + 1) = v61;
    *&v88 = v63;
    *(&v88 + 1) = v65;
    LOBYTE(v89) = 0;
    *(&v89 + 1) = v66;
    v67 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1070, &qword_2526A48A8);
    sub_252526CF0();
    sub_252691EA0();
    v97 = v86;
    v98 = v87;
    v99 = v88;
    v100 = v89;
    v93 = v82;
    v94 = v83;
    v95 = v84;
    v96 = v85;
    sub_252372288(&v93, &qword_27F4E1070, &qword_2526A48A8);
    sub_25237153C(v67, v77, &qword_27F4E1048, &qword_2526A4880);
    swift_storeEnumTagMultiPayload();
    sub_252526E60(&qword_27F4E10A0, &qword_27F4E1060, &qword_2526A4898, sub_252526F14);
    sub_252526E60(&qword_27F4E10D0, &qword_27F4E1048, &qword_2526A4880, sub_252526CF0);
    v48 = v75;
    sub_252691470();
    v49 = v67;
    v50 = &qword_27F4E1048;
    v51 = &qword_2526A4880;
  }

  sub_252372288(v49, v50, v51);
  v68 = v81;
  sub_2523714D4(v48, v81, &qword_27F4E1068, &qword_2526A48A0);
  v69 = 0;
  return (*(v79 + 56))(v68, v69, 1, v80);
}

void sub_2525236B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a1;
  v5 = type metadata accessor for RingControlView.ColorTrackView(0);
  v6 = v5 - 8;
  v36 = *(v5 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E10E0, &qword_2526A48E0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v39 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v38 = &KeyPath - v12;
  v13 = sub_2526923E0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &KeyPath - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, *MEMORY[0x277CE0FE0], v13, v15);
  v37 = sub_252692420();
  (*(v14 + 8))(v17, v13);
  v18 = *(a2 + *(v6 + 28) + 16) * -57.2957795 * 0.0174532925;
  sub_252692A40();
  v20 = v19;
  v22 = v21;
  v40 = sub_2525140D8();
  KeyPath = swift_getKeyPath();
  sub_252525E20(a2, &KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RingControlView.ColorTrackView);
  v23 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v24 = swift_allocObject();
  sub_252526C88(&KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for RingControlView.ColorTrackView);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E10E8, &qword_2526A4908);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E10F0, &unk_2526A4910);
  v27 = sub_252527078();
  v28 = sub_252527128(&qword_27F4E0BF8, _s4KnobV2IDOMa, &unk_2526A3D70);
  v29 = sub_252400FC8(&qword_27F4E1100, &qword_27F4E10F0, &unk_2526A4910, MEMORY[0x277CE14C0]);
  v30 = v38;
  sub_252692790(&v40, KeyPath, sub_252526FF8, v24, v25, v26, v27, v28, v29);
  v31 = *(v9 + 16);
  v32 = v39;
  v31(v39, v30, v8);
  *a3 = v37;
  *(a3 + 8) = 0;
  *(a3 + 16) = 257;
  *(a3 + 24) = v18;
  *(a3 + 32) = v20;
  *(a3 + 40) = v22;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1108, &qword_2526A4920);
  v31((a3 + *(v33 + 48)), v32, v8);
  v34 = *(v9 + 8);

  v34(v30, v8);
  v34(v32, v8);
}

uint64_t sub_252523B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = sub_2526910F0();
  v6 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s4KnobVMa(0);
  v10 = *(a1 + *(v9 + 24));
  sub_252692920();
  sub_2526909C0();
  *&v93[3] = *&v93[27];
  *&v93[11] = *&v93[35];
  *&v93[19] = *&v93[43];
  v11 = type metadata accessor for RingControlView.ColorTrackView(0);
  v12 = (a2 + *(v11 + 20));
  v13 = *v12;
  v14 = *(a1 + *(v9 + 20));
  v15 = 1.0;
  if (v14 <= 1.0)
  {
    v15 = *(a1 + *(v9 + 20));
  }

  v16 = 0.0;
  if (v14 > 0.0)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = v13 + v12[3] * -0.5;
  v19 = __sincos_stret(v12[1] * 57.2957795 * v17 * 0.0174532925);
  v20 = v18 * v19.__sinval;
  v21 = v13 + v18 * v19.__cosval;
  v22 = v13 + v20;
  v23 = sub_252515198();
  v24 = a2 + *(v11 + 32);
  v25 = *v24;
  LODWORD(v24) = *(v24 + 8);
  v60 = v10;
  if (v24 != 1)
  {

    sub_252527170(v25, 0);
    sub_252692F00();
    v39 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v25, 0);
    (*(v6 + 8))(v8, v59);
    if (v91 != 1)
    {
      goto LABEL_8;
    }

LABEL_10:
    sub_2526908F0();
    v58 = v96;
    v59 = v94;
    v56 = v97;
    v57 = v95;
    v55 = v98;
    sub_252692920();
    sub_2526909C0();
    v40 = v99;
    v41 = v100;
    v32 = v101;
    v33 = v102;
    v42 = v103;
    v35 = v104;
    v38 = sub_252515198();
    v34 = v42;
    v31 = v41;
    v30 = v40;
    v28 = v56;
    v36 = v57;
    v29 = v55;
    v27 = v58;
    v26 = v59;
    v16 = v21;
    v37 = v22;
    goto LABEL_11;
  }

  v91 = v25 & 1;

  if (v25)
  {
    goto LABEL_10;
  }

LABEL_8:
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0.0;
  v38 = 0.0;
LABEL_11:
  v43 = v60;
  *&v79[0] = v60;
  WORD4(v79[0]) = 256;
  *(v79 + 10) = *v93;
  *(&v79[1] + 10) = *&v93[8];
  *(&v79[2] + 10) = *&v93[16];
  *(&v79[3] + 1) = *&v93[23];
  *&v80 = v21;
  *(&v80 + 1) = v22;
  *&v81 = 0x4040000000000000;
  BYTE8(v81) = 0;
  *(&v81 + 9) = *v92;
  HIDWORD(v81) = *&v92[3];
  v82 = v23;
  v72 = v79[0];
  v73 = v79[1];
  *v78 = v23;
  v76 = v80;
  v77 = v81;
  v74 = v79[2];
  v75 = v79[3];
  *&v83 = v26;
  *(&v83 + 1) = v36;
  *&v84 = v27;
  *(&v84 + 1) = v28;
  *&v85 = v29;
  *(&v85 + 1) = v30;
  *&v86 = v31;
  *(&v86 + 1) = v32;
  *&v87 = v33;
  *(&v87 + 1) = v34;
  *&v88 = v35;
  *(&v88 + 1) = v16;
  *&v89 = v37;
  *(&v89 + 1) = v38;
  *(&v78[2] + 8) = v85;
  *(&v78[1] + 8) = v84;
  *(v78 + 8) = v83;
  *(&v78[6] + 8) = v89;
  *(&v78[5] + 8) = v88;
  *(&v78[4] + 8) = v87;
  *(&v78[3] + 8) = v86;
  v44 = v79[1];
  *a3 = v79[0];
  *(a3 + 16) = v44;
  v45 = v74;
  v46 = v75;
  v47 = v77;
  *(a3 + 64) = v76;
  *(a3 + 80) = v47;
  *(a3 + 32) = v45;
  *(a3 + 48) = v46;
  v48 = v78[0];
  v49 = v78[1];
  v50 = v78[3];
  *(a3 + 128) = v78[2];
  *(a3 + 144) = v50;
  *(a3 + 96) = v48;
  *(a3 + 112) = v49;
  v51 = v78[4];
  v52 = v78[5];
  v53 = v78[6];
  *(a3 + 208) = *&v78[7];
  *(a3 + 176) = v52;
  *(a3 + 192) = v53;
  *(a3 + 160) = v51;
  v90[0] = v26;
  v90[1] = v36;
  v90[2] = v27;
  v90[3] = v28;
  v90[4] = v29;
  v90[5] = v30;
  v90[6] = v31;
  v90[7] = v32;
  v90[8] = v33;
  v90[9] = v34;
  v90[10] = v35;
  *&v90[11] = v16;
  *&v90[12] = v37;
  *&v90[13] = v38;
  sub_25237153C(v79, &v61, &qword_27F4E1110, &qword_2526A4928);
  sub_25237153C(&v83, &v61, &qword_27F4E1118, &qword_2526A4930);
  sub_252372288(v90, &qword_27F4E1118, &qword_2526A4930);
  v61 = v43;
  v62 = 256;
  v63 = *v93;
  v64 = *&v93[8];
  *v65 = *&v93[16];
  *&v65[14] = *&v93[23];
  v66 = v21;
  v67 = v22;
  v68 = 0x4040000000000000;
  v69 = 0;
  *v70 = *v92;
  *&v70[3] = *&v92[3];
  v71 = v23;
  return sub_252372288(&v61, &qword_27F4E1110, &qword_2526A4928);
}

uint64_t sub_2525240A4()
{
  v1 = sub_2526910F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for RingControlView.KnobsView(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_252692F00();
    v7 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_252524200@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0F70, &qword_2526A47D8);
  MEMORY[0x28223BE20](v82);
  v84 = &v71 - v1;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0F78, &qword_2526A47E0);
  MEMORY[0x28223BE20](v96);
  v85 = &v71 - v2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0F80, &qword_2526A47E8);
  MEMORY[0x28223BE20](v83);
  v76 = &v71 - v3;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0F88, &qword_2526A47F0);
  MEMORY[0x28223BE20](v91);
  v95 = &v71 - v4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0F90, &qword_2526A47F8);
  MEMORY[0x28223BE20](v79);
  v80 = &v71 - v5;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0F98, &qword_2526A4800);
  MEMORY[0x28223BE20](v93);
  v81 = &v71 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0FA0, &qword_2526A4808);
  v86 = *(v7 - 8);
  v87 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v71 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0FA8, &qword_2526A4810);
  MEMORY[0x28223BE20](v77);
  v74 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v73 = &v71 - v12;
  MEMORY[0x28223BE20](v13);
  v75 = &v71 - v14;
  MEMORY[0x28223BE20](v15);
  v88 = &v71 - v16;
  v17 = _s4KnobVMa(0);
  MEMORY[0x28223BE20](v17 - 8);
  v78 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v71 - v20;
  v22 = _s9KnobStateOMa(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0FB0, &qword_2526A4818);
  MEMORY[0x28223BE20](v25 - 8);
  v94 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v92 = &v71 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0FB8, &qword_2526A4820);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v71 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0FC0, &qword_2526A4828);
  MEMORY[0x28223BE20](v33 - 8);
  v90 = &v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v71 - v36;
  if (sub_2525240A4())
  {
    sub_25250EB04(v32);
    sub_2523714D4(v32, v37, &qword_27F4E0FB8, &qword_2526A4820);
    (*(v30 + 56))(v37, 0, 1, v29);
  }

  else
  {
    (*(v30 + 56))(v37, 1, 1, v29);
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09B8, &qword_2526A3840);
  MEMORY[0x2530A4210](v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v89 = v37;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09C0, &qword_2526A3A70) + 48);
      v72 = v21;
      sub_252526C88(v24, v21, _s4KnobVMa);
      v48 = v78;
      sub_252526C88(&v24[v47], v78, _s4KnobVMa);
      sub_252525168(v21, v9);
      v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0FE0, &unk_2526A4830);
      v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDA88, &qword_25269DD98);
      v51 = sub_252526830();
      v52 = sub_252400FC8(&qword_27F4DDAC0, &qword_27F4DDA88, &qword_25269DD98, MEMORY[0x277CDF728]);
      v98 = v49;
      v99 = v50;
      v100 = v51;
      v101 = v52;
      swift_getOpaqueTypeConformance2();
      v53 = v87;
      v54 = v88;
      sub_252692070();
      v55 = *(v86 + 8);
      v55(v9, v53);
      sub_252525168(v48, v9);
      v56 = v75;
      sub_252692070();
      v55(v9, v53);
      v57 = v73;
      sub_25237153C(v54, v73, &qword_27F4E0FA8, &qword_2526A4810);
      v58 = v74;
      sub_25237153C(v56, v74, &qword_27F4E0FA8, &qword_2526A4810);
      v59 = v76;
      sub_25237153C(v57, v76, &qword_27F4E0FA8, &qword_2526A4810);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1040, &qword_2526A4878);
      sub_25237153C(v58, v59 + *(v60 + 48), &qword_27F4E0FA8, &qword_2526A4810);
      sub_252372288(v58, &qword_27F4E0FA8, &qword_2526A4810);
      sub_252372288(v57, &qword_27F4E0FA8, &qword_2526A4810);
      sub_25237153C(v59, v84, &qword_27F4E0F80, &qword_2526A47E8);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4E0FC8, &qword_27F4E0F80, &qword_2526A47E8, MEMORY[0x277CE14C0]);
      v61 = v85;
      sub_252691470();
      sub_25237153C(v61, v95, &qword_27F4E0F78, &qword_2526A47E0);
      swift_storeEnumTagMultiPayload();
      sub_252526654();
      sub_252526BD0();
      v63 = v92;
      sub_252691470();
      sub_252372288(v61, &qword_27F4E0F78, &qword_2526A47E0);
      sub_252372288(v59, &qword_27F4E0F80, &qword_2526A47E8);
      sub_252372288(v56, &qword_27F4E0FA8, &qword_2526A4810);
      sub_252372288(v88, &qword_27F4E0FA8, &qword_2526A4810);
      sub_252525E88(v78, _s4KnobVMa);
      sub_252525E88(v72, _s4KnobVMa);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4E0FC8, &qword_27F4E0F80, &qword_2526A47E8, MEMORY[0x277CE14C0]);
      v64 = v85;
      sub_252691470();
      sub_25237153C(v64, v95, &qword_27F4E0F78, &qword_2526A47E0);
      swift_storeEnumTagMultiPayload();
      sub_252526654();
      sub_252526BD0();
      v63 = v92;
      sub_252691470();
      sub_252372288(v64, &qword_27F4E0F78, &qword_2526A47E0);
    }
  }

  else
  {
    v40 = v21;
    sub_252526C88(v24, v21, _s4KnobVMa);
    sub_252525168(v21, v9);
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0FE0, &unk_2526A4830);
    v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDA88, &qword_25269DD98);
    v43 = sub_252526830();
    v44 = sub_252400FC8(&qword_27F4DDAC0, &qword_27F4DDA88, &qword_25269DD98, MEMORY[0x277CDF728]);
    v98 = v41;
    v99 = v42;
    v100 = v43;
    v101 = v44;
    swift_getOpaqueTypeConformance2();
    v45 = v87;
    v46 = v88;
    sub_252692070();
    (*(v86 + 8))(v9, v45);
    sub_25237153C(v46, v80, &qword_27F4E0FA8, &qword_2526A4810);
    swift_storeEnumTagMultiPayload();
    sub_2525266D8();
    v62 = v81;
    sub_252691470();
    sub_25237153C(v62, v95, &qword_27F4E0F98, &qword_2526A4800);
    swift_storeEnumTagMultiPayload();
    sub_252526654();
    sub_252526BD0();
    v63 = v92;
    sub_252691470();
    sub_252372288(v62, &qword_27F4E0F98, &qword_2526A4800);
    sub_252372288(v46, &qword_27F4E0FA8, &qword_2526A4810);
    sub_252525E88(v40, _s4KnobVMa);
  }

  v66 = v89;
  v65 = v90;
  sub_25237153C(v89, v90, &qword_27F4E0FC0, &qword_2526A4828);
  v67 = v94;
  sub_25237153C(v63, v94, &qword_27F4E0FB0, &qword_2526A4818);
  v68 = v97;
  sub_25237153C(v65, v97, &qword_27F4E0FC0, &qword_2526A4828);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1038, &qword_2526A4870);
  sub_25237153C(v67, v68 + *(v69 + 48), &qword_27F4E0FB0, &qword_2526A4818);
  sub_252372288(v63, &qword_27F4E0FB0, &qword_2526A4818);
  sub_252372288(v66, &qword_27F4E0FC0, &qword_2526A4828);
  sub_252372288(v67, &qword_27F4E0FB0, &qword_2526A4818);
  return sub_252372288(v65, &qword_27F4E0FC0, &qword_2526A4828);
}

uint64_t sub_252525168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDA88, &qword_25269DD98);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0FF8, &qword_2526A4840);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0FE0, &unk_2526A4830);
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  sub_252525534(v10);
  v14 = (v2 + *(type metadata accessor for RingControlView.KnobsView(0) + 20));
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[3];
  v18 = _s4KnobVMa(0);
  v19 = *(a1 + *(v18 + 20));
  v20 = 1.0;
  if (v19 <= 1.0)
  {
    v20 = *(a1 + *(v18 + 20));
  }

  v21 = v19 > 0.0;
  v22 = 0.0;
  if (v21)
  {
    v22 = v20;
  }

  v23 = v16 * 57.2957795 * v22 * 0.0174532925;
  v24 = v15 + v17 * -0.5;
  v25 = __sincos_stret(v23);
  v26 = v24 * v25.__sinval;
  v27 = v15 + v24 * v25.__cosval;
  v28 = v15 + v26;
  sub_2523714D4(v10, v13, &qword_27F4E0FF8, &qword_2526A4840);
  v29 = &v13[*(v11 + 36)];
  *v29 = v27;
  v29[1] = v28;
  sub_25250FB04(a1, v7);
  sub_2526908B0();
  sub_252526830();
  sub_252400FC8(&qword_27F4DDAC0, &qword_27F4DDA88, &qword_25269DD98, MEMORY[0x277CDF728]);
  sub_252692000();
  (*(v5 + 8))(v7, v4);
  return sub_252372288(v13, &qword_27F4E0FE0, &unk_2526A4830);
}

_BYTE *sub_252525434(_BYTE *result, uint64_t a2)
{
  if ((result[8] & 1) == 0 && (*(a2 + 8) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB180, &qword_2526A47D0);
    v2 = swift_allocObject();
    v3 = MEMORY[0x277D837D0];
    *(v2 + 16) = xmmword_252694E90;
    *(v2 + 56) = v3;
    *(v2 + 32) = 0x636974706168;
    *(v2 + 40) = 0xE600000000000000;
    sub_252693430();

    if (qword_27F4DAAB8 != -1)
    {
      swift_once();
    }

    v4 = qword_27F4FB460;
    [qword_27F4FB460 impactOccurred];

    return [v4 prepare];
  }

  return result;
}

__n128 sub_252525534@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_252692330();
  type metadata accessor for RingControlView.KnobsView(0);
  sub_252692920();
  sub_2526909C0();
  *&v8[6] = v9;
  *&v8[22] = v10;
  *&v8[38] = v11;
  sub_2526922F0();
  v4 = sub_252692350();

  sub_2526922F0();
  v5 = sub_252692350();

  sub_252692920();
  sub_2526909C0();
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0FF8, &qword_2526A4840) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD830, &qword_25269D680);
  sub_252690D80();
  *v6 = 0;
  *a2 = v3;
  *(a2 + 8) = 256;
  *(a2 + 10) = *v8;
  *(a2 + 26) = *&v8[16];
  *(a2 + 42) = *&v8[32];
  *(a2 + 56) = *(&v11 + 1);
  *(a2 + 64) = v4;
  *(a2 + 72) = xmmword_2526A4440;
  *(a2 + 88) = 0x4008000000000000;
  *(a2 + 96) = v5;
  *(a2 + 104) = xmmword_2526A4450;
  *(a2 + 120) = 0x4008000000000000;
  result = v12;
  *(a2 + 144) = v13;
  *(a2 + 160) = v14;
  *(a2 + 128) = v12;
  return result;
}

uint64_t sub_2525256D8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0F50, &qword_2526A47B8);
  MEMORY[0x28223BE20](v3);
  v5 = (v13 - v4);
  *v5 = sub_252692920();
  v5[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0F58, &unk_2526A47C0);
  sub_252524200(v5 + *(v7 + 44));
  v8 = (v1 + *(a1 + 36));
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = v8[2];
  v15 = v9;
  v16 = v10;
  v17 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0A18, &qword_2526A5F20);
  sub_2526924E0();
  v15 = v13[1];
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0F00, &qword_2526A4680);
  sub_252400FC8(&qword_27F4E0F60, &qword_27F4E0F50, &qword_2526A47B8, MEMORY[0x277CE11A8]);
  sub_2525265D8();
  sub_2526921D0();
  return sub_252372288(v5, &qword_27F4E0F50, &qword_2526A47B8);
}

void *sub_252525888(void *a1, void *(*a2)(uint64_t *__return_ptr, __n128))
{

  result = (a2)(&v6, v4);
  *a1 = v6;
  return result;
}

uint64_t sub_2525258E0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  sub_252692230();
  MEMORY[0x2530A4FE0](v2);
  if (v4 == 4)
  {
    sub_252693480();
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_19:
    sub_252693480();
    if (!v8)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  sub_252693480();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v15 = v3;
  }

  else
  {
    v15 = 0;
  }

  MEMORY[0x2530A5020](v15);
  MEMORY[0x2530A4FE0](v4);
  if (v6)
  {
    goto LABEL_19;
  }

LABEL_3:
  sub_252693480();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v5;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x2530A5020](v11);
  if (!v8)
  {
LABEL_7:
    sub_252693480();
    if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x2530A5020](v12);
    if (!v10)
    {
      goto LABEL_11;
    }

    return sub_252693480();
  }

LABEL_20:
  sub_252693480();
  if (v10)
  {
    return sub_252693480();
  }

LABEL_11:
  sub_252693480();
  if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  return MEMORY[0x2530A5020](v13);
}

uint64_t sub_2525259F4()
{
  sub_252693460();
  sub_2525258E0(v1);
  return sub_2526934C0();
}

uint64_t sub_252525A38(uint64_t a1)
{
  sub_252693460();
  sub_2525258E0(v2);
  return sub_2526934C0();
}

unint64_t sub_252525A7C()
{
  result = qword_27F4E0E68;
  if (!qword_27F4E0E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0E68);
  }

  return result;
}

uint64_t sub_252525AEC@<X0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for RingControlView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_252521F40(v5, a2);
}

unint64_t sub_252525B6C()
{
  result = qword_27F4E0E78;
  if (!qword_27F4E0E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0E70, &qword_2526A4560);
    sub_252525BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0E78);
  }

  return result;
}

unint64_t sub_252525BF8()
{
  result = qword_27F4E0E80;
  if (!qword_27F4E0E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0E88, &qword_2526A4568);
    sub_252525CB0();
    sub_252400FC8(&qword_27F4E0EB0, &qword_27F4E0EB8, &qword_2526A4588, MEMORY[0x277CE0598]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0E80);
  }

  return result;
}

unint64_t sub_252525CB0()
{
  result = qword_27F4E0E90;
  if (!qword_27F4E0E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0E98, &unk_2526A4570);
    sub_252400FC8(&qword_27F4E0B20, &qword_27F4E0B28, &qword_2526A3CB8, MEMORY[0x277CDF3A0]);
    sub_252400FC8(&qword_27F4E0EA0, &qword_27F4E0EA8, &qword_2526A4580, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0E90);
  }

  return result;
}

unint64_t sub_252525D94()
{
  result = qword_27F4E0EC0;
  if (!qword_27F4E0EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4E0EC0);
  }

  return result;
}

uint64_t sub_252525E20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252525E88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_252525EE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  v17 = *(a2 + 56);
  v18 = *(a2 + 64);
  v19 = *(a2 + 72);
  v20 = sub_252692220();
  result = 0;
  if ((v20 & 1) != 0 && v2 == v11)
  {
    if (v4 == 4)
    {
      if (v13 != 4)
      {
        return 0;
      }

      goto LABEL_9;
    }

    if (v13 == 4)
    {
      return 0;
    }

    result = 0;
    if (v3 == v12 && v4 == v13)
    {
LABEL_9:
      if (v6)
      {
        if (!v15)
        {
          return 0;
        }
      }

      else
      {
        if (v5 == v14)
        {
          v22 = v15;
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          return 0;
        }
      }

      if (v8)
      {
        if (!v17)
        {
          return 0;
        }
      }

      else
      {
        if (v7 == v16)
        {
          v23 = v17;
        }

        else
        {
          v23 = 1;
        }

        if (v23)
        {
          return 0;
        }
      }

      if ((v10 & 1) == 0)
      {
        if (v9 == v18)
        {
          v24 = v19;
        }

        else
        {
          v24 = 1;
        }

        return (v24 & 1) == 0;
      }

      return (v19 & 1) != 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09B8, &qword_2526A3840);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09B8, &qword_2526A3840);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_2525261F8(uint64_t a1)
{
  sub_252510F9C(319);
  if (v1 <= 0x3F)
  {
    sub_252526320(319, &qword_27F4E0438, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_252526320(319, &qword_27F4DE328, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_252526374(319, &qword_27F4E0F20, &qword_27F4E0F00, &qword_2526A4680, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_252526320(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_252526374(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_252526400(uint64_t a1)
{
  _s9KnobStateOMa(319);
  if (v1 <= 0x3F)
  {
    sub_252526320(319, &qword_27F4DE328, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2525264BC()
{
  result = qword_27F4E0F38;
  if (!qword_27F4E0F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0EC8, &qword_2526A45B8);
    sub_252526E60(&qword_27F4E0F40, &qword_27F4E0F48, qword_2526A46C0, sub_252525B6C);
    sub_252400FC8(&qword_27F4DC198, &qword_27F4DC1A0, qword_2526A39C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0F38);
  }

  return result;
}

unint64_t sub_2525265D8()
{
  result = qword_27F4E0F68;
  if (!qword_27F4E0F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0F00, &qword_2526A4680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0F68);
  }

  return result;
}

unint64_t sub_252526654()
{
  result = qword_27F4E0FD0;
  if (!qword_27F4E0FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0F98, &qword_2526A4800);
    sub_2525266D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0FD0);
  }

  return result;
}

unint64_t sub_2525266D8()
{
  result = qword_27F4E0FD8;
  if (!qword_27F4E0FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0FA8, &qword_2526A4810);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0FE0, &unk_2526A4830);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDA88, &qword_25269DD98);
    sub_252526830();
    sub_252400FC8(&qword_27F4DDAC0, &qword_27F4DDA88, &qword_25269DD98, MEMORY[0x277CDF728]);
    swift_getOpaqueTypeConformance2();
    sub_252527128(&qword_27F4DD380, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0FD8);
  }

  return result;
}

unint64_t sub_252526830()
{
  result = qword_27F4E0FE8;
  if (!qword_27F4E0FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0FE0, &unk_2526A4830);
    sub_2525268BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0FE8);
  }

  return result;
}

unint64_t sub_2525268BC()
{
  result = qword_27F4E0FF0;
  if (!qword_27F4E0FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0FF8, &qword_2526A4840);
    sub_252526974();
    sub_252400FC8(&qword_27F4DD828, &qword_27F4DD830, &qword_25269D680, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0FF0);
  }

  return result;
}

unint64_t sub_252526974()
{
  result = qword_27F4E1000;
  if (!qword_27F4E1000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1008, &qword_2526A4848);
    sub_252526A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1000);
  }

  return result;
}

unint64_t sub_252526A00()
{
  result = qword_27F4E1010;
  if (!qword_27F4E1010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1018, &qword_2526A4850);
    sub_252526A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1010);
  }

  return result;
}

unint64_t sub_252526A8C()
{
  result = qword_27F4E1020;
  if (!qword_27F4E1020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1028, &qword_2526A4858);
    sub_252526B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1020);
  }

  return result;
}

unint64_t sub_252526B18()
{
  result = qword_27F4E0B70;
  if (!qword_27F4E0B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0B78, &unk_2526A4860);
    sub_252400FC8(&qword_27F4E0B20, &qword_27F4E0B28, &qword_2526A3CB8, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0B70);
  }

  return result;
}

unint64_t sub_252526BD0()
{
  result = qword_27F4E1030;
  if (!qword_27F4E1030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0F78, &qword_2526A47E0);
    sub_252400FC8(&qword_27F4E0FC8, &qword_27F4E0F80, &qword_2526A47E8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1030);
  }

  return result;
}

uint64_t sub_252526C88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_252526CF0()
{
  result = qword_27F4E1078;
  if (!qword_27F4E1078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1070, &qword_2526A48A8);
    sub_252526DA8();
    sub_252400FC8(&qword_27F4DBEE8, &qword_27F4DBEF0, &unk_252697AA0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1078);
  }

  return result;
}

unint64_t sub_252526DA8()
{
  result = qword_27F4E1080;
  if (!qword_27F4E1080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1088, &qword_2526A48B0);
    sub_252400FC8(&qword_27F4E1090, &qword_27F4E1098, &unk_2526A48B8, MEMORY[0x277CDF780]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1080);
  }

  return result;
}

uint64_t sub_252526E60(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_252527128(&qword_27F4DD380, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252526F14()
{
  result = qword_27F4E10A8;
  if (!qword_27F4E10A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1058, &qword_2526A4890);
    sub_252400FC8(&qword_27F4E10B0, &qword_27F4E10B8, &qword_2526A48C8, MEMORY[0x277CE11A8]);
    sub_252400FC8(&qword_27F4E10C0, &qword_27F4E10C8, &qword_2526A48D0, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E10A8);
  }

  return result;
}

uint64_t sub_252526FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RingControlView.ColorTrackView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_252523B44(a1, v6, a2);
}

unint64_t sub_252527078()
{
  result = qword_27F4E10F8;
  if (!qword_27F4E10F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E10E8, &qword_2526A4908);
    sub_252400FC8(&qword_27F4E09D0, &qword_27F4E09C8, &qword_2526A3820, MEMORY[0x277D83980]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E10F8);
  }

  return result;
}

uint64_t sub_252527128(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_252527170(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_25252717C()
{
  result = qword_27F4E1120;
  if (!qword_27F4E1120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1128, &qword_2526A4938);
    sub_252527200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1120);
  }

  return result;
}

unint64_t sub_252527200()
{
  result = qword_27F4E1130;
  if (!qword_27F4E1130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1068, &qword_2526A48A0);
    sub_252526E60(&qword_27F4E10A0, &qword_27F4E1060, &qword_2526A4898, sub_252526F14);
    sub_252526E60(&qword_27F4E10D0, &qword_27F4E1048, &qword_2526A4880, sub_252526CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1130);
  }

  return result;
}

uint64_t type metadata accessor for ButtonControlView(uint64_t a1)
{
  result = qword_27F4E1138;
  if (!qword_27F4E1138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252527358(uint64_t a1)
{
  sub_252527474(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AccessoryControl.BinaryViewConfig(319);
    if (v2 <= 0x3F)
    {
      sub_252527530(319, &qword_27F4DE328, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_2525274D8(319);
        if (v4 <= 0x3F)
        {
          sub_252527530(319, &qword_27F4DE678, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_252527474(uint64_t a1)
{
  if (!qword_27F4E1148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB4E0, &qword_2526A6760);
    v1 = sub_252692750();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4E1148);
    }
  }
}

void sub_2525274D8(uint64_t a1)
{
  if (!qword_27F4E1150)
  {
    type metadata accessor for CGSize(255);
    v1 = sub_252692510();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4E1150);
    }
  }
}

void sub_252527530(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void (*sub_2525275A0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x100uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[1];
  v6 = v1[2];
  v4[24] = v5;
  v4[25] = v6;
  v7 = v1[3];
  v8 = v1[4];
  v4[26] = v7;
  v4[27] = v8;
  v9 = v1[5];
  v10 = v1[6];
  v4[28] = v9;
  v4[29] = v10;
  v11 = v1[7];
  v4[30] = v11;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  v4[5] = v10;
  v4[6] = v11;

  sub_25239F750(v7, v8, v9, v10, v11);
  v4[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1198, &unk_2526A4A00);
  MEMORY[0x2530A4210]();
  return sub_252527694;
}

void sub_252527694(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 224);
  *(v3 + 9) = *(*a1 + 208);
  v5 = v3[25];
  v3[7] = v3[24];
  v6 = v3[14];
  v3[19] = v6;
  v7 = v3[15];
  v8 = v3[16];
  v9 = v3[17];
  v10 = v3[18];
  v11 = v3[30];
  v3[8] = v5;
  *(v3 + 11) = v4;
  v3[13] = v11;
  v3[20] = v7;
  v3[21] = v8;
  v3[22] = v9;
  v3[23] = v10;
  if (a2)
  {
    sub_25239F750(v6, v7, v8, v9, v10);
    sub_2526926B0();
    v12 = v3[9];
    v13 = v3[10];
    v14 = v3[11];
    v15 = v3[12];
    v16 = v3[13];

    sub_252393F68(v12, v13, v14, v15, v16);
    v17 = v3[14];
    v18 = v3[15];
    v19 = v3[16];
    v20 = v3[17];
    v21 = v3[18];
  }

  else
  {
    sub_2526926B0();
    v22 = v3[9];
    v23 = v3[10];
    v24 = v3[11];
    v25 = v3[12];
    v26 = v3[13];

    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    v21 = v26;
  }

  sub_252393F68(v17, v18, v19, v20, v21);

  free(v3);
}

uint64_t sub_2525277C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v3 = type metadata accessor for ButtonControlView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_2526914B0();
  MEMORY[0x28223BE20](v6);
  v7 = sub_252690890();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDA80, &qword_25269DD90);
  v12 = *(v11 - 8);
  v21 = v11;
  v22 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  sub_252691670();
  sub_252690860();
  sub_252529A08(v2, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_252529A6C(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_25252A744(&qword_27F4DDAA0, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
  sub_25252A744(&qword_27F4DDAA8, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);
  sub_2526927D0();

  (*(v8 + 8))(v10, v7);
  sub_252529A08(v20, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  sub_252529A6C(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15);
  sub_252400FC8(&qword_27F4DDAB0, &qword_27F4DDA80, &qword_25269DD90, MEMORY[0x277CDFB18]);
  v18 = v21;
  sub_2526927C0();

  return (*(v22 + 8))(v14, v18);
}

void *sub_252527B8C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2526910F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = type metadata accessor for ButtonControlView(0);
  v8 = result;
  v9 = a2 + *(result + 8);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    if ((v10 & 1) == 0)
    {
      return result;
    }
  }

  else
  {

    sub_252692F00();
    v11 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v10, 0);
    result = (*(v4 + 8))(v6, v3);
    if (v17 != 1)
    {
      return result;
    }
  }

  v12 = (a2 + *(v8 + 10));
  v13 = *v12;
  v14 = *(v12 + 1);
  v17 = *v12;
  v18 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320, &unk_25269FA20);
  result = sub_2526924E0();
  if ((v16 & 1) == 0)
  {
    if (qword_27F4DAAF0 != -1)
    {
      swift_once();
    }

    MEMORY[0x28223BE20](qword_27F4FB490);
    *&v15[-16] = a2;
    sub_252690A80();
    v17 = v13;
    v18 = v14;
    v16 = 1;
    return sub_2526924F0();
  }

  return result;
}

uint64_t sub_252527DF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_2526910F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = type metadata accessor for ButtonControlView(0);
  v8 = result;
  v9 = a2 + *(result + 32);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    if ((v10 & 1) == 0)
    {
      return result;
    }
  }

  else
  {

    sub_252692F00();
    v11 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v10, 0);
    result = (*(v4 + 8))(v6, v3);
    if (v17 != 1)
    {
      return result;
    }
  }

  if (qword_27F4DAAE8 != -1)
  {
    swift_once();
  }

  v12 = qword_27F4FB488;
  [qword_27F4FB488 impactOccurred];
  [v12 prepare];
  if (qword_27F4DAAF8 != -1)
  {
    swift_once();
  }

  MEMORY[0x28223BE20](qword_27F4FB498);
  *&v16[-16] = a2;
  sub_252690A80();
  v13 = (a2 + *(v8 + 40));
  v14 = *v13;
  v15 = *(v13 + 1);
  v17 = v14;
  v18 = v15;
  v16[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320, &unk_25269FA20);
  return sub_2526924F0();
}

uint64_t sub_252528088(uint64_t a1, __n128 a2)
{
  type metadata accessor for ButtonControlView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E11F8, &qword_2526A4A78);
  return sub_2526924F0();
}

uint64_t sub_252528104()
{
  v1 = v0;
  v64 = sub_2526912C0();
  v61 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v3 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2526917F0();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2526910F0();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ButtonControlView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1158, &qword_2526A49C0);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v13 = &v51 - v12;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1160, &qword_2526A49C8);
  MEMORY[0x28223BE20](v55);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v51 - v17;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1168, &qword_2526A49D0);
  MEMORY[0x28223BE20](v62);
  v63 = &v51 - v18;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1170, &qword_2526A49D8);
  MEMORY[0x28223BE20](v66);
  v67 = &v51 - v19;
  sub_252529A08(v1, v11);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  sub_252529A6C(v11, v21 + v20);
  v65 = v8;
  v22 = v1 + *(v8 + 32);
  v23 = *v22;
  if (*(v22 + 8) != 1)
  {

    sub_252692F00();
    v24 = sub_2526919C0();
    sub_252690570();

    v25 = v52;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v23, 0);
    (*(v53 + 8))(v25, v54);
    LOBYTE(v23) = v68;
  }

  v26 = 0.5;
  if (v23)
  {
    v26 = 1.0;
  }

  v68 = sub_252529AD0;
  v69 = v21;
  *&v70 = v26;
  sub_2526917D0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1178, &qword_2526A49E8);
  v28 = sub_252529B50();
  sub_252692020();
  (*(v59 + 8))(v6, v60);

  sub_2526912A0();
  v68 = v27;
  v69 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v58;
  sub_252691EB0();
  v30 = *(v61 + 8);
  v31 = v64;
  v30(v3, v64);
  (*(v56 + 8))(v13, v29);
  sub_252691290();
  v32 = v57;
  sub_252690C10();
  v30(v3, v31);
  sub_252372288(v15, &qword_27F4E1160, &qword_2526A49C8);
  v33 = v63;
  v34 = &v63[*(v62 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD830, &qword_25269D680);
  sub_252690D90();
  *v34 = 0;
  sub_252323454(v32, v33);
  v35 = *(v1 + 16);
  v36 = *(v1 + 56);
  v68 = *(v1 + 8);
  v69 = v35;
  v37 = *(v1 + 40);
  v70 = *(v1 + 24);
  v71 = v37;
  v72 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1198, &unk_2526A4A00);
  MEMORY[0x2530A4210](&v73);
  if (v77 == 1)
  {
    sub_252393F68(v73, v74, v75, v76, 1);
    v39 = v67;
  }

  else
  {
    v40 = v73;
    sub_252393F68(v73, v74, v75, v76, v77);
    v39 = v67;
    if (v40 == 1)
    {
      v41 = (v65 + 24);
      v42 = v1;
      goto LABEL_10;
    }
  }

  v42 = v1 + *(v65 + 24);
  v41 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0) + 28);
LABEL_10:
  v43 = sub_252685F88(*(v42 + *v41), *(v42 + *v41 + 8));
  v45 = v44;

  v68 = v43;
  v69 = v45;
  sub_252529C08();
  sub_252404480();
  sub_252691FB0();

  sub_252372288(v33, &qword_27F4E1168, &qword_2526A49D0);
  v46 = *(v1 + 16);
  v47 = *(v1 + 56);
  v68 = *(v1 + 8);
  v69 = v46;
  v48 = *(v1 + 40);
  v70 = *(v1 + 24);
  v71 = v48;
  v72 = v47;
  MEMORY[0x2530A4210](&v73, v38);
  if (v77 == 1)
  {
    sub_252393F68(v73, v74, v75, v76, 1);
  }

  else
  {
    sub_252393F68(v73, v74, v75, v76, v77);
  }

  v68 = sub_252692C40();
  v69 = v49;
  sub_252690BE0();

  return sub_252372288(v39, &qword_27F4E1170, &qword_2526A49D8);
}

uint64_t sub_2525289A0@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDA88, &qword_25269DD98);
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  MEMORY[0x28223BE20](v3);
  v40 = &v36 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E11B0, &qword_2526A4A10);
  MEMORY[0x28223BE20](v39);
  v7 = &v36 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E11B8, &qword_2526A4A18);
  MEMORY[0x28223BE20](v37);
  v9 = &v36 - v8;
  v10 = type metadata accessor for ButtonControlView(0);
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E11C0, &qword_2526A4A20);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v36 - v15);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E11C8, &qword_2526A4A28);
  MEMORY[0x28223BE20](v38);
  v18 = &v36 - v17;
  sub_2526909F0();
  sub_2526909F0();
  *v16 = sub_252692920();
  v16[1] = v19;
  v20 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E11D0, &qword_2526A4A30) + 44);
  v36 = a1;
  sub_252528EE0(a1, v20);
  sub_252529A08(a1, &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = swift_allocObject();
  sub_252529A6C(&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_252529DB8;
  *(v23 + 24) = v22;
  KeyPath = swift_getKeyPath();
  sub_25237153C(v16, v9, &qword_27F4E11C0, &qword_2526A4A20);
  v25 = &v9[*(v37 + 36)];
  *v25 = 1;
  *(v25 + 1) = sub_25249A7D8;
  *(v25 + 2) = v23;
  *(v25 + 3) = KeyPath;
  v25[32] = 0;
  sub_25237153C(v9, v7, &qword_27F4E11B8, &qword_2526A4A18);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E11D8, &unk_2526A4A68);
  sub_252529E18();
  sub_252529ED0();
  sub_252691470();
  sub_252372288(v9, &qword_27F4E11B8, &qword_2526A4A18);
  sub_252372288(v16, &qword_27F4E11C0, &qword_2526A4A20);
  v26 = v36 + *(v11 + 44);
  v27 = *(v26 + 2);
  v46 = *v26;
  v47 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E11F8, &qword_2526A4A78);
  sub_2526924E0();
  v28 = v44;
  v29 = v45;
  sub_252692A40();
  v30 = &v18[*(v38 + 36)];
  *v30 = v28;
  *(v30 + 1) = v29;
  *(v30 + 2) = v31;
  *(v30 + 3) = v32;
  v33 = v40;
  sub_2525277C0(v40);
  sub_2526908B0();
  sub_252529FF8();
  sub_252400FC8(&qword_27F4DDAC0, &qword_27F4DDA88, &qword_25269DD98, MEMORY[0x277CDF728]);
  v34 = v41;
  sub_252692010();
  (*(v42 + 8))(v33, v34);
  return sub_252372288(v18, &qword_27F4E11C8, &qword_2526A4A28);
}

uint64_t sub_252528EE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v4 = sub_2526910F0();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2526923E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1218, &qword_2526A4A88);
  MEMORY[0x28223BE20](v10 - 8);
  v59 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v55 = &v50 - v13;
  sub_2525295C8(a1);
  v54 = type metadata accessor for ButtonControlView(0);
  v14 = a1 + *(v54 + 24);
  v15 = *&v14[*(type metadata accessor for AccessoryControl.BinaryViewConfig(0) + 20)];
  sub_252692330();
  v16 = sub_252692280();

  v58 = v15;
  if (v16)
  {
    v17 = sub_2526922F0();
  }

  else
  {
    v17 = sub_252692330();
  }

  v57 = v17;
  v18 = a1[2];
  v19 = a1[7];
  v68 = a1[1];
  v69 = v18;
  v20 = *(a1 + 5);
  v70 = *(a1 + 3);
  *v71 = v20;
  *&v71[16] = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1198, &unk_2526A4A00);
  MEMORY[0x2530A4210](&v63);
  if (*&v65[0] == 1)
  {
    sub_252393F68(v63, *(&v63 + 1), v64, *(&v64 + 1), 1);
  }

  else
  {
    v22 = v63;
    sub_252393F68(v63, *(&v63 + 1), v64, *(&v64 + 1), *&v65[0]);
    if (v22)
    {
      goto LABEL_8;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
LABEL_8:

  sub_2526923D0();
  (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
  v53 = sub_252692420();

  (*(v7 + 8))(v9, v6);
  v23 = a1[2];
  v24 = a1[7];
  v68 = a1[1];
  v69 = v23;
  v25 = *(a1 + 5);
  v70 = *(a1 + 3);
  *v71 = v25;
  *&v71[16] = v24;
  MEMORY[0x2530A4210](&v63, v21);
  if (*&v65[0] == 1)
  {
    sub_252393F68(v63, *(&v63 + 1), v64, *(&v64 + 1), 1);
    v26 = v54;
    goto LABEL_12;
  }

  v27 = v63;
  sub_252393F68(v63, *(&v63 + 1), v64, *(&v64 + 1), *&v65[0]);
  v26 = v54;
  if (v27 != 1)
  {
LABEL_12:
    v28 = a1 + *(v26 + 32);
    v29 = *v28;
    if (v28[8] == 1)
    {
      if ((v29 & 1) == 0)
      {
LABEL_14:
        sub_2526922F0();
        v58 = sub_252692350();

        goto LABEL_17;
      }
    }

    else
    {

      sub_252692F00();
      v30 = sub_2526919C0();
      sub_252690570();

      v31 = v50;
      sub_2526910E0();
      swift_getAtKeyPath();
      sub_25235E264(v29, 0);
      (*(v51 + 8))(v31, v52);
      if (v68 != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_17;
  }

LABEL_17:
  KeyPath = swift_getKeyPath();
  v52 = KeyPath;
  sub_252692920();
  sub_2526909C0();
  v80 = 1;
  v33 = *a1;
  LODWORD(v54) = *(a1 + *(v26 + 28));
  type metadata accessor for AnimationModel(0);
  sub_25252A744(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
  v34 = sub_252690DF0();
  v36 = v35;
  v37 = v55;
  v38 = v59;
  sub_25237153C(v55, v59, &qword_27F4E1218, &qword_2526A4A88);
  v39 = v38;
  v40 = v56;
  sub_25237153C(v39, v56, &qword_27F4E1218, &qword_2526A4A88);
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1220, &qword_2526A4AC0) + 48);
  *(v65 + 8) = v60;
  v42 = v40 + v41;
  v43 = v53;
  v63 = v53;
  LOWORD(v64) = 1;
  *(&v64 + 2) = v78;
  WORD3(v64) = v79;
  *(&v64 + 1) = KeyPath;
  v44 = v58;
  *&v65[0] = v58;
  *(&v65[1] + 8) = v61;
  *(&v65[2] + 8) = v62;
  *(&v65[3] + 1) = v34;
  *&v66 = v36;
  v45 = v34;
  *(&v66 + 1) = v33;
  LOBYTE(v34) = v54;
  v67 = v54;
  sub_25237153C(&v63, &v68, &qword_27F4E1228, &qword_2526A4AC8);

  v46 = v65[3];
  *(v42 + 64) = v65[2];
  *(v42 + 80) = v46;
  *(v42 + 96) = v66;
  *(v42 + 112) = v67;
  v47 = v64;
  *v42 = v63;
  *(v42 + 16) = v47;
  v48 = v65[1];
  *(v42 + 32) = v65[0];
  *(v42 + 48) = v48;
  sub_252372288(v37, &qword_27F4E1218, &qword_2526A4A88);
  *&v71[8] = v60;
  v68 = v43;
  v69 = 0;
  LOWORD(v70) = 1;
  *(&v70 + 2) = v78;
  WORD3(v70) = v79;
  *(&v70 + 1) = v52;
  *v71 = v44;
  v72 = v61;
  v73 = v62;
  v74 = v45;
  v75 = v36;
  v76 = v33;
  v77 = v34;
  sub_252372288(&v68, &qword_27F4E1228, &qword_2526A4AC8);
  return sub_252372288(v59, &qword_27F4E1218, &qword_2526A4A88);
}

void *sub_2525295C8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1230, &qword_2526A4AD0);
  MEMORY[0x28223BE20](v3);
  v5 = v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1238, &qword_2526A4AD8);
  MEMORY[0x28223BE20](v6);
  v8 = (v23 - v7);
  v9 = *(a1 + 16);
  v10 = *(a1 + 56);
  v23[0] = *(a1 + 8);
  v23[1] = v9;
  v11 = *(a1 + 40);
  v24 = *(a1 + 24);
  v25 = v11;
  v26 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1198, &unk_2526A4A00);
  MEMORY[0x2530A4210](&v27, v12);
  if (v31 == 1)
  {
    sub_252393F68(v27, v28, v29, v30, 1);
  }

  else
  {
    v13 = v27;
    sub_252393F68(v27, v28, v29, v30, v31);
    if (v13 == 1)
    {
      v14 = a1 + *(type metadata accessor for ButtonControlView(0) + 24);
      v15 = *(v14 + *(type metadata accessor for AccessoryControl.BinaryViewConfig(0) + 20));
      *v8 = swift_getKeyPath();
      v8[1] = v15;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1240, &unk_2526A4B40);
      sub_25252A5A4();
      sub_25252A65C();
      return sub_252691470();
    }
  }

  KeyPath = swift_getKeyPath();
  LOBYTE(v23[0]) = 0;
  *v5 = KeyPath;
  v5[65] = 0;
  v18 = type metadata accessor for ControlBackgroundView(0);
  v19 = v18[5];
  *&v5[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210, &qword_25269CB70);
  swift_storeEnumTagMultiPayload();
  v20 = &v5[v18[6]];
  v5[v18[7]] = 2;
  v21 = v18[8];
  v22 = [objc_opt_self() systemGray4Color];
  *&v5[v21] = sub_252692240();
  *v20 = 0;
  v20[8] = 1;
  *&v5[*(v3 + 36)] = 256;
  sub_25237153C(v5, v8, &qword_27F4E1230, &qword_2526A4AD0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1240, &unk_2526A4B40);
  sub_25252A5A4();
  sub_25252A65C();
  sub_252691470();
  return sub_252372288(v5, &qword_27F4E1230, &qword_2526A4AD0);
}

uint64_t sub_2525298E4()
{
  v1 = sub_2525275A0(v3);
  if (*(v0 + 32) != 1)
  {
    *v0 = (*v0 & 1) == 0;
  }

  return (v1)(v3, 0);
}

id sub_252529950()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755F0]) init];
  result = [v0 prepare];
  qword_27F4FB488 = v0;
  return result;
}

uint64_t sub_25252999C()
{
  result = sub_252692950();
  qword_27F4FB490 = result;
  return result;
}

uint64_t sub_2525299D4()
{
  result = sub_252692950();
  qword_27F4FB498 = result;
  return result;
}

uint64_t sub_252529A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonControlView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252529A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonControlView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252529AD0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ButtonControlView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_2525289A0(v4, a1);
}

unint64_t sub_252529B50()
{
  result = qword_27F4E1180;
  if (!qword_27F4E1180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1178, &qword_2526A49E8);
    sub_252400FC8(&qword_27F4E1188, &qword_27F4E1190, &unk_2526A49F0, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1180);
  }

  return result;
}

unint64_t sub_252529C08()
{
  result = qword_27F4E11A0;
  if (!qword_27F4E11A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1168, &qword_2526A49D0);
    sub_252529CC0();
    sub_252400FC8(&qword_27F4DD828, &qword_27F4DD830, &qword_25269D680, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E11A0);
  }

  return result;
}

unint64_t sub_252529CC0()
{
  result = qword_27F4E11A8;
  if (!qword_27F4E11A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1160, &qword_2526A49C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1178, &qword_2526A49E8);
    sub_252529B50();
    swift_getOpaqueTypeConformance2();
    sub_25252A744(&qword_27F4DD380, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E11A8);
  }

  return result;
}

uint64_t sub_252529DB8()
{
  type metadata accessor for ButtonControlView(0);

  return sub_2525298E4();
}

unint64_t sub_252529E18()
{
  result = qword_27F4E11E0;
  if (!qword_27F4E11E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E11B8, &qword_2526A4A18);
    sub_252400FC8(&qword_27F4E11E8, &qword_27F4E11C0, &qword_2526A4A20, MEMORY[0x277CE11A8]);
    sub_25249A86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E11E0);
  }

  return result;
}

unint64_t sub_252529ED0()
{
  result = qword_27F4E11F0;
  if (!qword_27F4E11F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E11D8, &unk_2526A4A68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E11C0, &qword_2526A4A20);
    sub_252400FC8(&qword_27F4E11E8, &qword_27F4E11C0, &qword_2526A4A20, MEMORY[0x277CE11A8]);
    swift_getOpaqueTypeConformance2();
    sub_252400FC8(&qword_27F4DC198, &qword_27F4DC1A0, qword_2526A39C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E11F0);
  }

  return result;
}

unint64_t sub_252529FF8()
{
  result = qword_27F4E1200;
  if (!qword_27F4E1200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E11C8, &qword_2526A4A28);
    sub_25252A084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1200);
  }

  return result;
}

unint64_t sub_25252A084()
{
  result = qword_27F4E1208;
  if (!qword_27F4E1208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1210, &qword_2526A4A80);
    sub_252529E18();
    sub_252529ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1208);
  }

  return result;
}

uint64_t objectdestroyTm_18()
{
  v1 = type metadata accessor for ButtonControlView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v26 = *(*(v1 - 8) + 64);
  v27 = v0;
  v4 = v0 + v3;

  if (*(v0 + v3 + 56) != 1)
  {
  }

  v5 = v4 + *(v1 + 24);

  v6 = type metadata accessor for IconDescriptor(0);
  v7 = *(v6 + 20);
  v8 = sub_25268F910();
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);
  v10 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0) + 28);

  v9(v10 + *(v6 + 20), v8);
  v11 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

  v12 = v5 + v11[6];
  type metadata accessor for ControlTextModifier.Config(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0, &unk_252696D30) + 48);
    v15 = sub_25268D990();
    (*(*(v15 - 8) + 8))(v12 + v14, v15);
  }

  v16 = v5 + v11[7];
  v17 = *(v16 + 32);
  if (v17 != 255)
  {
    sub_252376DBC(*v16, *(v16 + 8), *(v16 + 16), *(v16 + 24), v17);
  }

  v18 = v5 + v11[8];
  v19 = *(v18 + 32);
  if (v19 != 255)
  {
    sub_252376DBC(*v18, *(v18 + 8), *(v18 + 16), *(v18 + 24), v19);
  }

  v20 = v5 + v11[11];
  type metadata accessor for AccessoryControl.StatusProvider(0);
  v21 = swift_getEnumCaseMultiPayload();
  if (v21 <= 3)
  {
    if (v21 == 1 || v21 == 3)
    {
      goto LABEL_18;
    }
  }

  else if (v21 == 4)
  {
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380, &qword_2526A49E0) + 64);
    v23 = sub_25268D990();
    v24 = *(v23 - 8);
    if (!(*(v24 + 48))(v20 + v22, 1, v23))
    {
      (*(v24 + 8))(v20 + v22, v23);
    }
  }

  else if (v21 == 5 || v21 == 7)
  {
LABEL_18:
  }

  sub_25235E264(*(v4 + *(v1 + 32)), *(v4 + *(v1 + 32) + 8));

  return MEMORY[0x2821FE8E8](v27, v3 + v26, v2 | 7);
}

uint64_t sub_25252A4D0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ButtonControlView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_25252A554()
{
  __asm { FMOV            V0.2D, #1.0 }

  return sub_252528088(*(v0 + 16), _Q0);
}

unint64_t sub_25252A5A4()
{
  result = qword_27F4E1248;
  if (!qword_27F4E1248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1240, &unk_2526A4B40);
    sub_25249D020();
    sub_252400FC8(&qword_27F4DC108, &qword_27F4DC110, &unk_2526A22D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1248);
  }

  return result;
}

unint64_t sub_25252A65C()
{
  result = qword_27F4E1250;
  if (!qword_27F4E1250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1230, &qword_2526A4AD0);
    sub_25252A744(&qword_27F4E1258, type metadata accessor for ControlBackgroundView, &unk_2526AC2E8);
    sub_252400FC8(&qword_27F4E1260, &qword_27F4E1268, &unk_2526A4B50, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1250);
  }

  return result;
}

uint64_t sub_25252A744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25252A78C()
{
  result = qword_27F4E1270;
  if (!qword_27F4E1270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1170, &qword_2526A49D8);
    sub_252529C08();
    sub_25252A744(&qword_27F4DD380, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1270);
  }

  return result;
}

void sub_25252A8D0(uint64_t a1)
{
  type metadata accessor for DecorationControlView.Appearance(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AccessoryControl(319);
    if (v2 <= 0x3F)
    {
      sub_252690CA0();
      if (v3 <= 0x3F)
      {
        sub_25252F2E0(319, &qword_27F4E1288, &type metadata for DecorationControlView.PaddingStyle);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25252A9BC(uint64_t a1)
{
  result = type metadata accessor for IconDescriptor(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25252AA30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DecorationControlView.Appearance.Button(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j____swift_get_extra_inhabitant_index_8Tm);
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IconDescriptor(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}
uint64_t sub_23DADA998(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCE78, &unk_23DB791B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23DADAA48(uint64_t a1)
{
  sub_23DADA640(319);
  if (v1 <= 0x3F)
  {
    sub_23DA6DD20(319);
    if (v2 <= 0x3F)
    {
      sub_23DA5195C(319);
      if (v3 <= 0x3F)
      {
        sub_23DADB26C(319, &qword_27E2FEE28, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23DADAB2C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCE78, &unk_23DB791B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_23DADAC7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCE78, &unk_23DB791B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_23DADADB8(uint64_t a1)
{
  sub_23DADA640(319);
  if (v1 <= 0x3F)
  {
    sub_23DA6DD20(319);
    if (v2 <= 0x3F)
    {
      sub_23DA5195C(319);
      if (v3 <= 0x3F)
      {
        sub_23DA557F4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23DADAE7C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_23DADB26C(319, &qword_27E2FD518, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23DADAF20(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_23DADB06C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v18 + 8) = 0;
          *v18 = a2 - 255;
        }

        else
        {
          *(v18 + 8) = -a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void sub_23DADB26C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

unint64_t sub_23DADB2D4()
{
  result = qword_27E2FEEC0;
  if (!qword_27E2FEEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEEC8, &qword_23DB7D5C8);
    sub_23DADA750(&qword_27E2FEDF0, type metadata accessor for PracticeFooterViewiOS, &unk_23DB7D718);
    sub_23DADA750(&qword_27E2FEDF8, type metadata accessor for PracticeFooterViewDefault, &unk_23DB7D6C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FEEC0);
  }

  return result;
}

unint64_t sub_23DADB3C4()
{
  result = qword_27E2FEED0;
  if (!qword_27E2FEED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEE10, &unk_23DB7D4B0);
    sub_23DA17B80(&qword_27E2FEED8, &qword_27E2FEE08, &qword_23DB7D4A8, &unk_23DB7D628);
    sub_23DA17B80(&qword_27E2FEEE0, &qword_27E2FEEE8, qword_23DB7D5D0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FEED0);
  }

  return result;
}

unint64_t sub_23DADB57C()
{
  result = qword_27E2FEF00;
  if (!qword_27E2FEF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEEF0, &qword_23DB7D768);
    sub_23DA17B80(&qword_27E2FEF08, &qword_27E2FEF10, &qword_23DB7D778, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FEF00);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for PracticeFooterViewiOS(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_23DB6F12C();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + *(v1 + 28);
  v6 = sub_23DB6F9BC();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);

  return swift_deallocObject();
}

unint64_t sub_23DADB830()
{
  result = qword_27E2FEF30;
  if (!qword_27E2FEF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEF18, &qword_23DB7D780);
    sub_23DA17B80(&qword_27E2FEF38, &qword_27E2FEF40, &qword_23DB7D7A0, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FEF30);
  }

  return result;
}

uint64_t sub_23DADB8F0()
{
  v1 = type metadata accessor for PracticeFooterViewiOS(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 17) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_23DB6F12C();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + *(v1 + 28);
  v6 = sub_23DB6F9BC();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);

  return swift_deallocObject();
}

uint64_t sub_23DADBAD0()
{
  v1 = *(type metadata accessor for PracticeFooterViewiOS(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 17) & ~*(v1 + 80));

  return sub_23DACB344(v2, v3);
}

unint64_t sub_23DADBB3C()
{
  result = qword_27E2FEF70;
  if (!qword_27E2FEF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEF68, &unk_23DB7D810);
    sub_23DADCB08(&qword_27E2FEF78, &qword_27E2FD908, &qword_23DB790D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FEF70);
  }

  return result;
}

uint64_t sub_23DADBBE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DB6F52C();
  *a1 = result;
  return result;
}

uint64_t sub_23DADBC48(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_23DA17B80(&qword_27E2FCFA8, &qword_27E2FCFB0, &qword_23DB787F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23DADBCF8()
{
  result = qword_27E2FEF90;
  if (!qword_27E2FEF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEF80, &qword_23DB7D850);
    sub_23DA17B80(&qword_27E2FEF98, &qword_27E2FEFA0, &unk_23DB7D888, MEMORY[0x277CDF028]);
    sub_23DA17B80(&qword_27E2FCFA8, &qword_27E2FCFB0, &qword_23DB787F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FEF90);
  }

  return result;
}

unint64_t sub_23DADBDDC()
{
  result = qword_27E2FEFA8;
  if (!qword_27E2FEFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEF58, &qword_23DB7D800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEF50, &qword_23DB7D7F8);
    sub_23DB6FA4C();
    sub_23DADBC48(&qword_27E2FEF88, &qword_27E2FEF50, &qword_23DB7D7F8, sub_23DADBCF8);
    sub_23DADA750(&qword_27E2FCFB8, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FEFA8);
  }

  return result;
}

uint64_t sub_23DADBF28()
{
  v1 = *(type metadata accessor for PracticeFooterViewiOS(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23DACB6FC(v2);
}

uint64_t sub_23DADBF88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23DADC078()
{
  result = qword_27E2FEFC8;
  if (!qword_27E2FEFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEFB8, &qword_23DB7D898);
    sub_23DA17B80(&qword_27E2FEFD0, &qword_27E2FEFD8, &unk_23DB7D8A8, MEMORY[0x277CE1138]);
    sub_23DA17B80(&qword_27E2FCE70, &qword_27E2FCE68, &unk_23DB76FE0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FEFC8);
  }

  return result;
}

uint64_t objectdestroy_90Tm()
{
  v1 = type metadata accessor for PracticeFooterViewDefault(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_23DB6F12C();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_23DADC334()
{
  result = qword_27E2FF028;
  if (!qword_27E2FF028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF020, &qword_23DB7D8F8);
    sub_23DADCD90(&qword_27E2FF030, &qword_27E2FF038, &qword_23DB7D900, sub_23DADC3EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF028);
  }

  return result;
}

unint64_t sub_23DADC3EC()
{
  result = qword_27E2FF040;
  if (!qword_27E2FF040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF048, &unk_23DB7D908);
    sub_23DAB5878();
    sub_23DADC478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF040);
  }

  return result;
}

unint64_t sub_23DADC478()
{
  result = qword_27E2FF050;
  if (!qword_27E2FF050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF050);
  }

  return result;
}

uint64_t sub_23DADC4CC(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 1986359920 && a2 == 0xE400000000000000;
  if (v2 || (sub_23DB70DBC() & 1) != 0 || a1 == 1954047342 && a2 == 0xE400000000000000 || (sub_23DB70DBC()) && (type metadata accessor for PracticeFooterViewDefault(0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD018, &qword_23DB7D950), sub_23DB7038C(), v7 == 1))
  {
    if (qword_27E2FBBB8 != -1)
    {
      swift_once();
    }

    v5 = &qword_27E30A690;
  }

  else
  {
    if (qword_27E2FBBB0 != -1)
    {
      swift_once();
    }

    v5 = &qword_27E30A688;
  }

  return *v5;
}

unint64_t sub_23DADC660()
{
  result = qword_27E2FF068;
  if (!qword_27E2FF068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF008, &qword_23DB7D8E0);
    sub_23DADC6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF068);
  }

  return result;
}

unint64_t sub_23DADC6EC()
{
  result = qword_27E2FF070;
  if (!qword_27E2FF070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF000, &qword_23DB7D8D8);
    sub_23DADC7A4();
    sub_23DA17B80(&qword_27E2FED10, &qword_27E2FED18, &qword_23DB7D018, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF070);
  }

  return result;
}

unint64_t sub_23DADC7A4()
{
  result = qword_27E2FF078;
  if (!qword_27E2FF078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEFF8, &qword_23DB7D8D0);
    sub_23DADC830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF078);
  }

  return result;
}

unint64_t sub_23DADC830()
{
  result = qword_27E2FF080;
  if (!qword_27E2FF080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEFF0, &qword_23DB7D8C8);
    sub_23DADC8BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF080);
  }

  return result;
}

unint64_t sub_23DADC8BC()
{
  result = qword_27E2FF088;
  if (!qword_27E2FF088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEFE8, &qword_23DB7D8C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEFE0, &qword_23DB7D8B8);
    sub_23DB6F81C();
    sub_23DA17B80(&qword_27E2FF058, &qword_27E2FEFE0, &qword_23DB7D8B8, MEMORY[0x277CDF028]);
    sub_23DADA750(&qword_27E2FF060, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    sub_23DA17B80(&unk_27E2FE7A0, &qword_27E2FE768, &qword_23DB7C410, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF088);
  }

  return result;
}

uint64_t sub_23DADCA84(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PracticeFooterViewDefault(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_23DADCB08(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23DADCBA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23DADCBE8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_23DADCC60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23DADCCA8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_23DADCD90(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_23DADA750(&qword_27E2FCBD0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23DADCE48()
{
  result = qword_27E2FF198;
  if (!qword_27E2FF198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF0B8, &unk_23DB7D978);
    sub_23DADCED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF198);
  }

  return result;
}

unint64_t sub_23DADCED4()
{
  result = qword_27E2FF1A0;
  if (!qword_27E2FF1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF0A8, &qword_23DB7D968);
    sub_23DADCF60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF1A0);
  }

  return result;
}

unint64_t sub_23DADCF60()
{
  result = qword_27E2FF1A8;
  if (!qword_27E2FF1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF0A0, &qword_23DB7D960);
    sub_23DA17B80(&qword_27E2FF1B0, &qword_27E2FF098, &qword_23DB7D958, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF1A8);
  }

  return result;
}

uint64_t sub_23DADD018(void *a1)
{
  sub_23DB6F2DC();
  sub_23DB702AC();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB703FC();
  sub_23DB6F7AC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_23DADD168()
{
  result = qword_27E2FF1B8;
  if (!qword_27E2FF1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF1C0, &qword_23DB7DB58);
    sub_23DADD1F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF1B8);
  }

  return result;
}

unint64_t sub_23DADD1F4()
{
  result = qword_27E2FF1C8;
  if (!qword_27E2FF1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF1C8);
  }

  return result;
}

uint64_t sub_23DADD3E4(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v10[0] = v1[2];
  v2 = v10[0];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v6 = *(type metadata accessor for InstructionCardAndPracticeView(0, v10) - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t sub_23DADD4AC()
{
  v2 = *(v0 + 56);
  v10 = *(v0 + 32);
  v1 = v10;
  v11 = *(v0 + 40);
  v9 = v11;
  v12 = v2;
  v3 = (type metadata accessor for InstructionCardAndPracticeView(0, &v10) - 8);
  v4 = (*(*v3 + 80) + 64) & ~*(*v3 + 80);
  swift_unknownObjectRelease();
  sub_23DA4FF14(*(v0 + v4), *(v0 + v4 + 8));
  (*(*(v1 - 8) + 8))(v0 + v4 + v3[16], v1);
  (*(*(v9 - 8) + 8))(v0 + v4 + v3[17]);
  v5 = v0 + v4 + v3[18];
  v6 = sub_23DB6F9BC();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);

  return swift_deallocObject();
}

uint64_t sub_23DADD68C()
{
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v1[2] = v3;
  v1[3] = v2;
  v1[4] = v4;
  v1[5] = v5;
  v6 = *(type metadata accessor for InstructionCardAndPracticeView(0, (v1 + 2)) - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v0[2];
  v9 = v0[3];
  v10 = swift_task_alloc();
  v1[6] = v10;
  *v10 = v1;
  v10[1] = sub_23DADD7A0;

  return sub_23DAD7128(v8, v9, v0 + v7, v3, v2, v4, v5);
}

uint64_t sub_23DADD7A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_23DADD8C0()
{
  result = qword_27E2FF1D8;
  if (!qword_27E2FF1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF1D0, &qword_23DB7DCA0);
    sub_23DA17B80(&qword_27E2FF1E0, qword_27E2FF1E8, &qword_23DB7DCB8, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF1D8);
  }

  return result;
}

void sub_23DADD978(uint64_t a1)
{
  sub_23DADB26C(319, &qword_27E2FD518, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_23DA557F4();
      if (v3 <= 0x3F)
      {
        sub_23DADB26C(319, &qword_27E2FEE28, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23DADDA70(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_23DB6F9BC() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v11;
  }

  if (v7 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v7;
  }

  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  v16 = *(v8 + 80);
  v17 = *(v8 + 64);
  if (!v10)
  {
    ++v17;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v16 & 0xF8 | 7;
  if (v13 >= a2)
  {
    goto LABEL_34;
  }

  v19 = ((v17 + ((v15 + v18 + ((v14 + 24) & ~v14)) & ~v18) + 24) & 0xFFFFFFFFFFFFFFF8) + 16;
  v20 = v19 & 0xFFFFFFF8;
  if ((v19 & 0xFFFFFFF8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = a2 - v13 + 1;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_34;
      }
    }

LABEL_31:
    v26 = v24 - 1;
    if (v20)
    {
      v26 = 0;
      v27 = *a1;
    }

    else
    {
      v27 = 0;
    }

    return v13 + (v27 | v26) + 1;
  }

  if (v23)
  {
    v24 = *(a1 + v19);
    if (v24)
    {
      goto LABEL_31;
    }
  }

LABEL_34:
  v28 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v14 + 24) & ~v14;
  if (v7 >= v12)
  {
    v31 = *(v6 + 48);

    return v31(v28, v7, v5);
  }

  else
  {
    v29 = (v28 + v15 + v18) & ~v18;
    if (v11 < 0x7FFFFFFE)
    {
      v32 = *(((v29 + v17) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v32 >= 0xFFFFFFFF)
      {
        LODWORD(v32) = -1;
      }

      if ((v32 + 1) >= 2)
      {
        return v32;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v30 = (*(v9 + 48))(v29);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_23DADDCF8(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v35 = v8;
  v9 = *(v8 + 84);
  v10 = sub_23DB6F9BC();
  v11 = 0;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  if (v13)
  {
    v16 = v13 - 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  else
  {
    v17 = v16;
  }

  if (v9 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v9;
  }

  v19 = *(v12 + 80) & 0xF8 | 7;
  if (v13)
  {
    v20 = *(*(v10 - 8) + 64);
  }

  else
  {
    v20 = *(*(v10 - 8) + 64) + 1;
  }

  v21 = ((v20 + ((v15 + v19 + ((v14 + 24) & ~v14)) & ~v19) + 24) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v18 < a3)
  {
    if (((v20 + ((v15 + v19 + ((v14 + 24) & ~v14)) & ~v19) + 24) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a3 - v18 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v11 = v23;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 > v18)
  {
    if (((v20 + ((v15 + v19 + ((v14 + 24) & ~v14)) & ~v19) + 24) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v24 = a2 - v18;
    }

    else
    {
      v24 = 1;
    }

    if (((v20 + ((v15 + v19 + ((v14 + 24) & ~v14)) & ~v19) + 24) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v25 = ~v18 + a2;
      bzero(a1, ((v20 + ((v15 + v19 + ((v14 + 24) & ~v14)) & ~v19) + 24) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v25;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *(a1 + v21) = v24;
      }

      else
      {
        *(a1 + v21) = v24;
      }
    }

    else if (v11)
    {
      *(a1 + v21) = v24;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    *(a1 + v21) = 0;
  }

  else if (v11)
  {
    *(a1 + v21) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return;
  }

LABEL_43:
  v26 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v14 + 24) & ~v14;
  if (v9 >= v17)
  {
    v30 = *(v35 + 56);

    v30(v26, a2, v9, v7);
  }

  else
  {
    v27 = ((v26 + v15 + v19) & ~v19);
    if (v17 < a2)
    {
      v28 = (v20 & 0xFFFFFFF8) + 17;
      v29 = ~v17 + a2;
      bzero(((v26 + v15 + v19) & ~v19), v28);
      if (v28 > 3)
      {
        goto LABEL_46;
      }

      goto LABEL_64;
    }

    if (v16 < 0x7FFFFFFE)
    {
      v33 = &v27[v20] & 0xFFFFFFFFFFFFFFF8;
      if (a2 > 0x7FFFFFFE)
      {
        *(v33 + 8) = 0;
        *(v33 + 8) = a2 - 0x7FFFFFFF;
      }

      else
      {
        *(v33 + 8) = a2;
      }

      return;
    }

    if (v16 >= a2)
    {
      v34 = *(v12 + 56);

      v34(v27, (a2 + 1));
    }

    else
    {
      if (v20 <= 3)
      {
        v31 = ~(-1 << (8 * v20));
      }

      else
      {
        v31 = -1;
      }

      if (v20)
      {
        v29 = v31 & (~v16 + a2);
        if (v20 <= 3)
        {
          v32 = v20;
        }

        else
        {
          v32 = 4;
        }

        bzero(v27, v20);
        if (v32 > 2)
        {
          if (v32 == 3)
          {
            *v27 = v29;
            v27[2] = BYTE2(v29);
            return;
          }

LABEL_46:
          *v27 = v29;
          return;
        }

        if (v32 != 1)
        {
          *v27 = v29;
          return;
        }

LABEL_64:
        *v27 = v29;
      }
    }
  }
}

void sub_23DADE0A8(uint64_t a1)
{
  sub_23DADB26C(319, &qword_27E2FD518, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_23DA557F4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23DADE188(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v37 = *(a3 + 24);
  v8 = *(v37 - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(sub_23DB6F9BC() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  v16 = *(v6 + 80);
  v17 = *(v6 + 64);
  v18 = *(v8 + 80);
  v19 = *(v8 + 64);
  v20 = *(v11 + 80);
  v21 = *(v11 + 64);
  if (!v13)
  {
    ++v21;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = v20 & 0xF8 | 7;
  if (a2 <= v15)
  {
    goto LABEL_30;
  }

  v23 = (v21 & 0xFFFFFFFFFFFFFFF8) + ((v19 + v22 + ((v17 + v18 + ((v16 + 24) & ~v16)) & ~v18)) & ~v22) + 17;
  v24 = 8 * v23;
  if (v23 > 3)
  {
    goto LABEL_17;
  }

  v27 = ((a2 - v15 + ~(-1 << v24)) >> v24) + 1;
  if (HIWORD(v27))
  {
    v25 = *(a1 + v23);
    if (v25)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v27 <= 0xFF)
    {
      if (v27 < 2)
      {
        goto LABEL_30;
      }

LABEL_17:
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_30;
      }

LABEL_25:
      v28 = (v25 - 1) << v24;
      if (v23 <= 3)
      {
        v29 = *a1;
      }

      else
      {
        v28 = 0;
        v29 = *a1;
      }

      return v15 + (v29 | v28) + 1;
    }

    v25 = *(a1 + v23);
    if (*(a1 + v23))
    {
      goto LABEL_25;
    }
  }

LABEL_30:
  v30 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v16 + 24) & ~v16;
  if (v7 == v15)
  {
    v31 = *(v6 + 48);
    v32 = v7;
    v33 = v5;

    return v31(v30, v32, v33);
  }

  v30 = (v30 + v17 + v18) & ~v18;
  if (v9 == v15)
  {
    v31 = *(v8 + 48);
    v32 = v9;
    v33 = v37;

    return v31(v30, v32, v33);
  }

  v34 = (v30 + v19 + v22) & ~v22;
  if (v14 < 0x7FFFFFFE)
  {
    v36 = *(((v34 + v21) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v36 >= 0xFFFFFFFF)
    {
      LODWORD(v36) = -1;
    }

    if ((v36 + 1) >= 2)
    {
      return v36;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v35 = (*(v12 + 48))(v34);
    if (v35 >= 2)
    {
      return v35 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_23DADE4E8(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v40 = *(a4 + 24);
  v41 = *(a4 + 16);
  v6 = *(v41 - 8);
  v42 = v6;
  v7 = *(v6 + 84);
  v8 = *(v40 - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = 0;
  v12 = *(sub_23DB6F9BC() - 8);
  v13 = *(v12 + 84);
  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  v16 = *(v8 + 80);
  v17 = *(v8 + 64);
  if (v13)
  {
    v18 = v13 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  if (v10 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v10;
  }

  v21 = *(v12 + 80) & 0xF8 | 7;
  if (v13)
  {
    v22 = *(v12 + 64);
  }

  else
  {
    v22 = *(v12 + 64) + 1;
  }

  v23 = (v22 & 0xFFFFFFFFFFFFFFF8) + ((v17 + v21 + ((v15 + v16 + ((v14 + 24) & ~v14)) & ~v16)) & ~v21) + 17;
  if (a3 > v20)
  {
    if (v23 <= 3)
    {
      v24 = ((a3 - v20 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
      if (HIWORD(v24))
      {
        v11 = 4;
      }

      else
      {
        if (v24 < 0x100)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24 >= 2)
        {
          v11 = v25;
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

  if (v20 >= a2)
  {
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *(a1 + v23) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_42;
      }

      *(a1 + v23) = 0;
    }

    else if (v11)
    {
      *(a1 + v23) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    if (!a2)
    {
      return;
    }

LABEL_42:
    v28 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v14 + 24) & ~v14;
    if (v7 == v20)
    {
      v29 = *(v42 + 56);
      v30 = a2;
      v31 = v7;
      v32 = v41;

LABEL_45:
      v29(v28, v30, v31, v32);
      return;
    }

    v28 = (v28 + v15 + v16) & ~v16;
    if (v9 == v20)
    {
      v29 = *(v8 + 56);
      v30 = a2;
      v31 = v9;
      v32 = v40;

      goto LABEL_45;
    }

    v33 = ((v28 + v17 + v21) & ~v21);
    if (v19 >= a2)
    {
      if (v18 < 0x7FFFFFFE)
      {
        v38 = &v33[v22] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0x7FFFFFFE)
        {
          *(v38 + 8) = 0;
          *(v38 + 8) = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(v38 + 8) = a2;
        }

        return;
      }

      if (v18 >= a2)
      {
        v39 = *(v12 + 56);

        v39(v33, a2 + 1);
        return;
      }

      if (v22 <= 3)
      {
        v36 = ~(-1 << (8 * v22));
      }

      else
      {
        v36 = -1;
      }

      if (!v22)
      {
        return;
      }

      v35 = v36 & (~v18 + a2);
      if (v22 <= 3)
      {
        v37 = v22;
      }

      else
      {
        v37 = 4;
      }

      bzero(v33, v22);
      if (v37 > 2)
      {
        if (v37 == 3)
        {
          *v33 = v35;
          v33[2] = BYTE2(v35);
          return;
        }

LABEL_55:
        *v33 = v35;
        return;
      }

      if (v37 != 1)
      {
        *v33 = v35;
        return;
      }
    }

    else
    {
      v34 = (v22 & 0xFFFFFFF8) + 17;
      v35 = ~v19 + a2;
      bzero(((v28 + v17 + v21) & ~v21), v34);
      if (v34 > 3)
      {
        goto LABEL_55;
      }
    }

    *v33 = v35;
    return;
  }

  v26 = ~v20 + a2;
  if (v23 <= 3)
  {
    v27 = (v26 >> (8 * v23)) + 1;
    bzero(a1, v23);
    *a1 = v26 & ~(-1 << (8 * v23));
    if (v11 > 1)
    {
LABEL_30:
      if (v11 == 2)
      {
        *(a1 + v23) = v27;
      }

      else
      {
        *(a1 + v23) = v27;
      }

      return;
    }
  }

  else
  {
    bzero(a1, (v22 & 0xFFFFFFFFFFFFFFF8) + ((v17 + v21 + ((v15 + v16 + ((v14 + 24) & ~v14)) & ~v16)) & ~v21) + 17);
    *a1 = v26;
    v27 = 1;
    if (v11 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v11)
  {
    *(a1 + v23) = v27;
  }
}

uint64_t sub_23DADE9B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_23DADEA00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23DADEA60()
{
  result = qword_27E2FF2F0;
  if (!qword_27E2FF2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF2F0);
  }

  return result;
}

uint64_t sub_23DADEAB4(uint64_t *a1)
{
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23DB6FA9C();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB7044C();
  sub_23DB7044C();
  sub_23DB6F2DC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_23DB6F2DC();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF1D0, &qword_23DB7DCA0);
  sub_23DB7044C();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB703FC();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB703FC();
  sub_23DB6F7AC();
  sub_23DB702AC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23DADF0A8(uint64_t (*a1)(void, void *), uint64_t (*a2)(void, void *))
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v10[0] = v2[2];
  v4 = v10[0];
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  v8 = *(a1(0, v10) - 8);
  return sub_23DAD59E8(v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80)), v4, v5, v6, v7, a2);
}

uint64_t objectdestroy_160Tm(uint64_t (*a1)(void, uint64_t *))
{
  v3 = *(v1 + 40);
  v11 = *(v1 + 16);
  v2 = v11;
  v12 = *(v1 + 24);
  v10 = v12;
  v13 = v3;
  v4 = (a1(0, &v11) - 8);
  v5 = v1 + ((*(*v4 + 80) + 48) & ~*(*v4 + 80));
  sub_23DA4FF14(*v5, *(v5 + 8));
  (*(*(v2 - 8) + 8))(v5 + v4[16], v2);
  (*(*(v10 - 8) + 8))(v5 + v4[17]);
  v6 = v5 + v4[18];
  v7 = sub_23DB6F9BC();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);

  return swift_deallocObject();
}

unint64_t sub_23DADF35C()
{
  result = qword_27E2FF310;
  if (!qword_27E2FF310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF2F8, &unk_23DB7DE60);
    sub_23DADF3E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF310);
  }

  return result;
}

unint64_t sub_23DADF3E8()
{
  result = qword_27E2FF318;
  if (!qword_27E2FF318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF308, &qword_23DB7DE78);
    sub_23DADF474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF318);
  }

  return result;
}

unint64_t sub_23DADF474()
{
  result = qword_27E2FF320;
  if (!qword_27E2FF320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF300, &qword_23DB7DE70);
    sub_23DADF52C();
    sub_23DA17B80(&qword_27E2FF338, &qword_27E2FF340, &qword_23DB7DE80, MEMORY[0x277CE0490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF320);
  }

  return result;
}

unint64_t sub_23DADF52C()
{
  result = qword_27E2FF328;
  if (!qword_27E2FF328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FDFB0, &qword_23DB79BF0);
    sub_23DADA750(&qword_27E2FF330, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF328);
  }

  return result;
}

uint64_t sub_23DADF638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = v4[5];
  v8 = *(type metadata accessor for NoInstructionCardPracticeView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_23DA16A34;

  return sub_23DAD065C(v10, v11, v4 + v9, v6, v7);
}

uint64_t sub_23DADF758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = *(type metadata accessor for NoInstructionCardPracticeView(0, v8, v9, a4) - 8);
  return sub_23DAD19CC(v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v8, v9, a1, a2, a3);
}

uint64_t sub_23DADF808(uint64_t (*a1)(unint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for NoInstructionCardPracticeView(0, v6, v7, a4) - 8);
  return a1(v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_201Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = type metadata accessor for NoInstructionCardPracticeView(0, v5, *(v4 + 40), a4);
  v7 = (*(*(v6 - 8) + 80) + 48) & ~*(*(v6 - 8) + 80);
  swift_unknownObjectRelease();
  sub_23DA4FF14(*(v4 + v7), *(v4 + v7 + 8));
  (*(*(v5 - 8) + 8))(v4 + v7 + *(v6 + 40), v5);
  v8 = v4 + v7 + *(v6 + 44);
  v9 = sub_23DB6F9BC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);

  return swift_deallocObject();
}

uint64_t sub_23DADFA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = v4[5];
  v8 = *(type metadata accessor for NoInstructionCardPracticeView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_23DA17C24;

  return sub_23DAD1850(v10, v11, v4 + v9, v6, v7);
}

uint64_t objectdestroy_198Tm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for NoInstructionCardPracticeView(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  sub_23DA4FF14(*v7, *(v7 + 8));
  (*(*(v5 - 8) + 8))(v7 + *(v6 + 40), v5);
  v8 = v7 + *(v6 + 44);
  v9 = sub_23DB6F9BC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);

  return swift_deallocObject();
}

uint64_t sub_23DADFD30()
{

  return swift_deallocObject();
}

unint64_t sub_23DADFD80()
{
  result = qword_27E2FF370;
  if (!qword_27E2FF370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF360, &qword_23DB7DEC8);
    sub_23DA17B80(&qword_27E2FF378, &qword_27E2FF380, &unk_23DB7DED0, MEMORY[0x277CDF028]);
    sub_23DA17B80(&qword_27E2FCFA8, &qword_27E2FCFB0, &qword_23DB787F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF370);
  }

  return result;
}

uint64_t sub_23DADFE64(uint64_t *a1)
{
  v1 = a1[1];
  v3 = a1[2];
  v2 = a1[3];
  v5[0] = *a1;
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_23DB6F2DC();
  v5[4] = swift_getOpaqueTypeConformance2();
  v5[5] = MEMORY[0x277CE0790];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF2F8, &unk_23DB7DE60);
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23DB6FA9C();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB7044C();
  v5[1] = v1;
  v5[2] = v3;
  v5[3] = v2;
  type metadata accessor for InstructionCardAndPracticeView(255, v5);
  sub_23DB6F7AC();
  sub_23DB702AC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23DAE0194(uint64_t *a1)
{
  swift_getOpaqueTypeMetadata2();
  sub_23DB6F2DC();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_23DB702AC();
  sub_23DB6F2DC();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23DB7044C();
  sub_23DB702AC();
  sub_23DB6F2DC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23DB6F2DC();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_23DB703FC();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB703FC();
  sub_23DB6F7AC();
  sub_23DB702AC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23DAE05E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF348, &unk_23DB7DEB0);
  sub_23DB6FA4C();
  sub_23DADBC48(&qword_27E2FF368, &qword_27E2FF348, &unk_23DB7DEB0, sub_23DADFD80);
  sub_23DADA750(&qword_27E2FCFB8, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  return swift_getOpaqueTypeConformance2();
}

double sub_23DAE072C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCEE8, &qword_23DB846E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - v5;
  if (qword_27E2FBB90 != -1)
  {
    swift_once();
  }

  v7 = qword_27E30A668;
  sub_23DB7062C();
  sub_23DB6F34C();
  v8 = sub_23DB6FBEC();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);

  v43 = sub_23DB6FC2C();
  sub_23DA17988(v6, &qword_27E2FCEE8, &qword_23DB846E0);
  KeyPath = swift_getKeyPath();
  v10 = sub_23DB6F89C();
  v11 = sub_23DB6FB9C();
  sub_23DB6EFAC();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v51 = 0;
  v20 = sub_23DB6FB2C();
  sub_23DB6EFAC();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v52 = 0;
  v29 = sub_23DB705FC();
  v31 = v30;
  v32 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD3E0, &qword_23DB7E020) + 36));
  *v32 = v29;
  v32[1] = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF3C0, &qword_23DB7E028);
  sub_23DAE0C14(v7, v32 + *(v33 + 44));
  v34 = sub_23DB7062C();
  v36 = v35;
  v37 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF3C8, &qword_23DB7E030) + 36));
  *v37 = v34;
  v37[1] = v36;
  v38 = v47;
  *(a2 + 40) = v46;
  v39 = v44;
  *(a2 + 24) = v45;
  *(a2 + 8) = v39;
  *(a2 + 104) = v50;
  result = *&v49;
  v41 = v48;
  *(a2 + 88) = v49;
  *(a2 + 72) = v41;
  *a2 = a1;
  *(a2 + 56) = v38;
  v42 = v43;
  *(a2 + 120) = KeyPath;
  *(a2 + 128) = v42;
  *(a2 + 136) = v10;
  *(a2 + 144) = v11;
  *(a2 + 152) = v13;
  *(a2 + 160) = v15;
  *(a2 + 168) = v17;
  *(a2 + 176) = v19;
  *(a2 + 184) = 0;
  *(a2 + 192) = v20;
  *(a2 + 200) = v22;
  *(a2 + 208) = v24;
  *(a2 + 216) = v26;
  *(a2 + 224) = v28;
  *(a2 + 232) = 0;
  return result;
}

uint64_t sub_23DAE0A40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAC8, &qword_23DB7C380);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23DB7A0D0;
  *(v0 + 32) = sub_23DB7011C();
  *(v0 + 40) = sub_23DB701CC();
  *(v0 + 48) = sub_23DB701EC();
  *(v0 + 56) = sub_23DB7019C();
  result = sub_23DB7012C();
  *(v0 + 64) = result;
  qword_27E30A708 = v0;
  return result;
}

void sub_23DAE0ABC()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;

  if (v2 >= 850.0)
  {
    v4 = [objc_opt_self() currentDevice];
    v5 = [v4 userInterfaceIdiom];

    v3 = 340.0;
    if (!v5)
    {
      v3 = 298.0;
    }
  }

  else
  {
    v3 = 298.0;
  }

  qword_27E30A710 = *&v3;
}

void sub_23DAE0B9C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 200.0;
  if (v1 == 1)
  {
    v2 = 275.0;
  }

  qword_27E30A718 = *&v2;
}

uint64_t sub_23DAE0C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF3D0, &qword_23DB7E038);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF3D8, &unk_23DB7E040);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = *(sub_23DB6F32C() + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_23DB6F63C();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #8.0 }

  *v15 = _Q0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD208, &qword_23DB7C3F0);
  *&v15[*(v24 + 52)] = a1;
  *&v15[*(v24 + 56)] = 256;
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF3E0, &qword_23DB7E050) + 36)] = a1;
  swift_retain_n();
  v25 = sub_23DB7014C();
  v26 = &v15[*(v10 + 44)];
  *v26 = v25;
  v26[1] = 0x4008000000000000;
  v26[2] = 0;
  v26[3] = 0;
  *v8 = sub_23DB6F5BC();
  *(v8 + 1) = 0x4008000000000000;
  v8[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF3E8, &unk_23DB7E058);
  v32 = xmmword_23DB7DEE0;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF18, &qword_23DB79B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF3F0, &qword_23DB7E088);
  sub_23DA52254();
  sub_23DAE1DA0();
  sub_23DB704FC();
  sub_23DA0E2B4(v15, v12, &qword_27E2FF3D8, &unk_23DB7E040);
  sub_23DA0E2B4(v8, v5, &qword_27E2FF3D0, &qword_23DB7E038);
  v27 = v31;
  sub_23DA0E2B4(v12, v31, &qword_27E2FF3D8, &unk_23DB7E040);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF428, &unk_23DB7E0A8);
  sub_23DA0E2B4(v5, v27 + *(v28 + 48), &qword_27E2FF3D0, &qword_23DB7E038);
  sub_23DA17988(v8, &qword_27E2FF3D0, &qword_23DB7E038);
  sub_23DA17988(v15, &qword_27E2FF3D8, &unk_23DB7E040);
  sub_23DA17988(v5, &qword_27E2FF3D0, &qword_23DB7E038);
  return sub_23DA17988(v12, &qword_27E2FF3D8, &unk_23DB7E040);
}

__n128 sub_23DAE0F90@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  sub_23DB7062C();
  sub_23DB6F10C();
  v3 = sub_23DB6F89C();
  a2->n128_u64[0] = v9;
  a2->n128_u8[8] = v10;
  a2[1].n128_u64[0] = v11;
  a2[1].n128_u8[8] = v12;
  a2[2] = v13;
  __asm { FMOV            V0.2D, #6.0 }

  a2[3] = result;
  a2[4].n128_u32[0] = v3;
  return result;
}

uint64_t sub_23DAE1034(char a1, uint64_t a2, int a3)
{
  v23 = a3;
  v5 = sub_23DB707AC();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_23DB707CC();
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_23DB707EC();
  v26 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v22[-v16];
  sub_23DA5295C();
  v24 = sub_23DB70AEC();
  sub_23DB707DC();
  sub_23DB707FC();
  v25 = *(v12 + 8);
  v25(v14, v11);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = v23;
  aBlock[4] = sub_23DAE200C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DABB3DC;
  aBlock[3] = &block_descriptor_6;
  v19 = _Block_copy(aBlock);

  sub_23DB707BC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23DAE2034(&qword_27E2FE2F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
  sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0, MEMORY[0x277D83970]);
  sub_23DB70C0C();
  v20 = v24;
  MEMORY[0x23EEF6E80](v17, v10, v7, v19);
  _Block_release(v19);

  (*(v29 + 8))(v7, v5);
  (*(v27 + 8))(v10, v28);
  return (v25)(v17, v26);
}

uint64_t sub_23DAE1470@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF430, &qword_23DB7E0B8);
  sub_23DB6EFCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF438, &qword_23DB7E0C0);
  sub_23DA17B80(&qword_27E2FF440, &qword_27E2FF438, &qword_23DB7E0C0, MEMORY[0x277CE04B0]);
  sub_23DB7006C();

  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF448, &qword_23DB7E0C8) + 36));
  *v7 = sub_23DAE1FFC;
  v7[1] = v6;
  v7[2] = 0;
  v7[3] = 0;
}

uint64_t sub_23DAE15D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DB6F32C();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DB6F97C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF388, &qword_23DB7DF40);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v41 - v12;
  sub_23DB6F98C();
  sub_23DB7062C();
  sub_23DB6F34C();
  (*(v7 + 32))(v13, v9, v6);
  v14 = &v13[*(v11 + 44)];
  v15 = v41[5];
  *(v14 + 4) = v41[4];
  *(v14 + 5) = v15;
  *(v14 + 6) = v41[6];
  v16 = v41[1];
  *v14 = v41[0];
  *(v14 + 1) = v16;
  v17 = v41[3];
  *(v14 + 2) = v41[2];
  *(v14 + 3) = v17;
  v18 = sub_23DB6F68C();
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF390, &qword_23DB7DF48) + 36);
  *v19 = v18;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  v20 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF398, &unk_23DB7DF50) + 44);
  v21 = *(v3 + 28);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_23DB6F63C();
  (*(*(v23 - 8) + 104))(&v5[v21], v22, v23);
  __asm { FMOV            V0.2D, #8.0 }

  *v5 = _Q0;
  LODWORD(v22) = sub_23DB6F88C();
  sub_23DB6F07C();
  sub_23DAE1A00(v5, v20);
  v29 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD8E0, &unk_23DB80390) + 36);
  v30 = v41[8];
  *v29 = v41[7];
  *(v29 + 16) = v30;
  *(v29 + 32) = v42;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD8E8, &qword_23DB79040);
  *(v20 + *(v31 + 52)) = v22;
  *(v20 + *(v31 + 56)) = 256;
  v32 = sub_23DB7062C();
  v34 = v33;
  sub_23DAE1A64(v5);
  v35 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD8F0, &qword_23DB79048) + 36));
  *v35 = v32;
  v35[1] = v34;
  v36 = sub_23DB7062C();
  v38 = v37;
  v39 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF3A0, &qword_23DB7DF60) + 36));
  *v39 = v36;
  v39[1] = v38;
  return sub_23DAE1AC0(v13, a1);
}

void sub_23DAE1964()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 32.0;
  if (!v1)
  {
    v2 = 16.0;
  }

  qword_27E30A728 = *&v2;
}

uint64_t sub_23DAE1A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_23DB6F32C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DAE1A64(uint64_t a1)
{
  v2 = sub_23DB6F32C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DAE1AC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF388, &qword_23DB7DF40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23DAE1B44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_23DAE1BA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_23DAE1C08()
{
  result = qword_27E2FF3A8;
  if (!qword_27E2FF3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF390, &qword_23DB7DF48);
    sub_23DAE1CC0();
    sub_23DA17B80(&qword_27E2FF3B8, &qword_27E2FF3A0, &qword_23DB7DF60, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF3A8);
  }

  return result;
}

unint64_t sub_23DAE1CC0()
{
  result = qword_27E2FF3B0;
  if (!qword_27E2FF3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF388, &qword_23DB7DF40);
    sub_23DAE2034(&qword_27E2FE798, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF3B0);
  }

  return result;
}

unint64_t sub_23DAE1DA0()
{
  result = qword_27E2FF3F8;
  if (!qword_27E2FF3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF3F0, &qword_23DB7E088);
    sub_23DAE1E58();
    sub_23DA17B80(&qword_27E2FD378, &qword_27E2FD380, &unk_23DB78950, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF3F8);
  }

  return result;
}

unint64_t sub_23DAE1E58()
{
  result = qword_27E2FF400;
  if (!qword_27E2FF400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF408, &qword_23DB7E090);
    sub_23DAE1EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF400);
  }

  return result;
}

unint64_t sub_23DAE1EE4()
{
  result = qword_27E2FF410;
  if (!qword_27E2FF410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF418, &unk_23DB7E098);
    sub_23DAE1F70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF410);
  }

  return result;
}

unint64_t sub_23DAE1F70()
{
  result = qword_27E2FF420;
  if (!qword_27E2FF420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF420);
  }

  return result;
}

uint64_t sub_23DAE1FC4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23DAE2034(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23DAE2080()
{
  result = qword_27E2FF450;
  if (!qword_27E2FF450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF448, &qword_23DB7E0C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF438, &qword_23DB7E0C0);
    sub_23DA17B80(&qword_27E2FF440, &qword_27E2FF438, &qword_23DB7E0C0, MEMORY[0x277CE04B0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF450);
  }

  return result;
}

uint64_t AXOnboardingModelVoiceOverIOS.init()()
{
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v1 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport29AXOnboardingModelVoiceOverIOS_subscribers) = v1;
  v2 = OBJC_IVAR____TtC28AccessibilitySharedUISupport29AXOnboardingModelVoiceOverIOS_synthesizer;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277CB84B8]) init];
  v3 = AXOnboardingModel.init()();
  v4 = qword_27E2FBBD0;
  swift_retain_n();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_27E30A6A8;
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE140, &unk_23DB7A100);
  v6 = MEMORY[0x277CBCD90];
  sub_23DA17B80(&qword_27E2FE148, &qword_27E2FE140, &unk_23DB7A100, MEMORY[0x277CBCD90]);
  sub_23DB6EF5C();

  swift_beginAccess();
  sub_23DB6EE3C();
  swift_endAccess();

  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE150, &qword_23DB82C70);
  sub_23DA17B80(qword_27E2FE830, &qword_27E2FE150, &qword_23DB82C70, v6);
  sub_23DB6EF5C();

  swift_beginAccess();
  sub_23DB6EE3C();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE158, &unk_23DB7A110);
  sub_23DA17B80(&qword_27E2FE160, &qword_27E2FE158, &unk_23DB7A110, v6);
  sub_23DB6EF5C();

  swift_beginAccess();
  sub_23DB6EE3C();
  swift_endAccess();

  if (UIAccessibilityIsVoiceOverRunning())
  {
    v9 = objc_opt_self();
    v10 = sub_23DB7087C();
    [v9 triggerEventCommand_];
  }

  return v3;
}

uint64_t sub_23DAE25CC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_23DAE2604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_15;
  }

  result = sub_23DAC72C0();
  v5 = result;
  if (result >> 62)
  {
    result = sub_23DB70C3C();
    v6 = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_4:
      if (v6 < 1)
      {
        __break(1u);
        return result;
      }

      for (i = 0; i != v6; ++i)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x23EEF70C0](i, v5);
        }

        else
        {
          v8 = *(v5 + 8 * i + 32);
        }

        v9 = v8 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState;
        swift_beginAccess();
        v10 = *v9;
        if (*v9)
        {
          v11 = *(v9 + 8);

          v10(v12);

          sub_23DA18BA0(v10, v11);
        }

        else
        {
        }
      }
    }
  }

LABEL_15:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(a3 + 24);
    swift_beginAccess();
    sub_23DAE27C4(*(v13 + 40));
  }

  return result;
}

void sub_23DAE27C4(char a1)
{
  if ((a1 & 1) == 0)
  {
    UIAccessibilityPostNotification(0x438u, 0);
    v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer;
    [*(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer) invalidate];
    v11 = *(v1 + v10);
    *(v1 + v10) = 0;

    *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_announcementQueued) = 0;
    return;
  }

  v2 = sub_23DAC72C0();
  v3 = v2;
  if (v2 >> 62)
  {
    v4 = sub_23DB70C3C();
    if (v4)
    {
LABEL_4:
      if (v4 < 1)
      {
        __break(1u);
      }

      else
      {
        for (i = 0; i != v4; ++i)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x23EEF70C0](i, v3);
          }

          else
          {
            v6 = *(v3 + 8 * i + 32);
          }

          swift_getKeyPath();
          swift_getKeyPath();
          sub_23DB6EF0C(&v12);

          if (v12 == 1)
          {
            v7 = (v6 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
            swift_beginAccess();
            v8 = *v7;

            v8(v9);
          }
        }
      }

      return;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }
  }
}

uint64_t sub_23DAE29B4()
{
  v1 = MEMORY[0x277D84F90];
  sub_23DAE2A48();
  MEMORY[0x23EEF6D70]();
  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23DB709FC();
  }

  sub_23DB70A0C();
  return v1;
}

uint64_t sub_23DAE2A48()
{
  v0 = sub_23DB6EA8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v32 = sub_23DB04C74(0xD000000000000019, 0x800000023DB8A970);
  v8 = v7;
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  v11 = "arrow.2.squarepath";
  if (v10)
  {
    v12 = 0xD00000000000001DLL;
  }

  else
  {
    v11 = "tutorial.vo.welcome.text.ipad";
    v12 = 0xD00000000000001FLL;
  }

  v13 = sub_23DB04C74(v12, v11 | 0x8000000000000000);
  v15 = v14;
  sub_23DB6EA7C();
  type metadata accessor for Page.PrimaryTOC(0);
  v16 = (swift_allocObject() + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName);
  *v16 = 0;
  v16[1] = 0;
  (*(v1 + 16))(v3, v6, v0);
  v17 = Page.init(id:title:text:subPages:iconName:)(v3, v32, v8, v13, v15, MEMORY[0x277D84F90], 0, 0);
  (*(v1 + 8))(v6, v0);
  v18 = (v17 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName);
  swift_beginAccess();
  *v18 = xmmword_23DB7A010;

  swift_retain_n();
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = xmmword_23DB7A020;
  swift_retain_n();
  sub_23DB6EF1C();
  v19 = sub_23DB04C74(0xD00000000000001CLL, 0x800000023DB8A9B0);
  v21 = v20;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v33 = v19;
  *(&v33 + 1) = v21;
  sub_23DB6EF1C();
  v22 = sub_23DB04C74(0xD00000000000001CLL, 0x800000023DB8A9D0);
  v24 = v23;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v33 = v22;
  *(&v33 + 1) = v24;
  sub_23DB6EF1C();
  v25 = sub_23DB04C74(0xD00000000000001ELL, 0x800000023DB8A9F0);
  v27 = v26;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v33 = v25;
  *(&v33 + 1) = v27;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v33) = 1;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_23DB7A080;
  *(v28 + 32) = sub_23DAE2F3C();
  *(v28 + 40) = sub_23DAE3290();
  *(v28 + 48) = sub_23DAE3680();
  *(v28 + 56) = sub_23DAE3910();
  *(v28 + 64) = sub_23DAE3C38();
  *(v28 + 72) = sub_23DAE3EC0();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v33 = v28;
  sub_23DB6EF1C();
  v29 = (v17 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v29 = sub_23DAE2F28;
  v29[1] = 0;

  return v17;
}

uint64_t sub_23DAE2F3C()
{
  v0 = sub_23DB6EA8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = sub_23DB04C74(0xD000000000000018, 0x800000023DB8A930);
  v9 = v8;
  v10 = sub_23DB04C74(0xD000000000000017, 0x800000023DB8A950);
  v12 = v11;
  sub_23DB6EA7C();
  type metadata accessor for Page.SecondaryTOC(0);
  swift_allocObject();
  (*(v1 + 16))(v3, v6, v0);
  v13 = Page.init(id:title:text:subPages:iconName:)(v3, v7, v9, v10, v12, MEMORY[0x277D84F90], 0, 0);
  (*(v1 + 8))(v6, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  v20 = 0xD000000000000012;
  v21 = 0x800000023DB8D630;
  swift_retain_n();
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v20) = 0;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23DB7E0D0;
  *(v14 + 32) = sub_23DAE41CC();
  *(v14 + 40) = sub_23DAE5264();
  *(v14 + 48) = sub_23DAE69DC();
  *(v14 + 56) = sub_23DAE79EC();
  *(v14 + 64) = sub_23DAEA560();
  *(v14 + 72) = sub_23DAE911C();
  *(v14 + 80) = sub_23DAF3D5C();
  *(v14 + 88) = sub_23DAECC88();
  *(v14 + 96) = sub_23DAEC348();
  swift_getKeyPath();
  swift_getKeyPath();
  v20 = v14;
  sub_23DB6EF1C();
  v15 = (v13 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];

  sub_23DB04F2C(v13, v16, v17);

  return v13;
}

uint64_t sub_23DAE3290()
{
  v0 = sub_23DB6EA8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v27 = objc_opt_self();
  v7 = [v27 currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = "r.collection.title";
  if (v8)
  {
    v10 = 0xD000000000000020;
  }

  else
  {
    v9 = "emNav.title.ipad";
    v10 = 0xD000000000000022;
  }

  v11 = sub_23DB04C74(v10, v9 | 0x8000000000000000);
  v13 = v12;
  v14 = sub_23DB04C74(0xD00000000000001ALL, 0x800000023DB8A8F0);
  v16 = v15;
  sub_23DB6EA7C();
  type metadata accessor for Page.SecondaryTOC(0);
  swift_allocObject();
  (*(v1 + 16))(v3, v6, v0);
  v17 = Page.init(id:title:text:subPages:iconName:)(v3, v11, v13, v14, v16, MEMORY[0x277D84F90], 0, 0);
  (*(v1 + 8))(v6, v0);
  v18 = [v27 currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if (v19)
  {
    v20 = 0x6170692E73707061;
  }

  else
  {
    v20 = 0x6870692E73707061;
  }

  if (v19)
  {
    v21 = 0xE900000000000064;
  }

  else
  {
    v21 = 0xEB00000000656E6FLL;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v20;
  v29 = v21;
  swift_retain_n();
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v28) = 0;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_23DB7A060;
  *(v22 + 32) = sub_23DAF63B4();
  *(v22 + 40) = sub_23DAF7998();
  *(v22 + 48) = sub_23DAF9C94();
  *(v22 + 56) = sub_23DAF8ADC();
  *(v22 + 64) = sub_23DAFAEE0();
  *(v22 + 72) = sub_23DAFDB5C();
  *(v22 + 80) = sub_23DB01134();
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v22;
  sub_23DB6EF1C();
  v23 = (v17 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];

  sub_23DB04F2C(v17, v24, v25);

  return v17;
}

uint64_t sub_23DAE3680()
{
  v0 = sub_23DB6EA8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  v7 = sub_23DB04C74(0xD000000000000022, 0x800000023DB8D5A0);
  v9 = v8;
  sub_23DB6EA7C();
  type metadata accessor for Page.SecondaryTOC(0);
  swift_allocObject();
  (*(v1 + 16))(v3, v6, v0);
  v10 = Page.init(id:title:text:subPages:iconName:)(v3, v7, v9, 0, 0xE000000000000000, MEMORY[0x277D84F90], 0, 0);
  (*(v1 + 8))(v6, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = xmmword_23DB7E0E0;
  swift_retain_n();
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v13) = 0;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23DB7E0F0;
  *(v11 + 32) = sub_23DAEE054();
  *(v11 + 40) = sub_23DAEF20C();
  *(v11 + 48) = sub_23DAF0A44();
  *(v11 + 56) = sub_23DB02478();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v13 = v11;
  sub_23DB6EF1C();
  return v10;
}

uint64_t sub_23DAE3910()
{
  v0 = sub_23DB6EA8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = sub_23DB04C74(0xD000000000000018, 0x800000023DB8A870);
  v9 = v8;
  v10 = sub_23DB04C74(0xD000000000000017, 0x800000023DB8A890);
  v12 = v11;
  sub_23DB6EA7C();
  type metadata accessor for Page.SecondaryTOC(0);
  swift_allocObject();
  (*(v1 + 16))(v3, v6, v0);
  v13 = Page.init(id:title:text:subPages:iconName:)(v3, v7, v9, v10, v12, MEMORY[0x277D84F90], 0, 0);
  (*(v1 + 8))(v6, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  v20 = 0xD000000000000010;
  v21 = 0x800000023DB8A8B0;
  swift_retain_n();
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v20) = 0;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23DB7E0F0;
  *(v14 + 32) = sub_23DAF2214();
  *(v14 + 40) = sub_23DAFBDE0();
  *(v14 + 48) = sub_23DAFCDB8();
  *(v14 + 56) = sub_23DB01B38();
  swift_getKeyPath();
  swift_getKeyPath();
  v20 = v14;
  sub_23DB6EF1C();
  v15 = (v13 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];

  sub_23DB04F2C(v13, v16, v17);

  return v13;
}

uint64_t sub_23DAE3C38()
{
  v0 = sub_23DB6EA8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  v7 = sub_23DB04C74(0xD000000000000023, 0x800000023DB8D570);
  v9 = v8;
  sub_23DB6EA7C();
  type metadata accessor for Page.SecondaryTOC(0);
  swift_allocObject();
  (*(v1 + 16))(v3, v6, v0);
  v10 = Page.init(id:title:text:subPages:iconName:)(v3, v7, v9, 0, 0xE000000000000000, MEMORY[0x277D84F90], 0, 0);
  (*(v1 + 8))(v6, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = xmmword_23DB7E100;
  swift_retain_n();
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v13) = 0;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23DB7E110;
  *(v11 + 32) = sub_23DAF5E34();
  *(v11 + 40) = sub_23DAF4A94();
  *(v11 + 48) = sub_23DB02DB8();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v13 = v11;
  sub_23DB6EF1C();
  return v10;
}

uint64_t sub_23DAE3EC0()
{
  v0 = sub_23DB6EA8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v19 - v5;
  v7 = sub_23DB04C74(0xD00000000000001BLL, 0x800000023DB8A7F0);
  v9 = v8;
  v10 = sub_23DB04C74(0xD00000000000001ELL, 0x800000023DB8D550);
  v12 = v11;
  sub_23DB6EA7C();
  type metadata accessor for Page.SecondaryTOC(0);
  swift_allocObject();
  (*(v1 + 16))(v3, v6, v0);
  v13 = Page.init(id:title:text:subPages:iconName:)(v3, v7, v9, v10, v12, MEMORY[0x277D84F90], 0, 0);
  (*(v1 + 8))(v6, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  v19[0] = xmmword_23DB7A0A0;
  swift_retain_n();
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v19[0]) = 0;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23DB7E110;
  *(v14 + 32) = sub_23DAFF4E8();
  *(v14 + 40) = sub_23DB002BC();
  *(v14 + 48) = sub_23DB038B0();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v19[0] = v14;
  sub_23DB6EF1C();
  v15 = (v13 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];

  sub_23DB04F2C(v13, v16, v17);

  return v13;
}

uint64_t sub_23DAE41CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v109 = *(v1 - 8);
  v110 = v1;
  MEMORY[0x28223BE20](v1);
  v108 = &v84 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v106 = *(v3 - 8);
  v107 = v3;
  MEMORY[0x28223BE20](v3);
  v104 = &v84 - v4;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v98 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v96 = &v84 - v5;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v90 = *(v91 - 1);
  MEMORY[0x28223BE20](v91);
  v87 = &v84 - v6;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v84 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v84 - v10;
  v12 = sub_23DB6EA8C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v97 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v84 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v84 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v84 - v22;
  v95 = sub_23DB04C74(0xD00000000000001ALL, 0x800000023DB8A630);
  v94 = v24;
  v111 = v0;
  v93 = sub_23DB04C74(0xD00000000000002FLL, 0x800000023DB8D4D0);
  v92 = v25;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOSingleGesture(0);
  v26 = swift_allocObject();
  v102 = v13;
  v27 = *(v13 + 16);
  v99 = v23;
  v27(v20, v23, v12);
  v101 = v17;
  v100 = v20;
  v103 = v12;
  v89 = v13 + 16;
  v88 = v27;
  v27(v17, v20, v12);
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v114) = 0;
  sub_23DB6EECC();
  v29 = *(v9 + 32);
  v29(v26 + v28, v11, v8);
  v30 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v31 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v31 = MEMORY[0x277D84FA0];
  }

  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v31;
  v32 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v114 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v33 = v84;
  sub_23DB6EECC();
  (*(v85 + 32))(v26 + v32, v33, v86);
  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v30;
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v114 = 0;
  v35 = v87;
  sub_23DB6EECC();
  (*(v90 + 32))(v26 + v34, v35, v91);
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v114) = 0;
  sub_23DB6EECC();
  v29(v26 + v36, v11, v8);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v90 = xmmword_23DB74320;
  v114 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v91 = v29;
  v38 = v96;
  sub_23DB6EECC();
  v39 = *(v98 + 32);
  v40 = v105;
  v39(v26 + v37, v38, v105);
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v114 = v90;
  sub_23DB6EECC();
  v39(v26 + v41, v38, v40);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v114) = 0;
  sub_23DB6EECC();
  v91(v26 + v42, v11, v8);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v114 = 0;
  *(&v114 + 1) = 0xE000000000000000;
  v44 = v104;
  sub_23DB6EECC();
  (*(v106 + 32))(v26 + v43, v44, v107);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v114 = 0uLL;
  sub_23DB6EECC();
  v39(v26 + v45, v38, v40);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v114 = nullsub_1;
  *(&v114 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v47 = v108;
  sub_23DB6EECC();
  (*(v109 + 32))(v26 + v46, v47, v110);
  v48 = v97;
  v49 = v101;
  v50 = v103;
  v88(v97, v101, v103);
  v51 = Page.init(id:title:text:subPages:iconName:)(v48, v95, v94, v93, v92, MEMORY[0x277D84F90], 0, 0);
  v52 = *(v102 + 8);
  v52(v49, v50);
  v52(v100, v50);
  v52(v99, v50);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v114) = 1;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v53 = (type metadata accessor for CommandToPractice(0) - 8);
  v54 = (*(*v53 + 80) + 32) & ~*(*v53 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_23DB73BA0;
  v56 = v55 + v54;
  v110 = "Item.text.usageNotConfirmed.ios";

  v57 = sub_23DB04C74(0xD000000000000020, 0x800000023DB8D500);
  v59 = v58;
  *v56 = 0;
  *(v56 + 8) = 0xE000000000000000;
  *(v56 + 17) = 186;
  *(v56 + 19) = 0;
  sub_23DB6EA7C();
  v60 = v53[12];
  *(v56 + v60) = 1;
  v61 = v53[13];
  *(v56 + v61) = 1;
  v62 = v53[14];
  v63 = type metadata accessor for KeyboardKey(0);
  (*(*(v63 - 8) + 56))(v56 + v62, 1, 1, v63);
  v64 = (v56 + v53[15]);
  *v64 = 0;
  v64[1] = 0;
  *v56 = v57;
  *(v56 + 8) = v59;

  *(v56 + 16) = 5;
  *(v56 + 19) = 0;
  *v64 = 0;
  v64[1] = 0;

  *(v56 + v60) = 1;
  *(v56 + v61) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v51 + v65) = v55;

  v66 = sub_23DB04C74(0xD000000000000020, v110 | 0x8000000000000000);
  v68 = v67;
  swift_getKeyPath();
  swift_getKeyPath();
  v112 = v66;
  v113 = v68;
  sub_23DB6EF1C();
  v69 = swift_allocObject();
  swift_weakInit();
  v70 = swift_allocObject();
  swift_weakInit();
  v71 = swift_allocObject();
  *(v71 + 16) = v70;
  *(v71 + 24) = v69;
  v72 = (v51 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v72 = sub_23DB0706C;
  v72[1] = v71;

  v73 = swift_allocObject();
  swift_weakInit();
  v74 = swift_allocObject();
  swift_weakInit();
  v75 = swift_allocObject();
  *(v75 + 16) = v74;
  *(v75 + 24) = v73;
  v76 = (v51 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v76 = sub_23DB0720C;
  v76[1] = v75;

  v77 = swift_allocObject();
  swift_weakInit();

  v78 = swift_allocObject();
  swift_weakInit();
  v79 = swift_allocObject();
  *(v79 + 16) = v78;
  *(v79 + 24) = v77;
  v80 = (v51 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v81 = *v80;
  v82 = v80[1];
  *v80 = sub_23DB07210;
  v80[1] = v79;

  sub_23DA18BA0(v81, v82);

  return v51;
}

uint64_t sub_23DAE500C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      if ([objc_opt_self() voTutorialUsageConfirmed])
      {

        v5 = 0x800000023DB8D530;
        v6 = 0xD00000000000001DLL;
      }

      else
      {
        if (qword_27E2FBBD0 != -1)
        {
          swift_once();
        }

        sub_23DAA0760(&unk_284FE7898);

        v6 = 0xD00000000000002FLL;
        v5 = 0x800000023DB8D4D0;
      }

      v7 = sub_23DB04C74(v6, v5);
      v9 = v8;
      swift_getKeyPath();
      swift_getKeyPath();
      v16[2] = v7;
      v16[3] = v9;
      sub_23DB6EF1C();
      v10 = (v4 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
      swift_beginAccess();
      v12 = *v10;
      v11 = v10[1];
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C(v16);

      v13 = v16[0];
      v14 = v16[1];
      UIAccessibilityPostNotification(0x438u, 0);
      v15 = MEMORY[0x277D764B0];
      sub_23DB05C14(v12, v11, MEMORY[0x277D764B0]);

      sub_23DB05C14(v13, v14, v15);

      sub_23DAC7854(2);
    }
  }

  return result;
}

uint64_t sub_23DAE5264()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v109 = *(v1 - 8);
  v110 = v1;
  MEMORY[0x28223BE20](v1);
  v108 = &v84 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v106 = *(v3 - 8);
  v107 = v3;
  MEMORY[0x28223BE20](v3);
  v104 = &v84 - v4;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v98 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v96 = &v84 - v5;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v90 = *(v91 - 1);
  MEMORY[0x28223BE20](v91);
  v89 = &v84 - v6;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v84 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v84 - v10;
  v12 = sub_23DB6EA8C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v97 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v84 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v84 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v84 - v22;
  v95 = sub_23DB04C74(0xD00000000000001ELL, 0x800000023DB8A5B0);
  v94 = v24;
  v111 = v0;
  v93 = sub_23DB04C74(0xD000000000000021, 0x800000023DB8D470);
  v92 = v25;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOSingleGesture(0);
  v26 = swift_allocObject();
  v102 = v13;
  v27 = *(v13 + 16);
  v99 = v23;
  v27(v20, v23, v12);
  v101 = v17;
  v100 = v20;
  v103 = v12;
  v88 = v13 + 16;
  v87 = v27;
  v27(v17, v20, v12);
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v114) = 0;
  sub_23DB6EECC();
  v29 = *(v9 + 32);
  v29(v26 + v28, v11, v8);
  v30 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v31 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v31 = MEMORY[0x277D84FA0];
  }

  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v31;
  v32 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v114 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v33 = v84;
  sub_23DB6EECC();
  (*(v85 + 32))(v26 + v32, v33, v86);
  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v30;
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v114 = 0;
  v35 = v89;
  sub_23DB6EECC();
  (*(v90 + 32))(v26 + v34, v35, v91);
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v114) = 0;
  sub_23DB6EECC();
  v29(v26 + v36, v11, v8);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v90 = xmmword_23DB74320;
  v114 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v91 = v29;
  v38 = v96;
  sub_23DB6EECC();
  v39 = *(v98 + 32);
  v40 = v105;
  v39(v26 + v37, v38, v105);
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v114 = v90;
  sub_23DB6EECC();
  v39(v26 + v41, v38, v40);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v114) = 0;
  sub_23DB6EECC();
  v91(v26 + v42, v11, v8);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v114 = 0;
  *(&v114 + 1) = 0xE000000000000000;
  v44 = v104;
  sub_23DB6EECC();
  (*(v106 + 32))(v26 + v43, v44, v107);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v114 = 0uLL;
  sub_23DB6EECC();
  v39(v26 + v45, v38, v40);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v114 = nullsub_1;
  *(&v114 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v47 = v108;
  sub_23DB6EECC();
  (*(v109 + 32))(v26 + v46, v47, v110);
  v48 = v97;
  v49 = v101;
  v50 = v103;
  v87(v97, v101, v103);
  v51 = Page.init(id:title:text:subPages:iconName:)(v48, v95, v94, v93, v92, MEMORY[0x277D84F90], 0, 0);
  v52 = *(v102 + 8);
  v52(v49, v50);
  v52(v100, v50);
  v52(v99, v50);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v114) = 1;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v53 = (type metadata accessor for CommandToPractice(0) - 8);
  v54 = (*(*v53 + 80) + 32) & ~*(*v53 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_23DB73BA0;
  v56 = v55 + v54;
  v110 = "iousItem.text.ios";

  v57 = sub_23DB04C74(0xD000000000000024, 0x800000023DB8D4A0);
  v59 = v58;
  *v56 = 0;
  *(v56 + 8) = 0xE000000000000000;
  *(v56 + 17) = 186;
  *(v56 + 19) = 0;
  sub_23DB6EA7C();
  v60 = v53[12];
  *(v56 + v60) = 1;
  v61 = v53[13];
  *(v56 + v61) = 1;
  v62 = v53[14];
  v63 = type metadata accessor for KeyboardKey(0);
  (*(*(v63 - 8) + 56))(v56 + v62, 1, 1, v63);
  v64 = (v56 + v53[15]);
  *v64 = 0;
  v64[1] = 0;
  *v56 = v57;
  *(v56 + 8) = v59;

  *(v56 + 16) = 4;
  *(v56 + 19) = 0;
  *v64 = 0;
  v64[1] = 0;

  *(v56 + v60) = 1;
  *(v56 + v61) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v51 + v65) = v55;

  v66 = sub_23DB04C74(0xD000000000000024, v110 | 0x8000000000000000);
  v68 = v67;
  swift_getKeyPath();
  swift_getKeyPath();
  v112 = v66;
  v113 = v68;
  sub_23DB6EF1C();
  v69 = swift_allocObject();
  swift_weakInit();
  v70 = swift_allocObject();
  swift_weakInit();
  v71 = swift_allocObject();
  *(v71 + 16) = v70;
  *(v71 + 24) = v69;
  v72 = (v51 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v72 = sub_23DB07010;
  v72[1] = v71;

  v73 = swift_allocObject();
  swift_weakInit();
  v74 = swift_allocObject();
  swift_weakInit();
  v75 = swift_allocObject();
  *(v75 + 16) = v74;
  *(v75 + 24) = v73;
  v76 = (v51 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v76 = sub_23DB07034;
  v76[1] = v75;

  v77 = swift_allocObject();
  swift_weakInit();

  v78 = swift_allocObject();
  swift_weakInit();
  v79 = swift_allocObject();
  *(v79 + 16) = v78;
  *(v79 + 24) = v77;
  v80 = (v51 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v81 = *v80;
  v82 = v80[1];
  *v80 = sub_23DB07050;
  v80[1] = v79;

  sub_23DA18BA0(v81, v82);

  return v51;
}

unint64_t sub_23DAE60A4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v62 = (&v51 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v51 - v9);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      if (qword_27E2FBBD0 != -1)
      {
        goto LABEL_23;
      }

      if (!UIAccessibilityIsVoiceOverRunning())
      {
        goto LABEL_6;
      }

LABEL_5:
      v15 = objc_opt_self();
      v16 = sub_23DB7087C();
      [v15 triggerEventCommand_];

LABEL_6:
      v61 = v12;
      v17 = *(qword_27E30A6A8 + 16);
      swift_beginAccess();
      *(v17 + 40) = 27;

      sub_23DABC32C();

      v18 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v59 = v18;
      v19 = *(v14 + v18);
      KeyPath = swift_getKeyPath();
      v21 = swift_getKeyPath();

      v58 = KeyPath;
      v57 = v21;
      v22 = v19;
      v56 = sub_23DB6EEFC();
      v54 = v23;
      v24 = swift_getKeyPath();
      v25 = swift_getKeyPath();
      v60 = v14;
      v55 = v24;
      v53 = v25;
      v52 = sub_23DB6EEFC();
      v51 = v26;

      v27 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_23DAC8B24(v19);
      }

      v12 = 0;
      v28 = (v3 + 7);
      v29 = v22[2];
      v3 += 6;
      if (!v29)
      {
LABEL_9:
        v30 = 1;
        v12 = v29;
        goto LABEL_12;
      }

      while (1)
      {
        if (v12 >= v22[2])
        {
          goto LABEL_22;
        }

        v31 = *(type metadata accessor for CommandToPractice(0) - 8);
        v63 = v12 + 1;
        v32 = v22 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v12;
        v33 = *(v2 + 48);
        v34 = v3;
        v35 = v28;
        v36 = v10;
        v37 = v29;
        v38 = v2;
        v39 = v27;
        v40 = v7;
        v41 = v22;
        v42 = v62;
        *v62 = v12;
        sub_23DB06674(v32, v42 + v33, type metadata accessor for CommandToPractice);
        v43 = v42;
        v22 = v41;
        v7 = v40;
        v27 = v39;
        v2 = v38;
        v29 = v37;
        v10 = v36;
        v28 = v35;
        v3 = v34;
        sub_23DA17A54(v43, v7, &qword_27E2FE1C0, &qword_23DB7A440);
        v30 = 0;
        v12 = v63;
LABEL_12:
        (*v28)(v7, v30, 1, v2);
        sub_23DA17A54(v7, v10, &qword_27E2FE1C8, &qword_23DB7A448);
        if ((*v3)(v10, 1, v2) == 1)
        {
          break;
        }

        v14 = *v10;
        if ((*v10 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          swift_once();
          if (UIAccessibilityIsVoiceOverRunning())
          {
            goto LABEL_5;
          }

          goto LABEL_6;
        }

        if (v14 >= v27[2])
        {
          goto LABEL_21;
        }

        v44 = *(type metadata accessor for CommandToPractice(0) - 8);
        v45 = v27 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v14;
        *(v45 + 18) = 0;
        *(v45 + 19) = v14 == 0;
        sub_23DB0672C(v10 + *(v2 + 48), type metadata accessor for CommandToPractice);
        if (v12 == v29)
        {
          goto LABEL_9;
        }
      }

      *v51 = 0;
      *v54 = 0;
      v52(v64, 0);

      v56(v65, 0);

      type metadata accessor for Page.Practice(0);
      sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
      v46 = v60;
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      *(v46 + v59) = v27;

      v47 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer;
      v48 = v61;
      v49 = *(v61 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer);
      [v49 invalidate];

      v50 = *(v48 + v47);
      *(v48 + v47) = 0;

      *(v48 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_announcementQueued) = 0;
    }
  }

  return result;
}

size_t sub_23DAE67B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v4 = Strong;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(v8);

  if ((v8[0] & 1) == 0)
  {
  }

  v5 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v6 = *(v4 + v5);

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (*(v6 + 2))
    {
LABEL_6:
      v7 = *(type metadata accessor for CommandToPractice(0) - 8);
      sub_23DB0496C(&v6[(*(v7 + 80) + 32) & ~*(v7 + 80)], 0, 0);
      type metadata accessor for Page.Practice(0);
      sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      *(v4 + v5) = v6;
    }
  }

  else
  {
    result = sub_23DAC8B24(v6);
    v6 = result;
    if (*(result + 16))
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23DAE69DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v109 = *(v1 - 8);
  v110 = v1;
  MEMORY[0x28223BE20](v1);
  v108 = &v84 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v106 = *(v3 - 8);
  v107 = v3;
  MEMORY[0x28223BE20](v3);
  v104 = &v84 - v4;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v98 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v96 = &v84 - v5;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v90 = *(v91 - 1);
  MEMORY[0x28223BE20](v91);
  v89 = &v84 - v6;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v84 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v84 - v10;
  v12 = sub_23DB6EA8C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v97 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v84 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v84 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v84 - v22;
  v95 = sub_23DB04C74(0xD00000000000001ALL, 0x800000023DB8A510);
  v94 = v24;
  v111 = v0;
  v93 = sub_23DB04C74(0xD00000000000001DLL, 0x800000023DB8D420);
  v92 = v25;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOSingleGesture(0);
  v26 = swift_allocObject();
  v102 = v13;
  v27 = *(v13 + 16);
  v99 = v23;
  v27(v20, v23, v12);
  v101 = v17;
  v100 = v20;
  v103 = v12;
  v88 = v13 + 16;
  v87 = v27;
  v27(v17, v20, v12);
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v112) = 0;
  sub_23DB6EECC();
  v29 = *(v9 + 32);
  v29(v26 + v28, v11, v8);
  v30 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v31 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v31 = MEMORY[0x277D84FA0];
  }

  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v31;
  v32 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v112 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v33 = v84;
  sub_23DB6EECC();
  (*(v85 + 32))(v26 + v32, v33, v86);
  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v30;
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v112 = 0;
  v35 = v89;
  sub_23DB6EECC();
  (*(v90 + 32))(v26 + v34, v35, v91);
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v112) = 0;
  sub_23DB6EECC();
  v29(v26 + v36, v11, v8);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v90 = xmmword_23DB74320;
  v112 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v91 = v29;
  v38 = v96;
  sub_23DB6EECC();
  v39 = *(v98 + 32);
  v40 = v105;
  v39(v26 + v37, v38, v105);
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v112 = v90;
  sub_23DB6EECC();
  v39(v26 + v41, v38, v40);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v112) = 0;
  sub_23DB6EECC();
  v91(v26 + v42, v11, v8);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v112 = 0;
  *(&v112 + 1) = 0xE000000000000000;
  v44 = v104;
  sub_23DB6EECC();
  (*(v106 + 32))(v26 + v43, v44, v107);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v112 = 0uLL;
  sub_23DB6EECC();
  v39(v26 + v45, v38, v40);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v112 = nullsub_1;
  *(&v112 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v47 = v108;
  sub_23DB6EECC();
  (*(v109 + 32))(v26 + v46, v47, v110);
  v48 = v97;
  v49 = v101;
  v50 = v103;
  v87(v97, v101, v103);
  v51 = Page.init(id:title:text:subPages:iconName:)(v48, v95, v94, v93, v92, MEMORY[0x277D84F90], 0, 0);
  v52 = *(v102 + 8);
  v52(v49, v50);
  v52(v100, v50);
  v52(v99, v50);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v112) = 1;
  swift_retain_n();
  sub_23DB6EF1C();
  v53 = sub_23DB04C74(0xD000000000000020, 0x800000023DB8D440);
  v55 = v54;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v112 = v53;
  *(&v112 + 1) = v55;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v56 = (type metadata accessor for CommandToPractice(0) - 8);
  v57 = (*(*v56 + 80) + 32) & ~*(*v56 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_23DB73BA0;
  v59 = v58 + v57;

  v60 = sub_23DB04C74(0xD000000000000020, 0x800000023DB8D440);
  v62 = v61;
  *v59 = 0;
  *(v59 + 8) = 0xE000000000000000;
  *(v59 + 17) = 186;
  *(v59 + 19) = 0;
  sub_23DB6EA7C();
  v63 = v56[12];
  *(v59 + v63) = 1;
  v64 = v56[13];
  *(v59 + v64) = 1;
  v65 = v56[14];
  v66 = type metadata accessor for KeyboardKey(0);
  (*(*(v66 - 8) + 56))(v59 + v65, 1, 1, v66);
  v67 = (v59 + v56[15]);
  *v67 = 0;
  v67[1] = 0;
  *v59 = v60;
  *(v59 + 8) = v62;

  *(v59 + 16) = 3;
  *(v59 + 19) = 0;
  *v67 = 0;
  v67[1] = 0;

  *(v59 + v63) = 1;
  *(v59 + v64) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v51 + v68) = v58;

  v69 = swift_allocObject();
  swift_weakInit();
  v70 = swift_allocObject();
  swift_weakInit();
  v71 = swift_allocObject();
  *(v71 + 16) = v70;
  *(v71 + 24) = v69;
  v72 = (v51 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v72 = sub_23DB06FEC;
  v72[1] = v71;

  v73 = swift_allocObject();
  swift_weakInit();
  v74 = swift_allocObject();
  swift_weakInit();
  v75 = swift_allocObject();
  *(v75 + 16) = v74;
  *(v75 + 24) = v73;
  v76 = (v51 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v76 = sub_23DB0720C;
  v76[1] = v75;

  v77 = swift_allocObject();
  swift_weakInit();

  v78 = swift_allocObject();
  swift_weakInit();
  v79 = swift_allocObject();
  *(v79 + 16) = v78;
  *(v79 + 24) = v77;
  v80 = (v51 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v81 = *v80;
  v82 = v80[1];
  *v80 = sub_23DB07210;
  v80[1] = v79;

  sub_23DA18BA0(v81, v82);

  return v51;
}

uint64_t sub_23DAE781C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      if (([objc_opt_self() voTutorialUsageConfirmed] & 1) == 0)
      {
        if (qword_27E2FBBD0 != -1)
        {
          swift_once();
        }

        sub_23DAA0760(a3);
      }

      v7 = (v6 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
      swift_beginAccess();
      v9 = *v7;
      v8 = v7[1];
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C(v13);

      v10 = v13[0];
      v11 = v13[1];
      UIAccessibilityPostNotification(0x438u, 0);
      v12 = MEMORY[0x277D764B0];
      sub_23DB05C14(v9, v8, MEMORY[0x277D764B0]);

      sub_23DB05C14(v10, v11, v12);

      sub_23DAC7854(2);
    }
  }

  return result;
}

uint64_t sub_23DAE79EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v142 = *(v1 - 8);
  v143 = v1;
  MEMORY[0x28223BE20](v1);
  v141 = &v114 - v2;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v136 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v134 = &v114 - v3;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v128 = *(v130 - 1);
  MEMORY[0x28223BE20](v130);
  v125 = &v114 - v4;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v120 = &v114 - v5;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v6 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v115 = &v114 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v114 - v10;
  v12 = sub_23DB6EA8C();
  v144 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v135 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v114 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v114 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v114 - v21;
  v127 = sub_23DB04C74(0xD00000000000001DLL, 0x800000023DB8A3D0);
  v126 = v23;
  v145 = v0;
  v124 = sub_23DB04C74(0xD000000000000020, 0x800000023DB8D330);
  v123 = v24;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOSingleButton(0);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOSingleButton__buttonName;
  *&v146 = 0;
  *(&v146 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v27 = *(v9 + 32);
  v129 = v11;
  v132 = v8;
  v131 = v9 + 32;
  v117 = v27;
  v27(v25 + v26, v11, v8);
  v28 = v115;
  v29 = v144 + 16;
  v30 = *(v144 + 16);
  v133 = v22;
  v30(v19, v22, v12);
  v137 = v19;
  v138 = v16;
  v139 = v12;
  v119 = v29;
  v118 = v30;
  v30(v16, v19, v12);
  v31 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v146) = 0;
  sub_23DB6EECC();
  v32 = *(v6 + 32);
  v33 = v116;
  v32(v25 + v31, v28);
  v34 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v35 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v35 = MEMORY[0x277D84FA0];
  }

  *(v25 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v35;
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v146 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v37 = v34;
  v38 = v120;
  sub_23DB6EECC();
  (*(v121 + 32))(v25 + v36, v38, v122);
  *(v25 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v37;
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v146 = 0;
  v40 = v125;
  sub_23DB6EECC();
  (*(v128 + 32))(v25 + v39, v40, v130);
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v146) = 0;
  sub_23DB6EECC();
  (v32)(v25 + v41, v28, v33);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v128 = xmmword_23DB74320;
  v146 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v130 = v32;
  v43 = v134;
  sub_23DB6EECC();
  v44 = *(v136 + 32);
  v45 = v140;
  v44(v25 + v42, v43, v140);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v146 = v128;
  sub_23DB6EECC();
  v44(v25 + v46, v43, v45);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v146) = 0;
  sub_23DB6EECC();
  v130(v25 + v47, v28, v33);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v146 = 0;
  *(&v146 + 1) = 0xE000000000000000;
  v49 = v129;
  sub_23DB6EECC();
  v117(v25 + v48, v49, v132);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v146 = 0uLL;
  sub_23DB6EECC();
  v44(v25 + v50, v43, v45);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v146 = nullsub_1;
  *(&v146 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v52 = v141;
  sub_23DB6EECC();
  (*(v142 + 32))(v25 + v51, v52, v143);
  v53 = v135;
  v55 = v138;
  v54 = v139;
  v118(v135, v138, v139);
  v56 = Page.init(id:title:text:subPages:iconName:)(v53, v127, v126, v124, v123, MEMORY[0x277D84F90], 0, 0);
  v57 = *(v144 + 8);
  v57(v133, v54);
  v57(v55, v54);
  v57(v137, v54);
  v58 = sub_23DB04C74(0xD000000000000023, 0x800000023DB8A420);
  v60 = v59;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v146 = v58;
  *(&v146 + 1) = v60;

  v136 = v56;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v146) = 1;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v61 = (type metadata accessor for CommandToPractice(0) - 8);
  v62 = *v61;
  v142 = *(*v61 + 72);
  v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v64 = swift_allocObject();
  v140 = v64;
  *(v64 + 16) = xmmword_23DB7A0B0;
  v65 = v64 + v63;
  v66 = sub_23DB04C74(0xD000000000000026, 0x800000023DB8D360);
  v68 = v67;
  *v65 = 0;
  *(v65 + 8) = 0xE000000000000000;
  *(v65 + 17) = 186;
  *(v65 + 19) = 0;
  sub_23DB6EA7C();
  v69 = v61[12];
  *(v65 + v69) = 1;
  v70 = v61[13];
  *(v65 + v70) = 1;
  v71 = v61[14];
  v141 = type metadata accessor for KeyboardKey(0);
  v72 = *(v141 - 1);
  v143 = *(v72 + 56);
  v73 = v72 + 56;
  v143(v65 + v71, 1, 1, v141);
  v144 = v73;
  v74 = (v65 + v61[15]);
  *v74 = 0;
  v74[1] = 0;
  *v65 = v66;
  *(v65 + 8) = v68;

  *(v65 + 16) = 62;
  *(v65 + 19) = 1;
  *v74 = 0;
  v74[1] = 0;

  *(v65 + v69) = 1;
  *(v65 + v70) = 1;
  v75 = v142;
  v76 = v65 + v142;
  v77 = sub_23DB04C74(0xD000000000000026, 0x800000023DB8D390);
  v79 = v78;
  *v76 = 0;
  *(v76 + 8) = 0xE000000000000000;
  *(v76 + 17) = 186;
  *(v76 + 19) = 0;
  sub_23DB6EA7C();
  v80 = v61[12];
  *(v76 + v80) = 1;
  v81 = v61[13];
  *(v76 + v81) = 1;
  v82 = v141;
  v143(v76 + v61[14], 1, 1, v141);
  v83 = (v76 + v61[15]);
  *v83 = 0;
  v83[1] = 0;
  *v76 = v77;
  *(v76 + 8) = v79;

  *(v76 + 16) = 3;
  *(v76 + 19) = 0;
  *v83 = 0;
  v83[1] = 0;

  *(v76 + v80) = 1;
  *(v76 + v81) = 1;
  v84 = 2 * v75;
  v85 = v65 + 2 * v75;
  v86 = sub_23DB04C74(0xD000000000000026, 0x800000023DB8D3C0);
  v88 = v87;
  *v85 = 0;
  *(v85 + 8) = 0xE000000000000000;
  *(v85 + 17) = 186;
  *(v85 + 19) = 0;
  sub_23DB6EA7C();
  v89 = v61[12];
  *(v85 + v89) = 1;
  v90 = v61[13];
  *(v85 + v90) = 1;
  v91 = v82;
  v92 = v143;
  v143(v85 + v61[14], 1, 1, v91);
  v93 = (v85 + v61[15]);
  *v93 = 0;
  v93[1] = 0;
  *v85 = v86;
  *(v85 + 8) = v88;

  *(v85 + 16) = 5;
  *(v85 + 19) = 0;
  *v93 = 0;
  v93[1] = 0;

  *(v85 + v89) = 1;
  *(v85 + v90) = 1;
  v94 = v65 + v84 + v142;
  v95 = v145;
  v96 = sub_23DB04C74(0xD000000000000026, 0x800000023DB8D3F0);
  v98 = v97;
  *v94 = 0;
  *(v94 + 8) = 0xE000000000000000;
  *(v94 + 17) = 186;
  *(v94 + 19) = 0;
  sub_23DB6EA7C();
  *(v94 + v61[12]) = 1;
  *(v94 + v61[13]) = 1;
  v92(v94 + v61[14], 1, 1, v141);
  v99 = (v94 + v61[15]);
  *v99 = 0;
  v99[1] = 0;
  *v94 = v96;
  *(v94 + 8) = v98;

  *(v94 + 16) = -72;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  v100 = v136;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v101 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v100 + v101) = v140;

  v102 = swift_allocObject();
  swift_weakInit();
  v103 = swift_allocObject();
  *(v103 + 16) = v102;
  *(v103 + 24) = v95;
  v104 = (v100 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v104 = sub_23DB06F20;
  v104[1] = v103;
  swift_retain_n();

  v105 = swift_allocObject();
  swift_weakInit();
  v106 = swift_allocObject();
  *(v106 + 16) = v105;
  *(v106 + 24) = v95;
  v107 = (v100 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v108 = *v107;
  v109 = v107[1];
  *v107 = sub_23DB071F8;
  v107[1] = v106;

  sub_23DA18BA0(v108, v109);

  v110 = swift_allocObject();
  swift_weakInit();

  v111 = swift_allocObject();
  *(v111 + 16) = v110;
  *(v111 + 24) = v95;
  v112 = (v100 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v112 = sub_23DB06F44;
  v112[1] = v111;

  return v100;
}

uint64_t sub_23DAE8AA4(unint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v55 = (&v45 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v45 - v8);
  if (qword_27E2FBBD0 != -1)
  {
    goto LABEL_23;
  }

  if (!UIAccessibilityIsVoiceOverRunning())
  {
    goto LABEL_4;
  }

LABEL_3:
  v10 = objc_opt_self();
  v11 = sub_23DB7087C();
  [v10 triggerEventCommand_];

LABEL_4:
  while (1)
  {
    v12 = *(qword_27E30A6A8 + 16);
    swift_beginAccess();
    *(v12 + 40) = 27;

    sub_23DABC32C();

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v14 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    v15 = result;
    swift_beginAccess();
    v53 = v14;
    v16 = *(v15 + v14);
    KeyPath = swift_getKeyPath();
    v18 = swift_getKeyPath();

    v52 = KeyPath;
    v51 = v18;
    v50 = sub_23DB6EEFC();
    v48 = v19;
    v20 = swift_getKeyPath();
    v21 = swift_getKeyPath();
    v54 = v15;
    v49 = v20;
    v47 = v21;
    v46 = sub_23DB6EEFC();
    v45 = v22;

    v23 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_23DAC8B24(v16);
    }

    v24 = 0;
    v25 = (v2 + 7);
    v26 = v16[2];
    v2 += 6;
    if (!v26)
    {
LABEL_8:
      v27 = 1;
      v24 = v26;
      goto LABEL_12;
    }

    while ((v24 & 0x8000000000000000) == 0)
    {
      if (v24 >= v16[2])
      {
        goto LABEL_22;
      }

      v28 = *(type metadata accessor for CommandToPractice(0) - 8);
      v56 = v24 + 1;
      v29 = v16 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24;
      v30 = *(v1 + 48);
      v31 = v2;
      v32 = v25;
      v33 = v9;
      v34 = v26;
      v35 = v1;
      v36 = v23;
      v37 = v6;
      v38 = v16;
      v39 = v55;
      *v55 = v24;
      sub_23DB06674(v29, v39 + v30, type metadata accessor for CommandToPractice);
      v40 = v39;
      v16 = v38;
      v6 = v37;
      v23 = v36;
      v1 = v35;
      v26 = v34;
      v9 = v33;
      v25 = v32;
      v2 = v31;
      sub_23DA17A54(v40, v6, &qword_27E2FE1C0, &qword_23DB7A440);
      v27 = 0;
      v24 = v56;
LABEL_12:
      (*v25)(v6, v27, 1, v1);
      sub_23DA17A54(v6, v9, &qword_27E2FE1C8, &qword_23DB7A448);
      if ((*v2)(v9, 1, v1) == 1)
      {

        *v45 = 0;
        *v48 = 0;
        v46(v57, 0);

        v50(v58, 0);

        type metadata accessor for Page.Practice(0);
        sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
        v44 = v54;
        sub_23DB6EE6C();
        sub_23DB6EEBC();

        *(v44 + v53) = v23;
      }

      v41 = *v9;
      if ((*v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        break;
      }

      if (v41 >= v23[2])
      {
        goto LABEL_20;
      }

      v42 = *(type metadata accessor for CommandToPractice(0) - 8);
      v43 = v23 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v41;
      *(v43 + 18) = 0;
      *(v43 + 19) = v41 == 0;
      sub_23DB0672C(v9 + *(v1 + 48), type metadata accessor for CommandToPractice);
      if (v24 == v26)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
    if (UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_23DAE911C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v153 = *(v1 - 8);
  v154 = v1;
  MEMORY[0x28223BE20](v1);
  v152 = &v127 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v150 = *(v3 - 8);
  v151 = v3;
  MEMORY[0x28223BE20](v3);
  v149 = &v127 - v4;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v141 = *(v143 - 1);
  MEMORY[0x28223BE20](v143);
  v138 = &v127 - v5;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v133 = &v127 - v6;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v127 = &v127 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v127 - v10;
  v12 = sub_23DB6EA8C();
  v156 = *(v12 - 8);
  v157 = v12;
  MEMORY[0x28223BE20](v12);
  v147 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v155 = &v127 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v127 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v127 - v20;
  v140 = sub_23DB04C74(0xD00000000000001BLL, 0x800000023DB8D1A0);
  v139 = v22;
  v158 = v0;
  v137 = sub_23DB04C74(0xD00000000000001ALL, 0x800000023DB8D1C0);
  v136 = v23;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOScroll(0);
  v24 = swift_allocObject();
  v25 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOScroll__verticalScrollViewLabel;
  *&v159 = 0;
  *(&v159 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v26 = *(v9 + 32);
  v26(v24 + v25, v11, v8);
  v27 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeVOScroll__horizontalScrollViewLabel;
  *&v159 = 0;
  *(&v159 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v142 = v11;
  v145 = v8;
  v144 = v9 + 32;
  v130 = v26;
  v26(v24 + v27, v11, v8);
  v28 = v127;
  v29 = v156 + 16;
  v30 = *(v156 + 16);
  v146 = v21;
  v31 = v157;
  v30(v18, v21, v157);
  v148 = v18;
  v132 = v29;
  v131 = v30;
  v30(v155, v18, v31);
  v32 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v159) = 0;
  sub_23DB6EECC();
  v33 = *(v128 + 32);
  v34 = v129;
  v33(v24 + v32, v28);
  v35 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v36 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v36 = MEMORY[0x277D84FA0];
  }

  *(v24 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v36;
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v159 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v38 = v35;
  v39 = v133;
  sub_23DB6EECC();
  (*(v134 + 32))(v24 + v37, v39, v135);
  *(v24 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v38;
  v40 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v159 = 0;
  v41 = v138;
  sub_23DB6EECC();
  (*(v141 + 32))(v24 + v40, v41, v143);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v159) = 0;
  sub_23DB6EECC();
  (v33)(v24 + v42, v28, v34);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v141 = xmmword_23DB74320;
  v159 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v143 = v33;
  v44 = v149;
  sub_23DB6EECC();
  v45 = v151;
  v46 = *(v150 + 32);
  v46(v24 + v43, v44, v151);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v159 = v141;
  sub_23DB6EECC();
  v46(v24 + v47, v44, v45);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v159) = 0;
  sub_23DB6EECC();
  v143(v24 + v48, v28, v34);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v159 = 0;
  *(&v159 + 1) = 0xE000000000000000;
  v50 = v142;
  sub_23DB6EECC();
  v130(v24 + v49, v50, v145);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v159 = 0uLL;
  sub_23DB6EECC();
  v46(v24 + v51, v44, v45);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v159 = nullsub_1;
  *(&v159 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v53 = v152;
  sub_23DB6EECC();
  (*(v153 + 32))(v24 + v52, v53, v154);
  v54 = v147;
  v55 = v155;
  v56 = v157;
  v131(v147, v155, v157);
  v57 = Page.init(id:title:text:subPages:iconName:)(v54, v140, v139, v137, v136, MEMORY[0x277D84F90], 0, 0);
  v58 = *(v156 + 8);
  v58(v146, v56);
  v58(v55, v56);
  v58(v148, v56);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v159) = 1;
  swift_retain_n();
  sub_23DB6EF1C();
  v59 = sub_23DB04C74(0xD000000000000029, 0x800000023DB8D1E0);
  v61 = v60;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v159 = v59;
  *(&v159 + 1) = v61;

  sub_23DB6EF1C();
  v62 = sub_23DB04C74(0xD00000000000002BLL, 0x800000023DB8D210);
  v64 = v63;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v159 = v62;
  *(&v159 + 1) = v64;
  v151 = v57;

  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v65 = (type metadata accessor for CommandToPractice(0) - 8);
  v66 = *(*v65 + 72);
  v67 = (*(*v65 + 80) + 32) & ~*(*v65 + 80);
  v152 = (4 * v66);
  v68 = v66;
  v154 = v66;
  v69 = swift_allocObject();
  v153 = v69;
  *(v69 + 16) = xmmword_23DB7A0D0;
  v70 = v69 + v67;
  v71 = sub_23DB04C74(0xD000000000000020, 0x800000023DB8D240);
  v73 = v72;
  *v70 = 0;
  *(v70 + 8) = 0xE000000000000000;
  *(v70 + 17) = 186;
  *(v70 + 19) = 0;
  sub_23DB6EA7C();
  v74 = v65[12];
  *(v70 + v74) = 1;
  v75 = v65[13];
  *(v70 + v75) = 1;
  v76 = v65[14];
  v157 = type metadata accessor for KeyboardKey(0);
  v77 = *(v157 - 8);
  v156 = *(v77 + 56);
  v78 = (v77 + 56);
  (v156)(v70 + v76, 1, 1, v157);
  v155 = v78;
  v79 = (v70 + v65[15]);
  *v79 = 0;
  v79[1] = 0;
  *v70 = v71;
  *(v70 + 8) = v73;

  *(v70 + 16) = 62;
  *(v70 + 19) = 1;
  *v79 = 0;
  v79[1] = 0;

  *(v70 + v74) = 1;
  *(v70 + v75) = 1;
  v80 = v70 + v68;
  v150 = sub_23DB04C74(0xD000000000000023, 0x800000023DB8D270);
  v82 = v81;
  *v80 = 0;
  *(v80 + 8) = 0xE000000000000000;
  *(v80 + 17) = 186;
  *(v80 + 19) = 0;
  sub_23DB6EA7C();
  v83 = v65[12];
  *(v80 + v83) = 1;
  v84 = v65[13];
  *(v80 + v84) = 1;
  v85 = v156;
  v86 = v157;
  (v156)(v80 + v65[14], 1, 1, v157);
  v87 = (v80 + v65[15]);
  *v87 = 0;
  v87[1] = 0;
  *v80 = v150;
  *(v80 + 8) = v82;

  *(v80 + 16) = 19;
  *(v80 + 19) = 0;
  *v87 = 0;
  v87[1] = 0;

  *(v80 + v83) = 0;
  *(v80 + v84) = 1;
  v88 = 2 * v154;
  v89 = v70 + 2 * v154;
  v90 = sub_23DB04C74(0xD000000000000020, 0x800000023DB8D2A0);
  v92 = v91;
  *v89 = 0;
  *(v89 + 8) = 0xE000000000000000;
  *(v89 + 17) = 186;
  *(v89 + 19) = 0;
  sub_23DB6EA7C();
  v93 = v65[12];
  *(v89 + v93) = 1;
  v94 = v65[13];
  *(v89 + v94) = 1;
  v85(v89 + v65[14], 1, 1, v86);
  v95 = (v89 + v65[15]);
  *v95 = 0;
  v95[1] = 0;
  *v89 = v90;
  *(v89 + 8) = v92;

  *(v89 + 16) = 63;
  *(v89 + 19) = 0;
  *v95 = 0;
  v95[1] = 0;

  *(v89 + v93) = 1;
  *(v89 + v94) = 1;
  v96 = v70 + v88 + v154;
  v97 = v158;
  v98 = sub_23DB04C74(0xD000000000000024, 0x800000023DB8D2D0);
  v100 = v99;
  *v96 = 0;
  *(v96 + 8) = 0xE000000000000000;
  *(v96 + 17) = 186;
  *(v96 + 19) = 0;
  sub_23DB6EA7C();
  v101 = v65[12];
  *(v96 + v101) = 1;
  v102 = v65[13];
  *(v96 + v102) = 1;
  (v156)(v96 + v65[14], 1, 1, v157);
  v103 = (v96 + v65[15]);
  *v103 = 0;
  v103[1] = 0;
  *v96 = v98;
  *(v96 + 8) = v100;

  *(v96 + 16) = 22;
  *(v96 + 19) = 0;
  *v103 = 0;
  v103[1] = 0;

  *(v96 + v101) = 0;
  *(v96 + v102) = 1;
  v104 = &v152[v70];
  v105 = v97;
  v106 = sub_23DB04C74(0xD000000000000023, 0x800000023DB8D300);
  v108 = v107;
  *v104 = 0;
  *(v104 + 1) = 0xE000000000000000;
  *(v104 + 17) = 186;
  v104[19] = 0;
  sub_23DB6EA7C();
  v109 = v65[12];
  v104[v109] = 1;
  v110 = v65[13];
  v104[v110] = 1;
  (v156)(&v104[v65[14]], 1, 1, v157);
  v111 = &v104[v65[15]];
  *v111 = 0;
  *(v111 + 1) = 0;
  *v104 = v106;
  *(v104 + 1) = v108;

  v104[16] = 21;
  v104[19] = 0;
  *v111 = 0;
  *(v111 + 1) = 0;

  v104[v109] = 0;
  v104[v110] = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  v112 = v151;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v113 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v112 + v113) = v153;

  v114 = swift_allocObject();
  swift_weakInit();
  v115 = swift_allocObject();
  *(v115 + 16) = v114;
  *(v115 + 24) = v105;
  v116 = v105;
  v117 = (v112 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v118 = *v117;
  v119 = v117[1];
  *v117 = sub_23DB071F8;
  v117[1] = v115;
  swift_retain_n();

  sub_23DA18BA0(v118, v119);

  v120 = swift_allocObject();
  swift_weakInit();
  v121 = swift_allocObject();
  *(v121 + 16) = v120;
  *(v121 + 24) = v116;
  v122 = (v112 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v122 = sub_23DB07204;
  v122[1] = v121;

  v123 = swift_allocObject();
  swift_weakInit();

  v124 = swift_allocObject();
  *(v124 + 16) = v123;
  *(v124 + 24) = v116;
  v125 = (v112 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v125 = sub_23DB07208;
  v125[1] = v124;

  return v112;
}

uint64_t sub_23DAEA36C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v7);

    if (LOBYTE(v7[0]) == 1)
    {
      v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v8 = *(v2 + v3);
      swift_getKeyPath();
      swift_getKeyPath();

      v4 = sub_23DB6EEFC();
      sub_23DB05F68(&v8, v5);
      v4(v7, 0);

      v6 = v8;
      type metadata accessor for Page.Practice(0);
      sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      *(v2 + v3) = v6;
    }

    else
    {
    }
  }

  return result;
}

size_t sub_23DAEA560()
{
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v148 = &v121 - v1;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  *&v146 = *(v147 - 1);
  MEMORY[0x28223BE20](v147);
  v143 = &v121 - v2;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v138 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v135 = &v121 - v3;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v129 = *(v130 - 1);
  MEMORY[0x28223BE20](v130);
  v128 = &v121 - v4;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = &v121 - v5;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v6 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v8 = &v121 - v7;
  v9 = sub_23DB6EA8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v137 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v121 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v121 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v121 - v19;
  v134 = sub_23DB04C74(0xD00000000000001CLL, 0x800000023DB8CEF0);
  v133 = v21;
  v144 = v0;
  v132 = sub_23DB04C74(0xD00000000000001BLL, 0x800000023DB8CF10);
  v131 = v22;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOTapToSpeak(0);
  v23 = swift_allocObject();
  v24 = (v23 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_header);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v25 = MEMORY[0x277D84F90];
  *(v23 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_bodyTexts) = MEMORY[0x277D84F90];
  v26 = (v23 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_textToFocus);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  v141 = v10;
  v27 = *(v10 + 16);
  v136 = v20;
  v27(v17, v20, v9);
  v140 = v14;
  v139 = v17;
  v142 = v9;
  v127 = v10 + 16;
  v126 = v27;
  v27(v14, v17, v9);
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v152) = 0;
  sub_23DB6EECC();
  v29 = *(v6 + 32);
  v30 = v122;
  v29(v23 + v28, v8);
  v31 = v25;
  if (v25 >> 62 && sub_23DB70C3C())
  {
    v32 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v32 = MEMORY[0x277D84FA0];
  }

  *(v23 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v32;
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v152 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v34 = v123;
  sub_23DB6EECC();
  (*(v124 + 32))(v23 + v33, v34, v125);
  *(v23 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v31;
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v152 = 0;
  v36 = v128;
  sub_23DB6EECC();
  (*(v129 + 32))(v23 + v35, v36, v130);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v152) = 0;
  sub_23DB6EECC();
  (v29)(v23 + v37, v8, v30);
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v129 = xmmword_23DB74320;
  v152 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v130 = v29;
  v39 = v135;
  sub_23DB6EECC();
  v40 = *(v138 + 32);
  v41 = v145;
  v40(v23 + v38, v39, v145);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v152 = v129;
  sub_23DB6EECC();
  v40(v23 + v42, v39, v41);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v152) = 0;
  sub_23DB6EECC();
  v130(v23 + v43, v8, v30);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v152 = 0;
  *(&v152 + 1) = 0xE000000000000000;
  v45 = v143;
  sub_23DB6EECC();
  (*(v146 + 32))(v23 + v44, v45, v147);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v152 = 0uLL;
  sub_23DB6EECC();
  v40(v23 + v46, v39, v41);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v152 = nullsub_1;
  *(&v152 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v48 = v148;
  sub_23DB6EECC();
  (*(v149 + 32))(v23 + v47, v48, v150);
  v49 = v137;
  v50 = v140;
  v51 = v142;
  v126(v137, v140, v142);
  v138 = Page.init(id:title:text:subPages:iconName:)(v49, v134, v133, v132, v131, MEMORY[0x277D84F90], 0, 0);
  v52 = *(v141 + 8);
  v52(v136, v51);
  v52(v50, v51);
  v52(v139, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v53 = (type metadata accessor for CommandToPractice(0) - 8);
  v54 = *(*v53 + 72);
  v55 = (*(*v53 + 80) + 32) & ~*(*v53 + 80);
  v145 = 2 * v54;
  v56 = swift_allocObject();
  v146 = xmmword_23DB76A80;
  v143 = v56;
  *(v56 + 16) = xmmword_23DB76A80;
  v142 = v55;
  v57 = v56 + v55;

  v150 = 0xD000000000000021;
  v58 = v144;
  v59 = sub_23DB04C74(0xD000000000000021, 0x800000023DB8CF30);
  v61 = v60;
  *v57 = 0;
  *(v57 + 8) = 0xE000000000000000;
  *(v57 + 17) = 186;
  *(v57 + 19) = 0;
  sub_23DB6EA7C();
  v62 = v53[12];
  *(v57 + v62) = 1;
  v63 = v53[13];
  *(v57 + v63) = 1;
  v64 = v53[14];
  v148 = type metadata accessor for KeyboardKey(0);
  v65 = *(v148 - 1);
  v147 = *(v65 + 56);
  v149 = v65 + 56;
  v147(v57 + v64, 1, 1, v148);
  v66 = (v57 + v53[15]);
  *v66 = 0;
  v66[1] = 0;
  *v57 = v59;
  *(v57 + 8) = v61;

  *(v57 + 16) = 62;
  *(v57 + 19) = 1;
  *v66 = 0;
  v66[1] = 0;

  *(v57 + v62) = 1;
  *(v57 + v63) = 1;
  v141 = v54;
  v67 = v57 + v54;
  v68 = v58;
  v69 = sub_23DB04C74(v150, 0x800000023DB8CF60);
  v71 = v70;
  *v67 = 0;
  *(v67 + 8) = 0xE000000000000000;
  *(v67 + 17) = 186;
  *(v67 + 19) = 0;
  sub_23DB6EA7C();
  v72 = v53[12];
  *(v67 + v72) = 1;
  v73 = v53[13];
  *(v67 + v73) = 1;
  v74 = v138;
  v147(v57 + v54 + v53[14], 1, 1, v148);
  v75 = (v57 + v54 + v53[15]);
  *v75 = 0;
  v75[1] = 0;
  *v67 = v69;
  *(v67 + 8) = v71;

  *(v67 + 16) = 63;
  *(v67 + 19) = 0;
  *v75 = 0;
  v75[1] = 0;

  *(v67 + v72) = 1;
  *(v67 + v73) = 1;
  v76 = v57 + v145;
  v77 = v68;
  v78 = sub_23DB04C74(v150, 0x800000023DB8CF90);
  v80 = v79;
  *v76 = 0;
  *(v76 + 8) = 0xE000000000000000;
  *(v76 + 17) = 186;
  *(v76 + 19) = 0;
  sub_23DB6EA7C();
  *(v76 + v53[12]) = 1;
  *(v76 + v53[13]) = 1;
  v147(v76 + v53[14], 1, 1, v148);
  v81 = (v76 + v53[15]);
  *v81 = 0;
  v81[1] = 0;
  *v76 = v78;
  *(v76 + 8) = v80;

  *(v76 + 16) = -72;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v82 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v74 + v82) = v143;

  swift_getKeyPath();
  swift_getKeyPath();
  v151[0] = 1;

  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAD0, &qword_23DB793E0);
  v83 = swift_allocObject();
  *(v83 + 16) = v146;
  *(v83 + 32) = sub_23DB04C74(0xD000000000000026, 0x800000023DB8CFC0);
  *(v83 + 40) = v84;
  *(v83 + 48) = sub_23DB04C74(0xD000000000000026, 0x800000023DB8CFF0);
  *(v83 + 56) = v85;
  *(v83 + 64) = sub_23DB04C74(0xD000000000000026, 0x800000023DB8D020);
  *(v83 + 72) = v86;
  v87 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_bodyTexts;
  swift_beginAccess();
  *(v74 + v87) = v83;

  v88 = [objc_opt_self() currentDevice];
  v89 = [v88 userInterfaceIdiom];

  if (v89 != 1)
  {

    goto LABEL_11;
  }

  inited = swift_initStackObject();
  *(inited + 16) = v146;
  *(inited + 32) = sub_23DB04C74(0xD000000000000026, 0x800000023DB8D0B0);
  *(inited + 40) = v91;
  *(inited + 48) = sub_23DB04C74(0xD000000000000026, 0x800000023DB8D0E0);
  *(inited + 56) = v92;
  *(inited + 64) = sub_23DB04C74(0xD000000000000026, 0x800000023DB8D110);
  *(inited + 72) = v93;
  swift_beginAccess();
  sub_23DB3C770(inited);
  swift_endAccess();
  v94 = sub_23DB04C74(0xD000000000000026, 0x800000023DB8D140);
  v96 = v95;
  v97 = *(v74 + v82);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v97 = sub_23DAC8B24(v97);
  }

  v98 = v142;
  if (v97[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v99 = (v97 + v142 + v141);
    *v99 = v94;
    v99[1] = v96;

    sub_23DB6EE6C();
    sub_23DB6EEBC();

    *(v74 + v82) = v97;

    v94 = sub_23DB04C74(0xD000000000000026, 0x800000023DB8D170);
    v96 = v100;
    v97 = *(v74 + v82);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_8;
    }
  }

  result = sub_23DAC8B24(v97);
  v97 = result;
LABEL_8:
  if (v97[2] >= 3uLL)
  {
    v102 = (v97 + v98 + v145);
    *v102 = v94;
    v102[1] = v96;

    sub_23DB6EE6C();
    sub_23DB6EEBC();

    *(v74 + v82) = v97;

LABEL_11:
    v103 = sub_23DB04C74(0xD000000000000026, 0x800000023DB8D050);
    v104 = (v74 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_header);
    *v104 = v103;
    v104[1] = v105;

    v106 = sub_23DB04C74(0xD000000000000029, 0x800000023DB8D080);
    v107 = (v74 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_textToFocus);
    *v107 = v106;
    v107[1] = v108;

    v109 = swift_allocObject();
    swift_weakInit();
    v110 = swift_allocObject();
    *(v110 + 16) = v109;
    *(v110 + 24) = v77;
    v111 = (v74 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
    swift_beginAccess();
    *v111 = sub_23DB06DFC;
    v111[1] = v110;
    swift_retain_n();

    v112 = swift_allocObject();
    swift_weakInit();
    v113 = swift_allocObject();
    *(v113 + 16) = v112;
    *(v113 + 24) = v77;
    v114 = (v74 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
    swift_beginAccess();
    *v114 = sub_23DB06E20;
    v114[1] = v113;

    v115 = swift_allocObject();
    swift_weakInit();

    v116 = swift_allocObject();
    swift_weakInit();
    v117 = swift_allocObject();
    *(v117 + 16) = v115;
    *(v117 + 24) = v116;
    v118 = (v74 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
    swift_beginAccess();
    v119 = *v118;
    v120 = v118[1];
    *v118 = sub_23DB06E28;
    v118[1] = v117;

    sub_23DA18BA0(v119, v120);

    return v74;
  }

  __break(1u);
  return result;
}

uint64_t sub_23DAEB92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    if (([objc_opt_self() voTutorialUsageConfirmed] & 1) == 0)
    {
      if (qword_27E2FBBD0 != -1)
      {
        swift_once();
      }

      sub_23DAA0760(a3);
    }

    v6 = (v5 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v8 = *v6;
    v7 = v6[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v12);

    v9 = v12[0];
    v10 = v12[1];
    UIAccessibilityPostNotification(0x438u, 0);
    v11 = MEMORY[0x277D764B0];
    sub_23DB05C14(v8, v7, MEMORY[0x277D764B0]);

    sub_23DB05C14(v9, v10, v11);
  }

  return result;
}

unint64_t sub_23DAEBAB4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v54 = (&v43 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v43 - v8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    if (qword_27E2FBBD0 == -1)
    {
      goto LABEL_3;
    }

LABEL_21:
    swift_once();
LABEL_3:
    if (UIAccessibilityIsVoiceOverRunning())
    {
      v12 = objc_opt_self();
      v13 = sub_23DB7087C();
      [v12 triggerEventCommand_];
    }

    v14 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v52 = v14;
    v15 = *(v11 + v14);
    KeyPath = swift_getKeyPath();
    v17 = swift_getKeyPath();

    v50 = v17;
    v51 = KeyPath;
    v49 = sub_23DB6EEFC();
    v47 = v18;
    v19 = swift_getKeyPath();
    v20 = swift_getKeyPath();
    v53 = v11;
    v48 = v19;
    v46 = v20;
    v45 = sub_23DB6EEFC();
    v44 = v21;

    v22 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_23DAC8B24(v15);
    }

    v23 = 0;
    v24 = (v2 + 7);
    v25 = v15[2];
    v2 += 6;
    if (!v25)
    {
LABEL_8:
      v26 = 1;
      v23 = v25;
      goto LABEL_11;
    }

    while (1)
    {
      if (v23 >= v15[2])
      {
        goto LABEL_20;
      }

      v27 = *(type metadata accessor for CommandToPractice(0) - 8);
      v55 = v23 + 1;
      v28 = v15 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23;
      v29 = *(v1 + 48);
      v30 = v2;
      v31 = v24;
      v32 = v9;
      v33 = v1;
      v34 = v25;
      v35 = v22;
      v36 = v6;
      v37 = v15;
      v38 = v54;
      *v54 = v23;
      sub_23DB06674(v28, v38 + v29, type metadata accessor for CommandToPractice);
      v39 = v38;
      v15 = v37;
      v6 = v36;
      v22 = v35;
      v25 = v34;
      v1 = v33;
      v9 = v32;
      v24 = v31;
      v2 = v30;
      sub_23DA17A54(v39, v6, &qword_27E2FE1C0, &qword_23DB7A440);
      v26 = 0;
      v23 = v55;
LABEL_11:
      (*v24)(v6, v26, 1, v1);
      sub_23DA17A54(v6, v9, &qword_27E2FE1C8, &qword_23DB7A448);
      if ((*v2)(v9, 1, v1) == 1)
      {
        break;
      }

      v11 = *v9;
      if ((*v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v11 >= v22[2])
      {
        goto LABEL_19;
      }

      v40 = *(type metadata accessor for CommandToPractice(0) - 8);
      v41 = v22 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v11;
      *(v41 + 18) = 0;
      *(v41 + 19) = v11 == 0;
      sub_23DB0672C(v9 + *(v1 + 48), type metadata accessor for CommandToPractice);
      if (v23 == v25)
      {
        goto LABEL_8;
      }
    }

    *v44 = 0;
    *v47 = 0;
    v45(v56, 0);

    v49(v57, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
    v42 = v53;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    *(v42 + v52) = v22;

    [objc_opt_self() setVOTutorialUsageConfirmed_];
  }

  return result;
}

uint64_t sub_23DAEC0E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C(v8);

      if (v8[0])
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_23DB6EF0C(v8);

        v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
        swift_beginAccess();
        v9 = *(v3 + v4);
        swift_getKeyPath();
        swift_getKeyPath();

        v5 = sub_23DB6EEFC();
        sub_23DB05F68(&v9, v6);
        v5(v8, 0);

        v7 = v9;
        type metadata accessor for Page.Practice(0);
        sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
        sub_23DB6EE6C();
        sub_23DB6EEBC();

        *(v3 + v4) = v7;
      }
    }
  }

  return result;
}

uint64_t sub_23DAEC348()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v82 = *(v1 - 8);
  v83 = v1;
  MEMORY[0x28223BE20](v1);
  v81 = &v60 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x28223BE20](v5);
  v68 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v65 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  *&v62 = &v60 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v10 = &v60 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v60 - v13;
  v15 = sub_23DB6EA8C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v71 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v60 - v22;
  v24 = sub_23DB04C74(0xD00000000000002BLL, 0x800000023DB8A130);
  v69 = v25;
  v70 = v24;
  v84 = v0;
  v67 = sub_23DB04C74(0xD00000000000002ALL, 0x800000023DB8A160);
  v66 = v26;
  sub_23DB6EA7C();
  type metadata accessor for Page.CollectionFinished(0);
  v27 = swift_allocObject();
  v73 = v20;
  v74 = v16;
  v28 = *(v16 + 16);
  v72 = v23;
  v75 = v15;
  v64 = v16 + 16;
  v63 = v28;
  v28(v20, v23, v15);
  v29 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v85) = 0;
  sub_23DB6EECC();
  v30 = *(v12 + 32);
  v31 = v11;
  v30(v27 + v29, v14, v11);
  v32 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v33 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v33 = MEMORY[0x277D84FA0];
  }

  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v33;
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v85 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v60 + 32))(v27 + v34, v10, v61);
  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v32;
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v85 = 0;
  v36 = v62;
  sub_23DB6EECC();
  (*(v65 + 4))(v27 + v35, v36, v7);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v85) = 0;
  sub_23DB6EECC();
  v38 = v31;
  v30(v27 + v37, v14, v31);
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v62 = xmmword_23DB74320;
  v85 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v40 = v68;
  sub_23DB6EECC();
  v65 = v30;
  v41 = v78;
  v42 = *(v77 + 32);
  v42(v27 + v39, v40, v78);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v85 = v62;
  sub_23DB6EECC();
  v42(v27 + v43, v40, v41);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v85) = 0;
  sub_23DB6EECC();
  v65(v27 + v44, v14, v38);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v85 = 0;
  *(&v85 + 1) = 0xE000000000000000;
  v46 = v76;
  sub_23DB6EECC();
  (*(v79 + 32))(v27 + v45, v46, v80);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v85 = 0uLL;
  sub_23DB6EECC();
  v42(v27 + v47, v40, v41);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v85 = nullsub_1;
  *(&v85 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v49 = v81;
  sub_23DB6EECC();
  (*(v82 + 32))(v27 + v48, v49, v83);
  v50 = v71;
  v51 = v73;
  v52 = v75;
  v63(v71, v73, v75);
  v53 = Page.init(id:title:text:subPages:iconName:)(v50, v70, v69, v67, v66, MEMORY[0x277D84F90], 0, 0);
  v54 = *(v74 + 8);
  v54(v51, v52);
  v54(v72, v52);
  v55 = swift_allocObject();
  swift_weakInit();
  v56 = swift_allocObject();
  v57 = v84;
  *(v56 + 16) = v55;
  *(v56 + 24) = v57;
  v58 = (v53 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v58 = sub_23DB071F4;
  v58[1] = v56;

  return v53;
}

uint64_t sub_23DAECC88()
{
  v1 = sub_23DB6EA8C();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23DB04C74(0xD000000000000024, 0x800000023DB89CE0);
  v6 = sub_23DB04C74(v4, v5);
  v8 = v7;

  v85 = v0;
  v9 = sub_23DB04C74(0xD000000000000027, 0x800000023DB8CE00);
  v11 = v10;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOSlider(0);
  swift_allocObject();
  v83 = sub_23DA3981C(v3, v6, v8, v9, v11, MEMORY[0x277D84F90], 0, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  v91 = 1;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v12 = (type metadata accessor for CommandToPractice(0) - 8);
  v13 = *v12;
  v88 = *(*v12 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_23DB7A0B0;
  v16 = v15;
  v84 = v15;
  v17 = [objc_opt_self() currentDevice];
  v18 = [v17 userInterfaceIdiom];

  if (v18)
  {
    v19 = 0xD00000000000001DLL;
  }

  else
  {
    v19 = 0xD00000000000001FLL;
  }

  if (v18)
  {
    v20 = "tutorial.vo.magicTap.text";
  }

  else
  {
    v20 = "cTap.button.play";
  }

  v21 = v16 + v14;
  v22 = sub_23DB04C74(v19, v20 | 0x8000000000000000);
  v24 = v23;

  *v21 = 0;
  *(v21 + 8) = 0xE000000000000000;
  *(v21 + 17) = 186;
  *(v21 + 19) = 0;
  sub_23DB6EA7C();
  v25 = v12[12];
  *(v21 + v25) = 1;
  v26 = v12[13];
  *(v21 + v26) = 1;
  v27 = v12[14];
  v86 = type metadata accessor for KeyboardKey(0);
  v28 = *(v86 - 8);
  v29 = *(v28 + 56);
  v30 = v28 + 56;
  v29(v21 + v27, 1, 1, v86);
  v87 = v30;
  v31 = (v21 + v12[15]);
  *v31 = 0;
  v31[1] = 0;
  *v21 = v22;
  *(v21 + 8) = v24;

  *(v21 + 16) = 62;
  *(v21 + 19) = 1;
  *v31 = 0;
  v31[1] = 0;

  *(v21 + v25) = 1;
  *(v21 + v26) = 1;
  v32 = v88;
  v33 = v21 + v88;
  v81 = sub_23DB04C74(0xD00000000000002DLL, 0x800000023DB8CE30);
  v35 = v34;
  *v33 = 0;
  *(v33 + 8) = 0xE000000000000000;
  *(v33 + 17) = 186;
  *(v33 + 19) = 0;
  sub_23DB6EA7C();
  v36 = v12[12];
  *(v33 + v36) = 1;
  v37 = v12[13];
  *(v33 + v37) = 1;
  v38 = v33 + v12[14];
  v82 = v29;
  v29(v38, 1, 1, v86);
  v39 = (v33 + v12[15]);
  *v39 = 0;
  v39[1] = 0;
  *v33 = v81;
  *(v33 + 8) = v35;

  *(v33 + 16) = 10;
  *(v33 + 19) = 0;
  *v39 = 0;
  v39[1] = 0;

  *(v33 + v36) = 1;
  *(v33 + v37) = 1;
  v40 = 2 * v32;
  v41 = v21 + 2 * v32;
  v42 = sub_23DB04C74(0xD00000000000002DLL, 0x800000023DB8CE60);
  v44 = v43;
  *v41 = 0;
  *(v41 + 8) = 0xE000000000000000;
  *(v41 + 17) = 186;
  *(v41 + 19) = 0;
  sub_23DB6EA7C();
  v45 = v12[12];
  *(v41 + v45) = 1;
  v46 = v12[13];
  *(v41 + v46) = 1;
  v47 = v86;
  v29(v41 + v12[14], 1, 1, v86);
  v48 = (v41 + v12[15]);
  *v48 = 0;
  v48[1] = 0;
  *v41 = v42;
  *(v41 + 8) = v44;

  *(v41 + 16) = 11;
  *(v41 + 19) = 0;
  *v48 = 0;
  v48[1] = 0;

  *(v41 + v45) = 1;
  *(v41 + v46) = 1;
  v49 = v21 + v40 + v88;
  v50 = v85;
  v51 = sub_23DB04C74(0xD00000000000002DLL, 0x800000023DB8CE90);
  v53 = v52;
  *v49 = 0;
  *(v49 + 8) = 0xE000000000000000;
  *(v49 + 17) = 186;
  *(v49 + 19) = 0;
  sub_23DB6EA7C();
  v54 = v12[12];
  *(v49 + v54) = 1;
  v55 = v12[13];
  *(v49 + v55) = 1;
  v82(v49 + v12[14], 1, 1, v47);
  v56 = (v49 + v12[15]);
  *v56 = 0;
  v56[1] = 0;
  *v49 = v51;
  *(v49 + 8) = v53;

  *(v49 + 16) = 5;
  *(v49 + 19) = 0;
  *v56 = 0;
  v56[1] = 0;

  *(v49 + v54) = 1;
  *(v49 + v55) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  v57 = v83;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v57 + v58) = v84;

  [objc_opt_self() getSpeakingRate];
  v60 = v59;
  swift_getKeyPath();
  swift_getKeyPath();
  LODWORD(v89) = v60;

  sub_23DB6EF1C();
  v61 = sub_23DB04C74(0xD00000000000002ALL, 0x800000023DB89E30);
  v63 = v62;
  swift_getKeyPath();
  swift_getKeyPath();
  v89 = v61;
  v90 = v63;

  sub_23DB6EF1C();
  v64 = v50;
  v65 = sub_23DB04C74(0xD000000000000040, 0x800000023DB89E60);
  v67 = v66;
  swift_getKeyPath();
  swift_getKeyPath();
  v89 = v65;
  v90 = v67;

  sub_23DB6EF1C();
  v68 = swift_allocObject();
  swift_weakInit();
  v69 = swift_allocObject();
  *(v69 + 16) = v68;
  *(v69 + 24) = v50;
  v70 = (v57 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v71 = *v70;
  v72 = v70[1];
  *v70 = sub_23DB06D9C;
  v70[1] = v69;
  swift_retain_n();

  sub_23DA18BA0(v71, v72);

  v73 = swift_allocObject();
  swift_weakInit();
  v74 = swift_allocObject();
  *(v74 + 16) = v73;
  *(v74 + 24) = v64;
  v75 = (v57 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v75 = sub_23DB06DA4;
  v75[1] = v74;

  v76 = swift_allocObject();
  swift_weakInit();

  v77 = swift_allocObject();
  *(v77 + 16) = v76;
  *(v77 + 24) = v64;
  v78 = (v57 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v78 = sub_23DB07208;
  v78[1] = v77;

  return v57;
}

uint64_t sub_23DAED5F8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v9);

    if (LOBYTE(v9[0]) == 1)
    {
      v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v10 = *(v2 + v3);
      swift_getKeyPath();
      swift_getKeyPath();

      v4 = sub_23DB6EEFC();
      sub_23DB05F68(&v10, v5);
      v4(v9, 0);

      v6 = v10;
      type metadata accessor for Page.Practice(0);
      sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      *(v2 + v3) = v6;

      if (qword_27E2FBBD0 != -1)
      {
        swift_once();
      }

      v7 = *(qword_27E30A6A8 + 32);
      swift_beginAccess();
      v8 = *(v7 + 40);
      swift_getKeyPath();
      swift_getKeyPath();
      LODWORD(v10) = v8;
      return sub_23DB6EF1C();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_23DAED874(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = (result + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v4 = *v2;
    v3 = v2[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(&v13);

    v5 = v13;
    v6 = v14;
    UIAccessibilityPostNotification(0x438u, 0);
    v7 = MEMORY[0x277D764B0];
    sub_23DB05C14(v4, v3, MEMORY[0x277D764B0]);

    sub_23DB05C14(v5, v6, v7);

    [objc_opt_self() getSpeakingRate];
    v9 = v8;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v13);

    if (v9 == *&v13)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *&v13 = v9;

      sub_23DB6EF1C();
      v10 = sub_23DB04C74(0xD00000000000002ELL, 0x800000023DB8CEC0);
      v12 = v11;
      swift_getKeyPath();
      swift_getKeyPath();
      v13 = v10;
      v14 = v12;
      return sub_23DB6EF1C();
    }
  }

  return result;
}

uint64_t sub_23DAEDAC0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v47 = (&v37 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v37 - v8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    v12 = result;
    swift_beginAccess();
    v45 = v11;
    v13 = *(v12 + v11);
    KeyPath = swift_getKeyPath();
    v15 = swift_getKeyPath();

    v43 = v15;
    v44 = KeyPath;
    v42 = sub_23DB6EEFC();
    v40 = v16;
    v17 = swift_getKeyPath();
    v18 = swift_getKeyPath();
    v46 = v12;
    v41 = v17;
    v39 = v18;
    v38 = sub_23DB6EEFC();
    v37 = v19;

    v20 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_3:
    v21 = 0;
    v22 = (v2 + 7);
    v48 = v13;
    v23 = *(v13 + 16);
    v2 += 6;
    v24 = &qword_27E2FE1C8;
    if (!v23)
    {
LABEL_4:
      v25 = 1;
      v21 = v23;
      goto LABEL_7;
    }

    while (1)
    {
      v13 = v9;
      v9 = v2;
      v2 = v22;
      v26 = v23;
      v27 = v20;
      v28 = v24;
      v29 = v48;
      if (v21 >= *(v48 + 16))
      {
        goto LABEL_16;
      }

      v30 = *(type metadata accessor for CommandToPractice(0) - 8);
      v49 = v21 + 1;
      v31 = v29 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v21;
      v32 = *(v1 + 48);
      v33 = v47;
      *v47 = v21;
      sub_23DB06674(v31, v33 + v32, type metadata accessor for CommandToPractice);
      sub_23DA17A54(v33, v6, &qword_27E2FE1C0, &qword_23DB7A440);
      v25 = 0;
      v21 = v49;
      v24 = v28;
      v20 = v27;
      v23 = v26;
      v22 = v2;
      v2 = v9;
      v9 = v13;
LABEL_7:
      (*v22)(v6, v25, 1, v1);
      sub_23DA17A54(v6, v9, v24, &qword_23DB7A448);
      if ((*v2)(v9, 1, v1) == 1)
      {
        break;
      }

      v13 = *v9;
      if ((*v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        v20 = sub_23DAC8B24(v13);
        goto LABEL_3;
      }

      if (v13 >= v20[2])
      {
        goto LABEL_15;
      }

      v34 = *(type metadata accessor for CommandToPractice(0) - 8);
      v35 = v20 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v13;
      *(v35 + 18) = 0;
      *(v35 + 19) = v13 == 0;
      sub_23DB0672C(v9 + *(v1 + 48), type metadata accessor for CommandToPractice);
      if (v21 == v23)
      {
        goto LABEL_4;
      }
    }

    *v37 = 0;
    *v40 = 0;
    v38(v50, 0);

    v42(v51, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
    v36 = v46;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    *(v36 + v45) = v20;
  }

  return result;
}

uint64_t sub_23DAEE054()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v107 = *(v1 - 8);
  v108 = v1;
  MEMORY[0x28223BE20](v1);
  v106 = &v81 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v104 = *(v3 - 8);
  v105 = v3;
  MEMORY[0x28223BE20](v3);
  v102 = &v81 - v4;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v93 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v92 = &v81 - v5;
  *&v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v85 = &v81 - v6;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v81 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v81 - v10;
  v12 = sub_23DB6EA8C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v96 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v81 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v81 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v81 - v22;
  v95 = sub_23DB04C74(0xD000000000000021, 0x800000023DB88750);
  v94 = v24;
  v109 = v0;
  v91 = sub_23DB04C74(0xD000000000000024, 0x800000023DB8CDA0);
  v90 = v25;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOSingleGesture(0);
  v26 = swift_allocObject();
  v100 = v13;
  v27 = *(v13 + 16);
  v97 = v23;
  v27(v20, v23, v12);
  v99 = v17;
  v98 = v20;
  v101 = v12;
  v87 = v13 + 16;
  v86 = v27;
  v27(v17, v20, v12);
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v110) = 0;
  sub_23DB6EECC();
  v29 = *(v9 + 32);
  v30 = v8;
  v29(v26 + v28, v11, v8);
  v31 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v32 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v32 = MEMORY[0x277D84FA0];
  }

  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v32;
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v110 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v34 = v82;
  sub_23DB6EECC();
  (*(v83 + 32))(v26 + v33, v34, v84);
  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v31;
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v110 = 0;
  v36 = v85;
  sub_23DB6EECC();
  (*(v88 + 32))(v26 + v35, v36, v89);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v110) = 0;
  sub_23DB6EECC();
  v29(v26 + v37, v11, v8);
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v89 = xmmword_23DB74320;
  v110 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v39 = v92;
  sub_23DB6EECC();
  v40 = *(v93 + 4);
  v93 = v29;
  v41 = v103;
  v40(v26 + v38, v39, v103);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v110 = v89;
  sub_23DB6EECC();
  v40(v26 + v42, v39, v41);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v110) = 0;
  sub_23DB6EECC();
  v93(v26 + v43, v11, v30);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v110 = 0;
  *(&v110 + 1) = 0xE000000000000000;
  v45 = v102;
  sub_23DB6EECC();
  (*(v104 + 32))(v26 + v44, v45, v105);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v110 = 0uLL;
  sub_23DB6EECC();
  v40(v26 + v46, v39, v41);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v110 = nullsub_1;
  *(&v110 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v48 = v106;
  sub_23DB6EECC();
  (*(v107 + 32))(v26 + v47, v48, v108);
  v49 = v96;
  v50 = v99;
  v51 = v101;
  v86(v96, v99, v101);
  v52 = Page.init(id:title:text:subPages:iconName:)(v49, v95, v94, v91, v90, MEMORY[0x277D84F90], 0, 0);
  v53 = *(v100 + 8);
  v53(v50, v51);
  v53(v98, v51);
  v53(v97, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v54 = (type metadata accessor for CommandToPractice(0) - 8);
  v55 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_23DB73BA0;
  v57 = v56 + v55;

  v58 = sub_23DB04C74(0xD000000000000027, 0x800000023DB8CDD0);
  v60 = v59;
  *v57 = 0;
  *(v57 + 8) = 0xE000000000000000;
  *(v57 + 17) = 186;
  *(v57 + 19) = 0;
  sub_23DB6EA7C();
  v61 = v54[12];
  *(v57 + v61) = 1;
  v62 = v54[13];
  *(v57 + v62) = 1;
  v63 = v54[14];
  v64 = type metadata accessor for KeyboardKey(0);
  (*(*(v64 - 8) + 56))(v57 + v63, 1, 1, v64);
  v65 = (v57 + v54[15]);
  *v65 = 0;
  v65[1] = 0;
  *v57 = v58;
  *(v57 + 8) = v60;

  *(v57 + 16) = 2312;
  *(v57 + 19) = 1;
  *(v57 + v61) = 1;
  *(v57 + v62) = 1;
  *v65 = 0;
  v65[1] = 0;

  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v52 + v66) = v56;

  v67 = swift_allocObject();
  swift_weakInit();
  v68 = swift_allocObject();
  v69 = v109;
  swift_weakInit();
  v70 = swift_allocObject();
  *(v70 + 16) = v67;
  *(v70 + 24) = v68;
  v71 = (v52 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v72 = *v71;
  v73 = v71[1];
  *v71 = sub_23DB06C9C;
  v71[1] = v70;
  swift_retain_n();

  sub_23DA18BA0(v72, v73);

  v74 = swift_allocObject();
  swift_weakInit();
  v75 = swift_allocObject();
  *(v75 + 16) = v74;
  *(v75 + 24) = v69;
  v76 = (v52 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v76 = sub_23DB06CA4;
  v76[1] = v75;

  v77 = swift_allocObject();
  swift_weakInit();

  v78 = swift_allocObject();
  *(v78 + 16) = v77;
  *(v78 + 24) = v69;
  v79 = (v52 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v79 = sub_23DB071FC;
  v79[1] = v78;

  return v52;
}

size_t sub_23DAEEDC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = result;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(v10);

  if ((v10[0] & 1) == 0)
  {
  }

  v4 = sub_23DB04C74(0xD000000000000031, 0x800000023DB88190);
  v6 = v5;
  v7 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v8 = *(v3 + v7);

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (*(v8 + 2))
    {
LABEL_6:
      v9 = *(type metadata accessor for CommandToPractice(0) - 8);
      sub_23DB0496C(&v8[(*(v9 + 80) + 32) & ~*(v9 + 80)], v4, v6);

      type metadata accessor for Page.Practice(0);
      sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      *(v3 + v7) = v8;
    }
  }

  else
  {
    result = sub_23DAC8B24(v8);
    v8 = result;
    if (*(result + 16))
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23DAEF010(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (qword_27E2FBBD0 != -1)
    {
      swift_once();
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v3 = objc_opt_self();
      v4 = sub_23DB7087C();
      [v3 triggerEventCommand_];
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v5 = objc_opt_self();
      v6 = sub_23DB7087C();
      [v5 triggerEventCommand_];
    }

    v7 = (v2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v9 = *v7;
    v8 = v7[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v13);

    v10 = v13[0];
    v11 = v13[1];
    UIAccessibilityPostNotification(0x438u, 0);
    v12 = MEMORY[0x277D764B0];
    sub_23DB05C14(v9, v8, MEMORY[0x277D764B0]);

    sub_23DB05C14(v10, v11, v12);
  }

  return result;
}

uint64_t sub_23DAEF20C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v127 = *(v1 - 8);
  v128 = v1;
  MEMORY[0x28223BE20](v1);
  v126 = &v102 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v124 = *(v3 - 8);
  v125 = v3;
  MEMORY[0x28223BE20](v3);
  v122 = &v102 - v4;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v120 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v117 = &v102 - v5;
  *&v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v102 - v6;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v102 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v102 - v10;
  v12 = sub_23DB6EA8C();
  v130 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v115 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v102 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v102 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v102 - v21;
  v114 = sub_23DB04C74(0xD000000000000023, 0x800000023DB8CB60);
  v113 = v23;
  v131 = v0;
  v112 = sub_23DB04C74(0xD000000000000022, 0x800000023DB8CB90);
  v111 = v24;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOOnlyCommands(0);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeVOOnlyCommands__showRetryPractice;
  LOBYTE(v133) = 0;
  sub_23DB6EECC();
  v27 = *(v9 + 32);
  v27(v25 + v26, v11, v8);
  v28 = v130 + 16;
  v29 = *(v130 + 16);
  v116 = v22;
  v29(v19, v22, v12);
  v119 = v16;
  v118 = v19;
  v121 = v12;
  v107 = v28;
  v106 = v29;
  v29(v16, v19, v12);
  v30 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v133) = 0;
  sub_23DB6EECC();
  v31 = v11;
  v129 = v8;
  v27(v25 + v30, v11, v8);
  v32 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v33 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v33 = MEMORY[0x277D84FA0];
  }

  *(v25 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v33;
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v133 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v35 = v103;
  sub_23DB6EECC();
  (*(v104 + 32))(v25 + v34, v35, v105);
  *(v25 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v32;
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v133 = 0;
  v37 = v108;
  sub_23DB6EECC();
  (*(v109 + 32))(v25 + v36, v37, v110);
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v133) = 0;
  sub_23DB6EECC();
  v27(v25 + v38, v11, v129);
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v110 = xmmword_23DB74320;
  v133 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v40 = v117;
  sub_23DB6EECC();
  v41 = *(v120 + 32);
  v42 = v123;
  v41(v25 + v39, v40, v123);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v133 = v110;
  sub_23DB6EECC();
  v41(v25 + v43, v40, v42);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v133) = 0;
  sub_23DB6EECC();
  v27(v25 + v44, v31, v129);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v133 = 0;
  *(&v133 + 1) = 0xE000000000000000;
  v46 = v122;
  sub_23DB6EECC();
  (*(v124 + 32))(v25 + v45, v46, v125);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v133 = 0uLL;
  sub_23DB6EECC();
  v41(v25 + v47, v40, v42);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v133 = nullsub_1;
  *(&v133 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v49 = v126;
  sub_23DB6EECC();
  (*(v127 + 32))(v25 + v48, v49, v128);
  v50 = v115;
  v51 = v119;
  v52 = v121;
  v106(v115, v119, v121);
  v53 = Page.init(id:title:text:subPages:iconName:)(v50, v114, v113, v112, v111, MEMORY[0x277D84F90], 0, 0);
  v54 = *(v130 + 8);
  v54(v51, v52);
  v54(v118, v52);
  v54(v116, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v55 = (type metadata accessor for CommandToPractice(0) - 8);
  v56 = *(*v55 + 72);
  v57 = (*(*v55 + 80) + 32) & ~*(*v55 + 80);
  v127 = 2 * v56;
  v58 = swift_allocObject();
  v128 = v58;
  *(v58 + 16) = xmmword_23DB76A80;
  v59 = v58 + v57;

  v124 = sub_23DB04C74(0xD000000000000024, 0x800000023DB8CBC0);
  v123 = v60;
  v61 = sub_23DB04C74(0xD000000000000029, 0x800000023DB8CBF0);
  v125 = v62;
  *v59 = 0;
  *(v59 + 8) = 0xE000000000000000;
  *(v59 + 17) = 186;
  *(v59 + 19) = 0;
  sub_23DB6EA7C();
  v63 = v55[12];
  *(v59 + v63) = 1;
  v64 = v55[13];
  *(v59 + v64) = 1;
  v65 = v55[14];
  v66 = type metadata accessor for KeyboardKey(0);
  v67 = *(v66 - 8);
  v129 = *(v67 + 56);
  v130 = v67 + 56;
  v126 = v66;
  v129(v59 + v65, 1, 1, v66);
  v68 = (v59 + v55[15]);
  *v68 = 0;
  v68[1] = 0;
  v69 = v123;
  *v59 = v124;
  *(v59 + 8) = v69;

  *(v59 + 16) = 2312;
  *(v59 + 19) = 1;
  *(v59 + v63) = 1;
  *(v59 + v64) = 1;
  v70 = v125;
  *v68 = v61;
  v68[1] = v70;

  v71 = v59 + v56;
  v72 = sub_23DB04C74(0xD000000000000024, 0x800000023DB8CC20);
  v125 = v73;
  v124 = sub_23DB04C74(0xD000000000000029, 0x800000023DB8CC50);
  v75 = v74;
  *v71 = 0;
  *(v71 + 8) = 0xE000000000000000;
  *(v71 + 17) = 186;
  *(v71 + 19) = 0;
  sub_23DB6EA7C();
  v76 = v55[12];
  *(v71 + v76) = 1;
  v77 = v55[13];
  *(v71 + v77) = 1;
  v129(v71 + v55[14], 1, 1, v66);
  v78 = (v71 + v55[15]);
  *v78 = 0;
  v78[1] = 0;
  v79 = v125;
  *v71 = v72;
  *(v71 + 8) = v79;

  *(v71 + 16) = 10;
  *(v71 + 19) = 0;
  *v78 = v124;
  v78[1] = v75;

  *(v71 + v76) = 1;
  *(v71 + v77) = 1;
  v80 = v59 + v127;
  v81 = sub_23DB04C74(0xD000000000000024, 0x800000023DB8CC80);
  v83 = v82;
  v84 = sub_23DB04C74(0xD000000000000029, 0x800000023DB8CCB0);
  v86 = v85;
  *v80 = 0;
  *(v80 + 8) = 0xE000000000000000;
  *(v80 + 17) = 186;
  *(v80 + 19) = 0;
  sub_23DB6EA7C();
  v87 = v55[12];
  *(v80 + v87) = 1;
  v88 = v55[13];
  *(v80 + v88) = 1;
  v129(v80 + v55[14], 1, 1, v126);
  v89 = (v80 + v55[15]);
  *v89 = 0;
  v89[1] = 0;
  *v80 = v81;
  *(v80 + 8) = v83;

  *(v80 + 16) = 11;
  *(v80 + 19) = 0;
  *v89 = v84;
  v89[1] = v86;

  *(v80 + v87) = 1;
  *(v80 + v88) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v90 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v53 + v90) = v128;

  swift_getKeyPath();
  swift_getKeyPath();
  v132[0] = 1;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  v132[0] = 1;

  sub_23DB6EF1C();
  v91 = swift_allocObject();
  swift_weakInit();
  v92 = swift_allocObject();
  v93 = v131;
  *(v92 + 16) = v91;
  *(v92 + 24) = v93;
  v94 = (v53 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v95 = *v94;
  v96 = v94[1];
  *v94 = sub_23DB071F8;
  v94[1] = v92;
  swift_retain_n();

  sub_23DA18BA0(v95, v96);

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  *(v98 + 16) = v97;
  *(v98 + 24) = v93;
  v99 = (v53 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v99 = sub_23DB06C94;
  v99[1] = v98;

  swift_weakInit();

  swift_weakDestroy();
  v100 = (v53 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v100 = sub_23DA9E5CC;
  v100[1] = 0;

  return v53;
}

void *sub_23DAF0208(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v67 = (&v57 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v57 - v8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v68 = v2;
  if (qword_27E2FBBD0 != -1)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v51 = objc_opt_self();
    v52 = sub_23DB7087C();
    [v51 triggerEventCommand_];

    if (!UIAccessibilityIsVoiceOverRunning())
    {
LABEL_5:
      if (!UIAccessibilityIsVoiceOverRunning())
      {
        goto LABEL_6;
      }

LABEL_23:
      v55 = objc_opt_self();
      v56 = sub_23DB7087C();
      [v55 triggerEventCommand_];

      if (!UIAccessibilityIsVoiceOverRunning())
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if (!UIAccessibilityIsVoiceOverRunning())
  {
    goto LABEL_5;
  }

  v53 = objc_opt_self();
  v54 = sub_23DB7087C();
  [v53 triggerEventCommand_];

  if (UIAccessibilityIsVoiceOverRunning())
  {
    goto LABEL_23;
  }

LABEL_6:
  if (UIAccessibilityIsVoiceOverRunning())
  {
LABEL_7:
    v12 = objc_opt_self();
    v13 = sub_23DB7087C();
    [v12 triggerEventCommand_];
  }

LABEL_8:
  v14 = (v11 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  swift_beginAccess();
  v16 = *v14;
  v15 = v14[1];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(v70);

  v17 = v70[0];
  v18 = v70[1];
  UIAccessibilityPostNotification(0x438u, 0);
  v19 = v11;
  v20 = MEMORY[0x277D764B0];
  sub_23DB05C14(v16, v15, MEMORY[0x277D764B0]);

  sub_23DB05C14(v17, v18, v20);

  v21 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v65 = v21;
  v22 = *(v19 + v21);
  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();

  v64 = KeyPath;
  v63 = v24;
  v62 = sub_23DB6EEFC();
  v60 = v25;
  v26 = swift_getKeyPath();
  v27 = swift_getKeyPath();
  v66 = v19;
  v61 = v26;
  v59 = v27;
  v58 = sub_23DB6EEFC();
  v57 = v28;

  v11 = v22;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_23DAC8B24(v22);
  }

  v29 = 0;
  v30 = (v68 + 56);
  v31 = v22[2];
  v32 = (v68 + 48);
  if (!v31)
  {
LABEL_11:
    v33 = 1;
    v29 = v31;
    goto LABEL_14;
  }

  while (1)
  {
    if (v29 >= v22[2])
    {
      goto LABEL_27;
    }

    v34 = *(type metadata accessor for CommandToPractice(0) - 8);
    v68 = v29 + 1;
    v35 = v22 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v29;
    v36 = *(v1 + 48);
    v37 = v32;
    v38 = v30;
    v39 = v31;
    v40 = v9;
    v41 = v11;
    v42 = v1;
    v43 = v6;
    v44 = v22;
    v45 = v67;
    *v67 = v29;
    sub_23DB06674(v35, v45 + v36, type metadata accessor for CommandToPractice);
    v46 = v45;
    v22 = v44;
    v6 = v43;
    v1 = v42;
    v11 = v41;
    v9 = v40;
    v31 = v39;
    v30 = v38;
    v32 = v37;
    sub_23DA17A54(v46, v6, &qword_27E2FE1C0, &qword_23DB7A440);
    v33 = 0;
    v29 = v68;
LABEL_14:
    (*v30)(v6, v33, 1, v1);
    sub_23DA17A54(v6, v9, &qword_27E2FE1C8, &qword_23DB7A448);
    if ((*v32)(v9, 1, v1) == 1)
    {
      break;
    }

    v47 = *v9;
    if ((*v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      swift_once();
      goto LABEL_3;
    }

    if (v47 >= v11[2])
    {
      goto LABEL_26;
    }

    v48 = *(type metadata accessor for CommandToPractice(0) - 8);
    v49 = v11 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v47;
    *(v49 + 18) = 0;
    *(v49 + 19) = v47 == 0;
    sub_23DB0672C(v9 + *(v1 + 48), type metadata accessor for CommandToPractice);
    if (v29 == v31)
    {
      goto LABEL_11;
    }
  }

  *v57 = 0;
  *v60 = 0;
  v58(v69, 0);

  v62(v70, 0);

  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  v50 = v66;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  *(v50 + v65) = v11;

  swift_beginAccess();
  byte_27E2FE958 = (byte_27E2FE958 & 1) == 0;
}

char *sub_23DAF0A44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v152 = *(v1 - 8);
  v153 = v1;
  MEMORY[0x28223BE20](v1);
  v151 = v126 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v149 = *(v3 - 8);
  v150 = v3;
  MEMORY[0x28223BE20](v3);
  v146 = v126 - v4;
  *&v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v139 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v136 = v126 - v5;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v131 = v126 - v6;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v7 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v9 = v126 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v126 - v12;
  v14 = sub_23DB6EA8C();
  v155 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v145 = v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v154 = v126 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v126 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v126 - v22;
  v138 = sub_23DB04C74(0xD000000000000020, 0x800000023DB88450);
  v137 = v24;
  v156 = v0;
  v135 = sub_23DB04C74(0xD000000000000023, 0x800000023DB8CB00);
  v134 = v25;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeUneditableTextVO(0);
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeUneditableTextVO__exampleText;
  *&v157 = 0;
  *(&v157 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v28 = *(v11 + 32);
  v140 = v13;
  v143 = v10;
  v142 = v11 + 32;
  v128 = v28;
  v28(v26 + v27, v13, v10);
  v29 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page24PracticeUneditableTextVO__showRetryPractice;
  LOBYTE(v157) = 1;
  sub_23DB6EECC();
  v32 = *(v7 + 32);
  v30 = v7 + 32;
  v31 = v32;
  v33 = v127;
  v32(v26 + v29, v9, v127);
  v34 = v155 + 16;
  v35 = *(v155 + 16);
  v144 = v23;
  v35(v20, v23, v14);
  v147 = v20;
  v148 = v14;
  v130 = v34;
  v129 = v35;
  v35(v154, v20, v14);
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v157) = 0;
  sub_23DB6EECC();
  v37 = v9;
  v38 = v33;
  v32(v26 + v36, v9, v33);
  v39 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v40 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v40 = MEMORY[0x277D84FA0];
  }

  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v40;
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v157 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v42 = v39;
  v43 = v131;
  sub_23DB6EECC();
  (*(v132 + 32))(v26 + v41, v43, v133);
  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v42;
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v157 = 0;
  v45 = v136;
  sub_23DB6EECC();
  (*(v139 + 32))(v26 + v44, v45, v141);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v157) = 0;
  v47 = v37;
  sub_23DB6EECC();
  v126[1] = v30;
  v31(v26 + v46, v37, v33);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v141 = xmmword_23DB74320;
  v157 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v49 = v146;
  sub_23DB6EECC();
  v50 = v150;
  v51 = *(v149 + 32);
  v51(v26 + v48, v49, v150);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v157 = v141;
  sub_23DB6EECC();
  v51(v26 + v52, v49, v50);
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v157) = 0;
  sub_23DB6EECC();
  v31(v26 + v53, v47, v38);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v157 = 0;
  *(&v157 + 1) = 0xE000000000000000;
  v55 = v140;
  sub_23DB6EECC();
  v128(v26 + v54, v55, v143);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v157 = 0uLL;
  sub_23DB6EECC();
  v51(v26 + v56, v49, v50);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v157 = nullsub_1;
  *(&v157 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v58 = v151;
  sub_23DB6EECC();
  (*(v152 + 32))(v26 + v57, v58, v153);
  v59 = v145;
  v60 = v154;
  v61 = v148;
  v129(v145, v154, v148);
  v62 = Page.init(id:title:text:subPages:iconName:)(v59, v138, v137, v135, v134, MEMORY[0x277D84F90], 0, 0);
  v63 = *(v155 + 8);
  v63(v144, v61);
  v63(v60, v61);
  v63(v147, v61);
  v64 = sub_23DB04C74(0xD000000000000026, 0x800000023DB8CB30);
  v66 = v65;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v157 = v64;
  *(&v157 + 1) = v66;

  v151 = v62;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v157) = 1;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v67 = (type metadata accessor for CommandToPractice(0) - 8);
  v68 = *v67;
  v155 = *(*v67 + 72);
  v69 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_23DB7A0B0;
  v71 = v70;
  v152 = v70;
  v72 = [objc_opt_self() currentDevice];
  v73 = [v72 userInterfaceIdiom];

  v74 = "tutorial.vo.magicTap.text";
  if (v73)
  {
    v75 = 0xD00000000000001DLL;
  }

  else
  {
    v74 = "cTap.button.play";
    v75 = 0xD00000000000001FLL;
  }

  v76 = sub_23DB04C74(v75, v74 | 0x8000000000000000);
  v78 = v77;
  v79 = v71 + v69;
  *v79 = 0;
  *(v79 + 8) = 0xE000000000000000;
  *(v79 + 17) = 186;
  *(v79 + 19) = 0;
  sub_23DB6EA7C();
  v80 = v67[12];
  *(v79 + v80) = 1;
  v81 = v67[13];
  *(v79 + v81) = 1;
  v82 = v67[14];
  v83 = type metadata accessor for KeyboardKey(0);
  v84 = *(v83 - 8);
  v153 = *(v84 + 56);
  v85 = (v84 + 56);
  v150 = v83;
  v153(v79 + v82, 1, 1, v83);
  v154 = v85;
  v86 = (v79 + v67[15]);
  *v86 = 0;
  v86[1] = 0;
  *v79 = v76;
  *(v79 + 8) = v78;

  *(v79 + 16) = 62;
  *(v79 + 19) = 1;
  *v86 = 0;
  v86[1] = 0;

  *(v79 + v80) = 1;
  *(v79 + v81) = 1;
  v87 = v155;
  v88 = v79 + v155;
  v89 = sub_23DB04C74(0xD000000000000025, 0x800000023DB88620);
  v91 = v90;
  *v88 = 0;
  *(v88 + 8) = 0xE000000000000000;
  *(v88 + 17) = 186;
  *(v88 + 19) = 0;
  sub_23DB6EA7C();
  v92 = v67[12];
  *(v88 + v92) = 1;
  v93 = v67[13];
  *(v88 + v93) = 1;
  v94 = v83;
  v95 = v153;
  v153(v88 + v67[14], 1, 1, v94);
  v96 = (v88 + v67[15]);
  *v96 = 0;
  v96[1] = 0;
  *v88 = v89;
  *(v88 + 8) = v91;

  *(v88 + 16) = 2312;
  *(v88 + 19) = 0;
  *(v88 + v92) = 0;
  *(v88 + v93) = 1;
  *v96 = 0;
  v96[1] = 0;

  v97 = 2 * v87;
  v98 = v79 + 2 * v87;
  v99 = sub_23DB04C74(0xD000000000000025, 0x800000023DB88650);
  v101 = v100;
  *v98 = 0;
  *(v98 + 8) = 0xE000000000000000;
  *(v98 + 17) = 186;
  *(v98 + 19) = 0;
  sub_23DB6EA7C();
  v102 = v67[12];
  *(v98 + v102) = 1;
  v103 = v67[13];
  *(v98 + v103) = 1;
  v104 = v150;
  v95(v98 + v67[14], 1, 1, v150);
  v105 = (v98 + v67[15]);
  *v105 = 0;
  v105[1] = 0;
  *v98 = v99;
  *(v98 + 8) = v101;

  *(v98 + 16) = 12;
  *(v98 + 19) = 0;
  *v105 = 0;
  v105[1] = 0;

  *(v98 + v102) = 1;
  *(v98 + v103) = 1;
  v106 = v156;
  v107 = v79 + v97 + v155;
  v108 = sub_23DB04C74(0xD000000000000025, 0x800000023DB88680);
  v110 = v109;
  *v107 = 0;
  *(v107 + 8) = 0xE000000000000000;
  *(v107 + 17) = 186;
  *(v107 + 19) = 0;
  sub_23DB6EA7C();
  v111 = v67[12];
  *(v107 + v111) = 1;
  v112 = v67[13];
  *(v107 + v112) = 1;
  v153(v107 + v67[14], 1, 1, v104);
  v113 = (v107 + v67[15]);
  *v113 = 0;
  v113[1] = 0;
  *v107 = v108;
  *(v107 + 8) = v110;

  *(v107 + 16) = 10;
  *(v107 + 19) = 0;
  *v113 = 0;
  v113[1] = 0;

  *(v107 + v111) = 1;
  *(v107 + v112) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  v114 = v151;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v115 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *&v114[v115] = v152;

  v116 = swift_allocObject();
  swift_weakInit();
  v117 = swift_allocObject();
  *(v117 + 16) = v116;
  *(v117 + 24) = v106;
  v118 = &v114[OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState];
  swift_beginAccess();
  v119 = *v118;
  v120 = v118[1];
  *v118 = sub_23DB06C20;
  v118[1] = v117;
  swift_retain_n();

  sub_23DA18BA0(v119, v120);

  v121 = swift_allocObject();
  swift_weakInit();
  v122 = swift_allocObject();
  *(v122 + 16) = v121;
  *(v122 + 24) = v106;
  v123 = &v114[OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction];
  swift_beginAccess();
  *v123 = sub_23DB06C3C;
  v123[1] = v122;

  swift_weakInit();

  swift_weakDestroy();
  v124 = &v114[OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction];
  swift_beginAccess();
  *v124 = sub_23DA9E5CC;
  *(v124 + 1) = 0;

  return v114;
}

uint64_t sub_23DAF1B70(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v58 = (&v48 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v48 - v8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = (result + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    v12 = result;
    swift_beginAccess();
    v14 = *v11;
    v13 = v11[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v61);

    v15 = v61[0];
    v16 = v61[1];
    UIAccessibilityPostNotification(0x438u, 0);
    v17 = MEMORY[0x277D764B0];
    sub_23DB05C14(v14, v13, MEMORY[0x277D764B0]);

    sub_23DB05C14(v15, v16, v17);

    v18 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v56 = v18;
    v19 = *(v12 + v18);
    KeyPath = swift_getKeyPath();
    v21 = swift_getKeyPath();

    v55 = KeyPath;
    v54 = v21;
    v53 = sub_23DB6EEFC();
    v51 = v22;
    v23 = swift_getKeyPath();
    v24 = swift_getKeyPath();
    v57 = v12;
    v52 = v23;
    v50 = v24;
    v49 = sub_23DB6EEFC();
    v48 = v25;

    v26 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_3:
    v27 = 0;
    v28 = (v2 + 7);
    v29 = v19[2];
    v2 += 6;
    if (!v29)
    {
LABEL_4:
      v30 = 1;
      v27 = v29;
      goto LABEL_7;
    }

    while (1)
    {
      if (v27 >= v19[2])
      {
        goto LABEL_16;
      }

      v31 = *(type metadata accessor for CommandToPractice(0) - 8);
      v59 = v27 + 1;
      v32 = v19 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27;
      v33 = *(v1 + 48);
      v34 = v2;
      v35 = v28;
      v36 = v9;
      v37 = v29;
      v38 = v1;
      v39 = v26;
      v40 = v6;
      v41 = v19;
      v42 = v58;
      *v58 = v27;
      sub_23DB06674(v32, v42 + v33, type metadata accessor for CommandToPractice);
      v43 = v42;
      v19 = v41;
      v6 = v40;
      v26 = v39;
      v1 = v38;
      v29 = v37;
      v9 = v36;
      v28 = v35;
      v2 = v34;
      sub_23DA17A54(v43, v6, &qword_27E2FE1C0, &qword_23DB7A440);
      v30 = 0;
      v27 = v59;
LABEL_7:
      (*v28)(v6, v30, 1, v1);
      sub_23DA17A54(v6, v9, &qword_27E2FE1C8, &qword_23DB7A448);
      if ((*v2)(v9, 1, v1) == 1)
      {
        break;
      }

      v44 = *v9;
      if ((*v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        v26 = sub_23DAC8B24(v19);
        goto LABEL_3;
      }

      if (v44 >= v26[2])
      {
        goto LABEL_15;
      }

      v45 = *(type metadata accessor for CommandToPractice(0) - 8);
      v46 = v26 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v44;
      *(v46 + 18) = 0;
      *(v46 + 19) = v44 == 0;
      sub_23DB0672C(v9 + *(v1 + 48), type metadata accessor for CommandToPractice);
      if (v27 == v29)
      {
        goto LABEL_4;
      }
    }

    *v48 = 0;
    *v51 = 0;
    v49(v60, 0);

    v53(v61, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
    v47 = v57;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    *(v47 + v56) = v26;

    swift_beginAccess();
    byte_27E2FE958 = (byte_27E2FE958 & 1) == 0;
  }

  return result;
}

uint64_t sub_23DAF2214()
{
  v1 = v0;
  v2 = type metadata accessor for ButtonWithIconAndLabel(0);
  v4 = (v2 - 8);
  v111 = *(v2 - 8);
  v3 = v111;
  MEMORY[0x28223BE20](v2);
  v112 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v101 - v7;
  v9 = sub_23DB6EA8C();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = 0xD00000000000001FLL;
  v12 = sub_23DB04C74(0xD00000000000001FLL, 0x800000023DB892D0);
  v14 = v13;
  v15 = sub_23DB04C74(0xD000000000000022, 0x800000023DB8CA40);
  v17 = v16;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOCustomAction(0);
  swift_allocObject();
  v18 = sub_23DA3432C(v11, v12, v14, v15, v17, MEMORY[0x277D84F90], 0, 0);

  v19 = sub_23DB04C74(0xD000000000000020, 0x800000023DB88020);
  v21 = v20;
  swift_getKeyPath();
  swift_getKeyPath();
  v113[0] = v19;
  v113[1] = v21;

  sub_23DB6EF1C();
  v22 = sub_23DB04C74(0xD000000000000026, 0x800000023DB89320);
  v24 = v23;
  swift_getKeyPath();
  swift_getKeyPath();
  v113[0] = v22;
  v113[1] = v24;

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  strcpy(v113, "speaker.wave.3");
  HIBYTE(v113[1]) = -18;

  sub_23DB6EF1C();
  v25 = sub_23DB04C74(0xD000000000000023, 0x800000023DB89350);
  v27 = v26;

  v28 = v8;
  sub_23DB6EA7C();
  v29 = &v8[v4[7]];
  *v29 = v25;
  v29[1] = v27;
  *&v8[v4[8]] = xmmword_23DB7A0E0;
  v30 = &v8[v4[9]];
  v107 = v8;
  *v30 = sub_23DB06A8C;
  v30[1] = v1;
  v31 = sub_23DB04C74(0xD000000000000023, 0x800000023DB89380);
  v33 = v32;
  v34 = swift_allocObject();
  *(v34 + 16) = v1;
  *(v34 + 24) = v18;
  v35 = v18;

  v36 = v1;

  v37 = v112;
  sub_23DB6EA7C();
  v38 = (v37 + v4[7]);
  *v38 = v31;
  v38[1] = v33;
  *(v37 + v4[8]) = xmmword_23DB7A0F0;
  v39 = (v37 + v4[9]);
  *v39 = sub_23DB06A94;
  v39[1] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1E8, &qword_23DB7A7B0);
  v40 = *(v3 + 72);
  v41 = (*(v111 + 80) + 32) & ~*(v111 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_23DB78D60;
  v106 = type metadata accessor for ButtonWithIconAndLabel;
  sub_23DB06674(v28, v42 + v41, type metadata accessor for ButtonWithIconAndLabel);
  sub_23DB06674(v37, v42 + v41 + v40, type metadata accessor for ButtonWithIconAndLabel);
  swift_getKeyPath();
  swift_getKeyPath();
  v113[0] = v42;
  v105 = v35;

  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v43 = (type metadata accessor for CommandToPractice(0) - 8);
  v44 = *v43;
  v111 = *(*v43 + 72);
  v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_23DB7A0B0;
  v47 = v46;
  v104 = v46;
  v48 = [objc_opt_self() currentDevice];
  v49 = [v48 userInterfaceIdiom];

  v50 = "tutorial.vo.magicTap.text";
  if (v49)
  {
    v51 = 0xD00000000000001DLL;
  }

  else
  {
    v50 = "cTap.button.play";
    v51 = v110;
  }

  v108 = v36;
  v52 = sub_23DB04C74(v51, v50 | 0x8000000000000000);
  v54 = v53;
  v55 = v47 + v45;
  *v55 = 0;
  *(v55 + 8) = 0xE000000000000000;
  *(v55 + 17) = 186;
  *(v55 + 19) = 0;
  sub_23DB6EA7C();
  v56 = v43[12];
  *(v55 + v56) = 1;
  v57 = v43[13];
  *(v55 + v57) = 1;
  v58 = v43[14];
  v59 = type metadata accessor for KeyboardKey(0);
  v60 = *(v59 - 8);
  v109 = *(v60 + 56);
  v110 = v60 + 56;
  v109(v55 + v58, 1, 1, v59);
  v61 = (v55 + v43[15]);
  *v61 = 0;
  v61[1] = 0;
  *v55 = v52;
  *(v55 + 8) = v54;

  *(v55 + 16) = 62;
  *(v55 + 19) = 1;
  *v61 = 0;
  v61[1] = 0;

  *(v55 + v56) = 1;
  *(v55 + v57) = 1;
  v62 = v111;
  v63 = v55 + v111;
  v64 = sub_23DB04C74(0xD000000000000028, 0x800000023DB8CA70);
  v102 = v65;
  *v63 = 0;
  *(v63 + 8) = 0xE000000000000000;
  *(v63 + 17) = 186;
  *(v63 + 19) = 0;
  sub_23DB6EA7C();
  v66 = v43[12];
  *(v63 + v66) = 1;
  v67 = v43[13];
  *(v63 + v67) = 1;
  v68 = v63 + v43[14];
  v103 = v59;
  v69 = v109;
  v109(v68, 1, 1, v59);
  v70 = (v63 + v43[15]);
  *v70 = 0;
  v70[1] = 0;
  v71 = v102;
  *v63 = v64;
  *(v63 + 8) = v71;

  *(v63 + 16) = 26;
  *(v63 + 19) = 0;
  *v70 = 0;
  v70[1] = 0;

  *(v63 + v66) = 1;
  *(v63 + v67) = 1;
  v102 = 2 * v62;
  v72 = v55 + 2 * v62;
  v73 = sub_23DB04C74(0xD000000000000028, 0x800000023DB8CAA0);
  v75 = v74;
  *v72 = 0;
  *(v72 + 8) = 0xE000000000000000;
  *(v72 + 17) = 186;
  *(v72 + 19) = 0;
  sub_23DB6EA7C();
  v76 = v43[12];
  *(v72 + v76) = 1;
  v77 = v43[13];
  *(v72 + v77) = 1;
  v69(v72 + v43[14], 1, 1, v59);
  v78 = (v72 + v43[15]);
  *v78 = 0;
  v78[1] = 0;
  *v72 = v73;
  *(v72 + 8) = v75;

  *(v72 + 16) = 3;
  *(v72 + 19) = 0;
  *v78 = 0;
  v78[1] = 0;

  *(v72 + v76) = 0;
  *(v72 + v77) = 1;
  v79 = v55 + v102 + v111;
  v80 = v108;
  v81 = sub_23DB04C74(0xD000000000000028, 0x800000023DB8CAD0);
  v83 = v82;
  *v79 = 0;
  *(v79 + 8) = 0xE000000000000000;
  *(v79 + 17) = 186;
  *(v79 + 19) = 0;
  sub_23DB6EA7C();
  v84 = v43[12];
  *(v79 + v84) = 1;
  v85 = v43[13];
  *(v79 + v85) = 1;
  v109(v79 + v43[14], 1, 1, v103);
  v86 = (v79 + v43[15]);
  *v86 = 0;
  v86[1] = 0;
  *v79 = v81;
  *(v79 + 8) = v83;

  *(v79 + 16) = 63;
  *(v79 + 19) = 0;
  *v86 = 0;
  v86[1] = 0;

  *(v79 + v84) = 0;
  *(v79 + v85) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  v87 = v105;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v88 = v106;
  sub_23DB0672C(v112, v106);
  sub_23DB0672C(v107, v88);
  v89 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v87 + v89) = v104;
  v90 = v87;

  v91 = swift_allocObject();
  swift_weakInit();
  v92 = swift_allocObject();
  *(v92 + 16) = v91;
  *(v92 + 24) = v80;
  v93 = v80;
  v94 = (v90 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v95 = *v94;
  v96 = v94[1];
  *v94 = sub_23DB06AEC;
  v94[1] = v92;
  swift_retain_n();

  sub_23DA18BA0(v95, v96);

  v97 = swift_allocObject();
  swift_weakInit();

  v98 = swift_allocObject();
  *(v98 + 16) = v97;
  *(v98 + 24) = v93;
  v99 = (v90 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v99 = sub_23DB06AF4;
  v99[1] = v98;

  return v90;
}

void sub_23DAF2D3C()
{
  if (*MEMORY[0x277CE6CD8])
  {
    v0 = *MEMORY[0x277D76438];
    v1 = *MEMORY[0x277CE6CD8];
    UIAccessibilityPostNotification(v0, v1);
  }

  else
  {
    __break(1u);
  }
}

void sub_23DAF2DA8(uint64_t a1, uint64_t a2)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF480, &unk_23DB7E9A0);
  MEMORY[0x28223BE20](v45);
  v4 = &v37 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF58, &unk_23DB77960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v37 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = type metadata accessor for CommandToPractice(0);
  v46 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v38 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  if (*MEMORY[0x277CE6CE0])
  {
    v18 = *MEMORY[0x277D76438];
    v19 = *MEMORY[0x277CE6CE0];
    UIAccessibilityPostNotification(v18, v19);

    v20 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v44 = v20;
    v51 = *(a2 + v20);
    v40 = *(v51 + 16);
    if (v40)
    {
      v37 = v7;
      v21 = v46;
      v39 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v50 = v51 + v39;
      v49 = (v46 + 56);
      v42 = (v46 + 48);
      v43 = a2;

      v22 = 0;
      v23 = v40;
      v41 = v12;
      v47 = v4;
      while (v22 < *(v51 + 16))
      {
        v24 = *(v21 + 72);
        sub_23DB06674(v50 + v24 * v22, v17, type metadata accessor for CommandToPractice);
        if (v17[18])
        {
          sub_23DB0672C(v17, type metadata accessor for CommandToPractice);
        }

        else
        {
          sub_23DB06674(v17, v12, type metadata accessor for CommandToPractice);
          v25 = *v49;
          v26 = 1;
          (*v49)(v12, 0, 1, v13);
          v27 = *(v43 + v44);
          v28 = *(v27 + 16);
          if (v28)
          {
            v29 = v27 + v39 + (v28 - 1) * v24;
            v30 = v48;
            sub_23DB06674(v29, v48, type metadata accessor for CommandToPractice);
            v26 = 0;
          }

          else
          {
            v30 = v48;
          }

          v25(v30, v26, 1, v13);
          v31 = *(v45 + 48);
          sub_23DB06AFC(v12, v4);
          sub_23DB06AFC(v30, &v4[v31]);
          v32 = *v42;
          if ((*v42)(v4, 1, v13) == 1)
          {
            sub_23DA17988(v30, &qword_27E2FCF58, &unk_23DB77960);
            v4 = v47;
            sub_23DA17988(v12, &qword_27E2FCF58, &unk_23DB77960);
            sub_23DB0672C(v17, type metadata accessor for CommandToPractice);
            if (v32(&v4[v31], 1, v13) != 1)
            {
              goto LABEL_21;
            }

            sub_23DA17988(v4, &qword_27E2FCF58, &unk_23DB77960);
            v21 = v46;
            v12 = v41;
          }

          else
          {
            v33 = v37;
            sub_23DB06AFC(v4, v37);
            if (v32(&v4[v31], 1, v13) == 1)
            {
              sub_23DA17988(v48, &qword_27E2FCF58, &unk_23DB77960);
              sub_23DA17988(v41, &qword_27E2FCF58, &unk_23DB77960);
              sub_23DB0672C(v17, type metadata accessor for CommandToPractice);
              sub_23DB0672C(v33, type metadata accessor for CommandToPractice);
LABEL_21:
              sub_23DA17988(v4, &qword_27E2FF480, &unk_23DB7E9A0);
LABEL_22:

              return;
            }

            v34 = v38;
            sub_23DB06B6C(&v4[v31], v38);
            v35 = _s28AccessibilitySharedUISupport17CommandToPracticeV2eeoiySbAC_ACtFZ_0(v33, v34);
            v23 = v40;
            sub_23DB0672C(v34, type metadata accessor for CommandToPractice);
            sub_23DA17988(v48, &qword_27E2FCF58, &unk_23DB77960);
            v12 = v41;
            sub_23DA17988(v41, &qword_27E2FCF58, &unk_23DB77960);
            sub_23DB0672C(v17, type metadata accessor for CommandToPractice);
            sub_23DB0672C(v33, type metadata accessor for CommandToPractice);
            v4 = v47;
            sub_23DA17988(v47, &qword_27E2FCF58, &unk_23DB77960);
            v21 = v46;
            if (!v35)
            {
              goto LABEL_22;
            }
          }
        }

        if (v23 == ++v22)
        {

          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_18:
      if (qword_27E2FBBD0 == -1)
      {
LABEL_19:
        v36 = *(qword_27E30A6A8 + 16);
        swift_beginAccess();
        *(v36 + 40) = 63;

        sub_23DABC32C();

        return;
      }
    }

    swift_once();
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_23DAF3400(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v12);

    if (LOBYTE(v12[0]) != 1)
    {
    }

    if (qword_27E2FBBD0 != -1)
    {
      swift_once();
    }

    v3 = qword_27E30A6A8;
    v4 = *(qword_27E30A6A8 + 16);
    swift_beginAccess();
    LOBYTE(v12[0]) = *(v4 + 40);
    if (VOCommandIdentifier.rawValue.getter() == 0xD00000000000001ELL && 0x800000023DB852C0 == v5)
    {
    }

    else
    {
      v6 = sub_23DB70DBC();

      if ((v6 & 1) == 0)
      {
LABEL_11:
        v8 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
        swift_beginAccess();
        v13 = *(v2 + v8);
        swift_getKeyPath();
        swift_getKeyPath();

        v9 = sub_23DB6EEFC();
        sub_23DB05F68(&v13, v10);
        v9(v12, 0);

        v11 = v13;
        type metadata accessor for Page.Practice(0);
        sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
        sub_23DB6EE6C();
        sub_23DB6EEBC();

        *(v2 + v8) = v11;
      }
    }

    v7 = *(v3 + 16);
    swift_beginAccess();
    *(v7 + 40) = 26;

    sub_23DABC32C();

    goto LABEL_11;
  }

  return result;
}

uint64_t sub_23DAF36E4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v58 = (&v48 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v48 - v8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = (result + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    v12 = result;
    swift_beginAccess();
    v14 = *v11;
    v13 = v11[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v61);

    v15 = v61[0];
    v16 = v61[1];
    UIAccessibilityPostNotification(0x438u, 0);
    v17 = MEMORY[0x277D764B0];
    sub_23DB05C14(v14, v13, MEMORY[0x277D764B0]);

    sub_23DB05C14(v15, v16, v17);

    v18 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v56 = v18;
    v19 = *(v12 + v18);
    KeyPath = swift_getKeyPath();
    v21 = swift_getKeyPath();

    v55 = KeyPath;
    v54 = v21;
    v53 = sub_23DB6EEFC();
    v51 = v22;
    v23 = swift_getKeyPath();
    v24 = swift_getKeyPath();
    v57 = v12;
    v52 = v23;
    v50 = v24;
    v49 = sub_23DB6EEFC();
    v48 = v25;

    v26 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_3:
    v27 = 0;
    v28 = (v2 + 7);
    v29 = v19[2];
    v2 += 6;
    if (!v29)
    {
LABEL_4:
      v30 = 1;
      v27 = v29;
      goto LABEL_7;
    }

    while (1)
    {
      if (v27 >= v19[2])
      {
        goto LABEL_16;
      }

      v31 = *(type metadata accessor for CommandToPractice(0) - 8);
      v59 = v27 + 1;
      v32 = v19 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27;
      v33 = *(v1 + 48);
      v34 = v2;
      v35 = v28;
      v36 = v9;
      v37 = v29;
      v38 = v1;
      v39 = v26;
      v40 = v6;
      v41 = v19;
      v42 = v58;
      *v58 = v27;
      sub_23DB06674(v32, v42 + v33, type metadata accessor for CommandToPractice);
      v43 = v42;
      v19 = v41;
      v6 = v40;
      v26 = v39;
      v1 = v38;
      v29 = v37;
      v9 = v36;
      v28 = v35;
      v2 = v34;
      sub_23DA17A54(v43, v6, &qword_27E2FE1C0, &qword_23DB7A440);
      v30 = 0;
      v27 = v59;
LABEL_7:
      (*v28)(v6, v30, 1, v1);
      sub_23DA17A54(v6, v9, &qword_27E2FE1C8, &qword_23DB7A448);
      if ((*v2)(v9, 1, v1) == 1)
      {
        break;
      }

      v44 = *v9;
      if ((*v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        v26 = sub_23DAC8B24(v19);
        goto LABEL_3;
      }

      if (v44 >= v26[2])
      {
        goto LABEL_15;
      }

      v45 = *(type metadata accessor for CommandToPractice(0) - 8);
      v46 = v26 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v44;
      *(v46 + 18) = 0;
      *(v46 + 19) = v44 == 0;
      sub_23DB0672C(v9 + *(v1 + 48), type metadata accessor for CommandToPractice);
      if (v27 == v29)
      {
        goto LABEL_4;
      }
    }

    *v48 = 0;
    *v51 = 0;
    v49(v60, 0);

    v53(v61, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
    v47 = v57;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    *(v47 + v56) = v26;
  }

  return result;
}

uint64_t sub_23DAF3D5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v104 = *(v1 - 8);
  v105 = v1;
  MEMORY[0x28223BE20](v1);
  v103 = &v79 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v101 = *(v3 - 8);
  v102 = v3;
  MEMORY[0x28223BE20](v3);
  v99 = &v79 - v4;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v93 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v89 = &v79 - v5;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v85 = *(v86 - 1);
  MEMORY[0x28223BE20](v86);
  v82 = &v79 - v6;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v79 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v79 - v10;
  v12 = sub_23DB6EA8C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v92 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v79 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v79 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v79 - v22;
  v91 = sub_23DB04C74(0xD000000000000017, 0x800000023DB89F10);
  v90 = v24;
  v106 = v0;
  v88 = sub_23DB04C74(0xD00000000000001ALL, 0x800000023DB8C9F0);
  v87 = v25;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOSingleGesture(0);
  v26 = swift_allocObject();
  v97 = v13;
  v27 = *(v13 + 16);
  v94 = v23;
  v27(v20, v23, v12);
  v96 = v17;
  v95 = v20;
  v98 = v12;
  v84 = v13 + 16;
  v83 = v27;
  v27(v17, v20, v12);
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v107) = 0;
  sub_23DB6EECC();
  v29 = *(v9 + 32);
  v29(v26 + v28, v11, v8);
  v30 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v31 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v31 = MEMORY[0x277D84FA0];
  }

  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v31;
  v32 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v107 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v33 = v79;
  sub_23DB6EECC();
  (*(v80 + 32))(v26 + v32, v33, v81);
  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v30;
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v107 = 0;
  v35 = v82;
  sub_23DB6EECC();
  (*(v85 + 32))(v26 + v34, v35, v86);
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v107) = 0;
  sub_23DB6EECC();
  v29(v26 + v36, v11, v8);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v85 = xmmword_23DB74320;
  v107 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v86 = v29;
  v38 = v89;
  sub_23DB6EECC();
  v39 = *(v93 + 32);
  v40 = v100;
  v39(v26 + v37, v38, v100);
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v107 = v85;
  sub_23DB6EECC();
  v39(v26 + v41, v38, v40);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v107) = 0;
  sub_23DB6EECC();
  v86(v26 + v42, v11, v8);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v107 = 0;
  *(&v107 + 1) = 0xE000000000000000;
  v44 = v99;
  sub_23DB6EECC();
  (*(v101 + 32))(v26 + v43, v44, v102);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v107 = 0uLL;
  sub_23DB6EECC();
  v39(v26 + v45, v38, v40);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v107 = nullsub_1;
  *(&v107 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v47 = v103;
  sub_23DB6EECC();
  (*(v104 + 32))(v26 + v46, v47, v105);
  v48 = v92;
  v49 = v96;
  v50 = v98;
  v83(v92, v96, v98);
  v51 = Page.init(id:title:text:subPages:iconName:)(v48, v91, v90, v88, v87, MEMORY[0x277D84F90], 0, 0);
  v52 = *(v97 + 8);
  v52(v49, v50);
  v52(v95, v50);
  v52(v94, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v53 = (type metadata accessor for CommandToPractice(0) - 8);
  v54 = (*(*v53 + 80) + 32) & ~*(*v53 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_23DB73BA0;
  v56 = v55 + v54;

  v57 = sub_23DB04C74(0xD000000000000020, 0x800000023DB8CA10);
  v59 = v58;
  *v56 = 0;
  *(v56 + 8) = 0xE000000000000000;
  *(v56 + 17) = 186;
  *(v56 + 19) = 0;
  sub_23DB6EA7C();
  v60 = v53[12];
  *(v56 + v60) = 1;
  v61 = v53[13];
  *(v56 + v61) = 1;
  v62 = v53[14];
  v63 = type metadata accessor for KeyboardKey(0);
  (*(*(v63 - 8) + 56))(v56 + v62, 1, 1, v63);
  v64 = (v56 + v53[15]);
  *v64 = 0;
  v64[1] = 0;
  *v56 = v57;
  *(v56 + 8) = v59;

  *(v56 + 16) = 15;
  *(v56 + 19) = 0;
  *v64 = 0;
  v64[1] = 0;

  *(v56 + v60) = 1;
  *(v56 + v61) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v51 + v65) = v55;

  v66 = swift_allocObject();
  swift_weakInit();
  v67 = swift_allocObject();
  v68 = v106;
  *(v67 + 16) = v66;
  *(v67 + 24) = v68;
  v69 = (v51 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v70 = *v69;
  v71 = v69[1];
  *v69 = sub_23DB06990;
  v69[1] = v67;
  swift_retain_n();

  sub_23DA18BA0(v70, v71);

  v72 = swift_allocObject();
  swift_weakInit();
  v73 = swift_allocObject();
  *(v73 + 16) = v72;
  *(v73 + 24) = v68;
  v74 = (v51 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v74 = sub_23DB069AC;
  v74[1] = v73;

  v75 = swift_allocObject();
  swift_weakInit();

  v76 = swift_allocObject();
  *(v76 + 16) = v75;
  *(v76 + 24) = v68;
  v77 = (v51 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v77 = sub_23DB069C8;
  v77[1] = v76;

  return v51;
}

uint64_t sub_23DAF4A94()
{
  v1 = sub_23DB6EA8C();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23DB04C74(0xD000000000000021, 0x800000023DB8C8D0);
  v6 = v5;
  v7 = v0;
  v8 = sub_23DB04C74(0xD000000000000020, 0x800000023DB8C900);
  v10 = v9;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOTyping(0);
  swift_allocObject();
  v78 = sub_23DA34FDC(v3, v4, v6, v8, v10, MEMORY[0x277D84F90], 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v11 = (type metadata accessor for CommandToPractice(0) - 8);
  v12 = *v11;
  v81 = *(*v11 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23DB7A0B0;
  v15 = v14;
  v77 = v14;
  v16 = objc_opt_self();

  v17 = [v16 currentDevice];
  v18 = [v17 userInterfaceIdiom];

  v19 = "tutorial.vo.magicTap.text";
  if (v18)
  {
    v20 = 0xD00000000000001DLL;
  }

  else
  {
    v19 = "cTap.button.play";
    v20 = 0xD00000000000001FLL;
  }

  v80 = v7;
  v21 = sub_23DB04C74(v20, v19 | 0x8000000000000000);
  v23 = v22;
  v24 = v15 + v13;
  *v24 = 0;
  *(v24 + 8) = 0xE000000000000000;
  *(v24 + 17) = 186;
  *(v24 + 19) = 0;
  sub_23DB6EA7C();
  v25 = v11[12];
  *(v24 + v25) = 1;
  v26 = v11[13];
  *(v24 + v26) = 1;
  v27 = v11[14];
  v79 = type metadata accessor for KeyboardKey(0);
  v28 = *(v79 - 8);
  v29 = *(v28 + 56);
  v74[1] = v28 + 56;
  v29(v24 + v27, 1, 1, v79);
  v76 = v29;
  v30 = (v24 + v11[15]);
  *v30 = 0;
  v30[1] = 0;
  *v24 = v21;
  *(v24 + 8) = v23;

  *(v24 + 16) = 62;
  *(v24 + 19) = 1;
  *v30 = 0;
  v30[1] = 0;

  *(v24 + v25) = 1;
  *(v24 + v26) = 1;
  v31 = v81;
  v32 = v24 + v81;
  v33 = sub_23DB04C74(0xD000000000000026, 0x800000023DB8C930);
  v75 = v34;
  *v32 = 0;
  *(v32 + 8) = 0xE000000000000000;
  *(v32 + 17) = 186;
  *(v32 + 19) = 0;
  sub_23DB6EA7C();
  v35 = v11[12];
  *(v32 + v35) = 1;
  v36 = v11[13];
  *(v32 + v36) = 1;
  v37 = v79;
  v29(v32 + v11[14], 1, 1, v79);
  v38 = (v32 + v11[15]);
  *v38 = 0;
  v38[1] = 0;
  v39 = v75;
  *v32 = v33;
  *(v32 + 8) = v39;

  *(v32 + 16) = 25;
  *(v32 + 19) = 0;
  *v38 = 0;
  v38[1] = 0;

  *(v32 + v35) = 1;
  *(v32 + v36) = 1;
  v75 = 2 * v31;
  v40 = v24 + 2 * v31;
  v41 = sub_23DB04C74(0xD000000000000026, 0x800000023DB8C960);
  v43 = v42;
  *v40 = 0;
  *(v40 + 8) = 0xE000000000000000;
  *(v40 + 17) = 186;
  *(v40 + 19) = 0;
  sub_23DB6EA7C();
  v44 = v11[12];
  *(v40 + v44) = 1;
  v45 = v11[13];
  *(v40 + v45) = 1;
  v46 = v37;
  v47 = v76;
  v76(v40 + v11[14], 1, 1, v46);
  v48 = (v40 + v11[15]);
  *v48 = 0;
  v48[1] = 0;
  *v40 = v41;
  *(v40 + 8) = v43;

  *(v40 + 16) = 63;
  *(v40 + 19) = 0;
  *v48 = 0;
  v48[1] = 0;

  *(v40 + v44) = 1;
  *(v40 + v45) = 1;
  v49 = v24 + v75 + v81;
  v50 = v80;
  v51 = sub_23DB04C74(0xD000000000000026, 0x800000023DB8C990);
  v53 = v52;
  *v49 = 0;
  *(v49 + 8) = 0xE000000000000000;
  *(v49 + 17) = 186;
  *(v49 + 19) = 0;
  sub_23DB6EA7C();
  v54 = v11[12];
  *(v49 + v54) = 1;
  v55 = v11[13];
  *(v49 + v55) = 1;
  v47(v49 + v11[14], 1, 1, v79);
  v56 = (v49 + v11[15]);
  *v56 = 0;
  v56[1] = 0;
  *v49 = v51;
  *(v49 + 8) = v53;

  *(v49 + 16) = 24;
  *(v49 + 19) = 0;
  *v56 = 0;
  v56[1] = 0;

  *(v49 + v54) = 1;
  *(v49 + v55) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  v57 = v78;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v57 + v58) = v77;

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v82) = 1;
  sub_23DB6EF1C();
  v59 = sub_23DB04C74(0xD000000000000027, 0x800000023DB8C9C0);
  v61 = v60;
  swift_getKeyPath();
  swift_getKeyPath();
  v82 = v59;
  v83 = v61;

  sub_23DB6EF1C();
  v62 = swift_allocObject();
  swift_weakInit();
  v63 = swift_allocObject();
  *(v63 + 16) = v62;
  *(v63 + 24) = v50;
  v64 = (v57 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v64 = sub_23DB068E0;
  v64[1] = v63;
  swift_retain_n();

  v65 = swift_allocObject();
  swift_weakInit();
  v66 = swift_allocObject();
  *(v66 + 16) = v65;
  *(v66 + 24) = v50;
  v67 = (v57 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v68 = *v67;
  v69 = v67[1];
  *v67 = sub_23DB068E8;
  v67[1] = v66;

  sub_23DA18BA0(v68, v69);

  v70 = swift_allocObject();
  swift_weakInit();

  v71 = swift_allocObject();
  *(v71 + 16) = v70;
  *(v71 + 24) = v50;
  v72 = (v57 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  *v72 = sub_23DB071FC;
  v72[1] = v71;

  return v57;
}

uint64_t sub_23DAF531C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = (result + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v4 = *v2;
    v3 = v2[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(&v8);

    v5 = v8;
    v6 = v9;
    UIAccessibilityPostNotification(0x438u, 0);
    v7 = MEMORY[0x277D764B0];
    sub_23DB05C14(v4, v3, MEMORY[0x277D764B0]);

    sub_23DB05C14(v5, v6, v7);

    swift_getKeyPath();
    swift_getKeyPath();
    v8 = 0;
    v9 = 0xE000000000000000;

    sub_23DB6EF1C();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v8) = 0;
    return sub_23DB6EF1C();
  }

  return result;
}

uint64_t sub_23DAF54BC(uint64_t a1)
{
  v1 = type metadata accessor for CommandToPractice(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v14);

    if (LOBYTE(v14[0]) == 1)
    {
      v7 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v15 = *(v6 + v7);
      swift_getKeyPath();
      swift_getKeyPath();

      v8 = sub_23DB6EEFC();
      sub_23DB05F68(&v15, v9);
      v8(v14, 0);

      v10 = v15;
      type metadata accessor for Page.Practice(0);
      sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      *(v6 + v7) = v10;

      v11 = *(v6 + v7);

      if (*(v11 + 16) < 3uLL)
      {
        __break(1u);
        return result;
      }

      sub_23DB06674(v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 2 * *(v2 + 72), v4, type metadata accessor for CommandToPractice);

      v12 = v4[18];
      sub_23DB0672C(v4, type metadata accessor for CommandToPractice);
      if (v12 == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23DB6EF0C(v14);

        if ((v14[0] & 1) == 0)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v14[0]) = 1;
          return sub_23DB6EF1C();
        }
      }
    }
  }

  return result;
}

uint64_t sub_23DAF5814(unint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v55 = (&v44 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v44 - v8);
  if (qword_27E2FBBD0 != -1)
  {
    goto LABEL_23;
  }

  if (!UIAccessibilityIsVoiceOverRunning())
  {
    goto LABEL_4;
  }

LABEL_3:
  v10 = objc_opt_self();
  v11 = sub_23DB7087C();
  [v10 triggerEventCommand_];

LABEL_4:
  while (1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v13 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    v14 = result;
    swift_beginAccess();
    v53 = v13;
    v15 = *(v14 + v13);
    KeyPath = swift_getKeyPath();
    v17 = swift_getKeyPath();

    v51 = v17;
    v52 = KeyPath;
    v50 = sub_23DB6EEFC();
    v48 = v18;
    v19 = swift_getKeyPath();
    v20 = swift_getKeyPath();
    v54 = v14;
    v49 = v19;
    v47 = v20;
    v46 = sub_23DB6EEFC();
    v45 = v21;

    v22 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_23DAC8B24(v15);
    }

    v23 = 0;
    v24 = (v2 + 7);
    v25 = v15[2];
    v2 += 6;
    if (!v25)
    {
LABEL_8:
      v26 = 1;
      v23 = v25;
      goto LABEL_12;
    }

    while ((v23 & 0x8000000000000000) == 0)
    {
      if (v23 >= v15[2])
      {
        goto LABEL_22;
      }

      v27 = *(type metadata accessor for CommandToPractice(0) - 8);
      v56 = v23 + 1;
      v28 = v15 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23;
      v29 = *(v1 + 48);
      v30 = v2;
      v31 = v9;
      v32 = v24;
      v33 = v1;
      v34 = v25;
      v35 = v22;
      v36 = v6;
      v37 = v15;
      v38 = v55;
      *v55 = v23;
      sub_23DB06674(v28, v38 + v29, type metadata accessor for CommandToPractice);
      v39 = v38;
      v15 = v37;
      v6 = v36;
      v22 = v35;
      v25 = v34;
      v1 = v33;
      v24 = v32;
      v9 = v31;
      v2 = v30;
      sub_23DA17A54(v39, v6, &qword_27E2FE1C0, &qword_23DB7A440);
      v26 = 0;
      v23 = v56;
LABEL_12:
      (*v24)(v6, v26, 1, v1);
      sub_23DA17A54(v6, v9, &qword_27E2FE1C8, &qword_23DB7A448);
      if ((*v2)(v9, 1, v1) == 1)
      {

        *v45 = 0;
        *v48 = 0;
        v46(v57, 0);

        v50(v58, 0);

        type metadata accessor for Page.Practice(0);
        sub_23DB05EFC(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
        v43 = v54;
        sub_23DB6EE6C();
        sub_23DB6EEBC();

        *(v43 + v53) = v22;
      }

      v40 = *v9;
      if ((*v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        break;
      }

      if (v40 >= v22[2])
      {
        goto LABEL_20;
      }

      v41 = *(type metadata accessor for CommandToPractice(0) - 8);
      v42 = v22 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40;
      *(v42 + 18) = 0;
      *(v42 + 19) = v40 == 0;
      sub_23DB0672C(v9 + *(v1 + 48), type metadata accessor for CommandToPractice);
      if (v23 == v25)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
    if (UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_23DAF5E34()
{
  v1 = v0;
  v2 = sub_23DB6EA8C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23DB04C74(0xD00000000000001FLL, 0x800000023DB8C740);
  v7 = v6;
  v8 = sub_23DB04C74(0xD00000000000001ELL, 0x800000023DB8C760);
  v10 = v9;
  sub_23DB6EA7C();
  type metadata accessor for Page.PracticeVOTypingSettings(0);
  swift_allocObject();
  v11 = sub_23DA35C30(v4, v5, v7, v8, v10, MEMORY[0x277D84F90], 0, 0);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v1;
  v14 = (v11 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  *v14 = sub_23DB067E0;
  v14[1] = v13;

  v15 = sub_23DB04C74(0xD000000000000026, 0x800000023DB8C780);
  v17 = v16;
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v15;
  v29 = v17;

  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF470, &qword_23DB7E708);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB7A0B0;
  *(inited + 32) = xmmword_23DB7E120;
  *(inited + 48) = 0xE000000000000000;
  *(inited + 56) = 0;
  *(inited + 64) = 0xE000000000000000;
  *(inited + 72) = 0;
  *(inited + 80) = sub_23DB04C74(0xD000000000000028, 0x800000023DB8C7B0);
  *(inited + 88) = v19;
  *(inited + 96) = sub_23DB04C74(0xD000000000000027, 0x800000023DB8C7E0);
  *(inited + 104) = v20;
  *(inited + 112) = 1;
  *(inited + 120) = sub_23DB04C74(0xD00000000000002BLL, 0x800000023DB8C810);
  *(inited + 128) = v21;
  *(inited + 136) = sub_23DB04C74(0xD00000000000002ALL, 0x800000023DB8C840);
  *(inited + 144) = v22;
  *(inited + 152) = 2;
  *(inited + 160) = sub_23DB04C74(0xD00000000000002BLL, 0x800000023DB8C870);
  *(inited + 168) = v23;
  *(inited + 176) = sub_23DB04C74(0xD00000000000002ALL, 0x800000023DB8C8A0);
  *(inited + 184) = v24;
  v25 = sub_23DB6BD6C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF478, &qword_23DB7E710);
  swift_arrayDestroy();
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v25;

  sub_23DB6EF1C();
  return v11;
}

uint64_t sub_23DAF61F0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = _AXSVoiceOverTouchTypingMode();
    swift_getKeyPath();
    swift_getKeyPath();
    v11[0] = v3;

    sub_23DB6EF1C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(v11);

    _AXSVoiceOverTouchSetTypingMode();
    v4 = (v2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v6 = *v4;
    v5 = v4[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v10);

    v7 = v10[0];
    v8 = v10[1];
    UIAccessibilityPostNotification(0x438u, 0);
    v9 = MEMORY[0x277D764B0];
    sub_23DB05C14(v6, v5, MEMORY[0x277D764B0]);

    sub_23DB05C14(v7, v8, v9);
  }

  return result;
}
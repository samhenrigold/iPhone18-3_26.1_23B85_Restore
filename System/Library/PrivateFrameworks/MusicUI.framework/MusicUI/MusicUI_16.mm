uint64_t sub_21681D394(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for AccessoryButton.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21681D4CC()
{
  result = qword_27CAB8F88;
  if (!qword_27CAB8F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8F88);
  }

  return result;
}

uint64_t sub_21681D520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for SearchPageListContentView(0, a3, a4, a4);
  v9 = a5 + *(v8 + 40);
  *v9 = sub_2167CB87C;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_34();
  result = (*(v10 + 32))(a5, a1);
  *(a5 + *(v8 + 36)) = a2;
  return result;
}

uint64_t sub_21681D600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v42 = a2;
  sub_2170091F4();
  OUTLINED_FUNCTION_1();
  v44 = v5;
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2170086D4();
  OUTLINED_FUNCTION_1();
  v39 = v7;
  v40 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F90, &qword_21701C270);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F98, &qword_21701C278);
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v39 - v21;
  v46 = *(a1 + 16);
  v47 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8FA0, &qword_21701C280);
  sub_21681E5C8();
  sub_217009ED4();
  sub_217009CB4();
  v23 = sub_2166D9530(&qword_27CAB8FC8, &qword_27CAB8F90, &qword_21701C270, MEMORY[0x277CDE5A0]);
  sub_21700A404();
  (*(v13 + 8))(v16, v11);
  sub_2170086C4();
  v48 = v11;
  v49 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v42;
  v25 = v39;
  sub_21700ABC4();
  (*(v40 + 8))(v10, v25);
  (*(v19 + 8))(v22, v17);
  v26 = v43;
  sub_2170091E4();
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8FD0, &qword_21701C290) + 36);
  v29 = v44;
  v28 = v45;
  (*(v44 + 16))(v24 + v27, v26, v45);
  v30 = v24;
  __swift_storeEnumTagSinglePayload(v24 + v27, 0, 1, v28);
  KeyPath = swift_getKeyPath();
  v32 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8FD8, &qword_21701C2C8) + 36));
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8538, &qword_21701C2D0) + 28);
  (*(v29 + 32))(v32 + v33, v26, v28);
  __swift_storeEnumTagSinglePayload(v32 + v33, 0, 1, v28);
  *v32 = KeyPath;
  v34 = swift_getKeyPath();
  type metadata accessor for PersistentPageSectionManager();
  sub_21681FC38(&unk_280E32060, type metadata accessor for PersistentPageSectionManager, &unk_21704AF8C);
  v35 = sub_2170081B4();
  v36 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8FE0, &qword_21701C300) + 36));
  *v36 = v34;
  v36[1] = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8FE8, &qword_21701C308);
  return sub_21681DE8C(v30 + *(v37 + 52));
}

uint64_t sub_21681DAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8FB8, &qword_21701C288);
  sub_21681E658();
  return sub_21700B1B4();
}

uint64_t sub_21681DB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8FF8, &unk_217056F80);
  MEMORY[0x28223BE20](v3);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 56);
  v6 = swift_checkMetadataState();
  v5(v6, AssociatedConformanceWitness);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9000, &qword_21701C310);
  sub_2166D9530(&qword_280E29FC0, &qword_27CAB9000, &qword_21701C310, MEMORY[0x277D83980]);
  sub_2170075C4();
  swift_getKeyPath();
  type metadata accessor for PageListSectionView(0);
  sub_2166D9530(&qword_27CAB9008, &qword_27CAB8FF8, &unk_217056F80, MEMORY[0x277D7EC38]);
  sub_21681FC38(&qword_27CAB8FC0, type metadata accessor for PageListSectionView, &unk_21701C364);
  return sub_21700B154();
}

uint64_t sub_21681DDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for MappedSection(0) + 28);
  sub_21681FD74(a2 + v6, a3, type metadata accessor for MappedSection.Content);
  result = type metadata accessor for PageListSectionView(0);
  *(a3 + *(result + 20)) = a1 == 0;
  return result;
}

uint64_t sub_21681DE28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9010, &unk_21701C340) + 48);

  return sub_21681DDB4(v3, v4, a2);
}

uint64_t sub_21681DE8C@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for MappedSection(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(AssociatedConformanceWitness + 56);
  v9 = swift_checkMetadataState();
  v10 = v8(v9, AssociatedConformanceWitness);
  v11 = *(v10 + 16);
  if (v11)
  {
    v20 = a2;
    v21 = MEMORY[0x277D84F90];
    sub_2166F4258();
    v12 = v21;
    v13 = v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);
    do
    {
      sub_21681FD74(v13, v6, type metadata accessor for MappedSection);
      v16 = *v6;
      v15 = v6[1];
      sub_21700DF14();
      sub_21681FDD4(v6, type metadata accessor for MappedSection);
      v21 = v12;
      v17 = *(v12 + 16);
      if (v17 >= *(v12 + 24) >> 1)
      {
        sub_2166F4258();
        v12 = v21;
      }

      *(v12 + 16) = v17 + 1;
      v18 = v12 + 16 * v17;
      *(v18 + 32) = v16;
      *(v18 + 40) = v15;
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v21 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
  sub_21681F738();
  return sub_21700F364();
}

void sub_21681E0F0(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObjectGraph(319);
    if (v2 <= 0x3F)
    {
      sub_2167CBB2C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21681E1A4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  result = swift_getAssociatedTypeWitness();
  v6 = *(*(result - 8) + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(result - 8) + 84);
  }

  v8 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v6 < 0x7FFFFFFF)
    {
      v16 = *(&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v6, result);
    }
  }

  else
  {
    v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
    if (v9 <= 3)
    {
      v10 = ((a2 - v7 + 255) >> 8) + 1;
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

    switch(v12)
    {
      case 1:
        v13 = a1[v9];
        if (!a1[v9])
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *&a1[v9];
        if (!*&a1[v9])
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *&a1[v9];
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v9);
        if (v9 <= 3)
        {
          v15 = *a1;
        }

        else
        {
          v14 = 0;
          v15 = *a1;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_21681E358(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v9 >= a3)
  {
    v14 = 0;
  }

  else
  {
    if (v11 <= 3)
    {
      v12 = ((a3 - v9 + 255) >> 8) + 1;
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
  }

  if (v9 >= a2)
  {
    switch(v14)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v8 < 0x7FFFFFFF)
          {
            v17 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v8, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v9 + a2;
    bzero(a1, v11);
    if (v11 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v11 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        *(a1 + v11) = v16;
        break;
      case 2:
        *(a1 + v11) = v16;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v11) = v16;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_21681E5C8()
{
  result = qword_27CAB8FA8;
  if (!qword_27CAB8FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8FA0, &qword_21701C280);
    sub_21681E658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8FA8);
  }

  return result;
}

unint64_t sub_21681E658()
{
  result = qword_27CAB8FB0;
  if (!qword_27CAB8FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8FB8, &qword_21701C288);
    sub_21681FC38(&qword_27CAB8FC0, type metadata accessor for PageListSectionView, &unk_21701C364);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8FB0);
  }

  return result;
}

uint64_t type metadata accessor for PageListSectionView(uint64_t a1)
{
  result = qword_27CAB9018;
  if (!qword_27CAB9018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21681E758@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = type metadata accessor for PageListSectionView(0);
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9030, &qword_21701C3B8);
  MEMORY[0x28223BE20](v33);
  v32 = &v30 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9038, &qword_21701C3C0);
  v35 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v34 = &v30 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9040, &qword_21701C3C8);
  MEMORY[0x28223BE20](v42);
  v40 = &v30 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9048, &qword_21701C3D0);
  MEMORY[0x28223BE20](v37);
  v8 = &v30 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9050, &qword_21701C3D8);
  MEMORY[0x28223BE20](v41);
  v38 = &v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9058, &qword_21701C3E0);
  MEMORY[0x28223BE20](v10);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9060, &qword_21701C3E8);
  MEMORY[0x28223BE20](v36);
  v12 = &v30 - v11;
  v13 = type metadata accessor for MappedSection.Content(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21681FD74(v1, v15, type metadata accessor for MappedSection.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 54)
  {
    v44 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9090, &qword_21701C400);
    sub_2166D9530(&qword_27CAB9098, &qword_27CAB9090, &qword_21701C400, MEMORY[0x277D83980]);
    sub_2170075C4();
    swift_getKeyPath();
    sub_21681FD74(v1, &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PageListSectionView);
    v23 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v24 = swift_allocObject();
    sub_21681FC80(&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
    v25 = swift_allocObject();
    *(v25 + 16) = sub_21681FCE4;
    *(v25 + 24) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9088, &qword_21701C3F8);
    sub_2166D9530(&qword_27CAB90A0, &qword_27CAB9030, &qword_21701C3B8, MEMORY[0x277D7EC38]);
    sub_21681FB4C();
    v26 = v34;
    sub_21700B154();
    v27 = v35;
    v28 = v39;
    (*(v35 + 16))(v8, v26, v39);
    swift_storeEnumTagMultiPayload();
    sub_21681F904();
    sub_21681FAC8();
    v29 = v38;
    sub_217009554();
    sub_216681B04(v29, v40, &qword_27CAB9050, &qword_21701C3D8);
    swift_storeEnumTagMultiPayload();
    sub_21681F878();
    sub_217009554();
    sub_2166997CC(v29, &qword_27CAB9050, &qword_21701C3D8);
    return (*(v27 + 8))(v26, v28);
  }

  else if (EnumCaseMultiPayload == 56)
  {
    v44 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90A8, &qword_21705BBA0);
    sub_2166D9530(&qword_280E2A020, &qword_27CAB90A8, &qword_21705BBA0, MEMORY[0x277D83980]);
    sub_2170075C4();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90B0, &unk_21705BBD0);
    sub_2166D9530(&qword_280E48620, &qword_27CAB9058, &qword_21701C3E0, MEMORY[0x277D7EC38]);
    v17 = type metadata accessor for TopSearchLockupView(255);
    v18 = sub_21681FC38(&qword_280E3CE50, type metadata accessor for TopSearchLockupView, &unk_21701ABA0);
    v44 = v17;
    v45 = v18;
    swift_getOpaqueTypeConformance2();
    sub_21700B154();
    KeyPath = swift_getKeyPath();
    v20 = &v12[*(v36 + 36)];
    *v20 = 0;
    *(v20 + 1) = KeyPath;
    *(v20 + 2) = 0;
    *(v20 + 3) = 0;
    *(v20 + 4) = 0;
    v20[40] = 0;
    sub_216681B04(v12, v8, &qword_27CAB9060, &qword_21701C3E8);
    swift_storeEnumTagMultiPayload();
    sub_21681F904();
    sub_21681FAC8();
    v21 = v38;
    sub_217009554();
    sub_216681B04(v21, v40, &qword_27CAB9050, &qword_21701C3D8);
    swift_storeEnumTagMultiPayload();
    sub_21681F878();
    sub_217009554();
    sub_2166997CC(v21, &qword_27CAB9050, &qword_21701C3D8);
    return sub_2166997CC(v12, &qword_27CAB9060, &qword_21701C3E8);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_21681F878();
    sub_217009554();
    return sub_21681FDD4(v15, type metadata accessor for MappedSection.Content);
  }
}

uint64_t sub_21681F06C(uint64_t a1)
{
  v2 = sub_21700DAF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TopSearchLockup(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v28 = type metadata accessor for TopSearchLockupView(0);
  MEMORY[0x28223BE20](v28);
  v16 = (&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_2168027B0(v17, v16);
  sub_216DE8ED8();
  sub_2167A757C(v8, v11);
  sub_21681FDD4(v8, type metadata accessor for TopSearchLockup);
  v18 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v18) == 1)
  {
    sub_2166997CC(v11, &qword_27CAB6D58, &unk_217014E30);
    v19 = 1;
  }

  else
  {
    v20 = *(v18 - 8);
    v26 = v2;
    v27 = a1;
    v21 = v20;
    (*(v20 + 16))(v14, v11, v18);
    v22 = v3;
    v23 = sub_21700D794();
    sub_21700D754();
    v23(v29, 0);
    v3 = v22;
    (*(v21 + 8))(v11, v18);
    v2 = v26;
    v19 = 0;
  }

  __swift_storeEnumTagSinglePayload(v14, v19, 1, v18);
  sub_21700DAE4();
  sub_21681FC38(&qword_280E3CE50, type metadata accessor for TopSearchLockupView, &unk_21701ABA0);
  sub_21700A1C4();
  (*(v3 + 8))(v5, v2);
  sub_2166997CC(v14, &qword_27CAB6D58, &unk_217014E30);
  return sub_21681FDD4(v16, type metadata accessor for TopSearchLockupView);
}

uint64_t sub_21681F454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90C0, &qword_21701C4B8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for SuggestionItemView(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90C8, &qword_21701C4C0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - v15;
  sub_21681FD74(a2, v12, type metadata accessor for SuggestionItem);
  sub_21681FD74(a2, v9, type metadata accessor for SuggestionItem);
  v17 = type metadata accessor for SuggestionItem(0);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v17);
  sub_216EF143C();
  sub_2166997CC(v9, &qword_27CAB90C0, &qword_21701C4B8);
  sub_21681FDD4(v12, type metadata accessor for SuggestionItemView);
  v18 = 0;
  if (!a1)
  {
    v18 = *(v23 + *(type metadata accessor for PageListSectionView(0) + 20));
  }

  KeyPath = swift_getKeyPath();
  (*(v14 + 32))(a4, v16, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9088, &qword_21701C3F8);
  v21 = a4 + *(result + 36);
  *v21 = v18;
  *(v21 + 8) = KeyPath;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = 0;
  *(v21 + 40) = 0;
  return result;
}

uint64_t sub_21681F6C8(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90B8, &qword_21701C4B0);
  return a2(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_21681F738()
{
  result = qword_27CAB8FF0;
  if (!qword_27CAB8FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB74F8, &unk_217017160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8FF0);
  }

  return result;
}

uint64_t sub_21681F7E8(uint64_t a1)
{
  result = type metadata accessor for MappedSection.Content(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21681F878()
{
  result = qword_27CAB9068;
  if (!qword_27CAB9068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9050, &qword_21701C3D8);
    sub_21681F904();
    sub_21681FAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9068);
  }

  return result;
}

unint64_t sub_21681F904()
{
  result = qword_280E2B088;
  if (!qword_280E2B088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9060, &qword_21701C3E8);
    sub_21681F990();
    sub_21681FA74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B088);
  }

  return result;
}

unint64_t sub_21681F990()
{
  result = qword_280E2A4E8;
  if (!qword_280E2A4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9070, &qword_21701C3F0);
    type metadata accessor for TopSearchLockupView(255);
    sub_21681FC38(&qword_280E3CE50, type metadata accessor for TopSearchLockupView, &unk_21701ABA0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A4E8);
  }

  return result;
}

unint64_t sub_21681FA74()
{
  result = qword_280E47ED8;
  if (!qword_280E47ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E47ED8);
  }

  return result;
}

unint64_t sub_21681FAC8()
{
  result = qword_27CAB9078;
  if (!qword_27CAB9078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9038, &qword_21701C3C0);
    sub_21681FB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9078);
  }

  return result;
}

unint64_t sub_21681FB4C()
{
  result = qword_27CAB9080;
  if (!qword_27CAB9080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9088, &qword_21701C3F8);
    type metadata accessor for SuggestionItemView(255);
    sub_21681FC38(qword_280E3E620, type metadata accessor for SuggestionItemView, &unk_21704CBD4);
    swift_getOpaqueTypeConformance2();
    sub_21681FA74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9080);
  }

  return result;
}

uint64_t sub_21681FC38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21681FC80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageListSectionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21681FCE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for PageListSectionView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_21681F454(a1, a2, v8, a3);
}

uint64_t sub_21681FD74(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21681FDD4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_21681FE28()
{
  result = qword_27CAB90D0;
  if (!qword_27CAB90D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB90D8, &qword_21701C4C8);
    sub_21681F878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB90D0);
  }

  return result;
}

uint64_t sub_21681FEDC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v82 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v77 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = (&v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v72 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v70 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v70 - v18;
  sub_21700D7A4();
  OUTLINED_FUNCTION_0_7();
  sub_21700CE04();
  v20 = *(v77 + 16);
  v80 = v4;
  v73 = v20;
  v74 = v77 + 16;
  v20(v8, v85, v4);
  v21 = _s6LockupVMa(0);
  v71 = v21[5];
  v75 = v8;
  sub_21700D734();
  v76 = a1;
  sub_21700CE04();
  v22 = sub_21700CDB4();
  v24 = v23;
  v25 = *(v11 + 8);
  v78 = v11 + 8;
  v79 = v9;
  v25(v16, v9);
  if (v24)
  {
    v83 = v22;
    v84 = v24;
    v26 = v82;
    sub_21700F364();
    v70 = v24;
    sub_21700CE04();
    v81 = v25;
    v27 = v85;
    sub_21700D2E4();
    v81(v19, v79);
    v28 = type metadata accessor for Artwork(0);
    sub_21700CE04();
    v73(v75, v27, v80);
    sub_2166D65B0(&qword_280E2BF60, type metadata accessor for Artwork);
    sub_21700D734();
    sub_21700CE04();
    sub_21700CDB4();
    v29 = OUTLINED_FUNCTION_3_35();
    v30 = v79;
    v81(v29, v79);
    v31 = (v26 + v21[6]);
    *v31 = v19;
    v31[1] = v28;
    sub_21700CE04();
    sub_21700CDB4();
    v32 = OUTLINED_FUNCTION_3_35();
    v81(v32, v30);
    v33 = (v26 + v21[7]);
    *v33 = v19;
    v33[1] = v28;
    sub_21700CE04();
    v34 = v85;
    sub_21700D2E4();
    v81(v19, v30);
    v35 = type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_0_7();
    sub_21700CE04();
    v73(v75, v34, v80);
    sub_2166D65B0(qword_280E40390, type metadata accessor for ContentDescriptor);
    sub_21700D734();
    sub_21700CE04();
    sub_21700CDB4();
    v36 = OUTLINED_FUNCTION_3_35();
    v37 = v81;
    v81(v36, v30);
    v38 = (v26 + v21[9]);
    *v38 = v19;
    v38[1] = v35;
    OUTLINED_FUNCTION_0_7();
    sub_21700CE04();
    v39 = sub_21700CD44();
    v37(v19, v30);
    v75 = v21;
    *(v26 + v21[10]) = v39;
    v40 = v72;
    sub_21700CE04();
    v41 = sub_21700CDB4();
    v43 = v42;
    v37(v40, v30);
    if (v43)
    {
      v45 = v75;
      v44 = v76;
      v46 = v82;
      v47 = (v82 + v75[15]);
      *v47 = v41;
      v47[1] = v43;
      sub_21700CE04();
      v48 = sub_21700CDB4();
      v50 = v49;
      v51 = OUTLINED_FUNCTION_2_31();
      v52(v51);
      v53 = v44;
      v54 = v79;
      v37(v53, v79);
      result = (v37)(v19, v54);
      v56 = (v46 + v45[13]);
      *v56 = v48;
      v56[1] = v50;
      return result;
    }

    sub_21700E2E4();
    OUTLINED_FUNCTION_1_32();
    sub_2166D65B0(v63, v64);
    OUTLINED_FUNCTION_42_0();
    swift_allocError();
    *v65 = 0x6867696C68676968;
    v65[1] = 0xEB00000000444974;
    v21 = v75;
    v65[2] = v75;
    OUTLINED_FUNCTION_50();
    (*(v66 + 104))();
    swift_willThrow();
    v67 = OUTLINED_FUNCTION_2_31();
    v68(v67);
    v37(v76, v79);
    sub_216788110(v82);
    v24 = v70;
  }

  else
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_1_32();
    sub_2166D65B0(v57, v58);
    OUTLINED_FUNCTION_42_0();
    swift_allocError();
    *v59 = 25705;
    v59[1] = 0xE200000000000000;
    v59[2] = v21;
    OUTLINED_FUNCTION_50();
    (*(v60 + 104))();
    swift_willThrow();
    v61 = OUTLINED_FUNCTION_2_31();
    v62(v61);
    v25(v76, v79);
  }

  result = sub_216699820(v82 + v71, &qword_27CAB6D58, &unk_217014E30);
  if (v24)
  {
    v69 = v82;

    sub_216699820(v69 + v21[8], &qword_27CAB6DB0, &qword_217016C00);

    sub_216699820(v69 + v21[11], &qword_27CAB6DB0, &qword_217016C00);
    sub_216699820(v69 + v21[12], &qword_27CAB6A00, &unk_217016B60);
    return sub_216699820(v69 + v21[14], &qword_27CAB6D60, &qword_217014E40);
  }

  return result;
}

uint64_t type metadata accessor for RemoveRecentLibrarySearchesAction(uint64_t a1)
{
  result = qword_280E2F078;
  if (!qword_280E2F078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2168208B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v25 = v20;
  v26 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v23 = v22 - v21;
  (*(v14 + 16))(v18, a1, v12);
  (*(v7 + 16))(v11, a2, v5);
  sub_21700D224();
  (*(v7 + 8))(a2, v5);
  if (v28)
  {
    return (*(v14 + 8))(a1, v12);
  }

  (*(v14 + 8))(a1, v12);
  return (*(v25 + 32))(a3, v23, v26);
}

uint64_t type metadata accessor for ReplayPageContentView(uint64_t a1)
{
  result = qword_27CAB90E8;
  if (!qword_27CAB90E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216820BAC(uint64_t a1)
{
  sub_216820D70(319);
  if (v1 <= 0x3F)
  {
    sub_216820E14();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AppDestinationPageProviderBox();
      if (v3 <= 0x3F)
      {
        type metadata accessor for ReplayTaskManager(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for UserSocialProfileCoordinator(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for SubscriptionStatusCoordinator();
            if (v6 <= 0x3F)
            {
              type metadata accessor for CloudLibraryStatusController(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for SocialGraphController(319);
                if (v8 <= 0x3F)
                {
                  sub_216820E6C();
                  if (v9 <= 0x3F)
                  {
                    sub_2166DB34C(319);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for AnimatedTextListItemViewCoordinator();
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for UnifiedMessages.Coordinator(319);
                        if (v12 <= 0x3F)
                        {
                          sub_2166B49AC(319);
                          if (v13 <= 0x3F)
                          {
                            sub_216820EBC(319);
                            if (v14 <= 0x3F)
                            {
                              sub_216820F14(319);
                              if (v15 <= 0x3F)
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
              }
            }
          }
        }
      }
    }
  }
}

void sub_216820D70(uint64_t a1)
{
  if (!qword_27CAB90F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9100, &qword_21705FBE0);
    sub_2166D9530(&qword_27CAB9108, &qword_27CAB9100, &qword_21705FBE0, &unk_2170390B0);
    v1 = sub_2170081D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAB90F8);
    }
  }
}

unint64_t sub_216820E14()
{
  result = qword_280E2A1B0;
  if (!qword_280E2A1B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E2A1B0);
  }

  return result;
}

void sub_216820E6C()
{
  if (!qword_27CAB9110)
  {
    v0 = sub_21700B104();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAB9110);
    }
  }
}

void sub_216820EBC(uint64_t a1)
{
  if (!qword_280E2B460)
  {
    sub_2170080D4();
    v1 = sub_2170080E4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B460);
    }
  }
}

void sub_216820F14(uint64_t a1)
{
  if (!qword_27CAB9118)
  {
    type metadata accessor for ReplayToolbarPagePresenter(255);
    sub_2166DB5A4(&qword_27CAB9120, type metadata accessor for ReplayToolbarPagePresenter, &unk_21706CCA4);
    v1 = sub_217008D04();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAB9118);
    }
  }
}

void sub_216820FC4()
{
  OUTLINED_FUNCTION_49();
  v56 = v1;
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9100, &qword_21705FBE0);
  OUTLINED_FUNCTION_3_2();
  LODWORD(v55) = v2;
  sub_2166D9530(v3, &qword_27CAB9100, &qword_21705FBE0, v4);
  sub_2170081B4();
  if (*(v0 + 160))
  {
    v5 = *(v0 + 40);
    v57 = v0;

    v7 = sub_216BBC664(v6, v5, 0, 0);

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB62D8, &qword_21701C700);
    v9 = v8 - 8;
    MEMORY[0x28223BE20](v8);
    v11 = &v49 - v10;
    v12 = sub_2170081B4();
    sub_2168215B8(v12, v7, v11);

    sub_2170081B4();
    v13 = sub_217008684();
    v14 = *(v9 + 44);
    v55 = v11;
    v15 = &v11[v14];
    *v15 = v7;
    v15[1] = v13;
    v15[2] = v16;
    v17 = type metadata accessor for ReplayPageContentView(0);
    v18 = OUTLINED_FUNCTION_2(v17);
    v20 = v19;
    v22 = *(v21 + 64);
    MEMORY[0x28223BE20](v18);
    sub_216826B40(v57, &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReplayPageContentView);
    sub_21700EA34();
    v57 = v7;

    v23 = sub_21700EA24();
    v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v25 = swift_allocObject();
    v26 = MEMORY[0x277D85700];
    *(v25 + 16) = v23;
    *(v25 + 24) = v26;
    sub_2168264E0(&v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for ReplayPageContentView);
    v27 = sub_21700EA74();
    OUTLINED_FUNCTION_1();
    v29 = v28;
    v31 = *(v30 + 64);
    MEMORY[0x28223BE20](v32);
    v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
    v34 = &v49 - v33;
    sub_21700EA44();
    if (__isPlatformVersionAtLeast(2, 26, 4, 0))
    {
      v52 = sub_2170087B4();
      v53 = &v49;
      OUTLINED_FUNCTION_1();
      v51 = v35;
      MEMORY[0x28223BE20](v36);
      OUTLINED_FUNCTION_7();
      v54 = &v49;
      v50 = v38 - v37;
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_21700F3B4();

      v59 = 0xD000000000000030;
      v60 = 0x8000000217082B30;
      v58 = 63;
      v39 = sub_21700F784();
      MEMORY[0x21CE9F490](v39);

      v41 = MEMORY[0x28223BE20](v40);
      (*(v29 + 16))(&v49 - v33, v34, v27, v41);
      v42 = v50;
      OUTLINED_FUNCTION_8();
      sub_2170087A4();

      (*(v29 + 8))(v34, v27);
      v43 = v56;
      sub_2167C5834(v55, v56, &qword_27CAB62D8, &qword_21701C700);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB62E0, &qword_217012D30);
      (*(v51 + 32))(v43 + *(v44 + 36), v42, v52);
    }

    else
    {

      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB62E8, &qword_217012D38);
      v46 = v56;
      v47 = (v56 + *(v45 + 36));
      v48 = sub_217008554();
      (*(v29 + 32))(&v47[*(v48 + 20)], &v49 - v33, v27);
      *v47 = &unk_21701C718;
      *(v47 + 1) = v25;
      sub_2167C5834(v55, v46, &qword_27CAB62D8, &qword_21701C700);
    }

    OUTLINED_FUNCTION_26();
  }

  else
  {
    type metadata accessor for MusicStackAuthority(0);
    sub_2166DB5A4(&qword_280E46D08, type metadata accessor for MusicStackAuthority, &protocol conformance descriptor for MusicStackAuthority);
    sub_217008CD4();
    __break(1u);
  }
}

uint64_t sub_2168215B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v223 = a2;
  v237 = a3;
  v238 = a1;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9140, &qword_21701C730);
  *&v225 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v4 = &v171 - v3;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9148, &qword_21701C738);
  *&v226 = *(v231 - 8);
  MEMORY[0x28223BE20](v231);
  v6 = &v171 - v5;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9150, &qword_21701C740);
  v188 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v187 = &v171 - v7;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9158, &qword_21701C748);
  v193 = *(v236 - 8);
  MEMORY[0x28223BE20](v236);
  v191 = &v171 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9160, &qword_21701C750);
  v197 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v196 = &v171 - v10;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9168, &qword_21701C758);
  MEMORY[0x28223BE20](v233);
  v12 = &v171 - v11;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9170, &qword_21701C760);
  MEMORY[0x28223BE20](v227);
  v228 = &v171 - v13;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9178, &qword_21701C768);
  MEMORY[0x28223BE20](v235);
  v229 = &v171 - v14;
  v175 = type metadata accessor for Page.Header(0);
  MEMORY[0x28223BE20](v175);
  v174 = &v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for ReplayPageContentView(0);
  v214 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v215 = v16;
  v216 = &v171 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9180, &qword_21701C770);
  MEMORY[0x28223BE20](v17 - 8);
  v186 = &v171 - v18;
  v189 = sub_2170080D4();
  v219 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v218 = &v171 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_217009714();
  MEMORY[0x28223BE20](v176);
  v177 = &v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9188, &qword_21701C778);
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v178 = &v171 - v21;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9190, &qword_21701C780);
  v183 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  *&v221 = &v171 - v22;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9198, &qword_21701C788);
  MEMORY[0x28223BE20](v181);
  v184 = &v171 - v23;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91A0, &qword_21701C790);
  MEMORY[0x28223BE20](v182);
  v192 = &v171 - v24;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91A8, &qword_21701C798);
  MEMORY[0x28223BE20](v190);
  v195 = &v171 - v25;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91B0, &qword_21701C7A0);
  MEMORY[0x28223BE20](v194);
  v199 = &v171 - v26;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91B8, &qword_21701C7A8);
  MEMORY[0x28223BE20](v198);
  v201 = &v171 - v27;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91C0, &qword_21701C7B0);
  MEMORY[0x28223BE20](v200);
  v204 = &v171 - v28;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91C8, &qword_21701C7B8);
  MEMORY[0x28223BE20](v202);
  v207 = &v171 - v29;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91D0, &qword_21701C7C0);
  MEMORY[0x28223BE20](v205);
  v209 = &v171 - v30;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91D8, &qword_21701C7C8);
  MEMORY[0x28223BE20](v208);
  v212 = &v171 - v31;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91E0, &qword_21701C7D0);
  MEMORY[0x28223BE20](v211);
  v222 = &v171 - v32;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91E8, &qword_21701C7D8);
  MEMORY[0x28223BE20](v232);
  v213 = &v171 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v217 = &v171 - v35;
  v210 = type metadata accessor for MappedReplayPage(0);
  v203 = *(v210 - 8);
  v36 = *(v203 + 64);
  MEMORY[0x28223BE20](v210);
  v206 = &v171 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v224 = &v171 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91F0, &qword_21701C7E0);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = (&v171 - v40);
  v42 = type metadata accessor for JSReplayPage(0);
  v241 = v42;
  v43 = sub_2166DB5A4(&qword_27CAB91F8, type metadata accessor for JSReplayPage, &unk_217014450);
  v242 = v43;
  swift_getKeyPath();
  v239 = v42;
  v240 = v43;
  swift_getKeyPath();
  sub_217007DE4();

  v44 = v9;

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9200, &qword_21701C840);
  if (__swift_getEnumTagSinglePayload(v41, 1, v45) == 1)
  {
LABEL_5:
    sub_217007514();
    sub_217009C64();
    sub_21700B394();
    v58 = sub_2166D9530(qword_280E48638, &qword_27CAB9140, &qword_21701C730, MEMORY[0x277D7EAF0]);
    v59 = v230;
    sub_21700A834();
    (*(v225 + 8))(v4, v59);
    v60 = v226;
    v61 = v231;
    (*(v226 + 16))(v228, v6, v231);
    swift_storeEnumTagMultiPayload();
    v243 = v59;
    v244 = v58;
    swift_getOpaqueTypeConformance2();
    sub_216825B00();
    v62 = v229;
    sub_217009554();
    sub_216683A80(v62, v12, &qword_27CAB9178, &qword_21701C768);
    swift_storeEnumTagMultiPayload();
    sub_2168263E4();
    v63 = sub_2166D9530(&qword_280E48630, &qword_27CAB9150, &qword_21701C740, MEMORY[0x277D7EB80]);
    v243 = v234;
    v244 = v63;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v243 = v236;
    v244 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    sub_2166997CC(v62, &qword_27CAB9178, &qword_21701C768);
    return (*(v60 + 8))(v6, v61);
  }

  v172 = v12;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v12 = v172;
    if (EnumCaseMultiPayload == 1)
    {
      v47 = *v41;
      v48 = *v41;

      v49 = v187;
      sub_217007564();
      sub_217009C44();
      sub_21700B3B4();
      v50 = sub_2166D9530(&qword_280E48630, &qword_27CAB9150, &qword_21701C740, MEMORY[0x277D7EB80]);
      v51 = v191;
      v52 = v234;
      sub_21700A824();
      (*(v188 + 8))(v49, v52);
      sub_217009C64();
      sub_21700B394();
      v243 = v52;
      v244 = v50;
      v53 = swift_getOpaqueTypeConformance2();
      v54 = v196;
      v55 = v236;
      sub_21700A834();
      (*(v193 + 8))(v51, v55);
      v56 = v197;
      (*(v197 + 16))(v12, v54, v44);
      swift_storeEnumTagMultiPayload();
      sub_2168263E4();
      v243 = v55;
      v244 = v53;
      swift_getOpaqueTypeConformance2();
      sub_217009554();

      return (*(v56 + 8))(v54, v44);
    }

    goto LABEL_5;
  }

  v65 = v224;
  sub_2168264E0(v41, v224, type metadata accessor for MappedReplayPage);
  v66 = sub_2170093C4();
  MEMORY[0x28223BE20](v66);
  v67 = v238;
  *(&v171 - 4) = v65;
  *(&v171 - 3) = v67;
  *(&v171 - 2) = v223;
  LODWORD(v243) = 0;
  sub_2166DB5A4(&qword_280E2A8F0, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_21700F9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB92E8, &qword_21701C8A0);
  sub_216826548();
  v68 = v178;
  sub_217008014();
  sub_2166D9530(&qword_27CAB9270, &qword_27CAB9188, &qword_21701C778, MEMORY[0x277CDF340]);
  v69 = v180;
  sub_21700A714();
  v70 = (*(v179 + 8))(v68, v69);
  MEMORY[0x28223BE20](v70);
  *(&v171 - 2) = v42;
  *(&v171 - 1) = v43;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v171 - 2) = v42;
  *(&v171 - 1) = v43;
  swift_getKeyPath();
  v72 = v186;
  sub_217007DE4();

  v73 = v189;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v72, 1, v189);
  v171 = v44;
  if (EnumTagSinglePayload == 1)
  {
    v82 = v218;
    sub_216C0C924(EnumTagSinglePayload, v75, v76, v77, v78, v79, v80, v81, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182);
    v83 = __swift_getEnumTagSinglePayload(v72, 1, v73);
    v84 = v219;
    if (v83 != 1)
    {
      sub_2166997CC(v72, &qword_27CAB9180, &qword_21701C770);
    }
  }

  else
  {
    v84 = v219;
    v82 = v218;
    (*(v219 + 32))(v218, v72, v73);
  }

  v85 = swift_getKeyPath();
  v86 = v184;
  v87 = &v184[*(v181 + 36)];
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9278, &qword_21701C850);
  (*(v84 + 32))(v87 + *(v88 + 28), v82, v73);
  *v87 = v85;
  (*(v183 + 32))(v86, v221, v185);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9100, &qword_21705FBE0);
  v218 = sub_2166D9530(&qword_27CAB9108, &qword_27CAB9100, &qword_21705FBE0, &unk_2170390B0);
  v219 = v89;
  v90 = sub_217007D54();
  v91 = v192;
  v92 = sub_2167C5834(v86, v192, &qword_27CAB9198, &qword_21701C788);
  v93 = (v91 + *(v182 + 36));
  v94 = v238;
  *v93 = v90;
  v93[1] = v94;
  v95 = *(v94 + *(*v94 + 176));
  MEMORY[0x28223BE20](v92);
  *(&v171 - 2) = type metadata accessor for SocialBadgingRequestCoordinator(0);
  *(&v171 - 1) = sub_2166DB5A4(&qword_280E2FFC0, type metadata accessor for SocialBadgingRequestCoordinator, &unk_21703F3B8);
  v96 = swift_getKeyPath();
  v97 = v195;
  sub_216683A80(v91, v195, &qword_27CAB91A0, &qword_21701C790);
  v98 = (v97 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9258, &qword_21701C848) + 36));
  *v98 = v96;
  v98[1] = v95;

  v99 = sub_217007D54();
  sub_2166997CC(v91, &qword_27CAB91A0, &qword_21701C790);
  v100 = (v97 + *(v190 + 36));
  *v100 = v99;
  v100[1] = v95;
  v101 = v220;
  v102 = *(v220 + 72);
  type metadata accessor for UserSocialProfileCoordinator(0);
  sub_2166DB5A4(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator, &unk_21705D6E8);

  v103 = sub_217007D54();
  v104 = v97;
  v105 = v199;
  sub_2167C5834(v104, v199, &qword_27CAB91A8, &qword_21701C798);
  v106 = (v105 + *(v194 + 36));
  *v106 = v103;
  v106[1] = v102;
  v107 = *(v101 + 96);
  type metadata accessor for SocialGraphController(0);
  sub_2166DB5A4(&qword_280E39AC8, type metadata accessor for SocialGraphController, &unk_217070E24);
  v108 = v102;
  v109 = sub_217007D54();
  v110 = v105;
  v111 = v201;
  sub_2167C5834(v110, v201, &qword_27CAB91B0, &qword_21701C7A0);
  v112 = (v111 + *(v198 + 36));
  *v112 = v109;
  v112[1] = v107;
  v113 = *(v101 + 80);
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_2166DB5A4(&qword_280E30FC8, type metadata accessor for SubscriptionStatusCoordinator, &unk_217065168);

  v114 = sub_217007D54();
  v115 = v111;
  v116 = v204;
  sub_2167C5834(v115, v204, &qword_27CAB91B8, &qword_21701C7A8);
  v117 = (v116 + *(v200 + 36));
  *v117 = v114;
  v117[1] = v113;
  v118 = *(v101 + 88);
  type metadata accessor for CloudLibraryStatusController(0);
  sub_2166DB5A4(&qword_280E32560, type metadata accessor for CloudLibraryStatusController, &unk_217044B7C);

  v119 = sub_217007D54();
  v120 = v116;
  v121 = v207;
  sub_2167C5834(v120, v207, &qword_27CAB91C0, &qword_21701C7B0);
  v122 = (v121 + *(v202 + 36));
  *v122 = v119;
  v122[1] = v118;
  v123 = *(v101 + 136);
  type metadata accessor for MusicTabChangePublisher(0);
  sub_2166DB5A4(&qword_280E46AC8, type metadata accessor for MusicTabChangePublisher, &unk_2170554F8);

  v124 = sub_217007D54();
  v125 = v121;
  v126 = v209;
  sub_2167C5834(v125, v209, &qword_27CAB91C8, &qword_21701C7B8);
  v127 = (v126 + *(v205 + 36));
  *v127 = v124;
  v127[1] = v123;
  v128 = *(v101 + 144);
  type metadata accessor for AnimatedTextListItemViewCoordinator();
  sub_2166DB5A4(qword_280E2E8D0, type metadata accessor for AnimatedTextListItemViewCoordinator, &unk_21704D294);

  v129 = sub_217007D54();
  v130 = v126;
  v131 = v212;
  sub_2167C5834(v130, v212, &qword_27CAB91D0, &qword_21701C7C0);
  v132 = (v131 + *(v208 + 36));
  *v132 = v129;
  v132[1] = v128;
  *&v226 = v128;
  v133 = v216;
  sub_216826B40(v101, v216, type metadata accessor for ReplayPageContentView);
  v134 = v224;
  v135 = v206;
  sub_216826B40(v224, v206, type metadata accessor for MappedReplayPage);
  v136 = (*(v214 + 80) + 16) & ~*(v214 + 80);
  v137 = (v215 + v136 + 7) & 0xFFFFFFFFFFFFFFF8;
  v138 = (*(v203 + 80) + v137 + 8) & ~*(v203 + 80);
  v139 = swift_allocObject();
  sub_2168264E0(v133, v139 + v136, type metadata accessor for ReplayPageContentView);
  v140 = v223;
  *(v139 + v137) = v223;
  sub_2168264E0(v135, v139 + v138, type metadata accessor for MappedReplayPage);
  v141 = v222;
  sub_2167C5834(v131, v222, &qword_27CAB91D8, &qword_21701C7C8);
  v142 = (v141 + *(v211 + 36));
  *v142 = sub_216826680;
  v142[1] = v139;
  v142[2] = 0;
  v142[3] = 0;
  v221 = *(v101 + 24);
  if (*(v134 + *(v210 + 28)))
  {

    v143 = v174;
    sub_216DE8DC8();
    v144 = v175;
    v145 = (v143 + v175[6]);
    v146 = v145[1];
    *&v147 = *v145;
    v226 = v147;
    sub_21700DF14();
    sub_2168268B0(v143, type metadata accessor for Page.Header);
    sub_216DE8DC8();
    v148 = (v143 + v144[7]);
    v149 = v148[1];
    *&v150 = *v148;
    v225 = v150;
    sub_21700DF14();
    sub_2168268B0(v143, type metadata accessor for Page.Header);
    sub_216DE8DC8();
    v151 = *(v143 + v144[12]);
    sub_2168268B0(v143, type metadata accessor for Page.Header);
    if (v151 == 4)
    {
      LOBYTE(v151) = 1;
    }

    sub_216DE8DC8();
    v152 = *(v143 + v144[8]);
    sub_2168268B0(v143, type metadata accessor for Page.Header);
    *&v153 = v226;
    *(&v153 + 1) = v146;
    v226 = v153;
    *&v154 = v225;
    *(&v154 + 1) = v149;
  }

  else
  {

    v152 = 0;
    v154 = 0uLL;
    v226 = 0u;
    LOBYTE(v151) = 1;
  }

  v225 = v154;
  v155 = *(v101 + 152);
  v156 = v213;
  v157 = &v213[*(v232 + 36)];
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB92D8, &qword_21701C898);
  sub_216826B40(v224, &v157[v158[9]], type metadata accessor for MappedReplayPage);
  *v157 = v221;
  *&v157[v158[10]] = v140;
  v159 = &v157[v158[11]];

  swift_unknownObjectRetain();
  *v159 = sub_217008684();
  v159[1] = v160;
  v161 = &v157[v158[12]];
  v162 = v225;
  *v161 = v226;
  *(v161 + 1) = v162;
  v161[32] = v151;
  v161[33] = v152;
  *&v157[v158[13]] = v155;
  v163 = v158[14];
  *&v157[v163] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9310, &qword_21701C9A8);
  swift_storeEnumTagMultiPayload();
  v164 = &v157[v158[15]];
  type metadata accessor for MusicStackAuthority(0);
  sub_2166DB5A4(&qword_280E46D08, type metadata accessor for MusicStackAuthority, &protocol conformance descriptor for MusicStackAuthority);

  *v164 = sub_217008CF4();
  v164[1] = v165;
  sub_2167C5834(v222, v156, &qword_27CAB91E0, &qword_21701C7D0);
  v166 = v217;
  sub_2167C5834(v156, v217, &qword_27CAB91E8, &qword_21701C7D8);
  sub_216683A80(v166, v228, &qword_27CAB91E8, &qword_21701C7D8);
  swift_storeEnumTagMultiPayload();
  v167 = sub_2166D9530(qword_280E48638, &qword_27CAB9140, &qword_21701C730, MEMORY[0x277D7EAF0]);
  v243 = v230;
  v244 = v167;
  swift_getOpaqueTypeConformance2();
  sub_216825B00();
  v168 = v229;
  sub_217009554();
  sub_216683A80(v168, v172, &qword_27CAB9178, &qword_21701C768);
  swift_storeEnumTagMultiPayload();
  sub_2168263E4();
  v169 = sub_2166D9530(&qword_280E48630, &qword_27CAB9150, &qword_21701C740, MEMORY[0x277D7EB80]);
  v243 = v234;
  v244 = v169;
  v170 = swift_getOpaqueTypeConformance2();
  v243 = v236;
  v244 = v170;
  swift_getOpaqueTypeConformance2();
  sub_217009554();
  sub_2166997CC(v168, &qword_27CAB9178, &qword_21701C768);
  sub_2166997CC(v166, &qword_27CAB91E8, &qword_21701C7D8);
  return sub_2168268B0(v224, type metadata accessor for MappedReplayPage);
}

uint64_t sub_216823670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9130, &qword_21701C720);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_21700EA34();
  v3[9] = sub_21700EA24();
  v6 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216823770, v6, v5);
}

uint64_t sub_216823770()
{
  v1 = v0[8];
  v2 = v0[7];
  v7 = v0[6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9100, &qword_21705FBE0);
  OUTLINED_FUNCTION_3_2();
  sub_2166D9530(v3, &qword_27CAB9100, &qword_21705FBE0, v4);
  sub_2170081B4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9138, &qword_21701C728);
  sub_217007DB4();
  swift_endAccess();

  sub_216C2ECE0();
  (*(v2 + 8))(v1, v7);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2168238E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v24 = a4;
  v6 = type metadata accessor for MappedReplayPage(0);
  v20[0] = *(v6 - 8);
  v7 = *(v20[0] + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8FF8, &unk_217056F80);
  MEMORY[0x28223BE20](v23);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB92E8, &qword_21701C8A0);
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = v20 - v9;
  v25 = *a1;
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9000, &qword_21701C310);
  sub_2166D9530(&qword_280E29FC0, &qword_27CAB9000, &qword_21701C310, MEMORY[0x277D83980]);
  sub_2170075C4();
  v20[1] = swift_getKeyPath();
  sub_216826B40(a1, v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MappedReplayPage);
  v11 = (*(v20[0] + 80) + 24) & ~*(v20[0] + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  sub_2168264E0(v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for MappedReplayPage);
  *(v12 + ((v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_216826A88;
  *(v13 + 24) = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9338, &qword_21701CA10);
  sub_2166D9530(&qword_27CAB9008, &qword_27CAB8FF8, &unk_217056F80, MEMORY[0x277D7EC38]);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92F8, &qword_21701C8A8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9300, &qword_21701C8B0);
  v16 = sub_2166D9530(&qword_27CAB9308, &qword_27CAB9300, &qword_21701C8B0, &unk_217068A78);
  v25 = v15;
  v26 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v14;
  v26 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21700B154();
  swift_getKeyPath();
  v18 = v22;
  sub_21700B144();

  return (*(v8 + 8))(v10, v18);
}

uint64_t sub_216823D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a1;
  v26 = a5;
  v23 = a2;
  v29 = a6;
  v30 = sub_2170099D4();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9300, &qword_21701C8B0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB92F8, &qword_21701C8A8);
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v14 = &v23 - v13;
  sub_216826B40(a2, v12, type metadata accessor for MappedSection);
  v15 = *(*a4 + 16);
  v16 = &v12[v10[13]];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = &v12[v10[12]];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9100, &qword_21705FBE0);
  sub_2166D9530(&qword_27CAB9108, &qword_27CAB9100, &qword_21705FBE0, &unk_2170390B0);
  *v17 = sub_217008684();
  v17[1] = v18;
  v19 = v25;
  *&v12[v10[9]] = v26;
  *&v12[v10[10]] = v19;
  *&v12[v10[11]] = v15;

  sub_21682439C();
  sub_2166997CC(v12, &qword_27CAB9300, &qword_21701C8B0);
  sub_2170099C4();
  v20 = sub_2166D9530(&qword_27CAB9308, &qword_27CAB9300, &qword_21701C8B0, &unk_217068A78);
  v31 = v10;
  v32 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v27;
  sub_21700A784();
  (*(v28 + 8))(v9, v30);
  return (*(v24 + 8))(v14, v21);
}

void sub_21682409C()
{
  OUTLINED_FUNCTION_49();
  v23[0] = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_21700DAF4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v23 - v17;
  v19 = type metadata accessor for MappedSection(0);
  sub_216683A80(v4 + *(v19 + 36), v15, &qword_27CAB6D58, &unk_217014E30);
  v20 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v15, 1, v20) == 1)
  {
    sub_2166997CC(v15, &qword_27CAB6D58, &unk_217014E30);
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v20);
  }

  else
  {
    sub_216BE5AD4(v2 & 1, v18);
    (*(*(v20 - 8) + 8))(v15, v20);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v20);
  }

  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9368, &qword_217056FC0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9370, qword_21701CA90);
  v22 = sub_2166D9530(&qword_27CAB9378, &qword_27CAB9370, qword_21701CA90, &unk_217068A78);
  v23[2] = v21;
  v23[3] = v22;
  swift_getOpaqueTypeConformance2();
  sub_21700A1C4();
  (*(v7 + 8))(v11, v5);
  sub_2166997CC(v18, &qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_26();
}

void sub_21682439C()
{
  OUTLINED_FUNCTION_49();
  v32 = v0;
  v29 = v1;
  v30 = v2;
  v4 = v3;
  v6 = v5;
  v28 = v7;
  v9 = v8;
  v31 = v10;
  v11 = sub_21700DAF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  v19 = OUTLINED_FUNCTION_36(v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v27[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v24 = &v27[-v23];
  v25 = type metadata accessor for MappedSection(0);
  sub_216683A80(v9 + *(v25 + 36), v21, &qword_27CAB6D58, &unk_217014E30);
  v26 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v21, 1, v26) == 1)
  {
    sub_2166997CC(v21, &qword_27CAB6D58, &unk_217014E30);
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v26);
  }

  else
  {
    sub_216BE5AD4(v28 & 1, v24);
    (*(*(v26 - 8) + 8))(v21, v26);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v26);
  }

  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v4);
  sub_2166D9530(v30, v6, v4, v32);
  sub_21700A1C4();
  (*(v13 + 8))(v17, v11);
  sub_2166997CC(v24, &qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216824628(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9010, &unk_21701C340);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_216824694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v109 = a3;
  v114 = a2;
  v103 = sub_217009124();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9318, &qword_21701C9B0);
  MEMORY[0x28223BE20](v6 - 8);
  v97 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v100 = (&v96 - v9);
  *&v120 = type metadata accessor for AddToPlaylistAccessoryButton(0);
  MEMORY[0x28223BE20](v120);
  v118 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9320, &qword_21701C9B8);
  MEMORY[0x28223BE20](v11 - 8);
  v99 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v106 = &v96 - v14;
  MEMORY[0x28223BE20](v15);
  v117 = &v96 - v16;
  v111 = type metadata accessor for ShareAccessoryButton(0);
  MEMORY[0x28223BE20](v111);
  v119 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for Page.Header(0);
  MEMORY[0x28223BE20](v115);
  v96 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v104 = &v96 - v20;
  MEMORY[0x28223BE20](v21);
  v105 = &v96 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9328, &qword_21701C9C0);
  MEMORY[0x28223BE20](v23 - 8);
  v98 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v112 = &v96 - v26;
  MEMORY[0x28223BE20](v27);
  v113 = &v96 - v28;
  v29 = type metadata accessor for MappedReplayPage(0);
  v30 = v29 - 8;
  v110 = *(v29 - 8);
  v31 = *(v110 + 64);
  MEMORY[0x28223BE20](v29);
  v108 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for ReplayPageContentView(0);
  v32 = *(v107 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v107);
  v34 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v96 - v36;
  v38 = *(a1 + 112);
  v39 = *(a1 + 120);
  *&v126 = *(a1 + 104);
  *(&v126 + 1) = v38;
  LOBYTE(v127) = v39;
  LOBYTE(v122) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20, &unk_2170187A0);
  sub_21700B0D4();
  v40 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v37, 1, 1, v40);
  v116 = a1;
  sub_216826B40(a1, v34, type metadata accessor for ReplayPageContentView);
  sub_216826B40(a3, &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MappedReplayPage);
  sub_21700EA34();
  v41 = v114;

  v42 = sub_21700EA24();
  v43 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v44 = (v33 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (*(v110 + 80) + v44 + 8) & ~*(v110 + 80);
  v46 = swift_allocObject();
  v47 = MEMORY[0x277D85700];
  *(v46 + 16) = v42;
  *(v46 + 24) = v47;
  sub_2168264E0(v34, v46 + v43, type metadata accessor for ReplayPageContentView);
  *(v46 + v44) = v41;
  v48 = v46 + v45;
  v49 = v111;
  sub_2168264E0(v108, v48, type metadata accessor for MappedReplayPage);
  sub_21677BBA0();

  v50 = *(v109 + *(v30 + 36));
  v51 = v49;
  if (v50)
  {
    v52 = v105;
    sub_216DE8DC8();
    v53 = *(v52 + *(v115 + 40));
    sub_21700DF14();
    sub_2168268B0(v52, type metadata accessor for Page.Header);
    if (v53)
    {
      v54 = 0;
      v55 = *(v53 + 16);
      for (i = v53 + 32; ; i += 56)
      {
        if (v55 == v54)
        {

          v129 = 0;
          v127 = 0u;
          v128 = 0u;
          v126 = 0u;
LABEL_11:
          sub_2166997CC(&v126, &qword_27CAB8E60, qword_21701BCD0);
          goto LABEL_12;
        }

        if (v54 >= *(v53 + 16))
        {
          break;
        }

        sub_216826904(i, &v122);
        sub_216826960(&v122 + 8, v121);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330, &qword_21701C9E0);
        if (swift_dynamicCast())
        {

          sub_2168268B0(v119, type metadata accessor for ShareAccessoryButton);
          v127 = v123;
          v128 = v124;
          v126 = v122;
          v129 = v125;
          if (v124)
          {
            sub_216826960(&v126 + 8, v130);
            sub_2168269C4(&v126);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330, &qword_21701C9E0);
            v57 = v113;
            v58 = swift_dynamicCast() ^ 1;
            v59 = v57;
            goto LABEL_13;
          }

          goto LABEL_11;
        }

        ++v54;
        sub_2168269C4(&v122);
      }

      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }
  }

LABEL_12:
  v57 = v113;
  v59 = v113;
  v58 = 1;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v59, v58, 1, v49);
  v60 = v116;
  v61 = v120;
  v62 = v112;
  if (v50)
  {
    v63 = v104;
    sub_216DE8DC8();
    v64 = *(v63 + *(v115 + 40));
    sub_21700DF14();
    sub_2168268B0(v63, type metadata accessor for Page.Header);
    if (v64)
    {
      v65 = 0;
      v66 = *(v64 + 16);
      for (j = v64 + 32; ; j += 56)
      {
        if (v66 == v65)
        {

          v129 = 0;
          v127 = 0u;
          v128 = 0u;
          v126 = 0u;
          goto LABEL_23;
        }

        if (v65 >= *(v64 + 16))
        {
          goto LABEL_47;
        }

        sub_216826904(j, &v122);
        sub_216826960(&v122 + 8, v121);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330, &qword_21701C9E0);
        if (swift_dynamicCast())
        {
          break;
        }

        ++v65;
        sub_2168269C4(&v122);
      }

      sub_2168268B0(v118, type metadata accessor for AddToPlaylistAccessoryButton);
      v127 = v123;
      v128 = v124;
      v126 = v122;
      v129 = v125;
      if (v124)
      {
        sub_216826960(&v126 + 8, v130);
        sub_2168269C4(&v126);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330, &qword_21701C9E0);
        v68 = v117;
        v61 = v120;
        v69 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v68, v69 ^ 1u, 1, v61);
        v62 = v112;
        v60 = v116;
        goto LABEL_25;
      }

LABEL_23:
      sub_2166997CC(&v126, &qword_27CAB8E60, qword_21701BCD0);
      v61 = v120;
      v62 = v112;
      v60 = v116;
    }
  }

  __swift_storeEnumTagSinglePayload(v117, 1, 1, v61);
LABEL_25:
  sub_216683A80(v57, v62, &qword_27CAB9328, &qword_21701C9C0);
  if (__swift_getEnumTagSinglePayload(v62, 1, v51) == 1)
  {
    sub_2166997CC(v62, &qword_27CAB9328, &qword_21701C9C0);
    v126 = 0u;
    v127 = 0u;
    *&v128 = 0;
  }

  else
  {
    sub_216683A80(v62 + *(v51 + 24), &v126, &qword_27CAB6DB0, &qword_217016C00);
    sub_2168268B0(v62, type metadata accessor for ShareAccessoryButton);
    if (*(&v127 + 1))
    {
      goto LABEL_31;
    }
  }

  sub_2166997CC(&v126, &qword_27CAB6DB0, &qword_217016C00);
  v70 = v106;
  sub_216683A80(v117, v106, &qword_27CAB9320, &qword_21701C9B8);
  if (__swift_getEnumTagSinglePayload(v70, 1, v61) == 1)
  {
    sub_2166997CC(v70, &qword_27CAB9320, &qword_21701C9B8);
    v126 = 0u;
    v127 = 0u;
    *&v128 = 0;
    goto LABEL_34;
  }

  sub_216683A80(v70 + *(v61 + 24), &v126, &qword_27CAB6DB0, &qword_217016C00);
  sub_2168268B0(v70, type metadata accessor for AddToPlaylistAccessoryButton);
  if (*(&v127 + 1))
  {
LABEL_31:
    sub_2166997CC(&v126, &qword_27CAB6DB0, &qword_217016C00);
    if (!*(v60 + *(v107 + 76)))
    {
      goto LABEL_48;
    }

    v71 = v98;
    sub_216683A80(v57, v98, &qword_27CAB9328, &qword_21701C9C0);
    if (__swift_getEnumTagSinglePayload(v71, 1, v51) == 1)
    {

      sub_2166997CC(v71, &qword_27CAB9328, &qword_21701C9C0);
      v126 = 0u;
      v127 = 0u;
      *&v128 = 0;
    }

    else
    {
      sub_216683A80(v71 + *(v51 + 24), &v126, &qword_27CAB6DB0, &qword_217016C00);

      sub_2168268B0(v71, type metadata accessor for ShareAccessoryButton);
    }

    v74 = v99;
    sub_216683A80(v117, v99, &qword_27CAB9320, &qword_21701C9B8);
    if (__swift_getEnumTagSinglePayload(v74, 1, v61) == 1)
    {
      sub_2166997CC(v74, &qword_27CAB9320, &qword_21701C9B8);
      v122 = 0u;
      v123 = 0u;
      *&v124 = 0;
      if (v50)
      {
        goto LABEL_39;
      }
    }

    else
    {
      sub_216683A80(v74 + *(v61 + 24), &v122, &qword_27CAB6DB0, &qword_217016C00);
      sub_2168268B0(v74, type metadata accessor for AddToPlaylistAccessoryButton);
      if (v50)
      {
LABEL_39:
        v75 = v96;
        sub_216DE8DC8();
        v76 = v115;
        v77 = (v75 + *(v115 + 24));
        v78 = v77[1];
        *&v120 = *v77;
        sub_21700DF14();
        sub_2168268B0(v75, type metadata accessor for Page.Header);
        sub_216DE8DC8();
        v79 = (v75 + *(v76 + 28));
        v81 = *v79;
        v80 = v79[1];
        sub_21700DF14();
        sub_2168268B0(v75, type metadata accessor for Page.Header);
        sub_216DE8DC8();
        v82 = *(v75 + *(v76 + 48));
        sub_2168268B0(v75, type metadata accessor for Page.Header);
        v83 = MEMORY[0x277CDDDC8];
        switch(v82)
        {
          case 1:
          case 4:
            goto LABEL_43;
          case 2:
            v83 = MEMORY[0x277CDDDB0];
            break;
          default:
            goto LABEL_44;
        }

        goto LABEL_44;
      }
    }

    v78 = 0;
    *&v120 = 0;
    v80 = 0;
    v81 = 0;
LABEL_43:
    v83 = MEMORY[0x277CDDDC0];
LABEL_44:
    v84 = v102;
    v85 = v101;
    v86 = v103;
    (*(v102 + 104))(v101, *v83, v103);
    v87 = sub_21700AD14();
    v88 = v127;
    v89 = v100;
    *v100 = v126;
    *(v89 + 16) = v88;
    v90 = v123;
    *(v89 + 40) = v122;
    *(v89 + 32) = v128;
    *(v89 + 56) = v90;
    v91 = v114;
    *(v89 + 72) = v124;
    *(v89 + 80) = v91;
    *(v89 + 88) = v120;
    *(v89 + 96) = v78;
    *(v89 + 104) = v81;
    *(v89 + 112) = v80;
    v92 = type metadata accessor for ReplayPageToolbarProvider(0);
    v93 = v92[9];
    v94 = *(v84 + 32);
    v120 = *(v116 + 24);
    v94(v89 + v93, v85, v86);
    *(v89 + v92[10]) = v87;
    *(v89 + v92[11]) = v120;
    __swift_storeEnumTagSinglePayload(v89, 0, 1, v92);

    swift_unknownObjectRetain();
    sub_216EC85F4(v89);
    v57 = v113;
    goto LABEL_45;
  }

LABEL_34:
  sub_2166997CC(&v126, &qword_27CAB6DB0, &qword_217016C00);
  if (*(v60 + *(v107 + 76)))
  {
    v72 = type metadata accessor for ReplayPageToolbarProvider(0);
    v73 = v97;
    __swift_storeEnumTagSinglePayload(v97, 1, 1, v72);

    sub_216EC85F4(v73);
LABEL_45:

    sub_2166997CC(v117, &qword_27CAB9320, &qword_21701C9B8);
    return sub_2166997CC(v57, &qword_27CAB9328, &qword_21701C9C0);
  }

LABEL_48:
  type metadata accessor for ReplayToolbarPagePresenter(0);
  sub_2166DB5A4(&qword_27CAB9120, type metadata accessor for ReplayToolbarPagePresenter, &unk_21706CCA4);
  result = sub_217008CD4();
  __break(1u);
  return result;
}

uint64_t sub_216825778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  v6[15] = swift_task_alloc();
  sub_21700EA34();
  v6[16] = sub_21700EA24();
  v8 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_21682584C, v8, v7);
}

uint64_t sub_21682584C()
{
  v1 = *(v0 + 96);

  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20, &unk_2170187A0);
  MEMORY[0x21CE9BEE0]();
  if ((*(v0 + 57) & 1) == 0)
  {
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    type metadata accessor for MusicPageMetricsProvider(0);
    type metadata accessor for ObjectGraph(0);
    sub_21700E094();
    v7 = *(v0 + 88);
    v8 = *(type metadata accessor for MappedReplayPage(0) + 24);
    v9 = sub_21700D194();
    OUTLINED_FUNCTION_34();
    (*(v10 + 16))(v5, v6 + v8, v9);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v9);
    v11 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
    swift_beginAccess();
    sub_216826A18(v5, v7 + v11);
    swift_endAccess();

    *(v0 + 64) = v2;
    *(v0 + 72) = v3;
    *(v0 + 80) = v4;
    *(v0 + 58) = 1;
    sub_21700B0D4();

    sub_217007D74();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_216825A28()
{
  v2 = type metadata accessor for ReplayPageContentView(0);
  OUTLINED_FUNCTION_36(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2166DFAC0;

  return sub_216823670(v5, v6, v0 + v4);
}

unint64_t sub_216825B00()
{
  result = qword_27CAB9208;
  if (!qword_27CAB9208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB91E8, &qword_21701C7D8);
    sub_216825BB8();
    sub_2166D9530(&qword_27CAB92D0, &qword_27CAB92D8, &qword_21701C898, &unk_217024CEC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9208);
  }

  return result;
}

unint64_t sub_216825BB8()
{
  result = qword_27CAB9210;
  if (!qword_27CAB9210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB91E0, &qword_21701C7D0);
    sub_216825C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9210);
  }

  return result;
}

unint64_t sub_216825C44()
{
  result = qword_27CAB9218;
  if (!qword_27CAB9218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB91D8, &qword_21701C7C8);
    sub_216825CFC();
    sub_2166D9530(&qword_27CAB92C0, &qword_27CAB92C8, &qword_21701C890, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9218);
  }

  return result;
}

unint64_t sub_216825CFC()
{
  result = qword_27CAB9220;
  if (!qword_27CAB9220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB91D0, &qword_21701C7C0);
    sub_216825DB4();
    sub_2166D9530(&qword_280E2A7F8, &qword_27CAB92B8, &qword_217024FA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9220);
  }

  return result;
}

unint64_t sub_216825DB4()
{
  result = qword_27CAB9228;
  if (!qword_27CAB9228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB91C8, &qword_21701C7B8);
    sub_216825E6C();
    sub_2166D9530(&qword_280E2A788, &qword_27CAB92B0, &unk_21701C880, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9228);
  }

  return result;
}

unint64_t sub_216825E6C()
{
  result = qword_27CAB9230;
  if (!qword_27CAB9230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB91C0, &qword_21701C7B0);
    sub_216825F24();
    sub_2166D9530(&qword_280E2A770, &qword_27CAB92A8, &unk_217024F90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9230);
  }

  return result;
}

unint64_t sub_216825F24()
{
  result = qword_27CAB9238;
  if (!qword_27CAB9238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB91B8, &qword_21701C7A8);
    sub_216825FDC();
    sub_2166D9530(&qword_280E2A7B8, &qword_27CAB92A0, &unk_21701C870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9238);
  }

  return result;
}

unint64_t sub_216825FDC()
{
  result = qword_27CAB9240;
  if (!qword_27CAB9240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB91B0, &qword_21701C7A0);
    sub_216826094();
    sub_2166D9530(&qword_280E2A778, &qword_27CAB9298, &unk_2170544C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9240);
  }

  return result;
}

unint64_t sub_216826094()
{
  result = qword_27CAB9248;
  if (!qword_27CAB9248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB91A8, &qword_21701C798);
    sub_21682614C();
    sub_2166D9530(&qword_280E2A768, &qword_27CAB9290, &unk_21701C860, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9248);
  }

  return result;
}

unint64_t sub_21682614C()
{
  result = qword_27CAB9250;
  if (!qword_27CAB9250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9258, &qword_21701C848);
    sub_216826204();
    sub_2166D9530(&qword_280E2A768, &qword_27CAB9290, &unk_21701C860, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9250);
  }

  return result;
}

unint64_t sub_216826204()
{
  result = qword_27CAB9260;
  if (!qword_27CAB9260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB91A0, &qword_21701C790);
    sub_2168262BC();
    sub_2166D9530(&qword_27CAB9280, &qword_27CAB9288, &qword_21701C858, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9260);
  }

  return result;
}

unint64_t sub_2168262BC()
{
  result = qword_27CAB9268;
  if (!qword_27CAB9268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9198, &qword_21701C788);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9188, &qword_21701C778);
    sub_2166D9530(&qword_27CAB9270, &qword_27CAB9188, &qword_21701C778, MEMORY[0x277CDF340]);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A738, &qword_27CAB9278, &qword_21701C850, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9268);
  }

  return result;
}

unint64_t sub_2168263E4()
{
  result = qword_27CAB92E0;
  if (!qword_27CAB92E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9178, &qword_21701C768);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9140, &qword_21701C730);
    sub_2166D9530(qword_280E48638, &qword_27CAB9140, &qword_21701C730, MEMORY[0x277D7EAF0]);
    swift_getOpaqueTypeConformance2();
    sub_216825B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB92E0);
  }

  return result;
}

uint64_t sub_2168264E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

unint64_t sub_216826548()
{
  result = qword_27CAB92F0;
  if (!qword_27CAB92F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92E8, &qword_21701C8A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92F8, &qword_21701C8A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9300, &qword_21701C8B0);
    sub_2166D9530(&qword_27CAB9308, &qword_27CAB9300, &qword_21701C8B0, &unk_217068A78);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB92F0);
  }

  return result;
}

uint64_t sub_216826680()
{
  v1 = type metadata accessor for ReplayPageContentView(0);
  OUTLINED_FUNCTION_2(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = (*(v4 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for MappedReplayPage(0);
  OUTLINED_FUNCTION_36(v6);
  v8 = *(v0 + v5);
  v9 = v0 + ((v5 + *(v7 + 80) + 8) & ~*(v7 + 80));

  return sub_216824694(v0 + v3, v8, v9);
}

uint64_t sub_216826750(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for ReplayPageContentView(0);
  OUTLINED_FUNCTION_2(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = type metadata accessor for MappedReplayPage(0);
  OUTLINED_FUNCTION_36(v10);
  v12 = (v9 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v9);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_216826D94;

  return sub_216825778(a1, v13, v14, v1 + v7, v15, v1 + v12);
}

uint64_t sub_2168268B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216826960(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_216826A18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_216826A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MappedReplayPage(0);
  OUTLINED_FUNCTION_2(v7);
  v9 = v8;
  v11 = v10;
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = *(v3 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_216823D30(a1, a2, v3 + v12, v13, a3);
}

uint64_t sub_216826B40(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

unint64_t sub_216826B9C()
{
  result = qword_27CAB9340;
  if (!qword_27CAB9340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB62D8, &qword_21701C700);
    sub_216826C54();
    sub_2166D9530(&qword_27CAB9358, &qword_27CAB9360, &unk_21701CA80, &unk_217024D3C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9340);
  }

  return result;
}

unint64_t sub_216826C54()
{
  result = qword_27CAB9348;
  if (!qword_27CAB9348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9350, &qword_21701CA78);
    sub_2168263E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9158, &qword_21701C748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9150, &qword_21701C740);
    sub_2166D9530(&qword_280E48630, &qword_27CAB9150, &qword_21701C740, MEMORY[0x277D7EB80]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9348);
  }

  return result;
}

BOOL sub_216826E78(uint64_t a1, int a2)
{
  v37 = a2;
  v36 = a1;
  OUTLINED_FUNCTION_5_6();
  v3 = OUTLINED_FUNCTION_6_26();
  sub_21700F164();
  OUTLINED_FUNCTION_1();
  v34 = v5;
  v35 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v33 = &v30 - v7;
  v8 = OUTLINED_FUNCTION_6_26();
  sub_21700F164();
  OUTLINED_FUNCTION_1();
  v31 = v10;
  v32 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for MusicAppDestination(0);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_6_26();
  OUTLINED_FUNCTION_110();
  v18 = sub_21700F164();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  v23 = &v30 - v22;
  OUTLINED_FUNCTION_0_44();
  sub_216828330(v36, v17);
  if (v37)
  {
    if (v37 == 1)
    {
      swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_9_25();
      v24 = v33;
      v25(v17, v3);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v3);
      (*(v34 + 8))(v24, v35);
    }

    else
    {
      swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_9_25();
      v28(v17, v2);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v2);
      (*(v20 + 8))(v23, v18);
    }
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_9_25();
    v27(v17, v8);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v8);
    (*(v31 + 8))(v13, v32);
  }

  return EnumTagSinglePayload != 1;
}

uint64_t sub_2168271E8(uint64_t a1, void *a2, uint64_t a3)
{
  v88 = a3;
  v91 = a2;
  v92 = a1;
  OUTLINED_FUNCTION_5_6();
  v5 = *(v4 + 128);
  v84 = v3;
  v7 = *(v6 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = v7;
  v83 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v81 = type metadata accessor for WrappedAppPageDestination(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  OUTLINED_FUNCTION_1();
  v80 = v11;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v79 = &v76 - v13;
  v87 = type metadata accessor for FlowAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  v86 = type metadata accessor for MusicAppDestinationContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v78 = v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v76 - v21;
  v23 = type metadata accessor for MusicAppDestination(0);
  MEMORY[0x28223BE20](v23 - 8);
  OUTLINED_FUNCTION_7();
  v26 = v25 - v24;
  v27 = sub_21700F164();
  OUTLINED_FUNCTION_1();
  v29 = v28;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  v32 = &v76 - v31;
  v90 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_0();
  v89 = v34;
  MEMORY[0x28223BE20](v35);
  v77 = &v76 - v36;
  MEMORY[0x28223BE20](v37);
  v97 = &v76 - v38;
  OUTLINED_FUNCTION_0_44();
  sub_216828330(v92, v26);
  v39 = *(AssociatedConformanceWitness + 16);
  v85 = AssociatedConformanceWitness;
  v39(v26, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (__swift_getEnumTagSinglePayload(v32, 1, AssociatedTypeWitness) == 1)
  {
    (*(v29 + 8))(v32, v27);
    sub_216828280();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v41 = v90;
    (*(v90 + 32))(v97, v32, AssociatedTypeWitness);
    sub_216828330(v91, v17);
    v42 = v87;
    sub_2168282D4(v17 + *(v87 + 40), v22, &qword_27CABF7B0, &qword_217016E20);
    sub_2168282D4(v17 + *(v42 + 32), &v22[*(v86 + 20)], &qword_27CABA820, &unk_217018CE0);
    sub_216828388(v17, type metadata accessor for FlowAction);
    v43 = v85;
    v44 = (*(v85 + 24))(AssociatedTypeWitness, v85);
    v76 = v22;
    if (v44)
    {
      if (qword_27CAB5930 != -1)
      {
        swift_once();
      }

      v45 = sub_217007CA4();
      __swift_project_value_buffer(v45, qword_27CAB9390);
      v46 = *(v41 + 16);
      v47 = v77;
      v48 = v97;
      v46(v77, v97, AssociatedTypeWitness);
      v49 = sub_217007C84();
      v50 = sub_21700EDA4();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        LODWORD(v92) = v50;
        v52 = v51;
        v91 = swift_slowAlloc();
        *&v93 = v91;
        *v52 = 136446210;
        v46(v89, v47, AssociatedTypeWitness);
        v53 = sub_21700E594();
        v55 = v54;
        v56 = *(v41 + 8);
        v57 = OUTLINED_FUNCTION_12_18();
        v56(v57);
        v58 = sub_2166A85FC(v53, v55, &v93);

        *(v52 + 4) = v58;
        v59 = v56;
        _os_log_impl(&dword_216679000, v49, v92, "Delegating flow action navigation to app: %{public}s", v52, 0xCu);
        v60 = v91;
        __swift_destroy_boxed_opaque_existential_1Tm(v91);
        v48 = v97;
        MEMORY[0x21CEA1440](v60, -1, -1);
        MEMORY[0x21CEA1440](v52, -1, -1);
      }

      else
      {

        v59 = *(v41 + 8);
        v73 = OUTLINED_FUNCTION_12_18();
        v59(v73);
      }

      v74 = v76;
      (*(v83 + 128))(v48, v88, v76, v82);
      OUTLINED_FUNCTION_3_36();
      sub_216828388(v74, v75);
      return (v59)(v48, AssociatedTypeWitness);
    }

    else
    {
      v61 = v22;
      v87 = sub_216ED9748();
      v63 = v62;
      v64 = sub_216ED9884();
      v66 = v65;
      (*(v41 + 16))(v89, v97, AssociatedTypeWitness);
      *&v93 = v87;
      *(&v93 + 1) = v63;
      v94 = v64;
      v95 = v66;
      v67 = v61;
      v68 = v78;
      sub_216828330(v67, v78);
      OUTLINED_FUNCTION_0_44();
      sub_216828330(v92, v26);
      sub_21700DF14();
      v69 = v64;
      sub_21677A3F0(v64, v66);
      sub_216EB0ED4(v96);
      v70 = v79;
      sub_216827A04(v89, &v93, v68, v26, v96, AssociatedTypeWitness, v43, v79);
      v71 = v81;
      swift_getWitnessTable();
      MusicStackAuthority.push<A>(_:)();

      sub_21677A510(v69, v66);
      (*(v80 + 8))(v70, v71);
      OUTLINED_FUNCTION_3_36();
      sub_216828388(v76, v72);
      return (*(v90 + 8))(v97, AssociatedTypeWitness);
    }
  }
}

__n128 sub_216827A04@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a6 - 8) + 32))(a8, a1, a6);
  v16 = type metadata accessor for WrappedAppPageDestination(0, a6, a7, v15);
  v17 = (a8 + v16[9]);
  v18 = a2[1];
  *v17 = *a2;
  v17[1] = v18;
  sub_2168283E0(a3, a8 + v16[10]);
  sub_2168283E0(a4, a8 + v16[11]);
  v19 = a8 + v16[12];
  result = *a5;
  v21 = *(a5 + 16);
  *v19 = *a5;
  *(v19 + 16) = v21;
  *(v19 + 32) = *(a5 + 32);
  return result;
}

uint64_t sub_216827BD8()
{
  OUTLINED_FUNCTION_5_6();
  (*(*(*(v2 + 120) - 8) + 8))(v0 + *(v1 + 136));
  return v0;
}

uint64_t sub_216827C40()
{
  sub_216827BD8();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216827CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_21700E494() & 1) != 0 && (v9 = type metadata accessor for WrappedAppPageDestination(0, a3, a4, v8), v10 = v9[9], v11 = *(a1 + v10 + 8), v12 = *(a1 + v10 + 16), v13 = *(a1 + v10 + 24), *&v38 = *(a1 + v10), *(&v38 + 1) = v11, *&v39 = v12, *(&v39 + 1) = v13, v14 = (a2 + v10), v15 = v14[1], v16 = v14[2], v17 = v14[3], *&v34 = *v14, *(&v34 + 1) = v15, *&v35 = v16, *(&v35 + 1) = v17, sub_21700DF14(), sub_21677A3F0(v12, v13), sub_21700DF14(), sub_21677A3F0(v16, v17), LOBYTE(v12) = static MusicPlayActivityFields.== infix(_:_:)(&v38, &v34), v18 = v35, , sub_21677A510(v18, *(&v18 + 1)), v19 = v39, , sub_21677A510(v19, *(&v19 + 1)), (v12) && (static MusicAppDestinationContext.== infix(_:_:)(), (v26) && (static MusicAppDestination.== infix(_:_:)(a1 + v9[11], a2 + v9[11], v20, v21, v22, v23, v24, v25, v34, *(&v34 + 1), v35, *(&v35 + 1), v36, v37, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, v41), (v27))
  {
    v28 = v9[12];
    v29 = *(a1 + v28 + 16);
    v34 = *(a1 + v28);
    v35 = v29;
    LOWORD(v36) = *(a1 + v28 + 32);
    v30 = (a2 + v28);
    v31 = v30[1];
    v38 = *v30;
    v39 = v31;
    LOWORD(v40) = *(v30 + 16);
    v32 = sub_216EB3330(&v34, &v38);
  }

  else
  {
    v32 = 0;
  }

  return v32 & 1;
}

uint64_t sub_216827E1C(uint64_t a1, int *a2)
{
  v5 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v23 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v22 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  sub_21700E434();
  v13 = v2 + a2[9];
  v14 = *(v13 + 24);
  if (*(v13 + 8))
  {
    OUTLINED_FUNCTION_15_14();
    sub_21700E614();
  }

  else
  {
    OUTLINED_FUNCTION_14_14();
  }

  if (v14 >> 60 == 15)
  {
    OUTLINED_FUNCTION_14_14();
  }

  else
  {
    OUTLINED_FUNCTION_15_14();
    sub_217005FC4();
  }

  v15 = v2 + a2[10];
  sub_2168282D4(v15, &v26, &qword_27CABF7B0, &qword_217016E20);
  if (*(&v27 + 1))
  {
    v24[0] = v26;
    v24[1] = v27;
    v25 = v28;
    OUTLINED_FUNCTION_15_14();
    sub_21700F354();
    sub_216788110(v24);
  }

  else
  {
    OUTLINED_FUNCTION_14_14();
  }

  v16 = type metadata accessor for MusicAppDestinationContext(0);
  sub_2168282D4(v15 + *(v16 + 20), v12, &qword_27CABA820, &unk_217018CE0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v5) == 1)
  {
    OUTLINED_FUNCTION_14_14();
  }

  else
  {
    v18 = v22;
    v17 = v23;
    (*(v23 + 32))(v22, v12, v5);
    OUTLINED_FUNCTION_15_14();
    sub_216829E2C();
    sub_21700E434();
    (*(v17 + 8))(v18, v5);
  }

  MusicAppDestination.hash(into:)();
  v19 = (v2 + a2[12]);
  v20 = v19[1];
  v26 = *v19;
  v27 = v20;
  LOWORD(v28) = *(v19 + 16);
  return sub_216EB340C(a1);
}

uint64_t sub_2168280B8(int *a1)
{
  sub_21700F8F4();
  sub_216827E1C(v3, a1);
  return sub_21700F944();
}

uint64_t sub_216828140(uint64_t a1, int *a2)
{
  sub_21700F8F4();
  sub_216827E1C(v4, a2);
  return sub_21700F944();
}

uint64_t sub_216828190()
{
  v0 = OUTLINED_FUNCTION_8();
  sub_21677A3F0(v0, v1);
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216828200()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAB9390);
  __swift_project_value_buffer(v0, qword_27CAB9390);
  return sub_217007C94();
}

unint64_t sub_216828280()
{
  result = qword_27CAB93A8;
  if (!qword_27CAB93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB93A8);
  }

  return result;
}

uint64_t sub_2168282D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216828330(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216828388(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2168283E0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for AppDestinationPageProviderBox.Error(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unsigned __int16 *sub_2168284E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v69 = *(a3 + 16);
  v92 = *(v69 - 8);
  v3 = *(v92 + 84);
  v67 = sub_217005EF4();
  v4 = *(v67 - 8);
  v91 = *(v4 + 84);
  v5 = v91 - 1;
  if (!v91)
  {
    v5 = 0;
  }

  v85 = v3;
  if (v5 <= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v68 = v6;
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v86 = v7;
  v84 = *(sub_21700C384() - 8);
  v8 = *(v84 + 64);
  v83 = *(sub_2170072A4() - 8);
  if (v8 <= *(v83 + 64))
  {
    v9 = *(v83 + 64);
  }

  else
  {
    v9 = v8;
  }

  v82 = *(sub_21700C1E4() - 8);
  v10 = *(v82 + 64);
  v11 = *(sub_21700C084() - 8);
  v81 = v11;
  v12 = *(v11 + 64);
  if (v10 <= v12)
  {
    v13 = *(v11 + 64);
  }

  else
  {
    v13 = v10;
  }

  if (v13 <= 0x10)
  {
    v14 = 16;
  }

  else
  {
    v14 = v13;
  }

  if (v9 <= v14 + 1)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = v9;
  }

  v16 = *(sub_21700C924() - 8);
  v80 = v16;
  v17 = *(v16 + 64);
  if (v15 <= v17)
  {
    v15 = *(v16 + 64);
  }

  v79 = *(sub_21700C734() - 8);
  v18 = *(v79 + 64);
  if (v15 > v18)
  {
    v18 = v15;
  }

  if (v18 <= (v14 & 0xFFFFFFFFFFFFFFF8) + 24)
  {
    v18 = (v14 & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  if (v17 <= 0x10)
  {
    v19 = 16;
  }

  else
  {
    v19 = v17;
  }

  v20 = *(v4 + 80);
  v21 = v19 + v20;
  v22 = (v19 & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v18 <= v22)
  {
    v18 = v22;
  }

  v23 = *(v4 + 64);
  if (v18 <= ((v21 + 1) & ~v20) + v23)
  {
    v18 = ((v21 + 1) & ~v20) + v23;
  }

  if (v18 <= v17)
  {
    v18 = v17;
  }

  if (v18 <= v12)
  {
    v24 = v12;
  }

  else
  {
    v24 = v18;
  }

  v78 = *(sub_217006E94() - 8);
  v25 = *(v78 + 64);
  if (v25 <= v17)
  {
    v25 = v17;
  }

  if (v12 <= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v12;
  }

  v27 = *(sub_21700C4B4() - 8);
  v77 = v27;
  if (*(v27 + 84))
  {
    v28 = *(v27 + 64);
  }

  else
  {
    v28 = *(v27 + 64) + 1;
  }

  v88 = v28;
  v90 = v20 + 16;
  v29 = (v20 + 16 + ((((((v28 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v20;
  v30 = v29 + v23;
  v31 = v29 + v23 + 2;
  if (v31 <= v26)
  {
    v32 = v26;
  }

  else
  {
    v32 = v29 + v23 + 2;
  }

  if (v32 <= 0x18)
  {
    v32 = 24;
  }

  if (v24 <= v32 + 1)
  {
    v24 = v32 + 1;
  }

  if (v9 <= v10)
  {
    v33 = v10;
  }

  else
  {
    v33 = v9;
  }

  v34 = *(sub_21700C554() - 8);
  if (*(v34 + 64) > v33)
  {
    v33 = *(v34 + 64);
  }

  v76 = *(sub_217006F54() - 8);
  v35 = *(v76 + 64);
  if (v35 <= v33)
  {
    v35 = v33;
  }

  if (((((v30 + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 <= v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = ((((v30 + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v75 = *(sub_21700C254() - 8);
  if (*(v75 + 64) > v36)
  {
    v36 = *(v75 + 64);
  }

  v74 = *(sub_217006B84() - 8);
  if (*(v74 + 64) > v36)
  {
    v36 = *(v74 + 64);
  }

  v73 = *(sub_21700BA44() - 8);
  v37 = *(v73 + 64);
  if (v37 <= v36)
  {
    v37 = v36;
  }

  if (v17 <= v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = v17;
  }

  v72 = *(sub_21700C994() - 8);
  if (*(v72 + 64) > v38)
  {
    v38 = *(v72 + 64);
  }

  v71 = *(sub_21700BEA4() - 8);
  v39 = *(v71 + 64);
  if (v39 <= v38)
  {
    v39 = v38;
  }

  if (((v20 + (v88 & 0xFFFFFFFFFFFFFFF8) + 24) & ~v20) + v23 > v39)
  {
    v39 = ((v20 + (v88 & 0xFFFFFFFFFFFFFFF8) + 24) & ~v20) + v23;
  }

  if (v31 > v39)
  {
    v39 = v31;
  }

  if (v12 <= v39)
  {
    v40 = v39;
  }

  else
  {
    v40 = v12;
  }

  v89 = *(sub_21700C644() - 8);
  if (*(v89 + 64) > v40)
  {
    v40 = *(v89 + 64);
  }

  v70 = *(sub_21700C2F4() - 8);
  if (*(v70 + 64) > v40)
  {
    v40 = *(v70 + 64);
  }

  v41 = *(sub_2170073D4() - 8);
  if (*(v41 + 64) > v40)
  {
    v40 = *(v41 + 64);
  }

  v42 = *(sub_217007324() - 8);
  if (*(v42 + 64) <= v40)
  {
    v43 = v40;
  }

  else
  {
    v43 = *(v42 + 64);
  }

  v44 = *(sub_217007264() - 8);
  if (*(v44 + 64) > v43)
  {
    v43 = *(v44 + 64);
  }

  v45 = *(sub_217007064() - 8);
  if (*(v45 + 64) > v43)
  {
    v43 = *(v45 + 64);
  }

  v46 = *(sub_2170070F4() - 8);
  v47 = *(v46 + 64);
  if (v47 <= v43)
  {
    v47 = v43;
  }

  if (v24 <= v47 + 1)
  {
    v48 = v47 + 1;
  }

  else
  {
    v48 = v24;
  }

  if (v48 <= v17)
  {
    v48 = v17;
  }

  if (v48 <= v23)
  {
    v48 = v23;
  }

  if (v48 <= (v90 & ~v20) + v23)
  {
    v48 = (v90 & ~v20) + v23;
  }

  if (v91)
  {
    v49 = v23;
  }

  else
  {
    v49 = v23 + 1;
  }

  if (v48 <= ((v20 + 17) & ~v20) + v49)
  {
    v48 = ((v20 + 17) & ~v20) + v49;
  }

  if (v48 <= 0x11)
  {
    v50 = 17;
  }

  else
  {
    v50 = v48;
  }

  v51 = *(v92 + 64);
  if (!a2)
  {
    return 0;
  }

  v52 = v20 | 7;
  result = a1;
  if (v86 < a2)
  {
    v54 = v20 | ((*(v81 + 80) | *(v80 + 80) | *(v79 + 80) | *(v78 + 80) | *(v77 + 80)) | (*(v34 + 80) | *(v76 + 80) | *(v75 + 80) | *(v74 + 80) | *(v73 + 80) | *(v72 + 80) | *(v71 + 80) | *(v89 + 80) | *(v70 + 80) | *(v41 + 80) | *(v42 + 80) | *(v44 + 80) | *(v45 + 80) | *(v46 + 80) | *(v84 + 80) | *(v83 + 80) | *(v82 + 80))) & 0xF8 | 7;
    v55 = ((v50 + ((v49 - ((-41 - v20) | v20) - ((-33 - v52 - ((v51 + 7) & 0xFFFFFFFFFFFFFFF8)) | v52) + v54 - 2) & ~v54) + 8) & 0xFFFFFFFFFFFFFFF8) + 34;
    if (v55 <= 3)
    {
      v56 = ((a2 - v86 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v56 = 2;
    }

    if (v56 >= 0x10000)
    {
      v57 = 4;
    }

    else
    {
      v57 = 2;
    }

    if (v56 < 0x100)
    {
      v57 = 1;
    }

    if (v56 >= 2)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    switch(v58)
    {
      case 1:
        v59 = *(a1 + v55);
        if (!*(a1 + v55))
        {
          goto LABEL_141;
        }

        goto LABEL_134;
      case 2:
        v59 = *(a1 + v55);
        if (!*(a1 + v55))
        {
          goto LABEL_141;
        }

        goto LABEL_134;
      case 3:
        __break(1u);
        return result;
      case 4:
        v59 = *(a1 + v55);
        if (!v59)
        {
          goto LABEL_141;
        }

LABEL_134:
        v60 = v55 > 3;
        if (v55 <= 3)
        {
          v61 = (v59 - 1) << (8 * v55);
        }

        else
        {
          v61 = 0;
        }

        if (v60)
        {
          v66 = *a1;
        }

        else
        {
          v66 = *a1;
        }

        v64 = v86 + (v66 | v61);
        break;
      default:
        goto LABEL_141;
    }

    return (v64 + 1);
  }

LABEL_141:
  if (v85 == v86)
  {

    return __swift_getEnumTagSinglePayload(a1, v85, v69);
  }

  else
  {
    v62 = (a1 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v68 <= 0x7FFFFFFE)
    {
      v63 = *(v62 + 8);
      if (v63 >= 0xFFFFFFFF)
      {
        LODWORD(v63) = -1;
      }

      v64 = v63 - 1;
      if (v64 < 0)
      {
        v64 = -1;
      }

      return (v64 + 1);
    }

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v20 + ((v20 + v62 + 32) & ~v52) + 40) & ~v20, v91, v67);
    if (EnumTagSinglePayload >= 2)
    {
      return (EnumTagSinglePayload - 1);
    }

    else
    {
      return 0;
    }
  }
}

void sub_2168290FC(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v73 = *(a4 + 16);
  v96 = *(v73 - 8);
  v4 = *(v96 + 84);
  v72 = sub_217005EF4();
  v5 = *(v72 - 8);
  v92 = *(v5 + 84);
  v6 = v92 - 1;
  if (!v92)
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v6 = 2147483646;
  }

  v74 = v4;
  v75 = v6;
  if (v4 > v6)
  {
    v6 = v4;
  }

  v97 = v6;
  v95 = *(sub_21700C384() - 8);
  v7 = *(v95 + 64);
  v94 = *(sub_2170072A4() - 8);
  if (v7 <= *(v94 + 64))
  {
    v8 = *(v94 + 64);
  }

  else
  {
    v8 = v7;
  }

  v93 = *(sub_21700C1E4() - 8);
  v9 = *(v93 + 64);
  v10 = *(sub_21700C084() - 8);
  v91 = v10;
  v11 = *(v10 + 64);
  if (v9 <= v11)
  {
    v12 = *(v10 + 64);
  }

  else
  {
    v12 = v9;
  }

  if (v12 <= 0x10)
  {
    v13 = 16;
  }

  else
  {
    v13 = v12;
  }

  if (v8 <= v13 + 1)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = v8;
  }

  v15 = *(sub_21700C924() - 8);
  v90 = v15;
  v16 = *(v15 + 64);
  if (v14 <= v16)
  {
    v14 = *(v15 + 64);
  }

  v89 = *(sub_21700C734() - 8);
  v17 = *(v89 + 64);
  if (v14 > v17)
  {
    v17 = v14;
  }

  if (v17 <= (v13 & 0xFFFFFFFFFFFFFFF8) + 24)
  {
    v17 = (v13 & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  if (v16 <= 0x10)
  {
    v18 = 16;
  }

  else
  {
    v18 = v16;
  }

  v19 = *(v5 + 80);
  v78 = v19;
  v20 = v18 + v19;
  v21 = (v18 & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v17 <= v21)
  {
    v17 = v21;
  }

  v22 = *(v5 + 80);
  v23 = *(v5 + 64);
  if (v17 <= ((v20 + 1) & ~v19) + v23)
  {
    v17 = ((v20 + 1) & ~v19) + v23;
  }

  if (v17 <= v16)
  {
    v17 = v16;
  }

  if (v17 <= v11)
  {
    v24 = v11;
  }

  else
  {
    v24 = v17;
  }

  v88 = *(sub_217006E94() - 8);
  v25 = *(v88 + 64);
  if (v25 <= v16)
  {
    v25 = v16;
  }

  if (v11 <= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v11;
  }

  v87 = *(sub_21700C4B4() - 8);
  if (*(v87 + 84))
  {
    v27 = *(v87 + 64);
  }

  else
  {
    v27 = *(v87 + 64) + 1;
  }

  v101 = v27;
  v84 = v22 + 16;
  v28 = (v22 + 16 + ((((((v27 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v22;
  v29 = v28 + v23;
  v30 = v28 + v23 + 2;
  if (v30 <= v26)
  {
    v31 = v26;
  }

  else
  {
    v31 = v28 + v23 + 2;
  }

  if (v31 <= 0x18)
  {
    v31 = 24;
  }

  if (v24 <= v31 + 1)
  {
    v32 = v31 + 1;
  }

  else
  {
    v32 = v24;
  }

  v83 = v32;
  if (v8 <= v9)
  {
    v8 = v9;
  }

  v86 = *(sub_21700C554() - 8);
  if (*(v86 + 64) > v8)
  {
    v8 = *(v86 + 64);
  }

  v85 = *(sub_217006F54() - 8);
  v33 = *(v85 + 64);
  if (v33 <= v8)
  {
    v33 = v8;
  }

  if (((((v29 + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 <= v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = ((((v29 + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v82 = *(sub_21700C254() - 8);
  if (*(v82 + 64) > v34)
  {
    v34 = *(v82 + 64);
  }

  v81 = *(sub_217006B84() - 8);
  if (*(v81 + 64) > v34)
  {
    v34 = *(v81 + 64);
  }

  v80 = *(sub_21700BA44() - 8);
  v35 = *(v80 + 64);
  if (v35 <= v34)
  {
    v35 = v34;
  }

  if (v16 <= v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = v16;
  }

  v79 = *(sub_21700C994() - 8);
  if (*(v79 + 64) > v36)
  {
    v36 = *(v79 + 64);
  }

  v77 = *(sub_21700BEA4() - 8);
  v37 = *(v77 + 64);
  if (v37 <= v36)
  {
    v37 = v36;
  }

  if ((((v101 & 0xFFFFFFFFFFFFFFF8) + v78 + 24) & ~v22) + v23 > v37)
  {
    v37 = (((v101 & 0xFFFFFFFFFFFFFFF8) + v78 + 24) & ~v22) + v23;
  }

  if (v30 > v37)
  {
    v37 = v30;
  }

  if (v11 <= v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = v11;
  }

  v76 = *(sub_21700C644() - 8);
  if (*(v76 + 64) > v38)
  {
    v38 = *(v76 + 64);
  }

  v39 = *(sub_21700C2F4() - 8);
  if (*(v39 + 64) > v38)
  {
    v38 = *(v39 + 64);
  }

  v40 = *(sub_2170073D4() - 8);
  if (*(v40 + 64) <= v38)
  {
    v41 = v38;
  }

  else
  {
    v41 = *(v40 + 64);
  }

  v42 = *(sub_217007324() - 8);
  if (*(v42 + 64) > v41)
  {
    v41 = *(v42 + 64);
  }

  v43 = *(sub_217007264() - 8);
  if (*(v43 + 64) <= v41)
  {
    v44 = v41;
  }

  else
  {
    v44 = *(v43 + 64);
  }

  v45 = *(sub_217007064() - 8);
  if (*(v45 + 64) > v44)
  {
    v44 = *(v45 + 64);
  }

  v46 = sub_2170070F4();
  v47 = v92;
  v102 = 0;
  v48 = *(v46 - 8);
  v49 = *(v48 + 64);
  if (v49 <= v44)
  {
    v49 = v44;
  }

  if (v83 <= v49 + 1)
  {
    v50 = v49 + 1;
  }

  else
  {
    v50 = v83;
  }

  if (v50 <= v16)
  {
    v50 = v16;
  }

  if (v50 <= v23)
  {
    v50 = v23;
  }

  if (v50 <= (v84 & ~v22) + v23)
  {
    v50 = (v84 & ~v22) + v23;
  }

  if (v92)
  {
    v51 = v23;
  }

  else
  {
    v51 = v23 + 1;
  }

  if (v50 <= ((v22 + 17) & ~v22) + v51)
  {
    v50 = ((v22 + 17) & ~v22) + v51;
  }

  if (v50 <= 0x11)
  {
    v52 = 17;
  }

  else
  {
    v52 = v50;
  }

  v53 = *(v96 + 64);
  v54 = v78 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v55 = v22 + 32;
  v56 = ((v22 + 40) & ~v22) + v51;
  v57 = v22 | ((*(v91 + 80) | *(v90 + 80) | *(v89 + 80) | *(v88 + 80) | *(v87 + 80)) | (*(v86 + 80) | *(v85 + 80) | *(v82 + 80) | *(v81 + 80) | *(v80 + 80) | *(v79 + 80) | *(v77 + 80) | *(v76 + 80) | *(v39 + 80) | *(v40 + 80) | *(v42 + 80) | *(v43 + 80) | *(v45 + 80) | *(v48 + 80) | *(v95 + 80) | *(v94 + 80) | *(v93 + 80))) & 0xF8 | 7;
  v58 = ((v52 + ((((v22 + 32 + ((v53 + 7) & 0xFFFFFFFFFFFFFFF8)) & v54) + v56 + v57) & ~v57) + 8) & 0xFFFFFFFFFFFFFFF8) + 34;
  if (v97 < a3)
  {
    if (v58 <= 3)
    {
      v59 = ((a3 - v97 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v59 = 2;
    }

    if (v59 >= 0x10000)
    {
      v60 = 4;
    }

    else
    {
      v60 = 2;
    }

    if (v59 < 0x100)
    {
      v60 = 1;
    }

    if (v59 >= 2)
    {
      v61 = v60;
    }

    else
    {
      v61 = 0;
    }

    v102 = v61;
  }

  if (v97 >= a2)
  {
    v64 = a1;
    switch(v102)
    {
      case 1:
        *(a1 + v58) = 0;
        if (a2)
        {
          goto LABEL_142;
        }

        return;
      case 2:
        *(a1 + v58) = 0;
        if (a2)
        {
          goto LABEL_142;
        }

        return;
      case 3:
LABEL_168:
        __break(1u);
        return;
      case 4:
        *(a1 + v58) = 0;
        goto LABEL_141;
      default:
LABEL_141:
        if (!a2)
        {
          return;
        }

LABEL_142:
        if (v74 >= v75)
        {
          v66 = a2;
          v47 = v74;
          v67 = v73;
        }

        else
        {
          v65 = (a1 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
          if (v97 <= 0x7FFFFFFE)
          {
            *(v65 + 8) = a2;
            return;
          }

          v68 = (v55 + v65) & v54;
          if (v75 < a2)
          {
            if (v56 <= 3)
            {
              v69 = ~(-1 << (8 * v56));
            }

            else
            {
              v69 = -1;
            }

            if (v56)
            {
              v70 = v69 & (~v75 + a2);
              if (v56 <= 3)
              {
                v71 = ((v22 + 40) & ~v22) + v51;
              }

              else
              {
                v71 = 4;
              }

              bzero(((v55 + v65) & v54), v56);
              switch(v71)
              {
                case 2:
                  *v68 = v70;
                  break;
                case 3:
                  *v68 = v70;
                  *(v68 + 2) = BYTE2(v70);
                  break;
                case 4:
                  *v68 = v70;
                  break;
                default:
                  *v68 = v70;
                  break;
              }
            }

            return;
          }

          v64 = ((v22 + 40 + v68) & ~v22);
          v66 = a2 + 1;
          v67 = v72;
        }

        __swift_storeEnumTagSinglePayload(v64, v66, v47, v67);
        break;
    }
  }

  else
  {
    v62 = ~v97 + a2;
    bzero(a1, v58);
    if (v58 <= 3)
    {
      v63 = HIWORD(v62) + 1;
    }

    else
    {
      v63 = 1;
    }

    if (v58 > 3)
    {
      *a1 = v62;
    }

    else
    {
      *a1 = v62;
    }

    switch(v102)
    {
      case 1:
        *(a1 + v58) = v63;
        break;
      case 2:
        *(a1 + v58) = v63;
        break;
      case 3:
        goto LABEL_168;
      case 4:
        *(a1 + v58) = v63;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_216829DD8()
{
  result = qword_27CAB93B0;
  if (!qword_27CAB93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB93B0);
  }

  return result;
}

unint64_t sub_216829E2C()
{
  result = qword_27CACA4D0;
  if (!qword_27CACA4D0)
  {
    sub_217005EF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA4D0);
  }

  return result;
}

uint64_t sub_216829E84(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v114 = *(*(*(a3 + 16) - 8) + 64);
  v3 = *(sub_21700D7A4() - 8);
  v4 = *(v3 + 80);
  v113 = v4 + 16;
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = *(v3 + 64) + 1;
  }

  v119 = v5;
  v111 = ((v4 + 16) & ~v4) + v5;
  v117 = v4 | 7;
  v115 = *(sub_217005EF4() - 8);
  v6 = *(v115 + 80);
  v118 = v6 | 7;
  v7 = *(sub_21700C4B4() - 8);
  v8 = *(v7 + 80);
  v9 = *(sub_21700C444() - 8);
  v10 = *(v9 + 80);
  v11 = v10 | v8;
  v12 = v4 | 7 | v6 | v11;
  v13 = (v111 + v12) & ~v12;
  v106 = v4;
  v107 = v4 + 40;
  v14 = (v4 + 40) & ~v4;
  if (*(v9 + 84) <= *(v7 + 84))
  {
    v15 = *(v7 + 84);
  }

  else
  {
    v15 = *(v9 + 84);
  }

  v103 = v15;
  v16 = (v6 + 113) & ~v6;
  v92 = v6;
  v17 = *(v115 + 64);
  v18 = *(v9 + 80);
  v105 = *(v9 + 64);
  v19 = ((*(v7 + 64) + v10) & ~v10) + v105;
  v112 = v19;
  if (!*(v115 + 84))
  {
    ++v17;
  }

  v98 = v17;
  v104 = v14 + v119;
  v94 = (v14 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = v17 + v16;
  v90 = v17 + v16;
  if (v15)
  {
    v21 = v19;
  }

  else
  {
    v21 = v19 + 1;
  }

  v88 = v21;
  v22 = ((-2 - v12) | v12) & 0xFFFFFFFFFFFFFFFELL;
  v23 = ((-41 - v6 - ((((v94 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v118) - v20;
  if (v23 >= ((-161 - v11) | v11) - v21 - 3)
  {
    v23 = ((-161 - v11) | v11) - v21 - 3;
  }

  if (v23 >= 0xFFFFFFFFFFFFFFA7)
  {
    v23 = -89;
  }

  v24 = v22 + v23;
  v97 = v22 + v23;
  v25 = *(sub_21700CDF4() - 8);
  v26 = *(v25 + 80);
  v27 = *(v25 + 64);
  v108 = (-59 - (v26 | 7) - ((v13 - v24 + 9) & 0xFFFFFFFFFFFFFFF8)) | v26 | 7;
  v28 = (-17 - v26) | v26;
  v29 = *(sub_21700D284() - 8);
  v30 = *(v29 + 80);
  v116 = v30 | 7;
  v87 = v18 | 7;
  v101 = *(sub_2170061E4() - 8);
  v31 = *(v101 + 80);
  v99 = *(sub_21700D194() - 8);
  v96 = *(v99 + 80);
  v109 = (v27 - v28 - v108 + (v12 | v18 | v30 | v31 | v96) - 2) & ~(v12 | v18 | v30 | v31 | v96);
  v32 = v105 + ((v18 + 8) & ~v18);
  v33 = v119 + 7;
  v34 = (v119 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = v34;
  v35 = (v34 + 47) & 0xFFFFFFFFFFFFFFF8;
  v36 = ((v88 + v31 + ((v35 + 16 + v11) & ~v11) + 1) & ~v31) + *(v101 + 64);
  v37 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v38 = *(v29 + 64) + ((v30 + 65) & ~v30);
  v93 = (v38 + ((((v37 + 15) & 0xFFFFFFFFFFFFFFF8) + v116 + 16) & ~v116)) & 0xFFFFFFFFFFFFFFF8;
  v95 = v11 + 16;
  v39 = v88 + (v18 | 7);
  v100 = v32;
  v40 = v32 + v118;
  v102 = (v35 + 47) & 0xFFFFFFFFFFFFFFF8;
  v41 = v102 + v117 + 16;
  v42 = v102 + 24 + ((v41 + ((v41 + ((v90 + v117 + ((v32 + v118 + ((v88 + v87 + ((v11 + 16 + ((v93 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v87)) & ~v118)) & ~v117)) & ~v117)) & ~v117);
  v43 = v90 + ((v92 + 8) & ~v118);
  if (v43 > v42)
  {
    v42 = v90 + ((v92 + 8) & ~v118);
  }

  if (v94 + 8 > v42)
  {
    v42 = v94 + 8;
  }

  v44 = v90 + v11;
  v45 = ((v39 + ((v90 + v11 + ((v92 + 40 + ((v36 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v118)) & ~v11)) & ~v87) + v32;
  if (v42 <= v45)
  {
    v42 = v45;
  }

  v46 = v88 + 7;
  v47 = ((((v88 + 7 + ((v44 + ((v118 + ((v37 + 47) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v118)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v42 <= v47)
  {
    v48 = ((((v88 + 7 + ((v44 + ((v118 + ((v37 + 47) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v118)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v48 = v42;
  }

  v49 = v34 + 40;
  v50 = v12 + v34 + 40;
  v51 = (v50 | v12) + v47;
  v52 = v50 & ~v12;
  v53 = ((v12 + (((v51 & ~v12) - v97 + 5) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) - v97 - 2;
  if (v48 > v53)
  {
    v53 = v48;
  }

  v91 = (v90 + 7 + ((v49 + v92) & ~v118)) & 0xFFFFFFFFFFFFFFF8;
  if (v53 <= ((((((v91 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v53 = ((((((v91 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v54 = v88 + v11;
  if (v53 <= ((v40 + ((v39 + ((v88 + v11 + ((((v35 + 16 + v92) & ~v92) + v11 + v98) & ~v11) + 1) & ~v11)) & ~v87)) & ~v118) + v90)
  {
    v53 = ((v40 + ((v39 + ((v88 + v11 + ((((v35 + 16 + v92) & ~v92) + v11 + v98) & ~v11) + 1) & ~v11)) & ~v87)) & ~v118) + v90;
  }

  if (v103 >= 2)
  {
    v55 = v88;
  }

  else
  {
    v55 = v88 + 1;
  }

  if (v53 <= v55 + (v54 & ~v11) + ((v54 + ((v11 + 16 + (((((v104 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v11))
  {
    v53 = v55 + (v54 & ~v11) + ((v54 + ((v11 + 16 + (((((v104 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v11);
  }

  if (v53 <= ((((((v33 + ((v106 + 48) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v53 = ((((((v33 + ((v106 + 48) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v56 = ((v38 + ((v49 + v30) & ~v116) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v53 > v56)
  {
    v56 = v53;
  }

  v57 = v90 + ((v94 + v118 + 17) & ~v118);
  if (v56 <= v57 + 1)
  {
    v56 = v57 + 1;
  }

  v58 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v59 = (((v58 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v56 <= ((((v59 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 41)
  {
    v56 = ((((v59 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  v60 = ((v54 + ((((((((v59 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v11 + 40) & ~v11)) & ~v11) + v88;
  if (v56 <= v60)
  {
    v61 = v60;
  }

  else
  {
    v61 = v56;
  }

  v62 = ((v96 + 40) & ~v96) + *(v99 + 64);
  if (v61 > v62)
  {
    v62 = v61;
  }

  v63 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
  v64 = v63 + 8;
  if (v62 > v63 + 8)
  {
    v64 = v62;
  }

  v65 = ((v63 + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  v66 = (v46 + v52 + ((v44 + ((v65 + v118) & ~v118)) & ~v11)) & 0xFFFFFFFFFFFFFFF8;
  if (v64 <= ((v92 + 8 + v66) & ~v118) + v90)
  {
    v67 = ((v92 + 8 + v66) & ~v118) + v90;
  }

  else
  {
    v67 = v64;
  }

  v68 = v102 + 24 + ((v41 + ((v41 + ((v90 + v117 + ((v40 + ((v39 + ((v11 + v93 + 24) & ~v11)) & ~v87)) & ~v118)) & ~v117)) & ~v117)) & ~v117);
  if (v67 <= v37 + 17)
  {
    v67 = v37 + 17;
  }

  if (v67 > v68)
  {
    v68 = v67;
  }

  if (v68 <= v43)
  {
    v68 = v90 + ((v92 + 8) & ~v118);
  }

  v69 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v68 <= v69 + 16)
  {
    v68 = v69 + 16;
  }

  if (v68 <= ((((((((v89 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v68 = ((((((((v89 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v68 <= ((v104 + 9) & 0xFFFFFFFFFFFFFFF8) + 17)
  {
    v68 = ((v104 + 9) & 0xFFFFFFFFFFFFFFF8) + 17;
  }

  if (v68 <= ((v106 + 81) & ~v106) + v119)
  {
    v68 = ((v106 + 81) & ~v106) + v119;
  }

  if (v68 <= ((v33 + ((v106 + 56) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v68 = ((v33 + ((v106 + 56) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v68 <= ((((v33 + ((v107 + (v46 & 0xFFFFFFFFFFFFFFF8)) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v68 = ((((v33 + ((v107 + (v46 & 0xFFFFFFFFFFFFFFF8)) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v70 = (v91 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v68 <= ((v11 + v70 + 18) & ~v11) + v88)
  {
    v68 = ((v11 + v70 + 18) & ~v11) + v88;
  }

  v71 = ((v46 + ((v11 + 8 + ((((((((((v70 + 25) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v68 <= v71)
  {
    v68 = v71;
  }

  if (v68 <= v37 + 40)
  {
    v68 = v37 + 40;
  }

  if (v68 <= v69 + 8)
  {
    v68 = v69 + 8;
  }

  if (v68 <= v65)
  {
    v68 = v65;
  }

  v72 = v35 + 8;
  if (v68 <= v72)
  {
    v68 = v72;
  }

  if (v68 <= v94 + 8)
  {
    v68 = v94 + 8;
  }

  if (v68 <= ((v94 + 15) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v68 = ((v94 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v73 = v69 + 24;
  if (v68 > v73)
  {
    v73 = v68;
  }

  if (v73 <= v104)
  {
    v73 = v104;
  }

  v74 = (((v102 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v73 <= ((v90 + 7 + ((v92 + 40 + ((((((v100 + ((v100 + v87 + ((v39 + ((v54 + ((v11 + 8 + ((((v74 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v11)) & ~v87)) & ~v87) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v118)) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v73 = ((v90 + 7 + ((v92 + 40 + ((((((v100 + ((v100 + v87 + ((v39 + ((v54 + ((v11 + 8 + ((((v74 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v11)) & ~v87)) & ~v87) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v118)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v75 = v90 + ((v118 + v37 + 17 + ((v113 + ((((v58 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v117) + 23) & ~v118);
  if (v73 > v75)
  {
    v75 = v73;
  }

  if (v75 <= ((v88 + v118 + ((v95 + ((v46 + ((v11 + ((((v46 + ((((v74 + v116 + 8) & ~v116) + v11 + v38) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v11)) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v118) + v90)
  {
    v75 = ((v88 + v118 + ((v95 + ((v46 + ((v11 + ((((v46 + ((((v74 + v116 + 8) & ~v116) + v11 + v38) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v11)) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v118) + v90;
  }

  if (v75 <= ((((((v95 + v94) & ~v11) + v112 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v75 = ((((((v95 + v94) & ~v11) + v112 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v75 <= 8)
  {
    v75 = 8;
  }

  v76 = ((v109 + v75 + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v76 <= v114)
  {
    v76 = v114;
  }

  if (v76 <= 8)
  {
    v76 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFF)
  {
    goto LABEL_126;
  }

  v77 = (((v76 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v78 = v77 & 0xFFFFFFF8;
  v79 = a2 - 2147483645;
  if ((v77 & 0xFFFFFFF8) != 0)
  {
    v79 = 2;
  }

  if (v79 >= 0x10000)
  {
    v80 = 4;
  }

  else
  {
    v80 = 2;
  }

  if (v79 < 0x100)
  {
    v81 = 1;
  }

  else
  {
    v81 = v80;
  }

  if (v81 == 4)
  {
    v82 = *(a1 + v77);
    if (v82)
    {
      goto LABEL_122;
    }

LABEL_126:
    v85 = *(((((a1 + v76 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v85 >= 0xFFFFFFFF)
    {
      LODWORD(v85) = -1;
    }

    if ((v85 + 1) >= 2)
    {
      return v85;
    }

    else
    {
      return 0;
    }
  }

  if (v81 != 2)
  {
    v82 = *(a1 + v77);
    if (v82)
    {
      goto LABEL_122;
    }

    goto LABEL_126;
  }

  v82 = *(a1 + v77);
  if (!v82)
  {
    goto LABEL_126;
  }

LABEL_122:
  v84 = v82 - 1;
  if (v78)
  {
    v84 = 0;
    LODWORD(v78) = *a1;
  }

  return (v78 | v84) + 0x7FFFFFFF;
}

void sub_21682AB44(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v113 = *(*(*(a4 + 16) - 8) + 64);
  v4 = *(sub_21700D7A4() - 8);
  v5 = *(v4 + 80);
  v112 = v5 + 16;
  if (*(v4 + 84))
  {
    v6 = *(v4 + 64);
  }

  else
  {
    v6 = *(v4 + 64) + 1;
  }

  v121 = v6;
  v116 = ((v5 + 16) & ~v5) + v6;
  v119 = v5 | 7;
  v7 = *(sub_217005EF4() - 8);
  v8 = *(v7 + 80);
  v120 = v8 | 7;
  v9 = *(sub_21700C4B4() - 8);
  v10 = *(v9 + 80);
  v11 = *(sub_21700C444() - 8);
  v12 = *(v11 + 80);
  v13 = v12 | v10;
  v14 = v5 | 7 | v8 | v13;
  v117 = (v116 + v14) & ~v14;
  v106 = v5;
  v107 = v5 + 40;
  v15 = (v5 + 40) & ~v5;
  if (*(v11 + 84) <= *(v9 + 84))
  {
    v16 = *(v9 + 84);
  }

  else
  {
    v16 = *(v11 + 84);
  }

  v102 = v16;
  v17 = (v8 + 113) & ~v8;
  v91 = v8;
  v18 = *(v7 + 64);
  v19 = *(v11 + 80);
  v104 = *(v11 + 64);
  v20 = ((*(v9 + 64) + v12) & ~v12) + v104;
  v111 = v20;
  if (!*(v7 + 84))
  {
    ++v18;
  }

  v99 = v18;
  v103 = v15 + v121;
  v94 = (v15 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = v18 + v17;
  v90 = v18 + v17;
  if (v16)
  {
    v22 = v20;
  }

  else
  {
    v22 = v20 + 1;
  }

  v88 = v22;
  v23 = ((-2 - v14) | v14) & 0xFFFFFFFFFFFFFFFELL;
  v24 = ((-41 - (((((v94 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v8)) | v120) - v21;
  if (v24 >= ((-161 - v13) | v13) - v22 - 3)
  {
    v24 = ((-161 - v13) | v13) - v22 - 3;
  }

  if (v24 >= 0xFFFFFFFFFFFFFFA7)
  {
    v24 = -89;
  }

  v25 = v23 + v24;
  v97 = v23 + v24;
  v26 = *(sub_21700CDF4() - 8);
  v27 = *(v26 + 80);
  v108 = *(v26 + 64);
  v28 = (-59 - ((v27 | 7) + ((v117 - v25 + 9) & 0xFFFFFFFFFFFFFFF8))) | v27 | 7;
  v29 = (-17 - v27) | v27;
  v30 = *(sub_21700D284() - 8);
  v31 = *(v30 + 80);
  v118 = v31 | 7;
  v87 = v19 | 7;
  v100 = *(sub_2170061E4() - 8);
  v32 = *(v100 + 80);
  v33 = sub_21700D194();
  v34 = *(*(v33 - 8) + 80);
  v109 = (v108 - (v29 + v28) + (v14 | v19 | v31 | v32 | v34) - 2) & ~(v14 | v19 | v31 | v32 | v34);
  v93 = v31;
  v35 = *(v30 + 64) + ((v31 + 65) & ~v31);
  v36 = v104 + ((v19 + 8) & ~v19);
  v89 = v121 + 7;
  v37 = (v121 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 47) & 0xFFFFFFFFFFFFFFF8;
  v39 = v38 + 16;
  v40 = ((v88 + v32 + ((v38 + 16 + v13) & ~v13) + 1) & ~v32) + *(v100 + 64);
  v95 = v38;
  v41 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v92 = (v35 + ((((v41 + 15) & 0xFFFFFFFFFFFFFFF8) + v118 + 16) & ~v118)) & 0xFFFFFFFFFFFFFFF8;
  v96 = v13 + 16;
  v42 = v88 + (v19 | 7);
  v43 = v36 + v120;
  v101 = (v38 + 47) & 0xFFFFFFFFFFFFFFF8;
  v44 = v101 + v119 + 16;
  v45 = v101 + 24 + ((v44 + ((v44 + ((v90 + v119 + ((v36 + v120 + ((v88 + v87 + ((v13 + 16 + ((v92 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v87)) & ~v120)) & ~v119)) & ~v119)) & ~v119);
  v46 = v90 + ((v91 + 8) & ~v120);
  if (v46 > v45)
  {
    v45 = v90 + ((v91 + 8) & ~v120);
  }

  if (v94 + 8 > v45)
  {
    v45 = v94 + 8;
  }

  v105 = v91 + 40;
  v47 = v90 + v13;
  v48 = ((v42 + ((v90 + v13 + ((v91 + 40 + ((v40 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v120)) & ~v13)) & ~v87) + v36;
  if (v45 > v48)
  {
    v48 = v45;
  }

  v49 = v88 + 7;
  v50 = ((((v88 + 7 + ((v47 + ((v120 + ((v41 + 47) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v120)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v48 <= v50)
  {
    v51 = ((((v88 + 7 + ((v47 + ((v120 + ((v41 + 47) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v120)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v51 = v48;
  }

  v52 = v37 + 40;
  v53 = v14 + v37 + 40;
  v54 = (v53 | v14) + v50;
  v55 = v53 & ~v14;
  v56 = ((v14 + (((v54 & ~v14) - v97 + 5) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) - v97 - 2;
  if (v51 > v56)
  {
    v56 = v51;
  }

  v98 = v90 + 7;
  v57 = (v90 + 7 + ((v52 + v91) & ~v120)) & 0xFFFFFFFFFFFFFFF8;
  if (v56 <= ((((((v57 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v56 = ((((((v57 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v58 = (((v39 + v91) & ~v91) + v13 + v99) & ~v13;
  v59 = v88 + v13;
  v60 = ((v43 + ((v42 + ((v88 + v13 + v58 + 1) & ~v13)) & ~v87)) & ~v120) + v90;
  if (v56 <= v60)
  {
    v56 = v60;
  }

  if (v102 >= 2)
  {
    v61 = v88;
  }

  else
  {
    v61 = v88 + 1;
  }

  if (v56 <= v61 + (v59 & ~v13) + ((v59 + ((v13 + 16 + (((((v103 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v13))
  {
    v56 = v61 + (v59 & ~v13) + ((v59 + ((v13 + 16 + (((((v103 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v13);
  }

  if (v56 <= ((((((v89 + ((v106 + 48) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v56 = ((((((v89 + ((v106 + 48) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v62 = ((v35 + ((v52 + v93) & ~v118) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v56 > v62)
  {
    v62 = v56;
  }

  v63 = v90 + ((v94 + v120 + 17) & ~v120);
  if (v62 <= v63 + 1)
  {
    v62 = v63 + 1;
  }

  v64 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v65 = (((v64 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v62 <= ((((v65 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 41)
  {
    v62 = ((((v65 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  v66 = ((v59 + ((((((((v65 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v13 + 40) & ~v13)) & ~v13) + v88;
  if (v62 <= v66)
  {
    v67 = v66;
  }

  else
  {
    v67 = v62;
  }

  v68 = ((v34 + 40) & ~v34) + *(*(v33 - 8) + 64);
  if (v67 > v68)
  {
    v68 = v67;
  }

  v69 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
  v70 = v69 + 8;
  if (v68 > v69 + 8)
  {
    v70 = v68;
  }

  v71 = ((v69 + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v70 <= ((v91 + 8 + ((v49 + v55 + ((v47 + ((v71 + v120) & ~v120)) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v120) + v90)
  {
    v72 = ((v91 + 8 + ((v49 + v55 + ((v47 + ((v71 + v120) & ~v120)) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v120) + v90;
  }

  else
  {
    v72 = v70;
  }

  v73 = v101 + 24 + ((v44 + ((v44 + ((v90 + v119 + ((v43 + ((v42 + ((v13 + v92 + 24) & ~v13)) & ~v87)) & ~v120)) & ~v119)) & ~v119)) & ~v119);
  if (v72 <= v41 + 17)
  {
    v72 = v41 + 17;
  }

  if (v72 > v73)
  {
    v73 = v72;
  }

  if (v73 <= v46)
  {
    v73 = v90 + ((v91 + 8) & ~v120);
  }

  v74 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v73 <= v74 + 16)
  {
    v73 = v74 + 16;
  }

  if (v73 <= ((((((((v37 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v73 = ((((((((v37 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v73 <= ((v103 + 9) & 0xFFFFFFFFFFFFFFF8) + 17)
  {
    v73 = ((v103 + 9) & 0xFFFFFFFFFFFFFFF8) + 17;
  }

  if (v73 <= ((v106 + 81) & ~v106) + v121)
  {
    v73 = ((v106 + 81) & ~v106) + v121;
  }

  if (v73 <= ((v89 + ((v106 + 56) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v73 = ((v89 + ((v106 + 56) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v73 <= ((((v89 + ((v107 + (v49 & 0xFFFFFFFFFFFFFFF8)) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v73 = ((((v89 + ((v107 + (v49 & 0xFFFFFFFFFFFFFFF8)) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v75 = (v57 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v73 <= ((v13 + v75 + 18) & ~v13) + v88)
  {
    v73 = ((v13 + v75 + 18) & ~v13) + v88;
  }

  v76 = v13 + 8;
  v77 = ((v49 + ((v13 + 8 + ((((((((((v75 + 25) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v73 <= v77)
  {
    v73 = v77;
  }

  if (v73 <= v41 + 40)
  {
    v73 = v41 + 40;
  }

  if (v73 <= v74 + 8)
  {
    v73 = v74 + 8;
  }

  if (v73 <= v71)
  {
    v73 = v71;
  }

  if (v73 <= v95 + 8)
  {
    v73 = v95 + 8;
  }

  if (v73 <= v94 + 8)
  {
    v73 = v94 + 8;
  }

  if (v73 <= ((v94 + 15) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v73 = ((v94 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v78 = v74 + 24;
  if (v73 > v78)
  {
    v78 = v73;
  }

  if (v78 <= v103)
  {
    v78 = v103;
  }

  v79 = (((v101 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v78 <= ((v98 + ((v105 + ((((((v36 + ((v36 + v87 + ((v42 + ((v59 + ((v76 + ((((v79 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v13)) & ~v87)) & ~v87) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v120)) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v78 = ((v98 + ((v105 + ((((((v36 + ((v36 + v87 + ((v42 + ((v59 + ((v76 + ((((v79 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v13)) & ~v87)) & ~v87) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v120)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v80 = v90 + ((v120 + v41 + 17 + ((v112 + ((((v64 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v119) + 23) & ~v120);
  if (v78 > v80)
  {
    v80 = v78;
  }

  if (v80 <= ((v88 + v120 + ((v96 + ((v49 + ((v13 + ((((v49 + ((((v79 + v118 + 8) & ~v118) + v13 + v35) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v120) + v90)
  {
    v80 = ((v88 + v120 + ((v96 + ((v49 + ((v13 + ((((v49 + ((((v79 + v118 + 8) & ~v118) + v13 + v35) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v120) + v90;
  }

  if (v80 <= ((((((v96 + v94) & ~v13) + v111 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v80 = ((((((v96 + v94) & ~v13) + v111 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v80 <= 8)
  {
    v80 = 8;
  }

  v81 = ((v109 + v80 + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v81 <= v113)
  {
    v81 = v113;
  }

  if (v81 <= 8)
  {
    v81 = 8;
  }

  v82 = (((v81 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0x7FFFFFFF)
  {
    v85 = 0;
  }

  else
  {
    v83 = a3 - 2147483645;
    if ((((v81 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v83 = 2;
    }

    if (v83 >= 0x10000)
    {
      v84 = 4;
    }

    else
    {
      v84 = 2;
    }

    if (v83 < 0x100)
    {
      v85 = 1;
    }

    else
    {
      v85 = v84;
    }
  }

  if (a2 > 0x7FFFFFFE)
  {
    if ((((v81 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v86 = a2 - 2147483646;
    }

    else
    {
      v86 = 1;
    }

    if ((((v81 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      bzero(a1, v82);
      *a1 = a2 - 0x7FFFFFFF;
    }

    switch(v85)
    {
      case 1:
        *(a1 + v82) = v86;
        break;
      case 2:
        *(a1 + v82) = v86;
        break;
      case 3:
LABEL_135:
        __break(1u);
        break;
      case 4:
        *(a1 + v82) = v86;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v85)
    {
      case 1:
        *(a1 + v82) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_129;
      case 2:
        *(a1 + v82) = 0;
        goto LABEL_128;
      case 3:
        goto LABEL_135;
      case 4:
        *(a1 + v82) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_129;
      default:
LABEL_128:
        if (a2)
        {
LABEL_129:
          *(((((a1 + v81 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) = a2;
        }

        break;
    }
  }
}

uint64_t sub_21682B894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21682B8D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v113 = *(*(*(a3 + 16) - 8) + 64);
  v3 = *(sub_21700D7A4() - 8);
  v4 = *(v3 + 80);
  v112 = v4 + 16;
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = *(v3 + 64) + 1;
  }

  v118 = v5;
  v110 = ((v4 + 16) & ~v4) + v5;
  v116 = v4 | 7;
  v114 = *(sub_217005EF4() - 8);
  v6 = *(v114 + 80);
  v117 = v6 | 7;
  v7 = *(sub_21700C4B4() - 8);
  v8 = *(v7 + 80);
  v9 = *(sub_21700C444() - 8);
  v10 = *(v9 + 80);
  v11 = v10 | v8;
  v12 = v4 | 7 | v6 | v11;
  v13 = (v110 + v12) & ~v12;
  v105 = v4;
  v106 = v4 + 40;
  v14 = (v4 + 40) & ~v4;
  if (*(v9 + 84) <= *(v7 + 84))
  {
    v15 = *(v7 + 84);
  }

  else
  {
    v15 = *(v9 + 84);
  }

  v102 = v15;
  v16 = (v6 + 113) & ~v6;
  v91 = v6;
  v17 = *(v114 + 64);
  v18 = *(v9 + 80);
  v104 = *(v9 + 64);
  v19 = ((*(v7 + 64) + v10) & ~v10) + v104;
  v111 = v19;
  if (!*(v114 + 84))
  {
    ++v17;
  }

  v97 = v17;
  v103 = v14 + v118;
  v93 = (v14 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = v17 + v16;
  v89 = v17 + v16;
  if (v15)
  {
    v21 = v19;
  }

  else
  {
    v21 = v19 + 1;
  }

  v87 = v21;
  v22 = ((-2 - v12) | v12) & 0xFFFFFFFFFFFFFFFELL;
  v23 = ((-41 - v6 - ((((v93 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v117) - v20;
  if (v23 >= ((-161 - v11) | v11) - v21 - 3)
  {
    v23 = ((-161 - v11) | v11) - v21 - 3;
  }

  if (v23 >= 0xFFFFFFFFFFFFFFA7)
  {
    v23 = -89;
  }

  v24 = v22 + v23;
  v96 = v22 + v23;
  v25 = *(sub_21700CDF4() - 8);
  v26 = *(v25 + 80);
  v27 = *(v25 + 64);
  v107 = (-59 - (v26 | 7) - ((v13 - v24 + 9) & 0xFFFFFFFFFFFFFFF8)) | v26 | 7;
  v28 = (-17 - v26) | v26;
  v29 = *(sub_21700D284() - 8);
  v30 = *(v29 + 80);
  v115 = v30 | 7;
  v86 = v18 | 7;
  v100 = *(sub_2170061E4() - 8);
  v31 = *(v100 + 80);
  v98 = *(sub_21700D194() - 8);
  v95 = *(v98 + 80);
  v108 = (v27 - v28 - v107 + (v12 | v18 | v30 | v31 | v95) - 2) & ~(v12 | v18 | v30 | v31 | v95);
  v32 = v104 + ((v18 + 8) & ~v18);
  v33 = v118 + 7;
  v34 = (v118 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = v34;
  v35 = (v34 + 47) & 0xFFFFFFFFFFFFFFF8;
  v36 = ((v87 + v31 + ((v35 + 16 + v11) & ~v11) + 1) & ~v31) + *(v100 + 64);
  v37 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v38 = *(v29 + 64) + ((v30 + 65) & ~v30);
  v92 = (v38 + ((((v37 + 15) & 0xFFFFFFFFFFFFFFF8) + v115 + 16) & ~v115)) & 0xFFFFFFFFFFFFFFF8;
  v94 = v11 + 16;
  v39 = v87 + (v18 | 7);
  v99 = v32;
  v40 = v32 + v117;
  v101 = (v35 + 47) & 0xFFFFFFFFFFFFFFF8;
  v41 = v101 + v116 + 16;
  v42 = v101 + 24 + ((v41 + ((v41 + ((v89 + v116 + ((v32 + v117 + ((v87 + v86 + ((v11 + 16 + ((v92 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v86)) & ~v117)) & ~v116)) & ~v116)) & ~v116);
  v43 = v89 + ((v91 + 8) & ~v117);
  if (v43 > v42)
  {
    v42 = v89 + ((v91 + 8) & ~v117);
  }

  if (v93 + 8 > v42)
  {
    v42 = v93 + 8;
  }

  v44 = v89 + v11;
  v45 = ((v39 + ((v89 + v11 + ((v91 + 40 + ((v36 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v117)) & ~v11)) & ~v86) + v32;
  if (v42 <= v45)
  {
    v42 = v45;
  }

  v46 = v87 + 7;
  v47 = ((((v87 + 7 + ((v44 + ((v117 + ((v37 + 47) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v117)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v42 <= v47)
  {
    v48 = ((((v87 + 7 + ((v44 + ((v117 + ((v37 + 47) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v117)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v48 = v42;
  }

  v49 = v34 + 40;
  v50 = v12 + v34 + 40;
  v51 = (v50 | v12) + v47;
  v52 = v50 & ~v12;
  v53 = ((v12 + (((v51 & ~v12) - v96 + 5) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) - v96 - 2;
  if (v48 > v53)
  {
    v53 = v48;
  }

  v90 = (v89 + 7 + ((v49 + v91) & ~v117)) & 0xFFFFFFFFFFFFFFF8;
  if (v53 <= ((((((v90 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v53 = ((((((v90 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v54 = v87 + v11;
  if (v53 <= ((v40 + ((v39 + ((v87 + v11 + ((((v35 + 16 + v91) & ~v91) + v11 + v97) & ~v11) + 1) & ~v11)) & ~v86)) & ~v117) + v89)
  {
    v53 = ((v40 + ((v39 + ((v87 + v11 + ((((v35 + 16 + v91) & ~v91) + v11 + v97) & ~v11) + 1) & ~v11)) & ~v86)) & ~v117) + v89;
  }

  if (v102 >= 2)
  {
    v55 = v87;
  }

  else
  {
    v55 = v87 + 1;
  }

  if (v53 <= v55 + (v54 & ~v11) + ((v54 + ((v11 + 16 + (((((v103 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v11))
  {
    v53 = v55 + (v54 & ~v11) + ((v54 + ((v11 + 16 + (((((v103 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v11);
  }

  if (v53 <= ((((((v33 + ((v105 + 48) & ~v105)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v53 = ((((((v33 + ((v105 + 48) & ~v105)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v56 = ((v38 + ((v49 + v30) & ~v115) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v53 > v56)
  {
    v56 = v53;
  }

  v57 = v89 + ((v93 + v117 + 17) & ~v117);
  if (v56 <= v57 + 1)
  {
    v56 = v57 + 1;
  }

  v58 = (v93 + 23) & 0xFFFFFFFFFFFFFFF8;
  v59 = (((v58 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v56 <= ((((v59 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 41)
  {
    v56 = ((((v59 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  v60 = ((v54 + ((((((((v59 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v11 + 40) & ~v11)) & ~v11) + v87;
  if (v56 <= v60)
  {
    v61 = v60;
  }

  else
  {
    v61 = v56;
  }

  v62 = ((v95 + 40) & ~v95) + *(v98 + 64);
  if (v61 > v62)
  {
    v62 = v61;
  }

  v63 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
  v64 = v63 + 8;
  if (v62 > v63 + 8)
  {
    v64 = v62;
  }

  v65 = ((v63 + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  v66 = (v46 + v52 + ((v44 + ((v65 + v117) & ~v117)) & ~v11)) & 0xFFFFFFFFFFFFFFF8;
  if (v64 <= ((v91 + 8 + v66) & ~v117) + v89)
  {
    v67 = ((v91 + 8 + v66) & ~v117) + v89;
  }

  else
  {
    v67 = v64;
  }

  v68 = v101 + 24 + ((v41 + ((v41 + ((v89 + v116 + ((v40 + ((v39 + ((v11 + v92 + 24) & ~v11)) & ~v86)) & ~v117)) & ~v116)) & ~v116)) & ~v116);
  if (v67 <= v37 + 17)
  {
    v67 = v37 + 17;
  }

  if (v67 > v68)
  {
    v68 = v67;
  }

  if (v68 <= v43)
  {
    v68 = v89 + ((v91 + 8) & ~v117);
  }

  v69 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v68 <= v69 + 16)
  {
    v68 = v69 + 16;
  }

  if (v68 <= ((((((((v88 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v68 = ((((((((v88 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v68 <= ((v103 + 9) & 0xFFFFFFFFFFFFFFF8) + 17)
  {
    v68 = ((v103 + 9) & 0xFFFFFFFFFFFFFFF8) + 17;
  }

  if (v68 <= ((v105 + 81) & ~v105) + v118)
  {
    v68 = ((v105 + 81) & ~v105) + v118;
  }

  if (v68 <= ((v33 + ((v105 + 56) & ~v105)) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v68 = ((v33 + ((v105 + 56) & ~v105)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v68 <= ((((v33 + ((v106 + (v46 & 0xFFFFFFFFFFFFFFF8)) & ~v105)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v68 = ((((v33 + ((v106 + (v46 & 0xFFFFFFFFFFFFFFF8)) & ~v105)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v70 = (v90 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v68 <= ((v11 + v70 + 18) & ~v11) + v87)
  {
    v68 = ((v11 + v70 + 18) & ~v11) + v87;
  }

  v71 = ((v46 + ((v11 + 8 + ((((((((((v70 + 25) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v68 <= v71)
  {
    v68 = v71;
  }

  if (v68 <= v37 + 40)
  {
    v68 = v37 + 40;
  }

  if (v68 <= v69 + 8)
  {
    v68 = v69 + 8;
  }

  if (v68 <= v65)
  {
    v68 = v65;
  }

  v72 = v35 + 8;
  if (v68 <= v72)
  {
    v68 = v72;
  }

  if (v68 <= v93 + 8)
  {
    v68 = v93 + 8;
  }

  if (v68 <= ((v93 + 15) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v68 = ((v93 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v73 = v69 + 24;
  if (v68 > v73)
  {
    v73 = v68;
  }

  if (v73 <= v103)
  {
    v73 = v103;
  }

  v74 = (((v101 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v73 <= ((v89 + 7 + ((v91 + 40 + ((((((v99 + ((v99 + v86 + ((v39 + ((v54 + ((v11 + 8 + ((((v74 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v11)) & ~v86)) & ~v86) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v117)) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v73 = ((v89 + 7 + ((v91 + 40 + ((((((v99 + ((v99 + v86 + ((v39 + ((v54 + ((v11 + 8 + ((((v74 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v11)) & ~v86)) & ~v86) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v117)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v75 = v89 + ((v117 + v37 + 17 + ((v112 + ((((v58 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v116) + 23) & ~v117);
  if (v73 > v75)
  {
    v75 = v73;
  }

  if (v75 <= ((v87 + v117 + ((v94 + ((v46 + ((v11 + ((((v46 + ((((v74 + v115 + 8) & ~v115) + v11 + v38) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v11)) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v117) + v89)
  {
    v75 = ((v87 + v117 + ((v94 + ((v46 + ((v11 + ((((v46 + ((((v74 + v115 + 8) & ~v115) + v11 + v38) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v11)) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v117) + v89;
  }

  if (v75 <= ((((((v94 + v93) & ~v11) + v111 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v75 = ((((((v94 + v93) & ~v11) + v111 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v76 = 8;
  if (v75 <= 8)
  {
    v75 = 8;
  }

  v77 = ((v108 + v75 + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v77 <= v113)
  {
    v77 = v113;
  }

  if (v77 > 8)
  {
    v76 = v77;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_125;
  }

  v78 = v76 + 1;
  v79 = 8 * (v76 + 1);
  if ((v76 + 1) <= 3)
  {
    v82 = ((a2 + ~(-1 << v79) - 250) >> v79) + 1;
    if (HIWORD(v82))
    {
      v80 = *(a1 + v78);
      if (!v80)
      {
        goto LABEL_125;
      }

      goto LABEL_117;
    }

    if (v82 > 0xFF)
    {
      v80 = *(a1 + v78);
      if (!*(a1 + v78))
      {
        goto LABEL_125;
      }

      goto LABEL_117;
    }

    if (v82 < 2)
    {
LABEL_125:
      v84 = *(a1 + v76);
      if (v84 >= 6)
      {
        return (v84 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v80 = *(a1 + v78);
  if (!*(a1 + v78))
  {
    goto LABEL_125;
  }

LABEL_117:
  v83 = (v80 - 1) << v79;
  if (v78 > 3)
  {
    v83 = 0;
  }

  if (v78)
  {
    if (v78 > 3)
    {
      LODWORD(v78) = 4;
    }

    switch(v78)
    {
      case 2:
        LODWORD(v78) = *a1;
        break;
      case 3:
        LODWORD(v78) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v78) = *a1;
        break;
      default:
        LODWORD(v78) = *a1;
        break;
    }
  }

  return (v78 | v83) + 251;
}

void sub_21682C5BC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v117 = *(*(*(a4 + 16) - 8) + 64);
  v4 = *(sub_21700D7A4() - 8);
  v5 = *(v4 + 80);
  v116 = v5 + 16;
  if (*(v4 + 84))
  {
    v6 = *(v4 + 64);
  }

  else
  {
    v6 = *(v4 + 64) + 1;
  }

  v125 = v6;
  v120 = ((v5 + 16) & ~v5) + v6;
  v123 = v5 | 7;
  v7 = *(sub_217005EF4() - 8);
  v8 = *(v7 + 80);
  v124 = v8 | 7;
  v9 = *(sub_21700C4B4() - 8);
  v10 = *(v9 + 80);
  v11 = *(sub_21700C444() - 8);
  v12 = *(v11 + 80);
  v13 = v12 | v10;
  v14 = v5 | 7 | v8 | v13;
  v121 = (v120 + v14) & ~v14;
  v110 = v5;
  v111 = v5 + 40;
  v15 = (v5 + 40) & ~v5;
  if (*(v11 + 84) <= *(v9 + 84))
  {
    v16 = *(v9 + 84);
  }

  else
  {
    v16 = *(v11 + 84);
  }

  v106 = v16;
  v17 = (v8 + 113) & ~v8;
  v96 = v8;
  v18 = *(v7 + 64);
  v19 = *(v11 + 80);
  v108 = *(v11 + 64);
  v20 = ((*(v9 + 64) + v12) & ~v12) + v108;
  v115 = v20;
  if (!*(v7 + 84))
  {
    ++v18;
  }

  v103 = v18;
  v107 = v15 + v125;
  v98 = (v15 + v125 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = v18 + v17;
  v95 = v18 + v17;
  if (v16)
  {
    v22 = v20;
  }

  else
  {
    v22 = v20 + 1;
  }

  v93 = v22;
  v23 = ((-2 - v14) | v14) & 0xFFFFFFFFFFFFFFFELL;
  v24 = ((-41 - v8 - ((((v98 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v124) - v21;
  if (v24 >= ((-161 - v13) | v13) - v22 - 3)
  {
    v24 = ((-161 - v13) | v13) - v22 - 3;
  }

  if (v24 >= 0xFFFFFFFFFFFFFFA7)
  {
    v24 = -89;
  }

  v25 = v23 + v24;
  v101 = v23 + v24;
  v26 = *(sub_21700CDF4() - 8);
  v27 = *(v26 + 80);
  v28 = *(v26 + 64);
  v112 = (-59 - (v27 | 7) - ((v121 - v25 + 9) & 0xFFFFFFFFFFFFFFF8)) | v27 | 7;
  v29 = (-17 - v27) | v27;
  v30 = *(sub_21700D284() - 8);
  v31 = *(v30 + 80);
  v122 = v31 | 7;
  v92 = v19 | 7;
  v104 = *(sub_2170061E4() - 8);
  v32 = *(v104 + 80);
  v33 = sub_21700D194();
  v34 = *(*(v33 - 8) + 80);
  v113 = (v28 - v29 - v112 + (v14 | v19 | v31 | v32 | v34) - 2) & ~(v14 | v19 | v31 | v32 | v34);
  v35 = *(v30 + 64) + ((v31 + 65) & ~v31);
  v36 = v108 + ((v19 + 8) & ~v19);
  v94 = v125 + 7;
  v37 = (v125 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 47) & 0xFFFFFFFFFFFFFFF8;
  v39 = v38 + 16;
  v40 = ((v93 + v32 + ((v38 + 16 + v13) & ~v13) + 1) & ~v32) + *(v104 + 64);
  v99 = v38;
  v41 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v97 = (v35 + ((((v41 + 15) & 0xFFFFFFFFFFFFFFF8) + v122 + 16) & ~v122)) & 0xFFFFFFFFFFFFFFF8;
  v100 = v13 + 16;
  v42 = v93 + v92;
  v43 = v36 + v124;
  v105 = (v38 + 47) & 0xFFFFFFFFFFFFFFF8;
  v44 = v105 + v123 + 16;
  v45 = v105 + 24 + ((v44 + ((v44 + ((v95 + v123 + ((v36 + v124 + ((v93 + v92 + ((v13 + 16 + ((v97 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v92)) & ~v124)) & ~v123)) & ~v123)) & ~v123);
  v46 = v95 + ((v96 + 8) & ~v124);
  if (v46 > v45)
  {
    v45 = v95 + ((v96 + 8) & ~v124);
  }

  if (v98 + 8 > v45)
  {
    v45 = v98 + 8;
  }

  v109 = v96 + 40;
  v47 = v95 + v13;
  v48 = ((v42 + ((v95 + v13 + ((v96 + 40 + ((v40 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v124)) & ~v13)) & ~v92) + v36;
  if (v45 > v48)
  {
    v48 = v45;
  }

  v49 = v93 + 7;
  v50 = ((((v93 + 7 + ((v47 + ((v124 + ((v41 + 47) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v124)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v48 <= v50)
  {
    v51 = ((((v93 + 7 + ((v47 + ((v124 + ((v41 + 47) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v124)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v51 = v48;
  }

  v52 = v37 + 40;
  v53 = v14 + v37 + 40;
  v54 = (v53 | v14) + v50;
  v55 = v53 & ~v14;
  v56 = ((v14 + (((v54 & ~v14) - v101 + 5) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) - v101 - 2;
  if (v51 > v56)
  {
    v56 = v51;
  }

  v102 = v95 + 7;
  v57 = (v95 + 7 + ((v52 + v96) & ~v124)) & 0xFFFFFFFFFFFFFFF8;
  if (v56 <= ((((((v57 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v56 = ((((((v57 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v58 = (((v39 + v96) & ~v96) + v13 + v103) & ~v13;
  v59 = v93 + v13;
  v60 = ((v43 + ((v42 + ((v93 + v13 + v58 + 1) & ~v13)) & ~v92)) & ~v124) + v95;
  if (v56 <= v60)
  {
    v56 = v60;
  }

  if (v106 >= 2)
  {
    v61 = v93;
  }

  else
  {
    v61 = v93 + 1;
  }

  if (v56 <= v61 + (v59 & ~v13) + ((v59 + ((v13 + 16 + (((((v107 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v13))
  {
    v56 = v61 + (v59 & ~v13) + ((v59 + ((v13 + 16 + (((((v107 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v13);
  }

  if (v56 <= ((((((v94 + ((v110 + 48) & ~v110)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v56 = ((((((v94 + ((v110 + 48) & ~v110)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v62 = ((v35 + ((v52 + v31) & ~v122) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v56 > v62)
  {
    v62 = v56;
  }

  v63 = v95 + ((v98 + v124 + 17) & ~v124);
  if (v62 <= v63 + 1)
  {
    v62 = v63 + 1;
  }

  v64 = (v98 + 23) & 0xFFFFFFFFFFFFFFF8;
  v65 = (((v64 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v62 <= ((((v65 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 41)
  {
    v62 = ((((v65 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  v66 = ((v59 + ((((((((v65 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v13 + 40) & ~v13)) & ~v13) + v93;
  if (v62 <= v66)
  {
    v67 = v66;
  }

  else
  {
    v67 = v62;
  }

  v68 = ((v34 + 40) & ~v34) + *(*(v33 - 8) + 64);
  if (v67 > v68)
  {
    v68 = v67;
  }

  v69 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
  v70 = v69 + 8;
  if (v68 > v69 + 8)
  {
    v70 = v68;
  }

  v71 = ((v69 + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v70 <= ((v96 + 8 + ((v49 + v55 + ((v47 + ((v71 + v124) & ~v124)) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v124) + v95)
  {
    v72 = ((v96 + 8 + ((v49 + v55 + ((v47 + ((v71 + v124) & ~v124)) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v124) + v95;
  }

  else
  {
    v72 = v70;
  }

  v73 = v105 + 24 + ((v44 + ((v44 + ((v95 + v123 + ((v43 + ((v42 + ((v13 + v97 + 24) & ~v13)) & ~v92)) & ~v124)) & ~v123)) & ~v123)) & ~v123);
  if (v72 <= v41 + 17)
  {
    v72 = v41 + 17;
  }

  if (v72 > v73)
  {
    v73 = v72;
  }

  if (v73 <= v46)
  {
    v73 = v95 + ((v96 + 8) & ~v124);
  }

  v74 = (v99 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v73 <= v74 + 16)
  {
    v73 = v74 + 16;
  }

  if (v73 <= ((((((((v37 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v73 = ((((((((v37 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v73 <= ((v107 + 9) & 0xFFFFFFFFFFFFFFF8) + 17)
  {
    v73 = ((v107 + 9) & 0xFFFFFFFFFFFFFFF8) + 17;
  }

  if (v73 <= ((v110 + 81) & ~v110) + v125)
  {
    v73 = ((v110 + 81) & ~v110) + v125;
  }

  if (v73 <= ((v94 + ((v110 + 56) & ~v110)) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v73 = ((v94 + ((v110 + 56) & ~v110)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v73 <= ((((v94 + ((v111 + (v49 & 0xFFFFFFFFFFFFFFF8)) & ~v110)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v73 = ((((v94 + ((v111 + (v49 & 0xFFFFFFFFFFFFFFF8)) & ~v110)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v75 = (v57 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v73 <= ((v13 + v75 + 18) & ~v13) + v93)
  {
    v73 = ((v13 + v75 + 18) & ~v13) + v93;
  }

  v76 = v13 + 8;
  v77 = ((v49 + ((v13 + 8 + ((((((((((v75 + 25) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v73 <= v77)
  {
    v73 = v77;
  }

  if (v73 <= v41 + 40)
  {
    v73 = v41 + 40;
  }

  if (v73 <= v74 + 8)
  {
    v73 = v74 + 8;
  }

  if (v73 <= v71)
  {
    v73 = v71;
  }

  if (v73 <= v99 + 8)
  {
    v73 = v99 + 8;
  }

  if (v73 <= v98 + 8)
  {
    v73 = v98 + 8;
  }

  if (v73 <= ((v98 + 15) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v73 = ((v98 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v78 = v74 + 24;
  if (v73 > v78)
  {
    v78 = v73;
  }

  if (v78 <= v107)
  {
    v78 = v107;
  }

  v79 = (((v105 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v78 <= ((v102 + ((v109 + ((((((v36 + ((v36 + v92 + ((v42 + ((v59 + ((v76 + ((((v79 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v13)) & ~v92)) & ~v92) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v124)) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v78 = ((v102 + ((v109 + ((((((v36 + ((v36 + v92 + ((v42 + ((v59 + ((v76 + ((((v79 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v13)) & ~v92)) & ~v92) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v124)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v80 = v95 + ((v124 + v41 + 17 + ((v116 + ((((v64 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v123) + 23) & ~v124);
  if (v78 > v80)
  {
    v80 = v78;
  }

  if (v80 <= ((v93 + v124 + ((v100 + ((v49 + ((v13 + ((((v49 + ((((v79 + v122 + 8) & ~v122) + v13 + v35) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v124) + v95)
  {
    v80 = ((v93 + v124 + ((v100 + ((v49 + ((v13 + ((((v49 + ((((v79 + v122 + 8) & ~v122) + v13 + v35) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v124) + v95;
  }

  if (v80 <= ((((((v100 + v98) & ~v13) + v115 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v80 = ((((((v100 + v98) & ~v13) + v115 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v80 <= 8)
  {
    v80 = 8;
  }

  v81 = ((v113 + v80 + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v81 <= v117)
  {
    v81 = v117;
  }

  if (v81 <= 8)
  {
    v81 = 8;
  }

  v82 = v81 + 1;
  v83 = 8 * (v81 + 1);
  if (a3 < 0xFB)
  {
    v86 = 0;
    v84 = a1;
    v85 = a2;
  }

  else
  {
    v84 = a1;
    v85 = a2;
    if (v82 <= 3)
    {
      v89 = ((a3 + ~(-1 << v83) - 250) >> v83) + 1;
      if (HIWORD(v89))
      {
        v86 = 4;
      }

      else
      {
        if (v89 < 0x100)
        {
          v90 = 1;
        }

        else
        {
          v90 = 2;
        }

        if (v89 >= 2)
        {
          v86 = v90;
        }

        else
        {
          v86 = 0;
        }
      }
    }

    else
    {
      v86 = 1;
    }
  }

  if (v85 > 0xFA)
  {
    v87 = v85 - 251;
    if (v82 < 4)
    {
      v88 = (v87 >> v83) + 1;
      if (v81 != -1)
      {
        v91 = v87 & ~(-1 << v83);
        bzero(v84, v82);
        if (v82 == 3)
        {
          *v84 = v91;
          v84[2] = BYTE2(v91);
        }

        else if (v82 == 2)
        {
          *v84 = v91;
        }

        else
        {
          *v84 = v87;
        }
      }
    }

    else
    {
      bzero(v84, v81 + 1);
      *v84 = v87;
      v88 = 1;
    }

    switch(v86)
    {
      case 1:
        v84[v82] = v88;
        break;
      case 2:
        *&v84[v82] = v88;
        break;
      case 3:
LABEL_140:
        __break(1u);
        break;
      case 4:
        *&v84[v82] = v88;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v86)
    {
      case 1:
        v84[v82] = 0;
        if (!v85)
        {
          return;
        }

        goto LABEL_129;
      case 2:
        *&v84[v82] = 0;
        goto LABEL_128;
      case 3:
        goto LABEL_140;
      case 4:
        *&v84[v82] = 0;
        if (!v85)
        {
          return;
        }

        goto LABEL_129;
      default:
LABEL_128:
        if (v85)
        {
LABEL_129:
          v84[v81] = -v85;
        }

        break;
    }
  }
}

void sub_21682D344(uint64_t a1)
{
  if (!qword_280E29E68)
  {
    _s7SectionVMa(255);
    v1 = sub_21700E984();
    if (!v2)
    {
      atomic_store(v1, &qword_280E29E68);
    }
  }
}

uint64_t sub_21682D3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21682D408(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21682D448(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21682D48C(uint64_t a1)
{
  result = type metadata accessor for SectionContent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21682D528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_2166C62F8(a1, a6, type metadata accessor for SectionContent);
  result = type metadata accessor for PageChangeInstruction.Instruction.ItemUpdateDescriptor(0, a4, a5, v11);
  v13 = (a6 + *(result + 36));
  *v13 = a2;
  v13[1] = a3;
  return result;
}

void sub_21682D5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_22_3();
  v89 = v23;
  v90 = v24;
  v86 = v25;
  v87 = v26;
  v28 = v27;
  v88 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_0();
  v85 = v32;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v33);
  v35 = v80 - v34;
  v36 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  v41 = v80 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = v80 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = v80 - v46;
  sub_21700CE04();
  sub_21682FF4C();
  v48 = v89;
  sub_21700CCD4();
  v89 = v48;
  if (v48)
  {
    (*(v30 + 8))(v90, v88);
    v49 = *(v38 + 8);
    v49(v28, v36);
    v49(v47, v36);
  }

  else
  {
    v80[1] = v41;
    v81 = v44;
    v83 = v30;
    v52 = *(v38 + 8);
    v50 = (v38 + 8);
    v51 = v52;
    v52(v47, v36);
    if (qword_280E2A288 != -1)
    {
      swift_once();
    }

    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93D0, &qword_21701CF30);
    __swift_project_value_buffer(v53, qword_280E2A290);
    v82 = v35;
    v54 = v90;
    sub_21700CEF4();
    v55 = v81;
    v84 = v28;
    sub_21700CE04();
    sub_21700CDB4();
    v57 = v56;
    v51(v55, v36);
    if (v57)
    {
      v80[0] = v51;
      v81 = v50;
      sub_21700CE04();
      v59 = v82;
      v58 = v83;
      v60 = v88;
      (*(v83 + 16))(v85, v82, v88);
      type metadata accessor for PageChangeInstruction.Instruction.InsertItemsUpdateDescriptor.Item(0, v86, v87, v61);
      swift_getWitnessTable();
      v62 = v89;
      sub_21700E924();
      if (v62)
      {
        v63 = *(v58 + 8);
        v63(v90, v60);
        v64 = OUTLINED_FUNCTION_15_15();
        v65(v64);
        v63(v59, v60);
      }

      else
      {
        v89 = 0;
        v77 = *(v58 + 8);
        v77(v90, v60);
        v78 = OUTLINED_FUNCTION_15_15();
        v79(v78);
        v77(v59, v60);
      }
    }

    else
    {
      v66 = sub_21700E2E4();
      OUTLINED_FUNCTION_0_45();
      v69 = sub_21668EF88(v67, v68, MEMORY[0x277D22550]);
      OUTLINED_FUNCTION_12(v66, v69);
      v71 = v70;
      v73 = type metadata accessor for PageChangeInstruction.Instruction.InsertItemsUpdateDescriptor(0, v86, v87, v72);
      *v71 = 0x496E6F6974636573;
      v71[1] = 0xE900000000000044;
      v71[2] = v73;
      OUTLINED_FUNCTION_50();
      (*(v74 + 104))(v71);
      swift_willThrow();
      v75 = *(v83 + 8);
      v76 = v88;
      v75(v54, v88);
      v51(v84, v36);
      v75(v82, v76);
    }
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_21682DAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_22_3();
  v60 = v23;
  v61 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7();
  v37 = v36 - v35;
  if (qword_280E2A260 != -1)
  {
    swift_once();
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93D0, &qword_21701CF30);
  __swift_project_value_buffer(v38, qword_280E2A268);
  sub_21700CF44();
  if (LOBYTE(v64[0]) == 62)
  {
    v39 = 0xE800000000000000;
    v40 = 0x646E694B6D657469;
  }

  else
  {
    v59 = v30;
    if (qword_280E2C7F0 != -1)
    {
      swift_once();
    }

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93D8, &qword_21701CFF0);
    __swift_project_value_buffer(v52, qword_280E73B58);
    sub_216830000();
    sub_21700D534();
    if (v63)
    {
      sub_21700CF34();
      OUTLINED_FUNCTION_34();
      (*(v53 + 8))(v26);
      (*(v33 + 8))(v28, v31);
      sub_2166A0F18(&v62, v64);
      sub_2166A0F18(v64, v30);
      *(v30 + 40) = 0;
      goto LABEL_12;
    }

    sub_216697664(&v62, &qword_27CAB93E0, &qword_21701CFF8);
    sub_21700CE04();
    v58 = sub_21700CDB4();
    v55 = v54;
    v56 = *(v33 + 8);
    v56(v37, v31);
    if (v55)
    {
      sub_21700CF34();
      OUTLINED_FUNCTION_34();
      (*(v57 + 8))(v26);
      v56(v28, v31);
      *v59 = v58;
      *(v59 + 8) = v55;
      *(v59 + 40) = 1;
      goto LABEL_12;
    }

    v39 = 0xEC0000006D657469;
    v40 = 0x2064657461647075;
  }

  v41 = sub_21700E2E4();
  OUTLINED_FUNCTION_0_45();
  v44 = sub_21668EF88(v42, v43, MEMORY[0x277D22550]);
  OUTLINED_FUNCTION_12(v41, v44);
  v46 = v45;
  v48 = type metadata accessor for PageChangeInstruction.Instruction.InsertItemsUpdateDescriptor.Item(0, v60, v61, v47);
  v49 = MEMORY[0x277D84F90];
  *v46 = v40;
  v46[1] = v39;
  v46[2] = v48;
  v46[3] = v49;
  OUTLINED_FUNCTION_50();
  (*(v50 + 104))(v46);
  swift_willThrow();
  sub_21700CF34();
  OUTLINED_FUNCTION_34();
  (*(v51 + 8))(v26);
  (*(v33 + 8))(v28, v31);
LABEL_12:
  OUTLINED_FUNCTION_21_4();
}

void sub_21682DF38()
{
  OUTLINED_FUNCTION_22_3();
  v151 = v0;
  v2 = v1;
  v4 = v3;
  v154 = v5;
  v7 = v6;
  v146 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0, &unk_21701A800);
  MEMORY[0x28223BE20](v9 - 8);
  v132 = &v128 - v10;
  v133 = sub_21700E2C4();
  OUTLINED_FUNCTION_1();
  v130 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v129 = v14 - v13;
  v136 = _s7SectionVMa(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v139 = v17 - v16;
  v140 = *(v4 - 8);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v143 = (v20 - v19);
  v153 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v155 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_0();
  v135 = v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_4();
  v138 = v25;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_4();
  v142 = v27;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v28);
  v30 = &v128 - v29;
  v31 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_0();
  v131 = v35;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_4();
  v134 = v37;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_4();
  v137 = v39;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_4();
  v141 = v41;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v42);
  MEMORY[0x28223BE20](v43);
  v45 = &v128 - v44;
  v149 = v2;
  v150 = v4;
  v47 = type metadata accessor for PageChangeInstruction.Instruction(0, v4, v2, v46);
  OUTLINED_FUNCTION_1();
  v145 = v48;
  MEMORY[0x28223BE20](v49);
  v144 = (&v128 - v50);
  v51 = v7;
  sub_21700CE04();
  v152 = sub_21700CDB4();
  v53 = v52;
  v56 = *(v33 + 8);
  v54 = v33 + 8;
  v55 = v56;
  v56(v45, v31);
  if (!v53)
  {
    v69 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_45();
    v72 = sub_21668EF88(v70, v71, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_12(v69, v72);
    *v73 = 0x7463757274736E69;
    v73[1] = 0xEB000000006E6F69;
    v73[2] = v47;
    OUTLINED_FUNCTION_50();
    (*(v74 + 104))();
    swift_willThrow();
    v55(v51, v31);
    v62 = v153;
    v61 = v154;
    goto LABEL_11;
  }

  v147 = v55;
  v148 = v54;
  v57 = v31;
  v58 = v51;
  v59 = v152;
  v60 = v152 == 0x7449747265736E69 && v53 == 0xEB00000000736D65;
  if (!v60 && (OUTLINED_FUNCTION_8_18(0x7449747265736E69, 0xEB00000000736D65) & 1) == 0)
  {
    v79 = v59 == 0x506563616C706572 && v53 == 0xEB00000000656761;
    v80 = v154;
    if (v79 || (OUTLINED_FUNCTION_8_18(0x506563616C706572, 0xEB00000000656761) & 1) != 0)
    {

      sub_21700CE04();
      OUTLINED_FUNCTION_10_16();
      v62 = v153;
      v81(v142, v80, v153);
      v82 = v151;
      sub_21700D714();
      if (v82)
      {
        v147(v51, v57);
LABEL_20:
        v61 = v80;
        goto LABEL_24;
      }

      v147(v51, v57);
      v77 = v144;
      v83 = OUTLINED_FUNCTION_7_23();
      v84(v83);
      v78 = v47;
LABEL_22:
      v61 = v80;
      goto LABEL_23;
    }

    v85 = v59 == 0xD000000000000011 && 0x8000000217082C10 == v53;
    v86 = v57;
    if (v85 || (OUTLINED_FUNCTION_8_18(0xD000000000000011, 0x8000000217082C10) & 1) != 0)
    {

      sub_21700CE04();
      OUTLINED_FUNCTION_10_16();
      v61 = v80;
      v62 = v153;
      v87(v138, v80, v153);
      v88 = v139;
      v89 = v151;
      sub_216C26B08();
      if (v89)
      {
        v67 = OUTLINED_FUNCTION_7_23();
        goto LABEL_9;
      }

      v78 = v47;
      v90 = OUTLINED_FUNCTION_7_23();
      (v147)(v90);
      v77 = v144;
      sub_2166C62F8(v88, v144, _s7SectionVMa);
LABEL_23:
      swift_storeEnumTagMultiPayload();
      (*(v145 + 32))(v146, v77, v78);
      goto LABEL_24;
    }

    v91 = v59 == 0x6974636553646461 && v53 == 0xEB00000000736E6FLL;
    v78 = v47;
    v61 = v80;
    if (!v91 && (OUTLINED_FUNCTION_8_18(0x6974636553646461, 0xEB00000000736E6FLL) & 1) == 0)
    {
      v96 = v59 == 0x7449657461647075 && v53 == 0xEB00000000736D65;
      v97 = v147;
      if (v96 || (sub_21700F7D4() & 1) != 0)
      {

        sub_21700CE04();
        v98 = v132;
        sub_21700CD74();
        v99 = OUTLINED_FUNCTION_7_23();
        v97(v99);
        v100 = v133;
        v101 = v58;
        v58 = v155;
        if (__swift_getEnumTagSinglePayload(v98, 1, v133) != 1)
        {
          v152 = v101;
          v110 = v130;
          v111 = v98;
          v112 = v129;
          v113 = (*(v130 + 32))(v129, v111, v100);
          v143 = &v128;
          MEMORY[0x28223BE20](v113);
          v115 = v149;
          v114 = v150;
          *(&v128 - 4) = v150;
          *(&v128 - 3) = v115;
          *(&v128 - 2) = v80;
          type metadata accessor for PageChangeInstruction.Instruction.ItemUpdateDescriptor(0, v114, v115, v116);
          v117 = v151;
          v118 = sub_21700E2B4();
          v62 = v153;
          if (v117)
          {
            v147(v152, v86);
            (*(v110 + 8))(v112, v100);
            goto LABEL_20;
          }

          v151 = v118;
          v147(v152, v86);
          (*(v110 + 8))(v112, v100);
          v77 = v144;
          *v144 = v151;
          goto LABEL_22;
        }

        sub_216697664(v98, &qword_27CAB78D0, &unk_21701A800);
        v102 = sub_21700E2E4();
        OUTLINED_FUNCTION_0_45();
        v105 = sub_21668EF88(v103, v104, MEMORY[0x277D22550]);
        OUTLINED_FUNCTION_12(v102, v105);
        v106 = MEMORY[0x277D84F90];
        *v107 = 0x736D657469;
        v107[1] = 0xE500000000000000;
        v107[2] = v78;
        v107[3] = v106;
        OUTLINED_FUNCTION_50();
        (*(v108 + 104))();
        swift_willThrow();
        v109 = OUTLINED_FUNCTION_7_23();
        v97(v109);
      }

      else
      {
        v119 = v152 == 0x74617265704F6F6ELL && v53 == 0xEB000000006E6F69;
        v58 = v155;
        if (v119 || (OUTLINED_FUNCTION_8_18(0x74617265704F6F6ELL, 0xEB000000006E6F69) & 1) != 0)
        {
          v120 = OUTLINED_FUNCTION_7_23();
          v97(v120);

          v62 = v153;
          v61 = v80;
          v77 = v144;
          goto LABEL_23;
        }

        v121 = sub_21700E2E4();
        OUTLINED_FUNCTION_0_45();
        v124 = sub_21668EF88(v122, v123, MEMORY[0x277D22550]);
        OUTLINED_FUNCTION_12(v121, v124);
        *v125 = v152;
        v125[1] = v53;
        v125[2] = v78;
        OUTLINED_FUNCTION_50();
        (*(v126 + 104))();
        swift_willThrow();
        v127 = OUTLINED_FUNCTION_7_23();
        v97(v127);
      }

      v62 = v153;
      goto LABEL_20;
    }

    sub_21700CE04();
    v62 = v153;
    (*(v155 + 16))(v135, v80, v153);
    sub_21668EF88(&qword_280E2C638, _s7SectionVMa, &unk_2170551A4);
    v92 = v151;
    v93 = sub_21700E924();
    if (!v92)
    {
      v94 = v93;
      v147(v58, v86);
      v95 = v144;
      *v144 = v94;
      v77 = v95;
      v58 = v155;
      goto LABEL_23;
    }

    v147(v58, v86);
LABEL_11:
    v58 = v155;
    goto LABEL_24;
  }

  sub_21700CE04();
  OUTLINED_FUNCTION_10_16();
  v62 = v153;
  v61 = v154;
  v63(v30, v154, v153);
  type metadata accessor for PageChangeInstruction.Instruction.InsertItemsUpdateDescriptor(0, v150, v149, v64);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_23();
  v65 = v151;
  v66 = sub_21700E924();
  if (!v65)
  {
    v75 = v66;
    v147(v58, v31);
    v76 = v144;
    *v144 = v75;
    v77 = v76;
    v78 = v47;
    goto LABEL_23;
  }

  v67 = v58;
  v68 = v31;
LABEL_9:
  v147(v67, v68);
LABEL_24:
  (*(v58 + 8))(v61, v62);
  OUTLINED_FUNCTION_21_4();
}

void sub_21682ECB4(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v66 = a1;
  v72 = a3;
  v69 = a2;
  v58 = a4;
  v4 = sub_21700CF34();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x28223BE20](v4);
  v63 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SectionContent(0);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20, &qword_217018700);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v56 - v11;
  v13 = sub_21700CDF4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v60 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v61 = &v56 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v56 - v25;
  sub_21700CE04();
  v56 = sub_21700CDB4();
  v28 = v27;
  v59 = v14;
  v29 = *(v14 + 8);
  v29(v26, v13);
  if (!v28)
  {
    v31 = sub_21700E2E4();
    sub_21668EF88(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v33 = v37;
    v35 = type metadata accessor for PageChangeInstruction.Instruction(0, v69, v72, v38);
    *v33 = 0x496E6F6974636573;
    v36 = 0xE900000000000044;
    goto LABEL_12;
  }

  v68 = v28;
  sub_21700CE04();
  sub_21682FF4C();
  sub_21700CD14();
  v29(v23, v13);
  v30 = v70;
  if (v70 == 62)
  {

    v31 = sub_21700E2E4();
    sub_21668EF88(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v33 = v32;
    v35 = type metadata accessor for PageChangeInstruction.Instruction(0, v69, v72, v34);
    *v33 = 1684957547;
    v36 = 0xE400000000000000;
LABEL_12:
    v33[1] = v36;
    v33[2] = v35;
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    return;
  }

  sub_21700CE04();
  sub_21700CCB4();
  v29(v20, v13);
  v39 = sub_21700D3E4();
  if (__swift_getEnumTagSinglePayload(v12, 1, v39) == 1)
  {

    sub_216697664(v12, &qword_27CAB7D20, &qword_217018700);
LABEL_11:
    v31 = sub_21700E2E4();
    sub_21668EF88(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v33 = v53;
    v35 = type metadata accessor for PageChangeInstruction.Instruction(0, v69, v72, v54);
    v36 = 0xE400000000000000;
    *v33 = 1835365481;
    goto LABEL_12;
  }

  v40 = MEMORY[0x277D837D0];
  v41 = sub_21700D3D4();
  (*(*(v39 - 8) + 8))(v12, v39);
  if (!v41)
  {

    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93B8, &unk_21701CF20);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_217013D90;
  *(v42 + 56) = v40;
  *(v42 + 32) = 0x646E694B6D657469;
  *(v42 + 40) = 0xE800000000000000;
  *(v42 + 64) = v30;
  *(v42 + 120) = v40;
  *(v42 + 88) = &_s7SectionV8ItemKindON;
  *(v42 + 96) = 0x736D657469;
  *(v42 + 104) = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0, qword_21702DD90);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_217013DA0;
  v44 = sub_21700E344();

  v45 = sub_216685F4C(0, &qword_280E29D88, 0x277CBEAC0);
  *(v43 + 56) = v45;
  *(v43 + 32) = v44;
  v46 = sub_216685F4C(0, &qword_27CAB93C8, 0x277CBEA60);
  v47 = MEMORY[0x21CE9FEE0](v43);
  *(v42 + 152) = v46;
  *(v42 + 128) = v47;
  v48 = sub_21700ED24();
  v71 = v45;
  v70 = v48;
  v49 = v48;
  v50 = v61;
  sub_21700CDE4();
  (*(v59 + 16))(v60, v50, v13);
  (*(v64 + 16))(v63, v66, v65);
  v51 = v62;
  v52 = v67;
  sub_21699CE4C();
  v29(v50, v13);
  if (v52)
  {
  }

  else
  {

    v55 = v57;
    sub_2166C62F8(v51, v57, type metadata accessor for SectionContent);
    sub_21682D528(v55, v56, v68, v69, v72, v58);
  }
}

void sub_21682F4E4()
{
  OUTLINED_FUNCTION_22_3();
  v39 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v37 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v40 = v19;
  v41 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v36 = v20;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v21);
  type metadata accessor for PageChangeInstruction.Instruction(0, v5, v3, v22);
  OUTLINED_FUNCTION_1();
  v33 = v24;
  v34 = v23;
  MEMORY[0x28223BE20](v23);
  v26 = &v33 - v25;
  v35 = type metadata accessor for PageChangeInstruction(0, v5, v3, v27);
  v28 = *(v35 + 40);
  v38 = v9;
  v29 = (v9 + v28);
  *v29 = 0;
  v29[1] = 0;
  v45 = v7;
  sub_21700CE04();
  v30 = v39;
  v42 = v12;
  v43 = v10;
  v31 = *(v12 + 16);
  v31(v17, v39, v10);
  sub_21682DF38();
  if (v0)
  {
    (*(v42 + 8))(v30, v43);
    (*(v40 + 8))(v45, v41);
  }

  else
  {
    (*(v33 + 32))(v38, v26, v34);
    v44[0] = v5;
    v44[1] = v5;
    v44[2] = v3;
    v44[3] = v3;
    type metadata accessor for PageChangeInstruction.InvalidationRulesChange(0, v44);
    sub_21700CE04();
    v32 = v43;
    v31(v37, v30, v43);
    swift_getWitnessTable();
    sub_21700D734();
    (*(v42 + 8))(v30, v32);
    (*(v40 + 8))(v45, v41);
    *(v38 + *(v35 + 36)) = v44[0];
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_21682F864()
{
  OUTLINED_FUNCTION_22_3();
  v46[0] = v0;
  v46[1] = v1;
  v48 = v2;
  v49 = v3;
  v47 = v4;
  v51 = v5;
  v7 = v6;
  v53 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  v14 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v46 - v21;
  v52 = v7;
  sub_21700CE04();
  v23 = sub_21700CDB4();
  v25 = v24;
  v50 = *(v16 + 8);
  v50(v22, v14);
  if (!v25)
  {
    v30 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_45();
    v33 = sub_21668EF88(v31, v32, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_12(v30, v33);
    v35 = v34;
    v36 = OUTLINED_FUNCTION_9_26();
    *v35 = 0x6F6974617265706FLL;
    v35[1] = 0xE90000000000006ELL;
    v35[2] = v36;
    OUTLINED_FUNCTION_50();
    (*(v37 + 104))(v35);
LABEL_12:
    swift_willThrow();
    v28 = v51;
    v27 = v52;
    goto LABEL_13;
  }

  v26 = v23 == 0x6563616C706572 && v25 == 0xE700000000000000;
  if (!v26 && (sub_21700F7D4() & 1) == 0)
  {
    v38 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_45();
    v41 = sub_21668EF88(v39, v40, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_12(v38, v41);
    v43 = v42;
    v44 = OUTLINED_FUNCTION_9_26();
    *v43 = v23;
    v43[1] = v25;
    v43[2] = v44;
    OUTLINED_FUNCTION_50();
    (*(v45 + 104))(v43);
    goto LABEL_12;
  }

  v47 = v14;

  v27 = v52;
  sub_21700CE04();
  v28 = v51;
  (*(v9 + 16))(v13, v51, v53);
  v29 = v46[0];
  sub_216BA1950(v19, v13, v48, v49);
  if (v29)
  {
    v14 = v47;
LABEL_13:
    (*(v9 + 8))(v28, v53);
    v50(v27, v14);
    goto LABEL_14;
  }

  (*(v9 + 8))(v28, v53);
  v50(v27, v47);
LABEL_14:
  OUTLINED_FUNCTION_21_4();
}

void sub_21682FC44(void *a1@<X8>)
{
  sub_21682F864();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_21682FC9C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));
  sub_21700DF14();
  return v2;
}

uint64_t sub_21682FCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 40));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_21682FD5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93D0, &qword_21701CF30);
  __swift_allocate_value_buffer(v0, qword_280E2A290);
  v1 = __swift_project_value_buffer(v0, qword_280E2A290);
  if (qword_280E2A260 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E2A268);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21682FE30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93D0, &qword_21701CF30);
  __swift_allocate_value_buffer(v0, qword_280E2A268);
  __swift_project_value_buffer(v0, qword_280E2A268);
  return sub_21700CF14();
}

uint64_t sub_21682FEF0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21682FF4C()
{
  result = qword_280E2C648;
  if (!qword_280E2C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2C648);
  }

  return result;
}

uint64_t sub_21682FFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_216830000()
{
  result = qword_280E2A220;
  if (!qword_280E2A220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93D8, &qword_21701CFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A220);
  }

  return result;
}

__n128 sub_216830064@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15)
{
  v33 = a12;
  v34 = a13;
  v35 = a14;
  v36 = a15;
  v21 = type metadata accessor for GridView(0, &v33);
  v22 = a9 + v21[22];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = v21[23];
  *(a9 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_50();
  (*(v24 + 32))(a9, a1, a12);
  sub_2166A0F18(a2, a9 + v21[17]);
  v25 = a9 + v21[18];
  *v25 = a3;
  *(v25 + 8) = a4;
  *(v25 + 16) = a5;
  *(v25 + 24) = a6;
  v26 = (a9 + v21[20]);
  *v26 = a10;
  v26[1] = a11;
  v27 = a9 + v21[19];
  result = *a7;
  v29 = *(a7 + 16);
  *v27 = *a7;
  *(v27 + 16) = v29;
  *(v27 + 32) = *(a7 + 32);
  *(a9 + v21[21]) = a8;
  return result;
}

uint64_t sub_2168301EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_50();
  (*(v8 + 32))(a4);
  result = type metadata accessor for GridItemDescriptor(0, a2, a3, v9);
  *(a4 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_216830264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v138 = sub_217009B64();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v134 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v133 = &v112 - v5;
  v144 = sub_217009B84();
  v136 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v135 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = a1;
  v7 = *(a1 - 8);
  a1 -= 8;
  v132 = v7;
  MEMORY[0x28223BE20](v8);
  v130 = v9;
  v131 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = *(a1 + 24);
  v10 = v141;
  v140 = *(a1 + 40);
  v11 = v140;
  v12 = sub_2170075B4();
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  *&v15 = v10;
  *(&v15 + 1) = *(a1 + 32);
  *&v16 = v11;
  *(&v16 + 1) = *(a1 + 48);
  v126 = v16;
  v168 = v16;
  v127 = v15;
  v167 = v15;
  v129 = v13;
  v169 = v13;
  v170 = v14;
  v128 = v14;
  type metadata accessor for GridView.ItemView(255, &v167);
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93E8, &unk_21701D160);
  sub_2170089F4();
  sub_217009B44();
  v17 = sub_2170089F4();
  WitnessTable = swift_getWitnessTable();
  *&v167 = v12;
  *(&v167 + 1) = MEMORY[0x277D84030];
  *&v168 = v17;
  *(&v168 + 1) = WitnessTable;
  v169 = MEMORY[0x277D84038];
  sub_21700B174();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9438, &qword_21701D360);
  sub_2170089F4();
  v165 = swift_getWitnessTable();
  v166 = MEMORY[0x277CDF678];
  v19 = swift_getWitnessTable();
  v20 = sub_2166D9530(&qword_280E2AD08, &qword_27CAB93E8, &unk_21701D160, MEMORY[0x277CDFC88]);
  v163 = v19;
  v164 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_216839810(&qword_280E2A6F0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v161 = v21;
  v162 = v22;
  v160 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v24 = sub_2166D9530(&qword_280E2AC38, &qword_27CAB9438, &qword_21701D360, MEMORY[0x277CE01A0]);
  v158 = v23;
  v159 = v24;
  swift_getWitnessTable();
  v25 = sub_21700B454();
  v26 = swift_getWitnessTable();
  *&v167 = v25;
  *(&v167 + 1) = v26;
  swift_getOpaqueTypeMetadata2();
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  *&v167 = v25;
  *(&v167 + 1) = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = MEMORY[0x277CDF918];
  v156 = OpaqueTypeConformance2;
  v157 = MEMORY[0x277CDF918];
  v154 = swift_getWitnessTable();
  v155 = v28;
  v152 = swift_getWitnessTable();
  v153 = v28;
  v150 = swift_getWitnessTable();
  v151 = v28;
  swift_getWitnessTable();
  sub_217008044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9440, qword_21701D368);
  v29 = sub_2170089F4();
  v30 = swift_getWitnessTable();
  v31 = sub_2166D9530(&qword_280E2A8D0, &qword_27CAB9440, qword_21701D368, MEMORY[0x277CE04A0]);
  v148 = v30;
  v149 = v31;
  v32 = swift_getWitnessTable();
  *&v167 = v29;
  *(&v167 + 1) = v32;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v167 = v29;
  *(&v167 + 1) = v32;
  v34 = swift_getOpaqueTypeConformance2();
  v115 = OpaqueTypeMetadata2;
  v116 = v34;
  v35 = sub_217008B64();
  v36 = swift_getWitnessTable();
  v117 = v35;
  *&v167 = v35;
  *(&v167 + 1) = v144;
  v119 = v36;
  *&v168 = v36;
  *(&v168 + 1) = MEMORY[0x277CDE478];
  v37 = swift_getOpaqueTypeMetadata2();
  v121 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v118 = &v112 - v38;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0, &qword_21702FD10);
  v123 = v37;
  v125 = sub_2170089F4();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v120 = &v112 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v122 = &v112 - v41;
  v42 = sub_21700B264();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v114 = (&v112 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = sub_21700B274();
  MEMORY[0x28223BE20](v45 - 8);
  v113 = &v112 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2170090F4();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v50 = &v112 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v142;
  result = sub_21700EC74();
  v53 = result;
  v55 = *v51;
  v54 = *(v51 + 8);
  v56 = *(v51 + 16);
  v57 = *(v51 + 24);
  v58 = *(a1 + 116);
  v59 = v51;
  v60 = v51 + v58;
  v61 = *v60;
  if (*(v60 + 8) == 1)
  {
    v62 = *v60;
  }

  else
  {
    LODWORD(v141) = *(v51 + 24);
    v140 = v54;

    sub_21700ED94();
    v63 = sub_217009C34();
    v112 = v47;
    v64 = v43;
    v65 = v53;
    v66 = v42;
    v67 = v63;
    sub_217007BC4();

    v42 = v66;
    v53 = v65;
    v43 = v64;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v61, 0);
    result = (*(v48 + 8))(v50, v112);
    v54 = v140;
    v57 = v141;
    v62 = *&v167;
  }

  v68 = v143;
  v69 = v51 + v143[22];
  v70 = *(v69 + 8);
  v71 = *(v69 + 24);
  v72 = *(v51 + v143[21]);
  v73 = *(v51 + v143[25]);
  if ((v57 & 0x80000000) == 0)
  {
    if (v55 > 0.0)
    {
      v74 = v62 - (v70 + v71);
      v75 = v72 * 0.0 + (v74 * v73 - ceil(v55 + -1.0) * v72) / v55;
      if (v74 >= v75)
      {
        v76 = v75;
      }

      else
      {
        v76 = v74;
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_35:
    __break(1u);
    return result;
  }

  if (*&v55 < 1 || v54 < 1)
  {
    goto LABEL_35;
  }

  v78 = v62 - (v70 + v71);
  v80 = v53 == 1 && *&v55 == 1;
  if (v57)
  {
    if (!v80)
    {
LABEL_25:
      v81 = v78;
      goto LABEL_27;
    }

LABEL_23:
    if (v73 < 1.0)
    {
      v73 = 1.0;
    }

    goto LABEL_25;
  }

  if (v80)
  {
    goto LABEL_23;
  }

  v81 = v62 - v56;
LABEL_27:
  v82 = (v54 + -1.0) * v72 + (v73 * v81 - ceil(*&v55 + -1.0) * v72) / *&v55 * v54;
  if (v78 >= v82)
  {
    v76 = v82;
  }

  else
  {
    v76 = v78;
  }

LABEL_30:
  v83 = v114;
  *v114 = xmmword_21701D000;
  (*(v43 + 104))(v83, *MEMORY[0x277CDF108], v42);
  sub_21700B394();
  v84 = v113;
  sub_21700B284();
  if (*(v59 + 32) >= v53)
  {
    v85 = v53;
  }

  else
  {
    v85 = *(v59 + 32);
  }

  v86 = sub_216831270(v84, v85);
  v87 = v132;
  v88 = v131;
  (*(v132 + 16))(v131, v59, v68);
  v89 = (*(v87 + 80) + 72) & ~*(v87 + 80);
  v90 = (v130 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  v92 = v126;
  *(v91 + 16) = v127;
  *(v91 + 32) = v92;
  v93 = v128;
  *(v91 + 48) = v129;
  *(v91 + 56) = v93;
  *(v91 + 64) = v86;
  (*(v87 + 32))(v91 + v89, v88, v68);
  *(v91 + v90) = v76;
  *(v91 + ((v90 + 15) & 0xFFFFFFFFFFFFFFF8)) = v53;
  swift_checkMetadataState();
  *&v167 = sub_217008B54();
  *(&v167 + 1) = v94;
  v95 = v133;
  sub_217009B54();
  v96 = v137;
  v97 = v138;
  (*(v137 + 16))(v134, v95, v138);
  v98 = v135;
  sub_217009B74();
  (*(v96 + 8))(v95, v97);
  v99 = swift_checkMetadataState();
  v100 = v118;
  v101 = v144;
  v102 = v119;
  v103 = MEMORY[0x277CDE478];
  sub_21700A7B4();
  (*(v136 + 8))(v98, v101);

  swift_getKeyPath();
  v147 = v76;
  *&v167 = v99;
  *(&v167 + 1) = v101;
  *&v168 = v102;
  *(&v168 + 1) = v103;
  v104 = swift_getOpaqueTypeConformance2();
  v105 = v120;
  v106 = v123;
  sub_21700A3D4();

  (*(v121 + 8))(v100, v106);
  v107 = sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0, &qword_21702FD10, MEMORY[0x277CE0868]);
  v145 = v104;
  v146 = v107;
  v108 = v125;
  v109 = swift_getWitnessTable();
  v110 = v122;
  sub_2166C24DC(v105, v108, v109);
  v111 = *(v124 + 8);
  v111(v105, v108);
  sub_2166C24DC(v110, v108, v109);
  return (v111)(v110, v108);
}

uint64_t sub_216831270(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      v4 = sub_21700B274();
      v5 = sub_21700E8A4();
      *(v5 + 16) = v2;
      OUTLINED_FUNCTION_16();
      v7 = v6;
      v9 = v8 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v11 = *(v10 + 16);
      while (1)
      {
        --v2;
        v11(v9, v3, v4);
        if (!v2)
        {
          break;
        }

        v9 += *(v7 + 72);
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    sub_21700B274();
    OUTLINED_FUNCTION_9_0();
    (*(v12 + 8))(v3);
    return v5;
  }

  return result;
}

void *sub_21683138C(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      sub_216839A30();
      v4 = sub_21700E8A4();
      *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
      for (i = ((v4 & 0xFFFFFFFFFFFFFF8) + 32); ; ++i)
      {
        --v2;
        *i = v3;
        if (!v2)
        {
          break;
        }

        v6 = v3;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v4;
  }

  return result;
}

uint64_t sub_216831410@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, uint64_t a10, uint64_t a11)
{
  v52 = a6;
  v53 = a7;
  v50 = a4;
  v51 = a5;
  v55 = a2;
  v56 = a3;
  v54 = a1;
  v57 = a8;
  v49 = a11;
  v48 = a10;
  v16 = sub_2170075B4();
  v87 = a4;
  v88 = a5;
  v89 = a6;
  v90 = a7;
  v91 = a10;
  v92 = a11;
  type metadata accessor for GridView.ItemView(255, &v87);
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93E8, &unk_21701D160);
  sub_2170089F4();
  sub_217009B44();
  v17 = sub_2170089F4();
  WitnessTable = swift_getWitnessTable();
  v87 = v16;
  v88 = MEMORY[0x277D84030];
  v89 = v17;
  v90 = WitnessTable;
  v91 = MEMORY[0x277D84038];
  sub_21700B174();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9438, &qword_21701D360);
  sub_2170089F4();
  v85 = swift_getWitnessTable();
  v86 = MEMORY[0x277CDF678];
  v83 = swift_getWitnessTable();
  v84 = sub_2166D9530(&qword_280E2AD08, &qword_27CAB93E8, &unk_21701D160, MEMORY[0x277CDFC88]);
  v81 = swift_getWitnessTable();
  v82 = sub_216839810(&qword_280E2A6F0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v80 = swift_getWitnessTable();
  v78 = swift_getWitnessTable();
  v79 = sub_2166D9530(&qword_280E2AC38, &qword_27CAB9438, &qword_21701D360, MEMORY[0x277CE01A0]);
  swift_getWitnessTable();
  v19 = sub_21700B454();
  v20 = swift_getWitnessTable();
  v87 = v19;
  v88 = v20;
  swift_getOpaqueTypeMetadata2();
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  v21 = sub_2170089F4();
  v87 = v19;
  v88 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = MEMORY[0x277CDF918];
  v76 = OpaqueTypeConformance2;
  v77 = MEMORY[0x277CDF918];
  v74 = swift_getWitnessTable();
  v75 = v23;
  v72 = swift_getWitnessTable();
  v73 = v23;
  v70 = swift_getWitnessTable();
  v71 = v23;
  v46 = v21;
  v45 = swift_getWitnessTable();
  v24 = sub_217008044();
  v47 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = v43 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9440, qword_21701D368);
  v27 = sub_2170089F4();
  v44 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = v43 - v28;
  v30 = swift_getWitnessTable();
  v43[0] = v30;
  v31 = sub_2166D9530(&qword_280E2A8D0, &qword_27CAB9440, qword_21701D368, MEMORY[0x277CE04A0]);
  v68 = v30;
  v69 = v31;
  v32 = swift_getWitnessTable();
  v87 = v27;
  v88 = v32;
  v43[1] = MEMORY[0x277CDEA30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v34 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v36 = v43 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = v43 - v38;
  sub_217009C44();
  v58 = v50;
  v59 = v51;
  v60 = v52;
  v61 = v53;
  v62 = v48;
  v63 = v49;
  v64 = v54;
  v65 = v55;
  v66 = a9;
  v67 = v56;
  sub_217008054();
  sub_21700A564();
  (*(v47 + 8))(v26, v24);
  sub_21700A6F4();
  (*(v44 + 8))(v29, v27);
  v87 = v27;
  v88 = v32;
  v40 = swift_getOpaqueTypeConformance2();
  sub_2166C24DC(v36, OpaqueTypeMetadata2, v40);
  v41 = *(v34 + 8);
  v41(v36, OpaqueTypeMetadata2);
  sub_2166C24DC(v39, OpaqueTypeMetadata2, v40);
  return (v41)(v39, OpaqueTypeMetadata2);
}

uint64_t sub_216831B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  v96 = a7;
  v97 = a8;
  v94 = a6;
  v95 = a5;
  v93 = a4;
  v100 = a2;
  v101 = a3;
  v98 = a1;
  v102 = a9;
  v92 = a11;
  v17 = sub_217009714();
  MEMORY[0x28223BE20](v17 - 8);
  v99 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2170075B4();
  v129 = a4;
  v130 = a5;
  v131 = a6;
  v132 = a7;
  v133 = a8;
  v134 = a11;
  type metadata accessor for GridView.ItemView(255, &v129);
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93E8, &unk_21701D160);
  sub_2170089F4();
  sub_217009B44();
  v20 = sub_2170089F4();
  WitnessTable = swift_getWitnessTable();
  v129 = v19;
  v130 = MEMORY[0x277D84030];
  v131 = v20;
  v132 = WitnessTable;
  v133 = MEMORY[0x277D84038];
  sub_21700B174();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9438, &qword_21701D360);
  v22 = sub_2170089F4();
  v127 = swift_getWitnessTable();
  v128 = MEMORY[0x277CDF678];
  v23 = MEMORY[0x277CDFAD8];
  v24 = swift_getWitnessTable();
  v25 = sub_2166D9530(&qword_280E2AD08, &qword_27CAB93E8, &unk_21701D160, MEMORY[0x277CDFC88]);
  v125 = v24;
  v126 = v25;
  v26 = swift_getWitnessTable();
  v27 = sub_216839810(&qword_280E2A6F0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v123 = v26;
  v124 = v27;
  v91 = v23;
  v122 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v29 = sub_2166D9530(&qword_280E2AC38, &qword_27CAB9438, &qword_21701D360, MEMORY[0x277CE01A0]);
  v120 = v28;
  v121 = v29;
  v74 = v22;
  v72 = swift_getWitnessTable();
  v30 = sub_21700B454();
  v78 = v30;
  v85 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v73 = &v67 - v31;
  v76 = swift_getWitnessTable();
  v129 = v30;
  v130 = v76;
  v81 = MEMORY[0x277CDEA40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v83 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v68 = &v67 - v32;
  v77 = sub_2170089F4();
  v86 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v69 = &v67 - v33;
  v80 = sub_2170089F4();
  v87 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v70 = &v67 - v34;
  v82 = sub_2170089F4();
  v89 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v71 = &v67 - v35;
  v88 = sub_2170089F4();
  v90 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v79 = &v67 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v84 = &v67 - v38;
  sub_21700DF14();
  v67 = sub_217009184();
  v40 = v93;
  v39 = v94;
  v41 = v95;
  v42 = v96;
  v129 = v93;
  v130 = v95;
  v131 = v94;
  v132 = v96;
  v43 = v97;
  v44 = v92;
  v133 = v97;
  v134 = v92;
  type metadata accessor for GridView.HorizontalGridView(0, &v129);
  v103 = v40;
  v104 = v41;
  v105 = v39;
  v106 = v42;
  v107 = v43;
  v108 = v44;
  v109 = v100;
  v110 = a10;
  v111 = v101;
  sub_216838394();
  v45 = v73;
  sub_21700B444();
  v46 = v68;
  v47 = v78;
  v48 = v76;
  sub_21700A714();
  (*(v85 + 8))(v45, v47);
  sub_217009CB4();
  v129 = v47;
  v130 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v69;
  v51 = OpaqueTypeMetadata2;
  sub_21700AAB4();
  (*(v83 + 8))(v46, v51);
  sub_217009CD4();
  v118 = OpaqueTypeConformance2;
  v119 = MEMORY[0x277CDF918];
  v52 = MEMORY[0x277CDF918];
  v53 = v77;
  v54 = swift_getWitnessTable();
  v55 = v70;
  sub_21700AAB4();
  (*(v86 + 8))(v50, v53);
  sub_217009C94();
  v116 = v54;
  v117 = v52;
  v56 = v80;
  v57 = swift_getWitnessTable();
  v58 = v71;
  sub_21700AAB4();
  (*(v87 + 8))(v55, v56);
  sub_217009CA4();
  v114 = v57;
  v115 = v52;
  v59 = v82;
  v60 = swift_getWitnessTable();
  v61 = v79;
  sub_21700AAB4();
  (*(v89 + 8))(v58, v59);
  v112 = v60;
  v113 = v52;
  v62 = v88;
  v63 = swift_getWitnessTable();
  v64 = v84;
  sub_2166C24DC(v61, v62, v63);
  v65 = *(v90 + 8);
  v65(v61, v62);
  sub_2166C24DC(v64, v62, v63);
  return (v65)(v64, v62);
}

uint64_t sub_216832538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v76 = a2;
  v80 = a9;
  v98 = a3;
  v99 = a4;
  v100 = a5;
  v101 = a6;
  v102 = a7;
  v103 = a8;
  v81 = a8;
  v18 = type metadata accessor for GridView.HorizontalGridView(0, &v98);
  v64 = *(v18 - 8);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v18);
  v82 = &v57 - v19;
  v20 = sub_2170075B4();
  v75 = v20;
  MEMORY[0x28223BE20](v20);
  v63 = &v57 - v21;
  v98 = a3;
  v99 = a4;
  v100 = a5;
  v101 = a6;
  v102 = a7;
  v103 = a8;
  v66 = type metadata accessor for GridView.ItemView(255, &v98);
  v67 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93E8, &unk_21701D160);
  v71 = sub_2170089F4();
  sub_217009B44();
  v22 = sub_2170089F4();
  v72 = v22;
  WitnessTable = swift_getWitnessTable();
  v98 = v20;
  v99 = MEMORY[0x277D84030];
  v100 = v22;
  v101 = WitnessTable;
  v102 = MEMORY[0x277D84038];
  v73 = sub_21700B174();
  v78 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v68 = &v57 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9438, &qword_21701D360);
  v69 = sub_2170089F4();
  v79 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v70 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v77 = &v57 - v26;
  v59 = v18;
  v62 = a1;
  v27 = a3;
  v60 = a5;
  sub_21700EC34();
  v83 = a3;
  v28 = a4;
  v58 = a4;
  v84 = a4;
  v85 = a5;
  v86 = a6;
  v29 = a6;
  v30 = a7;
  v31 = v81;
  v87 = a7;
  v88 = v81;
  KeyPath = swift_getKeyPath();
  v32 = v64;
  (*(v64 + 16))(v82, a1, v18);
  v33 = (*(v32 + 80) + 64) & ~*(v32 + 80);
  v34 = (v65 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v35[2] = v27;
  v35[3] = v28;
  v36 = v60;
  v35[4] = v60;
  v35[5] = v29;
  v35[6] = v30;
  v35[7] = v31;
  v37 = v35 + v33;
  v38 = v59;
  (*(v32 + 32))(v37, v82, v59);
  *(v35 + v34) = a10;
  *(v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
  v39 = swift_allocObject();
  v40 = v58;
  v39[2] = v27;
  v39[3] = v40;
  v39[4] = v36;
  v39[5] = v29;
  v41 = v81;
  v39[6] = v30;
  v39[7] = v41;
  v39[8] = sub_216839980;
  v39[9] = v35;
  v96 = swift_getWitnessTable();
  v97 = MEMORY[0x277CDF678];
  v42 = swift_getWitnessTable();
  v43 = sub_2166D9530(&qword_280E2AD08, &qword_27CAB93E8, &unk_21701D160, MEMORY[0x277CDFC88]);
  v94 = v42;
  v95 = v43;
  v44 = swift_getWitnessTable();
  v45 = sub_216839810(&qword_280E2A6F0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v92 = v44;
  v93 = v45;
  v56 = swift_getWitnessTable();
  v46 = v68;
  sub_21700B154();
  sub_21700B414();
  v98 = *(v62 + *(v38 + 104));
  v91 = v56;
  v47 = v73;
  v48 = swift_getWitnessTable();
  v49 = v70;
  sub_21700AB54();

  (*(v78 + 8))(v46, v47);
  v50 = sub_2166D9530(&qword_280E2AC38, &qword_27CAB9438, &qword_21701D360, MEMORY[0x277CE01A0]);
  v89 = v48;
  v90 = v50;
  v51 = v69;
  v52 = swift_getWitnessTable();
  v53 = v77;
  sub_2166C24DC(v49, v51, v52);
  v54 = *(v79 + 8);
  v54(v49, v51);
  sub_2166C24DC(v53, v51, v52);
  return (v54)(v53, v51);
}

uint64_t sub_216832D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a11, uint64_t a12)
{
  v78 = a4;
  v79 = a3;
  v73 = a2;
  v76 = a1;
  v63 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v56 - v17;
  v64 = &v56 - v17;
  v94 = a5;
  v95 = a6;
  v96 = a7;
  v97 = a8;
  v98 = a11;
  v99 = a12;
  v72 = type metadata accessor for GridView.ItemView(0, &v94);
  v75 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = &v56 - v19;
  v74 = sub_2170089F4();
  v77 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v70 = &v56 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93E8, &unk_21701D160);
  v21 = sub_2170089F4();
  v59 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v68 = &v56 - v22;
  sub_217009B44();
  v61 = v21;
  v57 = sub_2170089F4();
  v62 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v58 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v60 = &v56 - v26;
  (*(v16 + 16))(v18, v73, AssociatedTypeWitness, v25);
  v27 = a5;
  v94 = a5;
  v95 = a6;
  v28 = a6;
  v96 = a7;
  v97 = a8;
  v65 = a8;
  v66 = a11;
  v98 = a11;
  v99 = a12;
  v67 = a12;
  v29 = type metadata accessor for GridView.HorizontalGridView(0, &v94);
  v30 = v79;
  v31 = (v79 + *(v29 + 92));
  v32 = *v31;
  v33 = v31[1];
  sub_21700DF14();
  *(&v55 + 1) = a11;
  *&v55 = a8;
  v34 = a7;
  v35 = v69;
  v36 = v76;
  v37 = v33;
  v38 = v27;
  sub_216833534(v64, v76, v32, v37, *(v30 + 80), *(v30 + 88), v27, v69, v28, a7, v55, a12);

  v39 = v72;
  WitnessTable = swift_getWitnessTable();
  sub_2166BF464();
  v41 = v70;
  sub_21700A9C4();
  (*(v75 + 8))(v35, v39);
  v80 = v38;
  v81 = v28;
  v82 = v34;
  v83 = v65;
  v42 = v68;
  v84 = v66;
  v85 = v67;
  v86 = v79;
  v87 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9430, &qword_21701D208);
  v92 = WitnessTable;
  v93 = MEMORY[0x277CDF678];
  v43 = v74;
  v44 = swift_getWitnessTable();
  sub_216838A00();
  sub_2166BF464();
  sub_21700AA94();
  result = (*(v77 + 8))(v41, v43);
  if (__OFSUB__(v78, v36))
  {
    __break(1u);
  }

  else
  {
    v46 = sub_2166D9530(&qword_280E2AD08, &qword_27CAB93E8, &unk_21701D160, MEMORY[0x277CDFC88]);
    v90 = v44;
    v91 = v46;
    v47 = v61;
    v48 = swift_getWitnessTable();
    v49 = v58;
    sub_21700A8B4();
    (*(v59 + 8))(v42, v47);
    v50 = sub_216839810(&qword_280E2A6F0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    v88 = v48;
    v89 = v50;
    v51 = v57;
    v52 = swift_getWitnessTable();
    v53 = v60;
    sub_2166C24DC(v49, v51, v52);
    v54 = *(v62 + 8);
    v54(v49, v51);
    sub_2166C24DC(v53, v51, v52);
    return (v54)(v53, v51);
  }

  return result;
}

int *sub_216833534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t x7_0@<X7>, uint64_t a9, __int128 a11, uint64_t a12)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a8, a1, AssociatedTypeWitness);
  v25[0] = a7;
  v25[1] = x7_0;
  v25[2] = a9;
  v26 = a11;
  v27 = a12;
  result = type metadata accessor for GridView.ItemView(0, v25);
  *(a8 + result[17]) = a2;
  v22 = (a8 + result[18]);
  *v22 = a3;
  v22[1] = a4;
  v23 = (a8 + result[19]);
  *v23 = a5;
  v23[1] = a6;
  return result;
}

uint64_t sub_21683364C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  v25[0] = a4;
  v25[1] = a5;
  v25[2] = a6;
  v25[3] = a7;
  v25[4] = a8;
  v25[5] = a9;
  v12 = (a1 + *(type metadata accessor for GridView.HorizontalGridView(0, v25) + 96));
  v13 = *v12;
  if (v13 == 3)
  {
    result = 0;
    a2 = 0;
    v15 = 0;
    v16 = 0;
    v13 = 0;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 255;
    v20 = 0uLL;
  }

  else
  {
    v21 = v12[24];
    v23 = *(a1 + 40);
    v24 = *(v12 + 8);
    v22 = *(a1 + 56);
    v15 = *(a1 + 72);
    result = swift_getKeyPath();
    v20 = v22;
    v18 = v23;
    v17 = v24;
    LOBYTE(v25[0]) = 0;
    v19 = 0;
    v16 = v21 & 1;
  }

  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = v19;
  *(a3 + 40) = v13;
  *(a3 + 48) = v17;
  *(a3 + 64) = v16;
  *(a3 + 72) = a2;
  *(a3 + 80) = v18;
  *(a3 + 96) = v20;
  *(a3 + 112) = v15;
  return result;
}

double sub_216833740()
{
  sub_2168337B8();
  sub_217009104();
  return v1;
}

unint64_t sub_2168337B8()
{
  result = qword_280E37F28[0];
  if (!qword_280E37F28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E37F28);
  }

  return result;
}

void sub_21683383C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_216833EE8();
    if (v2 <= 0x3F)
    {
      sub_2166D9E00(319, &qword_280E402C8, &unk_282927B80, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2166B0B84();
        if (v4 <= 0x3F)
        {
          sub_2166D9E00(319, &qword_280E2B480, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_216833F44(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21683397C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_217008844() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_25;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((v12 + ((((((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_25:
      if (v7 < 0x7FFFFFFF)
      {
        v19 = *(((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
        if (v19 >= 0xFFFFFFFF)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }

      else
      {

        return __swift_getEnumTagSinglePayload(a1, v7, v5);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_25;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    switch(v13)
    {
      case 2:
        LODWORD(v13) = *a1;
        break;
      case 3:
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v13) = *a1;
        break;
      default:
        LODWORD(v13) = *a1;
        break;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_216833BE8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_217008844() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 64);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((v14 + ((((((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v14) + 1;
  v16 = 8 * v15;
  if (a3 <= v10)
  {
    v17 = 0;
  }

  else if (v15 <= 3)
  {
    v20 = ((a3 - v10 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
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
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v10 >= a2)
  {
    switch(v17)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_46:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if (v9 < 0x7FFFFFFF)
          {
            v23 = &a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v23 + 8) = 0u;
              *(v23 + 24) = 0u;
              *v23 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v23 + 24) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v18 = ~v10 + a2;
    if (v15 < 4)
    {
      v19 = (v18 >> v16) + 1;
      if (v15)
      {
        v22 = v18 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        else if (v15 == 2)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v18;
      v19 = 1;
    }

    switch(v17)
    {
      case 1:
        a1[v15] = v19;
        break;
      case 2:
        *&a1[v15] = v19;
        break;
      case 3:
        goto LABEL_46;
      case 4:
        *&a1[v15] = v19;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_216833EE8()
{
  result = qword_280E402C0;
  if (!qword_280E402C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E402C0);
  }

  return result;
}

void sub_216833F44(uint64_t a1)
{
  if (!qword_280E2B450)
  {
    sub_217008844();
    v1 = sub_2170080E4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B450);
    }
  }
}

uint64_t sub_216833FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, uint64_t a17, uint64_t a18, __int128 a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, __int128 a24, __int128 a25, uint64_t a26)
{
  v34 = *(a6 + 16);
  *(a9 + 40) = *a6;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 56) = v34;
  *(a9 + 72) = *(a6 + 32);
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  v43 = a23;
  v44 = a24;
  v45 = a25;
  v46 = a26;
  v35 = type metadata accessor for GridView.HorizontalGridView(0, &v43);
  (*(*(a23 - 8) + 32))(a9 + v35[20], a17, a23);
  v36 = (a9 + v35[21]);
  *v36 = a10;
  v36[1] = a11;
  v37 = (a9 + v35[22]);
  *v37 = a12;
  v37[1] = a13;
  v37[2] = a14;
  v37[3] = a15;
  v38 = a9 + v35[23];
  v39 = *(a18 + 16);
  *v38 = *a18;
  *(v38 + 16) = v39;
  *(v38 + 32) = *(a18 + 32);
  v40 = a9 + v35[24];
  *v40 = a19;
  *(v40 + 16) = a20;
  *(v40 + 24) = a21;
  *(a9 + v35[25]) = a16;
  *(a9 + v35[26]) = a22;
  v41 = a9 + v35[27];
  result = swift_getKeyPath();
  *v41 = result;
  *(v41 + 8) = 0;
  return result;
}

uint64_t sub_216834154@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v4 = sub_21700D8E4();
  v92 = *(v4 - 8);
  v93 = v4;
  MEMORY[0x28223BE20](v4);
  v91 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170099D4();
  v89 = *(v6 - 8);
  v90 = v6;
  MEMORY[0x28223BE20](v6);
  v88 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = sub_21700F164();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v78 = v65 - v9;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v65 - v12;
  v73 = a1[6];
  v75 = type metadata accessor for GridItemDescriptor(0, AssociatedTypeWitness, v73, v14);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v16 = v65 - v15;
  v77 = *(a1[3] - 8);
  MEMORY[0x28223BE20](v17);
  v72 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[5];
  v96 = v20;
  v97 = v19;
  v21 = v20;
  v70 = v20;
  v22 = v19;
  v71 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v69 = v65 - v24;
  v96 = v21;
  v97 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v96 = OpaqueTypeMetadata2;
  v97 = OpaqueTypeConformance2;
  v26 = OpaqueTypeMetadata2;
  v67 = OpaqueTypeMetadata2;
  v27 = OpaqueTypeConformance2;
  v68 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeMetadata2();
  v85 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v66 = v65 - v29;
  v96 = v26;
  v97 = v27;
  v30 = swift_getOpaqueTypeConformance2();
  v87 = v28;
  v96 = v28;
  v97 = v30;
  v81 = v30;
  v86 = swift_getOpaqueTypeMetadata2();
  v83 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v79 = v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v32);
  v80 = v65 - v34;
  v35 = a1;
  v36 = *(v2 + *(a1 + 19));
  v37 = *(v10 + 16);
  v65[1] = v10 + 16;
  v37(v13, v33);
  v38 = *(v2 + *(a1 + 17));
  v39 = v73;
  sub_2168301EC(v38, AssociatedTypeWitness, v73, v16);
  v40 = v72;
  v36(v16);
  (*(v74 + 8))(v16, v75);
  v41 = v78;
  (v37)(v78, v2, AssociatedTypeWitness);
  __swift_storeEnumTagSinglePayload(v41, 0, 1, AssociatedTypeWitness);
  v42 = v69;
  v43 = v38;
  v44 = v70;
  sub_216BE53B0(v41, v43, 0, v70, AssociatedTypeWitness, v71, v39, v69);
  (*(v82 + 8))(v41, v84);
  v45 = v40;
  v46 = v66;
  (*(v77 + 8))(v45, v44);
  v47 = v88;
  sub_2170099B4();
  v48 = v67;
  sub_21700A784();
  (*(v89 + 8))(v47, v90);
  (*(v76 + 8))(v42, v48);
  v49 = v35[7];
  (*(v49 + 8))(AssociatedTypeWitness, v49);
  v50 = (*(v49 + 16))(AssociatedTypeWitness, v49);
  if (v51)
  {
    v52 = MEMORY[0x277D837D0];
  }

  else
  {
    v50 = 0;
    v52 = 0;
    v98 = 0;
  }

  v96 = v50;
  v97 = v51;
  v99 = v52;
  v53 = (v2 + *(v35 + 18));
  v55 = *v53;
  v54 = v53[1];
  v95[3] = MEMORY[0x277D837D0];
  v95[0] = v55;
  v95[1] = v54;
  sub_21700DF14();
  v56 = v91;
  sub_21700D8D4();

  sub_2166997CC(v95, &unk_27CABF7A0, &unk_217014D20);
  sub_2166997CC(&v96, &unk_27CABF7A0, &unk_217014D20);
  v57 = v79;
  v58 = v87;
  v59 = v81;
  sub_21700A204();
  (*(v92 + 8))(v56, v93);
  (*(v85 + 8))(v46, v58);
  v96 = v58;
  v97 = v59;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = v80;
  v62 = v86;
  sub_2166C24DC(v57, v86, v60);
  v63 = *(v83 + 8);
  v63(v57, v62);
  sub_2166C24DC(v61, v62, v60);
  return (v63)(v61, v62);
}

uint64_t sub_216834AC4(double *a1)
{
  v3 = sub_217009714();
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_1();
  v222 = sub_21700B264();
  OUTLINED_FUNCTION_1();
  v220 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v221 = (v7 - v6);
  OUTLINED_FUNCTION_4_1();
  v8 = sub_21700B274();
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_7();
  v219 = v10 - v9;
  v11 = *(a1 + 2);
  v263 = v11;
  v12 = *(a1 + 4);
  sub_2170075B4();
  v258 = a1;
  v274 = *(a1 + 6);
  *&v13 = v11;
  *&v245 = a1[3];
  *(&v245 + 1) = v12;
  *(&v13 + 1) = v245;
  *&v14 = v12;
  v244 = *(a1 + 5);
  *(&v14 + 1) = v244;
  v264 = v14;
  v266 = v13;
  v288 = a1[7];
  *&v273 = v288;
  v15 = OUTLINED_FUNCTION_33_13();
  type metadata accessor for GridView.ItemView(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93E8, &unk_21701D160);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_33_13();
  sub_21700B174();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0, &qword_21702FD10);
  sub_2170089F4();
  OUTLINED_FUNCTION_11_20();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_17();
  v283 = WitnessTable;
  v284 = sub_2166D9530(v17, &qword_27CAB93E8, &unk_21701D160, v18);
  OUTLINED_FUNCTION_4_24();
  v282 = swift_getWitnessTable();
  OUTLINED_FUNCTION_9_27();
  v19 = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_5();
  v280[52] = v19;
  v281 = sub_2166D9530(v20, &qword_27CAB93F0, &qword_21702FD10, v21);
  v204 = swift_getWitnessTable();
  sub_21700B494();
  OUTLINED_FUNCTION_1();
  v207 = v22;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_105();
  v205 = v24;
  v272 = v25;
  sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v212 = v26;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_105();
  v209 = v28;
  OUTLINED_FUNCTION_4_1();
  v271 = v29;
  sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v214 = v30;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_105();
  v210 = v32;
  OUTLINED_FUNCTION_4_1();
  v277 = v33;
  sub_2170089F4();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_105();
  v213 = v35;
  OUTLINED_FUNCTION_4_1();
  v262 = v36;
  v276 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v218 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_0();
  v217 = v39;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_47_1();
  v216 = v41;
  v268 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F8, &unk_21701D170);
  v287 = MEMORY[0x277D84038];
  OUTLINED_FUNCTION_33_13();
  sub_21700B174();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8860, &unk_21701A550);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB88D8, &qword_21701D180);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_2170089F4();
  v280[51] = WitnessTable;
  v280[49] = swift_getWitnessTable();
  v280[50] = MEMORY[0x277CE0760];
  v42 = swift_getWitnessTable();
  v43 = MEMORY[0x277CE04A0];
  v280[47] = v42;
  v280[48] = sub_2166D9530(&qword_280E2A8D8, &qword_27CAB8860, &unk_21701A550, MEMORY[0x277CE04A0]);
  v280[45] = swift_getWitnessTable();
  v280[46] = sub_2166D9530(&qword_280E2A8C8, &qword_27CAB88D8, &qword_21701D180, v43);
  v280[43] = swift_getWitnessTable();
  v280[44] = v281;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_33_13();
  v44 = sub_217009EE4();
  v45 = sub_2170086D4();
  OUTLINED_FUNCTION_23_9();
  v46 = swift_getWitnessTable();
  v47 = MEMORY[0x277CDD980];
  OUTLINED_FUNCTION_22_21();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v285 = v44;
  *(&v285 + 1) = v45;
  *&v286 = v46;
  *(&v286 + 1) = v47;
  v49 = OUTLINED_FUNCTION_45_7(&v285);
  *&v285 = OpaqueTypeMetadata2;
  v239 = v49;
  *(&v285 + 1) = v49;
  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_33_13();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_27_11();
  sub_2170089F4();
  OUTLINED_FUNCTION_36_7();
  v50 = sub_2170089F4();
  swift_getTupleTypeMetadata2();
  v51 = sub_21700B4E4();
  OUTLINED_FUNCTION_1();
  v242 = v52;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_105();
  v249 = v54;
  OUTLINED_FUNCTION_4_1();
  v234 = swift_checkMetadataState();
  OUTLINED_FUNCTION_1();
  v232 = v55;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_105();
  v231 = v57;
  OUTLINED_FUNCTION_4_1();
  v230 = swift_checkMetadataState();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_4_1();
  v229 = swift_checkMetadataState();
  OUTLINED_FUNCTION_1();
  v228 = v59;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_105();
  v227 = v61;
  v240 = v43;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_105();
  v241 = v46;
  v235 = *(v46 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_105();
  v233 = v64;
  v243 = v50;
  v236 = *(v50 - 8);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_1_0();
  v238 = v66;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_47_1();
  v248 = v68;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_1_0();
  v237 = v70;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_47_1();
  v260 = v72;
  v285 = v266;
  v286 = v264;
  v287 = v274;
  v288 = *&v273;
  v73 = OUTLINED_FUNCTION_33_13();
  v75 = type metadata accessor for GridView.HorizontalGridView(v73, v74);
  v261 = v51;
  v76 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v251 = v77;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_105();
  v250 = v79;
  OUTLINED_FUNCTION_16();
  v224 = v80;
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_7();
  v225 = v83 - v82;
  v254 = v75;
  v84 = v258;
  OUTLINED_FUNCTION_16();
  v226 = v85;
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_1_0();
  v247 = v87;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_47_1();
  v246 = v89;
  OUTLINED_FUNCTION_4_1();
  sub_217009564();
  OUTLINED_FUNCTION_1();
  v252 = v91;
  v253 = v90;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_105();
  v270 = v93;
  OUTLINED_FUNCTION_4_1();
  v94 = sub_217008844();
  OUTLINED_FUNCTION_1();
  v257 = v95;
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_7();
  v99 = v98 - v97;
  v100 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v102 = v101;
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_7();
  v106 = v105 - v104;
  v107 = (v278 + *(v258 + 17));
  v108 = v107[4];
  v256 = v107[3];
  v109 = __swift_project_boxed_opaque_existential_1(v107, v256);
  v255 = v76;
  v117 = v278 + *(v258 + 22);
  v118 = *v117;
  v223 = *(v117 + 8);
  if (v223 == 1)
  {
    v119 = *v117;
  }

  else
  {

    sub_21700ED94();
    v201 = v94;
    v120 = sub_217009C34();
    sub_217007BC4();

    v84 = v258;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v118, 0);
    v121 = OUTLINED_FUNCTION_39_6();
    v109 = v122(v121);
    v119 = *&v285;
  }

  sub_216C0C570(v109, v110, v111, v112, v113, v114, v115, v116, v200, v201, v106, v100, v204, v205, v207, v209, v210, v212, v213, v214);
  (*(v108 + 8))(&v285, v99, v256, v108, v119);
  result = (*(v257 + 8))(v99, v94);
  v124 = v290;
  v125 = v291;
  v126 = v292;
  v127 = v293;
  v128 = v288;
  v129 = v289;
  v130 = v287;
  v297 = v287;
  v295 = v285;
  v296 = v286;
  v131 = v294;
  v132 = v285;
  v133 = (v287 >> 5) & 3;
  if (!v133)
  {
    v269 = *(&v296 + 1);
    v267 = v296;
    v135 = *(&v295 + 1);
    v136 = (v278 + v84[20]);
    v265 = *v136;
    v137 = v84;
    v138 = v136[1];
    (*(v224 + 16))(v225, v278, v263);
    v139 = v137[18];
    v140 = v278 + v137[19];
    v141 = *(v140 + 16);
    v298[0] = *v140;
    v298[1] = v141;
    v299 = *(v140 + 32);
    *(&v199 + 1) = v274;
    *&v199 = v244;
    v142 = v130 & 0x9F;
    v143 = MEMORY[0x277CDF918];
    sub_216833FB4(v135, v267, v269, v142, v132, &v295, v265, v138, v247, v128, v129, v124, v125, v126, v127, v131, v225, v298, *(v278 + v139), *(v278 + v139 + 16), *(v278 + v139 + 24), *(v278 + v137[21]), v263, v245, v199, v273);
    OUTLINED_FUNCTION_1_33();
    v144 = swift_getWitnessTable();
    v145 = OUTLINED_FUNCTION_39_6();
    sub_2166C24DC(v145, v146, v144);

    sub_2168387D4(v298, v280);
    v279 = *(v226 + 8);
    v147 = OUTLINED_FUNCTION_39_6();
    v148(v147);
    sub_2166C24DC(v246, v254, v144);
    OUTLINED_FUNCTION_0_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_39_6();
    sub_2166C2718();
    OUTLINED_FUNCTION_6_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_2_32();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4_24();
    swift_getWitnessTable();
    swift_getWitnessTable();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_2166C2718();
    (*(v251 + 8))(v250, v255);
    v279(v247, v254);
    v279(v246, v254);
LABEL_16:
    OUTLINED_FUNCTION_1_33();
    v194 = swift_getWitnessTable();
    OUTLINED_FUNCTION_0_2();
    v195 = swift_getWitnessTable();
    v280[31] = v194;
    v280[32] = v195;
    v196 = swift_getWitnessTable();
    OUTLINED_FUNCTION_2_32();
    v280[29] = swift_getWitnessTable();
    v280[30] = v143;
    v280[27] = swift_getWitnessTable();
    v280[28] = v143;
    v280[25] = swift_getWitnessTable();
    v280[26] = v143;
    v280[23] = swift_getWitnessTable();
    v280[24] = v143;
    v197 = swift_getWitnessTable();
    v280[21] = v196;
    v280[22] = v197;
    v198 = swift_getWitnessTable();
    sub_2166C24DC(v270, v253, v198);
    return (*(v252 + 8))(v270, v253);
  }

  if (v133 != 1)
  {
    sub_21700B124();
    sub_21700AD34();
    v149 = sub_21700AD04();

    v150 = sub_217009C84();
    v151 = v260 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9400, &qword_21701D188) + 36);
    *v151 = v149;
    *(v151 + 8) = v150;
    v152 = sub_217009CB4();
    sub_217007F24();
    v154 = v153;
    v156 = v155;
    v158 = v157;
    v160 = v159;
    v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9408, &unk_21701D190);
    v162 = v260 + *(v161 + 36);
    *v162 = v152;
    *(v162 + 8) = v154;
    *(v162 + 16) = v156;
    *(v162 + 24) = v158;
    *(v162 + 32) = v160;
    *(v162 + 40) = 0;
    *(v260 + *(v268 + 36)) = xmmword_21701D010;
    MEMORY[0x28223BE20](v161);
    swift_checkMetadataState();
    sub_217009ED4();
    sub_2170086C4();
    sub_21700ABC4();
    (*(v232 + 8))(v231, v234);
    v163 = OUTLINED_FUNCTION_42_11();
    v164(v163, v230);
    sub_21700A794();
    (*(v228 + 8))(v227, v229);
    sub_217009C94();
    *&v298[0] = v229;
    *(&v298[0] + 1) = v239;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_21700AAB4();
    v166 = OUTLINED_FUNCTION_42_11();
    v167(v166, v240);
    sub_217009CA4();
    v280[19] = OpaqueTypeConformance2;
    v168 = MEMORY[0x277CDF918];
    v280[20] = MEMORY[0x277CDF918];
    OUTLINED_FUNCTION_4_24();
    v169 = swift_getWitnessTable();
    OUTLINED_FUNCTION_25_8();
    sub_21700AAB4();
    (*(v235 + 8))(v233, v241);
    v280[17] = v169;
    v280[18] = v168;
    v170 = swift_getWitnessTable();
    sub_2166C24DC(v238, v243, v170);
    v171 = *(v236 + 8);
    v171(v238, v243);
    v275 = v171;
    sub_216838564(v260, v237);
    *&v298[0] = v237;
    (*(v236 + 16))(v238, v248, v243);
    *(&v298[0] + 1) = v238;
    v280[0] = v268;
    v280[1] = v243;
    v280[15] = sub_2168385D4();
    v280[16] = v170;
    sub_216984F84(v298, 2, v280);
    v171(v238, v243);
    sub_2166997CC(v237, &qword_27CAB93F8, &unk_21701D170);
    OUTLINED_FUNCTION_1_33();
    v172 = swift_getWitnessTable();
    OUTLINED_FUNCTION_0_2();
    v173 = swift_getWitnessTable();
    sub_2166C2CB0();
    v280[13] = v172;
    v280[14] = v173;
    OUTLINED_FUNCTION_6_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_2_32();
    v280[11] = swift_getWitnessTable();
    v174 = MEMORY[0x277CDF918];
    v280[12] = MEMORY[0x277CDF918];
    v280[9] = swift_getWitnessTable();
    v280[10] = v174;
    v280[7] = swift_getWitnessTable();
    v280[8] = v174;
    v280[5] = swift_getWitnessTable();
    v280[6] = v174;
    swift_getWitnessTable();
    sub_2166C2718();
    (*(v251 + 8))(v250, v255);
    (*(v242 + 8))(v249, v261);
    v275(v248, v243);
    v143 = v174;
    sub_2166997CC(v260, &qword_27CAB93F8, &unk_21701D170);
    goto LABEL_16;
  }

  if (v223)
  {
    v134 = *&v118;
  }

  else
  {

    sub_21700ED94();
    v175 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v118, 0);
    result = (*(v102 + 8))(v202, v203);
    v134 = *v298;
  }

  if (v132 >= 1)
  {
    v176 = v134 - (v125 + v127);
    v177 = v128 * ceil(v132 + -1.0);
    if (v176 >= v128 * 0.0 + (v131 * v176 - v177) / v132)
    {
      v178 = v128 * 0.0 + (v131 * v176 - v177) / v132;
    }

    else
    {
      v178 = v176;
    }

    v179 = sub_216A4C914(v176, v128, v178);
    *v221 = v180;
    (*(v220 + 104))(v221, *MEMORY[0x277CDF0F0], v222);
    sub_21700B394();
    sub_21700B284();
    sub_216831270(v219, v179);
    v181 = sub_2170093C4();
    MEMORY[0x28223BE20](v181);
    sub_216838394();
    sub_21700B484();
    sub_217009CB4();
    OUTLINED_FUNCTION_2_32();
    v182 = swift_getWitnessTable();
    sub_21700AAB4();
    (*(v208 + 8))(v206, v272);
    sub_217009CD4();
    v280[41] = v182;
    v183 = MEMORY[0x277CDF918];
    v280[42] = MEMORY[0x277CDF918];
    OUTLINED_FUNCTION_4_24();
    v184 = swift_getWitnessTable();
    OUTLINED_FUNCTION_25_8();
    sub_21700AAB4();
    v185 = OUTLINED_FUNCTION_42_11();
    v186(v185, v271);
    sub_217009C94();
    v280[39] = v184;
    v280[40] = v183;
    v187 = swift_getWitnessTable();
    OUTLINED_FUNCTION_25_8();
    sub_21700AAB4();
    (*(v215 + 8))(v211, v277);
    sub_217009CA4();
    v280[37] = v187;
    v280[38] = v183;
    v188 = swift_getWitnessTable();
    OUTLINED_FUNCTION_25_8();
    sub_21700AAB4();
    v189 = OUTLINED_FUNCTION_42_11();
    v190(v189, v262);
    v280[35] = v188;
    v280[36] = v183;
    v191 = swift_getWitnessTable();
    sub_2166C24DC(v217, v276, v191);
    v192 = *(v218 + 8);
    v192(v217, v276);
    sub_2166C24DC(v216, v276, v191);
    OUTLINED_FUNCTION_1_33();
    v193 = swift_getWitnessTable();
    OUTLINED_FUNCTION_0_2();
    v280[33] = v193;
    v280[34] = swift_getWitnessTable();
    OUTLINED_FUNCTION_6_1();
    swift_getWitnessTable();
    sub_2166C2CB0();
    v192(v217, v276);
    v143 = MEMORY[0x277CDF918];
    v192(v216, v276);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}
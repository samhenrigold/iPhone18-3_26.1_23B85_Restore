uint64_t sub_21BC093B4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_21BC09438()
{
  result = qword_27CDB6978;
  if (!qword_27CDB6978)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6980, &qword_21BE35C50);
    v4[0] = sub_21BC094BC();
    result = swift_getWitnessTable(MEMORY[0x277CE0FB0], v3, v4);
    atomic_store(result, &qword_27CDB6978);
  }

  return result;
}

unint64_t sub_21BC094BC()
{
  result = qword_27CDB6988;
  if (!qword_27CDB6988)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6990, &qword_21BE35C58);
    v4[0] = sub_21BB3B038(&qword_27CDB6998, &qword_27CDB69A0, &qword_21BE35C60, protocol conformance descriptor for Link<A, B>);
    v4[1] = sub_21BBDD1A8();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6988);
  }

  return result;
}

uint64_t sub_21BC09574(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBA6A64;

  return sub_21BBFE958(a1, v4);
}

uint64_t sub_21BC0961C(uint64_t a1)
{
  v2 = sub_21BE25E5C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69B8, &qword_21BE35CA8);
    v9 = sub_21BE295CC();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_21BC089F4(&qword_27CDB69C0, 255, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_21BE2894C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_21BC089F4(&qword_27CDB69C8, 255, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_21BE2899C();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21BC0994C(uint64_t a1)
{
  v3 = *(type metadata accessor for FamilyLandingPageMainView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BC04F80(a1, v4);
}

uint64_t sub_21BC09A4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FamilyLandingPageMainView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21BC05F04(a1, v6, a2);
}

unint64_t sub_21BC09AE4()
{
  result = qword_27CDB6A78;
  if (!qword_27CDB6A78)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB69D8, &qword_21BE35CB8);
    v4[0] = sub_21BC09B9C();
    v4[1] = sub_21BB3B038(&qword_27CDB6B70, &qword_27CDB6B78, &qword_21BE35DE0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6A78);
  }

  return result;
}

unint64_t sub_21BC09B9C()
{
  result = qword_27CDB6A80;
  if (!qword_27CDB6A80)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A70, &qword_21BE35D68);
    v4[0] = sub_21BC09C54();
    v4[1] = sub_21BB3B038(&qword_27CDB6B60, &qword_27CDB6B68, &qword_21BE35DD8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6A80);
  }

  return result;
}

unint64_t sub_21BC09C54()
{
  result = qword_27CDB6A88;
  if (!qword_27CDB6A88)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A68, &qword_21BE35D60);
    v4[0] = sub_21BC09D0C();
    v4[1] = sub_21BB3B038(&qword_27CDB6B50, &qword_27CDB6B58, &qword_21BE35DD0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6A88);
  }

  return result;
}

unint64_t sub_21BC09D0C()
{
  result = qword_27CDB6A90;
  if (!qword_27CDB6A90)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A58, &qword_21BE35D58);
    v4[0] = sub_21BC09DC4();
    v4[1] = sub_21BB3B038(&qword_27CDB6B40, &qword_27CDB6B48, &qword_21BE35DC8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6A90);
  }

  return result;
}

unint64_t sub_21BC09DC4()
{
  result = qword_27CDB6A98;
  if (!qword_27CDB6A98)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A50, &qword_21BE35D50);
    v4[0] = sub_21BC09E7C();
    v4[1] = sub_21BB3B038(&qword_27CDB6B30, &qword_27CDB6B38, &qword_21BE35DC0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6A98);
  }

  return result;
}

unint64_t sub_21BC09E7C()
{
  result = qword_27CDB6AA0;
  if (!qword_27CDB6AA0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A48, &qword_21BE35D20);
    v4[0] = sub_21BC09F34();
    v4[1] = sub_21BB3B038(&qword_27CDB6B20, &qword_27CDB6B28, &qword_21BE35DB8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6AA0);
  }

  return result;
}

unint64_t sub_21BC09F34()
{
  result = qword_27CDB6AA8;
  if (!qword_27CDB6AA8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A40, &qword_21BE35D18);
    v4[0] = sub_21BC09FEC();
    v4[1] = sub_21BB3B038(&qword_27CDB6B10, &qword_27CDB6B18, &qword_21BE35DB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6AA8);
  }

  return result;
}

unint64_t sub_21BC09FEC()
{
  result = qword_27CDB6AB0;
  if (!qword_27CDB6AB0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A38, &qword_21BE35D10);
    v4[0] = sub_21BC0A0A4();
    v4[1] = sub_21BB3B038(&qword_27CDB6B00, &qword_27CDB6B08, &qword_21BE35DA8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6AB0);
  }

  return result;
}

unint64_t sub_21BC0A0A4()
{
  result = qword_27CDB6AB8;
  if (!qword_27CDB6AB8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A30, &qword_21BE35D08);
    v4[0] = sub_21BC0A130();
    v4[1] = MEMORY[0x277CE0770];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6AB8);
  }

  return result;
}

unint64_t sub_21BC0A130()
{
  result = qword_27CDB6AC0;
  if (!qword_27CDB6AC0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A28, &unk_21BE35CF8);
    v4[0] = sub_21BC0A1F0();
    v4[1] = sub_21BC089F4(&qword_27CDB5C18, 255, type metadata accessor for ActiveStateChange, byte_21BE49A18);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6AC0);
  }

  return result;
}

unint64_t sub_21BC0A1F0()
{
  result = qword_27CDB6AC8;
  if (!qword_27CDB6AC8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A20, &qword_21BE35CF0);
    v4[0] = sub_21BC0A2A8();
    v4[1] = sub_21BB3B038(&qword_27CDB6AF0, &qword_27CDB6AF8, &qword_21BE35DA0, byte_21BE36938);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6AC8);
  }

  return result;
}

unint64_t sub_21BC0A2A8()
{
  result = qword_27CDB6AD0;
  if (!qword_27CDB6AD0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A18, &qword_21BE35CE8);
    v4[0] = sub_21BC0A360();
    v4[1] = sub_21BB3B038(&qword_27CDB6AE0, &qword_27CDB6AE8, &qword_21BE35D98, byte_21BE36938);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6AD0);
  }

  return result;
}

unint64_t sub_21BC0A360()
{
  result = qword_27CDB6AD8;
  if (!qword_27CDB6AD8)
  {
    v6[10] = v0;
    v6[11] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A08, &qword_21BE35CD8);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB69D0, &qword_21BE35CB0);
    v5 = sub_21BB3B038(&qword_27CDB6A00, &qword_27CDB69D0, &qword_21BE35CB0, MEMORY[0x277CDDB50]);
    v6[2] = v4;
    v6[3] = MEMORY[0x277D839F8];
    v6[4] = v5;
    v6[5] = MEMORY[0x277D83A28];
    v6[0] = swift_getOpaqueTypeConformance2();
    v6[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v6);
    atomic_store(result, &qword_27CDB6AD8);
  }

  return result;
}

unint64_t sub_21BC0A470()
{
  result = qword_27CDB6B88;
  if (!qword_27CDB6B88)
  {
    result = swift_getWitnessTable(byte_21BE44A78, &type metadata for AIDAAccountManagerKey, v0, v1);
    atomic_store(result, &qword_27CDB6B88);
  }

  return result;
}

uint64_t sub_21BC0A4C4(uint64_t a1)
{
  v4 = *(type metadata accessor for FamilyLandingPageMainView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BC0634C(a1, v6, v7, v1 + v5);
}

void *keypath_get_55Tm@<X0>(uint64_t (*a1)(void)@<X3>, void *a3@<X8>)
{
  a1();
  result = sub_21BE2755C();
  *a3 = v5;
  return result;
}

unint64_t sub_21BC0A610()
{
  result = qword_27CDB6B90;
  if (!qword_27CDB6B90)
  {
    result = swift_getWitnessTable(byte_21BE45568, &type metadata for FamilySettingsPageDelegateEnvironmentKey, v0, v1);
    atomic_store(result, &qword_27CDB6B90);
  }

  return result;
}

uint64_t sub_21BC0A664(uint64_t a1)
{
  v4 = *(type metadata accessor for FamilyLandingPageMainView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BC05978(a1, v6, v7, v1 + v5);
}

uint64_t sub_21BC0A754(uint64_t a1)
{
  v4 = *(type metadata accessor for FamilyLandingPageMainView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBA6A64;

  return sub_21BC06B94(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_64Tm()
{
  v1 = type metadata accessor for FamilyLandingPageMainView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  sub_21BB47CD0(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16));

  v4 = v0 + v2 + v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5740, &qword_21BE327B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68B0, &qword_21BE35938) + 32);
    v7 = sub_21BE2722C();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21BE2690C();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  MEMORY[0x21CF05D90](v3 + v1[13]);

  sub_21BB47CD0(*(v3 + v1[15]), *(v3 + v1[15] + 8), *(v3 + v1[15] + 16));
  sub_21BB47CE0(*(v3 + v1[16]), *(v3 + v1[16] + 8));
  sub_21BB47CE0(*(v3 + v1[17]), *(v3 + v1[17] + 8));

  sub_21BB47CE0(*(v3 + v1[20]), *(v3 + v1[20] + 8));

  return swift_deallocObject();
}

uint64_t sub_21BC0AB24()
{
  type metadata accessor for FamilyLandingPageMainView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBB7EB8;

  return sub_21BC0514C();
}

unint64_t sub_21BC0AC1C()
{
  result = qword_27CDB6C10;
  if (!qword_27CDB6C10)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6BF8, &qword_21BE35F18);
    v4[0] = sub_21BC0ACA8();
    v4[1] = sub_21BC0ACFC();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6C10);
  }

  return result;
}

unint64_t sub_21BC0ACA8()
{
  result = qword_27CDB6C18;
  if (!qword_27CDB6C18)
  {
    result = swift_getWitnessTable("q\t=f", &type metadata for FamilyMemberImageMarqueeView, v0, v1);
    atomic_store(result, &qword_27CDB6C18);
  }

  return result;
}

unint64_t sub_21BC0ACFC()
{
  result = qword_27CDB6C20;
  if (!qword_27CDB6C20)
  {
    result = swift_getWitnessTable(byte_21BE49928, &type metadata for ScrollViewCoordinates, v0, v1);
    atomic_store(result, &qword_27CDB6C20);
  }

  return result;
}

unint64_t sub_21BC0AD50()
{
  result = qword_27CDB6C30;
  if (!qword_27CDB6C30)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6C08, &unk_21BE3F270);
    v4[0] = MEMORY[0x277CE0BC8];
    v4[1] = MEMORY[0x277CE0BC8];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDB6C30);
  }

  return result;
}

unint64_t sub_21BC0ADCC()
{
  result = qword_27CDB6C38;
  if (!qword_27CDB6C38)
  {
    v4[7] = v0;
    v4[8] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6BE0, &qword_21BE35F00);
    v4[0] = sub_21BC0AC1C();
    v4[1] = sub_21BB3B038(&qword_27CDB6C28, &qword_27CDB6C00, &unk_21BE35F20, byte_21BE39238);
    v4[2] = sub_21BC0AD50();
    result = swift_getWitnessTable(MEMORY[0x277CDF0A8], v3, v4);
    atomic_store(result, &qword_27CDB6C38);
  }

  return result;
}

unint64_t sub_21BC0AEA8()
{
  result = qword_27CDB6C48;
  if (!qword_27CDB6C48)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6C40, &qword_21BE35F60);
    v4[0] = sub_21BC0AF2C();
    result = swift_getWitnessTable(MEMORY[0x277CE1290], v3, v4);
    atomic_store(result, &qword_27CDB6C48);
  }

  return result;
}

unint64_t sub_21BC0AF2C()
{
  result = qword_27CDB6C50;
  if (!qword_27CDB6C50)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6C58, &qword_21BE35F68);
    v4[0] = sub_21BB3B038(&qword_27CDB6C60, &qword_27CDB6C68, &qword_21BE35F70, protocol conformance descriptor for NavigationControllerLink<A>);
    v4[1] = sub_21BBDD54C();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6C50);
  }

  return result;
}

unint64_t sub_21BC0AFEC()
{
  result = qword_27CDB6C88;
  if (!qword_27CDB6C88)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6BA0, &qword_21BE35EC0);
    v4[0] = sub_21BC089F4(&qword_27CDB6C90, 255, type metadata accessor for FamilyPrivacyDisclosureView, asc_21BE3535C);
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27CDB6C88);
  }

  return result;
}

uint64_t sub_21BC0B0A4(uint64_t a1)
{
  v2 = type metadata accessor for AppleCardFamilySettingsCell(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BC0B100(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8[0] = a4();
    v8[1] = sub_21BBDD54C();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BC0B184()
{
  result = qword_27CDB6CC0;
  if (!qword_27CDB6CC0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6CA0, &qword_21BE35FC0);
    v4[0] = sub_21BC089F4(&qword_27CDB6CC8, 255, type metadata accessor for AppleCardFamilySettingsCell, asc_21BE33E3C);
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27CDB6CC0);
  }

  return result;
}

uint64_t sub_21BC0B23C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21BC0B2AC()
{
  result = qword_27CDB6D30;
  if (!qword_27CDB6D30)
  {
    result = swift_getWitnessTable(a5_0, &type metadata for FamilyTip, v0, v1);
    atomic_store(result, &qword_27CDB6D30);
  }

  return result;
}

unint64_t sub_21BC0B300()
{
  result = qword_27CDB6D38;
  if (!qword_27CDB6D38)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D08, &qword_21BE36010);
    v4[0] = sub_21BB3B038(&qword_27CDB6D40, &qword_27CDB6D48, &qword_21BE36038, MEMORY[0x277CE19B0]);
    v4[1] = sub_21BB3B038(&qword_27CDB6D50, &qword_27CDB6D58, &unk_21BE36040, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6D38);
  }

  return result;
}

unint64_t sub_21BC0B3E4()
{
  result = qword_27CDB6D68;
  if (!qword_27CDB6D68)
  {
    v6[8] = v0;
    v6[9] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D10, &qword_21BE36018);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D08, &qword_21BE36010);
    v5 = sub_21BC0B300();
    v6[2] = v4;
    v6[3] = MEMORY[0x277CE0F78];
    v6[4] = v5;
    v6[5] = MEMORY[0x277CE0F60];
    v6[0] = swift_getOpaqueTypeConformance2();
    v6[1] = sub_21BB3B038(&qword_27CDB6D70, &qword_27CDBC2A0, &qword_21BE33660, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v6);
    atomic_store(result, &qword_27CDB6D68);
  }

  return result;
}

unint64_t sub_21BC0B4EC()
{
  result = qword_27CDB6D88;
  if (!qword_27CDB6D88)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D78, &qword_21BE36088);
    v4[0] = sub_21BB3B038(&qword_27CDB6D90, &qword_27CDB6D98, &qword_21BE36098, byte_21BE50210);
    v4[1] = sub_21BC089F4(&qword_27CDB6790, 255, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6D88);
  }

  return result;
}

unint64_t sub_21BC0B5D8()
{
  result = qword_27CDB6DA8;
  if (!qword_27CDB6DA8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6DA0, &qword_21BE360A0);
    v4[0] = sub_21BC089F4(&qword_27CDB6DB0, 255, type metadata accessor for FamilyChecklistView, protocol conformance descriptor for FamilyChecklistView);
    v4[1] = sub_21BB3B038(&unk_27CDBC380, &qword_27CDB6DB8, &qword_21BE360A8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6DA8);
  }

  return result;
}

uint64_t sub_21BC0B6C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8 = a4();
    v9[0] = MEMORY[0x277CE1410];
    v9[1] = v8;
    v9[2] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CDF0A8], v7, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BC0B74C()
{
  result = qword_27CDB6DD0;
  if (!qword_27CDB6DD0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6DD8, &qword_21BE360B8);
    v4[0] = sub_21BC0B804();
    v4[1] = sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6DD0);
  }

  return result;
}

unint64_t sub_21BC0B804()
{
  result = qword_27CDB6DE0;
  if (!qword_27CDB6DE0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6DE8, &unk_21BE360C0);
    v4[0] = sub_21BC089F4(&qword_27CDB6DF0, 255, type metadata accessor for FamilyChecklistCell, byte_21BE4CA20);
    v4[1] = sub_21BBDD54C();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6DE0);
  }

  return result;
}

unint64_t sub_21BC0B8C4()
{
  result = qword_27CDB6E00;
  if (!qword_27CDB6E00)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D28, &qword_21BE36030);
    v4[0] = sub_21BC0B948();
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27CDB6E00);
  }

  return result;
}

unint64_t sub_21BC0B948()
{
  result = qword_27CDB6E08;
  if (!qword_27CDB6E08)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D20, &qword_21BE36028);
    v4[0] = sub_21BC0BA00();
    v4[1] = sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6E08);
  }

  return result;
}

unint64_t sub_21BC0BA00()
{
  result = qword_27CDB6E10;
  if (!qword_27CDB6E10)
  {
    v8[15] = v0;
    v8[16] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D18, &qword_21BE36020);
    v4 = sub_21BC0B3E4();
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D78, &qword_21BE36088);
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D80, &qword_21BE36090);
    v7 = sub_21BC0B4EC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6DA0, &qword_21BE360A0);
    type metadata accessor for ChecklistStateVars(255);
    sub_21BC0B5D8();
    sub_21BC089F4(&qword_27CDBDB60, 255, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
    v8[3] = v5;
    v8[4] = v6;
    v8[5] = v7;
    v8[6] = swift_getOpaqueTypeConformance2();
    v8[0] = v4;
    v8[1] = swift_getOpaqueTypeConformance2();
    v8[2] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CDF0A8], v3, v8);
    atomic_store(result, &qword_27CDB6E10);
  }

  return result;
}

uint64_t sub_21BC0BBB0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FamilyLandingPageMainView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21BC0BC24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FamilyLandingPageMainView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BC03870(v4, a1);
}

uint64_t sub_21BC0BC94()
{
  v1 = *(type metadata accessor for FamilyLandingPageMainView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21BC03B74(v2);
}

uint64_t sub_21BC0BD1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBB7EB8;

  return sub_21BC03578();
}

uint64_t sub_21BC0BDC8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FamilyLandingPageMainView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21BBFF208(a1, v6, a2);
}

uint64_t sub_21BC0BE48(uint64_t a1)
{
  v4 = *(type metadata accessor for FamilyLandingPageMainView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BBFF3F8(a1, v1 + v5, v6);
}

uint64_t sub_21BC0BF58@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for FamilyLandingPageMainView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_21BBFEE4C(a1, a2, v8, a3);
}

unint64_t sub_21BC0BFE0()
{
  result = qword_27CDB6E40;
  if (!qword_27CDB6E40)
  {
    result = swift_getWitnessTable(aI_2, &type metadata for FamilyMemberForDisplay, v0, v1);
    atomic_store(result, &qword_27CDB6E40);
  }

  return result;
}

unint64_t sub_21BC0C034()
{
  result = qword_27CDB6E48;
  if (!qword_27CDB6E48)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6E30, &qword_21BE361D0);
    v4[0] = sub_21BC0C0F4();
    v4[1] = sub_21BC089F4(&qword_27CDB6790, 255, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6E48);
  }

  return result;
}

unint64_t sub_21BC0C0F4()
{
  result = qword_27CDB6E50;
  if (!qword_27CDB6E50)
  {
    result = swift_getWitnessTable(aYFp, &type metadata for FamilyLandingPageMainView.FamilyMemberRowView, v0, v1);
    atomic_store(result, &qword_27CDB6E50);
  }

  return result;
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = type metadata accessor for FamilyLandingPageMainView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_21BB47CD0(*v2, *(v2 + 8), *(v2 + 16));

  v3 = v2 + v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5740, &qword_21BE327B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68B0, &qword_21BE35938) + 32);
    v6 = sub_21BE2722C();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  v7 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21BE2690C();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  MEMORY[0x21CF05D90](v2 + v1[13]);

  sub_21BB47CD0(*(v2 + v1[15]), *(v2 + v1[15] + 8), *(v2 + v1[15] + 16));
  sub_21BB47CE0(*(v2 + v1[16]), *(v2 + v1[16] + 8));
  sub_21BB47CE0(*(v2 + v1[17]), *(v2 + v1[17] + 8));

  sub_21BB47CE0(*(v2 + v1[20]), *(v2 + v1[20] + 8));

  return swift_deallocObject();
}

uint64_t sub_21BC0C438(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FamilyLandingPageMainView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21BC0C4DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return sub_21BB44438(v2, v3, v0 + 4);
}

id sub_21BC0C5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a1;
  v43 = a3;
  v7 = sub_21BE25FCC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_ruiController;
  v12 = [objc_allocWithZone(MEMORY[0x277D46220]) init];
  v40 = v11;
  *&v4[v11] = v12;
  v13 = &v4[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_guardianGSTokenErrorHeader];
  *v13 = 0xD000000000000017;
  *(v13 + 1) = 0x800000021BE57DB0;
  v14 = &v4[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_guardianGSTokenErrorHeaderValue];
  *v14 = 0x6E61696472617567;
  *(v14 + 1) = 0xE800000000000000;
  v15 = OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_familyDependentPasswordResetApi;
  type metadata accessor for FamilyDependentPasswordResetApi();
  v16 = swift_allocObject();
  *&v4[v15] = v16;
  *(v16 + 16) = 0;
  v17 = &v4[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_hearbeatTokenKey];
  *v17 = 0xD000000000000014;
  *(v17 + 1) = 0x800000021BE57DD0;
  v18 = OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_tokens;
  *&v4[v18] = sub_21BBB6068(MEMORY[0x277D84F90]);
  *&v4[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_serverResourceLoader] = 0;
  v41 = OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_serverHookHandler;
  *&v4[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_serverHookHandler] = 0;
  v19 = OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_sessionConfiguration;
  v20 = [objc_opt_self() defaultSessionConfiguration];
  v21 = [objc_allocWithZone(MEMORY[0x277CF0188]) init];
  [v20 set:v21 appleIDContext:?];

  *&v4[v19] = v20;
  v22 = &v4[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_parentAltDSID];
  v23 = v43;
  *v22 = v42;
  v22[1] = a2;
  v24 = &v4[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_dependentAltDSID];
  *v24 = v23;
  v24[1] = a4;
  v25 = objc_opt_self();

  result = [v25 defaultStore];
  if (result)
  {
    v27 = result;

    v28 = sub_21BE289CC();

    v29 = [v27 aida:v28 accountForAltDSID:?];

    *&v4[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_parentAccount] = v29;
    (*(v8 + 104))(v10, *MEMORY[0x277D07F00], v7);
    LOBYTE(v28) = MEMORY[0x21CF01150](v10);
    (*(v8 + 8))(v10, v7);
    if (v28)
    {
      v30 = [objc_allocWithZone(MEMORY[0x277CF03B0]) init];
      v31 = *&v4[v40];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_21BE34D60;
      *(v32 + 32) = v30;
      v33 = objc_allocWithZone(MEMORY[0x277D46200]);
      v34 = v31;
      v35 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EE0, &qword_21BE36248);
      v36 = sub_21BE28C1C();

      v37 = [v33 initWithRemoteUIController:v34 hooks:v36];

      v38 = *&v4[v41];
      *&v4[v41] = v37;
    }

    v39 = type metadata accessor for FamilyDependentPasswordResetController();
    v44.receiver = v4;
    v44.super_class = v39;
    return objc_msgSendSuper2(&v44, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21BC0C9C8(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  v11 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
  [v11 setVerifyCredentialReason_];
  [v11 setAuthenticationType_];
  v5 = sub_21BE289CC();
  [v11 setAltDSID_];

  if (v4)
  {
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    v7[2] = a1;
    v7[3] = a2;
    v7[4] = v6;
    aBlock[4] = sub_21BC0FF6C;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21BBF23E4;
    aBlock[3] = &block_descriptor_44;
    v8 = _Block_copy(aBlock);
    v9 = v4;
    v10 = v11;

    [v9 getServerUILoadDelegateWithContext:v10 completion:v8];

    _Block_release(v8);
  }

  else
  {
  }
}

void sub_21BC0CBB8(void *a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = sub_21BE26A4C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  if (a2)
  {
    v15 = a2;
    sub_21BE2614C();
    v16 = a2;
    sub_21BC51D50(a2, 0xD000000000000028, 0x800000021BE57EB0);

    (*(v9 + 8))(v14, v8);
    v17 = a2;
    a3(a2, 1);

    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v19 = Strong;
  v20 = sub_21BE28A0C();
  v22 = v21;
  if (!*(*&v19[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_tokens] + 16) || (v23 = v20, v33 = a1, , sub_21BBB3108(v23, v22), v25 = v24, , (v25 & 1) == 0))
  {

LABEL_9:
    a3(0, 0);
    return;
  }

  v26 = v33;
  if (v33)
  {
    [v33 setShouldSendSigningHeaders_];
    v27 = sub_21BE289CC();

    [v26 setServiceToken_];
  }

  else
  {
  }

  v28 = *&v19[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_serverResourceLoader];
  *&v19[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_serverResourceLoader] = v26;

  v29 = v26;
  sub_21BE2614C();
  v30 = sub_21BE26A2C();
  v31 = sub_21BE28FFC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_21BB35000, v30, v31, "Resource load delegate fetched successfully.", v32, 2u);
    MEMORY[0x21CF05C50](v32, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  a3(v26, 0);
}

void sub_21BC0CF14(void *a1)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v6 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21BE289CC();
  [a1 aa:v7 addAppProvidedContext:?];

  v8 = *MEMORY[0x277CEC718];
  v70 = a1;
  [a1 aa:v8 addSpyglassModeHeaderWithMask:?];
  v9 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_parentAccount);
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_hearbeatTokenKey);
  v11 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_hearbeatTokenKey + 8);
  v12 = sub_21BE289CC();
  v13 = [v9 aida:v12 tokenForService:?];

  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = *MEMORY[0x277CEC6E8];
  v15 = [v9 aida:*MEMORY[0x277CEC6E8] tokenForService:?];
  if (v15)
  {
    v66 = v14;
    v67 = v15;
    v68 = v13;
    v69 = v3;
    v16 = *MEMORY[0x277CEFFA8];
    v17 = sub_21BE28A0C();
    v19 = v18;
    v20 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_tokens);
    if (*(v20 + 16))
    {
      v21 = v17;
      v64 = OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_tokens;
      v65 = v1;

      v22 = sub_21BBB3108(v21, v19);
      LOBYTE(v21) = v23;

      if (v21)
      {
        v24 = (*(v20 + 56) + 16 * v22);
        v25 = v24[1];
        v60 = *v24;
        v62 = v16;
        v63 = v25;

        v59 = objc_opt_self();
        v26 = [v59 sharedInstance];
        v27 = v65;
        v28 = *(v65 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_parentAltDSID);
        v61 = *(v65 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_parentAltDSID + 8);
        v29 = sub_21BE289CC();
        v30 = [v26 authKitAccountWithAltDSID_];

        if (!v30)
        {

          v13 = v67;
          v54 = v68;
          goto LABEL_17;
        }

        v58[1] = v28;
        v3 = v69;
        if (!*(*(v27 + v64) + 16))
        {

          v54 = v67;
          v13 = v68;
          goto LABEL_18;
        }

        sub_21BBB3108(v10, v11);
        v13 = v68;
        if ((v31 & 1) == 0)
        {

          v54 = v67;
          goto LABEL_18;
        }

        v32 = sub_21BE28A0C();
        v34 = v33;
        if (!*(*(v65 + v64) + 16))
        {

          v54 = v67;
          goto LABEL_17;
        }

        v35 = v32;

        sub_21BBB3108(v35, v34);
        v37 = v36;

        if (v37)
        {

          v38 = [v59 sharedInstance];
          v69 = v30;
          v39 = [v38 passwordResetTokenForAccount_];

          v40 = v70;
          [v70 ak:v39 addPasswordResetKeyHeader:?];

          v41 = sub_21BE289CC();

          v42 = sub_21BE289CC();
          [v40 ak:v41 addAuthorizationHeaderWithIdentityToken:v42 forAltDSID:?];

          v43 = sub_21BE289CC();

          v44 = sub_21BE289CC();
          [v40 ak:v43 addAuthorizationHeaderWithHeartbeatToken:v44 forAltDSID:?];

          v45 = sub_21BE289CC();

          v46 = sub_21BE289CC();
          [v40 ak:v45 addAuthorizationHeaderWithServiceToken:v46 forAltDSID:?];

          v47 = [v9 aida:v62 tokenForService:?];
          if (v47)
          {
            v48 = v47;
            v49 = sub_21BE289CC();
            [v40 ak:v48 addGuardianAuthorizationHeaderWithIdentityToken:v49 forAltDSID:?];
          }

          v50 = sub_21BE289CC();
          v51 = v68;
          [v40 ak:v68 addGuardianAuthorizationHeaderWithHeartbeatToken:v50 forAltDSID:?];

          v68 = sub_21BE289CC();
          v52 = v67;
          [v40 ak:v67 addGuardianAuthorizationHeaderWithServiceToken:v68 forAltDSID:?];

          v53 = v68;

          return;
        }
      }
    }

    v54 = v67;
    v13 = v68;
LABEL_17:
    v3 = v69;
LABEL_18:
  }

LABEL_20:
  sub_21BE2614C();
  v55 = sub_21BE26A2C();
  v56 = sub_21BE28FDC();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_21BB35000, v55, v56, "addHeaders failure: Found nil token.", v57, 2u);
    MEMORY[0x21CF05C50](v57, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
}

uint64_t sub_21BC0D5DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_21BE26A4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    *(v4 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_tokens) = a2;
    v13 = a1;

    v14 = *(v4 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_ruiController);

    [v14 setDelegate_];
    [v14 setHostViewController_];
    [v14 setSessionConfiguration_];
    v15 = *MEMORY[0x277CEFEC0];
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_21BC0FF4C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21BC0D964;
    aBlock[3] = &block_descriptor_27;
    v17 = _Block_copy(aBlock);
    v18 = v15;

    [v14 setHandlerForElementName:v18 handler:v17];
    _Block_release(v17);

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = a3;
    v20[4] = a4;

    sub_21BC0C9C8(sub_21BC0FF54, v20);
  }

  else
  {
    sub_21BE2614C();
    v22 = sub_21BE26A2C();
    v23 = sub_21BE28FFC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_21BB35000, v22, v23, "navigationController is nil.", v24, 2u);
      MEMORY[0x21CF05C50](v24, -1, -1);
    }

    return (*(v10 + 8))(v12, v9);
  }
}

void sub_21BC0D908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_21BC0F134(a3);
  }
}

uint64_t sub_21BC0D964(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (a4)
  {
    v7 = sub_21BE2890C();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v9 = a3;
  v6(a2, a3, v7);
}

void sub_21BC0DA2C(uint64_t a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v69 = a4;
  v70 = a5;
  v68 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EE8, &unk_21BE36250);
  v8 = MEMORY[0x28223BE20](v7);
  v66 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v67 = &v64 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v64 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v64 - v15;
  v17 = sub_21BE26A4C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v64 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v64 - v25;
  if (a2)
  {
    sub_21BE2614C();
    v27 = sub_21BE26A2C();
    v28 = sub_21BE28FDC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_21BB35000, v27, v28, "ResourceLoadDelegate failure. RUI aborted.", v29, 2u);
      MEMORY[0x21CF05C50](v29, -1, -1);
    }

    (*(v18 + 8))(v21, v17);
    v69(0);
  }

  else if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v31 = Strong;

      v32 = sub_21BE289CC();
    }

    else
    {
      v32 = 0;
    }

    v36 = [objc_allocWithZone(MEMORY[0x277CEC7A8]) initWithAltDSID_];

    sub_21BE2614C();
    v37 = v36;
    v38 = sub_21BE26A2C();
    v39 = sub_21BE28FFC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v77[0] = v64;
      *v40 = 136315138;
      aBlock = 0;
      v72 = 0xE000000000000000;
      v65 = v39;
      if (v37)
      {
        v41 = [v37 urlRequest];
        if (v41)
        {
          v42 = v41;
          sub_21BE2574C();

          v43 = 0;
        }

        else
        {
          v43 = 1;
        }

        v45 = sub_21BE2575C();
        (*(*(v45 - 8) + 56))(v14, v43, 1, v45);
        sub_21BC0FE48(v14, v16);
      }

      else
      {
        v44 = sub_21BE2575C();
        (*(*(v44 - 8) + 56))(v16, 1, 1, v44);
      }

      sub_21BE2977C();
      sub_21BB3A4CC(v16, &qword_27CDB6EE8, &unk_21BE36250);
      v46 = sub_21BB3D81C(aBlock, v72, v77);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_21BB35000, v38, v65, "Request:%s", v40, 0xCu);
      v47 = v64;
      __swift_destroy_boxed_opaque_existential_0Tm(v64);
      MEMORY[0x21CF05C50](v47, -1, -1);
      MEMORY[0x21CF05C50](v40, -1, -1);
    }

    (*(v18 + 8))(v26, v17);
    swift_beginAccess();
    v48 = swift_unknownObjectWeakLoadStrong();
    v50 = v66;
    v49 = v67;
    if (v48)
    {
      v51 = v48;
      v52 = *(v48 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_ruiController);

      if (v37)
      {
        v53 = [v37 urlRequest];
        v54 = v37;
        if (v53)
        {
          v55 = v53;
          sub_21BE2574C();

          v56 = 0;
        }

        else
        {
          v56 = 1;
        }

        v59 = sub_21BE2575C();
        v60 = *(v59 - 8);
        (*(v60 + 56))(v50, v56, 1, v59);
        sub_21BC0FE48(v50, v49);
        v58 = 0;
        if ((*(v60 + 48))(v49, 1, v59) != 1)
        {
          v58 = sub_21BE2573C();
          (*(v60 + 8))(v49, v59);
        }
      }

      else
      {
        v54 = 0;
        v57 = sub_21BE2575C();
        (*(*(v57 - 8) + 56))(v49, 1, 1, v57);
        v58 = 0;
      }

      v61 = swift_allocObject();
      v62 = v70;
      *(v61 + 16) = v69;
      *(v61 + 24) = v62;
      v75 = sub_21BC0FF64;
      v76 = v61;
      aBlock = MEMORY[0x277D85DD0];
      v72 = 1107296256;
      v73 = sub_21BD197D4;
      v74 = &block_descriptor_37;
      v63 = _Block_copy(&aBlock);

      [v52 loadRequest:v58 completion:v63];

      _Block_release(v63);
    }

    else
    {
    }
  }

  else
  {
    sub_21BE2614C();
    v33 = sub_21BE26A2C();
    v34 = sub_21BE28FFC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_21BB35000, v33, v34, "serverResourceLoader is nil.", v35, 2u);
      MEMORY[0x21CF05C50](v35, -1, -1);
    }

    (*(v18 + 8))(v24, v17);
  }
}

uint64_t sub_21BC0E228(int a1, void *a2, uint64_t (*a3)(void))
{
  LODWORD(v5) = a1;
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  if (v5)
  {
    sub_21BE2614C();
    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FFC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21BB35000, v13, v14, "RUI loaded successfully.", v15, 2u);
      MEMORY[0x21CF05C50](v15, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
  }

  else
  {
    sub_21BE2614C();
    v16 = a2;
    v17 = sub_21BE26A2C();
    v18 = sub_21BE28FDC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v27 = v5;
      v5 = v19;
      v20 = swift_slowAlloc();
      v26 = v20;
      *v5 = 136315138;
      v28 = a2;
      v29 = 0;
      v30 = 0xE000000000000000;
      v31 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF8, &qword_21BE36260);
      sub_21BE2977C();
      v21 = a3;
      v22 = sub_21BB3D81C(v29, v30, &v31);

      *(v5 + 4) = v22;
      a3 = v21;
      _os_log_impl(&dword_21BB35000, v17, v18, "RUI load error: %s", v5, 0xCu);
      v23 = v26;
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x21CF05C50](v23, -1, -1);
      v24 = v5;
      LOBYTE(v5) = v27;
      MEMORY[0x21CF05C50](v24, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
  }

  return a3(v5 & 1);
}

id sub_21BC0E51C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FamilyDependentPasswordResetController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_21BC0E674(char a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v10 = sub_21BE26A4C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v29 - v15;
  if ((a1 & 1) == 0)
  {
    sub_21BE2614C();
    sub_21BC51D50(a2, 0x20676E696E676953, 0xED0000726F727265);
    result = (*(v11 + 8))(v14, v10);
    if (a4)
    {
      v26 = 0;
      v27 = a2;
      return a4(v26, v27);
    }

    __break(1u);
    goto LABEL_15;
  }

  sub_21BE2614C();
  v17 = a3;
  v18 = sub_21BE26A2C();
  v19 = sub_21BE28FFC();
  if (!os_log_type_enabled(v18, v19))
  {

    result = (*(v11 + 8))(v16, v10);
    goto LABEL_11;
  }

  v29[1] = a5;
  v20 = swift_slowAlloc();
  result = swift_slowAlloc();
  *v20 = 136315138;
  v30 = 0;
  v31 = 0xE000000000000000;
  v32 = result;
  if (a3)
  {
    v22 = result;

    v23 = [v17 allHTTPHeaderFields];
    if (v23)
    {
      v24 = v23;
      v25 = sub_21BE2890C();
    }

    else
    {
      v25 = 0;
    }

    v29[2] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6F00, qword_21BE36268);
    sub_21BE2977C();

    v28 = sub_21BB3D81C(v30, v31, &v32);

    *(v20 + 4) = v28;
    _os_log_impl(&dword_21BB35000, v18, v19, "Headers added:%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x21CF05C50](v22, -1, -1);
    MEMORY[0x21CF05C50](v20, -1, -1);

    result = (*(v11 + 8))(v16, v10);
LABEL_11:
    if (a4)
    {
      v26 = 1;
      v27 = 0;
      return a4(v26, v27);
    }

LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_21BC0EA90(char a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EE8, &unk_21BE36250);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = aBlock - v7;
  if (a1)
  {
    v9 = *(a2 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_ruiController);
    sub_21BC0FDD8(a3, v8);
    v10 = sub_21BE2575C();
    v11 = *(v10 - 8);
    v12 = 0;
    if ((*(v11 + 48))(v8, 1, v10) != 1)
    {
      v12 = sub_21BE2573C();
      (*(v11 + 8))(v8, v10);
    }

    aBlock[4] = sub_21BC0EC44;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21BD197D4;
    aBlock[3] = &block_descriptor_5;
    v13 = _Block_copy(aBlock);
    [v9 loadRequest:v12 completion:v13];
    _Block_release(v13);
  }
}

uint64_t sub_21BC0EC44(char a1, void *a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  if (a1)
  {
    sub_21BE2614C();
    v11 = sub_21BE26A2C();
    v12 = sub_21BE28FFC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_21BB35000, v11, v12, "RUI loaded successfully.", v13, 2u);
      MEMORY[0x21CF05C50](v13, -1, -1);
    }

    return (*(v5 + 8))(v10, v4);
  }

  else
  {
    sub_21BE2614C();
    v15 = a2;
    v16 = sub_21BE26A2C();
    v17 = sub_21BE28FDC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 136315138;
      v21 = a2;
      v22 = 0;
      v23 = 0xE000000000000000;
      v24 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF8, &qword_21BE36260);
      sub_21BE2977C();
      v20 = sub_21BB3D81C(v22, v23, &v24);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_21BB35000, v16, v17, "RUI load error: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x21CF05C50](v19, -1, -1);
      MEMORY[0x21CF05C50](v18, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

void sub_21BC0F134(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_17;
  }

  v2 = v1;
  sub_21BE28A0C();
  sub_21BE2958C();
  if (!*(a1 + 16) || (v4 = sub_21BBB31E8(v15), (v5 & 1) == 0))
  {
    sub_21BBB7238(v15);
LABEL_17:
    v16 = 0u;
    v17 = 0u;
    goto LABEL_18;
  }

  sub_21BB3DCD4(*(a1 + 56) + 32 * v4, &v16);
  sub_21BBB7238(v15);
  if (!*(&v17 + 1))
  {
LABEL_18:
    sub_21BB3A4CC(&v16, &qword_27CDB5940, &unk_21BE32B10);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v7 = v15[0];
  v6 = v15[1];
  if (sub_21BE28A0C() == v7 && v8 == v6)
  {
    goto LABEL_13;
  }

  v10 = sub_21BE2995C();

  if (v10)
  {
LABEL_14:

LABEL_15:

    return;
  }

  if (sub_21BE28A0C() == v7 && v11 == v6)
  {
    goto LABEL_13;
  }

  v12 = sub_21BE2995C();

  if (v12)
  {
    goto LABEL_14;
  }

  if (sub_21BE28A0C() == v7 && v13 == v6)
  {
LABEL_13:

    goto LABEL_14;
  }

  v14 = sub_21BE2995C();

  if (v14)
  {
    goto LABEL_15;
  }
}

void sub_21BC0F350(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v9 = sub_21BE26A4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_serverResourceLoader);
  if (!v13)
  {
    sub_21BE2614C();
    v15 = sub_21BE26A2C();
    v16 = sub_21BE28FFC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21BB35000, v15, v16, "shouldLoad: serverResourceLoader nil", v17, 2u);
      MEMORY[0x21CF05C50](v17, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    if (a3)
    {
      a3(0, 0);
      return;
    }

    goto LABEL_13;
  }

  if (a2)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
  }

  else
  {
    v14 = 0;
  }

  v18 = v13;
  [v18 processResponse_];
  if (!a1)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  sub_21BC0CF14(a1);
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a3;
  v19[4] = a4;
  aBlock[4] = sub_21BC0FF40;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BD197D4;
  aBlock[3] = &block_descriptor_21;
  v20 = _Block_copy(aBlock);
  v21 = a1;
  sub_21BB3D80C(a3, a4);

  [v18 signRequest:v21 withCompletionHandler:v20];
  _Block_release(v20);
}

void sub_21BC0F5F0(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EE8, &unk_21BE36250);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v38 - v7;
  v9 = sub_21BE26A4C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v16 = *&v2[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_serverResourceLoader];
  if (v16)
  {
    v39 = v16;
    [v39 processResponse_];
    if (!a1)
    {
      __break(1u);
      return;
    }

    if ([a1 statusCode] != 401)
    {
      goto LABEL_13;
    }

    v17 = [a1 _allHTTPHeaderFieldsAsArrays];
    if (!v17)
    {
      goto LABEL_13;
    }

    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
    v19 = sub_21BE2890C();

    if (*(v19 + 16) && (v38 = v2, v20 = sub_21BBB3108(*&v2[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_guardianGSTokenErrorHeader], *&v2[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_guardianGSTokenErrorHeader + 8]), (v21 & 1) != 0) && (v22 = *(*(v19 + 56) + 8 * v20), , , v22[2]))
    {
      v24 = v22[4];
      v23 = v22[5];

      if (v24 == *&v38[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_guardianGSTokenErrorHeaderValue] && v23 == *&v38[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_guardianGSTokenErrorHeaderValue + 8])
      {
      }

      else
      {
        v26 = sub_21BE2995C();

        if ((v26 & 1) == 0)
        {
LABEL_13:
          v27 = v39;

          return;
        }
      }

      sub_21BE2614C();
      v31 = sub_21BE26A2C();
      v32 = sub_21BE28FFC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_21BB35000, v31, v32, "Renewing credentials for parent account...", v33, 2u);
        MEMORY[0x21CF05C50](v33, -1, -1);
      }

      (*(v10 + 8))(v15, v9);
      v34 = v38;
      sub_21BC0FDD8(a2, v8);
      v35 = (*(v6 + 80) + 24) & ~*(v6 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = v34;
      sub_21BC0FE48(v8, v36 + v35);
      v37 = v34;
      sub_21BE17344(sub_21BC0FEB8, v36);
    }

    else
    {
    }
  }

  else
  {
    sub_21BE2614C();
    v28 = sub_21BE26A2C();
    v29 = sub_21BE28FFC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_21BB35000, v28, v29, "didReceiveHTTPResponse: serverResourceLoader nil", v30, 2u);
      MEMORY[0x21CF05C50](v30, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
  }
}

id sub_21BC0FABC(uint64_t a1)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_serverHookHandler);
  if (result)
  {
    if (a1)
    {

      return [result processObjectModel:a1 isModal:0];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_21BE2614C();
    v8 = sub_21BE26A2C();
    v9 = sub_21BE28FFC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21BB35000, v8, v9, "Server hook handler not initialized", v10, 2u);
      MEMORY[0x21CF05C50](v10, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

id sub_21BC0FC48(uint64_t a1, char a2)
{
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_serverHookHandler);
  if (result)
  {
    if (a1)
    {

      return [result processObjectModel:a1 isModal:a2 & 1];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_21BE2614C();
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FFC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21BB35000, v10, v11, "Server hook handler not initialized", v12, 2u);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_21BC0FDD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EE8, &unk_21BE36250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC0FE48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EE8, &unk_21BE36250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21BC0FEB8(char a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EE8, &unk_21BE36250) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_21BC0EA90(a1, v4, v5);
}

void sub_21BC0FFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_21BE26A4C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 && a2)
  {
    v16 = objc_allocWithZone(MEMORY[0x277CF0178]);

    v17 = [v16 init];
    v18 = [objc_allocWithZone(MEMORY[0x277CF0380]) init];
    v19 = *MEMORY[0x277CEFF38];
    v31 = v18;
    [v31 setAppProvidedContext_];
    v20 = sub_21BE289CC();
    [v31 setAltDSID_];

    [v31 setIsUsernameEditable_];
    v21 = sub_21BE289CC();
    [v31 setDependentAltDSID_];

    [v31 setServiceType_];
    [v31 setAuthenticationType_];
    if (v17)
    {
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = a1;
      v23[4] = a2;
      v23[5] = a3;
      v23[6] = a4;
      v23[7] = a5;
      v23[8] = a6;
      aBlock[4] = sub_21BC10DDC;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21BC10BBC;
      aBlock[3] = &block_descriptor_6;
      v24 = _Block_copy(aBlock);
      v25 = v17;

      [v25 authenticateWithContext:v31 completion:v24];

      _Block_release(v24);
    }

    else
    {

      v29 = v31;
    }
  }

  else
  {
    sub_21BE2614C();
    v26 = sub_21BE26A2C();
    v27 = sub_21BE28FFC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_21BB35000, v26, v27, "Alt DSID's are nil", v28, 2u);
      MEMORY[0x21CF05C50](v28, -1, -1);
    }

    (*(v13 + 8))(v15, v12);
  }
}

void sub_21BC10364(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(id, uint64_t), uint64_t a9)
{
  v88 = a8;
  v89 = a9;
  v90 = sub_21BE26A4C();
  v16 = *(v90 - 8);
  v17 = MEMORY[0x28223BE20](v90);
  v19 = v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v84 - v21;
  MEMORY[0x28223BE20](v20);
  v87 = v84 - v23;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = Strong;
      v26 = sub_21BE28A0C();
      if (*(a1 + 16))
      {
        v28 = sub_21BBB3108(v26, v27);
        v30 = v29;

        if ((v30 & 1) == 0)
        {
          goto LABEL_27;
        }

        v91 = *(*(a1 + 56) + 8 * v28);
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F28, &unk_21BE36330);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_27;
        }

        if (v92 == a4 && v93 == a5)
        {
        }

        else
        {
          v37 = sub_21BE2995C();

          if ((v37 & 1) == 0)
          {
LABEL_27:
            sub_21BE2614C();
            v80 = sub_21BE26A2C();
            v81 = sub_21BE28FDC();
            if (os_log_type_enabled(v80, v81))
            {
              v82 = swift_slowAlloc();
              *v82 = 0;
              _os_log_impl(&dword_21BB35000, v80, v81, "Failure to parse dependent tokens", v82, 2u);
              MEMORY[0x21CF05C50](v82, -1, -1);
            }

            (*(v16 + 8))(v22, v90);
            v83 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) init];
            v88(v83, 1);

            return;
          }
        }

        v38 = sub_21BE28A0C();
        if (*(a1 + 16))
        {
          v40 = sub_21BBB3108(v38, v39);
          v42 = v41;

          if ((v42 & 1) == 0)
          {
            goto LABEL_27;
          }

          v91 = *(*(a1 + 56) + 8 * v40);
          swift_unknownObjectRetain();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_27;
          }

          v43 = v92;
          v44 = v93;
          v45 = sub_21BE28A0C();
          if (*(a1 + 16))
          {
            v86 = v43;
            v47 = sub_21BBB3108(v45, v46);
            v49 = v48;

            if ((v49 & 1) == 0)
            {
              goto LABEL_26;
            }

            v92 = *(*(a1 + 56) + 8 * v47);
            swift_unknownObjectRetain();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F30, &unk_21BE411F0);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_26;
            }

            v50 = v91;
            if (*(v91 + 16))
            {
              v51 = &v25[OBJC_IVAR____TtC14FamilyCircleUI35FamilyMemberAccountDetailsViewModel_hearbeatTokenKey];
              v52 = *&v25[OBJC_IVAR____TtC14FamilyCircleUI35FamilyMemberAccountDetailsViewModel_hearbeatTokenKey];
              v53 = *&v25[OBJC_IVAR____TtC14FamilyCircleUI35FamilyMemberAccountDetailsViewModel_hearbeatTokenKey + 8];

              v54 = sub_21BBB3108(v52, v53);
              v56 = v55;

              if (v56)
              {
                v57 = (*(v50 + 56) + 16 * v54);
                v58 = v57[1];
                v85 = *v57;
                v84[1] = *MEMORY[0x277CEC6E8];
                v59 = sub_21BE28A0C();
                v61 = v60;
                if (*(v50 + 16))
                {
                  v62 = v59;
                  v84[0] = v58;

                  v63 = sub_21BBB3108(v62, v61);
                  LOBYTE(v62) = v64;

                  if (v62)
                  {
                    v65 = (*(v50 + 56) + 16 * v63);
                    v66 = *v65;
                    v67 = v65[1];

                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F38, &qword_21BE36340);
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_21BE362A0;
                    *(inited + 32) = sub_21BE28A0C();
                    v69 = v86;
                    *(inited + 40) = v70;
                    *(inited + 48) = v69;
                    *(inited + 56) = v44;
                    v71 = *v51;
                    v72 = *(v51 + 1);
                    *(inited + 64) = v71;
                    *(inited + 72) = v72;
                    v73 = v84[0];
                    *(inited + 80) = v85;
                    *(inited + 88) = v73;
                    *(inited + 96) = sub_21BE28A0C();
                    *(inited + 104) = v74;
                    *(inited + 112) = v66;
                    *(inited + 120) = v67;

                    v75 = sub_21BBB6068(inited);
                    swift_setDeallocating();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6F40, qword_21BE36348);
                    swift_arrayDestroy();
                    v76 = v87;
                    sub_21BE2614C();
                    v77 = sub_21BE26A2C();
                    v78 = sub_21BE28FFC();
                    if (os_log_type_enabled(v77, v78))
                    {
                      v79 = swift_slowAlloc();
                      *v79 = 0;
                      _os_log_impl(&dword_21BB35000, v77, v78, "Dependent tokens fetched successfully.", v79, 2u);
                      MEMORY[0x21CF05C50](v79, -1, -1);
                    }

                    (*(v16 + 8))(v76, v90);
                    v88(v75, 0);

                    return;
                  }
                }
              }
            }
          }
        }
      }

LABEL_26:

      goto LABEL_27;
    }
  }

  sub_21BE2614C();
  sub_21BC51D50(a2, 0xD000000000000021, 0x800000021BE57F90);
  (*(v16 + 8))(v19, v90);
  if (a2)
  {
    swift_beginAccess();
    v31 = swift_unknownObjectWeakLoadStrong();
    if (v31)
    {
      v32 = *(v31 + OBJC_IVAR____TtC14FamilyCircleUI35FamilyMemberAccountDetailsViewModel_familyDependentPasswordResetApi);
      v33 = v31;
      v34 = a2;

      v35 = a2;

      v36 = v89;

      sub_21BE17A70(v32, a3, a4, a5, a6, a7, v88, v36, a2);
    }
  }
}

void sub_21BC10B04(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      sub_21BC0FFAC(a3, a4, a5, a6, a7, a8);
    }
  }

  else
  {
    a7(a9, 1, a3, a4, a5, a6);
  }
}

uint64_t sub_21BC10BBC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F28, &unk_21BE36330);
    v4 = sub_21BE2890C();
  }

  v6 = a3;
  v5(v4, a3);
}

id sub_21BC10CF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyMemberAccountDetailsViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BC10DA0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FamilyMemberAccountDetailsViewModel();
  result = sub_21BE26C0C();
  *a2 = result;
  return result;
}

uint64_t sub_21BC10E38@<X0>(char *a1@<X8>)
{
  v122 = a1;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F50, &qword_21BE36380);
  v117 = *(v118 - 1);
  MEMORY[0x28223BE20](v118);
  v116 = &v103 - v2;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F58, &qword_21BE36388);
  v120 = *(v121 - 8);
  v3 = MEMORY[0x28223BE20](v121);
  v130 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v128 = &v103 - v5;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F60, &qword_21BE36390);
  v119 = *(v133 - 8);
  v6 = MEMORY[0x28223BE20](v133);
  v129 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v127 = &v103 - v8;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F68, &qword_21BE36398);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v103 - v9;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F70, &qword_21BE363A0);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v104 = &v103 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F78, &qword_21BE363A8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v132 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v123 = &v103 - v14;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F80, &qword_21BE363B0);
  MEMORY[0x28223BE20](v112);
  v16 = &v103 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F88, &qword_21BE363B8);
  v125 = *(v17 - 8);
  v126 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v124 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v131 = &v103 - v20;
  v21 = *(v1 + 80);
  v138 = *(v1 + 72);
  v139 = v21;
  v22 = sub_21BB41FA4();

  v113 = v22;
  v23 = sub_21BE27DBC();
  v25 = v24;
  v27 = v26;
  v111 = v1;

  sub_21BE2767C();
  v28 = sub_21BE27DAC();
  v30 = v29;
  LOBYTE(v21) = v31;
  v109 = sub_21BE27D6C();
  v33 = v32;
  v108 = v34;
  v110 = v35;
  sub_21BBC7C7C(v28, v30, v21 & 1);

  sub_21BBC7C7C(v23, v25, v27 & 1);

  v36 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CE8, &unk_21BE363C0) + 36)];
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2A0, &qword_21BE33660) + 28);
  v38 = sub_21BE27D7C();
  v39 = 1;
  (*(*(v38 - 8) + 56))(v36 + v37, 1, 1, v38);
  *v36 = swift_getKeyPath();
  *v16 = v109;
  *(v16 + 1) = v33;
  v16[16] = v108 & 1;
  *(v16 + 3) = v110;
  v40 = sub_21BE27CCC();
  KeyPath = swift_getKeyPath();
  v42 = &v16[*(v112 + 36)];
  *v42 = KeyPath;
  v42[1] = v40;
  sub_21BC12A90();
  sub_21BE285EC();
  v43 = sub_21BCD11F4();
  v44 = [v43 me];

  v45 = &selRef_bundleURL;
  if (v44)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v47 = objc_opt_self();
    v48 = [v47 bundleForClass_];
    v49 = sub_21BE2599C();
    v51 = v50;

    v138 = v49;
    v139 = v51;
    v138 = sub_21BE27DBC();
    v139 = v52;
    v140 = v53 & 1;
    v141 = v54;
    sub_21BDF83D4();
    v134 = v55;
    v135 = v56;
    v134 = sub_21BE27DBC();
    v135 = v57;
    v136 = v58 & 1;
    v137 = v59;
    MEMORY[0x28223BE20](v134);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6FC8, &qword_21BE36448);
    sub_21BC12CD0();
    v60 = v105;
    sub_21BE285FC();
    v61 = [v47 bundleForClass_];
    v62 = sub_21BE2599C();
    v64 = v63;

    v138 = v62;
    v139 = v64;
    sub_21BC12E34();
    v65 = v104;
    v66 = v107;
    sub_21BE27F9C();

    (*(v106 + 8))(v60, v66);
    v67 = v114;
    v68 = v123;
    v69 = v115;
    (*(v114 + 32))(v123, v65, v115);
    v39 = 0;
    v70 = v68;
    v71 = v69;
    v72 = v67;
    v45 = &selRef_bundleURL;
  }

  else
  {
    v70 = v123;
    v71 = v115;
    v72 = v114;
  }

  (*(v72 + 56))(v70, v39, 1, v71);
  type metadata accessor for ConfirmChildAgeViewModel();
  v73 = swift_getObjCClassFromMetadata();
  v74 = [objc_opt_self() v45[363]];
  v75 = sub_21BE2599C();
  v77 = v76;

  v138 = v75;
  v139 = v77;
  v138 = sub_21BE27DBC();
  v139 = v78;
  v140 = v79 & 1;
  v141 = v80;
  MEMORY[0x28223BE20](v138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6FA0, &qword_21BE36438);
  sub_21BB3B038(&qword_27CDB6FA8, &qword_27CDB6FA0, &qword_21BE36438, MEMORY[0x277CE1138]);
  v81 = v127;
  sub_21BE2861C();
  type metadata accessor for FindMyButton(0);
  sub_21BC12F9C(&qword_27CDB6FB0, type metadata accessor for FindMyButton, asc_21BE33994);
  v82 = v116;
  sub_21BE2860C();
  sub_21BC12C08();
  v83 = v128;
  v84 = v118;
  sub_21BE27E3C();
  (*(v117 + 8))(v82, v84);
  v85 = v124;
  v86 = *(v125 + 16);
  v87 = v126;
  v86(v124, v131, v126);
  sub_21BBA3854(v70, v132, &qword_27CDB6F78, &qword_21BE363A8);
  v88 = v119;
  v118 = *(v119 + 16);
  (v118)(v129, v81, v133);
  v89 = v120;
  v117 = *(v120 + 16);
  v90 = v83;
  v91 = v121;
  (v117)(v130, v90, v121);
  v92 = v122;
  v86(v122, v85, v87);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6FC0, &qword_21BE36440);
  sub_21BBA3854(v132, &v92[v93[12]], &qword_27CDB6F78, &qword_21BE363A8);
  v94 = v129;
  v95 = v133;
  (v118)(&v92[v93[16]], v129, v133);
  v96 = &v92[v93[20]];
  v97 = v130;
  (v117)(v96, v130, v91);
  v98 = *(v89 + 8);
  v98(v128, v91);
  v99 = *(v88 + 8);
  v99(v127, v95);
  sub_21BB3A4CC(v123, &qword_27CDB6F78, &qword_21BE363A8);
  v100 = v126;
  v101 = *(v125 + 8);
  v101(v131, v126);
  v98(v97, v91);
  v99(v94, v133);
  sub_21BB3A4CC(v132, &qword_27CDB6F78, &qword_21BE363A8);
  return (v101)(v124, v100);
}

uint64_t sub_21BC11C60(uint64_t a1, void *a2)
{
  v4 = sub_21BCD11F4();
  v5 = sub_21BE2905C();

  v13 = v5;
  swift_getKeyPath();
  v6 = swift_allocObject();
  v7 = *(a1 + 32);
  *(v6 + 72) = *(a1 + 48);
  v8 = *(a1 + 80);
  *(v6 + 88) = *(a1 + 64);
  *(v6 + 104) = v8;
  v9 = *(a1 + 16);
  *(v6 + 24) = *a1;
  *(v6 + 40) = v9;
  *(v6 + 16) = a2;
  *(v6 + 120) = *(a1 + 96);
  *(v6 + 56) = v7;
  v10 = a2;
  sub_21BC12ED0(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CC8, &qword_21BE36190);
  sub_21BB3B038(&qword_27CDB5CD0, &qword_27CDB5CC8, &qword_21BE36190, MEMORY[0x277D83980]);
  sub_21BC12F9C(&unk_280BD8A30, sub_21BBE66D8, MEMORY[0x277D85378]);
  sub_21BC12DE0();
  return sub_21BE285BC();
}

id sub_21BC11DEC@<X0>(void **a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v18 = *a3;
  v6 = v5;
  sub_21BC12F2C(&v18, &v16);
  type metadata accessor for LocationViewModel(0);
  sub_21BC12F9C(&qword_27CDBDC20, type metadata accessor for LocationViewModel, protocol conformance descriptor for LocationViewModel);
  v7 = sub_21BE270CC();
  v9 = v8;
  v19[0] = 0;
  sub_21BE283EC();
  v10 = v16;
  v11 = v17;
  v19[0] = 0;
  sub_21BE283EC();
  v12 = v16;
  v13 = v17;
  *a4 = v6;
  *(a4 + 8) = a2;
  *(a4 + 16) = v7;
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  *(a4 + 33) = v16;
  *(a4 + 36) = *(&v16 + 3);
  *(a4 + 40) = v11;
  *(a4 + 48) = v12;
  *(a4 + 49) = *v19;
  *(a4 + 52) = *&v19[3];
  *(a4 + 56) = v13;

  return a2;
}

uint64_t sub_21BC11F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_21BE275DC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7000, &qword_21BE364C8);
  return sub_21BC11F90(a1, a2 + *(v4 + 44));
}

uint64_t sub_21BC11F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7008, &qword_21BE364D0);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v52 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7010, &qword_21BE364D8);
  MEMORY[0x28223BE20](v65);
  v55 = &v52 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7018, &unk_21BE364E0);
  MEMORY[0x28223BE20](v60);
  v61 = &v52 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7020, &qword_21BE39520);
  v7 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7028, &unk_21BE364F0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v64 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v63 = &v52 - v13;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();
  v16 = [v15 bundleForClass_];
  v17 = sub_21BE2599C();
  v19 = v18;

  *&v66 = v17;
  *(&v66 + 1) = v19;
  sub_21BB41FA4();
  v58 = sub_21BE27DBC();
  v57 = v20;
  v56 = v21;
  v59 = v22;
  v66 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  if (v67 == 1)
  {
    sub_21BE26EEC();
    v23 = v62;
    (*(v7 + 16))(v61, v9, v62);
    swift_storeEnumTagMultiPayload();
    sub_21BB3B038(&qword_27CDBC4E0, &qword_27CDB7020, &qword_21BE39520, MEMORY[0x277CDD7F8]);
    sub_21BC130F8();
    v24 = v63;
    sub_21BE2784C();
    (*(v7 + 8))(v9, v23);
  }

  else
  {
    v25 = [v15 bundleForClass_];
    v26 = sub_21BE2599C();
    v28 = v27;

    v67 = v26;
    v68 = v28;
    sub_21BE28D7C();
    sub_21BC12ED0(a1, &v66);
    v29 = sub_21BE28D6C();
    v30 = swift_allocObject();
    v31 = MEMORY[0x277D85700];
    *(v30 + 16) = v29;
    *(v30 + 24) = v31;
    v32 = *(a1 + 80);
    *(v30 + 96) = *(a1 + 64);
    *(v30 + 112) = v32;
    *(v30 + 128) = *(a1 + 96);
    v33 = *(a1 + 16);
    *(v30 + 32) = *a1;
    *(v30 + 48) = v33;
    v34 = *(a1 + 48);
    *(v30 + 64) = *(a1 + 32);
    *(v30 + 80) = v34;
    sub_21BC12ED0(a1, &v66);
    v35 = sub_21BE28D6C();
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = v31;
    v37 = *(a1 + 80);
    *(v36 + 96) = *(a1 + 64);
    *(v36 + 112) = v37;
    *(v36 + 128) = *(a1 + 96);
    v38 = *(a1 + 16);
    *(v36 + 32) = *a1;
    *(v36 + 48) = v38;
    v39 = *(a1 + 48);
    *(v36 + 64) = *(a1 + 32);
    *(v36 + 80) = v39;
    sub_21BE2857C();
    v40 = v52;
    sub_21BE284CC();
    sub_21BB3B038(&qword_27CDB7030, &qword_27CDB7008, &qword_21BE364D0, MEMORY[0x277CDF068]);
    v41 = v55;
    v42 = v54;
    sub_21BE27F3C();
    (*(v53 + 8))(v40, v42);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    LOBYTE(v42) = v66;
    KeyPath = swift_getKeyPath();
    v44 = swift_allocObject();
    *(v44 + 16) = v42;
    v45 = (v41 + *(v65 + 36));
    *v45 = KeyPath;
    v45[1] = sub_21BC130E0;
    v45[2] = v44;
    sub_21BBA3854(v41, v61, &qword_27CDB7010, &qword_21BE364D8);
    swift_storeEnumTagMultiPayload();
    sub_21BB3B038(&qword_27CDBC4E0, &qword_27CDB7020, &qword_21BE39520, MEMORY[0x277CDD7F8]);
    sub_21BC130F8();
    v24 = v63;
    sub_21BE2784C();
    sub_21BB3A4CC(v41, &qword_27CDB7010, &qword_21BE364D8);
  }

  v46 = v64;
  sub_21BBA3854(v24, v64, &qword_27CDB7028, &unk_21BE364F0);
  v47 = v58;
  v48 = v57;
  *a2 = v58;
  *(a2 + 8) = v48;
  v49 = v56 & 1;
  *(a2 + 16) = v56 & 1;
  *(a2 + 24) = v59;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7040, qword_21BE36580);
  sub_21BBA3854(v46, a2 + *(v50 + 64), &qword_27CDB7028, &unk_21BE364F0);
  sub_21BBA4A38(v47, v48, v49);

  sub_21BB3A4CC(v24, &qword_27CDB7028, &unk_21BE364F0);
  sub_21BB3A4CC(v46, &qword_27CDB7028, &unk_21BE364F0);
  sub_21BBC7C7C(v47, v48, v49);
}

id sub_21BC127C4@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  swift_storeEnumTagMultiPayload();
  sub_21BE25B7C();
  v5 = sub_21BE25B9C();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21BC12FE4(v4);
    result = sub_21BE2978C();
    __break(1u);
  }

  else
  {
    MyButton = type metadata accessor for FindMyButton(0);
    (*(v6 + 32))(&a1[*(MyButton + 20)], v4, v5);
    v8 = *(MyButton + 24);
    result = [objc_opt_self() defaultWorkspace];
    *&a1[v8] = result;
  }

  return result;
}

uint64_t sub_21BC129AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7048, &unk_21BE36610);
  sub_21BB3B038(&qword_27CDB7050, &qword_27CDB7048, &unk_21BE36610, MEMORY[0x277CE04B0]);
  return sub_21BE27E3C();
}

uint64_t sub_21BC12A38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BE2743C();
  *a1 = result;
  return result;
}

unint64_t sub_21BC12A90()
{
  result = qword_27CDB6F90;
  if (!qword_27CDB6F90)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6F80, &qword_21BE363B0);
    v4[0] = sub_21BC12B48();
    v4[1] = sub_21BB3B038(&unk_27CDBC3F0, &qword_27CDB5D50, &qword_21BE36430, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6F90);
  }

  return result;
}

unint64_t sub_21BC12B48()
{
  result = qword_27CDB6F98;
  if (!qword_27CDB6F98)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5CE8, &unk_21BE363C0);
    v4 = sub_21BB3B038(&qword_27CDB6D70, &qword_27CDBC2A0, &qword_21BE33660, MEMORY[0x277CE0868]);
    v5[0] = MEMORY[0x277CE0BC8];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v5);
    atomic_store(result, &qword_27CDB6F98);
  }

  return result;
}

unint64_t sub_21BC12C08()
{
  result = qword_27CDB6FB8;
  if (!qword_27CDB6FB8)
  {
    v5[5] = v0;
    v5[6] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6F50, &qword_21BE36380);
    v4 = sub_21BC12F9C(&qword_27CDB6FB0, type metadata accessor for FindMyButton, asc_21BE33994);
    v5[0] = MEMORY[0x277CE1410];
    v5[1] = v4;
    v5[2] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CDF0A8], v3, v5);
    atomic_store(result, &qword_27CDB6FB8);
  }

  return result;
}

unint64_t sub_21BC12CD0()
{
  result = qword_27CDB6FD0;
  if (!qword_27CDB6FD0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6FC8, &qword_21BE36448);
    v4[0] = sub_21BC12D5C();
    v4[1] = sub_21BBDD54C();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6FD0);
  }

  return result;
}

unint64_t sub_21BC12D5C()
{
  result = qword_27CDB6FD8;
  if (!qword_27CDB6FD8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6FE0, &unk_21BE36450);
    v4[0] = sub_21BC12DE0();
    result = swift_getWitnessTable(MEMORY[0x277CE1290], v3, v4);
    atomic_store(result, &qword_27CDB6FD8);
  }

  return result;
}

unint64_t sub_21BC12DE0()
{
  result = qword_27CDB6FE8;
  if (!qword_27CDB6FE8)
  {
    result = swift_getWitnessTable(byte_21BE3CDC0, &type metadata for FamilyMemberSharingFindMyCell, v0, v1);
    atomic_store(result, &qword_27CDB6FE8);
  }

  return result;
}

unint64_t sub_21BC12E34()
{
  result = qword_27CDB6FF0;
  if (!qword_27CDB6FF0)
  {
    v5[5] = v0;
    v5[6] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6F68, &qword_21BE36398);
    v4 = sub_21BC12CD0();
    v5[0] = MEMORY[0x277CE0BC8];
    v5[1] = v4;
    v5[2] = MEMORY[0x277CE0BC8];
    result = swift_getWitnessTable(MEMORY[0x277CDF0A8], v3, v5);
    atomic_store(result, &qword_27CDB6FF0);
  }

  return result;
}

uint64_t sub_21BC12F2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6FF8, &unk_21BE36480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC12F9C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21BC12FE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_12Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_21BC130F8()
{
  result = qword_27CDB7038;
  if (!qword_27CDB7038)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7010, &qword_21BE364D8);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7008, &qword_21BE364D0);
    v4[3] = sub_21BB3B038(&qword_27CDB7030, &qword_27CDB7008, &qword_21BE364D0, MEMORY[0x277CDF068]);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB7038);
  }

  return result;
}

uint64_t sub_21BC13278@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

double sub_21BC13350@<D0>(id a1@<X2>, uint64_t a3@<X8>)
{
  if (![a1 isMe])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    if (*(v62 + 16) && (v22 = sub_21BBB31A4(a1), (v23 & 1) != 0))
    {
      v24 = *(*(v62 + 56) + v22);

      if (v24 == 1)
      {
        type metadata accessor for ConfirmChildAgeViewModel();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v26 = [objc_opt_self() bundleForClass_];
        sub_21BE2599C();

        sub_21BB41FA4();
        v27 = sub_21BE27DBC();
        v29 = v28;
        v31 = v30;
        sub_21BE27BEC();
        v32 = sub_21BE27D9C();
        v34 = v33;
        v36 = v35;

        sub_21BBC7C7C(v27, v29, v31 & 1);

        sub_21BE2833C();
        v37 = sub_21BE27D4C();
        v39 = v38;
        v41 = v40;
        v43 = v42;

        sub_21BBC7C7C(v32, v34, v36 & 1);

        *&v63 = v37;
        *(&v63 + 1) = v39;
        LOBYTE(v64) = v41 & 1;
        *(&v64 + 1) = *v61;
        DWORD1(v64) = *&v61[3];
        *(&v64 + 1) = v43;
        v65 = v59;
        LOBYTE(v66) = v60;
        HIBYTE(v66) = 1;
        sub_21BBA4A38(v37, v39, v41 & 1);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7070, &qword_21BE36720);
        sub_21BC13BF4();
        sub_21BE2784C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7058, &qword_21BE36718);
        sub_21BC13B68();
        sub_21BE2784C();
        sub_21BBC7C7C(v37, v39, v41 & 1);
        goto LABEL_3;
      }
    }

    else
    {
    }

    type metadata accessor for ConfirmChildAgeViewModel();
    v44 = swift_getObjCClassFromMetadata();
    v45 = [objc_opt_self() bundleForClass_];
    v46 = sub_21BE2599C();
    v48 = v47;

    *&v63 = v46;
    *(&v63 + 1) = v48;
    sub_21BB41FA4();
    v49 = sub_21BE27DBC();
    v51 = v50;
    LOBYTE(v48) = v52;
    sub_21BE27BEC();
    v53 = sub_21BE27D9C();
    v55 = v54;
    v57 = v56;

    sub_21BBC7C7C(v49, v51, v48 & 1);

    sub_21BE2833C();
    sub_21BE27D4C();

    sub_21BBC7C7C(v53, v55, v57 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7058, &qword_21BE36718);
    sub_21BC13B68();
    sub_21BE2784C();
    goto LABEL_10;
  }

  sub_21BCCCA8C();
  sub_21BB41FA4();
  v5 = sub_21BE27DBC();
  v7 = v6;
  v9 = v8;
  sub_21BE27BEC();
  v10 = sub_21BE27D9C();
  v12 = v11;
  v14 = v13;

  sub_21BBC7C7C(v5, v7, v9 & 1);

  sub_21BE2833C();
  v15 = sub_21BE27D4C();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_21BBC7C7C(v10, v12, v14 & 1);

  *&v63 = v15;
  *(&v63 + 1) = v17;
  LOBYTE(v64) = v19 & 1;
  *(&v64 + 1) = v59;
  DWORD1(v64) = *(&v59 + 3);
  *(&v64 + 1) = v21;
  *&v65 = swift_getKeyPath();
  *(&v65 + 1) = 1;
  v66 = 0;
  sub_21BBA4A38(v15, v17, v19 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7070, &qword_21BE36720);
  sub_21BC13BF4();
  sub_21BE2784C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7058, &qword_21BE36718);
  sub_21BC13B68();
  sub_21BE2784C();
  sub_21BBC7C7C(v15, v17, v19 & 1);

LABEL_3:

LABEL_10:
  result = *&v63;
  *a3 = v63;
  *(a3 + 16) = v64;
  *(a3 + 32) = v65;
  *(a3 + 48) = v66;
  *(a3 + 50) = v67;
  return result;
}

void sub_21BC13A84(uint64_t a1@<X8>)
{
  *a1 = 13;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_282D85600;
  *(a1 + 24) = &unk_282D85630;
  *(a1 + 32) = 0;
}

id sub_21BC13AAC@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v8 = v1[2];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *(v5 + 32) = v8;
  *a1 = sub_21BC13278;
  a1[1] = 0;
  a1[2] = sub_21BC13B5C;
  a1[3] = v5;
  a1[4] = sub_21BC13A84;
  a1[5] = 0;
  v6 = v4;

  return v8;
}

unint64_t sub_21BC13B68()
{
  result = qword_27CDB7060;
  if (!qword_27CDB7060)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7058, &qword_21BE36718);
    v4[0] = sub_21BC13BF4();
    v4[1] = MEMORY[0x277CE0BC8];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDB7060);
  }

  return result;
}

unint64_t sub_21BC13BF4()
{
  result = qword_27CDB7068;
  if (!qword_27CDB7068)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7070, &qword_21BE36720);
    v4 = sub_21BB3B038(&qword_27CDB7078, &qword_27CDB7080, &qword_21BE36728, MEMORY[0x277CE0868]);
    v5[0] = MEMORY[0x277CE0BC8];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v5);
    atomic_store(result, &qword_27CDB7068);
  }

  return result;
}

uint64_t View.familyDestination<A, B>(for:makeView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  sub_21BC1666C(a2, a3, &v20);
  v23 = v21;
  v24 = BYTE8(v21);
  v25 = v22;
  v19[0] = v20;
  v19[1] = v21;
  v19[2] = v22;
  v18[0] = a5;
  v18[1] = a6;
  v18[2] = a8;
  v18[3] = a9;
  v16 = type metadata accessor for FamilyDestinationModifier(0, v18);
  MEMORY[0x21CF03340](v19, a4, v16, a7);

  sub_21BB3A4CC(&v23, &qword_27CDB7098, &qword_21BE36770);
  return sub_21BB3A4CC(&v25, &qword_27CDB70A0, qword_21BE36778);
}

uint64_t View.handleFamilyDeepLinks()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NavigationManager(0);
  sub_21BC16738();
  v6 = sub_21BE26E9C();
  v7 = v4 & 1;
  MEMORY[0x21CF03340](&v6, a1, &type metadata for HandleDeepLinksModifier, a2);
}

uint64_t sub_21BC13E5C@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t sub_21BC14104()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB70A0, qword_21BE36778);
  sub_21BE2841C();
  return v1;
}

uint64_t sub_21BC14158@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v153 = a1;
  v161 = a3;
  swift_getWitnessTable(byte_21BE36938);
  v4 = sub_21BE2794C();
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v154 = a2;
  v185 = v5;
  v186 = v6;
  v187 = v7;
  v188 = v8;
  v9 = type metadata accessor for FamilyDestinationModifier.DestinationSheet(255, &v185);
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE04B0], v4);
  v162 = swift_getWitnessTable(byte_21BE36B00, v9);
  v185 = v4;
  v186 = v9;
  v187 = WitnessTable;
  v188 = v162;
  v176 = MEMORY[0x277CDEE28];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v168 = v5;
  v185 = v5;
  v186 = v6;
  v167 = v6;
  v166 = v7;
  v187 = v7;
  v188 = v8;
  v165 = v8;
  v11 = type metadata accessor for FamilyDestinationModifier.DestinationContent(255, &v185);
  v12 = type metadata accessor for NavigationManager(255);
  v13 = swift_getWitnessTable(asc_21BE36AB0, v11);
  v14 = sub_21BC16738();
  v185 = v11;
  v186 = v12;
  v187 = v13;
  v188 = v14;
  v15 = swift_getOpaqueTypeMetadata2();
  v185 = v11;
  v186 = v12;
  v187 = v13;
  v188 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v185 = MEMORY[0x277CE1428];
  v186 = v15;
  v187 = MEMORY[0x277CE1410];
  v188 = OpaqueTypeConformance2;
  v17 = sub_21BE270BC();
  v18 = sub_21BE2719C();
  v19 = swift_getWitnessTable(MEMORY[0x277CDD938], v17);
  v20 = sub_21BC17798();
  v191[0] = v19;
  v191[1] = v20;
  v142 = v18;
  v141 = swift_getWitnessTable(MEMORY[0x277CDFAD8], v18, v191);
  v171 = sub_21BE2782C();
  v21 = sub_21BE2719C();
  v143 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v155 = &v136 - v22;
  v172 = v23;
  v24 = sub_21BE2719C();
  v146 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v145 = &v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v144 = &v136 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7138, &qword_21BE36988);
  v152 = v4;
  v185 = v4;
  v186 = v9;
  v29 = v177;
  v151 = v9;
  v187 = WitnessTable;
  v188 = v162;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = sub_21BC177EC();
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7148, &unk_21BE36990);
  v33 = sub_21BC17840();
  v185 = v32;
  v186 = v12;
  v187 = v33;
  v188 = v14;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = OpaqueTypeMetadata2;
  v185 = OpaqueTypeMetadata2;
  v186 = &type metadata for AnyLinkDestination;
  v174 = v28;
  v187 = v28;
  v188 = v30;
  v176 = v30;
  v170 = v31;
  v189 = v31;
  v190 = v34;
  v169 = v34;
  v36 = swift_getOpaqueTypeMetadata2();
  v140 = *(v36 - 8);
  v37 = MEMORY[0x28223BE20](v36);
  v139 = &v136 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v138 = &v136 - v39;
  v156 = v40;
  v160 = v24;
  v159 = sub_21BE2785C();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v157 = &v136 - v41;
  v42 = sub_21BE2754C();
  v43 = *(v42 - 8);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v136 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = v35;
  v164 = *(v35 - 8);
  v47 = MEMORY[0x28223BE20](v44);
  v137 = &v136 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v175 = &v136 - v49;
  v194 = *(v29 + 24);
  v193 = *(v29 + 2);
  LODWORD(v35) = v194;

  v149 = v35;
  if ((v35 & 1) == 0)
  {
    sub_21BE28FEC();
    v50 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v193, &qword_27CDB7098, &qword_21BE36770);
    (*(v43 + 8))(v46, v42);
  }

  v51 = v168;
  v52 = v43;
  v53 = v42;
  v54 = v166;
  v148 = sub_21BC584C8(v168, v168, v166);
  v147 = v55;

  v56 = v177;
  v57 = v46;
  v58 = *(v177 + 1);
  v192 = v177[2];
  v59 = swift_allocObject();
  v60 = v167;
  *(v59 + 16) = v51;
  *(v59 + 24) = v60;
  *(v59 + 32) = v54;
  v61 = v53;
  v62 = v52;
  *(v59 + 40) = v165;
  v63 = v56[1];
  *(v59 + 48) = *v56;
  *(v59 + 64) = v63;
  *(v59 + 80) = v56[2];
  sub_21BBA3854(&v193, &v185, &qword_27CDB7098, &qword_21BE36770);
  v150 = v58;
  v64 = v57;

  sub_21BBA3854(&v192, &v185, &qword_27CDB70A0, qword_21BE36778);
  swift_checkMetadataState();
  v65 = swift_checkMetadataState();
  v134 = v162;
  v132 = v65;
  v133 = WitnessTable;
  sub_21BE2812C();

  v67 = v149;
  if ((v149 & 1) == 0)
  {
    sub_21BE28FEC();
    v68 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v193, &qword_27CDB7098, &qword_21BE36770);
    (*(v62 + 8))(v64, v61);
    v66 = v185;
  }

  v69 = *(v66 + 16);

  v70 = v176;
  v71 = v174;
  if (v69 == 1)
  {
    v72 = v137;
    v73 = v173;
    v74 = v177;
    sub_21BC155A8(v175, v154, v173, v176, v137);
    v75 = swift_allocObject();
    v76 = v167;
    *(v75 + 16) = v168;
    *(v75 + 24) = v76;
    v77 = v165;
    *(v75 + 32) = v166;
    *(v75 + 40) = v77;
    v78 = v74[1];
    *(v75 + 48) = *v74;
    *(v75 + 64) = v78;
    *(v75 + 80) = v74[2];
    sub_21BBA3854(&v193, &v185, &qword_27CDB7098, &qword_21BE36770);

    sub_21BBA3854(&v192, &v185, &qword_27CDB70A0, qword_21BE36778);
    v79 = v169;
    v134 = v169;
    v80 = v139;
    v81 = v170;
    sub_21BE2807C();

    v82 = *(v164 + 8);
    v164 += 8;
    v177 = v82;
    (v82)(v72, v73);
    v185 = v73;
    v186 = &type metadata for AnyLinkDestination;
    v187 = v71;
    v188 = v70;
    v189 = v81;
    v190 = v79;
    swift_getOpaqueTypeConformance2();
    v83 = v138;
    v84 = v156;
    sub_21BD37338();
    v85 = *(v140 + 8);
    v85(v80, v84);
    sub_21BD37338();
    v86 = swift_getWitnessTable(MEMORY[0x277CE0328], v171);
    v179[0] = v176;
    v179[1] = v86;
    v87 = MEMORY[0x277CDFAD8];
    v178[0] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v172, v179);
    v178[1] = MEMORY[0x277CE0790];
    v88 = v160;
    swift_getWitnessTable(v87, v160, v178);
    v89 = v157;
    sub_21BD36AA0(v80, v84);
    v90 = v80;
    v91 = v173;
    v85(v90, v84);
    v85(v83, v84);
    v92 = v176;
    (v177)(v175, v91);
  }

  else
  {
    v93 = sub_21BC14104();
    v95 = v94;
    LODWORD(WitnessTable) = v96;

    if ((v67 & 1) == 0)
    {
      sub_21BE28FEC();
      v97 = sub_21BE27B2C();
      sub_21BE269DC();

      sub_21BE2753C();
      swift_getAtKeyPath();
      sub_21BB3A4CC(&v193, &qword_27CDB7098, &qword_21BE36770);
      (*(v62 + 8))(v64, v61);
    }

    v98 = v168;
    v99 = v166;
    v100 = sub_21BC58778(v168, v168, v166);
    v102 = v101;
    v104 = v103;

    v105 = sub_21BC15AA0(v100, v102, v104 & 1, v93, v95, WitnessTable);
    v107 = v106;
    v109 = v108;

    MEMORY[0x28223BE20](v110);
    v111 = v167;
    *(&v136 - 8) = v98;
    *(&v136 - 7) = v111;
    v112 = v165;
    *(&v136 - 6) = v99;
    *(&v136 - 5) = v112;
    v132 = v105;
    v133 = v107;
    v113 = v109 & 1;
    LOBYTE(v134) = v109 & 1;
    v114 = v177;
    v135 = v177;
    sub_21BE2869C();
    sub_21BE27E8C();
    v115 = swift_allocObject();
    *(v115 + 16) = v98;
    *(v115 + 24) = v111;
    *(v115 + 32) = v99;
    *(v115 + 40) = v112;
    WitnessTable = v105;
    *(v115 + 48) = v105;
    *(v115 + 56) = v107;
    v162 = v107;
    *(v115 + 64) = v113;
    v116 = v114[1];
    *(v115 + 72) = *v114;
    *(v115 + 88) = v116;
    *(v115 + 104) = v114[2];
    sub_21BBA3854(&v193, &v185, &qword_27CDB7098, &qword_21BE36770);

    sub_21BBA3854(&v192, &v185, &qword_27CDB70A0, qword_21BE36778);

    v117 = swift_getWitnessTable(MEMORY[0x277CE0328], v171);
    v92 = v176;
    v184[0] = v176;
    v184[1] = v117;
    v118 = MEMORY[0x277CDFAD8];
    v119 = v172;
    v120 = swift_getWitnessTable(MEMORY[0x277CDFAD8], v172, v184);
    v121 = v145;
    v122 = v155;
    sub_21BE281AC();

    (*(v143 + 8))(v122, v119);
    v183[0] = v120;
    v183[1] = MEMORY[0x277CE0790];
    v123 = v118;
    v91 = v173;
    v88 = v160;
    swift_getWitnessTable(v123, v160, v183);
    v124 = v144;
    sub_21BD37338();
    v125 = *(v146 + 8);
    v125(v121, v88);
    sub_21BD37338();
    v185 = v91;
    v186 = &type metadata for AnyLinkDestination;
    v187 = v174;
    v188 = v92;
    v189 = v170;
    v190 = v169;
    swift_getOpaqueTypeConformance2();
    v89 = v157;
    sub_21BD36B98(v121, v156, v88);

    v125(v121, v88);
    v125(v124, v88);
    (*(v164 + 8))(v175, v91);
  }

  v185 = v91;
  v186 = &type metadata for AnyLinkDestination;
  v187 = v174;
  v188 = v92;
  v189 = v170;
  v190 = v169;
  v126 = swift_getOpaqueTypeConformance2();
  v127 = swift_getWitnessTable(MEMORY[0x277CE0328], v171);
  v182[0] = v92;
  v182[1] = v127;
  v128 = MEMORY[0x277CDFAD8];
  v181[0] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v172, v182);
  v181[1] = MEMORY[0x277CE0790];
  v129 = swift_getWitnessTable(v128, v88, v181);
  v180[0] = v126;
  v180[1] = v129;
  v130 = v159;
  swift_getWitnessTable(MEMORY[0x277CE0340], v159, v180);
  sub_21BD37338();
  return (*(v158 + 8))(v89, v130);
}

uint64_t sub_21BC15480(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;

  v19 = sub_21BC16300(v9);
  v20 = v10;
  v21 = v11;
  v22 = v12 & 1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v13 = type metadata accessor for FamilyDestinationModifier.DestinationSheet(0, &v15);
  swift_getWitnessTable(byte_21BE36B00, v13);
  sub_21BD37338();

  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = v18;
  sub_21BD37338();
}

uint64_t sub_21BC155A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_21BE2754C();
  *&v23 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v5 + 24);
  v24 = v5[2];
  v14 = v25;

  if ((v14 & 1) == 0)
  {
    sub_21BE28FEC();
    *&v22 = v11;
    v15 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v24, &qword_27CDB7098, &qword_21BE36770);
    (*(v23 + 8))(v13, v22);
  }

  v17 = *v5;
  v16 = v5[1];
  v18 = swift_allocObject();
  v19 = *(a2 + 16);
  v22 = *(a2 + 32);
  v20 = v22;
  v23 = v19;
  *(v18 + 16) = v19;
  *(v18 + 32) = a3;
  *(v18 + 40) = v20;
  *(v18 + 56) = a4;
  *(v18 + 64) = v17;
  *(v18 + 72) = v16;

  sub_21BC56190(v23, sub_21BC17954, v18, v23, v22);

  return (*(*(a3 - 8) + 16))(a5, a1, a3);
}

uint64_t sub_21BC1580C(void *a1, uint64_t a2)
{
  v4 = sub_21BE2754C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 24);
  v14 = *(a2 + 16);
  v8 = v15;

  if ((v8 & 1) == 0)
  {
    sub_21BE28FEC();
    v9 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v14, &qword_27CDB7098, &qword_21BE36770);
    (*(v5 + 8))(v7, v4);
  }

  sub_21BC56C0C(a1, &v13);

  v12[2] = v13;

  if ((v8 & 1) == 0)
  {
    sub_21BE28FEC();
    v10 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v14, &qword_27CDB7098, &qword_21BE36770);
    (*(v5 + 8))(v7, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7148, &unk_21BE36990);
  type metadata accessor for NavigationManager(0);
  sub_21BC17840();
  sub_21BC16738();
  sub_21BE27EEC();
}

uint64_t sub_21BC15AA0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a6;
  *(v12 + 56) = a1;
  *(v12 + 64) = a2;
  *(v12 + 72) = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = a6;
  *(v13 + 56) = a1;
  *(v13 + 64) = a2;
  *(v13 + 72) = a3;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_21BE2857C();
  return v15;
}

uint64_t sub_21BC15BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v34 = a6;
  v35 = a7;
  v37 = a4;
  v38 = a2;
  v39 = a3;
  v36 = a1;
  v40 = a9;
  v48 = a5;
  v49 = a6;
  v50 = a7;
  v51 = a8;
  v11 = type metadata accessor for FamilyDestinationModifier.DestinationContent(255, &v48);
  v12 = type metadata accessor for NavigationManager(255);
  WitnessTable = swift_getWitnessTable(asc_21BE36AB0, v11);
  v14 = sub_21BC16738();
  v48 = v11;
  v49 = v12;
  v50 = WitnessTable;
  v51 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v48 = v11;
  v49 = v12;
  v50 = WitnessTable;
  v51 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = MEMORY[0x277CE1428];
  v49 = OpaqueTypeMetadata2;
  v50 = MEMORY[0x277CE1410];
  v51 = OpaqueTypeConformance2;
  v16 = sub_21BE270BC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &OpaqueTypeMetadata2 - v18;
  v20 = sub_21BE2719C();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &OpaqueTypeMetadata2 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &OpaqueTypeMetadata2 - v25;
  v42 = a5;
  v43 = v34;
  v44 = v35;
  v45 = a8;
  v27 = v36;
  v46 = v37;

  v28 = v38;

  sub_21BC1635C(v27, v28, v39, sub_21BC179A4, v41, nullsub_1, 0, MEMORY[0x277CE1428], OpaqueTypeMetadata2, MEMORY[0x277CE1410], OpaqueTypeConformance2);
  v29 = swift_getWitnessTable(MEMORY[0x277CDD938], v16);
  sub_21BE2813C();
  (*(v17 + 8))(v19, v16);
  v30 = sub_21BC17798();
  v47[0] = v29;
  v47[1] = v30;
  swift_getWitnessTable(MEMORY[0x277CDFAD8], v20, v47);
  sub_21BD37338();
  v31 = *(v21 + 8);
  v31(v24, v20);
  sub_21BD37338();
  return (v31)(v26, v20);
}

uint64_t sub_21BC15F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a5;
  v46 = a6;
  v11 = sub_21BE2754C();
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x28223BE20](v11);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v50 = a5;
  v13 = type metadata accessor for FamilyDestinationModifier.DestinationContent(255, &v47);
  v14 = type metadata accessor for NavigationManager(255);
  WitnessTable = swift_getWitnessTable(asc_21BE36AB0, v13);
  v16 = sub_21BC16738();
  v42 = v14;
  v43 = v13;
  v47 = v13;
  v48 = v14;
  v44 = v16;
  v45 = WitnessTable;
  v49 = WitnessTable;
  v50 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = *(OpaqueTypeMetadata2 - 8);
  v19 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - v22;
  v24 = *a1;

  v47 = sub_21BC16300(v24);
  v48 = v25;
  v40 = v25;
  v41 = v26;
  v49 = v26;
  LOBYTE(v50) = v27 & 1;
  v51 = *(a1 + 16);
  v52 = *(a1 + 24);
  LOBYTE(a1) = v52;

  if ((a1 & 1) == 0)
  {
    sub_21BE28FEC();
    v28 = sub_21BE27B2C();
    sub_21BE269DC();

    v29 = v37;
    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v51, &qword_27CDB7098, &qword_21BE36770);
    (*(v38 + 8))(v29, v39);
  }

  v30 = swift_checkMetadataState();
  v31 = swift_checkMetadataState();
  v32 = v44;
  v33 = v45;
  sub_21BE27EEC();

  v47 = v30;
  v48 = v31;
  v49 = v33;
  v50 = v32;
  swift_getOpaqueTypeConformance2();
  sub_21BD37338();
  v34 = *(v18 + 8);
  v34(v21, OpaqueTypeMetadata2);
  sub_21BD37338();
  return (v34)(v23, OpaqueTypeMetadata2);
}

uint64_t sub_21BC16300(uint64_t a1)
{
  type metadata accessor for NavigationManager(0);
  sub_21BC16738();
  sub_21BE26E9C();
  return a1;
}

uint64_t sub_21BC1635C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = MEMORY[0x28223BE20](a1);
  v12(v11);
  return sub_21BE2707C();
}

uint64_t sub_21BC1643C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_21BE2754C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a4 + 24);
  v40 = *(a4 + 16);
  v17 = v41;

  if ((v17 & 1) == 0)
  {
    sub_21BE28FEC();
    v18 = sub_21BE27B2C();
    v31 = v13;
    v19 = a7;
    v20 = a1;
    v21 = a2;
    v22 = a3;
    v23 = v18;
    sub_21BE269DC();

    a3 = v22;
    a2 = v21;
    a1 = v20;
    a7 = v19;
    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v40, &qword_27CDB7098, &qword_21BE36770);
    (*(v14 + 8))(v16, v31);
  }

  v24 = sub_21BC58778(a5, a5, a7);
  v26 = v25;
  v28 = v27;

  v37 = v24;
  v38 = v26;
  v39 = v28 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  MEMORY[0x21CF036E0](&v36);
  v29 = v36;

  v33 = a1;
  v34 = a2;
  v35 = a3 & 1;
  v32 = v29;
  return sub_21BE2854C();
}

void *sub_21BC1666C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  type metadata accessor for NavigationManager(0);
  sub_21BC16738();
  v7 = sub_21BE26E9C();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A10, &qword_21BE35CE0);
  result = sub_21BE283EC();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v7;
  *(a4 + 24) = v9 & 1;
  *(a4 + 32) = v11;
  *(a4 + 40) = v12;
  return result;
}

unint64_t sub_21BC16738()
{
  result = qword_27CDB69B0;
  if (!qword_27CDB69B0)
  {
    v3 = type metadata accessor for NavigationManager(255);
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationManager, v3, v0, v1);
    atomic_store(result, &qword_27CDB69B0);
  }

  return result;
}

unint64_t sub_21BC16790()
{
  result = qword_27CDB70A8[0];
  if (!qword_27CDB70A8[0])
  {
    result = swift_getWitnessTable(byte_21BE368E8, &type metadata for HandleDeepLinksModifier, v0, v1);
    atomic_store(result, qword_27CDB70A8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_21BC16804(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21BC1684C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_21BC168A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21BC168F0(uint64_t *a1, int a2)
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

uint64_t sub_21BC16938(uint64_t result, int a2, int a3)
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

uint64_t sub_21BC169DC(void (*a1)(char *), uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a2;
  v31 = a5;
  v29 = a1;
  v12 = sub_21BE2754C();
  v27 = *(v12 - 8);
  v28 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a6;
  v15 = sub_21BE2946C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v26 - v20;

  if ((a4 & 1) == 0)
  {
    sub_21BE28FEC();
    v22 = sub_21BE27B2C();
    v26[1] = a7;
    v23 = v22;
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v27 + 8))(v14, v28);
  }

  sub_21BC58D4C(v29, v30, v31, v32, v19);

  v33 = a8;
  swift_getWitnessTable(MEMORY[0x277CE1550], v15, &v33);
  sub_21BD37338();
  v24 = *(v16 + 8);
  v24(v19, v15);
  sub_21BD37338();
  return (v24)(v21, v15);
}

uint64_t sub_21BC16CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v68 = a8;
  v59 = a7;
  v57 = a2;
  v64 = a9;
  v55 = a5;
  v13 = sub_21BE2946C();
  v61 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v58 = &v54 - v14;
  v62 = a6;
  v15 = sub_21BE2946C();
  v67 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v63 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v56 = &v54 - v19;
  MEMORY[0x28223BE20](v18);
  v60 = &v54 - v20;
  v21 = sub_21BE2754C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_21BE2946C();
  v66 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v65 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v54 - v28;

  if ((a4 & 1) == 0)
  {
    sub_21BE28FEC();
    v30 = sub_21BE27B2C();
    v54 = v21;
    v31 = v29;
    v32 = v25;
    v33 = a1;
    v34 = v13;
    v35 = v30;
    sub_21BE269DC();

    v13 = v34;
    a1 = v33;
    v25 = v32;
    v29 = v31;
    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v22 + 8))(v24, v54);
    a3 = v73;
  }

  swift_getKeyPath();
  v72[1] = a3;
  sub_21BC16738();
  sub_21BE25F1C();

  swift_beginAccess();
  sub_21BBA3854(a3 + 32, &v73, &qword_27CDB7278, &qword_21BE3A250);

  if (*(&v74 + 1))
  {
    v77[0] = v73;
    v77[1] = v74;
    v77[2] = v75;
    v78 = v76;
    sub_21BB3A35C(v77, &v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
    v36 = v58;
    v37 = v55;
    v38 = swift_dynamicCast();
    v39 = (*(*(v37 - 8) + 56))(v36, v38 ^ 1u, 1, v37);
    MEMORY[0x28223BE20](v39);
    v40 = v62;
    *(&v54 - 6) = v37;
    *(&v54 - 5) = v40;
    v41 = v68;
    *(&v54 - 4) = v59;
    *(&v54 - 3) = v41;
    v42 = v57;
    *(&v54 - 2) = a1;
    *(&v54 - 1) = v42;
    v43 = v56;
    sub_21BC13E5C(sub_21BC17C50, (&v54 - 8), MEMORY[0x277D84A98], v40, v44, v56);
    sub_21BC17C80(v77);
    (*(v61 + 8))(v36, v13);
    v69 = v41;
    swift_getWitnessTable(MEMORY[0x277CE1550], v15, &v69);
    v45 = v60;
    sub_21BD37338();
    v46 = v67;
    v47 = *(v67 + 8);
    v47(v43, v15);
    v48 = v63;
    sub_21BD37338();
    v47(v45, v15);
    v49 = v65;
    (*(v46 + 32))(v65, v48, v15);
    (*(v46 + 56))(v49, 0, 1, v15);
    sub_21BD36C90(v49, v29);
    v50 = *(v66 + 8);
    v50(v49, v25);
  }

  else
  {
    sub_21BB3A4CC(&v73, &qword_27CDB7278, &qword_21BE3A250);
    v51 = v65;
    (*(v67 + 56))(v65, 1, 1, v15);
    v72[0] = v68;
    swift_getWitnessTable(MEMORY[0x277CE1550], v15, v72);
    sub_21BD36C90(v51, v29);
    v50 = *(v66 + 8);
    v50(v51, v25);
  }

  v71 = v68;
  v52 = MEMORY[0x277CE1550];
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE1550], v15, &v71);
  swift_getWitnessTable(v52, v25, &WitnessTable);
  sub_21BD37338();
  return (v50)(v29, v25);
}

uint64_t sub_21BC174A0(uint64_t *a1, uint64_t a2, char a3)
{
  v5 = sub_21BE2754C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];

  if ((a3 & 1) == 0)
  {
    sub_21BE28FEC();
    v11 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  v12 = static AnyLinkDestination.path(fromString:)(v9, v10);
  sub_21BC55C18(v12);
}

uint64_t sub_21BC17610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  v7 = *(qword_280BD7CD0 + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_navigationPathSubject);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7160, &qword_21BE369A8);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDB7168, &unk_21BE369B0);
  *(a2 + *(v10 + 52)) = v7;
  v11 = (a2 + *(v10 + 56));
  *v11 = sub_21BC17B7C;
  v11[1] = v8;
}

unint64_t sub_21BC17798()
{
  result = qword_27CDB7130;
  if (!qword_27CDB7130)
  {
    result = swift_getWitnessTable(MEMORY[0x277CDDA48], MEMORY[0x277CDDA60], v0, v1);
    atomic_store(result, &qword_27CDB7130);
  }

  return result;
}

unint64_t sub_21BC177EC()
{
  result = qword_27CDB7140;
  if (!qword_27CDB7140)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyLinkDestination, &type metadata for AnyLinkDestination, v0, v1);
    atomic_store(result, &qword_27CDB7140);
  }

  return result;
}

unint64_t sub_21BC17840()
{
  result = qword_27CDB7150;
  if (!qword_27CDB7150)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7148, &unk_21BE36990);
    v4[0] = MEMORY[0x277CE11C0];
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27CDB7150);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  return swift_deallocObject();
}

uint64_t sub_21BC17954@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[6];
  v5 = v2[8];
  a2[3] = v2[3];
  a2[4] = v4;
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v5(a1);
}

uint64_t sub_21BC179B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BC17AF4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21BC179F0(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7158, &qword_21BE369A0);
  sub_21BE2854C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  return sub_21BE2854C();
}

uint64_t objectdestroy_21Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BC17AF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7158, &qword_21BE369A0);
  MEMORY[0x21CF036E0](&v4, v0);
  v1 = v4;
  if (v4 == 2)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    MEMORY[0x21CF036E0](&v4, v2);
    v1 = v4;
  }

  return v1 & 1;
}

unint64_t sub_21BC17B88()
{
  result = qword_27CDB7270;
  if (!qword_27CDB7270)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CDB7168, &unk_21BE369B0);
    result = swift_getWitnessTable(MEMORY[0x277CDDB50], v3, v0, v1);
    atomic_store(result, &qword_27CDB7270);
  }

  return result;
}

uint64_t sub_21BC17CEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6E20, &unk_21BE36168);
  __swift_allocate_value_buffer(v0, qword_27CDD4198);
  __swift_project_value_buffer(v0, qword_27CDD4198);
  return sub_21BE26B5C();
}

uint64_t sub_21BC17D88()
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  return sub_21BE27DBC();
}

uint64_t sub_21BC17E58()
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  return sub_21BE27DBC();
}

uint64_t sub_21BC17F34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7290, &qword_21BE36C40);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7298, &qword_21BE36C48);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB72A0, &unk_21BE36C50);
  v8 = sub_21BE26AFC();
  *(swift_allocObject() + 16) = xmmword_21BE32770;
  sub_21BE26B0C();
  v9 = MEMORY[0x277CE1A00];
  sub_21BE26ABC();

  v13 = v8;
  v14 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF01C90](v7, v4, OpaqueTypeConformance2);
  v13 = v4;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v11 = sub_21BE26ADC();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v11;
}

unint64_t sub_21BC18208()
{
  result = qword_27CDB7288;
  if (!qword_27CDB7288)
  {
    result = swift_getWitnessTable(byte_21BE36BA4, &type metadata for FamilyTip, v0, v1);
    atomic_store(result, &qword_27CDB7288);
  }

  return result;
}

uint64_t sub_21BC1825C()
{
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_21BE289CC();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1 withConfiguration:0];

  if (v3)
  {

    return sub_21BE2836C();
  }

  else
  {
    result = sub_21BE2978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BC1837C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

char *MultipleInviteViewModel.deinit()
{
  swift_beginAccess();
  *(v0 + 13) = MEMORY[0x277D84FA0];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  v1 = OBJC_IVAR____TtC14FamilyCircleUI23MultipleInviteViewModel__invites;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB72B0, &qword_21BE36C60);
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  return v0;
}

uint64_t MultipleInviteViewModel.__deallocating_deinit()
{
  swift_beginAccess();
  *(v0 + 13) = MEMORY[0x277D84FA0];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  v1 = OBJC_IVAR____TtC14FamilyCircleUI23MultipleInviteViewModel__invites;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB72B0, &qword_21BE36C60);
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  return swift_deallocClassInstance();
}

uint64_t sub_21BC18588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_21BE28D7C();
  v4[4] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_21BC18620, v6, v5);
}

uint64_t sub_21BC18620()
{
  v1 = v0[3];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (v4)
  {
    v5 = v4;
    v6 = sub_21BE290EC();
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v6;

  sub_21BE26CBC();
  v7 = v1[5];
  v8 = v1[6];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v7);
  v9 = (*(v8 + 8))(v7, v8);
  v10 = [v9 me];

  if (v10)
  {
  }

  *(v0[3] + 96) = v10 != 0;
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_21BC187C4;

  return sub_21BC188E4();
}

uint64_t sub_21BC187C4()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_21BBDBEE0, v3, v2);
}

uint64_t sub_21BC188E4()
{
  v1[5] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  sub_21BE28D7C();
  v1[15] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC18AB4, v6, v5);
}

uint64_t sub_21BC18AB4()
{
  v1 = v0[14];
  v13 = v0[12];
  v14 = v0[11];
  v16 = v0[10];
  v17 = v0[13];
  v2 = v0[8];
  v15 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];

  v6 = v5[5];
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_1Tm(v5 + 2, v6);
  (*(v7 + 32))(v6, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  sub_21BE2635C();
  swift_allocObject();
  v9 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180, MEMORY[0x277CBCEC8]);
  sub_21BB3CCDC();
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70, MEMORY[0x277CBCBE0]);
  sub_21BE26CFC();
  (*(v3 + 8))(v2, v4);
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &unk_21BE36D98;
  v10[4] = v8;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0, MEMORY[0x277CBCC18]);

  sub_21BE26D1C();

  (*(v16 + 8))(v14, v15);
  (*(v17 + 8))(v1, v13);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BC18DB8(uint64_t a1, uint64_t a2)
{
  v2[18] = a2;
  v3 = sub_21BE26A4C();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  sub_21BE28D7C();
  v2[22] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC18EAC, v5, v4);
}

uint64_t sub_21BC18EAC()
{
  v21 = v0;

  sub_21BE260FC();
  v1 = sub_21BE26A2C();
  v2 = sub_21BE28FCC();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_21BB3D81C(0xD000000000000018, 0x800000021BE581A0, &v20);
    _os_log_impl(&dword_21BB35000, v1, v2, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x21CF05C50](v8, -1, -1);
    MEMORY[0x21CF05C50](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_21BB3A35C(Strong + 16, (v0 + 2));

    v10 = v0[5];
    v11 = v0[6];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v10);
    v12 = (*(v11 + 8))(v10, v11);
    if (v12)
    {
      v13 = v12;
      v14 = sub_21BE290EC();
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  if (swift_weakLoadStrong() && (swift_getKeyPath(), swift_getKeyPath(), sub_21BE26CAC(), , , , v15 = v0[16], v16 = , v17 = sub_21BC20844(v16, v15), , , (v17 & 1) != 0) || (swift_beginAccess(), !swift_weakLoadStrong()))
  {
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v0[17] = v14;
    sub_21BE26CBC();
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_21BC191C8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MultipleInviteViewModel(0);
  result = sub_21BE26C0C();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for MultipleInviteViewModel(uint64_t a1)
{
  result = qword_27CDB72B8;
  if (!qword_27CDB72B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BC1925C(uint64_t a1)
{
  sub_21BC19328(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21BC19328(uint64_t a1)
{
  if (!qword_27CDB72C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB72D0, &qword_21BE36D30);
    v1 = sub_21BE26CCC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB72C8);
    }
  }
}

uint64_t sub_21BC1938C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v4;
  return result;
}

uint64_t sub_21BC1940C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t sub_21BC19488(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BC18DB8(a1, v1);
}

unint64_t sub_21BC19520()
{
  result = qword_280BD6970;
  if (!qword_280BD6970)
  {
    v3 = sub_21BC19578();
    result = swift_getWitnessTable(MEMORY[0x277D85380], v3, v0, v1);
    atomic_store(result, &qword_280BD6970);
  }

  return result;
}

unint64_t sub_21BC19578()
{
  result = qword_280BD6980;
  if (!qword_280BD6980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BD6980);
  }

  return result;
}

void sub_21BC195C4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_27CDD41B0 = v1 == 1;
}

uint64_t sub_21BC19628()
{
  result = sub_21BE28A0C();
  qword_27CDD41B8 = result;
  unk_27CDD41C0 = v1;
  return result;
}

void sub_21BC19658()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 model];

  v2 = sub_21BE28A0C();
  v4 = v3;

  qword_27CDD41C8 = v2;
  unk_27CDD41D0 = v4;
}

FamilyCircleUI::ScrollNavKey_optional __swiftcall ScrollNavKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21BE2980C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ScrollNavKey.rawValue.getter()
{
  v1 = 0x64756F6C4369;
  v2 = 0x6573616863727550;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461636F4CLL;
  }

  if (*v0)
  {
    v1 = 0x7069726373627553;
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

void sub_21BC197F8(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x64756F6C4369;
  v4 = 0x6573616863727550;
  if (*v1 != 2)
  {
    v4 = 0x6E6F697461636F4CLL;
  }

  if (*v1)
  {
    v3 = 0x7069726373627553;
    v2 = 0xED0000736E6F6974;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xEF676E6972616853;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_21BC1989C()
{
  result = qword_27CDB72D8;
  if (!qword_27CDB72D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollNavKey, &type metadata for ScrollNavKey, v0, v1);
    atomic_store(result, &qword_27CDB72D8);
  }

  return result;
}

uint64_t sub_21BC198F0()
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC199D4(uint64_t a1)
{
  sub_21BE28ABC();
}

uint64_t sub_21BC19AA4(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

unint64_t sub_21BC19B88()
{
  result = qword_27CDB72E0;
  if (!qword_27CDB72E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollNavKey, &type metadata for ScrollNavKey, v0, v1);
    atomic_store(result, &qword_27CDB72E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChecklistRole(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ChecklistRole(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t OnboardingAnalyticsLogger.AnalyticEventType.hashValue.getter()
{
  v1 = *v0;
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](v1);
  return sub_21BE29B0C();
}

uint64_t static OnboardingAnalyticsLogger.logAnalyticsEvent(ageRangeContext:eventType:)(uint64_t a1, _BYTE *a2)
{
  v3 = *(a1 + 8);
  *(v2 + 32) = *(a1 + 16);
  *(v2 + 28) = *a2;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  *v5 = v2;
  v5[1] = sub_21BC19E78;

  return FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)(v2 + 16, v4);
}

uint64_t sub_21BC19E78()
{

  return MEMORY[0x2822009F8](sub_21BC19F74, 0, 0);
}

uint64_t sub_21BC19F74()
{
  v14 = v0;
  v1 = *(v0 + 28);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = *(v0 + 26);
  v5 = *(v0 + 27);
  if (v1 > 1)
  {
    v8 = *(v0 + 16);
    v9 = v2;
    v10 = v3;
    v11 = v4;
    v12 = v5;
    if (v1 == 2)
    {
      sub_21BD5DF78(&v8);
    }

    else
    {
      sub_21BD5DF88(&v8);
    }
  }

  else if (*(v0 + 28))
  {
    v8 = *(v0 + 16);
    v9 = v2;
    v10 = v3;
    v11 = v4;
    v12 = v5;
    sub_21BD5DF68(&v8);
  }

  else
  {
    if (*(v0 + 32))
    {
      v8 = *(v0 + 16);
      v9 = v2;
      v10 = v3;
      v11 = v4;
      v12 = v5;
      v13 = 0;
    }

    else
    {
      v8 = *(v0 + 16);
      v9 = v2;
      v10 = v3;
      v11 = v4;
      v12 = v5;
      v13 = 1;
    }

    _s14FamilyCircleUI0A25DeclaredAgeRangeAnalyticsC33sendOnboardingViewNavigationEvent4with4viewyAA0adefG7PackageV_AA0efgiJ0OtFZ_0(&v8, &v13);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t static OnboardingAnalyticsLogger.logNavigationEvent(ageRangeContext:view:)(uint64_t a1, _BYTE *a2)
{
  v3 = *(a1 + 8);
  *(v2 + 32) = *(a1 + 16);
  *(v2 + 28) = *a2;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  *v5 = v2;
  v5[1] = sub_21BC1A15C;

  return FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)(v2 + 16, v4);
}

uint64_t sub_21BC1A15C()
{

  return MEMORY[0x2822009F8](sub_21BC1A258, 0, 0);
}

uint64_t sub_21BC1A258()
{
  v15 = v0;
  v1 = *(v0 + 28);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = *(v0 + 26);
  v5 = *(v0 + 27);
  if (v1 >= 2)
  {
    v9 = *(v0 + 16);
    v10 = v2;
    v11 = v3;
    v12 = v4;
    v13 = v5;
    if (v1 == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    if (*(v0 + 32))
    {
      v9 = *(v0 + 16);
      v10 = v2;
      v11 = v3;
      v12 = v4;
      v13 = v5;
      v14 = 0;
      goto LABEL_9;
    }

    v9 = *(v0 + 16);
    v10 = v2;
    v11 = v3;
    v12 = v4;
    v13 = v5;
    v6 = 1;
  }

  v14 = v6;
LABEL_9:
  _s14FamilyCircleUI0A25DeclaredAgeRangeAnalyticsC33sendOnboardingViewNavigationEvent4with4viewyAA0adefG7PackageV_AA0efgiJ0OtFZ_0(&v9, &v14);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t static OnboardingAnalyticsLogger.logChooseHowToShareEvent(ageRangeContext:option:)(uint64_t a1, _BYTE *a2)
{
  v3 = *(a1 + 8);
  *(v2 + 28) = *a2;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_21BC1A40C;

  return FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)(v2 + 16, v4);
}

uint64_t sub_21BC1A40C()
{

  return MEMORY[0x2822009F8](sub_21BC1A508, 0, 0);
}

uint64_t sub_21BC1A508()
{
  v12 = v0;
  v1 = *(v0 + 28);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = *(v0 + 27);
  v7 = *(v0 + 16);
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v1;
  sub_21BD5DF98(&v7, &v11);
  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_21BC1A598()
{
  result = qword_27CDB72E8;
  if (!qword_27CDB72E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnboardingAnalyticsLogger.AnalyticEventType, &type metadata for OnboardingAnalyticsLogger.AnalyticEventType, v0, v1);
    atomic_store(result, &qword_27CDB72E8);
  }

  return result;
}

uint64_t sub_21BC1A60C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21BC1A654(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_21BC1A6B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x44495344746C61;
  }

  else
  {
    v3 = 0x6C6562616CLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x44495344746C61;
  }

  else
  {
    v5 = 0x6C6562616CLL;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
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
    v8 = sub_21BE2995C();
  }

  return v8 & 1;
}

uint64_t sub_21BC1A754()
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC1A7D4(uint64_t a1)
{
  sub_21BE28ABC();
}

uint64_t sub_21BC1A840(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC1A8BC@<X0>(char *a2@<X8>)
{
  v3 = sub_21BE2980C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_21BC1A91C(uint64_t *a1@<X8>)
{
  v2 = 0x6C6562616CLL;
  if (*v1)
  {
    v2 = 0x44495344746C61;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21BC1A958()
{
  if (*v0)
  {
    return 0x44495344746C61;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_21BC1A990@<X0>(char *a3@<X8>)
{
  v4 = sub_21BE2980C();

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

uint64_t sub_21BC1A9F4(uint64_t a1)
{
  v2 = sub_21BC1AFC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC1AA30(uint64_t a1)
{
  v2 = sub_21BC1AFC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BC1AA6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v31 = *(v1 + 32);
  v4 = qword_280BD83C0;

  if (v4 != -1)
  {
    swift_once();
  }

  type metadata accessor for FamilyPictureStore(0);
  sub_21BC1AD2C(&qword_27CDB5CE0, type metadata accessor for FamilyPictureStore);

  v5 = sub_21BE270CC();
  v29 = v6;
  v30 = v5;
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for FamilyCircleStore(0);
  sub_21BC1AD2C(&qword_27CDB5C40, type metadata accessor for FamilyCircleStore);

  v7 = sub_21BE270CC();
  v27 = v8;
  v28 = v7;
  sub_21BB41FA4();
  v9 = sub_21BE27DBC();
  v11 = v10;
  v13 = v12;
  sub_21BE2833C();
  v14 = sub_21BE27D4C();
  v16 = v15;
  v18 = v17;

  sub_21BBC7C7C(v9, v11, v13 & 1);

  sub_21BE27CAC();
  v19 = sub_21BE27D9C();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_21BBC7C7C(v14, v16, v18 & 1);

  *a1 = v31;
  *(a1 + 8) = v3;
  *(a1 + 16) = v19;
  *(a1 + 24) = v21;
  *(a1 + 32) = v23 & 1;
  *(a1 + 40) = v25;
  *(a1 + 48) = v30;
  *(a1 + 56) = v29;
  *(a1 + 64) = v28;
  *(a1 + 72) = v27;
  return result;
}

double sub_21BC1ACC0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_21BC1AD80(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_21BC1AD04@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_21BC1AD2C(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    v4 = a2(255);
    result = swift_getWitnessTable(protocol conformance descriptor for AsyncStore<A>, v4);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BC1AD80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB72F0, &qword_21BE370E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v9 = sub_21BE29B3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v12 = v10;
  v22 = a2;
  v23 = v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BC1AFC0();
  sub_21BE29B4C();
  v25 = 0;
  v13 = sub_21BE2986C();
  v15 = v14;
  v21 = v13;
  v24 = 1;
  v16 = sub_21BE2986C();
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v19 = v22;
  *v22 = v23;
  v19[1] = v12;
  v19[2] = v21;
  v19[3] = v15;
  v19[4] = v16;
  v19[5] = v18;
  return result;
}

unint64_t sub_21BC1AFC0()
{
  result = qword_27CDB72F8;
  if (!qword_27CDB72F8)
  {
    result = swift_getWitnessTable(a9dF, &type metadata for FamilyMemberLabelRowRUI.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB72F8);
  }

  return result;
}

unint64_t sub_21BC1B024()
{
  result = qword_27CDB7300;
  if (!qword_27CDB7300)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7308, &qword_21BE370F8);
    result = swift_getWitnessTable(aYF, v3, v0, v1);
    atomic_store(result, &qword_27CDB7300);
  }

  return result;
}

unint64_t sub_21BC1B08C()
{
  result = qword_27CDB7310;
  if (!qword_27CDB7310)
  {
    result = swift_getWitnessTable(byte_21BE371C8, &type metadata for FamilyMemberLabelRowRUI.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB7310);
  }

  return result;
}

unint64_t sub_21BC1B0E4()
{
  result = qword_27CDB7318;
  if (!qword_27CDB7318)
  {
    result = swift_getWitnessTable(byte_21BE37100, &type metadata for FamilyMemberLabelRowRUI.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB7318);
  }

  return result;
}

unint64_t sub_21BC1B13C()
{
  result = qword_27CDB7320;
  if (!qword_27CDB7320)
  {
    result = swift_getWitnessTable(byte_21BE37128, &type metadata for FamilyMemberLabelRowRUI.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB7320);
  }

  return result;
}

uint64_t sub_21BC1B190()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BC1B204(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BC1B450();
}

uint64_t sub_21BC1B2B4(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BC1B34C, v4, v3);
}

uint64_t sub_21BC1B34C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_21BBCDD2C;

    return sub_21BBCB004();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_21BC1B450()
{
  v1[17] = v0;
  v2 = type metadata accessor for ParentalControlDataItem(0);
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v3 = sub_21BE26A4C();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = sub_21BE28D7C();
  v1[30] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v1[31] = v5;
  v1[32] = v4;

  return MEMORY[0x2822009F8](sub_21BC1B604, v5, v4);
}

uint64_t sub_21BC1B604()
{
  v1 = v0[17];
  v3 = *(v1 + qword_27CDB63F0);
  v2 = *(v1 + qword_27CDB63F0 + 8);
  type metadata accessor for FamilySignpost(0);
  swift_allocObject();

  v0[33] = sub_21BC84D18(v3, v2, "computeItems", 12, 2u);
  sub_21BB3A35C(v1 + qword_27CDB7330, (v0 + 2));
  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_21BC1B72C;

  return sub_21BE19D18((v0 + 2));
}

uint64_t sub_21BC1B72C(uint64_t a1)
{
  v3 = *v2;
  v3[35] = a1;
  v3[36] = v1;

  __swift_destroy_boxed_opaque_existential_0Tm(v3 + 2);
  v4 = v3[31];
  v5 = v3[32];
  if (v1)
  {
    v6 = sub_21BC1CC40;
  }

  else
  {
    v6 = sub_21BC1B848;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21BC1B848(uint64_t a1)
{
  v2 = sub_21BE290DC();
  v1[37] = v2;
  if (v2 >> 62)
  {
    v4 = sub_21BE2951C();
    v1[38] = v4;
    if (v4)
    {
LABEL_3:
      v1[40] = MEMORY[0x277D84F90];
      v1[41] = 0;
      v5 = v1[37];
      v1[39] = v1[36];
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x21CF047C0](0);
      }

      else
      {
        if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x2822009F8](v4, v5, v3);
        }

        v6 = *(v5 + 32);
      }

      v1[42] = v6;
      v1[43] = 1;
      v7 = v1[28];
      v8 = sub_21BE25D1C();
      (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
      v4 = sub_21BC1BA44;
      v5 = 0;
      v3 = 0;

      return MEMORY[0x2822009F8](v4, v5, v3);
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v1[38] = v4;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v9 = v1[35];

  sub_21BC852D8();

  v10 = v1[1];
  v11 = MEMORY[0x277D84F90];

  return v10(v11);
}

uint64_t sub_21BC1BA44(uint64_t a1)
{
  *(v1 + 352) = sub_21BE28D6C();
  v3 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC1BAD0, v3, v2);
}

uint64_t sub_21BC1BAD0()
{

  return MEMORY[0x2822009F8](sub_21BC1BB38, 0, 0);
}

uint64_t sub_21BC1BB38(uint64_t a1)
{
  *(v1 + 360) = sub_21BE28D6C();
  v3 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC1BBC4, v3, v2);
}

uint64_t sub_21BC1BBC4()
{

  swift_beginAccess();
  v1 = qword_27CDB9740;
  *(v0 + 368) = qword_27CDB9740;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_21BC1BC58, 0, 0);
}

uint64_t sub_21BC1BC58(uint64_t a1)
{
  *(v1 + 376) = sub_21BE28D6C();
  v3 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC1BCE4, v3, v2);
}

uint64_t sub_21BC1BCE4()
{
  v1 = *(v0 + 368);

  if (v1)
  {
    v2 = *(v0 + 368);
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v2;
    sub_21BE26CAC();

    v4 = *(v0 + 112);
    if (*(v4 + 16) && (v5 = sub_21BBB31A4(*(v0 + 336)), (v6 & 1) != 0))
    {
      v7 = *(*(v4 + 56) + v5);

      v8 = *(v0 + 368);
      if (v7)
      {
        v9 = *(v0 + 336);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21BE26CAC();

        v10 = *(v0 + 120);
        *(v0 + 128) = v9;
        v11 = swift_task_alloc();
        *(v11 + 16) = v0 + 128;
        v12 = sub_21BC9DAC4(sub_21BC1E390, v11, v10);

        goto LABEL_8;
      }
    }

    else
    {
      v13 = *(v0 + 368);
    }
  }

  v12 = 0;
LABEL_8:
  *(v0 + 424) = v12 & 1;

  return MEMORY[0x2822009F8](sub_21BC1BEB4, 0, 0);
}

uint64_t sub_21BC1BEB4()
{
  v1 = *(v0 + 336);
  *(v0 + 425) = [v1 hasAskToBuyEnabled];
  *(v0 + 426) = sub_21BC52A54(v1) & 1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_21BC1BF44, 0, 0);
}

uint64_t sub_21BC1BF44()
{
  v1 = [*(v0 + 336) dsid];
  *(v0 + 384) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_21BE261EC();
    v5 = v4;
    v6 = swift_allocObject();
    *(v0 + 392) = v6;
    *(v6 + 16) = v2;
    v7 = v2;
    v8 = swift_task_alloc();
    *(v0 + 400) = v8;
    *v8 = v0;
    v8[1] = sub_21BC1C0D4;
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);

    return MEMORY[0x2821372C0](v9, v3, v5, &unk_21BE37418, v6, v10);
  }

  else
  {
    sub_21BC1E158();
    v11 = swift_allocError();
    *v12 = 1;
    swift_willThrow();
    *(v0 + 416) = v11;
    v13 = *(v0 + 248);
    v14 = *(v0 + 256);

    return MEMORY[0x2822009F8](sub_21BC1C800, v13, v14);
  }
}

uint64_t sub_21BC1C0D4()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_21BC1C5A8;
  }

  else
  {

    v2 = sub_21BC1C1F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BC1C1F0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return MEMORY[0x2822009F8](sub_21BC1C254, v1, v2);
}

uint64_t sub_21BC1C254()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  sub_21BB3A4CC(v2, &qword_27CDB9720, &unk_21BE39F00);
  sub_21BC1E320(v1, v2);
  v3 = *(v0 + 408);
  v4 = *(v0 + 144);
  v5 = v4[5];
  v6 = *(v0 + 328);
  v7 = *(v0 + 336);
  v8 = *(v0 + 224);
  if ((*(v0 + 426) & 1) == 0 && (*(v0 + 425) & 1) == 0 && (*(v0 + 424) & 1) == 0)
  {
    v9 = (v0 + 160);
    v10 = *(v0 + 160);
    sub_21BC1E1AC(v8, &v10[v5]);
    v10[v4[8]] = 2;
    *v10 = 0;
    *&v10[v4[6]] = v7;
    *&v10[v4[7]] = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v0 + 320);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v9 = (v0 + 168);
  v13 = *(v0 + 168);
  sub_21BC1E1AC(v8, &v13[v5]);
  v13[v4[8]] = 2;
  *v13 = 1;
  *&v13[v4[6]] = v7;
  *&v13[v4[7]] = v6;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v0 + 320);
  if ((v14 & 1) == 0)
  {
LABEL_5:
    v12 = sub_21BBBD1C8(0, v12[2] + 1, 1, v12);
  }

LABEL_7:
  v16 = v12[2];
  v15 = v12[3];
  if (v16 >= v15 >> 1)
  {
    v12 = sub_21BBBD1C8((v15 > 1), v16 + 1, 1, v12);
  }

  v17 = *v9;
  v18 = *(v0 + 344);
  v19 = *(v0 + 304);
  v20 = *(v0 + 224);
  v21 = *(v0 + 152);

  sub_21BB3A4CC(v20, &qword_27CDB9720, &unk_21BE39F00);
  v12[2] = v16 + 1;
  v22 = sub_21BC1E21C(v17, v12 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v16);
  if (v18 != v19)
  {
    v27 = *(v0 + 344);
    *(v0 + 320) = v12;
    *(v0 + 328) = v27;
    *(v0 + 312) = v3;
    v28 = *(v0 + 296);
    if ((v28 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x21CF047C0](v27);
    }

    else
    {
      if (v27 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v22 = *(v28 + 8 * v27 + 32);
    }

    *(v0 + 336) = v22;
    *(v0 + 344) = v27 + 1;
    if (!__OFADD__(v27, 1))
    {
      v29 = *(v0 + 224);
      v30 = sub_21BE25D1C();
      (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
      v22 = sub_21BC1BA44;
      v28 = 0;
      v23 = 0;

      return MEMORY[0x2822009F8](v22, v28, v23);
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return MEMORY[0x2822009F8](v22, v28, v23);
  }

  v24 = *(v0 + 280);

  sub_21BC852D8();

  v25 = *(v0 + 8);

  return v25(v12);
}

uint64_t sub_21BC1C5A8()
{
  v23 = v0;
  v1 = v0[51];

  sub_21BE261AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21BE32770;
  swift_getErrorValue();
  v3 = v1;
  v4 = v1;
  v5 = sub_21BE29A5C();
  v7 = v6;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_21BBBEFE8();
  *(v2 + 32) = v5;
  *(v2 + 40) = v7;
  v8 = sub_21BE28A2C();
  v10 = v9;
  v11 = sub_21BE26A2C();
  v12 = sub_21BE28FDC();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[51];
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    v17 = sub_21BB3D81C(v8, v10, &v22);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_21BB35000, v11, v12, "%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x21CF05C50](v16, -1, -1);
    MEMORY[0x21CF05C50](v15, -1, -1);
  }

  else
  {
  }

  v18 = v0[48];
  (*(v0[23] + 8))(v0[25], v0[22]);
  swift_willThrow();

  v0[52] = v0[51];
  v19 = v0[31];
  v20 = v0[32];

  return MEMORY[0x2822009F8](sub_21BC1C800, v19, v20);
}

uint64_t sub_21BC1C800(uint64_t a1)
{
  v2 = *(v1 + 416);
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FDC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 416);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_21BB35000, v4, v5, "Unable to get last modified date because of %@", v8, 0xCu);
    sub_21BB3A4CC(v9, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  else
  {
  }

  (*(*(v1 + 184) + 8))(*(v1 + 192), *(v1 + 176));
  v12 = *(v1 + 144);
  v13 = v12[5];
  v14 = *(v1 + 328);
  v15 = *(v1 + 336);
  v16 = *(v1 + 224);
  if ((*(v1 + 426) & 1) == 0 && (*(v1 + 425) & 1) == 0 && (*(v1 + 424) & 1) == 0)
  {
    v17 = (v1 + 160);
    v18 = *(v1 + 160);
    sub_21BC1E1AC(v16, &v18[v13]);
    v18[v12[8]] = 2;
    *v18 = 0;
    *&v18[v12[6]] = v15;
    *&v18[v12[7]] = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v1 + 320);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v17 = (v1 + 168);
  v21 = *(v1 + 168);
  sub_21BC1E1AC(v16, &v21[v13]);
  v21[v12[8]] = 2;
  *v21 = 1;
  *&v21[v12[6]] = v15;
  *&v21[v12[7]] = v14;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v1 + 320);
  if ((v22 & 1) == 0)
  {
LABEL_8:
    v20 = sub_21BBBD1C8(0, v20[2] + 1, 1, v20);
  }

LABEL_10:
  v24 = v20[2];
  v23 = v20[3];
  if (v24 >= v23 >> 1)
  {
    v20 = sub_21BBBD1C8((v23 > 1), v24 + 1, 1, v20);
  }

  v25 = *v17;
  v26 = *(v1 + 344);
  v27 = *(v1 + 304);
  v28 = *(v1 + 224);
  v29 = *(v1 + 152);

  sub_21BB3A4CC(v28, &qword_27CDB9720, &unk_21BE39F00);
  v20[2] = v24 + 1;
  v30 = sub_21BC1E21C(v25, v20 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24);
  if (v26 != v27)
  {
    v35 = *(v1 + 344);
    *(v1 + 320) = v20;
    *(v1 + 328) = v35;
    *(v1 + 312) = 0;
    v36 = *(v1 + 296);
    if ((v36 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x21CF047C0](v35);
    }

    else
    {
      if (v35 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v30 = *(v36 + 8 * v35 + 32);
    }

    *(v1 + 336) = v30;
    *(v1 + 344) = v35 + 1;
    if (!__OFADD__(v35, 1))
    {
      v37 = *(v1 + 224);
      v38 = sub_21BE25D1C();
      (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
      v30 = sub_21BC1BA44;
      v36 = 0;
      v31 = 0;

      return MEMORY[0x2822009F8](v30, v36, v31);
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return MEMORY[0x2822009F8](v30, v36, v31);
  }

  v32 = *(v1 + 280);

  sub_21BC852D8();

  v33 = *(v1 + 8);

  return v33(v20);
}

uint64_t sub_21BC1CC40()
{

  sub_21BC852D8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BC1CD08()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBCB004();
}

void sub_21BC1CDCC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_21BE28DAC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_21BE28D7C();
  v6 = a1;
  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_21BBA932C(0, 0, v4, &unk_21BE374C8, v8);
}

uint64_t sub_21BC1CEFC()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDB7328));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDB7330));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDB7338));
  v1 = qword_27CDB7340;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB73A0, &unk_21BE506C0);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_21BC1CFA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParentalControlItemProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BC1CFD8(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDB7328));
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDB7330));
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDB7338));
  v2 = qword_27CDB7340;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB73A0, &unk_21BE506C0);
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

void sub_21BC1D0A0(uint64_t a1)
{
  sub_21BC1D140(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_21BC1D140(uint64_t a1)
{
  if (!qword_27CDB7358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7360, &unk_21BE37290);
    v1 = sub_21BE26CCC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB7358);
    }
  }
}

void sub_21BC1D1F4(uint64_t a1)
{
  sub_21BC1D2A0(319);
  if (v1 <= 0x3F)
  {
    sub_21BBE66D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21BC1D2A0(uint64_t a1)
{
  if (!qword_27CDB7378)
  {
    sub_21BE25D1C();
    v1 = sub_21BE2946C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB7378);
    }
  }
}

uint64_t sub_21BC1D2F8(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_21BE26CBC();
}

unint64_t sub_21BC1D364()
{
  type metadata accessor for ParentalControlDataItem(0);
  sub_21BE2992C();
  v0 = sub_21BE291AC();
  v2 = v1;

  MEMORY[0x21CF03CA0](v0, v2);

  return 0xD000000000000013;
}

uint64_t sub_21BC1D414(char *a1)
{
  v3 = sub_21BE25E5C();
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21BE25E6C();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  v13 = sub_21BE25D1C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v39 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - v20;
  v22 = type metadata accessor for ParentalControlDataItem(0);
  sub_21BC1E1AC(v1 + *(v22 + 20), v12);
  v23 = v14[6];
  if (v23(v12, 1, v13) == 1)
  {
    sub_21BB3A4CC(v12, &qword_27CDB9720, &unk_21BE39F00);
  }

  else
  {
    v35 = a1;
    v33 = v14[4];
    v33(v21, v12, v13);
    v36 = v19;
    sub_21BE25D0C();
    v34 = v23;
    v24 = v37;
    sub_21BE25E4C();
    v25 = v42;
    v26 = v38;
    (*(v42 + 104))(v38, *MEMORY[0x277CC9998], v3);
    v35 = v21;
    sub_21BE25E3C();
    (*(v25 + 8))(v26, v3);
    v27 = v34;
    (*(v40 + 8))(v24, v41);
    if (v27(v10, 1, v13) == 1)
    {
      v28 = v39;
      sub_21BE25C8C();
      if (v27(v10, 1, v13) != 1)
      {
        sub_21BB3A4CC(v10, &qword_27CDB9720, &unk_21BE39F00);
      }
    }

    else
    {
      v28 = v39;
      v33(v39, v10, v13);
    }

    v29 = v36;
    v30 = sub_21BE25CBC();
    v31 = v14[1];
    v31(v28, v13);
    v31(v29, v13);
    v31(v35, v13);
    if (v30)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_21BC1D89C(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BC1D364();
  sub_21BE28ABC();

  sub_21BC5C62C(*(v1 + *(a1 + 32)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC1D930(uint64_t a1, uint64_t a2)
{
  sub_21BC1D364();
  sub_21BE28ABC();

  sub_21BC5C62C(*(v2 + *(a2 + 32)));
  sub_21BE28ABC();
}

uint64_t sub_21BC1D9B8(uint64_t a1, uint64_t a2)
{
  sub_21BE29ACC();
  sub_21BC1D364();
  sub_21BE28ABC();

  sub_21BC5C62C(*(v2 + *(a2 + 32)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC1DA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BC1D364();
  v8 = v7;
  if (v6 == sub_21BC1D364() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_21BE2995C();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v12 = *(a3 + 32);
  v13 = *(a2 + v12);
  v14 = sub_21BC5C62C(*(a1 + v12));
  v16 = v15;
  if (v14 == sub_21BC5C62C(v13) && v16 == v17)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BE2995C();
  }

  return v11 & 1;
}

unint64_t sub_21BC1DB5C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BC1D364();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21BC1DBCC(uint64_t a1)
{
  *(a1 + 8) = sub_21BC1DC50(&qword_27CDB7388, type metadata accessor for ParentalControlDataItem, byte_21BE37318);
  result = sub_21BC1DC50(&qword_27CDB7390, type metadata accessor for ParentalControlDataItem, byte_21BE372B8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BC1DC50(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21BC1DCB4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ParentalControlDataItem(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BC1E044(v1, v5);
  v6 = type metadata accessor for ParentalControlView(0);
  v7 = (a1 + v6[5]);
  type metadata accessor for FamilyChecklistStore();
  sub_21BC1DC50(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);
  *v7 = sub_21BE2727C();
  v7[1] = v8;
  v9 = v6[6];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(a1 + v9) = [objc_opt_self() bundleForClass_];
  v11 = v6[8];
  if (qword_280BD83C0 != -1)
  {
    swift_once();
  }

  v12 = (a1 + v11);
  type metadata accessor for FamilyPictureStore(0);
  sub_21BC1DC50(&qword_27CDB5CE0, type metadata accessor for FamilyPictureStore, protocol conformance descriptor for AsyncStore<A>);

  *v12 = sub_21BE270CC();
  v12[1] = v13;
  sub_21BC1E044(v5, a1);
  v14 = *&v5[*(v3 + 24)];
  sub_21BC1E0A8(v5);
  type metadata accessor for AgeBasedPresetFlow();
  result = swift_allocObject();
  *(result + 16) = v14;
  *(a1 + v6[7]) = result;
  return result;
}

uint64_t sub_21BC1DEC8(uint64_t a1)
{
  *(a1 + 8) = sub_21BC1DC50(&qword_27CDB7398, type metadata accessor for ParentalControlItemProvider, byte_21BE34830);
  result = sub_21BC1DC50(&qword_27CDB5FE0, type metadata accessor for ParentalControlItemProvider, byte_21BE34878);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BC1DF4C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v4;
  return result;
}

uint64_t sub_21BC1DFCC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_21BE26CBC();
}

uint64_t sub_21BC1E044(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParentalControlDataItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC1E0A8(uint64_t a1)
{
  v2 = type metadata accessor for ParentalControlDataItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BC1E158()
{
  result = qword_27CDB73A8;
  if (!qword_27CDB73A8)
  {
    result = swift_getWitnessTable(aY_0, &type metadata for ParentalControlError, v0, v1);
    atomic_store(result, &qword_27CDB73A8);
  }

  return result;
}

uint64_t sub_21BC1E1AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC1E21C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParentalControlDataItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC1E280(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBA6A64;

  return sub_21BC5228C(a1, v4);
}

uint64_t sub_21BC1E320(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC1E3E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BC1CD08();
}

uint64_t sub_21BC1E49C()
{
  v0 = sub_21BE25FCC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v93 = &v89 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21BE290CC();
  v4 = v3;
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (!(v3 >> 62))
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v91 = v1;
    v92 = v0;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v0 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v6 = sub_21BE2951C();
  v91 = v1;
  v92 = v0;
  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_3:
  v7 = 0;
  v1 = v4 & 0xC000000000000001;
  v0 = MEMORY[0x277D84F90];
  do
  {
    v8 = v7;
    while (1)
    {
      if (v1)
      {
        v9 = MEMORY[0x21CF047C0](v8, v4);
        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v8 >= *(v5 + 16))
        {
          goto LABEL_21;
        }

        v9 = *(v4 + 8 * v8 + 32);
        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v10 = v9;
      v11 = [v10 shortName];
      if (v11)
      {
        break;
      }

      ++v8;
      if (v7 == v6)
      {
        goto LABEL_24;
      }
    }

    v12 = v11;
    v13 = sub_21BE28A0C();
    v90 = v14;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_21BBBC990(0, *(v0 + 16) + 1, 1, v0);
    }

    v16 = *(v0 + 16);
    v15 = *(v0 + 24);
    if (v16 >= v15 >> 1)
    {
      v0 = sub_21BBBC990((v15 > 1), v16 + 1, 1, v0);
    }

    *(v0 + 16) = v16 + 1;
    v17 = v0 + 16 * v16;
    v18 = v90;
    *(v17 + 32) = v13;
    *(v17 + 40) = v18;
  }

  while (v7 != v6);
LABEL_24:

  v19 = *MEMORY[0x277D07F40];
  v21 = v91;
  v20 = v92;
  v22 = v93;
  v90 = *(v91 + 104);
  v90(v93, v19, v92);
  v23 = MEMORY[0x21CF01150](v22);
  v24 = *(v21 + 8);
  v24(v22, v20);
  v95 = 0;
  v96 = 0xE000000000000000;
  sub_21BE295EC();

  if (v23)
  {
    v95 = 0xD00000000000002CLL;
    v96 = 0x800000021BE58360;
  }

  else
  {
    v95 = 0xD000000000000027;
    v96 = 0x800000021BE582C0;
  }

  v94 = *(v0 + 16);
  v25 = sub_21BE2992C();
  MEMORY[0x21CF03CA0](v25);

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  v28 = *(v0 + 16);
  if (v28 <= 2)
  {
    switch(v28)
    {
      case 0:

        return 0;
      case 1:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_21BE32770;
        *(v73 + 56) = MEMORY[0x277D837D0];
        result = sub_21BBBEFE8();
        *(v73 + 64) = result;
        if (*(v0 + 16))
        {
          v75 = *(v0 + 32);
          v74 = *(v0 + 40);

          *(v73 + 32) = v75;
          *(v73 + 40) = v74;
          type metadata accessor for ConfirmChildAgeViewModel();
          v76 = swift_getObjCClassFromMetadata();
          v77 = objc_opt_self();

          v38 = [v77 bundleForClass_];
          goto LABEL_61;
        }

        goto LABEL_68;
      case 2:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_21BE33260;
        v30 = MEMORY[0x277D837D0];
        *(v29 + 56) = MEMORY[0x277D837D0];
        result = sub_21BBBEFE8();
        *(v29 + 64) = result;
        v32 = *(v0 + 16);
        if (v32)
        {
          v33 = *(v0 + 40);
          *(v29 + 32) = *(v0 + 32);
          *(v29 + 40) = v33;
          *(v29 + 96) = v30;
          *(v29 + 104) = result;
          if (v32 != 1)
          {
            v35 = *(v0 + 48);
            v34 = *(v0 + 56);

            *(v29 + 72) = v35;
            *(v29 + 80) = v34;
            type metadata accessor for ConfirmChildAgeViewModel();
            v36 = swift_getObjCClassFromMetadata();
            v37 = objc_opt_self();

            v38 = [v37 bundleForClass_];
LABEL_61:
            v88 = v38;
            sub_21BE2599C();

            v50 = sub_21BE289DC();
            goto LABEL_62;
          }

          goto LABEL_72;
        }

        goto LABEL_66;
    }

    goto LABEL_48;
  }

  if (v28 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_21BE362A0;
    v52 = MEMORY[0x277D837D0];
    *(v51 + 56) = MEMORY[0x277D837D0];
    result = sub_21BBBEFE8();
    *(v51 + 64) = result;
    v53 = *(v0 + 16);
    if (v53)
    {
      v54 = result;
      result = *(v0 + 40);
      *(v51 + 32) = *(v0 + 32);
      *(v51 + 40) = result;
      *(v51 + 96) = v52;
      *(v51 + 104) = v54;
      if (v53 != 1)
      {
        v55 = *(v0 + 56);
        *(v51 + 72) = *(v0 + 48);
        *(v51 + 80) = v55;
        *(v51 + 136) = v52;
        *(v51 + 144) = v54;
        if (v53 >= 3)
        {
          v57 = *(v0 + 64);
          v56 = *(v0 + 72);

          *(v51 + 112) = v57;
          *(v51 + 120) = v56;
          type metadata accessor for ConfirmChildAgeViewModel();
          v58 = swift_getObjCClassFromMetadata();
          v59 = objc_opt_self();

          v38 = [v59 bundleForClass_];
          goto LABEL_61;
        }

        goto LABEL_75;
      }

      goto LABEL_70;
    }

    __break(1u);
    goto LABEL_65;
  }

  if (v28 == 4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_21BE374E0;
    v79 = MEMORY[0x277D837D0];
    *(v78 + 56) = MEMORY[0x277D837D0];
    result = sub_21BBBEFE8();
    *(v78 + 64) = result;
    v80 = *(v0 + 16);
    if (v80)
    {
      v81 = result;
      result = *(v0 + 40);
      *(v78 + 32) = *(v0 + 32);
      *(v78 + 40) = result;
      *(v78 + 96) = v79;
      *(v78 + 104) = v81;
      if (v80 != 1)
      {
        v82 = *(v0 + 56);
        *(v78 + 72) = *(v0 + 48);
        *(v78 + 80) = v82;
        *(v78 + 136) = v79;
        *(v78 + 144) = v81;
        if (v80 >= 3)
        {
          v83 = *(v0 + 72);
          *(v78 + 112) = *(v0 + 64);
          *(v78 + 120) = v83;
          *(v78 + 176) = v79;
          *(v78 + 184) = v81;
          if (v80 != 3)
          {
            v85 = *(v0 + 80);
            v84 = *(v0 + 88);

            *(v78 + 152) = v85;
            *(v78 + 160) = v84;
            type metadata accessor for ConfirmChildAgeViewModel();
            v86 = swift_getObjCClassFromMetadata();
            v87 = objc_opt_self();

            v38 = [v87 bundleForClass_];
            goto LABEL_61;
          }

          goto LABEL_81;
        }

        goto LABEL_78;
      }

      goto LABEL_74;
    }

    goto LABEL_69;
  }

  if (v28 != 5)
  {
LABEL_48:

    v60 = v93;
    v90(v93, v19, v20);
    MEMORY[0x21CF01150](v60);
    v24(v60, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_21BE374D0;
    v62 = MEMORY[0x277D837D0];
    *(v61 + 56) = MEMORY[0x277D837D0];
    result = sub_21BBBEFE8();
    *(v61 + 64) = result;
    v63 = *(v0 + 16);
    if (v63)
    {
      v64 = result;
      result = *(v0 + 40);
      *(v61 + 32) = *(v0 + 32);
      *(v61 + 40) = result;
      *(v61 + 96) = v62;
      *(v61 + 104) = v64;
      if (v63 != 1)
      {
        v65 = *(v0 + 56);
        *(v61 + 72) = *(v0 + 48);
        *(v61 + 80) = v65;
        *(v61 + 136) = v62;
        *(v61 + 144) = v64;
        if (v63 >= 3)
        {
          v66 = *(v0 + 72);
          *(v61 + 112) = *(v0 + 64);
          *(v61 + 120) = v66;
          *(v61 + 176) = v62;
          *(v61 + 184) = v64;
          if (v63 != 3)
          {
            v67 = *(v0 + 88);
            *(v61 + 152) = *(v0 + 80);
            *(v61 + 160) = v67;
            *(v61 + 216) = v62;
            *(v61 + 224) = v64;
            if (v63 >= 5)
            {
              v69 = *(v0 + 96);
              v68 = *(v0 + 104);

              *(v61 + 192) = v69;
              *(v61 + 200) = v68;
              type metadata accessor for ConfirmChildAgeViewModel();
              v70 = swift_getObjCClassFromMetadata();
              v71 = objc_opt_self();

              v72 = [v71 bundleForClass_];
              sub_21BE2599C();

              v50 = sub_21BE289DC();
LABEL_62:

              return v50;
            }

            goto LABEL_82;
          }

          goto LABEL_79;
        }

        goto LABEL_76;
      }

      goto LABEL_71;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_21BE374D0;
  v40 = MEMORY[0x277D837D0];
  *(v39 + 56) = MEMORY[0x277D837D0];
  result = sub_21BBBEFE8();
  *(v39 + 64) = result;
  v41 = *(v0 + 16);
  if (!v41)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v42 = result;
  result = *(v0 + 40);
  *(v39 + 32) = *(v0 + 32);
  *(v39 + 40) = result;
  *(v39 + 96) = v40;
  *(v39 + 104) = v42;
  if (v41 == 1)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v43 = *(v0 + 56);
  *(v39 + 72) = *(v0 + 48);
  *(v39 + 80) = v43;
  *(v39 + 136) = v40;
  *(v39 + 144) = v42;
  if (v41 < 3)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v44 = *(v0 + 72);
  *(v39 + 112) = *(v0 + 64);
  *(v39 + 120) = v44;
  *(v39 + 176) = v40;
  *(v39 + 184) = v42;
  if (v41 == 3)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v45 = *(v0 + 88);
  *(v39 + 152) = *(v0 + 80);
  *(v39 + 160) = v45;
  *(v39 + 216) = v40;
  *(v39 + 224) = v42;
  if (v41 >= 5)
  {
    v47 = *(v0 + 96);
    v46 = *(v0 + 104);

    *(v39 + 192) = v47;
    *(v39 + 200) = v46;
    type metadata accessor for ConfirmChildAgeViewModel();
    v48 = swift_getObjCClassFromMetadata();
    v49 = objc_opt_self();

    v38 = [v49 bundleForClass_];
    goto LABEL_61;
  }

LABEL_83:
  __break(1u);
  return result;
}

uint64_t sub_21BC1F08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21BE25FCC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21BE2917C();
  v11 = v10;
  (*(v6 + 104))(v8, *MEMORY[0x277D07F40], v5);
  v12 = MEMORY[0x21CF01150](v8);
  (*(v6 + 8))(v8, v5);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_21BE362A0;
    v14 = MEMORY[0x277D837D0];
    *(v13 + 56) = MEMORY[0x277D837D0];
    v15 = sub_21BBBEFE8();
    *(v13 + 32) = v9;
    *(v13 + 40) = v11;
    *(v13 + 96) = v14;
    *(v13 + 104) = v15;
    *(v13 + 64) = v15;
    *(v13 + 72) = a2;
    *(v13 + 80) = a3;
    *(v13 + 136) = v14;
    *(v13 + 144) = v15;
    *(v13 + 112) = v9;
    *(v13 + 120) = v11;
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = objc_opt_self();

    v18 = [v17 bundleForClass_];
    sub_21BE2599C();
  }

  else
  {
    String.rebrand.getter(0xD000000000000018, 0x800000021BE58260);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_21BE362A0;
    v20 = MEMORY[0x277D837D0];
    *(v19 + 56) = MEMORY[0x277D837D0];
    v21 = sub_21BBBEFE8();
    *(v19 + 32) = v9;
    *(v19 + 40) = v11;
    *(v19 + 96) = v20;
    *(v19 + 104) = v21;
    *(v19 + 64) = v21;
    *(v19 + 72) = a2;
    *(v19 + 80) = a3;
    *(v19 + 136) = v20;
    *(v19 + 144) = v21;
    *(v19 + 112) = v9;
    *(v19 + 120) = v11;
    type metadata accessor for ConfirmChildAgeViewModel();
    v22 = swift_getObjCClassFromMetadata();
    v23 = objc_opt_self();

    v24 = [v23 bundleForClass_];
    sub_21BE2599C();
  }

  v25 = sub_21BE289DC();

  return v25;
}

uint64_t sub_21BC1F420(uint64_t a1)
{
  v1 = sub_21BE2917C();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21BE374E0;
  v5 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v6 = sub_21BBBEFE8();
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 64) = v6;
  *(v4 + 72) = v1;
  *(v4 + 80) = v3;
  *(v4 + 136) = v5;
  *(v4 + 144) = v6;
  *(v4 + 112) = v1;
  *(v4 + 120) = v3;
  *(v4 + 176) = v5;
  *(v4 + 184) = v6;
  *(v4 + 152) = v1;
  *(v4 + 160) = v3;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  swift_bridgeObjectRetain_n();

  v9 = [v8 bundleForClass_];
  sub_21BE2599C();

  v10 = sub_21BE289DC();

  return v10;
}

uint64_t sub_21BC1F5A8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21BE32770;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21BBBEFE8();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();

  v7 = [v6 bundleForClass_];
  sub_21BE2599C();

  v8 = sub_21BE289DC();

  return v8;
}

uint64_t sub_21BC1F70C(uint64_t a1)
{
  v56 = a1;
  v57 = sub_21BE25D1C();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v2 = &v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21BE2595C();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BE25E6C();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE25E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB73B8, &qword_21BE374F8);
  v9 = sub_21BE25E5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = 2 * v11;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21BE362A0;
  v15 = v14 + v12;
  v16 = *(v10 + 104);
  v16(v15, *MEMORY[0x277CC9988], v9);
  v17 = v15 + v11;
  v18 = v8;
  v16(v17, *MEMORY[0x277CC9998], v9);
  v16(v15 + v13, *MEMORY[0x277CC9968], v9);
  sub_21BC0961C(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_21BE25D0C();
  sub_21BE25E0C();

  (*(v55 + 8))(v2, v57);
  v19 = sub_21BE2593C();
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

  v22 = sub_21BE2594C();
  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  result = sub_21BE2592C();
  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = result;
  }

  v28 = v27 * 0.143;
  if (COERCE__INT64(fabs(v28)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v28 < 9.22337204e18)
  {
    if (v21 >= 1)
    {
      goto LABEL_14;
    }

    if (v24 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v35 = swift_allocObject();
      v36 = MEMORY[0x277D83B88];
      *(v35 + 16) = xmmword_21BE32770;
      v37 = MEMORY[0x277D83C10];
      *(v35 + 56) = v36;
      *(v35 + 64) = v37;
      *(v35 + 32) = v24;
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v39 = objc_opt_self();

      v34 = [v39 bundleForClass_];
      goto LABEL_20;
    }

    v21 = v28;
    if (v28 >= 1)
    {
LABEL_14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v29 = swift_allocObject();
      v30 = MEMORY[0x277D83B88];
      *(v29 + 16) = xmmword_21BE32770;
      v31 = MEMORY[0x277D83C10];
      *(v29 + 56) = v30;
      *(v29 + 64) = v31;
      *(v29 + 32) = v21;
      type metadata accessor for ConfirmChildAgeViewModel();
      v32 = swift_getObjCClassFromMetadata();
      v33 = objc_opt_self();

      v34 = [v33 bundleForClass_];
    }

    else
    {
      if (v27 < 1)
      {
        if (v27)
        {
          v45 = 0;
        }

        else
        {
          type metadata accessor for ConfirmChildAgeViewModel();
          v48 = swift_getObjCClassFromMetadata();
          v49 = [objc_opt_self() bundleForClass_];
          v45 = sub_21BE2599C();
        }

        goto LABEL_21;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v40 = swift_allocObject();
      v41 = MEMORY[0x277D83B88];
      *(v40 + 16) = xmmword_21BE32770;
      v42 = MEMORY[0x277D83C10];
      *(v40 + 56) = v41;
      *(v40 + 64) = v42;
      *(v40 + 32) = v27;
      type metadata accessor for ConfirmChildAgeViewModel();
      v43 = swift_getObjCClassFromMetadata();
      v44 = objc_opt_self();

      v34 = [v44 bundleForClass_];
    }

LABEL_20:
    sub_21BE2599C();

    v45 = sub_21BE289DC();

LABEL_21:
    v47 = v51;
    v46 = v52;
    (*(v53 + 8))(v5, v54);
    (*(v47 + 8))(v18, v46);
    return v45;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21BC1FF18(void *a1)
{
  v2 = sub_21BE257FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = sub_21BE2917C();
  v16[1] = v6;
  sub_21BE257DC();
  sub_21BB41FA4();
  v7 = MEMORY[0x277D837D0];
  v8 = sub_21BE2948C();
  v10 = v9;
  (*(v3 + 8))(v5, v2);

  if ([a1 isMe])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_21BE32770;
    *(v11 + 56) = v7;
    *(v11 + 64) = sub_21BBBEFE8();
    *(v11 + 32) = v8;
    *(v11 + 40) = v10;
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = objc_opt_self();

    v14 = [v13 bundleForClass_];
    sub_21BE2599C();

    v8 = sub_21BE289DC();
  }

  return v8;
}

uint64_t FamilyDestinations.MemberDetails.altDSID.getter()
{
  v1 = *v0;

  return v1;
}

FamilyCircleUI::FamilyDestinations::MemberDetails_optional __swiftcall FamilyDestinations.MemberDetails.init(pathComponents:)(Swift::OpaquePointer *pathComponents)
{
  v2 = v1;
  rawValue = pathComponents->_rawValue;
  v4 = *(pathComponents->_rawValue + 2);
  if (v4 < 2)
  {
    goto LABEL_19;
  }

  if (rawValue != &unk_282D84F18)
  {
    v6 = rawValue[4];
    v5 = rawValue[5];
    v7 = qword_282D84F38;
    v8 = unk_282D84F40;

    if (v6 == v7 && v5 == v8)
    {
    }

    else
    {
      v10 = sub_21BE2995C();

      if ((v10 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v12 = rawValue[6];
    v11 = rawValue[7];
    v13 = *aMembers_2;
    v14 = unk_282D84F50;

    if (v12 == v13 && v11 == v14)
    {
    }

    else
    {
      v16 = sub_21BE2995C();

      if ((v16 & 1) == 0)
      {
LABEL_15:

        goto LABEL_19;
      }
    }

    v4 = rawValue[2];
  }

  if (v4 >= 3)
  {
    v20 = rawValue[8];
    v19 = rawValue[9];

    pathComponents = sub_21BBBED1C(0, 3);
    *v2 = v20;
    v2[1] = v19;
    goto LABEL_21;
  }

LABEL_19:
  *v2 = 0;
  v2[1] = 0;
LABEL_21:
  result.value.altDSID._object = v17;
  result.value.altDSID._countAndFlagsBits = pathComponents;
  result.is_nil = v18;
  return result;
}

uint64_t sub_21BC20318(uint64_t a1)
{
  v2 = sub_21BC22850();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC20354(uint64_t a1)
{
  v2 = sub_21BC22850();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BC2049C(uint64_t a1)
{
  v2 = sub_21BC228A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC204D8(uint64_t a1)
{
  v2 = sub_21BC228A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BC205B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_21BE2995C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_21BC20644(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        sub_21BC23F14(v3, v20);
        sub_21BC23F14(v4, v19);
        v18[3] = &type metadata for AnyLinkDestination;
        v18[4] = sub_21BC23F70();
        v18[0] = swift_allocObject();
        sub_21BC23F14(v19, v18[0] + 16);
        sub_21BB3A35C(v18, v15);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
        if (swift_dynamicCast())
        {
          v16[0] = v11;
          v16[1] = v12;
          v16[2] = v13;
          v17 = v14;
          v5 = v21;
          v6 = v22;
          __swift_project_boxed_opaque_existential_1Tm(v20, v21);
          v7 = (*(v6 + 24))(v16, v5, v6);
          sub_21BC17C80(v16);
        }

        else
        {
          v14 = 0;
          v12 = 0u;
          v13 = 0u;
          v11 = 0u;
          sub_21BC23FC4(&v11);
          v8 = v21;
          v9 = v22;
          __swift_project_boxed_opaque_existential_1Tm(v20, v21);
          v7 = (*(v9 + 24))(v18, v8, v9);
        }

        sub_21BC17C80(v19);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        sub_21BC17C80(v20);
        if ((v7 & 1) == 0)
        {
          break;
        }

        v3 += 56;
        v4 += 56;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_21BC2086C(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_21BB3A2A4(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x21CF047C0](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x21CF047C0](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_21BE2940C();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_21BE2940C();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_21BE2951C();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_21BE2951C();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_21BC20ADC(uint64_t a1)
{
  v2 = sub_21BC228F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC20B18(uint64_t a1)
{
  v2 = sub_21BC228F8();

  return MEMORY[0x2821FE720](a1, v2);
}

FamilyCircleUI::FamilyDestinations::MemberAccountDetails_optional __swiftcall FamilyDestinations.MemberAccountDetails.init(pathComponents:)(Swift::OpaquePointer *pathComponents)
{
  v2 = v1;
  rawValue = pathComponents->_rawValue;
  v4 = *(pathComponents->_rawValue + 2);
  if (v4 < 2)
  {
    goto LABEL_19;
  }

  if (rawValue != &unk_282D85760)
  {
    v6 = rawValue[4];
    v5 = rawValue[5];
    v7 = qword_282D85780;
    v8 = unk_282D85788;

    if (v6 == v7 && v5 == v8)
    {
    }

    else
    {
      v10 = sub_21BE2995C();

      if ((v10 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v12 = rawValue[6];
    v11 = rawValue[7];
    v13 = aAccountdetails_1[0];
    v14 = aAccountdetails_1[1];

    if (v12 == v13 && v11 == v14)
    {
    }

    else
    {
      v16 = sub_21BE2995C();

      if ((v16 & 1) == 0)
      {
LABEL_15:

        goto LABEL_19;
      }
    }

    v4 = rawValue[2];
  }

  if (v4 >= 3)
  {
    v20 = rawValue[8];
    v19 = rawValue[9];

    pathComponents = sub_21BBBED1C(0, 3);
    *v2 = v20;
    v2[1] = v19;
    goto LABEL_21;
  }

LABEL_19:
  *v2 = 0;
  v2[1] = 0;
LABEL_21:
  result.value.altDSID._object = v17;
  result.value.altDSID._countAndFlagsBits = pathComponents;
  result.is_nil = v18;
  return result;
}

uint64_t _s14FamilyCircleUI0A12DestinationsO13MemberDetailsV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21BE2995C();
  }
}

uint64_t sub_21BC20DD4()
{
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](0);
  return sub_21BE29B0C();
}

uint64_t sub_21BC20E18(uint64_t a1)
{
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](0);
  return sub_21BE29B0C();
}

uint64_t sub_21BC20E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21BE2995C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21BC20EE0(uint64_t a1)
{
  v2 = sub_21BC2294C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC20F1C(uint64_t a1)
{
  v2 = sub_21BC2294C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BC20F9C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v13 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  v12 = *v5;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v13();
  sub_21BE29B6C();
  sub_21BE298DC();
  return (*(v8 + 8))(v10, v7);
}

uint64_t _s14FamilyCircleUI0A12DestinationsO13MemberDetailsV9hashValueSivg_0()
{
  sub_21BE29ACC();
  sub_21BE28ABC();
  return sub_21BE29B0C();
}

uint64_t sub_21BC21174@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  a4();
  sub_21BE29B4C();
  if (!v6)
  {
    v12 = v19;
    v13 = v20;
    v14 = sub_21BE2986C();
    v16 = v15;
    (*(v12 + 8))(v11, v9);
    *v13 = v14;
    v13[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_21BC21354(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v15 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  v14 = *v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v15();
  sub_21BE29B6C();
  sub_21BE298DC();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_21BC2149C(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();
  return sub_21BE29B0C();
}

uint64_t sub_21BC214F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v6 = *a1;
  v7 = sub_21BC205B4(*a1, a2);
  result = sub_21BB3A250(a3);
  if ((v7 & 1) == 0)
  {
    goto LABEL_4;
  }

  if (*(v6 + 16))
  {
    result = sub_21BBBED1C(0, 1);
LABEL_4:
    *a4 = (v7 & 1) == 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BC21578(uint64_t a1)
{
  v2 = sub_21BC229A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC215B4(uint64_t a1)
{
  v2 = sub_21BC229A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BC21634(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  a4();
  sub_21BE29B6C();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_21BC21768@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, BOOL *a4@<X8>)
{
  v6 = *a1;
  v7 = sub_21BC205B4(*a1, a2);
  result = sub_21BB3A250(a3);
  if ((v7 & 1) == 0)
  {
    goto LABEL_4;
  }

  if (*(v6 + 16))
  {
    result = sub_21BBBED1C(0, 1);
LABEL_4:
    *a4 = (v7 & 1) == 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BC21828(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  a6();
  sub_21BE29B6C();
  return (*(v10 + 8))(v12, v9);
}

uint64_t FamilyDestinations.MemberPendingDetails.inviteEmail.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FamilyDestinations.MemberPendingDetails.resendInvitationURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FamilyDestinations.MemberPendingDetails(0) + 20);
  v4 = sub_21BE25B9C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FamilyDestinations.MemberPendingDetails.familyID.getter()
{
  v1 = *(v0 + *(type metadata accessor for FamilyDestinations.MemberPendingDetails(0) + 24));

  return v1;
}

uint64_t FamilyDestinations.MemberPendingDetails.init(inviteEmail:resendInvitationURL:familyID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for FamilyDestinations.MemberPendingDetails(0);
  v11 = *(v10 + 20);
  v12 = sub_21BE25B9C();
  result = (*(*(v12 - 8) + 32))(&a6[v11], a3, v12);
  v14 = &a6[*(v10 + 24)];
  *v14 = a4;
  *(v14 + 1) = a5;
  return result;
}

uint64_t static FamilyDestinations.MemberPendingDetails.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21BE2995C() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for FamilyDestinations.MemberPendingDetails(0);
  if ((sub_21BE25B4C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_21BE2995C();
}

unint64_t sub_21BC21B8C()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x4449796C696D6166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D45657469766E69;
  }
}

uint64_t sub_21BC21BF4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21BC23DF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21BC21C1C(uint64_t a1)
{
  v2 = sub_21BC22A40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC21C58(uint64_t a1)
{
  v2 = sub_21BC22A40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FamilyDestinations.MemberPendingDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7420, &qword_21BE37538);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BC22A40();
  sub_21BE29B6C();
  v8[15] = 0;
  sub_21BE298DC();
  if (!v1)
  {
    type metadata accessor for FamilyDestinations.MemberPendingDetails(0);
    v8[14] = 1;
    sub_21BE25B9C();
    sub_21BC234F8(&qword_27CDB7430, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_21BE298FC();
    v8[13] = 2;
    sub_21BE298DC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t FamilyDestinations.MemberPendingDetails.hash(into:)(uint64_t a1)
{
  sub_21BE28ABC();
  type metadata accessor for FamilyDestinations.MemberPendingDetails(0);
  sub_21BE25B9C();
  sub_21BC234F8(&qword_27CDB7438, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_21BE2895C();

  return sub_21BE28ABC();
}

uint64_t FamilyDestinations.MemberPendingDetails.hashValue.getter()
{
  sub_21BE29ACC();
  sub_21BE28ABC();
  type metadata accessor for FamilyDestinations.MemberPendingDetails(0);
  sub_21BE25B9C();
  sub_21BC234F8(&qword_27CDB7438, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_21BE2895C();
  sub_21BE28ABC();
  return sub_21BE29B0C();
}

uint64_t FamilyDestinations.MemberPendingDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v29 = sub_21BE25B9C();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7440, &qword_21BE37540);
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = v23 - v6;
  v8 = type metadata accessor for FamilyDestinations.MemberPendingDetails(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BC22A40();
  sub_21BE29B4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v24 = v8;
  v25 = a1;
  v12 = v28;
  v11 = v29;
  v33 = 0;
  v13 = v10;
  *v10 = sub_21BE2986C();
  v10[1] = v14;
  v23[2] = v14;
  v32 = 1;
  sub_21BC234F8(&qword_27CDB7448, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_21BE298AC();
  v15 = v24;
  (*(v27 + 32))(v13 + *(v24 + 20), v5, v11);
  v31 = 2;
  v23[1] = 0;
  v16 = sub_21BE2986C();
  v23[0] = v17;
  v18 = v25;
  v19 = v16;
  (*(v12 + 8))(v7, v30);
  v20 = (v13 + *(v15 + 24));
  v21 = v23[0];
  *v20 = v19;
  v20[1] = v21;
  sub_21BC22A94(v13, v26);
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  return sub_21BC22AF8(v13);
}

uint64_t sub_21BC22400(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();
  sub_21BE25B9C();
  sub_21BC234F8(&qword_27CDB7438, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_21BE2895C();
  sub_21BE28ABC();
  return sub_21BE29B0C();
}

uint64_t sub_21BC224C0(uint64_t a1, uint64_t a2)
{
  sub_21BE28ABC();
  sub_21BE25B9C();
  sub_21BC234F8(&qword_27CDB7438, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_21BE2895C();

  return sub_21BE28ABC();
}

uint64_t sub_21BC22578(uint64_t a1, uint64_t a2)
{
  sub_21BE29ACC();
  sub_21BE28ABC();
  sub_21BE25B9C();
  sub_21BC234F8(&qword_27CDB7438, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_21BE2895C();
  sub_21BE28ABC();
  return sub_21BE29B0C();
}

uint64_t sub_21BC22634(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_21BE2995C() & 1) == 0 || (sub_21BE25B4C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    return 1;
  }

  return sub_21BE2995C();
}

FamilyCircleUI::FamilyDestinations::SubscriptionsDeepLink_optional __swiftcall FamilyDestinations.SubscriptionsDeepLink.init(pathComponents:)(Swift::OpaquePointer *pathComponents)
{
  v2 = v1;
  rawValue = pathComponents->_rawValue;
  if (*(pathComponents->_rawValue + 2) >= 2uLL)
  {
    if (rawValue != &unk_282D84E78)
    {
      v5 = rawValue[4];
      v4 = rawValue[5];
      v6 = qword_282D84E98;
      v7 = unk_282D84EA0;

      if (v5 == v6 && v4 == v7)
      {
      }

      else
      {
        v9 = sub_21BE2995C();

        if ((v9 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v12 = rawValue[6];
      v11 = rawValue[7];
      v13 = aSubscriptions_5[0];
      v14 = aSubscriptions_5[1];

      if (v12 == v13 && v11 == v14)
      {
      }

      else
      {
        v16 = sub_21BE2995C();

        if ((v16 & 1) == 0)
        {
LABEL_16:

          v10 = 1;
          goto LABEL_20;
        }
      }

      if (rawValue[2] < 2uLL)
      {
        __break(1u);
        return pathComponents;
      }
    }

    LOBYTE(pathComponents) = sub_21BBBED1C(0, 2);
    v10 = 0;
    goto LABEL_20;
  }

  v10 = 1;
LABEL_20:
  *v2 = v10;
  return pathComponents;
}

unint64_t sub_21BC22850()
{
  result = qword_27CDB73C8;
  if (!qword_27CDB73C8)
  {
    result = swift_getWitnessTable(byte_21BE3818C, &type metadata for FamilyDestinations.MemberDetails.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB73C8);
  }

  return result;
}

unint64_t sub_21BC228A4()
{
  result = qword_27CDB73E0;
  if (!qword_27CDB73E0)
  {
    result = swift_getWitnessTable(byte_21BE3813C, &type metadata for FamilyDestinations.Location.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB73E0);
  }

  return result;
}

unint64_t sub_21BC228F8()
{
  result = qword_27CDB73F0;
  if (!qword_27CDB73F0)
  {
    result = swift_getWitnessTable(a5F, &type metadata for FamilyDestinations.AppleCashDetails.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB73F0);
  }

  return result;
}

unint64_t sub_21BC2294C()
{
  result = qword_27CDB7400;
  if (!qword_27CDB7400)
  {
    result = swift_getWitnessTable(byte_21BE3809C, &type metadata for FamilyDestinations.MemberAccountDetails.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB7400);
  }

  return result;
}

unint64_t sub_21BC229A0()
{
  result = qword_27CDB7418;
  if (!qword_27CDB7418)
  {
    result = swift_getWitnessTable(byte_21BE3804C, &type metadata for FamilyDestinations.AskToBuyMemberDestination.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB7418);
  }

  return result;
}

uint64_t type metadata accessor for FamilyDestinations.MemberPendingDetails(uint64_t a1)
{
  result = qword_27CDB7518;
  if (!qword_27CDB7518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21BC22A40()
{
  result = qword_27CDB7428;
  if (!qword_27CDB7428)
  {
    result = swift_getWitnessTable(a6FY, &type metadata for FamilyDestinations.MemberPendingDetails.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB7428);
  }

  return result;
}

uint64_t sub_21BC22A94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyDestinations.MemberPendingDetails(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC22AF8(uint64_t a1)
{
  v2 = type metadata accessor for FamilyDestinations.MemberPendingDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BC22B94(uint64_t a1)
{
  result = sub_21BC22BBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BC22BBC()
{
  result = qword_27CDB7450;
  if (!qword_27CDB7450)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.MemberDetails, &type metadata for FamilyDestinations.MemberDetails, v0, v1);
    atomic_store(result, &qword_27CDB7450);
  }

  return result;
}

unint64_t sub_21BC22C14()
{
  result = qword_27CDB7458;
  if (!qword_27CDB7458)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.MemberDetails, &type metadata for FamilyDestinations.MemberDetails, v0, v1);
    atomic_store(result, &qword_27CDB7458);
  }

  return result;
}

uint64_t sub_21BC22CA8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_21BC22CFC()
{
  result = qword_27CDB7460;
  if (!qword_27CDB7460)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.Location, &type metadata for FamilyDestinations.Location, v0, v1);
    atomic_store(result, &qword_27CDB7460);
  }

  return result;
}

unint64_t sub_21BC22D50()
{
  result = qword_27CDB7468;
  if (!qword_27CDB7468)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.Location, &type metadata for FamilyDestinations.Location, v0, v1);
    atomic_store(result, &qword_27CDB7468);
  }

  return result;
}

unint64_t sub_21BC22DA4()
{
  result = qword_27CDB7470;
  if (!qword_27CDB7470)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.Location, &type metadata for FamilyDestinations.Location, v0, v1);
    atomic_store(result, &qword_27CDB7470);
  }

  return result;
}

unint64_t sub_21BC22DF8(uint64_t a1)
{
  result = sub_21BC22E20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BC22E20()
{
  result = qword_27CDB7478;
  if (!qword_27CDB7478)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.Location, &type metadata for FamilyDestinations.Location, v0, v1);
    atomic_store(result, &qword_27CDB7478);
  }

  return result;
}

unint64_t sub_21BC22E78()
{
  result = qword_27CDB7480;
  if (!qword_27CDB7480)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.Location, &type metadata for FamilyDestinations.Location, v0, v1);
    atomic_store(result, &qword_27CDB7480);
  }

  return result;
}

unint64_t sub_21BC22F0C()
{
  result = qword_27CDB7488;
  if (!qword_27CDB7488)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.AppleCashDetails, &type metadata for FamilyDestinations.AppleCashDetails, v0, v1);
    atomic_store(result, &qword_27CDB7488);
  }

  return result;
}

unint64_t sub_21BC22F60(uint64_t a1)
{
  result = sub_21BC22F88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BC22F88()
{
  result = qword_27CDB7490;
  if (!qword_27CDB7490)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.AppleCashDetails, &type metadata for FamilyDestinations.AppleCashDetails, v0, v1);
    atomic_store(result, &qword_27CDB7490);
  }

  return result;
}

unint64_t sub_21BC22FE0()
{
  result = qword_27CDB7498;
  if (!qword_27CDB7498)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.AppleCashDetails, &type metadata for FamilyDestinations.AppleCashDetails, v0, v1);
    atomic_store(result, &qword_27CDB7498);
  }

  return result;
}

unint64_t sub_21BC23074()
{
  result = qword_27CDB74A0;
  if (!qword_27CDB74A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.MemberAccountDetails, &type metadata for FamilyDestinations.MemberAccountDetails, v0, v1);
    atomic_store(result, &qword_27CDB74A0);
  }

  return result;
}

unint64_t sub_21BC230C8()
{
  result = qword_27CDB74A8;
  if (!qword_27CDB74A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.MemberAccountDetails, &type metadata for FamilyDestinations.MemberAccountDetails, v0, v1);
    atomic_store(result, &qword_27CDB74A8);
  }

  return result;
}

unint64_t sub_21BC2311C()
{
  result = qword_27CDB74B0;
  if (!qword_27CDB74B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.MemberAccountDetails, &type metadata for FamilyDestinations.MemberAccountDetails, v0, v1);
    atomic_store(result, &qword_27CDB74B0);
  }

  return result;
}

unint64_t sub_21BC23170(uint64_t a1)
{
  result = sub_21BC23198();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BC23198()
{
  result = qword_27CDB74B8;
  if (!qword_27CDB74B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.MemberAccountDetails, &type metadata for FamilyDestinations.MemberAccountDetails, v0, v1);
    atomic_store(result, &qword_27CDB74B8);
  }

  return result;
}

unint64_t sub_21BC231F0()
{
  result = qword_27CDB74C0;
  if (!qword_27CDB74C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.MemberAccountDetails, &type metadata for FamilyDestinations.MemberAccountDetails, v0, v1);
    atomic_store(result, &qword_27CDB74C0);
  }

  return result;
}

unint64_t sub_21BC23284()
{
  result = qword_27CDB74C8;
  if (!qword_27CDB74C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.AskToBuyMemberDestination, &type metadata for FamilyDestinations.AskToBuyMemberDestination, v0, v1);
    atomic_store(result, &qword_27CDB74C8);
  }

  return result;
}

unint64_t sub_21BC232D8(uint64_t a1)
{
  result = sub_21BC23300();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BC23300()
{
  result = qword_27CDB74D0;
  if (!qword_27CDB74D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.AskToBuyMemberDestination, &type metadata for FamilyDestinations.AskToBuyMemberDestination, v0, v1);
    atomic_store(result, &qword_27CDB74D0);
  }

  return result;
}

unint64_t sub_21BC23358()
{
  result = qword_27CDB74D8;
  if (!qword_27CDB74D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.AskToBuyMemberDestination, &type metadata for FamilyDestinations.AskToBuyMemberDestination, v0, v1);
    atomic_store(result, &qword_27CDB74D8);
  }

  return result;
}

uint64_t sub_21BC233AC(void *a1)
{
  a1[1] = sub_21BC234F8(&qword_27CDB74E0, type metadata accessor for FamilyDestinations.MemberPendingDetails, protocol conformance descriptor for FamilyDestinations.MemberPendingDetails);
  a1[2] = sub_21BC234F8(&qword_27CDB74E8, type metadata accessor for FamilyDestinations.MemberPendingDetails, protocol conformance descriptor for FamilyDestinations.MemberPendingDetails);
  result = sub_21BC234F8(&qword_27CDB74F0, type metadata accessor for FamilyDestinations.MemberPendingDetails, protocol conformance descriptor for FamilyDestinations.MemberPendingDetails);
  a1[3] = result;
  return result;
}

uint64_t sub_21BC23458(uint64_t a1)
{
  result = sub_21BC234F8(&qword_27CDB74F8, type metadata accessor for FamilyDestinations.MemberPendingDetails, protocol conformance descriptor for FamilyDestinations.MemberPendingDetails);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21BC234F8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_21BC23540(uint64_t a1)
{
  result = sub_21BC23568();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BC23568()
{
  result = qword_27CDB7508;
  if (!qword_27CDB7508)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.SubscriptionsDeepLink, &type metadata for FamilyDestinations.SubscriptionsDeepLink, v0, v1);
    atomic_store(result, &qword_27CDB7508);
  }

  return result;
}

unint64_t sub_21BC235C0()
{
  result = qword_27CDB7510;
  if (!qword_27CDB7510)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.SubscriptionsDeepLink, &type metadata for FamilyDestinations.SubscriptionsDeepLink, v0, v1);
    atomic_store(result, &qword_27CDB7510);
  }

  return result;
}

uint64_t sub_21BC2369C(uint64_t a1)
{
  result = sub_21BE25B9C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HostRemoteViewCoordinator.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HostRemoteViewCoordinator.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21BC238CC()
{
  result = qword_27CDB7528;
  if (!qword_27CDB7528)
  {
    result = swift_getWitnessTable(aUFx, &type metadata for FamilyDestinations.MemberDetails.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB7528);
  }

  return result;
}

unint64_t sub_21BC23924()
{
  result = qword_27CDB7530;
  if (!qword_27CDB7530)
  {
    result = swift_getWitnessTable(byte_21BE37ECC, &type metadata for FamilyDestinations.MemberAccountDetails.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB7530);
  }

  return result;
}

unint64_t sub_21BC2397C()
{
  result = qword_27CDB7538;
  if (!qword_27CDB7538)
  {
    result = swift_getWitnessTable(byte_21BE37FD4, &type metadata for FamilyDestinations.MemberPendingDetails.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB7538);
  }

  return result;
}